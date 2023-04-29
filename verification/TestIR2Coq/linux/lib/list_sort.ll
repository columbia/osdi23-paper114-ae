; ModuleID = 'lib/list_sort.c'
source_filename = "lib/list_sort.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head*, %struct.list_head* }

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @list_sort(i8* noundef %priv, %struct.list_head* noundef %head, i32 (i8*, %struct.list_head*, %struct.list_head*)* nocapture noundef readonly %cmp) local_unnamed_addr #0 {
entry:
  %pending = alloca %struct.list_head*, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  %pending.0.sroa_cast = bitcast %struct.list_head** %pending to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %pending.0.sroa_cast)
  store %struct.list_head* null, %struct.list_head** %pending, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %1 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %cmp1 = icmp eq %struct.list_head* %0, %1
  br i1 %cmp1, label %cleanup26, label %if.end

if.end:                                           ; preds = %entry
  %next3 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i64 0, i32 0
  store %struct.list_head* null, %struct.list_head** %next3, align 8
  br label %do.body

do.body:                                          ; preds = %if.end12, %if.end
  %2 = phi %struct.list_head* [ null, %if.end ], [ %list.0, %if.end12 ]
  %count.0 = phi i64 [ 0, %if.end ], [ %inc, %if.end12 ]
  %list.0 = phi %struct.list_head* [ %0, %if.end ], [ %9, %if.end12 ]
  %and77 = and i64 %count.0, 1
  %tobool.not78 = icmp eq i64 %and77, 0
  br i1 %tobool.not78, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %do.body
  %prev493 = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i64 0, i32 1
  %shr94 = lshr i64 %count.0, 1
  %3 = and i64 %count.0, 2
  %tobool.not95 = icmp eq i64 %3, 0
  br i1 %tobool.not95, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body.preheader, %for.body.for.body_crit_edge
  %shr97 = phi i64 [ %shr, %for.body.for.body_crit_edge ], [ %shr94, %for.body.preheader ]
  %prev496 = phi %struct.list_head** [ %prev4, %for.body.for.body_crit_edge ], [ %prev493, %for.body.preheader ]
  %.pre = load %struct.list_head*, %struct.list_head** %prev496, align 8
  %prev4 = getelementptr inbounds %struct.list_head, %struct.list_head* %.pre, i64 0, i32 1
  %shr = lshr i64 %shr97, 1
  %4 = and i64 %shr97, 2
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %for.end, label %for.body.for.body_crit_edge

for.end:                                          ; preds = %for.body.for.body_crit_edge, %for.body.preheader, %do.body
  %bits.0.lcssa = phi i64 [ %count.0, %do.body ], [ %shr94, %for.body.preheader ], [ %shr, %for.body.for.body_crit_edge ]
  %tail.0.lcssa = phi %struct.list_head** [ %pending, %do.body ], [ %prev493, %for.body.preheader ], [ %prev4, %for.body.for.body_crit_edge ]
  %tobool5.not = icmp eq i64 %bits.0.lcssa, 0
  br i1 %tobool5.not, label %if.end12, label %if.then8, !prof !7

if.then8:                                         ; preds = %for.end
  %5 = load %struct.list_head*, %struct.list_head** %tail.0.lcssa, align 8
  %prev9 = getelementptr inbounds %struct.list_head, %struct.list_head* %5, i64 0, i32 1
  %6 = load %struct.list_head*, %struct.list_head** %prev9, align 8
  %call = call fastcc %struct.list_head* @merge(i8* noundef %priv, i32 (i8*, %struct.list_head*, %struct.list_head*)* noundef %cmp, %struct.list_head* noundef %6, %struct.list_head* noundef %5) #2
  %prev10 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i64 0, i32 1
  %7 = load %struct.list_head*, %struct.list_head** %prev10, align 8
  %prev11 = getelementptr inbounds %struct.list_head, %struct.list_head* %call, i64 0, i32 1
  store %struct.list_head* %7, %struct.list_head** %prev11, align 8
  store %struct.list_head* %call, %struct.list_head** %tail.0.lcssa, align 8
  %pending.0.pending.0.pending.0..pre = load %struct.list_head*, %struct.list_head** %pending, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %for.end
  %8 = phi %struct.list_head* [ %pending.0.pending.0.pending.0..pre, %if.then8 ], [ %2, %for.end ]
  %prev13 = getelementptr inbounds %struct.list_head, %struct.list_head* %list.0, i64 0, i32 1
  store %struct.list_head* %8, %struct.list_head** %prev13, align 8
  store %struct.list_head* %list.0, %struct.list_head** %pending, align 8
  %next14 = getelementptr inbounds %struct.list_head, %struct.list_head* %list.0, i64 0, i32 0
  %9 = load %struct.list_head*, %struct.list_head** %next14, align 8
  store %struct.list_head* null, %struct.list_head** %next14, align 8
  %inc = add i64 %count.0, 1
  %tobool16.not = icmp eq %struct.list_head* %9, null
  br i1 %tobool16.not, label %do.end, label %do.body

