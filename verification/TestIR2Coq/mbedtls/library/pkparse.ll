; ModuleID = 'pkparse.c'
source_filename = "pkparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.mbedtls_pk_context = type { %struct.mbedtls_pk_info_t*, i8* }
%struct.mbedtls_pk_info_t = type opaque
%struct.mbedtls_pem_context = type { i8*, i64, i8* }
%struct.mbedtls_rsa_context = type { i32, i64, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, i32, i32 }
%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.mbedtls_ecp_keypair = type { %struct.mbedtls_ecp_group, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point }
%struct.mbedtls_ecp_group = type { i32, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point, %struct.mbedtls_mpi, i64, i64, i32, i32 (%struct.mbedtls_mpi*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i8*, %struct.mbedtls_ecp_point*, i64 }
%struct.mbedtls_ecp_point = type { %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi }
%struct.mbedtls_asn1_buf = type { i32, i64, i8* }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"-----BEGIN \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"pkparse.c\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"-----BEGIN RSA PRIVATE KEY-----\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"-----END RSA PRIVATE KEY-----\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"-----BEGIN EC PRIVATE KEY-----\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"-----END EC PRIVATE KEY-----\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"-----BEGIN PRIVATE KEY-----\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"-----END PRIVATE KEY-----\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"-----BEGIN ENCRYPTED PRIVATE KEY-----\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"-----END ENCRYPTED PRIVATE KEY-----\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"-----BEGIN RSA PUBLIC KEY-----\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"-----END RSA PUBLIC KEY-----\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"-----BEGIN PUBLIC KEY-----\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"-----END PUBLIC KEY-----\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"*\86H\CE=\01\01\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"*\86H\86\F7\0D\01\05\0D\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pk_load_file(i8* noundef %path, i8** noundef %buf, i64* noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca i8*, align 8
  %buf.addr = alloca i8**, align 8
  %n.addr = alloca i64*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %size = alloca i64, align 8
  store i8* %path, i8** %path.addr, align 8
  store i8** %buf, i8*** %buf.addr, align 8
  store i64* %n, i64** %n.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  %0 = load i8*, i8** %path.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #5
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end4
  store i32 -15872, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  call void @setbuf(%struct._IO_FILE* noundef %1, i8* noundef null) #6
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call5 = call i32 @fseek(%struct._IO_FILE* noundef %2, i64 noundef 0, i32 noundef 2) #5
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call6 = call i64 @ftell(%struct._IO_FILE* noundef %3) #5
  store i64 %call6, i64* %size, align 8
  %cmp7 = icmp eq i64 %call6, -1
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call9 = call i32 @fclose(%struct._IO_FILE* noundef %4) #5
  store i32 -15872, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call11 = call i32 @fseek(%struct._IO_FILE* noundef %5, i64 noundef 0, i32 noundef 0) #5
  %6 = load i64, i64* %size, align 8
  %7 = load i64*, i64** %n.addr, align 8
  store i64 %6, i64* %7, align 8
  %8 = load i64*, i64** %n.addr, align 8
  %9 = load i64, i64* %8, align 8
  %add = add i64 %9, 1
  %cmp12 = icmp eq i64 %add, 0
  br i1 %cmp12, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end10
  %10 = load i64*, i64** %n.addr, align 8
  %11 = load i64, i64* %10, align 8
  %add13 = add i64 %11, 1
  %call14 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %add13) #6
  %12 = load i8**, i8*** %buf.addr, align 8
  store i8* %call14, i8** %12, align 8
  %cmp15 = icmp eq i8* %call14, null
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %lor.lhs.false, %if.end10
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call17 = call i32 @fclose(%struct._IO_FILE* noundef %13) #5
  store i32 -16256, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %lor.lhs.false
  %14 = load i8**, i8*** %buf.addr, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = load i64*, i64** %n.addr, align 8
  %17 = load i64, i64* %16, align 8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call19 = call i64 @fread(i8* noundef %15, i64 noundef 1, i64 noundef %17, %struct._IO_FILE* noundef %18) #5
  %19 = load i64*, i64** %n.addr, align 8
  %20 = load i64, i64* %19, align 8
  %cmp20 = icmp ne i64 %call19, %20
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end18
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call22 = call i32 @fclose(%struct._IO_FILE* noundef %21) #5
  %22 = load i8**, i8*** %buf.addr, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = load i64*, i64** %n.addr, align 8
  %25 = load i64, i64* %24, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %23, i64 noundef %25) #5
  %26 = load i8**, i8*** %buf.addr, align 8
  %27 = load i8*, i8** %26, align 8
  call void @free(i8* noundef %27) #6
  store i32 -15872, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end18
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call24 = call i32 @fclose(%struct._IO_FILE* noundef %28) #5
  %29 = load i8**, i8*** %buf.addr, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load i64*, i64** %n.addr, align 8
  %32 = load i64, i64* %31, align 8
  %arrayidx = getelementptr inbounds i8, i8* %30, i64 %32
  store i8 0, i8* %arrayidx, align 1
  %33 = load i8**, i8*** %buf.addr, align 8
  %34 = load i8*, i8** %33, align 8
  %call25 = call i8* @strstr(i8* noundef %34, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)) #7
  %cmp26 = icmp ne i8* %call25, null
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end23
  %35 = load i64*, i64** %n.addr, align 8
  %36 = load i64, i64* %35, align 8
  %inc = add i64 %36, 1
  store i64 %inc, i64* %35, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end23
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end28, %if.then21, %if.then16, %if.then8, %if.then
  %37 = load i32, i32* %retval, align 4
  ret i32 %37
}

declare dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local void @setbuf(%struct._IO_FILE* noundef, i8* noundef) #2

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #1

declare dso_local i64 @ftell(%struct._IO_FILE* noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #2

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strstr(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pk_parse_keyfile(%struct.mbedtls_pk_context* noundef %ctx, i8* noundef %path, i8* noundef %pwd, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_pk_context*, align 8
  %path.addr = alloca i8*, align 8
  %pwd.addr = alloca i8*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %n = alloca i64, align 8
  %buf = alloca i8*, align 8
  store %struct.mbedtls_pk_context* %ctx, %struct.mbedtls_pk_context** %ctx.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  store i8* %pwd, i8** %pwd.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load i8*, i8** %path.addr, align 8
  %call = call i32 @mbedtls_pk_load_file(i8* noundef %0, i8** noundef %buf, i64* noundef %n) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end2
  %1 = load i32, i32* %ret, align 4
  store i32 %1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end2
  %2 = load i8*, i8** %pwd.addr, align 8
  %cmp3 = icmp eq i8* %2, null
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %3 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %4 = load i8*, i8** %buf, align 8
  %5 = load i64, i64* %n, align 8
  %6 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %7 = load i8*, i8** %p_rng.addr, align 8
  %call5 = call i32 @mbedtls_pk_parse_key(%struct.mbedtls_pk_context* noundef %3, i8* noundef %4, i64 noundef %5, i8* noundef null, i64 noundef 0, i32 (i8*, i8*, i64)* noundef %6, i8* noundef %7) #5
  store i32 %call5, i32* %ret, align 4
  br label %if.end8

if.else:                                          ; preds = %if.end
  %8 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %9 = load i8*, i8** %buf, align 8
  %10 = load i64, i64* %n, align 8
  %11 = load i8*, i8** %pwd.addr, align 8
  %12 = load i8*, i8** %pwd.addr, align 8
  %call6 = call i64 @strlen(i8* noundef %12) #7
  %13 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %14 = load i8*, i8** %p_rng.addr, align 8
  %call7 = call i32 @mbedtls_pk_parse_key(%struct.mbedtls_pk_context* noundef %8, i8* noundef %9, i64 noundef %10, i8* noundef %11, i64 noundef %call6, i32 (i8*, i8*, i64)* noundef %13, i8* noundef %14) #5
  store i32 %call7, i32* %ret, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then4
  %15 = load i8*, i8** %buf, align 8
  %16 = load i64, i64* %n, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %15, i64 noundef %16) #5
  %17 = load i8*, i8** %buf, align 8
  call void @free(i8* noundef %17) #6
  %18 = load i32, i32* %ret, align 4
  store i32 %18, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pk_parse_key(%struct.mbedtls_pk_context* noundef %pk, i8* noundef %key, i64 noundef %keylen, i8* noundef %pwd, i64 noundef %pwdlen, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %pk.addr = alloca %struct.mbedtls_pk_context*, align 8
  %key.addr = alloca i8*, align 8
  %keylen.addr = alloca i64, align 8
  %pwd.addr = alloca i8*, align 8
  %pwdlen.addr = alloca i64, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %pk_info = alloca %struct.mbedtls_pk_info_t*, align 8
  %len = alloca i64, align 8
  %pem = alloca %struct.mbedtls_pem_context, align 8
  %key_copy = alloca i8*, align 8
  store %struct.mbedtls_pk_context* %pk, %struct.mbedtls_pk_context** %pk.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i64 %keylen, i64* %keylen.addr, align 8
  store i8* %pwd, i8** %pwd.addr, align 8
  store i64 %pwdlen, i64* %pwdlen.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i64, i64* %keylen.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 -15616, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end
  br label %do.body1

do.body1:                                         ; preds = %if.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  call void @mbedtls_pem_init(%struct.mbedtls_pem_context* noundef %pem) #5
  %1 = load i8*, i8** %key.addr, align 8
  %2 = load i64, i64* %keylen.addr, align 8
  %sub = sub i64 %2, 1
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %sub
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp3 = icmp ne i32 %conv, 0
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %do.end2
  store i32 -4224, i32* %ret, align 4
  br label %if.end6

if.else:                                          ; preds = %do.end2
  %4 = load i8*, i8** %key.addr, align 8
  %5 = load i8*, i8** %pwd.addr, align 8
  %6 = load i64, i64* %pwdlen.addr, align 8
  %call = call i32 @mbedtls_pem_read_buffer(%struct.mbedtls_pem_context* noundef %pem, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* noundef %4, i8* noundef %5, i64 noundef %6, i64* noundef %len) #5
  store i32 %call, i32* %ret, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5
  %7 = load i32, i32* %ret, align 4
  %cmp7 = icmp eq i32 %7, 0
  br i1 %cmp7, label %if.then9, label %if.else20

if.then9:                                         ; preds = %if.end6
  %call10 = call %struct.mbedtls_pk_info_t* @mbedtls_pk_info_from_type(i32 noundef 1) #5
  store %struct.mbedtls_pk_info_t* %call10, %struct.mbedtls_pk_info_t** %pk_info, align 8
  %8 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  %9 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info, align 8
  %call11 = call i32 @mbedtls_pk_setup(%struct.mbedtls_pk_context* noundef %8, %struct.mbedtls_pk_info_t* noundef %9) #5
  store i32 %call11, i32* %ret, align 4
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then9
  %10 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  %11 = bitcast %struct.mbedtls_pk_context* %10 to { %struct.mbedtls_pk_info_t*, i8* }*
  %12 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %11, i32 0, i32 0
  %13 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %12, align 8
  %14 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %11, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %call14 = call %struct.mbedtls_rsa_context* @mbedtls_pk_rsa(%struct.mbedtls_pk_info_t* %13, i8* %15) #5
  %buf = getelementptr inbounds %struct.mbedtls_pem_context, %struct.mbedtls_pem_context* %pem, i32 0, i32 0
  %16 = load i8*, i8** %buf, align 8
  %buflen = getelementptr inbounds %struct.mbedtls_pem_context, %struct.mbedtls_pem_context* %pem, i32 0, i32 1
  %17 = load i64, i64* %buflen, align 8
  %call15 = call i32 @pk_parse_key_pkcs1_der(%struct.mbedtls_rsa_context* noundef %call14, i8* noundef %16, i64 noundef %17) #5
  store i32 %call15, i32* %ret, align 4
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false, %if.then9
  %18 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  call void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef %18) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %lor.lhs.false
  call void @mbedtls_pem_free(%struct.mbedtls_pem_context* noundef %pem) #5
  %19 = load i32, i32* %ret, align 4
  store i32 %19, i32* %retval, align 4
  br label %return

if.else20:                                        ; preds = %if.end6
  %20 = load i32, i32* %ret, align 4
  %cmp21 = icmp eq i32 %20, -4992
  br i1 %cmp21, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.else20
  store i32 -15232, i32* %retval, align 4
  br label %return

if.else24:                                        ; preds = %if.else20
  %21 = load i32, i32* %ret, align 4
  %cmp25 = icmp eq i32 %21, -4864
  br i1 %cmp25, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.else24
  store i32 -15360, i32* %retval, align 4
  br label %return

if.else28:                                        ; preds = %if.else24
  %22 = load i32, i32* %ret, align 4
  %cmp29 = icmp ne i32 %22, -4224
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.else28
  %23 = load i32, i32* %ret, align 4
  store i32 %23, i32* %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.else28
  br label %if.end33

if.end33:                                         ; preds = %if.end32
  br label %if.end34

if.end34:                                         ; preds = %if.end33
  br label %if.end35

if.end35:                                         ; preds = %if.end34
  %24 = load i8*, i8** %key.addr, align 8
  %25 = load i64, i64* %keylen.addr, align 8
  %sub36 = sub i64 %25, 1
  %arrayidx37 = getelementptr inbounds i8, i8* %24, i64 %sub36
  %26 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %26 to i32
  %cmp39 = icmp ne i32 %conv38, 0
  br i1 %cmp39, label %if.then41, label %if.else42

if.then41:                                        ; preds = %if.end35
  store i32 -4224, i32* %ret, align 4
  br label %if.end44

if.else42:                                        ; preds = %if.end35
  %27 = load i8*, i8** %key.addr, align 8
  %28 = load i8*, i8** %pwd.addr, align 8
  %29 = load i64, i64* %pwdlen.addr, align 8
  %call43 = call i32 @mbedtls_pem_read_buffer(%struct.mbedtls_pem_context* noundef %pem, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* noundef %27, i8* noundef %28, i64 noundef %29, i64* noundef %len) #5
  store i32 %call43, i32* %ret, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.else42, %if.then41
  %30 = load i32, i32* %ret, align 4
  %cmp45 = icmp eq i32 %30, 0
  br i1 %cmp45, label %if.then47, label %if.else61

if.then47:                                        ; preds = %if.end44
  %call48 = call %struct.mbedtls_pk_info_t* @mbedtls_pk_info_from_type(i32 noundef 2) #5
  store %struct.mbedtls_pk_info_t* %call48, %struct.mbedtls_pk_info_t** %pk_info, align 8
  %31 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  %32 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info, align 8
  %call49 = call i32 @mbedtls_pk_setup(%struct.mbedtls_pk_context* noundef %31, %struct.mbedtls_pk_info_t* noundef %32) #5
  store i32 %call49, i32* %ret, align 4
  %cmp50 = icmp ne i32 %call49, 0
  br i1 %cmp50, label %if.then59, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %if.then47
  %33 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  %34 = bitcast %struct.mbedtls_pk_context* %33 to { %struct.mbedtls_pk_info_t*, i8* }*
  %35 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %34, i32 0, i32 0
  %36 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %35, align 8
  %37 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %34, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %call53 = call %struct.mbedtls_ecp_keypair* @mbedtls_pk_ec(%struct.mbedtls_pk_info_t* %36, i8* %38) #5
  %buf54 = getelementptr inbounds %struct.mbedtls_pem_context, %struct.mbedtls_pem_context* %pem, i32 0, i32 0
  %39 = load i8*, i8** %buf54, align 8
  %buflen55 = getelementptr inbounds %struct.mbedtls_pem_context, %struct.mbedtls_pem_context* %pem, i32 0, i32 1
  %40 = load i64, i64* %buflen55, align 8
  %41 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %42 = load i8*, i8** %p_rng.addr, align 8
  %call56 = call i32 @pk_parse_key_sec1_der(%struct.mbedtls_ecp_keypair* noundef %call53, i8* noundef %39, i64 noundef %40, i32 (i8*, i8*, i64)* noundef %41, i8* noundef %42) #5
  store i32 %call56, i32* %ret, align 4
  %cmp57 = icmp ne i32 %call56, 0
  br i1 %cmp57, label %if.then59, label %if.end60

if.then59:                                        ; preds = %lor.lhs.false52, %if.then47
  %43 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  call void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef %43) #5
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %lor.lhs.false52
  call void @mbedtls_pem_free(%struct.mbedtls_pem_context* noundef %pem) #5
  %44 = load i32, i32* %ret, align 4
  store i32 %44, i32* %retval, align 4
  br label %return

if.else61:                                        ; preds = %if.end44
  %45 = load i32, i32* %ret, align 4
  %cmp62 = icmp eq i32 %45, -4992
  br i1 %cmp62, label %if.then64, label %if.else65

if.then64:                                        ; preds = %if.else61
  store i32 -15232, i32* %retval, align 4
  br label %return

if.else65:                                        ; preds = %if.else61
  %46 = load i32, i32* %ret, align 4
  %cmp66 = icmp eq i32 %46, -4864
  br i1 %cmp66, label %if.then68, label %if.else69

if.then68:                                        ; preds = %if.else65
  store i32 -15360, i32* %retval, align 4
  br label %return

if.else69:                                        ; preds = %if.else65
  %47 = load i32, i32* %ret, align 4
  %cmp70 = icmp ne i32 %47, -4224
  br i1 %cmp70, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.else69
  %48 = load i32, i32* %ret, align 4
  store i32 %48, i32* %retval, align 4
  br label %return

if.end73:                                         ; preds = %if.else69
  br label %if.end74

if.end74:                                         ; preds = %if.end73
  br label %if.end75

if.end75:                                         ; preds = %if.end74
  br label %if.end76

if.end76:                                         ; preds = %if.end75
  %49 = load i8*, i8** %key.addr, align 8
  %50 = load i64, i64* %keylen.addr, align 8
  %sub77 = sub i64 %50, 1
  %arrayidx78 = getelementptr inbounds i8, i8* %49, i64 %sub77
  %51 = load i8, i8* %arrayidx78, align 1
  %conv79 = zext i8 %51 to i32
  %cmp80 = icmp ne i32 %conv79, 0
  br i1 %cmp80, label %if.then82, label %if.else83

if.then82:                                        ; preds = %if.end76
  store i32 -4224, i32* %ret, align 4
  br label %if.end85

if.else83:                                        ; preds = %if.end76
  %52 = load i8*, i8** %key.addr, align 8
  %call84 = call i32 @mbedtls_pem_read_buffer(%struct.mbedtls_pem_context* noundef %pem, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* noundef %52, i8* noundef null, i64 noundef 0, i64* noundef %len) #5
  store i32 %call84, i32* %ret, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.else83, %if.then82
  %53 = load i32, i32* %ret, align 4
  %cmp86 = icmp eq i32 %53, 0
  br i1 %cmp86, label %if.then88, label %if.else96

if.then88:                                        ; preds = %if.end85
  %54 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  %buf89 = getelementptr inbounds %struct.mbedtls_pem_context, %struct.mbedtls_pem_context* %pem, i32 0, i32 0
  %55 = load i8*, i8** %buf89, align 8
  %buflen90 = getelementptr inbounds %struct.mbedtls_pem_context, %struct.mbedtls_pem_context* %pem, i32 0, i32 1
  %56 = load i64, i64* %buflen90, align 8
  %57 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %58 = load i8*, i8** %p_rng.addr, align 8
  %call91 = call i32 @pk_parse_key_pkcs8_unencrypted_der(%struct.mbedtls_pk_context* noundef %54, i8* noundef %55, i64 noundef %56, i32 (i8*, i8*, i64)* noundef %57, i8* noundef %58) #5
  store i32 %call91, i32* %ret, align 4
  %cmp92 = icmp ne i32 %call91, 0
  br i1 %cmp92, label %if.then94, label %if.end95

if.then94:                                        ; preds = %if.then88
  %59 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  call void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef %59) #5
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %if.then88
  call void @mbedtls_pem_free(%struct.mbedtls_pem_context* noundef %pem) #5
  %60 = load i32, i32* %ret, align 4
  store i32 %60, i32* %retval, align 4
  br label %return

