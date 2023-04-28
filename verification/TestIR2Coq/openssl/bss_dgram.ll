; ModuleID = 'crypto/bio/bss_dgram.c'
source_filename = "crypto/bio/bss_dgram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* }
%struct.bio_st = type { %struct.ossl_lib_ctx_st*, %struct.bio_method_st*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)*, i8*, i32, i32, i32, i32, i32, i8*, %struct.bio_st*, %struct.bio_st*, i32, i64, i64, %struct.crypto_ex_data_st, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.bio_dgram_data_st = type { %union.bio_addr_st, i32, i32, i32, %struct.timeval, %struct.timeval, i32 }
%union.bio_addr_st = type { %struct.sockaddr_in6, [84 x i8] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.timeval = type { i64, i64 }
%struct.sockaddr = type { i16, [14 x i8] }
%union.anon.1 = type { i64 }
%union.anon.2 = type { i64 }
%union.anon.0 = type { i64 }

@methods_dgramp = internal constant %struct.bio_method_st { i32 1301, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 (%struct.bio_st*, i8*, i64, i64*)* @bwrite_conv, i32 (%struct.bio_st*, i8*, i32)* @dgram_write, i32 (%struct.bio_st*, i8*, i64, i64*)* @bread_conv, i32 (%struct.bio_st*, i8*, i32)* @dgram_read, i32 (%struct.bio_st*, i8*)* @dgram_puts, i32 (%struct.bio_st*, i8*, i32)* null, i64 (%struct.bio_st*, i32, i64, i8*)* @dgram_ctrl, i32 (%struct.bio_st*)* @dgram_new, i32 (%struct.bio_st*)* @dgram_free, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* null }, align 8
@.str = private unnamed_addr constant [16 x i8] c"datagram socket\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"getsockopt\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"assertion failed: sz.s <= sizeof(data->socket_timeout)\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"crypto/bio/bss_dgram.c\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"assertion failed: sz.s <= sizeof(struct timeval)\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.bio_method_st* @BIO_s_datagram() local_unnamed_addr #0 {
entry:
  ret %struct.bio_method_st* @methods_dgramp
}

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @BIO_new_dgram(i32 noundef %fd, i32 noundef %close_flag) local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef nonnull @methods_dgramp) #9
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %conv = sext i32 %close_flag to i64
  %call2 = tail call i64 @BIO_int_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 104, i64 noundef %conv, i32 noundef %fd) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret %struct.bio_st* %call1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #3

declare i64 @BIO_int_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i32 @BIO_dgram_non_fatal_error(i32 noundef %err) local_unnamed_addr #0 {
entry:
  switch i32 %err, label %sw.epilog [
    i32 11, label %return
    i32 4, label %return
    i32 71, label %return
    i32 115, label %return
    i32 114, label %return
  ]

sw.epilog:                                        ; preds = %entry
  br label %return

return:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %sw.epilog
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ]
  ret i32 %retval.0
}

declare i32 @bwrite_conv(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @dgram_write(%struct.bio_st* noundef %b, i8* noundef %in, i32 noundef %inl) #1 {
entry:
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 10
  %0 = bitcast i8** %ptr to %struct.bio_dgram_data_st**
  %1 = load %struct.bio_dgram_data_st*, %struct.bio_dgram_data_st** %0, align 8, !tbaa !4
  %call = tail call i32* @__errno_location() #10
  store i32 0, i32* %call, align 4, !tbaa !12
  %connected = getelementptr inbounds %struct.bio_dgram_data_st, %struct.bio_dgram_data_st* %1, i64 0, i32 1
  %2 = load i32, i32* %connected, align 8, !tbaa !13
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %num = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 9
  %3 = load i32, i32* %num, align 8, !tbaa !16
  %conv = sext i32 %inl to i64
  %call1 = tail call i64 @write(i32 noundef %3, i8* noundef %in, i64 noundef %conv) #9
  br label %if.end

if.else:                                          ; preds = %entry
  %peer = getelementptr inbounds %struct.bio_dgram_data_st, %struct.bio_dgram_data_st* %1, i64 0, i32 0
  %call3 = tail call i32 @BIO_ADDR_sockaddr_size(%union.bio_addr_st* noundef %peer) #9
  %num4 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 9
  %4 = load i32, i32* %num4, align 8, !tbaa !16
  %conv5 = sext i32 %inl to i64
  %call7 = tail call %struct.sockaddr* @BIO_ADDR_sockaddr(%union.bio_addr_st* noundef %peer) #9
  %call8 = tail call i64 @sendto(i32 noundef %4, i8* noundef %in, i64 noundef %conv5, i32 noundef 0, %struct.sockaddr* %call7, i32 noundef %call3) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0.in = phi i64 [ %call1, %if.then ], [ %call8, %if.else ]
  %ret.0 = trunc i64 %ret.0.in to i32
  tail call void @BIO_clear_flags(%struct.bio_st* noundef nonnull %b, i32 noundef 15) #9
  %cmp = icmp slt i32 %ret.0, 1
  br i1 %cmp, label %if.then11, label %if.end17

if.then11:                                        ; preds = %if.end
  %call12 = tail call fastcc i32 @BIO_dgram_should_retry(i32 noundef %ret.0) #11
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end17, label %if.then14

if.then14:                                        ; preds = %if.then11
  tail call void @BIO_set_flags(%struct.bio_st* noundef nonnull %b, i32 noundef 10) #9
  %5 = load i32, i32* %call, align 4, !tbaa !12
  %_errno = getelementptr inbounds %struct.bio_dgram_data_st, %struct.bio_dgram_data_st* %1, i64 0, i32 2
  store i32 %5, i32* %_errno, align 4, !tbaa !17
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %if.then14, %if.end
  ret i32 %ret.0
}

