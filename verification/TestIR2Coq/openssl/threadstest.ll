; ModuleID = 'test/threadstest.c'
source_filename = "test/threadstest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.evp_md_st = type opaque
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.evp_md_ctx_st = type opaque
%struct.evp_cipher_ctx_st = type opaque
%struct.evp_cipher_st = type opaque
%struct.engine_st = type opaque
%struct.rsa_st = type opaque
%struct.evp_pkey_ctx_st = type opaque

@test_get_options.options = internal constant [11 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i32 2, i32 60, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [21 x i8] c"Usage: %s [options]\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Valid options are:\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Display the list of tests available\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Run a single test by id or name\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Run a single iteration of a test\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"indent\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Number of tabs added to output\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Seed value to randomize tests with\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"fips\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"Test the FIPS provider\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"The configuration file to use for the libctx\00", align 1
@do_fips = internal unnamed_addr global i1 false, align 4
@config_file = internal unnamed_addr global i8* null, align 8
@.str.18 = private unnamed_addr constant [19 x i8] c"test/threadstest.c\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"datadir = test_get_argument(0)\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"rsakey.pem\00", align 1
@privkey = internal unnamed_addr global i8* null, align 8
@.str.21 = private unnamed_addr constant [8 x i8] c"privkey\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"test_multi_default\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"test_lock\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"test_once\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"test_thread_local\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"test_atomic\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"test_multi_load\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"test_multi\00", align 1
@multidefault_run = internal unnamed_addr global i1 false, align 4
@.str.29 = private unnamed_addr constant [31 x i8] c"multi default test already run\00", align 1
@multi_success = internal unnamed_addr global i1 false, align 4
@multi_libctx = internal global %struct.ossl_lib_ctx_st* null, align 8
@.str.30 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"prov\00", align 1
@.str.32 = private unnamed_addr constant [48 x i8] c"run_thread(&thread1, thread_multi_simple_fetch)\00", align 1
@.str.33 = private unnamed_addr constant [48 x i8] c"run_thread(&thread2, thread_multi_simple_fetch)\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"wait_for_thread(thread1)\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"wait_for_thread(thread2)\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"multi_success\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"SHA2-256\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"CRYPTO_THREAD_read_lock(lock)\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"CRYPTO_THREAD_unlock(lock)\00", align 1
@.str.40 = private unnamed_addr constant [40 x i8] c"run_thread(&thread, once_run_thread_cb)\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"wait_for_thread(thread)\00", align 1
@once_run = internal global i32 0, align 4
@.str.42 = private unnamed_addr constant [15 x i8] c"once_run_count\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@once_run_count = internal unnamed_addr global i32 0, align 4
@.str.44 = private unnamed_addr constant [69 x i8] c"CRYPTO_THREAD_init_local(&thread_local_key, thread_local_destructor)\00", align 1
@thread_local_key = internal global i32 0, align 4
@.str.45 = private unnamed_addr constant [4 x i8] c"ptr\00", align 1
@.str.46 = private unnamed_addr constant [44 x i8] c"run_thread(&thread, thread_local_thread_cb)\00", align 1
@.str.47 = private unnamed_addr constant [26 x i8] c"thread_local_thread_cb_ok\00", align 1
@thread_local_thread_cb_ok = internal unnamed_addr global i1 false, align 4
@.str.48 = private unnamed_addr constant [21 x i8] c"destructor_run_count\00", align 1
@destructor_run_count = internal global i32 0, align 4
@.str.49 = private unnamed_addr constant [47 x i8] c"CRYPTO_THREAD_cleanup_local(&thread_local_key)\00", align 1
@.str.50 = private unnamed_addr constant [66 x i8] c"CRYPTO_THREAD_set_local(&thread_local_key, &destructor_run_count)\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"&destructor_run_count\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.56 = private unnamed_addr constant [39 x i8] c"CRYPTO_atomic_add(&val, 1, &ret, lock)\00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"(unsigned int)val64\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.59 = private unnamed_addr constant [20 x i8] c"(unsigned int)ret64\00", align 1
@.str.60 = private unnamed_addr constant [42 x i8] c"CRYPTO_atomic_or(&val64, 2, &ret64, lock)\00", align 1
@.str.61 = private unnamed_addr constant [41 x i8] c"CRYPTO_atomic_load(&val64, &ret64, lock)\00", align 1
@.str.62 = private unnamed_addr constant [33 x i8] c"Running multi default test first\00", align 1
@.str.63 = private unnamed_addr constant [48 x i8] c"run_thread(&threads[i], test_multi_load_worker)\00", align 1
@.str.64 = private unnamed_addr constant [28 x i8] c"wait_for_thread(threads[i])\00", align 1
@.str.65 = private unnamed_addr constant [43 x i8] c"prov = OSSL_PROVIDER_load(NULL, \22default\22)\00", align 1
@.str.66 = private unnamed_addr constant [27 x i8] c"OSSL_PROVIDER_unload(prov)\00", align 1
@.str.67 = private unnamed_addr constant [19 x i8] c"FIPS not supported\00", align 1
@.str.68 = private unnamed_addr constant [62 x i8] c"test_get_libctx(&multi_libctx, NULL, config_file, NULL, NULL)\00", align 1
@.str.69 = private unnamed_addr constant [49 x i8] c"prov2 = OSSL_PROVIDER_load(multi_libctx, \22fips\22)\00", align 1
@.str.70 = private unnamed_addr constant [55 x i8] c"shared_evp_pkey = load_pkey_pem(privkey, multi_libctx)\00", align 1
@shared_evp_pkey = internal unnamed_addr global %struct.evp_pkey_st* null, align 8
@.str.71 = private unnamed_addr constant [19 x i8] c"Invalid test index\00", align 1
@.str.72 = private unnamed_addr constant [29 x i8] c"run_thread(&thread1, worker)\00", align 1
@.str.73 = private unnamed_addr constant [30 x i8] c"run_thread(&thread2, worker2)\00", align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"AES-128-CBC\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"Hello World\00", align 1
@__const.thread_general_worker.iv = private unnamed_addr constant [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F", align 16
@.str.76 = private unnamed_addr constant [6 x i8] c"mdctx\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"md\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"cipherctx\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"ciph\00", align 1
@.str.80 = private unnamed_addr constant [35 x i8] c"EVP_DigestInit_ex(mdctx, md, NULL)\00", align 1
@.str.81 = private unnamed_addr constant [42 x i8] c"EVP_DigestUpdate(mdctx, message, messlen)\00", align 1
@.str.82 = private unnamed_addr constant [37 x i8] c"EVP_DigestFinal(mdctx, out, &mdoutl)\00", align 1
@.str.83 = private unnamed_addr constant [51 x i8] c"EVP_EncryptInit_ex(cipherctx, ciph, NULL, key, iv)\00", align 1
@.str.84 = private unnamed_addr constant [80 x i8] c"EVP_EncryptUpdate(cipherctx, out, &ciphoutl, (unsigned char *)message, messlen)\00", align 1
@.str.85 = private unnamed_addr constant [44 x i8] c"EVP_EncryptFinal(cipherctx, out, &ciphoutl)\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"pkey\00", align 1
@.str.88 = private unnamed_addr constant [17 x i8] c"provider=default\00", align 1
@.str.89 = private unnamed_addr constant [14 x i8] c"provider=fips\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"ctx\00", align 1
@.str.91 = private unnamed_addr constant [27 x i8] c"EVP_PKEY_encrypt_init(ctx)\00", align 1
@.str.92 = private unnamed_addr constant [72 x i8] c"EVP_PKEY_encrypt(ctx, ctbuf, &ctlen, (unsigned char *)msg, strlen(msg))\00", align 1
@.str.93 = private unnamed_addr constant [27 x i8] c"EVP_PKEY_decrypt_init(ctx)\00", align 1
@.str.94 = private unnamed_addr constant [51 x i8] c"EVP_PKEY_decrypt(ctx, ptbuf, &ptlen, ctbuf, ctlen)\00", align 1
@.str.95 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"ptbuf\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"deflt\00", align 1
@.str.98 = private unnamed_addr constant [49 x i8] c"OSSL_PROVIDER_available(multi_libctx, \22default\22)\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #0 {
entry:
  ret %struct.options_st* getelementptr inbounds ([11 x %struct.options_st], [11 x %struct.options_st]* @test_get_options.options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %call = tail call i32 @opt_next() #8
  switch i32 %call, label %cleanup [
    i32 0, label %while.end
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 500, label %while.cond.backedge
    i32 501, label %while.cond.backedge
    i32 502, label %while.cond.backedge
    i32 503, label %while.cond.backedge
    i32 504, label %while.cond.backedge
    i32 505, label %while.cond.backedge
  ]

while.cond.backedge:                              ; preds = %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %sw.bb1, %sw.bb
  br label %while.cond, !llvm.loop !3

sw.bb:                                            ; preds = %while.cond
  store i1 true, i1* @do_fips, align 4
  br label %while.cond.backedge

sw.bb1:                                           ; preds = %while.cond
  %call2 = tail call i8* @opt_arg() #8
  store i8* %call2, i8** @config_file, align 8, !tbaa !5
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call4 = tail call i8* @test_get_argument(i64 noundef 0) #8
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 577, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0), i8* noundef %call4) #8
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %while.end
  %call6 = tail call i8* @test_mk_file_path(i8* noundef %call4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0)) #8
  store i8* %call6, i8** @privkey, align 8, !tbaa !5
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 581, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i8* noundef %call6) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end
  tail call void @add_test(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i32 ()* noundef nonnull @test_multi_default) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i32 ()* noundef nonnull @test_lock) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i32 ()* noundef nonnull @test_once) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0), i32 ()* noundef nonnull @test_thread_local) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 ()* noundef nonnull @test_atomic) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0), i32 ()* noundef nonnull @test_multi_load) #8
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0), i32 (i32)* noundef nonnull @test_multi, i32 noundef 6, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %while.cond, %if.end, %while.end, %if.end10
  %retval.0 = phi i32 [ 1, %if.end10 ], [ 0, %while.end ], [ 0, %if.end ], [ 0, %while.cond ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @opt_next() local_unnamed_addr #3

declare dso_local i8* @opt_arg() local_unnamed_addr #3

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i8* @test_get_argument(i64 noundef) local_unnamed_addr #3

declare dso_local i8* @test_mk_file_path(i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_multi_default() #1 {
entry:
  %thread1 = alloca i64, align 8
  %thread2 = alloca i64, align 8
  %0 = bitcast i64* %thread1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %1 = bitcast i64* %thread2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  %.b = load i1, i1* @multidefault_run, align 4
  br i1 %.b, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, i32, i8*, ...) @test_skip(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 489, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0)) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  store i1 true, i1* @multidefault_run, align 4
  store i1 true, i1* @multi_success, align 4
  store %struct.ossl_lib_ctx_st* null, %struct.ossl_lib_ctx_st** @multi_libctx, align 8, !tbaa !5
  %call1 = tail call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0)) #8
  %2 = bitcast %struct.ossl_provider_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 497, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i8* noundef %2) #8
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc i32 @run_thread(i64* noundef nonnull %thread1, void ()* noundef nonnull @thread_multi_simple_fetch) #10
  %cmp = icmp ne i32 %call6, 0
  %conv = zext i1 %cmp to i32
  %call7 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 500, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.32, i64 0, i64 0), i32 noundef %conv) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end5
  %call9 = call fastcc i32 @run_thread(i64* noundef nonnull %thread2, void ()* noundef nonnull @thread_multi_simple_fetch) #10
  %cmp10 = icmp ne i32 %call9, 0
  %conv11 = zext i1 %cmp10 to i32
  %call12 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 501, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.33, i64 0, i64 0), i32 noundef %conv11) #8
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %if.end15

