; ModuleID = 'test/rsa_mp_test.c'
source_filename = "test/rsa_mp_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsa_st = type opaque
%struct.bn_gencb_st = type opaque
%struct.bignum_st = type opaque
%struct.stack_st_BIGNUM = type opaque
%struct.stack_st = type opaque

@.str = private unnamed_addr constant [12 x i8] c"test_rsa_mp\00", align 1
@test_rsa_mp.ptext_ex = internal global [9 x i8] c"T\85\9B4,I\EA*\00", align 1
@test_rsa_mp.param_set = internal unnamed_addr constant [2 x i32 (%struct.rsa_st*)*] [i32 (%struct.rsa_st*)* @key2048p3_v1, i32 (%struct.rsa_st*)* @key2048p3_v2], align 16
@.str.1 = private unnamed_addr constant [19 x i8] c"test/rsa_mp_test.c\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"(clen = key2048_key(key))\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"256\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"(clen = param_set[i](key))\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"RSA_check_key_ex(key, NULL)\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"num\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"clen\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"ptext\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"ptext_ex\00", align 1
@.str.11 = private unnamed_addr constant [92 x i8] c"RSA_set0_factors(key, BN_bin2bn(p, sizeof(p) - 1, NULL), BN_bin2bn(q, sizeof(q) - 1, NULL))\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@p = internal constant [87 x i8] c"\06w\CD\D5F\9B\C1\D5X\00\81\E2\F3\0A6\B1n)\89\D5/1_\92\22;\9Bu0\82\FA\C5\F5\DE\8A6\DB\C6\E5\8F\EF\147\D6\00\F9\AB\90\9B]WL\F5\1Fw\C4\BB\8B\DD\9Bg\11E\B2d\E8\AC\A8\03\0F\16\0D]-S\07#\FBb\0D\E6\16\D3#\E8\B3\00", align 16
@q = internal constant [87 x i8] c"\06f\9ApS\D6rt\FD\EAE\C3\C0\17\AE\DEy\17\AEy\DE\FC\0E\F7\A4:\8CC\8F\C7\8A\A2,Q\C4\D0r\89s\\a\BE\FDT?\92e\DEMeqp\F6\F2\E5\98\B9\0F\D1\0B\E6\95\09Jz\DF\F3\10\16\D0`\FC\A5\104\977o\0A\D5]\8F\D4\C3\A0[\00", align 16
@.str.13 = private unnamed_addr constant [148 x i8] c"RSA_set0_crt_params(key, BN_bin2bn(dmp1, sizeof(dmp1) - 1, NULL), BN_bin2bn(dmq1, sizeof(dmq1) - 1, NULL), BN_bin2bn(iqmp, sizeof(iqmp) - 1, NULL))\00", align 1
@dmp1 = internal constant [87 x i8] c"\05|\9E\1C\BD\90%\E7@\86\F5\A8;z?\99V\95`:{\95K\B8\A0\D7\A5\F1\CC\DC_\B5\8C\F4b\95T\ED.\12b\C2\E8\F6\DE\CE\ED\8Ewm\C0@%t\B3Z-\AA\E1\AC\11\CB\E2/\0AQ#\1EG\B2\05\88\02\B2\0FK\F0g0\F0\0Fn\EF_\F7\E7\00", align 16
@dmq1 = internal constant [87 x i8] c"\01\A5k\BC\CD\E3\0EF\C6r\F5\04V(\01\22Xt]\BC\1C<)AIl\81\\r\E2\F7\E5\A3\8EX\16\E0\0E7\AC\1F\BBu\FD\AF\E7\DF\E9\1Fp\A2\8FR\03\C0F\D9\F9\96c\00'~_8`\D6ka\E2\AF\BE\EAX\D3\9D\BCu\03\8DBe\D6k\85\97\00", align 16
@iqmp = internal constant [87 x i8] c"\03\A1\8B\80\E4\D8\87%\17]\CC\8D\A9\8A\22+l\154o\80\CC\1CD\04h\BC\03\CD\95\BBi7aH\B4#\13\08\16Tj\A1|\F5\D4:\E1O\A4\0C\F5\AF\80\85'\06\0Dp\C0\C5\19(\FE\EE\8E\86!\98\8A7\B7\E50%p\93Q-I\85V\B3\0C+\96\00", align 16
@.str.14 = private unnamed_addr constant [5 x i8] c"pris\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"exps\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"coeffs\00", align 1
@ex_prime = internal constant [87 x i8] c"\03\89\22\A0\B7:\91\CB^\0C\FDs\DE\A78\A9GC\D6\02\BF*\B9<H\F3\06\D6X5PV\16\\4\9Ba\87\C8\AA\0A]\8A\0A\CD\9CA\D9\96$\E0\A9\9B&\B7\A8\08\C9\EA\DC\A7\15\FBb\A0-\90\E6\A7Un\C6l\FF\D6\10m\FA.\04P\EC\\f\E4\05\00", align 16
@ex_exponent = internal constant [87 x i8] c"\02\0A\CD\C3\82\D2\03\B01\AC\D3 \804\9AW\BC`\04W%\D0)\9A\16\90\B9\1CIj\D1\F2G\8C\0E\9E\C9 \C2\D8\E4\8F\CE\D2\1A\9C\EC\B4\1F3A\C8\F5b\D1\A5\EF\1D\A1\D8\BDq\C6\F7\DA\897.\E2\ECG\C5\B8\E3\B4\E3\\\82\AA\DD\B7X.\AF\07y\00", align 16
@ex_coefficient = internal constant [87 x i8] c"\00\9C\09\88\9B\C8W\08ii\AB-\9E)\1C<mY3\12\0D+\09.\AF\01,'\01\FC\BD&\13\F9-\09\22NI\11\03\82\88\87\F4C\1D\AC\CA\EC\86\F7#\F1d\F3\F5\81\F076\CFg\FF\1A\FFz\C7\F9\F9g-\A0\9Da\F8\F6G\\/\E7f\E8<:\E8\00", align 16
@.str.17 = private unnamed_addr constant [8 x i8] c"pris[0]\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"exps[0]\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"coeffs[0]\00", align 1
@.str.20 = private unnamed_addr constant [71 x i8] c"RSA_set0_multi_prime_params(key, pris, exps, coeffs, NUM_EXTRA_PRIMES)\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"primes = sk_BIGNUM_new_null()\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"exps = sk_BIGNUM_new_null()\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"coeffs = sk_BIGNUM_new_null()\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"num = BN_bin2bn(p, sizeof(p) - 1, NULL)\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"sk_BIGNUM_push(primes, num)\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"num = BN_bin2bn(q, sizeof(q) - 1, NULL)\00", align 1
@.str.28 = private unnamed_addr constant [54 x i8] c"num = BN_bin2bn(ex_prime, sizeof(ex_prime) - 1, NULL)\00", align 1
@.str.29 = private unnamed_addr constant [46 x i8] c"num = BN_bin2bn(dmp1, sizeof(dmp1) - 1, NULL)\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"sk_BIGNUM_push(exps, num)\00", align 1
@.str.31 = private unnamed_addr constant [46 x i8] c"num = BN_bin2bn(dmq1, sizeof(dmq1) - 1, NULL)\00", align 1
@.str.32 = private unnamed_addr constant [60 x i8] c"num = BN_bin2bn(ex_exponent, sizeof(ex_exponent) - 1, NULL)\00", align 1
@.str.33 = private unnamed_addr constant [46 x i8] c"num = BN_bin2bn(iqmp, sizeof(iqmp) - 1, NULL)\00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c"sk_BIGNUM_push(coeffs, num)\00", align 1
@.str.35 = private unnamed_addr constant [66 x i8] c"num = BN_bin2bn(ex_coefficient, sizeof(ex_coefficient) - 1, NULL)\00", align 1
@.str.36 = private unnamed_addr constant [52 x i8] c"ossl_rsa_set0_all_params(key, primes, exps, coeffs)\00", align 1
@.str.37 = private unnamed_addr constant [123 x i8] c"RSA_set0_key(key, BN_bin2bn(n, sizeof(n) - 1, NULL), BN_bin2bn(e, sizeof(e) - 1, NULL), BN_bin2bn(d, sizeof(d) - 1, NULL))\00", align 1
@n = internal constant [257 x i8] c"\92`\D0u\0A\E1\17\EE\E5\\?=\EA\BAt\91u!\A2b\EEv\00|\DF\8AVuZ\D7:\15\98\A1@\84\10\A0\144\C3\F5\BCT\A8\8BW\FA\19\FCC(\DA\EA\07P\A4\C4N\88\CF\F3\B28&!\B8\0Fg\04dC>C6\E6\D0\03\E8\CDe\BF\F2\11\DA\14K\88)\1C\22Y\A0\0Ar\B7\11\C1\16\EFv\86\E8\FE\E3NM\93<\86\81\87\BD\C2o{\E0qI<\86\F7\A5\94\1C5\10\80j\D6{\0F\94\D8\8F\\\F5\C0*\09(!\D8bn\892\B6\\[\D8\C9 I\C2\10\93+z\FAz\C5\9C\0E\88j\E5\C1\ED\B0\0D\8C\E2\C5v3\DB&\BDf9\BF\F7<\EE\82\BE\92u\C4\02\B4\CF*C\88\DA\8C\F8\C6N\EF\E1\C5\A0\F5\AB\80W\C3\9F\A5\C0X\9C>%?\09`3#\00\F9K\EAD\87{X\8E\1E\DB\DE\97\CF#`rz\09\B7u&-~\E5R\B31\9B\92f\F0Z%\00", align 16
@e = internal constant [4 x i8] c"\01\00\01\00", align 1
@d = internal constant [257 x i8] c"j}\F2\CAc\EA\D4\DD\A1\91\D6\14\B6\B3\85\E0\D9\05j=m\\\FE\07\DB\1D\AA\BE\E0\22\DB\08!-\97a=3(\E0&|\9D\D2=xz\BD\E2\AF\CB0j\EB}\FC\E6\92F\CCs\F5\C8\7F\DF\06\03\01y\A2\11Kv}\B1\F0\83\FF\84\1C\02]}\C0\0C\D8$5\B9\A9\0FiSi\E9M\F2=,\E4X\BC;2\83\AD\8B\BA+\8F\A1\BAb\E2\DC\E9\AC\CF\F3y\9A\AE|\84\00\16\F3\BA\8E\00H\C0\B6\CCC9\AFqa\00:[\EB\86J\01d\B2\C1\C9#{d\BC\87Ui\945\1B'Pl3\D4\BC\DF\CE\0F\9CI\1A}k\06(\C7\C8R\BEO\0A\9C12\B2\ED:,\88\81\E9\AA\B0~ \E1}\EB\07F\91\BEgwv\A7\8B\\P.\05\D9\BD\DEr\12k78i^-\D1\A0\A9\8A\14$|e\D8\A7\EEyC*\09,\B0r\1A\12\DFy\8ED\F7\CF\CE\0CI\81G\A9\B1\00", align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 (i32)* noundef nonnull @test_rsa_mp, i32 noundef 2, i32 noundef 1) #3
  ret i32 1
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_rsa_mp(i32 noundef %i) #0 {
entry:
  %ptext = alloca [256 x i8], align 16
  %ctext = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %ptext, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #4
  %1 = getelementptr inbounds [256 x i8], [256 x i8]* %ctext, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %1) #4
  %call = tail call %struct.rsa_st* @RSA_new() #3
  %2 = bitcast %struct.rsa_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 267, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* noundef %2) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @key2048_key(%struct.rsa_st* noundef %call) #5
  %call3 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 270, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 noundef %call2, i32 noundef 256) #3
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds [2 x i32 (%struct.rsa_st*)*], [2 x i32 (%struct.rsa_st*)*]* @test_rsa_mp.param_set, i64 0, i64 %idxprom
  %3 = load i32 (%struct.rsa_st*)*, i32 (%struct.rsa_st*)** %arrayidx, align 8, !tbaa !3
  %call5 = tail call i32 %3(%struct.rsa_st* noundef %call) #3
  %call6 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 271, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 noundef %call5, i32 noundef 256) #3
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %err, label %if.end9

