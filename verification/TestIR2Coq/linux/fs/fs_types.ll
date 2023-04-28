; ModuleID = 'fs/fs_types.c'
source_filename = "fs/fs_types.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@fs_dtype_by_ftype = internal unnamed_addr constant [8 x i8] c"\00\08\04\02\06\01\0C\0A", align 1
@fs_ftype_by_dtype = internal unnamed_addr constant [16 x i8] c"\00\05\03\00\02\00\04\00\01\00\07\00\06\00\00\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i8 @fs_ftype_to_dtype(i32 noundef %filetype) local_unnamed_addr #0 {
entry:
  %cmp = icmp ugt i32 %filetype, 7
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %idxprom = zext i32 %filetype to i64
  %arrayidx = getelementptr [8 x i8], [8 x i8]* @fs_dtype_by_ftype, i64 0, i64 %idxprom
  %0 = load i8, i8* %arrayidx, align 1
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8 [ %0, %if.end ], [ 0, %entry ]
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i8 @fs_umode_to_ftype(i16 noundef %mode) local_unnamed_addr #0 {
entry:
  %0 = lshr i16 %mode, 12
  %1 = zext i16 %0 to i64
  %arrayidx = getelementptr [16 x i8], [16 x i8]* @fs_ftype_by_dtype, i64 0, i64 %1
  %2 = load i8, i8* %arrayidx, align 1
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i8 @fs_umode_to_dtype(i16 noundef %mode) local_unnamed_addr #0 {
entry:
  %call = call i8 @fs_umode_to_ftype(i16 noundef %mode) #1
  %conv = zext i8 %call to i32
  %call1 = call i8 @fs_ftype_to_dtype(i32 noundef %conv) #1
  ret i8 %call1
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
