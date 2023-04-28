; ModuleID = 'test/provfetchtest.c'
source_filename = "test/provfetchtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_dispatch_st = type { i32, void ()* }
%struct.ossl_algorithm_st = type { i8*, i8*, %struct.ossl_dispatch_st*, i8* }
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.ossl_decoder_st = type opaque
%struct.ossl_encoder_st = type opaque
%struct.ossl_store_loader_st = type opaque
%struct.ossl_core_handle_st = type opaque
%struct.ossl_core_bio_st = type opaque

@.str = private unnamed_addr constant [11 x i8] c"fetch_test\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"test/provfetchtest.c\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"libctx\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"OSSL_PROVIDER_add_builtin(libctx, \22dummy-prov\22, dummy_provider_init)\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"dummy-prov\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"nullprov = OSSL_PROVIDER_load(libctx, \22default\22)\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"dummyprov = OSSL_PROVIDER_load(libctx, \22dummy-prov\22)\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"DUMMY\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"decoder\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"encoder\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"loader\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"RAND_set_DRBG_type(libctx, \22DUMMY\22, NULL, NULL, NULL)\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"RAND_bytes_ex(libctx, buf, sizeof(buf), 0)\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@dummy_dispatch_table = internal constant [3 x %struct.ossl_dispatch_st] [%struct.ossl_dispatch_st { i32 1027, void ()* bitcast (%struct.ossl_algorithm_st* (i8*, i32, i32*)* @dummy_query to void ()*) }, %struct.ossl_dispatch_st { i32 1024, void ()* bitcast (void (%struct.ossl_lib_ctx_st*)* @OSSL_LIB_CTX_free to void ()*) }, %struct.ossl_dispatch_st zeroinitializer], align 16
@dummy_decoders = internal constant [2 x %struct.ossl_algorithm_st] [%struct.ossl_algorithm_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([2 x %struct.ossl_dispatch_st], [2 x %struct.ossl_dispatch_st]* @dummy_decoder_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st zeroinitializer], align 16
@dummy_encoders = internal constant [2 x %struct.ossl_algorithm_st] [%struct.ossl_algorithm_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([2 x %struct.ossl_dispatch_st], [2 x %struct.ossl_dispatch_st]* @dummy_encoder_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st zeroinitializer], align 16
@dummy_store = internal constant [2 x %struct.ossl_algorithm_st] [%struct.ossl_algorithm_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([5 x %struct.ossl_dispatch_st], [5 x %struct.ossl_dispatch_st]* @dummy_store_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st zeroinitializer], align 16
@dummy_rand = internal constant [2 x %struct.ossl_algorithm_st] [%struct.ossl_algorithm_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([11 x %struct.ossl_dispatch_st], [11 x %struct.ossl_dispatch_st]* @dummy_rand_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st zeroinitializer], align 16
@.str.15 = private unnamed_addr constant [25 x i8] c"provider=dummy,input=pem\00", align 1
@dummy_decoder_functions = internal constant [2 x %struct.ossl_dispatch_st] [%struct.ossl_dispatch_st { i32 11, void ()* bitcast (i32 (i8*, %struct.ossl_core_bio_st*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)* @dummy_decoder_decode to void ()*) }, %struct.ossl_dispatch_st zeroinitializer], align 16
@.str.16 = private unnamed_addr constant [26 x i8] c"provider=dummy,output=pem\00", align 1
@dummy_encoder_functions = internal constant [2 x %struct.ossl_dispatch_st] [%struct.ossl_dispatch_st { i32 11, void ()* bitcast (i32 (i8*, %struct.ossl_core_bio_st*, i8*, %struct.ossl_param_st*, i32, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)* @dummy_encoder_encode to void ()*) }, %struct.ossl_dispatch_st zeroinitializer], align 16
@.str.17 = private unnamed_addr constant [15 x i8] c"provider=dummy\00", align 1
@dummy_store_functions = internal constant [5 x %struct.ossl_dispatch_st] [%struct.ossl_dispatch_st { i32 1, void ()* bitcast (i8* (i8*, i8*)* @dummy_store_open to void ()*) }, %struct.ossl_dispatch_st { i32 5, void ()* bitcast (i32 (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)* @dummy_store_load to void ()*) }, %struct.ossl_dispatch_st { i32 6, void ()* bitcast (i32 (i8*)* @dumm_store_eof to void ()*) }, %struct.ossl_dispatch_st { i32 7, void ()* bitcast (i32 (i8*)* @dummy_store_close to void ()*) }, %struct.ossl_dispatch_st zeroinitializer], align 16
@dummy_rand_functions = internal constant [11 x %struct.ossl_dispatch_st] [%struct.ossl_dispatch_st { i32 1, void ()* bitcast (i8* (i8*, i8*, %struct.ossl_dispatch_st*)* @dummy_rand_newctx to void ()*) }, %struct.ossl_dispatch_st { i32 2, void ()* bitcast (void (i8*)* @dummy_rand_freectx to void ()*) }, %struct.ossl_dispatch_st { i32 3, void ()* bitcast (i32 (i8*, i32, i32, i8*, i64, %struct.ossl_param_st*)* @dummy_rand_instantiate to void ()*) }, %struct.ossl_dispatch_st { i32 4, void ()* bitcast (i32 (i8*)* @dummy_rand_uninstantiate to void ()*) }, %struct.ossl_dispatch_st { i32 5, void ()* bitcast (i32 (i8*, i8*, i64, i32, i32, i8*, i64)* @dummy_rand_generate to void ()*) }, %struct.ossl_dispatch_st { i32 12, void ()* bitcast (%struct.ossl_param_st* (i8*, i8*)* @dummy_rand_gettable_ctx_params to void ()*) }, %struct.ossl_dispatch_st { i32 15, void ()* bitcast (i32 (i8*, %struct.ossl_param_st*)* @dummy_rand_get_ctx_params to void ()*) }, %struct.ossl_dispatch_st { i32 8, void ()* bitcast (i32 (i8*)* @dummy_rand_enable_locking to void ()*) }, %struct.ossl_dispatch_st { i32 9, void ()* bitcast (i32 (i8*)* @dummy_rand_lock to void ()*) }, %struct.ossl_dispatch_st { i32 10, void ()* bitcast (void (i8*)* @dummy_rand_unlock to void ()*) }, %struct.ossl_dispatch_st zeroinitializer], align 16
@dummy_rand_gettable_ctx_params.known_gettable_ctx_params = internal constant [2 x %struct.ossl_param_st] [%struct.ossl_param_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i32 2, i8* null, i64 8, i64 -1 }, %struct.ossl_param_st zeroinitializer], align 16
@.str.18 = private unnamed_addr constant [12 x i8] c"max_request\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 (i32)* noundef nonnull @fetch_test, i32 noundef 4, i32 noundef 1) #6
  ret i32 1
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @fetch_test(i32 noundef %tst) #0 {
entry:
  %buf = alloca [32 x i8], align 16
  %call = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() #6
  %0 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #7
  %1 = bitcast %struct.ossl_lib_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 240, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* noundef %1) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @OSSL_PROVIDER_add_builtin(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)* noundef nonnull @dummy_provider_init) #6
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 244, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i32 noundef %conv) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call5 = tail call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)) #6
  %2 = bitcast %struct.ossl_provider_st* %call5 to i8*
  %call6 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 245, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i8* noundef %2) #6
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %err, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %call9 = tail call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)) #6
  %3 = bitcast %struct.ossl_provider_st* %call9 to i8*
  %call10 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 246, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* noundef %3) #6
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %if.end13