if.else96:                                        ; preds = %if.end85
  %61 = load i32, i32* %ret, align 4
  %cmp97 = icmp ne i32 %61, -4224
  br i1 %cmp97, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.else96
  %62 = load i32, i32* %ret, align 4
  store i32 %62, i32* %retval, align 4
  br label %return

if.end100:                                        ; preds = %if.else96
  br label %if.end101

if.end101:                                        ; preds = %if.end100
  %63 = load i8*, i8** %key.addr, align 8
  %64 = load i64, i64* %keylen.addr, align 8
  %sub102 = sub i64 %64, 1
  %arrayidx103 = getelementptr inbounds i8, i8* %63, i64 %sub102
  %65 = load i8, i8* %arrayidx103, align 1
  %conv104 = zext i8 %65 to i32
  %cmp105 = icmp ne i32 %conv104, 0
  br i1 %cmp105, label %if.then107, label %if.else108

if.then107:                                       ; preds = %if.end101
  store i32 -4224, i32* %ret, align 4
  br label %if.end110

if.else108:                                       ; preds = %if.end101
  %66 = load i8*, i8** %key.addr, align 8
  %call109 = call i32 @mbedtls_pem_read_buffer(%struct.mbedtls_pem_context* noundef %pem, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i8* noundef %66, i8* noundef null, i64 noundef 0, i64* noundef %len) #5
  store i32 %call109, i32* %ret, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.else108, %if.then107
  %67 = load i32, i32* %ret, align 4
  %cmp111 = icmp eq i32 %67, 0
  br i1 %cmp111, label %if.then113, label %if.else121

if.then113:                                       ; preds = %if.end110
  %68 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  %buf114 = getelementptr inbounds %struct.mbedtls_pem_context, %struct.mbedtls_pem_context* %pem, i32 0, i32 0
  %69 = load i8*, i8** %buf114, align 8
  %buflen115 = getelementptr inbounds %struct.mbedtls_pem_context, %struct.mbedtls_pem_context* %pem, i32 0, i32 1
  %70 = load i64, i64* %buflen115, align 8
  %71 = load i8*, i8** %pwd.addr, align 8
  %72 = load i64, i64* %pwdlen.addr, align 8
  %73 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %74 = load i8*, i8** %p_rng.addr, align 8
  %call116 = call i32 @pk_parse_key_pkcs8_encrypted_der(%struct.mbedtls_pk_context* noundef %68, i8* noundef %69, i64 noundef %70, i8* noundef %71, i64 noundef %72, i32 (i8*, i8*, i64)* noundef %73, i8* noundef %74) #5
  store i32 %call116, i32* %ret, align 4
  %cmp117 = icmp ne i32 %call116, 0
  br i1 %cmp117, label %if.then119, label %if.end120

if.then119:                                       ; preds = %if.then113
  %75 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  call void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef %75) #5
  br label %if.end120

if.end120:                                        ; preds = %if.then119, %if.then113
  call void @mbedtls_pem_free(%struct.mbedtls_pem_context* noundef %pem) #5
  %76 = load i32, i32* %ret, align 4
  store i32 %76, i32* %retval, align 4
  br label %return

if.else121:                                       ; preds = %if.end110
  %77 = load i32, i32* %ret, align 4
  %cmp122 = icmp ne i32 %77, -4224
  br i1 %cmp122, label %if.then124, label %if.end125

if.then124:                                       ; preds = %if.else121
  %78 = load i32, i32* %ret, align 4
  store i32 %78, i32* %retval, align 4
  br label %return

if.end125:                                        ; preds = %if.else121
  br label %if.end126

if.end126:                                        ; preds = %if.end125
  %79 = load i64, i64* %pwdlen.addr, align 8
  %cmp127 = icmp ne i64 %79, 0
  br i1 %cmp127, label %if.then129, label %if.end137

if.then129:                                       ; preds = %if.end126
  %80 = load i64, i64* %keylen.addr, align 8
  %call130 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %80) #6
  store i8* %call130, i8** %key_copy, align 8
  %cmp131 = icmp eq i8* %call130, null
  br i1 %cmp131, label %if.then133, label %if.end134

if.then133:                                       ; preds = %if.then129
  store i32 -16256, i32* %retval, align 4
  br label %return

if.end134:                                        ; preds = %if.then129
  %81 = load i8*, i8** %key_copy, align 8
  %82 = load i8*, i8** %key.addr, align 8
  %83 = load i64, i64* %keylen.addr, align 8
  %call135 = call i8* @memcpy(i8* noundef %81, i8* noundef %82, i64 noundef %83) #6
  %84 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  %85 = load i8*, i8** %key_copy, align 8
  %86 = load i64, i64* %keylen.addr, align 8
  %87 = load i8*, i8** %pwd.addr, align 8
  %88 = load i64, i64* %pwdlen.addr, align 8
  %89 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %90 = load i8*, i8** %p_rng.addr, align 8
  %call136 = call i32 @pk_parse_key_pkcs8_encrypted_der(%struct.mbedtls_pk_context* noundef %84, i8* noundef %85, i64 noundef %86, i8* noundef %87, i64 noundef %88, i32 (i8*, i8*, i64)* noundef %89, i8* noundef %90) #5
  store i32 %call136, i32* %ret, align 4
  %91 = load i8*, i8** %key_copy, align 8
  %92 = load i64, i64* %keylen.addr, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %91, i64 noundef %92) #5
  %93 = load i8*, i8** %key_copy, align 8
  call void @free(i8* noundef %93) #6
  br label %if.end137

if.end137:                                        ; preds = %if.end134, %if.end126
  %94 = load i32, i32* %ret, align 4
  %cmp138 = icmp eq i32 %94, 0
  br i1 %cmp138, label %if.then140, label %if.end141

if.then140:                                       ; preds = %if.end137
  store i32 0, i32* %retval, align 4
  br label %return

if.end141:                                        ; preds = %if.end137
  %95 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  call void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef %95) #5
  %96 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  call void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef %96) #5
  %97 = load i32, i32* %ret, align 4
  %cmp142 = icmp eq i32 %97, -15232
  br i1 %cmp142, label %if.then144, label %if.end145

if.then144:                                       ; preds = %if.end141
  %98 = load i32, i32* %ret, align 4
  store i32 %98, i32* %retval, align 4
  br label %return

if.end145:                                        ; preds = %if.end141
  %99 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  %100 = load i8*, i8** %key.addr, align 8
  %101 = load i64, i64* %keylen.addr, align 8
  %102 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %103 = load i8*, i8** %p_rng.addr, align 8
  %call146 = call i32 @pk_parse_key_pkcs8_unencrypted_der(%struct.mbedtls_pk_context* noundef %99, i8* noundef %100, i64 noundef %101, i32 (i8*, i8*, i64)* noundef %102, i8* noundef %103) #5
  store i32 %call146, i32* %ret, align 4
  %104 = load i32, i32* %ret, align 4
  %cmp147 = icmp eq i32 %104, 0
  br i1 %cmp147, label %if.then149, label %if.end150

if.then149:                                       ; preds = %if.end145
  store i32 0, i32* %retval, align 4
  br label %return

if.end150:                                        ; preds = %if.end145
  %105 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  call void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef %105) #5
  %106 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  call void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef %106) #5
  %call151 = call %struct.mbedtls_pk_info_t* @mbedtls_pk_info_from_type(i32 noundef 1) #5
  store %struct.mbedtls_pk_info_t* %call151, %struct.mbedtls_pk_info_t** %pk_info, align 8
  %107 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  %108 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info, align 8
  %call152 = call i32 @mbedtls_pk_setup(%struct.mbedtls_pk_context* noundef %107, %struct.mbedtls_pk_info_t* noundef %108) #5
  %cmp153 = icmp eq i32 %call152, 0
  br i1 %cmp153, label %land.lhs.true, label %if.end160

land.lhs.true:                                    ; preds = %if.end150
  %109 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  %110 = bitcast %struct.mbedtls_pk_context* %109 to { %struct.mbedtls_pk_info_t*, i8* }*
  %111 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %110, i32 0, i32 0
  %112 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %111, align 8
  %113 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %110, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %call155 = call %struct.mbedtls_rsa_context* @mbedtls_pk_rsa(%struct.mbedtls_pk_info_t* %112, i8* %114) #5
  %115 = load i8*, i8** %key.addr, align 8
  %116 = load i64, i64* %keylen.addr, align 8
  %call156 = call i32 @pk_parse_key_pkcs1_der(%struct.mbedtls_rsa_context* noundef %call155, i8* noundef %115, i64 noundef %116) #5
  %cmp157 = icmp eq i32 %call156, 0
  br i1 %cmp157, label %if.then159, label %if.end160

if.then159:                                       ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4
  br label %return

if.end160:                                        ; preds = %land.lhs.true, %if.end150
  %117 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  call void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef %117) #5
  %118 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  call void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef %118) #5
  %call161 = call %struct.mbedtls_pk_info_t* @mbedtls_pk_info_from_type(i32 noundef 2) #5
  store %struct.mbedtls_pk_info_t* %call161, %struct.mbedtls_pk_info_t** %pk_info, align 8
  %119 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  %120 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info, align 8
  %call162 = call i32 @mbedtls_pk_setup(%struct.mbedtls_pk_context* noundef %119, %struct.mbedtls_pk_info_t* noundef %120) #5
  %cmp163 = icmp eq i32 %call162, 0
  br i1 %cmp163, label %land.lhs.true165, label %if.end171

land.lhs.true165:                                 ; preds = %if.end160
  %121 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  %122 = bitcast %struct.mbedtls_pk_context* %121 to { %struct.mbedtls_pk_info_t*, i8* }*
  %123 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %122, i32 0, i32 0
  %124 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %123, align 8
  %125 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %122, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %call166 = call %struct.mbedtls_ecp_keypair* @mbedtls_pk_ec(%struct.mbedtls_pk_info_t* %124, i8* %126) #5
  %127 = load i8*, i8** %key.addr, align 8
  %128 = load i64, i64* %keylen.addr, align 8
  %129 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %130 = load i8*, i8** %p_rng.addr, align 8
  %call167 = call i32 @pk_parse_key_sec1_der(%struct.mbedtls_ecp_keypair* noundef %call166, i8* noundef %127, i64 noundef %128, i32 (i8*, i8*, i64)* noundef %129, i8* noundef %130) #5
  %cmp168 = icmp eq i32 %call167, 0
  br i1 %cmp168, label %if.then170, label %if.end171

if.then170:                                       ; preds = %land.lhs.true165
  store i32 0, i32* %retval, align 4
  br label %return

