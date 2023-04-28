; ModuleID = 'crypto/der_writer.c'
source_filename = "crypto/der_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpacket_st = type { %struct.buf_mem_st*, i8*, i64, i64, i64, %struct.wpacket_sub*, i8 }
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.wpacket_sub = type { %struct.wpacket_sub*, i64, i64, i64, i32 }
%struct.bignum_st = type opaque

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_DER_w_precompiled(%struct.wpacket_st* noundef %pkt, i32 noundef %tag, i8* noundef %precompiled, i64 noundef %precompiled_n) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @int_start_context(%struct.wpacket_st* noundef %pkt, i32 noundef %tag) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @WPACKET_memcpy(%struct.wpacket_st* noundef %pkt, i8* noundef %precompiled, i64 noundef %precompiled_n) #4
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = tail call fastcc i32 @int_end_context(%struct.wpacket_st* noundef %pkt, i32 noundef %tag) #3
  %tobool4 = icmp ne i32 %call3, 0
  %phi.cast = zext i1 %tobool4 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %0 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @int_start_context(%struct.wpacket_st* noundef %pkt, i32 noundef %tag) unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %tag, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp ult i32 %tag, 31
  br i1 %cmp1, label %if.end5, label %return

if.end5:                                          ; preds = %if.end
  %call = tail call i32 @WPACKET_start_sub_packet(%struct.wpacket_st* noundef %pkt) #4
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end5
  %retval.0 = phi i32 [ %call, %if.end5 ], [ 1, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare i32 @WPACKET_memcpy(%struct.wpacket_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @int_end_context(%struct.wpacket_st* noundef %pkt, i32 noundef %tag) unnamed_addr #0 {
entry:
  %size1 = alloca i64, align 8
  %size2 = alloca i64, align 8
  %0 = bitcast i64* %size1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %1 = bitcast i64* %size2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  %cmp = icmp slt i32 %tag, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp ult i32 %tag, 31
  br i1 %cmp1, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end
  %or = or i32 %tag, 160
  %call = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef %pkt, i64* noundef nonnull %size1) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end5
  %call6 = call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #4
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true
  %call9 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef %pkt, i64* noundef nonnull %size2) #4
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true8
  %2 = load i64, i64* %size1, align 8, !tbaa !4
  %3 = load i64, i64* %size2, align 8, !tbaa !4
  %cmp11 = icmp eq i64 %2, %3
  br i1 %cmp11, label %cleanup, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %call13 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %or, i64 noundef 1) #4
  %tobool14 = icmp ne i32 %call13, 0
  %phi.cast = zext i1 %tobool14 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %land.lhs.true, %land.lhs.true8, %lor.rhs, %land.rhs, %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.end ], [ 0, %land.lhs.true8 ], [ 0, %land.lhs.true ], [ 0, %if.end5 ], [ 1, %land.rhs ], [ %phi.cast, %lor.rhs ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_DER_w_boolean(%struct.wpacket_st* noundef %pkt, i32 noundef %tag, i32 noundef %b) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @int_start_context(%struct.wpacket_st* noundef %pkt, i32 noundef %tag) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @WPACKET_start_sub_packet(%struct.wpacket_st* noundef %pkt) #4
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.end, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %tobool4.not = icmp eq i32 %b, 0
  br i1 %tobool4.not, label %land.lhs.true7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true3
  %call5 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 255, i64 noundef 1) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.end, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %lor.lhs.false, %land.lhs.true3
  %call8 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #4
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true10, label %land.end

