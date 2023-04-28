; ModuleID = 'ae.c'
source_filename = "ae.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aeEventLoop = type { i32, i64, [10240 x %struct.aeFileEvent], [10240 x %struct.aeFiredEvent], %struct.aeTimeEvent*, i32, i8*, void (%struct.aeEventLoop*)* }
%struct.aeFileEvent = type { i32, void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)*, i8* }
%struct.aeFiredEvent = type { i32, i32 }
%struct.aeTimeEvent = type { i64, i64, i64, i32 (%struct.aeEventLoop*, i64, i8*)*, void (%struct.aeEventLoop*, i8*)*, i8*, %struct.aeTimeEvent* }
%struct.epoll_event = type <{ i32, %union.epoll_data }>
%union.epoll_data = type { i8* }
%struct.aeApiState = type { i32, [10240 x %struct.epoll_event] }
%struct.timeval = type { i64, i64 }
%struct.fd_set = type { [16 x i64] }

@.str = private unnamed_addr constant [6 x i8] c"epoll\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.aeEventLoop* @aeCreateEventLoop() local_unnamed_addr #0 !dbg !33 {
entry:
  %call = tail call i8* @zmalloc(i64 noundef 409648) #9, !dbg !98
  %0 = bitcast i8* %call to %struct.aeEventLoop*, !dbg !98
  call void @llvm.dbg.value(metadata %struct.aeEventLoop* %0, metadata !96, metadata !DIExpression()), !dbg !99
  %tobool.not = icmp eq i8* %call, null, !dbg !100
  br i1 %tobool.not, label %cleanup, label %if.end, !dbg !102

if.end:                                           ; preds = %entry
  %timeEventHead = getelementptr inbounds i8, i8* %call, i64 409616, !dbg !103
  %1 = bitcast i8* %timeEventHead to %struct.aeTimeEvent**, !dbg !103
  store %struct.aeTimeEvent* null, %struct.aeTimeEvent** %1, align 8, !dbg !104, !tbaa !105
  %timeEventNextId = getelementptr inbounds i8, i8* %call, i64 8, !dbg !112
  %2 = bitcast i8* %timeEventNextId to i64*, !dbg !112
  store i64 0, i64* %2, align 8, !dbg !113, !tbaa !114
  %stop = getelementptr inbounds i8, i8* %call, i64 409624, !dbg !115
  %3 = bitcast i8* %stop to i32*, !dbg !115
  store i32 0, i32* %3, align 8, !dbg !116, !tbaa !117
  %maxfd = bitcast i8* %call to i32*, !dbg !118
  store i32 -1, i32* %maxfd, align 8, !dbg !119, !tbaa !120
  %beforesleep = getelementptr inbounds i8, i8* %call, i64 409640, !dbg !121
  %4 = bitcast i8* %beforesleep to void (%struct.aeEventLoop*)**, !dbg !121
  store void (%struct.aeEventLoop*)* null, void (%struct.aeEventLoop*)** %4, align 8, !dbg !122, !tbaa !123
  %call1 = tail call fastcc i32 @aeApiCreate(%struct.aeEventLoop* noundef nonnull %0) #10, !dbg !124
  %cmp = icmp eq i32 %call1, -1, !dbg !126
  br i1 %cmp, label %if.then2, label %for.cond.preheader, !dbg !127

for.cond.preheader:                               ; preds = %if.end
  %events = getelementptr inbounds i8, i8* %call, i64 16
  %5 = bitcast i8* %events to [10240 x %struct.aeFileEvent]*
  call void @llvm.dbg.value(metadata i32 0, metadata !97, metadata !DIExpression()), !dbg !99
  br label %for.body, !dbg !128

if.then2:                                         ; preds = %if.end
  tail call void @zfree(i8* noundef nonnull %call) #9, !dbg !130
  br label %cleanup, !dbg !132

for.body:                                         ; preds = %for.body, %for.cond.preheader
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next.4, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !97, metadata !DIExpression()), !dbg !99
  %mask = getelementptr inbounds [10240 x %struct.aeFileEvent], [10240 x %struct.aeFileEvent]* %5, i64 0, i64 %indvars.iv, i32 0, !dbg !133
  store i32 0, i32* %mask, align 8, !dbg !135, !tbaa !136
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !138
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !97, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !97, metadata !DIExpression()), !dbg !99
  %mask.1 = getelementptr inbounds [10240 x %struct.aeFileEvent], [10240 x %struct.aeFileEvent]* %5, i64 0, i64 %indvars.iv.next, i32 0, !dbg !133
  store i32 0, i32* %mask.1, align 8, !dbg !135, !tbaa !136
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2, !dbg !138
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.1, metadata !97, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.1, metadata !97, metadata !DIExpression()), !dbg !99
  %mask.2 = getelementptr inbounds [10240 x %struct.aeFileEvent], [10240 x %struct.aeFileEvent]* %5, i64 0, i64 %indvars.iv.next.1, i32 0, !dbg !133
  store i32 0, i32* %mask.2, align 8, !dbg !135, !tbaa !136
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3, !dbg !138
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.2, metadata !97, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.2, metadata !97, metadata !DIExpression()), !dbg !99
  %mask.3 = getelementptr inbounds [10240 x %struct.aeFileEvent], [10240 x %struct.aeFileEvent]* %5, i64 0, i64 %indvars.iv.next.2, i32 0, !dbg !133
  store i32 0, i32* %mask.3, align 8, !dbg !135, !tbaa !136
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4, !dbg !138
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.3, metadata !97, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.3, metadata !97, metadata !DIExpression()), !dbg !99
  %mask.4 = getelementptr inbounds [10240 x %struct.aeFileEvent], [10240 x %struct.aeFileEvent]* %5, i64 0, i64 %indvars.iv.next.3, i32 0, !dbg !133
  store i32 0, i32* %mask.4, align 8, !dbg !135, !tbaa !136
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5, !dbg !138
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.4, metadata !97, metadata !DIExpression()), !dbg !99
  %exitcond.not.4 = icmp eq i64 %indvars.iv.next.4, 10240, !dbg !139
  br i1 %exitcond.not.4, label %cleanup, label %for.body, !dbg !128, !llvm.loop !140

cleanup:                                          ; preds = %for.body, %entry, %if.then2
  %retval.0 = phi %struct.aeEventLoop* [ null, %if.then2 ], [ null, %entry ], [ %0, %for.body ], !dbg !99
  ret %struct.aeEventLoop* %retval.0, !dbg !142
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare !dbg !143 dso_local i8* @zmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @aeApiCreate(%struct.aeEventLoop* nocapture noundef writeonly %eventLoop) unnamed_addr #0 !dbg !151 {
entry:
  call void @llvm.dbg.value(metadata %struct.aeEventLoop* %eventLoop, metadata !156, metadata !DIExpression()), !dbg !182
  %call = tail call i8* @zmalloc(i64 noundef 122884) #9, !dbg !183
  call void @llvm.dbg.value(metadata i8* %call, metadata !157, metadata !DIExpression()), !dbg !182
  %tobool.not = icmp eq i8* %call, null, !dbg !184
  br i1 %tobool.not, label %cleanup, label %if.end, !dbg !186

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %call, metadata !157, metadata !DIExpression()), !dbg !182
  %call1 = tail call i32 @epoll_create(i32 noundef 1024) #9, !dbg !187
  %epfd = bitcast i8* %call to i32*, !dbg !188
  store i32 %call1, i32* %epfd, align 4, !dbg !189, !tbaa !190
  %cmp = icmp eq i32 %call1, -1, !dbg !192
  br i1 %cmp, label %cleanup, label %if.end4, !dbg !194

if.end4:                                          ; preds = %if.end
  %apidata = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 6, !dbg !195
  store i8* %call, i8** %apidata, align 8, !dbg !196, !tbaa !197
  br label %cleanup, !dbg !198

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -1, %entry ], [ -1, %if.end ], !dbg !182
  ret i32 %retval.0, !dbg !199
}

