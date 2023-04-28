; ModuleID = 'kernel/range.c'
source_filename = "kernel/range.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.range = type { i64, i64 }

@.str = private unnamed_addr constant [33 x i8] c"\013%s: run out of slot in ranges\0A\00", align 1
@__func__.subtract_range = private unnamed_addr constant [15 x i8] c"subtract_range\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local i32 @add_range(%struct.range* nocapture noundef writeonly %range, i32 noundef %az, i32 noundef %nr_range, i64 noundef %start, i64 noundef %end) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp ult i64 %start, %end
  %cmp1.not = icmp slt i32 %nr_range, %az
  %or.cond = and i1 %cmp1.not, %cmp.not
  br i1 %or.cond, label %if.end3, label %return

if.end3:                                          ; preds = %entry
  %idxprom = sext i32 %nr_range to i64
  %start4 = getelementptr %struct.range, %struct.range* %range, i64 %idxprom, i32 0
  store i64 %start, i64* %start4, align 8
  %end7 = getelementptr %struct.range, %struct.range* %range, i64 %idxprom, i32 1
  store i64 %end, i64* %end7, align 8
  %inc = add nsw i32 %nr_range, 1
  br label %return

return:                                           ; preds = %entry, %if.end3
  %retval.0 = phi i32 [ %inc, %if.end3 ], [ %nr_range, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @add_range_with_merge(%struct.range* noundef %range, i32 noundef %az, i32 noundef %nr_range, i64 noundef %start, i64 noundef %end) local_unnamed_addr #1 {
entry:
  %cmp.not = icmp ult i64 %start, %end
  br i1 %cmp.not, label %for.cond.preheader, label %cleanup55

for.cond.preheader:                               ; preds = %entry
  %cmp1106 = icmp sgt i32 %nr_range, 0
  br i1 %cmp1106, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %cleanup
  %nr_range.addr.0110 = phi i32 [ %nr_range.addr.1, %cleanup ], [ %nr_range, %for.cond.preheader ]
  %start.addr.0109 = phi i64 [ %start.addr.1, %cleanup ], [ %start, %for.cond.preheader ]
  %end.addr.0108 = phi i64 [ %end.addr.1, %cleanup ], [ %end, %for.cond.preheader ]
  %i.0107 = phi i32 [ %inc, %cleanup ], [ 0, %for.cond.preheader ]
  %idxprom = sext i32 %i.0107 to i64
  %arrayidx = getelementptr %struct.range, %struct.range* %range, i64 %idxprom
  %end2 = getelementptr %struct.range, %struct.range* %range, i64 %idxprom, i32 1
  %0 = load i64, i64* %end2, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %for.body
  %start7 = getelementptr inbounds %struct.range, %struct.range* %arrayidx, i64 0, i32 0
  %1 = load i64, i64* %start7, align 8
  %cmp8 = icmp ugt i64 %1, %start.addr.0109
  %cond = select i1 %cmp8, i64 %1, i64 %start.addr.0109
  %cmp13 = icmp ult i64 %0, %end.addr.0108
  %cond17 = select i1 %cmp13, i64 %0, i64 %end.addr.0108
  %cmp18 = icmp ugt i64 %cond, %cond17
  br i1 %cmp18, label %cleanup, label %if.end20

if.end20:                                         ; preds = %if.end4
  %cmp25 = icmp ult i64 %1, %start.addr.0109
  %cond29 = select i1 %cmp25, i64 %1, i64 %start.addr.0109
  %cmp34 = icmp ugt i64 %0, %end.addr.0108
  %cond38 = select i1 %cmp34, i64 %0, i64 %end.addr.0108
  %2 = bitcast %struct.range* %arrayidx to i8*
  %add = add nsw i32 %i.0107, 1
  %idxprom41 = sext i32 %add to i64
  %arrayidx42 = getelementptr %struct.range, %struct.range* %range, i64 %idxprom41
  %3 = bitcast %struct.range* %arrayidx42 to i8*
  %sub = sub i32 %nr_range.addr.0110, %add
  %conv = sext i32 %sub to i64
  %mul = shl nsw i64 %conv, 4
  %call = call i8* @memmove(i8* noundef %2, i8* noundef %3, i64 noundef %mul) #5
  %sub44 = add nsw i32 %nr_range.addr.0110, -1
  %idxprom45 = sext i32 %sub44 to i64
  %start47 = getelementptr %struct.range, %struct.range* %range, i64 %idxprom45, i32 0
  store i64 0, i64* %start47, align 8
  %end51 = getelementptr %struct.range, %struct.range* %range, i64 %idxprom45, i32 1
  store i64 0, i64* %end51, align 8
  %dec52 = add i32 %i.0107, -1
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %for.body, %if.end20
  %i.1 = phi i32 [ %dec52, %if.end20 ], [ %i.0107, %for.body ], [ %i.0107, %if.end4 ]
  %end.addr.1 = phi i64 [ %cond38, %if.end20 ], [ %end.addr.0108, %for.body ], [ %end.addr.0108, %if.end4 ]
  %start.addr.1 = phi i64 [ %cond29, %if.end20 ], [ %start.addr.0109, %for.body ], [ %start.addr.0109, %if.end4 ]
  %nr_range.addr.1 = phi i32 [ %sub44, %if.end20 ], [ %nr_range.addr.0110, %for.body ], [ %nr_range.addr.0110, %if.end4 ]
  %inc = add i32 %i.1, 1
  %cmp1 = icmp slt i32 %inc, %nr_range.addr.1
  br i1 %cmp1, label %for.body, label %for.end

for.end:                                          ; preds = %cleanup, %for.cond.preheader
  %end.addr.0.lcssa = phi i64 [ %end, %for.cond.preheader ], [ %end.addr.1, %cleanup ]
  %start.addr.0.lcssa = phi i64 [ %start, %for.cond.preheader ], [ %start.addr.1, %cleanup ]
  %nr_range.addr.0.lcssa = phi i32 [ %nr_range, %for.cond.preheader ], [ %nr_range.addr.1, %cleanup ]
  %call54 = call i32 @add_range(%struct.range* noundef %range, i32 noundef %az, i32 noundef %nr_range.addr.0.lcssa, i64 noundef %start.addr.0.lcssa, i64 noundef %end.addr.0.lcssa) #6
  br label %cleanup55

cleanup55:                                        ; preds = %entry, %for.end
  %retval.0 = phi i32 [ %call54, %for.end ], [ %nr_range, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memmove(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @subtract_range(%struct.range* nocapture noundef %range, i32 noundef %az, i64 noundef %start, i64 noundef %end) local_unnamed_addr #1 {
entry:
  %cmp.not = icmp ult i64 %start, %end
  %cmp1164 = icmp sgt i32 %az, 0
  %or.cond166 = and i1 %cmp.not, %cmp1164
  br i1 %or.cond166, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %wide.trip.count173 = zext i32 %az to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc94
  %indvars.iv170 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next171, %for.inc94 ]
  %end2 = getelementptr %struct.range, %struct.range* %range, i64 %indvars.iv170, i32 1
  %0 = load i64, i64* %end2, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %for.inc94, label %if.end4

if.end4:                                          ; preds = %for.body
  %start7 = getelementptr %struct.range, %struct.range* %range, i64 %indvars.iv170, i32 0
  %1 = load i64, i64* %start7, align 8
  %cmp8.not = icmp ult i64 %1, %start
  %cmp12.not = icmp ugt i64 %0, %end
  %or.cond = select i1 %cmp8.not, i1 true, i1 %cmp12.not
  br i1 %or.cond, label %if.end20, label %if.then13

if.then13:                                        ; preds = %if.end4
  store i64 0, i64* %start7, align 8
  store i64 0, i64* %end2, align 8
  br label %for.inc94

if.end20:                                         ; preds = %if.end4
  br i1 %cmp8.not, label %land.lhs.true44, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %if.end20
  %cmp34 = icmp ult i64 %1, %end
  %or.cond160 = select i1 %cmp12.not, i1 %cmp34, i1 false
  br i1 %or.cond160, label %if.then35, label %for.inc94

if.then35:                                        ; preds = %land.lhs.true25
  store i64 %end, i64* %start7, align 8
  br label %for.inc94

land.lhs.true44:                                  ; preds = %if.end20
  %cmp48.not = icmp ule i64 %0, %end
  %cmp53 = icmp ugt i64 %0, %start
  %or.cond161 = and i1 %cmp48.not, %cmp53
  br i1 %or.cond161, label %if.then54, label %land.lhs.true63

if.then54:                                        ; preds = %land.lhs.true44
  store i64 %start, i64* %end2, align 8
  br label %for.inc94

land.lhs.true63:                                  ; preds = %land.lhs.true44
  br i1 %cmp12.not, label %for.body71, label %for.inc94

for.body71:                                       ; preds = %land.lhs.true63, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %land.lhs.true63 ]
  %end74 = getelementptr %struct.range, %struct.range* %range, i64 %indvars.iv, i32 1
  %2 = load i64, i64* %end74, align 8
  %cmp75 = icmp eq i64 %2, 0
  br i1 %cmp75, label %if.then79, label %for.inc

for.inc:                                          ; preds = %for.body71
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count173
  br i1 %exitcond.not, label %do.end, label %for.body71

if.then79:                                        ; preds = %for.body71
  %idxprom72.le = and i64 %indvars.iv, 4294967295
  store i64 %0, i64* %end74, align 8
  %start88 = getelementptr %struct.range, %struct.range* %range, i64 %idxprom72.le, i32 0
  store i64 %end, i64* %start88, align 8
  br label %if.end89

do.end:                                           ; preds = %for.inc
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.subtract_range, i64 0, i64 0)) #7
  br label %if.end89

