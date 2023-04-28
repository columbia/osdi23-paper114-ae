; ModuleID = 'pkey/key_app_writer.c'
source_filename = "pkey/key_app_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i32, i8*, i32, i8*, i32 }
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
@.str.1 = private unnamed_addr constant [277 x i8] c"\0A usage: key_app_writer param=<>...\0A\0A acceptable parameters:\0A    mode=private|public default: none\0A    filename=%%s         default: keyfile.key\0A    output_mode=private|public default: none\0A    output_file=%%s      default: keyfile.pem\0A    output_format=pem|der default: pem\0A\0A\00", align 1
@opt = dso_local global %struct.options zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"keyfile.key\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"keyfile.pem\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"public\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"output_mode\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"output_format\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"pem\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"der\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"output_file\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"\0ACannot output a key without reading one.\0A\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"\0ACannot output a private key from a public key.\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"\0A  . Loading the private key ...\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [53 x i8] c" failed\0A  !  mbedtls_ctr_drbg_seed returned -0x%04x\0A\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c" failed\0A  !  mbedtls_pk_parse_keyfile returned -0x%04x\00", align 1
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
@.str.33 = private unnamed_addr constant [28 x i8] c"key type not supported yet\0A\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c"\0A  . Loading the public key ...\00", align 1
@.str.35 = private unnamed_addr constant [58 x i8] c" failed\0A  !  mbedtls_pk_parse_public_key returned -0x%04x\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"N: \00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"E: \00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c" - %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"w\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ret = alloca i32, align 4
  %exit_code = alloca i32, align 4
  %buf = alloca [200 x i8], align 16
  %i = alloca i32, align 4
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %pers = alloca i8*, align 8
  %entropy = alloca %struct.mbedtls_entropy_context, align 8
  %ctr_drbg = alloca %struct.mbedtls_ctr_drbg_context, align 8
  %key = alloca %struct.mbedtls_pk_context, align 8
  %N = alloca %struct.mbedtls_mpi, align 8
  %P = alloca %struct.mbedtls_mpi, align 8
  %Q = alloca %struct.mbedtls_mpi, align 8
  %D = alloca %struct.mbedtls_mpi, align 8
  %E = alloca %struct.mbedtls_mpi, align 8
  %DP = alloca %struct.mbedtls_mpi, align 8
  %DQ = alloca %struct.mbedtls_mpi, align 8
  %QP = alloca %struct.mbedtls_mpi, align 8
  %rsa = alloca %struct.mbedtls_rsa_context*, align 8
  %ecp = alloca %struct.mbedtls_ecp_keypair*, align 8
  %rsa140 = alloca %struct.mbedtls_rsa_context*, align 8
  %ecp153 = alloca %struct.mbedtls_ecp_keypair*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %ret, align 4
  store i32 1, i32* %exit_code, align 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %pers, align 8
  call void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef %entropy) #5
  call void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #5
  call void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef %key) #5
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i64 0, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 200) #6
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

usage:                                            ; preds = %if.else168, %if.else55, %if.else44, %if.else30, %if.else16, %if.then5, %if.then
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([277 x i8], [277 x i8]* @.str.1, i64 0, i64 0)) #5
  br label %exit

if.end:                                           ; preds = %entry
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
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
  br label %if.end60

if.else19:                                        ; preds = %if.end6
  %11 = load i8*, i8** %p, align 8
  %call20 = call i32 @strcmp(i8* noundef %11, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0)) #7
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.else33

