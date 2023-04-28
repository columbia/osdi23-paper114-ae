; ModuleID = 'test/param_build_test.c'
source_filename = "test/param_build_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.bignum_st = type opaque
%struct.ossl_param_bld_st = type opaque

@.str = private unnamed_addr constant [21 x i8] c"template_public_test\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"template_private_test\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"builder_limit_test\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"builder_merge_test\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"test/param_build_test.c\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"bld\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"OSSL_PARAM_BLD_push_long(bld, \22l\22, 42)\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"OSSL_PARAM_BLD_push_int32(bld, \22i32\22, 1532)\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"OSSL_PARAM_BLD_push_int64(bld, \22i64\22, -9999999)\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"OSSL_PARAM_BLD_push_time_t(bld, \22t\22, 11224)\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"OSSL_PARAM_BLD_push_double(bld, \22d\22, 1.61803398875)\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"bn = BN_new()\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"BN_set_word(bn, 1729)\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"OSSL_PARAM_BLD_push_BN(bld, \22bignumber\22, bn)\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"bignumber\00", align 1
@.str.20 = private unnamed_addr constant [69 x i8] c"OSSL_PARAM_BLD_push_utf8_string(bld, \22utf8_s\22, \22foo\22, sizeof(\22foo\22))\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"utf8_s\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.23 = private unnamed_addr constant [59 x i8] c"OSSL_PARAM_BLD_push_utf8_ptr(bld, \22utf8_p\22, \22bar-boom\22, 0)\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"utf8_p\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"bar-boom\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"OSSL_PARAM_BLD_push_int(bld, \22i\22, -6)\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"params_blt = OSSL_PARAM_BLD_to_param(bld)\00", align 1
@params_empty = internal constant [1 x %struct.ossl_param_st] zeroinitializer, align 16
@.str.29 = private unnamed_addr constant [35 x i8] c"p = OSSL_PARAM_locate(params, \22i\22)\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"OSSL_PARAM_get_int(p, &i)\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"p->key\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"\22i\22\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"p->data_type\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"OSSL_PARAM_INTEGER\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"p->data_size\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"sizeof(int)\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"-6\00", align 1
@.str.38 = private unnamed_addr constant [37 x i8] c"p = OSSL_PARAM_locate(params, \22i32\22)\00", align 1
@.str.39 = private unnamed_addr constant [30 x i8] c"OSSL_PARAM_get_int32(p, &i32)\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"\22i32\22\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"sizeof(int32_t)\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"(int)i32\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"1532\00", align 1
@.str.44 = private unnamed_addr constant [37 x i8] c"p = OSSL_PARAM_locate(params, \22i64\22)\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"\22i64\22\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"sizeof(int64_t)\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"OSSL_PARAM_get_int64(p, &i64)\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"(long)i64\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"-9999999\00", align 1
@.str.50 = private unnamed_addr constant [35 x i8] c"p = OSSL_PARAM_locate(params, \22l\22)\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"\22l\22\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"sizeof(long int)\00", align 1
@.str.53 = private unnamed_addr constant [27 x i8] c"OSSL_PARAM_get_long(p, &l)\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"42\00", align 1
@.str.55 = private unnamed_addr constant [35 x i8] c"p = OSSL_PARAM_locate(params, \22t\22)\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"\22t\22\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"sizeof(time_t)\00", align 1
@.str.58 = private unnamed_addr constant [29 x i8] c"OSSL_PARAM_get_time_t(p, &t)\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"11224\00", align 1
@.str.60 = private unnamed_addr constant [35 x i8] c"p = OSSL_PARAM_locate(params, \22d\22)\00", align 1
@.str.61 = private unnamed_addr constant [29 x i8] c"OSSL_PARAM_get_double(p, &d)\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"\22d\22\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"OSSL_PARAM_REAL\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"sizeof(double)\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"1.61803398875\00", align 1
@.str.66 = private unnamed_addr constant [40 x i8] c"p = OSSL_PARAM_locate(params, \22utf8_s\22)\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"p->data\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"\22foo\22\00", align 1
@.str.69 = private unnamed_addr constant [39 x i8] c"OSSL_PARAM_get_utf8_string(p, &utf, 0)\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"utf\00", align 1
@.str.71 = private unnamed_addr constant [40 x i8] c"p = OSSL_PARAM_locate(params, \22utf8_p\22)\00", align 1
@.str.72 = private unnamed_addr constant [34 x i8] c"OSSL_PARAM_get_utf8_ptr(p, &cutf)\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"cutf\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"\22bar-boom\22\00", align 1
@.str.75 = private unnamed_addr constant [43 x i8] c"p = OSSL_PARAM_locate(params, \22bignumber\22)\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"\22bignumber\22\00", align 1
@.str.77 = private unnamed_addr constant [28 x i8] c"OSSL_PARAM_UNSIGNED_INTEGER\00", align 1
@.str.78 = private unnamed_addr constant [30 x i8] c"OSSL_PARAM_get_BN(p, &bn_res)\00", align 1
@.str.79 = private unnamed_addr constant [19 x i8] c"BN_cmp(bn_res, bn)\00", align 1
@.str.80 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.81 = private unnamed_addr constant [42 x i8] c"data1 = OPENSSL_secure_malloc(data1_size)\00", align 1
@.str.82 = private unnamed_addr constant [42 x i8] c"data2 = OPENSSL_secure_malloc(data2_size)\00", align 1
@.str.83 = private unnamed_addr constant [27 x i8] c"bld = OSSL_PARAM_BLD_new()\00", align 1
@.str.84 = private unnamed_addr constant [38 x i8] c"OSSL_PARAM_BLD_push_uint(bld, \22i\22, 6)\00", align 1
@.str.85 = private unnamed_addr constant [40 x i8] c"OSSL_PARAM_BLD_push_ulong(bld, \22l\22, 42)\00", align 1
@.str.86 = private unnamed_addr constant [45 x i8] c"OSSL_PARAM_BLD_push_uint32(bld, \22i32\22, 1532)\00", align 1
@.str.87 = private unnamed_addr constant [48 x i8] c"OSSL_PARAM_BLD_push_uint64(bld, \22i64\22, 9999999)\00", align 1
@.str.88 = private unnamed_addr constant [45 x i8] c"OSSL_PARAM_BLD_push_size_t(bld, \22st\22, 65537)\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c"st\00", align 1
@.str.90 = private unnamed_addr constant [21 x i8] c"bn = BN_secure_new()\00", align 1
@.str.91 = private unnamed_addr constant [66 x i8] c"OSSL_PARAM_BLD_push_octet_string(bld, \22oct_s\22, data1, data1_size)\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"oct_s\00", align 1
@.str.93 = private unnamed_addr constant [63 x i8] c"OSSL_PARAM_BLD_push_octet_ptr(bld, \22oct_p\22, data2, data2_size)\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"oct_p\00", align 1
@.str.95 = private unnamed_addr constant [33 x i8] c"CRYPTO_secure_allocated(p->data)\00", align 1
@.str.96 = private unnamed_addr constant [27 x i8] c"OSSL_PARAM_get_uint(p, &i)\00", align 1
@.str.97 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.98 = private unnamed_addr constant [31 x i8] c"OSSL_PARAM_get_uint32(p, &i32)\00", align 1
@.str.99 = private unnamed_addr constant [18 x i8] c"(unsigned int)i32\00", align 1
@.str.100 = private unnamed_addr constant [31 x i8] c"OSSL_PARAM_get_uint64(p, &i64)\00", align 1
@.str.101 = private unnamed_addr constant [19 x i8] c"(unsigned long)i64\00", align 1
@.str.102 = private unnamed_addr constant [8 x i8] c"9999999\00", align 1
@.str.103 = private unnamed_addr constant [26 x i8] c"sizeof(unsigned long int)\00", align 1
@.str.104 = private unnamed_addr constant [28 x i8] c"OSSL_PARAM_get_ulong(p, &l)\00", align 1
@.str.105 = private unnamed_addr constant [36 x i8] c"p = OSSL_PARAM_locate(params, \22st\22)\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"\22st\22\00", align 1
@.str.107 = private unnamed_addr constant [15 x i8] c"sizeof(size_t)\00", align 1
@.str.108 = private unnamed_addr constant [30 x i8] c"OSSL_PARAM_get_size_t(p, &st)\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"65537\00", align 1
@.str.110 = private unnamed_addr constant [39 x i8] c"p = OSSL_PARAM_locate(params, \22oct_s\22)\00", align 1
@.str.111 = private unnamed_addr constant [8 x i8] c"\22oct_s\22\00", align 1
@.str.112 = private unnamed_addr constant [24 x i8] c"OSSL_PARAM_OCTET_STRING\00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c"data1\00", align 1
@.str.114 = private unnamed_addr constant [39 x i8] c"p = OSSL_PARAM_locate(params, \22oct_p\22)\00", align 1
@.str.115 = private unnamed_addr constant [43 x i8] c"CRYPTO_secure_allocated(*(void **)p->data)\00", align 1
@.str.116 = private unnamed_addr constant [8 x i8] c"\22oct_p\22\00", align 1
@.str.117 = private unnamed_addr constant [21 x i8] c"OSSL_PARAM_OCTET_PTR\00", align 1
@.str.118 = private unnamed_addr constant [18 x i8] c"*(void **)p->data\00", align 1
@.str.119 = private unnamed_addr constant [6 x i8] c"data2\00", align 1
@.str.120 = private unnamed_addr constant [32 x i8] c"BN_get_flags(bn, BN_FLG_SECURE)\00", align 1
@.str.121 = private unnamed_addr constant [14 x i8] c"BN_FLG_SECURE\00", align 1
@.str.122 = private unnamed_addr constant [50 x i8] c"OSSL_PARAM_BLD_push_int(bld, names[i], 3 * i + 1)\00", align 1
@.str.123 = private unnamed_addr constant [38 x i8] c"params = OSSL_PARAM_BLD_to_param(bld)\00", align 1
@.str.124 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.125 = private unnamed_addr constant [37 x i8] c"OSSL_PARAM_BLD_push_int(bld, \22g\22, 2)\00", align 1
@.str.126 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.127 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@builder_merge_test.data1 = internal global [7 x i32] [i32 2, i32 3, i32 5, i32 7, i32 11, i32 15, i32 17], align 16
@builder_merge_test.data2 = internal global [5 x i8] c"\02\04\06\08\0A", align 1
@.str.128 = private unnamed_addr constant [26 x i8] c"bn_priv = BN_secure_new()\00", align 1
@.str.129 = private unnamed_addr constant [27 x i8] c"BN_set_word(bn_priv, 1729)\00", align 1
@.str.130 = private unnamed_addr constant [55 x i8] c"OSSL_PARAM_BLD_push_BN(bld, \22bignumber_priv\22, bn_priv)\00", align 1
@.str.131 = private unnamed_addr constant [15 x i8] c"bignumber_priv\00", align 1
@.str.132 = private unnamed_addr constant [5 x i8] c"bld2\00", align 1
@.str.133 = private unnamed_addr constant [70 x i8] c"OSSL_PARAM_BLD_push_octet_string(bld2, \22oct_s\22, data1, sizeof(data1))\00", align 1
@.str.134 = private unnamed_addr constant [67 x i8] c"OSSL_PARAM_BLD_push_octet_ptr(bld2, \22oct_p\22, data2, sizeof(data2))\00", align 1
@.str.135 = private unnamed_addr constant [44 x i8] c"OSSL_PARAM_BLD_push_uint32(bld2, \22i32\22, 99)\00", align 1
@.str.136 = private unnamed_addr constant [18 x i8] c"bn_pub = BN_new()\00", align 1
@.str.137 = private unnamed_addr constant [26 x i8] c"BN_set_word(bn_pub, 0x42)\00", align 1
@.str.138 = private unnamed_addr constant [54 x i8] c"OSSL_PARAM_BLD_push_BN(bld2, \22bignumber_pub\22, bn_pub)\00", align 1
@.str.139 = private unnamed_addr constant [14 x i8] c"bignumber_pub\00", align 1
@.str.140 = private unnamed_addr constant [44 x i8] c"params2_blt = OSSL_PARAM_BLD_to_param(bld2)\00", align 1
@.str.141 = private unnamed_addr constant [51 x i8] c"params = OSSL_PARAM_merge(params_blt, params2_blt)\00", align 1
@.str.142 = private unnamed_addr constant [3 x i8] c"99\00", align 1
@.str.143 = private unnamed_addr constant [47 x i8] c"p = OSSL_PARAM_locate(params, \22bignumber_pub\22)\00", align 1
@.str.144 = private unnamed_addr constant [16 x i8] c"\22bignumber_pub\22\00", align 1
@.str.145 = private unnamed_addr constant [34 x i8] c"OSSL_PARAM_get_BN(p, &bn_pub_res)\00", align 1
@.str.146 = private unnamed_addr constant [27 x i8] c"BN_cmp(bn_pub_res, bn_pub)\00", align 1
@.str.147 = private unnamed_addr constant [48 x i8] c"p = OSSL_PARAM_locate(params, \22bignumber_priv\22)\00", align 1
@.str.148 = private unnamed_addr constant [17 x i8] c"\22bignumber_priv\22\00", align 1
@.str.149 = private unnamed_addr constant [35 x i8] c"OSSL_PARAM_get_BN(p, &bn_priv_res)\00", align 1
@.str.150 = private unnamed_addr constant [29 x i8] c"BN_cmp(bn_priv_res, bn_priv)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 (i32)* noundef nonnull @template_public_test, i32 noundef 5, i32 noundef 1) #3
  %call = tail call i32 @CRYPTO_secure_malloc_init(i64 noundef 65536, i64 noundef 16) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 (i32)* noundef nonnull @template_private_test, i32 noundef 5, i32 noundef 1) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @add_test(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 ()* noundef nonnull @builder_limit_test) #3
  tail call void @add_test(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 ()* noundef nonnull @builder_merge_test) #3
  ret i32 1
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @template_public_test(i32 noundef %tstid) #0 {
entry:
  %bn_res = alloca %struct.bignum_st*, align 8
  %i = alloca i32, align 4
  %l = alloca i64, align 8
  %i32 = alloca i32, align 4
  %i64 = alloca i64, align 8
  %d = alloca double, align 8
  %t = alloca i64, align 8
  %utf = alloca i8*, align 8
  %cutf = alloca i8*, align 8
  %call = tail call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #3
  %0 = bitcast %struct.bignum_st** %bn_res to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store %struct.bignum_st* null, %struct.bignum_st** %bn_res, align 8, !tbaa !3
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #4
  %2 = bitcast i64* %l to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #4
  %3 = bitcast i32* %i32 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #4
  %4 = bitcast i64* %i64 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4
  %5 = bitcast double* %d to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #4
  %6 = bitcast i64* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #4
  %7 = bitcast i8** %utf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #4
  store i8* null, i8** %utf, align 8, !tbaa !3
  %8 = bitcast i8** %cutf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #4
  %9 = bitcast %struct.ossl_param_bld_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 34, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* noundef %9) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err.thread, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @OSSL_PARAM_BLD_push_long(%struct.ossl_param_bld_st* noundef %call, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i64 noundef 42) #3
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 noundef %conv) #3
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err.thread, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call i32 @OSSL_PARAM_BLD_push_int32(%struct.ossl_param_bld_st* noundef %call, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 noundef 1532) #3
  %cmp7 = icmp ne i32 %call6, 0
  %conv8 = zext i1 %cmp7 to i32
  %call9 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 36, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 noundef %conv8) #3
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %err.thread, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false5
  %call12 = tail call i32 @OSSL_PARAM_BLD_push_int64(%struct.ossl_param_bld_st* noundef %call, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i64 noundef -9999999) #3
  %cmp13 = icmp ne i32 %call12, 0
  %conv14 = zext i1 %cmp13 to i32
  %call15 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 37, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv14) #3
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err.thread, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false11
  %call18 = tail call i32 @OSSL_PARAM_BLD_push_time_t(%struct.ossl_param_bld_st* noundef %call, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i64 noundef 11224) #3
  %cmp19 = icmp ne i32 %call18, 0
  %conv20 = zext i1 %cmp19 to i32
  %call21 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv20) #3
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err.thread, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false17
  %call24 = tail call i32 @OSSL_PARAM_BLD_push_double(%struct.ossl_param_bld_st* noundef %call, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), double noundef 0x3FF9E3779B97F681) #3
  %cmp25 = icmp ne i32 %call24, 0
  %conv26 = zext i1 %cmp25 to i32
  %call27 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 39, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14, i64 0, i64 0), i32 noundef %conv26) #3
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err.thread, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false23
  %call30 = tail call %struct.bignum_st* @BN_new() #3
  %10 = bitcast %struct.bignum_st* %call30 to i8*
  %call31 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 40, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* noundef %10) #3
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err.thread, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false29
  %call34 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call30, i64 noundef 1729) #3
  %cmp35 = icmp ne i32 %call34, 0
  %conv36 = zext i1 %cmp35 to i32
  %call37 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 41, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i32 noundef %conv36) #3
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %err.thread, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %lor.lhs.false33
  %call40 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), %struct.bignum_st* noundef %call30) #3
  %cmp41 = icmp ne i32 %call40, 0
  %conv42 = zext i1 %cmp41 to i32
  %call43 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 42, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i64 0, i64 0), i32 noundef %conv42) #3
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %err.thread, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false39
  %call46 = tail call i32 @OSSL_PARAM_BLD_push_utf8_string(%struct.ossl_param_bld_st* noundef %call, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i64 noundef 4) #3
  %cmp47 = icmp ne i32 %call46, 0
  %conv48 = zext i1 %cmp47 to i32
  %call49 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.20, i64 0, i64 0), i32 noundef %conv48) #3
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %err.thread, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %lor.lhs.false45
  %call52 = tail call i32 @OSSL_PARAM_BLD_push_utf8_ptr(%struct.ossl_param_bld_st* noundef %call, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i64 noundef 0) #3
  %cmp53 = icmp ne i32 %call52, 0
  %conv54 = zext i1 %cmp53 to i32
  %call55 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.23, i64 0, i64 0), i32 noundef %conv54) #3
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %err.thread, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %lor.lhs.false51
  %call58 = tail call i32 @OSSL_PARAM_BLD_push_int(%struct.ossl_param_bld_st* noundef %call, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), i32 noundef -6) #3
  %cmp59 = icmp ne i32 %call58, 0
  %conv60 = zext i1 %cmp59 to i32
  %call61 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.26, i64 0, i64 0), i32 noundef %conv60) #3
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %err.thread, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %lor.lhs.false57
  %call64 = tail call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef %call) #3
  %11 = bitcast %struct.ossl_param_st* %call64 to i8*
  %call65 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.28, i64 0, i64 0), i8* noundef %11) #3
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false63
  switch i32 %tstid, label %sw.default [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb67
    i32 2, label %sw.bb69
    i32 3, label %sw.bb71
  ]

