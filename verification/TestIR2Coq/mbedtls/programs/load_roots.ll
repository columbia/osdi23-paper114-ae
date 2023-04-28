; ModuleID = 'x509/load_roots.c'
source_filename = "x509/load_roots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i8**, i32, i32 }
%struct.mbedtls_x509_crt = type { i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data, %struct.mbedtls_x509_time, %struct.mbedtls_x509_time, %struct.mbedtls_asn1_buf, %struct.mbedtls_pk_context, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence, i32, i32, i32, i32, %struct.mbedtls_asn1_sequence, i8, %struct.mbedtls_asn1_buf, i32, i32, i8*, %struct.mbedtls_x509_crt* }
%struct.mbedtls_asn1_named_data = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data*, i8 }
%struct.mbedtls_x509_time = type { i32, i32, i32, i32, i32, i32 }
%struct.mbedtls_pk_context = type { %struct.mbedtls_pk_info_t*, i8* }
%struct.mbedtls_pk_info_t = type opaque
%struct.mbedtls_asn1_sequence = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_sequence* }
%struct.mbedtls_asn1_buf = type { i32, i64, i8* }
%struct.mbedtls_timing_hr_time = type { [32 x i8] }

@.str = private unnamed_addr constant [19 x i8] c"\0A%s: -0x%04x (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [226 x i8] c"\0A usage: load_roots param=<>... [--] FILE...\0A\0A acceptable parameters:\0A    iterations=%%d        Iteration count (not including cache priming); default: 1\0A    prime=%%d             Prime the disk read cache? Default: 1 (yes)\0A\0A\00", align 1
@opt = dso_local global %struct.options zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"iterations\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"prime\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Unknown option: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Missing list of certificate files to parse\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Parsing %u certificates\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"\0A%u iterations -> %lu ms\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_certificates(i8** noundef %filenames) #0 {
entry:
  %filenames.addr = alloca i8**, align 8
  %cas = alloca %struct.mbedtls_x509_crt, align 8
  %ret = alloca i32, align 4
  %cur = alloca i8**, align 8
  %error_message = alloca [200 x i8], align 16
  store i8** %filenames, i8*** %filenames.addr, align 8
  store i32 0, i32* %ret, align 4
  call void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef %cas) #4
  %0 = load i8**, i8*** %filenames.addr, align 8
  store i8** %0, i8*** %cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8**, i8*** %cur, align 8
  %2 = load i8*, i8** %1, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8**, i8*** %cur, align 8
  %4 = load i8*, i8** %3, align 8
  %call = call i32 @mbedtls_x509_crt_parse_file(%struct.mbedtls_x509_crt* noundef %cas, i8* noundef %4) #4
  store i32 %call, i32* %ret, align 4
  %5 = load i32, i32* %ret, align 4
  %cmp1 = icmp ne i32 %5, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %ret, align 4
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %error_message, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %6, i8* noundef %arraydecay, i64 noundef 200) #4
  %7 = load i8**, i8*** %cur, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = load i32, i32* %ret, align 4
  %sub = sub nsw i32 0, %9
  %arraydecay2 = getelementptr inbounds [200 x i8], [200 x i8]* %error_message, i64 0, i64 0
  %call3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* noundef %8, i32 noundef %sub, i8* noundef %arraydecay2) #4
  br label %exit

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i8**, i8*** %cur, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %10, i32 1
  store i8** %incdec.ptr, i8*** %cur, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  br label %exit

exit:                                             ; preds = %for.end, %if.then
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %cas) #4
  %11 = load i32, i32* %ret, align 4
  %cmp4 = icmp eq i32 %11, 0
  %conv = zext i1 %cmp4 to i32
  ret i32 %conv
}

declare dso_local void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef) #1

declare dso_local i32 @mbedtls_x509_crt_parse_file(%struct.mbedtls_x509_crt* noundef, i8* noundef) #1

declare dso_local void @mbedtls_strerror(i32 noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %exit_code = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %timer = alloca %struct.mbedtls_timing_hr_time, align 1
  %ms = alloca i64, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %exit_code, align 4
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sle i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([226 x i8], [226 x i8]* @.str.1, i64 0, i64 0)) #4
  br label %exit

