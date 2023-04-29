; ModuleID = 'lib/idr.c'
source_filename = "lib/idr.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kmem_cache = type opaque
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.radix_tree_iter = type { i64, i64, i64, %struct.xa_node* }
%struct.xa_node = type { i8, i8, i8, i8, %struct.xa_node*, %struct.xarray*, %union.anon.2, [64 x i8*], %union.anon.3 }
%union.anon.2 = type { %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%union.anon.3 = type { [3 x [1 x i64]] }
%struct.ida = type { %struct.xarray }
%struct.xa_state = type { %struct.xarray*, i64, i8, i8, i8, i8, %struct.xa_node*, %struct.xa_node*, void (%struct.xa_node*)* }
%struct.ida_bitmap = type { [16 x i64] }

@.str = private unnamed_addr constant [51 x i8] c"ida_free called for id=%d which is not allocated.\0A\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @idr_alloc_u32(%struct.idr* noundef %idr, i8* noundef %ptr, i32* nocapture noundef %nextid, i64 noundef %max, i32 noundef %gfp) local_unnamed_addr #0 {
entry:
  %iter = alloca %struct.radix_tree_iter, align 8
  %0 = bitcast %struct.radix_tree_iter* %iter to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #10
  %1 = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 2
  %2 = bitcast i64* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false), !annotation !7
  %idr_base = getelementptr inbounds %struct.idr, %struct.idr* %idr, i64 0, i32 1
  %3 = load i32, i32* %idr_base, align 8
  %4 = load i32, i32* %nextid, align 4
  %idr_rt = getelementptr inbounds %struct.idr, %struct.idr* %idr, i64 0, i32 0
  %xa_flags = getelementptr inbounds %struct.idr, %struct.idr* %idr, i64 0, i32 0, i32 1
  %5 = load i32, i32* %xa_flags, align 4
  %and = and i32 %5, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end20, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/idr.c\22; .popsection; .long 14472b - 14470b; .short 41; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !9
  %6 = load i32, i32* %xa_flags, align 4
  %or = or i32 %6, 33554436
  store i32 %or, i32* %xa_flags, align 4
  br label %if.end20

