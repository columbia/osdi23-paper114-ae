; ModuleID = 'pkey/rsa_sign.c'
source_filename = "pkey/rsa_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.mbedtls_rsa_context = type { i32, i64, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, i32, i32 }
%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.mbedtls_md_info_t = type opaque

@.str = private unnamed_addr constant [28 x i8] c"usage: rsa_sign <filename>\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"\0A  . Reading private key from rsa_priv.txt\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"rsa_priv.txt\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c" failed\0A  ! Could not open rsa_priv.txt\0A  ! Please run rsa_genkey first\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c" failed\0A  ! mbedtls_mpi_read_file returned %d\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c" failed\0A  ! mbedtls_rsa_import returned %d\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c" failed\0A  ! mbedtls_rsa_complete returned %d\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"\0A  . Checking the private key\00", align 1
@.str.9 = private unnamed_addr constant [58 x i8] c" failed\0A  ! mbedtls_rsa_check_privkey failed with -0x%0x\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"\0A  . Generating the RSA/SHA-256 signature\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c" failed\0A  ! Could not open or read %s\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c" failed\0A  ! mbedtls_rsa_pkcs1_sign returned -0x%0x\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"%s.sig\00", align 1
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
  %hash = alloca [32 x i8], align 16
  %buf = alloca [1024 x i8], align 16
  %filename = alloca [512 x i8], align 16
  %N = alloca %struct.mbedtls_mpi, align 8
  %P = alloca %struct.mbedtls_mpi, align 8
  %Q = alloca %struct.mbedtls_mpi, align 8
  %D = alloca %struct.mbedtls_mpi, align 8
  %E = alloca %struct.mbedtls_mpi, align 8
  %DP = alloca %struct.mbedtls_mpi, align 8
  %DQ = alloca %struct.mbedtls_mpi, align 8
  %QP = alloca %struct.mbedtls_mpi, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %ret, align 4
  store i32 1, i32* %exit_code, align 4
  call void @mbedtls_rsa_init(%struct.mbedtls_rsa_context* noundef %rsa) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %N) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %P) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %Q) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %D) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %E) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %DP) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %DQ) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %QP) #4
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0)) #4
  br label %exit

if.end:                                           ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0)) #4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* noundef %1) #4
  %call3 = call %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #4
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %f, align 8
  %cmp4 = icmp eq %struct._IO_FILE* %call3, null
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0)) #4
  br label %exit

if.end7:                                          ; preds = %if.end
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call8 = call i32 @mbedtls_mpi_read_file(%struct.mbedtls_mpi* noundef %N, i32 noundef 16, %struct._IO_FILE* noundef %2) #4
  store i32 %call8, i32* %ret, align 4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end7
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call10 = call i32 @mbedtls_mpi_read_file(%struct.mbedtls_mpi* noundef %E, i32 noundef 16, %struct._IO_FILE* noundef %3) #4
  store i32 %call10, i32* %ret, align 4
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then30, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call13 = call i32 @mbedtls_mpi_read_file(%struct.mbedtls_mpi* noundef %D, i32 noundef 16, %struct._IO_FILE* noundef %4) #4
  store i32 %call13, i32* %ret, align 4
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then30, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call16 = call i32 @mbedtls_mpi_read_file(%struct.mbedtls_mpi* noundef %P, i32 noundef 16, %struct._IO_FILE* noundef %5) #4
  store i32 %call16, i32* %ret, align 4
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then30, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call19 = call i32 @mbedtls_mpi_read_file(%struct.mbedtls_mpi* noundef %Q, i32 noundef 16, %struct._IO_FILE* noundef %6) #4
  store i32 %call19, i32* %ret, align 4
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %if.then30, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false18
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call22 = call i32 @mbedtls_mpi_read_file(%struct.mbedtls_mpi* noundef %DP, i32 noundef 16, %struct._IO_FILE* noundef %7) #4
  store i32 %call22, i32* %ret, align 4
  %cmp23 = icmp ne i32 %call22, 0
  br i1 %cmp23, label %if.then30, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false21
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call25 = call i32 @mbedtls_mpi_read_file(%struct.mbedtls_mpi* noundef %DQ, i32 noundef 16, %struct._IO_FILE* noundef %8) #4
  store i32 %call25, i32* %ret, align 4
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %if.then30, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false24
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call28 = call i32 @mbedtls_mpi_read_file(%struct.mbedtls_mpi* noundef %QP, i32 noundef 16, %struct._IO_FILE* noundef %9) #4
  store i32 %call28, i32* %ret, align 4
  %cmp29 = icmp ne i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.end33

