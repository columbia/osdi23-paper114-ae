; ModuleID = 'pkey/dh_genprime.c'
source_filename = "pkey/dh_genprime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.mbedtls_entropy_context = type { i32, %struct.mbedtls_sha512_context, i32, [20 x %struct.mbedtls_entropy_source_state] }
%struct.mbedtls_sha512_context = type { [2 x i64], [8 x i64], [128 x i8], i32 }
%struct.mbedtls_entropy_source_state = type { i32 (i8*, i8*, i64, i64*)*, i8*, i64, i64, i32 }
%struct.mbedtls_ctr_drbg_context = type { [16 x i8], i32, i32, i64, i32, %struct.mbedtls_aes_context, i32 (i8*, i8*, i64)*, i8* }
%struct.mbedtls_aes_context = type { i32, i32*, [68 x i32] }

@.str = private unnamed_addr constant [12 x i8] c"dh_genprime\00", align 1
@.str.1 = private unnamed_addr constant [96 x i8] c"\0A usage: dh_genprime param=<>...\0A\0A acceprable parameters:\0A    bits=%%d           default: 2048\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"bits\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c" failed\0A  ! mbedtls_mpi_read_string returned %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"  ! Generating large primes may take minutes!\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"\0A  . Seeding the random number generator...\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [47 x i8] c" failed\0A  ! mbedtls_ctr_drbg_seed returned %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c" ok\0A  . Generating the modulus, please wait...\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c" failed\0A  ! mbedtls_mpi_gen_prime returned %d\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c" ok\0A  . Verifying that Q = (P-1)/2 is prime...\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c" failed\0A  ! mbedtls_mpi_sub_int returned %d\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c" failed\0A  ! mbedtls_mpi_div_int returned %d\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c" failed\0A  ! mbedtls_mpi_is_prime returned %d\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c" ok\0A  . Exporting the value in dh_prime.txt...\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"dh_prime.txt\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"wb+\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c" failed\0A  ! Could not create dh_prime.txt\0A\0A\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"P = \00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"G = \00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c" failed\0A  ! mbedtls_mpi_write_file returned %d\0A\0A\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c" ok\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ret = alloca i32, align 4
  %exit_code = alloca i32, align 4
  %G = alloca %struct.mbedtls_mpi, align 8
  %P = alloca %struct.mbedtls_mpi, align 8
  %Q = alloca %struct.mbedtls_mpi, align 8
  %entropy = alloca %struct.mbedtls_entropy_context, align 8
  %ctr_drbg = alloca %struct.mbedtls_ctr_drbg_context, align 8
  %pers = alloca i8*, align 8
  %fout = alloca %struct._IO_FILE*, align 8
  %nbits = alloca i32, align 4
  %i = alloca i32, align 4
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %ret, align 4
  store i32 1, i32* %exit_code, align 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %pers, align 8
  store i32 2048, i32* %nbits, align 4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %G) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %P) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %Q) #4
  call void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #4
  call void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef %entropy) #4
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %usage

usage:                                            ; preds = %if.else, %if.then12, %if.then4, %if.then
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i64 0, i64 0)) #4
  br label %exit

if.end:                                           ; preds = %entry
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8**, i8*** %argv.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  store i8* %5, i8** %p, align 8
  %6 = load i8*, i8** %p, align 8
  %call2 = call i8* @strchr(i8* noundef %6, i32 noundef 61) #5
  store i8* %call2, i8** %q, align 8
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %for.body
  br label %usage

if.end5:                                          ; preds = %for.body
  %7 = load i8*, i8** %q, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %q, align 8
  store i8 0, i8* %7, align 1
  %8 = load i8*, i8** %p, align 8
  %call6 = call i32 @strcmp(i8* noundef %8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #5
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end5
  %9 = load i8*, i8** %q, align 8
  %call9 = call i32 @atoi(i8* noundef %9) #5
  store i32 %call9, i32* %nbits, align 4
  %10 = load i32, i32* %nbits, align 4
  %cmp10 = icmp slt i32 %10, 0
  br i1 %cmp10, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then8
  %11 = load i32, i32* %nbits, align 4
  %cmp11 = icmp sgt i32 %11, 8192
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %lor.lhs.false, %if.then8
  br label %usage

if.end13:                                         ; preds = %lor.lhs.false
  br label %if.end14

if.else:                                          ; preds = %if.end5
  br label %usage

if.end14:                                         ; preds = %if.end13
  br label %for.inc

for.inc:                                          ; preds = %if.end14
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call15 = call i32 @mbedtls_mpi_read_string(%struct.mbedtls_mpi* noundef %G, i32 noundef 10, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #4
  store i32 %call15, i32* %ret, align 4
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %for.end
  %13 = load i32, i32* %ret, align 4
  %call18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 noundef %13) #4
  br label %exit

if.end19:                                         ; preds = %for.end
  %call20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0)) #4
  %call21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0)) #4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call22 = call i32 @fflush(%struct._IO_FILE* noundef %14) #4
  %15 = bitcast %struct.mbedtls_entropy_context* %entropy to i8*
  %16 = load i8*, i8** %pers, align 8
  %17 = load i8*, i8** %pers, align 8
  %call23 = call i64 @strlen(i8* noundef %17) #5
  %call24 = call i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg, i32 (i8*, i8*, i64)* noundef @mbedtls_entropy_func, i8* noundef %15, i8* noundef %16, i64 noundef %call23) #4
  store i32 %call24, i32* %ret, align 4
  %cmp25 = icmp ne i32 %call24, 0
  br i1 %cmp25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end19
  %18 = load i32, i32* %ret, align 4
  %call27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i32 noundef %18) #4
  br label %exit

