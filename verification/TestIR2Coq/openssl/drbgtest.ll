; ModuleID = 'test/drbgtest.c'
source_filename = "test/drbgtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rand_meth_st = type { i32 (i8*, i32)*, i32 (i8*, i32)*, void ()*, i32 (i8*, i32, double)*, i32 (i8*, i32)*, i32 ()* }
%struct.evp_rand_ctx_st = type { %struct.evp_rand_st*, i8*, %struct.evp_rand_ctx_st*, i32, i8* }
%struct.evp_rand_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.prov_drbg_st = type { i8*, %struct.prov_ctx_st*, i32 (%struct.prov_drbg_st*, i8*, i64, i8*, i64, i8*, i64)*, i32 (%struct.prov_drbg_st*)*, i32 (%struct.prov_drbg_st*, i8*, i64, i8*, i64)*, i32 (%struct.prov_drbg_st*, i8*, i64, i8*, i64)*, i8*, i32 (i8*)*, i32 (i8*)*, void (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i64 (i8*, i8*, i32, i64, i64)*, i64 (i8*, i8**, i32, i64, i64, i32, i8*, i64)*, void (i8*, i8*, i64)*, %struct.ossl_dispatch_st*, i32, i16, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i32, i32, i32, i64, i32, i8*, i8*, i32 (%struct.ossl_param_st*, %struct.ossl_param_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.ossl_param_st*, %struct.ossl_param_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)* }
%struct.prov_ctx_st = type { %struct.ossl_core_handle_st*, %struct.ossl_lib_ctx_st*, %struct.bio_method_st* }
%struct.ossl_core_handle_st = type opaque
%struct.bio_method_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_dispatch_st = type { i32, void ()* }
%struct.drbg_fork_result_st = type { [16 x i8], i32, i32, i32, [10 x i8] }
%union.pthread_attr_t = type { i64, [48 x i8] }

@.str = private unnamed_addr constant [17 x i8] c"test_rand_reseed\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"test_rand_fork_safety\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"test_rand_prediction_resistance\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"test_multi_thread\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"test/drbgtest.c\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"RAND_get_rand_method()\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"RAND_OpenSSL()\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"primary = RAND_get0_primary(NULL)\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"public = RAND_get0_public(NULL)\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"private = RAND_get0_private(NULL)\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"public\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"prov_rand(public)->parent\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"prov_rand(primary)\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"prov_rand(private)->parent\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"disable_crngt(primary)\00", align 1
@.str.18 = private unnamed_addr constant [70 x i8] c"test_drbg_reseed(1, primary, public, private, NULL, NULL, 1, 1, 1, 0)\00", align 1
@.str.19 = private unnamed_addr constant [70 x i8] c"test_drbg_reseed(1, primary, public, private, NULL, NULL, 0, 0, 0, 0)\00", align 1
@.str.20 = private unnamed_addr constant [70 x i8] c"test_drbg_reseed(1, primary, public, private, NULL, NULL, 0, 1, 1, 0)\00", align 1
@.str.21 = private unnamed_addr constant [70 x i8] c"test_drbg_reseed(1, primary, public, private, NULL, NULL, 0, 1, 0, 0)\00", align 1
@.str.22 = private unnamed_addr constant [70 x i8] c"test_drbg_reseed(1, primary, public, private, NULL, NULL, 0, 0, 1, 0)\00", align 1
@.str.23 = private unnamed_addr constant [82 x i8] c"test_drbg_reseed(1, primary, public, private, NULL, NULL, 1, 1, 1, before_reseed)\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"primary_reseed = reseed_counter(primary)\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"public_reseed = reseed_counter(public)\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"private_reseed = reseed_counter(private)\00", align 1
@.str.28 = private unnamed_addr constant [55 x i8] c"rand_bytes((unsigned char*)public_random, RANDOM_SIZE)\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"expect_success\00", align 1
@.str.30 = private unnamed_addr constant [62 x i8] c"rand_priv_bytes((unsigned char*) private_random, RANDOM_SIZE)\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"state(primary)\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"expected_state\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"state(public)\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"state(private)\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"reseed_counter(primary)\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"primary_reseed\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"reseed_counter(public)\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"public_reseed\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"reseed_counter(private)\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"private_reseed\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"before_reseed\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"reseed_time(primary)\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"after_reseed\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"reseed_time(public)\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"reseed_time(private)\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"reseed_counter\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"reseed_time\00", align 1
@.str.48 = private unnamed_addr constant [51 x i8] c"test_rand_reseed_on_fork(primary, public, private)\00", align 1
@.str.49 = private unnamed_addr constant [52 x i8] c"RAND_bytes(random, 1) && RAND_priv_bytes(random, 1)\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"child %d\00", align 1
@.str.52 = private unnamed_addr constant [61 x i8] c"test_drbg_reseed_in_child(primary, public, private, presult)\00", align 1
@.str.53 = private unnamed_addr constant [92 x i8] c"test_drbg_reseed(1, primary, public, private, &random[0], &random[RANDOM_SIZE], 0, 0, 0, 0)\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.55 = private unnamed_addr constant [53 x i8] c"ERROR: %d duplicate prefixes in public random output\00", align 1
@.str.56 = private unnamed_addr constant [54 x i8] c"ERROR: %d duplicate prefixes in private random output\00", align 1
@.str.57 = private unnamed_addr constant [44 x i8] c"ERROR: %d duplicate chunks in random output\00", align 1
@.str.58 = private unnamed_addr constant [33 x i8] c"    random: %s, pid: %d (%s, %s)\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"pipe(fd)\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"pid = fork()\00", align 1
@.str.61 = private unnamed_addr constant [25 x i8] c"waitpid(pid, &status, 0)\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.64 = private unnamed_addr constant [58 x i8] c"read(fd[0], &random[0], sizeof(random)) == sizeof(random)\00", align 1
@.str.65 = private unnamed_addr constant [92 x i8] c"test_drbg_reseed(1, primary, public, private, &random[0], &random[RANDOM_SIZE], 1, 1, 1, 0)\00", align 1
@.str.66 = private unnamed_addr constant [55 x i8] c"write(fd[1], random, sizeof(random)) == sizeof(random)\00", align 1
@.str.67 = private unnamed_addr constant [19 x i8] c"x = new_drbg(NULL)\00", align 1
@.str.68 = private unnamed_addr constant [17 x i8] c"disable_crngt(x)\00", align 1
@.str.69 = private unnamed_addr constant [45 x i8] c"EVP_RAND_instantiate(x, 0, 0, NULL, 0, NULL)\00", align 1
@.str.70 = private unnamed_addr constant [16 x i8] c"y = new_drbg(x)\00", align 1
@.str.71 = private unnamed_addr constant [45 x i8] c"EVP_RAND_instantiate(y, 0, 0, NULL, 0, NULL)\00", align 1
@.str.72 = private unnamed_addr constant [16 x i8] c"z = new_drbg(y)\00", align 1
@.str.73 = private unnamed_addr constant [45 x i8] c"EVP_RAND_instantiate(z, 0, 0, NULL, 0, NULL)\00", align 1
@.str.74 = private unnamed_addr constant [40 x i8] c"EVP_RAND_reseed(z, 0, NULL, 0, NULL, 0)\00", align 1
@.str.75 = private unnamed_addr constant [18 x i8] c"reseed_counter(x)\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"xreseed\00", align 1
@.str.77 = private unnamed_addr constant [18 x i8] c"reseed_counter(y)\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"yreseed\00", align 1
@.str.79 = private unnamed_addr constant [18 x i8] c"reseed_counter(z)\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"zreseed\00", align 1
@.str.81 = private unnamed_addr constant [40 x i8] c"EVP_RAND_reseed(z, 1, NULL, 0, NULL, 0)\00", align 1
@.str.82 = private unnamed_addr constant [56 x i8] c"EVP_RAND_generate(z, buf1, sizeof(buf1), 0, 0, NULL, 0)\00", align 1
@.str.83 = private unnamed_addr constant [56 x i8] c"EVP_RAND_generate(z, buf2, sizeof(buf2), 0, 1, NULL, 0)\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"buf1\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"buf2\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"cipher\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"AES-256-CTR\00", align 1
@.str.88 = private unnamed_addr constant [46 x i8] c"rand = EVP_RAND_fetch(NULL, \22CTR-DRBG\22, NULL)\00", align 1
@.str.89 = private unnamed_addr constant [9 x i8] c"CTR-DRBG\00", align 1
@.str.90 = private unnamed_addr constant [38 x i8] c"drbg = EVP_RAND_CTX_new(rand, parent)\00", align 1
@.str.91 = private unnamed_addr constant [38 x i8] c"EVP_RAND_CTX_set_params(drbg, params)\00", align 1
@.str.92 = private unnamed_addr constant [34 x i8] c"multi_thread_rand_bytes_succeeded\00", align 1
@multi_thread_rand_bytes_succeeded = internal unnamed_addr global i1 false, align 4
@.str.93 = private unnamed_addr constant [39 x i8] c"multi_thread_rand_priv_bytes_succeeded\00", align 1
@multi_thread_rand_priv_bytes_succeeded = internal unnamed_addr global i1 false, align 4
@.str.94 = private unnamed_addr constant [37 x i8] c"set_reseed_time_interval(private, 1)\00", align 1
@.str.95 = private unnamed_addr constant [36 x i8] c"set_reseed_time_interval(public, 1)\00", align 1
@.str.96 = private unnamed_addr constant [21 x i8] c"reseed_time_interval\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_rand_reseed) #11
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 (i32)* noundef nonnull @test_rand_fork_safety, i32 noundef 16, i32 noundef 1) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 ()* noundef nonnull @test_rand_prediction_resistance) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 ()* noundef nonnull @test_multi_thread) #11
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_rand_reseed() #0 {
entry:
  %rand_add_buf = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %rand_add_buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #12
  %call2 = tail call %struct.rand_meth_st* @RAND_get_rand_method() #11
  %1 = bitcast %struct.rand_meth_st* %call2 to i8*
  %call3 = tail call %struct.rand_meth_st* @RAND_OpenSSL() #11
  %2 = bitcast %struct.rand_meth_st* %call3 to i8*
  %call4 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 558, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* noundef %1, i8* noundef %2) #11
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %entry
  %call8 = tail call %struct.evp_rand_ctx_st* @RAND_get0_primary(%struct.ossl_lib_ctx_st* noundef null) #11
  %3 = bitcast %struct.evp_rand_ctx_st* %call8 to i8*
  %call9 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 563, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i8* noundef %3) #11
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end7
  %call11 = tail call %struct.evp_rand_ctx_st* @RAND_get0_public(%struct.ossl_lib_ctx_st* noundef null) #11
  %4 = bitcast %struct.evp_rand_ctx_st* %call11 to i8*
  %call12 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 564, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8* noundef %4) #11
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %call15 = tail call %struct.evp_rand_ctx_st* @RAND_get0_private(%struct.ossl_lib_ctx_st* noundef null) #11
  %5 = bitcast %struct.evp_rand_ctx_st* %call15 to i8*
  %call16 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 565, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i8* noundef %5) #11
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %cleanup, label %if.end19

