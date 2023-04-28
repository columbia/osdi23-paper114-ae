; ModuleID = 'pkey/rsa_sign_pss.c'
source_filename = "pkey/rsa_sign_pss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.mbedtls_pk_context = type { %struct.mbedtls_pk_info_t*, i8* }
%struct.mbedtls_pk_info_t = type opaque
%struct.mbedtls_entropy_context = type { i32, %struct.mbedtls_sha512_context, i32, [20 x %struct.mbedtls_entropy_source_state] }
%struct.mbedtls_sha512_context = type { [2 x i64], [8 x i64], [128 x i8], i32 }
%struct.mbedtls_entropy_source_state = type { i32 (i8*, i8*, i64, i64*)*, i8*, i64, i64, i32 }
%struct.mbedtls_ctr_drbg_context = type { [16 x i8], i32, i32, i64, i32, %struct.mbedtls_aes_context, i32 (i8*, i8*, i64)*, i8* }
%struct.mbedtls_aes_context = type { i32, i32*, [68 x i32] }
%struct.mbedtls_rsa_context = type { i32, i64, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, i32, i32 }
%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.mbedtls_md_info_t = type opaque

@.str = private unnamed_addr constant [13 x i8] c"rsa_sign_pss\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"usage: rsa_sign_pss <key_file> <filename>\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"\0A  . Seeding the random number generator...\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [47 x i8] c" failed\0A  ! mbedtls_ctr_drbg_seed returned %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"\0A  . Reading private key from '%s'\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [42 x i8] c" failed\0A  ! Could not read key from '%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"  ! mbedtls_pk_parse_public_keyfile returned %d\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c" failed\0A  ! Key is not an RSA key\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c" failed\0A  ! Padding not supported\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"\0A  . Generating the RSA/SHA-256 signature\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c" failed\0A  ! Could not open or read %s\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c" failed\0A  ! mbedtls_pk_sign returned %d\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"%s.sig\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"wb+\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c" failed\0A  ! Could not create %s\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"failed\0A  ! fwrite failed\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"\0A  . Done (created \22%s\22)\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %ret = alloca i32, align 4
  %exit_code = alloca i32, align 4
  %pk = alloca %struct.mbedtls_pk_context, align 8
  %entropy = alloca %struct.mbedtls_entropy_context, align 8
  %ctr_drbg = alloca %struct.mbedtls_ctr_drbg_context, align 8
  %hash = alloca [32 x i8], align 16
  %buf = alloca [1024 x i8], align 16
  %filename = alloca [512 x i8], align 16
  %pers = alloca i8*, align 8
  %olen = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %ret, align 4
  store i32 1, i32* %exit_code, align 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %pers, align 8
  store i64 0, i64* %olen, align 8
  call void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef %entropy) #5
  call void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef %pk) #5
  call void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #5
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0)) #5
  br label %exit

if.end:                                           ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0)) #5
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* noundef %1) #5
  %2 = bitcast %struct.mbedtls_entropy_context* %entropy to i8*
  %3 = load i8*, i8** %pers, align 8
  %4 = load i8*, i8** %pers, align 8
  %call3 = call i64 @strlen(i8* noundef %4) #6
  %call4 = call i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg, i32 (i8*, i8*, i64)* noundef @mbedtls_entropy_func, i8* noundef %2, i8* noundef %3, i64 noundef %call3) #5
  store i32 %call4, i32* %ret, align 4
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %5 = load i32, i32* %ret, align 4
  %call7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 noundef %5) #5
  br label %exit

if.end8:                                          ; preds = %if.end
  %6 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 1
  %7 = load i8*, i8** %arrayidx, align 8
  %call9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* noundef %7) #5
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call10 = call i32 @fflush(%struct._IO_FILE* noundef %8) #5
  %9 = load i8**, i8*** %argv.addr, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %9, i64 1
  %10 = load i8*, i8** %arrayidx11, align 8
  %11 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call12 = call i32 @mbedtls_pk_parse_keyfile(%struct.mbedtls_pk_context* noundef %pk, i8* noundef %10, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %11) #5
  store i32 %call12, i32* %ret, align 4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end8
  %12 = load i8**, i8*** %argv.addr, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %12, i64 1
  %13 = load i8*, i8** %arrayidx15, align 8
  %call16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i8* noundef %13) #5
  %14 = load i32, i32* %ret, align 4
  %call17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 noundef %14) #5
  br label %exit

if.end18:                                         ; preds = %if.end8
  %call19 = call i32 @mbedtls_pk_can_do(%struct.mbedtls_pk_context* noundef %pk, i32 noundef 1) #5
  %tobool = icmp ne i32 %call19, 0
  br i1 %tobool, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end18
  %call21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0)) #5
  br label %exit

if.end22:                                         ; preds = %if.end18
  %15 = bitcast %struct.mbedtls_pk_context* %pk to { %struct.mbedtls_pk_info_t*, i8* }*
  %16 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %15, i32 0, i32 0
  %17 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %16, align 8
  %18 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %15, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %call23 = call %struct.mbedtls_rsa_context* @mbedtls_pk_rsa(%struct.mbedtls_pk_info_t* %17, i8* %19) #5
  %call24 = call i32 @mbedtls_rsa_set_padding(%struct.mbedtls_rsa_context* noundef %call23, i32 noundef 1, i32 noundef 4) #5
  store i32 %call24, i32* %ret, align 4
  %cmp25 = icmp ne i32 %call24, 0
  br i1 %cmp25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end22
  %call27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0)) #5
  br label %exit

