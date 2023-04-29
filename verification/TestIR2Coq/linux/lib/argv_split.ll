; ModuleID = 'lib/argv_split.c'
source_filename = "lib/argv_split.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @argv_free(i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %incdec.ptr = getelementptr i8*, i8** %argv, i64 -1
  %0 = load i8*, i8** %incdec.ptr, align 8
  call void @kfree(i8* noundef %0) #4
  %1 = bitcast i8** %incdec.ptr to i8*
  call void @kfree(i8* noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8** @argv_split(i32 noundef %gfp, i8* noundef %str, i32* noundef writeonly %argcp) local_unnamed_addr #0 {
entry:
  %call = call i8* @kstrndup(i8* noundef %str, i64 noundef 4194303, i32 noundef %gfp) #4
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @count_argc(i8* noundef nonnull %call) #5
  %add = add i32 %call1, 2
  %conv = sext i32 %add to i64
  %call2 = call fastcc i8* @kmalloc_array(i64 noundef %conv, i32 noundef %gfp) #5
  %tobool3.not = icmp eq i8* %call2, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @kfree(i8* noundef nonnull %call) #4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %0 = bitcast i8* %call2 to i8**
  store i8* %call, i8** %0, align 8
  %incdec.ptr = getelementptr i8, i8* %call2, i64 8
  %1 = bitcast i8* %incdec.ptr to i8**
  %2 = load i8, i8* %call, align 1
  %tobool6.not45 = icmp eq i8 %2, 0
  br i1 %tobool6.not45, label %for.end, label %for.body

for.body:                                         ; preds = %if.end5, %for.inc
  %3 = phi i8 [ %7, %for.inc ], [ %2, %if.end5 ]
  %argv.049 = phi i8** [ %argv.1, %for.inc ], [ %1, %if.end5 ]
  %was_space.0.off048 = phi i1 [ %was_space.1.off0, %for.inc ], [ true, %if.end5 ]
  %argv_str.046 = phi i8* [ %incdec.ptr16, %for.inc ], [ %call, %if.end5 ]
  %4 = zext i8 %3 to i64
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %4
  %5 = load i8, i8* %arrayidx, align 1
  %6 = and i8 %5, 32
  %cmp.not = icmp eq i8 %6, 0
  br i1 %cmp.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %for.body
  store i8 0, i8* %argv_str.046, align 1
  br label %for.inc

if.else:                                          ; preds = %for.body
  br i1 %was_space.0.off048, label %if.then12, label %for.inc

if.then12:                                        ; preds = %if.else
  %incdec.ptr13 = getelementptr i8*, i8** %argv.049, i64 1
  store i8* %argv_str.046, i8** %argv.049, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %if.then12, %if.else
  %was_space.1.off0 = phi i1 [ true, %if.then10 ], [ false, %if.then12 ], [ false, %if.else ]
  %argv.1 = phi i8** [ %argv.049, %if.then10 ], [ %incdec.ptr13, %if.then12 ], [ %argv.049, %if.else ]
  %incdec.ptr16 = getelementptr i8, i8* %argv_str.046, i64 1
  %7 = load i8, i8* %incdec.ptr16, align 1
  %tobool6.not = icmp eq i8 %7, 0
  br i1 %tobool6.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end5
  %argv.0.lcssa = phi i8** [ %1, %if.end5 ], [ %argv.1, %for.inc ]
  store i8* null, i8** %argv.0.lcssa, align 8
  %tobool17.not = icmp eq i32* %argcp, null
  br i1 %tobool17.not, label %cleanup, label %if.then18

if.then18:                                        ; preds = %for.end
  store i32 %call1, i32* %argcp, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then18, %entry, %if.then4
  %retval.0 = phi i8** [ null, %if.then4 ], [ null, %entry ], [ %1, %if.then18 ], [ %1, %for.end ]
  ret i8** %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @kstrndup(i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i32 @count_argc(i8* nocapture noundef readonly %str) unnamed_addr #2 {
entry:
  %0 = load i8, i8* %str, align 1
  %tobool.not12 = icmp eq i8 %0, 0
  br i1 %tobool.not12, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %1 = phi i8 [ %5, %for.body ], [ %0, %entry ]
  %was_space.0.off015 = phi i1 [ %not.cmp.not, %for.body ], [ true, %entry ]
  %count.014 = phi i32 [ %count.1, %for.body ], [ 0, %entry ]
  %str.addr.013 = phi i8* [ %incdec.ptr, %for.body ], [ %str, %entry ]
  %2 = zext i8 %1 to i64
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %2
  %3 = load i8, i8* %arrayidx, align 1
  %4 = and i8 %3, 32
  %cmp.not = icmp eq i8 %4, 0
  %narrow = and i1 %was_space.0.off015, %cmp.not
  %spec.select = zext i1 %narrow to i32
  %count.1 = add i32 %count.014, %spec.select
  %not.cmp.not = xor i1 %cmp.not, true
  %incdec.ptr = getelementptr i8, i8* %str.addr.013, i64 1
  %5 = load i8, i8* %incdec.ptr, align 1
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %count.0.lcssa = phi i32 [ 0, %entry ], [ %count.1, %for.body ]
  ret i32 %count.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array(i64 noundef %n, i32 noundef %flags) unnamed_addr #0 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 8)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !7

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call9 = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef %flags) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call9, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"branch_weights", i32 1, i32 2000}
