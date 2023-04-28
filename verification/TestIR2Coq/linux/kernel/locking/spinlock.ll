; ModuleID = 'kernel/locking/spinlock.c'
source_filename = "kernel/locking/spinlock.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon, %struct.qspinlock }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }

@__lock_text_start = external dso_local global [0 x i8], align 1
@__lock_text_end = external dso_local global [0 x i8], align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @_raw_read_trylock(%struct.rwlock_t* noundef %lock) local_unnamed_addr #0 section ".spinlock.text" {
entry:
  %call = call fastcc i32 @__raw_read_trylock(%struct.rwlock_t* noundef %lock) #2
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__raw_read_trylock(%struct.rwlock_t* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #3, !srcloc !7
  %raw_lock = getelementptr inbounds %struct.rwlock_t, %struct.rwlock_t* %lock, i64 0, i32 0
  %call = call fastcc i32 @queued_read_trylock(%struct.qrwlock* noundef %raw_lock) #2
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #3, !srcloc !8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @_raw_write_trylock(%struct.rwlock_t* noundef %lock) local_unnamed_addr #0 section ".spinlock.text" {
entry:
  %call = call fastcc i32 @__raw_write_trylock(%struct.rwlock_t* noundef %lock) #2
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__raw_write_trylock(%struct.rwlock_t* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #3, !srcloc !9
  %raw_lock = getelementptr inbounds %struct.rwlock_t, %struct.rwlock_t* %lock, i64 0, i32 0
  %call = call fastcc i32 @queued_write_trylock(%struct.qrwlock* noundef %raw_lock) #2
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #3, !srcloc !10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @in_lock_functions(i64 noundef %addr) local_unnamed_addr #1 {
entry:
  %cmp = icmp uge i64 %addr, ptrtoint ([0 x i8]* @__lock_text_start to i64)
  %cmp1 = icmp ult i64 %addr, ptrtoint ([0 x i8]* @__lock_text_end to i64)
  %0 = and i1 %cmp, %cmp1
  %land.ext = zext i1 %0 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @queued_read_trylock(%struct.qrwlock* noundef %lock) unnamed_addr #0 {
entry:
  %cnts1 = getelementptr inbounds %struct.qrwlock, %struct.qrwlock* %lock, i64 0, i32 0, i32 0
  %counter.i = getelementptr inbounds %struct.qrwlock, %struct.qrwlock* %lock, i64 0, i32 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %and = and i32 %0, 511
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %cleanup, !prof !11

if.then:                                          ; preds = %entry
  %call.i.i = call fastcc i32 @__ll_sc_atomic_add_return_acquire(%struct.atomic_t* noundef %cnts1) #4
  %and7 = and i32 %call.i.i, 511
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %cleanup, label %if.end, !prof !11

if.end:                                           ; preds = %if.then
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %cnts1) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_add_return_acquire(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add_return_acquire\0A\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 512, i32* elementtype(i32) %counter) #3, !srcloc !12
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) %counter, i32 512, i32* elementtype(i32) %counter) #3, !srcloc !13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @queued_write_trylock(%struct.qrwlock* noundef %lock) unnamed_addr #0 {
entry:
  %counter.i = getelementptr inbounds %struct.qrwlock, %struct.qrwlock* %lock, i64 0, i32 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %cleanup, !prof !11

if.end:                                           ; preds = %entry
  %1 = bitcast %struct.qrwlock* %lock to i8*
  %call11.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %1, i32 noundef 0) #4
  %cmp.not.i.i = icmp eq i32 %call11.i.i.i, 0
  %lnot.ext9 = zext i1 %cmp.not.i.i to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %lnot.ext9, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #2
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 255, i32* elementtype(i32) %0) #3, !srcloc !14
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { nobuiltin "no-builtins" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 2149403239}
!8 = !{i64 2149409406}
!9 = !{i64 2149409623}
!10 = !{i64 2149413769}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2147777562, i64 2147778228, i64 2147778258, i64 2147778291, i64 2147778325, i64 2147778360, i64 2147778385}
!13 = !{i64 2147784399, i64 2147784915, i64 2147784945, i64 2147784972, i64 2147785006, i64 2147785036}
!14 = !{i64 2147870540, i64 2147870573, i64 2147870626, i64 2147870685, i64 2147870719, i64 2147870774, i64 2147870803, i64 2147870823}
