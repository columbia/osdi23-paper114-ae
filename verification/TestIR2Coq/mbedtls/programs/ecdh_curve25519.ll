; ModuleID = 'pkey/ecdh_curve25519.c'
source_filename = "pkey/ecdh_curve25519.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.mbedtls_ecdh_context = type { i8, i32, i32, %union.anon }
%union.anon = type { %struct.mbedtls_ecdh_context_mbed }
%struct.mbedtls_ecdh_context_mbed = type { %struct.mbedtls_ecp_group, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point, %struct.mbedtls_mpi }
%struct.mbedtls_ecp_group = type { i32, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point, %struct.mbedtls_mpi, i64, i64, i32, i32 (%struct.mbedtls_mpi*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i8*, %struct.mbedtls_ecp_point*, i64 }
%struct.mbedtls_ecp_point = type { %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi }
%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.mbedtls_entropy_context = type { i32, %struct.mbedtls_sha512_context, i32, [20 x %struct.mbedtls_entropy_source_state] }
%struct.mbedtls_sha512_context = type { [2 x i64], [8 x i64], [128 x i8], i32 }
%struct.mbedtls_entropy_source_state = type { i32 (i8*, i8*, i64, i64*)*, i8*, i64, i64, i32 }
%struct.mbedtls_ctr_drbg_context = type { [16 x i8], i32, i32, i64, i32, %struct.mbedtls_aes_context, i32 (i8*, i8*, i64)*, i8* }
%struct.mbedtls_aes_context = type { i32, i32*, [68 x i32] }

@__const.main.pers = private unnamed_addr constant [5 x i8] c"ecdh\00", align 1
@.str = private unnamed_addr constant [40 x i8] c"  . Seed the random number generator...\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c" failed\0A  ! mbedtls_ctr_drbg_seed returned %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" ok\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"  . Set up client context, generate EC key pair...\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c" failed\0A  ! mbedtls_ecdh_setup returned %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c" failed\0A  ! mbedtls_ecdh_make_params returned %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"  . Server: read params, generate public key...\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c" failed\0A  ! mbedtls_ecdh_read_params returned %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c" failed\0A  ! mbedtls_ecdh_make_public returned %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"  . Client: read public key...\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c" failed\0A  ! mbedtls_ecdh_read_public returned %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"  . Calculate secrets...\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c" failed\0A  ! mbedtls_ecdh_calc_secret returned %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"  . Check if both calculated secrets are equal...\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c" failed\0A  ! Shared secrets not equal.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ret = alloca i32, align 4
  %exit_code = alloca i32, align 4
  %ctx_cli = alloca %struct.mbedtls_ecdh_context, align 8
  %ctx_srv = alloca %struct.mbedtls_ecdh_context, align 8
  %entropy = alloca %struct.mbedtls_entropy_context, align 8
  %ctr_drbg = alloca %struct.mbedtls_ctr_drbg_context, align 8
  %cli_to_srv = alloca [36 x i8], align 16
  %srv_to_cli = alloca [33 x i8], align 16
  %pers = alloca [5 x i8], align 1
  %srv_olen = alloca i64, align 8
  %cli_olen = alloca i64, align 8
  %secret_cli = alloca [32 x i8], align 16
  %secret_srv = alloca [32 x i8], align 16
  %p_cli_to_srv = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %ret, align 4
  store i32 1, i32* %exit_code, align 4
  %0 = bitcast [5 x i8]* %pers to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.main.pers, i32 0, i32 0), i64 5, i1 false)
  %1 = bitcast [32 x i8]* %secret_cli to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 32, i1 false)
  %2 = bitcast [32 x i8]* %secret_srv to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 32, i1 false)
  %arraydecay = getelementptr inbounds [36 x i8], [36 x i8]* %cli_to_srv, i64 0, i64 0
  store i8* %arraydecay, i8** %p_cli_to_srv, align 8
  %3 = load i32, i32* %argc.addr, align 4
  %4 = load i8**, i8*** %argv.addr, align 8
  call void @mbedtls_ecdh_init(%struct.mbedtls_ecdh_context* noundef %ctx_cli) #6
  call void @mbedtls_ecdh_init(%struct.mbedtls_ecdh_context* noundef %ctx_srv) #6
  call void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #6
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0)) #6
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* noundef %5) #6
  call void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef %entropy) #6
  %6 = bitcast %struct.mbedtls_entropy_context* %entropy to i8*
  %arraydecay2 = getelementptr inbounds [5 x i8], [5 x i8]* %pers, i64 0, i64 0
  %call3 = call i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg, i32 (i8*, i8*, i64)* noundef @mbedtls_entropy_func, i8* noundef %6, i8* noundef %arraydecay2, i64 noundef 5) #6
  store i32 %call3, i32* %ret, align 4
  %cmp = icmp ne i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %ret, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 noundef %7) #6
  br label %exit

