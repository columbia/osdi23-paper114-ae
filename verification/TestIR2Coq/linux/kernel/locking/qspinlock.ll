; ModuleID = 'kernel/locking/qspinlock.c'
source_filename = "kernel/locking/qspinlock.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.qnode = type { %struct.mcs_spinlock }
%struct.mcs_spinlock = type { %struct.mcs_spinlock*, i32, i32 }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.anon = type { i8, i8 }
%struct.anon.0 = type { i16, i16 }

@qnodes = internal global [4 x %struct.qnode] zeroinitializer, section ".data..percpu..shared_aligned", align 64
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %lock, i32 noundef %val) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %val, 256
  br i1 %cmp, label %if.then1, label %if.end10

if.then1:                                         ; preds = %entry
  %counter = getelementptr inbounds %struct.qspinlock, %struct.qspinlock* %lock, i64 0, i32 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter, align 4
  %cmp6.not325.not = icmp eq i32 %0, 256
  br i1 %cmp6.not325.not, label %if.end8.lr.ph, label %if.end10

if.end8.lr.ph:                                    ; preds = %if.then1
  %1 = bitcast %struct.qspinlock* %lock to i8*
  call fastcc void @__cmpwait_case_32(i8* noundef %1, i64 noundef 256) #5
  %2 = load volatile i32, i32* %counter, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end8.lr.ph, %if.then1, %entry
  %val.addr.0 = phi i32 [ %val, %entry ], [ %0, %if.then1 ], [ %2, %if.end8.lr.ph ]
  %tobool11.not = icmp ult i32 %val.addr.0, 256
  br i1 %tobool11.not, label %if.end13, label %do.body47

if.end13:                                         ; preds = %if.end10
  %val.i = getelementptr inbounds %struct.qspinlock, %struct.qspinlock* %lock, i64 0, i32 0, i32 0
  %call.i.i.i = call fastcc i32 @__ll_sc_atomic_fetch_or_acquire(%struct.atomic_t* noundef %val.i) #5
  %tobool16.not = icmp ult i32 %call.i.i.i, 256
  br i1 %tobool16.not, label %if.end25, label %if.then20, !prof !8

if.then20:                                        ; preds = %if.end13
  %and21 = and i32 %call.i.i.i, 65280
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.then23, label %do.body47

if.then23:                                        ; preds = %if.then20
  %3 = bitcast %struct.qspinlock* %lock to %struct.anon*
  %pending.i = getelementptr inbounds %struct.anon, %struct.anon* %3, i64 0, i32 1
  store volatile i8 0, i8* %pending.i, align 1
  br label %do.body47

if.end25:                                         ; preds = %if.end13
  %tobool27.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool27.not, label %if.end46, label %if.then28

if.then28:                                        ; preds = %if.end25
  %counter31 = getelementptr inbounds %struct.qspinlock, %struct.qspinlock* %lock, i64 0, i32 0, i32 0, i32 0
  %4 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) %counter31) #6, !srcloc !9
  %and39333 = and i32 %4, 255
  %tobool40.not334 = icmp eq i32 %and39333, 0
  br i1 %tobool40.not334, label %if.end46, label %if.end42.lr.ph

if.end42.lr.ph:                                   ; preds = %if.then28
  %5 = bitcast %struct.qspinlock* %lock to i8*
  br label %if.end42

if.end42:                                         ; preds = %if.end42.lr.ph, %if.end42
  %6 = phi i32 [ %4, %if.end42.lr.ph ], [ %7, %if.end42 ]
  %conv43 = sext i32 %6 to i64
  call fastcc void @__cmpwait_case_32(i8* noundef %5, i64 noundef %conv43) #5
  %7 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) %counter31) #6, !srcloc !9
  %and39 = and i32 %7, 255
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end46, label %if.end42

if.end46:                                         ; preds = %if.end42, %if.then28, %if.end25
  %locked_pending.i = bitcast %struct.qspinlock* %lock to i16*
  store volatile i16 1, i16* %locked_pending.i, align 4
  br label %cleanup

