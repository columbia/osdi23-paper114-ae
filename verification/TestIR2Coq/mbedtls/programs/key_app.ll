; ModuleID = 'pkey/key_app.c'
source_filename = "pkey/key_app.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i32, i8*, i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.mbedtls_entropy_context = type { i32, %struct.mbedtls_sha512_context, i32, [20 x %struct.mbedtls_entropy_source_state] }
%struct.mbedtls_sha512_context = type { [2 x i64], [8 x i64], [128 x i8], i32 }
%struct.mbedtls_entropy_source_state = type { i32 (i8*, i8*, i64, i64*)*, i8*, i64, i64, i32 }
%struct.mbedtls_ctr_drbg_context = type { [16 x i8], i32, i32, i64, i32, %struct.mbedtls_aes_context, i32 (i8*, i8*, i64)*, i8* }
%struct.mbedtls_aes_context = type { i32, i32*, [68 x i32] }
%struct.mbedtls_pk_context = type { %struct.mbedtls_pk_info_t*, i8* }
%struct.mbedtls_pk_info_t = type opaque
%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.mbedtls_rsa_context = type { i32, i64, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, i32, i32 }
%struct.mbedtls_ecp_keypair = type { %struct.mbedtls_ecp_group, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point }
%struct.mbedtls_ecp_group = type { i32, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point, %struct.mbedtls_mpi, i64, i64, i32, i32 (%struct.mbedtls_mpi*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i8*, %struct.mbedtls_ecp_point*, i64 }
%struct.mbedtls_ecp_point = type { %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi }

@.str = private unnamed_addr constant [13 x i8] c"pkey/key_app\00", align 1
@.str.1 = private unnamed_addr constant [214 x i8] c"\0A usage: key_app param=<>...\0A\0A acceptable parameters:\0A    mode=private|public default: none\0A    filename=%%s         default: keyfile.key\0A    password=%%s         default: \22\22\0A    password_file=%%s    default: \22\22\0A\0A\00", align 1
@opt = dso_local global %struct.options zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"keyfile.key\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"public\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"password_file\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"Error: cannot have both password and password_file\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"\0A  . Loading the password file ...\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c" failed\0A  !  fopen returned NULL\0A\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"Error: fgets() failed to retrieve password\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"\0A  . Loading the private key ...\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [53 x i8] c" failed\0A  !  mbedtls_ctr_drbg_seed returned -0x%04x\0A\00", align 1
@.str.17 = private unnamed_addr constant [56 x i8] c" failed\0A  !  mbedtls_pk_parse_keyfile returned -0x%04x\0A\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c" ok\0A\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"  . Key information    ...\0A\00", align 1
@.str.20 = private unnamed_addr constant [46 x i8] c" failed\0A  ! could not export RSA parameters\0A\0A\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"N:  \00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"E:  \00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"D:  \00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"P:  \00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"Q:  \00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"DP: \00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"DQ:  \00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"QP:  \00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"Q(X): \00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"Q(Y): \00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"Q(Z): \00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"D   : \00", align 1
@.str.33 = private unnamed_addr constant [56 x i8] c"Do not know how to print key information for this type\0A\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c"\0A  . Loading the public key ...\00", align 1
@.str.35 = private unnamed_addr constant [63 x i8] c" failed\0A  !  mbedtls_pk_parse_public_keyfile returned -0x%04x\0A\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"  !  Last error was: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ret = alloca i32, align 4
  %exit_code = alloca i32, align 4
  %buf = alloca [1024 x i8], align 16
  %i = alloca i32, align 4
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %pers = alloca i8*, align 8
  %entropy = alloca %struct.mbedtls_entropy_context, align 8
  %ctr_drbg = alloca %struct.mbedtls_ctr_drbg_context, align 8
  %pk = alloca %struct.mbedtls_pk_context, align 8
  %N = alloca %struct.mbedtls_mpi, align 8
  %P = alloca %struct.mbedtls_mpi, align 8
  %Q = alloca %struct.mbedtls_mpi, align 8
  %D = alloca %struct.mbedtls_mpi, align 8
  %E = alloca %struct.mbedtls_mpi, align 8
  %DP = alloca %struct.mbedtls_mpi, align 8
  %DQ = alloca %struct.mbedtls_mpi, align 8
  %QP = alloca %struct.mbedtls_mpi, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %rsa = alloca %struct.mbedtls_rsa_context*, align 8
  %ecp = alloca %struct.mbedtls_ecp_keypair*, align 8
  %rsa232 = alloca %struct.mbedtls_rsa_context*, align 8
  %ecp259 = alloca %struct.mbedtls_ecp_keypair*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %ret, align 4
  store i32 1, i32* %exit_code, align 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %pers, align 8
  call void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef %entropy) #5
  call void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #5
  call void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef %pk) #5
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 1024) #6
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %N) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %P) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %Q) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %D) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %E) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %DP) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %DQ) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %QP) #5
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %usage

