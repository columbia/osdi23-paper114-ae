; ModuleID = 'lib/generic-radix-tree.c'
source_filename = "lib/generic-radix-tree.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.__genradix = type { %struct.genradix_root* }
%struct.genradix_root = type opaque
%struct.genradix_node = type { %union.anon }
%union.anon = type { [512 x %struct.genradix_node*] }
%struct.genradix_iter = type { i64, i64 }

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local i8* @__genradix_ptr(%struct.__genradix* noundef %radix, i64 noundef %offset) local_unnamed_addr #0 {
entry:
  %root = getelementptr inbounds %struct.__genradix, %struct.__genradix* %radix, i64 0, i32 0
  %0 = load volatile %struct.genradix_root*, %struct.genradix_root** %root, align 8
  %call = call fastcc %struct.genradix_node* @genradix_root_to_node(%struct.genradix_root* noundef %0) #6
  %call1 = call fastcc i32 @genradix_root_to_depth(%struct.genradix_root* noundef %0) #6
  %call4 = call fastcc i32 @__ilog2_u64(i64 noundef %offset) #7
  %call7 = call fastcc i32 @genradix_depth_shift(i32 noundef %call1) #6
  %cmp8.not = icmp sge i32 %call4, %call7
  %tobool.not38 = icmp eq %struct.genradix_node* %call, null
  %or.cond = select i1 %cmp8.not, i1 true, i1 %tobool.not38
  br i1 %or.cond, label %cleanup, label %if.end10

if.end10:                                         ; preds = %entry, %if.end13
  %level.041 = phi i32 [ %dec, %if.end13 ], [ %call1, %entry ]
  %n.040 = phi %struct.genradix_node* [ %1, %if.end13 ], [ %call, %entry ]
  %offset.addr.039 = phi i64 [ %and, %if.end13 ], [ %offset, %entry ]
  %tobool11.not = icmp eq i32 %level.041, 0
  br i1 %tobool11.not, label %while.end, label %if.end13

if.end13:                                         ; preds = %if.end10
  %dec = add i32 %level.041, -1
  %call14 = call fastcc i32 @genradix_depth_shift(i32 noundef %dec) #6
  %sh_prom = zext i32 %call14 to i64
  %shr = lshr i64 %offset.addr.039, %sh_prom
  %arrayidx = getelementptr %struct.genradix_node, %struct.genradix_node* %n.040, i64 0, i32 0, i32 0, i64 %shr
  %1 = load %struct.genradix_node*, %struct.genradix_node** %arrayidx, align 8
  %call15 = call fastcc i64 @genradix_depth_size(i32 noundef %dec) #6
  %sub16 = add i64 %call15, -1
  %and = and i64 %sub16, %offset.addr.039
  %tobool.not = icmp eq %struct.genradix_node* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end10

