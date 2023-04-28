; ModuleID = 'pkey/rsa_decrypt.c'
source_filename = "pkey/rsa_decrypt.c"
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

@.str = private unnamed_addr constant [12 x i8] c"rsa_decrypt\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"usage: rsa_decrypt\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"\0A  . Seeding the random number generator...\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [47 x i8] c" failed\0A  ! mbedtls_ctr_drbg_seed returned %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"\0A  . Reading private key from rsa_priv.txt\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"rsa_priv.txt\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.7 = private unnamed_addr constant [74 x i8] c" failed\0A  ! Could not open rsa_priv.txt\0A  ! Please run rsa_genkey first\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c" failed\0A  ! mbedtls_mpi_read_file returned %d\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c" failed\0A  ! mbedtls_rsa_import returned %d\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c" failed\0A  ! mbedtls_rsa_complete returned %d\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"result-enc.txt\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"\0A  ! Could not open %s\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"\0A  ! Invalid RSA signature format\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"\0A  . Decrypting the encrypted data\00", align 1
@.str.16 = private unnamed_addr constant [52 x i8] c" failed\0A  ! mbedtls_rsa_pkcs1_decrypt returned %d\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"\0A  . OK\0A\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"The decrypted result is: '%s'\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %ret = alloca i32, align 4
  %exit_code = alloca i32, align 4
  %c = alloca i32, align 4
  %i = alloca i64, align 8
  %rsa = alloca %struct.mbedtls_rsa_context, align 8
  %N = alloca %struct.mbedtls_mpi, align 8
  %P = alloca %struct.mbedtls_mpi, align 8
  %Q = alloca %struct.mbedtls_mpi, align 8
  %D = alloca %struct.mbedtls_mpi, align 8
  %E = alloca %struct.mbedtls_mpi, align 8
  %DP = alloca %struct.mbedtls_mpi, align 8
  %DQ = alloca %struct.mbedtls_mpi, align 8
  %QP = alloca %struct.mbedtls_mpi, align 8
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
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %pers, align 8
  %0 = load i8**, i8*** %argv.addr, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %result, i64 0, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 1024) #5
  %1 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0)) #6
  %2 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %2) #7
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0)) #6
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call3 = call i32 @fflush(%struct._IO_FILE* noundef %3) #6
  call void @mbedtls_rsa_init(%struct.mbedtls_rsa_context* noundef %rsa) #6
  call void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #6
  call void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef %entropy) #6
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %N) #6
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %P) #6
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %Q) #6
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %D) #6
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %E) #6
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %DP) #6
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %DQ) #6
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %QP) #6
  %4 = bitcast %struct.mbedtls_entropy_context* %entropy to i8*
  %5 = load i8*, i8** %pers, align 8
  %6 = load i8*, i8** %pers, align 8
  %call4 = call i64 @strlen(i8* noundef %6) #8
  %call5 = call i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg, i32 (i8*, i8*, i64)* noundef @mbedtls_entropy_func, i8* noundef %4, i8* noundef %5, i64 noundef %call4) #6
  store i32 %call5, i32* %ret, align 4
  %7 = load i32, i32* %ret, align 4
  %cmp6 = icmp ne i32 %7, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %8 = load i32, i32* %ret, align 4
  %call8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 noundef %8) #6
  br label %exit

if.end9:                                          ; preds = %if.end
  %call10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0)) #6
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call11 = call i32 @fflush(%struct._IO_FILE* noundef %9) #6
  %call12 = call %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)) #6
  store %struct._IO_FILE* %call12, %struct._IO_FILE** %f, align 8
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end9
  %call15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.7, i64 0, i64 0)) #6
  br label %exit