if.end15:                                         ; preds = %lor.lhs.false
  call void @thread_multi_simple_fetch() #10
  %3 = load i64, i64* %thread1, align 8, !tbaa !9
  %call16 = call fastcc i32 @wait_for_thread(i64 noundef %3) #10
  %cmp17 = icmp ne i32 %call16, 0
  %conv18 = zext i1 %cmp17 to i32
  %call19 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 506, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i32 noundef %conv18) #8
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %if.end15
  %4 = load i64, i64* %thread2, align 8, !tbaa !9
  %call22 = call fastcc i32 @wait_for_thread(i64 noundef %4) #10
  %cmp23 = icmp ne i32 %call22, 0
  %conv24 = zext i1 %cmp23 to i32
  %call25 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 507, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv24) #8
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %err, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false21
  %.b41 = load i1, i1* @multi_success, align 4
  %conv29 = zext i1 %.b41 to i32
  %call30 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 508, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv29) #8
  %tobool31.not = icmp ne i32 %call30, 0
  %spec.select = zext i1 %tobool31.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false27, %if.end15, %lor.lhs.false21, %if.end5, %lor.lhs.false, %if.end
  %testresult.0 = phi i32 [ 0, %lor.lhs.false21 ], [ 0, %if.end15 ], [ 0, %lor.lhs.false ], [ 0, %if.end5 ], [ 0, %if.end ], [ %spec.select, %lor.lhs.false27 ]
  %call34 = call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %call1) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ %testresult.0, %err ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_lock() #1 {
entry:
  %call = tail call i8* @CRYPTO_THREAD_lock_new() #8
  %call1 = tail call i32 @CRYPTO_THREAD_read_lock(i8* noundef %call) #8
  %cmp = icmp ne i32 %call1, 0
  %conv = zext i1 %cmp to i32
  %call2 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.38, i64 0, i64 0), i32 noundef %conv) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call3 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %call) #8
  %cmp4 = icmp ne i32 %call3, 0
  %conv5 = zext i1 %cmp4 to i32
  %call6 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 36, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i64 0, i64 0), i32 noundef %conv5) #8
  %tobool7 = icmp ne i32 %call6, 0
  %phi.cast = zext i1 %tobool7 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %call) #8
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_once() #1 {
entry:
  %thread = alloca i64, align 8
  %0 = bitcast i64* %thread to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %call = call fastcc i32 @run_thread(i64* noundef nonnull %thread, void ()* noundef nonnull @once_run_thread_cb) #10
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %thread, align 8, !tbaa !9
  %call2 = call fastcc i32 @wait_for_thread(i64 noundef %1) #10
  %cmp3 = icmp ne i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv4) #8
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call8 = call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @once_run, void ()* noundef nonnull @once_do_run) #8
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %2 = load i32, i32* @once_run_count, align 4, !tbaa !11
  %call11 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0), i32 noundef %2, i32 noundef 1) #8
  %tobool12.not = icmp ne i32 %call11, 0
  %spec.select = zext i1 %tobool12.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false10, %entry, %lor.lhs.false, %lor.lhs.false7
  %retval.0 = phi i32 [ 0, %lor.lhs.false7 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false10 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_thread_local() #1 {
entry:
  %thread = alloca i64, align 8
  %0 = bitcast i64* %thread to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %call = tail call i32 @CRYPTO_THREAD_init_local(i32* noundef nonnull @thread_local_key, void (i8*)* noundef nonnull @thread_local_destructor) #8
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 107, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.44, i64 0, i64 0), i32 noundef %conv) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i8* @CRYPTO_THREAD_get_local(i32* noundef nonnull @thread_local_key) #8
  %call3 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 111, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i8* noundef %call2) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call5 = call fastcc i32 @run_thread(i64* noundef nonnull %thread, void ()* noundef nonnull @thread_local_thread_cb) #10
  %cmp6 = icmp ne i32 %call5, 0
  %conv7 = zext i1 %cmp6 to i32
  %call8 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 112, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.46, i64 0, i64 0), i32 noundef %conv7) #8
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %1 = load i64, i64* %thread, align 8, !tbaa !9
  %call11 = call fastcc i32 @wait_for_thread(i64 noundef %1) #10
  %cmp12 = icmp ne i32 %call11, 0
  %conv13 = zext i1 %cmp12 to i32
  %call14 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 113, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv13) #8
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false10
  %.b = load i1, i1* @thread_local_thread_cb_ok, align 4
  %2 = zext i1 %.b to i32
  %call17 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 114, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.47, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0), i32 noundef %2, i32 noundef 1) #8
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %cleanup, label %if.end20

