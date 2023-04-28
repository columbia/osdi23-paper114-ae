; ModuleID = 'block/blk-mq-cpumap.c'
source_filename = "block/blk-mq-cpumap.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.cpumask = type { [4 x i64] }
%struct.cpu_topology = type { i32, i32, i32, i32, %struct.cpumask, %struct.cpumask, %struct.cpumask }
%struct.blk_mq_queue_map = type { i32*, i32, i32 }

@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__cpu_present_mask = external dso_local global %struct.cpumask, align 8
@cpu_topology = external dso_local global [256 x %struct.cpu_topology], align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blk_mq_map_queues(%struct.blk_mq_queue_map* nocapture noundef readonly %qmap) local_unnamed_addr #0 {
entry:
  %mq_map = getelementptr inbounds %struct.blk_mq_queue_map, %struct.blk_mq_queue_map* %qmap, i64 0, i32 0
  %0 = load i32*, i32** %mq_map, align 8
  %nr_queues1 = getelementptr inbounds %struct.blk_mq_queue_map, %struct.blk_mq_queue_map* %qmap, i64 0, i32 1
  %1 = load i32, i32* %nr_queues1, align 8
  %call79 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #5
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %cmp80 = icmp ult i32 %call79, %2
  br i1 %cmp80, label %for.body, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.body, %entry
  %3 = phi i32 [ %2, %entry ], [ %4, %for.body ]
  %call382 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_present_mask) #5
  %cmp483 = icmp ult i32 %call382, %3
  %cmp6.not84 = icmp ne i32 %1, 0
  %or.cond85 = select i1 %cmp483, i1 %cmp6.not84, i1 false
  br i1 %or.cond85, label %if.end, label %for.cond11.outer.preheader