if.end171:                                        ; preds = %land.lhs.true165, %if.end160
  %131 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  call void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef %131) #5
  store i32 -15616, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end171, %if.then170, %if.then159, %if.then149, %if.then144, %if.then140, %if.then133, %if.then124, %if.end120, %if.then99, %if.end95, %if.then72, %if.then68, %if.then64, %if.end60, %if.then31, %if.then27, %if.then23, %if.end19, %if.then
  %132 = load i32, i32* %retval, align 4
  ret i32 %132
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pk_parse_public_keyfile(%struct.mbedtls_pk_context* noundef %ctx, i8* noundef %path) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_pk_context*, align 8
  %path.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %n = alloca i64, align 8
  %buf = alloca i8*, align 8
  store %struct.mbedtls_pk_context* %ctx, %struct.mbedtls_pk_context** %ctx.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load i8*, i8** %path.addr, align 8
  %call = call i32 @mbedtls_pk_load_file(i8* noundef %0, i8** noundef %buf, i64* noundef %n) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end2
  %1 = load i32, i32* %ret, align 4
  store i32 %1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end2
  %2 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %3 = load i8*, i8** %buf, align 8
  %4 = load i64, i64* %n, align 8
  %call3 = call i32 @mbedtls_pk_parse_public_key(%struct.mbedtls_pk_context* noundef %2, i8* noundef %3, i64 noundef %4) #5
  store i32 %call3, i32* %ret, align 4
  %5 = load i8*, i8** %buf, align 8
  %6 = load i64, i64* %n, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %5, i64 noundef %6) #5
  %7 = load i8*, i8** %buf, align 8
  call void @free(i8* noundef %7) #6
  %8 = load i32, i32* %ret, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pk_parse_public_key(%struct.mbedtls_pk_context* noundef %ctx, i8* noundef %key, i64 noundef %keylen) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_pk_context*, align 8
  %key.addr = alloca i8*, align 8
  %keylen.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %p = alloca i8*, align 8
  %pk_info = alloca %struct.mbedtls_pk_info_t*, align 8
  %len = alloca i64, align 8
  %pem = alloca %struct.mbedtls_pem_context, align 8
  store %struct.mbedtls_pk_context* %ctx, %struct.mbedtls_pk_context** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i64 %keylen, i64* %keylen.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i64, i64* %keylen.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 -15616, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end
  br label %do.body1

do.body1:                                         ; preds = %if.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  call void @mbedtls_pem_init(%struct.mbedtls_pem_context* noundef %pem) #5
  %1 = load i8*, i8** %key.addr, align 8
  %2 = load i64, i64* %keylen.addr, align 8
  %sub = sub i64 %2, 1
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %sub
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp3 = icmp ne i32 %conv, 0
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %do.end2
  store i32 -4224, i32* %ret, align 4
  br label %if.end6

if.else:                                          ; preds = %do.end2
  %4 = load i8*, i8** %key.addr, align 8
  %call = call i32 @mbedtls_pem_read_buffer(%struct.mbedtls_pem_context* noundef %pem, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i8* noundef %4, i8* noundef null, i64 noundef 0, i64* noundef %len) #5
  store i32 %call, i32* %ret, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5
  %5 = load i32, i32* %ret, align 4
  %cmp7 = icmp eq i32 %5, 0
  br i1 %cmp7, label %if.then9, label %if.else26

if.then9:                                         ; preds = %if.end6
  %buf = getelementptr inbounds %struct.mbedtls_pem_context, %struct.mbedtls_pem_context* %pem, i32 0, i32 0
  %6 = load i8*, i8** %buf, align 8
  store i8* %6, i8** %p, align 8
  %call10 = call %struct.mbedtls_pk_info_t* @mbedtls_pk_info_from_type(i32 noundef 1) #5
  store %struct.mbedtls_pk_info_t* %call10, %struct.mbedtls_pk_info_t** %pk_info, align 8
  %cmp11 = icmp eq %struct.mbedtls_pk_info_t* %call10, null
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then9
  call void @mbedtls_pem_free(%struct.mbedtls_pem_context* noundef %pem) #5
  store i32 -15488, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.then9
  %7 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %8 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info, align 8
  %call15 = call i32 @mbedtls_pk_setup(%struct.mbedtls_pk_context* noundef %7, %struct.mbedtls_pk_info_t* noundef %8) #5
  store i32 %call15, i32* %ret, align 4
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end14
  call void @mbedtls_pem_free(%struct.mbedtls_pem_context* noundef %pem) #5
  %9 = load i32, i32* %ret, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end14
  %10 = load i8*, i8** %p, align 8
  %buflen = getelementptr inbounds %struct.mbedtls_pem_context, %struct.mbedtls_pem_context* %pem, i32 0, i32 1
  %11 = load i64, i64* %buflen, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %11
  %12 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %13 = bitcast %struct.mbedtls_pk_context* %12 to { %struct.mbedtls_pk_info_t*, i8* }*
  %14 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %13, i32 0, i32 0
  %15 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %14, align 8
  %16 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %13, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %call20 = call %struct.mbedtls_rsa_context* @mbedtls_pk_rsa(%struct.mbedtls_pk_info_t* %15, i8* %17) #5
  %call21 = call i32 @pk_get_rsapubkey(i8** noundef %p, i8* noundef %add.ptr, %struct.mbedtls_rsa_context* noundef %call20) #5
  store i32 %call21, i32* %ret, align 4
  %cmp22 = icmp ne i32 %call21, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end19
  %18 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  call void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef %18) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end19
  call void @mbedtls_pem_free(%struct.mbedtls_pem_context* noundef %pem) #5
  %19 = load i32, i32* %ret, align 4
  store i32 %19, i32* %retval, align 4
  br label %return

if.else26:                                        ; preds = %if.end6
  %20 = load i32, i32* %ret, align 4
  %cmp27 = icmp ne i32 %20, -4224
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.else26
  call void @mbedtls_pem_free(%struct.mbedtls_pem_context* noundef %pem) #5
  %21 = load i32, i32* %ret, align 4
  store i32 %21, i32* %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.else26
  br label %if.end31

if.end31:                                         ; preds = %if.end30
  %22 = load i8*, i8** %key.addr, align 8
  %23 = load i64, i64* %keylen.addr, align 8
  %sub32 = sub i64 %23, 1
  %arrayidx33 = getelementptr inbounds i8, i8* %22, i64 %sub32
  %24 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %24 to i32
  %cmp35 = icmp ne i32 %conv34, 0
  br i1 %cmp35, label %if.then37, label %if.else38

if.then37:                                        ; preds = %if.end31
  store i32 -4224, i32* %ret, align 4
  br label %if.end40

if.else38:                                        ; preds = %if.end31
  %25 = load i8*, i8** %key.addr, align 8
  %call39 = call i32 @mbedtls_pem_read_buffer(%struct.mbedtls_pem_context* noundef %pem, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i8* noundef %25, i8* noundef null, i64 noundef 0, i64* noundef %len) #5
  store i32 %call39, i32* %ret, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.else38, %if.then37
  %26 = load i32, i32* %ret, align 4
  %cmp41 = icmp eq i32 %26, 0
  br i1 %cmp41, label %if.then43, label %if.else48

if.then43:                                        ; preds = %if.end40
  %buf44 = getelementptr inbounds %struct.mbedtls_pem_context, %struct.mbedtls_pem_context* %pem, i32 0, i32 0
  %27 = load i8*, i8** %buf44, align 8
  store i8* %27, i8** %p, align 8
  %28 = load i8*, i8** %p, align 8
  %buflen45 = getelementptr inbounds %struct.mbedtls_pem_context, %struct.mbedtls_pem_context* %pem, i32 0, i32 1
  %29 = load i64, i64* %buflen45, align 8
  %add.ptr46 = getelementptr inbounds i8, i8* %28, i64 %29
  %30 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %call47 = call i32 @mbedtls_pk_parse_subpubkey(i8** noundef %p, i8* noundef %add.ptr46, %struct.mbedtls_pk_context* noundef %30) #5
  store i32 %call47, i32* %ret, align 4
  call void @mbedtls_pem_free(%struct.mbedtls_pem_context* noundef %pem) #5
  %31 = load i32, i32* %ret, align 4
  store i32 %31, i32* %retval, align 4
  br label %return

if.else48:                                        ; preds = %if.end40
  %32 = load i32, i32* %ret, align 4
  %cmp49 = icmp ne i32 %32, -4224
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.else48
  call void @mbedtls_pem_free(%struct.mbedtls_pem_context* noundef %pem) #5
  %33 = load i32, i32* %ret, align 4
  store i32 %33, i32* %retval, align 4
  br label %return

if.end52:                                         ; preds = %if.else48
  br label %if.end53

if.end53:                                         ; preds = %if.end52
  call void @mbedtls_pem_free(%struct.mbedtls_pem_context* noundef %pem) #5
  %call54 = call %struct.mbedtls_pk_info_t* @mbedtls_pk_info_from_type(i32 noundef 1) #5
  store %struct.mbedtls_pk_info_t* %call54, %struct.mbedtls_pk_info_t** %pk_info, align 8
  %cmp55 = icmp eq %struct.mbedtls_pk_info_t* %call54, null
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end53
  store i32 -15488, i32* %retval, align 4
  br label %return

if.end58:                                         ; preds = %if.end53
  %34 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %35 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info, align 8
  %call59 = call i32 @mbedtls_pk_setup(%struct.mbedtls_pk_context* noundef %34, %struct.mbedtls_pk_info_t* noundef %35) #5
  store i32 %call59, i32* %ret, align 4
  %cmp60 = icmp ne i32 %call59, 0
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.end58
  %36 = load i32, i32* %ret, align 4
  store i32 %36, i32* %retval, align 4
  br label %return

if.end63:                                         ; preds = %if.end58
  %37 = load i8*, i8** %key.addr, align 8
  store i8* %37, i8** %p, align 8
  %38 = load i8*, i8** %p, align 8
  %39 = load i64, i64* %keylen.addr, align 8
  %add.ptr64 = getelementptr inbounds i8, i8* %38, i64 %39
  %40 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %41 = bitcast %struct.mbedtls_pk_context* %40 to { %struct.mbedtls_pk_info_t*, i8* }*
  %42 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %41, i32 0, i32 0
  %43 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %42, align 8
  %44 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %41, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %call65 = call %struct.mbedtls_rsa_context* @mbedtls_pk_rsa(%struct.mbedtls_pk_info_t* %43, i8* %45) #5
  %call66 = call i32 @pk_get_rsapubkey(i8** noundef %p, i8* noundef %add.ptr64, %struct.mbedtls_rsa_context* noundef %call65) #5
  store i32 %call66, i32* %ret, align 4
  %46 = load i32, i32* %ret, align 4
  %cmp67 = icmp eq i32 %46, 0
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end63
  %47 = load i32, i32* %ret, align 4
  store i32 %47, i32* %retval, align 4
  br label %return

if.end70:                                         ; preds = %if.end63
  %48 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  call void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef %48) #5
  %49 = load i32, i32* %ret, align 4
  %call71 = call i32 @mbedtls_error_add(i32 noundef -15104, i32 noundef -98, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1527) #5
  %cmp72 = icmp ne i32 %49, %call71
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.end70
  %50 = load i32, i32* %ret, align 4
  store i32 %50, i32* %retval, align 4
  br label %return

if.end75:                                         ; preds = %if.end70
  %51 = load i8*, i8** %key.addr, align 8
  store i8* %51, i8** %p, align 8
  %52 = load i8*, i8** %p, align 8
  %53 = load i64, i64* %keylen.addr, align 8
  %add.ptr76 = getelementptr inbounds i8, i8* %52, i64 %53
  %54 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %call77 = call i32 @mbedtls_pk_parse_subpubkey(i8** noundef %p, i8* noundef %add.ptr76, %struct.mbedtls_pk_context* noundef %54) #5
  store i32 %call77, i32* %ret, align 4
  %55 = load i32, i32* %ret, align 4
  store i32 %55, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end75, %if.then74, %if.then69, %if.then62, %if.then57, %if.then51, %if.then43, %if.then29, %if.end25, %if.then18, %if.then13, %if.then
  %56 = load i32, i32* %retval, align 4
  ret i32 %56
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pk_parse_subpubkey(i8** noundef %p, i8* noundef %end, %struct.mbedtls_pk_context* noundef %pk) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %pk.addr = alloca %struct.mbedtls_pk_context*, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  %alg_params = alloca %struct.mbedtls_asn1_buf, align 8
  %pk_alg = alloca i32, align 4
  %pk_info = alloca %struct.mbedtls_pk_info_t*, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.mbedtls_pk_context* %pk, %struct.mbedtls_pk_context** %pk.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i32 0, i32* %pk_alg, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  br label %do.end6

do.end6:                                          ; preds = %do.body5
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %end.addr, align 8
  %call = call i32 @mbedtls_asn1_get_tag(i8** noundef %0, i8* noundef %1, i64* noundef %len, i32 noundef 48) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end6
  %2 = load i32, i32* %ret, align 4
  %call7 = call i32 @mbedtls_error_add(i32 noundef -15616, i32 noundef %2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 631) #5
  store i32 %call7, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end6
  %3 = load i8**, i8*** %p.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5
  store i8* %add.ptr, i8** %end.addr, align 8
  %6 = load i8**, i8*** %p.addr, align 8
  %7 = load i8*, i8** %end.addr, align 8
  %call8 = call i32 @pk_get_pk_alg(i8** noundef %6, i8* noundef %7, i32* noundef %pk_alg, %struct.mbedtls_asn1_buf* noundef %alg_params) #5
  store i32 %call8, i32* %ret, align 4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  %8 = load i32, i32* %ret, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end
  %9 = load i8**, i8*** %p.addr, align 8
  %10 = load i8*, i8** %end.addr, align 8
  %call12 = call i32 @mbedtls_asn1_get_bitstring_null(i8** noundef %9, i8* noundef %10, i64* noundef %len) #5
  store i32 %call12, i32* %ret, align 4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  %11 = load i32, i32* %ret, align 4
  %call15 = call i32 @mbedtls_error_add(i32 noundef -15104, i32 noundef %11, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 640) #5
  store i32 %call15, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end11
  %12 = load i8**, i8*** %p.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = load i64, i64* %len, align 8
  %add.ptr17 = getelementptr inbounds i8, i8* %13, i64 %14
  %15 = load i8*, i8** %end.addr, align 8
  %cmp18 = icmp ne i8* %add.ptr17, %15
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end16
  %call20 = call i32 @mbedtls_error_add(i32 noundef -15104, i32 noundef -102, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 644) #5
  store i32 %call20, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end16
  %16 = load i32, i32* %pk_alg, align 4
  %call22 = call %struct.mbedtls_pk_info_t* @mbedtls_pk_info_from_type(i32 noundef %16) #5
  store %struct.mbedtls_pk_info_t* %call22, %struct.mbedtls_pk_info_t** %pk_info, align 8
  %cmp23 = icmp eq %struct.mbedtls_pk_info_t* %call22, null
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  store i32 -15488, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end21
  %17 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  %18 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info, align 8
  %call26 = call i32 @mbedtls_pk_setup(%struct.mbedtls_pk_context* noundef %17, %struct.mbedtls_pk_info_t* noundef %18) #5
  store i32 %call26, i32* %ret, align 4
  %cmp27 = icmp ne i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end25
  %19 = load i32, i32* %ret, align 4
  store i32 %19, i32* %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.end25
  %20 = load i32, i32* %pk_alg, align 4
  %cmp30 = icmp eq i32 %20, 1
  br i1 %cmp30, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end29
  %21 = load i8**, i8*** %p.addr, align 8
  %22 = load i8*, i8** %end.addr, align 8
  %23 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  %24 = bitcast %struct.mbedtls_pk_context* %23 to { %struct.mbedtls_pk_info_t*, i8* }*
  %25 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %24, i32 0, i32 0
  %26 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %25, align 8
  %27 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %24, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %call32 = call %struct.mbedtls_rsa_context* @mbedtls_pk_rsa(%struct.mbedtls_pk_info_t* %26, i8* %28) #5
  %call33 = call i32 @pk_get_rsapubkey(i8** noundef %21, i8* noundef %22, %struct.mbedtls_rsa_context* noundef %call32) #5
  store i32 %call33, i32* %ret, align 4
  br label %if.end46

if.else:                                          ; preds = %if.end29
  %29 = load i32, i32* %pk_alg, align 4
  %cmp34 = icmp eq i32 %29, 3
  br i1 %cmp34, label %if.then36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %30 = load i32, i32* %pk_alg, align 4
  %cmp35 = icmp eq i32 %30, 2
  br i1 %cmp35, label %if.then36, label %if.else44