declare i32 @bread_conv(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @dgram_read(%struct.bio_st* noundef %b, i8* noundef %out, i32 noundef %outl) #1 {
entry:
  %peer = alloca %union.bio_addr_st, align 4
  %len = alloca i32, align 4
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 10
  %0 = bitcast i8** %ptr to %struct.bio_dgram_data_st**
  %1 = load %struct.bio_dgram_data_st*, %struct.bio_dgram_data_st** %0, align 8, !tbaa !4
  %2 = bitcast %union.bio_addr_st* %peer to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #12
  %3 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #12
  store i32 112, i32* %len, align 4, !tbaa !12
  %cmp.not = icmp eq i8* %out, null
  br i1 %cmp.not, label %if.end21, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32* @__errno_location() #10
  store i32 0, i32* %call, align 4, !tbaa !12
  %call1 = call i8* @memset(i8* noundef nonnull %2, i32 noundef 0, i64 noundef 112) #9
  call fastcc void @dgram_adjust_rcv_timeout(%struct.bio_st* noundef nonnull %b) #11
  %peekmode = getelementptr inbounds %struct.bio_dgram_data_st, %struct.bio_dgram_data_st* %1, i64 0, i32 6
  %4 = load i32, i32* %peekmode, align 8, !tbaa !18
  %tobool.not = icmp eq i32 %4, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 2
  %num = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 9
  %5 = load i32, i32* %num, align 8, !tbaa !16
  %conv = sext i32 %outl to i64
  %call3 = call %struct.sockaddr* @BIO_ADDR_sockaddr_noconst(%union.bio_addr_st* noundef nonnull %peer) #9
  %call4 = call i64 @recvfrom(i32 noundef %5, i8* noundef nonnull %out, i64 noundef %conv, i32 noundef %spec.select, %struct.sockaddr* %call3, i32* noundef nonnull %len) #9
  %conv5 = trunc i64 %call4 to i32
  %connected = getelementptr inbounds %struct.bio_dgram_data_st, %struct.bio_dgram_data_st* %1, i64 0, i32 1
  %6 = load i32, i32* %connected, align 8, !tbaa !13
  %tobool6 = icmp eq i32 %6, 0
  %cmp7 = icmp sgt i32 %conv5, -1
  %or.cond = select i1 %tobool6, i1 %cmp7, i1 false
  br i1 %or.cond, label %if.end11.thread, label %if.end11

if.end11.thread:                                  ; preds = %if.then
  %call10 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %b, i32 noundef 44, i64 noundef 0, i8* noundef nonnull %2) #9
  call void @BIO_clear_flags(%struct.bio_st* noundef nonnull %b, i32 noundef 15) #9
  br label %if.end20

if.end11:                                         ; preds = %if.then
  call void @BIO_clear_flags(%struct.bio_st* noundef nonnull %b, i32 noundef 15) #9
  %cmp12 = icmp slt i32 %conv5, 0
  br i1 %cmp12, label %if.then14, label %if.end20

if.then14:                                        ; preds = %if.end11
  %call15 = call fastcc i32 @BIO_dgram_should_retry(i32 noundef %conv5) #11
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end20, label %if.then17

if.then17:                                        ; preds = %if.then14
  call void @BIO_set_flags(%struct.bio_st* noundef nonnull %b, i32 noundef 9) #9
  %7 = load i32, i32* %call, align 4, !tbaa !12
  %_errno = getelementptr inbounds %struct.bio_dgram_data_st, %struct.bio_dgram_data_st* %1, i64 0, i32 2
  store i32 %7, i32* %_errno, align 4, !tbaa !17
  br label %if.end20

if.end20:                                         ; preds = %if.end11.thread, %if.then14, %if.then17, %if.end11
  call fastcc void @dgram_reset_rcv_timeout(%struct.bio_st* noundef nonnull %b) #11
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %entry
  %ret.0 = phi i32 [ %conv5, %if.end20 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #12
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dgram_puts(%struct.bio_st* noundef %bp, i8* noundef %str) #1 {
entry:
  %call = tail call i64 @strlen(i8* noundef %str) #13
  %conv = trunc i64 %call to i32
  %call1 = tail call i32 @dgram_write(%struct.bio_st* noundef %bp, i8* noundef %str, i32 noundef %conv) #11
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @dgram_ctrl(%struct.bio_st* noundef %b, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #1 {
entry:
  %sockopt_val = alloca i32, align 4
  %sockopt_len = alloca i32, align 4
  %addr_len = alloca i32, align 4
  %addr = alloca %union.bio_addr_st, align 4
  %tmp_addr = alloca %struct.in6_addr, align 4
  %sz = alloca %union.anon.1, align 8
  %sz204 = alloca %union.anon.2, align 8
  %0 = bitcast i32* %sockopt_val to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  store i32 0, i32* %sockopt_val, align 4, !tbaa !12
  %1 = bitcast i32* %sockopt_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #12
  %2 = bitcast i32* %addr_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #12
  %3 = bitcast %union.bio_addr_st* %addr to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %3) #12
  %ptr1 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 10
  %4 = bitcast i8** %ptr1 to %struct.bio_dgram_data_st**
  %5 = load %struct.bio_dgram_data_st*, %struct.bio_dgram_data_st** %4, align 8, !tbaa !4
  switch i32 %cmd, label %cleanup [
    i32 71, label %sw.bb276
    i32 50, label %sw.bb276
    i32 104, label %sw.bb3
    i32 105, label %sw.bb5
    i32 8, label %sw.bb13
    i32 9, label %sw.bb16
    i32 49, label %sw.bb274
    i32 48, label %sw.bb247
    i32 12, label %sw.bb20
    i32 11, label %sw.bb20
    i32 31, label %sw.bb21
    i32 39, label %sw.bb24
    i32 40, label %sw.bb50
    i32 47, label %sw.bb98
    i32 41, label %sw.bb131
    i32 42, label %sw.bb134
    i32 32, label %sw.bb137
    i32 46, label %sw.bb149
    i32 44, label %sw.bb162
    i32 45, label %sw.bb166
    i32 33, label %sw.bb168
    i32 34, label %sw.bb175
    i32 35, label %sw.bb196
    i32 36, label %sw.bb203
    i32 38, label %sw.bb231
    i32 37, label %sw.bb231
    i32 43, label %sw.bb239
  ]

sw.bb3:                                           ; preds = %entry
  %call = tail call fastcc i32 @dgram_clear(%struct.bio_st* noundef nonnull %b) #11
  %6 = bitcast i8* %ptr to i32*
  %7 = load i32, i32* %6, align 4, !tbaa !12
  %num4 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 9
  store i32 %7, i32* %num4, align 8, !tbaa !16
  %conv = trunc i64 %num to i32
  %shutdown = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 6
  store i32 %conv, i32* %shutdown, align 4, !tbaa !19
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 5
  store i32 1, i32* %init, align 8, !tbaa !20
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %init6 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 5
  %8 = load i32, i32* %init6, align 8, !tbaa !20
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %sw.bb5
  %cmp.not = icmp eq i8* %ptr, null
  br i1 %cmp.not, label %if.end, label %if.then8

if.then8:                                         ; preds = %if.then
  %9 = bitcast i8* %ptr to i32*
  %num9 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 9
  %10 = load i32, i32* %num9, align 8, !tbaa !16
  store i32 %10, i32* %9, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then
  %num10 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 9
  %11 = load i32, i32* %num10, align 8, !tbaa !16
  %conv11 = sext i32 %11 to i64
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  %shutdown14 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 6
  %12 = load i32, i32* %shutdown14, align 4, !tbaa !19
  %conv15 = sext i32 %12 to i64
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  %conv17 = trunc i64 %num to i32
  %shutdown18 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 6
  store i32 %conv17, i32* %shutdown18, align 4, !tbaa !19
  br label %cleanup

sw.bb20:                                          ; preds = %entry, %entry
  br label %cleanup

sw.bb21:                                          ; preds = %entry
  %peer = getelementptr inbounds %struct.bio_dgram_data_st, %struct.bio_dgram_data_st* %5, i64 0, i32 0
  %13 = bitcast i8* %ptr to %union.bio_addr_st*
  %call22 = tail call %struct.sockaddr* @BIO_ADDR_sockaddr(%union.bio_addr_st* noundef %13) #9
  %call23 = tail call i32 @BIO_ADDR_make(%union.bio_addr_st* noundef %peer, %struct.sockaddr* noundef %call22) #9
  br label %cleanup

sw.bb24:                                          ; preds = %entry
  store i32 112, i32* %addr_len, align 4, !tbaa !12
  %call25 = call i8* @memset(i8* noundef nonnull %3, i32 noundef 0, i64 noundef 112) #9
  %num26 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 9
  %14 = load i32, i32* %num26, align 8, !tbaa !16
  %sa = bitcast %union.bio_addr_st* %addr to %struct.sockaddr*
  %call27 = call i32 @getsockname(i32 noundef %14, %struct.sockaddr* nonnull %sa, i32* noundef nonnull %addr_len) #9
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %cleanup, label %if.end31

if.end31:                                         ; preds = %sw.bb24
  %sa_family = getelementptr inbounds %union.bio_addr_st, %union.bio_addr_st* %addr, i64 0, i32 0, i32 0
  %15 = load i16, i16* %sa_family, align 4, !tbaa !21
  switch i16 %15, label %cleanup [
    i16 2, label %sw.bb34
    i16 10, label %sw.bb42
  ]

sw.bb34:                                          ; preds = %if.end31
  store i32 2, i32* %sockopt_val, align 4, !tbaa !12
  %16 = load i32, i32* %num26, align 8, !tbaa !16
  %call36 = call i32 @setsockopt(i32 noundef %16, i32 noundef 0, i32 noundef 10, i8* noundef nonnull %0, i32 noundef 4) #9
  %conv37 = sext i32 %call36 to i64
  %cmp38 = icmp slt i32 %call36, 0
  br i1 %cmp38, label %if.then40, label %cleanup

if.then40:                                        ; preds = %sw.bb34
  call void @perror(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)) #9
  br label %cleanup

