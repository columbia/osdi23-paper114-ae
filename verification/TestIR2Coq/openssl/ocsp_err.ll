; ModuleID = 'crypto/ocsp/ocsp_err.c'
source_filename = "crypto/ocsp/ocsp_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ERR_string_data_st = type { i64, i8* }

@OCSP_str_reasons = internal constant [26 x %struct.ERR_string_data_st] [%struct.ERR_string_data_st { i64 327155813, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 327155814, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 327155818, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 327155819, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 327155834, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 327155835, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 327155815, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 327155836, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 327155816, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 327155817, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 327155820, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 327155821, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 327155842, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 327155822, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 327155840, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 327155823, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 327155824, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 327155829, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 327155830, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 327155837, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 327155838, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 327155839, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 327155831, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 327155832, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 327155841, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i32 0, i32 0) }, %struct.ERR_string_data_st zeroinitializer], align 16
@.str = private unnamed_addr constant [25 x i8] c"certificate verify error\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"digest err\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"digest name err\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"digest size err\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"error in nextupdate field\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"error in thisupdate field\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"missing ocspsigning usage\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"nextupdate before thisupdate\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"not basic response\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"no certificates in chain\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"no response data\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"no revoked time\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"no signer key\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"private key does not match certificate\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"request not signed\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"response contains no revocation data\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"root ca not trusted\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"signature failure\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"signer certificate not found\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"status expired\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"status not yet valid\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"status too old\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"unknown message digest\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"unknown nid\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"unsupported requestorname type\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_err_load_OCSP_strings() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ERR_reason_error_string(i64 noundef 327155813) #2
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ERR_load_strings_const(%struct.ERR_string_data_st* noundef getelementptr inbounds ([26 x %struct.ERR_string_data_st], [26 x %struct.ERR_string_data_st]* @OCSP_str_reasons, i64 0, i64 0)) #2
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