if.then36:                                        ; preds = %lor.lhs.false, %if.else
  %31 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  %32 = bitcast %struct.mbedtls_pk_context* %31 to { %struct.mbedtls_pk_info_t*, i8* }*
  %33 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %32, i32 0, i32 0
  %34 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %33, align 8
  %35 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %32, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %call37 = call %struct.mbedtls_ecp_keypair* @mbedtls_pk_ec(%struct.mbedtls_pk_info_t* %34, i8* %36) #5
  %grp = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %call37, i32 0, i32 0
  %call38 = call i32 @pk_use_ecparams(%struct.mbedtls_asn1_buf* noundef %alg_params, %struct.mbedtls_ecp_group* noundef %grp) #5
  store i32 %call38, i32* %ret, align 4
  %37 = load i32, i32* %ret, align 4
  %cmp39 = icmp eq i32 %37, 0
  br i1 %cmp39, label %if.then40, label %if.end43

if.then40:                                        ; preds = %if.then36
  %38 = load i8**, i8*** %p.addr, align 8
  %39 = load i8*, i8** %end.addr, align 8
  %40 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  %41 = bitcast %struct.mbedtls_pk_context* %40 to { %struct.mbedtls_pk_info_t*, i8* }*
  %42 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %41, i32 0, i32 0
  %43 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %42, align 8
  %44 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %41, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %call41 = call %struct.mbedtls_ecp_keypair* @mbedtls_pk_ec(%struct.mbedtls_pk_info_t* %43, i8* %45) #5
  %call42 = call i32 @pk_get_ecpubkey(i8** noundef %38, i8* noundef %39, %struct.mbedtls_ecp_keypair* noundef %call41) #5
  store i32 %call42, i32* %ret, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.then36
  br label %if.end45

if.else44:                                        ; preds = %lor.lhs.false
  store i32 -15488, i32* %ret, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else44, %if.end43
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then31
  %46 = load i32, i32* %ret, align 4
  %cmp47 = icmp eq i32 %46, 0
  br i1 %cmp47, label %land.lhs.true, label %if.end51

land.lhs.true:                                    ; preds = %if.end46
  %47 = load i8**, i8*** %p.addr, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = load i8*, i8** %end.addr, align 8
  %cmp48 = icmp ne i8* %48, %49
  br i1 %cmp48, label %if.then49, label %if.end51

if.then49:                                        ; preds = %land.lhs.true
  %call50 = call i32 @mbedtls_error_add(i32 noundef -15104, i32 noundef -102, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 670) #5
  store i32 %call50, i32* %ret, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %land.lhs.true, %if.end46
  %50 = load i32, i32* %ret, align 4
  %cmp52 = icmp ne i32 %50, 0
  br i1 %cmp52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end51
  %51 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  call void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef %51) #5
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end51
  %52 = load i32, i32* %ret, align 4
  store i32 %52, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end54, %if.then28, %if.then24, %if.then19, %if.then14, %if.then10, %if.then
  %53 = load i32, i32* %retval, align 4
  ret i32 %53
}

declare dso_local i32 @mbedtls_asn1_get_tag(i8** noundef, i8* noundef, i64* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_error_add(i32 noundef %high, i32 noundef %low, i8* noundef %file, i32 noundef %line) #0 {
entry:
  %high.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  store i32 %high, i32* %high.addr, align 4
  store i32 %low, i32* %low.addr, align 4
  store i8* %file, i8** %file.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  %0 = load i8*, i8** %file.addr, align 8
  %1 = load i32, i32* %line.addr, align 4
  %2 = load i32, i32* %high.addr, align 4
  %3 = load i32, i32* %low.addr, align 4
  %add = add nsw i32 %2, %3
  ret i32 %add
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pk_get_pk_alg(i8** noundef %p, i8* noundef %end, i32* noundef %pk_alg, %struct.mbedtls_asn1_buf* noundef %params) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %pk_alg.addr = alloca i32*, align 8
  %params.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %ret = alloca i32, align 4
  %alg_oid = alloca %struct.mbedtls_asn1_buf, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32* %pk_alg, i32** %pk_alg.addr, align 8
  store %struct.mbedtls_asn1_buf* %params, %struct.mbedtls_asn1_buf** %params.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %params.addr, align 8
  %1 = bitcast %struct.mbedtls_asn1_buf* %0 to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 24) #6
  %2 = load i8**, i8*** %p.addr, align 8
  %3 = load i8*, i8** %end.addr, align 8
  %4 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %params.addr, align 8
  %call1 = call i32 @mbedtls_asn1_get_alg(i8** noundef %2, i8* noundef %3, %struct.mbedtls_asn1_buf* noundef %alg_oid, %struct.mbedtls_asn1_buf* noundef %4) #5
  store i32 %call1, i32* %ret, align 4
  %cmp = icmp ne i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4
  %call2 = call i32 @mbedtls_error_add(i32 noundef -14976, i32 noundef %5, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 591) #5
  store i32 %call2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32*, i32** %pk_alg.addr, align 8
  %call3 = call i32 @mbedtls_oid_get_pk_alg(%struct.mbedtls_asn1_buf* noundef %alg_oid, i32* noundef %6) #5
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 -15488, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %7 = load i32*, i32** %pk_alg.addr, align 8
  %8 = load i32, i32* %7, align 4
  %cmp7 = icmp eq i32 %8, 1
  br i1 %cmp7, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %if.end6
  %9 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %params.addr, align 8
  %tag = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %9, i32 0, i32 0
  %10 = load i32, i32* %tag, align 8
  %cmp8 = icmp ne i32 %10, 5
  br i1 %cmp8, label %land.lhs.true9, label %lor.lhs.false

land.lhs.true9:                                   ; preds = %land.lhs.true
  %11 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %params.addr, align 8
  %tag10 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %11, i32 0, i32 0
  %12 = load i32, i32* %tag10, align 8
  %cmp11 = icmp ne i32 %12, 0
  br i1 %cmp11, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true9, %land.lhs.true
  %13 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %params.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %13, i32 0, i32 1
  %14 = load i64, i64* %len, align 8
  %cmp12 = icmp ne i64 %14, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %lor.lhs.false, %land.lhs.true9
  store i32 -14976, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %lor.lhs.false, %if.end6
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then13, %if.then5, %if.then
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

declare dso_local i32 @mbedtls_asn1_get_bitstring_null(i8** noundef, i8* noundef, i64* noundef) #1

declare dso_local %struct.mbedtls_pk_info_t* @mbedtls_pk_info_from_type(i32 noundef) #1

declare dso_local i32 @mbedtls_pk_setup(%struct.mbedtls_pk_context* noundef, %struct.mbedtls_pk_info_t* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pk_get_rsapubkey(i8** noundef %p, i8* noundef %end, %struct.mbedtls_rsa_context* noundef %rsa) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %rsa.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.mbedtls_rsa_context* %rsa, %struct.mbedtls_rsa_context** %rsa.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %end.addr, align 8
  %call = call i32 @mbedtls_asn1_get_tag(i8** noundef %0, i8* noundef %1, i64* noundef %len, i32 noundef 48) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4
  %call1 = call i32 @mbedtls_error_add(i32 noundef -15104, i32 noundef %2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 535) #5
  store i32 %call1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8**, i8*** %p.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5
  %6 = load i8*, i8** %end.addr, align 8
  %cmp2 = icmp ne i8* %add.ptr, %6
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = call i32 @mbedtls_error_add(i32 noundef -15104, i32 noundef -102, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 539) #5
  store i32 %call4, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %7 = load i8**, i8*** %p.addr, align 8
  %8 = load i8*, i8** %end.addr, align 8
  %call6 = call i32 @mbedtls_asn1_get_tag(i8** noundef %7, i8* noundef %8, i64* noundef %len, i32 noundef 2) #5
  store i32 %call6, i32* %ret, align 4
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  %9 = load i32, i32* %ret, align 4
  %call9 = call i32 @mbedtls_error_add(i32 noundef -15104, i32 noundef %9, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 543) #5
  store i32 %call9, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end5
  %10 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa.addr, align 8
  %11 = load i8**, i8*** %p.addr, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = load i64, i64* %len, align 8
  %call11 = call i32 @mbedtls_rsa_import_raw(%struct.mbedtls_rsa_context* noundef %10, i8* noundef %12, i64 noundef %13, i8* noundef null, i64 noundef 0, i8* noundef null, i64 noundef 0, i8* noundef null, i64 noundef 0, i8* noundef null, i64 noundef 0) #5
  store i32 %call11, i32* %ret, align 4
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  store i32 -15104, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end10
  %14 = load i64, i64* %len, align 8
  %15 = load i8**, i8*** %p.addr, align 8
  %16 = load i8*, i8** %15, align 8
  %add.ptr15 = getelementptr inbounds i8, i8* %16, i64 %14
  store i8* %add.ptr15, i8** %15, align 8
  %17 = load i8**, i8*** %p.addr, align 8
  %18 = load i8*, i8** %end.addr, align 8
  %call16 = call i32 @mbedtls_asn1_get_tag(i8** noundef %17, i8* noundef %18, i64* noundef %len, i32 noundef 2) #5
  store i32 %call16, i32* %ret, align 4
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end14
  %19 = load i32, i32* %ret, align 4
  %call19 = call i32 @mbedtls_error_add(i32 noundef -15104, i32 noundef %19, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 553) #5
  store i32 %call19, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end14
  %20 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa.addr, align 8
  %21 = load i8**, i8*** %p.addr, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load i64, i64* %len, align 8
  %call21 = call i32 @mbedtls_rsa_import_raw(%struct.mbedtls_rsa_context* noundef %20, i8* noundef null, i64 noundef 0, i8* noundef null, i64 noundef 0, i8* noundef null, i64 noundef 0, i8* noundef null, i64 noundef 0, i8* noundef %22, i64 noundef %23) #5
  store i32 %call21, i32* %ret, align 4
  %cmp22 = icmp ne i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  store i32 -15104, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end20
  %24 = load i64, i64* %len, align 8
  %25 = load i8**, i8*** %p.addr, align 8
  %26 = load i8*, i8** %25, align 8
  %add.ptr25 = getelementptr inbounds i8, i8* %26, i64 %24
  store i8* %add.ptr25, i8** %25, align 8
  %27 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa.addr, align 8
  %call26 = call i32 @mbedtls_rsa_complete(%struct.mbedtls_rsa_context* noundef %27) #5
  %cmp27 = icmp ne i32 %call26, 0
  br i1 %cmp27, label %if.then30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end24
  %28 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa.addr, align 8
  %call28 = call i32 @mbedtls_rsa_check_pubkey(%struct.mbedtls_rsa_context* noundef %28) #5
  %cmp29 = icmp ne i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %lor.lhs.false, %if.end24
  store i32 -15104, i32* %retval, align 4
  br label %return

if.end31:                                         ; preds = %lor.lhs.false
  %29 = load i8**, i8*** %p.addr, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** %end.addr, align 8
  %cmp32 = icmp ne i8* %30, %31
  br i1 %cmp32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end31
  %call34 = call i32 @mbedtls_error_add(i32 noundef -15104, i32 noundef -102, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 569) #5
  store i32 %call34, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.end31
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end35, %if.then33, %if.then30, %if.then23, %if.then18, %if.then13, %if.then8, %if.then3, %if.then
  %32 = load i32, i32* %retval, align 4
  ret i32 %32
}

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
  %pk_ctx = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %pk, i32 0, i32 1
  %3 = load i8*, i8** %pk_ctx, align 8
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

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pk_use_ecparams(%struct.mbedtls_asn1_buf* noundef %params, %struct.mbedtls_ecp_group* noundef %grp) #0 {
entry:
  %retval = alloca i32, align 4
  %params.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %ret = alloca i32, align 4
  %grp_id = alloca i32, align 4
  store %struct.mbedtls_asn1_buf* %params, %struct.mbedtls_asn1_buf** %params.addr, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %params.addr, align 8
  %tag = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %0, i32 0, i32 0
  %1 = load i32, i32* %tag, align 8
  %cmp = icmp eq i32 %1, 6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %params.addr, align 8
  %call = call i32 @mbedtls_oid_get_ec_grp(%struct.mbedtls_asn1_buf* noundef %2, i32* noundef %grp_id) #5
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 -14848, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end7

if.else:                                          ; preds = %entry
  %3 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %params.addr, align 8
  %call3 = call i32 @pk_group_id_from_specified(%struct.mbedtls_asn1_buf* noundef %3, i32* noundef %grp_id) #5
  store i32 %call3, i32* %ret, align 4
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.else
  %4 = load i32, i32* %ret, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end
  %5 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %id = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %5, i32 0, i32 0
  %6 = load i32, i32* %id, align 8
  %cmp8 = icmp ne i32 %6, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %if.end7
  %7 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %id9 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %7, i32 0, i32 0
  %8 = load i32, i32* %id9, align 8
  %9 = load i32, i32* %grp_id, align 4
  %cmp10 = icmp ne i32 %8, %9
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %land.lhs.true
  store i32 -15616, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %land.lhs.true, %if.end7
  %10 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %11 = load i32, i32* %grp_id, align 4
  %call13 = call i32 @mbedtls_ecp_group_load(%struct.mbedtls_ecp_group* noundef %10, i32 noundef %11) #5
  store i32 %call13, i32* %ret, align 4
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  %12 = load i32, i32* %ret, align 4
  store i32 %12, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end12
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.then15, %if.then11, %if.then5, %if.then2
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

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
  %pk_ctx = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %pk, i32 0, i32 1
  %3 = load i8*, i8** %pk_ctx, align 8
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

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pk_get_ecpubkey(i8** noundef %p, i8* noundef %end, %struct.mbedtls_ecp_keypair* noundef %key) #0 {
entry:
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %key.addr = alloca %struct.mbedtls_ecp_keypair*, align 8
  %ret = alloca i32, align 4
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.mbedtls_ecp_keypair* %key, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %Q = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %1, i32 0, i32 2
  %2 = load i8**, i8*** %p.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i8*, i8** %end.addr, align 8
  %5 = load i8**, i8*** %p.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call = call i32 @mbedtls_ecp_point_read_binary(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %Q, i8* noundef %3, i64 noundef %sub.ptr.sub) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %grp1 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %7, i32 0, i32 0
  %8 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %Q2 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %8, i32 0, i32 2
  %call3 = call i32 @mbedtls_ecp_check_pubkey(%struct.mbedtls_ecp_group* noundef %grp1, %struct.mbedtls_ecp_point* noundef %Q2) #5
  store i32 %call3, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** %end.addr, align 8
  %10 = load i8**, i8*** %p.addr, align 8
  store i8* %9, i8** %10, align 8
  %11 = load i32, i32* %ret, align 4
  ret i32 %11
}

declare dso_local void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef) #1

declare dso_local void @mbedtls_pem_init(%struct.mbedtls_pem_context* noundef) #1