usage:                                            ; preds = %if.else292, %if.then41, %if.else31, %if.else16, %if.then5, %if.then
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([214 x i8], [214 x i8]* @.str.1, i64 0, i64 0)) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %argc.addr, align 4
  %cmp2 = icmp slt i32 %1, %2
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8**, i8*** %argv.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  store i8* %5, i8** %p, align 8
  %6 = load i8*, i8** %p, align 8
  %call3 = call i8* @strchr(i8* noundef %6, i32 noundef 61) #7
  store i8* %call3, i8** %q, align 8
  %cmp4 = icmp eq i8* %call3, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %for.body
  br label %usage

if.end6:                                          ; preds = %for.body
  %7 = load i8*, i8** %q, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %q, align 8
  store i8 0, i8* %7, align 1
  %8 = load i8*, i8** %p, align 8
  %call7 = call i32 @strcmp(i8* noundef %8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)) #7
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.else19

if.then9:                                         ; preds = %if.end6
  %9 = load i8*, i8** %q, align 8
  %call10 = call i32 @strcmp(i8* noundef %9, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #7
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then9
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  br label %if.end18

if.else:                                          ; preds = %if.then9
  %10 = load i8*, i8** %q, align 8
  %call13 = call i32 @strcmp(i8* noundef %10, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #7
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.else
  store i32 2, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  br label %if.end17

if.else16:                                        ; preds = %if.else
  br label %usage

if.end17:                                         ; preds = %if.then15
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then12
  br label %if.end35

if.else19:                                        ; preds = %if.end6
  %11 = load i8*, i8** %p, align 8
  %call20 = call i32 @strcmp(i8* noundef %11, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)) #7
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.else23

if.then22:                                        ; preds = %if.else19
  %12 = load i8*, i8** %q, align 8
  store i8* %12, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  br label %if.end34

if.else23:                                        ; preds = %if.else19
  %13 = load i8*, i8** %p, align 8
  %call24 = call i32 @strcmp(i8* noundef %13, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)) #7
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.else23
  %14 = load i8*, i8** %q, align 8
  store i8* %14, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  br label %if.end33

if.else27:                                        ; preds = %if.else23
  %15 = load i8*, i8** %p, align 8
  %call28 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0)) #7
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.else31

if.then30:                                        ; preds = %if.else27
  %16 = load i8*, i8** %q, align 8
  store i8* %16, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 8
  br label %if.end32

if.else31:                                        ; preds = %if.else27
  br label %usage

if.end32:                                         ; preds = %if.then30
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then26
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then22
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end18
  br label %for.inc

for.inc:                                          ; preds = %if.end35
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  %cmp36 = icmp eq i32 %18, 1
  br i1 %cmp36, label %if.then37, label %if.else213

if.then37:                                        ; preds = %for.end
  %19 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  %call38 = call i64 @strlen(i8* noundef %19) #7
  %tobool = icmp ne i64 %call38, 0
  br i1 %tobool, label %land.lhs.true, label %if.end43

land.lhs.true:                                    ; preds = %if.then37
  %20 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 8
  %call39 = call i64 @strlen(i8* noundef %20) #7
  %tobool40 = icmp ne i64 %call39, 0
  br i1 %tobool40, label %if.then41, label %if.end43

if.then41:                                        ; preds = %land.lhs.true
  %call42 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0)) #5
  br label %usage

if.end43:                                         ; preds = %land.lhs.true, %if.then37
  %21 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 8
  %call44 = call i64 @strlen(i8* noundef %21) #7
  %tobool45 = icmp ne i64 %call44, 0
  br i1 %tobool45, label %if.then46, label %if.end85

