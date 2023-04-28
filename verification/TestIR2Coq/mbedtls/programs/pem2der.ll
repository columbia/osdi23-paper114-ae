; ModuleID = 'util/pem2der.c'
source_filename = "util/pem2der.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [11 x i8] c"-----BEGIN\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"-----END\00", align 1
@.str.2 = private unnamed_addr constant [142 x i8] c"\0A usage: pem2der param=<>...\0A\0A acceptable parameters:\0A    filename=%%s         default: file.pem\0A    output_file=%%s      default: file.der\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"file.pem\00", align 1
@opt = dso_local global %struct.options zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"file.der\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"output_file\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"\0A  . Loading the PEM file ...\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [42 x i8] c" failed\0A  !  load_file returned %d - %s\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c" ok\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"  . Converting from PEM to DER ...\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c" failed\0A  !  convert_pem_to_der %d - %s\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"  . Writing the DER file ...\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c" failed\0A  !  write_file returned %d - %s\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"wb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @convert_pem_to_der(i8* noundef %input, i64 noundef %ilen, i8* noundef %output, i64* noundef %olen) #0 {
entry:
  %retval = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %ilen.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %olen.addr = alloca i64*, align 8
  %ret = alloca i32, align 4
  %s1 = alloca i8*, align 8
  %s2 = alloca i8*, align 8
  %end = alloca i8*, align 8
  %len = alloca i64, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %ilen, i64* %ilen.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  %0 = load i8*, i8** %input.addr, align 8
  %1 = load i64, i64* %ilen.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %1
  store i8* %add.ptr, i8** %end, align 8
  store i64 0, i64* %len, align 8
  %2 = load i8*, i8** %input.addr, align 8
  %call = call i8* @strstr(i8* noundef %2, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)) #5
  store i8* %call, i8** %s1, align 8
  %3 = load i8*, i8** %s1, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %input.addr, align 8
  %call1 = call i8* @strstr(i8* noundef %4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)) #5
  store i8* %call1, i8** %s2, align 8
  %5 = load i8*, i8** %s2, align 8
  %cmp2 = icmp eq i8* %5, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %6 = load i8*, i8** %s1, align 8
  %add.ptr5 = getelementptr inbounds i8, i8* %6, i64 10
  store i8* %add.ptr5, i8** %s1, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end4
  %7 = load i8*, i8** %s1, align 8
  %8 = load i8*, i8** %end, align 8
  %cmp6 = icmp ult i8* %7, %8
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %9 = load i8*, i8** %s1, align 8
  %10 = load i8, i8* %9, align 1
  %conv = zext i8 %10 to i32
  %cmp7 = icmp ne i32 %conv, 45
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %cmp7, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load i8*, i8** %s1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %s1, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %land.end
  br label %while.cond9

while.cond9:                                      ; preds = %while.body17, %while.end
  %13 = load i8*, i8** %s1, align 8
  %14 = load i8*, i8** %end, align 8
  %cmp10 = icmp ult i8* %13, %14
  br i1 %cmp10, label %land.rhs12, label %land.end16

land.rhs12:                                       ; preds = %while.cond9
  %15 = load i8*, i8** %s1, align 8
  %16 = load i8, i8* %15, align 1
  %conv13 = zext i8 %16 to i32
  %cmp14 = icmp eq i32 %conv13, 45
  br label %land.end16

land.end16:                                       ; preds = %land.rhs12, %while.cond9
  %17 = phi i1 [ false, %while.cond9 ], [ %cmp14, %land.rhs12 ]
  br i1 %17, label %while.body17, label %while.end19

while.body17:                                     ; preds = %land.end16
  %18 = load i8*, i8** %s1, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr18, i8** %s1, align 8
  br label %while.cond9, !llvm.loop !6

