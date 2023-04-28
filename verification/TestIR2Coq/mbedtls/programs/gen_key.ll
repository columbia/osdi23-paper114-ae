; ModuleID = 'pkey/gen_key.c'
source_filename = "pkey/gen_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i32, i32, i32, i8*, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.mbedtls_pk_context = type { %struct.mbedtls_pk_info_t*, i8* }
%struct.mbedtls_pk_info_t = type opaque
%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.mbedtls_entropy_context = type { i32, %struct.mbedtls_sha512_context, i32, [20 x %struct.mbedtls_entropy_source_state] }
%struct.mbedtls_sha512_context = type { [2 x i64], [8 x i64], [128 x i8], i32 }
%struct.mbedtls_entropy_source_state = type { i32 (i8*, i8*, i64, i64*)*, i8*, i64, i64, i32 }
%struct.mbedtls_ctr_drbg_context = type { [16 x i8], i32, i32, i64, i32, %struct.mbedtls_aes_context, i32 (i8*, i8*, i64)*, i8* }
%struct.mbedtls_aes_context = type { i32, i32*, [68 x i32] }
%struct.mbedtls_ecp_curve_info = type { i32, i16, i16, i8* }
%struct.mbedtls_rsa_context = type { i32, i64, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, i32, i32 }
%struct.mbedtls_ecp_keypair = type { %struct.mbedtls_ecp_group, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point }
%struct.mbedtls_ecp_group = type { i32, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point, %struct.mbedtls_mpi, i64, i64, i32, i32 (%struct.mbedtls_mpi*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i8*, %struct.mbedtls_ecp_point*, i64 }
%struct.mbedtls_ecp_point = type { %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi }

@.str = private unnamed_addr constant [12 x i8] c"/dev/random\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"gen_key\00", align 1
@.str.3 = private unnamed_addr constant [297 x i8] c"\0A usage: gen_key param=<>...\0A\0A acceptable parameters:\0A    type=rsa|ec           default: rsa\0A    rsa_keysize=%%d        default: 4096\0A    ec_curve=%%s           see below\0A    filename=%%s           default: keyfile.key\0A    format=pem|der        default: pem\0A    use_dev_random=0|1    default: 0\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c" available ec_curve values:\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"    %s (default)\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"    %s\0A\00", align 1
@opt = dso_local global %struct.options zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [12 x i8] c"keyfile.key\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"rsa\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"ec\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"pem\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"der\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"rsa_keysize\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"ec_curve\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"use_dev_random\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"\0A  . Seeding the random number generator...\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.19 = private unnamed_addr constant [57 x i8] c" failed\0A  ! mbedtls_entropy_add_source returned -0x%04x\0A\00", align 1
@.str.20 = private unnamed_addr constant [50 x i8] c"\0A    Using /dev/random, so can take a long time! \00", align 1
@.str.21 = private unnamed_addr constant [52 x i8] c" failed\0A  ! mbedtls_ctr_drbg_seed returned -0x%04x\0A\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"\0A  . Generating the private key ...\00", align 1
@.str.23 = private unnamed_addr constant [47 x i8] c" failed\0A  !  mbedtls_pk_setup returned -0x%04x\00", align 1
@.str.24 = private unnamed_addr constant [50 x i8] c" failed\0A  !  mbedtls_rsa_gen_key returned -0x%04x\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c" failed\0A  !  mbedtls_ecp_gen_key returned -0x%04x\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c" failed\0A  !  key type not supported\0A\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c" ok\0A  . Key information:\0A\00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c" failed\0A  ! could not export RSA parameters\0A\0A\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"N:  \00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"E:  \00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"D:  \00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"P:  \00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"Q:  \00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"DP: \00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"DQ:  \00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"QP:  \00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"curve: %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"X_Q:   \00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"Y_Q:   \00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"D:     \00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"  ! key type not supported\0A\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"  . Writing key to file...\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c" failed\0A\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c" ok\0A\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c" - %s\0A\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"wb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_random_entropy_poll(i8* noundef %data, i8* noundef %output, i64 noundef %len, i64* noundef %olen) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %olen.addr = alloca i64*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %ret = alloca i64, align 8
  %left = alloca i64, align 8
  %p = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  %0 = load i64, i64* %len.addr, align 8
  store i64 %0, i64* %left, align 8
  %1 = load i8*, i8** %output.addr, align 8
  store i8* %1, i8** %p, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %3 = load i64*, i64** %olen.addr, align 8
  store i64 0, i64* %3, align 8
  %call = call %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #5
  store %struct._IO_FILE* %call, %struct._IO_FILE** %file, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %cmp = icmp eq %struct._IO_FILE* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -60, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end7, %if.end
  %5 = load i64, i64* %left, align 8
  %cmp1 = icmp ugt i64 %5, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %p, align 8
  %7 = load i64, i64* %left, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call2 = call i64 @fread(i8* noundef %6, i64 noundef 1, i64 noundef %7, %struct._IO_FILE* noundef %8) #5
  store i64 %call2, i64* %ret, align 8
  %9 = load i64, i64* %ret, align 8
  %cmp3 = icmp eq i64 %9, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %while.body
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call4 = call i32 @ferror(%struct._IO_FILE* noundef %10) #6
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then5, label %if.end7

if.then5:                                         ; preds = %land.lhs.true
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call6 = call i32 @fclose(%struct._IO_FILE* noundef %11) #5
  store i32 -60, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %while.body
  %12 = load i64, i64* %ret, align 8
  %13 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %12
  store i8* %add.ptr, i8** %p, align 8
  %14 = load i64, i64* %ret, align 8
  %15 = load i64, i64* %left, align 8
  %sub = sub i64 %15, %14
  store i64 %sub, i64* %left, align 8
  %call8 = call i32 @sleep(i32 noundef 1) #5
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call9 = call i32 @fclose(%struct._IO_FILE* noundef %16) #5
  %17 = load i64, i64* %len.addr, align 8
  %18 = load i64*, i64** %olen.addr, align 8
  store i64 %17, i64* %18, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then5, %if.then
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

declare dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @ferror(%struct._IO_FILE* noundef) #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

declare dso_local i32 @sleep(i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ret = alloca i32, align 4
  %exit_code = alloca i32, align 4
  %key = alloca %struct.mbedtls_pk_context, align 8
  %buf = alloca [1024 x i8], align 16
  %i = alloca i32, align 4
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
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
  %pers = alloca i8*, align 8
  %curve_info = alloca %struct.mbedtls_ecp_curve_info*, align 8
  %rsa = alloca %struct.mbedtls_rsa_context*, align 8
  %ecp = alloca %struct.mbedtls_ecp_keypair*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %ret, align 4
  store i32 1, i32* %exit_code, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %pers, align 8
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %N) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %P) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %Q) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %D) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %E) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %DP) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %DQ) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %QP) #5
  call void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef %key) #5
  call void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #5
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 1024) #6
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %usage

