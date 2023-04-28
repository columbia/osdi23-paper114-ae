; ModuleID = 'pkey/rsa_genkey.c'
source_filename = "pkey/rsa_genkey.c"
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

@.str = private unnamed_addr constant [11 x i8] c"rsa_genkey\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"\0A  . Seeding the random number generator...\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c" failed\0A  ! mbedtls_ctr_drbg_seed returned %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c" ok\0A  . Generating the RSA key [ %d-bit ]...\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c" failed\0A  ! mbedtls_rsa_gen_key returned %d\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c" ok\0A  . Exporting the public  key in rsa_pub.txt....\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c" failed\0A  ! could not export RSA parameters\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"rsa_pub.txt\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"wb+\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c" failed\0A  ! could not open rsa_pub.txt for writing\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"N = \00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"E = \00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c" failed\0A  ! mbedtls_mpi_write_file returned %d\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c" ok\0A  . Exporting the private key in rsa_priv.txt...\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"rsa_priv.txt\00", align 1
@.str.15 = private unnamed_addr constant [53 x i8] c" failed\0A  ! could not open rsa_priv.txt for writing\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"D = \00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"P = \00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"Q = \00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"DP = \00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"DQ = \00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"QP = \00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c" ok\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  %exit_code = alloca i32, align 4
  %rsa = alloca %struct.mbedtls_rsa_context, align 8
  %entropy = alloca %struct.mbedtls_entropy_context, align 8
  %ctr_drbg = alloca %struct.mbedtls_ctr_drbg_context, align 8
  %N = alloca %struct.mbedtls_mpi, align 8
  %P = alloca %struct.mbedtls_mpi, align 8
  %Q = alloca %struct.mbedtls_mpi, align 8
  %D = alloca %struct.mbedtls_mpi, align 8
  %E = alloca %struct.mbedtls_mpi, align 8
  %DP = alloca %struct.mbedtls_mpi, align 8
  %DQ = alloca %struct.mbedtls_mpi, align 8
  %QP = alloca %struct.mbedtls_mpi, align 8
  %fpub = alloca %struct._IO_FILE*, align 8
  %fpriv = alloca %struct._IO_FILE*, align 8
  %pers = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %ret, align 4
  store i32 1, i32* %exit_code, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %fpub, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %fpriv, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %pers, align 8
  call void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #4
  call void @mbedtls_rsa_init(%struct.mbedtls_rsa_context* noundef %rsa) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %N) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %P) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %Q) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %D) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %E) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %DP) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %DQ) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %QP) #4
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0)) #4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* noundef %0) #4
  call void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef %entropy) #4
  %1 = bitcast %struct.mbedtls_entropy_context* %entropy to i8*
  %2 = load i8*, i8** %pers, align 8
  %3 = load i8*, i8** %pers, align 8
  %call2 = call i64 @strlen(i8* noundef %3) #5
  %call3 = call i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg, i32 (i8*, i8*, i64)* noundef @mbedtls_entropy_func, i8* noundef %1, i8* noundef %2, i64 noundef %call2) #4
  store i32 %call3, i32* %ret, align 4
  %cmp = icmp ne i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %ret, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 noundef %4) #4
  br label %exit

if.end:                                           ; preds = %entry
  %call5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 noundef 2048) #4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call6 = call i32 @fflush(%struct._IO_FILE* noundef %5) #4
  %6 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call7 = call i32 @mbedtls_rsa_gen_key(%struct.mbedtls_rsa_context* noundef %rsa, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %6, i32 noundef 2048, i32 noundef 65537) #4
  store i32 %call7, i32* %ret, align 4
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  %7 = load i32, i32* %ret, align 4
  %call10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 noundef %7) #4
  br label %exit

if.end11:                                         ; preds = %if.end
  %call12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0)) #4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call13 = call i32 @fflush(%struct._IO_FILE* noundef %8) #4
  %call14 = call i32 @mbedtls_rsa_export(%struct.mbedtls_rsa_context* noundef %rsa, %struct.mbedtls_mpi* noundef %N, %struct.mbedtls_mpi* noundef %P, %struct.mbedtls_mpi* noundef %Q, %struct.mbedtls_mpi* noundef %D, %struct.mbedtls_mpi* noundef %E) #4
  store i32 %call14, i32* %ret, align 4
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end11
  %call16 = call i32 @mbedtls_rsa_export_crt(%struct.mbedtls_rsa_context* noundef %rsa, %struct.mbedtls_mpi* noundef %DP, %struct.mbedtls_mpi* noundef %DQ, %struct.mbedtls_mpi* noundef %QP) #4
  store i32 %call16, i32* %ret, align 4
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %lor.lhs.false, %if.end11
  %call19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0)) #4
  br label %exit

if.end20:                                         ; preds = %lor.lhs.false
  %call21 = call %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #4
  store %struct._IO_FILE* %call21, %struct._IO_FILE** %fpub, align 8
  %cmp22 = icmp eq %struct._IO_FILE* %call21, null
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end20
  %call24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0)) #4
  br label %exit

if.end25:                                         ; preds = %if.end20
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fpub, align 8
  %call26 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), %struct.mbedtls_mpi* noundef %N, i32 noundef 16, %struct._IO_FILE* noundef %9) #4
  store i32 %call26, i32* %ret, align 4
  %cmp27 = icmp ne i32 %call26, 0
  br i1 %cmp27, label %if.then31, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %if.end25
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fpub, align 8
  %call29 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), %struct.mbedtls_mpi* noundef %E, i32 noundef 16, %struct._IO_FILE* noundef %10) #4
  store i32 %call29, i32* %ret, align 4
  %cmp30 = icmp ne i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.end33

