; ModuleID = 'test/sslcorrupttest.c'
source_filename = "test/sslcorrupttest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_method_st = type opaque
%struct.ssl_method_st = type opaque
%struct.ssl_ctx_st = type opaque
%struct.ssl_st = type opaque
%struct.stack_st_SSL_CIPHER = type opaque
%struct.stack_st = type opaque
%struct.ssl_cipher_st = type opaque
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
@.str.14 = private unnamed_addr constant [22 x i8] c"test/sslcorrupttest.c\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Error parsing test options\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"cert = test_get_argument(0)\00", align 1
@cert = internal unnamed_addr global i8* null, align 8
@.str.17 = private unnamed_addr constant [31 x i8] c"privkey = test_get_argument(1)\00", align 1
@privkey = internal unnamed_addr global i8* null, align 8
@.str.18 = private unnamed_addr constant [17 x i8] c"test_ssl_corrupt\00", align 1
@cipher_list = internal unnamed_addr global i8** null, align 8
@.str.19 = private unnamed_addr constant [39 x i8] c"ctx = SSL_CTX_new(TLS_server_method())\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"ssl = SSL_new(ctx)\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"sk_ciphers = SSL_get1_supported_ciphers(ssl)\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"cipher_list\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@test_ssl_corrupt.junk = internal global [16000 x i8] zeroinitializer, align 16
@docorrupt = internal unnamed_addr global i1 false, align 4
@.str.25 = private unnamed_addr constant [17 x i8] c"Starting #%d, %s\00", align 1
@.str.26 = private unnamed_addr constant [114 x i8] c"create_ssl_ctx_pair(NULL, TLS_server_method(), TLS_client_method(), TLS1_VERSION, 0, &sctx, &cctx, cert, privkey)\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"SSL_CTX_set_dh_auto(sctx, 1)\00", align 1
@.str.28 = private unnamed_addr constant [52 x i8] c"SSL_CTX_set_cipher_list(cctx, cipher_list[testidx])\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"SSL_CTX_set_ciphersuites(cctx, \22\22)\00", align 1
@.str.30 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"ciphers = SSL_CTX_get_ciphers(cctx)\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"sk_SSL_CIPHER_num(ciphers)\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.34 = private unnamed_addr constant [45 x i8] c"currcipher = sk_SSL_CIPHER_value(ciphers, 0)\00", align 1
@.str.35 = private unnamed_addr constant [52 x i8] c"SSL_CTX_set_max_proto_version(cctx, TLS1_2_VERSION)\00", align 1
@.str.36 = private unnamed_addr constant [50 x i8] c"c_to_s_fbio = BIO_new(bio_f_tls_corrupt_filter())\00", align 1
@.str.37 = private unnamed_addr constant [68 x i8] c"create_ssl_objects(sctx, cctx, &server, &client, NULL, c_to_s_fbio)\00", align 1
@.str.38 = private unnamed_addr constant [54 x i8] c"create_ssl_connection(server, client, SSL_ERROR_NONE)\00", align 1
@.str.39 = private unnamed_addr constant [38 x i8] c"SSL_write(client, junk, sizeof(junk))\00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"SSL_read(server, junk, sizeof(junk))\00", align 1
@.str.41 = private unnamed_addr constant [45 x i8] c"Decryption failed or bad record MAC not seen\00", align 1
@method_tls_corrupt = internal unnamed_addr global %struct.bio_method_st* null, align 8
@.str.42 = private unnamed_addr constant [19 x i8] c"TLS corrupt filter\00", align 1
@.str.43 = private unnamed_addr constant [31 x i8] c"copy = OPENSSL_memdup(in, inl)\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #0 {
entry:
  ret %struct.options_st* getelementptr inbounds ([9 x %struct.options_st], [9 x %struct.options_st]* @test_get_options.options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  %call = tail call i32 @test_skip_common_options() #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 noundef 264, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0)) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @test_get_argument(i64 noundef 0) #4
  store i8* %call1, i8** @cert, align 8, !tbaa !3
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 noundef 268, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), i8* noundef %call1) #4
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call4 = tail call i8* @test_get_argument(i64 noundef 1) #4
  store i8* %call4, i8** @privkey, align 8, !tbaa !3
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 noundef 269, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i8* noundef %call4) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %lor.lhs.false
  %call9 = tail call fastcc i32 @setup_cipher_list() #5
  %cmp = icmp sgt i32 %call9, 0
  br i1 %cmp, label %if.then10, label %cleanup

