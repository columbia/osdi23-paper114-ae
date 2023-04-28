; ModuleID = 'crypto/cpt_err.c'
source_filename = "crypto/cpt_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ERR_string_data_st = type { i64, i8* }

@CRYPTO_str_reasons = internal constant [21 x %struct.ERR_string_data_st] [%struct.ERR_string_data_st { i64 125829237, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 125829238, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 125829241, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 125829222, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 125829226, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 125829227, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 125829228, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 125829229, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 125829230, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 125829223, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 125829224, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 125829225, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 125829239, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 125829231, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 125829232, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 125829233, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 125829234, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 125829236, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 125829240, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 125829235, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0) }, %struct.ERR_string_data_st zeroinitializer], align 16
@.str = private unnamed_addr constant [19 x i8] c"bad algorithm name\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"conflicting names\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"hex string too short\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"illegal hex digit\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"insufficient data space\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"insufficient param size\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"insufficient secure data space\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"invalid null argument\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"invalid ossl param type\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"odd number of digits\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"provider already exists\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"provider section error\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"random section error\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"secure malloc failure\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"string too long\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"too many bytes\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"too many records\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"too small buffer\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"unknown name in random section\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"zero length number\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_err_load_CRYPTO_strings() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ERR_reason_error_string(i64 noundef 125829237) #2
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ERR_load_strings_const(%struct.ERR_string_data_st* noundef getelementptr inbounds ([21 x %struct.ERR_string_data_st], [21 x %struct.ERR_string_data_st]* @CRYPTO_str_reasons, i64 0, i64 0)) #2
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
