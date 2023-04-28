; ModuleID = 'crypto/dh/dh_err.c'
source_filename = "crypto/dh/dh_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ERR_string_data_st = type { i64, i8* }

@DH_str_reasons = internal constant [30 x %struct.ERR_string_data_st] [%struct.ERR_string_data_st { i64 41943167, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 41943141, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 41943149, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 41943146, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 41943155, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 41943156, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 41943162, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 41943163, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 41943164, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 41943157, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 41943158, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 41943159, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 41943144, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 41943150, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 41943154, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 41943142, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 41943168, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 41943152, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 41943148, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 41943165, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 41943143, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 41943166, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 41943160, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 41943147, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 41943140, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 41943145, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 41943151, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 41943153, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 41943161, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i32 0, i32 0) }, %struct.ERR_string_data_st zeroinitializer], align 16
@.str = private unnamed_addr constant [19 x i8] c"bad ffc parameters\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"bad generator\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"bn decode error\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"bn error\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"check invalid j value\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"check invalid q value\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"check pubkey invalid\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"check pubkey too large\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"check pubkey too small\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"check p not prime\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"check p not safe prime\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"check q not prime\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"decode error\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"invalid parameter name\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"invalid parameter nid\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"invalid public key\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"invalid secret\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"kdf parameter error\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"keys not set\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"missing pubkey\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"modulus too large\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"modulus too small\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"not suitable generator\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"no parameters set\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"no private value\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"parameter encoding error\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"peer key error\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"shared info error\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"unable to check generator\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_err_load_DH_strings() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ERR_reason_error_string(i64 noundef 41943167) #2
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ERR_load_strings_const(%struct.ERR_string_data_st* noundef getelementptr inbounds ([30 x %struct.ERR_string_data_st], [30 x %struct.ERR_string_data_st]* @DH_str_reasons, i64 0, i64 0)) #2
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
