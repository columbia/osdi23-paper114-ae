; ModuleID = 'pkey/dh_client.c'
source_filename = "pkey/dh_client.c"
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

@.str = private unnamed_addr constant [10 x i8] c"dh_client\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"\0A  . Seeding the random number generator\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c" failed\0A  ! mbedtls_ctr_drbg_seed returned %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"\0A  . Reading public key from rsa_pub.txt\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"rsa_pub.txt\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.6 = private unnamed_addr constant [73 x i8] c" failed\0A  ! Could not open rsa_pub.txt\0A  ! Please run rsa_genkey first\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c" failed\0A  ! mbedtls_mpi_read_file returned %d\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"\0A  . Connecting to tcp/%s/%s\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"11999\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c" failed\0A  ! mbedtls_net_connect returned %d\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"\0A  . Receiving the server's DH parameters\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c" failed\0A  ! mbedtls_net_recv returned %d\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c" failed\0A  ! Got an invalid buffer length\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c" failed\0A  ! mbedtls_dhm_read_params returned %d\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c" failed\0A  ! Invalid DHM modulus size\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"\0A  . Verifying the server's RSA signature\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c" failed\0A  ! Invalid RSA signature size\0A\0A\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c" failed\0A  ! mbedtls_sha1 returned %d\0A\0A\00", align 1
@.str.20 = private unnamed_addr constant [51 x i8] c" failed\0A  ! mbedtls_rsa_pkcs1_verify returned %d\0A\0A\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"\0A  . Sending own public value to server\00", align 1
@.str.22 = private unnamed_addr constant [50 x i8] c" failed\0A  ! mbedtls_dhm_make_public returned %d\0A\0A\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c" failed\0A  ! mbedtls_net_send returned %d\0A\0A\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"\0A  . Shared secret: \00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c" failed\0A  ! mbedtls_dhm_calc_secret returned %d\0A\0A\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.27 = private unnamed_addr constant [48 x i8] c"...\0A  . Receiving and decrypting the ciphertext\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"\0A  . Plaintext is \22%s\22\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %f = alloca %struct._IO_FILE*, align 8
  %ret = alloca i32, align 4
  %exit_code = alloca i32, align 4
  %n = alloca i64, align 8
  %buflen = alloca i64, align 8
  %server_fd = alloca %struct.mbedtls_net_context, align 4
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %buf = alloca [2048 x i8], align 16
  %hash = alloca [32 x i8], align 16
  %pers = alloca i8*, align 8
  %entropy = alloca %struct.mbedtls_entropy_context, align 8
  %ctr_drbg = alloca %struct.mbedtls_ctr_drbg_context, align 8
  %rsa = alloca %struct.mbedtls_rsa_context, align 8
  %dhm = alloca %struct.mbedtls_dhm_context, align 8
  %aes = alloca %struct.mbedtls_aes_context, align 8
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %ret, align 4
  store i32 1, i32* %exit_code, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %pers, align 8
  call void @mbedtls_net_init(%struct.mbedtls_net_context* noundef %server_fd) #5
  call void @mbedtls_dhm_init(%struct.mbedtls_dhm_context* noundef %dhm) #5
  call void @mbedtls_aes_init(%struct.mbedtls_aes_context* noundef %aes) #5
  call void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #5
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
  %call5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0)) #5
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call6 = call i32 @fflush(%struct._IO_FILE* noundef %5) #5
  %call7 = call %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #5
  store %struct._IO_FILE* %call7, %struct._IO_FILE** %f, align 8
  %cmp8 = icmp eq %struct._IO_FILE* %call7, null
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  %call10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.6, i64 0, i64 0)) #5
  br label %exit

