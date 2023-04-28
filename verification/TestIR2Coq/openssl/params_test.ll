; ModuleID = 'test/params_test.c'
source_filename = "test/params_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { %struct.provider_dispatch_st*, %struct.param_owner_st*, i8* }
%struct.provider_dispatch_st = type { i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)* }
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.param_owner_st = type { %struct.ossl_param_st*, %struct.ossl_param_st* ()* }
%struct.bignum_st = type opaque
%struct.int_from_text_test_st = type { i8*, i8*, i64, i32 }

@.str = private unnamed_addr constant [10 x i8] c"test_case\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"test_allocate_from_text\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"test/params_test.c\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Case: %s\00", align 1
@test_cases = internal unnamed_addr constant [4 x %struct.anon] [%struct.anon { %struct.provider_dispatch_st* @provider_raw, %struct.param_owner_st* @raw_params, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0) }, %struct.anon { %struct.provider_dispatch_st* @provider_api, %struct.param_owner_st* @api_params, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0) }, %struct.anon { %struct.provider_dispatch_st* @provider_raw, %struct.param_owner_st* @api_params, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0) }, %struct.anon { %struct.provider_dispatch_st* @provider_api, %struct.param_owner_st* @raw_params, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0) }], align 16
@provider_raw = internal constant %struct.provider_dispatch_st { i32 (i8*, %struct.ossl_param_st*)* @raw_set_params, i32 (i8*, %struct.ossl_param_st*)* @raw_get_params }, align 8
@raw_params = internal constant %struct.param_owner_st { %struct.ossl_param_st* getelementptr inbounds ([7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* @static_raw_params, i32 0, i32 0), %struct.ossl_param_st* ()* null }, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"raw provider vs raw params\00", align 1
@provider_api = internal constant %struct.provider_dispatch_st { i32 (i8*, %struct.ossl_param_st*)* @api_set_params, i32 (i8*, %struct.ossl_param_st*)* @api_get_params }, align 8
@api_params = internal constant %struct.param_owner_st { %struct.ossl_param_st* getelementptr inbounds ([7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* @static_api_params, i32 0, i32 0), %struct.ossl_param_st* ()* @construct_api_params }, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"api provider vs api params\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"raw provider vs api params\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"api provider vs raw params\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"p1\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"p2\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"p3\00", align 1
@.str.11 = private unnamed_addr constant [62 x i8] c"obj->p3 = BN_native2bn(params->data, params->data_size, NULL)\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"p4\00", align 1
@.str.13 = private unnamed_addr constant [59 x i8] c"obj->p4 = OPENSSL_strndup(params->data, params->data_size)\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"p5\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"data_length\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"sizeof(obj->p5)\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"p6\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"params->data_size\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"params->return_size\00", align 1
@static_raw_params = internal global [7 x %struct.ossl_param_st] [%struct.ossl_param_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i32 1, i8* bitcast (i32* @app_p1 to i8*), i64 4, i64 0 }, %struct.ossl_param_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @bignumbin, i32 0, i32 0), i64 4096, i64 0 }, %struct.ossl_param_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @app_p4, i32 0, i32 0), i64 256, i64 0 }, %struct.ossl_param_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @app_p5, i32 0, i32 0), i64 256, i64 0 }, %struct.ossl_param_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i32 6, i8* bitcast (i8** @app_p6 to i8*), i64 6, i64 0 }, %struct.ossl_param_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @foo, i32 0, i32 0), i64 1, i64 0 }, %struct.ossl_param_st zeroinitializer], align 16
@app_p1 = internal global i32 0, align 4
@bignumbin = internal global [4096 x i8] zeroinitializer, align 16
@app_p4 = internal global [256 x i8] zeroinitializer, align 16
@app_p5 = internal global [256 x i8] zeroinitializer, align 16
@app_p6 = internal global i8* null, align 8
@.str.20 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@foo = internal global [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"OSSL_PARAM_get_int(p, &obj->p1)\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"OSSL_PARAM_get_double(p, &obj->p2)\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"OSSL_PARAM_get_BN(p, &obj->p3)\00", align 1
@.str.24 = private unnamed_addr constant [43 x i8] c"OSSL_PARAM_get_utf8_string(p, &obj->p4, 0)\00", align 1
@.str.25 = private unnamed_addr constant [56 x i8] c"OSSL_PARAM_get_utf8_string(p, &p5_ptr, sizeof(obj->p5))\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"OSSL_PARAM_get_utf8_ptr(p, &obj->p6)\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"OSSL_PARAM_set_int(p, obj->p1)\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"OSSL_PARAM_set_double(p, obj->p2)\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"OSSL_PARAM_set_BN(p, obj->p3)\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"OSSL_PARAM_set_utf8_string(p, obj->p4)\00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"OSSL_PARAM_set_utf8_string(p, obj->p5)\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"OSSL_PARAM_set_utf8_ptr(p, obj->p6)\00", align 1
@static_api_params = internal global [7 x %struct.ossl_param_st] [%struct.ossl_param_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i32 1, i8* bitcast (i32* @app_p1 to i8*), i64 4, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @bignumbin, i32 0, i32 0), i64 4096, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @app_p4, i32 0, i32 0), i64 256, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @app_p5, i32 0, i32 0), i64 256, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i32 6, i8* bitcast (i8** @app_p6 to i8*), i64 6, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @foo, i32 0, i32 0), i64 1, i64 -1 }, %struct.ossl_param_st zeroinitializer], align 16
@construct_api_params.params = internal global [10 x %struct.ossl_param_st] zeroinitializer, align 16
@.str.33 = private unnamed_addr constant [20 x i8] c"obj = init_object()\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"BN_hex2bn(&verify_p3, p3_init)\00", align 1
@.str.35 = private unnamed_addr constant [125 x i8] c"4142434445464748494a4b4c4d4e4f505152535455565758595a6162636465666768696a6b6c6d6e6f707172737475767778797a30313233343536373839\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"prov->get_params(obj, params)\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"app_p1\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"p1_init\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"app_p2\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"app_p2_init\00", align 1
@app_p2 = internal unnamed_addr global double 0.000000e+00, align 8
@.str.41 = private unnamed_addr constant [36 x i8] c"p = OSSL_PARAM_locate(params, \22p3\22)\00", align 1
@.str.42 = private unnamed_addr constant [48 x i8] c"BN_native2bn(bignumbin, p->return_size, app_p3)\00", align 1
@app_p3 = internal global %struct.bignum_st* null, align 8
@.str.43 = private unnamed_addr constant [7 x i8] c"app_p3\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"verify_p3\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"app_p4\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"p4_init\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"BLAKE2s256\00", align 1
@.str.48 = private unnamed_addr constant [36 x i8] c"p = OSSL_PARAM_locate(params, \22p5\22)\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"p->return_size\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c"sizeof(p5_init) - 1\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"app_p5\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"p5_init\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"Hellow World\00", align 1
@.str.54 = private unnamed_addr constant [36 x i8] c"p = OSSL_PARAM_locate(params, \22p6\22)\00", align 1
@.str.55 = private unnamed_addr constant [20 x i8] c"sizeof(p6_init) - 1\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"app_p6\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"p6_init\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"3.0.0\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"foo[0]\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"app_foo_init\00", align 1
@.str.61 = private unnamed_addr constant [37 x i8] c"p = OSSL_PARAM_locate(params, \22foo\22)\00", align 1
@.str.62 = private unnamed_addr constant [30 x i8] c"prov->set_params(obj, params)\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"sneakpeek->p1\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"sneakpeek->p2\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"p2_init\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"sneakpeek->p3\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"sneakpeek->p4\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"sneakpeek->p5\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"sneakpeek->p6\00", align 1
@.str.70 = private unnamed_addr constant [35 x i8] c"BN_hex2bn(&verify_p3, app_p3_init)\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"deadbeef\00", align 1
@.str.72 = private unnamed_addr constant [12 x i8] c"app_p1_init\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"app_p4_init\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"Hello\00", align 1
@.str.75 = private unnamed_addr constant [24 x i8] c"sizeof(app_p5_init) - 1\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"app_p5_init\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"World\00", align 1
@.str.78 = private unnamed_addr constant [24 x i8] c"sizeof(app_p6_init) - 1\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"app_p6_init\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"Cookie\00", align 1
@.str.81 = private unnamed_addr constant [35 x i8] c"obj = OPENSSL_zalloc(sizeof(*obj))\00", align 1
@.str.82 = private unnamed_addr constant [29 x i8] c"BN_hex2bn(&obj->p3, p3_init)\00", align 1
@.str.83 = private unnamed_addr constant [34 x i8] c"obj->p4 = OPENSSL_strdup(p4_init)\00", align 1
@int_from_text_test_cases = internal global [19 x %struct.int_from_text_test_st] [%struct.int_from_text_test_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.89, i32 0, i32 0), i64 0, i32 0 }, %struct.int_from_text_test_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i32 0, i32 0), i64 0, i32 1 }, %struct.int_from_text_test_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i32 0, i32 0), i64 101, i32 1 }, %struct.int_from_text_test_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i32 0, i32 0), i64 -102, i32 1 }, %struct.int_from_text_test_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i32 0, i32 0), i64 12, i32 1 }, %struct.int_from_text_test_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i32 0, i32 0), i64 299, i32 1 }, %struct.int_from_text_test_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i32 0, i32 0), i64 300, i32 1 }, %struct.int_from_text_test_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.97, i32 0, i32 0), i64 0, i32 1 }, %struct.int_from_text_test_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.98, i32 0, i32 0), i64 2147483647, i32 1 }, %struct.int_from_text_test_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i64 2147483647, i32 1 }, %struct.int_from_text_test_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.100, i32 0, i32 0), i64 0, i32 0 }, %struct.int_from_text_test_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.101, i32 0, i32 0), i64 -2147483648, i32 1 }, %struct.int_from_text_test_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.102, i32 0, i32 0), i64 0, i32 0 }, %struct.int_from_text_test_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.103, i32 0, i32 0), i64 32767, i32 1 }, %struct.int_from_text_test_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.104, i32 0, i32 0), i64 32767, i32 1 }, %struct.int_from_text_test_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.105, i32 0, i32 0), i64 0, i32 0 }, %struct.int_from_text_test_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i32 0, i32 0), i64 65535, i32 1 }, %struct.int_from_text_test_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.107, i32 0, i32 0), i64 65535, i32 1 }, %struct.int_from_text_test_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0), i64 0, i32 0 }], align 16
@params_from_text = internal constant [4 x %struct.ossl_param_st] [%struct.ossl_param_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i32 0, i32 0), i32 1, i8* null, i64 4, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0), i32 1, i8* null, i64 2, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0), i32 2, i8* null, i64 2, i64 -1 }, %struct.ossl_param_st zeroinitializer], align 16
@.str.84 = private unnamed_addr constant [21 x i8] c"errant %s param \22%s\22\00", align 1
@.str.85 = private unnamed_addr constant [26 x i8] c"errant %s \22%s\22 %li != %li\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"ushort\00", align 1
@.str.89 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.90 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"101\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"-102\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"12A\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"0x12B\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"hexint\00", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c"12C\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"0x12D\00", align 1
@.str.98 = private unnamed_addr constant [11 x i8] c"0x7fffffff\00", align 1
@.str.99 = private unnamed_addr constant [11 x i8] c"2147483647\00", align 1
@.str.100 = private unnamed_addr constant [11 x i8] c"2147483648\00", align 1
@.str.101 = private unnamed_addr constant [12 x i8] c"-2147483648\00", align 1
@.str.102 = private unnamed_addr constant [12 x i8] c"-2147483649\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"0x7fff\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"32767\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"32768\00", align 1
@.str.106 = private unnamed_addr constant [7 x i8] c"0xffff\00", align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"65535\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"65536\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 (i32)* noundef nonnull @test_case, i32 noundef 4, i32 noundef 1) #6
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 (i32)* noundef nonnull @test_allocate_from_text, i32 noundef 19, i32 noundef 1) #6
  ret i32 1
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_case(i32 noundef %i) #0 {
entry:
  %idxprom = sext i32 %i to i64
  %desc = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @test_cases, i64 0, i64 %idxprom, i32 2
  %0 = load i8*, i8** %desc, align 8, !tbaa !3
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 539, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef %0) #6
  %app = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @test_cases, i64 0, i64 %idxprom, i32 1
  %1 = load %struct.param_owner_st*, %struct.param_owner_st** %app, align 8, !tbaa !8
  %static_params = getelementptr inbounds %struct.param_owner_st, %struct.param_owner_st* %1, i64 0, i32 0
  %2 = load %struct.ossl_param_st*, %struct.ossl_param_st** %static_params, align 8, !tbaa !9
  %prov = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @test_cases, i64 0, i64 %idxprom, i32 0
  %3 = load %struct.provider_dispatch_st*, %struct.provider_dispatch_st** %prov, align 8, !tbaa !11
  %call = tail call fastcc i32 @test_case_variant(%struct.ossl_param_st* noundef %2, %struct.provider_dispatch_st* noundef %3) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %constructed_params = getelementptr inbounds %struct.param_owner_st, %struct.param_owner_st* %1, i64 0, i32 1
  %4 = load %struct.ossl_param_st* ()*, %struct.ossl_param_st* ()** %constructed_params, align 8, !tbaa !12
  %cmp = icmp eq %struct.ossl_param_st* ()* %4, null
  br i1 %cmp, label %land.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %call12 = tail call %struct.ossl_param_st* %4() #6
  %call16 = tail call fastcc i32 @test_case_variant(%struct.ossl_param_st* noundef %call12, %struct.provider_dispatch_st* noundef %3) #7
  %tobool17 = icmp ne i32 %call16, 0
  %phi.cast = zext i1 %tobool17 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs, %entry
  %5 = phi i32 [ 0, %entry ], [ 1, %land.rhs ], [ %phi.cast, %lor.rhs ]
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_allocate_from_text(i32 noundef %i) #0 {
entry:
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds [19 x %struct.int_from_text_test_st], [19 x %struct.int_from_text_test_st]* @int_from_text_test_cases, i64 0, i64 %idxprom
  %call = tail call fastcc i32 @check_int_from_text(%struct.int_from_text_test_st* noundef nonnull byval(%struct.int_from_text_test_st) align 8 %arrayidx) #7
  ret i32 %call
}

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_case_variant(%struct.ossl_param_st* noundef %params, %struct.provider_dispatch_st* nocapture noundef readonly %prov) unnamed_addr #0 {
entry:
  %verify_p3 = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.bignum_st** %verify_p3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store %struct.bignum_st* null, %struct.bignum_st** %verify_p3, align 8, !tbaa !13
  %call = tail call fastcc i8* @init_object() #7
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 446, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i64 0, i64 0), i8* noundef %call) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %fin, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %verify_p3, i8* noundef getelementptr inbounds ([125 x i8], [125 x i8]* @.str.35, i64 0, i64 0)) #6
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 447, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i64 0, i64 0), i32 noundef %conv) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %fin, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call fastcc void @init_app_variables() #7
  %get_params = getelementptr inbounds %struct.provider_dispatch_st, %struct.provider_dispatch_st* %prov, i64 0, i32 1
  %1 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %get_params, align 8, !tbaa !14
  %call6 = call i32 %1(i8* noundef %call, %struct.ossl_param_st* noundef %params) #6
  %cmp7 = icmp ne i32 %call6, 0
  %conv8 = zext i1 %cmp7 to i32
  %call9 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 458, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv8) #6
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then61, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %if.end
  %2 = load i32, i32* @app_p1, align 4, !tbaa !16
  %call12 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 459, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i64 0, i64 0), i32 noundef %2, i32 noundef 42) #6
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then61, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false11
  %3 = load double, double* @app_p2, align 8, !tbaa !18
  %call15 = call i32 @test_double_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 460, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0), double noundef %3, double noundef 4.711000e+01) #6
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then61, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false14
  %call18 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)) #6
  %4 = bitcast %struct.ossl_param_st* %call18 to i8*
  %call19 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 461, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.41, i64 0, i64 0), i8* noundef %4) #6
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then61, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  %return_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call18, i64 0, i32 4
  %5 = load i64, i64* %return_size, align 8, !tbaa !20
  %conv22 = trunc i64 %5 to i32
  %6 = load %struct.bignum_st*, %struct.bignum_st** @app_p3, align 8, !tbaa !13
  %call23 = call %struct.bignum_st* @BN_native2bn(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @bignumbin, i64 0, i64 0), i32 noundef %conv22, %struct.bignum_st* noundef %6) #6
  %7 = bitcast %struct.bignum_st* %call23 to i8*
  %call24 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 462, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.42, i64 0, i64 0), i8* noundef %7) #6
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then61, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false21
  %8 = load %struct.bignum_st*, %struct.bignum_st** @app_p3, align 8, !tbaa !13
  %9 = load %struct.bignum_st*, %struct.bignum_st** %verify_p3, align 8, !tbaa !13
  %call27 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 463, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i64 0, i64 0), %struct.bignum_st* noundef %8, %struct.bignum_st* noundef %9) #6
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then61, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false26
  %call30 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 464, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @app_p4, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i64 0, i64 0)) #6
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then61, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false29
  %call33 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0)) #6
  %10 = bitcast %struct.ossl_param_st* %call33 to i8*
  %call34 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 465, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.48, i64 0, i64 0), i8* noundef %10) #6
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then61, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false32
  %return_size37 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call33, i64 0, i32 4
  %11 = load i64, i64* %return_size37, align 8, !tbaa !20
  %call38 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 467, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.50, i64 0, i64 0), i64 noundef %11, i64 noundef 12) #6
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then61, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %lor.lhs.false36
  %call41 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 468, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @app_p5, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i64 0, i64 0)) #6
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then61, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %lor.lhs.false40
  %call44 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0)) #6
  %12 = bitcast %struct.ossl_param_st* %call44 to i8*
  %call45 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 469, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.54, i64 0, i64 0), i8* noundef %12) #6
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then61, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %lor.lhs.false43
  %return_size48 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call44, i64 0, i32 4
  %13 = load i64, i64* %return_size48, align 8, !tbaa !20
  %call49 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 471, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.55, i64 0, i64 0), i64 noundef %13, i64 noundef 5) #6
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then61, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %lor.lhs.false47
  %14 = load i8*, i8** @app_p6, align 8, !tbaa !13
  %call52 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 472, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i64 0, i64 0), i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0)) #6
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then61, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %lor.lhs.false51
  %15 = load i8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @foo, i64 0, i64 0), align 1, !tbaa !23
  %call55 = call i32 @test_char_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 473, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.60, i64 0, i64 0), i8 noundef signext %15, i8 noundef signext 122) #6
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then61, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %lor.lhs.false54
  %call58 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0)) #6
  %16 = bitcast %struct.ossl_param_st* %call58 to i8*
  %call59 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 474, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.61, i64 0, i64 0), i8* noundef %16) #6
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then61, label %if.end63

