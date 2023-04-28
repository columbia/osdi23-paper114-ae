; ModuleID = 'pkey/dh_server.c'
source_filename = "pkey/dh_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.mbedtls_net_context = type { i32 }
%struct.mbedtls_entropy_context = type { i32, %struct.mbedtls_sha512_context, i32, [20 x %struct.mbedtls_entropy_source_state] }
%struct.mbedtls_sha512_context = type { [2 x i64], [8 x i64], [128 x i8], i32 }
%struct.mbedtls_entropy_source_state = type { i32 (i8*, i8*, i64, i64*)*, i8*, i64, i64, i32 }
%struct.mbedtls_ctr_drbg_context = type { [16 x i8], i32, i32, i64, i32, %struct.mbedtls_aes_context, i32 (i8*, i8*, i64)*, i8* }
%struct.mbedtls_aes_context = type { i32, i32*, [68 x i32] }
%struct.mbedtls_rsa_context = type { i32, i64, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, i32, i32 }
%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.mbedtls_dhm_context = type { %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi }

@.str = private unnamed_addr constant [10 x i8] c"dh_server\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"\0A  . Seeding the random number generator\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c" failed\0A  ! mbedtls_ctr_drbg_seed returned %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"\0A  . Reading private key from rsa_priv.txt\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"rsa_priv.txt\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.6 = private unnamed_addr constant [74 x i8] c" failed\0A  ! Could not open rsa_priv.txt\0A  ! Please run rsa_genkey first\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c" failed\0A  ! mbedtls_mpi_read_file returned %d\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c" failed\0A  ! mbedtls_rsa_import returned %d\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c" failed\0A  ! mbedtls_rsa_complete returned %d\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"\0A  . Reading DH parameters from dh_prime.txt\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"dh_prime.txt\00", align 1
@.str.12 = private unnamed_addr constant [75 x i8] c" failed\0A  ! Could not open dh_prime.txt\0A  ! Please run dh_genprime first\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c" failed\0A  ! Invalid DH parameter file\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"\0A  . Waiting for a remote connection\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"11999\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c" failed\0A  ! mbedtls_net_bind returned %d\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c" failed\0A  ! mbedtls_net_accept returned %d\0A\0A\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"\0A  . Sending the server's DH parameters\00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c" failed\0A  ! mbedtls_dhm_make_params returned %d\0A\0A\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c" failed\0A  ! mbedtls_sha1 returned %d\0A\0A\00", align 1
@.str.21 = private unnamed_addr constant [49 x i8] c" failed\0A  ! mbedtls_rsa_pkcs1_sign returned %d\0A\0A\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c" failed\0A  ! mbedtls_net_send returned %d\0A\0A\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"\0A  . Receiving the client's public value\00", align 1
@.str.24 = private unnamed_addr constant [43 x i8] c" failed\0A  ! mbedtls_net_recv returned %d\0A\0A\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c" failed\0A  ! mbedtls_dhm_read_public returned %d\0A\0A\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"\0A  . Shared secret: \00", align 1
@.str.27 = private unnamed_addr constant [50 x i8] c" failed\0A  ! mbedtls_dhm_calc_secret returned %d\0A\0A\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.29 = private unnamed_addr constant [46 x i8] c"...\0A  . Encrypting and sending the ciphertext\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"==Hello there!==\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %f = alloca %struct._IO_FILE*, align 8
  %ret = alloca i32, align 4
  %exit_code = alloca i32, align 4
  %n = alloca i64, align 8
  %buflen = alloca i64, align 8
  %listen_fd = alloca %struct.mbedtls_net_context, align 4
  %client_fd = alloca %struct.mbedtls_net_context, align 4
  %buf = alloca [2048 x i8], align 16
  %hash = alloca [32 x i8], align 16
  %buf2 = alloca [2 x i8], align 1
  %pers = alloca i8*, align 8
  %entropy = alloca %struct.mbedtls_entropy_context, align 8
  %ctr_drbg = alloca %struct.mbedtls_ctr_drbg_context, align 8
  %rsa = alloca %struct.mbedtls_rsa_context, align 8
  %dhm = alloca %struct.mbedtls_dhm_context, align 8
  %aes = alloca %struct.mbedtls_aes_context, align 8
  %N = alloca %struct.mbedtls_mpi, align 8
  %P = alloca %struct.mbedtls_mpi, align 8
  %Q = alloca %struct.mbedtls_mpi, align 8
  %D = alloca %struct.mbedtls_mpi, align 8
  %E = alloca %struct.mbedtls_mpi, align 8
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %ret, align 4
  store i32 1, i32* %exit_code, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %pers, align 8
  call void @mbedtls_net_init(%struct.mbedtls_net_context* noundef %listen_fd) #5
  call void @mbedtls_net_init(%struct.mbedtls_net_context* noundef %client_fd) #5
  call void @mbedtls_dhm_init(%struct.mbedtls_dhm_context* noundef %dhm) #5
  call void @mbedtls_aes_init(%struct.mbedtls_aes_context* noundef %aes) #5
  call void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %N) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %P) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %Q) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %D) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %E) #5
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0)) #5
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* noundef %0) #5
  call void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef %entropy) #5
  %1 = bitcast %struct.mbedtls_entropy_context* %entropy to i8*
  %2 = load i8*, i8** %pers, align 8
  %3 = load i8*, i8** %pers, align 8
  %call2 = call i64 @strlen(i8* noundef %3) #6
  %call3 = call i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg, i32 (i8*, i8*, i64)* noundef @mbedtls_entropy_func, i8* noundef %1, i8* noundef %2, i64 noundef %call2) #5
  store i32 %call3, i32* %ret, align 4
  %cmp = icmp ne i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %ret, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 noundef %4) #5
  br label %exit

