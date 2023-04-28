; ModuleID = 'common.c'
source_filename = "common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.fuzzBufferOffset = type { i8*, i64, i64 }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [40 x i8] c"Warning: fuzzing without constant time\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dummy_init() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0)) #3
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dummy_send(i8* noundef %ctx, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i64, i64* %len.addr, align 8
  %cmp = icmp ugt i64 %2, 2147483647
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %len.addr, align 8
  %conv = trunc i64 %3 to i32
  store i32 %conv, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuzz_recv(i8* noundef %ctx, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %biomemfuzz = alloca %struct.fuzzBufferOffset*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.fuzzBufferOffset*
  store %struct.fuzzBufferOffset* %1, %struct.fuzzBufferOffset** %biomemfuzz, align 8
  %2 = load %struct.fuzzBufferOffset*, %struct.fuzzBufferOffset** %biomemfuzz, align 8
  %Offset = getelementptr inbounds %struct.fuzzBufferOffset, %struct.fuzzBufferOffset* %2, i32 0, i32 2
  %3 = load i64, i64* %Offset, align 8
  %4 = load %struct.fuzzBufferOffset*, %struct.fuzzBufferOffset** %biomemfuzz, align 8
  %Size = getelementptr inbounds %struct.fuzzBufferOffset, %struct.fuzzBufferOffset* %4, i32 0, i32 1
  %5 = load i64, i64* %Size, align 8
  %cmp = icmp eq i64 %3, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i64, i64* %len.addr, align 8
  %cmp1 = icmp ugt i64 %6, 2147483647
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %7 = load i64, i64* %len.addr, align 8
  %8 = load %struct.fuzzBufferOffset*, %struct.fuzzBufferOffset** %biomemfuzz, align 8
  %Offset4 = getelementptr inbounds %struct.fuzzBufferOffset, %struct.fuzzBufferOffset* %8, i32 0, i32 2
  %9 = load i64, i64* %Offset4, align 8
  %add = add i64 %7, %9
  %10 = load %struct.fuzzBufferOffset*, %struct.fuzzBufferOffset** %biomemfuzz, align 8
  %Size5 = getelementptr inbounds %struct.fuzzBufferOffset, %struct.fuzzBufferOffset* %10, i32 0, i32 1
  %11 = load i64, i64* %Size5, align 8
  %cmp6 = icmp ugt i64 %add, %11
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end3
  %12 = load %struct.fuzzBufferOffset*, %struct.fuzzBufferOffset** %biomemfuzz, align 8
  %Size8 = getelementptr inbounds %struct.fuzzBufferOffset, %struct.fuzzBufferOffset* %12, i32 0, i32 1
  %13 = load i64, i64* %Size8, align 8
  %14 = load %struct.fuzzBufferOffset*, %struct.fuzzBufferOffset** %biomemfuzz, align 8
  %Offset9 = getelementptr inbounds %struct.fuzzBufferOffset, %struct.fuzzBufferOffset* %14, i32 0, i32 2
  %15 = load i64, i64* %Offset9, align 8
  %sub = sub i64 %13, %15
  store i64 %sub, i64* %len.addr, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end3
  %16 = load i8*, i8** %buf.addr, align 8
  %17 = load %struct.fuzzBufferOffset*, %struct.fuzzBufferOffset** %biomemfuzz, align 8
  %Data = getelementptr inbounds %struct.fuzzBufferOffset, %struct.fuzzBufferOffset* %17, i32 0, i32 0
  %18 = load i8*, i8** %Data, align 8
  %19 = load %struct.fuzzBufferOffset*, %struct.fuzzBufferOffset** %biomemfuzz, align 8
  %Offset11 = getelementptr inbounds %struct.fuzzBufferOffset, %struct.fuzzBufferOffset* %19, i32 0, i32 2
  %20 = load i64, i64* %Offset11, align 8
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %20
  %21 = load i64, i64* %len.addr, align 8
  %call = call i8* @memcpy(i8* noundef %16, i8* noundef %add.ptr, i64 noundef %21) #4
  %22 = load i64, i64* %len.addr, align 8
  %23 = load %struct.fuzzBufferOffset*, %struct.fuzzBufferOffset** %biomemfuzz, align 8
  %Offset12 = getelementptr inbounds %struct.fuzzBufferOffset, %struct.fuzzBufferOffset* %23, i32 0, i32 2
  %24 = load i64, i64* %Offset12, align 8
  %add13 = add i64 %24, %22
  store i64 %add13, i64* %Offset12, align 8
  %25 = load i64, i64* %len.addr, align 8
  %conv = trunc i64 %25 to i32
  store i32 %conv, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.then2, %if.then
  %26 = load i32, i32* %retval, align 4
  ret i32 %26
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dummy_random(i8* noundef %p_rng, i8* noundef %output, i64 noundef %output_len) #0 {
entry:
  %p_rng.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %output_len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %i = alloca i64, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_len, i64* %output_len.addr, align 8
  %0 = load i8*, i8** %p_rng.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %p_rng.addr, align 8
  %2 = load i8*, i8** %output.addr, align 8
  %3 = load i64, i64* %output_len.addr, align 8
  %call = call i32 @mbedtls_ctr_drbg_random(i8* noundef %1, i8* noundef %2, i64 noundef %3) #3
  store i32 %call, i32* %ret, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i64, i64* %i, align 8
  %5 = load i64, i64* %output_len.addr, align 8
  %cmp1 = icmp ult i64 %4, %5
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @rand() #4
  %conv = trunc i32 %call2 to i8
  %6 = load i8*, i8** %output.addr, align 8
  %7 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %7
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i64, i64* %i, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %ret, align 4
  ret i32 %9
}

declare dso_local i32 @mbedtls_ctr_drbg_random(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dummy_entropy(i8* noundef %data, i8* noundef %output, i64 noundef %len) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @rand() #4
  %conv = trunc i32 %call to i8
  %3 = load i8*, i8** %output.addr, align 8
  %4 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %4
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuzz_recv_timeout(i8* noundef %ctx, i8* noundef %buf, i64 noundef %len, i32 noundef %timeout) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %timeout.addr = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 %timeout, i32* %timeout.addr, align 4
  %0 = load i32, i32* %timeout.addr, align 4
  %1 = load i8*, i8** %ctx.addr, align 8
  %2 = load i8*, i8** %buf.addr, align 8
  %3 = load i64, i64* %len.addr, align 8
  %call = call i32 @fuzz_recv(i8* noundef %1, i8* noundef %2, i64 noundef %3) #3
  ret i32 %call
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin "no-builtins" }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