while.end19:                                      ; preds = %land.end16
  %19 = load i8*, i8** %s1, align 8
  %20 = load i8, i8* %19, align 1
  %conv20 = zext i8 %20 to i32
  %cmp21 = icmp eq i32 %conv20, 13
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %while.end19
  %21 = load i8*, i8** %s1, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr24, i8** %s1, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %while.end19
  %22 = load i8*, i8** %s1, align 8
  %23 = load i8, i8* %22, align 1
  %conv26 = zext i8 %23 to i32
  %cmp27 = icmp eq i32 %conv26, 10
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end25
  %24 = load i8*, i8** %s1, align 8
  %incdec.ptr30 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr30, i8** %s1, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end25
  %25 = load i8*, i8** %s2, align 8
  %26 = load i8*, i8** %s1, align 8
  %cmp32 = icmp ule i8* %25, %26
  br i1 %cmp32, label %if.then36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end31
  %27 = load i8*, i8** %s2, align 8
  %28 = load i8*, i8** %end, align 8
  %cmp34 = icmp ugt i8* %27, %28
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %lor.lhs.false, %if.end31
  store i32 -1, i32* %retval, align 4
  br label %return

if.end37:                                         ; preds = %lor.lhs.false
  %29 = load i8*, i8** %s1, align 8
  %30 = load i8*, i8** %s2, align 8
  %31 = load i8*, i8** %s1, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %30 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %31 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call38 = call i32 @mbedtls_base64_decode(i8* noundef null, i64 noundef 0, i64* noundef %len, i8* noundef %29, i64 noundef %sub.ptr.sub) #6
  store i32 %call38, i32* %ret, align 4
  %32 = load i32, i32* %ret, align 4
  %cmp39 = icmp eq i32 %32, -44
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end37
  %33 = load i32, i32* %ret, align 4
  store i32 %33, i32* %retval, align 4
  br label %return

if.end42:                                         ; preds = %if.end37
  %34 = load i64, i64* %len, align 8
  %35 = load i64*, i64** %olen.addr, align 8
  %36 = load i64, i64* %35, align 8
  %cmp43 = icmp ugt i64 %34, %36
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end42
  store i32 -1, i32* %retval, align 4
  br label %return

if.end46:                                         ; preds = %if.end42
  %37 = load i8*, i8** %output.addr, align 8
  %38 = load i64, i64* %len, align 8
  %39 = load i8*, i8** %s1, align 8
  %40 = load i8*, i8** %s2, align 8
  %41 = load i8*, i8** %s1, align 8
  %sub.ptr.lhs.cast47 = ptrtoint i8* %40 to i64
  %sub.ptr.rhs.cast48 = ptrtoint i8* %41 to i64
  %sub.ptr.sub49 = sub i64 %sub.ptr.lhs.cast47, %sub.ptr.rhs.cast48
  %call50 = call i32 @mbedtls_base64_decode(i8* noundef %37, i64 noundef %38, i64* noundef %len, i8* noundef %39, i64 noundef %sub.ptr.sub49) #6
  store i32 %call50, i32* %ret, align 4
  %cmp51 = icmp ne i32 %call50, 0
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end46
  %42 = load i32, i32* %ret, align 4
  store i32 %42, i32* %retval, align 4
  br label %return

if.end54:                                         ; preds = %if.end46
  %43 = load i64, i64* %len, align 8
  %44 = load i64*, i64** %olen.addr, align 8
  store i64 %43, i64* %44, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end54, %if.then53, %if.then45, %if.then41, %if.then36, %if.then3, %if.then
  %45 = load i32, i32* %retval, align 4
  ret i32 %45
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strstr(i8* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_base64_decode(i8* noundef, i64 noundef, i64* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ret = alloca i32, align 4
  %exit_code = alloca i32, align 4
  %pem_buffer = alloca i8*, align 8
  %der_buffer = alloca [4096 x i8], align 16
  %buf = alloca [1024 x i8], align 16
  %pem_size = alloca i64, align 8
  %der_size = alloca i64, align 8
  %i = alloca i32, align 4
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %ret, align 4
  store i32 1, i32* %exit_code, align 4
  store i8* null, i8** %pem_buffer, align 8
  store i64 4096, i64* %der_size, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 1024) #7
  %arraydecay1 = getelementptr inbounds [4096 x i8], [4096 x i8]* %der_buffer, i64 0, i64 0
  %call2 = call i8* @memset(i8* noundef %arraydecay1, i32 noundef 0, i64 noundef 4096) #7
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %usage

usage:                                            ; preds = %if.else15, %if.then7, %if.then
  %call3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([142 x i8], [142 x i8]* @.str.2, i64 0, i64 0)) #6
  br label %exit

