; ModuleID = 'lib/fdt_addresses.c'
source_filename = "lib/fdt_addresses.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_address_cells(i8* noundef %fdt, i32 noundef %nodeoffset) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @fdt_cells(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)) #7
  switch i32 %call, label %if.end3 [
    i32 0, label %cleanup
    i32 -1, label %if.then2
  ]

if.then2:                                         ; preds = %entry
  br label %cleanup

if.end3:                                          ; preds = %entry
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end3, %if.then2
  %retval.0 = phi i32 [ 2, %if.then2 ], [ %call, %if.end3 ], [ -14, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @fdt_cells(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %name) unnamed_addr #0 {
entry:
  %len = alloca i32, align 4
  %0 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  store i32 0, i32* %len, align 4, !annotation !7
  %call = call i8* @fdt_getprop(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %name, i32* noundef nonnull %len) #9
  %1 = bitcast i8* %call to i32*
  %tobool.not = icmp eq i8* %call, null
  %2 = load i32, i32* %len, align 4
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp.not = icmp eq i32 %2, 4
  br i1 %cmp.not, label %cond.false, label %cleanup

cond.false:                                       ; preds = %if.end
  %3 = load i32, i32* %1, align 4
  %call11 = call fastcc i32 @__fswab32(i32 noundef %3) #10
  %cmp12 = icmp ugt i32 %call11, 4
  %.cond = select i1 %cmp12, i32 -14, i32 %call11
  br label %cleanup

cleanup:                                          ; preds = %entry, %cond.false, %if.end
  %retval.0 = phi i32 [ -14, %if.end ], [ %.cond, %cond.false ], [ %2, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_size_cells(i8* noundef %fdt, i32 noundef %nodeoffset) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @fdt_cells(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)) #7
  %cmp = icmp eq i32 %call, -1
  %.call = select i1 %cmp, i32 1, i32 %call
  ret i32 %.call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fdt_appendprop_addrrange(i8* noundef %fdt, i32 noundef %parent, i32 noundef %nodeoffset, i8* noundef %name, i64 noundef %addr, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %data = alloca [16 x i8], align 1
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %data, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %call = call i32 @fdt_address_cells(i8* noundef %fdt, i32 noundef %parent) #7
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @fdt_size_cells(i8* noundef %fdt, i32 noundef %parent) #7
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  switch i32 %call, label %cleanup [
    i32 1, label %if.then6
    i32 2, label %if.then13
  ]

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp ugt i64 %addr, 4294967295
  %sub = sub i64 0, %addr
  %cmp8 = icmp ult i64 %sub, %size
  %or.cond = or i1 %cmp7, %cmp8
  br i1 %or.cond, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.then6
  %conv = trunc i64 %addr to i32
  call fastcc void @fdt32_st(i8* noundef nonnull %0, i32 noundef %conv) #7
  br label %if.end16

if.then13:                                        ; preds = %if.end4
  call fastcc void @fdt64_st(i8* noundef nonnull %0, i64 noundef %addr) #7
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end10
  %conv1769 = zext i32 %call to i64
  %mul = shl nuw nsw i64 %conv1769, 2
  %add.ptr = getelementptr [16 x i8], [16 x i8]* %data, i64 0, i64 %mul
  switch i32 %call1, label %cleanup [
    i32 1, label %if.then20
    i32 2, label %if.then29
  ]

if.then20:                                        ; preds = %if.end16
  %cmp21 = icmp ugt i64 %size, 4294967295
  br i1 %cmp21, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.then20
  %conv25 = trunc i64 %size to i32
  call fastcc void @fdt32_st(i8* noundef %add.ptr, i32 noundef %conv25) #7
  br label %if.end32

if.then29:                                        ; preds = %if.end16
  call fastcc void @fdt64_st(i8* noundef %add.ptr, i64 noundef %size) #7
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end24
  %add = add nuw nsw i32 %call1, %call
  %mul35 = shl nuw nsw i32 %add, 2
  %call37 = call i32 @fdt_appendprop(i8* noundef %fdt, i32 noundef %nodeoffset, i8* noundef %name, i8* noundef nonnull %0, i32 noundef %mul35) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then20, %if.end4, %if.then6, %if.end, %entry, %if.end32
  %retval.0 = phi i32 [ %call37, %if.end32 ], [ %call, %entry ], [ %call1, %if.end ], [ -15, %if.then6 ], [ -14, %if.end4 ], [ -15, %if.then20 ], [ -14, %if.end16 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @fdt32_st(i8* nocapture noundef writeonly %property, i32 noundef %value) unnamed_addr #3 {
entry:
  %shr = lshr i32 %value, 24
  %conv = trunc i32 %shr to i8
  store i8 %conv, i8* %property, align 1
  %shr1 = lshr i32 %value, 16
  %conv2 = trunc i32 %shr1 to i8
  %arrayidx3 = getelementptr i8, i8* %property, i64 1
  store i8 %conv2, i8* %arrayidx3, align 1
  %shr4 = lshr i32 %value, 8
  %conv6 = trunc i32 %shr4 to i8
  %arrayidx7 = getelementptr i8, i8* %property, i64 2
  store i8 %conv6, i8* %arrayidx7, align 1
  %conv9 = trunc i32 %value to i8
  %arrayidx10 = getelementptr i8, i8* %property, i64 3
  store i8 %conv9, i8* %arrayidx10, align 1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @fdt64_st(i8* nocapture noundef writeonly %property, i64 noundef %value) unnamed_addr #3 {
entry:
  %shr = lshr i64 %value, 56
  %conv = trunc i64 %shr to i8
  store i8 %conv, i8* %property, align 1
  %shr1 = lshr i64 %value, 48
  %conv2 = trunc i64 %shr1 to i8
  %arrayidx3 = getelementptr i8, i8* %property, i64 1
  store i8 %conv2, i8* %arrayidx3, align 1
  %shr4 = lshr i64 %value, 40
  %conv6 = trunc i64 %shr4 to i8
  %arrayidx7 = getelementptr i8, i8* %property, i64 2
  store i8 %conv6, i8* %arrayidx7, align 1
  %shr8 = lshr i64 %value, 32
  %conv10 = trunc i64 %shr8 to i8
  %arrayidx11 = getelementptr i8, i8* %property, i64 3
  store i8 %conv10, i8* %arrayidx11, align 1
  %shr12 = lshr i64 %value, 24
  %conv14 = trunc i64 %shr12 to i8
  %arrayidx15 = getelementptr i8, i8* %property, i64 4
  store i8 %conv14, i8* %arrayidx15, align 1
  %shr16 = lshr i64 %value, 16
  %conv18 = trunc i64 %shr16 to i8
  %arrayidx19 = getelementptr i8, i8* %property, i64 5
  store i8 %conv18, i8* %arrayidx19, align 1
  %shr20 = lshr i64 %value, 8
  %conv22 = trunc i64 %shr20 to i8
  %arrayidx23 = getelementptr i8, i8* %property, i64 6
  store i8 %conv22, i8* %arrayidx23, align 1
  %conv25 = trunc i64 %value to i8
  %arrayidx26 = getelementptr i8, i8* %property, i64 7
  store i8 %conv25, i8* %arrayidx26, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_appendprop(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @fdt_getprop(i8* noundef, i32 noundef, i8* noundef, i32* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__fswab32(i32 noundef %val) unnamed_addr #5 {
entry:
  %or7 = call i32 @llvm.bswap.i32(i32 %val)
  ret i32 %or7
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin nounwind readnone willreturn "no-builtins" }

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
