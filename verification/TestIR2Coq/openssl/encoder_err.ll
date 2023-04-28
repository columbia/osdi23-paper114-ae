; ModuleID = 'crypto/encode_decode/encoder_err.c'
source_filename = "crypto/encode_decode/encoder_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ERR_string_data_st = type { i64, i8* }

@OSSL_ENCODER_str_reasons = internal constant [4 x %struct.ERR_string_data_st] [%struct.ERR_string_data_st { i64 494927973, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 494927972, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 494927974, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0) }, %struct.ERR_string_data_st zeroinitializer], align 16
@.str = private unnamed_addr constant [18 x i8] c"encoder not found\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"incorrect property query\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"missing get params\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_err_load_OSSL_ENCODER_strings() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ERR_reason_error_string(i64 noundef 494927973) #2
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ERR_load_strings_const(%struct.ERR_string_data_st* noundef getelementptr inbounds ([4 x %struct.ERR_string_data_st], [4 x %struct.ERR_string_data_st]* @OSSL_ENCODER_str_reasons, i64 0, i64 0)) #2
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