for.body:                                         ; preds = %entry, %for.body
  %call81 = phi i32 [ %call, %for.body ], [ %call79, %entry ]
  %idxprom = zext i32 %call81 to i64
  %arrayidx = getelementptr i32, i32* %0, i64 %idxprom
  store i32 -1, i32* %arrayidx, align 4
  %call = call i32 @cpumask_next(i32 noundef %call81, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #5
  %4 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %4
  br i1 %cmp, label %for.body, label %for.cond2.preheader

if.end:                                           ; preds = %for.cond2.preheader, %if.end
  %call387 = phi i32 [ %call3, %if.end ], [ %call382, %for.cond2.preheader ]
  %q.086 = phi i32 [ %inc, %if.end ], [ 0, %for.cond2.preheader ]
  %inc = add nuw i32 %q.086, 1
  %call7 = call fastcc i32 @queue_index(%struct.blk_mq_queue_map* noundef %qmap, i32 noundef %1, i32 noundef %q.086) #6
  %idxprom8 = zext i32 %call387 to i64
  %arrayidx9 = getelementptr i32, i32* %0, i64 %idxprom8
  store i32 %call7, i32* %arrayidx9, align 4
  %call3 = call i32 @cpumask_next(i32 noundef %call387, %struct.cpumask* noundef nonnull @__cpu_present_mask) #5
  %5 = load i32, i32* @nr_cpu_ids, align 4
  %cmp4 = icmp ult i32 %call3, %5
  %cmp6.not = icmp ult i32 %inc, %1
  %or.cond = select i1 %cmp4, i1 %cmp6.not, i1 false
  br i1 %or.cond, label %if.end, label %for.cond11.outer.preheader

for.cond11.outer.preheader:                       ; preds = %if.end, %for.cond2.preheader
  %.ph = phi i32 [ %3, %for.cond2.preheader ], [ %5, %if.end ]
  %q.1.ph.ph = phi i32 [ 0, %for.cond2.preheader ], [ %inc, %if.end ]
  br label %for.cond11.outer

for.cond11:                                       ; preds = %for.cond11.outer, %for.body14
  %cpu.2 = phi i32 [ %call12, %for.body14 ], [ %cpu.2.ph, %for.cond11.outer ]
  %call12 = call i32 @cpumask_next(i32 noundef %cpu.2, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #5
  %cmp13 = icmp ult i32 %call12, %8
  br i1 %cmp13, label %for.body14, label %for.end40

for.body14:                                       ; preds = %for.cond11
  %idxprom15 = zext i32 %call12 to i64
  %arrayidx16 = getelementptr i32, i32* %0, i64 %idxprom15
  %6 = load i32, i32* %arrayidx16, align 4
  %cmp17.not = icmp eq i32 %6, -1
  br i1 %cmp17.not, label %if.end19, label %for.cond11

if.end19:                                         ; preds = %for.body14
  %idxprom15.le = zext i32 %call12 to i64
  %arrayidx16.le = getelementptr i32, i32* %0, i64 %idxprom15.le
  %cmp20 = icmp ult i32 %q.1.ph, %1
  br i1 %cmp20, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end19
  %inc22 = add nuw i32 %q.1.ph, 1
  %call23 = call fastcc i32 @queue_index(%struct.blk_mq_queue_map* noundef %qmap, i32 noundef %1, i32 noundef %q.1.ph) #6
  br label %if.end39

if.else:                                          ; preds = %if.end19
  %call26 = call fastcc i32 @get_first_sibling(i32 noundef %call12) #6
  %cmp27 = icmp eq i32 %call26, %call12
  br i1 %cmp27, label %if.then28, label %if.else33

if.then28:                                        ; preds = %if.else
  %inc29 = add i32 %q.1.ph, 1
  %call30 = call fastcc i32 @queue_index(%struct.blk_mq_queue_map* noundef %qmap, i32 noundef %1, i32 noundef %q.1.ph) #6
  br label %if.end39

if.else33:                                        ; preds = %if.else
  %idxprom34 = zext i32 %call26 to i64
  %arrayidx35 = getelementptr i32, i32* %0, i64 %idxprom34
  %7 = load i32, i32* %arrayidx35, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then28, %if.else33, %if.then21
  %call30.sink = phi i32 [ %call30, %if.then28 ], [ %7, %if.else33 ], [ %call23, %if.then21 ]
  %q.2 = phi i32 [ %inc29, %if.then28 ], [ %q.1.ph, %if.else33 ], [ %inc22, %if.then21 ]
  store i32 %call30.sink, i32* %arrayidx16.le, align 4
  %.pre = load i32, i32* @nr_cpu_ids, align 4
  br label %for.cond11.outer

for.cond11.outer:                                 ; preds = %for.cond11.outer.preheader, %if.end39
  %8 = phi i32 [ %.pre, %if.end39 ], [ %.ph, %for.cond11.outer.preheader ]
  %cpu.2.ph = phi i32 [ %call12, %if.end39 ], [ -1, %for.cond11.outer.preheader ]
  %q.1.ph = phi i32 [ %q.2, %if.end39 ], [ %q.1.ph.ph, %for.cond11.outer.preheader ]
  br label %for.cond11

for.end40:                                        ; preds = %for.cond11
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @queue_index(%struct.blk_mq_queue_map* nocapture noundef readonly %qmap, i32 noundef %nr_queues, i32 noundef %q) unnamed_addr #2 {
entry:
  %queue_offset = getelementptr inbounds %struct.blk_mq_queue_map, %struct.blk_mq_queue_map* %qmap, i64 0, i32 2
  %0 = load i32, i32* %queue_offset, align 4
  %rem = urem i32 %q, %nr_queues
  %add = add i32 %rem, %0
  ret i32 %add
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @get_first_sibling(i32 noundef %cpu) unnamed_addr #0 {
entry:
  %idxprom = zext i32 %cpu to i64
  %thread_sibling = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom, i32 4
  %call = call fastcc i32 @cpumask_first(%struct.cpumask* noundef %thread_sibling) #6
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %0
  %call.cpu = select i1 %cmp, i32 %call, i32 %cpu
  ret i32 %call.cpu
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define dso_local i32 @blk_mq_hw_queue_to_node(%struct.blk_mq_queue_map* nocapture noundef readonly %qmap, i32 noundef %index) local_unnamed_addr #3 {
entry:
  %mq_map = getelementptr inbounds %struct.blk_mq_queue_map, %struct.blk_mq_queue_map* %qmap, i64 0, i32 0
  %0 = load i32, i32* @nr_cpu_ids, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ -1, %entry ], [ %call, %for.body ]
  %call = call i32 @cpumask_next(i32 noundef %i.0, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #5
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %for.body, label %cleanup

for.body:                                         ; preds = %for.cond
  %1 = load i32*, i32** %mq_map, align 8
  %idxprom = sext i32 %call to i64
  %arrayidx = getelementptr i32, i32* %1, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp eq i32 %2, %index
  br i1 %cmp1, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.cond, %for.body
  %retval.0 = phi i32 [ 0, %for.body ], [ -1, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_first(%struct.cpumask* noundef %srcp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  %call = call fastcc i64 @find_first_bit(i64* noundef %arraydecay) #6
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_first_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %call5 = call i64 @_find_first_bit(i64* noundef %addr, i64 noundef 256) #7
  ret i64 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_first_bit(i64* noundef, i64 noundef) local_unnamed_addr #4

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
