; ModuleID = 'pkey/rsa_verify_pss.c'
source_filename = "pkey/rsa_verify_pss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.mbedtls_pk_context = type { %struct.mbedtls_pk_info_t*, i8* }
%struct.mbedtls_pk_info_t = type opaque
%struct.mbedtls_rsa_context = type { i32, i64, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, i32, i32 }
%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.mbedtls_md_info_t = type opaque

@.str = private unnamed_addr constant [45 x i8] c"usage: rsa_verify_pss <key_file> <filename>\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"\0A  . Reading public key from '%s'\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c" failed\0A  ! Could not read key from '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"  ! mbedtls_pk_parse_public_keyfile returned %d\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c" failed\0A  ! Key is not an RSA key\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c" failed\0A  ! Invalid padding\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%s.sig\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"\0A  ! Could not open %s\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"\0A  . Verifying the RSA/SHA-256 signature\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c" failed\0A  ! Could not open or read %s\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c" failed\0A  ! mbedtls_pk_verify returned %d\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"\0A  . OK (the signature is valid)\0A\0A\00", align 1

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
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0)) #4
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
  br i1 %cmp5, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end
  %6 = load i8**, i8*** %argv.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %6, i64 1
  %7 = load i8*, i8** %arrayidx7, align 8
  %call8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* noundef %7) #4
  %8 = load i32, i32* %ret, align 4
  %call9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 noundef %8) #4
  br label %exit

if.end10:                                         ; preds = %if.end
  %call11 = call i32 @mbedtls_pk_can_do(%struct.mbedtls_pk_context* noundef %pk, i32 noundef 1) #4
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end10
  %call13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0)) #4
  br label %exit

if.end14:                                         ; preds = %if.end10
  %9 = bitcast %struct.mbedtls_pk_context* %pk to { %struct.mbedtls_pk_info_t*, i8* }*
  %10 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %9, i32 0, i32 0
  %11 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %10, align 8
  %12 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %9, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %call15 = call %struct.mbedtls_rsa_context* @mbedtls_pk_rsa(%struct.mbedtls_pk_info_t* %11, i8* %13) #4
  %call16 = call i32 @mbedtls_rsa_set_padding(%struct.mbedtls_rsa_context* noundef %call15, i32 noundef 1, i32 noundef 4) #4
  store i32 %call16, i32* %ret, align 4
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end14
  %call19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0)) #4
  br label %exit

if.end20:                                         ; preds = %if.end14
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i64 0, i64 0
  %14 = load i8**, i8*** %argv.addr, align 8
  %arrayidx21 = getelementptr inbounds i8*, i8** %14, i64 2
  %15 = load i8*, i8** %arrayidx21, align 8
  %call22 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay, i64 noundef 512, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* noundef %15) #5
  %arraydecay23 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i64 0, i64 0
  %call24 = call %struct._IO_FILE* @fopen(i8* noundef %arraydecay23, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #4
  store %struct._IO_FILE* %call24, %struct._IO_FILE** %f, align 8
  %cmp25 = icmp eq %struct._IO_FILE* %call24, null
  br i1 %cmp25, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end20
  %arraydecay27 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i64 0, i64 0
  %call28 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* noundef %arraydecay27) #4
  br label %exit

if.end29:                                         ; preds = %if.end20
  %arraydecay30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call31 = call i64 @fread(i8* noundef %arraydecay30, i64 noundef 1, i64 noundef 1024, %struct._IO_FILE* noundef %16) #4
  store i64 %call31, i64* %i, align 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call32 = call i32 @fclose(%struct._IO_FILE* noundef %17) #4
  %call33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0)) #4
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call34 = call i32 @fflush(%struct._IO_FILE* noundef %18) #4
  %call35 = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef 4) #4
  %19 = load i8**, i8*** %argv.addr, align 8
  %arrayidx36 = getelementptr inbounds i8*, i8** %19, i64 2
  %20 = load i8*, i8** %arrayidx36, align 8
  %arraydecay37 = getelementptr inbounds [32 x i8], [32 x i8]* %hash, i64 0, i64 0
  %call38 = call i32 @mbedtls_md_file(%struct.mbedtls_md_info_t* noundef %call35, i8* noundef %20, i8* noundef %arraydecay37) #4
  store i32 %call38, i32* %ret, align 4
  %cmp39 = icmp ne i32 %call38, 0
  br i1 %cmp39, label %if.then40, label %if.end43

if.then40:                                        ; preds = %if.end29
  %21 = load i8**, i8*** %argv.addr, align 8
  %arrayidx41 = getelementptr inbounds i8*, i8** %21, i64 2
  %22 = load i8*, i8** %arrayidx41, align 8
  %call42 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i8* noundef %22) #4
  br label %exit

if.end43:                                         ; preds = %if.end29
  %arraydecay44 = getelementptr inbounds [32 x i8], [32 x i8]* %hash, i64 0, i64 0
  %arraydecay45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %23 = load i64, i64* %i, align 8
  %call46 = call i32 @mbedtls_pk_verify(%struct.mbedtls_pk_context* noundef %pk, i32 noundef 4, i8* noundef %arraydecay44, i64 noundef 0, i8* noundef %arraydecay45, i64 noundef %23) #4
  store i32 %call46, i32* %ret, align 4
  %cmp47 = icmp ne i32 %call46, 0
  br i1 %cmp47, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.end43
  %24 = load i32, i32* %ret, align 4
  %call49 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i32 noundef %24) #4
  br label %exit

if.end50:                                         ; preds = %if.end43
  %call51 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0)) #4
  store i32 0, i32* %exit_code, align 4
  br label %exit

exit:                                             ; preds = %if.end50, %if.then48, %if.then40, %if.then26, %if.then18, %if.then12, %if.then6, %if.then
  call void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef %pk) #4
  %25 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %25) #6
  unreachable
}

declare dso_local void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

declare dso_local i32 @mbedtls_pk_parse_public_keyfile(%struct.mbedtls_pk_context* noundef, i8* noundef) #1

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
  %call = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %pk) #4
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

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #2

declare dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

declare dso_local i32 @mbedtls_md_file(%struct.mbedtls_md_info_t* noundef, i8* noundef, i8* noundef) #1

declare dso_local %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef) #1

declare dso_local i32 @mbedtls_pk_verify(%struct.mbedtls_pk_context* noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) #1

declare dso_local void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

declare dso_local i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef) #1

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