if.then22:                                        ; preds = %if.else19
  %12 = load i8*, i8** %q, align 8
  %call23 = call i32 @strcmp(i8* noundef %12, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #7
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.then22
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  br label %if.end32

if.else26:                                        ; preds = %if.then22
  %13 = load i8*, i8** %q, align 8
  %call27 = call i32 @strcmp(i8* noundef %13, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #7
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.else26
  store i32 2, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  br label %if.end31

if.else30:                                        ; preds = %if.else26
  br label %usage

if.end31:                                         ; preds = %if.then29
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then25
  br label %if.end59

if.else33:                                        ; preds = %if.else19
  %14 = load i8*, i8** %p, align 8
  %call34 = call i32 @strcmp(i8* noundef %14, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0)) #7
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.else47

if.then36:                                        ; preds = %if.else33
  %15 = load i8*, i8** %q, align 8
  %call37 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)) #7
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.then39, label %if.else40

if.then39:                                        ; preds = %if.then36
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  br label %if.end46

if.else40:                                        ; preds = %if.then36
  %16 = load i8*, i8** %q, align 8
  %call41 = call i32 @strcmp(i8* noundef %16, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #7
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %if.then43, label %if.else44

if.then43:                                        ; preds = %if.else40
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  br label %if.end45

if.else44:                                        ; preds = %if.else40
  br label %usage

if.end45:                                         ; preds = %if.then43
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then39
  br label %if.end58

if.else47:                                        ; preds = %if.else33
  %17 = load i8*, i8** %p, align 8
  %call48 = call i32 @strcmp(i8* noundef %17, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0)) #7
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %if.then50, label %if.else51

if.then50:                                        ; preds = %if.else47
  %18 = load i8*, i8** %q, align 8
  store i8* %18, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  br label %if.end57

if.else51:                                        ; preds = %if.else47
  %19 = load i8*, i8** %p, align 8
  %call52 = call i32 @strcmp(i8* noundef %19, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0)) #7
  %cmp53 = icmp eq i32 %call52, 0
  br i1 %cmp53, label %if.then54, label %if.else55

if.then54:                                        ; preds = %if.else51
  %20 = load i8*, i8** %q, align 8
  store i8* %20, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 8
  br label %if.end56

if.else55:                                        ; preds = %if.else51
  br label %usage

if.end56:                                         ; preds = %if.then54
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then50
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.end46
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end32
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.end18
  br label %for.inc

for.inc:                                          ; preds = %if.end60
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  %cmp61 = icmp eq i32 %22, 0
  br i1 %cmp61, label %land.lhs.true, label %if.end65

land.lhs.true:                                    ; preds = %for.end
  %23 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  %cmp62 = icmp ne i32 %23, 0
  br i1 %cmp62, label %if.then63, label %if.end65

if.then63:                                        ; preds = %land.lhs.true
  %call64 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0)) #5
  br label %exit

if.end65:                                         ; preds = %land.lhs.true, %for.end
  %24 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  %cmp66 = icmp eq i32 %24, 2
  br i1 %cmp66, label %land.lhs.true67, label %if.end71

land.lhs.true67:                                  ; preds = %if.end65
  %25 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  %cmp68 = icmp eq i32 %25, 1
  br i1 %cmp68, label %if.then69, label %if.end71

if.then69:                                        ; preds = %land.lhs.true67
  %call70 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.14, i64 0, i64 0)) #5
  br label %exit

if.end71:                                         ; preds = %land.lhs.true67, %if.end65
  %26 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  %cmp72 = icmp eq i32 %26, 1
  br i1 %cmp72, label %if.then73, label %if.else124

if.then73:                                        ; preds = %if.end71
  %call74 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0)) #5
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call75 = call i32 @fflush(%struct._IO_FILE* noundef %27) #5
  %28 = bitcast %struct.mbedtls_entropy_context* %entropy to i8*
  %29 = load i8*, i8** %pers, align 8
  %30 = load i8*, i8** %pers, align 8
  %call76 = call i64 @strlen(i8* noundef %30) #7
  %call77 = call i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg, i32 (i8*, i8*, i64)* noundef @mbedtls_entropy_func, i8* noundef %28, i8* noundef %29, i64 noundef %call76) #5
  store i32 %call77, i32* %ret, align 4
  %cmp78 = icmp ne i32 %call77, 0
  br i1 %cmp78, label %if.then79, label %if.end81

