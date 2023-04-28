; ModuleID = 'hash/generic_sum.c'
source_filename = "hash/generic_sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.mbedtls_md_info_t = type opaque
%struct.mbedtls_md_context_t = type { %struct.mbedtls_md_info_t*, i8*, i8* }

@.str = private unnamed_addr constant [57 x i8] c"print mode:  generic_sum <mbedtls_md> <file> <file> ...\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"check mode:  generic_sum <mbedtls_md> -c <checksum file>\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"\0AAvailable message digests:\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"Message Digest '%s' not found\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to initialize context.\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"failed to open: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"No '%s' hash found on line.\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"wrong checksum: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"WARNING: %d (out of %d) input files could not be read\0A\00", align 1
@.str.13 = private unnamed_addr constant [58 x i8] c"WARNING: %d (out of %d) computed checksums did not match\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"failed to read: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %exit_code = alloca i32, align 4
  %md_info = alloca %struct.mbedtls_md_info_t*, align 8
  %md_ctx = alloca %struct.mbedtls_md_context_t, align 8
  %list = alloca i32*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %ret, align 4
  store i32 1, i32* %exit_code, align 4
  call void @mbedtls_md_init(%struct.mbedtls_md_context_t* noundef %md_ctx) #5
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0)) #5
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0)) #5
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0)) #5
  %call3 = call i32* @mbedtls_md_list() #5
  store i32* %call3, i32** %list, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %1 = load i32*, i32** %list, align 8
  %2 = load i32, i32* %1, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32*, i32** %list, align 8
  %4 = load i32, i32* %3, align 4
  %call4 = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef %4) #5
  store %struct.mbedtls_md_info_t* %call4, %struct.mbedtls_md_info_t** %md_info, align 8
  %5 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call5 = call i8* @mbedtls_md_get_name(%struct.mbedtls_md_info_t* noundef %5) #5
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef %call5) #5
  %6 = load i32*, i32** %list, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %6, i32 1
  store i32* %incdec.ptr, i32** %list, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %7 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %7) #6
  unreachable

if.end:                                           ; preds = %entry
  %8 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 1
  %9 = load i8*, i8** %arrayidx, align 8
  %call7 = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_string(i8* noundef %9) #5
  store %struct.mbedtls_md_info_t* %call7, %struct.mbedtls_md_info_t** %md_info, align 8
  %10 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %cmp8 = icmp eq %struct.mbedtls_md_info_t* %10, null
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = load i8**, i8*** %argv.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %12, i64 1
  %13 = load i8*, i8** %arrayidx10, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* noundef %13) #5
  %14 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %14) #6
  unreachable

if.end12:                                         ; preds = %if.end
  %15 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call13 = call i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* noundef %md_ctx, %struct.mbedtls_md_info_t* noundef %15, i32 noundef 0) #5
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end12
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0)) #5
  %17 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %17) #6
  unreachable

if.end17:                                         ; preds = %if.end12
  store i32 0, i32* %ret, align 4
  %18 = load i32, i32* %argc.addr, align 4
  %cmp18 = icmp eq i32 %18, 4
  br i1 %cmp18, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %if.end17
  %19 = load i8**, i8*** %argv.addr, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %19, i64 2
  %20 = load i8*, i8** %arrayidx19, align 8
  %call20 = call i32 @strcmp(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* noundef %20) #7
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end25

if.then22:                                        ; preds = %land.lhs.true
  %21 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %22 = load i8**, i8*** %argv.addr, align 8
  %arrayidx23 = getelementptr inbounds i8*, i8** %22, i64 3
  %23 = load i8*, i8** %arrayidx23, align 8
  %call24 = call i32 @generic_check(%struct.mbedtls_md_info_t* noundef %21, i8* noundef %23) #5
  %24 = load i32, i32* %ret, align 4
  %or = or i32 %24, %call24
  store i32 %or, i32* %ret, align 4
  br label %exit

if.end25:                                         ; preds = %land.lhs.true, %if.end17
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end25
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %argc.addr, align 4
  %cmp26 = icmp slt i32 %25, %26
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %28 = load i8**, i8*** %argv.addr, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom = sext i32 %29 to i64
  %arrayidx27 = getelementptr inbounds i8*, i8** %28, i64 %idxprom
  %30 = load i8*, i8** %arrayidx27, align 8
  %call28 = call i32 @generic_print(%struct.mbedtls_md_info_t* noundef %27, i8* noundef %30) #5
  %31 = load i32, i32* %ret, align 4
  %or29 = or i32 %31, %call28
  store i32 %or29, i32* %ret, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %33 = load i32, i32* %ret, align 4
  %cmp30 = icmp eq i32 %33, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %for.end
  store i32 0, i32* %exit_code, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %for.end
  br label %exit

