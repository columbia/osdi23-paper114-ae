; ModuleID = 'crypto/packet.c'
source_filename = "crypto/packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpacket_st = type { %struct.buf_mem_st*, i8*, i64, i64, i64, %struct.wpacket_sub*, i8 }
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.wpacket_sub = type { %struct.wpacket_sub*, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [16 x i8] c"crypto/packet.c\00", align 1
@__func__.WPACKET_start_sub_packet_len__ = private unnamed_addr constant [31 x i8] c"WPACKET_start_sub_packet_len__\00", align 1
@__func__.wpacket_intern_init_len = private unnamed_addr constant [24 x i8] c"wpacket_intern_init_len\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @WPACKET_allocate_bytes(%struct.wpacket_st* nocapture noundef %pkt, i64 noundef %len, i8** noundef %allocbytes) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @WPACKET_reserve_bytes(%struct.wpacket_st* noundef %pkt, i64 noundef %len, i8** noundef %allocbytes) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 2
  %0 = bitcast i64* %curr to <2 x i64>*
  %1 = load <2 x i64>, <2 x i64>* %0, align 8, !tbaa !3
  %2 = insertelement <2 x i64> poison, i64 %len, i64 0
  %3 = shufflevector <2 x i64> %2, <2 x i64> poison, <2 x i32> zeroinitializer
  %4 = add <2 x i64> %1, %3
  %5 = bitcast i64* %curr to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %5, align 8, !tbaa !3
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @WPACKET_reserve_bytes(%struct.wpacket_st* nocapture noundef readonly %pkt, i64 noundef %len, i8** noundef writeonly %allocbytes) local_unnamed_addr #0 {
entry:
  %subs = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 5
  %0 = load %struct.wpacket_sub*, %struct.wpacket_sub** %subs, align 8, !tbaa !7
  %cmp = icmp ne %struct.wpacket_sub* %0, null
  %cmp1 = icmp ne i64 %len, 0
  %1 = and i1 %cmp1, %cmp
  br i1 %1, label %if.end, label %return

if.end:                                           ; preds = %entry
  %maxsize = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 4
  %2 = load i64, i64* %maxsize, align 8, !tbaa !11
  %written = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 3
  %3 = load i64, i64* %written, align 8, !tbaa !12
  %sub = sub i64 %2, %3
  %cmp3 = icmp ult i64 %sub, %len
  br i1 %cmp3, label %return, label %if.end5

if.end5:                                          ; preds = %if.end
  %buf = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 0
  %4 = load %struct.buf_mem_st*, %struct.buf_mem_st** %buf, align 8, !tbaa !13
  %cmp6.not = icmp eq %struct.buf_mem_st* %4, null
  br i1 %cmp6.not, label %if.end28, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end5
  %length = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %4, i64 0, i32 0
  %5 = load i64, i64* %length, align 8, !tbaa !14
  %sub9 = sub i64 %5, %3
  %cmp10 = icmp ult i64 %sub9, %len
  br i1 %cmp10, label %if.then11, label %if.end28

if.then11:                                        ; preds = %land.lhs.true
  %cmp14 = icmp ult i64 %5, %len
  %len. = select i1 %cmp14, i64 %len, i64 %5
  %mul = shl i64 %len., 1
  %6 = icmp ugt i64 %mul, 256
  %spec.store.select = select i1 %6, i64 %mul, i64 256
  %cmp17.inv = icmp sgt i64 %len., -1
  %newlen.0 = select i1 %cmp17.inv, i64 %spec.store.select, i64 -1
  %call = tail call i64 @BUF_MEM_grow(%struct.buf_mem_st* noundef nonnull %4, i64 noundef %newlen.0) #10
  %cmp24.not = icmp eq i64 %call, 0
  br i1 %cmp24.not, label %return, label %if.end28

if.end28:                                         ; preds = %if.then11, %land.lhs.true, %if.end5
  %cmp29.not = icmp eq i8** %allocbytes, null
  br i1 %cmp29.not, label %return, label %if.then30

if.then30:                                        ; preds = %if.end28
  %call31 = tail call i8* @WPACKET_get_curr(%struct.wpacket_st* noundef nonnull %pkt) #9
  store i8* %call31, i8** %allocbytes, align 8, !tbaa !16
  %endfirst = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 6
  %bf.load = load i8, i8* %endfirst, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool.not = icmp eq i8 %bf.clear, 0
  %cmp33.not = icmp eq i8* %call31, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp33.not
  br i1 %or.cond, label %return, label %if.then34

if.then34:                                        ; preds = %if.then30
  %idx.neg = sub i64 0, %len
  %add.ptr = getelementptr inbounds i8, i8* %call31, i64 %idx.neg
  store i8* %add.ptr, i8** %allocbytes, align 8, !tbaa !16
  br label %return

return:                                           ; preds = %if.then11, %if.end28, %if.then34, %if.then30, %if.end, %entry
  %retval.1 = phi i32 [ 0, %if.then11 ], [ 0, %entry ], [ 0, %if.end ], [ 1, %if.then30 ], [ 1, %if.then34 ], [ 1, %if.end28 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @WPACKET_sub_allocate_bytes__(%struct.wpacket_st* nocapture noundef %pkt, i64 noundef %len, i8** noundef %allocbytes, i64 noundef %lenbytes) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef %lenbytes) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @WPACKET_allocate_bytes(%struct.wpacket_st* noundef %pkt, i64 noundef %len, i8** noundef %allocbytes) #9
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %return, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #9
  %tobool5.not = icmp ne i32 %call4, 0
  %spec.select = zext i1 %tobool5.not to i32
  br label %return

return:                                           ; preds = %lor.lhs.false3, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* nocapture noundef %pkt, i64 noundef %lenbytes) local_unnamed_addr #0 {
entry:
  %lenchars = alloca i8*, align 8
  %0 = bitcast i8** %lenchars to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  %subs = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 5
  %1 = load %struct.wpacket_sub*, %struct.wpacket_sub** %subs, align 8, !tbaa !7
  %cmp.not = icmp eq %struct.wpacket_sub* %1, null
  br i1 %cmp.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp3.not = icmp eq i64 %lenbytes, 0
  br i1 %cmp3.not, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %endfirst = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 6
  %bf.load = load i8, i8* %endfirst, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 40, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 noundef 354) #10
  %cmp7 = icmp eq i8* %call, null
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 noundef 355, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.WPACKET_start_sub_packet_len__, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %2 = load %struct.wpacket_sub*, %struct.wpacket_sub** %subs, align 8, !tbaa !7
  %parent = bitcast i8* %call to %struct.wpacket_sub**
  store %struct.wpacket_sub* %2, %struct.wpacket_sub** %parent, align 8, !tbaa !17
  %3 = bitcast %struct.wpacket_sub** %subs to i8**
  store i8* %call, i8** %3, align 8, !tbaa !7
  %written = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 3
  %4 = load i64, i64* %written, align 8, !tbaa !12
  %add = add i64 %4, %lenbytes
  %pwritten = getelementptr inbounds i8, i8* %call, i64 24
  %5 = bitcast i8* %pwritten to i64*
  store i64 %add, i64* %5, align 8, !tbaa !19
  %lenbytes13 = getelementptr inbounds i8, i8* %call, i64 16
  %6 = bitcast i8* %lenbytes13 to i64*
  store i64 %lenbytes, i64* %6, align 8, !tbaa !20
  %packet_len = getelementptr inbounds i8, i8* %call, i64 8
  %7 = bitcast i8* %packet_len to i64*
  br i1 %cmp3.not, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end10
  store i64 0, i64* %7, align 8, !tbaa !21
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  store i64 %4, i64* %7, align 8, !tbaa !21
  %call20 = call i32 @WPACKET_allocate_bytes(%struct.wpacket_st* noundef nonnull %pkt, i64 noundef %lenbytes, i8** noundef nonnull %lenchars) #9
  %tobool21.not = icmp ne i32 %call20, 0
  %. = zext i1 %tobool21.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %land.lhs.true, %entry, %if.then16, %if.then9
  %retval.0 = phi i32 [ 0, %if.then9 ], [ 1, %if.then16 ], [ 0, %entry ], [ 0, %land.lhs.true ], [ %., %if.end17 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @WPACKET_close(%struct.wpacket_st* nocapture noundef %pkt) local_unnamed_addr #0 {
entry:
  %subs = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 5
  %0 = load %struct.wpacket_sub*, %struct.wpacket_sub** %subs, align 8, !tbaa !7
  %cmp = icmp eq %struct.wpacket_sub* %0, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %parent = getelementptr inbounds %struct.wpacket_sub, %struct.wpacket_sub* %0, i64 0, i32 0
  %1 = load %struct.wpacket_sub*, %struct.wpacket_sub** %parent, align 8, !tbaa !17
  %cmp2 = icmp eq %struct.wpacket_sub* %1, null
  br i1 %cmp2, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call fastcc i32 @wpacket_intern_close(%struct.wpacket_st* noundef nonnull %pkt, %struct.wpacket_sub* noundef nonnull %0, i32 noundef 1) #9
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i64 @BUF_MEM_grow(%struct.buf_mem_st* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @WPACKET_get_curr(%struct.wpacket_st* nocapture noundef readonly %pkt) local_unnamed_addr #3 {
entry:
  %staticbuf = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 1
  %0 = load i8*, i8** %staticbuf, align 8, !tbaa !22
  %cmp.not = icmp eq i8* %0, null
  br i1 %cmp.not, label %cond.false, label %if.end

cond.false:                                       ; preds = %entry
  %buf2 = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 0
  %1 = load %struct.buf_mem_st*, %struct.buf_mem_st** %buf2, align 8, !tbaa !13
  %cmp3.not = icmp eq %struct.buf_mem_st* %1, null
  br i1 %cmp3.not, label %cleanup, label %cond.end7

cond.end7:                                        ; preds = %cond.false
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %1, i64 0, i32 1
  %2 = load i8*, i8** %data, align 8, !tbaa !23
  %cmp9 = icmp eq i8* %2, null
  br i1 %cmp9, label %cleanup, label %if.end

if.end:                                           ; preds = %entry, %cond.end7
  %cond831 = phi i8* [ %2, %cond.end7 ], [ %0, %entry ]
  %endfirst = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 6
  %bf.load = load i8, i8* %endfirst, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end
  %maxsize = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 4
  %3 = load i64, i64* %maxsize, align 8, !tbaa !11
  %add.ptr = getelementptr inbounds i8, i8* %cond831, i64 %3
  %curr = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 2
  %4 = load i64, i64* %curr, align 8, !tbaa !24
  %idx.neg = sub i64 0, %4
  %add.ptr11 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %curr13 = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 2
  %5 = load i64, i64* %curr13, align 8, !tbaa !24
  %add.ptr14 = getelementptr inbounds i8, i8* %cond831, i64 %5
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %cond.end7, %if.end12, %if.then10
  %retval.0 = phi i8* [ %add.ptr11, %if.then10 ], [ %add.ptr14, %if.end12 ], [ null, %cond.end7 ], [ null, %cond.false ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @WPACKET_sub_reserve_bytes__(%struct.wpacket_st* nocapture noundef readonly %pkt, i64 noundef %len, i8** noundef %allocbytes, i64 noundef %lenbytes) local_unnamed_addr #0 {
entry:
  %endfirst = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 6
  %bf.load = load i8, i8* %endfirst, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool = icmp ne i8 %bf.clear, 0
  %cmp = icmp ne i64 %lenbytes, 0
  %or.cond = and i1 %cmp, %tobool
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  %add = add i64 %lenbytes, %len
  %call = tail call i32 @WPACKET_reserve_bytes(%struct.wpacket_st* noundef nonnull %pkt, i64 noundef %add, i8** noundef %allocbytes) #9
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %0 = load i8*, i8** %allocbytes, align 8, !tbaa !16
  %cmp4.not = icmp eq i8* %0, null
  br i1 %cmp4.not, label %return, label %if.then5

if.then5:                                         ; preds = %if.end3
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %lenbytes
  store i8* %add.ptr, i8** %allocbytes, align 8, !tbaa !16
  br label %return

return:                                           ; preds = %if.end3, %if.then5, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 1, %if.then5 ], [ 1, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @WPACKET_init_static_len(%struct.wpacket_st* nocapture noundef %pkt, i8* noundef %buf, i64 noundef %len, i64 noundef %lenbytes) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @maxmaxsize(i64 noundef %lenbytes) #9
  %cmp = icmp ne i8* %buf, null
  %cmp1 = icmp ne i64 %len, 0
  %0 = and i1 %cmp, %cmp1
  br i1 %0, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %staticbuf = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 1
  store i8* %buf, i8** %staticbuf, align 8, !tbaa !22
  %buf3 = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 0
  store %struct.buf_mem_st* null, %struct.buf_mem_st** %buf3, align 8, !tbaa !13
  %cmp4 = icmp ult i64 %call, %len
  %cond = select i1 %cmp4, i64 %call, i64 %len
  %maxsize = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 4
  store i64 %cond, i64* %maxsize, align 8, !tbaa !11
  %endfirst = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 6
  %bf.load = load i8, i8* %endfirst, align 8
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %endfirst, align 8
  %call5 = tail call fastcc i32 @wpacket_intern_init_len(%struct.wpacket_st* noundef %pkt, i64 noundef %lenbytes) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call5, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @maxmaxsize(i64 noundef %lenbytes) unnamed_addr #4 {
entry:
  %0 = add i64 %lenbytes, -8
  %1 = icmp ult i64 %0, -7
  %mul = shl i64 %lenbytes, 3
  %notmask = shl nsw i64 -1, %mul
  %sub = xor i64 %notmask, -1
  %add = add i64 %sub, %lenbytes
  %retval.0 = select i1 %1, i64 -1, i64 %add
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @wpacket_intern_init_len(%struct.wpacket_st* nocapture noundef %pkt, i64 noundef %lenbytes) unnamed_addr #0 {
entry:
  %lenchars = alloca i8*, align 8
  %0 = bitcast i8** %lenchars to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  %curr = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 2
  %1 = bitcast i64* %curr to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %1, align 8, !tbaa !3
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 40, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 noundef 107) #10
  %subs = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 5
  %2 = bitcast %struct.wpacket_sub** %subs to i8**
  store i8* %call, i8** %2, align 8, !tbaa !7
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 noundef 108, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.wpacket_intern_init_len, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i64 %lenbytes, 0
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %pwritten = getelementptr inbounds i8, i8* %call, i64 24
  %3 = bitcast i8* %pwritten to i64*
  store i64 %lenbytes, i64* %3, align 8, !tbaa !19
  %lenbytes6 = getelementptr inbounds i8, i8* %call, i64 16
  %4 = bitcast i8* %lenbytes6 to i64*
  store i64 %lenbytes, i64* %4, align 8, !tbaa !20
  %call7 = call i32 @WPACKET_allocate_bytes(%struct.wpacket_st* noundef nonnull %pkt, i64 noundef %lenbytes, i8** noundef nonnull %lenchars) #9
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end3
  %5 = load i8*, i8** %2, align 8, !tbaa !7
  call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 noundef 119) #10
  store %struct.wpacket_sub* null, %struct.wpacket_sub** %subs, align 8, !tbaa !7
  br label %cleanup

if.end11:                                         ; preds = %if.end3
  %6 = load %struct.wpacket_sub*, %struct.wpacket_sub** %subs, align 8, !tbaa !7
  %packet_len = getelementptr inbounds %struct.wpacket_sub, %struct.wpacket_sub* %6, i64 0, i32 1
  store i64 0, i64* %packet_len, align 8, !tbaa !21
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end11, %if.then8, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end11 ], [ 0, %if.then8 ], [ 1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @WPACKET_init_der(%struct.wpacket_st* nocapture noundef %pkt, i8* noundef %buf, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %cmp = icmp ne i8* %buf, null
  %cmp1 = icmp ne i64 %len, 0
  %0 = and i1 %cmp, %cmp1
  br i1 %0, label %if.end, label %return

if.end:                                           ; preds = %entry
  %staticbuf = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 1
  store i8* %buf, i8** %staticbuf, align 8, !tbaa !22
  %buf3 = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 0
  store %struct.buf_mem_st* null, %struct.buf_mem_st** %buf3, align 8, !tbaa !13
  %maxsize = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 4
  store i64 %len, i64* %maxsize, align 8, !tbaa !11
  %endfirst = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 6
  %bf.load = load i8, i8* %endfirst, align 8
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, i8* %endfirst, align 8
  %call = tail call fastcc i32 @wpacket_intern_init_len(%struct.wpacket_st* noundef %pkt, i64 noundef 0) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @WPACKET_init_len(%struct.wpacket_st* nocapture noundef %pkt, %struct.buf_mem_st* noundef %buf, i64 noundef %lenbytes) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.buf_mem_st* %buf, null
  br i1 %cmp.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %staticbuf = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 1
  store i8* null, i8** %staticbuf, align 8, !tbaa !22
  %buf3 = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 0
  store %struct.buf_mem_st* %buf, %struct.buf_mem_st** %buf3, align 8, !tbaa !13
  %call = tail call fastcc i64 @maxmaxsize(i64 noundef %lenbytes) #9
  %maxsize = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 4
  store i64 %call, i64* %maxsize, align 8, !tbaa !11
  %endfirst = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 6
  %bf.load = load i8, i8* %endfirst, align 8
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %endfirst, align 8
  %call4 = tail call fastcc i32 @wpacket_intern_init_len(%struct.wpacket_st* noundef %pkt, i64 noundef %lenbytes) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call4, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @WPACKET_init(%struct.wpacket_st* nocapture noundef %pkt, %struct.buf_mem_st* noundef %buf) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @WPACKET_init_len(%struct.wpacket_st* noundef %pkt, %struct.buf_mem_st* noundef %buf, i64 noundef 0) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @WPACKET_init_null(%struct.wpacket_st* nocapture noundef %pkt, i64 noundef %lenbytes) local_unnamed_addr #0 {
entry:
  %staticbuf = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 1
  store i8* null, i8** %staticbuf, align 8, !tbaa !22
  %buf = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 0
  store %struct.buf_mem_st* null, %struct.buf_mem_st** %buf, align 8, !tbaa !13
  %call = tail call fastcc i64 @maxmaxsize(i64 noundef %lenbytes) #9
  %maxsize = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 4
  store i64 %call, i64* %maxsize, align 8, !tbaa !11
  %endfirst = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 6
  %bf.load = load i8, i8* %endfirst, align 8
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %endfirst, align 8
  %call1 = tail call fastcc i32 @wpacket_intern_init_len(%struct.wpacket_st* noundef %pkt, i64 noundef 0) #9
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @WPACKET_init_null_der(%struct.wpacket_st* nocapture noundef %pkt) local_unnamed_addr #0 {
entry:
  %staticbuf = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 1
  store i8* null, i8** %staticbuf, align 8, !tbaa !22
  %buf = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 0
  store %struct.buf_mem_st* null, %struct.buf_mem_st** %buf, align 8, !tbaa !13
  %maxsize = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 4
  store i64 -1, i64* %maxsize, align 8, !tbaa !11
  %endfirst = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 6
  %bf.load = load i8, i8* %endfirst, align 8
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, i8* %endfirst, align 8
  %call = tail call fastcc i32 @wpacket_intern_init_len(%struct.wpacket_st* noundef %pkt, i64 noundef 0) #9
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @WPACKET_set_flags(%struct.wpacket_st* nocapture noundef readonly %pkt, i32 noundef %flags) local_unnamed_addr #5 {
entry:
  %subs = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 5
  %0 = load %struct.wpacket_sub*, %struct.wpacket_sub** %subs, align 8, !tbaa !7
  %cmp.not = icmp eq %struct.wpacket_sub* %0, null
  br i1 %cmp.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %flags4 = getelementptr inbounds %struct.wpacket_sub, %struct.wpacket_sub* %0, i64 0, i32 4
  store i32 %flags, i32* %flags4, align 8, !tbaa !25
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @WPACKET_fill_lengths(%struct.wpacket_st* nocapture noundef %pkt) local_unnamed_addr #0 {
entry:
  %subs = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 5
  %0 = load %struct.wpacket_sub*, %struct.wpacket_sub** %subs, align 8, !tbaa !7
  %cmp.not = icmp eq %struct.wpacket_sub* %0, null
  br i1 %cmp.not, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %sub.014 = phi %struct.wpacket_sub* [ %1, %for.inc ], [ %0, %entry ]
  %call = tail call fastcc i32 @wpacket_intern_close(%struct.wpacket_st* noundef %pkt, %struct.wpacket_sub* noundef nonnull %sub.014, i32 noundef 0) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body
  %parent = getelementptr inbounds %struct.wpacket_sub, %struct.wpacket_sub* %sub.014, i64 0, i32 0
  %1 = load %struct.wpacket_sub*, %struct.wpacket_sub** %parent, align 8, !tbaa !17
  %cmp4.not = icmp eq %struct.wpacket_sub* %1, null
  br i1 %cmp4.not, label %cleanup, label %for.body, !llvm.loop !26

cleanup:                                          ; preds = %for.body, %for.inc, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %for.body ], [ 1, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @wpacket_intern_close(%struct.wpacket_st* nocapture noundef %pkt, %struct.wpacket_sub* noundef %sub, i32 noundef %doclose) unnamed_addr #0 {
entry:
  %written = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 3
  %0 = load i64, i64* %written, align 8, !tbaa !12
  %pwritten = getelementptr inbounds %struct.wpacket_sub, %struct.wpacket_sub* %sub, i64 0, i32 3
  %1 = load i64, i64* %pwritten, align 8, !tbaa !19
  %sub1 = sub i64 %0, %1
  %cmp = icmp eq i64 %sub1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.wpacket_sub, %struct.wpacket_sub* %sub, i64 0, i32 4
  %2 = load i32, i32* %flags, align 8, !tbaa !25
  %and = and i32 %2, 1
  %cmp2.not = icmp eq i32 %and, 0
  br i1 %cmp2.not, label %land.lhs.true4, label %cleanup76

land.lhs.true4:                                   ; preds = %land.lhs.true
  %and6 = and i32 %2, 2
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %if.end23, label %if.then7

if.then7:                                         ; preds = %land.lhs.true4
  %tobool8.not = icmp eq i32 %doclose, 0
  br i1 %tobool8.not, label %cleanup76, label %if.end10

if.end10:                                         ; preds = %if.then7
  %curr = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 2
  %3 = load i64, i64* %curr, align 8, !tbaa !24
  %lenbytes = getelementptr inbounds %struct.wpacket_sub, %struct.wpacket_sub* %sub, i64 0, i32 2
  %4 = load i64, i64* %lenbytes, align 8, !tbaa !20
  %sub11 = sub i64 %3, %4
  %packet_len = getelementptr inbounds %struct.wpacket_sub, %struct.wpacket_sub* %sub, i64 0, i32 1
  %5 = load i64, i64* %packet_len, align 8, !tbaa !21
  %cmp12 = icmp eq i64 %sub11, %5
  br i1 %cmp12, label %if.then13, label %if.end20

if.then13:                                        ; preds = %if.end10
  %sub16 = sub i64 %0, %4
  store i64 %sub16, i64* %written, align 8, !tbaa !12
  store i64 %sub11, i64* %curr, align 8, !tbaa !24
  br label %if.end20

if.end20:                                         ; preds = %if.then13, %if.end10
  %6 = bitcast i64* %packet_len to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %6, align 8, !tbaa !3
  br label %if.end23

if.end23:                                         ; preds = %entry, %if.end20, %land.lhs.true4
  %lenbytes24 = getelementptr inbounds %struct.wpacket_sub, %struct.wpacket_sub* %sub, i64 0, i32 2
  %7 = load i64, i64* %lenbytes24, align 8, !tbaa !20
  %cmp25.not = icmp eq i64 %7, 0
  br i1 %cmp25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end23
  %staticbuf = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 1
  %8 = load i8*, i8** %staticbuf, align 8, !tbaa !22
  %cmp27.not = icmp eq i8* %8, null
  br i1 %cmp27.not, label %cond.false, label %land.lhs.true37

cond.false:                                       ; preds = %if.then26
  %buf29 = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 0
  %9 = load %struct.buf_mem_st*, %struct.buf_mem_st** %buf29, align 8, !tbaa !13
  %cmp30.not = icmp eq %struct.buf_mem_st* %9, null
  br i1 %cmp30.not, label %if.end71, label %cond.end34

cond.end34:                                       ; preds = %cond.false
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %9, i64 0, i32 1
  %10 = load i8*, i8** %data, align 8, !tbaa !23
  %cmp36.not = icmp eq i8* %10, null
  br i1 %cmp36.not, label %if.end71, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %if.then26, %cond.end34
  %cond35128 = phi i8* [ %10, %cond.end34 ], [ %8, %if.then26 ]
  %packet_len38 = getelementptr inbounds %struct.wpacket_sub, %struct.wpacket_sub* %sub, i64 0, i32 1
  %11 = load i64, i64* %packet_len38, align 8, !tbaa !21
  %arrayidx = getelementptr inbounds i8, i8* %cond35128, i64 %11
  %call = tail call fastcc i32 @put_value(i8* noundef nonnull %arrayidx, i64 noundef %sub1, i64 noundef %7) #9
  %tobool40.not = icmp eq i32 %call, 0
  br i1 %tobool40.not, label %cleanup76, label %if.end71

if.else:                                          ; preds = %if.end23
  %endfirst = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 6
  %bf.load = load i8, i8* %endfirst, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool43.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool43.not, label %if.end71, label %land.lhs.true44

land.lhs.true44:                                  ; preds = %if.else
  %parent = getelementptr inbounds %struct.wpacket_sub, %struct.wpacket_sub* %sub, i64 0, i32 0
  %12 = load %struct.wpacket_sub*, %struct.wpacket_sub** %parent, align 8, !tbaa !17
  %cmp45.not = icmp eq %struct.wpacket_sub* %12, null
  br i1 %cmp45.not, label %if.end71, label %land.lhs.true46

land.lhs.true46:                                  ; preds = %land.lhs.true44
  br i1 %cmp, label %lor.lhs.false, label %if.then51

lor.lhs.false:                                    ; preds = %land.lhs.true46
  %flags48 = getelementptr inbounds %struct.wpacket_sub, %struct.wpacket_sub* %sub, i64 0, i32 4
  %13 = load i32, i32* %flags48, align 8, !tbaa !25
  %and49 = and i32 %13, 2
  %cmp50 = icmp eq i32 %and49, 0
  br i1 %cmp50, label %while.end.thread, label %if.end71

if.then51:                                        ; preds = %land.lhs.true46
  %cmp52.not129 = icmp ult i64 %sub1, 256
  br i1 %cmp52.not129, label %while.end, label %while.body

while.body:                                       ; preds = %if.then51, %while.body
  %numlenbytes.0131 = phi i64 [ %inc, %while.body ], [ 1, %if.then51 ]
  %tmplen.0130 = phi i64 [ %shr, %while.body ], [ %sub1, %if.then51 ]
  %shr = lshr i64 %tmplen.0130, 8
  %inc = add nuw nsw i64 %numlenbytes.0131, 1
  %cmp52.not = icmp ult i64 %tmplen.0130, 65536
  br i1 %cmp52.not, label %while.end, label %while.body, !llvm.loop !28

while.end:                                        ; preds = %while.body, %if.then51
  %numlenbytes.0.lcssa = phi i64 [ 1, %if.then51 ], [ %inc, %while.body ]
  %conv = trunc i64 %sub1 to i32
  %call53 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %conv, i64 noundef %numlenbytes.0.lcssa) #9
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %cleanup76, label %if.end56

while.end.thread:                                 ; preds = %lor.lhs.false
  %conv134 = trunc i64 %sub1 to i32
  %call53135 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %pkt, i32 noundef %conv134, i64 noundef 1) #9
  %tobool54.not136 = icmp eq i32 %call53135, 0
  br i1 %tobool54.not136, label %cleanup76, label %if.end71