sw.bb67:                                          ; preds = %if.end
  %call68 = tail call %struct.ossl_param_st* @OSSL_PARAM_merge(%struct.ossl_param_st* noundef %call64, %struct.ossl_param_st* noundef getelementptr inbounds ([1 x %struct.ossl_param_st], [1 x %struct.ossl_param_st]* @params_empty, i64 0, i64 0)) #3
  br label %sw.epilog

sw.bb69:                                          ; preds = %if.end
  %call70 = tail call %struct.ossl_param_st* @OSSL_PARAM_dup(%struct.ossl_param_st* noundef %call64) #3
  br label %sw.epilog

sw.bb71:                                          ; preds = %if.end
  %call72 = tail call %struct.ossl_param_st* @OSSL_PARAM_merge(%struct.ossl_param_st* noundef %call64, %struct.ossl_param_st* noundef getelementptr inbounds ([1 x %struct.ossl_param_st], [1 x %struct.ossl_param_st]* @params_empty, i64 0, i64 0)) #3
  %call73 = tail call %struct.ossl_param_st* @OSSL_PARAM_dup(%struct.ossl_param_st* noundef %call72) #3
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %call74 = tail call %struct.ossl_param_st* @OSSL_PARAM_dup(%struct.ossl_param_st* noundef %call64) #3
  %call75 = tail call %struct.ossl_param_st* @OSSL_PARAM_merge(%struct.ossl_param_st* noundef %call74, %struct.ossl_param_st* noundef getelementptr inbounds ([1 x %struct.ossl_param_st], [1 x %struct.ossl_param_st]* @params_empty, i64 0, i64 0)) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.default, %sw.bb71, %sw.bb69, %sw.bb67
  %params.0 = phi %struct.ossl_param_st* [ %call75, %sw.default ], [ %call73, %sw.bb71 ], [ %call70, %sw.bb69 ], [ %call68, %sw.bb67 ], [ %call64, %if.end ]
  %p1.0 = phi %struct.ossl_param_st* [ %call74, %sw.default ], [ %call72, %sw.bb71 ], [ null, %sw.bb69 ], [ null, %sw.bb67 ], [ null, %if.end ]
  %call76 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params.0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0)) #3
  %12 = bitcast %struct.ossl_param_st* %call76 to i8*
  %call77 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i64 0, i64 0), i8* noundef %12) #3
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %err, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %sw.epilog
  %call80 = call i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef %call76, i32* noundef nonnull %i) #3
  %cmp81 = icmp ne i32 %call80, 0
  %conv82 = zext i1 %cmp81 to i32
  %call83 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i64 0, i64 0), i32 noundef %conv82) #3
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %err, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %lor.lhs.false79
  %key = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call76, i64 0, i32 0
  %13 = load i8*, i8** %key, align 8, !tbaa !7
  %call86 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8* noundef %13, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0)) #3
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %err, label %lor.lhs.false88

lor.lhs.false88:                                  ; preds = %lor.lhs.false85
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call76, i64 0, i32 1
  %14 = load i32, i32* %data_type, align 8, !tbaa !11
  %call89 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 74, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i64 0, i64 0), i32 noundef %14, i32 noundef 1) #3
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %err, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %lor.lhs.false88
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call76, i64 0, i32 3
  %15 = load i64, i64* %data_size, align 8, !tbaa !12
  %call92 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 75, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i64 noundef %15, i64 noundef 4) #3
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %err, label %lor.lhs.false94

lor.lhs.false94:                                  ; preds = %lor.lhs.false91
  %16 = load i32, i32* %i, align 4, !tbaa !13
  %call95 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i32 noundef %16, i32 noundef -6) #3
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %err, label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %lor.lhs.false94
  %call98 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params.0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)) #3
  %17 = bitcast %struct.ossl_param_st* %call98 to i8*
  %call99 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.38, i64 0, i64 0), i8* noundef %17) #3
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %err, label %lor.lhs.false101

lor.lhs.false101:                                 ; preds = %lor.lhs.false97
  %call102 = call i32 @OSSL_PARAM_get_int32(%struct.ossl_param_st* noundef %call98, i32* noundef nonnull %i32) #3
  %cmp103 = icmp ne i32 %call102, 0
  %conv104 = zext i1 %cmp103 to i32
  %call105 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.39, i64 0, i64 0), i32 noundef %conv104) #3
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %err, label %lor.lhs.false107

lor.lhs.false107:                                 ; preds = %lor.lhs.false101
  %key108 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call98, i64 0, i32 0
  %18 = load i8*, i8** %key108, align 8, !tbaa !7
  %call109 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0), i8* noundef %18, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)) #3
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %err, label %lor.lhs.false111

lor.lhs.false111:                                 ; preds = %lor.lhs.false107
  %data_type112 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call98, i64 0, i32 1
  %19 = load i32, i32* %data_type112, align 8, !tbaa !11
  %call113 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i64 0, i64 0), i32 noundef %19, i32 noundef 1) #3
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %err, label %lor.lhs.false115

lor.lhs.false115:                                 ; preds = %lor.lhs.false111
  %data_size116 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call98, i64 0, i32 3
  %20 = load i64, i64* %data_size116, align 8, !tbaa !12
  %call117 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i64 0, i64 0), i64 noundef %20, i64 noundef 4) #3
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %err, label %lor.lhs.false119

lor.lhs.false119:                                 ; preds = %lor.lhs.false115
  %21 = load i32, i32* %i32, align 4, !tbaa !13
  %call120 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), i32 noundef %21, i32 noundef 1532) #3
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %err, label %lor.lhs.false122

lor.lhs.false122:                                 ; preds = %lor.lhs.false119
  %call123 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params.0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)) #3
  %22 = bitcast %struct.ossl_param_st* %call123 to i8*
  %call124 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.44, i64 0, i64 0), i8* noundef %22) #3
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %err, label %lor.lhs.false126

lor.lhs.false126:                                 ; preds = %lor.lhs.false122
  %key127 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call123, i64 0, i32 0
  %23 = load i8*, i8** %key127, align 8, !tbaa !7
  %call128 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), i8* noundef %23, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)) #3
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %err, label %lor.lhs.false130

lor.lhs.false130:                                 ; preds = %lor.lhs.false126
  %data_type131 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call123, i64 0, i32 1
  %24 = load i32, i32* %data_type131, align 8, !tbaa !11
  %call132 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i64 0, i64 0), i32 noundef %24, i32 noundef 1) #3
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %err, label %lor.lhs.false134

lor.lhs.false134:                                 ; preds = %lor.lhs.false130
  %data_size135 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call123, i64 0, i32 3
  %25 = load i64, i64* %data_size135, align 8, !tbaa !12
  %call136 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i64 0, i64 0), i64 noundef %25, i64 noundef 8) #3
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %err, label %lor.lhs.false138

lor.lhs.false138:                                 ; preds = %lor.lhs.false134
  %call139 = call i32 @OSSL_PARAM_get_int64(%struct.ossl_param_st* noundef nonnull %call123, i64* noundef nonnull %i64) #3
  %cmp140 = icmp ne i32 %call139, 0
  %conv141 = zext i1 %cmp140 to i32
  %call142 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.47, i64 0, i64 0), i32 noundef %conv141) #3
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %err, label %lor.lhs.false144

lor.lhs.false144:                                 ; preds = %lor.lhs.false138
  %26 = load i64, i64* %i64, align 8, !tbaa !14
  %call145 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i64 noundef %26, i64 noundef -9999999) #3
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %err, label %lor.lhs.false147

lor.lhs.false147:                                 ; preds = %lor.lhs.false144
  %call148 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params.0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #3
  %27 = bitcast %struct.ossl_param_st* %call148 to i8*
  %call149 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.50, i64 0, i64 0), i8* noundef %27) #3
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %err, label %lor.lhs.false151

lor.lhs.false151:                                 ; preds = %lor.lhs.false147
  %key152 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call148, i64 0, i32 0
  %28 = load i8*, i8** %key152, align 8, !tbaa !7
  %call153 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i64 0, i64 0), i8* noundef %28, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #3
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %err, label %lor.lhs.false155

lor.lhs.false155:                                 ; preds = %lor.lhs.false151
  %data_type156 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call148, i64 0, i32 1
  %29 = load i32, i32* %data_type156, align 8, !tbaa !11
  %call157 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 94, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i64 0, i64 0), i32 noundef %29, i32 noundef 1) #3
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %err, label %lor.lhs.false159

lor.lhs.false159:                                 ; preds = %lor.lhs.false155
  %data_size160 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call148, i64 0, i32 3
  %30 = load i64, i64* %data_size160, align 8, !tbaa !12
  %call161 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i64 0, i64 0), i64 noundef %30, i64 noundef 8) #3
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %err, label %lor.lhs.false163

lor.lhs.false163:                                 ; preds = %lor.lhs.false159
  %call164 = call i32 @OSSL_PARAM_get_long(%struct.ossl_param_st* noundef nonnull %call148, i64* noundef nonnull %l) #3
  %cmp165 = icmp ne i32 %call164, 0
  %conv166 = zext i1 %cmp165 to i32
  %call167 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 96, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.53, i64 0, i64 0), i32 noundef %conv166) #3
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %err, label %lor.lhs.false169

lor.lhs.false169:                                 ; preds = %lor.lhs.false163
  %31 = load i64, i64* %l, align 8, !tbaa !14
  %call170 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 97, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0), i64 noundef %31, i64 noundef 42) #3
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %err, label %lor.lhs.false172

lor.lhs.false172:                                 ; preds = %lor.lhs.false169
  %call173 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params.0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #3
  %32 = bitcast %struct.ossl_param_st* %call173 to i8*
  %call174 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.55, i64 0, i64 0), i8* noundef %32) #3
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %err, label %lor.lhs.false176

lor.lhs.false176:                                 ; preds = %lor.lhs.false172
  %key177 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call173, i64 0, i32 0
  %33 = load i8*, i8** %key177, align 8, !tbaa !7
  %call178 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 100, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i64 0, i64 0), i8* noundef %33, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #3
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %err, label %lor.lhs.false180

lor.lhs.false180:                                 ; preds = %lor.lhs.false176
  %data_type181 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call173, i64 0, i32 1
  %34 = load i32, i32* %data_type181, align 8, !tbaa !11
  %call182 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 101, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i64 0, i64 0), i32 noundef %34, i32 noundef 1) #3
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %err, label %lor.lhs.false184

lor.lhs.false184:                                 ; preds = %lor.lhs.false180
  %data_size185 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call173, i64 0, i32 3
  %35 = load i64, i64* %data_size185, align 8, !tbaa !12
  %call186 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 102, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i64 0, i64 0), i64 noundef %35, i64 noundef 8) #3
  %tobool187.not = icmp eq i32 %call186, 0
  br i1 %tobool187.not, label %err, label %lor.lhs.false188

lor.lhs.false188:                                 ; preds = %lor.lhs.false184
  %call189 = call i32 @OSSL_PARAM_get_time_t(%struct.ossl_param_st* noundef nonnull %call173, i64* noundef nonnull %t) #3
  %cmp190 = icmp ne i32 %call189, 0
  %conv191 = zext i1 %cmp190 to i32
  %call192 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 103, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv191) #3
  %tobool193.not = icmp eq i32 %call192, 0
  br i1 %tobool193.not, label %err, label %lor.lhs.false194

lor.lhs.false194:                                 ; preds = %lor.lhs.false188
  %36 = load i64, i64* %t, align 8, !tbaa !14
  %call195 = call i32 @test_time_t_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i64 0, i64 0), i64 noundef %36, i64 noundef 11224) #3
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %err, label %lor.lhs.false197

lor.lhs.false197:                                 ; preds = %lor.lhs.false194
  %call198 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params.0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)) #3
  %37 = bitcast %struct.ossl_param_st* %call198 to i8*
  %call199 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 106, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.60, i64 0, i64 0), i8* noundef %37) #3
  %tobool200.not = icmp eq i32 %call199, 0
  br i1 %tobool200.not, label %err, label %lor.lhs.false201

lor.lhs.false201:                                 ; preds = %lor.lhs.false197
  %call202 = call i32 @OSSL_PARAM_get_double(%struct.ossl_param_st* noundef %call198, double* noundef nonnull %d) #3
  %cmp203 = icmp ne i32 %call202, 0
  %conv204 = zext i1 %cmp203 to i32
  %call205 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 107, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.61, i64 0, i64 0), i32 noundef %conv204) #3
  %tobool206.not = icmp eq i32 %call205, 0
  br i1 %tobool206.not, label %err, label %lor.lhs.false207

lor.lhs.false207:                                 ; preds = %lor.lhs.false201
  %key208 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call198, i64 0, i32 0
  %38 = load i8*, i8** %key208, align 8, !tbaa !7
  %call209 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 108, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i64 0, i64 0), i8* noundef %38, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)) #3
  %tobool210.not = icmp eq i32 %call209, 0
  br i1 %tobool210.not, label %err, label %lor.lhs.false211

lor.lhs.false211:                                 ; preds = %lor.lhs.false207
  %data_type212 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call198, i64 0, i32 1
  %39 = load i32, i32* %data_type212, align 8, !tbaa !11
  %call213 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 109, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.63, i64 0, i64 0), i32 noundef %39, i32 noundef 3) #3
  %tobool214.not = icmp eq i32 %call213, 0
  br i1 %tobool214.not, label %err, label %lor.lhs.false215

lor.lhs.false215:                                 ; preds = %lor.lhs.false211
  %data_size216 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call198, i64 0, i32 3
  %40 = load i64, i64* %data_size216, align 8, !tbaa !12
  %call217 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 110, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i64 0, i64 0), i64 noundef %40, i64 noundef 8) #3
  %tobool218.not = icmp eq i32 %call217, 0
  br i1 %tobool218.not, label %err, label %lor.lhs.false219

lor.lhs.false219:                                 ; preds = %lor.lhs.false215
  %41 = load double, double* %d, align 8, !tbaa !15
  %call220 = call i32 @test_double_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 111, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i64 0, i64 0), double noundef %41, double noundef 0x3FF9E3779B97F681) #3
  %tobool221.not = icmp eq i32 %call220, 0
  br i1 %tobool221.not, label %err, label %lor.lhs.false222

lor.lhs.false222:                                 ; preds = %lor.lhs.false219
  %call223 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params.0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0)) #3
  %42 = bitcast %struct.ossl_param_st* %call223 to i8*
  %call224 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 113, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.66, i64 0, i64 0), i8* noundef %42) #3
  %tobool225.not = icmp eq i32 %call224, 0
  br i1 %tobool225.not, label %err, label %lor.lhs.false226

lor.lhs.false226:                                 ; preds = %lor.lhs.false222
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call223, i64 0, i32 2
  %43 = load i8*, i8** %data, align 8, !tbaa !17
  %call227 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 114, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0), i8* noundef %43, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0)) #3
  %tobool228.not = icmp eq i32 %call227, 0
  br i1 %tobool228.not, label %err, label %lor.lhs.false229

lor.lhs.false229:                                 ; preds = %lor.lhs.false226
  %call230 = call i32 @OSSL_PARAM_get_utf8_string(%struct.ossl_param_st* noundef nonnull %call223, i8** noundef nonnull %utf, i64 noundef 0) #3
  %cmp231 = icmp ne i32 %call230, 0
  %conv232 = zext i1 %cmp231 to i32
  %call233 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 115, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv232) #3
  %tobool234.not = icmp eq i32 %call233, 0
  br i1 %tobool234.not, label %err, label %lor.lhs.false235

lor.lhs.false235:                                 ; preds = %lor.lhs.false229
  %44 = load i8*, i8** %utf, align 8, !tbaa !3
  %call236 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 116, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.70, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0), i8* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0)) #3
  %tobool237.not = icmp eq i32 %call236, 0
  br i1 %tobool237.not, label %err, label %lor.lhs.false238

lor.lhs.false238:                                 ; preds = %lor.lhs.false235
  %call239 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params.0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0)) #3
  %45 = bitcast %struct.ossl_param_st* %call239 to i8*
  %call240 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 118, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.71, i64 0, i64 0), i8* noundef %45) #3
  %tobool241.not = icmp eq i32 %call240, 0
  br i1 %tobool241.not, label %err, label %lor.lhs.false242

lor.lhs.false242:                                 ; preds = %lor.lhs.false238
  %call243 = call i32 @OSSL_PARAM_get_utf8_ptr(%struct.ossl_param_st* noundef %call239, i8** noundef nonnull %cutf) #3
  %cmp244 = icmp ne i32 %call243, 0
  %conv245 = zext i1 %cmp244 to i32
  %call246 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 119, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.72, i64 0, i64 0), i32 noundef %conv245) #3
  %tobool247.not = icmp eq i32 %call246, 0
  br i1 %tobool247.not, label %err, label %lor.lhs.false248

lor.lhs.false248:                                 ; preds = %lor.lhs.false242
  %46 = load i8*, i8** %cutf, align 8, !tbaa !3
  %call249 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 120, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i64 0, i64 0), i8* noundef %46, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0)) #3
  %tobool250.not = icmp eq i32 %call249, 0
  br i1 %tobool250.not, label %err, label %lor.lhs.false251

lor.lhs.false251:                                 ; preds = %lor.lhs.false248
  %call252 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params.0, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0)) #3
  %47 = bitcast %struct.ossl_param_st* %call252 to i8*
  %call253 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 122, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.75, i64 0, i64 0), i8* noundef %47) #3
  %tobool254.not = icmp eq i32 %call253, 0
  br i1 %tobool254.not, label %err, label %lor.lhs.false255

lor.lhs.false255:                                 ; preds = %lor.lhs.false251
  %key256 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call252, i64 0, i32 0
  %48 = load i8*, i8** %key256, align 8, !tbaa !7
  %call257 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 123, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i64 0, i64 0), i8* noundef %48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0)) #3
  %tobool258.not = icmp eq i32 %call257, 0
  br i1 %tobool258.not, label %err, label %lor.lhs.false259