declare !dbg !200 dso_local void @zfree(i8* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @aeDeleteEventLoop(%struct.aeEventLoop* noundef %eventLoop) local_unnamed_addr #0 !dbg !203 {
entry:
  call void @llvm.dbg.value(metadata %struct.aeEventLoop* %eventLoop, metadata !207, metadata !DIExpression()), !dbg !208
  tail call fastcc void @aeApiFree(%struct.aeEventLoop* noundef %eventLoop) #10, !dbg !209
  %0 = bitcast %struct.aeEventLoop* %eventLoop to i8*, !dbg !210
  tail call void @zfree(i8* noundef %0) #9, !dbg !211
  ret void, !dbg !212
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @aeApiFree(%struct.aeEventLoop* nocapture noundef readonly %eventLoop) unnamed_addr #0 !dbg !213 {
entry:
  call void @llvm.dbg.value(metadata %struct.aeEventLoop* %eventLoop, metadata !215, metadata !DIExpression()), !dbg !217
  %apidata = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 6, !dbg !218
  %0 = load i8*, i8** %apidata, align 8, !dbg !218, !tbaa !197
  call void @llvm.dbg.value(metadata i8* %0, metadata !216, metadata !DIExpression()), !dbg !217
  %epfd = bitcast i8* %0 to i32*, !dbg !219
  %1 = load i32, i32* %epfd, align 4, !dbg !219, !tbaa !190
  %call = tail call i32 @close(i32 noundef %1) #9, !dbg !220
  tail call void @zfree(i8* noundef %0) #9, !dbg !221
  ret void, !dbg !222
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @aeStop(%struct.aeEventLoop* nocapture noundef writeonly %eventLoop) local_unnamed_addr #4 !dbg !223 {
entry:
  call void @llvm.dbg.value(metadata %struct.aeEventLoop* %eventLoop, metadata !225, metadata !DIExpression()), !dbg !226
  %stop = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 5, !dbg !227
  store i32 1, i32* %stop, align 8, !dbg !228, !tbaa !117
  ret void, !dbg !229
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @aeCreateFileEvent(%struct.aeEventLoop* nocapture noundef %eventLoop, i32 noundef %fd, i32 noundef %mask, void (%struct.aeEventLoop*, i32, i8*, i32)* noundef %proc, i8* noundef %clientData) local_unnamed_addr #0 !dbg !230 {
entry:
  call void @llvm.dbg.value(metadata %struct.aeEventLoop* %eventLoop, metadata !234, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.value(metadata i32 %fd, metadata !235, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.value(metadata i32 %mask, metadata !236, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.value(metadata void (%struct.aeEventLoop*, i32, i8*, i32)* %proc, metadata !237, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.value(metadata i8* %clientData, metadata !238, metadata !DIExpression()), !dbg !241
  %cmp = icmp sgt i32 %fd, 10239, !dbg !242
  br i1 %cmp, label %return, label %if.end, !dbg !244

if.end:                                           ; preds = %entry
  %idxprom = sext i32 %fd to i64, !dbg !245
  call void @llvm.dbg.value(metadata !DIArgList(%struct.aeEventLoop* %eventLoop, i64 %idxprom), metadata !239, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !241
  %call = tail call fastcc i32 @aeApiAddEvent(%struct.aeEventLoop* noundef %eventLoop, i32 noundef %fd, i32 noundef %mask) #10, !dbg !246
  %cmp1 = icmp eq i32 %call, -1, !dbg !248
  br i1 %cmp1, label %return, label %if.end3, !dbg !249

if.end3:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata !DIArgList(%struct.aeEventLoop* %eventLoop, i64 %idxprom), metadata !239, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !241
  %mask4 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 2, i64 %idxprom, i32 0, !dbg !250
  %0 = load i32, i32* %mask4, align 8, !dbg !251, !tbaa !136
  %or = or i32 %0, %mask, !dbg !251
  store i32 %or, i32* %mask4, align 8, !dbg !251, !tbaa !136
  %and = and i32 %mask, 1, !dbg !252
  %tobool.not = icmp eq i32 %and, 0, !dbg !252
  br i1 %tobool.not, label %if.end6, label %if.then5, !dbg !254

if.then5:                                         ; preds = %if.end3
  %rfileProc = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 2, i64 %idxprom, i32 1, !dbg !255
  store void (%struct.aeEventLoop*, i32, i8*, i32)* %proc, void (%struct.aeEventLoop*, i32, i8*, i32)** %rfileProc, align 8, !dbg !256, !tbaa !257
  br label %if.end6, !dbg !258

if.end6:                                          ; preds = %if.then5, %if.end3
  %and7 = and i32 %mask, 2, !dbg !259
  %tobool8.not = icmp eq i32 %and7, 0, !dbg !259
  br i1 %tobool8.not, label %if.end10, label %if.then9, !dbg !261

if.then9:                                         ; preds = %if.end6
  %wfileProc = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 2, i64 %idxprom, i32 2, !dbg !262
  store void (%struct.aeEventLoop*, i32, i8*, i32)* %proc, void (%struct.aeEventLoop*, i32, i8*, i32)** %wfileProc, align 8, !dbg !263, !tbaa !264
  br label %if.end10, !dbg !265

if.end10:                                         ; preds = %if.then9, %if.end6
  %clientData11 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 2, i64 %idxprom, i32 3, !dbg !266
  store i8* %clientData, i8** %clientData11, align 8, !dbg !267, !tbaa !268
  %maxfd = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 0, !dbg !269
  %1 = load i32, i32* %maxfd, align 8, !dbg !269, !tbaa !120
  %cmp12 = icmp slt i32 %1, %fd, !dbg !271
  br i1 %cmp12, label %if.then13, label %return, !dbg !272

if.then13:                                        ; preds = %if.end10
  store i32 %fd, i32* %maxfd, align 8, !dbg !273, !tbaa !120
  br label %return, !dbg !274

return:                                           ; preds = %if.end, %if.then13, %if.end10, %entry
  %retval.1 = phi i32 [ -1, %entry ], [ -1, %if.end ], [ 0, %if.then13 ], [ 0, %if.end10 ], !dbg !241
  ret i32 %retval.1, !dbg !275
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @aeApiAddEvent(%struct.aeEventLoop* nocapture noundef readonly %eventLoop, i32 noundef %fd, i32 noundef %mask) unnamed_addr #0 !dbg !276 {
entry:
  %ee = alloca %struct.epoll_event, align 4
  call void @llvm.dbg.value(metadata %struct.aeEventLoop* %eventLoop, metadata !280, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i32 %fd, metadata !281, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i32 %mask, metadata !282, metadata !DIExpression()), !dbg !286
  %apidata = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 6, !dbg !287
  %0 = bitcast i8** %apidata to %struct.aeApiState**, !dbg !287
  %1 = load %struct.aeApiState*, %struct.aeApiState** %0, align 8, !dbg !287, !tbaa !197
  call void @llvm.dbg.value(metadata %struct.aeApiState* %1, metadata !283, metadata !DIExpression()), !dbg !286
  %2 = bitcast %struct.epoll_event* %ee to i8*, !dbg !288
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %2) #11, !dbg !288
  call void @llvm.dbg.declare(metadata %struct.epoll_event* %ee, metadata !284, metadata !DIExpression()), !dbg !289
  %idxprom = sext i32 %fd to i64, !dbg !290
  %mask1 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 2, i64 %idxprom, i32 0, !dbg !291
  %3 = load i32, i32* %mask1, align 8, !dbg !291, !tbaa !136
  call void @llvm.dbg.value(metadata i32 undef, metadata !285, metadata !DIExpression()), !dbg !286
  %or = or i32 %3, %mask, !dbg !292
  call void @llvm.dbg.value(metadata i32 %or, metadata !282, metadata !DIExpression()), !dbg !286
  %and = and i32 %or, 1, !dbg !293
  %and9 = shl i32 %or, 1, !dbg !295
  %4 = and i32 %and9, 4, !dbg !295
  %5 = or i32 %4, %and, !dbg !295
  %events2 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %ee, i64 0, i32 0, !dbg !296
  store i32 %5, i32* %events2, align 4, !dbg !286, !tbaa !297
  %cmp = icmp eq i32 %3, 0, !dbg !299
  %cond = select i1 %cmp, i32 1, i32 3, !dbg !290
  call void @llvm.dbg.value(metadata i32 %cond, metadata !285, metadata !DIExpression()), !dbg !286
  %data = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %ee, i64 0, i32 1, !dbg !300
  %u64 = bitcast %union.epoll_data* %data to i64*, !dbg !301
  store i64 0, i64* %u64, align 4, !dbg !302, !tbaa !303
  %fd16 = bitcast %union.epoll_data* %data to i32*, !dbg !304
  store i32 %fd, i32* %fd16, align 4, !dbg !305, !tbaa !303
  %epfd = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %1, i64 0, i32 0, !dbg !306
  %6 = load i32, i32* %epfd, align 4, !dbg !306, !tbaa !190
  %call = call i32 @epoll_ctl(i32 noundef %6, i32 noundef %cond, i32 noundef %fd, %struct.epoll_event* noundef nonnull %ee) #9, !dbg !308
  %cmp17 = icmp eq i32 %call, -1, !dbg !309
  %. = sext i1 %cmp17 to i32, !dbg !286
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %2) #11, !dbg !310
  ret i32 %., !dbg !310
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @aeDeleteFileEvent(%struct.aeEventLoop* nocapture noundef %eventLoop, i32 noundef %fd, i32 noundef %mask) local_unnamed_addr #0 !dbg !311 {
entry:
  call void @llvm.dbg.value(metadata %struct.aeEventLoop* %eventLoop, metadata !315, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata i32 %fd, metadata !316, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata i32 %mask, metadata !317, metadata !DIExpression()), !dbg !322
  %cmp = icmp sgt i32 %fd, 10239, !dbg !323
  br i1 %cmp, label %cleanup.cont, label %if.end, !dbg !325

if.end:                                           ; preds = %entry
  %idxprom = sext i32 %fd to i64, !dbg !326
  call void @llvm.dbg.value(metadata !DIArgList(%struct.aeEventLoop* %eventLoop, i64 %idxprom), metadata !318, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !322
  %mask1 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 2, i64 %idxprom, i32 0, !dbg !327
  %0 = load i32, i32* %mask1, align 8, !dbg !327, !tbaa !136
  %cmp2 = icmp eq i32 %0, 0, !dbg !329
  br i1 %cmp2, label %cleanup.cont, label %if.end4, !dbg !330

if.end4:                                          ; preds = %if.end
  %neg = xor i32 %mask, -1, !dbg !331
  %and = and i32 %0, %neg, !dbg !332
  store i32 %and, i32* %mask1, align 8, !dbg !333, !tbaa !136
  %maxfd = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 0, !dbg !334
  %1 = load i32, i32* %maxfd, align 8, !dbg !334, !tbaa !120
  %cmp7 = icmp eq i32 %1, %fd, !dbg !335
  %cmp9 = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp7, i1 %cmp9, i1 false, !dbg !336
  br i1 %or.cond, label %for.cond.preheader, label %if.end21, !dbg !336

for.cond.preheader:                               ; preds = %if.end4
  %2 = zext i32 %fd to i64, !dbg !337
  %smin = call i32 @llvm.smin.i32(i32 %fd, i32 0), !dbg !337
  %3 = add i32 %smin, -1, !dbg !337
  br label %for.cond, !dbg !337

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %2, %for.cond.preheader ], [ %indvars.iv.next, %for.body ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !339
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !319, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !340
  %4 = trunc i64 %indvars.iv to i32, !dbg !341
  %cmp12 = icmp sgt i32 %4, 0, !dbg !341
  br i1 %cmp12, label %for.body, label %for.end, !dbg !337

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !319, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !340
  %idxprom1440 = and i64 %indvars.iv.next, 4294967295, !dbg !343
  %mask16 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 2, i64 %idxprom1440, i32 0, !dbg !345
  %5 = load i32, i32* %mask16, align 8, !dbg !345, !tbaa !136
  %cmp17.not = icmp eq i32 %5, 0, !dbg !346
  br i1 %cmp17.not, label %for.cond, label %for.end.split.loop.exit, !dbg !347, !llvm.loop !348

for.end.split.loop.exit:                          ; preds = %for.body
  %indvars.le = trunc i64 %indvars.iv.next to i32, !dbg !339
  br label %for.end, !dbg !350

for.end:                                          ; preds = %for.cond, %for.end.split.loop.exit
  %j.0.lcssa = phi i32 [ %indvars.le, %for.end.split.loop.exit ], [ %3, %for.cond ], !dbg !339
  store i32 %j.0.lcssa, i32* %maxfd, align 8, !dbg !350, !tbaa !120
  br label %if.end21, !dbg !351

if.end21:                                         ; preds = %for.end, %if.end4
  tail call fastcc void @aeApiDelEvent(%struct.aeEventLoop* noundef nonnull %eventLoop, i32 noundef %fd, i32 noundef %mask) #10, !dbg !352
  br label %cleanup.cont, !dbg !353

cleanup.cont:                                     ; preds = %if.end21, %if.end, %entry
  ret void, !dbg !353
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @aeApiDelEvent(%struct.aeEventLoop* nocapture noundef readonly %eventLoop, i32 noundef %fd, i32 noundef %delmask) unnamed_addr #0 !dbg !354 {
entry:
  %ee = alloca %struct.epoll_event, align 4
  call void @llvm.dbg.value(metadata %struct.aeEventLoop* %eventLoop, metadata !356, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.value(metadata i32 %fd, metadata !357, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.value(metadata i32 %delmask, metadata !358, metadata !DIExpression()), !dbg !362
  %apidata = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 6, !dbg !363
  %0 = bitcast i8** %apidata to %struct.aeApiState**, !dbg !363
  %1 = load %struct.aeApiState*, %struct.aeApiState** %0, align 8, !dbg !363, !tbaa !197
  call void @llvm.dbg.value(metadata %struct.aeApiState* %1, metadata !359, metadata !DIExpression()), !dbg !362
  %2 = bitcast %struct.epoll_event* %ee to i8*, !dbg !364
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %2) #11, !dbg !364
  call void @llvm.dbg.declare(metadata %struct.epoll_event* %ee, metadata !360, metadata !DIExpression()), !dbg !365
  %idxprom = sext i32 %fd to i64, !dbg !366
  %mask1 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 2, i64 %idxprom, i32 0, !dbg !367
  %3 = load i32, i32* %mask1, align 8, !dbg !367, !tbaa !136
  %neg = xor i32 %delmask, -1, !dbg !368
  %and = and i32 %3, %neg, !dbg !369
  call void @llvm.dbg.value(metadata i32 %and, metadata !361, metadata !DIExpression()), !dbg !362
  %events2 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %ee, i64 0, i32 0, !dbg !370
  %and3 = and i32 %and, 1, !dbg !371
  store i32 %and3, i32* %events2, align 4, !dbg !362, !tbaa !297
  %and5 = and i32 %and, 2, !dbg !373
  %tobool6.not = icmp eq i32 %and5, 0, !dbg !373
  br i1 %tobool6.not, label %if.end10, label %if.end10.thread, !dbg !375

if.end10.thread:                                  ; preds = %entry
  %or9 = or i32 %and3, 4, !dbg !376
  store i32 %or9, i32* %events2, align 4, !dbg !376, !tbaa !297
  %data26 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %ee, i64 0, i32 1, !dbg !377
  %u6427 = bitcast %union.epoll_data* %data26 to i64*, !dbg !378
  store i64 0, i64* %u6427, align 4, !dbg !379, !tbaa !303
  %fd1228 = bitcast %union.epoll_data* %data26 to i32*, !dbg !380
  store i32 %fd, i32* %fd1228, align 4, !dbg !381, !tbaa !303
  br label %if.end16, !dbg !382

if.end10:                                         ; preds = %entry
  %data = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %ee, i64 0, i32 1, !dbg !377
  %u64 = bitcast %union.epoll_data* %data to i64*, !dbg !378
  store i64 0, i64* %u64, align 4, !dbg !379, !tbaa !303
  %fd12 = bitcast %union.epoll_data* %data to i32*, !dbg !380
  store i32 %fd, i32* %fd12, align 4, !dbg !381, !tbaa !303
  %cmp.not = icmp eq i32 %and, 0, !dbg !383
  %spec.select = select i1 %cmp.not, i32 2, i32 3, !dbg !382
  br label %if.end16, !dbg !382

if.end16:                                         ; preds = %if.end10, %if.end10.thread
  %.sink30 = phi i32 [ 3, %if.end10.thread ], [ %spec.select, %if.end10 ]
  %epfd14 = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %1, i64 0, i32 0, !dbg !385
  %4 = load i32, i32* %epfd14, align 4, !dbg !385, !tbaa !190
  %call15 = call i32 @epoll_ctl(i32 noundef %4, i32 noundef %.sink30, i32 noundef %fd, %struct.epoll_event* noundef nonnull %ee) #9, !dbg !385
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %2) #11, !dbg !386
  ret void, !dbg !386
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @aeCreateTimeEvent(%struct.aeEventLoop* nocapture noundef %eventLoop, i64 noundef %milliseconds, i32 (%struct.aeEventLoop*, i64, i8*)* noundef %proc, i8* noundef %clientData, void (%struct.aeEventLoop*, i8*)* noundef %finalizerProc) local_unnamed_addr #0 !dbg !387 {
entry:
  call void @llvm.dbg.value(metadata %struct.aeEventLoop* %eventLoop, metadata !391, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.value(metadata i64 %milliseconds, metadata !392, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.value(metadata i32 (%struct.aeEventLoop*, i64, i8*)* %proc, metadata !393, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.value(metadata i8* %clientData, metadata !394, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.value(metadata void (%struct.aeEventLoop*, i8*)* %finalizerProc, metadata !395, metadata !DIExpression()), !dbg !398
  %timeEventNextId = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 1, !dbg !399
  %0 = load i64, i64* %timeEventNextId, align 8, !dbg !400, !tbaa !114
  %inc = add nsw i64 %0, 1, !dbg !400
  store i64 %inc, i64* %timeEventNextId, align 8, !dbg !400, !tbaa !114
  call void @llvm.dbg.value(metadata i64 %0, metadata !396, metadata !DIExpression()), !dbg !398
  %call = tail call i8* @zmalloc(i64 noundef 56) #9, !dbg !401
  call void @llvm.dbg.value(metadata i8* %call, metadata !397, metadata !DIExpression()), !dbg !398
  %cmp = icmp eq i8* %call, null, !dbg !402
  br i1 %cmp, label %cleanup, label %if.end, !dbg !404

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %call, metadata !397, metadata !DIExpression()), !dbg !398
  %id1 = bitcast i8* %call to i64*, !dbg !405
  store i64 %0, i64* %id1, align 8, !dbg !406, !tbaa !407
  %when_sec = getelementptr inbounds i8, i8* %call, i64 8, !dbg !410
  %1 = bitcast i8* %when_sec to i64*, !dbg !410
  %when_ms = getelementptr inbounds i8, i8* %call, i64 16, !dbg !411
  %2 = bitcast i8* %when_ms to i64*, !dbg !411
  tail call fastcc void @aeAddMillisecondsToNow(i64 noundef %milliseconds, i64* noundef nonnull %1, i64* noundef nonnull %2) #10, !dbg !412
  %timeProc = getelementptr inbounds i8, i8* %call, i64 24, !dbg !413
  %3 = bitcast i8* %timeProc to i32 (%struct.aeEventLoop*, i64, i8*)**, !dbg !413
  store i32 (%struct.aeEventLoop*, i64, i8*)* %proc, i32 (%struct.aeEventLoop*, i64, i8*)** %3, align 8, !dbg !414, !tbaa !415
  %finalizerProc2 = getelementptr inbounds i8, i8* %call, i64 32, !dbg !416
  %4 = bitcast i8* %finalizerProc2 to void (%struct.aeEventLoop*, i8*)**, !dbg !416
  store void (%struct.aeEventLoop*, i8*)* %finalizerProc, void (%struct.aeEventLoop*, i8*)** %4, align 8, !dbg !417, !tbaa !418
  %clientData3 = getelementptr inbounds i8, i8* %call, i64 40, !dbg !419
  %5 = bitcast i8* %clientData3 to i8**, !dbg !419
  store i8* %clientData, i8** %5, align 8, !dbg !420, !tbaa !421
  %timeEventHead = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 4, !dbg !422
  %6 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %timeEventHead, align 8, !dbg !422, !tbaa !105
  %next = getelementptr inbounds i8, i8* %call, i64 48, !dbg !423
  %7 = bitcast i8* %next to %struct.aeTimeEvent**, !dbg !423
  store %struct.aeTimeEvent* %6, %struct.aeTimeEvent** %7, align 8, !dbg !424, !tbaa !425
  %8 = bitcast %struct.aeTimeEvent** %timeEventHead to i8**, !dbg !426
  store i8* %call, i8** %8, align 8, !dbg !426, !tbaa !105
  br label %cleanup, !dbg !427

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %0, %if.end ], [ -1, %entry ], !dbg !398
  ret i64 %retval.0, !dbg !428
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @aeAddMillisecondsToNow(i64 noundef %milliseconds, i64* nocapture noundef writeonly %sec, i64* nocapture noundef writeonly %ms) unnamed_addr #0 !dbg !429 {
entry:
  %cur_sec = alloca i64, align 8
  %cur_ms = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %milliseconds, metadata !434, metadata !DIExpression()), !dbg !441
  call void @llvm.dbg.value(metadata i64* %sec, metadata !435, metadata !DIExpression()), !dbg !441
  call void @llvm.dbg.value(metadata i64* %ms, metadata !436, metadata !DIExpression()), !dbg !441
  %0 = bitcast i64* %cur_sec to i8*, !dbg !442
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11, !dbg !442
  %1 = bitcast i64* %cur_ms to i8*, !dbg !442
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #11, !dbg !442
  call void @llvm.dbg.value(metadata i64* %cur_sec, metadata !437, metadata !DIExpression(DW_OP_deref)), !dbg !441
  call void @llvm.dbg.value(metadata i64* %cur_ms, metadata !438, metadata !DIExpression(DW_OP_deref)), !dbg !441
  call fastcc void @aeGetTime(i64* noundef nonnull %cur_sec, i64* noundef nonnull %cur_ms) #10, !dbg !443
  %2 = load i64, i64* %cur_sec, align 8, !dbg !444, !tbaa !445
  call void @llvm.dbg.value(metadata i64 %2, metadata !437, metadata !DIExpression()), !dbg !441
  %div = sdiv i64 %milliseconds, 1000, !dbg !446
  %add = add nsw i64 %2, %div, !dbg !447
  call void @llvm.dbg.value(metadata i64 %add, metadata !439, metadata !DIExpression()), !dbg !441
  %3 = load i64, i64* %cur_ms, align 8, !dbg !448, !tbaa !445
  call void @llvm.dbg.value(metadata i64 %3, metadata !438, metadata !DIExpression()), !dbg !441
  %rem = srem i64 %milliseconds, 1000, !dbg !449
  %add1 = add nsw i64 %3, %rem, !dbg !450
  call void @llvm.dbg.value(metadata i64 %add1, metadata !440, metadata !DIExpression()), !dbg !441
  %cmp = icmp sgt i64 %add1, 999, !dbg !451
  %sub = add nsw i64 %add1, -1000, !dbg !453
  %inc = zext i1 %cmp to i64, !dbg !453
  %when_sec.0 = add nsw i64 %add, %inc, !dbg !453
  %when_ms.0 = select i1 %cmp, i64 %sub, i64 %add1, !dbg !453
  call void @llvm.dbg.value(metadata i64 %when_ms.0, metadata !440, metadata !DIExpression()), !dbg !441
  call void @llvm.dbg.value(metadata i64 %when_sec.0, metadata !439, metadata !DIExpression()), !dbg !441
  store i64 %when_sec.0, i64* %sec, align 8, !dbg !454, !tbaa !445
  store i64 %when_ms.0, i64* %ms, align 8, !dbg !455, !tbaa !445
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #11, !dbg !456
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11, !dbg !456
  ret void, !dbg !456
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @aeDeleteTimeEvent(%struct.aeEventLoop* noundef %eventLoop, i64 noundef %id) local_unnamed_addr #0 !dbg !457 {
entry:
  call void @llvm.dbg.value(metadata %struct.aeEventLoop* %eventLoop, metadata !461, metadata !DIExpression()), !dbg !465
  call void @llvm.dbg.value(metadata i64 %id, metadata !462, metadata !DIExpression()), !dbg !465
  call void @llvm.dbg.value(metadata %struct.aeTimeEvent* null, metadata !464, metadata !DIExpression()), !dbg !465
  %timeEventHead = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 4, !dbg !466
  call void @llvm.dbg.value(metadata %struct.aeTimeEvent* undef, metadata !463, metadata !DIExpression()), !dbg !465
  %te.031 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %timeEventHead, align 8, !dbg !465, !tbaa !467
  call void @llvm.dbg.value(metadata %struct.aeTimeEvent* null, metadata !464, metadata !DIExpression()), !dbg !465
  call void @llvm.dbg.value(metadata %struct.aeTimeEvent* %te.031, metadata !463, metadata !DIExpression()), !dbg !465
  %tobool.not32 = icmp eq %struct.aeTimeEvent* %te.031, null, !dbg !468
  br i1 %tobool.not32, label %cleanup, label %while.body.preheader, !dbg !468

while.body.preheader:                             ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.aeTimeEvent* null, metadata !464, metadata !DIExpression()), !dbg !465
  %id143 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %te.031, i64 0, i32 0, !dbg !469
  %0 = load i64, i64* %id143, align 8, !dbg !469, !tbaa !407
  %cmp44 = icmp eq i64 %0, %id, !dbg !472
  br i1 %cmp44, label %if.then, label %if.end11, !dbg !473

while.body:                                       ; preds = %if.end11
  call void @llvm.dbg.value(metadata %struct.aeTimeEvent* %te.03445, metadata !464, metadata !DIExpression()), !dbg !465
  %id1 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %te.0, i64 0, i32 0, !dbg !469
  %1 = load i64, i64* %id1, align 8, !dbg !469, !tbaa !407
  %cmp = icmp eq i64 %1, %id, !dbg !472
  br i1 %cmp, label %if.then, label %if.end11, !dbg !473, !llvm.loop !474

if.then:                                          ; preds = %while.body, %while.body.preheader
  %te.034.lcssa = phi %struct.aeTimeEvent* [ %te.031, %while.body.preheader ], [ %te.0, %while.body ]
  %prev.033.lcssa = phi %struct.aeTimeEvent* [ null, %while.body.preheader ], [ %te.03445, %while.body ]
  %cmp2 = icmp eq %struct.aeTimeEvent* %prev.033.lcssa, null, !dbg !476
  %next = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %te.034.lcssa, i64 0, i32 6, !dbg !479
  %2 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %next, align 8, !dbg !479, !tbaa !425
  %next6 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %prev.033.lcssa, i64 0, i32 6, !dbg !480
  %next6.sink = select i1 %cmp2, %struct.aeTimeEvent** %timeEventHead, %struct.aeTimeEvent** %next6, !dbg !480
  store %struct.aeTimeEvent* %2, %struct.aeTimeEvent** %next6.sink, align 8, !dbg !479, !tbaa !467
  %finalizerProc = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %te.034.lcssa, i64 0, i32 4, !dbg !481
  %3 = load void (%struct.aeEventLoop*, i8*)*, void (%struct.aeEventLoop*, i8*)** %finalizerProc, align 8, !dbg !481, !tbaa !418
  %tobool7.not = icmp eq void (%struct.aeEventLoop*, i8*)* %3, null, !dbg !483
  br i1 %tobool7.not, label %if.end10, label %if.then8, !dbg !484

if.then8:                                         ; preds = %if.then
  %clientData = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %te.034.lcssa, i64 0, i32 5, !dbg !485
  %4 = load i8*, i8** %clientData, align 8, !dbg !485, !tbaa !421
  tail call void %3(%struct.aeEventLoop* noundef %eventLoop, i8* noundef %4) #9, !dbg !486
  br label %if.end10, !dbg !486

if.end10:                                         ; preds = %if.then8, %if.then
  %5 = bitcast %struct.aeTimeEvent* %te.034.lcssa to i8*, !dbg !487
  tail call void @zfree(i8* noundef nonnull %5) #9, !dbg !488
  br label %cleanup, !dbg !489

if.end11:                                         ; preds = %while.body.preheader, %while.body
  %te.03445 = phi %struct.aeTimeEvent* [ %te.0, %while.body ], [ %te.031, %while.body.preheader ]
  call void @llvm.dbg.value(metadata %struct.aeTimeEvent* %te.03445, metadata !464, metadata !DIExpression()), !dbg !465
  %next12 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %te.03445, i64 0, i32 6, !dbg !490
  call void @llvm.dbg.value(metadata %struct.aeTimeEvent* undef, metadata !463, metadata !DIExpression()), !dbg !465
  %te.0 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %next12, align 8, !dbg !465, !tbaa !467
  call void @llvm.dbg.value(metadata %struct.aeTimeEvent* %te.0, metadata !463, metadata !DIExpression()), !dbg !465
  %tobool.not = icmp eq %struct.aeTimeEvent* %te.0, null, !dbg !468
  br i1 %tobool.not, label %cleanup, label %while.body, !dbg !468, !llvm.loop !474

cleanup:                                          ; preds = %if.end11, %entry, %if.end10
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -1, %entry ], [ -1, %if.end11 ], !dbg !465
  ret i32 %retval.0, !dbg !491
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @aeProcessEvents(%struct.aeEventLoop* noundef %eventLoop, i32 noundef %flags) local_unnamed_addr #0 !dbg !492 {
entry:
  %tv = alloca <2 x i64>, align 16
  %tmpcast = bitcast <2 x i64>* %tv to %struct.timeval*
  %now_sec = alloca i64, align 8
  %now_ms = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.aeEventLoop* %eventLoop, metadata !496, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata i32 %flags, metadata !497, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata i32 0, metadata !498, metadata !DIExpression()), !dbg !525
  %and = and i32 %flags, 2, !dbg !526
  %tobool.not = icmp eq i32 %and, 0, !dbg !526
  %0 = and i32 %flags, 3, !dbg !528
  %1 = icmp eq i32 %0, 0, !dbg !528
  br i1 %1, label %cleanup, label %if.end, !dbg !528

if.end:                                           ; preds = %entry
  %maxfd = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 0, !dbg !529
  %2 = load i32, i32* %maxfd, align 8, !dbg !529, !tbaa !120
  %cmp.not = icmp ne i32 %2, -1, !dbg !530
  %3 = and i32 %flags, 6
  %.not = icmp eq i32 %3, 2
  %or.cond = or i1 %.not, %cmp.not, !dbg !531
  br i1 %or.cond, label %if.then8, label %if.end81, !dbg !531

if.then8:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct.aeTimeEvent* null, metadata !503, metadata !DIExpression()), !dbg !532
  %4 = bitcast <2 x i64>* %tv to i8*, !dbg !533
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #11, !dbg !533
  call void @llvm.dbg.declare(metadata %struct.timeval* %tmpcast, metadata !504, metadata !DIExpression()), !dbg !534
  %tobool.not.not146 = xor i1 %tobool.not, true, !dbg !535
  %and12 = and i32 %flags, 4
  %tobool13.not = icmp eq i32 %and12, 0
  %or.cond147 = and i1 %tobool13.not, %tobool.not.not146, !dbg !535
  br i1 %or.cond147, label %if.end15, label %if.else38, !dbg !535

if.end15:                                         ; preds = %if.then8
  %call = tail call fastcc %struct.aeTimeEvent* @aeSearchNearestTimer(%struct.aeEventLoop* noundef nonnull %eventLoop) #10, !dbg !537
  call void @llvm.dbg.value(metadata %struct.aeTimeEvent* %call, metadata !503, metadata !DIExpression()), !dbg !532
  %tobool16.not = icmp eq %struct.aeTimeEvent* %call, null, !dbg !538
  br i1 %tobool16.not, label %if.else38, label %if.then17, !dbg !539

if.then17:                                        ; preds = %if.end15
  %5 = bitcast i64* %now_sec to i8*, !dbg !540
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #11, !dbg !540
  %6 = bitcast i64* %now_ms to i8*, !dbg !540
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #11, !dbg !540
  call void @llvm.dbg.value(metadata i64* %now_sec, metadata !514, metadata !DIExpression(DW_OP_deref)), !dbg !541
  call void @llvm.dbg.value(metadata i64* %now_ms, metadata !517, metadata !DIExpression(DW_OP_deref)), !dbg !541
  call fastcc void @aeGetTime(i64* noundef nonnull %now_sec, i64* noundef nonnull %now_ms) #10, !dbg !542
  call void @llvm.dbg.value(metadata %struct.timeval* %tmpcast, metadata !512, metadata !DIExpression()), !dbg !532
  %when_sec = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %call, i64 0, i32 1, !dbg !543
  %7 = load i64, i64* %when_sec, align 8, !dbg !543, !tbaa !544
  %8 = load i64, i64* %now_sec, align 8, !dbg !545, !tbaa !445
  call void @llvm.dbg.value(metadata i64 %8, metadata !514, metadata !DIExpression()), !dbg !541
  %sub = sub nsw i64 %7, %8, !dbg !546
  %tv_sec = getelementptr inbounds <2 x i64>, <2 x i64>* %tv, i64 0, i64 0, !dbg !547
  store i64 %sub, i64* %tv_sec, align 16, !dbg !548, !tbaa !549
  %when_ms = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %call, i64 0, i32 2, !dbg !551
  %9 = load i64, i64* %when_ms, align 8, !dbg !551, !tbaa !553
  %10 = load i64, i64* %now_ms, align 8, !dbg !554, !tbaa !445
  call void @llvm.dbg.value(metadata i64 %10, metadata !517, metadata !DIExpression()), !dbg !541
  %cmp18 = icmp slt i64 %9, %10, !dbg !555
  br i1 %cmp18, label %if.then19, label %if.end27, !dbg !556

if.then19:                                        ; preds = %if.then17
  %add = add nsw i64 %9, 1000, !dbg !557
  %dec = add nsw i64 %sub, -1, !dbg !559
  store i64 %dec, i64* %tv_sec, align 16, !dbg !559, !tbaa !549
  br label %if.end27, !dbg !560

if.end27:                                         ; preds = %if.then17, %if.then19
  %add.pn = phi i64 [ %add, %if.then19 ], [ %9, %if.then17 ]
  %11 = phi i64 [ %dec, %if.then19 ], [ %sub, %if.then17 ], !dbg !561
  %.in = sub i64 %add.pn, %10, !dbg !563
  %12 = mul nsw i64 %.in, 1000, !dbg !563
  %13 = getelementptr inbounds <2 x i64>, <2 x i64>* %tv, i64 0, i64 1, !dbg !564
  store i64 %12, i64* %13, align 8, !dbg !565
  %cmp29 = icmp slt i64 %11, 0, !dbg !566
  br i1 %cmp29, label %if.then30, label %if.end32, !dbg !567

if.then30:                                        ; preds = %if.end27
  store i64 0, i64* %tv_sec, align 16, !dbg !568, !tbaa !549
  br label %if.end32, !dbg !569

if.end32:                                         ; preds = %if.then30, %if.end27
  %cmp34 = icmp slt i64 %.in, 0, !dbg !570
  br i1 %cmp34, label %if.then35, label %if.end37, !dbg !572

if.then35:                                        ; preds = %if.end32
  store i64 0, i64* %13, align 8, !dbg !573, !tbaa !574
  br label %if.end37, !dbg !575

if.end37:                                         ; preds = %if.then35, %if.end32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #11, !dbg !576
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #11, !dbg !576
  br label %if.end46, !dbg !577

if.else38:                                        ; preds = %if.then8, %if.end15
  br i1 %tobool13.not, label %if.end46, label %if.then41, !dbg !578

if.then41:                                        ; preds = %if.else38
  store <2 x i64> zeroinitializer, <2 x i64>* %tv, align 16, !dbg !580, !tbaa !445
  call void @llvm.dbg.value(metadata %struct.timeval* %tmpcast, metadata !512, metadata !DIExpression()), !dbg !532
  br label %if.end46, !dbg !583

if.end46:                                         ; preds = %if.else38, %if.then41, %if.end37
  %tvp.0 = phi %struct.timeval* [ %tmpcast, %if.end37 ], [ %tmpcast, %if.then41 ], [ null, %if.else38 ], !dbg !584
  call void @llvm.dbg.value(metadata %struct.timeval* %tvp.0, metadata !512, metadata !DIExpression()), !dbg !532
  %call47 = call fastcc i32 @aeApiPoll(%struct.aeEventLoop* noundef nonnull %eventLoop, %struct.timeval* noundef %tvp.0) #10, !dbg !585
  call void @llvm.dbg.value(metadata i32 %call47, metadata !499, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata i32 0, metadata !500, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata i32 0, metadata !498, metadata !DIExpression()), !dbg !525
  %cmp48153 = icmp sgt i32 %call47, 0, !dbg !586
  br i1 %cmp48153, label %for.body.preheader, label %for.end, !dbg !587

for.body.preheader:                               ; preds = %if.end46
  %wide.trip.count = zext i32 %call47 to i64, !dbg !586
  br label %for.body, !dbg !587

for.body:                                         ; preds = %for.body.preheader, %if.end79
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %if.end79 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !498, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !525
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !500, metadata !DIExpression()), !dbg !532
  %fd = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 3, i64 %indvars.iv, i32 0, !dbg !588
  %14 = load i32, i32* %fd, align 8, !dbg !588, !tbaa !589
  %idxprom49 = sext i32 %14 to i64, !dbg !591
  call void @llvm.dbg.value(metadata !DIArgList(%struct.aeEventLoop* %eventLoop, i64 %idxprom49), metadata !518, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !592
  %mask54 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 3, i64 %indvars.iv, i32 1, !dbg !593
  %15 = load i32, i32* %mask54, align 4, !dbg !593, !tbaa !594
  call void @llvm.dbg.value(metadata i32 %15, metadata !522, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i32 %14, metadata !523, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i32 0, metadata !524, metadata !DIExpression()), !dbg !592
  %mask60 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 2, i64 %idxprom49, i32 0, !dbg !595
  %16 = load i32, i32* %mask60, align 8, !dbg !595, !tbaa !136
  %and61 = and i32 %15, 1, !dbg !597
  %and62 = and i32 %and61, %16, !dbg !598
  %tobool63.not = icmp eq i32 %and62, 0, !dbg !598
  br i1 %tobool63.not, label %if.end65, label %if.end65.thread, !dbg !599

if.end65:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 undef, metadata !524, metadata !DIExpression()), !dbg !592
  %and67 = and i32 %15, 2, !dbg !600
  %and68 = and i32 %and67, %16, !dbg !602
  %tobool69.not = icmp eq i32 %and68, 0, !dbg !602
  br i1 %tobool69.not, label %if.end79, label %if.end65.if.then75_crit_edge, !dbg !603

if.end65.if.then75_crit_edge:                     ; preds = %if.end65
  %wfileProc76.phi.trans.insert = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 2, i64 %idxprom49, i32 2
  %.pre = load void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)** %wfileProc76.phi.trans.insert, align 8, !dbg !604, !tbaa !264
  br label %if.then75, !dbg !603

