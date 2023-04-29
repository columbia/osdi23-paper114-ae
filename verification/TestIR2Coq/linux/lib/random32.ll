; ModuleID = 'lib/random32.c'
source_filename = "lib/random32.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall1.init\22, \22a\22\09\09"
module asm "__initcall__kmod_random32__419_489_prandom_init_early1:\09\09\09"
module asm ".long\09prandom_init_early - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section\09\22.initcall7.init\22, \22a\22\09\09"
module asm "__initcall__kmod_random32__425_632_prandom_init_late7:\09\09\09"
module asm ".long\09prandom_init_late - .\09"
module asm ".previous\09\09\09\09\09"

%struct.cpumask = type { [4 x i64] }
%struct.siprand_state = type { i64, i64, i64, i64 }
%struct.random_ready_callback = type { %struct.list_head, void (%struct.random_ready_callback*)*, %struct.module* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.module = type opaque
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.rnd_state = type { i32, i32, i32, i32 }

@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@net_rand_state = internal global %struct.siprand_state zeroinitializer, section ".data..percpu", align 8
@__UNIQUE_ID___addressable_prandom_init_early420 = internal global i8* bitcast (i32 ()* @prandom_init_early to i8*), section ".discard.addressable", align 8
@__UNIQUE_ID___addressable_prandom_init_late426 = internal global i8* bitcast (i32 ()* @prandom_init_late to i8*), section ".discard.addressable", align 8
@net_rand_noise = dso_local global i64 0, section ".data..percpu", align 8
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@arch_timer_read_counter = external dso_local local_unnamed_addr global i64 ()*, align 8
@prandom_init_late.random_ready = internal global %struct.random_ready_callback { %struct.list_head zeroinitializer, void (%struct.random_ready_callback*)* @prandom_timer_start, %struct.module* null }, align 8
@seed_timer = internal global %struct.timer_list { %struct.hlist_node { %struct.hlist_node* inttoptr (i64 -2401263026318605568 to %struct.hlist_node*), %struct.hlist_node** null }, i64 0, void (%struct.timer_list*)* @prandom_reseed, i32 0 }, align 8
@llvm.compiler.used = appending global [2 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_prandom_init_early420 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_prandom_init_late426 to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local i32 @prandom_u32_state(%struct.rnd_state* nocapture noundef %state) local_unnamed_addr #0 {
entry:
  %s1 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %state, i64 0, i32 0
  %0 = load i32, i32* %s1, align 4
  %and = shl i32 %0, 18
  %shl = and i32 %and, -524288
  %shl2 = shl i32 %0, 6
  %xor = xor i32 %shl2, %0
  %shr = lshr i32 %xor, 13
  %xor459 = or i32 %shr, %shl
  store i32 %xor459, i32* %s1, align 4
  %s2 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %state, i64 0, i32 1
  %1 = load i32, i32* %s2, align 4
  %and6 = shl i32 %1, 2
  %shl7 = and i32 %and6, -32
  %xor11 = xor i32 %and6, %1
  %shr12 = lshr i32 %xor11, 27
  %xor1360 = or i32 %shr12, %shl7
  store i32 %xor1360, i32* %s2, align 4
  %s3 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %state, i64 0, i32 2
  %2 = load i32, i32* %s3, align 4
  %and15 = shl i32 %2, 7
  %shl16 = and i32 %and15, -2048
  %shl18 = shl i32 %2, 13
  %xor20 = xor i32 %shl18, %2
  %shr21 = lshr i32 %xor20, 21
  %xor2261 = or i32 %shr21, %shl16
  store i32 %xor2261, i32* %s3, align 4
  %s4 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %state, i64 0, i32 3
  %3 = load i32, i32* %s4, align 4
  %and24 = shl i32 %3, 13
  %shl25 = and i32 %and24, -1048576
  %shl27 = shl i32 %3, 3
  %xor29 = xor i32 %shl27, %3
  %shr30 = lshr i32 %xor29, 12
  %xor3162 = or i32 %shr30, %shl25
  store i32 %xor3162, i32* %s4, align 4
  %xor35 = xor i32 %xor1360, %xor459
  %xor37 = xor i32 %xor35, %xor2261
  %xor39 = xor i32 %xor37, %xor3162
  ret i32 %xor39
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local void @prandom_bytes_state(%struct.rnd_state* nocapture noundef %state, i8* nocapture noundef writeonly %buf, i64 noundef %bytes) local_unnamed_addr #1 {
entry:
  %cmp19 = icmp ugt i64 %bytes, 3
  br i1 %cmp19, label %do.body, label %while.end

do.body:                                          ; preds = %entry, %do.body
  %bytes.addr.021 = phi i64 [ %sub, %do.body ], [ %bytes, %entry ]
  %ptr.020 = phi i8* [ %add.ptr, %do.body ], [ %buf, %entry ]
  %call = call i32 @prandom_u32_state(%struct.rnd_state* noundef %state) #14
  %x = bitcast i8* %ptr.020 to i32*
  store i32 %call, i32* %x, align 1
  %add.ptr = getelementptr i8, i8* %ptr.020, i64 4
  %sub = add i64 %bytes.addr.021, -4
  %cmp = icmp ugt i64 %sub, 3
  br i1 %cmp, label %do.body, label %while.end

while.end:                                        ; preds = %do.body, %entry
  %ptr.0.lcssa = phi i8* [ %buf, %entry ], [ %add.ptr, %do.body ]
  %bytes.addr.0.lcssa = phi i64 [ %bytes, %entry ], [ %sub, %do.body ]
  %cmp1.not = icmp eq i64 %bytes.addr.0.lcssa, 0
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  %call2 = call i32 @prandom_u32_state(%struct.rnd_state* noundef %state) #14
  br label %do.body3

do.body3:                                         ; preds = %do.body3, %if.then
  %ptr.1 = phi i8* [ %ptr.0.lcssa, %if.then ], [ %incdec.ptr, %do.body3 ]
  %bytes.addr.1 = phi i64 [ %bytes.addr.0.lcssa, %if.then ], [ %dec, %do.body3 ]
  %rem.0 = phi i32 [ %call2, %if.then ], [ %shr, %do.body3 ]
  %conv = trunc i32 %rem.0 to i8
  %incdec.ptr = getelementptr i8, i8* %ptr.1, i64 1
  store i8 %conv, i8* %ptr.1, align 1
  %dec = add i64 %bytes.addr.1, -1
  %shr = lshr i32 %rem.0, 8
  %cmp5.not = icmp eq i64 %dec, 0
  br i1 %cmp5.not, label %if.end, label %do.body3

if.end:                                           ; preds = %do.body3, %while.end
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @prandom_seed_full_state(%struct.rnd_state* noundef %pcpu_state) local_unnamed_addr #3 {
entry:
  %seeds = alloca [4 x i32], align 4
  %call20 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #15
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp21 = icmp ult i32 %call20, %0
  br i1 %cmp21, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %1 = ptrtoint %struct.rnd_state* %pcpu_state to i64
  %2 = bitcast [4 x i32]* %seeds to i8*
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %seeds, i64 0, i64 0
  %arrayidx4 = getelementptr inbounds [4 x i32], [4 x i32]* %seeds, i64 0, i64 1
  %arrayidx6 = getelementptr inbounds [4 x i32], [4 x i32]* %seeds, i64 0, i64 2
  %arrayidx8 = getelementptr inbounds [4 x i32], [4 x i32]* %seeds, i64 0, i64 3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %call22 = phi i32 [ %call20, %for.body.lr.ph ], [ %call, %for.body ]
  %idxprom = sext i32 %call22 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add = add i64 %3, %1
  %4 = inttoptr i64 %add to %struct.rnd_state*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !8
  call void @get_random_bytes(i8* noundef nonnull %2, i32 noundef 16) #17
  %5 = load i32, i32* %arrayidx2, align 4
  %call3 = call fastcc i32 @__seed(i32 noundef %5, i32 noundef 2) #14
  %s1 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %4, i64 0, i32 0
  store i32 %call3, i32* %s1, align 4
  %6 = load i32, i32* %arrayidx4, align 4
  %call5 = call fastcc i32 @__seed(i32 noundef %6, i32 noundef 8) #14
  %s2 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %4, i64 0, i32 1
  store i32 %call5, i32* %s2, align 4
  %7 = load i32, i32* %arrayidx6, align 4
  %call7 = call fastcc i32 @__seed(i32 noundef %7, i32 noundef 16) #14
  %s3 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %4, i64 0, i32 2
  store i32 %call7, i32* %s3, align 4
  %8 = load i32, i32* %arrayidx8, align 4
  %call9 = call fastcc i32 @__seed(i32 noundef %8, i32 noundef 128) #14
  %s4 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %4, i64 0, i32 3
  store i32 %call9, i32* %s4, align 4
  call fastcc void @prandom_warmup(%struct.rnd_state* noundef %4) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #16
  %call = call i32 @cpumask_next(i32 noundef %call22, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #15
  %9 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %9
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(i8* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__seed(i32 noundef %x, i32 noundef %m) unnamed_addr #7 {
entry:
  %cmp = icmp ult i32 %x, %m
  %add = select i1 %cmp, i32 %m, i32 0
  %cond = add i32 %add, %x
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @prandom_warmup(%struct.rnd_state* nocapture noundef %state) unnamed_addr #0 {
entry:
  %call = call i32 @prandom_u32_state(%struct.rnd_state* noundef %state) #14
  %call1 = call i32 @prandom_u32_state(%struct.rnd_state* noundef %state) #14
  %call2 = call i32 @prandom_u32_state(%struct.rnd_state* noundef %state) #14
  %call3 = call i32 @prandom_u32_state(%struct.rnd_state* noundef %state) #14
  %call4 = call i32 @prandom_u32_state(%struct.rnd_state* noundef %state) #14
  %call5 = call i32 @prandom_u32_state(%struct.rnd_state* noundef %state) #14
  %call6 = call i32 @prandom_u32_state(%struct.rnd_state* noundef %state) #14
  %call7 = call i32 @prandom_u32_state(%struct.rnd_state* noundef %state) #14
  %call8 = call i32 @prandom_u32_state(%struct.rnd_state* noundef %state) #14
  %call9 = call i32 @prandom_u32_state(%struct.rnd_state* noundef %state) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @prandom_u32() local_unnamed_addr #3 {
entry:
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  %call = call fastcc i64 @__kern_my_cpu_offset() #14
  %add = add i64 %call, ptrtoint (%struct.siprand_state* @net_rand_state to i64)
  %0 = inttoptr i64 %add to %struct.siprand_state*
  %call3 = call fastcc i32 @siprand_u32(%struct.siprand_state* noundef %0) #14
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !10
  ret i32 %call3
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #8 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #18, !srcloc !11
  ret i64 %2
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc i32 @siprand_u32(%struct.siprand_state* nocapture noundef %s) unnamed_addr #9 {
entry:
  %v01 = getelementptr inbounds %struct.siprand_state, %struct.siprand_state* %s, i64 0, i32 0
  %0 = load i64, i64* %v01, align 8
  %v12 = getelementptr inbounds %struct.siprand_state, %struct.siprand_state* %s, i64 0, i32 1
  %1 = load i64, i64* %v12, align 8
  %v23 = getelementptr inbounds %struct.siprand_state, %struct.siprand_state* %s, i64 0, i32 2
  %2 = load i64, i64* %v23, align 8
  %v34 = getelementptr inbounds %struct.siprand_state, %struct.siprand_state* %s, i64 0, i32 3
  %3 = load i64, i64* %v34, align 8
  %call = call fastcc i64 @__kern_my_cpu_offset() #14
  %add = add i64 %call, ptrtoint (i64* @net_rand_noise to i64)
  %4 = inttoptr i64 %add to i64*
  %5 = load i64, i64* %4, align 8
  %xor = xor i64 %5, %3
  %add12 = add i64 %1, %0
  %call13 = call fastcc i64 @rol64(i64 noundef %1, i32 noundef 13) #14
  %add14 = add i64 %xor, %2
  %call15 = call fastcc i64 @rol64(i64 noundef %xor, i32 noundef 16) #14
  %xor16 = xor i64 %call13, %add12
  %call17 = call fastcc i64 @rol64(i64 noundef %add12, i32 noundef 32) #14
  %xor18 = xor i64 %call15, %add14
  %add19 = add i64 %call17, %xor18
  %call20 = call fastcc i64 @rol64(i64 noundef %xor18, i32 noundef 21) #14
  %add21 = add i64 %add14, %xor16
  %call22 = call fastcc i64 @rol64(i64 noundef %xor16, i32 noundef 17) #14
  %xor23 = xor i64 %call20, %add19
  %xor24 = xor i64 %call22, %add21
  %call25 = call fastcc i64 @rol64(i64 noundef %add21, i32 noundef 32) #14
  %add26 = add i64 %xor24, %add19
  %call27 = call fastcc i64 @rol64(i64 noundef %xor24, i32 noundef 13) #14
  %add28 = add i64 %call25, %xor23
  %call29 = call fastcc i64 @rol64(i64 noundef %xor23, i32 noundef 16) #14
  %xor30 = xor i64 %call27, %add26
  %call31 = call fastcc i64 @rol64(i64 noundef %add26, i32 noundef 32) #14
  %xor32 = xor i64 %call29, %add28
  %add33 = add i64 %call31, %xor32
  %call34 = call fastcc i64 @rol64(i64 noundef %xor32, i32 noundef 21) #14
  %add35 = add i64 %xor30, %add28
  %call36 = call fastcc i64 @rol64(i64 noundef %xor30, i32 noundef 17) #14
  %xor37 = xor i64 %call34, %add33
  %xor38 = xor i64 %call36, %add35
  %call39 = call fastcc i64 @rol64(i64 noundef %add35, i32 noundef 32) #14
  %xor40 = xor i64 %add33, %5
  store i64 %xor40, i64* %v01, align 8
  store i64 %xor38, i64* %v12, align 8
  store i64 %call39, i64* %v23, align 8
  store i64 %xor37, i64* %v34, align 8
  %add45 = add i64 %xor38, %xor37
  %conv = trunc i64 %add45 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @prandom_bytes(i8* nocapture noundef writeonly %buf, i64 noundef %bytes) local_unnamed_addr #3 {
entry:
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  %call = call fastcc i64 @__kern_my_cpu_offset() #14
  %add = add i64 %call, ptrtoint (%struct.siprand_state* @net_rand_state to i64)
  %0 = inttoptr i64 %add to %struct.siprand_state*
  %cmp30 = icmp ugt i64 %bytes, 3
  br i1 %cmp30, label %do.body3, label %while.end

do.body3:                                         ; preds = %entry, %do.body3
  %bytes.addr.032 = phi i64 [ %sub, %do.body3 ], [ %bytes, %entry ]
  %ptr.031 = phi i8* [ %add.ptr, %do.body3 ], [ %buf, %entry ]
  %call4 = call fastcc i32 @siprand_u32(%struct.siprand_state* noundef %0) #14
  %x = bitcast i8* %ptr.031 to i32*
  store i32 %call4, i32* %x, align 1
  %add.ptr = getelementptr i8, i8* %ptr.031, i64 4
  %sub = add i64 %bytes.addr.032, -4
  %cmp = icmp ugt i64 %sub, 3
  br i1 %cmp, label %do.body3, label %while.end

while.end:                                        ; preds = %do.body3, %entry
  %ptr.0.lcssa = phi i8* [ %buf, %entry ], [ %add.ptr, %do.body3 ]
  %bytes.addr.0.lcssa = phi i64 [ %bytes, %entry ], [ %sub, %do.body3 ]
  %cmp7.not = icmp eq i64 %bytes.addr.0.lcssa, 0
  br i1 %cmp7.not, label %do.body14, label %if.then

if.then:                                          ; preds = %while.end
  %call8 = call fastcc i32 @siprand_u32(%struct.siprand_state* noundef %0) #14
  br label %do.body9

do.body9:                                         ; preds = %do.body9, %if.then
  %ptr.1 = phi i8* [ %ptr.0.lcssa, %if.then ], [ %incdec.ptr, %do.body9 ]
  %bytes.addr.1 = phi i64 [ %bytes.addr.0.lcssa, %if.then ], [ %dec, %do.body9 ]
  %rem.0 = phi i32 [ %call8, %if.then ], [ %shr, %do.body9 ]
  %conv = trunc i32 %rem.0 to i8
  %incdec.ptr = getelementptr i8, i8* %ptr.1, i64 1
  store i8 %conv, i8* %ptr.1, align 1
  %shr = lshr i32 %rem.0, 8
  %dec = add i64 %bytes.addr.1, -1
  %cmp11.not = icmp eq i64 %dec, 0
  br i1 %cmp11.not, label %do.body14, label %do.body9

do.body14:                                        ; preds = %do.body9, %while.end
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @prandom_seed(i32 noundef %entropy) local_unnamed_addr #3 {
entry:
  %entropy.addr = alloca i32, align 4
  store i32 %entropy, i32* %entropy.addr, align 4
  %0 = bitcast i32* %entropy.addr to i8*
  call void @add_device_randomness(i8* noundef nonnull %0, i32 noundef 4) #17
  %call155 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #15
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp156 = icmp ult i32 %call155, %1
  br i1 %cmp156, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = load i32, i32* %entropy.addr, align 4
  %conv = zext i32 %2 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %do.body51
  %call157 = phi i32 [ %call155, %for.body.lr.ph ], [ %call, %do.body51 ]
  %idxprom = sext i32 %call157 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add = add i64 %3, ptrtoint (%struct.siprand_state* @net_rand_state to i64)
  %4 = inttoptr i64 %add to %struct.siprand_state*
  %v02 = getelementptr inbounds %struct.siprand_state, %struct.siprand_state* %4, i64 0, i32 0
  %5 = load i64, i64* %v02, align 8
  %v13 = getelementptr inbounds %struct.siprand_state, %struct.siprand_state* %4, i64 0, i32 1
  %6 = load i64, i64* %v13, align 8
  %v24 = getelementptr inbounds %struct.siprand_state, %struct.siprand_state* %4, i64 0, i32 2
  %7 = load i64, i64* %v24, align 8
  %v35 = getelementptr inbounds %struct.siprand_state, %struct.siprand_state* %4, i64 0, i32 3
  %8 = load i64, i64* %v35, align 8
  br label %do.body6

do.body6:                                         ; preds = %do.body6, %for.body
  %v0.0 = phi i64 [ %5, %for.body ], [ %xor36, %do.body6 ]
  %v1.0 = phi i64 [ %6, %for.body ], [ %xor33, %do.body6 ]
  %v2.0 = phi i64 [ %7, %for.body ], [ %call34, %do.body6 ]
  %v3.0 = phi i64 [ %8, %for.body ], [ %xor32, %do.body6 ]
  %xor = xor i64 %v3.0, %conv
  %add7 = add i64 %v1.0, %v0.0
  %call8 = call fastcc i64 @rol64(i64 noundef %v1.0, i32 noundef 13) #14
  %add9 = add i64 %xor, %v2.0
  %call10 = call fastcc i64 @rol64(i64 noundef %xor, i32 noundef 16) #14
  %xor11 = xor i64 %call8, %add7
  %call12 = call fastcc i64 @rol64(i64 noundef %add7, i32 noundef 32) #14
  %xor13 = xor i64 %add9, %call10
  %add14 = add i64 %xor13, %call12
  %call15 = call fastcc i64 @rol64(i64 noundef %xor13, i32 noundef 21) #14
  %add16 = add i64 %add9, %xor11
  %call17 = call fastcc i64 @rol64(i64 noundef %xor11, i32 noundef 17) #14
  %xor18 = xor i64 %add14, %call15
  %xor19 = xor i64 %call17, %add16
  %call20 = call fastcc i64 @rol64(i64 noundef %add16, i32 noundef 32) #14
  %add21 = add i64 %xor19, %add14
  %call22 = call fastcc i64 @rol64(i64 noundef %xor19, i32 noundef 13) #14
  %add23 = add i64 %call20, %xor18
  %call24 = call fastcc i64 @rol64(i64 noundef %xor18, i32 noundef 16) #14
  %xor25 = xor i64 %call22, %add21
  %call26 = call fastcc i64 @rol64(i64 noundef %add21, i32 noundef 32) #14
  %xor27 = xor i64 %call24, %add23
  %add28 = add i64 %call26, %xor27
  %call29 = call fastcc i64 @rol64(i64 noundef %xor27, i32 noundef 21) #14
  %add30 = add i64 %xor25, %add23
  %call31 = call fastcc i64 @rol64(i64 noundef %xor25, i32 noundef 17) #14
  %xor32 = xor i64 %call29, %add28
  %xor33 = xor i64 %call31, %add30
  %call34 = call fastcc i64 @rol64(i64 noundef %add30, i32 noundef 32) #14
  %xor36 = xor i64 %add28, %conv
  %tobool = icmp eq i64 %xor36, 0
  %tobool38 = icmp eq i64 %xor33, 0
  %or.cond = select i1 %tobool, i1 true, i1 %tobool38
  %tobool40 = icmp eq i64 %call34, 0
  %or.cond87 = select i1 %or.cond, i1 true, i1 %tobool40
  %tobool41.not = icmp eq i64 %xor32, 0
  %9 = select i1 %or.cond87, i1 true, i1 %tobool41.not
  br i1 %9, label %do.body6, label %do.body51, !prof !14

do.body51:                                        ; preds = %do.body6
  store volatile i64 %xor36, i64* %v02, align 8
  store volatile i64 %xor33, i64* %v13, align 8
  store volatile i64 %call34, i64* %v24, align 8
  store volatile i64 %xor32, i64* %v35, align 8
  %call = call i32 @cpumask_next(i32 noundef %call157, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #15
  %10 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %10
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %do.body51, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_device_randomness(i8* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @rol64(i64 noundef %word, i32 noundef %shift) unnamed_addr #10 {
entry:
  %sh_prom = zext i32 %shift to i64
  %or = call i64 @llvm.fshl.i64(i64 %word, i64 %word, i64 %sh_prom)
  ret i64 %or
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @prandom_init_early() #11 section ".init.text" {
entry:
  %0 = load volatile i64, i64* @jiffies, align 64
  %1 = load i64 ()*, i64 ()** @arch_timer_read_counter, align 8
  %call3 = call i64 %1() #17
  %call690 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #15
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %cmp91 = icmp ult i32 %call690, %2
  br i1 %cmp91, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %xor5 = xor i64 %call3, 1155760456901593630
  %xor = xor i64 %0, 2239988860284442388
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %call696 = phi i32 [ %call6, %for.body ], [ %call690, %for.body.preheader ]
  %v2.095 = phi i64 [ %call34, %for.body ], [ %xor, %for.body.preheader ]
  %v3.094 = phi i64 [ %xor32, %for.body ], [ %xor5, %for.body.preheader ]
  %v1.093 = phi i64 [ %xor33, %for.body ], [ %call3, %for.body.preheader ]
  %v0.092 = phi i64 [ %xor36, %for.body ], [ %0, %for.body.preheader ]
  %conv = sext i32 %call696 to i64
  %xor7 = xor i64 %v3.094, %conv
  %add = add i64 %v1.093, %v0.092
  %call8 = call fastcc i64 @rol64(i64 noundef %v1.093, i32 noundef 13) #14
  %add9 = add i64 %xor7, %v2.095
  %call10 = call fastcc i64 @rol64(i64 noundef %xor7, i32 noundef 16) #14
  %xor11 = xor i64 %call8, %add
  %call12 = call fastcc i64 @rol64(i64 noundef %add, i32 noundef 32) #14
  %xor13 = xor i64 %call10, %add9
  %add14 = add i64 %call12, %xor13
  %call15 = call fastcc i64 @rol64(i64 noundef %xor13, i32 noundef 21) #14
  %add16 = add i64 %xor11, %add9
  %call17 = call fastcc i64 @rol64(i64 noundef %xor11, i32 noundef 17) #14
  %xor18 = xor i64 %call15, %add14
  %xor19 = xor i64 %call17, %add16
  %call20 = call fastcc i64 @rol64(i64 noundef %add16, i32 noundef 32) #14
  %add21 = add i64 %xor19, %add14
  %call22 = call fastcc i64 @rol64(i64 noundef %xor19, i32 noundef 13) #14
  %add23 = add i64 %call20, %xor18
  %call24 = call fastcc i64 @rol64(i64 noundef %xor18, i32 noundef 16) #14
  %xor25 = xor i64 %call22, %add21
  %call26 = call fastcc i64 @rol64(i64 noundef %add21, i32 noundef 32) #14
  %xor27 = xor i64 %call24, %add23
  %add28 = add i64 %call26, %xor27
  %call29 = call fastcc i64 @rol64(i64 noundef %xor27, i32 noundef 21) #14
  %add30 = add i64 %xor25, %add23
  %call31 = call fastcc i64 @rol64(i64 noundef %xor25, i32 noundef 17) #14
  %xor32 = xor i64 %call29, %add28
  %xor33 = xor i64 %call31, %add30
  %call34 = call fastcc i64 @rol64(i64 noundef %add30, i32 noundef 32) #14
  %xor36 = xor i64 %add28, %conv
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %conv
  %3 = load i64, i64* %arrayidx, align 8
  %add38 = add i64 %3, ptrtoint (%struct.siprand_state* @net_rand_state to i64)
  %4 = inttoptr i64 %add38 to %struct.siprand_state*
  %v039 = getelementptr inbounds %struct.siprand_state, %struct.siprand_state* %4, i64 0, i32 0
  store i64 %xor36, i64* %v039, align 8
  %v140 = getelementptr inbounds %struct.siprand_state, %struct.siprand_state* %4, i64 0, i32 1
  store i64 %xor33, i64* %v140, align 8
  %v241 = getelementptr inbounds %struct.siprand_state, %struct.siprand_state* %4, i64 0, i32 2
  store i64 %call34, i64* %v241, align 8
  %v342 = getelementptr inbounds %struct.siprand_state, %struct.siprand_state* %4, i64 0, i32 3
  store i64 %xor32, i64* %v342, align 8
  %call6 = call i32 @cpumask_next(i32 noundef %call696, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #15
  %5 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call6, %5
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret i32 0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @prandom_init_late() #11 section ".init.text" {
entry:
  %call = call i32 @add_random_ready_callback(%struct.random_ready_callback* noundef nonnull @prandom_init_late.random_ready) #17
  %cmp = icmp eq i32 %call, -114
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @prandom_timer_start(%struct.random_ready_callback* noundef nonnull @prandom_init_late.random_ready) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ 0, %if.then ], [ %call, %entry ]
  ret i32 %ret.0
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #12

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @prandom_timer_start(%struct.random_ready_callback* nocapture noundef readnone %unused) #3 {
entry:
  %0 = load volatile i64, i64* @jiffies, align 64
  %call = call i32 @mod_timer(%struct.timer_list* noundef nonnull @seed_timer, i64 noundef %0) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_random_ready_callback(%struct.random_ready_callback* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(%struct.timer_list* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @prandom_reseed(%struct.timer_list* nocapture noundef readnone %unused) #3 {
entry:
  %call85 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #15
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp86 = icmp ult i32 %call85, %0
  br i1 %cmp86, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %call87 = phi i32 [ %call, %for.body ], [ %call85, %entry ]
  %call1 = call fastcc i64 @get_random_long() #14
  %xor = xor i64 %call1, 2239988860284442388
  %call2 = call fastcc i64 @get_random_long() #14
  %xor3 = xor i64 %call2, 1155760456901593630
  %idxprom = sext i32 %call87 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.siprand_state* @net_rand_state to i64)
  %2 = inttoptr i64 %add to %struct.siprand_state*
  %tobool.not = icmp eq i64 %call1, 0
  %cond = select i1 %tobool.not, i64 -1, i64 %call1
  %v010 = getelementptr inbounds %struct.siprand_state, %struct.siprand_state* %2, i64 0, i32 0
  store volatile i64 %cond, i64* %v010, align 8
  %tobool20.not = icmp eq i64 %call2, 0
  %cond24 = select i1 %tobool20.not, i64 -1, i64 %call2
  %v125 = getelementptr inbounds %struct.siprand_state, %struct.siprand_state* %2, i64 0, i32 1
  store volatile i64 %cond24, i64* %v125, align 8
  %tobool35.not = icmp eq i64 %xor, 0
  %cond39 = select i1 %tobool35.not, i64 -1, i64 %xor
  %v240 = getelementptr inbounds %struct.siprand_state, %struct.siprand_state* %2, i64 0, i32 2
  store volatile i64 %cond39, i64* %v240, align 8
  %tobool50.not = icmp eq i64 %xor3, 0
  %cond54 = select i1 %tobool50.not, i64 -1, i64 %xor3
  %v355 = getelementptr inbounds %struct.siprand_state, %struct.siprand_state* %2, i64 0, i32 3
  store volatile i64 %cond54, i64* %v355, align 8
  %call = call i32 @cpumask_next(i32 noundef %call87, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #15
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %3
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %4 = load volatile i64, i64* @jiffies, align 64
  %add60 = add i64 %4, 10000
  %call61 = call fastcc i32 @prandom_u32_max() #14
  %conv = zext i32 %call61 to i64
  %add62 = add i64 %add60, %conv
  %call63 = call i64 @round_jiffies(i64 noundef %add62) #17
  %call64 = call i32 @mod_timer(%struct.timer_list* noundef nonnull @seed_timer, i64 noundef %call63) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @get_random_long() unnamed_addr #3 {
entry:
  %call = call i64 @get_random_u64() #17
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @round_jiffies(i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @prandom_u32_max() unnamed_addr #3 {
entry:
  %call = call i32 @prandom_u32() #14
  %conv = zext i32 %call to i64
  %mul = mul nuw nsw i64 %conv, 10000
  %shr = lshr i64 %mul, 32
  %conv2 = trunc i64 %shr to i32
  ret i32 %conv2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_random_u64() local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #13

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nofree nounwind readonly }
attributes #13 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nobuiltin "no-builtins" }
attributes #15 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #16 = { nounwind }
attributes #17 = { nobuiltin nounwind "no-builtins" }
attributes #18 = { nounwind readonly }

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
!8 = !{!"auto-init"}
!9 = !{i64 2154943122}
!10 = !{i64 2154944030}
!11 = !{i64 2148849675, i64 2148849722, i64 2148849728, i64 2148849765, i64 2148849783, i64 2148850710, i64 2148850758, i64 2148850806, i64 2148850869, i64 2148850918, i64 2148849861, i64 2148849886, i64 2148849912, i64 2148849918, i64 2148849955, i64 2148849961, i64 2148850011, i64 2148850057, i64 2148850090}
!12 = !{i64 2154944247}
!13 = !{i64 2154945452}
!14 = !{!"branch_weights", i32 1, i32 2000}
