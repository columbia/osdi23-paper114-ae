; ModuleID = 'test/x509_dup_cert_test.c'
source_filename = "test/x509_dup_cert_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.x509_store_st = type opaque
%struct.x509_lookup_method_st = type opaque
%struct.x509_lookup_st = type opaque
%struct.x509_store_ctx_st = type opaque

@test_get_options.options = internal constant [9 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [33 x i8] c"Usage: %s [options] cert.pem...\0A\00", align 1
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
@.str.14 = private unnamed_addr constant [26 x i8] c"test/x509_dup_cert_test.c\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Error parsing test options\0A\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"test_509_dup_cert\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"store = X509_STORE_new()\00", align 1
@.str.20 = private unnamed_addr constant [58 x i8] c"lookup = X509_STORE_add_lookup(store, X509_LOOKUP_file())\00", align 1
@.str.21 = private unnamed_addr constant [55 x i8] c"X509_load_cert_file(lookup, cert_f, X509_FILETYPE_PEM)\00", align 1

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
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0)) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @test_get_argument_count() #3
  %conv = trunc i64 %call1 to i32
  %call2 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #3
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i32 (i32)* noundef nonnull @test_509_dup_cert, i32 noundef %conv, i32 noundef 1) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end5, %if.then
  %retval.0 = phi i32 [ 1, %if.end5 ], [ 0, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare dso_local i32 @test_skip_common_options() local_unnamed_addr #2

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local i64 @test_get_argument_count() local_unnamed_addr #2

declare dso_local i32 @test_int_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_509_dup_cert(i32 noundef %n) #1 {
entry:
  %conv = sext i32 %n to i64
  %call = tail call i8* @test_get_argument(i64 noundef %conv) #3
  %call1 = tail call %struct.x509_store_st* @X509_STORE_new() #3
  %0 = bitcast %struct.x509_store_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 noundef 25, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0), i8* noundef %0) #3
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call %struct.x509_lookup_method_st* @X509_LOOKUP_file() #3
  %call4 = tail call %struct.x509_lookup_st* @X509_STORE_add_lookup(%struct.x509_store_st* noundef %call1, %struct.x509_lookup_method_st* noundef %call3) #3
  %1 = bitcast %struct.x509_lookup_st* %call4 to i8*
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 noundef 26, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.20, i64 0, i64 0), i8* noundef %1) #3
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %land.lhs.true
  %call8 = tail call i32 @X509_load_cert_file(%struct.x509_lookup_st* noundef %call4, i8* noundef %call, i32 noundef 1) #3
  %cmp = icmp ne i32 %call8, 0
  %conv9 = zext i1 %cmp to i32
  %call10 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 noundef 27, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.21, i64 0, i64 0), i32 noundef %conv9) #3
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %land.lhs.true7
  %call13 = tail call i32 @X509_load_cert_file(%struct.x509_lookup_st* noundef %call4, i8* noundef %call, i32 noundef 1) #3
  %cmp14 = icmp ne i32 %call13, 0
  %conv15 = zext i1 %cmp14 to i32
  %call16 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 noundef 28, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.21, i64 0, i64 0), i32 noundef %conv15) #3
  %tobool17.not = icmp ne i32 %call16, 0
  %spec.select = zext i1 %tobool17.not to i32
  br label %if.end

if.end:                                           ; preds = %land.lhs.true12, %land.lhs.true7, %land.lhs.true, %entry
  %ret.0 = phi i32 [ 0, %land.lhs.true7 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %spec.select, %land.lhs.true12 ]
  tail call void @X509_STORE_CTX_free(%struct.x509_store_ctx_st* noundef null) #3
  tail call void @X509_STORE_free(%struct.x509_store_st* noundef %call1) #3
  ret i32 %ret.0
}

declare dso_local i8* @test_get_argument(i64 noundef) local_unnamed_addr #2

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.x509_store_st* @X509_STORE_new() local_unnamed_addr #2

declare dso_local %struct.x509_lookup_st* @X509_STORE_add_lookup(%struct.x509_store_st* noundef, %struct.x509_lookup_method_st* noundef) local_unnamed_addr #2

declare dso_local %struct.x509_lookup_method_st* @X509_LOOKUP_file() local_unnamed_addr #2

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @X509_load_cert_file(%struct.x509_lookup_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @X509_STORE_CTX_free(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @X509_STORE_free(%struct.x509_store_st* noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
