; ModuleID = 'crypto/dso/dso_err.c'
source_filename = "crypto/dso/dso_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ERR_string_data_st = type { i64, i8* }

@DSO_str_reasons = internal constant [17 x %struct.ERR_string_data_st] [%struct.ERR_string_data_st { i64 310378596, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 310378606, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 310378609, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 310378610, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 310378597, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 310378598, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 310378611, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 310378599, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 310378605, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 310378607, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 310378600, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 310378608, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 310378601, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 310378602, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 310378603, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 310378604, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i32 0, i32 0) }, %struct.ERR_string_data_st zeroinitializer], align 16
@.str = private unnamed_addr constant [23 x i8] c"control command failed\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"dso already loaded\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"empty file structure\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"failure\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"filename too big\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"cleanup method function failed\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"incorrect file syntax\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"could not load the shared library\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"name translation failed\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"no filename\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"a null shared library handle was used\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"set filename failed\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"the meth_data stack is corrupt\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"could not bind to the requested symbol name\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"could not unload the shared library\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"functionality not supported\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_err_load_DSO_strings() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ERR_reason_error_string(i64 noundef 310378596) #2
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ERR_load_strings_const(%struct.ERR_string_data_st* noundef getelementptr inbounds ([17 x %struct.ERR_string_data_st], [17 x %struct.ERR_string_data_st]* @DSO_str_reasons, i64 0, i64 0)) #2
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
