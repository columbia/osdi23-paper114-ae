; ModuleID = 'pkey/rsa_verify.c'
source_filename = "pkey/rsa_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.mbedtls_rsa_context = type { i32, i64, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, i32, i32 }
%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.mbedtls_md_info_t = type opaque

@.str = private unnamed_addr constant [30 x i8] c"usage: rsa_verify <filename>\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"\0A  . Reading public key from rsa_pub.txt\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"rsa_pub.txt\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.4 = private unnamed_addr constant [73 x i8] c" failed\0A  ! Could not open rsa_pub.txt\0A  ! Please run rsa_genkey first\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c" failed\0A  ! mbedtls_mpi_read_file returned %d\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%s.sig\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"\0A  ! Could not open %s\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"\0A  ! Invalid RSA signature format\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"\0A  . Verifying the RSA/SHA-256 signature\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c" failed\0A  ! Could not open or read %s\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c" failed\0A  ! mbedtls_rsa_pkcs1_verify returned -0x%0x\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"\0A  . OK (the signature is valid)\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %ret = alloca i32, align 4
  %c = alloca i32, align 4
  %exit_code = alloca i32, align 4
  %i = alloca i64, align 8
  %rsa = alloca %struct.mbedtls_rsa_context, align 8
  %hash = alloca [32 x i8], align 16
  %buf = alloca [1024 x i8], align 16
  %filename = alloca [512 x i8], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %ret, align 4
  store i32 1, i32* %exit_code, align 4
  call void @mbedtls_rsa_init(%struct.mbedtls_rsa_context* noundef %rsa) #4
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0)) #4
  br label %exit

if.end:                                           ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0)) #4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* noundef %1) #4
  %call3 = call %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #4
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %f, align 8
  %cmp4 = icmp eq %struct._IO_FILE* %call3, null
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0)) #4
  br label %exit

if.end7:                                          ; preds = %if.end
  %private_N = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %rsa, i32 0, i32 2
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call8 = call i32 @mbedtls_mpi_read_file(%struct.mbedtls_mpi* noundef %private_N, i32 noundef 16, %struct._IO_FILE* noundef %2) #4
  store i32 %call8, i32* %ret, align 4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end7
  %private_E = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %rsa, i32 0, i32 3
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call10 = call i32 @mbedtls_mpi_read_file(%struct.mbedtls_mpi* noundef %private_E, i32 noundef 16, %struct._IO_FILE* noundef %3) #4
  store i32 %call10, i32* %ret, align 4
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %lor.lhs.false, %if.end7
  %4 = load i32, i32* %ret, align 4
  %call13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 noundef %4) #4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call14 = call i32 @fclose(%struct._IO_FILE* noundef %5) #4
  br label %exit

if.end15:                                         ; preds = %lor.lhs.false
  %private_N16 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %rsa, i32 0, i32 2
  %call17 = call i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef %private_N16) #4
  %add = add i64 %call17, 7
  %shr = lshr i64 %add, 3
  %private_len = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %rsa, i32 0, i32 1
  store i64 %shr, i64* %private_len, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call18 = call i32 @fclose(%struct._IO_FILE* noundef %6) #4
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i64 0, i64 0
  %7 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 1
  %8 = load i8*, i8** %arrayidx, align 8
  %call19 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay, i64 noundef 512, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* noundef %8) #5
  %arraydecay20 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i64 0, i64 0
  %call21 = call %struct._IO_FILE* @fopen(i8* noundef %arraydecay20, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #4
  store %struct._IO_FILE* %call21, %struct._IO_FILE** %f, align 8
  %cmp22 = icmp eq %struct._IO_FILE* %call21, null
  br i1 %cmp22, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end15
  %arraydecay24 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i64 0, i64 0
  %call25 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* noundef %arraydecay24) #4
  br label %exit