declare dso_local i32 @mbedtls_pem_read_buffer(%struct.mbedtls_pem_context* noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pk_parse_key_pkcs1_der(%struct.mbedtls_rsa_context* noundef %rsa, i8* noundef %key, i64 noundef %keylen) #0 {
entry:
  %retval = alloca i32, align 4
  %rsa.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %key.addr = alloca i8*, align 8
  %keylen.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %version = alloca i32, align 4
  %len = alloca i64, align 8
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %T = alloca %struct.mbedtls_mpi, align 8
  store %struct.mbedtls_rsa_context* %rsa, %struct.mbedtls_rsa_context** %rsa.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i64 %keylen, i64* %keylen.addr, align 8
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %T) #5
  %0 = load i8*, i8** %key.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i8*, i8** %p, align 8
  %2 = load i64, i64* %keylen.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %2
  store i8* %add.ptr, i8** %end, align 8
  %3 = load i8*, i8** %end, align 8
  %call = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %3, i64* noundef %len, i32 noundef 48) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %ret, align 4
  %call1 = call i32 @mbedtls_error_add(i32 noundef -15616, i32 noundef %4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 741) #5
  store i32 %call1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %p, align 8
  %6 = load i64, i64* %len, align 8
  %add.ptr2 = getelementptr inbounds i8, i8* %5, i64 %6
  store i8* %add.ptr2, i8** %end, align 8
  %7 = load i8*, i8** %end, align 8
  %call3 = call i32 @mbedtls_asn1_get_int(i8** noundef %p, i8* noundef %7, i32* noundef %version) #5
  store i32 %call3, i32* %ret, align 4
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %8 = load i32, i32* %ret, align 4
  %call6 = call i32 @mbedtls_error_add(i32 noundef -15616, i32 noundef %8, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 748) #5
  store i32 %call6, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %9 = load i32, i32* %version, align 4
  %cmp8 = icmp ne i32 %9, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  store i32 -15744, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end7
  %10 = load i8*, i8** %end, align 8
  %call11 = call i32 @asn1_get_nonzero_mpi(i8** noundef %p, i8* noundef %10, %struct.mbedtls_mpi* noundef %T) #5
  store i32 %call11, i32* %ret, align 4
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end10
  %11 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa.addr, align 8
  %call13 = call i32 @mbedtls_rsa_import(%struct.mbedtls_rsa_context* noundef %11, %struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null) #5
  store i32 %call13, i32* %ret, align 4
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %lor.lhs.false, %if.end10
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %end, align 8
  %call17 = call i32 @asn1_get_nonzero_mpi(i8** noundef %p, i8* noundef %12, %struct.mbedtls_mpi* noundef %T) #5
  store i32 %call17, i32* %ret, align 4
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then22, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.end16
  %13 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa.addr, align 8
  %call20 = call i32 @mbedtls_rsa_import(%struct.mbedtls_rsa_context* noundef %13, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef %T) #5
  store i32 %call20, i32* %ret, align 4
  %cmp21 = icmp ne i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %lor.lhs.false19, %if.end16
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false19
  %14 = load i8*, i8** %end, align 8
  %call24 = call i32 @asn1_get_nonzero_mpi(i8** noundef %p, i8* noundef %14, %struct.mbedtls_mpi* noundef %T) #5
  store i32 %call24, i32* %ret, align 4
  %cmp25 = icmp ne i32 %call24, 0
  br i1 %cmp25, label %if.then29, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %if.end23
  %15 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa.addr, align 8
  %call27 = call i32 @mbedtls_rsa_import(%struct.mbedtls_rsa_context* noundef %15, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef null) #5
  store i32 %call27, i32* %ret, align 4
  %cmp28 = icmp ne i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %lor.lhs.false26, %if.end23
  br label %cleanup

if.end30:                                         ; preds = %lor.lhs.false26
  %16 = load i8*, i8** %end, align 8
  %call31 = call i32 @asn1_get_nonzero_mpi(i8** noundef %p, i8* noundef %16, %struct.mbedtls_mpi* noundef %T) #5
  store i32 %call31, i32* %ret, align 4
  %cmp32 = icmp ne i32 %call31, 0
  br i1 %cmp32, label %if.then36, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %if.end30
  %17 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa.addr, align 8
  %call34 = call i32 @mbedtls_rsa_import(%struct.mbedtls_rsa_context* noundef %17, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null) #5
  store i32 %call34, i32* %ret, align 4
  %cmp35 = icmp ne i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %lor.lhs.false33, %if.end30
  br label %cleanup

if.end37:                                         ; preds = %lor.lhs.false33
  %18 = load i8*, i8** %end, align 8
  %call38 = call i32 @asn1_get_nonzero_mpi(i8** noundef %p, i8* noundef %18, %struct.mbedtls_mpi* noundef %T) #5
  store i32 %call38, i32* %ret, align 4
  %cmp39 = icmp ne i32 %call38, 0
  br i1 %cmp39, label %if.then43, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %if.end37
  %19 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa.addr, align 8
  %call41 = call i32 @mbedtls_rsa_import(%struct.mbedtls_rsa_context* noundef %19, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null) #5
  store i32 %call41, i32* %ret, align 4
  %cmp42 = icmp ne i32 %call41, 0
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %lor.lhs.false40, %if.end37
  br label %cleanup

if.end44:                                         ; preds = %lor.lhs.false40
  %20 = load i8*, i8** %end, align 8
  %call45 = call i32 @asn1_get_nonzero_mpi(i8** noundef %p, i8* noundef %20, %struct.mbedtls_mpi* noundef %T) #5
  store i32 %call45, i32* %ret, align 4
  %cmp46 = icmp ne i32 %call45, 0
  br i1 %cmp46, label %if.then50, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %if.end44
  %21 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa.addr, align 8
  %DP = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %21, i32 0, i32 7
  %call48 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %DP, %struct.mbedtls_mpi* noundef %T) #5
  store i32 %call48, i32* %ret, align 4
  %cmp49 = icmp ne i32 %call48, 0
  br i1 %cmp49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %lor.lhs.false47, %if.end44
  br label %cleanup

if.end51:                                         ; preds = %lor.lhs.false47
  %22 = load i8*, i8** %end, align 8
  %call52 = call i32 @asn1_get_nonzero_mpi(i8** noundef %p, i8* noundef %22, %struct.mbedtls_mpi* noundef %T) #5
  store i32 %call52, i32* %ret, align 4
  %cmp53 = icmp ne i32 %call52, 0
  br i1 %cmp53, label %if.then57, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %if.end51
  %23 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa.addr, align 8
  %DQ = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %23, i32 0, i32 8
  %call55 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %DQ, %struct.mbedtls_mpi* noundef %T) #5
  store i32 %call55, i32* %ret, align 4
  %cmp56 = icmp ne i32 %call55, 0
  br i1 %cmp56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %lor.lhs.false54, %if.end51
  br label %cleanup

if.end58:                                         ; preds = %lor.lhs.false54
  %24 = load i8*, i8** %end, align 8
  %call59 = call i32 @asn1_get_nonzero_mpi(i8** noundef %p, i8* noundef %24, %struct.mbedtls_mpi* noundef %T) #5
  store i32 %call59, i32* %ret, align 4
  %cmp60 = icmp ne i32 %call59, 0
  br i1 %cmp60, label %if.then64, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %if.end58
  %25 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa.addr, align 8
  %QP = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %25, i32 0, i32 9
  %call62 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %QP, %struct.mbedtls_mpi* noundef %T) #5
  store i32 %call62, i32* %ret, align 4
  %cmp63 = icmp ne i32 %call62, 0
  br i1 %cmp63, label %if.then64, label %if.end65

if.then64:                                        ; preds = %lor.lhs.false61, %if.end58
  br label %cleanup

if.end65:                                         ; preds = %lor.lhs.false61
  %26 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa.addr, align 8
  %call66 = call i32 @mbedtls_rsa_complete(%struct.mbedtls_rsa_context* noundef %26) #5
  store i32 %call66, i32* %ret, align 4
  %cmp67 = icmp ne i32 %call66, 0
  br i1 %cmp67, label %if.then71, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %if.end65
  %27 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa.addr, align 8
  %call69 = call i32 @mbedtls_rsa_check_pubkey(%struct.mbedtls_rsa_context* noundef %27) #5
  store i32 %call69, i32* %ret, align 4
  %cmp70 = icmp ne i32 %call69, 0
  br i1 %cmp70, label %if.then71, label %if.end72

if.then71:                                        ; preds = %lor.lhs.false68, %if.end65
  br label %cleanup

if.end72:                                         ; preds = %lor.lhs.false68
  %28 = load i8*, i8** %p, align 8
  %29 = load i8*, i8** %end, align 8
  %cmp73 = icmp ne i8* %28, %29
  br i1 %cmp73, label %if.then74, label %if.end76

if.then74:                                        ; preds = %if.end72
  %call75 = call i32 @mbedtls_error_add(i32 noundef -15616, i32 noundef -102, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 839) #5
  store i32 %call75, i32* %ret, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %if.end72
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %if.then71, %if.then64, %if.then57, %if.then50, %if.then43, %if.then36, %if.then29, %if.then22, %if.then15
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %T) #5
  %30 = load i32, i32* %ret, align 4
  %cmp77 = icmp ne i32 %30, 0
  br i1 %cmp77, label %if.then78, label %if.end83

if.then78:                                        ; preds = %cleanup
  %31 = load i32, i32* %ret, align 4
  %and = and i32 %31, 65408
  %cmp79 = icmp eq i32 %and, 0
  br i1 %cmp79, label %if.then80, label %if.else

if.then80:                                        ; preds = %if.then78
  %32 = load i32, i32* %ret, align 4
  %call81 = call i32 @mbedtls_error_add(i32 noundef -15616, i32 noundef %32, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 850) #5
  store i32 %call81, i32* %ret, align 4
  br label %if.end82

if.else:                                          ; preds = %if.then78
  store i32 -15616, i32* %ret, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.else, %if.then80
  %33 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa.addr, align 8
  call void @mbedtls_rsa_free(%struct.mbedtls_rsa_context* noundef %33) #5
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %cleanup
  %34 = load i32, i32* %ret, align 4
  store i32 %34, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end83, %if.then9, %if.then5, %if.then
  %35 = load i32, i32* %retval, align 4
  ret i32 %35
}

declare dso_local void @mbedtls_pem_free(%struct.mbedtls_pem_context* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pk_parse_key_sec1_der(%struct.mbedtls_ecp_keypair* noundef %eck, i8* noundef %key, i64 noundef %keylen, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %eck.addr = alloca %struct.mbedtls_ecp_keypair*, align 8
  %key.addr = alloca i8*, align 8
  %keylen.addr = alloca i64, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %version = alloca i32, align 4
  %pubkey_done = alloca i32, align 4
  %len = alloca i64, align 8
  %params = alloca %struct.mbedtls_asn1_buf, align 8
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %end2 = alloca i8*, align 8
  store %struct.mbedtls_ecp_keypair* %eck, %struct.mbedtls_ecp_keypair** %eck.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i64 %keylen, i64* %keylen.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = bitcast %struct.mbedtls_asn1_buf* %params to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 24, i1 false)
  %1 = load i8*, i8** %key.addr, align 8
  store i8* %1, i8** %p, align 8
  %2 = load i8*, i8** %p, align 8
  %3 = load i64, i64* %keylen.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %3
  store i8* %add.ptr, i8** %end, align 8
  %4 = load i8*, i8** %end, align 8
  %call = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %4, i64* noundef %len, i32 noundef 48) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4
  %call1 = call i32 @mbedtls_error_add(i32 noundef -15616, i32 noundef %5, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 890) #5
  store i32 %call1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i8*, i8** %p, align 8
  %7 = load i64, i64* %len, align 8
  %add.ptr2 = getelementptr inbounds i8, i8* %6, i64 %7
  store i8* %add.ptr2, i8** %end, align 8
  %8 = load i8*, i8** %end, align 8
  %call3 = call i32 @mbedtls_asn1_get_int(i8** noundef %p, i8* noundef %8, i32* noundef %version) #5
  store i32 %call3, i32* %ret, align 4
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %9 = load i32, i32* %ret, align 4
  %call6 = call i32 @mbedtls_error_add(i32 noundef -15616, i32 noundef %9, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 896) #5
  store i32 %call6, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %10 = load i32, i32* %version, align 4
  %cmp8 = icmp ne i32 %10, 1
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  store i32 -15744, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end7
  %11 = load i8*, i8** %end, align 8
  %call11 = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %11, i64* noundef %len, i32 noundef 4) #5
  store i32 %call11, i32* %ret, align 4
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  %12 = load i32, i32* %ret, align 4
  %call14 = call i32 @mbedtls_error_add(i32 noundef -15616, i32 noundef %12, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 902) #5
  store i32 %call14, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end10
  %13 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %eck.addr, align 8
  %d = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %13, i32 0, i32 1
  %14 = load i8*, i8** %p, align 8
  %15 = load i64, i64* %len, align 8
  %call16 = call i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef %d, i8* noundef %14, i64 noundef %15) #5
  store i32 %call16, i32* %ret, align 4
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end15
  %16 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %eck.addr, align 8
  call void @mbedtls_ecp_keypair_free(%struct.mbedtls_ecp_keypair* noundef %16) #5
  %17 = load i32, i32* %ret, align 4
  %call19 = call i32 @mbedtls_error_add(i32 noundef -15616, i32 noundef %17, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 907) #5
  store i32 %call19, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end15
  %18 = load i64, i64* %len, align 8
  %19 = load i8*, i8** %p, align 8
  %add.ptr21 = getelementptr inbounds i8, i8* %19, i64 %18
  store i8* %add.ptr21, i8** %p, align 8
  store i32 0, i32* %pubkey_done, align 4
  %20 = load i8*, i8** %p, align 8
  %21 = load i8*, i8** %end, align 8
  %cmp22 = icmp ne i8* %20, %21
  br i1 %cmp22, label %if.then23, label %if.end39

if.then23:                                        ; preds = %if.end20
  %22 = load i8*, i8** %end, align 8
  %call24 = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %22, i64* noundef %len, i32 noundef 160) #5
  store i32 %call24, i32* %ret, align 4
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.then23
  %23 = load i8*, i8** %p, align 8
  %24 = load i64, i64* %len, align 8
  %add.ptr27 = getelementptr inbounds i8, i8* %23, i64 %24
  %call28 = call i32 @pk_get_ecparams(i8** noundef %p, i8* noundef %add.ptr27, %struct.mbedtls_asn1_buf* noundef %params) #5
  store i32 %call28, i32* %ret, align 4
  %cmp29 = icmp ne i32 %call28, 0
  br i1 %cmp29, label %if.then32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then26
  %25 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %eck.addr, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %25, i32 0, i32 0
  %call30 = call i32 @pk_use_ecparams(%struct.mbedtls_asn1_buf* noundef %params, %struct.mbedtls_ecp_group* noundef %grp) #5
  store i32 %call30, i32* %ret, align 4
  %cmp31 = icmp ne i32 %call30, 0
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %lor.lhs.false, %if.then26
  %26 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %eck.addr, align 8
  call void @mbedtls_ecp_keypair_free(%struct.mbedtls_ecp_keypair* noundef %26) #5
  %27 = load i32, i32* %ret, align 4
  store i32 %27, i32* %retval, align 4
  br label %return

if.end33:                                         ; preds = %lor.lhs.false
  br label %if.end38

if.else:                                          ; preds = %if.then23
  %28 = load i32, i32* %ret, align 4
  %cmp34 = icmp ne i32 %28, -98
  br i1 %cmp34, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.else
  %29 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %eck.addr, align 8
  call void @mbedtls_ecp_keypair_free(%struct.mbedtls_ecp_keypair* noundef %29) #5
  %30 = load i32, i32* %ret, align 4
  %call36 = call i32 @mbedtls_error_add(i32 noundef -15616, i32 noundef %30, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 931) #5
  store i32 %call36, i32* %retval, align 4
  br label %return

if.end37:                                         ; preds = %if.else
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end33
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end20
  %31 = load i8*, i8** %p, align 8
  %32 = load i8*, i8** %end, align 8
  %cmp40 = icmp ne i8* %31, %32
  br i1 %cmp40, label %if.then41, label %if.end70

if.then41:                                        ; preds = %if.end39
  %33 = load i8*, i8** %end, align 8
  %call42 = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %33, i64* noundef %len, i32 noundef 161) #5
  store i32 %call42, i32* %ret, align 4
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %if.then44, label %if.else64

if.then44:                                        ; preds = %if.then41
  %34 = load i8*, i8** %p, align 8
  %35 = load i64, i64* %len, align 8
  %add.ptr45 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8* %add.ptr45, i8** %end2, align 8
  %36 = load i8*, i8** %end2, align 8
  %call46 = call i32 @mbedtls_asn1_get_bitstring_null(i8** noundef %p, i8* noundef %36, i64* noundef %len) #5
  store i32 %call46, i32* %ret, align 4
  %cmp47 = icmp ne i32 %call46, 0
  br i1 %cmp47, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.then44
  %37 = load i32, i32* %ret, align 4
  %call49 = call i32 @mbedtls_error_add(i32 noundef -15616, i32 noundef %37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 947) #5
  store i32 %call49, i32* %retval, align 4
  br label %return

