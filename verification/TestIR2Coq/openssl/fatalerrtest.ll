; ModuleID = 'test/fatalerrtest.c'
source_filename = "test/fatalerrtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.ssl_ctx_st = type opaque
%struct.ssl_st = type opaque
%struct.ssl_method_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.bio_st = type opaque

@test_get_options.options = internal constant [9 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [42 x i8] c"Usage: %s [options] certfile privkeyfile\0A\00", align 1
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
@.str.14 = private unnamed_addr constant [20 x i8] c"test/fatalerrtest.c\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Error parsing test options\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"cert = test_get_argument(0)\00", align 1
@cert = internal unnamed_addr global i8* null, align 8
@.str.17 = private unnamed_addr constant [31 x i8] c"privkey = test_get_argument(1)\00", align 1
@privkey = internal unnamed_addr global i8* null, align 8
@.str.18 = private unnamed_addr constant [14 x i8] c"test_fatalerr\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"Dummy\00", align 1
@__const.test_fatalerr.dummyrec = private unnamed_addr constant [10 x i8] c"\17\03\03\00\05Dummy", align 1
@.str.20 = private unnamed_addr constant [100 x i8] c"create_ssl_ctx_pair(NULL, TLS_method(), TLS_method(), TLS1_VERSION, 0, &sctx, &cctx, cert, privkey)\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"SSL_CTX_set_cipher_list(sctx, \22AES128-SHA\22)\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"AES128-SHA\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"SSL_CTX_set_cipher_list(cctx, \22AES256-SHA\22)\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"AES256-SHA\00", align 1
@.str.25 = private unnamed_addr constant [57 x i8] c"SSL_CTX_set_ciphersuites(sctx, \22TLS_AES_128_GCM_SHA256\22)\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"TLS_AES_128_GCM_SHA256\00", align 1
@.str.27 = private unnamed_addr constant [57 x i8] c"SSL_CTX_set_ciphersuites(cctx, \22TLS_AES_256_GCM_SHA384\22)\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"TLS_AES_256_GCM_SHA384\00", align 1
@.str.29 = private unnamed_addr constant [57 x i8] c"create_ssl_objects(sctx, cctx, &sssl, &cssl, NULL, NULL)\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"wbio\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"Unexpected NULL bio received\0A\00", align 1
@.str.32 = private unnamed_addr constant [50 x i8] c"create_ssl_connection(sssl, cssl, SSL_ERROR_NONE)\00", align 1
@.str.33 = private unnamed_addr constant [44 x i8] c"BIO_write(wbio, dummyrec, sizeof(dummyrec))\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.35 = private unnamed_addr constant [43 x i8] c"len = SSL_read(sssl, buf, sizeof(buf) - 1)\00", align 1
@.str.36 = private unnamed_addr constant [37 x i8] c"Unexpected success reading data: %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"SSL_write(sssl, msg, strlen(msg))\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #0 {
entry:
  ret %struct.options_st* getelementptr inbounds ([9 x %struct.options_st], [9 x %struct.options_st]* @test_get_options.options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  %call = tail call i32 @test_skip_common_options() #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0)) #6
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @test_get_argument(i64 noundef 0) #6
  store i8* %call1, i8** @cert, align 8, !tbaa !3
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 94, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), i8* noundef %call1) #6
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call4 = tail call i8* @test_get_argument(i64 noundef 1) #6
  store i8* %call4, i8** @privkey, align 8, !tbaa !3
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i8* noundef %call4) #6
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %return, label %if.end8

