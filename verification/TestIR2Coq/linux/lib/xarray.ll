; ModuleID = 'lib/xarray.c'
source_filename = "lib/xarray.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.kmem_cache = type opaque
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.xa_state = type { %struct.xarray*, i64, i8, i8, i8, i8, %struct.xa_node*, %struct.xa_node*, void (%struct.xa_node*)* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.xa_node = type { i8, i8, i8, i8, %struct.xa_node*, %struct.xarray*, %union.anon.2, [64 x i8*], %union.anon.3 }
%union.anon.2 = type { %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%union.anon.3 = type { [3 x [1 x i64]] }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.thread_info = type { i64, %union.anon.9 }
%union.anon.9 = type { i64 }

@radix_tree_node_cachep = external dso_local local_unnamed_addr global %struct.kmem_cache*, align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@vabits_actual = external dso_local local_unnamed_addr global i64, align 8

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local i8* @xas_load(%struct.xa_state* nocapture noundef %xas) local_unnamed_addr #0 {
entry:
  %call = call fastcc i8* @xas_start(%struct.xa_state* noundef %xas) #14
  %xa_shift = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %entry1.0 = phi i8* [ %call, %entry ], [ %call6, %if.end ]
  %call2 = call fastcc i1 @xa_is_node(i8* noundef %entry1.0) #14
  br i1 %call2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call3 = call fastcc %struct.xa_node* @xa_to_node(i8* noundef %entry1.0) #14
  %0 = load i8, i8* %xa_shift, align 8
  %shift = getelementptr inbounds %struct.xa_node, %struct.xa_node* %call3, i64 0, i32 0
  %1 = load i8, i8* %shift, align 8
  %cmp = icmp ugt i8 %0, %1
  br i1 %cmp, label %while.end, label %if.end

if.end:                                           ; preds = %while.body
  %call6 = call fastcc i8* @xas_descend(%struct.xa_state* noundef %xas, %struct.xa_node* noundef %call3) #14
  %2 = load i8, i8* %shift, align 8
  %cmp9 = icmp eq i8 %2, 0
  br i1 %cmp9, label %while.end, label %while.cond

while.end:                                        ; preds = %if.end, %while.body, %while.cond
  %entry1.2 = phi i8* [ %entry1.0, %while.cond ], [ %entry1.0, %while.body ], [ %call6, %if.end ]
  ret i8* %entry1.2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i8* @xas_start(%struct.xa_state* nocapture noundef %xas) unnamed_addr #2 {
entry:
  %call = call fastcc i1 @xas_valid(%struct.xa_state* noundef %xas) #14
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i8* @xas_reload(%struct.xa_state* noundef %xas) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @xas_error(%struct.xa_state* noundef %xas) #14
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %0 = load %struct.xarray*, %struct.xarray** %xa, align 8
  %call6 = call fastcc i8* @xa_head(%struct.xarray* noundef %0) #14
  %call7 = call fastcc i1 @xa_is_node(i8* noundef %call6) #14
  %xa_index13 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %1 = load i64, i64* %xa_index13, align 8
  br i1 %call7, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end5
  %tobool9.not = icmp eq i64 %1, 0
  br i1 %tobool9.not, label %if.end19, label %if.then10

if.then10:                                        ; preds = %if.then8
  call fastcc void @set_bounds(%struct.xa_state* noundef %xas) #14
  br label %cleanup

if.else:                                          ; preds = %if.end5
  %call14 = call fastcc %struct.xa_node* @xa_to_node(i8* noundef %call6) #14
  %shift = getelementptr inbounds %struct.xa_node, %struct.xa_node* %call14, i64 0, i32 0
  %2 = load i8, i8* %shift, align 8
  %sh_prom = zext i8 %2 to i64
  %shr = lshr i64 %1, %sh_prom
  %cmp = icmp ugt i64 %shr, 63
  br i1 %cmp, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.else
  call fastcc void @set_bounds(%struct.xa_state* noundef %xas) #14
  br label %cleanup

if.end19:                                         ; preds = %if.else, %if.then8
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* null, %struct.xa_node** %xa_node, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end19, %if.then16, %if.then10, %if.then
  %retval.0 = phi i8* [ %call2, %if.then ], [ null, %if.then16 ], [ %call6, %if.end19 ], [ null, %if.then10 ], [ null, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xa_is_node(i8* noundef %entry1) unnamed_addr #3 {
entry:
  %call = call fastcc i1 @xa_is_internal(i8* noundef %entry1) #14
  %cmp = icmp ugt i8* %entry1, inttoptr (i64 4096 to i8*)
  %0 = and i1 %cmp, %call
  ret i1 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.xa_node* @xa_to_node(i8* noundef %entry1) unnamed_addr #3 {
entry:
  %0 = ptrtoint i8* %entry1 to i64
  %sub = add i64 %0, -2
  %1 = inttoptr i64 %sub to %struct.xa_node*
  ret %struct.xa_node* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i8* @xas_descend(%struct.xa_state* nocapture noundef %xas, %struct.xa_node* noundef %node) unnamed_addr #2 {
entry:
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %0 = load i64, i64* %xa_index, align 8
  %call = call fastcc i32 @get_offset(i64 noundef %0, %struct.xa_node* noundef %node) #14, !range !7
  %call2 = call fastcc i8* @xa_entry(%struct.xa_node* noundef %node, i32 noundef %call) #14
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* %node, %struct.xa_node** %xa_node, align 8
  %conv7 = trunc i32 %call to i8
  %xa_offset = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  store i8 %conv7, i8* %xa_offset, align 2
  ret i8* %call2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @xas_nomem(%struct.xa_state* nocapture noundef %xas, i32 noundef %gfp) local_unnamed_addr #4 {
entry:
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %0 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %cmp.not = icmp eq %struct.xa_node* %0, inttoptr (i64 -46 to %struct.xa_node*)
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @xas_destroy(%struct.xa_state* noundef %xas) #14
  br label %return

if.end:                                           ; preds = %entry
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %1 = load %struct.xarray*, %struct.xarray** %xa, align 8
  %xa_flags = getelementptr inbounds %struct.xarray, %struct.xarray* %1, i64 0, i32 1
  %2 = load i32, i32* %xa_flags, align 4
  %and = shl i32 %2, 17
  %3 = and i32 %and, 4194304
  %4 = or i32 %3, %gfp
  %5 = load %struct.kmem_cache*, %struct.kmem_cache** @radix_tree_node_cachep, align 8
  %call = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %5, i32 noundef %4) #15
  %xa_alloc = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 7
  %6 = bitcast %struct.xa_node** %xa_alloc to i8**
  store i8* %call, i8** %6, align 8
  %tobool4.not = icmp eq i8* %call, null
  br i1 %tobool4.not, label %return, label %if.end6

if.end6:                                          ; preds = %if.end
  %parent = getelementptr inbounds i8, i8* %call, i64 8
  %7 = bitcast i8* %parent to %struct.xa_node**
  store %struct.xa_node* null, %struct.xa_node** %7, align 8
  store %struct.xa_node* inttoptr (i64 3 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  br label %return

return:                                           ; preds = %if.end, %if.end6, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ true, %if.end6 ], [ false, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @xas_destroy(%struct.xa_state* nocapture noundef %xas) unnamed_addr #4 {
entry:
  %xa_alloc = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 7
  %0 = load %struct.xa_node*, %struct.xa_node** %xa_alloc, align 8
  %tobool.not12 = icmp eq %struct.xa_node* %0, null
  br i1 %tobool.not12, label %while.end, label %do.end

do.end:                                           ; preds = %entry, %do.end
  %node.013 = phi %struct.xa_node* [ %1, %do.end ], [ %0, %entry ]
  %parent = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node.013, i64 0, i32 4
  %1 = load volatile %struct.xa_node*, %struct.xa_node** %parent, align 8
  %2 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node.013, i64 0, i32 6
  %callback_head = bitcast %union.anon.2* %2 to %struct.callback_head*
  call void @radix_tree_node_rcu_free(%struct.callback_head* noundef %callback_head) #15
  store %struct.xa_node* %1, %struct.xa_node** %xa_alloc, align 8
  %tobool.not = icmp eq %struct.xa_node* %1, null
  br i1 %tobool.not, label %while.end, label %do.end

while.end:                                        ; preds = %do.end, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @xas_create_range(%struct.xa_state* nocapture noundef %xas) local_unnamed_addr #4 {
entry:
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %0 = load i64, i64* %xa_index, align 8
  %xa_shift = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %1 = load i8, i8* %xa_shift, align 8
  %xa_sibs = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 3
  %2 = load i8, i8* %xa_sibs, align 1
  %conv = zext i8 %2 to i64
  %add = add nuw nsw i64 %conv, 1
  %sh_prom = zext i8 %1 to i64
  %shl = shl i64 %add, %sh_prom
  %sub = add i64 %shl, -1
  %or = or i64 %sub, %0
  store i64 %or, i64* %xa_index, align 8
  %call = call fastcc i1 @xas_is_node(%struct.xa_state* noundef %xas) #14
  br i1 %call, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %3 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %shift4 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %3, i64 0, i32 0
  %4 = load i8, i8* %shift4, align 8
  %cmp = icmp eq i8 %4, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %xa_offset = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  %5 = load i8, i8* %xa_offset, align 2
  %or1186 = or i8 %5, %2
  store i8 %or1186, i8* %xa_offset, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  store i8 0, i8* %xa_shift, align 8
  store i8 0, i8* %xa_sibs, align 1
  %call1587 = call fastcc i8* @xas_create(%struct.xa_state* noundef %xas, i1 noundef true) #14
  %call1688 = call fastcc i32 @xas_error(%struct.xa_state* noundef %xas) #14
  %tobool.not89 = icmp eq i32 %call1688, 0
  br i1 %tobool.not89, label %if.end18.lr.ph, label %restore

if.end18.lr.ph:                                   ; preds = %if.end
  %or20 = or i64 %0, 63
  %xa_node28 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %xa_offset34 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  br label %if.end18

for.cond.loopexit:                                ; preds = %for.cond27
  %call15 = call fastcc i8* @xas_create(%struct.xa_state* noundef %xas, i1 noundef true) #14
  %call16 = call fastcc i32 @xas_error(%struct.xa_state* noundef %xas) #14
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.end18, label %restore

if.end18:                                         ; preds = %if.end18.lr.ph, %for.cond.loopexit
  %6 = load i64, i64* %xa_index, align 8
  %cmp21.not = icmp ugt i64 %6, %or20
  br i1 %cmp21.not, label %if.end24, label %success

if.end24:                                         ; preds = %if.end18
  %sub26 = add i64 %6, -64
  store i64 %sub26, i64* %xa_index, align 8
  %.pre = load %struct.xa_node*, %struct.xa_node** %xa_node28, align 8
  br label %for.cond27

for.cond27:                                       ; preds = %for.cond27, %if.end24
  %7 = phi %struct.xa_node* [ %call29, %for.cond27 ], [ %.pre, %if.end24 ]
  %call29 = call fastcc %struct.xa_node* @xa_parent_locked(%struct.xa_node* noundef %7) #14
  store %struct.xa_node* %call29, %struct.xa_node** %xa_node28, align 8
  %offset = getelementptr inbounds %struct.xa_node, %struct.xa_node* %7, i64 0, i32 1
  %8 = load i8, i8* %offset, align 1
  %sub32 = add i8 %8, -1
  store i8 %sub32, i8* %xa_offset34, align 2
  %9 = load i8, i8* %offset, align 1
  %cmp37.not = icmp eq i8 %9, 0
  br i1 %cmp37.not, label %for.cond27, label %for.cond.loopexit

restore:                                          ; preds = %for.cond.loopexit, %if.end
  store i8 %1, i8* %xa_shift, align 8
  store i8 %2, i8* %xa_sibs, align 1
  store i64 %0, i64* %xa_index, align 8
  br label %cleanup49

success:                                          ; preds = %if.end18
  store i64 %0, i64* %xa_index, align 8
  %10 = load %struct.xa_node*, %struct.xa_node** %xa_node28, align 8
  %tobool46.not = icmp eq %struct.xa_node* %10, null
  br i1 %tobool46.not, label %cleanup49, label %if.then47

if.then47:                                        ; preds = %success
  call fastcc void @xas_set_offset(%struct.xa_state* noundef %xas) #14
  br label %cleanup49

cleanup49:                                        ; preds = %success, %if.then47, %restore
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @xas_is_node(%struct.xa_state* nocapture noundef readonly %xas) unnamed_addr #6 {
entry:
  %call = call fastcc i1 @xas_valid(%struct.xa_state* noundef %xas) #14
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %0 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %tobool = icmp ne %struct.xa_node* %0, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  ret i1 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @xas_create(%struct.xa_state* nocapture noundef %xas, i1 noundef %allow_root) unnamed_addr #4 {
entry:
  %xa1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %0 = load %struct.xarray*, %struct.xarray** %xa1, align 8
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %1 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %xa_shift = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = load i8, i8* %xa_shift, align 8
  %conv = zext i8 %2 to i32
  %call = call fastcc i1 @xas_top(%struct.xa_node* noundef %1) #14
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = call fastcc i8* @xa_head_locked(%struct.xarray* noundef %0) #14
  store %struct.xa_node* null, %struct.xa_node** %xa_node, align 8
  %tobool.not = icmp eq i8* %call3, null
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %call5 = call fastcc i1 @xa_zero_busy(%struct.xarray* noundef %0) #14
  br i1 %call5, label %if.then7, label %if.end

if.then7:                                         ; preds = %land.lhs.true
  %call8 = call fastcc i8* @xa_mk_internal(i64 noundef 257) #14
  br label %if.end

if.end:                                           ; preds = %if.then7, %land.lhs.true, %if.then
  %entry2.0 = phi i8* [ %call3, %if.then ], [ %call8, %if.then7 ], [ null, %land.lhs.true ]
  %call9 = call fastcc i32 @xas_expand(%struct.xa_state* noundef %xas, i8* noundef %entry2.0) #14
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end
  %tobool13.not = icmp eq i32 %call9, 0
  %spec.select = select i1 %allow_root, i32 0, i32 6
  %shift.0 = select i1 %tobool13.not, i32 %spec.select, i32 %call9
  %call18 = call fastcc i8* @xa_head_locked(%struct.xarray* noundef %0) #14
  %xa_head = getelementptr inbounds %struct.xarray, %struct.xarray* %0, i64 0, i32 2
  br label %if.end34

if.else:                                          ; preds = %entry
  %call19 = call fastcc i32 @xas_error(%struct.xa_state* noundef %xas) #14
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.else22, label %cleanup

if.else22:                                        ; preds = %if.else
  %tobool23.not = icmp eq %struct.xa_node* %1, null
  br i1 %tobool23.not, label %if.end34.thread, label %if.then24

if.then24:                                        ; preds = %if.else22
  %xa_offset = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  %3 = load i8, i8* %xa_offset, align 2
  %conv25 = zext i8 %3 to i32
  %shift26 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %1, i64 0, i32 0
  %4 = load i8, i8* %shift26, align 8
  %conv27 = zext i8 %4 to i32
  %call28 = call fastcc i8* @xa_entry_locked(%struct.xa_node* noundef nonnull %1, i32 noundef %conv25) #14
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr %struct.xa_node, %struct.xa_node* %1, i64 0, i32 7, i64 %idxprom
  br label %if.end34

if.end34.thread:                                  ; preds = %if.else22
  %call30 = call fastcc i8* @xa_head_locked(%struct.xarray* noundef %0) #14
  br label %cleanup

if.end34:                                         ; preds = %if.then24, %if.end12
  %slot.0 = phi i8** [ %xa_head, %if.end12 ], [ %arrayidx, %if.then24 ]
  %shift.1 = phi i32 [ %shift.0, %if.end12 ], [ %conv27, %if.then24 ]
  %entry2.1 = phi i8* [ %call18, %if.end12 ], [ %call28, %if.then24 ]
  %cmp35118 = icmp ugt i32 %shift.1, %conv
  br i1 %cmp35118, label %while.body.lr.ph, label %cleanup

while.body.lr.ph:                                 ; preds = %if.end34
  %xa_offset63 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end60
  %entry2.2121 = phi i8* [ %entry2.1, %while.body.lr.ph ], [ %call61, %if.end60 ]
  %shift.2120 = phi i32 [ %shift.1, %while.body.lr.ph ], [ %sub, %if.end60 ]
  %slot.1119 = phi i8** [ %slot.0, %while.body.lr.ph ], [ %arrayidx65, %if.end60 ]
  %sub = add i32 %shift.2120, -6
  %tobool37.not = icmp eq i8* %entry2.2121, null
  br i1 %tobool37.not, label %if.then38, label %if.else54

if.then38:                                        ; preds = %while.body
  %call39 = call fastcc i8* @xas_alloc(%struct.xa_state* noundef %xas, i32 noundef %sub) #14
  %5 = bitcast i8* %call39 to %struct.xa_node*
  %tobool40.not = icmp eq i8* %call39, null
  br i1 %tobool40.not, label %cleanup, label %if.end42

if.end42:                                         ; preds = %if.then38
  %call43 = call fastcc i1 @xa_track_free(%struct.xarray* noundef %0) #14
  br i1 %call43, label %if.then44, label %do.body

if.then44:                                        ; preds = %if.end42
  call fastcc void @node_mark_all(%struct.xa_node* noundef nonnull %5) #14
  br label %do.body

do.body:                                          ; preds = %if.end42, %if.then44
  %call46 = call fastcc i8* @xa_mk_node(%struct.xa_node* noundef nonnull %5) #14
  %6 = ptrtoint i8* %call46 to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(i8** elementtype(i8*) %slot.1119, i64 %6) #16, !srcloc !8
  br label %if.end60

if.else54:                                        ; preds = %while.body
  %call55 = call fastcc i1 @xa_is_node(i8* noundef nonnull %entry2.2121) #14
  br i1 %call55, label %if.then56, label %cleanup

if.then56:                                        ; preds = %if.else54
  %call57 = call fastcc %struct.xa_node* @xa_to_node(i8* noundef nonnull %entry2.2121) #14
  br label %if.end60

if.end60:                                         ; preds = %if.then56, %do.body
  %node.0 = phi %struct.xa_node* [ %call57, %if.then56 ], [ %5, %do.body ]
  %call61 = call fastcc i8* @xas_descend(%struct.xa_state* noundef %xas, %struct.xa_node* noundef %node.0) #14
  %7 = load i8, i8* %xa_offset63, align 2
  %idxprom64 = zext i8 %7 to i64
  %arrayidx65 = getelementptr %struct.xa_node, %struct.xa_node* %node.0, i64 0, i32 7, i64 %idxprom64
  %cmp35 = icmp ugt i32 %sub, %conv
  br i1 %cmp35, label %while.body, label %cleanup

cleanup:                                          ; preds = %if.else54, %if.then38, %if.end60, %if.end34.thread, %if.end34, %if.else, %if.end
  %retval.0 = phi i8* [ null, %if.end ], [ null, %if.else ], [ %entry2.1, %if.end34 ], [ %call30, %if.end34.thread ], [ %entry2.2121, %if.else54 ], [ null, %if.then38 ], [ %call61, %if.end60 ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @xas_error(%struct.xa_state* nocapture noundef readonly %xas) unnamed_addr #6 {
entry:
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %0 = bitcast %struct.xa_node** %xa_node to i8**
  %1 = load i8*, i8** %0, align 8
  %call = call fastcc i32 @xa_err(i8* noundef %1) #14
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.xa_node* @xa_parent_locked(%struct.xa_node* nocapture noundef readonly %node) unnamed_addr #6 {
entry:
  %parent = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node, i64 0, i32 4
  %0 = load %struct.xa_node*, %struct.xa_node** %parent, align 8
  ret %struct.xa_node* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @xas_set_offset(%struct.xa_state* nocapture noundef %xas) unnamed_addr #7 {
entry:
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %0 = load i64, i64* %xa_index, align 8
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %1 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %call = call fastcc i32 @get_offset(i64 noundef %0, %struct.xa_node* noundef %1) #14
  %conv = trunc i32 %call to i8
  %xa_offset = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  store i8 %conv, i8* %xa_offset, align 2
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @xas_store(%struct.xa_state* nocapture noundef %xas, i8* noundef %entry1) local_unnamed_addr #4 {
entry:
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %0 = load %struct.xarray*, %struct.xarray** %xa, align 8
  %xa_head = getelementptr inbounds %struct.xarray, %struct.xarray* %0, i64 0, i32 2
  %call = call fastcc i1 @xa_is_value(i8* noundef %entry1) #14
  %tobool.not = icmp eq i8* %entry1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call fastcc i1 @xa_is_node(i8* noundef nonnull %entry1) #14
  br i1 %call2, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.then
  %call3 = call fastcc i1 @xa_is_zero(i8* noundef nonnull %entry1) #14
  %lnot = xor i1 %call3, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %1 = phi i1 [ false, %if.then ], [ %lnot, %land.rhs ]
  %call6 = call fastcc i8* @xas_create(%struct.xa_state* noundef %xas, i1 noundef %1) #14
  br label %if.end

if.else:                                          ; preds = %entry
  %call7 = call i8* @xas_load(%struct.xa_state* noundef %xas) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %land.end
  %first.0 = phi i8* [ %call6, %land.end ], [ %call7, %if.else ]
  %call8 = call fastcc i1 @xas_invalid(%struct.xa_state* noundef %xas) #14
  br i1 %call8, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %2 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %tobool11.not = icmp eq %struct.xa_node* %2, null
  br i1 %tobool11.not, label %if.end15, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end10
  %xa_shift = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %3 = load i8, i8* %xa_shift, align 8
  %shift = getelementptr inbounds %struct.xa_node, %struct.xa_node* %2, i64 0, i32 0
  %4 = load i8, i8* %shift, align 8
  %cmp = icmp ult i8 %3, %4
  br i1 %cmp, label %if.then14, label %if.end15

if.then14:                                        ; preds = %land.lhs.true
  %xa_sibs = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 3
  store i8 0, i8* %xa_sibs, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %land.lhs.true, %if.end10
  %cmp16 = icmp eq i8* %first.0, %entry1
  %xa_sibs19 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 3
  %5 = load i8, i8* %xa_sibs19, align 1
  %tobool20.not = icmp eq i8 %5, 0
  %or.cond196 = select i1 %cmp16, i1 %tobool20.not, i1 false
  br i1 %or.cond196, label %cleanup, label %if.end22

if.end22:                                         ; preds = %if.end15
  %xa_offset = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  %6 = load i8, i8* %xa_offset, align 2
  %conv23 = zext i8 %6 to i32
  %conv27 = zext i8 %5 to i32
  %add = add nuw nsw i32 %conv27, %conv23
  br i1 %tobool11.not, label %if.end34, label %if.then29

if.then29:                                        ; preds = %if.end22
  %idxprom = zext i8 %6 to i64
  %arrayidx = getelementptr %struct.xa_node, %struct.xa_node* %2, i64 0, i32 7, i64 %idxprom
  %tobool31.not = icmp eq i8 %5, 0
  br i1 %tobool31.not, label %if.end34, label %if.then32

if.then32:                                        ; preds = %if.then29
  call fastcc void @xas_squash_marks(%struct.xa_state* noundef %xas) #14
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %if.then32, %if.end22
  %slot.0 = phi i8** [ %arrayidx, %if.then32 ], [ %arrayidx, %if.then29 ], [ %xa_head, %if.end22 ]
  br i1 %tobool.not, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end34
  call void @xas_init_marks(%struct.xa_state* noundef %xas) #14
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end34
  %shift64 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %2, i64 0, i32 0
  %lnot83 = xor i1 %call, true
  %lnot.ext84.neg = sext i1 %lnot83 to i32
  br label %for.cond

for.cond:                                         ; preds = %if.end116, %if.end37
  %slot.1 = phi i8** [ %slot.0, %if.end37 ], [ %incdec.ptr, %if.end116 ]
  %offset.0 = phi i32 [ %conv23, %if.end37 ], [ %inc195, %if.end116 ]
  %count.0 = phi i32 [ 0, %if.end37 ], [ %add78, %if.end116 ]
  %values.0 = phi i32 [ 0, %if.end37 ], [ %add86, %if.end116 ]
  %next.0 = phi i8* [ %first.0, %if.end37 ], [ %call107, %if.end116 ]
  %entry.addr.0 = phi i8* [ %entry1, %if.end37 ], [ %entry.addr.1194, %if.end116 ]
  %7 = ptrtoint i8* %entry.addr.0 to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(i8** elementtype(i8*) %slot.1, i64 %7) #16, !srcloc !9
  %call60 = call fastcc i1 @xa_is_node(i8* noundef %next.0) #14
  br i1 %call60, label %land.lhs.true62, label %if.end69

land.lhs.true62:                                  ; preds = %for.cond
  br i1 %tobool11.not, label %if.then67, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true62
  %8 = load i8, i8* %shift64, align 8
  %tobool66.not = icmp eq i8 %8, 0
  br i1 %tobool66.not, label %if.end72, label %if.then67

if.then67:                                        ; preds = %lor.lhs.false, %land.lhs.true62
  %call68 = call fastcc %struct.xa_node* @xa_to_node(i8* noundef %next.0) #14
  call fastcc void @xas_free_nodes(%struct.xa_state* noundef %xas, %struct.xa_node* noundef %call68) #14
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %for.cond
  br i1 %tobool11.not, label %for.end, label %if.end72

if.end72:                                         ; preds = %lor.lhs.false, %if.end69
  %tobool73.not = icmp eq i8* %next.0, null
  %lnot.ext = zext i1 %tobool73.not to i32
  %tobool75.not = icmp eq i8* %entry.addr.0, null
  %lnot.ext77.neg = sext i1 %tobool75.not to i32
  %sub = add i32 %count.0, %lnot.ext
  %add78 = add i32 %sub, %lnot.ext77.neg
  %call79 = call fastcc i1 @xa_is_value(i8* noundef %next.0) #14
  %lnot80 = xor i1 %call79, true
  %lnot.ext81 = zext i1 %lnot80 to i32
  %sub85 = add i32 %values.0, %lnot.ext84.neg
  %add86 = add i32 %sub85, %lnot.ext81
  br i1 %tobool75.not, label %if.else99, label %if.then88

if.then88:                                        ; preds = %if.end72
  %cmp89 = icmp eq i32 %offset.0, %add
  br i1 %cmp89, label %for.end, label %if.end105.thread

if.end105.thread:                                 ; preds = %if.then88
  %9 = load i8, i8* %xa_offset, align 2
  %conv96 = zext i8 %9 to i32
  %call97 = call fastcc i8* @xa_mk_sibling(i32 noundef %conv96) #14
  %inc190 = add i32 %offset.0, 1
  br label %if.end116

if.else99:                                        ; preds = %if.end72
  %cmp101 = icmp eq i32 %offset.0, 63
  %inc = add i32 %offset.0, 1
  %cmp112 = icmp ugt i32 %inc, %add
  %or.cond = select i1 %cmp101, i1 true, i1 %cmp112
  br i1 %or.cond, label %for.end, label %if.end116

if.end116:                                        ; preds = %if.else99, %if.end105.thread
  %inc195 = phi i32 [ %inc190, %if.end105.thread ], [ %inc, %if.else99 ]
  %entry.addr.1194 = phi i8* [ %call97, %if.end105.thread ], [ null, %if.else99 ]
  %call107 = call fastcc i8* @xa_entry_locked(%struct.xa_node* noundef nonnull %2, i32 noundef %inc195) #14
  %incdec.ptr = getelementptr i8*, i8** %slot.1, i64 1
  br label %for.cond

for.end:                                          ; preds = %if.else99, %if.then88, %if.end69
  %count.1 = phi i32 [ %add78, %if.then88 ], [ %add78, %if.else99 ], [ %count.0, %if.end69 ]
  %values.1 = phi i32 [ %add86, %if.then88 ], [ %add86, %if.else99 ], [ %values.0, %if.end69 ]
  call fastcc void @update_node(%struct.xa_state* noundef %xas, %struct.xa_node* noundef %2, i32 noundef %count.1, i32 noundef %values.1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end, %for.end
  %retval.0 = phi i8* [ %next.0, %for.end ], [ %first.0, %if.end ], [ %entry1, %if.end15 ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xa_is_value(i8* noundef %entry1) unnamed_addr #3 {
entry:
  %0 = ptrtoint i8* %entry1 to i64
  %and = and i64 %0, 1
  %tobool = icmp ne i64 %and, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xa_is_zero(i8* noundef readnone %entry1) unnamed_addr #3 {
entry:
  %call = call fastcc i8* @xa_mk_internal(i64 noundef 257) #14
  %cmp = icmp eq i8* %call, %entry1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @xas_invalid(%struct.xa_state* nocapture noundef readonly %xas) unnamed_addr #6 {
entry:
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %0 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %1 = ptrtoint %struct.xa_node* %0 to i64
  %and = and i64 %1, 3
  %tobool = icmp ne i64 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @xas_squash_marks(%struct.xa_state* nocapture noundef readonly %xas) unnamed_addr #4 {
entry:
  %xa_offset = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  %0 = load i8, i8* %xa_offset, align 2
  %conv = zext i8 %0 to i64
  %xa_sibs = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 3
  %1 = load i8, i8* %xa_sibs, align 1
  %conv1 = zext i8 %1 to i64
  %add = add nuw nsw i64 %conv, 1
  %add2 = add nuw nsw i64 %add, %conv1
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %cleanup23, label %do.body.preheader

do.body.preheader:                                ; preds = %entry
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %2 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %arraydecay = getelementptr %struct.xa_node, %struct.xa_node* %2, i64 0, i32 8, i32 0, i64 0, i64 0
  %conv7 = zext i8 %0 to i64
  %add8 = add nuw nsw i64 %conv7, 1
  %call = call fastcc i64 @find_next_bit(i64* noundef %arraydecay, i64 noundef %add2, i64 noundef %add8) #14
  %cmp = icmp eq i64 %call, %add2
  br i1 %cmp, label %cleanup.do.body_crit_edge, label %if.end13

if.end13:                                         ; preds = %do.body.preheader
  %3 = load i8, i8* %xa_offset, align 2
  %conv15 = zext i8 %3 to i32
  %rem.i = and i32 %conv15, 63
  %sh_prom.i = zext i32 %rem.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %div.i = lshr i32 %conv15, 6
  %idx.ext.i = zext i32 %div.i to i64
  %add.ptr.i = getelementptr %struct.xa_node, %struct.xa_node* %2, i64 0, i32 8, i32 0, i64 0, i64 %idx.ext.i
  %4 = load i64, i64* %add.ptr.i, align 8
  %or.i = or i64 %shl.i, %4
  store i64 %or.i, i64* %add.ptr.i, align 8
  %5 = load i8, i8* %xa_offset, align 2
  %conv17 = zext i8 %5 to i32
  %add18 = add nuw nsw i32 %conv17, 1
  %6 = load i8, i8* %xa_sibs, align 1
  %conv20 = zext i8 %6 to i32
  call void @__bitmap_clear(i64* noundef %arraydecay, i32 noundef %add18, i32 noundef %conv20) #15
  br label %cleanup.do.body_crit_edge

cleanup.do.body_crit_edge:                        ; preds = %do.body.preheader, %if.end13
  %.pre = load i8, i8* %xa_offset, align 2
  %7 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %arraydecay.1 = getelementptr %struct.xa_node, %struct.xa_node* %7, i64 0, i32 8, i32 0, i64 1, i64 0
  %conv7.1 = zext i8 %.pre to i64
  %add8.1 = add nuw nsw i64 %conv7.1, 1
  %call.1 = call fastcc i64 @find_next_bit(i64* noundef %arraydecay.1, i64 noundef %add2, i64 noundef %add8.1) #14
  %cmp.1 = icmp eq i64 %call.1, %add2
  br i1 %cmp.1, label %cleanup.do.body_crit_edge.1, label %if.end13.1

if.end13.1:                                       ; preds = %cleanup.do.body_crit_edge
  %8 = load i8, i8* %xa_offset, align 2
  %conv15.1 = zext i8 %8 to i32
  %rem.i.1 = and i32 %conv15.1, 63
  %sh_prom.i.1 = zext i32 %rem.i.1 to i64
  %shl.i.1 = shl nuw i64 1, %sh_prom.i.1
  %div.i.1 = lshr i32 %conv15.1, 6
  %idx.ext.i.1 = zext i32 %div.i.1 to i64
  %add.ptr.i.1 = getelementptr %struct.xa_node, %struct.xa_node* %7, i64 0, i32 8, i32 0, i64 1, i64 %idx.ext.i.1
  %9 = load i64, i64* %add.ptr.i.1, align 8
  %or.i.1 = or i64 %shl.i.1, %9
  store i64 %or.i.1, i64* %add.ptr.i.1, align 8
  %10 = load i8, i8* %xa_offset, align 2
  %conv17.1 = zext i8 %10 to i32
  %add18.1 = add nuw nsw i32 %conv17.1, 1
  %11 = load i8, i8* %xa_sibs, align 1
  %conv20.1 = zext i8 %11 to i32
  call void @__bitmap_clear(i64* noundef %arraydecay.1, i32 noundef %add18.1, i32 noundef %conv20.1) #15
  br label %cleanup.do.body_crit_edge.1

cleanup.do.body_crit_edge.1:                      ; preds = %cleanup.do.body_crit_edge, %if.end13.1
  %.pre.1 = load i8, i8* %xa_offset, align 2
  %12 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %arraydecay.2 = getelementptr %struct.xa_node, %struct.xa_node* %12, i64 0, i32 8, i32 0, i64 2, i64 0
  %conv7.2 = zext i8 %.pre.1 to i64
  %add8.2 = add nuw nsw i64 %conv7.2, 1
  %call.2 = call fastcc i64 @find_next_bit(i64* noundef %arraydecay.2, i64 noundef %add2, i64 noundef %add8.2) #14
  %cmp.2 = icmp eq i64 %call.2, %add2
  br i1 %cmp.2, label %cleanup23, label %if.end13.2

if.end13.2:                                       ; preds = %cleanup.do.body_crit_edge.1
  %13 = load i8, i8* %xa_offset, align 2
  %conv15.2 = zext i8 %13 to i32
  %rem.i.2 = and i32 %conv15.2, 63
  %sh_prom.i.2 = zext i32 %rem.i.2 to i64
  %shl.i.2 = shl nuw i64 1, %sh_prom.i.2
  %div.i.2 = lshr i32 %conv15.2, 6
  %idx.ext.i.2 = zext i32 %div.i.2 to i64
  %add.ptr.i.2 = getelementptr %struct.xa_node, %struct.xa_node* %12, i64 0, i32 8, i32 0, i64 2, i64 %idx.ext.i.2
  %14 = load i64, i64* %add.ptr.i.2, align 8
  %or.i.2 = or i64 %shl.i.2, %14
  store i64 %or.i.2, i64* %add.ptr.i.2, align 8
  %15 = load i8, i8* %xa_offset, align 2
  %conv17.2 = zext i8 %15 to i32
  %add18.2 = add nuw nsw i32 %conv17.2, 1
  %16 = load i8, i8* %xa_sibs, align 1
  %conv20.2 = zext i8 %16 to i32
  call void @__bitmap_clear(i64* noundef %arraydecay.2, i32 noundef %add18.2, i32 noundef %conv20.2) #15
  br label %cleanup23

cleanup23:                                        ; preds = %if.end13.2, %cleanup.do.body_crit_edge.1, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local void @xas_init_marks(%struct.xa_state* nocapture noundef readonly %xas) local_unnamed_addr #8 {
entry:
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  br label %for.cond

for.cond:                                         ; preds = %do.body, %entry
  %mark.0 = phi i32 [ 0, %entry ], [ %add, %do.body ]
  %0 = load %struct.xarray*, %struct.xarray** %xa, align 8
  %call = call fastcc i1 @xa_track_free(%struct.xarray* noundef %0) #14
  %cmp = icmp eq i32 %mark.0, 0
  %or.cond = select i1 %call, i1 %cmp, i1 false
  br i1 %or.cond, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %for.cond
  call void @xas_set_mark(%struct.xa_state* noundef %xas, i32 noundef 0) #14
  br label %do.body

if.end:                                           ; preds = %for.cond
  call void @xas_clear_mark(%struct.xa_state* noundef %xas, i32 noundef %mark.0) #14
  %cmp1 = icmp eq i32 %mark.0, 2
  br i1 %cmp1, label %for.end, label %do.body

do.body:                                          ; preds = %if.end.thread, %if.end
  %add = add i32 %mark.0, 1
  br label %for.cond

for.end:                                          ; preds = %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @xas_free_nodes(%struct.xa_state* nocapture noundef readonly %xas, %struct.xa_node* noundef %top) unnamed_addr #4 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %offset.0 = phi i32 [ 0, %entry ], [ %offset.0.be, %for.cond.backedge ]
  %node.0 = phi %struct.xa_node* [ %top, %entry ], [ %node.0.be, %for.cond.backedge ]
  %call = call fastcc i8* @xa_entry_locked(%struct.xa_node* noundef %node.0, i32 noundef %offset.0) #14
  %shift = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node.0, i64 0, i32 0
  %0 = load i8, i8* %shift, align 8
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.cond
  %call2 = call fastcc i1 @xa_is_node(i8* noundef %call) #14
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call4 = call fastcc %struct.xa_node* @xa_to_node(i8* noundef %call) #14
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %while.cond, %if.then
  %offset.0.be = phi i32 [ 0, %if.then ], [ %offset.1, %while.cond ]
  %node.0.be = phi %struct.xa_node* [ %call4, %if.then ], [ %node.1, %while.cond ]
  br label %for.cond

if.end:                                           ; preds = %land.lhs.true, %for.cond
  %tobool5.not = icmp eq i8* %call, null
  br i1 %tobool5.not, label %while.cond.preheader, label %do.body9

do.body9:                                         ; preds = %if.end
  %call10 = call fastcc i8* @xa_mk_internal(i64 noundef 256) #14
  %idxprom = zext i32 %offset.0 to i64
  %arrayidx = getelementptr %struct.xa_node, %struct.xa_node* %node.0, i64 0, i32 7, i64 %idxprom
  store volatile i8* %call10, i8** %arrayidx, align 8
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.body9, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %offset.1.in = phi i32 [ %conv23, %while.body ], [ %offset.0, %while.cond.preheader ]
  %node.1 = phi %struct.xa_node* [ %call21, %while.body ], [ %node.0, %while.cond.preheader ]
  %offset.1 = add i32 %offset.1.in, 1
  %cmp = icmp eq i32 %offset.1, 64
  br i1 %cmp, label %while.body, label %for.cond.backedge

while.body:                                       ; preds = %while.cond
  %call21 = call fastcc %struct.xa_node* @xa_parent_locked(%struct.xa_node* noundef %node.1) #14
  %offset22 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node.1, i64 0, i32 1
  %1 = load i8, i8* %offset22, align 1
  %conv23 = zext i8 %1 to i32
  %count = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node.1, i64 0, i32 2
  store i8 0, i8* %count, align 2
  %nr_values = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node.1, i64 0, i32 3
  store i8 0, i8* %nr_values, align 1
  call fastcc void @xas_update(%struct.xa_state* noundef %xas, %struct.xa_node* noundef %node.1) #14
  call fastcc void @xa_node_free(%struct.xa_node* noundef %node.1) #14
  %cmp24 = icmp eq %struct.xa_node* %node.1, %top
  br i1 %cmp24, label %cleanup31, label %while.cond

cleanup31:                                        ; preds = %while.body
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc nonnull i8* @xa_mk_sibling(i32 noundef %offset) unnamed_addr #3 {
entry:
  %conv = zext i32 %offset to i64
  %call = call fastcc i8* @xa_mk_internal(i64 noundef %conv) #14
  ret i8* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @xa_entry_locked(%struct.xa_node* nocapture noundef readonly %node, i32 noundef %offset) unnamed_addr #6 {
entry:
  %idxprom = zext i32 %offset to i64
  %arrayidx = getelementptr %struct.xa_node, %struct.xa_node* %node, i64 0, i32 7, i64 %idxprom
  %0 = load i8*, i8** %arrayidx, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @update_node(%struct.xa_state* nocapture noundef %xas, %struct.xa_node* noundef %node, i32 noundef %count, i32 noundef %values) unnamed_addr #4 {
entry:
  %tobool.not = icmp eq %struct.xa_node* %node, null
  %0 = or i32 %values, %count
  %.not = icmp eq i32 %0, 0
  %or.cond = or i1 %tobool.not, %.not
  br i1 %or.cond, label %if.end12, label %if.end

if.end:                                           ; preds = %entry
  %count3 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node, i64 0, i32 2
  %1 = load i8, i8* %count3, align 2
  %2 = trunc i32 %count to i8
  %conv4 = add i8 %1, %2
  store i8 %conv4, i8* %count3, align 2
  %nr_values = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node, i64 0, i32 3
  %3 = load i8, i8* %nr_values, align 1
  %4 = trunc i32 %values to i8
  %conv7 = add i8 %3, %4
  store i8 %conv7, i8* %nr_values, align 1
  call fastcc void @xas_update(%struct.xa_state* noundef %xas, %struct.xa_node* noundef nonnull %node) #14
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  call fastcc void @xas_delete_node(%struct.xa_state* noundef %xas) #14
  br label %if.end12

if.end12:                                         ; preds = %entry, %if.then11, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i1 @xas_get_mark(%struct.xa_state* nocapture noundef readonly %xas, i32 noundef %mark) local_unnamed_addr #2 {
entry:
  %call = call fastcc i1 @xas_invalid(%struct.xa_state* noundef %xas) #14
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %entry
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %0 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %tobool.not = icmp eq %struct.xa_node* %0, null
  br i1 %tobool.not, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %1 = load %struct.xarray*, %struct.xarray** %xa, align 8
  %call2 = call fastcc i1 @xa_marked(%struct.xarray* noundef %1, i32 noundef %mark) #14
  br label %return

if.end3:                                          ; preds = %if.end
  %xa_offset = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  %2 = load i8, i8* %xa_offset, align 2
  %conv = zext i8 %2 to i32
  %call5 = call fastcc i1 @node_get_mark(%struct.xa_node* noundef nonnull %0, i32 noundef %conv, i32 noundef %mark) #14
  br label %return

return:                                           ; preds = %entry, %if.end3, %if.then1
  %retval.0 = phi i1 [ %call5, %if.end3 ], [ %call2, %if.then1 ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @xa_marked(%struct.xarray* nocapture noundef readonly %xa, i32 noundef %mark) unnamed_addr #6 {
entry:
  %xa_flags = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 1
  %0 = load i32, i32* %xa_flags, align 4
  %shl = shl i32 33554432, %mark
  %and = and i32 %0, %shl
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @node_get_mark(%struct.xa_node* noundef %node, i32 noundef %offset, i32 noundef %mark) unnamed_addr #2 {
entry:
  %call = call fastcc i64* @node_marks(%struct.xa_node* noundef %node, i32 noundef %mark) #14
  %div.i = lshr i32 %offset, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr i64, i64* %call, i64 %idxprom.i
  %0 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %offset, 63
  %sh_prom.i = zext i32 %and.i to i64
  %1 = shl nuw i64 1, %sh_prom.i
  %2 = and i64 %0, %1
  %tobool = icmp ne i64 %2, 0
  ret i1 %tobool
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local void @xas_set_mark(%struct.xa_state* nocapture noundef readonly %xas, i32 noundef %mark) local_unnamed_addr #8 {
entry:
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %0 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %call = call fastcc i1 @xas_invalid(%struct.xa_state* noundef %xas) #14
  br i1 %call, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %tobool.not25 = icmp eq %struct.xa_node* %0, null
  br i1 %tobool.not25, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %while.cond.preheader
  %xa_offset = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %if.end3
  %offset.0.in.in27 = phi i8* [ %offset4, %if.end3 ], [ %xa_offset, %while.body.preheader ]
  %node.026 = phi %struct.xa_node* [ %call6, %if.end3 ], [ %0, %while.body.preheader ]
  %offset.0.in = load i8, i8* %offset.0.in.in27, align 1
  %offset.0 = zext i8 %offset.0.in to i32
  %call1 = call fastcc i1 @node_set_mark(%struct.xa_node* noundef nonnull %node.026, i32 noundef %offset.0, i32 noundef %mark) #14
  br i1 %call1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %while.body
  %offset4 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node.026, i64 0, i32 1
  %call6 = call fastcc %struct.xa_node* @xa_parent_locked(%struct.xa_node* noundef nonnull %node.026) #14
  %tobool.not = icmp eq %struct.xa_node* %call6, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end3, %while.cond.preheader
  %xa7 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %1 = load %struct.xarray*, %struct.xarray** %xa7, align 8
  %call8 = call fastcc i1 @xa_marked(%struct.xarray* noundef %1, i32 noundef %mark) #14
  br i1 %call8, label %cleanup, label %if.then9

if.then9:                                         ; preds = %while.end
  call fastcc void @xa_mark_set(%struct.xarray* noundef %1, i32 noundef %mark) #14
  br label %cleanup

cleanup:                                          ; preds = %while.body, %while.end, %if.then9, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @node_set_mark(%struct.xa_node* noundef %node, i32 noundef %offset, i32 noundef %mark) unnamed_addr #7 {
entry:
  %call = call fastcc i64* @node_marks(%struct.xa_node* noundef %node, i32 noundef %mark) #14
  %rem.i = and i32 %offset, 63
  %sh_prom.i = zext i32 %rem.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %div.i = lshr i32 %offset, 6
  %idx.ext.i = zext i32 %div.i to i64
  %add.ptr.i = getelementptr i64, i64* %call, i64 %idx.ext.i
  %0 = load i64, i64* %add.ptr.i, align 8
  %or.i = or i64 %0, %shl.i
  store i64 %or.i, i64* %add.ptr.i, align 8
  %and.i = and i64 %0, %shl.i
  %cmp.i = icmp ne i64 %and.i, 0
  ret i1 %cmp.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @xa_mark_set(%struct.xarray* nocapture noundef %xa, i32 noundef %mark) unnamed_addr #7 {
entry:
  %xa_flags = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 1
  %0 = load i32, i32* %xa_flags, align 4
  %shl = shl i32 33554432, %mark
  %and = and i32 %0, %shl
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %or = or i32 %0, %shl
  store i32 %or, i32* %xa_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local void @xas_clear_mark(%struct.xa_state* nocapture noundef readonly %xas, i32 noundef %mark) local_unnamed_addr #8 {
entry:
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %0 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %call = call fastcc i1 @xas_invalid(%struct.xa_state* noundef %xas) #14
  br i1 %call, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %tobool.not30 = icmp eq %struct.xa_node* %0, null
  br i1 %tobool.not30, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %while.cond.preheader
  %xa_offset = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %if.end6
  %offset.0.in.in32 = phi i8* [ %offset7, %if.end6 ], [ %xa_offset, %while.body.preheader ]
  %node.031 = phi %struct.xa_node* [ %call9, %if.end6 ], [ %0, %while.body.preheader ]
  %offset.0.in = load i8, i8* %offset.0.in.in32, align 1
  %offset.0 = zext i8 %offset.0.in to i32
  %call1 = call fastcc i1 @node_clear_mark(%struct.xa_node* noundef nonnull %node.031, i32 noundef %offset.0, i32 noundef %mark) #14
  br i1 %call1, label %if.end3, label %cleanup

if.end3:                                          ; preds = %while.body
  %call4 = call fastcc i1 @node_any_mark(%struct.xa_node* noundef nonnull %node.031, i32 noundef %mark) #14
  br i1 %call4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end3
  %offset7 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node.031, i64 0, i32 1
  %call9 = call fastcc %struct.xa_node* @xa_parent_locked(%struct.xa_node* noundef nonnull %node.031) #14
  %tobool.not = icmp eq %struct.xa_node* %call9, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end6, %while.cond.preheader
  %xa10 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %1 = load %struct.xarray*, %struct.xarray** %xa10, align 8
  %call11 = call fastcc i1 @xa_marked(%struct.xarray* noundef %1, i32 noundef %mark) #14
  br i1 %call11, label %if.then12, label %cleanup

if.then12:                                        ; preds = %while.end
  call fastcc void @xa_mark_clear(%struct.xarray* noundef %1, i32 noundef %mark) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %while.body, %while.end, %if.then12, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @node_clear_mark(%struct.xa_node* noundef %node, i32 noundef %offset, i32 noundef %mark) unnamed_addr #7 {
entry:
  %call = call fastcc i64* @node_marks(%struct.xa_node* noundef %node, i32 noundef %mark) #14
  %rem.i = and i32 %offset, 63
  %sh_prom.i = zext i32 %rem.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %div.i = lshr i32 %offset, 6
  %idx.ext.i = zext i32 %div.i to i64
  %add.ptr.i = getelementptr i64, i64* %call, i64 %idx.ext.i
  %0 = load i64, i64* %add.ptr.i, align 8
  %neg.i = xor i64 %shl.i, -1
  %and.i = and i64 %0, %neg.i
  store i64 %and.i, i64* %add.ptr.i, align 8
  %and1.i = and i64 %0, %shl.i
  %cmp.i = icmp ne i64 %and1.i, 0
  ret i1 %cmp.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @node_any_mark(%struct.xa_node* noundef readonly %node, i32 noundef %mark) unnamed_addr #6 {
entry:
  %call = call fastcc i64* @node_marks(%struct.xa_node* noundef %node, i32 noundef %mark) #14
  %call1 = call fastcc i1 @bitmap_empty(i64* noundef %call) #14
  %lnot = xor i1 %call1, true
  ret i1 %lnot
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @xa_mark_clear(%struct.xarray* nocapture noundef %xa, i32 noundef %mark) unnamed_addr #7 {
entry:
  %xa_flags = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 1
  %0 = load i32, i32* %xa_flags, align 4
  %shl = shl i32 33554432, %mark
  %and = and i32 %0, %shl
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %neg = xor i32 %shl, -1
  %and3 = and i32 %0, %neg
  store i32 %and3, i32* %xa_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @xa_track_free(%struct.xarray* nocapture noundef readonly %xa) unnamed_addr #6 {
entry:
  %xa_flags = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 1
  %0 = load i32, i32* %xa_flags, align 4
  %and = and i32 %0, 4
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local void @xas_pause(%struct.xa_state* nocapture noundef %xas) local_unnamed_addr #2 {
entry:
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %0 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %call = call fastcc i1 @xas_invalid(%struct.xa_state* noundef %xas) #14
  br i1 %call, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  store %struct.xa_node* inttoptr (i64 3 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  %tobool.not = icmp eq %struct.xa_node* %0, null
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %xa_offset = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  %1 = load i8, i8* %xa_offset, align 2
  %conv = zext i8 %1 to i64
  %inc = add nuw nsw i64 %conv, 1
  %cmp = icmp ult i8 %1, 63
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %if.then2
  %conv4 = trunc i64 %inc to i32
  %2 = call fastcc i8* @xa_entry(%struct.xa_node* noundef nonnull %0, i32 noundef %conv4) #14
  %.pre = load i8, i8* %xa_offset, align 2
  %.pre36 = zext i8 %.pre to i64
  br label %while.end

while.end:                                        ; preds = %while.body, %if.then2
  %conv10.pre-phi = phi i64 [ %.pre36, %while.body ], [ %conv, %if.then2 ]
  %sub = sub nsw i64 %inc, %conv10.pre-phi
  %shift = getelementptr inbounds %struct.xa_node, %struct.xa_node* %0, i64 0, i32 0
  %3 = load i8, i8* %shift, align 8
  %sh_prom = zext i8 %3 to i64
  %shl = shl i64 %sub, %sh_prom
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %4 = load i64, i64* %xa_index, align 8
  %add = add i64 %shl, %4
  store i64 %add, i64* %xa_index, align 8
  %cmp13 = icmp eq i64 %add, 0
  br i1 %cmp13, label %if.then15, label %cleanup

if.then15:                                        ; preds = %while.end
  store %struct.xa_node* inttoptr (i64 1 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end
  %xa_index18 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %5 = load i64, i64* %xa_index18, align 8
  %inc19 = add i64 %5, 1
  store i64 %inc19, i64* %xa_index18, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then15, %while.end, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i8* @xa_entry(%struct.xa_node* noundef %node, i32 noundef %offset) unnamed_addr #2 {
entry:
  %idxprom = zext i32 %offset to i64
  %arrayidx = getelementptr %struct.xa_node, %struct.xa_node* %node, i64 0, i32 7, i64 %idxprom
  %0 = load volatile i8*, i8** %arrayidx, align 8
  ret i8* %0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local i8* @__xas_prev(%struct.xa_state* nocapture noundef %xas) local_unnamed_addr #0 {
entry:
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %0 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %call = call fastcc i1 @xas_frozen(%struct.xa_node* noundef %0) #14
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %1 = load i64, i64* %xa_index, align 8
  %dec = add i64 %1, -1
  store i64 %dec, i64* %xa_index, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool.not = icmp eq %struct.xa_node* %0, null
  br i1 %tobool.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call fastcc void @set_bounds(%struct.xa_state* noundef %xas) #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call7 = call fastcc i1 @xas_not_node(%struct.xa_node* noundef nonnull %0) #14
  br i1 %call7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  %call9 = call i8* @xas_load(%struct.xa_state* noundef %xas) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %xa_offset = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  %2 = load i8, i8* %xa_offset, align 2
  %conv = zext i8 %2 to i32
  %xa_index11 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %3 = load i64, i64* %xa_index11, align 8
  %call13 = call fastcc i32 @get_offset(i64 noundef %3, %struct.xa_node* noundef nonnull %0) #14
  %cmp.not = icmp eq i32 %call13, %conv
  br i1 %cmp.not, label %if.end18, label %if.then15

if.then15:                                        ; preds = %if.end10
  %dec17 = add i8 %2, -1
  store i8 %dec17, i8* %xa_offset, align 2
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end10
  %4 = phi i8 [ %dec17, %if.then15 ], [ %2, %if.end10 ]
  %cmp2180 = icmp eq i8 %4, -1
  br i1 %cmp2180, label %while.body, label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.body.while.cond_crit_edge, %if.end18
  %.lcssa78 = phi %struct.xa_node* [ %0, %if.end18 ], [ %call28, %while.body.while.cond_crit_edge ]
  %.lcssa = phi i8 [ %4, %if.end18 ], [ %.pre, %while.body.while.cond_crit_edge ]
  %conv3870 = zext i8 %.lcssa to i32
  %call3971 = call fastcc i8* @xa_entry(%struct.xa_node* noundef nonnull %.lcssa78, i32 noundef %conv3870) #14
  %call4072 = call fastcc i1 @xa_is_node(i8* noundef %call3971) #14
  br i1 %call4072, label %if.end42, label %cleanup

while.body:                                       ; preds = %if.end18, %while.body.while.cond_crit_edge
  %5 = phi %struct.xa_node* [ %call28, %while.body.while.cond_crit_edge ], [ %0, %if.end18 ]
  %offset = getelementptr inbounds %struct.xa_node, %struct.xa_node* %5, i64 0, i32 1
  %6 = load i8, i8* %offset, align 1
  %sub = add i8 %6, -1
  store i8 %sub, i8* %xa_offset, align 2
  %call28 = call fastcc %struct.xa_node* @xa_parent(%struct.xa_node* noundef nonnull %5) #14
  store %struct.xa_node* %call28, %struct.xa_node** %xa_node, align 8
  %tobool31.not = icmp eq %struct.xa_node* %call28, null
  br i1 %tobool31.not, label %if.then32, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  %.pre = load i8, i8* %xa_offset, align 2
  %cmp21 = icmp eq i8 %.pre, -1
  br i1 %cmp21, label %while.body, label %for.cond.preheader

if.then32:                                        ; preds = %while.body
  call fastcc void @set_bounds(%struct.xa_state* noundef %xas) #14
  br label %cleanup

if.end42:                                         ; preds = %for.cond.preheader, %if.end42
  %call3973 = phi i8* [ %call39, %if.end42 ], [ %call3971, %for.cond.preheader ]
  %call43 = call fastcc %struct.xa_node* @xa_to_node(i8* noundef %call3973) #14
  store %struct.xa_node* %call43, %struct.xa_node** %xa_node, align 8
  call fastcc void @xas_set_offset(%struct.xa_state* noundef %xas) #14
  %7 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %8 = load i8, i8* %xa_offset, align 2
  %conv38 = zext i8 %8 to i32
  %call39 = call fastcc i8* @xa_entry(%struct.xa_node* noundef %7, i32 noundef %conv38) #14
  %call40 = call fastcc i1 @xa_is_node(i8* noundef %call39) #14
  br i1 %call40, label %if.end42, label %cleanup

cleanup:                                          ; preds = %if.end42, %for.cond.preheader, %if.then32, %if.then8, %if.then3
  %retval.0 = phi i8* [ %call9, %if.then8 ], [ null, %if.then32 ], [ null, %if.then3 ], [ %call3971, %for.cond.preheader ], [ %call39, %if.end42 ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xas_frozen(%struct.xa_node* noundef %node) unnamed_addr #3 {
entry:
  %0 = ptrtoint %struct.xa_node* %node to i64
  %and = and i64 %0, 2
  %tobool = icmp ne i64 %and, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @set_bounds(%struct.xa_state* nocapture noundef writeonly %xas) unnamed_addr #9 {
entry:
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* inttoptr (i64 1 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xas_not_node(%struct.xa_node* noundef %node) unnamed_addr #3 {
entry:
  %0 = ptrtoint %struct.xa_node* %node to i64
  %and = and i64 %0, 3
  %tobool = icmp ne i64 %and, 0
  %tobool1.not = icmp eq %struct.xa_node* %node, null
  %1 = or i1 %tobool1.not, %tobool
  ret i1 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @get_offset(i64 noundef %index, %struct.xa_node* nocapture noundef readonly %node) unnamed_addr #6 {
entry:
  %shift = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node, i64 0, i32 0
  %0 = load i8, i8* %shift, align 8
  %sh_prom = zext i8 %0 to i64
  %shr = lshr i64 %index, %sh_prom
  %1 = trunc i64 %shr to i32
  %conv1 = and i32 %1, 63
  ret i32 %conv1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.xa_node* @xa_parent(%struct.xa_node* noundef %node) unnamed_addr #2 {
entry:
  %parent = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node, i64 0, i32 4
  %0 = load volatile %struct.xa_node*, %struct.xa_node** %parent, align 8
  ret %struct.xa_node* %0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local i8* @__xas_next(%struct.xa_state* nocapture noundef %xas) local_unnamed_addr #0 {
entry:
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %0 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %call = call fastcc i1 @xas_frozen(%struct.xa_node* noundef %0) #14
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %1 = load i64, i64* %xa_index, align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* %xa_index, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool.not = icmp eq %struct.xa_node* %0, null
  br i1 %tobool.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call fastcc void @set_bounds(%struct.xa_state* noundef %xas) #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call7 = call fastcc i1 @xas_not_node(%struct.xa_node* noundef nonnull %0) #14
  br i1 %call7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  %call9 = call i8* @xas_load(%struct.xa_state* noundef %xas) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %xa_offset = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  %2 = load i8, i8* %xa_offset, align 2
  %conv = zext i8 %2 to i32
  %xa_index11 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %3 = load i64, i64* %xa_index11, align 8
  %call13 = call fastcc i32 @get_offset(i64 noundef %3, %struct.xa_node* noundef nonnull %0) #14
  %cmp.not = icmp eq i32 %call13, %conv
  br i1 %cmp.not, label %if.end18, label %if.then15

if.then15:                                        ; preds = %if.end10
  %inc17 = add i8 %2, 1
  store i8 %inc17, i8* %xa_offset, align 2
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end10
  %4 = phi i8 [ %inc17, %if.then15 ], [ %2, %if.end10 ]
  %cmp2180 = icmp eq i8 %4, 64
  br i1 %cmp2180, label %while.body, label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.body.while.cond_crit_edge, %if.end18
  %.lcssa78 = phi %struct.xa_node* [ %0, %if.end18 ], [ %call28, %while.body.while.cond_crit_edge ]
  %.lcssa = phi i8 [ %4, %if.end18 ], [ %.pre, %while.body.while.cond_crit_edge ]
  %conv3870 = zext i8 %.lcssa to i32
  %call3971 = call fastcc i8* @xa_entry(%struct.xa_node* noundef nonnull %.lcssa78, i32 noundef %conv3870) #14
  %call4072 = call fastcc i1 @xa_is_node(i8* noundef %call3971) #14
  br i1 %call4072, label %if.end42, label %cleanup

while.body:                                       ; preds = %if.end18, %while.body.while.cond_crit_edge
  %5 = phi %struct.xa_node* [ %call28, %while.body.while.cond_crit_edge ], [ %0, %if.end18 ]
  %offset = getelementptr inbounds %struct.xa_node, %struct.xa_node* %5, i64 0, i32 1
  %6 = load i8, i8* %offset, align 1
  %add = add i8 %6, 1
  store i8 %add, i8* %xa_offset, align 2
  %call28 = call fastcc %struct.xa_node* @xa_parent(%struct.xa_node* noundef nonnull %5) #14
  store %struct.xa_node* %call28, %struct.xa_node** %xa_node, align 8
  %tobool31.not = icmp eq %struct.xa_node* %call28, null
  br i1 %tobool31.not, label %if.then32, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  %.pre = load i8, i8* %xa_offset, align 2
  %cmp21 = icmp eq i8 %.pre, 64
  br i1 %cmp21, label %while.body, label %for.cond.preheader

if.then32:                                        ; preds = %while.body
  call fastcc void @set_bounds(%struct.xa_state* noundef %xas) #14
  br label %cleanup

if.end42:                                         ; preds = %for.cond.preheader, %if.end42
  %call3973 = phi i8* [ %call39, %if.end42 ], [ %call3971, %for.cond.preheader ]
  %call43 = call fastcc %struct.xa_node* @xa_to_node(i8* noundef %call3973) #14
  store %struct.xa_node* %call43, %struct.xa_node** %xa_node, align 8
  call fastcc void @xas_set_offset(%struct.xa_state* noundef %xas) #14
  %7 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %8 = load i8, i8* %xa_offset, align 2
  %conv38 = zext i8 %8 to i32
  %call39 = call fastcc i8* @xa_entry(%struct.xa_node* noundef %7, i32 noundef %conv38) #14
  %call40 = call fastcc i1 @xa_is_node(i8* noundef %call39) #14
  br i1 %call40, label %if.end42, label %cleanup

cleanup:                                          ; preds = %if.end42, %for.cond.preheader, %if.then32, %if.then8, %if.then3
  %retval.0 = phi i8* [ %call9, %if.then8 ], [ null, %if.then32 ], [ null, %if.then3 ], [ %call3971, %for.cond.preheader ], [ %call39, %if.end42 ]
  ret i8* %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local i8* @xas_find(%struct.xa_state* nocapture noundef %xas, i64 noundef %max) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @xas_error(%struct.xa_state* noundef %xas) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %0 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %cmp = icmp eq %struct.xa_node* %0, inttoptr (i64 1 to %struct.xa_node*)
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %1 = load i64, i64* %xa_index, align 8
  %cmp2 = icmp ugt i64 %1, %max
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call fastcc void @set_bounds(%struct.xa_state* noundef %xas) #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %magicptr = ptrtoint %struct.xa_node* %0 to i64
  switch i64 %magicptr, label %if.else21 [
    i64 0, label %if.then8
    i64 3, label %if.then13
  ]

if.then8:                                         ; preds = %if.end5
  store i64 1, i64* %xa_index, align 8
  call fastcc void @set_bounds(%struct.xa_state* noundef %xas) #14
  br label %cleanup

if.then13:                                        ; preds = %if.end5
  %call14 = call i8* @xas_load(%struct.xa_state* noundef %xas) #14
  %tobool15.not = icmp eq i8* %call14, null
  br i1 %tobool15.not, label %lor.lhs.false16, label %cleanup

lor.lhs.false16:                                  ; preds = %if.then13
  %2 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %call18 = call fastcc i1 @xas_not_node(%struct.xa_node* noundef %2) #14
  br i1 %call18, label %cleanup, label %if.end34

if.else21:                                        ; preds = %if.end5
  %shift = getelementptr inbounds %struct.xa_node, %struct.xa_node* %0, i64 0, i32 0
  %3 = load i8, i8* %shift, align 8
  %tobool23.not = icmp eq i8 %3, 0
  br i1 %tobool23.not, label %land.lhs.true, label %if.end34

land.lhs.true:                                    ; preds = %if.else21
  %xa_offset = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  %4 = load i8, i8* %xa_offset, align 2
  %conv = zext i8 %4 to i64
  %and = and i64 %1, 63
  %cmp25.not = icmp eq i64 %and, %conv
  br i1 %cmp25.not, label %if.end34, label %if.then27

if.then27:                                        ; preds = %land.lhs.true
  %5 = trunc i64 %1 to i8
  %6 = add i8 %5, 63
  %7 = and i8 %6, 63
  %conv30 = add nuw nsw i8 %7, 1
  store i8 %conv30, i8* %xa_offset, align 2
  br label %if.end34

if.end34:                                         ; preds = %lor.lhs.false16, %if.then27, %land.lhs.true, %if.else21
  call fastcc void @xas_advance(%struct.xa_state* noundef %xas) #14
  %.pr121 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %tobool36.not120122 = icmp eq %struct.xa_node* %.pr121, null
  br i1 %tobool36.not120122, label %if.then75, label %land.rhs.lr.ph.lr.ph

land.rhs.lr.ph.lr.ph:                             ; preds = %if.end34
  %xa_offset40 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.backedge, %land.rhs.lr.ph.lr.ph
  %8 = phi %struct.xa_node* [ %.pr121, %land.rhs.lr.ph.lr.ph ], [ %.be133, %land.rhs.backedge ]
  %9 = load i64, i64* %xa_index, align 8
  %cmp38.not = icmp ugt i64 %9, %max
  br i1 %cmp38.not, label %cleanup, label %while.body

while.body:                                       ; preds = %land.rhs
  %10 = load i8, i8* %xa_offset40, align 2
  %cmp42 = icmp eq i8 %10, 64
  br i1 %cmp42, label %if.then47, label %if.end56, !prof !10

if.then47:                                        ; preds = %while.body
  %offset = getelementptr inbounds %struct.xa_node, %struct.xa_node* %8, i64 0, i32 1
  %11 = load i8, i8* %offset, align 1
  %add50 = add i8 %11, 1
  store i8 %add50, i8* %xa_offset40, align 2
  %call54 = call fastcc %struct.xa_node* @xa_parent(%struct.xa_node* noundef nonnull %8) #14
  store %struct.xa_node* %call54, %struct.xa_node** %xa_node, align 8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then47, %if.then63
  %.be = phi %struct.xa_node* [ %call64, %if.then63 ], [ %call54, %if.then47 ]
  %tobool36.not = icmp eq %struct.xa_node* %.be, null
  br i1 %tobool36.not, label %if.then75, label %land.rhs.backedge

land.rhs.backedge:                                ; preds = %while.cond.backedge, %if.end72
  %.be133 = phi %struct.xa_node* [ %.be, %while.cond.backedge ], [ %.pr, %if.end72 ]
  br label %land.rhs

if.end56:                                         ; preds = %while.body
  %conv60 = zext i8 %10 to i32
  %call61 = call fastcc i8* @xa_entry(%struct.xa_node* noundef nonnull %8, i32 noundef %conv60) #14
  %call62 = call fastcc i1 @xa_is_node(i8* noundef %call61) #14
  br i1 %call62, label %if.then63, label %if.end67

if.then63:                                        ; preds = %if.end56
  %call64 = call fastcc %struct.xa_node* @xa_to_node(i8* noundef %call61) #14
  store %struct.xa_node* %call64, %struct.xa_node** %xa_node, align 8
  store i8 0, i8* %xa_offset40, align 2
  br label %while.cond.backedge

if.end67:                                         ; preds = %if.end56
  %tobool68.not = icmp eq i8* %call61, null
  br i1 %tobool68.not, label %if.end72, label %cleanup

if.end72:                                         ; preds = %if.end67
  call fastcc void @xas_advance(%struct.xa_state* noundef %xas) #14
  %.pr = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %tobool36.not120 = icmp eq %struct.xa_node* %.pr, null
  br i1 %tobool36.not120, label %if.then75, label %land.rhs.backedge

if.then75:                                        ; preds = %if.end72, %while.cond.backedge, %if.end34
  store %struct.xa_node* inttoptr (i64 1 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %land.rhs, %if.then75, %if.then13, %lor.lhs.false16, %entry, %lor.lhs.false, %if.then8, %if.then3
  %retval.0 = phi i8* [ null, %if.then3 ], [ null, %if.then8 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %lor.lhs.false16 ], [ %call14, %if.then13 ], [ null, %if.then75 ], [ %call61, %if.end67 ], [ null, %land.rhs ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @xas_advance(%struct.xa_state* nocapture noundef %xas) unnamed_addr #7 {
entry:
  %xa_offset = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  %0 = load i8, i8* %xa_offset, align 2
  %inc = add i8 %0, 1
  store i8 %inc, i8* %xa_offset, align 2
  %conv = zext i8 %inc to i64
  call fastcc void @xas_move_index(%struct.xa_state* noundef %xas, i64 noundef %conv) #14
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local i8* @xas_find_marked(%struct.xa_state* nocapture noundef %xas, i64 noundef %max, i32 noundef %mark) local_unnamed_addr #10 {
entry:
  %call = call fastcc i32 @xas_error(%struct.xa_state* noundef %xas) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %0 = load i64, i64* %xa_index, align 8
  %cmp = icmp ugt i64 %0, %max
  br i1 %cmp, label %max119, label %if.end3

if.end3:                                          ; preds = %if.end
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %1 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %tobool4.not = icmp eq %struct.xa_node* %1, null
  br i1 %tobool4.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end3
  store i64 1, i64* %xa_index, align 8
  br label %out

if.else:                                          ; preds = %if.end3
  %call8 = call fastcc i1 @xas_top(%struct.xa_node* noundef nonnull %1) #14
  br i1 %call8, label %if.then9, label %if.end31

if.then9:                                         ; preds = %if.else
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %2 = load %struct.xarray*, %struct.xarray** %xa, align 8
  %call10 = call fastcc i8* @xa_head(%struct.xarray* noundef %2) #14
  store %struct.xa_node* null, %struct.xa_node** %xa_node, align 8
  %3 = load i64, i64* %xa_index, align 8
  %call13 = call fastcc i64 @max_index(i8* noundef %call10) #14
  %cmp14 = icmp ugt i64 %3, %call13
  br i1 %cmp14, label %out, label %if.end16

if.end16:                                         ; preds = %if.then9
  %call17 = call fastcc i1 @xa_is_node(i8* noundef %call10) #14
  br i1 %call17, label %if.end24, label %if.then18

if.then18:                                        ; preds = %if.end16
  %4 = load %struct.xarray*, %struct.xarray** %xa, align 8
  %call20 = call fastcc i1 @xa_marked(%struct.xarray* noundef %4, i32 noundef %mark) #14
  br i1 %call20, label %cleanup, label %if.end22

if.end22:                                         ; preds = %if.then18
  store i64 1, i64* %xa_index, align 8
  br label %out

if.end24:                                         ; preds = %if.end16
  %call25 = call fastcc %struct.xa_node* @xa_to_node(i8* noundef %call10) #14
  store %struct.xa_node* %call25, %struct.xa_node** %xa_node, align 8
  %shift = getelementptr inbounds %struct.xa_node, %struct.xa_node* %call25, i64 0, i32 0
  %5 = load i8, i8* %shift, align 8
  %sh_prom = zext i8 %5 to i64
  %shr = lshr i64 %3, %sh_prom
  %conv29 = trunc i64 %shr to i8
  %xa_offset = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  store i8 %conv29, i8* %xa_offset, align 2
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.end24
  %6 = phi i64 [ %0, %if.else ], [ %3, %if.end24 ]
  %cmp33.not187 = icmp ugt i64 %6, %max
  br i1 %cmp33.not187, label %out, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end31
  %7 = xor i1 %call8, true
  %xa_offset35 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  %xa94 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %cmp104 = icmp eq i32 %mark, 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %advance.1.off0188 = phi i1 [ %7, %while.body.lr.ph ], [ %advance.1.off0.be, %while.cond.backedge ]
  %8 = load i8, i8* %xa_offset35, align 2
  %cmp37 = icmp eq i8 %8, 64
  br i1 %cmp37, label %if.then42, label %if.end56, !prof !10

if.then42:                                        ; preds = %while.body
  %9 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %offset44 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %9, i64 0, i32 1
  %10 = load i8, i8* %offset44, align 1
  %add = add i8 %10, 1
  store i8 %add, i8* %xa_offset35, align 2
  %call50 = call fastcc %struct.xa_node* @xa_parent(%struct.xa_node* noundef %9) #14
  store %struct.xa_node* %call50, %struct.xa_node** %xa_node, align 8
  %tobool53.not = icmp eq %struct.xa_node* %call50, null
  br i1 %tobool53.not, label %if.then42.out.loopexit_crit_edge, label %while.cond.backedge

if.then42.out.loopexit_crit_edge:                 ; preds = %if.then42
  %.pre189.pre = load i64, i64* %xa_index, align 8
  br label %out

if.end56:                                         ; preds = %while.body
  br i1 %advance.1.off0188, label %if.end72, label %if.then58

if.then58:                                        ; preds = %if.end56
  %11 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %conv62 = zext i8 %8 to i32
  %12 = call fastcc i8* @xa_entry(%struct.xa_node* noundef %11, i32 noundef %conv62) #14
  %.pre = load i8, i8* %xa_offset35, align 2
  br label %if.end72

if.end72:                                         ; preds = %if.then58, %if.end56
  %13 = phi i8 [ %.pre, %if.then58 ], [ %8, %if.end56 ]
  %call74 = call fastcc i32 @xas_find_chunk(%struct.xa_state* noundef %xas, i1 noundef %advance.1.off0188, i32 noundef %mark) #14
  %conv76 = zext i8 %13 to i32
  %cmp77 = icmp ugt i32 %call74, %conv76
  br i1 %cmp77, label %if.then79, label %if.end93

if.then79:                                        ; preds = %if.end72
  %conv80 = zext i32 %call74 to i64
  call fastcc void @xas_move_index(%struct.xa_state* noundef %xas, i64 noundef %conv80) #14
  %14 = load i64, i64* %xa_index, align 8
  %sub = add i64 %14, -1
  %cmp82.not = icmp ult i64 %sub, %max
  br i1 %cmp82.not, label %if.end85, label %max119

if.end85:                                         ; preds = %if.then79
  %conv86 = trunc i32 %call74 to i8
  store i8 %conv86, i8* %xa_offset35, align 2
  %cmp89 = icmp eq i32 %call74, 64
  br i1 %cmp89, label %while.cond.backedge, label %if.end85.if.end93_crit_edge

if.end85.if.end93_crit_edge:                      ; preds = %if.end85
  %.pre191 = and i32 %call74, 255
  br label %if.end93

if.end93:                                         ; preds = %if.end85.if.end93_crit_edge, %if.end72
  %conv97.pre-phi = phi i32 [ %.pre191, %if.end85.if.end93_crit_edge ], [ %conv76, %if.end72 ]
  %advance.2.off0 = phi i1 [ false, %if.end85.if.end93_crit_edge ], [ %advance.1.off0188, %if.end72 ]
  %15 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %call98 = call fastcc i8* @xa_entry(%struct.xa_node* noundef %15, i32 noundef %conv97.pre-phi) #14
  %tobool99.not = icmp eq i8* %call98, null
  br i1 %tobool99.not, label %land.lhs.true, label %if.end107

land.lhs.true:                                    ; preds = %if.end93
  %16 = load %struct.xarray*, %struct.xarray** %xa94, align 8
  %call101 = call fastcc i1 @xa_track_free(%struct.xarray* noundef %16) #14
  %or.cond = and i1 %cmp104, %call101
  br i1 %or.cond, label %if.end107, label %while.cond.backedge

if.end107:                                        ; preds = %land.lhs.true, %if.end93
  %call108 = call fastcc i1 @xa_is_node(i8* noundef %call98) #14
  br i1 %call108, label %if.end110, label %cleanup

if.end110:                                        ; preds = %if.end107
  %call111 = call fastcc %struct.xa_node* @xa_to_node(i8* noundef %call98) #14
  store %struct.xa_node* %call111, %struct.xa_node** %xa_node, align 8
  call fastcc void @xas_set_offset(%struct.xa_state* noundef %xas) #14
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end110, %if.end85, %land.lhs.true, %if.then42
  %advance.1.off0.be = phi i1 [ false, %if.end85 ], [ %advance.2.off0, %if.end110 ], [ %advance.2.off0, %land.lhs.true ], [ false, %if.then42 ]
  %17 = load i64, i64* %xa_index, align 8
  %cmp33.not = icmp ugt i64 %17, %max
  br i1 %cmp33.not, label %out, label %while.body

out:                                              ; preds = %while.cond.backedge, %if.then42.out.loopexit_crit_edge, %if.end31, %if.then9, %if.end22, %if.then5
  %18 = phi i64 [ %6, %if.end31 ], [ %3, %if.then9 ], [ 1, %if.end22 ], [ 1, %if.then5 ], [ %.pre189.pre, %if.then42.out.loopexit_crit_edge ], [ %17, %while.cond.backedge ]
  %cmp114 = icmp ugt i64 %18, %max
  br i1 %cmp114, label %max119, label %if.end117

if.end117:                                        ; preds = %out
  call fastcc void @set_bounds(%struct.xa_state* noundef %xas) #14
  br label %cleanup

max119:                                           ; preds = %if.then79, %out, %if.end
  %xa_node120 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* inttoptr (i64 3 to %struct.xa_node*), %struct.xa_node** %xa_node120, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end107, %if.then18, %entry, %max119, %if.end117
  %retval.0 = phi i8* [ null, %max119 ], [ null, %if.end117 ], [ null, %entry ], [ %call10, %if.then18 ], [ %call98, %if.end107 ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xas_top(%struct.xa_node* noundef readnone %node) unnamed_addr #3 {
entry:
  %cmp = icmp ule %struct.xa_node* %node, inttoptr (i64 3 to %struct.xa_node*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i8* @xa_head(%struct.xarray* noundef %xa) unnamed_addr #2 {
entry:
  %xa_head = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 2
  %0 = load volatile i8*, i8** %xa_head, align 8
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @max_index(i8* noundef %entry1) unnamed_addr #6 {
entry:
  %call = call fastcc i1 @xa_is_node(i8* noundef %entry1) #14
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call2 = call fastcc %struct.xa_node* @xa_to_node(i8* noundef %entry1) #14
  %shift = getelementptr inbounds %struct.xa_node, %struct.xa_node* %call2, i64 0, i32 0
  %0 = load i8, i8* %shift, align 8
  %sh_prom = zext i8 %0 to i64
  %shl = shl i64 64, %sh_prom
  %sub = add i64 %shl, -1
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %sub, %if.end ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @xas_move_index(%struct.xa_state* nocapture noundef %xas, i64 noundef %offset) unnamed_addr #7 {
entry:
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %0 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %shift1 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %0, i64 0, i32 0
  %1 = load i8, i8* %shift1, align 8
  %sh_prom = zext i8 %1 to i64
  %shl = shl i64 -64, %sh_prom
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %2 = load i64, i64* %xa_index, align 8
  %and = and i64 %shl, %2
  %shl3 = shl i64 %offset, %sh_prom
  %add = add i64 %and, %shl3
  store i64 %add, i64* %xa_index, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @xas_find_chunk(%struct.xa_state* nocapture noundef readonly %xas, i1 noundef %advance, i32 noundef %mark) unnamed_addr #11 {
entry:
  %xa_offset = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  %0 = load i8, i8* %xa_offset, align 2
  %conv = zext i8 %0 to i32
  %inc = zext i1 %advance to i32
  %spec.select = add nuw nsw i32 %conv, %inc
  %cmp = icmp ult i32 %spec.select, 64
  br i1 %cmp, label %if.then3, label %cleanup9

if.then3:                                         ; preds = %entry
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %1 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %idxprom = zext i32 %mark to i64
  %arraydecay = getelementptr %struct.xa_node, %struct.xa_node* %1, i64 0, i32 8, i32 0, i64 %idxprom, i64 0
  %conv1 = zext i32 %spec.select to i64
  %2 = load i64, i64* %arraydecay, align 8
  %shl = shl nsw i64 -1, %conv1
  %and = and i64 %2, %shl
  %tobool4.not = icmp eq i64 %and, 0
  br i1 %tobool4.not, label %cleanup9, label %cleanup

cleanup:                                          ; preds = %if.then3
  %3 = call i64 @llvm.cttz.i64(i64 %and, i1 true) #16, !range !11
  %conv6 = trunc i64 %3 to i32
  br label %cleanup9

cleanup9:                                         ; preds = %if.then3, %entry, %cleanup
  %retval.1 = phi i32 [ %conv6, %cleanup ], [ 64, %entry ], [ 64, %if.then3 ]
  ret i32 %retval.1
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local i8* @xas_find_conflict(%struct.xa_state* nocapture noundef %xas) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @xas_error(%struct.xa_state* noundef %xas) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %0 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %tobool1.not = icmp eq %struct.xa_node* %0, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call5 = call fastcc i1 @xas_top(%struct.xa_node* noundef nonnull %0) #14
  br i1 %call5, label %if.then6, label %if.end17

if.then6:                                         ; preds = %if.end3
  %call7 = call fastcc i8* @xas_start(%struct.xa_state* noundef %xas) #14
  %tobool8.not = icmp eq i8* %call7, null
  br i1 %tobool8.not, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then6
  %call11120 = call fastcc i1 @xa_is_node(i8* noundef nonnull %call7) #14
  br i1 %call11120, label %while.body, label %cleanup

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %curr.0121 = phi i8* [ %call13, %while.body ], [ %call7, %while.cond.preheader ]
  %call12 = call fastcc %struct.xa_node* @xa_to_node(i8* noundef %curr.0121) #14
  %call13 = call fastcc i8* @xas_descend(%struct.xa_state* noundef %xas, %struct.xa_node* noundef %call12) #14
  %call11 = call fastcc i1 @xa_is_node(i8* noundef %call13) #14
  br i1 %call11, label %while.body, label %while.end

while.end:                                        ; preds = %while.body
  %tobool14.not = icmp eq i8* %call13, null
  br i1 %tobool14.not, label %while.end.if.end17_crit_edge, label %cleanup

while.end.if.end17_crit_edge:                     ; preds = %while.end
  %.pre = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  br label %if.end17

if.end17:                                         ; preds = %while.end.if.end17_crit_edge, %if.end3
  %1 = phi %struct.xa_node* [ %.pre, %while.end.if.end17_crit_edge ], [ %0, %if.end3 ]
  %shift = getelementptr inbounds %struct.xa_node, %struct.xa_node* %1, i64 0, i32 0
  %2 = load i8, i8* %shift, align 8
  %xa_shift = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %3 = load i8, i8* %xa_shift, align 8
  %cmp = icmp ugt i8 %2, %3
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end17
  %xa_offset39 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  %xa_sibs = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %for.cond.preheader
  %4 = phi i8 [ %.pre125, %for.cond.backedge ], [ %2, %for.cond.preheader ]
  %5 = phi %struct.xa_node* [ %9, %for.cond.backedge ], [ %1, %for.cond.preheader ]
  %cmp28 = icmp eq i8 %4, %3
  %6 = load i8, i8* %xa_offset39, align 2
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %for.cond
  %7 = load i8, i8* %xa_sibs, align 1
  %and119 = and i8 %7, %6
  %cmp35 = icmp eq i8 %and119, %7
  br i1 %cmp35, label %for.end, label %if.end54

if.else:                                          ; preds = %for.cond
  %cmp41 = icmp eq i8 %6, 63
  br i1 %cmp41, label %if.then43, label %if.end54

if.then43:                                        ; preds = %if.else
  %offset = getelementptr inbounds %struct.xa_node, %struct.xa_node* %5, i64 0, i32 1
  %8 = load i8, i8* %offset, align 1
  store i8 %8, i8* %xa_offset39, align 2
  %call47 = call fastcc %struct.xa_node* @xa_parent_locked(%struct.xa_node* noundef %5) #14
  store %struct.xa_node* %call47, %struct.xa_node** %xa_node, align 8
  %tobool50.not = icmp eq %struct.xa_node* %call47, null
  br i1 %tobool50.not, label %if.then43.for.end_crit_edge, label %for.cond.backedge

if.then43.for.end_crit_edge:                      ; preds = %if.then43
  %.pre126 = load i8, i8* %xa_sibs, align 1
  br label %for.end

for.cond.backedge:                                ; preds = %if.then43, %while.end72
  %9 = phi %struct.xa_node* [ %call47, %if.then43 ], [ %10, %while.end72 ]
  %shift24.phi.trans.insert = getelementptr inbounds %struct.xa_node, %struct.xa_node* %9, i64 0, i32 0
  %.pre125 = load i8, i8* %shift24.phi.trans.insert, align 8
  br label %for.cond

if.end54:                                         ; preds = %if.else, %if.then30
  %inc = add i8 %6, 1
  store i8 %inc, i8* %xa_offset39, align 2
  %conv58 = zext i8 %inc to i32
  %call59 = call fastcc i8* @xa_entry_locked(%struct.xa_node* noundef %5, i32 noundef %conv58) #14
  %call64122 = call fastcc i1 @xa_is_node(i8* noundef %call59) #14
  br i1 %call64122, label %while.body65, label %while.end72

while.body65:                                     ; preds = %if.end54, %while.body65
  %curr.1123 = phi i8* [ %call71, %while.body65 ], [ %call59, %if.end54 ]
  %call66 = call fastcc %struct.xa_node* @xa_to_node(i8* noundef %curr.1123) #14
  store %struct.xa_node* %call66, %struct.xa_node** %xa_node, align 8
  store i8 0, i8* %xa_offset39, align 2
  %call71 = call fastcc i8* @xa_entry_locked(%struct.xa_node* noundef %call66, i32 noundef 0) #14
  %call64 = call fastcc i1 @xa_is_node(i8* noundef %call71) #14
  br i1 %call64, label %while.body65, label %while.end72

while.end72:                                      ; preds = %while.body65, %if.end54
  %10 = phi %struct.xa_node* [ %5, %if.end54 ], [ %call66, %while.body65 ]
  %curr.1.lcssa = phi i8* [ %call59, %if.end54 ], [ %call71, %while.body65 ]
  %tobool73.not = icmp eq i8* %curr.1.lcssa, null
  br i1 %tobool73.not, label %for.cond.backedge, label %cleanup

for.end:                                          ; preds = %if.then30, %if.then43.for.end_crit_edge
  %11 = phi i8 [ %8, %if.then43.for.end_crit_edge ], [ %6, %if.then30 ]
  %12 = phi i8 [ %.pre126, %if.then43.for.end_crit_edge ], [ %7, %if.then30 ]
  %sub = sub i8 %11, %12
  store i8 %sub, i8* %xa_offset39, align 2
  br label %cleanup

cleanup:                                          ; preds = %while.end72, %while.cond.preheader, %if.end17, %while.end, %if.then6, %if.end, %entry, %for.end
  %retval.0 = phi i8* [ null, %for.end ], [ null, %entry ], [ null, %if.end ], [ null, %if.then6 ], [ %call13, %while.end ], [ null, %if.end17 ], [ %call7, %while.cond.preheader ], [ %curr.1.lcssa, %while.end72 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @xa_load(%struct.xarray* noundef %xa, i64 noundef %index) local_unnamed_addr #4 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #16
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
  %xa1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  store %struct.xarray* %xa, %struct.xarray** %xa1, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  store i64 %index, i64* %xa_index, align 8
  %xa_sibs = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 3
  store i8 0, i8* %xa_sibs, align 1
  %xa_pad = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 5
  store i8 0, i8* %xa_pad, align 1
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* inttoptr (i64 3 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  %xa_alloc = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 7
  store %struct.xa_node* null, %struct.xa_node** %xa_alloc, align 8
  %xa_update = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 8
  store void (%struct.xa_node*)* null, void (%struct.xa_node*)** %xa_update, align 8
  call fastcc void @__rcu_read_lock() #15
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %call = call i8* @xas_load(%struct.xa_state* noundef nonnull %xas) #14
  %call3 = call fastcc i1 @xa_is_zero(i8* noundef %call) #14
  %spec.select = select i1 %call3, i8* null, i8* %call
  %call4 = call fastcc i1 @xas_retry(%struct.xa_state* noundef nonnull %xas, i8* noundef %spec.select) #14
  br i1 %call4, label %do.body, label %do.end

do.end:                                           ; preds = %do.body
  call fastcc void @rcu_read_unlock() #14
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #16
  ret i8* %spec.select
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i1 @xas_retry(%struct.xa_state* nocapture noundef writeonly %xas, i8* noundef %entry1) unnamed_addr #9 {
entry:
  %call = call fastcc i1 @xa_is_zero(i8* noundef %entry1) #14
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc i1 @xa_is_retry(i8* noundef %entry1) #14
  br i1 %call2, label %if.end4, label %return

if.end4:                                          ; preds = %if.end
  call fastcc void @xas_reset(%struct.xa_state* noundef %xas) #14
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i1 [ true, %if.end4 ], [ true, %entry ], [ false, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #4 {
entry:
  call fastcc void @__rcu_read_unlock() #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @__xa_erase(%struct.xarray* noundef %xa, i64 noundef %index) local_unnamed_addr #4 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #16
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
  %xa1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  store %struct.xarray* %xa, %struct.xarray** %xa1, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  store i64 %index, i64* %xa_index, align 8
  %xa_sibs = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 3
  store i8 0, i8* %xa_sibs, align 1
  %xa_pad = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 5
  store i8 0, i8* %xa_pad, align 1
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* inttoptr (i64 3 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  %xa_alloc = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 7
  store %struct.xa_node* null, %struct.xa_node** %xa_alloc, align 8
  %xa_update = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 8
  store void (%struct.xa_node*)* null, void (%struct.xa_node*)** %xa_update, align 8
  %call = call i8* @xas_store(%struct.xa_state* noundef nonnull %xas, i8* noundef null) #14
  %call2 = call fastcc i8* @xas_result(%struct.xa_state* noundef nonnull %xas, i8* noundef %call) #14
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #16
  ret i8* %call2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @xas_result(%struct.xa_state* nocapture noundef readonly %xas, i8* noundef %curr) unnamed_addr #6 {
entry:
  %call = call fastcc i1 @xa_is_zero(i8* noundef %curr) #14
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @xas_error(%struct.xa_state* noundef %xas) #14
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %if.end
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %0 = bitcast %struct.xa_node** %xa_node to i8**
  %1 = load i8*, i8** %0, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %1, %if.then2 ], [ %curr, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @xa_erase(%struct.xarray* noundef %xa, i64 noundef %index) local_unnamed_addr #4 {
entry:
  %rlock.i = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #15
  %call = call i8* @__xa_erase(%struct.xarray* noundef %xa, i64 noundef %index) #14
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #15
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @__xa_store(%struct.xarray* noundef %xa, i64 noundef %index, i8* noundef %entry1, i32 noundef %gfp) local_unnamed_addr #4 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #16
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
  %xa2 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  store %struct.xarray* %xa, %struct.xarray** %xa2, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  store i64 %index, i64* %xa_index, align 8
  %xa_sibs = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 3
  store i8 0, i8* %xa_sibs, align 1
  %xa_pad = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 5
  store i8 0, i8* %xa_pad, align 1
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* inttoptr (i64 3 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  %xa_alloc = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 7
  store %struct.xa_node* null, %struct.xa_node** %xa_alloc, align 8
  %xa_update = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 8
  store void (%struct.xa_node*)* null, void (%struct.xa_node*)** %xa_update, align 8
  %call = call fastcc i1 @xa_is_advanced(i8* noundef %entry1) #14
  br i1 %call, label %if.then, label %if.end18, !prof !10

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/xarray.c\22; .popsection; .long 14472b - 14470b; .short 1538; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !13
  br label %cleanup

if.end18:                                         ; preds = %entry
  %call19 = call fastcc i1 @xa_track_free(%struct.xarray* noundef %xa) #14
  %tobool21 = icmp eq i8* %entry1, null
  %3 = and i1 %tobool21, %call19
  br i1 %3, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end18
  %call23 = call fastcc i8* @xa_mk_internal(i64 noundef 257) #14
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end18
  %entry.addr.0 = phi i8* [ %entry1, %if.end18 ], [ %call23, %if.then22 ]
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end24
  %call25 = call i8* @xas_store(%struct.xa_state* noundef nonnull %xas, i8* noundef %entry.addr.0) #14
  %call26 = call fastcc i1 @xa_track_free(%struct.xarray* noundef %xa) #14
  br i1 %call26, label %if.then27, label %do.cond

if.then27:                                        ; preds = %do.body
  call void @xas_clear_mark(%struct.xa_state* noundef nonnull %xas, i32 noundef 0) #14
  br label %do.cond

do.cond:                                          ; preds = %do.body, %if.then27
  %call29 = call fastcc i1 @__xas_nomem(%struct.xa_state* noundef nonnull %xas, i32 noundef %gfp) #14
  br i1 %call29, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %call30 = call fastcc i8* @xas_result(%struct.xa_state* noundef nonnull %xas, i8* noundef %call25) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then, %do.end
  %retval.0 = phi i8* [ %call30, %do.end ], [ inttoptr (i64 -86 to i8*), %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #16
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xa_is_advanced(i8* noundef %entry1) unnamed_addr #3 {
entry:
  %call = call fastcc i1 @xa_is_internal(i8* noundef %entry1) #14
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %call2 = call fastcc i8* @xa_mk_internal(i64 noundef 256) #14
  %cmp = icmp uge i8* %call2, %entry1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc nonnull i8* @xa_mk_internal(i64 noundef %v) unnamed_addr #3 {
entry:
  %shl = shl i64 %v, 2
  %or = or i64 %shl, 2
  %0 = inttoptr i64 %or to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__xas_nomem(%struct.xa_state* nocapture noundef %xas, i32 noundef %gfp) unnamed_addr #4 {
entry:
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %0 = load %struct.xarray*, %struct.xarray** %xa, align 8
  %call = call fastcc i32 @xa_lock_type(%struct.xarray* noundef %0) #14
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %1 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %cmp.not = icmp eq %struct.xa_node* %1, inttoptr (i64 -46 to %struct.xa_node*)
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @xas_destroy(%struct.xa_state* noundef %xas) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %xa_flags = getelementptr inbounds %struct.xarray, %struct.xarray* %0, i64 0, i32 1
  %2 = load i32, i32* %xa_flags, align 4
  %and = shl i32 %2, 17
  %3 = and i32 %and, 4194304
  %4 = or i32 %3, %gfp
  %call4 = call fastcc i1 @gfpflags_allow_blocking(i32 noundef %4) #14
  br i1 %call4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call fastcc void @xas_unlock_type(%struct.xa_state* noundef %xas, i32 noundef %call) #14
  %5 = load %struct.kmem_cache*, %struct.kmem_cache** @radix_tree_node_cachep, align 8
  %call6 = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %5, i32 noundef %4) #15
  %xa_alloc = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 7
  %6 = bitcast %struct.xa_node** %xa_alloc to i8**
  store i8* %call6, i8** %6, align 8
  call fastcc void @xas_lock_type(%struct.xa_state* noundef %xas, i32 noundef %call) #14
  %.pre = load %struct.xa_node*, %struct.xa_node** %xa_alloc, align 8
  br label %if.end9

if.else:                                          ; preds = %if.end
  %7 = load %struct.kmem_cache*, %struct.kmem_cache** @radix_tree_node_cachep, align 8
  %call7 = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %7, i32 noundef %4) #15
  %xa_alloc8 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 7
  %8 = bitcast %struct.xa_node** %xa_alloc8 to i8**
  store i8* %call7, i8** %8, align 8
  %9 = bitcast i8* %call7 to %struct.xa_node*
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then5
  %10 = phi %struct.xa_node* [ %9, %if.else ], [ %.pre, %if.then5 ]
  %tobool11.not = icmp eq %struct.xa_node* %10, null
  br i1 %tobool11.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end9
  %parent = getelementptr inbounds %struct.xa_node, %struct.xa_node* %10, i64 0, i32 4
  store %struct.xa_node* null, %struct.xa_node** %parent, align 8
  store %struct.xa_node* inttoptr (i64 3 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end13, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ true, %if.end13 ], [ false, %if.end9 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @xa_store(%struct.xarray* noundef %xa, i64 noundef %index, i8* noundef %entry1, i32 noundef %gfp) local_unnamed_addr #4 {
entry:
  %rlock.i = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #15
  %call = call i8* @__xa_store(%struct.xarray* noundef %xa, i64 noundef %index, i8* noundef %entry1, i32 noundef %gfp) #14
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #15
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @__xa_cmpxchg(%struct.xarray* noundef %xa, i64 noundef %index, i8* noundef readnone %old, i8* noundef %entry1, i32 noundef %gfp) local_unnamed_addr #4 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #16
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
  %xa2 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  store %struct.xarray* %xa, %struct.xarray** %xa2, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  store i64 %index, i64* %xa_index, align 8
  %xa_sibs = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 3
  store i8 0, i8* %xa_sibs, align 1
  %xa_pad = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 5
  store i8 0, i8* %xa_pad, align 1
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* inttoptr (i64 3 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  %xa_alloc = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 7
  store %struct.xa_node* null, %struct.xa_node** %xa_alloc, align 8
  %xa_update = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 8
  store void (%struct.xa_node*)* null, void (%struct.xa_node*)** %xa_update, align 8
  %call = call fastcc i1 @xa_is_advanced(i8* noundef %entry1) #14
  br i1 %call, label %if.then, label %do.body.preheader, !prof !10

do.body.preheader:                                ; preds = %entry
  %tobool25 = icmp ne i8* %entry1, null
  %tobool27 = icmp eq i8* %old, null
  br label %do.body

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/xarray.c\22; .popsection; .long 14472b - 14470b; .short 1604; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !14
  br label %cleanup

do.body:                                          ; preds = %do.body.preheader, %do.cond
  %call19 = call i8* @xas_load(%struct.xa_state* noundef nonnull %xas) #14
  %cmp = icmp eq i8* %call19, %old
  br i1 %cmp, label %if.then21, label %do.cond

if.then21:                                        ; preds = %do.body
  %call22 = call i8* @xas_store(%struct.xa_state* noundef nonnull %xas, i8* noundef %entry1) #14
  %call23 = call fastcc i1 @xa_track_free(%struct.xarray* noundef %xa) #14
  %or.cond = and i1 %tobool25, %call23
  %3 = and i1 %or.cond, %tobool27
  br i1 %3, label %if.then28, label %do.cond

if.then28:                                        ; preds = %if.then21
  call void @xas_clear_mark(%struct.xa_state* noundef nonnull %xas, i32 noundef 0) #14
  br label %do.cond

do.cond:                                          ; preds = %do.body, %if.then28, %if.then21
  %call31 = call fastcc i1 @__xas_nomem(%struct.xa_state* noundef nonnull %xas, i32 noundef %gfp) #14
  br i1 %call31, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %call32 = call fastcc i8* @xas_result(%struct.xa_state* noundef nonnull %xas, i8* noundef %call19) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then, %do.end
  %retval.0 = phi i8* [ %call32, %do.end ], [ inttoptr (i64 -86 to i8*), %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #16
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__xa_insert(%struct.xarray* noundef %xa, i64 noundef %index, i8* noundef %entry1, i32 noundef %gfp) local_unnamed_addr #4 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #16
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
  %xa2 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  store %struct.xarray* %xa, %struct.xarray** %xa2, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  store i64 %index, i64* %xa_index, align 8
  %xa_sibs = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 3
  store i8 0, i8* %xa_sibs, align 1
  %xa_pad = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 5
  store i8 0, i8* %xa_pad, align 1
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* inttoptr (i64 3 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  %xa_alloc = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 7
  store %struct.xa_node* null, %struct.xa_node** %xa_alloc, align 8
  %xa_update = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 8
  store void (%struct.xa_node*)* null, void (%struct.xa_node*)** %xa_update, align 8
  %call = call fastcc i1 @xa_is_advanced(i8* noundef %entry1) #14
  br i1 %call, label %if.then, label %if.end18, !prof !10

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/xarray.c\22; .popsection; .long 14472b - 14470b; .short 1641; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !15
  br label %cleanup

if.end18:                                         ; preds = %entry
  %tobool19.not = icmp eq i8* %entry1, null
  br i1 %tobool19.not, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end18
  %call21 = call fastcc i8* @xa_mk_internal(i64 noundef 257) #14
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end18
  %entry.addr.0 = phi i8* [ %entry1, %if.end18 ], [ %call21, %if.then20 ]
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end22
  %call23 = call i8* @xas_load(%struct.xa_state* noundef nonnull %xas) #14
  %tobool24.not = icmp eq i8* %call23, null
  br i1 %tobool24.not, label %if.then25, label %if.else

if.then25:                                        ; preds = %do.body
  %call26 = call i8* @xas_store(%struct.xa_state* noundef nonnull %xas, i8* noundef %entry.addr.0) #14
  %call27 = call fastcc i1 @xa_track_free(%struct.xarray* noundef %xa) #14
  br i1 %call27, label %if.then28, label %do.cond

if.then28:                                        ; preds = %if.then25
  call void @xas_clear_mark(%struct.xa_state* noundef nonnull %xas, i32 noundef 0) #14
  br label %do.cond

if.else:                                          ; preds = %do.body
  call fastcc void @xas_set_err(%struct.xa_state* noundef nonnull %xas, i64 noundef -16) #14
  br label %do.cond

do.cond:                                          ; preds = %if.else, %if.then28, %if.then25
  %call31 = call fastcc i1 @__xas_nomem(%struct.xa_state* noundef nonnull %xas, i32 noundef %gfp) #14
  br i1 %call31, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %call32 = call fastcc i32 @xas_error(%struct.xa_state* noundef nonnull %xas) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then, %do.end
  %retval.0 = phi i32 [ %call32, %do.end ], [ -22, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @xas_set_err(%struct.xa_state* nocapture noundef writeonly %xas, i64 noundef %err) unnamed_addr #9 {
entry:
  %shl = shl i64 %err, 2
  %or = or i64 %shl, 2
  %0 = inttoptr i64 %or to %struct.xa_node*
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* %0, %struct.xa_node** %xa_node, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__xa_alloc(%struct.xarray* noundef %xa, i32* nocapture noundef writeonly %id, i8* noundef %entry1, i64 %limit.coerce, i32 noundef %gfp) local_unnamed_addr #4 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %limit.sroa.2.0.extract.shift = lshr i64 %limit.coerce, 32
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #16
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
  %xa2 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  store %struct.xarray* %xa, %struct.xarray** %xa2, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %xa_sibs = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 3
  store i8 0, i8* %xa_sibs, align 1
  %xa_pad = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 5
  store i8 0, i8* %xa_pad, align 1
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* inttoptr (i64 3 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  %xa_alloc = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 7
  store %struct.xa_node* null, %struct.xa_node** %xa_alloc, align 8
  %xa_update = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 8
  store void (%struct.xa_node*)* null, void (%struct.xa_node*)** %xa_update, align 8
  %call = call fastcc i1 @xa_is_advanced(i8* noundef %entry1) #14
  br i1 %call, label %if.then, label %if.end18, !prof !10

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/xarray.c\22; .popsection; .long 14472b - 14470b; .short 1810; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !16
  br label %cleanup

if.end18:                                         ; preds = %entry
  %call20 = call fastcc i1 @xa_track_free(%struct.xarray* noundef %xa) #14
  br i1 %call20, label %if.end47, label %if.then35, !prof !17

if.then35:                                        ; preds = %if.end18
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/xarray.c\22; .popsection; .long 14472b - 14470b; .short 1812; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !18
  br label %cleanup

if.end47:                                         ; preds = %if.end18
  %tobool48.not = icmp eq i8* %entry1, null
  br i1 %tobool48.not, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.end47
  %call50 = call fastcc i8* @xa_mk_internal(i64 noundef 257) #14
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end47
  %entry.addr.0 = phi i8* [ %entry1, %if.end47 ], [ %call50, %if.then49 ]
  %conv54 = and i64 %limit.coerce, 4294967295
  br label %do.body

do.body:                                          ; preds = %if.end61, %if.end51
  store i64 %limit.sroa.2.0.extract.shift, i64* %xa_index, align 8
  %call55 = call i8* @xas_find_marked(%struct.xa_state* noundef nonnull %xas, i64 noundef %conv54, i32 noundef 0) #14
  %3 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %cmp = icmp eq %struct.xa_node* %3, inttoptr (i64 3 to %struct.xa_node*)
  br i1 %cmp, label %if.then58, label %if.else

if.then58:                                        ; preds = %do.body
  call fastcc void @xas_set_err(%struct.xa_state* noundef nonnull %xas, i64 noundef -16) #14
  br label %if.end61

if.else:                                          ; preds = %do.body
  %4 = load i64, i64* %xa_index, align 8
  %conv60 = trunc i64 %4 to i32
  store i32 %conv60, i32* %id, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.else, %if.then58
  %call62 = call i8* @xas_store(%struct.xa_state* noundef nonnull %xas, i8* noundef %entry.addr.0) #14
  call void @xas_clear_mark(%struct.xa_state* noundef nonnull %xas, i32 noundef 0) #14
  %call63 = call fastcc i1 @__xas_nomem(%struct.xa_state* noundef nonnull %xas, i32 noundef %gfp) #14
  br i1 %call63, label %do.body, label %do.end

do.end:                                           ; preds = %if.end61
  %call64 = call fastcc i32 @xas_error(%struct.xa_state* noundef nonnull %xas) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.then, %do.end
  %retval.0 = phi i32 [ %call64, %do.end ], [ -22, %if.then ], [ -22, %if.then35 ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__xa_alloc_cyclic(%struct.xarray* noundef %xa, i32* nocapture noundef %id, i8* noundef %entry1, i64 %limit.coerce, i32* nocapture noundef %next, i32 noundef %gfp) local_unnamed_addr #4 {
entry:
  %limit.sroa.3.0.extract.shift = lshr i64 %limit.coerce, 32
  %limit.sroa.3.0.extract.trunc = trunc i64 %limit.sroa.3.0.extract.shift to i32
  %0 = load i32, i32* %next, align 4
  %cmp = icmp ult i32 %0, %limit.sroa.3.0.extract.trunc
  %cond = select i1 %cmp, i32 %limit.sroa.3.0.extract.trunc, i32 %0
  %limit.sroa.3.0.insert.ext = zext i32 %cond to i64
  %limit.sroa.3.0.insert.shift = shl nuw i64 %limit.sroa.3.0.insert.ext, 32
  %limit.sroa.0.0.insert.ext = and i64 %limit.coerce, 4294967295
  %limit.sroa.0.0.insert.insert = or i64 %limit.sroa.3.0.insert.shift, %limit.sroa.0.0.insert.ext
  %call = call i32 @__xa_alloc(%struct.xarray* noundef %xa, i32* noundef %id, i8* noundef %entry1, i64 %limit.sroa.0.0.insert.insert, i32 noundef %gfp) #14
  %xa_flags = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 1
  %1 = load i32, i32* %xa_flags, align 4
  %and = and i32 %1, 16
  %tobool = icmp ne i32 %and, 0
  %cmp4 = icmp eq i32 %call, 0
  %or.cond = select i1 %tobool, i1 %cmp4, i1 false
  br i1 %or.cond, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  %and6 = and i32 %1, -17
  store i32 %and6, i32* %xa_flags, align 4
  br label %if.then19

if.end:                                           ; preds = %entry
  %cmp7 = icmp slt i32 %call, 0
  %cmp10 = icmp ugt i32 %0, %limit.sroa.3.0.extract.trunc
  %or.cond57 = select i1 %cmp7, i1 %cmp10, i1 false
  br i1 %or.cond57, label %if.then11, label %if.end17

if.then11:                                        ; preds = %if.end
  %call13 = call i32 @__xa_alloc(%struct.xarray* noundef %xa, i32* noundef %id, i8* noundef %entry1, i64 %limit.coerce, i32 noundef %gfp) #14
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then19, label %if.end17

if.end17:                                         ; preds = %if.then11, %if.end
  %ret.1 = phi i32 [ %call13, %if.then11 ], [ %call, %if.end ]
  %cmp18 = icmp sgt i32 %ret.1, -1
  br i1 %cmp18, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.then11, %if.end.thread, %if.end17
  %ret.165 = phi i32 [ %ret.1, %if.end17 ], [ 1, %if.end.thread ], [ 1, %if.then11 ]
  %2 = load i32, i32* %id, align 4
  %add = add i32 %2, 1
  store i32 %add, i32* %next, align 4
  %cmp20 = icmp eq i32 %add, 0
  br i1 %cmp20, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.then19
  %3 = load i32, i32* %xa_flags, align 4
  %or = or i32 %3, 16
  store i32 %or, i32* %xa_flags, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.then21, %if.end17
  %ret.164 = phi i32 [ %ret.165, %if.then19 ], [ %ret.165, %if.then21 ], [ %ret.1, %if.end17 ]
  ret i32 %ret.164
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local void @__xa_set_mark(%struct.xarray* noundef %xa, i64 noundef %index, i32 noundef %mark) local_unnamed_addr #10 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #16
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
  %xa1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  store %struct.xarray* %xa, %struct.xarray** %xa1, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  store i64 %index, i64* %xa_index, align 8
  %xa_sibs = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 3
  store i8 0, i8* %xa_sibs, align 1
  %xa_pad = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 5
  store i8 0, i8* %xa_pad, align 1
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* inttoptr (i64 3 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  %xa_alloc = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 7
  store %struct.xa_node* null, %struct.xa_node** %xa_alloc, align 8
  %xa_update = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 8
  store void (%struct.xa_node*)* null, void (%struct.xa_node*)** %xa_update, align 8
  %call = call i8* @xas_load(%struct.xa_state* noundef nonnull %xas) #14
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @xas_set_mark(%struct.xa_state* noundef nonnull %xas, i32 noundef %mark) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #16
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local void @__xa_clear_mark(%struct.xarray* noundef %xa, i64 noundef %index, i32 noundef %mark) local_unnamed_addr #10 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #16
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
  %xa1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  store %struct.xarray* %xa, %struct.xarray** %xa1, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  store i64 %index, i64* %xa_index, align 8
  %xa_sibs = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 3
  store i8 0, i8* %xa_sibs, align 1
  %xa_pad = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 5
  store i8 0, i8* %xa_pad, align 1
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* inttoptr (i64 3 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  %xa_alloc = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 7
  store %struct.xa_node* null, %struct.xa_node** %xa_alloc, align 8
  %xa_update = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 8
  store void (%struct.xa_node*)* null, void (%struct.xa_node*)** %xa_update, align 8
  %call = call i8* @xas_load(%struct.xa_state* noundef nonnull %xas) #14
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @xas_clear_mark(%struct.xa_state* noundef nonnull %xas, i32 noundef %mark) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @xa_get_mark(%struct.xarray* noundef %xa, i64 noundef %index, i32 noundef %mark) local_unnamed_addr #4 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #16
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
  %xa1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  store %struct.xarray* %xa, %struct.xarray** %xa1, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  store i64 %index, i64* %xa_index, align 8
  %xa_sibs = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 3
  store i8 0, i8* %xa_sibs, align 1
  %xa_pad = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 5
  store i8 0, i8* %xa_pad, align 1
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* inttoptr (i64 3 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  %xa_alloc = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 7
  store %struct.xa_node* null, %struct.xa_node** %xa_alloc, align 8
  %xa_update = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 8
  store void (%struct.xa_node*)* null, void (%struct.xa_node*)** %xa_update, align 8
  call fastcc void @__rcu_read_lock() #15
  %call = call fastcc i8* @xas_start(%struct.xa_state* noundef nonnull %xas) #14
  %call312 = call i1 @xas_get_mark(%struct.xa_state* noundef nonnull %xas, i32 noundef %mark) #14
  br i1 %call312, label %while.body, label %cleanup

while.body:                                       ; preds = %entry, %if.end
  %entry2.013 = phi i8* [ %call6, %if.end ], [ %call, %entry ]
  %call4 = call fastcc i1 @xa_is_node(i8* noundef %entry2.013) #14
  br i1 %call4, label %if.end, label %cleanup.loopexit

if.end:                                           ; preds = %while.body
  %call5 = call fastcc %struct.xa_node* @xa_to_node(i8* noundef %entry2.013) #14
  %call6 = call fastcc i8* @xas_descend(%struct.xa_state* noundef nonnull %xas, %struct.xa_node* noundef %call5) #14
  %call3 = call i1 @xas_get_mark(%struct.xa_state* noundef nonnull %xas, i32 noundef %mark) #14
  br i1 %call3, label %while.body, label %cleanup.loopexit

cleanup.loopexit:                                 ; preds = %if.end, %while.body
  %3 = xor i1 %call4, true
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %entry
  %call311 = phi i1 [ false, %entry ], [ %3, %cleanup.loopexit ]
  call fastcc void @rcu_read_unlock() #14
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #16
  ret i1 %call311
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @xa_set_mark(%struct.xarray* noundef %xa, i64 noundef %index, i32 noundef %mark) local_unnamed_addr #4 {
entry:
  %rlock.i = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #15
  call void @__xa_set_mark(%struct.xarray* noundef %xa, i64 noundef %index, i32 noundef %mark) #14
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @xa_clear_mark(%struct.xarray* noundef %xa, i64 noundef %index, i32 noundef %mark) local_unnamed_addr #4 {
entry:
  %rlock.i = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #15
  call void @__xa_clear_mark(%struct.xarray* noundef %xa, i64 noundef %index, i32 noundef %mark) #14
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @xa_find(%struct.xarray* noundef %xa, i64* nocapture noundef %indexp, i64 noundef %max, i32 noundef %filter) local_unnamed_addr #4 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #16
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
  %xa1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  store %struct.xarray* %xa, %struct.xarray** %xa1, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %3 = load i64, i64* %indexp, align 8
  store i64 %3, i64* %xa_index, align 8
  %xa_sibs = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 3
  store i8 0, i8* %xa_sibs, align 1
  %xa_pad = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 5
  store i8 0, i8* %xa_pad, align 1
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* inttoptr (i64 3 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  %xa_alloc = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 7
  store %struct.xa_node* null, %struct.xa_node** %xa_alloc, align 8
  %xa_update = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 8
  store void (%struct.xa_node*)* null, void (%struct.xa_node*)** %xa_update, align 8
  call fastcc void @__rcu_read_lock() #15
  %cmp = icmp ult i32 %filter, 3
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %call = call i8* @xas_find_marked(%struct.xa_state* noundef nonnull %xas, i64 noundef %max, i32 noundef %filter) #14
  br label %do.cond

if.else:                                          ; preds = %do.body
  %call3 = call i8* @xas_find(%struct.xa_state* noundef nonnull %xas, i64 noundef %max) #14
  br label %do.cond

do.cond:                                          ; preds = %if.then, %if.else
  %entry2.0 = phi i8* [ %call, %if.then ], [ %call3, %if.else ]
  %call4 = call fastcc i1 @xas_retry(%struct.xa_state* noundef nonnull %xas, i8* noundef %entry2.0) #14
  br i1 %call4, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  call fastcc void @rcu_read_unlock() #14
  %tobool.not = icmp eq i8* %entry2.0, null
  br i1 %tobool.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %do.end
  %4 = load i64, i64* %xa_index, align 8
  store i64 %4, i64* %indexp, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.end
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #16
  ret i8* %entry2.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @xa_find_after(%struct.xarray* noundef %xa, i64* nocapture noundef %indexp, i64 noundef %max, i32 noundef %filter) local_unnamed_addr #4 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #16
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
  %xa1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  store %struct.xarray* %xa, %struct.xarray** %xa1, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %3 = load i64, i64* %indexp, align 8
  %add = add i64 %3, 1
  store i64 %add, i64* %xa_index, align 8
  %xa_sibs = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 3
  store i8 0, i8* %xa_sibs, align 1
  %xa_pad = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 5
  store i8 0, i8* %xa_pad, align 1
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* inttoptr (i64 3 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  %xa_alloc = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 7
  store %struct.xa_node* null, %struct.xa_node** %xa_alloc, align 8
  %xa_update = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 8
  store void (%struct.xa_node*)* null, void (%struct.xa_node*)** %xa_update, align 8
  %cmp = icmp eq i64 %add, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @__rcu_read_lock() #15
  %cmp4 = icmp ult i32 %filter, 3
  br label %for.cond

for.cond:                                         ; preds = %if.end10, %if.end
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %for.cond
  %call = call i8* @xas_find_marked(%struct.xa_state* noundef nonnull %xas, i64 noundef %max, i32 noundef %filter) #14
  br label %if.end7

if.else:                                          ; preds = %for.cond
  %call6 = call i8* @xas_find(%struct.xa_state* noundef nonnull %xas, i64 noundef %max) #14
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  %entry2.0 = phi i8* [ %call, %if.then5 ], [ %call6, %if.else ]
  %call8 = call fastcc i1 @xas_invalid(%struct.xa_state* noundef nonnull %xas) #14
  br i1 %call8, label %for.end, label %if.end10

if.end10:                                         ; preds = %if.end7
  %call14 = call fastcc i1 @xas_retry(%struct.xa_state* noundef nonnull %xas, i8* noundef %entry2.0) #14
  br i1 %call14, label %for.cond, label %for.end

for.end:                                          ; preds = %if.end10, %if.end7
  call fastcc void @rcu_read_unlock() #14
  %tobool.not = icmp eq i8* %entry2.0, null
  br i1 %tobool.not, label %cleanup, label %if.then17

if.then17:                                        ; preds = %for.end
  %4 = load i64, i64* %xa_index, align 8
  store i64 %4, i64* %indexp, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then17, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %entry2.0, %if.then17 ], [ null, %for.end ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #16
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @xa_extract(%struct.xarray* noundef %xa, i8** nocapture noundef writeonly %dst, i64 noundef %start, i64 noundef %max, i32 noundef %n, i32 noundef %filter) local_unnamed_addr #4 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #16
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
  %xa1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  store %struct.xarray* %xa, %struct.xarray** %xa1, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  store i64 %start, i64* %xa_index, align 8
  %xa_sibs = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 3
  store i8 0, i8* %xa_sibs, align 1
  %xa_pad = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 5
  store i8 0, i8* %xa_pad, align 1
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* inttoptr (i64 3 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  %xa_alloc = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 7
  store %struct.xa_node* null, %struct.xa_node** %xa_alloc, align 8
  %xa_update = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 8
  store void (%struct.xa_node*)* null, void (%struct.xa_node*)** %xa_update, align 8
  %tobool.not = icmp eq i32 %n, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp = icmp ult i32 %filter, 3
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %call = call fastcc i32 @xas_extract_marked(%struct.xa_state* noundef nonnull %xas, i8** noundef %dst, i64 noundef %max, i32 noundef %n, i32 noundef %filter) #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call fastcc i32 @xas_extract_present(%struct.xa_state* noundef nonnull %xas, i8** noundef %dst, i64 noundef %max, i32 noundef %n) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end3, %if.then2
  %retval.0 = phi i32 [ %call, %if.then2 ], [ %call4, %if.end3 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @xas_extract_marked(%struct.xa_state* nocapture noundef %xas, i8** nocapture noundef writeonly %dst, i64 noundef %max, i32 noundef %n, i32 noundef %mark) unnamed_addr #4 {
entry:
  call fastcc void @__rcu_read_lock() #15
  %call = call i8* @xas_find_marked(%struct.xa_state* noundef %xas, i64 noundef %max, i32 noundef %mark) #14
  %tobool.not16 = icmp eq i8* %call, null
  br i1 %tobool.not16, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %i.018 = phi i32 [ %i.1, %for.inc ], [ 0, %entry ]
  %entry1.017 = phi i8* [ %call5, %for.inc ], [ %call, %entry ]
  %call2 = call fastcc i1 @xas_retry(%struct.xa_state* noundef %xas, i8* noundef nonnull %entry1.017) #14
  br i1 %call2, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %inc = add i32 %i.018, 1
  %idxprom = zext i32 %i.018 to i64
  %arrayidx = getelementptr i8*, i8** %dst, i64 %idxprom
  store i8* %entry1.017, i8** %arrayidx, align 8
  %cmp = icmp eq i32 %inc, %n
  br i1 %cmp, label %for.end, label %for.inc

for.inc:                                          ; preds = %if.end, %for.body
  %i.1 = phi i32 [ %i.018, %for.body ], [ %inc, %if.end ]
  %call5 = call fastcc i8* @xas_next_marked(%struct.xa_state* noundef %xas, i64 noundef %max, i32 noundef %mark) #14
  %tobool.not = icmp eq i8* %call5, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end, %entry
  %i.2 = phi i32 [ 0, %entry ], [ %n, %if.end ], [ %i.1, %for.inc ]
  call fastcc void @rcu_read_unlock() #14
  ret i32 %i.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @xas_extract_present(%struct.xa_state* nocapture noundef %xas, i8** nocapture noundef writeonly %dst, i64 noundef %max, i32 noundef %n) unnamed_addr #4 {
entry:
  call fastcc void @__rcu_read_lock() #15
  %call = call i8* @xas_find(%struct.xa_state* noundef %xas, i64 noundef %max) #14
  %tobool.not15 = icmp eq i8* %call, null
  br i1 %tobool.not15, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %i.017 = phi i32 [ %i.1, %for.inc ], [ 0, %entry ]
  %entry1.016 = phi i8* [ %call5, %for.inc ], [ %call, %entry ]
  %call2 = call fastcc i1 @xas_retry(%struct.xa_state* noundef %xas, i8* noundef nonnull %entry1.016) #14
  br i1 %call2, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %inc = add i32 %i.017, 1
  %idxprom = zext i32 %i.017 to i64
  %arrayidx = getelementptr i8*, i8** %dst, i64 %idxprom
  store i8* %entry1.016, i8** %arrayidx, align 8
  %cmp = icmp eq i32 %inc, %n
  br i1 %cmp, label %for.end, label %for.inc

for.inc:                                          ; preds = %if.end, %for.body
  %i.1 = phi i32 [ %i.017, %for.body ], [ %inc, %if.end ]
  %call5 = call fastcc i8* @xas_next_entry(%struct.xa_state* noundef %xas, i64 noundef %max) #14
  %tobool.not = icmp eq i8* %call5, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end, %entry
  %i.2 = phi i32 [ 0, %entry ], [ %n, %if.end ], [ %i.1, %for.inc ]
  call fastcc void @rcu_read_unlock() #14
  ret i32 %i.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @xa_delete_node(%struct.xa_node* nocapture noundef readonly %node, void (%struct.xa_node*)* noundef %update) local_unnamed_addr #4 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #16
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %array = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node, i64 0, i32 5
  %3 = load %struct.xarray*, %struct.xarray** %array, align 8
  store %struct.xarray* %3, %struct.xarray** %xa, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %offset = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node, i64 0, i32 1
  %4 = load i8, i8* %offset, align 1
  %conv = zext i8 %4 to i64
  %shift = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node, i64 0, i32 0
  %5 = load i8, i8* %shift, align 8
  %conv1 = zext i8 %5 to i64
  %add = add nuw nsw i64 %conv1, 6
  %shl = shl i64 %conv, %add
  store i64 %shl, i64* %xa_index, align 8
  %xa_shift = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %add4 = add i8 %5, 6
  store i8 %add4, i8* %xa_shift, align 8
  %xa_offset = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  store i8 %4, i8* %xa_offset, align 2
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %call = call fastcc %struct.xa_node* @xa_parent_locked(%struct.xa_node* noundef %node) #14
  store %struct.xa_node* %call, %struct.xa_node** %xa_node, align 8
  %xa_alloc = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 7
  store %struct.xa_node* null, %struct.xa_node** %xa_alloc, align 8
  %xa_update = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 8
  store void (%struct.xa_node*)* %update, void (%struct.xa_node*)** %xa_update, align 8
  %call8 = call i8* @xas_store(%struct.xa_state* noundef nonnull %xas, i8* noundef null) #14
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @xa_destroy(%struct.xarray* noundef %xa) local_unnamed_addr #4 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #16
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
  %xa1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  store %struct.xarray* %xa, %struct.xarray** %xa1, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  store i64 0, i64* %xa_index, align 8
  %xa_sibs = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 3
  store i8 0, i8* %xa_sibs, align 1
  %xa_pad = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 5
  store i8 0, i8* %xa_pad, align 1
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %xa_alloc = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 7
  store %struct.xa_node* null, %struct.xa_node** %xa_alloc, align 8
  %xa_update = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 8
  store void (%struct.xa_node*)* null, void (%struct.xa_node*)** %xa_update, align 8
  store %struct.xa_node* null, %struct.xa_node** %xa_node, align 8
  %rlock.i = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 0, i32 0, i32 0
  %call6 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #14
  %call9 = call fastcc i8* @xa_head_locked(%struct.xarray* noundef %xa) #14
  %xa_head = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 2
  store volatile i8* null, i8** %xa_head, align 8
  call void @xas_init_marks(%struct.xa_state* noundef nonnull %xas) #14
  %call22 = call fastcc i1 @xa_zero_busy(%struct.xarray* noundef %xa) #14
  br i1 %call22, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @xa_mark_clear(%struct.xarray* noundef %xa, i32 noundef 0) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call23 = call fastcc i1 @xa_is_node(i8* noundef %call9) #14
  br i1 %call23, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end
  %call25 = call fastcc %struct.xa_node* @xa_to_node(i8* noundef %call9) #14
  call fastcc void @xas_free_nodes(%struct.xa_state* noundef nonnull %xas, %struct.xa_node* noundef %call25) #14
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call6) #15
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #4 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #14
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !19
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #14
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @xa_head_locked(%struct.xarray* nocapture noundef readonly %xa) unnamed_addr #6 {
entry:
  %xa_head = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 2
  %0 = load i8*, i8** %xa_head, align 8
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @xa_zero_busy(%struct.xarray* nocapture noundef readonly %xa) unnamed_addr #6 {
entry:
  %xa_flags = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 1
  %0 = load i32, i32* %xa_flags, align 4
  %and = and i32 %0, 8
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @xas_valid(%struct.xa_state* nocapture noundef readonly %xas) unnamed_addr #6 {
entry:
  %call = call fastcc i1 @xas_invalid(%struct.xa_state* noundef %xas) #14
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i8* @xas_reload(%struct.xa_state* nocapture noundef readonly %xas) unnamed_addr #2 {
entry:
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %0 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %tobool.not = icmp eq %struct.xa_node* %0, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %1 = load %struct.xarray*, %struct.xarray** %xa, align 8
  %call = call fastcc i8* @xa_head(%struct.xarray* noundef %1) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %xa_offset = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  %2 = load i8, i8* %xa_offset, align 2
  %conv = zext i8 %2 to i32
  %call3 = call fastcc i8* @xa_entry(%struct.xa_node* noundef nonnull %0, i32 noundef %conv) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ %call3, %if.end ], [ %call, %if.then ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xa_is_internal(i8* noundef %entry1) unnamed_addr #3 {
entry:
  %0 = ptrtoint i8* %entry1 to i64
  %and = and i64 %0, 3
  %cmp = icmp eq i64 %and, 2
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radix_tree_node_rcu_free(%struct.callback_head* noundef) #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @xas_expand(%struct.xa_state* nocapture noundef %xas, i8* noundef %head) unnamed_addr #4 {
entry:
  %xa1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %0 = load %struct.xarray*, %struct.xarray** %xa1, align 8
  %call = call fastcc i64 @xas_max(%struct.xa_state* noundef %xas) #14
  %tobool.not = icmp eq i8* %head, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %cleanup127, label %while.cond

while.cond:                                       ; preds = %if.then, %while.cond
  %shift.0 = phi i32 [ %add, %while.cond ], [ 0, %if.then ]
  %sh_prom = zext i32 %shift.0 to i64
  %shr = lshr i64 %call, %sh_prom
  %cmp3 = icmp ugt i64 %shr, 63
  %add = add i32 %shift.0, 6
  br i1 %cmp3, label %while.cond, label %cleanup127

if.else:                                          ; preds = %entry
  %call5 = call fastcc i1 @xa_is_node(i8* noundef nonnull %head) #14
  br i1 %call5, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.else
  %call7 = call fastcc %struct.xa_node* @xa_to_node(i8* noundef nonnull %head) #14
  %shift8 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %call7, i64 0, i32 0
  %1 = load i8, i8* %shift8, align 8
  %conv = zext i8 %1 to i32
  %add9 = add nuw nsw i32 %conv, 6
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then6
  %shift.1 = phi i32 [ %add9, %if.then6 ], [ 0, %if.else ]
  %node.0 = phi %struct.xa_node* [ %call7, %if.then6 ], [ null, %if.else ]
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* null, %struct.xa_node** %xa_node, align 8
  %call13190 = call fastcc i64 @max_index(i8* noundef nonnull %head) #14
  %cmp14191 = icmp ugt i64 %call, %call13190
  br i1 %cmp14191, label %while.body16.lr.ph, label %while.end125

while.body16.lr.ph:                               ; preds = %if.end11
  %xa_head110 = getelementptr inbounds %struct.xarray, %struct.xarray* %0, i64 0, i32 2
  br label %while.body16

while.cond12:                                     ; preds = %if.then60, %for.end
  %call91 = call fastcc i8* @xa_mk_node(%struct.xa_node* noundef nonnull %3) #14
  %2 = ptrtoint i8* %call91 to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(i8** elementtype(i8*) %xa_head110, i64 %2) #16, !srcloc !20
  call fastcc void @xas_update(%struct.xa_state* noundef %xas, %struct.xa_node* noundef nonnull %3) #14
  %add124 = add i32 %shift.2192, 6
  %call13 = call fastcc i64 @max_index(i8* noundef nonnull %call91) #14
  %cmp14 = icmp ugt i64 %call, %call13
  br i1 %cmp14, label %while.body16, label %while.end125.loopexit

while.body16:                                     ; preds = %while.body16.lr.ph, %while.cond12
  %head.addr.0193 = phi i8* [ %head, %while.body16.lr.ph ], [ %call91, %while.cond12 ]
  %shift.2192 = phi i32 [ %shift.1, %while.body16.lr.ph ], [ %add124, %while.cond12 ]
  %call17 = call fastcc i8* @xas_alloc(%struct.xa_state* noundef %xas, i32 noundef %shift.2192) #14
  %3 = bitcast i8* %call17 to %struct.xa_node*
  %tobool18.not = icmp eq i8* %call17, null
  br i1 %tobool18.not, label %cleanup127, label %if.end20

if.end20:                                         ; preds = %while.body16
  %4 = getelementptr inbounds i8, i8* %call17, i64 2
  store i8 1, i8* %4, align 2
  %call21 = call fastcc i1 @xa_is_value(i8* noundef nonnull %head.addr.0193) #14
  br i1 %call21, label %if.then22, label %do.body29

if.then22:                                        ; preds = %if.end20
  %5 = getelementptr inbounds i8, i8* %call17, i64 3
  store i8 1, i8* %5, align 1
  br label %do.body29

do.body29:                                        ; preds = %if.then22, %if.end20
  %slots = getelementptr inbounds i8, i8* %call17, i64 40
  %arrayidx = bitcast i8* %slots to i8**
  store volatile i8* %head.addr.0193, i8** %arrayidx, align 8
  br label %for.cond

for.cond:                                         ; preds = %do.body55, %do.body29
  %mark.0 = phi i32 [ 0, %do.body29 ], [ %add56, %do.body55 ]
  %call36 = call fastcc i1 @xa_track_free(%struct.xarray* noundef %0) #14
  %cmp38 = icmp eq i32 %mark.0, 0
  %or.cond = select i1 %call36, i1 %cmp38, i1 false
  br i1 %or.cond, label %if.then40, label %if.else45

if.then40:                                        ; preds = %for.cond
  call fastcc void @node_mark_all(%struct.xa_node* noundef nonnull %3) #14
  %call41 = call fastcc i1 @xa_marked(%struct.xarray* noundef %0, i32 noundef 0) #14
  br i1 %call41, label %do.body55, label %if.then42

if.then42:                                        ; preds = %if.then40
  %call43 = call fastcc i1 @node_clear_mark(%struct.xa_node* noundef nonnull %3, i32 noundef 0, i32 noundef 0) #14
  call fastcc void @xa_mark_set(%struct.xarray* noundef %0, i32 noundef 0) #14
  br label %do.body55

if.else45:                                        ; preds = %for.cond
  %call46 = call fastcc i1 @xa_marked(%struct.xarray* noundef %0, i32 noundef %mark.0) #14
  br i1 %call46, label %if.then47, label %if.end50

if.then47:                                        ; preds = %if.else45
  %call48 = call fastcc i1 @node_set_mark(%struct.xa_node* noundef nonnull %3, i32 noundef 0, i32 noundef %mark.0) #14
  br label %if.end50

if.end50:                                         ; preds = %if.else45, %if.then47
  %cmp51 = icmp eq i32 %mark.0, 2
  br i1 %cmp51, label %for.end, label %do.body55

do.body55:                                        ; preds = %if.then42, %if.then40, %if.end50
  %add56 = add i32 %mark.0, 1
  br label %for.cond

for.end:                                          ; preds = %if.end50
  %call59 = call fastcc i1 @xa_is_node(i8* noundef nonnull %head.addr.0193) #14
  br i1 %call59, label %if.then60, label %while.cond12

if.then60:                                        ; preds = %for.end
  %call61 = call fastcc %struct.xa_node* @xa_to_node(i8* noundef nonnull %head.addr.0193) #14
  %offset = getelementptr inbounds %struct.xa_node, %struct.xa_node* %call61, i64 0, i32 1
  store i8 0, i8* %offset, align 1
  %6 = ptrtoint i8* %call17 to i64
  %parent80 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %call61, i64 0, i32 4
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.xa_node** elementtype(%struct.xa_node*) %parent80, i64 %6) #16, !srcloc !21
  br label %while.cond12

while.end125.loopexit:                            ; preds = %while.cond12
  %7 = bitcast i8* %call17 to %struct.xa_node*
  br label %while.end125

while.end125:                                     ; preds = %while.end125.loopexit, %if.end11
  %shift.2.lcssa = phi i32 [ %shift.1, %if.end11 ], [ %add124, %while.end125.loopexit ]
  %node.1.lcssa = phi %struct.xa_node* [ %node.0, %if.end11 ], [ %7, %while.end125.loopexit ]
  store %struct.xa_node* %node.1.lcssa, %struct.xa_node** %xa_node, align 8
  br label %cleanup127

cleanup127:                                       ; preds = %while.body16, %while.cond, %if.then, %while.end125
  %retval.2 = phi i32 [ %shift.2.lcssa, %while.end125 ], [ 0, %if.then ], [ %add, %while.cond ], [ -12, %while.body16 ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @xas_alloc(%struct.xa_state* nocapture noundef %xas, i32 noundef %shift) unnamed_addr #4 {
entry:
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %0 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %xa_alloc = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 7
  %1 = load %struct.xa_node*, %struct.xa_node** %xa_alloc, align 8
  %call = call fastcc i1 @xas_invalid(%struct.xa_state* noundef %xas) #14
  br i1 %call, label %cleanup37, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq %struct.xa_node* %1, null
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  store %struct.xa_node* null, %struct.xa_node** %xa_alloc, align 8
  br label %if.end10

if.else:                                          ; preds = %if.end
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %2 = load %struct.xarray*, %struct.xarray** %xa, align 8
  %xa_flags = getelementptr inbounds %struct.xarray, %struct.xarray* %2, i64 0, i32 1
  %3 = load i32, i32* %xa_flags, align 4
  %and = and i32 %3, 32
  %tobool3.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool3.not, i32 10240, i32 4204544
  %4 = load %struct.kmem_cache*, %struct.kmem_cache** @radix_tree_node_cachep, align 8
  %call6 = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %4, i32 noundef %spec.select) #15
  %5 = bitcast i8* %call6 to %struct.xa_node*
  %tobool7.not = icmp eq i8* %call6, null
  br i1 %tobool7.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.else
  call fastcc void @xas_set_err(%struct.xa_state* noundef %xas, i64 noundef -12) #14
  br label %cleanup37

if.end10:                                         ; preds = %if.else, %if.then1
  %node.0 = phi %struct.xa_node* [ %1, %if.then1 ], [ %5, %if.else ]
  %tobool11.not = icmp eq %struct.xa_node* %0, null
  br i1 %tobool11.not, label %do.end19, label %if.then12

if.then12:                                        ; preds = %if.end10
  %xa_offset = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  %6 = load i8, i8* %xa_offset, align 2
  %offset = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node.0, i64 0, i32 1
  store i8 %6, i8* %offset, align 1
  %count = getelementptr inbounds %struct.xa_node, %struct.xa_node* %0, i64 0, i32 2
  %7 = load i8, i8* %count, align 2
  %inc = add i8 %7, 1
  store i8 %inc, i8* %count, align 2
  call fastcc void @xas_update(%struct.xa_state* noundef %xas, %struct.xa_node* noundef nonnull %0) #14
  br label %do.end19

do.end19:                                         ; preds = %if.then12, %if.end10
  %conv = trunc i32 %shift to i8
  %shift20 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node.0, i64 0, i32 0
  store i8 %conv, i8* %shift20, align 8
  %count21 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node.0, i64 0, i32 2
  store i8 0, i8* %count21, align 2
  %nr_values = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node.0, i64 0, i32 3
  store i8 0, i8* %nr_values, align 1
  %8 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %parent29 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node.0, i64 0, i32 4
  store volatile %struct.xa_node* %8, %struct.xa_node** %parent29, align 8
  %xa36 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %9 = load %struct.xarray*, %struct.xarray** %xa36, align 8
  %array = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node.0, i64 0, i32 5
  store %struct.xarray* %9, %struct.xarray** %array, align 8
  br label %cleanup37

cleanup37:                                        ; preds = %if.then8, %entry, %do.end19
  %retval.1 = phi i8* [ %shift20, %do.end19 ], [ null, %if.then8 ], [ null, %entry ]
  ret i8* %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @node_mark_all(%struct.xa_node* noundef %node) unnamed_addr #4 {
entry:
  %call = call fastcc i64* @node_marks(%struct.xa_node* noundef %node, i32 noundef 0) #14
  call fastcc void @bitmap_fill(i64* noundef %call) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc nonnull i8* @xa_mk_node(%struct.xa_node* noundef %node) unnamed_addr #3 {
entry:
  %0 = ptrtoint %struct.xa_node* %node to i64
  %or = or i64 %0, 2
  %1 = inttoptr i64 %or to i8*
  ret i8* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @xas_max(%struct.xa_state* nocapture noundef readonly %xas) unnamed_addr #6 {
entry:
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %0 = load i64, i64* %xa_index, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @xas_update(%struct.xa_state* nocapture noundef readonly %xas, %struct.xa_node* noundef %node) unnamed_addr #4 {
entry:
  %xa_update = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 8
  %0 = load void (%struct.xa_node*)*, void (%struct.xa_node*)** %xa_update, align 8
  %tobool.not = icmp eq void (%struct.xa_node*)* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void %0(%struct.xa_node* noundef %node) #15
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_fill(i64* noundef %dst) unnamed_addr #4 {
entry:
  %0 = bitcast i64* %dst to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 255, i64 noundef 8) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64* @node_marks(%struct.xa_node* noundef readnone %node, i32 noundef %mark) unnamed_addr #3 {
entry:
  %idxprom = zext i32 %mark to i64
  %arraydecay = getelementptr %struct.xa_node, %struct.xa_node* %node, i64 0, i32 8, i32 0, i64 %idxprom, i64 0
  ret i64* %arraydecay
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @xa_err(i8* noundef %entry1) unnamed_addr #3 {
entry:
  %call = call fastcc i1 @xa_is_err(i8* noundef %entry1) #14
  %0 = ptrtoint i8* %entry1 to i64
  %1 = lshr i64 %0, 2
  %conv = trunc i64 %1 to i32
  %retval.0 = select i1 %call, i32 %conv, i32 0
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xa_is_err(i8* noundef %entry1) unnamed_addr #3 {
entry:
  %call = call fastcc i1 @xa_is_internal(i8* noundef %entry1) #14
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %call2 = call fastcc i8* @xa_mk_internal(i64 noundef -4095) #14
  %cmp = icmp ule i8* %call2, %entry1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_next_bit(i64* noundef %addr, i64 noundef %size, i64 noundef %offset) unnamed_addr #4 {
entry:
  %call12 = call i64 @_find_next_bit(i64* noundef %addr, i64* noundef null, i64 noundef %size, i64 noundef %offset, i64 noundef 0, i64 noundef 0) #15
  ret i64 %call12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_next_bit(i64* noundef, i64* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.cttz.i64(i64, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(i64* noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @xa_node_free(%struct.xa_node* noundef %node) unnamed_addr #4 {
entry:
  %array = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node, i64 0, i32 5
  store %struct.xarray* inttoptr (i64 1 to %struct.xarray*), %struct.xarray** %array, align 8
  %0 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node, i64 0, i32 6
  %callback_head = bitcast %union.anon.2* %0 to %struct.callback_head*
  call void @call_rcu(%struct.callback_head* noundef %callback_head, void (%struct.callback_head*)* noundef nonnull @radix_tree_node_rcu_free) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(%struct.callback_head* noundef, void (%struct.callback_head*)* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @xas_delete_node(%struct.xa_state* nocapture noundef %xas) unnamed_addr #4 {
entry:
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %0 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %count45 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %0, i64 0, i32 2
  %1 = load i8, i8* %count45, align 2
  %tobool.not46 = icmp eq i8 %1, 0
  br i1 %tobool.not46, label %if.end.lr.ph, label %for.end

if.end.lr.ph:                                     ; preds = %entry
  %xa_offset = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  br label %if.end

if.end:                                           ; preds = %if.end.lr.ph, %cleanup
  %node.047 = phi %struct.xa_node* [ %0, %if.end.lr.ph ], [ %call, %cleanup ]
  %call = call fastcc %struct.xa_node* @xa_parent_locked(%struct.xa_node* noundef %node.047) #14
  store %struct.xa_node* %call, %struct.xa_node** %xa_node, align 8
  %offset = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node.047, i64 0, i32 1
  %2 = load i8, i8* %offset, align 1
  store i8 %2, i8* %xa_offset, align 2
  call fastcc void @xa_node_free(%struct.xa_node* noundef %node.047) #14
  %tobool2.not = icmp eq %struct.xa_node* %call, null
  br i1 %tobool2.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.end
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %3 = load %struct.xarray*, %struct.xarray** %xa, align 8
  %xa_head = getelementptr inbounds %struct.xarray, %struct.xarray* %3, i64 0, i32 2
  store i8* null, i8** %xa_head, align 8
  store %struct.xa_node* inttoptr (i64 1 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  br label %cleanup16

cleanup:                                          ; preds = %if.end
  %4 = load i8, i8* %xa_offset, align 2
  %idxprom = zext i8 %4 to i64
  %arrayidx = getelementptr %struct.xa_node, %struct.xa_node* %call, i64 0, i32 7, i64 %idxprom
  store i8* null, i8** %arrayidx, align 8
  %count8 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %call, i64 0, i32 2
  %5 = load i8, i8* %count8, align 2
  %dec = add i8 %5, -1
  store i8 %dec, i8* %count8, align 2
  call fastcc void @xas_update(%struct.xa_state* noundef %xas, %struct.xa_node* noundef nonnull %call) #14
  %6 = load i8, i8* %count8, align 2
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end, label %for.end

for.end:                                          ; preds = %cleanup, %entry
  %node.0.lcssa = phi %struct.xa_node* [ %0, %entry ], [ %call, %cleanup ]
  %parent12 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node.0.lcssa, i64 0, i32 4
  %7 = load %struct.xa_node*, %struct.xa_node** %parent12, align 8
  %tobool13.not = icmp eq %struct.xa_node* %7, null
  br i1 %tobool13.not, label %if.then14, label %cleanup16

if.then14:                                        ; preds = %for.end
  call fastcc void @xas_shrink(%struct.xa_state* noundef %xas) #14
  br label %cleanup16

cleanup16:                                        ; preds = %cleanup.thread, %for.end, %if.then14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @xas_shrink(%struct.xa_state* nocapture noundef %xas) unnamed_addr #4 {
entry:
  %xa1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %0 = load %struct.xarray*, %struct.xarray** %xa1, align 8
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %1 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %count87 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %1, i64 0, i32 2
  %2 = load i8, i8* %count87, align 2
  %cmp.not88 = icmp eq i8 %2, 1
  br i1 %cmp.not88, label %if.end.lr.ph, label %for.end

if.end.lr.ph:                                     ; preds = %entry
  %xa_head = getelementptr inbounds %struct.xarray, %struct.xarray* %0, i64 0, i32 2
  br label %if.end

if.end:                                           ; preds = %if.end.lr.ph, %cleanup.critedge
  %count90 = phi i8* [ %count87, %if.end.lr.ph ], [ %count, %cleanup.critedge ]
  %node.089 = phi %struct.xa_node* [ %1, %if.end.lr.ph ], [ %call57, %cleanup.critedge ]
  %call = call fastcc i8* @xa_entry_locked(%struct.xa_node* noundef %node.089, i32 noundef 0) #14
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %for.end, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc i1 @xa_is_node(i8* noundef nonnull %call) #14
  br i1 %call6, label %if.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end5
  %shift = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node.089, i64 0, i32 0
  %3 = load i8, i8* %shift, align 8
  %tobool8.not = icmp eq i8 %3, 0
  br i1 %tobool8.not, label %if.end10, label %for.end

if.end10:                                         ; preds = %land.lhs.true, %if.end5
  %call11 = call fastcc i1 @xa_is_zero(i8* noundef nonnull %call) #14
  br i1 %call11, label %land.lhs.true13, label %if.end17

land.lhs.true13:                                  ; preds = %if.end10
  %call14 = call fastcc i1 @xa_zero_busy(%struct.xarray* noundef %0) #14
  %spec.select = select i1 %call14, i8* null, i8* %call
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true13, %if.end10
  %entry2.0 = phi i8* [ %call, %if.end10 ], [ %spec.select, %land.lhs.true13 ]
  store %struct.xa_node* inttoptr (i64 1 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  store volatile i8* %entry2.0, i8** %xa_head, align 8
  %call31 = call fastcc i1 @xa_track_free(%struct.xarray* noundef %0) #14
  br i1 %call31, label %land.lhs.true33, label %if.end36

land.lhs.true33:                                  ; preds = %if.end17
  %call34 = call fastcc i1 @node_get_mark(%struct.xa_node* noundef %node.089, i32 noundef 0, i32 noundef 0) #14
  br i1 %call34, label %if.end36, label %if.then35

if.then35:                                        ; preds = %land.lhs.true33
  call fastcc void @xa_mark_clear(%struct.xarray* noundef %0, i32 noundef 0) #14
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %land.lhs.true33, %if.end17
  store i8 0, i8* %count90, align 2
  %nr_values = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node.089, i64 0, i32 3
  store i8 0, i8* %nr_values, align 1
  %call38 = call fastcc i1 @xa_is_node(i8* noundef %entry2.0) #14
  br i1 %call38, label %cleanup.critedge, label %do.body45

do.body45:                                        ; preds = %if.end36
  %call46 = call fastcc i8* @xa_mk_internal(i64 noundef 256) #14
  %arrayidx = getelementptr inbounds %struct.xa_node, %struct.xa_node* %node.089, i64 0, i32 7, i64 0
  store volatile i8* %call46, i8** %arrayidx, align 8
  call fastcc void @xas_update(%struct.xa_state* noundef %xas, %struct.xa_node* noundef %node.089) #14
  call fastcc void @xa_node_free(%struct.xa_node* noundef %node.089) #14
  br label %for.end

cleanup.critedge:                                 ; preds = %if.end36
  call fastcc void @xas_update(%struct.xa_state* noundef %xas, %struct.xa_node* noundef %node.089) #14
  call fastcc void @xa_node_free(%struct.xa_node* noundef %node.089) #14
  %call57 = call fastcc %struct.xa_node* @xa_to_node(i8* noundef %entry2.0) #14
  %parent = getelementptr inbounds %struct.xa_node, %struct.xa_node* %call57, i64 0, i32 4
  store %struct.xa_node* null, %struct.xa_node** %parent, align 8
  %count = getelementptr inbounds %struct.xa_node, %struct.xa_node* %call57, i64 0, i32 2
  %4 = load i8, i8* %count, align 2
  %cmp.not = icmp eq i8 %4, 1
  br i1 %cmp.not, label %if.end, label %for.end

for.end:                                          ; preds = %land.lhs.true, %if.end, %cleanup.critedge, %entry, %do.body45
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @bitmap_empty(i64* nocapture noundef readonly %src) unnamed_addr #6 {
entry:
  %0 = load i64, i64* %src, align 8
  %tobool.not = icmp eq i64 %0, 0
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #4 {
entry:
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xa_is_retry(i8* noundef readnone %entry1) unnamed_addr #3 {
entry:
  %call = call fastcc i8* @xa_mk_internal(i64 noundef 256) #14
  %cmp = icmp eq i8* %call, %entry1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @xas_reset(%struct.xa_state* nocapture noundef writeonly %xas) unnamed_addr #9 {
entry:
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* inttoptr (i64 3 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #4 {
entry:
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  call void @rcu_read_unlock_strict() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #4 {
entry:
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #15
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !17

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #15
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #4 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #4 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #16, !srcloc !25
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #4 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #14
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #4 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #16, !srcloc !27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @xa_lock_type(%struct.xarray* nocapture noundef readonly %xa) unnamed_addr #6 {
entry:
  %xa_flags = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 1
  %0 = load i32, i32* %xa_flags, align 4
  %and = and i32 %0, 3
  ret i32 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @gfpflags_allow_blocking(i32 noundef %gfp_flags) unnamed_addr #3 {
entry:
  %and = and i32 %gfp_flags, 1024
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @xas_unlock_type(%struct.xa_state* nocapture noundef readonly %xas, i32 noundef %lock_type) unnamed_addr #4 {
entry:
  switch i32 %lock_type, label %if.else5 [
    i32 1, label %if.then
    i32 2, label %if.then2
  ]

if.then:                                          ; preds = %entry
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %0 = load %struct.xarray*, %struct.xarray** %xa, align 8
  %rlock.i = getelementptr inbounds %struct.xarray, %struct.xarray* %0, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #15
  br label %if.end8

if.then2:                                         ; preds = %entry
  %xa3 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %1 = load %struct.xarray*, %struct.xarray** %xa3, align 8
  %rlock.i12 = getelementptr inbounds %struct.xarray, %struct.xarray* %1, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_bh(%struct.raw_spinlock* noundef %rlock.i12) #15
  br label %if.end8

if.else5:                                         ; preds = %entry
  %xa6 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %2 = load %struct.xarray*, %struct.xarray** %xa6, align 8
  %rlock.i13 = getelementptr inbounds %struct.xarray, %struct.xarray* %2, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i13) #15
  br label %if.end8

if.end8:                                          ; preds = %if.then2, %if.else5, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @xas_lock_type(%struct.xa_state* nocapture noundef readonly %xas, i32 noundef %lock_type) unnamed_addr #4 {
entry:
  switch i32 %lock_type, label %if.else5 [
    i32 1, label %if.then
    i32 2, label %if.then2
  ]

if.then:                                          ; preds = %entry
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %0 = load %struct.xarray*, %struct.xarray** %xa, align 8
  %rlock.i = getelementptr inbounds %struct.xarray, %struct.xarray* %0, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #15
  br label %if.end8

if.then2:                                         ; preds = %entry
  %xa3 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %1 = load %struct.xarray*, %struct.xarray** %xa3, align 8
  %rlock.i12 = getelementptr inbounds %struct.xarray, %struct.xarray* %1, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_bh(%struct.raw_spinlock* noundef %rlock.i12) #15
  br label %if.end8

if.else5:                                         ; preds = %entry
  %xa6 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %2 = load %struct.xarray*, %struct.xarray** %xa6, align 8
  %rlock.i13 = getelementptr inbounds %struct.xarray, %struct.xarray* %2, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i13) #15
  br label %if.end8

if.end8:                                          ; preds = %if.then2, %if.else5, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #4 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #14
  call fastcc void @arch_local_irq_enable() #14
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #4 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #16, !srcloc !29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #2 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_bh(%struct.raw_spinlock* noundef %lock) unnamed_addr #4 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #14
  %0 = call i8* @llvm.returnaddress(i32 0)
  %1 = ptrtoint i8* %0 to i64
  %and = and i64 %1, 36028797018963968
  %tobool.not = icmp eq i64 %and, 0
  %2 = load i64, i64* @vabits_actual, align 8
  %shl3.neg = shl nsw i64 -1, %2
  %or = or i64 %shl3.neg, %1
  %and6 = and i64 %shl3.neg, 36028797018963967
  %neg = xor i64 %and6, -1
  %and8 = and i64 %neg, %1
  %cond = select i1 %tobool.not, i64 %and8, i64 %or
  call void @__local_bh_enable_ip(i64 noundef %cond, i32 noundef 512) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #4 {
entry:
  call fastcc void @arch_local_irq_disable() #14
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !30
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #4 {
entry:
  %call39 = call fastcc i32 @static_key_count() #14
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !10

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #16, !srcloc !31
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_bh(%struct.raw_spinlock* noundef %lock) unnamed_addr #4 {
entry:
  call fastcc void @__preempt_count_add() #15
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !32
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__preempt_count_add() unnamed_addr #4 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #17, !srcloc !33
  %1 = inttoptr i64 %0 to %struct.thread_info*
  %2 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %1, i64 0, i32 1
  %count = bitcast %union.anon.9* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  %add = add i32 %3, 512
  store volatile i32 %add, i32* %count, align 8
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc i8* @xas_next_marked(%struct.xa_state* nocapture noundef %xas, i64 noundef %max, i32 noundef %mark) unnamed_addr #10 {
entry:
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %0 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %call = call fastcc i1 @xas_not_node(%struct.xa_node* noundef %0) #14
  br i1 %call, label %cleanup.sink.split, label %lor.rhs, !prof !10

lor.rhs:                                          ; preds = %entry
  %shift = getelementptr inbounds %struct.xa_node, %struct.xa_node* %0, i64 0, i32 0
  %1 = load i8, i8* %shift, align 8
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %cleanup.sink.split, !prof !17

if.end:                                           ; preds = %lor.rhs
  %call6 = call fastcc i32 @xas_find_chunk(%struct.xa_state* noundef %xas, i1 noundef true, i32 noundef %mark) #14
  %conv7 = trunc i32 %call6 to i8
  %xa_offset = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  store i8 %conv7, i8* %xa_offset, align 2
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %2 = load i64, i64* %xa_index, align 8
  %and = and i64 %2, -64
  %conv8 = zext i32 %call6 to i64
  %add = add i64 %and, %conv8
  store i64 %add, i64* %xa_index, align 8
  %cmp = icmp ugt i64 %add, %max
  br i1 %cmp, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end
  %cmp15 = icmp eq i32 %call6, 64
  br i1 %cmp15, label %cleanup.sink.split, label %if.end19

if.end19:                                         ; preds = %if.end13
  %call20 = call fastcc i8* @xa_entry(%struct.xa_node* noundef %0, i32 noundef %call6) #14
  %tobool21.not = icmp eq i8* %call20, null
  br i1 %tobool21.not, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end19, %if.end13, %lor.rhs, %entry
  %call23 = call i8* @xas_find_marked(%struct.xa_state* noundef %xas, i64 noundef %max, i32 noundef %mark) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end19, %if.end
  %retval.0 = phi i8* [ null, %if.end ], [ %call20, %if.end19 ], [ %call23, %cleanup.sink.split ]
  ret i8* %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc i8* @xas_next_entry(%struct.xa_state* nocapture noundef %xas, i64 noundef %max) unnamed_addr #0 {
entry:
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %0 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %call = call fastcc i1 @xas_not_node(%struct.xa_node* noundef %0) #14
  br i1 %call, label %cleanup.sink.split, label %lor.lhs.false, !prof !10

lor.lhs.false:                                    ; preds = %entry
  %shift = getelementptr inbounds %struct.xa_node, %struct.xa_node* %0, i64 0, i32 0
  %1 = load i8, i8* %shift, align 8
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.rhs, label %cleanup.sink.split, !prof !17

lor.rhs:                                          ; preds = %lor.lhs.false
  %xa_offset = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  %2 = load i8, i8* %xa_offset, align 2
  %conv2 = zext i8 %2 to i64
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %3 = load i64, i64* %xa_index, align 8
  %and = and i64 %3, 63
  %cmp.not = icmp eq i64 %and, %conv2
  br i1 %cmp.not, label %do.body, label %cleanup.sink.split, !prof !17

do.body:                                          ; preds = %lor.rhs, %if.end48
  %4 = phi i8 [ %inc, %if.end48 ], [ %2, %lor.rhs ]
  %5 = phi i64 [ %inc51, %if.end48 ], [ %3, %lor.rhs ]
  %cmp9.not = icmp uge i64 %5, %max
  %cmp23 = icmp eq i8 %4, 63
  %or.cond = select i1 %cmp9.not, i1 true, i1 %cmp23
  br i1 %or.cond, label %cleanup.sink.split, label %if.end34, !prof !34

if.end34:                                         ; preds = %do.body
  %conv36 = zext i8 %4 to i32
  %add = add nuw nsw i32 %conv36, 1
  %call37 = call fastcc i8* @xa_entry(%struct.xa_node* noundef %0, i32 noundef %add) #14
  %call38 = call fastcc i1 @xa_is_internal(i8* noundef %call37) #14
  br i1 %call38, label %cleanup.sink.split, label %if.end48, !prof !10

if.end48:                                         ; preds = %if.end34
  %6 = load i8, i8* %xa_offset, align 2
  %inc = add i8 %6, 1
  store i8 %inc, i8* %xa_offset, align 2
  %7 = load i64, i64* %xa_index, align 8
  %inc51 = add i64 %7, 1
  store i64 %inc51, i64* %xa_index, align 8
  %tobool52.not = icmp eq i8* %call37, null
  br i1 %tobool52.not, label %do.body, label %cleanup

cleanup.sink.split:                               ; preds = %if.end34, %do.body, %lor.rhs, %lor.lhs.false, %entry
  %call47 = call i8* @xas_find(%struct.xa_state* noundef %xas, i64 noundef %max) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %cleanup.sink.split
  %retval.0 = phi i8* [ %call47, %cleanup.sink.split ], [ %call37, %if.end48 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #4 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #14
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #14
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #15
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !17

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #15
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #4 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #16, !srcloc !35
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #4 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #16, !srcloc !36
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #4 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #14
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #14
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !37
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #4 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #16, !srcloc !38
  ret void
}

attributes #0 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { mustprogress nofree nosync nounwind readnone willreturn }
attributes #14 = { nobuiltin "no-builtins" }
attributes #15 = { nobuiltin nounwind "no-builtins" }
attributes #16 = { nounwind }
attributes #17 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i32 0, i32 64}
!8 = !{i64 2150742161}
!9 = !{i64 2150748840}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 0, i64 65}
!12 = !{!"auto-init"}
!13 = !{i64 2150756911}
!14 = !{i64 2150759246}
!15 = !{i64 2150761430}
!16 = !{i64 2150763566}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2150765221}
!19 = !{i64 2149497566}
!20 = !{i64 2150735361}
!21 = !{i64 2150728153}
!22 = !{i64 2149977997}
!23 = !{i64 2149978214}
!24 = !{i64 2149512567}
!25 = !{i64 2147860308, i64 2147860341, i64 2147860394, i64 2147860453, i64 2147860487, i64 2147860542, i64 2147860571, i64 2147860591}
!26 = !{i64 2149519848}
!27 = !{i64 2149312078}
!28 = !{i64 2149526712}
!29 = !{i64 2149091878, i64 2149091925, i64 2149091931, i64 2149091968, i64 2149091986, i64 2149093326, i64 2149093374, i64 2149093422, i64 2149093485, i64 2149093534, i64 2149092064, i64 2149092089, i64 2149092115, i64 2149092121, i64 2149092992, i64 2149093032, i64 2149093050, i64 2149093082, i64 2149093110, i64 2149093164, i64 2149093184, i64 2149093281, i64 2149092144, i64 2149092158, i64 2149092164, i64 2149092214, i64 2149092260, i64 2149092293}
!30 = !{i64 2149501859}
!31 = !{i64 2149101334, i64 2149101381, i64 2149101387, i64 2149101424, i64 2149101442, i64 2149102783, i64 2149102831, i64 2149102879, i64 2149102942, i64 2149102991, i64 2149101520, i64 2149101545, i64 2149101571, i64 2149101577, i64 2149102449, i64 2149102489, i64 2149102507, i64 2149102539, i64 2149102567, i64 2149102621, i64 2149102641, i64 2149102738, i64 2149101600, i64 2149101614, i64 2149101620, i64 2149101670, i64 2149101716, i64 2149101749}
!32 = !{i64 2149204717}
!33 = !{i64 1369785}
!34 = !{!"branch_weights", i32 4001, i32 4000000}
!35 = !{i64 2149107037, i64 2149107084, i64 2149107090, i64 2149107127, i64 2149107145, i64 2149108456, i64 2149108504, i64 2149108552, i64 2149108615, i64 2149108664, i64 2149107223, i64 2149107248, i64 2149107274, i64 2149107280, i64 2149108122, i64 2149108162, i64 2149108180, i64 2149108212, i64 2149108240, i64 2149108294, i64 2149108314, i64 2149108411, i64 2149107303, i64 2149107317, i64 2149107323, i64 2149107373, i64 2149107419, i64 2149107452}
!36 = !{i64 2149109216, i64 2149109263, i64 2149109269, i64 2149109306, i64 2149109324, i64 2149110267, i64 2149110315, i64 2149110363, i64 2149110426, i64 2149110475, i64 2149109402, i64 2149109427, i64 2149109453, i64 2149109459, i64 2149109496, i64 2149109502, i64 2149109552, i64 2149109598, i64 2149109631}
!37 = !{i64 2149523409}
!38 = !{i64 2149113050, i64 2149113097, i64 2149113103, i64 2149113140, i64 2149113158, i64 2149118530, i64 2149118578, i64 2149118626, i64 2149118689, i64 2149118738, i64 2149113236, i64 2149113261, i64 2149113287, i64 2149113293, i64 2149118196, i64 2149118236, i64 2149118254, i64 2149118286, i64 2149118314, i64 2149118368, i64 2149118388, i64 2149118485, i64 2149113316, i64 2149113330, i64 2149113336, i64 2149113386, i64 2149113432, i64 2149113465}
