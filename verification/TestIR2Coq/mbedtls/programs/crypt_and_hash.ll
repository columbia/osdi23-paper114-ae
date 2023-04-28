; ModuleID = 'aes/crypt_and_hash.c'
source_filename = "aes/crypt_and_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.mbedtls_cipher_info_t = type { i32, i32, i32, i8*, i32, i32, i32, %struct.mbedtls_cipher_base_t* }
%struct.mbedtls_cipher_base_t = type opaque
%struct.mbedtls_md_info_t = type opaque
%struct.mbedtls_cipher_context_t = type { %struct.mbedtls_cipher_info_t*, i32, i32, void (i8*, i64, i64)*, i32 (i8*, i64, i64*)*, [16 x i8], i64, [16 x i8], i64, i8*, %struct.mbedtls_cmac_context_t* }
%struct.mbedtls_cmac_context_t = type opaque
%struct.mbedtls_md_context_t = type { %struct.mbedtls_md_info_t*, i8*, i8* }

@.str = private unnamed_addr constant [210 x i8] c"\0A  crypt_and_hash <mode> <input filename> <output filename> <cipher> <mbedtls_md> <key>\0A\0A   <mode>: 0 = encrypt, 1 = decrypt\0A\0A  example: crypt_and_hash 0 file file.aes AES-128-CBC SHA1 hex:E76B2413958B00E193\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Available ciphers:\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"\0AAvailable message digests:\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"invalid operation mode\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"input and output filenames must differ\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"fopen(%s,rb) failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"wb+\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"fopen(%s,wb+) failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Cipher '%s' not found\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"mbedtls_cipher_setup failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Message Digest '%s' not found\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"mbedtls_md_setup failed\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"hex:\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"lseek\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"fseek(0,SEEK_SET) failed\0A\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"mbedtls_md_starts() returned error\0A\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"mbedtls_md_update() returned error\0A\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"mbedtls_md_finish() returned error\0A\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"fwrite(%d bytes) failed\0A\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"mbedtls_cipher_setkey() returned error\0A\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"mbedtls_cipher_set_iv() returned error\0A\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"mbedtls_cipher_reset() returned error\0A\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"mbedtls_md_hmac_starts() returned error\0A\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"fread(%ld bytes) failed\0A\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"mbedtls_cipher_update() returned error\0A\00", align 1
@.str.28 = private unnamed_addr constant [41 x i8] c"mbedtls_md_hmac_update() returned error\0A\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"fwrite(%ld bytes) failed\0A\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"mbedtls_cipher_finish() returned error\0A\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"mbedtls_md_hmac_finish() returned error\0A\00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"File too short to be encrypted.\0A\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"Invalid cipher block size: 0. \0A\00", align 1
@.str.34 = private unnamed_addr constant [53 x i8] c"File content not a multiple of the block size (%u).\0A\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"fread(%d bytes) failed\0A\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"fread(%u bytes) failed\0A\00", align 1
@.str.37 = private unnamed_addr constant [50 x i8] c"HMAC check failed: wrong key, or file corrupted.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %exit_code = alloca i32, align 4
  %mode = alloca i32, align 4
  %keylen = alloca i64, align 8
  %ilen = alloca i64, align 8
  %olen = alloca i64, align 8
  %fkey = alloca %struct._IO_FILE*, align 8
  %fin = alloca %struct._IO_FILE*, align 8
  %fout = alloca %struct._IO_FILE*, align 8
  %p = alloca i8*, align 8
  %IV = alloca [16 x i8], align 16
  %key = alloca [512 x i8], align 16
  %digest = alloca [64 x i8], align 16
  %buffer = alloca [1024 x i8], align 16
  %output = alloca [1024 x i8], align 16
  %diff = alloca i8, align 1
  %cipher_info = alloca %struct.mbedtls_cipher_info_t*, align 8
  %md_info = alloca %struct.mbedtls_md_info_t*, align 8
  %cipher_ctx = alloca %struct.mbedtls_cipher_context_t, align 8
  %md_ctx = alloca %struct.mbedtls_md_context_t, align 8
  %filesize = alloca i64, align 8
  %offset = alloca i64, align 8
  %list = alloca i32*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %ret, align 4
  store i32 1, i32* %exit_code, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %fin, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %fout, align 8
  call void @mbedtls_cipher_init(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx) #5
  call void @mbedtls_md_init(%struct.mbedtls_md_context_t* noundef %md_ctx) #5
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %0, 7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([210 x i8], [210 x i8]* @.str, i64 0, i64 0)) #5
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0)) #5
  %call2 = call i32* @mbedtls_cipher_list() #5
  store i32* %call2, i32** %list, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %1 = load i32*, i32** %list, align 8
  %2 = load i32, i32* %1, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32*, i32** %list, align 8
  %4 = load i32, i32* %3, align 4
  %call3 = call %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_type(i32 noundef %4) #5
  store %struct.mbedtls_cipher_info_t* %call3, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %5 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %call4 = call i8* @mbedtls_cipher_info_get_name(%struct.mbedtls_cipher_info_t* noundef %5) #5
  %call5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* noundef %call4) #5
  %6 = load i32*, i32** %list, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %6, i32 1
  store i32* %incdec.ptr, i32** %list, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0)) #5
  %call7 = call i32* @mbedtls_md_list() #5
  store i32* %call7, i32** %list, align 8
  br label %while.cond8

while.cond8:                                      ; preds = %while.body10, %while.end
  %7 = load i32*, i32** %list, align 8
  %8 = load i32, i32* %7, align 4
  %tobool9 = icmp ne i32 %8, 0
  br i1 %tobool9, label %while.body10, label %while.end15

while.body10:                                     ; preds = %while.cond8
  %9 = load i32*, i32** %list, align 8
  %10 = load i32, i32* %9, align 4
  %call11 = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef %10) #5
  store %struct.mbedtls_md_info_t* %call11, %struct.mbedtls_md_info_t** %md_info, align 8
  %11 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call12 = call i8* @mbedtls_md_get_name(%struct.mbedtls_md_info_t* noundef %11) #5
  %call13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* noundef %call12) #5
  %12 = load i32*, i32** %list, align 8
  %incdec.ptr14 = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %incdec.ptr14, i32** %list, align 8
  br label %while.cond8, !llvm.loop !6

while.end15:                                      ; preds = %while.cond8
  br label %exit

if.end:                                           ; preds = %entry
  %13 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %13, i64 1
  %14 = load i8*, i8** %arrayidx, align 8
  %call16 = call i32 @atoi(i8* noundef %14) #6
  store i32 %call16, i32* %mode, align 4
  %15 = load i32, i32* %mode, align 4
  %cmp17 = icmp ne i32 %15, 0
  br i1 %cmp17, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %if.end
  %16 = load i32, i32* %mode, align 4
  %cmp18 = icmp ne i32 %16, 1
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %land.lhs.true
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0)) #5
  br label %exit

if.end21:                                         ; preds = %land.lhs.true, %if.end
  %18 = load i8**, i8*** %argv.addr, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %18, i64 2
  %19 = load i8*, i8** %arrayidx22, align 8
  %20 = load i8**, i8*** %argv.addr, align 8
  %arrayidx23 = getelementptr inbounds i8*, i8** %20, i64 3
  %21 = load i8*, i8** %arrayidx23, align 8
  %call24 = call i32 @strcmp(i8* noundef %19, i8* noundef %21) #6
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end21
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0)) #5
  br label %exit