if.then61:                                        ; preds = %lor.lhs.false57, %lor.lhs.false54, %lor.lhs.false51, %lor.lhs.false47, %lor.lhs.false43, %lor.lhs.false40, %lor.lhs.false36, %lor.lhs.false32, %lor.lhs.false29, %lor.lhs.false26, %lor.lhs.false21, %lor.lhs.false17, %lor.lhs.false14, %lor.lhs.false11, %if.end
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %lor.lhs.false57
  %errcnt.0 = phi i32 [ 0, %lor.lhs.false57 ], [ 1, %if.then61 ]
  call fastcc void @init_app_variables() #7
  %set_params = getelementptr inbounds %struct.provider_dispatch_st, %struct.provider_dispatch_st* %prov, i64 0, i32 0
  %17 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %set_params, align 8, !tbaa !24
  %call65 = call i32 %17(i8* noundef %call, %struct.ossl_param_st* noundef %params) #6
  %cmp66 = icmp ne i32 %call65, 0
  %conv67 = zext i1 %cmp66 to i32
  %call68 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 483, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.62, i64 0, i64 0), i32 noundef %conv67) #6
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then70, label %if.else

if.then70:                                        ; preds = %if.end63
  %inc71 = add nuw nsw i32 %errcnt.0, 1
  br label %if.end92