usage:                                            ; preds = %if.else74, %if.then72, %if.then57, %if.then49, %if.else39, %if.else25, %if.then13, %if.then
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([297 x i8], [297 x i8]* @.str.3, i64 0, i64 0)) #5
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0)) #5
  %call3 = call %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_list() #5
  store %struct.mbedtls_ecp_curve_info* %call3, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %1 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %name = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %1, i32 0, i32 3
  %2 = load i8*, i8** %name, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* noundef %2) #5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %usage
  %3 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %incdec.ptr = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %3, i32 1
  store %struct.mbedtls_ecp_curve_info* %incdec.ptr, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %name5 = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %incdec.ptr, i32 0, i32 3
  %4 = load i8*, i8** %name5, align 8
  %cmp6 = icmp ne i8* %4, null
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %name7 = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %5, i32 0, i32 3
  %6 = load i8*, i8** %name7, align 8
  %call8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* noundef %6) #5
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  br label %exit

if.end:                                           ; preds = %entry
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  store i32 4096, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 4
  %call9 = call %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_list() #5
  %grp_id = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %call9, i32 0, i32 0
  %7 = load i32, i32* %grp_id, align 8
  store i32 %7, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %argc.addr, align 4
  %cmp10 = icmp slt i32 %8, %9
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i8**, i8*** %argv.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %12 = load i8*, i8** %arrayidx, align 8
  store i8* %12, i8** %p, align 8
  %13 = load i8*, i8** %p, align 8
  %call11 = call i8* @strchr(i8* noundef %13, i32 noundef 61) #7
  store i8* %call11, i8** %q, align 8
  %cmp12 = icmp eq i8* %call11, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.body
  br label %usage

