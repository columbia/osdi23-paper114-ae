; ModuleID = 'test/dsatest.c'
source_filename = "test/dsatest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_st = type opaque
%struct.bn_gencb_st = type opaque
%struct.dsa_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.evp_pkey_ctx_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"dsa_test\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"dsa_keygen_test\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"test_dsa_default_paramgen_validate\00", align 1
@dsa_test.seed = internal global [20 x i8] c"\D5\01NK`\EF+\A8\B6!\1B@b\BA2$\E0B}\D3", align 16
@dsa_test.out_p = internal global [64 x i8] c"\8D\F2\A4\94I\22v\AA=%u\9B\B0hi\CB\EA\C0\D8:\FB\8D\0C\F7\CB\B82O\0Dx\82\E5\D0v/\C5\B7!\0E\AF\C2\E9\AD\AC2\ABz\ACIi=\FB\F87$\C2\EC\076\EE1\C8\02\91", align 16
@dsa_test.out_q = internal global [20 x i8] c"\C7s!\8Cs~\C8\EE\99;O-\ED0\F4\8E\DA\CE\91_", align 16
@dsa_test.out_g = internal global [64 x i8] c"bm\02x9\EA\0A\13A1c\A5[L\B5\00)\9DU\22\95l\EF\CB;\FF\10\F3\99\CE,.q\CB\9D\E5\FA$\BA\BFX\E5\B7\95!\92\\\9C\C4.\9FoFK\08\8C\C5r\AFS\E6\D7\88\02", align 16
@dsa_test.str1 = internal constant [21 x i8] c"12345678901234567890\00", align 16
@.str.3 = private unnamed_addr constant [15 x i8] c"test/dsatest.c\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"cb = BN_GENCB_new()\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"dsa = DSA_new()\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"DSA_generate_parameters_ex(dsa, 512, seed, 20, &counter, &h, cb)\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"counter\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"105\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"out_q\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"out_p\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"out_g\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"DSA_generate_key(dsa)\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"DSA_sign(0, str1, 20, sig, &siglen, dsa)\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"DSA_verify(0, str1, 20, sig, siglen, dsa)\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@dsa_cb.ok = internal unnamed_addr global i32 0, align 4
@dsa_cb.num = internal unnamed_addr global i32 0, align 4
@.str.21 = private unnamed_addr constant [13 x i8] c"dsa_cb error\00", align 1
@dsa_keygen_test.seed_data = internal constant [28 x i8] c"\A6\F5(\8CPw\A5hm:\F5\F1\C6L\DC5\95&?\03\DC\00?D{*\C7)", align 16
@dsa_keygen_test.expected_p = internal constant [256 x i8] c"\DBG\07\AF\F0\06IU\C9\BB\09A\B8\DB\1F\BC\A8\ED\12\06\7F\88I\B8\C9\12\87!\BB\08l\BD\F1\89\EF\84\D9z\93\E8E@\81\EC7'\1A\A4\22Q\99\F0\DE\04\DB\EA\A1\F97\83\80\966S\F6\AE\14s3\0F\DF\0B\F9/\08F1\F9f\CDZ\EBl\F3\BBt\F3\88\F01\\\A4\C8\0F\86\F3\0F\9F\C0\8CW\E4\7F\95\B3b\C8N\AE\F3\D8\14\CCG\C2KO\EF\AF\CD\CF\B2\BB\E8\BE\08\CA\15\90Y5\EF5\1C\FE\EB3.%\22W\9CU#\0Co\ED|\B6\C76\0B\CB+j!\A1\1DUw\D9\91\CD\C1\CD=\82\16\9C\A0\13\A5\83U:s~,D>p.P\91n\CA;\EF\FF\855p\FFa\0C\B1\B2\B7\94oe\A4Wb\EF!\83\0F>q\AE}\E4\AD\FB\E3\DD\D6\03\DA\9A\D8\8F-\BB\90\87\F8\DB\DC\ECq\F2\DB\0B\8E\FC\1A~y\B1\1B\0D\FCp\EC\85\C2\C5\BA\B9i?\88\BC\CB", align 16
@dsa_keygen_test.expected_q = internal constant [28 x i8] c"\99\B6\A0\EE\B3\A6\99\1A\B6g\8D\C1+\9B\CE+\01rZev=\93i\E2V\AE\D7", align 16
@dsa_keygen_test.expected_g = internal constant [256 x i8] c"c\F8\B6\EE*'\AFOL\F6\08(\87J\E7\1FEF'R;\7Fo\D2)\CB\E8\11\19%5v\99\CBO\1B\E0\ED2\9E\05\B5\BE\D7\F6Z\B2\F6\0E\0C~\F5\E1\05\FE\DA\AF\0F'\1E@*\F7\A7#I,\D9\1B\0A\BE\FF\C7|}`\CA\A3\19\C3\B7\E4C\B0\F5uD\90FG\B1\A6H\0B!\8E\EEu\E6=\A7\D3{1\D1\D2\9D\E2\8A\FCW\FD\8A\101\EB\876?er#,\D3\D6\17\A5bXeWj\D4\A8\FE\ECWv\0C\B1L\93\ED\B0\B4\F9E\B3>\DDG\F1\FB}%y=\FC\A79\90hjk\AE\F2nd\8C\FB\B8\DDvNJi\8C\97\15w\B2g\DC\EBJ@k\B9G\8F\A6\ABn\98\C0\97\9A\0C\EA\00\FDV\1At\9A2k\FE\BD\DFl\82TSMpe\E3\8B7\B8\E4p\08\B7;0'\AF\1Cw\F3b\D4\9AY\BA\D1n\89\\4\9A\A1\B7O}\8C\DC\BCt%^\BFwF", align 16
@.str.22 = private unnamed_addr constant [55 x i8] c"p_in = BN_bin2bn(expected_p, sizeof(expected_p), NULL)\00", align 1
@.str.23 = private unnamed_addr constant [55 x i8] c"q_in = BN_bin2bn(expected_q, sizeof(expected_q), NULL)\00", align 1
@.str.24 = private unnamed_addr constant [55 x i8] c"g_in = BN_bin2bn(expected_g, sizeof(expected_g), NULL)\00", align 1
@.str.25 = private unnamed_addr constant [55 x i8] c"pg_ctx = EVP_PKEY_CTX_new_from_name(NULL, \22DSA\22, NULL)\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"DSA\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"EVP_PKEY_paramgen_init(pg_ctx)\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"EVP_PKEY_CTX_gettable_params(pg_ctx)\00", align 1
@.str.29 = private unnamed_addr constant [49 x i8] c"settables = EVP_PKEY_CTX_settable_params(pg_ctx)\00", align 1
@.str.30 = private unnamed_addr constant [62 x i8] c"OSSL_PARAM_locate_const(settables, OSSL_PKEY_PARAM_FFC_PBITS)\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"pbits\00", align 1
@.str.32 = private unnamed_addr constant [56 x i8] c"EVP_PKEY_CTX_set_dsa_paramgen_type(pg_ctx, \22fips186_4\22)\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"fips186_4\00", align 1
@.str.34 = private unnamed_addr constant [49 x i8] c"EVP_PKEY_CTX_set_dsa_paramgen_bits(pg_ctx, 2048)\00", align 1
@.str.35 = private unnamed_addr constant [50 x i8] c"EVP_PKEY_CTX_set_dsa_paramgen_q_bits(pg_ctx, 224)\00", align 1
@.str.36 = private unnamed_addr constant [73 x i8] c"EVP_PKEY_CTX_set_dsa_paramgen_seed(pg_ctx, seed_data, sizeof(seed_data))\00", align 1
@.str.37 = private unnamed_addr constant [61 x i8] c"EVP_PKEY_CTX_set_dsa_paramgen_md_props(pg_ctx, \22SHA256\22, \22\22)\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"SHA256\00", align 1
@.str.39 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.40 = private unnamed_addr constant [38 x i8] c"EVP_PKEY_generate(pg_ctx, &param_key)\00", align 1
@.str.41 = private unnamed_addr constant [59 x i8] c"kg_ctx = EVP_PKEY_CTX_new_from_pkey(NULL, param_key, NULL)\00", align 1
@.str.42 = private unnamed_addr constant [29 x i8] c"EVP_PKEY_keygen_init(kg_ctx)\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"EVP_PKEY_generate(kg_ctx, &key)\00", align 1
@.str.44 = private unnamed_addr constant [58 x i8] c"EVP_PKEY_get_bn_param(key, OSSL_PKEY_PARAM_FFC_P, &p_out)\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"p_in\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"p_out\00", align 1
@.str.48 = private unnamed_addr constant [58 x i8] c"EVP_PKEY_get_bn_param(key, OSSL_PKEY_PARAM_FFC_Q, &q_out)\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"q_in\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"q_out\00", align 1
@.str.52 = private unnamed_addr constant [58 x i8] c"EVP_PKEY_get_bn_param(key, OSSL_PKEY_PARAM_FFC_G, &g_out)\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"g_in\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"g_out\00", align 1
@.str.56 = private unnamed_addr constant [98 x i8] c"EVP_PKEY_get_octet_string_param( key, OSSL_PKEY_PARAM_FFC_SEED, seed_out, sizeof(seed_out), &len)\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"seed_out\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"seed_data\00", align 1
@.str.60 = private unnamed_addr constant [69 x i8] c"EVP_PKEY_get_int_param(key, OSSL_PKEY_PARAM_FFC_GINDEX, &gindex_out)\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"gindex\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"gindex_out\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.64 = private unnamed_addr constant [64 x i8] c"EVP_PKEY_get_int_param(key, OSSL_PKEY_PARAM_FFC_H, &hcount_out)\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"hindex\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"hcount_out\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"expected_h\00", align 1
@.str.68 = private unnamed_addr constant [71 x i8] c"EVP_PKEY_get_int_param(key, OSSL_PKEY_PARAM_FFC_PCOUNTER, &pcount_out)\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"pcounter\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"pcount_out\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"expected_c\00", align 1
@.str.72 = private unnamed_addr constant [100 x i8] c"EVP_PKEY_get_utf8_string_param(key, OSSL_PKEY_PARAM_GROUP_NAME, group_out, sizeof(group_out), &len)\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.74 = private unnamed_addr constant [56 x i8] c"gen_ctx = EVP_PKEY_CTX_new_from_name(NULL, \22DSA\22, NULL)\00", align 1
@.str.75 = private unnamed_addr constant [32 x i8] c"EVP_PKEY_paramgen_init(gen_ctx)\00", align 1
@.str.76 = private unnamed_addr constant [49 x i8] c"EVP_PKEY_CTX_set_dsa_paramgen_bits(gen_ctx, 512)\00", align 1
@.str.77 = private unnamed_addr constant [36 x i8] c"EVP_PKEY_generate(gen_ctx, &params)\00", align 1
@.str.78 = private unnamed_addr constant [59 x i8] c"check_ctx = EVP_PKEY_CTX_new_from_pkey(NULL, params, NULL)\00", align 1
@.str.79 = private unnamed_addr constant [32 x i8] c"EVP_PKEY_param_check(check_ctx)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @dsa_test) #3
  tail call void @add_test(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @dsa_keygen_test) #3
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 (i32)* noundef nonnull @test_dsa_default_paramgen_validate, i32 noundef 2, i32 noundef 1) #3
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @dsa_test() #0 {
entry:
  %counter = alloca i32, align 4
  %buf = alloca [256 x i8], align 16
  %h = alloca i64, align 8
  %sig = alloca [256 x i8], align 16
  %siglen = alloca i32, align 4
  %p = alloca %struct.bignum_st*, align 8
  %q = alloca %struct.bignum_st*, align 8
  %g = alloca %struct.bignum_st*, align 8
  %0 = bitcast i32* %counter to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4
  %1 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %1) #4
  %2 = bitcast i64* %h to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #4
  %3 = getelementptr inbounds [256 x i8], [256 x i8]* %sig, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %3) #4
  %4 = bitcast i32* %siglen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #4
  %5 = bitcast %struct.bignum_st** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #4
  store %struct.bignum_st* null, %struct.bignum_st** %p, align 8, !tbaa !3
  %6 = bitcast %struct.bignum_st** %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #4
  store %struct.bignum_st* null, %struct.bignum_st** %q, align 8, !tbaa !3
  %7 = bitcast %struct.bignum_st** %g to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #4
  store %struct.bignum_st* null, %struct.bignum_st** %g, align 8, !tbaa !3
  %call = tail call %struct.bn_gencb_st* @BN_GENCB_new() #3
  %8 = bitcast %struct.bn_gencb_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* noundef %8) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %end, label %if.end