if.end9:                                          ; preds = %lor.lhs.false
  %call10 = tail call i32 @RSA_check_key_ex(%struct.rsa_st* noundef %call, %struct.bn_gencb_st* noundef null) #3
  %cmp = icmp ne i32 %call10, 0
  %conv = zext i1 %cmp to i32
  %call11 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 274, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 noundef %conv) #3
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %if.end14

if.end14:                                         ; preds = %if.end9
  %call15 = call i32 @RSA_public_encrypt(i32 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @test_rsa_mp.ptext_ex, i64 0, i64 0), i8* noundef nonnull %1, %struct.rsa_st* noundef %call, i32 noundef 1) #3
  %call16 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 279, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 noundef %call15, i32 noundef %call5) #3
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %if.end19

if.end19:                                         ; preds = %if.end14
  %call22 = call i32 @RSA_private_decrypt(i32 noundef %call15, i8* noundef nonnull %1, i8* noundef nonnull %0, %struct.rsa_st* noundef %call, i32 noundef 1) #3
  %conv24 = sext i32 %call22 to i64
  %call26 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 283, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef %conv24, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @test_rsa_mp.ptext_ex, i64 0, i64 0), i64 noundef 8) #3
  %tobool27.not = icmp ne i32 %call26, 0
  %spec.select = zext i1 %tobool27.not to i32
  br label %err