if.end16:                                         ; preds = %if.end9
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call17 = call i32 @mbedtls_mpi_read_file(%struct.mbedtls_mpi* noundef %N, i32 noundef 16, %struct._IO_FILE* noundef %10) #6
  store i32 %call17, i32* %ret, align 4
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end16
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call19 = call i32 @mbedtls_mpi_read_file(%struct.mbedtls_mpi* noundef %E, i32 noundef 16, %struct._IO_FILE* noundef %11) #6
  store i32 %call19, i32* %ret, align 4
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %if.then39, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call22 = call i32 @mbedtls_mpi_read_file(%struct.mbedtls_mpi* noundef %D, i32 noundef 16, %struct._IO_FILE* noundef %12) #6
  store i32 %call22, i32* %ret, align 4
  %cmp23 = icmp ne i32 %call22, 0
  br i1 %cmp23, label %if.then39, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false21
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call25 = call i32 @mbedtls_mpi_read_file(%struct.mbedtls_mpi* noundef %P, i32 noundef 16, %struct._IO_FILE* noundef %13) #6
  store i32 %call25, i32* %ret, align 4
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %if.then39, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false24
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call28 = call i32 @mbedtls_mpi_read_file(%struct.mbedtls_mpi* noundef %Q, i32 noundef 16, %struct._IO_FILE* noundef %14) #6
  store i32 %call28, i32* %ret, align 4
  %cmp29 = icmp ne i32 %call28, 0
  br i1 %cmp29, label %if.then39, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false27
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call31 = call i32 @mbedtls_mpi_read_file(%struct.mbedtls_mpi* noundef %DP, i32 noundef 16, %struct._IO_FILE* noundef %15) #6
  store i32 %call31, i32* %ret, align 4
  %cmp32 = icmp ne i32 %call31, 0
  br i1 %cmp32, label %if.then39, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false30
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call34 = call i32 @mbedtls_mpi_read_file(%struct.mbedtls_mpi* noundef %DQ, i32 noundef 16, %struct._IO_FILE* noundef %16) #6
  store i32 %call34, i32* %ret, align 4
  %cmp35 = icmp ne i32 %call34, 0
  br i1 %cmp35, label %if.then39, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false33
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call37 = call i32 @mbedtls_mpi_read_file(%struct.mbedtls_mpi* noundef %QP, i32 noundef 16, %struct._IO_FILE* noundef %17) #6
  store i32 %call37, i32* %ret, align 4
  %cmp38 = icmp ne i32 %call37, 0
  br i1 %cmp38, label %if.then39, label %if.end42

if.then39:                                        ; preds = %lor.lhs.false36, %lor.lhs.false33, %lor.lhs.false30, %lor.lhs.false27, %lor.lhs.false24, %lor.lhs.false21, %lor.lhs.false, %if.end16
  %18 = load i32, i32* %ret, align 4
  %call40 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i32 noundef %18) #6
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call41 = call i32 @fclose(%struct._IO_FILE* noundef %19) #6
  br label %exit

if.end42:                                         ; preds = %lor.lhs.false36
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call43 = call i32 @fclose(%struct._IO_FILE* noundef %20) #6
  %call44 = call i32 @mbedtls_rsa_import(%struct.mbedtls_rsa_context* noundef %rsa, %struct.mbedtls_mpi* noundef %N, %struct.mbedtls_mpi* noundef %P, %struct.mbedtls_mpi* noundef %Q, %struct.mbedtls_mpi* noundef %D, %struct.mbedtls_mpi* noundef %E) #6
  store i32 %call44, i32* %ret, align 4
  %cmp45 = icmp ne i32 %call44, 0
  br i1 %cmp45, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end42
  %21 = load i32, i32* %ret, align 4
  %call47 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 noundef %21) #6
  br label %exit

if.end48:                                         ; preds = %if.end42
  %call49 = call i32 @mbedtls_rsa_complete(%struct.mbedtls_rsa_context* noundef %rsa) #6
  store i32 %call49, i32* %ret, align 4
  %cmp50 = icmp ne i32 %call49, 0
  br i1 %cmp50, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end48
  %22 = load i32, i32* %ret, align 4
  %call52 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0), i32 noundef %22) #6
  br label %exit

if.end53:                                         ; preds = %if.end48
  %call54 = call %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)) #6
  store %struct._IO_FILE* %call54, %struct._IO_FILE** %f, align 8
  %cmp55 = icmp eq %struct._IO_FILE* %call54, null
  br i1 %cmp55, label %if.then56, label %if.end58

if.then56:                                        ; preds = %if.end53
  %call57 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0)) #6
  br label %exit