do.body47:                                        ; preds = %if.then20, %if.then23, %if.end10
  %call52 = call fastcc i64 @__kern_my_cpu_offset() #7
  %add = add i64 %call52, ptrtoint ([4 x %struct.qnode]* @qnodes to i64)
  %8 = inttoptr i64 %add to %struct.mcs_spinlock*
  %count = getelementptr inbounds %struct.mcs_spinlock, %struct.mcs_spinlock* %8, i64 0, i32 2
  %9 = load i32, i32* %count, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %count, align 4
  %call60 = call fastcc i64 @__kern_my_cpu_offset() #7
  %add61 = add i64 %call60, ptrtoint (i32* @cpu_number to i64)
  %10 = inttoptr i64 %add61 to i32*
  %11 = load i32, i32* %10, align 4
  %call62 = call fastcc i32 @encode_tail(i32 noundef %11, i32 noundef %9) #8
  %cmp63 = icmp sgt i32 %9, 3
  br i1 %cmp63, label %while.cond.preheader, label %if.end77, !prof !10

while.cond.preheader:                             ; preds = %do.body47
  %12 = bitcast %struct.qspinlock* %lock to i8*
  %counter.i.i = getelementptr inbounds %struct.qspinlock, %struct.qspinlock* %lock, i64 0, i32 0, i32 0, i32 0
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %13 = load volatile i32, i32* %counter.i.i, align 4
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %queued_spin_trylock.exit, label %while.body, !prof !8

queued_spin_trylock.exit:                         ; preds = %while.cond
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %12, i32 noundef 0) #5
  %cmp.not.i.i.i.not = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.not, label %release, label %while.body

while.body:                                       ; preds = %while.cond, %queued_spin_trylock.exit
  call fastcc void @cpu_relax() #7
  br label %while.cond

if.end77:                                         ; preds = %do.body47
  %call78 = call fastcc %struct.mcs_spinlock* @grab_mcs_node(%struct.mcs_spinlock* noundef %8, i32 noundef %9) #8
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  %locked = getelementptr inbounds %struct.mcs_spinlock, %struct.mcs_spinlock* %call78, i64 0, i32 1
  store i32 0, i32* %locked, align 8
  %next79 = getelementptr inbounds %struct.mcs_spinlock, %struct.mcs_spinlock* %call78, i64 0, i32 0
  store %struct.mcs_spinlock* null, %struct.mcs_spinlock** %next79, align 8
  %counter.i.i308 = getelementptr inbounds %struct.qspinlock, %struct.qspinlock* %lock, i64 0, i32 0, i32 0, i32 0
  %14 = load volatile i32, i32* %counter.i.i308, align 4
  %tobool.not.i309 = icmp eq i32 %14, 0
  br i1 %tobool.not.i309, label %queued_spin_trylock.exit315, label %if.end83, !prof !8

queued_spin_trylock.exit315:                      ; preds = %if.end77
  %15 = bitcast %struct.qspinlock* %lock to i8*
  %call11.i.i.i.i310 = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %15, i32 noundef 0) #5
  %cmp.not.i.i.i311.not = icmp eq i32 %call11.i.i.i.i310, 0
  br i1 %cmp.not.i.i.i311.not, label %release, label %if.end83

if.end83:                                         ; preds = %if.end77, %queued_spin_trylock.exit315
  call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !12
  %16 = bitcast %struct.qspinlock* %lock to %struct.anon.0*
  %tail1.i = getelementptr inbounds %struct.anon.0, %struct.anon.0* %16, i64 0, i32 1
  %17 = bitcast i16* %tail1.i to i8*
  %shr.i = lshr i32 %call62, 16
  %conv3.i.i = trunc i32 %shr.i to i16
  %call4.i.i = call fastcc i16 @__xchg_case_16(i16 noundef %conv3.i.i, i8* noundef %17) #5
  %tobool86.not = icmp eq i16 %call4.i.i, 0
  br i1 %tobool86.not, label %if.end130, label %if.then87

