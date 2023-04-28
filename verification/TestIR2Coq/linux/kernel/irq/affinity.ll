; ModuleID = 'kernel/irq/affinity.c'
source_filename = "kernel/irq/affinity.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.cpumask = type { [4 x i64] }
%struct.cpu_topology = type { i32, i32, i32, i32, %struct.cpumask, %struct.cpumask, %struct.cpumask }
%struct.irq_affinity_desc = type { %struct.cpumask, i8 }
%struct.irq_affinity = type { i32, i32, i32, [4 x i32], void (%struct.irq_affinity*, i32)*, i8* }
%struct.nodemask_t = type { [1 x i64] }
%struct.node_vectors = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.atomic64_t = type { i64 }

@irq_default_affinity = external dso_local global [1 x %struct.cpumask], align 8
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@__cpu_present_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_topology = external dso_local global [256 x %struct.cpu_topology], align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.irq_affinity_desc* @irq_create_affinity_masks(i32 noundef %nvecs, %struct.irq_affinity* noundef %affd) local_unnamed_addr #0 {
entry:
  %pre_vectors = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %affd, i64 0, i32 0
  %0 = load i32, i32* %pre_vectors, align 8
  %post_vectors = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %affd, i64 0, i32 1
  %1 = load i32, i32* %post_vectors, align 4
  %add = add i32 %1, %0
  %2 = call i32 @llvm.usub.sat.i32(i32 %nvecs, i32 %add)
  %calc_sets = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %affd, i64 0, i32 4
  %3 = load void (%struct.irq_affinity*, i32)*, void (%struct.irq_affinity*, i32)** %calc_sets, align 8
  %tobool.not = icmp eq void (%struct.irq_affinity*, i32)* %3, null
  br i1 %tobool.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %entry
  store void (%struct.irq_affinity*, i32)* @default_calc_sets, void (%struct.irq_affinity*, i32)** %calc_sets, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %entry
  %4 = phi void (%struct.irq_affinity*, i32)* [ @default_calc_sets, %if.then4 ], [ %3, %entry ]
  call void %4(%struct.irq_affinity* noundef %affd, i32 noundef %2) #9
  %nr_sets = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %affd, i64 0, i32 2
  %5 = load i32, i32* %nr_sets, align 8
  %cmp8 = icmp ugt i32 %5, 4
  br i1 %cmp8, label %if.then16, label %if.end27, !prof !7

if.then16:                                        ; preds = %if.end6
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/affinity.c\22; .popsection; .long 14472b - 14470b; .short 442; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !8
  br label %cleanup86

if.end27:                                         ; preds = %if.end6
  %tobool28.not.not = icmp ult i32 %add, %nvecs
  br i1 %tobool28.not.not, label %if.end30, label %cleanup86

if.end30:                                         ; preds = %if.end27
  %conv31 = zext i32 %nvecs to i64
  %call = call fastcc i8* @kcalloc(i64 noundef %conv31, i64 noundef 40) #11
  %6 = bitcast i8* %call to %struct.irq_affinity_desc*
  %tobool32.not = icmp eq i8* %call, null
  br i1 %tobool32.not, label %cleanup86, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end30
  %7 = load i32, i32* %pre_vectors, align 8
  %cmp36150.not = icmp eq i32 %7, 0
  br i1 %cmp36150.not, label %for.cond38.preheader, label %for.body

for.cond38.preheader.loopexit:                    ; preds = %for.body
  %8 = trunc i64 %indvars.iv.next to i32
  br label %for.cond38.preheader

for.cond38.preheader:                             ; preds = %for.cond38.preheader.loopexit, %for.cond.preheader
  %curvec.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %8, %for.cond38.preheader.loopexit ]
  %9 = load i32, i32* %nr_sets, align 8
  %cmp40152.not = icmp eq i32 %9, 0
  br i1 %cmp40152.not, label %for.end54, label %for.body42

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %mask = getelementptr %struct.irq_affinity_desc, %struct.irq_affinity_desc* %6, i64 %indvars.iv, i32 0
  call fastcc void @cpumask_copy(%struct.cpumask* noundef %mask) #11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %10 = load i32, i32* %pre_vectors, align 8
  %11 = zext i32 %10 to i64
  %cmp36 = icmp ult i64 %indvars.iv.next, %11
  br i1 %cmp36, label %for.body, label %for.cond38.preheader.loopexit

for.body42:                                       ; preds = %for.cond38.preheader, %for.inc52
  %indvars.iv163 = phi i64 [ %indvars.iv.next164, %for.inc52 ], [ 0, %for.cond38.preheader ]
  %usedvecs.0154 = phi i32 [ %add50, %for.inc52 ], [ 0, %for.cond38.preheader ]
  %curvec.1153 = phi i32 [ %add49, %for.inc52 ], [ %curvec.0.lcssa, %for.cond38.preheader ]
  %arrayidx44 = getelementptr %struct.irq_affinity, %struct.irq_affinity* %affd, i64 0, i32 3, i64 %indvars.iv163
  %12 = load i32, i32* %arrayidx44, align 4
  %call45 = call fastcc i32 @irq_build_affinity_masks(i32 noundef %curvec.1153, i32 noundef %12, i32 noundef %curvec.1153, %struct.irq_affinity_desc* noundef nonnull %6) #11
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %for.inc52, label %cleanup