if.then79:                                        ; preds = %if.then73
  %31 = load i32, i32* %ret, align 4
  %sub = sub nsw i32 0, %31
  %call80 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i64 0, i64 0), i32 noundef %sub) #5
  br label %exit

if.end81:                                         ; preds = %if.then73
  %32 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  %33 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call82 = call i32 @mbedtls_pk_parse_keyfile(%struct.mbedtls_pk_context* noundef %key, i8* noundef %32, i8* noundef null, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %33) #5
  store i32 %call82, i32* %ret, align 4
  %34 = load i32, i32* %ret, align 4
  %cmp83 = icmp ne i32 %34, 0
  br i1 %cmp83, label %if.then84, label %if.end87

if.then84:                                        ; preds = %if.end81
  %35 = load i32, i32* %ret, align 4
  %sub85 = sub nsw i32 0, %35
  %call86 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i64 0, i64 0), i32 noundef %sub85) #5
  br label %exit

if.end87:                                         ; preds = %if.end81
  %call88 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)) #5
  %call89 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0)) #5
  %call90 = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %key) #5
  %cmp91 = icmp eq i32 %call90, 1
  br i1 %cmp91, label %if.then92, label %if.else109

if.then92:                                        ; preds = %if.end87
  %36 = bitcast %struct.mbedtls_pk_context* %key to { %struct.mbedtls_pk_info_t*, i8* }*
  %37 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %36, i32 0, i32 0
  %38 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %37, align 8
  %39 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %36, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %call93 = call %struct.mbedtls_rsa_context* @mbedtls_pk_rsa(%struct.mbedtls_pk_info_t* %38, i8* %40) #5
  store %struct.mbedtls_rsa_context* %call93, %struct.mbedtls_rsa_context** %rsa, align 8
  %41 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %call94 = call i32 @mbedtls_rsa_export(%struct.mbedtls_rsa_context* noundef %41, %struct.mbedtls_mpi* noundef %N, %struct.mbedtls_mpi* noundef %P, %struct.mbedtls_mpi* noundef %Q, %struct.mbedtls_mpi* noundef %D, %struct.mbedtls_mpi* noundef %E) #5
  store i32 %call94, i32* %ret, align 4
  %cmp95 = icmp ne i32 %call94, 0
  br i1 %cmp95, label %if.then98, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then92
  %42 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %call96 = call i32 @mbedtls_rsa_export_crt(%struct.mbedtls_rsa_context* noundef %42, %struct.mbedtls_mpi* noundef %DP, %struct.mbedtls_mpi* noundef %DQ, %struct.mbedtls_mpi* noundef %QP) #5
  store i32 %call96, i32* %ret, align 4
  %cmp97 = icmp ne i32 %call96, 0
  br i1 %cmp97, label %if.then98, label %if.end100

if.then98:                                        ; preds = %lor.lhs.false, %if.then92
  %call99 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i64 0, i64 0)) #5
  br label %exit

if.end100:                                        ; preds = %lor.lhs.false
  %call101 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), %struct.mbedtls_mpi* noundef %N, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  %call102 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), %struct.mbedtls_mpi* noundef %E, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  %call103 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), %struct.mbedtls_mpi* noundef %D, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  %call104 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), %struct.mbedtls_mpi* noundef %P, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  %call105 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), %struct.mbedtls_mpi* noundef %Q, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  %call106 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), %struct.mbedtls_mpi* noundef %DP, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  %call107 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), %struct.mbedtls_mpi* noundef %DQ, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  %call108 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), %struct.mbedtls_mpi* noundef %QP, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  br label %if.end123

if.else109:                                       ; preds = %if.end87
  %call110 = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %key) #5
  %cmp111 = icmp eq i32 %call110, 2
  br i1 %cmp111, label %if.then112, label %if.else120