if.else:                                          ; preds = %if.end63
  %p1 = bitcast i8* %call to i32*
  %18 = load i32, i32* %p1, align 8, !tbaa !25
  %19 = load i32, i32* @app_p1, align 4, !tbaa !16
  %call72 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 488, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.63, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i32 noundef %18, i32 noundef %19) #6
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.then89, label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %if.else
  %p2 = getelementptr inbounds i8, i8* %call, i64 8
  %20 = bitcast i8* %p2 to double*
  %21 = load double, double* %20, align 8, !tbaa !27
  %call75 = call i32 @test_double_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 489, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.64, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i64 0, i64 0), double noundef %21, double noundef 6.283000e+00) #6
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.then89, label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %lor.lhs.false74
  %p3 = getelementptr inbounds i8, i8* %call, i64 16
  %22 = bitcast i8* %p3 to %struct.bignum_st**
  %23 = load %struct.bignum_st*, %struct.bignum_st** %22, align 8, !tbaa !28
  %24 = load %struct.bignum_st*, %struct.bignum_st** @app_p3, align 8, !tbaa !13
  %call78 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 490, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.66, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), %struct.bignum_st* noundef %23, %struct.bignum_st* noundef %24) #6
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.then89, label %lor.lhs.false80

lor.lhs.false80:                                  ; preds = %lor.lhs.false77
  %p4 = getelementptr inbounds i8, i8* %call, i64 24
  %25 = bitcast i8* %p4 to i8**
  %26 = load i8*, i8** %25, align 8, !tbaa !29
  %call81 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 491, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.67, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0), i8* noundef %26, i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @app_p4, i64 0, i64 0)) #6
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.then89, label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %lor.lhs.false80
  %p5 = getelementptr inbounds i8, i8* %call, i64 40
  %call84 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 492, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0), i8* noundef nonnull %p5, i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @app_p5, i64 0, i64 0)) #6
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.then89, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %lor.lhs.false83
  %p6 = getelementptr inbounds i8, i8* %call, i64 304
  %27 = bitcast i8* %p6 to i8**
  %28 = load i8*, i8** %27, align 8, !tbaa !30
  %29 = load i8*, i8** @app_p6, align 8, !tbaa !13
  %call87 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 493, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i64 0, i64 0), i8* noundef %28, i8* noundef %29) #6
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.then89, label %if.end92

if.then89:                                        ; preds = %lor.lhs.false86, %lor.lhs.false83, %lor.lhs.false80, %lor.lhs.false77, %lor.lhs.false74, %if.else
  %inc90 = add nuw nsw i32 %errcnt.0, 1
  br label %if.end92

if.end92:                                         ; preds = %lor.lhs.false86, %if.then89, %if.then70
  %errcnt.2 = phi i32 [ %inc71, %if.then70 ], [ %errcnt.0, %lor.lhs.false86 ], [ %inc90, %if.then89 ]
  %30 = load %struct.bignum_st*, %struct.bignum_st** %verify_p3, align 8, !tbaa !13
  call void @BN_free(%struct.bignum_st* noundef %30) #6
  store %struct.bignum_st* null, %struct.bignum_st** %verify_p3, align 8, !tbaa !13
  %call93 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %verify_p3, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i64 0, i64 0)) #6
  %cmp94 = icmp ne i32 %call93, 0
  %conv95 = zext i1 %cmp94 to i32
  %call96 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 504, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.70, i64 0, i64 0), i32 noundef %conv95) #6
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.then98, label %if.end100

if.then98:                                        ; preds = %if.end92
  %inc99 = add nuw nsw i32 %errcnt.2, 1
  br label %fin

if.end100:                                        ; preds = %if.end92
  %31 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %get_params, align 8, !tbaa !14
  %call102 = call i32 %31(i8* noundef %call, %struct.ossl_param_st* noundef %params) #6
  %cmp103 = icmp ne i32 %call102, 0
  %conv104 = zext i1 %cmp103 to i32
  %call105 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 509, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv104) #6
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.then158, label %lor.lhs.false107

lor.lhs.false107:                                 ; preds = %if.end100
  %32 = load i32, i32* @app_p1, align 4, !tbaa !16
  %call108 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 510, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.72, i64 0, i64 0), i32 noundef %32, i32 noundef 17) #6
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.then158, label %lor.lhs.false110

lor.lhs.false110:                                 ; preds = %lor.lhs.false107
  %33 = load double, double* @app_p2, align 8, !tbaa !18
  %call111 = call i32 @test_double_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 511, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0), double noundef %33, double noundef 4.711000e+01) #6
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.then158, label %lor.lhs.false113

lor.lhs.false113:                                 ; preds = %lor.lhs.false110
  %call114 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)) #6
  %34 = bitcast %struct.ossl_param_st* %call114 to i8*
  %call115 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 512, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.41, i64 0, i64 0), i8* noundef %34) #6
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.then158, label %lor.lhs.false117

lor.lhs.false117:                                 ; preds = %lor.lhs.false113
  %return_size118 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call114, i64 0, i32 4
  %35 = load i64, i64* %return_size118, align 8, !tbaa !20
  %conv119 = trunc i64 %35 to i32
  %36 = load %struct.bignum_st*, %struct.bignum_st** @app_p3, align 8, !tbaa !13
  %call120 = call %struct.bignum_st* @BN_native2bn(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @bignumbin, i64 0, i64 0), i32 noundef %conv119, %struct.bignum_st* noundef %36) #6
  %37 = bitcast %struct.bignum_st* %call120 to i8*
  %call121 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 513, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.42, i64 0, i64 0), i8* noundef %37) #6
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.then158, label %lor.lhs.false123

lor.lhs.false123:                                 ; preds = %lor.lhs.false117
  %38 = load %struct.bignum_st*, %struct.bignum_st** @app_p3, align 8, !tbaa !13
  %39 = load %struct.bignum_st*, %struct.bignum_st** %verify_p3, align 8, !tbaa !13
  %call124 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 514, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i64 0, i64 0), %struct.bignum_st* noundef %38, %struct.bignum_st* noundef %39) #6
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.then158, label %lor.lhs.false126