if.then46:                                        ; preds = %if.end43
  %call47 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0)) #5
  %22 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 8
  %call48 = call %struct._IO_FILE* @fopen(i8* noundef %22, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0)) #5
  store %struct._IO_FILE* %call48, %struct._IO_FILE** %f, align 8
  %cmp49 = icmp eq %struct._IO_FILE* %call48, null
  br i1 %cmp49, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.then46
  %call51 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0)) #5
  br label %cleanup

if.end52:                                         ; preds = %if.then46
  %arraydecay53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call54 = call i8* @fgets(i8* noundef %arraydecay53, i32 noundef 1024, %struct._IO_FILE* noundef %23) #5
  %cmp55 = icmp eq i8* %call54, null
  br i1 %cmp55, label %if.then56, label %if.end59

if.then56:                                        ; preds = %if.end52
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call57 = call i32 @fclose(%struct._IO_FILE* noundef %24) #5
  %call58 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i64 0, i64 0)) #5
  br label %cleanup

if.end59:                                         ; preds = %if.end52
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call60 = call i32 @fclose(%struct._IO_FILE* noundef %25) #5
  %arraydecay61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call62 = call i64 @strlen(i8* noundef %arraydecay61) #7
  %conv = trunc i64 %call62 to i32
  store i32 %conv, i32* %i, align 4
  %26 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %26, 1
  %idxprom63 = sext i32 %sub to i64
  %arrayidx64 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 %idxprom63
  %27 = load i8, i8* %arrayidx64, align 1
  %conv65 = sext i8 %27 to i32
  %cmp66 = icmp eq i32 %conv65, 10
  br i1 %cmp66, label %if.then68, label %if.end72

if.then68:                                        ; preds = %if.end59
  %28 = load i32, i32* %i, align 4
  %sub69 = sub nsw i32 %28, 1
  %idxprom70 = sext i32 %sub69 to i64
  %arrayidx71 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 %idxprom70
  store i8 0, i8* %arrayidx71, align 1
  br label %if.end72

if.end72:                                         ; preds = %if.then68, %if.end59
  %29 = load i32, i32* %i, align 4
  %sub73 = sub nsw i32 %29, 2
  %idxprom74 = sext i32 %sub73 to i64
  %arrayidx75 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 %idxprom74
  %30 = load i8, i8* %arrayidx75, align 1
  %conv76 = sext i8 %30 to i32
  %cmp77 = icmp eq i32 %conv76, 13
  br i1 %cmp77, label %if.then79, label %if.end83

if.then79:                                        ; preds = %if.end72
  %31 = load i32, i32* %i, align 4
  %sub80 = sub nsw i32 %31, 2
  %idxprom81 = sext i32 %sub80 to i64
  %arrayidx82 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 %idxprom81
  store i8 0, i8* %arrayidx82, align 1
  br label %if.end83

if.end83:                                         ; preds = %if.then79, %if.end72
  %arraydecay84 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  store i8* %arraydecay84, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  br label %if.end85

if.end85:                                         ; preds = %if.end83, %if.end43
  %call86 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0)) #5
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call87 = call i32 @fflush(%struct._IO_FILE* noundef %32) #5
  %33 = bitcast %struct.mbedtls_entropy_context* %entropy to i8*
  %34 = load i8*, i8** %pers, align 8
  %35 = load i8*, i8** %pers, align 8
  %call88 = call i64 @strlen(i8* noundef %35) #7
  %call89 = call i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg, i32 (i8*, i8*, i64)* noundef @mbedtls_entropy_func, i8* noundef %33, i8* noundef %34, i64 noundef %call88) #5
  store i32 %call89, i32* %ret, align 4
  %cmp90 = icmp ne i32 %call89, 0
  br i1 %cmp90, label %if.then92, label %if.end95

if.then92:                                        ; preds = %if.end85
  %36 = load i32, i32* %ret, align 4
  %sub93 = sub nsw i32 0, %36
  %call94 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i64 0, i64 0), i32 noundef %sub93) #5
  br label %cleanup

if.end95:                                         ; preds = %if.end85
  %37 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  %38 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  %39 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call96 = call i32 @mbedtls_pk_parse_keyfile(%struct.mbedtls_pk_context* noundef %pk, i8* noundef %37, i8* noundef %38, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %39) #5
  store i32 %call96, i32* %ret, align 4
  %40 = load i32, i32* %ret, align 4
  %cmp97 = icmp ne i32 %40, 0
  br i1 %cmp97, label %if.then99, label %if.end102

