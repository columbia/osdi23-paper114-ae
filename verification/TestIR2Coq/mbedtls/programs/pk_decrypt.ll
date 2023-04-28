; ModuleID = 'pkey/pk_decrypt.c'
source_filename = "pkey/pk_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.mbedtls_pk_context = type { %struct.mbedtls_pk_info_t*, i8* }
%struct.mbedtls_pk_info_t = type opaque
%struct.mbedtls_entropy_context = type { i32, %struct.mbedtls_sha512_context, i32, [20 x %struct.mbedtls_entropy_source_state] }
%struct.mbedtls_sha512_context = type { [2 x i64], [8 x i64], [128 x i8], i32 }
%struct.mbedtls_entropy_source_state = type { i32 (i8*, i8*, i64, i64*)*, i8*, i64, i64, i32 }
%struct.mbedtls_ctr_drbg_context = type { [16 x i8], i32, i32, i64, i32, %struct.mbedtls_aes_context, i32 (i8*, i8*, i64)*, i8* }
%struct.mbedtls_aes_context = type { i32, i32*, [68 x i32] }

@.str = private unnamed_addr constant [19 x i8] c"mbedtls_pk_decrypt\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"usage: mbedtls_pk_decrypt <key_file>\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"\0A  . Seeding the random number generator...\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [52 x i8] c" failed\0A  ! mbedtls_ctr_drbg_seed returned -0x%04x\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"\0A  . Reading private key from '%s'\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [55 x i8] c" failed\0A  ! mbedtls_pk_parse_keyfile returned -0x%04x\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"result-enc.txt\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"\0A  ! Could not open %s\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"\0A  . Decrypting the encrypted data\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c" failed\0A  ! mbedtls_pk_decrypt returned -0x%04x\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"\0A  . OK\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"The decrypted result is: '%s'\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"  !  Last error was: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %ret = alloca i32, align 4
  %c = alloca i32, align 4
  %exit_code = alloca i32, align 4
  %i = alloca i64, align 8
  %olen = alloca i64, align 8
  %pk = alloca %struct.mbedtls_pk_context, align 8
  %entropy = alloca %struct.mbedtls_entropy_context, align 8
  %ctr_drbg = alloca %struct.mbedtls_ctr_drbg_context, align 8
  %result = alloca [1024 x i8], align 16
  %buf = alloca [512 x i8], align 16
  %pers = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %ret, align 4
  store i32 1, i32* %exit_code, align 4
  store i64 0, i64* %olen, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %pers, align 8
  %0 = load i8**, i8*** %argv.addr, align 8
  call void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef %pk) #5
  call void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef %entropy) #5
  call void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #5
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %result, i64 0, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 1024) #6
  %1 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0)) #5
  br label %exit

if.end:                                           ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0)) #5
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call3 = call i32 @fflush(%struct._IO_FILE* noundef %2) #5
  %3 = bitcast %struct.mbedtls_entropy_context* %entropy to i8*
  %4 = load i8*, i8** %pers, align 8
  %5 = load i8*, i8** %pers, align 8
  %call4 = call i64 @strlen(i8* noundef %5) #7
  %call5 = call i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg, i32 (i8*, i8*, i64)* noundef @mbedtls_entropy_func, i8* noundef %3, i8* noundef %4, i64 noundef %call4) #5
  store i32 %call5, i32* %ret, align 4
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %6 = load i32, i32* %ret, align 4
  %sub = sub nsw i32 0, %6
  %call8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 noundef %sub) #5
  br label %exit

if.end9:                                          ; preds = %if.end
  %7 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 1
  %8 = load i8*, i8** %arrayidx, align 8
  %call10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* noundef %8) #5
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call11 = call i32 @fflush(%struct._IO_FILE* noundef %9) #5
  %10 = load i8**, i8*** %argv.addr, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %10, i64 1
  %11 = load i8*, i8** %arrayidx12, align 8
  %12 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call13 = call i32 @mbedtls_pk_parse_keyfile(%struct.mbedtls_pk_context* noundef %pk, i8* noundef %11, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %12) #5
  store i32 %call13, i32* %ret, align 4
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end9
  %13 = load i32, i32* %ret, align 4
  %sub16 = sub nsw i32 0, %13
  %call17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i32 noundef %sub16) #5
  br label %exit