err:                                              ; preds = %if.end19, %if.end14, %if.end9, %if.end, %lor.lhs.false, %entry
  %ret.0 = phi i32 [ 0, %if.end14 ], [ 0, %if.end9 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %if.end19 ]
  call void @RSA_free(%struct.rsa_st* noundef %call) #3
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #4
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @key2048p3_v1(%struct.rsa_st* noundef %key) #0 {
entry:
  %call = tail call i32 @RSA_size(%struct.rsa_st* noundef %key) #3
  %call1 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @p, i64 0, i64 0), i32 noundef 86, %struct.bignum_st* noundef null) #3
  %call2 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @q, i64 0, i64 0), i32 noundef 86, %struct.bignum_st* noundef null) #3
  %call3 = tail call i32 @RSA_set0_factors(%struct.rsa_st* noundef %key, %struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %call2) #3
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 158, i8* noundef getelementptr inbounds ([92 x i8], [92 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 noundef %call3, i32 noundef 1) #3
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %ret, label %if.end

if.end:                                           ; preds = %entry
  %call5 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @dmp1, i64 0, i64 0), i32 noundef 86, %struct.bignum_st* noundef null) #3
  %call6 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @dmq1, i64 0, i64 0), i32 noundef 86, %struct.bignum_st* noundef null) #3
  %call7 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @iqmp, i64 0, i64 0), i32 noundef 86, %struct.bignum_st* noundef null) #3
  %call8 = tail call i32 @RSA_set0_crt_params(%struct.rsa_st* noundef %key, %struct.bignum_st* noundef %call5, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call7) #3
  %call9 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 165, i8* noundef getelementptr inbounds ([148 x i8], [148 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 noundef %call8, i32 noundef 1) #3
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end
  %call13 = tail call i8* @CRYPTO_zalloc(i64 noundef 8, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 168) #3
  %0 = bitcast i8* %call13 to %struct.bignum_st**
  %call14 = tail call i8* @CRYPTO_zalloc(i64 noundef 8, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 169) #3
  %1 = bitcast i8* %call14 to %struct.bignum_st**
  %call15 = tail call i8* @CRYPTO_zalloc(i64 noundef 8, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 170) #3
  %2 = bitcast i8* %call15 to %struct.bignum_st**
  %call16 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 171, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* noundef %call13) #3
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end12
  %call18 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 171, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* noundef %call14) #3
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false
  %call21 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 171, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* noundef %call15) #3
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err, label %if.end24