if.end19:                                         ; preds = %lor.lhs.false14
  %call20 = tail call i32 @test_ptr_ne(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 569, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* noundef %4, i8* noundef %5) #11
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %if.end19
  %call23 = tail call i32 @test_ptr_ne(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 570, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* noundef %4, i8* noundef %3) #11
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %call26 = tail call i32 @test_ptr_ne(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 571, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* noundef %5, i8* noundef %3) #11
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %cleanup, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false25
  %call29 = tail call fastcc %struct.prov_drbg_st* @prov_rand(%struct.evp_rand_ctx_st* noundef %call11) #13
  %parent = getelementptr inbounds %struct.prov_drbg_st, %struct.prov_drbg_st* %call29, i64 0, i32 6
  %6 = load i8*, i8** %parent, align 8, !tbaa !3
  %call30 = tail call fastcc %struct.prov_drbg_st* @prov_rand(%struct.evp_rand_ctx_st* noundef %call8) #13
  %7 = bitcast %struct.prov_drbg_st* %call30 to i8*
  %call31 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 572, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i8* noundef %6, i8* noundef %7) #11
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %cleanup, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false28
  %call34 = tail call fastcc %struct.prov_drbg_st* @prov_rand(%struct.evp_rand_ctx_st* noundef %call15) #13
  %parent35 = getelementptr inbounds %struct.prov_drbg_st, %struct.prov_drbg_st* %call34, i64 0, i32 6
  %8 = load i8*, i8** %parent35, align 8, !tbaa !3
  %call36 = tail call fastcc %struct.prov_drbg_st* @prov_rand(%struct.evp_rand_ctx_st* noundef %call8) #13
  %9 = bitcast %struct.prov_drbg_st* %call36 to i8*
  %call37 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 573, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i8* noundef %8, i8* noundef %9) #11
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %cleanup, label %if.end40

if.end40:                                         ; preds = %lor.lhs.false33
  %call42 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 577, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1) #11
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %cleanup, label %if.end45

if.end45:                                         ; preds = %if.end40
  %call46 = tail call i32 @EVP_RAND_uninstantiate(%struct.evp_rand_ctx_st* noundef %call8) #11
  %call47 = tail call i32 @EVP_RAND_uninstantiate(%struct.evp_rand_ctx_st* noundef %call15) #11
  %call48 = tail call i32 @EVP_RAND_uninstantiate(%struct.evp_rand_ctx_st* noundef %call11) #11
  %call49 = tail call fastcc i32 @test_drbg_reseed(%struct.evp_rand_ctx_st* noundef %call8, %struct.evp_rand_ctx_st* noundef %call11, %struct.evp_rand_ctx_st* noundef %call15, i8* noundef null, i8* noundef null, i32 noundef 1, i64 noundef 0) #13
  %cmp50 = icmp ne i32 %call49, 0
  %conv51 = zext i1 %cmp50 to i32
  %call52 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 592, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.18, i64 0, i64 0), i32 noundef %conv51) #11
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %cleanup, label %if.end55

if.end55:                                         ; preds = %if.end45
  %call56 = tail call fastcc i32 @test_drbg_reseed(%struct.evp_rand_ctx_st* noundef %call8, %struct.evp_rand_ctx_st* noundef %call11, %struct.evp_rand_ctx_st* noundef %call15, i8* noundef null, i8* noundef null, i32 noundef 0, i64 noundef 0) #13
  %cmp57 = icmp ne i32 %call56, 0
  %conv58 = zext i1 %cmp57 to i32
  %call59 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 602, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.19, i64 0, i64 0), i32 noundef %conv58) #11
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %cleanup, label %if.end62

if.end62:                                         ; preds = %if.end55
  tail call fastcc void @inc_reseed_counter(%struct.evp_rand_ctx_st* noundef %call8) #13
  %call63 = tail call fastcc i32 @test_drbg_reseed(%struct.evp_rand_ctx_st* noundef %call8, %struct.evp_rand_ctx_st* noundef %call11, %struct.evp_rand_ctx_st* noundef %call15, i8* noundef null, i8* noundef null, i32 noundef 0, i64 noundef 0) #13
  %cmp64 = icmp ne i32 %call63, 0
  %conv65 = zext i1 %cmp64 to i32
  %call66 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 613, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.20, i64 0, i64 0), i32 noundef %conv65) #11
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %cleanup, label %if.end69

if.end69:                                         ; preds = %if.end62
  tail call fastcc void @inc_reseed_counter(%struct.evp_rand_ctx_st* noundef %call8) #13
  tail call fastcc void @inc_reseed_counter(%struct.evp_rand_ctx_st* noundef %call15) #13
  %call70 = tail call fastcc i32 @test_drbg_reseed(%struct.evp_rand_ctx_st* noundef %call8, %struct.evp_rand_ctx_st* noundef %call11, %struct.evp_rand_ctx_st* noundef %call15, i8* noundef null, i8* noundef null, i32 noundef 0, i64 noundef 0) #13
  %cmp71 = icmp ne i32 %call70, 0
  %conv72 = zext i1 %cmp71 to i32
  %call73 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 625, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.21, i64 0, i64 0), i32 noundef %conv72) #11
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %cleanup, label %if.end76

if.end76:                                         ; preds = %if.end69
  tail call fastcc void @inc_reseed_counter(%struct.evp_rand_ctx_st* noundef %call8) #13
  tail call fastcc void @inc_reseed_counter(%struct.evp_rand_ctx_st* noundef %call11) #13
  %call77 = tail call fastcc i32 @test_drbg_reseed(%struct.evp_rand_ctx_st* noundef %call8, %struct.evp_rand_ctx_st* noundef %call11, %struct.evp_rand_ctx_st* noundef %call15, i8* noundef null, i8* noundef null, i32 noundef 0, i64 noundef 0) #13
  %cmp78 = icmp ne i32 %call77, 0
  %conv79 = zext i1 %cmp78 to i32
  %call80 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 637, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.22, i64 0, i64 0), i32 noundef %conv79) #11
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %cleanup, label %if.end83

if.end83:                                         ; preds = %if.end76
  %call84 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 114, i64 noundef 256) #11
  %call85 = call i64 @time(i64* noundef null) #11
  call void @RAND_add(i8* noundef nonnull %0, i32 noundef 256, double noundef 2.560000e+02) #11
  %call87 = call fastcc i32 @test_drbg_reseed(%struct.evp_rand_ctx_st* noundef %call8, %struct.evp_rand_ctx_st* noundef %call11, %struct.evp_rand_ctx_st* noundef %call15, i8* noundef null, i8* noundef null, i32 noundef 1, i64 noundef %call85) #13
  %cmp88 = icmp ne i32 %call87, 0
  %conv89 = zext i1 %cmp88 to i32
  %call90 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 658, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.23, i64 0, i64 0), i32 noundef %conv89) #11
  %tobool91.not = icmp ne i32 %call90, 0
  %spec.select = zext i1 %tobool91.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %if.end45, %if.end55, %if.end62, %if.end69, %if.end76, %if.end40, %if.end19, %lor.lhs.false22, %lor.lhs.false25, %lor.lhs.false28, %lor.lhs.false33, %if.end7, %lor.lhs.false, %lor.lhs.false14, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %lor.lhs.false14 ], [ 0, %lor.lhs.false ], [ 0, %if.end7 ], [ 0, %lor.lhs.false33 ], [ 0, %lor.lhs.false28 ], [ 0, %lor.lhs.false25 ], [ 0, %lor.lhs.false22 ], [ 0, %if.end19 ], [ 0, %if.end40 ], [ 0, %if.end76 ], [ 0, %if.end69 ], [ 0, %if.end62 ], [ 0, %if.end55 ], [ 0, %if.end45 ], [ %spec.select, %if.end83 ]
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #12
  ret i32 %retval.0
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_rand_fork_safety(i32 noundef %i) #0 {
entry:
  %random = alloca [1 x i8], align 1
  %0 = getelementptr inbounds [1 x i8], [1 x i8]* %random, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %0) #12
  %call = tail call %struct.evp_rand_ctx_st* @RAND_get0_primary(%struct.ossl_lib_ctx_st* noundef null) #11
  %1 = bitcast %struct.evp_rand_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 524, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i8* noundef %1) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.evp_rand_ctx_st* @RAND_get0_public(%struct.ossl_lib_ctx_st* noundef null) #11
  %2 = bitcast %struct.evp_rand_ctx_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 525, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8* noundef %2) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.evp_rand_ctx_st* @RAND_get0_private(%struct.ossl_lib_ctx_st* noundef null) #11
  %3 = bitcast %struct.evp_rand_ctx_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 526, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i8* noundef %3) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false5
  %call9 = tail call fastcc i32 @test_rand_reseed_on_fork(%struct.evp_rand_ctx_st* noundef %call, %struct.evp_rand_ctx_st* noundef %call2, %struct.evp_rand_ctx_st* noundef %call6) #13
  %cmp = icmp ne i32 %call9, 0
  %conv = zext i1 %cmp to i32
  %call10 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 530, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.48, i64 0, i64 0), i32 noundef %conv) #11
  %tobool11.not = icmp ne i32 %call10, 0
  %call14 = call i32 @RAND_bytes(i8* noundef nonnull %0, i32 noundef 1) #11
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %call17 = call i32 @RAND_priv_bytes(i8* noundef nonnull %0, i32 noundef 1) #11
  %tobool18 = icmp ne i32 %call17, 0
  %phi.cast = zext i1 %tobool18 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %4 = phi i32 [ 0, %if.end ], [ %phi.cast, %land.rhs ]
  %call21 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 534, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.49, i64 0, i64 0), i32 noundef %4) #11
  %tobool22.not = icmp ne i32 %call21, 0
  %narrow = select i1 %tobool22.not, i1 %tobool11.not, i1 false
  %spec.select33 = zext i1 %narrow to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %lor.lhs.false5, %land.end
  %retval.0 = phi i32 [ %spec.select33, %land.end ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_rand_prediction_resistance() #0 {
entry:
  %buf1 = alloca [51 x i8], align 16
  %buf2 = alloca [51 x i8], align 16
  %0 = getelementptr inbounds [51 x i8], [51 x i8]* %buf1, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %0) #12
  %1 = getelementptr inbounds [51 x i8], [51 x i8]* %buf2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %1) #12
  %call2 = tail call fastcc %struct.evp_rand_ctx_st* @new_drbg(%struct.evp_rand_ctx_st* noundef null) #13
  %2 = bitcast %struct.evp_rand_ctx_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 829, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.67, i64 0, i64 0), i8* noundef %2) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call6 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 830, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.68, i64 0, i64 0), i32 noundef 1) #11
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %err, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %call9 = tail call i32 @EVP_RAND_instantiate(%struct.evp_rand_ctx_st* noundef %call2, i32 noundef 0, i32 noundef 0, i8* noundef null, i64 noundef 0, %struct.ossl_param_st* noundef null) #11
  %cmp10 = icmp ne i32 %call9, 0
  %conv11 = zext i1 %cmp10 to i32
  %call12 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 831, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv11) #11
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false8
  %call15 = tail call fastcc %struct.evp_rand_ctx_st* @new_drbg(%struct.evp_rand_ctx_st* noundef %call2) #13
  %3 = bitcast %struct.evp_rand_ctx_st* %call15 to i8*
  %call16 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 832, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.70, i64 0, i64 0), i8* noundef %3) #11
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false14
  %call19 = tail call i32 @EVP_RAND_instantiate(%struct.evp_rand_ctx_st* noundef %call15, i32 noundef 0, i32 noundef 0, i8* noundef null, i64 noundef 0, %struct.ossl_param_st* noundef null) #11
  %cmp20 = icmp ne i32 %call19, 0
  %conv21 = zext i1 %cmp20 to i32
  %call22 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 833, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.71, i64 0, i64 0), i32 noundef %conv21) #11
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %err, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false18
  %call25 = tail call fastcc %struct.evp_rand_ctx_st* @new_drbg(%struct.evp_rand_ctx_st* noundef %call15) #13
  %4 = bitcast %struct.evp_rand_ctx_st* %call25 to i8*
  %call26 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 834, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.72, i64 0, i64 0), i8* noundef %4) #11
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false24
  %call29 = tail call i32 @EVP_RAND_instantiate(%struct.evp_rand_ctx_st* noundef %call25, i32 noundef 0, i32 noundef 0, i8* noundef null, i64 noundef 0, %struct.ossl_param_st* noundef null) #11
  %cmp30 = icmp ne i32 %call29, 0
  %conv31 = zext i1 %cmp30 to i32
  %call32 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 835, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.73, i64 0, i64 0), i32 noundef %conv31) #11
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %if.end35

