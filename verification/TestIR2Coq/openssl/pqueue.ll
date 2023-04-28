; ModuleID = 'ssl/pqueue.c'
source_filename = "ssl/pqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pitem_st = type { [8 x i8], i8*, %struct.pitem_st* }
%struct.pqueue_st = type { %struct.pitem_st*, i32 }

@.str = private unnamed_addr constant [13 x i8] c"ssl/pqueue.c\00", align 1
@__func__.pitem_new = private unnamed_addr constant [10 x i8] c"pitem_new\00", align 1
@__func__.pqueue_new = private unnamed_addr constant [11 x i8] c"pqueue_new\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.pitem_st* @pitem_new(i8* noundef %prio64be, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 24, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 20) #9
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 23, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.pitem_new, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.pitem_st*
  %call1 = tail call i8* @memcpy(i8* noundef nonnull %call, i8* noundef %prio64be, i64 noundef 8) #9
  %data2 = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %data2 to i8**
  store i8* %data, i8** %1, align 8, !tbaa !4
  %next = getelementptr inbounds i8, i8* %call, i64 16
  %2 = bitcast i8* %next to %struct.pitem_st**
  store %struct.pitem_st* null, %struct.pitem_st** %2, align 8, !tbaa !9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.pitem_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.pitem_st* %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @pitem_free(%struct.pitem_st* noundef %item) local_unnamed_addr #0 {
entry:
  %0 = getelementptr %struct.pitem_st, %struct.pitem_st* %item, i64 0, i32 0, i64 0
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 35) #9
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.pqueue_st* @pqueue_new() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 16, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 40) #9
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.pqueue_new, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = bitcast i8* %call to %struct.pqueue_st*
  ret %struct.pqueue_st* %0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @pqueue_free(%struct.pqueue_st* noundef %pq) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.pqueue_st* %pq to i8*
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 50) #9
  ret void
}

; Function Attrs: nofree noinline nounwind uwtable
define %struct.pitem_st* @pqueue_insert(%struct.pqueue_st* nocapture noundef %pq, %struct.pitem_st* noundef %item) local_unnamed_addr #3 {
entry:
  %items = getelementptr inbounds %struct.pqueue_st, %struct.pqueue_st* %pq, i64 0, i32 0
  %0 = load %struct.pitem_st*, %struct.pitem_st** %items, align 8, !tbaa !10
  %cmp = icmp eq %struct.pitem_st* %0, null
  br i1 %cmp, label %cleanup23.sink.split, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %arraydecay6 = getelementptr inbounds %struct.pitem_st, %struct.pitem_st* %item, i64 0, i32 0, i64 0
  %arraydecay71 = getelementptr inbounds %struct.pitem_st, %struct.pitem_st* %0, i64 0, i32 0, i64 0
  %call72 = tail call i32 @memcmp(i8* noundef nonnull %arraydecay71, i8* noundef %arraydecay6, i64 noundef 8) #10
  %cmp773 = icmp sgt i32 %call72, 0
  br i1 %cmp773, label %if.then8, label %cleanup

for.body:                                         ; preds = %for.inc
  %arraydecay = getelementptr inbounds %struct.pitem_st, %struct.pitem_st* %1, i64 0, i32 0, i64 0
  %call = tail call i32 @memcmp(i8* noundef nonnull %arraydecay, i8* noundef %arraydecay6, i64 noundef 8) #10
  %cmp7 = icmp sgt i32 %call, 0
  br i1 %cmp7, label %if.then8, label %cleanup, !llvm.loop !13

if.then8:                                         ; preds = %for.body, %for.cond.preheader
  %next.055.lcssa = phi %struct.pitem_st* [ %0, %for.cond.preheader ], [ %1, %for.body ]
  %curr.054.lcssa = phi %struct.pitem_st* [ null, %for.cond.preheader ], [ %next.05574, %for.body ]
  %next9 = getelementptr inbounds %struct.pitem_st, %struct.pitem_st* %item, i64 0, i32 2
  store %struct.pitem_st* %next.055.lcssa, %struct.pitem_st** %next9, align 8, !tbaa !9
  %cmp10 = icmp eq %struct.pitem_st* %curr.054.lcssa, null
  %next13 = getelementptr inbounds %struct.pitem_st, %struct.pitem_st* %curr.054.lcssa, i64 0, i32 2
  %spec.select = select i1 %cmp10, %struct.pitem_st** %items, %struct.pitem_st** %next13
  br label %cleanup23.sink.split

