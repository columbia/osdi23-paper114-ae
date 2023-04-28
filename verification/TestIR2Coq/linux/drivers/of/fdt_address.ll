; ModuleID = 'drivers/of/fdt_address.c'
source_filename = "drivers/of/fdt_address.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@initial_boot_params = external dso_local local_unnamed_addr global i8*, align 8
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"\013OF: fdt: warning: device tree node '%s' has no address.\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"\013OF: fdt: Bad cell count for %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@dt_root_addr_cells = external dso_local local_unnamed_addr global i32, section ".init.data", align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@dt_root_size_cells = external dso_local local_unnamed_addr global i32, section ".init.data", align 4

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i64 @of_flat_dt_translate_address(i64 noundef %node) local_unnamed_addr #0 section ".init.text" {
entry:
  %0 = load i8*, i8** @initial_boot_params, align 8
  %conv = trunc i64 %node to i32
  %call = call fastcc i64 @fdt_translate_address(i8* noundef %0, i32 noundef %conv) #9
  ret i64 %call
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i64 @fdt_translate_address(i8* noundef %blob, i32 noundef %node_offset) unnamed_addr #0 section ".init.text" {
entry:
  %len = alloca i32, align 4
  %addr = alloca [4 x i32], align 4
  %na = alloca i32, align 4
  %ns = alloca i32, align 4
  %pna = alloca i32, align 4
  %pns = alloca i32, align 4
  %0 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  store i32 0, i32* %len, align 4, !annotation !7
  %1 = bitcast [4 x i32]* %addr to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !7
  %2 = bitcast i32* %na to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #10
  store i32 0, i32* %na, align 4, !annotation !7
  %3 = bitcast i32* %ns to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #10
  store i32 0, i32* %ns, align 4, !annotation !7
  %4 = bitcast i32* %pna to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #10
  store i32 0, i32* %pna, align 4, !annotation !7
  %5 = bitcast i32* %pns to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #10
  store i32 0, i32* %pns, align 4, !annotation !7
  %call = call i8* @fdt_getprop(i8* noundef %blob, i32 noundef %node_offset, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* noundef nonnull %len) #11
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %call2 = call i8* @fdt_get_name(i8* noundef %blob, i32 noundef %node_offset, i32* noundef null) #11
  %call3 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i8* noundef %call2) #12
  br label %bail

if.end:                                           ; preds = %entry
  %call4 = call i32 @fdt_parent_offset(i8* noundef %blob, i32 noundef %node_offset) #11
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %bail, label %if.end6

if.end6:                                          ; preds = %if.end
  call fastcc void @fdt_bus_default_count_cells(i8* noundef %blob, i32 noundef %call4, i32* noundef nonnull %na, i32* noundef nonnull %ns) #13
  %6 = load i32, i32* %na, align 4
  %7 = add i32 %6, -1
  %8 = icmp ult i32 %7, 4
  %9 = load i32, i32* %ns, align 4
  %cmp10 = icmp sgt i32 %9, 0
  %or.cond54 = select i1 %8, i1 %cmp10, i1 false
  br i1 %or.cond54, label %if.end18, label %do.end14

do.end14:                                         ; preds = %if.end6
  %call16 = call i8* @fdt_get_name(i8* noundef %blob, i32 noundef %node_offset, i32* noundef null) #11
  %call17 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* noundef %call16) #12
  br label %bail

if.end18:                                         ; preds = %if.end6
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %addr, i64 0, i64 0
  %mul = shl nuw nsw i32 %6, 2
  %10 = zext i32 %mul to i64
  %call19 = call i8* @memcpy(i8* noundef nonnull %1, i8* noundef nonnull %call, i64 noundef %10) #11
  %call2287 = call i32 @fdt_parent_offset(i8* noundef %blob, i32 noundef %call4) #11
  %cmp2388 = icmp slt i32 %call2287, 0
  br i1 %cmp2388, label %if.then25, label %if.end29

if.then25:                                        ; preds = %if.end52, %if.end18
  %11 = load i32, i32* %na, align 4
  %call28 = call fastcc i64 @of_read_number(i32* noundef nonnull %arraydecay, i32 noundef %11) #13
  br label %bail

