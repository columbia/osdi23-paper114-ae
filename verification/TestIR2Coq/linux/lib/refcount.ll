; ModuleID = 'lib/refcount.c'
source_filename = "lib/refcount.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }

@refcount_warn_saturate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [40 x i8] c"refcount_t: saturated; leaking memory.\0A\00", align 1
@refcount_warn_saturate.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@refcount_warn_saturate.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"refcount_t: addition on 0; use-after-free.\0A\00", align 1
@refcount_warn_saturate.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"refcount_t: underflow; use-after-free.\0A\00", align 1
@refcount_warn_saturate.__already_done.6 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"refcount_t: decrement hit 0; leaking memory.\0A\00", align 1
@refcount_warn_saturate.__already_done.8 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"refcount_t: unknown saturation event!?.\0A\00", align 1
@refcount_dec_not_one.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %t) local_unnamed_addr #0 {
entry:
  call fastcc void @refcount_set(%struct.refcount_struct* noundef %r) #4
  switch i32 %t, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb36
    i32 2, label %sw.bb90
    i32 3, label %sw.bb144
    i32 4, label %sw.bb198
  ]

sw.bb:                                            ; preds = %entry
  %.b332 = load i1, i1* @refcount_warn_saturate.__already_done, align 1
  br i1 %.b332, label %sw.epilog, label %if.then, !prof !7

if.then:                                          ; preds = %sw.bb
  store i1 true, i1* @refcount_warn_saturate.__already_done, align 1
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0)) #5
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/refcount.c\22; .popsection; .long 14472b - 14470b; .short 19; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #6, !srcloc !8
  br label %sw.epilog

sw.bb36:                                          ; preds = %entry
  %.b323331 = load i1, i1* @refcount_warn_saturate.__already_done.1, align 1
  br i1 %.b323331, label %sw.epilog, label %if.then52, !prof !7

if.then52:                                        ; preds = %sw.bb36
  store i1 true, i1* @refcount_warn_saturate.__already_done.1, align 1
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0)) #5
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/refcount.c\22; .popsection; .long 14472b - 14470b; .short 22; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #6, !srcloc !9
  br label %sw.epilog

sw.bb90:                                          ; preds = %entry
  %.b324330 = load i1, i1* @refcount_warn_saturate.__already_done.2, align 1
  br i1 %.b324330, label %sw.epilog, label %if.then106, !prof !7

if.then106:                                       ; preds = %sw.bb90
  store i1 true, i1* @refcount_warn_saturate.__already_done.2, align 1
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0)) #5
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/refcount.c\22; .popsection; .long 14472b - 14470b; .short 25; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #6, !srcloc !10
  br label %sw.epilog

sw.bb144:                                         ; preds = %entry
  %.b325329 = load i1, i1* @refcount_warn_saturate.__already_done.4, align 1
  br i1 %.b325329, label %sw.epilog, label %if.then160, !prof !7

if.then160:                                       ; preds = %sw.bb144
  store i1 true, i1* @refcount_warn_saturate.__already_done.4, align 1
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0)) #5
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/refcount.c\22; .popsection; .long 14472b - 14470b; .short 28; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #6, !srcloc !11
  br label %sw.epilog

sw.bb198:                                         ; preds = %entry
  %.b326328 = load i1, i1* @refcount_warn_saturate.__already_done.6, align 1
  br i1 %.b326328, label %sw.epilog, label %if.then214, !prof !7

if.then214:                                       ; preds = %sw.bb198
  store i1 true, i1* @refcount_warn_saturate.__already_done.6, align 1
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0)) #5
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/refcount.c\22; .popsection; .long 14472b - 14470b; .short 31; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #6, !srcloc !12
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %.b327333 = load i1, i1* @refcount_warn_saturate.__already_done.8, align 1
  br i1 %.b327333, label %sw.epilog, label %if.then267, !prof !7