if.end58:                                         ; preds = %if.end53
  store i64 0, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end58
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %23, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32* noundef %c) #6
  %cmp60 = icmp sgt i32 %call59, 0
  br i1 %cmp60, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %24 = load i64, i64* %i, align 8
  %cmp61 = icmp ult i64 %24, 512
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %25 = phi i1 [ false, %while.cond ], [ %cmp61, %land.rhs ]
  br i1 %25, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %26 = load i32, i32* %c, align 4
  %conv = trunc i32 %26 to i8
  %27 = load i64, i64* %i, align 8
  %inc = add i64 %27, 1
  store i64 %inc, i64* %i, align 8
  %arrayidx = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i64 0, i64 %27
  store i8 %conv, i8* %arrayidx, align 1
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %land.end
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call62 = call i32 @fclose(%struct._IO_FILE* noundef %28) #6
  %29 = load i64, i64* %i, align 8
  %private_len = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %rsa, i32 0, i32 1
  %30 = load i64, i64* %private_len, align 8
  %cmp63 = icmp ne i64 %29, %30
  br i1 %cmp63, label %if.then65, label %if.end67

if.then65:                                        ; preds = %while.end
  %call66 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0)) #6
  br label %exit

if.end67:                                         ; preds = %while.end
  %call68 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0)) #6
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call69 = call i32 @fflush(%struct._IO_FILE* noundef %31) #6
  %32 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %arraydecay70 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i64 0, i64 0
  %arraydecay71 = getelementptr inbounds [1024 x i8], [1024 x i8]* %result, i64 0, i64 0
  %call72 = call i32 @mbedtls_rsa_pkcs1_decrypt(%struct.mbedtls_rsa_context* noundef %rsa, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %32, i64* noundef %i, i8* noundef %arraydecay70, i8* noundef %arraydecay71, i64 noundef 1024) #6
  store i32 %call72, i32* %ret, align 4
  %33 = load i32, i32* %ret, align 4
  %cmp73 = icmp ne i32 %33, 0
  br i1 %cmp73, label %if.then75, label %if.end77

if.then75:                                        ; preds = %if.end67
  %34 = load i32, i32* %ret, align 4
  %call76 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.16, i64 0, i64 0), i32 noundef %34) #6
  br label %exit

if.end77:                                         ; preds = %if.end67
  %call78 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0)) #6
  %arraydecay79 = getelementptr inbounds [1024 x i8], [1024 x i8]* %result, i64 0, i64 0
  %call80 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0), i8* noundef %arraydecay79) #6
  store i32 0, i32* %exit_code, align 4
  br label %exit

exit:                                             ; preds = %if.end77, %if.then75, %if.then65, %if.then56, %if.then51, %if.then46, %if.then39, %if.then14, %if.then7
  call void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #6
  call void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef %entropy) #6
  call void @mbedtls_rsa_free(%struct.mbedtls_rsa_context* noundef %rsa) #6
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %N) #6
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %P) #6
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %Q) #6
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %D) #6
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %E) #6
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %DP) #6
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %DQ) #6
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %QP) #6
  %35 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %35) #7
  unreachable
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #2

declare dso_local void @mbedtls_rsa_init(%struct.mbedtls_rsa_context* noundef) #2

declare dso_local void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef) #2

declare dso_local void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef) #2

declare dso_local void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef) #2

declare dso_local i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_entropy_func(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #4

declare dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_mpi_read_file(%struct.mbedtls_mpi* noundef, i32 noundef, %struct._IO_FILE* noundef) #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

declare dso_local i32 @mbedtls_rsa_import(%struct.mbedtls_rsa_context* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #2

declare dso_local i32 @mbedtls_rsa_complete(%struct.mbedtls_rsa_context* noundef) #2

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare dso_local i32 @mbedtls_rsa_pkcs1_decrypt(%struct.mbedtls_rsa_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i64* noundef, i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_ctr_drbg_random(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef) #2

declare dso_local void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef) #2

declare dso_local void @mbedtls_rsa_free(%struct.mbedtls_rsa_context* noundef) #2

declare dso_local void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