if.end24:                                         ; preds = %lor.lhs.false20
  %call25 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @ex_prime, i64 0, i64 0), i32 noundef 86, %struct.bignum_st* noundef null) #3
  store %struct.bignum_st* %call25, %struct.bignum_st** %0, align 8, !tbaa !3
  %call26 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @ex_exponent, i64 0, i64 0), i32 noundef 86, %struct.bignum_st* noundef null) #3
  store %struct.bignum_st* %call26, %struct.bignum_st** %1, align 8, !tbaa !3
  %call28 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @ex_coefficient, i64 0, i64 0), i32 noundef 86, %struct.bignum_st* noundef null) #3
  store %struct.bignum_st* %call28, %struct.bignum_st** %2, align 8, !tbaa !3
  %3 = bitcast i8* %call13 to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !3
  %call31 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 177, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8* noundef %4) #3
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then50, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %if.end24
  %5 = bitcast i8* %call14 to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !3
  %call35 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 177, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i8* noundef %6) #3
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then50, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %lor.lhs.false33
  %7 = bitcast i8* %call15 to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !3
  %call39 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 177, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* noundef %8) #3
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then50, label %if.end42

if.end42:                                         ; preds = %lor.lhs.false37
  %call43 = tail call i32 @RSA_set0_multi_prime_params(%struct.rsa_st* noundef %key, %struct.bignum_st** noundef nonnull %0, %struct.bignum_st** noundef nonnull %1, %struct.bignum_st** noundef nonnull %2, i32 noundef 1) #3
  %cmp = icmp ne i32 %call43, 0
  %conv = zext i1 %cmp to i32
  %call44 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 181, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.20, i64 0, i64 0), i32 noundef %conv) #3
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then50, label %ret

