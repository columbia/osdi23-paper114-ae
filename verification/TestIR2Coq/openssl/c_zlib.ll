; ModuleID = 'crypto/comp/c_zlib.c'
source_filename = "crypto/comp/c_zlib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comp_method_st = type { i32, i8*, i32 (%struct.comp_ctx_st*)*, void (%struct.comp_ctx_st*)*, i32 (%struct.comp_ctx_st*, i8*, i32, i8*, i32)*, i32 (%struct.comp_ctx_st*, i8*, i32, i8*, i32)* }
%struct.comp_ctx_st = type { %struct.comp_method_st*, i64, i64, i64, i64, i8* }

@zlib_method_nozlib = internal global %struct.comp_method_st { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 (%struct.comp_ctx_st*)* null, void (%struct.comp_ctx_st*)* null, i32 (%struct.comp_ctx_st*, i8*, i32, i8*, i32)* null, i32 (%struct.comp_ctx_st*, i8*, i32, i8*, i32)* null }, align 8
@.str = private unnamed_addr constant [8 x i8] c"(undef)\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.comp_method_st* @COMP_zlib() local_unnamed_addr #0 {
entry:
  ret %struct.comp_method_st* @zlib_method_nozlib
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define void @ossl_comp_zlib_cleanup() local_unnamed_addr #0 {
entry:
  ret void
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
