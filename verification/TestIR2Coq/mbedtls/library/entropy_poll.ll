; ModuleID = 'entropy_poll.c'
source_filename = "entropy_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_platform_entropy_poll(i8* noundef %data, i8* noundef %output, i64 noundef %len, i64* noundef %olen) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %olen.addr = alloca i64*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %read_len = alloca i64, align 8
  %ret = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %data.addr, align 8
  %1 = load i8*, i8** %output.addr, align 8
  %2 = load i64, i64* %len.addr, align 8
  %call = call i32 @getrandom_wrapper(i8* noundef %1, i64 noundef %2, i32 noundef 0) #4
  store i32 %call, i32* %ret, align 4
  %3 = load i32, i32* %ret, align 4
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %ret, align 4
  %conv = sext i32 %4 to i64
  %5 = load i64*, i64** %olen.addr, align 8
  store i64 %conv, i64* %5, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #5
  %6 = load i32, i32* %call1, align 4
  %cmp2 = icmp ne i32 %6, 38
  br i1 %cmp2, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  store i32 -60, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end
  %7 = load i64*, i64** %olen.addr, align 8
  store i64 0, i64* %7, align 8
  %call6 = call %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #4
  store %struct._IO_FILE* %call6, %struct._IO_FILE** %file, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %cmp7 = icmp eq %struct._IO_FILE* %8, null
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end5
  store i32 -60, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end5
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  call void @setbuf(%struct._IO_FILE* noundef %9, i8* noundef null) #6
  %10 = load i8*, i8** %output.addr, align 8
  %11 = load i64, i64* %len.addr, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call11 = call i64 @fread(i8* noundef %10, i64 noundef 1, i64 noundef %11, %struct._IO_FILE* noundef %12) #4
  store i64 %call11, i64* %read_len, align 8
  %13 = load i64, i64* %read_len, align 8
  %14 = load i64, i64* %len.addr, align 8
  %cmp12 = icmp ne i64 %13, %14
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end10
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call15 = call i32 @fclose(%struct._IO_FILE* noundef %15) #4
  store i32 -60, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call17 = call i32 @fclose(%struct._IO_FILE* noundef %16) #4
  %17 = load i64, i64* %len.addr, align 8
  %18 = load i64*, i64** %olen.addr, align 8
  store i64 %17, i64* %18, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.then14, %if.then9, %if.then4, %if.then
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getrandom_wrapper(i8* noundef %buf, i64 noundef %buflen, i32 noundef %flags) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %buflen.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %buflen, i64* %buflen.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i8*, i8** %buf.addr, align 8
  %1 = load i64, i64* %buflen.addr, align 8
  %2 = load i32, i32* %flags.addr, align 4
  %call = call i64 (i64, ...) @syscall(i64 noundef 318, i8* noundef %0, i64 noundef %1, i32 noundef %2) #6
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #1

declare dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare dso_local void @setbuf(%struct._IO_FILE* noundef, i8* noundef) #3

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare dso_local i64 @syscall(i64 noundef, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