cleanup:                                          ; preds = %for.body42
  call void @kfree(i8* noundef nonnull %call) #9
  br label %cleanup86

for.inc52:                                        ; preds = %for.body42
  %add49 = add i32 %12, %curvec.1153
  %add50 = add i32 %12, %usedvecs.0154
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1
  %13 = load i32, i32* %nr_sets, align 8
  %14 = zext i32 %13 to i64
  %cmp40 = icmp ult i64 %indvars.iv.next164, %14
  br i1 %cmp40, label %for.body42, label %for.end54

for.end54:                                        ; preds = %for.inc52, %for.cond38.preheader
  %usedvecs.0.lcssa = phi i32 [ 0, %for.cond38.preheader ], [ %add50, %for.inc52 ]
  %cmp55.not = icmp ult i32 %usedvecs.0.lcssa, %2
  %15 = load i32, i32* %pre_vectors, align 8
  %usedvecs.0.lcssa. = select i1 %cmp55.not, i32 %usedvecs.0.lcssa, i32 %2
  %add62 = add i32 %15, %usedvecs.0.lcssa.
  %cmp65157 = icmp ult i32 %add62, %nvecs
  br i1 %cmp65157, label %for.body67.preheader, label %for.end73

for.body67.preheader:                             ; preds = %for.end54
  %16 = zext i32 %add62 to i64
  br label %for.body67

for.body67:                                       ; preds = %for.body67.preheader, %for.body67
  %indvars.iv166 = phi i64 [ %16, %for.body67.preheader ], [ %indvars.iv.next167, %for.body67 ]
  %mask70 = getelementptr %struct.irq_affinity_desc, %struct.irq_affinity_desc* %6, i64 %indvars.iv166, i32 0
  call fastcc void @cpumask_copy(%struct.cpumask* noundef %mask70) #11
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next167 to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, %nvecs
  br i1 %exitcond.not, label %for.end73.loopexit, label %for.body67

for.end73.loopexit:                               ; preds = %for.body67
  %.pre = load i32, i32* %pre_vectors, align 8
  br label %for.end73

for.end73:                                        ; preds = %for.end73.loopexit, %for.end54
  %17 = phi i32 [ %.pre, %for.end73.loopexit ], [ %15, %for.end54 ]
  %18 = load i32, i32* %post_vectors, align 4
  %sub77159 = sub i32 %nvecs, %18
  %cmp78160 = icmp ult i32 %17, %sub77159
  br i1 %cmp78160, label %for.body80.preheader, label %cleanup86

for.body80.preheader:                             ; preds = %for.end73
  %19 = zext i32 %17 to i64
  br label %for.body80

for.body80:                                       ; preds = %for.body80.preheader, %for.body80
  %indvars.iv169 = phi i64 [ %19, %for.body80.preheader ], [ %indvars.iv.next170, %for.body80 ]
  %is_managed = getelementptr %struct.irq_affinity_desc, %struct.irq_affinity_desc* %6, i64 %indvars.iv169, i32 1
  %bf.load = load i8, i8* %is_managed, align 8
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, i8* %is_managed, align 8
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1
  %20 = load i32, i32* %post_vectors, align 4
  %sub77 = sub i32 %nvecs, %20
  %21 = zext i32 %sub77 to i64
  %cmp78 = icmp ult i64 %indvars.iv.next170, %21
  br i1 %cmp78, label %for.body80, label %cleanup86

cleanup86:                                        ; preds = %for.body80, %for.end73, %cleanup, %if.then16, %if.end30, %if.end27
  %retval.2 = phi %struct.irq_affinity_desc* [ null, %cleanup ], [ null, %if.then16 ], [ null, %if.end27 ], [ null, %if.end30 ], [ %6, %for.end73 ], [ %6, %for.body80 ]
  ret %struct.irq_affinity_desc* %retval.2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal void @default_calc_sets(%struct.irq_affinity* nocapture noundef writeonly %affd, i32 noundef %affvecs) #2 {