if.then112:                                       ; preds = %if.else109
  %43 = bitcast %struct.mbedtls_pk_context* %key to { %struct.mbedtls_pk_info_t*, i8* }*
  %44 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %43, i32 0, i32 0
  %45 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %44, align 8
  %46 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %43, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %call113 = call %struct.mbedtls_ecp_keypair* @mbedtls_pk_ec(%struct.mbedtls_pk_info_t* %45, i8* %47) #5
  store %struct.mbedtls_ecp_keypair* %call113, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %48 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %private_Q = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %48, i32 0, i32 2
  %private_X = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %private_Q, i32 0, i32 0
  %call114 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), %struct.mbedtls_mpi* noundef %private_X, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  %49 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %private_Q115 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %49, i32 0, i32 2
  %private_Y = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %private_Q115, i32 0, i32 1
  %call116 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), %struct.mbedtls_mpi* noundef %private_Y, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  %50 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %private_Q117 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %50, i32 0, i32 2
  %private_Z = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %private_Q117, i32 0, i32 2
  %call118 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), %struct.mbedtls_mpi* noundef %private_Z, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  %51 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %private_d = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %51, i32 0, i32 1
  %call119 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), %struct.mbedtls_mpi* noundef %private_d, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  br label %if.end122

if.else120:                                       ; preds = %if.else109
  %call121 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0)) #5
  br label %if.end122

if.end122:                                        ; preds = %if.else120, %if.then112
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %if.end100
  br label %if.end170

if.else124:                                       ; preds = %if.end71
  %52 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  %cmp125 = icmp eq i32 %52, 2
  br i1 %cmp125, label %if.then126, label %if.else168

if.then126:                                       ; preds = %if.else124
  %call127 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.34, i64 0, i64 0)) #5
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call128 = call i32 @fflush(%struct._IO_FILE* noundef %53) #5
  %54 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  %call129 = call i32 @mbedtls_pk_parse_public_keyfile(%struct.mbedtls_pk_context* noundef %key, i8* noundef %54) #5
  store i32 %call129, i32* %ret, align 4
  %55 = load i32, i32* %ret, align 4
  %cmp130 = icmp ne i32 %55, 0
  br i1 %cmp130, label %if.then131, label %if.end134

if.then131:                                       ; preds = %if.then126
  %56 = load i32, i32* %ret, align 4
  %sub132 = sub nsw i32 0, %56
  %call133 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.35, i64 0, i64 0), i32 noundef %sub132) #5
  br label %exit

if.end134:                                        ; preds = %if.then126
  %call135 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)) #5
  %call136 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0)) #5
  %call137 = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %key) #5
  %cmp138 = icmp eq i32 %call137, 1
  br i1 %cmp138, label %if.then139, label %if.else149

if.then139:                                       ; preds = %if.end134
  %57 = bitcast %struct.mbedtls_pk_context* %key to { %struct.mbedtls_pk_info_t*, i8* }*
  %58 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %57, i32 0, i32 0
  %59 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %58, align 8
  %60 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %57, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %call141 = call %struct.mbedtls_rsa_context* @mbedtls_pk_rsa(%struct.mbedtls_pk_info_t* %59, i8* %61) #5
  store %struct.mbedtls_rsa_context* %call141, %struct.mbedtls_rsa_context** %rsa140, align 8
  %62 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa140, align 8
  %call142 = call i32 @mbedtls_rsa_export(%struct.mbedtls_rsa_context* noundef %62, %struct.mbedtls_mpi* noundef %N, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef %E) #5
  store i32 %call142, i32* %ret, align 4
  %cmp143 = icmp ne i32 %call142, 0
  br i1 %cmp143, label %if.then144, label %if.end146

if.then144:                                       ; preds = %if.then139
  %call145 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i64 0, i64 0)) #5
  br label %exit

if.end146:                                        ; preds = %if.then139
  %call147 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0), %struct.mbedtls_mpi* noundef %N, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  %call148 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0), %struct.mbedtls_mpi* noundef %E, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  br label %if.end167

