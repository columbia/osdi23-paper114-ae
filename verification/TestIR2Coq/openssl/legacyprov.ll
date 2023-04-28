; ModuleID = 'providers/legacyprov.c'
source_filename = "providers/legacyprov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_dispatch_st = type { i32, void ()* }
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_algorithm_st = type { i8*, i8*, %struct.ossl_dispatch_st*, i8* }
%struct.ossl_core_handle_st = type opaque
%struct.prov_ctx_st = type { %struct.ossl_core_handle_st*, %struct.ossl_lib_ctx_st*, %struct.bio_method_st* }
%struct.ossl_lib_ctx_st = type opaque
%struct.bio_method_st = type opaque

@legacy_dispatch_table = internal constant [5 x %struct.ossl_dispatch_st] [%struct.ossl_dispatch_st { i32 1024, void ()* bitcast (void (i8*)* @legacy_teardown to void ()*) }, %struct.ossl_dispatch_st { i32 1025, void ()* bitcast (%struct.ossl_param_st* (i8*)* @legacy_gettable_params to void ()*) }, %struct.ossl_dispatch_st { i32 1026, void ()* bitcast (i32 (i8*, %struct.ossl_param_st*)* @legacy_get_params to void ()*) }, %struct.ossl_dispatch_st { i32 1027, void ()* bitcast (%struct.ossl_algorithm_st* (i8*, i32, i32*)* @legacy_query to void ()*) }, %struct.ossl_dispatch_st zeroinitializer], align 16
@legacy_param_types = internal constant [5 x %struct.ossl_param_st] [%struct.ossl_param_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 6, i8* null, i64 0, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 6, i8* null, i64 0, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 6, i8* null, i64 0, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 1, i8* null, i64 0, i64 -1 }, %struct.ossl_param_st zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"buildinfo\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"OpenSSL Legacy Provider\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"3.0.0\00", align 1
@legacy_digests = internal constant [5 x %struct.ossl_algorithm_st] [%struct.ossl_algorithm_st { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([0 x %struct.ossl_dispatch_st], [0 x %struct.ossl_dispatch_st]* @ossl_md4_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([0 x %struct.ossl_dispatch_st], [0 x %struct.ossl_dispatch_st]* @ossl_mdc2_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([0 x %struct.ossl_dispatch_st], [0 x %struct.ossl_dispatch_st]* @ossl_wp_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st { i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([0 x %struct.ossl_dispatch_st], [0 x %struct.ossl_dispatch_st]* @ossl_ripemd160_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st zeroinitializer], align 16
@legacy_ciphers = internal constant [33 x %struct.ossl_algorithm_st] [%struct.ossl_algorithm_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([0 x %struct.ossl_dispatch_st], [0 x %struct.ossl_dispatch_st]* @ossl_cast5128ecb_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st { i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([0 x %struct.ossl_dispatch_st], [0 x %struct.ossl_dispatch_st]* @ossl_cast5128cbc_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([0 x %struct.ossl_dispatch_st], [0 x %struct.ossl_dispatch_st]* @ossl_cast5128ofb64_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([0 x %struct.ossl_dispatch_st], [0 x %struct.ossl_dispatch_st]* @ossl_cast5128cfb64_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([0 x %struct.ossl_dispatch_st], [0 x %struct.ossl_dispatch_st]* @ossl_blowfish128ecb_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st { i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([0 x %struct.ossl_dispatch_st], [0 x %struct.ossl_dispatch_st]* @ossl_blowfish128cbc_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([0 x %struct.ossl_dispatch_st], [0 x %struct.ossl_dispatch_st]* @ossl_blowfish64ofb64_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([0 x %struct.ossl_dispatch_st], [0 x %struct.ossl_dispatch_st]* @ossl_blowfish64cfb64_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([0 x %struct.ossl_dispatch_st], [0 x %struct.ossl_dispatch_st]* @ossl_idea128ecb_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st { i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([0 x %struct.ossl_dispatch_st], [0 x %struct.ossl_dispatch_st]* @ossl_idea128cbc_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([0 x %struct.ossl_dispatch_st], [0 x %struct.ossl_dispatch_st]* @ossl_idea128ofb64_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([0 x %struct.ossl_dispatch_st], [0 x %struct.ossl_dispatch_st]* @ossl_idea128cfb64_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([0 x %struct.ossl_dispatch_st], [0 x %struct.ossl_dispatch_st]* @ossl_seed128ecb_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([0 x %struct.ossl_dispatch_st], [0 x %struct.ossl_dispatch_st]* @ossl_seed128cbc_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st { i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([0 x %struct.ossl_dispatch_st], [0 x %struct.ossl_dispatch_st]* @ossl_seed128ofb128_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st { i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([0 x %struct.ossl_dispatch_st], [0 x %struct.ossl_dispatch_st]* @ossl_seed128cfb128_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([0 x %struct.ossl_dispatch_st], [0 x %struct.ossl_dispatch_st]* @ossl_rc2128ecb_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st { i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([0 x %struct.ossl_dispatch_st], [0 x %struct.ossl_dispatch_st]* @ossl_rc2128cbc_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([0 x %struct.ossl_dispatch_st], [0 x %struct.ossl_dispatch_st]* @ossl_rc240cbc_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([0 x %struct.ossl_dispatch_st], [0 x %struct.ossl_dispatch_st]* @ossl_rc264cbc_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([0 x %struct.ossl_dispatch_st], [0 x %struct.ossl_dispatch_st]* @ossl_rc2128cfb128_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([0 x %struct.ossl_dispatch_st], [0 x %struct.ossl_dispatch_st]* @ossl_rc2128ofb128_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([0 x %struct.ossl_dispatch_st], [0 x %struct.ossl_dispatch_st]* @ossl_rc4128_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([0 x %struct.ossl_dispatch_st], [0 x %struct.ossl_dispatch_st]* @ossl_rc440_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([0 x %struct.ossl_dispatch_st], [0 x %struct.ossl_dispatch_st]* @ossl_rc4_hmac_ossl_md5_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([0 x %struct.ossl_dispatch_st], [0 x %struct.ossl_dispatch_st]* @ossl_tdes_desx_cbc_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([0 x %struct.ossl_dispatch_st], [0 x %struct.ossl_dispatch_st]* @ossl_des_ecb_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([0 x %struct.ossl_dispatch_st], [0 x %struct.ossl_dispatch_st]* @ossl_des_cbc_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([0 x %struct.ossl_dispatch_st], [0 x %struct.ossl_dispatch_st]* @ossl_des_ofb64_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([0 x %struct.ossl_dispatch_st], [0 x %struct.ossl_dispatch_st]* @ossl_des_cfb64_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([0 x %struct.ossl_dispatch_st], [0 x %struct.ossl_dispatch_st]* @ossl_des_cfb1_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([0 x %struct.ossl_dispatch_st], [0 x %struct.ossl_dispatch_st]* @ossl_des_cfb8_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st zeroinitializer], align 16
@legacy_kdfs = internal constant [2 x %struct.ossl_algorithm_st] [%struct.ossl_algorithm_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([0 x %struct.ossl_dispatch_st], [0 x %struct.ossl_dispatch_st]* @ossl_kdf_pbkdf1_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st zeroinitializer], align 16
@.str.6 = private unnamed_addr constant [23 x i8] c"MD4:1.2.840.113549.2.4\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"provider=legacy\00", align 1
@ossl_md4_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@.str.8 = private unnamed_addr constant [17 x i8] c"MDC2:2.5.8.3.101\00", align 1
@ossl_mdc2_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@.str.9 = private unnamed_addr constant [27 x i8] c"WHIRLPOOL:1.0.10118.3.0.55\00", align 1
@ossl_wp_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@.str.10 = private unnamed_addr constant [48 x i8] c"RIPEMD-160:RIPEMD160:RIPEMD:RMD160:1.3.36.3.2.1\00", align 1
@ossl_ripemd160_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@.str.11 = private unnamed_addr constant [10 x i8] c"CAST5-ECB\00", align 1
@ossl_cast5128ecb_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@.str.12 = private unnamed_addr constant [47 x i8] c"CAST5-CBC:CAST-CBC:CAST:1.2.840.113533.7.66.10\00", align 1
@ossl_cast5128cbc_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@.str.13 = private unnamed_addr constant [10 x i8] c"CAST5-OFB\00", align 1
@ossl_cast5128ofb64_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@.str.14 = private unnamed_addr constant [10 x i8] c"CAST5-CFB\00", align 1
@ossl_cast5128cfb64_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@.str.15 = private unnamed_addr constant [7 x i8] c"BF-ECB\00", align 1
@ossl_blowfish128ecb_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@.str.16 = private unnamed_addr constant [40 x i8] c"BF-CBC:BF:BLOWFISH:1.3.6.1.4.1.3029.1.2\00", align 1
@ossl_blowfish128cbc_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@.str.17 = private unnamed_addr constant [7 x i8] c"BF-OFB\00", align 1
@ossl_blowfish64ofb64_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@.str.18 = private unnamed_addr constant [7 x i8] c"BF-CFB\00", align 1
@ossl_blowfish64cfb64_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@.str.19 = private unnamed_addr constant [9 x i8] c"IDEA-ECB\00", align 1
@ossl_idea128ecb_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@.str.20 = private unnamed_addr constant [38 x i8] c"IDEA-CBC:IDEA:1.3.6.1.4.1.188.7.1.1.2\00", align 1
@ossl_idea128cbc_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@.str.21 = private unnamed_addr constant [20 x i8] c"IDEA-OFB:IDEA-OFB64\00", align 1
@ossl_idea128ofb64_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@.str.22 = private unnamed_addr constant [20 x i8] c"IDEA-CFB:IDEA-CFB64\00", align 1
@ossl_idea128cfb64_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@.str.23 = private unnamed_addr constant [28 x i8] c"SEED-ECB:1.2.410.200004.1.3\00", align 1
@ossl_seed128ecb_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@.str.24 = private unnamed_addr constant [33 x i8] c"SEED-CBC:SEED:1.2.410.200004.1.4\00", align 1
@ossl_seed128cbc_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@.str.25 = private unnamed_addr constant [40 x i8] c"SEED-OFB:SEED-OFB128:1.2.410.200004.1.6\00", align 1
@ossl_seed128ofb128_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@.str.26 = private unnamed_addr constant [40 x i8] c"SEED-CFB:SEED-CFB128:1.2.410.200004.1.5\00", align 1
@ossl_seed128cfb128_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@.str.27 = private unnamed_addr constant [8 x i8] c"RC2-ECB\00", align 1
@ossl_rc2128ecb_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@.str.28 = private unnamed_addr constant [39 x i8] c"RC2-CBC:RC2:RC2-128:1.2.840.113549.3.2\00", align 1
@ossl_rc2128cbc_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@.str.29 = private unnamed_addr constant [18 x i8] c"RC2-40-CBC:RC2-40\00", align 1
@ossl_rc240cbc_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@.str.30 = private unnamed_addr constant [18 x i8] c"RC2-64-CBC:RC2-64\00", align 1
@ossl_rc264cbc_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@.str.31 = private unnamed_addr constant [8 x i8] c"RC2-CFB\00", align 1
@ossl_rc2128cfb128_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@.str.32 = private unnamed_addr constant [8 x i8] c"RC2-OFB\00", align 1
@ossl_rc2128ofb128_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@.str.33 = private unnamed_addr constant [23 x i8] c"RC4:1.2.840.113549.3.4\00", align 1
@ossl_rc4128_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@.str.34 = private unnamed_addr constant [7 x i8] c"RC4-40\00", align 1
@ossl_rc440_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@.str.35 = private unnamed_addr constant [13 x i8] c"RC4-HMAC-MD5\00", align 1
@ossl_rc4_hmac_ossl_md5_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@.str.36 = private unnamed_addr constant [14 x i8] c"DESX-CBC:DESX\00", align 1
@ossl_tdes_desx_cbc_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@.str.37 = private unnamed_addr constant [21 x i8] c"DES-ECB:1.3.14.3.2.6\00", align 1
@ossl_des_ecb_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@.str.38 = private unnamed_addr constant [25 x i8] c"DES-CBC:DES:1.3.14.3.2.7\00", align 1
@ossl_des_cbc_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@.str.39 = private unnamed_addr constant [21 x i8] c"DES-OFB:1.3.14.3.2.8\00", align 1
@ossl_des_ofb64_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@.str.40 = private unnamed_addr constant [21 x i8] c"DES-CFB:1.3.14.3.2.9\00", align 1
@ossl_des_cfb64_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@.str.41 = private unnamed_addr constant [9 x i8] c"DES-CFB1\00", align 1
@ossl_des_cfb1_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@.str.42 = private unnamed_addr constant [9 x i8] c"DES-CFB8\00", align 1
@ossl_des_cfb8_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@.str.43 = private unnamed_addr constant [7 x i8] c"PBKDF1\00", align 1
@ossl_kdf_pbkdf1_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@switch.table.legacy_query = private unnamed_addr constant [4 x %struct.ossl_algorithm_st*] [%struct.ossl_algorithm_st* getelementptr inbounds ([5 x %struct.ossl_algorithm_st], [5 x %struct.ossl_algorithm_st]* @legacy_digests, i64 0, i64 0), %struct.ossl_algorithm_st* getelementptr inbounds ([33 x %struct.ossl_algorithm_st], [33 x %struct.ossl_algorithm_st]* @legacy_ciphers, i64 0, i64 0), %struct.ossl_algorithm_st* null, %struct.ossl_algorithm_st* getelementptr inbounds ([2 x %struct.ossl_algorithm_st], [2 x %struct.ossl_algorithm_st]* @legacy_kdfs, i64 0, i64 0)], align 8

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_provider_init(%struct.ossl_core_handle_st* noundef %handle, %struct.ossl_dispatch_st* noundef %in, %struct.ossl_dispatch_st** nocapture noundef writeonly %out, i8** nocapture noundef %provctx) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.prov_ctx_st* @ossl_prov_ctx_new() #4
  %0 = bitcast i8** %provctx to %struct.prov_ctx_st**
  store %struct.prov_ctx_st* %call, %struct.prov_ctx_st** %0, align 8, !tbaa !4
  %cmp = icmp eq %struct.prov_ctx_st* %call, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new_child(%struct.ossl_core_handle_st* noundef %handle, %struct.ossl_dispatch_st* noundef %in) #4
  %cmp2 = icmp eq %struct.ossl_lib_ctx_st* %call1, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef null) #4
  %1 = load i8*, i8** %provctx, align 8, !tbaa !4
  tail call void @legacy_teardown(i8* noundef %1) #5
  store i8* null, i8** %provctx, align 8, !tbaa !4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.prov_ctx_st*, %struct.prov_ctx_st** %0, align 8, !tbaa !4
  tail call void @ossl_prov_ctx_set0_libctx(%struct.prov_ctx_st* noundef %2, %struct.ossl_lib_ctx_st* noundef nonnull %call1) #4
  %3 = load %struct.prov_ctx_st*, %struct.prov_ctx_st** %0, align 8, !tbaa !4
  tail call void @ossl_prov_ctx_set0_handle(%struct.prov_ctx_st* noundef %3, %struct.ossl_core_handle_st* noundef %handle) #4
  store %struct.ossl_dispatch_st* getelementptr inbounds ([5 x %struct.ossl_dispatch_st], [5 x %struct.ossl_dispatch_st]* @legacy_dispatch_table, i64 0, i64 0), %struct.ossl_dispatch_st** %out, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare %struct.prov_ctx_st* @ossl_prov_ctx_new() local_unnamed_addr #1

declare %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new_child(%struct.ossl_core_handle_st* noundef, %struct.ossl_dispatch_st* noundef) local_unnamed_addr #1

declare void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal void @legacy_teardown(i8* noundef %provctx) #0 {
entry:
  %0 = bitcast i8* %provctx to %struct.prov_ctx_st*
  %call = tail call %struct.ossl_lib_ctx_st* @ossl_prov_ctx_get0_libctx(%struct.prov_ctx_st* noundef %0) #4
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %call) #4
  tail call void @ossl_prov_ctx_free(%struct.prov_ctx_st* noundef %0) #4
  ret void
}

declare void @ossl_prov_ctx_set0_libctx(%struct.prov_ctx_st* noundef, %struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare void @ossl_prov_ctx_set0_handle(%struct.prov_ctx_st* noundef, %struct.ossl_core_handle_st* noundef) local_unnamed_addr #1

declare %struct.ossl_lib_ctx_st* @ossl_prov_ctx_get0_libctx(%struct.prov_ctx_st* noundef) local_unnamed_addr #1

declare void @ossl_prov_ctx_free(%struct.prov_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal %struct.ossl_param_st* @legacy_gettable_params(i8* nocapture noundef readnone %provctx) #2 {
entry:
  ret %struct.ossl_param_st* getelementptr inbounds ([5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* @legacy_param_types, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @legacy_get_params(i8* nocapture noundef readnone %provctx, %struct.ossl_param_st* noundef %params) #0 {
entry:
  %call = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #4
  %cmp.not = icmp eq %struct.ossl_param_st* %call, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @OSSL_PARAM_set_utf8_ptr(%struct.ossl_param_st* noundef nonnull %call, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0)) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %call2 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #4
  %cmp3.not = icmp eq %struct.ossl_param_st* %call2, null
  br i1 %cmp3.not, label %if.end8, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.end
  %call5 = tail call i32 @OSSL_PARAM_set_utf8_ptr(%struct.ossl_param_st* noundef nonnull %call2, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %land.lhs.true4, %if.end
  %call9 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)) #4
  %cmp10.not = icmp eq %struct.ossl_param_st* %call9, null
  br i1 %cmp10.not, label %if.end15, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %if.end8
  %call12 = tail call i32 @OSSL_PARAM_set_utf8_ptr(%struct.ossl_param_st* noundef nonnull %call9, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #4
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup, label %if.end15

if.end15:                                         ; preds = %land.lhs.true11, %if.end8
  %call16 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #4
  %cmp17.not = icmp eq %struct.ossl_param_st* %call16, null
  br i1 %cmp17.not, label %if.end23, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %if.end15
  %call19 = tail call i32 @ossl_prov_is_running() #4
  %call20 = tail call i32 @OSSL_PARAM_set_int(%struct.ossl_param_st* noundef nonnull %call16, i32 noundef %call19) #4
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup, label %if.end23

if.end23:                                         ; preds = %land.lhs.true18, %if.end15
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true18, %land.lhs.true11, %land.lhs.true4, %land.lhs.true, %if.end23
  %retval.0 = phi i32 [ 1, %if.end23 ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true4 ], [ 0, %land.lhs.true11 ], [ 0, %land.lhs.true18 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal %struct.ossl_algorithm_st* @legacy_query(i8* nocapture noundef readnone %provctx, i32 noundef %operation_id, i32* nocapture noundef writeonly %no_cache) #3 {
entry:
  store i32 0, i32* %no_cache, align 4, !tbaa !8
  %switch.tableidx = add i32 %operation_id, -1
  %0 = icmp ult i32 %switch.tableidx, 4
  br i1 %0, label %switch.lookup, label %return

switch.lookup:                                    ; preds = %entry
  %1 = sext i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds [4 x %struct.ossl_algorithm_st*], [4 x %struct.ossl_algorithm_st*]* @switch.table.legacy_query, i64 0, i64 %1
  %switch.load = load %struct.ossl_algorithm_st*, %struct.ossl_algorithm_st** %switch.gep, align 8
  br label %return

return:                                           ; preds = %entry, %switch.lookup
  %retval.0 = phi %struct.ossl_algorithm_st* [ %switch.load, %switch.lookup ], [ null, %entry ]
  ret %struct.ossl_algorithm_st* %retval.0
}

declare %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_set_utf8_ptr(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_set_int(%struct.ossl_param_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ossl_prov_is_running() local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }

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