entry:
  %nr_sets = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %affd, i64 0, i32 2
  store i32 1, i32* %nr_sets, align 8
  %arrayidx = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %affd, i64 0, i32 3, i64 0
  store i32 %affvecs, i32* %arrayidx, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kcalloc(i64 noundef %n, i64 noundef %size) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kmalloc_array(i64 noundef %n, i64 noundef %size) #11
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_copy(%struct.cpumask* noundef %dstp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @bitmap_copy(i64* noundef %arraydecay) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @irq_build_affinity_masks(i32 noundef %startvec, i32 noundef %numvecs, i32 noundef %firstvec, %struct.irq_affinity_desc* noundef %masks) unnamed_addr #0 {
entry:
  %nmsk = alloca [1 x %struct.cpumask], align 8
  %npresmsk = alloca [1 x %struct.cpumask], align 8
  %0 = bitcast [1 x %struct.cpumask]* %nmsk to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !9
  %1 = bitcast [1 x %struct.cpumask]* %npresmsk to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false), !annotation !9
  call fastcc void @zalloc_cpumask_var([1 x %struct.cpumask]* noundef nonnull %nmsk) #11
  call fastcc void @zalloc_cpumask_var([1 x %struct.cpumask]* noundef nonnull %npresmsk) #11
  %call4 = call fastcc [1 x %struct.cpumask]* @alloc_node_to_cpumask() #11
  %tobool.not = icmp eq [1 x %struct.cpumask]* %call4, null
  br i1 %tobool.not, label %fail_npresmsk.thread, label %if.end6

if.end6:                                          ; preds = %entry
  call fastcc void @build_node_to_cpumask([1 x %struct.cpumask]* noundef nonnull %call4) #11
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %nmsk, i64 0, i64 0
  %call7 = call fastcc i32 @__irq_build_affinity_masks(i32 noundef %startvec, i32 noundef %numvecs, i32 noundef %firstvec, [1 x %struct.cpumask]* noundef nonnull %call4, %struct.cpumask* noundef nonnull @__cpu_present_mask, %struct.cpumask* noundef nonnull %arraydecay, %struct.irq_affinity_desc* noundef %masks) #11
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %fail_npresmsk.thread91, label %fail_build_affinity

fail_npresmsk.thread91:                           ; preds = %if.end6
  call fastcc void @free_node_to_cpumask([1 x %struct.cpumask]* noundef nonnull %call4) #11
  br label %fail_npresmsk.thread

fail_build_affinity:                              ; preds = %if.end6
  %cmp10.not = icmp ult i32 %call7, %numvecs
  %add = select i1 %cmp10.not, i32 %call7, i32 0
  %curvec.0 = add i32 %add, %firstvec
  %arraydecay13 = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %npresmsk, i64 0, i64 0
  call fastcc void @cpumask_andnot(%struct.cpumask* noundef nonnull %arraydecay13) #11
  %call17 = call fastcc i32 @__irq_build_affinity_masks(i32 noundef %curvec.0, i32 noundef %numvecs, i32 noundef %firstvec, [1 x %struct.cpumask]* noundef nonnull %call4, %struct.cpumask* noundef nonnull %arraydecay13, %struct.cpumask* noundef nonnull %arraydecay, %struct.irq_affinity_desc* noundef %masks) #11
  %2 = icmp sgt i32 %call17, 0
  %spec.select = select i1 %2, i32 %call17, i32 0
  %cmp21 = icmp sgt i32 %call17, -1
  %add23 = add nuw i32 %spec.select, %call7
  %cmp24 = icmp ult i32 %add23, %numvecs
  %or.cond = select i1 %cmp21, i1 %cmp24, i1 false
  br i1 %or.cond, label %fail_npresmsk.thread94, label %fail_npresmsk, !prof !10

fail_npresmsk.thread94:                           ; preds = %fail_build_affinity
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/affinity.c\22; .popsection; .long 14472b - 14470b; .short 390; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !11
  call fastcc void @free_node_to_cpumask([1 x %struct.cpumask]* noundef nonnull %call4) #11
  br label %3

fail_npresmsk:                                    ; preds = %fail_build_affinity
  call fastcc void @free_node_to_cpumask([1 x %struct.cpumask]* noundef nonnull %call4) #11
  %cmp44 = icmp slt i32 %call17, 0
  br i1 %cmp44, label %fail_npresmsk.thread, label %3

fail_npresmsk.thread:                             ; preds = %entry, %fail_npresmsk.thread91, %fail_npresmsk
  %ret.190 = phi i32 [ %call17, %fail_npresmsk ], [ %call7, %fail_npresmsk.thread91 ], [ -12, %entry ]
  br label %3