if.end:                                           ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %argc.addr, align 4
  %cmp4 = icmp slt i32 %1, %2
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8**, i8*** %argv.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  store i8* %5, i8** %p, align 8
  %6 = load i8*, i8** %p, align 8
  %call5 = call i8* @strchr(i8* noundef %6, i32 noundef 61) #5
  store i8* %call5, i8** %q, align 8
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %for.body
  br label %usage

if.end8:                                          ; preds = %for.body
  %7 = load i8*, i8** %q, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %q, align 8
  store i8 0, i8* %7, align 1
  %8 = load i8*, i8** %p, align 8
  %call9 = call i32 @strcmp(i8* noundef %8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)) #5
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end8
  %9 = load i8*, i8** %q, align 8
  store i8* %9, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  br label %if.end17

if.else:                                          ; preds = %if.end8
  %10 = load i8*, i8** %p, align 8
  %call12 = call i32 @strcmp(i8* noundef %10, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0)) #5
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else
  %11 = load i8*, i8** %q, align 8
  store i8* %11, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  br label %if.end16

if.else15:                                        ; preds = %if.else
  br label %usage

if.end16:                                         ; preds = %if.then14
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then11
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %call18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0)) #6
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call19 = call i32 @fflush(%struct._IO_FILE* noundef %13) #6
  %14 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  %call20 = call i32 @load_file(i8* noundef %14, i8** noundef %pem_buffer, i64* noundef %pem_size) #6
  store i32 %call20, i32* %ret, align 4
  %15 = load i32, i32* %ret, align 4
  %cmp21 = icmp ne i32 %15, 0
  br i1 %cmp21, label %if.then22, label %if.end26

if.then22:                                        ; preds = %for.end
  %16 = load i32, i32* %ret, align 4
  %arraydecay23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %16, i8* noundef %arraydecay23, i64 noundef 1024) #6
  %17 = load i32, i32* %ret, align 4
  %arraydecay24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call25 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 noundef %17, i8* noundef %arraydecay24) #6
  br label %exit

if.end26:                                         ; preds = %for.end
  %call27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)) #6
  %call28 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0)) #6
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call29 = call i32 @fflush(%struct._IO_FILE* noundef %18) #6
  %19 = load i8*, i8** %pem_buffer, align 8
  %20 = load i64, i64* %pem_size, align 8
  %arraydecay30 = getelementptr inbounds [4096 x i8], [4096 x i8]* %der_buffer, i64 0, i64 0
  %call31 = call i32 @convert_pem_to_der(i8* noundef %19, i64 noundef %20, i8* noundef %arraydecay30, i64* noundef %der_size) #6
  store i32 %call31, i32* %ret, align 4
  %cmp32 = icmp ne i32 %call31, 0
  br i1 %cmp32, label %if.then33, label %if.end37

if.then33:                                        ; preds = %if.end26
  %21 = load i32, i32* %ret, align 4
  %arraydecay34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %21, i8* noundef %arraydecay34, i64 noundef 1024) #6
  %22 = load i32, i32* %ret, align 4
  %arraydecay35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call36 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i32 noundef %22, i8* noundef %arraydecay35) #6
  br label %exit

if.end37:                                         ; preds = %if.end26
  %call38 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)) #6
  %call39 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0)) #6
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call40 = call i32 @fflush(%struct._IO_FILE* noundef %23) #6
  %24 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  %arraydecay41 = getelementptr inbounds [4096 x i8], [4096 x i8]* %der_buffer, i64 0, i64 0
  %25 = load i64, i64* %der_size, align 8
  %call42 = call i32 @write_file(i8* noundef %24, i8* noundef %arraydecay41, i64 noundef %25) #6
  store i32 %call42, i32* %ret, align 4
  %26 = load i32, i32* %ret, align 4
  %cmp43 = icmp ne i32 %26, 0
  br i1 %cmp43, label %if.then44, label %if.end48

if.then44:                                        ; preds = %if.end37
  %27 = load i32, i32* %ret, align 4
  %arraydecay45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %27, i8* noundef %arraydecay45, i64 noundef 1024) #6
  %28 = load i32, i32* %ret, align 4
  %arraydecay46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call47 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i32 noundef %28, i8* noundef %arraydecay46) #6
  br label %exit