if.end20:                                         ; preds = %lor.lhs.false16
  %call21 = call i8* @CRYPTO_THREAD_get_local(i32* noundef nonnull @thread_local_key) #8
  %call22 = call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 120, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i8* noundef %call21) #8
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %cleanup, label %if.end25

if.end25:                                         ; preds = %if.end20
  %3 = load i32, i32* @destructor_run_count, align 4, !tbaa !11
  %call26 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 124, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0), i32 noundef %3, i32 noundef 1) #8
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %cleanup, label %if.end29

if.end29:                                         ; preds = %if.end25
  %call30 = call i32 @CRYPTO_THREAD_cleanup_local(i32* noundef nonnull @thread_local_key) #8
  %cmp31 = icmp ne i32 %call30, 0
  %conv32 = zext i1 %cmp31 to i32
  %call33 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 129, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.49, i64 0, i64 0), i32 noundef %conv32) #8
  %tobool34.not = icmp ne i32 %call33, 0
  %. = zext i1 %tobool34.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end25, %if.end20, %if.end, %lor.lhs.false, %lor.lhs.false10, %lor.lhs.false16, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %lor.lhs.false16 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %if.end20 ], [ 0, %if.end25 ], [ %., %if.end29 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_atomic() #1 {
entry:
  %val = alloca i32, align 4
  %ret = alloca i32, align 4
  %val64 = alloca i64, align 8
  %ret64 = alloca i64, align 8
  %0 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  store i32 0, i32* %val, align 4, !tbaa !11
  %1 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #9
  store i32 0, i32* %ret, align 4, !tbaa !11
  %2 = bitcast i64* %val64 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  store i64 1, i64* %val64, align 8, !tbaa !9
  %3 = bitcast i64* %ret64 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9
  store i64 0, i64* %ret64, align 8, !tbaa !9
  %call = tail call i8* @CRYPTO_THREAD_lock_new() #8
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 140, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0), i8* noundef %call) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i32 @CRYPTO_atomic_add(i32* noundef nonnull %val, i32 noundef 1, i32* noundef nonnull %ret, i8* noundef null) #8
  %tobool3.not = icmp eq i32 %call2, 0
  %4 = load i32, i32* %val, align 4, !tbaa !11
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 145, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0), i32 noundef %4, i32 noundef 1) #8
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then4
  %5 = load i32, i32* %val, align 4, !tbaa !11
  %6 = load i32, i32* %ret, align 4, !tbaa !11
  %call7 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 145, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i32 noundef %5, i32 noundef %6) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %if.end18

if.else:                                          ; preds = %if.end
  %call11 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 149, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0), i32 noundef %4, i32 noundef 0) #8
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %if.else
  %7 = load i32, i32* %val, align 4, !tbaa !11
  %8 = load i32, i32* %ret, align 4, !tbaa !11
  %call14 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 149, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i32 noundef %7, i32 noundef %8) #8
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %if.end18

if.end18:                                         ; preds = %lor.lhs.false13, %lor.lhs.false
  store i32 0, i32* %val, align 4, !tbaa !11
  store i32 0, i32* %ret, align 4, !tbaa !11
  %call19 = call i32 @CRYPTO_atomic_add(i32* noundef nonnull %val, i32 noundef 1, i32* noundef nonnull %ret, i8* noundef %call) #8
  %cmp = icmp ne i32 %call19, 0
  %conv = zext i1 %cmp to i32
  %call20 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 155, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.56, i64 0, i64 0), i32 noundef %conv) #8
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %if.end23

if.end23:                                         ; preds = %if.end18
  %9 = load i32, i32* %val, align 4, !tbaa !11
  %call24 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 157, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0), i32 noundef %9, i32 noundef 1) #8
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %if.end23
  %10 = load i32, i32* %val, align 4, !tbaa !11
  %11 = load i32, i32* %ret, align 4, !tbaa !11
  %call27 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 157, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i32 noundef %10, i32 noundef %11) #8
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %if.end30

if.end30:                                         ; preds = %lor.lhs.false26
  %call31 = call i32 @CRYPTO_atomic_or(i64* noundef nonnull %val64, i64 noundef 2, i64* noundef nonnull %ret64, i8* noundef null) #8
  %tobool32.not = icmp eq i32 %call31, 0
  %12 = load i64, i64* %val64, align 8, !tbaa !9
  %conv45 = trunc i64 %12 to i32
  br i1 %tobool32.not, label %if.else44, label %if.then33

if.then33:                                        ; preds = %if.end30
  %call35 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 162, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv45, i32 noundef 3) #8
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %err, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %if.then33
  %13 = load i64, i64* %val64, align 8, !tbaa !9
  %conv38 = trunc i64 %13 to i32
  %14 = load i64, i64* %ret64, align 8, !tbaa !9
  %conv39 = trunc i64 %14 to i32
  %call40 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 163, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.59, i64 0, i64 0), i32 noundef %conv38, i32 noundef %conv39) #8
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %err, label %if.end54

if.else44:                                        ; preds = %if.end30
  %call46 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 167, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0), i32 noundef %conv45, i32 noundef 1) #8
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %err, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %if.else44
  %15 = load i64, i64* %ret64, align 8, !tbaa !9
  %conv49 = trunc i64 %15 to i32
  %call50 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 168, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.59, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0), i32 noundef %conv49, i32 noundef 0) #8
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %err, label %if.end54

if.end54:                                         ; preds = %lor.lhs.false48, %lor.lhs.false37
  store i64 1, i64* %val64, align 8, !tbaa !9
  store i64 0, i64* %ret64, align 8, !tbaa !9
  %call55 = call i32 @CRYPTO_atomic_or(i64* noundef nonnull %val64, i64 noundef 2, i64* noundef nonnull %ret64, i8* noundef %call) #8
  %cmp56 = icmp ne i32 %call55, 0
  %conv57 = zext i1 %cmp56 to i32
  %call58 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 174, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.60, i64 0, i64 0), i32 noundef %conv57) #8
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %err, label %if.end61