if.then267:                                       ; preds = %sw.default
  store i1 true, i1* @refcount_warn_saturate.__already_done.8, align 1
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0)) #5
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/refcount.c\22; .popsection; .long 14472b - 14470b; .short 34; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #6, !srcloc !13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then267, %sw.bb198, %if.then214, %sw.bb144, %if.then160, %sw.bb90, %if.then106, %sw.bb36, %if.then52, %sw.bb, %if.then
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @refcount_set(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  store volatile i32 -1073741824, i32* %counter.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @refcount_dec_if_one(%struct.refcount_struct* noundef %r) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.refcount_struct* %r to i8*
  %call11.i.i.i = call fastcc i32 @__cmpxchg_case_rel_32(i8* noundef %0, i32 noundef 1, i32 noundef 0) #5
  %cmp.not.i.i = icmp eq i32 %call11.i.i.i, 1
  ret i1 %cmp.not.i.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @refcount_dec_not_one(%struct.refcount_struct* noundef %r) local_unnamed_addr #0 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %1 = bitcast %struct.refcount_struct* %r to i8*
  br label %do.body

do.body:                                          ; preds = %do.cond62, %entry
  %val.0 = phi i32 [ %0, %entry ], [ %call11.i.i.i, %do.cond62 ]
  switch i32 %val.0, label %do.cond62 [
    i32 -1073741824, label %cleanup.loopexit
    i32 1, label %cleanup
    i32 0, label %if.then8
  ], !prof !14

if.then8:                                         ; preds = %do.body
  %.b76 = load i1, i1* @refcount_dec_not_one.__already_done, align 1
  br i1 %.b76, label %cleanup, label %if.then27, !prof !7

if.then27:                                        ; preds = %if.then8
  store i1 true, i1* @refcount_dec_not_one.__already_done, align 1
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0)) #5
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/refcount.c\22; .popsection; .long 14472b - 14470b; .short 87; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #6, !srcloc !15
  br label %cleanup

do.cond62:                                        ; preds = %do.body
  %sub = add i32 %val.0, -1
  %call11.i.i.i = call fastcc i32 @__cmpxchg_case_rel_32(i8* noundef %1, i32 noundef %val.0, i32 noundef %sub) #5
  %cmp.not.i.i = icmp eq i32 %val.0, %call11.i.i.i
  br i1 %cmp.not.i.i, label %cleanup.loopexit, label %do.body, !prof !7

cleanup.loopexit:                                 ; preds = %do.body, %do.cond62
  br label %cleanup

cleanup:                                          ; preds = %do.body, %cleanup.loopexit, %if.then8, %if.then27
  %retval.0 = phi i1 [ true, %if.then27 ], [ true, %if.then8 ], [ true, %cleanup.loopexit ], [ false, %do.body ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @refcount_dec_and_mutex_lock(%struct.refcount_struct* noundef %r, %struct.mutex* noundef %lock) local_unnamed_addr #0 {
entry:
  %call = call i1 @refcount_dec_not_one(%struct.refcount_struct* noundef %r) #4
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %entry
  call void @mutex_lock(%struct.mutex* noundef %lock) #5
  %call1 = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) #4
  br i1 %call1, label %return, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @mutex_unlock(%struct.mutex* noundef %lock) #5
  br label %return

return:                                           ; preds = %if.end, %entry, %if.then2
  %retval.0 = phi i1 [ false, %if.then2 ], [ false, %entry ], [ true, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) #4
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @refcount_dec_and_lock(%struct.refcount_struct* noundef %r, %struct.spinlock* noundef %lock) local_unnamed_addr #0 {
entry:
  %call = call i1 @refcount_dec_not_one(%struct.refcount_struct* noundef %r) #4
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %lock, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #5
  %call1 = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) #4
  br i1 %call1, label %return, label %if.then2

if.then2:                                         ; preds = %if.end
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #5
  br label %return

return:                                           ; preds = %if.end, %entry, %if.then2
  %retval.0 = phi i1 [ false, %if.then2 ], [ false, %entry ], [ true, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @refcount_dec_and_lock_irqsave(%struct.refcount_struct* noundef %r, %struct.spinlock* noundef %lock, i64* nocapture noundef %flags) local_unnamed_addr #0 {
entry:
  %call = call i1 @refcount_dec_not_one(%struct.refcount_struct* noundef %r) #4
  br i1 %call, label %return, label %do.body1

do.body1:                                         ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %lock, i64 0, i32 0, i32 0
  %call3 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #4
  store i64 %call3, i64* %flags, align 8
  %call5 = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) #4
  br i1 %call5, label %return, label %if.then6

if.then6:                                         ; preds = %do.body1
  %0 = load i64, i64* %flags, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %0) #5
  br label %return