exit:                                             ; preds = %if.end32, %if.then22
  call void @mbedtls_md_free(%struct.mbedtls_md_context_t* noundef %md_ctx) #5
  %34 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %34) #6
  unreachable
}

declare dso_local void @mbedtls_md_init(%struct.mbedtls_md_context_t* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32* @mbedtls_md_list() #1

declare dso_local %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef) #1

declare dso_local i8* @mbedtls_md_get_name(%struct.mbedtls_md_info_t* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

declare dso_local %struct.mbedtls_md_info_t* @mbedtls_md_info_from_string(i8* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* noundef, %struct.mbedtls_md_info_t* noundef, i32 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_check(%struct.mbedtls_md_info_t* noundef %md_info, i8* noundef %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %md_info.addr = alloca %struct.mbedtls_md_info_t*, align 8
  %filename.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i64, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %nb_err1 = alloca i32, align 4
  %nb_err2 = alloca i32, align 4
  %nb_tot1 = alloca i32, align 4
  %nb_tot2 = alloca i32, align 4
  %sum = alloca [64 x i8], align 16
  %line = alloca [1024 x i8], align 16
  %diff = alloca i8, align 1
  %buf = alloca [129 x i8], align 16
  store %struct.mbedtls_md_info_t* %md_info, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #5
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %filename.addr, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* noundef %1) #5
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %nb_err2, align 4
  store i32 0, i32* %nb_err1, align 4
  store i32 0, i32* %nb_tot2, align 4
  store i32 0, i32* %nb_tot1, align 4
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 0
  %call2 = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 1024) #8
  store i64 1024, i64* %n, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end105, %if.then62, %if.then32, %if.then13, %if.end
  %arraydecay3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 0
  %2 = load i64, i64* %n, align 8
  %conv = trunc i64 %2 to i32
  %sub = sub nsw i32 %conv, 1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call4 = call i8* @fgets(i8* noundef %arraydecay3, i32 noundef %sub, %struct._IO_FILE* noundef %3) #5
  %cmp5 = icmp ne i8* %call4, null
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 0
  %call8 = call i64 @strlen(i8* noundef %arraydecay7) #7
  store i64 %call8, i64* %n, align 8
  %4 = load i64, i64* %n, align 8
  %5 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %call9 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %5) #5
  %conv10 = zext i8 %call9 to i64
  %mul = mul i64 2, %conv10
  %add = add i64 %mul, 4
  %cmp11 = icmp ult i64 %4, %add
  br i1 %cmp11, label %if.then13, label %if.end16

if.then13:                                        ; preds = %while.body
  %6 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %call14 = call i8* @mbedtls_md_get_name(%struct.mbedtls_md_info_t* noundef %6) #5
  %call15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8* noundef %call14) #5
  br label %while.cond, !llvm.loop !7

if.end16:                                         ; preds = %while.body
  %7 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %call17 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %7) #5
  %conv18 = zext i8 %call17 to i32
  %mul19 = mul nsw i32 2, %conv18
  %idxprom = sext i32 %mul19 to i64
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv20 = sext i8 %8 to i32
  %cmp21 = icmp ne i32 %conv20, 32
  br i1 %cmp21, label %if.then32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end16
  %9 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %call23 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %9) #5
  %conv24 = zext i8 %call23 to i32
  %mul25 = mul nsw i32 2, %conv24
  %add26 = add nsw i32 %mul25, 1
  %idxprom27 = sext i32 %add26 to i64
  %arrayidx28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 %idxprom27
  %10 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %10 to i32
  %cmp30 = icmp ne i32 %conv29, 32
  br i1 %cmp30, label %if.then32, label %if.end35

if.then32:                                        ; preds = %lor.lhs.false, %if.end16
  %11 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %call33 = call i8* @mbedtls_md_get_name(%struct.mbedtls_md_info_t* noundef %11) #5
  %call34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8* noundef %call33) #5
  br label %while.cond, !llvm.loop !7

if.end35:                                         ; preds = %lor.lhs.false
  %12 = load i64, i64* %n, align 8
  %sub36 = sub i64 %12, 1
  %arrayidx37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 %sub36
  %13 = load i8, i8* %arrayidx37, align 1
  %conv38 = sext i8 %13 to i32
  %cmp39 = icmp eq i32 %conv38, 10
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end35
  %14 = load i64, i64* %n, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %n, align 8
  %15 = load i64, i64* %n, align 8
  %arrayidx42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 %15
  store i8 0, i8* %arrayidx42, align 1
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end35
  %16 = load i64, i64* %n, align 8
  %sub44 = sub i64 %16, 1
  %arrayidx45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 %sub44
  %17 = load i8, i8* %arrayidx45, align 1
  %conv46 = sext i8 %17 to i32
  %cmp47 = icmp eq i32 %conv46, 13
  br i1 %cmp47, label %if.then49, label %if.end52