if.then99:                                        ; preds = %if.end95
  %41 = load i32, i32* %ret, align 4
  %sub100 = sub nsw i32 0, %41
  %call101 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.17, i64 0, i64 0), i32 noundef %sub100) #5
  br label %cleanup

if.end102:                                        ; preds = %if.end95
  %call103 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)) #5
  %call104 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0)) #5
  %call105 = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %pk) #5
  %cmp106 = icmp eq i32 %call105, 1
  br i1 %cmp106, label %if.then108, label %if.else173

if.then108:                                       ; preds = %if.end102
  %42 = bitcast %struct.mbedtls_pk_context* %pk to { %struct.mbedtls_pk_info_t*, i8* }*
  %43 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %42, i32 0, i32 0
  %44 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %43, align 8
  %45 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %42, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %call109 = call %struct.mbedtls_rsa_context* @mbedtls_pk_rsa(%struct.mbedtls_pk_info_t* %44, i8* %46) #5
  store %struct.mbedtls_rsa_context* %call109, %struct.mbedtls_rsa_context** %rsa, align 8
  %47 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %call110 = call i32 @mbedtls_rsa_export(%struct.mbedtls_rsa_context* noundef %47, %struct.mbedtls_mpi* noundef %N, %struct.mbedtls_mpi* noundef %P, %struct.mbedtls_mpi* noundef %Q, %struct.mbedtls_mpi* noundef %D, %struct.mbedtls_mpi* noundef %E) #5
  store i32 %call110, i32* %ret, align 4
  %cmp111 = icmp ne i32 %call110, 0
  br i1 %cmp111, label %if.then116, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then108
  %48 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %call113 = call i32 @mbedtls_rsa_export_crt(%struct.mbedtls_rsa_context* noundef %48, %struct.mbedtls_mpi* noundef %DP, %struct.mbedtls_mpi* noundef %DQ, %struct.mbedtls_mpi* noundef %QP) #5
  store i32 %call113, i32* %ret, align 4
  %cmp114 = icmp ne i32 %call113, 0
  br i1 %cmp114, label %if.then116, label %if.end118

if.then116:                                       ; preds = %lor.lhs.false, %if.then108
  %call117 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i64 0, i64 0)) #5
  br label %cleanup

if.end118:                                        ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.end118
  %call119 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), %struct.mbedtls_mpi* noundef %N, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  store i32 %call119, i32* %ret, align 4
  %cmp120 = icmp ne i32 %call119, 0
  br i1 %cmp120, label %if.then122, label %if.end123

if.then122:                                       ; preds = %do.body
  br label %cleanup

if.end123:                                        ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end123
  br label %do.body124

do.body124:                                       ; preds = %do.end
  %call125 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), %struct.mbedtls_mpi* noundef %E, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  store i32 %call125, i32* %ret, align 4
  %cmp126 = icmp ne i32 %call125, 0
  br i1 %cmp126, label %if.then128, label %if.end129

if.then128:                                       ; preds = %do.body124
  br label %cleanup

if.end129:                                        ; preds = %do.body124
  br label %do.end130

do.end130:                                        ; preds = %if.end129
  br label %do.body131

do.body131:                                       ; preds = %do.end130
  %call132 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), %struct.mbedtls_mpi* noundef %D, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  store i32 %call132, i32* %ret, align 4
  %cmp133 = icmp ne i32 %call132, 0
  br i1 %cmp133, label %if.then135, label %if.end136

if.then135:                                       ; preds = %do.body131
  br label %cleanup

if.end136:                                        ; preds = %do.body131
  br label %do.end137

do.end137:                                        ; preds = %if.end136
  br label %do.body138

do.body138:                                       ; preds = %do.end137
  %call139 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), %struct.mbedtls_mpi* noundef %P, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  store i32 %call139, i32* %ret, align 4
  %cmp140 = icmp ne i32 %call139, 0
  br i1 %cmp140, label %if.then142, label %if.end143

if.then142:                                       ; preds = %do.body138
  br label %cleanup

if.end143:                                        ; preds = %do.body138
  br label %do.end144