if.end:                                           ; preds = %entry
  %call5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0)) #5
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call6 = call i32 @fflush(%struct._IO_FILE* noundef %5) #5
  %call7 = call %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #5
  store %struct._IO_FILE* %call7, %struct._IO_FILE** %f, align 8
  %cmp8 = icmp eq %struct._IO_FILE* %call7, null
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  %call10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6, i64 0, i64 0)) #5
  br label %exit

if.end11:                                         ; preds = %if.end
  call void @mbedtls_rsa_init(%struct.mbedtls_rsa_context* noundef %rsa) #5
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call12 = call i32 @mbedtls_mpi_read_file(%struct.mbedtls_mpi* noundef %N, i32 noundef 16, %struct._IO_FILE* noundef %6) #5
  store i32 %call12, i32* %ret, align 4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end11
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call14 = call i32 @mbedtls_mpi_read_file(%struct.mbedtls_mpi* noundef %E, i32 noundef 16, %struct._IO_FILE* noundef %7) #5
  store i32 %call14, i32* %ret, align 4
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then25, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call17 = call i32 @mbedtls_mpi_read_file(%struct.mbedtls_mpi* noundef %D, i32 noundef 16, %struct._IO_FILE* noundef %8) #5
  store i32 %call17, i32* %ret, align 4
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then25, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call20 = call i32 @mbedtls_mpi_read_file(%struct.mbedtls_mpi* noundef %P, i32 noundef 16, %struct._IO_FILE* noundef %9) #5
  store i32 %call20, i32* %ret, align 4
  %cmp21 = icmp ne i32 %call20, 0
  br i1 %cmp21, label %if.then25, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false19
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call23 = call i32 @mbedtls_mpi_read_file(%struct.mbedtls_mpi* noundef %Q, i32 noundef 16, %struct._IO_FILE* noundef %10) #5
  store i32 %call23, i32* %ret, align 4
  %cmp24 = icmp ne i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.end28