if.end61:                                         ; preds = %if.end54
  %16 = load i64, i64* %val64, align 8, !tbaa !9
  %conv62 = trunc i64 %16 to i32
  %call63 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 177, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv62, i32 noundef 3) #8
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %err, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %if.end61
  %17 = load i64, i64* %val64, align 8, !tbaa !9
  %conv66 = trunc i64 %17 to i32
  %18 = load i64, i64* %ret64, align 8, !tbaa !9
  %conv67 = trunc i64 %18 to i32
  %call68 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 178, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.59, i64 0, i64 0), i32 noundef %conv66, i32 noundef %conv67) #8
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %err, label %if.end71

if.end71:                                         ; preds = %lor.lhs.false65
  store i64 0, i64* %ret64, align 8, !tbaa !9
  %call72 = call i32 @CRYPTO_atomic_load(i64* noundef nonnull %val64, i64* noundef nonnull %ret64, i8* noundef null) #8
  %tobool73.not = icmp eq i32 %call72, 0
  %19 = load i64, i64* %val64, align 8, !tbaa !9
  %conv86 = trunc i64 %19 to i32
  br i1 %tobool73.not, label %if.else85, label %if.then74

if.then74:                                        ; preds = %if.end71
  %call76 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 184, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv86, i32 noundef 3) #8
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %err, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %if.then74
  %20 = load i64, i64* %val64, align 8, !tbaa !9
  %conv79 = trunc i64 %20 to i32
  %21 = load i64, i64* %ret64, align 8, !tbaa !9
  %conv80 = trunc i64 %21 to i32
  %call81 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 185, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.59, i64 0, i64 0), i32 noundef %conv79, i32 noundef %conv80) #8
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %err, label %if.end95

if.else85:                                        ; preds = %if.end71
  %call87 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 189, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv86, i32 noundef 3) #8
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %err, label %lor.lhs.false89

lor.lhs.false89:                                  ; preds = %if.else85
  %22 = load i64, i64* %ret64, align 8, !tbaa !9
  %conv90 = trunc i64 %22 to i32
  %call91 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 190, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.59, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0), i32 noundef %conv90, i32 noundef 0) #8
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %err, label %if.end95

if.end95:                                         ; preds = %lor.lhs.false89, %lor.lhs.false78
  store i64 0, i64* %ret64, align 8, !tbaa !9
  %call96 = call i32 @CRYPTO_atomic_load(i64* noundef nonnull %val64, i64* noundef nonnull %ret64, i8* noundef %call) #8
  %cmp97 = icmp ne i32 %call96, 0
  %conv98 = zext i1 %cmp97 to i32
  %call99 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 195, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.61, i64 0, i64 0), i32 noundef %conv98) #8
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %err, label %if.end102

if.end102:                                        ; preds = %if.end95
  %23 = load i64, i64* %val64, align 8, !tbaa !9
  %conv103 = trunc i64 %23 to i32
  %call104 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 198, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv103, i32 noundef 3) #8
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %err, label %lor.lhs.false106

lor.lhs.false106:                                 ; preds = %if.end102
  %24 = load i64, i64* %val64, align 8, !tbaa !9
  %conv107 = trunc i64 %24 to i32
  %25 = load i64, i64* %ret64, align 8, !tbaa !9
  %conv108 = trunc i64 %25 to i32
  %call109 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 199, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.59, i64 0, i64 0), i32 noundef %conv107, i32 noundef %conv108) #8
  %tobool110.not = icmp ne i32 %call109, 0
  %spec.select = zext i1 %tobool110.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false106, %if.end102, %if.end95, %if.else85, %lor.lhs.false89, %if.then74, %lor.lhs.false78, %if.end61, %lor.lhs.false65, %if.end54, %if.else44, %lor.lhs.false48, %if.then33, %lor.lhs.false37, %if.end23, %lor.lhs.false26, %if.end18, %if.else, %lor.lhs.false13, %if.then4, %lor.lhs.false
  %testresult.0 = phi i32 [ 0, %if.end102 ], [ 0, %if.end95 ], [ 0, %lor.lhs.false78 ], [ 0, %if.then74 ], [ 0, %lor.lhs.false89 ], [ 0, %if.else85 ], [ 0, %lor.lhs.false65 ], [ 0, %if.end61 ], [ 0, %if.end54 ], [ 0, %lor.lhs.false37 ], [ 0, %if.then33 ], [ 0, %lor.lhs.false48 ], [ 0, %if.else44 ], [ 0, %lor.lhs.false26 ], [ 0, %if.end23 ], [ 0, %if.end18 ], [ 0, %lor.lhs.false ], [ 0, %if.then4 ], [ 0, %lor.lhs.false13 ], [ 0, %if.else ], [ %spec.select, %lor.lhs.false106 ]
  call void @CRYPTO_THREAD_lock_free(i8* noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %err
  %retval.0 = phi i32 [ %testresult.0, %err ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_multi_load() #1 {
entry:
  %threads = alloca [3 x i64], align 16
  %0 = bitcast [3 x i64]* %threads to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #9
  %.b = load i1, i1* @multidefault_run, align 4
  br i1 %.b, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 525, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.62, i64 0, i64 0)) #8
  %call = tail call i32 @test_multi_default() #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i32 [ 1, %entry ], [ %call, %if.then ]
  %arrayidx = getelementptr inbounds [3 x i64], [3 x i64]* %threads, i64 0, i64 0
  %call1 = call fastcc i32 @run_thread(i64* noundef nonnull %arrayidx, void ()* noundef nonnull @test_multi_load_worker) #10
  %cmp2 = icmp ne i32 %call1, 0
  %conv = zext i1 %cmp2 to i32
  %call3 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 530, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.63, i64 0, i64 0), i32 noundef %conv) #8
  %arrayidx.1 = getelementptr inbounds [3 x i64], [3 x i64]* %threads, i64 0, i64 1
  %call1.1 = call fastcc i32 @run_thread(i64* noundef nonnull %arrayidx.1, void ()* noundef nonnull @test_multi_load_worker) #10
  %cmp2.1 = icmp ne i32 %call1.1, 0
  %conv.1 = zext i1 %cmp2.1 to i32
  %call3.1 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 530, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.63, i64 0, i64 0), i32 noundef %conv.1) #8
  %arrayidx.2 = getelementptr inbounds [3 x i64], [3 x i64]* %threads, i64 0, i64 2
  %call1.2 = call fastcc i32 @run_thread(i64* noundef nonnull %arrayidx.2, void ()* noundef nonnull @test_multi_load_worker) #10
  %cmp2.2 = icmp ne i32 %call1.2, 0
  %conv.2 = zext i1 %cmp2.2 to i32
  %call3.2 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 530, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.63, i64 0, i64 0), i32 noundef %conv.2) #8
  %1 = load i64, i64* %arrayidx, align 16, !tbaa !9
  %call10 = call fastcc i32 @wait_for_thread(i64 noundef %1) #10
  %cmp11 = icmp ne i32 %call10, 0
  %conv12 = zext i1 %cmp11 to i32
  %call13 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 533, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0), i32 noundef %conv12) #8
  %2 = load i64, i64* %arrayidx.1, align 8, !tbaa !9
  %call10.1 = call fastcc i32 @wait_for_thread(i64 noundef %2) #10
  %cmp11.1 = icmp ne i32 %call10.1, 0
  %conv12.1 = zext i1 %cmp11.1 to i32
  %call13.1 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 533, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0), i32 noundef %conv12.1) #8
  %3 = load i64, i64* %arrayidx.2, align 16, !tbaa !9
  %call10.2 = call fastcc i32 @wait_for_thread(i64 noundef %3) #10
  %cmp11.2 = icmp ne i32 %call10.2, 0
  %conv12.2 = zext i1 %cmp11.2 to i32
  %call13.2 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 533, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0), i32 noundef %conv12.2) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #9
  ret i32 %res.0
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_multi(i32 noundef %idx) #1 {
entry:
  %thread1 = alloca i64, align 8
  %thread2 = alloca i64, align 8
  %0 = bitcast i64* %thread1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %1 = bitcast i64* %thread2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  %cmp = icmp ne i32 %idx, 1
  %.b = load i1, i1* @do_fips, align 4
  %or.cond = select i1 %cmp, i1 true, i1 %.b
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, i32, i8*, ...) @test_skip(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 382, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.67, i64 0, i64 0)) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  store i1 true, i1* @multi_success, align 4
  %2 = load i8*, i8** @config_file, align 8, !tbaa !5
  %call1 = tail call i32 @test_get_libctx(%struct.ossl_lib_ctx_st** noundef nonnull @multi_libctx, %struct.ossl_provider_st** noundef null, i8* noundef %2, %struct.ossl_provider_st** noundef null, i8* noundef null) #8
  %cmp2 = icmp ne i32 %call1, 0
  %conv = zext i1 %cmp2 to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 391, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.68, i64 0, i64 0), i32 noundef %conv) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @multi_libctx, align 8, !tbaa !5
  %cmp7 = icmp eq i32 %idx, 1
  %cond = select i1 %cmp7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0)
  %call9 = tail call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef %3, i8* noundef %cond) #8
  %4 = bitcast %struct.ossl_provider_st* %call9 to i8*
  %call10 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 395, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i8* noundef %4) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %if.end13