if.end56:                                         ; preds = %while.end
  %cmp57 = icmp ugt i64 %sub1, 127
  br i1 %cmp57, label %if.then59, label %if.end71

if.then59:                                        ; preds = %if.end56
  %14 = trunc i64 %numlenbytes.0.lcssa to i32
  %conv60 = or i32 %14, 128
  %call61 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %conv60, i64 noundef 1) #9
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %cleanup76, label %if.end71

if.end71:                                         ; preds = %while.end.thread, %cond.false, %if.end56, %if.then59, %cond.end34, %land.lhs.true37, %if.else, %land.lhs.true44, %lor.lhs.false
  %tobool72.not = icmp eq i32 %doclose, 0
  br i1 %tobool72.not, label %cleanup76, label %if.then73

if.then73:                                        ; preds = %if.end71
  %parent74 = getelementptr inbounds %struct.wpacket_sub, %struct.wpacket_sub* %sub, i64 0, i32 0
  %15 = load %struct.wpacket_sub*, %struct.wpacket_sub** %parent74, align 8, !tbaa !17
  %subs = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 5
  store %struct.wpacket_sub* %15, %struct.wpacket_sub** %subs, align 8, !tbaa !7
  %16 = bitcast %struct.wpacket_sub* %sub to i8*
  tail call void @CRYPTO_free(i8* noundef %16, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 noundef 288) #10
  br label %cleanup76