if.else149:                                       ; preds = %if.end134
  %call150 = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %key) #5
  %cmp151 = icmp eq i32 %call150, 2
  br i1 %cmp151, label %if.then152, label %if.else164

if.then152:                                       ; preds = %if.else149
  %63 = bitcast %struct.mbedtls_pk_context* %key to { %struct.mbedtls_pk_info_t*, i8* }*
  %64 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %63, i32 0, i32 0
  %65 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %64, align 8
  %66 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %63, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %call154 = call %struct.mbedtls_ecp_keypair* @mbedtls_pk_ec(%struct.mbedtls_pk_info_t* %65, i8* %67) #5
  store %struct.mbedtls_ecp_keypair* %call154, %struct.mbedtls_ecp_keypair** %ecp153, align 8
  %68 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp153, align 8
  %private_Q155 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %68, i32 0, i32 2
  %private_X156 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %private_Q155, i32 0, i32 0
  %call157 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), %struct.mbedtls_mpi* noundef %private_X156, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  %69 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp153, align 8
  %private_Q158 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %69, i32 0, i32 2
  %private_Y159 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %private_Q158, i32 0, i32 1
  %call160 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), %struct.mbedtls_mpi* noundef %private_Y159, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  %70 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp153, align 8
  %private_Q161 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %70, i32 0, i32 2
  %private_Z162 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %private_Q161, i32 0, i32 2
  %call163 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), %struct.mbedtls_mpi* noundef %private_Z162, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  br label %if.end166

if.else164:                                       ; preds = %if.else149
  %call165 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0)) #5
  br label %if.end166

if.end166:                                        ; preds = %if.else164, %if.then152
  br label %if.end167

if.end167:                                        ; preds = %if.end166, %if.end146
  br label %if.end169

if.else168:                                       ; preds = %if.else124
  br label %usage

if.end169:                                        ; preds = %if.end167
  br label %if.end170

if.end170:                                        ; preds = %if.end169, %if.end123
  %71 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  %cmp171 = icmp eq i32 %71, 2
  br i1 %cmp171, label %if.then172, label %if.end174

if.then172:                                       ; preds = %if.end170
  %72 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 8
  %call173 = call i32 @write_public_key(%struct.mbedtls_pk_context* noundef %key, i8* noundef %72) #5
  br label %if.end174

if.end174:                                        ; preds = %if.then172, %if.end170
  %73 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  %cmp175 = icmp eq i32 %73, 1
  br i1 %cmp175, label %if.then176, label %if.end178

if.then176:                                       ; preds = %if.end174
  %74 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 8
  %call177 = call i32 @write_private_key(%struct.mbedtls_pk_context* noundef %key, i8* noundef %74) #5
  br label %if.end178

if.end178:                                        ; preds = %if.then176, %if.end174
  store i32 0, i32* %exit_code, align 4
  br label %exit

exit:                                             ; preds = %if.end178, %if.then144, %if.then131, %if.then98, %if.then84, %if.then79, %if.then69, %if.then63, %usage
  %75 = load i32, i32* %exit_code, align 4
  %cmp179 = icmp ne i32 %75, 0
  br i1 %cmp179, label %if.then180, label %if.end184

if.then180:                                       ; preds = %exit
  %76 = load i32, i32* %ret, align 4
  %arraydecay181 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %76, i8* noundef %arraydecay181, i64 noundef 200) #5
  %arraydecay182 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i64 0, i64 0
  %call183 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0), i8* noundef %arraydecay182) #5
  br label %if.end184