if.end13:                                         ; preds = %if.end6
  switch i32 %idx, label %sw.default [
    i32 0, label %sw.epilog
    i32 1, label %sw.epilog
    i32 2, label %sw.bb14
    i32 3, label %sw.bb15
    i32 4, label %sw.bb16
    i32 5, label %sw.bb29
  ]

sw.bb14:                                          ; preds = %if.end13
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end13
  br label %sw.bb16

sw.bb16:                                          ; preds = %if.end13, %sw.bb15
  %worker2.0 = phi void ()* [ null, %if.end13 ], [ @thread_downgrade_shared_evp_pkey, %sw.bb15 ]
  %.b90 = load i1, i1* @do_fips, align 4
  br i1 %.b90, label %land.lhs.true18, label %if.end23

land.lhs.true18:                                  ; preds = %sw.bb16
  %5 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @multi_libctx, align 8, !tbaa !5
  %call19 = tail call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef %5, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #8
  %6 = bitcast %struct.ossl_provider_st* %call19 to i8*
  %call20 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 415, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.69, i64 0, i64 0), i8* noundef %6) #8
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %if.end23

if.end23:                                         ; preds = %land.lhs.true18, %sw.bb16
  %prov2.0 = phi %struct.ossl_provider_st* [ %call19, %land.lhs.true18 ], [ null, %sw.bb16 ]
  %7 = load i8*, i8** @privkey, align 8, !tbaa !5
  %8 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @multi_libctx, align 8, !tbaa !5
  %call24 = tail call %struct.evp_pkey_st* @load_pkey_pem(i8* noundef %7, %struct.ossl_lib_ctx_st* noundef %8) #8
  store %struct.evp_pkey_st* %call24, %struct.evp_pkey_st** @shared_evp_pkey, align 8, !tbaa !5
  %9 = bitcast %struct.evp_pkey_st* %call24 to i8*
  %call25 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 417, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.70, i64 0, i64 0), i8* noundef %9) #8
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %err, label %sw.epilog

sw.bb29:                                          ; preds = %if.end13
  %10 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @multi_libctx, align 8, !tbaa !5
  %call30 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %10, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i64 0, i64 0), i8* noundef null) #8
  %call31 = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %call9) #8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end13
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 433, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.71, i64 0, i64 0)) #8
  br label %err

sw.epilog:                                        ; preds = %if.end23, %if.end13, %if.end13, %sw.bb29, %sw.bb14
  %prov.0 = phi %struct.ossl_provider_st* [ null, %sw.bb29 ], [ %call9, %sw.bb14 ], [ %call9, %if.end13 ], [ %call9, %if.end13 ], [ %call9, %if.end23 ]
  %prov2.1 = phi %struct.ossl_provider_st* [ null, %sw.bb29 ], [ null, %sw.bb14 ], [ null, %if.end13 ], [ null, %if.end13 ], [ %prov2.0, %if.end23 ]
  %worker.0 = phi void ()* [ @thread_provider_load_unload, %sw.bb29 ], [ @thread_multi_simple_fetch, %sw.bb14 ], [ @thread_general_worker, %if.end13 ], [ @thread_general_worker, %if.end13 ], [ @thread_shared_evp_pkey, %if.end23 ]
  %worker2.1 = phi void ()* [ null, %sw.bb29 ], [ null, %sw.bb14 ], [ null, %if.end13 ], [ null, %if.end13 ], [ %worker2.0, %if.end23 ]
  %sha256.0 = phi %struct.evp_md_st* [ %call30, %sw.bb29 ], [ null, %sw.bb14 ], [ null, %if.end13 ], [ null, %if.end13 ], [ null, %if.end23 ]
  %call36 = call fastcc i32 @run_thread(i64* noundef nonnull %thread1, void ()* noundef nonnull %worker.0) #10
  %cmp37 = icmp ne i32 %call36, 0
  %conv38 = zext i1 %cmp37 to i32
  %call39 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 439, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.72, i64 0, i64 0), i32 noundef %conv38) #8
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %cmp32 = icmp eq void ()* %worker2.1, null
  %spec.select = select i1 %cmp32, void ()* %worker.0, void ()* %worker2.1
  %call41 = call fastcc i32 @run_thread(i64* noundef nonnull %thread2, void ()* noundef %spec.select) #10
  %cmp42 = icmp ne i32 %call41, 0
  %conv43 = zext i1 %cmp42 to i32
  %call44 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 440, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.73, i64 0, i64 0), i32 noundef %conv43) #8
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %err, label %if.end47

if.end47:                                         ; preds = %lor.lhs.false
  call void %worker.0() #8, !callees !13
  %11 = load i64, i64* %thread1, align 8, !tbaa !9
  %call48 = call fastcc i32 @wait_for_thread(i64 noundef %11) #10
  %cmp49 = icmp ne i32 %call48, 0
  %conv50 = zext i1 %cmp49 to i32
  %call51 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 449, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i32 noundef %conv50) #8
  %tobool52.not = icmp ne i32 %call51, 0
  %12 = load i64, i64* %thread2, align 8, !tbaa !9
  %call55 = call fastcc i32 @wait_for_thread(i64 noundef %12) #10
  %cmp56 = icmp ne i32 %call55, 0
  %conv57 = zext i1 %cmp56 to i32
  %call58 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 451, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv57) #8
  %tobool59.not = icmp ne i32 %call58, 0
  %.b91 = load i1, i1* @multi_success, align 4
  %conv63 = zext i1 %.b91 to i32
  %call64 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 453, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv63) #8
  %tobool65.not = icmp ne i32 %call64, 0
  %13 = select i1 %tobool65.not, i1 %tobool59.not, i1 false
  %narrow94 = select i1 %13, i1 %tobool52.not, i1 false
  %spec.select93 = zext i1 %narrow94 to i32
  br label %err

