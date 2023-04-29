; ModuleID = 'lib/fdt_sw.c'
source_filename = "lib/fdt_sw.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_create_with_flags(i8* noundef %buf, i32 noundef %bufsize, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %bufsize, 48
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp ult i32 %flags, 2
  br i1 %tobool.not, label %if.end2, label %cleanup

if.end2:                                          ; preds = %if.end
  %conv18 = zext i32 %bufsize to i64
  %call = call i8* @memset(i8* noundef %buf, i32 noundef 0, i64 noundef %conv18) #9
  call fastcc void @fdt_set_magic(i8* noundef %buf, i32 noundef 804389138) #10
  call fastcc void @fdt_set_version(i8* noundef %buf) #10
  call fastcc void @fdt_set_last_comp_version(i8* noundef %buf, i32 noundef %flags) #10
  call fastcc void @fdt_set_totalsize(i8* noundef %buf, i32 noundef %bufsize) #10
  call fastcc void @fdt_set_off_mem_rsvmap(i8* noundef %buf) #10
  %off_mem_rsvmap = getelementptr inbounds i8, i8* %buf, i64 16
  %0 = bitcast i8* %off_mem_rsvmap to i32*
  %call3 = call fastcc i32 @fdt32_ld(i32* noundef %0) #10
  call fastcc void @fdt_set_off_dt_struct(i8* noundef %buf, i32 noundef %call3) #10
  call fastcc void @fdt_set_off_dt_strings(i8* noundef %buf, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end2
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -3, %entry ], [ -18, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @fdt_set_magic(i8* nocapture noundef writeonly %fdt, i32 noundef %val) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @__fswab32(i32 noundef %val) #11
  %magic = bitcast i8* %fdt to i32*
  store i32 %call, i32* %magic, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @fdt_set_version(i8* nocapture noundef writeonly %fdt) unnamed_addr #4 {
entry:
  %version = getelementptr inbounds i8, i8* %fdt, i64 20
  %0 = bitcast i8* %version to i32*
  store i32 285212672, i32* %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @fdt_set_last_comp_version(i8* nocapture noundef writeonly %fdt, i32 noundef %val) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @__fswab32(i32 noundef %val) #11
  %last_comp_version = getelementptr inbounds i8, i8* %fdt, i64 24
  %0 = bitcast i8* %last_comp_version to i32*
  store i32 %call, i32* %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @fdt_set_totalsize(i8* nocapture noundef writeonly %fdt, i32 noundef %val) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @__fswab32(i32 noundef %val) #11
  %totalsize = getelementptr inbounds i8, i8* %fdt, i64 4
  %0 = bitcast i8* %totalsize to i32*
  store i32 %call, i32* %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @fdt_set_off_mem_rsvmap(i8* nocapture noundef writeonly %fdt) unnamed_addr #4 {
entry:
  %off_mem_rsvmap = getelementptr inbounds i8, i8* %fdt, i64 16
  %0 = bitcast i8* %off_mem_rsvmap to i32*
  store i32 805306368, i32* %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @fdt_set_off_dt_struct(i8* nocapture noundef writeonly %fdt, i32 noundef %val) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @__fswab32(i32 noundef %val) #11
  %off_dt_struct = getelementptr inbounds i8, i8* %fdt, i64 8
  %0 = bitcast i8* %off_dt_struct to i32*
  store i32 %call, i32* %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @fdt32_ld(i32* nocapture noundef readonly %p) unnamed_addr #5 {
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

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @fdt_set_off_dt_strings(i8* nocapture noundef writeonly %fdt, i32 noundef %val) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @__fswab32(i32 noundef %val) #11
  %off_dt_strings = getelementptr inbounds i8, i8* %fdt, i64 12
  %0 = bitcast i8* %off_dt_strings to i32*
  store i32 %call, i32* %0, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_create(i8* noundef %buf, i32 noundef %bufsize) local_unnamed_addr #0 {
entry:
  %call = call i32 @fdt_create_with_flags(i8* noundef %buf, i32 noundef %bufsize, i32 noundef 0) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_resize(i8* noundef %fdt, i8* noundef %buf, i32 noundef %bufsize) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @fdt_sw_probe_(i8* noundef %fdt) #10
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %cleanup.cont, label %cleanup40

cleanup.cont:                                     ; preds = %entry
  %cmp1 = icmp slt i32 %bufsize, 0
  br i1 %cmp1, label %cleanup40, label %if.end3

if.end3:                                          ; preds = %cleanup.cont
  %off_dt_struct = getelementptr inbounds i8, i8* %fdt, i64 8
  %0 = bitcast i8* %off_dt_struct to i32*
  %call4 = call fastcc i32 @fdt32_ld(i32* noundef %0) #10
  %size_dt_struct = getelementptr inbounds i8, i8* %fdt, i64 36
  %1 = bitcast i8* %size_dt_struct to i32*
  %call5 = call fastcc i32 @fdt32_ld(i32* noundef %1) #10
  %add = add i32 %call5, %call4
  %conv = zext i32 %add to i64
  %size_dt_strings = getelementptr inbounds i8, i8* %fdt, i64 32
  %2 = bitcast i8* %size_dt_strings to i32*
  %call6 = call fastcc i32 @fdt32_ld(i32* noundef %2) #10
  %conv7 = zext i32 %call6 to i64
  %add9 = add nuw nsw i64 %conv, %conv7
  %totalsize = getelementptr inbounds i8, i8* %fdt, i64 4
  %3 = bitcast i8* %totalsize to i32*
  %call10 = call fastcc i32 @fdt32_ld(i32* noundef %3) #10
  %conv11 = zext i32 %call10 to i64
  %cmp12 = icmp ugt i64 %add9, %conv11
  br i1 %cmp12, label %cleanup40, label %if.end15

if.end15:                                         ; preds = %if.end3
  %conv17 = zext i32 %bufsize to i64
  %cmp18 = icmp ugt i64 %add9, %conv17
  br i1 %cmp18, label %cleanup40, label %if.end21

if.end21:                                         ; preds = %if.end15
  %add.ptr = getelementptr i8, i8* %fdt, i64 %conv11
  %idx.neg = sub nsw i64 0, %conv7
  %add.ptr24 = getelementptr i8, i8* %add.ptr, i64 %idx.neg
  %add.ptr26 = getelementptr i8, i8* %buf, i64 %conv17
  %add.ptr28 = getelementptr i8, i8* %add.ptr26, i64 %idx.neg
  %cmp29.not = icmp ugt i8* %buf, %fdt
  br i1 %cmp29.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end21
  %call32 = call i8* @memmove(i8* noundef %buf, i8* noundef %fdt, i64 noundef %conv) #9
  %call33 = call i8* @memmove(i8* noundef %add.ptr28, i8* noundef %add.ptr24, i64 noundef %conv7) #9
  br label %if.end36

if.else:                                          ; preds = %if.end21
  %call34 = call i8* @memmove(i8* noundef %add.ptr28, i8* noundef %add.ptr24, i64 noundef %conv7) #9
  %call35 = call i8* @memmove(i8* noundef nonnull %buf, i8* noundef %fdt, i64 noundef %conv) #9
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then31
  call fastcc void @fdt_set_totalsize(i8* noundef %buf, i32 noundef %bufsize) #10
  %off_dt_strings = getelementptr inbounds i8, i8* %buf, i64 12
  %4 = bitcast i8* %off_dt_strings to i32*
  %call37 = call fastcc i32 @fdt32_ld(i32* noundef %4) #10
  %tobool.not = icmp eq i32 %call37, 0
  br i1 %tobool.not, label %cleanup40, label %if.then38

if.then38:                                        ; preds = %if.end36
  call fastcc void @fdt_set_off_dt_strings(i8* noundef %buf, i32 noundef %bufsize) #10
  br label %cleanup40

cleanup40:                                        ; preds = %if.end36, %if.then38, %if.end15, %if.end3, %cleanup.cont, %entry
  %retval.1 = phi i32 [ %call, %entry ], [ -3, %cleanup.cont ], [ -13, %if.end3 ], [ -3, %if.end15 ], [ 0, %if.then38 ], [ 0, %if.end36 ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @fdt_sw_probe_(i8* nocapture noundef readonly %fdt) unnamed_addr #5 {
entry:
  %magic = bitcast i8* %fdt to i32*
  %call1 = call fastcc i32 @fdt32_ld(i32* noundef %magic) #10
  %cmp = icmp eq i32 %call1, -804389139
  %cmp5.not = icmp eq i32 %call1, 804389138
  %. = select i1 %cmp5.not, i32 0, i32 -9
  %retval.0 = select i1 %cmp, i32 -7, i32 %.
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memmove(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define dso_local i32 @fdt_add_reservemap_entry(i8* nocapture noundef %fdt, i64 noundef %addr, i64 noundef %size) local_unnamed_addr #6 {
entry:
  %call = call fastcc i32 @fdt_sw_probe_memrsv_(i8* noundef %fdt) #10
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %cleanup.cont, label %cleanup60

cleanup.cont:                                     ; preds = %entry
  %off_dt_struct = getelementptr inbounds i8, i8* %fdt, i64 8
  %0 = bitcast i8* %off_dt_struct to i32*
  %call1 = call fastcc i32 @fdt32_ld(i32* noundef %0) #10
  %conv = sext i32 %call1 to i64
  %add = add nsw i64 %conv, 16
  %totalsize = getelementptr inbounds i8, i8* %fdt, i64 4
  %1 = bitcast i8* %totalsize to i32*
  %call2 = call fastcc i32 @fdt32_ld(i32* noundef %1) #10
  %conv3 = zext i32 %call2 to i64
  %cmp4 = icmp ugt i64 %add, %conv3
  br i1 %cmp4, label %cleanup60, label %if.end7

if.end7:                                          ; preds = %cleanup.cont
  %add.ptr = getelementptr i8, i8* %fdt, i64 %conv
  %call27 = call fastcc i64 @__fswab64(i64 noundef %addr) #11
  %address = bitcast i8* %add.ptr to i64*
  store i64 %call27, i64* %address, align 8
  %call53 = call fastcc i64 @__fswab64(i64 noundef %size) #11
  %size56 = getelementptr inbounds i8, i8* %add.ptr, i64 8
  %2 = bitcast i8* %size56 to i64*
  store i64 %call53, i64* %2, align 8
  %conv59 = trunc i64 %add to i32
  call fastcc void @fdt_set_off_dt_struct(i8* noundef %fdt, i32 noundef %conv59) #10
  br label %cleanup60

cleanup60:                                        ; preds = %cleanup.cont, %entry, %if.end7
  %retval.1 = phi i32 [ 0, %if.end7 ], [ %call, %entry ], [ -3, %cleanup.cont ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @fdt_sw_probe_memrsv_(i8* nocapture noundef readonly %fdt) unnamed_addr #5 {
entry:
  %call = call fastcc i32 @fdt_sw_probe_(i8* noundef %fdt) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %off_dt_strings = getelementptr inbounds i8, i8* %fdt, i64 12
  %0 = bitcast i8* %off_dt_strings to i32*
  %call2 = call fastcc i32 @fdt32_ld(i32* noundef %0) #10
  %cmp.not = icmp eq i32 %call2, 0
  %spec.select = select i1 %cmp.not, i32 0, i32 -7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__fswab64(i64 noundef %val) unnamed_addr #7 {
entry:
  %or19 = call i64 @llvm.bswap.i64(i64 %val)
  ret i64 %or19
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define dso_local i32 @fdt_finish_reservemap(i8* nocapture noundef %fdt) local_unnamed_addr #6 {
entry:
  %call = call i32 @fdt_add_reservemap_entry(i8* noundef %fdt, i64 noundef 0, i64 noundef 0) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %totalsize = getelementptr inbounds i8, i8* %fdt, i64 4
  %0 = bitcast i8* %totalsize to i32*
  %call1 = call fastcc i32 @fdt32_ld(i32* noundef %0) #10
  call fastcc void @fdt_set_off_dt_strings(i8* noundef %fdt, i32 noundef %call1) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_begin_node(i8* noundef %fdt, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @fdt_sw_probe_struct_(i8* noundef %fdt) #10
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %cleanup.cont, label %cleanup11

cleanup.cont:                                     ; preds = %entry
  %call1 = call i64 @strlen(i8* noundef %name) #9
  %conv = shl i64 %call1, 32
  %sext = add i64 %conv, 4294967296
  %conv2 = ashr exact i64 %sext, 32
  %0 = add nsw i64 %conv2, 7
  %add4 = and i64 %0, -4
  %call5 = call fastcc i8* @fdt_grab_space_(i8* noundef %fdt, i64 noundef %add4) #10
  %tobool.not = icmp eq i8* %call5, null
  br i1 %tobool.not, label %cleanup11, label %if.end7

if.end7:                                          ; preds = %cleanup.cont
  %tag = bitcast i8* %call5 to i32*
  store i32 16777216, i32* %tag, align 4
  %name8 = getelementptr inbounds i8, i8* %call5, i64 4
  %call10 = call i8* @memcpy(i8* noundef %name8, i8* noundef %name, i64 noundef %conv2) #9
  br label %cleanup11

cleanup11:                                        ; preds = %cleanup.cont, %entry, %if.end7
  %retval.1 = phi i32 [ 0, %if.end7 ], [ %call, %entry ], [ -3, %cleanup.cont ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @fdt_sw_probe_struct_(i8* nocapture noundef readonly %fdt) unnamed_addr #5 {
entry:
  %call = call fastcc i32 @fdt_sw_probe_(i8* noundef %fdt) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %off_dt_strings = getelementptr inbounds i8, i8* %fdt, i64 12
  %0 = bitcast i8* %off_dt_strings to i32*
  %call2 = call fastcc i32 @fdt32_ld(i32* noundef %0) #10
  %totalsize = getelementptr inbounds i8, i8* %fdt, i64 4
  %1 = bitcast i8* %totalsize to i32*
  %call3 = call fastcc i32 @fdt32_ld(i32* noundef %1) #10
  %cmp.not = icmp eq i32 %call2, %call3
  %spec.select = select i1 %cmp.not, i32 0, i32 -7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i8* @fdt_grab_space_(i8* noundef %fdt, i64 noundef %len) unnamed_addr #6 {
entry:
  %size_dt_struct = getelementptr inbounds i8, i8* %fdt, i64 36
  %0 = bitcast i8* %size_dt_struct to i32*
  %call = call fastcc i32 @fdt32_ld(i32* noundef %0) #10
  %conv = zext i32 %call to i64
  %add = add i64 %conv, %len
  %cmp = icmp ult i64 %add, %conv
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %size_dt_strings = getelementptr inbounds i8, i8* %fdt, i64 32
  %1 = bitcast i8* %size_dt_strings to i32*
  %call3 = call fastcc i32 @fdt32_ld(i32* noundef %1) #10
  %off_dt_struct = getelementptr inbounds i8, i8* %fdt, i64 8
  %2 = bitcast i8* %off_dt_struct to i32*
  %call2 = call fastcc i32 @fdt32_ld(i32* noundef %2) #10
  %totalsize = getelementptr inbounds i8, i8* %fdt, i64 4
  %3 = bitcast i8* %totalsize to i32*
  %call1 = call fastcc i32 @fdt32_ld(i32* noundef %3) #10
  %4 = add i32 %call2, %call3
  %sub4 = sub i32 %call1, %4
  %conv9 = zext i32 %sub4 to i64
  %cmp10 = icmp ugt i64 %add, %conv9
  br i1 %cmp10, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %conv14 = trunc i64 %add to i32
  call fastcc void @fdt_set_size_dt_struct(i8* noundef %fdt, i32 noundef %conv14) #10
  %call15 = call fastcc i8* @fdt_offset_ptr_w_(i8* noundef %fdt, i32 noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i8* [ %call15, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define dso_local i32 @fdt_end_node(i8* noundef %fdt) local_unnamed_addr #6 {
entry:
  %call = call fastcc i32 @fdt_sw_probe_struct_(i8* noundef %fdt) #10
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %cleanup.cont, label %cleanup4

cleanup.cont:                                     ; preds = %entry
  %call1 = call fastcc i8* @fdt_grab_space_(i8* noundef %fdt, i64 noundef 4) #10
  %tobool.not = icmp eq i8* %call1, null
  br i1 %tobool.not, label %cleanup4, label %if.end3

if.end3:                                          ; preds = %cleanup.cont
  %0 = bitcast i8* %call1 to i32*
  store i32 33554432, i32* %0, align 4
  br label %cleanup4

cleanup4:                                         ; preds = %cleanup.cont, %entry, %if.end3
  %retval.1 = phi i32 [ 0, %if.end3 ], [ %call, %entry ], [ -3, %cleanup.cont ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_property_placeholder(i8* noundef %fdt, i8* noundef %name, i32 noundef %len, i8** nocapture noundef writeonly %valp) local_unnamed_addr #0 {
entry:
  %allocated = alloca i32, align 4
  %0 = bitcast i32* %allocated to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  store i32 0, i32* %allocated, align 4, !annotation !7
  %call = call fastcc i32 @fdt_sw_probe_struct_(i8* noundef %fdt) #10
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %cleanup.cont, label %cleanup45

cleanup.cont:                                     ; preds = %entry
  %call1 = call fastcc i32 @sw_flags(i8* noundef %fdt) #10
  %and = and i32 %call1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %cleanup.cont
  store i32 1, i32* %allocated, align 4
  %call3 = call fastcc i32 @fdt_add_string_(i8* noundef %fdt, i8* noundef %name) #10
  br label %if.end5

if.else:                                          ; preds = %cleanup.cont
  %call4 = call fastcc i32 @fdt_find_add_string_(i8* noundef %fdt, i8* noundef %name, i32* noundef nonnull %allocated) #10
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %nameoff.0 = phi i32 [ %call3, %if.then2 ], [ %call4, %if.else ]
  %cmp6 = icmp eq i32 %nameoff.0, 0
  br i1 %cmp6, label %cleanup45, label %if.end8

if.end8:                                          ; preds = %if.end5
  %conv = sext i32 %len to i64
  %1 = add nsw i64 %conv, 15
  %add10 = and i64 %1, -4
  %call11 = call fastcc i8* @fdt_grab_space_(i8* noundef %fdt, i64 noundef %add10) #10
  %tobool12.not = icmp eq i8* %call11, null
  br i1 %tobool12.not, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end8
  %2 = load i32, i32* %allocated, align 4
  %tobool14.not = icmp eq i32 %2, 0
  br i1 %tobool14.not, label %cleanup45, label %if.then15

if.then15:                                        ; preds = %if.then13
  call fastcc void @fdt_del_last_string_(i8* noundef %fdt, i8* noundef %name) #10
  br label %cleanup45

if.end17:                                         ; preds = %if.end8
  %tag = bitcast i8* %call11 to i32*
  store i32 50331648, i32* %tag, align 4
  %call26 = call fastcc i32 @__fswab32(i32 noundef %nameoff.0) #11
  %nameoff27 = getelementptr inbounds i8, i8* %call11, i64 8
  %3 = bitcast i8* %nameoff27 to i32*
  store i32 %call26, i32* %3, align 4
  %call41 = call fastcc i32 @__fswab32(i32 noundef %len) #11
  %len44 = getelementptr inbounds i8, i8* %call11, i64 4
  %4 = bitcast i8* %len44 to i32*
  store i32 %call41, i32* %4, align 4
  %data = getelementptr inbounds i8, i8* %call11, i64 12
  store i8* %data, i8** %valp, align 8
  br label %cleanup45

cleanup45:                                        ; preds = %if.then13, %if.then15, %if.end5, %entry, %if.end17
  %retval.1 = phi i32 [ 0, %if.end17 ], [ %call, %entry ], [ -3, %if.end5 ], [ -3, %if.then15 ], [ -3, %if.then13 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @sw_flags(i8* nocapture noundef readonly %fdt) unnamed_addr #5 {
entry:
  %last_comp_version = getelementptr inbounds i8, i8* %fdt, i64 24
  %0 = bitcast i8* %last_comp_version to i32*
  %call = call fastcc i32 @fdt32_ld(i32* noundef %0) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @fdt_add_string_(i8* noundef %fdt, i8* noundef %s) unnamed_addr #0 {
entry:
  %totalsize = getelementptr inbounds i8, i8* %fdt, i64 4
  %0 = bitcast i8* %totalsize to i32*
  %call = call fastcc i32 @fdt32_ld(i32* noundef %0) #10
  %size_dt_strings = getelementptr inbounds i8, i8* %fdt, i64 32
  %1 = bitcast i8* %size_dt_strings to i32*
  %call1 = call fastcc i32 @fdt32_ld(i32* noundef %1) #10
  %call2 = call i64 @strlen(i8* noundef %s) #9
  %2 = trunc i64 %call2 to i32
  %conv = add i32 %2, 1
  %add3 = add i32 %conv, %call1
  %off_dt_struct = getelementptr inbounds i8, i8* %fdt, i64 8
  %3 = bitcast i8* %off_dt_struct to i32*
  %call4 = call fastcc i32 @fdt32_ld(i32* noundef %3) #10
  %size_dt_struct = getelementptr inbounds i8, i8* %fdt, i64 36
  %4 = bitcast i8* %size_dt_struct to i32*
  %call5 = call fastcc i32 @fdt32_ld(i32* noundef %4) #10
  %add6 = add i32 %call5, %call4
  %call8 = call fastcc i32 @fdt32_ld(i32* noundef %0) #10
  %sub = sub i32 %call8, %add3
  %cmp = icmp ult i32 %sub, %add6
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %idx.ext = zext i32 %call to i64
  %add.ptr = getelementptr i8, i8* %fdt, i64 %idx.ext
  %idx.ext10 = zext i32 %add3 to i64
  %idx.neg = sub nsw i64 0, %idx.ext10
  %add.ptr11 = getelementptr i8, i8* %add.ptr, i64 %idx.neg
  %conv12 = zext i32 %conv to i64
  %call13 = call i8* @memcpy(i8* noundef %add.ptr11, i8* noundef %s, i64 noundef %conv12) #9
  call fastcc void @fdt_set_size_dt_strings(i8* noundef %fdt, i32 noundef %add3) #10
  %sub15 = sub i32 0, %add3
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %sub15, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @fdt_find_add_string_(i8* noundef %fdt, i8* noundef %s, i32* nocapture noundef writeonly %allocated) unnamed_addr #0 {
entry:
  %totalsize = getelementptr inbounds i8, i8* %fdt, i64 4
  %0 = bitcast i8* %totalsize to i32*
  %call = call fastcc i32 @fdt32_ld(i32* noundef %0) #10
  %idx.ext = zext i32 %call to i64
  %add.ptr = getelementptr i8, i8* %fdt, i64 %idx.ext
  %size_dt_strings = getelementptr inbounds i8, i8* %fdt, i64 32
  %1 = bitcast i8* %size_dt_strings to i32*
  %call1 = call fastcc i32 @fdt32_ld(i32* noundef %1) #10
  store i32 0, i32* %allocated, align 4
  %idx.ext2 = sext i32 %call1 to i64
  %idx.neg = sub nsw i64 0, %idx.ext2
  %add.ptr3 = getelementptr i8, i8* %add.ptr, i64 %idx.neg
  %call4 = call i8* @fdt_find_string_(i8* noundef %add.ptr3, i32 noundef %call1, i8* noundef %s) #9
  %tobool.not = icmp eq i8* %call4, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint i8* %call4 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 1, i32* %allocated, align 4
  %call5 = call fastcc i32 @fdt_add_string_(i8* noundef %fdt, i8* noundef %s) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %call5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fdt_del_last_string_(i8* nocapture noundef %fdt, i8* noundef %s) unnamed_addr #0 {
entry:
  %size_dt_strings = getelementptr inbounds i8, i8* %fdt, i64 32
  %0 = bitcast i8* %size_dt_strings to i32*
  %call = call fastcc i32 @fdt32_ld(i32* noundef %0) #10
  %call1 = call i64 @strlen(i8* noundef %s) #9
  %1 = trunc i64 %call1 to i32
  %conv.neg = xor i32 %1, -1
  %sub = add i32 %call, %conv.neg
  call fastcc void @fdt_set_size_dt_strings(i8* noundef %fdt, i32 noundef %sub) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__fswab32(i32 noundef %val) unnamed_addr #7 {
entry:
  %or7 = call i32 @llvm.bswap.i32(i32 %val)
  ret i32 %or7
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_property(i8* noundef %fdt, i8* noundef %name, i8* noundef %val, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %ptr = alloca i8*, align 8
  %0 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store i8* null, i8** %ptr, align 8, !annotation !7
  %call = call i32 @fdt_property_placeholder(i8* noundef %fdt, i8* noundef %name, i32 noundef %len, i8** noundef nonnull %ptr) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %ptr, align 8
  %conv = sext i32 %len to i64
  %call1 = call i8* @memcpy(i8* noundef %1, i8* noundef %val, i64 noundef %conv) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_finish(i8* noundef %fdt) local_unnamed_addr #0 {
entry:
  %nextoffset = alloca i32, align 4
  %0 = bitcast i32* %nextoffset to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  store i32 0, i32* %nextoffset, align 4, !annotation !7
  %call = call fastcc i32 @fdt_sw_probe_struct_(i8* noundef %fdt) #10
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %cleanup.cont, label %cleanup62

cleanup.cont:                                     ; preds = %entry
  %call1 = call fastcc i8* @fdt_grab_space_(i8* noundef %fdt, i64 noundef 4) #10
  %tobool.not = icmp eq i8* %call1, null
  br i1 %tobool.not, label %cleanup62, label %if.end3

if.end3:                                          ; preds = %cleanup.cont
  %1 = bitcast i8* %call1 to i32*
  store i32 150994944, i32* %1, align 4
  %totalsize = getelementptr inbounds i8, i8* %fdt, i64 4
  %2 = bitcast i8* %totalsize to i32*
  %call4 = call fastcc i32 @fdt32_ld(i32* noundef %2) #10
  %size_dt_strings = getelementptr inbounds i8, i8* %fdt, i64 32
  %3 = bitcast i8* %size_dt_strings to i32*
  %call5 = call fastcc i32 @fdt32_ld(i32* noundef %3) #10
  %sub = sub i32 %call4, %call5
  %off_dt_struct = getelementptr inbounds i8, i8* %fdt, i64 8
  %4 = bitcast i8* %off_dt_struct to i32*
  %call6 = call fastcc i32 @fdt32_ld(i32* noundef %4) #10
  %size_dt_struct = getelementptr inbounds i8, i8* %fdt, i64 36
  %5 = bitcast i8* %size_dt_struct to i32*
  %call7 = call fastcc i32 @fdt32_ld(i32* noundef %5) #10
  %add = add i32 %call7, %call6
  %idx.ext = sext i32 %add to i64
  %add.ptr = getelementptr i8, i8* %fdt, i64 %idx.ext
  %idx.ext8 = sext i32 %sub to i64
  %add.ptr9 = getelementptr i8, i8* %fdt, i64 %idx.ext8
  %conv = zext i32 %call5 to i64
  %call12 = call i8* @memmove(i8* noundef %add.ptr, i8* noundef %add.ptr9, i64 noundef %conv) #9
  call fastcc void @fdt_set_off_dt_strings(i8* noundef %fdt, i32 noundef %add) #10
  br label %while.cond

while.cond:                                       ; preds = %if.end54, %if.end3
  %offset.0 = phi i32 [ 0, %if.end3 ], [ %8, %if.end54 ]
  %call13 = call i32 @fdt_next_tag(i8* noundef %fdt, i32 noundef %offset.0, i32* noundef nonnull %nextoffset) #9
  switch i32 %call13, label %if.end54 [
    i32 9, label %while.end
    i32 3, label %if.then18
  ]

if.then18:                                        ; preds = %while.cond
  %call19 = call fastcc i8* @fdt_offset_ptr_w_(i8* noundef %fdt, i32 noundef %offset.0) #10
  %nameoff20 = getelementptr inbounds i8, i8* %call19, i64 8
  %6 = bitcast i8* %nameoff20 to i32*
  %call35 = call fastcc i32 @fdt32_ld(i32* noundef %3) #10
  %7 = load i32, i32* %6, align 4
  %call33 = call fastcc i32 @__fswab32(i32 noundef %7) #11
  %add36 = add i32 %call35, %call33
  %call50 = call fastcc i32 @__fswab32(i32 noundef %add36) #11
  store i32 %call50, i32* %6, align 4
  br label %if.end54

if.end54:                                         ; preds = %while.cond, %if.then18
  %8 = load i32, i32* %nextoffset, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load i32, i32* %nextoffset, align 4
  %cmp55 = icmp slt i32 %9, 0
  br i1 %cmp55, label %cleanup62, label %if.end58

if.end58:                                         ; preds = %while.end
  %call60 = call fastcc i32 @fdt32_ld(i32* noundef %3) #10
  %add61 = add i32 %call60, %add
  call fastcc void @fdt_set_totalsize(i8* noundef %fdt, i32 noundef %add61) #10
  call fastcc void @fdt_set_last_comp_version(i8* noundef %fdt, i32 noundef 16) #10
  call fastcc void @fdt_set_magic(i8* noundef %fdt, i32 noundef -804389139) #10
  br label %cleanup62

cleanup62:                                        ; preds = %while.end, %cleanup.cont, %entry, %if.end58
  %retval.1 = phi i32 [ 0, %if.end58 ], [ %call, %entry ], [ -3, %cleanup.cont ], [ %9, %while.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_next_tag(i8* noundef, i32 noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @fdt_offset_ptr_w_(i8* noundef readonly %fdt, i32 noundef %offset) unnamed_addr #5 {
entry:
  %call = call fastcc i8* @fdt_offset_ptr_(i8* noundef %fdt, i32 noundef %offset) #10
  ret i8* %call
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @fdt_set_size_dt_struct(i8* nocapture noundef writeonly %fdt, i32 noundef %val) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @__fswab32(i32 noundef %val) #11
  %size_dt_struct = getelementptr inbounds i8, i8* %fdt, i64 36
  %0 = bitcast i8* %size_dt_struct to i32*
  store i32 %call, i32* %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @fdt_set_size_dt_strings(i8* nocapture noundef writeonly %fdt, i32 noundef %val) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @__fswab32(i32 noundef %val) #11
  %size_dt_strings = getelementptr inbounds i8, i8* %fdt, i64 32
  %0 = bitcast i8* %size_dt_strings to i32*
  store i32 %call, i32* %0, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @fdt_find_string_(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @fdt_offset_ptr_(i8* noundef readonly %fdt, i32 noundef %offset) unnamed_addr #5 {
entry:
  %off_dt_struct = getelementptr inbounds i8, i8* %fdt, i64 8
  %0 = bitcast i8* %off_dt_struct to i32*
  %call = call fastcc i32 @fdt32_ld(i32* noundef %0) #10
  %idx.ext = zext i32 %call to i64
  %add.ptr = getelementptr i8, i8* %fdt, i64 %idx.ext
  %idx.ext1 = sext i32 %offset to i64
  %add.ptr2 = getelementptr i8, i8* %add.ptr, i64 %idx.ext1
  ret i8* %add.ptr2
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #8

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #12 = { nounwind }

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