if.end35:                                         ; preds = %lor.lhs.false28
  tail call fastcc void @inc_reseed_counter(%struct.evp_rand_ctx_st* noundef %call15) #13
  %call36 = tail call fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %call2) #13
  %call37 = tail call fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %call15) #13
  %call38 = tail call fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %call25) #13
  %call39 = tail call i32 @EVP_RAND_reseed(%struct.evp_rand_ctx_st* noundef %call25, i32 noundef 0, i8* noundef null, i64 noundef 0, i8* noundef null, i64 noundef 0) #11
  %cmp40 = icmp ne i32 %call39, 0
  %conv41 = zext i1 %cmp40 to i32
  %call42 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 846, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.74, i64 0, i64 0), i32 noundef %conv41) #11
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %err, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %if.end35
  %call45 = tail call fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %call2) #13
  %call46 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 847, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i64 0, i64 0), i32 noundef %call45, i32 noundef %call36) #11
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %err, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %lor.lhs.false44
  %call49 = tail call fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %call15) #13
  %call50 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 848, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.77, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call49, i32 noundef %call37) #11
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %err, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false48
  %call53 = tail call fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %call25) #13
  %call54 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 849, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.79, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0), i32 noundef %call53, i32 noundef %call38) #11
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %err, label %if.end57

if.end57:                                         ; preds = %lor.lhs.false52
  %call58 = tail call fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %call25) #13
  %call59 = tail call i32 @EVP_RAND_reseed(%struct.evp_rand_ctx_st* noundef %call25, i32 noundef 1, i8* noundef null, i64 noundef 0, i8* noundef null, i64 noundef 0) #11
  %cmp60 = icmp ne i32 %call59, 0
  %conv61 = zext i1 %cmp60 to i32
  %call62 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 857, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.81, i64 0, i64 0), i32 noundef %conv61) #11
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %err, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %if.end57
  %call65 = tail call fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %call2) #13
  %call66 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 858, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i64 0, i64 0), i32 noundef %call65, i32 noundef %call36) #11
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %err, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %lor.lhs.false64
  %call69 = tail call fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %call15) #13
  %call70 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 859, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.77, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call69, i32 noundef %call37) #11
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %err, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %lor.lhs.false68
  %call73 = tail call fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %call25) #13
  %call74 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 860, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.79, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0), i32 noundef %call73, i32 noundef %call58) #11
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %err, label %if.end77

if.end77:                                         ; preds = %lor.lhs.false72
  tail call fastcc void @inc_reseed_counter(%struct.evp_rand_ctx_st* noundef %call15) #13
  %call78 = tail call fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %call2) #13
  %call79 = tail call fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %call15) #13
  %call80 = tail call fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %call25) #13
  %call81 = call i32 @EVP_RAND_generate(%struct.evp_rand_ctx_st* noundef %call25, i8* noundef nonnull %0, i64 noundef 51, i32 noundef 0, i32 noundef 0, i8* noundef null, i64 noundef 0) #11
  %cmp82 = icmp ne i32 %call81, 0
  %conv83 = zext i1 %cmp82 to i32
  %call84 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 869, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.82, i64 0, i64 0), i32 noundef %conv83) #11
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %err, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %if.end77
  %call87 = call fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %call2) #13
  %call88 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 870, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i64 0, i64 0), i32 noundef %call87, i32 noundef %call78) #11
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %err, label %lor.lhs.false90

lor.lhs.false90:                                  ; preds = %lor.lhs.false86
  %call91 = call fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %call15) #13
  %call92 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 871, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.77, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call91, i32 noundef %call79) #11
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %err, label %lor.lhs.false94

lor.lhs.false94:                                  ; preds = %lor.lhs.false90
  %call95 = call fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %call25) #13
  %call96 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 872, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.79, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0), i32 noundef %call95, i32 noundef %call80) #11
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %err, label %if.end99

if.end99:                                         ; preds = %lor.lhs.false94
  %call100 = call fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %call25) #13
  %call102 = call i32 @EVP_RAND_generate(%struct.evp_rand_ctx_st* noundef %call25, i8* noundef nonnull %1, i64 noundef 51, i32 noundef 0, i32 noundef 1, i8* noundef null, i64 noundef 0) #11
  %cmp103 = icmp ne i32 %call102, 0
  %conv104 = zext i1 %cmp103 to i32
  %call105 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 880, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.83, i64 0, i64 0), i32 noundef %conv104) #11
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %err, label %lor.lhs.false107

lor.lhs.false107:                                 ; preds = %if.end99
  %call108 = call fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %call2) #13
  %call109 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 881, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i64 0, i64 0), i32 noundef %call108, i32 noundef %call78) #11
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %err, label %lor.lhs.false111

lor.lhs.false111:                                 ; preds = %lor.lhs.false107
  %call112 = call fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %call15) #13
  %call113 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 882, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.77, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call112, i32 noundef %call79) #11
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %err, label %lor.lhs.false115

lor.lhs.false115:                                 ; preds = %lor.lhs.false111
  %call116 = call fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %call25) #13
  %call117 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 883, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.79, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0), i32 noundef %call116, i32 noundef %call100) #11
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %err, label %lor.lhs.false119

lor.lhs.false119:                                 ; preds = %lor.lhs.false115
  %call122 = call i32 @test_mem_ne(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 884, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef 51, i8* noundef nonnull %1, i64 noundef 51) #11
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %err, label %if.end125

if.end125:                                        ; preds = %lor.lhs.false119
  call fastcc void @inc_reseed_counter(%struct.evp_rand_ctx_st* noundef %call15) #13
  %call126 = call fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %call2) #13
  %call127 = call fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %call15) #13
  %call128 = call fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %call25) #13
  %call129 = call i32 @EVP_RAND_reseed(%struct.evp_rand_ctx_st* noundef %call25, i32 noundef 0, i8* noundef null, i64 noundef 0, i8* noundef null, i64 noundef 0) #11
  %cmp130 = icmp ne i32 %call129, 0
  %conv131 = zext i1 %cmp130 to i32
  %call132 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 892, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.74, i64 0, i64 0), i32 noundef %conv131) #11
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %err, label %lor.lhs.false134

lor.lhs.false134:                                 ; preds = %if.end125
  %call135 = call fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %call2) #13
  %call136 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 893, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i64 0, i64 0), i32 noundef %call135, i32 noundef %call126) #11
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %err, label %lor.lhs.false138

lor.lhs.false138:                                 ; preds = %lor.lhs.false134
  %call139 = call fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %call15) #13
  %call140 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 894, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.77, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call139, i32 noundef %call127) #11
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %err, label %lor.lhs.false142

lor.lhs.false142:                                 ; preds = %lor.lhs.false138
  %call143 = call fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %call25) #13
  %call144 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 895, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.79, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0), i32 noundef %call143, i32 noundef %call128) #11
  %tobool145.not = icmp ne i32 %call144, 0
  %spec.select = zext i1 %tobool145.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false142, %if.end125, %lor.lhs.false134, %lor.lhs.false138, %if.end99, %lor.lhs.false107, %lor.lhs.false111, %lor.lhs.false115, %lor.lhs.false119, %if.end77, %lor.lhs.false86, %lor.lhs.false90, %lor.lhs.false94, %if.end57, %lor.lhs.false64, %lor.lhs.false68, %lor.lhs.false72, %if.end35, %lor.lhs.false44, %lor.lhs.false48, %lor.lhs.false52, %entry, %lor.lhs.false, %lor.lhs.false8, %lor.lhs.false14, %lor.lhs.false18, %lor.lhs.false24, %lor.lhs.false28
  %y.0 = phi %struct.evp_rand_ctx_st* [ %call15, %lor.lhs.false138 ], [ %call15, %lor.lhs.false134 ], [ %call15, %if.end125 ], [ %call15, %lor.lhs.false119 ], [ %call15, %lor.lhs.false115 ], [ %call15, %lor.lhs.false111 ], [ %call15, %lor.lhs.false107 ], [ %call15, %if.end99 ], [ %call15, %lor.lhs.false94 ], [ %call15, %lor.lhs.false90 ], [ %call15, %lor.lhs.false86 ], [ %call15, %if.end77 ], [ %call15, %lor.lhs.false72 ], [ %call15, %lor.lhs.false68 ], [ %call15, %lor.lhs.false64 ], [ %call15, %if.end57 ], [ %call15, %lor.lhs.false52 ], [ %call15, %lor.lhs.false48 ], [ %call15, %lor.lhs.false44 ], [ %call15, %if.end35 ], [ %call15, %lor.lhs.false28 ], [ %call15, %lor.lhs.false24 ], [ %call15, %lor.lhs.false18 ], [ %call15, %lor.lhs.false14 ], [ null, %lor.lhs.false8 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call15, %lor.lhs.false142 ]
  %z.0 = phi %struct.evp_rand_ctx_st* [ %call25, %lor.lhs.false138 ], [ %call25, %lor.lhs.false134 ], [ %call25, %if.end125 ], [ %call25, %lor.lhs.false119 ], [ %call25, %lor.lhs.false115 ], [ %call25, %lor.lhs.false111 ], [ %call25, %lor.lhs.false107 ], [ %call25, %if.end99 ], [ %call25, %lor.lhs.false94 ], [ %call25, %lor.lhs.false90 ], [ %call25, %lor.lhs.false86 ], [ %call25, %if.end77 ], [ %call25, %lor.lhs.false72 ], [ %call25, %lor.lhs.false68 ], [ %call25, %lor.lhs.false64 ], [ %call25, %if.end57 ], [ %call25, %lor.lhs.false52 ], [ %call25, %lor.lhs.false48 ], [ %call25, %lor.lhs.false44 ], [ %call25, %if.end35 ], [ %call25, %lor.lhs.false28 ], [ %call25, %lor.lhs.false24 ], [ null, %lor.lhs.false18 ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false8 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call25, %lor.lhs.false142 ]
  %ret.0 = phi i32 [ 0, %lor.lhs.false138 ], [ 0, %lor.lhs.false134 ], [ 0, %if.end125 ], [ 0, %lor.lhs.false119 ], [ 0, %lor.lhs.false115 ], [ 0, %lor.lhs.false111 ], [ 0, %lor.lhs.false107 ], [ 0, %if.end99 ], [ 0, %lor.lhs.false94 ], [ 0, %lor.lhs.false90 ], [ 0, %lor.lhs.false86 ], [ 0, %if.end77 ], [ 0, %lor.lhs.false72 ], [ 0, %lor.lhs.false68 ], [ 0, %lor.lhs.false64 ], [ 0, %if.end57 ], [ 0, %lor.lhs.false52 ], [ 0, %lor.lhs.false48 ], [ 0, %lor.lhs.false44 ], [ 0, %if.end35 ], [ 0, %lor.lhs.false28 ], [ 0, %lor.lhs.false24 ], [ 0, %lor.lhs.false18 ], [ 0, %lor.lhs.false14 ], [ 0, %lor.lhs.false8 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false142 ]
  call void @EVP_RAND_CTX_free(%struct.evp_rand_ctx_st* noundef %z.0) #11
  call void @EVP_RAND_CTX_free(%struct.evp_rand_ctx_st* noundef %y.0) #11
  call void @EVP_RAND_CTX_free(%struct.evp_rand_ctx_st* noundef %call2) #11
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %0) #12
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_multi_thread() #0 {
entry:
  %t = alloca [3 x i64], align 16
  %0 = bitcast [3 x i64]* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #12
  %arrayidx = getelementptr inbounds [3 x i64], [3 x i64]* %t, i64 0, i64 0
  call fastcc void @run_thread(i64* noundef nonnull %arrayidx) #13
  %arrayidx.1 = getelementptr inbounds [3 x i64], [3 x i64]* %t, i64 0, i64 1
  call fastcc void @run_thread(i64* noundef nonnull %arrayidx.1) #13
  %arrayidx.2 = getelementptr inbounds [3 x i64], [3 x i64]* %t, i64 0, i64 2
  call fastcc void @run_thread(i64* noundef nonnull %arrayidx.2) #13
  call fastcc void @run_multi_thread_test() #13
  %1 = load i64, i64* %arrayidx, align 16, !tbaa !11
  call fastcc void @wait_for_thread(i64 noundef %1) #13
  %2 = load i64, i64* %arrayidx.1, align 8, !tbaa !11
  call fastcc void @wait_for_thread(i64 noundef %2) #13
  %3 = load i64, i64* %arrayidx.2, align 16, !tbaa !11
  call fastcc void @wait_for_thread(i64 noundef %3) #13
  %.b = load i1, i1* @multi_thread_rand_bytes_succeeded, align 4
  %not..b = xor i1 %.b, true
  %conv = zext i1 %not..b to i32
  %call11 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 790, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.92, i64 0, i64 0), i32 noundef %conv) #11
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %.b25 = load i1, i1* @multi_thread_rand_priv_bytes_succeeded, align 4
  %not..b25 = xor i1 %.b25, true
  %conv13 = zext i1 %not..b25 to i32
  %call14 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 792, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.93, i64 0, i64 0), i32 noundef %conv13) #11
  %tobool15.not = icmp ne i32 %call14, 0
  %. = zext i1 %tobool15.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_ptr_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.rand_meth_st* @RAND_get_rand_method() local_unnamed_addr #1

