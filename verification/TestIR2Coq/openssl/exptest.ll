; ModuleID = 'test/exptest.c'
source_filename = "test/exptest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_ctx = type opaque
%struct.bignum_st = type opaque
%struct.bn_mont_ctx_st = type opaque

@.str = private unnamed_addr constant [18 x i8] c"test_mod_exp_zero\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"test_mod_exp\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"test_mod_exp_x2\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"test/exptest.c\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"m = BN_new()\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"a = BN_new()\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"p = BN_new()\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"r = BN_new()\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"BN_rand(a, 1024, BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ANY)\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"BN_mod_exp(r, a, p, m, ctx)\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"a_is_zero_mod_one(\22BN_mod_exp\22, r, a)\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"BN_mod_exp\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"BN_mod_exp_recp(r, a, p, m, ctx)\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"a_is_zero_mod_one(\22BN_mod_exp_recp\22, r, a)\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"BN_mod_exp_recp\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"BN_mod_exp_simple(r, a, p, m, ctx)\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"a_is_zero_mod_one(\22BN_mod_exp_simple\22, r, a)\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"BN_mod_exp_simple\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"BN_mod_exp_mont(r, a, p, m, ctx, NULL)\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"a_is_zero_mod_one(\22BN_mod_exp_mont\22, r, a)\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"BN_mod_exp_mont\00", align 1
@.str.21 = private unnamed_addr constant [49 x i8] c"BN_mod_exp_mont_consttime(r, a, p, m, ctx, NULL)\00", align 1
@.str.22 = private unnamed_addr constant [53 x i8] c"a_is_zero_mod_one(\22BN_mod_exp_mont_consttime\22, r, a)\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"BN_mod_exp_mont_consttime\00", align 1
@.str.24 = private unnamed_addr constant [51 x i8] c"BN_mod_exp_mont_word(r, one_word, p, m, ctx, NULL)\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.26 = private unnamed_addr constant [60 x i8] c"BN_mod_exp_mont_word failed: 1 ** 0 mod 1 = r (should be 0)\00", align 1
@.str.27 = private unnamed_addr constant [42 x i8] c"%s failed: a ** 0 mod 1 = r (should be 0)\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"ctx = BN_CTX_new()\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"r_mont = BN_new()\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"r_mont_const = BN_new()\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"r_recp = BN_new()\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"r_simple = BN_new()\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"b = BN_new()\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"RAND_bytes(&c, 1)\00", align 1
@.str.36 = private unnamed_addr constant [62 x i8] c"BN_rand(a, NUM_BITS + c, BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ANY)\00", align 1
@.str.37 = private unnamed_addr constant [62 x i8] c"BN_rand(b, NUM_BITS + c, BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ANY)\00", align 1
@.str.38 = private unnamed_addr constant [62 x i8] c"BN_rand(m, NUM_BITS + c, BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ODD)\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"BN_mod(a, a, m, ctx)\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"BN_mod(b, b, m, ctx)\00", align 1
@.str.41 = private unnamed_addr constant [44 x i8] c"BN_mod_exp_mont(r_mont, a, b, m, ctx, NULL)\00", align 1
@.str.42 = private unnamed_addr constant [38 x i8] c"BN_mod_exp_recp(r_recp, a, b, m, ctx)\00", align 1
@.str.43 = private unnamed_addr constant [42 x i8] c"BN_mod_exp_simple(r_simple, a, b, m, ctx)\00", align 1
@.str.44 = private unnamed_addr constant [60 x i8] c"BN_mod_exp_mont_consttime(r_mont_const, a, b, m, ctx, NULL)\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"r_simple\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"r_mont\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"r_recp\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"r_mont_const\00", align 1
@.str.49 = private unnamed_addr constant [31 x i8] c"simple and mont results differ\00", align 1
@.str.50 = private unnamed_addr constant [42 x i8] c"simple and mont const time results differ\00", align 1
@.str.51 = private unnamed_addr constant [31 x i8] c"simple and recp results differ\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.54 = private unnamed_addr constant [29 x i8] c"r_mont_const_x2_1 = BN_new()\00", align 1
@.str.55 = private unnamed_addr constant [29 x i8] c"r_mont_const_x2_2 = BN_new()\00", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c"r_simple1 = BN_new()\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"r_simple2 = BN_new()\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"a1 = BN_new()\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"b1 = BN_new()\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"m1 = BN_new()\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"a2 = BN_new()\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"b2 = BN_new()\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"m2 = BN_new()\00", align 1
@.str.64 = private unnamed_addr constant [24 x i8] c"BN_mod(a1, a1, m1, ctx)\00", align 1
@.str.65 = private unnamed_addr constant [24 x i8] c"BN_mod(b1, b1, m1, ctx)\00", align 1
@.str.66 = private unnamed_addr constant [24 x i8] c"BN_mod(a2, a2, m2, ctx)\00", align 1
@.str.67 = private unnamed_addr constant [24 x i8] c"BN_mod(b2, b2, m2, ctx)\00", align 1
@.str.68 = private unnamed_addr constant [46 x i8] c"BN_mod_exp_simple(r_simple1, a1, b1, m1, ctx)\00", align 1
@.str.69 = private unnamed_addr constant [46 x i8] c"BN_mod_exp_simple(r_simple2, a2, b2, m2, ctx)\00", align 1
@.str.70 = private unnamed_addr constant [108 x i8] c"BN_mod_exp_mont_consttime_x2(r_mont_const_x2_1, a1, b1, m1, NULL, r_mont_const_x2_2, a2, b2, m2, NULL, ctx)\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"r_simple1\00", align 1
@.str.72 = private unnamed_addr constant [18 x i8] c"r_mont_const_x2_1\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"r_simple2\00", align 1
@.str.74 = private unnamed_addr constant [18 x i8] c"r_mont_const_x2_2\00", align 1
@.str.75 = private unnamed_addr constant [50 x i8] c"simple and mont const time x2 (#1) results differ\00", align 1
@.str.76 = private unnamed_addr constant [50 x i8] c"simple and mont const time x2 (#2) results differ\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"a1\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"b1\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"m1\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"a2\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"b2\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"m2\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_mod_exp_zero) #3
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 (i32)* noundef nonnull @test_mod_exp, i32 noundef 200, i32 noundef 1) #3
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 (i32)* noundef nonnull @test_mod_exp_x2, i32 noundef 100, i32 noundef 1) #3
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_mod_exp_zero() #0 {
entry:
  %call = tail call %struct.bignum_ctx* @BN_CTX_new() #3
  %call1 = tail call %struct.bignum_st* @BN_new() #3
  %0 = bitcast %struct.bignum_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* noundef %0) #3
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call %struct.bignum_st* @BN_new() #3
  %1 = bitcast %struct.bignum_st* %call3 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* noundef %1) #3
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %call7 = tail call %struct.bignum_st* @BN_new() #3
  %2 = bitcast %struct.bignum_st* %call7 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* noundef %2) #3
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false6
  %call11 = tail call %struct.bignum_st* @BN_new() #3
  %3 = bitcast %struct.bignum_st* %call11 to i8*
  %call12 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* noundef %3) #3
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false10
  %call14 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call1, i64 noundef 1) #3
  %call15 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call3, i64 noundef 1) #3
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %call7) #3
  %call16 = tail call i32 @BN_rand(%struct.bignum_st* noundef %call3, i32 noundef 1024, i32 noundef 0, i32 noundef 0) #3
  %cmp = icmp ne i32 %call16, 0
  %conv = zext i1 %cmp to i32
  %call17 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i32 noundef %conv) #3
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %if.end20

