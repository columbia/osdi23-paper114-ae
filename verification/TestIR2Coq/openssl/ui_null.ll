; ModuleID = 'crypto/ui/ui_null.c'
source_filename = "crypto/ui/ui_null.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_method_st = type { i8*, i32 (%struct.ui_st*)*, i32 (%struct.ui_st*, %struct.ui_string_st*)*, i32 (%struct.ui_st*)*, i32 (%struct.ui_st*, %struct.ui_string_st*)*, i32 (%struct.ui_st*)*, i8* (%struct.ui_st*, i8*)*, void (%struct.ui_st*, i8*)*, i8* (%struct.ui_st*, i8*, i8*)*, %struct.crypto_ex_data_st }
%struct.ui_st = type { %struct.ui_method_st*, %struct.stack_st_UI_STRING*, i8*, %struct.crypto_ex_data_st, i32, i8* }
%struct.stack_st_UI_STRING = type opaque
%struct.ui_string_st = type { i32, i8*, i32, i8*, i64, %union.anon, i32 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i8*, i8*, i8* }
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_void = type opaque

@ui_null = internal constant %struct.ui_method_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 (%struct.ui_st*)* null, i32 (%struct.ui_st*, %struct.ui_string_st*)* null, i32 (%struct.ui_st*)* null, i32 (%struct.ui_st*, %struct.ui_string_st*)* null, i32 (%struct.ui_st*)* null, i8* (%struct.ui_st*, i8*)* null, void (%struct.ui_st*, i8*)* null, i8* (%struct.ui_st*, i8*, i8*)* null, %struct.crypto_ex_data_st zeroinitializer }, align 8
@.str = private unnamed_addr constant [16 x i8] c"OpenSSL NULL UI\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ui_method_st* @UI_null() local_unnamed_addr #0 {
entry:
  ret %struct.ui_method_st* @ui_null
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