do.end:                                           ; preds = %if.end12
  %prev2083 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i64 0, i32 1
  %10 = load %struct.list_head*, %struct.list_head** %prev2083, align 8
  %tobool21.not84 = icmp eq %struct.list_head* %10, null
  br i1 %tobool21.not84, label %for.end25, label %cleanup

cleanup:                                          ; preds = %do.end, %cleanup
  %11 = phi %struct.list_head* [ %12, %cleanup ], [ %10, %do.end ]
  %list.186 = phi %struct.list_head* [ %call24, %cleanup ], [ %list.0, %do.end ]
  %storemerge85 = phi %struct.list_head* [ %11, %cleanup ], [ %8, %do.end ]
  %call24 = call fastcc %struct.list_head* @merge(i8* noundef %priv, i32 (i8*, %struct.list_head*, %struct.list_head*)* noundef %cmp, %struct.list_head* noundef %storemerge85, %struct.list_head* noundef %list.186) #2
  %prev20 = getelementptr inbounds %struct.list_head, %struct.list_head* %11, i64 0, i32 1
  %12 = load %struct.list_head*, %struct.list_head** %prev20, align 8
  %tobool21.not = icmp eq %struct.list_head* %12, null
  br i1 %tobool21.not, label %for.end25, label %cleanup

for.end25:                                        ; preds = %cleanup, %do.end
  %storemerge.lcssa = phi %struct.list_head* [ %8, %do.end ], [ %11, %cleanup ]
  %list.1.lcssa = phi %struct.list_head* [ %list.0, %do.end ], [ %call24, %cleanup ]
  call fastcc void @merge_final(i8* noundef %priv, i32 (i8*, %struct.list_head*, %struct.list_head*)* noundef %cmp, %struct.list_head* noundef %head, %struct.list_head* noundef %storemerge.lcssa, %struct.list_head* noundef %list.1.lcssa) #2
  br label %cleanup26