if.end11:                                         ; preds = %if.end
  call void @mbedtls_rsa_init(%struct.mbedtls_rsa_context* noundef %rsa) #5
  %private_N = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %rsa, i32 0, i32 2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call12 = call i32 @mbedtls_mpi_read_file(%struct.mbedtls_mpi* noundef %private_N, i32 noundef 16, %struct._IO_FILE* noundef %6) #5
  store i32 %call12, i32* %ret, align 4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end11
  %private_E = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %rsa, i32 0, i32 3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call14 = call i32 @mbedtls_mpi_read_file(%struct.mbedtls_mpi* noundef %private_E, i32 noundef 16, %struct._IO_FILE* noundef %7) #5
  store i32 %call14, i32* %ret, align 4
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %lor.lhs.false, %if.end11
  %8 = load i32, i32* %ret, align 4
  %call17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 noundef %8) #5
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call18 = call i32 @fclose(%struct._IO_FILE* noundef %9) #5
  br label %exit

if.end19:                                         ; preds = %lor.lhs.false
  %private_N20 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %rsa, i32 0, i32 2
  %call21 = call i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef %private_N20) #5
  %add = add i64 %call21, 7
  %shr = lshr i64 %add, 3
  %private_len = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %rsa, i32 0, i32 1
  store i64 %shr, i64* %private_len, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call22 = call i32 @fclose(%struct._IO_FILE* noundef %10) #5
  %call23 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)) #5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call24 = call i32 @fflush(%struct._IO_FILE* noundef %11) #5
  %call25 = call i32 @mbedtls_net_connect(%struct.mbedtls_net_context* noundef %server_fd, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 noundef 0) #5
  store i32 %call25, i32* %ret, align 4
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end19
  %12 = load i32, i32* %ret, align 4
  %call28 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0), i32 noundef %12) #5
  br label %exit

if.end29:                                         ; preds = %if.end19
  %call30 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0)) #5
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call31 = call i32 @fflush(%struct._IO_FILE* noundef %13) #5
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0
  %call32 = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 2048) #7
  %14 = bitcast %struct.mbedtls_net_context* %server_fd to i8*
  %arraydecay33 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0
  %call34 = call i32 @mbedtls_net_recv(i8* noundef %14, i8* noundef %arraydecay33, i64 noundef 2) #5
  store i32 %call34, i32* %ret, align 4
  %cmp35 = icmp ne i32 %call34, 2
  br i1 %cmp35, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end29
  %15 = load i32, i32* %ret, align 4
  %call37 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i32 noundef %15) #5
  br label %exit

if.end38:                                         ; preds = %if.end29
  %arrayidx = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0
  %16 = load i8, i8* %arrayidx, align 16
  %conv = zext i8 %16 to i32
  %shl = shl i32 %conv, 8
  %arrayidx39 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 1
  %17 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %17 to i32
  %or = or i32 %shl, %conv40
  %conv41 = sext i32 %or to i64
  store i64 %conv41, i64* %buflen, align 8
  store i64 %conv41, i64* %n, align 8
  %18 = load i64, i64* %buflen, align 8
  %cmp42 = icmp ult i64 %18, 1
  br i1 %cmp42, label %if.then47, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %if.end38
  %19 = load i64, i64* %buflen, align 8
  %cmp45 = icmp ugt i64 %19, 2048
  br i1 %cmp45, label %if.then47, label %if.end49

if.then47:                                        ; preds = %lor.lhs.false44, %if.end38
  %call48 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0)) #5
  br label %exit

if.end49:                                         ; preds = %lor.lhs.false44
  %arraydecay50 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0
  %call51 = call i8* @memset(i8* noundef %arraydecay50, i32 noundef 0, i64 noundef 2048) #7
  %20 = bitcast %struct.mbedtls_net_context* %server_fd to i8*
  %arraydecay52 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0
  %21 = load i64, i64* %n, align 8
  %call53 = call i32 @mbedtls_net_recv(i8* noundef %20, i8* noundef %arraydecay52, i64 noundef %21) #5
  store i32 %call53, i32* %ret, align 4
  %22 = load i64, i64* %n, align 8
  %conv54 = trunc i64 %22 to i32
  %cmp55 = icmp ne i32 %call53, %conv54
  br i1 %cmp55, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.end49
  %23 = load i32, i32* %ret, align 4
  %call58 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i32 noundef %23) #5
  br label %exit