if.end184:                                        ; preds = %if.then180, %exit
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %N) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %P) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %Q) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %D) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %E) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %DP) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %DQ) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %QP) #5
  call void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef %key) #5
  call void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #5
  call void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef %entropy) #5
  %77 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %77) #8
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

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_entropy_func(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

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

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_public_key(%struct.mbedtls_pk_context* noundef %key, i8* noundef %output_file) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca %struct.mbedtls_pk_context*, align 8
  %output_file.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %f = alloca %struct._IO_FILE*, align 8
  %output_buf = alloca [16000 x i8], align 16
  %c = alloca i8*, align 8
  %len = alloca i64, align 8
  store %struct.mbedtls_pk_context* %key, %struct.mbedtls_pk_context** %key.addr, align 8
  store i8* %output_file, i8** %output_file.addr, align 8
  %arraydecay = getelementptr inbounds [16000 x i8], [16000 x i8]* %output_buf, i64 0, i64 0
  store i8* %arraydecay, i8** %c, align 8
  store i64 0, i64* %len, align 8
  %arraydecay1 = getelementptr inbounds [16000 x i8], [16000 x i8]* %output_buf, i64 0, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay1, i32 noundef 0, i64 noundef 16000) #6
  %0 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %key.addr, align 8
  %arraydecay2 = getelementptr inbounds [16000 x i8], [16000 x i8]* %output_buf, i64 0, i64 0
  %call3 = call i32 @mbedtls_pk_write_pubkey_pem(%struct.mbedtls_pk_context* noundef %1, i8* noundef %arraydecay2, i64 noundef 16000) #5
  store i32 %call3, i32* %ret, align 4
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %2 = load i32, i32* %ret, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %arraydecay6 = getelementptr inbounds [16000 x i8], [16000 x i8]* %output_buf, i64 0, i64 0
  %call7 = call i64 @strlen(i8* noundef %arraydecay6) #7
  store i64 %call7, i64* %len, align 8
  br label %if.end15

if.else:                                          ; preds = %entry
  %3 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %key.addr, align 8
  %arraydecay8 = getelementptr inbounds [16000 x i8], [16000 x i8]* %output_buf, i64 0, i64 0
  %call9 = call i32 @mbedtls_pk_write_pubkey_der(%struct.mbedtls_pk_context* noundef %3, i8* noundef %arraydecay8, i64 noundef 16000) #5
  store i32 %call9, i32* %ret, align 4
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.else
  %4 = load i32, i32* %ret, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.else
  %5 = load i32, i32* %ret, align 4
  %conv = sext i32 %5 to i64
  store i64 %conv, i64* %len, align 8
  %arraydecay13 = getelementptr inbounds [16000 x i8], [16000 x i8]* %output_buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay13, i64 16000
  %6 = load i64, i64* %len, align 8
  %idx.neg = sub i64 0, %6
  %add.ptr14 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  store i8* %add.ptr14, i8** %c, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.end12, %if.end
  %7 = load i8*, i8** %output_file.addr, align 8
  %call16 = call %struct._IO_FILE* @fopen(i8* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0)) #5
  store %struct._IO_FILE* %call16, %struct._IO_FILE** %f, align 8
  %cmp17 = icmp eq %struct._IO_FILE* %call16, null
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end15
  store i32 -1, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end15
  %8 = load i8*, i8** %c, align 8
  %9 = load i64, i64* %len, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call21 = call i64 @fwrite(i8* noundef %8, i64 noundef 1, i64 noundef %9, %struct._IO_FILE* noundef %10) #5
  %11 = load i64, i64* %len, align 8
  %cmp22 = icmp ne i64 %call21, %11
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end20
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call25 = call i32 @fclose(%struct._IO_FILE* noundef %12) #5
  store i32 -1, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end20
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call27 = call i32 @fclose(%struct._IO_FILE* noundef %13) #5
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end26, %if.then24, %if.then19, %if.then11, %if.then5
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_private_key(%struct.mbedtls_pk_context* noundef %key, i8* noundef %output_file) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca %struct.mbedtls_pk_context*, align 8
  %output_file.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %f = alloca %struct._IO_FILE*, align 8
  %output_buf = alloca [16000 x i8], align 16
  %c = alloca i8*, align 8
  %len = alloca i64, align 8
  store %struct.mbedtls_pk_context* %key, %struct.mbedtls_pk_context** %key.addr, align 8
  store i8* %output_file, i8** %output_file.addr, align 8
  %arraydecay = getelementptr inbounds [16000 x i8], [16000 x i8]* %output_buf, i64 0, i64 0
  store i8* %arraydecay, i8** %c, align 8
  store i64 0, i64* %len, align 8
  %arraydecay1 = getelementptr inbounds [16000 x i8], [16000 x i8]* %output_buf, i64 0, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay1, i32 noundef 0, i64 noundef 16000) #6
  %0 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %key.addr, align 8
  %arraydecay2 = getelementptr inbounds [16000 x i8], [16000 x i8]* %output_buf, i64 0, i64 0
  %call3 = call i32 @mbedtls_pk_write_key_pem(%struct.mbedtls_pk_context* noundef %1, i8* noundef %arraydecay2, i64 noundef 16000) #5
  store i32 %call3, i32* %ret, align 4
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %2 = load i32, i32* %ret, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %arraydecay6 = getelementptr inbounds [16000 x i8], [16000 x i8]* %output_buf, i64 0, i64 0
  %call7 = call i64 @strlen(i8* noundef %arraydecay6) #7
  store i64 %call7, i64* %len, align 8
  br label %if.end15