while.end:                                        ; preds = %if.end10
  %data = bitcast %struct.genradix_node* %n.040 to [4096 x i8]*
  %arrayidx17 = getelementptr [4096 x i8], [4096 x i8]* %data, i64 0, i64 %offset.addr.039
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry, %while.end
  %retval.0 = phi i8* [ %arrayidx17, %while.end ], [ null, %entry ], [ null, %if.end13 ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.genradix_node* @genradix_root_to_node(%struct.genradix_root* noundef %r) unnamed_addr #1 {
entry:
  %0 = ptrtoint %struct.genradix_root* %r to i64
  %and = and i64 %0, -8
  %1 = inttoptr i64 %and to %struct.genradix_node*
  ret %struct.genradix_node* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @genradix_root_to_depth(%struct.genradix_root* noundef %r) unnamed_addr #1 {
entry:
  %0 = ptrtoint %struct.genradix_root* %r to i64
  %1 = trunc i64 %0 to i32
  %conv = and i32 %1, 7
  ret i32 %conv
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #2

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__ilog2_u64(i64 noundef %n) unnamed_addr #3 {
entry:
  %cmp.i = icmp eq i64 %n, 0
  %0 = call i64 @llvm.ctlz.i64(i64 %n, i1 false) #8, !range !7
  %1 = trunc i64 %0 to i32
  %conv.i.op = sub nsw i32 63, %1
  %sub = select i1 %cmp.i, i32 -1, i32 %conv.i.op
  ret i32 %sub
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @genradix_depth_shift(i32 noundef %depth) unnamed_addr #1 {
entry:
  %mul = mul i32 %depth, 9
  %add = add i32 %mul, 12
  ret i32 %add
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @genradix_depth_size(i32 noundef %depth) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @genradix_depth_shift(i32 noundef %depth) #6
  %sh_prom = zext i32 %call to i64
  %shl = shl nuw i64 1, %sh_prom
  ret i64 %shl
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @__genradix_ptr_alloc(%struct.__genradix* noundef %radix, i64 noundef %offset, i32 noundef %gfp_mask) local_unnamed_addr #4 {
entry:
  %root = getelementptr inbounds %struct.__genradix, %struct.__genradix* %radix, i64 0, i32 0
  %0 = load volatile %struct.genradix_root*, %struct.genradix_root** %root, align 8
  %1 = bitcast %struct.__genradix* %radix to i8*
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %entry
  %new_node.0 = phi %struct.genradix_node* [ null, %entry ], [ %spec.select, %cleanup ]
  %v.0 = phi %struct.genradix_root* [ %0, %entry ], [ %spec.select126, %cleanup ]
  %call = call fastcc %struct.genradix_node* @genradix_root_to_node(%struct.genradix_root* noundef %v.0) #6
  %call1 = call fastcc i32 @genradix_root_to_depth(%struct.genradix_root* noundef %v.0) #6
  %tobool.not = icmp eq %struct.genradix_node* %call, null
  br i1 %tobool.not, label %if.end, label %cond.end5

cond.end5:                                        ; preds = %while.cond
  %call4 = call fastcc i32 @__ilog2_u64(i64 noundef %offset) #7
  %call7 = call fastcc i32 @genradix_depth_shift(i32 noundef %call1) #6
  %cmp8 = icmp slt i32 %call4, %call7
  br i1 %cmp8, label %while.cond30.preheader, label %if.end

if.end:                                           ; preds = %cond.end5, %while.cond
  %tobool9.not = icmp eq %struct.genradix_node* %new_node.0, null
  br i1 %tobool9.not, label %if.then10, label %cleanup

if.then10:                                        ; preds = %if.end
  %call11 = call fastcc %struct.genradix_node* @genradix_alloc_node(i32 noundef %gfp_mask) #6
  %tobool12.not = icmp eq %struct.genradix_node* %call11, null
  br i1 %tobool12.not, label %cleanup71, label %cleanup

cleanup:                                          ; preds = %if.end, %if.then10
  %new_node.1 = phi %struct.genradix_node* [ %new_node.0, %if.end ], [ %call11, %if.then10 ]
  %arrayidx = getelementptr inbounds %struct.genradix_node, %struct.genradix_node* %new_node.1, i64 0, i32 0, i32 0, i64 0
  store %struct.genradix_node* %call, %struct.genradix_node** %arrayidx, align 8
  %2 = ptrtoint %struct.genradix_node* %new_node.1 to i64
  %add = add i32 %call1, 1
  %3 = zext i32 %add to i64
  %conv = select i1 %tobool.not, i64 0, i64 %3
  %or = or i64 %conv, %2
  %4 = ptrtoint %struct.genradix_root* %v.0 to i64
  %call14.i = call fastcc i64 @__cmpxchg_case_rel_64(i8* noundef %1, i64 noundef %4, i64 noundef %or) #9
  %5 = inttoptr i64 %call14.i to %struct.genradix_root*
  %cmp25 = icmp eq %struct.genradix_root* %v.0, %5
  %6 = inttoptr i64 %or to %struct.genradix_root*
  %spec.select = select i1 %cmp25, %struct.genradix_node* null, %struct.genradix_node* %new_node.1
  %spec.select126 = select i1 %cmp25, %struct.genradix_root* %6, %struct.genradix_root* %5
  br label %while.cond

while.cond30.preheader:                           ; preds = %cond.end5
  %tobool31.not143 = icmp eq i32 %call1, 0
  br i1 %tobool31.not143, label %while.end66, label %while.body32

while.body32:                                     ; preds = %while.cond30.preheader, %cleanup63
  %dec147.in = phi i32 [ %dec147, %cleanup63 ], [ %call1, %while.cond30.preheader ]
  %offset.addr.0146 = phi i64 [ %and, %cleanup63 ], [ %offset, %while.cond30.preheader ]
  %n.0145 = phi %struct.genradix_node* [ %n.2, %cleanup63 ], [ %call, %while.cond30.preheader ]
  %new_node.4144 = phi %struct.genradix_node* [ %new_node.7, %cleanup63 ], [ %new_node.0, %while.cond30.preheader ]
  %dec147 = add i32 %dec147.in, -1
  %call34 = call fastcc i32 @genradix_depth_shift(i32 noundef %dec147) #6
  %sh_prom = zext i32 %call34 to i64
  %shr = lshr i64 %offset.addr.0146, %sh_prom
  %arrayidx35 = getelementptr %struct.genradix_node, %struct.genradix_node* %n.0145, i64 0, i32 0, i32 0, i64 %shr
  %call36 = call fastcc i64 @genradix_depth_size(i32 noundef %dec147) #6
  %sub37 = add i64 %call36, -1
  %and = and i64 %sub37, %offset.addr.0146
  %7 = load volatile %struct.genradix_node*, %struct.genradix_node** %arrayidx35, align 8
  %tobool42.not = icmp eq %struct.genradix_node* %7, null
  br i1 %tobool42.not, label %if.then43, label %cleanup63

if.then43:                                        ; preds = %while.body32
  %tobool44.not = icmp eq %struct.genradix_node* %new_node.4144, null
  br i1 %tobool44.not, label %if.then45, label %if.end50

if.then45:                                        ; preds = %if.then43
  %call46 = call fastcc %struct.genradix_node* @genradix_alloc_node(i32 noundef %gfp_mask) #6
  %tobool47.not = icmp eq %struct.genradix_node* %call46, null
  br i1 %tobool47.not, label %cleanup71, label %if.end50

if.end50:                                         ; preds = %if.then45, %if.then43
  %new_node.5 = phi %struct.genradix_node* [ %new_node.4144, %if.then43 ], [ %call46, %if.then45 ]
  %8 = bitcast %struct.genradix_node** %arrayidx35 to i8*
  %9 = ptrtoint %struct.genradix_node* %new_node.5 to i64
  %call14.i129 = call fastcc i64 @__cmpxchg_case_rel_64(i8* noundef %8, i64 noundef 0, i64 noundef %9) #9
  %10 = inttoptr i64 %call14.i129 to %struct.genradix_node*
  %tobool56.not = icmp eq i64 %call14.i129, 0
  %spec.select127 = select i1 %tobool56.not, %struct.genradix_node* null, %struct.genradix_node* %new_node.5
  %spec.select128 = select i1 %tobool56.not, %struct.genradix_node* %new_node.5, %struct.genradix_node* %10
  br label %cleanup63

cleanup63:                                        ; preds = %if.end50, %while.body32
  %new_node.7 = phi %struct.genradix_node* [ %new_node.4144, %while.body32 ], [ %spec.select127, %if.end50 ]
  %n.2 = phi %struct.genradix_node* [ %7, %while.body32 ], [ %spec.select128, %if.end50 ]
  %tobool31.not = icmp eq i32 %dec147, 0
  br i1 %tobool31.not, label %while.end66, label %while.body32

while.end66:                                      ; preds = %cleanup63, %while.cond30.preheader
  %new_node.4.lcssa = phi %struct.genradix_node* [ %new_node.0, %while.cond30.preheader ], [ %new_node.7, %cleanup63 ]
  %n.0.lcssa = phi %struct.genradix_node* [ %call, %while.cond30.preheader ], [ %n.2, %cleanup63 ]
  %offset.addr.0.lcssa = phi i64 [ %offset, %while.cond30.preheader ], [ %and, %cleanup63 ]
  %tobool67.not = icmp eq %struct.genradix_node* %new_node.4.lcssa, null
  br i1 %tobool67.not, label %if.end69, label %if.then68

if.then68:                                        ; preds = %while.end66
  call fastcc void @genradix_free_node(%struct.genradix_node* noundef nonnull %new_node.4.lcssa) #6
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %while.end66
  %data = bitcast %struct.genradix_node* %n.0.lcssa to [4096 x i8]*
  %arrayidx70 = getelementptr [4096 x i8], [4096 x i8]* %data, i64 0, i64 %offset.addr.0.lcssa
  br label %cleanup71

cleanup71:                                        ; preds = %if.then10, %if.then45, %if.end69
  %retval.4 = phi i8* [ %arrayidx70, %if.end69 ], [ null, %if.then45 ], [ null, %if.then10 ]
  ret i8* %retval.4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.genradix_node* @genradix_alloc_node(i32 noundef %gfp_mask) unnamed_addr #4 {
entry:
  %or = or i32 %gfp_mask, 256
  %call = call i64 @__get_free_pages(i32 noundef %or, i32 noundef 0) #9
  %0 = inttoptr i64 %call to %struct.genradix_node*
  ret %struct.genradix_node* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @genradix_free_node(%struct.genradix_node* noundef %node) unnamed_addr #4 {
entry:
  %0 = ptrtoint %struct.genradix_node* %node to i64
  call void @free_pages(i64 noundef %0, i32 noundef 0) #9
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local i8* @__genradix_iter_peek(%struct.genradix_iter* nocapture noundef %iter, %struct.__genradix* noundef %radix, i64 noundef %objs_per_page) local_unnamed_addr #0 {
entry:
  %root = getelementptr inbounds %struct.__genradix, %struct.__genradix* %radix, i64 0, i32 0
  %0 = load volatile %struct.genradix_root*, %struct.genradix_root** %root, align 8
  %tobool.not77 = icmp eq %struct.genradix_root* %0, null
  br i1 %tobool.not77, label %cleanup, label %if.end.lr.ph

if.end.lr.ph:                                     ; preds = %entry
  %offset = getelementptr inbounds %struct.genradix_iter, %struct.genradix_iter* %iter, i64 0, i32 0
  %pos = getelementptr inbounds %struct.genradix_iter, %struct.genradix_iter* %iter, i64 0, i32 1
  %.pre = load i64, i64* %offset, align 8
  br label %if.end

restart.loopexit:                                 ; preds = %while.body19
  %1 = load volatile %struct.genradix_root*, %struct.genradix_root** %root, align 8
  %tobool.not = icmp eq %struct.genradix_root* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.end.lr.ph, %restart.loopexit
  %2 = phi i64 [ %.pre, %if.end.lr.ph ], [ %and24, %restart.loopexit ]
  %3 = phi %struct.genradix_root* [ %0, %if.end.lr.ph ], [ %1, %restart.loopexit ]
  %call = call fastcc %struct.genradix_node* @genradix_root_to_node(%struct.genradix_root* noundef nonnull %3) #6
  %call1 = call fastcc i32 @genradix_root_to_depth(%struct.genradix_root* noundef nonnull %3) #6
  %call7 = call fastcc i32 @__ilog2_u64(i64 noundef %2) #7
  %call10 = call fastcc i32 @genradix_depth_shift(i32 noundef %call1) #6
  %cmp11.not = icmp slt i32 %call7, %call10
  br i1 %cmp11.not, label %while.cond.preheader, label %cleanup

while.cond.preheader:                             ; preds = %if.end
  %tobool14.not71 = icmp eq i32 %call1, 0
  br i1 %tobool14.not71, label %while.end36, label %while.body

while.cond.loopexit:                              ; preds = %while.cond17
  %tobool14.not = icmp eq i32 %dec, 0
  br i1 %tobool14.not, label %while.end36, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %while.cond.loopexit
  %4 = phi i64 [ %6, %while.cond.loopexit ], [ %2, %while.cond.preheader ]
  %level.073 = phi i32 [ %dec, %while.cond.loopexit ], [ %call1, %while.cond.preheader ]
  %n.072 = phi %struct.genradix_node* [ %7, %while.cond.loopexit ], [ %call, %while.cond.preheader ]
  %dec = add i32 %level.073, -1
  %call16 = call fastcc i32 @genradix_depth_shift(i32 noundef %dec) #6
  %sh_prom = zext i32 %call16 to i64
  %shr = lshr i64 %4, %sh_prom
  %5 = trunc i64 %shr to i32
  %conv = and i32 %5, 511
  br label %while.cond17

while.cond17:                                     ; preds = %while.body19, %while.body
  %6 = phi i64 [ %4, %while.body ], [ %and24, %while.body19 ]
  %i.0 = phi i32 [ %conv, %while.body ], [ %inc, %while.body19 ]
  %idxprom = zext i32 %i.0 to i64
  %arrayidx = getelementptr %struct.genradix_node, %struct.genradix_node* %n.072, i64 0, i32 0, i32 0, i64 %idxprom
  %7 = load %struct.genradix_node*, %struct.genradix_node** %arrayidx, align 8
  %tobool18.not = icmp eq %struct.genradix_node* %7, null
  br i1 %tobool18.not, label %while.body19, label %while.cond.loopexit

while.body19:                                     ; preds = %while.cond17
  %inc = add nuw nsw i32 %i.0, 1
  %call21 = call fastcc i64 @genradix_depth_size(i32 noundef %dec) #6
  %add = add i64 %call21, %6
  %neg = sub i64 0, %call21
  %and24 = and i64 %add, %neg
  store i64 %and24, i64* %offset, align 8
  %shr27 = lshr i64 %and24, 12
  %mul = mul i64 %shr27, %objs_per_page
  store i64 %mul, i64* %pos, align 8
  %cmp29 = icmp eq i32 %inc, 512
  br i1 %cmp29, label %restart.loopexit, label %while.cond17

while.end36:                                      ; preds = %while.cond.preheader, %while.cond.loopexit
  %8 = phi i64 [ %6, %while.cond.loopexit ], [ %2, %while.cond.preheader ]
  %n.0.lcssa = phi %struct.genradix_node* [ %7, %while.cond.loopexit ], [ %call, %while.cond.preheader ]
  %data = bitcast %struct.genradix_node* %n.0.lcssa to [4096 x i8]*
  %and38 = and i64 %8, 4095
  %arrayidx39 = getelementptr [4096 x i8], [4096 x i8]* %data, i64 0, i64 %and38
  br label %cleanup

cleanup:                                          ; preds = %restart.loopexit, %if.end, %entry, %while.end36
  %retval.0 = phi i8* [ %arrayidx39, %while.end36 ], [ null, %entry ], [ null, %if.end ], [ null, %restart.loopexit ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__genradix_prealloc(%struct.__genradix* noundef %radix, i64 noundef %size, i32 noundef %gfp_mask) local_unnamed_addr #4 {
entry:
  %cmp4.not = icmp eq i64 %size, 0
  br i1 %cmp4.not, label %cleanup, label %for.body

for.cond:                                         ; preds = %for.body
  %cmp = icmp ult i64 %add, %size
  br i1 %cmp, label %for.body, label %cleanup

for.body:                                         ; preds = %entry, %for.cond
  %offset.05 = phi i64 [ %add, %for.cond ], [ 0, %entry ]
  %call = call i8* @__genradix_ptr_alloc(%struct.__genradix* noundef %radix, i64 noundef %offset.05, i32 noundef %gfp_mask) #6
  %tobool.not = icmp eq i8* %call, null
  %add = add i64 %offset.05, 4096
  br i1 %tobool.not, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.body, %for.cond, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %for.cond ], [ -12, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__genradix_free(%struct.__genradix* noundef %radix) local_unnamed_addr #4 {
entry:
  %0 = bitcast %struct.__genradix* %radix to i8*
  %call11.i = call fastcc i64 @__xchg_case_mb_64(i8* noundef %0) #9
  %1 = inttoptr i64 %call11.i to %struct.genradix_root*
  %call2 = call fastcc %struct.genradix_node* @genradix_root_to_node(%struct.genradix_root* noundef %1) #6
  %call3 = call fastcc i32 @genradix_root_to_depth(%struct.genradix_root* noundef %1) #6, !range !8
  call fastcc void @genradix_free_recurse(%struct.genradix_node* noundef %call2, i32 noundef %call3) #6
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @genradix_free_recurse(%struct.genradix_node* noundef %n, i32 noundef %level) unnamed_addr #4 {
entry:
  %tobool.not = icmp eq i32 %level, 0
  br i1 %tobool.not, label %if.end7, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %sub = add i32 %level, -1
  br label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr %struct.genradix_node, %struct.genradix_node* %n, i64 0, i32 0, i32 0, i64 %indvars.iv
  %0 = load %struct.genradix_node*, %struct.genradix_node** %arrayidx, align 8
  %tobool2.not = icmp eq %struct.genradix_node* %0, null
  br i1 %tobool2.not, label %for.inc, label %if.then3

if.then3:                                         ; preds = %for.body
  call fastcc void @genradix_free_recurse(%struct.genradix_node* noundef nonnull %0, i32 noundef %sub) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 512
  br i1 %exitcond.not, label %if.end7, label %for.body

if.end7:                                          ; preds = %for.inc, %entry
  call fastcc void @genradix_free_node(%struct.genradix_node* noundef %n) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_rel_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #4 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_rel_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) #6
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_rel_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #4 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stlxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Lr,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 %old, i64 %new, i64* elementtype(i64) %0) #8, !srcloc !9
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__xchg_case_mb_64(i8* noundef %ptr) unnamed_addr #4 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09stlxr\09${1:w}, $3, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 0, i64* elementtype(i64) %0) #8, !srcloc !10
  %asmresult = extractvalue { i64, i64 } %1, 0
  ret i64 %asmresult
}

attributes #0 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 0, i64 65}
!8 = !{i32 0, i32 8}
!9 = !{i64 2147831775, i64 2147831808, i64 2147831859, i64 2147831915, i64 2147831948, i64 2147832003, i64 2147832032, i64 2147832052}
!10 = !{i64 2147858533, i64 2147858565, i64 2147858609, i64 2147858656, i64 2147858682}
