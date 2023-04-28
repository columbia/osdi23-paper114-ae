; ModuleID = 'crypto/store/store_err.c'
source_filename = "crypto/store/store_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ERR_string_data_st = type { i64, i8* }

@OSSL_STORE_str_reasons = internal constant [25 x %struct.ERR_string_data_st] [%struct.ERR_string_data_st { i64 369098859, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 369098867, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 369098865, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 369098873, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 369098858, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 369098864, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 369098868, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 369098869, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 369098852, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 369098853, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 369098855, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 369098854, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 369098874, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 369098856, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 369098875, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 369098866, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 369098860, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 369098871, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 369098861, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 369098857, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 369098862, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 369098870, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 369098872, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 369098863, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i32 0, i32 0) }, %struct.ERR_string_data_st zeroinitializer], align 16
@.str = private unnamed_addr constant [23 x i8] c"ambiguous content type\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"bad password read\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"error verifying pkcs12 mac\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"fingerprint size does not match digest\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"invalid scheme\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"is not a\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"loader incomplete\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"loading started\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"not a certificate\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"not a crl\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"not a name\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"not a private key\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"not a public key\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"not parameters\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"no loaders found\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"passphrase callback error\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"path must be absolute\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"search only supported for directories\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"ui process interrupted or cancelled\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"unregistered scheme\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"unsupported content type\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"unsupported operation\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"unsupported search type\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"uri authority unsupported\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_err_load_OSSL_STORE_strings() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ERR_reason_error_string(i64 noundef 369098859) #2
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ERR_load_strings_const(%struct.ERR_string_data_st* noundef getelementptr inbounds ([25 x %struct.ERR_string_data_st], [25 x %struct.ERR_string_data_st]* @OSSL_STORE_str_reasons, i64 0, i64 0)) #2
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
