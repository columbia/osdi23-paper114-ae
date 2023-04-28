; ModuleID = 'crypto/property/property_err.c'
source_filename = "crypto/property/property_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ERR_string_data_st = type { i64, i8* }

@PROP_str_reasons = internal constant [12 x %struct.ERR_string_data_st] [%struct.ERR_string_data_st { i64 461373540, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 461373541, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 461373542, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 461373543, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 461373544, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 461373545, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 461373546, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 461373547, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 461373548, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 461373549, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 461373550, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0) }, %struct.ERR_string_data_st zeroinitializer], align 16
@.str = private unnamed_addr constant [14 x i8] c"name too long\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"not an ascii character\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"not an hexadecimal digit\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"not an identifier\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"not an octal digit\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"not a decimal digit\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"no matching string delimiter\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"no value\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"parse failed\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"string too long\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"trailing characters\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_err_load_PROP_strings() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ERR_reason_error_string(i64 noundef 461373540) #2
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ERR_load_strings_const(%struct.ERR_string_data_st* noundef getelementptr inbounds ([12 x %struct.ERR_string_data_st], [12 x %struct.ERR_string_data_st]* @PROP_str_reasons, i64 0, i64 0)) #2
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
