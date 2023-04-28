; ModuleID = 'test/params_api_test.c'
source_filename = "test/params_api_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i64, [20 x i8] }
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.bignum_st = type opaque

@.str = private unnamed_addr constant [15 x i8] c"test_param_int\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"test_param_long\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"test_param_uint\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"test_param_ulong\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"test_param_int32\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"test_param_uint32\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"test_param_size_t\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"test_param_time_t\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"test_param_int64\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"test_param_uint64\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"test_param_bignum\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"test_param_real\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"test_param_construct\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"test_param_modified\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"test_param_copy_null\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"test/params_api_test.c\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"OSSL_PARAM_set_int(&param, in)\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"cmp\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"raw_values[n].value\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"OSSL_PARAM_get_int(&param, &in)\00", align 1
@raw_values = internal constant <{ { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, %struct.anon, %struct.anon }> <{ { i64, <{ i8, [19 x i8] }> } { i64 1, <{ i8, [19 x i8] }> <{ i8 71, [19 x i8] zeroinitializer }> }, { i64, <{ i8, [19 x i8] }> } { i64 1, <{ i8, [19 x i8] }> <{ i8 -48, [19 x i8] zeroinitializer }> }, { i64, <{ i8, i8, [18 x i8] }> } { i64 2, <{ i8, i8, [18 x i8] }> <{ i8 1, i8 -23, [18 x i8] zeroinitializer }> }, { i64, <{ i8, i8, [18 x i8] }> } { i64 2, <{ i8, i8, [18 x i8] }> <{ i8 -1, i8 83, [18 x i8] zeroinitializer }> }, { i64, <{ i8, i8, i8, [17 x i8] }> } { i64 3, <{ i8, i8, i8, [17 x i8] }> <{ i8 22, i8 -1, i8 124, [17 x i8] zeroinitializer }> }, { i64, <{ i8, i8, i8, [17 x i8] }> } { i64 3, <{ i8, i8, i8, [17 x i8] }> <{ i8 -88, i8 -100, i8 14, [17 x i8] zeroinitializer }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> } { i64 4, <{ i8, i8, i8, i8, [16 x i8] }> <{ i8 56, i8 39, i8 -65, i8 59, [16 x i8] zeroinitializer }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> } { i64 4, <{ i8, i8, i8, i8, [16 x i8] }> <{ i8 -97, i8 38, i8 72, i8 34, [16 x i8] zeroinitializer }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> } { i64 5, <{ i8, i8, i8, i8, i8, [15 x i8] }> <{ i8 48, i8 101, i8 -6, i8 -28, i8 -127, [15 x i8] zeroinitializer }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> } { i64 5, <{ i8, i8, i8, i8, i8, [15 x i8] }> <{ i8 -47, i8 118, i8 1, i8 27, i8 -51, [15 x i8] zeroinitializer }> }, { i64, <{ [8 x i8], [12 x i8] }> } { i64 8, <{ [8 x i8], [12 x i8] }> <{ [8 x i8] c"Y\B2\1A\E9*\D8F@", [12 x i8] zeroinitializer }> }, { i64, <{ [8 x i8], [12 x i8] }> } { i64 8, <{ [8 x i8], [12 x i8] }> <{ [8 x i8] c"\B4\AE\BD\B4\DD\04\B1L", [12 x i8] zeroinitializer }> }, %struct.anon { i64 16, [20 x i8] c"a\E8~1\E93\83=\87\99\C7\D8]\A9\8BB\00\00\00\00" }, %struct.anon { i64 16, [20 x i8] c"\EEn\8B\C3\EC\CF7\CC\89g\F2h3\A0\14\B0\00\00\00\00" } }>, align 16
@.str.22 = private unnamed_addr constant [34 x i8] c"OSSL_PARAM_get_int32(param, &i32)\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"OSSL_PARAM_get_int64(param, &i64)\00", align 1
@.str.24 = private unnamed_addr constant [47 x i8] c"OSSL_PARAM_get_uint32(param, (uint32_t *)&i32)\00", align 1
@.str.25 = private unnamed_addr constant [47 x i8] c"OSSL_PARAM_get_uint64(param, (uint64_t *)&i64)\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"OSSL_PARAM_get_size_t(param, &s)\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"OSSL_PARAM_modified(param)\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"OSSL_PARAM_set_int32(param, 12345)\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"(size_t)i64\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"12345\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"OSSL_PARAM_set_uint32(param, 12345)\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"OSSL_PARAM_set_long(&param, in)\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"OSSL_PARAM_get_long(&param, &in)\00", align 1
@.str.35 = private unnamed_addr constant [32 x i8] c"OSSL_PARAM_set_uint(&param, in)\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"OSSL_PARAM_get_uint(&param, &in)\00", align 1
@.str.37 = private unnamed_addr constant [33 x i8] c"OSSL_PARAM_set_ulong(&param, in)\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"OSSL_PARAM_get_ulong(&param, &in)\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"OSSL_PARAM_set_int32(&param, in)\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"OSSL_PARAM_get_int32(&param, &in)\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"OSSL_PARAM_set_uint32(&param, in)\00", align 1
@.str.42 = private unnamed_addr constant [35 x i8] c"OSSL_PARAM_get_uint32(&param, &in)\00", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c"OSSL_PARAM_set_size_t(&param, in)\00", align 1
@.str.44 = private unnamed_addr constant [35 x i8] c"OSSL_PARAM_get_size_t(&param, &in)\00", align 1
@.str.45 = private unnamed_addr constant [34 x i8] c"OSSL_PARAM_set_time_t(&param, in)\00", align 1
@.str.46 = private unnamed_addr constant [35 x i8] c"OSSL_PARAM_get_time_t(&param, &in)\00", align 1
@.str.47 = private unnamed_addr constant [33 x i8] c"OSSL_PARAM_set_int64(&param, in)\00", align 1
@.str.48 = private unnamed_addr constant [34 x i8] c"OSSL_PARAM_get_int64(&param, &in)\00", align 1
@.str.49 = private unnamed_addr constant [34 x i8] c"OSSL_PARAM_set_uint64(&param, in)\00", align 1
@.str.50 = private unnamed_addr constant [35 x i8] c"OSSL_PARAM_get_uint64(&param, &in)\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"bn\00", align 1
@.str.52 = private unnamed_addr constant [53 x i8] c"b = BN_lebin2bn(raw_values[n].value, (int)len, NULL)\00", align 1
@.str.53 = private unnamed_addr constant [29 x i8] c"OSSL_PARAM_set_BN(&param, b)\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"bnbuf\00", align 1
@.str.55 = private unnamed_addr constant [30 x i8] c"OSSL_PARAM_get_BN(&param, &c)\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.59 = private unnamed_addr constant [39 x i8] c"OSSL_PARAM_set_double(&param, 3.14159)\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"3.14159\00", align 1
@test_param_construct.int_names = internal unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0)], align 16
@.str.62 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"int32\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"int64\00", align 1
@test_param_construct.uint_names = internal unnamed_addr constant [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0)], align 16
@.str.66 = private unnamed_addr constant [5 x i8] c"uint\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"ulong\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"uint32\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"uint64\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"size_t\00", align 1
@test_param_construct.bn_val = internal constant [16 x i8] c"\ACu\22}\81\06z#\A6\ED\87\C7\AB\F4s\22", align 16
@test_param_construct.params_empty = internal constant [1 x %struct.ossl_param_st] zeroinitializer, align 16
@.str.71 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"bignum\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"utf8str\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"octstr\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"utf8ptr\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"octptr\00", align 1
@.str.77 = private unnamed_addr constant [30 x i8] c"OSSL_PARAM_locate(p, \22fnord\22)\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"fnord\00", align 1
@.str.79 = private unnamed_addr constant [40 x i8] c"cp = OSSL_PARAM_locate(p, int_names[j])\00", align 1
@.str.80 = private unnamed_addr constant [43 x i8] c"OSSL_PARAM_set_int32(cp, (int32_t)(3 + j))\00", align 1
@.str.81 = private unnamed_addr constant [31 x i8] c"OSSL_PARAM_get_int64(cp, &i64)\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"cp->data_size\00", align 1
@.str.83 = private unnamed_addr constant [16 x i8] c"cp->return_size\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"3 + j\00", align 1
@.str.85 = private unnamed_addr constant [21 x i8] c"iteration %zu var %s\00", align 1
@.str.86 = private unnamed_addr constant [41 x i8] c"cp = OSSL_PARAM_locate(p, uint_names[j])\00", align 1
@.str.87 = private unnamed_addr constant [45 x i8] c"OSSL_PARAM_set_uint32(cp, (uint32_t)(3 + j))\00", align 1
@.str.88 = private unnamed_addr constant [32 x i8] c"OSSL_PARAM_get_uint64(cp, &u64)\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"(size_t)u64\00", align 1
@.str.90 = private unnamed_addr constant [36 x i8] c"cp = OSSL_PARAM_locate(p, \22double\22)\00", align 1
@.str.91 = private unnamed_addr constant [32 x i8] c"OSSL_PARAM_set_double(cp, 3.14)\00", align 1
@.str.92 = private unnamed_addr constant [31 x i8] c"OSSL_PARAM_get_double(cp, &d2)\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"sizeof(double)\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"d2\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"3.14\00", align 1
@.str.96 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.97 = private unnamed_addr constant [37 x i8] c"cp = OSSL_PARAM_locate(p, \22utf8str\22)\00", align 1
@.str.98 = private unnamed_addr constant [41 x i8] c"OSSL_PARAM_set_utf8_string(cp, \22abcdef\22)\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"abcdef\00", align 1
@.str.100 = private unnamed_addr constant [21 x i8] c"sizeof(\22abcdef\22) - 1\00", align 1
@.str.101 = private unnamed_addr constant [41 x i8] c"OSSL_PARAM_get_utf8_string(cp, &bufp, 0)\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"bufp\00", align 1
@.str.103 = private unnamed_addr constant [9 x i8] c"\22abcdef\22\00", align 1
@.str.104 = private unnamed_addr constant [52 x i8] c"OSSL_PARAM_get_utf8_string(cp, &bufp, sizeof(buf2))\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"buf2\00", align 1
@.str.106 = private unnamed_addr constant [37 x i8] c"cp = OSSL_PARAM_locate(p, \22utf8ptr\22)\00", align 1
@.str.107 = private unnamed_addr constant [39 x i8] c"OSSL_PARAM_set_utf8_ptr(cp, \22tuvwxyz\22)\00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c"tuvwxyz\00", align 1
@.str.109 = private unnamed_addr constant [22 x i8] c"sizeof(\22tuvwxyz\22) - 1\00", align 1
@.str.110 = private unnamed_addr constant [51 x i8] c"OSSL_PARAM_get_utf8_ptr(cp, (const char **)&bufp2)\00", align 1
@.str.111 = private unnamed_addr constant [6 x i8] c"bufp2\00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"\22tuvwxyz\22\00", align 1
@.str.113 = private unnamed_addr constant [36 x i8] c"cp = OSSL_PARAM_locate(p, \22octstr\22)\00", align 1
@.str.114 = private unnamed_addr constant [66 x i8] c"OSSL_PARAM_set_octet_string(cp, \22abcdefghi\22, sizeof(\22abcdefghi\22))\00", align 1
@.str.115 = private unnamed_addr constant [10 x i8] c"abcdefghi\00", align 1
@.str.116 = private unnamed_addr constant [20 x i8] c"sizeof(\22abcdefghi\22)\00", align 1
@.str.117 = private unnamed_addr constant [45 x i8] c"OSSL_PARAM_get_octet_string(cp, &vpn, 0, &s)\00", align 1
@.str.118 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.119 = private unnamed_addr constant [4 x i8] c"vpn\00", align 1
@.str.120 = private unnamed_addr constant [12 x i8] c"\22abcdefghi\22\00", align 1
@.str.121 = private unnamed_addr constant [55 x i8] c"OSSL_PARAM_get_octet_string(cp, &vp, sizeof(buf2), &s)\00", align 1
@.str.122 = private unnamed_addr constant [3 x i8] c"vp\00", align 1
@.str.123 = private unnamed_addr constant [36 x i8] c"cp = OSSL_PARAM_locate(p, \22octptr\22)\00", align 1
@.str.124 = private unnamed_addr constant [46 x i8] c"OSSL_PARAM_set_octet_ptr(cp, &ul, sizeof(ul))\00", align 1
@.str.125 = private unnamed_addr constant [11 x i8] c"sizeof(ul)\00", align 1
@.str.126 = private unnamed_addr constant [4 x i8] c"&ul\00", align 1
@.str.127 = private unnamed_addr constant [54 x i8] c"OSSL_PARAM_get_octet_ptr(cp, (const void **)&vp2, &k)\00", align 1
@.str.128 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"vp2\00", align 1
@.str.130 = private unnamed_addr constant [36 x i8] c"cp = OSSL_PARAM_locate(p, \22bignum\22)\00", align 1
@.str.131 = private unnamed_addr constant [52 x i8] c"bn = BN_lebin2bn(bn_val, (int)sizeof(bn_val), NULL)\00", align 1
@.str.132 = private unnamed_addr constant [26 x i8] c"OSSL_PARAM_set_BN(cp, bn)\00", align 1
@.str.133 = private unnamed_addr constant [28 x i8] c"OSSL_PARAM_get_BN(cp, &bn2)\00", align 1
@.str.134 = private unnamed_addr constant [4 x i8] c"bn2\00", align 1
@__const.test_param_modified.param = private unnamed_addr constant [3 x %struct.ossl_param_st] [%struct.ossl_param_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i32 1, i8* null, i64 4, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0), i32 1, i8* null, i64 4, i64 -1 }, %struct.ossl_param_st zeroinitializer], align 16
@.str.135 = private unnamed_addr constant [34 x i8] c"OSSL_PARAM_set_int32(param, 1234)\00", align 1
@.str.136 = private unnamed_addr constant [31 x i8] c"OSSL_PARAM_modified(param + 1)\00", align 1
@.str.137 = private unnamed_addr constant [35 x i8] c"OSSL_PARAM_set_int32(param + 1, 1)\00", align 1
@.str.138 = private unnamed_addr constant [34 x i8] c"OSSL_PARAM_set_int32(param, 4321)\00", align 1
@.str.139 = private unnamed_addr constant [35 x i8] c"OSSL_PARAM_set_int32(param + 1, 2)\00", align 1
@.str.140 = private unnamed_addr constant [21 x i8] c"OSSL_PARAM_dup(NULL)\00", align 1
@.str.141 = private unnamed_addr constant [36 x i8] c"cp1 = OSSL_PARAM_merge(NULL, param)\00", align 1
@.str.142 = private unnamed_addr constant [32 x i8] c"p = OSSL_PARAM_locate(cp1, \22a\22)\00", align 1
@.str.143 = private unnamed_addr constant [28 x i8] c"OSSL_PARAM_get_int(p, &val)\00", align 1
@.str.144 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@.str.145 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.146 = private unnamed_addr constant [32 x i8] c"p = OSSL_PARAM_locate(cp1, \22b\22)\00", align 1
@.str.147 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.148 = private unnamed_addr constant [36 x i8] c"cp2 = OSSL_PARAM_merge(param, NULL)\00", align 1
@.str.149 = private unnamed_addr constant [32 x i8] c"p = OSSL_PARAM_locate(cp2, \22a\22)\00", align 1
@.str.150 = private unnamed_addr constant [32 x i8] c"p = OSSL_PARAM_locate(cp2, \22b\22)\00", align 1
@.str.151 = private unnamed_addr constant [29 x i8] c"OSSL_PARAM_merge(NULL, NULL)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 (i32)* noundef nonnull @test_param_int, i32 noundef 14, i32 noundef 1) #5
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 (i32)* noundef nonnull @test_param_long, i32 noundef 14, i32 noundef 1) #5
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 (i32)* noundef nonnull @test_param_uint, i32 noundef 14, i32 noundef 1) #5
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 (i32)* noundef nonnull @test_param_ulong, i32 noundef 14, i32 noundef 1) #5
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 (i32)* noundef nonnull @test_param_int32, i32 noundef 14, i32 noundef 1) #5
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 (i32)* noundef nonnull @test_param_uint32, i32 noundef 14, i32 noundef 1) #5
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 (i32)* noundef nonnull @test_param_size_t, i32 noundef 14, i32 noundef 1) #5
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 (i32)* noundef nonnull @test_param_time_t, i32 noundef 14, i32 noundef 1) #5
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 (i32)* noundef nonnull @test_param_int64, i32 noundef 14, i32 noundef 1) #5
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 (i32)* noundef nonnull @test_param_uint64, i32 noundef 14, i32 noundef 1) #5
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 (i32)* noundef nonnull @test_param_bignum, i32 noundef 14, i32 noundef 1) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 ()* noundef nonnull @test_param_real) #5
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 (i32)* noundef nonnull @test_param_construct, i32 noundef 4, i32 noundef 1) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 ()* noundef nonnull @test_param_modified) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 ()* noundef nonnull @test_param_copy_null) #5
  ret i32 1
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_param_int(i32 noundef %n) #0 {
entry:
  %in = alloca i32, align 4
  %out = alloca i32, align 4
  %buf = alloca [20 x i8], align 16
  %cmp = alloca [4 x i8], align 1
  %param = alloca %struct.ossl_param_st, align 8
  %0 = bitcast i32* %in to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  %1 = bitcast i32* %out to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #6
  %2 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %2) #6
  %3 = getelementptr inbounds [4 x i8], [4 x i8]* %cmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #6
  %idxprom = sext i32 %n to i64
  %len1 = getelementptr inbounds [14 x %struct.anon], [14 x %struct.anon]* bitcast (<{ { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, %struct.anon, %struct.anon }>* @raw_values to [14 x %struct.anon]*), i64 0, i64 %idxprom, i32 0
  %4 = load i64, i64* %len1, align 16, !tbaa !3
  %5 = bitcast %struct.ossl_param_st* %param to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #6
  %6 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 1
  %7 = bitcast i32* %6 to i64*
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i8** %8, align 8
  %9 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 1
  store i32 1, i32* %9, align 8
  %10 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 3
  %11 = bitcast i64* %10 to <2 x i64>*
  store <2 x i64> <i64 4, i64 -1>, <2 x i64>* %11, align 8
  %call = call i8* @memset(i8* noundef nonnull %2, i32 noundef 0, i64 noundef 20) #5
  %arraydecay9 = getelementptr inbounds [14 x %struct.anon], [14 x %struct.anon]* bitcast (<{ { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, %struct.anon, %struct.anon }>* @raw_values to [14 x %struct.anon]*), i64 0, i64 %idxprom, i32 1, i64 0
  call fastcc void @le_copy(i8* noundef nonnull %2, i8* noundef nonnull %arraydecay9, i64 noundef 4) #7
  %call11 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef nonnull %2, i64 noundef 4) #5
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 2
  %12 = bitcast i8** %data to i32**
  store i32* %out, i32** %12, align 8, !tbaa !8
  %13 = load i32, i32* %in, align 4, !tbaa !12
  %call12 = call i32 @OSSL_PARAM_set_int(%struct.ossl_param_st* noundef nonnull %param, i32 noundef %13) #5
  %cmp13 = icmp ne i32 %call12, 0
  %conv = zext i1 %cmp13 to i32
  %call14 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 160, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i32 noundef %conv) #5
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp2.inv = icmp ult i64 %4, 4
  %spec.select = select i1 %cmp2.inv, i64 %4, i64 4
  call fastcc void @le_copy(i8* noundef nonnull %3, i8* noundef nonnull %1, i64 noundef 4) #7
  %call21 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 163, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef %spec.select, i8* noundef nonnull %arraydecay9, i64 noundef %spec.select) #5
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end
  store i32 0, i32* %in, align 4, !tbaa !12
  %call25 = call i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef nonnull %param, i32* noundef nonnull %in) #5
  %cmp26 = icmp ne i32 %call25, 0
  %conv27 = zext i1 %cmp26 to i32
  %call28 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 166, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0), i32 noundef %conv27) #5
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %cleanup, label %if.end31