sw.bb42:                                          ; preds = %if.end31
  store i32 2, i32* %sockopt_val, align 4, !tbaa !12
  %17 = load i32, i32* %num26, align 8, !tbaa !16
  %call44 = call i32 @setsockopt(i32 noundef %17, i32 noundef 41, i32 noundef 23, i8* noundef nonnull %0, i32 noundef 4) #9
  %conv45 = sext i32 %call44 to i64
  %cmp46 = icmp slt i32 %call44, 0
  br i1 %cmp46, label %if.then48, label %cleanup

if.then48:                                        ; preds = %sw.bb42
  call void @perror(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)) #9
  br label %cleanup

sw.bb50:                                          ; preds = %entry
  store i32 112, i32* %addr_len, align 4, !tbaa !12
  %call51 = call i8* @memset(i8* noundef nonnull %3, i32 noundef 0, i64 noundef 112) #9
  %num52 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 9
  %18 = load i32, i32* %num52, align 8, !tbaa !16
  %sa55 = bitcast %union.bio_addr_st* %addr to %struct.sockaddr*
  %call57 = call i32 @getsockname(i32 noundef %18, %struct.sockaddr* nonnull %sa55, i32* noundef nonnull %addr_len) #9
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %cleanup, label %if.end61

if.end61:                                         ; preds = %sw.bb50
  store i32 4, i32* %sockopt_len, align 4, !tbaa !12
  %sa_family63 = getelementptr inbounds %union.bio_addr_st, %union.bio_addr_st* %addr, i64 0, i32 0, i32 0
  %19 = load i16, i16* %sa_family63, align 4, !tbaa !21
  switch i16 %19, label %cleanup [
    i16 2, label %sw.bb65
    i16 10, label %sw.bb79
  ]

sw.bb65:                                          ; preds = %if.end61
  %20 = load i32, i32* %num52, align 8, !tbaa !16
  %call67 = call i32 @getsockopt(i32 noundef %20, i32 noundef 0, i32 noundef 14, i8* noundef nonnull %0, i32* noundef nonnull %sockopt_len) #9
  %cmp69 = icmp slt i32 %call67, 0
  %21 = load i32, i32* %sockopt_val, align 4
  %cmp71 = icmp slt i32 %21, 0
  %or.cond = select i1 %cmp69, i1 true, i1 %cmp71
  br i1 %or.cond, label %cleanup, label %if.else74

if.else74:                                        ; preds = %sw.bb65
  %sub75 = add nsw i32 %21, -28
  %mtu = getelementptr inbounds %struct.bio_dgram_data_st, %struct.bio_dgram_data_st* %5, i64 0, i32 3
  store i32 %sub75, i32* %mtu, align 8, !tbaa !22
  %conv77 = zext i32 %sub75 to i64
  br label %cleanup

sw.bb79:                                          ; preds = %if.end61
  %22 = load i32, i32* %num52, align 8, !tbaa !16
  %call81 = call i32 @getsockopt(i32 noundef %22, i32 noundef 41, i32 noundef 24, i8* noundef nonnull %0, i32* noundef nonnull %sockopt_len) #9
  %cmp83 = icmp slt i32 %call81, 0
  %23 = load i32, i32* %sockopt_val, align 4
  %cmp86 = icmp slt i32 %23, 0
  %or.cond287 = select i1 %cmp83, i1 true, i1 %cmp86
  br i1 %or.cond287, label %cleanup, label %if.else89

if.else89:                                        ; preds = %sw.bb79
  %sub91 = add nsw i32 %23, -48
  %mtu92 = getelementptr inbounds %struct.bio_dgram_data_st, %struct.bio_dgram_data_st* %5, i64 0, i32 3
  store i32 %sub91, i32* %mtu92, align 8, !tbaa !22
  %conv94 = zext i32 %sub91 to i64
  br label %cleanup

