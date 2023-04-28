; ModuleID = 'test/prov_config_test.c'
source_filename = "test/prov_config_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_md_st = type opaque

@test_get_options.options = internal constant [9 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [32 x i8] c"Usage: %s [options] configfile\0A\00", align 1
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
@.str.14 = private unnamed_addr constant [24 x i8] c"test/prov_config_test.c\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Error parsing test options\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"configfile = test_get_argument(0)\00", align 1
@configfile = internal unnamed_addr global i8* null, align 8
@.str.17 = private unnamed_addr constant [19 x i8] c"test_double_config\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"configfile\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"ctx\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"OSSL_LIB_CTX_load_config(ctx, configfile)\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"SHA2-256\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #0 {
entry:
  ret %struct.options_st* getelementptr inbounds ([9 x %struct.options_st], [9 x %struct.options_st]* @test_get_options.options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  %call = tail call i32 @test_skip_common_options() #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0)) #3
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @test_get_argument(i64 noundef 0) #3
  store i8* %call1, i8** @configfile, align 8, !tbaa !3
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i8* noundef %call1) #3
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %return, label %if.end5

if.end5:                                          ; preds = %if.end
  tail call void @add_test(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i32 ()* noundef nonnull @test_double_config) #3
  br label %return

return:                                           ; preds = %if.end, %if.end5, %if.then
  %retval.0 = phi i32 [ 1, %if.end5 ], [ 0, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare dso_local i32 @test_skip_common_options() local_unnamed_addr #2

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i8* @test_get_argument(i64 noundef) local_unnamed_addr #2

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_double_config() #1 {
entry:
  %call = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() #3
  %0 = load i8*, i8** @configfile, align 8, !tbaa !3
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 25, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8* noundef %0) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = bitcast %struct.ossl_lib_ctx_st* %call to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 27, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* noundef %1) #3
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %2 = load i8*, i8** @configfile, align 8, !tbaa !3
  %call6 = tail call i32 @OSSL_LIB_CTX_load_config(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef %2) #3
  %cmp = icmp ne i32 %call6, 0
  %conv = zext i1 %cmp to i32
  %call7 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 30, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i64 0, i64 0), i32 noundef %conv) #3
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end5
  %3 = load i8*, i8** @configfile, align 8, !tbaa !3
  %call11 = tail call i32 @OSSL_LIB_CTX_load_config(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef %3) #3
  %cmp12 = icmp ne i32 %call11, 0
  %conv13 = zext i1 %cmp12 to i32
  %call14 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 32, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i64 0, i64 0), i32 noundef %conv13) #3
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup, label %if.end17

if.end17:                                         ; preds = %if.end10
  %call18 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i8* noundef null) #3
  %4 = bitcast %struct.evp_md_st* %call18 to i8*
  %call19 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 noundef 37, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8* noundef %4) #3
  %tobool20.not = icmp ne i32 %call19, 0
  %spec.select = zext i1 %tobool20.not to i32
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %call18) #3
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end5, %if.end, %entry, %if.end17
  %retval.0 = phi i32 [ %spec.select, %if.end17 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end5 ], [ 0, %if.end10 ]
  ret i32 %retval.0
}

declare dso_local %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() local_unnamed_addr #2

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @OSSL_LIB_CTX_load_config(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare dso_local void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
