; ModuleID = 'lib/debug_locks.c'
source_filename = "lib/debug_locks.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@debug_locks = dso_local global i32 1, section ".data..read_mostly", align 4
@debug_locks_silent = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @debug_locks_off() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* @debug_locks, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call8.i.i = call fastcc i32 @__xchg_case_mb_32() #2
  %tobool1 = icmp eq i32 %call8.i.i, 0
  %1 = load i32, i32* @debug_locks_silent, align 4
  %tobool2 = icmp ne i32 %1, 0
  %or.cond = select i1 %tobool1, i1 true, i1 %tobool2
  br i1 %or.cond, label %return, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  call void @console_verbose() #2
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %if.then3
  %retval.0 = phi i32 [ 1, %if.then3 ], [ 0, %land.lhs.true ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_verbose() local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__xchg_case_mb_32() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09stlxr\09${1:w}, ${3:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,r,*Q,~{memory}"(i32* nonnull elementtype(i32) @debug_locks, i32 0, i32* nonnull elementtype(i32) @debug_locks) #3, !srcloc !7
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { nobuiltin nounwind "no-builtins" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 2147861934, i64 2147861966, i64 2147862011, i64 2147862059, i64 2147862085}
