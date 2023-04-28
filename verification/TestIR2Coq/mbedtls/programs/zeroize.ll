; ModuleID = 'test/zeroize.c'
source_filename = "test/zeroize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [52 x i8] c"Zeroize is a simple program to assist with testing\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"the mbedtls_platform_zeroize() function by using the\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"debugger. This program takes a file as input and\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"prints the first %d characters. Usage:\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"       zeroize <FILE>\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"This program takes exactly 1 argument\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Could not open file '%s'\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"The file is empty!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usage() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0)) #3
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0)) #3
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0)) #3
  %call3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 noundef 1024) #3
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0)) #3
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %exit_code = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %buf = alloca [1024 x i8], align 16
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %c = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %exit_code, align 4
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  store i8* %arraydecay, i8** %p, align 8
  %0 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1024
  store i8* %add.ptr, i8** %end, align 8
  %1 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0)) #3
  call void @usage() #3
  %2 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %2) #4
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 1
  %4 = load i8*, i8** %arrayidx, align 8
  %call1 = call %struct._IO_FILE* @fopen(i8* noundef %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #3
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp2 = icmp eq %struct._IO_FILE* %5, null
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %6 = load i8**, i8*** %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %6, i64 1
  %7 = load i8*, i8** %arrayidx4, align 8
  %call5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef %7) #3
  %8 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %8) #4
  unreachable

if.end6:                                          ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end6
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call7 = call i32 @fgetc(%struct._IO_FILE* noundef %9) #3
  store i32 %call7, i32* %c, align 4
  %cmp8 = icmp ne i32 %call7, -1
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %10 = load i8*, i8** %p, align 8
  %11 = load i8*, i8** %end, align 8
  %add.ptr9 = getelementptr inbounds i8, i8* %11, i64 -1
  %cmp10 = icmp ult i8* %10, %add.ptr9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %cmp10, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load i32, i32* %c, align 4
  %conv = trunc i32 %13 to i8
  %14 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %conv, i8* %14, align 1
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %land.end
  %15 = load i8*, i8** %p, align 8
  store i8 0, i8* %15, align 1
  %16 = load i8*, i8** %p, align 8
  %arraydecay11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %sub.ptr.lhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp12 = icmp ne i64 %sub.ptr.sub, 0
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %while.end
  %arraydecay15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef %arraydecay15) #3
  store i32 0, i32* %exit_code, align 4
  br label %if.end18

if.else:                                          ; preds = %while.end
  %call17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0)) #3
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then14
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call19 = call i32 @fclose(%struct._IO_FILE* noundef %17) #3
  %arraydecay20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay20, i64 noundef 1024) #3
  %18 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %18) #4
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

declare dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @fgetc(%struct._IO_FILE* noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #1

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