if.end50:                                         ; preds = %if.then44
  %38 = load i8*, i8** %p, align 8
  %39 = load i64, i64* %len, align 8
  %add.ptr51 = getelementptr inbounds i8, i8* %38, i64 %39
  %40 = load i8*, i8** %end2, align 8
  %cmp52 = icmp ne i8* %add.ptr51, %40
  br i1 %cmp52, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end50
  %call54 = call i32 @mbedtls_error_add(i32 noundef -15616, i32 noundef -102, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 951) #5
  store i32 %call54, i32* %retval, align 4
  br label %return

if.end55:                                         ; preds = %if.end50
  %41 = load i8*, i8** %end2, align 8
  %42 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %eck.addr, align 8
  %call56 = call i32 @pk_get_ecpubkey(i8** noundef %p, i8* noundef %41, %struct.mbedtls_ecp_keypair* noundef %42) #5
  store i32 %call56, i32* %ret, align 4
  %cmp57 = icmp eq i32 %call56, 0
  br i1 %cmp57, label %if.then58, label %if.else59

if.then58:                                        ; preds = %if.end55
  store i32 1, i32* %pubkey_done, align 4
  br label %if.end63

if.else59:                                        ; preds = %if.end55
  %43 = load i32, i32* %ret, align 4
  %cmp60 = icmp ne i32 %43, -20096
  br i1 %cmp60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.else59
  store i32 -15616, i32* %retval, align 4
  br label %return

if.end62:                                         ; preds = %if.else59
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.then58
  br label %if.end69

if.else64:                                        ; preds = %if.then41
  %44 = load i32, i32* %ret, align 4
  %cmp65 = icmp ne i32 %44, -98
  br i1 %cmp65, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.else64
  %45 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %eck.addr, align 8
  call void @mbedtls_ecp_keypair_free(%struct.mbedtls_ecp_keypair* noundef %45) #5
  %46 = load i32, i32* %ret, align 4
  %call67 = call i32 @mbedtls_error_add(i32 noundef -15616, i32 noundef %46, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 968) #5
  store i32 %call67, i32* %retval, align 4
  br label %return

if.end68:                                         ; preds = %if.else64
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.end63
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.end39
  %47 = load i32, i32* %pubkey_done, align 4
  %tobool = icmp ne i32 %47, 0
  br i1 %tobool, label %if.end78, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end70
  %48 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %eck.addr, align 8
  %grp71 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %48, i32 0, i32 0
  %49 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %eck.addr, align 8
  %Q = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %49, i32 0, i32 2
  %50 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %eck.addr, align 8
  %d72 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %50, i32 0, i32 1
  %51 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %eck.addr, align 8
  %grp73 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %51, i32 0, i32 0
  %G = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp73, i32 0, i32 4
  %52 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %53 = load i8*, i8** %p_rng.addr, align 8
  %call74 = call i32 @mbedtls_ecp_mul(%struct.mbedtls_ecp_group* noundef %grp71, %struct.mbedtls_ecp_point* noundef %Q, %struct.mbedtls_mpi* noundef %d72, %struct.mbedtls_ecp_point* noundef %G, i32 (i8*, i8*, i64)* noundef %52, i8* noundef %53) #5
  store i32 %call74, i32* %ret, align 4
  %cmp75 = icmp ne i32 %call74, 0
  br i1 %cmp75, label %if.then76, label %if.end78

if.then76:                                        ; preds = %land.lhs.true
  %54 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %eck.addr, align 8
  call void @mbedtls_ecp_keypair_free(%struct.mbedtls_ecp_keypair* noundef %54) #5
  %55 = load i32, i32* %ret, align 4
  %call77 = call i32 @mbedtls_error_add(i32 noundef -15616, i32 noundef %55, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 977) #5
  store i32 %call77, i32* %retval, align 4
  br label %return

if.end78:                                         ; preds = %land.lhs.true, %if.end70
  %56 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %eck.addr, align 8
  %grp79 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %56, i32 0, i32 0
  %57 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %eck.addr, align 8
  %d80 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %57, i32 0, i32 1
  %call81 = call i32 @mbedtls_ecp_check_privkey(%struct.mbedtls_ecp_group* noundef %grp79, %struct.mbedtls_mpi* noundef %d80) #5
  store i32 %call81, i32* %ret, align 4
  %cmp82 = icmp ne i32 %call81, 0
  br i1 %cmp82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end78
  %58 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %eck.addr, align 8
  call void @mbedtls_ecp_keypair_free(%struct.mbedtls_ecp_keypair* noundef %58) #5
  %59 = load i32, i32* %ret, align 4
  store i32 %59, i32* %retval, align 4
  br label %return

if.end84:                                         ; preds = %if.end78
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end84, %if.then83, %if.then76, %if.then66, %if.then61, %if.then53, %if.then48, %if.then35, %if.then32, %if.then18, %if.then13, %if.then9, %if.then5, %if.then
  %60 = load i32, i32* %retval, align 4
  ret i32 %60
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pk_parse_key_pkcs8_unencrypted_der(%struct.mbedtls_pk_context* noundef %pk, i8* noundef %key, i64 noundef %keylen, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %pk.addr = alloca %struct.mbedtls_pk_context*, align 8
  %key.addr = alloca i8*, align 8
  %keylen.addr = alloca i64, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %version = alloca i32, align 4
  %len = alloca i64, align 8
  %params = alloca %struct.mbedtls_asn1_buf, align 8
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %pk_alg = alloca i32, align 4
  %pk_info = alloca %struct.mbedtls_pk_info_t*, align 8
  store %struct.mbedtls_pk_context* %pk, %struct.mbedtls_pk_context** %pk.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i64 %keylen, i64* %keylen.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i8*, i8** %p, align 8
  %2 = load i64, i64* %keylen.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %2
  store i8* %add.ptr, i8** %end, align 8
  store i32 0, i32* %pk_alg, align 4
  %3 = load i8*, i8** %end, align 8
  %call = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %3, i64* noundef %len, i32 noundef 48) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %ret, align 4
  %call1 = call i32 @mbedtls_error_add(i32 noundef -15616, i32 noundef %4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1040) #5
  store i32 %call1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %p, align 8
  %6 = load i64, i64* %len, align 8
  %add.ptr2 = getelementptr inbounds i8, i8* %5, i64 %6
  store i8* %add.ptr2, i8** %end, align 8
  %7 = load i8*, i8** %end, align 8
  %call3 = call i32 @mbedtls_asn1_get_int(i8** noundef %p, i8* noundef %7, i32* noundef %version) #5
  store i32 %call3, i32* %ret, align 4
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %8 = load i32, i32* %ret, align 4
  %call6 = call i32 @mbedtls_error_add(i32 noundef -15616, i32 noundef %8, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1046) #5
  store i32 %call6, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %9 = load i32, i32* %version, align 4
  %cmp8 = icmp ne i32 %9, 0
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end7
  %10 = load i32, i32* %ret, align 4
  %call10 = call i32 @mbedtls_error_add(i32 noundef -15744, i32 noundef %10, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1049) #5
  store i32 %call10, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end7
  %11 = load i8*, i8** %end, align 8
  %call12 = call i32 @pk_get_pk_alg(i8** noundef %p, i8* noundef %11, i32* noundef %pk_alg, %struct.mbedtls_asn1_buf* noundef %params) #5
  store i32 %call12, i32* %ret, align 4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  %12 = load i32, i32* %ret, align 4
  store i32 %12, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end11
  %13 = load i8*, i8** %end, align 8
  %call16 = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %13, i64* noundef %len, i32 noundef 4) #5
  store i32 %call16, i32* %ret, align 4
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end15
  %14 = load i32, i32* %ret, align 4
  %call19 = call i32 @mbedtls_error_add(i32 noundef -15616, i32 noundef %14, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1057) #5
  store i32 %call19, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end15
  %15 = load i64, i64* %len, align 8
  %cmp21 = icmp ult i64 %15, 1
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end20
  %call23 = call i32 @mbedtls_error_add(i32 noundef -15616, i32 noundef -96, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1061) #5
  store i32 %call23, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end20
  %16 = load i32, i32* %pk_alg, align 4
  %call25 = call %struct.mbedtls_pk_info_t* @mbedtls_pk_info_from_type(i32 noundef %16) #5
  store %struct.mbedtls_pk_info_t* %call25, %struct.mbedtls_pk_info_t** %pk_info, align 8
  %cmp26 = icmp eq %struct.mbedtls_pk_info_t* %call25, null
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  store i32 -15488, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end24
  %17 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  %18 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info, align 8
  %call29 = call i32 @mbedtls_pk_setup(%struct.mbedtls_pk_context* noundef %17, %struct.mbedtls_pk_info_t* noundef %18) #5
  store i32 %call29, i32* %ret, align 4
  %cmp30 = icmp ne i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end28
  %19 = load i32, i32* %ret, align 4
  store i32 %19, i32* %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end28
  %20 = load i32, i32* %pk_alg, align 4
  %cmp33 = icmp eq i32 %20, 1
  br i1 %cmp33, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.end32
  %21 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  %22 = bitcast %struct.mbedtls_pk_context* %21 to { %struct.mbedtls_pk_info_t*, i8* }*
  %23 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %22, i32 0, i32 0
  %24 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %23, align 8
  %25 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %22, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %call35 = call %struct.mbedtls_rsa_context* @mbedtls_pk_rsa(%struct.mbedtls_pk_info_t* %24, i8* %26) #5
  %27 = load i8*, i8** %p, align 8
  %28 = load i64, i64* %len, align 8
  %call36 = call i32 @pk_parse_key_pkcs1_der(%struct.mbedtls_rsa_context* noundef %call35, i8* noundef %27, i64 noundef %28) #5
  store i32 %call36, i32* %ret, align 4
  %cmp37 = icmp ne i32 %call36, 0
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.then34
  %29 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  call void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef %29) #5
  %30 = load i32, i32* %ret, align 4
  store i32 %30, i32* %retval, align 4
  br label %return

if.end39:                                         ; preds = %if.then34
  br label %if.end54

if.else:                                          ; preds = %if.end32
  %31 = load i32, i32* %pk_alg, align 4
  %cmp40 = icmp eq i32 %31, 2
  br i1 %cmp40, label %if.then42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %32 = load i32, i32* %pk_alg, align 4
  %cmp41 = icmp eq i32 %32, 3
  br i1 %cmp41, label %if.then42, label %if.else52

if.then42:                                        ; preds = %lor.lhs.false, %if.else
  %33 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  %34 = bitcast %struct.mbedtls_pk_context* %33 to { %struct.mbedtls_pk_info_t*, i8* }*
  %35 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %34, i32 0, i32 0
  %36 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %35, align 8
  %37 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %34, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %call43 = call %struct.mbedtls_ecp_keypair* @mbedtls_pk_ec(%struct.mbedtls_pk_info_t* %36, i8* %38) #5
  %grp = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %call43, i32 0, i32 0
  %call44 = call i32 @pk_use_ecparams(%struct.mbedtls_asn1_buf* noundef %params, %struct.mbedtls_ecp_group* noundef %grp) #5
  store i32 %call44, i32* %ret, align 4
  %cmp45 = icmp ne i32 %call44, 0
  br i1 %cmp45, label %if.then50, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %if.then42
  %39 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  %40 = bitcast %struct.mbedtls_pk_context* %39 to { %struct.mbedtls_pk_info_t*, i8* }*
  %41 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %40, i32 0, i32 0
  %42 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %41, align 8
  %43 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %40, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %call47 = call %struct.mbedtls_ecp_keypair* @mbedtls_pk_ec(%struct.mbedtls_pk_info_t* %42, i8* %44) #5
  %45 = load i8*, i8** %p, align 8
  %46 = load i64, i64* %len, align 8
  %47 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %48 = load i8*, i8** %p_rng.addr, align 8
  %call48 = call i32 @pk_parse_key_sec1_der(%struct.mbedtls_ecp_keypair* noundef %call47, i8* noundef %45, i64 noundef %46, i32 (i8*, i8*, i64)* noundef %47, i8* noundef %48) #5
  store i32 %call48, i32* %ret, align 4
  %cmp49 = icmp ne i32 %call48, 0
  br i1 %cmp49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %lor.lhs.false46, %if.then42
  %49 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  call void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef %49) #5
  %50 = load i32, i32* %ret, align 4
  store i32 %50, i32* %retval, align 4
  br label %return

if.end51:                                         ; preds = %lor.lhs.false46
  br label %if.end53

if.else52:                                        ; preds = %lor.lhs.false
  store i32 -15488, i32* %retval, align 4
  br label %return

if.end53:                                         ; preds = %if.end51
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.end39
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end54, %if.else52, %if.then50, %if.then38, %if.then31, %if.then27, %if.then22, %if.then18, %if.then14, %if.then9, %if.then5, %if.then
  %51 = load i32, i32* %retval, align 4
  ret i32 %51
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pk_parse_key_pkcs8_encrypted_der(%struct.mbedtls_pk_context* noundef %pk, i8* noundef %key, i64 noundef %keylen, i8* noundef %pwd, i64 noundef %pwdlen, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %pk.addr = alloca %struct.mbedtls_pk_context*, align 8
  %key.addr = alloca i8*, align 8
  %keylen.addr = alloca i64, align 8
  %pwd.addr = alloca i8*, align 8
  %pwdlen.addr = alloca i64, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %decrypted = alloca i32, align 4
  %len = alloca i64, align 8
  %buf = alloca i8*, align 8
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %pbe_alg_oid = alloca %struct.mbedtls_asn1_buf, align 8
  %pbe_params = alloca %struct.mbedtls_asn1_buf, align 8
  %cipher_alg = alloca i32, align 4
  %md_alg = alloca i32, align 4
  store %struct.mbedtls_pk_context* %pk, %struct.mbedtls_pk_context** %pk.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i64 %keylen, i64* %keylen.addr, align 8
  store i8* %pwd, i8** %pwd.addr, align 8
  store i64 %pwdlen, i64* %pwdlen.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 0, i32* %decrypted, align 4
  %0 = load i8*, i8** %key.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i8*, i8** %p, align 8
  %2 = load i64, i64* %keylen.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %2
  store i8* %add.ptr, i8** %end, align 8
  %3 = load i64, i64* %pwdlen.addr, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15360, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %end, align 8
  %call = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %4, i64* noundef %len, i32 noundef 48) #5
  store i32 %call, i32* %ret, align 4
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %5 = load i32, i32* %ret, align 4
  %call3 = call i32 @mbedtls_error_add(i32 noundef -15616, i32 noundef %5, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1145) #5
  store i32 %call3, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %6 = load i8*, i8** %p, align 8
  %7 = load i64, i64* %len, align 8
  %add.ptr5 = getelementptr inbounds i8, i8* %6, i64 %7
  store i8* %add.ptr5, i8** %end, align 8
  %8 = load i8*, i8** %end, align 8
  %call6 = call i32 @mbedtls_asn1_get_alg(i8** noundef %p, i8* noundef %8, %struct.mbedtls_asn1_buf* noundef %pbe_alg_oid, %struct.mbedtls_asn1_buf* noundef %pbe_params) #5
  store i32 %call6, i32* %ret, align 4
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end4
  %9 = load i32, i32* %ret, align 4
  %call9 = call i32 @mbedtls_error_add(i32 noundef -15616, i32 noundef %9, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1151) #5
  store i32 %call9, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end4
  %10 = load i8*, i8** %end, align 8
  %call11 = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %10, i64* noundef %len, i32 noundef 4) #5
  store i32 %call11, i32* %ret, align 4
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  %11 = load i32, i32* %ret, align 4
  %call14 = call i32 @mbedtls_error_add(i32 noundef -15616, i32 noundef %11, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1154) #5
  store i32 %call14, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end10
  %12 = load i8*, i8** %p, align 8
  store i8* %12, i8** %buf, align 8
  %call16 = call i32 @mbedtls_oid_get_pkcs12_pbe_alg(%struct.mbedtls_asn1_buf* noundef %pbe_alg_oid, i32* noundef %md_alg, i32* noundef %cipher_alg) #5
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end15
  %13 = load i32, i32* %cipher_alg, align 4
  %14 = load i32, i32* %md_alg, align 4
  %15 = load i8*, i8** %pwd.addr, align 8
  %16 = load i64, i64* %pwdlen.addr, align 8
  %17 = load i8*, i8** %p, align 8
  %18 = load i64, i64* %len, align 8
  %19 = load i8*, i8** %buf, align 8
  %call19 = call i32 @mbedtls_pkcs12_pbe(%struct.mbedtls_asn1_buf* noundef %pbe_params, i32 noundef 0, i32 noundef %13, i32 noundef %14, i8* noundef %15, i64 noundef %16, i8* noundef %17, i64 noundef %18, i8* noundef %19) #5
  store i32 %call19, i32* %ret, align 4
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end25

