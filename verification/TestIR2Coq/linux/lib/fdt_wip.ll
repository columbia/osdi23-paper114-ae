; ModuleID = 'lib/fdt_wip.c'
source_filename = "lib/fdt_wip.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.fdt_property = type { i32, i32, i32, [0 x i8] }

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_setprop_inplace_namelen_partial(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %name, i32 noundef %namelen, i32 noundef %idx, i8* noundef %val, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %proplen = alloca i32, align 4
  %0 = bitcast i32* %proplen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4
  store i32 0, i32* %proplen, align 4, !annotation !7
  %call = call fastcc i8* @fdt_getprop_namelen_w(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %name, i32 noundef %namelen, i32* noundef nonnull %proplen) #5
  %tobool.not = icmp eq i8* %call, null
  %1 = load i32, i32* %proplen, align 4
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add = add i32 %len, %idx
  %cmp = icmp ult i32 %1, %add
  br i1 %cmp, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %idx.ext = zext i32 %idx to i64
  %add.ptr = getelementptr i8, i8* %call, i64 %idx.ext
  %conv = sext i32 %len to i64
  %call3 = call i8* @memcpy(i8* noundef %add.ptr, i8* noundef %val, i64 noundef %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %if.end2
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -3, %if.end ], [ %1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @fdt_getprop_namelen_w(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %name, i32 noundef %namelen, i32* noundef %lenp) unnamed_addr #0 {
entry:
  %call = call i8* @fdt_getprop_namelen(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %name, i32 noundef %namelen, i32* noundef %lenp) #6
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_setprop_inplace(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %name, i8* noundef %val, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %proplen = alloca i32, align 4
  %0 = bitcast i32* %proplen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4
  store i32 0, i32* %proplen, align 4, !annotation !7
  %call = call i8* @fdt_getprop(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %name, i32* noundef nonnull %proplen) #6
  %tobool.not = icmp eq i8* %call, null
  %1 = load i32, i32* %proplen, align 4
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp.not = icmp eq i32 %1, %len
  br i1 %cmp.not, label %if.end2, label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = call i64 @strlen(i8* noundef %name) #6
  %conv = trunc i64 %call3 to i32
  %call4 = call i32 @fdt_setprop_inplace_namelen_partial(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %name, i32 noundef %conv, i32 noundef 0, i8* noundef %val, i32 noundef %len) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %if.end2
  %retval.0 = phi i32 [ %call4, %if.end2 ], [ -3, %if.end ], [ %1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @fdt_getprop(i8* noundef, i32 noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_nop_property(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %len = alloca i32, align 4
  %0 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4
  store i32 0, i32* %len, align 4, !annotation !7
  %call = call fastcc %struct.fdt_property* @fdt_get_property_w(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %name, i32* noundef nonnull %len) #5
  %tobool.not = icmp eq %struct.fdt_property* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %len, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = bitcast %struct.fdt_property* %call to i8*
  %3 = load i32, i32* %len, align 4
  %add = add i32 %3, 12
  call fastcc void @fdt_nop_region_(i8* noundef nonnull %2, i32 noundef %add) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.end ], [ %1, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.fdt_property* @fdt_get_property_w(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %name, i32* noundef %lenp) unnamed_addr #0 {
entry:
  %call = call %struct.fdt_property* @fdt_get_property(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %name, i32* noundef %lenp) #6
  ret %struct.fdt_property* %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid writeonly
define internal fastcc void @fdt_nop_region_(i8* noundef writeonly %start, i32 noundef %len) unnamed_addr #3 {
entry:
  %idx.ext = sext i32 %len to i64
  %add.ptr = getelementptr i8, i8* %start, i64 %idx.ext
  %cmp5 = icmp ugt i8* %add.ptr, %start
  br i1 %cmp5, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %0 = bitcast i8* %start to i32*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %p.06 = phi i32* [ %incdec.ptr, %for.body ], [ %0, %for.body.preheader ]
  store i32 67108864, i32* %p.06, align 4
  %incdec.ptr = getelementptr i32, i32* %p.06, i64 1
  %1 = bitcast i32* %incdec.ptr to i8*
  %cmp = icmp ugt i8* %add.ptr, %1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_node_end_offset_(i8* noundef %fdt, i32 noundef %offset) local_unnamed_addr #0 {
entry:
  %depth = alloca i32, align 4
  %0 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4
  store i32 0, i32* %depth, align 4
  %cmp4 = icmp sgt i32 %offset, -1
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.body
  %offset.addr.06 = phi i32 [ %call, %while.body ], [ %offset, %entry ]
  %call = call i32 @fdt_next_node(i8* noundef %fdt, i32 noundef %offset.addr.06, i32* noundef nonnull %depth) #6
  %cmp = icmp sgt i32 %call, -1
  %1 = load i32, i32* %depth, align 4
  %cmp1 = icmp sgt i32 %1, -1
  %2 = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %2, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  %offset.addr.0.lcssa = phi i32 [ %offset, %entry ], [ %call, %while.body ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4
  ret i32 %offset.addr.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_next_node(i8* noundef, i32 noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_nop_node(i8* noundef %fdt, i32 noundef %nodeoffset) local_unnamed_addr #0 {
entry:
  %call = call i32 @fdt_node_end_offset_(i8* noundef %fdt, i32 noundef %nodeoffset) #5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i8* @fdt_offset_ptr_w(i8* noundef %fdt, i32 noundef %nodeoffset) #5
  %sub = sub i32 %call, %nodeoffset
  call fastcc void @fdt_nop_region_(i8* noundef %call1, i32 noundef %sub) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @fdt_offset_ptr_w(i8* noundef %fdt, i32 noundef %offset) unnamed_addr #0 {
entry:
  %call = call i8* @fdt_offset_ptr(i8* noundef %fdt, i32 noundef %offset, i32 noundef 0) #6
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @fdt_getprop_namelen(i8* noundef, i32 noundef, i8* noundef, i32 noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.fdt_property* @fdt_get_property(i8* noundef, i32 noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @fdt_offset_ptr(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }

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