lor.lhs.false126:                                 ; preds = %lor.lhs.false123
  %call127 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 515, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @app_p4, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i64 0, i64 0)) #6
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.then158, label %lor.lhs.false129

lor.lhs.false129:                                 ; preds = %lor.lhs.false126
  %call130 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0)) #6
  %40 = bitcast %struct.ossl_param_st* %call130 to i8*
  %call131 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 516, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.48, i64 0, i64 0), i8* noundef %40) #6
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.then158, label %lor.lhs.false133

lor.lhs.false133:                                 ; preds = %lor.lhs.false129
  %return_size134 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call130, i64 0, i32 4
  %41 = load i64, i64* %return_size134, align 8, !tbaa !20
  %call135 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 518, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.75, i64 0, i64 0), i64 noundef %41, i64 noundef 5) #6
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.then158, label %lor.lhs.false137

lor.lhs.false137:                                 ; preds = %lor.lhs.false133
  %call138 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 519, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @app_p5, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i64 0, i64 0)) #6
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.then158, label %lor.lhs.false140

lor.lhs.false140:                                 ; preds = %lor.lhs.false137
  %call141 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0)) #6
  %42 = bitcast %struct.ossl_param_st* %call141 to i8*
  %call142 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 520, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.54, i64 0, i64 0), i8* noundef %42) #6
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.then158, label %lor.lhs.false144

lor.lhs.false144:                                 ; preds = %lor.lhs.false140
  %return_size145 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call141, i64 0, i32 4
  %43 = load i64, i64* %return_size145, align 8, !tbaa !20
  %call146 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 522, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.78, i64 0, i64 0), i64 noundef %43, i64 noundef 6) #6
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %if.then158, label %lor.lhs.false148

lor.lhs.false148:                                 ; preds = %lor.lhs.false144
  %44 = load i8*, i8** @app_p6, align 8, !tbaa !13
  %call149 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 523, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.79, i64 0, i64 0), i8* noundef %44, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i64 0, i64 0)) #6
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.then158, label %lor.lhs.false151

lor.lhs.false151:                                 ; preds = %lor.lhs.false148
  %45 = load i8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @foo, i64 0, i64 0), align 1, !tbaa !23
  %call152 = call i32 @test_char_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 524, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.60, i64 0, i64 0), i8 noundef signext %45, i8 noundef signext 122) #6
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %if.then158, label %lor.lhs.false154

lor.lhs.false154:                                 ; preds = %lor.lhs.false151
  %call155 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0)) #6
  %46 = bitcast %struct.ossl_param_st* %call155 to i8*
  %call156 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 525, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.61, i64 0, i64 0), i8* noundef %46) #6
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.then158, label %fin

if.then158:                                       ; preds = %lor.lhs.false154, %lor.lhs.false151, %lor.lhs.false148, %lor.lhs.false144, %lor.lhs.false140, %lor.lhs.false137, %lor.lhs.false133, %lor.lhs.false129, %lor.lhs.false126, %lor.lhs.false123, %lor.lhs.false117, %lor.lhs.false113, %lor.lhs.false110, %lor.lhs.false107, %if.end100
  %inc159 = add nuw nsw i32 %errcnt.2, 1
  br label %fin

fin:                                              ; preds = %entry, %lor.lhs.false, %lor.lhs.false154, %if.then158, %if.then98
  %errcnt.3 = phi i32 [ %errcnt.2, %lor.lhs.false154 ], [ %inc159, %if.then158 ], [ %inc99, %if.then98 ], [ 1, %lor.lhs.false ], [ 1, %entry ]
  %47 = load %struct.bignum_st*, %struct.bignum_st** %verify_p3, align 8, !tbaa !13
  call void @BN_free(%struct.bignum_st* noundef %47) #6
  store %struct.bignum_st* null, %struct.bignum_st** %verify_p3, align 8, !tbaa !13
  call fastcc void @cleanup_app_variables() #7
  call fastcc void @cleanup_object(i8* noundef %call) #7
  %cmp162 = icmp eq i32 %errcnt.3, 0
  %conv163 = zext i1 %cmp162 to i32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %conv163
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @raw_set_params(i8* noundef %vobj, %struct.ossl_param_st* nocapture noundef readonly %params) #0 {
entry:
  %p4 = getelementptr inbounds i8, i8* %vobj, i64 24
  %0 = bitcast i8* %p4 to i8**
  %p3 = getelementptr inbounds i8, i8* %vobj, i64 16
  %1 = bitcast i8* %p3 to %struct.bignum_st**
  %key103 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params, i64 0, i32 0
  %2 = load i8*, i8** %key103, align 8, !tbaa !31
  %cmp.not104 = icmp eq i8* %2, null
  br i1 %cmp.not104, label %cleanup67, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %p6 = getelementptr inbounds i8, i8* %vobj, i64 304
  %3 = bitcast i8* %p6 to i8**
  %p6_l = getelementptr inbounds i8, i8* %vobj, i64 312
  %4 = bitcast i8* %p6_l to i64*
  %p5 = getelementptr inbounds i8, i8* %vobj, i64 40
  %p5_l = getelementptr inbounds i8, i8* %vobj, i64 296
  %5 = bitcast i8* %p5_l to i64*
  %p4_l = getelementptr inbounds i8, i8* %vobj, i64 32
  %6 = bitcast i8* %p4_l to i64*
  %p2 = getelementptr inbounds i8, i8* %vobj, i64 8
  %7 = bitcast i8* %p2 to double*
  %p1 = bitcast i8* %vobj to i32*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %8 = phi i8* [ %2, %for.body.lr.ph ], [ %30, %for.inc ]
  %params.addr.0105 = phi %struct.ossl_param_st* [ %params, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %call = tail call i32 @strcmp(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)) #9
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params.addr.0105, i64 0, i32 2
  %9 = bitcast i8** %data to i32**
  %10 = load i32*, i32** %9, align 8, !tbaa !32
  %11 = load i32, i32* %10, align 4, !tbaa !16
  store i32 %11, i32* %p1, align 8, !tbaa !25
  br label %for.inc

if.else:                                          ; preds = %for.body
  %call4 = tail call i32 @strcmp(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #9
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.else
  %data7 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params.addr.0105, i64 0, i32 2
  %12 = bitcast i8** %data7 to double**
  %13 = load double*, double** %12, align 8, !tbaa !32
  %14 = load double, double* %13, align 8, !tbaa !18
  store double %14, double* %7, align 8, !tbaa !27
  br label %for.inc

if.else8:                                         ; preds = %if.else
  %call10 = tail call i32 @strcmp(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)) #9
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.else18

if.then12:                                        ; preds = %if.else8
  %15 = load %struct.bignum_st*, %struct.bignum_st** %1, align 8, !tbaa !28
  tail call void @BN_free(%struct.bignum_st* noundef %15) #6
  %data13 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params.addr.0105, i64 0, i32 2
  %16 = load i8*, i8** %data13, align 8, !tbaa !32
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params.addr.0105, i64 0, i32 3
  %17 = load i64, i64* %data_size, align 8, !tbaa !33
  %conv = trunc i64 %17 to i32
  %call14 = tail call %struct.bignum_st* @BN_native2bn(i8* noundef %16, i32 noundef %conv, %struct.bignum_st* noundef null) #6
  store %struct.bignum_st* %call14, %struct.bignum_st** %1, align 8, !tbaa !28
  %18 = bitcast %struct.bignum_st* %call14 to i8*
  %call16 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 141, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.11, i64 0, i64 0), i8* noundef %18) #6
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %cleanup67, label %for.inc

if.else18:                                        ; preds = %if.else8
  %call20 = tail call i32 @strcmp(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0)) #9
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.else34

if.then23:                                        ; preds = %if.else18
  %19 = load i8*, i8** %0, align 8, !tbaa !29
  tail call void @CRYPTO_free(i8* noundef %19, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 144) #6
  %data24 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params.addr.0105, i64 0, i32 2
  %20 = load i8*, i8** %data24, align 8, !tbaa !32
  %data_size25 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params.addr.0105, i64 0, i32 3
  %21 = load i64, i64* %data_size25, align 8, !tbaa !33
  %call26 = tail call i8* @CRYPTO_strndup(i8* noundef %20, i64 noundef %21, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 146) #6
  store i8* %call26, i8** %0, align 8, !tbaa !29
  %call28 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 146, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i64 0, i64 0), i8* noundef %call26) #6
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %cleanup67, label %if.end31

if.end31:                                         ; preds = %if.then23
  %22 = load i8*, i8** %0, align 8, !tbaa !29
  %call33 = tail call i64 @strlen(i8* noundef %22) #9
  store i64 %call33, i64* %6, align 8, !tbaa !34
  br label %for.inc

if.else34:                                        ; preds = %if.else18
  %call36 = tail call i32 @strcmp(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0)) #9
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.then39, label %if.else53