if.then87:                                        ; preds = %if.end83
  %conv2.i = zext i16 %call4.i.i to i32
  %shl.i = shl nuw i32 %conv2.i, 16
  %call88 = call fastcc %struct.mcs_spinlock* @decode_tail(i32 noundef %shl.i) #8
  %next94 = getelementptr inbounds %struct.mcs_spinlock, %struct.mcs_spinlock* %call88, i64 0, i32 0
  store volatile %struct.mcs_spinlock* %call78, %struct.mcs_spinlock** %next94, align 8
  %18 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) %locked) #6, !srcloc !13
  %tobool114.not327 = icmp eq i32 %18, 0
  br i1 %tobool114.not327, label %if.end116.lr.ph, label %for.end118

if.end116.lr.ph:                                  ; preds = %if.then87
  %19 = bitcast i32* %locked to i8*
  br label %if.end116

if.end116:                                        ; preds = %if.end116.lr.ph, %if.end116
  call fastcc void @__cmpwait_case_32(i8* noundef %19, i64 noundef 0) #5
  %20 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) %locked) #6, !srcloc !13
  %tobool114.not = icmp eq i32 %20, 0
  br i1 %tobool114.not, label %if.end116, label %for.end118

for.end118:                                       ; preds = %if.end116, %if.then87
  %21 = load volatile %struct.mcs_spinlock*, %struct.mcs_spinlock** %next79, align 8
  %tobool127.not = icmp eq %struct.mcs_spinlock* %21, null
  br i1 %tobool127.not, label %if.end130, label %if.then128

if.then128:                                       ; preds = %for.end118
  %22 = bitcast %struct.mcs_spinlock* %21 to i8*
  call fastcc void @prefetchw(i8* noundef nonnull %22) #7
  br label %if.end130

if.end130:                                        ; preds = %for.end118, %if.then128, %if.end83
  %next.0 = phi %struct.mcs_spinlock* [ %21, %if.then128 ], [ null, %for.end118 ], [ null, %if.end83 ]
  %23 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) %counter.i.i308) #6, !srcloc !14
  %and150328 = and i32 %23, 65535
  %tobool151.not329 = icmp eq i32 %and150328, 0
  br i1 %tobool151.not329, label %for.end155, label %if.end153.lr.ph

if.end153.lr.ph:                                  ; preds = %if.end130
  %24 = bitcast %struct.qspinlock* %lock to i8*
  br label %if.end153

if.end153:                                        ; preds = %if.end153.lr.ph, %if.end153
  %25 = phi i32 [ %23, %if.end153.lr.ph ], [ %26, %if.end153 ]
  %conv154 = sext i32 %25 to i64
  call fastcc void @__cmpwait_case_32(i8* noundef %24, i64 noundef %conv154) #5
  %26 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) %counter.i.i308) #6, !srcloc !14
  %and150 = and i32 %26, 65535
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %for.end155, label %if.end153

for.end155:                                       ; preds = %if.end153, %if.end130
  %.lcssa323 = phi i32 [ %23, %if.end130 ], [ %26, %if.end153 ]
  %and158 = and i32 %.lcssa323, -65536
  %cmp159 = icmp eq i32 %and158, %call62
  br i1 %cmp159, label %if.then161, label %if.end166

if.then161:                                       ; preds = %for.end155
  %27 = bitcast %struct.qspinlock* %lock to i8*
  %call11.i.i.i = call fastcc i32 @__cmpxchg_case_32(i8* noundef %27, i32 noundef %.lcssa323) #5
  %cmp.not.i.i = icmp eq i32 %.lcssa323, %call11.i.i.i
  br i1 %cmp.not.i.i, label %release, label %if.end166