if.end89:                                         ; preds = %do.end, %if.then79
  store i64 %start, i64* %end2, align 8
  br label %for.inc94

for.inc94:                                        ; preds = %land.lhs.true25, %land.lhs.true63, %for.body, %if.end89, %if.then54, %if.then35, %if.then13
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1
  %exitcond174.not = icmp eq i64 %indvars.iv.next171, %wide.trip.count173
  br i1 %exitcond174.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc94, %entry
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @clean_sort_range(%struct.range* noundef %range, i32 noundef %az) local_unnamed_addr #1 {
entry:
  %sub = add i32 %az, -1
  %cmp86 = icmp sgt i32 %sub, 0
  br i1 %cmp86, label %for.body, label %for.end32

for.body:                                         ; preds = %entry, %for.inc31
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %for.inc31 ], [ 0, %entry ]
  %k.089 = phi i32 [ %k.2, %for.inc31 ], [ %sub, %entry ]
  %end = getelementptr %struct.range, %struct.range* %range, i64 %indvars.iv95, i32 1
  %0 = load i64, i64* %end, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %for.cond1.preheader, label %for.inc31

for.cond1.preheader:                              ; preds = %for.body
  %1 = sext i32 %k.089 to i64
  %cmp281 = icmp slt i64 %indvars.iv95, %1
  br i1 %cmp281, label %for.body3.preheader, label %for.end