if.end28:                                         ; preds = %if.end22
  %call29 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0)) #5
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call30 = call i32 @fflush(%struct._IO_FILE* noundef %20) #5
  %call31 = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef 4) #5
  %21 = load i8**, i8*** %argv.addr, align 8
  %arrayidx32 = getelementptr inbounds i8*, i8** %21, i64 2
  %22 = load i8*, i8** %arrayidx32, align 8
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %hash, i64 0, i64 0
  %call33 = call i32 @mbedtls_md_file(%struct.mbedtls_md_info_t* noundef %call31, i8* noundef %22, i8* noundef %arraydecay) #5
  store i32 %call33, i32* %ret, align 4
  %cmp34 = icmp ne i32 %call33, 0
  br i1 %cmp34, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end28
  %23 = load i8**, i8*** %argv.addr, align 8
  %arrayidx36 = getelementptr inbounds i8*, i8** %23, i64 2
  %24 = load i8*, i8** %arrayidx36, align 8
  %call37 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i8* noundef %24) #5
  br label %exit

if.end38:                                         ; preds = %if.end28
  %arraydecay39 = getelementptr inbounds [32 x i8], [32 x i8]* %hash, i64 0, i64 0
  %arraydecay40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %25 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call41 = call i32 @mbedtls_pk_sign(%struct.mbedtls_pk_context* noundef %pk, i32 noundef 4, i8* noundef %arraydecay39, i64 noundef 0, i8* noundef %arraydecay40, i64 noundef 1024, i64* noundef %olen, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %25) #5
  store i32 %call41, i32* %ret, align 4
  %cmp42 = icmp ne i32 %call41, 0
  br i1 %cmp42, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end38
  %26 = load i32, i32* %ret, align 4
  %call44 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i32 noundef %26) #5
  br label %exit

if.end45:                                         ; preds = %if.end38
  %arraydecay46 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i64 0, i64 0
  %27 = load i8**, i8*** %argv.addr, align 8
  %arrayidx47 = getelementptr inbounds i8*, i8** %27, i64 2
  %28 = load i8*, i8** %arrayidx47, align 8
  %call48 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay46, i64 noundef 512, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* noundef %28) #7
  %arraydecay49 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i64 0, i64 0
  %call50 = call %struct._IO_FILE* @fopen(i8* noundef %arraydecay49, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0)) #5
  store %struct._IO_FILE* %call50, %struct._IO_FILE** %f, align 8
  %cmp51 = icmp eq %struct._IO_FILE* %call50, null
  br i1 %cmp51, label %if.then52, label %if.end55

if.then52:                                        ; preds = %if.end45
  %arraydecay53 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i64 0, i64 0
  %call54 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0), i8* noundef %arraydecay53) #5
  br label %exit

if.end55:                                         ; preds = %if.end45
  %arraydecay56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %29 = load i64, i64* %olen, align 8
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call57 = call i64 @fwrite(i8* noundef %arraydecay56, i64 noundef 1, i64 noundef %29, %struct._IO_FILE* noundef %30) #5
  %31 = load i64, i64* %olen, align 8
  %cmp58 = icmp ne i64 %call57, %31
  br i1 %cmp58, label %if.then59, label %if.end62

if.then59:                                        ; preds = %if.end55
  %call60 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0)) #5
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call61 = call i32 @fclose(%struct._IO_FILE* noundef %32) #5
  br label %exit

if.end62:                                         ; preds = %if.end55
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call63 = call i32 @fclose(%struct._IO_FILE* noundef %33) #5
  %arraydecay64 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i64 0, i64 0
  %call65 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), i8* noundef %arraydecay64) #5
  store i32 0, i32* %exit_code, align 4
  br label %exit

exit:                                             ; preds = %if.end62, %if.then59, %if.then52, %if.then43, %if.then35, %if.then26, %if.then20, %if.then14, %if.then6, %if.then
  call void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef %pk) #5
  call void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #5
  call void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef %entropy) #5
  %34 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %34) #8
  unreachable
}

declare dso_local void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef) #1

declare dso_local void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef) #1

declare dso_local void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_entropy_func(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local i32 @mbedtls_pk_parse_keyfile(%struct.mbedtls_pk_context* noundef, i8* noundef, i8* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_random(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_pk_can_do(%struct.mbedtls_pk_context* noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_rsa_set_padding(%struct.mbedtls_rsa_context* noundef, i32 noundef, i32 noundef) #1

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

declare dso_local i32 @mbedtls_md_file(%struct.mbedtls_md_info_t* noundef, i8* noundef, i8* noundef) #1

declare dso_local %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef) #1

declare dso_local i32 @mbedtls_pk_sign(%struct.mbedtls_pk_context* noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #3

declare dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

declare dso_local void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef) #1

declare dso_local void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef) #1

declare dso_local void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

declare dso_local i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef) #1

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