if.end59:                                         ; preds = %if.end49
  %arraydecay60 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0
  store i8* %arraydecay60, i8** %p, align 8
  %arraydecay61 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0
  %24 = load i64, i64* %buflen, align 8
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay61, i64 %24
  store i8* %add.ptr, i8** %end, align 8
  %25 = load i8*, i8** %end, align 8
  %call62 = call i32 @mbedtls_dhm_read_params(%struct.mbedtls_dhm_context* noundef %dhm, i8** noundef %p, i8* noundef %25) #5
  store i32 %call62, i32* %ret, align 4
  %cmp63 = icmp ne i32 %call62, 0
  br i1 %cmp63, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.end59
  %26 = load i32, i32* %ret, align 4
  %call66 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i64 0, i64 0), i32 noundef %26) #5
  br label %exit

if.end67:                                         ; preds = %if.end59
  %call68 = call i64 @mbedtls_dhm_get_len(%struct.mbedtls_dhm_context* noundef %dhm) #5
  store i64 %call68, i64* %n, align 8
  %27 = load i64, i64* %n, align 8
  %cmp69 = icmp ult i64 %27, 64
  br i1 %cmp69, label %if.then74, label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %if.end67
  %28 = load i64, i64* %n, align 8
  %cmp72 = icmp ugt i64 %28, 512
  br i1 %cmp72, label %if.then74, label %if.end76

if.then74:                                        ; preds = %lor.lhs.false71, %if.end67
  %call75 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0)) #5
  br label %exit

if.end76:                                         ; preds = %lor.lhs.false71
  %call77 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0)) #5
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call78 = call i32 @fflush(%struct._IO_FILE* noundef %29) #5
  %30 = load i8*, i8** %p, align 8
  %add.ptr79 = getelementptr inbounds i8, i8* %30, i64 2
  store i8* %add.ptr79, i8** %p, align 8
  %31 = load i8*, i8** %end, align 8
  %32 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %31 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %32 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %n, align 8
  %private_len80 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %rsa, i32 0, i32 1
  %33 = load i64, i64* %private_len80, align 8
  %cmp81 = icmp ne i64 %sub.ptr.sub, %33
  br i1 %cmp81, label %if.then83, label %if.end85

if.then83:                                        ; preds = %if.end76
  %call84 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i64 0, i64 0)) #5
  br label %exit

if.end85:                                         ; preds = %if.end76
  %arraydecay86 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0
  %34 = load i8*, i8** %p, align 8
  %add.ptr87 = getelementptr inbounds i8, i8* %34, i64 -2
  %arraydecay88 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0
  %sub.ptr.lhs.cast89 = ptrtoint i8* %add.ptr87 to i64
  %sub.ptr.rhs.cast90 = ptrtoint i8* %arraydecay88 to i64
  %sub.ptr.sub91 = sub i64 %sub.ptr.lhs.cast89, %sub.ptr.rhs.cast90
  %conv92 = trunc i64 %sub.ptr.sub91 to i32
  %conv93 = sext i32 %conv92 to i64
  %arraydecay94 = getelementptr inbounds [32 x i8], [32 x i8]* %hash, i64 0, i64 0
  %call95 = call i32 @mbedtls_sha1(i8* noundef %arraydecay86, i64 noundef %conv93, i8* noundef %arraydecay94) #5
  store i32 %call95, i32* %ret, align 4
  %cmp96 = icmp ne i32 %call95, 0
  br i1 %cmp96, label %if.then98, label %if.end100

if.then98:                                        ; preds = %if.end85
  %35 = load i32, i32* %ret, align 4
  %call99 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.19, i64 0, i64 0), i32 noundef %35) #5
  br label %exit

if.end100:                                        ; preds = %if.end85
  %arraydecay101 = getelementptr inbounds [32 x i8], [32 x i8]* %hash, i64 0, i64 0
  %36 = load i8*, i8** %p, align 8
  %call102 = call i32 @mbedtls_rsa_pkcs1_verify(%struct.mbedtls_rsa_context* noundef %rsa, i32 noundef 4, i32 noundef 32, i8* noundef %arraydecay101, i8* noundef %36) #5
  store i32 %call102, i32* %ret, align 4
  %cmp103 = icmp ne i32 %call102, 0
  br i1 %cmp103, label %if.then105, label %if.end107