do.end144:                                        ; preds = %if.end143
  br label %do.body145

do.body145:                                       ; preds = %do.end144
  %call146 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), %struct.mbedtls_mpi* noundef %Q, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  store i32 %call146, i32* %ret, align 4
  %cmp147 = icmp ne i32 %call146, 0
  br i1 %cmp147, label %if.then149, label %if.end150

if.then149:                                       ; preds = %do.body145
  br label %cleanup

if.end150:                                        ; preds = %do.body145
  br label %do.end151

do.end151:                                        ; preds = %if.end150
  br label %do.body152

do.body152:                                       ; preds = %do.end151
  %call153 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), %struct.mbedtls_mpi* noundef %DP, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  store i32 %call153, i32* %ret, align 4
  %cmp154 = icmp ne i32 %call153, 0
  br i1 %cmp154, label %if.then156, label %if.end157

if.then156:                                       ; preds = %do.body152
  br label %cleanup

if.end157:                                        ; preds = %do.body152
  br label %do.end158

do.end158:                                        ; preds = %if.end157
  br label %do.body159

do.body159:                                       ; preds = %do.end158
  %call160 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), %struct.mbedtls_mpi* noundef %DQ, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  store i32 %call160, i32* %ret, align 4
  %cmp161 = icmp ne i32 %call160, 0
  br i1 %cmp161, label %if.then163, label %if.end164

if.then163:                                       ; preds = %do.body159
  br label %cleanup

if.end164:                                        ; preds = %do.body159
  br label %do.end165

do.end165:                                        ; preds = %if.end164
  br label %do.body166

do.body166:                                       ; preds = %do.end165
  %call167 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), %struct.mbedtls_mpi* noundef %QP, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  store i32 %call167, i32* %ret, align 4
  %cmp168 = icmp ne i32 %call167, 0
  br i1 %cmp168, label %if.then170, label %if.end171

if.then170:                                       ; preds = %do.body166
  br label %cleanup

if.end171:                                        ; preds = %do.body166
  br label %do.end172

do.end172:                                        ; preds = %if.end171
  br label %if.end212

if.else173:                                       ; preds = %if.end102
  %call174 = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %pk) #5
  %cmp175 = icmp eq i32 %call174, 2
  br i1 %cmp175, label %if.then177, label %if.else209

if.then177:                                       ; preds = %if.else173
  %49 = bitcast %struct.mbedtls_pk_context* %pk to { %struct.mbedtls_pk_info_t*, i8* }*
  %50 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %49, i32 0, i32 0
  %51 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %50, align 8
  %52 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %49, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %call178 = call %struct.mbedtls_ecp_keypair* @mbedtls_pk_ec(%struct.mbedtls_pk_info_t* %51, i8* %53) #5
  store %struct.mbedtls_ecp_keypair* %call178, %struct.mbedtls_ecp_keypair** %ecp, align 8
  br label %do.body179

do.body179:                                       ; preds = %if.then177
  %54 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %private_Q = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %54, i32 0, i32 2
  %private_X = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %private_Q, i32 0, i32 0
  %call180 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), %struct.mbedtls_mpi* noundef %private_X, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  store i32 %call180, i32* %ret, align 4
  %cmp181 = icmp ne i32 %call180, 0
  br i1 %cmp181, label %if.then183, label %if.end184

if.then183:                                       ; preds = %do.body179
  br label %cleanup

if.end184:                                        ; preds = %do.body179
  br label %do.end185

do.end185:                                        ; preds = %if.end184
  br label %do.body186

do.body186:                                       ; preds = %do.end185
  %55 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %private_Q187 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %55, i32 0, i32 2
  %private_Y = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %private_Q187, i32 0, i32 1
  %call188 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), %struct.mbedtls_mpi* noundef %private_Y, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  store i32 %call188, i32* %ret, align 4
  %cmp189 = icmp ne i32 %call188, 0
  br i1 %cmp189, label %if.then191, label %if.end192

if.then191:                                       ; preds = %do.body186
  br label %cleanup

if.end192:                                        ; preds = %do.body186
  br label %do.end193

do.end193:                                        ; preds = %if.end192
  br label %do.body194