3:                                                ; preds = %fail_npresmsk.thread94, %fail_npresmsk, %fail_npresmsk.thread
  %4 = phi i32 [ %ret.190, %fail_npresmsk.thread ], [ 0, %fail_npresmsk ], [ 0, %fail_npresmsk.thread94 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #10
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_calc_affinity_vectors(i32 noundef %minvec, i32 noundef %maxvec, %struct.irq_affinity* nocapture noundef readonly %affd) local_unnamed_addr #0 {
entry:
  %pre_vectors = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %affd, i64 0, i32 0
  %0 = load i32, i32* %pre_vectors, align 8
  %post_vectors = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %affd, i64 0, i32 1
  %1 = load i32, i32* %post_vectors, align 4
  %add = add i32 %1, %0
  %cmp = icmp ugt i32 %add, %minvec
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %calc_sets = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %affd, i64 0, i32 4
  %2 = load void (%struct.irq_affinity*, i32)*, void (%struct.irq_affinity*, i32)** %calc_sets, align 8
  %tobool.not = icmp eq void (%struct.irq_affinity*, i32)* %2, null
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %sub = sub i32 %maxvec, %add
  br label %if.end2

if.else:                                          ; preds = %if.end
  %call = call fastcc i32 @cpumask_weight(%struct.cpumask* noundef nonnull @__cpu_possible_mask) #11
  %.pre = sub i32 %maxvec, %add
  br label %if.end2

if.end2:                                          ; preds = %if.else, %if.then1
  %sub3.pre-phi = phi i32 [ %.pre, %if.else ], [ %sub, %if.then1 ]
  %set_vecs.0 = phi i32 [ %call, %if.else ], [ %sub, %if.then1 ]
  %cmp4 = icmp ult i32 %set_vecs.0, %sub3.pre-phi
  %cond = select i1 %cmp4, i32 %set_vecs.0, i32 %sub3.pre-phi
  %add5 = add i32 %cond, %add
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end2
  %retval.0 = phi i32 [ %add5, %if.end2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_weight(%struct.cpumask* noundef %srcp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  %call4.i = call i32 @__bitmap_weight(i64* noundef %arraydecay, i32 noundef 256) #9
  ret i32 %call4.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array(i64 noundef %n, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 %size)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !7

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call9 = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef 3520) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call9, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_copy(i64* noundef %dst) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %dst to i8*
  %call = call i8* @memcpy(i8* noundef %0, i8* noundef bitcast ([1 x %struct.cpumask]* @irq_default_affinity to i8*), i64 noundef 32) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @zalloc_cpumask_var([1 x %struct.cpumask]* noundef %mask) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %mask, i64 0, i64 0
  call fastcc void @cpumask_clear(%struct.cpumask* noundef %arraydecay) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc [1 x %struct.cpumask]* @alloc_node_to_cpumask() unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kcalloc(i64 noundef 1, i64 noundef 32) #11
  %0 = bitcast i8* %call to [1 x %struct.cpumask]*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %for.body

for.body:                                         ; preds = %entry
  call fastcc void @zalloc_cpumask_var([1 x %struct.cpumask]* noundef nonnull %0) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.body
  %retval.0 = phi [1 x %struct.cpumask]* [ %0, %for.body ], [ null, %entry ]
  ret [1 x %struct.cpumask]* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @build_node_to_cpumask([1 x %struct.cpumask]* noundef %masks) unnamed_addr #0 {
entry:
  %call5 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #12
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp6 = icmp ult i32 %call5, %0
  br i1 %cmp6, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %masks, i64 0, i64 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %call7 = phi i32 [ %call5, %for.body.lr.ph ], [ %call, %for.body ]
  call fastcc void @cpumask_set_cpu(i32 noundef %call7, %struct.cpumask* noundef %arraydecay) #11
  %call = call i32 @cpumask_next(i32 noundef %call7, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #12
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__irq_build_affinity_masks(i32 noundef %startvec, i32 noundef %numvecs, i32 noundef %firstvec, [1 x %struct.cpumask]* noundef %node_to_cpumask, %struct.cpumask* noundef %cpu_mask, %struct.cpumask* noundef %nmsk, %struct.irq_affinity_desc* noundef %masks) unnamed_addr #0 {
entry:
  %nodemsk = alloca %struct.nodemask_t, align 8
  %add = add i32 %firstvec, %numvecs
  %0 = bitcast %struct.nodemask_t* %nodemsk to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  %1 = getelementptr inbounds %struct.nodemask_t, %struct.nodemask_t* %nodemsk, i64 0, i32 0, i64 0
  store i64 0, i64* %1, align 8
  %call = call fastcc i32 @cpumask_weight(%struct.cpumask* noundef %cpu_mask) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup87, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @get_nodes_in_cpumask([1 x %struct.cpumask]* noundef %node_to_cpumask, %struct.cpumask* noundef %cpu_mask, %struct.nodemask_t* noundef nonnull %nodemsk) #11
  %cmp.not = icmp ult i32 %call1, %numvecs
  br i1 %cmp.not, label %if.end17, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = call fastcc i32 @__nodes_empty(%struct.nodemask_t* noundef nonnull %nodemsk) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %for.cond.preheader, label %cleanup87

for.cond.preheader:                               ; preds = %if.then2
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %node_to_cpumask, i64 0, i64 0
  %idxprom = zext i32 %startvec to i64
  %mask = getelementptr %struct.irq_affinity_desc, %struct.irq_affinity_desc* %masks, i64 %idxprom, i32 0
  call fastcc void @cpumask_or(%struct.cpumask* noundef %mask, %struct.cpumask* noundef %mask, %struct.cpumask* noundef %arraydecay) #11
  br label %cleanup87

if.end17:                                         ; preds = %if.end
  %call18 = call fastcc i8* @kcalloc(i64 noundef 1, i64 noundef 8) #11
  %tobool19.not = icmp eq i8* %call18, null
  br i1 %tobool19.not, label %cleanup87, label %if.end21

if.end21:                                         ; preds = %if.end17
  %2 = bitcast i8* %call18 to %struct.node_vectors*
  %3 = load i64, i64* %1, align 8
  call fastcc void @alloc_nodes_vectors(i32 noundef %numvecs, [1 x %struct.cpumask]* noundef %node_to_cpumask, %struct.cpumask* noundef %cpu_mask, i64 %3, %struct.cpumask* noundef %nmsk, %struct.node_vectors* noundef nonnull %2) #11
  %4 = getelementptr inbounds i8, i8* %call18, i64 4
  %nvectors = bitcast i8* %4 to i32*
  %5 = load i32, i32* %nvectors, align 4
  %cmp27 = icmp eq i32 %5, -1
  br i1 %cmp27, label %for.end86, label %if.end29

if.end29:                                         ; preds = %if.end21
  %id = bitcast i8* %call18 to i32*
  %6 = load i32, i32* %id, align 4
  %idxprom30 = zext i32 %6 to i64
  %arraydecay32 = getelementptr [1 x %struct.cpumask], [1 x %struct.cpumask]* %node_to_cpumask, i64 %idxprom30, i64 0
  call fastcc void @cpumask_and(%struct.cpumask* noundef %nmsk, %struct.cpumask* noundef %cpu_mask, %struct.cpumask* noundef %arraydecay32) #11
  %call34 = call fastcc i32 @cpumask_weight(%struct.cpumask* noundef %nmsk) #11
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %for.end86, label %if.end37

if.end37:                                         ; preds = %if.end29
  %7 = load i32, i32* %nvectors, align 4
  %cmp39 = icmp ugt i32 %7, %call34
  br i1 %cmp39, label %if.then47, label %if.end48, !prof !7

if.then47:                                        ; preds = %if.end37
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/affinity.c\22; .popsection; .long 14472b - 14470b; .short 303; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !12
  %.pre = load i32, i32* %nvectors, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end37
  %8 = phi i32 [ %.pre, %if.then47 ], [ %7, %if.end37 ]
  %cmp60157.not = icmp eq i32 %8, 0
  br i1 %cmp60157.not, label %for.end86, label %for.body62.preheader

for.body62.preheader:                             ; preds = %if.end48
  %9 = urem i32 %call34, %8
  br label %for.body62

for.body62:                                       ; preds = %for.body62.preheader, %for.body62
  %10 = phi i32 [ %11, %for.body62 ], [ %8, %for.body62.preheader ]
  %v.0160 = phi i32 [ %inc77, %for.body62 ], [ 0, %for.body62.preheader ]
  %curvec.3159 = phi i32 [ %inc78, %for.body62 ], [ %startvec, %for.body62.preheader ]
  %extra_vecs.0158 = phi i32 [ %extra_vecs.1, %for.body62 ], [ %9, %for.body62.preheader ]
  %div64 = udiv i32 %call34, %10
  %tobool65.not = icmp eq i32 %extra_vecs.0158, 0
  %dec = add i32 %extra_vecs.0158, -1
  %not.tobool65.not = xor i1 %tobool65.not, true
  %inc67 = zext i1 %not.tobool65.not to i32
  %cpus_per_vec.0 = add i32 %div64, %inc67
  %extra_vecs.1 = select i1 %tobool65.not, i32 0, i32 %dec
  %cmp69.not = icmp ult i32 %curvec.3159, %add
  %curvec.4 = select i1 %cmp69.not, i32 %curvec.3159, i32 %firstvec
  %idxprom73 = zext i32 %curvec.4 to i64
  %mask75 = getelementptr %struct.irq_affinity_desc, %struct.irq_affinity_desc* %masks, i64 %idxprom73, i32 0
  call fastcc void @irq_spread_init_one(%struct.cpumask* noundef %mask75, %struct.cpumask* noundef %nmsk, i32 noundef %cpus_per_vec.0) #11
  %inc77 = add nuw i32 %v.0160, 1
  %inc78 = add i32 %curvec.4, 1
  %11 = load i32, i32* %nvectors, align 4
  %cmp60 = icmp ult i32 %inc77, %11
  br i1 %cmp60, label %for.body62, label %for.end86

for.end86:                                        ; preds = %for.body62, %if.end48, %if.end21, %if.end29
  %done.0.lcssa = phi i32 [ 0, %if.end21 ], [ 0, %if.end29 ], [ 0, %if.end48 ], [ %11, %for.body62 ]
  call void @kfree(i8* noundef nonnull %call18) #9
  br label %cleanup87

cleanup87:                                        ; preds = %for.cond.preheader, %if.end17, %if.then2, %entry, %for.end86
  %retval.0 = phi i32 [ %done.0.lcssa, %for.end86 ], [ 0, %entry ], [ %numvecs, %if.then2 ], [ -12, %if.end17 ], [ %numvecs, %for.cond.preheader ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_andnot(%struct.cpumask* noundef %dstp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @bitmap_andnot(i64* noundef %arraydecay) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_node_to_cpumask([1 x %struct.cpumask]* noundef %masks) unnamed_addr #0 {
entry:
  %0 = bitcast [1 x %struct.cpumask]* %masks to i8*
  call void @kfree(i8* noundef %0) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_clear(%struct.cpumask* noundef %dstp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @bitmap_zero(i64* noundef %arraydecay) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_zero(i64* noundef %dst) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %dst to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 32) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_set_cpu(i32 noundef %cpu, %struct.cpumask* noundef %dstp) unnamed_addr #0 {
entry:
  %conv = zext i32 %cpu to i64
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @set_bit(i64 noundef %conv, i64* noundef %arraydecay) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #10, !srcloc !13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @get_nodes_in_cpumask([1 x %struct.cpumask]* noundef %node_to_cpumask, %struct.cpumask* noundef %mask, %struct.nodemask_t* noundef %nodemsk) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %node_to_cpumask, i64 0, i64 0
  %call = call fastcc i1 @cpumask_intersects(%struct.cpumask* noundef %mask, %struct.cpumask* noundef %arraydecay) #11
  br i1 %call, label %if.then, label %for.end

if.then:                                          ; preds = %entry
  %arraydecay.i = getelementptr inbounds %struct.nodemask_t, %struct.nodemask_t* %nodemsk, i64 0, i32 0, i64 0
  call fastcc void @set_bit(i64 noundef 0, i64* noundef %arraydecay.i) #9
  br label %for.end

for.end:                                          ; preds = %if.then, %entry
  %nodes.0.lcssa = phi i32 [ 1, %if.then ], [ 0, %entry ]
  ret i32 %nodes.0.lcssa
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__nodes_empty(%struct.nodemask_t* nocapture noundef readonly %srcp) unnamed_addr #7 {
entry:
  %arraydecay = getelementptr inbounds %struct.nodemask_t, %struct.nodemask_t* %srcp, i64 0, i32 0, i64 0
  %call = call fastcc i1 @bitmap_empty(i64* noundef %arraydecay) #11
  %conv = zext i1 %call to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_or(%struct.cpumask* noundef %dstp, %struct.cpumask* noundef %src1p, %struct.cpumask* noundef %src2p) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src1p, i64 0, i32 0, i64 0
  %arraydecay4 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src2p, i64 0, i32 0, i64 0
  call fastcc void @bitmap_or(i64* noundef %arraydecay, i64* noundef %arraydecay2, i64* noundef %arraydecay4) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @alloc_nodes_vectors(i32 noundef %numvecs, [1 x %struct.cpumask]* noundef %node_to_cpumask, %struct.cpumask* noundef %cpu_mask, i64 %nodemsk.coerce, %struct.cpumask* noundef %nmsk, %struct.node_vectors* noundef %node_vectors) unnamed_addr #0 {
entry:
  %nodemsk = alloca %struct.nodemask_t, align 8
  %0 = getelementptr inbounds %struct.nodemask_t, %struct.nodemask_t* %nodemsk, i64 0, i32 0, i64 0
  store i64 %nodemsk.coerce, i64* %0, align 8
  %id = getelementptr inbounds %struct.node_vectors, %struct.node_vectors* %node_vectors, i64 0, i32 0
  store i32 0, i32* %id, align 4
  %ncpus = getelementptr inbounds %struct.node_vectors, %struct.node_vectors* %node_vectors, i64 0, i32 1, i32 0
  store i32 -1, i32* %ncpus, align 4
  %call = call fastcc i32 @__nodes_empty(%struct.nodemask_t* noundef nonnull %nodemsk) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond3.preheader, label %if.end19

for.cond3.preheader:                              ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %node_to_cpumask, i64 0, i64 0
  call fastcc void @cpumask_and(%struct.cpumask* noundef %nmsk, %struct.cpumask* noundef %cpu_mask, %struct.cpumask* noundef %arraydecay) #11
  %call10 = call fastcc i32 @cpumask_weight(%struct.cpumask* noundef %nmsk) #11
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end19, label %if.end

if.end:                                           ; preds = %for.cond3.preheader
  store i32 %call10, i32* %ncpus, align 4
  br label %if.end19

if.end19:                                         ; preds = %for.cond3.preheader, %if.end, %entry
  %remaining_ncpus.2 = phi i32 [ 0, %entry ], [ %call10, %if.end ], [ 0, %for.cond3.preheader ]
  %cmp20 = icmp ult i32 %remaining_ncpus.2, %numvecs
  %cond = select i1 %cmp20, i32 %remaining_ncpus.2, i32 %numvecs
  %1 = bitcast %struct.node_vectors* %node_vectors to i8*
  call void @sort(i8* noundef %1, i64 noundef 1, i64 noundef 8, i32 (i8*, i8*)* noundef nonnull @ncpus_cmp_func, void (i8*, i8*, i32)* noundef null) #9
  %2 = load i32, i32* %ncpus, align 4
  %cmp28 = icmp eq i32 %2, -1
  br i1 %cmp28, label %for.end94, label %if.end30

if.end30:                                         ; preds = %if.end19
  %cmp31 = icmp eq i32 %cond, 0
  br i1 %cmp31, label %if.then39, label %if.end40, !prof !7

if.then39:                                        ; preds = %if.end30
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/affinity.c\22; .popsection; .long 14472b - 14470b; .short 233; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !14
  %.pre = load i32, i32* %ncpus, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end30
  %3 = phi i32 [ %.pre, %if.then39 ], [ %2, %if.end30 ]
  %mul = mul i32 %3, %cond
  %div = udiv i32 %mul, %remaining_ncpus.2
  %cmp53 = icmp ugt i32 %remaining_ncpus.2, %mul
  %cond58 = select i1 %cmp53, i32 1, i32 %div
  %cmp60 = icmp ugt i32 %cond58, %3
  br i1 %cmp60, label %if.then74, label %if.end75, !prof !7

if.then74:                                        ; preds = %if.end40
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/affinity.c\22; .popsection; .long 14472b - 14470b; .short 238; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !15
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.end40
  store i32 %cond58, i32* %ncpus, align 4
  br label %for.end94

for.end94:                                        ; preds = %if.end75, %if.end19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_and(%struct.cpumask* noundef %dstp, %struct.cpumask* noundef %src1p, %struct.cpumask* noundef %src2p) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src1p, i64 0, i32 0, i64 0
  %arraydecay4 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src2p, i64 0, i32 0, i64 0
  call fastcc void @bitmap_and(i64* noundef %arraydecay, i64* noundef %arraydecay2, i64* noundef %arraydecay4) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_spread_init_one(%struct.cpumask* noundef %irqmsk, %struct.cpumask* noundef %nmsk, i32 noundef %cpus_per_vec) unnamed_addr #0 {
entry:
  %cmp.not31 = icmp eq i32 %cpus_per_vec, 0
  br i1 %cmp.not31, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %call49 = call fastcc i32 @cpumask_first(%struct.cpumask* noundef %nmsk) #11
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp1.not50 = icmp ult i32 %call49, %0
  br i1 %cmp1.not50, label %if.end, label %cleanup

if.end:                                           ; preds = %for.body.preheader, %for.end.split
  %call52 = phi i32 [ %call, %for.end.split ], [ %call49, %for.body.preheader ]
  %cpus_per_vec.addr.03251 = phi i32 [ %cpus_per_vec.addr.1.ph48, %for.end.split ], [ %cpus_per_vec, %for.body.preheader ]
  call fastcc void @cpumask_clear_cpu(i32 noundef %call52, %struct.cpumask* noundef %nmsk) #11
  call fastcc void @cpumask_set_cpu(i32 noundef %call52, %struct.cpumask* noundef %irqmsk) #11
  %idxprom = sext i32 %call52 to i64
  %thread_sibling = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom, i32 4
  %cpus_per_vec.addr.1.ph45 = add i32 %cpus_per_vec.addr.03251, -1
  %cmp3.not46 = icmp eq i32 %cpus_per_vec.addr.1.ph45, 0
  br i1 %cmp3.not46, label %cleanup, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %if.end, %if.end11
  %cpus_per_vec.addr.1.ph48 = phi i32 [ %cpus_per_vec.addr.1.ph, %if.end11 ], [ %cpus_per_vec.addr.1.ph45, %if.end ]
  %sibl.0.ph47 = phi i32 [ %call5, %if.end11 ], [ -1, %if.end ]
  br label %for.cond2

for.cond2:                                        ; preds = %for.cond2.preheader, %if.end8
  %sibl.0 = phi i32 [ %call5, %if.end8 ], [ %sibl.0.ph47, %for.cond2.preheader ]
  %call5 = call i32 @cpumask_next(i32 noundef %sibl.0, %struct.cpumask* noundef %thread_sibling) #12
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp6.not = icmp ult i32 %call5, %1
  br i1 %cmp6.not, label %if.end8, label %for.end.split

if.end8:                                          ; preds = %for.cond2
  %call9 = call fastcc i32 @cpumask_test_and_clear_cpu(i32 noundef %call5, %struct.cpumask* noundef %nmsk) #11
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %for.cond2, label %if.end11

if.end11:                                         ; preds = %if.end8
  call fastcc void @cpumask_set_cpu(i32 noundef %call5, %struct.cpumask* noundef %irqmsk) #11
  %cpus_per_vec.addr.1.ph = add i32 %cpus_per_vec.addr.1.ph48, -1
  %cmp3.not = icmp eq i32 %cpus_per_vec.addr.1.ph, 0
  br i1 %cmp3.not, label %cleanup, label %for.cond2.preheader

for.end.split:                                    ; preds = %for.cond2
  %call = call fastcc i32 @cpumask_first(%struct.cpumask* noundef %nmsk) #11
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %cmp1.not = icmp ult i32 %call, %2
  br i1 %cmp1.not, label %if.end, label %cleanup

cleanup:                                          ; preds = %for.end.split, %if.end, %if.end11, %for.body.preheader, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @cpumask_intersects(%struct.cpumask* noundef %src1p, %struct.cpumask* noundef %src2p) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src1p, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src2p, i64 0, i32 0, i64 0
  %call = call fastcc i32 @bitmap_intersects(i64* noundef %arraydecay, i64* noundef %arraydecay2) #11
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bitmap_intersects(i64* noundef %src1, i64* noundef %src2) unnamed_addr #0 {
entry:
  %call = call i32 @__bitmap_intersects(i64* noundef %src1, i64* noundef %src2, i32 noundef 256) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_intersects(i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @bitmap_empty(i64* nocapture noundef readonly %src) unnamed_addr #7 {
entry:
  %0 = load i64, i64* %src, align 8
  %and3 = and i64 %0, 1
  %tobool.not = icmp eq i64 %and3, 0
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_first_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %call5 = call i64 @_find_first_bit(i64* noundef %addr, i64 noundef 256) #9
  ret i64 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_first_bit(i64* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_or(i64* noundef %dst, i64* noundef %src1, i64* noundef %src2) unnamed_addr #0 {
entry:
  call void @__bitmap_or(i64* noundef %dst, i64* noundef %src1, i64* noundef %src2, i32 noundef 256) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_or(i64* noundef, i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef, void (i8*, i8*, i32)* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @ncpus_cmp_func(i8* nocapture noundef readonly %l, i8* nocapture noundef readonly %r) #7 {
entry:
  %0 = getelementptr inbounds i8, i8* %l, i64 4
  %ncpus = bitcast i8* %0 to i32*
  %1 = load i32, i32* %ncpus, align 4
  %2 = getelementptr inbounds i8, i8* %r, i64 4
  %ncpus1 = bitcast i8* %2 to i32*
  %3 = load i32, i32* %ncpus1, align 4
  %sub = sub i32 %1, %3
  ret i32 %sub
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_and(i64* noundef %dst, i64* noundef %src1, i64* noundef %src2) unnamed_addr #0 {
entry:
  %call = call i32 @__bitmap_and(i64* noundef %dst, i64* noundef %src1, i64* noundef %src2, i32 noundef 256) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(i64* noundef, i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_first(%struct.cpumask* noundef %srcp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  %call = call fastcc i64 @find_first_bit(i64* noundef %arraydecay) #11
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_clear_cpu(i32 noundef %cpu, %struct.cpumask* noundef %dstp) unnamed_addr #0 {
entry:
  %conv = zext i32 %cpu to i64
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @clear_bit(i64 noundef %conv, i64* noundef %arraydecay) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_test_and_clear_cpu(i32 noundef %cpu, %struct.cpumask* noundef %cpumask) unnamed_addr #0 {
entry:
  %conv = zext i32 %cpu to i64
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %cpumask, i64 0, i32 0, i64 0
  %call1 = call fastcc i1 @test_and_clear_bit(i64 noundef %conv, i64* noundef %arraydecay) #11
  %conv2 = zext i1 %call1 to i32
  ret i32 %conv2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #10, !srcloc !16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %0 = load volatile i64, i64* %add.ptr.i, align 8
  %and.i = and i64 %0, %shl.i
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %arch_test_and_clear_bit.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %1) #9
  %and1.i = and i64 %call.i.i.i, %shl.i
  %tobool2.i = icmp ne i64 %and1.i, 0
  br label %arch_test_and_clear_bit.exit

arch_test_and_clear_bit.exit:                     ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %tobool2.i, %if.end.i ], [ false, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_andnot\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09bic\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #10, !srcloc !17
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_andnot(i64* noundef %dst) unnamed_addr #0 {
entry:
  %call = call i32 @__bitmap_andnot(i64* noundef %dst, i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_possible_mask, i64 0, i32 0, i64 0), i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_present_mask, i64 0, i32 0, i64 0), i32 noundef 256) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_andnot(i64* noundef, i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(i64* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #8

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!8 = !{i64 2152224756}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 1, i32 4001}
!11 = !{i64 2152223062}
!12 = !{i64 2152220924}
!13 = !{i64 2147826012, i64 2147826523, i64 2147826553, i64 2147826579, i64 2147826611, i64 2147826640}
!14 = !{i64 2152214882}
!15 = !{i64 2152218608}
!16 = !{i64 2147836582, i64 2147837103, i64 2147837133, i64 2147837159, i64 2147837191, i64 2147837220}
!17 = !{i64 2147837435, i64 2147838097, i64 2147838127, i64 2147838158, i64 2147838190, i64 2147838225, i64 2147838250}