lor.lhs.false259:                                 ; preds = %lor.lhs.false255
  %data_type260 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call252, i64 0, i32 1
  %49 = load i32, i32* %data_type260, align 8, !tbaa !11
  %call261 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 124, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.77, i64 0, i64 0), i32 noundef %49, i32 noundef 2) #3
  %tobool262.not = icmp eq i32 %call261, 0
  br i1 %tobool262.not, label %err, label %lor.lhs.false263

lor.lhs.false263:                                 ; preds = %lor.lhs.false259
  %call264 = call i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef nonnull %call252, %struct.bignum_st** noundef nonnull %bn_res) #3
  %cmp265 = icmp ne i32 %call264, 0
  %conv266 = zext i1 %cmp265 to i32
  %call267 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 125, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.78, i64 0, i64 0), i32 noundef %conv266) #3
  %tobool268.not = icmp eq i32 %call267, 0
  br i1 %tobool268.not, label %err, label %lor.lhs.false269

lor.lhs.false269:                                 ; preds = %lor.lhs.false263
  %50 = load %struct.bignum_st*, %struct.bignum_st** %bn_res, align 8, !tbaa !3
  %call270 = call i32 @BN_cmp(%struct.bignum_st* noundef %50, %struct.bignum_st* noundef %call30) #3
  %call271 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 126, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.79, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.80, i64 0, i64 0), i32 noundef %call270, i32 noundef 0) #3
  %tobool272.not = icmp ne i32 %call271, 0
  %spec.select = zext i1 %tobool272.not to i32
  br label %err

err.thread:                                       ; preds = %lor.lhs.false57, %lor.lhs.false51, %lor.lhs.false45, %lor.lhs.false39, %lor.lhs.false33, %lor.lhs.false29, %lor.lhs.false23, %lor.lhs.false17, %lor.lhs.false11, %lor.lhs.false5, %lor.lhs.false, %entry
  %bn.0.ph = phi %struct.bignum_st* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false11 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false23 ], [ %call30, %lor.lhs.false29 ], [ %call30, %lor.lhs.false33 ], [ %call30, %lor.lhs.false39 ], [ %call30, %lor.lhs.false45 ], [ %call30, %lor.lhs.false51 ], [ %call30, %lor.lhs.false57 ]
  tail call void @CRYPTO_free(i8* noundef null, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 130) #3
  br label %if.end278

err:                                              ; preds = %lor.lhs.false269, %sw.epilog, %lor.lhs.false79, %lor.lhs.false85, %lor.lhs.false88, %lor.lhs.false91, %lor.lhs.false94, %lor.lhs.false97, %lor.lhs.false101, %lor.lhs.false107, %lor.lhs.false111, %lor.lhs.false115, %lor.lhs.false119, %lor.lhs.false122, %lor.lhs.false126, %lor.lhs.false130, %lor.lhs.false134, %lor.lhs.false138, %lor.lhs.false144, %lor.lhs.false147, %lor.lhs.false151, %lor.lhs.false155, %lor.lhs.false159, %lor.lhs.false163, %lor.lhs.false169, %lor.lhs.false172, %lor.lhs.false176, %lor.lhs.false180, %lor.lhs.false184, %lor.lhs.false188, %lor.lhs.false194, %lor.lhs.false197, %lor.lhs.false201, %lor.lhs.false207, %lor.lhs.false211, %lor.lhs.false215, %lor.lhs.false219, %lor.lhs.false222, %lor.lhs.false226, %lor.lhs.false229, %lor.lhs.false235, %lor.lhs.false238, %lor.lhs.false242, %lor.lhs.false248, %lor.lhs.false251, %lor.lhs.false255, %lor.lhs.false259, %lor.lhs.false263, %lor.lhs.false63
  %params.1 = phi %struct.ossl_param_st* [ %params.0, %lor.lhs.false263 ], [ %params.0, %lor.lhs.false259 ], [ %params.0, %lor.lhs.false255 ], [ %params.0, %lor.lhs.false251 ], [ %params.0, %lor.lhs.false248 ], [ %params.0, %lor.lhs.false242 ], [ %params.0, %lor.lhs.false238 ], [ %params.0, %lor.lhs.false235 ], [ %params.0, %lor.lhs.false229 ], [ %params.0, %lor.lhs.false226 ], [ %params.0, %lor.lhs.false222 ], [ %params.0, %lor.lhs.false219 ], [ %params.0, %lor.lhs.false215 ], [ %params.0, %lor.lhs.false211 ], [ %params.0, %lor.lhs.false207 ], [ %params.0, %lor.lhs.false201 ], [ %params.0, %lor.lhs.false197 ], [ %params.0, %lor.lhs.false194 ], [ %params.0, %lor.lhs.false188 ], [ %params.0, %lor.lhs.false184 ], [ %params.0, %lor.lhs.false180 ], [ %params.0, %lor.lhs.false176 ], [ %params.0, %lor.lhs.false172 ], [ %params.0, %lor.lhs.false169 ], [ %params.0, %lor.lhs.false163 ], [ %params.0, %lor.lhs.false159 ], [ %params.0, %lor.lhs.false155 ], [ %params.0, %lor.lhs.false151 ], [ %params.0, %lor.lhs.false147 ], [ %params.0, %lor.lhs.false144 ], [ %params.0, %lor.lhs.false138 ], [ %params.0, %lor.lhs.false134 ], [ %params.0, %lor.lhs.false130 ], [ %params.0, %lor.lhs.false126 ], [ %params.0, %lor.lhs.false122 ], [ %params.0, %lor.lhs.false119 ], [ %params.0, %lor.lhs.false115 ], [ %params.0, %lor.lhs.false111 ], [ %params.0, %lor.lhs.false107 ], [ %params.0, %lor.lhs.false101 ], [ %params.0, %lor.lhs.false97 ], [ %params.0, %lor.lhs.false94 ], [ %params.0, %lor.lhs.false91 ], [ %params.0, %lor.lhs.false88 ], [ %params.0, %lor.lhs.false85 ], [ %params.0, %lor.lhs.false79 ], [ %params.0, %sw.epilog ], [ null, %lor.lhs.false63 ], [ %params.0, %lor.lhs.false269 ]
  %p1.1 = phi %struct.ossl_param_st* [ %p1.0, %lor.lhs.false263 ], [ %p1.0, %lor.lhs.false259 ], [ %p1.0, %lor.lhs.false255 ], [ %p1.0, %lor.lhs.false251 ], [ %p1.0, %lor.lhs.false248 ], [ %p1.0, %lor.lhs.false242 ], [ %p1.0, %lor.lhs.false238 ], [ %p1.0, %lor.lhs.false235 ], [ %p1.0, %lor.lhs.false229 ], [ %p1.0, %lor.lhs.false226 ], [ %p1.0, %lor.lhs.false222 ], [ %p1.0, %lor.lhs.false219 ], [ %p1.0, %lor.lhs.false215 ], [ %p1.0, %lor.lhs.false211 ], [ %p1.0, %lor.lhs.false207 ], [ %p1.0, %lor.lhs.false201 ], [ %p1.0, %lor.lhs.false197 ], [ %p1.0, %lor.lhs.false194 ], [ %p1.0, %lor.lhs.false188 ], [ %p1.0, %lor.lhs.false184 ], [ %p1.0, %lor.lhs.false180 ], [ %p1.0, %lor.lhs.false176 ], [ %p1.0, %lor.lhs.false172 ], [ %p1.0, %lor.lhs.false169 ], [ %p1.0, %lor.lhs.false163 ], [ %p1.0, %lor.lhs.false159 ], [ %p1.0, %lor.lhs.false155 ], [ %p1.0, %lor.lhs.false151 ], [ %p1.0, %lor.lhs.false147 ], [ %p1.0, %lor.lhs.false144 ], [ %p1.0, %lor.lhs.false138 ], [ %p1.0, %lor.lhs.false134 ], [ %p1.0, %lor.lhs.false130 ], [ %p1.0, %lor.lhs.false126 ], [ %p1.0, %lor.lhs.false122 ], [ %p1.0, %lor.lhs.false119 ], [ %p1.0, %lor.lhs.false115 ], [ %p1.0, %lor.lhs.false111 ], [ %p1.0, %lor.lhs.false107 ], [ %p1.0, %lor.lhs.false101 ], [ %p1.0, %lor.lhs.false97 ], [ %p1.0, %lor.lhs.false94 ], [ %p1.0, %lor.lhs.false91 ], [ %p1.0, %lor.lhs.false88 ], [ %p1.0, %lor.lhs.false85 ], [ %p1.0, %lor.lhs.false79 ], [ %p1.0, %sw.epilog ], [ null, %lor.lhs.false63 ], [ %p1.0, %lor.lhs.false269 ]
  %res.0 = phi i32 [ 0, %lor.lhs.false263 ], [ 0, %lor.lhs.false259 ], [ 0, %lor.lhs.false255 ], [ 0, %lor.lhs.false251 ], [ 0, %lor.lhs.false248 ], [ 0, %lor.lhs.false242 ], [ 0, %lor.lhs.false238 ], [ 0, %lor.lhs.false235 ], [ 0, %lor.lhs.false229 ], [ 0, %lor.lhs.false226 ], [ 0, %lor.lhs.false222 ], [ 0, %lor.lhs.false219 ], [ 0, %lor.lhs.false215 ], [ 0, %lor.lhs.false211 ], [ 0, %lor.lhs.false207 ], [ 0, %lor.lhs.false201 ], [ 0, %lor.lhs.false197 ], [ 0, %lor.lhs.false194 ], [ 0, %lor.lhs.false188 ], [ 0, %lor.lhs.false184 ], [ 0, %lor.lhs.false180 ], [ 0, %lor.lhs.false176 ], [ 0, %lor.lhs.false172 ], [ 0, %lor.lhs.false169 ], [ 0, %lor.lhs.false163 ], [ 0, %lor.lhs.false159 ], [ 0, %lor.lhs.false155 ], [ 0, %lor.lhs.false151 ], [ 0, %lor.lhs.false147 ], [ 0, %lor.lhs.false144 ], [ 0, %lor.lhs.false138 ], [ 0, %lor.lhs.false134 ], [ 0, %lor.lhs.false130 ], [ 0, %lor.lhs.false126 ], [ 0, %lor.lhs.false122 ], [ 0, %lor.lhs.false119 ], [ 0, %lor.lhs.false115 ], [ 0, %lor.lhs.false111 ], [ 0, %lor.lhs.false107 ], [ 0, %lor.lhs.false101 ], [ 0, %lor.lhs.false97 ], [ 0, %lor.lhs.false94 ], [ 0, %lor.lhs.false91 ], [ 0, %lor.lhs.false88 ], [ 0, %lor.lhs.false85 ], [ 0, %lor.lhs.false79 ], [ 0, %sw.epilog ], [ 0, %lor.lhs.false63 ], [ %spec.select, %lor.lhs.false269 ]
  %51 = bitcast %struct.ossl_param_st* %p1.1 to i8*
  call void @CRYPTO_free(i8* noundef %51, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 130) #3
  %cmp275.not = icmp eq %struct.ossl_param_st* %params.1, %call64
  br i1 %cmp275.not, label %if.end278, label %if.then277

if.then277:                                       ; preds = %err
  %52 = bitcast %struct.ossl_param_st* %params.1 to i8*
  call void @CRYPTO_free(i8* noundef %52, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 132) #3
  br label %if.end278

if.end278:                                        ; preds = %err.thread, %if.then277, %err
  %res.0355 = phi i32 [ 0, %err.thread ], [ %res.0, %if.then277 ], [ %res.0, %err ]
  %bn.0354 = phi %struct.bignum_st* [ %bn.0.ph, %err.thread ], [ %call30, %if.then277 ], [ %call30, %err ]
  %params_blt.0353 = phi %struct.ossl_param_st* [ null, %err.thread ], [ %call64, %if.then277 ], [ %call64, %err ]
  call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %params_blt.0353) #3
  call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef %call) #3
  %53 = load i8*, i8** %utf, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %53, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 135) #3
  call void @BN_free(%struct.bignum_st* noundef %bn.0354) #3
  %54 = load %struct.bignum_st*, %struct.bignum_st** %bn_res, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %54) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %res.0355
}

declare dso_local i32 @CRYPTO_secure_malloc_init(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @template_private_test(i32 noundef %tstid) #0 {
entry:
  %i = alloca i32, align 4
  %l = alloca i64, align 8
  %i32 = alloca i32, align 4
  %i64 = alloca i64, align 8
  %st = alloca i64, align 8
  %bn_res = alloca %struct.bignum_st*, align 8
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4
  %1 = bitcast i64* %l to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #4
  %2 = bitcast i32* %i32 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #4
  %3 = bitcast i64* %i64 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #4
  %4 = bitcast i64* %st to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4
  %5 = bitcast %struct.bignum_st** %bn_res to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #4
  store %struct.bignum_st* null, %struct.bignum_st** %bn_res, align 8, !tbaa !3
  %call = tail call i8* @CRYPTO_secure_malloc(i64 noundef 48, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 158) #3
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 158, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.81, i64 0, i64 0), i8* noundef %call) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err.thread, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i8* @CRYPTO_secure_malloc(i64 noundef 20, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 159) #3
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 159, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.82, i64 0, i64 0), i8* noundef %call2) #3
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err.thread, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #3
  %6 = bitcast %struct.ossl_param_bld_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 160, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.83, i64 0, i64 0), i8* noundef %6) #3
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err.thread, label %for.body.preheader

for.body.preheader:                               ; preds = %lor.lhs.false5
  %7 = bitcast i8* %call to <4 x i32>*
  store <4 x i32> <i32 0, i32 -16, i32 -32, i32 -48>, <4 x i32>* %7, align 4, !tbaa !13
  %arrayidx.4 = getelementptr inbounds i8, i8* %call, i64 16
  %8 = bitcast i8* %arrayidx.4 to <4 x i32>*
  store <4 x i32> <i32 -64, i32 -80, i32 -96, i32 -112>, <4 x i32>* %8, align 4, !tbaa !13
  %arrayidx.8 = getelementptr inbounds i8, i8* %call, i64 32
  %9 = bitcast i8* %arrayidx.8 to <4 x i32>*
  store <4 x i32> <i32 -128, i32 -144, i32 -160, i32 -176>, <4 x i32>* %9, align 4, !tbaa !13
  %10 = bitcast i8* %call2 to <4 x i32>*
  store <4 x i32> <i32 0, i32 2, i32 4, i32 6>, <4 x i32>* %10, align 4, !tbaa !13
  %arrayidx14.4 = getelementptr inbounds i8, i8* %call2, i64 16
  %11 = bitcast i8* %arrayidx14.4 to i32*
  store i32 8, i32* %11, align 4, !tbaa !13
  %call18 = tail call i32 @OSSL_PARAM_BLD_push_uint(%struct.ossl_param_bld_st* noundef %call6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), i32 noundef 6) #3
  %cmp19 = icmp ne i32 %call18, 0
  %conv = zext i1 %cmp19 to i32
  %call20 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 168, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.84, i64 0, i64 0), i32 noundef %conv) #3
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err.thread, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %for.body.preheader
  %call23 = tail call i32 @OSSL_PARAM_BLD_push_ulong(%struct.ossl_param_bld_st* noundef %call6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i64 noundef 42) #3
  %cmp24 = icmp ne i32 %call23, 0
  %conv25 = zext i1 %cmp24 to i32
  %call26 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 169, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.85, i64 0, i64 0), i32 noundef %conv25) #3
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err.thread, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false22
  %call29 = tail call i32 @OSSL_PARAM_BLD_push_uint32(%struct.ossl_param_bld_st* noundef %call6, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 noundef 1532) #3
  %cmp30 = icmp ne i32 %call29, 0
  %conv31 = zext i1 %cmp30 to i32
  %call32 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 170, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.86, i64 0, i64 0), i32 noundef %conv31) #3
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err.thread, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %lor.lhs.false28
  %call35 = tail call i32 @OSSL_PARAM_BLD_push_uint64(%struct.ossl_param_bld_st* noundef %call6, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i64 noundef 9999999) #3
  %cmp36 = icmp ne i32 %call35, 0
  %conv37 = zext i1 %cmp36 to i32
  %call38 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 171, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.87, i64 0, i64 0), i32 noundef %conv37) #3
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %err.thread, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %lor.lhs.false34
  %call41 = tail call i32 @OSSL_PARAM_BLD_push_size_t(%struct.ossl_param_bld_st* noundef %call6, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.89, i64 0, i64 0), i64 noundef 65537) #3
  %cmp42 = icmp ne i32 %call41, 0
  %conv43 = zext i1 %cmp42 to i32
  %call44 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 172, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.88, i64 0, i64 0), i32 noundef %conv43) #3
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %err.thread, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %lor.lhs.false40
  %call47 = tail call %struct.bignum_st* @BN_secure_new() #3
  %12 = bitcast %struct.bignum_st* %call47 to i8*
  %call48 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 173, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.90, i64 0, i64 0), i8* noundef %12) #3
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %err.thread, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %lor.lhs.false46
  %call51 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call47, i64 noundef 1729) #3
  %cmp52 = icmp ne i32 %call51, 0
  %conv53 = zext i1 %cmp52 to i32
  %call54 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 174, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i32 noundef %conv53) #3
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %err.thread, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %lor.lhs.false50
  %call57 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call6, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), %struct.bignum_st* noundef %call47) #3
  %cmp58 = icmp ne i32 %call57, 0
  %conv59 = zext i1 %cmp58 to i32
  %call60 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 175, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i64 0, i64 0), i32 noundef %conv59) #3
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %err.thread, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %lor.lhs.false56
  %call63 = tail call i32 @OSSL_PARAM_BLD_push_octet_string(%struct.ossl_param_bld_st* noundef %call6, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i64 0, i64 0), i8* noundef nonnull %call, i64 noundef 48) #3
  %cmp64 = icmp ne i32 %call63, 0
  %conv65 = zext i1 %cmp64 to i32
  %call66 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 177, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.91, i64 0, i64 0), i32 noundef %conv65) #3
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %err.thread, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %lor.lhs.false62
  %call69 = tail call i32 @OSSL_PARAM_BLD_push_octet_ptr(%struct.ossl_param_bld_st* noundef %call6, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i64 0, i64 0), i8* noundef nonnull %call2, i64 noundef 20) #3
  %cmp70 = icmp ne i32 %call69, 0
  %conv71 = zext i1 %cmp70 to i32
  %call72 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 179, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.93, i64 0, i64 0), i32 noundef %conv71) #3
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %err.thread, label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %lor.lhs.false68
  %call75 = tail call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef %call6) #3
  %13 = bitcast %struct.ossl_param_st* %call75 to i8*
  %call76 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 180, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.28, i64 0, i64 0), i8* noundef %13) #3
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %err, label %if.end79