if.end48:                                         ; preds = %if.end37
  %call49 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)) #6
  store i32 0, i32* %exit_code, align 4
  br label %exit

exit:                                             ; preds = %if.end48, %if.then44, %if.then33, %if.then22, %usage
  %29 = load i8*, i8** %pem_buffer, align 8
  call void @free(i8* noundef %29) #7
  %30 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %30) #8
  unreachable
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #3

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_file(i8* noundef %path, i8** noundef %buf, i64* noundef %n) #0 {
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
  %0 = load i8*, i8** %path.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0)) #6
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call1 = call i32 @fseek(%struct._IO_FILE* noundef %1, i64 noundef 0, i32 noundef 2) #6
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call2 = call i64 @ftell(%struct._IO_FILE* noundef %2) #6
  store i64 %call2, i64* %size, align 8
  %cmp3 = icmp eq i64 %call2, -1
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call5 = call i32 @fclose(%struct._IO_FILE* noundef %3) #6
  store i32 -1, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call7 = call i32 @fseek(%struct._IO_FILE* noundef %4, i64 noundef 0, i32 noundef 0) #6
  %5 = load i64, i64* %size, align 8
  %6 = load i64*, i64** %n.addr, align 8
  store i64 %5, i64* %6, align 8
  %7 = load i64*, i64** %n.addr, align 8
  %8 = load i64, i64* %7, align 8
  %add = add i64 %8, 1
  %cmp8 = icmp eq i64 %add, 0
  br i1 %cmp8, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %9 = load i64*, i64** %n.addr, align 8
  %10 = load i64, i64* %9, align 8
  %add9 = add i64 %10, 1
  %call10 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %add9) #7
  %11 = load i8**, i8*** %buf.addr, align 8
  store i8* %call10, i8** %11, align 8
  %cmp11 = icmp eq i8* %call10, null
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call13 = call i32 @fclose(%struct._IO_FILE* noundef %12) #6
  store i32 -1, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %lor.lhs.false
  %13 = load i8**, i8*** %buf.addr, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = load i64*, i64** %n.addr, align 8
  %16 = load i64, i64* %15, align 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call15 = call i64 @fread(i8* noundef %14, i64 noundef 1, i64 noundef %16, %struct._IO_FILE* noundef %17) #6
  %18 = load i64*, i64** %n.addr, align 8
  %19 = load i64, i64* %18, align 8
  %cmp16 = icmp ne i64 %call15, %19
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end14
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call18 = call i32 @fclose(%struct._IO_FILE* noundef %20) #6
  %21 = load i8**, i8*** %buf.addr, align 8
  %22 = load i8*, i8** %21, align 8
  call void @free(i8* noundef %22) #7
  %23 = load i8**, i8*** %buf.addr, align 8
  store i8* null, i8** %23, align 8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call20 = call i32 @fclose(%struct._IO_FILE* noundef %24) #6
  %25 = load i8**, i8*** %buf.addr, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load i64*, i64** %n.addr, align 8
  %28 = load i64, i64* %27, align 8
  %arrayidx = getelementptr inbounds i8, i8* %26, i64 %28
  store i8 0, i8* %arrayidx, align 1
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end19, %if.then17, %if.then12, %if.then4, %if.then
  %29 = load i32, i32* %retval, align 4
  ret i32 %29
}

declare dso_local void @mbedtls_strerror(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_file(i8* noundef %path, i8* noundef %buf, i64 noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %f = alloca %struct._IO_FILE*, align 8
  store i8* %path, i8** %path.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i8*, i8** %path.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0)) #6
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i64, i64* %n.addr, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call1 = call i64 @fwrite(i8* noundef %1, i64 noundef 1, i64 noundef %2, %struct._IO_FILE* noundef %3) #6
  %4 = load i64, i64* %n.addr, align 8
  %cmp2 = icmp ne i64 %call1, %4
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call4 = call i32 @fclose(%struct._IO_FILE* noundef %5) #6
  store i32 -1, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call6 = call i32 @fclose(%struct._IO_FILE* noundef %6) #6
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

declare dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #2

declare dso_local i64 @ftell(%struct._IO_FILE* noundef) #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #3

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
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