if.then39:                                        ; preds = %if.else34
  %data40 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params.addr.0105, i64 0, i32 2
  %23 = load i8*, i8** %data40, align 8, !tbaa !32
  %data_size41 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params.addr.0105, i64 0, i32 3
  %24 = load i64, i64* %data_size41, align 8, !tbaa !33
  %call42 = tail call i64 @OPENSSL_strnlen(i8* noundef %23, i64 noundef %24) #6
  %call43 = tail call i32 @test_size_t_lt(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 157, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i64 noundef %call42, i64 noundef 256) #6
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %cleanup67, label %if.end46

if.end46:                                         ; preds = %if.then39
  %25 = load i8*, i8** %data40, align 8, !tbaa !32
  %call48 = tail call i8* @strncpy(i8* noundef nonnull %p5, i8* noundef %25, i64 noundef %call42) #6
  %arrayidx = getelementptr inbounds i8, i8* %p5, i64 %call42
  store i8 0, i8* %arrayidx, align 1, !tbaa !23
  %call52 = tail call i64 @strlen(i8* noundef nonnull %p5) #9
  store i64 %call52, i64* %5, align 8, !tbaa !35
  br label %for.inc

if.else53:                                        ; preds = %if.else34
  %call55 = tail call i32 @strcmp(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0)) #9
  %cmp56 = icmp eq i32 %call55, 0
  br i1 %cmp56, label %if.then58, label %for.inc

if.then58:                                        ; preds = %if.else53
  %data59 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params.addr.0105, i64 0, i32 2
  %26 = bitcast i8** %data59 to i8***
  %27 = load i8**, i8*** %26, align 8, !tbaa !32
  %28 = load i8*, i8** %27, align 8, !tbaa !13
  store i8* %28, i8** %3, align 8, !tbaa !30
  %data_size60 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params.addr.0105, i64 0, i32 3
  %29 = load i64, i64* %data_size60, align 8, !tbaa !33
  store i64 %29, i64* %4, align 8, !tbaa !36
  br label %for.inc

for.inc:                                          ; preds = %if.end46, %if.then, %if.then12, %if.then58, %if.else53, %if.end31, %if.then6
  %incdec.ptr = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params.addr.0105, i64 1
  %key = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %incdec.ptr, i64 0, i32 0
  %30 = load i8*, i8** %key, align 8, !tbaa !31
  %cmp.not = icmp eq i8* %30, null
  br i1 %cmp.not, label %cleanup67, label %for.body, !llvm.loop !37

cleanup67:                                        ; preds = %if.then12, %if.then23, %for.inc, %if.then39, %entry
  %retval.3 = phi i32 [ 1, %entry ], [ 0, %if.then39 ], [ 1, %for.inc ], [ 0, %if.then23 ], [ 0, %if.then12 ]
  ret i32 %retval.3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @raw_get_params(i8* noundef %vobj, %struct.ossl_param_st* nocapture noundef %params) #0 {
entry:
  %p5 = getelementptr inbounds i8, i8* %vobj, i64 40
  %p4 = getelementptr inbounds i8, i8* %vobj, i64 24
  %0 = bitcast i8* %p4 to i8**
  %p3 = getelementptr inbounds i8, i8* %vobj, i64 16
  %1 = bitcast i8* %p3 to %struct.bignum_st**
  %key111 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params, i64 0, i32 0
  %2 = load i8*, i8** %key111, align 8, !tbaa !31
  %cmp.not112 = icmp eq i8* %2, null
  br i1 %cmp.not112, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %p6 = getelementptr inbounds i8, i8* %vobj, i64 304
  %3 = bitcast i8* %p6 to i8**
  %p2 = getelementptr inbounds i8, i8* %vobj, i64 8
  %4 = bitcast i8* %p2 to double*
  %p1 = bitcast i8* %vobj to i32*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %5 = phi i8* [ %2, %for.body.lr.ph ], [ %26, %for.inc ]
  %params.addr.0113 = phi %struct.ossl_param_st* [ %params, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %call = tail call i32 @strcmp(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)) #9
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %return_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params.addr.0113, i64 0, i32 4
  store i64 4, i64* %return_size, align 8, !tbaa !20
  %6 = load i32, i32* %p1, align 8, !tbaa !25
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params.addr.0113, i64 0, i32 2
  %7 = bitcast i8** %data to i32**
  %8 = load i32*, i32** %7, align 8, !tbaa !32
  store i32 %6, i32* %8, align 4, !tbaa !16
  br label %for.inc

if.else:                                          ; preds = %for.body
  %call4 = tail call i32 @strcmp(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #9
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.else9

if.then6:                                         ; preds = %if.else
  %return_size7 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params.addr.0113, i64 0, i32 4
  store i64 8, i64* %return_size7, align 8, !tbaa !20
  %9 = load double, double* %4, align 8, !tbaa !27
  %data8 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params.addr.0113, i64 0, i32 2
  %10 = bitcast i8** %data8 to double**
  %11 = load double*, double** %10, align 8, !tbaa !32
  store double %9, double* %11, align 8, !tbaa !18
  br label %for.inc

if.else9:                                         ; preds = %if.else
  %call11 = tail call i32 @strcmp(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)) #9
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.else24

if.then13:                                        ; preds = %if.else9
  %12 = load %struct.bignum_st*, %struct.bignum_st** %1, align 8, !tbaa !28
  %call14 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %12) #6
  %add = add nsw i32 %call14, 7
  %div = sdiv i32 %add, 8
  %conv = sext i32 %div to i64
  %return_size15 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params.addr.0113, i64 0, i32 4
  store i64 %conv, i64* %return_size15, align 8, !tbaa !20
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params.addr.0113, i64 0, i32 3
  %13 = load i64, i64* %data_size, align 8, !tbaa !33
  %call17 = tail call i32 @test_size_t_ge(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 183, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i64 noundef %13, i64 noundef %conv) #6
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then13
  %14 = load %struct.bignum_st*, %struct.bignum_st** %1, align 8, !tbaa !28
  %data20 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params.addr.0113, i64 0, i32 2
  %15 = load i8*, i8** %data20, align 8, !tbaa !32
  %16 = load i64, i64* %return_size15, align 8, !tbaa !20
  %conv22 = trunc i64 %16 to i32
  %call23 = tail call i32 @BN_bn2nativepad(%struct.bignum_st* noundef %14, i8* noundef %15, i32 noundef %conv22) #6
  br label %for.inc

if.else24:                                        ; preds = %if.else9
  %call26 = tail call i32 @strcmp(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0)) #9
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then29, label %if.else41

if.then29:                                        ; preds = %if.else24
  %17 = load i8*, i8** %0, align 8, !tbaa !29
  %call30 = tail call i64 @strlen(i8* noundef %17) #9
  %return_size31 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params.addr.0113, i64 0, i32 4
  store i64 %call30, i64* %return_size31, align 8, !tbaa !20
  %data_size32 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params.addr.0113, i64 0, i32 3
  %18 = load i64, i64* %data_size32, align 8, !tbaa !33
  %call34 = tail call i32 @test_size_t_gt(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 188, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i64 noundef %18, i64 noundef %call30) #6
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %cleanup, label %if.end37

if.end37:                                         ; preds = %if.then29
  %data38 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params.addr.0113, i64 0, i32 2
  %19 = load i8*, i8** %data38, align 8, !tbaa !32
  %20 = load i8*, i8** %0, align 8, !tbaa !29
  %call40 = tail call i8* @strcpy(i8* noundef %19, i8* noundef %20) #6
  br label %for.inc

if.else41:                                        ; preds = %if.else24
  %call43 = tail call i32 @strcmp(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0)) #9
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %if.then46, label %if.else59

if.then46:                                        ; preds = %if.else41
  %call47 = tail call i64 @strlen(i8* noundef nonnull %p5) #9
  %return_size48 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params.addr.0113, i64 0, i32 4
  store i64 %call47, i64* %return_size48, align 8, !tbaa !20
  %data_size49 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params.addr.0113, i64 0, i32 3
  %21 = load i64, i64* %data_size49, align 8, !tbaa !33
  %call51 = tail call i32 @test_size_t_gt(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 193, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i64 noundef %21, i64 noundef %call47) #6
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %cleanup, label %if.end54

if.end54:                                         ; preds = %if.then46
  %data55 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params.addr.0113, i64 0, i32 2
  %22 = load i8*, i8** %data55, align 8, !tbaa !32
  %call58 = tail call i8* @strcpy(i8* noundef %22, i8* noundef nonnull %p5) #6
  br label %for.inc

if.else59:                                        ; preds = %if.else41
  %call61 = tail call i32 @strcmp(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0)) #9
  %cmp62 = icmp eq i32 %call61, 0
  br i1 %cmp62, label %if.then64, label %for.inc

