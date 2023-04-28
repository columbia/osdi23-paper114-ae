; ModuleID = 'crypto/asn1_dsa.c'
source_filename = "crypto/asn1_dsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpacket_st = type { %struct.buf_mem_st*, i8*, i64, i64, i64, %struct.wpacket_sub*, i8 }
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.wpacket_sub = type { %struct.wpacket_sub*, i64, i64, i64, i32 }
%struct.bignum_st = type opaque
%struct.PACKET = type { i8*, i64 }

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_encode_der_length(%struct.wpacket_st* noundef %pkt, i64 noundef %cont_len) local_unnamed_addr #0 {
entry:
  %cmp = icmp ugt i64 %cont_len, 65535
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp ugt i64 %cont_len, 255
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 130, i64 noundef 1) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then2
  %conv = trunc i64 %cont_len to i32
  %call3 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %conv, i64 noundef 2) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %return, label %if.end18

if.else:                                          ; preds = %if.end
  %cmp7 = icmp ugt i64 %cont_len, 127
  br i1 %cmp7, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %if.else
  %call9 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 129, i64 noundef 1) #8
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %return, label %if.end12

if.end12:                                         ; preds = %land.lhs.true, %if.else
  %conv13 = trunc i64 %cont_len to i32
  %call14 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %conv13, i64 noundef 1) #8
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %return, label %if.end18

if.end18:                                         ; preds = %if.end12, %lor.lhs.false
  br label %return

return:                                           ; preds = %if.end12, %land.lhs.true, %if.then2, %lor.lhs.false, %entry, %if.end18
  %retval.0 = phi i32 [ 1, %if.end18 ], [ 0, %entry ], [ 0, %lor.lhs.false ], [ 0, %if.then2 ], [ 0, %land.lhs.true ], [ 0, %if.end12 ]
  ret i32 %retval.0
}

declare i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_encode_der_integer(%struct.wpacket_st* noundef %pkt, %struct.bignum_st* noundef %n) local_unnamed_addr #0 {
entry:
  %bnbytes = alloca i8*, align 8
  %0 = bitcast i8** %bnbytes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %call = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %n) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %n) #8
  %div = sdiv i32 %call1, 8
  %add = add nsw i32 %div, 1
  %conv = sext i32 %add to i64
  %call2 = tail call i32 @WPACKET_start_sub_packet(%struct.wpacket_st* noundef %pkt) #8
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call4 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 2, i64 noundef 1) #8
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %call7 = tail call i32 @ossl_encode_der_length(%struct.wpacket_st* noundef %pkt, i64 noundef %conv) #10
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cleanup, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %call10 = call i32 @WPACKET_allocate_bytes(%struct.wpacket_st* noundef %pkt, i64 noundef %conv, i8** noundef nonnull %bnbytes) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %call13 = call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #8
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %lor.lhs.false12
  %1 = load i8*, i8** %bnbytes, align 8, !tbaa !4
  %cmp.not = icmp eq i8* %1, null
  br i1 %cmp.not, label %if.end24, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end16
  %call19 = call i32 @BN_bn2binpad(%struct.bignum_st* noundef %n, i8* noundef nonnull %1, i32 noundef %add) #8
  %cmp21.not = icmp eq i32 %call19, %add
  br i1 %cmp21.not, label %if.end24, label %cleanup