if.then30:                                        ; preds = %lor.lhs.false27, %lor.lhs.false24, %lor.lhs.false21, %lor.lhs.false18, %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false, %if.end7
  %10 = load i32, i32* %ret, align 4
  %call31 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 noundef %10) #4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call32 = call i32 @fclose(%struct._IO_FILE* noundef %11) #4
  br label %exit

if.end33:                                         ; preds = %lor.lhs.false27
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call34 = call i32 @fclose(%struct._IO_FILE* noundef %12) #4
  %call35 = call i32 @mbedtls_rsa_import(%struct.mbedtls_rsa_context* noundef %rsa, %struct.mbedtls_mpi* noundef %N, %struct.mbedtls_mpi* noundef %P, %struct.mbedtls_mpi* noundef %Q, %struct.mbedtls_mpi* noundef %D, %struct.mbedtls_mpi* noundef %E) #4
  store i32 %call35, i32* %ret, align 4
  %cmp36 = icmp ne i32 %call35, 0
  br i1 %cmp36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end33
  %13 = load i32, i32* %ret, align 4
  %call38 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 noundef %13) #4
  br label %exit

if.end39:                                         ; preds = %if.end33
  %call40 = call i32 @mbedtls_rsa_complete(%struct.mbedtls_rsa_context* noundef %rsa) #4
  store i32 %call40, i32* %ret, align 4
  %cmp41 = icmp ne i32 %call40, 0
  br i1 %cmp41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end39
  %14 = load i32, i32* %ret, align 4
  %call43 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i32 noundef %14) #4
  br label %exit

if.end44:                                         ; preds = %if.end39
  %call45 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0)) #4
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call46 = call i32 @fflush(%struct._IO_FILE* noundef %15) #4
  %call47 = call i32 @mbedtls_rsa_check_privkey(%struct.mbedtls_rsa_context* noundef %rsa) #4
  store i32 %call47, i32* %ret, align 4
  %cmp48 = icmp ne i32 %call47, 0
  br i1 %cmp48, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.end44
  %16 = load i32, i32* %ret, align 4
  %sub = sub nsw i32 0, %16
  %call50 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.9, i64 0, i64 0), i32 noundef %sub) #4
  br label %exit

if.end51:                                         ; preds = %if.end44
  %call52 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0)) #4
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call53 = call i32 @fflush(%struct._IO_FILE* noundef %17) #4
  %call54 = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef 4) #4
  %18 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %18, i64 1
  %19 = load i8*, i8** %arrayidx, align 8
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %hash, i64 0, i64 0
  %call55 = call i32 @mbedtls_md_file(%struct.mbedtls_md_info_t* noundef %call54, i8* noundef %19, i8* noundef %arraydecay) #4
  store i32 %call55, i32* %ret, align 4
  %cmp56 = icmp ne i32 %call55, 0
  br i1 %cmp56, label %if.then57, label %if.end60

if.then57:                                        ; preds = %if.end51
  %20 = load i8**, i8*** %argv.addr, align 8
  %arrayidx58 = getelementptr inbounds i8*, i8** %20, i64 1
  %21 = load i8*, i8** %arrayidx58, align 8
  %call59 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i8* noundef %21) #4
  br label %exit

if.end60:                                         ; preds = %if.end51
  %arraydecay61 = getelementptr inbounds [32 x i8], [32 x i8]* %hash, i64 0, i64 0
  %arraydecay62 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call63 = call i32 @mbedtls_rsa_pkcs1_sign(%struct.mbedtls_rsa_context* noundef %rsa, i32 (i8*, i8*, i64)* noundef null, i8* noundef null, i32 noundef 4, i32 noundef 32, i8* noundef %arraydecay61, i8* noundef %arraydecay62) #4
  store i32 %call63, i32* %ret, align 4
  %cmp64 = icmp ne i32 %call63, 0
  br i1 %cmp64, label %if.then65, label %if.end68