if.end31:                                         ; preds = %if.end24
  call fastcc void @le_copy(i8* noundef nonnull %3, i8* noundef nonnull %0, i64 noundef 4) #7
  %call38 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 169, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef 4, i8* noundef nonnull %arraydecay9, i64 noundef 4) #5
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %cleanup, label %if.end41

if.end41:                                         ; preds = %if.end31
  store i32* %out, i32** %12, align 8, !tbaa !8
  %call47 = call fastcc i32 @test_param_type_extra(%struct.ossl_param_st* noundef nonnull %param, i8* noundef nonnull %arraydecay9, i64 noundef 4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end24, %if.end, %entry, %if.end41
  %retval.0 = phi i32 [ %call47, %if.end41 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end24 ], [ 0, %if.end31 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_param_long(i32 noundef %n) #0 {
entry:
  %in = alloca i64, align 8
  %out = alloca i64, align 8
  %buf = alloca [20 x i8], align 16
  %cmp = alloca [8 x i8], align 1
  %param = alloca %struct.ossl_param_st, align 8
  %0 = bitcast i64* %in to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %1 = bitcast i64* %out to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  %2 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %2) #6
  %3 = getelementptr inbounds [8 x i8], [8 x i8]* %cmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6
  %idxprom = sext i32 %n to i64
  %len1 = getelementptr inbounds [14 x %struct.anon], [14 x %struct.anon]* bitcast (<{ { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, %struct.anon, %struct.anon }>* @raw_values to [14 x %struct.anon]*), i64 0, i64 %idxprom, i32 0
  %4 = load i64, i64* %len1, align 16, !tbaa !3
  %5 = bitcast %struct.ossl_param_st* %param to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #6
  %6 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 1
  %7 = bitcast i32* %6 to i64*
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i8** %8, align 8
  %9 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 1
  store i32 1, i32* %9, align 8
  %10 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 3
  %11 = bitcast i64* %10 to <2 x i64>*
  store <2 x i64> <i64 8, i64 -1>, <2 x i64>* %11, align 8
  %call = call i8* @memset(i8* noundef nonnull %2, i32 noundef 0, i64 noundef 20) #5
  %arraydecay9 = getelementptr inbounds [14 x %struct.anon], [14 x %struct.anon]* bitcast (<{ { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, %struct.anon, %struct.anon }>* @raw_values to [14 x %struct.anon]*), i64 0, i64 %idxprom, i32 1, i64 0
  call fastcc void @le_copy(i8* noundef nonnull %2, i8* noundef nonnull %arraydecay9, i64 noundef 8) #7
  %call11 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef nonnull %2, i64 noundef 8) #5
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 2
  %12 = bitcast i8** %data to i64**
  store i64* %out, i64** %12, align 8, !tbaa !8
  %13 = load i64, i64* %in, align 8, !tbaa !13
  %call12 = call i32 @OSSL_PARAM_set_long(%struct.ossl_param_st* noundef nonnull %param, i64 noundef %13) #5
  %cmp13 = icmp ne i32 %call12, 0
  %conv = zext i1 %cmp13 to i32
  %call14 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 187, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i64 0, i64 0), i32 noundef %conv) #5
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp2.inv = icmp ult i64 %4, 8
  %spec.select = select i1 %cmp2.inv, i64 %4, i64 8
  call fastcc void @le_copy(i8* noundef nonnull %3, i8* noundef nonnull %1, i64 noundef 8) #7
  %call21 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 190, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef %spec.select, i8* noundef nonnull %arraydecay9, i64 noundef %spec.select) #5
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end
  store i64 0, i64* %in, align 8, !tbaa !13
  %call25 = call i32 @OSSL_PARAM_get_long(%struct.ossl_param_st* noundef nonnull %param, i64* noundef nonnull %in) #5
  %cmp26 = icmp ne i32 %call25, 0
  %conv27 = zext i1 %cmp26 to i32
  %call28 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 193, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34, i64 0, i64 0), i32 noundef %conv27) #5
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %cleanup, label %if.end31

if.end31:                                         ; preds = %if.end24
  call fastcc void @le_copy(i8* noundef nonnull %3, i8* noundef nonnull %0, i64 noundef 8) #7
  %call38 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 196, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef 8, i8* noundef nonnull %arraydecay9, i64 noundef 8) #5
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %cleanup, label %if.end41

if.end41:                                         ; preds = %if.end31
  store i64* %out, i64** %12, align 8, !tbaa !8
  %call47 = call fastcc i32 @test_param_type_extra(%struct.ossl_param_st* noundef nonnull %param, i8* noundef nonnull %arraydecay9, i64 noundef 8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end24, %if.end, %entry, %if.end41
  %retval.0 = phi i32 [ %call47, %if.end41 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end24 ], [ 0, %if.end31 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_param_uint(i32 noundef %n) #0 {
entry:
  %in = alloca i32, align 4
  %out = alloca i32, align 4
  %buf = alloca [20 x i8], align 16
  %cmp = alloca [4 x i8], align 1
  %param = alloca %struct.ossl_param_st, align 8
  %0 = bitcast i32* %in to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  %1 = bitcast i32* %out to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #6
  %2 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %2) #6
  %3 = getelementptr inbounds [4 x i8], [4 x i8]* %cmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #6
  %idxprom = sext i32 %n to i64
  %len1 = getelementptr inbounds [14 x %struct.anon], [14 x %struct.anon]* bitcast (<{ { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, %struct.anon, %struct.anon }>* @raw_values to [14 x %struct.anon]*), i64 0, i64 %idxprom, i32 0
  %4 = load i64, i64* %len1, align 16, !tbaa !3
  %5 = bitcast %struct.ossl_param_st* %param to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #6
  %6 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 1
  %7 = bitcast i32* %6 to i64*
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i8** %8, align 8
  %9 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 1
  store i32 2, i32* %9, align 8
  %10 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 3
  %11 = bitcast i64* %10 to <2 x i64>*
  store <2 x i64> <i64 4, i64 -1>, <2 x i64>* %11, align 8
  %call = call i8* @memset(i8* noundef nonnull %2, i32 noundef 0, i64 noundef 20) #5
  %arraydecay9 = getelementptr inbounds [14 x %struct.anon], [14 x %struct.anon]* bitcast (<{ { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, %struct.anon, %struct.anon }>* @raw_values to [14 x %struct.anon]*), i64 0, i64 %idxprom, i32 1, i64 0
  call fastcc void @le_copy(i8* noundef nonnull %2, i8* noundef nonnull %arraydecay9, i64 noundef 4) #7
  %call11 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef nonnull %2, i64 noundef 4) #5
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 2
  %12 = bitcast i8** %data to i32**
  store i32* %out, i32** %12, align 8, !tbaa !8
  %13 = load i32, i32* %in, align 4, !tbaa !12
  %call12 = call i32 @OSSL_PARAM_set_uint(%struct.ossl_param_st* noundef nonnull %param, i32 noundef %13) #5
  %cmp13 = icmp ne i32 %call12, 0
  %conv = zext i1 %cmp13 to i32
  %call14 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 213, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv) #5
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp2.inv = icmp ult i64 %4, 4
  %spec.select = select i1 %cmp2.inv, i64 %4, i64 4
  call fastcc void @le_copy(i8* noundef nonnull %3, i8* noundef nonnull %1, i64 noundef 4) #7
  %call21 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 216, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef %spec.select, i8* noundef nonnull %arraydecay9, i64 noundef %spec.select) #5
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end
  store i32 0, i32* %in, align 4, !tbaa !12
  %call25 = call i32 @OSSL_PARAM_get_uint(%struct.ossl_param_st* noundef nonnull %param, i32* noundef nonnull %in) #5
  %cmp26 = icmp ne i32 %call25, 0
  %conv27 = zext i1 %cmp26 to i32
  %call28 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 219, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv27) #5
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %cleanup, label %if.end31

if.end31:                                         ; preds = %if.end24
  call fastcc void @le_copy(i8* noundef nonnull %3, i8* noundef nonnull %0, i64 noundef 4) #7
  %call38 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 222, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef 4, i8* noundef nonnull %arraydecay9, i64 noundef 4) #5
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %cleanup, label %if.end41

if.end41:                                         ; preds = %if.end31
  store i32* %out, i32** %12, align 8, !tbaa !8
  %call47 = call fastcc i32 @test_param_type_extra(%struct.ossl_param_st* noundef nonnull %param, i8* noundef nonnull %arraydecay9, i64 noundef 4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end24, %if.end, %entry, %if.end41
  %retval.0 = phi i32 [ %call47, %if.end41 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end24 ], [ 0, %if.end31 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_param_ulong(i32 noundef %n) #0 {
entry:
  %in = alloca i64, align 8
  %out = alloca i64, align 8
  %buf = alloca [20 x i8], align 16
  %cmp = alloca [8 x i8], align 1
  %param = alloca %struct.ossl_param_st, align 8
  %0 = bitcast i64* %in to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %1 = bitcast i64* %out to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  %2 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %2) #6
  %3 = getelementptr inbounds [8 x i8], [8 x i8]* %cmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6
  %idxprom = sext i32 %n to i64
  %len1 = getelementptr inbounds [14 x %struct.anon], [14 x %struct.anon]* bitcast (<{ { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, %struct.anon, %struct.anon }>* @raw_values to [14 x %struct.anon]*), i64 0, i64 %idxprom, i32 0
  %4 = load i64, i64* %len1, align 16, !tbaa !3
  %5 = bitcast %struct.ossl_param_st* %param to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #6
  %6 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 1
  %7 = bitcast i32* %6 to i64*
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i8** %8, align 8
  %9 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 1
  store i32 2, i32* %9, align 8
  %10 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 3
  %11 = bitcast i64* %10 to <2 x i64>*
  store <2 x i64> <i64 8, i64 -1>, <2 x i64>* %11, align 8
  %call = call i8* @memset(i8* noundef nonnull %2, i32 noundef 0, i64 noundef 20) #5
  %arraydecay9 = getelementptr inbounds [14 x %struct.anon], [14 x %struct.anon]* bitcast (<{ { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, %struct.anon, %struct.anon }>* @raw_values to [14 x %struct.anon]*), i64 0, i64 %idxprom, i32 1, i64 0
  call fastcc void @le_copy(i8* noundef nonnull %2, i8* noundef nonnull %arraydecay9, i64 noundef 8) #7
  %call11 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef nonnull %2, i64 noundef 8) #5
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 2
  %12 = bitcast i8** %data to i64**
  store i64* %out, i64** %12, align 8, !tbaa !8
  %13 = load i64, i64* %in, align 8, !tbaa !13
  %call12 = call i32 @OSSL_PARAM_set_ulong(%struct.ossl_param_st* noundef nonnull %param, i64 noundef %13) #5
  %cmp13 = icmp ne i32 %call12, 0
  %conv = zext i1 %cmp13 to i32
  %call14 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 240, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.37, i64 0, i64 0), i32 noundef %conv) #5
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp2.inv = icmp ult i64 %4, 8
  %spec.select = select i1 %cmp2.inv, i64 %4, i64 8
  call fastcc void @le_copy(i8* noundef nonnull %3, i8* noundef nonnull %1, i64 noundef 8) #7
  %call21 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 243, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef %spec.select, i8* noundef nonnull %arraydecay9, i64 noundef %spec.select) #5
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end
  store i64 0, i64* %in, align 8, !tbaa !13
  %call25 = call i32 @OSSL_PARAM_get_ulong(%struct.ossl_param_st* noundef nonnull %param, i64* noundef nonnull %in) #5
  %cmp26 = icmp ne i32 %call25, 0
  %conv27 = zext i1 %cmp26 to i32
  %call28 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 246, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.38, i64 0, i64 0), i32 noundef %conv27) #5
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %cleanup, label %if.end31

if.end31:                                         ; preds = %if.end24
  call fastcc void @le_copy(i8* noundef nonnull %3, i8* noundef nonnull %0, i64 noundef 8) #7
  %call38 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 249, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef 8, i8* noundef nonnull %arraydecay9, i64 noundef 8) #5
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %cleanup, label %if.end41