if.end20:                                         ; preds = %if.end
  %call21 = tail call i32 @BN_mod_exp(%struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call3, %struct.bignum_st* noundef %call7, %struct.bignum_st* noundef %call1, %struct.bignum_ctx* noundef %call) #3
  %cmp22 = icmp ne i32 %call21, 0
  %conv23 = zext i1 %cmp22 to i32
  %call24 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 noundef %conv23) #3
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %if.end27

if.end27:                                         ; preds = %if.end20
  %call28 = tail call fastcc i32 @a_is_zero_mod_one(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), %struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call3) #4
  %cmp29 = icmp ne i32 %call28, 0
  %conv30 = zext i1 %cmp29 to i32
  %call31 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv30) #3
  %call35 = tail call i32 @BN_mod_exp_recp(%struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call3, %struct.bignum_st* noundef %call7, %struct.bignum_st* noundef %call1, %struct.bignum_ctx* noundef %call) #3
  %cmp36 = icmp ne i32 %call35, 0
  %conv37 = zext i1 %cmp36 to i32
  %call38 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv37) #3
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %err, label %if.end41

if.end41:                                         ; preds = %if.end27
  %call42 = tail call fastcc i32 @a_is_zero_mod_one(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), %struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call3) #4
  %cmp43 = icmp ne i32 %call42, 0
  %conv44 = zext i1 %cmp43 to i32
  %call45 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i32 noundef %conv44) #3
  %call49 = tail call i32 @BN_mod_exp_simple(%struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call3, %struct.bignum_st* noundef %call7, %struct.bignum_st* noundef %call1, %struct.bignum_ctx* noundef %call) #3
  %cmp50 = icmp ne i32 %call49, 0
  %conv51 = zext i1 %cmp50 to i32
  %call52 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i32 noundef %conv51) #3
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %err, label %if.end55

if.end55:                                         ; preds = %if.end41
  %call56 = tail call fastcc i32 @a_is_zero_mod_one(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), %struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call3) #4
  %cmp57 = icmp ne i32 %call56, 0
  %conv58 = zext i1 %cmp57 to i32
  %call59 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv58) #3
  %call63 = tail call i32 @BN_mod_exp_mont(%struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call3, %struct.bignum_st* noundef %call7, %struct.bignum_st* noundef %call1, %struct.bignum_ctx* noundef %call, %struct.bn_mont_ctx_st* noundef null) #3
  %cmp64 = icmp ne i32 %call63, 0
  %conv65 = zext i1 %cmp64 to i32
  %call66 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i64 0, i64 0), i32 noundef %conv65) #3
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %err, label %if.end69

if.end69:                                         ; preds = %if.end55
  %call70 = tail call fastcc i32 @a_is_zero_mod_one(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), %struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call3) #4
  %cmp71 = icmp ne i32 %call70, 0
  %conv72 = zext i1 %cmp71 to i32
  %call73 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.19, i64 0, i64 0), i32 noundef %conv72) #3
  %call77 = tail call i32 @BN_mod_exp_mont_consttime(%struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call3, %struct.bignum_st* noundef %call7, %struct.bignum_st* noundef %call1, %struct.bignum_ctx* noundef %call, %struct.bn_mont_ctx_st* noundef null) #3
  %cmp78 = icmp ne i32 %call77, 0
  %conv79 = zext i1 %cmp78 to i32
  %call80 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.21, i64 0, i64 0), i32 noundef %conv79) #3
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %err, label %if.end83

if.end83:                                         ; preds = %if.end69
  %tobool74.not = icmp ne i32 %call73, 0
  %tobool32.not = icmp ne i32 %call31, 0
  %tobool46.not = icmp ne i32 %call45, 0
  %tobool60.not = icmp ne i32 %call59, 0
  %call84 = tail call fastcc i32 @a_is_zero_mod_one(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i64 0, i64 0), %struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call3) #4
  %cmp85 = icmp ne i32 %call84, 0
  %conv86 = zext i1 %cmp85 to i32
  %call87 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 94, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.22, i64 0, i64 0), i32 noundef %conv86) #3
  %tobool88.not = icmp ne i32 %call87, 0
  %4 = select i1 %tobool88.not, i1 %tobool74.not, i1 false
  %5 = select i1 %4, i1 %tobool60.not, i1 false
  %6 = select i1 %5, i1 %tobool46.not, i1 false
  %narrow161 = select i1 %6, i1 %tobool32.not, i1 false
  %call91 = tail call i32 @BN_mod_exp_mont_word(%struct.bignum_st* noundef %call11, i64 noundef 1, %struct.bignum_st* noundef %call7, %struct.bignum_st* noundef %call1, %struct.bignum_ctx* noundef %call, %struct.bn_mont_ctx_st* noundef null) #3
  %cmp92 = icmp ne i32 %call91, 0
  %conv93 = zext i1 %cmp92 to i32
  %call94 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 101, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv93) #3
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %err, label %if.end97

if.end97:                                         ; preds = %if.end83
  %call98 = tail call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), %struct.bignum_st* noundef %call11) #3
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.then100, label %if.end101

if.then100:                                       ; preds = %if.end97
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 106, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.26, i64 0, i64 0)) #3
  tail call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), %struct.bignum_st* noundef %call11) #3
  br label %err

if.end101:                                        ; preds = %if.end97
  %lnot.ext = zext i1 %narrow161 to i32
  br label %err