if.end:                                           ; preds = %entry
  tail call void @BN_GENCB_set(%struct.bn_gencb_st* noundef %call, i32 (i32, i32, %struct.bn_gencb_st*)* noundef nonnull @dsa_cb, i8* noundef null) #3
  %call2 = tail call %struct.dsa_st* @DSA_new() #3
  %9 = bitcast %struct.dsa_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* noundef %9) #3
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call5 = call i32 @DSA_generate_parameters_ex(%struct.dsa_st* noundef %call2, i32 noundef 512, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @dsa_test.seed, i64 0, i64 0), i32 noundef 20, i32* noundef nonnull %counter, i64* noundef nonnull %h, %struct.bn_gencb_st* noundef %call) #3
  %cmp = icmp ne i32 %call5, 0
  %conv = zext i1 %cmp to i32
  %call6 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0), i32 noundef %conv) #3
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %end, label %if.end9

if.end9:                                          ; preds = %lor.lhs.false
  %10 = load i32, i32* %counter, align 4, !tbaa !7
  %call10 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 noundef %10, i32 noundef 105) #3
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %end, label %if.end13

if.end13:                                         ; preds = %if.end9
  %11 = load i64, i64* %h, align 8, !tbaa !9
  %conv14 = trunc i64 %11 to i32
  %call15 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv14, i32 noundef 2) #3
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %end, label %if.end18

