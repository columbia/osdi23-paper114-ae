; ModuleID = 'lib/fdt.c'
source_filename = "lib/fdt.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @fdt_ro_probe_(i8* noundef %fdt) local_unnamed_addr #0 {
entry:
  %totalsize1 = getelementptr inbounds i8, i8* %fdt, i64 4
  %0 = bitcast i8* %totalsize1 to i32*
  %call = call fastcc i32 @fdt32_ld(i32* noundef %0) #8
  %1 = ptrtoint i8* %fdt to i64
  %and = and i64 %1, 7
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %entry
  %magic = bitcast i8* %fdt to i32*
  %call5 = call fastcc i32 @fdt32_ld(i32* noundef %magic) #8
  switch i32 %call5, label %cleanup [
    i32 -804389139, label %if.then6
    i32 804389138, label %if.then21
  ]

if.then6:                                         ; preds = %if.end4
  %version = getelementptr inbounds i8, i8* %fdt, i64 20
  %2 = bitcast i8* %version to i32*
  %call9 = call fastcc i32 @fdt32_ld(i32* noundef %2) #8
  %cmp10 = icmp ult i32 %call9, 2
  br i1 %cmp10, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.then6
  %last_comp_version = getelementptr inbounds i8, i8* %fdt, i64 24
  %3 = bitcast i8* %last_comp_version to i32*
  %call13 = call fastcc i32 @fdt32_ld(i32* noundef %3) #8
  %cmp14 = icmp ugt i32 %call13, 17
  br i1 %cmp14, label %cleanup, label %if.end29

if.then21:                                        ; preds = %if.end4
  %size_dt_struct = getelementptr inbounds i8, i8* %fdt, i64 36
  %4 = bitcast i8* %size_dt_struct to i32*
  %call23 = call fastcc i32 @fdt32_ld(i32* noundef %4) #8
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %cleanup, label %if.end29