if.then49:                                        ; preds = %if.end43
  %18 = load i64, i64* %n, align 8
  %dec50 = add i64 %18, -1
  store i64 %dec50, i64* %n, align 8
  %19 = load i64, i64* %n, align 8
  %arrayidx51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 %19
  store i8 0, i8* %arrayidx51, align 1
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end43
  %20 = load i32, i32* %nb_tot1, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %nb_tot1, align 4
  %21 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %arraydecay53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay53, i64 2
  %22 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %call54 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %22) #5
  %conv55 = zext i8 %call54 to i32
  %mul56 = mul nsw i32 2, %conv55
  %idx.ext = sext i32 %mul56 to i64
  %add.ptr57 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext
  %arraydecay58 = getelementptr inbounds [64 x i8], [64 x i8]* %sum, i64 0, i64 0
  %call59 = call i32 @generic_wrapper(%struct.mbedtls_md_info_t* noundef %21, i8* noundef %add.ptr57, i8* noundef %arraydecay58) #5
  %cmp60 = icmp ne i32 %call59, 0
  br i1 %cmp60, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.end52
  %23 = load i32, i32* %nb_err1, align 4
  %inc63 = add nsw i32 %23, 1
  store i32 %inc63, i32* %nb_err1, align 4
  br label %while.cond, !llvm.loop !7

if.end64:                                         ; preds = %if.end52
  %24 = load i32, i32* %nb_tot2, align 4
  %inc65 = add nsw i32 %24, 1
  store i32 %inc65, i32* %nb_tot2, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end64
  %25 = load i32, i32* %i, align 4
  %26 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %call66 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %26) #5
  %conv67 = zext i8 %call66 to i32
  %cmp68 = icmp slt i32 %25, %conv67
  br i1 %cmp68, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay70 = getelementptr inbounds [129 x i8], [129 x i8]* %buf, i64 0, i64 0
  %27 = load i32, i32* %i, align 4
  %mul71 = mul nsw i32 %27, 2
  %idx.ext72 = sext i32 %mul71 to i64
  %add.ptr73 = getelementptr inbounds i8, i8* %arraydecay70, i64 %idx.ext72
  %28 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %28 to i64
  %arrayidx75 = getelementptr inbounds [64 x i8], [64 x i8]* %sum, i64 0, i64 %idxprom74
  %29 = load i8, i8* %arrayidx75, align 1
  %conv76 = zext i8 %29 to i32
  %call77 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %add.ptr73, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv76) #8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4
  %inc78 = add nsw i32 %30, 1
  store i32 %inc78, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  store i8 0, i8* %diff, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond79

for.cond79:                                       ; preds = %for.inc94, %for.end
  %31 = load i32, i32* %i, align 4
  %32 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %call80 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %32) #5
  %conv81 = zext i8 %call80 to i32
  %mul82 = mul nsw i32 2, %conv81
  %cmp83 = icmp slt i32 %31, %mul82
  br i1 %cmp83, label %for.body85, label %for.end96

for.body85:                                       ; preds = %for.cond79
  %33 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %33 to i64
  %arrayidx87 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 %idxprom86
  %34 = load i8, i8* %arrayidx87, align 1
  %conv88 = sext i8 %34 to i32
  %35 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %35 to i64
  %arrayidx90 = getelementptr inbounds [129 x i8], [129 x i8]* %buf, i64 0, i64 %idxprom89
  %36 = load i8, i8* %arrayidx90, align 1
  %conv91 = sext i8 %36 to i32
  %xor = xor i32 %conv88, %conv91
  %37 = load i8, i8* %diff, align 1
  %conv92 = sext i8 %37 to i32
  %or = or i32 %conv92, %xor
  %conv93 = trunc i32 %or to i8
  store i8 %conv93, i8* %diff, align 1
  br label %for.inc94

for.inc94:                                        ; preds = %for.body85
  %38 = load i32, i32* %i, align 4
  %inc95 = add nsw i32 %38, 1
  store i32 %inc95, i32* %i, align 4
  br label %for.cond79, !llvm.loop !9