for.body3.preheader:                              ; preds = %for.cond1.preheader
  %2 = trunc i64 %indvars.iv95 to i32
  br label %for.body3

for.body3:                                        ; preds = %for.body3.preheader, %for.inc
  %indvars.iv = phi i64 [ %1, %for.body3.preheader ], [ %indvars.iv.next, %for.inc ]
  %end6 = getelementptr %struct.range, %struct.range* %range, i64 %indvars.iv, i32 1
  %3 = load i64, i64* %end6, align 8
  %tobool7.not = icmp eq i64 %3, 0
  br i1 %tobool7.not, label %for.inc, label %for.end.loopexit.split.loop.exit

for.inc:                                          ; preds = %for.body3
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %cmp2 = icmp sgt i64 %indvars.iv.next, %indvars.iv95
  br i1 %cmp2, label %for.body3, label %for.end

for.end.loopexit.split.loop.exit:                 ; preds = %for.body3
  %4 = trunc i64 %indvars.iv to i32
  br label %for.end

for.end:                                          ; preds = %for.inc, %for.end.loopexit.split.loop.exit, %for.cond1.preheader
  %j.0.lcssa = phi i32 [ %k.089, %for.cond1.preheader ], [ %4, %for.end.loopexit.split.loop.exit ], [ %2, %for.inc ]
  %k.1 = phi i32 [ %k.089, %for.cond1.preheader ], [ %4, %for.end.loopexit.split.loop.exit ], [ %k.089, %for.inc ]
  %5 = zext i32 %j.0.lcssa to i64
  %cmp10 = icmp eq i64 %indvars.iv95, %5
  br i1 %cmp10, label %for.end32, label %if.end12

