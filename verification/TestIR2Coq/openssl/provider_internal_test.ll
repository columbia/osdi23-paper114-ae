; ModuleID = 'test/provider_internal_test.c'
source_filename = "test/provider_internal_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.ossl_core_handle_st = type opaque
%struct.ossl_dispatch_st = type { i32, void ()* }
%struct.evp_md_st = type opaque

@.str = private unnamed_addr constant [22 x i8] c"test_builtin_provider\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"test_loaded_provider\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"test_configured_provider\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"test_cache_flushes\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"p_test_builtin\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"fips=yes\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"test/provider_internal_test.c\00", align 1
@.str.7 = private unnamed_addr constant [69 x i8] c"prov = ossl_provider_new(NULL, name, PROVIDER_INIT_FUNCTION_NAME, 0)\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"ossl_provider_activate(prov, 1, 0)\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"ossl_provider_get_params(prov, greeting_request)\00", align 1
@greeting_request = internal global [2 x %struct.ossl_param_st] [%struct.ossl_param_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @buf, i32 0, i32 0), i64 256, i64 0 }, %struct.ossl_param_st zeroinitializer], align 16
@.str.11 = private unnamed_addr constant [36 x i8] c"greeting = greeting_request[0].data\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"greeting_request[0].data_size\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"greeting\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"expected_greeting\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"ossl_provider_deactivate(prov)\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"Got this greeting: %s\0A\00", align 1
@buf = internal global [256 x i8] zeroinitializer, align 16
@expected_greeting1.expected_greeting = internal global [256 x i8] zeroinitializer, align 16
@.str.18 = private unnamed_addr constant [40 x i8] c"Hello OpenSSL %.20s, greetings from %s!\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"3.0.0\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"p_test\00", align 1
@.str.21 = private unnamed_addr constant [46 x i8] c"prov = ossl_provider_new(NULL, name, NULL, 0)\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"p_test_configured\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"Hello OpenSSL, greetings from Test Provider\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"prov = ossl_provider_find(NULL, name, 0)\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"ctx = OSSL_LIB_CTX_new()\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"prov = OSSL_PROVIDER_load(ctx, \22default\22)\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"OSSL_PROVIDER_available(ctx, \22default\22)\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"md = EVP_MD_fetch(ctx, \22SHA256\22, NULL)\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"SHA256\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"%s provider is available\0A\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"%s provider is not available\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_builtin_provider) #2
  tail call void @add_test(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @test_loaded_provider) #2
  tail call void @add_test(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 ()* noundef nonnull @test_configured_provider) #2
  tail call void @add_test(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 ()* noundef nonnull @test_cache_flushes) #2
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_builtin_provider() #0 {
entry:
  %call = tail call i32 @EVP_set_default_properties(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)) #2
  %call1 = tail call %struct.ossl_provider_st* @ossl_provider_new(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)* noundef nonnull @p_test_init, i32 noundef 0) #2
  %0 = bitcast %struct.ossl_provider_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.7, i64 0, i64 0), i8* noundef %0) #2
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  tail call fastcc void @expected_greeting1(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #3
  %call4 = tail call fastcc i32 @test_provider(%struct.ossl_provider_st* noundef %call1, i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @expected_greeting1.expected_greeting, i64 0, i64 0)) #3
  %tobool5 = icmp ne i32 %call4, 0
  %phi.cast = zext i1 %tobool5 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  %call6 = tail call i32 @EVP_set_default_properties(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #2
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_loaded_provider() #0 {
entry:
  %call = tail call %struct.ossl_provider_st* @ossl_provider_new(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)* noundef null, i32 noundef 0) #2
  %0 = bitcast %struct.ossl_provider_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.21, i64 0, i64 0), i8* noundef %0) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  tail call fastcc void @expected_greeting1(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0)) #3
  %call3 = tail call fastcc i32 @test_provider(%struct.ossl_provider_st* noundef %call, i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @expected_greeting1.expected_greeting, i64 0, i64 0)) #3
  %tobool4 = icmp ne i32 %call3, 0
  %phi.cast = zext i1 %tobool4 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_configured_provider() #0 {
entry:
  %call = tail call %struct.ossl_provider_st* @ossl_provider_find(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0), i32 noundef 0) #2
  %0 = bitcast %struct.ossl_provider_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i64 0, i64 0), i8* noundef %0) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call2 = tail call fastcc i32 @test_provider(%struct.ossl_provider_st* noundef %call, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.23, i64 0, i64 0)) #3
  %tobool3 = icmp ne i32 %call2, 0
  %phi.cast = zext i1 %tobool3 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cache_flushes() #0 {
entry:
  %call = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() #2
  %0 = bitcast %struct.ossl_lib_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 noundef 107, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i8* noundef %0) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0)) #2
  %1 = bitcast %struct.ossl_provider_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 noundef 108, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.26, i64 0, i64 0), i8* noundef %1) #2
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call i32 @OSSL_PROVIDER_available(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0)) #2
  %cmp = icmp ne i32 %call6, 0
  %conv = zext i1 %cmp to i32
  %call7 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 noundef 109, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i64 0, i64 0), i32 noundef %conv) #2
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i8* noundef null) #2
  %2 = bitcast %struct.evp_md_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 noundef 110, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i64 0, i64 0), i8* noundef %2) #2
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false9
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %call10) #2
  %call13 = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %call2) #2
  %call14 = tail call i32 @OSSL_PROVIDER_available(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0)) #2
  %cmp15 = icmp ne i32 %call14, 0
  %conv16 = zext i1 %cmp15 to i32
  %call17 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 noundef 117, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i64 0, i64 0), i32 noundef %conv16) #2
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %if.end20