if.end14:                                         ; preds = %for.body
  %14 = load i8*, i8** %q, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr15, i8** %q, align 8
  store i8 0, i8* %14, align 1
  %15 = load i8*, i8** %p, align 8
  %call16 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)) #7
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.else28

if.then18:                                        ; preds = %if.end14
  %16 = load i8*, i8** %q, align 8
  %call19 = call i32 @strcmp(i8* noundef %16, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)) #7
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then18
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  br label %if.end27

if.else:                                          ; preds = %if.then18
  %17 = load i8*, i8** %q, align 8
  %call22 = call i32 @strcmp(i8* noundef %17, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)) #7
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %if.else25

if.then24:                                        ; preds = %if.else
  store i32 2, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  br label %if.end26

if.else25:                                        ; preds = %if.else
  br label %usage

if.end26:                                         ; preds = %if.then24
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then21
  br label %if.end80

if.else28:                                        ; preds = %if.end14
  %18 = load i8*, i8** %p, align 8
  %call29 = call i32 @strcmp(i8* noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0)) #7
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.else42

if.then31:                                        ; preds = %if.else28
  %19 = load i8*, i8** %q, align 8
  %call32 = call i32 @strcmp(i8* noundef %19, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #7
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.then31
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  br label %if.end41

if.else35:                                        ; preds = %if.then31
  %20 = load i8*, i8** %q, align 8
  %call36 = call i32 @strcmp(i8* noundef %20, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0)) #7
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.then38, label %if.else39

if.then38:                                        ; preds = %if.else35
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  br label %if.end40

if.else39:                                        ; preds = %if.else35
  br label %usage

if.end40:                                         ; preds = %if.then38
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then34
  br label %if.end79

if.else42:                                        ; preds = %if.else28
  %21 = load i8*, i8** %p, align 8
  %call43 = call i32 @strcmp(i8* noundef %21, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0)) #7
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %if.then45, label %if.else51

if.then45:                                        ; preds = %if.else42
  %22 = load i8*, i8** %q, align 8
  %call46 = call i32 @atoi(i8* noundef %22) #7
  store i32 %call46, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 4
  %cmp47 = icmp slt i32 %23, 1024
  br i1 %cmp47, label %if.then49, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then45
  %24 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 4
  %cmp48 = icmp sgt i32 %24, 8192
  br i1 %cmp48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %lor.lhs.false, %if.then45
  br label %usage

if.end50:                                         ; preds = %lor.lhs.false
  br label %if.end78

if.else51:                                        ; preds = %if.else42
  %25 = load i8*, i8** %p, align 8
  %call52 = call i32 @strcmp(i8* noundef %25, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0)) #7
  %cmp53 = icmp eq i32 %call52, 0
  br i1 %cmp53, label %if.then54, label %if.else60

if.then54:                                        ; preds = %if.else51
  %26 = load i8*, i8** %q, align 8
  %call55 = call %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_info_from_name(i8* noundef %26) #5
  store %struct.mbedtls_ecp_curve_info* %call55, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %cmp56 = icmp eq %struct.mbedtls_ecp_curve_info* %call55, null
  br i1 %cmp56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.then54
  br label %usage