if.end18:                                         ; preds = %if.end13
  call void @DSA_get0_pqg(%struct.dsa_st* noundef %call2, %struct.bignum_st** noundef nonnull %p, %struct.bignum_st** noundef nonnull %q, %struct.bignum_st** noundef nonnull %g) #3
  %12 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !3
  %call19 = call i32 @BN_bn2bin(%struct.bignum_st* noundef %12, i8* noundef nonnull %1) #3
  %call20 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 98, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 noundef %call19, i32 noundef 20) #3
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %end, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %if.end18
  %conv24 = sext i32 %call19 to i64
  %call26 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 98, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef %conv24, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @dsa_test.out_q, i64 0, i64 0), i64 noundef %conv24) #3
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %end, label %if.end29

if.end29:                                         ; preds = %lor.lhs.false22
  %13 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !3
  %call31 = call i32 @BN_bn2bin(%struct.bignum_st* noundef %13, i8* noundef nonnull %1) #3
  %call32 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 103, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 noundef %call31, i32 noundef 64) #3
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %end, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %if.end29
  %conv36 = sext i32 %call31 to i64
  %call38 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 103, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef %conv36, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @dsa_test.out_p, i64 0, i64 0), i64 noundef %conv36) #3
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %end, label %if.end41

if.end41:                                         ; preds = %lor.lhs.false34
  %14 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !3
  %call43 = call i32 @BN_bn2bin(%struct.bignum_st* noundef %14, i8* noundef nonnull %1) #3
  %call44 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 108, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 noundef %call43, i32 noundef 64) #3
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %end, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %if.end41
  %conv48 = sext i32 %call43 to i64
  %call50 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 108, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef %conv48, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @dsa_test.out_g, i64 0, i64 0), i64 noundef %conv48) #3
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %end, label %if.end53

if.end53:                                         ; preds = %lor.lhs.false46
  %call54 = call i32 @DSA_generate_key(%struct.dsa_st* noundef %call2) #3
  %cmp55 = icmp ne i32 %call54, 0
  %conv56 = zext i1 %cmp55 to i32
  %call57 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 111, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i32 noundef %conv56) #3
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %end, label %if.end60

if.end60:                                         ; preds = %if.end53
  %call62 = call i32 @DSA_sign(i32 noundef 0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @dsa_test.str1, i64 0, i64 0), i32 noundef 20, i8* noundef nonnull %3, i32* noundef nonnull %siglen, %struct.dsa_st* noundef %call2) #3
  %cmp63 = icmp ne i32 %call62, 0
  %conv64 = zext i1 %cmp63 to i32
  %call65 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 113, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i64 0, i64 0), i32 noundef %conv64) #3
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %end, label %if.end68

if.end68:                                         ; preds = %if.end60
  %15 = load i32, i32* %siglen, align 4, !tbaa !7
  %call70 = call i32 @DSA_verify(i32 noundef 0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @dsa_test.str1, i64 0, i64 0), i32 noundef 20, i8* noundef nonnull %3, i32 noundef %15, %struct.dsa_st* noundef %call2) #3
  %call71 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 115, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i32 noundef %call70, i32 noundef 0) #3
  %tobool72.not = icmp ne i32 %call71, 0
  %spec.select = zext i1 %tobool72.not to i32
  br label %end