if.end18:                                         ; preds = %if.end9
  %call19 = call %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)) #5
  store %struct._IO_FILE* %call19, %struct._IO_FILE** %f, align 8
  %cmp20 = icmp eq %struct._IO_FILE* %call19, null
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end18
  %call22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0)) #5
  store i32 1, i32* %ret, align 4
  br label %exit

if.end23:                                         ; preds = %if.end18
  store i64 0, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end23
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* noundef %c) #5
  %cmp25 = icmp sgt i32 %call24, 0
  br i1 %cmp25, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %15 = load i64, i64* %i, align 8
  %cmp26 = icmp ult i64 %15, 512
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %16 = phi i1 [ false, %while.cond ], [ %cmp26, %land.rhs ]
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %17 = load i32, i32* %c, align 4
  %conv = trunc i32 %17 to i8
  %18 = load i64, i64* %i, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %i, align 8
  %arrayidx27 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i64 0, i64 %18
  store i8 %conv, i8* %arrayidx27, align 1
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %land.end
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call28 = call i32 @fclose(%struct._IO_FILE* noundef %19) #5
  %call29 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0)) #5
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call30 = call i32 @fflush(%struct._IO_FILE* noundef %20) #5
  %arraydecay31 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i64 0, i64 0
  %21 = load i64, i64* %i, align 8
  %arraydecay32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %result, i64 0, i64 0
  %22 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call33 = call i32 @mbedtls_pk_decrypt(%struct.mbedtls_pk_context* noundef %pk, i8* noundef %arraydecay31, i64 noundef %21, i8* noundef %arraydecay32, i64* noundef %olen, i64 noundef 1024, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %22) #5
  store i32 %call33, i32* %ret, align 4
  %cmp34 = icmp ne i32 %call33, 0
  br i1 %cmp34, label %if.then36, label %if.end39

if.then36:                                        ; preds = %while.end
  %23 = load i32, i32* %ret, align 4
  %sub37 = sub nsw i32 0, %23
  %call38 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0), i32 noundef %sub37) #5
  br label %exit

if.end39:                                         ; preds = %while.end
  %call40 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0)) #5
  %arraydecay41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %result, i64 0, i64 0
  %call42 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i8* noundef %arraydecay41) #5
  store i32 0, i32* %exit_code, align 4
  br label %exit

exit:                                             ; preds = %if.end39, %if.then36, %if.then21, %if.then15, %if.then7, %if.then
  call void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef %pk) #5
  call void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef %entropy) #5
  call void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #5
  %24 = load i32, i32* %exit_code, align 4
  %cmp43 = icmp ne i32 %24, 0
  br i1 %cmp43, label %if.then45, label %if.end49

if.then45:                                        ; preds = %exit
  %25 = load i32, i32* %ret, align 4
  %arraydecay46 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %25, i8* noundef %arraydecay46, i64 noundef 512) #5
  %arraydecay47 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i64 0, i64 0
  %call48 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i8* noundef %arraydecay47) #5
  br label %if.end49

if.end49:                                         ; preds = %if.then45, %exit
  %26 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %26) #8
  unreachable
}

declare dso_local void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef) #1

declare dso_local void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef) #1

declare dso_local void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_entropy_func(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

declare dso_local i32 @mbedtls_pk_parse_keyfile(%struct.mbedtls_pk_context* noundef, i8* noundef, i8* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_random(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

declare dso_local i32 @mbedtls_pk_decrypt(%struct.mbedtls_pk_context* noundef, i8* noundef, i64 noundef, i8* noundef, i64* noundef, i64 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef) #1

declare dso_local void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef) #1

declare dso_local void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef) #1

declare dso_local void @mbedtls_strerror(i32 noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #8 = { nobuiltin noreturn nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