if.end28:                                         ; preds = %if.end21
  %23 = load i8**, i8*** %argv.addr, align 8
  %arrayidx29 = getelementptr inbounds i8*, i8** %23, i64 2
  %24 = load i8*, i8** %arrayidx29, align 8
  %call30 = call %struct._IO_FILE* @fopen(i8* noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)) #5
  store %struct._IO_FILE* %call30, %struct._IO_FILE** %fin, align 8
  %cmp31 = icmp eq %struct._IO_FILE* %call30, null
  br i1 %cmp31, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.end28
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = load i8**, i8*** %argv.addr, align 8
  %arrayidx33 = getelementptr inbounds i8*, i8** %26, i64 2
  %27 = load i8*, i8** %arrayidx33, align 8
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %25, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* noundef %27) #5
  br label %exit

if.end35:                                         ; preds = %if.end28
  %28 = load i8**, i8*** %argv.addr, align 8
  %arrayidx36 = getelementptr inbounds i8*, i8** %28, i64 3
  %29 = load i8*, i8** %arrayidx36, align 8
  %call37 = call %struct._IO_FILE* @fopen(i8* noundef %29, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #5
  store %struct._IO_FILE* %call37, %struct._IO_FILE** %fout, align 8
  %cmp38 = icmp eq %struct._IO_FILE* %call37, null
  br i1 %cmp38, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.end35
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = load i8**, i8*** %argv.addr, align 8
  %arrayidx40 = getelementptr inbounds i8*, i8** %31, i64 3
  %32 = load i8*, i8** %arrayidx40, align 8
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8* noundef %32) #5
  br label %exit

if.end42:                                         ; preds = %if.end35
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  call void @setbuf(%struct._IO_FILE* noundef %33, i8* noundef null) #7
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 8
  call void @setbuf(%struct._IO_FILE* noundef %34, i8* noundef null) #7
  %35 = load i8**, i8*** %argv.addr, align 8
  %arrayidx43 = getelementptr inbounds i8*, i8** %35, i64 4
  %36 = load i8*, i8** %arrayidx43, align 8
  %call44 = call %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_string(i8* noundef %36) #5
  store %struct.mbedtls_cipher_info_t* %call44, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %37 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %cmp45 = icmp eq %struct.mbedtls_cipher_info_t* %37, null
  br i1 %cmp45, label %if.then46, label %if.end49

if.then46:                                        ; preds = %if.end42
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %39 = load i8**, i8*** %argv.addr, align 8
  %arrayidx47 = getelementptr inbounds i8*, i8** %39, i64 4
  %40 = load i8*, i8** %arrayidx47, align 8
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %38, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i8* noundef %40) #5
  br label %exit

if.end49:                                         ; preds = %if.end42
  %41 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %call50 = call i32 @mbedtls_cipher_setup(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx, %struct.mbedtls_cipher_info_t* noundef %41) #5
  store i32 %call50, i32* %ret, align 4
  %cmp51 = icmp ne i32 %call50, 0
  br i1 %cmp51, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.end49
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %42, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0)) #5
  br label %exit

if.end54:                                         ; preds = %if.end49
  %43 = load i8**, i8*** %argv.addr, align 8
  %arrayidx55 = getelementptr inbounds i8*, i8** %43, i64 5
  %44 = load i8*, i8** %arrayidx55, align 8
  %call56 = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_string(i8* noundef %44) #5
  store %struct.mbedtls_md_info_t* %call56, %struct.mbedtls_md_info_t** %md_info, align 8
  %45 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %cmp57 = icmp eq %struct.mbedtls_md_info_t* %45, null
  br i1 %cmp57, label %if.then58, label %if.end61

if.then58:                                        ; preds = %if.end54
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %47 = load i8**, i8*** %argv.addr, align 8
  %arrayidx59 = getelementptr inbounds i8*, i8** %47, i64 5
  %48 = load i8*, i8** %arrayidx59, align 8
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %46, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i8* noundef %48) #5
  br label %exit

if.end61:                                         ; preds = %if.end54
  %49 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call62 = call i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* noundef %md_ctx, %struct.mbedtls_md_info_t* noundef %49, i32 noundef 1) #5
  %cmp63 = icmp ne i32 %call62, 0
  br i1 %cmp63, label %if.then64, label %if.end66

if.then64:                                        ; preds = %if.end61
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %50, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0)) #5
  br label %exit

if.end66:                                         ; preds = %if.end61
  %51 = load i8**, i8*** %argv.addr, align 8
  %arrayidx67 = getelementptr inbounds i8*, i8** %51, i64 6
  %52 = load i8*, i8** %arrayidx67, align 8
  %call68 = call %struct._IO_FILE* @fopen(i8* noundef %52, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)) #5
  store %struct._IO_FILE* %call68, %struct._IO_FILE** %fkey, align 8
  %cmp69 = icmp ne %struct._IO_FILE* %call68, null
  br i1 %cmp69, label %if.then70, label %if.else

if.then70:                                        ; preds = %if.end66
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %key, i64 0, i64 0
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %fkey, align 8
  %call71 = call i64 @fread(i8* noundef %arraydecay, i64 noundef 1, i64 noundef 512, %struct._IO_FILE* noundef %53) #5
  store i64 %call71, i64* %keylen, align 8
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %fkey, align 8
  %call72 = call i32 @fclose(%struct._IO_FILE* noundef %54) #5
  br label %if.end97

if.else:                                          ; preds = %if.end66
  %55 = load i8**, i8*** %argv.addr, align 8
  %arrayidx73 = getelementptr inbounds i8*, i8** %55, i64 6
  %56 = load i8*, i8** %arrayidx73, align 8
  %call74 = call i32 @memcmp(i8* noundef %56, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i64 noundef 4) #6
  %cmp75 = icmp eq i32 %call74, 0
  br i1 %cmp75, label %if.then76, label %if.else86

if.then76:                                        ; preds = %if.else
  %57 = load i8**, i8*** %argv.addr, align 8
  %arrayidx77 = getelementptr inbounds i8*, i8** %57, i64 6
  %58 = load i8*, i8** %arrayidx77, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %58, i64 4
  store i8* %arrayidx78, i8** %p, align 8
  store i64 0, i64* %keylen, align 8
  br label %while.cond79

while.cond79:                                     ; preds = %while.body83, %if.then76
  %59 = load i8*, i8** %p, align 8
  %call80 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %59, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32* noundef %n) #7
  %cmp81 = icmp sgt i32 %call80, 0
  br i1 %cmp81, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond79
  %60 = load i64, i64* %keylen, align 8
  %cmp82 = icmp ult i64 %60, 512
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond79
  %61 = phi i1 [ false, %while.cond79 ], [ %cmp82, %land.rhs ]
  br i1 %61, label %while.body83, label %while.end85

while.body83:                                     ; preds = %land.end
  %62 = load i32, i32* %n, align 4
  %conv = trunc i32 %62 to i8
  %63 = load i64, i64* %keylen, align 8
  %inc = add i64 %63, 1
  store i64 %inc, i64* %keylen, align 8
  %arrayidx84 = getelementptr inbounds [512 x i8], [512 x i8]* %key, i64 0, i64 %63
  store i8 %conv, i8* %arrayidx84, align 1
  %64 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %64, i64 2
  store i8* %add.ptr, i8** %p, align 8
  br label %while.cond79, !llvm.loop !7

while.end85:                                      ; preds = %land.end
  br label %if.end96

if.else86:                                        ; preds = %if.else
  %65 = load i8**, i8*** %argv.addr, align 8
  %arrayidx87 = getelementptr inbounds i8*, i8** %65, i64 6
  %66 = load i8*, i8** %arrayidx87, align 8
  %call88 = call i64 @strlen(i8* noundef %66) #6
  store i64 %call88, i64* %keylen, align 8
  %67 = load i64, i64* %keylen, align 8
  %cmp89 = icmp ugt i64 %67, 512
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.else86
  store i64 512, i64* %keylen, align 8
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %if.else86
  %arraydecay93 = getelementptr inbounds [512 x i8], [512 x i8]* %key, i64 0, i64 0
  %68 = load i8**, i8*** %argv.addr, align 8
  %arrayidx94 = getelementptr inbounds i8*, i8** %68, i64 6
  %69 = load i8*, i8** %arrayidx94, align 8
  %70 = load i64, i64* %keylen, align 8
  %call95 = call i8* @memcpy(i8* noundef %arraydecay93, i8* noundef %69, i64 noundef %70) #7
  br label %if.end96