if.end41:                                         ; preds = %if.end31
  store i64* %out, i64** %12, align 8, !tbaa !8
  %call47 = call fastcc i32 @test_param_type_extra(%struct.ossl_param_st* noundef nonnull %param, i8* noundef nonnull %arraydecay9, i64 noundef 8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end24, %if.end, %entry, %if.end41
  %retval.0 = phi i32 [ %call47, %if.end41 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end24 ], [ 0, %if.end31 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_param_int32(i32 noundef %n) #0 {
entry:
  %in = alloca i32, align 4
  %out = alloca i32, align 4
  %buf = alloca [20 x i8], align 16
  %cmp = alloca [4 x i8], align 1
  %param = alloca %struct.ossl_param_st, align 8
  %0 = bitcast i32* %in to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  %1 = bitcast i32* %out to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #6
  %2 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %2) #6
  %3 = getelementptr inbounds [4 x i8], [4 x i8]* %cmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #6
  %idxprom = sext i32 %n to i64
  %len1 = getelementptr inbounds [14 x %struct.anon], [14 x %struct.anon]* bitcast (<{ { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, %struct.anon, %struct.anon }>* @raw_values to [14 x %struct.anon]*), i64 0, i64 %idxprom, i32 0
  %4 = load i64, i64* %len1, align 16, !tbaa !3
  %5 = bitcast %struct.ossl_param_st* %param to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #6
  %6 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 1
  %7 = bitcast i32* %6 to i64*
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i8** %8, align 8
  %9 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 1
  store i32 1, i32* %9, align 8
  %10 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 3
  %11 = bitcast i64* %10 to <2 x i64>*
  store <2 x i64> <i64 4, i64 -1>, <2 x i64>* %11, align 8
  %call = call i8* @memset(i8* noundef nonnull %2, i32 noundef 0, i64 noundef 20) #5
  %arraydecay9 = getelementptr inbounds [14 x %struct.anon], [14 x %struct.anon]* bitcast (<{ { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, %struct.anon, %struct.anon }>* @raw_values to [14 x %struct.anon]*), i64 0, i64 %idxprom, i32 1, i64 0
  call fastcc void @le_copy(i8* noundef nonnull %2, i8* noundef nonnull %arraydecay9, i64 noundef 4) #7
  %call11 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef nonnull %2, i64 noundef 4) #5
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 2
  %12 = bitcast i8** %data to i32**
  store i32* %out, i32** %12, align 8, !tbaa !8
  %13 = load i32, i32* %in, align 4, !tbaa !12
  %call12 = call i32 @OSSL_PARAM_set_int32(%struct.ossl_param_st* noundef nonnull %param, i32 noundef %13) #5
  %cmp13 = icmp ne i32 %call12, 0
  %conv = zext i1 %cmp13 to i32
  %call14 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 267, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.39, i64 0, i64 0), i32 noundef %conv) #5
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp2.inv = icmp ult i64 %4, 4
  %spec.select = select i1 %cmp2.inv, i64 %4, i64 4
  call fastcc void @le_copy(i8* noundef nonnull %3, i8* noundef nonnull %1, i64 noundef 4) #7
  %call21 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 270, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef %spec.select, i8* noundef nonnull %arraydecay9, i64 noundef %spec.select) #5
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end
  store i32 0, i32* %in, align 4, !tbaa !12
  %call25 = call i32 @OSSL_PARAM_get_int32(%struct.ossl_param_st* noundef nonnull %param, i32* noundef nonnull %in) #5
  %cmp26 = icmp ne i32 %call25, 0
  %conv27 = zext i1 %cmp26 to i32
  %call28 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 273, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv27) #5
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %cleanup, label %if.end31

if.end31:                                         ; preds = %if.end24
  call fastcc void @le_copy(i8* noundef nonnull %3, i8* noundef nonnull %0, i64 noundef 4) #7
  %call38 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 276, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef 4, i8* noundef nonnull %arraydecay9, i64 noundef 4) #5
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %cleanup, label %if.end41

if.end41:                                         ; preds = %if.end31
  store i32* %out, i32** %12, align 8, !tbaa !8
  %call47 = call fastcc i32 @test_param_type_extra(%struct.ossl_param_st* noundef nonnull %param, i8* noundef nonnull %arraydecay9, i64 noundef 4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end24, %if.end, %entry, %if.end41
  %retval.0 = phi i32 [ %call47, %if.end41 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end24 ], [ 0, %if.end31 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_param_uint32(i32 noundef %n) #0 {
entry:
  %in = alloca i32, align 4
  %out = alloca i32, align 4
  %buf = alloca [20 x i8], align 16
  %cmp = alloca [4 x i8], align 1
  %param = alloca %struct.ossl_param_st, align 8
  %0 = bitcast i32* %in to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  %1 = bitcast i32* %out to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #6
  %2 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %2) #6
  %3 = getelementptr inbounds [4 x i8], [4 x i8]* %cmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #6
  %idxprom = sext i32 %n to i64
  %len1 = getelementptr inbounds [14 x %struct.anon], [14 x %struct.anon]* bitcast (<{ { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, %struct.anon, %struct.anon }>* @raw_values to [14 x %struct.anon]*), i64 0, i64 %idxprom, i32 0
  %4 = load i64, i64* %len1, align 16, !tbaa !3
  %5 = bitcast %struct.ossl_param_st* %param to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #6
  %6 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 1
  %7 = bitcast i32* %6 to i64*
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i8** %8, align 8
  %9 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 1
  store i32 2, i32* %9, align 8
  %10 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 3
  %11 = bitcast i64* %10 to <2 x i64>*
  store <2 x i64> <i64 4, i64 -1>, <2 x i64>* %11, align 8
  %call = call i8* @memset(i8* noundef nonnull %2, i32 noundef 0, i64 noundef 20) #5
  %arraydecay9 = getelementptr inbounds [14 x %struct.anon], [14 x %struct.anon]* bitcast (<{ { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, %struct.anon, %struct.anon }>* @raw_values to [14 x %struct.anon]*), i64 0, i64 %idxprom, i32 1, i64 0
  call fastcc void @le_copy(i8* noundef nonnull %2, i8* noundef nonnull %arraydecay9, i64 noundef 4) #7
  %call11 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef nonnull %2, i64 noundef 4) #5
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 2
  %12 = bitcast i8** %data to i32**
  store i32* %out, i32** %12, align 8, !tbaa !8
  %13 = load i32, i32* %in, align 4, !tbaa !12
  %call12 = call i32 @OSSL_PARAM_set_uint32(%struct.ossl_param_st* noundef nonnull %param, i32 noundef %13) #5
  %cmp13 = icmp ne i32 %call12, 0
  %conv = zext i1 %cmp13 to i32
  %call14 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 294, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv) #5
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp2.inv = icmp ult i64 %4, 4
  %spec.select = select i1 %cmp2.inv, i64 %4, i64 4
  call fastcc void @le_copy(i8* noundef nonnull %3, i8* noundef nonnull %1, i64 noundef 4) #7
  %call21 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 297, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef %spec.select, i8* noundef nonnull %arraydecay9, i64 noundef %spec.select) #5
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end
  store i32 0, i32* %in, align 4, !tbaa !12
  %call25 = call i32 @OSSL_PARAM_get_uint32(%struct.ossl_param_st* noundef nonnull %param, i32* noundef nonnull %in) #5
  %cmp26 = icmp ne i32 %call25, 0
  %conv27 = zext i1 %cmp26 to i32
  %call28 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 300, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.42, i64 0, i64 0), i32 noundef %conv27) #5
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %cleanup, label %if.end31

if.end31:                                         ; preds = %if.end24
  call fastcc void @le_copy(i8* noundef nonnull %3, i8* noundef nonnull %0, i64 noundef 4) #7
  %call38 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 303, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef 4, i8* noundef nonnull %arraydecay9, i64 noundef 4) #5
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %cleanup, label %if.end41

if.end41:                                         ; preds = %if.end31
  store i32* %out, i32** %12, align 8, !tbaa !8
  %call47 = call fastcc i32 @test_param_type_extra(%struct.ossl_param_st* noundef nonnull %param, i8* noundef nonnull %arraydecay9, i64 noundef 4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end24, %if.end, %entry, %if.end41
  %retval.0 = phi i32 [ %call47, %if.end41 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end24 ], [ 0, %if.end31 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_param_size_t(i32 noundef %n) #0 {
entry:
  %in = alloca i64, align 8
  %out = alloca i64, align 8
  %buf = alloca [20 x i8], align 16
  %cmp = alloca [8 x i8], align 1
  %param = alloca %struct.ossl_param_st, align 8
  %0 = bitcast i64* %in to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %1 = bitcast i64* %out to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  %2 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %2) #6
  %3 = getelementptr inbounds [8 x i8], [8 x i8]* %cmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6
  %idxprom = sext i32 %n to i64
  %len1 = getelementptr inbounds [14 x %struct.anon], [14 x %struct.anon]* bitcast (<{ { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, %struct.anon, %struct.anon }>* @raw_values to [14 x %struct.anon]*), i64 0, i64 %idxprom, i32 0
  %4 = load i64, i64* %len1, align 16, !tbaa !3
  %5 = bitcast %struct.ossl_param_st* %param to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #6
  %6 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 1
  %7 = bitcast i32* %6 to i64*
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i8** %8, align 8
  %9 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 1
  store i32 2, i32* %9, align 8
  %10 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 3
  %11 = bitcast i64* %10 to <2 x i64>*
  store <2 x i64> <i64 8, i64 -1>, <2 x i64>* %11, align 8
  %call = call i8* @memset(i8* noundef nonnull %2, i32 noundef 0, i64 noundef 20) #5
  %arraydecay9 = getelementptr inbounds [14 x %struct.anon], [14 x %struct.anon]* bitcast (<{ { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, %struct.anon, %struct.anon }>* @raw_values to [14 x %struct.anon]*), i64 0, i64 %idxprom, i32 1, i64 0
  call fastcc void @le_copy(i8* noundef nonnull %2, i8* noundef nonnull %arraydecay9, i64 noundef 8) #7
  %call11 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef nonnull %2, i64 noundef 8) #5
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 2
  %12 = bitcast i8** %data to i64**
  store i64* %out, i64** %12, align 8, !tbaa !8
  %13 = load i64, i64* %in, align 8, !tbaa !13
  %call12 = call i32 @OSSL_PARAM_set_size_t(%struct.ossl_param_st* noundef nonnull %param, i64 noundef %13) #5
  %cmp13 = icmp ne i32 %call12, 0
  %conv = zext i1 %cmp13 to i32
  %call14 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 375, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.43, i64 0, i64 0), i32 noundef %conv) #5
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp2.inv = icmp ult i64 %4, 8
  %spec.select = select i1 %cmp2.inv, i64 %4, i64 8
  call fastcc void @le_copy(i8* noundef nonnull %3, i8* noundef nonnull %1, i64 noundef 8) #7
  %call21 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 378, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef %spec.select, i8* noundef nonnull %arraydecay9, i64 noundef %spec.select) #5
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end
  store i64 0, i64* %in, align 8, !tbaa !13
  %call25 = call i32 @OSSL_PARAM_get_size_t(%struct.ossl_param_st* noundef nonnull %param, i64* noundef nonnull %in) #5
  %cmp26 = icmp ne i32 %call25, 0
  %conv27 = zext i1 %cmp26 to i32
  %call28 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 381, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.44, i64 0, i64 0), i32 noundef %conv27) #5
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %cleanup, label %if.end31

if.end31:                                         ; preds = %if.end24
  call fastcc void @le_copy(i8* noundef nonnull %3, i8* noundef nonnull %0, i64 noundef 8) #7
  %call38 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 384, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef 8, i8* noundef nonnull %arraydecay9, i64 noundef 8) #5
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %cleanup, label %if.end41

if.end41:                                         ; preds = %if.end31
  store i64* %out, i64** %12, align 8, !tbaa !8
  %call47 = call fastcc i32 @test_param_type_extra(%struct.ossl_param_st* noundef nonnull %param, i8* noundef nonnull %arraydecay9, i64 noundef 8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end24, %if.end, %entry, %if.end41
  %retval.0 = phi i32 [ %call47, %if.end41 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end24 ], [ 0, %if.end31 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_param_time_t(i32 noundef %n) #0 {
entry:
  %in = alloca i64, align 8
  %out = alloca i64, align 8
  %buf = alloca [20 x i8], align 16
  %cmp = alloca [8 x i8], align 1
  %param = alloca %struct.ossl_param_st, align 8
  %0 = bitcast i64* %in to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %1 = bitcast i64* %out to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  %2 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %2) #6
  %3 = getelementptr inbounds [8 x i8], [8 x i8]* %cmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6
  %idxprom = sext i32 %n to i64
  %len1 = getelementptr inbounds [14 x %struct.anon], [14 x %struct.anon]* bitcast (<{ { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, %struct.anon, %struct.anon }>* @raw_values to [14 x %struct.anon]*), i64 0, i64 %idxprom, i32 0
  %4 = load i64, i64* %len1, align 16, !tbaa !3
  %5 = bitcast %struct.ossl_param_st* %param to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #6
  %6 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 1
  %7 = bitcast i32* %6 to i64*
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i8** %8, align 8
  %9 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 1
  store i32 1, i32* %9, align 8
  %10 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 3
  %11 = bitcast i64* %10 to <2 x i64>*
  store <2 x i64> <i64 8, i64 -1>, <2 x i64>* %11, align 8
  %call = call i8* @memset(i8* noundef nonnull %2, i32 noundef 0, i64 noundef 20) #5
  %arraydecay9 = getelementptr inbounds [14 x %struct.anon], [14 x %struct.anon]* bitcast (<{ { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, %struct.anon, %struct.anon }>* @raw_values to [14 x %struct.anon]*), i64 0, i64 %idxprom, i32 1, i64 0
  call fastcc void @le_copy(i8* noundef nonnull %2, i8* noundef nonnull %arraydecay9, i64 noundef 8) #7
  %call11 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef nonnull %2, i64 noundef 8) #5
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 2
  %12 = bitcast i8** %data to i64**
  store i64* %out, i64** %12, align 8, !tbaa !8
  %13 = load i64, i64* %in, align 8, !tbaa !13
  %call12 = call i32 @OSSL_PARAM_set_time_t(%struct.ossl_param_st* noundef nonnull %param, i64 noundef %13) #5
  %cmp13 = icmp ne i32 %call12, 0
  %conv = zext i1 %cmp13 to i32
  %call14 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 402, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.45, i64 0, i64 0), i32 noundef %conv) #5
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp2.inv = icmp ult i64 %4, 8
  %spec.select = select i1 %cmp2.inv, i64 %4, i64 8
  call fastcc void @le_copy(i8* noundef nonnull %3, i8* noundef nonnull %1, i64 noundef 8) #7
  %call21 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 405, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef %spec.select, i8* noundef nonnull %arraydecay9, i64 noundef %spec.select) #5
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end
  store i64 0, i64* %in, align 8, !tbaa !13
  %call25 = call i32 @OSSL_PARAM_get_time_t(%struct.ossl_param_st* noundef nonnull %param, i64* noundef nonnull %in) #5
  %cmp26 = icmp ne i32 %call25, 0
  %conv27 = zext i1 %cmp26 to i32
  %call28 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 408, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.46, i64 0, i64 0), i32 noundef %conv27) #5
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %cleanup, label %if.end31

if.end31:                                         ; preds = %if.end24
  call fastcc void @le_copy(i8* noundef nonnull %3, i8* noundef nonnull %0, i64 noundef 8) #7
  %call38 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 411, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef 8, i8* noundef nonnull %arraydecay9, i64 noundef 8) #5
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %cleanup, label %if.end41

if.end41:                                         ; preds = %if.end31
  store i64* %out, i64** %12, align 8, !tbaa !8
  %call47 = call fastcc i32 @test_param_type_extra(%struct.ossl_param_st* noundef nonnull %param, i8* noundef nonnull %arraydecay9, i64 noundef 8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end24, %if.end, %entry, %if.end41
  %retval.0 = phi i32 [ %call47, %if.end41 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end24 ], [ 0, %if.end31 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_param_int64(i32 noundef %n) #0 {
entry:
  %in = alloca i64, align 8
  %out = alloca i64, align 8
  %buf = alloca [20 x i8], align 16
  %cmp = alloca [8 x i8], align 1
  %param = alloca %struct.ossl_param_st, align 8
  %0 = bitcast i64* %in to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %1 = bitcast i64* %out to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  %2 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %2) #6
  %3 = getelementptr inbounds [8 x i8], [8 x i8]* %cmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6
  %idxprom = sext i32 %n to i64
  %len1 = getelementptr inbounds [14 x %struct.anon], [14 x %struct.anon]* bitcast (<{ { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, %struct.anon, %struct.anon }>* @raw_values to [14 x %struct.anon]*), i64 0, i64 %idxprom, i32 0
  %4 = load i64, i64* %len1, align 16, !tbaa !3
  %5 = bitcast %struct.ossl_param_st* %param to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #6
  %6 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 1
  %7 = bitcast i32* %6 to i64*
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i8** %8, align 8
  %9 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 1
  store i32 1, i32* %9, align 8
  %10 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 3
  %11 = bitcast i64* %10 to <2 x i64>*
  store <2 x i64> <i64 8, i64 -1>, <2 x i64>* %11, align 8
  %call = call i8* @memset(i8* noundef nonnull %2, i32 noundef 0, i64 noundef 20) #5
  %arraydecay9 = getelementptr inbounds [14 x %struct.anon], [14 x %struct.anon]* bitcast (<{ { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, %struct.anon, %struct.anon }>* @raw_values to [14 x %struct.anon]*), i64 0, i64 %idxprom, i32 1, i64 0
  call fastcc void @le_copy(i8* noundef nonnull %2, i8* noundef nonnull %arraydecay9, i64 noundef 8) #7
  %call11 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef nonnull %2, i64 noundef 8) #5
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 2
  %12 = bitcast i8** %data to i64**
  store i64* %out, i64** %12, align 8, !tbaa !8
  %13 = load i64, i64* %in, align 8, !tbaa !13
  %call12 = call i32 @OSSL_PARAM_set_int64(%struct.ossl_param_st* noundef nonnull %param, i64 noundef %13) #5
  %cmp13 = icmp ne i32 %call12, 0
  %conv = zext i1 %cmp13 to i32
  %call14 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 321, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.47, i64 0, i64 0), i32 noundef %conv) #5
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp2.inv = icmp ult i64 %4, 8
  %spec.select = select i1 %cmp2.inv, i64 %4, i64 8
  call fastcc void @le_copy(i8* noundef nonnull %3, i8* noundef nonnull %1, i64 noundef 8) #7
  %call21 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 324, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef %spec.select, i8* noundef nonnull %arraydecay9, i64 noundef %spec.select) #5
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end
  store i64 0, i64* %in, align 8, !tbaa !13
  %call25 = call i32 @OSSL_PARAM_get_int64(%struct.ossl_param_st* noundef nonnull %param, i64* noundef nonnull %in) #5
  %cmp26 = icmp ne i32 %call25, 0
  %conv27 = zext i1 %cmp26 to i32
  %call28 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 327, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.48, i64 0, i64 0), i32 noundef %conv27) #5
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %cleanup, label %if.end31

