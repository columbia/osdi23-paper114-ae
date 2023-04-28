; ModuleID = 'random/gen_entropy.c'
source_filename = "random/gen_entropy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.mbedtls_entropy_context = type { i32, %struct.mbedtls_sha512_context, i32, [20 x %struct.mbedtls_entropy_source_state] }
%struct.mbedtls_sha512_context = type { [2 x i64], [8 x i64], [128 x i8], i32 }
%struct.mbedtls_entropy_source_state = type { i32 (i8*, i8*, i64, i64*)*, i8*, i64, i64, i32 }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [29 x i8] c"usage: %s <output filename>\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"wb+\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to open '%s' for writing.\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"  failed\0A  !  mbedtls_entropy_func returned -%04X\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"Generating %ldkb of data in file '%s'... %04.1f%% done\0D\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %ret = alloca i32, align 4
  %exit_code = alloca i32, align 4
  %entropy = alloca %struct.mbedtls_entropy_context, align 8
  %buf = alloca [64 x i8], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %ret, align 4
  store i32 1, i32* %exit_code, align 4
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 0
  %3 = load i8*, i8** %arrayidx, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* noundef %3) #3
  %4 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %4) #4
  unreachable

if.end:                                           ; preds = %entry
  %5 = load i8**, i8*** %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %5, i64 1
  %6 = load i8*, i8** %arrayidx1, align 8
  %call2 = call %struct._IO_FILE* @fopen(i8* noundef %6, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #3
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %f, align 8
  %cmp3 = icmp eq %struct._IO_FILE* %call2, null
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %7 = load i8**, i8*** %argv.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %7, i64 1
  %8 = load i8*, i8** %arrayidx5, align 8
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* noundef %8) #3
  %9 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %9) #4
  unreachable

if.end7:                                          ; preds = %if.end
  call void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef %entropy) #3
  store i32 0, i32* %i, align 4
  store i32 768, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %k, align 4
  %cmp8 = icmp slt i32 %10, %11
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = bitcast %struct.mbedtls_entropy_context* %entropy to i8*
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %call9 = call i32 @mbedtls_entropy_func(i8* noundef %12, i8* noundef %arraydecay, i64 noundef 64) #3
  store i32 %call9, i32* %ret, align 4
  %13 = load i32, i32* %ret, align 4
  %cmp10 = icmp ne i32 %13, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %for.body
  %14 = load i32, i32* %ret, align 4
  %call12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 noundef %14) #3
  br label %cleanup

if.end13:                                         ; preds = %for.body
  %arraydecay14 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call15 = call i64 @fwrite(i8* noundef %arraydecay14, i64 noundef 1, i64 noundef 64, %struct._IO_FILE* noundef %15) #3
  %16 = load i32, i32* %k, align 4
  %conv = sext i32 %16 to i64
  %mul = mul i64 64, %conv
  %div = udiv i64 %mul, 1024
  %17 = load i8**, i8*** %argv.addr, align 8
  %arrayidx16 = getelementptr inbounds i8*, i8** %17, i64 1
  %18 = load i8*, i8** %arrayidx16, align 8
  %19 = load i32, i32* %i, align 4
  %add = add nsw i32 %19, 1
  %conv17 = sitofp i32 %add to float
  %mul18 = fmul float 1.000000e+02, %conv17
  %20 = load i32, i32* %k, align 4
  %conv19 = sitofp i32 %20 to float
  %div20 = fdiv float %mul18, %conv19
  %conv21 = fpext float %div20 to double
  %call22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i64 noundef %div, i8* noundef %18, double noundef %conv21) #3
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call23 = call i32 @fflush(%struct._IO_FILE* noundef %21) #3
  br label %for.inc

for.inc:                                          ; preds = %if.end13
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %exit_code, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then11
  %call24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #3
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call25 = call i32 @fclose(%struct._IO_FILE* noundef %23) #3
  call void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef %entropy) #3
  %24 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %24) #4
  unreachable
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

declare dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef) #1

declare dso_local i32 @mbedtls_entropy_func(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

declare dso_local void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin "no-builtins" }
attributes #4 = { nobuiltin noreturn nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
