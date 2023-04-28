; ModuleID = 'pkey/ecdsa.c'
source_filename = "pkey/ecdsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.mbedtls_ecp_keypair = type { %struct.mbedtls_ecp_group, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point }
%struct.mbedtls_ecp_group = type { i32, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point, %struct.mbedtls_mpi, i64, i64, i32, i32 (%struct.mbedtls_mpi*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i8*, %struct.mbedtls_ecp_point*, i64 }
%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.mbedtls_ecp_point = type { %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi }
%struct.mbedtls_entropy_context = type { i32, %struct.mbedtls_sha512_context, i32, [20 x %struct.mbedtls_entropy_source_state] }
%struct.mbedtls_sha512_context = type { [2 x i64], [8 x i64], [128 x i8], i32 }
%struct.mbedtls_entropy_source_state = type { i32 (i8*, i8*, i64, i64*)*, i8*, i64, i64, i32 }
%struct.mbedtls_ctr_drbg_context = type { [16 x i8], i32, i32, i64, i32, %struct.mbedtls_aes_context, i32 (i8*, i8*, i64)*, i8* }
%struct.mbedtls_aes_context = type { i32, i32*, [68 x i32] }

@.str = private unnamed_addr constant [6 x i8] c"ecdsa\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"usage: ecdsa\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"\0A  . Seeding the random number generator...\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [47 x i8] c" failed\0A  ! mbedtls_ctr_drbg_seed returned %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c" ok\0A  . Generating key pair...\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c" failed\0A  ! mbedtls_ecdsa_genkey returned %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c" ok (key size: %d bits)\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"  + Public key: \00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"  . Computing message hash...\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c" failed\0A  ! mbedtls_sha256 returned %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c" ok\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"  + Hash: \00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"  . Signing message hash...\00", align 1
@.str.13 = private unnamed_addr constant [55 x i8] c" failed\0A  ! mbedtls_ecdsa_write_signature returned %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c" ok (signature length = %u)\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"  + Signature: \00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"  . Preparing verification context...\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c" failed\0A  ! mbedtls_ecp_group_copy returned %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c" failed\0A  ! mbedtls_ecp_copy returned %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c" ok\0A  . Verifying signature...\00", align 1
@.str.20 = private unnamed_addr constant [54 x i8] c" failed\0A  ! mbedtls_ecdsa_read_signature returned %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"internal error\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"%c%c\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ret = alloca i32, align 4
  %exit_code = alloca i32, align 4
  %ctx_sign = alloca %struct.mbedtls_ecp_keypair, align 8
  %ctx_verify = alloca %struct.mbedtls_ecp_keypair, align 8
  %entropy = alloca %struct.mbedtls_entropy_context, align 8
  %ctr_drbg = alloca %struct.mbedtls_ctr_drbg_context, align 8
  %message = alloca [100 x i8], align 16
  %hash = alloca [32 x i8], align 16
  %sig = alloca [139 x i8], align 16
  %sig_len = alloca i64, align 8
  %pers = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %ret, align 4
  store i32 1, i32* %exit_code, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %pers, align 8
  %0 = load i8**, i8*** %argv.addr, align 8
  call void @mbedtls_ecdsa_init(%struct.mbedtls_ecp_keypair* noundef %ctx_sign) #5
  call void @mbedtls_ecdsa_init(%struct.mbedtls_ecp_keypair* noundef %ctx_verify) #5
  call void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #5
  %arraydecay = getelementptr inbounds [139 x i8], [139 x i8]* %sig, i64 0, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 139) #6
  %arraydecay1 = getelementptr inbounds [100 x i8], [100 x i8]* %message, i64 0, i64 0
  %call2 = call i8* @memset(i8* noundef %arraydecay1, i32 noundef 37, i64 noundef 100) #6
  %1 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)) #5
  br label %exit

if.end:                                           ; preds = %entry
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0)) #5
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call5 = call i32 @fflush(%struct._IO_FILE* noundef %2) #5
  call void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef %entropy) #5
  %3 = bitcast %struct.mbedtls_entropy_context* %entropy to i8*
  %4 = load i8*, i8** %pers, align 8
  %5 = load i8*, i8** %pers, align 8
  %call6 = call i64 @strlen(i8* noundef %5) #7
  %call7 = call i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg, i32 (i8*, i8*, i64)* noundef @mbedtls_entropy_func, i8* noundef %3, i8* noundef %4, i64 noundef %call6) #5
  store i32 %call7, i32* %ret, align 4
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  %6 = load i32, i32* %ret, align 4
  %call10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 noundef %6) #5
  br label %exit

if.end11:                                         ; preds = %if.end
  %call12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0)) #5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call13 = call i32 @fflush(%struct._IO_FILE* noundef %7) #5
  %8 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call14 = call i32 @mbedtls_ecdsa_genkey(%struct.mbedtls_ecp_keypair* noundef %ctx_sign, i32 noundef 1, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %8) #5
  store i32 %call14, i32* %ret, align 4
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end11
  %9 = load i32, i32* %ret, align 4
  %call17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 noundef %9) #5
  br label %exit