err:                                              ; preds = %if.end83, %if.end69, %if.end55, %if.end41, %if.end27, %if.end20, %if.end, %entry, %lor.lhs.false, %lor.lhs.false6, %lor.lhs.false10, %if.end101, %if.then100
  %r.0 = phi %struct.bignum_st* [ %call11, %if.end101 ], [ %call11, %if.then100 ], [ %call11, %if.end83 ], [ %call11, %if.end69 ], [ %call11, %if.end55 ], [ %call11, %if.end41 ], [ %call11, %if.end27 ], [ %call11, %if.end20 ], [ %call11, %if.end ], [ %call11, %lor.lhs.false10 ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %p.0 = phi %struct.bignum_st* [ %call7, %if.end101 ], [ %call7, %if.then100 ], [ %call7, %if.end83 ], [ %call7, %if.end69 ], [ %call7, %if.end55 ], [ %call7, %if.end41 ], [ %call7, %if.end27 ], [ %call7, %if.end20 ], [ %call7, %if.end ], [ %call7, %lor.lhs.false10 ], [ %call7, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %a.0 = phi %struct.bignum_st* [ %call3, %if.end101 ], [ %call3, %if.then100 ], [ %call3, %if.end83 ], [ %call3, %if.end69 ], [ %call3, %if.end55 ], [ %call3, %if.end41 ], [ %call3, %if.end27 ], [ %call3, %if.end20 ], [ %call3, %if.end ], [ %call3, %lor.lhs.false10 ], [ %call3, %lor.lhs.false6 ], [ %call3, %lor.lhs.false ], [ null, %entry ]
  %ret.0 = phi i32 [ %lnot.ext, %if.end101 ], [ 1, %if.then100 ], [ 1, %if.end83 ], [ 1, %if.end69 ], [ 1, %if.end55 ], [ 1, %if.end41 ], [ 1, %if.end27 ], [ 1, %if.end20 ], [ 1, %if.end ], [ 1, %lor.lhs.false10 ], [ 1, %lor.lhs.false6 ], [ 1, %lor.lhs.false ], [ 1, %entry ]
  tail call void @BN_free(%struct.bignum_st* noundef %r.0) #3
  tail call void @BN_free(%struct.bignum_st* noundef %a.0) #3
  tail call void @BN_free(%struct.bignum_st* noundef %p.0) #3
  tail call void @BN_free(%struct.bignum_st* noundef %call1) #3
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %call) #3
  ret i32 %ret.0
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_mod_exp(i32 noundef %round) #0 {
entry:
  %c = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %c) #5
  %call = tail call %struct.bignum_ctx* @BN_CTX_new() #3
  %0 = bitcast %struct.bignum_ctx* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 135, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0), i8* noundef %0) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_new() #3
  %1 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 138, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0), i8* noundef %1) #3
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call5 = tail call %struct.bignum_st* @BN_new() #3
  %2 = bitcast %struct.bignum_st* %call5 to i8*
  %call6 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 139, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i64 0, i64 0), i8* noundef %2) #3
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %err, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %call9 = tail call %struct.bignum_st* @BN_new() #3
  %3 = bitcast %struct.bignum_st* %call9 to i8*
  %call10 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 140, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0), i8* noundef %3) #3
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false8
  %call13 = tail call %struct.bignum_st* @BN_new() #3
  %4 = bitcast %struct.bignum_st* %call13 to i8*
  %call14 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 141, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i64 0, i64 0), i8* noundef %4) #3
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false12
  %call17 = tail call %struct.bignum_st* @BN_new() #3
  %5 = bitcast %struct.bignum_st* %call17 to i8*
  %call18 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 142, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* noundef %5) #3
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false16
  %call21 = tail call %struct.bignum_st* @BN_new() #3
  %6 = bitcast %struct.bignum_st* %call21 to i8*
  %call22 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 143, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i8* noundef %6) #3
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %err, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false20
  %call25 = tail call %struct.bignum_st* @BN_new() #3
  %7 = bitcast %struct.bignum_st* %call25 to i8*
  %call26 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 144, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* noundef %7) #3
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %if.end29

if.end29:                                         ; preds = %lor.lhs.false24
  %call30 = call i32 @RAND_bytes(i8* noundef nonnull %c, i32 noundef 1) #3
  %cmp = icmp ne i32 %call30, 0
  %conv = zext i1 %cmp to i32
  %call31 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 147, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv) #3
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %if.end34

if.end34:                                         ; preds = %if.end29
  %8 = load i8, i8* %c, align 1, !tbaa !3
  %9 = and i8 %8, 127
  %sub = add nsw i8 %9, -64
  store i8 %sub, i8* %c, align 1, !tbaa !3
  %conv37 = zext i8 %sub to i32
  %add = or i32 %conv37, 256
  %call38 = call i32 @BN_rand(%struct.bignum_st* noundef %call17, i32 noundef %add, i32 noundef 0, i32 noundef 0) #3
  %cmp39 = icmp ne i32 %call38, 0
  %conv40 = zext i1 %cmp39 to i32
  %call41 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 151, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv40) #3
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %err, label %if.end44

if.end44:                                         ; preds = %if.end34
  %call45 = call i32 @RAND_bytes(i8* noundef nonnull %c, i32 noundef 1) #3
  %cmp46 = icmp ne i32 %call45, 0
  %conv47 = zext i1 %cmp46 to i32
  %call48 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 154, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv47) #3
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %err, label %if.end51

if.end51:                                         ; preds = %if.end44
  %10 = load i8, i8* %c, align 1, !tbaa !3
  %11 = and i8 %10, 127
  %sub54 = add nsw i8 %11, -64
  store i8 %sub54, i8* %c, align 1, !tbaa !3
  %conv56 = zext i8 %sub54 to i32
  %add57 = or i32 %conv56, 256
  %call58 = call i32 @BN_rand(%struct.bignum_st* noundef %call21, i32 noundef %add57, i32 noundef 0, i32 noundef 0) #3
  %cmp59 = icmp ne i32 %call58, 0
  %conv60 = zext i1 %cmp59 to i32
  %call61 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 158, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.37, i64 0, i64 0), i32 noundef %conv60) #3
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %err, label %if.end64

if.end64:                                         ; preds = %if.end51
  %call65 = call i32 @RAND_bytes(i8* noundef nonnull %c, i32 noundef 1) #3
  %cmp66 = icmp ne i32 %call65, 0
  %conv67 = zext i1 %cmp66 to i32
  %call68 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 161, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv67) #3
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %err, label %if.end71

if.end71:                                         ; preds = %if.end64
  %12 = load i8, i8* %c, align 1, !tbaa !3
  %13 = and i8 %12, 127
  %sub74 = add nsw i8 %13, -64
  store i8 %sub74, i8* %c, align 1, !tbaa !3
  %conv76 = zext i8 %sub74 to i32
  %add77 = or i32 %conv76, 256
  %call78 = call i32 @BN_rand(%struct.bignum_st* noundef %call25, i32 noundef %add77, i32 noundef 0, i32 noundef 1) #3
  %cmp79 = icmp ne i32 %call78, 0
  %conv80 = zext i1 %cmp79 to i32
  %call81 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 165, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.38, i64 0, i64 0), i32 noundef %conv80) #3
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %err, label %if.end84

if.end84:                                         ; preds = %if.end71
  %call85 = call i32 @BN_div(%struct.bignum_st* noundef null, %struct.bignum_st* noundef %call17, %struct.bignum_st* noundef %call17, %struct.bignum_st* noundef %call25, %struct.bignum_ctx* noundef %call) #3
  %cmp86 = icmp ne i32 %call85, 0
  %conv87 = zext i1 %cmp86 to i32
  %call88 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 168, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i64 0, i64 0), i32 noundef %conv87) #3
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %err, label %lor.lhs.false90

