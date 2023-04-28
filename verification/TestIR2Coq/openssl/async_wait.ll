; ModuleID = 'crypto/async/async_wait.c'
source_filename = "crypto/async/async_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.async_wait_ctx_st = type { %struct.fd_lookup_st*, i64, i64, i32 (i8*)*, i8*, i32 }
%struct.fd_lookup_st = type { i8*, i32, i8*, void (%struct.async_wait_ctx_st*, i8*, i32, i8*)*, i32, i32, %struct.fd_lookup_st* }

@.str = private unnamed_addr constant [26 x i8] c"crypto/async/async_wait.c\00", align 1
@__func__.ASYNC_WAIT_CTX_set_wait_fd = private unnamed_addr constant [27 x i8] c"ASYNC_WAIT_CTX_set_wait_fd\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.async_wait_ctx_st* @ASYNC_WAIT_CTX_new() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 48, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 17) #6
  %0 = bitcast i8* %call to %struct.async_wait_ctx_st*
  ret %struct.async_wait_ctx_st* %0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @ASYNC_WAIT_CTX_free(%struct.async_wait_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.async_wait_ctx_st* %ctx, null
  br i1 %cmp, label %cleanup9, label %if.end

if.end:                                           ; preds = %entry
  %fds = getelementptr inbounds %struct.async_wait_ctx_st, %struct.async_wait_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %fds, align 8, !tbaa !4
  %cmp1.not24 = icmp eq %struct.fd_lookup_st* %0, null
  br i1 %cmp1.not24, label %while.end, label %while.body

while.body:                                       ; preds = %if.end, %if.end7
  %curr.025 = phi %struct.fd_lookup_st* [ %6, %if.end7 ], [ %0, %if.end ]
  %del = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %curr.025, i64 0, i32 5
  %1 = load i32, i32* %del, align 4, !tbaa !11
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then2, label %if.end7

if.then2:                                         ; preds = %while.body
  %cleanup = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %curr.025, i64 0, i32 3
  %2 = load void (%struct.async_wait_ctx_st*, i8*, i32, i8*)*, void (%struct.async_wait_ctx_st*, i8*, i32, i8*)** %cleanup, align 8, !tbaa !13
  %cmp3.not = icmp eq void (%struct.async_wait_ctx_st*, i8*, i32, i8*)* %2, null
  br i1 %cmp3.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.then2
  %key = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %curr.025, i64 0, i32 0
  %3 = load i8*, i8** %key, align 8, !tbaa !14
  %fd = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %curr.025, i64 0, i32 1
  %4 = load i32, i32* %fd, align 8, !tbaa !15
  %custom_data = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %curr.025, i64 0, i32 2
  %5 = load i8*, i8** %custom_data, align 8, !tbaa !16
  tail call void %2(%struct.async_wait_ctx_st* noundef nonnull %ctx, i8* noundef %3, i32 noundef %4, i8* noundef %5) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %if.then4, %while.body
  %next8 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %curr.025, i64 0, i32 6
  %6 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %next8, align 8, !tbaa !17
  %7 = bitcast %struct.fd_lookup_st* %curr.025 to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %7, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 37) #6
  %cmp1.not = icmp eq %struct.fd_lookup_st* %6, null
  br i1 %cmp1.not, label %while.end, label %while.body, !llvm.loop !18

while.end:                                        ; preds = %if.end7, %if.end
  %8 = bitcast %struct.async_wait_ctx_st* %ctx to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 41) #6
  br label %cleanup9

cleanup9:                                         ; preds = %entry, %while.end
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ASYNC_WAIT_CTX_set_wait_fd(%struct.async_wait_ctx_st* nocapture noundef %ctx, i8* noundef %key, i32 noundef %fd, i8* noundef %custom_data, void (%struct.async_wait_ctx_st*, i8*, i32, i8*)* noundef %cleanup) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 48, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 50) #6
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ASYNC_WAIT_CTX_set_wait_fd, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 51, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup6