if.then64:                                        ; preds = %if.else59
  %23 = load i8*, i8** %3, align 8, !tbaa !30
  %call65 = tail call i64 @strlen(i8* noundef %23) #9
  %return_size66 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params.addr.0113, i64 0, i32 4
  store i64 %call65, i64* %return_size66, align 8, !tbaa !20
  %data68 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params.addr.0113, i64 0, i32 2
  %24 = bitcast i8** %data68 to i8***
  %25 = load i8**, i8*** %24, align 8, !tbaa !32
  store i8* %23, i8** %25, align 8, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.end, %if.end54, %if.then64, %if.else59, %if.end37, %if.then6
  %incdec.ptr = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params.addr.0113, i64 1
  %key = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %incdec.ptr, i64 0, i32 0
  %26 = load i8*, i8** %key, align 8, !tbaa !31
  %cmp.not = icmp eq i8* %26, null
  br i1 %cmp.not, label %cleanup, label %for.body, !llvm.loop !39

cleanup:                                          ; preds = %if.then13, %if.then29, %if.then46, %for.inc, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 1, %for.inc ], [ 0, %if.then46 ], [ 0, %if.then29 ], [ 0, %if.then13 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_native2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i8* @CRYPTO_strndup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #3

declare dso_local i64 @OPENSSL_strnlen(i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_size_t_lt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_size_t_ge(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @BN_bn2nativepad(%struct.bignum_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_size_t_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @api_set_params(i8* noundef %vobj, %struct.ossl_param_st* noundef %params) #0 {
entry:
  %p5_ptr = alloca i8*, align 8
  %call = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)) #6
  %cmp.not = icmp eq %struct.ossl_param_st* %call, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %p1 = bitcast i8* %vobj to i32*
  %call1 = tail call i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef nonnull %call, i32* noundef %p1) #6
  %cmp2 = icmp ne i32 %call1, 0
  %conv = zext i1 %cmp2 to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 214, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0), i32 noundef %conv) #6
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup69, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %call4 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #6
  %cmp5.not = icmp eq %struct.ossl_param_st* %call4, null
  br i1 %cmp5.not, label %if.end14, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %if.end
  %p2 = getelementptr inbounds i8, i8* %vobj, i64 8
  %0 = bitcast i8* %p2 to double*
  %call8 = tail call i32 @OSSL_PARAM_get_double(%struct.ossl_param_st* noundef nonnull %call4, double* noundef nonnull %0) #6
  %cmp9 = icmp ne i32 %call8, 0
  %conv10 = zext i1 %cmp9 to i32
  %call11 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 217, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i64 0, i64 0), i32 noundef %conv10) #6
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup69, label %if.end14

if.end14:                                         ; preds = %land.lhs.true7, %if.end
  %call15 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)) #6
  %cmp16.not = icmp eq %struct.ossl_param_st* %call15, null
  br i1 %cmp16.not, label %if.end25, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %if.end14
  %p3 = getelementptr inbounds i8, i8* %vobj, i64 16
  %1 = bitcast i8* %p3 to %struct.bignum_st**
  %call19 = tail call i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef nonnull %call15, %struct.bignum_st** noundef nonnull %1) #6
  %cmp20 = icmp ne i32 %call19, 0
  %conv21 = zext i1 %cmp20 to i32
  %call22 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 220, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i64 0, i64 0), i32 noundef %conv21) #6
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %cleanup69, label %if.end25

if.end25:                                         ; preds = %land.lhs.true18, %if.end14
  %call26 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0)) #6
  %cmp27.not = icmp eq %struct.ossl_param_st* %call26, null
  br i1 %cmp27.not, label %if.end39, label %if.then29

if.then29:                                        ; preds = %if.end25
  %p4 = getelementptr inbounds i8, i8* %vobj, i64 24
  %2 = bitcast i8* %p4 to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !29
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 223) #6
  store i8* null, i8** %2, align 8, !tbaa !29
  %call32 = tail call i32 @OSSL_PARAM_get_utf8_string(%struct.ossl_param_st* noundef nonnull %call26, i8** noundef nonnull %2, i64 noundef 0) #6
  %cmp33 = icmp ne i32 %call32, 0
  %conv34 = zext i1 %cmp33 to i32
  %call35 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 226, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv34) #6
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %cleanup69, label %if.end39

if.end39:                                         ; preds = %if.then29, %if.end25
  %call40 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0)) #6
  %cmp41.not = icmp eq %struct.ossl_param_st* %call40, null
  br i1 %cmp41.not, label %if.end54, label %if.then43

if.then43:                                        ; preds = %if.end39
  %4 = bitcast i8** %p5_ptr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #8
  %p5 = getelementptr inbounds i8, i8* %vobj, i64 40
  store i8* %p5, i8** %p5_ptr, align 8, !tbaa !13
  %call44 = call i32 @OSSL_PARAM_get_utf8_string(%struct.ossl_param_st* noundef nonnull %call40, i8** noundef nonnull %p5_ptr, i64 noundef 256) #6
  %cmp45 = icmp ne i32 %call44, 0
  %conv46 = zext i1 %cmp45 to i32
  %call47 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 231, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.25, i64 0, i64 0), i32 noundef %conv46) #6
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %cleanup69.critedge, label %if.end50

if.end50:                                         ; preds = %if.then43
  %call53 = call i64 @strlen(i8* noundef nonnull %p5) #9
  %p5_l = getelementptr inbounds i8, i8* %vobj, i64 296
  %5 = bitcast i8* %p5_l to i64*
  store i64 %call53, i64* %5, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #8
  br label %if.end54

if.end54:                                         ; preds = %if.end50, %if.end39
  %call55 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0)) #6
  %cmp56.not = icmp eq %struct.ossl_param_st* %call55, null
  br i1 %cmp56.not, label %cleanup69, label %if.then58

if.then58:                                        ; preds = %if.end54
  %p6 = getelementptr inbounds i8, i8* %vobj, i64 304
  %6 = bitcast i8* %p6 to i8**
  %call59 = call i32 @OSSL_PARAM_get_utf8_ptr(%struct.ossl_param_st* noundef nonnull %call55, i8** noundef nonnull %6) #6
  %cmp60 = icmp ne i32 %call59, 0
  %conv61 = zext i1 %cmp60 to i32
  %call62 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 236, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.26, i64 0, i64 0), i32 noundef %conv61) #6
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %cleanup69, label %if.end65

if.end65:                                         ; preds = %if.then58
  %7 = load i8*, i8** %6, align 8, !tbaa !30
  %call67 = call i64 @strlen(i8* noundef %7) #9
  %p6_l = getelementptr inbounds i8, i8* %vobj, i64 312
  %8 = bitcast i8* %p6_l to i64*
  store i64 %call67, i64* %8, align 8, !tbaa !36
  br label %cleanup69

cleanup69.critedge:                               ; preds = %if.then43
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #8
  br label %cleanup69

cleanup69:                                        ; preds = %if.end54, %if.end65, %if.then58, %cleanup69.critedge, %if.then29, %land.lhs.true18, %land.lhs.true7, %land.lhs.true
  %retval.1 = phi i32 [ 0, %land.lhs.true ], [ 0, %land.lhs.true7 ], [ 0, %land.lhs.true18 ], [ 0, %if.then29 ], [ 0, %cleanup69.critedge ], [ 0, %if.then58 ], [ 1, %if.end65 ], [ 1, %if.end54 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @api_get_params(i8* noundef %vobj, %struct.ossl_param_st* noundef %params) #0 {
entry:
  %call = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)) #6
  %cmp.not = icmp eq %struct.ossl_param_st* %call, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %p1 = bitcast i8* %vobj to i32*
  %0 = load i32, i32* %p1, align 8, !tbaa !25
  %call1 = tail call i32 @OSSL_PARAM_set_int(%struct.ossl_param_st* noundef nonnull %call, i32 noundef %0) #6
  %cmp2 = icmp ne i32 %call1, 0
  %conv = zext i1 %cmp2 to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 250, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv) #6
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %call4 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #6
  %cmp5.not = icmp eq %struct.ossl_param_st* %call4, null
  br i1 %cmp5.not, label %if.end14, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %if.end
  %p2 = getelementptr inbounds i8, i8* %vobj, i64 8
  %1 = bitcast i8* %p2 to double*
  %2 = load double, double* %1, align 8, !tbaa !27
  %call8 = tail call i32 @OSSL_PARAM_set_double(%struct.ossl_param_st* noundef nonnull %call4, double noundef %2) #6
  %cmp9 = icmp ne i32 %call8, 0
  %conv10 = zext i1 %cmp9 to i32
  %call11 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 253, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i64 0, i64 0), i32 noundef %conv10) #6
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup, label %if.end14

