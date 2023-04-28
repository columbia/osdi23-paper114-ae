; ModuleID = 'platform.c'
source_filename = "platform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_platform_context = type { i8 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_platform_setup(%struct.mbedtls_platform_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_platform_context*, align 8
  store %struct.mbedtls_platform_context* %ctx, %struct.mbedtls_platform_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_platform_context*, %struct.mbedtls_platform_context** %ctx.addr, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_platform_teardown(%struct.mbedtls_platform_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_platform_context*, align 8
  store %struct.mbedtls_platform_context* %ctx, %struct.mbedtls_platform_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_platform_context*, %struct.mbedtls_platform_context** %ctx.addr, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
