; ModuleID = 'crypto/crmf/crmf_err.c'
source_filename = "crypto/crmf/crmf_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ERR_string_data_st = type { i64, i8* }

@CRMF_str_reasons = internal constant [23 x %struct.ERR_string_data_st] [%struct.ERR_string_data_st { i64 469762148, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 469762150, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 469762151, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 469762152, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 469762153, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 469762154, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 469762155, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 469762156, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 469762149, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 469762157, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 469762161, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 469762165, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 469762169, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 469762166, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 469762167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 469762168, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 469762158, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 469762159, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 469762160, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 469762162, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 469762163, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 469762164, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0) }, %struct.ERR_string_data_st zeroinitializer], align 16
@.str = private unnamed_addr constant [23 x i8] c"bad pbm iterationcount\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"crmferror\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"error decoding certificate\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"error decrypting certificate\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"error decrypting symmetric key\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"failure obtaining random\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"iterationcount below 100\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"malformed iv\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"null argument\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"poposkinput not supported\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"popo inconsistent public key\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"popo missing\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"popo missing public key\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"popo missing subject\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"popo raverified not accepted\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"setting mac algor failure\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"setting owf algor failure\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"unsupported algorithm\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"unsupported cipher\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"unsupported method for creating popo\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"unsupported popo method\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_err_load_CRMF_strings() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ERR_reason_error_string(i64 noundef 469762148) #2
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ERR_load_strings_const(%struct.ERR_string_data_st* noundef getelementptr inbounds ([23 x %struct.ERR_string_data_st], [23 x %struct.ERR_string_data_st]* @CRMF_str_reasons, i64 0, i64 0)) #2
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