end:                                              ; preds = %if.end68, %if.end60, %if.end53, %if.end41, %lor.lhs.false46, %if.end29, %lor.lhs.false34, %if.end18, %lor.lhs.false22, %if.end13, %if.end9, %if.end, %lor.lhs.false, %entry
  %dsa.0 = phi %struct.dsa_st* [ %call2, %if.end60 ], [ %call2, %if.end53 ], [ %call2, %lor.lhs.false46 ], [ %call2, %if.end41 ], [ %call2, %lor.lhs.false34 ], [ %call2, %if.end29 ], [ %call2, %lor.lhs.false22 ], [ %call2, %if.end18 ], [ %call2, %if.end13 ], [ %call2, %if.end9 ], [ %call2, %lor.lhs.false ], [ %call2, %if.end ], [ null, %entry ], [ %call2, %if.end68 ]
  %ret.0 = phi i32 [ 0, %if.end60 ], [ 0, %if.end53 ], [ 0, %lor.lhs.false46 ], [ 0, %if.end41 ], [ 0, %lor.lhs.false34 ], [ 0, %if.end29 ], [ 0, %lor.lhs.false22 ], [ 0, %if.end18 ], [ 0, %if.end13 ], [ 0, %if.end9 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %if.end68 ]
  call void @DSA_free(%struct.dsa_st* noundef %dsa.0) #3
  call void @BN_GENCB_free(%struct.bn_gencb_st* noundef %call) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #4
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %3) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dsa_keygen_test() #0 {
entry:
  %param_key = alloca %struct.evp_pkey_st*, align 8
  %key = alloca %struct.evp_pkey_st*, align 8
  %p_out = alloca %struct.bignum_st*, align 8
  %q_out = alloca %struct.bignum_st*, align 8
  %g_out = alloca %struct.bignum_st*, align 8
  %gindex_out = alloca i32, align 4
  %pcount_out = alloca i32, align 4
  %hcount_out = alloca i32, align 4
  %seed_out = alloca [32 x i8], align 16
  %group_out = alloca [32 x i8], align 16
  %len = alloca i64, align 8
  %0 = bitcast %struct.evp_pkey_st** %param_key to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %param_key, align 8, !tbaa !3
  %1 = bitcast %struct.evp_pkey_st** %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #4
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %key, align 8, !tbaa !3
  %2 = bitcast %struct.bignum_st** %p_out to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #4
  store %struct.bignum_st* null, %struct.bignum_st** %p_out, align 8, !tbaa !3
  %3 = bitcast %struct.bignum_st** %q_out to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #4
  store %struct.bignum_st* null, %struct.bignum_st** %q_out, align 8, !tbaa !3
  %4 = bitcast %struct.bignum_st** %g_out to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4
  store %struct.bignum_st* null, %struct.bignum_st** %g_out, align 8, !tbaa !3
  %5 = bitcast i32* %gindex_out to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #4
  store i32 0, i32* %gindex_out, align 4, !tbaa !7
  %6 = bitcast i32* %pcount_out to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #4
  store i32 0, i32* %pcount_out, align 4, !tbaa !7
  %7 = bitcast i32* %hcount_out to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #4
  store i32 0, i32* %hcount_out, align 4, !tbaa !7
  %8 = getelementptr inbounds [32 x i8], [32 x i8]* %seed_out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #4
  %9 = getelementptr inbounds [32 x i8], [32 x i8]* %group_out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #4
  %10 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #4
  store i64 0, i64* %len, align 8, !tbaa !9
  %call = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @dsa_keygen_test.expected_p, i64 0, i64 0), i32 noundef 256, %struct.bignum_st* noundef null) #3
  %11 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 244, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22, i64 0, i64 0), i8* noundef %11) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @dsa_keygen_test.expected_q, i64 0, i64 0), i32 noundef 28, %struct.bignum_st* noundef null) #3
  %12 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 245, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i8* noundef %12) #3
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %end, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @dsa_keygen_test.expected_g, i64 0, i64 0), i32 noundef 256, %struct.bignum_st* noundef null) #3
  %13 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 246, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.24, i64 0, i64 0), i8* noundef %13) #3
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %end, label %if.end