lor.lhs.false90:                                  ; preds = %if.end84
  %call91 = call i32 @BN_div(%struct.bignum_st* noundef null, %struct.bignum_st* noundef %call21, %struct.bignum_st* noundef %call21, %struct.bignum_st* noundef %call25, %struct.bignum_ctx* noundef %call) #3
  %cmp92 = icmp ne i32 %call91, 0
  %conv93 = zext i1 %cmp92 to i32
  %call94 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 169, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv93) #3
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %err, label %lor.lhs.false96

lor.lhs.false96:                                  ; preds = %lor.lhs.false90
  %call97 = call i32 @BN_mod_exp_mont(%struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call17, %struct.bignum_st* noundef %call21, %struct.bignum_st* noundef %call25, %struct.bignum_ctx* noundef %call, %struct.bn_mont_ctx_st* noundef null) #3
  %cmp98 = icmp ne i32 %call97, 0
  %conv99 = zext i1 %cmp98 to i32
  %call100 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 170, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv99) #3
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %err, label %lor.lhs.false102

lor.lhs.false102:                                 ; preds = %lor.lhs.false96
  %call103 = call i32 @BN_mod_exp_recp(%struct.bignum_st* noundef %call9, %struct.bignum_st* noundef %call17, %struct.bignum_st* noundef %call21, %struct.bignum_st* noundef %call25, %struct.bignum_ctx* noundef %call) #3
  %cmp104 = icmp ne i32 %call103, 0
  %conv105 = zext i1 %cmp104 to i32
  %call106 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 171, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.42, i64 0, i64 0), i32 noundef %conv105) #3
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %err, label %lor.lhs.false108

lor.lhs.false108:                                 ; preds = %lor.lhs.false102
  %call109 = call i32 @BN_mod_exp_simple(%struct.bignum_st* noundef %call13, %struct.bignum_st* noundef %call17, %struct.bignum_st* noundef %call21, %struct.bignum_st* noundef %call25, %struct.bignum_ctx* noundef %call) #3
  %cmp110 = icmp ne i32 %call109, 0
  %conv111 = zext i1 %cmp110 to i32
  %call112 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 172, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.43, i64 0, i64 0), i32 noundef %conv111) #3
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %err, label %lor.lhs.false114

lor.lhs.false114:                                 ; preds = %lor.lhs.false108
  %call115 = call i32 @BN_mod_exp_mont_consttime(%struct.bignum_st* noundef %call5, %struct.bignum_st* noundef %call17, %struct.bignum_st* noundef %call21, %struct.bignum_st* noundef %call25, %struct.bignum_ctx* noundef %call, %struct.bn_mont_ctx_st* noundef null) #3
  %cmp116 = icmp ne i32 %call115, 0
  %conv117 = zext i1 %cmp116 to i32
  %call118 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 173, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.44, i64 0, i64 0), i32 noundef %conv117) #3
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %err, label %if.end121

if.end121:                                        ; preds = %lor.lhs.false114
  %call122 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 176, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), %struct.bignum_st* noundef %call13, %struct.bignum_st* noundef %call2) #3
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.then130, label %lor.lhs.false124

lor.lhs.false124:                                 ; preds = %if.end121
  %call125 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 177, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0), %struct.bignum_st* noundef %call13, %struct.bignum_st* noundef %call9) #3
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.then130, label %lor.lhs.false127

lor.lhs.false127:                                 ; preds = %lor.lhs.false124
  %call128 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 178, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i64 0, i64 0), %struct.bignum_st* noundef %call13, %struct.bignum_st* noundef %call5) #3
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.then130, label %err

if.then130:                                       ; preds = %lor.lhs.false127, %lor.lhs.false124, %if.end121
  %call131 = call i32 @BN_cmp(%struct.bignum_st* noundef %call13, %struct.bignum_st* noundef %call2) #3
  %cmp132.not = icmp eq i32 %call131, 0
  br i1 %cmp132.not, label %if.end135, label %if.then134

if.then134:                                       ; preds = %if.then130
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 180, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.49, i64 0, i64 0)) #3
  br label %if.end135

if.end135:                                        ; preds = %if.then134, %if.then130
  %call136 = call i32 @BN_cmp(%struct.bignum_st* noundef %call13, %struct.bignum_st* noundef %call5) #3
  %cmp137.not = icmp eq i32 %call136, 0
  br i1 %cmp137.not, label %if.end140, label %if.then139

if.then139:                                       ; preds = %if.end135
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 182, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.50, i64 0, i64 0)) #3
  br label %if.end140

if.end140:                                        ; preds = %if.then139, %if.end135
  %call141 = call i32 @BN_cmp(%struct.bignum_st* noundef %call13, %struct.bignum_st* noundef %call9) #3
  %cmp142.not = icmp eq i32 %call141, 0
  br i1 %cmp142.not, label %if.end145, label %if.then144

if.then144:                                       ; preds = %if.end140
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 184, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.51, i64 0, i64 0)) #3
  br label %if.end145

if.end145:                                        ; preds = %if.then144, %if.end140
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), %struct.bignum_st* noundef %call17) #3
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0), %struct.bignum_st* noundef %call21) #3
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i64 0, i64 0), %struct.bignum_st* noundef %call25) #3
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i64 0, i64 0), %struct.bignum_st* noundef %call13) #3
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0), %struct.bignum_st* noundef %call9) #3
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), %struct.bignum_st* noundef %call2) #3
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i64 0, i64 0), %struct.bignum_st* noundef %call5) #3
  br label %err