land.lhs.true10:                                  ; preds = %land.lhs.true7
  %call11 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 1, i64 noundef 1) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true10
  %call13 = tail call fastcc i32 @int_end_context(%struct.wpacket_st* noundef %pkt, i32 noundef %tag) #3
  %tobool14 = icmp ne i32 %call13, 0
  %phi.cast = zext i1 %tobool14 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true10, %land.lhs.true7, %lor.lhs.false, %land.lhs.true, %entry
  %0 = phi i32 [ 0, %land.lhs.true10 ], [ 0, %land.lhs.true7 ], [ 0, %lor.lhs.false ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

declare i32 @WPACKET_start_sub_packet(%struct.wpacket_st* noundef) local_unnamed_addr #1

declare i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @WPACKET_close(%struct.wpacket_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_DER_w_octet_string(%struct.wpacket_st* noundef %pkt, i32 noundef %tag, i8* noundef %data, i64 noundef %data_n) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @int_start_context(%struct.wpacket_st* noundef %pkt, i32 noundef %tag) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @WPACKET_start_sub_packet(%struct.wpacket_st* noundef %pkt) #4
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.end, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = tail call i32 @WPACKET_memcpy(%struct.wpacket_st* noundef %pkt, i8* noundef %data, i64 noundef %data_n) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.end, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %call7 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.end, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %call10 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 4, i64 noundef 1) #4
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true9
  %call12 = tail call fastcc i32 @int_end_context(%struct.wpacket_st* noundef %pkt, i32 noundef %tag) #3
  %tobool13 = icmp ne i32 %call12, 0
  %phi.cast = zext i1 %tobool13 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true9, %land.lhs.true6, %land.lhs.true3, %land.lhs.true, %entry
  %0 = phi i32 [ 0, %land.lhs.true9 ], [ 0, %land.lhs.true6 ], [ 0, %land.lhs.true3 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_DER_w_octet_string_uint32(%struct.wpacket_st* noundef %pkt, i32 noundef %tag, i32 noundef %value) local_unnamed_addr #0 {
entry:
  %tmp = alloca i32, align 4
  %0 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  store i32 0, i32* %tmp, align 4
  %cmp.not5 = icmp eq i32 %value, 0
  br i1 %cmp.not5, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 3
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %pbuf.07 = phi i8* [ %incdec.ptr, %while.body ], [ %add.ptr, %while.body.preheader ]
  %value.addr.06 = phi i32 [ %shr, %while.body ], [ %value, %while.body.preheader ]
  %conv = trunc i32 %value.addr.06 to i8
  %incdec.ptr = getelementptr inbounds i8, i8* %pbuf.07, i64 -1
  store i8 %conv, i8* %pbuf.07, align 1, !tbaa !8
  %shr = lshr i32 %value.addr.06, 8
  %cmp.not = icmp ult i32 %value.addr.06, 256
  br i1 %cmp.not, label %while.end, label %while.body, !llvm.loop !9

while.end:                                        ; preds = %while.body, %entry
  %call = call i32 @ossl_DER_w_octet_string(%struct.wpacket_st* noundef %pkt, i32 noundef %tag, i8* noundef nonnull %0, i64 noundef 4) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_DER_w_ulong(%struct.wpacket_st* noundef %pkt, i32 noundef %tag, i64 noundef %v) local_unnamed_addr #0 {
entry:
  %v.addr = alloca i64, align 8
  store i64 %v, i64* %v.addr, align 8, !tbaa !4
  %0 = bitcast i64* %v.addr to i8*
  %call = call fastcc i32 @int_der_w_integer(%struct.wpacket_st* noundef %pkt, i32 noundef %tag, i32 (%struct.wpacket_st*, i8*, i32*)* noundef nonnull @int_put_bytes_ulong, i8* noundef nonnull %0) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @int_der_w_integer(%struct.wpacket_st* noundef %pkt, i32 noundef %tag, i32 (%struct.wpacket_st*, i8*, i32*)* nocapture noundef readonly %put_bytes, i8* noundef %v) unnamed_addr #0 {
entry:
  %top_byte = alloca i32, align 4
  %0 = bitcast i32* %top_byte to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  store i32 0, i32* %top_byte, align 4, !tbaa !11
  %call = tail call fastcc i32 @int_start_context(%struct.wpacket_st* noundef %pkt, i32 noundef %tag) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @WPACKET_start_sub_packet(%struct.wpacket_st* noundef %pkt) #4
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.end, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = call i32 %put_bytes(%struct.wpacket_st* noundef %pkt, i8* noundef %v, i32* noundef nonnull %top_byte) #4, !callees !13
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.end, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %1 = load i32, i32* %top_byte, align 4, !tbaa !11
  %and = and i32 %1, 128
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %land.lhs.true9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true6
  %call7 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 0, i64 noundef 1) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.end, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %lor.lhs.false, %land.lhs.true6
  %call10 = call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #4
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.end, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %call13 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 2, i64 noundef 1) #4
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true12
  %call15 = call fastcc i32 @int_end_context(%struct.wpacket_st* noundef %pkt, i32 noundef %tag) #3
  %tobool16 = icmp ne i32 %call15, 0
  %phi.cast = zext i1 %tobool16 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true12, %land.lhs.true9, %lor.lhs.false, %land.lhs.true3, %land.lhs.true, %entry
  %2 = phi i32 [ 0, %land.lhs.true12 ], [ 0, %land.lhs.true9 ], [ 0, %lor.lhs.false ], [ 0, %land.lhs.true3 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @int_put_bytes_ulong(%struct.wpacket_st* noundef %pkt, i8* nocapture noundef readonly %v, i32* nocapture noundef writeonly %top_byte) #0 {
entry:
  %0 = bitcast i8* %v to i64*
  %1 = load i64, i64* %0, align 8, !tbaa !4
  %cmp.not12 = icmp eq i64 %1, 0
  br i1 %cmp.not12, label %3, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %n.014 = phi i64 [ %inc, %while.body ], [ 0, %entry ]
  %tmp.013 = phi i64 [ %shr, %while.body ], [ %1, %entry ]
  %inc = add nuw nsw i64 %n.014, 1
  %shr = lshr i64 %tmp.013, 8
  %cmp.not = icmp ult i64 %tmp.013, 256
  br i1 %cmp.not, label %while.end, label %while.body, !llvm.loop !14

while.end:                                        ; preds = %while.body
  %2 = trunc i64 %tmp.013 to i32
  store i32 %2, i32* %top_byte, align 4, !tbaa !11
  br label %3

3:                                                ; preds = %entry, %while.end
  %4 = phi i64 [ %inc, %while.end ], [ 1, %entry ]
  %conv3 = trunc i64 %1 to i32
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %conv3, i64 noundef %4) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_DER_w_bn(%struct.wpacket_st* noundef %pkt, i32 noundef %tag, %struct.bignum_st* noundef %v) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.bignum_st* %v, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @BN_is_negative(%struct.bignum_st* noundef nonnull %v) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %call1 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %v) #4
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @ossl_DER_w_ulong(%struct.wpacket_st* noundef %pkt, i32 noundef %tag, i64 noundef 0) #3
  br label %return