declare dso_local %struct.rand_meth_st* @RAND_OpenSSL() local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_rand_ctx_st* @RAND_get0_primary(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_rand_ctx_st* @RAND_get0_public(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_rand_ctx_st* @RAND_get0_private(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.prov_drbg_st* @prov_rand(%struct.evp_rand_ctx_st* nocapture noundef readonly %drbg) unnamed_addr #3 {
entry:
  %algctx = getelementptr inbounds %struct.evp_rand_ctx_st, %struct.evp_rand_ctx_st* %drbg, i64 0, i32 1
  %0 = bitcast i8** %algctx to %struct.prov_drbg_st**
  %1 = load %struct.prov_drbg_st*, %struct.prov_drbg_st** %0, align 8, !tbaa !12
  ret %struct.prov_drbg_st* %1
}

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_RAND_uninstantiate(%struct.evp_rand_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_drbg_reseed(%struct.evp_rand_ctx_st* noundef %primary, %struct.evp_rand_ctx_st* noundef %public, %struct.evp_rand_ctx_st* noundef %private, i8* noundef %public_random, i8* noundef %private_random, i32 noundef %expect_primary_reseed, i64 noundef %reseed_when) unnamed_addr #0 {
entry:
  %dummy = alloca [16 x i8], align 16
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %dummy, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  %cmp = icmp eq i8* %public_random, null
  %spec.select = select i1 %cmp, i8* %0, i8* %public_random
  %cmp1 = icmp eq i8* %private_random, null
  %private_random.addr.0 = select i1 %cmp1, i8* %0, i8* %private_random
  %call = tail call fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %primary) #13
  %call5 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 200, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call, i32 noundef 0) #11
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call7 = tail call fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %public) #13
  %call8 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 201, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call7, i32 noundef 0) #11
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %call11 = tail call fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %private) #13
  %call12 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 202, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call11, i32 noundef 0) #11
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup, label %if.end15

if.end15:                                         ; preds = %lor.lhs.false10
  %cmp16 = icmp eq i64 %reseed_when, 0
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end15
  %call18 = tail call i64 @time(i64* noundef null) #11
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end15
  %reseed_when.addr.0 = phi i64 [ %call18, %if.then17 ], [ %reseed_when, %if.end15 ]
  %cmp20 = icmp eq i32 %expect_primary_reseed, 1
  %cond21 = select i1 %cmp20, i64 %reseed_when.addr.0, i64 0
  %call22 = call fastcc i32 @rand_bytes(i8* noundef nonnull %spec.select, i32 noundef 16) #13
  %call23 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 215, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0), i32 noundef %call22, i32 noundef 1) #11
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %if.end19
  %call26 = call fastcc i32 @rand_priv_bytes(i8* noundef nonnull %private_random.addr.0, i32 noundef 16) #13
  %call27 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 217, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.30, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0), i32 noundef %call26, i32 noundef 1) #11
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %cleanup, label %if.end30

if.end30:                                         ; preds = %lor.lhs.false25
  %call31 = call i64 @time(i64* noundef null) #11
  %call32 = call fastcc i32 @state(%struct.evp_rand_ctx_st* noundef %primary) #13
  %call33 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 227, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0), i32 noundef %call32, i32 noundef 1) #11
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %cleanup, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %if.end30
  %call36 = call fastcc i32 @state(%struct.evp_rand_ctx_st* noundef %public) #13
  %call37 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 228, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0), i32 noundef %call36, i32 noundef 1) #11
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %cleanup, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %lor.lhs.false35
  %call40 = call fastcc i32 @state(%struct.evp_rand_ctx_st* noundef %private) #13
  %call41 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 229, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0), i32 noundef %call40, i32 noundef 1) #11
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %cleanup, label %if.then46

if.then46:                                        ; preds = %lor.lhs.false39
  %call47 = call fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %primary) #13
  %call48 = call i32 @test_int_ge(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 234, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i32 noundef %call47, i32 noundef %call) #11
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %cleanup, label %if.then54

if.then54:                                        ; preds = %if.then46
  %call55 = call fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %public) #13
  %call56 = call i32 @test_int_ge(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 240, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i64 0, i64 0), i32 noundef %call55, i32 noundef %call7) #11
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %cleanup, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %if.then54
  %call59 = call fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %public) #13
  %call60 = call fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %primary) #13
  %call61 = call i32 @test_uint_ge(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 242, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i64 0, i64 0), i32 noundef %call59, i32 noundef %call60) #11
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %cleanup, label %if.then67

if.then67:                                        ; preds = %lor.lhs.false58
  %call68 = call fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %private) #13
  %call69 = call i32 @test_int_ge(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 248, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0), i32 noundef %call68, i32 noundef %call11) #11
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %cleanup, label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %if.then67
  %call72 = call fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %private) #13
  %call73 = call fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %primary) #13
  %call74 = call i32 @test_uint_ge(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 250, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i64 0, i64 0), i32 noundef %call72, i32 noundef %call73) #11
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %cleanup, label %if.then80

if.then80:                                        ; preds = %lor.lhs.false71
  %call81 = call fastcc i64 @reseed_time(%struct.evp_rand_ctx_st* noundef %primary) #13
  %call82 = call i32 @test_time_t_le(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 256, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i64 0, i64 0), i64 noundef %cond21, i64 noundef %call81) #11
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %cleanup, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %if.then80
  %call85 = call fastcc i64 @reseed_time(%struct.evp_rand_ctx_st* noundef %primary) #13
  %call86 = call i32 @test_time_t_le(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 257, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i64 0, i64 0), i64 noundef %call85, i64 noundef %call31) #11
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %cleanup, label %if.end89

if.end89:                                         ; preds = %lor.lhs.false84
  %call90 = call fastcc i64 @reseed_time(%struct.evp_rand_ctx_st* noundef %public) #13
  %call91 = call fastcc i64 @reseed_time(%struct.evp_rand_ctx_st* noundef %primary) #13
  %call92 = call i32 @test_time_t_ge(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 261, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i64 0, i64 0), i64 noundef %call90, i64 noundef %call91) #11
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %cleanup, label %lor.lhs.false94

lor.lhs.false94:                                  ; preds = %if.end89
  %call95 = call fastcc i64 @reseed_time(%struct.evp_rand_ctx_st* noundef %private) #13
  %call96 = call fastcc i64 @reseed_time(%struct.evp_rand_ctx_st* noundef %primary) #13
  %call97 = call i32 @test_time_t_ge(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 262, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i64 0, i64 0), i64 noundef %call95, i64 noundef %call96) #11
  %tobool98.not = icmp ne i32 %call97, 0
  %spec.select1 = zext i1 %tobool98.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false94, %if.end89, %if.then80, %lor.lhs.false84, %if.then67, %lor.lhs.false71, %if.then54, %lor.lhs.false58, %if.then46, %if.end30, %lor.lhs.false35, %lor.lhs.false39, %if.end19, %lor.lhs.false25, %entry, %lor.lhs.false, %lor.lhs.false10
  %retval.0 = phi i32 [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %lor.lhs.false25 ], [ 0, %if.end19 ], [ 0, %lor.lhs.false39 ], [ 0, %lor.lhs.false35 ], [ 0, %if.end30 ], [ 0, %if.then46 ], [ 0, %lor.lhs.false58 ], [ 0, %if.then54 ], [ 0, %lor.lhs.false71 ], [ 0, %if.then67 ], [ 0, %lor.lhs.false84 ], [ 0, %if.then80 ], [ 0, %if.end89 ], [ %spec.select1, %lor.lhs.false94 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @inc_reseed_counter(%struct.evp_rand_ctx_st* noundef %drbg) unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %drbg) #13
  %add = add i32 %call, 1
  tail call fastcc void @set_reseed_counter(%struct.evp_rand_ctx_st* noundef %drbg, i32 noundef %add) #13
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) local_unnamed_addr #4

declare dso_local void @RAND_add(i8* noundef, i32 noundef, double noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_int_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @reseed_counter(%struct.evp_rand_ctx_st* noundef %drbg) unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @query_rand_uint(%struct.evp_rand_ctx_st* noundef %drbg) #13
  ret i32 %call
}

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @rand_bytes(i8* noundef %buf, i32 noundef %num) unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_rand_ctx_st* @RAND_get0_public(%struct.ossl_lib_ctx_st* noundef null) #11
  %call1 = tail call fastcc i32 @gen_bytes(%struct.evp_rand_ctx_st* noundef %call, i8* noundef %buf, i32 noundef %num) #13
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @rand_priv_bytes(i8* noundef %buf, i32 noundef %num) unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_rand_ctx_st* @RAND_get0_private(%struct.ossl_lib_ctx_st* noundef null) #11
  %call1 = tail call fastcc i32 @gen_bytes(%struct.evp_rand_ctx_st* noundef %call, i8* noundef %buf, i32 noundef %num) #13
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @state(%struct.evp_rand_ctx_st* noundef %drbg) unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_RAND_get_state(%struct.evp_rand_ctx_st* noundef %drbg) #11
  ret i32 %call
}