if.end13:                                         ; preds = %lor.lhs.false8
  switch i32 %tst, label %err [
    i32 0, label %sw.bb
    i32 1, label %sw.bb19
    i32 2, label %sw.bb25
    i32 3, label %sw.bb31
  ]

sw.bb:                                            ; preds = %if.end13
  %call14 = tail call %struct.ossl_decoder_st* @OSSL_DECODER_fetch(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* noundef null) #6
  %4 = bitcast %struct.ossl_decoder_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 252, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* noundef %4) #6
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %sw.epilog

sw.bb19:                                          ; preds = %if.end13
  %call20 = tail call %struct.ossl_encoder_st* @OSSL_ENCODER_fetch(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* noundef null) #6
  %5 = bitcast %struct.ossl_encoder_st* %call20 to i8*
  %call21 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 257, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* noundef %5) #6
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err, label %sw.epilog

sw.bb25:                                          ; preds = %if.end13
  %call26 = tail call %struct.ossl_store_loader_st* @OSSL_STORE_LOADER_fetch(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* noundef null) #6
  %6 = bitcast %struct.ossl_store_loader_st* %call26 to i8*
  %call27 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 262, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* noundef %6) #6
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %sw.epilog

sw.bb31:                                          ; preds = %if.end13
  %call32 = tail call i32 @RAND_set_DRBG_type(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* noundef null, i8* noundef null, i8* noundef null) #6
  %cmp33 = icmp ne i32 %call32, 0
  %conv34 = zext i1 %cmp33 to i32
  %call35 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 266, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv34) #6
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %err, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %sw.bb31
  %call38 = call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef nonnull %0, i64 noundef 32, i32 noundef 0) #6
  %call39 = call i32 @test_int_ge(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 267, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 noundef %call38, i32 noundef 1) #6
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err, label %sw.epilog