ret:                                              ; preds = %entry, %if.end57, %if.then60, %if.end42
  %9 = phi i8* [ %call13, %if.end42 ], [ %13, %if.then60 ], [ %13, %if.end57 ], [ null, %entry ]
  %10 = phi i8* [ %call14, %if.end42 ], [ %call14, %if.then60 ], [ %call14, %if.end57 ], [ null, %entry ]
  %11 = phi i8* [ %call15, %if.end42 ], [ %call15, %if.then60 ], [ null, %if.end57 ], [ null, %entry ]
  %rv.0 = phi i32 [ %call, %if.end42 ], [ 0, %if.then60 ], [ 0, %if.end57 ], [ 0, %entry ]
  tail call void @CRYPTO_free(i8* noundef %9, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 185) #3
  tail call void @CRYPTO_free(i8* noundef %10, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 186) #3
  tail call void @CRYPTO_free(i8* noundef %11, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 187) #3
  br label %cleanup

err:                                              ; preds = %if.end12, %lor.lhs.false, %lor.lhs.false20
  %cmp48.not = icmp eq i8* %call13, null
  br i1 %cmp48.not, label %if.end52, label %if.then50

if.then50:                                        ; preds = %if.end24, %lor.lhs.false33, %lor.lhs.false37, %if.end42, %err
  %12 = load %struct.bignum_st*, %struct.bignum_st** %0, align 8, !tbaa !3
  tail call void @BN_free(%struct.bignum_st* noundef %12) #3
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %err
  %13 = phi i8* [ %call13, %if.then50 ], [ null, %err ]
  %cmp53.not = icmp eq i8* %call14, null
  br i1 %cmp53.not, label %if.end57, label %if.then55

if.then55:                                        ; preds = %if.end52
  %14 = load %struct.bignum_st*, %struct.bignum_st** %1, align 8, !tbaa !3
  tail call void @BN_free(%struct.bignum_st* noundef %14) #3
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end52
  %cmp58.not = icmp eq i8* %call15, null
  br i1 %cmp58.not, label %ret, label %if.then60

if.then60:                                        ; preds = %if.end57
  %15 = load %struct.bignum_st*, %struct.bignum_st** %2, align 8, !tbaa !3
  tail call void @BN_free(%struct.bignum_st* noundef %15) #3
  br label %ret