if.then105:                                       ; preds = %if.end100
  %37 = load i32, i32* %ret, align 4
  %call106 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.20, i64 0, i64 0), i32 noundef %37) #5
  br label %exit

if.end107:                                        ; preds = %if.end100
  %call108 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0)) #5
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call109 = call i32 @fflush(%struct._IO_FILE* noundef %38) #5
  %call110 = call i64 @mbedtls_dhm_get_len(%struct.mbedtls_dhm_context* noundef %dhm) #5
  store i64 %call110, i64* %n, align 8
  %39 = load i64, i64* %n, align 8
  %conv111 = trunc i64 %39 to i32
  %arraydecay112 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0
  %40 = load i64, i64* %n, align 8
  %41 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call113 = call i32 @mbedtls_dhm_make_public(%struct.mbedtls_dhm_context* noundef %dhm, i32 noundef %conv111, i8* noundef %arraydecay112, i64 noundef %40, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %41) #5
  store i32 %call113, i32* %ret, align 4
  %cmp114 = icmp ne i32 %call113, 0
  br i1 %cmp114, label %if.then116, label %if.end118

if.then116:                                       ; preds = %if.end107
  %42 = load i32, i32* %ret, align 4
  %call117 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.22, i64 0, i64 0), i32 noundef %42) #5
  br label %exit

if.end118:                                        ; preds = %if.end107
  %43 = bitcast %struct.mbedtls_net_context* %server_fd to i8*
  %arraydecay119 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0
  %44 = load i64, i64* %n, align 8
  %call120 = call i32 @mbedtls_net_send(i8* noundef %43, i8* noundef %arraydecay119, i64 noundef %44) #5
  store i32 %call120, i32* %ret, align 4
  %45 = load i64, i64* %n, align 8
  %conv121 = trunc i64 %45 to i32
  %cmp122 = icmp ne i32 %call120, %conv121
  br i1 %cmp122, label %if.then124, label %if.end126

if.then124:                                       ; preds = %if.end118
  %46 = load i32, i32* %ret, align 4
  %call125 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.23, i64 0, i64 0), i32 noundef %46) #5
  br label %exit

if.end126:                                        ; preds = %if.end118
  %call127 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0)) #5
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call128 = call i32 @fflush(%struct._IO_FILE* noundef %47) #5
  %arraydecay129 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0
  %48 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call130 = call i32 @mbedtls_dhm_calc_secret(%struct.mbedtls_dhm_context* noundef %dhm, i8* noundef %arraydecay129, i64 noundef 2048, i64* noundef %n, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %48) #5
  store i32 %call130, i32* %ret, align 4
  %cmp131 = icmp ne i32 %call130, 0
  br i1 %cmp131, label %if.then133, label %if.end135

if.then133:                                       ; preds = %if.end126
  %49 = load i32, i32* %ret, align 4
  %call134 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.25, i64 0, i64 0), i32 noundef %49) #5
  br label %exit

if.end135:                                        ; preds = %if.end126
  store i64 0, i64* %n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end135
  %50 = load i64, i64* %n, align 8
  %cmp136 = icmp ult i64 %50, 16
  br i1 %cmp136, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load i64, i64* %n, align 8
  %arrayidx138 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 %51
  %52 = load i8, i8* %arrayidx138, align 1
  %conv139 = zext i8 %52 to i32
  %call140 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i32 noundef %conv139) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %53 = load i64, i64* %n, align 8
  %inc = add i64 %53, 1
  store i64 %inc, i64* %n, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call141 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.27, i64 0, i64 0)) #5
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call142 = call i32 @fflush(%struct._IO_FILE* noundef %54) #5
  %arraydecay143 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0
  %call144 = call i32 @mbedtls_aes_setkey_dec(%struct.mbedtls_aes_context* noundef %aes, i8* noundef %arraydecay143, i32 noundef 256) #5
  store i32 %call144, i32* %ret, align 4
  %55 = load i32, i32* %ret, align 4
  %cmp145 = icmp ne i32 %55, 0
  br i1 %cmp145, label %if.then147, label %if.end148