if.end24:                                         ; preds = %land.lhs.true, %if.end16
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end, %lor.lhs.false, %lor.lhs.false6, %lor.lhs.false9, %lor.lhs.false12, %entry, %if.end24
  %retval.0 = phi i32 [ 1, %if.end24 ], [ 0, %entry ], [ 0, %lor.lhs.false12 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false6 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @BN_is_negative(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @WPACKET_start_sub_packet(%struct.wpacket_st* noundef) local_unnamed_addr #1

declare i32 @WPACKET_allocate_bytes(%struct.wpacket_st* noundef, i64 noundef, i8** noundef) local_unnamed_addr #1

declare i32 @WPACKET_close(%struct.wpacket_st* noundef) local_unnamed_addr #1

declare i32 @BN_bn2binpad(%struct.bignum_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_encode_der_dsa_sig(%struct.wpacket_st* noundef %pkt, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %s) local_unnamed_addr #0 {
entry:
  %tmppkt = alloca %struct.wpacket_st, align 8
  %cont_len = alloca i64, align 8
  %0 = bitcast %struct.wpacket_st* %tmppkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #9
  %1 = bitcast i64* %cont_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  %call = tail call i32 @WPACKET_is_null_buf(%struct.wpacket_st* noundef %pkt) #8
  %call1 = tail call i32 @WPACKET_start_sub_packet(%struct.wpacket_st* noundef %pkt) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then3, label %if.end8

if.then3:                                         ; preds = %if.end
  %call4 = call i32 @WPACKET_init_null(%struct.wpacket_st* noundef nonnull %tmppkt, i64 noundef 0) #8
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end, %if.then3
  %dummypkt.0 = phi %struct.wpacket_st* [ %tmppkt, %if.then3 ], [ %pkt, %if.end ]
  %call9 = call i32 @ossl_encode_der_integer(%struct.wpacket_st* noundef %dummypkt.0, %struct.bignum_st* noundef %r) #10
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end8
  %call11 = call i32 @ossl_encode_der_integer(%struct.wpacket_st* noundef %dummypkt.0, %struct.bignum_st* noundef %s) #10
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then20, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %call14 = call i32 @WPACKET_get_length(%struct.wpacket_st* noundef %dummypkt.0, i64* noundef nonnull %cont_len) #8
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then20, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  br i1 %tobool2.not, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %lor.lhs.false16
  %call18 = call i32 @WPACKET_finish(%struct.wpacket_st* noundef %dummypkt.0) #8
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then22, label %if.end24

if.then20:                                        ; preds = %lor.lhs.false13, %lor.lhs.false, %if.end8
  br i1 %tobool2.not, label %if.then22, label %cleanup

if.then22:                                        ; preds = %land.lhs.true, %if.then20
  call void @WPACKET_cleanup(%struct.wpacket_st* noundef %dummypkt.0) #8
  br label %cleanup

if.end24:                                         ; preds = %land.lhs.true, %lor.lhs.false16
  %call25 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 48, i64 noundef 1) #8
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %cleanup, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %if.end24
  %2 = load i64, i64* %cont_len, align 8, !tbaa !8
  %call28 = call i32 @ossl_encode_der_length(%struct.wpacket_st* noundef %pkt, i64 noundef %2) #10
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %cleanup, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false27
  br i1 %tobool2.not, label %land.lhs.true32, label %lor.lhs.false40

land.lhs.true32:                                  ; preds = %lor.lhs.false30
  %call33 = call i32 @ossl_encode_der_integer(%struct.wpacket_st* noundef %pkt, %struct.bignum_st* noundef %r) #10
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %cleanup, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %land.lhs.true32
  %call38 = call i32 @ossl_encode_der_integer(%struct.wpacket_st* noundef %pkt, %struct.bignum_st* noundef %s) #10
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %cleanup, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %lor.lhs.false30, %land.lhs.true37
  %call41 = call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #8
  %tobool42.not = icmp ne i32 %call41, 0
  %spec.select = zext i1 %tobool42.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false40, %if.end24, %lor.lhs.false27, %land.lhs.true32, %land.lhs.true37, %if.then20, %if.then22, %if.then3, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.then3 ], [ 0, %if.then22 ], [ 0, %if.then20 ], [ 0, %land.lhs.true37 ], [ 0, %land.lhs.true32 ], [ 0, %lor.lhs.false27 ], [ 0, %if.end24 ], [ %spec.select, %lor.lhs.false40 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare i32 @WPACKET_is_null_buf(%struct.wpacket_st* noundef) local_unnamed_addr #1

declare i32 @WPACKET_init_null(%struct.wpacket_st* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @WPACKET_get_length(%struct.wpacket_st* noundef, i64* noundef) local_unnamed_addr #1

declare i32 @WPACKET_finish(%struct.wpacket_st* noundef) local_unnamed_addr #1

declare void @WPACKET_cleanup(%struct.wpacket_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define i32 @ossl_decode_der_length(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) local_unnamed_addr #3 {
entry:
  %byte = alloca i32, align 4
  %0 = bitcast i32* %byte to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  %call = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef %pkt, i32* noundef nonnull %byte) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %byte, align 4, !tbaa !10
  %cmp = icmp ult i32 %1, 128
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %conv = zext i32 %1 to i64
  %call2 = tail call fastcc i32 @PACKET_get_sub_packet(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef %subpkt, i64 noundef %conv) #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  switch i32 %1, label %cleanup [
    i32 129, label %if.then6
    i32 130, label %if.then11
  ]

if.then6:                                         ; preds = %if.end3
  %call7 = tail call fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef %subpkt) #10
  br label %cleanup

if.then11:                                        ; preds = %if.end3
  %call12 = tail call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef %subpkt) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry, %if.then11, %if.then6, %if.then1
  %retval.0 = phi i32 [ %call2, %if.then1 ], [ %call7, %if.then6 ], [ %call12, %if.then11 ], [ 0, %entry ], [ 0, %if.end3 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_1(%struct.PACKET* nocapture noundef %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #4 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_1(%struct.PACKET* noundef %pkt, i32* noundef %data) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 1) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_sub_packet(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt, i64 noundef %len) unnamed_addr #4 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_sub_packet(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef %subpkt, i64 noundef %len) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef %len) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) unnamed_addr #3 {
entry:
  %length = alloca i32, align 4
  %data = alloca i8*, align 8
  %tmp = alloca %struct.PACKET, align 8
  %0 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  %2 = bitcast %struct.PACKET* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #9
  %3 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !12
  %call = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %tmp, i32* noundef nonnull %length) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %length, align 4, !tbaa !10
  %conv = zext i32 %4 to i64
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %conv) #10
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !12
  %5 = load i8*, i8** %data, align 8, !tbaa !4
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !13
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %conv, i64* %remaining, align 8, !tbaa !15
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) unnamed_addr #3 {
entry:
  %length = alloca i32, align 4
  %data = alloca i8*, align 8
  %tmp = alloca %struct.PACKET, align 8
  %0 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  %2 = bitcast %struct.PACKET* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #9
  %3 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !12
  %call = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %tmp, i32* noundef nonnull %length) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %length, align 4, !tbaa !10
  %conv = zext i32 %4 to i64
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %conv) #10
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !12
  %5 = load i8*, i8** %data, align 8, !tbaa !4
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !13
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %conv, i64* %remaining, align 8, !tbaa !15
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_decode_der_integer(%struct.PACKET* nocapture noundef %pkt, %struct.bignum_st* noundef %n) local_unnamed_addr #0 {
entry:
  %contpkt = alloca %struct.PACKET, align 8
  %tmppkt = alloca %struct.PACKET, align 8
  %tag = alloca i32, align 4
  %tmp = alloca i32, align 4
  %0 = bitcast %struct.PACKET* %contpkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #9
  %1 = bitcast %struct.PACKET* %tmppkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #9
  %2 = bitcast i32* %tag to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #9
  %3 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #9
  %call = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef %pkt, i32* noundef nonnull %tag) #10
  %tobool = icmp eq i32 %call, 0
  %4 = load i32, i32* %tag, align 4
  %cmp = icmp ne i32 %4, 2
  %or.cond = select i1 %tobool, i1 true, i1 %cmp
  br i1 %or.cond, label %cleanup, label %lor.lhs.false1