err:                                              ; preds = %lor.lhs.false127, %if.end84, %lor.lhs.false90, %lor.lhs.false96, %lor.lhs.false102, %lor.lhs.false108, %lor.lhs.false114, %if.end71, %if.end64, %if.end51, %if.end44, %if.end34, %if.end29, %if.end, %lor.lhs.false, %lor.lhs.false8, %lor.lhs.false12, %lor.lhs.false16, %lor.lhs.false20, %lor.lhs.false24, %entry, %if.end145
  %ret.0 = phi i32 [ 0, %if.end145 ], [ 0, %lor.lhs.false114 ], [ 0, %lor.lhs.false108 ], [ 0, %lor.lhs.false102 ], [ 0, %lor.lhs.false96 ], [ 0, %lor.lhs.false90 ], [ 0, %if.end84 ], [ 0, %if.end71 ], [ 0, %if.end64 ], [ 0, %if.end51 ], [ 0, %if.end44 ], [ 0, %if.end34 ], [ 0, %if.end29 ], [ 0, %lor.lhs.false24 ], [ 0, %lor.lhs.false20 ], [ 0, %lor.lhs.false16 ], [ 0, %lor.lhs.false12 ], [ 0, %lor.lhs.false8 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %entry ], [ 1, %lor.lhs.false127 ]
  %r_mont.0 = phi %struct.bignum_st* [ %call2, %if.end145 ], [ %call2, %lor.lhs.false114 ], [ %call2, %lor.lhs.false108 ], [ %call2, %lor.lhs.false102 ], [ %call2, %lor.lhs.false96 ], [ %call2, %lor.lhs.false90 ], [ %call2, %if.end84 ], [ %call2, %if.end71 ], [ %call2, %if.end64 ], [ %call2, %if.end51 ], [ %call2, %if.end44 ], [ %call2, %if.end34 ], [ %call2, %if.end29 ], [ %call2, %lor.lhs.false24 ], [ %call2, %lor.lhs.false20 ], [ %call2, %lor.lhs.false16 ], [ %call2, %lor.lhs.false12 ], [ %call2, %lor.lhs.false8 ], [ %call2, %lor.lhs.false ], [ %call2, %if.end ], [ null, %entry ], [ %call2, %lor.lhs.false127 ]
  %r_mont_const.0 = phi %struct.bignum_st* [ %call5, %if.end145 ], [ %call5, %lor.lhs.false114 ], [ %call5, %lor.lhs.false108 ], [ %call5, %lor.lhs.false102 ], [ %call5, %lor.lhs.false96 ], [ %call5, %lor.lhs.false90 ], [ %call5, %if.end84 ], [ %call5, %if.end71 ], [ %call5, %if.end64 ], [ %call5, %if.end51 ], [ %call5, %if.end44 ], [ %call5, %if.end34 ], [ %call5, %if.end29 ], [ %call5, %lor.lhs.false24 ], [ %call5, %lor.lhs.false20 ], [ %call5, %lor.lhs.false16 ], [ %call5, %lor.lhs.false12 ], [ %call5, %lor.lhs.false8 ], [ %call5, %lor.lhs.false ], [ null, %if.end ], [ null, %entry ], [ %call5, %lor.lhs.false127 ]
  %r_recp.0 = phi %struct.bignum_st* [ %call9, %if.end145 ], [ %call9, %lor.lhs.false114 ], [ %call9, %lor.lhs.false108 ], [ %call9, %lor.lhs.false102 ], [ %call9, %lor.lhs.false96 ], [ %call9, %lor.lhs.false90 ], [ %call9, %if.end84 ], [ %call9, %if.end71 ], [ %call9, %if.end64 ], [ %call9, %if.end51 ], [ %call9, %if.end44 ], [ %call9, %if.end34 ], [ %call9, %if.end29 ], [ %call9, %lor.lhs.false24 ], [ %call9, %lor.lhs.false20 ], [ %call9, %lor.lhs.false16 ], [ %call9, %lor.lhs.false12 ], [ %call9, %lor.lhs.false8 ], [ null, %lor.lhs.false ], [ null, %if.end ], [ null, %entry ], [ %call9, %lor.lhs.false127 ]
  %r_simple.0 = phi %struct.bignum_st* [ %call13, %if.end145 ], [ %call13, %lor.lhs.false114 ], [ %call13, %lor.lhs.false108 ], [ %call13, %lor.lhs.false102 ], [ %call13, %lor.lhs.false96 ], [ %call13, %lor.lhs.false90 ], [ %call13, %if.end84 ], [ %call13, %if.end71 ], [ %call13, %if.end64 ], [ %call13, %if.end51 ], [ %call13, %if.end44 ], [ %call13, %if.end34 ], [ %call13, %if.end29 ], [ %call13, %lor.lhs.false24 ], [ %call13, %lor.lhs.false20 ], [ %call13, %lor.lhs.false16 ], [ %call13, %lor.lhs.false12 ], [ null, %lor.lhs.false8 ], [ null, %lor.lhs.false ], [ null, %if.end ], [ null, %entry ], [ %call13, %lor.lhs.false127 ]
  %a.0 = phi %struct.bignum_st* [ %call17, %if.end145 ], [ %call17, %lor.lhs.false114 ], [ %call17, %lor.lhs.false108 ], [ %call17, %lor.lhs.false102 ], [ %call17, %lor.lhs.false96 ], [ %call17, %lor.lhs.false90 ], [ %call17, %if.end84 ], [ %call17, %if.end71 ], [ %call17, %if.end64 ], [ %call17, %if.end51 ], [ %call17, %if.end44 ], [ %call17, %if.end34 ], [ %call17, %if.end29 ], [ %call17, %lor.lhs.false24 ], [ %call17, %lor.lhs.false20 ], [ %call17, %lor.lhs.false16 ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false8 ], [ null, %lor.lhs.false ], [ null, %if.end ], [ null, %entry ], [ %call17, %lor.lhs.false127 ]
  %b.0 = phi %struct.bignum_st* [ %call21, %if.end145 ], [ %call21, %lor.lhs.false114 ], [ %call21, %lor.lhs.false108 ], [ %call21, %lor.lhs.false102 ], [ %call21, %lor.lhs.false96 ], [ %call21, %lor.lhs.false90 ], [ %call21, %if.end84 ], [ %call21, %if.end71 ], [ %call21, %if.end64 ], [ %call21, %if.end51 ], [ %call21, %if.end44 ], [ %call21, %if.end34 ], [ %call21, %if.end29 ], [ %call21, %lor.lhs.false24 ], [ %call21, %lor.lhs.false20 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false8 ], [ null, %lor.lhs.false ], [ null, %if.end ], [ null, %entry ], [ %call21, %lor.lhs.false127 ]
  %m.0 = phi %struct.bignum_st* [ %call25, %if.end145 ], [ %call25, %lor.lhs.false114 ], [ %call25, %lor.lhs.false108 ], [ %call25, %lor.lhs.false102 ], [ %call25, %lor.lhs.false96 ], [ %call25, %lor.lhs.false90 ], [ %call25, %if.end84 ], [ %call25, %if.end71 ], [ %call25, %if.end64 ], [ %call25, %if.end51 ], [ %call25, %if.end44 ], [ %call25, %if.end34 ], [ %call25, %if.end29 ], [ %call25, %lor.lhs.false24 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false8 ], [ null, %lor.lhs.false ], [ null, %if.end ], [ null, %entry ], [ %call25, %lor.lhs.false127 ]
  call void @BN_free(%struct.bignum_st* noundef %r_mont.0) #3
  call void @BN_free(%struct.bignum_st* noundef %r_mont_const.0) #3
  call void @BN_free(%struct.bignum_st* noundef %r_recp.0) #3
  call void @BN_free(%struct.bignum_st* noundef %r_simple.0) #3
  call void @BN_free(%struct.bignum_st* noundef %a.0) #3
  call void @BN_free(%struct.bignum_st* noundef %b.0) #3
  call void @BN_free(%struct.bignum_st* noundef %m.0) #3
  call void @BN_CTX_free(%struct.bignum_ctx* noundef %call) #3
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %c) #5
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_mod_exp_x2(i32 noundef %idx) #0 {
entry:
  %cmp = icmp slt i32 %idx, 101
  %spec.store.select = select i1 %cmp, i32 1024, i32 0
  %call = tail call %struct.bignum_ctx* @BN_CTX_new() #3
  %0 = bitcast %struct.bignum_ctx* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 232, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0), i8* noundef %0) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end3