if.then10:                                        ; preds = %if.end8
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i32 (i32)* noundef nonnull @test_ssl_corrupt, i32 noundef %call9, i32 noundef 1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then10, %if.end, %lor.lhs.false, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 1, %if.then10 ], [ 1, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_skip_common_options() local_unnamed_addr #3

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i8* @test_get_argument(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @setup_cipher_list() unnamed_addr #1 {
entry:
  %call = tail call %struct.ssl_method_st* @TLS_server_method() #4
  %call1 = tail call %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef %call) #4
  %0 = bitcast %struct.ssl_ctx_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 noundef 147, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.19, i64 0, i64 0), i8* noundef %0) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef %call1) #4
  %1 = bitcast %struct.ssl_st* %call3 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 noundef 148, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i8* noundef %1) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %call7 = tail call %struct.stack_st_SSL_CIPHER* @SSL_get1_supported_ciphers(%struct.ssl_st* noundef %call3) #4
  %2 = bitcast %struct.stack_st_SSL_CIPHER* %call7 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 noundef 149, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i64 0, i64 0), i8* noundef %2) #4
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false6
  %call10 = tail call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %call7) #5
  %call11 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call10) #4
  %conv = sext i32 %call11 to i64
  %mul = shl nsw i64 %conv, 3
  %call12 = tail call i8* @CRYPTO_malloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 noundef 158) #4
  store i8* %call12, i8** bitcast (i8*** @cipher_list to i8**), align 8, !tbaa !3
  %call13 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 noundef 159, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i8* noundef %call12) #4
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %err, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %call1851 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call10) #4
  %cmp52 = icmp sgt i32 %call1851, 0
  br i1 %cmp52, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %if.end27
  %j.054 = phi i32 [ %j.1, %if.end27 ], [ 0, %for.cond.preheader ]
  %i.053 = phi i32 [ %inc28, %if.end27 ], [ 0, %for.cond.preheader ]
  %call21 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call10, i32 noundef %i.053) #4
  %3 = bitcast i8* %call21 to %struct.ssl_cipher_st*
  %call22 = tail call i32 @SSL_CIPHER_get_auth_nid(%struct.ssl_cipher_st* noundef %3) #4
  %cmp23 = icmp eq i32 %call22, 1046
  br i1 %cmp23, label %if.then25, label %if.end27

if.then25:                                        ; preds = %for.body
  %call26 = tail call i8* @SSL_CIPHER_get_name(%struct.ssl_cipher_st* noundef %3) #4
  %4 = load i8**, i8*** @cipher_list, align 8, !tbaa !3
  %inc = add nsw i32 %j.054, 1
  %idxprom = sext i32 %j.054 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom
  store i8* %call26, i8** %arrayidx, align 8, !tbaa !3
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %for.body
  %j.1 = phi i32 [ %inc, %if.then25 ], [ %j.054, %for.body ]
  %inc28 = add nuw nsw i32 %i.053, 1
  %call18 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call10) #4
  %cmp = icmp slt i32 %inc28, %call18
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !7

for.end:                                          ; preds = %if.end27, %for.cond.preheader
  %j.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %j.1, %if.end27 ]
  %call29 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 noundef 168, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), i32 noundef %j.0.lcssa, i32 noundef 0) #4
  %tobool30.not = icmp eq i32 %call29, 0
  %spec.select = select i1 %tobool30.not, i32 0, i32 %j.0.lcssa
  br label %err