if.end:                                           ; preds = %entry
  %key1 = bitcast i8* %call to i8**
  store i8* %key, i8** %key1, align 8, !tbaa !14
  %fd2 = getelementptr inbounds i8, i8* %call, i64 8
  %0 = bitcast i8* %fd2 to i32*
  store i32 %fd, i32* %0, align 8, !tbaa !15
  %custom_data3 = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %custom_data3 to i8**
  store i8* %custom_data, i8** %1, align 8, !tbaa !16
  %cleanup4 = getelementptr inbounds i8, i8* %call, i64 24
  %2 = bitcast i8* %cleanup4 to void (%struct.async_wait_ctx_st*, i8*, i32, i8*)**
  store void (%struct.async_wait_ctx_st*, i8*, i32, i8*)* %cleanup, void (%struct.async_wait_ctx_st*, i8*, i32, i8*)** %2, align 8, !tbaa !13
  %add = getelementptr inbounds i8, i8* %call, i64 32
  %3 = bitcast i8* %add to i32*
  store i32 1, i32* %3, align 8, !tbaa !20
  %fds = getelementptr inbounds %struct.async_wait_ctx_st, %struct.async_wait_ctx_st* %ctx, i64 0, i32 0
  %4 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %fds, align 8, !tbaa !4
  %next = getelementptr inbounds i8, i8* %call, i64 40
  %5 = bitcast i8* %next to %struct.fd_lookup_st**
  store %struct.fd_lookup_st* %4, %struct.fd_lookup_st** %5, align 8, !tbaa !17
  %6 = bitcast %struct.async_wait_ctx_st* %ctx to i8**
  store i8* %call, i8** %6, align 8, !tbaa !4
  %numadd = getelementptr inbounds %struct.async_wait_ctx_st, %struct.async_wait_ctx_st* %ctx, i64 0, i32 1
  %7 = load i64, i64* %numadd, align 8, !tbaa !21
  %inc = add i64 %7, 1
  store i64 %inc, i64* %numadd, align 8, !tbaa !21
  br label %cleanup6

cleanup6:                                         ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define i32 @ASYNC_WAIT_CTX_get_fd(%struct.async_wait_ctx_st* nocapture noundef readonly %ctx, i8* noundef readnone %key, i32* nocapture noundef writeonly %fd, i8** nocapture noundef writeonly %custom_data) local_unnamed_addr #2 {
entry:
  %fds = getelementptr inbounds %struct.async_wait_ctx_st, %struct.async_wait_ctx_st* %ctx, i64 0, i32 0
  %curr.016 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %fds, align 8, !tbaa !22
  %cmp.not17 = icmp eq %struct.fd_lookup_st* %curr.016, null
  br i1 %cmp.not17, label %cleanup, label %while.body

while.body:                                       ; preds = %entry, %while.cond.backedge
  %curr.018 = phi %struct.fd_lookup_st* [ %curr.0, %while.cond.backedge ], [ %curr.016, %entry ]
  %del = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %curr.018, i64 0, i32 5
  %0 = load i32, i32* %del, align 4, !tbaa !11
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end, %while.body
  %curr.0.in.be = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %curr.018, i64 0, i32 6
  %curr.0 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %curr.0.in.be, align 8, !tbaa !22
  %cmp.not = icmp eq %struct.fd_lookup_st* %curr.0, null
  br i1 %cmp.not, label %cleanup, label %while.body, !llvm.loop !23

if.end:                                           ; preds = %while.body
  %key1 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %curr.018, i64 0, i32 0
  %1 = load i8*, i8** %key1, align 8, !tbaa !14
  %cmp2 = icmp eq i8* %1, %key
  br i1 %cmp2, label %if.then3, label %while.cond.backedge

if.then3:                                         ; preds = %if.end
  %fd4 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %curr.018, i64 0, i32 1
  %2 = load i32, i32* %fd4, align 8, !tbaa !15
  store i32 %2, i32* %fd, align 4, !tbaa !24
  %custom_data5 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %curr.018, i64 0, i32 2
  %3 = load i8*, i8** %custom_data5, align 8, !tbaa !16
  store i8* %3, i8** %custom_data, align 8, !tbaa !22
  br label %cleanup