if.end:                                           ; preds = %entry
  store i8** null, i8*** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc51, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp ult i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end53

for.body:                                         ; preds = %for.cond
  %3 = load i8**, i8*** %argv.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  store i8* %5, i8** %p, align 8
  store i8* null, i8** %q, align 8
  %6 = load i8*, i8** %p, align 8
  %call2 = call i32 @strcmp(i8* noundef %6, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #5
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %for.body
  br label %for.end53

if.end5:                                          ; preds = %for.body
  %7 = load i8*, i8** %p, align 8
  %call6 = call i8* @strchr(i8* noundef %7, i32 noundef 61) #5
  store i8* %call6, i8** %q, align 8
  %cmp7 = icmp eq i8* %call6, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  br label %for.end53

if.end9:                                          ; preds = %if.end5
  %8 = load i8*, i8** %q, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %q, align 8
  store i8 0, i8* %8, align 1
  store i32 0, i32* %j, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %if.end9
  %9 = load i8*, i8** %p, align 8
  %10 = load i32, i32* %j, align 4
  %idx.ext = zext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  %11 = load i8*, i8** %q, align 8
  %cmp11 = icmp ult i8* %add.ptr, %11
  br i1 %cmp11, label %for.body12, label %for.end

for.body12:                                       ; preds = %for.cond10
  %12 = load i8**, i8*** %argv.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom13 = zext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds i8*, i8** %12, i64 %idxprom13
  %14 = load i8*, i8** %arrayidx14, align 8
  %15 = load i32, i32* %j, align 4
  %idxprom15 = zext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %idxprom15
  %16 = load i8, i8* %arrayidx16, align 1
  %conv = sext i8 %16 to i32
  %cmp17 = icmp sge i32 %conv, 65
  br i1 %cmp17, label %land.lhs.true, label %if.end33

land.lhs.true:                                    ; preds = %for.body12
  %17 = load i8**, i8*** %argv.addr, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom19 = zext i32 %18 to i64
  %arrayidx20 = getelementptr inbounds i8*, i8** %17, i64 %idxprom19
  %19 = load i8*, i8** %arrayidx20, align 8
  %20 = load i32, i32* %j, align 4
  %idxprom21 = zext i32 %20 to i64
  %arrayidx22 = getelementptr inbounds i8, i8* %19, i64 %idxprom21
  %21 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %21 to i32
  %cmp24 = icmp sle i32 %conv23, 90
  br i1 %cmp24, label %if.then26, label %if.end33

if.then26:                                        ; preds = %land.lhs.true
  %22 = load i8**, i8*** %argv.addr, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom27 = zext i32 %23 to i64
  %arrayidx28 = getelementptr inbounds i8*, i8** %22, i64 %idxprom27
  %24 = load i8*, i8** %arrayidx28, align 8
  %25 = load i32, i32* %j, align 4
  %idxprom29 = zext i32 %25 to i64
  %arrayidx30 = getelementptr inbounds i8, i8* %24, i64 %idxprom29
  %26 = load i8, i8* %arrayidx30, align 1
  %conv31 = sext i8 %26 to i32
  %or = or i32 %conv31, 32
  %conv32 = trunc i32 %or to i8
  store i8 %conv32, i8* %arrayidx30, align 1
  br label %if.end33

if.end33:                                         ; preds = %if.then26, %land.lhs.true, %for.body12
  br label %for.inc

for.inc:                                          ; preds = %if.end33
  %27 = load i32, i32* %j, align 4
  %inc = add i32 %27, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond10, !llvm.loop !6

for.end:                                          ; preds = %for.cond10
  %28 = load i8*, i8** %p, align 8
  %call34 = call i32 @strcmp(i8* noundef %28, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)) #5
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then37, label %if.else

if.then37:                                        ; preds = %for.end
  %29 = load i8*, i8** %q, align 8
  %call38 = call i32 @atoi(i8* noundef %29) #5
  store i32 %call38, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  br label %if.end50