if.end:                                           ; preds = %entry
  %call5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #6
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0)) #6
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call7 = call i32 @fflush(%struct._IO_FILE* noundef %8) #6
  %call8 = call i32 @mbedtls_ecdh_setup(%struct.mbedtls_ecdh_context* noundef %ctx_cli, i32 noundef 9) #6
  store i32 %call8, i32* %ret, align 4
  %9 = load i32, i32* %ret, align 4
  %cmp9 = icmp ne i32 %9, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  %10 = load i32, i32* %ret, align 4
  %call11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 noundef %10) #6
  br label %exit

if.end12:                                         ; preds = %if.end
  %arraydecay13 = getelementptr inbounds [36 x i8], [36 x i8]* %cli_to_srv, i64 0, i64 0
  %11 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call14 = call i32 @mbedtls_ecdh_make_params(%struct.mbedtls_ecdh_context* noundef %ctx_cli, i64* noundef %cli_olen, i8* noundef %arraydecay13, i64 noundef 36, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %11) #6
  store i32 %call14, i32* %ret, align 4
  %12 = load i32, i32* %ret, align 4
  %cmp15 = icmp ne i32 %12, 0
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end12
  %13 = load i32, i32* %ret, align 4
  %call17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 noundef %13) #6
  br label %exit

if.end18:                                         ; preds = %if.end12
  %call19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #6
  %call20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0)) #6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call21 = call i32 @fflush(%struct._IO_FILE* noundef %14) #6
  %15 = load i8*, i8** %p_cli_to_srv, align 8
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 36
  %call22 = call i32 @mbedtls_ecdh_read_params(%struct.mbedtls_ecdh_context* noundef %ctx_srv, i8** noundef %p_cli_to_srv, i8* noundef %add.ptr) #6
  store i32 %call22, i32* %ret, align 4
  %16 = load i32, i32* %ret, align 4
  %cmp23 = icmp ne i32 %16, 0
  br i1 %cmp23, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end18
  %17 = load i32, i32* %ret, align 4
  %call25 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 noundef %17) #6
  br label %exit

if.end26:                                         ; preds = %if.end18
  %arraydecay27 = getelementptr inbounds [33 x i8], [33 x i8]* %srv_to_cli, i64 0, i64 0
  %18 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call28 = call i32 @mbedtls_ecdh_make_public(%struct.mbedtls_ecdh_context* noundef %ctx_srv, i64* noundef %srv_olen, i8* noundef %arraydecay27, i64 noundef 33, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %18) #6
  store i32 %call28, i32* %ret, align 4
  %19 = load i32, i32* %ret, align 4
  %cmp29 = icmp ne i32 %19, 0
  br i1 %cmp29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end26
  %20 = load i32, i32* %ret, align 4
  %call31 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i32 noundef %20) #6
  br label %exit

if.end32:                                         ; preds = %if.end26
  %call33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #6
  %call34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0)) #6
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call35 = call i32 @fflush(%struct._IO_FILE* noundef %21) #6
  %arraydecay36 = getelementptr inbounds [33 x i8], [33 x i8]* %srv_to_cli, i64 0, i64 0
  %call37 = call i32 @mbedtls_ecdh_read_public(%struct.mbedtls_ecdh_context* noundef %ctx_cli, i8* noundef %arraydecay36, i64 noundef 33) #6
  store i32 %call37, i32* %ret, align 4
  %22 = load i32, i32* %ret, align 4
  %cmp38 = icmp ne i32 %22, 0
  br i1 %cmp38, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end32
  %23 = load i32, i32* %ret, align 4
  %call40 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0), i32 noundef %23) #6
  br label %exit

if.end41:                                         ; preds = %if.end32
  %call42 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #6
  %call43 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0)) #6
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call44 = call i32 @fflush(%struct._IO_FILE* noundef %24) #6
  %arraydecay45 = getelementptr inbounds [32 x i8], [32 x i8]* %secret_cli, i64 0, i64 0
  %25 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call46 = call i32 @mbedtls_ecdh_calc_secret(%struct.mbedtls_ecdh_context* noundef %ctx_cli, i64* noundef %cli_olen, i8* noundef %arraydecay45, i64 noundef 32, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %25) #6
  store i32 %call46, i32* %ret, align 4
  %26 = load i32, i32* %ret, align 4
  %cmp47 = icmp ne i32 %26, 0
  br i1 %cmp47, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.end41
  %27 = load i32, i32* %ret, align 4
  %call49 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0), i32 noundef %27) #6
  br label %exit

