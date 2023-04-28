; ModuleID = 'test/ffc_internal_test.c'
source_filename = "test/ffc_internal_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_st = type opaque
%struct.ffc_params_st = type { %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i64, i32, i32, i32, i32, i32, i8*, i8* }
%struct.bignum_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.bn_gencb_st = type opaque
%struct.dh_st = type opaque
%struct.bignum_ctx = type opaque

@.str = private unnamed_addr constant [28 x i8] c"ffc_params_validate_pq_test\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"ffc_params_validate_g_unverified_test\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"ffc_params_gen_test\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"ffc_params_gen_canonicalg_test\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"ffc_params_fips186_2_gen_validate_test\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"ffc_public_validate_test\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"ffc_private_validate_test\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"ffc_private_gen_test\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"test/ffc_internal_test.c\00", align 1
@.str.9 = private unnamed_addr constant [74 x i8] c"p = BN_bin2bn(dsa_2048_224_sha224_p, sizeof(dsa_2048_224_sha224_p), NULL)\00", align 1
@dsa_2048_224_sha224_p = internal constant [256 x i8] c"\93W\93b\1B\9A\10\9B\C1V\0F$qvN\D3\EDxxz\BF\89qg\8E\03\D8[\CD\22\8Fpt\FF\22\05\07\0CL`\EDA\E1\9E\9C\AA>\19\\=\80X\B2\7F_\89\EC\B5\19\DB\06\11\E9x\\\F9\A0\9Epb\14{\DA\92\BF\B2k\01o\B8h\9C\896\89ryI\93=\14\B2-\BB\F0\DF\94E\0B_\F1u7\EBI\B9-\CE\B7\F4\95w\C2\E99\1CN\0C@b3\0A\E6)o\BA\EF\02\DD\0D\E4\04\01p@\B9\C9~/\107\E9\DE\B0\F6\EBq\7F\9C5\16\F3\0D\C4\E8\027l\DD\B3\8D-\1E(\13\22\89@\E5\FA\16g\D6\DA\12\A28\83%\CC&\C1't\FE\F6z\B6\A1\E4\E8\DF]\D2\9C/\EC\EA\08\CAH\DB\18K\12\EE\16\9B\A6\00\A0\18\98}\CElm\F8\FC\95Q\1B\0A@\B6\FC\E5\E2\B0&SL\D7\FE\AAm\BC\DD\C0ae\E4\89D\18o\D59\CFum)\CC\F8@\AB", align 16
@.str.10 = private unnamed_addr constant [74 x i8] c"q = BN_bin2bn(dsa_2048_224_sha224_q, sizeof(dsa_2048_224_sha224_q), NULL)\00", align 1
@dsa_2048_224_sha224_q = internal constant [28 x i8] c"\F2^N\9A\15\A8\13\DF\A3\17\90\C6\D6^\B1\FB1\F8\B5\B1K\A7m\DEWvo\11", align 16
@.str.11 = private unnamed_addr constant [7 x i8] c"SHA224\00", align 1
@.str.12 = private unnamed_addr constant [82 x i8] c"ossl_ffc_params_FIPS186_4_validate(NULL, &params, FFC_PARAM_TYPE_DSA, &res, NULL)\00", align 1
@dsa_2048_224_sha224_seed = internal constant [28 x i8] c"\D2\B16\D8[\8E\A4\B2j\ABN\85\8BI\F9\DD\E6\A1\CD\ADIR\E9\B36\17\06\CF", align 16
@dsa_2048_224_sha224_bad_seed = internal constant [28 x i8] c"\D2\B16\D8[\8E\A4\B2j\ABN\85\8BI\F9\DD\E6\A1\CD\ADIR\E9\B36\17\06\D0", align 16
@.str.13 = private unnamed_addr constant [74 x i8] c"p = BN_bin2bn(dsa_3072_256_sha512_p, sizeof(dsa_3072_256_sha512_p), NULL)\00", align 1
@dsa_3072_256_sha512_p = internal constant [384 x i8] c"\9A\82\8B\8D\EA\D0V#\88-]ABL\13Z\15\81Y\02\C5\00\82(\01\EE\8F\99\FDj\95\F2\0F\AE4w)\CC\C7P\0E\03\EF\B0M\E5\10\00\A8{\CE\8C\C6\B2\01t#\1B\7F\E8\F9q(9\CF\18\04\B2\95a-\11qk\DD\0D\0B\F0\E6\97R)\9DE\B1#\DA\B0\D5\CBQq\8E@\9C\97\13\EA\1FK2]'t\81\8DG\8A\08\CE\F4\D1(\A2\0F\9B.\C9\A3\0E]\DEG\19m_\98\E0\8E\7F`\8F%\A7\A4\EB\B9\F3$\A4\9E\C1\BD\14'|'\C8O_\ED\FD\86\C8\F1\D7\82\E2\EB\E5\D2\BE\B0e(\AB\99\9E\CD\D5\22\F8\1B;\01\E9 =\E4\98\22\FE\FC\09~\95 \DA\B6\12,\94\\\EAtq\BD\19\ACxC\02Q\B8_\06\1D\EA\C8\A4;\C9x\A3+\09\DCvt\C4#\14H.\84+\A3\82\C1\BA\0B9*\9F${\D6\C2\EAZ\B6\BD\15\82!\85\E0k\12O\8Ddu\EB~\A1\DB\E0\9D%\AE;\E9\9B!\7F\9A=f\D0R\1D9\8B\EB\FC\EC\BEr Z\DF\1B\00\F1\0E\ED\C6xo\C9\AB\E4\D6\81\8B\CC\F6\D4j1b\08\D98!\8F\DA\9E\B1+\9C\C0\BE\F7\9AC-\07YF\0E\D5#N\AAJ\04\C2\DE3\A64\BA\ACOx\D8\CAv\CE^\D4\F6\85Lj`\08]\0E4\8B\F2\B6\E3\B7Q\CAC\AAh{\0An\EA\CE\1E,4\8E\0F\E2\CC8\F2\9A\98\EF\E6\7F\F6b\BB", align 16
@.str.14 = private unnamed_addr constant [74 x i8] c"q = BN_bin2bn(dsa_3072_256_sha512_q, sizeof(dsa_3072_256_sha512_q), NULL)\00", align 1
@dsa_3072_256_sha512_q = internal constant [32 x i8] c"\C1\DB\C1!PIc\A3wmL\92\EDX\9E\98\EA\ACz\90\13$\F7\CD\D7\E6\D4\8F\F0EK\F7", align 16
@.str.15 = private unnamed_addr constant [7 x i8] c"SHA512\00", align 1
@dsa_3072_256_sha512_seed = internal constant [32 x i8] c"5$\B5Y\D5'X\10\F6\A2|\9A\0D\C2p\8A\B0AJ\84\0B\FEf\F5:\BFJ\A9\CB\FC\A6\22", align 16
@.str.16 = private unnamed_addr constant [81 x i8] c"ossl_ffc_params_FIPS186_4_validate(NULL, &params, FFC_PARAM_TYPE_DH, &res, NULL)\00", align 1
@.str.17 = private unnamed_addr constant [74 x i8] c"p = BN_bin2bn(dsa_2048_224_sha256_p, sizeof(dsa_2048_224_sha256_p), NULL)\00", align 1
@dsa_2048_224_sha256_p = internal constant [256 x i8] c"\E9\13\BC\F2\14]\F9y\D6m\F5\C5\BE{o\90c\D0\FD\EEO\C4e\83\BF\EC\C3,]0\C8\A4;/;)Ci\FBn\A9\A4\07l\CD\B0\D2\D9\D3\E6\F4\87\16\B7\E5\06\B9\BA\D6\87\BC\01\9E\BA\C2\CF9\B6\EC\DCu\07\C19-j\951\97\DAT )\E0\1B\F9te\AA\C1G\D3\9E\B4<\1D\E0\DC-!\AB\12;\A5Q\1E\C6\BCkL\22\D1|\C6\CE\CB\8C\1D\1F\CE\1C\E2uIm,\EE\7F_\B8tB\\\96w\13\FF\80\F3\05\C7\FE\08;%6F\A2\C4&\B4\B0;\D5\B2L\13)\0EG1f}xW\E6\C2\B5\9FF\17\BC\A9\9AI\1C\0FE\E0\88\97\A10|B\B7,\0A\CE\B3\A5za\8E\ABD\C1\DCp\E5\DAx*\B4\E6<\A0X\DAb\0A\B2\A9=\AAI~\7F\9A\19g\EE\D6\E3g\13\E8oyPv\FC\B3\9D~\9E>nG\B1\11^\C8\83:<\FC\82\\\9D4es\B4V\D5", align 16
@.str.18 = private unnamed_addr constant [74 x i8] c"q = BN_bin2bn(dsa_2048_224_sha256_q, sizeof(dsa_2048_224_sha256_q), NULL)\00", align 1
@dsa_2048_224_sha256_q = internal constant [28 x i8] c"\B0\DF\A1{\A4wd\0E\B9(\BB\BC\D4`\02\AF!\8C\B0i\0F\8A{\C6\80\CB\0AE", align 16
@.str.19 = private unnamed_addr constant [74 x i8] c"g = BN_bin2bn(dsa_2048_224_sha256_g, sizeof(dsa_2048_224_sha256_g), NULL)\00", align 1
@dsa_2048_224_sha256_g = internal constant [256 x i8] c"\11|_\F6\99Dg[i\A3\83\EF\B5\85\A2\195\18*\F2X\F4\C9X\9E\B9\E8\91\17/\B0`\85\95\A6b6\D0\FF\94\B9\A6P\AD\A6\F6\04(\C2\C9\B9u\F3f\B4\EB\F6\D5\06\13\01d\82\A9\F1\D5A\DC\F2\08\FC/\C4\A1!\EE}\BC\DAZ\A4\A2\B9h\876\BAS\9E\14Nv\\\BAy=\0F\E5\99\1C'\FC\AF\10c\87h\0E>n\AA\F3\DFv~\02\9AA\96\A1l\BBg\EE\0C\ADre\F1p\B09\9BT_\D7l\C5\9A\90S\18\DE^b\89\B9/fY:=\10\EB\A5\99\F6!}\F2{B\15\1CUy\15\AA\A4\17.H\C3\A86\F5\1A\97\CE\BDr\EF\1DP[\B1`\0A\\\0B\A6!8(N\893\1D\B5~\\\F1k,\BD\AD\84\B2\8E\96\E20\E7T\B8\C9p\CB\100c\90\F4Ed\93\098jGX1\04\1A\18\04\1A\E0\D7\0B<\BE*\9C\EC\CC\0D\0C\ED\DET\BC\E6\93Y\FC", align 16
@.str.20 = private unnamed_addr constant [7 x i8] c"SHA256\00", align 1
@.str.21 = private unnamed_addr constant [92 x i8] c"ossl_ffc_params_FIPS186_4_generate(NULL, &params, FFC_PARAM_TYPE_DH, 2048, 256, &res, NULL)\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"ossl_ffc_params_print(bio_out, &params, 4)\00", align 1
@bio_out = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.23 = private unnamed_addr constant [14 x i8] c"bn = BN_new()\00", align 1
@.str.24 = private unnamed_addr constant [92 x i8] c"ossl_ffc_params_FIPS186_2_generate(NULL, &params, FFC_PARAM_TYPE_DH, 1024, 160, &res, NULL)\00", align 1
@.str.25 = private unnamed_addr constant [81 x i8] c"ossl_ffc_params_FIPS186_2_validate(NULL, &params, FFC_PARAM_TYPE_DH, &res, NULL)\00", align 1
@.str.26 = private unnamed_addr constant [60 x i8] c"res == FFC_CHECK_Q_MISMATCH || res == FFC_CHECK_Q_NOT_PRIME\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"pub = BN_new()\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"dh = DH_new_by_nid(NID_ffdhe2048)\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"BN_set_word(pub, 1)\00", align 1
@.str.31 = private unnamed_addr constant [48 x i8] c"ossl_ffc_validate_public_key(params, pub, &res)\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"FFC_ERROR_PUBKEY_TOO_SMALL\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"res\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"BN_set_word(pub, 0)\00", align 1
@.str.35 = private unnamed_addr constant [59 x i8] c"ossl_ffc_validate_public_key(params, BN_value_one(), &res)\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"BN_add_word(pub, 2)\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"BN_copy(pub, params->p)\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"FFC_ERROR_PUBKEY_TOO_LARGE\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"BN_sub_word(pub, 1)\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"FFC_ERROR_PUBKEY_INVALID\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"BN_sub_word(pub, 5)\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"priv = BN_new()\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"BN_set_word(priv, 1)\00", align 1
@.str.44 = private unnamed_addr constant [53 x i8] c"ossl_ffc_validate_private_key(params->q, priv, &res)\00", align 1
@.str.45 = private unnamed_addr constant [28 x i8] c"FFC_ERROR_PRIVKEY_TOO_SMALL\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"BN_set_word(priv, 0)\00", align 1
@.str.47 = private unnamed_addr constant [63 x i8] c"ossl_ffc_validate_private_key(params->q, BN_value_one(), &res)\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"BN_copy(priv, params->q)\00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"FFC_ERROR_PRIVKEY_TOO_LARGE\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"BN_sub_word(priv, 1)\00", align 1
@.str.51 = private unnamed_addr constant [26 x i8] c"ctx = BN_CTX_new_ex(NULL)\00", align 1
@.str.52 = private unnamed_addr constant [59 x i8] c"ossl_ffc_generate_private_key(ctx, params, 220, 112, priv)\00", align 1
@.str.53 = private unnamed_addr constant [61 x i8] c"ossl_ffc_generate_private_key(ctx, params, N + 1, 112, priv)\00", align 1
@.str.54 = private unnamed_addr constant [57 x i8] c"ossl_ffc_generate_private_key(ctx, params, N, 112, priv)\00", align 1
@.str.55 = private unnamed_addr constant [61 x i8] c"ossl_ffc_generate_private_key(ctx, params, N / 2, 112, priv)\00", align 1
@.str.56 = private unnamed_addr constant [55 x i8] c"ossl_ffc_generate_private_key(ctx, params, 0, 0, priv)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @ffc_params_validate_pq_test) #3
  tail call void @add_test(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @ffc_params_validate_g_unverified_test) #3
  tail call void @add_test(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 ()* noundef nonnull @ffc_params_gen_test) #3
  tail call void @add_test(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 ()* noundef nonnull @ffc_params_gen_canonicalg_test) #3
  tail call void @add_test(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 ()* noundef nonnull @ffc_params_fips186_2_gen_validate_test) #3
  tail call void @add_test(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 ()* noundef nonnull @ffc_public_validate_test) #3
  tail call void @add_test(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 ()* noundef nonnull @ffc_private_validate_test) #3
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 (i32)* noundef nonnull @ffc_private_gen_test, i32 noundef 10, i32 noundef 1) #3
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @ffc_params_validate_pq_test() #0 {
entry:
  %res = alloca i32, align 4
  %params = alloca %struct.ffc_params_st, align 8
  %0 = bitcast i32* %res to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4
  store i32 -1, i32* %res, align 4, !tbaa !3
  %1 = bitcast %struct.ffc_params_st* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %1) #4
  call void @ossl_ffc_params_init(%struct.ffc_params_st* noundef nonnull %params) #3
  %call = call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @dsa_2048_224_sha224_p, i64 0, i64 0), i32 noundef 256, %struct.bignum_st* noundef null) #3
  %2 = bitcast %struct.bignum_st* %call to i8*
  %call1 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 252, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.9, i64 0, i64 0), i8* noundef %2) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @dsa_2048_224_sha224_q, i64 0, i64 0), i32 noundef 28, %struct.bignum_st* noundef null) #3
  %3 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 256, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.10, i64 0, i64 0), i8* noundef %3) #3
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %if.end6

