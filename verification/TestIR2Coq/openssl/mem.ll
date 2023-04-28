; ModuleID = 'crypto/mem.c'
source_filename = "crypto/mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@allow_customize = internal unnamed_addr global i1 false, align 4
@malloc_impl = internal unnamed_addr global i8* (i64, i8*, i32)* @CRYPTO_malloc, align 8
@realloc_impl = internal unnamed_addr global i8* (i8*, i64, i8*, i32)* @CRYPTO_realloc, align 8
@free_impl = internal unnamed_addr global void (i8*, i8*, i32)* @CRYPTO_free, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @CRYPTO_set_mem_functions(i8* (i64, i8*, i32)* noundef %malloc_fn, i8* (i8*, i64, i8*, i32)* noundef %realloc_fn, void (i8*, i8*, i32)* noundef %free_fn) local_unnamed_addr #0 {
entry:
  %.b = load i1, i1* @allow_customize, align 4
  br i1 %.b, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp.not = icmp eq i8* (i64, i8*, i32)* %malloc_fn, null
  br i1 %cmp.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  store i8* (i64, i8*, i32)* %malloc_fn, i8* (i64, i8*, i32)** @malloc_impl, align 8, !tbaa !4
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %cmp3.not = icmp eq i8* (i8*, i64, i8*, i32)* %realloc_fn, null
  br i1 %cmp3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end2
  store i8* (i8*, i64, i8*, i32)* %realloc_fn, i8* (i8*, i64, i8*, i32)** @realloc_impl, align 8, !tbaa !4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end2
  %cmp6.not = icmp eq void (i8*, i8*, i32)* %free_fn, null
  br i1 %cmp6.not, label %return, label %if.then7