if.end65.thread:                                  ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 1, metadata !524, metadata !DIExpression()), !dbg !592
  %rfileProc = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 2, i64 %idxprom49, i32 1, !dbg !607
  %17 = load void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)** %rfileProc, align 8, !dbg !607, !tbaa !257
  %clientData = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 2, i64 %idxprom49, i32 3, !dbg !609
  %18 = load i8*, i8** %clientData, align 8, !dbg !609, !tbaa !268
  call void %17(%struct.aeEventLoop* noundef nonnull %eventLoop, i32 noundef %14, i8* noundef %18, i32 noundef %15) #9, !dbg !610
  call void @llvm.dbg.value(metadata i32 undef, metadata !524, metadata !DIExpression()), !dbg !592
  %19 = load i32, i32* %mask60, align 8, !dbg !611, !tbaa !136
  %and67150 = and i32 %15, 2, !dbg !600
  %and68151 = and i32 %and67150, %19, !dbg !602
  %tobool69.not152 = icmp eq i32 %and68151, 0, !dbg !602
  br i1 %tobool69.not152, label %if.end79, label %lor.lhs.false72, !dbg !603

lor.lhs.false72:                                  ; preds = %if.end65.thread
  %wfileProc = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 2, i64 %idxprom49, i32 2, !dbg !612
  %20 = load void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)** %wfileProc, align 8, !dbg !612, !tbaa !264
  %21 = load void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)** %rfileProc, align 8, !dbg !613, !tbaa !257
  %cmp74.not = icmp eq void (%struct.aeEventLoop*, i32, i8*, i32)* %20, %21, !dbg !614
  br i1 %cmp74.not, label %if.end79, label %if.then75, !dbg !615

if.then75:                                        ; preds = %if.end65.if.then75_crit_edge, %lor.lhs.false72
  %22 = phi void (%struct.aeEventLoop*, i32, i8*, i32)* [ %.pre, %if.end65.if.then75_crit_edge ], [ %20, %lor.lhs.false72 ], !dbg !604
  %clientData77 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 2, i64 %idxprom49, i32 3, !dbg !616
  %23 = load i8*, i8** %clientData77, align 8, !dbg !616, !tbaa !268
  call void %22(%struct.aeEventLoop* noundef nonnull %eventLoop, i32 noundef %14, i8* noundef %23, i32 noundef %15) #9, !dbg !617
  br label %if.end79, !dbg !617

if.end79:                                         ; preds = %if.end65.thread, %lor.lhs.false72, %if.then75, %if.end65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !618
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !498, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !525
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !500, metadata !DIExpression()), !dbg !532
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !586
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !587, !llvm.loop !619

for.end:                                          ; preds = %if.end79, %if.end46
  %processed.0.lcssa = phi i32 [ 0, %if.end46 ], [ %call47, %if.end79 ], !dbg !525
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #11, !dbg !621
  br label %if.end81, !dbg !622

if.end81:                                         ; preds = %if.end, %for.end
  %processed.1 = phi i32 [ %processed.0.lcssa, %for.end ], [ 0, %if.end ], !dbg !623
  call void @llvm.dbg.value(metadata i32 %processed.1, metadata !498, metadata !DIExpression()), !dbg !525
  br i1 %tobool.not, label %cleanup, label %if.then84, !dbg !624

if.then84:                                        ; preds = %if.end81
  %call85 = call fastcc i32 @processTimeEvents(%struct.aeEventLoop* noundef nonnull %eventLoop) #10, !dbg !625
  %add86 = add nsw i32 %call85, %processed.1, !dbg !627
  call void @llvm.dbg.value(metadata i32 %add86, metadata !498, metadata !DIExpression()), !dbg !525
  br label %cleanup, !dbg !628

cleanup:                                          ; preds = %if.end81, %if.then84, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %add86, %if.then84 ], [ %processed.1, %if.end81 ], !dbg !525
  ret i32 %retval.0, !dbg !629
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal fastcc %struct.aeTimeEvent* @aeSearchNearestTimer(%struct.aeEventLoop* nocapture noundef readonly %eventLoop) unnamed_addr #5 !dbg !630 {
entry:
  call void @llvm.dbg.value(metadata %struct.aeEventLoop* %eventLoop, metadata !634, metadata !DIExpression()), !dbg !637
  %timeEventHead = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 4, !dbg !638
  call void @llvm.dbg.value(metadata %struct.aeTimeEvent* undef, metadata !635, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata %struct.aeTimeEvent* null, metadata !636, metadata !DIExpression()), !dbg !637
  %te.021 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %timeEventHead, align 8, !dbg !637, !tbaa !467
  call void @llvm.dbg.value(metadata %struct.aeTimeEvent* %te.021, metadata !635, metadata !DIExpression()), !dbg !637
  %tobool.not22 = icmp eq %struct.aeTimeEvent* %te.021, null, !dbg !639
  br i1 %tobool.not22, label %while.end, label %while.body, !dbg !639

while.body:                                       ; preds = %entry, %if.end
  %te.024 = phi %struct.aeTimeEvent* [ %te.0, %if.end ], [ %te.021, %entry ]
  %nearest.023 = phi %struct.aeTimeEvent* [ %nearest.1, %if.end ], [ null, %entry ]
  call void @llvm.dbg.value(metadata %struct.aeTimeEvent* %nearest.023, metadata !636, metadata !DIExpression()), !dbg !637
  %tobool1.not = icmp eq %struct.aeTimeEvent* %nearest.023, null, !dbg !640
  br i1 %tobool1.not, label %if.then, label %lor.lhs.false, !dbg !643

lor.lhs.false:                                    ; preds = %while.body
  %when_sec = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %te.024, i64 0, i32 1, !dbg !644
  %0 = load i64, i64* %when_sec, align 8, !dbg !644, !tbaa !544
  %when_sec2 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %nearest.023, i64 0, i32 1, !dbg !645
  %1 = load i64, i64* %when_sec2, align 8, !dbg !645, !tbaa !544
  %cmp = icmp slt i64 %0, %1, !dbg !646
  br i1 %cmp, label %if.then, label %lor.lhs.false3, !dbg !647

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %cmp6 = icmp eq i64 %0, %1, !dbg !648
  br i1 %cmp6, label %land.lhs.true, label %if.end, !dbg !649

land.lhs.true:                                    ; preds = %lor.lhs.false3
  %when_ms = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %te.024, i64 0, i32 2, !dbg !650
  %2 = load i64, i64* %when_ms, align 8, !dbg !650, !tbaa !553
  %when_ms7 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %nearest.023, i64 0, i32 2, !dbg !651
  %3 = load i64, i64* %when_ms7, align 8, !dbg !651, !tbaa !553
  %cmp8 = icmp slt i64 %2, %3, !dbg !652
  br i1 %cmp8, label %if.then, label %if.end, !dbg !653

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false, %while.body
  call void @llvm.dbg.value(metadata %struct.aeTimeEvent* %te.024, metadata !636, metadata !DIExpression()), !dbg !637
  br label %if.end, !dbg !654

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false3
  %nearest.1 = phi %struct.aeTimeEvent* [ %te.024, %if.then ], [ %nearest.023, %land.lhs.true ], [ %nearest.023, %lor.lhs.false3 ], !dbg !637
  call void @llvm.dbg.value(metadata %struct.aeTimeEvent* %nearest.1, metadata !636, metadata !DIExpression()), !dbg !637
  %next = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %te.024, i64 0, i32 6, !dbg !655
  call void @llvm.dbg.value(metadata %struct.aeTimeEvent* undef, metadata !635, metadata !DIExpression()), !dbg !637
  %te.0 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %next, align 8, !dbg !637, !tbaa !467
  call void @llvm.dbg.value(metadata %struct.aeTimeEvent* %te.0, metadata !635, metadata !DIExpression()), !dbg !637
  %tobool.not = icmp eq %struct.aeTimeEvent* %te.0, null, !dbg !639
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !639, !llvm.loop !656

while.end:                                        ; preds = %if.end, %entry
  %nearest.0.lcssa = phi %struct.aeTimeEvent* [ null, %entry ], [ %nearest.1, %if.end ], !dbg !637
  ret %struct.aeTimeEvent* %nearest.0.lcssa, !dbg !658
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @aeGetTime(i64* nocapture noundef writeonly %seconds, i64* nocapture noundef writeonly %milliseconds) unnamed_addr #0 !dbg !659 {
entry:
  %tv = alloca %struct.timeval, align 8
  call void @llvm.dbg.value(metadata i64* %seconds, metadata !663, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata i64* %milliseconds, metadata !664, metadata !DIExpression()), !dbg !666
  %0 = bitcast %struct.timeval* %tv to i8*, !dbg !667
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #11, !dbg !667
  call void @llvm.dbg.declare(metadata %struct.timeval* %tv, metadata !665, metadata !DIExpression()), !dbg !668
  %call = call i32 @gettimeofday(%struct.timeval* noundef nonnull %tv, i8* noundef null) #9, !dbg !669
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i64 0, i32 0, !dbg !670
  %1 = load i64, i64* %tv_sec, align 8, !dbg !670, !tbaa !549
  store i64 %1, i64* %seconds, align 8, !dbg !671, !tbaa !445
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i64 0, i32 1, !dbg !672
  %2 = load i64, i64* %tv_usec, align 8, !dbg !672, !tbaa !574
  %div = sdiv i64 %2, 1000, !dbg !673
  store i64 %div, i64* %milliseconds, align 8, !dbg !674, !tbaa !445
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #11, !dbg !675
  ret void, !dbg !675
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @aeApiPoll(%struct.aeEventLoop* nocapture noundef %eventLoop, %struct.timeval* noundef readonly %tvp) unnamed_addr #0 !dbg !676 {
entry:
  call void @llvm.dbg.value(metadata %struct.aeEventLoop* %eventLoop, metadata !680, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata %struct.timeval* %tvp, metadata !681, metadata !DIExpression()), !dbg !694
  %eventLoop48 = bitcast %struct.aeEventLoop* %eventLoop to i8*, !dbg !695
  %apidata = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 6, !dbg !695
  %0 = bitcast i8** %apidata to %struct.aeApiState**, !dbg !695
  %1 = load %struct.aeApiState*, %struct.aeApiState** %0, align 8, !dbg !695, !tbaa !197
  %2 = bitcast %struct.aeApiState* %1 to i8*, !dbg !694
  call void @llvm.dbg.value(metadata %struct.aeApiState* %1, metadata !682, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i32 0, metadata !684, metadata !DIExpression()), !dbg !694
  %epfd = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %1, i64 0, i32 0, !dbg !696
  %3 = load i32, i32* %epfd, align 4, !dbg !696, !tbaa !190
  %arraydecay = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %1, i64 0, i32 1, i64 0, !dbg !697
  %tobool.not = icmp eq %struct.timeval* %tvp, null, !dbg !698
  br i1 %tobool.not, label %cond.end, label %cond.true, !dbg !698