cleanup:                                          ; preds = %while.cond.backedge, %entry, %if.then3
  %retval.0 = phi i32 [ 1, %if.then3 ], [ 0, %entry ], [ 0, %while.cond.backedge ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define i32 @ASYNC_WAIT_CTX_get_all_fds(%struct.async_wait_ctx_st* nocapture noundef readonly %ctx, i32* noundef writeonly %fd, i64* nocapture noundef %numfds) local_unnamed_addr #2 {
entry:
  %fds = getelementptr inbounds %struct.async_wait_ctx_st, %struct.async_wait_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %fds, align 8, !tbaa !4
  store i64 0, i64* %numfds, align 8, !tbaa !25
  %cmp.not1618 = icmp eq %struct.fd_lookup_st* %0, null
  br i1 %cmp.not1618, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry, %if.end4
  %1 = phi i64 [ %inc, %if.end4 ], [ 0, %entry ]
  %curr.0.ph20 = phi %struct.fd_lookup_st* [ %5, %if.end4 ], [ %0, %entry ]
  %fd.addr.0.ph19 = phi i32* [ %fd.addr.1, %if.end4 ], [ %fd, %entry ]
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.then
  %curr.017 = phi %struct.fd_lookup_st* [ %curr.0.ph20, %while.body.lr.ph ], [ %3, %if.then ]
  %del = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %curr.017, i64 0, i32 5
  %2 = load i32, i32* %del, align 4, !tbaa !11
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %next = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %curr.017, i64 0, i32 6
  %3 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %next, align 8, !tbaa !17
  %cmp.not = icmp eq %struct.fd_lookup_st* %3, null
  br i1 %cmp.not, label %while.end, label %while.body, !llvm.loop !26

if.end:                                           ; preds = %while.body
  %cmp1.not = icmp eq i32* %fd.addr.0.ph19, null
  br i1 %cmp1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %fd3 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %curr.017, i64 0, i32 1
  %4 = load i32, i32* %fd3, align 8, !tbaa !15
  store i32 %4, i32* %fd.addr.0.ph19, align 4, !tbaa !24
  %incdec.ptr = getelementptr inbounds i32, i32* %fd.addr.0.ph19, i64 1
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %fd.addr.1 = phi i32* [ %incdec.ptr, %if.then2 ], [ null, %if.end ]
  %inc = add i64 %1, 1
  store i64 %inc, i64* %numfds, align 8, !tbaa !25
  %next5 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %curr.017, i64 0, i32 6
  %5 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %next5, align 8, !tbaa !17
  %cmp.not16 = icmp eq %struct.fd_lookup_st* %5, null
  br i1 %cmp.not16, label %while.end, label %while.body.lr.ph, !llvm.loop !26

while.end:                                        ; preds = %if.end4, %if.then, %entry
  ret i32 1
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define i32 @ASYNC_WAIT_CTX_get_changed_fds(%struct.async_wait_ctx_st* nocapture noundef readonly %ctx, i32* noundef writeonly %addfd, i64* nocapture noundef writeonly %numaddfds, i32* noundef writeonly %delfd, i64* nocapture noundef writeonly %numdelfds) local_unnamed_addr #2 {
entry:
  %numadd = getelementptr inbounds %struct.async_wait_ctx_st, %struct.async_wait_ctx_st* %ctx, i64 0, i32 1
  %0 = load i64, i64* %numadd, align 8, !tbaa !21
  store i64 %0, i64* %numaddfds, align 8, !tbaa !25
  %numdel = getelementptr inbounds %struct.async_wait_ctx_st, %struct.async_wait_ctx_st* %ctx, i64 0, i32 2
  %1 = load i64, i64* %numdel, align 8, !tbaa !27
  store i64 %1, i64* %numdelfds, align 8, !tbaa !25
  %cmp = icmp eq i32* %addfd, null
  %cmp1 = icmp eq i32* %delfd, null
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %fds = getelementptr inbounds %struct.async_wait_ctx_st, %struct.async_wait_ctx_st* %ctx, i64 0, i32 0
  %curr.038 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %fds, align 8, !tbaa !22
  %cmp2.not39 = icmp eq %struct.fd_lookup_st* %curr.038, null
  br i1 %cmp2.not39, label %cleanup, label %while.body

while.body:                                       ; preds = %if.end, %if.end19
  %curr.042 = phi %struct.fd_lookup_st* [ %curr.0, %if.end19 ], [ %curr.038, %if.end ]
  %delfd.addr.041 = phi i32* [ %delfd.addr.1, %if.end19 ], [ %delfd, %if.end ]
  %addfd.addr.040 = phi i32* [ %addfd.addr.1, %if.end19 ], [ %addfd, %if.end ]
  %del = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %curr.042, i64 0, i32 5
  %2 = load i32, i32* %del, align 4, !tbaa !11
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end8, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %while.body
  %add = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %curr.042, i64 0, i32 4
  %3 = load i32, i32* %add, align 8, !tbaa !20
  %tobool4 = icmp eq i32 %3, 0
  %cmp6 = icmp ne i32* %delfd.addr.041, null
  %or.cond20 = select i1 %tobool4, i1 %cmp6, i1 false
  br i1 %or.cond20, label %if.then7, label %if.end8

if.then7:                                         ; preds = %land.lhs.true3
  %fd = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %curr.042, i64 0, i32 1
  %4 = load i32, i32* %fd, align 8, !tbaa !15
  store i32 %4, i32* %delfd.addr.041, align 4, !tbaa !24
  %incdec.ptr = getelementptr inbounds i32, i32* %delfd.addr.041, i64 1
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %land.lhs.true3, %while.body
  %delfd.addr.1 = phi i32* [ %incdec.ptr, %if.then7 ], [ %delfd.addr.041, %land.lhs.true3 ], [ %delfd.addr.041, %while.body ]
  %add9 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %curr.042, i64 0, i32 4
  %5 = load i32, i32* %add9, align 8, !tbaa !20
  %tobool10.not = icmp eq i32 %5, 0
  br i1 %tobool10.not, label %if.end19, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %if.end8
  %6 = load i32, i32* %del, align 4, !tbaa !11
  %tobool13 = icmp eq i32 %6, 0
  %cmp15 = icmp ne i32* %addfd.addr.040, null
  %or.cond21 = select i1 %tobool13, i1 %cmp15, i1 false
  br i1 %or.cond21, label %if.then16, label %if.end19

if.then16:                                        ; preds = %land.lhs.true11
  %fd17 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %curr.042, i64 0, i32 1
  %7 = load i32, i32* %fd17, align 8, !tbaa !15
  store i32 %7, i32* %addfd.addr.040, align 4, !tbaa !24
  %incdec.ptr18 = getelementptr inbounds i32, i32* %addfd.addr.040, i64 1
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %land.lhs.true11, %if.end8
  %addfd.addr.1 = phi i32* [ %incdec.ptr18, %if.then16 ], [ %addfd.addr.040, %land.lhs.true11 ], [ %addfd.addr.040, %if.end8 ]
  %next = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %curr.042, i64 0, i32 6
  %curr.0 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %next, align 8, !tbaa !22
  %cmp2.not = icmp eq %struct.fd_lookup_st* %curr.0, null
  br i1 %cmp2.not, label %cleanup, label %while.body, !llvm.loop !28

cleanup:                                          ; preds = %if.end19, %if.end, %entry
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define i32 @ASYNC_WAIT_CTX_clear_fd(%struct.async_wait_ctx_st* nocapture noundef %ctx, i8* noundef readnone %key) local_unnamed_addr #0 {
entry:
  %fds = getelementptr inbounds %struct.async_wait_ctx_st, %struct.async_wait_ctx_st* %ctx, i64 0, i32 0
  %curr.040 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %fds, align 8, !tbaa !22
  %cmp.not41 = icmp eq %struct.fd_lookup_st* %curr.040, null
  br i1 %cmp.not41, label %cleanup, label %while.body

while.body:                                       ; preds = %entry, %while.cond.backedge
  %curr.043 = phi %struct.fd_lookup_st* [ %curr.0, %while.cond.backedge ], [ %curr.040, %entry ]
  %prev.042 = phi %struct.fd_lookup_st* [ %curr.043, %while.cond.backedge ], [ null, %entry ]
  %del = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %curr.043, i64 0, i32 5
  %0 = load i32, i32* %del, align 4, !tbaa !11
  %cmp1 = icmp eq i32 %0, 1
  br i1 %cmp1, label %while.cond.backedge, label %if.end

while.cond.backedge:                              ; preds = %if.end, %while.body
  %curr.0.in.be = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %curr.043, i64 0, i32 6
  %curr.0 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %curr.0.in.be, align 8, !tbaa !22
  %cmp.not = icmp eq %struct.fd_lookup_st* %curr.0, null
  br i1 %cmp.not, label %cleanup, label %while.body, !llvm.loop !29

if.end:                                           ; preds = %while.body
  %key2 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %curr.043, i64 0, i32 0
  %1 = load i8*, i8** %key2, align 8, !tbaa !14
  %cmp3 = icmp eq i8* %1, %key
  br i1 %cmp3, label %if.then4, label %while.cond.backedge

if.then4:                                         ; preds = %if.end
  %add = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %curr.043, i64 0, i32 4
  %2 = load i32, i32* %add, align 8, !tbaa !20
  %cmp5 = icmp eq i32 %2, 1
  br i1 %cmp5, label %if.then6, label %if.end15

if.then6:                                         ; preds = %if.then4
  %cmp8 = icmp eq %struct.fd_lookup_st* %curr.040, %curr.043
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then6
  %next10 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %curr.040, i64 0, i32 6
  %3 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %next10, align 8, !tbaa !17
  store %struct.fd_lookup_st* %3, %struct.fd_lookup_st** %fds, align 8, !tbaa !4
  br label %if.end14

if.else:                                          ; preds = %if.then6
  %next12 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %curr.043, i64 0, i32 6
  %4 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %next12, align 8, !tbaa !17
  %next13 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %prev.042, i64 0, i32 6
  store %struct.fd_lookup_st* %4, %struct.fd_lookup_st** %next13, align 8, !tbaa !17
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then9
  %curr.04346 = phi %struct.fd_lookup_st* [ %curr.043, %if.else ], [ %curr.040, %if.then9 ]
  %5 = bitcast %struct.fd_lookup_st* %curr.04346 to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 165) #6
  %numadd = getelementptr inbounds %struct.async_wait_ctx_st, %struct.async_wait_ctx_st* %ctx, i64 0, i32 1
  br label %cleanup.sink.split