if.else:                                          ; preds = %for.end
  %30 = load i8*, i8** %p, align 8
  %call39 = call i32 @strcmp(i8* noundef %30, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #5
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %if.then42, label %if.else46

if.then42:                                        ; preds = %if.else
  %31 = load i8*, i8** %q, align 8
  %call43 = call i32 @atoi(i8* noundef %31) #5
  %cmp44 = icmp ne i32 %call43, 0
  %conv45 = zext i1 %cmp44 to i32
  store i32 %conv45, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  br label %if.end49

if.else46:                                        ; preds = %if.else
  %32 = load i8*, i8** %p, align 8
  %call47 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* noundef %32) #4
  %call48 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([226 x i8], [226 x i8]* @.str.1, i64 0, i64 0)) #4
  br label %exit

if.end49:                                         ; preds = %if.then42
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then37
  br label %for.inc51

for.inc51:                                        ; preds = %if.end50
  %33 = load i32, i32* %i, align 4
  %inc52 = add i32 %33, 1
  store i32 %inc52, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end53:                                        ; preds = %if.then8, %if.then4, %for.cond
  %34 = load i8**, i8*** %argv.addr, align 8
  %35 = load i32, i32* %i, align 4
  %idx.ext54 = zext i32 %35 to i64
  %add.ptr55 = getelementptr inbounds i8*, i8** %34, i64 %idx.ext54
  store i8** %add.ptr55, i8*** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  %36 = load i8**, i8*** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  %37 = load i8*, i8** %36, align 8
  %cmp56 = icmp eq i8* %37, null
  br i1 %cmp56, label %if.then58, label %if.end60

if.then58:                                        ; preds = %for.end53
  %call59 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0)) #4
  br label %exit

if.end60:                                         ; preds = %for.end53
  %38 = load i32, i32* %argc.addr, align 4
  %39 = load i32, i32* %i, align 4
  %sub = sub i32 %38, %39
  %call61 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef %sub) #4
  %40 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 4
  %tobool = icmp ne i32 %40, 0
  br i1 %tobool, label %if.then62, label %if.end68

if.then62:                                        ; preds = %if.end60
  %41 = load i8**, i8*** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  %call63 = call i32 @read_certificates(i8** noundef %41) #4
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.end66, label %if.then65

if.then65:                                        ; preds = %if.then62
  br label %exit

if.end66:                                         ; preds = %if.then62
  %call67 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #4
  br label %if.end68

if.end68:                                         ; preds = %if.end66, %if.end60
  %call69 = call i64 @mbedtls_timing_get_timer(%struct.mbedtls_timing_hr_time* noundef %timer, i32 noundef 1) #4
  store i32 1, i32* %i, align 4
  br label %for.cond70

for.cond70:                                       ; preds = %for.inc79, %if.end68
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  %cmp71 = icmp ule i32 %42, %43
  br i1 %cmp71, label %for.body73, label %for.end81

for.body73:                                       ; preds = %for.cond70
  %44 = load i8**, i8*** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  %call74 = call i32 @read_certificates(i8** noundef %44) #4
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.end77, label %if.then76

if.then76:                                        ; preds = %for.body73
  br label %exit

if.end77:                                         ; preds = %for.body73
  %call78 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #4
  br label %for.inc79

for.inc79:                                        ; preds = %if.end77
  %45 = load i32, i32* %i, align 4
  %inc80 = add i32 %45, 1
  store i32 %inc80, i32* %i, align 4
  br label %for.cond70, !llvm.loop !8

for.end81:                                        ; preds = %for.cond70
  %call82 = call i64 @mbedtls_timing_get_timer(%struct.mbedtls_timing_hr_time* noundef %timer, i32 noundef 0) #4
  store i64 %call82, i64* %ms, align 8
  %46 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  %47 = load i64, i64* %ms, align 8
  %call83 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef %46, i64 noundef %47) #4
  store i32 0, i32* %exit_code, align 4
  br label %exit

exit:                                             ; preds = %for.end81, %if.then76, %if.then65, %if.then58, %if.else46, %if.then
  %48 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %48) #6
  unreachable
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #2

declare dso_local i64 @mbedtls_timing_get_timer(%struct.mbedtls_timing_hr_time* noundef, i32 noundef) #1

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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
