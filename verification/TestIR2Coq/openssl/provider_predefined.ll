; ModuleID = 'crypto/provider_predefined.c'
source_filename = "crypto/provider_predefined.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.OSSL_PROVIDER_INFO = type { i8*, i8*, i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)*, %struct.stack_st_INFOPAIR*, i8 }
%struct.ossl_core_handle_st = type opaque
%struct.ossl_dispatch_st = type { i32, void ()* }
%struct.stack_st_INFOPAIR = type opaque

@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@ossl_predefined_providers = local_unnamed_addr constant [4 x %struct.OSSL_PROVIDER_INFO] [%struct.OSSL_PROVIDER_INFO { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* null, i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)* @ossl_default_provider_init, %struct.stack_st_INFOPAIR* null, i8 1 }, %struct.OSSL_PROVIDER_INFO { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* null, i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)* @ossl_base_provider_init, %struct.stack_st_INFOPAIR* null, i8 0 }, %struct.OSSL_PROVIDER_INFO { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* null, i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)* @ossl_null_provider_init, %struct.stack_st_INFOPAIR* null, i8 0 }, %struct.OSSL_PROVIDER_INFO zeroinitializer], align 16

declare i32 @ossl_default_provider_init(%struct.ossl_core_handle_st* noundef, %struct.ossl_dispatch_st* noundef, %struct.ossl_dispatch_st** noundef, i8** noundef) #0

declare i32 @ossl_base_provider_init(%struct.ossl_core_handle_st* noundef, %struct.ossl_dispatch_st* noundef, %struct.ossl_dispatch_st** noundef, i8** noundef) #0

declare i32 @ossl_null_provider_init(%struct.ossl_core_handle_st* noundef, %struct.ossl_dispatch_st* noundef, %struct.ossl_dispatch_st** noundef, i8** noundef) #0

attributes #0 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