if.end166:                                        ; preds = %for.end155, %if.then161
  %locked.i.pre-phi = bitcast %struct.qspinlock* %lock to i8*
  store volatile i8 1, i8* %locked.i.pre-phi, align 4
  %tobool167.not = icmp eq %struct.mcs_spinlock* %next.0, null
  br i1 %tobool167.not, label %for.cond172.preheader, label %do.body183

for.cond172.preheader:                            ; preds = %if.end166
  %28 = load volatile %struct.mcs_spinlock*, %struct.mcs_spinlock** %next79, align 8
  %tobool177.not331 = icmp eq %struct.mcs_spinlock* %28, null
  br i1 %tobool177.not331, label %if.end179.lr.ph, label %do.body183

if.end179.lr.ph:                                  ; preds = %for.cond172.preheader
  %29 = bitcast %struct.mcs_spinlock* %call78 to i8*
  br label %if.end179

if.end179:                                        ; preds = %if.end179.lr.ph, %if.end179
  call fastcc void @__cmpwait_case_64(i8* noundef %29, i64 noundef 0) #5
  %30 = load volatile %struct.mcs_spinlock*, %struct.mcs_spinlock** %next79, align 8
  %tobool177.not = icmp eq %struct.mcs_spinlock* %30, null
  br i1 %tobool177.not, label %if.end179, label %do.body183

do.body183:                                       ; preds = %if.end179, %for.cond172.preheader, %if.end166
  %next.1 = phi %struct.mcs_spinlock* [ %next.0, %if.end166 ], [ %28, %for.cond172.preheader ], [ %30, %if.end179 ]
  %locked185 = getelementptr inbounds %struct.mcs_spinlock, %struct.mcs_spinlock* %next.1, i64 0, i32 1
  call void asm sideeffect "stlr ${1:w}, $0", "=*Q,r,~{memory}"(i32* elementtype(i32) %locked185, i32 1) #6, !srcloc !15
  br label %release

release:                                          ; preds = %queued_spin_trylock.exit, %if.then161, %queued_spin_trylock.exit315, %do.body183
  %call208 = call fastcc i64 @__kern_my_cpu_offset() #7
  %add209 = add i64 %call208, ptrtoint (i32* getelementptr inbounds ([4 x %struct.qnode], [4 x %struct.qnode]* @qnodes, i64 0, i64 0, i32 0, i32 2) to i64)
  %31 = inttoptr i64 %add209 to i32*
  %32 = load i32, i32* %31, align 4
  %add210 = add i32 %32, -1
  store i32 %add210, i32* %31, align 4
  br label %cleanup

cleanup:                                          ; preds = %release, %if.end46
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #1 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #9, !srcloc !16
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @encode_tail(i32 noundef %cpu, i32 noundef %idx) unnamed_addr #2 {
entry:
  %add = shl i32 %cpu, 18
  %shl = add i32 %add, 262144
  %shl1 = shl i32 %idx, 16
  %or = or i32 %shl, %shl1
  ret i32 %or
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #0 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #6, !srcloc !17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.mcs_spinlock* @grab_mcs_node(%struct.mcs_spinlock* noundef readnone %base, i32 noundef %idx) unnamed_addr #2 {
entry:
  %idx.ext = sext i32 %idx to i64
  %add.ptr1 = getelementptr %struct.mcs_spinlock, %struct.mcs_spinlock* %base, i64 %idx.ext
  ret %struct.mcs_spinlock* %add.ptr1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.mcs_spinlock* @decode_tail(i32 noundef %tail) unnamed_addr #3 {
entry:
  %shr = lshr i32 %tail, 18
  %sub = add nsw i32 %shr, -1
  %and = lshr i32 %tail, 16
  %shr1 = and i32 %and, 3
  %0 = zext i32 %shr1 to i64
  %mcs = getelementptr [4 x %struct.qnode], [4 x %struct.qnode]* @qnodes, i64 0, i64 %0, i32 0
  %1 = ptrtoint %struct.mcs_spinlock* %mcs to i64
  %idxprom3 = sext i32 %sub to i64
  %arrayidx4 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom3
  %2 = load i64, i64* %arrayidx4, align 8
  %add = add i64 %2, %1
  %3 = inttoptr i64 %add to %struct.mcs_spinlock*
  ret %struct.mcs_spinlock* %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @prefetchw(i8* noundef %ptr) unnamed_addr #0 {