if.end6:                                          ; preds = %if.end
  call void @ossl_ffc_params_set0_pqg(%struct.ffc_params_st* noundef nonnull %params, %struct.bignum_st* noundef null, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef null) #3
  call void @ossl_ffc_params_set_flags(%struct.ffc_params_st* noundef nonnull %params, i32 noundef 1) #3
  %call7 = call i32 @ossl_ffc_set_digest(%struct.ffc_params_st* noundef nonnull %params, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* noundef null) #3
  %call8 = call i32 @ossl_ffc_params_FIPS186_4_validate(%struct.ossl_lib_ctx_st* noundef null, %struct.ffc_params_st* noundef nonnull %params, i32 noundef 0, i32* noundef nonnull %res, %struct.bn_gencb_st* noundef null) #3
  %cmp = icmp ne i32 %call8, 0
  %conv = zext i1 %cmp to i32
  %call9 = call i32 @test_false(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 267, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv) #3
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %err, label %if.end12

if.end12:                                         ; preds = %if.end6
  call void @ossl_ffc_params_set0_pqg(%struct.ffc_params_st* noundef nonnull %params, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null) #3
  %call13 = call i32 @ossl_ffc_params_set_validate_params(%struct.ffc_params_st* noundef nonnull %params, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @dsa_2048_224_sha224_seed, i64 0, i64 0), i64 noundef 28, i32 noundef 2878) #3
  %call14 = call i32 @ossl_ffc_params_FIPS186_4_validate(%struct.ossl_lib_ctx_st* noundef null, %struct.ffc_params_st* noundef nonnull %params, i32 noundef 0, i32* noundef nonnull %res, %struct.bn_gencb_st* noundef null) #3
  %cmp15 = icmp ne i32 %call14, 0
  %conv16 = zext i1 %cmp15 to i32
  %call17 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 278, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv16) #3
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %if.end20