sw.epilog:                                        ; preds = %lor.lhs.false37, %sw.bb25, %sw.bb19, %sw.bb
  %decoder.0 = phi %struct.ossl_decoder_st* [ null, %lor.lhs.false37 ], [ null, %sw.bb25 ], [ null, %sw.bb19 ], [ %call14, %sw.bb ]
  %encoder.0 = phi %struct.ossl_encoder_st* [ null, %lor.lhs.false37 ], [ null, %sw.bb25 ], [ %call20, %sw.bb19 ], [ null, %sw.bb ]
  %loader.0 = phi %struct.ossl_store_loader_st* [ null, %lor.lhs.false37 ], [ %call26, %sw.bb25 ], [ null, %sw.bb19 ], [ null, %sw.bb ]
  br label %err

err:                                              ; preds = %if.end13, %sw.bb31, %lor.lhs.false37, %sw.bb25, %sw.bb19, %sw.bb, %if.end, %lor.lhs.false, %lor.lhs.false8, %entry, %sw.epilog
  %dummyprov.0 = phi %struct.ossl_provider_st* [ %call9, %if.end13 ], [ %call9, %sw.epilog ], [ %call9, %lor.lhs.false37 ], [ %call9, %sw.bb31 ], [ %call9, %sw.bb25 ], [ %call9, %sw.bb19 ], [ %call9, %sw.bb ], [ %call9, %lor.lhs.false8 ], [ null, %lor.lhs.false ], [ null, %if.end ], [ null, %entry ]
  %nullprov.0 = phi %struct.ossl_provider_st* [ %call5, %if.end13 ], [ %call5, %sw.epilog ], [ %call5, %lor.lhs.false37 ], [ %call5, %sw.bb31 ], [ %call5, %sw.bb25 ], [ %call5, %sw.bb19 ], [ %call5, %sw.bb ], [ %call5, %lor.lhs.false8 ], [ %call5, %lor.lhs.false ], [ null, %if.end ], [ null, %entry ]
  %decoder.1 = phi %struct.ossl_decoder_st* [ null, %if.end13 ], [ %decoder.0, %sw.epilog ], [ null, %lor.lhs.false37 ], [ null, %sw.bb31 ], [ null, %sw.bb25 ], [ null, %sw.bb19 ], [ %call14, %sw.bb ], [ null, %lor.lhs.false8 ], [ null, %lor.lhs.false ], [ null, %if.end ], [ null, %entry ]
  %encoder.1 = phi %struct.ossl_encoder_st* [ null, %if.end13 ], [ %encoder.0, %sw.epilog ], [ null, %lor.lhs.false37 ], [ null, %sw.bb31 ], [ null, %sw.bb25 ], [ %call20, %sw.bb19 ], [ null, %sw.bb ], [ null, %lor.lhs.false8 ], [ null, %lor.lhs.false ], [ null, %if.end ], [ null, %entry ]
  %loader.1 = phi %struct.ossl_store_loader_st* [ null, %if.end13 ], [ %loader.0, %sw.epilog ], [ null, %lor.lhs.false37 ], [ null, %sw.bb31 ], [ %call26, %sw.bb25 ], [ null, %sw.bb19 ], [ null, %sw.bb ], [ null, %lor.lhs.false8 ], [ null, %lor.lhs.false ], [ null, %if.end ], [ null, %entry ]
  %testresult.0 = phi i32 [ 0, %if.end13 ], [ 1, %sw.epilog ], [ 0, %lor.lhs.false37 ], [ 0, %sw.bb31 ], [ 0, %sw.bb25 ], [ 0, %sw.bb19 ], [ 0, %sw.bb ], [ 0, %lor.lhs.false8 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %entry ]
  call void @OSSL_DECODER_free(%struct.ossl_decoder_st* noundef %decoder.1) #6
  call void @OSSL_ENCODER_free(%struct.ossl_encoder_st* noundef %encoder.1) #6
  call void @OSSL_STORE_LOADER_free(%struct.ossl_store_loader_st* noundef %loader.1) #6
  %call43 = call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %dummyprov.0) #6
  %call44 = call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %nullprov.0) #6
  call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %call) #6
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #7
  ret i32 %testresult.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PROVIDER_add_builtin(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @dummy_provider_init(%struct.ossl_core_handle_st* noundef %handle, %struct.ossl_dispatch_st* noundef %in, %struct.ossl_dispatch_st** nocapture noundef writeonly %out, i8** nocapture noundef writeonly %provctx) #0 {
entry:
  %buf = alloca [32 x i8], align 16
  %call = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new_child(%struct.ossl_core_handle_st* noundef %handle, %struct.ossl_dispatch_st* noundef %in) #6
  %0 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #7
  %1 = bitcast i8** %provctx to %struct.ossl_lib_ctx_st**
  store %struct.ossl_lib_ctx_st* %call, %struct.ossl_lib_ctx_st** %1, align 8, !tbaa !3
  store %struct.ossl_dispatch_st* getelementptr inbounds ([3 x %struct.ossl_dispatch_st], [3 x %struct.ossl_dispatch_st]* @dummy_dispatch_table, i64 0, i64 0), %struct.ossl_dispatch_st** %out, align 8, !tbaa !3
  %call1 = call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef nonnull %0, i64 noundef 32, i32 noundef 0) #6
  %tobool.not = icmp ne i32 %call1, 0
  %. = zext i1 %tobool.not to i32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #7
  ret i32 %.
}