if.end14:                                         ; preds = %land.lhs.true7, %if.end
  %call15 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)) #6
  %cmp16.not = icmp eq %struct.ossl_param_st* %call15, null
  br i1 %cmp16.not, label %if.end25, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %if.end14
  %p3 = getelementptr inbounds i8, i8* %vobj, i64 16
  %3 = bitcast i8* %p3 to %struct.bignum_st**
  %4 = load %struct.bignum_st*, %struct.bignum_st** %3, align 8, !tbaa !28
  %call19 = tail call i32 @OSSL_PARAM_set_BN(%struct.ossl_param_st* noundef nonnull %call15, %struct.bignum_st* noundef %4) #6
  %cmp20 = icmp ne i32 %call19, 0
  %conv21 = zext i1 %cmp20 to i32
  %call22 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 256, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i64 0, i64 0), i32 noundef %conv21) #6
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %cleanup, label %if.end25

if.end25:                                         ; preds = %land.lhs.true18, %if.end14
  %call26 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0)) #6
  %cmp27.not = icmp eq %struct.ossl_param_st* %call26, null
  br i1 %cmp27.not, label %if.end36, label %land.lhs.true29

land.lhs.true29:                                  ; preds = %if.end25
  %p4 = getelementptr inbounds i8, i8* %vobj, i64 24
  %5 = bitcast i8* %p4 to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !29
  %call30 = tail call i32 @OSSL_PARAM_set_utf8_string(%struct.ossl_param_st* noundef nonnull %call26, i8* noundef %6) #6
  %cmp31 = icmp ne i32 %call30, 0
  %conv32 = zext i1 %cmp31 to i32
  %call33 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 259, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0), i32 noundef %conv32) #6
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %cleanup, label %if.end36

if.end36:                                         ; preds = %land.lhs.true29, %if.end25
  %call37 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0)) #6
  %cmp38.not = icmp eq %struct.ossl_param_st* %call37, null
  br i1 %cmp38.not, label %if.end47, label %land.lhs.true40

land.lhs.true40:                                  ; preds = %if.end36
  %p5 = getelementptr inbounds i8, i8* %vobj, i64 40
  %call41 = tail call i32 @OSSL_PARAM_set_utf8_string(%struct.ossl_param_st* noundef nonnull %call37, i8* noundef nonnull %p5) #6
  %cmp42 = icmp ne i32 %call41, 0
  %conv43 = zext i1 %cmp42 to i32
  %call44 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 262, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv43) #6
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %cleanup, label %if.end47

if.end47:                                         ; preds = %land.lhs.true40, %if.end36
  %call48 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0)) #6
  %cmp49.not = icmp eq %struct.ossl_param_st* %call48, null
  br i1 %cmp49.not, label %if.end58, label %land.lhs.true51

land.lhs.true51:                                  ; preds = %if.end47
  %p6 = getelementptr inbounds i8, i8* %vobj, i64 304
  %7 = bitcast i8* %p6 to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !30
  %call52 = tail call i32 @OSSL_PARAM_set_utf8_ptr(%struct.ossl_param_st* noundef nonnull %call48, i8* noundef %8) #6
  %cmp53 = icmp ne i32 %call52, 0
  %conv54 = zext i1 %cmp53 to i32
  %call55 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 265, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i64 0, i64 0), i32 noundef %conv54) #6
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %cleanup, label %if.end58

if.end58:                                         ; preds = %land.lhs.true51, %if.end47
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true51, %land.lhs.true40, %land.lhs.true29, %land.lhs.true18, %land.lhs.true7, %land.lhs.true, %if.end58
  %retval.0 = phi i32 [ 1, %if.end58 ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true7 ], [ 0, %land.lhs.true18 ], [ 0, %land.lhs.true29 ], [ 0, %land.lhs.true40 ], [ 0, %land.lhs.true51 ]
  ret i32 %retval.0
}

declare dso_local %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_get_double(%struct.ossl_param_st* noundef, double* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef, %struct.bignum_st** noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_get_utf8_string(%struct.ossl_param_st* noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_get_utf8_ptr(%struct.ossl_param_st* noundef, i8** noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_set_int(%struct.ossl_param_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_set_double(%struct.ossl_param_st* noundef, double noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_set_BN(%struct.ossl_param_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_set_utf8_string(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_set_utf8_ptr(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.ossl_param_st* @construct_api_params() #0 {
entry:
  %tmp = alloca %struct.ossl_param_st, align 8
  %tmp3 = alloca %struct.ossl_param_st, align 8
  %tmp6 = alloca %struct.ossl_param_st, align 8
  %tmp9 = alloca %struct.ossl_param_st, align 8
  %tmp12 = alloca %struct.ossl_param_st, align 8
  %tmp15 = alloca %struct.ossl_param_st, align 8
  %tmp18 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast %struct.ossl_param_st* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #8
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32* noundef nonnull @app_p1) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([10 x %struct.ossl_param_st]* @construct_api_params.params to i8*), i8* noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #8
  %1 = bitcast %struct.ossl_param_st* %tmp3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #8
  call void @OSSL_PARAM_construct_BN(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @bignumbin, i64 0, i64 0), i64 noundef 4096) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) bitcast (%struct.ossl_param_st* getelementptr inbounds ([10 x %struct.ossl_param_st], [10 x %struct.ossl_param_st]* @construct_api_params.params, i64 0, i64 1) to i8*), i8* noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #8
  %2 = bitcast %struct.ossl_param_st* %tmp6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #8
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp6, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @app_p4, i64 0, i64 0), i64 noundef 256) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast (%struct.ossl_param_st* getelementptr inbounds ([10 x %struct.ossl_param_st], [10 x %struct.ossl_param_st]* @construct_api_params.params, i64 0, i64 2) to i8*), i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #8
  %3 = bitcast %struct.ossl_param_st* %tmp9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #8
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp9, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @app_p5, i64 0, i64 0), i64 noundef 256) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) bitcast (%struct.ossl_param_st* getelementptr inbounds ([10 x %struct.ossl_param_st], [10 x %struct.ossl_param_st]* @construct_api_params.params, i64 0, i64 3) to i8*), i8* noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #8
  %4 = bitcast %struct.ossl_param_st* %tmp12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #8
  call void @OSSL_PARAM_construct_utf8_ptr(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp12, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8** noundef nonnull @app_p6, i64 noundef 7) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast (%struct.ossl_param_st* getelementptr inbounds ([10 x %struct.ossl_param_st], [10 x %struct.ossl_param_st]* @construct_api_params.params, i64 0, i64 4) to i8*), i8* noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #8
  %5 = bitcast %struct.ossl_param_st* %tmp15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #8
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp15, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @foo, i64 0, i64 0), i64 noundef 1) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) bitcast (%struct.ossl_param_st* getelementptr inbounds ([10 x %struct.ossl_param_st], [10 x %struct.ossl_param_st]* @construct_api_params.params, i64 0, i64 5) to i8*), i8* noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #8
  %6 = bitcast %struct.ossl_param_st* %tmp18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #8
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp18) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast (%struct.ossl_param_st* getelementptr inbounds ([10 x %struct.ossl_param_st], [10 x %struct.ossl_param_st]* @construct_api_params.params, i64 0, i64 6) to i8*), i8* noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #8
  ret %struct.ossl_param_st* getelementptr inbounds ([10 x %struct.ossl_param_st], [10 x %struct.ossl_param_st]* @construct_api_params.params, i64 0, i64 0)
}

declare dso_local void @OSSL_PARAM_construct_int(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare dso_local void @OSSL_PARAM_construct_BN(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_construct_utf8_ptr(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @init_object() unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 320, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 102) #6
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 102, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.81, i64 0, i64 0), i8* noundef %call) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %p1 = bitcast i8* %call to i32*
  store i32 42, i32* %p1, align 8, !tbaa !25
  %p2 = getelementptr inbounds i8, i8* %call, i64 8
  %0 = bitcast i8* %p2 to double*
  store double 6.283000e+00, double* %0, align 8, !tbaa !27
  %p3 = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %p3 to %struct.bignum_st**
  %call2 = tail call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %1, i8* noundef getelementptr inbounds ([125 x i8], [125 x i8]* @.str.35, i64 0, i64 0)) #6
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 107, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.82, i64 0, i64 0), i32 noundef %conv) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %fail, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = tail call i8* @CRYPTO_strdup(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 109) #6
  %p4 = getelementptr inbounds i8, i8* %call, i64 24
  %2 = bitcast i8* %p4 to i8**
  store i8* %call7, i8** %2, align 8, !tbaa !29
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 109, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.83, i64 0, i64 0), i8* noundef %call7) #6
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %fail, label %if.end11

if.end11:                                         ; preds = %if.end6
  %p5 = getelementptr inbounds i8, i8* %call, i64 40
  %call12 = tail call i8* @strcpy(i8* noundef nonnull %p5, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i64 0, i64 0)) #6
  %p6 = getelementptr inbounds i8, i8* %call, i64 304
  %3 = bitcast i8* %p6 to i8**
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i8** %3, align 8, !tbaa !30
  br label %cleanup

