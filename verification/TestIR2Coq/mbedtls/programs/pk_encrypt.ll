; ModuleID = 'pkey/pk_encrypt.c'
source_filename = "pkey/pk_encrypt.c"
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

@.str = private unnamed_addr constant [19 x i8] c"mbedtls_pk_encrypt\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"usage: mbedtls_pk_encrypt <key_file> <string of max 100 characters>\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"\0A  . Seeding the random number generator...\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [52 x i8] c" failed\0A  ! mbedtls_ctr_drbg_seed returned -0x%04x\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"\0A  . Reading public key from '%s'\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c" failed\0A  ! mbedtls_pk_parse_public_keyfile returned -0x%04x\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c" Input data larger than 100 characters.\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"\0A  . Generating the encrypted value\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c" failed\0A  ! mbedtls_pk_encrypt returned -0x%04x\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"result-enc.txt\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"wb+\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c" failed\0A  ! Could not create %s\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"%02X%s\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"\0A  . Done (created \22%s\22)\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"  !  Last error was: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %ret = alloca i32, align 4
  %exit_code = alloca i32, align 4
  %i = alloca i64, align 8
  %olen = alloca i64, align 8
  %pk = alloca %struct.mbedtls_pk_context, align 8
  %entropy = alloca %struct.mbedtls_entropy_context, align 8
  %ctr_drbg = alloca %struct.mbedtls_ctr_drbg_context, align 8
  %input = alloca [1024 x i8], align 16
  %buf = alloca [512 x i8], align 16
  %pers = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %ret, align 4
  store i32 1, i32* %exit_code, align 4
  store i64 0, i64* %olen, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %pers, align 8
  call void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #5
  call void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef %entropy) #5
  call void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef %pk) #5
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0)) #5
  br label %exit

if.end:                                           ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0)) #5
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* noundef %1) #5
  %2 = bitcast %struct.mbedtls_entropy_context* %entropy to i8*
  %3 = load i8*, i8** %pers, align 8
  %4 = load i8*, i8** %pers, align 8
  %call3 = call i64 @strlen(i8* noundef %4) #6
  %call4 = call i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg, i32 (i8*, i8*, i64)* noundef @mbedtls_entropy_func, i8* noundef %2, i8* noundef %3, i64 noundef %call3) #5
  store i32 %call4, i32* %ret, align 4
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %5 = load i32, i32* %ret, align 4
  %sub = sub nsw i32 0, %5
  %call7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 noundef %sub) #5
  br label %exit

if.end8:                                          ; preds = %if.end
  %6 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 1
  %7 = load i8*, i8** %arrayidx, align 8
  %call9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* noundef %7) #5
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call10 = call i32 @fflush(%struct._IO_FILE* noundef %8) #5
  %9 = load i8**, i8*** %argv.addr, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %9, i64 1
  %10 = load i8*, i8** %arrayidx11, align 8
  %call12 = call i32 @mbedtls_pk_parse_public_keyfile(%struct.mbedtls_pk_context* noundef %pk, i8* noundef %10) #5
  store i32 %call12, i32* %ret, align 4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end8
  %11 = load i32, i32* %ret, align 4
  %sub15 = sub nsw i32 0, %11
  %call16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i32 noundef %sub15) #5
  br label %exit

if.end17:                                         ; preds = %if.end8
  %12 = load i8**, i8*** %argv.addr, align 8
  %arrayidx18 = getelementptr inbounds i8*, i8** %12, i64 2
  %13 = load i8*, i8** %arrayidx18, align 8
  %call19 = call i64 @strlen(i8* noundef %13) #6
  %cmp20 = icmp ugt i64 %call19, 100
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end17
  %call22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0)) #5
  br label %exit