if.end31:                                         ; preds = %if.end24
  call fastcc void @le_copy(i8* noundef nonnull %3, i8* noundef nonnull %0, i64 noundef 8) #7
  %call38 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 330, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef 8, i8* noundef nonnull %arraydecay9, i64 noundef 8) #5
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %cleanup, label %if.end41

if.end41:                                         ; preds = %if.end31
  store i64* %out, i64** %12, align 8, !tbaa !8
  %call47 = call fastcc i32 @test_param_type_extra(%struct.ossl_param_st* noundef nonnull %param, i8* noundef nonnull %arraydecay9, i64 noundef 8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end24, %if.end, %entry, %if.end41
  %retval.0 = phi i32 [ %call47, %if.end41 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end24 ], [ 0, %if.end31 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_param_uint64(i32 noundef %n) #0 {
entry:
  %in = alloca i64, align 8
  %out = alloca i64, align 8
  %buf = alloca [20 x i8], align 16
  %cmp = alloca [8 x i8], align 1
  %param = alloca %struct.ossl_param_st, align 8
  %0 = bitcast i64* %in to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %1 = bitcast i64* %out to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  %2 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %2) #6
  %3 = getelementptr inbounds [8 x i8], [8 x i8]* %cmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6
  %idxprom = sext i32 %n to i64
  %len1 = getelementptr inbounds [14 x %struct.anon], [14 x %struct.anon]* bitcast (<{ { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, %struct.anon, %struct.anon }>* @raw_values to [14 x %struct.anon]*), i64 0, i64 %idxprom, i32 0
  %4 = load i64, i64* %len1, align 16, !tbaa !3
  %5 = bitcast %struct.ossl_param_st* %param to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #6
  %6 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 1
  %7 = bitcast i32* %6 to i64*
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i8** %8, align 8
  %9 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 1
  store i32 2, i32* %9, align 8
  %10 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 3
  %11 = bitcast i64* %10 to <2 x i64>*
  store <2 x i64> <i64 8, i64 -1>, <2 x i64>* %11, align 8
  %call = call i8* @memset(i8* noundef nonnull %2, i32 noundef 0, i64 noundef 20) #5
  %arraydecay9 = getelementptr inbounds [14 x %struct.anon], [14 x %struct.anon]* bitcast (<{ { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, %struct.anon, %struct.anon }>* @raw_values to [14 x %struct.anon]*), i64 0, i64 %idxprom, i32 1, i64 0
  call fastcc void @le_copy(i8* noundef nonnull %2, i8* noundef nonnull %arraydecay9, i64 noundef 8) #7
  %call11 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef nonnull %2, i64 noundef 8) #5
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 2
  %12 = bitcast i8** %data to i64**
  store i64* %out, i64** %12, align 8, !tbaa !8
  %13 = load i64, i64* %in, align 8, !tbaa !13
  %call12 = call i32 @OSSL_PARAM_set_uint64(%struct.ossl_param_st* noundef nonnull %param, i64 noundef %13) #5
  %cmp13 = icmp ne i32 %call12, 0
  %conv = zext i1 %cmp13 to i32
  %call14 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 348, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.49, i64 0, i64 0), i32 noundef %conv) #5
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp2.inv = icmp ult i64 %4, 8
  %spec.select = select i1 %cmp2.inv, i64 %4, i64 8
  call fastcc void @le_copy(i8* noundef nonnull %3, i8* noundef nonnull %1, i64 noundef 8) #7
  %call21 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 351, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef %spec.select, i8* noundef nonnull %arraydecay9, i64 noundef %spec.select) #5
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end
  store i64 0, i64* %in, align 8, !tbaa !13
  %call25 = call i32 @OSSL_PARAM_get_uint64(%struct.ossl_param_st* noundef nonnull %param, i64* noundef nonnull %in) #5
  %cmp26 = icmp ne i32 %call25, 0
  %conv27 = zext i1 %cmp26 to i32
  %call28 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 354, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.50, i64 0, i64 0), i32 noundef %conv27) #5
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %cleanup, label %if.end31

if.end31:                                         ; preds = %if.end24
  call fastcc void @le_copy(i8* noundef nonnull %3, i8* noundef nonnull %0, i64 noundef 8) #7
  %call38 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 357, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef 8, i8* noundef nonnull %arraydecay9, i64 noundef 8) #5
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %cleanup, label %if.end41

if.end41:                                         ; preds = %if.end31
  store i64* %out, i64** %12, align 8, !tbaa !8
  %call47 = call fastcc i32 @test_param_type_extra(%struct.ossl_param_st* noundef nonnull %param, i8* noundef nonnull %arraydecay9, i64 noundef 8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end24, %if.end, %entry, %if.end41
  %retval.0 = phi i32 [ %call47, %if.end41 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end24 ], [ 0, %if.end31 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_param_bignum(i32 noundef %n) #0 {
entry:
  %buf = alloca [20 x i8], align 16
  %bnbuf = alloca [20 x i8], align 16
  %c = alloca %struct.bignum_st*, align 8
  %param = alloca %struct.ossl_param_st, align 8
  %0 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %0) #6
  %1 = getelementptr inbounds [20 x i8], [20 x i8]* %bnbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %1) #6
  %idxprom = sext i32 %n to i64
  %len1 = getelementptr inbounds [14 x %struct.anon], [14 x %struct.anon]* bitcast (<{ { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, %struct.anon, %struct.anon }>* @raw_values to [14 x %struct.anon]*), i64 0, i64 %idxprom, i32 0
  %2 = load i64, i64* %len1, align 16, !tbaa !3
  %3 = bitcast %struct.bignum_st** %c to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6
  store %struct.bignum_st* null, %struct.bignum_st** %c, align 8, !tbaa !14
  %4 = bitcast %struct.ossl_param_st* %param to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #6
  %5 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 1
  %6 = bitcast i32* %5 to i64*
  store i64 0, i64* %6, align 8
  %7 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), i8** %7, align 8
  %8 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 1
  store i32 2, i32* %8, align 8
  %9 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 4
  store i64 -1, i64* %9, align 8
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 2
  store i8* %1, i8** %data, align 8, !tbaa !8
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 3
  store i64 %2, i64* %data_size, align 8, !tbaa !15
  %arraydecay5 = getelementptr inbounds [14 x %struct.anon], [14 x %struct.anon]* bitcast (<{ { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, [19 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, [18 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, [17 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, [16 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ i8, i8, i8, i8, i8, [15 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, { i64, <{ [8 x i8], [12 x i8] }> }, %struct.anon, %struct.anon }>* @raw_values to [14 x %struct.anon]*), i64 0, i64 %idxprom, i32 1, i64 0
  call fastcc void @le_copy(i8* noundef nonnull %0, i8* noundef nonnull %arraydecay5, i64 noundef %2) #7
  %conv = trunc i64 %2 to i32
  %call = call %struct.bignum_st* @BN_lebin2bn(i8* noundef nonnull %arraydecay5, i32 noundef %conv, %struct.bignum_st* noundef null) #5
  %10 = bitcast %struct.bignum_st* %call to i8*
  %call10 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 430, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.52, i64 0, i64 0), i8* noundef %10) #5
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call11 = call i32 @OSSL_PARAM_set_BN(%struct.ossl_param_st* noundef nonnull %param, %struct.bignum_st* noundef %call) #5
  %cmp = icmp ne i32 %call11, 0
  %conv12 = zext i1 %cmp to i32
  %call13 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 433, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.53, i64 0, i64 0), i32 noundef %conv12) #5
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %11 = load i64, i64* %9, align 8, !tbaa !16
  %call18 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 434, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef %11, i8* noundef nonnull %0, i64 noundef %11) #5
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %if.end21

if.end21:                                         ; preds = %lor.lhs.false
  %12 = load i64, i64* %9, align 8, !tbaa !16
  store i64 %12, i64* %data_size, align 8, !tbaa !15
  %call24 = call i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef nonnull %param, %struct.bignum_st** noundef nonnull %c) #5
  %cmp25 = icmp ne i32 %call24, 0
  %conv26 = zext i1 %cmp25 to i32
  %call27 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 437, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.55, i64 0, i64 0), i32 noundef %conv26) #5
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %if.end21
  %13 = load %struct.bignum_st*, %struct.bignum_st** %c, align 8, !tbaa !14
  %call30 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 438, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0), %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %13) #5
  %tobool31.not = icmp ne i32 %call30, 0
  %spec.select = zext i1 %tobool31.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false29, %if.end21, %if.end, %lor.lhs.false, %entry
  %ret.0 = phi i32 [ 0, %if.end21 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %lor.lhs.false29 ]
  call void @BN_free(%struct.bignum_st* noundef %call) #5
  %14 = load %struct.bignum_st*, %struct.bignum_st** %c, align 8, !tbaa !14
  call void @BN_free(%struct.bignum_st* noundef %14) #5
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %0) #6
  ret i32 %ret.0
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_param_real() #0 {
entry:
  %p = alloca double, align 8
  %param = alloca %struct.ossl_param_st, align 8
  %0 = bitcast double* %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %1 = bitcast %struct.ossl_param_st* %param to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #6
  %2 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 1
  %3 = bitcast i32* %2 to i64*
  store i64 0, i64* %3, align 8
  %4 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i8** %4, align 8
  %5 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 1
  store i32 3, i32* %5, align 8
  %6 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 3
  %7 = bitcast i64* %6 to <2 x i64>*
  store <2 x i64> <i64 8, i64 -1>, <2 x i64>* %7, align 8
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 2
  %8 = bitcast i8** %data to double**
  store double* %p, double** %8, align 8, !tbaa !8
  %call = call i32 @OSSL_PARAM_set_double(%struct.ossl_param_st* noundef nonnull %param, double noundef 3.141590e+00) #5
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 454, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.59, i64 0, i64 0), i32 noundef %conv) #5
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %9 = load double, double* %p, align 8, !tbaa !17
  %call2 = call i32 @test_double_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 455, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i64 0, i64 0), double noundef %9, double noundef 3.141590e+00) #5
  %tobool3 = icmp ne i32 %call2, 0
  %phi.cast = zext i1 %tobool3 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %10 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_param_construct(i32 noundef %tstid) #0 {
