; ModuleID = 'onefile.c'
source_filename = "onefile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %Data = alloca i8*, align 8
  %Size = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call %struct._IO_FILE* @fopen(i8* noundef %2, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #3
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp1 = icmp eq %struct._IO_FILE* %3, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 2, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call4 = call i32 @fseek(%struct._IO_FILE* noundef %4, i64 noundef 0, i32 noundef 2) #3
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end3
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call7 = call i32 @fclose(%struct._IO_FILE* noundef %5) #3
  store i32 2, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end3
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call9 = call i64 @ftell(%struct._IO_FILE* noundef %6) #3
  store i64 %call9, i64* %Size, align 8
  %7 = load i64, i64* %Size, align 8
  %cmp10 = icmp eq i64 %7, -1
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call12 = call i32 @fclose(%struct._IO_FILE* noundef %8) #3
  store i32 2, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call14 = call i32 @fseek(%struct._IO_FILE* noundef %9, i64 noundef 0, i32 noundef 0) #3
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end13
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call17 = call i32 @fclose(%struct._IO_FILE* noundef %10) #3
  store i32 2, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end13
  %11 = load i64, i64* %Size, align 8
  %call19 = call noalias i8* @malloc(i64 noundef %11) #4
  store i8* %call19, i8** %Data, align 8
  %12 = load i8*, i8** %Data, align 8
  %cmp20 = icmp eq i8* %12, null
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end18
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call22 = call i32 @fclose(%struct._IO_FILE* noundef %13) #3
  store i32 2, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end18
  %14 = load i8*, i8** %Data, align 8
  %15 = load i64, i64* %Size, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call24 = call i64 @fread(i8* noundef %14, i64 noundef %15, i64 noundef 1, %struct._IO_FILE* noundef %16) #3
  %cmp25 = icmp ne i64 %call24, 1
  br i1 %cmp25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end23
  %17 = load i8*, i8** %Data, align 8
  call void @free(i8* noundef %17) #4
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call27 = call i32 @fclose(%struct._IO_FILE* noundef %18) #3
  store i32 2, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end23
  %19 = load i8*, i8** %Data, align 8
  %20 = load i64, i64* %Size, align 8
  %call29 = call i32 @LLVMFuzzerTestOneInput(i8* noundef %19, i64 noundef %20) #3
  %21 = load i8*, i8** %Data, align 8
  call void @free(i8* noundef %21) #4
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call30 = call i32 @fclose(%struct._IO_FILE* noundef %22) #3
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end28, %if.then26, %if.then21, %if.then16, %if.then11, %if.then6, %if.then2, %if.then
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

declare dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

declare dso_local i64 @ftell(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

declare dso_local i32 @LLVMFuzzerTestOneInput(i8* noundef, i64 noundef) #1

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