err:                                              ; preds = %if.end47, %sw.epilog, %lor.lhs.false, %if.end23, %land.lhs.true18, %if.end6, %sw.default
  %testresult.2 = phi i32 [ 0, %sw.default ], [ 0, %lor.lhs.false ], [ 0, %sw.epilog ], [ 0, %if.end23 ], [ 0, %land.lhs.true18 ], [ 0, %if.end6 ], [ %spec.select93, %if.end47 ]
  %prov.1 = phi %struct.ossl_provider_st* [ %call9, %sw.default ], [ %prov.0, %lor.lhs.false ], [ %prov.0, %sw.epilog ], [ %call9, %if.end23 ], [ %call9, %land.lhs.true18 ], [ %call9, %if.end6 ], [ %prov.0, %if.end47 ]
  %prov2.2 = phi %struct.ossl_provider_st* [ null, %sw.default ], [ %prov2.1, %lor.lhs.false ], [ %prov2.1, %sw.epilog ], [ %prov2.0, %if.end23 ], [ %call19, %land.lhs.true18 ], [ null, %if.end6 ], [ %prov2.1, %if.end47 ]
  %sha256.1 = phi %struct.evp_md_st* [ null, %sw.default ], [ %sha256.0, %lor.lhs.false ], [ %sha256.0, %sw.epilog ], [ null, %if.end23 ], [ null, %land.lhs.true18 ], [ null, %if.end6 ], [ %sha256.0, %if.end47 ]
  call void @EVP_MD_free(%struct.evp_md_st* noundef %sha256.1) #8
  %call68 = call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %prov.1) #8
  %call69 = call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %prov2.2) #8
  %14 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @multi_libctx, align 8, !tbaa !5
  call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %14) #8
  %15 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @shared_evp_pkey, align 8, !tbaa !5
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %15) #8
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** @shared_evp_pkey, align 8, !tbaa !5
  store %struct.ossl_lib_ctx_st* null, %struct.ossl_lib_ctx_st** @multi_libctx, align 8, !tbaa !5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %err, %if.then
  %retval.0 = phi i32 [ %testresult.2, %err ], [ %call, %if.then ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @cleanup_tests() local_unnamed_addr #1 {
entry:
  %0 = load i8*, i8** @privkey, align 8, !tbaa !5
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 598) #8
  ret void
}

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @test_skip(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @run_thread(i64* noundef %t, void ()* noundef %f) unnamed_addr #1 {
entry:
  %0 = bitcast void ()* %f to i8*
  %call = tail call i32 @pthread_create(i64* noundef %t, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef nonnull @thread_run, i8* noundef %0) #8
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define internal void @thread_multi_simple_fetch() #1 {
entry:
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @multi_libctx, align 8, !tbaa !5
  %call = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %0, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i64 0, i64 0), i8* noundef null) #8
  %cmp.not = icmp eq %struct.evp_md_st* %call, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef nonnull %call) #8
  br label %if.end

if.else:                                          ; preds = %entry
  store i1 false, i1* @multi_success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @wait_for_thread(i64 noundef %thread) unnamed_addr #1 {
entry:
  %call = tail call i32 @pthread_join(i64 noundef %thread, i8** noundef null) #8
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare dso_local i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64* noundef, %union.pthread_attr_t* noundef, i8* (i8*)* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal i8* @thread_run(i8* nocapture noundef readonly %arg) #1 {
entry:
  %0 = bitcast i8* %arg to void ()*
  tail call void %0() #8
  ret i8* null
}

declare dso_local %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #3

declare dso_local i32 @pthread_join(i64 noundef, i8** noundef) local_unnamed_addr #3

declare dso_local i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #3

declare dso_local i32 @CRYPTO_THREAD_read_lock(i8* noundef) local_unnamed_addr #3

declare dso_local i32 @CRYPTO_THREAD_unlock(i8* noundef) local_unnamed_addr #3

declare dso_local void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @once_run_thread_cb() #1 {
entry:
  %call = tail call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @once_run, void ()* noundef nonnull @once_do_run) #8
  ret void
}

declare dso_local i32 @CRYPTO_THREAD_run_once(i32* noundef, void ()* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @once_do_run() #5 {
entry:
  %0 = load i32, i32* @once_run_count, align 4, !tbaa !11
  %inc = add i32 %0, 1
  store i32 %inc, i32* @once_run_count, align 4, !tbaa !11
  ret void
}

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @CRYPTO_THREAD_init_local(i32* noundef, void (i8*)* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @thread_local_destructor(i8* noundef %arg) #5 {
entry:
  %cmp = icmp eq i8* %arg, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %arg to i32*
  %1 = load i32, i32* %0, align 4, !tbaa !11
  %inc = add i32 %1, 1
  store i32 %inc, i32* %0, align 4, !tbaa !11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

declare dso_local i8* @CRYPTO_THREAD_get_local(i32* noundef) local_unnamed_addr #3

declare dso_local i32 @test_ptr_null(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @thread_local_thread_cb() #1 {
entry:
  %call = tail call i8* @CRYPTO_THREAD_get_local(i32* noundef nonnull @thread_local_key) #8
  %call1 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i8* noundef %call) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @CRYPTO_THREAD_set_local(i32* noundef nonnull @thread_local_key, i8* noundef bitcast (i32* @destructor_run_count to i8*)) #8
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.50, i64 0, i64 0), i32 noundef %conv) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call5 = tail call i8* @CRYPTO_THREAD_get_local(i32* noundef nonnull @thread_local_key) #8
  %call6 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.51, i64 0, i64 0), i8* noundef %call5, i8* noundef bitcast (i32* @destructor_run_count to i8*)) #8
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end
  store i1 true, i1* @thread_local_thread_cb_ok, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %lor.lhs.false, %if.end9
  ret void
}

declare dso_local i32 @CRYPTO_THREAD_cleanup_local(i32* noundef) local_unnamed_addr #3

declare dso_local i32 @CRYPTO_THREAD_set_local(i32* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @test_ptr_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @CRYPTO_atomic_add(i32* noundef, i32 noundef, i32* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @CRYPTO_atomic_or(i64* noundef, i64 noundef, i64* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @test_uint_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @CRYPTO_atomic_load(i64* noundef, i64* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @test_multi_load_worker() #1 {
entry:
  %call = tail call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0)) #8
  %0 = bitcast %struct.ossl_provider_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 477, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.65, i64 0, i64 0), i8* noundef %0) #8
  %call2 = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %call) #8
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 478, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.66, i64 0, i64 0), i32 noundef %conv) #8
  ret void
}