if.end20:                                         ; preds = %if.end12
  %call21 = call i32 @ossl_ffc_params_set_validate_params(%struct.ffc_params_st* noundef nonnull %params, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @dsa_2048_224_sha224_seed, i64 0, i64 0), i64 noundef 28, i32 noundef 1) #3
  %call22 = call i32 @ossl_ffc_params_FIPS186_4_validate(%struct.ossl_lib_ctx_st* noundef null, %struct.ffc_params_st* noundef nonnull %params, i32 noundef 0, i32* noundef nonnull %res, %struct.bn_gencb_st* noundef null) #3
  %cmp23 = icmp ne i32 %call22, 0
  %conv24 = zext i1 %cmp23 to i32
  %call25 = call i32 @test_false(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 287, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv24) #3
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %err, label %if.end28

if.end28:                                         ; preds = %if.end20
  %call29 = call i32 @ossl_ffc_params_set_validate_params(%struct.ffc_params_st* noundef nonnull %params, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @dsa_2048_224_sha224_seed, i64 0, i64 0), i64 noundef 27, i32 noundef 2878) #3
  %call30 = call i32 @ossl_ffc_params_FIPS186_4_validate(%struct.ossl_lib_ctx_st* noundef null, %struct.ffc_params_st* noundef nonnull %params, i32 noundef 0, i32* noundef nonnull %res, %struct.bn_gencb_st* noundef null) #3
  %cmp31 = icmp ne i32 %call30, 0
  %conv32 = zext i1 %cmp31 to i32
  %call33 = call i32 @test_false(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 296, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv32) #3
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %err, label %if.end36

if.end36:                                         ; preds = %if.end28
  %call37 = call i32 @ossl_ffc_params_set_validate_params(%struct.ffc_params_st* noundef nonnull %params, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @dsa_2048_224_sha224_bad_seed, i64 0, i64 0), i64 noundef 28, i32 noundef 2878) #3
  %call38 = call i32 @ossl_ffc_params_FIPS186_4_validate(%struct.ossl_lib_ctx_st* noundef null, %struct.ffc_params_st* noundef nonnull %params, i32 noundef 0, i32* noundef nonnull %res, %struct.bn_gencb_st* noundef null) #3
  %cmp39 = icmp ne i32 %call38, 0
  %conv40 = zext i1 %cmp39 to i32
  %call41 = call i32 @test_false(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 305, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv40) #3
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %err, label %if.end44

if.end44:                                         ; preds = %if.end36
  %call45 = call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([384 x i8], [384 x i8]* @dsa_3072_256_sha512_p, i64 0, i64 0), i32 noundef 384, %struct.bignum_st* noundef null) #3
  %4 = bitcast %struct.bignum_st* %call45 to i8*
  %call46 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 309, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.13, i64 0, i64 0), i8* noundef %4) #3
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %err, label %if.end49

if.end49:                                         ; preds = %if.end44
  %call50 = call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @dsa_3072_256_sha512_q, i64 0, i64 0), i32 noundef 32, %struct.bignum_st* noundef null) #3
  %5 = bitcast %struct.bignum_st* %call50 to i8*
  %call51 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 313, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.14, i64 0, i64 0), i8* noundef %5) #3
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %err, label %if.end54

if.end54:                                         ; preds = %if.end49
  call void @ossl_ffc_params_set0_pqg(%struct.ffc_params_st* noundef nonnull %params, %struct.bignum_st* noundef %call45, %struct.bignum_st* noundef %call50, %struct.bignum_st* noundef null) #3
  %call55 = call i32 @ossl_ffc_set_digest(%struct.ffc_params_st* noundef nonnull %params, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* noundef null) #3
  %call56 = call i32 @ossl_ffc_params_set_validate_params(%struct.ffc_params_st* noundef nonnull %params, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @dsa_3072_256_sha512_seed, i64 0, i64 0), i64 noundef 32, i32 noundef 1604) #3
  %call57 = call i32 @ossl_ffc_params_FIPS186_4_validate(%struct.ossl_lib_ctx_st* noundef null, %struct.ffc_params_st* noundef nonnull %params, i32 noundef 0, i32* noundef nonnull %res, %struct.bn_gencb_st* noundef null) #3
  %cmp58 = icmp ne i32 %call57, 0
  %conv59 = zext i1 %cmp58 to i32
  %call60 = call i32 @test_false(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 326, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv59) #3
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %err, label %if.end63

if.end63:                                         ; preds = %if.end54
  %call64 = call i32 @ossl_ffc_params_FIPS186_4_validate(%struct.ossl_lib_ctx_st* noundef null, %struct.ffc_params_st* noundef nonnull %params, i32 noundef 1, i32* noundef nonnull %res, %struct.bn_gencb_st* noundef null) #3
  %cmp65 = icmp ne i32 %call64, 0
  %conv66 = zext i1 %cmp65 to i32
  %call67 = call i32 @test_false(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 332, i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv66) #3
  %tobool68.not = icmp ne i32 %call67, 0
  %spec.select = zext i1 %tobool68.not to i32
  br label %err

err:                                              ; preds = %if.end63, %if.end54, %if.end49, %if.end44, %if.end36, %if.end28, %if.end20, %if.end12, %if.end6, %if.end, %entry
  %ret.0 = phi i32 [ 0, %if.end54 ], [ 0, %if.end49 ], [ 0, %if.end44 ], [ 0, %if.end36 ], [ 0, %if.end28 ], [ 0, %if.end20 ], [ 0, %if.end12 ], [ 0, %if.end6 ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %if.end63 ]
  %p.0 = phi %struct.bignum_st* [ null, %if.end54 ], [ %call45, %if.end49 ], [ %call45, %if.end44 ], [ null, %if.end36 ], [ null, %if.end28 ], [ null, %if.end20 ], [ null, %if.end12 ], [ %call, %if.end6 ], [ %call, %if.end ], [ %call, %entry ], [ null, %if.end63 ]
  %q.0 = phi %struct.bignum_st* [ null, %if.end54 ], [ %call50, %if.end49 ], [ null, %if.end44 ], [ null, %if.end36 ], [ null, %if.end28 ], [ null, %if.end20 ], [ null, %if.end12 ], [ null, %if.end6 ], [ %call2, %if.end ], [ null, %entry ], [ null, %if.end63 ]
  call void @ossl_ffc_params_cleanup(%struct.ffc_params_st* noundef nonnull %params) #3
  call void @BN_free(%struct.bignum_st* noundef %p.0) #3
  call void @BN_free(%struct.bignum_st* noundef %q.0) #3
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ffc_params_validate_g_unverified_test() #0 {
entry:
  %res = alloca i32, align 4
  %params = alloca %struct.ffc_params_st, align 8
  %0 = bitcast i32* %res to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4
  %1 = bitcast %struct.ffc_params_st* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %1) #4
  call void @ossl_ffc_params_init(%struct.ffc_params_st* noundef nonnull %params) #3
  %call = call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @dsa_2048_224_sha256_p, i64 0, i64 0), i32 noundef 256, %struct.bignum_st* noundef null) #3
  %2 = bitcast %struct.bignum_st* %call to i8*
  %call1 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 183, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.17, i64 0, i64 0), i8* noundef %2) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @dsa_2048_224_sha256_q, i64 0, i64 0), i32 noundef 28, %struct.bignum_st* noundef null) #3
  %3 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 187, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18, i64 0, i64 0), i8* noundef %3) #3
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @dsa_2048_224_sha256_g, i64 0, i64 0), i32 noundef 256, %struct.bignum_st* noundef null) #3
  %4 = bitcast %struct.bignum_st* %call7 to i8*
  %call8 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 190, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.19, i64 0, i64 0), i8* noundef %4) #3
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %if.end11

