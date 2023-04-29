; ModuleID = 'lib/fdt_rw.c'
source_filename = "lib/fdt_rw.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.fdt_reserve_entry = type { i64, i64 }
%struct.fdt_property = type { i32, i32, i32, [0 x i8] }

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_add_mem_rsv(i8* noundef %fdt, i64 noundef %address, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @fdt_rw_probe_(i8* noundef %fdt) #8
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %cleanup.cont, label %cleanup56

cleanup.cont:                                     ; preds = %entry
  %call1 = call i32 @fdt_num_mem_rsv(i8* noundef %fdt) #9
  %call2 = call fastcc %struct.fdt_reserve_entry* @fdt_mem_rsv_w_(i8* noundef %fdt, i32 noundef %call1) #8
  %call3 = call fastcc i32 @fdt_splice_mem_rsv_(i8* noundef %fdt, %struct.fdt_reserve_entry* noundef %call2, i32 noundef 0, i32 noundef 1) #8
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cond.end, label %cleanup56

cond.end:                                         ; preds = %cleanup.cont
  %call25 = call fastcc i64 @__fswab64(i64 noundef %address) #10
  %address26 = getelementptr inbounds %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %call2, i64 0, i32 0
  store i64 %call25, i64* %address26, align 8
  %call52 = call fastcc i64 @__fswab64(i64 noundef %size) #10
  %size55 = getelementptr inbounds %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %call2, i64 0, i32 1
  store i64 %call52, i64* %size55, align 8
  br label %cleanup56

cleanup56:                                        ; preds = %cleanup.cont, %entry, %cond.end
  %retval.1 = phi i32 [ 0, %cond.end ], [ %call, %entry ], [ %call3, %cleanup.cont ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @fdt_rw_probe_(i8* noundef %fdt) unnamed_addr #0 {
entry:
  %call1 = call i32 @fdt_ro_probe_(i8* noundef %fdt) #9
  %cmp = icmp sgt i32 %call1, -1
  br i1 %cmp, label %cleanup.cont, label %return

cleanup.cont:                                     ; preds = %entry
  %version = getelementptr inbounds i8, i8* %fdt, i64 20
  %0 = bitcast i8* %version to i32*
  %call5 = call fastcc i32 @fdt32_ld(i32* noundef %0) #8
  %cmp6 = icmp ult i32 %call5, 17
  br i1 %cmp6, label %return, label %if.end8

if.end8:                                          ; preds = %cleanup.cont
  %size_dt_struct = getelementptr inbounds i8, i8* %fdt, i64 36
  %1 = bitcast i8* %size_dt_struct to i32*
  %call9 = call fastcc i32 @fdt32_ld(i32* noundef %1) #8
  %call10 = call fastcc i32 @fdt_blocks_misordered_(i8* noundef %fdt, i32 noundef 16, i32 noundef %call9) #8
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end12, label %return

if.end12:                                         ; preds = %if.end8
  %cmp17 = icmp ugt i32 %call5, 17
  br i1 %cmp17, label %if.then18, label %return

if.then18:                                        ; preds = %if.end12
  call fastcc void @fdt_set_version(i8* noundef %fdt) #8
  br label %return

return:                                           ; preds = %entry, %if.end12, %if.then18, %if.end8, %cleanup.cont
  %retval.1 = phi i32 [ %call1, %entry ], [ -10, %cleanup.cont ], [ -12, %if.end8 ], [ 0, %if.then18 ], [ 0, %if.end12 ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.fdt_reserve_entry* @fdt_mem_rsv_w_(i8* noundef readonly %fdt, i32 noundef %n) unnamed_addr #2 {
entry:
  %call = call fastcc %struct.fdt_reserve_entry* @fdt_mem_rsv_(i8* noundef %fdt, i32 noundef %n) #8
  ret %struct.fdt_reserve_entry* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_num_mem_rsv(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @fdt_splice_mem_rsv_(i8* noundef %fdt, %struct.fdt_reserve_entry* noundef %p, i32 noundef %oldn, i32 noundef %newn) unnamed_addr #0 {
entry:
  %sub = sub i32 %newn, %oldn
  %mul = shl i32 %sub, 4
  %0 = bitcast %struct.fdt_reserve_entry* %p to i8*
  %mul3 = shl i32 %oldn, 4
  %mul6 = shl i32 %newn, 4
  %call = call fastcc i32 @fdt_splice_(i8* noundef %fdt, i8* noundef %0, i32 noundef %mul3, i32 noundef %mul6) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %off_dt_struct = getelementptr inbounds i8, i8* %fdt, i64 8
  %1 = bitcast i8* %off_dt_struct to i32*
  %call8 = call fastcc i32 @fdt32_ld(i32* noundef %1) #8
  %add = add i32 %call8, %mul
  call fastcc void @fdt_set_off_dt_struct(i8* noundef %fdt, i32 noundef %add) #8
  %off_dt_strings = getelementptr inbounds i8, i8* %fdt, i64 12
  %2 = bitcast i8* %off_dt_strings to i32*
  %call9 = call fastcc i32 @fdt32_ld(i32* noundef %2) #8
  %add10 = add i32 %call9, %mul
  call fastcc void @fdt_set_off_dt_strings(i8* noundef %fdt, i32 noundef %add10) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__fswab64(i64 noundef %val) unnamed_addr #4 {
entry:
  %or19 = call i64 @llvm.bswap.i64(i64 %val)
  ret i64 %or19
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_del_mem_rsv(i8* noundef %fdt, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.fdt_reserve_entry* @fdt_mem_rsv_w_(i8* noundef %fdt, i32 noundef %n) #8
  %call1 = call fastcc i32 @fdt_rw_probe_(i8* noundef %fdt) #8
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %cleanup.cont, label %cleanup7

cleanup.cont:                                     ; preds = %entry
  %call2 = call i32 @fdt_num_mem_rsv(i8* noundef %fdt) #9
  %cmp3.not = icmp sgt i32 %call2, %n
  br i1 %cmp3.not, label %if.end5, label %cleanup7

if.end5:                                          ; preds = %cleanup.cont
  %call6 = call fastcc i32 @fdt_splice_mem_rsv_(i8* noundef %fdt, %struct.fdt_reserve_entry* noundef %call, i32 noundef 1, i32 noundef 0) #8
  br label %cleanup7

cleanup7:                                         ; preds = %cleanup.cont, %entry, %if.end5
  %retval.1 = phi i32 [ %call6, %if.end5 ], [ %call1, %entry ], [ -1, %cleanup.cont ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_set_name(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %oldlen = alloca i32, align 4
  %0 = bitcast i32* %oldlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #11
  store i32 0, i32* %oldlen, align 4, !annotation !7
  %call = call fastcc i32 @fdt_rw_probe_(i8* noundef %fdt) #8
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %cleanup.cont, label %cleanup21

cleanup.cont:                                     ; preds = %entry
  %call1 = call i8* @fdt_get_name(i8* noundef %fdt, i32 noundef %nodeoffset, i32* noundef nonnull %oldlen) #9
  %tobool.not = icmp eq i8* %call1, null
  br i1 %tobool.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %cleanup.cont
  %1 = load i32, i32* %oldlen, align 4
  br label %cleanup21

if.end3:                                          ; preds = %cleanup.cont
  %call4 = call i64 @strlen(i8* noundef %name) #9
  %2 = load i32, i32* %oldlen, align 4
  %sub = add i32 %2, 4
  %and = and i32 %sub, -4
  %add8 = shl i64 %call4, 32
  %sext = add i64 %add8, 4294967296
  %conv9 = ashr exact i64 %sext, 32
  %3 = trunc i64 %conv9 to i32
  %4 = add i32 %3, 3
  %conv13 = and i32 %4, -4
  %call14 = call fastcc i32 @fdt_splice_struct_(i8* noundef %fdt, i8* noundef nonnull %call1, i32 noundef %and, i32 noundef %conv13) #8
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %cleanup21

if.end17:                                         ; preds = %if.end3
  %call20 = call i8* @memcpy(i8* noundef nonnull %call1, i8* noundef %name, i64 noundef %conv9) #9
  br label %cleanup21

cleanup21:                                        ; preds = %if.end3, %entry, %if.end17, %if.then2
  %retval.1 = phi i32 [ 0, %if.end17 ], [ %1, %if.then2 ], [ %call, %entry ], [ %call14, %if.end3 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #11
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @fdt_get_name(i8* noundef, i32 noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @fdt_splice_struct_(i8* noundef %fdt, i8* noundef %p, i32 noundef %oldlen, i32 noundef %newlen) unnamed_addr #0 {
entry:
  %sub = sub i32 %newlen, %oldlen
  %call = call fastcc i32 @fdt_splice_(i8* noundef %fdt, i8* noundef %p, i32 noundef %oldlen, i32 noundef %newlen) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %size_dt_struct = getelementptr inbounds i8, i8* %fdt, i64 36
  %0 = bitcast i8* %size_dt_struct to i32*
  %call1 = call fastcc i32 @fdt32_ld(i32* noundef %0) #8
  %add = add i32 %call1, %sub
  call fastcc void @fdt_set_size_dt_struct(i8* noundef %fdt, i32 noundef %add) #8
  %off_dt_strings = getelementptr inbounds i8, i8* %fdt, i64 12
  %1 = bitcast i8* %off_dt_strings to i32*
  %call2 = call fastcc i32 @fdt32_ld(i32* noundef %1) #8
  %add3 = add i32 %call2, %sub
  call fastcc void @fdt_set_off_dt_strings(i8* noundef %fdt, i32 noundef %add3) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_setprop_placeholder(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %name, i32 noundef %len, i8** nocapture noundef writeonly %prop_data) local_unnamed_addr #0 {
entry:
  %prop = alloca %struct.fdt_property*, align 8
  %0 = bitcast %struct.fdt_property** %prop to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  store %struct.fdt_property* null, %struct.fdt_property** %prop, align 8, !annotation !7
  %call = call fastcc i32 @fdt_rw_probe_(i8* noundef %fdt) #8
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %cleanup.cont, label %cleanup8

cleanup.cont:                                     ; preds = %entry
  %call1 = call fastcc i32 @fdt_resize_property_(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %name, i32 noundef %len, %struct.fdt_property** noundef nonnull %prop) #8
  %cmp2 = icmp eq i32 %call1, -1
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %cleanup.cont
  %call4 = call fastcc i32 @fdt_add_property_(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %name, i32 noundef %len, %struct.fdt_property** noundef nonnull %prop) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %cleanup.cont
  %err.0 = phi i32 [ %call4, %if.then3 ], [ %call1, %cleanup.cont ]
  %tobool.not = icmp eq i32 %err.0, 0
  br i1 %tobool.not, label %if.end7, label %cleanup8

if.end7:                                          ; preds = %if.end5
  %1 = load %struct.fdt_property*, %struct.fdt_property** %prop, align 8
  %arraydecay = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %1, i64 0, i32 3, i64 0
  store i8* %arraydecay, i8** %prop_data, align 8
  br label %cleanup8

cleanup8:                                         ; preds = %if.end5, %entry, %if.end7
  %retval.1 = phi i32 [ 0, %if.end7 ], [ %call, %entry ], [ %err.0, %if.end5 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @fdt_resize_property_(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %name, i32 noundef %len, %struct.fdt_property** nocapture noundef %prop) unnamed_addr #0 {
entry:
  %oldlen = alloca i32, align 4
  %0 = bitcast i32* %oldlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #11
  store i32 0, i32* %oldlen, align 4, !annotation !7
  %call = call fastcc %struct.fdt_property* @fdt_get_property_w(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %name, i32* noundef nonnull %oldlen) #8
  store %struct.fdt_property* %call, %struct.fdt_property** %prop, align 8
  %tobool.not = icmp eq %struct.fdt_property* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %oldlen, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %call, i64 0, i32 3, i64 0
  %2 = load i32, i32* %oldlen, align 4
  %sub = add i32 %2, 3
  %and = and i32 %sub, -4
  %sub4 = add i32 %len, 3
  %and5 = and i32 %sub4, -4
  %call7 = call fastcc i32 @fdt_splice_struct_(i8* noundef %fdt, i8* noundef %arraydecay, i32 noundef %and, i32 noundef %and5) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cond.end, label %cleanup

cond.end:                                         ; preds = %if.end
  %call19 = call fastcc i32 @__fswab32(i32 noundef %len) #10
  %3 = load %struct.fdt_property*, %struct.fdt_property** %prop, align 8
  %len20 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %3, i64 0, i32 1
  store i32 %call19, i32* %len20, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end, %if.then
  %retval.0 = phi i32 [ 0, %cond.end ], [ %1, %if.then ], [ %call7, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @fdt_add_property_(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %name, i32 noundef %len, %struct.fdt_property** nocapture noundef %prop) unnamed_addr #0 {
entry:
  %allocated = alloca i32, align 4
  %0 = bitcast i32* %allocated to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #11
  store i32 0, i32* %allocated, align 4, !annotation !7
  %call = call i32 @fdt_check_node_offset_(i8* noundef %fdt, i32 noundef %nodeoffset) #9
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @fdt_find_add_string_(i8* noundef %fdt, i8* noundef %name, i32* noundef nonnull %allocated) #8
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i8* @fdt_offset_ptr_w_(i8* noundef %fdt, i32 noundef %call) #8
  %1 = bitcast %struct.fdt_property** %prop to i8**
  store i8* %call5, i8** %1, align 8
  %2 = add i32 %len, 15
  %add6 = and i32 %2, -4
  %call8 = call fastcc i32 @fdt_splice_struct_(i8* noundef %fdt, i8* noundef %call5, i32 noundef 0, i32 noundef %add6) #8
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end14, label %if.then9

if.then9:                                         ; preds = %if.end4
  %3 = load i32, i32* %allocated, align 4
  %tobool11.not = icmp eq i32 %3, 0
  br i1 %tobool11.not, label %cleanup, label %if.then12

if.then12:                                        ; preds = %if.then9
  call fastcc void @fdt_del_last_string_(i8* noundef %fdt, i8* noundef %name) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end4
  %4 = load %struct.fdt_property*, %struct.fdt_property** %prop, align 8
  %tag = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %4, i64 0, i32 0
  store i32 50331648, i32* %tag, align 4
  %call23 = call fastcc i32 @__fswab32(i32 noundef %call1) #10
  %5 = load %struct.fdt_property*, %struct.fdt_property** %prop, align 8
  %nameoff = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %5, i64 0, i32 2
  store i32 %call23, i32* %nameoff, align 4
  %call37 = call fastcc i32 @__fswab32(i32 noundef %len) #10
  %6 = load %struct.fdt_property*, %struct.fdt_property** %prop, align 8
  %len40 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %6, i64 0, i32 1
  store i32 %call37, i32* %len40, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.then12, %if.end, %entry, %if.end14
  %retval.0 = phi i32 [ 0, %if.end14 ], [ %call, %entry ], [ %call1, %if.end ], [ %call8, %if.then12 ], [ %call8, %if.then9 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_setprop(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %name, i8* noundef %val, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %prop_data = alloca i8*, align 8
  %0 = bitcast i8** %prop_data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  store i8* null, i8** %prop_data, align 8, !annotation !7
  %call = call i32 @fdt_setprop_placeholder(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %name, i32 noundef %len, i8** noundef nonnull %prop_data) #8
  %tobool.not = icmp ne i32 %call, 0
  %tobool1.not = icmp eq i32 %len, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %1 = load i8*, i8** %prop_data, align 8
  %conv = sext i32 %len to i64
  %call3 = call i8* @memcpy(i8* noundef %1, i8* noundef %val, i64 noundef %conv) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_appendprop(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %name, i8* noundef %val, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %prop = alloca %struct.fdt_property*, align 8
  %oldlen = alloca i32, align 4
  %0 = bitcast %struct.fdt_property** %prop to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  %1 = bitcast i32* %oldlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #11
  store i32 0, i32* %oldlen, align 4, !annotation !7
  %call = call fastcc i32 @fdt_rw_probe_(i8* noundef %fdt) #8
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %cleanup.cont, label %cleanup37

cleanup.cont:                                     ; preds = %entry
  %call1 = call fastcc %struct.fdt_property* @fdt_get_property_w(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %name, i32* noundef nonnull %oldlen) #8
  store %struct.fdt_property* %call1, %struct.fdt_property** %prop, align 8
  %tobool.not = icmp eq %struct.fdt_property* %call1, null
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %cleanup.cont
  %2 = load i32, i32* %oldlen, align 4
  %add = add i32 %2, %len
  %arraydecay = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %call1, i64 0, i32 3, i64 0
  %sub = add i32 %2, 3
  %and = and i32 %sub, -4
  %sub7 = add i32 %add, 3
  %and8 = and i32 %sub7, -4
  %call10 = call fastcc i32 @fdt_splice_struct_(i8* noundef %fdt, i8* noundef %arraydecay, i32 noundef %and, i32 noundef %and8) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cond.end, label %cleanup37

cond.end:                                         ; preds = %if.then2
  %call22 = call fastcc i32 @__fswab32(i32 noundef %add) #10
  %len23 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %call1, i64 0, i32 1
  store i32 %call22, i32* %len23, align 4
  %3 = load i32, i32* %oldlen, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr %struct.fdt_property, %struct.fdt_property* %call1, i64 0, i32 3, i64 %idx.ext
  br label %cleanup37.sink.split

if.else:                                          ; preds = %cleanup.cont
  %call28 = call fastcc i32 @fdt_add_property_(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %name, i32 noundef %len, %struct.fdt_property** noundef nonnull %prop) #8
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %cleanup37

if.end31:                                         ; preds = %if.else
  %4 = load %struct.fdt_property*, %struct.fdt_property** %prop, align 8
  %arraydecay33 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %4, i64 0, i32 3, i64 0
  br label %cleanup37.sink.split

cleanup37.sink.split:                             ; preds = %if.end31, %cond.end
  %add.ptr.sink = phi i8* [ %add.ptr, %cond.end ], [ %arraydecay33, %if.end31 ]
  %conv26 = sext i32 %len to i64
  %call27 = call i8* @memcpy(i8* noundef %add.ptr.sink, i8* noundef %val, i64 noundef %conv26) #9
  br label %cleanup37

cleanup37:                                        ; preds = %cleanup37.sink.split, %if.else, %if.then2, %entry
  %retval.1 = phi i32 [ %call, %entry ], [ %call10, %if.then2 ], [ %call28, %if.else ], [ 0, %cleanup37.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.fdt_property* @fdt_get_property_w(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %name, i32* noundef %lenp) unnamed_addr #0 {
entry:
  %call = call %struct.fdt_property* @fdt_get_property(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %name, i32* noundef %lenp) #9
  ret %struct.fdt_property* %call
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__fswab32(i32 noundef %val) unnamed_addr #4 {
entry:
  %or7 = call i32 @llvm.bswap.i32(i32 %val)
  ret i32 %or7
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_delprop(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %len = alloca i32, align 4
  %0 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #11
  store i32 0, i32* %len, align 4, !annotation !7
  %call = call fastcc i32 @fdt_rw_probe_(i8* noundef %fdt) #8
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %cleanup.cont, label %cleanup7

cleanup.cont:                                     ; preds = %entry
  %call1 = call fastcc %struct.fdt_property* @fdt_get_property_w(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %name, i32* noundef nonnull %len) #8
  %tobool.not = icmp eq %struct.fdt_property* %call1, null
  %1 = load i32, i32* %len, align 4
  br i1 %tobool.not, label %cleanup7, label %if.end3

if.end3:                                          ; preds = %cleanup.cont
  %2 = add i32 %1, 15
  %add4 = and i32 %2, -4
  %3 = bitcast %struct.fdt_property* %call1 to i8*
  %call6 = call fastcc i32 @fdt_splice_struct_(i8* noundef %fdt, i8* noundef nonnull %3, i32 noundef %add4, i32 noundef 0) #8
  br label %cleanup7

cleanup7:                                         ; preds = %cleanup.cont, %entry, %if.end3
  %retval.1 = phi i32 [ %call6, %if.end3 ], [ %call, %entry ], [ %1, %cleanup.cont ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #11
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_add_subnode_namelen(i8* noundef %fdt, i32 noundef %parentoffset, i8* noundef %name, i32 noundef %namelen) local_unnamed_addr #0 {
entry:
  %nextoffset = alloca i32, align 4
  %0 = bitcast i32* %nextoffset to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #11
  store i32 0, i32* %nextoffset, align 4, !annotation !7
  %call = call fastcc i32 @fdt_rw_probe_(i8* noundef %fdt) #8
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %cleanup.cont, label %cleanup33

cleanup.cont:                                     ; preds = %entry
  %call1 = call i32 @fdt_subnode_offset_namelen(i8* noundef %fdt, i32 noundef %parentoffset, i8* noundef %name, i32 noundef %namelen) #9
  %cmp2 = icmp sgt i32 %call1, -1
  br i1 %cmp2, label %cleanup33, label %if.else

if.else:                                          ; preds = %cleanup.cont
  %cmp4.not = icmp eq i32 %call1, -1
  br i1 %cmp4.not, label %if.end7, label %cleanup33

if.end7:                                          ; preds = %if.else
  %call8 = call i32 @fdt_next_tag(i8* noundef %fdt, i32 noundef %parentoffset, i32* noundef nonnull %nextoffset) #9
  br label %do.body

do.body:                                          ; preds = %do.body, %if.end7
  %1 = load i32, i32* %nextoffset, align 4
  %call9 = call i32 @fdt_next_tag(i8* noundef %fdt, i32 noundef %1, i32* noundef nonnull %nextoffset) #9
  %2 = add i32 %call9, -3
  %3 = icmp ult i32 %2, 2
  br i1 %3, label %do.body, label %do.end

do.end:                                           ; preds = %do.body
  %call12 = call fastcc i8* @fdt_offset_ptr_w_(i8* noundef %fdt, i32 noundef %1) #8
  %add = add i32 %namelen, 1
  %conv = sext i32 %add to i64
  %sub = add nsw i64 %conv, 3
  %and = and i64 %sub, -4
  %4 = trunc i64 %and to i32
  %conv16 = add i32 %4, 8
  %call17 = call fastcc i32 @fdt_splice_struct_(i8* noundef %fdt, i8* noundef %call12, i32 noundef 0, i32 noundef %conv16) #8
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %if.end19, label %cleanup33

if.end19:                                         ; preds = %do.end
  %tag20 = bitcast i8* %call12 to i32*
  store i32 16777216, i32* %tag20, align 4
  %name21 = getelementptr inbounds i8, i8* %call12, i64 4
  %call27 = call i8* @memset(i8* noundef %name21, i32 noundef 0, i64 noundef %and) #9
  %conv30 = sext i32 %namelen to i64
  %call31 = call i8* @memcpy(i8* noundef %name21, i8* noundef %name, i64 noundef %conv30) #9
  %idx.ext = sext i32 %conv16 to i64
  %add.ptr = getelementptr i8, i8* %call12, i64 %idx.ext
  %add.ptr32 = getelementptr i8, i8* %add.ptr, i64 -4
  %5 = bitcast i8* %add.ptr32 to i32*
  store i32 33554432, i32* %5, align 4
  br label %cleanup33

cleanup33:                                        ; preds = %do.end, %if.else, %cleanup.cont, %entry, %if.end19
  %retval.1 = phi i32 [ %1, %if.end19 ], [ %call, %entry ], [ -2, %cleanup.cont ], [ %call1, %if.else ], [ %call17, %do.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #11
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_subnode_offset_namelen(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_next_tag(i8* noundef, i32 noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @fdt_offset_ptr_w_(i8* noundef readonly %fdt, i32 noundef %offset) unnamed_addr #2 {
entry:
  %call = call fastcc i8* @fdt_offset_ptr_(i8* noundef %fdt, i32 noundef %offset) #8
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_add_subnode(i8* noundef %fdt, i32 noundef %parentoffset, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %call = call i64 @strlen(i8* noundef %name) #9
  %conv = trunc i64 %call to i32
  %call1 = call i32 @fdt_add_subnode_namelen(i8* noundef %fdt, i32 noundef %parentoffset, i8* noundef %name, i32 noundef %conv) #8
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_del_node(i8* noundef %fdt, i32 noundef %nodeoffset) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @fdt_rw_probe_(i8* noundef %fdt) #8
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %cleanup.cont, label %cleanup7

cleanup.cont:                                     ; preds = %entry
  %call1 = call i32 @fdt_node_end_offset_(i8* noundef %fdt, i32 noundef %nodeoffset) #9
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %cleanup7, label %if.end4

if.end4:                                          ; preds = %cleanup.cont
  %call5 = call fastcc i8* @fdt_offset_ptr_w_(i8* noundef %fdt, i32 noundef %nodeoffset) #8
  %sub = sub i32 %call1, %nodeoffset
  %call6 = call fastcc i32 @fdt_splice_struct_(i8* noundef %fdt, i8* noundef %call5, i32 noundef %sub, i32 noundef 0) #8
  br label %cleanup7

cleanup7:                                         ; preds = %cleanup.cont, %entry, %if.end4
  %retval.1 = phi i32 [ %call6, %if.end4 ], [ %call, %entry ], [ %call1, %cleanup.cont ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_node_end_offset_(i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_open_into(i8* noundef %fdt, i8* noundef %buf, i32 noundef %bufsize) local_unnamed_addr #0 {
entry:
  %struct_size = alloca i32, align 4
  %0 = bitcast i32* %struct_size to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #11
  %totalsize = getelementptr inbounds i8, i8* %fdt, i64 4
  %1 = bitcast i8* %totalsize to i32*
  %call = call fastcc i32 @fdt32_ld(i32* noundef %1) #8
  %idx.ext = zext i32 %call to i64
  %add.ptr = getelementptr i8, i8* %fdt, i64 %idx.ext
  %call1 = call i32 @fdt_ro_probe_(i8* noundef %fdt) #9
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %cleanup67, label %cleanup.cont

cleanup.cont:                                     ; preds = %entry
  %call2 = call i32 @fdt_num_mem_rsv(i8* noundef %fdt) #9
  %add = shl i32 %call2, 4
  %mul = add i32 %add, 16
  %version = getelementptr inbounds i8, i8* %fdt, i64 20
  %2 = bitcast i8* %version to i32*
  %call6 = call fastcc i32 @fdt32_ld(i32* noundef %2) #8
  %cmp7 = icmp ugt i32 %call6, 16
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %cleanup.cont
  %size_dt_struct = getelementptr inbounds i8, i8* %fdt, i64 36
  %3 = bitcast i8* %size_dt_struct to i32*
  %call10 = call fastcc i32 @fdt32_ld(i32* noundef %3) #8
  store i32 %call10, i32* %struct_size, align 4
  br label %if.end25

if.else:                                          ; preds = %cleanup.cont
  %cmp13 = icmp eq i32 %call6, 16
  br i1 %cmp13, label %if.then15, label %cleanup67

if.then15:                                        ; preds = %if.else
  store i32 0, i32* %struct_size, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %if.then15
  %4 = phi i32 [ 0, %if.then15 ], [ %5, %while.cond ]
  %call16 = call i32 @fdt_next_tag(i8* noundef %fdt, i32 noundef %4, i32* noundef nonnull %struct_size) #9
  %cmp17.not = icmp eq i32 %call16, 9
  %5 = load i32, i32* %struct_size, align 4
  br i1 %cmp17.not, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  %cmp19 = icmp slt i32 %5, 0
  br i1 %cmp19, label %cleanup67, label %if.end25

if.end25:                                         ; preds = %while.end, %if.then9
  %6 = phi i32 [ %5, %while.end ], [ %call10, %if.then9 ]
  %call29 = call fastcc i32 @fdt_blocks_misordered_(i8* noundef %fdt, i32 noundef %mul, i32 noundef %6) #8
  %tobool.not = icmp eq i32 %call29, 0
  br i1 %tobool.not, label %if.then30, label %if.end35

if.then30:                                        ; preds = %if.end25
  %call31 = call i32 @fdt_move(i8* noundef %fdt, i8* noundef %buf, i32 noundef %bufsize) #9
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %cleanup67

if.end34:                                         ; preds = %if.then30
  call fastcc void @fdt_set_version(i8* noundef %buf) #8
  %7 = load i32, i32* %struct_size, align 4
  call fastcc void @fdt_set_size_dt_struct(i8* noundef %buf, i32 noundef %7) #8
  call fastcc void @fdt_set_totalsize(i8* noundef %buf, i32 noundef %bufsize) #8
  br label %cleanup67

if.end35:                                         ; preds = %if.end25
  %add37 = add i32 %add, 56
  %add39 = add i32 %add37, %6
  %size_dt_strings = getelementptr inbounds i8, i8* %fdt, i64 32
  %8 = bitcast i8* %size_dt_strings to i32*
  %call40 = call fastcc i32 @fdt32_ld(i32* noundef %8) #8
  %add42 = add i32 %add39, %call40
  %cmp44 = icmp sgt i32 %add42, %bufsize
  br i1 %cmp44, label %cleanup67, label %if.end47

if.end47:                                         ; preds = %if.end35
  %idx.ext48 = sext i32 %add42 to i64
  %add.ptr49 = getelementptr i8, i8* %buf, i64 %idx.ext48
  %cmp50 = icmp ugt i8* %add.ptr49, %fdt
  %cmp52 = icmp ugt i8* %add.ptr, %buf
  %or.cond = select i1 %cmp50, i1 %cmp52, i1 false
  br i1 %or.cond, label %if.then54, label %if.end63

if.then54:                                        ; preds = %if.end47
  %add.ptr56 = getelementptr i8, i8* %add.ptr, i64 %idx.ext48
  %idx.ext57 = sext i32 %bufsize to i64
  %add.ptr58 = getelementptr i8, i8* %buf, i64 %idx.ext57
  %cmp59 = icmp ugt i8* %add.ptr56, %add.ptr58
  br i1 %cmp59, label %cleanup67, label %if.end63

if.end63:                                         ; preds = %if.then54, %if.end47
  %tmp.0 = phi i8* [ %add.ptr, %if.then54 ], [ %buf, %if.end47 ]
  call fastcc void @fdt_packblocks_(i8* noundef %fdt, i8* noundef %tmp.0, i32 noundef %mul, i32 noundef %6) #8
  %call65 = call i8* @memmove(i8* noundef %buf, i8* noundef %tmp.0, i64 noundef %idx.ext48) #9
  call fastcc void @fdt_set_magic(i8* noundef %buf) #8
  call fastcc void @fdt_set_totalsize(i8* noundef %buf, i32 noundef %bufsize) #8
  call fastcc void @fdt_set_version(i8* noundef %buf) #8
  call fastcc void @fdt_set_last_comp_version(i8* noundef %buf) #8
  %boot_cpuid_phys = getelementptr inbounds i8, i8* %fdt, i64 28
  %9 = bitcast i8* %boot_cpuid_phys to i32*
  %call66 = call fastcc i32 @fdt32_ld(i32* noundef %9) #8
  call fastcc void @fdt_set_boot_cpuid_phys(i8* noundef %buf, i32 noundef %call66) #8
  br label %cleanup67

cleanup67:                                        ; preds = %if.then54, %if.end35, %if.then30, %if.else, %while.end, %entry, %if.end63, %if.end34
  %retval.1 = phi i32 [ 0, %if.end34 ], [ 0, %if.end63 ], [ %call1, %entry ], [ %5, %while.end ], [ -10, %if.else ], [ %call31, %if.then30 ], [ -3, %if.end35 ], [ -3, %if.then54 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #11
  ret i32 %retval.1
}

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
declare dso_local i32 @fdt_ro_probe_(i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @fdt_blocks_misordered_(i8* nocapture noundef readonly %fdt, i32 noundef %mem_rsv_size, i32 noundef %struct_size) unnamed_addr #2 {
entry:
  %off_mem_rsvmap = getelementptr inbounds i8, i8* %fdt, i64 16
  %0 = bitcast i8* %off_mem_rsvmap to i32*
  %call = call fastcc i32 @fdt32_ld(i32* noundef %0) #8
  %cmp = icmp ult i32 %call, 40
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %off_dt_struct = getelementptr inbounds i8, i8* %fdt, i64 8
  %1 = bitcast i8* %off_dt_struct to i32*
  %call2 = call fastcc i32 @fdt32_ld(i32* noundef %1) #8
  %add = add i32 %call, %mem_rsv_size
  %cmp5 = icmp ult i32 %call2, %add
  br i1 %cmp5, label %lor.end, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %off_dt_strings = getelementptr inbounds i8, i8* %fdt, i64 12
  %2 = bitcast i8* %off_dt_strings to i32*
  %call8 = call fastcc i32 @fdt32_ld(i32* noundef %2) #8
  %add11 = add i32 %call2, %struct_size
  %cmp12 = icmp ult i32 %call8, %add11
  br i1 %cmp12, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false7
  %totalsize = getelementptr inbounds i8, i8* %fdt, i64 4
  %3 = bitcast i8* %totalsize to i32*
  %call14 = call fastcc i32 @fdt32_ld(i32* noundef %3) #8
  %size_dt_strings = getelementptr inbounds i8, i8* %fdt, i64 32
  %4 = bitcast i8* %size_dt_strings to i32*
  %call17 = call fastcc i32 @fdt32_ld(i32* noundef %4) #8
  %add18 = add i32 %call17, %call8
  %cmp19 = icmp ult i32 %call14, %add18
  %phi.cast = zext i1 %cmp19 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false7, %lor.lhs.false, %entry
  %5 = phi i32 [ 1, %lor.lhs.false7 ], [ 1, %lor.lhs.false ], [ 1, %entry ], [ %phi.cast, %lor.rhs ]
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_move(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @fdt_set_version(i8* nocapture noundef writeonly %fdt) unnamed_addr #5 {
entry:
  %version = getelementptr inbounds i8, i8* %fdt, i64 20
  %0 = bitcast i8* %version to i32*
  store i32 285212672, i32* %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @fdt_set_size_dt_struct(i8* nocapture noundef writeonly %fdt, i32 noundef %val) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @__fswab32(i32 noundef %val) #10
  %size_dt_struct = getelementptr inbounds i8, i8* %fdt, i64 36
  %0 = bitcast i8* %size_dt_struct to i32*
  store i32 %call, i32* %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @fdt_set_totalsize(i8* nocapture noundef writeonly %fdt, i32 noundef %val) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @__fswab32(i32 noundef %val) #10
  %totalsize = getelementptr inbounds i8, i8* %fdt, i64 4
  %0 = bitcast i8* %totalsize to i32*
  store i32 %call, i32* %0, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fdt_packblocks_(i8* noundef %old, i8* noundef %new, i32 noundef %mem_rsv_size, i32 noundef %struct_size) unnamed_addr #0 {
entry:
  %add = add i32 %mem_rsv_size, 40
  %add1 = add i32 %add, %struct_size
  %add.ptr = getelementptr i8, i8* %new, i64 40
  %off_mem_rsvmap = getelementptr inbounds i8, i8* %old, i64 16
  %0 = bitcast i8* %off_mem_rsvmap to i32*
  %call = call fastcc i32 @fdt32_ld(i32* noundef %0) #8
  %idx.ext2 = zext i32 %call to i64
  %add.ptr3 = getelementptr i8, i8* %old, i64 %idx.ext2
  %conv = sext i32 %mem_rsv_size to i64
  %call4 = call i8* @memmove(i8* noundef %add.ptr, i8* noundef %add.ptr3, i64 noundef %conv) #9
  call fastcc void @fdt_set_off_mem_rsvmap(i8* noundef %new) #8
  %idx.ext5 = sext i32 %add to i64
  %add.ptr6 = getelementptr i8, i8* %new, i64 %idx.ext5
  %off_dt_struct = getelementptr inbounds i8, i8* %old, i64 8
  %1 = bitcast i8* %off_dt_struct to i32*
  %call7 = call fastcc i32 @fdt32_ld(i32* noundef %1) #8
  %idx.ext8 = zext i32 %call7 to i64
  %add.ptr9 = getelementptr i8, i8* %old, i64 %idx.ext8
  %conv10 = sext i32 %struct_size to i64
  %call11 = call i8* @memmove(i8* noundef %add.ptr6, i8* noundef %add.ptr9, i64 noundef %conv10) #9
  call fastcc void @fdt_set_off_dt_struct(i8* noundef %new, i32 noundef %add) #8
  call fastcc void @fdt_set_size_dt_struct(i8* noundef %new, i32 noundef %struct_size) #8
  %idx.ext12 = sext i32 %add1 to i64
  %add.ptr13 = getelementptr i8, i8* %new, i64 %idx.ext12
  %off_dt_strings = getelementptr inbounds i8, i8* %old, i64 12
  %2 = bitcast i8* %off_dt_strings to i32*
  %call14 = call fastcc i32 @fdt32_ld(i32* noundef %2) #8
  %idx.ext15 = zext i32 %call14 to i64
  %add.ptr16 = getelementptr i8, i8* %old, i64 %idx.ext15
  %size_dt_strings = getelementptr inbounds i8, i8* %old, i64 32
  %3 = bitcast i8* %size_dt_strings to i32*
  %call17 = call fastcc i32 @fdt32_ld(i32* noundef %3) #8
  %conv18 = zext i32 %call17 to i64
  %call19 = call i8* @memmove(i8* noundef %add.ptr13, i8* noundef %add.ptr16, i64 noundef %conv18) #9
  call fastcc void @fdt_set_off_dt_strings(i8* noundef %new, i32 noundef %add1) #8
  %call21 = call fastcc i32 @fdt32_ld(i32* noundef %3) #8
  call fastcc void @fdt_set_size_dt_strings(i8* noundef %new, i32 noundef %call21) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memmove(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @fdt_set_magic(i8* nocapture noundef writeonly %fdt) unnamed_addr #5 {
entry:
  %magic = bitcast i8* %fdt to i32*
  store i32 -302117424, i32* %magic, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @fdt_set_last_comp_version(i8* nocapture noundef writeonly %fdt) unnamed_addr #5 {
entry:
  %last_comp_version = getelementptr inbounds i8, i8* %fdt, i64 24
  %0 = bitcast i8* %last_comp_version to i32*
  store i32 268435456, i32* %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @fdt_set_boot_cpuid_phys(i8* nocapture noundef writeonly %fdt, i32 noundef %val) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @__fswab32(i32 noundef %val) #10
  %boot_cpuid_phys = getelementptr inbounds i8, i8* %fdt, i64 28
  %0 = bitcast i8* %boot_cpuid_phys to i32*
  store i32 %call, i32* %0, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_pack(i8* noundef %fdt) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @fdt_rw_probe_(i8* noundef %fdt) #8
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %cleanup.cont, label %cleanup5

cleanup.cont:                                     ; preds = %entry
  %call1 = call i32 @fdt_num_mem_rsv(i8* noundef %fdt) #9
  %add = shl i32 %call1, 4
  %mul = add i32 %add, 16
  %size_dt_struct = getelementptr inbounds i8, i8* %fdt, i64 36
  %0 = bitcast i8* %size_dt_struct to i32*
  %call3 = call fastcc i32 @fdt32_ld(i32* noundef %0) #8
  call fastcc void @fdt_packblocks_(i8* noundef %fdt, i8* noundef %fdt, i32 noundef %mul, i32 noundef %call3) #8
  %call4 = call fastcc i32 @fdt_data_size_(i8* noundef %fdt) #8
  call fastcc void @fdt_set_totalsize(i8* noundef %fdt, i32 noundef %call4) #8
  br label %cleanup5

cleanup5:                                         ; preds = %entry, %cleanup.cont
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @fdt_data_size_(i8* nocapture noundef readonly %fdt) unnamed_addr #2 {
entry:
  %off_dt_strings = getelementptr inbounds i8, i8* %fdt, i64 12
  %0 = bitcast i8* %off_dt_strings to i32*
  %call = call fastcc i32 @fdt32_ld(i32* noundef %0) #8
  %size_dt_strings = getelementptr inbounds i8, i8* %fdt, i64 32
  %1 = bitcast i8* %size_dt_strings to i32*
  %call1 = call fastcc i32 @fdt32_ld(i32* noundef %1) #8
  %add = add i32 %call1, %call
  ret i32 %add
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.fdt_reserve_entry* @fdt_mem_rsv_(i8* noundef readonly %fdt, i32 noundef %n) unnamed_addr #2 {
entry:
  %off_mem_rsvmap = getelementptr inbounds i8, i8* %fdt, i64 16
  %0 = bitcast i8* %off_mem_rsvmap to i32*
  %call = call fastcc i32 @fdt32_ld(i32* noundef %0) #8
  %idx.ext = zext i32 %call to i64
  %add.ptr = getelementptr i8, i8* %fdt, i64 %idx.ext
  %1 = bitcast i8* %add.ptr to %struct.fdt_reserve_entry*
  %idx.ext1 = sext i32 %n to i64
  %add.ptr2 = getelementptr %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %1, i64 %idx.ext1
  ret %struct.fdt_reserve_entry* %add.ptr2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @fdt_splice_(i8* noundef %fdt, i8* noundef %splicepoint, i32 noundef %oldlen, i32 noundef %newlen) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @fdt_data_size_(i8* noundef %fdt) #8
  %sub.ptr.lhs.cast = ptrtoint i8* %splicepoint to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %fdt to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp slt i32 %oldlen, 0
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %conv59 = zext i32 %oldlen to i64
  %add = add i64 %sub.ptr.sub, %conv59
  %cmp1 = icmp ult i64 %add, %sub.ptr.sub
  br i1 %cmp1, label %cleanup, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %conv6 = zext i32 %call to i64
  %cmp7 = icmp ugt i64 %add, %conv6
  br i1 %cmp7, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false3
  %cmp9 = icmp ult i8* %splicepoint, %fdt
  %add12 = add i32 %call, %newlen
  %cmp13 = icmp ult i32 %add12, %oldlen
  %or.cond = select i1 %cmp9, i1 true, i1 %cmp13
  br i1 %or.cond, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end
  %sub = sub i32 %newlen, %oldlen
  %add17 = add i32 %sub, %call
  %totalsize = getelementptr inbounds i8, i8* %fdt, i64 4
  %0 = bitcast i8* %totalsize to i32*
  %call18 = call fastcc i32 @fdt32_ld(i32* noundef %0) #8
  %cmp19 = icmp ugt i32 %add17, %call18
  br i1 %cmp19, label %cleanup, label %if.end22

if.end22:                                         ; preds = %if.end16
  %idx.ext = sext i32 %newlen to i64
  %add.ptr = getelementptr i8, i8* %splicepoint, i64 %idx.ext
  %add.ptr24 = getelementptr i8, i8* %splicepoint, i64 %conv59
  %add.ptr26 = getelementptr i8, i8* %fdt, i64 %conv6
  %sub.ptr.lhs.cast29 = ptrtoint i8* %add.ptr26 to i64
  %sub.ptr.rhs.cast30 = ptrtoint i8* %add.ptr24 to i64
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.rhs.cast30
  %call32 = call i8* @memmove(i8* noundef %add.ptr, i8* noundef %add.ptr24, i64 noundef %sub.ptr.sub31) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end, %entry, %lor.lhs.false, %lor.lhs.false3, %if.end22
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -4, %lor.lhs.false3 ], [ -4, %lor.lhs.false ], [ -4, %entry ], [ -4, %if.end ], [ -3, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @fdt_set_off_dt_struct(i8* nocapture noundef writeonly %fdt, i32 noundef %val) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @__fswab32(i32 noundef %val) #10
  %off_dt_struct = getelementptr inbounds i8, i8* %fdt, i64 8
  %0 = bitcast i8* %off_dt_struct to i32*
  store i32 %call, i32* %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @fdt_set_off_dt_strings(i8* nocapture noundef writeonly %fdt, i32 noundef %val) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @__fswab32(i32 noundef %val) #10
  %off_dt_strings = getelementptr inbounds i8, i8* %fdt, i64 12
  %0 = bitcast i8* %off_dt_strings to i32*
  store i32 %call, i32* %0, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_check_node_offset_(i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @fdt_find_add_string_(i8* noundef %fdt, i8* noundef %s, i32* nocapture noundef writeonly %allocated) unnamed_addr #0 {
entry:
  %off_dt_strings = getelementptr inbounds i8, i8* %fdt, i64 12
  %0 = bitcast i8* %off_dt_strings to i32*
  %call = call fastcc i32 @fdt32_ld(i32* noundef %0) #8
  %idx.ext = zext i32 %call to i64
  %add.ptr = getelementptr i8, i8* %fdt, i64 %idx.ext
  %call1 = call i64 @strlen(i8* noundef %s) #9
  %1 = trunc i64 %call1 to i32
  %conv = add i32 %1, 1
  store i32 0, i32* %allocated, align 4
  %size_dt_strings = getelementptr inbounds i8, i8* %fdt, i64 32
  %2 = bitcast i8* %size_dt_strings to i32*
  %call3 = call fastcc i32 @fdt32_ld(i32* noundef %2) #8
  %call4 = call i8* @fdt_find_string_(i8* noundef %add.ptr, i32 noundef %call3, i8* noundef %s) #9
  %tobool.not = icmp eq i8* %call4, null
  br i1 %tobool.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint i8* %call4 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv6 = trunc i64 %sub.ptr.sub to i32
  br label %cleanup

if.end7:                                          ; preds = %entry
  %call9 = call fastcc i32 @fdt32_ld(i32* noundef %2) #8
  %call12 = call fastcc i32 @fdt_splice_string_(i8* noundef %fdt, i32 noundef %conv) #8
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %cleanup

if.end15:                                         ; preds = %if.end7
  %idx.ext10 = zext i32 %call9 to i64
  %add.ptr11 = getelementptr i8, i8* %add.ptr, i64 %idx.ext10
  store i32 1, i32* %allocated, align 4
  %conv19 = sext i32 %conv to i64
  %call20 = call i8* @memcpy(i8* noundef %add.ptr11, i8* noundef %s, i64 noundef %conv19) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end15, %if.then5
  %retval.0 = phi i32 [ %conv6, %if.then5 ], [ %call9, %if.end15 ], [ %call12, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fdt_del_last_string_(i8* nocapture noundef %fdt, i8* noundef %s) unnamed_addr #0 {
entry:
  %call = call i64 @strlen(i8* noundef %s) #9
  %0 = trunc i64 %call to i32
  %conv.neg = xor i32 %0, -1
  %size_dt_strings = getelementptr inbounds i8, i8* %fdt, i64 32
  %1 = bitcast i8* %size_dt_strings to i32*
  %call1 = call fastcc i32 @fdt32_ld(i32* noundef %1) #8
  %sub = add i32 %call1, %conv.neg
  call fastcc void @fdt_set_size_dt_strings(i8* noundef %fdt, i32 noundef %sub) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @fdt_find_string_(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @fdt_splice_string_(i8* noundef %fdt, i32 noundef %newlen) unnamed_addr #0 {
entry:
  %off_dt_strings = getelementptr inbounds i8, i8* %fdt, i64 12
  %0 = bitcast i8* %off_dt_strings to i32*
  %call = call fastcc i32 @fdt32_ld(i32* noundef %0) #8
  %idx.ext = zext i32 %call to i64
  %add.ptr = getelementptr i8, i8* %fdt, i64 %idx.ext
  %size_dt_strings = getelementptr inbounds i8, i8* %fdt, i64 32
  %1 = bitcast i8* %size_dt_strings to i32*
  %call1 = call fastcc i32 @fdt32_ld(i32* noundef %1) #8
  %idx.ext2 = zext i32 %call1 to i64
  %add.ptr3 = getelementptr i8, i8* %add.ptr, i64 %idx.ext2
  %call4 = call fastcc i32 @fdt_splice_(i8* noundef %fdt, i8* noundef %add.ptr3, i32 noundef 0, i32 noundef %newlen) #8
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call6 = call fastcc i32 @fdt32_ld(i32* noundef %1) #8
  %add = add i32 %call6, %newlen
  call fastcc void @fdt_set_size_dt_strings(i8* noundef %fdt, i32 noundef %add) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i32 %call4
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @fdt_set_size_dt_strings(i8* nocapture noundef writeonly %fdt, i32 noundef %val) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @__fswab32(i32 noundef %val) #10
  %size_dt_strings = getelementptr inbounds i8, i8* %fdt, i64 32
  %0 = bitcast i8* %size_dt_strings to i32*
  store i32 %call, i32* %0, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.fdt_property* @fdt_get_property(i8* noundef, i32 noundef, i8* noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @fdt_offset_ptr_(i8* noundef readonly %fdt, i32 noundef %offset) unnamed_addr #2 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @fdt_set_off_mem_rsvmap(i8* nocapture noundef writeonly %fdt) unnamed_addr #5 {
entry:
  %off_mem_rsvmap = getelementptr inbounds i8, i8* %fdt, i64 16
  %0 = bitcast i8* %off_mem_rsvmap to i32*
  store i32 671088640, i32* %0, align 4
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #11 = { nounwind }

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
