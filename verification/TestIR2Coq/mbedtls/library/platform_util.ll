; ModuleID = 'platform_util.c'
source_filename = "platform_util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@memset_func = internal constant i8* (i8*, i32, i64)* @memset, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_platform_zeroize(i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i64, i64* %len.addr, align 8
  %cmp = icmp ugt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %1 = load volatile i8* (i8*, i32, i64)*, i8* (i8*, i32, i64)** @memset_func, align 8
  %2 = load i8*, i8** %buf.addr, align 8
  %3 = load i64, i64* %len.addr, align 8
  %call = call i8* %1(i8* noundef %2, i32 noundef 0, i64 noundef %3) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tm* @mbedtls_platform_gmtime_r(i64* noundef %tt, %struct.tm* noundef %tm_buf) #0 {
entry:
  %tt.addr = alloca i64*, align 8
  %tm_buf.addr = alloca %struct.tm*, align 8
  store i64* %tt, i64** %tt.addr, align 8
  store %struct.tm* %tm_buf, %struct.tm** %tm_buf.addr, align 8
  %0 = load i64*, i64** %tt.addr, align 8
  %1 = load %struct.tm*, %struct.tm** %tm_buf.addr, align 8
  %call = call %struct.tm* @gmtime_r(i64* noundef %0, %struct.tm* noundef %1) #3
  ret %struct.tm* %call
}

; Function Attrs: nounwind
declare dso_local %struct.tm* @gmtime_r(i64* noundef, %struct.tm* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin "no-builtins" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