if.end79:                                         ; preds = %lor.lhs.false74
  switch i32 %tstid, label %sw.default [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb80
    i32 2, label %sw.bb82
    i32 3, label %sw.bb84
  ]

sw.bb80:                                          ; preds = %if.end79
  %call81 = tail call %struct.ossl_param_st* @OSSL_PARAM_merge(%struct.ossl_param_st* noundef %call75, %struct.ossl_param_st* noundef getelementptr inbounds ([1 x %struct.ossl_param_st], [1 x %struct.ossl_param_st]* @params_empty, i64 0, i64 0)) #3
  br label %sw.epilog

sw.bb82:                                          ; preds = %if.end79
  %call83 = tail call %struct.ossl_param_st* @OSSL_PARAM_dup(%struct.ossl_param_st* noundef %call75) #3
  br label %sw.epilog

sw.bb84:                                          ; preds = %if.end79
  %call85 = tail call %struct.ossl_param_st* @OSSL_PARAM_merge(%struct.ossl_param_st* noundef %call75, %struct.ossl_param_st* noundef getelementptr inbounds ([1 x %struct.ossl_param_st], [1 x %struct.ossl_param_st]* @params_empty, i64 0, i64 0)) #3
  %call86 = tail call %struct.ossl_param_st* @OSSL_PARAM_dup(%struct.ossl_param_st* noundef %call85) #3
  br label %sw.epilog

sw.default:                                       ; preds = %if.end79
  %call87 = tail call %struct.ossl_param_st* @OSSL_PARAM_dup(%struct.ossl_param_st* noundef %call75) #3
  %call88 = tail call %struct.ossl_param_st* @OSSL_PARAM_merge(%struct.ossl_param_st* noundef %call87, %struct.ossl_param_st* noundef getelementptr inbounds ([1 x %struct.ossl_param_st], [1 x %struct.ossl_param_st]* @params_empty, i64 0, i64 0)) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end79, %sw.default, %sw.bb84, %sw.bb82, %sw.bb80
  %params.0 = phi %struct.ossl_param_st* [ %call88, %sw.default ], [ %call86, %sw.bb84 ], [ %call83, %sw.bb82 ], [ %call81, %sw.bb80 ], [ %call75, %if.end79 ]
  %p1.0 = phi %struct.ossl_param_st* [ %call87, %sw.default ], [ %call85, %sw.bb84 ], [ null, %sw.bb82 ], [ null, %sw.bb80 ], [ null, %if.end79 ]
  %call89 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params.0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0)) #3
  %14 = bitcast %struct.ossl_param_st* %call89 to i8*
  %call90 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 202, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i64 0, i64 0), i8* noundef %14) #3
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %err, label %lor.lhs.false92

lor.lhs.false92:                                  ; preds = %sw.epilog
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call89, i64 0, i32 2
  %15 = load i8*, i8** %data, align 8, !tbaa !17
  %call93 = tail call i32 @CRYPTO_secure_allocated(i8* noundef %15) #3
  %cmp94 = icmp ne i32 %call93, 0
  %conv95 = zext i1 %cmp94 to i32
  %call96 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 203, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.95, i64 0, i64 0), i32 noundef %conv95) #3
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %err, label %lor.lhs.false98

lor.lhs.false98:                                  ; preds = %lor.lhs.false92
  %call99 = call i32 @OSSL_PARAM_get_uint(%struct.ossl_param_st* noundef nonnull %call89, i32* noundef nonnull %i) #3
  %cmp100 = icmp ne i32 %call99, 0
  %conv101 = zext i1 %cmp100 to i32
  %call102 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 204, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.96, i64 0, i64 0), i32 noundef %conv101) #3
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %err, label %lor.lhs.false104

lor.lhs.false104:                                 ; preds = %lor.lhs.false98
  %key = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call89, i64 0, i32 0
  %16 = load i8*, i8** %key, align 8, !tbaa !7
  %call105 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 205, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8* noundef %16, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0)) #3
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %err, label %lor.lhs.false107

lor.lhs.false107:                                 ; preds = %lor.lhs.false104
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call89, i64 0, i32 1
  %17 = load i32, i32* %data_type, align 8, !tbaa !11
  %call108 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 206, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.77, i64 0, i64 0), i32 noundef %17, i32 noundef 2) #3
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %err, label %lor.lhs.false110

lor.lhs.false110:                                 ; preds = %lor.lhs.false107
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call89, i64 0, i32 3
  %18 = load i64, i64* %data_size, align 8, !tbaa !12
  %call111 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 207, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i64 noundef %18, i64 noundef 4) #3
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %err, label %lor.lhs.false113

lor.lhs.false113:                                 ; preds = %lor.lhs.false110
  %19 = load i32, i32* %i, align 4, !tbaa !13
  %call114 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 208, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i64 0, i64 0), i32 noundef %19, i32 noundef 6) #3
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %err, label %lor.lhs.false116

lor.lhs.false116:                                 ; preds = %lor.lhs.false113
  %call117 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params.0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)) #3
  %20 = bitcast %struct.ossl_param_st* %call117 to i8*
  %call118 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 210, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.38, i64 0, i64 0), i8* noundef %20) #3
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %err, label %lor.lhs.false120

lor.lhs.false120:                                 ; preds = %lor.lhs.false116
  %data121 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call117, i64 0, i32 2
  %21 = load i8*, i8** %data121, align 8, !tbaa !17
  %call122 = call i32 @CRYPTO_secure_allocated(i8* noundef %21) #3
  %cmp123 = icmp ne i32 %call122, 0
  %conv124 = zext i1 %cmp123 to i32
  %call125 = call i32 @test_false(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 211, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.95, i64 0, i64 0), i32 noundef %conv124) #3
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %err, label %lor.lhs.false127

lor.lhs.false127:                                 ; preds = %lor.lhs.false120
  %call128 = call i32 @OSSL_PARAM_get_uint32(%struct.ossl_param_st* noundef nonnull %call117, i32* noundef nonnull %i32) #3
  %cmp129 = icmp ne i32 %call128, 0
  %conv130 = zext i1 %cmp129 to i32
  %call131 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 212, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.98, i64 0, i64 0), i32 noundef %conv130) #3
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %err, label %lor.lhs.false133

lor.lhs.false133:                                 ; preds = %lor.lhs.false127
  %key134 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call117, i64 0, i32 0
  %22 = load i8*, i8** %key134, align 8, !tbaa !7
  %call135 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 213, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0), i8* noundef %22, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)) #3
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %err, label %lor.lhs.false137

lor.lhs.false137:                                 ; preds = %lor.lhs.false133
  %data_type138 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call117, i64 0, i32 1
  %23 = load i32, i32* %data_type138, align 8, !tbaa !11
  %call139 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 214, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.77, i64 0, i64 0), i32 noundef %23, i32 noundef 2) #3
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %err, label %lor.lhs.false141

lor.lhs.false141:                                 ; preds = %lor.lhs.false137
  %data_size142 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call117, i64 0, i32 3
  %24 = load i64, i64* %data_size142, align 8, !tbaa !12
  %call143 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 215, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i64 0, i64 0), i64 noundef %24, i64 noundef 4) #3
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %err, label %lor.lhs.false145

lor.lhs.false145:                                 ; preds = %lor.lhs.false141
  %25 = load i32, i32* %i32, align 4, !tbaa !13
  %call146 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 216, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.99, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), i32 noundef %25, i32 noundef 1532) #3
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %err, label %lor.lhs.false148

lor.lhs.false148:                                 ; preds = %lor.lhs.false145
  %call149 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params.0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)) #3
  %26 = bitcast %struct.ossl_param_st* %call149 to i8*
  %call150 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 218, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.44, i64 0, i64 0), i8* noundef %26) #3
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %err, label %lor.lhs.false152

lor.lhs.false152:                                 ; preds = %lor.lhs.false148
  %data153 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call149, i64 0, i32 2
  %27 = load i8*, i8** %data153, align 8, !tbaa !17
  %call154 = call i32 @CRYPTO_secure_allocated(i8* noundef %27) #3
  %cmp155 = icmp ne i32 %call154, 0
  %conv156 = zext i1 %cmp155 to i32
  %call157 = call i32 @test_false(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 219, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.95, i64 0, i64 0), i32 noundef %conv156) #3
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %err, label %lor.lhs.false159

lor.lhs.false159:                                 ; preds = %lor.lhs.false152
  %key160 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call149, i64 0, i32 0
  %28 = load i8*, i8** %key160, align 8, !tbaa !7
  %call161 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 220, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)) #3
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %err, label %lor.lhs.false163

lor.lhs.false163:                                 ; preds = %lor.lhs.false159
  %data_type164 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call149, i64 0, i32 1
  %29 = load i32, i32* %data_type164, align 8, !tbaa !11
  %call165 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 221, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.77, i64 0, i64 0), i32 noundef %29, i32 noundef 2) #3
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %err, label %lor.lhs.false167

lor.lhs.false167:                                 ; preds = %lor.lhs.false163
  %data_size168 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call149, i64 0, i32 3
  %30 = load i64, i64* %data_size168, align 8, !tbaa !12
  %call169 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 222, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i64 0, i64 0), i64 noundef %30, i64 noundef 8) #3
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %err, label %lor.lhs.false171

lor.lhs.false171:                                 ; preds = %lor.lhs.false167
  %call172 = call i32 @OSSL_PARAM_get_uint64(%struct.ossl_param_st* noundef nonnull %call149, i64* noundef nonnull %i64) #3
  %cmp173 = icmp ne i32 %call172, 0
  %conv174 = zext i1 %cmp173 to i32
  %call175 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 223, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.100, i64 0, i64 0), i32 noundef %conv174) #3
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %err, label %lor.lhs.false177

lor.lhs.false177:                                 ; preds = %lor.lhs.false171
  %31 = load i64, i64* %i64, align 8, !tbaa !14
  %call178 = call i32 @test_ulong_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 224, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.102, i64 0, i64 0), i64 noundef %31, i64 noundef 9999999) #3
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %err, label %lor.lhs.false180

lor.lhs.false180:                                 ; preds = %lor.lhs.false177
  %call181 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params.0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #3
  %32 = bitcast %struct.ossl_param_st* %call181 to i8*
  %call182 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 226, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.50, i64 0, i64 0), i8* noundef %32) #3
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %err, label %lor.lhs.false184

lor.lhs.false184:                                 ; preds = %lor.lhs.false180
  %data185 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call181, i64 0, i32 2
  %33 = load i8*, i8** %data185, align 8, !tbaa !17
  %call186 = call i32 @CRYPTO_secure_allocated(i8* noundef %33) #3
  %cmp187 = icmp ne i32 %call186, 0
  %conv188 = zext i1 %cmp187 to i32
  %call189 = call i32 @test_false(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 227, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.95, i64 0, i64 0), i32 noundef %conv188) #3
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %err, label %lor.lhs.false191

lor.lhs.false191:                                 ; preds = %lor.lhs.false184
  %key192 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call181, i64 0, i32 0
  %34 = load i8*, i8** %key192, align 8, !tbaa !7
  %call193 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 228, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i64 0, i64 0), i8* noundef %34, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #3
  %tobool194.not = icmp eq i32 %call193, 0
  br i1 %tobool194.not, label %err, label %lor.lhs.false195

lor.lhs.false195:                                 ; preds = %lor.lhs.false191
  %data_type196 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call181, i64 0, i32 1
  %35 = load i32, i32* %data_type196, align 8, !tbaa !11
  %call197 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 229, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.77, i64 0, i64 0), i32 noundef %35, i32 noundef 2) #3
  %tobool198.not = icmp eq i32 %call197, 0
  br i1 %tobool198.not, label %err, label %lor.lhs.false199

lor.lhs.false199:                                 ; preds = %lor.lhs.false195
  %data_size200 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call181, i64 0, i32 3
  %36 = load i64, i64* %data_size200, align 8, !tbaa !12
  %call201 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 230, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.103, i64 0, i64 0), i64 noundef %36, i64 noundef 8) #3
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %err, label %lor.lhs.false203

lor.lhs.false203:                                 ; preds = %lor.lhs.false199
  %call204 = call i32 @OSSL_PARAM_get_ulong(%struct.ossl_param_st* noundef nonnull %call181, i64* noundef nonnull %l) #3
  %cmp205 = icmp ne i32 %call204, 0
  %conv206 = zext i1 %cmp205 to i32
  %call207 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 231, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.104, i64 0, i64 0), i32 noundef %conv206) #3
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %err, label %lor.lhs.false209

lor.lhs.false209:                                 ; preds = %lor.lhs.false203
  %37 = load i64, i64* %l, align 8, !tbaa !14
  %call210 = call i32 @test_ulong_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 232, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0), i64 noundef %37, i64 noundef 42) #3
  %tobool211.not = icmp eq i32 %call210, 0
  br i1 %tobool211.not, label %err, label %lor.lhs.false212

lor.lhs.false212:                                 ; preds = %lor.lhs.false209
  %call213 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params.0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.89, i64 0, i64 0)) #3
  %38 = bitcast %struct.ossl_param_st* %call213 to i8*
  %call214 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 234, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.105, i64 0, i64 0), i8* noundef %38) #3
  %tobool215.not = icmp eq i32 %call214, 0
  br i1 %tobool215.not, label %err, label %lor.lhs.false216

lor.lhs.false216:                                 ; preds = %lor.lhs.false212
  %data217 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call213, i64 0, i32 2
  %39 = load i8*, i8** %data217, align 8, !tbaa !17
  %call218 = call i32 @CRYPTO_secure_allocated(i8* noundef %39) #3
  %cmp219 = icmp ne i32 %call218, 0
  %conv220 = zext i1 %cmp219 to i32
  %call221 = call i32 @test_false(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 235, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.95, i64 0, i64 0), i32 noundef %conv220) #3
  %tobool222.not = icmp eq i32 %call221, 0
  br i1 %tobool222.not, label %err, label %lor.lhs.false223

lor.lhs.false223:                                 ; preds = %lor.lhs.false216
  %key224 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call213, i64 0, i32 0
  %40 = load i8*, i8** %key224, align 8, !tbaa !7
  %call225 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 236, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i64 0, i64 0), i8* noundef %40, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.89, i64 0, i64 0)) #3
  %tobool226.not = icmp eq i32 %call225, 0
  br i1 %tobool226.not, label %err, label %lor.lhs.false227

lor.lhs.false227:                                 ; preds = %lor.lhs.false223
  %data_type228 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call213, i64 0, i32 1
  %41 = load i32, i32* %data_type228, align 8, !tbaa !11
  %call229 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 237, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.77, i64 0, i64 0), i32 noundef %41, i32 noundef 2) #3
  %tobool230.not = icmp eq i32 %call229, 0
  br i1 %tobool230.not, label %err, label %lor.lhs.false231

lor.lhs.false231:                                 ; preds = %lor.lhs.false227
  %data_size232 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call213, i64 0, i32 3
  %42 = load i64, i64* %data_size232, align 8, !tbaa !12
  %call233 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 238, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.107, i64 0, i64 0), i64 noundef %42, i64 noundef 8) #3
  %tobool234.not = icmp eq i32 %call233, 0
  br i1 %tobool234.not, label %err, label %lor.lhs.false235

lor.lhs.false235:                                 ; preds = %lor.lhs.false231
  %call236 = call i32 @OSSL_PARAM_get_size_t(%struct.ossl_param_st* noundef nonnull %call213, i64* noundef nonnull %st) #3
  %cmp237 = icmp ne i32 %call236, 0
  %conv238 = zext i1 %cmp237 to i32
  %call239 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 239, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.108, i64 0, i64 0), i32 noundef %conv238) #3
  %tobool240.not = icmp eq i32 %call239, 0
  br i1 %tobool240.not, label %err, label %lor.lhs.false241

lor.lhs.false241:                                 ; preds = %lor.lhs.false235
  %43 = load i64, i64* %st, align 8, !tbaa !14
  %call242 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 240, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.89, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.109, i64 0, i64 0), i64 noundef %43, i64 noundef 65537) #3
  %tobool243.not = icmp eq i32 %call242, 0
  br i1 %tobool243.not, label %err, label %lor.lhs.false244

lor.lhs.false244:                                 ; preds = %lor.lhs.false241
  %call245 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params.0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i64 0, i64 0)) #3
  %44 = bitcast %struct.ossl_param_st* %call245 to i8*
  %call246 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 242, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.110, i64 0, i64 0), i8* noundef %44) #3
  %tobool247.not = icmp eq i32 %call246, 0
  br i1 %tobool247.not, label %err, label %lor.lhs.false248

lor.lhs.false248:                                 ; preds = %lor.lhs.false244
  %data249 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call245, i64 0, i32 2
  %45 = load i8*, i8** %data249, align 8, !tbaa !17
  %call250 = call i32 @CRYPTO_secure_allocated(i8* noundef %45) #3
  %cmp251 = icmp ne i32 %call250, 0
  %conv252 = zext i1 %cmp251 to i32
  %call253 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 243, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.95, i64 0, i64 0), i32 noundef %conv252) #3
  %tobool254.not = icmp eq i32 %call253, 0
  br i1 %tobool254.not, label %err, label %lor.lhs.false255

lor.lhs.false255:                                 ; preds = %lor.lhs.false248
  %key256 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call245, i64 0, i32 0
  %46 = load i8*, i8** %key256, align 8, !tbaa !7
  %call257 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 244, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.111, i64 0, i64 0), i8* noundef %46, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i64 0, i64 0)) #3
  %tobool258.not = icmp eq i32 %call257, 0
  br i1 %tobool258.not, label %err, label %lor.lhs.false259

lor.lhs.false259:                                 ; preds = %lor.lhs.false255
  %data_type260 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call245, i64 0, i32 1
  %47 = load i32, i32* %data_type260, align 8, !tbaa !11
  %call261 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 245, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.112, i64 0, i64 0), i32 noundef %47, i32 noundef 5) #3
  %tobool262.not = icmp eq i32 %call261, 0
  br i1 %tobool262.not, label %err, label %lor.lhs.false263