if.end5:                                          ; preds = %if.end
  %0 = bitcast %struct.bignum_st* %v to i8*
  %call6 = tail call fastcc i32 @int_der_w_integer(%struct.wpacket_st* noundef %pkt, i32 noundef %tag, i32 (%struct.wpacket_st*, i8*, i32*)* noundef nonnull @int_put_bytes_bn, i8* noundef nonnull %0) #3
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end5, %if.then3
  %retval.0 = phi i32 [ %call4, %if.then3 ], [ %call6, %if.end5 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @BN_is_negative(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @int_put_bytes_bn(%struct.wpacket_st* noundef %pkt, i8* noundef %v, i32* nocapture noundef writeonly %top_byte) #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store i8* null, i8** %p, align 8, !tbaa !15
  %1 = bitcast i8* %v to %struct.bignum_st*
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %1) #4
  %add = add nsw i32 %call, 7
  %div = sdiv i32 %add, 8
  %conv = sext i32 %div to i64
  %call1 = tail call i64* @bn_get_words(%struct.bignum_st* noundef %1) #4
  %sub = add nsw i64 %conv, -1
  %div2 = lshr i64 %sub, 3
  %arrayidx = getelementptr inbounds i64, i64* %call1, i64 %div2
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !4
  %rem = shl nsw i64 %sub, 3
  %mul = and i64 %rem, 56
  %shr = lshr i64 %2, %mul
  %3 = trunc i64 %shr to i32
  %conv4 = and i32 %3, 255
  store i32 %conv4, i32* %top_byte, align 4, !tbaa !11
  %call5 = call i32 @WPACKET_allocate_bytes(%struct.wpacket_st* noundef %pkt, i64 noundef %conv, i8** noundef nonnull %p) #4
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %p, align 8, !tbaa !15
  %cmp.not = icmp eq i8* %4, null
  br i1 %cmp.not, label %cleanup, label %if.then7

if.then7:                                         ; preds = %if.end
  %call8 = call i32 @BN_bn2bin(%struct.bignum_st* noundef %1, i8* noundef nonnull %4) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then7, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.then7 ], [ 1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_DER_w_null(%struct.wpacket_st* noundef %pkt, i32 noundef %tag) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @int_start_context(%struct.wpacket_st* noundef %pkt, i32 noundef %tag) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @WPACKET_start_sub_packet(%struct.wpacket_st* noundef %pkt) #4
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.end, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.end, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %call7 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 5, i64 noundef 1) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true6
  %call9 = tail call fastcc i32 @int_end_context(%struct.wpacket_st* noundef %pkt, i32 noundef %tag) #3
  %tobool10 = icmp ne i32 %call9, 0
  %phi.cast = zext i1 %tobool10 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true6, %land.lhs.true3, %land.lhs.true, %entry
  %0 = phi i32 [ 0, %land.lhs.true6 ], [ 0, %land.lhs.true3 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_DER_w_begin_sequence(%struct.wpacket_st* noundef %pkt, i32 noundef %tag) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @int_start_context(%struct.wpacket_st* noundef %pkt, i32 noundef %tag) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call1 = tail call i32 @WPACKET_start_sub_packet(%struct.wpacket_st* noundef %pkt) #4
  %tobool2 = icmp ne i32 %call1, 0
  %phi.cast = zext i1 %tobool2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_DER_w_end_sequence(%struct.wpacket_st* noundef %pkt, i32 noundef %tag) local_unnamed_addr #0 {
entry:
  %size1 = alloca i64, align 8
  %size2 = alloca i64, align 8
  %0 = bitcast i64* %size1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %1 = bitcast i64* %size2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  %call = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef %pkt, i64* noundef nonnull %size1) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #4
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.end, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef %pkt, i64* noundef nonnull %size2) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.end, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %2 = load i64, i64* %size1, align 8, !tbaa !4
  %3 = load i64, i64* %size2, align 8, !tbaa !4
  %cmp = icmp eq i64 %2, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true6
  %call7 = call i32 @WPACKET_set_flags(%struct.wpacket_st* noundef %pkt, i32 noundef 2) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.end, label %land.rhs