if.end18:                                         ; preds = %if.end11
  %private_grp = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %ctx_sign, i32 0, i32 0
  %pbits = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %private_grp, i32 0, i32 6
  %10 = load i64, i64* %pbits, align 8
  %conv = trunc i64 %10 to i32
  %call19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 noundef %conv) #5
  call void @dump_pubkey(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), %struct.mbedtls_ecp_keypair* noundef %ctx_sign) #5
  %call20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0)) #5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call21 = call i32 @fflush(%struct._IO_FILE* noundef %11) #5
  %arraydecay22 = getelementptr inbounds [100 x i8], [100 x i8]* %message, i64 0, i64 0
  %arraydecay23 = getelementptr inbounds [32 x i8], [32 x i8]* %hash, i64 0, i64 0
  %call24 = call i32 @mbedtls_sha256(i8* noundef %arraydecay22, i64 noundef 100, i8* noundef %arraydecay23, i32 noundef 0) #5
  store i32 %call24, i32* %ret, align 4
  %cmp25 = icmp ne i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end18
  %12 = load i32, i32* %ret, align 4
  %call28 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 noundef %12) #5
  br label %exit

if.end29:                                         ; preds = %if.end18
  %call30 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)) #5
  %arraydecay31 = getelementptr inbounds [32 x i8], [32 x i8]* %hash, i64 0, i64 0
  call void @dump_buf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* noundef %arraydecay31, i64 noundef 32) #5
  %call32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0)) #5
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call33 = call i32 @fflush(%struct._IO_FILE* noundef %13) #5
  %arraydecay34 = getelementptr inbounds [32 x i8], [32 x i8]* %hash, i64 0, i64 0
  %arraydecay35 = getelementptr inbounds [139 x i8], [139 x i8]* %sig, i64 0, i64 0
  %14 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call36 = call i32 @mbedtls_ecdsa_write_signature(%struct.mbedtls_ecp_keypair* noundef %ctx_sign, i32 noundef 4, i8* noundef %arraydecay34, i64 noundef 32, i8* noundef %arraydecay35, i64 noundef 139, i64* noundef %sig_len, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %14) #5
  store i32 %call36, i32* %ret, align 4
  %cmp37 = icmp ne i32 %call36, 0
  br i1 %cmp37, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end29
  %15 = load i32, i32* %ret, align 4
  %call40 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.13, i64 0, i64 0), i32 noundef %15) #5
  br label %exit

if.end41:                                         ; preds = %if.end29
  %16 = load i64, i64* %sig_len, align 8
  %conv42 = trunc i64 %16 to i32
  %call43 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef %conv42) #5
  %arraydecay44 = getelementptr inbounds [139 x i8], [139 x i8]* %sig, i64 0, i64 0
  %17 = load i64, i64* %sig_len, align 8
  call void @dump_buf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* noundef %arraydecay44, i64 noundef %17) #5
  %call45 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0)) #5
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call46 = call i32 @fflush(%struct._IO_FILE* noundef %18) #5
  %private_grp47 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %ctx_verify, i32 0, i32 0
  %private_grp48 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %ctx_sign, i32 0, i32 0
  %call49 = call i32 @mbedtls_ecp_group_copy(%struct.mbedtls_ecp_group* noundef %private_grp47, %struct.mbedtls_ecp_group* noundef %private_grp48) #5
  store i32 %call49, i32* %ret, align 4
  %cmp50 = icmp ne i32 %call49, 0
  br i1 %cmp50, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.end41
  %19 = load i32, i32* %ret, align 4
  %call53 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.17, i64 0, i64 0), i32 noundef %19) #5
  br label %exit

if.end54:                                         ; preds = %if.end41
  %private_Q = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %ctx_verify, i32 0, i32 2
  %private_Q55 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %ctx_sign, i32 0, i32 2
  %call56 = call i32 @mbedtls_ecp_copy(%struct.mbedtls_ecp_point* noundef %private_Q, %struct.mbedtls_ecp_point* noundef %private_Q55) #5
  store i32 %call56, i32* %ret, align 4
  %cmp57 = icmp ne i32 %call56, 0
  br i1 %cmp57, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.end54
  %20 = load i32, i32* %ret, align 4
  %call60 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0), i32 noundef %20) #5
  br label %exit

