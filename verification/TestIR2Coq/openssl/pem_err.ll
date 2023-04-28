; ModuleID = 'crypto/pem/pem_err.c'
source_filename = "crypto/pem/pem_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ERR_string_data_st = type { i64, i8* }

@PEM_str_reasons = internal constant [34 x %struct.ERR_string_data_st] [%struct.ERR_string_data_st { i64 75497572, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 75497573, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 75497574, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 75497575, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 75497588, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 75497576, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 75497589, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 75497590, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 75497599, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 75497587, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 75497603, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 75497591, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 75497592, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 75497604, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 75497600, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 75497593, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 75497594, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 75497595, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 75497601, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 75497577, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 75497578, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 75497579, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 75497580, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 75497581, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 75497596, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 75497597, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 75497583, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 75497584, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 75497602, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 75497585, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 75497586, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 75497598, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 75497582, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i32 0, i32 0) }, %struct.ERR_string_data_st zeroinitializer], align 16
@.str = private unnamed_addr constant [18 x i8] c"bad base64 decode\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"bad decrypt\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"bad end line\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"bad iv chars\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"bad magic number\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"bad password read\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"bad version number\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"bio write failure\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"cipher is null\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"error converting private key\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"expecting dss key blob\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"expecting private key blob\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"expecting public key blob\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"expecting rsa key blob\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"header too long\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"inconsistent header\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"keyblob header parse error\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"keyblob too short\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"missing dek iv\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"not dek info\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"not encrypted\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"not proc type\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"no start line\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"problems getting password\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"pvk data too short\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"pvk too short\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"read key\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"short header\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"unexpected dek iv\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"unsupported cipher\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"unsupported encryption\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"unsupported key components\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"unsupported public key type\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_err_load_PEM_strings() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ERR_reason_error_string(i64 noundef 75497572) #2
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ERR_load_strings_const(%struct.ERR_string_data_st* noundef getelementptr inbounds ([34 x %struct.ERR_string_data_st], [34 x %struct.ERR_string_data_st]* @PEM_str_reasons, i64 0, i64 0)) #2
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