declare dso_local i32 @test_int_ge(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_uint_ge(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_time_t_le(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @reseed_time(%struct.evp_rand_ctx_st* noundef %drbg) unnamed_addr #0 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %t = alloca i64, align 8
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  %1 = bitcast i64* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #12
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params3 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_time_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params3, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i64* noundef nonnull %t) #11
  %call = call i32 @EVP_RAND_CTX_get_params(%struct.evp_rand_ctx_st* noundef %drbg, %struct.ossl_param_st* noundef nonnull %arraydecay) #11
  %tobool.not = icmp eq i32 %call, 0
  %2 = load i64, i64* %t, align 8
  %retval.0 = select i1 %tobool.not, i64 0, i64 %2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #12
  ret i64 %retval.0
}

declare dso_local i32 @test_time_t_ge(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @query_rand_uint(%struct.evp_rand_ctx_st* noundef %drbg) unnamed_addr #0 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %n = alloca i32, align 4
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  %1 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #12
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params1 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i64 0, i64 0), i32* noundef nonnull %n) #11
  %call = call i32 @EVP_RAND_CTX_get_params(%struct.evp_rand_ctx_st* noundef %drbg, %struct.ossl_param_st* noundef nonnull %arraydecay) #11
  %tobool.not = icmp eq i32 %call, 0
  %2 = load i32, i32* %n, align 4
  %retval.0 = select i1 %tobool.not, i32 0, i32 %2
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

declare dso_local void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare dso_local i32 @EVP_RAND_CTX_get_params(%struct.evp_rand_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @gen_bytes(%struct.evp_rand_ctx_st* noundef %drbg, i8* noundef %buf, i32 noundef %num) unnamed_addr #0 {
entry:
  %call = tail call %struct.rand_meth_st* @RAND_get_rand_method() #11
  %cmp.not = icmp eq %struct.rand_meth_st* %call, null
  br i1 %cmp.not, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call %struct.rand_meth_st* @RAND_OpenSSL() #11
  %cmp2.not = icmp eq %struct.rand_meth_st* %call, %call1
  br i1 %cmp2.not, label %if.end7, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %bytes = getelementptr inbounds %struct.rand_meth_st, %struct.rand_meth_st* %call, i64 0, i32 1
  %0 = load i32 (i8*, i32)*, i32 (i8*, i32)** %bytes, align 8, !tbaa !14
  %cmp3.not = icmp eq i32 (i8*, i32)* %0, null
  br i1 %cmp3.not, label %cleanup, label %if.then4

if.then4:                                         ; preds = %if.then
  %call6 = tail call i32 %0(i8* noundef %buf, i32 noundef %num) #11
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true, %entry
  %cmp8.not = icmp eq %struct.evp_rand_ctx_st* %drbg, null
  br i1 %cmp8.not, label %cleanup, label %if.then9

if.then9:                                         ; preds = %if.end7
  %1 = zext i32 %num to i64
  %call10 = tail call i32 @EVP_RAND_generate(%struct.evp_rand_ctx_st* noundef nonnull %drbg, i8* noundef %buf, i64 noundef %1, i32 noundef 0, i32 noundef 0, i8* noundef null, i64 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then, %if.then9, %if.then4
  %retval.0 = phi i32 [ %call6, %if.then4 ], [ %call10, %if.then9 ], [ -1, %if.then ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

declare dso_local i32 @EVP_RAND_generate(%struct.evp_rand_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef, i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_RAND_get_state(%struct.evp_rand_ctx_st* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_construct_time_t(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i64* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @set_reseed_counter(%struct.evp_rand_ctx_st* nocapture noundef readonly %drbg, i32 noundef %n) unnamed_addr #7 {
entry:
  %call = tail call fastcc %struct.prov_drbg_st* @prov_rand(%struct.evp_rand_ctx_st* noundef %drbg) #13
  %reseed_counter = getelementptr inbounds %struct.prov_drbg_st, %struct.prov_drbg_st* %call, i64 0, i32 29
  store atomic i32 %n, i32* %reseed_counter seq_cst, align 4, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_rand_reseed_on_fork(%struct.evp_rand_ctx_st* noundef %primary, %struct.evp_rand_ctx_st* noundef %public, %struct.evp_rand_ctx_st* noundef %private) unnamed_addr #0 {
entry:
  %duplicate = alloca i64, align 8
  %tmpcast = bitcast i64* %duplicate to [2 x i32]*
  %random = alloca [32 x i8], align 16
  %sample = alloca [320 x i8], align 16
  %result = alloca [20 x %struct.drbg_fork_result_st], align 16
  %call = tail call i32 @getpid() #11
  %call1 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0)) #11
  %cmp.not = icmp eq i8* %call1, null
  %0 = bitcast i64* %duplicate to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store i64 0, i64* %duplicate, align 8
  %1 = getelementptr inbounds [32 x i8], [32 x i8]* %random, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #12
  %2 = getelementptr inbounds [320 x i8], [320 x i8]* %sample, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 320, i8* nonnull %2) #12
  %3 = getelementptr inbounds [20 x %struct.drbg_fork_result_st], [20 x %struct.drbg_fork_result_st]* %result, i64 0, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 800, i8* nonnull %3) #12
  %arrayidx2 = getelementptr inbounds [20 x %struct.drbg_fork_result_st], [20 x %struct.drbg_fork_result_st]* %result, i64 0, i64 2
  %call3 = call i8* @memset(i8* noundef nonnull %3, i32 noundef 0, i64 noundef 800) #11
  br label %for.body

for.body:                                         ; preds = %entry, %if.end
  %presult.0217 = phi %struct.drbg_fork_result_st* [ %arrayidx2, %entry ], [ %add.ptr, %if.end ]
  %i.0216 = phi i32 [ 1, %entry ], [ %inc, %if.end ]
  %pindex = getelementptr inbounds %struct.drbg_fork_result_st, %struct.drbg_fork_result_st* %presult.0217, i64 1, i32 1
  store i32 %i.0216, i32* %pindex, align 4, !tbaa !17
  %pindex8 = getelementptr inbounds %struct.drbg_fork_result_st, %struct.drbg_fork_result_st* %presult.0217, i64 0, i32 1
  store i32 %i.0216, i32* %pindex8, align 4, !tbaa !17
  %arraydecay = getelementptr inbounds %struct.drbg_fork_result_st, %struct.drbg_fork_result_st* %presult.0217, i64 0, i32 4, i64 0
  %call10 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %arraydecay, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i64 0, i64 0), i32 noundef %i.0216) #11
  %arraydecay13 = getelementptr inbounds %struct.drbg_fork_result_st, %struct.drbg_fork_result_st* %presult.0217, i64 1, i32 4, i64 0
  %call17 = call i8* @strcpy(i8* noundef nonnull %arraydecay13, i8* noundef nonnull %arraydecay) #11
  %call18 = call fastcc i32 @test_drbg_reseed_in_child(%struct.evp_rand_ctx_st* noundef %primary, %struct.evp_rand_ctx_st* noundef %public, %struct.evp_rand_ctx_st* noundef %private, %struct.drbg_fork_result_st* noundef nonnull %presult.0217) #13
  %cmp19 = icmp ne i32 %call18, 0
  %conv20 = zext i1 %cmp19 to i32
  %call21 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 425, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.52, i64 0, i64 0), i32 noundef %conv20) #11
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %for.body
  %add.ptr = getelementptr inbounds %struct.drbg_fork_result_st, %struct.drbg_fork_result_st* %presult.0217, i64 2
  %inc = add nuw nsw i32 %i.0216, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !19

for.end:                                          ; preds = %if.end
  %arrayidx23 = getelementptr inbounds [32 x i8], [32 x i8]* %random, i64 0, i64 16
  %call24 = call fastcc i32 @test_drbg_reseed(%struct.evp_rand_ctx_st* noundef %primary, %struct.evp_rand_ctx_st* noundef %public, %struct.evp_rand_ctx_st* noundef %private, i8* noundef nonnull %1, i8* noundef nonnull %arrayidx23, i32 noundef 0, i64 noundef 0) #13
  %cmp25 = icmp ne i32 %call24, 0
  %conv26 = zext i1 %cmp25 to i32
  %call27 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 435, i8* noundef getelementptr inbounds ([92 x i8], [92 x i8]* @.str.53, i64 0, i64 0), i32 noundef %conv26) #11
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %cleanup, label %if.end30