if.else:                                          ; preds = %entry
  %3 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %key.addr, align 8
  %arraydecay8 = getelementptr inbounds [16000 x i8], [16000 x i8]* %output_buf, i64 0, i64 0
  %call9 = call i32 @mbedtls_pk_write_key_der(%struct.mbedtls_pk_context* noundef %3, i8* noundef %arraydecay8, i64 noundef 16000) #5
  store i32 %call9, i32* %ret, align 4
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.else
  %4 = load i32, i32* %ret, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.else
  %5 = load i32, i32* %ret, align 4
  %conv = sext i32 %5 to i64
  store i64 %conv, i64* %len, align 8
  %arraydecay13 = getelementptr inbounds [16000 x i8], [16000 x i8]* %output_buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay13, i64 16000
  %6 = load i64, i64* %len, align 8
  %idx.neg = sub i64 0, %6
  %add.ptr14 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  store i8* %add.ptr14, i8** %c, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.end12, %if.end
  %7 = load i8*, i8** %output_file.addr, align 8
  %call16 = call %struct._IO_FILE* @fopen(i8* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0)) #5
  store %struct._IO_FILE* %call16, %struct._IO_FILE** %f, align 8
  %cmp17 = icmp eq %struct._IO_FILE* %call16, null
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end15
  store i32 -1, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end15
  %8 = load i8*, i8** %c, align 8
  %9 = load i64, i64* %len, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call21 = call i64 @fwrite(i8* noundef %8, i64 noundef 1, i64 noundef %9, %struct._IO_FILE* noundef %10) #5
  %11 = load i64, i64* %len, align 8
  %cmp22 = icmp ne i64 %call21, %11
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end20
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call25 = call i32 @fclose(%struct._IO_FILE* noundef %12) #5
  store i32 -1, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end20
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call27 = call i32 @fclose(%struct._IO_FILE* noundef %13) #5
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end26, %if.then24, %if.then19, %if.then11, %if.then5
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

declare dso_local void @mbedtls_strerror(i32 noundef, i8* noundef, i64 noundef) #1

declare dso_local void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef) #1

declare dso_local void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef) #1

declare dso_local void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef) #1

declare dso_local void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

declare dso_local i32 @mbedtls_pk_write_pubkey_pem(%struct.mbedtls_pk_context* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_pk_write_pubkey_der(%struct.mbedtls_pk_context* noundef, i8* noundef, i64 noundef) #1

declare dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

declare dso_local i32 @mbedtls_pk_write_key_pem(%struct.mbedtls_pk_context* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_pk_write_key_der(%struct.mbedtls_pk_context* noundef, i8* noundef, i64 noundef) #1

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