cleanup:                                          ; preds = %for.cond.preheader, %for.body
  %call75 = phi i32 [ %call, %for.body ], [ %call72, %for.cond.preheader ]
  %next.05574 = phi %struct.pitem_st* [ %1, %for.body ], [ %0, %for.cond.preheader ]
  %cmp16 = icmp eq i32 %call75, 0
  br i1 %cmp16, label %cleanup23, label %for.inc

for.inc:                                          ; preds = %cleanup
  %next20 = getelementptr inbounds %struct.pitem_st, %struct.pitem_st* %next.05574, i64 0, i32 2
  %1 = load %struct.pitem_st*, %struct.pitem_st** %next20, align 8, !tbaa !9
  %cmp3.not = icmp eq %struct.pitem_st* %1, null
  br i1 %cmp3.not, label %for.end, label %for.body, !llvm.loop !13

for.end:                                          ; preds = %for.inc
  %next20.le = getelementptr inbounds %struct.pitem_st, %struct.pitem_st* %next.05574, i64 0, i32 2
  %next21 = getelementptr inbounds %struct.pitem_st, %struct.pitem_st* %item, i64 0, i32 2
  store %struct.pitem_st* null, %struct.pitem_st** %next21, align 8, !tbaa !9
  br label %cleanup23.sink.split

cleanup23.sink.split:                             ; preds = %if.then8, %entry, %for.end
  %items.sink = phi %struct.pitem_st** [ %next20.le, %for.end ], [ %items, %entry ], [ %spec.select, %if.then8 ]
  store %struct.pitem_st* %item, %struct.pitem_st** %items.sink, align 8, !tbaa !15
  br label %cleanup23

cleanup23:                                        ; preds = %cleanup, %cleanup23.sink.split
  %retval.2 = phi %struct.pitem_st* [ %item, %cleanup23.sink.split ], [ null, %cleanup ]
  ret %struct.pitem_st* %retval.2
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.pitem_st* @pqueue_peek(%struct.pqueue_st* nocapture noundef readonly %pq) local_unnamed_addr #5 {
entry:
  %items = getelementptr inbounds %struct.pqueue_st, %struct.pqueue_st* %pq, i64 0, i32 0
  %0 = load %struct.pitem_st*, %struct.pitem_st** %items, align 8, !tbaa !10
  ret %struct.pitem_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define %struct.pitem_st* @pqueue_pop(%struct.pqueue_st* nocapture noundef %pq) local_unnamed_addr #6 {
entry:
  %items = getelementptr inbounds %struct.pqueue_st, %struct.pqueue_st* %pq, i64 0, i32 0
  %0 = load %struct.pitem_st*, %struct.pitem_st** %items, align 8, !tbaa !10
  %cmp.not = icmp eq %struct.pitem_st* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %next = getelementptr inbounds %struct.pitem_st, %struct.pitem_st* %0, i64 0, i32 2
  %1 = load %struct.pitem_st*, %struct.pitem_st** %next, align 8, !tbaa !9
  store %struct.pitem_st* %1, %struct.pitem_st** %items, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.pitem_st* %0
}

; Function Attrs: nofree noinline nounwind readonly uwtable
define %struct.pitem_st* @pqueue_find(%struct.pqueue_st* nocapture noundef readonly %pq, i8* noundef readonly %prio64be) local_unnamed_addr #7 {
entry:
  %items = getelementptr inbounds %struct.pqueue_st, %struct.pqueue_st* %pq, i64 0, i32 0
  %0 = load %struct.pitem_st*, %struct.pitem_st** %items, align 8, !tbaa !10
  %cmp = icmp eq %struct.pitem_st* %0, null
  br i1 %cmp, label %cleanup, label %for.cond