if.end58:                                         ; preds = %if.then54
  %27 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %grp_id59 = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %27, i32 0, i32 0
  %28 = load i32, i32* %grp_id59, align 8
  store i32 %28, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  br label %if.end77

if.else60:                                        ; preds = %if.else51
  %29 = load i8*, i8** %p, align 8
  %call61 = call i32 @strcmp(i8* noundef %29, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0)) #7
  %cmp62 = icmp eq i32 %call61, 0
  br i1 %cmp62, label %if.then63, label %if.else64

if.then63:                                        ; preds = %if.else60
  %30 = load i8*, i8** %q, align 8
  store i8* %30, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 8
  br label %if.end76

if.else64:                                        ; preds = %if.else60
  %31 = load i8*, i8** %p, align 8
  %call65 = call i32 @strcmp(i8* noundef %31, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0)) #7
  %cmp66 = icmp eq i32 %call65, 0
  br i1 %cmp66, label %if.then67, label %if.else74

if.then67:                                        ; preds = %if.else64
  %32 = load i8*, i8** %q, align 8
  %call68 = call i32 @atoi(i8* noundef %32) #7
  store i32 %call68, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 4
  %cmp69 = icmp slt i32 %33, 0
  br i1 %cmp69, label %if.then72, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %if.then67
  %34 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 4
  %cmp71 = icmp sgt i32 %34, 1
  br i1 %cmp71, label %if.then72, label %if.end73

if.then72:                                        ; preds = %lor.lhs.false70, %if.then67
  br label %usage

if.end73:                                         ; preds = %lor.lhs.false70
  br label %if.end75

if.else74:                                        ; preds = %if.else64
  br label %usage

if.end75:                                         ; preds = %if.end73
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.then63
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.end58
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.end50
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.end41
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.end27
  br label %for.inc

for.inc:                                          ; preds = %if.end80
  %35 = load i32, i32* %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %call81 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i64 0, i64 0)) #5
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call82 = call i32 @fflush(%struct._IO_FILE* noundef %36) #5
  call void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef %entropy) #5
  %37 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 4
  %tobool = icmp ne i32 %37, 0
  br i1 %tobool, label %if.then83, label %if.end91

if.then83:                                        ; preds = %for.end
  %call84 = call i32 @mbedtls_entropy_add_source(%struct.mbedtls_entropy_context* noundef %entropy, i32 (i8*, i8*, i64, i64*)* noundef @dev_random_entropy_poll, i8* noundef null, i64 noundef 32, i32 noundef 1) #5
  store i32 %call84, i32* %ret, align 4
  %cmp85 = icmp ne i32 %call84, 0
  br i1 %cmp85, label %if.then86, label %if.end88

if.then86:                                        ; preds = %if.then83
  %38 = load i32, i32* %ret, align 4
  %sub = sub nsw i32 0, %38
  %call87 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.19, i64 0, i64 0), i32 noundef %sub) #5
  br label %exit

if.end88:                                         ; preds = %if.then83
  %call89 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.20, i64 0, i64 0)) #5
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call90 = call i32 @fflush(%struct._IO_FILE* noundef %39) #5
  br label %if.end91

if.end91:                                         ; preds = %if.end88, %for.end
  %40 = bitcast %struct.mbedtls_entropy_context* %entropy to i8*
  %41 = load i8*, i8** %pers, align 8
  %42 = load i8*, i8** %pers, align 8
  %call92 = call i64 @strlen(i8* noundef %42) #7
  %call93 = call i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg, i32 (i8*, i8*, i64)* noundef @mbedtls_entropy_func, i8* noundef %40, i8* noundef %41, i64 noundef %call92) #5
  store i32 %call93, i32* %ret, align 4
  %cmp94 = icmp ne i32 %call93, 0
  br i1 %cmp94, label %if.then95, label %if.end98

if.then95:                                        ; preds = %if.end91
  %43 = load i32, i32* %ret, align 4
  %sub96 = sub nsw i32 0, %43
  %call97 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.21, i64 0, i64 0), i32 noundef %sub96) #5
  br label %exit