if.then147:                                       ; preds = %for.end
  br label %exit

if.end148:                                        ; preds = %for.end
  %arraydecay149 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0
  %call150 = call i8* @memset(i8* noundef %arraydecay149, i32 noundef 0, i64 noundef 2048) #7
  %56 = bitcast %struct.mbedtls_net_context* %server_fd to i8*
  %arraydecay151 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0
  %call152 = call i32 @mbedtls_net_recv(i8* noundef %56, i8* noundef %arraydecay151, i64 noundef 16) #5
  store i32 %call152, i32* %ret, align 4
  %cmp153 = icmp ne i32 %call152, 16
  br i1 %cmp153, label %if.then155, label %if.end157

if.then155:                                       ; preds = %if.end148
  %57 = load i32, i32* %ret, align 4
  %call156 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i32 noundef %57) #5
  br label %exit

if.end157:                                        ; preds = %if.end148
  %arraydecay158 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0
  %arraydecay159 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0
  %call160 = call i32 @mbedtls_aes_crypt_ecb(%struct.mbedtls_aes_context* noundef %aes, i32 noundef 0, i8* noundef %arraydecay158, i8* noundef %arraydecay159) #5
  store i32 %call160, i32* %ret, align 4
  %58 = load i32, i32* %ret, align 4
  %cmp161 = icmp ne i32 %58, 0
  br i1 %cmp161, label %if.then163, label %if.end164

if.then163:                                       ; preds = %if.end157
  br label %exit

if.end164:                                        ; preds = %if.end157
  %arrayidx165 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 16
  store i8 0, i8* %arrayidx165, align 16
  %arraydecay166 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0
  %call167 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i64 0, i64 0), i8* noundef %arraydecay166) #5
  store i32 0, i32* %exit_code, align 4
  br label %exit

exit:                                             ; preds = %if.end164, %if.then163, %if.then155, %if.then147, %if.then133, %if.then124, %if.then116, %if.then105, %if.then98, %if.then83, %if.then74, %if.then65, %if.then57, %if.then47, %if.then36, %if.then27, %if.then16, %if.then9, %if.then
  call void @mbedtls_net_free(%struct.mbedtls_net_context* noundef %server_fd) #5
  call void @mbedtls_aes_free(%struct.mbedtls_aes_context* noundef %aes) #5
  call void @mbedtls_rsa_free(%struct.mbedtls_rsa_context* noundef %rsa) #5
  call void @mbedtls_dhm_free(%struct.mbedtls_dhm_context* noundef %dhm) #5
  call void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #5
  call void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef %entropy) #5
  %59 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %59) #8
  unreachable
}

declare dso_local void @mbedtls_net_init(%struct.mbedtls_net_context* noundef) #1

declare dso_local void @mbedtls_dhm_init(%struct.mbedtls_dhm_context* noundef) #1

declare dso_local void @mbedtls_aes_init(%struct.mbedtls_aes_context* noundef) #1

declare dso_local void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef) #1

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

declare dso_local i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_net_connect(%struct.mbedtls_net_context* noundef, i8* noundef, i8* noundef, i32 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #3

declare dso_local i32 @mbedtls_net_recv(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_dhm_read_params(%struct.mbedtls_dhm_context* noundef, i8** noundef, i8* noundef) #1

declare dso_local i64 @mbedtls_dhm_get_len(%struct.mbedtls_dhm_context* noundef) #1

declare dso_local i32 @mbedtls_sha1(i8* noundef, i64 noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_rsa_pkcs1_verify(%struct.mbedtls_rsa_context* noundef, i32 noundef, i32 noundef, i8* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_dhm_make_public(%struct.mbedtls_dhm_context* noundef, i32 noundef, i8* noundef, i64 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_random(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_net_send(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_dhm_calc_secret(%struct.mbedtls_dhm_context* noundef, i8* noundef, i64 noundef, i64* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_aes_setkey_dec(%struct.mbedtls_aes_context* noundef, i8* noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_aes_crypt_ecb(%struct.mbedtls_aes_context* noundef, i32 noundef, i8* noundef, i8* noundef) #1

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