if.end29:                                         ; preds = %if.end18, %if.end52
  %call2290 = phi i32 [ %call22, %if.end52 ], [ %call2287, %if.end18 ]
  %parent.089 = phi i32 [ %call2290, %if.end52 ], [ %call4, %if.end18 ]
  call fastcc void @fdt_bus_default_count_cells(i8* noundef %blob, i32 noundef %call2290, i32* noundef nonnull %pna, i32* noundef nonnull %pns) #13
  %12 = load i32, i32* %pna, align 4
  %13 = add i32 %12, -1
  %14 = icmp ult i32 %13, 4
  %15 = load i32, i32* %pns, align 4
  %cmp37 = icmp sgt i32 %15, 0
  %or.cond56 = select i1 %14, i1 %cmp37, i1 false
  br i1 %or.cond56, label %if.end46, label %do.end42

do.end42:                                         ; preds = %if.end29
  %call44 = call i8* @fdt_get_name(i8* noundef %blob, i32 noundef %parent.089, i32* noundef null) #11
  %call45 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* noundef %call44) #12
  br label %bail

if.end46:                                         ; preds = %if.end29
  %16 = load i32, i32* %na, align 4
  %17 = load i32, i32* %ns, align 4
  %call49 = call fastcc i32 @fdt_translate_one(i8* noundef %blob, i32 noundef %parent.089, i32* noundef nonnull %arraydecay, i32 noundef %16, i32 noundef %17, i32 noundef %12) #9
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %bail

if.end52:                                         ; preds = %if.end46
  %18 = load i32, i32* %pna, align 4
  store i32 %18, i32* %na, align 4
  %19 = load i32, i32* %pns, align 4
  store i32 %19, i32* %ns, align 4
  %call22 = call i32 @fdt_parent_offset(i8* noundef %blob, i32 noundef %call2290) #11
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %if.end29

