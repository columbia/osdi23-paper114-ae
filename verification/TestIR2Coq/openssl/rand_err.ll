; ModuleID = 'crypto/rand/rand_err.c'
source_filename = "crypto/rand/rand_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ERR_string_data_st = type { i64, i8* }

@RAND_str_reasons = internal constant [44 x %struct.ERR_string_data_st] [%struct.ERR_string_data_st { i64 301989990, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301989991, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301989993, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301990009, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301990017, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301989992, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301989994, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301990012, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301990015, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301989995, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301989996, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301989997, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301989998, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301989999, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301990014, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301989989, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301990011, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301990000, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301990027, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301990001, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301990002, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301990010, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301990003, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301990016, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301990018, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301990019, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301990004, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.26, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301990021, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.27, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301989988, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301990013, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301990022, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301990005, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301990006, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301990007, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301990023, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301990024, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301990031, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301990032, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301990029, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.38, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301990026, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.39, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301990028, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301990020, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 301990008, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0) }, %struct.ERR_string_data_st zeroinitializer], align 16
@.str = private unnamed_addr constant [26 x i8] c"additional input too long\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"already instantiated\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"argument out of range\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Cannot open file\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"drbg already initialized\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"drbg not initialised\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"entropy input too long\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"entropy out of range\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"error entropy pool was ignored\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"error initialising drbg\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"error instantiating drbg\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"error retrieving additional input\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"error retrieving entropy\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"error retrieving nonce\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"failed to create lock\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Function not implemented\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"Error writing file\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"generate error\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"insufficient drbg strength\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"internal error\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"in error state\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"Not a regular file\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"not instantiated\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"no drbg implementation selected\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"parent locking not enabled\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"parent strength too weak\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"personalisation string too long\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"prediction resistance not supported\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"PRNG not seeded\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"random pool overflow\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"random pool underflow\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"request too large for drbg\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"reseed error\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"selftest failure\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"too little nonce requested\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"too much nonce requested\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"unable to create drbg\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"unable to fetch drbg\00", align 1
@.str.38 = private unnamed_addr constant [41 x i8] c"unable to get parent reseed prop counter\00", align 1
@.str.39 = private unnamed_addr constant [30 x i8] c"unable to get parent strength\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"unable to lock parent\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"unsupported drbg flags\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"unsupported drbg type\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_err_load_RAND_strings() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ERR_reason_error_string(i64 noundef 301989990) #2
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ERR_load_strings_const(%struct.ERR_string_data_st* noundef getelementptr inbounds ([44 x %struct.ERR_string_data_st], [44 x %struct.ERR_string_data_st]* @RAND_str_reasons, i64 0, i64 0)) #2
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