sw.bb98:                                          ; preds = %entry
  %call99 = tail call fastcc i64 @dgram_get_mtu_overhead(%struct.bio_dgram_data_st* noundef %5) #11
  %peer101 = getelementptr inbounds %struct.bio_dgram_data_st, %struct.bio_dgram_data_st* %5, i64 0, i32 0
  %call102 = tail call i32 @BIO_ADDR_family(%union.bio_addr_st* noundef %peer101) #9
  switch i32 %call102, label %sw.default128 [
    i32 2, label %sw.bb103
    i32 10, label %sw.bb104
  ]

sw.bb103:                                         ; preds = %sw.bb98
  %add = sub i64 576, %call99
  br label %cleanup

sw.bb104:                                         ; preds = %sw.bb98
  %24 = bitcast %struct.in6_addr* %tmp_addr to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %24) #12
  %call106 = call i32 @BIO_ADDR_rawaddress(%union.bio_addr_st* noundef %peer101, i8* noundef nonnull %24, i64* noundef null) #9
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.else125, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb104
  %arrayidx = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %tmp_addr, i64 0, i32 0, i32 0, i64 0
  %25 = load i32, i32* %arrayidx, align 4, !tbaa !21
  %cmp108 = icmp eq i32 %25, 0
  %arrayidx113 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %tmp_addr, i64 0, i32 0, i32 0, i64 1
  %26 = load i32, i32* %arrayidx113, align 4
  %cmp114 = icmp eq i32 %26, 0
  %or.cond373 = select i1 %cmp108, i1 %cmp114, i1 false
  %arrayidx118 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %tmp_addr, i64 0, i32 0, i32 0, i64 2
  %27 = load i32, i32* %arrayidx118, align 4
  %cmp120 = icmp eq i32 %27, -65536
  %or.cond375 = select i1 %or.cond373, i1 %cmp120, i1 false
  br i1 %or.cond375, label %if.end127, label %if.else125

if.else125:                                       ; preds = %land.lhs.true, %sw.bb104
  br label %if.end127

if.end127:                                        ; preds = %land.lhs.true, %if.else125
  %.pn = phi i64 [ 1280, %if.else125 ], [ 576, %land.lhs.true ]
  %ret.0 = sub i64 %.pn, %call99
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %24) #12
  br label %cleanup

sw.default128:                                    ; preds = %sw.bb98
  %add129 = sub i64 576, %call99
  br label %cleanup

sw.bb131:                                         ; preds = %entry
  %mtu132 = getelementptr inbounds %struct.bio_dgram_data_st, %struct.bio_dgram_data_st* %5, i64 0, i32 3
  %28 = load i32, i32* %mtu132, align 8, !tbaa !22
  %conv133 = zext i32 %28 to i64
  br label %cleanup

sw.bb134:                                         ; preds = %entry
  %conv135 = trunc i64 %num to i32
  %mtu136 = getelementptr inbounds %struct.bio_dgram_data_st, %struct.bio_dgram_data_st* %5, i64 0, i32 3
  store i32 %conv135, i32* %mtu136, align 8, !tbaa !22
  br label %cleanup

sw.bb137:                                         ; preds = %entry
  %cmp138.not = icmp eq i8* %ptr, null
  %connected145 = getelementptr inbounds %struct.bio_dgram_data_st, %struct.bio_dgram_data_st* %5, i64 0, i32 1
  br i1 %cmp138.not, label %if.else144, label %if.then140

if.then140:                                       ; preds = %sw.bb137
  store i32 1, i32* %connected145, align 8, !tbaa !13
  %peer141 = getelementptr inbounds %struct.bio_dgram_data_st, %struct.bio_dgram_data_st* %5, i64 0, i32 0
  %29 = bitcast i8* %ptr to %union.bio_addr_st*
  %call142 = tail call %struct.sockaddr* @BIO_ADDR_sockaddr(%union.bio_addr_st* noundef nonnull %29) #9
  %call143 = tail call i32 @BIO_ADDR_make(%union.bio_addr_st* noundef %peer141, %struct.sockaddr* noundef %call142) #9
  br label %cleanup

if.else144:                                       ; preds = %sw.bb137
  store i32 0, i32* %connected145, align 8, !tbaa !13
  %30 = bitcast %struct.bio_dgram_data_st* %5 to i8*
  %call147 = tail call i8* @memset(i8* noundef %30, i32 noundef 0, i64 noundef 112) #9
  br label %cleanup

sw.bb149:                                         ; preds = %entry
  %peer150 = getelementptr inbounds %struct.bio_dgram_data_st, %struct.bio_dgram_data_st* %5, i64 0, i32 0
  %call151 = tail call i32 @BIO_ADDR_sockaddr_size(%union.bio_addr_st* noundef %peer150) #9
  %conv152 = zext i32 %call151 to i64
  %cmp153 = icmp eq i64 %num, 0
  %cmp156 = icmp slt i64 %conv152, %num
  %or.cond374 = select i1 %cmp153, i1 true, i1 %cmp156
  %num.addr.0 = select i1 %or.cond374, i64 %conv152, i64 %num
  %31 = bitcast %struct.bio_dgram_data_st* %5 to i8*
  %call161 = tail call i8* @memcpy(i8* noundef %ptr, i8* noundef %31, i64 noundef %num.addr.0) #9
  br label %cleanup

sw.bb162:                                         ; preds = %entry
  %peer163 = getelementptr inbounds %struct.bio_dgram_data_st, %struct.bio_dgram_data_st* %5, i64 0, i32 0
  %32 = bitcast i8* %ptr to %union.bio_addr_st*
  %call164 = tail call %struct.sockaddr* @BIO_ADDR_sockaddr(%union.bio_addr_st* noundef %32) #9
  %call165 = tail call i32 @BIO_ADDR_make(%union.bio_addr_st* noundef %peer163, %struct.sockaddr* noundef %call164) #9
  br label %cleanup

sw.bb166:                                         ; preds = %entry
  %next_timeout = getelementptr inbounds %struct.bio_dgram_data_st, %struct.bio_dgram_data_st* %5, i64 0, i32 4
  %33 = bitcast %struct.timeval* %next_timeout to i8*
  %call167 = tail call i8* @memcpy(i8* noundef nonnull %33, i8* noundef %ptr, i64 noundef 16) #9
  br label %cleanup

sw.bb168:                                         ; preds = %entry
  %num169 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 9
  %34 = load i32, i32* %num169, align 8, !tbaa !16
  %call170 = tail call i32 @setsockopt(i32 noundef %34, i32 noundef 1, i32 noundef 20, i8* noundef %ptr, i32 noundef 16) #9
  %cmp171 = icmp slt i32 %call170, 0
  br i1 %cmp171, label %if.then173, label %cleanup

if.then173:                                       ; preds = %sw.bb168
  tail call void @perror(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)) #9
  br label %cleanup