if.end11:                                         ; preds = %if.end6
  call void @ossl_ffc_params_set0_pqg(%struct.ffc_params_st* noundef nonnull %params, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef null) #3
  call void @ossl_ffc_params_set_flags(%struct.ffc_params_st* noundef nonnull %params, i32 noundef 2) #3
  %call12 = call i32 @ossl_ffc_set_digest(%struct.ffc_params_st* noundef nonnull %params, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8* noundef null) #3
  %call13 = call i32 @ossl_ffc_params_FIPS186_4_validate(%struct.ossl_lib_ctx_st* noundef null, %struct.ffc_params_st* noundef nonnull %params, i32 noundef 0, i32* noundef nonnull %res, %struct.bn_gencb_st* noundef null) #3
  %cmp = icmp ne i32 %call13, 0
  %conv = zext i1 %cmp to i32
  %call14 = call i32 @test_false(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 203, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv) #3
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %if.end17

if.end17:                                         ; preds = %if.end11
  call void @ossl_ffc_params_set0_pqg(%struct.ffc_params_st* noundef nonnull %params, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_st* noundef %call7) #3
  %call18 = call i32 @ossl_ffc_params_FIPS186_4_validate(%struct.ossl_lib_ctx_st* noundef null, %struct.ffc_params_st* noundef nonnull %params, i32 noundef 0, i32* noundef nonnull %res, %struct.bn_gencb_st* noundef null) #3
  %cmp19 = icmp ne i32 %call18, 0
  %conv20 = zext i1 %cmp19 to i32
  %call21 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 210, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv20) #3
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err, label %if.end24

if.end24:                                         ; preds = %if.end17
  %call25 = call i32 @BN_add_word(%struct.bignum_st* noundef %call7, i64 noundef 1) #3
  %call26 = call i32 @ossl_ffc_params_FIPS186_4_validate(%struct.ossl_lib_ctx_st* noundef null, %struct.ffc_params_st* noundef nonnull %params, i32 noundef 0, i32* noundef nonnull %res, %struct.bn_gencb_st* noundef null) #3
  %cmp27 = icmp ne i32 %call26, 0
  %conv28 = zext i1 %cmp27 to i32
  %call29 = call i32 @test_false(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 217, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv28) #3
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %err, label %if.end32

if.end32:                                         ; preds = %if.end24
  %call33 = call i32 @BN_set_word(%struct.bignum_st* noundef %call7, i64 noundef 1) #3
  %call34 = call i32 @ossl_ffc_params_FIPS186_4_validate(%struct.ossl_lib_ctx_st* noundef null, %struct.ffc_params_st* noundef nonnull %params, i32 noundef 0, i32* noundef nonnull %res, %struct.bn_gencb_st* noundef null) #3
  %cmp35 = icmp ne i32 %call34, 0
  %conv36 = zext i1 %cmp35 to i32
  %call37 = call i32 @test_false(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 224, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv36) #3
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %err, label %if.end40

if.end40:                                         ; preds = %if.end32
  %call41 = call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call7, %struct.bignum_st* noundef %call) #3
  %call42 = call i32 @ossl_ffc_params_FIPS186_4_validate(%struct.ossl_lib_ctx_st* noundef null, %struct.ffc_params_st* noundef nonnull %params, i32 noundef 0, i32* noundef nonnull %res, %struct.bn_gencb_st* noundef null) #3
  %cmp43 = icmp ne i32 %call42, 0
  %conv44 = zext i1 %cmp43 to i32
  %call45 = call i32 @test_false(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 231, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv44) #3
  %tobool46.not = icmp ne i32 %call45, 0
  %spec.select = zext i1 %tobool46.not to i32
  br label %err

err:                                              ; preds = %if.end40, %if.end32, %if.end24, %if.end17, %if.end11, %if.end6, %if.end, %entry
  %ret.0 = phi i32 [ 0, %if.end32 ], [ 0, %if.end24 ], [ 0, %if.end17 ], [ 0, %if.end11 ], [ 0, %if.end6 ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %if.end40 ]
  %p.0 = phi %struct.bignum_st* [ null, %if.end32 ], [ null, %if.end24 ], [ null, %if.end17 ], [ null, %if.end11 ], [ %call, %if.end6 ], [ %call, %if.end ], [ %call, %entry ], [ null, %if.end40 ]
  %q.0 = phi %struct.bignum_st* [ null, %if.end32 ], [ null, %if.end24 ], [ null, %if.end17 ], [ null, %if.end11 ], [ %call2, %if.end6 ], [ %call2, %if.end ], [ null, %entry ], [ null, %if.end40 ]
  %g.0 = phi %struct.bignum_st* [ null, %if.end32 ], [ null, %if.end24 ], [ null, %if.end17 ], [ %call7, %if.end11 ], [ %call7, %if.end6 ], [ null, %if.end ], [ null, %entry ], [ null, %if.end40 ]
  call void @ossl_ffc_params_cleanup(%struct.ffc_params_st* noundef nonnull %params) #3
  call void @BN_free(%struct.bignum_st* noundef %p.0) #3
  call void @BN_free(%struct.bignum_st* noundef %q.0) #3
  call void @BN_free(%struct.bignum_st* noundef %g.0) #3
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ffc_params_gen_test() #0 {
entry:
  %res = alloca i32, align 4
  %params = alloca %struct.ffc_params_st, align 8
  %0 = bitcast i32* %res to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4
  store i32 -1, i32* %res, align 4, !tbaa !3
  %1 = bitcast %struct.ffc_params_st* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %1) #4
  call void @ossl_ffc_params_init(%struct.ffc_params_st* noundef nonnull %params) #3
  %call = call i32 @ossl_ffc_params_FIPS186_4_generate(%struct.ossl_lib_ctx_st* noundef null, %struct.ffc_params_st* noundef nonnull %params, i32 noundef 1, i64 noundef 2048, i64 noundef 256, i32* noundef nonnull %res, %struct.bn_gencb_st* noundef null) #3
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 353, i8* noundef getelementptr inbounds ([92 x i8], [92 x i8]* @.str.21, i64 0, i64 0), i32 noundef %conv) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i32 @ossl_ffc_params_FIPS186_4_validate(%struct.ossl_lib_ctx_st* noundef null, %struct.ffc_params_st* noundef nonnull %params, i32 noundef 1, i32* noundef nonnull %res, %struct.bn_gencb_st* noundef null) #3
  %cmp3 = icmp ne i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 357, i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv4) #3
  %tobool6.not = icmp ne i32 %call5, 0
  %spec.select = zext i1 %tobool6.not to i32
  br label %err

