; ModuleID = 'crypto/conf/conf_err.c'
source_filename = "crypto/conf/conf_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ERR_string_data_st = type { i64, i8* }

@CONF_str_reasons = internal constant [27 x %struct.ERR_string_data_st] [%struct.ERR_string_data_st { i64 117440622, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 117440634, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 117440627, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 117440635, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 117440612, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 117440613, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 117440624, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 117440621, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 117440614, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 117440617, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 117440618, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 117440619, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 117440626, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 117440620, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 117440633, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 117440636, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 117440623, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 117440637, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 117440629, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 117440630, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 117440631, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 117440632, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 117440615, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 117440625, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 117440628, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 117440616, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0) }, %struct.ERR_string_data_st zeroinitializer], align 16
@.str = private unnamed_addr constant [18 x i8] c"error loading dso\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"invalid pragma\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"list cannot be null\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"mandatory braces in variable expansion\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"missing close square bracket\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"missing equal sign\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"missing init function\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"module initialization error\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"no close brace\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"no conf\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"no conf or environment variable\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"no section\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"no such file\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"no value\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"number too large\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"openssl conf references missing section\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"recursive directory include\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"relative path\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"ssl command section empty\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"ssl command section not found\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"ssl section empty\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"ssl section not found\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"unable to create new section\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"unknown module name\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"variable expansion too long\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"variable has no value\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_err_load_CONF_strings() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ERR_reason_error_string(i64 noundef 117440622) #2
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ERR_load_strings_const(%struct.ERR_string_data_st* noundef getelementptr inbounds ([27 x %struct.ERR_string_data_st], [27 x %struct.ERR_string_data_st]* @CONF_str_reasons, i64 0, i64 0)) #2
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