return:                                           ; preds = %do.body1, %entry, %if.then6
  %retval.0 = phi i1 [ false, %if.then6 ], [ false, %entry ], [ true, %do.body1 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #4
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #4
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_rel_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_rel_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_rel_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stlxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #6, !srcloc !17
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) #4
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %refs) #5
  %cmp = icmp eq i32 %call.i.i, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #6, !srcloc !18
  br label %cleanup

if.end2:                                          ; preds = %entry
  %.not = icmp sgt i32 %call.i.i, 0
  br i1 %.not, label %cleanup, label %if.then7, !prof !7

if.then7:                                         ; preds = %if.end2
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then7, %if.then1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_sub_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09sub\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #6, !srcloc !19
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !20
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #5
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !7

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #5
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #6, !srcloc !21
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #4
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #6, !srcloc !23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #4
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #5
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !7

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #5
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #6, !srcloc !24
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #6, !srcloc !25
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #4
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !26

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #6, !srcloc !27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #3 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #4
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #4
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #6, !srcloc !29
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"branch_weights", i32 2000, i32 1}
!8 = !{i64 2149523371}
!9 = !{i64 2149525940}
!10 = !{i64 2149528529}
!11 = !{i64 2149531098}
!12 = !{i64 2149537758}
!13 = !{i64 2149540332}
!14 = !{!"branch_weights", i32 2000, i32 4, i32 4000, i32 2000}
!15 = !{i64 2149543140}
!16 = !{i64 2149372890}
!17 = !{i64 2147871325, i64 2147871358, i64 2147871410, i64 2147871469, i64 2147871503, i64 2147871559, i64 2147871588, i64 2147871608}
!18 = !{i64 2149269878}
!19 = !{i64 2147782589, i64 2147783263, i64 2147783293, i64 2147783325, i64 2147783359, i64 2147783395, i64 2147783420}
!20 = !{i64 2149387891}
!21 = !{i64 2147860705, i64 2147860738, i64 2147860791, i64 2147860850, i64 2147860884, i64 2147860939, i64 2147860968, i64 2147860988}
!22 = !{i64 2149395172}
!23 = !{i64 2149342032}
!24 = !{i64 2149323377, i64 2149323424, i64 2149323430, i64 2149323467, i64 2149323485, i64 2149324796, i64 2149324844, i64 2149324892, i64 2149324955, i64 2149325004, i64 2149323563, i64 2149323588, i64 2149323614, i64 2149323620, i64 2149324462, i64 2149324502, i64 2149324520, i64 2149324552, i64 2149324580, i64 2149324634, i64 2149324654, i64 2149324751, i64 2149323643, i64 2149323657, i64 2149323663, i64 2149323713, i64 2149323759, i64 2149323792}
!25 = !{i64 2149325556, i64 2149325603, i64 2149325609, i64 2149325646, i64 2149325664, i64 2149326607, i64 2149326655, i64 2149326703, i64 2149326766, i64 2149326815, i64 2149325742, i64 2149325767, i64 2149325793, i64 2149325799, i64 2149325836, i64 2149325842, i64 2149325892, i64 2149325938, i64 2149325971}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{i64 2149317674, i64 2149317721, i64 2149317727, i64 2149317764, i64 2149317782, i64 2149319123, i64 2149319171, i64 2149319219, i64 2149319282, i64 2149319331, i64 2149317860, i64 2149317885, i64 2149317911, i64 2149317917, i64 2149318789, i64 2149318829, i64 2149318847, i64 2149318879, i64 2149318907, i64 2149318961, i64 2149318981, i64 2149319078, i64 2149317940, i64 2149317954, i64 2149317960, i64 2149318010, i64 2149318056, i64 2149318089}
!28 = !{i64 2149398733}
!29 = !{i64 2149329390, i64 2149329437, i64 2149329443, i64 2149329480, i64 2149329498, i64 2149330809, i64 2149330857, i64 2149330905, i64 2149330968, i64 2149331017, i64 2149329576, i64 2149329601, i64 2149329627, i64 2149329633, i64 2149330475, i64 2149330515, i64 2149330533, i64 2149330565, i64 2149330593, i64 2149330647, i64 2149330667, i64 2149330764, i64 2149329656, i64 2149329670, i64 2149329676, i64 2149329726, i64 2149329772, i64 2149329805}
