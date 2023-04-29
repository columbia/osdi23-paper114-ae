; ModuleID = 'lib/fdt_ro.c'
source_filename = "lib/fdt_ro.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.fdt_reserve_entry = type { i64, i64 }
%struct.fdt_property = type { i32, i32, i32, [0 x i8] }

@.str = private unnamed_addr constant [8 x i8] c"phandle\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"linux,phandle\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"/aliases\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @fdt_get_string(i8* noundef %fdt, i32 noundef %stroffset, i32* noundef writeonly %lenp) local_unnamed_addr #0 {
entry:
  %call7 = call i32 @fdt_ro_probe_(i8* noundef %fdt) #8
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %fail, label %if.end10

if.end10:                                         ; preds = %entry
  %off_dt_strings11 = getelementptr inbounds i8, i8* %fdt, i64 12
  %0 = bitcast i8* %off_dt_strings11 to i32*
  %call12 = call fastcc i32 @fdt32_ld(i32* noundef %0) #9
  %add = add i32 %call12, %stroffset
  %cmp13.not = icmp ugt i32 %call7, %add
  br i1 %cmp13.not, label %if.end16, label %fail

if.end16:                                         ; preds = %if.end10
  %sub = sub i32 %call7, %add
  %magic = bitcast i8* %fdt to i32*
  %call18 = call fastcc i32 @fdt32_ld(i32* noundef %magic) #9
  switch i32 %call18, label %fail [
    i32 -804389139, label %if.then21
    i32 804389138, label %if.then54
  ]

if.then21:                                        ; preds = %if.end16
  %cmp22 = icmp slt i32 %stroffset, 0
  br i1 %cmp22, label %fail, label %if.end25

if.end25:                                         ; preds = %if.then21
  %version = getelementptr inbounds i8, i8* %fdt, i64 20
  %1 = bitcast i8* %version to i32*
  %call28 = call fastcc i32 @fdt32_ld(i32* noundef %1) #9
  %cmp29 = icmp ugt i32 %call28, 16
  br i1 %cmp29, label %if.then31, label %if.end73

if.then31:                                        ; preds = %if.end25
  %size_dt_strings = getelementptr inbounds i8, i8* %fdt, i64 32
  %2 = bitcast i8* %size_dt_strings to i32*
  %call32 = call fastcc i32 @fdt32_ld(i32* noundef %2) #9
  %cmp33.not = icmp ugt i32 %call32, %stroffset
  br i1 %cmp33.not, label %if.end36, label %fail

if.end36:                                         ; preds = %if.then31
  %sub39 = sub i32 %call32, %stroffset
  %3 = icmp ult i32 %sub39, %sub
  %spec.select141143 = select i1 %3, i32 %sub39, i32 %sub
  br label %if.end73

if.then54:                                        ; preds = %if.end16
  %sub55 = sub i32 0, %stroffset
  %cmp56 = icmp sgt i32 %stroffset, -1
  br i1 %cmp56, label %fail, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %if.then54
  %size_dt_strings59 = getelementptr inbounds i8, i8* %fdt, i64 32
  %4 = bitcast i8* %size_dt_strings59 to i32*
  %call60 = call fastcc i32 @fdt32_ld(i32* noundef %4) #9
  %cmp61 = icmp ult i32 %call60, %sub55
  br i1 %cmp61, label %fail, label %cleanup

cleanup:                                          ; preds = %lor.lhs.false58
  %5 = icmp ult i32 %sub, %sub55
  %spec.select142 = select i1 %5, i32 %sub, i32 %sub55
  br label %if.end73

if.end73:                                         ; preds = %if.end36, %cleanup, %if.end25
  %len.2.in = phi i32 [ %sub, %if.end25 ], [ %spec.select142, %cleanup ], [ %spec.select141143, %if.end36 ]
  %len.2 = zext i32 %len.2.in to i64
  %idx.ext74 = zext i32 %add to i64
  %add.ptr75 = getelementptr i8, i8* %fdt, i64 %idx.ext74
  %call76 = call i8* @memchr(i8* noundef %add.ptr75, i32 noundef 0, i64 noundef %len.2) #8
  %tobool77.not = icmp eq i8* %call76, null
  br i1 %tobool77.not, label %fail, label %if.end79

if.end79:                                         ; preds = %if.end73
  %tobool80.not = icmp eq i32* %lenp, null
  br i1 %tobool80.not, label %cleanup87, label %if.then81

if.then81:                                        ; preds = %if.end79
  %sub.ptr.lhs.cast = ptrtoint i8* %call76 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %add.ptr75 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv82 = trunc i64 %sub.ptr.sub to i32
  br label %cleanup87.sink.split

fail:                                             ; preds = %if.end16, %if.then54, %lor.lhs.false58, %if.end73, %if.then31, %if.then21, %if.end10, %entry
  %err.0 = phi i32 [ %call7, %entry ], [ -4, %if.end10 ], [ -4, %if.then21 ], [ -4, %if.then31 ], [ -8, %if.end73 ], [ -4, %lor.lhs.false58 ], [ -4, %if.then54 ], [ -13, %if.end16 ]
  %tobool84.not = icmp eq i32* %lenp, null
  br i1 %tobool84.not, label %cleanup87, label %cleanup87.sink.split

cleanup87.sink.split:                             ; preds = %fail, %if.then81
  %err.0.sink = phi i32 [ %conv82, %if.then81 ], [ %err.0, %fail ]
  %retval.0.ph = phi i8* [ %add.ptr75, %if.then81 ], [ null, %fail ]
  store i32 %err.0.sink, i32* %lenp, align 4
  br label %cleanup87

cleanup87:                                        ; preds = %cleanup87.sink.split, %fail, %if.end79
  %retval.0 = phi i8* [ %add.ptr75, %if.end79 ], [ null, %fail ], [ %retval.0.ph, %cleanup87.sink.split ]
  ret i8* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @fdt32_ld(i32* nocapture noundef readonly %p) unnamed_addr #2 {