err:                                              ; preds = %if.end, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ %spec.select, %if.end ]
  call void @ossl_ffc_params_cleanup(%struct.ffc_params_st* noundef nonnull %params) #3
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ffc_params_gen_canonicalg_test() #0 {
entry:
  %res = alloca i32, align 4
  %params = alloca %struct.ffc_params_st, align 8
  %0 = bitcast i32* %res to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4
  store i32 -1, i32* %res, align 4, !tbaa !3
  %1 = bitcast %struct.ffc_params_st* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %1) #4
  call void @ossl_ffc_params_init(%struct.ffc_params_st* noundef nonnull %params) #3
  %gindex = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 8
  store i32 1, i32* %gindex, align 8, !tbaa !7
  %call = call i32 @ossl_ffc_params_FIPS186_4_generate(%struct.ossl_lib_ctx_st* noundef null, %struct.ffc_params_st* noundef nonnull %params, i32 noundef 1, i64 noundef 2048, i64 noundef 256, i32* noundef nonnull %res, %struct.bn_gencb_st* noundef null) #3
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 375, i8* noundef getelementptr inbounds ([92 x i8], [92 x i8]* @.str.21, i64 0, i64 0), i32 noundef %conv) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i32 @ossl_ffc_params_FIPS186_4_validate(%struct.ossl_lib_ctx_st* noundef null, %struct.ffc_params_st* noundef nonnull %params, i32 noundef 1, i32* noundef nonnull %res, %struct.bn_gencb_st* noundef null) #3
  %cmp3 = icmp ne i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 379, i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv4) #3
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %err, label %if.end8

if.end8:                                          ; preds = %if.end
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !11
  %call9 = call i32 @ossl_ffc_params_print(%struct.bio_st* noundef %2, %struct.ffc_params_st* noundef nonnull %params, i32 noundef 4) #3
  %cmp10 = icmp ne i32 %call9, 0
  %conv11 = zext i1 %cmp10 to i32
  %call12 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 382, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0), i32 noundef %conv11) #3
  %tobool13.not = icmp ne i32 %call12, 0
  %spec.select = zext i1 %tobool13.not to i32
  br label %err

err:                                              ; preds = %if.end8, %if.end, %entry
  %ret.0 = phi i32 [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %if.end8 ]
  call void @ossl_ffc_params_cleanup(%struct.ffc_params_st* noundef nonnull %params) #3
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ffc_params_fips186_2_gen_validate_test() #0 {
entry:
  %res = alloca i32, align 4
  %params = alloca %struct.ffc_params_st, align 8
  %0 = bitcast i32* %res to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4
  store i32 -1, i32* %res, align 4, !tbaa !3
  %1 = bitcast %struct.ffc_params_st* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %1) #4
  call void @ossl_ffc_params_init(%struct.ffc_params_st* noundef nonnull %params) #3
  %call = call %struct.bignum_st* @BN_new() #3
  %2 = bitcast %struct.bignum_st* %call to i8*
  %call1 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 398, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8* noundef %2) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i32 @ossl_ffc_params_FIPS186_2_generate(%struct.ossl_lib_ctx_st* noundef null, %struct.ffc_params_st* noundef nonnull %params, i32 noundef 1, i64 noundef 1024, i64 noundef 160, i32* noundef nonnull %res, %struct.bn_gencb_st* noundef null) #3
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 402, i8* noundef getelementptr inbounds ([92 x i8], [92 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv) #3
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @ossl_ffc_params_FIPS186_2_validate(%struct.ossl_lib_ctx_st* noundef null, %struct.ffc_params_st* noundef nonnull %params, i32 noundef 1, i32* noundef nonnull %res, %struct.bn_gencb_st* noundef null) #3
  %cmp8 = icmp ne i32 %call7, 0
  %conv9 = zext i1 %cmp8 to i32
  %call10 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 406, i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.25, i64 0, i64 0), i32 noundef %conv9) #3
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %if.end13

if.end13:                                         ; preds = %if.end6
  %call14 = call i32 @ossl_ffc_params_FIPS186_4_validate(%struct.ossl_lib_ctx_st* noundef null, %struct.ffc_params_st* noundef nonnull %params, i32 noundef 0, i32* noundef nonnull %res, %struct.bn_gencb_st* noundef null) #3
  %cmp15 = icmp ne i32 %call14, 0
  %conv16 = zext i1 %cmp15 to i32
  %call17 = call i32 @test_false(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 415, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv16) #3
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %if.end20

if.end20:                                         ; preds = %if.end13
  %3 = load i32, i32* %res, align 4, !tbaa !3
  %cmp21 = icmp eq i32 %3, 16384
  %cmp23 = icmp eq i32 %3, 16
  %4 = or i1 %cmp21, %cmp23
  %lor.ext = zext i1 %4 to i32
  %call27 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 418, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.26, i64 0, i64 0), i32 noundef %lor.ext) #3
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %if.end30

if.end30:                                         ; preds = %if.end20
  call void @ossl_ffc_params_set_flags(%struct.ffc_params_st* noundef nonnull %params, i32 noundef 2) #3
  %call31 = call i32 @ossl_ffc_params_FIPS186_4_validate(%struct.ossl_lib_ctx_st* noundef null, %struct.ffc_params_st* noundef nonnull %params, i32 noundef 0, i32* noundef nonnull %res, %struct.bn_gencb_st* noundef null) #3
  %call32 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 425, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), i32 noundef %call31, i32 noundef 2) #3
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %if.end35

if.end35:                                         ; preds = %if.end30
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !11
  %call36 = call i32 @ossl_ffc_params_print(%struct.bio_st* noundef %5, %struct.ffc_params_st* noundef nonnull %params, i32 noundef 4) #3
  %cmp37 = icmp ne i32 %call36, 0
  %conv38 = zext i1 %cmp37 to i32
  %call39 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 428, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0), i32 noundef %conv38) #3
  %tobool40.not = icmp ne i32 %call39, 0
  %spec.select = zext i1 %tobool40.not to i32
  br label %err

err:                                              ; preds = %if.end35, %if.end30, %if.end20, %if.end13, %if.end6, %if.end, %entry
  %ret.0 = phi i32 [ 0, %if.end30 ], [ 0, %if.end20 ], [ 0, %if.end13 ], [ 0, %if.end6 ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %if.end35 ]
  call void @BN_free(%struct.bignum_st* noundef %call) #3
  call void @ossl_ffc_params_cleanup(%struct.ffc_params_st* noundef nonnull %params) #3
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ffc_public_validate_test() #0 {
entry:
  %res = alloca i32, align 4
  %0 = bitcast i32* %res to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4
  store i32 -1, i32* %res, align 4, !tbaa !3
  %call = tail call %struct.bignum_st* @BN_new() #3
  %1 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 447, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0), i8* noundef %1) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.dh_st* @DH_new_by_nid(i32 noundef 1126) #3
  %2 = bitcast %struct.dh_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 450, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i64 0, i64 0), i8* noundef %2) #3
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = tail call %struct.ffc_params_st* @ossl_dh_get0_params(%struct.dh_st* noundef %call2) #3
  %call8 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call, i64 noundef 1) #3
  %cmp = icmp ne i32 %call8, 0
  %conv = zext i1 %cmp to i32
  %call9 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 454, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i64 0, i64 0), i32 noundef %conv) #3
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %err, label %if.end12

if.end12:                                         ; preds = %if.end6
  tail call void @BN_set_negative(%struct.bignum_st* noundef %call, i32 noundef 1) #3
  %call13 = call i32 @ossl_ffc_validate_public_key(%struct.ffc_params_st* noundef %call7, %struct.bignum_st* noundef %call, i32* noundef nonnull %res) #3
  %cmp14 = icmp ne i32 %call13, 0
  %conv15 = zext i1 %cmp14 to i32
  %call16 = call i32 @test_false(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 458, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv15) #3
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %if.end19

if.end19:                                         ; preds = %if.end12
  %3 = load i32, i32* %res, align 4, !tbaa !3
  %call20 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 460, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i32 noundef 1, i32 noundef %3) #3
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %if.end23

if.end23:                                         ; preds = %if.end19
  %call24 = call i32 @BN_set_word(%struct.bignum_st* noundef %call, i64 noundef 0) #3
  %cmp25 = icmp ne i32 %call24, 0
  %conv26 = zext i1 %cmp25 to i32
  %call27 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 462, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i64 0, i64 0), i32 noundef %conv26) #3
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %if.end30