if.end98:                                         ; preds = %if.end91
  %call99 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i64 0, i64 0)) #5
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call100 = call i32 @fflush(%struct._IO_FILE* noundef %44) #5
  %45 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  %call101 = call %struct.mbedtls_pk_info_t* @mbedtls_pk_info_from_type(i32 noundef %45) #5
  %call102 = call i32 @mbedtls_pk_setup(%struct.mbedtls_pk_context* noundef %key, %struct.mbedtls_pk_info_t* noundef %call101) #5
  store i32 %call102, i32* %ret, align 4
  %cmp103 = icmp ne i32 %call102, 0
  br i1 %cmp103, label %if.then104, label %if.end107

if.then104:                                       ; preds = %if.end98
  %46 = load i32, i32* %ret, align 4
  %sub105 = sub nsw i32 0, %46
  %call106 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.23, i64 0, i64 0), i32 noundef %sub105) #5
  br label %exit

if.end107:                                        ; preds = %if.end98
  %47 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  %cmp108 = icmp eq i32 %47, 1
  br i1 %cmp108, label %if.then109, label %if.else117

if.then109:                                       ; preds = %if.end107
  %48 = bitcast %struct.mbedtls_pk_context* %key to { %struct.mbedtls_pk_info_t*, i8* }*
  %49 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %48, i32 0, i32 0
  %50 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %49, align 8
  %51 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %48, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %call110 = call %struct.mbedtls_rsa_context* @mbedtls_pk_rsa(%struct.mbedtls_pk_info_t* %50, i8* %52) #5
  %53 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %54 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 4
  %call111 = call i32 @mbedtls_rsa_gen_key(%struct.mbedtls_rsa_context* noundef %call110, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %53, i32 noundef %54, i32 noundef 65537) #5
  store i32 %call111, i32* %ret, align 4
  %55 = load i32, i32* %ret, align 4
  %cmp112 = icmp ne i32 %55, 0
  br i1 %cmp112, label %if.then113, label %if.end116

if.then113:                                       ; preds = %if.then109
  %56 = load i32, i32* %ret, align 4
  %sub114 = sub nsw i32 0, %56
  %call115 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.24, i64 0, i64 0), i32 noundef %sub114) #5
  br label %exit

if.end116:                                        ; preds = %if.then109
  br label %if.end130

if.else117:                                       ; preds = %if.end107
  %57 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  %cmp118 = icmp eq i32 %57, 2
  br i1 %cmp118, label %if.then119, label %if.else127

if.then119:                                       ; preds = %if.else117
  %58 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  %59 = bitcast %struct.mbedtls_pk_context* %key to { %struct.mbedtls_pk_info_t*, i8* }*
  %60 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %59, i32 0, i32 0
  %61 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %60, align 8
  %62 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %59, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %call120 = call %struct.mbedtls_ecp_keypair* @mbedtls_pk_ec(%struct.mbedtls_pk_info_t* %61, i8* %63) #5
  %64 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call121 = call i32 @mbedtls_ecp_gen_key(i32 noundef %58, %struct.mbedtls_ecp_keypair* noundef %call120, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %64) #5
  store i32 %call121, i32* %ret, align 4
  %65 = load i32, i32* %ret, align 4
  %cmp122 = icmp ne i32 %65, 0
  br i1 %cmp122, label %if.then123, label %if.end126

if.then123:                                       ; preds = %if.then119
  %66 = load i32, i32* %ret, align 4
  %sub124 = sub nsw i32 0, %66
  %call125 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.25, i64 0, i64 0), i32 noundef %sub124) #5
  br label %exit

if.end126:                                        ; preds = %if.then119
  br label %if.end129

if.else127:                                       ; preds = %if.else117
  %call128 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.26, i64 0, i64 0)) #5
  br label %exit

if.end129:                                        ; preds = %if.end126
  br label %if.end130

