; ModuleID = 'util/strerror.c'
source_filename = "util/strerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [107 x i8] c"\0A usage: strerror <errorcode>\0A\0A where <errorcode> can be a decimal or hexadecimal (starts with 0x or -0x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Last error was: -0x%04x - %s\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %val = alloca i64, align 8
  %end = alloca i8*, align 8
  %error_buf = alloca [200 x i8], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 1
  %1 = load i8*, i8** %arrayidx, align 8
  store i8* %1, i8** %end, align 8
  %2 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %2, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str, i64 0, i64 0)) #4
  call void @exit(i32 noundef 0) #5
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %3, i64 1
  %4 = load i8*, i8** %arrayidx1, align 8
  %call2 = call i64 @strtol(i8* noundef %4, i8** noundef %end, i32 noundef 10) #6
  store i64 %call2, i64* %val, align 8
  %5 = load i8*, i8** %end, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp3 = icmp ne i32 %conv, 0
  br i1 %cmp3, label %if.then5, label %if.end14

if.then5:                                         ; preds = %if.end
  %7 = load i8**, i8*** %argv.addr, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %7, i64 1
  %8 = load i8*, i8** %arrayidx6, align 8
  %call7 = call i64 @strtol(i8* noundef %8, i8** noundef %end, i32 noundef 16) #6
  store i64 %call7, i64* %val, align 8
  %9 = load i8*, i8** %end, align 8
  %10 = load i8, i8* %9, align 1
  %conv8 = sext i8 %10 to i32
  %cmp9 = icmp ne i32 %conv8, 0
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then5
  %call12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str, i64 0, i64 0)) #4
  ret i32 0

if.end13:                                         ; preds = %if.then5
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  %11 = load i64, i64* %val, align 8
  %cmp15 = icmp sgt i64 %11, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  %12 = load i64, i64* %val, align 8
  %sub = sub nsw i64 0, %12
  store i64 %sub, i64* %val, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end14
  %13 = load i64, i64* %val, align 8
  %cmp19 = icmp ne i64 %13, 0
  br i1 %cmp19, label %if.then21, label %if.end27

if.then21:                                        ; preds = %if.end18
  %14 = load i64, i64* %val, align 8
  %conv22 = trunc i64 %14 to i32
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %error_buf, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %conv22, i8* noundef %arraydecay, i64 noundef 200) #4
  %15 = load i64, i64* %val, align 8
  %sub23 = sub nsw i64 0, %15
  %conv24 = trunc i64 %sub23 to i32
  %arraydecay25 = getelementptr inbounds [200 x i8], [200 x i8]* %error_buf, i64 0, i64 0
  %call26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 noundef %conv24, i8* noundef %arraydecay25) #4
  br label %if.end27

if.end27:                                         ; preds = %if.then21, %if.end18
  %16 = load i64, i64* %val, align 8
  %conv28 = trunc i64 %16 to i32
  call void @exit(i32 noundef %conv28) #5
  unreachable
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: nounwind
declare dso_local i64 @strtol(i8* noundef, i8** noundef, i32 noundef) #3

declare dso_local void @mbedtls_strerror(i32 noundef, i8* noundef, i64 noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