if.end28:                                         ; preds = %if.end19
  %call29 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0)) #4
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call30 = call i32 @fflush(%struct._IO_FILE* noundef %19) #4
  %20 = load i32, i32* %nbits, align 4
  %conv = sext i32 %20 to i64
  %21 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call31 = call i32 @mbedtls_mpi_gen_prime(%struct.mbedtls_mpi* noundef %P, i64 noundef %conv, i32 noundef 1, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %21) #4
  store i32 %call31, i32* %ret, align 4
  %cmp32 = icmp ne i32 %call31, 0
  br i1 %cmp32, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end28
  %22 = load i32, i32* %ret, align 4
  %call35 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i32 noundef %22) #4
  br label %exit

if.end36:                                         ; preds = %if.end28
  %call37 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0)) #4
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call38 = call i32 @fflush(%struct._IO_FILE* noundef %23) #4
  %call39 = call i32 @mbedtls_mpi_sub_int(%struct.mbedtls_mpi* noundef %Q, %struct.mbedtls_mpi* noundef %P, i64 noundef 1) #4
  store i32 %call39, i32* %ret, align 4
  %cmp40 = icmp ne i32 %call39, 0
  br i1 %cmp40, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end36
  %24 = load i32, i32* %ret, align 4
  %call43 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0), i32 noundef %24) #4
  br label %exit

if.end44:                                         ; preds = %if.end36
  %call45 = call i32 @mbedtls_mpi_div_int(%struct.mbedtls_mpi* noundef %Q, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef %Q, i64 noundef 2) #4
  store i32 %call45, i32* %ret, align 4
  %cmp46 = icmp ne i32 %call45, 0
  br i1 %cmp46, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.end44
  %25 = load i32, i32* %ret, align 4
  %call49 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0), i32 noundef %25) #4
  br label %exit

if.end50:                                         ; preds = %if.end44
  %26 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call51 = call i32 @mbedtls_mpi_is_prime_ext(%struct.mbedtls_mpi* noundef %Q, i32 noundef 50, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %26) #4
  store i32 %call51, i32* %ret, align 4
  %cmp52 = icmp ne i32 %call51, 0
  br i1 %cmp52, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.end50
  %27 = load i32, i32* %ret, align 4
  %call55 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0), i32 noundef %27) #4
  br label %exit

if.end56:                                         ; preds = %if.end50
  %call57 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14, i64 0, i64 0)) #4
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call58 = call i32 @fflush(%struct._IO_FILE* noundef %28) #4
  %call59 = call %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0)) #4
  store %struct._IO_FILE* %call59, %struct._IO_FILE** %fout, align 8
  %cmp60 = icmp eq %struct._IO_FILE* %call59, null
  br i1 %cmp60, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.end56
  %call63 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i64 0, i64 0)) #4
  br label %exit

if.end64:                                         ; preds = %if.end56
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 8
  %call65 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), %struct.mbedtls_mpi* noundef %P, i32 noundef 16, %struct._IO_FILE* noundef %29) #4
  %cmp66 = icmp ne i32 %call65, 0
  %conv67 = zext i1 %cmp66 to i32
  store i32 %conv67, i32* %ret, align 4
  br i1 %cmp66, label %if.then72, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %if.end64
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 8
  %call69 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), %struct.mbedtls_mpi* noundef %G, i32 noundef 16, %struct._IO_FILE* noundef %30) #4
  %cmp70 = icmp ne i32 %call69, 0
  %conv71 = zext i1 %cmp70 to i32
  store i32 %conv71, i32* %ret, align 4
  br i1 %cmp70, label %if.then72, label %if.end75

if.then72:                                        ; preds = %lor.lhs.false68, %if.end64
  %31 = load i32, i32* %ret, align 4
  %call73 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.20, i64 0, i64 0), i32 noundef %31) #4
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 8
  %call74 = call i32 @fclose(%struct._IO_FILE* noundef %32) #4
  br label %exit

if.end75:                                         ; preds = %lor.lhs.false68
  %call76 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0)) #4
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 8
  %call77 = call i32 @fclose(%struct._IO_FILE* noundef %33) #4
  store i32 0, i32* %exit_code, align 4
  br label %exit

exit:                                             ; preds = %if.end75, %if.then72, %if.then62, %if.then54, %if.then48, %if.then42, %if.then34, %if.then26, %if.then17, %usage
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %G) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %P) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %Q) #4
  call void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #4
  call void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef %entropy) #4
  %34 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %34) #6
  unreachable
}

declare dso_local void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef) #1

declare dso_local void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef) #1

declare dso_local void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #2

declare dso_local i32 @mbedtls_mpi_read_string(%struct.mbedtls_mpi* noundef, i32 noundef, i8* noundef) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_entropy_func(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local i32 @mbedtls_mpi_gen_prime(%struct.mbedtls_mpi* noundef, i64 noundef, i32 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_random(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_mpi_sub_int(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_mpi_div_int(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_mpi_is_prime_ext(%struct.mbedtls_mpi* noundef, i32 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_mpi_write_file(i8* noundef, %struct.mbedtls_mpi* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

declare dso_local void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef) #1

declare dso_local void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef) #1

declare dso_local void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #6 = { nobuiltin noreturn nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
