; ModuleID = 'crypto/ts/ts_err.c'
source_filename = "crypto/ts/ts_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ERR_string_data_st = type { i64, i8* }

@TS_str_reasons = internal constant [40 x %struct.ERR_string_data_st] [%struct.ERR_string_data_st { i64 394264708, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264709, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264713, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264714, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264676, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264703, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264691, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264710, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264692, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264715, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264677, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264678, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264693, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264679, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264680, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264681, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264682, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264683, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264694, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264695, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264705, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264684, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264696, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264697, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264685, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264686, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264698, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264706, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264707, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264687, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264688, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264699, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264700, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264701, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264702, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264689, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264711, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264712, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 394264690, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i32 0, i32 0) }, %struct.ERR_string_data_st zeroinitializer], align 16
@.str = private unnamed_addr constant [15 x i8] c"bad pkcs7 type\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"bad type\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"cannot load certificate\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"cannot load private key\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"certificate verify error\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"could not set engine\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"could not set time\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"detached content\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"ess add signing cert error\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"ess add signing cert v2 error\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"ess signing certificate error\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"invalid null pointer\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"invalid signer certificate purpose\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"message imprint mismatch\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"nonce mismatch\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"nonce not returned\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"no content\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"no time stamp token\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"pkcs7 add signature error\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"pkcs7 add signed attr error\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"pkcs7 to ts tst info failed\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"policy mismatch\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"private key does not match certificate\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"response setup error\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"signature failure\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"there must be one signer\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"time syscall error\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"token not present\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"token present\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"tsa name mismatch\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"tsa untrusted\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"tst info setup error\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"ts datasign\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"unacceptable policy\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"unsupported md algorithm\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"unsupported version\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"var bad value\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"cannot find config variable\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"wrong content type\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_err_load_TS_strings() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ERR_reason_error_string(i64 noundef 394264708) #2
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ERR_load_strings_const(%struct.ERR_string_data_st* noundef getelementptr inbounds ([40 x %struct.ERR_string_data_st], [40 x %struct.ERR_string_data_st]* @TS_str_reasons, i64 0, i64 0)) #2
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