if.end30:                                         ; preds = %if.end23
  %4 = load i32, i32* %res, align 4, !tbaa !3
  %call31 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 464, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i32 noundef 1, i32 noundef %4) #3
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %if.end34

if.end34:                                         ; preds = %if.end30
  %call35 = call i32 @ossl_ffc_validate_public_key(%struct.ffc_params_st* noundef %call7, %struct.bignum_st* noundef %call, i32* noundef nonnull %res) #3
  %cmp36 = icmp ne i32 %call35, 0
  %conv37 = zext i1 %cmp36 to i32
  %call38 = call i32 @test_false(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 467, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv37) #3
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %err, label %if.end41

if.end41:                                         ; preds = %if.end34
  %5 = load i32, i32* %res, align 4, !tbaa !3
  %call42 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 469, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i32 noundef 1, i32 noundef %5) #3
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %err, label %if.end45

if.end45:                                         ; preds = %if.end41
  %call46 = call %struct.bignum_st* @BN_value_one() #3
  %call47 = call i32 @ossl_ffc_validate_public_key(%struct.ffc_params_st* noundef %call7, %struct.bignum_st* noundef %call46, i32* noundef nonnull %res) #3
  %cmp48 = icmp ne i32 %call47, 0
  %conv49 = zext i1 %cmp48 to i32
  %call50 = call i32 @test_false(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 472, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv49) #3
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %err, label %if.end53

if.end53:                                         ; preds = %if.end45
  %6 = load i32, i32* %res, align 4, !tbaa !3
  %call54 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 474, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i32 noundef 1, i32 noundef %6) #3
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %err, label %if.end57

if.end57:                                         ; preds = %if.end53
  %call58 = call i32 @BN_add_word(%struct.bignum_st* noundef %call, i64 noundef 2) #3
  %cmp59 = icmp ne i32 %call58, 0
  %conv60 = zext i1 %cmp59 to i32
  %call61 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 476, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv60) #3
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %err, label %if.end64

if.end64:                                         ; preds = %if.end57
  %call65 = call i32 @ossl_ffc_validate_public_key(%struct.ffc_params_st* noundef %call7, %struct.bignum_st* noundef %call, i32* noundef nonnull %res) #3
  %cmp66 = icmp ne i32 %call65, 0
  %conv67 = zext i1 %cmp66 to i32
  %call68 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 479, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv67) #3
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %err, label %if.end71

if.end71:                                         ; preds = %if.end64
  %p = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %call7, i64 0, i32 0
  %7 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !12
  %call72 = call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %7) #3
  %8 = bitcast %struct.bignum_st* %call72 to i8*
  %call73 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 482, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.37, i64 0, i64 0), i8* noundef %8) #3
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %err, label %if.end76

if.end76:                                         ; preds = %if.end71
  %call77 = call i32 @ossl_ffc_validate_public_key(%struct.ffc_params_st* noundef nonnull %call7, %struct.bignum_st* noundef %call, i32* noundef nonnull %res) #3
  %cmp78 = icmp ne i32 %call77, 0
  %conv79 = zext i1 %cmp78 to i32
  %call80 = call i32 @test_false(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 485, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv79) #3
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %err, label %if.end83

if.end83:                                         ; preds = %if.end76
  %9 = load i32, i32* %res, align 4, !tbaa !3
  %call84 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 487, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i32 noundef 2, i32 noundef %9) #3
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %err, label %if.end87

if.end87:                                         ; preds = %if.end83
  %call88 = call i32 @BN_sub_word(%struct.bignum_st* noundef %call, i64 noundef 1) #3
  %cmp89 = icmp ne i32 %call88, 0
  %conv90 = zext i1 %cmp89 to i32
  %call91 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 490, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i64 0, i64 0), i32 noundef %conv90) #3
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %err, label %if.end94

if.end94:                                         ; preds = %if.end87
  %call95 = call i32 @ossl_ffc_validate_public_key(%struct.ffc_params_st* noundef nonnull %call7, %struct.bignum_st* noundef %call, i32* noundef nonnull %res) #3
  %cmp96 = icmp ne i32 %call95, 0
  %conv97 = zext i1 %cmp96 to i32
  %call98 = call i32 @test_false(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 493, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv97) #3
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %err, label %if.end101

if.end101:                                        ; preds = %if.end94
  %10 = load i32, i32* %res, align 4, !tbaa !3
  %call102 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 495, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i32 noundef 2, i32 noundef %10) #3
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %err, label %if.end105

if.end105:                                        ; preds = %if.end101
  %call106 = call i32 @BN_sub_word(%struct.bignum_st* noundef %call, i64 noundef 1) #3
  %cmp107 = icmp ne i32 %call106, 0
  %conv108 = zext i1 %cmp107 to i32
  %call109 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 498, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i64 0, i64 0), i32 noundef %conv108) #3
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %err, label %if.end112

if.end112:                                        ; preds = %if.end105
  %call113 = call i32 @ossl_ffc_validate_public_key(%struct.ffc_params_st* noundef nonnull %call7, %struct.bignum_st* noundef %call, i32* noundef nonnull %res) #3
  %cmp114 = icmp ne i32 %call113, 0
  %conv115 = zext i1 %cmp114 to i32
  %call116 = call i32 @test_false(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 501, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv115) #3
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %err, label %if.end119

if.end119:                                        ; preds = %if.end112
  %11 = load i32, i32* %res, align 4, !tbaa !3
  %call120 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 503, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i32 noundef 4, i32 noundef %11) #3
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %err, label %if.end123

if.end123:                                        ; preds = %if.end119
  %call124 = call i32 @BN_sub_word(%struct.bignum_st* noundef %call, i64 noundef 5) #3
  %cmp125 = icmp ne i32 %call124, 0
  %conv126 = zext i1 %cmp125 to i32
  %call127 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 506, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv126) #3
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %err, label %if.end130

if.end130:                                        ; preds = %if.end123
  %call131 = call i32 @ossl_ffc_validate_public_key(%struct.ffc_params_st* noundef nonnull %call7, %struct.bignum_st* noundef %call, i32* noundef nonnull %res) #3
  %cmp132 = icmp ne i32 %call131, 0
  %conv133 = zext i1 %cmp132 to i32
  %call134 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 509, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv133) #3
  %tobool135.not = icmp ne i32 %call134, 0
  %spec.select = zext i1 %tobool135.not to i32
  br label %err

err:                                              ; preds = %if.end130, %if.end123, %if.end119, %if.end112, %if.end105, %if.end101, %if.end94, %if.end87, %if.end83, %if.end76, %if.end71, %if.end64, %if.end57, %if.end53, %if.end45, %if.end41, %if.end34, %if.end30, %if.end23, %if.end19, %if.end12, %if.end6, %if.end, %entry
  %ret.0 = phi i32 [ 0, %if.end123 ], [ 0, %if.end119 ], [ 0, %if.end112 ], [ 0, %if.end105 ], [ 0, %if.end101 ], [ 0, %if.end94 ], [ 0, %if.end87 ], [ 0, %if.end83 ], [ 0, %if.end76 ], [ 0, %if.end71 ], [ 0, %if.end64 ], [ 0, %if.end57 ], [ 0, %if.end53 ], [ 0, %if.end45 ], [ 0, %if.end41 ], [ 0, %if.end34 ], [ 0, %if.end30 ], [ 0, %if.end23 ], [ 0, %if.end19 ], [ 0, %if.end12 ], [ 0, %if.end6 ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %if.end130 ]
  %dh.0 = phi %struct.dh_st* [ %call2, %if.end123 ], [ %call2, %if.end119 ], [ %call2, %if.end112 ], [ %call2, %if.end105 ], [ %call2, %if.end101 ], [ %call2, %if.end94 ], [ %call2, %if.end87 ], [ %call2, %if.end83 ], [ %call2, %if.end76 ], [ %call2, %if.end71 ], [ %call2, %if.end64 ], [ %call2, %if.end57 ], [ %call2, %if.end53 ], [ %call2, %if.end45 ], [ %call2, %if.end41 ], [ %call2, %if.end34 ], [ %call2, %if.end30 ], [ %call2, %if.end23 ], [ %call2, %if.end19 ], [ %call2, %if.end12 ], [ %call2, %if.end6 ], [ %call2, %if.end ], [ null, %entry ], [ %call2, %if.end130 ]
  call void @DH_free(%struct.dh_st* noundef %dh.0) #3
  call void @BN_free(%struct.bignum_st* noundef %call) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ffc_private_validate_test() #0 {