if.end96:                                         ; preds = %if.end92, %while.end85
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %if.then70
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  %call98 = call i32 @fileno(%struct._IO_FILE* noundef %71) #7
  %call99 = call i64 @lseek(i32 noundef %call98, i64 noundef 0, i32 noundef 2) #7
  store i64 %call99, i64* %filesize, align 8
  %cmp100 = icmp slt i64 %call99, 0
  br i1 %cmp100, label %if.then102, label %if.end103

if.then102:                                       ; preds = %if.end97
  call void @perror(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #5
  br label %exit

if.end103:                                        ; preds = %if.end97
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  %call104 = call i32 @fseek(%struct._IO_FILE* noundef %72, i64 noundef 0, i32 noundef 0) #5
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %if.then107, label %if.end109

if.then107:                                       ; preds = %if.end103
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call108 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %73, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0)) #5
  br label %exit

if.end109:                                        ; preds = %if.end103
  %74 = load i32, i32* %mode, align 4
  %cmp110 = icmp eq i32 %74, 0
  br i1 %cmp110, label %if.then112, label %if.end312

if.then112:                                       ; preds = %if.end109
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then112
  %75 = load i32, i32* %i, align 4
  %cmp113 = icmp slt i32 %75, 8
  br i1 %cmp113, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %76 = load i64, i64* %filesize, align 8
  %77 = load i32, i32* %i, align 4
  %shl = shl i32 %77, 3
  %sh_prom = zext i32 %shl to i64
  %shr = ashr i64 %76, %sh_prom
  %conv115 = trunc i64 %shr to i8
  %78 = load i32, i32* %i, align 4
  %idxprom = sext i32 %78 to i64
  %arrayidx116 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i64 0, i64 %idxprom
  store i8 %conv115, i8* %arrayidx116, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %79 = load i32, i32* %i, align 4
  %inc117 = add nsw i32 %79, 1
  store i32 %inc117, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %80 = load i8**, i8*** %argv.addr, align 8
  %arrayidx118 = getelementptr inbounds i8*, i8** %80, i64 2
  %81 = load i8*, i8** %arrayidx118, align 8
  store i8* %81, i8** %p, align 8
  %call119 = call i32 @mbedtls_md_starts(%struct.mbedtls_md_context_t* noundef %md_ctx) #5
  %cmp120 = icmp ne i32 %call119, 0
  br i1 %cmp120, label %if.then122, label %if.end124

if.then122:                                       ; preds = %for.end
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call123 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %82, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0)) #5
  br label %exit

if.end124:                                        ; preds = %for.end
  %arraydecay125 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i64 0, i64 0
  %call126 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* noundef %md_ctx, i8* noundef %arraydecay125, i64 noundef 8) #5
  %cmp127 = icmp ne i32 %call126, 0
  br i1 %cmp127, label %if.then129, label %if.end131

if.then129:                                       ; preds = %if.end124
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %83, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0)) #5
  br label %exit

if.end131:                                        ; preds = %if.end124
  %84 = load i8*, i8** %p, align 8
  %85 = load i8*, i8** %p, align 8
  %call132 = call i64 @strlen(i8* noundef %85) #6
  %call133 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* noundef %md_ctx, i8* noundef %84, i64 noundef %call132) #5
  %cmp134 = icmp ne i32 %call133, 0
  br i1 %cmp134, label %if.then136, label %if.end138

if.then136:                                       ; preds = %if.end131
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call137 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0)) #5
  br label %exit

if.end138:                                        ; preds = %if.end131
  %arraydecay139 = getelementptr inbounds [64 x i8], [64 x i8]* %digest, i64 0, i64 0
  %call140 = call i32 @mbedtls_md_finish(%struct.mbedtls_md_context_t* noundef %md_ctx, i8* noundef %arraydecay139) #5
  %cmp141 = icmp ne i32 %call140, 0
  br i1 %cmp141, label %if.then143, label %if.end145

if.then143:                                       ; preds = %if.end138
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call144 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %87, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0)) #5
  br label %exit

if.end145:                                        ; preds = %if.end138
  %arraydecay146 = getelementptr inbounds [16 x i8], [16 x i8]* %IV, i64 0, i64 0
  %arraydecay147 = getelementptr inbounds [64 x i8], [64 x i8]* %digest, i64 0, i64 0
  %call148 = call i8* @memcpy(i8* noundef %arraydecay146, i8* noundef %arraydecay147, i64 noundef 16) #7
  %arraydecay149 = getelementptr inbounds [16 x i8], [16 x i8]* %IV, i64 0, i64 0
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 8
  %call150 = call i64 @fwrite(i8* noundef %arraydecay149, i64 noundef 1, i64 noundef 16, %struct._IO_FILE* noundef %88) #5
  %cmp151 = icmp ne i64 %call150, 16
  br i1 %cmp151, label %if.then153, label %if.end155

if.then153:                                       ; preds = %if.end145
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call154 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %89, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), i32 noundef 16) #5
  br label %exit

if.end155:                                        ; preds = %if.end145
  %arraydecay156 = getelementptr inbounds [64 x i8], [64 x i8]* %digest, i64 0, i64 0
  %call157 = call i8* @memset(i8* noundef %arraydecay156, i32 noundef 0, i64 noundef 32) #7
  %arraydecay158 = getelementptr inbounds [64 x i8], [64 x i8]* %digest, i64 0, i64 0
  %arraydecay159 = getelementptr inbounds [16 x i8], [16 x i8]* %IV, i64 0, i64 0
  %call160 = call i8* @memcpy(i8* noundef %arraydecay158, i8* noundef %arraydecay159, i64 noundef 16) #7
  store i32 0, i32* %i, align 4
  br label %for.cond161

for.cond161:                                      ; preds = %for.inc192, %if.end155
  %90 = load i32, i32* %i, align 4
  %cmp162 = icmp slt i32 %90, 8192
  br i1 %cmp162, label %for.body164, label %for.end194

for.body164:                                      ; preds = %for.cond161
  %call165 = call i32 @mbedtls_md_starts(%struct.mbedtls_md_context_t* noundef %md_ctx) #5
  %cmp166 = icmp ne i32 %call165, 0
  br i1 %cmp166, label %if.then168, label %if.end170

if.then168:                                       ; preds = %for.body164
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call169 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %91, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0)) #5
  br label %exit

if.end170:                                        ; preds = %for.body164
  %arraydecay171 = getelementptr inbounds [64 x i8], [64 x i8]* %digest, i64 0, i64 0
  %call172 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* noundef %md_ctx, i8* noundef %arraydecay171, i64 noundef 32) #5
  %cmp173 = icmp ne i32 %call172, 0
  br i1 %cmp173, label %if.then175, label %if.end177

if.then175:                                       ; preds = %if.end170
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call176 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %92, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0)) #5
  br label %exit

if.end177:                                        ; preds = %if.end170
  %arraydecay178 = getelementptr inbounds [512 x i8], [512 x i8]* %key, i64 0, i64 0
  %93 = load i64, i64* %keylen, align 8
  %call179 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* noundef %md_ctx, i8* noundef %arraydecay178, i64 noundef %93) #5
  %cmp180 = icmp ne i32 %call179, 0
  br i1 %cmp180, label %if.then182, label %if.end184

if.then182:                                       ; preds = %if.end177
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call183 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %94, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0)) #5
  br label %exit