do.body194:                                       ; preds = %do.end193
  %56 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %private_Q195 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %56, i32 0, i32 2
  %private_Z = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %private_Q195, i32 0, i32 2
  %call196 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), %struct.mbedtls_mpi* noundef %private_Z, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  store i32 %call196, i32* %ret, align 4
  %cmp197 = icmp ne i32 %call196, 0
  br i1 %cmp197, label %if.then199, label %if.end200

if.then199:                                       ; preds = %do.body194
  br label %cleanup

if.end200:                                        ; preds = %do.body194
  br label %do.end201

do.end201:                                        ; preds = %if.end200
  br label %do.body202

do.body202:                                       ; preds = %do.end201
  %57 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %private_d = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %57, i32 0, i32 1
  %call203 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), %struct.mbedtls_mpi* noundef %private_d, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  store i32 %call203, i32* %ret, align 4
  %cmp204 = icmp ne i32 %call203, 0
  br i1 %cmp204, label %if.then206, label %if.end207

if.then206:                                       ; preds = %do.body202
  br label %cleanup

if.end207:                                        ; preds = %do.body202
  br label %do.end208

do.end208:                                        ; preds = %if.end207
  br label %if.end211

if.else209:                                       ; preds = %if.else173
  %call210 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.33, i64 0, i64 0)) #5
  br label %cleanup

if.end211:                                        ; preds = %do.end208
  br label %if.end212

if.end212:                                        ; preds = %if.end211, %do.end172
  br label %if.end294

if.else213:                                       ; preds = %for.end
  %58 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  %cmp214 = icmp eq i32 %58, 2
  br i1 %cmp214, label %if.then216, label %if.else292

if.then216:                                       ; preds = %if.else213
  %call217 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.34, i64 0, i64 0)) #5
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call218 = call i32 @fflush(%struct._IO_FILE* noundef %59) #5
  %60 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  %call219 = call i32 @mbedtls_pk_parse_public_keyfile(%struct.mbedtls_pk_context* noundef %pk, i8* noundef %60) #5
  store i32 %call219, i32* %ret, align 4
  %61 = load i32, i32* %ret, align 4
  %cmp220 = icmp ne i32 %61, 0
  br i1 %cmp220, label %if.then222, label %if.end225

if.then222:                                       ; preds = %if.then216
  %62 = load i32, i32* %ret, align 4
  %sub223 = sub nsw i32 0, %62
  %call224 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.35, i64 0, i64 0), i32 noundef %sub223) #5
  br label %cleanup

if.end225:                                        ; preds = %if.then216
  %call226 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)) #5
  %call227 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0)) #5
  %call228 = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %pk) #5
  %cmp229 = icmp eq i32 %call228, 1
  br i1 %cmp229, label %if.then231, label %if.else254

if.then231:                                       ; preds = %if.end225
  %63 = bitcast %struct.mbedtls_pk_context* %pk to { %struct.mbedtls_pk_info_t*, i8* }*
  %64 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %63, i32 0, i32 0
  %65 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %64, align 8
  %66 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %63, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %call233 = call %struct.mbedtls_rsa_context* @mbedtls_pk_rsa(%struct.mbedtls_pk_info_t* %65, i8* %67) #5
  store %struct.mbedtls_rsa_context* %call233, %struct.mbedtls_rsa_context** %rsa232, align 8
  %68 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa232, align 8
  %call234 = call i32 @mbedtls_rsa_export(%struct.mbedtls_rsa_context* noundef %68, %struct.mbedtls_mpi* noundef %N, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef %E) #5
  store i32 %call234, i32* %ret, align 4
  %cmp235 = icmp ne i32 %call234, 0
  br i1 %cmp235, label %if.then237, label %if.end239

if.then237:                                       ; preds = %if.then231
  %call238 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i64 0, i64 0)) #5
  br label %cleanup

if.end239:                                        ; preds = %if.then231
  br label %do.body240

do.body240:                                       ; preds = %if.end239
  %call241 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), %struct.mbedtls_mpi* noundef %N, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  store i32 %call241, i32* %ret, align 4
  %cmp242 = icmp ne i32 %call241, 0
  br i1 %cmp242, label %if.then244, label %if.end245

if.then244:                                       ; preds = %do.body240
  br label %cleanup

if.end245:                                        ; preds = %do.body240
  br label %do.end246

do.end246:                                        ; preds = %if.end245
  br label %do.body247