declare dso_local %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_decoder_st* @OSSL_DECODER_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_encoder_st* @OSSL_ENCODER_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_store_loader_st* @OSSL_STORE_LOADER_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @RAND_set_DRBG_type(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_ge(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @OSSL_DECODER_free(%struct.ossl_decoder_st* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_ENCODER_free(%struct.ossl_encoder_st* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_STORE_LOADER_free(%struct.ossl_store_loader_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new_child(%struct.ossl_core_handle_st* noundef, %struct.ossl_dispatch_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal %struct.ossl_algorithm_st* @dummy_query(i8* nocapture noundef readnone %provctx, i32 noundef %operation_id, i32* nocapture noundef writeonly %no_cache) #3 {
entry:
  store i32 0, i32* %no_cache, align 4, !tbaa !7
  switch i32 %operation_id, label %sw.epilog [
    i32 21, label %return
    i32 20, label %sw.bb1
    i32 22, label %sw.bb2
    i32 5, label %sw.bb3
  ]

sw.bb1:                                           ; preds = %entry
  br label %return

sw.bb2:                                           ; preds = %entry
  br label %return

sw.bb3:                                           ; preds = %entry
  br label %return

sw.epilog:                                        ; preds = %entry
  br label %return

return:                                           ; preds = %entry, %sw.epilog, %sw.bb3, %sw.bb2, %sw.bb1
  %retval.0 = phi %struct.ossl_algorithm_st* [ null, %sw.epilog ], [ getelementptr inbounds ([2 x %struct.ossl_algorithm_st], [2 x %struct.ossl_algorithm_st]* @dummy_rand, i64 0, i64 0), %sw.bb3 ], [ getelementptr inbounds ([2 x %struct.ossl_algorithm_st], [2 x %struct.ossl_algorithm_st]* @dummy_store, i64 0, i64 0), %sw.bb2 ], [ getelementptr inbounds ([2 x %struct.ossl_algorithm_st], [2 x %struct.ossl_algorithm_st]* @dummy_encoders, i64 0, i64 0), %sw.bb1 ], [ getelementptr inbounds ([2 x %struct.ossl_algorithm_st], [2 x %struct.ossl_algorithm_st]* @dummy_decoders, i64 0, i64 0), %entry ]
  ret %struct.ossl_algorithm_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @dummy_decoder_decode(i8* nocapture noundef readnone %ctx, %struct.ossl_core_bio_st* nocapture noundef readnone %cin, i32 noundef %selection, i32 (%struct.ossl_param_st*, i8*)* nocapture noundef readnone %object_cb, i8* nocapture noundef readnone %object_cbarg, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)* nocapture noundef readnone %pw_cb, i8* nocapture noundef readnone %pw_cbarg) #4 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @dummy_encoder_encode(i8* nocapture noundef readnone %ctx, %struct.ossl_core_bio_st* nocapture noundef readnone %out, i8* nocapture noundef readnone %obj_raw, %struct.ossl_param_st* nocapture noundef readnone %obj_abstract, i32 noundef %selection, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)* nocapture noundef readnone %cb, i8* nocapture noundef readnone %cbarg) #4 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal noalias i8* @dummy_store_open(i8* nocapture noundef readnone %provctx, i8* nocapture noundef readnone %uri) #4 {
entry:
  ret i8* null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @dummy_store_load(i8* nocapture noundef readnone %loaderctx, i32 (%struct.ossl_param_st*, i8*)* nocapture noundef readnone %object_cb, i8* nocapture noundef readnone %object_cbarg, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)* nocapture noundef readnone %pw_cb, i8* nocapture noundef readnone %pw_cbarg) #4 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @dumm_store_eof(i8* nocapture noundef readnone %loaderctx) #4 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @dummy_store_close(i8* nocapture noundef readnone %loaderctx) #4 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i8* @dummy_rand_newctx(i8* noundef readnone returned %provctx, i8* nocapture noundef readnone %parent, %struct.ossl_dispatch_st* nocapture noundef readnone %parent_calls) #4 {
entry:
  ret i8* %provctx
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal void @dummy_rand_freectx(i8* nocapture noundef %vctx) #4 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @dummy_rand_instantiate(i8* nocapture noundef readnone %vdrbg, i32 noundef %strength, i32 noundef %prediction_resistance, i8* nocapture noundef readnone %pstr, i64 noundef %pstr_len, %struct.ossl_param_st* nocapture noundef readnone %params) #4 {
entry:
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @dummy_rand_uninstantiate(i8* nocapture noundef readnone %vdrbg) #4 {
entry:
  ret i32 1
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define internal i32 @dummy_rand_generate(i8* nocapture noundef readnone %vctx, i8* nocapture noundef writeonly %out, i64 noundef %outlen, i32 noundef %strength, i32 noundef %prediction_resistance, i8* nocapture noundef readnone %addin, i64 noundef %addin_len) #5 {
entry:
  %cmp5.not = icmp eq i64 %outlen, 0
  br i1 %cmp5.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %min.iters.check = icmp ult i64 %outlen, 16
  br i1 %min.iters.check, label %for.body.preheader9, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %outlen, -16
  %0 = add i64 %n.vec, -16
  %1 = lshr exact i64 %0, 4
  %2 = add nuw nsw i64 %1, 1
  %xtraiter = and i64 %2, 7
  %3 = icmp ult i64 %0, 112
  br i1 %3, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %2, 2305843009213693944
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.7, %vector.body ]
  %vec.ind7 = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph.new ], [ %vec.ind.next8.7, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.7, %vector.body ]
  %4 = getelementptr inbounds i8, i8* %out, i64 %index
  %5 = bitcast i8* %4 to <16 x i8>*
  store <16 x i8> %vec.ind7, <16 x i8>* %5, align 1, !tbaa !9
  %index.next = or i64 %index, 16
  %vec.ind.next8 = add <16 x i8> %vec.ind7, <i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>
  %6 = getelementptr inbounds i8, i8* %out, i64 %index.next
  %7 = bitcast i8* %6 to <16 x i8>*
  store <16 x i8> %vec.ind.next8, <16 x i8>* %7, align 1, !tbaa !9
  %index.next.1 = or i64 %index, 32
  %vec.ind.next8.1 = add <16 x i8> %vec.ind7, <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>
  %8 = getelementptr inbounds i8, i8* %out, i64 %index.next.1
  %9 = bitcast i8* %8 to <16 x i8>*
  store <16 x i8> %vec.ind.next8.1, <16 x i8>* %9, align 1, !tbaa !9
  %index.next.2 = or i64 %index, 48
  %vec.ind.next8.2 = add <16 x i8> %vec.ind7, <i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48>
  %10 = getelementptr inbounds i8, i8* %out, i64 %index.next.2
  %11 = bitcast i8* %10 to <16 x i8>*
  store <16 x i8> %vec.ind.next8.2, <16 x i8>* %11, align 1, !tbaa !9
  %index.next.3 = or i64 %index, 64
  %vec.ind.next8.3 = add <16 x i8> %vec.ind7, <i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64>
  %12 = getelementptr inbounds i8, i8* %out, i64 %index.next.3
  %13 = bitcast i8* %12 to <16 x i8>*
  store <16 x i8> %vec.ind.next8.3, <16 x i8>* %13, align 1, !tbaa !9
  %index.next.4 = or i64 %index, 80
  %vec.ind.next8.4 = add <16 x i8> %vec.ind7, <i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80>
  %14 = getelementptr inbounds i8, i8* %out, i64 %index.next.4
  %15 = bitcast i8* %14 to <16 x i8>*
  store <16 x i8> %vec.ind.next8.4, <16 x i8>* %15, align 1, !tbaa !9
  %index.next.5 = or i64 %index, 96
  %vec.ind.next8.5 = add <16 x i8> %vec.ind7, <i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96>
  %16 = getelementptr inbounds i8, i8* %out, i64 %index.next.5
  %17 = bitcast i8* %16 to <16 x i8>*
  store <16 x i8> %vec.ind.next8.5, <16 x i8>* %17, align 1, !tbaa !9
  %index.next.6 = or i64 %index, 112
  %vec.ind.next8.6 = add <16 x i8> %vec.ind7, <i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112>
  %18 = getelementptr inbounds i8, i8* %out, i64 %index.next.6
  %19 = bitcast i8* %18 to <16 x i8>*
  store <16 x i8> %vec.ind.next8.6, <16 x i8>* %19, align 1, !tbaa !9
  %index.next.7 = add nuw i64 %index, 128
  %vec.ind.next8.7 = xor <16 x i8> %vec.ind7, <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !10

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.7, %vector.body ]
  %vec.ind7.unr = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph ], [ %vec.ind.next8.7, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %vec.ind7.epil = phi <16 x i8> [ %vec.ind.next8.epil, %vector.body.epil ], [ %vec.ind7.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %20 = getelementptr inbounds i8, i8* %out, i64 %index.epil
  %21 = bitcast i8* %20 to <16 x i8>*
  store <16 x i8> %vec.ind7.epil, <16 x i8>* %21, align 1, !tbaa !9
  %index.next.epil = add nuw i64 %index.epil, 16
  %vec.ind.next8.epil = add <16 x i8> %vec.ind7.epil, <i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !13

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %n.vec, %outlen
  br i1 %cmp.n, label %for.end, label %for.body.preheader9

for.body.preheader9:                              ; preds = %for.body.preheader, %middle.block
  %i.06.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader9, %for.body
  %i.06 = phi i64 [ %inc, %for.body ], [ %i.06.ph, %for.body.preheader9 ]
  %conv = trunc i64 %i.06 to i8
  %arrayidx = getelementptr inbounds i8, i8* %out, i64 %i.06
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !9
  %inc = add nuw i64 %i.06, 1
  %exitcond.not = icmp eq i64 %inc, %outlen
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !15

for.end:                                          ; preds = %for.body, %middle.block, %entry
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal %struct.ossl_param_st* @dummy_rand_gettable_ctx_params(i8* nocapture noundef readnone %vctx, i8* nocapture noundef readnone %provctx) #4 {
entry:
  ret %struct.ossl_param_st* getelementptr inbounds ([2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* @dummy_rand_gettable_ctx_params.known_gettable_ctx_params, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dummy_rand_get_ctx_params(i8* nocapture noundef readnone %vctx, %struct.ossl_param_st* noundef %params) #0 {
entry:
  %call = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0)) #6
  %cmp.not = icmp eq %struct.ossl_param_st* %call, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @OSSL_PARAM_set_size_t(%struct.ossl_param_st* noundef nonnull %call, i64 noundef 2147483647) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @dummy_rand_enable_locking(i8* nocapture noundef readnone %vtest) #4 {
entry:
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @dummy_rand_lock(i8* nocapture noundef readnone %vtest) #4 {
entry:
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal void @dummy_rand_unlock(i8* nocapture noundef %vtest) #4 {
entry:
  ret void
}

declare dso_local %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_set_size_t(%struct.ossl_param_st* noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind }

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
!9 = !{!5, !5, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !11, !16, !12}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