if.end3:                                          ; preds = %entry
  %call4 = tail call %struct.bignum_st* @BN_new() #3
  %1 = bitcast %struct.bignum_st* %call4 to i8*
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 235, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.54, i64 0, i64 0), i8* noundef %1) #3
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %call7 = tail call %struct.bignum_st* @BN_new() #3
  %2 = bitcast %struct.bignum_st* %call7 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 236, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.55, i64 0, i64 0), i8* noundef %2) #3
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %call11 = tail call %struct.bignum_st* @BN_new() #3
  %3 = bitcast %struct.bignum_st* %call11 to i8*
  %call12 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 237, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.56, i64 0, i64 0), i8* noundef %3) #3
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %call15 = tail call %struct.bignum_st* @BN_new() #3
  %4 = bitcast %struct.bignum_st* %call15 to i8*
  %call16 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 238, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.57, i64 0, i64 0), i8* noundef %4) #3
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false14
  %call19 = tail call %struct.bignum_st* @BN_new() #3
  %5 = bitcast %struct.bignum_st* %call19 to i8*
  %call20 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 239, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i64 0, i64 0), i8* noundef %5) #3
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false18
  %call23 = tail call %struct.bignum_st* @BN_new() #3
  %6 = bitcast %struct.bignum_st* %call23 to i8*
  %call24 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 240, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i64 0, i64 0), i8* noundef %6) #3
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false22
  %call27 = tail call %struct.bignum_st* @BN_new() #3
  %7 = bitcast %struct.bignum_st* %call27 to i8*
  %call28 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 241, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i64 0, i64 0), i8* noundef %7) #3
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %err, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false26
  %call31 = tail call %struct.bignum_st* @BN_new() #3
  %8 = bitcast %struct.bignum_st* %call31 to i8*
  %call32 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 242, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.61, i64 0, i64 0), i8* noundef %8) #3
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %lor.lhs.false30
  %call35 = tail call %struct.bignum_st* @BN_new() #3
  %9 = bitcast %struct.bignum_st* %call35 to i8*
  %call36 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 243, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.62, i64 0, i64 0), i8* noundef %9) #3
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %err, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false34
  %call39 = tail call %struct.bignum_st* @BN_new() #3
  %10 = bitcast %struct.bignum_st* %call39 to i8*
  %call40 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 244, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.63, i64 0, i64 0), i8* noundef %10) #3
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %err, label %if.end43

if.end43:                                         ; preds = %lor.lhs.false38
  %call44 = tail call i32 @BN_rand(%struct.bignum_st* noundef %call19, i32 noundef %spec.store.select, i32 noundef 0, i32 noundef 0) #3
  %call45 = tail call i32 @BN_rand(%struct.bignum_st* noundef %call23, i32 noundef %spec.store.select, i32 noundef 0, i32 noundef 0) #3
  %call46 = tail call i32 @BN_rand(%struct.bignum_st* noundef %call27, i32 noundef %spec.store.select, i32 noundef 0, i32 noundef 1) #3
  %call47 = tail call i32 @BN_rand(%struct.bignum_st* noundef %call31, i32 noundef %spec.store.select, i32 noundef 0, i32 noundef 0) #3
  %call48 = tail call i32 @BN_rand(%struct.bignum_st* noundef %call35, i32 noundef %spec.store.select, i32 noundef 0, i32 noundef 0) #3
  %call49 = tail call i32 @BN_rand(%struct.bignum_st* noundef %call39, i32 noundef %spec.store.select, i32 noundef 0, i32 noundef 1) #3
  %call50 = tail call i32 @BN_div(%struct.bignum_st* noundef null, %struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %call27, %struct.bignum_ctx* noundef %call) #3
  %cmp51 = icmp ne i32 %call50, 0
  %conv = zext i1 %cmp51 to i32
  %call52 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 254, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.64, i64 0, i64 0), i32 noundef %conv) #3
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %err, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %if.end43
  %call55 = tail call i32 @BN_div(%struct.bignum_st* noundef null, %struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %call27, %struct.bignum_ctx* noundef %call) #3
  %cmp56 = icmp ne i32 %call55, 0
  %conv57 = zext i1 %cmp56 to i32
  %call58 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 255, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.65, i64 0, i64 0), i32 noundef %conv57) #3
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %err, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false54
  %call61 = tail call i32 @BN_div(%struct.bignum_st* noundef null, %struct.bignum_st* noundef %call31, %struct.bignum_st* noundef %call31, %struct.bignum_st* noundef %call39, %struct.bignum_ctx* noundef %call) #3
  %cmp62 = icmp ne i32 %call61, 0
  %conv63 = zext i1 %cmp62 to i32
  %call64 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 256, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.66, i64 0, i64 0), i32 noundef %conv63) #3
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %err, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %lor.lhs.false60
  %call67 = tail call i32 @BN_div(%struct.bignum_st* noundef null, %struct.bignum_st* noundef %call35, %struct.bignum_st* noundef %call35, %struct.bignum_st* noundef %call39, %struct.bignum_ctx* noundef %call) #3
  %cmp68 = icmp ne i32 %call67, 0
  %conv69 = zext i1 %cmp68 to i32
  %call70 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 257, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.67, i64 0, i64 0), i32 noundef %conv69) #3
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %err, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %lor.lhs.false66
  %call73 = tail call i32 @BN_mod_exp_simple(%struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %call27, %struct.bignum_ctx* noundef %call) #3
  %cmp74 = icmp ne i32 %call73, 0
  %conv75 = zext i1 %cmp74 to i32
  %call76 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 258, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.68, i64 0, i64 0), i32 noundef %conv75) #3
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %err, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %lor.lhs.false72
  %call79 = tail call i32 @BN_mod_exp_simple(%struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call31, %struct.bignum_st* noundef %call35, %struct.bignum_st* noundef %call39, %struct.bignum_ctx* noundef %call) #3
  %cmp80 = icmp ne i32 %call79, 0
  %conv81 = zext i1 %cmp80 to i32
  %call82 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 259, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv81) #3
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %err, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %lor.lhs.false78
  %call85 = tail call i32 @BN_mod_exp_mont_consttime_x2(%struct.bignum_st* noundef %call4, %struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %call27, %struct.bn_mont_ctx_st* noundef null, %struct.bignum_st* noundef %call7, %struct.bignum_st* noundef %call31, %struct.bignum_st* noundef %call35, %struct.bignum_st* noundef %call39, %struct.bn_mont_ctx_st* noundef null, %struct.bignum_ctx* noundef %call) #3
  %cmp86 = icmp ne i32 %call85, 0
  %conv87 = zext i1 %cmp86 to i32
  %call88 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 262, i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.70, i64 0, i64 0), i32 noundef %conv87) #3
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %err, label %if.end91

if.end91:                                         ; preds = %lor.lhs.false84
  %call92 = tail call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 265, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.72, i64 0, i64 0), %struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call4) #3
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.then97, label %lor.lhs.false94