if.end184:                                        ; preds = %if.end177
  %arraydecay185 = getelementptr inbounds [64 x i8], [64 x i8]* %digest, i64 0, i64 0
  %call186 = call i32 @mbedtls_md_finish(%struct.mbedtls_md_context_t* noundef %md_ctx, i8* noundef %arraydecay185) #5
  %cmp187 = icmp ne i32 %call186, 0
  br i1 %cmp187, label %if.then189, label %if.end191

if.then189:                                       ; preds = %if.end184
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call190 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %95, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0)) #5
  br label %exit

if.end191:                                        ; preds = %if.end184
  br label %for.inc192

for.inc192:                                       ; preds = %if.end191
  %96 = load i32, i32* %i, align 4
  %inc193 = add nsw i32 %96, 1
  store i32 %inc193, i32* %i, align 4
  br label %for.cond161, !llvm.loop !9

for.end194:                                       ; preds = %for.cond161
  %arraydecay195 = getelementptr inbounds [64 x i8], [64 x i8]* %digest, i64 0, i64 0
  %97 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %call196 = call i64 @mbedtls_cipher_info_get_key_bitlen(%struct.mbedtls_cipher_info_t* noundef %97) #5
  %conv197 = trunc i64 %call196 to i32
  %call198 = call i32 @mbedtls_cipher_setkey(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx, i8* noundef %arraydecay195, i32 noundef %conv197, i32 noundef 1) #5
  %cmp199 = icmp ne i32 %call198, 0
  br i1 %cmp199, label %if.then201, label %if.end203

if.then201:                                       ; preds = %for.end194
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call202 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %98, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0)) #5
  br label %exit

if.end203:                                        ; preds = %for.end194
  %arraydecay204 = getelementptr inbounds [16 x i8], [16 x i8]* %IV, i64 0, i64 0
  %call205 = call i32 @mbedtls_cipher_set_iv(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx, i8* noundef %arraydecay204, i64 noundef 16) #5
  %cmp206 = icmp ne i32 %call205, 0
  br i1 %cmp206, label %if.then208, label %if.end210

if.then208:                                       ; preds = %if.end203
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %99, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0)) #5
  br label %exit

if.end210:                                        ; preds = %if.end203
  %call211 = call i32 @mbedtls_cipher_reset(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx) #5
  %cmp212 = icmp ne i32 %call211, 0
  br i1 %cmp212, label %if.then214, label %if.end216

if.then214:                                       ; preds = %if.end210
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call215 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %100, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0)) #5
  br label %exit

if.end216:                                        ; preds = %if.end210
  %arraydecay217 = getelementptr inbounds [64 x i8], [64 x i8]* %digest, i64 0, i64 0
  %call218 = call i32 @mbedtls_md_hmac_starts(%struct.mbedtls_md_context_t* noundef %md_ctx, i8* noundef %arraydecay217, i64 noundef 32) #5
  %cmp219 = icmp ne i32 %call218, 0
  br i1 %cmp219, label %if.then221, label %if.end223

if.then221:                                       ; preds = %if.end216
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call222 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %101, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.25, i64 0, i64 0)) #5
  br label %exit

if.end223:                                        ; preds = %if.end216
  store i64 0, i64* %offset, align 8
  br label %for.cond224

for.cond224:                                      ; preds = %for.inc267, %if.end223
  %102 = load i64, i64* %offset, align 8
  %103 = load i64, i64* %filesize, align 8
  %cmp225 = icmp slt i64 %102, %103
  br i1 %cmp225, label %for.body227, label %for.end270

for.body227:                                      ; preds = %for.cond224
  %104 = load i64, i64* %filesize, align 8
  %conv228 = trunc i64 %104 to i32
  %conv229 = zext i32 %conv228 to i64
  %105 = load i64, i64* %offset, align 8
  %sub = sub nsw i64 %conv229, %105
  %call230 = call i32 @mbedtls_cipher_get_block_size(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx) #5
  %conv231 = zext i32 %call230 to i64
  %cmp232 = icmp sgt i64 %sub, %conv231
  br i1 %cmp232, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body227
  %call234 = call i32 @mbedtls_cipher_get_block_size(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx) #5
  br label %cond.end

cond.false:                                       ; preds = %for.body227
  %106 = load i64, i64* %filesize, align 8
  %107 = load i64, i64* %offset, align 8
  %sub235 = sub nsw i64 %106, %107
  %conv236 = trunc i64 %sub235 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call234, %cond.true ], [ %conv236, %cond.false ]
  %conv237 = zext i32 %cond to i64
  store i64 %conv237, i64* %ilen, align 8
  %arraydecay238 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i64 0, i64 0
  %108 = load i64, i64* %ilen, align 8
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  %call239 = call i64 @fread(i8* noundef %arraydecay238, i64 noundef 1, i64 noundef %108, %struct._IO_FILE* noundef %109) #5
  %110 = load i64, i64* %ilen, align 8
  %cmp240 = icmp ne i64 %call239, %110
  br i1 %cmp240, label %if.then242, label %if.end244

if.then242:                                       ; preds = %cond.end
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %112 = load i64, i64* %ilen, align 8
  %call243 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %111, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0), i64 noundef %112) #5
  br label %exit

if.end244:                                        ; preds = %cond.end
  %arraydecay245 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i64 0, i64 0
  %113 = load i64, i64* %ilen, align 8
  %arraydecay246 = getelementptr inbounds [1024 x i8], [1024 x i8]* %output, i64 0, i64 0
  %call247 = call i32 @mbedtls_cipher_update(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx, i8* noundef %arraydecay245, i64 noundef %113, i8* noundef %arraydecay246, i64* noundef %olen) #5
  %cmp248 = icmp ne i32 %call247, 0
  br i1 %cmp248, label %if.then250, label %if.end252

if.then250:                                       ; preds = %if.end244
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call251 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %114, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i64 0, i64 0)) #5
  br label %exit

if.end252:                                        ; preds = %if.end244
  %arraydecay253 = getelementptr inbounds [1024 x i8], [1024 x i8]* %output, i64 0, i64 0
  %115 = load i64, i64* %olen, align 8
  %call254 = call i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef %md_ctx, i8* noundef %arraydecay253, i64 noundef %115) #5
  %cmp255 = icmp ne i32 %call254, 0
  br i1 %cmp255, label %if.then257, label %if.end259

if.then257:                                       ; preds = %if.end252
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call258 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %116, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.28, i64 0, i64 0)) #5
  br label %exit

if.end259:                                        ; preds = %if.end252
  %arraydecay260 = getelementptr inbounds [1024 x i8], [1024 x i8]* %output, i64 0, i64 0
  %117 = load i64, i64* %olen, align 8
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 8
  %call261 = call i64 @fwrite(i8* noundef %arraydecay260, i64 noundef 1, i64 noundef %117, %struct._IO_FILE* noundef %118) #5
  %119 = load i64, i64* %olen, align 8
  %cmp262 = icmp ne i64 %call261, %119
  br i1 %cmp262, label %if.then264, label %if.end266

if.then264:                                       ; preds = %if.end259
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %121 = load i64, i64* %olen, align 8
  %call265 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %120, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i64 0, i64 0), i64 noundef %121) #5
  br label %exit

if.end266:                                        ; preds = %if.end259
  br label %for.inc267

for.inc267:                                       ; preds = %if.end266
  %call268 = call i32 @mbedtls_cipher_get_block_size(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx) #5
  %conv269 = zext i32 %call268 to i64
  %122 = load i64, i64* %offset, align 8
  %add = add nsw i64 %122, %conv269
  store i64 %add, i64* %offset, align 8
  br label %for.cond224, !llvm.loop !10