fail:                                             ; preds = %if.end6, %if.end
  tail call fastcc void @cleanup_object(i8* noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %fail, %if.end11
  %retval.0 = phi i8* [ %call, %if.end11 ], [ null, %fail ], [ null, %entry ]
  ret i8* %retval.0
}

declare dso_local i32 @BN_hex2bn(%struct.bignum_st** noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @init_app_variables() unnamed_addr #0 {
entry:
  tail call fastcc void @cleanup_app_variables() #7
  store i32 17, i32* @app_p1, align 4, !tbaa !16
  store double 4.711000e+01, double* @app_p2, align 8, !tbaa !18
  %call1 = tail call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull @app_p3, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i64 0, i64 0)) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load %struct.bignum_st*, %struct.bignum_st** @app_p3, align 8, !tbaa !13
  %call2 = tail call i32 @BN_bn2nativepad(%struct.bignum_st* noundef %0, i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @bignumbin, i64 0, i64 0), i32 noundef 4096) #6
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call i8* @strcpy(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @app_p4, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i64 0, i64 0)) #6
  %call4 = tail call i8* @strcpy(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @app_p5, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i64 0, i64 0)) #6
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i64 0, i64 0), i8** @app_p6, align 8, !tbaa !13
  store i8 122, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @foo, i64 0, i64 0), align 1, !tbaa !23
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  ret void
}

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_double_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, double noundef, double noundef) local_unnamed_addr #1

declare dso_local i32 @test_BN_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_str_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_size_t_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_char_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8 noundef signext, i8 noundef signext) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @cleanup_app_variables() unnamed_addr #0 {
entry:
  %0 = load %struct.bignum_st*, %struct.bignum_st** @app_p3, align 8, !tbaa !13
  tail call void @BN_free(%struct.bignum_st* noundef %0) #6
  store %struct.bignum_st* null, %struct.bignum_st** @app_p3, align 8, !tbaa !13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @cleanup_object(i8* noundef %vobj) unnamed_addr #0 {
entry:
  %p3 = getelementptr inbounds i8, i8* %vobj, i64 16
  %0 = bitcast i8* %p3 to %struct.bignum_st**
  %1 = load %struct.bignum_st*, %struct.bignum_st** %0, align 8, !tbaa !28
  tail call void @BN_free(%struct.bignum_st* noundef %1) #6
  store %struct.bignum_st* null, %struct.bignum_st** %0, align 8, !tbaa !28
  %p4 = getelementptr inbounds i8, i8* %vobj, i64 24
  %2 = bitcast i8* %p4 to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !29
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 93) #6
  store i8* null, i8** %2, align 8, !tbaa !29
  tail call void @CRYPTO_free(i8* noundef %vobj, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 95) #6
  ret void
}

declare dso_local i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_int_from_text(%struct.int_from_text_test_st* nocapture noundef readonly byval(%struct.int_from_text_test_st) align 8 %a) unnamed_addr #0 {
entry:
  %param = alloca %struct.ossl_param_st, align 8
  %val = alloca i64, align 8
  %0 = bitcast %struct.ossl_param_st* %param to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #8
  %1 = bitcast i64* %val to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  store i64 0, i64* %val, align 8, !tbaa !41
  %argname = getelementptr inbounds %struct.int_from_text_test_st, %struct.int_from_text_test_st* %a, i64 0, i32 0
  %2 = load i8*, i8** %argname, align 8, !tbaa !42
  %strval = getelementptr inbounds %struct.int_from_text_test_st, %struct.int_from_text_test_st* %a, i64 0, i32 1
  %3 = load i8*, i8** %strval, align 8, !tbaa !44
  %call = call i32 @OSSL_PARAM_allocate_from_text(%struct.ossl_param_st* noundef nonnull %param, %struct.ossl_param_st* noundef getelementptr inbounds ([4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* @params_from_text, i64 0, i64 0), i8* noundef %2, i8* noundef %3, i64 noundef 0, i32* noundef null) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %res1 = getelementptr inbounds %struct.int_from_text_test_st, %struct.int_from_text_test_st* %a, i64 0, i32 3
  %4 = load i32, i32* %res1, align 8, !tbaa !45
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 599, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.84, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %lnot.ext = zext i1 %tobool2.not to i32
  br label %cleanup

if.end8:                                          ; preds = %entry
  %call9 = call i32 @OSSL_PARAM_get_long(%struct.ossl_param_st* noundef nonnull %param, i64* noundef nonnull %val) #6
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 2
  %5 = load i8*, i8** %data, align 8, !tbaa !32
  call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 604) #6
  %res10 = getelementptr inbounds %struct.int_from_text_test_st, %struct.int_from_text_test_st* %a, i64 0, i32 3
  %6 = load i32, i32* %res10, align 8, !tbaa !45
  %tobool11.not = icmp eq i32 %call9, %6
  br i1 %tobool11.not, label %lor.lhs.false, label %if.end8.if.then12_crit_edge

if.end8.if.then12_crit_edge:                      ; preds = %if.end8
  %intval15.phi.trans.insert = getelementptr inbounds %struct.int_from_text_test_st, %struct.int_from_text_test_st* %a, i64 0, i32 2
  %.pre = load i64, i64* %intval15.phi.trans.insert, align 8, !tbaa !46
  %.pre21 = load i64, i64* %val, align 8, !tbaa !41
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.end8
  %7 = load i64, i64* %val, align 8, !tbaa !41
  %intval = getelementptr inbounds %struct.int_from_text_test_st, %struct.int_from_text_test_st* %a, i64 0, i32 2
  %8 = load i64, i64* %intval, align 8, !tbaa !46
  %cmp.not = icmp eq i64 %7, %8
  br i1 %cmp.not, label %cleanup, label %if.then12

if.then12:                                        ; preds = %if.end8.if.then12_crit_edge, %lor.lhs.false
  %9 = phi i64 [ %.pre21, %if.end8.if.then12_crit_edge ], [ %7, %lor.lhs.false ]
  %10 = phi i64 [ %.pre, %if.end8.if.then12_crit_edge ], [ %8, %lor.lhs.false ]
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 608, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.85, i64 0, i64 0), i8* noundef %2, i8* noundef %3, i64 noundef %10, i64 noundef %9) #6
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.then12, %if.end
  %retval.0 = phi i32 [ 0, %if.then12 ], [ %lnot.ext, %if.end ], [ %call9, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #8
  ret i32 %retval.0
}

declare dso_local i32 @OSSL_PARAM_allocate_from_text(%struct.ossl_param_st* noundef, %struct.ossl_param_st* noundef, i8* noundef, i8* noundef, i64 noundef, i32* noundef) local_unnamed_addr #1

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_get_long(%struct.ossl_param_st* noundef, i64* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !5, i64 16}
!4 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!4, !5, i64 8}
!9 = !{!10, !5, i64 0}
!10 = !{!"param_owner_st", !5, i64 0, !5, i64 8}
!11 = !{!4, !5, i64 0}
!12 = !{!10, !5, i64 8}
!13 = !{!5, !5, i64 0}
!14 = !{!15, !5, i64 8}
!15 = !{!"provider_dispatch_st", !5, i64 0, !5, i64 8}
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !6, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"double", !6, i64 0}
!20 = !{!21, !22, i64 32}
!21 = !{!"ossl_param_st", !5, i64 0, !17, i64 8, !5, i64 16, !22, i64 24, !22, i64 32}
!22 = !{!"long", !6, i64 0}
!23 = !{!6, !6, i64 0}
!24 = !{!15, !5, i64 0}
!25 = !{!26, !17, i64 0}
!26 = !{!"object_st", !17, i64 0, !19, i64 8, !5, i64 16, !5, i64 24, !22, i64 32, !6, i64 40, !22, i64 296, !5, i64 304, !22, i64 312}
!27 = !{!26, !19, i64 8}
!28 = !{!26, !5, i64 16}
!29 = !{!26, !5, i64 24}
!30 = !{!26, !5, i64 304}
!31 = !{!21, !5, i64 0}
!32 = !{!21, !5, i64 16}
!33 = !{!21, !22, i64 24}
!34 = !{!26, !22, i64 32}
!35 = !{!26, !22, i64 296}
!36 = !{!26, !22, i64 312}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = distinct !{!39, !38}
!40 = !{i64 0, i64 8, !13, i64 8, i64 4, !16, i64 16, i64 8, !13, i64 24, i64 8, !41, i64 32, i64 8, !41}
!41 = !{!22, !22, i64 0}
!42 = !{!43, !5, i64 0}
!43 = !{!"int_from_text_test_st", !5, i64 0, !5, i64 8, !22, i64 16, !17, i64 24}
!44 = !{!43, !5, i64 8}
!45 = !{!43, !17, i64 24}
!46 = !{!43, !22, i64 16}
