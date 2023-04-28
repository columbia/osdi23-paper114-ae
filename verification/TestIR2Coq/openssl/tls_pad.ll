; ModuleID = 'ssl/record/tls_pad.c'
source_filename = "ssl/record/tls_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_lib_ctx_st = type opaque

@.str = private unnamed_addr constant [21 x i8] c"ssl/record/tls_pad.c\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_cbc_remove_padding_and_mac(i64* nocapture noundef %reclen, i64 noundef %origreclen, i8* noundef %recdata, i8** noundef %mac, i32* noundef %alloced, i64 noundef %block_size, i64 noundef %mac_size, %struct.ossl_lib_ctx_st* noundef %libctx) local_unnamed_addr #0 {
entry:
  %add = add i64 %mac_size, 1
  %0 = load i64, i64* %reclen, align 8, !tbaa !4
  %cmp = icmp ugt i64 %add, %0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %sub = add i64 %0, -1
  %arrayidx = getelementptr inbounds i8, i8* %recdata, i64 %sub
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %conv = zext i8 %1 to i64
  %add1 = add i64 %add, %conv
  %call = tail call fastcc i64 @constant_time_ge_s(i64 noundef %0, i64 noundef %add1) #7
  %add2 = add nuw nsw i64 %conv, 1
  %call3 = tail call fastcc i64 @constant_time_ge_s(i64 noundef %block_size, i64 noundef %add2) #7
  %and = and i64 %call3, %call
  %and5 = and i64 %and, %add2
  %sub6 = sub i64 %0, %and5
  store i64 %sub6, i64* %reclen, align 8, !tbaa !4
  %call7 = tail call fastcc i32 @ssl3_cbc_copy_mac(i64* noundef nonnull %reclen, i64 noundef %origreclen, i8* noundef %recdata, i8** noundef %mac, i32* noundef %alloced, i64 noundef %block_size, i64 noundef %mac_size, i64 noundef %and, %struct.ossl_lib_ctx_st* noundef %libctx) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call7, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @constant_time_ge_s(i64 noundef %a, i64 noundef %b) unnamed_addr #2 {
entry:
  %call = tail call fastcc i64 @constant_time_lt_s(i64 noundef %a, i64 noundef %b) #7
  %neg = xor i64 %call, -1
  ret i64 %neg
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl3_cbc_copy_mac(i64* nocapture noundef %reclen, i64 noundef %origreclen, i8* noundef %recdata, i8** noundef writeonly %mac, i32* noundef writeonly %alloced, i64 noundef %block_size, i64 noundef %mac_size, i64 noundef %good, %struct.ossl_lib_ctx_st* noundef %libctx) unnamed_addr #0 {
entry:
  %rotated_mac_buf = alloca [128 x i8], align 16
  %randmac = alloca [64 x i8], align 16
  %0 = getelementptr inbounds [128 x i8], [128 x i8]* %rotated_mac_buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #8
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %randmac, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #8
  %2 = load i64, i64* %reclen, align 8, !tbaa !4
  %sub = sub i64 %2, %mac_size
  %cmp = icmp uge i64 %origreclen, %mac_size
  %cmp1 = icmp ult i64 %mac_size, 65
  %3 = and i1 %cmp, %cmp1
  br i1 %3, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %cmp3 = icmp eq i64 %mac_size, 0
  br i1 %cmp3, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  %cmp5 = icmp ne i64 %good, 0
  %. = zext i1 %cmp5 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  store i64 %sub, i64* %reclen, align 8, !tbaa !4
  %cmp10 = icmp eq i64 %block_size, 1
  br i1 %cmp10, label %if.then11, label %if.end18

if.then11:                                        ; preds = %if.end8
  %cmp12.not = icmp eq i8** %mac, null
  br i1 %cmp12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.then11
  %arrayidx = getelementptr inbounds i8, i8* %recdata, i64 %sub
  store i8* %arrayidx, i8** %mac, align 8, !tbaa !9
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.then11
  %cmp15.not = icmp eq i32* %alloced, null
  br i1 %cmp15.not, label %cleanup, label %if.then16

if.then16:                                        ; preds = %if.end14
  store i32 0, i32* %alloced, align 4, !tbaa !11
  br label %cleanup