cleanup:                                          ; preds = %if.end, %ret
  %retval.0 = phi i32 [ %rv.0, %ret ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @key2048p3_v2(%struct.rsa_st* noundef %key) #0 {
entry:
  %call = tail call i32 @RSA_size(%struct.rsa_st* noundef %key) #3
  %call1 = tail call fastcc %struct.stack_st_BIGNUM* @sk_BIGNUM_new_null() #5
  %0 = bitcast %struct.stack_st_BIGNUM* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 206, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i64 0, i64 0), i8* noundef %0) #3
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call fastcc %struct.stack_st_BIGNUM* @sk_BIGNUM_new_null() #5
  %1 = bitcast %struct.stack_st_BIGNUM* %call3 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 207, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0), i8* noundef %1) #3
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %call7 = tail call fastcc %struct.stack_st_BIGNUM* @sk_BIGNUM_new_null() #5
  %2 = bitcast %struct.stack_st_BIGNUM* %call7 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 208, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i64 0, i64 0), i8* noundef %2) #3
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false6
  %call10 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @p, i64 0, i64 0), i32 noundef 86, %struct.bignum_st* noundef null) #3
  %3 = bitcast %struct.bignum_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 211, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0), i8* noundef %3) #3
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %if.end
  %call14 = tail call fastcc i32 @sk_BIGNUM_push(%struct.stack_st_BIGNUM* noundef %call1, %struct.bignum_st* noundef %call10) #5
  %call15 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 212, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i32 noundef %call14, i32 noundef 0) #3
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %call18 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @q, i64 0, i64 0), i32 noundef 86, %struct.bignum_st* noundef null) #3
  %4 = bitcast %struct.bignum_st* %call18 to i8*
  %call19 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 213, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i64 0, i64 0), i8* noundef %4) #3
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  %call22 = tail call fastcc i32 @sk_BIGNUM_push(%struct.stack_st_BIGNUM* noundef %call1, %struct.bignum_st* noundef %call18) #5
  %call23 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 214, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i32 noundef %call22, i32 noundef 0) #3
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false21
  %call26 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @ex_prime, i64 0, i64 0), i32 noundef 86, %struct.bignum_st* noundef null) #3
  %5 = bitcast %struct.bignum_st* %call26 to i8*
  %call27 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 215, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.28, i64 0, i64 0), i8* noundef %5) #3
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false25
  %call30 = tail call fastcc i32 @sk_BIGNUM_push(%struct.stack_st_BIGNUM* noundef %call1, %struct.bignum_st* noundef %call26) #5
  %call31 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 216, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i32 noundef %call30, i32 noundef 0) #3
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %if.end34

if.end34:                                         ; preds = %lor.lhs.false29
  %call35 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @dmp1, i64 0, i64 0), i32 noundef 86, %struct.bignum_st* noundef null) #3
  %6 = bitcast %struct.bignum_st* %call35 to i8*
  %call36 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 219, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.29, i64 0, i64 0), i8* noundef %6) #3
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %err, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %if.end34
  %call39 = tail call fastcc i32 @sk_BIGNUM_push(%struct.stack_st_BIGNUM* noundef %call3, %struct.bignum_st* noundef %call35) #5
  %call40 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 220, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i32 noundef %call39, i32 noundef 0) #3
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %err, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false38
  %call43 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @dmq1, i64 0, i64 0), i32 noundef 86, %struct.bignum_st* noundef null) #3
  %7 = bitcast %struct.bignum_st* %call43 to i8*
  %call44 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 221, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.31, i64 0, i64 0), i8* noundef %7) #3
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %err, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %lor.lhs.false42
  %call47 = tail call fastcc i32 @sk_BIGNUM_push(%struct.stack_st_BIGNUM* noundef %call3, %struct.bignum_st* noundef %call43) #5
  %call48 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 222, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i32 noundef %call47, i32 noundef 0) #3
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %err, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %lor.lhs.false46
  %call51 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @ex_exponent, i64 0, i64 0), i32 noundef 86, %struct.bignum_st* noundef null) #3
  %8 = bitcast %struct.bignum_st* %call51 to i8*
  %call52 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 223, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.32, i64 0, i64 0), i8* noundef %8) #3
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %err, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %lor.lhs.false50
  %call55 = tail call fastcc i32 @sk_BIGNUM_push(%struct.stack_st_BIGNUM* noundef %call3, %struct.bignum_st* noundef %call51) #5
  %call56 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 224, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i32 noundef %call55, i32 noundef 0) #3
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %err, label %if.end59

