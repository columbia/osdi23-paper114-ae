; ModuleID = 'crypto/bn/bn_err.c'
source_filename = "crypto/bn/bn_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ERR_string_data_st = type { i64, i8* }

@BN_str_reasons = internal constant [22 x %struct.ERR_string_data_st] [%struct.ERR_string_data_st { i64 25165924, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 25165925, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 25165938, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 25165942, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 25165926, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 25165927, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 25165928, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 25165929, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 25165934, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 25165930, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 25165939, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 25165943, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 25165935, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 25165931, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 25165932, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 25165940, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 25165944, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 25165941, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 25165936, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 25165937, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 25165933, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i32 0, i32 0) }, %struct.ERR_string_data_st zeroinitializer], align 16
@.str = private unnamed_addr constant [13 x i8] c"arg2 lt arg3\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"bad reciprocal\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"bignum too long\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"bits too small\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"called with even modulus\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"div by zero\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"encoding error\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"expand on static bignum data\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"input not reduced\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"invalid length\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"invalid shift\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"not a square\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"not initialized\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"no inverse\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"no solution\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"no suitable digest\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"private key too large\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"p is not prime\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"too many iterations\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"too many temporary variables\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_err_load_BN_strings() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ERR_reason_error_string(i64 noundef 25165924) #2
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ERR_load_strings_const(%struct.ERR_string_data_st* noundef getelementptr inbounds ([22 x %struct.ERR_string_data_st], [22 x %struct.ERR_string_data_st]* @BN_str_reasons, i64 0, i64 0)) #2
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