if.end18:                                         ; preds = %if.end8
  %call = call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef nonnull %1, i64 noundef %mac_size, i32 noundef 0) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end20

if.end20:                                         ; preds = %if.end18
  %cmp21 = icmp ne i8** %mac, null
  %cmp23 = icmp ne i32* %alloced, null
  %4 = and i1 %cmp21, %cmp23
  br i1 %4, label %if.end28, label %cleanup

if.end28:                                         ; preds = %if.end20
  %call29 = call i8* @CRYPTO_malloc(i64 noundef %mac_size, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 261) #9
  store i8* %call29, i8** %mac, align 8, !tbaa !9
  %cmp30 = icmp eq i8* %call29, null
  br i1 %cmp30, label %cleanup, label %if.end32

if.end32:                                         ; preds = %if.end28
  store i32 1, i32* %alloced, align 4, !tbaa !11
  %5 = ptrtoint [128 x i8]* %rotated_mac_buf to i64
  %sub35 = sub i64 0, %5
  %and = and i64 %sub35, 48
  %add.ptr = getelementptr inbounds [128 x i8], [128 x i8]* %rotated_mac_buf, i64 0, i64 %and
  %add36 = add nuw nsw i64 %mac_size, 256
  %6 = call i64 @llvm.usub.sat.i64(i64 %origreclen, i64 %add36)
  %call43 = call i8* @memset(i8* noundef nonnull %add.ptr, i32 noundef 0, i64 noundef %mac_size) #9
  %cmp44146 = icmp ult i64 %6, %origreclen
  br i1 %cmp44146, label %for.body, label %for.body62.preheader

for.body62.preheader:                             ; preds = %for.body, %if.end32
  %rotate_offset.0.lcssa = phi i64 [ 0, %if.end32 ], [ %or50, %for.body ]
  %conv65 = trunc i64 %good to i8
  %umax = call i64 @llvm.umax.i64(i64 %mac_size, i64 1)
  br label %for.body62

for.body:                                         ; preds = %if.end32, %for.body
  %in_mac.0150 = phi i64 [ %and48, %for.body ], [ 0, %if.end32 ]
  %rotate_offset.0149 = phi i64 [ %or50, %for.body ], [ 0, %if.end32 ]
  %j.0148 = phi i64 [ %and57, %for.body ], [ 0, %if.end32 ]
  %i.0147 = phi i64 [ %inc58, %for.body ], [ %6, %if.end32 ]
  %call45 = call fastcc i64 @constant_time_eq_s(i64 noundef %i.0147, i64 noundef %sub) #7
  %call46 = call fastcc i64 @constant_time_lt_s(i64 noundef %i.0147, i64 noundef %2) #7
  %arrayidx47 = getelementptr inbounds i8, i8* %recdata, i64 %i.0147
  %7 = load i8, i8* %arrayidx47, align 1, !tbaa !8
  %or = or i64 %call45, %in_mac.0150
  %and48 = and i64 %or, %call46
  %and49 = and i64 %call45, %j.0148
  %or50 = or i64 %and49, %rotate_offset.0149
  %inc = add i64 %j.0148, 1
  %arrayidx52 = getelementptr inbounds i8, i8* %add.ptr, i64 %j.0148
  %8 = load i8, i8* %arrayidx52, align 1, !tbaa !8
  %9 = trunc i64 %and48 to i8
  %10 = and i8 %7, %9
  %conv55 = or i8 %10, %8
  store i8 %conv55, i8* %arrayidx52, align 1, !tbaa !8
  %call56 = call fastcc i64 @constant_time_lt_s(i64 noundef %inc, i64 noundef %mac_size) #7
  %and57 = and i64 %call56, %inc
  %inc58 = add nuw i64 %i.0147, 1
  %exitcond.not = icmp eq i64 %inc58, %origreclen
  br i1 %exitcond.not, label %for.body62.preheader, label %for.body, !llvm.loop !13

