; ModuleID = 'pkey/pk_verify.c'
source_filename = "pkey/pk_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.mbedtls_pk_context = type { %struct.mbedtls_pk_info_t*, i8* }
%struct.mbedtls_pk_info_t = type opaque
%struct.mbedtls_md_info_t = type opaque

@.str = private unnamed_addr constant [48 x i8] c"usage: mbedtls_pk_verify <key_file> <filename>\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"\0A  . Reading public key from '%s'\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [62 x i8] c" failed\0A  ! mbedtls_pk_parse_public_keyfile returned -0x%04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s.sig\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"\0A  ! Could not open %s\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"\0A  . Verifying the SHA-256 signature\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c" failed\0A  ! Could not open or read %s\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c" failed\0A  ! mbedtls_pk_verify returned -0x%04x\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"\0A  . OK (the signature is valid)\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"  !  Last error was: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %ret = alloca i32, align 4
  %exit_code = alloca i32, align 4
  %i = alloca i64, align 8
  %pk = alloca %struct.mbedtls_pk_context, align 8
  %hash = alloca [32 x i8], align 16
  %buf = alloca [1024 x i8], align 16
  %filename = alloca [512 x i8], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %ret, align 4
  store i32 1, i32* %exit_code, align 4
  call void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef %pk) #4
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0)) #4
  br label %exit

if.end:                                           ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* noundef %2) #4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* noundef %3) #4
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %4, i64 1
  %5 = load i8*, i8** %arrayidx3, align 8
  %call4 = call i32 @mbedtls_pk_parse_public_keyfile(%struct.mbedtls_pk_context* noundef %pk, i8* noundef %5) #4
  store i32 %call4, i32* %ret, align 4
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %6 = load i32, i32* %ret, align 4
  %sub = sub nsw i32 0, %6
  %call7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 noundef %sub) #4
  br label %exit

if.end8:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i64 0, i64 0
  %7 = load i8**, i8*** %argv.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %7, i64 2
  %8 = load i8*, i8** %arrayidx9, align 8
  %call10 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay, i64 noundef 512, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef %8) #5
  %arraydecay11 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i64 0, i64 0
  %call12 = call %struct._IO_FILE* @fopen(i8* noundef %arraydecay11, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #4
  store %struct._IO_FILE* %call12, %struct._IO_FILE** %f, align 8
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null
  br i1 %cmp13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end8
  %arraydecay15 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i64 0, i64 0
  %call16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* noundef %arraydecay15) #4
  br label %exit

if.end17:                                         ; preds = %if.end8
  %arraydecay18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call19 = call i64 @fread(i8* noundef %arraydecay18, i64 noundef 1, i64 noundef 1024, %struct._IO_FILE* noundef %9) #4
  store i64 %call19, i64* %i, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call20 = call i32 @fclose(%struct._IO_FILE* noundef %10) #4
  %call21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0)) #4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call22 = call i32 @fflush(%struct._IO_FILE* noundef %11) #4
  %call23 = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef 4) #4
  %12 = load i8**, i8*** %argv.addr, align 8
  %arrayidx24 = getelementptr inbounds i8*, i8** %12, i64 2
  %13 = load i8*, i8** %arrayidx24, align 8
  %arraydecay25 = getelementptr inbounds [32 x i8], [32 x i8]* %hash, i64 0, i64 0
  %call26 = call i32 @mbedtls_md_file(%struct.mbedtls_md_info_t* noundef %call23, i8* noundef %13, i8* noundef %arraydecay25) #4
  store i32 %call26, i32* %ret, align 4
  %cmp27 = icmp ne i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end17
  %14 = load i8**, i8*** %argv.addr, align 8
  %arrayidx29 = getelementptr inbounds i8*, i8** %14, i64 2
  %15 = load i8*, i8** %arrayidx29, align 8
  %call30 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* noundef %15) #4
  br label %exit

if.end31:                                         ; preds = %if.end17
  %arraydecay32 = getelementptr inbounds [32 x i8], [32 x i8]* %hash, i64 0, i64 0
  %arraydecay33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %16 = load i64, i64* %i, align 8
  %call34 = call i32 @mbedtls_pk_verify(%struct.mbedtls_pk_context* noundef %pk, i32 noundef 4, i8* noundef %arraydecay32, i64 noundef 0, i8* noundef %arraydecay33, i64 noundef %16) #4
  store i32 %call34, i32* %ret, align 4
  %cmp35 = icmp ne i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end31
  %17 = load i32, i32* %ret, align 4
  %sub37 = sub nsw i32 0, %17
  %call38 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i32 noundef %sub37) #4
  br label %exit

if.end39:                                         ; preds = %if.end31
  %call40 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0)) #4
  store i32 0, i32* %exit_code, align 4
  br label %exit

exit:                                             ; preds = %if.end39, %if.then36, %if.then28, %if.then14, %if.then6, %if.then
  call void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef %pk) #4
  %18 = load i32, i32* %exit_code, align 4
  %cmp41 = icmp ne i32 %18, 0
  br i1 %cmp41, label %if.then42, label %if.end46

if.then42:                                        ; preds = %exit
  %19 = load i32, i32* %ret, align 4
  %arraydecay43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %19, i8* noundef %arraydecay43, i64 noundef 1024) #4
  %arraydecay44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call45 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i8* noundef %arraydecay44) #4
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %exit
  %20 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %20) #6
  unreachable
}

declare dso_local void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

declare dso_local i32 @mbedtls_pk_parse_public_keyfile(%struct.mbedtls_pk_context* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #2

declare dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

declare dso_local i32 @mbedtls_md_file(%struct.mbedtls_md_info_t* noundef, i8* noundef, i8* noundef) #1

declare dso_local %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef) #1

declare dso_local i32 @mbedtls_pk_verify(%struct.mbedtls_pk_context* noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) #1

declare dso_local void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef) #1

declare dso_local void @mbedtls_strerror(i32 noundef, i8* noundef, i64 noundef) #1

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
