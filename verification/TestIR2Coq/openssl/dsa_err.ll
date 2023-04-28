; ModuleID = 'crypto/dsa/dsa_err.c'
source_filename = "crypto/dsa/dsa_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ERR_string_data_st = type { i64, i8* }

@DSA_str_reasons = internal constant [16 x %struct.ERR_string_data_st] [%struct.ERR_string_data_st { i64 83886194, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 83886182, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 83886188, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 83886189, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 83886184, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 83886186, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 83886192, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 83886181, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 83886191, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 83886183, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 83886187, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 83886185, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 83886195, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 83886193, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 83886190, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i32 0, i32 0) }, %struct.ERR_string_data_st zeroinitializer], align 16
@.str = private unnamed_addr constant [19 x i8] c"bad ffc parameters\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"bad q value\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"bn decode error\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"bn error\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"decode error\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"invalid digest type\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"invalid parameters\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"missing parameters\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"missing private key\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"modulus too large\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"no parameters set\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"parameter encoding error\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"p not prime\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"q not prime\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"seed_len is less than the length of q\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_err_load_DSA_strings() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ERR_reason_error_string(i64 noundef 83886194) #2
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ERR_load_strings_const(%struct.ERR_string_data_st* noundef getelementptr inbounds ([16 x %struct.ERR_string_data_st], [16 x %struct.ERR_string_data_st]* @DSA_str_reasons, i64 0, i64 0)) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

declare i8* @ERR_reason_error_string(i64 noundef) local_unnamed_addr #1

declare i32 @ERR_load_strings_const(%struct.ERR_string_data_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