for.body62:                                       ; preds = %for.body62.preheader, %for.body62
  %rotate_offset.1154 = phi i64 [ %and73, %for.body62 ], [ %rotate_offset.0.lcssa, %for.body62.preheader ]
  %j.1153 = phi i64 [ %inc70, %for.body62 ], [ 0, %for.body62.preheader ]
  %xor = xor i64 %rotate_offset.1154, 32
  %arrayidx63 = getelementptr inbounds i8, i8* %add.ptr, i64 %xor
  %11 = load volatile i8, i8* %arrayidx63, align 1, !tbaa !8
  %inc66 = add i64 %rotate_offset.1154, 1
  %arrayidx67 = getelementptr inbounds i8, i8* %add.ptr, i64 %rotate_offset.1154
  %12 = load i8, i8* %arrayidx67, align 1, !tbaa !8
  %arrayidx68 = getelementptr inbounds [64 x i8], [64 x i8]* %randmac, i64 0, i64 %j.1153
  %13 = load i8, i8* %arrayidx68, align 1, !tbaa !8
  %call69 = call fastcc zeroext i8 @constant_time_select_8(i8 noundef zeroext %conv65, i8 noundef zeroext %12, i8 noundef zeroext %13) #7
  %inc70 = add nuw i64 %j.1153, 1
  %arrayidx71 = getelementptr inbounds i8, i8* %call29, i64 %j.1153
  store i8 %call69, i8* %arrayidx71, align 1, !tbaa !8
  %call72 = call fastcc i64 @constant_time_lt_s(i64 noundef %inc66, i64 noundef %mac_size) #7
  %and73 = and i64 %call72, %inc66
  %exitcond155.not = icmp eq i64 %inc70, %umax
  br i1 %exitcond155.not, label %cleanup, label %for.body62, !llvm.loop !15