for.end270:                                       ; preds = %for.cond224
  %arraydecay271 = getelementptr inbounds [1024 x i8], [1024 x i8]* %output, i64 0, i64 0
  %call272 = call i32 @mbedtls_cipher_finish(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx, i8* noundef %arraydecay271, i64* noundef %olen) #5
  %cmp273 = icmp ne i32 %call272, 0
  br i1 %cmp273, label %if.then275, label %if.end277

if.then275:                                       ; preds = %for.end270
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call276 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %123, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0)) #5
  br label %exit

if.end277:                                        ; preds = %for.end270
  %arraydecay278 = getelementptr inbounds [1024 x i8], [1024 x i8]* %output, i64 0, i64 0
  %124 = load i64, i64* %olen, align 8
  %call279 = call i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef %md_ctx, i8* noundef %arraydecay278, i64 noundef %124) #5
  %cmp280 = icmp ne i32 %call279, 0
  br i1 %cmp280, label %if.then282, label %if.end284

if.then282:                                       ; preds = %if.end277
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call283 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %125, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.28, i64 0, i64 0)) #5
  br label %exit

if.end284:                                        ; preds = %if.end277
  %arraydecay285 = getelementptr inbounds [1024 x i8], [1024 x i8]* %output, i64 0, i64 0
  %126 = load i64, i64* %olen, align 8
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 8
  %call286 = call i64 @fwrite(i8* noundef %arraydecay285, i64 noundef 1, i64 noundef %126, %struct._IO_FILE* noundef %127) #5
  %128 = load i64, i64* %olen, align 8
  %cmp287 = icmp ne i64 %call286, %128
  br i1 %cmp287, label %if.then289, label %if.end291

if.then289:                                       ; preds = %if.end284
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %130 = load i64, i64* %olen, align 8
  %call290 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %129, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i64 0, i64 0), i64 noundef %130) #5
  br label %exit

if.end291:                                        ; preds = %if.end284
  %arraydecay292 = getelementptr inbounds [64 x i8], [64 x i8]* %digest, i64 0, i64 0
  %call293 = call i32 @mbedtls_md_hmac_finish(%struct.mbedtls_md_context_t* noundef %md_ctx, i8* noundef %arraydecay292) #5
  %cmp294 = icmp ne i32 %call293, 0
  br i1 %cmp294, label %if.then296, label %if.end298

if.then296:                                       ; preds = %if.end291
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call297 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %131, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.31, i64 0, i64 0)) #5
  br label %exit

if.end298:                                        ; preds = %if.end291
  %arraydecay299 = getelementptr inbounds [64 x i8], [64 x i8]* %digest, i64 0, i64 0
  %132 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call300 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %132) #5
  %conv301 = zext i8 %call300 to i64
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 8
  %call302 = call i64 @fwrite(i8* noundef %arraydecay299, i64 noundef 1, i64 noundef %conv301, %struct._IO_FILE* noundef %133) #5
  %134 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call303 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %134) #5
  %conv304 = zext i8 %call303 to i64
  %cmp305 = icmp ne i64 %call302, %conv304
  br i1 %cmp305, label %if.then307, label %if.end311

if.then307:                                       ; preds = %if.end298
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %136 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call308 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %136) #5
  %conv309 = zext i8 %call308 to i32
  %call310 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %135, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), i32 noundef %conv309) #5
  br label %exit

if.end311:                                        ; preds = %if.end298
  br label %if.end312

if.end312:                                        ; preds = %if.end311, %if.end109
  %137 = load i32, i32* %mode, align 4
  %cmp313 = icmp eq i32 %137, 1
  br i1 %cmp313, label %if.then315, label %if.end540

if.then315:                                       ; preds = %if.end312
  %138 = load i64, i64* %filesize, align 8
  %139 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call316 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %139) #5
  %conv317 = zext i8 %call316 to i32
  %add318 = add nsw i32 16, %conv317
  %conv319 = sext i32 %add318 to i64
  %cmp320 = icmp slt i64 %138, %conv319
  br i1 %cmp320, label %if.then322, label %if.end324

if.then322:                                       ; preds = %if.then315
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call323 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %140, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.32, i64 0, i64 0)) #5
  br label %exit

if.end324:                                        ; preds = %if.then315
  %call325 = call i32 @mbedtls_cipher_get_block_size(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx) #5
  %cmp326 = icmp eq i32 %call325, 0
  br i1 %cmp326, label %if.then328, label %if.end330

if.then328:                                       ; preds = %if.end324
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call329 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %141, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i64 0, i64 0)) #5
  br label %exit

if.end330:                                        ; preds = %if.end324
  %142 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %call331 = call i32 @mbedtls_cipher_info_get_mode(%struct.mbedtls_cipher_info_t* noundef %142) #5
  %cmp332 = icmp ne i32 %call331, 6
  br i1 %cmp332, label %land.lhs.true334, label %if.end345

land.lhs.true334:                                 ; preds = %if.end330
  %143 = load i64, i64* %filesize, align 8
  %144 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call335 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %144) #5
  %conv336 = zext i8 %call335 to i64
  %sub337 = sub nsw i64 %143, %conv336
  %call338 = call i32 @mbedtls_cipher_get_block_size(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx) #5
  %conv339 = zext i32 %call338 to i64
  %rem = srem i64 %sub337, %conv339
  %cmp340 = icmp ne i64 %rem, 0
  br i1 %cmp340, label %if.then342, label %if.end345

if.then342:                                       ; preds = %land.lhs.true334
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call343 = call i32 @mbedtls_cipher_get_block_size(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx) #5
  %call344 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %145, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.34, i64 0, i64 0), i32 noundef %call343) #5
  br label %exit

if.end345:                                        ; preds = %land.lhs.true334, %if.end330
  %146 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call346 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %146) #5
  %conv347 = zext i8 %call346 to i32
  %add348 = add nsw i32 16, %conv347
  %conv349 = sext i32 %add348 to i64
  %147 = load i64, i64* %filesize, align 8
  %sub350 = sub nsw i64 %147, %conv349
  store i64 %sub350, i64* %filesize, align 8
  %arraydecay351 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i64 0, i64 0
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  %call352 = call i64 @fread(i8* noundef %arraydecay351, i64 noundef 1, i64 noundef 16, %struct._IO_FILE* noundef %148) #5
  %cmp353 = icmp ne i64 %call352, 16
  br i1 %cmp353, label %if.then355, label %if.end357

if.then355:                                       ; preds = %if.end345
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call356 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %149, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i64 0, i64 0), i32 noundef 16) #5
  br label %exit

if.end357:                                        ; preds = %if.end345
  %arraydecay358 = getelementptr inbounds [16 x i8], [16 x i8]* %IV, i64 0, i64 0
  %arraydecay359 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i64 0, i64 0
  %call360 = call i8* @memcpy(i8* noundef %arraydecay358, i8* noundef %arraydecay359, i64 noundef 16) #7
  %arraydecay361 = getelementptr inbounds [64 x i8], [64 x i8]* %digest, i64 0, i64 0
  %call362 = call i8* @memset(i8* noundef %arraydecay361, i32 noundef 0, i64 noundef 32) #7
  %arraydecay363 = getelementptr inbounds [64 x i8], [64 x i8]* %digest, i64 0, i64 0
  %arraydecay364 = getelementptr inbounds [16 x i8], [16 x i8]* %IV, i64 0, i64 0
  %call365 = call i8* @memcpy(i8* noundef %arraydecay363, i8* noundef %arraydecay364, i64 noundef 16) #7
  store i32 0, i32* %i, align 4
  br label %for.cond366

for.cond366:                                      ; preds = %for.inc397, %if.end357
  %150 = load i32, i32* %i, align 4
  %cmp367 = icmp slt i32 %150, 8192
  br i1 %cmp367, label %for.body369, label %for.end399