sw.bb175:                                         ; preds = %entry
  %35 = bitcast %union.anon.1* %sz to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %35) #12
  %36 = getelementptr inbounds %union.anon.1, %union.anon.1* %sz, i64 0, i32 0
  store i64 16, i64* %36, align 8
  %i = bitcast %union.anon.1* %sz to i32*
  %num176 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 9
  %37 = load i32, i32* %num176, align 8, !tbaa !16
  %call177 = call i32 @getsockopt(i32 noundef %37, i32 noundef 1, i32 noundef 20, i8* noundef %ptr, i32* noundef nonnull %i) #9
  %cmp178 = icmp slt i32 %call177, 0
  br i1 %cmp178, label %if.then180, label %if.else181

if.then180:                                       ; preds = %sw.bb175
  call void @perror(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)) #9
  br label %if.end195

if.else181:                                       ; preds = %sw.bb175
  %38 = load i32, i32* %i, align 8, !tbaa !21
  %cmp183 = icmp eq i32 %38, 0
  br i1 %cmp183, label %if.then185, label %if.else191

if.then185:                                       ; preds = %if.else181
  %39 = load i64, i64* %36, align 8, !tbaa !21
  %cmp186 = icmp ult i64 %39, 17
  br i1 %cmp186, label %if.end195, label %cond.false

cond.false:                                       ; preds = %if.then185
  call void @OPENSSL_die(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 637) #14
  unreachable

if.else191:                                       ; preds = %if.else181
  %conv193 = sext i32 %38 to i64
  br label %if.end195

if.end195:                                        ; preds = %if.then185, %if.else191, %if.then180
  %ret.1 = phi i64 [ -1, %if.then180 ], [ %conv193, %if.else191 ], [ %39, %if.then185 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %35) #12
  br label %cleanup

sw.bb196:                                         ; preds = %entry
  %num197 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 9
  %40 = load i32, i32* %num197, align 8, !tbaa !16
  %call198 = tail call i32 @setsockopt(i32 noundef %40, i32 noundef 1, i32 noundef 21, i8* noundef %ptr, i32 noundef 16) #9
  %cmp199 = icmp slt i32 %call198, 0
  br i1 %cmp199, label %if.then201, label %cleanup

if.then201:                                       ; preds = %sw.bb196
  tail call void @perror(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)) #9
  br label %cleanup

sw.bb203:                                         ; preds = %entry
  %41 = bitcast %union.anon.2* %sz204 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %41) #12
  %42 = getelementptr inbounds %union.anon.2, %union.anon.2* %sz204, i64 0, i32 0
  store i64 16, i64* %42, align 8
  %i205 = bitcast %union.anon.2* %sz204 to i32*
  %num206 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 9
  %43 = load i32, i32* %num206, align 8, !tbaa !16
  %call207 = call i32 @getsockopt(i32 noundef %43, i32 noundef 1, i32 noundef 21, i8* noundef %ptr, i32* noundef nonnull %i205) #9
  %cmp208 = icmp slt i32 %call207, 0
  br i1 %cmp208, label %if.then210, label %if.else211

if.then210:                                       ; preds = %sw.bb203
  call void @perror(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)) #9
  br label %if.end230

if.else211:                                       ; preds = %sw.bb203
  %44 = load i32, i32* %i205, align 8, !tbaa !21
  %cmp213 = icmp eq i32 %44, 0
  br i1 %cmp213, label %if.then215, label %if.else226

if.then215:                                       ; preds = %if.else211
  %45 = load i64, i64* %42, align 8, !tbaa !21
  %cmp217 = icmp ult i64 %45, 17
  br i1 %cmp217, label %if.end230, label %cond.false220

cond.false220:                                    ; preds = %if.then215
  call void @OPENSSL_die(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 694) #14
  unreachable

if.else226:                                       ; preds = %if.else211
  %conv228 = sext i32 %44 to i64
  br label %if.end230

if.end230:                                        ; preds = %if.then215, %if.else226, %if.then210
  %ret.2 = phi i64 [ -1, %if.then210 ], [ %conv228, %if.else226 ], [ %45, %if.then215 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %41) #12
  br label %cleanup

sw.bb231:                                         ; preds = %entry, %entry
  %_errno = getelementptr inbounds %struct.bio_dgram_data_st, %struct.bio_dgram_data_st* %5, i64 0, i32 2
  %46 = load i32, i32* %_errno, align 4, !tbaa !17
  %cmp232 = icmp eq i32 %46, 11
  br i1 %cmp232, label %if.then235, label %cleanup

if.then235:                                       ; preds = %sw.bb231
  store i32 0, i32* %_errno, align 4, !tbaa !17
  br label %cleanup

sw.bb239:                                         ; preds = %entry
  %_errno240 = getelementptr inbounds %struct.bio_dgram_data_st, %struct.bio_dgram_data_st* %5, i64 0, i32 2
  %47 = load i32, i32* %_errno240, align 4, !tbaa !17
  %cmp241 = icmp eq i32 %47, 90
  br i1 %cmp241, label %if.then243, label %cleanup

if.then243:                                       ; preds = %sw.bb239
  store i32 0, i32* %_errno240, align 4, !tbaa !17
  br label %cleanup

sw.bb247:                                         ; preds = %entry
  %tobool248.not = icmp eq i64 %num, 0
  %not.tobool248.not = xor i1 %tobool248.not, true
  %cond249 = zext i1 %not.tobool248.not to i32
  store i32 %cond249, i32* %sockopt_val, align 4, !tbaa !12
  %sa_family252 = getelementptr %struct.bio_dgram_data_st, %struct.bio_dgram_data_st* %5, i64 0, i32 0, i32 0, i32 0
  %48 = load i16, i16* %sa_family252, align 8, !tbaa !21
  switch i16 %48, label %cleanup [
    i16 2, label %sw.bb254
    i16 10, label %sw.bb264
  ]

sw.bb254:                                         ; preds = %sw.bb247
  %cond256 = select i1 %tobool248.not, i32 0, i32 3
  store i32 %cond256, i32* %sockopt_val, align 4, !tbaa !12
  %num257 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 9
  %49 = load i32, i32* %num257, align 8, !tbaa !16
  %call258 = call i32 @setsockopt(i32 noundef %49, i32 noundef 0, i32 noundef 10, i8* noundef nonnull %0, i32 noundef 4) #9
  %conv259 = sext i32 %call258 to i64
  %cmp260 = icmp slt i32 %call258, 0
  br i1 %cmp260, label %if.then262, label %cleanup

if.then262:                                       ; preds = %sw.bb254
  call void @perror(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)) #9
  br label %cleanup