if.then31:                                        ; preds = %lor.lhs.false28, %if.end25
  %11 = load i32, i32* %ret, align 4
  %call32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0), i32 noundef %11) #4
  br label %exit

if.end33:                                         ; preds = %lor.lhs.false28
  %call34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0)) #4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call35 = call i32 @fflush(%struct._IO_FILE* noundef %12) #4
  %call36 = call %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #4
  store %struct._IO_FILE* %call36, %struct._IO_FILE** %fpriv, align 8
  %cmp37 = icmp eq %struct._IO_FILE* %call36, null
  br i1 %cmp37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end33
  %call39 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.15, i64 0, i64 0)) #4
  br label %exit

if.end40:                                         ; preds = %if.end33
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fpriv, align 8
  %call41 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), %struct.mbedtls_mpi* noundef %N, i32 noundef 16, %struct._IO_FILE* noundef %13) #4
  store i32 %call41, i32* %ret, align 4
  %cmp42 = icmp ne i32 %call41, 0
  br i1 %cmp42, label %if.then64, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %if.end40
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fpriv, align 8
  %call44 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), %struct.mbedtls_mpi* noundef %E, i32 noundef 16, %struct._IO_FILE* noundef %14) #4
  store i32 %call44, i32* %ret, align 4
  %cmp45 = icmp ne i32 %call44, 0
  br i1 %cmp45, label %if.then64, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %lor.lhs.false43
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fpriv, align 8
  %call47 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), %struct.mbedtls_mpi* noundef %D, i32 noundef 16, %struct._IO_FILE* noundef %15) #4
  store i32 %call47, i32* %ret, align 4
  %cmp48 = icmp ne i32 %call47, 0
  br i1 %cmp48, label %if.then64, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %lor.lhs.false46
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fpriv, align 8
  %call50 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), %struct.mbedtls_mpi* noundef %P, i32 noundef 16, %struct._IO_FILE* noundef %16) #4
  store i32 %call50, i32* %ret, align 4
  %cmp51 = icmp ne i32 %call50, 0
  br i1 %cmp51, label %if.then64, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false49
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fpriv, align 8
  %call53 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), %struct.mbedtls_mpi* noundef %Q, i32 noundef 16, %struct._IO_FILE* noundef %17) #4
  store i32 %call53, i32* %ret, align 4
  %cmp54 = icmp ne i32 %call53, 0
  br i1 %cmp54, label %if.then64, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %lor.lhs.false52
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fpriv, align 8
  %call56 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), %struct.mbedtls_mpi* noundef %DP, i32 noundef 16, %struct._IO_FILE* noundef %18) #4
  store i32 %call56, i32* %ret, align 4
  %cmp57 = icmp ne i32 %call56, 0
  br i1 %cmp57, label %if.then64, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %lor.lhs.false55
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fpriv, align 8
  %call59 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), %struct.mbedtls_mpi* noundef %DQ, i32 noundef 16, %struct._IO_FILE* noundef %19) #4
  store i32 %call59, i32* %ret, align 4
  %cmp60 = icmp ne i32 %call59, 0
  br i1 %cmp60, label %if.then64, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %lor.lhs.false58
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fpriv, align 8
  %call62 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), %struct.mbedtls_mpi* noundef %QP, i32 noundef 16, %struct._IO_FILE* noundef %20) #4
  store i32 %call62, i32* %ret, align 4
  %cmp63 = icmp ne i32 %call62, 0
  br i1 %cmp63, label %if.then64, label %if.end66

if.then64:                                        ; preds = %lor.lhs.false61, %lor.lhs.false58, %lor.lhs.false55, %lor.lhs.false52, %lor.lhs.false49, %lor.lhs.false46, %lor.lhs.false43, %if.end40
  %21 = load i32, i32* %ret, align 4
  %call65 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0), i32 noundef %21) #4
  br label %exit

if.end66:                                         ; preds = %lor.lhs.false61
  %call67 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0)) #4
  store i32 0, i32* %exit_code, align 4
  br label %exit

exit:                                             ; preds = %if.end66, %if.then64, %if.then38, %if.then31, %if.then23, %if.then18, %if.then9, %if.then
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fpub, align 8
  %cmp68 = icmp ne %struct._IO_FILE* %22, null
  br i1 %cmp68, label %if.then69, label %if.end71

if.then69:                                        ; preds = %exit
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fpub, align 8
  %call70 = call i32 @fclose(%struct._IO_FILE* noundef %23) #4
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %exit
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fpriv, align 8
  %cmp72 = icmp ne %struct._IO_FILE* %24, null
  br i1 %cmp72, label %if.then73, label %if.end75

if.then73:                                        ; preds = %if.end71
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fpriv, align 8
  %call74 = call i32 @fclose(%struct._IO_FILE* noundef %25) #4
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %if.end71
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %N) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %P) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %Q) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %D) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %E) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %DP) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %DQ) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %QP) #4
  call void @mbedtls_rsa_free(%struct.mbedtls_rsa_context* noundef %rsa) #4
  call void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #4
  call void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef %entropy) #4
  %26 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %26) #6
  unreachable
}

declare dso_local void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef) #1

declare dso_local void @mbedtls_rsa_init(%struct.mbedtls_rsa_context* noundef) #1

declare dso_local void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

declare dso_local void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_entropy_func(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local i32 @mbedtls_rsa_gen_key(%struct.mbedtls_rsa_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_random(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_rsa_export(%struct.mbedtls_rsa_context* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_rsa_export_crt(%struct.mbedtls_rsa_context* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_mpi_write_file(i8* noundef, %struct.mbedtls_mpi* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

declare dso_local void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef) #1

declare dso_local void @mbedtls_rsa_free(%struct.mbedtls_rsa_context* noundef) #1

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