for.cond:                                         ; preds = %entry, %for.body
  %next.0 = phi %struct.pitem_st* [ %1, %for.body ], [ %0, %entry ]
  %next2 = getelementptr inbounds %struct.pitem_st, %struct.pitem_st* %next.0, i64 0, i32 2
  %1 = load %struct.pitem_st*, %struct.pitem_st** %next2, align 8, !tbaa !9
  %cmp3.not = icmp eq %struct.pitem_st* %1, null
  br i1 %cmp3.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds %struct.pitem_st, %struct.pitem_st* %next.0, i64 0, i32 0, i64 0
  %call = tail call i32 @memcmp(i8* noundef nonnull %arraydecay, i8* noundef %prio64be, i64 noundef 8) #10
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %for.end, label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.body, %for.cond
  %found.0 = phi %struct.pitem_st* [ null, %for.cond ], [ %next.0, %for.body ]
  %arraydecay9 = getelementptr inbounds %struct.pitem_st, %struct.pitem_st* %next.0, i64 0, i32 0, i64 0
  %call10 = tail call i32 @memcmp(i8* noundef nonnull %arraydecay9, i8* noundef %prio64be, i64 noundef 8) #10
  %cmp11 = icmp eq i32 %call10, 0
  %spec.select = select i1 %cmp11, %struct.pitem_st* %next.0, %struct.pitem_st* %found.0
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry
  %retval.0 = phi %struct.pitem_st* [ null, %entry ], [ %spec.select, %for.end ]
  ret %struct.pitem_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.pitem_st* @pqueue_iterator(%struct.pqueue_st* nocapture noundef readonly %pq) local_unnamed_addr #5 {
entry:
  %call = tail call %struct.pitem_st* @pqueue_peek(%struct.pqueue_st* noundef %pq) #11
  ret %struct.pitem_st* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define %struct.pitem_st* @pqueue_next(%struct.pitem_st** noundef %item) local_unnamed_addr #6 {
entry:
  %cmp = icmp eq %struct.pitem_st** %item, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load %struct.pitem_st*, %struct.pitem_st** %item, align 8, !tbaa !15
  %cmp1 = icmp eq %struct.pitem_st* %0, null
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %next = getelementptr inbounds %struct.pitem_st, %struct.pitem_st* %0, i64 0, i32 2
  %1 = load %struct.pitem_st*, %struct.pitem_st** %next, align 8, !tbaa !9
  store %struct.pitem_st* %1, %struct.pitem_st** %item, align 8, !tbaa !15
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi %struct.pitem_st* [ %0, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret %struct.pitem_st* %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define i64 @pqueue_size(%struct.pqueue_st* nocapture noundef readonly %pq) local_unnamed_addr #8 {
entry:
  %items = getelementptr inbounds %struct.pqueue_st, %struct.pqueue_st* %pq, i64 0, i32 0
  %item.05 = load %struct.pitem_st*, %struct.pitem_st** %items, align 8, !tbaa !15
  %cmp.not6 = icmp eq %struct.pitem_st* %item.05, null
  br i1 %cmp.not6, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %item.08 = phi %struct.pitem_st* [ %item.0, %while.body ], [ %item.05, %entry ]
  %count.07 = phi i64 [ %inc, %while.body ], [ 0, %entry ]
  %inc = add i64 %count.07, 1
  %next = getelementptr inbounds %struct.pitem_st, %struct.pitem_st* %item.08, i64 0, i32 2
  %item.0 = load %struct.pitem_st*, %struct.pitem_st** %next, align 8, !tbaa !15
  %cmp.not = icmp eq %struct.pitem_st* %item.0, null
  br i1 %cmp.not, label %while.end, label %while.body, !llvm.loop !17

while.end:                                        ; preds = %while.body, %entry
  %count.0.lcssa = phi i64 [ 0, %entry ], [ %inc, %while.body ]
  ret i64 %count.0.lcssa
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #11 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !8, i64 8}
!5 = !{!"pitem_st", !6, i64 0, !8, i64 8, !8, i64 16}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"any pointer", !6, i64 0}
!9 = !{!5, !8, i64 16}
!10 = !{!11, !8, i64 0}
!11 = !{!"pqueue_st", !8, i64 0, !12, i64 8}
!12 = !{!"int", !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!8, !8, i64 0}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