do.body247:                                       ; preds = %do.end246
  %call248 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), %struct.mbedtls_mpi* noundef %E, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  store i32 %call248, i32* %ret, align 4
  %cmp249 = icmp ne i32 %call248, 0
  br i1 %cmp249, label %if.then251, label %if.end252

if.then251:                                       ; preds = %do.body247
  br label %cleanup

if.end252:                                        ; preds = %do.body247
  br label %do.end253

do.end253:                                        ; preds = %if.end252
  br label %if.end291

if.else254:                                       ; preds = %if.end225
  %call255 = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %pk) #5
  %cmp256 = icmp eq i32 %call255, 2
  br i1 %cmp256, label %if.then258, label %if.else288

if.then258:                                       ; preds = %if.else254
  %69 = bitcast %struct.mbedtls_pk_context* %pk to { %struct.mbedtls_pk_info_t*, i8* }*
  %70 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %69, i32 0, i32 0
  %71 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %70, align 8
  %72 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %69, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %call260 = call %struct.mbedtls_ecp_keypair* @mbedtls_pk_ec(%struct.mbedtls_pk_info_t* %71, i8* %73) #5
  store %struct.mbedtls_ecp_keypair* %call260, %struct.mbedtls_ecp_keypair** %ecp259, align 8
  br label %do.body261

do.body261:                                       ; preds = %if.then258
  %74 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp259, align 8
  %private_Q262 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %74, i32 0, i32 2
  %private_X263 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %private_Q262, i32 0, i32 0
  %call264 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), %struct.mbedtls_mpi* noundef %private_X263, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  store i32 %call264, i32* %ret, align 4
  %cmp265 = icmp ne i32 %call264, 0
  br i1 %cmp265, label %if.then267, label %if.end268

if.then267:                                       ; preds = %do.body261
  br label %cleanup

if.end268:                                        ; preds = %do.body261
  br label %do.end269

do.end269:                                        ; preds = %if.end268
  br label %do.body270

do.body270:                                       ; preds = %do.end269
  %75 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp259, align 8
  %private_Q271 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %75, i32 0, i32 2
  %private_Y272 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %private_Q271, i32 0, i32 1
  %call273 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), %struct.mbedtls_mpi* noundef %private_Y272, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  store i32 %call273, i32* %ret, align 4
  %cmp274 = icmp ne i32 %call273, 0
  br i1 %cmp274, label %if.then276, label %if.end277

if.then276:                                       ; preds = %do.body270
  br label %cleanup

if.end277:                                        ; preds = %do.body270
  br label %do.end278

do.end278:                                        ; preds = %if.end277
  br label %do.body279

do.body279:                                       ; preds = %do.end278
  %76 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp259, align 8
  %private_Q280 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %76, i32 0, i32 2
  %private_Z281 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %private_Q280, i32 0, i32 2
  %call282 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), %struct.mbedtls_mpi* noundef %private_Z281, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  store i32 %call282, i32* %ret, align 4
  %cmp283 = icmp ne i32 %call282, 0
  br i1 %cmp283, label %if.then285, label %if.end286

if.then285:                                       ; preds = %do.body279
  br label %cleanup

if.end286:                                        ; preds = %do.body279
  br label %do.end287

do.end287:                                        ; preds = %if.end286
  br label %if.end290

if.else288:                                       ; preds = %if.else254
  %call289 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.33, i64 0, i64 0)) #5
  br label %cleanup

if.end290:                                        ; preds = %do.end287
  br label %if.end291

if.end291:                                        ; preds = %if.end290, %do.end253
  br label %if.end293

if.else292:                                       ; preds = %if.else213
  br label %usage

if.end293:                                        ; preds = %if.end291
  br label %if.end294

if.end294:                                        ; preds = %if.end293, %if.end212
  store i32 0, i32* %exit_code, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end294, %if.else288, %if.then285, %if.then276, %if.then267, %if.then251, %if.then244, %if.then237, %if.then222, %if.else209, %if.then206, %if.then199, %if.then191, %if.then183, %if.then170, %if.then163, %if.then156, %if.then149, %if.then142, %if.then135, %if.then128, %if.then122, %if.then116, %if.then99, %if.then92, %if.then56, %if.then50, %usage
  %77 = load i32, i32* %exit_code, align 4
  %cmp295 = icmp ne i32 %77, 0
  br i1 %cmp295, label %if.then297, label %if.end301

