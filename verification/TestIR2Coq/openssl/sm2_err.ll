; ModuleID = 'crypto/sm2/sm2_err.c'
source_filename = "crypto/sm2/sm2_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ERR_string_data_st = type { i64, i8* }

@SM2_str_reasons = internal constant [15 x %struct.ERR_string_data_st] [%struct.ERR_string_data_st { i64 444596324, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 444596325, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 444596331, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 444596334, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 444596336, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 444596335, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 444596332, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 444596326, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 444596327, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 444596328, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 444596329, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 444596337, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 444596333, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 444596330, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0) }, %struct.ERR_string_data_st zeroinitializer], align 16
@.str = private unnamed_addr constant [11 x i8] c"asn1 error\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"bad signature\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"buffer too small\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"dist id too large\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"id not set\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"id too large\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"invalid curve\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"invalid digest\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"invalid digest type\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"invalid encoding\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"invalid field\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"invalid private key\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"no parameters set\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"user id too large\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_err_load_SM2_strings() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ERR_reason_error_string(i64 noundef 444596324) #2
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ERR_load_strings_const(%struct.ERR_string_data_st* noundef getelementptr inbounds ([15 x %struct.ERR_string_data_st], [15 x %struct.ERR_string_data_st]* @SM2_str_reasons, i64 0, i64 0)) #2
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