if.end61:                                         ; preds = %if.end54
  %call62 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0)) #5
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call63 = call i32 @fflush(%struct._IO_FILE* noundef %21) #5
  %arraydecay64 = getelementptr inbounds [32 x i8], [32 x i8]* %hash, i64 0, i64 0
  %arraydecay65 = getelementptr inbounds [139 x i8], [139 x i8]* %sig, i64 0, i64 0
  %22 = load i64, i64* %sig_len, align 8
  %call66 = call i32 @mbedtls_ecdsa_read_signature(%struct.mbedtls_ecp_keypair* noundef %ctx_verify, i8* noundef %arraydecay64, i64 noundef 32, i8* noundef %arraydecay65, i64 noundef %22) #5
  store i32 %call66, i32* %ret, align 4
  %cmp67 = icmp ne i32 %call66, 0
  br i1 %cmp67, label %if.then69, label %if.end71

if.then69:                                        ; preds = %if.end61
  %23 = load i32, i32* %ret, align 4
  %call70 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.20, i64 0, i64 0), i32 noundef %23) #5
  br label %exit

if.end71:                                         ; preds = %if.end61
  %call72 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)) #5
  store i32 0, i32* %exit_code, align 4
  br label %exit

exit:                                             ; preds = %if.end71, %if.then69, %if.then59, %if.then52, %if.then39, %if.then27, %if.then16, %if.then9, %if.then
  call void @mbedtls_ecdsa_free(%struct.mbedtls_ecp_keypair* noundef %ctx_verify) #5
  call void @mbedtls_ecdsa_free(%struct.mbedtls_ecp_keypair* noundef %ctx_sign) #5
  call void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #5
  call void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef %entropy) #5
  %24 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %24) #8
  unreachable
}

declare dso_local void @mbedtls_ecdsa_init(%struct.mbedtls_ecp_keypair* noundef) #1

declare dso_local void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

declare dso_local void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_entropy_func(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

declare dso_local i32 @mbedtls_ecdsa_genkey(%struct.mbedtls_ecp_keypair* noundef, i32 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_random(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_pubkey(i8* noundef %title, %struct.mbedtls_ecp_keypair* noundef %key) #0 {
entry:
  %title.addr = alloca i8*, align 8
  %key.addr = alloca %struct.mbedtls_ecp_keypair*, align 8
  %buf = alloca [300 x i8], align 16
  %len = alloca i64, align 8
  store i8* %title, i8** %title.addr, align 8
  store %struct.mbedtls_ecp_keypair* %key, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %0 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %private_grp = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %private_Q = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %1, i32 0, i32 2
  %arraydecay = getelementptr inbounds [300 x i8], [300 x i8]* %buf, i64 0, i64 0
  %call = call i32 @mbedtls_ecp_point_write_binary(%struct.mbedtls_ecp_group* noundef %private_grp, %struct.mbedtls_ecp_point* noundef %private_Q, i32 noundef 0, i64* noundef %len, i8* noundef %arraydecay, i64 noundef 300) #5
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0)) #5
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %title.addr, align 8
  %arraydecay2 = getelementptr inbounds [300 x i8], [300 x i8]* %buf, i64 0, i64 0
  %3 = load i64, i64* %len, align 8
  call void @dump_buf(i8* noundef %2, i8* noundef %arraydecay2, i64 noundef %3) #5
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare dso_local i32 @mbedtls_sha256(i8* noundef, i64 noundef, i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_buf(i8* noundef %title, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %title.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %title, i8** %title.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %title.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i8* noundef %0) #5
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %buf.addr, align 8
  %4 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %4
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %div = sdiv i32 %conv, 16
  %idxprom = sext i32 %div to i64
  %arrayidx1 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.24, i64 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx1, align 1
  %conv2 = sext i8 %6 to i32
  %7 = load i8*, i8** %buf.addr, align 8
  %8 = load i64, i64* %i, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %7, i64 %8
  %9 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %9 to i32
  %rem = srem i32 %conv4, 16
  %idxprom5 = sext i32 %rem to i64
  %arrayidx6 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.24, i64 0, i64 %idxprom5
  %10 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %10 to i32
  %call8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i32 noundef %conv2, i32 noundef %conv7) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i64, i64* %i, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)) #5
  ret void
}

declare dso_local i32 @mbedtls_ecdsa_write_signature(%struct.mbedtls_ecp_keypair* noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_ecp_group_copy(%struct.mbedtls_ecp_group* noundef, %struct.mbedtls_ecp_group* noundef) #1

declare dso_local i32 @mbedtls_ecp_copy(%struct.mbedtls_ecp_point* noundef, %struct.mbedtls_ecp_point* noundef) #1

declare dso_local i32 @mbedtls_ecdsa_read_signature(%struct.mbedtls_ecp_keypair* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) #1

declare dso_local void @mbedtls_ecdsa_free(%struct.mbedtls_ecp_keypair* noundef) #1

declare dso_local void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef) #1

declare dso_local void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

declare dso_local i32 @mbedtls_ecp_point_write_binary(%struct.mbedtls_ecp_group* noundef, %struct.mbedtls_ecp_point* noundef, i32 noundef, i64* noundef, i8* noundef, i64 noundef) #1

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