sw.bb264:                                         ; preds = %sw.bb247
  %num265 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 9
  %50 = load i32, i32* %num265, align 8, !tbaa !16
  %call266 = call i32 @setsockopt(i32 noundef %50, i32 noundef 41, i32 noundef 62, i8* noundef nonnull %0, i32 noundef 4) #9
  %conv267 = sext i32 %call266 to i64
  %cmp268 = icmp slt i32 %call266, 0
  br i1 %cmp268, label %if.then270, label %cleanup

if.then270:                                       ; preds = %sw.bb264
  call void @perror(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)) #9
  br label %cleanup

sw.bb274:                                         ; preds = %entry
  %call275 = tail call fastcc i64 @dgram_get_mtu_overhead(%struct.bio_dgram_data_st* noundef %5) #11
  br label %cleanup

sw.bb276:                                         ; preds = %entry, %entry
  %conv277 = trunc i64 %num to i32
  %peekmode = getelementptr inbounds %struct.bio_dgram_data_st, %struct.bio_dgram_data_st* %5, i64 0, i32 6
  store i32 %conv277, i32* %peekmode, align 8, !tbaa !18
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %sw.bb13, %sw.bb16, %sw.bb20, %sw.bb21, %sw.bb134, %sw.bb149, %sw.bb162, %sw.bb166, %if.end195, %if.end230, %sw.bb274, %sw.bb276, %if.end, %sw.bb42, %if.then48, %sw.bb34, %if.then40, %if.else89, %if.else74, %sw.default128, %if.end127, %sw.bb103, %if.else144, %if.then140, %if.then173, %sw.bb168, %if.then201, %sw.bb196, %if.then235, %if.then243, %sw.bb264, %if.then270, %sw.bb254, %if.then262, %sw.bb5, %sw.bb24, %if.end31, %sw.bb50, %sw.bb65, %sw.bb79, %if.end61, %sw.bb231, %sw.bb239, %sw.bb247, %entry, %sw.bb131
  %retval.0 = phi i64 [ %conv133, %sw.bb131 ], [ 1, %sw.bb276 ], [ %call275, %sw.bb274 ], [ -1, %if.then270 ], [ %conv267, %sw.bb264 ], [ -1, %if.then262 ], [ %conv259, %sw.bb254 ], [ 1, %if.then243 ], [ 1, %if.then235 ], [ %ret.2, %if.end230 ], [ -1, %if.then201 ], [ 1, %sw.bb196 ], [ %ret.1, %if.end195 ], [ -1, %if.then173 ], [ 1, %sw.bb168 ], [ 1, %sw.bb166 ], [ 1, %sw.bb162 ], [ %num.addr.0, %sw.bb149 ], [ 1, %if.then140 ], [ 1, %if.else144 ], [ %num, %sw.bb134 ], [ %add129, %sw.default128 ], [ %ret.0, %if.end127 ], [ %add, %sw.bb103 ], [ %conv94, %if.else89 ], [ %conv77, %if.else74 ], [ %conv45, %if.then48 ], [ %conv45, %sw.bb42 ], [ %conv37, %if.then40 ], [ %conv37, %sw.bb34 ], [ 1, %sw.bb21 ], [ 1, %sw.bb20 ], [ 1, %sw.bb16 ], [ %conv15, %sw.bb13 ], [ %conv11, %if.end ], [ 1, %sw.bb3 ], [ -1, %sw.bb5 ], [ 0, %sw.bb24 ], [ -1, %if.end31 ], [ 0, %sw.bb50 ], [ 0, %sw.bb65 ], [ 0, %sw.bb79 ], [ 0, %if.end61 ], [ 0, %sw.bb231 ], [ 0, %sw.bb239 ], [ -1, %sw.bb247 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dgram_new(%struct.bio_st* nocapture noundef writeonly %bi) #1 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 168, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 157) #9
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bi, i64 0, i32 10
  store i8* %call, i8** %ptr, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dgram_free(%struct.bio_st* noundef %a) #1 {
entry:
  %cmp = icmp eq %struct.bio_st* %a, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @dgram_clear(%struct.bio_st* noundef nonnull %a) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 10
  %0 = load i8*, i8** %ptr, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 175) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end2
  %retval.0 = phi i32 [ 1, %if.end2 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #4

declare i64 @write(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @BIO_ADDR_sockaddr_size(%union.bio_addr_st* noundef) local_unnamed_addr #3

declare i64 @sendto(i32 noundef, i8* noundef, i64 noundef, i32 noundef, %struct.sockaddr*, i32 noundef) local_unnamed_addr #3

declare %struct.sockaddr* @BIO_ADDR_sockaddr(%union.bio_addr_st* noundef) local_unnamed_addr #3

declare void @BIO_clear_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @BIO_dgram_should_retry(i32 noundef %i) unnamed_addr #5 {
entry:
  %0 = add i32 %i, 1
  %1 = icmp ult i32 %0, 2
  br i1 %1, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call i32* @__errno_location() #10
  %2 = load i32, i32* %call, align 4, !tbaa !12
  %call2 = tail call i32 @BIO_dgram_non_fatal_error(i32 noundef %2) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

declare void @BIO_set_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @dgram_adjust_rcv_timeout(%struct.bio_st* nocapture noundef readonly %b) unnamed_addr #1 {
entry:
  %sz = alloca %union.anon.0, align 8
  %timenow = alloca %struct.timeval, align 8
  %timeleft = alloca <2 x i64>, align 16
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 10
  %0 = bitcast i8** %ptr to %struct.bio_dgram_data_st**
  %1 = load %struct.bio_dgram_data_st*, %struct.bio_dgram_data_st** %0, align 8, !tbaa !4
  %2 = bitcast %union.anon.0* %sz to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #12
  %3 = getelementptr inbounds %union.anon.0, %union.anon.0* %sz, i64 0, i32 0
  store i64 16, i64* %3, align 8
  %next_timeout = getelementptr inbounds %struct.bio_dgram_data_st, %struct.bio_dgram_data_st* %1, i64 0, i32 4
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %next_timeout, i64 0, i32 0
  %4 = load i64, i64* %tv_sec, align 8, !tbaa !23
  %cmp = icmp sgt i64 %4, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %tv_usec = getelementptr inbounds %struct.bio_dgram_data_st, %struct.bio_dgram_data_st* %1, i64 0, i32 4, i32 1
  %5 = load i64, i64* %tv_usec, align 8, !tbaa !24
  %cmp2 = icmp sgt i64 %5, 0
  br i1 %cmp2, label %if.then, label %if.end64

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = bitcast %struct.timeval* %timenow to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #12
  %7 = bitcast <2 x i64>* %timeleft to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #12
  %i = bitcast %union.anon.0* %sz to i32*
  %num = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 9
  %8 = load i32, i32* %num, align 8, !tbaa !16
  %socket_timeout = getelementptr inbounds %struct.bio_dgram_data_st, %struct.bio_dgram_data_st* %1, i64 0, i32 5
  %9 = bitcast %struct.timeval* %socket_timeout to i8*
  %call = call i32 @getsockopt(i32 noundef %8, i32 noundef 1, i32 noundef 20, i8* noundef nonnull %9, i32* noundef nonnull %i) #9
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  call void @perror(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)) #9
  br label %if.end9

if.else:                                          ; preds = %if.then
  %10 = load i32, i32* %i, align 8, !tbaa !21
  %cmp6 = icmp ne i32 %10, 0
  %11 = load i64, i64* %3, align 8
  %cmp8 = icmp ult i64 %11, 17
  %or.cond = select i1 %cmp6, i1 true, i1 %cmp8
  br i1 %or.cond, label %if.end9, label %cond.false

cond.false:                                       ; preds = %if.else
  call void @OPENSSL_die(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 227) #14
  unreachable

if.end9:                                          ; preds = %if.else, %if.then4
  call fastcc void @get_current_time(%struct.timeval* noundef nonnull %timenow) #11
  %12 = bitcast %struct.timeval* %next_timeout to i8*
  %call11 = call i8* @memcpy(i8* noundef nonnull %7, i8* noundef nonnull %12, i64 noundef 16) #9
  %13 = getelementptr inbounds <2 x i64>, <2 x i64>* %timeleft, i64 0, i64 1
  %14 = load i64, i64* %13, align 8, !tbaa !25
  %tv_usec13 = getelementptr inbounds %struct.timeval, %struct.timeval* %timenow, i64 0, i32 1
  %15 = load i64, i64* %tv_usec13, align 8, !tbaa !25
  %cmp14 = icmp slt i64 %14, %15
  br i1 %cmp14, label %if.then15, label %if.else20

if.then15:                                        ; preds = %if.end9
  %sub = add i64 %14, 1000000
  %add = sub i64 %sub, %15
  store i64 %add, i64* %13, align 8, !tbaa !25
  %tv_sec19 = getelementptr inbounds <2 x i64>, <2 x i64>* %timeleft, i64 0, i64 0
  %16 = load i64, i64* %tv_sec19, align 16, !tbaa !26
  %dec = add nsw i64 %16, -1
  br label %if.end24

if.else20:                                        ; preds = %if.end9
  %sub23 = sub nsw i64 %14, %15
  store i64 %sub23, i64* %13, align 8, !tbaa !25
  %tv_sec25.phi.trans.insert = getelementptr inbounds <2 x i64>, <2 x i64>* %timeleft, i64 0, i64 0
  %.pre = load i64, i64* %tv_sec25.phi.trans.insert, align 16, !tbaa !26
  br label %if.end24

if.end24:                                         ; preds = %if.else20, %if.then15
  %17 = phi i64 [ %sub23, %if.else20 ], [ %add, %if.then15 ]
  %18 = phi i64 [ %.pre, %if.else20 ], [ %dec, %if.then15 ]
  %tv_sec26 = getelementptr inbounds %struct.timeval, %struct.timeval* %timenow, i64 0, i32 0
  %19 = load i64, i64* %tv_sec26, align 8, !tbaa !26
  %cmp27 = icmp slt i64 %18, %19
  br i1 %cmp27, label %if.then28, label %if.else31

if.then28:                                        ; preds = %if.end24
  store <2 x i64> <i64 0, i64 1>, <2 x i64>* %timeleft, align 16, !tbaa !27
  br label %if.end35

if.else31:                                        ; preds = %if.end24
  %tv_sec25 = getelementptr inbounds <2 x i64>, <2 x i64>* %timeleft, i64 0, i64 0
  %sub34 = sub nsw i64 %18, %19
  store i64 %sub34, i64* %tv_sec25, align 16, !tbaa !26
  br label %if.end35

if.end35:                                         ; preds = %if.else31, %if.then28
  %20 = phi i64 [ %17, %if.else31 ], [ 1, %if.then28 ]
  %21 = phi i64 [ %sub34, %if.else31 ], [ 0, %if.then28 ]
  %tv_sec37 = getelementptr inbounds %struct.timeval, %struct.timeval* %socket_timeout, i64 0, i32 0
  %22 = load i64, i64* %tv_sec37, align 8, !tbaa !28
  %cmp38 = icmp eq i64 %22, 0
  br i1 %cmp38, label %land.lhs.true, label %lor.lhs.false42

land.lhs.true:                                    ; preds = %if.end35
  %tv_usec40 = getelementptr inbounds %struct.bio_dgram_data_st, %struct.bio_dgram_data_st* %1, i64 0, i32 5, i32 1
  %23 = load i64, i64* %tv_usec40, align 8, !tbaa !29
  %cmp41 = icmp eq i64 %23, 0
  %cmp46 = icmp sgt i64 %22, %21
  %or.cond82 = select i1 %cmp41, i1 true, i1 %cmp46
  br i1 %or.cond82, label %if.then57, label %lor.lhs.false47

lor.lhs.false42:                                  ; preds = %if.end35
  %cmp46.old = icmp sgt i64 %22, %21
  br i1 %cmp46.old, label %if.then57, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %land.lhs.true, %lor.lhs.false42
  %cmp51 = icmp eq i64 %22, %21
  br i1 %cmp51, label %land.lhs.true52, label %if.end63

land.lhs.true52:                                  ; preds = %lor.lhs.false47
  %tv_usec54 = getelementptr inbounds %struct.bio_dgram_data_st, %struct.bio_dgram_data_st* %1, i64 0, i32 5, i32 1
  %24 = load i64, i64* %tv_usec54, align 8, !tbaa !29
  %cmp56.not = icmp slt i64 %24, %20
  br i1 %cmp56.not, label %if.end63, label %if.then57

if.then57:                                        ; preds = %land.lhs.true52, %lor.lhs.false42, %land.lhs.true
  %25 = load i32, i32* %num, align 8, !tbaa !16
  %call59 = call i32 @setsockopt(i32 noundef %25, i32 noundef 1, i32 noundef 20, i8* noundef nonnull %7, i32 noundef 16) #9
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.then61, label %if.end63

if.then61:                                        ; preds = %if.then57
  call void @perror(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)) #9
  br label %if.end63