lor.lhs.false263:                                 ; preds = %lor.lhs.false259
  %48 = load i8*, i8** %data249, align 8, !tbaa !17
  %data_size265 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call245, i64 0, i32 3
  %49 = load i64, i64* %data_size265, align 8, !tbaa !12
  %call266 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 246, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.113, i64 0, i64 0), i8* noundef %48, i64 noundef %49, i8* noundef nonnull %call, i64 noundef 48) #3
  %tobool267.not = icmp eq i32 %call266, 0
  br i1 %tobool267.not, label %err, label %lor.lhs.false268

lor.lhs.false268:                                 ; preds = %lor.lhs.false263
  %call269 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params.0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i64 0, i64 0)) #3
  %50 = bitcast %struct.ossl_param_st* %call269 to i8*
  %call270 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 248, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.114, i64 0, i64 0), i8* noundef %50) #3
  %tobool271.not = icmp eq i32 %call270, 0
  br i1 %tobool271.not, label %err, label %lor.lhs.false272

lor.lhs.false272:                                 ; preds = %lor.lhs.false268
  %data273 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call269, i64 0, i32 2
  %51 = load i8*, i8** %data273, align 8, !tbaa !17
  %call274 = call i32 @CRYPTO_secure_allocated(i8* noundef %51) #3
  %cmp275 = icmp ne i32 %call274, 0
  %conv276 = zext i1 %cmp275 to i32
  %call277 = call i32 @test_false(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 249, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.95, i64 0, i64 0), i32 noundef %conv276) #3
  %tobool278.not = icmp eq i32 %call277, 0
  br i1 %tobool278.not, label %err, label %lor.lhs.false279

lor.lhs.false279:                                 ; preds = %lor.lhs.false272
  %52 = bitcast i8** %data273 to i8***
  %53 = load i8**, i8*** %52, align 8, !tbaa !17
  %54 = load i8*, i8** %53, align 8, !tbaa !3
  %call281 = call i32 @CRYPTO_secure_allocated(i8* noundef %54) #3
  %cmp282 = icmp ne i32 %call281, 0
  %conv283 = zext i1 %cmp282 to i32
  %call284 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 250, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.115, i64 0, i64 0), i32 noundef %conv283) #3
  %tobool285.not = icmp eq i32 %call284, 0
  br i1 %tobool285.not, label %err, label %lor.lhs.false286

lor.lhs.false286:                                 ; preds = %lor.lhs.false279
  %key287 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call269, i64 0, i32 0
  %55 = load i8*, i8** %key287, align 8, !tbaa !7
  %call288 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 251, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.116, i64 0, i64 0), i8* noundef %55, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i64 0, i64 0)) #3
  %tobool289.not = icmp eq i32 %call288, 0
  br i1 %tobool289.not, label %err, label %lor.lhs.false290

lor.lhs.false290:                                 ; preds = %lor.lhs.false286
  %data_type291 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call269, i64 0, i32 1
  %56 = load i32, i32* %data_type291, align 8, !tbaa !11
  %call292 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 252, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.117, i64 0, i64 0), i32 noundef %56, i32 noundef 7) #3
  %tobool293.not = icmp eq i32 %call292, 0
  br i1 %tobool293.not, label %err, label %lor.lhs.false294

lor.lhs.false294:                                 ; preds = %lor.lhs.false290
  %57 = load i8**, i8*** %52, align 8, !tbaa !17
  %58 = load i8*, i8** %57, align 8, !tbaa !3
  %data_size296 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call269, i64 0, i32 3
  %59 = load i64, i64* %data_size296, align 8, !tbaa !12
  %call297 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 253, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.118, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.119, i64 0, i64 0), i8* noundef %58, i64 noundef %59, i8* noundef nonnull %call2, i64 noundef 20) #3
  %tobool298.not = icmp eq i32 %call297, 0
  br i1 %tobool298.not, label %err, label %lor.lhs.false299

lor.lhs.false299:                                 ; preds = %lor.lhs.false294
  %call300 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params.0, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0)) #3
  %60 = bitcast %struct.ossl_param_st* %call300 to i8*
  %call301 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 255, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.75, i64 0, i64 0), i8* noundef %60) #3
  %tobool302.not = icmp eq i32 %call301, 0
  br i1 %tobool302.not, label %err, label %lor.lhs.false303

lor.lhs.false303:                                 ; preds = %lor.lhs.false299
  %data304 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call300, i64 0, i32 2
  %61 = load i8*, i8** %data304, align 8, !tbaa !17
  %call305 = call i32 @CRYPTO_secure_allocated(i8* noundef %61) #3
  %cmp306 = icmp ne i32 %call305, 0
  %conv307 = zext i1 %cmp306 to i32
  %call308 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 256, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.95, i64 0, i64 0), i32 noundef %conv307) #3
  %tobool309.not = icmp eq i32 %call308, 0
  br i1 %tobool309.not, label %err, label %lor.lhs.false310

lor.lhs.false310:                                 ; preds = %lor.lhs.false303
  %key311 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call300, i64 0, i32 0
  %62 = load i8*, i8** %key311, align 8, !tbaa !7
  %call312 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 257, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i64 0, i64 0), i8* noundef %62, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0)) #3
  %tobool313.not = icmp eq i32 %call312, 0
  br i1 %tobool313.not, label %err, label %lor.lhs.false314

lor.lhs.false314:                                 ; preds = %lor.lhs.false310
  %data_type315 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call300, i64 0, i32 1
  %63 = load i32, i32* %data_type315, align 8, !tbaa !11
  %call316 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 258, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.77, i64 0, i64 0), i32 noundef %63, i32 noundef 2) #3
  %tobool317.not = icmp eq i32 %call316, 0
  br i1 %tobool317.not, label %err, label %lor.lhs.false318

lor.lhs.false318:                                 ; preds = %lor.lhs.false314
  %call319 = call i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef nonnull %call300, %struct.bignum_st** noundef nonnull %bn_res) #3
  %cmp320 = icmp ne i32 %call319, 0
  %conv321 = zext i1 %cmp320 to i32
  %call322 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 259, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.78, i64 0, i64 0), i32 noundef %conv321) #3
  %tobool323.not = icmp eq i32 %call322, 0
  br i1 %tobool323.not, label %err, label %lor.lhs.false324

lor.lhs.false324:                                 ; preds = %lor.lhs.false318
  %call325 = call i32 @BN_get_flags(%struct.bignum_st* noundef %call47, i32 noundef 8) #3
  %call326 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 260, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.120, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.121, i64 0, i64 0), i32 noundef %call325, i32 noundef 8) #3
  %tobool327.not = icmp eq i32 %call326, 0
  br i1 %tobool327.not, label %err, label %lor.lhs.false328

lor.lhs.false328:                                 ; preds = %lor.lhs.false324
  %64 = load %struct.bignum_st*, %struct.bignum_st** %bn_res, align 8, !tbaa !3
  %call329 = call i32 @BN_cmp(%struct.bignum_st* noundef %64, %struct.bignum_st* noundef %call47) #3
  %call330 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 261, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.79, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.80, i64 0, i64 0), i32 noundef %call329, i32 noundef 0) #3
  %tobool331.not = icmp ne i32 %call330, 0
  %spec.select = zext i1 %tobool331.not to i32
  br label %err

err.thread:                                       ; preds = %lor.lhs.false68, %lor.lhs.false62, %lor.lhs.false56, %lor.lhs.false50, %lor.lhs.false46, %lor.lhs.false40, %lor.lhs.false34, %lor.lhs.false28, %lor.lhs.false22, %for.body.preheader, %lor.lhs.false5, %lor.lhs.false, %entry
  %.ph = phi i8* [ null, %entry ], [ %call2, %lor.lhs.false ], [ %call2, %lor.lhs.false5 ], [ %call2, %for.body.preheader ], [ %call2, %lor.lhs.false22 ], [ %call2, %lor.lhs.false28 ], [ %call2, %lor.lhs.false34 ], [ %call2, %lor.lhs.false40 ], [ %call2, %lor.lhs.false46 ], [ %call2, %lor.lhs.false50 ], [ %call2, %lor.lhs.false56 ], [ %call2, %lor.lhs.false62 ], [ %call2, %lor.lhs.false68 ]
  %bld.0.ph = phi %struct.ossl_param_bld_st* [ null, %entry ], [ null, %lor.lhs.false ], [ %call6, %lor.lhs.false5 ], [ %call6, %for.body.preheader ], [ %call6, %lor.lhs.false22 ], [ %call6, %lor.lhs.false28 ], [ %call6, %lor.lhs.false34 ], [ %call6, %lor.lhs.false40 ], [ %call6, %lor.lhs.false46 ], [ %call6, %lor.lhs.false50 ], [ %call6, %lor.lhs.false56 ], [ %call6, %lor.lhs.false62 ], [ %call6, %lor.lhs.false68 ]
  %bn.0.ph = phi %struct.bignum_st* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false5 ], [ null, %for.body.preheader ], [ null, %lor.lhs.false22 ], [ null, %lor.lhs.false28 ], [ null, %lor.lhs.false34 ], [ null, %lor.lhs.false40 ], [ %call47, %lor.lhs.false46 ], [ %call47, %lor.lhs.false50 ], [ %call47, %lor.lhs.false56 ], [ %call47, %lor.lhs.false62 ], [ %call47, %lor.lhs.false68 ]
  tail call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef null) #3
  br label %if.end337

err:                                              ; preds = %lor.lhs.false328, %sw.epilog, %lor.lhs.false92, %lor.lhs.false98, %lor.lhs.false104, %lor.lhs.false107, %lor.lhs.false110, %lor.lhs.false113, %lor.lhs.false116, %lor.lhs.false120, %lor.lhs.false127, %lor.lhs.false133, %lor.lhs.false137, %lor.lhs.false141, %lor.lhs.false145, %lor.lhs.false148, %lor.lhs.false152, %lor.lhs.false159, %lor.lhs.false163, %lor.lhs.false167, %lor.lhs.false171, %lor.lhs.false177, %lor.lhs.false180, %lor.lhs.false184, %lor.lhs.false191, %lor.lhs.false195, %lor.lhs.false199, %lor.lhs.false203, %lor.lhs.false209, %lor.lhs.false212, %lor.lhs.false216, %lor.lhs.false223, %lor.lhs.false227, %lor.lhs.false231, %lor.lhs.false235, %lor.lhs.false241, %lor.lhs.false244, %lor.lhs.false248, %lor.lhs.false255, %lor.lhs.false259, %lor.lhs.false263, %lor.lhs.false268, %lor.lhs.false272, %lor.lhs.false279, %lor.lhs.false286, %lor.lhs.false290, %lor.lhs.false294, %lor.lhs.false299, %lor.lhs.false303, %lor.lhs.false310, %lor.lhs.false314, %lor.lhs.false318, %lor.lhs.false324, %lor.lhs.false74
  %params.1 = phi %struct.ossl_param_st* [ %params.0, %lor.lhs.false324 ], [ %params.0, %lor.lhs.false318 ], [ %params.0, %lor.lhs.false314 ], [ %params.0, %lor.lhs.false310 ], [ %params.0, %lor.lhs.false303 ], [ %params.0, %lor.lhs.false299 ], [ %params.0, %lor.lhs.false294 ], [ %params.0, %lor.lhs.false290 ], [ %params.0, %lor.lhs.false286 ], [ %params.0, %lor.lhs.false279 ], [ %params.0, %lor.lhs.false272 ], [ %params.0, %lor.lhs.false268 ], [ %params.0, %lor.lhs.false263 ], [ %params.0, %lor.lhs.false259 ], [ %params.0, %lor.lhs.false255 ], [ %params.0, %lor.lhs.false248 ], [ %params.0, %lor.lhs.false244 ], [ %params.0, %lor.lhs.false241 ], [ %params.0, %lor.lhs.false235 ], [ %params.0, %lor.lhs.false231 ], [ %params.0, %lor.lhs.false227 ], [ %params.0, %lor.lhs.false223 ], [ %params.0, %lor.lhs.false216 ], [ %params.0, %lor.lhs.false212 ], [ %params.0, %lor.lhs.false209 ], [ %params.0, %lor.lhs.false203 ], [ %params.0, %lor.lhs.false199 ], [ %params.0, %lor.lhs.false195 ], [ %params.0, %lor.lhs.false191 ], [ %params.0, %lor.lhs.false184 ], [ %params.0, %lor.lhs.false180 ], [ %params.0, %lor.lhs.false177 ], [ %params.0, %lor.lhs.false171 ], [ %params.0, %lor.lhs.false167 ], [ %params.0, %lor.lhs.false163 ], [ %params.0, %lor.lhs.false159 ], [ %params.0, %lor.lhs.false152 ], [ %params.0, %lor.lhs.false148 ], [ %params.0, %lor.lhs.false145 ], [ %params.0, %lor.lhs.false141 ], [ %params.0, %lor.lhs.false137 ], [ %params.0, %lor.lhs.false133 ], [ %params.0, %lor.lhs.false127 ], [ %params.0, %lor.lhs.false120 ], [ %params.0, %lor.lhs.false116 ], [ %params.0, %lor.lhs.false113 ], [ %params.0, %lor.lhs.false110 ], [ %params.0, %lor.lhs.false107 ], [ %params.0, %lor.lhs.false104 ], [ %params.0, %lor.lhs.false98 ], [ %params.0, %lor.lhs.false92 ], [ %params.0, %sw.epilog ], [ null, %lor.lhs.false74 ], [ %params.0, %lor.lhs.false328 ]
  %p1.1 = phi %struct.ossl_param_st* [ %p1.0, %lor.lhs.false324 ], [ %p1.0, %lor.lhs.false318 ], [ %p1.0, %lor.lhs.false314 ], [ %p1.0, %lor.lhs.false310 ], [ %p1.0, %lor.lhs.false303 ], [ %p1.0, %lor.lhs.false299 ], [ %p1.0, %lor.lhs.false294 ], [ %p1.0, %lor.lhs.false290 ], [ %p1.0, %lor.lhs.false286 ], [ %p1.0, %lor.lhs.false279 ], [ %p1.0, %lor.lhs.false272 ], [ %p1.0, %lor.lhs.false268 ], [ %p1.0, %lor.lhs.false263 ], [ %p1.0, %lor.lhs.false259 ], [ %p1.0, %lor.lhs.false255 ], [ %p1.0, %lor.lhs.false248 ], [ %p1.0, %lor.lhs.false244 ], [ %p1.0, %lor.lhs.false241 ], [ %p1.0, %lor.lhs.false235 ], [ %p1.0, %lor.lhs.false231 ], [ %p1.0, %lor.lhs.false227 ], [ %p1.0, %lor.lhs.false223 ], [ %p1.0, %lor.lhs.false216 ], [ %p1.0, %lor.lhs.false212 ], [ %p1.0, %lor.lhs.false209 ], [ %p1.0, %lor.lhs.false203 ], [ %p1.0, %lor.lhs.false199 ], [ %p1.0, %lor.lhs.false195 ], [ %p1.0, %lor.lhs.false191 ], [ %p1.0, %lor.lhs.false184 ], [ %p1.0, %lor.lhs.false180 ], [ %p1.0, %lor.lhs.false177 ], [ %p1.0, %lor.lhs.false171 ], [ %p1.0, %lor.lhs.false167 ], [ %p1.0, %lor.lhs.false163 ], [ %p1.0, %lor.lhs.false159 ], [ %p1.0, %lor.lhs.false152 ], [ %p1.0, %lor.lhs.false148 ], [ %p1.0, %lor.lhs.false145 ], [ %p1.0, %lor.lhs.false141 ], [ %p1.0, %lor.lhs.false137 ], [ %p1.0, %lor.lhs.false133 ], [ %p1.0, %lor.lhs.false127 ], [ %p1.0, %lor.lhs.false120 ], [ %p1.0, %lor.lhs.false116 ], [ %p1.0, %lor.lhs.false113 ], [ %p1.0, %lor.lhs.false110 ], [ %p1.0, %lor.lhs.false107 ], [ %p1.0, %lor.lhs.false104 ], [ %p1.0, %lor.lhs.false98 ], [ %p1.0, %lor.lhs.false92 ], [ %p1.0, %sw.epilog ], [ null, %lor.lhs.false74 ], [ %p1.0, %lor.lhs.false328 ]
  %res.0 = phi i32 [ 0, %lor.lhs.false324 ], [ 0, %lor.lhs.false318 ], [ 0, %lor.lhs.false314 ], [ 0, %lor.lhs.false310 ], [ 0, %lor.lhs.false303 ], [ 0, %lor.lhs.false299 ], [ 0, %lor.lhs.false294 ], [ 0, %lor.lhs.false290 ], [ 0, %lor.lhs.false286 ], [ 0, %lor.lhs.false279 ], [ 0, %lor.lhs.false272 ], [ 0, %lor.lhs.false268 ], [ 0, %lor.lhs.false263 ], [ 0, %lor.lhs.false259 ], [ 0, %lor.lhs.false255 ], [ 0, %lor.lhs.false248 ], [ 0, %lor.lhs.false244 ], [ 0, %lor.lhs.false241 ], [ 0, %lor.lhs.false235 ], [ 0, %lor.lhs.false231 ], [ 0, %lor.lhs.false227 ], [ 0, %lor.lhs.false223 ], [ 0, %lor.lhs.false216 ], [ 0, %lor.lhs.false212 ], [ 0, %lor.lhs.false209 ], [ 0, %lor.lhs.false203 ], [ 0, %lor.lhs.false199 ], [ 0, %lor.lhs.false195 ], [ 0, %lor.lhs.false191 ], [ 0, %lor.lhs.false184 ], [ 0, %lor.lhs.false180 ], [ 0, %lor.lhs.false177 ], [ 0, %lor.lhs.false171 ], [ 0, %lor.lhs.false167 ], [ 0, %lor.lhs.false163 ], [ 0, %lor.lhs.false159 ], [ 0, %lor.lhs.false152 ], [ 0, %lor.lhs.false148 ], [ 0, %lor.lhs.false145 ], [ 0, %lor.lhs.false141 ], [ 0, %lor.lhs.false137 ], [ 0, %lor.lhs.false133 ], [ 0, %lor.lhs.false127 ], [ 0, %lor.lhs.false120 ], [ 0, %lor.lhs.false116 ], [ 0, %lor.lhs.false113 ], [ 0, %lor.lhs.false110 ], [ 0, %lor.lhs.false107 ], [ 0, %lor.lhs.false104 ], [ 0, %lor.lhs.false98 ], [ 0, %lor.lhs.false92 ], [ 0, %sw.epilog ], [ 0, %lor.lhs.false74 ], [ %spec.select, %lor.lhs.false328 ]
  call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %p1.1) #3
  %cmp334.not = icmp eq %struct.ossl_param_st* %params.1, %call75
  br i1 %cmp334.not, label %if.end337, label %if.then336