entry:
  %params = alloca [20 x %struct.ossl_param_st], align 16
  %buf = alloca [100 x i8], align 16
  %buf2 = alloca [100 x i8], align 16
  %bufp = alloca i8*, align 8
  %bufp2 = alloca i8*, align 8
  %ubuf = alloca [100 x i8], align 16
  %vp = alloca i8*, align 8
  %vpn = alloca i8*, align 8
  %vp2 = alloca i8*, align 8
  %i = alloca i32, align 4
  %u = alloca i32, align 4
  %l = alloca i64, align 8
  %ul = alloca i64, align 8
  %i32 = alloca i32, align 4
  %u32 = alloca i32, align 4
  %i64 = alloca i64, align 8
  %u64 = alloca i64, align 8
  %k = alloca i64, align 8
  %s = alloca i64, align 8
  %d = alloca double, align 8
  %d2 = alloca double, align 8
  %bn2 = alloca %struct.bignum_st*, align 8
  %tmp4 = alloca %struct.ossl_param_st, align 8
  %tmp8 = alloca %struct.ossl_param_st, align 8
  %tmp12 = alloca %struct.ossl_param_st, align 8
  %tmp16 = alloca %struct.ossl_param_st, align 8
  %tmp20 = alloca %struct.ossl_param_st, align 8
  %tmp24 = alloca %struct.ossl_param_st, align 8
  %tmp28 = alloca %struct.ossl_param_st, align 8
  %tmp32 = alloca %struct.ossl_param_st, align 8
  %tmp36 = alloca %struct.ossl_param_st, align 8
  %tmp40 = alloca %struct.ossl_param_st, align 8
  %tmp44 = alloca %struct.ossl_param_st, align 8
  %tmp49 = alloca %struct.ossl_param_st, align 8
  %tmp54 = alloca %struct.ossl_param_st, align 8
  %tmp58 = alloca %struct.ossl_param_st, align 8
  %tmp61 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [20 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 800, i8* nonnull %0) #6
  %1 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %1) #6
  %2 = getelementptr inbounds [100 x i8], [100 x i8]* %buf2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %2) #6
  %3 = bitcast i8** %bufp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6
  %4 = bitcast i8** %bufp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #6
  %5 = getelementptr inbounds [100 x i8], [100 x i8]* %ubuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %5) #6
  %6 = bitcast i8** %vp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6
  %7 = bitcast i8** %vpn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6
  store i8* null, i8** %vpn, align 8, !tbaa !14
  %8 = bitcast i8** %vp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #6
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #6
  %10 = bitcast i32* %u to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #6
  %11 = bitcast i64* %l to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #6
  %12 = bitcast i64* %ul to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #6
  %13 = bitcast i32* %i32 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #6
  %14 = bitcast i32* %u32 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #6
  %15 = bitcast i64* %i64 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #6
  %16 = bitcast i64* %u64 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #6
  %17 = bitcast i64* %k to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #6
  %18 = bitcast i64* %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #6
  %19 = bitcast double* %d to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #6
  %20 = bitcast double* %d2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20) #6
  %21 = bitcast %struct.bignum_st** %bn2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #6
  store %struct.bignum_st* null, %struct.bignum_st** %bn2, align 8, !tbaa !14
  %arrayidx = getelementptr inbounds [20 x %struct.ossl_param_st], [20 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params451 = getelementptr inbounds [20 x %struct.ossl_param_st], [20 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params451, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i64 0, i64 0), i32* noundef nonnull %i) #5
  %arrayidx3 = getelementptr inbounds [20 x %struct.ossl_param_st], [20 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %22 = bitcast %struct.ossl_param_st* %tmp4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %22) #6
  call void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32* noundef nonnull %u) #5
  %23 = bitcast %struct.ossl_param_st* %arrayidx3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %23, i8* noundef nonnull align 8 dereferenceable(40) %22, i64 40, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %22) #6
  %arrayidx7 = getelementptr inbounds [20 x %struct.ossl_param_st], [20 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %24 = bitcast %struct.ossl_param_st* %tmp8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %24) #6
  call void @OSSL_PARAM_construct_long(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i64* noundef nonnull %l) #5
  %25 = bitcast %struct.ossl_param_st* %arrayidx7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %25, i8* noundef nonnull align 8 dereferenceable(40) %24, i64 40, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %24) #6
  %arrayidx11 = getelementptr inbounds [20 x %struct.ossl_param_st], [20 x %struct.ossl_param_st]* %params, i64 0, i64 3
  %26 = bitcast %struct.ossl_param_st* %tmp12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %26) #6
  call void @OSSL_PARAM_construct_ulong(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp12, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i64 0, i64 0), i64* noundef nonnull %ul) #5
  %27 = bitcast %struct.ossl_param_st* %arrayidx11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %27, i8* noundef nonnull align 8 dereferenceable(40) %26, i64 40, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %26) #6
  %arrayidx15 = getelementptr inbounds [20 x %struct.ossl_param_st], [20 x %struct.ossl_param_st]* %params, i64 0, i64 4
  %28 = bitcast %struct.ossl_param_st* %tmp16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %28) #6
  call void @OSSL_PARAM_construct_int32(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp16, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i64 0, i64 0), i32* noundef nonnull %i32) #5
  %29 = bitcast %struct.ossl_param_st* %arrayidx15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %29, i8* noundef nonnull align 8 dereferenceable(40) %28, i64 40, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %28) #6
  %arrayidx19 = getelementptr inbounds [20 x %struct.ossl_param_st], [20 x %struct.ossl_param_st]* %params, i64 0, i64 5
  %30 = bitcast %struct.ossl_param_st* %tmp20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %30) #6
  call void @OSSL_PARAM_construct_int64(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp20, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0), i64* noundef nonnull %i64) #5
  %31 = bitcast %struct.ossl_param_st* %arrayidx19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %31, i8* noundef nonnull align 8 dereferenceable(40) %30, i64 40, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %30) #6
  %arrayidx23 = getelementptr inbounds [20 x %struct.ossl_param_st], [20 x %struct.ossl_param_st]* %params, i64 0, i64 6
  %32 = bitcast %struct.ossl_param_st* %tmp24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %32) #6
  call void @OSSL_PARAM_construct_uint32(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp24, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i64 0, i64 0), i32* noundef nonnull %u32) #5
  %33 = bitcast %struct.ossl_param_st* %arrayidx23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %33, i8* noundef nonnull align 8 dereferenceable(40) %32, i64 40, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %32) #6
  %arrayidx27 = getelementptr inbounds [20 x %struct.ossl_param_st], [20 x %struct.ossl_param_st]* %params, i64 0, i64 7
  %34 = bitcast %struct.ossl_param_st* %tmp28 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %34) #6
  call void @OSSL_PARAM_construct_uint64(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp28, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i64 0, i64 0), i64* noundef nonnull %u64) #5
  %35 = bitcast %struct.ossl_param_st* %arrayidx27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %35, i8* noundef nonnull align 8 dereferenceable(40) %34, i64 40, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %34) #6
  %arrayidx31 = getelementptr inbounds [20 x %struct.ossl_param_st], [20 x %struct.ossl_param_st]* %params, i64 0, i64 8
  %36 = bitcast %struct.ossl_param_st* %tmp32 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %36) #6
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp32, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i64 0, i64 0), i64* noundef nonnull %s) #5
  %37 = bitcast %struct.ossl_param_st* %arrayidx31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %37, i8* noundef nonnull align 8 dereferenceable(40) %36, i64 40, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %36) #6
  %arrayidx35 = getelementptr inbounds [20 x %struct.ossl_param_st], [20 x %struct.ossl_param_st]* %params, i64 0, i64 9
  %38 = bitcast %struct.ossl_param_st* %tmp36 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %38) #6
  call void @OSSL_PARAM_construct_double(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp36, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i64 0, i64 0), double* noundef nonnull %d) #5
  %39 = bitcast %struct.ossl_param_st* %arrayidx35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %39, i8* noundef nonnull align 8 dereferenceable(40) %38, i64 40, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %38) #6
  %arrayidx39 = getelementptr inbounds [20 x %struct.ossl_param_st], [20 x %struct.ossl_param_st]* %params, i64 0, i64 10
  %40 = bitcast %struct.ossl_param_st* %tmp40 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %40) #6
  call void @OSSL_PARAM_construct_BN(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp40, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i64 0, i64 0), i8* noundef nonnull %5, i64 noundef 100) #5
  %41 = bitcast %struct.ossl_param_st* %arrayidx39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %41, i8* noundef nonnull align 8 dereferenceable(40) %40, i64 40, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %40) #6
  %arrayidx43 = getelementptr inbounds [20 x %struct.ossl_param_st], [20 x %struct.ossl_param_st]* %params, i64 0, i64 11
  %42 = bitcast %struct.ossl_param_st* %tmp44 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %42) #6
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp44, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 100) #5
  %43 = bitcast %struct.ossl_param_st* %arrayidx43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %43, i8* noundef nonnull align 8 dereferenceable(40) %42, i64 40, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %42) #6
  %arrayidx48 = getelementptr inbounds [20 x %struct.ossl_param_st], [20 x %struct.ossl_param_st]* %params, i64 0, i64 12
  %44 = bitcast %struct.ossl_param_st* %tmp49 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %44) #6
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp49, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 100) #5
  %45 = bitcast %struct.ossl_param_st* %arrayidx48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %45, i8* noundef nonnull align 8 dereferenceable(40) %44, i64 40, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %44) #6
  %arrayidx53 = getelementptr inbounds [20 x %struct.ossl_param_st], [20 x %struct.ossl_param_st]* %params, i64 0, i64 13
  %46 = bitcast %struct.ossl_param_st* %tmp54 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %46) #6
  call void @OSSL_PARAM_construct_utf8_ptr(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp54, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i64 0, i64 0), i8** noundef nonnull %bufp, i64 noundef 0) #5
  %47 = bitcast %struct.ossl_param_st* %arrayidx53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %47, i8* noundef nonnull align 8 dereferenceable(40) %46, i64 40, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %46) #6
  %arrayidx57 = getelementptr inbounds [20 x %struct.ossl_param_st], [20 x %struct.ossl_param_st]* %params, i64 0, i64 14
  %48 = bitcast %struct.ossl_param_st* %tmp58 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %48) #6
  call void @OSSL_PARAM_construct_octet_ptr(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp58, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8** noundef nonnull %vp, i64 noundef 0) #5
  %49 = bitcast %struct.ossl_param_st* %arrayidx57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %49, i8* noundef nonnull align 8 dereferenceable(40) %48, i64 40, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %48) #6
  %arrayidx60 = getelementptr inbounds [20 x %struct.ossl_param_st], [20 x %struct.ossl_param_st]* %params, i64 0, i64 15
  %50 = bitcast %struct.ossl_param_st* %tmp61 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %50) #6
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp61) #5
  %51 = bitcast %struct.ossl_param_st* %arrayidx60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %51, i8* noundef nonnull align 8 dereferenceable(40) %50, i64 40, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %50) #6
  switch i32 %tstid, label %sw.default [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb63
    i32 2, label %sw.bb65
  ]

sw.bb63:                                          ; preds = %entry
  %call = call %struct.ossl_param_st* @OSSL_PARAM_merge(%struct.ossl_param_st* noundef nonnull %arrayidx, %struct.ossl_param_st* noundef getelementptr inbounds ([1 x %struct.ossl_param_st], [1 x %struct.ossl_param_st]* @test_param_construct.params_empty, i64 0, i64 0)) #5
  br label %sw.epilog

sw.bb65:                                          ; preds = %entry
  %call67 = call %struct.ossl_param_st* @OSSL_PARAM_dup(%struct.ossl_param_st* noundef nonnull %arrayidx) #5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %call69 = call %struct.ossl_param_st* @OSSL_PARAM_dup(%struct.ossl_param_st* noundef nonnull %arrayidx) #5
  %call70 = call %struct.ossl_param_st* @OSSL_PARAM_merge(%struct.ossl_param_st* noundef %call69, %struct.ossl_param_st* noundef getelementptr inbounds ([1 x %struct.ossl_param_st], [1 x %struct.ossl_param_st]* @test_param_construct.params_empty, i64 0, i64 0)) #5
  %phi.cast = bitcast %struct.ossl_param_st* %call69 to i8*
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.default, %sw.bb65, %sw.bb63
  %p1.0 = phi i8* [ %phi.cast, %sw.default ], [ null, %sw.bb65 ], [ null, %sw.bb63 ], [ null, %entry ]
  %p.0 = phi %struct.ossl_param_st* [ %call70, %sw.default ], [ %call67, %sw.bb65 ], [ %call, %sw.bb63 ], [ %arrayidx, %entry ]
  %call71 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %p.0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i64 0, i64 0)) #5
  %52 = bitcast %struct.ossl_param_st* %call71 to i8*
  %call72 = call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 525, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.77, i64 0, i64 0), i8* noundef %52) #5
  %tobool.not = icmp eq i32 %call72, 0
  br i1 %tobool.not, label %err, label %for.body

for.body:                                         ; preds = %sw.epilog, %for.inc
  %j.0443 = phi i64 [ %inc99, %for.inc ], [ 0, %sw.epilog ]
  %arrayidx73 = getelementptr inbounds [4 x i8*], [4 x i8*]* @test_param_construct.int_names, i64 0, i64 %j.0443
  %53 = load i8*, i8** %arrayidx73, align 8, !tbaa !14
  %call74 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %p.0, i8* noundef %53) #5
  %54 = bitcast %struct.ossl_param_st* %call74 to i8*
  %call75 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 530, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.79, i64 0, i64 0), i8* noundef %54) #5
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.then95, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %add = add nuw nsw i64 %j.0443, 3
  %conv = trunc i64 %add to i32
  %call77 = call i32 @OSSL_PARAM_set_int32(%struct.ossl_param_st* noundef %call74, i32 noundef %conv) #5
  %cmp78 = icmp ne i32 %call77, 0
  %conv79 = zext i1 %cmp78 to i32
  %call80 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 531, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.80, i64 0, i64 0), i32 noundef %conv79) #5
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then95, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %lor.lhs.false
  %call83 = call i32 @OSSL_PARAM_get_int64(%struct.ossl_param_st* noundef %call74, i64* noundef nonnull %i64) #5
  %cmp84 = icmp ne i32 %call83, 0
  %conv85 = zext i1 %cmp84 to i32
  %call86 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 532, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.81, i64 0, i64 0), i32 noundef %conv85) #5
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.then95, label %lor.lhs.false88

lor.lhs.false88:                                  ; preds = %lor.lhs.false82
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call74, i64 0, i32 3
  %55 = load i64, i64* %data_size, align 8, !tbaa !15
  %return_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call74, i64 0, i32 4
  %56 = load i64, i64* %return_size, align 8, !tbaa !16
  %call89 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 533, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.83, i64 0, i64 0), i64 noundef %55, i64 noundef %56) #5
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.then95, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %lor.lhs.false88
  %57 = load i64, i64* %i64, align 8, !tbaa !13
  %call93 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 534, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i64 0, i64 0), i64 noundef %57, i64 noundef %add) #5
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.then95, label %for.inc

if.then95:                                        ; preds = %lor.lhs.false91, %lor.lhs.false88, %lor.lhs.false82, %lor.lhs.false, %for.body
  %add96 = add nuw nsw i64 %j.0443, 1
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.85, i64 0, i64 0), i64 noundef %add96, i8* noundef %53) #5
  br label %err

for.inc:                                          ; preds = %lor.lhs.false91
  %inc99 = add nuw nsw i64 %j.0443, 1
  %exitcond.not = icmp eq i64 %inc99, 4
  br i1 %exitcond.not, label %for.body103, label %for.body, !llvm.loop !20

for.body103:                                      ; preds = %for.inc, %for.inc135
  %j.1444 = phi i64 [ %inc136, %for.inc135 ], [ 0, %for.inc ]
  %arrayidx104 = getelementptr inbounds [5 x i8*], [5 x i8*]* @test_param_construct.uint_names, i64 0, i64 %j.1444
  %58 = load i8*, i8** %arrayidx104, align 8, !tbaa !14
  %call105 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %p.0, i8* noundef %58) #5
  %59 = bitcast %struct.ossl_param_st* %call105 to i8*
  %call106 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 541, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.86, i64 0, i64 0), i8* noundef %59) #5
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.then131, label %lor.lhs.false108

lor.lhs.false108:                                 ; preds = %for.body103
  %add109 = add nuw nsw i64 %j.1444, 3
  %conv110 = trunc i64 %add109 to i32
  %call111 = call i32 @OSSL_PARAM_set_uint32(%struct.ossl_param_st* noundef %call105, i32 noundef %conv110) #5
  %cmp112 = icmp ne i32 %call111, 0
  %conv113 = zext i1 %cmp112 to i32
  %call114 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 542, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.87, i64 0, i64 0), i32 noundef %conv113) #5
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.then131, label %lor.lhs.false116

lor.lhs.false116:                                 ; preds = %lor.lhs.false108
  %call117 = call i32 @OSSL_PARAM_get_uint64(%struct.ossl_param_st* noundef %call105, i64* noundef nonnull %u64) #5
  %cmp118 = icmp ne i32 %call117, 0
  %conv119 = zext i1 %cmp118 to i32
  %call120 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 543, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.88, i64 0, i64 0), i32 noundef %conv119) #5
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.then131, label %lor.lhs.false122

lor.lhs.false122:                                 ; preds = %lor.lhs.false116
  %data_size123 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call105, i64 0, i32 3
  %60 = load i64, i64* %data_size123, align 8, !tbaa !15
  %return_size124 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call105, i64 0, i32 4
  %61 = load i64, i64* %return_size124, align 8, !tbaa !16
  %call125 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 544, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.83, i64 0, i64 0), i64 noundef %60, i64 noundef %61) #5
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.then131, label %lor.lhs.false127

lor.lhs.false127:                                 ; preds = %lor.lhs.false122
  %62 = load i64, i64* %u64, align 8, !tbaa !13
  %call129 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 545, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.89, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i64 0, i64 0), i64 noundef %62, i64 noundef %add109) #5
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.then131, label %for.inc135

if.then131:                                       ; preds = %lor.lhs.false127, %lor.lhs.false122, %lor.lhs.false116, %lor.lhs.false108, %for.body103
  %add132 = add nuw nsw i64 %j.1444, 1
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.85, i64 0, i64 0), i64 noundef %add132, i8* noundef %58) #5
  br label %err

for.inc135:                                       ; preds = %lor.lhs.false127
  %inc136 = add nuw nsw i64 %j.1444, 1
  %exitcond450.not = icmp eq i64 %inc136, 5
  br i1 %exitcond450.not, label %for.end137, label %for.body103, !llvm.loop !22

for.end137:                                       ; preds = %for.inc135
  %call138 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %p.0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i64 0, i64 0)) #5
  %63 = bitcast %struct.ossl_param_st* %call138 to i8*
  %call139 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 551, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.90, i64 0, i64 0), i8* noundef %63) #5
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %err, label %lor.lhs.false141

lor.lhs.false141:                                 ; preds = %for.end137
  %call142 = call i32 @OSSL_PARAM_set_double(%struct.ossl_param_st* noundef %call138, double noundef 3.140000e+00) #5
  %cmp143 = icmp ne i32 %call142, 0
  %conv144 = zext i1 %cmp143 to i32
  %call145 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 552, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.91, i64 0, i64 0), i32 noundef %conv144) #5
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %err, label %lor.lhs.false147

lor.lhs.false147:                                 ; preds = %lor.lhs.false141
  %call148 = call i32 @OSSL_PARAM_get_double(%struct.ossl_param_st* noundef %call138, double* noundef nonnull %d2) #5
  %cmp149 = icmp ne i32 %call148, 0
  %conv150 = zext i1 %cmp149 to i32
  %call151 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 553, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.92, i64 0, i64 0), i32 noundef %conv150) #5
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %err, label %lor.lhs.false153

lor.lhs.false153:                                 ; preds = %lor.lhs.false147
  %return_size154 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call138, i64 0, i32 4
  %64 = load i64, i64* %return_size154, align 8, !tbaa !16
  %call155 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 554, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.83, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.93, i64 0, i64 0), i64 noundef %64, i64 noundef 8) #5
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %err, label %lor.lhs.false157

lor.lhs.false157:                                 ; preds = %lor.lhs.false153
  %65 = load double, double* %d2, align 8, !tbaa !17
  %call158 = call i32 @test_double_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 555, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i64 0, i64 0), double noundef %65, double noundef 3.140000e+00) #5
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %err, label %lor.lhs.false160

lor.lhs.false160:                                 ; preds = %lor.lhs.false157
  %cmp161 = icmp slt i32 %tstid, 2
  br i1 %cmp161, label %land.lhs.true, label %if.end166

land.lhs.true:                                    ; preds = %lor.lhs.false160
  %66 = load double, double* %d, align 8, !tbaa !17
  %67 = load double, double* %d2, align 8, !tbaa !17
  %call163 = call i32 @test_double_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 556, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.96, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i64 0, i64 0), double noundef %66, double noundef %67) #5
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %err, label %if.end166

if.end166:                                        ; preds = %land.lhs.true, %lor.lhs.false160
  store i8* null, i8** %bufp, align 8, !tbaa !14
  %call167 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %p.0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i64 0, i64 0)) #5
  %68 = bitcast %struct.ossl_param_st* %call167 to i8*
  %call168 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 560, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.97, i64 0, i64 0), i8* noundef %68) #5
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %if.then189, label %lor.lhs.false170