entry:
  %res = alloca i32, align 4
  %0 = bitcast i32* %res to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4
  store i32 -1, i32* %res, align 4, !tbaa !3
  %call = tail call %struct.bignum_st* @BN_new() #3
  %1 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 526, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i64 0, i64 0), i8* noundef %1) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.dh_st* @DH_new_by_nid(i32 noundef 1126) #3
  %2 = bitcast %struct.dh_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 529, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i64 0, i64 0), i8* noundef %2) #3
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = tail call %struct.ffc_params_st* @ossl_dh_get0_params(%struct.dh_st* noundef %call2) #3
  %call8 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call, i64 noundef 1) #3
  %cmp = icmp ne i32 %call8, 0
  %conv = zext i1 %cmp to i32
  %call9 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 533, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i64 0, i64 0), i32 noundef %conv) #3
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %err, label %if.end12

if.end12:                                         ; preds = %if.end6
  tail call void @BN_set_negative(%struct.bignum_st* noundef %call, i32 noundef 1) #3
  %q = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %call7, i64 0, i32 1
  %3 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !13
  %call13 = call i32 @ossl_ffc_validate_private_key(%struct.bignum_st* noundef %3, %struct.bignum_st* noundef %call, i32* noundef nonnull %res) #3
  %cmp14 = icmp ne i32 %call13, 0
  %conv15 = zext i1 %cmp14 to i32
  %call16 = call i32 @test_false(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 537, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.44, i64 0, i64 0), i32 noundef %conv15) #3
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %if.end19

if.end19:                                         ; preds = %if.end12
  %4 = load i32, i32* %res, align 4, !tbaa !3
  %call20 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 539, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i32 noundef 16, i32 noundef %4) #3
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %if.end23

if.end23:                                         ; preds = %if.end19
  %call24 = call i32 @BN_set_word(%struct.bignum_st* noundef %call, i64 noundef 0) #3
  %cmp25 = icmp ne i32 %call24, 0
  %conv26 = zext i1 %cmp25 to i32
  %call27 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 542, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.46, i64 0, i64 0), i32 noundef %conv26) #3
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %if.end30

if.end30:                                         ; preds = %if.end23
  %5 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !13
  %call32 = call i32 @ossl_ffc_validate_private_key(%struct.bignum_st* noundef %5, %struct.bignum_st* noundef %call, i32* noundef nonnull %res) #3
  %cmp33 = icmp ne i32 %call32, 0
  %conv34 = zext i1 %cmp33 to i32
  %call35 = call i32 @test_false(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 545, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.44, i64 0, i64 0), i32 noundef %conv34) #3
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %err, label %if.end38

if.end38:                                         ; preds = %if.end30
  %6 = load i32, i32* %res, align 4, !tbaa !3
  %call39 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 547, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i32 noundef 16, i32 noundef %6) #3
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err, label %if.end42

if.end42:                                         ; preds = %if.end38
  %7 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !13
  %call44 = call %struct.bignum_st* @BN_value_one() #3
  %call45 = call i32 @ossl_ffc_validate_private_key(%struct.bignum_st* noundef %7, %struct.bignum_st* noundef %call44, i32* noundef nonnull %res) #3
  %cmp46 = icmp ne i32 %call45, 0
  %conv47 = zext i1 %cmp46 to i32
  %call48 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 552, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.47, i64 0, i64 0), i32 noundef %conv47) #3
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %err, label %if.end51

if.end51:                                         ; preds = %if.end42
  %8 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !13
  %call53 = call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %8) #3
  %9 = bitcast %struct.bignum_st* %call53 to i8*
  %call54 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 555, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.48, i64 0, i64 0), i8* noundef %9) #3
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %err, label %if.end57

if.end57:                                         ; preds = %if.end51
  %10 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !13
  %call59 = call i32 @ossl_ffc_validate_private_key(%struct.bignum_st* noundef %10, %struct.bignum_st* noundef %call, i32* noundef nonnull %res) #3
  %cmp60 = icmp ne i32 %call59, 0
  %conv61 = zext i1 %cmp60 to i32
  %call62 = call i32 @test_false(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 558, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.44, i64 0, i64 0), i32 noundef %conv61) #3
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %err, label %if.end65

if.end65:                                         ; preds = %if.end57
  %11 = load i32, i32* %res, align 4, !tbaa !3
  %call66 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 560, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.49, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i32 noundef 32, i32 noundef %11) #3
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %err, label %if.end69

if.end69:                                         ; preds = %if.end65
  %call70 = call i32 @BN_sub_word(%struct.bignum_st* noundef %call, i64 noundef 1) #3
  %cmp71 = icmp ne i32 %call70, 0
  %conv72 = zext i1 %cmp71 to i32
  %call73 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 563, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.50, i64 0, i64 0), i32 noundef %conv72) #3
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %err, label %if.end76

if.end76:                                         ; preds = %if.end69
  %12 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !13
  %call78 = call i32 @ossl_ffc_validate_private_key(%struct.bignum_st* noundef %12, %struct.bignum_st* noundef %call, i32* noundef nonnull %res) #3
  %cmp79 = icmp ne i32 %call78, 0
  %conv80 = zext i1 %cmp79 to i32
  %call81 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 566, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.44, i64 0, i64 0), i32 noundef %conv80) #3
  %tobool82.not = icmp ne i32 %call81, 0
  %spec.select = zext i1 %tobool82.not to i32
  br label %err

err:                                              ; preds = %if.end76, %if.end69, %if.end65, %if.end57, %if.end51, %if.end42, %if.end38, %if.end30, %if.end23, %if.end19, %if.end12, %if.end6, %if.end, %entry
  %ret.0 = phi i32 [ 0, %if.end69 ], [ 0, %if.end65 ], [ 0, %if.end57 ], [ 0, %if.end51 ], [ 0, %if.end42 ], [ 0, %if.end38 ], [ 0, %if.end30 ], [ 0, %if.end23 ], [ 0, %if.end19 ], [ 0, %if.end12 ], [ 0, %if.end6 ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %if.end76 ]
  %dh.0 = phi %struct.dh_st* [ %call2, %if.end69 ], [ %call2, %if.end65 ], [ %call2, %if.end57 ], [ %call2, %if.end51 ], [ %call2, %if.end42 ], [ %call2, %if.end38 ], [ %call2, %if.end30 ], [ %call2, %if.end23 ], [ %call2, %if.end19 ], [ %call2, %if.end12 ], [ %call2, %if.end6 ], [ %call2, %if.end ], [ null, %entry ], [ %call2, %if.end76 ]
  call void @DH_free(%struct.dh_st* noundef %dh.0) #3
  call void @BN_free(%struct.bignum_st* noundef %call) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4
  ret i32 %ret.0
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @ffc_private_gen_test(i32 noundef %index) #0 {
entry:
  %res = alloca i32, align 4
  %0 = bitcast i32* %res to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4
  store i32 -1, i32* %res, align 4, !tbaa !3
  %call = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef null) #3
  %1 = bitcast %struct.bignum_ctx* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 584, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.51, i64 0, i64 0), i8* noundef %1) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_new() #3
  %2 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 587, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i64 0, i64 0), i8* noundef %2) #3
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = tail call %struct.dh_st* @DH_new_by_nid(i32 noundef 1126) #3
  %3 = bitcast %struct.dh_st* %call7 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 590, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i64 0, i64 0), i8* noundef %3) #3
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %if.end11