cond.false:                                       ; preds = %land.lhs.true6
  %call9 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 48, i64 noundef 1) #4
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %cond.false, %cond.true
  %call11 = call fastcc i32 @int_end_context(%struct.wpacket_st* noundef %pkt, i32 noundef %tag) #3
  %tobool12 = icmp ne i32 %call11, 0
  %phi.cast = zext i1 %tobool12 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.false, %cond.true, %land.lhs.true3, %land.lhs.true, %entry
  %4 = phi i32 [ 0, %cond.false ], [ 0, %cond.true ], [ 0, %land.lhs.true3 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %4
}

declare i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef, i64* noundef) local_unnamed_addr #1

declare i32 @WPACKET_set_flags(%struct.wpacket_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i64* @bn_get_words(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @WPACKET_allocate_bytes(%struct.wpacket_st* noundef, i64 noundef, i8** noundef) local_unnamed_addr #1

declare i32 @BN_bn2bin(%struct.bignum_st* noundef, i8* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nobuiltin "no-builtins" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !6, i64 0}
!13 = !{i32 (%struct.wpacket_st*, i8*, i32*)* @int_put_bytes_bn, i32 (%struct.wpacket_st*, i8*, i32*)* @int_put_bytes_ulong}
!14 = distinct !{!14, !10}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !6, i64 0}