if.end50:                                         ; preds = %if.end41
  %arraydecay51 = getelementptr inbounds [32 x i8], [32 x i8]* %secret_srv, i64 0, i64 0
  %28 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call52 = call i32 @mbedtls_ecdh_calc_secret(%struct.mbedtls_ecdh_context* noundef %ctx_srv, i64* noundef %srv_olen, i8* noundef %arraydecay51, i64 noundef 32, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %28) #6
  store i32 %call52, i32* %ret, align 4
  %29 = load i32, i32* %ret, align 4
  %cmp53 = icmp ne i32 %29, 0
  br i1 %cmp53, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.end50
  %30 = load i32, i32* %ret, align 4
  %call55 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0), i32 noundef %30) #6
  br label %exit

if.end56:                                         ; preds = %if.end50
  %call57 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #6
  %call58 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0)) #6
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call59 = call i32 @fflush(%struct._IO_FILE* noundef %31) #6
  %arraydecay60 = getelementptr inbounds [32 x i8], [32 x i8]* %secret_srv, i64 0, i64 0
  %arraydecay61 = getelementptr inbounds [32 x i8], [32 x i8]* %secret_cli, i64 0, i64 0
  %32 = load i64, i64* %srv_olen, align 8
  %call62 = call i32 @memcmp(i8* noundef %arraydecay60, i8* noundef %arraydecay61, i64 noundef %32) #7
  store i32 %call62, i32* %ret, align 4
  %33 = load i32, i32* %ret, align 4
  %cmp63 = icmp ne i32 %33, 0
  br i1 %cmp63, label %if.then65, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end56
  %34 = load i64, i64* %cli_olen, align 8
  %35 = load i64, i64* %srv_olen, align 8
  %cmp64 = icmp ne i64 %34, %35
  br i1 %cmp64, label %if.then65, label %if.end67

if.then65:                                        ; preds = %lor.lhs.false, %if.end56
  %call66 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0)) #6
  br label %exit

if.end67:                                         ; preds = %lor.lhs.false
  %call68 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #6
  store i32 0, i32* %exit_code, align 4
  br label %exit

exit:                                             ; preds = %if.end67, %if.then65, %if.then54, %if.then48, %if.then39, %if.then30, %if.then24, %if.then16, %if.then10, %if.then
  call void @mbedtls_ecdh_free(%struct.mbedtls_ecdh_context* noundef %ctx_srv) #6
  call void @mbedtls_ecdh_free(%struct.mbedtls_ecdh_context* noundef %ctx_cli) #6
  call void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #6
  call void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef %entropy) #6
  %36 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %36) #8
  unreachable
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local void @mbedtls_ecdh_init(%struct.mbedtls_ecdh_context* noundef) #3

declare dso_local void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef) #3

declare dso_local i32 @printf(i8* noundef, ...) #3

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #3

declare dso_local void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef) #3

declare dso_local i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i8* noundef, i64 noundef) #3

declare dso_local i32 @mbedtls_entropy_func(i8* noundef, i8* noundef, i64 noundef) #3

declare dso_local i32 @mbedtls_ecdh_setup(%struct.mbedtls_ecdh_context* noundef, i32 noundef) #3

declare dso_local i32 @mbedtls_ecdh_make_params(%struct.mbedtls_ecdh_context* noundef, i64* noundef, i8* noundef, i64 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #3

declare dso_local i32 @mbedtls_ctr_drbg_random(i8* noundef, i8* noundef, i64 noundef) #3

declare dso_local i32 @mbedtls_ecdh_read_params(%struct.mbedtls_ecdh_context* noundef, i8** noundef, i8* noundef) #3

declare dso_local i32 @mbedtls_ecdh_make_public(%struct.mbedtls_ecdh_context* noundef, i64* noundef, i8* noundef, i64 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #3

declare dso_local i32 @mbedtls_ecdh_read_public(%struct.mbedtls_ecdh_context* noundef, i8* noundef, i64 noundef) #3

declare dso_local i32 @mbedtls_ecdh_calc_secret(%struct.mbedtls_ecdh_context* noundef, i64* noundef, i8* noundef, i64 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #4

declare dso_local void @mbedtls_ecdh_free(%struct.mbedtls_ecdh_context* noundef) #3

declare dso_local void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef) #3

declare dso_local void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #8 = { nobuiltin noreturn nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
