; ModuleID = 'crypto/pkcs7/pkcs7err.c'
source_filename = "crypto/pkcs7/pkcs7err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ERR_string_data_st = type { i64, i8* }

@PKCS7_str_reasons = internal constant [39 x %struct.ERR_string_data_st] [%struct.ERR_string_data_st { i64 276824181, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824208, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824180, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824182, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824216, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824183, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824165, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824213, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824214, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824184, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824185, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824207, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824219, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824186, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824215, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824218, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824179, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824187, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824206, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824168, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824188, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824217, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824209, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824191, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824169, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824192, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824211, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824212, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824193, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824170, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824171, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824172, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824173, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824174, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824175, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824176, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824177, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 276824178, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i32 0, i32 0) }, %struct.ERR_string_data_st zeroinitializer], align 16
@.str = private unnamed_addr constant [25 x i8] c"certificate verify error\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"cipher has no object identifier\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"cipher not initialized\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"content and data present\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"ctrl error\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"decrypt error\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"digest failure\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"encryption ctrl failure\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"encryption not supported for this key type\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"error adding recipient\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"error setting cipher\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"invalid null pointer\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"invalid signed data type\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"no content\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"no default digest\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"no matching digest type found\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"no recipient matches certificate\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"no signatures on data\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"no signers\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"operation not supported on this type\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"pkcs7 add signature error\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"pkcs7 add signer error\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"pkcs7 datasign\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"private key does not match certificate\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"signature failure\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"signer certificate not found\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"signing ctrl failure\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"signing not supported for this key type\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"smime text error\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"unable to find certificate\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"unable to find mem bio\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"unable to find message digest\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"unknown digest type\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"unknown operation\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"unsupported cipher type\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"unsupported content type\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"wrong content type\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"wrong pkcs7 type\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_err_load_PKCS7_strings() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ERR_reason_error_string(i64 noundef 276824181) #2
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ERR_load_strings_const(%struct.ERR_string_data_st* noundef getelementptr inbounds ([39 x %struct.ERR_string_data_st], [39 x %struct.ERR_string_data_st]* @PKCS7_str_reasons, i64 0, i64 0)) #2
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