entry:
  call void asm sideeffect "prfm pstl1keep, ${0:a}\0A", "r"(i8* %ptr) #6, !srcloc !18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__cmpwait_case_32(i8* noundef %ptr, i64 noundef %val) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call i64 asm sideeffect "\09sevl\0A\09wfe\0A\09ldxr\09${0:w}, $1\0A\09eor\09${0:w}, ${0:w}, ${2:w}\0A\09cbnz\09${0:w}, 1f\0A\09wfe\0A1:", "=&r,=*Q,r,*Q"(i64* elementtype(i64) %0, i64 %val, i64* elementtype(i64) %0) #6, !srcloc !19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__cmpwait_case_64(i8* noundef %ptr, i64 noundef %val) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call i64 asm sideeffect "\09sevl\0A\09wfe\0A\09ldxr\09$0, $1\0A\09eor\09$0, $0, $2\0A\09cbnz\09$0, 1f\0A\09wfe\0A1:", "=&r,=*Q,r,*Q"(i64* elementtype(i64) %0, i64 %val, i64* elementtype(i64) %0) #6, !srcloc !20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_or_acquire(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_or_acquire\0A\09prfm\09pstl1strm, $3\0A1:\09ldaxr\09${0:w}, $3\0A\09orr\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Kr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 256, i32* elementtype(i32) %counter) #6, !srcloc !21
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #6, !srcloc !22
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i16 @__xchg_case_16(i16 noundef %x, i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i16*
  %1 = call { i16, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxrh\09${0:w}, $2\0A\09stxrh\09${1:w}, ${3:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,r,*Q"(i16* elementtype(i16) %0, i16 %x, i16* elementtype(i16) %0) #6, !srcloc !23
  %asmresult = extractvalue { i16, i64 } %1, 0
  ret i16 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_32(i8* noundef %ptr, i64 noundef %conv) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #6, !srcloc !24
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nofree nounwind readonly }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #9 = { nounwind readonly }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"frame-pointer", i32 1}
!7 = !{!"clang version 14.0.0"}
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2151968724}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2151972827}
!12 = !{i64 2151972907}
!13 = !{i64 2151977211}
!14 = !{i64 2151984626}
!15 = !{i64 2151992148}
!16 = !{i64 2148842991, i64 2148843038, i64 2148843044, i64 2148843081, i64 2148843099, i64 2148844026, i64 2148844074, i64 2148844122, i64 2148844185, i64 2148844234, i64 2148843177, i64 2148843202, i64 2148843228, i64 2148843234, i64 2148843271, i64 2148843277, i64 2148843327, i64 2148843373, i64 2148843406}
!17 = !{i64 1834644}
!18 = !{i64 1832101}
!19 = !{i64 2147948733, i64 2147948753, i64 2147948771, i64 2147948814, i64 2147948867, i64 2147948900, i64 2147948918}
!20 = !{i64 2147949403, i64 2147949423, i64 2147949441, i64 2147949484, i64 2147949537, i64 2147949570, i64 2147949588}
!21 = !{i64 2147813381, i64 2147814052, i64 2147814082, i64 2147814115, i64 2147814149, i64 2147814184, i64 2147814209}
!22 = !{i64 2147881909, i64 2147881942, i64 2147881995, i64 2147882054, i64 2147882088, i64 2147882143, i64 2147882172, i64 2147882192}
!23 = !{i64 2147905713, i64 2147905745, i64 2147905791, i64 2147905839, i64 2147905865}
!24 = !{i64 2147875371, i64 2147875404, i64 2147875456, i64 2147875515, i64 2147875549, i64 2147875604, i64 2147875633, i64 2147875653}