if.end59:                                         ; preds = %lor.lhs.false54
  %call60 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @iqmp, i64 0, i64 0), i32 noundef 86, %struct.bignum_st* noundef null) #3
  %9 = bitcast %struct.bignum_st* %call60 to i8*
  %call61 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 227, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.33, i64 0, i64 0), i8* noundef %9) #3
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %err, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %if.end59
  %call64 = tail call fastcc i32 @sk_BIGNUM_push(%struct.stack_st_BIGNUM* noundef %call7, %struct.bignum_st* noundef %call60) #5
  %call65 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 228, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i32 noundef %call64, i32 noundef 0) #3
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %err, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %lor.lhs.false63
  %call68 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @ex_coefficient, i64 0, i64 0), i32 noundef 86, %struct.bignum_st* noundef null) #3
  %10 = bitcast %struct.bignum_st* %call68 to i8*
  %call69 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 229, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.35, i64 0, i64 0), i8* noundef %10) #3
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %err, label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %lor.lhs.false67
  %call72 = tail call fastcc i32 @sk_BIGNUM_push(%struct.stack_st_BIGNUM* noundef %call7, %struct.bignum_st* noundef %call68) #5
  %call73 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 230, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i32 noundef %call72, i32 noundef 0) #3
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %err, label %if.end76

if.end76:                                         ; preds = %lor.lhs.false71
  %call77 = tail call i32 @ossl_rsa_set0_all_params(%struct.rsa_st* noundef %key, %struct.stack_st_BIGNUM* noundef %call1, %struct.stack_st_BIGNUM* noundef %call3, %struct.stack_st_BIGNUM* noundef %call7) #3
  %cmp = icmp ne i32 %call77, 0
  %conv = zext i1 %cmp to i32
  %call78 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 233, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv) #3
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %err, label %ret

ret:                                              ; preds = %if.end76, %err
  %primes.0 = phi %struct.stack_st_BIGNUM* [ %call1, %if.end76 ], [ null, %err ]
  %exps.0 = phi %struct.stack_st_BIGNUM* [ %call3, %if.end76 ], [ null, %err ]
  %coeffs.0 = phi %struct.stack_st_BIGNUM* [ %call7, %if.end76 ], [ null, %err ]
  %rv.0 = phi i32 [ %call, %if.end76 ], [ 0, %err ]
  tail call fastcc void @sk_BIGNUM_free(%struct.stack_st_BIGNUM* noundef %primes.0) #5
  tail call fastcc void @sk_BIGNUM_free(%struct.stack_st_BIGNUM* noundef %exps.0) #5
  tail call fastcc void @sk_BIGNUM_free(%struct.stack_st_BIGNUM* noundef %coeffs.0) #5
  ret i32 %rv.0

