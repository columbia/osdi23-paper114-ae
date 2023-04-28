; ModuleID = 'crypto/http/http_err.c'
source_filename = "crypto/http/http_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ERR_string_data_st = type { i64, i8* }

@HTTP_str_reasons = internal constant [30 x %struct.ERR_string_data_st] [%struct.ERR_string_data_st { i64 511705196, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 511705188, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 511705197, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 511705207, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 511705189, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 511705191, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 511705190, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 511705216, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 511705214, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 511705208, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 511705211, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 511705213, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 511705212, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 511705205, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 511705198, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 511705209, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 511705199, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 511705193, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 511705194, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 511705200, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 511705204, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 511705201, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 511705192, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 511705215, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 511705210, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 511705202, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 511705195, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 511705203, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 511705206, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i32 0, i32 0) }, %struct.ERR_string_data_st zeroinitializer], align 16
@.str = private unnamed_addr constant [30 x i8] c"asn1 len exceeds max resp len\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"connect failure\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"error parsing asn1 length\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"error parsing content length\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"error parsing url\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"error receiving\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"error sending\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"failed reading data\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"header parse error\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"inconsistent content length\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"invalid port number\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"invalid url path\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"invalid url scheme\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"max resp len exceeded\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"missing asn1 encoding\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"missing content type\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"missing redirect location\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"received error\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"received wrong http version\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"redirection from https to http\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"redirection not enabled\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"response line too long\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"response parse error\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"server canceled connection\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"sock not supported\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"status code unsupported\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"tls not enabled\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"too many redirections\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"unexpected content type\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_err_load_HTTP_strings() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ERR_reason_error_string(i64 noundef 511705196) #2
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ERR_load_strings_const(%struct.ERR_string_data_st* noundef getelementptr inbounds ([30 x %struct.ERR_string_data_st], [30 x %struct.ERR_string_data_st]* @HTTP_str_reasons, i64 0, i64 0)) #2
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
