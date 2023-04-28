; ModuleID = 'crypto/cversion.c'
source_filename = "crypto/cversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"OpenSSL 3.0.0 7 sep 2021\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"3.0.0\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"built on: Sat Dec 10 17:24:23 2022 UTC\00", align 1
@compiler_flags = internal constant [146 x i8] c"compiler: gcc -fPIC -pthread -m64 -Wa,--noexecstack -Wall -O3 -DOPENSSL_USE_NODELETE -DL_ENDIAN -DOPENSSL_PIC -DOPENSSL_BUILDING_OPENSSL -DNDEBUG\00", align 16
@.str.4 = private unnamed_addr constant [23 x i8] c"platform: linux-x86_64\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"OPENSSLDIR: \22/usr/local/ssl\22\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"ENGINESDIR: \22/usr/local/lib64/engines-3\22\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"MODULESDIR: \22/usr/local/lib64/ossl-modules\22\00", align 1
@ossl_cpu_info_str = external global [0 x i8], align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"CPUINFO: N/A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"not available\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i64 @OpenSSL_version_num() local_unnamed_addr #0 {
entry:
  ret i64 805306368
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i32 @OPENSSL_version_major() local_unnamed_addr #0 {
entry:
  ret i32 3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i32 @OPENSSL_version_minor() local_unnamed_addr #0 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i32 @OPENSSL_version_patch() local_unnamed_addr #0 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i8* @OPENSSL_version_pre_release() local_unnamed_addr #0 {
entry:
  ret i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i8* @OPENSSL_version_build_metadata() local_unnamed_addr #0 {
entry:
  ret i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define i8* @OpenSSL_version(i32 noundef %t) local_unnamed_addr #1 {
entry:
  switch i32 %t, label %sw.epilog [
    i32 0, label %return
    i32 6, label %sw.bb1
    i32 7, label %sw.bb2
    i32 2, label %sw.bb3
    i32 1, label %sw.bb4
    i32 3, label %sw.bb5
    i32 4, label %sw.bb6
    i32 5, label %sw.bb7
    i32 8, label %sw.bb8
    i32 9, label %sw.bb9
  ]

sw.bb1:                                           ; preds = %entry
  br label %return

sw.bb2:                                           ; preds = %entry
  br label %return

sw.bb3:                                           ; preds = %entry
  br label %return

sw.bb4:                                           ; preds = %entry
  br label %return

sw.bb5:                                           ; preds = %entry
  br label %return

sw.bb6:                                           ; preds = %entry
  br label %return

sw.bb7:                                           ; preds = %entry
  br label %return

sw.bb8:                                           ; preds = %entry
  br label %return

sw.bb9:                                           ; preds = %entry
  %call = tail call i8* @OPENSSL_info(i32 noundef 1008) #3
  %cmp.not = icmp eq i8* %call, null
  %. = select i1 %cmp.not, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @ossl_cpu_info_str, i64 0, i64 0)
  br label %return

sw.epilog:                                        ; preds = %entry
  br label %return

return:                                           ; preds = %sw.bb9, %entry, %sw.epilog, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1
  %retval.0 = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), %sw.epilog ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), %sw.bb8 ], [ getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), %sw.bb7 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), %sw.bb6 ], [ getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), %sw.bb5 ], [ getelementptr inbounds ([146 x i8], [146 x i8]* @compiler_flags, i64 0, i64 0), %sw.bb4 ], [ getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), %sw.bb3 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %sw.bb2 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %sw.bb1 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %entry ], [ %., %sw.bb9 ]
  ret i8* %retval.0
}

declare i8* @OPENSSL_info(i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