cleanup:                                          ; preds = %for.body62, %if.end28, %if.end20, %if.end18, %if.end14, %if.then16, %if.then4, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %., %if.then4 ], [ 1, %if.then16 ], [ 1, %if.end14 ], [ 0, %if.end18 ], [ 0, %if.end20 ], [ 0, %if.end28 ], [ 1, %for.body62 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @tls1_cbc_remove_padding_and_mac(i64* nocapture noundef %reclen, i64 noundef %origreclen, i8* noundef %recdata, i8** noundef %mac, i32* noundef %alloced, i64 noundef %block_size, i64 noundef %mac_size, i32 noundef %aead, %struct.ossl_lib_ctx_st* noundef %libctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp ne i64 %block_size, 1
  %0 = zext i1 %cmp to i64
  %add = add i64 %0, %mac_size
  %1 = load i64, i64* %reclen, align 8, !tbaa !4
  %cmp1 = icmp ugt i64 %add, %1
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp3.not = icmp eq i64 %block_size, 1
  br i1 %cmp3.not, label %if.end31, label %if.then5

if.then5:                                         ; preds = %if.end
  %sub = add i64 %1, -1
  %arrayidx = getelementptr inbounds i8, i8* %recdata, i64 %sub
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %conv6 = zext i8 %2 to i64
  %tobool.not = icmp eq i32 %aead, 0
  br i1 %tobool.not, label %if.end11, label %if.then7

if.then7:                                         ; preds = %if.then5
  %add8.neg = xor i64 %mac_size, -1
  %add9.neg = add i64 %1, %add8.neg
  %sub10 = sub i64 %add9.neg, %conv6
  store i64 %sub10, i64* %reclen, align 8, !tbaa !4
  store i8* null, i8** %mac, align 8, !tbaa !9
  store i32 0, i32* %alloced, align 4, !tbaa !11
  br label %cleanup

if.end11:                                         ; preds = %if.then5
  %add12 = add i64 %add, %conv6
  %call = tail call fastcc i64 @constant_time_ge_s(i64 noundef %1, i64 noundef %add12) #7
  %cmp13 = icmp ult i64 %1, 256
  %spec.select = select i1 %cmp13, i64 %1, i64 256
  %cmp1773.not = icmp eq i64 %spec.select, 0
  br i1 %cmp1773.not, label %for.end, label %for.body

for.body:                                         ; preds = %if.end11, %for.body
  %good.075 = phi i64 [ %and25, %for.body ], [ %call, %if.end11 ]
  %i.074 = phi i64 [ %inc, %for.body ], [ 0, %if.end11 ]
  %call19 = tail call fastcc zeroext i8 @constant_time_ge_8_s(i64 noundef %conv6, i64 noundef %i.074) #7
  %3 = xor i64 %i.074, -1
  %sub21 = add i64 %1, %3
  %arrayidx22 = getelementptr inbounds i8, i8* %recdata, i64 %sub21
  %4 = load i8, i8* %arrayidx22, align 1, !tbaa !8
  %xor71 = xor i8 %4, %2
  %and72 = and i8 %xor71, %call19
  %and = zext i8 %and72 to i64
  %neg = xor i64 %and, -1
  %and25 = and i64 %good.075, %neg
  %inc = add nuw nsw i64 %i.074, 1
  %exitcond.not = icmp eq i64 %inc, %spec.select
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !16

for.end:                                          ; preds = %for.body, %if.end11
  %good.0.lcssa = phi i64 [ %call, %if.end11 ], [ %and25, %for.body ]
  %and26 = and i64 %good.0.lcssa, 255
  %call27 = tail call fastcc i64 @constant_time_eq_s(i64 noundef 255, i64 noundef %and26) #7
  %add28 = add nuw nsw i64 %conv6, 1
  %and29 = and i64 %call27, %add28
  %sub30 = sub i64 %1, %and29
  store i64 %sub30, i64* %reclen, align 8, !tbaa !4
  br label %if.end31

if.end31:                                         ; preds = %for.end, %if.end
  %good.1 = phi i64 [ %call27, %for.end ], [ -1, %if.end ]
  %call32 = tail call fastcc i32 @ssl3_cbc_copy_mac(i64* noundef nonnull %reclen, i64 noundef %origreclen, i8* noundef %recdata, i8** noundef %mac, i32* noundef %alloced, i64 noundef %block_size, i64 noundef %mac_size, i64 noundef %good.1, %struct.ossl_lib_ctx_st* noundef %libctx) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end31, %if.then7
  %retval.0 = phi i32 [ 1, %if.then7 ], [ %call32, %if.end31 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc zeroext i8 @constant_time_ge_8_s(i64 noundef %a, i64 noundef %b) unnamed_addr #2 {
entry:
  %call = tail call fastcc i64 @constant_time_ge_s(i64 noundef %a, i64 noundef %b) #7
  %conv = trunc i64 %call to i8
  ret i8 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @constant_time_eq_s(i64 noundef %a, i64 noundef %b) unnamed_addr #2 {
entry:
  %xor = xor i64 %b, %a
  %call = tail call fastcc i64 @constant_time_is_zero_s(i64 noundef %xor) #7
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @constant_time_lt_s(i64 noundef %a, i64 noundef %b) unnamed_addr #2 {
entry:
  %xor = xor i64 %b, %a
  %sub = sub i64 %a, %b
  %xor1 = xor i64 %sub, %b
  %or = or i64 %xor1, %xor
  %xor2 = xor i64 %or, %a
  %call = tail call fastcc i64 @constant_time_msb_s(i64 noundef %xor2) #7
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @constant_time_msb_s(i64 noundef %a) unnamed_addr #2 {
entry:
  %shr.neg = ashr i64 %a, 63
  ret i64 %shr.neg
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @constant_time_is_zero_s(i64 noundef %a) unnamed_addr #2 {
entry:
  %neg = xor i64 %a, -1
  %sub = add i64 %a, -1
  %and = and i64 %sub, %neg
  %call = tail call fastcc i64 @constant_time_msb_s(i64 noundef %and) #7
  ret i64 %call
}

declare i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc zeroext i8 @constant_time_select_8(i8 noundef zeroext %mask, i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #5 {
entry:
  %conv = zext i8 %mask to i32
  %conv1 = zext i8 %a to i32
  %conv2 = zext i8 %b to i32
  %call = tail call fastcc i32 @constant_time_select(i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2) #7
  %conv3 = trunc i32 %call to i8
  ret i8 %conv3
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc i32 @constant_time_select(i32 noundef %mask, i32 noundef %a, i32 noundef %b) unnamed_addr #5 {
entry:
  %call = tail call fastcc i32 @value_barrier(i32 noundef %mask) #7
  %and = and i32 %call, %a
  %neg = xor i32 %mask, -1
  %call1 = tail call fastcc i32 @value_barrier(i32 noundef %neg) #7
  %and2 = and i32 %call1, %b
  %or = or i32 %and2, %and
  ret i32 %or
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc i32 @value_barrier(i32 noundef %a) unnamed_addr #5 {
entry:
  %0 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %a) #10, !srcloc !17
  ret i32 %0
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = !{i64 1442379}