if.end20:                                         ; preds = %entry, %if.then
  %7 = call i32 @llvm.usub.sat.i32(i32 %4, i32 %3)
  %conv22 = zext i32 %7 to i64
  %index.i = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 0
  store i64 0, i64* %index.i, align 8
  %next_index.i = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 1
  store i64 %conv22, i64* %next_index.i, align 8
  %conv24 = zext i32 %3 to i64
  %sub25 = sub i64 %max, %conv24
  %call26 = call i8** @idr_get_free(%struct.xarray* noundef %idr_rt, %struct.radix_tree_iter* noundef nonnull %iter, i32 noundef %gfp, i64 noundef %sub25) #11
  %8 = bitcast i8** %call26 to i8*
  %call27 = call fastcc i1 @IS_ERR(i8* noundef %8) #12
  br i1 %call27, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end20
  %call29 = call fastcc i64 @PTR_ERR(i8* noundef %8) #12
  %conv30 = trunc i64 %call29 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end20
  %9 = load i64, i64* %index.i, align 8
  %10 = trunc i64 %9 to i32
  %conv33 = add i32 %3, %10
  store i32 %conv33, i32* %nextid, align 4
  call void @radix_tree_iter_replace(%struct.xarray* noundef %idr_rt, %struct.radix_tree_iter* noundef nonnull %iter, i8** noundef %call26, i8* noundef %ptr) #11
  call void @radix_tree_iter_tag_clear(%struct.xarray* noundef %idr_rt, %struct.radix_tree_iter* noundef nonnull %iter, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then28
  %retval.0 = phi i32 [ %conv30, %if.then28 ], [ 0, %if.end31 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8** @idr_get_free(%struct.xarray* noundef, %struct.radix_tree_iter* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #4 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #4 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radix_tree_iter_replace(%struct.xarray* noundef, %struct.radix_tree_iter* noundef, i8** noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radix_tree_iter_tag_clear(%struct.xarray* noundef, %struct.radix_tree_iter* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @idr_alloc(%struct.idr* noundef %idr, i8* noundef %ptr, i32 noundef %start, i32 noundef %end, i32 noundef %gfp) local_unnamed_addr #0 {
entry:
  %id = alloca i32, align 4
  %0 = bitcast i32* %id to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  store i32 %start, i32* %id, align 4
  %cmp = icmp slt i32 %start, 0
  br i1 %cmp, label %if.then, label %if.end16, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/idr.c\22; .popsection; .long 14472b - 14470b; .short 84; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !10
  br label %cleanup

if.end16:                                         ; preds = %entry
  %cmp17 = icmp sgt i32 %end, 0
  %sub = add i32 %end, -1
  %cond = select i1 %cmp17, i32 %sub, i32 2147483647
  %conv1930 = zext i32 %cond to i64
  %call = call i32 @idr_alloc_u32(%struct.idr* noundef %idr, i8* noundef %ptr, i32* noundef nonnull %id, i64 noundef %conv1930, i32 noundef %gfp) #12
  %tobool20.not = icmp eq i32 %call, 0
  %1 = load i32, i32* %id, align 4
  %spec.select = select i1 %tobool20.not, i32 %1, i32 %call
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %spec.select, %if.end16 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @idr_alloc_cyclic(%struct.idr* noundef %idr, i8* noundef %ptr, i32 noundef %start, i32 noundef %end, i32 noundef %gfp) local_unnamed_addr #0 {
entry:
  %id = alloca i32, align 4
  %0 = bitcast i32* %id to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  %idr_next = getelementptr inbounds %struct.idr, %struct.idr* %idr, i64 0, i32 2
  %1 = load i32, i32* %idr_next, align 4
  %cmp = icmp sgt i32 %end, 0
  %sub = add i32 %end, -1
  %cond = select i1 %cmp, i32 %sub, i32 2147483647
  %cmp1 = icmp slt i32 %1, %start
  %spec.select = select i1 %cmp1, i32 %start, i32 %1
  store i32 %spec.select, i32* %id, align 4
  %conv31 = zext i32 %cond to i64
  %call = call i32 @idr_alloc_u32(%struct.idr* noundef %idr, i8* noundef %ptr, i32* noundef nonnull %id, i64 noundef %conv31, i32 noundef %gfp) #12
  %cmp2 = icmp eq i32 %call, -28
  br i1 %cmp2, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %id, align 4
  %cmp4 = icmp ugt i32 %2, %start
  br i1 %cmp4, label %if.then6, label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  store i32 %start, i32* %id, align 4
  %call8 = call i32 @idr_alloc_u32(%struct.idr* noundef %idr, i8* noundef %ptr, i32* noundef nonnull %id, i64 noundef %conv31, i32 noundef %gfp) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %entry
  %err.0 = phi i32 [ %call8, %if.then6 ], [ %call, %entry ]
  %tobool.not = icmp eq i32 %err.0, 0
  br i1 %tobool.not, label %if.end11, label %cleanup

if.end11:                                         ; preds = %if.end9
  %3 = load i32, i32* %id, align 4
  %add = add i32 %3, 1
  store i32 %add, i32* %idr_next, align 4
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end9, %if.end11
  %retval.0 = phi i32 [ %3, %if.end11 ], [ %err.0, %if.end9 ], [ -28, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @idr_remove(%struct.idr* noundef %idr, i64 noundef %id) local_unnamed_addr #0 {
entry:
  %idr_rt = getelementptr inbounds %struct.idr, %struct.idr* %idr, i64 0, i32 0
  %idr_base = getelementptr inbounds %struct.idr, %struct.idr* %idr, i64 0, i32 1
  %0 = load i32, i32* %idr_base, align 8
  %conv = zext i32 %0 to i64
  %sub = sub i64 %id, %conv
  %call = call i8* @radix_tree_delete_item(%struct.xarray* noundef %idr_rt, i64 noundef %sub, i8* noundef null) #11
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @radix_tree_delete_item(%struct.xarray* noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @idr_find(%struct.idr* noundef %idr, i64 noundef %id) local_unnamed_addr #0 {
entry:
  %idr_rt = getelementptr inbounds %struct.idr, %struct.idr* %idr, i64 0, i32 0
  %idr_base = getelementptr inbounds %struct.idr, %struct.idr* %idr, i64 0, i32 1
  %0 = load i32, i32* %idr_base, align 8
  %conv = zext i32 %0 to i64
  %sub = sub i64 %id, %conv
  %call = call i8* @radix_tree_lookup(%struct.xarray* noundef %idr_rt, i64 noundef %sub) #11
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @radix_tree_lookup(%struct.xarray* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @idr_for_each(%struct.idr* noundef %idr, i32 (i32, i8*, i8*)* nocapture noundef readonly %fn, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %iter = alloca %struct.radix_tree_iter, align 8
  %0 = bitcast %struct.radix_tree_iter* %iter to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #10
  %1 = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 2
  %2 = bitcast i64* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false), !annotation !7
  %idr_base = getelementptr inbounds %struct.idr, %struct.idr* %idr, i64 0, i32 1
  %3 = load i32, i32* %idr_base, align 8
  %index.i = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 0
  store i64 0, i64* %index.i, align 8
  %next_index.i = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 1
  store i64 0, i64* %next_index.i, align 8
  %idr_rt = getelementptr inbounds %struct.idr, %struct.idr* %idr, i64 0, i32 0
  %conv = sext i32 %3 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %4 = phi i64 [ 0, %entry ], [ %.be, %for.cond.backedge ]
  %slot.0 = phi i8** [ null, %entry ], [ %slot.0.be, %for.cond.backedge ]
  %tobool.not = icmp eq i8** %slot.0, null
  br i1 %tobool.not, label %lor.rhs, label %for.body

lor.rhs:                                          ; preds = %for.cond
  %call1 = call i8** @radix_tree_next_chunk(%struct.xarray* noundef %idr_rt, %struct.radix_tree_iter* noundef nonnull %iter, i32 noundef 0) #11
  %tobool2.not = icmp eq i8** %call1, null
  br i1 %tobool2.not, label %cleanup31, label %lor.rhs.for.body_crit_edge

lor.rhs.for.body_crit_edge:                       ; preds = %lor.rhs
  %.pre = load i64, i64* %index.i, align 8
  br label %for.body

for.body:                                         ; preds = %lor.rhs.for.body_crit_edge, %for.cond
  %5 = phi i64 [ %4, %for.cond ], [ %.pre, %lor.rhs.for.body_crit_edge ]
  %slot.1 = phi i8** [ %slot.0, %for.cond ], [ %call1, %lor.rhs.for.body_crit_edge ]
  %add = add i64 %5, %conv
  %cmp = icmp ugt i64 %add, 2147483647
  br i1 %cmp, label %cleanup, label %if.end21, !prof !8

if.end21:                                         ; preds = %for.body
  %conv22 = trunc i64 %add to i32
  %6 = load volatile i8*, i8** %slot.1, align 8
  %call25 = call i32 %fn(i32 noundef %conv22, i8* noundef %6, i8* noundef %data) #11
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %for.inc, label %cleanup31

cleanup:                                          ; preds = %for.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/idr.c\22; .popsection; .long 14472b - 14470b; .short 206; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !11
  br label %cleanup31

for.inc:                                          ; preds = %if.end21
  %7 = load i64, i64* %next_index.i, align 8
  %8 = load i64, i64* %index.i, align 8
  %9 = xor i64 %8, -1
  %dec.i52 = add i64 %7, %9
  %cmp.i53 = icmp sgt i64 %dec.i52, 0
  br i1 %cmp.i53, label %while.body.i, label %for.cond.backedge

for.cond.backedge:                                ; preds = %while.cond.i, %while.body.i, %for.inc
  %.be = phi i64 [ %8, %for.inc ], [ %call34.i, %while.body.i ], [ %call34.i, %while.cond.i ]
  %slot.0.be = phi i8** [ null, %for.inc ], [ %incdec.ptr33.i, %while.body.i ], [ null, %while.cond.i ]
  br label %for.cond

while.cond.i:                                     ; preds = %while.body.i
  %dec.i = add i64 %dec.i55, -1
  %cmp.i = icmp sgt i64 %dec.i, 0
  br i1 %cmp.i, label %while.body.i, label %for.cond.backedge

while.body.i:                                     ; preds = %for.inc, %while.cond.i
  %dec.i55 = phi i64 [ %dec.i, %while.cond.i ], [ %dec.i52, %for.inc ]
  %slot.addr.0.i54 = phi i8** [ %incdec.ptr33.i, %while.cond.i ], [ %slot.1, %for.inc ]
  %incdec.ptr33.i = getelementptr i8*, i8** %slot.addr.0.i54, i64 1
  %call34.i = call fastcc i64 @__radix_tree_iter_add(%struct.radix_tree_iter* noundef nonnull %iter) #11
  store i64 %call34.i, i64* %index.i, align 8
  %10 = load i8*, i8** %incdec.ptr33.i, align 8
  %tobool36.not.i = icmp eq i8* %10, null
  br i1 %tobool36.not.i, label %while.cond.i, label %for.cond.backedge, !prof !8

cleanup31:                                        ; preds = %if.end21, %lor.rhs, %cleanup
  %retval.2 = phi i32 [ 0, %cleanup ], [ %call25, %if.end21 ], [ 0, %lor.rhs ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #10
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8** @radix_tree_next_chunk(%struct.xarray* noundef, %struct.radix_tree_iter* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @idr_get_next_ul(%struct.idr* noundef %idr, i64* nocapture noundef %nextid) local_unnamed_addr #0 {
entry:
  %iter = alloca %struct.radix_tree_iter, align 8
  %0 = bitcast %struct.radix_tree_iter* %iter to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #10
  %1 = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 2
  %2 = bitcast i64* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false), !annotation !7
  %idr_base = getelementptr inbounds %struct.idr, %struct.idr* %idr, i64 0, i32 1
  %3 = load i32, i32* %idr_base, align 8
  %conv = zext i32 %3 to i64
  %4 = load i64, i64* %nextid, align 8
  %5 = call i64 @llvm.usub.sat.i64(i64 %4, i64 %conv)
  %index.i = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 0
  store i64 0, i64* %index.i, align 8
  %next_index.i = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 1
  store i64 %5, i64* %next_index.i, align 8
  %idr_rt = getelementptr inbounds %struct.idr, %struct.idr* %idr, i64 0, i32 0
  %xa_head = getelementptr inbounds %struct.idr, %struct.idr* %idr, i64 0, i32 0, i32 2
  br label %for.cond

for.cond.loopexit:                                ; preds = %while.cond.i, %while.body.i
  %slot.0.ph = phi i8** [ null, %while.cond.i ], [ %incdec.ptr33.i, %while.body.i ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.loopexit, %entry
  %slot.0 = phi i8** [ null, %entry ], [ %slot.0.ph, %for.cond.loopexit ]
  %tobool.not = icmp eq i8** %slot.0, null
  br i1 %tobool.not, label %lor.rhs, label %for.body

lor.rhs:                                          ; preds = %for.cond
  %call3 = call i8** @radix_tree_next_chunk(%struct.xarray* noundef %idr_rt, %struct.radix_tree_iter* noundef nonnull %iter, i32 noundef 0) #11
  %tobool4.not = icmp eq i8** %call3, null
  br i1 %tobool4.not, label %cleanup, label %for.body

for.body:                                         ; preds = %for.cond, %lor.rhs
  %slot.1 = phi i8** [ %slot.0, %for.cond ], [ %call3, %lor.rhs ]
  %6 = load volatile i8*, i8** %slot.1, align 8
  %tobool6.not = icmp eq i8* %6, null
  br i1 %tobool6.not, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %call7 = call fastcc i1 @xa_is_internal(i8* noundef nonnull %6) #12
  br i1 %call7, label %if.end9, label %if.end20

if.end9:                                          ; preds = %if.end
  %cmp11.not = icmp eq i8** %slot.1, %xa_head
  br i1 %cmp11.not, label %if.end15, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end9
  %call13 = call fastcc i1 @xa_is_retry(i8* noundef nonnull %6) #12
  br i1 %call13, label %if.end15, label %if.end20

if.end15:                                         ; preds = %land.lhs.true, %if.end9
  call fastcc void @radix_tree_iter_retry(%struct.radix_tree_iter* noundef nonnull %iter) #12
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end15
  %slot.2 = phi i8** [ null, %if.end15 ], [ %slot.1, %for.body ]
  %7 = load i64, i64* %next_index.i, align 8
  %8 = load i64, i64* %index.i, align 8
  %sub.i.i = sub i64 %7, %8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %for.inc
  %slot.addr.0.i = phi i8** [ %slot.2, %for.inc ], [ %incdec.ptr33.i, %while.body.i ]
  %count.0.i = phi i64 [ %sub.i.i, %for.inc ], [ %dec.i, %while.body.i ]
  %dec.i = add i64 %count.0.i, -1
  %cmp.i = icmp sgt i64 %dec.i, 0
  br i1 %cmp.i, label %while.body.i, label %for.cond.loopexit

while.body.i:                                     ; preds = %while.cond.i
  %incdec.ptr33.i = getelementptr i8*, i8** %slot.addr.0.i, i64 1
  %call34.i = call fastcc i64 @__radix_tree_iter_add(%struct.radix_tree_iter* noundef nonnull %iter) #11
  store i64 %call34.i, i64* %index.i, align 8
  %9 = load i8*, i8** %incdec.ptr33.i, align 8
  %tobool36.not.i = icmp eq i8* %9, null
  br i1 %tobool36.not.i, label %while.cond.i, label %for.cond.loopexit, !prof !8

if.end20:                                         ; preds = %land.lhs.true, %if.end
  %10 = load i64, i64* %index.i, align 8
  %add = add i64 %10, %conv
  store i64 %add, i64* %nextid, align 8
  br label %cleanup

cleanup:                                          ; preds = %lor.rhs, %if.end20
  %retval.0 = phi i8* [ %6, %if.end20 ], [ null, %lor.rhs ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #10
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xa_is_internal(i8* noundef %entry1) unnamed_addr #4 {
entry:
  %0 = ptrtoint i8* %entry1 to i64
  %and = and i64 %0, 3
  %cmp = icmp eq i64 %and, 2
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xa_is_retry(i8* noundef readnone %entry1) unnamed_addr #4 {
entry:
  %call = call fastcc i8* @xa_mk_internal(i64 noundef 256) #12
  %cmp = icmp eq i8* %call, %entry1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @radix_tree_iter_retry(%struct.radix_tree_iter* nocapture noundef %iter) unnamed_addr #5 {
entry:
  %index = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 0
  %0 = load i64, i64* %index, align 8
  %next_index = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 1
  store i64 %0, i64* %next_index, align 8
  %tags = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 2
  store i64 0, i64* %tags, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @idr_get_next(%struct.idr* noundef %idr, i32* nocapture noundef %nextid) local_unnamed_addr #0 {
entry:
  %id = alloca i64, align 8
  %0 = bitcast i64* %id to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  %1 = load i32, i32* %nextid, align 4
  %conv = sext i32 %1 to i64
  store i64 %conv, i64* %id, align 8
  %call = call i8* @idr_get_next_ul(%struct.idr* noundef %idr, i64* noundef nonnull %id) #12
  %2 = load i64, i64* %id, align 8
  %cmp = icmp ugt i64 %2, 2147483647
  br i1 %cmp, label %if.then, label %if.end19, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/idr.c\22; .popsection; .long 14472b - 14470b; .short 269; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !12
  br label %cleanup

if.end19:                                         ; preds = %entry
  %conv20 = trunc i64 %2 to i32
  store i32 %conv20, i32* %nextid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end19
  %retval.0 = phi i8* [ %call, %if.end19 ], [ null, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @idr_replace(%struct.idr* noundef %idr, i8* noundef %ptr, i64 noundef %id) local_unnamed_addr #0 {
entry:
  %node = alloca %struct.xa_node*, align 8
  %slot = alloca i8**, align 8
  %0 = bitcast %struct.xa_node** %node to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store %struct.xa_node* null, %struct.xa_node** %node, align 8, !annotation !7
  %1 = bitcast i8*** %slot to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #10
  store i8** null, i8*** %slot, align 8
  %idr_base = getelementptr inbounds %struct.idr, %struct.idr* %idr, i64 0, i32 1
  %2 = load i32, i32* %idr_base, align 8
  %conv = zext i32 %2 to i64
  %sub = sub i64 %id, %conv
  %idr_rt = getelementptr inbounds %struct.idr, %struct.idr* %idr, i64 0, i32 0
  %call = call i8* @__radix_tree_lookup(%struct.xarray* noundef %idr_rt, i64 noundef %sub, %struct.xa_node** noundef nonnull %node, i8*** noundef nonnull %slot) #11
  %3 = load i8**, i8*** %slot, align 8
  %tobool.not = icmp eq i8** %3, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call3 = call i32 @radix_tree_tag_get(%struct.xarray* noundef %idr_rt, i64 noundef %sub, i32 noundef 0) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.xa_node*, %struct.xa_node** %node, align 8
  %5 = load i8**, i8*** %slot, align 8
  call void @__radix_tree_replace(%struct.xarray* noundef %idr_rt, %struct.xa_node* noundef %4, i8** noundef %5, i8* noundef %ptr) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ inttoptr (i64 -2 to i8*), %lor.lhs.false ], [ inttoptr (i64 -2 to i8*), %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__radix_tree_lookup(%struct.xarray* noundef, i64 noundef, %struct.xa_node** noundef, i8*** noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_tag_get(%struct.xarray* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__radix_tree_replace(%struct.xarray* noundef, %struct.xa_node* noundef, i8** noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @ida_alloc_range(%struct.ida* noundef %ida, i32 noundef %min, i32 noundef %max, i32 noundef %gfp) local_unnamed_addr #0 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %tmp35 = alloca i64, align 8
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #10
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !7
  store i64 0, i64* %2, align 8, !annotation !7
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %xa1 = getelementptr inbounds %struct.ida, %struct.ida* %ida, i64 0, i32 0
  store %struct.xarray* %xa1, %struct.xarray** %xa, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %3 = lshr i32 %min, 10
  %div = zext i32 %3 to i64
  store i64 %div, i64* %xa_index, align 8
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
  %rem = and i32 %min, 1023
  %cmp = icmp slt i32 %min, 0
  br i1 %cmp, label %cleanup159, label %if.end

if.end:                                           ; preds = %entry
  %4 = icmp ult i32 %max, 2147483647
  %spec.store.select = select i1 %4, i32 %max, i32 2147483647
  %conv16 = zext i32 %spec.store.select to i64
  %div17 = lshr i64 %conv16, 10
  %5 = bitcast i64* %tmp35 to i8*
  br label %retry.outer

retry.outer:                                      ; preds = %if.end151, %if.end
  %alloc.0.ph = phi %struct.ida_bitmap* [ %26, %if.end151 ], [ null, %if.end ]
  %tobool.not = icmp eq %struct.ida_bitmap* %alloc.0.ph, null
  br label %retry

retry:                                            ; preds = %retry.outer, %if.then123
  %6 = load %struct.xarray*, %struct.xarray** %xa, align 8
  %rlock.i = getelementptr inbounds %struct.xarray, %struct.xarray* %6, i64 0, i32 0, i32 0, i32 0
  %call13 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #12
  br label %next

next:                                             ; preds = %if.end88, %retry
  %bit.1 = phi i32 [ %rem, %retry ], [ %conv79, %if.end88 ]
  %call18 = call i8* @xas_find_marked(%struct.xa_state* noundef nonnull %xas, i64 noundef %div17, i32 noundef 0) #11
  %7 = bitcast i8* %call18 to %struct.ida_bitmap*
  %8 = load i64, i64* %xa_index, align 8
  %cmp22 = icmp ugt i64 %8, %div
  %spec.select = select i1 %cmp22, i32 0, i32 %bit.1
  %mul = shl i64 %8, 10
  %conv27 = zext i32 %spec.select to i64
  %add = add i64 %mul, %conv27
  %cmp29 = icmp ugt i64 %add, %conv16
  br i1 %cmp29, label %nospc, label %if.end32

if.end32:                                         ; preds = %next
  %call33 = call fastcc i1 @xa_is_value(i8* noundef %call18) #12
  br i1 %call33, label %if.then34, label %if.end73

if.then34:                                        ; preds = %if.end32
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #10
  %call36 = call fastcc i64 @xa_to_value(i8* noundef %call18) #12
  store i64 %call36, i64* %tmp35, align 8
  %cmp37 = icmp ult i32 %spec.select, 63
  br i1 %cmp37, label %if.then39, label %if.end58

if.then39:                                        ; preds = %if.then34
  %call41 = call fastcc i64 @find_next_zero_bit(i64* noundef nonnull %tmp35, i64 noundef 63, i64 noundef %conv27) #12
  %conv42 = trunc i64 %call41 to i32
  %9 = load i64, i64* %xa_index, align 8
  %mul44 = shl i64 %9, 10
  %conv45 = and i64 %call41, 4294967295
  %add46 = add i64 %mul44, %conv45
  %cmp48 = icmp ugt i64 %add46, %conv16
  br i1 %cmp48, label %cleanup, label %if.end51

if.end51:                                         ; preds = %if.then39
  %cmp52 = icmp ult i32 %conv42, 63
  br i1 %cmp52, label %if.then54, label %if.end58

if.then54:                                        ; preds = %if.end51
  %10 = bitcast i8* %call18 to %struct.ida_bitmap*
  %conv42.le = trunc i64 %call41 to i32
  %shl = shl nuw i64 1, %conv45
  %11 = load i64, i64* %tmp35, align 8
  %or = or i64 %11, %shl
  store i64 %or, i64* %tmp35, align 8
  %call55 = call fastcc i8* @xa_mk_value(i64 noundef %or) #12
  %call56 = call i8* @xas_store(%struct.xa_state* noundef nonnull %xas, i8* noundef %call55) #11
  br label %cleanup.thread

if.end58:                                         ; preds = %if.end51, %if.then34
  %bit.3 = phi i32 [ %conv42, %if.end51 ], [ %spec.select, %if.then34 ]
  br i1 %tobool.not, label %if.end61, label %if.end64

if.end61:                                         ; preds = %if.end58
  %call60 = call fastcc i8* @kzalloc(i32 noundef 2048) #12
  %12 = bitcast i8* %call60 to %struct.ida_bitmap*
  %tobool62.not = icmp eq i8* %call60, null
  br i1 %tobool62.not, label %cleanup.thread235, label %if.end64

cleanup.thread235:                                ; preds = %if.end61
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10
  br label %alloc145

if.end64:                                         ; preds = %if.end58, %if.end61
  %bitmap.0227 = phi %struct.ida_bitmap* [ %12, %if.end61 ], [ %alloc.0.ph, %if.end58 ]
  %13 = load i64, i64* %tmp35, align 8
  %arrayidx = getelementptr inbounds %struct.ida_bitmap, %struct.ida_bitmap* %bitmap.0227, i64 0, i32 0, i64 0
  store i64 %13, i64* %arrayidx, align 8
  %14 = bitcast %struct.ida_bitmap* %bitmap.0227 to i8*
  %call66 = call i8* @xas_store(%struct.xa_state* noundef nonnull %xas, i8* noundef nonnull %14) #11
  %call67 = call fastcc i32 @xas_error(%struct.xa_state* noundef nonnull %xas) #12
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end73.thread, label %if.then69

if.end73.thread:                                  ; preds = %if.end64
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10
  %.pre = zext i32 %bit.3 to i64
  br label %if.then75

if.then69:                                        ; preds = %if.end64
  %arrayidx.le = getelementptr inbounds %struct.ida_bitmap, %struct.ida_bitmap* %bitmap.0227, i64 0, i32 0, i64 0
  store i64 0, i64* %arrayidx.le, align 8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then54, %if.then69
  %bit.4.ph = phi i32 [ %bit.3, %if.then69 ], [ %conv42.le, %if.then54 ]
  %bitmap.1.ph = phi %struct.ida_bitmap* [ %bitmap.0227, %if.then69 ], [ %10, %if.then54 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10
  br label %out

cleanup:                                          ; preds = %if.then39
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10
  br label %nospc

if.end73:                                         ; preds = %if.end32
  %tobool74.not = icmp eq i8* %call18, null
  br i1 %tobool74.not, label %if.else, label %if.then75

if.then75:                                        ; preds = %if.end73.thread, %if.end73
  %conv77.pre-phi = phi i64 [ %.pre, %if.end73.thread ], [ %conv27, %if.end73 ]
  %bitmap.2244 = phi %struct.ida_bitmap* [ %bitmap.0227, %if.end73.thread ], [ %7, %if.end73 ]
  %arraydecay = getelementptr inbounds %struct.ida_bitmap, %struct.ida_bitmap* %bitmap.2244, i64 0, i32 0, i64 0
  %call78 = call fastcc i64 @find_next_zero_bit(i64* noundef %arraydecay, i64 noundef 1024, i64 noundef %conv77.pre-phi) #12
  %15 = load i64, i64* %xa_index, align 8
  %mul81 = shl i64 %15, 10
  %conv82 = and i64 %call78, 4294967295
  %add83 = add i64 %mul81, %conv82
  %cmp85 = icmp ugt i64 %add83, %conv16
  br i1 %cmp85, label %nospc, label %if.end88

if.end88:                                         ; preds = %if.then75
  %conv79 = trunc i64 %call78 to i32
  %cmp90 = icmp eq i64 %conv82, 1024
  br i1 %cmp90, label %next, label %if.end93

if.end93:                                         ; preds = %if.end88
  %conv79.le = trunc i64 %call78 to i32
  %rem.i = and i64 %call78, 63
  %shl.i = shl nuw i64 1, %rem.i
  %div.i = lshr i64 %call78, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr %struct.ida_bitmap, %struct.ida_bitmap* %bitmap.2244, i64 0, i32 0, i64 %idx.ext.i
  %16 = load i64, i64* %add.ptr.i, align 8
  %or.i = or i64 %16, %shl.i
  store i64 %or.i, i64* %add.ptr.i, align 8
  %call98 = call fastcc i1 @bitmap_full(i64* noundef %arraydecay) #12
  br i1 %call98, label %if.then99, label %out

if.then99:                                        ; preds = %if.end93
  call void @xas_clear_mark(%struct.xa_state* noundef nonnull %xas, i32 noundef 0) #11
  br label %out

if.else:                                          ; preds = %if.end73
  %cmp101 = icmp ult i32 %spec.select, 63
  br i1 %cmp101, label %if.then103, label %if.else107

if.then103:                                       ; preds = %if.else
  %conv27.le = zext i32 %spec.select to i64
  %shl105 = shl nuw nsw i64 1, %conv27.le
  %call106 = call fastcc i8* @xa_mk_value(i64 noundef %shl105) #12
  %17 = bitcast i8* %call106 to %struct.ida_bitmap*
  br label %if.end117

if.else107:                                       ; preds = %if.else
  br i1 %tobool.not, label %if.end111, label %if.end114

if.end111:                                        ; preds = %if.else107
  %call110 = call fastcc i8* @kzalloc(i32 noundef 2048) #12
  %18 = bitcast i8* %call110 to %struct.ida_bitmap*
  %tobool112.not = icmp eq i8* %call110, null
  br i1 %tobool112.not, label %alloc145, label %if.end114

if.end114:                                        ; preds = %if.else107, %if.end111
  %bitmap.3247 = phi %struct.ida_bitmap* [ %18, %if.end111 ], [ %alloc.0.ph, %if.else107 ]
  %rem.i215 = and i32 %spec.select, 63
  %sh_prom.i216 = zext i32 %rem.i215 to i64
  %shl.i217 = shl nuw i64 1, %sh_prom.i216
  %div.i218 = lshr i32 %spec.select, 6
  %idx.ext.i219 = zext i32 %div.i218 to i64
  %add.ptr.i220 = getelementptr %struct.ida_bitmap, %struct.ida_bitmap* %bitmap.3247, i64 0, i32 0, i64 %idx.ext.i219
  %19 = load i64, i64* %add.ptr.i220, align 8
  %or.i221 = or i64 %19, %shl.i217
  store i64 %or.i221, i64* %add.ptr.i220, align 8
  br label %if.end117

if.end117:                                        ; preds = %if.end114, %if.then103
  %bitmap.4 = phi %struct.ida_bitmap* [ %17, %if.then103 ], [ %bitmap.3247, %if.end114 ]
  %20 = bitcast %struct.ida_bitmap* %bitmap.4 to i8*
  %call118 = call i8* @xas_store(%struct.xa_state* noundef nonnull %xas, i8* noundef %20) #11
  br label %out

out:                                              ; preds = %cleanup.thread, %if.end117, %if.then99, %if.end93
  %bit.6 = phi i32 [ %conv79.le, %if.then99 ], [ %conv79.le, %if.end93 ], [ %spec.select, %if.end117 ], [ %bit.4.ph, %cleanup.thread ]
  %bitmap.5 = phi %struct.ida_bitmap* [ %bitmap.2244, %if.then99 ], [ %bitmap.2244, %if.end93 ], [ %bitmap.4, %if.end117 ], [ %bitmap.1.ph, %cleanup.thread ]
  %21 = load %struct.xarray*, %struct.xarray** %xa, align 8
  %rlock.i222 = getelementptr inbounds %struct.xarray, %struct.xarray* %21, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i222, i64 noundef %call13) #11
  %call122 = call i1 @xas_nomem(%struct.xa_state* noundef nonnull %xas, i32 noundef %gfp) #11
  br i1 %call122, label %if.then123, label %if.end130

if.then123:                                       ; preds = %out
  store i64 %div, i64* %xa_index, align 8
  br label %retry

if.end130:                                        ; preds = %out
  %cmp131.not = icmp eq %struct.ida_bitmap* %bitmap.5, %alloc.0.ph
  br i1 %cmp131.not, label %if.end134, label %if.then133

if.then133:                                       ; preds = %if.end130
  %22 = bitcast %struct.ida_bitmap* %alloc.0.ph to i8*
  call void @kfree(i8* noundef %22) #11
  br label %if.end134

if.end134:                                        ; preds = %if.then133, %if.end130
  %call135 = call fastcc i32 @xas_error(%struct.xa_state* noundef nonnull %xas) #12
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.end139, label %cleanup159

if.end139:                                        ; preds = %if.end134
  %23 = load i64, i64* %xa_index, align 8
  %.tr = trunc i64 %23 to i32
  %24 = shl i32 %.tr, 10
  %conv144 = add i32 %24, %bit.6
  br label %cleanup159

alloc145:                                         ; preds = %if.end111, %cleanup.thread235
  %25 = load %struct.xarray*, %struct.xarray** %xa, align 8
  %rlock.i223 = getelementptr inbounds %struct.xarray, %struct.xarray* %25, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i223, i64 noundef %call13) #11
  %call148 = call fastcc i8* @kzalloc(i32 noundef %gfp) #12
  %tobool149.not = icmp eq i8* %call148, null
  br i1 %tobool149.not, label %cleanup159, label %if.end151

if.end151:                                        ; preds = %alloc145
  %26 = bitcast i8* %call148 to %struct.ida_bitmap*
  call fastcc void @xas_set(%struct.xa_state* noundef nonnull %xas, i64 noundef %div) #12
  br label %retry.outer

nospc:                                            ; preds = %if.then75, %next, %cleanup
  %27 = load %struct.xarray*, %struct.xarray** %xa, align 8
  %rlock.i224 = getelementptr inbounds %struct.xarray, %struct.xarray* %27, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i224, i64 noundef %call13) #11
  %28 = bitcast %struct.ida_bitmap* %alloc.0.ph to i8*
  call void @kfree(i8* noundef %28) #11
  br label %cleanup159

cleanup159:                                       ; preds = %alloc145, %if.end134, %entry, %nospc, %if.end139
  %retval.0 = phi i32 [ -28, %nospc ], [ %conv144, %if.end139 ], [ -28, %entry ], [ %call135, %if.end134 ], [ -12, %alloc145 ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #12
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #12
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @xas_find_marked(%struct.xa_state* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xa_is_value(i8* noundef %entry1) unnamed_addr #4 {
entry:
  %0 = ptrtoint i8* %entry1 to i64
  %and = and i64 %0, 1
  %tobool = icmp ne i64 %and, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @xa_to_value(i8* noundef %entry1) unnamed_addr #4 {
entry:
  %0 = ptrtoint i8* %entry1 to i64
  %shr = lshr i64 %0, 1
  ret i64 %shr
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_next_zero_bit(i64* noundef %addr, i64 noundef %size, i64 noundef %offset) unnamed_addr #0 {
entry:
  %call13 = call i64 @_find_next_bit(i64* noundef %addr, i64* noundef null, i64 noundef %size, i64 noundef %offset, i64 noundef -1, i64 noundef 0) #11
  ret i64 %call13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @xas_store(%struct.xa_state* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @xa_mk_value(i64 noundef %v) unnamed_addr #0 {
entry:
  %cmp = icmp slt i64 %v, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/xarray.h\22; .popsection; .long 14472b - 14470b; .short 54; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %shl = shl i64 %v, 1
  %or = or i64 %shl, 1
  %0 = inttoptr i64 %or to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc(i32 noundef %flags) unnamed_addr #0 {
entry:
  %and.i.i = and i32 %flags, 17
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %kmalloc.exit, label %if.end.i.i, !prof !15

if.end.i.i:                                       ; preds = %entry
  %and2.i.i = and i32 %flags, 1
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  %..i.i = select i1 %tobool3.not.i.i, i64 1, i64 2
  br label %kmalloc.exit

kmalloc.exit:                                     ; preds = %entry, %if.end.i.i
  %retval.0.i.i = phi i64 [ 0, %entry ], [ %..i.i, %if.end.i.i ]
  %or = or i32 %flags, 256
  %arrayidx7.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %retval.0.i.i, i64 7
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef %or) #11
  ret i8* %call.i.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @xas_error(%struct.xa_state* nocapture noundef readonly %xas) unnamed_addr #6 {
entry:
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %0 = bitcast %struct.xa_node** %xa_node to i8**
  %1 = load i8*, i8** %0, align 8
  %call = call fastcc i32 @xa_err(i8* noundef %1) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @bitmap_full(i64* noundef %src) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @find_first_zero_bit(i64* noundef %src) #12
  %cmp5 = icmp eq i64 %call, 1024
  ret i1 %cmp5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xas_clear_mark(%struct.xa_state* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @xas_nomem(%struct.xa_state* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @xas_set(%struct.xa_state* nocapture noundef writeonly %xas, i64 noundef %index) unnamed_addr #7 {
entry:
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  store i64 %index, i64* %xa_index, align 8
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* inttoptr (i64 3 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @ida_free(%struct.ida* noundef %ida, i32 noundef %id) local_unnamed_addr #0 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #10
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !7
  store i64 0, i64* %2, align 8, !annotation !7
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %xa1 = getelementptr inbounds %struct.ida, %struct.ida* %ida, i64 0, i32 0
  store %struct.xarray* %xa1, %struct.xarray** %xa, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %3 = lshr i32 %id, 10
  %div = zext i32 %3 to i64
  store i64 %div, i64* %xa_index, align 8
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
  %rem = and i32 %id, 1023
  %cmp = icmp slt i32 %id, 0
  br i1 %cmp, label %do.body7, label %do.body14, !prof !8

do.body7:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/idr.c\22; .popsection; .long 14472b - 14470b; .short 494; .short 0; .popsection; 14471: brk 0x800", ""() #10, !srcloc !16
  unreachable

do.body14:                                        ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.ida, %struct.ida* %ida, i64 0, i32 0, i32 0, i32 0, i32 0
  %call18 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #12
  %call23 = call i8* @xas_load(%struct.xa_state* noundef nonnull %xas) #11
  %call24 = call fastcc i1 @xa_is_value(i8* noundef %call23) #12
  br i1 %call24, label %if.then25, label %if.else

if.then25:                                        ; preds = %do.body14
  %call26 = call fastcc i64 @xa_to_value(i8* noundef %call23) #12
  %cmp27 = icmp ugt i32 %rem, 62
  br i1 %cmp27, label %err, label %if.end30

if.end30:                                         ; preds = %if.then25
  %sh_prom = zext i32 %rem to i64
  %shl = shl nuw nsw i64 1, %sh_prom
  %and = and i64 %call26, %shl
  %tobool31.not = icmp eq i64 %and, 0
  br i1 %tobool31.not, label %err, label %if.end33

if.end33:                                         ; preds = %if.end30
  %neg = xor i64 %shl, -1
  %and36 = and i64 %call26, %neg
  %tobool37.not = icmp eq i64 %and36, 0
  br i1 %tobool37.not, label %if.end55.sink.split, label %cleanup.thread121

cleanup.thread121:                                ; preds = %if.end33
  %call40 = call fastcc i8* @xa_mk_value(i64 noundef %and36) #12
  br label %if.end55.sink.split

if.else:                                          ; preds = %do.body14
  %arraydecay = bitcast i8* %call23 to i64*
  %div.i = lshr i32 %rem, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr i64, i64* %arraydecay, i64 %idxprom.i
  %4 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %id, 63
  %sh_prom.i = zext i32 %and.i to i64
  %5 = shl nuw i64 1, %sh_prom.i
  %6 = and i64 %4, %5
  %tobool44.not = icmp eq i64 %6, 0
  br i1 %tobool44.not, label %err, label %if.end46

if.end46:                                         ; preds = %if.else
  %neg.i = xor i64 %5, -1
  %and.i117 = and i64 %4, %neg.i
  store i64 %and.i117, i64* %arrayidx.i, align 8
  call void @xas_set_mark(%struct.xa_state* noundef nonnull %xas, i32 noundef 0) #11
  %call51 = call fastcc i1 @bitmap_empty(i64* noundef %arraydecay) #12
  br i1 %call51, label %if.then52, label %if.end55

if.then52:                                        ; preds = %if.end46
  call void @kfree(i8* noundef %call23) #11
  br label %if.end55.sink.split

if.end55.sink.split:                              ; preds = %if.then52, %if.end33, %cleanup.thread121
  %call40.sink = phi i8* [ %call40, %cleanup.thread121 ], [ null, %if.end33 ], [ null, %if.then52 ]
  %call41 = call i8* @xas_store(%struct.xa_state* noundef nonnull %xas, i8* noundef %call40.sink) #11
  br label %if.end55

if.end55:                                         ; preds = %if.end55.sink.split, %if.end46
  %7 = load %struct.xarray*, %struct.xarray** %xa, align 8
  %rlock.i118 = getelementptr inbounds %struct.xarray, %struct.xarray* %7, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i118, i64 noundef %call18) #11
  br label %cleanup87

err:                                              ; preds = %if.end30, %if.then25, %if.else
  %8 = load %struct.xarray*, %struct.xarray** %xa, align 8
  %rlock.i119 = getelementptr inbounds %struct.xarray, %struct.xarray* %8, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i119, i64 noundef %call18) #11
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 noundef %id) #11
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/idr.c\22; .popsection; .long 14472b - 14470b; .short 524; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !17
  br label %cleanup87

cleanup87:                                        ; preds = %err, %if.end55
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @xas_load(%struct.xa_state* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xas_set_mark(%struct.xa_state* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @bitmap_empty(i64* noundef %src) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @find_first_bit(i64* noundef %src) #12
  %cmp5 = icmp eq i64 %call, 1024
  ret i1 %cmp5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @ida_destroy(%struct.ida* noundef %ida) local_unnamed_addr #0 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #10
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !7
  store i64 0, i64* %2, align 8, !annotation !7
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %xa1 = getelementptr inbounds %struct.ida, %struct.ida* %ida, i64 0, i32 0
  store %struct.xarray* %xa1, %struct.xarray** %xa, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  store i64 0, i64* %xa_index, align 8
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
  %rlock.i = getelementptr inbounds %struct.ida, %struct.ida* %ida, i64 0, i32 0, i32 0, i32 0, i32 0
  %call4 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #12
  %call7 = call i8* @xas_find(%struct.xa_state* noundef nonnull %xas, i64 noundef -1) #11
  %tobool.not18 = icmp eq i8* %call7, null
  br i1 %tobool.not18, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %if.end
  %bitmap.0.in19 = phi i8* [ %call10, %if.end ], [ %call7, %entry ]
  %call8 = call fastcc i1 @xa_is_value(i8* noundef nonnull %bitmap.0.in19) #12
  br i1 %call8, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call void @kfree(i8* noundef nonnull %bitmap.0.in19) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %call9 = call i8* @xas_store(%struct.xa_state* noundef nonnull %xas, i8* noundef null) #11
  %call10 = call fastcc i8* @xas_next_entry(%struct.xa_state* noundef nonnull %xas) #12
  %tobool.not = icmp eq i8* %call10, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end, %entry
  %3 = load %struct.xarray*, %struct.xarray** %xa, align 8
  %rlock.i17 = getelementptr inbounds %struct.xarray, %struct.xarray* %3, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i17, i64 noundef %call4) #11
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @xas_find(%struct.xa_state* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @xas_next_entry(%struct.xa_state* noundef %xas) unnamed_addr #0 {
entry:
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %0 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %call = call fastcc i1 @xas_not_node(%struct.xa_node* noundef %0) #12
  br i1 %call, label %cleanup.sink.split, label %lor.lhs.false, !prof !8

lor.lhs.false:                                    ; preds = %entry
  %shift = getelementptr inbounds %struct.xa_node, %struct.xa_node* %0, i64 0, i32 0
  %1 = load i8, i8* %shift, align 8
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.rhs, label %cleanup.sink.split, !prof !15

lor.rhs:                                          ; preds = %lor.lhs.false
  %xa_offset = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  %2 = load i8, i8* %xa_offset, align 2
  %conv2 = zext i8 %2 to i64
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %3 = load i64, i64* %xa_index, align 8
  %and = and i64 %3, 63
  %cmp.not = icmp eq i64 %and, %conv2
  br i1 %cmp.not, label %do.body, label %cleanup.sink.split, !prof !15

do.body:                                          ; preds = %lor.rhs, %if.end48
  %4 = phi i8 [ %inc, %if.end48 ], [ %2, %lor.rhs ]
  %5 = phi i64 [ %inc51, %if.end48 ], [ %3, %lor.rhs ]
  %cmp9 = icmp eq i64 %5, -1
  %cmp23 = icmp eq i8 %4, 63
  %or.cond = select i1 %cmp9, i1 true, i1 %cmp23
  br i1 %or.cond, label %cleanup.sink.split, label %if.end34, !prof !18

if.end34:                                         ; preds = %do.body
  %conv36 = zext i8 %4 to i32
  %add = add nuw nsw i32 %conv36, 1
  %call37 = call fastcc i8* @xa_entry(%struct.xa_node* noundef %0, i32 noundef %add) #12
  %call38 = call fastcc i1 @xa_is_internal(i8* noundef %call37) #12
  br i1 %call38, label %cleanup.sink.split, label %if.end48, !prof !8

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
  %call47 = call i8* @xas_find(%struct.xa_state* noundef %xas, i64 noundef -1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %cleanup.sink.split
  %retval.0 = phi i8* [ %call47, %cleanup.sink.split ], [ %call37, %if.end48 ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @__radix_tree_iter_add(%struct.radix_tree_iter* nocapture noundef readonly %iter) unnamed_addr #6 {
entry:
  %index = getelementptr inbounds %struct.radix_tree_iter, %struct.radix_tree_iter* %iter, i64 0, i32 0
  %0 = load i64, i64* %index, align 8
  %add = add i64 %0, 1
  ret i64 %add
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc nonnull i8* @xa_mk_internal(i64 noundef %v) unnamed_addr #4 {
entry:
  %shl = shl i64 %v, 2
  %or = or i64 %shl, 2
  %0 = inttoptr i64 %or to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #12
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #12
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #11
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !15

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #11
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #10, !srcloc !19
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #10, !srcloc !20
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #12
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !8

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #10, !srcloc !21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #8 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #10, !srcloc !22
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_next_bit(i64* noundef, i64* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @xa_err(i8* noundef %entry1) unnamed_addr #4 {
entry:
  %call = call fastcc i1 @xa_is_err(i8* noundef %entry1) #12
  %0 = ptrtoint i8* %entry1 to i64
  %1 = lshr i64 %0, 2
  %conv = trunc i64 %1 to i32
  %retval.0 = select i1 %call, i32 %conv, i32 0
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xa_is_err(i8* noundef %entry1) unnamed_addr #4 {
entry:
  %call = call fastcc i1 @xa_is_internal(i8* noundef %entry1) #12
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %call2 = call fastcc i8* @xa_mk_internal(i64 noundef -4095) #12
  %cmp = icmp ule i8* %call2, %entry1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_first_zero_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %call6 = call i64 @_find_first_zero_bit(i64* noundef %addr, i64 noundef 1024) #11
  ret i64 %call6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_first_zero_bit(i64* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #12
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #12
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #10, !srcloc !24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #10, !srcloc !25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_first_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %call5 = call i64 @_find_first_bit(i64* noundef %addr, i64 noundef 1024) #11
  ret i64 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_first_bit(i64* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xas_not_node(%struct.xa_node* noundef %node) unnamed_addr #4 {
entry:
  %0 = ptrtoint %struct.xa_node* %node to i64
  %and = and i64 %0, 3
  %tobool = icmp ne i64 %and, 0
  %tobool1.not = icmp eq %struct.xa_node* %node, null
  %1 = or i1 %tobool1.not, %tobool
  ret i1 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i8* @xa_entry(%struct.xa_node* noundef %node, i32 noundef %offset) unnamed_addr #8 {
entry:
  %idxprom = zext i32 %offset to i64
  %arrayidx = getelementptr %struct.xa_node, %struct.xa_node* %node, i64 0, i32 7, i64 %idxprom
  %0 = load volatile i8*, i8** %arrayidx, align 8
  ret i8* %0
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #9

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"auto-init"}
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2150704815}
!10 = !{i64 2150707413}
!11 = !{i64 2150709690}
!12 = !{i64 2150716859}
!13 = !{i64 2149435070}
!14 = !{i64 2150545549}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2150721885}
!17 = !{i64 2150724756}
!18 = !{!"branch_weights", i32 4001, i32 4000000}
!19 = !{i64 2149185241, i64 2149185288, i64 2149185294, i64 2149185331, i64 2149185349, i64 2149186660, i64 2149186708, i64 2149186756, i64 2149186819, i64 2149186868, i64 2149185427, i64 2149185452, i64 2149185478, i64 2149185484, i64 2149186326, i64 2149186366, i64 2149186384, i64 2149186416, i64 2149186444, i64 2149186498, i64 2149186518, i64 2149186615, i64 2149185507, i64 2149185521, i64 2149185527, i64 2149185577, i64 2149185623, i64 2149185656}
!20 = !{i64 2149187420, i64 2149187467, i64 2149187473, i64 2149187510, i64 2149187528, i64 2149188471, i64 2149188519, i64 2149188567, i64 2149188630, i64 2149188679, i64 2149187606, i64 2149187631, i64 2149187657, i64 2149187663, i64 2149187700, i64 2149187706, i64 2149187756, i64 2149187802, i64 2149187835}
!21 = !{i64 2149179538, i64 2149179585, i64 2149179591, i64 2149179628, i64 2149179646, i64 2149180987, i64 2149181035, i64 2149181083, i64 2149181146, i64 2149181195, i64 2149179724, i64 2149179749, i64 2149179775, i64 2149179781, i64 2149180653, i64 2149180693, i64 2149180711, i64 2149180743, i64 2149180771, i64 2149180825, i64 2149180845, i64 2149180942, i64 2149179804, i64 2149179818, i64 2149179824, i64 2149179874, i64 2149179920, i64 2149179953}
!22 = !{i64 2147818296, i64 2147818329, i64 2147818382, i64 2147818441, i64 2147818475, i64 2147818530, i64 2147818559, i64 2147818579}
!23 = !{i64 2149460913}
!24 = !{i64 2149404212}
!25 = !{i64 2149191254, i64 2149191301, i64 2149191307, i64 2149191344, i64 2149191362, i64 2149192673, i64 2149192721, i64 2149192769, i64 2149192832, i64 2149192881, i64 2149191440, i64 2149191465, i64 2149191491, i64 2149191497, i64 2149192339, i64 2149192379, i64 2149192397, i64 2149192429, i64 2149192457, i64 2149192511, i64 2149192531, i64 2149192628, i64 2149191520, i64 2149191534, i64 2149191540, i64 2149191590, i64 2149191636, i64 2149191669}