if.then21:                                        ; preds = %if.then18
  %20 = load i32, i32* %ret, align 4
  %cmp22 = icmp eq i32 %20, -7680
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then21
  store i32 -15232, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.then21
  %21 = load i32, i32* %ret, align 4
  store i32 %21, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.then18
  store i32 1, i32* %decrypted, align 4
  br label %if.end43

if.else:                                          ; preds = %if.end15
  %len26 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %pbe_alg_oid, i32 0, i32 1
  %22 = load i64, i64* %len26, align 8
  %cmp27 = icmp ne i64 9, %22
  br i1 %cmp27, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.else
  %p28 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %pbe_alg_oid, i32 0, i32 2
  %23 = load i8*, i8** %p28, align 8
  %len29 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %pbe_alg_oid, i32 0, i32 1
  %24 = load i64, i64* %len29, align 8
  %call30 = call i32 @memcmp(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8* noundef %23, i64 noundef %24) #7
  %cmp31 = icmp ne i32 %call30, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.else
  %25 = phi i1 [ true, %if.else ], [ %cmp31, %lor.rhs ]
  %lor.ext = zext i1 %25 to i32
  %cmp32 = icmp eq i32 %lor.ext, 0
  br i1 %cmp32, label %if.then33, label %if.else41

if.then33:                                        ; preds = %lor.end
  %26 = load i8*, i8** %pwd.addr, align 8
  %27 = load i64, i64* %pwdlen.addr, align 8
  %28 = load i8*, i8** %p, align 8
  %29 = load i64, i64* %len, align 8
  %30 = load i8*, i8** %buf, align 8
  %call34 = call i32 @mbedtls_pkcs5_pbes2(%struct.mbedtls_asn1_buf* noundef %pbe_params, i32 noundef 0, i8* noundef %26, i64 noundef %27, i8* noundef %28, i64 noundef %29, i8* noundef %30) #5
  store i32 %call34, i32* %ret, align 4
  %cmp35 = icmp ne i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.end40

if.then36:                                        ; preds = %if.then33
  %31 = load i32, i32* %ret, align 4
  %cmp37 = icmp eq i32 %31, -11776
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.then36
  store i32 -15232, i32* %retval, align 4
  br label %return

if.end39:                                         ; preds = %if.then36
  %32 = load i32, i32* %ret, align 4
  store i32 %32, i32* %retval, align 4
  br label %return

if.end40:                                         ; preds = %if.then33
  store i32 1, i32* %decrypted, align 4
  br label %if.end42

if.else41:                                        ; preds = %lor.end
  %33 = load i8*, i8** %pwd.addr, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.else41, %if.end40
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end25
  %34 = load i32, i32* %decrypted, align 4
  %cmp44 = icmp eq i32 %34, 0
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end43
  store i32 -14720, i32* %retval, align 4
  br label %return

if.end46:                                         ; preds = %if.end43
  %35 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  %36 = load i8*, i8** %buf, align 8
  %37 = load i64, i64* %len, align 8
  %38 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %39 = load i8*, i8** %p_rng.addr, align 8
  %call47 = call i32 @pk_parse_key_pkcs8_unencrypted_der(%struct.mbedtls_pk_context* noundef %35, i8* noundef %36, i64 noundef %37, i32 (i8*, i8*, i64)* noundef %38, i8* noundef %39) #5
  store i32 %call47, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end46, %if.then45, %if.end39, %if.then38, %if.end24, %if.then23, %if.then13, %if.then8, %if.then2, %if.then
  %40 = load i32, i32* %retval, align 4
  ret i32 %40
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_asn1_get_alg(i8** noundef, i8* noundef, %struct.mbedtls_asn1_buf* noundef, %struct.mbedtls_asn1_buf* noundef) #1

declare dso_local i32 @mbedtls_oid_get_pk_alg(%struct.mbedtls_asn1_buf* noundef, i32* noundef) #1

declare dso_local i32 @mbedtls_rsa_import_raw(%struct.mbedtls_rsa_context* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_rsa_complete(%struct.mbedtls_rsa_context* noundef) #1

declare dso_local i32 @mbedtls_rsa_check_pubkey(%struct.mbedtls_rsa_context* noundef) #1

declare dso_local i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef) #1

declare dso_local i32 @mbedtls_oid_get_ec_grp(%struct.mbedtls_asn1_buf* noundef, i32* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pk_group_id_from_specified(%struct.mbedtls_asn1_buf* noundef %params, i32* noundef %grp_id) #0 {
entry:
  %params.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %grp_id.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  %grp = alloca %struct.mbedtls_ecp_group, align 8
  store %struct.mbedtls_asn1_buf* %params, %struct.mbedtls_asn1_buf** %params.addr, align 8
  store i32* %grp_id, i32** %grp_id.addr, align 8
  store i32 -110, i32* %ret, align 4
  call void @mbedtls_ecp_group_init(%struct.mbedtls_ecp_group* noundef %grp) #5
  %0 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %params.addr, align 8
  %call = call i32 @pk_group_from_specified(%struct.mbedtls_asn1_buf* noundef %0, %struct.mbedtls_ecp_group* noundef %grp) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32*, i32** %grp_id.addr, align 8
  %call1 = call i32 @pk_group_id_from_group(%struct.mbedtls_ecp_group* noundef %grp, i32* noundef %1) #5
  store i32 %call1, i32* %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @mbedtls_ecp_group_free(%struct.mbedtls_ecp_group* noundef %grp) #5
  %2 = load i32, i32* %ret, align 4
  ret i32 %2
}

declare dso_local i32 @mbedtls_ecp_group_load(%struct.mbedtls_ecp_group* noundef, i32 noundef) #1

declare dso_local void @mbedtls_ecp_group_init(%struct.mbedtls_ecp_group* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pk_group_from_specified(%struct.mbedtls_asn1_buf* noundef %params, %struct.mbedtls_ecp_group* noundef %grp) #0 {
entry:
  %retval = alloca i32, align 4
  %params.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %ret = alloca i32, align 4
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %end_field = alloca i8*, align 8
  %end_curve = alloca i8*, align 8
  %len3 = alloca i64, align 8
  %ver = alloca i32, align 4
  store %struct.mbedtls_asn1_buf* %params, %struct.mbedtls_asn1_buf** %params.addr, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %params.addr, align 8
  %p1 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %0, i32 0, i32 2
  %1 = load i8*, i8** %p1, align 8
  store i8* %1, i8** %p, align 8
  %2 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %params.addr, align 8
  %p2 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %2, i32 0, i32 2
  %3 = load i8*, i8** %p2, align 8
  %4 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %params.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %4, i32 0, i32 1
  %5 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %5
  store i8* %add.ptr, i8** %end, align 8
  %6 = load i8*, i8** %end, align 8
  %call = call i32 @mbedtls_asn1_get_int(i8** noundef %p, i8* noundef %6, i32* noundef %ver) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %ret, align 4
  %call4 = call i32 @mbedtls_error_add(i32 noundef -15616, i32 noundef %7, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 254) #5
  store i32 %call4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %ver, align 4
  %cmp5 = icmp slt i32 %8, 1
  br i1 %cmp5, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load i32, i32* %ver, align 4
  %cmp6 = icmp sgt i32 %9, 3
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -15616, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %lor.lhs.false
  %10 = load i8*, i8** %end, align 8
  %call9 = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %10, i64* noundef %len3, i32 noundef 48) #5
  store i32 %call9, i32* %ret, align 4
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  %11 = load i32, i32* %ret, align 4
  store i32 %11, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end8
  %12 = load i8*, i8** %p, align 8
  %13 = load i64, i64* %len3, align 8
  %add.ptr13 = getelementptr inbounds i8, i8* %12, i64 %13
  store i8* %add.ptr13, i8** %end_field, align 8
  %14 = load i8*, i8** %end_field, align 8
  %call14 = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %14, i64* noundef %len3, i32 noundef 6) #5
  store i32 %call14, i32* %ret, align 4
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end12
  %15 = load i32, i32* %ret, align 4
  store i32 %15, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end12
  %16 = load i64, i64* %len3, align 8
  %cmp18 = icmp ne i64 %16, 7
  br i1 %cmp18, label %if.then22, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.end17
  %17 = load i8*, i8** %p, align 8
  %18 = load i64, i64* %len3, align 8
  %call20 = call i32 @memcmp(i8* noundef %17, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i64 noundef %18) #7
  %cmp21 = icmp ne i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %lor.lhs.false19, %if.end17
  store i32 -14720, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %lor.lhs.false19
  %19 = load i64, i64* %len3, align 8
  %20 = load i8*, i8** %p, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %20, i64 %19
  store i8* %add.ptr24, i8** %p, align 8
  %21 = load i8*, i8** %end_field, align 8
  %22 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %22, i32 0, i32 1
  %call25 = call i32 @mbedtls_asn1_get_mpi(i8** noundef %p, i8* noundef %21, %struct.mbedtls_mpi* noundef %P) #5
  store i32 %call25, i32* %ret, align 4
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end23
  %23 = load i32, i32* %ret, align 4
  %call28 = call i32 @mbedtls_error_add(i32 noundef -15616, i32 noundef %23, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 292) #5
  store i32 %call28, i32* %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.end23
  %24 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P30 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %24, i32 0, i32 1
  %call31 = call i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef %P30) #5
  %25 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %pbits = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %25, i32 0, i32 6
  store i64 %call31, i64* %pbits, align 8
  %26 = load i8*, i8** %p, align 8
  %27 = load i8*, i8** %end_field, align 8
  %cmp32 = icmp ne i8* %26, %27
  br i1 %cmp32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end29
  %call34 = call i32 @mbedtls_error_add(i32 noundef -15616, i32 noundef -102, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 298) #5
  store i32 %call34, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.end29
  %28 = load i8*, i8** %end, align 8
  %call36 = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %28, i64* noundef %len3, i32 noundef 48) #5
  store i32 %call36, i32* %ret, align 4
  %cmp37 = icmp ne i32 %call36, 0
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end35
  %29 = load i32, i32* %ret, align 4
  store i32 %29, i32* %retval, align 4
  br label %return

if.end39:                                         ; preds = %if.end35
  %30 = load i8*, i8** %p, align 8
  %31 = load i64, i64* %len3, align 8
  %add.ptr40 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8* %add.ptr40, i8** %end_curve, align 8
  %32 = load i8*, i8** %end_curve, align 8
  %call41 = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %32, i64* noundef %len3, i32 noundef 4) #5
  store i32 %call41, i32* %ret, align 4
  %cmp42 = icmp ne i32 %call41, 0
  br i1 %cmp42, label %if.then46, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %if.end39
  %33 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %A = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %33, i32 0, i32 2
  %34 = load i8*, i8** %p, align 8
  %35 = load i64, i64* %len3, align 8
  %call44 = call i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef %A, i8* noundef %34, i64 noundef %35) #5
  store i32 %call44, i32* %ret, align 4
  %cmp45 = icmp ne i32 %call44, 0
  br i1 %cmp45, label %if.then46, label %if.end48

if.then46:                                        ; preds = %lor.lhs.false43, %if.end39
  %36 = load i32, i32* %ret, align 4
  %call47 = call i32 @mbedtls_error_add(i32 noundef -15616, i32 noundef %36, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 322) #5
  store i32 %call47, i32* %retval, align 4
  br label %return

if.end48:                                         ; preds = %lor.lhs.false43
  %37 = load i64, i64* %len3, align 8
  %38 = load i8*, i8** %p, align 8
  %add.ptr49 = getelementptr inbounds i8, i8* %38, i64 %37
  store i8* %add.ptr49, i8** %p, align 8
  %39 = load i8*, i8** %end_curve, align 8
  %call50 = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %39, i64* noundef %len3, i32 noundef 4) #5
  store i32 %call50, i32* %ret, align 4
  %cmp51 = icmp ne i32 %call50, 0
  br i1 %cmp51, label %if.then55, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %if.end48
  %40 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %B = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %40, i32 0, i32 3
  %41 = load i8*, i8** %p, align 8
  %42 = load i64, i64* %len3, align 8
  %call53 = call i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef %B, i8* noundef %41, i64 noundef %42) #5
  store i32 %call53, i32* %ret, align 4
  %cmp54 = icmp ne i32 %call53, 0
  br i1 %cmp54, label %if.then55, label %if.end57

if.then55:                                        ; preds = %lor.lhs.false52, %if.end48
  %43 = load i32, i32* %ret, align 4
  %call56 = call i32 @mbedtls_error_add(i32 noundef -15616, i32 noundef %43, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 330) #5
  store i32 %call56, i32* %retval, align 4
  br label %return

if.end57:                                         ; preds = %lor.lhs.false52
  %44 = load i64, i64* %len3, align 8
  %45 = load i8*, i8** %p, align 8
  %add.ptr58 = getelementptr inbounds i8, i8* %45, i64 %44
  store i8* %add.ptr58, i8** %p, align 8
  %46 = load i8*, i8** %end_curve, align 8
  %call59 = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %46, i64* noundef %len3, i32 noundef 3) #5
  store i32 %call59, i32* %ret, align 4
  %cmp60 = icmp eq i32 %call59, 0
  br i1 %cmp60, label %if.then61, label %if.end63

if.then61:                                        ; preds = %if.end57
  %47 = load i64, i64* %len3, align 8
  %48 = load i8*, i8** %p, align 8
  %add.ptr62 = getelementptr inbounds i8, i8* %48, i64 %47
  store i8* %add.ptr62, i8** %p, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.end57
  %49 = load i8*, i8** %p, align 8
  %50 = load i8*, i8** %end_curve, align 8
  %cmp64 = icmp ne i8* %49, %50
  br i1 %cmp64, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.end63
  %call66 = call i32 @mbedtls_error_add(i32 noundef -15616, i32 noundef -102, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 341) #5
  store i32 %call66, i32* %retval, align 4
  br label %return

if.end67:                                         ; preds = %if.end63
  %51 = load i8*, i8** %end, align 8
  %call68 = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %51, i64* noundef %len3, i32 noundef 4) #5
  store i32 %call68, i32* %ret, align 4
  %cmp69 = icmp ne i32 %call68, 0
  br i1 %cmp69, label %if.then70, label %if.end72

if.then70:                                        ; preds = %if.end67
  %52 = load i32, i32* %ret, align 4
  %call71 = call i32 @mbedtls_error_add(i32 noundef -15616, i32 noundef %52, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 347) #5
  store i32 %call71, i32* %retval, align 4
  br label %return

