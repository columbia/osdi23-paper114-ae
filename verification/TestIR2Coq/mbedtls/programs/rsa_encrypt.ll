; ModuleID = 'pkey/rsa_encrypt.c'
source_filename = "pkey/rsa_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.mbedtls_rsa_context = type { i32, i64, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, i32, i32 }
%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.mbedtls_entropy_context = type { i32, %struct.mbedtls_sha512_context, i32, [20 x %struct.mbedtls_entropy_source_state] }
%struct.mbedtls_sha512_context = type { [2 x i64], [8 x i64], [128 x i8], i32 }
%struct.mbedtls_entropy_source_state = type { i32 (i8*, i8*, i64, i64*)*, i8*, i64, i64, i32 }
%struct.mbedtls_ctr_drbg_context = type { [16 x i8], i32, i32, i64, i32, %struct.mbedtls_aes_context, i32 (i8*, i8*, i64)*, i8* }
%struct.mbedtls_aes_context = type { i32, i32*, [68 x i32] }

@.str = private unnamed_addr constant [12 x i8] c"rsa_encrypt\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"usage: rsa_encrypt <string of max 100 characters>\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"\0A  . Seeding the random number generator...\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [47 x i8] c" failed\0A  ! mbedtls_ctr_drbg_seed returned %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"\0A  . Reading public key from rsa_pub.txt\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"rsa_pub.txt\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.7 = private unnamed_addr constant [73 x i8] c" failed\0A  ! Could not open rsa_pub.txt\0A  ! Please run rsa_genkey first\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c" failed\0A  ! mbedtls_mpi_read_file returned %d\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c" failed\0A  ! mbedtls_rsa_import returned %d\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c" Input data larger than 100 characters.\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"\0A  . Generating the RSA encrypted value\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c" failed\0A  ! mbedtls_rsa_pkcs1_encrypt returned %d\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"result-enc.txt\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"wb+\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c" failed\0A  ! Could not create %s\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"%02X%s\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"\0A  . Done (created \22%s\22)\0A\0A\00", align 1

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
  %rsa = alloca %struct.mbedtls_rsa_context, align 8
  %entropy = alloca %struct.mbedtls_entropy_context, align 8
  %ctr_drbg = alloca %struct.mbedtls_ctr_drbg_context, align 8
  %input = alloca [1024 x i8], align 16
  %buf = alloca [512 x i8], align 16
  %pers = alloca i8*, align 8
  %N = alloca %struct.mbedtls_mpi, align 8
  %E = alloca %struct.mbedtls_mpi, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %ret, align 4
  store i32 1, i32* %exit_code, align 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %pers, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0)) #5
  %1 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %1) #6
  unreachable

if.end:                                           ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0)) #5
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* noundef %2) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %N) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %E) #5
  call void @mbedtls_rsa_init(%struct.mbedtls_rsa_context* noundef %rsa) #5
  call void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #5
  call void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef %entropy) #5
  %3 = bitcast %struct.mbedtls_entropy_context* %entropy to i8*
  %4 = load i8*, i8** %pers, align 8
  %5 = load i8*, i8** %pers, align 8
  %call3 = call i64 @strlen(i8* noundef %5) #7
  %call4 = call i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg, i32 (i8*, i8*, i64)* noundef @mbedtls_entropy_func, i8* noundef %3, i8* noundef %4, i64 noundef %call3) #5
  store i32 %call4, i32* %ret, align 4
  %6 = load i32, i32* %ret, align 4
  %cmp5 = icmp ne i32 %6, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %7 = load i32, i32* %ret, align 4
  %call7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 noundef %7) #5
  br label %exit

if.end8:                                          ; preds = %if.end
  %call9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0)) #5
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call10 = call i32 @fflush(%struct._IO_FILE* noundef %8) #5
  %call11 = call %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)) #5
  store %struct._IO_FILE* %call11, %struct._IO_FILE** %f, align 8
  %cmp12 = icmp eq %struct._IO_FILE* %call11, null
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end8
  %call14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.7, i64 0, i64 0)) #5
  br label %exit

if.end15:                                         ; preds = %if.end8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call16 = call i32 @mbedtls_mpi_read_file(%struct.mbedtls_mpi* noundef %N, i32 noundef 16, %struct._IO_FILE* noundef %9) #5
  store i32 %call16, i32* %ret, align 4
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end15
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call18 = call i32 @mbedtls_mpi_read_file(%struct.mbedtls_mpi* noundef %E, i32 noundef 16, %struct._IO_FILE* noundef %10) #5
  store i32 %call18, i32* %ret, align 4
  %cmp19 = icmp ne i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.end23

if.then20:                                        ; preds = %lor.lhs.false, %if.end15
  %11 = load i32, i32* %ret, align 4
  %call21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i32 noundef %11) #5
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call22 = call i32 @fclose(%struct._IO_FILE* noundef %12) #5
  br label %exit