if.end20:                                         ; preds = %if.end
  %call21 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i8* noundef null) #2
  %3 = bitcast %struct.evp_md_st* %call21 to i8*
  %call22 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 noundef 120, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i64 0, i64 0), i8* noundef %3) #2
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %err

if.then24:                                        ; preds = %if.end20
  %call25 = tail call %struct.ossl_provider_st* @EVP_MD_get0_provider(%struct.evp_md_st* noundef %call21) #2
  %call26 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call25) #2
  %call27 = tail call i32 @OSSL_PROVIDER_available(%struct.ossl_lib_ctx_st* noundef null, i8* noundef %call26) #2
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.then24
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 noundef 124, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i64 0, i64 0), i8* noundef %call26) #2
  br label %err

if.else:                                          ; preds = %if.then24
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 noundef 126, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i64 0, i64 0), i8* noundef %call26) #2
  br label %err

err:                                              ; preds = %if.end20, %if.else, %if.then29, %if.end, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9
  %md.0 = phi %struct.evp_md_st* [ null, %if.end ], [ %call10, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call21, %if.then29 ], [ %call21, %if.else ], [ %call21, %if.end20 ]
  %ret.0 = phi i32 [ 0, %if.end ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 1, %if.then29 ], [ 1, %if.else ], [ 1, %if.end20 ]
  %prov.0 = phi %struct.ossl_provider_st* [ null, %if.end ], [ %call2, %lor.lhs.false9 ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ null, %if.then29 ], [ null, %if.else ], [ null, %if.end20 ]
  %call32 = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %prov.0) #2
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %md.0) #2
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %call) #2
  ret i32 %ret.0
}

declare dso_local i32 @EVP_set_default_properties(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_provider_st* @ossl_provider_new(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @p_test_init(%struct.ossl_core_handle_st* noundef, %struct.ossl_dispatch_st* noundef, %struct.ossl_dispatch_st** noundef, i8** noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_provider(%struct.ossl_provider_st* noundef %prov, i8* noundef %expected_greeting) unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_provider_activate(%struct.ossl_provider_st* noundef %prov, i32 noundef 1, i32 noundef 0) #2
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 noundef 29, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 noundef %conv) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @ossl_provider_get_params(%struct.ossl_provider_st* noundef %prov, %struct.ossl_param_st* noundef getelementptr inbounds ([2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* @greeting_request, i64 0, i64 0)) #2
  %cmp3 = icmp ne i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 noundef 30, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv4) #2
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.end, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %land.lhs.true
  %0 = load i8*, i8** getelementptr inbounds ([2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* @greeting_request, i64 0, i64 0, i32 2), align 16, !tbaa !3
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 noundef 31, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i8* noundef %0) #2
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.end, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %land.lhs.true7
  %1 = load i64, i64* getelementptr inbounds ([2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* @greeting_request, i64 0, i64 0, i32 3), align 8, !tbaa !10
  %call11 = tail call i32 @test_size_t_gt(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 noundef 32, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i64 noundef %1, i64 noundef 0) #2
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.end, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %call14 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 noundef 33, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i8* noundef %0, i8* noundef %expected_greeting) #2
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true13
  %call16 = tail call i32 @ossl_provider_deactivate(%struct.ossl_provider_st* noundef %prov) #2
  %cmp17 = icmp ne i32 %call16, 0
  %conv18 = zext i1 %cmp17 to i32
  %call19 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 noundef 34, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv18) #2
  %tobool20 = icmp ne i32 %call19, 0
  %phi.cast = zext i1 %tobool20 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true13, %land.lhs.true10, %land.lhs.true7, %land.lhs.true, %entry
  %greeting.0 = phi i8* [ %0, %land.rhs ], [ %0, %land.lhs.true13 ], [ %0, %land.lhs.true10 ], [ %0, %land.lhs.true7 ], [ null, %land.lhs.true ], [ null, %entry ]
  %2 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %land.lhs.true13 ], [ 0, %land.lhs.true10 ], [ 0, %land.lhs.true7 ], [ 0, %land.lhs.true ], [ 0, %entry ]
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 noundef 36, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i8* noundef %greeting.0) #2
  tail call void @ossl_provider_free(%struct.ossl_provider_st* noundef %prov) #2
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @expected_greeting1(i8* noundef %name) unnamed_addr #0 {
entry:
  %call = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @expected_greeting1.expected_greeting, i64 0, i64 0), i64 noundef 256, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* noundef %name) #2
  ret void
}

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_provider_activate(%struct.ossl_provider_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_provider_get_params(%struct.ossl_provider_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_size_t_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_str_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_provider_deactivate(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local void @ossl_provider_free(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local %struct.ossl_provider_st* @ossl_provider_find(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() local_unnamed_addr #1

declare dso_local %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PROVIDER_available(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr_null(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_provider_st* @EVP_MD_get0_provider(%struct.evp_md_st* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }
attributes #3 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !5, i64 16}
!4 = !{!"ossl_param_st", !5, i64 0, !8, i64 8, !5, i64 16, !9, i64 24, !9, i64 32}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"int", !6, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!4, !9, i64 24}