cond.true:                                        ; preds = %entry
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tvp, i64 0, i32 0, !dbg !699
  %4 = load i64, i64* %tv_sec, align 8, !dbg !699, !tbaa !549
  %mul = mul nsw i64 %4, 1000, !dbg !700
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tvp, i64 0, i32 1, !dbg !701
  %5 = load i64, i64* %tv_usec, align 8, !dbg !701, !tbaa !574
  %div = sdiv i64 %5, 1000, !dbg !702
  %add = add nsw i64 %div, %mul, !dbg !703
  %phi.cast = trunc i64 %add to i32, !dbg !698
  br label %cond.end, !dbg !698

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %phi.cast, %cond.true ], [ -1, %entry ]
  %call = tail call i32 @epoll_wait(i32 noundef %3, %struct.epoll_event* noundef nonnull %arraydecay, i32 noundef 10240, i32 noundef %cond) #9, !dbg !704
  call void @llvm.dbg.value(metadata i32 %call, metadata !683, metadata !DIExpression()), !dbg !694
  %cmp = icmp sgt i32 %call, 0, !dbg !705
  br i1 %cmp, label %for.body.preheader, label %if.end21, !dbg !706

for.body.preheader:                               ; preds = %cond.end
  %wide.trip.count = zext i32 %call to i64, !dbg !707
  %min.iters.check = icmp ult i32 %call, 3, !dbg !708
  br i1 %min.iters.check, label %for.body.preheader52, label %vector.memcheck, !dbg !708

vector.memcheck:                                  ; preds = %for.body.preheader
  %scevgep = getelementptr %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 3, i64 0, !dbg !708
  %scevgep47 = bitcast %struct.aeFiredEvent* %scevgep to i8*, !dbg !708
  %6 = shl nuw nsw i64 %wide.trip.count, 3, !dbg !708
  %7 = add nuw nsw i64 %6, 327696, !dbg !708
  %uglygep = getelementptr i8, i8* %eventLoop48, i64 %7, !dbg !708
  %scevgep49 = getelementptr %struct.aeApiState, %struct.aeApiState* %1, i64 0, i32 1, i64 0, !dbg !708
  %scevgep4950 = bitcast %struct.epoll_event* %scevgep49 to i8*, !dbg !708
  %8 = mul nuw nsw i64 %wide.trip.count, 12, !dbg !708
  %uglygep51 = getelementptr i8, i8* %2, i64 %8, !dbg !708
  %bound0 = icmp ugt i8* %uglygep51, %scevgep47, !dbg !708
  %bound1 = icmp ugt i8* %uglygep, %scevgep4950, !dbg !708
  %found.conflict = and i1 %bound0, %bound1, !dbg !708
  br i1 %found.conflict, label %for.body.preheader52, label %vector.ph, !dbg !708

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %wide.trip.count, 1, !dbg !708
  %9 = icmp eq i64 %n.mod.vf, 0, !dbg !708
  %10 = select i1 %9, i64 2, i64 %n.mod.vf, !dbg !708
  %n.vec = sub nsw i64 %wide.trip.count, %10, !dbg !708
  br label %vector.body, !dbg !708

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !709
  %11 = or i64 %index, 1, !dbg !709
  %12 = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %1, i64 0, i32 1, i64 %index, i32 0, !dbg !709
  %13 = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %1, i64 0, i32 1, i64 %11, i32 0, !dbg !709
  %14 = load i32, i32* %12, align 1, !dbg !709, !tbaa !297, !alias.scope !710
  %15 = load i32, i32* %13, align 1, !dbg !709, !tbaa !297, !alias.scope !710
  %16 = insertelement <2 x i32> poison, i32 %14, i64 0, !dbg !709
  %17 = insertelement <2 x i32> %16, i32 %15, i64 1, !dbg !709
  %18 = and <2 x i32> %17, <i32 1, i32 1>, !dbg !709
  %19 = lshr <2 x i32> %17, <i32 1, i32 1>, !dbg !713
  %20 = and <2 x i32> %19, <i32 2, i32 2>, !dbg !713
  %21 = or <2 x i32> %20, %18, !dbg !713
  %22 = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %1, i64 0, i32 1, i64 %index, i32 1, !dbg !709
  %23 = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %1, i64 0, i32 1, i64 %11, i32 1, !dbg !709
  %24 = bitcast %union.epoll_data* %22 to i32*, !dbg !709
  %25 = bitcast %union.epoll_data* %23 to i32*, !dbg !709
  %26 = load i32, i32* %24, align 1, !dbg !709, !tbaa !303, !alias.scope !710
  %27 = load i32, i32* %25, align 1, !dbg !709, !tbaa !303, !alias.scope !710
  %28 = insertelement <2 x i32> poison, i32 %26, i64 0, !dbg !709
  %29 = insertelement <2 x i32> %28, i32 %27, i64 1, !dbg !709
  %30 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 3, i64 %index, i32 1, !dbg !709
  %31 = getelementptr inbounds i32, i32* %30, i64 -1, !dbg !709
  %32 = bitcast i32* %31 to <4 x i32>*, !dbg !709
  %interleaved.vec = shufflevector <2 x i32> %29, <2 x i32> %21, <4 x i32> <i32 0, i32 2, i32 1, i32 3>, !dbg !709
  store <4 x i32> %interleaved.vec, <4 x i32>* %32, align 4, !dbg !709, !tbaa !714
  %index.next = add nuw i64 %index, 2, !dbg !709
  %33 = icmp eq i64 %index.next, %n.vec, !dbg !709
  br i1 %33, label %for.body.preheader52, label %vector.body, !dbg !709, !llvm.loop !715

for.body.preheader52:                             ; preds = %vector.body, %vector.memcheck, %for.body.preheader
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body.preheader ], [ %n.vec, %vector.body ]
  %34 = sub nsw i64 %wide.trip.count, %indvars.iv.ph, !dbg !708
  %35 = xor i64 %indvars.iv.ph, -1, !dbg !708
  %xtraiter = and i64 %34, 1, !dbg !708
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !708
  br i1 %lcmp.mod.not, label %for.body.prol.loopexit, label %for.body.prol, !dbg !708

for.body.prol:                                    ; preds = %for.body.preheader52
  call void @llvm.dbg.value(metadata i64 %indvars.iv.ph, metadata !685, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 0, metadata !688, metadata !DIExpression()), !dbg !719
  call void @llvm.dbg.value(metadata !DIArgList(%struct.aeApiState* %1, i64 %indvars.iv.ph), metadata !692, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 12, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !719
  %events7.prol = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %1, i64 0, i32 1, i64 %indvars.iv.ph, i32 0, !dbg !720
  %36 = load i32, i32* %events7.prol, align 1, !dbg !720, !tbaa !297
  %and.prol = and i32 %36, 1, !dbg !722
  call void @llvm.dbg.value(metadata i32 %and.prol, metadata !688, metadata !DIExpression()), !dbg !719
  %and11.prol = lshr i32 %36, 1, !dbg !713
  %37 = and i32 %and11.prol, 2, !dbg !713
  %38 = or i32 %37, %and.prol, !dbg !713
  call void @llvm.dbg.value(metadata i32 %38, metadata !688, metadata !DIExpression()), !dbg !719
  %data.prol = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %1, i64 0, i32 1, i64 %indvars.iv.ph, i32 1, !dbg !723
  %fd.prol = bitcast %union.epoll_data* %data.prol to i32*, !dbg !724
  %39 = load i32, i32* %fd.prol, align 1, !dbg !724, !tbaa !303
  %fd16.prol = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 3, i64 %indvars.iv.ph, i32 0, !dbg !725
  store i32 %39, i32* %fd16.prol, align 8, !dbg !726, !tbaa !589
  %mask20.prol = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 3, i64 %indvars.iv.ph, i32 1, !dbg !727
  store i32 %38, i32* %mask20.prol, align 4, !dbg !728, !tbaa !594
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1, !dbg !709
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.prol, metadata !685, metadata !DIExpression()), !dbg !718
  br label %for.body.prol.loopexit, !dbg !708

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader52
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body.preheader52 ], [ %indvars.iv.next.prol, %for.body.prol ]
  %40 = sub nsw i64 0, %wide.trip.count, !dbg !708
  %41 = icmp eq i64 %35, %40, !dbg !708
  br i1 %41, label %if.end21, label %for.body, !dbg !708

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %for.body ], [ %indvars.iv.unr, %for.body.prol.loopexit ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !685, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 0, metadata !688, metadata !DIExpression()), !dbg !719
  call void @llvm.dbg.value(metadata !DIArgList(%struct.aeApiState* %1, i64 %indvars.iv), metadata !692, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 12, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !719
  %events7 = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %1, i64 0, i32 1, i64 %indvars.iv, i32 0, !dbg !720
  %42 = load i32, i32* %events7, align 1, !dbg !720, !tbaa !297
  %and = and i32 %42, 1, !dbg !722
  call void @llvm.dbg.value(metadata i32 %and, metadata !688, metadata !DIExpression()), !dbg !719
  %and11 = lshr i32 %42, 1, !dbg !713
  %43 = and i32 %and11, 2, !dbg !713
  %44 = or i32 %43, %and, !dbg !713
  call void @llvm.dbg.value(metadata i32 %44, metadata !688, metadata !DIExpression()), !dbg !719
  %data = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %1, i64 0, i32 1, i64 %indvars.iv, i32 1, !dbg !723
  %fd = bitcast %union.epoll_data* %data to i32*, !dbg !724
  %45 = load i32, i32* %fd, align 1, !dbg !724, !tbaa !303
  %fd16 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 3, i64 %indvars.iv, i32 0, !dbg !725
  store i32 %45, i32* %fd16, align 8, !dbg !726, !tbaa !589
  %mask20 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 3, i64 %indvars.iv, i32 1, !dbg !727
  store i32 %44, i32* %mask20, align 4, !dbg !728, !tbaa !594
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !709
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !685, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !685, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 0, metadata !688, metadata !DIExpression()), !dbg !719
  call void @llvm.dbg.value(metadata !DIArgList(%struct.aeApiState* %1, i64 %indvars.iv.next), metadata !692, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 12, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !719
  %events7.1 = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %1, i64 0, i32 1, i64 %indvars.iv.next, i32 0, !dbg !720
  %46 = load i32, i32* %events7.1, align 1, !dbg !720, !tbaa !297
  %and.1 = and i32 %46, 1, !dbg !722
  call void @llvm.dbg.value(metadata i32 %and.1, metadata !688, metadata !DIExpression()), !dbg !719
  %and11.1 = lshr i32 %46, 1, !dbg !713
  %47 = and i32 %and11.1, 2, !dbg !713
  %48 = or i32 %47, %and.1, !dbg !713
  call void @llvm.dbg.value(metadata i32 %48, metadata !688, metadata !DIExpression()), !dbg !719
  %data.1 = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %1, i64 0, i32 1, i64 %indvars.iv.next, i32 1, !dbg !723
  %fd.1 = bitcast %union.epoll_data* %data.1 to i32*, !dbg !724
  %49 = load i32, i32* %fd.1, align 1, !dbg !724, !tbaa !303
  %fd16.1 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 3, i64 %indvars.iv.next, i32 0, !dbg !725
  store i32 %49, i32* %fd16.1, align 8, !dbg !726, !tbaa !589
  %mask20.1 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 3, i64 %indvars.iv.next, i32 1, !dbg !727
  store i32 %48, i32* %mask20.1, align 4, !dbg !728, !tbaa !594
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2, !dbg !709
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.1, metadata !685, metadata !DIExpression()), !dbg !718
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count, !dbg !707
  br i1 %exitcond.not.1, label %if.end21, label %for.body, !dbg !708, !llvm.loop !729