err:                                              ; preds = %for.end, %if.end, %entry, %lor.lhs.false, %lor.lhs.false6
  %ssl.0 = phi %struct.ssl_st* [ %call3, %if.end ], [ %call3, %lor.lhs.false6 ], [ %call3, %lor.lhs.false ], [ null, %entry ], [ %call3, %for.end ]
  %sk_ciphers.0 = phi %struct.stack_st_SSL_CIPHER* [ %call7, %if.end ], [ %call7, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call7, %for.end ]
  %numciphers.0 = phi i32 [ 0, %if.end ], [ 0, %lor.lhs.false6 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %for.end ]
  %call33 = tail call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %sk_ciphers.0) #5
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call33) #4
  tail call void @SSL_free(%struct.ssl_st* noundef %ssl.0) #4
  tail call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %call1) #4
  ret i32 %numciphers.0
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_ssl_corrupt(i32 noundef %testidx) #1 {
entry:
  %sctx = alloca %struct.ssl_ctx_st*, align 8
  %cctx = alloca %struct.ssl_ctx_st*, align 8
  %server = alloca %struct.ssl_st*, align 8
  %client = alloca %struct.ssl_st*, align 8
  %0 = bitcast %struct.ssl_ctx_st** %sctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store %struct.ssl_ctx_st* null, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  %1 = bitcast %struct.ssl_ctx_st** %cctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  store %struct.ssl_ctx_st* null, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  %2 = bitcast %struct.ssl_st** %server to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #6
  store %struct.ssl_st* null, %struct.ssl_st** %server, align 8, !tbaa !3
  %3 = bitcast %struct.ssl_st** %client to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6
  store %struct.ssl_st* null, %struct.ssl_st** %client, align 8, !tbaa !3
  store i1 false, i1* @docorrupt, align 4
  tail call void @ERR_clear_error() #4
  %4 = load i8**, i8*** @cipher_list, align 8, !tbaa !3
  %idxprom = sext i32 %testidx to i64
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8, !tbaa !3
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 noundef 197, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0), i32 noundef %testidx, i8* noundef %5) #4
  %call = tail call %struct.ssl_method_st* @TLS_server_method() #4
  %call1 = tail call %struct.ssl_method_st* @TLS_client_method() #4
  %6 = load i8*, i8** @cert, align 8, !tbaa !3
  %7 = load i8*, i8** @privkey, align 8, !tbaa !3
  %call2 = call i32 @create_ssl_ctx_pair(%struct.ossl_lib_ctx_st* noundef null, %struct.ssl_method_st* noundef %call, %struct.ssl_method_st* noundef %call1, i32 noundef 769, i32 noundef 0, %struct.ssl_ctx_st** noundef nonnull %sctx, %struct.ssl_ctx_st** noundef nonnull %cctx, i8* noundef %6, i8* noundef %7) #4
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 noundef 202, i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.26, i64 0, i64 0), i32 noundef %conv) #4
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %8 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  %call4 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %8, i32 noundef 118, i64 noundef 1, i8* noundef null) #4
  %cmp5 = icmp ne i64 %call4, 0
  %conv6 = zext i1 %cmp5 to i32
  %call7 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 noundef 205, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv6) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  %10 = load i8**, i8*** @cipher_list, align 8, !tbaa !3
  %arrayidx10 = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %11 = load i8*, i8** %arrayidx10, align 8, !tbaa !3
  %call11 = call i32 @SSL_CTX_set_cipher_list(%struct.ssl_ctx_st* noundef %9, i8* noundef %11) #4
  %cmp12 = icmp ne i32 %call11, 0
  %conv13 = zext i1 %cmp12 to i32
  %call14 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 noundef 206, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.28, i64 0, i64 0), i32 noundef %conv13) #4
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %end, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %12 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  %call17 = call i32 @SSL_CTX_set_ciphersuites(%struct.ssl_ctx_st* noundef %12, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30, i64 0, i64 0)) #4
  %cmp18 = icmp ne i32 %call17, 0
  %conv19 = zext i1 %cmp18 to i32
  %call20 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 noundef 207, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i64 0, i64 0), i32 noundef %conv19) #4
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %end, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false16
  %13 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  %call23 = call %struct.stack_st_SSL_CIPHER* @SSL_CTX_get_ciphers(%struct.ssl_ctx_st* noundef %13) #4
  %14 = bitcast %struct.stack_st_SSL_CIPHER* %call23 to i8*
  %call24 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 noundef 208, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.31, i64 0, i64 0), i8* noundef %14) #4
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %end, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false22
  %call27 = call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %call23) #5
  %call28 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call27) #4
  %call29 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 noundef 209, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i32 noundef %call28, i32 noundef 1) #4
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %end, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false26
  %call33 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call27, i32 noundef 0) #4
  %call34 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 noundef 210, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.34, i64 0, i64 0), i8* noundef %call33) #4
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %end, label %if.end37