if.end23:                                         ; preds = %if.end17
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i64 0, i64 0
  %14 = load i8**, i8*** %argv.addr, align 8
  %arrayidx24 = getelementptr inbounds i8*, i8** %14, i64 2
  %15 = load i8*, i8** %arrayidx24, align 8
  %16 = load i8**, i8*** %argv.addr, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %16, i64 2
  %17 = load i8*, i8** %arrayidx25, align 8
  %call26 = call i64 @strlen(i8* noundef %17) #6
  %call27 = call i8* @memcpy(i8* noundef %arraydecay, i8* noundef %15, i64 noundef %call26) #7
  %call28 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0)) #5
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call29 = call i32 @fflush(%struct._IO_FILE* noundef %18) #5
  %arraydecay30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i64 0, i64 0
  %19 = load i8**, i8*** %argv.addr, align 8
  %arrayidx31 = getelementptr inbounds i8*, i8** %19, i64 2
  %20 = load i8*, i8** %arrayidx31, align 8
  %call32 = call i64 @strlen(i8* noundef %20) #6
  %arraydecay33 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i64 0, i64 0
  %21 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call34 = call i32 @mbedtls_pk_encrypt(%struct.mbedtls_pk_context* noundef %pk, i8* noundef %arraydecay30, i64 noundef %call32, i8* noundef %arraydecay33, i64* noundef %olen, i64 noundef 512, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %21) #5
  store i32 %call34, i32* %ret, align 4
  %cmp35 = icmp ne i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end23
  %22 = load i32, i32* %ret, align 4
  %sub37 = sub nsw i32 0, %22
  %call38 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i32 noundef %sub37) #5
  br label %exit

if.end39:                                         ; preds = %if.end23
  %call40 = call %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #5
  store %struct._IO_FILE* %call40, %struct._IO_FILE** %f, align 8
  %cmp41 = icmp eq %struct._IO_FILE* %call40, null
  br i1 %cmp41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end39
  %call43 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0)) #5
  store i32 1, i32* %ret, align 4
  br label %exit

if.end44:                                         ; preds = %if.end39
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end44
  %23 = load i64, i64* %i, align 8
  %24 = load i64, i64* %olen, align 8
  %cmp45 = icmp ult i64 %23, %24
  br i1 %cmp45, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %26 = load i64, i64* %i, align 8
  %arrayidx46 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i64 0, i64 %26
  %27 = load i8, i8* %arrayidx46, align 1
  %conv = zext i8 %27 to i32
  %28 = load i64, i64* %i, align 8
  %add = add i64 %28, 1
  %rem = urem i64 %add, 16
  %cmp47 = icmp eq i64 %rem, 0
  %29 = zext i1 %cmp47 to i64
  %cond = select i1 %cmp47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %25, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv, i8* noundef %cond) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i64, i64* %i, align 8
  %inc = add i64 %30, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call50 = call i32 @fclose(%struct._IO_FILE* noundef %31) #5
  %call51 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0)) #5
  store i32 0, i32* %exit_code, align 4
  br label %exit

exit:                                             ; preds = %for.end, %if.then42, %if.then36, %if.then21, %if.then14, %if.then6, %if.then
  call void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef %pk) #5
  call void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef %entropy) #5
  call void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #5
  %32 = load i32, i32* %exit_code, align 4
  %cmp52 = icmp ne i32 %32, 0
  br i1 %cmp52, label %if.then54, label %if.end58

if.then54:                                        ; preds = %exit
  %33 = load i32, i32* %ret, align 4
  %arraydecay55 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %33, i8* noundef %arraydecay55, i64 noundef 512) #5
  %arraydecay56 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i64 0, i64 0
  %call57 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i8* noundef %arraydecay56) #5
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %exit
  %34 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %34) #8
  unreachable
}

declare dso_local void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef) #1

declare dso_local void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef) #1

declare dso_local void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_entropy_func(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local i32 @mbedtls_pk_parse_public_keyfile(%struct.mbedtls_pk_context* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #3

declare dso_local i32 @mbedtls_pk_encrypt(%struct.mbedtls_pk_context* noundef, i8* noundef, i64 noundef, i8* noundef, i64* noundef, i64 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_random(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

declare dso_local void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef) #1

declare dso_local void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef) #1

declare dso_local void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef) #1

declare dso_local void @mbedtls_strerror(i32 noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin noreturn nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