if.then7:                                         ; preds = %if.end5
  store void (i8*, i8*, i32)* %free_fn, void (i8*, i8*, i32)** @free_impl, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %if.end5, %if.then7, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.then7 ], [ 1, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @CRYPTO_get_mem_functions(i8* (i64, i8*, i32)** noundef writeonly %malloc_fn, i8* (i8*, i64, i8*, i32)** noundef writeonly %realloc_fn, void (i8*, i8*, i32)** noundef writeonly %free_fn) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i8* (i64, i8*, i32)** %malloc_fn, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i8* (i64, i8*, i32)*, i8* (i64, i8*, i32)** @malloc_impl, align 8, !tbaa !4
  store i8* (i64, i8*, i32)* %0, i8* (i64, i8*, i32)** %malloc_fn, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp1.not = icmp eq i8* (i8*, i64, i8*, i32)** %realloc_fn, null
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %1 = load i8* (i8*, i64, i8*, i32)*, i8* (i8*, i64, i8*, i32)** @realloc_impl, align 8, !tbaa !4
  store i8* (i8*, i64, i8*, i32)* %1, i8* (i8*, i64, i8*, i32)** %realloc_fn, align 8, !tbaa !4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %cmp4.not = icmp eq void (i8*, i8*, i32)** %free_fn, null
  br i1 %cmp4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end3
  %2 = load void (i8*, i8*, i32)*, void (i8*, i8*, i32)** @free_impl, align 8, !tbaa !4
  store void (i8*, i8*, i32)* %2, void (i8*, i8*, i32)** %free_fn, align 8, !tbaa !4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i8* @CRYPTO_malloc(i64 noundef %num, i8* noundef %file, i32 noundef %line) #1 {
entry:
  %0 = load i8* (i64, i8*, i32)*, i8* (i64, i8*, i32)** @malloc_impl, align 8, !tbaa !4
  %cmp.not = icmp eq i8* (i64, i8*, i32)* %0, @CRYPTO_malloc
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i8* %0(i64 noundef %num, i8* noundef %file, i32 noundef %line) #4
  br label %return

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i64 %num, 0
  br i1 %cmp1, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %.b = load i1, i1* @allow_customize, align 4
  br i1 %.b, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end3
  store i1 true, i1* @allow_customize, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end3
  %call6 = tail call noalias i8* @malloc(i64 noundef %num) #4
  br label %return

return:                                           ; preds = %if.end, %if.end5, %if.then
  %retval.0 = phi i8* [ %call, %if.then ], [ %call6, %if.end5 ], [ null, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @CRYPTO_zalloc(i64 noundef %num, i8* noundef %file, i32 noundef %line) local_unnamed_addr #1 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef %num, i8* noundef %file, i32 noundef %line) #5
  %cmp.not = icmp eq i8* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i8* @memset(i8* noundef nonnull %call, i32 noundef 0, i64 noundef %num) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i8* %call
}

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @CRYPTO_realloc(i8* noundef %str, i64 noundef %num, i8* noundef %file, i32 noundef %line) #1 {
entry:
  %0 = load i8* (i8*, i64, i8*, i32)*, i8* (i8*, i64, i8*, i32)** @realloc_impl, align 8, !tbaa !4
  %cmp.not = icmp eq i8* (i8*, i64, i8*, i32)* %0, @CRYPTO_realloc
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i8* %0(i8* noundef %str, i64 noundef %num, i8* noundef %file, i32 noundef %line) #4
  br label %return

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i8* %str, null
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = tail call i8* @CRYPTO_malloc(i64 noundef %num, i8* noundef %file, i32 noundef %line) #5
  br label %return

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp eq i64 %num, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  tail call void @CRYPTO_free(i8* noundef nonnull %str, i8* noundef %file, i32 noundef %line) #5
  br label %return

if.end7:                                          ; preds = %if.end4
  %call8 = tail call i8* @realloc(i8* noundef nonnull %str, i64 noundef %num) #4
  br label %return

return:                                           ; preds = %if.end7, %if.then6, %if.then2, %if.then
  %retval.0 = phi i8* [ %call, %if.then ], [ %call3, %if.then2 ], [ null, %if.then6 ], [ %call8, %if.end7 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @CRYPTO_free(i8* noundef %str, i8* noundef %file, i32 noundef %line) #1 {
entry:
  %0 = load void (i8*, i8*, i32)*, void (i8*, i8*, i32)** @free_impl, align 8, !tbaa !4
  %cmp.not = icmp eq void (i8*, i8*, i32)* %0, @CRYPTO_free
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void %0(i8* noundef %str, i8* noundef %file, i32 noundef %line) #4
  br label %return

if.end:                                           ; preds = %entry
  tail call void @free(i8* noundef %str) #4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @CRYPTO_clear_realloc(i8* noundef %str, i64 noundef %old_len, i64 noundef %num, i8* noundef %file, i32 noundef %line) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq i8* %str, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i8* @CRYPTO_malloc(i64 noundef %num, i8* noundef %file, i32 noundef %line) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i64 %num, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @CRYPTO_clear_free(i8* noundef nonnull %str, i64 noundef %old_len, i8* noundef %file, i32 noundef %line) #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp ugt i64 %old_len, %num
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %add.ptr = getelementptr inbounds i8, i8* %str, i64 %num
  %sub = sub i64 %old_len, %num
  tail call void @OPENSSL_cleanse(i8* noundef nonnull %add.ptr, i64 noundef %sub) #4
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %call7 = tail call i8* @CRYPTO_malloc(i64 noundef %num, i8* noundef %file, i32 noundef %line) #5
  %cmp8.not = icmp eq i8* %call7, null
  br i1 %cmp8.not, label %cleanup, label %if.then9

if.then9:                                         ; preds = %if.end6
  %call10 = tail call i8* @memcpy(i8* noundef nonnull %call7, i8* noundef nonnull %str, i64 noundef %old_len) #4
  tail call void @CRYPTO_clear_free(i8* noundef nonnull %str, i64 noundef %old_len, i8* noundef %file, i32 noundef %line) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then9, %if.then5, %if.then2, %if.then
  %retval.0 = phi i8* [ %call, %if.then ], [ null, %if.then2 ], [ %str, %if.then5 ], [ %call7, %if.then9 ], [ null, %if.end6 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @CRYPTO_clear_free(i8* noundef %str, i64 noundef %num, i8* noundef %file, i32 noundef %line) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq i8* %str, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i64 %num, 0
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  tail call void @OPENSSL_cleanse(i8* noundef nonnull %str, i64 noundef %num) #4
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  tail call void @CRYPTO_free(i8* noundef nonnull %str, i8* noundef %file, i32 noundef %line) #5
  br label %return

return:                                           ; preds = %entry, %if.end2
  ret void
}

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