bail:                                             ; preds = %if.end46, %if.then25, %do.end42, %if.end, %do.end14, %do.end
  %result.0 = phi i64 [ -1, %if.end ], [ %call28, %if.then25 ], [ -1, %do.end42 ], [ -1, %do.end14 ], [ -1, %do.end ], [ -1, %if.end46 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i64 %result.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @fdt_getprop(i8* noundef, i32 noundef, i8* noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @fdt_get_name(i8* noundef, i32 noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_parent_offset(i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readonly
define internal fastcc i64 @of_read_number(i32* nocapture noundef readonly %cell, i32 noundef %size) unnamed_addr #5 {
entry:
  %tobool.not19 = icmp eq i32 %size, 0
  br i1 %tobool.not19, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %dec22.in = phi i32 [ %dec22, %for.body ], [ %size, %entry ]
  %r.021 = phi i64 [ %or9, %for.body ], [ 0, %entry ]
  %cell.addr.020 = phi i32* [ %incdec.ptr, %for.body ], [ %cell, %entry ]
  %dec22 = add i32 %dec22.in, -1
  %shl = shl i64 %r.021, 32
  %0 = load i32, i32* %cell.addr.020, align 4
  %call = call fastcc i32 @__fswab32(i32 noundef %0) #14
  %conv = zext i32 %call to i64
  %or9 = or i64 %shl, %conv
  %incdec.ptr = getelementptr i32, i32* %cell.addr.020, i64 1
  %tobool.not = icmp eq i32 %dec22, 0
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %r.0.lcssa = phi i64 [ 0, %entry ], [ %or9, %for.body ]
  ret i64 %r.0.lcssa
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @fdt_translate_one(i8* noundef %blob, i32 noundef %parent, i32* noundef %addr, i32 noundef %na, i32 noundef %ns, i32 noundef %pna) unnamed_addr #0 section ".init.text" {
entry:
  %rlen = alloca i32, align 4
  %0 = bitcast i32* %rlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  store i32 0, i32* %rlen, align 4, !annotation !7
  %call = call i8* @fdt_getprop(i8* noundef %blob, i32 noundef %parent, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %rlen) #11
  %1 = bitcast i8* %call to i32*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %rlen, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then1, label %if.end4

if.then1:                                         ; preds = %if.end
  %call2 = call fastcc i64 @of_read_number(i32* noundef %addr, i32 noundef %na) #13
  %3 = bitcast i32* %addr to i8*
  %mul = shl i32 %pna, 2
  %4 = zext i32 %mul to i64
  %call3 = call i8* @memset(i8* noundef %3, i32 noundef 0, i64 noundef %4) #11
  br label %finish

if.end4:                                          ; preds = %if.end
  %div = sdiv i32 %2, 4
  store i32 %div, i32* %rlen, align 4
  %add = add i32 %ns, %na
  %add6 = add i32 %add, %pna
  %cmp7.not4 = icmp slt i32 %div, %add6
  br i1 %cmp7.not4, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end4
  %idx.ext = sext i32 %add6 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %5 = phi i32 [ %div, %for.body.lr.ph ], [ %sub, %for.inc ]
  %ranges.05 = phi i32* [ %1, %for.body.lr.ph ], [ %add.ptr, %for.inc ]
  %call9 = call fastcc i64 @fdt_bus_default_map(i32* noundef %addr, i32* noundef %ranges.05, i32 noundef %na, i32 noundef %ns, i32 noundef %pna) #13
  %cmp10.not = icmp eq i64 %call9, -1
  br i1 %cmp10.not, label %for.inc, label %if.end18

for.inc:                                          ; preds = %for.body
  %sub = sub i32 %5, %add6
  store i32 %sub, i32* %rlen, align 4
  %add.ptr = getelementptr i32, i32* %ranges.05, i64 %idx.ext
  %cmp7.not = icmp slt i32 %sub, %add6
  br i1 %cmp7.not, label %cleanup, label %for.body

if.end18:                                         ; preds = %for.body
  %6 = bitcast i32* %addr to i8*
  %idx.ext19 = sext i32 %na to i64
  %add.ptr20 = getelementptr i32, i32* %ranges.05, i64 %idx.ext19
  %7 = bitcast i32* %add.ptr20 to i8*
  %mul21 = shl i32 %pna, 2
  %8 = zext i32 %mul21 to i64
  %call23 = call i8* @memcpy(i8* noundef %6, i8* noundef %7, i64 noundef %8) #11
  br label %finish

finish:                                           ; preds = %if.end18, %if.then1
  %offset.2 = phi i64 [ %call2, %if.then1 ], [ %call9, %if.end18 ]
  %call25 = call fastcc i32 @fdt_bus_default_translate(i32* noundef %addr, i64 noundef %offset.2, i32 noundef %pna) #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc, %if.end4, %entry, %finish
  %retval.0 = phi i32 [ %call25, %finish ], [ 1, %entry ], [ 1, %if.end4 ], [ 1, %for.inc ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @fdt_bus_default_count_cells(i8* noundef %blob, i32 noundef %parentoffset, i32* noundef writeonly %addrc, i32* noundef writeonly %sizec) unnamed_addr #0 section ".init.text" {
entry:
  %tobool.not = icmp eq i32* %addrc, null
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @fdt_getprop(i8* noundef %blob, i32 noundef %parentoffset, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32* noundef null) #11
  %tobool1.not = icmp eq i8* %call, null
  br i1 %tobool1.not, label %if.else, label %cond.false.i.i

cond.false.i.i:                                   ; preds = %if.then
  %0 = bitcast i8* %call to i32*
  %1 = load i32, i32* %0, align 4
  %call.i.i = call fastcc i32 @__fswab32(i32 noundef %1) #14
  br label %if.end4.sink.split

if.else:                                          ; preds = %if.then
  %2 = load i32, i32* @dt_root_addr_cells, align 4
  br label %if.end4.sink.split

if.end4.sink.split:                               ; preds = %cond.false.i.i, %if.else
  %cond.i.i.sink = phi i32 [ %2, %if.else ], [ %call.i.i, %cond.false.i.i ]
  store i32 %cond.i.i.sink, i32* %addrc, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end4.sink.split, %entry
  %tobool5.not = icmp eq i32* %sizec, null
  br i1 %tobool5.not, label %if.end13, label %if.then6

if.then6:                                         ; preds = %if.end4
  %call7 = call i8* @fdt_getprop(i8* noundef %blob, i32 noundef %parentoffset, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32* noundef null) #11
  %tobool8.not = icmp eq i8* %call7, null
  br i1 %tobool8.not, label %if.else11, label %cond.false.i.i28

cond.false.i.i28:                                 ; preds = %if.then6
  %3 = bitcast i8* %call7 to i32*
  %4 = load i32, i32* %3, align 4
  %call.i.i27 = call fastcc i32 @__fswab32(i32 noundef %4) #14
  br label %if.end13.sink.split

if.else11:                                        ; preds = %if.then6
  %5 = load i32, i32* @dt_root_size_cells, align 4
  br label %if.end13.sink.split

if.end13.sink.split:                              ; preds = %cond.false.i.i28, %if.else11
  %cond.i.i29.sink = phi i32 [ %5, %if.else11 ], [ %call.i.i27, %cond.false.i.i28 ]
  store i32 %cond.i.i29.sink, i32* %sizec, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end13.sink.split, %if.end4
  ret void
}

; Function Attrs: cold nofree noinline nosync nounwind null_pointer_is_valid optsize readonly
define internal fastcc i64 @fdt_bus_default_map(i32* nocapture noundef readonly %addr, i32* nocapture noundef readonly %range, i32 noundef %na, i32 noundef %ns, i32 noundef %pna) unnamed_addr #6 section ".init.text" {
entry:
  %call = call fastcc i64 @of_read_number(i32* noundef %range, i32 noundef %na) #13
  %idx.ext = sext i32 %na to i64
  %add.ptr = getelementptr i32, i32* %range, i64 %idx.ext
  %idx.ext1 = sext i32 %pna to i64
  %add.ptr2 = getelementptr i32, i32* %add.ptr, i64 %idx.ext1
  %call3 = call fastcc i64 @of_read_number(i32* noundef %add.ptr2, i32 noundef %ns) #13
  %call4 = call fastcc i64 @of_read_number(i32* noundef %addr, i32 noundef %na) #13
  %cmp = icmp uge i64 %call4, %call
  %add = add i64 %call3, %call
  %cmp5.not = icmp ult i64 %call4, %add
  %or.cond = select i1 %cmp, i1 %cmp5.not, i1 false
  %sub = sub i64 %call4, %call
  %retval.0 = select i1 %or.cond, i64 %sub, i64 -1
  ret i64 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @fdt_bus_default_translate(i32* noundef %addr, i64 noundef %offset, i32 noundef %na) unnamed_addr #0 section ".init.text" {
entry:
  %call = call fastcc i64 @of_read_number(i32* noundef %addr, i32 noundef %na) #13
  %0 = bitcast i32* %addr to i8*
  %mul = shl i32 %na, 2
  %conv = sext i32 %mul to i64
  %call1 = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef %conv) #11
  %add = add i64 %call, %offset
  %cmp = icmp sgt i32 %na, 1
  br i1 %cmp, label %cond.end, label %cond.end49

cond.end:                                         ; preds = %entry
  %shr = lshr i64 %add, 32
  %conv3 = trunc i64 %shr to i32
  %call22 = call fastcc i32 @__fswab32(i32 noundef %conv3) #14
  %sub = add nsw i32 %na, -2
  %1 = zext i32 %sub to i64
  %arrayidx = getelementptr i32, i32* %addr, i64 %1
  store i32 %call22, i32* %arrayidx, align 4
  br label %cond.end49

cond.end49:                                       ; preds = %cond.end, %entry
  %conv24 = trunc i64 %add to i32
  %call48 = call fastcc i32 @__fswab32(i32 noundef %conv24) #14
  %sub51 = add i32 %na, -1
  %idxprom52 = sext i32 %sub51 to i64
  %arrayidx53 = getelementptr i32, i32* %addr, i64 %idxprom52
  store i32 %call48, i32* %arrayidx53, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__fswab32(i32 noundef %val) unnamed_addr #7 {
entry:
  %or7 = call i32 @llvm.bswap.i32(i32 %val)
  ret i32 %or7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

attributes #0 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { nofree noinline nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { cold nofree noinline nosync nounwind null_pointer_is_valid optsize readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { cold nobuiltin "no-builtins" }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { cold nobuiltin nounwind "no-builtins" }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { nobuiltin nounwind readnone willreturn "no-builtins" }

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