lor.lhs.false94:                                  ; preds = %if.end91
  %call95 = tail call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 266, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.74, i64 0, i64 0), %struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call7) #3
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.then97, label %err

if.then97:                                        ; preds = %lor.lhs.false94, %if.end91
  %call98 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call4) #3
  %cmp99.not = icmp eq i32 %call98, 0
  br i1 %cmp99.not, label %if.end102, label %if.then101

if.then101:                                       ; preds = %if.then97
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 268, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.75, i64 0, i64 0)) #3
  br label %if.end102

if.end102:                                        ; preds = %if.then101, %if.then97
  %call103 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call7) #3
  %cmp104.not = icmp eq i32 %call103, 0
  br i1 %cmp104.not, label %if.end107, label %if.then106

if.then106:                                       ; preds = %if.end102
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 270, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.76, i64 0, i64 0)) #3
  br label %if.end107

if.end107:                                        ; preds = %if.then106, %if.end102
  tail call void @test_output_bignum(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77, i64 0, i64 0), %struct.bignum_st* noundef %call19) #3
  tail call void @test_output_bignum(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i64 0, i64 0), %struct.bignum_st* noundef %call23) #3
  tail call void @test_output_bignum(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i64 0, i64 0), %struct.bignum_st* noundef %call27) #3
  tail call void @test_output_bignum(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i64 0, i64 0), %struct.bignum_st* noundef %call31) #3
  tail call void @test_output_bignum(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0), %struct.bignum_st* noundef %call35) #3
  tail call void @test_output_bignum(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i64 0, i64 0), %struct.bignum_st* noundef %call39) #3
  tail call void @test_output_bignum(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i64 0, i64 0), %struct.bignum_st* noundef %call11) #3
  tail call void @test_output_bignum(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i64 0, i64 0), %struct.bignum_st* noundef %call15) #3
  tail call void @test_output_bignum(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.72, i64 0, i64 0), %struct.bignum_st* noundef %call4) #3
  tail call void @test_output_bignum(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.74, i64 0, i64 0), %struct.bignum_st* noundef %call7) #3
  br label %err