if.end37:                                         ; preds = %lor.lhs.false31
  %15 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  %call38 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %15, i32 noundef 124, i64 noundef 771, i8* noundef null) #4
  %cmp39 = icmp ne i64 %call38, 0
  %conv40 = zext i1 %cmp39 to i32
  %call41 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 noundef 217, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv40) #4
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %end, label %if.end44

if.end44:                                         ; preds = %if.end37
  %call45 = call fastcc %struct.bio_method_st* @bio_f_tls_corrupt_filter() #5
  %call46 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call45) #4
  %16 = bitcast %struct.bio_st* %call46 to i8*
  %call47 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 noundef 220, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.36, i64 0, i64 0), i8* noundef %16) #4
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %end, label %if.end50

if.end50:                                         ; preds = %if.end44
  %17 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  %18 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  %call51 = call i32 @create_ssl_objects(%struct.ssl_ctx_st* noundef %17, %struct.ssl_ctx_st* noundef %18, %struct.ssl_st** noundef nonnull %server, %struct.ssl_st** noundef nonnull %client, %struct.bio_st* noundef null, %struct.bio_st* noundef %call46) #4
  %cmp52 = icmp ne i32 %call51, 0
  %conv53 = zext i1 %cmp52 to i32
  %call54 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 noundef 225, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.37, i64 0, i64 0), i32 noundef %conv53) #4
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %end, label %if.end57

if.end57:                                         ; preds = %if.end50
  %19 = load %struct.ssl_st*, %struct.ssl_st** %server, align 8, !tbaa !3
  %20 = load %struct.ssl_st*, %struct.ssl_st** %client, align 8, !tbaa !3
  %call58 = call i32 @create_ssl_connection(%struct.ssl_st* noundef %19, %struct.ssl_st* noundef %20, i32 noundef 0) #4
  %cmp59 = icmp ne i32 %call58, 0
  %conv60 = zext i1 %cmp59 to i32
  %call61 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 noundef 228, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.38, i64 0, i64 0), i32 noundef %conv60) #4
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %end, label %if.end64

if.end64:                                         ; preds = %if.end57
  store i1 true, i1* @docorrupt, align 4
  %21 = load %struct.ssl_st*, %struct.ssl_st** %client, align 8, !tbaa !3
  %call65 = call i32 @SSL_write(%struct.ssl_st* noundef %21, i8* noundef getelementptr inbounds ([16000 x i8], [16000 x i8]* @test_ssl_corrupt.junk, i64 0, i64 0), i32 noundef 16000) #4
  %call66 = call i32 @test_int_ge(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 noundef 233, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), i32 noundef %call65, i32 noundef 0) #4
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %end, label %if.end69

if.end69:                                         ; preds = %if.end64
  %22 = load %struct.ssl_st*, %struct.ssl_st** %server, align 8, !tbaa !3
  %call70 = call i32 @SSL_read(%struct.ssl_st* noundef %22, i8* noundef getelementptr inbounds ([16000 x i8], [16000 x i8]* @test_ssl_corrupt.junk, i64 0, i64 0), i32 noundef 16000) #4
  %call71 = call i32 @test_int_lt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 noundef 236, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), i32 noundef %call70, i32 noundef 0) #4
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %end, label %do.body

do.body:                                          ; preds = %if.end69, %do.cond
  %call75 = call i64 @ERR_get_error() #4
  %conv76 = trunc i64 %call75 to i32
  %cmp77 = icmp eq i32 %conv76, 0
  br i1 %cmp77, label %if.then79, label %do.cond

if.then79:                                        ; preds = %do.body
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 noundef 243, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.41, i64 0, i64 0)) #4
  br label %end

do.cond:                                          ; preds = %do.body
  %sext = shl i64 %call75, 32
  %conv81 = ashr exact i64 %sext, 32
  %call82 = call fastcc i32 @ERR_GET_REASON(i64 noundef %conv81) #5
  %cmp83.not = icmp eq i32 %call82, 281
  br i1 %cmp83.not, label %end, label %do.body, !llvm.loop !9