if.end21:                                         ; preds = %for.body.prol.loopexit, %for.body, %cond.end
  %numevents.0 = phi i32 [ 0, %cond.end ], [ %call, %for.body ], [ %call, %for.body.prol.loopexit ], !dbg !694
  call void @llvm.dbg.value(metadata i32 %numevents.0, metadata !684, metadata !DIExpression()), !dbg !694
  ret i32 %numevents.0, !dbg !730
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @processTimeEvents(%struct.aeEventLoop* noundef %eventLoop) unnamed_addr #0 !dbg !731 {
entry:
  %now_sec = alloca i64, align 8
  %now_ms = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.aeEventLoop* %eventLoop, metadata !733, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.value(metadata i32 0, metadata !734, metadata !DIExpression()), !dbg !744
  %timeEventHead = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 4, !dbg !745
  %0 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %timeEventHead, align 8, !dbg !745, !tbaa !105
  call void @llvm.dbg.value(metadata %struct.aeTimeEvent* %0, metadata !735, metadata !DIExpression()), !dbg !744
  %timeEventNextId = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 1, !dbg !746
  %1 = load i64, i64* %timeEventNextId, align 8, !dbg !746, !tbaa !114
  call void @llvm.dbg.value(metadata i64 %1, metadata !736, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !744
  call void @llvm.dbg.value(metadata i32 0, metadata !734, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.value(metadata %struct.aeTimeEvent* %0, metadata !735, metadata !DIExpression()), !dbg !744
  %tobool.not48 = icmp eq %struct.aeTimeEvent* %0, null, !dbg !747
  br i1 %tobool.not48, label %while.end, label %while.body.lr.ph, !dbg !747

while.body.lr.ph:                                 ; preds = %entry
  %2 = bitcast i64* %now_sec to i8*
  %3 = bitcast i64* %now_ms to i8*
  br label %while.body, !dbg !747

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %processed.051 = phi i32 [ 0, %while.body.lr.ph ], [ %processed.2, %cleanup ]
  %te.049 = phi %struct.aeTimeEvent* [ %0, %while.body.lr.ph ], [ %te.2, %cleanup ]
  call void @llvm.dbg.value(metadata i32 %processed.051, metadata !734, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.value(metadata %struct.aeTimeEvent* %te.049, metadata !735, metadata !DIExpression()), !dbg !744
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #11, !dbg !748
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #11, !dbg !748
  %id1 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %te.049, i64 0, i32 0, !dbg !749
  %4 = load i64, i64* %id1, align 8, !dbg !749, !tbaa !407
  %cmp.not = icmp slt i64 %4, %1, !dbg !751
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !752

if.then:                                          ; preds = %while.body
  %next = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %te.049, i64 0, i32 6, !dbg !753
  call void @llvm.dbg.value(metadata %struct.aeTimeEvent* undef, metadata !735, metadata !DIExpression()), !dbg !744
  br label %cleanup, !dbg !755, !llvm.loop !756

if.end:                                           ; preds = %while.body
  call void @llvm.dbg.value(metadata i64* %now_sec, metadata !737, metadata !DIExpression(DW_OP_deref)), !dbg !758
  call void @llvm.dbg.value(metadata i64* %now_ms, metadata !739, metadata !DIExpression(DW_OP_deref)), !dbg !758
  call fastcc void @aeGetTime(i64* noundef nonnull %now_sec, i64* noundef nonnull %now_ms) #10, !dbg !759
  %5 = load i64, i64* %now_sec, align 8, !dbg !760, !tbaa !445
  call void @llvm.dbg.value(metadata i64 %5, metadata !737, metadata !DIExpression()), !dbg !758
  %when_sec = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %te.049, i64 0, i32 1, !dbg !761
  %6 = load i64, i64* %when_sec, align 8, !dbg !761, !tbaa !544
  %cmp2 = icmp sgt i64 %5, %6, !dbg !762
  br i1 %cmp2, label %if.then6, label %lor.lhs.false, !dbg !763

lor.lhs.false:                                    ; preds = %if.end
  %cmp4 = icmp eq i64 %5, %6, !dbg !764
  br i1 %cmp4, label %land.lhs.true, label %if.else16, !dbg !765

land.lhs.true:                                    ; preds = %lor.lhs.false
  %7 = load i64, i64* %now_ms, align 8, !dbg !766, !tbaa !445
  call void @llvm.dbg.value(metadata i64 %7, metadata !739, metadata !DIExpression()), !dbg !758
  %when_ms = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %te.049, i64 0, i32 2, !dbg !767
  %8 = load i64, i64* %when_ms, align 8, !dbg !767, !tbaa !553
  %cmp5.not = icmp slt i64 %7, %8, !dbg !768
  br i1 %cmp5.not, label %if.else16, label %if.then6, !dbg !769

if.then6:                                         ; preds = %land.lhs.true, %if.end
  %9 = load i64, i64* %id1, align 8, !dbg !770, !tbaa !407
  call void @llvm.dbg.value(metadata i64 %9, metadata !740, metadata !DIExpression()), !dbg !758
  %timeProc = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %te.049, i64 0, i32 3, !dbg !771
  %10 = load i32 (%struct.aeEventLoop*, i64, i8*)*, i32 (%struct.aeEventLoop*, i64, i8*)** %timeProc, align 8, !dbg !771, !tbaa !415
  %clientData = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %te.049, i64 0, i32 5, !dbg !772
  %11 = load i8*, i8** %clientData, align 8, !dbg !772, !tbaa !421
  %call = tail call i32 %10(%struct.aeEventLoop* noundef %eventLoop, i64 noundef %9, i8* noundef %11) #9, !dbg !773
  call void @llvm.dbg.value(metadata i32 %call, metadata !741, metadata !DIExpression()), !dbg !774
  %inc = add nsw i32 %processed.051, 1, !dbg !775
  call void @llvm.dbg.value(metadata i32 %inc, metadata !734, metadata !DIExpression()), !dbg !744
  %cmp9.not = icmp eq i32 %call, -1, !dbg !776
  br i1 %cmp9.not, label %if.else, label %if.then10, !dbg !778

if.then10:                                        ; preds = %if.then6
  %conv = sext i32 %call to i64, !dbg !779
  %when_ms12 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %te.049, i64 0, i32 2, !dbg !781
  tail call fastcc void @aeAddMillisecondsToNow(i64 noundef %conv, i64* noundef nonnull %when_sec, i64* noundef nonnull %when_ms12) #10, !dbg !782
  br label %cleanup, !dbg !783

if.else:                                          ; preds = %if.then6
  %call13 = tail call i32 @aeDeleteTimeEvent(%struct.aeEventLoop* noundef %eventLoop, i64 noundef %9) #10, !dbg !784
  br label %cleanup

if.else16:                                        ; preds = %land.lhs.true, %lor.lhs.false
  %next17 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %te.049, i64 0, i32 6, !dbg !786
  call void @llvm.dbg.value(metadata %struct.aeTimeEvent* undef, metadata !735, metadata !DIExpression()), !dbg !744
  br label %cleanup

cleanup:                                          ; preds = %if.else16, %if.else, %if.then10, %if.then
  %te.2.in = phi %struct.aeTimeEvent** [ %next, %if.then ], [ %next17, %if.else16 ], [ %timeEventHead, %if.else ], [ %timeEventHead, %if.then10 ]
  %processed.2 = phi i32 [ %processed.051, %if.then ], [ %processed.051, %if.else16 ], [ %inc, %if.else ], [ %inc, %if.then10 ], !dbg !744
  %te.2 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %te.2.in, align 8, !dbg !758, !tbaa !467
  call void @llvm.dbg.value(metadata i32 %processed.2, metadata !734, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.value(metadata %struct.aeTimeEvent* %te.2, metadata !735, metadata !DIExpression()), !dbg !744
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #11, !dbg !757
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #11, !dbg !757
  %tobool.not = icmp eq %struct.aeTimeEvent* %te.2, null, !dbg !747
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !747

while.end:                                        ; preds = %cleanup, %entry
  %processed.0.lcssa = phi i32 [ 0, %entry ], [ %processed.2, %cleanup ], !dbg !788
  ret i32 %processed.0.lcssa, !dbg !789
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @aeWait(i32 noundef %fd, i32 noundef %mask, i64 noundef %milliseconds) local_unnamed_addr #0 !dbg !790 {
entry:
  %tv = alloca %struct.timeval, align 8
  %rfds = alloca %struct.fd_set, align 8
  %wfds = alloca %struct.fd_set, align 8
  %efds = alloca %struct.fd_set, align 8
  call void @llvm.dbg.value(metadata i32 %fd, metadata !794, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i32 %mask, metadata !795, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 %milliseconds, metadata !796, metadata !DIExpression()), !dbg !819
  %0 = bitcast %struct.timeval* %tv to i8*, !dbg !820
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #11, !dbg !820
  call void @llvm.dbg.declare(metadata %struct.timeval* %tv, metadata !797, metadata !DIExpression()), !dbg !821
  %1 = bitcast %struct.fd_set* %rfds to i8*, !dbg !822
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #11, !dbg !822
  call void @llvm.dbg.declare(metadata %struct.fd_set* %rfds, metadata !798, metadata !DIExpression()), !dbg !823
  %2 = bitcast %struct.fd_set* %wfds to i8*, !dbg !822
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #11, !dbg !822
  call void @llvm.dbg.declare(metadata %struct.fd_set* %wfds, metadata !806, metadata !DIExpression()), !dbg !824
  %3 = bitcast %struct.fd_set* %efds to i8*, !dbg !822
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #11, !dbg !822
  call void @llvm.dbg.declare(metadata %struct.fd_set* %efds, metadata !807, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata i32 0, metadata !808, metadata !DIExpression()), !dbg !819
  %div = sdiv i64 %milliseconds, 1000, !dbg !826
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i64 0, i32 0, !dbg !827
  store i64 %div, i64* %tv_sec, align 8, !dbg !828, !tbaa !549
  %rem = srem i64 %milliseconds, 1000, !dbg !829
  %mul = mul nsw i64 %rem, 1000, !dbg !830
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i64 0, i32 1, !dbg !831
  store i64 %mul, i64* %tv_usec, align 8, !dbg !832, !tbaa !574
  %arrayidx = getelementptr inbounds %struct.fd_set, %struct.fd_set* %rfds, i64 0, i32 0, i64 0, !dbg !833
  %4 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* nonnull %arrayidx) #11, !dbg !833, !srcloc !834
  call void @llvm.dbg.value(metadata i64 undef, metadata !810, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !835
  call void @llvm.dbg.value(metadata i64* undef, metadata !812, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !835
  %arrayidx7 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %wfds, i64 0, i32 0, i64 0, !dbg !836
  %5 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* nonnull %arrayidx7) #11, !dbg !836, !srcloc !837
  call void @llvm.dbg.value(metadata i64 undef, metadata !813, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !838
  call void @llvm.dbg.value(metadata i64* undef, metadata !815, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !838
  %arrayidx16 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %efds, i64 0, i32 0, i64 0, !dbg !839
  %6 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* nonnull %arrayidx16) #11, !dbg !839, !srcloc !840
  call void @llvm.dbg.value(metadata i64 undef, metadata !816, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !841
  call void @llvm.dbg.value(metadata i64* undef, metadata !818, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !841
  %and = and i32 %mask, 1, !dbg !842
  %tobool.not = icmp eq i32 %and, 0, !dbg !842
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !844

if.then:                                          ; preds = %entry
  %rem21 = srem i32 %fd, 64, !dbg !845
  %sh_prom = zext i32 %rem21 to i64, !dbg !845
  %shl = shl nuw i64 1, %sh_prom, !dbg !845
  %div23 = sdiv i32 %fd, 64, !dbg !845
  %idxprom = sext i32 %div23 to i64, !dbg !845
  %arrayidx24 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %rfds, i64 0, i32 0, i64 %idxprom, !dbg !845
  %7 = load i64, i64* %arrayidx24, align 8, !dbg !845, !tbaa !445
  %or = or i64 %7, %shl, !dbg !845
  store i64 %or, i64* %arrayidx24, align 8, !dbg !845, !tbaa !445
  br label %if.end, !dbg !845

if.end:                                           ; preds = %if.then, %entry
  %and25 = and i32 %mask, 2, !dbg !846
  %tobool26.not = icmp eq i32 %and25, 0, !dbg !846
  br i1 %tobool26.not, label %if.end36, label %if.then27, !dbg !848

if.then27:                                        ; preds = %if.end
  %rem28 = srem i32 %fd, 64, !dbg !849
  %sh_prom29 = zext i32 %rem28 to i64, !dbg !849
  %shl30 = shl nuw i64 1, %sh_prom29, !dbg !849
  %div32 = sdiv i32 %fd, 64, !dbg !849
  %idxprom33 = sext i32 %div32 to i64, !dbg !849
  %arrayidx34 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %wfds, i64 0, i32 0, i64 %idxprom33, !dbg !849
  %8 = load i64, i64* %arrayidx34, align 8, !dbg !849, !tbaa !445
  %or35 = or i64 %8, %shl30, !dbg !849
  store i64 %or35, i64* %arrayidx34, align 8, !dbg !849, !tbaa !445
  br label %if.end36, !dbg !849

if.end36:                                         ; preds = %if.then27, %if.end
  %add = add nsw i32 %fd, 1, !dbg !850
  %call = call i32 @select(i32 noundef %add, %struct.fd_set* noundef nonnull %rfds, %struct.fd_set* noundef nonnull %wfds, %struct.fd_set* noundef nonnull %efds, %struct.timeval* noundef nonnull %tv) #9, !dbg !852
  call void @llvm.dbg.value(metadata i32 %call, metadata !809, metadata !DIExpression()), !dbg !819
  %cmp = icmp sgt i32 %call, 0, !dbg !853
  br i1 %cmp, label %if.then37, label %cleanup, !dbg !854

if.then37:                                        ; preds = %if.end36
  %div39 = sdiv i32 %fd, 64, !dbg !855
  %idxprom40 = sext i32 %div39 to i64, !dbg !855
  %arrayidx41 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %rfds, i64 0, i32 0, i64 %idxprom40, !dbg !855
  %9 = load i64, i64* %arrayidx41, align 8, !dbg !855, !tbaa !445
  %rem42 = srem i32 %fd, 64, !dbg !855
  %sh_prom43 = zext i32 %rem42 to i64, !dbg !855
  %shl44 = shl nuw i64 1, %sh_prom43, !dbg !855
  %and45 = and i64 %9, %shl44, !dbg !855
  %cmp46.not = icmp ne i64 %and45, 0, !dbg !855
  %spec.select = zext i1 %cmp46.not to i32, !dbg !858
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !808, metadata !DIExpression()), !dbg !819
  %arrayidx53 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %wfds, i64 0, i32 0, i64 %idxprom40, !dbg !859
  %10 = load i64, i64* %arrayidx53, align 8, !dbg !859, !tbaa !445
  %and57 = and i64 %10, %shl44, !dbg !859
  %cmp58.not = icmp eq i64 %and57, 0, !dbg !859
  %or60 = or i32 %spec.select, 2, !dbg !861
  %retmask.1 = select i1 %cmp58.not, i32 %spec.select, i32 %or60, !dbg !861
  call void @llvm.dbg.value(metadata i32 %retmask.1, metadata !808, metadata !DIExpression()), !dbg !819
  br label %cleanup, !dbg !862

cleanup:                                          ; preds = %if.end36, %if.then37
  %retval.0 = phi i32 [ %retmask.1, %if.then37 ], [ %call, %if.end36 ], !dbg !863
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #11, !dbg !864
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #11, !dbg !864
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #11, !dbg !864
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #11, !dbg !864
  ret i32 %retval.0, !dbg !864
}

declare !dbg !865 dso_local i32 @select(i32 noundef, %struct.fd_set* noundef, %struct.fd_set* noundef, %struct.fd_set* noundef, %struct.timeval* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @aeMain(%struct.aeEventLoop* noundef %eventLoop) local_unnamed_addr #0 !dbg !871 {
entry:
  call void @llvm.dbg.value(metadata %struct.aeEventLoop* %eventLoop, metadata !873, metadata !DIExpression()), !dbg !874
  %stop = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 5, !dbg !875
  store i32 0, i32* %stop, align 8, !dbg !876, !tbaa !117
  %beforesleep = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 7
  br label %while.body, !dbg !877

while.body:                                       ; preds = %entry, %if.end
  %0 = load void (%struct.aeEventLoop*)*, void (%struct.aeEventLoop*)** %beforesleep, align 8, !dbg !878, !tbaa !123
  %cmp.not = icmp eq void (%struct.aeEventLoop*)* %0, null, !dbg !881
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !882

if.then:                                          ; preds = %while.body
  tail call void %0(%struct.aeEventLoop* noundef nonnull %eventLoop) #9, !dbg !883
  br label %if.end, !dbg !883

if.end:                                           ; preds = %if.then, %while.body
  %call = tail call i32 @aeProcessEvents(%struct.aeEventLoop* noundef nonnull %eventLoop, i32 noundef 3) #10, !dbg !884
  %.pr = load i32, i32* %stop, align 8, !dbg !885, !tbaa !117
  %tobool.not = icmp eq i32 %.pr, 0, !dbg !886
  br i1 %tobool.not, label %while.body, label %while.end, !dbg !877, !llvm.loop !887

while.end:                                        ; preds = %if.end
  ret void, !dbg !889
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i8* @aeGetApiName() local_unnamed_addr #6 !dbg !890 {
entry:
  ret i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), !dbg !895
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @aeSetBeforeSleepProc(%struct.aeEventLoop* nocapture noundef writeonly %eventLoop, void (%struct.aeEventLoop*)* noundef %beforesleep) local_unnamed_addr #4 !dbg !896 {
entry:
  call void @llvm.dbg.value(metadata %struct.aeEventLoop* %eventLoop, metadata !900, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata void (%struct.aeEventLoop*)* %beforesleep, metadata !901, metadata !DIExpression()), !dbg !902
  %beforesleep1 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %eventLoop, i64 0, i32 7, !dbg !903
  store void (%struct.aeEventLoop*)* %beforesleep, void (%struct.aeEventLoop*)** %beforesleep1, align 8, !dbg !904, !tbaa !123
  ret void, !dbg !905
}

; Function Attrs: nounwind
declare !dbg !906 dso_local i32 @epoll_create(i32 noundef) local_unnamed_addr #7

declare !dbg !909 dso_local i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !911 dso_local i32 @epoll_ctl(i32 noundef, i32 noundef, i32 noundef, %struct.epoll_event* noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !914 dso_local i32 @gettimeofday(%struct.timeval* noundef, i8* noundef) local_unnamed_addr #7

declare !dbg !919 dso_local i32 @epoll_wait(i32 noundef, %struct.epoll_event* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !22, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "ae.c", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "6f2333f6d158dfcf866b181381f2aa72")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "EPOLL_EVENTS", file: !4, line: 34, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/epoll.h", directory: "", checksumkind: CSK_MD5, checksum: "80f278262fdd1de9f0e6a5431c83c2f8")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21}
!7 = !DIEnumerator(name: "EPOLLIN", value: 1)
!8 = !DIEnumerator(name: "EPOLLPRI", value: 2)
!9 = !DIEnumerator(name: "EPOLLOUT", value: 4)
!10 = !DIEnumerator(name: "EPOLLRDNORM", value: 64)
!11 = !DIEnumerator(name: "EPOLLRDBAND", value: 128)
!12 = !DIEnumerator(name: "EPOLLWRNORM", value: 256)
!13 = !DIEnumerator(name: "EPOLLWRBAND", value: 512)
!14 = !DIEnumerator(name: "EPOLLMSG", value: 1024)
!15 = !DIEnumerator(name: "EPOLLERR", value: 8)
!16 = !DIEnumerator(name: "EPOLLHUP", value: 16)
!17 = !DIEnumerator(name: "EPOLLRDHUP", value: 8192)
!18 = !DIEnumerator(name: "EPOLLEXCLUSIVE", value: 268435456)
!19 = !DIEnumerator(name: "EPOLLWAKEUP", value: 536870912)
!20 = !DIEnumerator(name: "EPOLLONESHOT", value: 1073741824)
!21 = !DIEnumerator(name: "EPOLLET", value: 2147483648, isUnsigned: true)
!22 = !{!23, !24, !27}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fd_mask", file: !25, line: 49, baseType: !26)
!25 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/select.h", directory: "", checksumkind: CSK_MD5, checksum: "d9544b6ca50e028622009bf667961f34")
!26 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !{i32 7, !"Dwarf Version", i32 5}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{i32 1, !"wchar_size", i32 4}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{!"clang version 14.0.0"}
!33 = distinct !DISubprogram(name: "aeCreateEventLoop", scope: !1, file: !1, line: 55, type: !34, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !95)
!34 = !DISubroutineType(types: !35)
!35 = !{!36}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeEventLoop", file: !38, line: 98, baseType: !39)
!38 = !DIFile(filename: "./ae.h", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "51650c7e83e254786f74107a47ea513a")
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeEventLoop", file: !38, line: 89, size: 3277184, elements: !40)
!40 = !{!41, !42, !44, !60, !67, !88, !89, !90}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "maxfd", scope: !39, file: !38, line: 90, baseType: !27, size: 32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventNextId", scope: !39, file: !38, line: 91, baseType: !43, size: 64, offset: 64)
!43 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !39, file: !38, line: 92, baseType: !45, size: 2621440, offset: 128)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 2621440, elements: !58)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileEvent", file: !38, line: 69, baseType: !47)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFileEvent", file: !38, line: 64, size: 256, elements: !48)
!48 = !{!49, !50, !56, !57}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !47, file: !38, line: 65, baseType: !27, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "rfileProc", scope: !47, file: !38, line: 66, baseType: !51, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileProc", file: !38, line: 58, baseType: !53)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !55, !27, !23, !27}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "wfileProc", scope: !47, file: !38, line: 67, baseType: !51, size: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !47, file: !38, line: 68, baseType: !23, size: 64, offset: 192)
!58 = !{!59}
!59 = !DISubrange(count: 10240)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "fired", scope: !39, file: !38, line: 93, baseType: !61, size: 655360, offset: 2621568)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 655360, elements: !58)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFiredEvent", file: !38, line: 86, baseType: !63)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFiredEvent", file: !38, line: 83, size: 64, elements: !64)
!64 = !{!65, !66}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !63, file: !38, line: 84, baseType: !27, size: 32)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !63, file: !38, line: 85, baseType: !27, size: 32, offset: 32)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventHead", scope: !39, file: !38, line: 94, baseType: !68, size: 64, offset: 3276928)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeEvent", file: !38, line: 80, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeTimeEvent", file: !38, line: 72, size: 448, elements: !71)
!71 = !{!72, !73, !74, !75, !80, !85, !86}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !70, file: !38, line: 73, baseType: !43, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "when_sec", scope: !70, file: !38, line: 74, baseType: !26, size: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "when_ms", scope: !70, file: !38, line: 75, baseType: !26, size: 64, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "timeProc", scope: !70, file: !38, line: 76, baseType: !76, size: 64, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeProc", file: !38, line: 59, baseType: !78)
!78 = !DISubroutineType(types: !79)
!79 = !{!27, !55, !43, !23}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "finalizerProc", scope: !70, file: !38, line: 77, baseType: !81, size: 64, offset: 256)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeEventFinalizerProc", file: !38, line: 60, baseType: !83)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !55, !23}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !70, file: !38, line: 78, baseType: !23, size: 64, offset: 320)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !70, file: !38, line: 79, baseType: !87, size: 64, offset: 384)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !39, file: !38, line: 95, baseType: !27, size: 32, offset: 3276992)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "apidata", scope: !39, file: !38, line: 96, baseType: !23, size: 64, offset: 3277056)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "beforesleep", scope: !39, file: !38, line: 97, baseType: !91, size: 64, offset: 3277120)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeBeforeSleepProc", file: !38, line: 61, baseType: !93)
!93 = !DISubroutineType(types: !94)
!94 = !{null, !55}
!95 = !{!96, !97}
!96 = !DILocalVariable(name: "eventLoop", scope: !33, file: !1, line: 56, type: !36)
!97 = !DILocalVariable(name: "i", scope: !33, file: !1, line: 57, type: !27)
!98 = !DILocation(line: 59, column: 17, scope: !33)
!99 = !DILocation(line: 0, scope: !33)
!100 = !DILocation(line: 60, column: 10, scope: !101)
!101 = distinct !DILexicalBlock(scope: !33, file: !1, line: 60, column: 9)
!102 = !DILocation(line: 60, column: 9, scope: !33)
!103 = !DILocation(line: 61, column: 16, scope: !33)
!104 = !DILocation(line: 61, column: 30, scope: !33)
!105 = !{!106, !111, i64 409616}
!106 = !{!"aeEventLoop", !107, i64 0, !110, i64 8, !108, i64 16, !108, i64 327696, !111, i64 409616, !107, i64 409624, !111, i64 409632, !111, i64 409640}
!107 = !{!"int", !108, i64 0}
!108 = !{!"omnipotent char", !109, i64 0}
!109 = !{!"Simple C/C++ TBAA"}
!110 = !{!"long long", !108, i64 0}
!111 = !{!"any pointer", !108, i64 0}
!112 = !DILocation(line: 62, column: 16, scope: !33)
!113 = !DILocation(line: 62, column: 32, scope: !33)
!114 = !{!106, !110, i64 8}
!115 = !DILocation(line: 63, column: 16, scope: !33)
!116 = !DILocation(line: 63, column: 21, scope: !33)
!117 = !{!106, !107, i64 409624}
!118 = !DILocation(line: 64, column: 16, scope: !33)
!119 = !DILocation(line: 64, column: 22, scope: !33)
!120 = !{!106, !107, i64 0}
!121 = !DILocation(line: 65, column: 16, scope: !33)
!122 = !DILocation(line: 65, column: 28, scope: !33)
!123 = !{!106, !111, i64 409640}
!124 = !DILocation(line: 66, column: 9, scope: !125)
!125 = distinct !DILexicalBlock(scope: !33, file: !1, line: 66, column: 9)
!126 = !DILocation(line: 66, column: 32, scope: !125)
!127 = !DILocation(line: 66, column: 9, scope: !33)
!128 = !DILocation(line: 72, column: 5, scope: !129)
!129 = distinct !DILexicalBlock(scope: !33, file: !1, line: 72, column: 5)
!130 = !DILocation(line: 67, column: 9, scope: !131)
!131 = distinct !DILexicalBlock(scope: !125, file: !1, line: 66, column: 39)
!132 = !DILocation(line: 68, column: 9, scope: !131)
!133 = !DILocation(line: 73, column: 30, scope: !134)
!134 = distinct !DILexicalBlock(scope: !129, file: !1, line: 72, column: 5)
!135 = !DILocation(line: 73, column: 35, scope: !134)
!136 = !{!137, !107, i64 0}
!137 = !{!"aeFileEvent", !107, i64 0, !111, i64 8, !111, i64 16, !111, i64 24}
!138 = !DILocation(line: 72, column: 34, scope: !134)
!139 = !DILocation(line: 72, column: 19, scope: !134)
!140 = distinct !{!140, !128, !141}
!141 = !DILocation(line: 73, column: 37, scope: !129)
!142 = !DILocation(line: 75, column: 1, scope: !33)
!143 = !DISubprogram(name: "zmalloc", scope: !144, file: !144, line: 34, type: !145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !150)
!144 = !DIFile(filename: "./zmalloc.h", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "8c6e7e80b58457b2728e51e83fedc2bb")
!145 = !DISubroutineType(types: !146)
!146 = !{!23, !147}
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !148, line: 46, baseType: !149)
!148 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!149 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!150 = !{}
!151 = distinct !DISubprogram(name: "aeApiCreate", scope: !152, file: !152, line: 12, type: !153, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !155)
!152 = !DIFile(filename: "./ae_epoll.c", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "2523793c741eaffc00fa5f8eb793c7fb")
!153 = !DISubroutineType(types: !154)
!154 = !{!27, !36}
!155 = !{!156, !157}
!156 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !151, file: !152, line: 12, type: !36)
!157 = !DILocalVariable(name: "state", scope: !151, file: !152, line: 13, type: !158)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeApiState", file: !152, line: 10, baseType: !160)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeApiState", file: !152, line: 7, size: 983072, elements: !161)
!161 = !{!162, !163}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "epfd", scope: !160, file: !152, line: 8, baseType: !27, size: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !160, file: !152, line: 9, baseType: !164, size: 983040, offset: 32)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 983040, elements: !58)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "epoll_event", file: !4, line: 83, size: 96, elements: !166)
!166 = !{!167, !172}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !165, file: !4, line: 85, baseType: !168, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !169, line: 26, baseType: !170)
!169 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !171, line: 42, baseType: !5)
!171 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!172 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !165, file: !4, line: 86, baseType: !173, size: 64, offset: 32)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "epoll_data_t", file: !4, line: 81, baseType: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "epoll_data", file: !4, line: 75, size: 64, elements: !175)
!175 = !{!176, !177, !178, !179}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !174, file: !4, line: 77, baseType: !23, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !174, file: !4, line: 78, baseType: !27, size: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "u32", scope: !174, file: !4, line: 79, baseType: !168, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !174, file: !4, line: 80, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !169, line: 27, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !171, line: 45, baseType: !149)
!182 = !DILocation(line: 0, scope: !151)
!183 = !DILocation(line: 13, column: 25, scope: !151)
!184 = !DILocation(line: 15, column: 10, scope: !185)
!185 = distinct !DILexicalBlock(scope: !151, file: !152, line: 15, column: 9)
!186 = !DILocation(line: 15, column: 9, scope: !151)
!187 = !DILocation(line: 16, column: 19, scope: !151)
!188 = !DILocation(line: 16, column: 12, scope: !151)
!189 = !DILocation(line: 16, column: 17, scope: !151)
!190 = !{!191, !107, i64 0}
!191 = !{!"aeApiState", !107, i64 0, !108, i64 4}
!192 = !DILocation(line: 17, column: 21, scope: !193)
!193 = distinct !DILexicalBlock(scope: !151, file: !152, line: 17, column: 9)
!194 = !DILocation(line: 17, column: 9, scope: !151)
!195 = !DILocation(line: 18, column: 16, scope: !151)
!196 = !DILocation(line: 18, column: 24, scope: !151)
!197 = !{!106, !111, i64 409632}
!198 = !DILocation(line: 19, column: 5, scope: !151)
!199 = !DILocation(line: 20, column: 1, scope: !151)
!200 = !DISubprogram(name: "zfree", scope: !144, file: !144, line: 36, type: !201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !150)
!201 = !DISubroutineType(types: !202)
!202 = !{null, !23}
!203 = distinct !DISubprogram(name: "aeDeleteEventLoop", scope: !1, file: !1, line: 77, type: !204, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !206)
!204 = !DISubroutineType(types: !205)
!205 = !{null, !36}
!206 = !{!207}
!207 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !203, file: !1, line: 77, type: !36)
!208 = !DILocation(line: 0, scope: !203)
!209 = !DILocation(line: 78, column: 5, scope: !203)
!210 = !DILocation(line: 79, column: 11, scope: !203)
!211 = !DILocation(line: 79, column: 5, scope: !203)
!212 = !DILocation(line: 80, column: 1, scope: !203)
!213 = distinct !DISubprogram(name: "aeApiFree", scope: !152, file: !152, line: 22, type: !204, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !214)
!214 = !{!215, !216}
!215 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !213, file: !152, line: 22, type: !36)
!216 = !DILocalVariable(name: "state", scope: !213, file: !152, line: 23, type: !158)
!217 = !DILocation(line: 0, scope: !213)
!218 = !DILocation(line: 23, column: 36, scope: !213)
!219 = !DILocation(line: 25, column: 18, scope: !213)
!220 = !DILocation(line: 25, column: 5, scope: !213)
!221 = !DILocation(line: 26, column: 5, scope: !213)
!222 = !DILocation(line: 27, column: 1, scope: !213)
!223 = distinct !DISubprogram(name: "aeStop", scope: !1, file: !1, line: 82, type: !204, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !224)
!224 = !{!225}
!225 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !223, file: !1, line: 82, type: !36)
!226 = !DILocation(line: 0, scope: !223)
!227 = !DILocation(line: 83, column: 16, scope: !223)
!228 = !DILocation(line: 83, column: 21, scope: !223)
!229 = !DILocation(line: 84, column: 1, scope: !223)
!230 = distinct !DISubprogram(name: "aeCreateFileEvent", scope: !1, file: !1, line: 86, type: !231, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !233)
!231 = !DISubroutineType(types: !232)
!232 = !{!27, !36, !27, !27, !51, !23}
!233 = !{!234, !235, !236, !237, !238, !239}
!234 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !230, file: !1, line: 86, type: !36)
!235 = !DILocalVariable(name: "fd", arg: 2, scope: !230, file: !1, line: 86, type: !27)
!236 = !DILocalVariable(name: "mask", arg: 3, scope: !230, file: !1, line: 86, type: !27)
!237 = !DILocalVariable(name: "proc", arg: 4, scope: !230, file: !1, line: 87, type: !51)
!238 = !DILocalVariable(name: "clientData", arg: 5, scope: !230, file: !1, line: 87, type: !23)
!239 = !DILocalVariable(name: "fe", scope: !230, file: !1, line: 90, type: !240)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!241 = !DILocation(line: 0, scope: !230)
!242 = !DILocation(line: 89, column: 12, scope: !243)
!243 = distinct !DILexicalBlock(scope: !230, file: !1, line: 89, column: 9)
!244 = !DILocation(line: 89, column: 9, scope: !230)
!245 = !DILocation(line: 90, column: 24, scope: !230)
!246 = !DILocation(line: 92, column: 9, scope: !247)
!247 = distinct !DILexicalBlock(scope: !230, file: !1, line: 92, column: 9)
!248 = !DILocation(line: 92, column: 44, scope: !247)
!249 = !DILocation(line: 92, column: 9, scope: !230)
!250 = !DILocation(line: 94, column: 9, scope: !230)
!251 = !DILocation(line: 94, column: 14, scope: !230)
!252 = !DILocation(line: 95, column: 14, scope: !253)
!253 = distinct !DILexicalBlock(scope: !230, file: !1, line: 95, column: 9)
!254 = !DILocation(line: 95, column: 9, scope: !230)
!255 = !DILocation(line: 95, column: 33, scope: !253)
!256 = !DILocation(line: 95, column: 43, scope: !253)
!257 = !{!137, !111, i64 8}
!258 = !DILocation(line: 95, column: 29, scope: !253)
!259 = !DILocation(line: 96, column: 14, scope: !260)
!260 = distinct !DILexicalBlock(scope: !230, file: !1, line: 96, column: 9)
!261 = !DILocation(line: 96, column: 9, scope: !230)
!262 = !DILocation(line: 96, column: 33, scope: !260)
!263 = !DILocation(line: 96, column: 43, scope: !260)
!264 = !{!137, !111, i64 16}
!265 = !DILocation(line: 96, column: 29, scope: !260)
!266 = !DILocation(line: 97, column: 9, scope: !230)
!267 = !DILocation(line: 97, column: 20, scope: !230)
!268 = !{!137, !111, i64 24}
!269 = !DILocation(line: 98, column: 25, scope: !270)
!270 = distinct !DILexicalBlock(scope: !230, file: !1, line: 98, column: 9)
!271 = !DILocation(line: 98, column: 12, scope: !270)
!272 = !DILocation(line: 98, column: 9, scope: !230)
!273 = !DILocation(line: 99, column: 26, scope: !270)
!274 = !DILocation(line: 99, column: 9, scope: !270)
!275 = !DILocation(line: 101, column: 1, scope: !230)
!276 = distinct !DISubprogram(name: "aeApiAddEvent", scope: !152, file: !152, line: 29, type: !277, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !279)
!277 = !DISubroutineType(types: !278)
!278 = !{!27, !36, !27, !27}
!279 = !{!280, !281, !282, !283, !284, !285}
!280 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !276, file: !152, line: 29, type: !36)
!281 = !DILocalVariable(name: "fd", arg: 2, scope: !276, file: !152, line: 29, type: !27)
!282 = !DILocalVariable(name: "mask", arg: 3, scope: !276, file: !152, line: 29, type: !27)
!283 = !DILocalVariable(name: "state", scope: !276, file: !152, line: 30, type: !158)
!284 = !DILocalVariable(name: "ee", scope: !276, file: !152, line: 31, type: !165)
!285 = !DILocalVariable(name: "op", scope: !276, file: !152, line: 34, type: !27)
!286 = !DILocation(line: 0, scope: !276)
!287 = !DILocation(line: 30, column: 36, scope: !276)
!288 = !DILocation(line: 31, column: 5, scope: !276)
!289 = !DILocation(line: 31, column: 24, scope: !276)
!290 = !DILocation(line: 34, column: 14, scope: !276)
!291 = !DILocation(line: 34, column: 36, scope: !276)
!292 = !DILocation(line: 38, column: 10, scope: !276)
!293 = !DILocation(line: 39, column: 14, scope: !294)
!294 = distinct !DILexicalBlock(scope: !276, file: !152, line: 39, column: 9)
!295 = !DILocation(line: 40, column: 9, scope: !276)
!296 = !DILocation(line: 37, column: 8, scope: !276)
!297 = !{!298, !107, i64 0}
!298 = !{!"epoll_event", !107, i64 0, !108, i64 4}
!299 = !DILocation(line: 34, column: 41, scope: !276)
!300 = !DILocation(line: 41, column: 8, scope: !276)
!301 = !DILocation(line: 41, column: 13, scope: !276)
!302 = !DILocation(line: 41, column: 17, scope: !276)
!303 = !{!108, !108, i64 0}
!304 = !DILocation(line: 42, column: 13, scope: !276)
!305 = !DILocation(line: 42, column: 16, scope: !276)
!306 = !DILocation(line: 43, column: 26, scope: !307)
!307 = distinct !DILexicalBlock(scope: !276, file: !152, line: 43, column: 9)
!308 = !DILocation(line: 43, column: 9, scope: !307)
!309 = !DILocation(line: 43, column: 42, scope: !307)
!310 = !DILocation(line: 45, column: 1, scope: !276)
!311 = distinct !DISubprogram(name: "aeDeleteFileEvent", scope: !1, file: !1, line: 103, type: !312, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !314)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !36, !27, !27}
!314 = !{!315, !316, !317, !318, !319}
!315 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !311, file: !1, line: 103, type: !36)
!316 = !DILocalVariable(name: "fd", arg: 2, scope: !311, file: !1, line: 103, type: !27)
!317 = !DILocalVariable(name: "mask", arg: 3, scope: !311, file: !1, line: 103, type: !27)
!318 = !DILocalVariable(name: "fe", scope: !311, file: !1, line: 106, type: !240)
!319 = !DILocalVariable(name: "j", scope: !320, file: !1, line: 112, type: !27)
!320 = distinct !DILexicalBlock(scope: !321, file: !1, line: 110, column: 56)
!321 = distinct !DILexicalBlock(scope: !311, file: !1, line: 110, column: 9)
!322 = !DILocation(line: 0, scope: !311)
!323 = !DILocation(line: 105, column: 12, scope: !324)
!324 = distinct !DILexicalBlock(scope: !311, file: !1, line: 105, column: 9)
!325 = !DILocation(line: 105, column: 9, scope: !311)
!326 = !DILocation(line: 106, column: 24, scope: !311)
!327 = !DILocation(line: 108, column: 13, scope: !328)
!328 = distinct !DILexicalBlock(scope: !311, file: !1, line: 108, column: 9)
!329 = !DILocation(line: 108, column: 18, scope: !328)
!330 = !DILocation(line: 108, column: 9, scope: !311)
!331 = !DILocation(line: 109, column: 28, scope: !311)
!332 = !DILocation(line: 109, column: 25, scope: !311)
!333 = !DILocation(line: 109, column: 14, scope: !311)
!334 = !DILocation(line: 110, column: 26, scope: !321)
!335 = !DILocation(line: 110, column: 12, scope: !321)
!336 = !DILocation(line: 110, column: 32, scope: !321)
!337 = !DILocation(line: 114, column: 9, scope: !338)
!338 = distinct !DILexicalBlock(scope: !320, file: !1, line: 114, column: 9)
!339 = !DILocation(line: 0, scope: !338)
!340 = !DILocation(line: 0, scope: !320)
!341 = !DILocation(line: 114, column: 40, scope: !342)
!342 = distinct !DILexicalBlock(scope: !338, file: !1, line: 114, column: 9)
!343 = !DILocation(line: 115, column: 17, scope: !344)
!344 = distinct !DILexicalBlock(scope: !342, file: !1, line: 115, column: 17)
!345 = !DILocation(line: 115, column: 38, scope: !344)
!346 = !DILocation(line: 115, column: 43, scope: !344)
!347 = !DILocation(line: 115, column: 17, scope: !342)
!348 = distinct !{!348, !337, !349}
!349 = !DILocation(line: 115, column: 55, scope: !338)
!350 = !DILocation(line: 116, column: 26, scope: !320)
!351 = !DILocation(line: 117, column: 5, scope: !320)
!352 = !DILocation(line: 118, column: 5, scope: !311)
!353 = !DILocation(line: 119, column: 1, scope: !311)
!354 = distinct !DISubprogram(name: "aeApiDelEvent", scope: !152, file: !152, line: 47, type: !312, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !355)
!355 = !{!356, !357, !358, !359, !360, !361}
!356 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !354, file: !152, line: 47, type: !36)
!357 = !DILocalVariable(name: "fd", arg: 2, scope: !354, file: !152, line: 47, type: !27)
!358 = !DILocalVariable(name: "delmask", arg: 3, scope: !354, file: !152, line: 47, type: !27)
!359 = !DILocalVariable(name: "state", scope: !354, file: !152, line: 48, type: !158)
!360 = !DILocalVariable(name: "ee", scope: !354, file: !152, line: 49, type: !165)
!361 = !DILocalVariable(name: "mask", scope: !354, file: !152, line: 50, type: !27)
!362 = !DILocation(line: 0, scope: !354)
!363 = !DILocation(line: 48, column: 36, scope: !354)
!364 = !DILocation(line: 49, column: 5, scope: !354)
!365 = !DILocation(line: 49, column: 24, scope: !354)
!366 = !DILocation(line: 50, column: 16, scope: !354)
!367 = !DILocation(line: 50, column: 38, scope: !354)
!368 = !DILocation(line: 50, column: 46, scope: !354)
!369 = !DILocation(line: 50, column: 43, scope: !354)
!370 = !DILocation(line: 52, column: 8, scope: !354)
!371 = !DILocation(line: 53, column: 14, scope: !372)
!372 = distinct !DILexicalBlock(scope: !354, file: !152, line: 53, column: 9)
!373 = !DILocation(line: 54, column: 14, scope: !374)
!374 = distinct !DILexicalBlock(scope: !354, file: !152, line: 54, column: 9)
!375 = !DILocation(line: 54, column: 9, scope: !354)
!376 = !DILocation(line: 54, column: 39, scope: !374)
!377 = !DILocation(line: 55, column: 8, scope: !354)
!378 = !DILocation(line: 55, column: 13, scope: !354)
!379 = !DILocation(line: 55, column: 17, scope: !354)
!380 = !DILocation(line: 56, column: 13, scope: !354)
!381 = !DILocation(line: 56, column: 16, scope: !354)
!382 = !DILocation(line: 57, column: 9, scope: !354)
!383 = !DILocation(line: 57, column: 14, scope: !384)
!384 = distinct !DILexicalBlock(scope: !354, file: !152, line: 57, column: 9)
!385 = !DILocation(line: 0, scope: !384)
!386 = !DILocation(line: 64, column: 1, scope: !354)
!387 = distinct !DISubprogram(name: "aeCreateTimeEvent", scope: !1, file: !1, line: 144, type: !388, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !390)
!388 = !DISubroutineType(types: !389)
!389 = !{!43, !36, !43, !76, !23, !81}
!390 = !{!391, !392, !393, !394, !395, !396, !397}
!391 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !387, file: !1, line: 144, type: !36)
!392 = !DILocalVariable(name: "milliseconds", arg: 2, scope: !387, file: !1, line: 144, type: !43)
!393 = !DILocalVariable(name: "proc", arg: 3, scope: !387, file: !1, line: 145, type: !76)
!394 = !DILocalVariable(name: "clientData", arg: 4, scope: !387, file: !1, line: 145, type: !23)
!395 = !DILocalVariable(name: "finalizerProc", arg: 5, scope: !387, file: !1, line: 146, type: !81)
!396 = !DILocalVariable(name: "id", scope: !387, file: !1, line: 148, type: !43)
!397 = !DILocalVariable(name: "te", scope: !387, file: !1, line: 149, type: !68)
!398 = !DILocation(line: 0, scope: !387)
!399 = !DILocation(line: 148, column: 31, scope: !387)
!400 = !DILocation(line: 148, column: 46, scope: !387)
!401 = !DILocation(line: 151, column: 10, scope: !387)
!402 = !DILocation(line: 152, column: 12, scope: !403)
!403 = distinct !DILexicalBlock(scope: !387, file: !1, line: 152, column: 9)
!404 = !DILocation(line: 152, column: 9, scope: !387)
!405 = !DILocation(line: 153, column: 9, scope: !387)
!406 = !DILocation(line: 153, column: 12, scope: !387)
!407 = !{!408, !110, i64 0}
!408 = !{!"aeTimeEvent", !110, i64 0, !409, i64 8, !409, i64 16, !111, i64 24, !111, i64 32, !111, i64 40, !111, i64 48}
!409 = !{!"long", !108, i64 0}
!410 = !DILocation(line: 154, column: 46, scope: !387)
!411 = !DILocation(line: 154, column: 60, scope: !387)
!412 = !DILocation(line: 154, column: 5, scope: !387)
!413 = !DILocation(line: 155, column: 9, scope: !387)
!414 = !DILocation(line: 155, column: 18, scope: !387)
!415 = !{!408, !111, i64 24}
!416 = !DILocation(line: 156, column: 9, scope: !387)
!417 = !DILocation(line: 156, column: 23, scope: !387)
!418 = !{!408, !111, i64 32}
!419 = !DILocation(line: 157, column: 9, scope: !387)
!420 = !DILocation(line: 157, column: 20, scope: !387)
!421 = !{!408, !111, i64 40}
!422 = !DILocation(line: 158, column: 27, scope: !387)
!423 = !DILocation(line: 158, column: 9, scope: !387)
!424 = !DILocation(line: 158, column: 14, scope: !387)
!425 = !{!408, !111, i64 48}
!426 = !DILocation(line: 159, column: 30, scope: !387)
!427 = !DILocation(line: 160, column: 5, scope: !387)
!428 = !DILocation(line: 161, column: 1, scope: !387)
!429 = distinct !DISubprogram(name: "aeAddMillisecondsToNow", scope: !1, file: !1, line: 130, type: !430, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !433)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !43, !432, !432}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!433 = !{!434, !435, !436, !437, !438, !439, !440}
!434 = !DILocalVariable(name: "milliseconds", arg: 1, scope: !429, file: !1, line: 130, type: !43)
!435 = !DILocalVariable(name: "sec", arg: 2, scope: !429, file: !1, line: 130, type: !432)
!436 = !DILocalVariable(name: "ms", arg: 3, scope: !429, file: !1, line: 130, type: !432)
!437 = !DILocalVariable(name: "cur_sec", scope: !429, file: !1, line: 131, type: !26)
!438 = !DILocalVariable(name: "cur_ms", scope: !429, file: !1, line: 131, type: !26)
!439 = !DILocalVariable(name: "when_sec", scope: !429, file: !1, line: 131, type: !26)
!440 = !DILocalVariable(name: "when_ms", scope: !429, file: !1, line: 131, type: !26)
!441 = !DILocation(line: 0, scope: !429)
!442 = !DILocation(line: 131, column: 5, scope: !429)
!443 = !DILocation(line: 133, column: 5, scope: !429)
!444 = !DILocation(line: 134, column: 16, scope: !429)
!445 = !{!409, !409, i64 0}
!446 = !DILocation(line: 134, column: 38, scope: !429)
!447 = !DILocation(line: 134, column: 24, scope: !429)
!448 = !DILocation(line: 135, column: 15, scope: !429)
!449 = !DILocation(line: 135, column: 36, scope: !429)
!450 = !DILocation(line: 135, column: 22, scope: !429)
!451 = !DILocation(line: 136, column: 17, scope: !452)
!452 = distinct !DILexicalBlock(scope: !429, file: !1, line: 136, column: 9)
!453 = !DILocation(line: 136, column: 9, scope: !429)
!454 = !DILocation(line: 140, column: 10, scope: !429)
!455 = !DILocation(line: 141, column: 9, scope: !429)
!456 = !DILocation(line: 142, column: 1, scope: !429)
!457 = distinct !DISubprogram(name: "aeDeleteTimeEvent", scope: !1, file: !1, line: 163, type: !458, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !460)
!458 = !DISubroutineType(types: !459)
!459 = !{!27, !36, !43}
!460 = !{!461, !462, !463, !464}
!461 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !457, file: !1, line: 163, type: !36)
!462 = !DILocalVariable(name: "id", arg: 2, scope: !457, file: !1, line: 163, type: !43)
!463 = !DILocalVariable(name: "te", scope: !457, file: !1, line: 165, type: !68)
!464 = !DILocalVariable(name: "prev", scope: !457, file: !1, line: 165, type: !68)
!465 = !DILocation(line: 0, scope: !457)
!466 = !DILocation(line: 167, column: 21, scope: !457)
!467 = !{!111, !111, i64 0}
!468 = !DILocation(line: 168, column: 5, scope: !457)
!469 = !DILocation(line: 169, column: 17, scope: !470)
!470 = distinct !DILexicalBlock(scope: !471, file: !1, line: 169, column: 13)
!471 = distinct !DILexicalBlock(scope: !457, file: !1, line: 168, column: 15)
!472 = !DILocation(line: 169, column: 20, scope: !470)
!473 = !DILocation(line: 169, column: 13, scope: !471)
!474 = distinct !{!474, !468, !475}
!475 = !DILocation(line: 181, column: 5, scope: !457)
!476 = !DILocation(line: 170, column: 22, scope: !477)
!477 = distinct !DILexicalBlock(scope: !478, file: !1, line: 170, column: 17)
!478 = distinct !DILexicalBlock(scope: !470, file: !1, line: 169, column: 27)
!479 = !DILocation(line: 0, scope: !477)
!480 = !DILocation(line: 170, column: 17, scope: !478)
!481 = !DILocation(line: 174, column: 21, scope: !482)
!482 = distinct !DILexicalBlock(scope: !478, file: !1, line: 174, column: 17)
!483 = !DILocation(line: 174, column: 17, scope: !482)
!484 = !DILocation(line: 174, column: 17, scope: !478)
!485 = !DILocation(line: 175, column: 50, scope: !482)
!486 = !DILocation(line: 175, column: 17, scope: !482)
!487 = !DILocation(line: 176, column: 19, scope: !478)
!488 = !DILocation(line: 176, column: 13, scope: !478)
!489 = !DILocation(line: 177, column: 13, scope: !478)
!490 = !DILocation(line: 180, column: 18, scope: !471)
!491 = !DILocation(line: 183, column: 1, scope: !457)
!492 = distinct !DISubprogram(name: "aeProcessEvents", scope: !1, file: !1, line: 275, type: !493, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !495)
!493 = !DISubroutineType(types: !494)
!494 = !{!27, !36, !27}
!495 = !{!496, !497, !498, !499, !500, !503, !504, !512, !514, !517, !518, !522, !523, !524}
!496 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !492, file: !1, line: 275, type: !36)
!497 = !DILocalVariable(name: "flags", arg: 2, scope: !492, file: !1, line: 275, type: !27)
!498 = !DILocalVariable(name: "processed", scope: !492, file: !1, line: 277, type: !27)
!499 = !DILocalVariable(name: "numevents", scope: !492, file: !1, line: 277, type: !27)
!500 = !DILocalVariable(name: "j", scope: !501, file: !1, line: 288, type: !27)
!501 = distinct !DILexicalBlock(scope: !502, file: !1, line: 287, column: 64)
!502 = distinct !DILexicalBlock(scope: !492, file: !1, line: 286, column: 9)
!503 = !DILocalVariable(name: "shortest", scope: !501, file: !1, line: 289, type: !68)
!504 = !DILocalVariable(name: "tv", scope: !501, file: !1, line: 290, type: !505)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !506, line: 8, size: 128, elements: !507)
!506 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "7798c68081a8161421218378689a8d48")
!507 = !{!508, !510}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !505, file: !506, line: 10, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !171, line: 160, baseType: !26)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !505, file: !506, line: 11, baseType: !511, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !171, line: 162, baseType: !26)
!512 = !DILocalVariable(name: "tvp", scope: !501, file: !1, line: 290, type: !513)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!514 = !DILocalVariable(name: "now_sec", scope: !515, file: !1, line: 295, type: !26)
!515 = distinct !DILexicalBlock(scope: !516, file: !1, line: 294, column: 23)
!516 = distinct !DILexicalBlock(scope: !501, file: !1, line: 294, column: 13)
!517 = !DILocalVariable(name: "now_ms", scope: !515, file: !1, line: 295, type: !26)
!518 = !DILocalVariable(name: "fe", scope: !519, file: !1, line: 325, type: !240)
!519 = distinct !DILexicalBlock(scope: !520, file: !1, line: 324, column: 41)
!520 = distinct !DILexicalBlock(scope: !521, file: !1, line: 324, column: 9)
!521 = distinct !DILexicalBlock(scope: !501, file: !1, line: 324, column: 9)
!522 = !DILocalVariable(name: "mask", scope: !519, file: !1, line: 326, type: !27)
!523 = !DILocalVariable(name: "fd", scope: !519, file: !1, line: 327, type: !27)
!524 = !DILocalVariable(name: "rfired", scope: !519, file: !1, line: 328, type: !27)
!525 = !DILocation(line: 0, scope: !492)
!526 = !DILocation(line: 280, column: 17, scope: !527)
!527 = distinct !DILexicalBlock(scope: !492, file: !1, line: 280, column: 9)
!528 = !DILocation(line: 280, column: 35, scope: !527)
!529 = !DILocation(line: 286, column: 20, scope: !502)
!530 = !DILocation(line: 286, column: 26, scope: !502)
!531 = !DILocation(line: 286, column: 32, scope: !502)
!532 = !DILocation(line: 0, scope: !501)
!533 = !DILocation(line: 290, column: 9, scope: !501)
!534 = !DILocation(line: 290, column: 24, scope: !501)
!535 = !DILocation(line: 292, column: 36, scope: !536)
!536 = distinct !DILexicalBlock(scope: !501, file: !1, line: 292, column: 13)
!537 = !DILocation(line: 293, column: 24, scope: !536)
!538 = !DILocation(line: 294, column: 13, scope: !516)
!539 = !DILocation(line: 294, column: 13, scope: !501)
!540 = !DILocation(line: 295, column: 13, scope: !515)
!541 = !DILocation(line: 0, scope: !515)
!542 = !DILocation(line: 299, column: 13, scope: !515)
!543 = !DILocation(line: 301, column: 37, scope: !515)
!544 = !{!408, !409, i64 8}
!545 = !DILocation(line: 301, column: 48, scope: !515)
!546 = !DILocation(line: 301, column: 46, scope: !515)
!547 = !DILocation(line: 301, column: 18, scope: !515)
!548 = !DILocation(line: 301, column: 25, scope: !515)
!549 = !{!550, !409, i64 0}
!550 = !{!"timeval", !409, i64 0, !409, i64 8}
!551 = !DILocation(line: 302, column: 27, scope: !552)
!552 = distinct !DILexicalBlock(scope: !515, file: !1, line: 302, column: 17)
!553 = !{!408, !409, i64 16}
!554 = !DILocation(line: 302, column: 37, scope: !552)
!555 = !DILocation(line: 302, column: 35, scope: !552)
!556 = !DILocation(line: 302, column: 17, scope: !515)
!557 = !DILocation(line: 303, column: 51, scope: !558)
!558 = distinct !DILexicalBlock(scope: !552, file: !1, line: 302, column: 45)
!559 = !DILocation(line: 304, column: 29, scope: !558)
!560 = !DILocation(line: 305, column: 13, scope: !558)
!561 = !DILocation(line: 308, column: 22, scope: !562)
!562 = distinct !DILexicalBlock(scope: !515, file: !1, line: 308, column: 17)
!563 = !DILocation(line: 0, scope: !552)
!564 = !DILocation(line: 303, column: 22, scope: !558)
!565 = !DILocation(line: 303, column: 30, scope: !558)
!566 = !DILocation(line: 308, column: 29, scope: !562)
!567 = !DILocation(line: 308, column: 17, scope: !515)
!568 = !DILocation(line: 308, column: 46, scope: !562)
!569 = !DILocation(line: 308, column: 34, scope: !562)
!570 = !DILocation(line: 309, column: 30, scope: !571)
!571 = distinct !DILexicalBlock(scope: !515, file: !1, line: 309, column: 17)
!572 = !DILocation(line: 309, column: 17, scope: !515)
!573 = !DILocation(line: 309, column: 48, scope: !571)
!574 = !{!550, !409, i64 8}
!575 = !DILocation(line: 309, column: 35, scope: !571)
!576 = !DILocation(line: 310, column: 9, scope: !516)
!577 = !DILocation(line: 310, column: 9, scope: !515)
!578 = !DILocation(line: 314, column: 17, scope: !579)
!579 = distinct !DILexicalBlock(scope: !516, file: !1, line: 310, column: 16)
!580 = !DILocation(line: 315, column: 27, scope: !581)
!581 = distinct !DILexicalBlock(scope: !582, file: !1, line: 314, column: 39)
!582 = distinct !DILexicalBlock(scope: !579, file: !1, line: 314, column: 17)
!583 = !DILocation(line: 317, column: 13, scope: !581)
!584 = !DILocation(line: 0, scope: !516)
!585 = !DILocation(line: 323, column: 21, scope: !501)
!586 = !DILocation(line: 324, column: 23, scope: !520)
!587 = !DILocation(line: 324, column: 9, scope: !521)
!588 = !DILocation(line: 325, column: 70, scope: !519)
!589 = !{!590, !107, i64 0}
!590 = !{!"aeFiredEvent", !107, i64 0, !107, i64 4}
!591 = !DILocation(line: 325, column: 32, scope: !519)
!592 = !DILocation(line: 0, scope: !519)
!593 = !DILocation(line: 326, column: 44, scope: !519)
!594 = !{!590, !107, i64 4}
!595 = !DILocation(line: 333, column: 21, scope: !596)
!596 = distinct !DILexicalBlock(scope: !519, file: !1, line: 333, column: 17)
!597 = !DILocation(line: 333, column: 26, scope: !596)
!598 = !DILocation(line: 333, column: 33, scope: !596)
!599 = !DILocation(line: 333, column: 17, scope: !519)
!600 = !DILocation(line: 337, column: 26, scope: !601)
!601 = distinct !DILexicalBlock(scope: !519, file: !1, line: 337, column: 17)
!602 = !DILocation(line: 337, column: 33, scope: !601)
!603 = !DILocation(line: 337, column: 17, scope: !519)
!604 = !DILocation(line: 339, column: 25, scope: !605)
!605 = distinct !DILexicalBlock(scope: !606, file: !1, line: 338, column: 21)
!606 = distinct !DILexicalBlock(scope: !601, file: !1, line: 337, column: 48)
!607 = !DILocation(line: 335, column: 21, scope: !608)
!608 = distinct !DILexicalBlock(scope: !596, file: !1, line: 333, column: 48)
!609 = !DILocation(line: 335, column: 48, scope: !608)
!610 = !DILocation(line: 335, column: 17, scope: !608)
!611 = !DILocation(line: 337, column: 21, scope: !601)
!612 = !DILocation(line: 338, column: 36, scope: !605)
!613 = !DILocation(line: 338, column: 53, scope: !605)
!614 = !DILocation(line: 338, column: 46, scope: !605)
!615 = !DILocation(line: 338, column: 21, scope: !606)
!616 = !DILocation(line: 339, column: 52, scope: !605)
!617 = !DILocation(line: 339, column: 21, scope: !605)
!618 = !DILocation(line: 324, column: 37, scope: !520)
!619 = distinct !{!619, !587, !620}
!620 = !DILocation(line: 342, column: 9, scope: !521)
!621 = !DILocation(line: 343, column: 5, scope: !502)
!622 = !DILocation(line: 343, column: 5, scope: !501)
!623 = !DILocation(line: 277, column: 9, scope: !492)
!624 = !DILocation(line: 345, column: 9, scope: !492)
!625 = !DILocation(line: 346, column: 22, scope: !626)
!626 = distinct !DILexicalBlock(scope: !492, file: !1, line: 345, column: 9)
!627 = !DILocation(line: 346, column: 19, scope: !626)
!628 = !DILocation(line: 346, column: 9, scope: !626)
!629 = !DILocation(line: 349, column: 1, scope: !492)
!630 = distinct !DISubprogram(name: "aeSearchNearestTimer", scope: !1, file: !1, line: 196, type: !631, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !633)
!631 = !DISubroutineType(types: !632)
!632 = !{!68, !36}
!633 = !{!634, !635, !636}
!634 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !630, file: !1, line: 196, type: !36)
!635 = !DILocalVariable(name: "te", scope: !630, file: !1, line: 198, type: !68)
!636 = !DILocalVariable(name: "nearest", scope: !630, file: !1, line: 199, type: !68)
!637 = !DILocation(line: 0, scope: !630)
!638 = !DILocation(line: 198, column: 34, scope: !630)
!639 = !DILocation(line: 201, column: 5, scope: !630)
!640 = !DILocation(line: 202, column: 14, scope: !641)
!641 = distinct !DILexicalBlock(scope: !642, file: !1, line: 202, column: 13)
!642 = distinct !DILexicalBlock(scope: !630, file: !1, line: 201, column: 15)
!643 = !DILocation(line: 202, column: 22, scope: !641)
!644 = !DILocation(line: 202, column: 29, scope: !641)
!645 = !DILocation(line: 202, column: 49, scope: !641)
!646 = !DILocation(line: 202, column: 38, scope: !641)
!647 = !DILocation(line: 202, column: 58, scope: !641)
!648 = !DILocation(line: 203, column: 31, scope: !641)
!649 = !DILocation(line: 203, column: 52, scope: !641)
!650 = !DILocation(line: 204, column: 22, scope: !641)
!651 = !DILocation(line: 204, column: 41, scope: !641)
!652 = !DILocation(line: 204, column: 30, scope: !641)
!653 = !DILocation(line: 202, column: 13, scope: !642)
!654 = !DILocation(line: 205, column: 13, scope: !641)
!655 = !DILocation(line: 206, column: 18, scope: !642)
!656 = distinct !{!656, !639, !657}
!657 = !DILocation(line: 207, column: 5, scope: !630)
!658 = !DILocation(line: 208, column: 5, scope: !630)
!659 = distinct !DISubprogram(name: "aeGetTime", scope: !1, file: !1, line: 121, type: !660, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !662)
!660 = !DISubroutineType(types: !661)
!661 = !{null, !432, !432}
!662 = !{!663, !664, !665}
!663 = !DILocalVariable(name: "seconds", arg: 1, scope: !659, file: !1, line: 121, type: !432)
!664 = !DILocalVariable(name: "milliseconds", arg: 2, scope: !659, file: !1, line: 121, type: !432)
!665 = !DILocalVariable(name: "tv", scope: !659, file: !1, line: 123, type: !505)
!666 = !DILocation(line: 0, scope: !659)
!667 = !DILocation(line: 123, column: 5, scope: !659)
!668 = !DILocation(line: 123, column: 20, scope: !659)
!669 = !DILocation(line: 125, column: 5, scope: !659)
!670 = !DILocation(line: 126, column: 19, scope: !659)
!671 = !DILocation(line: 126, column: 14, scope: !659)
!672 = !DILocation(line: 127, column: 24, scope: !659)
!673 = !DILocation(line: 127, column: 31, scope: !659)
!674 = !DILocation(line: 127, column: 19, scope: !659)
!675 = !DILocation(line: 128, column: 1, scope: !659)
!676 = distinct !DISubprogram(name: "aeApiPoll", scope: !152, file: !152, line: 66, type: !677, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !679)
!677 = !DISubroutineType(types: !678)
!678 = !{!27, !36, !513}
!679 = !{!680, !681, !682, !683, !684, !685, !688, !692}
!680 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !676, file: !152, line: 66, type: !36)
!681 = !DILocalVariable(name: "tvp", arg: 2, scope: !676, file: !152, line: 66, type: !513)
!682 = !DILocalVariable(name: "state", scope: !676, file: !152, line: 67, type: !158)
!683 = !DILocalVariable(name: "retval", scope: !676, file: !152, line: 68, type: !27)
!684 = !DILocalVariable(name: "numevents", scope: !676, file: !152, line: 68, type: !27)
!685 = !DILocalVariable(name: "j", scope: !686, file: !152, line: 73, type: !27)
!686 = distinct !DILexicalBlock(scope: !687, file: !152, line: 72, column: 21)
!687 = distinct !DILexicalBlock(scope: !676, file: !152, line: 72, column: 9)
!688 = !DILocalVariable(name: "mask", scope: !689, file: !152, line: 77, type: !27)
!689 = distinct !DILexicalBlock(scope: !690, file: !152, line: 76, column: 41)
!690 = distinct !DILexicalBlock(scope: !691, file: !152, line: 76, column: 9)
!691 = distinct !DILexicalBlock(scope: !686, file: !152, line: 76, column: 9)
!692 = !DILocalVariable(name: "e", scope: !689, file: !152, line: 78, type: !693)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!694 = !DILocation(line: 0, scope: !676)
!695 = !DILocation(line: 67, column: 36, scope: !676)
!696 = !DILocation(line: 70, column: 32, scope: !676)
!697 = !DILocation(line: 70, column: 37, scope: !676)
!698 = !DILocation(line: 71, column: 13, scope: !676)
!699 = !DILocation(line: 71, column: 25, scope: !676)
!700 = !DILocation(line: 71, column: 31, scope: !676)
!701 = !DILocation(line: 71, column: 44, scope: !676)
!702 = !DILocation(line: 71, column: 51, scope: !676)
!703 = !DILocation(line: 71, column: 37, scope: !676)
!704 = !DILocation(line: 70, column: 14, scope: !676)
!705 = !DILocation(line: 72, column: 16, scope: !687)
!706 = !DILocation(line: 72, column: 9, scope: !676)
!707 = !DILocation(line: 76, column: 23, scope: !690)
!708 = !DILocation(line: 76, column: 9, scope: !691)
!709 = !DILocation(line: 76, column: 37, scope: !690)
!710 = !{!711}
!711 = distinct !{!711, !712}
!712 = distinct !{!712, !"LVerDomain"}
!713 = !DILocation(line: 81, column: 17, scope: !689)
!714 = !{!107, !107, i64 0}
!715 = distinct !{!715, !708, !716, !717}
!716 = !DILocation(line: 84, column: 9, scope: !691)
!717 = !{!"llvm.loop.isvectorized", i32 1}
!718 = !DILocation(line: 0, scope: !686)
!719 = !DILocation(line: 0, scope: !689)
!720 = !DILocation(line: 80, column: 20, scope: !721)
!721 = distinct !DILexicalBlock(scope: !689, file: !152, line: 80, column: 17)
!722 = !DILocation(line: 80, column: 27, scope: !721)
!723 = !DILocation(line: 82, column: 41, scope: !689)
!724 = !DILocation(line: 82, column: 46, scope: !689)
!725 = !DILocation(line: 82, column: 33, scope: !689)
!726 = !DILocation(line: 82, column: 36, scope: !689)
!727 = !DILocation(line: 83, column: 33, scope: !689)
!728 = !DILocation(line: 83, column: 38, scope: !689)
!729 = distinct !{!729, !708, !716, !717}
!730 = !DILocation(line: 86, column: 5, scope: !676)
!731 = distinct !DISubprogram(name: "processTimeEvents", scope: !1, file: !1, line: 212, type: !153, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !732)
!732 = !{!733, !734, !735, !736, !737, !739, !740, !741}
!733 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !731, file: !1, line: 212, type: !36)
!734 = !DILocalVariable(name: "processed", scope: !731, file: !1, line: 213, type: !27)
!735 = !DILocalVariable(name: "te", scope: !731, file: !1, line: 214, type: !68)
!736 = !DILocalVariable(name: "maxId", scope: !731, file: !1, line: 215, type: !43)
!737 = !DILocalVariable(name: "now_sec", scope: !738, file: !1, line: 220, type: !26)
!738 = distinct !DILexicalBlock(scope: !731, file: !1, line: 219, column: 15)
!739 = !DILocalVariable(name: "now_ms", scope: !738, file: !1, line: 220, type: !26)
!740 = !DILocalVariable(name: "id", scope: !738, file: !1, line: 221, type: !43)
!741 = !DILocalVariable(name: "retval", scope: !742, file: !1, line: 231, type: !27)
!742 = distinct !DILexicalBlock(scope: !743, file: !1, line: 230, column: 9)
!743 = distinct !DILexicalBlock(scope: !738, file: !1, line: 228, column: 13)
!744 = !DILocation(line: 0, scope: !731)
!745 = !DILocation(line: 217, column: 21, scope: !731)
!746 = !DILocation(line: 218, column: 24, scope: !731)
!747 = !DILocation(line: 219, column: 5, scope: !731)
!748 = !DILocation(line: 220, column: 9, scope: !738)
!749 = !DILocation(line: 223, column: 17, scope: !750)
!750 = distinct !DILexicalBlock(scope: !738, file: !1, line: 223, column: 13)
!751 = !DILocation(line: 223, column: 20, scope: !750)
!752 = !DILocation(line: 223, column: 13, scope: !738)
!753 = !DILocation(line: 224, column: 22, scope: !754)
!754 = distinct !DILexicalBlock(scope: !750, file: !1, line: 223, column: 29)
!755 = !DILocation(line: 225, column: 13, scope: !754)
!756 = distinct !{!756, !747, !757}
!757 = !DILocation(line: 258, column: 5, scope: !731)
!758 = !DILocation(line: 0, scope: !738)
!759 = !DILocation(line: 227, column: 9, scope: !738)
!760 = !DILocation(line: 228, column: 13, scope: !743)
!761 = !DILocation(line: 228, column: 27, scope: !743)
!762 = !DILocation(line: 228, column: 21, scope: !743)
!763 = !DILocation(line: 228, column: 36, scope: !743)
!764 = !DILocation(line: 229, column: 22, scope: !743)
!765 = !DILocation(line: 229, column: 38, scope: !743)
!766 = !DILocation(line: 229, column: 41, scope: !743)
!767 = !DILocation(line: 229, column: 55, scope: !743)
!768 = !DILocation(line: 229, column: 48, scope: !743)
!769 = !DILocation(line: 228, column: 13, scope: !738)
!770 = !DILocation(line: 233, column: 22, scope: !742)
!771 = !DILocation(line: 234, column: 26, scope: !742)
!772 = !DILocation(line: 234, column: 54, scope: !742)
!773 = !DILocation(line: 234, column: 22, scope: !742)
!774 = !DILocation(line: 0, scope: !742)
!775 = !DILocation(line: 235, column: 22, scope: !742)
!776 = !DILocation(line: 249, column: 24, scope: !777)
!777 = distinct !DILexicalBlock(scope: !742, file: !1, line: 249, column: 17)
!778 = !DILocation(line: 249, column: 17, scope: !742)
!779 = !DILocation(line: 250, column: 40, scope: !780)
!780 = distinct !DILexicalBlock(scope: !777, file: !1, line: 249, column: 38)
!781 = !DILocation(line: 250, column: 66, scope: !780)
!782 = !DILocation(line: 250, column: 17, scope: !780)
!783 = !DILocation(line: 251, column: 13, scope: !780)
!784 = !DILocation(line: 252, column: 17, scope: !785)
!785 = distinct !DILexicalBlock(scope: !777, file: !1, line: 251, column: 20)
!786 = !DILocation(line: 256, column: 22, scope: !787)
!787 = distinct !DILexicalBlock(scope: !743, file: !1, line: 255, column: 16)
!788 = !DILocation(line: 213, column: 9, scope: !731)
!789 = !DILocation(line: 259, column: 5, scope: !731)
!790 = distinct !DISubprogram(name: "aeWait", scope: !1, file: !1, line: 353, type: !791, scopeLine: 353, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !793)
!791 = !DISubroutineType(types: !792)
!792 = !{!27, !27, !27, !43}
!793 = !{!794, !795, !796, !797, !798, !806, !807, !808, !809, !810, !812, !813, !815, !816, !818}
!794 = !DILocalVariable(name: "fd", arg: 1, scope: !790, file: !1, line: 353, type: !27)
!795 = !DILocalVariable(name: "mask", arg: 2, scope: !790, file: !1, line: 353, type: !27)
!796 = !DILocalVariable(name: "milliseconds", arg: 3, scope: !790, file: !1, line: 353, type: !43)
!797 = !DILocalVariable(name: "tv", scope: !790, file: !1, line: 354, type: !505)
!798 = !DILocalVariable(name: "rfds", scope: !790, file: !1, line: 355, type: !799)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "fd_set", file: !25, line: 70, baseType: !800)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 59, size: 1024, elements: !801)
!801 = !{!802}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "__fds_bits", scope: !800, file: !25, line: 67, baseType: !803, size: 1024)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 1024, elements: !804)
!804 = !{!805}
!805 = !DISubrange(count: 16)
!806 = !DILocalVariable(name: "wfds", scope: !790, file: !1, line: 355, type: !799)
!807 = !DILocalVariable(name: "efds", scope: !790, file: !1, line: 355, type: !799)
!808 = !DILocalVariable(name: "retmask", scope: !790, file: !1, line: 356, type: !27)
!809 = !DILocalVariable(name: "retval", scope: !790, file: !1, line: 356, type: !27)
!810 = !DILocalVariable(name: "__d0", scope: !811, file: !1, line: 360, type: !27)
!811 = distinct !DILexicalBlock(scope: !790, file: !1, line: 360, column: 5)
!812 = !DILocalVariable(name: "__d1", scope: !811, file: !1, line: 360, type: !27)
!813 = !DILocalVariable(name: "__d0", scope: !814, file: !1, line: 361, type: !27)
!814 = distinct !DILexicalBlock(scope: !790, file: !1, line: 361, column: 5)
!815 = !DILocalVariable(name: "__d1", scope: !814, file: !1, line: 361, type: !27)
!816 = !DILocalVariable(name: "__d0", scope: !817, file: !1, line: 362, type: !27)
!817 = distinct !DILexicalBlock(scope: !790, file: !1, line: 362, column: 5)
!818 = !DILocalVariable(name: "__d1", scope: !817, file: !1, line: 362, type: !27)
!819 = !DILocation(line: 0, scope: !790)
!820 = !DILocation(line: 354, column: 5, scope: !790)
!821 = !DILocation(line: 354, column: 20, scope: !790)
!822 = !DILocation(line: 355, column: 5, scope: !790)
!823 = !DILocation(line: 355, column: 12, scope: !790)
!824 = !DILocation(line: 355, column: 18, scope: !790)
!825 = !DILocation(line: 355, column: 24, scope: !790)
!826 = !DILocation(line: 358, column: 29, scope: !790)
!827 = !DILocation(line: 358, column: 8, scope: !790)
!828 = !DILocation(line: 358, column: 15, scope: !790)
!829 = !DILocation(line: 359, column: 31, scope: !790)
!830 = !DILocation(line: 359, column: 37, scope: !790)
!831 = !DILocation(line: 359, column: 8, scope: !790)
!832 = !DILocation(line: 359, column: 16, scope: !790)
!833 = !DILocation(line: 360, column: 5, scope: !811)
!834 = !{i64 2147858578}
!835 = !DILocation(line: 0, scope: !811)
!836 = !DILocation(line: 361, column: 5, scope: !814)
!837 = !{i64 2147858977}
!838 = !DILocation(line: 0, scope: !814)
!839 = !DILocation(line: 362, column: 5, scope: !817)
!840 = !{i64 2147859376}
!841 = !DILocation(line: 0, scope: !817)
!842 = !DILocation(line: 364, column: 14, scope: !843)
!843 = distinct !DILexicalBlock(scope: !790, file: !1, line: 364, column: 9)
!844 = !DILocation(line: 364, column: 9, scope: !790)
!845 = !DILocation(line: 364, column: 29, scope: !843)
!846 = !DILocation(line: 365, column: 14, scope: !847)
!847 = distinct !DILexicalBlock(scope: !790, file: !1, line: 365, column: 9)
!848 = !DILocation(line: 365, column: 9, scope: !790)
!849 = !DILocation(line: 365, column: 29, scope: !847)
!850 = !DILocation(line: 366, column: 28, scope: !851)
!851 = distinct !DILexicalBlock(scope: !790, file: !1, line: 366, column: 9)
!852 = !DILocation(line: 366, column: 19, scope: !851)
!853 = !DILocation(line: 366, column: 59, scope: !851)
!854 = !DILocation(line: 366, column: 9, scope: !790)
!855 = !DILocation(line: 367, column: 13, scope: !856)
!856 = distinct !DILexicalBlock(scope: !857, file: !1, line: 367, column: 13)
!857 = distinct !DILexicalBlock(scope: !851, file: !1, line: 366, column: 64)
!858 = !DILocation(line: 367, column: 13, scope: !857)
!859 = !DILocation(line: 368, column: 13, scope: !860)
!860 = distinct !DILexicalBlock(scope: !857, file: !1, line: 368, column: 13)
!861 = !DILocation(line: 368, column: 13, scope: !857)
!862 = !DILocation(line: 369, column: 9, scope: !857)
!863 = !DILocation(line: 0, scope: !851)
!864 = !DILocation(line: 373, column: 1, scope: !790)
!865 = !DISubprogram(name: "select", scope: !25, file: !25, line: 101, type: !866, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !150)
!866 = !DISubroutineType(types: !867)
!867 = !{!27, !27, !868, !868, !868, !870}
!868 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !869)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !513)
!871 = distinct !DISubprogram(name: "aeMain", scope: !1, file: !1, line: 375, type: !204, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !872)
!872 = !{!873}
!873 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !871, file: !1, line: 375, type: !36)
!874 = !DILocation(line: 0, scope: !871)
!875 = !DILocation(line: 376, column: 16, scope: !871)
!876 = !DILocation(line: 376, column: 21, scope: !871)
!877 = !DILocation(line: 377, column: 5, scope: !871)
!878 = !DILocation(line: 378, column: 24, scope: !879)
!879 = distinct !DILexicalBlock(scope: !880, file: !1, line: 378, column: 13)
!880 = distinct !DILexicalBlock(scope: !871, file: !1, line: 377, column: 30)
!881 = !DILocation(line: 378, column: 36, scope: !879)
!882 = !DILocation(line: 378, column: 13, scope: !880)
!883 = !DILocation(line: 379, column: 13, scope: !879)
!884 = !DILocation(line: 380, column: 9, scope: !880)
!885 = !DILocation(line: 377, column: 24, scope: !871)
!886 = !DILocation(line: 377, column: 12, scope: !871)
!887 = distinct !{!887, !877, !888}
!888 = !DILocation(line: 381, column: 5, scope: !871)
!889 = !DILocation(line: 382, column: 1, scope: !871)
!890 = distinct !DISubprogram(name: "aeGetApiName", scope: !1, file: !1, line: 384, type: !891, scopeLine: 384, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !150)
!891 = !DISubroutineType(types: !892)
!892 = !{!893}
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!895 = !DILocation(line: 385, column: 5, scope: !890)
!896 = distinct !DISubprogram(name: "aeSetBeforeSleepProc", scope: !1, file: !1, line: 388, type: !897, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !899)
!897 = !DISubroutineType(types: !898)
!898 = !{null, !36, !91}
!899 = !{!900, !901}
!900 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !896, file: !1, line: 388, type: !36)
!901 = !DILocalVariable(name: "beforesleep", arg: 2, scope: !896, file: !1, line: 388, type: !91)
!902 = !DILocation(line: 0, scope: !896)
!903 = !DILocation(line: 389, column: 16, scope: !896)
!904 = !DILocation(line: 389, column: 28, scope: !896)
!905 = !DILocation(line: 390, column: 1, scope: !896)
!906 = !DISubprogram(name: "epoll_create", scope: !4, file: !4, line: 96, type: !907, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !150)
!907 = !DISubroutineType(types: !908)
!908 = !{!27, !27}
!909 = !DISubprogram(name: "close", scope: !910, file: !910, line: 353, type: !907, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !150)
!910 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "29bea3f2d65ec3bb874f389bfdfa2266")
!911 = !DISubprogram(name: "epoll_ctl", scope: !4, file: !4, line: 109, type: !912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !150)
!912 = !DISubroutineType(types: !913)
!913 = !{!27, !27, !27, !27, !693}
!914 = !DISubprogram(name: "gettimeofday", scope: !915, file: !915, line: 66, type: !916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !150)
!915 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/time.h", directory: "", checksumkind: CSK_MD5, checksum: "99ab902f1529d4d72694df20fbf7a8ec")
!916 = !DISubroutineType(types: !917)
!917 = !{!27, !870, !918}
!918 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !23)
!919 = !DISubprogram(name: "epoll_wait", scope: !4, file: !4, line: 123, type: !920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !150)
!920 = !DISubroutineType(types: !921)
!921 = !{!27, !27, !693, !27, !27}