if.end23:                                         ; preds = %lor.lhs.false
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call24 = call i32 @fclose(%struct._IO_FILE* noundef %13) #5
  %call25 = call i32 @mbedtls_rsa_import(%struct.mbedtls_rsa_context* noundef %rsa, %struct.mbedtls_mpi* noundef %N, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef %E) #5
  store i32 %call25, i32* %ret, align 4
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end23
  %14 = load i32, i32* %ret, align 4
  %call28 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 noundef %14) #5
  br label %exit

if.end29:                                         ; preds = %if.end23
  %15 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %15, i64 1
  %16 = load i8*, i8** %arrayidx, align 8
  %call30 = call i64 @strlen(i8* noundef %16) #7
  %cmp31 = icmp ugt i64 %call30, 100
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end29
  %call33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0)) #5
  br label %exit

if.end34:                                         ; preds = %if.end29
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i64 0, i64 0
  %17 = load i8**, i8*** %argv.addr, align 8
  %arrayidx35 = getelementptr inbounds i8*, i8** %17, i64 1
  %18 = load i8*, i8** %arrayidx35, align 8
  %19 = load i8**, i8*** %argv.addr, align 8
  %arrayidx36 = getelementptr inbounds i8*, i8** %19, i64 1
  %20 = load i8*, i8** %arrayidx36, align 8
  %call37 = call i64 @strlen(i8* noundef %20) #7
  %call38 = call i8* @memcpy(i8* noundef %arraydecay, i8* noundef %18, i64 noundef %call37) #8
  %call39 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0)) #5
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call40 = call i32 @fflush(%struct._IO_FILE* noundef %21) #5
  %22 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %23 = load i8**, i8*** %argv.addr, align 8
  %arrayidx41 = getelementptr inbounds i8*, i8** %23, i64 1
  %24 = load i8*, i8** %arrayidx41, align 8
  %call42 = call i64 @strlen(i8* noundef %24) #7
  %arraydecay43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i64 0, i64 0
  %arraydecay44 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i64 0, i64 0
  %call45 = call i32 @mbedtls_rsa_pkcs1_encrypt(%struct.mbedtls_rsa_context* noundef %rsa, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %22, i64 noundef %call42, i8* noundef %arraydecay43, i8* noundef %arraydecay44) #5
  store i32 %call45, i32* %ret, align 4
  %25 = load i32, i32* %ret, align 4
  %cmp46 = icmp ne i32 %25, 0
  br i1 %cmp46, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end34
  %26 = load i32, i32* %ret, align 4
  %call48 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i64 0, i64 0), i32 noundef %26) #5
  br label %exit

if.end49:                                         ; preds = %if.end34
  %call50 = call %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0)) #5
  store %struct._IO_FILE* %call50, %struct._IO_FILE** %f, align 8
  %cmp51 = icmp eq %struct._IO_FILE* %call50, null
  br i1 %cmp51, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.end49
  %call53 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0)) #5
  br label %exit

if.end54:                                         ; preds = %if.end49
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end54
  %27 = load i64, i64* %i, align 8
  %private_len = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %rsa, i32 0, i32 1
  %28 = load i64, i64* %private_len, align 8
  %cmp55 = icmp ult i64 %27, %28
  br i1 %cmp55, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %30 = load i64, i64* %i, align 8
  %arrayidx56 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i64 0, i64 %30
  %31 = load i8, i8* %arrayidx56, align 1
  %conv = zext i8 %31 to i32
  %32 = load i64, i64* %i, align 8
  %add = add i64 %32, 1
  %rem = urem i64 %add, 16
  %cmp57 = icmp eq i64 %rem, 0
  %33 = zext i1 %cmp57 to i64
  %cond = select i1 %cmp57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv, i8* noundef %cond) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i64, i64* %i, align 8
  %inc = add i64 %34, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call60 = call i32 @fclose(%struct._IO_FILE* noundef %35) #5
  %call61 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0)) #5
  store i32 0, i32* %exit_code, align 4
  br label %exit

exit:                                             ; preds = %for.end, %if.then52, %if.then47, %if.then32, %if.then27, %if.then20, %if.then13, %if.then6
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %N) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %E) #5
  call void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #5
  call void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef %entropy) #5
  call void @mbedtls_rsa_free(%struct.mbedtls_rsa_context* noundef %rsa) #5
  %36 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %36) #6
  unreachable
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

declare dso_local void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef) #1

declare dso_local void @mbedtls_rsa_init(%struct.mbedtls_rsa_context* noundef) #1

declare dso_local void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef) #1

declare dso_local void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_entropy_func(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

declare dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_mpi_read_file(%struct.mbedtls_mpi* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

declare dso_local i32 @mbedtls_rsa_import(%struct.mbedtls_rsa_context* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #4

declare dso_local i32 @mbedtls_rsa_pkcs1_encrypt(%struct.mbedtls_rsa_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_random(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef) #1

declare dso_local void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef) #1

declare dso_local void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef) #1

declare dso_local void @mbedtls_rsa_free(%struct.mbedtls_rsa_context* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #8 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