if.end29:                                         ; preds = %if.then21, %if.end12
  %cmp30 = icmp ult i32 %call, 2147483647
  %call. = select i1 %cmp30, i32 %call, i32 -8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end29, %if.then21, %if.end12, %if.then6, %entry
  %retval.0 = phi i32 [ -19, %entry ], [ -10, %if.then6 ], [ -10, %if.end12 ], [ -7, %if.then21 ], [ %call., %if.end29 ], [ -9, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @fdt32_ld(i32* nocapture noundef readonly %p) unnamed_addr #0 {
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

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i64 @fdt_header_size_(i32 noundef %version) local_unnamed_addr #2 {
entry:
  %cmp = icmp ult i32 %version, 2
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %version, 2
  br i1 %cmp1, label %return, label %if.else3

if.else3:                                         ; preds = %if.else
  %cmp4 = icmp ult i32 %version, 4
  br i1 %cmp4, label %return, label %if.else6

if.else6:                                         ; preds = %if.else3
  %cmp7 = icmp ult i32 %version, 17
  %. = select i1 %cmp7, i64 36, i64 40
  br label %return

return:                                           ; preds = %if.else6, %if.else3, %if.else, %entry
  %retval.0 = phi i64 [ 28, %entry ], [ 32, %if.else ], [ 36, %if.else3 ], [ %., %if.else6 ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i64 @fdt_header_size(i8* nocapture noundef readonly %fdt) local_unnamed_addr #0 {
entry:
  %version = getelementptr inbounds i8, i8* %fdt, i64 20
  %0 = bitcast i8* %version to i32*
  %call1 = call fastcc i32 @fdt32_ld(i32* noundef %0) #8
  %call2 = call i64 @fdt_header_size_(i32 noundef %call1) #8
  ret i64 %call2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @fdt_check_header(i8* nocapture noundef readonly %fdt) local_unnamed_addr #0 {
entry:
  %magic = bitcast i8* %fdt to i32*
  %call = call fastcc i32 @fdt32_ld(i32* noundef %magic) #8
  %cmp.not = icmp eq i32 %call, -804389139
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %version = getelementptr inbounds i8, i8* %fdt, i64 20
  %0 = bitcast i8* %version to i32*
  %call3 = call fastcc i32 @fdt32_ld(i32* noundef %0) #8
  %cmp4 = icmp ult i32 %call3, 2
  br i1 %cmp4, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %last_comp_version = getelementptr inbounds i8, i8* %fdt, i64 24
  %1 = bitcast i8* %last_comp_version to i32*
  %call5 = call fastcc i32 @fdt32_ld(i32* noundef %1) #8
  %cmp6 = icmp ugt i32 %call5, 17
  %cmp13 = icmp ult i32 %call3, %call5
  %or.cond = select i1 %cmp6, i1 true, i1 %cmp13
  br i1 %or.cond, label %cleanup, label %if.end16

if.end16:                                         ; preds = %lor.lhs.false
  %call17 = call i64 @fdt_header_size(i8* noundef %fdt) #8
  %totalsize = getelementptr inbounds i8, i8* %fdt, i64 4
  %2 = bitcast i8* %totalsize to i32*
  %call20 = call fastcc i32 @fdt32_ld(i32* noundef %2) #8
  %conv = zext i32 %call20 to i64
  %cmp21 = icmp ugt i64 %call17, %conv
  %cmp26 = icmp slt i32 %call20, 0
  %or.cond98 = or i1 %cmp26, %cmp21
  br i1 %or.cond98, label %cleanup, label %if.end29

if.end29:                                         ; preds = %if.end16
  %conv30 = trunc i64 %call17 to i32
  %off_mem_rsvmap = getelementptr inbounds i8, i8* %fdt, i64 16
  %3 = bitcast i8* %off_mem_rsvmap to i32*
  %call33 = call fastcc i32 @fdt32_ld(i32* noundef %3) #8
  %call34 = call fastcc i32 @check_off_(i32 noundef %conv30, i32 noundef %call20, i32 noundef %call33) #8
  %tobool.not = icmp eq i32 %call34, 0
  br i1 %tobool.not, label %cleanup, label %if.end37

if.end37:                                         ; preds = %if.end29
  %cmp43 = icmp ult i32 %call3, 17
  %off_dt_struct = getelementptr inbounds i8, i8* %fdt, i64 8
  %4 = bitcast i8* %off_dt_struct to i32*
  %call49 = call fastcc i32 @fdt32_ld(i32* noundef %4) #8
  br i1 %cmp43, label %if.then45, label %if.else

if.then45:                                        ; preds = %if.end37
  %call50 = call fastcc i32 @check_off_(i32 noundef %conv30, i32 noundef %call20, i32 noundef %call49) #8
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %cleanup, label %if.end64

if.else:                                          ; preds = %if.end37
  %size_dt_struct = getelementptr inbounds i8, i8* %fdt, i64 36
  %5 = bitcast i8* %size_dt_struct to i32*
  %call59 = call fastcc i32 @fdt32_ld(i32* noundef %5) #8
  %call60 = call fastcc i32 @check_block_(i32 noundef %conv30, i32 noundef %call20, i32 noundef %call49, i32 noundef %call59) #8
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %cleanup, label %if.end64

if.end64:                                         ; preds = %if.else, %if.then45
  %off_dt_strings = getelementptr inbounds i8, i8* %fdt, i64 12
  %6 = bitcast i8* %off_dt_strings to i32*
  %call68 = call fastcc i32 @fdt32_ld(i32* noundef %6) #8
  %size_dt_strings = getelementptr inbounds i8, i8* %fdt, i64 32
  %7 = bitcast i8* %size_dt_strings to i32*
  %call69 = call fastcc i32 @fdt32_ld(i32* noundef %7) #8
  %call70 = call fastcc i32 @check_block_(i32 noundef %conv30, i32 noundef %call20, i32 noundef %call68, i32 noundef %call69) #8
  %tobool71.not = icmp eq i32 %call70, 0
  %. = select i1 %tobool71.not, i32 -8, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.else, %if.then45, %if.end29, %if.end16, %if.end, %lor.lhs.false, %entry
  %retval.0 = phi i32 [ -9, %entry ], [ -10, %lor.lhs.false ], [ -10, %if.end ], [ -8, %if.end16 ], [ -8, %if.end29 ], [ -8, %if.then45 ], [ -8, %if.else ], [ %., %if.end64 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @check_off_(i32 noundef %hdrsize, i32 noundef %totalsize, i32 noundef %off) unnamed_addr #2 {
entry:
  %cmp = icmp uge i32 %off, %hdrsize
  %cmp1 = icmp ule i32 %off, %totalsize
  %0 = and i1 %cmp, %cmp1
  %land.ext = zext i1 %0 to i32
  ret i32 %land.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @check_block_(i32 noundef %hdrsize, i32 noundef %totalsize, i32 noundef %base, i32 noundef %size) unnamed_addr #2 {
entry:
  %call = call fastcc i32 @check_off_(i32 noundef %hdrsize, i32 noundef %totalsize, i32 noundef %base) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %add = add i32 %size, %base
  %cmp = icmp ult i32 %add, %base
  br i1 %cmp, label %return, label %if.end2

if.end2:                                          ; preds = %if.end
  %call4 = call fastcc i32 @check_off_(i32 noundef %hdrsize, i32 noundef %totalsize, i32 noundef %add) #8
  %tobool5.not = icmp ne i32 %call4, 0
  %. = zext i1 %tobool5.not to i32
  br label %return

return:                                           ; preds = %if.end2, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ %., %if.end2 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i8* @fdt_offset_ptr(i8* noundef readonly %fdt, i32 noundef %offset, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %off_dt_struct = getelementptr inbounds i8, i8* %fdt, i64 8
  %0 = bitcast i8* %off_dt_struct to i32*
  %call = call fastcc i32 @fdt32_ld(i32* noundef %0) #8
  %add = add i32 %call, %offset
  %cmp = icmp slt i32 %offset, 0
  %cmp3 = icmp ult i32 %add, %offset
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  br i1 %or.cond, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %add4 = add i32 %add, %len
  %cmp5 = icmp ult i32 %add4, %add
  br i1 %cmp5, label %cleanup, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %totalsize = getelementptr inbounds i8, i8* %fdt, i64 4
  %1 = bitcast i8* %totalsize to i32*
  %call8 = call fastcc i32 @fdt32_ld(i32* noundef %1) #8
  %cmp9 = icmp ugt i32 %add4, %call8
  br i1 %cmp9, label %cleanup, label %if.end12

if.end12:                                         ; preds = %lor.lhs.false6
  %version = getelementptr inbounds i8, i8* %fdt, i64 20
  %2 = bitcast i8* %version to i32*
  %call15 = call fastcc i32 @fdt32_ld(i32* noundef %2) #8
  %cmp16 = icmp ugt i32 %call15, 16
  br i1 %cmp16, label %if.then17, label %if.end26

if.then17:                                        ; preds = %if.end12
  %add18 = add i32 %len, %offset
  %cmp19 = icmp ult i32 %add18, %offset
  br i1 %cmp19, label %cleanup, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.then17
  %size_dt_struct = getelementptr inbounds i8, i8* %fdt, i64 36
  %3 = bitcast i8* %size_dt_struct to i32*
  %call22 = call fastcc i32 @fdt32_ld(i32* noundef %3) #8
  %cmp23 = icmp ugt i32 %add18, %call22
  br i1 %cmp23, label %cleanup, label %if.end26

if.end26:                                         ; preds = %lor.lhs.false20, %if.end12
  %call27 = call fastcc i8* @fdt_offset_ptr_(i8* noundef %fdt, i32 noundef %offset) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %lor.lhs.false20, %lor.lhs.false, %lor.lhs.false6, %entry, %if.end26
  %retval.0 = phi i8* [ %call27, %if.end26 ], [ null, %entry ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false20 ], [ null, %if.then17 ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @fdt_offset_ptr_(i8* noundef readonly %fdt, i32 noundef %offset) unnamed_addr #0 {
entry:
  %off_dt_struct = getelementptr inbounds i8, i8* %fdt, i64 8
  %0 = bitcast i8* %off_dt_struct to i32*
  %call = call fastcc i32 @fdt32_ld(i32* noundef %0) #8
  %idx.ext = zext i32 %call to i64
  %add.ptr = getelementptr i8, i8* %fdt, i64 %idx.ext
  %idx.ext1 = sext i32 %offset to i64
  %add.ptr2 = getelementptr i8, i8* %add.ptr, i64 %idx.ext1
  ret i8* %add.ptr2
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define dso_local i32 @fdt_next_tag(i8* noundef readonly %fdt, i32 noundef %startoffset, i32* nocapture noundef writeonly %nextoffset) local_unnamed_addr #3 {
entry:
  store i32 -8, i32* %nextoffset, align 4
  %call = call i8* @fdt_offset_ptr(i8* noundef %fdt, i32 noundef %startoffset, i32 noundef 4) #8
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %cond.false

cond.false:                                       ; preds = %entry
  %0 = bitcast i8* %call to i32*
  %1 = load i32, i32* %0, align 4
  %call9 = call fastcc i32 @__fswab32(i32 noundef %1) #9
  %add = add i32 %startoffset, 4
  store i32 -11, i32* %nextoffset, align 4
  switch i32 %call9, label %cleanup [
    i32 1, label %do.body
    i32 3, label %sw.bb20
    i32 9, label %sw.epilog
    i32 2, label %sw.epilog
    i32 4, label %sw.epilog
  ]

do.body:                                          ; preds = %cond.false, %land.rhs
  %offset.0 = phi i32 [ %inc, %land.rhs ], [ %add, %cond.false ]
  %inc = add i32 %offset.0, 1
  %call11 = call i8* @fdt_offset_ptr(i8* noundef %fdt, i32 noundef %offset.0, i32 noundef 1) #8
  %tobool12.not = icmp eq i8* %call11, null
  br i1 %tobool12.not, label %cleanup, label %land.rhs

land.rhs:                                         ; preds = %do.body
  %2 = load i8, i8* %call11, align 1
  %cmp.not = icmp eq i8 %2, 0
  br i1 %cmp.not, label %sw.epilog, label %do.body

sw.bb20:                                          ; preds = %cond.false
  %call21 = call i8* @fdt_offset_ptr(i8* noundef %fdt, i32 noundef %add, i32 noundef 4) #8
  %tobool24.not = icmp eq i8* %call21, null
  br i1 %tobool24.not, label %cleanup, label %if.end26

if.end26:                                         ; preds = %sw.bb20
  %3 = bitcast i8* %call21 to i32*
  %4 = load i32, i32* %3, align 4
  %call40 = call fastcc i32 @__fswab32(i32 noundef %4) #9
  %add44 = add i32 %startoffset, 12
  %add46 = add i32 %add44, %call40
  %version = getelementptr inbounds i8, i8* %fdt, i64 20
  %5 = bitcast i8* %version to i32*
  %call50 = call fastcc i32 @fdt32_ld(i32* noundef %5) #8
  %cmp51 = icmp ult i32 %call50, 16
  br i1 %cmp51, label %cond.end68.thread, label %sw.epilog

cond.end68.thread:                                ; preds = %if.end26
  %call67 = call fastcc i32 @__fswab32(i32 noundef %4) #9
  %cmp70160 = icmp ugt i32 %call67, 7
  br i1 %cmp70160, label %cond.end87, label %sw.epilog

cond.end87:                                       ; preds = %cond.end68.thread
  %sub = sub i32 %add46, %call67
  %rem = and i32 %sub, 7
  %cmp89.not = icmp eq i32 %rem, 0
  %add92 = add i32 %add46, 4
  %spec.select = select i1 %cmp89.not, i32 %add46, i32 %add92
  br label %sw.epilog

sw.epilog:                                        ; preds = %land.rhs, %cond.end68.thread, %cond.end87, %cond.false, %cond.false, %cond.false, %if.end26
  %offset.1 = phi i32 [ %add, %cond.false ], [ %add, %cond.false ], [ %add, %cond.false ], [ %add46, %if.end26 ], [ %spec.select, %cond.end87 ], [ %add46, %cond.end68.thread ], [ %inc, %land.rhs ]
  %sub95 = sub i32 %offset.1, %startoffset
  %call96 = call i8* @fdt_offset_ptr(i8* noundef %fdt, i32 noundef %startoffset, i32 noundef %sub95) #8
  %tobool97.not = icmp eq i8* %call96, null
  br i1 %tobool97.not, label %cleanup, label %if.end99

if.end99:                                         ; preds = %sw.epilog
  %sub102 = add i32 %offset.1, 3
  %and103 = and i32 %sub102, -4
  store i32 %and103, i32* %nextoffset, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %sw.epilog, %cond.false, %sw.bb20, %entry, %if.end99
  %retval.0 = phi i32 [ %call9, %if.end99 ], [ 9, %entry ], [ 9, %sw.bb20 ], [ 9, %cond.false ], [ 9, %sw.epilog ], [ 9, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__fswab32(i32 noundef %val) unnamed_addr #4 {
entry:
  %or7 = call i32 @llvm.bswap.i32(i32 %val)
  ret i32 %or7
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define dso_local i32 @fdt_check_node_offset_(i8* noundef %fdt, i32 noundef %offset) local_unnamed_addr #3 {
entry:
  %offset.addr = alloca i32, align 4
  store i32 %offset, i32* %offset.addr, align 4
  %0 = and i32 %offset, -2147483645
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @fdt_next_tag(i8* noundef %fdt, i32 noundef %offset, i32* noundef nonnull %offset.addr) #8
  %cmp2.not = icmp eq i32 %call1, 1
  %2 = load i32, i32* %offset.addr, align 4
  %spec.select = select i1 %cmp2.not, i32 %2, i32 -4
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ -4, %entry ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define dso_local i32 @fdt_check_prop_offset_(i8* noundef %fdt, i32 noundef %offset) local_unnamed_addr #3 {
entry:
  %offset.addr = alloca i32, align 4
  store i32 %offset, i32* %offset.addr, align 4
  %0 = and i32 %offset, -2147483645
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @fdt_next_tag(i8* noundef %fdt, i32 noundef %offset, i32* noundef nonnull %offset.addr) #8
  %cmp2.not = icmp eq i32 %call1, 3
  %2 = load i32, i32* %offset.addr, align 4
  %spec.select = select i1 %cmp2.not, i32 %2, i32 -4
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ -4, %entry ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define dso_local i32 @fdt_next_node(i8* noundef %fdt, i32 noundef %offset, i32* noundef %depth) local_unnamed_addr #3 {
entry:
  %nextoffset = alloca i32, align 4
  %0 = bitcast i32* %nextoffset to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  store i32 0, i32* %nextoffset, align 4
  %cmp = icmp sgt i32 %offset, -1
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %call = call i32 @fdt_check_node_offset_(i8* noundef %fdt, i32 noundef %offset) #8
  store i32 %call, i32* %nextoffset, align 4
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.then, %entry
  %1 = phi i32 [ %call, %if.then ], [ 0, %entry ]
  %tobool9.not = icmp eq i32* %depth, null
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %if.end3
  %2 = phi i32 [ %.pre, %do.body.backedge ], [ %1, %if.end3 ]
  %call4 = call i32 @fdt_next_tag(i8* noundef %fdt, i32 noundef %2, i32* noundef nonnull %nextoffset) #8
  switch i32 %call4, label %do.body.backedge [
    i32 9, label %sw.bb13
    i32 2, label %sw.bb8
    i32 1, label %sw.bb5
  ]

do.body.backedge:                                 ; preds = %sw.bb8, %land.lhs.true, %do.body
  %.pre = load i32, i32* %nextoffset, align 4
  br label %do.body

sw.bb5:                                           ; preds = %do.body
  br i1 %tobool9.not, label %cleanup, label %if.then6

if.then6:                                         ; preds = %sw.bb5
  %3 = load i32, i32* %depth, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* %depth, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %do.body
  br i1 %tobool9.not, label %do.body.backedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb8
  %4 = load i32, i32* %depth, align 4
  %dec = add i32 %4, -1
  store i32 %dec, i32* %depth, align 4
  %cmp10 = icmp slt i32 %dec, 0
  br i1 %cmp10, label %if.then11, label %do.body.backedge

if.then11:                                        ; preds = %land.lhs.true
  %5 = load i32, i32* %nextoffset, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %do.body
  %6 = load i32, i32* %nextoffset, align 4
  %cmp14 = icmp sgt i32 %6, -1
  br i1 %cmp14, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb13
  %cmp15 = icmp ne i32 %6, -8
  %tobool17 = icmp ne i32* %depth, null
  %or.cond = or i1 %tobool17, %cmp15
  %spec.select = select i1 %or.cond, i32 %6, i32 -1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb5, %if.then6, %lor.lhs.false, %sw.bb13, %if.then, %if.then11
  %retval.0 = phi i32 [ %5, %if.then11 ], [ %call, %if.then ], [ -1, %sw.bb13 ], [ %spec.select, %lor.lhs.false ], [ %2, %if.then6 ], [ %2, %sw.bb5 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define dso_local i32 @fdt_first_subnode(i8* noundef %fdt, i32 noundef %offset) local_unnamed_addr #3 {
entry:
  %depth = alloca i32, align 4
  %0 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  store i32 0, i32* %depth, align 4
  %call = call i32 @fdt_next_node(i8* noundef %fdt, i32 noundef %offset, i32* noundef nonnull %depth) #8
  %cmp = icmp slt i32 %call, 0
  %1 = load i32, i32* %depth, align 4
  %cmp1 = icmp ne i32 %1, 1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  %.call = select i1 %or.cond, i32 -1, i32 %call
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i32 %.call
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define dso_local i32 @fdt_next_subnode(i8* noundef %fdt, i32 noundef %offset) local_unnamed_addr #3 {
entry:
  %depth = alloca i32, align 4
  %0 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  store i32 1, i32* %depth, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %offset.addr.0 = phi i32 [ %offset, %entry ], [ %call, %do.cond ]
  %call = call i32 @fdt_next_node(i8* noundef %fdt, i32 noundef %offset.addr.0, i32* noundef nonnull %depth) #8
  %cmp = icmp slt i32 %call, 0
  %1 = load i32, i32* %depth, align 4
  %cmp1 = icmp slt i32 %1, 1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %cleanup, label %do.cond

do.cond:                                          ; preds = %do.body
  %cmp2 = icmp ugt i32 %1, 1
  br i1 %cmp2, label %do.body, label %cleanup

cleanup:                                          ; preds = %do.cond, %do.body
  %retval.0 = phi i32 [ -1, %do.body ], [ %call, %do.cond ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @fdt_find_string_(i8* noundef %strtab, i32 noundef %tabsize, i8* noundef %s) local_unnamed_addr #5 {
entry:
  %call = call i64 @strlen(i8* noundef %s) #11
  %idx.ext = sext i32 %tabsize to i64
  %add.ptr = getelementptr i8, i8* %strtab, i64 %idx.ext
  %conv = shl i64 %call, 32
  %sext = add i64 %conv, 4294967296
  %idx.ext1 = ashr exact i64 %sext, 32
  %idx.neg = sub nsw i64 0, %idx.ext1
  %add.ptr2 = getelementptr i8, i8* %add.ptr, i64 %idx.neg
  %cmp.not19 = icmp ult i8* %add.ptr2, %strtab
  br i1 %cmp.not19, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %p.020 = phi i8* [ %incdec.ptr, %for.inc ], [ %strtab, %entry ]
  %call5 = call i32 @memcmp(i8* noundef %p.020, i8* noundef %s, i64 noundef %idx.ext1) #11
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr i8, i8* %p.020, i64 1
  %cmp.not = icmp ugt i8* %incdec.ptr, %add.ptr2
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.body, %for.inc, %entry
  %retval.0 = phi i8* [ null, %entry ], [ null, %for.inc ], [ %p.020, %for.body ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_move(i8* noundef %fdt, i8* noundef %buf, i32 noundef %bufsize) local_unnamed_addr #5 {
entry:
  %cmp = icmp slt i32 %bufsize, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @fdt_ro_probe_(i8* noundef %fdt) #8
  %cmp2 = icmp sgt i32 %call1, -1
  br i1 %cmp2, label %cleanup.cont, label %return

cleanup.cont:                                     ; preds = %if.end
  %totalsize = getelementptr inbounds i8, i8* %fdt, i64 4
  %0 = bitcast i8* %totalsize to i32*
  %call5 = call fastcc i32 @fdt32_ld(i32* noundef %0) #8
  %cmp6 = icmp ugt i32 %call5, %bufsize
  br i1 %cmp6, label %return, label %if.end8

if.end8:                                          ; preds = %cleanup.cont
  %conv = zext i32 %call5 to i64
  %call11 = call i8* @memmove(i8* noundef %buf, i8* noundef %fdt, i64 noundef %conv) #11
  br label %return

return:                                           ; preds = %if.end, %cleanup.cont, %entry, %if.end8
  %retval.1 = phi i32 [ %call1, %if.end ], [ 0, %if.end8 ], [ -3, %entry ], [ -3, %cleanup.cont ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memmove(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { nofree noinline nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