for.body369:                                      ; preds = %for.cond366
  %call370 = call i32 @mbedtls_md_starts(%struct.mbedtls_md_context_t* noundef %md_ctx) #5
  %cmp371 = icmp ne i32 %call370, 0
  br i1 %cmp371, label %if.then373, label %if.end375

if.then373:                                       ; preds = %for.body369
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call374 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %151, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0)) #5
  br label %exit

if.end375:                                        ; preds = %for.body369
  %arraydecay376 = getelementptr inbounds [64 x i8], [64 x i8]* %digest, i64 0, i64 0
  %call377 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* noundef %md_ctx, i8* noundef %arraydecay376, i64 noundef 32) #5
  %cmp378 = icmp ne i32 %call377, 0
  br i1 %cmp378, label %if.then380, label %if.end382

if.then380:                                       ; preds = %if.end375
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call381 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0)) #5
  br label %exit

if.end382:                                        ; preds = %if.end375
  %arraydecay383 = getelementptr inbounds [512 x i8], [512 x i8]* %key, i64 0, i64 0
  %153 = load i64, i64* %keylen, align 8
  %call384 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* noundef %md_ctx, i8* noundef %arraydecay383, i64 noundef %153) #5
  %cmp385 = icmp ne i32 %call384, 0
  br i1 %cmp385, label %if.then387, label %if.end389

if.then387:                                       ; preds = %if.end382
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call388 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %154, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0)) #5
  br label %exit

if.end389:                                        ; preds = %if.end382
  %arraydecay390 = getelementptr inbounds [64 x i8], [64 x i8]* %digest, i64 0, i64 0
  %call391 = call i32 @mbedtls_md_finish(%struct.mbedtls_md_context_t* noundef %md_ctx, i8* noundef %arraydecay390) #5
  %cmp392 = icmp ne i32 %call391, 0
  br i1 %cmp392, label %if.then394, label %if.end396

if.then394:                                       ; preds = %if.end389
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call395 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %155, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0)) #5
  br label %exit

if.end396:                                        ; preds = %if.end389
  br label %for.inc397

for.inc397:                                       ; preds = %if.end396
  %156 = load i32, i32* %i, align 4
  %inc398 = add nsw i32 %156, 1
  store i32 %inc398, i32* %i, align 4
  br label %for.cond366, !llvm.loop !11

for.end399:                                       ; preds = %for.cond366
  %arraydecay400 = getelementptr inbounds [64 x i8], [64 x i8]* %digest, i64 0, i64 0
  %157 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %call401 = call i64 @mbedtls_cipher_info_get_key_bitlen(%struct.mbedtls_cipher_info_t* noundef %157) #5
  %conv402 = trunc i64 %call401 to i32
  %call403 = call i32 @mbedtls_cipher_setkey(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx, i8* noundef %arraydecay400, i32 noundef %conv402, i32 noundef 0) #5
  %cmp404 = icmp ne i32 %call403, 0
  br i1 %cmp404, label %if.then406, label %if.end408

if.then406:                                       ; preds = %for.end399
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call407 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %158, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0)) #5
  br label %exit

if.end408:                                        ; preds = %for.end399
  %arraydecay409 = getelementptr inbounds [16 x i8], [16 x i8]* %IV, i64 0, i64 0
  %call410 = call i32 @mbedtls_cipher_set_iv(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx, i8* noundef %arraydecay409, i64 noundef 16) #5
  %cmp411 = icmp ne i32 %call410, 0
  br i1 %cmp411, label %if.then413, label %if.end415

if.then413:                                       ; preds = %if.end408
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call414 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %159, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0)) #5
  br label %exit

if.end415:                                        ; preds = %if.end408
  %call416 = call i32 @mbedtls_cipher_reset(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx) #5
  %cmp417 = icmp ne i32 %call416, 0
  br i1 %cmp417, label %if.then419, label %if.end421

if.then419:                                       ; preds = %if.end415
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call420 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %160, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0)) #5
  br label %exit

if.end421:                                        ; preds = %if.end415
  %arraydecay422 = getelementptr inbounds [64 x i8], [64 x i8]* %digest, i64 0, i64 0
  %call423 = call i32 @mbedtls_md_hmac_starts(%struct.mbedtls_md_context_t* noundef %md_ctx, i8* noundef %arraydecay422, i64 noundef 32) #5
  %cmp424 = icmp ne i32 %call423, 0
  br i1 %cmp424, label %if.then426, label %if.end428

if.then426:                                       ; preds = %if.end421
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call427 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %161, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.25, i64 0, i64 0)) #5
  br label %exit

if.end428:                                        ; preds = %if.end421
  store i64 0, i64* %offset, align 8
  br label %for.cond429

for.cond429:                                      ; preds = %for.inc478, %if.end428
  %162 = load i64, i64* %offset, align 8
  %163 = load i64, i64* %filesize, align 8
  %cmp430 = icmp slt i64 %162, %163
  br i1 %cmp430, label %for.body432, label %for.end482

for.body432:                                      ; preds = %for.cond429
  %164 = load i64, i64* %filesize, align 8
  %conv433 = trunc i64 %164 to i32
  %conv434 = zext i32 %conv433 to i64
  %165 = load i64, i64* %offset, align 8
  %sub435 = sub nsw i64 %conv434, %165
  %call436 = call i32 @mbedtls_cipher_get_block_size(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx) #5
  %conv437 = zext i32 %call436 to i64
  %cmp438 = icmp sgt i64 %sub435, %conv437
  br i1 %cmp438, label %cond.true440, label %cond.false442

cond.true440:                                     ; preds = %for.body432
  %call441 = call i32 @mbedtls_cipher_get_block_size(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx) #5
  br label %cond.end445

cond.false442:                                    ; preds = %for.body432
  %166 = load i64, i64* %filesize, align 8
  %167 = load i64, i64* %offset, align 8
  %sub443 = sub nsw i64 %166, %167
  %conv444 = trunc i64 %sub443 to i32
  br label %cond.end445

cond.end445:                                      ; preds = %cond.false442, %cond.true440
  %cond446 = phi i32 [ %call441, %cond.true440 ], [ %conv444, %cond.false442 ]
  %conv447 = zext i32 %cond446 to i64
  store i64 %conv447, i64* %ilen, align 8
  %arraydecay448 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i64 0, i64 0
  %168 = load i64, i64* %ilen, align 8
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  %call449 = call i64 @fread(i8* noundef %arraydecay448, i64 noundef 1, i64 noundef %168, %struct._IO_FILE* noundef %169) #5
  %170 = load i64, i64* %ilen, align 8
  %cmp450 = icmp ne i64 %call449, %170
  br i1 %cmp450, label %if.then452, label %if.end455

if.then452:                                       ; preds = %cond.end445
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call453 = call i32 @mbedtls_cipher_get_block_size(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx) #5
  %call454 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %171, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.36, i64 0, i64 0), i32 noundef %call453) #5
  br label %exit

if.end455:                                        ; preds = %cond.end445
  %arraydecay456 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i64 0, i64 0
  %172 = load i64, i64* %ilen, align 8
  %call457 = call i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef %md_ctx, i8* noundef %arraydecay456, i64 noundef %172) #5
  %cmp458 = icmp ne i32 %call457, 0
  br i1 %cmp458, label %if.then460, label %if.end462

if.then460:                                       ; preds = %if.end455
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call461 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %173, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.28, i64 0, i64 0)) #5
  br label %exit

if.end462:                                        ; preds = %if.end455
  %arraydecay463 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i64 0, i64 0
  %174 = load i64, i64* %ilen, align 8
  %arraydecay464 = getelementptr inbounds [1024 x i8], [1024 x i8]* %output, i64 0, i64 0
  %call465 = call i32 @mbedtls_cipher_update(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx, i8* noundef %arraydecay463, i64 noundef %174, i8* noundef %arraydecay464, i64* noundef %olen) #5
  %cmp466 = icmp ne i32 %call465, 0
  br i1 %cmp466, label %if.then468, label %if.end470