if.end63:                                         ; preds = %if.then57, %if.then61, %land.lhs.true52, %lor.lhs.false47
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #12
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %lor.lhs.false
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #12
  ret void
}

declare i64 @recvfrom(i32 noundef, i8* noundef, i64 noundef, i32 noundef, %struct.sockaddr*, i32* noundef) local_unnamed_addr #3

declare %struct.sockaddr* @BIO_ADDR_sockaddr_noconst(%union.bio_addr_st* noundef) local_unnamed_addr #3

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @dgram_reset_rcv_timeout(%struct.bio_st* nocapture noundef readonly %b) unnamed_addr #1 {
entry:
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 10
  %0 = bitcast i8** %ptr to %struct.bio_dgram_data_st**
  %1 = load %struct.bio_dgram_data_st*, %struct.bio_dgram_data_st** %0, align 8, !tbaa !4
  %tv_sec = getelementptr inbounds %struct.bio_dgram_data_st, %struct.bio_dgram_data_st* %1, i64 0, i32 4, i32 0
  %2 = load i64, i64* %tv_sec, align 8, !tbaa !23
  %cmp = icmp sgt i64 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %tv_usec = getelementptr inbounds %struct.bio_dgram_data_st, %struct.bio_dgram_data_st* %1, i64 0, i32 4, i32 1
  %3 = load i64, i64* %tv_usec, align 8, !tbaa !24
  %cmp2 = icmp sgt i64 %3, 0
  br i1 %cmp2, label %if.then, label %if.end5