if.end130:                                        ; preds = %if.end129, %if.end116
  %call131 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0)) #5
  %call132 = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %key) #5
  %cmp133 = icmp eq i32 %call132, 1
  br i1 %cmp133, label %if.then134, label %if.else152

if.then134:                                       ; preds = %if.end130
  %67 = bitcast %struct.mbedtls_pk_context* %key to { %struct.mbedtls_pk_info_t*, i8* }*
  %68 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %67, i32 0, i32 0
  %69 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %68, align 8
  %70 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %67, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %call135 = call %struct.mbedtls_rsa_context* @mbedtls_pk_rsa(%struct.mbedtls_pk_info_t* %69, i8* %71) #5
  store %struct.mbedtls_rsa_context* %call135, %struct.mbedtls_rsa_context** %rsa, align 8
  %72 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %call136 = call i32 @mbedtls_rsa_export(%struct.mbedtls_rsa_context* noundef %72, %struct.mbedtls_mpi* noundef %N, %struct.mbedtls_mpi* noundef %P, %struct.mbedtls_mpi* noundef %Q, %struct.mbedtls_mpi* noundef %D, %struct.mbedtls_mpi* noundef %E) #5
  store i32 %call136, i32* %ret, align 4
  %cmp137 = icmp ne i32 %call136, 0
  br i1 %cmp137, label %if.then141, label %lor.lhs.false138

lor.lhs.false138:                                 ; preds = %if.then134
  %73 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %call139 = call i32 @mbedtls_rsa_export_crt(%struct.mbedtls_rsa_context* noundef %73, %struct.mbedtls_mpi* noundef %DP, %struct.mbedtls_mpi* noundef %DQ, %struct.mbedtls_mpi* noundef %QP) #5
  store i32 %call139, i32* %ret, align 4
  %cmp140 = icmp ne i32 %call139, 0
  br i1 %cmp140, label %if.then141, label %if.end143

if.then141:                                       ; preds = %lor.lhs.false138, %if.then134
  %call142 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i64 0, i64 0)) #5
  br label %exit

if.end143:                                        ; preds = %lor.lhs.false138
  %call144 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), %struct.mbedtls_mpi* noundef %N, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  %call145 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), %struct.mbedtls_mpi* noundef %E, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  %call146 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), %struct.mbedtls_mpi* noundef %D, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  %call147 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), %struct.mbedtls_mpi* noundef %P, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  %call148 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), %struct.mbedtls_mpi* noundef %Q, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  %call149 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), %struct.mbedtls_mpi* noundef %DP, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  %call150 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), %struct.mbedtls_mpi* noundef %DQ, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  %call151 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0), %struct.mbedtls_mpi* noundef %QP, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  br label %if.end167

if.else152:                                       ; preds = %if.end130
  %call153 = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %key) #5
  %cmp154 = icmp eq i32 %call153, 2
  br i1 %cmp154, label %if.then155, label %if.else164

if.then155:                                       ; preds = %if.else152
  %74 = bitcast %struct.mbedtls_pk_context* %key to { %struct.mbedtls_pk_info_t*, i8* }*
  %75 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %74, i32 0, i32 0
  %76 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %75, align 8
  %77 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %74, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %call156 = call %struct.mbedtls_ecp_keypair* @mbedtls_pk_ec(%struct.mbedtls_pk_info_t* %76, i8* %78) #5
  store %struct.mbedtls_ecp_keypair* %call156, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %79 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %private_grp = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %79, i32 0, i32 0
  %id = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %private_grp, i32 0, i32 0
  %80 = load i32, i32* %id, align 8
  %call157 = call %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_info_from_grp_id(i32 noundef %80) #5
  %name158 = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %call157, i32 0, i32 3
  %81 = load i8*, i8** %name158, align 8
  %call159 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i64 0, i64 0), i8* noundef %81) #5
  %82 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %private_Q = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %82, i32 0, i32 2
  %private_X = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %private_Q, i32 0, i32 0
  %call160 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i64 0, i64 0), %struct.mbedtls_mpi* noundef %private_X, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  %83 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %private_Q161 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %83, i32 0, i32 2
  %private_Y = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %private_Q161, i32 0, i32 1
  %call162 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0), %struct.mbedtls_mpi* noundef %private_Y, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  %84 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %private_d = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %84, i32 0, i32 1
  %call163 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0), %struct.mbedtls_mpi* noundef %private_d, i32 noundef 16, %struct._IO_FILE* noundef null) #5
  br label %if.end166