if.end30:                                         ; preds = %for.end
  %arraydecay33 = getelementptr inbounds [20 x %struct.drbg_fork_result_st], [20 x %struct.drbg_fork_result_st]* %result, i64 0, i64 0, i32 4, i64 0
  %call34 = call i8* @strcpy(i8* noundef nonnull %arraydecay33, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0)) #11
  %arraydecay37 = getelementptr inbounds [20 x %struct.drbg_fork_result_st], [20 x %struct.drbg_fork_result_st]* %result, i64 0, i64 1, i32 4, i64 0
  %call38 = call i8* @strcpy(i8* noundef nonnull %arraydecay37, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0)) #11
  %pid40 = getelementptr inbounds [20 x %struct.drbg_fork_result_st], [20 x %struct.drbg_fork_result_st]* %result, i64 0, i64 0, i32 2
  store i32 %call, i32* %pid40, align 4, !tbaa !21
  %private42 = getelementptr inbounds [20 x %struct.drbg_fork_result_st], [20 x %struct.drbg_fork_result_st]* %result, i64 0, i64 0, i32 3
  store i32 0, i32* %private42, align 8, !tbaa !22
  %call47 = call i8* @memcpy(i8* noundef nonnull %3, i8* noundef nonnull %1, i64 noundef 16) #11
  %pid49 = getelementptr inbounds [20 x %struct.drbg_fork_result_st], [20 x %struct.drbg_fork_result_st]* %result, i64 0, i64 1, i32 2
  store i32 %call, i32* %pid49, align 4, !tbaa !21
  %private51 = getelementptr inbounds [20 x %struct.drbg_fork_result_st], [20 x %struct.drbg_fork_result_st]* %result, i64 0, i64 1, i32 3
  store i32 1, i32* %private51, align 16, !tbaa !22
  %arraydecay54 = getelementptr inbounds [20 x %struct.drbg_fork_result_st], [20 x %struct.drbg_fork_result_st]* %result, i64 0, i64 1, i32 0, i64 0
  %call56 = call i8* @memcpy(i8* noundef nonnull %arraydecay54, i8* noundef nonnull %arrayidx23, i64 noundef 16) #11
  %call64 = call i8* @memcpy(i8* noundef nonnull %2, i8* noundef nonnull %3, i64 noundef 16) #11
  %add.ptr65 = getelementptr inbounds [320 x i8], [320 x i8]* %sample, i64 0, i64 16
  %call64.1 = call i8* @memcpy(i8* noundef nonnull %add.ptr65, i8* noundef nonnull %arraydecay54, i64 noundef 16) #11
  %add.ptr65.1 = getelementptr inbounds [320 x i8], [320 x i8]* %sample, i64 0, i64 32
  %arrayidx63.2 = getelementptr inbounds [20 x %struct.drbg_fork_result_st], [20 x %struct.drbg_fork_result_st]* %result, i64 0, i64 2, i32 0, i64 0
  %call64.2 = call i8* @memcpy(i8* noundef nonnull %add.ptr65.1, i8* noundef nonnull %arrayidx63.2, i64 noundef 16) #11
  %add.ptr65.2 = getelementptr inbounds [320 x i8], [320 x i8]* %sample, i64 0, i64 48
  %arrayidx63.3 = getelementptr inbounds [20 x %struct.drbg_fork_result_st], [20 x %struct.drbg_fork_result_st]* %result, i64 0, i64 3, i32 0, i64 0
  %call64.3 = call i8* @memcpy(i8* noundef nonnull %add.ptr65.2, i8* noundef nonnull %arrayidx63.3, i64 noundef 16) #11
  %add.ptr65.3 = getelementptr inbounds [320 x i8], [320 x i8]* %sample, i64 0, i64 64
  %arrayidx63.4 = getelementptr inbounds [20 x %struct.drbg_fork_result_st], [20 x %struct.drbg_fork_result_st]* %result, i64 0, i64 4, i32 0, i64 0
  %call64.4 = call i8* @memcpy(i8* noundef nonnull %add.ptr65.3, i8* noundef nonnull %arrayidx63.4, i64 noundef 16) #11
  %add.ptr65.4 = getelementptr inbounds [320 x i8], [320 x i8]* %sample, i64 0, i64 80
  %arrayidx63.5 = getelementptr inbounds [20 x %struct.drbg_fork_result_st], [20 x %struct.drbg_fork_result_st]* %result, i64 0, i64 5, i32 0, i64 0
  %call64.5 = call i8* @memcpy(i8* noundef nonnull %add.ptr65.4, i8* noundef nonnull %arrayidx63.5, i64 noundef 16) #11
  %add.ptr65.5 = getelementptr inbounds [320 x i8], [320 x i8]* %sample, i64 0, i64 96
  %arrayidx63.6 = getelementptr inbounds [20 x %struct.drbg_fork_result_st], [20 x %struct.drbg_fork_result_st]* %result, i64 0, i64 6, i32 0, i64 0
  %call64.6 = call i8* @memcpy(i8* noundef nonnull %add.ptr65.5, i8* noundef nonnull %arrayidx63.6, i64 noundef 16) #11
  %add.ptr65.6 = getelementptr inbounds [320 x i8], [320 x i8]* %sample, i64 0, i64 112
  %arrayidx63.7 = getelementptr inbounds [20 x %struct.drbg_fork_result_st], [20 x %struct.drbg_fork_result_st]* %result, i64 0, i64 7, i32 0, i64 0
  %call64.7 = call i8* @memcpy(i8* noundef nonnull %add.ptr65.6, i8* noundef nonnull %arrayidx63.7, i64 noundef 16) #11
  %add.ptr65.7 = getelementptr inbounds [320 x i8], [320 x i8]* %sample, i64 0, i64 128
  %arrayidx63.8 = getelementptr inbounds [20 x %struct.drbg_fork_result_st], [20 x %struct.drbg_fork_result_st]* %result, i64 0, i64 8, i32 0, i64 0
  %call64.8 = call i8* @memcpy(i8* noundef nonnull %add.ptr65.7, i8* noundef nonnull %arrayidx63.8, i64 noundef 16) #11
  %add.ptr65.8 = getelementptr inbounds [320 x i8], [320 x i8]* %sample, i64 0, i64 144
  %arrayidx63.9 = getelementptr inbounds [20 x %struct.drbg_fork_result_st], [20 x %struct.drbg_fork_result_st]* %result, i64 0, i64 9, i32 0, i64 0
  %call64.9 = call i8* @memcpy(i8* noundef nonnull %add.ptr65.8, i8* noundef nonnull %arrayidx63.9, i64 noundef 16) #11
  %add.ptr65.9 = getelementptr inbounds [320 x i8], [320 x i8]* %sample, i64 0, i64 160
  %arrayidx63.10 = getelementptr inbounds [20 x %struct.drbg_fork_result_st], [20 x %struct.drbg_fork_result_st]* %result, i64 0, i64 10, i32 0, i64 0
  %call64.10 = call i8* @memcpy(i8* noundef nonnull %add.ptr65.9, i8* noundef nonnull %arrayidx63.10, i64 noundef 16) #11
  %add.ptr65.10 = getelementptr inbounds [320 x i8], [320 x i8]* %sample, i64 0, i64 176
  %arrayidx63.11 = getelementptr inbounds [20 x %struct.drbg_fork_result_st], [20 x %struct.drbg_fork_result_st]* %result, i64 0, i64 11, i32 0, i64 0
  %call64.11 = call i8* @memcpy(i8* noundef nonnull %add.ptr65.10, i8* noundef nonnull %arrayidx63.11, i64 noundef 16) #11
  %add.ptr65.11 = getelementptr inbounds [320 x i8], [320 x i8]* %sample, i64 0, i64 192
  %arrayidx63.12 = getelementptr inbounds [20 x %struct.drbg_fork_result_st], [20 x %struct.drbg_fork_result_st]* %result, i64 0, i64 12, i32 0, i64 0
  %call64.12 = call i8* @memcpy(i8* noundef nonnull %add.ptr65.11, i8* noundef nonnull %arrayidx63.12, i64 noundef 16) #11
  %add.ptr65.12 = getelementptr inbounds [320 x i8], [320 x i8]* %sample, i64 0, i64 208
  %arrayidx63.13 = getelementptr inbounds [20 x %struct.drbg_fork_result_st], [20 x %struct.drbg_fork_result_st]* %result, i64 0, i64 13, i32 0, i64 0
  %call64.13 = call i8* @memcpy(i8* noundef nonnull %add.ptr65.12, i8* noundef nonnull %arrayidx63.13, i64 noundef 16) #11
  %add.ptr65.13 = getelementptr inbounds [320 x i8], [320 x i8]* %sample, i64 0, i64 224
  %arrayidx63.14 = getelementptr inbounds [20 x %struct.drbg_fork_result_st], [20 x %struct.drbg_fork_result_st]* %result, i64 0, i64 14, i32 0, i64 0
  %call64.14 = call i8* @memcpy(i8* noundef nonnull %add.ptr65.13, i8* noundef nonnull %arrayidx63.14, i64 noundef 16) #11
  %add.ptr65.14 = getelementptr inbounds [320 x i8], [320 x i8]* %sample, i64 0, i64 240
  %arrayidx63.15 = getelementptr inbounds [20 x %struct.drbg_fork_result_st], [20 x %struct.drbg_fork_result_st]* %result, i64 0, i64 15, i32 0, i64 0
  %call64.15 = call i8* @memcpy(i8* noundef nonnull %add.ptr65.14, i8* noundef nonnull %arrayidx63.15, i64 noundef 16) #11
  %add.ptr65.15 = getelementptr inbounds [320 x i8], [320 x i8]* %sample, i64 0, i64 256
  %arrayidx63.16 = getelementptr inbounds [20 x %struct.drbg_fork_result_st], [20 x %struct.drbg_fork_result_st]* %result, i64 0, i64 16, i32 0, i64 0
  %call64.16 = call i8* @memcpy(i8* noundef nonnull %add.ptr65.15, i8* noundef nonnull %arrayidx63.16, i64 noundef 16) #11
  %add.ptr65.16 = getelementptr inbounds [320 x i8], [320 x i8]* %sample, i64 0, i64 272
  %arrayidx63.17 = getelementptr inbounds [20 x %struct.drbg_fork_result_st], [20 x %struct.drbg_fork_result_st]* %result, i64 0, i64 17, i32 0, i64 0
  %call64.17 = call i8* @memcpy(i8* noundef nonnull %add.ptr65.16, i8* noundef nonnull %arrayidx63.17, i64 noundef 16) #11
  %add.ptr65.17 = getelementptr inbounds [320 x i8], [320 x i8]* %sample, i64 0, i64 288
  %arrayidx63.18 = getelementptr inbounds [20 x %struct.drbg_fork_result_st], [20 x %struct.drbg_fork_result_st]* %result, i64 0, i64 18, i32 0, i64 0
  %call64.18 = call i8* @memcpy(i8* noundef nonnull %add.ptr65.17, i8* noundef nonnull %arrayidx63.18, i64 noundef 16) #11
  %add.ptr65.18 = getelementptr inbounds [320 x i8], [320 x i8]* %sample, i64 0, i64 304
  %arrayidx63.19 = getelementptr inbounds [20 x %struct.drbg_fork_result_st], [20 x %struct.drbg_fork_result_st]* %result, i64 0, i64 19, i32 0, i64 0
  %call64.19 = call i8* @memcpy(i8* noundef nonnull %add.ptr65.18, i8* noundef nonnull %arrayidx63.19, i64 noundef 16) #11
  call void @qsort(i8* noundef nonnull %3, i64 noundef 20, i64 noundef 40, i32 (i8*, i8*)* noundef nonnull @compare_drbg_fork_result) #11
  %.pre = load i8, i8* %3, align 16, !tbaa !23
  br label %for.body73

for.body73:                                       ; preds = %for.inc94.1, %if.end30
  %4 = phi i8 [ %.pre, %if.end30 ], [ %8, %for.inc94.1 ]
  %indvars.iv = phi i64 [ 1, %if.end30 ], [ %indvars.iv.next.1, %for.inc94.1 ]
  %arrayidx77 = getelementptr inbounds [20 x %struct.drbg_fork_result_st], [20 x %struct.drbg_fork_result_st]* %result, i64 0, i64 %indvars.iv, i32 0, i64 0
  %5 = load i8, i8* %arrayidx77, align 8, !tbaa !23
  %cmp84 = icmp eq i8 %5, %4
  br i1 %cmp84, label %if.then86, label %for.inc94

if.then86:                                        ; preds = %for.body73
  %private89 = getelementptr inbounds [20 x %struct.drbg_fork_result_st], [20 x %struct.drbg_fork_result_st]* %result, i64 0, i64 %indvars.iv, i32 3
  %6 = load i32, i32* %private89, align 8, !tbaa !22
  %idxprom90 = sext i32 %6 to i64
  %arrayidx91 = getelementptr inbounds [2 x i32], [2 x i32]* %tmpcast, i64 0, i64 %idxprom90
  %7 = load i32, i32* %arrayidx91, align 4, !tbaa !24
  %inc92 = add nsw i32 %7, 1
  store i32 %inc92, i32* %arrayidx91, align 4, !tbaa !24
  br label %for.inc94

for.inc94:                                        ; preds = %for.body73, %if.then86
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond232.not = icmp eq i64 %indvars.iv.next, 20
  br i1 %exitcond232.not, label %for.end96, label %for.body73.1, !llvm.loop !25

for.body73.1:                                     ; preds = %for.inc94
  %arrayidx77.1 = getelementptr inbounds [20 x %struct.drbg_fork_result_st], [20 x %struct.drbg_fork_result_st]* %result, i64 0, i64 %indvars.iv.next, i32 0, i64 0
  %8 = load i8, i8* %arrayidx77.1, align 8, !tbaa !23
  %cmp84.1 = icmp eq i8 %8, %5
  br i1 %cmp84.1, label %if.then86.1, label %for.inc94.1

if.then86.1:                                      ; preds = %for.body73.1
  %private89.1 = getelementptr inbounds [20 x %struct.drbg_fork_result_st], [20 x %struct.drbg_fork_result_st]* %result, i64 0, i64 %indvars.iv.next, i32 3
  %9 = load i32, i32* %private89.1, align 8, !tbaa !22
  %idxprom90.1 = sext i32 %9 to i64
  %arrayidx91.1 = getelementptr inbounds [2 x i32], [2 x i32]* %tmpcast, i64 0, i64 %idxprom90.1
  %10 = load i32, i32* %arrayidx91.1, align 4, !tbaa !24
  %inc92.1 = add nsw i32 %10, 1
  store i32 %inc92.1, i32* %arrayidx91.1, align 4, !tbaa !24
  br label %for.inc94.1

for.inc94.1:                                      ; preds = %if.then86.1, %for.body73.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  br label %for.body73