cleanup26:                                        ; preds = %entry, %for.end25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %pending.0.sroa_cast)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.list_head* @merge(i8* noundef %priv, i32 (i8*, %struct.list_head*, %struct.list_head*)* nocapture noundef readonly %cmp, %struct.list_head* noundef %a, %struct.list_head* noundef %b) unnamed_addr #0 {
entry:
  %head = alloca %struct.list_head*, align 8
  %head.0.sroa_cast = bitcast %struct.list_head** %head to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %head.0.sroa_cast)
  store %struct.list_head* null, %struct.list_head** %head, align 8
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %if.then, %entry
  %a.addr.0.ph = phi %struct.list_head* [ %0, %if.then ], [ %a, %entry ]
  %b.addr.0.ph = phi %struct.list_head* [ %b.addr.0, %if.then ], [ %b, %entry ]
  %tail.0.ph = phi %struct.list_head** [ %next, %if.then ], [ %head, %entry ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer, %if.else
  %b.addr.0 = phi %struct.list_head* [ %1, %if.else ], [ %b.addr.0.ph, %for.cond.outer ]
  %tail.0 = phi %struct.list_head** [ %next4, %if.else ], [ %tail.0.ph, %for.cond.outer ]
  %call = call i32 %cmp(i8* noundef %priv, %struct.list_head* noundef %a.addr.0.ph, %struct.list_head* noundef %b.addr.0) #3
  %cmp1 = icmp slt i32 %call, 1
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  store %struct.list_head* %a.addr.0.ph, %struct.list_head** %tail.0, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %a.addr.0.ph, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  %tobool.not = icmp eq %struct.list_head* %0, null
  br i1 %tobool.not, label %if.then3, label %for.cond.outer

if.then3:                                         ; preds = %if.then
  store %struct.list_head* %b.addr.0, %struct.list_head** %next, align 8
  br label %for.end

if.else:                                          ; preds = %for.cond
  store %struct.list_head* %b.addr.0, %struct.list_head** %tail.0, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %b.addr.0, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next4, align 8
  %tobool6.not = icmp eq %struct.list_head* %1, null
  br i1 %tobool6.not, label %if.then7, label %for.cond

if.then7:                                         ; preds = %if.else
  store %struct.list_head* %a.addr.0.ph, %struct.list_head** %next4, align 8
  br label %for.end

for.end:                                          ; preds = %if.then7, %if.then3
  %head.0.head.0.head.0. = load %struct.list_head*, %struct.list_head** %head, align 8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %head.0.sroa_cast)
  ret %struct.list_head* %head.0.head.0.head.0.
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @merge_final(i8* noundef %priv, i32 (i8*, %struct.list_head*, %struct.list_head*)* nocapture noundef readonly %cmp, %struct.list_head* noundef %head, %struct.list_head* noundef %a, %struct.list_head* noundef %b) unnamed_addr #0 {
entry:
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %if.then, %entry
  %a.addr.0.ph = phi %struct.list_head* [ %0, %if.then ], [ %a, %entry ]
  %b.addr.0.ph = phi %struct.list_head* [ %b.addr.0, %if.then ], [ %b, %entry ]
  %tail.0.ph = phi %struct.list_head* [ %a.addr.0.ph, %if.then ], [ %head, %entry ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer, %if.else
  %b.addr.0 = phi %struct.list_head* [ %1, %if.else ], [ %b.addr.0.ph, %for.cond.outer ]
  %tail.0 = phi %struct.list_head* [ %b.addr.0, %if.else ], [ %tail.0.ph, %for.cond.outer ]
  %call = call i32 %cmp(i8* noundef %priv, %struct.list_head* noundef %a.addr.0.ph, %struct.list_head* noundef %b.addr.0) #3
  %cmp1 = icmp slt i32 %call, 1
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %tail.0, i64 0, i32 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  store %struct.list_head* %a.addr.0.ph, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %a.addr.0.ph, i64 0, i32 1
  store %struct.list_head* %tail.0, %struct.list_head** %prev, align 8
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %a.addr.0.ph, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next2, align 8
  %tobool.not = icmp eq %struct.list_head* %0, null
  br i1 %tobool.not, label %for.end, label %for.cond.outer

if.else:                                          ; preds = %for.cond
  store %struct.list_head* %b.addr.0, %struct.list_head** %next, align 8
  %prev5 = getelementptr inbounds %struct.list_head, %struct.list_head* %b.addr.0, i64 0, i32 1
  store %struct.list_head* %tail.0, %struct.list_head** %prev5, align 8
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %b.addr.0, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next6, align 8
  %tobool7.not = icmp eq %struct.list_head* %1, null
  br i1 %tobool7.not, label %for.end, label %for.cond

for.end:                                          ; preds = %if.then, %if.else
  %b.addr.2 = phi %struct.list_head* [ %a.addr.0.ph, %if.else ], [ %b.addr.0, %if.then ]
  %tail.2 = phi %struct.list_head* [ %b.addr.0, %if.else ], [ %a.addr.0.ph, %if.then ]
  %next11 = getelementptr inbounds %struct.list_head, %struct.list_head* %tail.2, i64 0, i32 0
  store %struct.list_head* %b.addr.2, %struct.list_head** %next11, align 8
  br label %do.body

do.body:                                          ; preds = %if.end18, %for.end
  %b.addr.3 = phi %struct.list_head* [ %b.addr.2, %for.end ], [ %2, %if.end18 ]
  %tail.3 = phi %struct.list_head* [ %tail.2, %for.end ], [ %b.addr.3, %if.end18 ]
  %count.0 = phi i8 [ 0, %for.end ], [ %inc, %if.end18 ]
  %inc = add i8 %count.0, 1
  %tobool12.not = icmp eq i8 %inc, 0
  br i1 %tobool12.not, label %if.then16, label %if.end18, !prof !7

if.then16:                                        ; preds = %do.body
  %call17 = call i32 %cmp(i8* noundef %priv, %struct.list_head* noundef %b.addr.3, %struct.list_head* noundef %b.addr.3) #3
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %do.body
  %prev19 = getelementptr inbounds %struct.list_head, %struct.list_head* %b.addr.3, i64 0, i32 1
  store %struct.list_head* %tail.3, %struct.list_head** %prev19, align 8
  %next20 = getelementptr inbounds %struct.list_head, %struct.list_head* %b.addr.3, i64 0, i32 0
  %2 = load %struct.list_head*, %struct.list_head** %next20, align 8
  %tobool21.not = icmp eq %struct.list_head* %2, null
  br i1 %tobool21.not, label %do.end, label %do.body

do.end:                                           ; preds = %if.end18
  %next20.le = getelementptr inbounds %struct.list_head, %struct.list_head* %b.addr.3, i64 0, i32 0
  store %struct.list_head* %head, %struct.list_head** %next20.le, align 8
  %prev23 = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  store %struct.list_head* %b.addr.3, %struct.list_head** %prev23, align 8
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nobuiltin "no-builtins" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"branch_weights", i32 1, i32 2000}