err:                                              ; preds = %if.end76, %if.end59, %lor.lhs.false63, %lor.lhs.false67, %lor.lhs.false71, %if.end34, %lor.lhs.false38, %lor.lhs.false42, %lor.lhs.false46, %lor.lhs.false50, %lor.lhs.false54, %if.end, %lor.lhs.false13, %lor.lhs.false17, %lor.lhs.false21, %lor.lhs.false25, %lor.lhs.false29, %entry, %lor.lhs.false, %lor.lhs.false6
  %exps.1 = phi %struct.stack_st_BIGNUM* [ %call3, %if.end76 ], [ %call3, %lor.lhs.false71 ], [ %call3, %lor.lhs.false67 ], [ %call3, %lor.lhs.false63 ], [ %call3, %if.end59 ], [ %call3, %lor.lhs.false54 ], [ %call3, %lor.lhs.false50 ], [ %call3, %lor.lhs.false46 ], [ %call3, %lor.lhs.false42 ], [ %call3, %lor.lhs.false38 ], [ %call3, %if.end34 ], [ %call3, %lor.lhs.false29 ], [ %call3, %lor.lhs.false25 ], [ %call3, %lor.lhs.false21 ], [ %call3, %lor.lhs.false17 ], [ %call3, %lor.lhs.false13 ], [ %call3, %if.end ], [ %call3, %lor.lhs.false6 ], [ %call3, %lor.lhs.false ], [ null, %entry ]
  %coeffs.1 = phi %struct.stack_st_BIGNUM* [ %call7, %if.end76 ], [ %call7, %lor.lhs.false71 ], [ %call7, %lor.lhs.false67 ], [ %call7, %lor.lhs.false63 ], [ %call7, %if.end59 ], [ %call7, %lor.lhs.false54 ], [ %call7, %lor.lhs.false50 ], [ %call7, %lor.lhs.false46 ], [ %call7, %lor.lhs.false42 ], [ %call7, %lor.lhs.false38 ], [ %call7, %if.end34 ], [ %call7, %lor.lhs.false29 ], [ %call7, %lor.lhs.false25 ], [ %call7, %lor.lhs.false21 ], [ %call7, %lor.lhs.false17 ], [ %call7, %lor.lhs.false13 ], [ %call7, %if.end ], [ %call7, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ]
  tail call fastcc void @sk_BIGNUM_pop_free(%struct.stack_st_BIGNUM* noundef %call1) #5
  tail call fastcc void @sk_BIGNUM_pop_free(%struct.stack_st_BIGNUM* noundef %exps.1) #5
  tail call fastcc void @sk_BIGNUM_pop_free(%struct.stack_st_BIGNUM* noundef %coeffs.1) #5
  br label %ret
}

declare dso_local %struct.rsa_st* @RSA_new() local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @key2048_key(%struct.rsa_st* noundef %key) unnamed_addr #0 {
entry:
  %call = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([257 x i8], [257 x i8]* @n, i64 0, i64 0), i32 noundef 256, %struct.bignum_st* noundef null) #3
  %call1 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @e, i64 0, i64 0), i32 noundef 3, %struct.bignum_st* noundef null) #3
  %call2 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([257 x i8], [257 x i8]* @d, i64 0, i64 0), i32 noundef 256, %struct.bignum_st* noundef null) #3
  %call3 = tail call i32 @RSA_set0_key(%struct.rsa_st* noundef %key, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %call2) #3
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 144, i8* noundef getelementptr inbounds ([123 x i8], [123 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 noundef %call3, i32 noundef 1) #3
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @RSA_size(%struct.rsa_st* noundef %key) #3
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call5, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @RSA_check_key_ex(%struct.rsa_st* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #1

declare dso_local i32 @RSA_public_encrypt(i32 noundef, i8* noundef, i8* noundef, %struct.rsa_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @RSA_private_decrypt(i32 noundef, i8* noundef, i8* noundef, %struct.rsa_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @RSA_free(%struct.rsa_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @RSA_size(%struct.rsa_st* noundef) local_unnamed_addr #1

declare dso_local i32 @RSA_set0_factors(%struct.rsa_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @RSA_set0_crt_params(%struct.rsa_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @RSA_set0_multi_prime_params(%struct.rsa_st* noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @BN_free(%struct.bignum_st* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_BIGNUM* @sk_BIGNUM_new_null() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #3
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_BIGNUM*
  ret %struct.stack_st_BIGNUM* %0
}

declare dso_local i32 @test_int_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_BIGNUM_push(%struct.stack_st_BIGNUM* noundef %sk, %struct.bignum_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_BIGNUM* %sk to %struct.stack_st*
  %1 = bitcast %struct.bignum_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #3
  ret i32 %call
}

declare dso_local i32 @ossl_rsa_set0_all_params(%struct.rsa_st* noundef, %struct.stack_st_BIGNUM* noundef, %struct.stack_st_BIGNUM* noundef, %struct.stack_st_BIGNUM* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_BIGNUM_free(%struct.stack_st_BIGNUM* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_BIGNUM* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %0) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_BIGNUM_pop_free(%struct.stack_st_BIGNUM* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_BIGNUM* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.bignum_st*)* @BN_free to void (i8*)*)) #3
  ret void
}

declare dso_local %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1

declare dso_local i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #1

declare dso_local void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #1

declare dso_local i32 @RSA_set0_key(%struct.rsa_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