if.end:                                           ; preds = %lor.lhs.false5
  %call9 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8* noundef null) #3
  %14 = bitcast %struct.evp_pkey_ctx_st* %call9 to i8*
  %call10 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 248, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.25, i64 0, i64 0), i8* noundef %14) #3
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %end, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.end
  %call13 = tail call i32 @EVP_PKEY_paramgen_init(%struct.evp_pkey_ctx_st* noundef %call9) #3
  %call14 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 249, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i32 noundef %call13, i32 noundef 0) #3
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %end, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false12
  %call17 = tail call %struct.ossl_param_st* @EVP_PKEY_CTX_gettable_params(%struct.evp_pkey_ctx_st* noundef %call9) #3
  %15 = bitcast %struct.ossl_param_st* %call17 to i8*
  %call18 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 250, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.28, i64 0, i64 0), i8* noundef %15) #3
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %end, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false16
  %call21 = tail call %struct.ossl_param_st* @EVP_PKEY_CTX_settable_params(%struct.evp_pkey_ctx_st* noundef %call9) #3
  %16 = bitcast %struct.ossl_param_st* %call21 to i8*
  %call22 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 251, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.29, i64 0, i64 0), i8* noundef %16) #3
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %end, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false20
  %call25 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call21, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0)) #3
  %17 = bitcast %struct.ossl_param_st* %call25 to i8*
  %call26 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 253, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.30, i64 0, i64 0), i8* noundef %17) #3
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %end, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false24
  %call29 = tail call i32 @EVP_PKEY_CTX_set_dsa_paramgen_type(%struct.evp_pkey_ctx_st* noundef %call9, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0)) #3
  %cmp = icmp ne i32 %call29, 0
  %conv = zext i1 %cmp to i32
  %call30 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 254, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.32, i64 0, i64 0), i32 noundef %conv) #3
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %end, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false28
  %call33 = tail call i32 @EVP_PKEY_CTX_set_dsa_paramgen_bits(%struct.evp_pkey_ctx_st* noundef %call9, i32 noundef 2048) #3
  %cmp34 = icmp ne i32 %call33, 0
  %conv35 = zext i1 %cmp34 to i32
  %call36 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 255, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.34, i64 0, i64 0), i32 noundef %conv35) #3
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %end, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false32
  %call39 = tail call i32 @EVP_PKEY_CTX_set_dsa_paramgen_q_bits(%struct.evp_pkey_ctx_st* noundef %call9, i32 noundef 224) #3
  %cmp40 = icmp ne i32 %call39, 0
  %conv41 = zext i1 %cmp40 to i32
  %call42 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 256, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv41) #3
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %end, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %lor.lhs.false38
  %call45 = tail call i32 @EVP_PKEY_CTX_set_dsa_paramgen_seed(%struct.evp_pkey_ctx_st* noundef %call9, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @dsa_keygen_test.seed_data, i64 0, i64 0), i64 noundef 28) #3
  %cmp46 = icmp ne i32 %call45, 0
  %conv47 = zext i1 %cmp46 to i32
  %call48 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 258, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv47) #3
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %end, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %lor.lhs.false44
  %call51 = tail call i32 @EVP_PKEY_CTX_set_dsa_paramgen_md_props(%struct.evp_pkey_ctx_st* noundef %call9, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.39, i64 0, i64 0)) #3
  %cmp52 = icmp ne i32 %call51, 0
  %conv53 = zext i1 %cmp52 to i32
  %call54 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 260, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.37, i64 0, i64 0), i32 noundef %conv53) #3
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %end, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %lor.lhs.false50
  %call57 = call i32 @EVP_PKEY_generate(%struct.evp_pkey_ctx_st* noundef %call9, %struct.evp_pkey_st** noundef nonnull %param_key) #3
  %call58 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 261, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i32 noundef %call57, i32 noundef 0) #3
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %end, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false56
  %18 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %param_key, align 8, !tbaa !3
  %call61 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef null, %struct.evp_pkey_st* noundef %18, i8* noundef null) #3
  %19 = bitcast %struct.evp_pkey_ctx_st* %call61 to i8*
  %call62 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 262, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.41, i64 0, i64 0), i8* noundef %19) #3
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %end, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %lor.lhs.false60
  %call65 = call i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef %call61) #3
  %call66 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 263, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i32 noundef %call65, i32 noundef 0) #3
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %end, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %lor.lhs.false64
  %call69 = call i32 @EVP_PKEY_generate(%struct.evp_pkey_ctx_st* noundef %call61, %struct.evp_pkey_st** noundef nonnull %key) #3
  %call70 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 264, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i32 noundef %call69, i32 noundef 0) #3
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %end, label %if.end73

if.end73:                                         ; preds = %lor.lhs.false68
  %20 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %key, align 8, !tbaa !3
  %call74 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %20, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), %struct.bignum_st** noundef nonnull %p_out) #3
  %cmp75 = icmp ne i32 %call74, 0
  %conv76 = zext i1 %cmp75 to i32
  %call77 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 267, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.44, i64 0, i64 0), i32 noundef %conv76) #3
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %end, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %if.end73
  %21 = load %struct.bignum_st*, %struct.bignum_st** %p_out, align 8, !tbaa !3
  %call80 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 268, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i64 0, i64 0), %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %21) #3
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %end, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %lor.lhs.false79
  %22 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %key, align 8, !tbaa !3
  %call83 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %22, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0), %struct.bignum_st** noundef nonnull %q_out) #3
  %cmp84 = icmp ne i32 %call83, 0
  %conv85 = zext i1 %cmp84 to i32
  %call86 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 269, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.48, i64 0, i64 0), i32 noundef %conv85) #3
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %end, label %lor.lhs.false88

lor.lhs.false88:                                  ; preds = %lor.lhs.false82
  %23 = load %struct.bignum_st*, %struct.bignum_st** %q_out, align 8, !tbaa !3
  %call89 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 270, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i64 0, i64 0), %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %23) #3
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %end, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %lor.lhs.false88
  %24 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %key, align 8, !tbaa !3
  %call92 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %24, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i64 0, i64 0), %struct.bignum_st** noundef nonnull %g_out) #3
  %cmp93 = icmp ne i32 %call92, 0
  %conv94 = zext i1 %cmp93 to i32
  %call95 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 271, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.52, i64 0, i64 0), i32 noundef %conv94) #3
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %end, label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %lor.lhs.false91
  %25 = load %struct.bignum_st*, %struct.bignum_st** %g_out, align 8, !tbaa !3
  %call98 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 272, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i64 0, i64 0), %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %25) #3
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %end, label %lor.lhs.false100

lor.lhs.false100:                                 ; preds = %lor.lhs.false97
  %26 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %key, align 8, !tbaa !3
  %call101 = call i32 @EVP_PKEY_get_octet_string_param(%struct.evp_pkey_st* noundef %26, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i64 0, i64 0), i8* noundef nonnull %8, i64 noundef 32, i64* noundef nonnull %len) #3
  %cmp102 = icmp ne i32 %call101, 0
  %conv103 = zext i1 %cmp102 to i32
  %call104 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 275, i8* noundef getelementptr inbounds ([98 x i8], [98 x i8]* @.str.56, i64 0, i64 0), i32 noundef %conv103) #3
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %end, label %lor.lhs.false106

lor.lhs.false106:                                 ; preds = %lor.lhs.false100
  %27 = load i64, i64* %len, align 8, !tbaa !9
  %call108 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 276, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i64 0, i64 0), i8* noundef nonnull %8, i64 noundef %27, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @dsa_keygen_test.seed_data, i64 0, i64 0), i64 noundef 28) #3
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %end, label %lor.lhs.false110