if.then:                                          ; preds = %lor.lhs.false, %entry
  %num = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 9
  %4 = load i32, i32* %num, align 8, !tbaa !16
  %socket_timeout = getelementptr inbounds %struct.bio_dgram_data_st, %struct.bio_dgram_data_st* %1, i64 0, i32 5
  %5 = bitcast %struct.timeval* %socket_timeout to i8*
  %call = tail call i32 @setsockopt(i32 noundef %4, i32 noundef 1, i32 noundef 20, i8* noundef nonnull %5, i32 noundef 16) #9
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then
  tail call void @perror(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then, %if.then4, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind
declare i32 @getsockopt(i32 noundef, i32 noundef, i32 noundef, i8* noundef, i32* noundef) local_unnamed_addr #6

declare void @perror(i8* noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @OPENSSL_die(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @get_current_time(%struct.timeval* noundef %t) unnamed_addr #1 {
entry:
  %call = tail call i32 @gettimeofday(%struct.timeval* noundef %t, i8* noundef null) #9
  ret void
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* noundef, i8* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @dgram_clear(%struct.bio_st* noundef %a) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.bio_st* %a, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %shutdown = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 6
  %0 = load i32, i32* %shutdown, align 4, !tbaa !19
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %return, label %if.then1

if.then1:                                         ; preds = %if.end
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 5
  %1 = load i32, i32* %init, align 8, !tbaa !20
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.then1
  %num = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 9
  %2 = load i32, i32* %num, align 8, !tbaa !16
  %call = tail call i32 @BIO_closesocket(i32 noundef %2) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then1
  store i32 0, i32* %init, align 8, !tbaa !20
  %flags = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 7
  store i32 0, i32* %flags, align 8, !tbaa !30
  br label %return

return:                                           ; preds = %if.end, %if.end4, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.end4 ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare i32 @BIO_ADDR_make(%union.bio_addr_st* noundef, %struct.sockaddr* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getsockname(i32 noundef, %struct.sockaddr*, i32* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @dgram_get_mtu_overhead(%struct.bio_dgram_data_st* noundef %data) unnamed_addr #1 {
entry:
  %tmp_addr = alloca %struct.in6_addr, align 4
  %peer = getelementptr inbounds %struct.bio_dgram_data_st, %struct.bio_dgram_data_st* %data, i64 0, i32 0
  %call = tail call i32 @BIO_ADDR_family(%union.bio_addr_st* noundef %peer) #9
  %cond = icmp eq i32 %call, 10
  br i1 %cond, label %sw.bb1, label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %0 = bitcast %struct.in6_addr* %tmp_addr to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  %call3 = call i32 @BIO_ADDR_rawaddress(%union.bio_addr_st* noundef %peer, i8* noundef nonnull %0, i64* noundef null) #9
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb1
  %arrayidx = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %tmp_addr, i64 0, i32 0, i32 0, i64 0
  %1 = load i32, i32* %arrayidx, align 4, !tbaa !21
  %cmp = icmp eq i32 %1, 0
  %arrayidx7 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %tmp_addr, i64 0, i32 0, i32 0, i64 1
  %2 = load i32, i32* %arrayidx7, align 4
  %cmp8 = icmp eq i32 %2, 0
  %or.cond = select i1 %cmp, i1 %cmp8, i1 false
  %arrayidx11 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %tmp_addr, i64 0, i32 0, i32 0, i64 2
  %3 = load i32, i32* %arrayidx11, align 4
  %cmp13 = icmp eq i32 %3, -65536
  %or.cond20 = select i1 %or.cond, i1 %cmp13, i1 false
  br i1 %or.cond20, label %if.end, label %if.else

if.else:                                          ; preds = %land.lhs.true, %sw.bb1
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %if.else
  %ret.0 = phi i64 [ 48, %if.else ], [ 28, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end
  %ret.1 = phi i64 [ %ret.0, %if.end ], [ 28, %entry ]
  ret i64 %ret.1
}

declare i32 @BIO_ADDR_family(%union.bio_addr_st* noundef) local_unnamed_addr #3

declare i32 @BIO_ADDR_rawaddress(%union.bio_addr_st* noundef, i8* noundef, i64* noundef) local_unnamed_addr #3

declare i32 @BIO_closesocket(i32 noundef) local_unnamed_addr #3

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nounwind }
attributes #13 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #14 = { nobuiltin noreturn nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 64}
!5 = !{!"bio_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !7, i64 88, !10, i64 96, !10, i64 104, !11, i64 112, !6, i64 128}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!12 = !{!9, !9, i64 0}
!13 = !{!14, !9, i64 112}
!14 = !{!"bio_dgram_data_st", !7, i64 0, !9, i64 112, !9, i64 116, !9, i64 120, !15, i64 128, !15, i64 144, !9, i64 160}
!15 = !{!"timeval", !10, i64 0, !10, i64 8}
!16 = !{!5, !9, i64 56}
!17 = !{!14, !9, i64 116}
!18 = !{!14, !9, i64 160}
!19 = !{!5, !9, i64 44}
!20 = !{!5, !9, i64 40}
!21 = !{!7, !7, i64 0}
!22 = !{!14, !9, i64 120}
!23 = !{!14, !10, i64 128}
!24 = !{!14, !10, i64 136}
!25 = !{!15, !10, i64 8}
!26 = !{!15, !10, i64 0}
!27 = !{!10, !10, i64 0}
!28 = !{!14, !10, i64 144}
!29 = !{!14, !10, i64 152}
!30 = !{!5, !9, i64 48}