for.end96:                                        ; preds = %for.cond79
  %39 = load i8, i8* %diff, align 1
  %conv97 = sext i8 %39 to i32
  %cmp98 = icmp ne i32 %conv97, 0
  br i1 %cmp98, label %if.then100, label %if.end105

if.then100:                                       ; preds = %for.end96
  %40 = load i32, i32* %nb_err2, align 4
  %inc101 = add nsw i32 %40, 1
  store i32 %inc101, i32* %nb_err2, align 4
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %arraydecay102 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 0
  %add.ptr103 = getelementptr inbounds i8, i8* %arraydecay102, i64 66
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %41, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* noundef %add.ptr103) #5
  br label %if.end105

if.end105:                                        ; preds = %if.then100, %for.end96
  store i64 1024, i64* %n, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %42 = load i32, i32* %nb_err1, align 4
  %cmp106 = icmp ne i32 %42, 0
  br i1 %cmp106, label %if.then108, label %if.end110

if.then108:                                       ; preds = %while.end
  %43 = load i32, i32* %nb_err1, align 4
  %44 = load i32, i32* %nb_tot1, align 4
  %call109 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0), i32 noundef %43, i32 noundef %44) #5
  br label %if.end110

if.end110:                                        ; preds = %if.then108, %while.end
  %45 = load i32, i32* %nb_err2, align 4
  %cmp111 = icmp ne i32 %45, 0
  br i1 %cmp111, label %if.then113, label %if.end115

if.then113:                                       ; preds = %if.end110
  %46 = load i32, i32* %nb_err2, align 4
  %47 = load i32, i32* %nb_tot2, align 4
  %call114 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.13, i64 0, i64 0), i32 noundef %46, i32 noundef %47) #5
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %if.end110
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call116 = call i32 @fclose(%struct._IO_FILE* noundef %48) #5
  %49 = load i32, i32* %nb_err1, align 4
  %cmp117 = icmp ne i32 %49, 0
  br i1 %cmp117, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end115
  %50 = load i32, i32* %nb_err2, align 4
  %cmp119 = icmp ne i32 %50, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end115
  %51 = phi i1 [ true, %if.end115 ], [ %cmp119, %lor.rhs ]
  %lor.ext = zext i1 %51 to i32
  store i32 %lor.ext, i32* %retval, align 4
  br label %return

return:                                           ; preds = %lor.end, %if.then
  %52 = load i32, i32* %retval, align 4
  ret i32 %52
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_print(%struct.mbedtls_md_info_t* noundef %md_info, i8* noundef %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %md_info.addr = alloca %struct.mbedtls_md_info_t*, align 8
  %filename.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %sum = alloca [64 x i8], align 16
  store %struct.mbedtls_md_info_t* %md_info, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %1 = load i8*, i8** %filename.addr, align 8
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %sum, i64 0, i64 0
  %call = call i32 @generic_wrapper(%struct.mbedtls_md_info_t* noundef %0, i8* noundef %1, i8* noundef %arraydecay) #5
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %call1 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %3) #5
  %conv = zext i8 %call1 to i32
  %cmp2 = icmp slt i32 %2, %conv
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* %sum, i64 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv4 = zext i8 %5 to i32
  %call5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv4) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %7 = load i8*, i8** %filename.addr, align 8
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef %7) #5
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

declare dso_local void @mbedtls_md_free(%struct.mbedtls_md_context_t* noundef) #1

declare dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #4

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

declare dso_local zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_wrapper(%struct.mbedtls_md_info_t* noundef %md_info, i8* noundef %filename, i8* noundef %sum) #0 {
entry:
  %md_info.addr = alloca %struct.mbedtls_md_info_t*, align 8
  %filename.addr = alloca i8*, align 8
  %sum.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_md_info_t* %md_info, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %sum, i8** %sum.addr, align 8
  %0 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %1 = load i8*, i8** %filename.addr, align 8
  %2 = load i8*, i8** %sum.addr, align 8
  %call = call i32 @mbedtls_md_file(%struct.mbedtls_md_info_t* noundef %0, i8* noundef %1, i8* noundef %2) #5
  store i32 %call, i32* %ret, align 4
  %3 = load i32, i32* %ret, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i8*, i8** %filename.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* noundef %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %ret, align 4
  %cmp2 = icmp eq i32 %6, 2
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = load i8*, i8** %filename.addr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i8* noundef %8) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %9 = load i32, i32* %ret, align 4
  ret i32 %9
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #4

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

declare dso_local i32 @mbedtls_md_file(%struct.mbedtls_md_info_t* noundef, i8* noundef, i8* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #8 = { nobuiltin nounwind "no-builtins" }

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