if.then25:                                        ; preds = %lor.lhs.false22, %lor.lhs.false19, %lor.lhs.false16, %lor.lhs.false, %if.end11
  %11 = load i32, i32* %ret, align 4
  %call26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 noundef %11) #5
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call27 = call i32 @fclose(%struct._IO_FILE* noundef %12) #5
  br label %exit

if.end28:                                         ; preds = %lor.lhs.false22
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call29 = call i32 @fclose(%struct._IO_FILE* noundef %13) #5
  %call30 = call i32 @mbedtls_rsa_import(%struct.mbedtls_rsa_context* noundef %rsa, %struct.mbedtls_mpi* noundef %N, %struct.mbedtls_mpi* noundef %P, %struct.mbedtls_mpi* noundef %Q, %struct.mbedtls_mpi* noundef %D, %struct.mbedtls_mpi* noundef %E) #5
  store i32 %call30, i32* %ret, align 4
  %cmp31 = icmp ne i32 %call30, 0
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end28
  %14 = load i32, i32* %ret, align 4
  %call33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 noundef %14) #5
  br label %exit

if.end34:                                         ; preds = %if.end28
  %call35 = call i32 @mbedtls_rsa_complete(%struct.mbedtls_rsa_context* noundef %rsa) #5
  store i32 %call35, i32* %ret, align 4
  %cmp36 = icmp ne i32 %call35, 0
  br i1 %cmp36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end34
  %15 = load i32, i32* %ret, align 4
  %call38 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i32 noundef %15) #5
  br label %exit

if.end39:                                         ; preds = %if.end34
  %call40 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0)) #5
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call41 = call i32 @fflush(%struct._IO_FILE* noundef %16) #5
  %call42 = call %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #5
  store %struct._IO_FILE* %call42, %struct._IO_FILE** %f, align 8
  %cmp43 = icmp eq %struct._IO_FILE* %call42, null
  br i1 %cmp43, label %if.then44, label %if.end46

if.then44:                                        ; preds = %if.end39
  %call45 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.12, i64 0, i64 0)) #5
  br label %exit

if.end46:                                         ; preds = %if.end39
  %private_P = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %dhm, i32 0, i32 0
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call47 = call i32 @mbedtls_mpi_read_file(%struct.mbedtls_mpi* noundef %private_P, i32 noundef 16, %struct._IO_FILE* noundef %17) #5
  %cmp48 = icmp ne i32 %call47, 0
  br i1 %cmp48, label %if.then52, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %if.end46
  %private_G = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %dhm, i32 0, i32 1
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call50 = call i32 @mbedtls_mpi_read_file(%struct.mbedtls_mpi* noundef %private_G, i32 noundef 16, %struct._IO_FILE* noundef %18) #5
  %cmp51 = icmp ne i32 %call50, 0
  br i1 %cmp51, label %if.then52, label %if.end55

if.then52:                                        ; preds = %lor.lhs.false49, %if.end46
  %call53 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0)) #5
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call54 = call i32 @fclose(%struct._IO_FILE* noundef %19) #5
  br label %exit

if.end55:                                         ; preds = %lor.lhs.false49
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call56 = call i32 @fclose(%struct._IO_FILE* noundef %20) #5
  %call57 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0)) #5
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call58 = call i32 @fflush(%struct._IO_FILE* noundef %21) #5
  %call59 = call i32 @mbedtls_net_bind(%struct.mbedtls_net_context* noundef %listen_fd, i8* noundef null, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 noundef 0) #5
  store i32 %call59, i32* %ret, align 4
  %cmp60 = icmp ne i32 %call59, 0
  br i1 %cmp60, label %if.then61, label %if.end63

if.then61:                                        ; preds = %if.end55
  %22 = load i32, i32* %ret, align 4
  %call62 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0), i32 noundef %22) #5
  br label %exit