if.then468:                                       ; preds = %if.end462
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call469 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %175, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i64 0, i64 0)) #5
  br label %exit

if.end470:                                        ; preds = %if.end462
  %arraydecay471 = getelementptr inbounds [1024 x i8], [1024 x i8]* %output, i64 0, i64 0
  %176 = load i64, i64* %olen, align 8
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 8
  %call472 = call i64 @fwrite(i8* noundef %arraydecay471, i64 noundef 1, i64 noundef %176, %struct._IO_FILE* noundef %177) #5
  %178 = load i64, i64* %olen, align 8
  %cmp473 = icmp ne i64 %call472, %178
  br i1 %cmp473, label %if.then475, label %if.end477

if.then475:                                       ; preds = %if.end470
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %180 = load i64, i64* %olen, align 8
  %call476 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %179, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i64 0, i64 0), i64 noundef %180) #5
  br label %exit

if.end477:                                        ; preds = %if.end470
  br label %for.inc478

for.inc478:                                       ; preds = %if.end477
  %call479 = call i32 @mbedtls_cipher_get_block_size(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx) #5
  %conv480 = zext i32 %call479 to i64
  %181 = load i64, i64* %offset, align 8
  %add481 = add nsw i64 %181, %conv480
  store i64 %add481, i64* %offset, align 8
  br label %for.cond429, !llvm.loop !12

for.end482:                                       ; preds = %for.cond429
  %arraydecay483 = getelementptr inbounds [64 x i8], [64 x i8]* %digest, i64 0, i64 0
  %call484 = call i32 @mbedtls_md_hmac_finish(%struct.mbedtls_md_context_t* noundef %md_ctx, i8* noundef %arraydecay483) #5
  %cmp485 = icmp ne i32 %call484, 0
  br i1 %cmp485, label %if.then487, label %if.end489

if.then487:                                       ; preds = %for.end482
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call488 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %182, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.31, i64 0, i64 0)) #5
  br label %exit

if.end489:                                        ; preds = %for.end482
  %arraydecay490 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i64 0, i64 0
  %183 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call491 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %183) #5
  %conv492 = zext i8 %call491 to i64
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  %call493 = call i64 @fread(i8* noundef %arraydecay490, i64 noundef 1, i64 noundef %conv492, %struct._IO_FILE* noundef %184) #5
  %185 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call494 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %185) #5
  %conv495 = zext i8 %call494 to i64
  %cmp496 = icmp ne i64 %call493, %conv495
  br i1 %cmp496, label %if.then498, label %if.end502

if.then498:                                       ; preds = %if.end489
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %187 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call499 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %187) #5
  %conv500 = zext i8 %call499 to i32
  %call501 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %186, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv500) #5
  br label %exit

if.end502:                                        ; preds = %if.end489
  store i8 0, i8* %diff, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond503

for.cond503:                                      ; preds = %for.inc517, %if.end502
  %188 = load i32, i32* %i, align 4
  %189 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call504 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %189) #5
  %conv505 = zext i8 %call504 to i32
  %cmp506 = icmp slt i32 %188, %conv505
  br i1 %cmp506, label %for.body508, label %for.end519

for.body508:                                      ; preds = %for.cond503
  %190 = load i32, i32* %i, align 4
  %idxprom509 = sext i32 %190 to i64
  %arrayidx510 = getelementptr inbounds [64 x i8], [64 x i8]* %digest, i64 0, i64 %idxprom509
  %191 = load i8, i8* %arrayidx510, align 1
  %conv511 = zext i8 %191 to i32
  %192 = load i32, i32* %i, align 4
  %idxprom512 = sext i32 %192 to i64
  %arrayidx513 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i64 0, i64 %idxprom512
  %193 = load i8, i8* %arrayidx513, align 1
  %conv514 = zext i8 %193 to i32
  %xor = xor i32 %conv511, %conv514
  %194 = load i8, i8* %diff, align 1
  %conv515 = zext i8 %194 to i32
  %or = or i32 %conv515, %xor
  %conv516 = trunc i32 %or to i8
  store i8 %conv516, i8* %diff, align 1
  br label %for.inc517

for.inc517:                                       ; preds = %for.body508
  %195 = load i32, i32* %i, align 4
  %inc518 = add nsw i32 %195, 1
  store i32 %inc518, i32* %i, align 4
  br label %for.cond503, !llvm.loop !13

for.end519:                                       ; preds = %for.cond503
  %196 = load i8, i8* %diff, align 1
  %conv520 = zext i8 %196 to i32
  %cmp521 = icmp ne i32 %conv520, 0
  br i1 %cmp521, label %if.then523, label %if.end525

if.then523:                                       ; preds = %for.end519
  %197 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call524 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %197, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.37, i64 0, i64 0)) #5
  br label %exit

if.end525:                                        ; preds = %for.end519
  %arraydecay526 = getelementptr inbounds [1024 x i8], [1024 x i8]* %output, i64 0, i64 0
  %call527 = call i32 @mbedtls_cipher_finish(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx, i8* noundef %arraydecay526, i64* noundef %olen) #5
  %cmp528 = icmp ne i32 %call527, 0
  br i1 %cmp528, label %if.then530, label %if.end532

if.then530:                                       ; preds = %if.end525
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call531 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %198, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0)) #5
  br label %exit

if.end532:                                        ; preds = %if.end525
  %arraydecay533 = getelementptr inbounds [1024 x i8], [1024 x i8]* %output, i64 0, i64 0
  %199 = load i64, i64* %olen, align 8
  %200 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 8
  %call534 = call i64 @fwrite(i8* noundef %arraydecay533, i64 noundef 1, i64 noundef %199, %struct._IO_FILE* noundef %200) #5
  %201 = load i64, i64* %olen, align 8
  %cmp535 = icmp ne i64 %call534, %201
  br i1 %cmp535, label %if.then537, label %if.end539

if.then537:                                       ; preds = %if.end532
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %203 = load i64, i64* %olen, align 8
  %call538 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %202, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i64 0, i64 0), i64 noundef %203) #5
  br label %exit

if.end539:                                        ; preds = %if.end532
  br label %if.end540

if.end540:                                        ; preds = %if.end539, %if.end312
  store i32 0, i32* %exit_code, align 4
  br label %exit

exit:                                             ; preds = %if.end540, %if.then537, %if.then530, %if.then523, %if.then498, %if.then487, %if.then475, %if.then468, %if.then460, %if.then452, %if.then426, %if.then419, %if.then413, %if.then406, %if.then394, %if.then387, %if.then380, %if.then373, %if.then355, %if.then342, %if.then328, %if.then322, %if.then307, %if.then296, %if.then289, %if.then282, %if.then275, %if.then264, %if.then257, %if.then250, %if.then242, %if.then221, %if.then214, %if.then208, %if.then201, %if.then189, %if.then182, %if.then175, %if.then168, %if.then153, %if.then143, %if.then136, %if.then129, %if.then122, %if.then107, %if.then102, %if.then64, %if.then58, %if.then52, %if.then46, %if.then39, %if.then32, %if.then26, %if.then19, %while.end15
  %204 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  %tobool541 = icmp ne %struct._IO_FILE* %204, null
  br i1 %tobool541, label %if.then542, label %if.end544

if.then542:                                       ; preds = %exit
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  %call543 = call i32 @fclose(%struct._IO_FILE* noundef %205) #5
  br label %if.end544