entry:
  %0 = bitcast i32* %p to i8*
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 %conv, 24
  %arrayidx1 = getelementptr i8, i8* %0, i64 1
  %2 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %2 to i32
  %shl3 = shl nuw nsw i32 %conv2, 16
  %or = or i32 %shl3, %shl
  %arrayidx4 = getelementptr i8, i8* %0, i64 2
  %3 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %3 to i32
  %shl6 = shl nuw nsw i32 %conv5, 8
  %or7 = or i32 %or, %shl6
  %arrayidx8 = getelementptr i8, i8* %0, i64 3
  %4 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %4 to i32
  %or10 = or i32 %or7, %conv9
  ret i32 %or10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_ro_probe_(i8* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memchr(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @fdt_string(i8* noundef %fdt, i32 noundef %stroffset) local_unnamed_addr #0 {
entry:
  %call = call i8* @fdt_get_string(i8* noundef %fdt, i32 noundef %stroffset, i32* noundef null) #9
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_find_max_phandle(i8* noundef %fdt, i32* noundef writeonly %phandle) local_unnamed_addr #0 {
entry:
  %call31 = call i32 @fdt_next_node(i8* noundef %fdt, i32 noundef -1, i32* noundef null) #8
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then, label %cleanup

if.then:                                          ; preds = %cleanup, %entry
  %max.0.lcssa = phi i32 [ 0, %entry ], [ %spec.select, %cleanup ]
  %call.lcssa = phi i32 [ %call31, %entry ], [ %call, %cleanup ]
  %cmp1 = icmp eq i32 %call.lcssa, -1
  br i1 %cmp1, label %while.end, label %cleanup10

cleanup:                                          ; preds = %entry, %cleanup
  %call34 = phi i32 [ %call, %cleanup ], [ %call31, %entry ]
  %max.033 = phi i32 [ %spec.select, %cleanup ], [ 0, %entry ]
  %call4 = call i32 @fdt_get_phandle(i8* noundef %fdt, i32 noundef %call34) #9
  %cmp5 = icmp ugt i32 %call4, %max.033
  %spec.select = select i1 %cmp5, i32 %call4, i32 %max.033
  %call = call i32 @fdt_next_node(i8* noundef %fdt, i32 noundef %call34, i32* noundef null) #8
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %cleanup

while.end:                                        ; preds = %if.then
  %tobool.not = icmp eq i32* %phandle, null
  br i1 %tobool.not, label %cleanup10, label %if.then8

if.then8:                                         ; preds = %while.end
  store i32 %max.0.lcssa, i32* %phandle, align 4
  br label %cleanup10

cleanup10:                                        ; preds = %if.then, %while.end, %if.then8
  %retval.2 = phi i32 [ 0, %if.then8 ], [ 0, %while.end ], [ %call.lcssa, %if.then ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_next_node(i8* noundef, i32 noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_get_phandle(i8* noundef %fdt, i32 noundef %nodeoffset) local_unnamed_addr #0 {
entry:
  %len = alloca i32, align 4
  %0 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  store i32 0, i32* %len, align 4, !annotation !7
  %call = call i8* @fdt_getprop(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* noundef nonnull %len) #9
  %tobool = icmp eq i8* %call, null
  %1 = load i32, i32* %len, align 4
  %cmp = icmp ne i32 %1, 4
  %or.cond = select i1 %tobool, i1 true, i1 %cmp
  br i1 %or.cond, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %call2 = call i8* @fdt_getprop(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* noundef nonnull %len) #9
  %tobool3 = icmp eq i8* %call2, null
  %2 = load i32, i32* %len, align 4
  %cmp6 = icmp ne i32 %2, 4
  %or.cond12 = select i1 %tobool3, i1 true, i1 %cmp6
  br i1 %or.cond12, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.then, %entry
  %php.0.in = phi i8* [ %call2, %if.then ], [ %call, %entry ]
  %php.0 = bitcast i8* %php.0.in to i32*
  %call10 = call fastcc i32 @fdt32_ld_(i32* noundef %php.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end9
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_generate_phandle(i8* noundef %fdt, i32* noundef writeonly %phandle) local_unnamed_addr #0 {
entry:
  %max = alloca i32, align 4
  %0 = bitcast i32* %max to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  store i32 0, i32* %max, align 4, !annotation !7
  %call = call i32 @fdt_find_max_phandle(i8* noundef %fdt, i32* noundef nonnull %max) #9
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %max, align 4
  %cmp1 = icmp eq i32 %1, -2
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %tobool.not = icmp eq i32* %phandle, null
  br i1 %tobool.not, label %cleanup, label %if.then4

if.then4:                                         ; preds = %if.end3
  %add = add i32 %1, 1
  store i32 %add, i32* %phandle, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then4, %if.end, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ -17, %if.end ], [ 0, %if.then4 ], [ 0, %if.end3 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_get_mem_rsv(i8* noundef %fdt, i32 noundef %n, i64* nocapture noundef writeonly %address, i64* nocapture noundef writeonly %size) local_unnamed_addr #0 {
entry:
  %call = call i32 @fdt_ro_probe_(i8* noundef %fdt) #8
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup9, label %cleanup.cont

cleanup.cont:                                     ; preds = %entry
  %call1 = call fastcc %struct.fdt_reserve_entry* @fdt_mem_rsv(i8* noundef %fdt, i32 noundef %n) #9
  %tobool.not = icmp eq %struct.fdt_reserve_entry* %call1, null
  br i1 %tobool.not, label %cleanup9, label %if.end4

if.end4:                                          ; preds = %cleanup.cont
  %address5 = getelementptr inbounds %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %call1, i64 0, i32 0
  %call6 = call fastcc i64 @fdt64_ld_(i64* noundef %address5) #9
  store i64 %call6, i64* %address, align 8
  %size7 = getelementptr inbounds %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %call1, i64 0, i32 1
  %call8 = call fastcc i64 @fdt64_ld_(i64* noundef %size7) #9
  store i64 %call8, i64* %size, align 8
  br label %cleanup9

cleanup9:                                         ; preds = %cleanup.cont, %entry, %if.end4
  %retval.1 = phi i32 [ 0, %if.end4 ], [ %call, %entry ], [ -4, %cleanup.cont ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.fdt_reserve_entry* @fdt_mem_rsv(i8* noundef readonly %fdt, i32 noundef %n) unnamed_addr #2 {
entry:
  %mul = shl i32 %n, 4
  %off_mem_rsvmap = getelementptr inbounds i8, i8* %fdt, i64 16
  %0 = bitcast i8* %off_mem_rsvmap to i32*
  %call = call fastcc i32 @fdt32_ld(i32* noundef %0) #9
  %add = add i32 %call, %mul
  %cmp = icmp ult i32 %add, %call
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %conv7 = zext i32 %add to i64
  %totalsize = getelementptr inbounds i8, i8* %fdt, i64 4
  %1 = bitcast i8* %totalsize to i32*
  %call8 = call fastcc i32 @fdt32_ld(i32* noundef %1) #9
  %conv9 = zext i32 %call8 to i64
  %sub = add nsw i64 %conv9, -16
  %cmp10 = icmp ult i64 %sub, %conv7
  br i1 %cmp10, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end
  %call15 = call fastcc %struct.fdt_reserve_entry* @fdt_mem_rsv_(i8* noundef %fdt, i32 noundef %n) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end14
  %retval.0 = phi %struct.fdt_reserve_entry* [ %call15, %if.end14 ], [ null, %entry ], [ null, %if.end ]
  ret %struct.fdt_reserve_entry* %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @fdt64_ld_(i64* nocapture noundef readonly %p) unnamed_addr #4 {
entry:
  %0 = load i64, i64* %p, align 8
  %call = call fastcc i64 @__fswab64(i64 noundef %0) #11
  ret i64 %call
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readonly
define dso_local i32 @fdt_num_mem_rsv(i8* noundef readonly %fdt) local_unnamed_addr #5 {
entry:
  %call8 = call fastcc %struct.fdt_reserve_entry* @fdt_mem_rsv(i8* noundef %fdt, i32 noundef 0) #9
  %cmp.not9 = icmp eq %struct.fdt_reserve_entry* %call8, null
  br i1 %cmp.not9, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %call11 = phi %struct.fdt_reserve_entry* [ %call, %for.inc ], [ %call8, %entry ]
  %i.010 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %size = getelementptr inbounds %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %call11, i64 0, i32 1
  %call1 = call fastcc i64 @fdt64_ld_(i64* noundef %size) #9
  %cmp2 = icmp eq i64 %call1, 0
  br i1 %cmp2, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add i32 %i.010, 1
  %call = call fastcc %struct.fdt_reserve_entry* @fdt_mem_rsv(i8* noundef %fdt, i32 noundef %inc) #9
  %cmp.not = icmp eq %struct.fdt_reserve_entry* %call, null
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.body, %for.inc, %entry
  %retval.0 = phi i32 [ -8, %entry ], [ -8, %for.inc ], [ %i.010, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_subnode_offset_namelen(i8* noundef %fdt, i32 noundef %offset, i8* noundef %name, i32 noundef %namelen) local_unnamed_addr #0 {
entry:
  %depth = alloca i32, align 4
  %0 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  %call = call i32 @fdt_ro_probe_(i8* noundef %fdt) #8
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup11, label %cleanup.cont

cleanup.cont:                                     ; preds = %entry
  store i32 0, i32* %depth, align 4
  %cmp121 = icmp sgt i32 %offset, -1
  br i1 %cmp121, label %for.body, label %cleanup11

for.body:                                         ; preds = %cleanup.cont, %for.inc
  %offset.addr.022 = phi i32 [ %call7, %for.inc ], [ %offset, %cleanup.cont ]
  %1 = phi i32 [ %.pr, %for.inc ], [ 0, %cleanup.cont ]
  %cmp3 = icmp eq i32 %1, 1
  br i1 %cmp3, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %call4 = call fastcc i32 @fdt_nodename_eq_(i8* noundef %fdt, i32 noundef %offset.addr.022, i8* noundef %name, i32 noundef %namelen) #9
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %for.inc, label %cleanup11

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %call7 = call i32 @fdt_next_node(i8* noundef %fdt, i32 noundef %offset.addr.022, i32* noundef nonnull %depth) #8
  %.pr = load i32, i32* %depth, align 4
  %cmp1 = icmp sgt i32 %call7, -1
  %cmp2 = icmp sgt i32 %.pr, -1
  %2 = select i1 %cmp1, i1 %cmp2, i1 false
  br i1 %2, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.inc
  %phi.cmp = icmp sgt i32 %.pr, -1
  %phi.sel = select i1 %phi.cmp, i32 %call7, i32 -1
  br label %cleanup11

cleanup11:                                        ; preds = %land.lhs.true, %cleanup.cont, %for.end.loopexit, %entry
  %retval.1 = phi i32 [ %call, %entry ], [ %offset, %cleanup.cont ], [ %phi.sel, %for.end.loopexit ], [ %offset.addr.022, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @fdt_nodename_eq_(i8* noundef %fdt, i32 noundef %offset, i8* noundef %s, i32 noundef %len) unnamed_addr #0 {
entry:
  %olen = alloca i32, align 4
  %0 = bitcast i32* %olen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  store i32 0, i32* %olen, align 4, !annotation !7
  %call = call i8* @fdt_get_name(i8* noundef %fdt, i32 noundef %offset, i32* noundef nonnull %olen) #9
  %tobool.not = icmp eq i8* %call, null
  %1 = load i32, i32* %olen, align 4
  %cmp = icmp slt i32 %1, %len
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %conv = sext i32 %len to i64
  %call1 = call i32 @memcmp(i8* noundef nonnull %call, i8* noundef %s, i64 noundef %conv) #8
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end
  %arrayidx = getelementptr i8, i8* %call, i64 %conv
  %2 = load i8, i8* %arrayidx, align 1
  %cmp7 = icmp eq i8 %2, 0
  br i1 %cmp7, label %cleanup, label %if.else

if.else:                                          ; preds = %if.end5
  %call11 = call i8* @memchr(i8* noundef %s, i32 noundef 64, i64 noundef %conv) #8
  %tobool12.not = icmp eq i8* %call11, null
  br i1 %tobool12.not, label %land.lhs.true, label %if.else19

land.lhs.true:                                    ; preds = %if.else
  %3 = load i8, i8* %arrayidx, align 1
  %cmp16 = icmp eq i8 %3, 64
  br i1 %cmp16, label %cleanup, label %if.else19

if.else19:                                        ; preds = %land.lhs.true, %if.else
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end5, %if.end, %entry, %if.else19
  %retval.0 = phi i32 [ 0, %if.else19 ], [ 0, %entry ], [ 0, %if.end ], [ 1, %if.end5 ], [ 1, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_subnode_offset(i8* noundef %fdt, i32 noundef %parentoffset, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %call = call i64 @strlen(i8* noundef %name) #8
  %conv = trunc i64 %call to i32
  %call1 = call i32 @fdt_subnode_offset_namelen(i8* noundef %fdt, i32 noundef %parentoffset, i8* noundef %name, i32 noundef %conv) #9
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_path_offset_namelen(i8* noundef %fdt, i8* noundef %path, i32 noundef %namelen) local_unnamed_addr #0 {
entry:
  %idx.ext = sext i32 %namelen to i64
  %add.ptr = getelementptr i8, i8* %path, i64 %idx.ext
  %call = call i32 @fdt_ro_probe_(i8* noundef %fdt) #8
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup52, label %cleanup.cont

cleanup.cont:                                     ; preds = %entry
  %0 = load i8, i8* %path, align 1
  %cmp1.not = icmp eq i8 %0, 47
  br i1 %cmp1.not, label %if.end19, label %if.then3

if.then3:                                         ; preds = %cleanup.cont
  %sub.ptr.rhs.cast = ptrtoint i8* %path to i64
  %call4 = call i8* @memchr(i8* noundef %path, i32 noundef 47, i64 noundef %idx.ext) #8
  %tobool.not = icmp eq i8* %call4, null
  %spec.select = select i1 %tobool.not, i8* %add.ptr, i8* %call4
  %sub.ptr.lhs.cast7 = ptrtoint i8* %spec.select to i64
  %sub.ptr.sub9 = sub i64 %sub.ptr.lhs.cast7, %sub.ptr.rhs.cast
  %conv10 = trunc i64 %sub.ptr.sub9 to i32
  %call11 = call i8* @fdt_get_alias_namelen(i8* noundef %fdt, i8* noundef %path, i32 noundef %conv10) #9
  %tobool12.not = icmp eq i8* %call11, null
  br i1 %tobool12.not, label %cleanup52, label %cleanup16

cleanup16:                                        ; preds = %if.then3
  %call15 = call i32 @fdt_path_offset(i8* noundef %fdt, i8* noundef nonnull %call11) #9
  br label %if.end19

if.end19:                                         ; preds = %cleanup16, %cleanup.cont
  %p.1 = phi i8* [ %spec.select, %cleanup16 ], [ %path, %cleanup.cont ]
  %offset.1 = phi i32 [ %call15, %cleanup16 ], [ 0, %cleanup.cont ]
  %sub.ptr.lhs.cast32 = ptrtoint i8* %add.ptr to i64
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end19
  %p.2 = phi i8* [ %p.1, %if.end19 ], [ %spec.select96, %while.end ]
  %offset.2 = phi i32 [ %offset.1, %if.end19 ], [ %call43, %while.end ]
  %cmp20 = icmp ult i8* %p.2, %add.ptr
  br i1 %cmp20, label %while.cond23, label %cleanup52

while.cond23:                                     ; preds = %while.cond, %while.body27
  %p.3 = phi i8* [ %incdec.ptr, %while.body27 ], [ %p.2, %while.cond ]
  %1 = load i8, i8* %p.3, align 1
  %cmp25 = icmp eq i8 %1, 47
  br i1 %cmp25, label %while.body27, label %while.end

while.body27:                                     ; preds = %while.cond23
  %incdec.ptr = getelementptr i8, i8* %p.3, i64 1
  %cmp28 = icmp eq i8* %incdec.ptr, %add.ptr
  br i1 %cmp28, label %cleanup52, label %while.cond23

while.end:                                        ; preds = %while.cond23
  %sub.ptr.rhs.cast33 = ptrtoint i8* %p.3 to i64
  %sub.ptr.sub34 = sub i64 %sub.ptr.lhs.cast32, %sub.ptr.rhs.cast33
  %call35 = call i8* @memchr(i8* noundef %p.3, i32 noundef 47, i64 noundef %sub.ptr.sub34) #8
  %tobool36.not = icmp eq i8* %call35, null
  %spec.select96 = select i1 %tobool36.not, i8* %add.ptr, i8* %call35
  %sub.ptr.lhs.cast39 = ptrtoint i8* %spec.select96 to i64
  %sub.ptr.sub41 = sub i64 %sub.ptr.lhs.cast39, %sub.ptr.rhs.cast33
  %conv42 = trunc i64 %sub.ptr.sub41 to i32
  %call43 = call i32 @fdt_subnode_offset_namelen(i8* noundef %fdt, i32 noundef %offset.2, i8* noundef %p.3, i32 noundef %conv42) #9
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %cleanup52, label %while.cond

cleanup52:                                        ; preds = %while.end, %while.cond, %while.body27, %if.then3, %entry
  %retval.5 = phi i32 [ %call, %entry ], [ -5, %if.then3 ], [ %offset.2, %while.body27 ], [ %call43, %while.end ], [ %offset.2, %while.cond ]
  ret i32 %retval.5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @fdt_get_alias_namelen(i8* noundef %fdt, i8* noundef %name, i32 noundef %namelen) local_unnamed_addr #0 {
entry:
  %call = call i32 @fdt_path_offset(i8* noundef %fdt, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #9
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i8* @fdt_getprop_namelen(i8* noundef %fdt, i32 noundef %call, i8* noundef %name, i32 noundef %namelen, i32* noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call1, %if.end ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_path_offset(i8* noundef %fdt, i8* noundef %path) local_unnamed_addr #0 {
entry:
  %call = call i64 @strlen(i8* noundef %path) #8
  %conv = trunc i64 %call to i32
  %call1 = call i32 @fdt_path_offset_namelen(i8* noundef %fdt, i8* noundef %path, i32 noundef %conv) #9
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @fdt_get_name(i8* noundef %fdt, i32 noundef %nodeoffset, i32* noundef writeonly %len) local_unnamed_addr #0 {
entry:
  %call = call fastcc i8* @fdt_offset_ptr_(i8* noundef %fdt, i32 noundef %nodeoffset) #9
  %call1 = call i32 @fdt_ro_probe_(i8* noundef %fdt) #8
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %fail, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call i32 @fdt_check_node_offset_(i8* noundef %fdt, i32 noundef %nodeoffset) #8
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %fail, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %name = getelementptr inbounds i8, i8* %call, i64 4
  %version = getelementptr inbounds i8, i8* %fdt, i64 20
  %0 = bitcast i8* %version to i32*
  %call5 = call fastcc i32 @fdt32_ld(i32* noundef %0) #9
  %cmp6 = icmp ult i32 %call5, 16
  br i1 %cmp6, label %if.then7, label %if.end12

if.then7:                                         ; preds = %if.end
  %call8 = call i8* @strrchr(i8* noundef %name, i32 noundef 47) #8
  %cmp9 = icmp eq i8* %call8, null
  %add.ptr = getelementptr i8, i8* %call8, i64 1
  br i1 %cmp9, label %fail, label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end
  %nameptr.1 = phi i8* [ %add.ptr, %if.then7 ], [ %name, %if.end ]
  %tobool.not = icmp eq i32* %len, null
  br i1 %tobool.not, label %cleanup19, label %if.then13

if.then13:                                        ; preds = %if.end12
  %call14 = call i64 @strlen(i8* noundef %nameptr.1) #8
  %conv = trunc i64 %call14 to i32
  br label %cleanup19.sink.split

fail:                                             ; preds = %if.then7, %entry, %lor.lhs.false
  %err.1 = phi i32 [ %call1, %entry ], [ %call2, %lor.lhs.false ], [ -11, %if.then7 ]
  %tobool16.not = icmp eq i32* %len, null
  br i1 %tobool16.not, label %cleanup19, label %cleanup19.sink.split

cleanup19.sink.split:                             ; preds = %fail, %if.then13
  %err.1.sink = phi i32 [ %conv, %if.then13 ], [ %err.1, %fail ]
  %retval.0.ph = phi i8* [ %nameptr.1, %if.then13 ], [ null, %fail ]
  store i32 %err.1.sink, i32* %len, align 4
  br label %cleanup19

cleanup19:                                        ; preds = %cleanup19.sink.split, %fail, %if.end12
  %retval.0 = phi i8* [ %nameptr.1, %if.end12 ], [ null, %fail ], [ %retval.0.ph, %cleanup19.sink.split ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @fdt_offset_ptr_(i8* noundef readonly %fdt, i32 noundef %offset) unnamed_addr #2 {
entry:
  %off_dt_struct = getelementptr inbounds i8, i8* %fdt, i64 8
  %0 = bitcast i8* %off_dt_struct to i32*
  %call = call fastcc i32 @fdt32_ld(i32* noundef %0) #9
  %idx.ext = zext i32 %call to i64
  %add.ptr = getelementptr i8, i8* %fdt, i64 %idx.ext
  %idx.ext1 = sext i32 %offset to i64
  %add.ptr2 = getelementptr i8, i8* %add.ptr, i64 %idx.ext1
  ret i8* %add.ptr2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_check_node_offset_(i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_first_property_offset(i8* noundef %fdt, i32 noundef %nodeoffset) local_unnamed_addr #0 {
entry:
  %call = call i32 @fdt_check_node_offset_(i8* noundef %fdt, i32 noundef %nodeoffset) #8
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @nextprop_(i8* noundef %fdt, i32 noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @nextprop_(i8* noundef %fdt, i32 noundef %offset) unnamed_addr #0 {
entry:
  %nextoffset = alloca i32, align 4
  %0 = bitcast i32* %nextoffset to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  store i32 0, i32* %nextoffset, align 4, !annotation !7
  br label %do.body

do.body:                                          ; preds = %sw.epilog, %entry
  %offset.addr.0 = phi i32 [ %offset, %entry ], [ %2, %sw.epilog ]
  %call = call i32 @fdt_next_tag(i8* noundef %fdt, i32 noundef %offset.addr.0, i32* noundef nonnull %nextoffset) #8
  switch i32 %call, label %sw.epilog [
    i32 9, label %sw.bb
    i32 3, label %cleanup
  ]

sw.bb:                                            ; preds = %do.body
  %1 = load i32, i32* %nextoffset, align 4
  %cmp = icmp sgt i32 %1, -1
  %. = select i1 %cmp, i32 -11, i32 %1
  br label %cleanup

sw.epilog:                                        ; preds = %do.body
  %2 = load i32, i32* %nextoffset, align 4
  %cmp2 = icmp eq i32 %call, 4
  br i1 %cmp2, label %do.body, label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.body, %sw.bb
  %retval.0 = phi i32 [ %., %sw.bb ], [ -1, %sw.epilog ], [ %offset.addr.0, %do.body ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_next_property_offset(i8* noundef %fdt, i32 noundef %offset) local_unnamed_addr #0 {
entry:
  %call = call i32 @fdt_check_prop_offset_(i8* noundef %fdt, i32 noundef %offset) #8
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @nextprop_(i8* noundef %fdt, i32 noundef %call) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_check_prop_offset_(i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.fdt_property* @fdt_get_property_by_offset(i8* noundef %fdt, i32 noundef %offset, i32* noundef %lenp) local_unnamed_addr #0 {
entry:
  %version = getelementptr inbounds i8, i8* %fdt, i64 20
  %0 = bitcast i8* %version to i32*
  %call1 = call fastcc i32 @fdt32_ld(i32* noundef %0) #9
  %cmp = icmp ult i32 %call1, 16
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq i32* %lenp, null
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %if.then
  store i32 -10, i32* %lenp, align 4
  br label %return

if.end3:                                          ; preds = %entry
  %call4 = call fastcc %struct.fdt_property* @fdt_get_property_by_offset_(i8* noundef %fdt, i32 noundef %offset, i32* noundef %lenp) #9
  br label %return

return:                                           ; preds = %if.then, %if.then2, %if.end3
  %retval.0 = phi %struct.fdt_property* [ %call4, %if.end3 ], [ null, %if.then2 ], [ null, %if.then ]
  ret %struct.fdt_property* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.fdt_property* @fdt_get_property_by_offset_(i8* noundef %fdt, i32 noundef %offset, i32* noundef writeonly %lenp) unnamed_addr #0 {
entry:
  %call1 = call i32 @fdt_check_prop_offset_(i8* noundef %fdt, i32 noundef %offset) #8
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq i32* %lenp, null
  br i1 %tobool.not, label %cleanup, label %cleanup.sink.split

if.end3:                                          ; preds = %entry
  %call4 = call fastcc i8* @fdt_offset_ptr_(i8* noundef %fdt, i32 noundef %offset) #9
  %0 = bitcast i8* %call4 to %struct.fdt_property*
  %tobool5.not = icmp eq i32* %lenp, null
  br i1 %tobool5.not, label %cleanup, label %if.then6

if.then6:                                         ; preds = %if.end3
  %len = getelementptr inbounds i8, i8* %call4, i64 4
  %1 = bitcast i8* %len to i32*
  %call7 = call fastcc i32 @fdt32_ld_(i32* noundef %1) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then, %if.then6
  %call7.sink = phi i32 [ %call7, %if.then6 ], [ %call1, %if.then ]
  %retval.0.ph = phi %struct.fdt_property* [ %0, %if.then6 ], [ null, %if.then ]
  store i32 %call7.sink, i32* %lenp, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end3, %if.then
  %retval.0 = phi %struct.fdt_property* [ null, %if.then ], [ %0, %if.end3 ], [ %retval.0.ph, %cleanup.sink.split ]
  ret %struct.fdt_property* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.fdt_property* @fdt_get_property_namelen(i8* noundef %fdt, i32 noundef %offset, i8* noundef %name, i32 noundef %namelen, i32* noundef %lenp) local_unnamed_addr #0 {
entry:
  %version = getelementptr inbounds i8, i8* %fdt, i64 20
  %0 = bitcast i8* %version to i32*
  %call1 = call fastcc i32 @fdt32_ld(i32* noundef %0) #9
  %cmp = icmp ult i32 %call1, 16
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq i32* %lenp, null
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %if.then
  store i32 -10, i32* %lenp, align 4
  br label %return

if.end3:                                          ; preds = %entry
  %call4 = call fastcc %struct.fdt_property* @fdt_get_property_namelen_(i8* noundef %fdt, i32 noundef %offset, i8* noundef %name, i32 noundef %namelen, i32* noundef %lenp, i32* noundef null) #9
  br label %return

return:                                           ; preds = %if.then, %if.then2, %if.end3
  %retval.0 = phi %struct.fdt_property* [ %call4, %if.end3 ], [ null, %if.then2 ], [ null, %if.then ]
  ret %struct.fdt_property* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.fdt_property* @fdt_get_property_namelen_(i8* noundef %fdt, i32 noundef %offset, i8* noundef %name, i32 noundef %namelen, i32* noundef %lenp, i32* noundef writeonly %poffset) unnamed_addr #0 {
entry:
  %call = call i32 @fdt_first_property_offset(i8* noundef %fdt, i32 noundef %offset) #9
  %cmp39 = icmp sgt i32 %call, -1
  br i1 %cmp39, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %offset.addr.040 = phi i32 [ %call11, %for.inc ], [ %call, %entry ]
  %call1 = call fastcc %struct.fdt_property* @fdt_get_property_by_offset_(i8* noundef %fdt, i32 noundef %offset.addr.040, i32* noundef %lenp) #9
  %tobool.not = icmp eq %struct.fdt_property* %call1, null
  br i1 %tobool.not, label %for.end, label %if.end

if.end:                                           ; preds = %for.body
  %nameoff = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %call1, i64 0, i32 2
  %call3 = call fastcc i32 @fdt32_ld_(i32* noundef %nameoff) #9
  %call4 = call fastcc i32 @fdt_string_eq_(i8* noundef %fdt, i32 noundef %call3, i8* noundef %name, i32 noundef %namelen) #9
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %for.inc, label %if.then6

if.then6:                                         ; preds = %if.end
  %tobool7.not = icmp eq i32* %poffset, null
  br i1 %tobool7.not, label %return, label %if.then8

if.then8:                                         ; preds = %if.then6
  store i32 %offset.addr.040, i32* %poffset, align 4
  br label %return

for.inc:                                          ; preds = %if.end
  %call11 = call i32 @fdt_next_property_offset(i8* noundef %fdt, i32 noundef %offset.addr.040) #9
  %cmp = icmp sgt i32 %call11, -1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %for.body, %entry
  %offset.addr.2 = phi i32 [ %call, %entry ], [ -13, %for.body ], [ %call11, %for.inc ]
  %tobool12.not = icmp eq i32* %lenp, null
  br i1 %tobool12.not, label %return, label %if.then13

if.then13:                                        ; preds = %for.end
  store i32 %offset.addr.2, i32* %lenp, align 4
  br label %return

return:                                           ; preds = %if.then6, %if.then8, %for.end, %if.then13
  %retval.2 = phi %struct.fdt_property* [ null, %if.then13 ], [ null, %for.end ], [ %call1, %if.then8 ], [ %call1, %if.then6 ]
  ret %struct.fdt_property* %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.fdt_property* @fdt_get_property(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %name, i32* noundef %lenp) local_unnamed_addr #0 {
entry:
  %call = call i64 @strlen(i8* noundef %name) #8
  %conv = trunc i64 %call to i32
  %call1 = call %struct.fdt_property* @fdt_get_property_namelen(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %name, i32 noundef %conv, i32* noundef %lenp) #9
  ret %struct.fdt_property* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @fdt_getprop_namelen(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %name, i32 noundef %namelen, i32* noundef %lenp) local_unnamed_addr #0 {
entry:
  %poffset = alloca i32, align 4
  %0 = bitcast i32* %poffset to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  store i32 0, i32* %poffset, align 4, !annotation !7
  %call = call fastcc %struct.fdt_property* @fdt_get_property_namelen_(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %name, i32 noundef %namelen, i32* noundef %lenp, i32* noundef nonnull %poffset) #9
  %tobool.not = icmp eq %struct.fdt_property* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %version = getelementptr inbounds i8, i8* %fdt, i64 20
  %1 = bitcast i8* %version to i32*
  %call2 = call fastcc i32 @fdt32_ld(i32* noundef %1) #9
  %cmp = icmp ult i32 %call2, 16
  br i1 %cmp, label %land.lhs.true3, label %if.end10

land.lhs.true3:                                   ; preds = %if.end
  %2 = load i32, i32* %poffset, align 4
  %3 = add i32 %2, 4
  %4 = and i32 %3, 7
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %if.end10, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %len = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %call, i64 0, i32 1
  %call6 = call fastcc i32 @fdt32_ld_(i32* noundef %len) #9
  %cmp7 = icmp ugt i32 %call6, 7
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %land.lhs.true5
  %add.ptr = getelementptr %struct.fdt_property, %struct.fdt_property* %call, i64 0, i32 3, i64 4
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true5, %land.lhs.true3, %if.end
  %arraydecay12 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %call, i64 0, i32 3, i64 0
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end10, %if.then9
  %retval.0 = phi i8* [ %arraydecay12, %if.end10 ], [ %add.ptr, %if.then9 ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @fdt32_ld_(i32* nocapture noundef readonly %p) unnamed_addr #4 {
entry:
  %0 = load i32, i32* %p, align 4
  %call = call fastcc i32 @__fswab32(i32 noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @fdt_getprop_by_offset(i8* noundef %fdt, i32 noundef %offset, i8** noundef writeonly %namep, i32* noundef %lenp) local_unnamed_addr #0 {
entry:
  %namelen = alloca i32, align 4
  %call = call fastcc %struct.fdt_property* @fdt_get_property_by_offset_(i8* noundef %fdt, i32 noundef %offset, i32* noundef %lenp) #9
  %tobool.not = icmp eq %struct.fdt_property* %call, null
  br i1 %tobool.not, label %cleanup31, label %if.end

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq i8** %namep, null
  br i1 %tobool1.not, label %if.end18, label %if.then2

if.then2:                                         ; preds = %if.end
  %0 = bitcast i32* %namelen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  store i32 0, i32* %namelen, align 4, !annotation !7
  %nameoff = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %call, i64 0, i32 2
  %call5 = call fastcc i32 @fdt32_ld_(i32* noundef %nameoff) #9
  %call6 = call i8* @fdt_get_string(i8* noundef %fdt, i32 noundef %call5, i32* noundef nonnull %namelen) #9
  %tobool7.not = icmp eq i8* %call6, null
  br i1 %tobool7.not, label %if.then8, label %cleanup

if.then8:                                         ; preds = %if.then2
  %tobool9.not = icmp eq i32* %lenp, null
  br i1 %tobool9.not, label %cleanup.thread, label %if.then10

if.then10:                                        ; preds = %if.then8
  %1 = load i32, i32* %namelen, align 4
  store i32 %1, i32* %lenp, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then8, %if.then10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  br label %cleanup31

cleanup:                                          ; preds = %if.then2
  store i8* %call6, i8** %namep, align 8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  br label %if.end18

if.end18:                                         ; preds = %cleanup, %if.end
  %version = getelementptr inbounds i8, i8* %fdt, i64 20
  %2 = bitcast i8* %version to i32*
  %call20 = call fastcc i32 @fdt32_ld(i32* noundef %2) #9
  %cmp = icmp ult i32 %call20, 16
  br i1 %cmp, label %land.lhs.true21, label %if.end28

land.lhs.true21:                                  ; preds = %if.end18
  %3 = add i32 %offset, 4
  %4 = and i32 %3, 7
  %tobool22.not = icmp eq i32 %4, 0
  br i1 %tobool22.not, label %if.end28, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %land.lhs.true21
  %len = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %call, i64 0, i32 1
  %call24 = call fastcc i32 @fdt32_ld_(i32* noundef %len) #9
  %cmp25 = icmp ugt i32 %call24, 7
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %land.lhs.true23
  %add.ptr = getelementptr %struct.fdt_property, %struct.fdt_property* %call, i64 0, i32 3, i64 4
  br label %cleanup31

if.end28:                                         ; preds = %land.lhs.true23, %land.lhs.true21, %if.end18
  %arraydecay30 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %call, i64 0, i32 3, i64 0
  br label %cleanup31

cleanup31:                                        ; preds = %cleanup.thread, %entry, %if.end28, %if.then27
  %retval.1 = phi i8* [ %arraydecay30, %if.end28 ], [ %add.ptr, %if.then27 ], [ null, %entry ], [ null, %cleanup.thread ]
  ret i8* %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @fdt_getprop(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %name, i32* noundef %lenp) local_unnamed_addr #0 {
entry:
  %call = call i64 @strlen(i8* noundef %name) #8
  %conv = trunc i64 %call to i32
  %call1 = call i8* @fdt_getprop_namelen(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %name, i32 noundef %conv, i32* noundef %lenp) #9
  ret i8* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @fdt_get_alias(i8* noundef %fdt, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %call = call i64 @strlen(i8* noundef %name) #8
  %conv = trunc i64 %call to i32
  %call1 = call i8* @fdt_get_alias_namelen(i8* noundef %fdt, i8* noundef %name, i32 noundef %conv) #9
  ret i8* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_get_path(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %buf, i32 noundef %buflen) local_unnamed_addr #0 {
entry:
  %depth = alloca i32, align 4
  %namelen = alloca i32, align 4
  %0 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  %1 = bitcast i32* %namelen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #10
  store i32 0, i32* %namelen, align 4, !annotation !7
  %call = call i32 @fdt_ro_probe_(i8* noundef %fdt) #8
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup55, label %cleanup.cont

cleanup.cont:                                     ; preds = %entry
  %cmp1 = icmp slt i32 %buflen, 2
  br i1 %cmp1, label %cleanup55, label %if.end3

if.end3:                                          ; preds = %cleanup.cont
  store i32 0, i32* %depth, align 4
  %cmp5101 = icmp sgt i32 %nodeoffset, -1
  br i1 %cmp5101, label %while.cond.preheader, label %cleanup55

while.cond.preheader:                             ; preds = %if.end3, %for.inc.while.cond.preheader_crit_edge
  %2 = phi i32 [ %.pre, %for.inc.while.cond.preheader_crit_edge ], [ 0, %if.end3 ]
  %offset.0104 = phi i32 [ %call44, %for.inc.while.cond.preheader_crit_edge ], [ 0, %if.end3 ]
  %p.0103 = phi i32 [ %p.3, %for.inc.while.cond.preheader_crit_edge ], [ 0, %if.end3 ]
  %pdepth.0102 = phi i32 [ %pdepth.2, %for.inc.while.cond.preheader_crit_edge ], [ 0, %if.end3 ]
  %cmp696 = icmp sgt i32 %pdepth.0102, %2
  br i1 %cmp696, label %do.body.preheader, label %while.end

do.body.preheader:                                ; preds = %while.cond.preheader, %do.end
  %p.198 = phi i32 [ %dec, %do.end ], [ %p.0103, %while.cond.preheader ]
  %pdepth.197 = phi i32 [ %dec9, %do.end ], [ %pdepth.0102, %while.cond.preheader ]
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %do.body
  %p.2 = phi i32 [ %dec, %do.body ], [ %p.198, %do.body.preheader ]
  %dec = add i32 %p.2, -1
  %sub = add i32 %p.2, -2
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr i8, i8* %buf, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %cmp7.not = icmp eq i8 %3, 47
  br i1 %cmp7.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  %dec9 = add nsw i32 %pdepth.197, -1
  %cmp6 = icmp sgt i32 %dec9, %2
  br i1 %cmp6, label %do.body.preheader, label %if.then12

while.end:                                        ; preds = %while.cond.preheader
  %cmp10.not = icmp slt i32 %pdepth.0102, %2
  br i1 %cmp10.not, label %if.end27, label %if.then12

if.then12:                                        ; preds = %do.end, %while.end
  %p.1.lcssa112 = phi i32 [ %p.0103, %while.end ], [ %dec, %do.end ]
  %pdepth.1.lcssa111 = phi i32 [ %pdepth.0102, %while.end ], [ %2, %do.end ]
  %call13 = call i8* @fdt_get_name(i8* noundef %fdt, i32 noundef %offset.0104, i32* noundef nonnull %namelen) #9
  %tobool.not = icmp eq i8* %call13, null
  %4 = load i32, i32* %namelen, align 4
  br i1 %tobool.not, label %cleanup55, label %if.end15

if.end15:                                         ; preds = %if.then12
  %add = add i32 %p.1.lcssa112, 1
  %add16 = add i32 %add, %4
  %cmp17.not = icmp sgt i32 %add16, %buflen
  br i1 %cmp17.not, label %if.end27, label %if.then19

if.then19:                                        ; preds = %if.end15
  %idx.ext = sext i32 %p.1.lcssa112 to i64
  %add.ptr = getelementptr i8, i8* %buf, i64 %idx.ext
  %conv20 = sext i32 %4 to i64
  %call21 = call i8* @memcpy(i8* noundef %add.ptr, i8* noundef nonnull %call13, i64 noundef %conv20) #8
  %5 = load i32, i32* %namelen, align 4
  %add22 = add i32 %5, %p.1.lcssa112
  %inc = add i32 %add22, 1
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr i8, i8* %buf, i64 %idxprom23
  store i8 47, i8* %arrayidx24, align 1
  %inc25 = add i32 %pdepth.1.lcssa111, 1
  br label %if.end27

if.end27:                                         ; preds = %if.end15, %if.then19, %while.end
  %pdepth.2 = phi i32 [ %inc25, %if.then19 ], [ %pdepth.1.lcssa111, %if.end15 ], [ %pdepth.0102, %while.end ]
  %p.3 = phi i32 [ %inc, %if.then19 ], [ %p.1.lcssa112, %if.end15 ], [ %p.0103, %while.end ]
  %cmp28 = icmp eq i32 %offset.0104, %nodeoffset
  br i1 %cmp28, label %if.then30, label %for.inc

if.then30:                                        ; preds = %if.end27
  %6 = load i32, i32* %depth, align 4
  %add31 = add i32 %6, 1
  %cmp32 = icmp slt i32 %pdepth.2, %add31
  br i1 %cmp32, label %cleanup55, label %if.end35

if.end35:                                         ; preds = %if.then30
  %cmp36 = icmp sgt i32 %p.3, 1
  %dec39 = sext i1 %cmp36 to i32
  %spec.select = add i32 %p.3, %dec39
  %idxprom41 = sext i32 %spec.select to i64
  %arrayidx42 = getelementptr i8, i8* %buf, i64 %idxprom41
  store i8 0, i8* %arrayidx42, align 1
  br label %cleanup55

for.inc:                                          ; preds = %if.end27
  %call44 = call i32 @fdt_next_node(i8* noundef %fdt, i32 noundef %offset.0104, i32* noundef nonnull %depth) #8
  %cmp4 = icmp sgt i32 %call44, -1
  %cmp5 = icmp sle i32 %call44, %nodeoffset
  %7 = and i1 %cmp4, %cmp5
  br i1 %7, label %for.inc.while.cond.preheader_crit_edge, label %for.end

for.inc.while.cond.preheader_crit_edge:           ; preds = %for.inc
  %.pre = load i32, i32* %depth, align 4
  br label %while.cond.preheader

for.end:                                          ; preds = %for.inc
  %8 = icmp sgt i32 %call44, -2
  br i1 %8, label %cleanup55, label %if.else

if.else:                                          ; preds = %for.end
  %cmp50 = icmp eq i32 %call44, -4
  %.offset.0 = select i1 %cmp50, i32 -11, i32 %call44
  br label %cleanup55

cleanup55:                                        ; preds = %if.then12, %if.end3, %if.else, %for.end, %if.then30, %cleanup.cont, %entry, %if.end35
  %retval.1 = phi i32 [ 0, %if.end35 ], [ %call, %entry ], [ -3, %cleanup.cont ], [ -3, %if.then30 ], [ -4, %for.end ], [ %.offset.0, %if.else ], [ -4, %if.end3 ], [ %4, %if.then12 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_supernode_atdepth_offset(i8* noundef %fdt, i32 noundef %nodeoffset, i32 noundef %supernodedepth, i32* noundef writeonly %nodedepth) local_unnamed_addr #0 {
entry:
  %depth = alloca i32, align 4
  %0 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  %call = call i32 @fdt_ro_probe_(i8* noundef %fdt) #8
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup28, label %cleanup.cont

cleanup.cont:                                     ; preds = %entry
  %cmp1 = icmp slt i32 %supernodedepth, 0
  br i1 %cmp1, label %cleanup28, label %if.end3

if.end3:                                          ; preds = %cleanup.cont
  store i32 0, i32* %depth, align 4
  %cmp548 = icmp sgt i32 %nodeoffset, -1
  br i1 %cmp548, label %for.body.preheader, label %cleanup28

for.body.preheader:                               ; preds = %if.end3
  %cmp658 = icmp eq i32 %supernodedepth, 0
  %spec.select59 = select i1 %cmp658, i32 0, i32 -13
  %cmp960 = icmp eq i32 %nodeoffset, 0
  br i1 %cmp960, label %if.then10, label %for.inc

if.then10:                                        ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %.lcssa = phi i32 [ 0, %for.body.preheader ], [ %.pre, %for.inc.for.body_crit_edge ]
  %spec.select.lcssa = phi i32 [ %spec.select59, %for.body.preheader ], [ %spec.select, %for.inc.for.body_crit_edge ]
  %tobool.not = icmp eq i32* %nodedepth, null
  br i1 %tobool.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.then10
  store i32 %.lcssa, i32* %nodedepth, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then10
  %cmp13 = icmp slt i32 %.lcssa, %supernodedepth
  %.spec.select = select i1 %cmp13, i32 -1, i32 %spec.select.lcssa
  br label %cleanup28

for.inc:                                          ; preds = %for.body.preheader, %for.inc.for.body_crit_edge
  %spec.select62 = phi i32 [ %spec.select, %for.inc.for.body_crit_edge ], [ %spec.select59, %for.body.preheader ]
  %offset.04961 = phi i32 [ %call16, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call16 = call i32 @fdt_next_node(i8* noundef %fdt, i32 noundef %offset.04961, i32* noundef nonnull %depth) #8
  %cmp4 = icmp sgt i32 %call16, -1
  %cmp5 = icmp sle i32 %call16, %nodeoffset
  %1 = and i1 %cmp4, %cmp5
  br i1 %1, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %.pre = load i32, i32* %depth, align 4
  %cmp6 = icmp eq i32 %.pre, %supernodedepth
  %spec.select = select i1 %cmp6, i32 %call16, i32 %spec.select62
  %cmp9 = icmp eq i32 %call16, %nodeoffset
  br i1 %cmp9, label %if.then10, label %for.inc

for.end:                                          ; preds = %for.inc
  %2 = icmp sgt i32 %call16, -2
  br i1 %2, label %cleanup28, label %if.else22

if.else22:                                        ; preds = %for.end
  %cmp23 = icmp eq i32 %call16, -4
  %.offset.0 = select i1 %cmp23, i32 -11, i32 %call16
  br label %cleanup28

cleanup28:                                        ; preds = %if.end3, %if.else22, %for.end, %if.end12, %cleanup.cont, %entry
  %retval.1 = phi i32 [ %call, %entry ], [ -1, %cleanup.cont ], [ %.spec.select, %if.end12 ], [ -4, %for.end ], [ %.offset.0, %if.else22 ], [ -4, %if.end3 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_node_depth(i8* noundef %fdt, i32 noundef %nodeoffset) local_unnamed_addr #0 {
entry:
  %nodedepth = alloca i32, align 4
  %0 = bitcast i32* %nodedepth to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  store i32 0, i32* %nodedepth, align 4, !annotation !7
  %call = call i32 @fdt_supernode_atdepth_offset(i8* noundef %fdt, i32 noundef %nodeoffset, i32 noundef 0, i32* noundef nonnull %nodedepth) #9
  %tobool.not = icmp eq i32 %call, 0
  %cmp = icmp slt i32 %call, 0
  %cond = select i1 %cmp, i32 %call, i32 -13
  %1 = load i32, i32* %nodedepth, align 4
  %retval.0 = select i1 %tobool.not, i32 %1, i32 %cond
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_parent_offset(i8* noundef %fdt, i32 noundef %nodeoffset) local_unnamed_addr #0 {
entry:
  %call = call i32 @fdt_node_depth(i8* noundef %fdt, i32 noundef %nodeoffset) #9
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %sub = add nsw i32 %call, -1
  %call1 = call i32 @fdt_supernode_atdepth_offset(i8* noundef %fdt, i32 noundef %nodeoffset, i32 noundef %sub, i32* noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_node_offset_by_prop_value(i8* noundef %fdt, i32 noundef %startoffset, i8* noundef %propname, i8* noundef %propval, i32 noundef %proplen) local_unnamed_addr #0 {
entry:
  %len = alloca i32, align 4
  %0 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  store i32 0, i32* %len, align 4, !annotation !7
  %call = call i32 @fdt_ro_probe_(i8* noundef %fdt) #8
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup12, label %cleanup.cont

cleanup.cont:                                     ; preds = %entry
  %call1 = call i32 @fdt_next_node(i8* noundef %fdt, i32 noundef %startoffset, i32* noundef null) #8
  %cmp226 = icmp sgt i32 %call1, -1
  br i1 %cmp226, label %for.body.preheader, label %cleanup12

for.body.preheader:                               ; preds = %cleanup.cont
  %conv = sext i32 %proplen to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %offset.027 = phi i32 [ %call11, %for.inc ], [ %call1, %for.body.preheader ]
  %call3 = call i8* @fdt_getprop(i8* noundef %fdt, i32 noundef %offset.027, i8* noundef %propname, i32* noundef nonnull %len) #9
  %tobool.not = icmp ne i8* %call3, null
  %1 = load i32, i32* %len, align 4
  %cmp4 = icmp eq i32 %1, %proplen
  %or.cond = select i1 %tobool.not, i1 %cmp4, i1 false
  br i1 %or.cond, label %land.lhs.true5, label %for.inc

land.lhs.true5:                                   ; preds = %for.body
  %call6 = call i32 @memcmp(i8* noundef nonnull %call3, i8* noundef %propval, i64 noundef %conv) #8
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %cleanup12, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true5
  %call11 = call i32 @fdt_next_node(i8* noundef %fdt, i32 noundef %offset.027, i32* noundef null) #8
  %cmp2 = icmp sgt i32 %call11, -1
  br i1 %cmp2, label %for.body, label %cleanup12

cleanup12:                                        ; preds = %land.lhs.true5, %for.inc, %cleanup.cont, %entry
  %retval.1 = phi i32 [ %call, %entry ], [ %call1, %cleanup.cont ], [ %offset.027, %land.lhs.true5 ], [ %call11, %for.inc ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_node_offset_by_phandle(i8* noundef %fdt, i32 noundef %phandle) local_unnamed_addr #0 {
entry:
  %0 = add i32 %phandle, 1
  %1 = icmp ult i32 %0, 2
  br i1 %1, label %cleanup12, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 @fdt_ro_probe_(i8* noundef %fdt) #8
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %cleanup12, label %cleanup.cont

cleanup.cont:                                     ; preds = %if.end
  %call5 = call i32 @fdt_next_node(i8* noundef %fdt, i32 noundef -1, i32* noundef null) #8
  %cmp624 = icmp sgt i32 %call5, -1
  br i1 %cmp624, label %for.body, label %cleanup12

for.body:                                         ; preds = %cleanup.cont, %for.inc
  %offset.025 = phi i32 [ %call11, %for.inc ], [ %call5, %cleanup.cont ]
  %call7 = call i32 @fdt_get_phandle(i8* noundef %fdt, i32 noundef %offset.025) #9
  %cmp8 = icmp eq i32 %call7, %phandle
  br i1 %cmp8, label %cleanup12, label %for.inc

for.inc:                                          ; preds = %for.body
  %call11 = call i32 @fdt_next_node(i8* noundef %fdt, i32 noundef %offset.025, i32* noundef null) #8
  %cmp6 = icmp sgt i32 %call11, -1
  br i1 %cmp6, label %for.body, label %cleanup12

cleanup12:                                        ; preds = %for.body, %for.inc, %cleanup.cont, %entry, %if.end
  %retval.1 = phi i32 [ %call, %if.end ], [ -6, %entry ], [ %call5, %cleanup.cont ], [ %offset.025, %for.body ], [ %call11, %for.inc ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_stringlist_contains(i8* noundef %strlist, i32 noundef %listlen, i8* noundef %str) local_unnamed_addr #0 {
entry:
  %call = call i64 @strlen(i8* noundef %str) #8
  %conv = trunc i64 %call to i32
  %add = shl i64 %call, 32
  %sext = add i64 %add, 4294967296
  %conv2 = ashr exact i64 %sext, 32
  %cmp.not24 = icmp sgt i32 %conv, %listlen
  br i1 %cmp.not24, label %cleanup, label %while.body

while.body:                                       ; preds = %entry, %if.end9
  %listlen.addr.026 = phi i32 [ %conv12, %if.end9 ], [ %listlen, %entry ]
  %strlist.addr.025 = phi i8* [ %add.ptr, %if.end9 ], [ %strlist, %entry ]
  %call3 = call i32 @memcmp(i8* noundef %str, i8* noundef %strlist.addr.025, i64 noundef %conv2) #8
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %cleanup, label %if.end

if.end:                                           ; preds = %while.body
  %conv6 = sext i32 %listlen.addr.026 to i64
  %call7 = call i8* @memchr(i8* noundef %strlist.addr.025, i32 noundef 0, i64 noundef %conv6) #8
  %tobool.not = icmp eq i8* %call7, null
  br i1 %tobool.not, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end
  %sub.ptr.lhs.cast = ptrtoint i8* %call7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %strlist.addr.025 to i64
  %0 = xor i64 %sub.ptr.lhs.cast, -1
  %add10.neg = add i64 %0, %sub.ptr.rhs.cast
  %1 = trunc i64 %add10.neg to i32
  %conv12 = add i32 %listlen.addr.026, %1
  %add.ptr = getelementptr i8, i8* %call7, i64 1
  %cmp.not = icmp slt i32 %conv12, %conv
  br i1 %cmp.not, label %cleanup, label %while.body

cleanup:                                          ; preds = %while.body, %if.end, %if.end9, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end9 ], [ 0, %if.end ], [ 1, %while.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_stringlist_count(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %property) local_unnamed_addr #0 {
entry:
  %length = alloca i32, align 4
  %0 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  store i32 0, i32* %length, align 4, !annotation !7
  %call = call i8* @fdt_getprop(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %property, i32* noundef nonnull %length) #9
  %tobool.not = icmp eq i8* %call, null
  %1 = load i32, i32* %length, align 4
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr i8, i8* %call, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr to i64
  %cmp25 = icmp ult i8* %call, %add.ptr
  br i1 %cmp25, label %while.body, label %cleanup

while.body:                                       ; preds = %if.end, %if.end7
  %count.027 = phi i32 [ %inc, %if.end7 ], [ 0, %if.end ]
  %list.026 = phi i8* [ %add.ptr3, %if.end7 ], [ %call, %if.end ]
  %sub.ptr.rhs.cast = ptrtoint i8* %list.026 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call1 = call i64 @strnlen(i8* noundef %list.026, i64 noundef %sub.ptr.sub) #8
  %2 = trunc i64 %call1 to i32
  %conv = add i32 %2, 1
  store i32 %conv, i32* %length, align 4
  %idx.ext2 = sext i32 %conv to i64
  %add.ptr3 = getelementptr i8, i8* %list.026, i64 %idx.ext2
  %cmp4 = icmp ugt i8* %add.ptr3, %add.ptr
  br i1 %cmp4, label %cleanup, label %if.end7

if.end7:                                          ; preds = %while.body
  %inc = add i32 %count.027, 1
  %cmp = icmp ult i8* %add.ptr3, %add.ptr
  br i1 %cmp, label %while.body, label %cleanup

cleanup:                                          ; preds = %while.body, %if.end7, %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ %1, %entry ], [ -15, %while.body ], [ %inc, %if.end7 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strnlen(i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_stringlist_search(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %property, i8* noundef %string) local_unnamed_addr #0 {
entry:
  %length = alloca i32, align 4
  %0 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  store i32 0, i32* %length, align 4, !annotation !7
  %call = call i8* @fdt_getprop(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %property, i32* noundef nonnull %length) #9
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %length, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i64 @strlen(i8* noundef %string) #8
  %2 = trunc i64 %call1 to i32
  %3 = load i32, i32* %length, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr i8, i8* %call, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr to i64
  %cmp41 = icmp ult i8* %call, %add.ptr
  br i1 %cmp41, label %while.body, label %cleanup

while.body:                                       ; preds = %if.end, %if.end19
  %list.044 = phi i8* [ %add.ptr21, %if.end19 ], [ %call, %if.end ]
  %idx.042 = phi i32 [ %inc, %if.end19 ], [ 0, %if.end ]
  %sub.ptr.rhs.cast = ptrtoint i8* %list.044 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call3 = call i64 @strnlen(i8* noundef %list.044, i64 noundef %sub.ptr.sub) #8
  %4 = trunc i64 %call3 to i32
  %conv5 = add i32 %4, 1
  store i32 %conv5, i32* %length, align 4
  %idx.ext6 = sext i32 %conv5 to i64
  %add.ptr7 = getelementptr i8, i8* %list.044, i64 %idx.ext6
  %cmp8 = icmp ugt i8* %add.ptr7, %add.ptr
  br i1 %cmp8, label %cleanup, label %if.end11

if.end11:                                         ; preds = %while.body
  %cmp12 = icmp eq i32 %4, %2
  br i1 %cmp12, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %if.end11
  %call15 = call i32 @memcmp(i8* noundef %list.044, i8* noundef %string, i64 noundef %idx.ext6) #8
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %cleanup, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  %.pre = load i32, i32* %length, align 4
  %.pre48 = sext i32 %.pre to i64
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true.if.end19_crit_edge, %if.end11
  %idx.ext20.pre-phi = phi i64 [ %.pre48, %land.lhs.true.if.end19_crit_edge ], [ %idx.ext6, %if.end11 ]
  %add.ptr21 = getelementptr i8, i8* %list.044, i64 %idx.ext20.pre-phi
  %inc = add i32 %idx.042, 1
  %cmp = icmp ult i8* %add.ptr21, %add.ptr
  br i1 %cmp, label %while.body, label %cleanup

cleanup:                                          ; preds = %while.body, %land.lhs.true, %if.end19, %if.end, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ -1, %if.end ], [ -15, %while.body ], [ %idx.042, %land.lhs.true ], [ -1, %if.end19 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @fdt_stringlist_get(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %property, i32 noundef %idx, i32* noundef writeonly %lenp) local_unnamed_addr #0 {
entry:
  %length = alloca i32, align 4
  %0 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  store i32 0, i32* %length, align 4, !annotation !7
  %call = call i8* @fdt_getprop(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %property, i32* noundef nonnull %length) #9
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %tobool1.not = icmp eq i32* %lenp, null
  br i1 %tobool1.not, label %cleanup, label %if.then2

if.then2:                                         ; preds = %if.then
  %1 = load i32, i32* %length, align 4
  br label %cleanup.sink.split

if.end3:                                          ; preds = %entry
  %2 = load i32, i32* %length, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr i8, i8* %call, i64 %idx.ext
  %cmp50 = icmp ult i8* %call, %add.ptr
  br i1 %cmp50, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.end3
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr to i64
  br label %while.body

while.cond:                                       ; preds = %if.end13
  %dec = add i32 %idx.addr.051, -1
  %cmp = icmp ult i8* %add.ptr6, %add.ptr
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.body.lr.ph, %while.cond
  %list.052 = phi i8* [ %call, %while.body.lr.ph ], [ %add.ptr6, %while.cond ]
  %idx.addr.051 = phi i32 [ %idx, %while.body.lr.ph ], [ %dec, %while.cond ]
  %sub.ptr.rhs.cast = ptrtoint i8* %list.052 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call4 = call i64 @strnlen(i8* noundef %list.052, i64 noundef %sub.ptr.sub) #8
  %3 = trunc i64 %call4 to i32
  %conv = add i32 %3, 1
  store i32 %conv, i32* %length, align 4
  %idx.ext5 = sext i32 %conv to i64
  %add.ptr6 = getelementptr i8, i8* %list.052, i64 %idx.ext5
  %cmp7 = icmp ugt i8* %add.ptr6, %add.ptr
  br i1 %cmp7, label %if.then9, label %if.end13

if.then9:                                         ; preds = %while.body
  %tobool10.not = icmp eq i32* %lenp, null
  br i1 %tobool10.not, label %cleanup, label %cleanup.sink.split

if.end13:                                         ; preds = %while.body
  %cmp14 = icmp eq i32 %idx.addr.051, 0
  br i1 %cmp14, label %if.then16, label %while.cond

if.then16:                                        ; preds = %if.end13
  %4 = trunc i64 %call4 to i32
  %tobool17.not = icmp eq i32* %lenp, null
  br i1 %tobool17.not, label %cleanup, label %cleanup.sink.split

while.end:                                        ; preds = %while.cond, %if.end3
  %tobool23.not = icmp eq i32* %lenp, null
  br i1 %tobool23.not, label %cleanup, label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %while.end, %if.then16, %if.then9, %if.then2
  %.sink = phi i32 [ %1, %if.then2 ], [ -15, %if.then9 ], [ %4, %if.then16 ], [ -1, %while.end ]
  %retval.0.ph = phi i8* [ null, %if.then2 ], [ null, %if.then9 ], [ %list.052, %if.then16 ], [ null, %while.end ]
  store i32 %.sink, i32* %lenp, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.end, %if.then16, %if.then9, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ null, %if.then9 ], [ %list.052, %if.then16 ], [ null, %while.end ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_node_check_compatible(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %compatible) local_unnamed_addr #0 {
entry:
  %len = alloca i32, align 4
  %0 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  store i32 0, i32* %len, align 4, !annotation !7
  %call = call i8* @fdt_getprop(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* noundef nonnull %len) #9
  %tobool.not = icmp eq i8* %call, null
  %1 = load i32, i32* %len, align 4
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @fdt_stringlist_contains(i8* noundef nonnull %call, i32 noundef %1, i8* noundef %compatible) #9
  %tobool2.not = icmp eq i32 %call1, 0
  %lnot.ext = zext i1 %tobool2.not to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %lnot.ext, %if.end ], [ %1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_node_offset_by_compatible(i8* noundef %fdt, i32 noundef %startoffset, i8* noundef %compatible) local_unnamed_addr #0 {
entry:
  %call = call i32 @fdt_ro_probe_(i8* noundef %fdt) #8
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup12, label %cleanup.cont

cleanup.cont:                                     ; preds = %entry
  %call1 = call i32 @fdt_next_node(i8* noundef %fdt, i32 noundef %startoffset, i32* noundef null) #8
  %cmp227 = icmp sgt i32 %call1, -1
  br i1 %cmp227, label %for.body, label %cleanup12

for.body:                                         ; preds = %cleanup.cont, %for.inc
  %offset.028 = phi i32 [ %call11, %for.inc ], [ %call1, %cleanup.cont ]
  %call3 = call i32 @fdt_node_check_compatible(i8* noundef %fdt, i32 noundef %offset.028, i8* noundef %compatible) #9
  %0 = icmp slt i32 %call3, -1
  br i1 %0, label %cleanup12, label %if.else

if.else:                                          ; preds = %for.body
  %cmp7 = icmp eq i32 %call3, 0
  br i1 %cmp7, label %cleanup12, label %for.inc

for.inc:                                          ; preds = %if.else
  %call11 = call i32 @fdt_next_node(i8* noundef %fdt, i32 noundef %offset.028, i32* noundef null) #8
  %cmp2 = icmp sgt i32 %call11, -1
  br i1 %cmp2, label %for.body, label %cleanup12

cleanup12:                                        ; preds = %for.body, %if.else, %for.inc, %cleanup.cont, %entry
  %retval.1 = phi i32 [ %call, %entry ], [ %call1, %cleanup.cont ], [ %call3, %for.body ], [ %offset.028, %if.else ], [ %call11, %for.inc ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.fdt_reserve_entry* @fdt_mem_rsv_(i8* noundef readonly %fdt, i32 noundef %n) unnamed_addr #2 {
entry:
  %off_mem_rsvmap = getelementptr inbounds i8, i8* %fdt, i64 16
  %0 = bitcast i8* %off_mem_rsvmap to i32*
  %call = call fastcc i32 @fdt32_ld(i32* noundef %0) #9
  %idx.ext = zext i32 %call to i64
  %add.ptr = getelementptr i8, i8* %fdt, i64 %idx.ext
  %1 = bitcast i8* %add.ptr to %struct.fdt_reserve_entry*
  %idx.ext1 = sext i32 %n to i64
  %add.ptr2 = getelementptr %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %1, i64 %idx.ext1
  ret %struct.fdt_reserve_entry* %add.ptr2
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__fswab64(i64 noundef %val) unnamed_addr #6 {
entry:
  %or19 = call i64 @llvm.bswap.i64(i64 %val)
  ret i64 %or19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_next_tag(i8* noundef, i32 noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @fdt_string_eq_(i8* noundef %fdt, i32 noundef %stroffset, i8* noundef %s, i32 noundef %len) unnamed_addr #0 {
entry:
  %slen = alloca i32, align 4
  %0 = bitcast i32* %slen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  store i32 0, i32* %slen, align 4, !annotation !7
  %call = call i8* @fdt_get_string(i8* noundef %fdt, i32 noundef %stroffset, i32* noundef nonnull %slen) #9
  %tobool.not = icmp ne i8* %call, null
  %1 = load i32, i32* %slen, align 4
  %cmp = icmp eq i32 %1, %len
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %conv = sext i32 %len to i64
  %call1 = call i32 @memcmp(i8* noundef nonnull %call, i8* noundef %s, i64 noundef %conv) #8
  %cmp2 = icmp eq i32 %call1, 0
  %phi.cast = zext i1 %cmp2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__fswab32(i32 noundef %val) unnamed_addr #6 {
entry:
  %or7 = call i32 @llvm.bswap.i32(i32 %val)
  ret i32 %or7
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { nofree noinline nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin nounwind readnone willreturn "no-builtins" }

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