if.end26:                                         ; preds = %if.end15
  store i64 0, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end26
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32* noundef %c) #4
  %cmp28 = icmp sgt i32 %call27, 0
  br i1 %cmp28, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %10 = load i64, i64* %i, align 8
  %cmp29 = icmp ult i64 %10, 1024
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %cmp29, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load i32, i32* %c, align 4
  %conv = trunc i32 %12 to i8
  %13 = load i64, i64* %i, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %i, align 8
  %arrayidx30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 %13
  store i8 %conv, i8* %arrayidx30, align 1
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %land.end
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call31 = call i32 @fclose(%struct._IO_FILE* noundef %14) #4
  %15 = load i64, i64* %i, align 8
  %private_len32 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %rsa, i32 0, i32 1
  %16 = load i64, i64* %private_len32, align 8
  %cmp33 = icmp ne i64 %15, %16
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %while.end
  %call36 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0)) #4
  br label %exit

if.end37:                                         ; preds = %while.end
  %call38 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0)) #4
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call39 = call i32 @fflush(%struct._IO_FILE* noundef %17) #4
  %call40 = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef 4) #4
  %18 = load i8**, i8*** %argv.addr, align 8
  %arrayidx41 = getelementptr inbounds i8*, i8** %18, i64 1
  %19 = load i8*, i8** %arrayidx41, align 8
  %arraydecay42 = getelementptr inbounds [32 x i8], [32 x i8]* %hash, i64 0, i64 0
  %call43 = call i32 @mbedtls_md_file(%struct.mbedtls_md_info_t* noundef %call40, i8* noundef %19, i8* noundef %arraydecay42) #4
  store i32 %call43, i32* %ret, align 4
  %cmp44 = icmp ne i32 %call43, 0
  br i1 %cmp44, label %if.then46, label %if.end49

if.then46:                                        ; preds = %if.end37
  %20 = load i8**, i8*** %argv.addr, align 8
  %arrayidx47 = getelementptr inbounds i8*, i8** %20, i64 1
  %21 = load i8*, i8** %arrayidx47, align 8
  %call48 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i8* noundef %21) #4
  br label %exit

if.end49:                                         ; preds = %if.end37
  %arraydecay50 = getelementptr inbounds [32 x i8], [32 x i8]* %hash, i64 0, i64 0
  %arraydecay51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call52 = call i32 @mbedtls_rsa_pkcs1_verify(%struct.mbedtls_rsa_context* noundef %rsa, i32 noundef 4, i32 noundef 32, i8* noundef %arraydecay50, i8* noundef %arraydecay51) #4
  store i32 %call52, i32* %ret, align 4
  %cmp53 = icmp ne i32 %call52, 0
  br i1 %cmp53, label %if.then55, label %if.end57

if.then55:                                        ; preds = %if.end49
  %22 = load i32, i32* %ret, align 4
  %sub = sub nsw i32 0, %22
  %call56 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0), i32 noundef %sub) #4
  br label %exit

if.end57:                                         ; preds = %if.end49
  %call58 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0)) #4
  store i32 0, i32* %exit_code, align 4
  br label %exit

exit:                                             ; preds = %if.end57, %if.then55, %if.then46, %if.then35, %if.then23, %if.then12, %if.then5, %if.then
  call void @mbedtls_rsa_free(%struct.mbedtls_rsa_context* noundef %rsa) #4
  %23 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %23) #6
  unreachable
}

declare dso_local void @mbedtls_rsa_init(%struct.mbedtls_rsa_context* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

declare dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_mpi_read_file(%struct.mbedtls_mpi* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

declare dso_local i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #2

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @mbedtls_md_file(%struct.mbedtls_md_info_t* noundef, i8* noundef, i8* noundef) #1

declare dso_local %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef) #1

declare dso_local i32 @mbedtls_rsa_pkcs1_verify(%struct.mbedtls_rsa_context* noundef, i32 noundef, i32 noundef, i8* noundef, i8* noundef) #1

declare dso_local void @mbedtls_rsa_free(%struct.mbedtls_rsa_context* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin noreturn nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
