; ModuleID = 'crypto/ui/ui_err.c'
source_filename = "crypto/ui/ui_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ERR_string_data_st = type { i64, i8* }

@UI_str_reasons = internal constant [14 x %struct.ERR_string_data_st] [%struct.ERR_string_data_st { i64 335544424, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 335544422, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 335544423, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 335544425, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 335544427, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 335544420, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 335544421, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 335544429, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 335544430, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 335544431, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 335544426, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 335544428, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 335544432, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i32 0, i32 0) }, %struct.ERR_string_data_st zeroinitializer], align 16
@.str = private unnamed_addr constant [32 x i8] c"common ok and cancel characters\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"index too large\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"index too small\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"no result buffer\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"processing error\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"result too large\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"result too small\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"sys$assign error\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"sys$dassgn error\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"sys$qiow error\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"unknown control command\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"unknown ttyget errno value\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"user data duplication unsupported\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_err_load_UI_strings() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ERR_reason_error_string(i64 noundef 335544424) #2
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ERR_load_strings_const(%struct.ERR_string_data_st* noundef getelementptr inbounds ([14 x %struct.ERR_string_data_st], [14 x %struct.ERR_string_data_st]* @UI_str_reasons, i64 0, i64 0)) #2
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