end:                                              ; preds = %do.cond, %if.end69, %if.end64, %if.end57, %if.end50, %if.end44, %if.end37, %if.end, %lor.lhs.false, %lor.lhs.false16, %lor.lhs.false22, %lor.lhs.false26, %lor.lhs.false31, %if.then79
  %testresult.0 = phi i32 [ 0, %if.then79 ], [ 0, %if.end69 ], [ 0, %if.end64 ], [ 0, %if.end57 ], [ 0, %if.end50 ], [ 0, %if.end44 ], [ 0, %if.end37 ], [ 0, %lor.lhs.false31 ], [ 0, %lor.lhs.false26 ], [ 0, %lor.lhs.false22 ], [ 0, %lor.lhs.false16 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 1, %do.cond ]
  %23 = load %struct.ssl_st*, %struct.ssl_st** %server, align 8, !tbaa !3
  call void @SSL_free(%struct.ssl_st* noundef %23) #4
  %24 = load %struct.ssl_st*, %struct.ssl_st** %client, align 8, !tbaa !3
  call void @SSL_free(%struct.ssl_st* noundef %24) #4
  %25 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %25) #4
  %26 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %26) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %end
  %retval.0 = phi i32 [ %testresult.0, %end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @cleanup_tests() local_unnamed_addr #1 {
entry:
  tail call fastcc void @bio_f_tls_corrupt_filter_free() #5
  %0 = load i8*, i8** bitcast (i8*** @cipher_list to i8**), align 8, !tbaa !3
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 noundef 281) #4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @bio_f_tls_corrupt_filter_free() unnamed_addr #1 {
entry:
  %0 = load %struct.bio_method_st*, %struct.bio_method_st** @method_tls_corrupt, align 8, !tbaa !3
  tail call void @BIO_meth_free(%struct.bio_method_st* noundef %0) #4
  ret void
}

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ssl_method_st* @TLS_server_method() local_unnamed_addr #3

declare dso_local %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef) local_unnamed_addr #3

declare dso_local %struct.stack_st_SSL_CIPHER* @SSL_get1_supported_ciphers(%struct.ssl_st* noundef) local_unnamed_addr #3

declare dso_local i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_SSL_CIPHER* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @SSL_CIPHER_get_auth_nid(%struct.ssl_cipher_st* noundef) local_unnamed_addr #3