cleanup76:                                        ; preds = %while.end.thread, %if.end71, %if.then73, %while.end, %if.then59, %land.lhs.true37, %if.then7, %land.lhs.true
  %retval.2 = phi i32 [ 0, %land.lhs.true ], [ 0, %if.then7 ], [ 0, %land.lhs.true37 ], [ 0, %if.then59 ], [ 0, %while.end ], [ 1, %if.then73 ], [ 1, %if.end71 ], [ 0, %while.end.thread ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @WPACKET_finish(%struct.wpacket_st* nocapture noundef %pkt) local_unnamed_addr #0 {
entry:
  %subs = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 5
  %0 = load %struct.wpacket_sub*, %struct.wpacket_sub** %subs, align 8, !tbaa !7
  %cmp = icmp eq %struct.wpacket_sub* %0, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %parent = getelementptr inbounds %struct.wpacket_sub, %struct.wpacket_sub* %0, i64 0, i32 0
  %1 = load %struct.wpacket_sub*, %struct.wpacket_sub** %parent, align 8, !tbaa !17
  %cmp2.not = icmp eq %struct.wpacket_sub* %1, null
  br i1 %cmp2.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call fastcc i32 @wpacket_intern_close(%struct.wpacket_st* noundef nonnull %pkt, %struct.wpacket_sub* noundef nonnull %0, i32 noundef 1) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.then4

if.then4:                                         ; preds = %if.end
  %2 = bitcast %struct.wpacket_sub** %subs to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !7
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 noundef 334) #10
  store %struct.wpacket_sub* null, %struct.wpacket_sub** %subs, align 8, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then4, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %call, %if.then4 ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @ERR_new() local_unnamed_addr #2