if.then336:                                       ; preds = %err
  call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %params.1) #3
  br label %if.end337

if.end337:                                        ; preds = %err.thread, %if.then336, %err
  %res.0444 = phi i32 [ 0, %err.thread ], [ %res.0, %if.then336 ], [ %res.0, %err ]
  %bn.0443 = phi %struct.bignum_st* [ %bn.0.ph, %err.thread ], [ %call47, %if.then336 ], [ %call47, %err ]
  %params_blt.0442 = phi %struct.ossl_param_st* [ null, %err.thread ], [ %call75, %if.then336 ], [ %call75, %err ]
  %bld.0441 = phi %struct.ossl_param_bld_st* [ %bld.0.ph, %err.thread ], [ %call6, %if.then336 ], [ %call6, %err ]
  %65 = phi i8* [ %.ph, %err.thread ], [ %call2, %if.then336 ], [ %call2, %err ]
  call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %params_blt.0442) #3
  call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef %bld.0441) #3
  call void @CRYPTO_secure_free(i8* noundef %call, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 270) #3
  call void @CRYPTO_secure_free(i8* noundef %65, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 271) #3
  call void @BN_free(%struct.bignum_st* noundef %bn.0443) #3
  %66 = load %struct.bignum_st*, %struct.bignum_st** %bn_res, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %66) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4
  ret i32 %res.0444
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @builder_limit_test() #0 {
entry:
  %names = alloca [100 x [3 x i8]], align 16
  %0 = getelementptr inbounds [100 x [3 x i8]], [100 x [3 x i8]]* %names, i64 0, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 300, i8* nonnull %0) #4
  %call = tail call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #3
  %1 = bitcast %struct.ossl_param_bld_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 285, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* noundef %1) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %for.body

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !18

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %div.lhs.trunc = trunc i64 %indvars.iv to i8
  %div91 = udiv i8 %div.lhs.trunc, 26
  %conv = or i8 %div91, 64
  %arrayidx2 = getelementptr inbounds [100 x [3 x i8]], [100 x [3 x i8]]* %names, i64 0, i64 %indvars.iv, i64 0
  store i8 %conv, i8* %arrayidx2, align 1, !tbaa !20
  %rem92 = urem i8 %div.lhs.trunc, 26
  %conv5 = or i8 %rem92, 96
  %arrayidx8 = getelementptr inbounds [100 x [3 x i8]], [100 x [3 x i8]]* %names, i64 0, i64 %indvars.iv, i64 1
  store i8 %conv5, i8* %arrayidx8, align 1, !tbaa !20
  %arrayidx11 = getelementptr inbounds [100 x [3 x i8]], [100 x [3 x i8]]* %names, i64 0, i64 %indvars.iv, i64 2
  store i8 0, i8* %arrayidx11, align 1, !tbaa !20
  %2 = trunc i64 %indvars.iv to i32
  %3 = mul i32 %2, 3
  %4 = add i32 %3, 1
  %call15 = call i32 @OSSL_PARAM_BLD_push_int(%struct.ossl_param_bld_st* noundef %call, i8* noundef nonnull %arrayidx2, i32 noundef %4) #3
  %cmp16 = icmp ne i32 %call15, 0
  %conv17 = zext i1 %cmp16 to i32
  %call18 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 292, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.122, i64 0, i64 0), i32 noundef %conv17) #3
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %for.cond

for.end:                                          ; preds = %for.cond
  %call22 = call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef %call) #3
  %5 = bitcast %struct.ossl_param_st* %call22 to i8*
  %call23 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 295, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.123, i64 0, i64 0), i8* noundef %5) #3
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %for.cond27

for.cond27:                                       ; preds = %for.end, %for.cond27
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %for.cond27 ], [ 0, %for.end ]
  %key = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call22, i64 %indvars.iv97, i32 0
  %6 = load i8*, i8** %key, align 8, !tbaa !7
  %cmp30.not = icmp eq i8* %6, null
  %indvars.iv.next98 = add nuw i64 %indvars.iv97, 1
  br i1 %cmp30.not, label %for.end35, label %for.cond27, !llvm.loop !21

for.end35:                                        ; preds = %for.cond27
  %7 = trunc i64 %indvars.iv97 to i32
  %call36 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 299, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.124, i64 0, i64 0), i32 noundef %7, i32 noundef 100) #3
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %err, label %if.end39

if.end39:                                         ; preds = %for.end35
  call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef nonnull %call22) #3
  %call40 = call i32 @OSSL_PARAM_BLD_push_int(%struct.ossl_param_bld_st* noundef %call, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.126, i64 0, i64 0), i32 noundef 2) #3
  %cmp41 = icmp ne i32 %call40, 0
  %conv42 = zext i1 %cmp41 to i32
  %call43 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 306, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.125, i64 0, i64 0), i32 noundef %conv42) #3
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end39
  %call45 = call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef %call) #3
  %8 = bitcast %struct.ossl_param_st* %call45 to i8*
  %call46 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 307, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.123, i64 0, i64 0), i8* noundef %8) #3
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %err, label %for.cond50

for.cond50:                                       ; preds = %lor.lhs.false, %for.cond50
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %for.cond50 ], [ 0, %lor.lhs.false ]
  %key53 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call45, i64 %indvars.iv100, i32 0
  %9 = load i8*, i8** %key53, align 8, !tbaa !7
  %cmp54.not = icmp eq i8* %9, null
  %indvars.iv.next101 = add nuw i64 %indvars.iv100, 1
  br i1 %cmp54.not, label %for.end59, label %for.cond50, !llvm.loop !22

for.end59:                                        ; preds = %for.cond50
  %10 = trunc i64 %indvars.iv100 to i32
  %call60 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 311, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.127, i64 0, i64 0), i32 noundef %10, i32 noundef 1) #3
  %tobool61.not = icmp ne i32 %call60, 0
  %spec.select = zext i1 %tobool61.not to i32
  br label %err

err:                                              ; preds = %for.body, %for.end59, %if.end39, %lor.lhs.false, %for.end35, %for.end, %entry
  %params.0 = phi %struct.ossl_param_st* [ %call45, %lor.lhs.false ], [ null, %if.end39 ], [ %call22, %for.end35 ], [ %call22, %for.end ], [ null, %entry ], [ %call45, %for.end59 ], [ null, %for.body ]
  %res.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %if.end39 ], [ 0, %for.end35 ], [ 0, %for.end ], [ 0, %entry ], [ %spec.select, %for.end59 ], [ 0, %for.body ]
  call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %params.0) #3
  call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef %call) #3
  call void @llvm.lifetime.end.p0i8(i64 300, i8* nonnull %0) #4
  ret i32 %res.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @builder_merge_test() #0 {
entry:
  %i = alloca i32, align 4
  %l = alloca i64, align 8
  %i32 = alloca i32, align 4
  %i64 = alloca i64, align 8
  %st = alloca i64, align 8
  %bn_priv_res = alloca %struct.bignum_st*, align 8
  %bn_pub_res = alloca %struct.bignum_st*, align 8
  %call = tail call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #3
  %call1 = tail call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #3
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4
  %1 = bitcast i64* %l to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #4
  %2 = bitcast i32* %i32 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #4
  %3 = bitcast i64* %i64 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #4
  %4 = bitcast i64* %st to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4
  %5 = bitcast %struct.bignum_st** %bn_priv_res to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #4
  store %struct.bignum_st* null, %struct.bignum_st** %bn_priv_res, align 8, !tbaa !3
  %6 = bitcast %struct.bignum_st** %bn_pub_res to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #4
  store %struct.bignum_st* null, %struct.bignum_st** %bn_pub_res, align 8, !tbaa !3
  %7 = bitcast %struct.ossl_param_bld_st* %call to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 336, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* noundef %7) #3
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call i32 @OSSL_PARAM_BLD_push_uint(%struct.ossl_param_bld_st* noundef %call, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), i32 noundef 6) #3
  %cmp = icmp ne i32 %call3, 0
  %conv = zext i1 %cmp to i32
  %call4 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 337, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.84, i64 0, i64 0), i32 noundef %conv) #3
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %call7 = tail call i32 @OSSL_PARAM_BLD_push_ulong(%struct.ossl_param_bld_st* noundef %call, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i64 noundef 42) #3
  %cmp8 = icmp ne i32 %call7, 0
  %conv9 = zext i1 %cmp8 to i32
  %call10 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 338, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.85, i64 0, i64 0), i32 noundef %conv9) #3
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false6
  %call13 = tail call i32 @OSSL_PARAM_BLD_push_uint32(%struct.ossl_param_bld_st* noundef %call, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 noundef 1532) #3
  %cmp14 = icmp ne i32 %call13, 0
  %conv15 = zext i1 %cmp14 to i32
  %call16 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 339, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.86, i64 0, i64 0), i32 noundef %conv15) #3
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false12
  %call19 = tail call i32 @OSSL_PARAM_BLD_push_uint64(%struct.ossl_param_bld_st* noundef %call, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i64 noundef 9999999) #3
  %cmp20 = icmp ne i32 %call19, 0
  %conv21 = zext i1 %cmp20 to i32
  %call22 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 340, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.87, i64 0, i64 0), i32 noundef %conv21) #3
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %err, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false18
  %call25 = tail call i32 @OSSL_PARAM_BLD_push_size_t(%struct.ossl_param_bld_st* noundef %call, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.89, i64 0, i64 0), i64 noundef 65537) #3
  %cmp26 = icmp ne i32 %call25, 0
  %conv27 = zext i1 %cmp26 to i32
  %call28 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 341, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.88, i64 0, i64 0), i32 noundef %conv27) #3
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %err, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false24
  %call31 = tail call %struct.bignum_st* @BN_secure_new() #3
  %8 = bitcast %struct.bignum_st* %call31 to i8*
  %call32 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 342, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.128, i64 0, i64 0), i8* noundef %8) #3
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %lor.lhs.false30
  %call35 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call31, i64 noundef 1729) #3
  %cmp36 = icmp ne i32 %call35, 0
  %conv37 = zext i1 %cmp36 to i32
  %call38 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 343, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.129, i64 0, i64 0), i32 noundef %conv37) #3
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %err, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %lor.lhs.false34
  %call41 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.131, i64 0, i64 0), %struct.bignum_st* noundef %call31) #3
  %cmp42 = icmp ne i32 %call41, 0
  %conv43 = zext i1 %cmp42 to i32
  %call44 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 344, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.130, i64 0, i64 0), i32 noundef %conv43) #3
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %err, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %lor.lhs.false40
  %call47 = tail call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef %call) #3
  %9 = bitcast %struct.ossl_param_st* %call47 to i8*
  %call48 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 345, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.28, i64 0, i64 0), i8* noundef %9) #3
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false46
  %10 = bitcast %struct.ossl_param_bld_st* %call1 to i8*
  %call50 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 348, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.132, i64 0, i64 0), i8* noundef %10) #3
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %err, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %if.end
  %call53 = tail call i32 @OSSL_PARAM_BLD_push_octet_string(%struct.ossl_param_bld_st* noundef %call1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i64 0, i64 0), i8* noundef bitcast ([7 x i32]* @builder_merge_test.data1 to i8*), i64 noundef 28) #3
  %cmp54 = icmp ne i32 %call53, 0
  %conv55 = zext i1 %cmp54 to i32
  %call56 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 350, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.133, i64 0, i64 0), i32 noundef %conv55) #3
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %err, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %lor.lhs.false52
  %call59 = tail call i32 @OSSL_PARAM_BLD_push_octet_ptr(%struct.ossl_param_bld_st* noundef %call1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @builder_merge_test.data2, i64 0, i64 0), i64 noundef 5) #3
  %cmp60 = icmp ne i32 %call59, 0
  %conv61 = zext i1 %cmp60 to i32
  %call62 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 352, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.134, i64 0, i64 0), i32 noundef %conv61) #3
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %err, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %lor.lhs.false58
  %call65 = tail call i32 @OSSL_PARAM_BLD_push_uint32(%struct.ossl_param_bld_st* noundef %call1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 noundef 99) #3
  %cmp66 = icmp ne i32 %call65, 0
  %conv67 = zext i1 %cmp66 to i32
  %call68 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 353, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.135, i64 0, i64 0), i32 noundef %conv67) #3
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %err, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %lor.lhs.false64
  %call71 = tail call %struct.bignum_st* @BN_new() #3
  %11 = bitcast %struct.bignum_st* %call71 to i8*
  %call72 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 354, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.136, i64 0, i64 0), i8* noundef %11) #3
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %err, label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %lor.lhs.false70
  %call75 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call71, i64 noundef 66) #3
  %cmp76 = icmp ne i32 %call75, 0
  %conv77 = zext i1 %cmp76 to i32
  %call78 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 355, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.137, i64 0, i64 0), i32 noundef %conv77) #3
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %err, label %lor.lhs.false80

lor.lhs.false80:                                  ; preds = %lor.lhs.false74
  %call81 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.139, i64 0, i64 0), %struct.bignum_st* noundef %call71) #3
  %cmp82 = icmp ne i32 %call81, 0
  %conv83 = zext i1 %cmp82 to i32
  %call84 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 356, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.138, i64 0, i64 0), i32 noundef %conv83) #3
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %err, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %lor.lhs.false80
  %call87 = tail call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef %call1) #3
  %12 = bitcast %struct.ossl_param_st* %call87 to i8*
  %call88 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 357, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.140, i64 0, i64 0), i8* noundef %12) #3
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %err, label %if.end91

if.end91:                                         ; preds = %lor.lhs.false86
  %call92 = tail call %struct.ossl_param_st* @OSSL_PARAM_merge(%struct.ossl_param_st* noundef %call47, %struct.ossl_param_st* noundef %call87) #3
  %13 = bitcast %struct.ossl_param_st* %call92 to i8*
  %call93 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 360, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.141, i64 0, i64 0), i8* noundef %13) #3
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %err, label %if.end96

if.end96:                                         ; preds = %if.end91
  %call97 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %call92, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0)) #3
  %14 = bitcast %struct.ossl_param_st* %call97 to i8*
  %call98 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 363, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i64 0, i64 0), i8* noundef %14) #3
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %err, label %lor.lhs.false100

lor.lhs.false100:                                 ; preds = %if.end96
  %call101 = call i32 @OSSL_PARAM_get_uint(%struct.ossl_param_st* noundef %call97, i32* noundef nonnull %i) #3
  %cmp102 = icmp ne i32 %call101, 0
  %conv103 = zext i1 %cmp102 to i32
  %call104 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 364, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.96, i64 0, i64 0), i32 noundef %conv103) #3
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %err, label %lor.lhs.false106

lor.lhs.false106:                                 ; preds = %lor.lhs.false100
  %key = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call97, i64 0, i32 0
  %15 = load i8*, i8** %key, align 8, !tbaa !7
  %call107 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 365, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8* noundef %15, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0)) #3
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %err, label %lor.lhs.false109

lor.lhs.false109:                                 ; preds = %lor.lhs.false106
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call97, i64 0, i32 1
  %16 = load i32, i32* %data_type, align 8, !tbaa !11
  %call110 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 366, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.77, i64 0, i64 0), i32 noundef %16, i32 noundef 2) #3
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %err, label %lor.lhs.false112

lor.lhs.false112:                                 ; preds = %lor.lhs.false109
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call97, i64 0, i32 3
  %17 = load i64, i64* %data_size, align 8, !tbaa !12
  %call113 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 367, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i64 noundef %17, i64 noundef 4) #3
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %err, label %lor.lhs.false115

lor.lhs.false115:                                 ; preds = %lor.lhs.false112
  %18 = load i32, i32* %i, align 4, !tbaa !13
  %call116 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 368, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i64 0, i64 0), i32 noundef %18, i32 noundef 6) #3
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %err, label %lor.lhs.false118

lor.lhs.false118:                                 ; preds = %lor.lhs.false115
  %call119 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %call92, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)) #3
  %19 = bitcast %struct.ossl_param_st* %call119 to i8*
  %call120 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 370, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.38, i64 0, i64 0), i8* noundef %19) #3
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %err, label %lor.lhs.false122

lor.lhs.false122:                                 ; preds = %lor.lhs.false118
  %call123 = call i32 @OSSL_PARAM_get_uint32(%struct.ossl_param_st* noundef %call119, i32* noundef nonnull %i32) #3
  %cmp124 = icmp ne i32 %call123, 0
  %conv125 = zext i1 %cmp124 to i32
  %call126 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 371, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.98, i64 0, i64 0), i32 noundef %conv125) #3
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %err, label %lor.lhs.false128

lor.lhs.false128:                                 ; preds = %lor.lhs.false122
  %key129 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call119, i64 0, i32 0
  %20 = load i8*, i8** %key129, align 8, !tbaa !7
  %call130 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 372, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0), i8* noundef %20, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)) #3
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %err, label %lor.lhs.false132

lor.lhs.false132:                                 ; preds = %lor.lhs.false128
  %data_type133 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call119, i64 0, i32 1
  %21 = load i32, i32* %data_type133, align 8, !tbaa !11
  %call134 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 373, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.77, i64 0, i64 0), i32 noundef %21, i32 noundef 2) #3
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %err, label %lor.lhs.false136

lor.lhs.false136:                                 ; preds = %lor.lhs.false132
  %data_size137 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call119, i64 0, i32 3
  %22 = load i64, i64* %data_size137, align 8, !tbaa !12
  %call138 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 374, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i64 0, i64 0), i64 noundef %22, i64 noundef 4) #3
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %err, label %lor.lhs.false140

lor.lhs.false140:                                 ; preds = %lor.lhs.false136
  %23 = load i32, i32* %i32, align 4, !tbaa !13
  %call141 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 375, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.99, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.142, i64 0, i64 0), i32 noundef %23, i32 noundef 99) #3
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %err, label %lor.lhs.false143

lor.lhs.false143:                                 ; preds = %lor.lhs.false140
  %call144 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %call92, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)) #3
  %24 = bitcast %struct.ossl_param_st* %call144 to i8*
  %call145 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 377, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.44, i64 0, i64 0), i8* noundef %24) #3
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %err, label %lor.lhs.false147

lor.lhs.false147:                                 ; preds = %lor.lhs.false143
  %key148 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call144, i64 0, i32 0
  %25 = load i8*, i8** %key148, align 8, !tbaa !7
  %call149 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 378, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), i8* noundef %25, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)) #3
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %err, label %lor.lhs.false151