lor.lhs.false110:                                 ; preds = %lor.lhs.false106
  %28 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %key, align 8, !tbaa !3
  %call111 = call i32 @EVP_PKEY_get_int_param(%struct.evp_pkey_st* noundef %28, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i64 0, i64 0), i32* noundef nonnull %gindex_out) #3
  %cmp112 = icmp ne i32 %call111, 0
  %conv113 = zext i1 %cmp112 to i32
  %call114 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 278, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.60, i64 0, i64 0), i32 noundef %conv113) #3
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %end, label %lor.lhs.false116

lor.lhs.false116:                                 ; preds = %lor.lhs.false110
  %29 = load i32, i32* %gindex_out, align 4, !tbaa !7
  %call117 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 279, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i64 0, i64 0), i32 noundef %29, i32 noundef -1) #3
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %end, label %lor.lhs.false119

lor.lhs.false119:                                 ; preds = %lor.lhs.false116
  %30 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %key, align 8, !tbaa !3
  %call120 = call i32 @EVP_PKEY_get_int_param(%struct.evp_pkey_st* noundef %30, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i32* noundef nonnull %hcount_out) #3
  %cmp121 = icmp ne i32 %call120, 0
  %conv122 = zext i1 %cmp121 to i32
  %call123 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 281, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.64, i64 0, i64 0), i32 noundef %conv122) #3
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %end, label %lor.lhs.false125

lor.lhs.false125:                                 ; preds = %lor.lhs.false119
  %31 = load i32, i32* %hcount_out, align 4, !tbaa !7
  %call126 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 282, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i64 0, i64 0), i32 noundef %31, i32 noundef 2) #3
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %end, label %lor.lhs.false128

lor.lhs.false128:                                 ; preds = %lor.lhs.false125
  %32 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %key, align 8, !tbaa !3
  %call129 = call i32 @EVP_PKEY_get_int_param(%struct.evp_pkey_st* noundef %32, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i64 0, i64 0), i32* noundef nonnull %pcount_out) #3
  %cmp130 = icmp ne i32 %call129, 0
  %conv131 = zext i1 %cmp130 to i32
  %call132 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 285, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.68, i64 0, i64 0), i32 noundef %conv131) #3
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %end, label %lor.lhs.false134

lor.lhs.false134:                                 ; preds = %lor.lhs.false128
  %33 = load i32, i32* %pcount_out, align 4, !tbaa !7
  %call135 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 286, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i64 0, i64 0), i32 noundef %33, i32 noundef 1316) #3
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %end, label %lor.lhs.false137

lor.lhs.false137:                                 ; preds = %lor.lhs.false134
  %34 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %key, align 8, !tbaa !3
  %call139 = call i32 @EVP_PKEY_get_utf8_string_param(%struct.evp_pkey_st* noundef %34, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i64 0, i64 0), i8* noundef nonnull %9, i64 noundef 32, i64* noundef nonnull %len) #3
  %cmp140 = icmp ne i32 %call139, 0
  %conv141 = zext i1 %cmp140 to i32
  %call142 = call i32 @test_false(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 290, i8* noundef getelementptr inbounds ([100 x i8], [100 x i8]* @.str.72, i64 0, i64 0), i32 noundef %conv141) #3
  %tobool143.not = icmp ne i32 %call142, 0
  %spec.select = zext i1 %tobool143.not to i32
  br label %end