if.end544:                                        ; preds = %if.then542, %exit
  %206 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 8
  %tobool545 = icmp ne %struct._IO_FILE* %206, null
  br i1 %tobool545, label %if.then546, label %if.end548

if.then546:                                       ; preds = %if.end544
  %207 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 8
  %call547 = call i32 @fclose(%struct._IO_FILE* noundef %207) #5
  br label %if.end548

if.end548:                                        ; preds = %if.then546, %if.end544
  store i32 0, i32* %i, align 4
  br label %for.cond549

for.cond549:                                      ; preds = %for.inc558, %if.end548
  %208 = load i32, i32* %i, align 4
  %209 = load i32, i32* %argc.addr, align 4
  %cmp550 = icmp slt i32 %208, %209
  br i1 %cmp550, label %for.body552, label %for.end560

for.body552:                                      ; preds = %for.cond549
  %210 = load i8**, i8*** %argv.addr, align 8
  %211 = load i32, i32* %i, align 4
  %idxprom553 = sext i32 %211 to i64
  %arrayidx554 = getelementptr inbounds i8*, i8** %210, i64 %idxprom553
  %212 = load i8*, i8** %arrayidx554, align 8
  %213 = load i8**, i8*** %argv.addr, align 8
  %214 = load i32, i32* %i, align 4
  %idxprom555 = sext i32 %214 to i64
  %arrayidx556 = getelementptr inbounds i8*, i8** %213, i64 %idxprom555
  %215 = load i8*, i8** %arrayidx556, align 8
  %call557 = call i64 @strlen(i8* noundef %215) #6
  call void @mbedtls_platform_zeroize(i8* noundef %212, i64 noundef %call557) #5
  br label %for.inc558

for.inc558:                                       ; preds = %for.body552
  %216 = load i32, i32* %i, align 4
  %inc559 = add nsw i32 %216, 1
  store i32 %inc559, i32* %i, align 4
  br label %for.cond549, !llvm.loop !14

for.end560:                                       ; preds = %for.cond549
  %arraydecay561 = getelementptr inbounds [16 x i8], [16 x i8]* %IV, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay561, i64 noundef 16) #5
  %arraydecay562 = getelementptr inbounds [512 x i8], [512 x i8]* %key, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay562, i64 noundef 512) #5
  %arraydecay563 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay563, i64 noundef 1024) #5
  %arraydecay564 = getelementptr inbounds [1024 x i8], [1024 x i8]* %output, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay564, i64 noundef 1024) #5
  %arraydecay565 = getelementptr inbounds [64 x i8], [64 x i8]* %digest, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay565, i64 noundef 64) #5
  call void @mbedtls_cipher_free(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx) #5
  call void @mbedtls_md_free(%struct.mbedtls_md_context_t* noundef %md_ctx) #5
  %217 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %217) #8
  unreachable
}

declare dso_local void @mbedtls_cipher_init(%struct.mbedtls_cipher_context_t* noundef) #1

declare dso_local void @mbedtls_md_init(%struct.mbedtls_md_context_t* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32* @mbedtls_cipher_list() #1

declare dso_local %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_type(i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mbedtls_cipher_info_get_name(%struct.mbedtls_cipher_info_t* noundef %info) #0 {
entry:
  %retval = alloca i8*, align 8
  %info.addr = alloca %struct.mbedtls_cipher_info_t*, align 8
  store %struct.mbedtls_cipher_info_t* %info, %struct.mbedtls_cipher_info_t** %info.addr, align 8
  %0 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %info.addr, align 8
  %cmp = icmp eq %struct.mbedtls_cipher_info_t* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %info.addr, align 8
  %private_name = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %1, i32 0, i32 3
  %2 = load i8*, i8** %private_name, align 8
  store i8* %2, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i8*, i8** %retval, align 8
  ret i8* %3
}

declare dso_local i32* @mbedtls_md_list() #1

declare dso_local %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef) #1

declare dso_local i8* @mbedtls_md_get_name(%struct.mbedtls_md_info_t* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

declare dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local void @setbuf(%struct._IO_FILE* noundef, i8* noundef) #3

declare dso_local %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_string(i8* noundef) #1

declare dso_local i32 @mbedtls_cipher_setup(%struct.mbedtls_cipher_context_t* noundef, %struct.mbedtls_cipher_info_t* noundef) #1

declare dso_local %struct.mbedtls_md_info_t* @mbedtls_md_info_from_string(i8* noundef) #1

declare dso_local i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* noundef, %struct.mbedtls_md_info_t* noundef, i32 noundef) #1

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: nounwind
declare dso_local i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind
declare dso_local i32 @fileno(%struct._IO_FILE* noundef) #3

declare dso_local void @perror(i8* noundef) #1

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_md_starts(%struct.mbedtls_md_context_t* noundef) #1

declare dso_local i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_md_finish(%struct.mbedtls_md_context_t* noundef, i8* noundef) #1

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #3

declare dso_local i32 @mbedtls_cipher_setkey(%struct.mbedtls_cipher_context_t* noundef, i8* noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mbedtls_cipher_info_get_key_bitlen(%struct.mbedtls_cipher_info_t* noundef %info) #0 {
entry:
  %retval = alloca i64, align 8
  %info.addr = alloca %struct.mbedtls_cipher_info_t*, align 8
  store %struct.mbedtls_cipher_info_t* %info, %struct.mbedtls_cipher_info_t** %info.addr, align 8
  %0 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %info.addr, align 8
  %cmp = icmp eq %struct.mbedtls_cipher_info_t* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %info.addr, align 8
  %private_key_bitlen = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %1, i32 0, i32 2
  %2 = load i32, i32* %private_key_bitlen, align 8
  %conv = zext i32 %2 to i64
  store i64 %conv, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i64, i64* %retval, align 8
  ret i64 %3
}

declare dso_local i32 @mbedtls_cipher_set_iv(%struct.mbedtls_cipher_context_t* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_cipher_reset(%struct.mbedtls_cipher_context_t* noundef) #1

declare dso_local i32 @mbedtls_md_hmac_starts(%struct.mbedtls_md_context_t* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_cipher_get_block_size(%struct.mbedtls_cipher_context_t* noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_cipher_context_t*, align 8
  store %struct.mbedtls_cipher_context_t* %ctx, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %private_cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %private_cipher_info, align 8
  %cmp = icmp eq %struct.mbedtls_cipher_info_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end
  %2 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %private_cipher_info1 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %2, i32 0, i32 0
  %3 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %private_cipher_info1, align 8
  %private_block_size = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %3, i32 0, i32 6
  %4 = load i32, i32* %private_block_size, align 8
  store i32 %4, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

declare dso_local i32 @mbedtls_cipher_update(%struct.mbedtls_cipher_context_t* noundef, i8* noundef, i64 noundef, i8* noundef, i64* noundef) #1

declare dso_local i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_cipher_finish(%struct.mbedtls_cipher_context_t* noundef, i8* noundef, i64* noundef) #1

declare dso_local i32 @mbedtls_md_hmac_finish(%struct.mbedtls_md_context_t* noundef, i8* noundef) #1

declare dso_local zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_cipher_info_get_mode(%struct.mbedtls_cipher_info_t* noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.mbedtls_cipher_info_t*, align 8
  store %struct.mbedtls_cipher_info_t* %info, %struct.mbedtls_cipher_info_t** %info.addr, align 8
  %0 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %info.addr, align 8
  %cmp = icmp eq %struct.mbedtls_cipher_info_t* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %info.addr, align 8
  %private_mode = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %1, i32 0, i32 1
  %2 = load i32, i32* %private_mode, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #1

declare dso_local void @mbedtls_cipher_free(%struct.mbedtls_cipher_context_t* noundef) #1

declare dso_local void @mbedtls_md_free(%struct.mbedtls_md_context_t* noundef) #1

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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