declare dso_local i8* @SSL_CIPHER_get_name(%struct.ssl_cipher_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_int_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_SSL_CIPHER* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local void @SSL_free(%struct.ssl_st* noundef) local_unnamed_addr #3

declare dso_local void @SSL_CTX_free(%struct.ssl_ctx_st* noundef) local_unnamed_addr #3

declare dso_local void @ERR_clear_error() local_unnamed_addr #3

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @create_ssl_ctx_pair(%struct.ossl_lib_ctx_st* noundef, %struct.ssl_method_st* noundef, %struct.ssl_method_st* noundef, i32 noundef, i32 noundef, %struct.ssl_ctx_st** noundef, %struct.ssl_ctx_st** noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.ssl_method_st* @TLS_client_method() local_unnamed_addr #3

declare dso_local i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @SSL_CTX_set_cipher_list(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @SSL_CTX_set_ciphersuites(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.stack_st_SSL_CIPHER* @SSL_CTX_get_ciphers(%struct.ssl_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.bio_method_st* @bio_f_tls_corrupt_filter() unnamed_addr #1 {
entry:
  %0 = load %struct.bio_method_st*, %struct.bio_method_st** @method_tls_corrupt, align 8, !tbaa !3
  %cmp = icmp eq %struct.bio_method_st* %0, null
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %call = tail call %struct.bio_method_st* @BIO_meth_new(i32 noundef 640, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i64 0, i64 0)) #4
  store %struct.bio_method_st* %call, %struct.bio_method_st** @method_tls_corrupt, align 8, !tbaa !3
  %cmp1 = icmp eq %struct.bio_method_st* %call, null
  br i1 %cmp1, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call2 = tail call i32 @BIO_meth_set_write(%struct.bio_method_st* noundef nonnull %call, i32 (%struct.bio_st*, i8*, i32)* noundef nonnull @tls_corrupt_write) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %1 = load %struct.bio_method_st*, %struct.bio_method_st** @method_tls_corrupt, align 8, !tbaa !3
  %call4 = tail call i32 @BIO_meth_set_read(%struct.bio_method_st* noundef %1, i32 (%struct.bio_st*, i8*, i32)* noundef nonnull @tls_corrupt_read) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %return, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %2 = load %struct.bio_method_st*, %struct.bio_method_st** @method_tls_corrupt, align 8, !tbaa !3
  %call7 = tail call i32 @BIO_meth_set_puts(%struct.bio_method_st* noundef %2, i32 (%struct.bio_st*, i8*)* noundef nonnull @tls_corrupt_puts) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %return, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %3 = load %struct.bio_method_st*, %struct.bio_method_st** @method_tls_corrupt, align 8, !tbaa !3
  %call10 = tail call i32 @BIO_meth_set_gets(%struct.bio_method_st* noundef %3, i32 (%struct.bio_st*, i8*, i32)* noundef nonnull @tls_corrupt_gets) #4
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %return, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %4 = load %struct.bio_method_st*, %struct.bio_method_st** @method_tls_corrupt, align 8, !tbaa !3
  %call13 = tail call i32 @BIO_meth_set_ctrl(%struct.bio_method_st* noundef %4, i64 (%struct.bio_st*, i32, i64, i8*)* noundef nonnull @tls_corrupt_ctrl) #4
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %return, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %5 = load %struct.bio_method_st*, %struct.bio_method_st** @method_tls_corrupt, align 8, !tbaa !3
  %call16 = tail call i32 @BIO_meth_set_create(%struct.bio_method_st* noundef %5, i32 (%struct.bio_st*)* noundef nonnull @tls_corrupt_new) #4
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %return, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %6 = load %struct.bio_method_st*, %struct.bio_method_st** @method_tls_corrupt, align 8, !tbaa !3
  %call19 = tail call i32 @BIO_meth_set_destroy(%struct.bio_method_st* noundef %6, i32 (%struct.bio_st*)* noundef nonnull @tls_corrupt_free) #4
  %tobool20.not = icmp eq i32 %call19, 0
  %.pre = load %struct.bio_method_st*, %struct.bio_method_st** @method_tls_corrupt, align 8
  %spec.select = select i1 %tobool20.not, %struct.bio_method_st* null, %struct.bio_method_st* %.pre
  br label %return

return:                                           ; preds = %lor.lhs.false18, %entry, %if.then, %lor.lhs.false, %lor.lhs.false3, %lor.lhs.false6, %lor.lhs.false9, %lor.lhs.false12, %lor.lhs.false15
  %retval.0 = phi %struct.bio_method_st* [ null, %lor.lhs.false15 ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false3 ], [ null, %lor.lhs.false ], [ null, %if.then ], [ %0, %entry ], [ %spec.select, %lor.lhs.false18 ]
  ret %struct.bio_method_st* %retval.0
}

declare dso_local i32 @create_ssl_objects(%struct.ssl_ctx_st* noundef, %struct.ssl_ctx_st* noundef, %struct.ssl_st** noundef, %struct.ssl_st** noundef, %struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local i32 @create_ssl_connection(%struct.ssl_st* noundef, %struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @test_int_ge(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @SSL_write(%struct.ssl_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @test_int_lt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @SSL_read(%struct.ssl_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i64 @ERR_get_error() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_REASON(i64 noundef %errcode) unnamed_addr #0 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %retval.0.v = select i1 %cmp.not, i32 8388607, i32 2147483647
  %retval.0 = and i32 %retval.0.v, %0
  ret i32 %retval.0
}

declare dso_local %struct.bio_method_st* @BIO_meth_new(i32 noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_meth_set_write(%struct.bio_method_st* noundef, i32 (%struct.bio_st*, i8*, i32)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @tls_corrupt_write(%struct.bio_st* noundef %bio, i8* noundef %in, i32 noundef %inl) #1 {
entry:
  %call = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %bio) #4
  %.b = load i1, i1* @docorrupt, align 4
  br i1 %.b, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %conv = sext i32 %inl to i64
  %call1 = tail call i8* @CRYPTO_memdup(i8* noundef %in, i64 noundef %conv, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 noundef 44) #4
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.43, i64 0, i64 0), i8* noundef %call1) #4
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %sub = add nsw i32 %inl, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, i8* %call1, i64 %idxprom
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !10
  %1 = xor i8 %0, 1
  store i8 %1, i8* %arrayidx, align 1, !tbaa !10
  %call7 = tail call i32 @BIO_write(%struct.bio_st* noundef %call, i8* noundef %call1, i32 noundef %inl) #4
  tail call void @CRYPTO_free(i8* noundef %call1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 noundef 49) #4
  br label %if.end9

if.else:                                          ; preds = %entry
  %call8 = tail call i32 @BIO_write(%struct.bio_st* noundef %call, i8* noundef %in, i32 noundef %inl) #4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.end
  %ret.0 = phi i32 [ %call7, %if.end ], [ %call8, %if.else ]
  tail call fastcc void @copy_flags(%struct.bio_st* noundef %bio) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end9
  %retval.0 = phi i32 [ %ret.0, %if.end9 ], [ 0, %if.then ]
  ret i32 %retval.0
}

declare dso_local i32 @BIO_meth_set_read(%struct.bio_method_st* noundef, i32 (%struct.bio_st*, i8*, i32)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @tls_corrupt_read(%struct.bio_st* noundef %bio, i8* noundef %out, i32 noundef %outl) #1 {
entry:
  %call = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %bio) #4
  %call1 = tail call i32 @BIO_read(%struct.bio_st* noundef %call, i8* noundef %out, i32 noundef %outl) #4
  tail call fastcc void @copy_flags(%struct.bio_st* noundef %bio) #5
  ret i32 %call1
}

declare dso_local i32 @BIO_meth_set_puts(%struct.bio_method_st* noundef, i32 (%struct.bio_st*, i8*)* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @tls_corrupt_puts(%struct.bio_st* nocapture noundef readnone %bio, i8* nocapture noundef readnone %str) #0 {
entry:
  ret i32 -1
}

declare dso_local i32 @BIO_meth_set_gets(%struct.bio_method_st* noundef, i32 (%struct.bio_st*, i8*, i32)* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @tls_corrupt_gets(%struct.bio_st* nocapture noundef readnone %bio, i8* nocapture noundef readnone %buf, i32 noundef %size) #0 {
entry:
  ret i32 -1
}

declare dso_local i32 @BIO_meth_set_ctrl(%struct.bio_method_st* noundef, i64 (%struct.bio_st*, i32, i64, i8*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i64 @tls_corrupt_ctrl(%struct.bio_st* noundef %bio, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #1 {
entry:
  %call = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %bio) #4
  %cmp = icmp eq %struct.bio_st* %call, null
  %cond = icmp eq i32 %cmd, 12
  %or.cond = or i1 %cond, %cmp
  br i1 %or.cond, label %cleanup, label %sw.default

sw.default:                                       ; preds = %entry
  %call1 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ %call1, %sw.default ]
  ret i64 %retval.0
}

declare dso_local i32 @BIO_meth_set_create(%struct.bio_method_st* noundef, i32 (%struct.bio_st*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @tls_corrupt_new(%struct.bio_st* noundef %bio) #1 {
entry:
  tail call void @BIO_set_init(%struct.bio_st* noundef %bio, i32 noundef 1) #4
  ret i32 1
}

declare dso_local i32 @BIO_meth_set_destroy(%struct.bio_method_st* noundef, i32 (%struct.bio_st*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @tls_corrupt_free(%struct.bio_st* noundef %bio) #1 {
entry:
  tail call void @BIO_set_init(%struct.bio_st* noundef %bio, i32 noundef 0) #4
  ret i32 1
}

declare dso_local %struct.bio_st* @BIO_next(%struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local i8* @CRYPTO_memdup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @copy_flags(%struct.bio_st* noundef %bio) unnamed_addr #1 {
entry:
  %call = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %bio) #4
  %call1 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef %call, i32 noundef 15) #4
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %bio, i32 noundef 15) #4
  tail call void @BIO_set_flags(%struct.bio_st* noundef %bio, i32 noundef %call1) #4
  ret void
}

declare dso_local i32 @BIO_test_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local void @BIO_clear_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local void @BIO_set_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @BIO_set_init(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local void @BIO_meth_free(%struct.bio_method_st* noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = !{!5, !5, i64 0}