end:                                              ; preds = %lor.lhs.false137, %if.end73, %lor.lhs.false79, %lor.lhs.false82, %lor.lhs.false88, %lor.lhs.false91, %lor.lhs.false97, %lor.lhs.false100, %lor.lhs.false106, %lor.lhs.false110, %lor.lhs.false116, %lor.lhs.false119, %lor.lhs.false125, %lor.lhs.false128, %lor.lhs.false134, %if.end, %lor.lhs.false12, %lor.lhs.false16, %lor.lhs.false20, %lor.lhs.false24, %lor.lhs.false28, %lor.lhs.false32, %lor.lhs.false38, %lor.lhs.false44, %lor.lhs.false50, %lor.lhs.false56, %lor.lhs.false60, %lor.lhs.false64, %lor.lhs.false68, %entry, %lor.lhs.false, %lor.lhs.false5
  %kg_ctx.0 = phi %struct.evp_pkey_ctx_st* [ %call61, %lor.lhs.false134 ], [ %call61, %lor.lhs.false128 ], [ %call61, %lor.lhs.false125 ], [ %call61, %lor.lhs.false119 ], [ %call61, %lor.lhs.false116 ], [ %call61, %lor.lhs.false110 ], [ %call61, %lor.lhs.false106 ], [ %call61, %lor.lhs.false100 ], [ %call61, %lor.lhs.false97 ], [ %call61, %lor.lhs.false91 ], [ %call61, %lor.lhs.false88 ], [ %call61, %lor.lhs.false82 ], [ %call61, %lor.lhs.false79 ], [ %call61, %if.end73 ], [ %call61, %lor.lhs.false68 ], [ %call61, %lor.lhs.false64 ], [ %call61, %lor.lhs.false60 ], [ null, %lor.lhs.false56 ], [ null, %lor.lhs.false50 ], [ null, %lor.lhs.false44 ], [ null, %lor.lhs.false38 ], [ null, %lor.lhs.false32 ], [ null, %lor.lhs.false28 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false12 ], [ null, %if.end ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call61, %lor.lhs.false137 ]
  %q_in.0 = phi %struct.bignum_st* [ %call2, %lor.lhs.false134 ], [ %call2, %lor.lhs.false128 ], [ %call2, %lor.lhs.false125 ], [ %call2, %lor.lhs.false119 ], [ %call2, %lor.lhs.false116 ], [ %call2, %lor.lhs.false110 ], [ %call2, %lor.lhs.false106 ], [ %call2, %lor.lhs.false100 ], [ %call2, %lor.lhs.false97 ], [ %call2, %lor.lhs.false91 ], [ %call2, %lor.lhs.false88 ], [ %call2, %lor.lhs.false82 ], [ %call2, %lor.lhs.false79 ], [ %call2, %if.end73 ], [ %call2, %lor.lhs.false68 ], [ %call2, %lor.lhs.false64 ], [ %call2, %lor.lhs.false60 ], [ %call2, %lor.lhs.false56 ], [ %call2, %lor.lhs.false50 ], [ %call2, %lor.lhs.false44 ], [ %call2, %lor.lhs.false38 ], [ %call2, %lor.lhs.false32 ], [ %call2, %lor.lhs.false28 ], [ %call2, %lor.lhs.false24 ], [ %call2, %lor.lhs.false20 ], [ %call2, %lor.lhs.false16 ], [ %call2, %lor.lhs.false12 ], [ %call2, %if.end ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %lor.lhs.false137 ]
  %g_in.0 = phi %struct.bignum_st* [ %call6, %lor.lhs.false134 ], [ %call6, %lor.lhs.false128 ], [ %call6, %lor.lhs.false125 ], [ %call6, %lor.lhs.false119 ], [ %call6, %lor.lhs.false116 ], [ %call6, %lor.lhs.false110 ], [ %call6, %lor.lhs.false106 ], [ %call6, %lor.lhs.false100 ], [ %call6, %lor.lhs.false97 ], [ %call6, %lor.lhs.false91 ], [ %call6, %lor.lhs.false88 ], [ %call6, %lor.lhs.false82 ], [ %call6, %lor.lhs.false79 ], [ %call6, %if.end73 ], [ %call6, %lor.lhs.false68 ], [ %call6, %lor.lhs.false64 ], [ %call6, %lor.lhs.false60 ], [ %call6, %lor.lhs.false56 ], [ %call6, %lor.lhs.false50 ], [ %call6, %lor.lhs.false44 ], [ %call6, %lor.lhs.false38 ], [ %call6, %lor.lhs.false32 ], [ %call6, %lor.lhs.false28 ], [ %call6, %lor.lhs.false24 ], [ %call6, %lor.lhs.false20 ], [ %call6, %lor.lhs.false16 ], [ %call6, %lor.lhs.false12 ], [ %call6, %if.end ], [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call6, %lor.lhs.false137 ]
  %pg_ctx.0 = phi %struct.evp_pkey_ctx_st* [ %call9, %lor.lhs.false134 ], [ %call9, %lor.lhs.false128 ], [ %call9, %lor.lhs.false125 ], [ %call9, %lor.lhs.false119 ], [ %call9, %lor.lhs.false116 ], [ %call9, %lor.lhs.false110 ], [ %call9, %lor.lhs.false106 ], [ %call9, %lor.lhs.false100 ], [ %call9, %lor.lhs.false97 ], [ %call9, %lor.lhs.false91 ], [ %call9, %lor.lhs.false88 ], [ %call9, %lor.lhs.false82 ], [ %call9, %lor.lhs.false79 ], [ %call9, %if.end73 ], [ %call9, %lor.lhs.false68 ], [ %call9, %lor.lhs.false64 ], [ %call9, %lor.lhs.false60 ], [ %call9, %lor.lhs.false56 ], [ %call9, %lor.lhs.false50 ], [ %call9, %lor.lhs.false44 ], [ %call9, %lor.lhs.false38 ], [ %call9, %lor.lhs.false32 ], [ %call9, %lor.lhs.false28 ], [ %call9, %lor.lhs.false24 ], [ %call9, %lor.lhs.false20 ], [ %call9, %lor.lhs.false16 ], [ %call9, %lor.lhs.false12 ], [ %call9, %if.end ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call9, %lor.lhs.false137 ]
  %ret.0 = phi i32 [ 0, %lor.lhs.false134 ], [ 0, %lor.lhs.false128 ], [ 0, %lor.lhs.false125 ], [ 0, %lor.lhs.false119 ], [ 0, %lor.lhs.false116 ], [ 0, %lor.lhs.false110 ], [ 0, %lor.lhs.false106 ], [ 0, %lor.lhs.false100 ], [ 0, %lor.lhs.false97 ], [ 0, %lor.lhs.false91 ], [ 0, %lor.lhs.false88 ], [ 0, %lor.lhs.false82 ], [ 0, %lor.lhs.false79 ], [ 0, %if.end73 ], [ 0, %lor.lhs.false68 ], [ 0, %lor.lhs.false64 ], [ 0, %lor.lhs.false60 ], [ 0, %lor.lhs.false56 ], [ 0, %lor.lhs.false50 ], [ 0, %lor.lhs.false44 ], [ 0, %lor.lhs.false38 ], [ 0, %lor.lhs.false32 ], [ 0, %lor.lhs.false28 ], [ 0, %lor.lhs.false24 ], [ 0, %lor.lhs.false20 ], [ 0, %lor.lhs.false16 ], [ 0, %lor.lhs.false12 ], [ 0, %if.end ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false137 ]
  call void @BN_free(%struct.bignum_st* noundef %call) #3
  call void @BN_free(%struct.bignum_st* noundef %q_in.0) #3
  call void @BN_free(%struct.bignum_st* noundef %g_in.0) #3
  %35 = load %struct.bignum_st*, %struct.bignum_st** %p_out, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %35) #3
  %36 = load %struct.bignum_st*, %struct.bignum_st** %q_out, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %36) #3
  %37 = load %struct.bignum_st*, %struct.bignum_st** %g_out, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %37) #3
  %38 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %param_key, align 8, !tbaa !3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %38) #3
  %39 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %key, align 8, !tbaa !3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %39) #3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %kg_ctx.0) #3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %pg_ctx.0) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %ret.0
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_dsa_default_paramgen_validate(i32 noundef %i) #0 {
entry:
  %params = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %params, align 8, !tbaa !3
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8* noundef null) #3
  %1 = bitcast %struct.evp_pkey_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 314, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.74, i64 0, i64 0), i8* noundef %1) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @EVP_PKEY_paramgen_init(%struct.evp_pkey_ctx_st* noundef %call) #3
  %call3 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 315, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i32 noundef %call2, i32 noundef 0) #3
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %cmp = icmp eq i32 %i, 0
  br i1 %cmp, label %land.lhs.true10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true5
  %call6 = tail call i32 @EVP_PKEY_CTX_set_dsa_paramgen_bits(%struct.evp_pkey_ctx_st* noundef %call, i32 noundef 512) #3
  %cmp7 = icmp ne i32 %call6, 0
  %conv = zext i1 %cmp7 to i32
  %call8 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 317, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.76, i64 0, i64 0), i32 noundef %conv) #3
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.end, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %lor.lhs.false, %land.lhs.true5
  %call11 = call i32 @EVP_PKEY_generate(%struct.evp_pkey_ctx_st* noundef %call, %struct.evp_pkey_st** noundef nonnull %params) #3
  %call12 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 318, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.77, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i32 noundef %call11, i32 noundef 0) #3
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.end, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %land.lhs.true10
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %params, align 8, !tbaa !3
  %call15 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef null, %struct.evp_pkey_st* noundef %2, i8* noundef null) #3
  %3 = bitcast %struct.evp_pkey_ctx_st* %call15 to i8*
  %call16 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 319, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.78, i64 0, i64 0), i8* noundef %3) #3
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true14
  %call18 = call i32 @EVP_PKEY_param_check(%struct.evp_pkey_ctx_st* noundef %call15) #3
  %call19 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 320, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.79, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i32 noundef %call18, i32 noundef 0) #3
  %tobool20 = icmp ne i32 %call19, 0
  %phi.cast = zext i1 %tobool20 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true14, %land.lhs.true10, %lor.lhs.false, %land.lhs.true, %entry
  %check_ctx.0 = phi %struct.evp_pkey_ctx_st* [ %call15, %land.rhs ], [ %call15, %land.lhs.true14 ], [ null, %land.lhs.true10 ], [ null, %lor.lhs.false ], [ null, %land.lhs.true ], [ null, %entry ]
  %4 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %land.lhs.true14 ], [ 0, %land.lhs.true10 ], [ 0, %lor.lhs.false ], [ 0, %land.lhs.true ], [ 0, %entry ]
  %5 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %params, align 8, !tbaa !3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %5) #3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %check_ctx.0) #3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.bn_gencb_st* @BN_GENCB_new() local_unnamed_addr #1