declare dso_local void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @WPACKET_start_sub_packet(%struct.wpacket_st* nocapture noundef %pkt) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 0) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @WPACKET_put_bytes__(%struct.wpacket_st* nocapture noundef %pkt, i32 noundef %val, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %data = alloca i8*, align 8
  %0 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  %cmp = icmp ult i64 %size, 5
  br i1 %cmp, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call = call i32 @WPACKET_allocate_bytes(%struct.wpacket_st* noundef %pkt, i64 noundef %size, i8** noundef nonnull %data) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %1 = load i8*, i8** %data, align 8, !tbaa !16
  %conv4 = zext i32 %val to i64
  %call5 = call fastcc i32 @put_value(i8* noundef %1, i64 noundef %conv4, i64 noundef %size) #9
  %tobool6.not = icmp ne i32 %call5, 0
  %spec.select = zext i1 %tobool6.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false3, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false3 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define internal fastcc i32 @put_value(i8* noundef writeonly %data, i64 noundef %value, i64 noundef %len) unnamed_addr #6 {
entry:
  %cmp = icmp eq i8* %data, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp1.not13 = icmp eq i64 %len, 0
  br i1 %cmp1.not13, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %sub = add i64 %len, -1
  %add.ptr = getelementptr inbounds i8, i8* %data, i64 %sub
  %xtraiter = and i64 %len, 7
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader, %for.body.prol
  %len.addr.016.prol = phi i64 [ %dec.prol, %for.body.prol ], [ %len, %for.body.preheader ]
  %value.addr.015.prol = phi i64 [ %shr.prol, %for.body.prol ], [ %value, %for.body.preheader ]
  %data.addr.014.prol = phi i8* [ %incdec.ptr.prol, %for.body.prol ], [ %add.ptr, %for.body.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader ]
  %conv.prol = trunc i64 %value.addr.015.prol to i8
  store i8 %conv.prol, i8* %data.addr.014.prol, align 1, !tbaa !29
  %incdec.ptr.prol = getelementptr inbounds i8, i8* %data.addr.014.prol, i64 -1
  %shr.prol = lshr i64 %value.addr.015.prol, 8
  %dec.prol = add i64 %len.addr.016.prol, -1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !30

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %shr.lcssa.unr = phi i64 [ undef, %for.body.preheader ], [ %shr.prol, %for.body.prol ]
  %len.addr.016.unr = phi i64 [ %len, %for.body.preheader ], [ %dec.prol, %for.body.prol ]
  %value.addr.015.unr = phi i64 [ %value, %for.body.preheader ], [ %shr.prol, %for.body.prol ]
  %data.addr.014.unr = phi i8* [ %add.ptr, %for.body.preheader ], [ %incdec.ptr.prol, %for.body.prol ]
  %0 = icmp ult i64 %sub, 7
  br i1 %0, label %for.end, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %len.addr.016 = phi i64 [ %dec.7, %for.body ], [ %len.addr.016.unr, %for.body.prol.loopexit ]
  %value.addr.015 = phi i64 [ 0, %for.body ], [ %value.addr.015.unr, %for.body.prol.loopexit ]
  %data.addr.014 = phi i8* [ %incdec.ptr.7, %for.body ], [ %data.addr.014.unr, %for.body.prol.loopexit ]
  %conv = trunc i64 %value.addr.015 to i8
  store i8 %conv, i8* %data.addr.014, align 1, !tbaa !29
  %incdec.ptr = getelementptr inbounds i8, i8* %data.addr.014, i64 -1
  %shr = lshr i64 %value.addr.015, 8
  %conv.1 = trunc i64 %shr to i8
  store i8 %conv.1, i8* %incdec.ptr, align 1, !tbaa !29
  %incdec.ptr.1 = getelementptr inbounds i8, i8* %data.addr.014, i64 -2
  %shr.1 = lshr i64 %value.addr.015, 16
  %conv.2 = trunc i64 %shr.1 to i8
  store i8 %conv.2, i8* %incdec.ptr.1, align 1, !tbaa !29
  %incdec.ptr.2 = getelementptr inbounds i8, i8* %data.addr.014, i64 -3
  %shr.2 = lshr i64 %value.addr.015, 24
  %conv.3 = trunc i64 %shr.2 to i8
  store i8 %conv.3, i8* %incdec.ptr.2, align 1, !tbaa !29
  %incdec.ptr.3 = getelementptr inbounds i8, i8* %data.addr.014, i64 -4
  %shr.3 = lshr i64 %value.addr.015, 32
  %conv.4 = trunc i64 %shr.3 to i8
  store i8 %conv.4, i8* %incdec.ptr.3, align 1, !tbaa !29
  %incdec.ptr.4 = getelementptr inbounds i8, i8* %data.addr.014, i64 -5
  %shr.4 = lshr i64 %value.addr.015, 40
  %conv.5 = trunc i64 %shr.4 to i8
  store i8 %conv.5, i8* %incdec.ptr.4, align 1, !tbaa !29
  %incdec.ptr.5 = getelementptr inbounds i8, i8* %data.addr.014, i64 -6
  %shr.5 = lshr i64 %value.addr.015, 48
  %conv.6 = trunc i64 %shr.5 to i8
  store i8 %conv.6, i8* %incdec.ptr.5, align 1, !tbaa !29
  %incdec.ptr.6 = getelementptr inbounds i8, i8* %data.addr.014, i64 -7
  %shr.6 = lshr i64 %value.addr.015, 56
  %conv.7 = trunc i64 %shr.6 to i8
  store i8 %conv.7, i8* %incdec.ptr.6, align 1, !tbaa !29
  %incdec.ptr.7 = getelementptr inbounds i8, i8* %data.addr.014, i64 -8
  %dec.7 = add i64 %len.addr.016, -8
  %cmp1.not.7 = icmp eq i64 %dec.7, 0
  br i1 %cmp1.not.7, label %for.end, label %for.body, !llvm.loop !32

for.end:                                          ; preds = %for.body.prol.loopexit, %for.body, %if.end
  %value.addr.0.lcssa = phi i64 [ %value, %if.end ], [ %shr.lcssa.unr, %for.body.prol.loopexit ], [ 0, %for.body ]
  %cmp2.not = icmp eq i64 %value.addr.0.lcssa, 0
  %. = zext i1 %cmp2.not to i32
  br label %return

return:                                           ; preds = %for.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %., %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @WPACKET_set_max_size(%struct.wpacket_st* nocapture noundef %pkt, i64 noundef %maxsize) local_unnamed_addr #7 {
entry:
  %subs = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 5
  %0 = load %struct.wpacket_sub*, %struct.wpacket_sub** %subs, align 8, !tbaa !7
  %cmp.not = icmp eq %struct.wpacket_sub* %0, null
  br i1 %cmp.not, label %cleanup, label %for.cond

for.cond:                                         ; preds = %entry, %for.cond
  %sub.0 = phi %struct.wpacket_sub* [ %1, %for.cond ], [ %0, %entry ]
  %parent = getelementptr inbounds %struct.wpacket_sub, %struct.wpacket_sub* %sub.0, i64 0, i32 0
  %1 = load %struct.wpacket_sub*, %struct.wpacket_sub** %parent, align 8, !tbaa !17
  %cmp4.not = icmp eq %struct.wpacket_sub* %1, null
  br i1 %cmp4.not, label %for.end, label %for.cond, !llvm.loop !33

for.end:                                          ; preds = %for.cond
  %lenbytes7 = getelementptr inbounds %struct.wpacket_sub, %struct.wpacket_sub* %sub.0, i64 0, i32 2
  %2 = load i64, i64* %lenbytes7, align 8, !tbaa !20
  %cmp8 = icmp eq i64 %2, 0
  %spec.store.select = select i1 %cmp8, i64 8, i64 %2
  %call = tail call fastcc i64 @maxmaxsize(i64 noundef %spec.store.select) #9
  %cmp12 = icmp ult i64 %call, %maxsize
  br i1 %cmp12, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %written = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 3
  %3 = load i64, i64* %written, align 8, !tbaa !12
  %cmp14 = icmp ugt i64 %3, %maxsize
  br i1 %cmp14, label %cleanup, label %if.end17

if.end17:                                         ; preds = %lor.lhs.false
  %maxsize18 = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 4
  store i64 %maxsize, i64* %maxsize18, align 8, !tbaa !11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %lor.lhs.false, %entry, %if.end17
  %retval.0 = phi i32 [ 1, %if.end17 ], [ 0, %entry ], [ 0, %lor.lhs.false ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @WPACKET_memset(%struct.wpacket_st* nocapture noundef %pkt, i32 noundef %ch, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %dest = alloca i8*, align 8
  %0 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  %cmp = icmp eq i64 %len, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 @WPACKET_allocate_bytes(%struct.wpacket_st* noundef %pkt, i64 noundef %len, i8** noundef nonnull %dest) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %1 = load i8*, i8** %dest, align 8, !tbaa !16
  %cmp3.not = icmp eq i8* %1, null
  br i1 %cmp3.not, label %cleanup, label %if.then4

if.then4:                                         ; preds = %if.end2
  %call5 = call i8* @memset(i8* noundef nonnull %1, i32 noundef %ch, i64 noundef %len) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then4, %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.end ], [ 1, %if.then4 ], [ 1, %if.end2 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @WPACKET_memcpy(%struct.wpacket_st* nocapture noundef %pkt, i8* noundef %src, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %dest = alloca i8*, align 8
  %0 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  %cmp = icmp eq i64 %len, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 @WPACKET_allocate_bytes(%struct.wpacket_st* noundef %pkt, i64 noundef %len, i8** noundef nonnull %dest) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %1 = load i8*, i8** %dest, align 8, !tbaa !16
  %cmp3.not = icmp eq i8* %1, null
  br i1 %cmp3.not, label %cleanup, label %if.then4

if.then4:                                         ; preds = %if.end2
  %call5 = call i8* @memcpy(i8* noundef nonnull %1, i8* noundef %src, i64 noundef %len) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then4, %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.end ], [ 1, %if.then4 ], [ 1, %if.end2 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* nocapture noundef %pkt, i8* noundef %src, i64 noundef %len, i64 noundef %lenbytes) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef %lenbytes) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @WPACKET_memcpy(%struct.wpacket_st* noundef %pkt, i8* noundef %src, i64 noundef %len) #9
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %return, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #9
  %tobool5.not = icmp ne i32 %call4, 0
  %spec.select = zext i1 %tobool5.not to i32
  br label %return

return:                                           ; preds = %lor.lhs.false3, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false3 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @WPACKET_get_total_written(%struct.wpacket_st* nocapture noundef readonly %pkt, i64* noundef writeonly %written) local_unnamed_addr #5 {
entry:
  %cmp.not = icmp eq i64* %written, null
  br i1 %cmp.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %written3 = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 3
  %0 = load i64, i64* %written3, align 8, !tbaa !12
  store i64 %0, i64* %written, align 8, !tbaa !3
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @WPACKET_get_length(%struct.wpacket_st* nocapture noundef readonly %pkt, i64* noundef writeonly %len) local_unnamed_addr #5 {
entry:
  %subs = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 5
  %0 = load %struct.wpacket_sub*, %struct.wpacket_sub** %subs, align 8, !tbaa !7
  %cmp = icmp ne %struct.wpacket_sub* %0, null
  %cmp1 = icmp ne i64* %len, null
  %1 = and i1 %cmp1, %cmp
  br i1 %1, label %if.end, label %return

if.end:                                           ; preds = %entry
  %written = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 3
  %2 = load i64, i64* %written, align 8, !tbaa !12
  %pwritten = getelementptr inbounds %struct.wpacket_sub, %struct.wpacket_sub* %0, i64 0, i32 3
  %3 = load i64, i64* %pwritten, align 8, !tbaa !19
  %sub = sub i64 %2, %3
  store i64 %sub, i64* %len, align 8, !tbaa !3
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @WPACKET_is_null_buf(%struct.wpacket_st* nocapture noundef readonly %pkt) local_unnamed_addr #3 {
entry:
  %buf = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 0
  %0 = load %struct.buf_mem_st*, %struct.buf_mem_st** %buf, align 8, !tbaa !13
  %cmp = icmp eq %struct.buf_mem_st* %0, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %staticbuf = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 1
  %1 = load i8*, i8** %staticbuf, align 8, !tbaa !22
  %cmp1 = icmp eq i8* %1, null
  %phi.cast = zext i1 %cmp1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @WPACKET_cleanup(%struct.wpacket_st* nocapture noundef %pkt) local_unnamed_addr #0 {
entry:
  %subs = getelementptr inbounds %struct.wpacket_st, %struct.wpacket_st* %pkt, i64 0, i32 5
  %0 = load %struct.wpacket_sub*, %struct.wpacket_sub** %subs, align 8, !tbaa !7
  %cmp.not8 = icmp eq %struct.wpacket_sub* %0, null
  br i1 %cmp.not8, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %sub.09 = phi %struct.wpacket_sub* [ %1, %for.body ], [ %0, %entry ]
  %parent1 = getelementptr inbounds %struct.wpacket_sub, %struct.wpacket_sub* %sub.09, i64 0, i32 0
  %1 = load %struct.wpacket_sub*, %struct.wpacket_sub** %parent1, align 8, !tbaa !17
  %2 = bitcast %struct.wpacket_sub* %sub.09 to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 noundef 509) #10
  %cmp.not = icmp eq %struct.wpacket_sub* %1, null
  br i1 %cmp.not, label %for.end, label %for.body, !llvm.loop !34

for.end:                                          ; preds = %for.body, %entry
  store %struct.wpacket_sub* null, %struct.wpacket_sub** %subs, align 8, !tbaa !7
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 40}
!8 = !{!"wpacket_st", !9, i64 0, !9, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !9, i64 40, !10, i64 48}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"int", !5, i64 0}
!11 = !{!8, !4, i64 32}
!12 = !{!8, !4, i64 24}
!13 = !{!8, !9, i64 0}
!14 = !{!15, !4, i64 0}
!15 = !{!"buf_mem_st", !4, i64 0, !9, i64 8, !4, i64 16, !4, i64 24}
!16 = !{!9, !9, i64 0}
!17 = !{!18, !9, i64 0}
!18 = !{!"wpacket_sub", !9, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !10, i64 32}
!19 = !{!18, !4, i64 24}
!20 = !{!18, !4, i64 16}
!21 = !{!18, !4, i64 8}
!22 = !{!8, !9, i64 8}
!23 = !{!15, !9, i64 8}
!24 = !{!8, !4, i64 16}
!25 = !{!18, !10, i64 32}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = distinct !{!28, !27}
!29 = !{!5, !5, i64 0}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = distinct !{!32, !27}
!33 = distinct !{!33, !27}
!34 = distinct !{!34, !27}