if.end15:                                         ; preds = %if.then4
  %del.le = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %curr.043, i64 0, i32 5
  store i32 1, i32* %del.le, align 4, !tbaa !11
  %numdel = getelementptr inbounds %struct.async_wait_ctx_st, %struct.async_wait_ctx_st* %ctx, i64 0, i32 2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end14, %if.end15
  %numdel.sink52 = phi i64* [ %numdel, %if.end15 ], [ %numadd, %if.end14 ]
  %.sink51 = phi i64 [ 1, %if.end15 ], [ -1, %if.end14 ]
  %6 = load i64, i64* %numdel.sink52, align 8, !tbaa !25
  %inc = add i64 %6, %.sink51
  store i64 %inc, i64* %numdel.sink52, align 8, !tbaa !25
  br label %cleanup

cleanup:                                          ; preds = %while.cond.backedge, %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %cleanup.sink.split ], [ 0, %while.cond.backedge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @ASYNC_WAIT_CTX_set_callback(%struct.async_wait_ctx_st* noundef writeonly %ctx, i32 (i8*)* noundef %callback, i8* noundef %callback_arg) local_unnamed_addr #3 {
entry:
  %cmp = icmp eq %struct.async_wait_ctx_st* %ctx, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %callback1 = getelementptr inbounds %struct.async_wait_ctx_st, %struct.async_wait_ctx_st* %ctx, i64 0, i32 3
  store i32 (i8*)* %callback, i32 (i8*)** %callback1, align 8, !tbaa !30
  %callback_arg2 = getelementptr inbounds %struct.async_wait_ctx_st, %struct.async_wait_ctx_st* %ctx, i64 0, i32 4
  store i8* %callback_arg, i8** %callback_arg2, align 8, !tbaa !31
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @ASYNC_WAIT_CTX_get_callback(%struct.async_wait_ctx_st* nocapture noundef readonly %ctx, i32 (i8*)** nocapture noundef writeonly %callback, i8** nocapture noundef writeonly %callback_arg) local_unnamed_addr #4 {
entry:
  %callback1 = getelementptr inbounds %struct.async_wait_ctx_st, %struct.async_wait_ctx_st* %ctx, i64 0, i32 3
  %0 = load i32 (i8*)*, i32 (i8*)** %callback1, align 8, !tbaa !30
  %cmp = icmp eq i32 (i8*)* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  store i32 (i8*)* %0, i32 (i8*)** %callback, align 8, !tbaa !22
  %callback_arg3 = getelementptr inbounds %struct.async_wait_ctx_st, %struct.async_wait_ctx_st* %ctx, i64 0, i32 4
  %1 = load i8*, i8** %callback_arg3, align 8, !tbaa !31
  store i8* %1, i8** %callback_arg, align 8, !tbaa !22
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @ASYNC_WAIT_CTX_set_status(%struct.async_wait_ctx_st* nocapture noundef writeonly %ctx, i32 noundef %status) local_unnamed_addr #3 {
entry:
  %status1 = getelementptr inbounds %struct.async_wait_ctx_st, %struct.async_wait_ctx_st* %ctx, i64 0, i32 5
  store i32 %status, i32* %status1, align 8, !tbaa !32
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @ASYNC_WAIT_CTX_get_status(%struct.async_wait_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #5 {
entry:
  %status = getelementptr inbounds %struct.async_wait_ctx_st, %struct.async_wait_ctx_st* %ctx, i64 0, i32 5
  %0 = load i32, i32* %status, align 8, !tbaa !32
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define void @async_wait_ctx_reset_counts(%struct.async_wait_ctx_st* nocapture noundef %ctx) local_unnamed_addr #0 {
entry:
  %numadd = getelementptr inbounds %struct.async_wait_ctx_st, %struct.async_wait_ctx_st* %ctx, i64 0, i32 1
  %0 = bitcast i64* %numadd to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %0, align 8, !tbaa !25
  %fds = getelementptr inbounds %struct.async_wait_ctx_st, %struct.async_wait_ctx_st* %ctx, i64 0, i32 0
  %curr.03640 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %fds, align 8, !tbaa !22
  %cmp.not3741 = icmp eq %struct.fd_lookup_st* %curr.03640, null
  br i1 %cmp.not3741, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry, %if.end16
  %curr.03643 = phi %struct.fd_lookup_st* [ %curr.036, %if.end16 ], [ %curr.03640, %entry ]
  %prev.0.ph42 = phi %struct.fd_lookup_st* [ %curr.038, %if.end16 ], [ null, %entry ]
  %cmp1 = icmp eq %struct.fd_lookup_st* %prev.0.ph42, null
  %next5 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %prev.0.ph42, i64 0, i32 6
  %curr.1.in = select i1 %cmp1, %struct.fd_lookup_st** %fds, %struct.fd_lookup_st** %next5
  %fds.next5 = select i1 %cmp1, %struct.fd_lookup_st** %fds, %struct.fd_lookup_st** %next5
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.then
  %curr.038 = phi %struct.fd_lookup_st* [ %curr.03643, %while.body.lr.ph ], [ %curr.0, %if.then ]
  %del = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %curr.038, i64 0, i32 5
  %1 = load i32, i32* %del, align 4, !tbaa !11
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end12, label %if.then

if.then:                                          ; preds = %while.body
  %next = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %curr.038, i64 0, i32 6
  %2 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %next, align 8, !tbaa !17
  store %struct.fd_lookup_st* %2, %struct.fd_lookup_st** %fds.next5, align 8, !tbaa !22
  %3 = bitcast %struct.fd_lookup_st* %curr.038 to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %3, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 235) #6
  %curr.0 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %curr.1.in, align 8, !tbaa !22
  %cmp.not = icmp eq %struct.fd_lookup_st* %curr.0, null
  br i1 %cmp.not, label %while.end, label %while.body, !llvm.loop !33

if.end12:                                         ; preds = %while.body
  %add = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %curr.038, i64 0, i32 4
  %4 = load i32, i32* %add, align 8, !tbaa !20
  %tobool13.not = icmp eq i32 %4, 0
  br i1 %tobool13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end12
  store i32 0, i32* %add, align 8, !tbaa !20
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12
  %next17 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %curr.038, i64 0, i32 6
  %curr.036 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %next17, align 8, !tbaa !22
  %cmp.not37 = icmp eq %struct.fd_lookup_st* %curr.036, null
  br i1 %cmp.not37, label %while.end, label %while.body.lr.ph, !llvm.loop !33

while.end:                                        ; preds = %if.end16, %if.then, %entry
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"async_wait_ctx_st", !6, i64 0, !9, i64 8, !9, i64 16, !6, i64 24, !6, i64 32, !10, i64 40}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !10, i64 36}
!12 = !{!"fd_lookup_st", !6, i64 0, !10, i64 8, !6, i64 16, !6, i64 24, !10, i64 32, !10, i64 36, !6, i64 40}
!13 = !{!12, !6, i64 24}
!14 = !{!12, !6, i64 0}
!15 = !{!12, !10, i64 8}
!16 = !{!12, !6, i64 16}
!17 = !{!12, !6, i64 40}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!12, !10, i64 32}
!21 = !{!5, !9, i64 8}
!22 = !{!6, !6, i64 0}
!23 = distinct !{!23, !19}
!24 = !{!10, !10, i64 0}
!25 = !{!9, !9, i64 0}
!26 = distinct !{!26, !19}
!27 = !{!5, !9, i64 16}
!28 = distinct !{!28, !19}
!29 = distinct !{!29, !19}
!30 = !{!5, !6, i64 24}
!31 = !{!5, !6, i64 32}
!32 = !{!5, !10, i64 40}
!33 = distinct !{!33, !19}
