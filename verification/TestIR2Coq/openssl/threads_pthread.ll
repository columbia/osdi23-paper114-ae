; ModuleID = 'crypto/threads_pthread.c'
source_filename = "crypto/threads_pthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_rwlock_t = type { %struct.__pthread_rwlock_arch_t }
%struct.__pthread_rwlock_arch_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, [7 x i8], i64, i32 }
%union.pthread_rwlockattr_t = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"crypto/threads_pthread.c\00", align 1
@fork_once_control = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 56, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 38) #6
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %union.pthread_rwlock_t*
  %call1 = tail call i32 @pthread_rwlock_init(%union.pthread_rwlock_t* noundef nonnull %0, %union.pthread_rwlockattr_t* noundef null) #6
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 44) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then3
  %retval.0 = phi i8* [ null, %if.then3 ], [ null, %entry ], [ %call, %if.end ]
  ret i8* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_rwlock_init(%union.pthread_rwlock_t* noundef, %union.pthread_rwlockattr_t* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @CRYPTO_THREAD_read_lock(i8* noundef %lock) local_unnamed_addr #0 {
entry:
  %0 = bitcast i8* %lock to %union.pthread_rwlock_t*
  %call = tail call i32 @pthread_rwlock_rdlock(%union.pthread_rwlock_t* noundef %0) #6
  %cmp.not = icmp eq i32 %call, 0
  %. = zext i1 %cmp.not to i32
  ret i32 %.
}

; Function Attrs: nounwind
declare i32 @pthread_rwlock_rdlock(%union.pthread_rwlock_t* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @CRYPTO_THREAD_write_lock(i8* noundef %lock) local_unnamed_addr #0 {
entry:
  %0 = bitcast i8* %lock to %union.pthread_rwlock_t*
  %call = tail call i32 @pthread_rwlock_wrlock(%union.pthread_rwlock_t* noundef %0) #6
  %cmp.not = icmp eq i32 %call, 0
  %. = zext i1 %cmp.not to i32
  ret i32 %.
}

; Function Attrs: nounwind
declare i32 @pthread_rwlock_wrlock(%union.pthread_rwlock_t* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @CRYPTO_THREAD_unlock(i8* noundef %lock) local_unnamed_addr #0 {
entry:
  %0 = bitcast i8* %lock to %union.pthread_rwlock_t*
  %call = tail call i32 @pthread_rwlock_unlock(%union.pthread_rwlock_t* noundef %0) #6
  %cmp.not = icmp eq i32 %call, 0
  %. = zext i1 %cmp.not to i32
  ret i32 %.
}

; Function Attrs: nounwind
declare i32 @pthread_rwlock_unlock(%union.pthread_rwlock_t* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @CRYPTO_THREAD_lock_free(i8* noundef %lock) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %lock, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %lock to %union.pthread_rwlock_t*
  %call = tail call i32 @pthread_rwlock_destroy(%union.pthread_rwlock_t* noundef nonnull %0) #6
  tail call void @CRYPTO_free(i8* noundef nonnull %lock, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 137) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_rwlock_destroy(%union.pthread_rwlock_t* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @CRYPTO_THREAD_run_once(i32* noundef %once, void ()* noundef %init) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @pthread_once(i32* noundef %once, void ()* noundef %init) #6
  %cmp.not = icmp eq i32 %call, 0
  %. = zext i1 %cmp.not to i32
  ret i32 %.
}

declare i32 @pthread_once(i32* noundef, void ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @CRYPTO_THREAD_init_local(i32* noundef %key, void (i8*)* noundef %cleanup) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @pthread_key_create(i32* noundef %key, void (i8*)* noundef %cleanup) #6
  %cmp.not = icmp eq i32 %call, 0
  %. = zext i1 %cmp.not to i32
  ret i32 %.
}

; Function Attrs: nounwind
declare i32 @pthread_key_create(i32* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @CRYPTO_THREAD_get_local(i32* nocapture noundef readonly %key) local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* %key, align 4, !tbaa !4
  %call = tail call i8* @pthread_getspecific(i32 noundef %0) #6
  ret i8* %call
}

; Function Attrs: nounwind
declare i8* @pthread_getspecific(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @CRYPTO_THREAD_set_local(i32* nocapture noundef readonly %key, i8* noundef %val) local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* %key, align 4, !tbaa !4
  %call = tail call i32 @pthread_setspecific(i32 noundef %0, i8* noundef %val) #6
  %cmp.not = icmp eq i32 %call, 0
  %. = zext i1 %cmp.not to i32
  ret i32 %.
}

; Function Attrs: nounwind
declare i32 @pthread_setspecific(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @CRYPTO_THREAD_cleanup_local(i32* nocapture noundef readonly %key) local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* %key, align 4, !tbaa !4
  %call = tail call i32 @pthread_key_delete(i32 noundef %0) #6
  %cmp.not = icmp eq i32 %call, 0
  %. = zext i1 %cmp.not to i32
  ret i32 %.
}

; Function Attrs: nounwind
declare i32 @pthread_key_delete(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define i64 @CRYPTO_THREAD_get_current_id() local_unnamed_addr #3 {
entry:
  %call = tail call i64 @pthread_self() #7
  ret i64 %call
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i64 @pthread_self() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define i32 @CRYPTO_THREAD_compare_id(i64 noundef %a, i64 noundef %b) local_unnamed_addr #3 {
entry:
  %call = tail call i32 @pthread_equal(i64 noundef %a, i64 noundef %b) #7
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
declare i32 @pthread_equal(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define i32 @CRYPTO_atomic_add(i32* nocapture noundef %val, i32 noundef %amount, i32* nocapture noundef writeonly %ret, i8* nocapture noundef readnone %lock) local_unnamed_addr #5 {
entry:
  %0 = atomicrmw add i32* %val, i32 %amount acq_rel, align 4
  %1 = add i32 %0, %amount
  store i32 %1, i32* %ret, align 4, !tbaa !4
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define i32 @CRYPTO_atomic_or(i64* nocapture noundef %val, i64 noundef %op, i64* nocapture noundef writeonly %ret, i8* nocapture noundef readnone %lock) local_unnamed_addr #5 {
entry:
  %0 = atomicrmw or i64* %val, i64 %op acq_rel, align 8
  %1 = or i64 %0, %op
  store i64 %1, i64* %ret, align 8, !tbaa !8
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define i32 @CRYPTO_atomic_load(i64* nocapture noundef readonly %val, i64* nocapture noundef writeonly %ret, i8* nocapture noundef readnone %lock) local_unnamed_addr #5 {
entry:
  %0 = load atomic i64, i64* %val acquire, align 8
  store i64 %0, i64* %ret, align 8
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define i32 @openssl_init_fork_handlers() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @pthread_once(i32* noundef nonnull @fork_once_control, void ()* noundef nonnull @fork_once_func) #6
  %cmp = icmp eq i32 %call, 0
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define internal void @fork_once_func() #0 {
entry:
  %call = tail call i32 @pthread_atfork(void ()* noundef nonnull @OPENSSL_fork_prepare, void ()* noundef nonnull @OPENSSL_fork_parent, void ()* noundef nonnull @OPENSSL_fork_child) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @openssl_get_fork_id() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @getpid() #6
  ret i32 %call
}

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_atfork(void ()* noundef, void ()* noundef, void ()* noundef) local_unnamed_addr #2

declare void @OPENSSL_fork_prepare() #1

declare void @OPENSSL_fork_parent() #1

declare void @OPENSSL_fork_child() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin nounwind readnone willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