lor.lhs.false1:                                   ; preds = %entry
  %call2 = call i32 @ossl_decode_der_length(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %contpkt) #10
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8* noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !12
  %call4 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %tmppkt, i32* noundef nonnull %tmp) #10
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %if.end
  %5 = load i32, i32* %tmp, align 4, !tbaa !10
  %and = and i32 %5, 128
  %cmp7.not = icmp eq i32 %and, 0
  br i1 %cmp7.not, label %if.end9, label %cleanup

if.end9:                                          ; preds = %lor.lhs.false6
  %call10 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %tmppkt) #10
  %cmp11 = icmp ne i64 %call10, 0
  %cmp12 = icmp eq i32 %5, 0
  %or.cond32 = select i1 %cmp11, i1 %cmp12, i1 false
  br i1 %or.cond32, label %if.then13, label %if.end21

if.then13:                                        ; preds = %if.end9
  %call14 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %tmppkt, i32* noundef nonnull %tmp) #10
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %if.then13
  %6 = load i32, i32* %tmp, align 4, !tbaa !10
  %and17 = and i32 %6, 128
  %cmp18 = icmp eq i32 %and17, 0
  br i1 %cmp18, label %cleanup, label %if.end21

if.end21:                                         ; preds = %lor.lhs.false16, %if.end9
  %call22 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %contpkt) #10
  %call23 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %contpkt) #10
  %conv = trunc i64 %call23 to i32
  %call24 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef %call22, i32 noundef %conv, %struct.bignum_st* noundef %n) #8
  %cmp25 = icmp ne %struct.bignum_st* %call24, null
  %. = zext i1 %cmp25 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then13, %lor.lhs.false16, %if.end, %lor.lhs.false6, %entry, %lor.lhs.false1
  %retval.0 = phi i32 [ 0, %lor.lhs.false1 ], [ 0, %entry ], [ 0, %lor.lhs.false6 ], [ 0, %if.end ], [ 0, %lor.lhs.false16 ], [ 0, %if.then13 ], [ %., %if.end21 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i64 @PACKET_remaining(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #6 {
entry:
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %0 = load i64, i64* %remaining, align 8, !tbaa !15
  ret i64 %0
}

declare %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* @PACKET_data(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #6 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !13
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define i64 @ossl_decode_der_dsa_sig(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %s, i8** nocapture noundef %ppin, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %pkt = alloca %struct.PACKET, align 8
  %contpkt = alloca %struct.PACKET, align 8
  %tag = alloca i32, align 4
  %0 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #9
  %1 = bitcast %struct.PACKET* %contpkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #9
  %2 = bitcast i32* %tag to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #9
  %3 = load i8*, i8** %ppin, align 8, !tbaa !4
  %call = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef %3, i64 noundef %len) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %pkt, i32* noundef nonnull %tag) #10
  %tobool2 = icmp eq i32 %call1, 0
  %4 = load i32, i32* %tag, align 4
  %cmp = icmp ne i32 %4, 48
  %or.cond = select i1 %tobool2, i1 true, i1 %cmp
  br i1 %or.cond, label %cleanup, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call5 = call i32 @ossl_decode_der_length(%struct.PACKET* noundef nonnull %pkt, %struct.PACKET* noundef nonnull %contpkt) #10
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %call8 = call i32 @ossl_decode_der_integer(%struct.PACKET* noundef nonnull %contpkt, %struct.bignum_st* noundef %r) #10
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %call11 = call i32 @ossl_decode_der_integer(%struct.PACKET* noundef nonnull %contpkt, %struct.bignum_st* noundef %s) #10
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %call14 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %contpkt) #10
  %cmp15.not = icmp eq i64 %call14, 0
  br i1 %cmp15.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false13
  %call16 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %pkt) #10
  %5 = load i8*, i8** %ppin, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint i8* %call16 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %sub.ptr.sub
  store i8* %add.ptr, i8** %ppin, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %lor.lhs.false4, %lor.lhs.false7, %lor.lhs.false10, %lor.lhs.false13, %if.end
  %retval.0 = phi i64 [ %sub.ptr.sub, %if.end ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false7 ], [ 0, %lor.lhs.false4 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #9
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc i32 @PACKET_buf_init(%struct.PACKET* nocapture noundef writeonly %pkt, i8* noundef %buf, i64 noundef %len) unnamed_addr #7 {
entry:
  %cmp = icmp slt i64 %len, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  store i8* %buf, i8** %curr, align 8, !tbaa !13
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  store i64 %len, i64* %remaining, align 8, !tbaa !15
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_1(%struct.PACKET* nocapture noundef readonly %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #4 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #10
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !13
  %1 = load i8, i8* %0, align 1, !tbaa !16
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %data, align 4, !tbaa !10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @packet_forward(%struct.PACKET* nocapture noundef %pkt, i64 noundef %len) unnamed_addr #4 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !13
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %len
  store i8* %add.ptr, i8** %curr, align 8, !tbaa !13
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %1 = load i64, i64* %remaining, align 8, !tbaa !15
  %sub = sub i64 %1, %len
  store i64 %sub, i64* %remaining, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_sub_packet(%struct.PACKET* nocapture noundef readonly %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt, i64 noundef %len) unnamed_addr #4 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #10
  %cmp = icmp ult i64 %call, %len
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !13
  %call1 = tail call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef %subpkt, i8* noundef %0, i64 noundef %len) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_bytes(%struct.PACKET* nocapture noundef %pkt, i8** nocapture noundef writeonly %data, i64 noundef %len) unnamed_addr #4 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_bytes(%struct.PACKET* noundef %pkt, i8** noundef %data, i64 noundef %len) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef %len) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_bytes(%struct.PACKET* nocapture noundef readonly %pkt, i8** nocapture noundef writeonly %data, i64 noundef %len) unnamed_addr #4 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #10
  %cmp = icmp ult i64 %call, %len
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !13
  store i8* %0, i8** %data, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_net_2(%struct.PACKET* nocapture noundef %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #4 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_net_2(%struct.PACKET* noundef %pkt, i32* noundef %data) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 2) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_net_2(%struct.PACKET* nocapture noundef readonly %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #4 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #10
  %cmp = icmp ult i64 %call, 2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !13
  %1 = load i8, i8* %0, align 1, !tbaa !16
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  store i32 %shl, i32* %data, align 4, !tbaa !10
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  %2 = load i8, i8* %add.ptr, align 1, !tbaa !16
  %conv2 = zext i8 %2 to i32
  %or = or i32 %shl, %conv2
  store i32 %or, i32* %data, align 4, !tbaa !10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{i64 0, i64 8, !4, i64 8, i64 8, !8}
!13 = !{!14, !5, i64 0}
!14 = !{!"", !5, i64 0, !9, i64 8}
!15 = !{!14, !9, i64 8}
!16 = !{!6, !6, i64 0}
