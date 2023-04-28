; ModuleID = 'crypto/bio/bio_err.c'
source_filename = "crypto/bio/bio_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ERR_string_data_st = type { i64, i8* }

@BIO_str_reasons = internal constant [40 x %struct.ERR_string_data_st] [%struct.ERR_string_data_st { i64 268435556, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435597, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435585, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435557, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435580, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435559, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435603, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435563, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435588, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435589, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435590, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435581, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435591, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435579, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435558, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435592, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435598, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435586, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435566, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435599, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435600, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435569, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435584, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435560, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435561, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435573, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435574, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435593, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435575, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435594, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435595, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435601, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435576, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435596, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435602, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435577, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435587, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.36, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435582, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 268435578, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0) }, %struct.ERR_string_data_st zeroinitializer], align 16
@.str = private unnamed_addr constant [13 x i8] c"accept error\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"addrinfo addr is not af inet\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"ambiguous host or service\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"bad fopen mode\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"broken pipe\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"connect error\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"connect timeout\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"gethostbyname addr is not af inet\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"getsockname error\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"getsockname truncated address\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"getting socktype\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"invalid argument\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"invalid socket\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"in use\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"length too long\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"listen v6 only\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"lookup returned nothing\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"malformed host or service\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"nbio connect error\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"no accept addr or service specified\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"no hostname or service specified\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"no port defined\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"no such file\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"transfer error\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"transfer timeout\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"unable to bind socket\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"unable to create socket\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"unable to keepalive\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"unable to listen socket\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"unable to nodelay\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"unable to reuseaddr\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"unavailable ip family\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"uninitialized\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"unknown info type\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"unsupported ip family\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"unsupported method\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"unsupported protocol family\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"write to read only BIO\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"WSAStartup\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_err_load_BIO_strings() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ERR_reason_error_string(i64 noundef 268435556) #2
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ERR_load_strings_const(%struct.ERR_string_data_st* noundef getelementptr inbounds ([40 x %struct.ERR_string_data_st], [40 x %struct.ERR_string_data_st]* @BIO_str_reasons, i64 0, i64 0)) #2
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