declare dso_local i32 @test_get_libctx(%struct.ossl_lib_ctx_st** noundef, %struct.ossl_provider_st** noundef, i8* noundef, %struct.ossl_provider_st** noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @thread_general_worker() #1 {
entry:
  %out = alloca [64 x i8], align 16
  %key = alloca [16 x i8], align 16
  %iv = alloca [16 x i8], align 16
  %mdoutl = alloca i32, align 4
  %ciphoutl = alloca i32, align 4
  %call = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #8
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @multi_libctx, align 8, !tbaa !5
  %call1 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %0, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i64 0, i64 0), i8* noundef null) #8
  %call2 = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #8
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @multi_libctx, align 8, !tbaa !5
  %call3 = tail call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.74, i64 0, i64 0), i8* noundef null) #8
  %call4 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i64 0, i64 0)) #11
  %2 = getelementptr inbounds [64 x i8], [64 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %2) #9
  %3 = getelementptr inbounds [16 x i8], [16 x i8]* %key, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %3, i8* noundef nonnull align 16 dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @__const.thread_general_worker.iv, i64 0, i64 0), i64 16, i1 false)
  %4 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %4, i8* noundef nonnull align 16 dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @__const.thread_general_worker.iv, i64 0, i64 0), i64 16, i1 false)
  %5 = bitcast i32* %mdoutl to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #9
  %6 = bitcast i32* %ciphoutl to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  %7 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @multi_libctx, align 8, !tbaa !5
  %call5 = tail call i32 @OSSL_PROVIDER_available(%struct.ossl_lib_ctx_st* noundef %7, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #8
  %8 = bitcast %struct.evp_md_ctx_st* %call to i8*
  %call6 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 237, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i64 0, i64 0), i8* noundef %8) #8
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then71.critedge107, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = bitcast %struct.evp_md_st* %call1 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 238, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77, i64 0, i64 0), i8* noundef %9) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then71.critedge108, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %10 = bitcast %struct.evp_cipher_ctx_st* %call2 to i8*
  %call10 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 239, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i64 0, i64 0), i8* noundef %10) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then71.critedge109, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %11 = bitcast %struct.evp_cipher_st* %call3 to i8*
  %call13 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 240, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i64 0, i64 0), i8* noundef %11) #8
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then71.critedge110, label %for.body

for.cond:                                         ; preds = %lor.lhs.false25
  %inc = add nuw nsw i32 %i.0111, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.cond33.preheader, label %for.body, !llvm.loop !14

for.cond33.preheader:                             ; preds = %for.cond
  %conv46 = trunc i64 %call4 to i32
  br label %for.body36

for.body:                                         ; preds = %lor.lhs.false12, %for.cond
  %i.0111 = phi i32 [ %inc, %for.cond ], [ 0, %lor.lhs.false12 ]
  %call15 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef %call, %struct.evp_md_st* noundef %call1, %struct.engine_st* noundef null) #8
  %cmp16 = icmp ne i32 %call15, 0
  %conv = zext i1 %cmp16 to i32
  %call17 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 245, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.80, i64 0, i64 0), i32 noundef %conv) #8
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then71.critedge104, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %for.body
  %call20 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i64 0, i64 0), i64 noundef %call4) #8
  %cmp21 = icmp ne i32 %call20, 0
  %conv22 = zext i1 %cmp21 to i32
  %call23 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 246, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.81, i64 0, i64 0), i32 noundef %conv22) #8
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then71.critedge105, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false19
  %call26 = call i32 @EVP_DigestFinal(%struct.evp_md_ctx_st* noundef %call, i8* noundef nonnull %2, i32* noundef nonnull %mdoutl) #8
  %cmp27 = icmp ne i32 %call26, 0
  %conv28 = zext i1 %cmp27 to i32
  %call29 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 247, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.82, i64 0, i64 0), i32 noundef %conv28) #8
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then71.critedge106, label %for.cond

for.cond33:                                       ; preds = %lor.lhs.false52
  %inc62 = add nuw nsw i32 %i.1112, 1
  %exitcond113.not = icmp eq i32 %inc62, 5
  br i1 %exitcond113.not, label %for.end63, label %for.body36, !llvm.loop !15

for.body36:                                       ; preds = %for.cond33.preheader, %for.cond33
  %i.1112 = phi i32 [ 0, %for.cond33.preheader ], [ %inc62, %for.cond33 ]
  %call39 = call i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef %call2, %struct.evp_cipher_st* noundef %call3, %struct.engine_st* noundef null, i8* noundef nonnull %3, i8* noundef nonnull %4) #8
  %cmp40 = icmp ne i32 %call39, 0
  %conv41 = zext i1 %cmp40 to i32
  %call42 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 251, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.83, i64 0, i64 0), i32 noundef %conv41) #8
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then71.critedge, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %for.body36
  %call47 = call i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef %call2, i8* noundef nonnull %2, i32* noundef nonnull %ciphoutl, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i64 0, i64 0), i32 noundef %conv46) #8
  %cmp48 = icmp ne i32 %call47, 0
  %conv49 = zext i1 %cmp48 to i32
  %call50 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 254, i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.84, i64 0, i64 0), i32 noundef %conv49) #8
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then71.critedge102, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false44
  %call54 = call i32 @EVP_EncryptFinal(%struct.evp_cipher_ctx_st* noundef %call2, i8* noundef nonnull %2, i32* noundef nonnull %ciphoutl) #8
  %cmp55 = icmp ne i32 %call54, 0
  %conv56 = zext i1 %cmp55 to i32
  %call57 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 255, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.85, i64 0, i64 0), i32 noundef %conv56) #8
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then71.critedge103, label %for.cond33

for.end63:                                        ; preds = %for.cond33
  %12 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @multi_libctx, align 8, !tbaa !5
  %tobool64.not = icmp eq i32 %call5, 0
  %cond = select i1 %tobool64.not, i32 512, i32 2048
  %call65 = call %struct.evp_pkey_st* (%struct.ossl_lib_ctx_st*, i8*, i8*, ...) @EVP_PKEY_Q_keygen(%struct.ossl_lib_ctx_st* noundef %12, i8* noundef null, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i64 0, i64 0), i32 noundef %cond) #8
  %13 = bitcast %struct.evp_pkey_st* %call65 to i8*
  %call66 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 265, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i64 0, i64 0), i8* noundef %13) #8
  %tobool67.not = icmp eq i32 %call66, 0
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call) #8
  call void @EVP_MD_free(%struct.evp_md_st* noundef %call1) #8
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %call2) #8
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %call3) #8
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call65) #8
  br i1 %tobool67.not, label %if.then71, label %if.end72

if.then71.critedge:                               ; preds = %for.body36
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call) #8
  call void @EVP_MD_free(%struct.evp_md_st* noundef %call1) #8
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %call2) #8
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %call3) #8
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef null) #8
  br label %if.then71

if.then71.critedge102:                            ; preds = %lor.lhs.false44
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call) #8
  call void @EVP_MD_free(%struct.evp_md_st* noundef %call1) #8
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %call2) #8
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %call3) #8
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef null) #8
  br label %if.then71

if.then71.critedge103:                            ; preds = %lor.lhs.false52
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call) #8
  call void @EVP_MD_free(%struct.evp_md_st* noundef %call1) #8
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %call2) #8
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %call3) #8
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef null) #8
  br label %if.then71

if.then71.critedge104:                            ; preds = %for.body
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call) #8
  call void @EVP_MD_free(%struct.evp_md_st* noundef %call1) #8
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %call2) #8
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %call3) #8
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef null) #8
  br label %if.then71

if.then71.critedge105:                            ; preds = %lor.lhs.false19
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call) #8
  call void @EVP_MD_free(%struct.evp_md_st* noundef %call1) #8
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %call2) #8
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %call3) #8
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef null) #8
  br label %if.then71

if.then71.critedge106:                            ; preds = %lor.lhs.false25
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call) #8
  call void @EVP_MD_free(%struct.evp_md_st* noundef %call1) #8
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %call2) #8
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %call3) #8
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef null) #8
  br label %if.then71

if.then71.critedge107:                            ; preds = %entry
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call) #8
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %call1) #8
  tail call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %call2) #8
  tail call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %call3) #8
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef null) #8
  br label %if.then71

if.then71.critedge108:                            ; preds = %lor.lhs.false
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call) #8
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %call1) #8
  tail call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %call2) #8
  tail call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %call3) #8
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef null) #8
  br label %if.then71

if.then71.critedge109:                            ; preds = %lor.lhs.false9
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call) #8
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %call1) #8
  tail call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %call2) #8
  tail call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %call3) #8
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef null) #8
  br label %if.then71