if.end8:                                          ; preds = %lor.lhs.false
  tail call void @add_test(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i32 ()* noundef nonnull @test_fatalerr) #6
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false, %if.end8, %if.then
  %retval.0 = phi i32 [ 1, %if.end8 ], [ 0, %if.then ], [ 0, %lor.lhs.false ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare dso_local i32 @test_skip_common_options() local_unnamed_addr #2

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i8* @test_get_argument(i64 noundef) local_unnamed_addr #2

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_fatalerr() #1 {
entry:
  %sctx = alloca %struct.ssl_ctx_st*, align 8
  %cctx = alloca %struct.ssl_ctx_st*, align 8
  %sssl = alloca %struct.ssl_st*, align 8
  %cssl = alloca %struct.ssl_st*, align 8
  %buf = alloca [80 x i8], align 16
  %dummyrec = alloca [10 x i8], align 1
  %0 = bitcast %struct.ssl_ctx_st** %sctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store %struct.ssl_ctx_st* null, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  %1 = bitcast %struct.ssl_ctx_st** %cctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  store %struct.ssl_ctx_st* null, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  %2 = bitcast %struct.ssl_st** %sssl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7
  store %struct.ssl_st* null, %struct.ssl_st** %sssl, align 8, !tbaa !3
  %3 = bitcast %struct.ssl_st** %cssl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #7
  store %struct.ssl_st* null, %struct.ssl_st** %cssl, align 8, !tbaa !3
  %4 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %4) #7
  %5 = getelementptr inbounds [10 x i8], [10 x i8]* %dummyrec, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %5) #7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(10) %5, i8* noundef nonnull align 1 dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @__const.test_fatalerr.dummyrec, i64 0, i64 0), i64 10, i1 false)
  %call = tail call %struct.ssl_method_st* @TLS_method() #6
  %call1 = tail call %struct.ssl_method_st* @TLS_method() #6
  %6 = load i8*, i8** @cert, align 8, !tbaa !3
  %7 = load i8*, i8** @privkey, align 8, !tbaa !3
  %call2 = call i32 @create_ssl_ctx_pair(%struct.ossl_lib_ctx_st* noundef null, %struct.ssl_method_st* noundef %call, %struct.ssl_method_st* noundef %call1, i32 noundef 769, i32 noundef 0, %struct.ssl_ctx_st** noundef nonnull %sctx, %struct.ssl_ctx_st** noundef nonnull %cctx, i8* noundef %6, i8* noundef %7) #6
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 33, i8* noundef getelementptr inbounds ([100 x i8], [100 x i8]* @.str.20, i64 0, i64 0), i32 noundef %conv) #6
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %8 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  %call4 = call i32 @SSL_CTX_set_cipher_list(%struct.ssl_ctx_st* noundef %8, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0)) #6
  %cmp5 = icmp ne i32 %call4, 0
  %conv6 = zext i1 %cmp5 to i32
  %call7 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 40, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.21, i64 0, i64 0), i32 noundef %conv6) #6
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  %call9 = call i32 @SSL_CTX_set_cipher_list(%struct.ssl_ctx_st* noundef %9, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0)) #6
  %cmp10 = icmp ne i32 %call9, 0
  %conv11 = zext i1 %cmp10 to i32
  %call12 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 41, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.23, i64 0, i64 0), i32 noundef %conv11) #6
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %10 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  %call15 = call i32 @SSL_CTX_set_ciphersuites(%struct.ssl_ctx_st* noundef %10, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0)) #6
  %cmp16 = icmp ne i32 %call15, 0
  %conv17 = zext i1 %cmp16 to i32
  %call18 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.25, i64 0, i64 0), i32 noundef %conv17) #6
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false14
  %11 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  %call21 = call i32 @SSL_CTX_set_ciphersuites(%struct.ssl_ctx_st* noundef %11, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0)) #6
  %cmp22 = icmp ne i32 %call21, 0
  %conv23 = zext i1 %cmp22 to i32
  %call24 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv23) #6
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false20
  %12 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  %13 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  %call27 = call i32 @create_ssl_objects(%struct.ssl_ctx_st* noundef %12, %struct.ssl_ctx_st* noundef %13, %struct.ssl_st** noundef nonnull %sssl, %struct.ssl_st** noundef nonnull %cssl, %struct.bio_st* noundef null, %struct.bio_st* noundef null) #6
  %cmp28 = icmp ne i32 %call27, 0
  %conv29 = zext i1 %cmp28 to i32
  %call30 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 noundef %conv29) #6
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %err, label %if.end33

if.end33:                                         ; preds = %lor.lhs.false26
  %14 = load %struct.ssl_st*, %struct.ssl_st** %cssl, align 8, !tbaa !3
  %call34 = call %struct.bio_st* @SSL_get_wbio(%struct.ssl_st* noundef %14) #6
  %15 = bitcast %struct.bio_st* %call34 to i8*
  %call35 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i8* noundef %15) #6
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end33
  %call38 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i64 0, i64 0)) #6
  br label %err

