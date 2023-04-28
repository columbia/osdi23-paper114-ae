; ModuleID = 'x509/req_app.c'
source_filename = "x509/req_app.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.mbedtls_x509_csr = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data, %struct.mbedtls_pk_context, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, i32, i8* }
%struct.mbedtls_asn1_named_data = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data*, i8 }
%struct.mbedtls_pk_context = type { %struct.mbedtls_pk_info_t*, i8* }
%struct.mbedtls_pk_info_t = type opaque
%struct.mbedtls_asn1_buf = type { i32, i64, i8* }

@.str = private unnamed_addr constant [99 x i8] c"\0A usage: req_app param=<>...\0A\0A acceptable parameters:\0A    filename=%%s         default: cert.req\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"cert.req\00", align 1
@opt = dso_local global %struct.options zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"\0A  . Loading the CSR ...\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [55 x i8] c" failed\0A  !  mbedtls_x509_csr_parse_file returned %d\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c" ok\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"  . CSR information    ...\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"      \00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c" failed\0A  !  mbedtls_x509_csr_info returned %d\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ret = alloca i32, align 4
  %exit_code = alloca i32, align 4
  %buf = alloca [100000 x i8], align 16
  %csr = alloca %struct.mbedtls_x509_csr, align 8
  %i = alloca i32, align 4
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %ret, align 4
  store i32 1, i32* %exit_code, align 4
  call void @mbedtls_x509_csr_init(%struct.mbedtls_x509_csr* noundef %csr) #4
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %usage

usage:                                            ; preds = %if.else, %if.then4, %if.then
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0)) #4
  br label %exit

if.end:                                           ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8**, i8*** %argv.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  store i8* %5, i8** %p, align 8
  %6 = load i8*, i8** %p, align 8
  %call2 = call i8* @strchr(i8* noundef %6, i32 noundef 61) #5
  store i8* %call2, i8** %q, align 8
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %for.body
  br label %usage

if.end5:                                          ; preds = %for.body
  %7 = load i8*, i8** %q, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %q, align 8
  store i8 0, i8* %7, align 1
  %8 = load i8*, i8** %p, align 8
  %call6 = call i32 @strcmp(i8* noundef %8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #5
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end5
  %9 = load i8*, i8** %q, align 8
  store i8* %9, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  br label %if.end9

if.else:                                          ; preds = %if.end5
  br label %usage

if.end9:                                          ; preds = %if.then8
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0)) #4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call11 = call i32 @fflush(%struct._IO_FILE* noundef %11) #4
  %12 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  %call12 = call i32 @mbedtls_x509_csr_parse_file(%struct.mbedtls_x509_csr* noundef %csr, i8* noundef %12) #4
  store i32 %call12, i32* %ret, align 4
  %13 = load i32, i32* %ret, align 4
  %cmp13 = icmp ne i32 %13, 0
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %for.end
  %14 = load i32, i32* %ret, align 4
  %call15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 noundef %14) #4
  call void @mbedtls_x509_csr_free(%struct.mbedtls_x509_csr* noundef %csr) #4
  br label %exit

if.end16:                                         ; preds = %for.end
  %call17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)) #4
  %call18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0)) #4
  %arraydecay = getelementptr inbounds [100000 x i8], [100000 x i8]* %buf, i64 0, i64 0
  %call19 = call i32 @mbedtls_x509_csr_info(i8* noundef %arraydecay, i64 noundef 99999, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), %struct.mbedtls_x509_csr* noundef %csr) #4
  store i32 %call19, i32* %ret, align 4
  %15 = load i32, i32* %ret, align 4
  %cmp20 = icmp eq i32 %15, -1
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end16
  %16 = load i32, i32* %ret, align 4
  %call22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i32 noundef %16) #4
  call void @mbedtls_x509_csr_free(%struct.mbedtls_x509_csr* noundef %csr) #4
  br label %exit

if.end23:                                         ; preds = %if.end16
  %arraydecay24 = getelementptr inbounds [100000 x i8], [100000 x i8]* %buf, i64 0, i64 0
  %call25 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef %arraydecay24) #4
  store i32 0, i32* %exit_code, align 4
  br label %exit

exit:                                             ; preds = %if.end23, %if.then21, %if.then14, %usage
  call void @mbedtls_x509_csr_free(%struct.mbedtls_x509_csr* noundef %csr) #4
  %17 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %17) #6
  unreachable
}

declare dso_local void @mbedtls_x509_csr_init(%struct.mbedtls_x509_csr* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

declare dso_local i32 @mbedtls_x509_csr_parse_file(%struct.mbedtls_x509_csr* noundef, i8* noundef) #1

declare dso_local void @mbedtls_x509_csr_free(%struct.mbedtls_x509_csr* noundef) #1

declare dso_local i32 @mbedtls_x509_csr_info(i8* noundef, i64 noundef, i8* noundef, %struct.mbedtls_x509_csr* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #6 = { nobuiltin noreturn nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