if.then71.critedge110:                            ; preds = %lor.lhs.false12
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call) #8
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %call1) #8
  tail call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %call2) #8
  tail call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %call3) #8
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef null) #8
  br label %if.then71

if.then71:                                        ; preds = %if.then71.critedge110, %if.then71.critedge109, %if.then71.critedge108, %if.then71.critedge107, %if.then71.critedge106, %if.then71.critedge105, %if.then71.critedge104, %if.then71.critedge103, %if.then71.critedge102, %if.then71.critedge, %for.end63
  store i1 false, i1* @multi_success, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %for.end63
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %2) #9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @thread_downgrade_shared_evp_pkey() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @shared_evp_pkey, align 8, !tbaa !5
  %call = tail call %struct.rsa_st* @EVP_PKEY_get0_RSA(%struct.evp_pkey_st* noundef %0) #8
  %cmp = icmp eq %struct.rsa_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* @multi_success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare dso_local %struct.evp_pkey_st* @load_pkey_pem(i8* noundef, %struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @thread_shared_evp_pkey() #1 {
entry:
  %ctbuf = alloca [256 x i8], align 16
  %ptbuf = alloca [256 x i8], align 16
  %ptlen = alloca i64, align 8
  %ctlen = alloca i64, align 8
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %ctbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #9
  %1 = getelementptr inbounds [256 x i8], [256 x i8]* %ptbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %1) #9
  %2 = bitcast i64* %ptlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  store i64 256, i64* %ptlen, align 8, !tbaa !9
  %3 = bitcast i64* %ctlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9
  store i64 256, i64* %ctlen, align 8, !tbaa !9
  br label %for.body

for.cond:                                         ; preds = %lor.lhs.false29
  %.b = load i1, i1* @do_fips, align 4
  %add = select i1 %.b, i32 2, i32 1
  %cmp = icmp ult i32 %inc, %add
  br i1 %cmp, label %for.body, label %err, !llvm.loop !16

for.body:                                         ; preds = %entry, %for.cond
  %i.082 = phi i32 [ 0, %entry ], [ %inc, %for.cond ]
  %ctx.081 = phi %struct.evp_pkey_ctx_st* [ null, %entry ], [ %call15, %for.cond ]
  %cmp1.not = icmp eq i32 %i.082, 0
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %ctx.081) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %cond = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.89, i64 0, i64 0), %if.then ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.88, i64 0, i64 0), %for.body ]
  %4 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @multi_libctx, align 8, !tbaa !5
  %5 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @shared_evp_pkey, align 8, !tbaa !5
  %call = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %4, %struct.evp_pkey_st* noundef %5, i8* noundef nonnull %cond) #8
  %6 = bitcast %struct.evp_pkey_ctx_st* %call to i8*
  %call3 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 307, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i8* noundef %6) #8
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then37, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @EVP_PKEY_encrypt_init(%struct.evp_pkey_ctx_st* noundef %call) #8
  %call7 = call i32 @test_int_ge(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 310, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.91, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0), i32 noundef %call6, i32 noundef 0) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end5
  %call9 = call i64 @strlen(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i64 0, i64 0)) #11
  %call10 = call i32 @EVP_PKEY_encrypt(%struct.evp_pkey_ctx_st* noundef %call, i8* noundef nonnull %0, i64* noundef nonnull %ctlen, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i64 0, i64 0), i64 noundef %call9) #8
  %call11 = call i32 @test_int_ge(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 313, i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.92, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0), i32 noundef %call10, i32 noundef 0) #8
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then37, label %if.end14

if.end14:                                         ; preds = %lor.lhs.false
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call) #8
  %7 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @multi_libctx, align 8, !tbaa !5
  %8 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @shared_evp_pkey, align 8, !tbaa !5
  %call15 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %7, %struct.evp_pkey_st* noundef %8, i8* noundef null) #8
  %9 = bitcast %struct.evp_pkey_ctx_st* %call15 to i8*
  %call16 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 319, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i8* noundef %9) #8
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then37, label %if.end19

if.end19:                                         ; preds = %if.end14
  %call20 = call i32 @EVP_PKEY_decrypt_init(%struct.evp_pkey_ctx_st* noundef %call15) #8
  %call21 = call i32 @test_int_ge(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 322, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.93, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0), i32 noundef %call20, i32 noundef 0) #8
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then37, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %if.end19
  %10 = load i64, i64* %ctlen, align 8, !tbaa !9
  %call26 = call i32 @EVP_PKEY_decrypt(%struct.evp_pkey_ctx_st* noundef %call15, i8* noundef nonnull %1, i64* noundef nonnull %ptlen, i8* noundef nonnull %0, i64 noundef %10) #8
  %call27 = call i32 @test_int_ge(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 324, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.94, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0), i32 noundef %call26, i32 noundef 0) #8
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then37, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false23
  %call30 = call i64 @strlen(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i64 0, i64 0)) #11
  %11 = load i64, i64* %ptlen, align 8, !tbaa !9
  %call32 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 325, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.96, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i64 0, i64 0), i64 noundef %call30, i8* noundef nonnull %1, i64 noundef %11) #8
  %tobool33.not = icmp eq i32 %call32, 0
  %inc = add nuw nsw i32 %i.082, 1
  br i1 %tobool33.not, label %if.then37, label %for.cond

err:                                              ; preds = %for.cond
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call15) #8
  br label %if.end38

if.then37:                                        ; preds = %if.end, %if.end5, %lor.lhs.false, %if.end14, %if.end19, %lor.lhs.false23, %lor.lhs.false29
  %call.lcssa.sink = phi %struct.evp_pkey_ctx_st* [ %call15, %lor.lhs.false29 ], [ %call15, %lor.lhs.false23 ], [ %call15, %if.end19 ], [ %call15, %if.end14 ], [ %call, %lor.lhs.false ], [ %call, %if.end5 ], [ %call, %if.end ]
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call.lcssa.sink) #8
  store i1 false, i1* @multi_success, align 4
  br label %if.end38

if.end38:                                         ; preds = %err, %if.then37
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @thread_provider_load_unload() #1 {
entry:
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @multi_libctx, align 8, !tbaa !5
  %call = tail call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0)) #8
  %1 = bitcast %struct.ossl_provider_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 356, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.97, i64 0, i64 0), i8* noundef %1) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @multi_libctx, align 8, !tbaa !5
  %call2 = tail call i32 @OSSL_PROVIDER_available(%struct.ossl_lib_ctx_st* noundef %2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0)) #8
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 357, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.98, i64 0, i64 0), i32 noundef %conv) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, i1* @multi_success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %call5 = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %call) #8
  ret void
}

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #3

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #3

declare dso_local %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() local_unnamed_addr #3

declare dso_local %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

declare dso_local i32 @OSSL_PROVIDER_available(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_DigestFinal(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_EncryptFinal(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_st* @EVP_PKEY_Q_keygen(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #3

declare dso_local void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #3

declare dso_local void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

declare dso_local %struct.rsa_st* @EVP_PKEY_get0_RSA(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef, %struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @test_int_ge(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_encrypt_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_encrypt(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_decrypt_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_decrypt(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = !{void ()* @thread_general_worker, void ()* @thread_multi_simple_fetch, void ()* @thread_provider_load_unload, void ()* @thread_shared_evp_pkey}
!14 = distinct !{!14, !4}
!15 = distinct !{!15, !4}
!16 = distinct !{!16, !4}