err:                                              ; preds = %lor.lhs.false94, %if.end43, %lor.lhs.false54, %lor.lhs.false60, %lor.lhs.false66, %lor.lhs.false72, %lor.lhs.false78, %lor.lhs.false84, %if.end3, %lor.lhs.false, %lor.lhs.false10, %lor.lhs.false14, %lor.lhs.false18, %lor.lhs.false22, %lor.lhs.false26, %lor.lhs.false30, %lor.lhs.false34, %lor.lhs.false38, %entry, %if.end107
  %ret.0 = phi i32 [ 0, %if.end107 ], [ 0, %lor.lhs.false84 ], [ 0, %lor.lhs.false78 ], [ 0, %lor.lhs.false72 ], [ 0, %lor.lhs.false66 ], [ 0, %lor.lhs.false60 ], [ 0, %lor.lhs.false54 ], [ 0, %if.end43 ], [ 0, %lor.lhs.false38 ], [ 0, %lor.lhs.false34 ], [ 0, %lor.lhs.false30 ], [ 0, %lor.lhs.false26 ], [ 0, %lor.lhs.false22 ], [ 0, %lor.lhs.false18 ], [ 0, %lor.lhs.false14 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false ], [ 0, %if.end3 ], [ 0, %entry ], [ 1, %lor.lhs.false94 ]
  %r_mont_const_x2_1.0 = phi %struct.bignum_st* [ %call4, %if.end107 ], [ %call4, %lor.lhs.false84 ], [ %call4, %lor.lhs.false78 ], [ %call4, %lor.lhs.false72 ], [ %call4, %lor.lhs.false66 ], [ %call4, %lor.lhs.false60 ], [ %call4, %lor.lhs.false54 ], [ %call4, %if.end43 ], [ %call4, %lor.lhs.false38 ], [ %call4, %lor.lhs.false34 ], [ %call4, %lor.lhs.false30 ], [ %call4, %lor.lhs.false26 ], [ %call4, %lor.lhs.false22 ], [ %call4, %lor.lhs.false18 ], [ %call4, %lor.lhs.false14 ], [ %call4, %lor.lhs.false10 ], [ %call4, %lor.lhs.false ], [ %call4, %if.end3 ], [ null, %entry ], [ %call4, %lor.lhs.false94 ]
  %r_mont_const_x2_2.0 = phi %struct.bignum_st* [ %call7, %if.end107 ], [ %call7, %lor.lhs.false84 ], [ %call7, %lor.lhs.false78 ], [ %call7, %lor.lhs.false72 ], [ %call7, %lor.lhs.false66 ], [ %call7, %lor.lhs.false60 ], [ %call7, %lor.lhs.false54 ], [ %call7, %if.end43 ], [ %call7, %lor.lhs.false38 ], [ %call7, %lor.lhs.false34 ], [ %call7, %lor.lhs.false30 ], [ %call7, %lor.lhs.false26 ], [ %call7, %lor.lhs.false22 ], [ %call7, %lor.lhs.false18 ], [ %call7, %lor.lhs.false14 ], [ %call7, %lor.lhs.false10 ], [ %call7, %lor.lhs.false ], [ null, %if.end3 ], [ null, %entry ], [ %call7, %lor.lhs.false94 ]
  %r_simple1.0 = phi %struct.bignum_st* [ %call11, %if.end107 ], [ %call11, %lor.lhs.false84 ], [ %call11, %lor.lhs.false78 ], [ %call11, %lor.lhs.false72 ], [ %call11, %lor.lhs.false66 ], [ %call11, %lor.lhs.false60 ], [ %call11, %lor.lhs.false54 ], [ %call11, %if.end43 ], [ %call11, %lor.lhs.false38 ], [ %call11, %lor.lhs.false34 ], [ %call11, %lor.lhs.false30 ], [ %call11, %lor.lhs.false26 ], [ %call11, %lor.lhs.false22 ], [ %call11, %lor.lhs.false18 ], [ %call11, %lor.lhs.false14 ], [ %call11, %lor.lhs.false10 ], [ null, %lor.lhs.false ], [ null, %if.end3 ], [ null, %entry ], [ %call11, %lor.lhs.false94 ]
  %r_simple2.0 = phi %struct.bignum_st* [ %call15, %if.end107 ], [ %call15, %lor.lhs.false84 ], [ %call15, %lor.lhs.false78 ], [ %call15, %lor.lhs.false72 ], [ %call15, %lor.lhs.false66 ], [ %call15, %lor.lhs.false60 ], [ %call15, %lor.lhs.false54 ], [ %call15, %if.end43 ], [ %call15, %lor.lhs.false38 ], [ %call15, %lor.lhs.false34 ], [ %call15, %lor.lhs.false30 ], [ %call15, %lor.lhs.false26 ], [ %call15, %lor.lhs.false22 ], [ %call15, %lor.lhs.false18 ], [ %call15, %lor.lhs.false14 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false ], [ null, %if.end3 ], [ null, %entry ], [ %call15, %lor.lhs.false94 ]
  %a1.0 = phi %struct.bignum_st* [ %call19, %if.end107 ], [ %call19, %lor.lhs.false84 ], [ %call19, %lor.lhs.false78 ], [ %call19, %lor.lhs.false72 ], [ %call19, %lor.lhs.false66 ], [ %call19, %lor.lhs.false60 ], [ %call19, %lor.lhs.false54 ], [ %call19, %if.end43 ], [ %call19, %lor.lhs.false38 ], [ %call19, %lor.lhs.false34 ], [ %call19, %lor.lhs.false30 ], [ %call19, %lor.lhs.false26 ], [ %call19, %lor.lhs.false22 ], [ %call19, %lor.lhs.false18 ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false ], [ null, %if.end3 ], [ null, %entry ], [ %call19, %lor.lhs.false94 ]
  %b1.0 = phi %struct.bignum_st* [ %call23, %if.end107 ], [ %call23, %lor.lhs.false84 ], [ %call23, %lor.lhs.false78 ], [ %call23, %lor.lhs.false72 ], [ %call23, %lor.lhs.false66 ], [ %call23, %lor.lhs.false60 ], [ %call23, %lor.lhs.false54 ], [ %call23, %if.end43 ], [ %call23, %lor.lhs.false38 ], [ %call23, %lor.lhs.false34 ], [ %call23, %lor.lhs.false30 ], [ %call23, %lor.lhs.false26 ], [ %call23, %lor.lhs.false22 ], [ null, %lor.lhs.false18 ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false ], [ null, %if.end3 ], [ null, %entry ], [ %call23, %lor.lhs.false94 ]
  %m1.0 = phi %struct.bignum_st* [ %call27, %if.end107 ], [ %call27, %lor.lhs.false84 ], [ %call27, %lor.lhs.false78 ], [ %call27, %lor.lhs.false72 ], [ %call27, %lor.lhs.false66 ], [ %call27, %lor.lhs.false60 ], [ %call27, %lor.lhs.false54 ], [ %call27, %if.end43 ], [ %call27, %lor.lhs.false38 ], [ %call27, %lor.lhs.false34 ], [ %call27, %lor.lhs.false30 ], [ %call27, %lor.lhs.false26 ], [ null, %lor.lhs.false22 ], [ null, %lor.lhs.false18 ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false ], [ null, %if.end3 ], [ null, %entry ], [ %call27, %lor.lhs.false94 ]
  %a2.0 = phi %struct.bignum_st* [ %call31, %if.end107 ], [ %call31, %lor.lhs.false84 ], [ %call31, %lor.lhs.false78 ], [ %call31, %lor.lhs.false72 ], [ %call31, %lor.lhs.false66 ], [ %call31, %lor.lhs.false60 ], [ %call31, %lor.lhs.false54 ], [ %call31, %if.end43 ], [ %call31, %lor.lhs.false38 ], [ %call31, %lor.lhs.false34 ], [ %call31, %lor.lhs.false30 ], [ null, %lor.lhs.false26 ], [ null, %lor.lhs.false22 ], [ null, %lor.lhs.false18 ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false ], [ null, %if.end3 ], [ null, %entry ], [ %call31, %lor.lhs.false94 ]
  %b2.0 = phi %struct.bignum_st* [ %call35, %if.end107 ], [ %call35, %lor.lhs.false84 ], [ %call35, %lor.lhs.false78 ], [ %call35, %lor.lhs.false72 ], [ %call35, %lor.lhs.false66 ], [ %call35, %lor.lhs.false60 ], [ %call35, %lor.lhs.false54 ], [ %call35, %if.end43 ], [ %call35, %lor.lhs.false38 ], [ %call35, %lor.lhs.false34 ], [ null, %lor.lhs.false30 ], [ null, %lor.lhs.false26 ], [ null, %lor.lhs.false22 ], [ null, %lor.lhs.false18 ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false ], [ null, %if.end3 ], [ null, %entry ], [ %call35, %lor.lhs.false94 ]
  %m2.0 = phi %struct.bignum_st* [ %call39, %if.end107 ], [ %call39, %lor.lhs.false84 ], [ %call39, %lor.lhs.false78 ], [ %call39, %lor.lhs.false72 ], [ %call39, %lor.lhs.false66 ], [ %call39, %lor.lhs.false60 ], [ %call39, %lor.lhs.false54 ], [ %call39, %if.end43 ], [ %call39, %lor.lhs.false38 ], [ null, %lor.lhs.false34 ], [ null, %lor.lhs.false30 ], [ null, %lor.lhs.false26 ], [ null, %lor.lhs.false22 ], [ null, %lor.lhs.false18 ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false ], [ null, %if.end3 ], [ null, %entry ], [ %call39, %lor.lhs.false94 ]
  tail call void @BN_free(%struct.bignum_st* noundef %r_mont_const_x2_1.0) #3
  tail call void @BN_free(%struct.bignum_st* noundef %r_mont_const_x2_2.0) #3
  tail call void @BN_free(%struct.bignum_st* noundef %r_simple1.0) #3
  tail call void @BN_free(%struct.bignum_st* noundef %r_simple2.0) #3
  tail call void @BN_free(%struct.bignum_st* noundef %a1.0) #3
  tail call void @BN_free(%struct.bignum_st* noundef %b1.0) #3
  tail call void @BN_free(%struct.bignum_st* noundef %m1.0) #3
  tail call void @BN_free(%struct.bignum_st* noundef %a2.0) #3
  tail call void @BN_free(%struct.bignum_st* noundef %b2.0) #3
  tail call void @BN_free(%struct.bignum_st* noundef %m2.0) #3
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %call) #3
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local %struct.bignum_ctx* @BN_CTX_new() local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_new() local_unnamed_addr #1

declare dso_local i32 @BN_set_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @BN_zero_ex(%struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @BN_rand(%struct.bignum_st* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @BN_mod_exp(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @a_is_zero_mod_one(i8* noundef %method, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a) unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %r) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %return

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.27, i64 0, i64 0), i8* noundef %method) #3
  tail call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), %struct.bignum_st* noundef %a) #3
  tail call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), %struct.bignum_st* noundef %r) #3
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

declare dso_local i32 @BN_mod_exp_recp(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local i32 @BN_mod_exp_simple(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local i32 @BN_mod_exp_mont(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef, %struct.bn_mont_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @BN_mod_exp_mont_consttime(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef, %struct.bn_mont_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @BN_mod_exp_mont_word(%struct.bignum_st* noundef, i64 noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef, %struct.bn_mont_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_BN_eq_zero(i8* noundef, i32 noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local void @test_output_bignum(i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @RAND_bytes(i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @BN_div(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local i32 @test_BN_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @BN_cmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local i32 @BN_mod_exp_mont_consttime_x2(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bn_mont_ctx_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bn_mont_ctx_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