lor.lhs.false170:                                 ; preds = %if.end166
  %call171 = call i32 @OSSL_PARAM_set_utf8_string(%struct.ossl_param_st* noundef %call167, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.99, i64 0, i64 0)) #5
  %cmp172 = icmp ne i32 %call171, 0
  %conv173 = zext i1 %cmp172 to i32
  %call174 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 561, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.98, i64 0, i64 0), i32 noundef %conv173) #5
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %if.then189, label %lor.lhs.false176

lor.lhs.false176:                                 ; preds = %lor.lhs.false170
  %return_size177 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call167, i64 0, i32 4
  %69 = load i64, i64* %return_size177, align 8, !tbaa !16
  %call178 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 562, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.83, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.100, i64 0, i64 0), i64 noundef %69, i64 noundef 6) #5
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %if.then189, label %lor.lhs.false180

lor.lhs.false180:                                 ; preds = %lor.lhs.false176
  %call181 = call i32 @OSSL_PARAM_get_utf8_string(%struct.ossl_param_st* noundef nonnull %call167, i8** noundef nonnull %bufp, i64 noundef 0) #5
  %cmp182 = icmp ne i32 %call181, 0
  %conv183 = zext i1 %cmp182 to i32
  %call184 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 563, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.101, i64 0, i64 0), i32 noundef %conv183) #5
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %if.then189, label %lor.lhs.false186

lor.lhs.false186:                                 ; preds = %lor.lhs.false180
  %70 = load i8*, i8** %bufp, align 8, !tbaa !14
  %call187 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 564, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.103, i64 0, i64 0), i8* noundef %70, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.99, i64 0, i64 0)) #5
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %if.then189, label %if.end190

if.then189:                                       ; preds = %lor.lhs.false186, %lor.lhs.false180, %lor.lhs.false176, %lor.lhs.false170, %if.end166
  %71 = load i8*, i8** %bufp, align 8, !tbaa !14
  call void @CRYPTO_free(i8* noundef %71, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 565) #5
  br label %err

if.end190:                                        ; preds = %lor.lhs.false186
  %72 = load i8*, i8** %bufp, align 8, !tbaa !14
  call void @CRYPTO_free(i8* noundef %72, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 568) #5
  store i8* %2, i8** %bufp, align 8, !tbaa !14
  %call192 = call i32 @OSSL_PARAM_get_utf8_string(%struct.ossl_param_st* noundef nonnull %call167, i8** noundef nonnull %bufp, i64 noundef 100) #5
  %cmp193 = icmp ne i32 %call192, 0
  %conv194 = zext i1 %cmp193 to i32
  %call195 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 570, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.104, i64 0, i64 0), i32 noundef %conv194) #5
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %err, label %lor.lhs.false197

lor.lhs.false197:                                 ; preds = %if.end190
  %call199 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 571, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.103, i64 0, i64 0), i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.99, i64 0, i64 0)) #5
  %tobool200.not = icmp eq i32 %call199, 0
  br i1 %tobool200.not, label %err, label %if.end202

if.end202:                                        ; preds = %lor.lhs.false197
  store i8* %1, i8** %bufp, align 8, !tbaa !14
  %call204 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %p.0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i64 0, i64 0)) #5
  %73 = bitcast %struct.ossl_param_st* %call204 to i8*
  %call205 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 576, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.106, i64 0, i64 0), i8* noundef %73) #5
  %tobool206.not = icmp eq i32 %call205, 0
  br i1 %tobool206.not, label %err, label %lor.lhs.false207

lor.lhs.false207:                                 ; preds = %if.end202
  %call208 = call i32 @OSSL_PARAM_set_utf8_ptr(%struct.ossl_param_st* noundef %call204, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.108, i64 0, i64 0)) #5
  %cmp209 = icmp ne i32 %call208, 0
  %conv210 = zext i1 %cmp209 to i32
  %call211 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 577, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.107, i64 0, i64 0), i32 noundef %conv210) #5
  %tobool212.not = icmp eq i32 %call211, 0
  br i1 %tobool212.not, label %err, label %lor.lhs.false213

lor.lhs.false213:                                 ; preds = %lor.lhs.false207
  %return_size214 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call204, i64 0, i32 4
  %74 = load i64, i64* %return_size214, align 8, !tbaa !16
  %call215 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 578, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.83, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.109, i64 0, i64 0), i64 noundef %74, i64 noundef 7) #5
  %tobool216.not = icmp eq i32 %call215, 0
  br i1 %tobool216.not, label %err, label %lor.lhs.false217

lor.lhs.false217:                                 ; preds = %lor.lhs.false213
  %call218 = call i32 @OSSL_PARAM_get_utf8_ptr(%struct.ossl_param_st* noundef nonnull %call204, i8** noundef nonnull %bufp2) #5
  %cmp219 = icmp ne i32 %call218, 0
  %conv220 = zext i1 %cmp219 to i32
  %call221 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 579, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.110, i64 0, i64 0), i32 noundef %conv220) #5
  %tobool222.not = icmp eq i32 %call221, 0
  br i1 %tobool222.not, label %err, label %lor.lhs.false223

lor.lhs.false223:                                 ; preds = %lor.lhs.false217
  %75 = load i8*, i8** %bufp2, align 8, !tbaa !14
  %call224 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 580, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.111, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.112, i64 0, i64 0), i8* noundef %75, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.108, i64 0, i64 0)) #5
  %tobool225.not = icmp eq i32 %call224, 0
  br i1 %tobool225.not, label %err, label %lor.lhs.false226

lor.lhs.false226:                                 ; preds = %lor.lhs.false223
  br i1 %cmp161, label %land.lhs.true229, label %if.end233

land.lhs.true229:                                 ; preds = %lor.lhs.false226
  %76 = load i8*, i8** %bufp2, align 8, !tbaa !14
  %77 = load i8*, i8** %bufp, align 8, !tbaa !14
  %call230 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 581, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.111, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.102, i64 0, i64 0), i8* noundef %76, i8* noundef %77) #5
  %tobool231.not = icmp eq i32 %call230, 0
  br i1 %tobool231.not, label %err, label %if.end233

if.end233:                                        ; preds = %land.lhs.true229, %lor.lhs.false226
  %call234 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %p.0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i64 0, i64 0)) #5
  %78 = bitcast %struct.ossl_param_st* %call234 to i8*
  %call235 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 584, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.113, i64 0, i64 0), i8* noundef %78) #5
  %tobool236.not = icmp eq i32 %call235, 0
  br i1 %tobool236.not, label %err, label %lor.lhs.false237

lor.lhs.false237:                                 ; preds = %if.end233
  %call238 = call i32 @OSSL_PARAM_set_octet_string(%struct.ossl_param_st* noundef %call234, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.115, i64 0, i64 0), i64 noundef 10) #5
  %cmp239 = icmp ne i32 %call238, 0
  %conv240 = zext i1 %cmp239 to i32
  %call241 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 586, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.114, i64 0, i64 0), i32 noundef %conv240) #5
  %tobool242.not = icmp eq i32 %call241, 0
  br i1 %tobool242.not, label %err, label %lor.lhs.false243

lor.lhs.false243:                                 ; preds = %lor.lhs.false237
  %return_size244 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call234, i64 0, i32 4
  %79 = load i64, i64* %return_size244, align 8, !tbaa !16
  %call245 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 587, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.83, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.116, i64 0, i64 0), i64 noundef %79, i64 noundef 10) #5
  %tobool246.not = icmp eq i32 %call245, 0
  br i1 %tobool246.not, label %err, label %if.end248

if.end248:                                        ; preds = %lor.lhs.false243
  %80 = load i64, i64* %return_size244, align 8, !tbaa !16
  %data_size250 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call234, i64 0, i32 3
  store i64 %80, i64* %data_size250, align 8, !tbaa !15
  %call251 = call i32 @OSSL_PARAM_get_octet_string(%struct.ossl_param_st* noundef nonnull %call234, i8** noundef nonnull %vpn, i64 noundef 0, i64* noundef nonnull %s) #5
  %cmp252 = icmp ne i32 %call251, 0
  %conv253 = zext i1 %cmp252 to i32
  %call254 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 591, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.117, i64 0, i64 0), i32 noundef %conv253) #5
  %tobool255.not = icmp eq i32 %call254, 0
  br i1 %tobool255.not, label %err, label %lor.lhs.false256

lor.lhs.false256:                                 ; preds = %if.end248
  %81 = load i64, i64* %s, align 8, !tbaa !13
  %call257 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 592, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.118, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.116, i64 0, i64 0), i64 noundef %81, i64 noundef 10) #5
  %tobool258.not = icmp eq i32 %call257, 0
  br i1 %tobool258.not, label %err, label %lor.lhs.false259

lor.lhs.false259:                                 ; preds = %lor.lhs.false256
  %82 = load i8*, i8** %vpn, align 8, !tbaa !14
  %call260 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 594, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.119, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.120, i64 0, i64 0), i8* noundef %82, i64 noundef 10, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.115, i64 0, i64 0), i64 noundef 10) #5
  %tobool261.not = icmp eq i32 %call260, 0
  br i1 %tobool261.not, label %err, label %if.end263

if.end263:                                        ; preds = %lor.lhs.false259
  store i8* %2, i8** %vp, align 8, !tbaa !14
  %call265 = call i32 @OSSL_PARAM_get_octet_string(%struct.ossl_param_st* noundef nonnull %call234, i8** noundef nonnull %vp, i64 noundef 100, i64* noundef nonnull %s) #5
  %cmp266 = icmp ne i32 %call265, 0
  %conv267 = zext i1 %cmp266 to i32
  %call268 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 597, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.121, i64 0, i64 0), i32 noundef %conv267) #5
  %tobool269.not = icmp eq i32 %call268, 0
  br i1 %tobool269.not, label %err, label %lor.lhs.false270

lor.lhs.false270:                                 ; preds = %if.end263
  %83 = load i64, i64* %s, align 8, !tbaa !13
  %call271 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 598, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.118, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.116, i64 0, i64 0), i64 noundef %83, i64 noundef 10) #5
  %tobool272.not = icmp eq i32 %call271, 0
  br i1 %tobool272.not, label %err, label %lor.lhs.false273

lor.lhs.false273:                                 ; preds = %lor.lhs.false270
  %84 = load i8*, i8** %vp, align 8, !tbaa !14
  %call274 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 600, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.122, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.120, i64 0, i64 0), i8* noundef %84, i64 noundef 10, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.115, i64 0, i64 0), i64 noundef 10) #5
  %tobool275.not = icmp eq i32 %call274, 0
  br i1 %tobool275.not, label %err, label %if.end277

if.end277:                                        ; preds = %lor.lhs.false273
  %85 = bitcast i8** %vp to i64**
  store i64* %l, i64** %85, align 8, !tbaa !14
  %call278 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %p.0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0)) #5
  %86 = bitcast %struct.ossl_param_st* %call278 to i8*
  %call279 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 604, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.123, i64 0, i64 0), i8* noundef %86) #5
  %tobool280.not = icmp eq i32 %call279, 0
  br i1 %tobool280.not, label %err, label %lor.lhs.false281

lor.lhs.false281:                                 ; preds = %if.end277
  %call282 = call i32 @OSSL_PARAM_set_octet_ptr(%struct.ossl_param_st* noundef %call278, i8* noundef nonnull %12, i64 noundef 8) #5
  %cmp283 = icmp ne i32 %call282, 0
  %conv284 = zext i1 %cmp283 to i32
  %call285 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 605, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.124, i64 0, i64 0), i32 noundef %conv284) #5
  %tobool286.not = icmp eq i32 %call285, 0
  br i1 %tobool286.not, label %err, label %lor.lhs.false287

lor.lhs.false287:                                 ; preds = %lor.lhs.false281
  %return_size288 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call278, i64 0, i32 4
  %87 = load i64, i64* %return_size288, align 8, !tbaa !16
  %call289 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 606, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.83, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.125, i64 0, i64 0), i64 noundef %87, i64 noundef 8) #5
  %tobool290.not = icmp eq i32 %call289, 0
  br i1 %tobool290.not, label %err, label %lor.lhs.false291

lor.lhs.false291:                                 ; preds = %lor.lhs.false287
  br i1 %cmp161, label %land.lhs.true294, label %if.end298

land.lhs.true294:                                 ; preds = %lor.lhs.false291
  %88 = load i8*, i8** %vp, align 8, !tbaa !14
  %call295 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 607, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.122, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.126, i64 0, i64 0), i8* noundef %88, i8* noundef nonnull %12) #5
  %tobool296.not = icmp eq i32 %call295, 0
  br i1 %tobool296.not, label %err, label %if.end298

if.end298:                                        ; preds = %land.lhs.true294, %lor.lhs.false291
  %89 = load i64, i64* %return_size288, align 8, !tbaa !16
  %data_size300 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call278, i64 0, i32 3
  store i64 %89, i64* %data_size300, align 8, !tbaa !15
  %call301 = call i32 @OSSL_PARAM_get_octet_ptr(%struct.ossl_param_st* noundef nonnull %call278, i8** noundef nonnull %vp2, i64* noundef nonnull %k) #5
  %cmp302 = icmp ne i32 %call301, 0
  %conv303 = zext i1 %cmp302 to i32
  %call304 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 611, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.127, i64 0, i64 0), i32 noundef %conv303) #5
  %tobool305.not = icmp eq i32 %call304, 0
  br i1 %tobool305.not, label %err, label %lor.lhs.false306

lor.lhs.false306:                                 ; preds = %if.end298
  %90 = load i64, i64* %k, align 8, !tbaa !13
  %call307 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 612, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.128, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.125, i64 0, i64 0), i64 noundef %90, i64 noundef 8) #5
  %tobool308.not = icmp eq i32 %call307, 0
  br i1 %tobool308.not, label %err, label %lor.lhs.false309

lor.lhs.false309:                                 ; preds = %lor.lhs.false306
  br i1 %cmp161, label %land.lhs.true312, label %if.end316

land.lhs.true312:                                 ; preds = %lor.lhs.false309
  %91 = load i8*, i8** %vp2, align 8, !tbaa !14
  %92 = load i8*, i8** %vp, align 8, !tbaa !14
  %call313 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 613, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.122, i64 0, i64 0), i8* noundef %91, i8* noundef %92) #5
  %tobool314.not = icmp eq i32 %call313, 0
  br i1 %tobool314.not, label %err, label %if.end316

if.end316:                                        ; preds = %land.lhs.true312, %lor.lhs.false309
  %call317 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %p.0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i64 0, i64 0)) #5
  %93 = bitcast %struct.ossl_param_st* %call317 to i8*
  %call318 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 616, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.130, i64 0, i64 0), i8* noundef %93) #5
  %tobool319.not = icmp eq i32 %call318, 0
  br i1 %tobool319.not, label %err, label %lor.lhs.false320

lor.lhs.false320:                                 ; preds = %if.end316
  %call321 = call %struct.bignum_st* @BN_lebin2bn(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @test_param_construct.bn_val, i64 0, i64 0), i32 noundef 16, %struct.bignum_st* noundef null) #5
  %94 = bitcast %struct.bignum_st* %call321 to i8*
  %call322 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 617, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.131, i64 0, i64 0), i8* noundef %94) #5
  %tobool323.not = icmp eq i32 %call322, 0
  br i1 %tobool323.not, label %err, label %lor.lhs.false324

lor.lhs.false324:                                 ; preds = %lor.lhs.false320
  %call325 = call i32 @OSSL_PARAM_set_BN(%struct.ossl_param_st* noundef %call317, %struct.bignum_st* noundef %call321) #5
  %cmp326 = icmp ne i32 %call325, 0
  %conv327 = zext i1 %cmp326 to i32
  %call328 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 618, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.132, i64 0, i64 0), i32 noundef %conv327) #5
  %tobool329.not = icmp eq i32 %call328, 0
  br i1 %tobool329.not, label %err, label %lor.lhs.false330

lor.lhs.false330:                                 ; preds = %lor.lhs.false324
  %data_size331 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call317, i64 0, i32 3
  %95 = load i64, i64* %data_size331, align 8, !tbaa !15
  %return_size332 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call317, i64 0, i32 4
  %96 = load i64, i64* %return_size332, align 8, !tbaa !16
  %call333 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 619, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.83, i64 0, i64 0), i64 noundef %95, i64 noundef %96) #5
  %tobool334.not = icmp eq i32 %call333, 0
  br i1 %tobool334.not, label %err, label %if.end336