for.end96:                                        ; preds = %for.inc94
  %arrayidx97 = bitcast i64* %duplicate to i32*
  %11 = load i32, i32* %arrayidx97, align 8, !tbaa !24
  %cmp98 = icmp sgt i32 %11, 7
  br i1 %cmp98, label %if.then100, label %if.end102

if.then100:                                       ; preds = %for.end96
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.55, i64 0, i64 0), i32 noundef %11) #11
  br label %if.end102

if.end102:                                        ; preds = %if.then100, %for.end96
  %success.0 = phi i32 [ 0, %if.then100 ], [ 1, %for.end96 ]
  %arrayidx103 = getelementptr inbounds [2 x i32], [2 x i32]* %tmpcast, i64 0, i64 1
  %12 = load i32, i32* %arrayidx103, align 4, !tbaa !24
  %cmp104 = icmp sgt i32 %12, 7
  br i1 %cmp104, label %if.then106, label %if.end108

if.then106:                                       ; preds = %if.end102
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.56, i64 0, i64 0), i32 noundef %12) #11
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %if.end102
  %success.1 = phi i32 [ 0, %if.then106 ], [ %success.0, %if.end102 ]
  call void @qsort(i8* noundef nonnull %2, i64 noundef 160, i64 noundef 2, i32 (i8*, i8*)* noundef nonnull @compare_rand_chunk) #11
  %add.ptr112 = getelementptr inbounds [320 x i8], [320 x i8]* %sample, i64 0, i64 2
  br label %for.body117

for.body117:                                      ; preds = %if.end108, %for.body117
  %psample.1225 = phi i8* [ %add.ptr112, %if.end108 ], [ %add.ptr127, %for.body117 ]
  %i.3224 = phi i32 [ 2, %if.end108 ], [ %add, %for.body117 ]
  %inc124222223 = phi i32 [ 0, %if.end108 ], [ %spec.select, %for.body117 ]
  %add.ptr118 = getelementptr inbounds i8, i8* %psample.1225, i64 -2
  %call119 = call i32 @compare_rand_chunk(i8* noundef nonnull %add.ptr118, i8* noundef nonnull %psample.1225) #13
  %cmp120 = icmp eq i32 %call119, 0
  %inc124 = zext i1 %cmp120 to i32
  %spec.select = add nuw nsw i32 %inc124222223, %inc124
  %add = add nuw nsw i32 %i.3224, 2
  %add.ptr127 = getelementptr inbounds i8, i8* %psample.1225, i64 2
  %cmp115 = icmp ult i32 %i.3224, 318
  br i1 %cmp115, label %for.body117, label %for.end128, !llvm.loop !26

for.end128:                                       ; preds = %for.body117
  store i32 %spec.select, i32* %arrayidx97, align 8, !tbaa !24
  %cmp130 = icmp ugt i32 %spec.select, 7
  br i1 %cmp130, label %if.end134.thread, label %if.end134

if.end134.thread:                                 ; preds = %for.end128
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.57, i64 0, i64 0), i32 noundef %spec.select) #11
  br label %for.body141.preheader

if.end134:                                        ; preds = %for.end128
  %tobool136 = icmp ne i32 %success.1, 0
  %or.cond = and i1 %cmp.not, %tobool136
  br i1 %or.cond, label %cleanup, label %for.body141.preheader

for.body141.preheader:                            ; preds = %if.end134.thread, %if.end134
  %success.2240 = phi i32 [ 0, %if.end134.thread ], [ %success.1, %if.end134 ]
  br label %for.body141

for.body141:                                      ; preds = %for.body141.preheader, %for.body141
  %indvars.iv233 = phi i64 [ 0, %for.body141.preheader ], [ %indvars.iv.next234, %for.body141 ]
  %arraydecay145 = getelementptr inbounds [20 x %struct.drbg_fork_result_st], [20 x %struct.drbg_fork_result_st]* %result, i64 0, i64 %indvars.iv233, i32 0, i64 0
  %call146 = call i8* @OPENSSL_buf2hexstr(i8* noundef nonnull %arraydecay145, i64 noundef 16) #11
  %pid149 = getelementptr inbounds [20 x %struct.drbg_fork_result_st], [20 x %struct.drbg_fork_result_st]* %result, i64 0, i64 %indvars.iv233, i32 2
  %13 = load i32, i32* %pid149, align 4, !tbaa !21
  %arraydecay153 = getelementptr inbounds [20 x %struct.drbg_fork_result_st], [20 x %struct.drbg_fork_result_st]* %result, i64 0, i64 %indvars.iv233, i32 4, i64 0
  %private156 = getelementptr inbounds [20 x %struct.drbg_fork_result_st], [20 x %struct.drbg_fork_result_st]* %result, i64 0, i64 %indvars.iv233, i32 3
  %14 = load i32, i32* %private156, align 8, !tbaa !22
  %tobool157.not = icmp eq i32 %14, 0
  %cond = select i1 %tobool157.not, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0)
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.58, i64 0, i64 0), i8* noundef %call146, i32 noundef %13, i8* noundef nonnull %arraydecay153, i8* noundef %cond) #11
  call void @CRYPTO_free(i8* noundef %call146, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 510) #11
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1
  %exitcond236.not = icmp eq i64 %indvars.iv.next234, 20
  br i1 %exitcond236.not, label %cleanup, label %for.body141, !llvm.loop !27

cleanup:                                          ; preds = %for.body, %for.body141, %if.end134, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ %success.1, %if.end134 ], [ %success.2240, %for.body141 ], [ 0, %for.body ]
  call void @llvm.lifetime.end.p0i8(i64 800, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 320, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %retval.0
}

declare dso_local i32 @RAND_bytes(i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @RAND_priv_bytes(i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i32 @getpid() local_unnamed_addr #4

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_drbg_reseed_in_child(%struct.evp_rand_ctx_st* noundef %primary, %struct.evp_rand_ctx_st* noundef %public, %struct.evp_rand_ctx_st* noundef %private, %struct.drbg_fork_result_st* noundef %result) unnamed_addr #0 {
entry:
  %status = alloca i32, align 4
  %fd = alloca [2 x i32], align 4
  %random = alloca [32 x i8], align 16
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  %1 = bitcast [2 x i32]* %fd to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #12
  %2 = getelementptr inbounds [32 x i8], [32 x i8]* %random, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #12
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %fd, i64 0, i64 0
  %call = call i32 @pipe(i32* noundef nonnull %arraydecay) #11
  %call1 = call i32 @test_int_ge(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 338, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call, i32 noundef 0) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i32 @fork() #11
  %call3 = call i32 @test_int_ge(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 341, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.60, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call2, i32 noundef 0) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %3 = load i32, i32* %arraydecay, align 4, !tbaa !24
  %call6 = call i32 @close(i32 noundef %3) #11
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %fd, i64 0, i64 1
  %4 = load i32, i32* %arrayidx7, align 4, !tbaa !24
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  %cmp = icmp sgt i32 %call2, 0
  br i1 %cmp, label %if.then9, label %if.else48

if.then9:                                         ; preds = %if.else
  %arrayidx10 = getelementptr inbounds [2 x i32], [2 x i32]* %fd, i64 0, i64 1
  %5 = load i32, i32* %arrayidx10, align 4, !tbaa !24
  %call11 = call i32 @close(i32 noundef %5) #11
  %call12 = call i32 @waitpid(i32 noundef %call2, i32* noundef nonnull %status, i32 noundef 0) #11
  %call13 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 351, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.61, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i64 0, i64 0), i32 noundef %call12, i32 noundef %call2) #11
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end45, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then9
  %6 = load i32, i32* %status, align 4, !tbaa !24
  %call15 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 352, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %6, i32 noundef 0) #11
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end45, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %land.lhs.true
  %7 = load i32, i32* %arraydecay, align 4, !tbaa !24
  %call20 = call i64 @read(i32 noundef %7, i8* noundef nonnull %2, i64 noundef 32) #11
  %cmp21 = icmp eq i64 %call20, 32
  %conv = zext i1 %cmp21 to i32
  %call24 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 354, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.64, i64 0, i64 0), i32 noundef %conv) #11
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end45, label %if.then26

if.then26:                                        ; preds = %land.lhs.true17
  %pid28 = getelementptr inbounds %struct.drbg_fork_result_st, %struct.drbg_fork_result_st* %result, i64 0, i32 2
  store i32 %call2, i32* %pid28, align 4, !tbaa !21
  %private30 = getelementptr inbounds %struct.drbg_fork_result_st, %struct.drbg_fork_result_st* %result, i64 0, i32 3
  store i32 0, i32* %private30, align 4, !tbaa !22
  %arraydecay33 = getelementptr inbounds %struct.drbg_fork_result_st, %struct.drbg_fork_result_st* %result, i64 0, i32 0, i64 0
  %call35 = call i8* @memcpy(i8* noundef %arraydecay33, i8* noundef nonnull %2, i64 noundef 16) #11
  %pid37 = getelementptr inbounds %struct.drbg_fork_result_st, %struct.drbg_fork_result_st* %result, i64 1, i32 2
  store i32 %call2, i32* %pid37, align 4, !tbaa !21
  %private39 = getelementptr inbounds %struct.drbg_fork_result_st, %struct.drbg_fork_result_st* %result, i64 1, i32 3
  store i32 1, i32* %private39, align 4, !tbaa !22
  %arraydecay42 = getelementptr inbounds %struct.drbg_fork_result_st, %struct.drbg_fork_result_st* %result, i64 1, i32 0, i64 0
  %arrayidx43 = getelementptr inbounds [32 x i8], [32 x i8]* %random, i64 0, i64 16
  %call44 = call i8* @memcpy(i8* noundef nonnull %arraydecay42, i8* noundef nonnull %arrayidx43, i64 noundef 16) #11
  br label %if.end45

if.end45:                                         ; preds = %if.then26, %land.lhs.true17, %land.lhs.true, %if.then9
  %rv.0 = phi i32 [ 1, %if.then26 ], [ 0, %land.lhs.true17 ], [ 0, %land.lhs.true ], [ 0, %if.then9 ]
  %8 = load i32, i32* %arraydecay, align 4, !tbaa !24
  br label %cleanup.sink.split

if.else48:                                        ; preds = %if.else
  %9 = load i32, i32* %arraydecay, align 4, !tbaa !24
  %call50 = call i32 @close(i32 noundef %9) #11
  %arrayidx52 = getelementptr inbounds [32 x i8], [32 x i8]* %random, i64 0, i64 16
  %call53 = call fastcc i32 @test_drbg_reseed(%struct.evp_rand_ctx_st* noundef %primary, %struct.evp_rand_ctx_st* noundef %public, %struct.evp_rand_ctx_st* noundef %private, i8* noundef nonnull %2, i8* noundef nonnull %arrayidx52, i32 noundef 1, i64 noundef 0) #13
  %cmp54 = icmp ne i32 %call53, 0
  %conv55 = zext i1 %cmp54 to i32
  %call56 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 382, i8* noundef getelementptr inbounds ([92 x i8], [92 x i8]* @.str.65, i64 0, i64 0), i32 noundef %conv55) #11
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end69, label %land.lhs.true58

land.lhs.true58:                                  ; preds = %if.else48
  %arrayidx59 = getelementptr inbounds [2 x i32], [2 x i32]* %fd, i64 0, i64 1
  %10 = load i32, i32* %arrayidx59, align 4, !tbaa !24
  %call61 = call i64 @write(i32 noundef %10, i8* noundef nonnull %2, i64 noundef 32) #11
  %cmp62 = icmp eq i64 %call61, 32
  %conv63 = zext i1 %cmp62 to i32
  %call66 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 384, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.66, i64 0, i64 0), i32 noundef %conv63) #11
  %tobool67.not = icmp eq i32 %call66, 0
  %spec.select = zext i1 %tobool67.not to i32
  br label %if.end69

