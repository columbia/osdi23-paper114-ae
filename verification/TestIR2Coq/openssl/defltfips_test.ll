; ModuleID = 'test/defltfips_test.c'
source_filename = "test/defltfips_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_lib_ctx_st = type opaque
%struct.evp_md_st = type opaque
%struct.ossl_provider_st = type opaque

@.str = private unnamed_addr constant [22 x i8] c"test/defltfips_test.c\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Error parsing test options\0A\00", align 1
@is_fips = internal unnamed_addr global i1 false, align 4
@bad_fips = internal unnamed_addr global i1 false, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"fips\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"badfips\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Invalid argument\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"test_is_fips_enabled\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"is_fips || bad_fips\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"is_fips_enabled\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"is_fips && !bad_fips\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"is_fips_loaded\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"SHA2-256\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"OSSL_PROVIDER_get0_name(EVP_MD_get0_provider(sha256))\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"\22fips\22\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @test_skip_common_options() #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 68, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0)) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @test_get_argument_count() #3
  switch i64 %call1, label %sw.default [
    i64 0, label %sw.epilog
    i64 1, label %sw.bb2
  ]

sw.bb2:                                           ; preds = %if.end
  %call3 = tail call i8* @test_get_argument(i64 noundef 0) #3
  %call4 = tail call i32 @strcmp(i8* noundef %call3, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #4
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %sw.epilog, label %if.else

if.else:                                          ; preds = %sw.bb2
  %call6 = tail call i32 @strcmp(i8* noundef %call3, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #4
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %if.else, %if.end
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0)) #3
  br label %cleanup

sw.epilog:                                        ; preds = %if.else, %sw.bb2, %if.end
  %.sink15 = phi i1 [ false, %if.end ], [ true, %sw.bb2 ], [ false, %if.else ]
  %.sink = phi i1 [ false, %if.end ], [ false, %sw.bb2 ], [ true, %if.else ]
  store i1 %.sink15, i1* @is_fips, align 4
  store i1 %.sink, i1* @bad_fips, align 4
  tail call void @add_test(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 ()* noundef nonnull @test_is_fips_enabled) #3
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then
  %retval.0 = phi i32 [ 0, %sw.default ], [ 1, %sw.epilog ], [ 0, %if.then ]
  ret i32 %retval.0
}

declare dso_local i32 @test_skip_common_options() local_unnamed_addr #1

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local i64 @test_get_argument_count() local_unnamed_addr #1

declare dso_local i8* @test_get_argument(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_is_fips_enabled() #0 {
entry:
  %call = tail call i32 @EVP_default_properties_is_fips_enabled(%struct.ossl_lib_ctx_st* noundef null) #3
  %call1 = tail call i32 @OSSL_PROVIDER_available(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #3
  %.b51 = load i1, i1* @is_fips, align 4
  %.b55 = load i1, i1* @bad_fips, align 4
  %0 = select i1 %.b51, i1 true, i1 %.b55
  %lor.ext = zext i1 %0 to i32
  %call3 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 28, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 noundef %lor.ext, i32 noundef %call) #3
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %.b50 = load i1, i1* @is_fips, align 4
  %.b54 = load i1, i1* @bad_fips, align 4
  %lnot = xor i1 %.b54, true
  %1 = select i1 %.b50, i1 %lnot, i1 false
  %land.ext = zext i1 %1 to i32
  %call7 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 29, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 noundef %land.ext, i32 noundef %call1) #3
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call9 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* noundef null) #3
  %.b53 = load i1, i1* @bad_fips, align 4
  %2 = bitcast %struct.evp_md_st* %call9 to i8*
  br i1 %.b53, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  %call12 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* noundef %2) #3
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end27

if.then14:                                        ; preds = %if.then11
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %call9) #3
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call16 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* noundef %2) #3
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %cleanup, label %if.end19

if.end19:                                         ; preds = %if.else
  %.b49 = load i1, i1* @is_fips, align 4
  br i1 %.b49, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %if.end19
  %call21 = tail call %struct.ossl_provider_st* @EVP_MD_get0_provider(%struct.evp_md_st* noundef %call9) #3
  %call22 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call21) #3
  %call23 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* noundef %call22, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #3
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %land.lhs.true
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %call9) #3
  br label %cleanup

if.end26:                                         ; preds = %land.lhs.true, %if.end19
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %call9) #3
  br label %if.end27

if.end27:                                         ; preds = %if.then11, %if.end26
  %call28 = tail call i32 @EVP_default_properties_is_fips_enabled(%struct.ossl_lib_ctx_st* noundef null) #3
  %.b = load i1, i1* @is_fips, align 4
  %.b52 = load i1, i1* @bad_fips, align 4
  %3 = select i1 %.b, i1 true, i1 %.b52
  %lor.ext33 = zext i1 %3 to i32
  %call34 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 noundef %lor.ext33, i32 noundef %call28) #3
  %tobool35.not = icmp ne i32 %call34, 0
  %. = zext i1 %tobool35.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.else, %entry, %lor.lhs.false, %if.then25, %if.then14
  %retval.0 = phi i32 [ 0, %if.then14 ], [ 0, %if.then25 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.else ], [ %., %if.end27 ]
  ret i32 %retval.0
}

declare dso_local i32 @EVP_default_properties_is_fips_enabled(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PROVIDER_available(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr_null(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_str_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_provider_st* @EVP_MD_get0_provider(%struct.evp_md_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