if.end63:                                         ; preds = %if.end55
  %call64 = call i32 @mbedtls_net_accept(%struct.mbedtls_net_context* noundef %listen_fd, %struct.mbedtls_net_context* noundef %client_fd, i8* noundef null, i64 noundef 0, i64* noundef null) #5
  store i32 %call64, i32* %ret, align 4
  %cmp65 = icmp ne i32 %call64, 0
  br i1 %cmp65, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.end63
  %23 = load i32, i32* %ret, align 4
  %call67 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i64 0, i64 0), i32 noundef %23) #5
  br label %exit

if.end68:                                         ; preds = %if.end63
  %call69 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0)) #5
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call70 = call i32 @fflush(%struct._IO_FILE* noundef %24) #5
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0
  %call71 = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 2048) #7
  %private_P72 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %dhm, i32 0, i32 0
  %call73 = call i64 @mbedtls_mpi_size(%struct.mbedtls_mpi* noundef %private_P72) #5
  %conv = trunc i64 %call73 to i32
  %arraydecay74 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0
  %25 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call75 = call i32 @mbedtls_dhm_make_params(%struct.mbedtls_dhm_context* noundef %dhm, i32 noundef %conv, i8* noundef %arraydecay74, i64* noundef %n, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %25) #5
  store i32 %call75, i32* %ret, align 4
  %cmp76 = icmp ne i32 %call75, 0
  br i1 %cmp76, label %if.then78, label %if.end80

if.then78:                                        ; preds = %if.end68
  %26 = load i32, i32* %ret, align 4
  %call79 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.19, i64 0, i64 0), i32 noundef %26) #5
  br label %exit

if.end80:                                         ; preds = %if.end68
  %arraydecay81 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0
  %27 = load i64, i64* %n, align 8
  %arraydecay82 = getelementptr inbounds [32 x i8], [32 x i8]* %hash, i64 0, i64 0
  %call83 = call i32 @mbedtls_sha1(i8* noundef %arraydecay81, i64 noundef %27, i8* noundef %arraydecay82) #5
  store i32 %call83, i32* %ret, align 4
  %cmp84 = icmp ne i32 %call83, 0
  br i1 %cmp84, label %if.then86, label %if.end88

if.then86:                                        ; preds = %if.end80
  %28 = load i32, i32* %ret, align 4
  %call87 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i64 0, i64 0), i32 noundef %28) #5
  br label %exit

if.end88:                                         ; preds = %if.end80
  %private_len = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %rsa, i32 0, i32 1
  %29 = load i64, i64* %private_len, align 8
  %shr = lshr i64 %29, 8
  %conv89 = trunc i64 %shr to i8
  %30 = load i64, i64* %n, align 8
  %arrayidx = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 %30
  store i8 %conv89, i8* %arrayidx, align 1
  %private_len90 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %rsa, i32 0, i32 1
  %31 = load i64, i64* %private_len90, align 8
  %conv91 = trunc i64 %31 to i8
  %32 = load i64, i64* %n, align 8
  %add = add i64 %32, 1
  %arrayidx92 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 %add
  store i8 %conv91, i8* %arrayidx92, align 1
  %arraydecay93 = getelementptr inbounds [32 x i8], [32 x i8]* %hash, i64 0, i64 0
  %arraydecay94 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0
  %33 = load i64, i64* %n, align 8
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay94, i64 %33
  %add.ptr95 = getelementptr inbounds i8, i8* %add.ptr, i64 2
  %call96 = call i32 @mbedtls_rsa_pkcs1_sign(%struct.mbedtls_rsa_context* noundef %rsa, i32 (i8*, i8*, i64)* noundef null, i8* noundef null, i32 noundef 4, i32 noundef 32, i8* noundef %arraydecay93, i8* noundef %add.ptr95) #5
  store i32 %call96, i32* %ret, align 4
  %cmp97 = icmp ne i32 %call96, 0
  br i1 %cmp97, label %if.then99, label %if.end101