if.else164:                                       ; preds = %if.else152
  %call165 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.41, i64 0, i64 0)) #5
  br label %if.end166

if.end166:                                        ; preds = %if.else164, %if.then155
  br label %if.end167

if.end167:                                        ; preds = %if.end166, %if.end143
  %call168 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.42, i64 0, i64 0)) #5
  %85 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 8
  %call169 = call i32 @write_private_key(%struct.mbedtls_pk_context* noundef %key, i8* noundef %85) #5
  store i32 %call169, i32* %ret, align 4
  %cmp170 = icmp ne i32 %call169, 0
  br i1 %cmp170, label %if.then171, label %if.end173

if.then171:                                       ; preds = %if.end167
  %call172 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i64 0, i64 0)) #5
  br label %exit

if.end173:                                        ; preds = %if.end167
  %call174 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0)) #5
  store i32 0, i32* %exit_code, align 4
  br label %exit

exit:                                             ; preds = %if.end173, %if.then171, %if.then141, %if.else127, %if.then123, %if.then113, %if.then104, %if.then95, %if.then86, %while.end
  %86 = load i32, i32* %exit_code, align 4
  %cmp175 = icmp ne i32 %86, 0
  br i1 %cmp175, label %if.then176, label %if.end180

if.then176:                                       ; preds = %exit
  %87 = load i32, i32* %ret, align 4
  %arraydecay177 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %87, i8* noundef %arraydecay177, i64 noundef 1024) #5
  %arraydecay178 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call179 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0), i8* noundef %arraydecay178) #5
  br label %if.end180

if.end180:                                        ; preds = %if.then176, %exit
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
  %88 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %88) #8
  unreachable
}

declare dso_local void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef) #1

declare dso_local void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef) #1

declare dso_local void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_list() #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #3

declare dso_local %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_info_from_name(i8* noundef) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

declare dso_local void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef) #1

declare dso_local i32 @mbedtls_entropy_add_source(%struct.mbedtls_entropy_context* noundef, i32 (i8*, i8*, i64, i64*)* noundef, i8* noundef, i64 noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_entropy_func(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

declare dso_local i32 @mbedtls_pk_setup(%struct.mbedtls_pk_context* noundef, %struct.mbedtls_pk_info_t* noundef) #1

declare dso_local %struct.mbedtls_pk_info_t* @mbedtls_pk_info_from_type(i32 noundef) #1

declare dso_local i32 @mbedtls_rsa_gen_key(%struct.mbedtls_rsa_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i32 noundef, i32 noundef) #1

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

declare dso_local i32 @mbedtls_ctr_drbg_random(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_ecp_gen_key(i32 noundef, %struct.mbedtls_ecp_keypair* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

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

declare dso_local i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef) #1

declare dso_local i32 @mbedtls_rsa_export(%struct.mbedtls_rsa_context* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_rsa_export_crt(%struct.mbedtls_rsa_context* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_mpi_write_file(i8* noundef, %struct.mbedtls_mpi* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

declare dso_local %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_info_from_grp_id(i32 noundef) #1

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
  %call16 = call %struct._IO_FILE* @fopen(i8* noundef %7, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0)) #5
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

declare dso_local i32 @mbedtls_pk_write_key_pem(%struct.mbedtls_pk_context* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_pk_write_key_der(%struct.mbedtls_pk_context* noundef, i8* noundef, i64 noundef) #1

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