if.then65:                                        ; preds = %if.end60
  %22 = load i32, i32* %ret, align 4
  %sub66 = sub nsw i32 0, %22
  %call67 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i64 0, i64 0), i32 noundef %sub66) #4
  br label %exit

if.end68:                                         ; preds = %if.end60
  %arraydecay69 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i64 0, i64 0
  %23 = load i8**, i8*** %argv.addr, align 8
  %arrayidx70 = getelementptr inbounds i8*, i8** %23, i64 1
  %24 = load i8*, i8** %arrayidx70, align 8
  %call71 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay69, i64 noundef 512, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* noundef %24) #5
  %arraydecay72 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i64 0, i64 0
  %call73 = call %struct._IO_FILE* @fopen(i8* noundef %arraydecay72, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0)) #4
  store %struct._IO_FILE* %call73, %struct._IO_FILE** %f, align 8
  %cmp74 = icmp eq %struct._IO_FILE* %call73, null
  br i1 %cmp74, label %if.then75, label %if.end78

if.then75:                                        ; preds = %if.end68
  %25 = load i8**, i8*** %argv.addr, align 8
  %arrayidx76 = getelementptr inbounds i8*, i8** %25, i64 1
  %26 = load i8*, i8** %arrayidx76, align 8
  %call77 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0), i8* noundef %26) #4
  br label %exit

if.end78:                                         ; preds = %if.end68
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end78
  %27 = load i64, i64* %i, align 8
  %private_len = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %rsa, i32 0, i32 1
  %28 = load i64, i64* %private_len, align 8
  %cmp79 = icmp ult i64 %27, %28
  br i1 %cmp79, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %30 = load i64, i64* %i, align 8
  %arrayidx80 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 %30
  %31 = load i8, i8* %arrayidx80, align 1
  %conv = zext i8 %31 to i32
  %32 = load i64, i64* %i, align 8
  %add = add i64 %32, 1
  %rem = urem i64 %add, 16
  %cmp81 = icmp eq i64 %rem, 0
  %33 = zext i1 %cmp81 to i64
  %cond = select i1 %cmp81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)
  %call83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv, i8* noundef %cond) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i64, i64* %i, align 8
  %inc = add i64 %34, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call84 = call i32 @fclose(%struct._IO_FILE* noundef %35) #4
  %arraydecay85 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i64 0, i64 0
  %call86 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0), i8* noundef %arraydecay85) #4
  store i32 0, i32* %exit_code, align 4
  br label %exit

exit:                                             ; preds = %for.end, %if.then75, %if.then65, %if.then57, %if.then49, %if.then42, %if.then37, %if.then30, %if.then5, %if.then
  call void @mbedtls_rsa_free(%struct.mbedtls_rsa_context* noundef %rsa) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %N) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %P) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %Q) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %D) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %E) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %DP) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %DQ) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %QP) #4
  %36 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %36) #6
  unreachable
}

declare dso_local void @mbedtls_rsa_init(%struct.mbedtls_rsa_context* noundef) #1

declare dso_local void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

declare dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_mpi_read_file(%struct.mbedtls_mpi* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

declare dso_local i32 @mbedtls_rsa_import(%struct.mbedtls_rsa_context* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_rsa_complete(%struct.mbedtls_rsa_context* noundef) #1

declare dso_local i32 @mbedtls_rsa_check_privkey(%struct.mbedtls_rsa_context* noundef) #1

declare dso_local i32 @mbedtls_md_file(%struct.mbedtls_md_info_t* noundef, i8* noundef, i8* noundef) #1

declare dso_local %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef) #1

declare dso_local i32 @mbedtls_rsa_pkcs1_sign(%struct.mbedtls_rsa_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i32 noundef, i32 noundef, i8* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local void @mbedtls_rsa_free(%struct.mbedtls_rsa_context* noundef) #1

declare dso_local void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin noreturn nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