if.then99:                                        ; preds = %if.end88
  %34 = load i32, i32* %ret, align 4
  %call100 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.21, i64 0, i64 0), i32 noundef %34) #5
  br label %exit

if.end101:                                        ; preds = %if.end88
  %35 = load i64, i64* %n, align 8
  %add102 = add i64 %35, 2
  %private_len103 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %rsa, i32 0, i32 1
  %36 = load i64, i64* %private_len103, align 8
  %add104 = add i64 %add102, %36
  store i64 %add104, i64* %buflen, align 8
  %37 = load i64, i64* %buflen, align 8
  %shr105 = lshr i64 %37, 8
  %conv106 = trunc i64 %shr105 to i8
  %arrayidx107 = getelementptr inbounds [2 x i8], [2 x i8]* %buf2, i64 0, i64 0
  store i8 %conv106, i8* %arrayidx107, align 1
  %38 = load i64, i64* %buflen, align 8
  %conv108 = trunc i64 %38 to i8
  %arrayidx109 = getelementptr inbounds [2 x i8], [2 x i8]* %buf2, i64 0, i64 1
  store i8 %conv108, i8* %arrayidx109, align 1
  %39 = bitcast %struct.mbedtls_net_context* %client_fd to i8*
  %arraydecay110 = getelementptr inbounds [2 x i8], [2 x i8]* %buf2, i64 0, i64 0
  %call111 = call i32 @mbedtls_net_send(i8* noundef %39, i8* noundef %arraydecay110, i64 noundef 2) #5
  store i32 %call111, i32* %ret, align 4
  %cmp112 = icmp ne i32 %call111, 2
  br i1 %cmp112, label %if.then120, label %lor.lhs.false114

lor.lhs.false114:                                 ; preds = %if.end101
  %40 = bitcast %struct.mbedtls_net_context* %client_fd to i8*
  %arraydecay115 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0
  %41 = load i64, i64* %buflen, align 8
  %call116 = call i32 @mbedtls_net_send(i8* noundef %40, i8* noundef %arraydecay115, i64 noundef %41) #5
  store i32 %call116, i32* %ret, align 4
  %42 = load i64, i64* %buflen, align 8
  %conv117 = trunc i64 %42 to i32
  %cmp118 = icmp ne i32 %call116, %conv117
  br i1 %cmp118, label %if.then120, label %if.end122

if.then120:                                       ; preds = %lor.lhs.false114, %if.end101
  %43 = load i32, i32* %ret, align 4
  %call121 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0), i32 noundef %43) #5
  br label %exit

if.end122:                                        ; preds = %lor.lhs.false114
  %call123 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i64 0, i64 0)) #5
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call124 = call i32 @fflush(%struct._IO_FILE* noundef %44) #5
  %arraydecay125 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0
  %call126 = call i8* @memset(i8* noundef %arraydecay125, i32 noundef 0, i64 noundef 2048) #7
  %call127 = call i64 @mbedtls_dhm_get_len(%struct.mbedtls_dhm_context* noundef %dhm) #5
  store i64 %call127, i64* %n, align 8
  %45 = bitcast %struct.mbedtls_net_context* %client_fd to i8*
  %arraydecay128 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0
  %46 = load i64, i64* %n, align 8
  %call129 = call i32 @mbedtls_net_recv(i8* noundef %45, i8* noundef %arraydecay128, i64 noundef %46) #5
  store i32 %call129, i32* %ret, align 4
  %47 = load i64, i64* %n, align 8
  %conv130 = trunc i64 %47 to i32
  %cmp131 = icmp ne i32 %call129, %conv130
  br i1 %cmp131, label %if.then133, label %if.end135

if.then133:                                       ; preds = %if.end122
  %48 = load i32, i32* %ret, align 4
  %call134 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.24, i64 0, i64 0), i32 noundef %48) #5
  br label %exit

