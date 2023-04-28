; ModuleID = 'crypto/store/store_strings.c'
source_filename = "crypto/store/store_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reltable.OSSL_STORE_INFO_type_string = internal unnamed_addr constant [6 x i32] [i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @.str to i64), i64 ptrtoint ([6 x i32]* @reltable.OSSL_STORE_INFO_type_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([11 x i8]* @.str.1 to i64), i64 ptrtoint ([6 x i32]* @reltable.OSSL_STORE_INFO_type_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([11 x i8]* @.str.2 to i64), i64 ptrtoint ([6 x i32]* @reltable.OSSL_STORE_INFO_type_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @.str.3 to i64), i64 ptrtoint ([6 x i32]* @reltable.OSSL_STORE_INFO_type_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([12 x i8]* @.str.4 to i64), i64 ptrtoint ([6 x i32]* @reltable.OSSL_STORE_INFO_type_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([4 x i8]* @.str.5 to i64), i64 ptrtoint ([6 x i32]* @reltable.OSSL_STORE_INFO_type_string to i64)) to i32)], align 4
@.str = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Parameters\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Public key\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Pkey\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Certificate\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"CRL\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i8* @OSSL_STORE_INFO_type_string(i32 noundef %type) local_unnamed_addr #0 {
entry:
  %0 = add i32 %type, -7
  %1 = icmp ult i32 %0, -6
  br i1 %1, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %sub = add nsw i32 %type, -1
  %2 = zext i32 %sub to i64
  %reltable.shift = shl i64 %2, 2
  %reltable.intrinsic = call i8* @llvm.load.relative.i64(i8* bitcast ([6 x i32]* @reltable.OSSL_STORE_INFO_type_string to i8*), i64 %reltable.shift)
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %reltable.intrinsic, %if.end ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind readonly willreturn
declare i8* @llvm.load.relative.i64(i8*, i64) #1

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nosync nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
