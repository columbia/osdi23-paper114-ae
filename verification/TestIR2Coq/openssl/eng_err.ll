; ModuleID = 'crypto/engine/eng_err.c'
source_filename = "crypto/engine/eng_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ERR_string_data_st = type { i64, i8* }

@ENGINE_str_reasons = internal constant [36 x %struct.ERR_string_data_st] [%struct.ERR_string_data_st { i64 318767204, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 318767237, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 318767238, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 318767239, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 318767240, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 318767207, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 318767223, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 318767208, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 318767236, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 318767252, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 318767206, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 318767209, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 318767253, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 318767232, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 318767233, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 318767210, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 318767212, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 318767213, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 318767214, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 318767247, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 318767241, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 318767242, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 318767255, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 318767254, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 318767221, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 318767216, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 318767224, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 318767248, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 318767229, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 318767234, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 318767220, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 318767250, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 318767251, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 318767205, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 318767249, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i32 0, i32 0) }, %struct.ERR_string_data_st zeroinitializer], align 16
@.str = private unnamed_addr constant [15 x i8] c"already loaded\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"argument is not a number\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"cmd not executable\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"command takes input\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"command takes no input\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"conflicting engine id\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"ctrl command not implemented\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"DSO failure\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"dso not found\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"engines section error\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"engine configuration error\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"engine is not in the list\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"engine section error\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"failed loading private key\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"failed loading public key\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"finish failed\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"'id' or 'name' missing\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"init failed\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"internal list error\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"invalid argument\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"invalid cmd name\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"invalid cmd number\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"invalid init value\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"invalid string\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"not initialised\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"not loaded\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"no control function\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"no index\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"no load function\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"no reference\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"no such engine\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"unimplemented cipher\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"unimplemented digest\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"unimplemented public key method\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"version incompatibility\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_err_load_ENGINE_strings() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ERR_reason_error_string(i64 noundef 318767204) #2
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ERR_load_strings_const(%struct.ERR_string_data_st* noundef getelementptr inbounds ([36 x %struct.ERR_string_data_st], [36 x %struct.ERR_string_data_st]* @ENGINE_str_reasons, i64 0, i64 0)) #2
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