if.end135:                                        ; preds = %if.end122
  %arraydecay136 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0
  %49 = load i64, i64* %n, align 8
  %call137 = call i32 @mbedtls_dhm_read_public(%struct.mbedtls_dhm_context* noundef %dhm, i8* noundef %arraydecay136, i64 noundef %49) #5
  store i32 %call137, i32* %ret, align 4
  %cmp138 = icmp ne i32 %call137, 0
  br i1 %cmp138, label %if.then140, label %if.end142

if.then140:                                       ; preds = %if.end135
  %50 = load i32, i32* %ret, align 4
  %call141 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.25, i64 0, i64 0), i32 noundef %50) #5
  br label %exit

if.end142:                                        ; preds = %if.end135
  %call143 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0)) #5
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call144 = call i32 @fflush(%struct._IO_FILE* noundef %51) #5
  %arraydecay145 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0
  %52 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call146 = call i32 @mbedtls_dhm_calc_secret(%struct.mbedtls_dhm_context* noundef %dhm, i8* noundef %arraydecay145, i64 noundef 2048, i64* noundef %n, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %52) #5
  store i32 %call146, i32* %ret, align 4
  %cmp147 = icmp ne i32 %call146, 0
  br i1 %cmp147, label %if.then149, label %if.end151

if.then149:                                       ; preds = %if.end142
  %53 = load i32, i32* %ret, align 4
  %call150 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.27, i64 0, i64 0), i32 noundef %53) #5
  br label %exit

if.end151:                                        ; preds = %if.end142
  store i64 0, i64* %n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end151
  %54 = load i64, i64* %n, align 8
  %cmp152 = icmp ult i64 %54, 16
  br i1 %cmp152, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %55 = load i64, i64* %n, align 8
  %arrayidx154 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 %55
  %56 = load i8, i8* %arrayidx154, align 1
  %conv155 = zext i8 %56 to i32
  %call156 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i32 noundef %conv155) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %57 = load i64, i64* %n, align 8
  %inc = add i64 %57, 1
  store i64 %inc, i64* %n, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call157 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.29, i64 0, i64 0)) #5
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call158 = call i32 @fflush(%struct._IO_FILE* noundef %58) #5
  %arraydecay159 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0
  %call160 = call i32 @mbedtls_aes_setkey_enc(%struct.mbedtls_aes_context* noundef %aes, i8* noundef %arraydecay159, i32 noundef 256) #5
  store i32 %call160, i32* %ret, align 4
  %59 = load i32, i32* %ret, align 4
  %cmp161 = icmp ne i32 %59, 0
  br i1 %cmp161, label %if.then163, label %if.end164

if.then163:                                       ; preds = %for.end
  br label %exit

if.end164:                                        ; preds = %for.end
  %arraydecay165 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0
  %call166 = call i8* @memcpy(i8* noundef %arraydecay165, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i64 0, i64 0), i64 noundef 16) #7
  %arraydecay167 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0
  %arraydecay168 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0
  %call169 = call i32 @mbedtls_aes_crypt_ecb(%struct.mbedtls_aes_context* noundef %aes, i32 noundef 1, i8* noundef %arraydecay167, i8* noundef %arraydecay168) #5
  store i32 %call169, i32* %ret, align 4
  %60 = load i32, i32* %ret, align 4
  %cmp170 = icmp ne i32 %60, 0
  br i1 %cmp170, label %if.then172, label %if.end173

if.then172:                                       ; preds = %if.end164
  br label %exit

if.end173:                                        ; preds = %if.end164
  %61 = bitcast %struct.mbedtls_net_context* %client_fd to i8*
  %arraydecay174 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0
  %call175 = call i32 @mbedtls_net_send(i8* noundef %61, i8* noundef %arraydecay174, i64 noundef 16) #5
  store i32 %call175, i32* %ret, align 4
  %cmp176 = icmp ne i32 %call175, 16
  br i1 %cmp176, label %if.then178, label %if.end180