if.end12:                                         ; preds = %for.end
  %idxprom13 = sext i32 %k.1 to i64
  %start = getelementptr %struct.range, %struct.range* %range, i64 %idxprom13, i32 0
  %6 = load i64, i64* %start, align 8
  %start17 = getelementptr %struct.range, %struct.range* %range, i64 %indvars.iv95, i32 0
  store i64 %6, i64* %start17, align 8
  %end20 = getelementptr %struct.range, %struct.range* %range, i64 %idxprom13, i32 1
  %7 = load i64, i64* %end20, align 8
  store i64 %7, i64* %end, align 8
  store i64 0, i64* %start, align 8
  store i64 0, i64* %end20, align 8
  %dec30 = add i32 %k.1, -1
  br label %for.inc31

for.inc31:                                        ; preds = %for.body, %if.end12
  %k.2 = phi i32 [ %k.089, %for.body ], [ %dec30, %if.end12 ]
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  %8 = sext i32 %k.2 to i64
  %cmp = icmp slt i64 %indvars.iv.next96, %8
  br i1 %cmp, label %for.body, label %for.end32

for.end32:                                        ; preds = %for.inc31, %for.end, %entry
  %cmp3490 = icmp sgt i32 %az, 0
  br i1 %cmp3490, label %for.body35.preheader, label %for.end44

for.body35.preheader:                             ; preds = %for.end32
  %wide.trip.count = zext i32 %az to i64
  br label %for.body35

for.body35:                                       ; preds = %for.body35.preheader, %for.inc42
  %indvars.iv98 = phi i64 [ 0, %for.body35.preheader ], [ %indvars.iv.next99, %for.inc42 ]
  %end38 = getelementptr %struct.range, %struct.range* %range, i64 %indvars.iv98, i32 1
  %9 = load i64, i64* %end38, align 8
  %tobool39.not = icmp eq i64 %9, 0
  br i1 %tobool39.not, label %for.end44.loopexit.split.loop.exit, label %for.inc42

for.inc42:                                        ; preds = %for.body35
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count
  br i1 %exitcond.not, label %for.end44, label %for.body35

for.end44.loopexit.split.loop.exit:               ; preds = %for.body35
  %10 = trunc i64 %indvars.iv98 to i32
  br label %for.end44

for.end44:                                        ; preds = %for.inc42, %for.end44.loopexit.split.loop.exit, %for.end32
  %nr_range.0 = phi i32 [ %az, %for.end32 ], [ %10, %for.end44.loopexit.split.loop.exit ], [ %az, %for.inc42 ]
  %11 = bitcast %struct.range* %range to i8*
  %conv = sext i32 %nr_range.0 to i64
  call void @sort(i8* noundef %11, i64 noundef %conv, i64 noundef 16, i32 (i8*, i8*)* noundef nonnull @cmp_range, void (i8*, i8*, i32)* noundef null) #5
  ret i32 %nr_range.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef, void (i8*, i8*, i32)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @cmp_range(i8* nocapture noundef readonly %x1, i8* nocapture noundef readonly %x2) #4 {
entry:
  %start = bitcast i8* %x1 to i64*
  %0 = load i64, i64* %start, align 8
  %start1 = bitcast i8* %x2 to i64*
  %1 = load i64, i64* %start1, align 8
  %cmp = icmp ult i64 %0, %1
  %cmp4 = icmp ugt i64 %0, %1
  %. = zext i1 %cmp4 to i32
  %retval.0 = select i1 %cmp, i32 -1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sort_range(%struct.range* noundef %range, i32 noundef %nr_range) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.range* %range to i8*
  %conv = sext i32 %nr_range to i64
  call void @sort(i8* noundef %0, i64 noundef %conv, i64 noundef 16, i32 (i8*, i8*)* noundef nonnull @cmp_range, void (i8*, i8*, i32)* noundef null) #5
  ret void
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { cold nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