if.end39:                                         ; preds = %if.end33
  %16 = load %struct.ssl_st*, %struct.ssl_st** %sssl, align 8, !tbaa !3
  %17 = load %struct.ssl_st*, %struct.ssl_st** %cssl, align 8, !tbaa !3
  %call40 = call i32 @create_ssl_connection(%struct.ssl_st* noundef %16, %struct.ssl_st* noundef %17, i32 noundef 0) #6
  %cmp41 = icmp ne i32 %call40, 0
  %conv42 = zext i1 %cmp41 to i32
  %call43 = call i32 @test_false(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.32, i64 0, i64 0), i32 noundef %conv42) #6
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %err, label %if.end46

if.end46:                                         ; preds = %if.end39
  call void @ERR_clear_error() #6
  %call47 = call i32 @BIO_write(%struct.bio_st* noundef %call34, i8* noundef nonnull %5, i32 noundef 10) #6
  %call48 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), i32 noundef %call47, i32 noundef 0) #6
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %err, label %if.end51

if.end51:                                         ; preds = %if.end46
  %18 = load %struct.ssl_st*, %struct.ssl_st** %sssl, align 8, !tbaa !3
  %call53 = call i32 @SSL_read(%struct.ssl_st* noundef %18, i8* noundef nonnull %4, i32 noundef 79) #6
  %call54 = call i32 @test_int_le(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), i32 noundef %call53, i32 noundef 0) #6
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.then56, label %if.end58

if.then56:                                        ; preds = %if.end51
  %idxprom = sext i32 %call53 to i64
  %arrayidx = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i64 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !7
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.36, i64 0, i64 0), i8* noundef nonnull %4) #6
  br label %err

if.end58:                                         ; preds = %if.end51
  %19 = load %struct.ssl_st*, %struct.ssl_st** %sssl, align 8, !tbaa !3
  %call59 = call i64 @strlen(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0)) #8
  %conv60 = trunc i64 %call59 to i32
  %call61 = call i32 @SSL_write(%struct.ssl_st* noundef %19, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32 noundef %conv60) #6
  %call62 = call i32 @test_int_le(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), i32 noundef %call61, i32 noundef 0) #6
  %tobool63.not = icmp ne i32 %call62, 0
  %spec.select = zext i1 %tobool63.not to i32
  br label %err

err:                                              ; preds = %if.end58, %if.end46, %if.end39, %if.end, %lor.lhs.false, %lor.lhs.false14, %lor.lhs.false20, %lor.lhs.false26, %entry, %if.then56, %if.then37
  %ret.0 = phi i32 [ 0, %if.then56 ], [ 0, %if.end46 ], [ 0, %if.end39 ], [ 0, %if.then37 ], [ 0, %lor.lhs.false26 ], [ 0, %lor.lhs.false20 ], [ 0, %lor.lhs.false14 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %if.end58 ]
  %20 = load %struct.ssl_st*, %struct.ssl_st** %sssl, align 8, !tbaa !3
  call void @SSL_free(%struct.ssl_st* noundef %20) #6
  %21 = load %struct.ssl_st*, %struct.ssl_st** %cssl, align 8, !tbaa !3
  call void @SSL_free(%struct.ssl_st* noundef %21) #6
  %22 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %22) #6
  %23 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %23) #6
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %5) #7
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %4) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @create_ssl_ctx_pair(%struct.ossl_lib_ctx_st* noundef, %struct.ssl_method_st* noundef, %struct.ssl_method_st* noundef, i32 noundef, i32 noundef, %struct.ssl_ctx_st** noundef, %struct.ssl_ctx_st** noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.ssl_method_st* @TLS_method() local_unnamed_addr #2

declare dso_local i32 @SSL_CTX_set_cipher_list(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_CTX_set_ciphersuites(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @create_ssl_objects(%struct.ssl_ctx_st* noundef, %struct.ssl_ctx_st* noundef, %struct.ssl_st** noundef, %struct.ssl_st** noundef, %struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @SSL_get_wbio(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #2

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @create_ssl_connection(%struct.ssl_st* noundef, %struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @ERR_clear_error() local_unnamed_addr #2

declare dso_local i32 @test_int_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @test_int_le(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_read(%struct.ssl_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_write(%struct.ssl_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #5

declare dso_local void @SSL_free(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local void @SSL_CTX_free(%struct.ssl_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!5, !5, i64 0}