if.then178:                                       ; preds = %if.end173
  %62 = load i32, i32* %ret, align 4
  %call179 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0), i32 noundef %62) #5
  br label %exit

if.end180:                                        ; preds = %if.end173
  %call181 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0)) #5
  store i32 0, i32* %exit_code, align 4
  br label %exit

exit:                                             ; preds = %if.end180, %if.then178, %if.then172, %if.then163, %if.then149, %if.then140, %if.then133, %if.then120, %if.then99, %if.then86, %if.then78, %if.then66, %if.then61, %if.then52, %if.then44, %if.then37, %if.then32, %if.then25, %if.then9, %if.then
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %N) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %P) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %Q) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %D) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %E) #5
  call void @mbedtls_net_free(%struct.mbedtls_net_context* noundef %client_fd) #5
  call void @mbedtls_net_free(%struct.mbedtls_net_context* noundef %listen_fd) #5
  call void @mbedtls_aes_free(%struct.mbedtls_aes_context* noundef %aes) #5
  call void @mbedtls_rsa_free(%struct.mbedtls_rsa_context* noundef %rsa) #5
  call void @mbedtls_dhm_free(%struct.mbedtls_dhm_context* noundef %dhm) #5
  call void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #5
  call void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef %entropy) #5
  %63 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %63) #8
  unreachable
}

declare dso_local void @mbedtls_net_init(%struct.mbedtls_net_context* noundef) #1

declare dso_local void @mbedtls_dhm_init(%struct.mbedtls_dhm_context* noundef) #1

declare dso_local void @mbedtls_aes_init(%struct.mbedtls_aes_context* noundef) #1

declare dso_local void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef) #1

declare dso_local void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

declare dso_local void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_entropy_func(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local void @mbedtls_rsa_init(%struct.mbedtls_rsa_context* noundef) #1

declare dso_local i32 @mbedtls_mpi_read_file(%struct.mbedtls_mpi* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

declare dso_local i32 @mbedtls_rsa_import(%struct.mbedtls_rsa_context* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_rsa_complete(%struct.mbedtls_rsa_context* noundef) #1

declare dso_local i32 @mbedtls_net_bind(%struct.mbedtls_net_context* noundef, i8* noundef, i8* noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_net_accept(%struct.mbedtls_net_context* noundef, %struct.mbedtls_net_context* noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #3

declare dso_local i32 @mbedtls_dhm_make_params(%struct.mbedtls_dhm_context* noundef, i32 noundef, i8* noundef, i64* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i64 @mbedtls_mpi_size(%struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_random(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_sha1(i8* noundef, i64 noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_rsa_pkcs1_sign(%struct.mbedtls_rsa_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i32 noundef, i32 noundef, i8* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_net_send(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i64 @mbedtls_dhm_get_len(%struct.mbedtls_dhm_context* noundef) #1

declare dso_local i32 @mbedtls_net_recv(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_dhm_read_public(%struct.mbedtls_dhm_context* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_dhm_calc_secret(%struct.mbedtls_dhm_context* noundef, i8* noundef, i64 noundef, i64* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_aes_setkey_enc(%struct.mbedtls_aes_context* noundef, i8* noundef, i32 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #3

declare dso_local i32 @mbedtls_aes_crypt_ecb(%struct.mbedtls_aes_context* noundef, i32 noundef, i8* noundef, i8* noundef) #1

declare dso_local void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef) #1

declare dso_local void @mbedtls_net_free(%struct.mbedtls_net_context* noundef) #1

declare dso_local void @mbedtls_aes_free(%struct.mbedtls_aes_context* noundef) #1

declare dso_local void @mbedtls_rsa_free(%struct.mbedtls_rsa_context* noundef) #1

declare dso_local void @mbedtls_dhm_free(%struct.mbedtls_dhm_context* noundef) #1

declare dso_local void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef) #1

declare dso_local void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef) #1

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
