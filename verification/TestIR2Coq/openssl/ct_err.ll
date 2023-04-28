; ModuleID = 'crypto/ct/ct_err.c'
source_filename = "crypto/ct/ct_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ERR_string_data_st = type { i64, i8* }

@CT_str_reasons = internal constant [18 x %struct.ERR_string_data_st] [%struct.ERR_string_data_st { i64 419430508, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 419430500, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 419430509, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 419430510, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 419430511, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 419430512, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 419430513, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 419430516, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 419430504, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 419430507, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 419430505, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 419430514, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 419430506, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 419430515, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 419430501, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 419430502, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 419430503, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0) }, %struct.ERR_string_data_st zeroinitializer], align 16
@.str = private unnamed_addr constant [20 x i8] c"base64 decode error\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid log id length\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"log conf invalid\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"log conf invalid key\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"log conf missing description\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"log conf missing key\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"log key invalid\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"sct future timestamp\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"sct invalid\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"sct invalid signature\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"sct list invalid\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"sct log id mismatch\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"sct not set\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"sct unsupported version\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"unrecognized signature nid\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"unsupported entry type\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"unsupported version\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_err_load_CT_strings() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ERR_reason_error_string(i64 noundef 419430508) #2
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ERR_load_strings_const(%struct.ERR_string_data_st* noundef getelementptr inbounds ([18 x %struct.ERR_string_data_st], [18 x %struct.ERR_string_data_st]* @CT_str_reasons, i64 0, i64 0)) #2
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