lor.lhs.false151:                                 ; preds = %lor.lhs.false147
  %data_type152 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call144, i64 0, i32 1
  %26 = load i32, i32* %data_type152, align 8, !tbaa !11
  %call153 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 379, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.77, i64 0, i64 0), i32 noundef %26, i32 noundef 2) #3
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %err, label %lor.lhs.false155

lor.lhs.false155:                                 ; preds = %lor.lhs.false151
  %data_size156 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call144, i64 0, i32 3
  %27 = load i64, i64* %data_size156, align 8, !tbaa !12
  %call157 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 380, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i64 0, i64 0), i64 noundef %27, i64 noundef 8) #3
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %err, label %lor.lhs.false159

lor.lhs.false159:                                 ; preds = %lor.lhs.false155
  %call160 = call i32 @OSSL_PARAM_get_uint64(%struct.ossl_param_st* noundef nonnull %call144, i64* noundef nonnull %i64) #3
  %cmp161 = icmp ne i32 %call160, 0
  %conv162 = zext i1 %cmp161 to i32
  %call163 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 381, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.100, i64 0, i64 0), i32 noundef %conv162) #3
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %err, label %lor.lhs.false165

lor.lhs.false165:                                 ; preds = %lor.lhs.false159
  %28 = load i64, i64* %i64, align 8, !tbaa !14
  %call166 = call i32 @test_ulong_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 382, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.102, i64 0, i64 0), i64 noundef %28, i64 noundef 9999999) #3
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %err, label %lor.lhs.false168

lor.lhs.false168:                                 ; preds = %lor.lhs.false165
  %call169 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %call92, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #3
  %29 = bitcast %struct.ossl_param_st* %call169 to i8*
  %call170 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 384, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.50, i64 0, i64 0), i8* noundef %29) #3
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %err, label %lor.lhs.false172

lor.lhs.false172:                                 ; preds = %lor.lhs.false168
  %key173 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call169, i64 0, i32 0
  %30 = load i8*, i8** %key173, align 8, !tbaa !7
  %call174 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 385, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i64 0, i64 0), i8* noundef %30, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #3
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %err, label %lor.lhs.false176

lor.lhs.false176:                                 ; preds = %lor.lhs.false172
  %data_type177 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call169, i64 0, i32 1
  %31 = load i32, i32* %data_type177, align 8, !tbaa !11
  %call178 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 386, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.77, i64 0, i64 0), i32 noundef %31, i32 noundef 2) #3
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %err, label %lor.lhs.false180

lor.lhs.false180:                                 ; preds = %lor.lhs.false176
  %data_size181 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call169, i64 0, i32 3
  %32 = load i64, i64* %data_size181, align 8, !tbaa !12
  %call182 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 387, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.103, i64 0, i64 0), i64 noundef %32, i64 noundef 8) #3
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %err, label %lor.lhs.false184

lor.lhs.false184:                                 ; preds = %lor.lhs.false180
  %call185 = call i32 @OSSL_PARAM_get_ulong(%struct.ossl_param_st* noundef nonnull %call169, i64* noundef nonnull %l) #3
  %cmp186 = icmp ne i32 %call185, 0
  %conv187 = zext i1 %cmp186 to i32
  %call188 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 388, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.104, i64 0, i64 0), i32 noundef %conv187) #3
  %tobool189.not = icmp eq i32 %call188, 0
  br i1 %tobool189.not, label %err, label %lor.lhs.false190

lor.lhs.false190:                                 ; preds = %lor.lhs.false184
  %33 = load i64, i64* %l, align 8, !tbaa !14
  %call191 = call i32 @test_ulong_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 389, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0), i64 noundef %33, i64 noundef 42) #3
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %err, label %lor.lhs.false193

lor.lhs.false193:                                 ; preds = %lor.lhs.false190
  %call194 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %call92, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.89, i64 0, i64 0)) #3
  %34 = bitcast %struct.ossl_param_st* %call194 to i8*
  %call195 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 391, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.105, i64 0, i64 0), i8* noundef %34) #3
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %err, label %lor.lhs.false197

lor.lhs.false197:                                 ; preds = %lor.lhs.false193
  %key198 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call194, i64 0, i32 0
  %35 = load i8*, i8** %key198, align 8, !tbaa !7
  %call199 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 392, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i64 0, i64 0), i8* noundef %35, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.89, i64 0, i64 0)) #3
  %tobool200.not = icmp eq i32 %call199, 0
  br i1 %tobool200.not, label %err, label %lor.lhs.false201

lor.lhs.false201:                                 ; preds = %lor.lhs.false197
  %data_type202 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call194, i64 0, i32 1
  %36 = load i32, i32* %data_type202, align 8, !tbaa !11
  %call203 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 393, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.77, i64 0, i64 0), i32 noundef %36, i32 noundef 2) #3
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %err, label %lor.lhs.false205

lor.lhs.false205:                                 ; preds = %lor.lhs.false201
  %data_size206 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call194, i64 0, i32 3
  %37 = load i64, i64* %data_size206, align 8, !tbaa !12
  %call207 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 394, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.107, i64 0, i64 0), i64 noundef %37, i64 noundef 8) #3
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %err, label %lor.lhs.false209

lor.lhs.false209:                                 ; preds = %lor.lhs.false205
  %call210 = call i32 @OSSL_PARAM_get_size_t(%struct.ossl_param_st* noundef nonnull %call194, i64* noundef nonnull %st) #3
  %cmp211 = icmp ne i32 %call210, 0
  %conv212 = zext i1 %cmp211 to i32
  %call213 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 395, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.108, i64 0, i64 0), i32 noundef %conv212) #3
  %tobool214.not = icmp eq i32 %call213, 0
  br i1 %tobool214.not, label %err, label %lor.lhs.false215

lor.lhs.false215:                                 ; preds = %lor.lhs.false209
  %38 = load i64, i64* %st, align 8, !tbaa !14
  %call216 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 396, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.89, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.109, i64 0, i64 0), i64 noundef %38, i64 noundef 65537) #3
  %tobool217.not = icmp eq i32 %call216, 0
  br i1 %tobool217.not, label %err, label %lor.lhs.false218

lor.lhs.false218:                                 ; preds = %lor.lhs.false215
  %call219 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %call92, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i64 0, i64 0)) #3
  %39 = bitcast %struct.ossl_param_st* %call219 to i8*
  %call220 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 398, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.110, i64 0, i64 0), i8* noundef %39) #3
  %tobool221.not = icmp eq i32 %call220, 0
  br i1 %tobool221.not, label %err, label %lor.lhs.false222

lor.lhs.false222:                                 ; preds = %lor.lhs.false218
  %key223 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call219, i64 0, i32 0
  %40 = load i8*, i8** %key223, align 8, !tbaa !7
  %call224 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 399, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.111, i64 0, i64 0), i8* noundef %40, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i64 0, i64 0)) #3
  %tobool225.not = icmp eq i32 %call224, 0
  br i1 %tobool225.not, label %err, label %lor.lhs.false226

lor.lhs.false226:                                 ; preds = %lor.lhs.false222
  %data_type227 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call219, i64 0, i32 1
  %41 = load i32, i32* %data_type227, align 8, !tbaa !11
  %call228 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 400, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.112, i64 0, i64 0), i32 noundef %41, i32 noundef 5) #3
  %tobool229.not = icmp eq i32 %call228, 0
  br i1 %tobool229.not, label %err, label %lor.lhs.false230

lor.lhs.false230:                                 ; preds = %lor.lhs.false226
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call219, i64 0, i32 2
  %42 = load i8*, i8** %data, align 8, !tbaa !17
  %data_size231 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call219, i64 0, i32 3
  %43 = load i64, i64* %data_size231, align 8, !tbaa !12
  %call232 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 401, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.113, i64 0, i64 0), i8* noundef %42, i64 noundef %43, i8* noundef bitcast ([7 x i32]* @builder_merge_test.data1 to i8*), i64 noundef 28) #3
  %tobool233.not = icmp eq i32 %call232, 0
  br i1 %tobool233.not, label %err, label %lor.lhs.false234

lor.lhs.false234:                                 ; preds = %lor.lhs.false230
  %call235 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %call92, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i64 0, i64 0)) #3
  %44 = bitcast %struct.ossl_param_st* %call235 to i8*
  %call236 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 403, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.114, i64 0, i64 0), i8* noundef %44) #3
  %tobool237.not = icmp eq i32 %call236, 0
  br i1 %tobool237.not, label %err, label %lor.lhs.false238

lor.lhs.false238:                                 ; preds = %lor.lhs.false234
  %key239 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call235, i64 0, i32 0
  %45 = load i8*, i8** %key239, align 8, !tbaa !7
  %call240 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 404, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.116, i64 0, i64 0), i8* noundef %45, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i64 0, i64 0)) #3
  %tobool241.not = icmp eq i32 %call240, 0
  br i1 %tobool241.not, label %err, label %lor.lhs.false242

lor.lhs.false242:                                 ; preds = %lor.lhs.false238
  %data_type243 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call235, i64 0, i32 1
  %46 = load i32, i32* %data_type243, align 8, !tbaa !11
  %call244 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 405, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.117, i64 0, i64 0), i32 noundef %46, i32 noundef 7) #3
  %tobool245.not = icmp eq i32 %call244, 0
  br i1 %tobool245.not, label %err, label %lor.lhs.false246

lor.lhs.false246:                                 ; preds = %lor.lhs.false242
  %data247 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call235, i64 0, i32 2
  %47 = bitcast i8** %data247 to i8***
  %48 = load i8**, i8*** %47, align 8, !tbaa !17
  %49 = load i8*, i8** %48, align 8, !tbaa !3
  %data_size248 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call235, i64 0, i32 3
  %50 = load i64, i64* %data_size248, align 8, !tbaa !12
  %call249 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 406, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.118, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.119, i64 0, i64 0), i8* noundef %49, i64 noundef %50, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @builder_merge_test.data2, i64 0, i64 0), i64 noundef 5) #3
  %tobool250.not = icmp eq i32 %call249, 0
  br i1 %tobool250.not, label %err, label %lor.lhs.false251

lor.lhs.false251:                                 ; preds = %lor.lhs.false246
  %call252 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %call92, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.139, i64 0, i64 0)) #3
  %51 = bitcast %struct.ossl_param_st* %call252 to i8*
  %call253 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 408, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.143, i64 0, i64 0), i8* noundef %51) #3
  %tobool254.not = icmp eq i32 %call253, 0
  br i1 %tobool254.not, label %err, label %lor.lhs.false255

lor.lhs.false255:                                 ; preds = %lor.lhs.false251
  %key256 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call252, i64 0, i32 0
  %52 = load i8*, i8** %key256, align 8, !tbaa !7
  %call257 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 409, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.144, i64 0, i64 0), i8* noundef %52, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.139, i64 0, i64 0)) #3
  %tobool258.not = icmp eq i32 %call257, 0
  br i1 %tobool258.not, label %err, label %lor.lhs.false259

lor.lhs.false259:                                 ; preds = %lor.lhs.false255
  %data_type260 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call252, i64 0, i32 1
  %53 = load i32, i32* %data_type260, align 8, !tbaa !11
  %call261 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 410, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.77, i64 0, i64 0), i32 noundef %53, i32 noundef 2) #3
  %tobool262.not = icmp eq i32 %call261, 0
  br i1 %tobool262.not, label %err, label %lor.lhs.false263

lor.lhs.false263:                                 ; preds = %lor.lhs.false259
  %call264 = call i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef nonnull %call252, %struct.bignum_st** noundef nonnull %bn_pub_res) #3
  %cmp265 = icmp ne i32 %call264, 0
  %conv266 = zext i1 %cmp265 to i32
  %call267 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 411, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.145, i64 0, i64 0), i32 noundef %conv266) #3
  %tobool268.not = icmp eq i32 %call267, 0
  br i1 %tobool268.not, label %err, label %lor.lhs.false269

lor.lhs.false269:                                 ; preds = %lor.lhs.false263
  %54 = load %struct.bignum_st*, %struct.bignum_st** %bn_pub_res, align 8, !tbaa !3
  %call270 = call i32 @BN_cmp(%struct.bignum_st* noundef %54, %struct.bignum_st* noundef %call71) #3
  %call271 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 412, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.146, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.80, i64 0, i64 0), i32 noundef %call270, i32 noundef 0) #3
  %tobool272.not = icmp eq i32 %call271, 0
  br i1 %tobool272.not, label %err, label %lor.lhs.false273

lor.lhs.false273:                                 ; preds = %lor.lhs.false269
  %call274 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %call92, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.131, i64 0, i64 0)) #3
  %55 = bitcast %struct.ossl_param_st* %call274 to i8*
  %call275 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 413, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.147, i64 0, i64 0), i8* noundef %55) #3
  %tobool276.not = icmp eq i32 %call275, 0
  br i1 %tobool276.not, label %err, label %lor.lhs.false277

lor.lhs.false277:                                 ; preds = %lor.lhs.false273
  %key278 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call274, i64 0, i32 0
  %56 = load i8*, i8** %key278, align 8, !tbaa !7
  %call279 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 414, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.148, i64 0, i64 0), i8* noundef %56, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.131, i64 0, i64 0)) #3
  %tobool280.not = icmp eq i32 %call279, 0
  br i1 %tobool280.not, label %err, label %lor.lhs.false281

lor.lhs.false281:                                 ; preds = %lor.lhs.false277
  %data_type282 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call274, i64 0, i32 1
  %57 = load i32, i32* %data_type282, align 8, !tbaa !11
  %call283 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 415, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.77, i64 0, i64 0), i32 noundef %57, i32 noundef 2) #3
  %tobool284.not = icmp eq i32 %call283, 0
  br i1 %tobool284.not, label %err, label %lor.lhs.false285

lor.lhs.false285:                                 ; preds = %lor.lhs.false281
  %call286 = call i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef nonnull %call274, %struct.bignum_st** noundef nonnull %bn_priv_res) #3
  %cmp287 = icmp ne i32 %call286, 0
  %conv288 = zext i1 %cmp287 to i32
  %call289 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 416, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.149, i64 0, i64 0), i32 noundef %conv288) #3
  %tobool290.not = icmp eq i32 %call289, 0
  br i1 %tobool290.not, label %err, label %lor.lhs.false291