declare dso_local void @BN_GENCB_set(%struct.bn_gencb_st* noundef, i32 (i32, i32, %struct.bn_gencb_st*)* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @dsa_cb(i32 noundef %p, i32 noundef %n, %struct.bn_gencb_st* nocapture noundef readnone %arg) #0 {
entry:
  switch i32 %p, label %if.end4 [
    i32 0, label %if.end4.sink.split
    i32 2, label %if.then2
  ]

if.then2:                                         ; preds = %entry
  br label %if.end4.sink.split

if.end4.sink.split:                               ; preds = %entry, %if.then2
  %dsa_cb.num.sink13 = phi i32* [ @dsa_cb.ok, %if.then2 ], [ @dsa_cb.num, %entry ]
  %0 = load i32, i32* %dsa_cb.num.sink13, align 4, !tbaa !7
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %dsa_cb.num.sink13, align 4, !tbaa !7
  br label %if.end4

if.end4:                                          ; preds = %if.end4.sink.split, %entry
  %1 = load i32, i32* @dsa_cb.ok, align 4, !tbaa !7
  %2 = or i32 %1, %p
  %3 = icmp eq i32 %2, 0
  %4 = load i32, i32* @dsa_cb.num, align 4
  %cmp7 = icmp sgt i32 %4, 1
  %or.cond10 = select i1 %3, i1 %cmp7, i1 false
  br i1 %or.cond10, label %if.then8, label %return

if.then8:                                         ; preds = %if.end4
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 134, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0)) #3
  br label %return

return:                                           ; preds = %if.end4, %if.then8
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 1, %if.end4 ]
  ret i32 %retval.0
}

declare dso_local %struct.dsa_st* @DSA_new() local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @DSA_generate_parameters_ex(%struct.dsa_st* noundef, i32 noundef, i8* noundef, i32 noundef, i32* noundef, i64* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @DSA_get0_pqg(%struct.dsa_st* noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef) local_unnamed_addr #1

declare dso_local i32 @BN_bn2bin(%struct.bignum_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @DSA_generate_key(%struct.dsa_st* noundef) local_unnamed_addr #1

declare dso_local i32 @DSA_sign(i32 noundef, i8* noundef, i32 noundef, i8* noundef, i32* noundef, %struct.dsa_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @DSA_verify(i32 noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, %struct.dsa_st* noundef) local_unnamed_addr #1

declare dso_local void @DSA_free(%struct.dsa_st* noundef) local_unnamed_addr #1

declare dso_local void @BN_GENCB_free(%struct.bn_gencb_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_paramgen_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr_null(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_param_st* @EVP_PKEY_CTX_gettable_params(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_param_st* @EVP_PKEY_CTX_settable_params(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_CTX_set_dsa_paramgen_type(%struct.evp_pkey_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_CTX_set_dsa_paramgen_bits(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_CTX_set_dsa_paramgen_q_bits(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_CTX_set_dsa_paramgen_seed(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_CTX_set_dsa_paramgen_md_props(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_generate(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st** noundef) local_unnamed_addr #1

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef, %struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef, i8* noundef, %struct.bignum_st** noundef) local_unnamed_addr #1

declare dso_local i32 @test_BN_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_get_octet_string_param(%struct.evp_pkey_st* noundef, i8* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_get_int_param(%struct.evp_pkey_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_get_utf8_string_param(%struct.evp_pkey_st* noundef, i8* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #1

declare dso_local void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare dso_local void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_param_check(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

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
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !5, i64 0}
