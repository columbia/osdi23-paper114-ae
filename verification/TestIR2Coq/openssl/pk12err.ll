; ModuleID = 'crypto/pkcs12/pk12err.c'
source_filename = "crypto/pkcs12/pk12err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ERR_string_data_st = type { i64, i8* }

@PKCS12_str_reasons = internal constant [21 x %struct.ERR_string_data_st] [%struct.ERR_string_data_st { i64 293601380, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 293601401, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 293601381, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 293601382, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 293601383, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 293601400, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 293601384, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 293601385, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 293601392, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 293601386, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 293601387, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 293601388, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 293601389, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 293601390, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 293601391, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 293601393, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 293601394, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 293601396, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 293601398, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 293601399, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0) }, %struct.ERR_string_data_st zeroinitializer], align 16
@.str = private unnamed_addr constant [20 x i8] c"cant pack structure\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"content type not data\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"decode error\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"encode error\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"encrypt error\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"error setting encrypted data type\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"invalid null argument\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"invalid null pkcs12 pointer\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"invalid type\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"iv gen error\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"key gen error\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"mac absent\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"mac generation error\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"mac setup error\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"mac string set error\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"mac verify failure\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"parse error\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"pkcs12 cipherfinal error\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"unknown digest algorithm\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"unsupported pkcs12 mode\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_err_load_PKCS12_strings() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ERR_reason_error_string(i64 noundef 293601380) #2
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ERR_load_strings_const(%struct.ERR_string_data_st* noundef getelementptr inbounds ([21 x %struct.ERR_string_data_st], [21 x %struct.ERR_string_data_st]* @PKCS12_str_reasons, i64 0, i64 0)) #2
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