if.end72:                                         ; preds = %if.end67
  %53 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %54 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %G = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %54, i32 0, i32 4
  %55 = load i8*, i8** %p, align 8
  %56 = load i64, i64* %len3, align 8
  %call73 = call i32 @mbedtls_ecp_point_read_binary(%struct.mbedtls_ecp_group* noundef %53, %struct.mbedtls_ecp_point* noundef %G, i8* noundef %55, i64 noundef %56) #5
  store i32 %call73, i32* %ret, align 4
  %cmp74 = icmp ne i32 %call73, 0
  br i1 %cmp74, label %if.then75, label %if.end111

if.then75:                                        ; preds = %if.end72
  %57 = load i32, i32* %ret, align 4
  %cmp76 = icmp ne i32 %57, -20096
  br i1 %cmp76, label %if.then109, label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %if.then75
  %58 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %58, i64 0
  %59 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %59 to i32
  %cmp78 = icmp ne i32 %conv, 2
  br i1 %cmp78, label %land.lhs.true, label %lor.lhs.false84

land.lhs.true:                                    ; preds = %lor.lhs.false77
  %60 = load i8*, i8** %p, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %60, i64 0
  %61 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %61 to i32
  %cmp82 = icmp ne i32 %conv81, 3
  br i1 %cmp82, label %if.then109, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %land.lhs.true, %lor.lhs.false77
  %62 = load i64, i64* %len3, align 8
  %63 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P85 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %63, i32 0, i32 1
  %call86 = call i64 @mbedtls_mpi_size(%struct.mbedtls_mpi* noundef %P85) #5
  %add = add i64 %call86, 1
  %cmp87 = icmp ne i64 %62, %add
  br i1 %cmp87, label %if.then109, label %lor.lhs.false89

lor.lhs.false89:                                  ; preds = %lor.lhs.false84
  %64 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %G90 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %64, i32 0, i32 4
  %X = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %G90, i32 0, i32 0
  %65 = load i8*, i8** %p, align 8
  %add.ptr91 = getelementptr inbounds i8, i8* %65, i64 1
  %66 = load i64, i64* %len3, align 8
  %sub = sub i64 %66, 1
  %call92 = call i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef %X, i8* noundef %add.ptr91, i64 noundef %sub) #5
  %cmp93 = icmp ne i32 %call92, 0
  br i1 %cmp93, label %if.then109, label %lor.lhs.false95

lor.lhs.false95:                                  ; preds = %lor.lhs.false89
  %67 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %G96 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %67, i32 0, i32 4
  %Y = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %G96, i32 0, i32 1
  %68 = load i8*, i8** %p, align 8
  %arrayidx97 = getelementptr inbounds i8, i8* %68, i64 0
  %69 = load i8, i8* %arrayidx97, align 1
  %conv98 = zext i8 %69 to i32
  %sub99 = sub nsw i32 %conv98, 2
  %conv100 = sext i32 %sub99 to i64
  %call101 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %Y, i64 noundef %conv100) #5
  %cmp102 = icmp ne i32 %call101, 0
  br i1 %cmp102, label %if.then109, label %lor.lhs.false104

lor.lhs.false104:                                 ; preds = %lor.lhs.false95
  %70 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %G105 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %70, i32 0, i32 4
  %Z = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %G105, i32 0, i32 2
  %call106 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %Z, i64 noundef 1) #5
  %cmp107 = icmp ne i32 %call106, 0
  br i1 %cmp107, label %if.then109, label %if.end110

if.then109:                                       ; preds = %lor.lhs.false104, %lor.lhs.false95, %lor.lhs.false89, %lor.lhs.false84, %land.lhs.true, %if.then75
  store i32 -15616, i32* %retval, align 4
  br label %return

if.end110:                                        ; preds = %lor.lhs.false104
  br label %if.end111

if.end111:                                        ; preds = %if.end110, %if.end72
  %71 = load i64, i64* %len3, align 8
  %72 = load i8*, i8** %p, align 8
  %add.ptr112 = getelementptr inbounds i8, i8* %72, i64 %71
  store i8* %add.ptr112, i8** %p, align 8
  %73 = load i8*, i8** %end, align 8
  %74 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %N = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %74, i32 0, i32 5
  %call113 = call i32 @mbedtls_asn1_get_mpi(i8** noundef %p, i8* noundef %73, %struct.mbedtls_mpi* noundef %N) #5
  store i32 %call113, i32* %ret, align 4
  %cmp114 = icmp ne i32 %call113, 0
  br i1 %cmp114, label %if.then116, label %if.end118

if.then116:                                       ; preds = %if.end111
  %75 = load i32, i32* %ret, align 4
  %call117 = call i32 @mbedtls_error_add(i32 noundef -15616, i32 noundef %75, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 373) #5
  store i32 %call117, i32* %retval, align 4
  br label %return

if.end118:                                        ; preds = %if.end111
  %76 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %N119 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %76, i32 0, i32 5
  %call120 = call i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef %N119) #5
  %77 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %nbits = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %77, i32 0, i32 7
  store i64 %call120, i64* %nbits, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end118, %if.then116, %if.then109, %if.then70, %if.then65, %if.then55, %if.then46, %if.then38, %if.then33, %if.then27, %if.then22, %if.then16, %if.then11, %if.then7, %if.then
  %78 = load i32, i32* %retval, align 4
  ret i32 %78
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pk_group_id_from_group(%struct.mbedtls_ecp_group* noundef %grp, i32* noundef %grp_id) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %grp_id.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  %ref = alloca %struct.mbedtls_ecp_group, align 8
  %id = alloca i32*, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store i32* %grp_id, i32** %grp_id.addr, align 8
  store i32 0, i32* %ret, align 4
  call void @mbedtls_ecp_group_init(%struct.mbedtls_ecp_group* noundef %ref) #5
  %call = call i32* @mbedtls_ecp_grp_id_list() #5
  store i32* %call, i32** %id, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32*, i32** %id, align 8
  %1 = load i32, i32* %0, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @mbedtls_ecp_group_free(%struct.mbedtls_ecp_group* noundef %ref) #5
  br label %do.body

do.body:                                          ; preds = %for.body
  %2 = load i32*, i32** %id, align 8
  %3 = load i32, i32* %2, align 4
  %call1 = call i32 @mbedtls_ecp_group_load(%struct.mbedtls_ecp_group* noundef %ref, i32 noundef %3) #5
  store i32 %call1, i32* %ret, align 4
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %pbits = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %4, i32 0, i32 6
  %5 = load i64, i64* %pbits, align 8
  %pbits3 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %ref, i32 0, i32 6
  %6 = load i64, i64* %pbits3, align 8
  %cmp4 = icmp eq i64 %5, %6
  br i1 %cmp4, label %land.lhs.true, label %if.end42

land.lhs.true:                                    ; preds = %do.end
  %7 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %nbits = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %7, i32 0, i32 7
  %8 = load i64, i64* %nbits, align 8
  %nbits5 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %ref, i32 0, i32 7
  %9 = load i64, i64* %nbits5, align 8
  %cmp6 = icmp eq i64 %8, %9
  br i1 %cmp6, label %land.lhs.true7, label %if.end42

land.lhs.true7:                                   ; preds = %land.lhs.true
  %10 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %10, i32 0, i32 1
  %P8 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %ref, i32 0, i32 1
  %call9 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %P, %struct.mbedtls_mpi* noundef %P8) #5
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %land.lhs.true11, label %if.end42

land.lhs.true11:                                  ; preds = %land.lhs.true7
  %11 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %A = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %11, i32 0, i32 2
  %A12 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %ref, i32 0, i32 2
  %call13 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %A, %struct.mbedtls_mpi* noundef %A12) #5
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %land.lhs.true15, label %if.end42

land.lhs.true15:                                  ; preds = %land.lhs.true11
  %12 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %B = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %12, i32 0, i32 3
  %B16 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %ref, i32 0, i32 3
  %call17 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %B, %struct.mbedtls_mpi* noundef %B16) #5
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %land.lhs.true19, label %if.end42

land.lhs.true19:                                  ; preds = %land.lhs.true15
  %13 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %N = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %13, i32 0, i32 5
  %N20 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %ref, i32 0, i32 5
  %call21 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %N, %struct.mbedtls_mpi* noundef %N20) #5
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %land.lhs.true23, label %if.end42

land.lhs.true23:                                  ; preds = %land.lhs.true19
  %14 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %G = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %14, i32 0, i32 4
  %X = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %G, i32 0, i32 0
  %G24 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %ref, i32 0, i32 4
  %X25 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %G24, i32 0, i32 0
  %call26 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %X25) #5
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %land.lhs.true28, label %if.end42

land.lhs.true28:                                  ; preds = %land.lhs.true23
  %15 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %G29 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %15, i32 0, i32 4
  %Z = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %G29, i32 0, i32 2
  %G30 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %ref, i32 0, i32 4
  %Z31 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %G30, i32 0, i32 2
  %call32 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %Z, %struct.mbedtls_mpi* noundef %Z31) #5
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %land.lhs.true34, label %if.end42

land.lhs.true34:                                  ; preds = %land.lhs.true28
  %16 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %G35 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %16, i32 0, i32 4
  %Y = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %G35, i32 0, i32 1
  %call36 = call i32 @mbedtls_mpi_get_bit(%struct.mbedtls_mpi* noundef %Y, i64 noundef 0) #5
  %G37 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %ref, i32 0, i32 4
  %Y38 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %G37, i32 0, i32 1
  %call39 = call i32 @mbedtls_mpi_get_bit(%struct.mbedtls_mpi* noundef %Y38, i64 noundef 0) #5
  %cmp40 = icmp eq i32 %call36, %call39
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %land.lhs.true34
  br label %for.end

if.end42:                                         ; preds = %land.lhs.true34, %land.lhs.true28, %land.lhs.true23, %land.lhs.true19, %land.lhs.true15, %land.lhs.true11, %land.lhs.true7, %land.lhs.true, %do.end
  br label %for.inc

for.inc:                                          ; preds = %if.end42
  %17 = load i32*, i32** %id, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %incdec.ptr, i32** %id, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %if.then41, %for.cond
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @mbedtls_ecp_group_free(%struct.mbedtls_ecp_group* noundef %ref) #5
  %18 = load i32*, i32** %id, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %grp_id.addr, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %ret, align 4
  %cmp43 = icmp eq i32 %21, 0
  br i1 %cmp43, label %land.lhs.true44, label %if.end47

land.lhs.true44:                                  ; preds = %cleanup
  %22 = load i32*, i32** %id, align 8
  %23 = load i32, i32* %22, align 4
  %cmp45 = icmp eq i32 %23, 0
  br i1 %cmp45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %land.lhs.true44
  store i32 -20096, i32* %ret, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %land.lhs.true44, %cleanup
  %24 = load i32, i32* %ret, align 4
  ret i32 %24
}

declare dso_local void @mbedtls_ecp_group_free(%struct.mbedtls_ecp_group* noundef) #1

declare dso_local i32 @mbedtls_asn1_get_int(i8** noundef, i8* noundef, i32* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #3

declare dso_local i32 @mbedtls_asn1_get_mpi(i8** noundef, i8* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_ecp_point_read_binary(%struct.mbedtls_ecp_group* noundef, %struct.mbedtls_ecp_point* noundef, i8* noundef, i64 noundef) #1

declare dso_local i64 @mbedtls_mpi_size(%struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef, i64 noundef) #1

declare dso_local i32* @mbedtls_ecp_grp_id_list() #1

declare dso_local i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_mpi_get_bit(%struct.mbedtls_mpi* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_ecp_check_pubkey(%struct.mbedtls_ecp_group* noundef, %struct.mbedtls_ecp_point* noundef) #1

declare dso_local void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asn1_get_nonzero_mpi(i8** noundef %p, i8* noundef %end, %struct.mbedtls_mpi* noundef %X) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %end.addr, align 8
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %call = call i32 @mbedtls_asn1_get_mpi(i8** noundef %0, i8* noundef %1, %struct.mbedtls_mpi* noundef %2) #5
  store i32 %call, i32* %ret, align 4
  %3 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %ret, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %call1 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %5, i64 noundef 0) #5
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -15616, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

declare dso_local i32 @mbedtls_rsa_import(%struct.mbedtls_rsa_context* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef) #1

declare dso_local void @mbedtls_rsa_free(%struct.mbedtls_rsa_context* noundef) #1

declare dso_local i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef, i64 noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare dso_local void @mbedtls_ecp_keypair_free(%struct.mbedtls_ecp_keypair* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pk_get_ecparams(i8** noundef %p, i8* noundef %end, %struct.mbedtls_asn1_buf* noundef %params) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %params.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %ret = alloca i32, align 4
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.mbedtls_asn1_buf* %params, %struct.mbedtls_asn1_buf** %params.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %end.addr, align 8
  %1 = load i8**, i8*** %p.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp slt i64 %sub.ptr.sub, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @mbedtls_error_add(i32 noundef -15616, i32 noundef -96, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 194) #5
  store i32 %call, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8**, i8*** %p.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  %6 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %params.addr, align 8
  %tag = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %6, i32 0, i32 0
  store i32 %conv, i32* %tag, align 8
  %7 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %params.addr, align 8
  %tag1 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %7, i32 0, i32 0
  %8 = load i32, i32* %tag1, align 8
  %cmp2 = icmp ne i32 %8, 6
  br i1 %cmp2, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %9 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %params.addr, align 8
  %tag4 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %9, i32 0, i32 0
  %10 = load i32, i32* %tag4, align 8
  %cmp5 = icmp ne i32 %10, 48
  br i1 %cmp5, label %if.then7, label %if.end9

if.then7:                                         ; preds = %land.lhs.true
  %call8 = call i32 @mbedtls_error_add(i32 noundef -15616, i32 noundef -98, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 205) #5
  store i32 %call8, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i8**, i8*** %p.addr, align 8
  %12 = load i8*, i8** %end.addr, align 8
  %13 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %params.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %13, i32 0, i32 1
  %14 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %params.addr, align 8
  %tag10 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %14, i32 0, i32 0
  %15 = load i32, i32* %tag10, align 8
  %call11 = call i32 @mbedtls_asn1_get_tag(i8** noundef %11, i8* noundef %12, i64* noundef %len, i32 noundef %15) #5
  store i32 %call11, i32* %ret, align 4
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end9
  %16 = load i32, i32* %ret, align 4
  %call15 = call i32 @mbedtls_error_add(i32 noundef -15616, i32 noundef %16, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 210) #5
  store i32 %call15, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end9
  %17 = load i8**, i8*** %p.addr, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %params.addr, align 8
  %p17 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %19, i32 0, i32 2
  store i8* %18, i8** %p17, align 8
  %20 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %params.addr, align 8
  %len18 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %20, i32 0, i32 1
  %21 = load i64, i64* %len18, align 8
  %22 = load i8**, i8*** %p.addr, align 8
  %23 = load i8*, i8** %22, align 8
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %21
  store i8* %add.ptr, i8** %22, align 8
  %24 = load i8**, i8*** %p.addr, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = load i8*, i8** %end.addr, align 8
  %cmp19 = icmp ne i8* %25, %26
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end16
  %call22 = call i32 @mbedtls_error_add(i32 noundef -15616, i32 noundef -102, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 218) #5
  store i32 %call22, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end16
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.then21, %if.then14, %if.then7, %if.then
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

declare dso_local i32 @mbedtls_ecp_mul(%struct.mbedtls_ecp_group* noundef, %struct.mbedtls_ecp_point* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_ecp_point* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_ecp_check_privkey(%struct.mbedtls_ecp_group* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_oid_get_pkcs12_pbe_alg(%struct.mbedtls_asn1_buf* noundef, i32* noundef, i32* noundef) #1

declare dso_local i32 @mbedtls_pkcs12_pbe(%struct.mbedtls_asn1_buf* noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_pkcs5_pbes2(%struct.mbedtls_asn1_buf* noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