if.end336:                                        ; preds = %lor.lhs.false330
  %97 = load i64, i64* %return_size332, align 8, !tbaa !16
  store i64 %97, i64* %data_size331, align 8, !tbaa !15
  %call339 = call i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef nonnull %call317, %struct.bignum_st** noundef nonnull %bn2) #5
  %cmp340 = icmp ne i32 %call339, 0
  %conv341 = zext i1 %cmp340 to i32
  %call342 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 623, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.133, i64 0, i64 0), i32 noundef %conv341) #5
  %tobool343.not = icmp eq i32 %call342, 0
  br i1 %tobool343.not, label %err, label %lor.lhs.false344

lor.lhs.false344:                                 ; preds = %if.end336
  %98 = load %struct.bignum_st*, %struct.bignum_st** %bn2, align 8, !tbaa !14
  %call345 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 624, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.134, i64 0, i64 0), %struct.bignum_st* noundef %call321, %struct.bignum_st* noundef %98) #5
  %tobool346.not = icmp ne i32 %call345, 0
  %spec.select = zext i1 %tobool346.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false344, %if.end336, %if.end316, %lor.lhs.false320, %lor.lhs.false324, %lor.lhs.false330, %if.end298, %lor.lhs.false306, %land.lhs.true312, %if.end277, %lor.lhs.false281, %lor.lhs.false287, %land.lhs.true294, %if.end263, %lor.lhs.false270, %lor.lhs.false273, %if.end248, %lor.lhs.false256, %lor.lhs.false259, %if.end233, %lor.lhs.false237, %lor.lhs.false243, %if.end202, %lor.lhs.false207, %lor.lhs.false213, %lor.lhs.false217, %lor.lhs.false223, %land.lhs.true229, %if.end190, %lor.lhs.false197, %for.end137, %lor.lhs.false141, %lor.lhs.false147, %lor.lhs.false153, %lor.lhs.false157, %land.lhs.true, %sw.epilog, %if.then189, %if.then131, %if.then95
  %ret.0 = phi i32 [ 0, %if.then95 ], [ 0, %if.then131 ], [ 0, %if.end336 ], [ 0, %lor.lhs.false330 ], [ 0, %lor.lhs.false324 ], [ 0, %lor.lhs.false320 ], [ 0, %if.end316 ], [ 0, %land.lhs.true312 ], [ 0, %lor.lhs.false306 ], [ 0, %if.end298 ], [ 0, %land.lhs.true294 ], [ 0, %lor.lhs.false287 ], [ 0, %lor.lhs.false281 ], [ 0, %if.end277 ], [ 0, %lor.lhs.false273 ], [ 0, %lor.lhs.false270 ], [ 0, %if.end263 ], [ 0, %lor.lhs.false259 ], [ 0, %lor.lhs.false256 ], [ 0, %if.end248 ], [ 0, %lor.lhs.false243 ], [ 0, %lor.lhs.false237 ], [ 0, %if.end233 ], [ 0, %land.lhs.true229 ], [ 0, %lor.lhs.false223 ], [ 0, %lor.lhs.false217 ], [ 0, %lor.lhs.false213 ], [ 0, %lor.lhs.false207 ], [ 0, %if.end202 ], [ 0, %lor.lhs.false197 ], [ 0, %if.end190 ], [ 0, %if.then189 ], [ 0, %land.lhs.true ], [ 0, %lor.lhs.false157 ], [ 0, %lor.lhs.false153 ], [ 0, %lor.lhs.false147 ], [ 0, %lor.lhs.false141 ], [ 0, %for.end137 ], [ 0, %sw.epilog ], [ %spec.select, %lor.lhs.false344 ]
  %bn.0 = phi %struct.bignum_st* [ null, %if.then95 ], [ null, %if.then131 ], [ %call321, %if.end336 ], [ %call321, %lor.lhs.false330 ], [ %call321, %lor.lhs.false324 ], [ %call321, %lor.lhs.false320 ], [ null, %if.end316 ], [ null, %land.lhs.true312 ], [ null, %lor.lhs.false306 ], [ null, %if.end298 ], [ null, %land.lhs.true294 ], [ null, %lor.lhs.false287 ], [ null, %lor.lhs.false281 ], [ null, %if.end277 ], [ null, %lor.lhs.false273 ], [ null, %lor.lhs.false270 ], [ null, %if.end263 ], [ null, %lor.lhs.false259 ], [ null, %lor.lhs.false256 ], [ null, %if.end248 ], [ null, %lor.lhs.false243 ], [ null, %lor.lhs.false237 ], [ null, %if.end233 ], [ null, %land.lhs.true229 ], [ null, %lor.lhs.false223 ], [ null, %lor.lhs.false217 ], [ null, %lor.lhs.false213 ], [ null, %lor.lhs.false207 ], [ null, %if.end202 ], [ null, %lor.lhs.false197 ], [ null, %if.end190 ], [ null, %if.then189 ], [ null, %land.lhs.true ], [ null, %lor.lhs.false157 ], [ null, %lor.lhs.false153 ], [ null, %lor.lhs.false147 ], [ null, %lor.lhs.false141 ], [ null, %for.end137 ], [ null, %sw.epilog ], [ %call321, %lor.lhs.false344 ]
  %cmp350.not = icmp eq %struct.ossl_param_st* %p.0, %arrayidx
  br i1 %cmp350.not, label %if.end353, label %if.then352

if.then352:                                       ; preds = %err
  %99 = bitcast %struct.ossl_param_st* %p.0 to i8*
  call void @CRYPTO_free(i8* noundef %99, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 629) #5
  br label %if.end353

if.end353:                                        ; preds = %if.then352, %err
  call void @CRYPTO_free(i8* noundef %p1.0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 630) #5
  %100 = load i8*, i8** %vpn, align 8, !tbaa !14
  call void @CRYPTO_free(i8* noundef %100, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 631) #5
  call void @BN_free(%struct.bignum_st* noundef %bn.0) #5
  %101 = load %struct.bignum_st*, %struct.bignum_st** %bn2, align 8, !tbaa !14
  call void @BN_free(%struct.bignum_st* noundef %101) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %5) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 800, i8* nonnull %0) #6
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_param_modified() #0 {
entry:
  %param = alloca [3 x %struct.ossl_param_st], align 16
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %0 = bitcast [3 x %struct.ossl_param_st]* %param to i8*
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %0) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(120) %0, i8* noundef nonnull align 16 dereferenceable(120) bitcast ([3 x %struct.ossl_param_st]* @__const.test_param_modified.param to i8*), i64 120, i1 false)
  %1 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #6
  %2 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #6
  %arraydecay = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %param, i64 0, i64 0
  %data = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %param, i64 0, i64 0, i32 2
  %3 = bitcast i8** %data to i32**
  store i32* %a, i32** %3, align 16, !tbaa !8
  %data1 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %param, i64 0, i64 1, i32 2
  %4 = bitcast i8** %data1 to i32**
  store i32* %b, i32** %4, align 8, !tbaa !8
  %call = call i32 @OSSL_PARAM_modified(%struct.ossl_param_st* noundef nonnull %arraydecay) #5
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call3 = call i32 @test_false(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 646, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv) #5
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call5 = call i32 @OSSL_PARAM_set_int32(%struct.ossl_param_st* noundef nonnull %arraydecay, i32 noundef 1234) #5
  %cmp6 = icmp ne i32 %call5, 0
  %conv7 = zext i1 %cmp6 to i32
  %call8 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 647, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.135, i64 0, i64 0), i32 noundef %conv7) #5
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true10, label %if.end

land.lhs.true10:                                  ; preds = %land.lhs.true
  %call12 = call i32 @OSSL_PARAM_modified(%struct.ossl_param_st* noundef nonnull %arraydecay) #5
  %cmp13 = icmp ne i32 %call12, 0
  %conv14 = zext i1 %cmp13 to i32
  %call15 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 648, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv14) #5
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true17, label %if.end

land.lhs.true17:                                  ; preds = %land.lhs.true10
  %add.ptr = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %param, i64 0, i64 1
  %call19 = call i32 @OSSL_PARAM_modified(%struct.ossl_param_st* noundef nonnull %add.ptr) #5
  %cmp20 = icmp ne i32 %call19, 0
  %conv21 = zext i1 %cmp20 to i32
  %call22 = call i32 @test_false(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 649, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.136, i64 0, i64 0), i32 noundef %conv21) #5
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true24, label %if.end

land.lhs.true24:                                  ; preds = %land.lhs.true17
  %call27 = call i32 @OSSL_PARAM_set_int32(%struct.ossl_param_st* noundef nonnull %add.ptr, i32 noundef 1) #5
  %cmp28 = icmp ne i32 %call27, 0
  %conv29 = zext i1 %cmp28 to i32
  %call30 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 650, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.137, i64 0, i64 0), i32 noundef %conv29) #5
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true32, label %if.end

land.lhs.true32:                                  ; preds = %land.lhs.true24
  %call35 = call i32 @OSSL_PARAM_modified(%struct.ossl_param_st* noundef nonnull %add.ptr) #5
  %cmp36 = icmp ne i32 %call35, 0
  %conv37 = zext i1 %cmp36 to i32
  %call38 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 651, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.136, i64 0, i64 0), i32 noundef %conv37) #5
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true32, %land.lhs.true24, %land.lhs.true17, %land.lhs.true10, %land.lhs.true, %entry
  call void @OSSL_PARAM_set_all_unmodified(%struct.ossl_param_st* noundef nonnull %arraydecay) #5
  %call42 = call i32 @OSSL_PARAM_modified(%struct.ossl_param_st* noundef nonnull %arraydecay) #5
  %cmp43 = icmp ne i32 %call42, 0
  %conv44 = zext i1 %cmp43 to i32
  %call45 = call i32 @test_false(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 654, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv44) #5
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %land.lhs.true47, label %if.end86

land.lhs.true47:                                  ; preds = %if.end
  %call49 = call i32 @OSSL_PARAM_set_int32(%struct.ossl_param_st* noundef nonnull %arraydecay, i32 noundef 4321) #5
  %cmp50 = icmp ne i32 %call49, 0
  %conv51 = zext i1 %cmp50 to i32
  %call52 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 655, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.138, i64 0, i64 0), i32 noundef %conv51) #5
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %land.lhs.true54, label %if.end86

land.lhs.true54:                                  ; preds = %land.lhs.true47
  %call56 = call i32 @OSSL_PARAM_modified(%struct.ossl_param_st* noundef nonnull %arraydecay) #5
  %cmp57 = icmp ne i32 %call56, 0
  %conv58 = zext i1 %cmp57 to i32
  %call59 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 656, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv58) #5
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true61, label %if.end86

land.lhs.true61:                                  ; preds = %land.lhs.true54
  %add.ptr63 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %param, i64 0, i64 1
  %call64 = call i32 @OSSL_PARAM_modified(%struct.ossl_param_st* noundef nonnull %add.ptr63) #5
  %cmp65 = icmp ne i32 %call64, 0
  %conv66 = zext i1 %cmp65 to i32
  %call67 = call i32 @test_false(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 657, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.136, i64 0, i64 0), i32 noundef %conv66) #5
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %land.lhs.true69, label %if.end86

land.lhs.true69:                                  ; preds = %land.lhs.true61
  %call72 = call i32 @OSSL_PARAM_set_int32(%struct.ossl_param_st* noundef nonnull %add.ptr63, i32 noundef 2) #5
  %cmp73 = icmp ne i32 %call72, 0
  %conv74 = zext i1 %cmp73 to i32
  %call75 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 658, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.139, i64 0, i64 0), i32 noundef %conv74) #5
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %land.lhs.true77, label %if.end86

land.lhs.true77:                                  ; preds = %land.lhs.true69
  %call80 = call i32 @OSSL_PARAM_modified(%struct.ossl_param_st* noundef nonnull %add.ptr63) #5
  %cmp81 = icmp ne i32 %call80, 0
  %conv82 = zext i1 %cmp81 to i32
  %call83 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 659, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.136, i64 0, i64 0), i32 noundef %conv82) #5
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %cleanup, label %if.end86

if.end86:                                         ; preds = %land.lhs.true77, %land.lhs.true69, %land.lhs.true61, %land.lhs.true54, %land.lhs.true47, %if.end
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true77, %land.lhs.true32, %if.end86
  %retval.0 = phi i32 [ 1, %if.end86 ], [ 0, %land.lhs.true32 ], [ 0, %land.lhs.true77 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_param_copy_null() #0 {
entry:
  %val = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %param = alloca [3 x %struct.ossl_param_st], align 16
  %tmp4 = alloca %struct.ossl_param_st, align 8
  %tmp7 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  %1 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #6
  store i32 1, i32* %a, align 4, !tbaa !12
  %2 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #6
  store i32 2, i32* %b, align 4, !tbaa !12
  %3 = bitcast [3 x %struct.ossl_param_st]* %param to i8*
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %3) #6
  %arrayidx = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %param, i64 0, i64 0
  %param84 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %param, i64 0, i64 0
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %param84, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i32* noundef nonnull %a) #5
  %arrayidx3 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %param, i64 0, i64 1
  %4 = bitcast %struct.ossl_param_st* %tmp4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #6
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), i32* noundef nonnull %b) #5
  %5 = bitcast %struct.ossl_param_st* %arrayidx3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %5, i8* noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #6
  %arrayidx6 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %param, i64 0, i64 2
  %6 = bitcast %struct.ossl_param_st* %tmp7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #6
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp7) #5
  %7 = bitcast %struct.ossl_param_st* %arrayidx6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %7, i8* noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #6
  %call = call %struct.ossl_param_st* @OSSL_PARAM_dup(%struct.ossl_param_st* noundef null) #5
  %8 = bitcast %struct.ossl_param_st* %call to i8*
  %call8 = call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 675, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.140, i64 0, i64 0), i8* noundef %8) #5
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call9 = call %struct.ossl_param_st* @OSSL_PARAM_merge(%struct.ossl_param_st* noundef null, %struct.ossl_param_st* noundef nonnull %arrayidx) #5
  %9 = bitcast %struct.ossl_param_st* %call9 to i8*
  %call10 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 676, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.141, i64 0, i64 0), i8* noundef %9) #5
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.end, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %land.lhs.true
  %call13 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %call9, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)) #5
  %10 = bitcast %struct.ossl_param_st* %call13 to i8*
  %call14 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 677, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.142, i64 0, i64 0), i8* noundef %10) #5
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.end, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %land.lhs.true12
  %call17 = call i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef %call13, i32* noundef nonnull %val) #5
  %cmp = icmp ne i32 %call17, 0
  %conv = zext i1 %cmp to i32
  %call18 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 678, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.143, i64 0, i64 0), i32 noundef %conv) #5
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.end, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %land.lhs.true16
  %11 = load i32, i32* %val, align 4, !tbaa !12
  %call21 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 679, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.144, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.145, i64 0, i64 0), i32 noundef %11, i32 noundef 1) #5
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.end, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %call24 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %call9, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0)) #5
  %12 = bitcast %struct.ossl_param_st* %call24 to i8*
  %call25 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 680, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.146, i64 0, i64 0), i8* noundef %12) #5
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.end, label %land.lhs.true27

land.lhs.true27:                                  ; preds = %land.lhs.true23
  %call28 = call i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef %call24, i32* noundef nonnull %val) #5
  %cmp29 = icmp ne i32 %call28, 0
  %conv30 = zext i1 %cmp29 to i32
  %call31 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 681, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.143, i64 0, i64 0), i32 noundef %conv30) #5
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %land.end, label %land.lhs.true33

land.lhs.true33:                                  ; preds = %land.lhs.true27
  %13 = load i32, i32* %val, align 4, !tbaa !12
  %call34 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 682, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.144, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.147, i64 0, i64 0), i32 noundef %13, i32 noundef 2) #5
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.end, label %land.lhs.true36

land.lhs.true36:                                  ; preds = %land.lhs.true33
  %call38 = call %struct.ossl_param_st* @OSSL_PARAM_merge(%struct.ossl_param_st* noundef nonnull %arrayidx, %struct.ossl_param_st* noundef null) #5
  %14 = bitcast %struct.ossl_param_st* %call38 to i8*
  %call39 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 683, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.148, i64 0, i64 0), i8* noundef %14) #5
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.end, label %land.lhs.true41

land.lhs.true41:                                  ; preds = %land.lhs.true36
  %call42 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %call38, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)) #5
  %15 = bitcast %struct.ossl_param_st* %call42 to i8*
  %call43 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 684, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.149, i64 0, i64 0), i8* noundef %15) #5
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %land.end, label %land.lhs.true45

land.lhs.true45:                                  ; preds = %land.lhs.true41
  %call46 = call i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef %call42, i32* noundef nonnull %val) #5
  %cmp47 = icmp ne i32 %call46, 0
  %conv48 = zext i1 %cmp47 to i32
  %call49 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 685, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.143, i64 0, i64 0), i32 noundef %conv48) #5
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %land.end, label %land.lhs.true51