if.then297:                                       ; preds = %cleanup
  %78 = load i32, i32* %ret, align 4
  %arraydecay298 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %78, i8* noundef %arraydecay298, i64 noundef 1024) #5
  %arraydecay299 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call300 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.36, i64 0, i64 0), i8* noundef %arraydecay299) #5
  br label %if.end301

if.end301:                                        ; preds = %if.then297, %cleanup
  call void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #5
  call void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef %entropy) #5
  call void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef %pk) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %N) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %P) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %Q) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %D) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %E) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %DP) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %DQ) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %QP) #5
  %79 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %79) #8
  unreachable
}

declare dso_local void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef) #1

declare dso_local void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef) #1

declare dso_local void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #2

declare dso_local void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

declare dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_entropy_func(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_pk_parse_keyfile(%struct.mbedtls_pk_context* noundef, i8* noundef, i8* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_random(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbedtls_rsa_context* @mbedtls_pk_rsa(%struct.mbedtls_pk_info_t* %pk.coerce0, i8* %pk.coerce1) #0 {
entry:
  %retval = alloca %struct.mbedtls_rsa_context*, align 8
  %pk = alloca %struct.mbedtls_pk_context, align 8
  %0 = bitcast %struct.mbedtls_pk_context* %pk to { %struct.mbedtls_pk_info_t*, i8* }*
  %1 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %0, i32 0, i32 0
  store %struct.mbedtls_pk_info_t* %pk.coerce0, %struct.mbedtls_pk_info_t** %1, align 8
  %2 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %0, i32 0, i32 1
  store i8* %pk.coerce1, i8** %2, align 8
  %call = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %pk) #5
  switch i32 %call, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %private_pk_ctx = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %pk, i32 0, i32 1
  %3 = load i8*, i8** %private_pk_ctx, align 8
  %4 = bitcast i8* %3 to %struct.mbedtls_rsa_context*
  store %struct.mbedtls_rsa_context* %4, %struct.mbedtls_rsa_context** %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  store %struct.mbedtls_rsa_context* null, %struct.mbedtls_rsa_context** %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %5 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %retval, align 8
  ret %struct.mbedtls_rsa_context* %5
}

declare dso_local i32 @mbedtls_rsa_export(%struct.mbedtls_rsa_context* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_rsa_export_crt(%struct.mbedtls_rsa_context* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_mpi_write_file(i8* noundef, %struct.mbedtls_mpi* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbedtls_ecp_keypair* @mbedtls_pk_ec(%struct.mbedtls_pk_info_t* %pk.coerce0, i8* %pk.coerce1) #0 {
entry:
  %retval = alloca %struct.mbedtls_ecp_keypair*, align 8
  %pk = alloca %struct.mbedtls_pk_context, align 8
  %0 = bitcast %struct.mbedtls_pk_context* %pk to { %struct.mbedtls_pk_info_t*, i8* }*
  %1 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %0, i32 0, i32 0
  store %struct.mbedtls_pk_info_t* %pk.coerce0, %struct.mbedtls_pk_info_t** %1, align 8
  %2 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %0, i32 0, i32 1
  store i8* %pk.coerce1, i8** %2, align 8
  %call = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %pk) #5
  switch i32 %call, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  %private_pk_ctx = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %pk, i32 0, i32 1
  %3 = load i8*, i8** %private_pk_ctx, align 8
  %4 = bitcast i8* %3 to %struct.mbedtls_ecp_keypair*
  store %struct.mbedtls_ecp_keypair* %4, %struct.mbedtls_ecp_keypair** %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  store %struct.mbedtls_ecp_keypair* null, %struct.mbedtls_ecp_keypair** %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %5 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %retval, align 8
  ret %struct.mbedtls_ecp_keypair* %5
}

declare dso_local i32 @mbedtls_pk_parse_public_keyfile(%struct.mbedtls_pk_context* noundef, i8* noundef) #1

declare dso_local void @mbedtls_strerror(i32 noundef, i8* noundef, i64 noundef) #1

declare dso_local void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef) #1

declare dso_local void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef) #1

declare dso_local void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef) #1

declare dso_local void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef) #1

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