if.end11:                                         ; preds = %if.end6
  %call12 = tail call %struct.ffc_params_st* @ossl_dh_get0_params(%struct.dh_st* noundef %call7) #3
  %q = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %call12, i64 0, i32 1
  %4 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !13
  %call13 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %4) #3
  %call14 = tail call i32 @ossl_ffc_generate_private_key(%struct.bignum_ctx* noundef %call, %struct.ffc_params_st* noundef %call12, i32 noundef 220, i32 noundef 112, %struct.bignum_st* noundef %call2) #3
  %cmp = icmp ne i32 %call14, 0
  %conv = zext i1 %cmp to i32
  %call15 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 596, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.52, i64 0, i64 0), i32 noundef %conv) #3
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %if.end18

if.end18:                                         ; preds = %if.end11
  %add = add nsw i32 %call13, 1
  %call19 = tail call i32 @ossl_ffc_generate_private_key(%struct.bignum_ctx* noundef %call, %struct.ffc_params_st* noundef nonnull %call12, i32 noundef %add, i32 noundef 112, %struct.bignum_st* noundef %call2) #3
  %cmp20 = icmp ne i32 %call19, 0
  %conv21 = zext i1 %cmp20 to i32
  %call22 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 599, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.53, i64 0, i64 0), i32 noundef %conv21) #3
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %err, label %if.end25

if.end25:                                         ; preds = %if.end18
  %call26 = tail call i32 @ossl_ffc_generate_private_key(%struct.bignum_ctx* noundef %call, %struct.ffc_params_st* noundef nonnull %call12, i32 noundef %call13, i32 noundef 112, %struct.bignum_st* noundef %call2) #3
  %cmp27 = icmp ne i32 %call26, 0
  %conv28 = zext i1 %cmp27 to i32
  %call29 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 602, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.54, i64 0, i64 0), i32 noundef %conv28) #3
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %err, label %if.end32

if.end32:                                         ; preds = %if.end25
  %5 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !13
  %call34 = call i32 @ossl_ffc_validate_private_key(%struct.bignum_st* noundef %5, %struct.bignum_st* noundef %call2, i32* noundef nonnull %res) #3
  %cmp35 = icmp ne i32 %call34, 0
  %conv36 = zext i1 %cmp35 to i32
  %call37 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 605, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.44, i64 0, i64 0), i32 noundef %conv36) #3
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %err, label %if.end40

if.end40:                                         ; preds = %if.end32
  %div = sdiv i32 %call13, 2
  %call41 = call i32 @ossl_ffc_generate_private_key(%struct.bignum_ctx* noundef %call, %struct.ffc_params_st* noundef nonnull %call12, i32 noundef %div, i32 noundef 112, %struct.bignum_st* noundef %call2) #3
  %cmp42 = icmp ne i32 %call41, 0
  %conv43 = zext i1 %cmp42 to i32
  %call44 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 608, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.55, i64 0, i64 0), i32 noundef %conv43) #3
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %err, label %if.end47

if.end47:                                         ; preds = %if.end40
  %6 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !13
  %call49 = call i32 @ossl_ffc_validate_private_key(%struct.bignum_st* noundef %6, %struct.bignum_st* noundef %call2, i32* noundef nonnull %res) #3
  %cmp50 = icmp ne i32 %call49, 0
  %conv51 = zext i1 %cmp50 to i32
  %call52 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 610, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.44, i64 0, i64 0), i32 noundef %conv51) #3
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %err, label %if.end55

if.end55:                                         ; preds = %if.end47
  %call56 = call i32 @ossl_ffc_generate_private_key(%struct.bignum_ctx* noundef %call, %struct.ffc_params_st* noundef nonnull %call12, i32 noundef 0, i32 noundef 0, %struct.bignum_st* noundef %call2) #3
  %cmp57 = icmp ne i32 %call56, 0
  %conv58 = zext i1 %cmp57 to i32
  %call59 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 614, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.56, i64 0, i64 0), i32 noundef %conv58) #3
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %err, label %if.end62

if.end62:                                         ; preds = %if.end55
  %7 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !13
  %call64 = call i32 @ossl_ffc_validate_private_key(%struct.bignum_st* noundef %7, %struct.bignum_st* noundef %call2, i32* noundef nonnull %res) #3
  %cmp65 = icmp ne i32 %call64, 0
  %conv66 = zext i1 %cmp65 to i32
  %call67 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 616, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.44, i64 0, i64 0), i32 noundef %conv66) #3
  %tobool68.not = icmp ne i32 %call67, 0
  %spec.select = zext i1 %tobool68.not to i32
  br label %err

err:                                              ; preds = %if.end62, %if.end55, %if.end47, %if.end40, %if.end32, %if.end25, %if.end18, %if.end11, %if.end6, %if.end, %entry
  %ret.0 = phi i32 [ 0, %if.end55 ], [ 0, %if.end47 ], [ 0, %if.end40 ], [ 0, %if.end32 ], [ 0, %if.end25 ], [ 0, %if.end18 ], [ 0, %if.end11 ], [ 0, %if.end6 ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %if.end62 ]
  %priv.0 = phi %struct.bignum_st* [ %call2, %if.end55 ], [ %call2, %if.end47 ], [ %call2, %if.end40 ], [ %call2, %if.end32 ], [ %call2, %if.end25 ], [ %call2, %if.end18 ], [ %call2, %if.end11 ], [ %call2, %if.end6 ], [ %call2, %if.end ], [ null, %entry ], [ %call2, %if.end62 ]
  %dh.0 = phi %struct.dh_st* [ %call7, %if.end55 ], [ %call7, %if.end47 ], [ %call7, %if.end40 ], [ %call7, %if.end32 ], [ %call7, %if.end25 ], [ %call7, %if.end18 ], [ %call7, %if.end11 ], [ %call7, %if.end6 ], [ null, %if.end ], [ null, %entry ], [ %call7, %if.end62 ]
  call void @DH_free(%struct.dh_st* noundef %dh.0) #3
  call void @BN_free(%struct.bignum_st* noundef %priv.0) #3
  call void @BN_CTX_free(%struct.bignum_ctx* noundef %call) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local void @ossl_ffc_params_init(%struct.ffc_params_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local void @ossl_ffc_params_set0_pqg(%struct.ffc_params_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local void @ossl_ffc_params_set_flags(%struct.ffc_params_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_ffc_set_digest(%struct.ffc_params_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_ffc_params_FIPS186_4_validate(%struct.ossl_lib_ctx_st* noundef, %struct.ffc_params_st* noundef, i32 noundef, i32* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_ffc_params_set_validate_params(%struct.ffc_params_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @ossl_ffc_params_cleanup(%struct.ffc_params_st* noundef) local_unnamed_addr #1

declare dso_local void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @BN_add_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @BN_set_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_ffc_params_FIPS186_4_generate(%struct.ossl_lib_ctx_st* noundef, %struct.ffc_params_st* noundef, i32 noundef, i64 noundef, i64 noundef, i32* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_ffc_params_print(%struct.bio_st* noundef, %struct.ffc_params_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_new() local_unnamed_addr #1

declare dso_local i32 @ossl_ffc_params_FIPS186_2_generate(%struct.ossl_lib_ctx_st* noundef, %struct.ffc_params_st* noundef, i32 noundef, i64 noundef, i64 noundef, i32* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_ffc_params_FIPS186_2_validate(%struct.ossl_lib_ctx_st* noundef, %struct.ffc_params_st* noundef, i32 noundef, i32* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.dh_st* @DH_new_by_nid(i32 noundef) local_unnamed_addr #1

declare dso_local %struct.ffc_params_st* @ossl_dh_get0_params(%struct.dh_st* noundef) local_unnamed_addr #1

declare dso_local void @BN_set_negative(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_ffc_validate_public_key(%struct.ffc_params_st* noundef, %struct.bignum_st* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_value_one() local_unnamed_addr #1

declare dso_local i32 @BN_sub_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @DH_free(%struct.dh_st* noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_ffc_validate_private_key(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_ffc_generate_private_key(%struct.bignum_ctx* noundef, %struct.ffc_params_st* noundef, i32 noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #1

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
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 56}
!8 = !{!"ffc_params_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !10, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !9, i64 72, !9, i64 80}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!9, !9, i64 0}
!12 = !{!8, !9, i64 0}
!13 = !{!8, !9, i64 8}