land.lhs.true51:                                  ; preds = %land.lhs.true45
  %16 = load i32, i32* %val, align 4, !tbaa !12
  %call52 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 686, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.144, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.145, i64 0, i64 0), i32 noundef %16, i32 noundef 1) #5
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %land.end, label %land.lhs.true54

land.lhs.true54:                                  ; preds = %land.lhs.true51
  %call55 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %call38, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0)) #5
  %17 = bitcast %struct.ossl_param_st* %call55 to i8*
  %call56 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 687, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.150, i64 0, i64 0), i8* noundef %17) #5
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %land.end, label %land.lhs.true58

land.lhs.true58:                                  ; preds = %land.lhs.true54
  %call59 = call i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef %call55, i32* noundef nonnull %val) #5
  %cmp60 = icmp ne i32 %call59, 0
  %conv61 = zext i1 %cmp60 to i32
  %call62 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 688, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.143, i64 0, i64 0), i32 noundef %conv61) #5
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %land.end, label %land.lhs.true64

land.lhs.true64:                                  ; preds = %land.lhs.true58
  %18 = load i32, i32* %val, align 4, !tbaa !12
  %call65 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 689, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.144, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.147, i64 0, i64 0), i32 noundef %18, i32 noundef 2) #5
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true64
  %call67 = call %struct.ossl_param_st* @OSSL_PARAM_merge(%struct.ossl_param_st* noundef null, %struct.ossl_param_st* noundef null) #5
  %19 = bitcast %struct.ossl_param_st* %call67 to i8*
  %call68 = call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 690, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.151, i64 0, i64 0), i8* noundef %19) #5
  %tobool69 = icmp ne i32 %call68, 0
  %phi.cast = zext i1 %tobool69 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true64, %land.lhs.true58, %land.lhs.true54, %land.lhs.true51, %land.lhs.true45, %land.lhs.true41, %land.lhs.true36, %land.lhs.true33, %land.lhs.true27, %land.lhs.true23, %land.lhs.true20, %land.lhs.true16, %land.lhs.true12, %land.lhs.true, %entry
  %cp1.0 = phi %struct.ossl_param_st* [ %call9, %land.rhs ], [ %call9, %land.lhs.true64 ], [ %call9, %land.lhs.true58 ], [ %call9, %land.lhs.true54 ], [ %call9, %land.lhs.true51 ], [ %call9, %land.lhs.true45 ], [ %call9, %land.lhs.true41 ], [ %call9, %land.lhs.true36 ], [ %call9, %land.lhs.true33 ], [ %call9, %land.lhs.true27 ], [ %call9, %land.lhs.true23 ], [ %call9, %land.lhs.true20 ], [ %call9, %land.lhs.true16 ], [ %call9, %land.lhs.true12 ], [ %call9, %land.lhs.true ], [ null, %entry ]
  %cp2.0 = phi %struct.ossl_param_st* [ %call38, %land.rhs ], [ %call38, %land.lhs.true64 ], [ %call38, %land.lhs.true58 ], [ %call38, %land.lhs.true54 ], [ %call38, %land.lhs.true51 ], [ %call38, %land.lhs.true45 ], [ %call38, %land.lhs.true41 ], [ %call38, %land.lhs.true36 ], [ null, %land.lhs.true33 ], [ null, %land.lhs.true27 ], [ null, %land.lhs.true23 ], [ null, %land.lhs.true20 ], [ null, %land.lhs.true16 ], [ null, %land.lhs.true12 ], [ null, %land.lhs.true ], [ null, %entry ]
  %20 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %land.lhs.true64 ], [ 0, %land.lhs.true58 ], [ 0, %land.lhs.true54 ], [ 0, %land.lhs.true51 ], [ 0, %land.lhs.true45 ], [ 0, %land.lhs.true41 ], [ 0, %land.lhs.true36 ], [ 0, %land.lhs.true33 ], [ 0, %land.lhs.true27 ], [ 0, %land.lhs.true23 ], [ 0, %land.lhs.true20 ], [ 0, %land.lhs.true16 ], [ 0, %land.lhs.true12 ], [ 0, %land.lhs.true ], [ 0, %entry ]
  call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %cp2.0) #5
  call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %cp1.0) #5
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret i32 %20
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @le_copy(i8* noundef %out, i8* noundef %in, i64 noundef %len) unnamed_addr #0 {
entry:
  %call = tail call i8* @memcpy(i8* noundef %out, i8* noundef %in, i64 noundef %len) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_set_int(%struct.ossl_param_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef, i32* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_param_type_extra(%struct.ossl_param_st* noundef %param, i8* noundef %cmp, i64 noundef %width) unnamed_addr #0 {
entry:
  %i32 = alloca i32, align 4
  %i64 = alloca i64, align 8
  %s = alloca i64, align 8
  %buf = alloca [20 x i8], align 16
  %0 = bitcast i32* %i32 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  %1 = bitcast i64* %i64 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  %2 = bitcast i64* %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #6
  %3 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %3) #6
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 3
  %4 = load i64, i64* %data_size, align 8, !tbaa !15
  %cmp1 = icmp ult i64 %4, 5
  %cmp3 = icmp ult i64 %4, 9
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 1
  %5 = load i32, i32* %data_type, align 8, !tbaa !23
  %cmp5 = icmp eq i32 %5, 1
  %return_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 4
  store i64 -1, i64* %return_size, align 8, !tbaa !16
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then
  %call = call i32 @OSSL_PARAM_get_int32(%struct.ossl_param_st* noundef nonnull %param, i32* noundef nonnull %i32) #5
  %cmp8 = icmp ne i32 %call, 0
  %conv9 = zext i1 %cmp8 to i32
  %call10 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0), i32 noundef %conv9) #5
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then
  %call12 = call i32 @OSSL_PARAM_get_int64(%struct.ossl_param_st* noundef nonnull %param, i64* noundef nonnull %i64) #5
  %cmp13 = icmp ne i32 %call12, 0
  %conv14 = zext i1 %cmp13 to i32
  %call15 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0), i32 noundef %conv14) #5
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %cleanup, label %if.end41

if.else:                                          ; preds = %entry
  br i1 %cmp1, label %land.lhs.true19, label %lor.lhs.false25

land.lhs.true19:                                  ; preds = %if.else
  %call20 = call i32 @OSSL_PARAM_get_uint32(%struct.ossl_param_st* noundef nonnull %param, i32* noundef nonnull %i32) #5
  %cmp21 = icmp ne i32 %call20, 0
  %conv22 = zext i1 %cmp21 to i32
  %call23 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv22) #5
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %land.lhs.true19, %if.else
  %call26 = call i32 @OSSL_PARAM_get_uint64(%struct.ossl_param_st* noundef nonnull %param, i64* noundef nonnull %i64) #5
  %cmp27 = icmp ne i32 %call26, 0
  %conv28 = zext i1 %cmp27 to i32
  %call29 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.25, i64 0, i64 0), i32 noundef %conv28) #5
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %cleanup, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false25
  br i1 %cmp3, label %land.lhs.true33, label %if.end41

land.lhs.true33:                                  ; preds = %lor.lhs.false31
  %call34 = call i32 @OSSL_PARAM_get_size_t(%struct.ossl_param_st* noundef nonnull %param, i64* noundef nonnull %s) #5
  %cmp35 = icmp ne i32 %call34, 0
  %conv36 = zext i1 %cmp35 to i32
  %call37 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i64 0, i64 0), i32 noundef %conv36) #5
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %cleanup, label %if.end41

if.end41:                                         ; preds = %lor.lhs.false31, %land.lhs.true33, %lor.lhs.false
  %call42 = call i32 @OSSL_PARAM_modified(%struct.ossl_param_st* noundef nonnull %param) #5
  %cmp43 = icmp ne i32 %call42, 0
  %conv44 = zext i1 %cmp43 to i32
  %call45 = call i32 @test_false(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 96, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv44) #5
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %cleanup, label %if.end48

if.end48:                                         ; preds = %if.end41
  br i1 %cmp1, label %if.then50, label %if.end58

if.then50:                                        ; preds = %if.end48
  call fastcc void @le_copy(i8* noundef nonnull %3, i8* noundef nonnull %0, i64 noundef 4) #7
  %6 = icmp ult i64 %width, 4
  %cond = select i1 %6, i64 %width, i64 4
  %call54 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 103, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef %cond, i8* noundef %cmp, i64 noundef %cond) #5
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %cleanup, label %if.end58

if.end58:                                         ; preds = %if.then50, %if.end48
  call fastcc void @le_copy(i8* noundef nonnull %3, i8* noundef nonnull %1, i64 noundef 8) #7
  %call67 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 108, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef %width, i8* noundef %cmp, i64 noundef %width) #5
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %cleanup, label %if.end70

if.end70:                                         ; preds = %if.end58
  %tobool71 = xor i1 %cmp3, true
  %or.cond = select i1 %tobool71, i1 true, i1 %cmp5
  br i1 %or.cond, label %if.end87, label %if.then74

if.then74:                                        ; preds = %if.end70
  call fastcc void @le_copy(i8* noundef nonnull %3, i8* noundef nonnull %2, i64 noundef 8) #7
  %call83 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 113, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef %width, i8* noundef %cmp, i64 noundef %width) #5
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %cleanup, label %if.end87

if.end87:                                         ; preds = %if.then74, %if.end70
  %cmp88 = icmp ult i64 %width, 8
  br i1 %cmp88, label %if.then90, label %if.end134

if.then90:                                        ; preds = %if.end87
  br i1 %cmp5, label %if.then92, label %if.else109

if.then92:                                        ; preds = %if.then90
  %call93 = call i32 @OSSL_PARAM_set_int32(%struct.ossl_param_st* noundef nonnull %param, i32 noundef 12345) #5
  %cmp94 = icmp ne i32 %call93, 0
  %conv95 = zext i1 %cmp94 to i32
  %call96 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 120, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i64 0, i64 0), i32 noundef %conv95) #5
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %cleanup, label %lor.lhs.false98

lor.lhs.false98:                                  ; preds = %if.then92
  %call99 = call i32 @OSSL_PARAM_get_int64(%struct.ossl_param_st* noundef nonnull %param, i64* noundef nonnull %i64) #5
  %cmp100 = icmp ne i32 %call99, 0
  %conv101 = zext i1 %cmp100 to i32
  %call102 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 121, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0), i32 noundef %conv101) #5
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %cleanup, label %lor.lhs.false104

lor.lhs.false104:                                 ; preds = %lor.lhs.false98
  %7 = load i64, i64* %i64, align 8, !tbaa !13
  %call105 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 122, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i64 noundef %7, i64 noundef 12345) #5
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %cleanup, label %if.end126

if.else109:                                       ; preds = %if.then90
  %call110 = call i32 @OSSL_PARAM_set_uint32(%struct.ossl_param_st* noundef nonnull %param, i32 noundef 12345) #5
  %cmp111 = icmp ne i32 %call110, 0
  %conv112 = zext i1 %cmp111 to i32
  %call113 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 125, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i64 0, i64 0), i32 noundef %conv112) #5
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %cleanup, label %lor.lhs.false115

lor.lhs.false115:                                 ; preds = %if.else109
  %call116 = call i32 @OSSL_PARAM_get_uint64(%struct.ossl_param_st* noundef nonnull %param, i64* noundef nonnull %i64) #5
  %cmp117 = icmp ne i32 %call116, 0
  %conv118 = zext i1 %cmp117 to i32
  %call119 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 126, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.25, i64 0, i64 0), i32 noundef %conv118) #5
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %cleanup, label %lor.lhs.false121

lor.lhs.false121:                                 ; preds = %lor.lhs.false115
  %8 = load i64, i64* %i64, align 8, !tbaa !13
  %call122 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 127, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i64 noundef %8, i64 noundef 12345) #5
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %cleanup, label %if.end126

if.end126:                                        ; preds = %lor.lhs.false121, %lor.lhs.false104
  %call127 = call i32 @OSSL_PARAM_modified(%struct.ossl_param_st* noundef nonnull %param) #5
  %cmp128 = icmp ne i32 %call127, 0
  %conv129 = zext i1 %cmp128 to i32
  %call130 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 130, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv129) #5
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %cleanup, label %if.end134

if.end134:                                        ; preds = %if.end126, %if.end87
  br label %cleanup

cleanup:                                          ; preds = %if.end126, %if.else109, %lor.lhs.false115, %lor.lhs.false121, %if.then92, %lor.lhs.false98, %lor.lhs.false104, %if.then74, %if.end58, %if.then50, %if.end41, %land.lhs.true19, %lor.lhs.false25, %land.lhs.true33, %land.lhs.true, %lor.lhs.false, %if.end134
  %retval.0 = phi i32 [ 1, %if.end134 ], [ 0, %lor.lhs.false ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true33 ], [ 0, %lor.lhs.false25 ], [ 0, %land.lhs.true19 ], [ 0, %if.end41 ], [ 0, %if.then50 ], [ 0, %if.end58 ], [ 0, %if.then74 ], [ 0, %lor.lhs.false104 ], [ 0, %lor.lhs.false98 ], [ 0, %if.then92 ], [ 0, %lor.lhs.false121 ], [ 0, %lor.lhs.false115 ], [ 0, %if.else109 ], [ 0, %if.end126 ]
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @OSSL_PARAM_get_int32(%struct.ossl_param_st* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_get_int64(%struct.ossl_param_st* noundef, i64* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_get_uint32(%struct.ossl_param_st* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_get_uint64(%struct.ossl_param_st* noundef, i64* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_get_size_t(%struct.ossl_param_st* noundef, i64* noundef) local_unnamed_addr #1

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_modified(%struct.ossl_param_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_set_int32(%struct.ossl_param_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_size_t_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_set_uint32(%struct.ossl_param_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_set_long(%struct.ossl_param_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_get_long(%struct.ossl_param_st* noundef, i64* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_set_uint(%struct.ossl_param_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_get_uint(%struct.ossl_param_st* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_set_ulong(%struct.ossl_param_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_get_ulong(%struct.ossl_param_st* noundef, i64* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_set_size_t(%struct.ossl_param_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_set_time_t(%struct.ossl_param_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_get_time_t(%struct.ossl_param_st* noundef, i64* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_set_int64(%struct.ossl_param_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_set_uint64(%struct.ossl_param_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_lebin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_set_BN(%struct.ossl_param_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef, %struct.bignum_st** noundef) local_unnamed_addr #1

declare dso_local i32 @test_BN_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_set_double(%struct.ossl_param_st* noundef, double noundef) local_unnamed_addr #1

declare dso_local i32 @test_double_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, double noundef, double noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_construct_int(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_construct_long(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i64* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_construct_ulong(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i64* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_construct_int32(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_construct_int64(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i64* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_construct_uint32(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_construct_uint64(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i64* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i64* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_construct_double(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, double* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_construct_BN(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_construct_utf8_ptr(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_construct_octet_ptr(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #1

declare dso_local %struct.ossl_param_st* @OSSL_PARAM_merge(%struct.ossl_param_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_param_st* @OSSL_PARAM_dup(%struct.ossl_param_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr_null(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @test_note(i8* noundef, ...) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_get_double(%struct.ossl_param_st* noundef, double* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_set_utf8_string(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_get_utf8_string(%struct.ossl_param_st* noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_str_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_set_utf8_ptr(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_get_utf8_ptr(%struct.ossl_param_st* noundef, i8** noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_set_octet_string(%struct.ossl_param_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_get_octet_string(%struct.ossl_param_st* noundef, i8** noundef, i64 noundef, i64* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_set_octet_ptr(%struct.ossl_param_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_get_octet_ptr(%struct.ossl_param_st* noundef, i8** noundef, i64* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_set_all_unmodified(%struct.ossl_param_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_free(%struct.ossl_param_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !5, i64 0}
!4 = !{!"", !5, i64 0, !6, i64 8}
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 16}
!9 = !{!"ossl_param_st", !10, i64 0, !11, i64 8, !10, i64 16, !5, i64 24, !5, i64 32}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!5, !5, i64 0}
!14 = !{!10, !10, i64 0}
!15 = !{!9, !5, i64 24}
!16 = !{!9, !5, i64 32}
!17 = !{!18, !18, i64 0}
!18 = !{!"double", !6, i64 0}
!19 = !{i64 0, i64 8, !14, i64 8, i64 4, !12, i64 16, i64 8, !14, i64 24, i64 8, !13, i64 32, i64 8, !13}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !21}
!23 = !{!9, !11, i64 8}