if.end69:                                         ; preds = %land.lhs.true58, %if.else48
  %cmp72 = phi i32 [ 1, %if.else48 ], [ %spec.select, %land.lhs.true58 ]
  %arrayidx70 = getelementptr inbounds [2 x i32], [2 x i32]* %fd, i64 0, i64 1
  %11 = load i32, i32* %arrayidx70, align 4, !tbaa !24
  %call71 = call i32 @close(i32 noundef %11) #11
  call void @exit(i32 noundef %cmp72) #14
  unreachable

cleanup.sink.split:                               ; preds = %if.then5, %if.end45
  %.sink = phi i32 [ %8, %if.end45 ], [ %4, %if.then5 ]
  %retval.0.ph = phi i32 [ %rv.0, %if.end45 ], [ 0, %if.then5 ]
  %call47 = call i32 @close(i32 noundef %.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare dso_local void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal i32 @compare_drbg_fork_result(i8* noundef readonly %left, i8* noundef readonly %right) #8 {
entry:
  %private = getelementptr inbounds i8, i8* %left, i64 24
  %0 = bitcast i8* %private to i32*
  %1 = load i32, i32* %0, align 4, !tbaa !22
  %private1 = getelementptr inbounds i8, i8* %right, i64 24
  %2 = bitcast i8* %private1 to i32*
  %3 = load i32, i32* %2, align 4, !tbaa !22
  %sub = sub nsw i32 %1, %3
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %if.end, label %if.end8

if.end:                                           ; preds = %entry
  %call = tail call i32 @memcmp(i8* noundef nonnull %left, i8* noundef nonnull %right, i64 noundef 16) #15
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  %pindex = getelementptr inbounds i8, i8* %left, i64 16
  %4 = bitcast i8* %pindex to i32*
  %5 = load i32, i32* %4, align 4, !tbaa !17
  %pindex6 = getelementptr inbounds i8, i8* %right, i64 16
  %6 = bitcast i8* %pindex6 to i32*
  %7 = load i32, i32* %6, align 4, !tbaa !17
  %sub7 = sub nsw i32 %5, %7
  br label %if.end8

if.end8:                                          ; preds = %entry, %if.then5, %if.end
  %result.1 = phi i32 [ %sub7, %if.then5 ], [ %call, %if.end ], [ %sub, %entry ]
  ret i32 %result.1
}

declare dso_local void @test_note(i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal i32 @compare_rand_chunk(i8* noundef readonly %left, i8* noundef readonly %right) #8 {
entry:
  %call = tail call i32 @memcmp(i8* noundef %left, i8* noundef %right, i64 noundef 2) #15
  ret i32 %call
}

declare dso_local i8* @OPENSSL_buf2hexstr(i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i32 @pipe(i32* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare dso_local i32 @fork() local_unnamed_addr #4

declare dso_local i32 @close(i32 noundef) local_unnamed_addr #1

declare dso_local i32 @waitpid(i32 noundef, i32* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i64 @read(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i64 @write(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_rand_ctx_st* @new_drbg(%struct.evp_rand_ctx_st* noundef %parent) unnamed_addr #0 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp2 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #12
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params16 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i64 0, i64 0), i64 noundef 0) #11
  %arrayidx1 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %1 = bitcast %struct.ossl_param_st* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #12
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp2) #11
  %2 = bitcast %struct.ossl_param_st* %arrayidx1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #12
  %call = call %struct.evp_rand_st* @EVP_RAND_fetch(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.89, i64 0, i64 0), i8* noundef null) #11
  %3 = bitcast %struct.evp_rand_st* %call to i8*
  %call3 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 809, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.88, i64 0, i64 0), i8* noundef %3) #11
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call4 = call %struct.evp_rand_ctx_st* @EVP_RAND_CTX_new(%struct.evp_rand_st* noundef %call, %struct.evp_rand_ctx_st* noundef %parent) #11
  %4 = bitcast %struct.evp_rand_ctx_st* %call4 to i8*
  %call5 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 810, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.90, i64 0, i64 0), i8* noundef %4) #11
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call8 = call i32 @EVP_RAND_CTX_set_params(%struct.evp_rand_ctx_st* noundef %call4, %struct.ossl_param_st* noundef nonnull %arrayidx) #11
  %cmp = icmp ne i32 %call8, 0
  %conv = zext i1 %cmp to i32
  %call9 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 811, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.91, i64 0, i64 0), i32 noundef %conv) #11
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false, %entry
  %drbg.0 = phi %struct.evp_rand_ctx_st* [ %call4, %lor.lhs.false7 ], [ %call4, %lor.lhs.false ], [ null, %entry ]
  call void @EVP_RAND_CTX_free(%struct.evp_rand_ctx_st* noundef %drbg.0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false7
  %drbg.1 = phi %struct.evp_rand_ctx_st* [ %call4, %lor.lhs.false7 ], [ null, %if.then ]
  call void @EVP_RAND_free(%struct.evp_rand_st* noundef %call) #11
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #12
  ret %struct.evp_rand_ctx_st* %drbg.1
}

declare dso_local i32 @EVP_RAND_instantiate(%struct.evp_rand_ctx_st* noundef, i32 noundef, i32 noundef, i8* noundef, i64 noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_RAND_reseed(%struct.evp_rand_ctx_st* noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_mem_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @EVP_RAND_CTX_free(%struct.evp_rand_ctx_st* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #1

declare dso_local %struct.evp_rand_st* @EVP_RAND_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_rand_ctx_st* @EVP_RAND_CTX_new(%struct.evp_rand_st* noundef, %struct.evp_rand_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_RAND_CTX_set_params(%struct.evp_rand_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #1

declare dso_local void @EVP_RAND_free(%struct.evp_rand_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @run_thread(i64* noundef %t) unnamed_addr #0 {
entry:
  %call = tail call i32 @pthread_create(i64* noundef %t, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef nonnull @thread_run, i8* noundef null) #11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @run_multi_thread_test() unnamed_addr #0 {
entry:
  %buf = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #12
  %call = tail call i64 @time(i64* noundef null) #11
  %call1 = tail call %struct.evp_rand_ctx_st* @RAND_get0_public(%struct.ossl_lib_ctx_st* noundef null) #11
  %1 = bitcast %struct.evp_rand_ctx_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 703, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8* noundef %1) #11
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call %struct.evp_rand_ctx_st* @RAND_get0_private(%struct.ossl_lib_ctx_st* noundef null) #11
  %2 = bitcast %struct.evp_rand_ctx_st* %call3 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 704, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i8* noundef %2) #11
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %call7 = tail call fastcc i32 @set_reseed_time_interval(%struct.evp_rand_ctx_st* noundef %call3) #13
  %cmp = icmp ne i32 %call7, 0
  %conv = zext i1 %cmp to i32
  %call8 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 705, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.94, i64 0, i64 0), i32 noundef %conv) #11
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false6
  %call11 = tail call fastcc i32 @set_reseed_time_interval(%struct.evp_rand_ctx_st* noundef %call1) #13
  %cmp12 = icmp ne i32 %call11, 0
  %conv13 = zext i1 %cmp12 to i32
  %call14 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef 706, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.95, i64 0, i64 0), i32 noundef %conv13) #11
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then, label %do.body

if.then:                                          ; preds = %lor.lhs.false10, %lor.lhs.false6, %lor.lhs.false, %entry
  store i1 true, i1* @multi_thread_rand_bytes_succeeded, align 4
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false10, %do.cond
  %call16 = call fastcc i32 @rand_bytes(i8* noundef nonnull %0, i32 noundef 256) #13
  %cmp17 = icmp slt i32 %call16, 1
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %do.body
  store i1 true, i1* @multi_thread_rand_bytes_succeeded, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %do.body
  %call22 = call fastcc i32 @rand_priv_bytes(i8* noundef nonnull %0, i32 noundef 256) #13
  %cmp23 = icmp slt i32 %call22, 1
  br i1 %cmp23, label %if.then25, label %do.cond

if.then25:                                        ; preds = %if.end20
  store i1 true, i1* @multi_thread_rand_priv_bytes_succeeded, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end20, %if.then25
  %call27 = call i64 @time(i64* noundef null) #11
  %sub = sub nsw i64 %call27, %call
  %cmp28 = icmp slt i64 %sub, 5
  br i1 %cmp28, label %do.body, label %cleanup, !llvm.loop !30

cleanup:                                          ; preds = %do.cond, %if.then
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @wait_for_thread(i64 noundef %thread) unnamed_addr #0 {
entry:
  %call = tail call i32 @pthread_join(i64 noundef %thread, i8** noundef null) #11
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64* noundef, %union.pthread_attr_t* noundef, i8* (i8*)* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal noalias i8* @thread_run(i8* nocapture noundef readnone %arg) #0 {
entry:
  tail call fastcc void @run_multi_thread_test() #13
  tail call void @OPENSSL_thread_stop() #11
  ret i8* null
}

declare dso_local void @OPENSSL_thread_stop() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @set_reseed_time_interval(%struct.evp_rand_ctx_st* noundef %drbg) unnamed_addr #0 {
entry:
  %t.addr = alloca i32, align 4
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp2 = alloca %struct.ossl_param_st, align 8
  store i32 1, i32* %t.addr, align 4, !tbaa !24
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #12
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params1 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.96, i64 0, i64 0), i32* noundef nonnull %t.addr) #11
  %arrayidx1 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %1 = bitcast %struct.ossl_param_st* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #12
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp2) #11
  %2 = bitcast %struct.ossl_param_st* %arrayidx1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #12
  %call = call i32 @EVP_RAND_CTX_set_params(%struct.evp_rand_ctx_st* noundef %drbg, %struct.ossl_param_st* noundef nonnull %arrayidx) #11
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #12
  ret i32 %call
}

declare dso_local void @OSSL_PARAM_construct_int(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local i32 @pthread_join(i64 noundef, i8** noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nounwind }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #15 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !5, i64 48}
!4 = !{!"prov_drbg_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !8, i64 120, !9, i64 124, !8, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !8, i64 192, !8, i64 196, !10, i64 200, !10, i64 208, !6, i64 216, !8, i64 220, !8, i64 224, !10, i64 232, !6, i64 240, !5, i64 248, !5, i64 256, !5, i64 264, !5, i64 272, !5, i64 280, !5, i64 288}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"int", !6, i64 0}
!9 = !{!"short", !6, i64 0}
!10 = !{!"long", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!13, !5, i64 8}
!13 = !{!"evp_rand_ctx_st", !5, i64 0, !5, i64 8, !5, i64 16, !6, i64 24, !5, i64 32}
!14 = !{!15, !5, i64 8}
!15 = !{!"rand_meth_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40}
!16 = !{!4, !6, i64 216}
!17 = !{!18, !8, i64 16}
!18 = !{!"drbg_fork_result_st", !6, i64 0, !8, i64 16, !8, i64 20, !8, i64 24, !6, i64 28}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!18, !8, i64 20}
!22 = !{!18, !8, i64 24}
!23 = !{!6, !6, i64 0}
!24 = !{!8, !8, i64 0}
!25 = distinct !{!25, !20}
!26 = distinct !{!26, !20}
!27 = distinct !{!27, !20}
!28 = !{i64 0, i64 8, !29, i64 8, i64 4, !24, i64 16, i64 8, !29, i64 24, i64 8, !11, i64 32, i64 8, !11}
!29 = !{!5, !5, i64 0}
!30 = distinct !{!30, !20}