lor.lhs.false291:                                 ; preds = %lor.lhs.false285
  %58 = load %struct.bignum_st*, %struct.bignum_st** %bn_priv_res, align 8, !tbaa !3
  %call292 = call i32 @BN_cmp(%struct.bignum_st* noundef %58, %struct.bignum_st* noundef %call31) #3
  %call293 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef 417, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.150, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.80, i64 0, i64 0), i32 noundef %call292, i32 noundef 0) #3
  %tobool294.not = icmp ne i32 %call293, 0
  %spec.select = zext i1 %tobool294.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false291, %if.end96, %lor.lhs.false100, %lor.lhs.false106, %lor.lhs.false109, %lor.lhs.false112, %lor.lhs.false115, %lor.lhs.false118, %lor.lhs.false122, %lor.lhs.false128, %lor.lhs.false132, %lor.lhs.false136, %lor.lhs.false140, %lor.lhs.false143, %lor.lhs.false147, %lor.lhs.false151, %lor.lhs.false155, %lor.lhs.false159, %lor.lhs.false165, %lor.lhs.false168, %lor.lhs.false172, %lor.lhs.false176, %lor.lhs.false180, %lor.lhs.false184, %lor.lhs.false190, %lor.lhs.false193, %lor.lhs.false197, %lor.lhs.false201, %lor.lhs.false205, %lor.lhs.false209, %lor.lhs.false215, %lor.lhs.false218, %lor.lhs.false222, %lor.lhs.false226, %lor.lhs.false230, %lor.lhs.false234, %lor.lhs.false238, %lor.lhs.false242, %lor.lhs.false246, %lor.lhs.false251, %lor.lhs.false255, %lor.lhs.false259, %lor.lhs.false263, %lor.lhs.false269, %lor.lhs.false273, %lor.lhs.false277, %lor.lhs.false281, %lor.lhs.false285, %if.end91, %if.end, %lor.lhs.false52, %lor.lhs.false58, %lor.lhs.false64, %lor.lhs.false70, %lor.lhs.false74, %lor.lhs.false80, %lor.lhs.false86, %entry, %lor.lhs.false, %lor.lhs.false6, %lor.lhs.false12, %lor.lhs.false18, %lor.lhs.false24, %lor.lhs.false30, %lor.lhs.false34, %lor.lhs.false40, %lor.lhs.false46
  %params.0 = phi %struct.ossl_param_st* [ %call92, %lor.lhs.false285 ], [ %call92, %lor.lhs.false281 ], [ %call92, %lor.lhs.false277 ], [ %call92, %lor.lhs.false273 ], [ %call92, %lor.lhs.false269 ], [ %call92, %lor.lhs.false263 ], [ %call92, %lor.lhs.false259 ], [ %call92, %lor.lhs.false255 ], [ %call92, %lor.lhs.false251 ], [ %call92, %lor.lhs.false246 ], [ %call92, %lor.lhs.false242 ], [ %call92, %lor.lhs.false238 ], [ %call92, %lor.lhs.false234 ], [ %call92, %lor.lhs.false230 ], [ %call92, %lor.lhs.false226 ], [ %call92, %lor.lhs.false222 ], [ %call92, %lor.lhs.false218 ], [ %call92, %lor.lhs.false215 ], [ %call92, %lor.lhs.false209 ], [ %call92, %lor.lhs.false205 ], [ %call92, %lor.lhs.false201 ], [ %call92, %lor.lhs.false197 ], [ %call92, %lor.lhs.false193 ], [ %call92, %lor.lhs.false190 ], [ %call92, %lor.lhs.false184 ], [ %call92, %lor.lhs.false180 ], [ %call92, %lor.lhs.false176 ], [ %call92, %lor.lhs.false172 ], [ %call92, %lor.lhs.false168 ], [ %call92, %lor.lhs.false165 ], [ %call92, %lor.lhs.false159 ], [ %call92, %lor.lhs.false155 ], [ %call92, %lor.lhs.false151 ], [ %call92, %lor.lhs.false147 ], [ %call92, %lor.lhs.false143 ], [ %call92, %lor.lhs.false140 ], [ %call92, %lor.lhs.false136 ], [ %call92, %lor.lhs.false132 ], [ %call92, %lor.lhs.false128 ], [ %call92, %lor.lhs.false122 ], [ %call92, %lor.lhs.false118 ], [ %call92, %lor.lhs.false115 ], [ %call92, %lor.lhs.false112 ], [ %call92, %lor.lhs.false109 ], [ %call92, %lor.lhs.false106 ], [ %call92, %lor.lhs.false100 ], [ %call92, %if.end96 ], [ %call92, %if.end91 ], [ null, %lor.lhs.false86 ], [ null, %lor.lhs.false80 ], [ null, %lor.lhs.false74 ], [ null, %lor.lhs.false70 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false52 ], [ null, %if.end ], [ null, %lor.lhs.false46 ], [ null, %lor.lhs.false40 ], [ null, %lor.lhs.false34 ], [ null, %lor.lhs.false30 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false18 ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call92, %lor.lhs.false291 ]
  %params_blt.0 = phi %struct.ossl_param_st* [ %call47, %lor.lhs.false285 ], [ %call47, %lor.lhs.false281 ], [ %call47, %lor.lhs.false277 ], [ %call47, %lor.lhs.false273 ], [ %call47, %lor.lhs.false269 ], [ %call47, %lor.lhs.false263 ], [ %call47, %lor.lhs.false259 ], [ %call47, %lor.lhs.false255 ], [ %call47, %lor.lhs.false251 ], [ %call47, %lor.lhs.false246 ], [ %call47, %lor.lhs.false242 ], [ %call47, %lor.lhs.false238 ], [ %call47, %lor.lhs.false234 ], [ %call47, %lor.lhs.false230 ], [ %call47, %lor.lhs.false226 ], [ %call47, %lor.lhs.false222 ], [ %call47, %lor.lhs.false218 ], [ %call47, %lor.lhs.false215 ], [ %call47, %lor.lhs.false209 ], [ %call47, %lor.lhs.false205 ], [ %call47, %lor.lhs.false201 ], [ %call47, %lor.lhs.false197 ], [ %call47, %lor.lhs.false193 ], [ %call47, %lor.lhs.false190 ], [ %call47, %lor.lhs.false184 ], [ %call47, %lor.lhs.false180 ], [ %call47, %lor.lhs.false176 ], [ %call47, %lor.lhs.false172 ], [ %call47, %lor.lhs.false168 ], [ %call47, %lor.lhs.false165 ], [ %call47, %lor.lhs.false159 ], [ %call47, %lor.lhs.false155 ], [ %call47, %lor.lhs.false151 ], [ %call47, %lor.lhs.false147 ], [ %call47, %lor.lhs.false143 ], [ %call47, %lor.lhs.false140 ], [ %call47, %lor.lhs.false136 ], [ %call47, %lor.lhs.false132 ], [ %call47, %lor.lhs.false128 ], [ %call47, %lor.lhs.false122 ], [ %call47, %lor.lhs.false118 ], [ %call47, %lor.lhs.false115 ], [ %call47, %lor.lhs.false112 ], [ %call47, %lor.lhs.false109 ], [ %call47, %lor.lhs.false106 ], [ %call47, %lor.lhs.false100 ], [ %call47, %if.end96 ], [ %call47, %if.end91 ], [ %call47, %lor.lhs.false86 ], [ %call47, %lor.lhs.false80 ], [ %call47, %lor.lhs.false74 ], [ %call47, %lor.lhs.false70 ], [ %call47, %lor.lhs.false64 ], [ %call47, %lor.lhs.false58 ], [ %call47, %lor.lhs.false52 ], [ %call47, %if.end ], [ %call47, %lor.lhs.false46 ], [ null, %lor.lhs.false40 ], [ null, %lor.lhs.false34 ], [ null, %lor.lhs.false30 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false18 ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call47, %lor.lhs.false291 ]
  %params2_blt.0 = phi %struct.ossl_param_st* [ %call87, %lor.lhs.false285 ], [ %call87, %lor.lhs.false281 ], [ %call87, %lor.lhs.false277 ], [ %call87, %lor.lhs.false273 ], [ %call87, %lor.lhs.false269 ], [ %call87, %lor.lhs.false263 ], [ %call87, %lor.lhs.false259 ], [ %call87, %lor.lhs.false255 ], [ %call87, %lor.lhs.false251 ], [ %call87, %lor.lhs.false246 ], [ %call87, %lor.lhs.false242 ], [ %call87, %lor.lhs.false238 ], [ %call87, %lor.lhs.false234 ], [ %call87, %lor.lhs.false230 ], [ %call87, %lor.lhs.false226 ], [ %call87, %lor.lhs.false222 ], [ %call87, %lor.lhs.false218 ], [ %call87, %lor.lhs.false215 ], [ %call87, %lor.lhs.false209 ], [ %call87, %lor.lhs.false205 ], [ %call87, %lor.lhs.false201 ], [ %call87, %lor.lhs.false197 ], [ %call87, %lor.lhs.false193 ], [ %call87, %lor.lhs.false190 ], [ %call87, %lor.lhs.false184 ], [ %call87, %lor.lhs.false180 ], [ %call87, %lor.lhs.false176 ], [ %call87, %lor.lhs.false172 ], [ %call87, %lor.lhs.false168 ], [ %call87, %lor.lhs.false165 ], [ %call87, %lor.lhs.false159 ], [ %call87, %lor.lhs.false155 ], [ %call87, %lor.lhs.false151 ], [ %call87, %lor.lhs.false147 ], [ %call87, %lor.lhs.false143 ], [ %call87, %lor.lhs.false140 ], [ %call87, %lor.lhs.false136 ], [ %call87, %lor.lhs.false132 ], [ %call87, %lor.lhs.false128 ], [ %call87, %lor.lhs.false122 ], [ %call87, %lor.lhs.false118 ], [ %call87, %lor.lhs.false115 ], [ %call87, %lor.lhs.false112 ], [ %call87, %lor.lhs.false109 ], [ %call87, %lor.lhs.false106 ], [ %call87, %lor.lhs.false100 ], [ %call87, %if.end96 ], [ %call87, %if.end91 ], [ %call87, %lor.lhs.false86 ], [ null, %lor.lhs.false80 ], [ null, %lor.lhs.false74 ], [ null, %lor.lhs.false70 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false52 ], [ null, %if.end ], [ null, %lor.lhs.false46 ], [ null, %lor.lhs.false40 ], [ null, %lor.lhs.false34 ], [ null, %lor.lhs.false30 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false18 ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call87, %lor.lhs.false291 ]
  %bn_priv.0 = phi %struct.bignum_st* [ %call31, %lor.lhs.false285 ], [ %call31, %lor.lhs.false281 ], [ %call31, %lor.lhs.false277 ], [ %call31, %lor.lhs.false273 ], [ %call31, %lor.lhs.false269 ], [ %call31, %lor.lhs.false263 ], [ %call31, %lor.lhs.false259 ], [ %call31, %lor.lhs.false255 ], [ %call31, %lor.lhs.false251 ], [ %call31, %lor.lhs.false246 ], [ %call31, %lor.lhs.false242 ], [ %call31, %lor.lhs.false238 ], [ %call31, %lor.lhs.false234 ], [ %call31, %lor.lhs.false230 ], [ %call31, %lor.lhs.false226 ], [ %call31, %lor.lhs.false222 ], [ %call31, %lor.lhs.false218 ], [ %call31, %lor.lhs.false215 ], [ %call31, %lor.lhs.false209 ], [ %call31, %lor.lhs.false205 ], [ %call31, %lor.lhs.false201 ], [ %call31, %lor.lhs.false197 ], [ %call31, %lor.lhs.false193 ], [ %call31, %lor.lhs.false190 ], [ %call31, %lor.lhs.false184 ], [ %call31, %lor.lhs.false180 ], [ %call31, %lor.lhs.false176 ], [ %call31, %lor.lhs.false172 ], [ %call31, %lor.lhs.false168 ], [ %call31, %lor.lhs.false165 ], [ %call31, %lor.lhs.false159 ], [ %call31, %lor.lhs.false155 ], [ %call31, %lor.lhs.false151 ], [ %call31, %lor.lhs.false147 ], [ %call31, %lor.lhs.false143 ], [ %call31, %lor.lhs.false140 ], [ %call31, %lor.lhs.false136 ], [ %call31, %lor.lhs.false132 ], [ %call31, %lor.lhs.false128 ], [ %call31, %lor.lhs.false122 ], [ %call31, %lor.lhs.false118 ], [ %call31, %lor.lhs.false115 ], [ %call31, %lor.lhs.false112 ], [ %call31, %lor.lhs.false109 ], [ %call31, %lor.lhs.false106 ], [ %call31, %lor.lhs.false100 ], [ %call31, %if.end96 ], [ %call31, %if.end91 ], [ %call31, %lor.lhs.false86 ], [ %call31, %lor.lhs.false80 ], [ %call31, %lor.lhs.false74 ], [ %call31, %lor.lhs.false70 ], [ %call31, %lor.lhs.false64 ], [ %call31, %lor.lhs.false58 ], [ %call31, %lor.lhs.false52 ], [ %call31, %if.end ], [ %call31, %lor.lhs.false46 ], [ %call31, %lor.lhs.false40 ], [ %call31, %lor.lhs.false34 ], [ %call31, %lor.lhs.false30 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false18 ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call31, %lor.lhs.false291 ]
  %bn_pub.0 = phi %struct.bignum_st* [ %call71, %lor.lhs.false285 ], [ %call71, %lor.lhs.false281 ], [ %call71, %lor.lhs.false277 ], [ %call71, %lor.lhs.false273 ], [ %call71, %lor.lhs.false269 ], [ %call71, %lor.lhs.false263 ], [ %call71, %lor.lhs.false259 ], [ %call71, %lor.lhs.false255 ], [ %call71, %lor.lhs.false251 ], [ %call71, %lor.lhs.false246 ], [ %call71, %lor.lhs.false242 ], [ %call71, %lor.lhs.false238 ], [ %call71, %lor.lhs.false234 ], [ %call71, %lor.lhs.false230 ], [ %call71, %lor.lhs.false226 ], [ %call71, %lor.lhs.false222 ], [ %call71, %lor.lhs.false218 ], [ %call71, %lor.lhs.false215 ], [ %call71, %lor.lhs.false209 ], [ %call71, %lor.lhs.false205 ], [ %call71, %lor.lhs.false201 ], [ %call71, %lor.lhs.false197 ], [ %call71, %lor.lhs.false193 ], [ %call71, %lor.lhs.false190 ], [ %call71, %lor.lhs.false184 ], [ %call71, %lor.lhs.false180 ], [ %call71, %lor.lhs.false176 ], [ %call71, %lor.lhs.false172 ], [ %call71, %lor.lhs.false168 ], [ %call71, %lor.lhs.false165 ], [ %call71, %lor.lhs.false159 ], [ %call71, %lor.lhs.false155 ], [ %call71, %lor.lhs.false151 ], [ %call71, %lor.lhs.false147 ], [ %call71, %lor.lhs.false143 ], [ %call71, %lor.lhs.false140 ], [ %call71, %lor.lhs.false136 ], [ %call71, %lor.lhs.false132 ], [ %call71, %lor.lhs.false128 ], [ %call71, %lor.lhs.false122 ], [ %call71, %lor.lhs.false118 ], [ %call71, %lor.lhs.false115 ], [ %call71, %lor.lhs.false112 ], [ %call71, %lor.lhs.false109 ], [ %call71, %lor.lhs.false106 ], [ %call71, %lor.lhs.false100 ], [ %call71, %if.end96 ], [ %call71, %if.end91 ], [ %call71, %lor.lhs.false86 ], [ %call71, %lor.lhs.false80 ], [ %call71, %lor.lhs.false74 ], [ %call71, %lor.lhs.false70 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false52 ], [ null, %if.end ], [ null, %lor.lhs.false46 ], [ null, %lor.lhs.false40 ], [ null, %lor.lhs.false34 ], [ null, %lor.lhs.false30 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false18 ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call71, %lor.lhs.false291 ]
  %res.0 = phi i32 [ 0, %lor.lhs.false285 ], [ 0, %lor.lhs.false281 ], [ 0, %lor.lhs.false277 ], [ 0, %lor.lhs.false273 ], [ 0, %lor.lhs.false269 ], [ 0, %lor.lhs.false263 ], [ 0, %lor.lhs.false259 ], [ 0, %lor.lhs.false255 ], [ 0, %lor.lhs.false251 ], [ 0, %lor.lhs.false246 ], [ 0, %lor.lhs.false242 ], [ 0, %lor.lhs.false238 ], [ 0, %lor.lhs.false234 ], [ 0, %lor.lhs.false230 ], [ 0, %lor.lhs.false226 ], [ 0, %lor.lhs.false222 ], [ 0, %lor.lhs.false218 ], [ 0, %lor.lhs.false215 ], [ 0, %lor.lhs.false209 ], [ 0, %lor.lhs.false205 ], [ 0, %lor.lhs.false201 ], [ 0, %lor.lhs.false197 ], [ 0, %lor.lhs.false193 ], [ 0, %lor.lhs.false190 ], [ 0, %lor.lhs.false184 ], [ 0, %lor.lhs.false180 ], [ 0, %lor.lhs.false176 ], [ 0, %lor.lhs.false172 ], [ 0, %lor.lhs.false168 ], [ 0, %lor.lhs.false165 ], [ 0, %lor.lhs.false159 ], [ 0, %lor.lhs.false155 ], [ 0, %lor.lhs.false151 ], [ 0, %lor.lhs.false147 ], [ 0, %lor.lhs.false143 ], [ 0, %lor.lhs.false140 ], [ 0, %lor.lhs.false136 ], [ 0, %lor.lhs.false132 ], [ 0, %lor.lhs.false128 ], [ 0, %lor.lhs.false122 ], [ 0, %lor.lhs.false118 ], [ 0, %lor.lhs.false115 ], [ 0, %lor.lhs.false112 ], [ 0, %lor.lhs.false109 ], [ 0, %lor.lhs.false106 ], [ 0, %lor.lhs.false100 ], [ 0, %if.end96 ], [ 0, %if.end91 ], [ 0, %lor.lhs.false86 ], [ 0, %lor.lhs.false80 ], [ 0, %lor.lhs.false74 ], [ 0, %lor.lhs.false70 ], [ 0, %lor.lhs.false64 ], [ 0, %lor.lhs.false58 ], [ 0, %lor.lhs.false52 ], [ 0, %if.end ], [ 0, %lor.lhs.false46 ], [ 0, %lor.lhs.false40 ], [ 0, %lor.lhs.false34 ], [ 0, %lor.lhs.false30 ], [ 0, %lor.lhs.false24 ], [ 0, %lor.lhs.false18 ], [ 0, %lor.lhs.false12 ], [ 0, %lor.lhs.false6 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false291 ]
  call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %params.0) #3
  call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %params_blt.0) #3
  call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %params2_blt.0) #3
  call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef %call) #3
  call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef %call1) #3
  call void @BN_free(%struct.bignum_st* noundef %bn_priv.0) #3
  %59 = load %struct.bignum_st*, %struct.bignum_st** %bn_priv_res, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %59) #3
  call void @BN_free(%struct.bignum_st* noundef %bn_pub.0) #3
  %60 = load %struct.bignum_st*, %struct.bignum_st** %bn_pub_res, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %60) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4
  ret i32 %res.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_BLD_push_long(%struct.ossl_param_bld_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_BLD_push_int32(%struct.ossl_param_bld_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_BLD_push_int64(%struct.ossl_param_bld_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_BLD_push_time_t(%struct.ossl_param_bld_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_BLD_push_double(%struct.ossl_param_bld_st* noundef, i8* noundef, double noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_new() local_unnamed_addr #1

declare dso_local i32 @BN_set_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_BLD_push_utf8_string(%struct.ossl_param_bld_st* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_BLD_push_utf8_ptr(%struct.ossl_param_bld_st* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_BLD_push_int(%struct.ossl_param_bld_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_param_st* @OSSL_PARAM_merge(%struct.ossl_param_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_param_st* @OSSL_PARAM_dup(%struct.ossl_param_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local i32 @test_str_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_uint_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_size_t_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_get_int32(%struct.ossl_param_st* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_get_int64(%struct.ossl_param_st* noundef, i64* noundef) local_unnamed_addr #1

declare dso_local i32 @test_long_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_get_long(%struct.ossl_param_st* noundef, i64* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_get_time_t(%struct.ossl_param_st* noundef, i64* noundef) local_unnamed_addr #1

declare dso_local i32 @test_time_t_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_get_double(%struct.ossl_param_st* noundef, double* noundef) local_unnamed_addr #1

declare dso_local i32 @test_double_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, double noundef, double noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_get_utf8_string(%struct.ossl_param_st* noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_get_utf8_ptr(%struct.ossl_param_st* noundef, i8** noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef, %struct.bignum_st** noundef) local_unnamed_addr #1

declare dso_local i32 @BN_cmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_free(%struct.ossl_param_st* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef) local_unnamed_addr #1

declare dso_local void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i8* @CRYPTO_secure_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_BLD_push_uint(%struct.ossl_param_bld_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_BLD_push_ulong(%struct.ossl_param_bld_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_BLD_push_uint32(%struct.ossl_param_bld_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_BLD_push_uint64(%struct.ossl_param_bld_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_BLD_push_size_t(%struct.ossl_param_bld_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_secure_new() local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_BLD_push_octet_string(%struct.ossl_param_bld_st* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_BLD_push_octet_ptr(%struct.ossl_param_bld_st* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @CRYPTO_secure_allocated(i8* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_get_uint(%struct.ossl_param_st* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_get_uint32(%struct.ossl_param_st* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_get_uint64(%struct.ossl_param_st* noundef, i64* noundef) local_unnamed_addr #1

declare dso_local i32 @test_ulong_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_get_ulong(%struct.ossl_param_st* noundef, i64* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_get_size_t(%struct.ossl_param_st* noundef, i64* noundef) local_unnamed_addr #1

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @BN_get_flags(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @CRYPTO_secure_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 0}
!8 = !{!"ossl_param_st", !4, i64 0, !9, i64 8, !4, i64 16, !10, i64 24, !10, i64 32}
!9 = !{!"int", !5, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!8, !9, i64 8}
!12 = !{!8, !10, i64 24}
!13 = !{!9, !9, i64 0}
!14 = !{!10, !10, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"double", !5, i64 0}
!17 = !{!8, !4, i64 16}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!5, !5, i64 0}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !19}
