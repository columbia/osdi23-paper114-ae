; ModuleID = 'kernel/rcu/rcu_segcblist.c'
source_filename = "kernel/rcu/rcu_segcblist.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.rcu_cblist = type { %struct.callback_head*, %struct.callback_head**, i64 }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.rcu_segcblist = type { %struct.callback_head*, [4 x %struct.callback_head**], [4 x i64], i64, [4 x i64], i8 }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local void @rcu_cblist_init(%struct.rcu_cblist* noundef %rclp) local_unnamed_addr #0 {
entry:
  %head = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %rclp, i64 0, i32 0
  store %struct.callback_head* null, %struct.callback_head** %head, align 8
  %tail = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %rclp, i64 0, i32 1
  store %struct.callback_head** %head, %struct.callback_head*** %tail, align 8
  %len = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %rclp, i64 0, i32 2
  store i64 0, i64* %len, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local void @rcu_cblist_enqueue(%struct.rcu_cblist* noundef %rclp, %struct.callback_head* noundef %rhp) local_unnamed_addr #1 {
entry:
  %tail = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %rclp, i64 0, i32 1
  %0 = load %struct.callback_head**, %struct.callback_head*** %tail, align 8
  store %struct.callback_head* %rhp, %struct.callback_head** %0, align 8
  %next = getelementptr inbounds %struct.callback_head, %struct.callback_head* %rhp, i64 0, i32 0
  store %struct.callback_head** %next, %struct.callback_head*** %tail, align 8
  %len = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %rclp, i64 0, i32 2
  %1 = load i64, i64* %len, align 8
  %add = add i64 %1, 1
  store volatile i64 %add, i64* %len, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local void @rcu_cblist_flush_enqueue(%struct.rcu_cblist* noundef %drclp, %struct.rcu_cblist* noundef %srclp, %struct.callback_head* noundef %rhp) local_unnamed_addr #1 {
entry:
  %head = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %srclp, i64 0, i32 0
  %0 = load %struct.callback_head*, %struct.callback_head** %head, align 8
  %head1 = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %drclp, i64 0, i32 0
  store %struct.callback_head* %0, %struct.callback_head** %head1, align 8
  %tobool.not = icmp eq %struct.callback_head* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %tail = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %srclp, i64 0, i32 1
  %1 = load %struct.callback_head**, %struct.callback_head*** %tail, align 8
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %.sink = phi %struct.callback_head** [ %1, %if.then ], [ %head1, %entry ]
  %2 = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %drclp, i64 0, i32 1
  store %struct.callback_head** %.sink, %struct.callback_head*** %2, align 8
  %len = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %srclp, i64 0, i32 2
  %3 = load i64, i64* %len, align 8
  %len6 = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %drclp, i64 0, i32 2
  store i64 %3, i64* %len6, align 8
  %tobool7.not = icmp eq %struct.callback_head* %rhp, null
  br i1 %tobool7.not, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.end
  call void @rcu_cblist_init(%struct.rcu_cblist* noundef %srclp) #7
  br label %if.end18

if.else9:                                         ; preds = %if.end
  %next = getelementptr inbounds %struct.callback_head, %struct.callback_head* %rhp, i64 0, i32 0
  store %struct.callback_head* null, %struct.callback_head** %next, align 8
  store %struct.callback_head* %rhp, %struct.callback_head** %head, align 8
  %tail12 = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %srclp, i64 0, i32 1
  store %struct.callback_head** %next, %struct.callback_head*** %tail12, align 8
  store volatile i64 1, i64* %len, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.else9, %if.then8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local %struct.callback_head* @rcu_cblist_dequeue(%struct.rcu_cblist* noundef %rclp) local_unnamed_addr #2 {
entry:
  %head = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %rclp, i64 0, i32 0
  %0 = load %struct.callback_head*, %struct.callback_head** %head, align 8
  %tobool.not = icmp eq %struct.callback_head* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %rclp, i64 0, i32 2
  %1 = load i64, i64* %len, align 8
  %dec = add i64 %1, -1
  store i64 %dec, i64* %len, align 8
  %next = getelementptr inbounds %struct.callback_head, %struct.callback_head* %0, i64 0, i32 0
  %2 = load %struct.callback_head*, %struct.callback_head** %next, align 8
  store %struct.callback_head* %2, %struct.callback_head** %head, align 8
  %tobool3.not = icmp eq %struct.callback_head* %2, null
  br i1 %tobool3.not, label %if.then4, label %cleanup

if.then4:                                         ; preds = %if.end
  %tail = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %rclp, i64 0, i32 1
  store %struct.callback_head** %head, %struct.callback_head*** %tail, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then4, %entry
  ret %struct.callback_head* %0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local i64 @rcu_segcblist_n_segment_cbs(%struct.rcu_segcblist* noundef %rsclp) local_unnamed_addr #1 {
entry:
  %call = call fastcc i64 @rcu_segcblist_get_seglen(%struct.rcu_segcblist* noundef %rsclp, i32 noundef 0) #7
  %call.1 = call fastcc i64 @rcu_segcblist_get_seglen(%struct.rcu_segcblist* noundef %rsclp, i32 noundef 1) #7
  %add.1 = add i64 %call.1, %call
  %call.2 = call fastcc i64 @rcu_segcblist_get_seglen(%struct.rcu_segcblist* noundef %rsclp, i32 noundef 2) #7
  %add.2 = add i64 %call.2, %add.1
  %call.3 = call fastcc i64 @rcu_segcblist_get_seglen(%struct.rcu_segcblist* noundef %rsclp, i32 noundef 3) #7
  %add.3 = add i64 %call.3, %add.2
  ret i64 %add.3
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @rcu_segcblist_get_seglen(%struct.rcu_segcblist* noundef %rsclp, i32 noundef %seg) unnamed_addr #4 {
entry:
  %idxprom = sext i32 %seg to i64
  %arrayidx = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 4, i64 %idxprom
  %0 = load volatile i64, i64* %arrayidx, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rcu_segcblist_add_len(%struct.rcu_segcblist* noundef %rsclp, i64 noundef %v) local_unnamed_addr #5 {
entry:
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !7
  %len = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 3
  %0 = load i64, i64* %len, align 8
  %add = add i64 %0, %v
  store volatile i64 %add, i64* %len, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rcu_segcblist_inc_len(%struct.rcu_segcblist* noundef %rsclp) local_unnamed_addr #5 {
entry:
  call void @rcu_segcblist_add_len(%struct.rcu_segcblist* noundef %rsclp, i64 noundef 1) #7
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local void @rcu_segcblist_init(%struct.rcu_segcblist* noundef %rsclp) local_unnamed_addr #1 {
entry:
  %head = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 0
  store %struct.callback_head* null, %struct.callback_head** %head, align 8
  %arrayidx = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 0
  store %struct.callback_head** %head, %struct.callback_head*** %arrayidx, align 8
  call fastcc void @rcu_segcblist_set_seglen(%struct.rcu_segcblist* noundef %rsclp, i32 noundef 0) #7
  %arrayidx.1 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 1
  store %struct.callback_head** %head, %struct.callback_head*** %arrayidx.1, align 8
  call fastcc void @rcu_segcblist_set_seglen(%struct.rcu_segcblist* noundef %rsclp, i32 noundef 1) #7
  %arrayidx.2 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 2
  store %struct.callback_head** %head, %struct.callback_head*** %arrayidx.2, align 8
  call fastcc void @rcu_segcblist_set_seglen(%struct.rcu_segcblist* noundef %rsclp, i32 noundef 2) #7
  %arrayidx.3 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 3
  store %struct.callback_head** %head, %struct.callback_head*** %arrayidx.3, align 8
  call fastcc void @rcu_segcblist_set_seglen(%struct.rcu_segcblist* noundef %rsclp, i32 noundef 3) #7
  call fastcc void @rcu_segcblist_set_len(%struct.rcu_segcblist* noundef %rsclp) #7
  call fastcc void @rcu_segcblist_set_flags(%struct.rcu_segcblist* noundef %rsclp, i32 noundef 1) #7
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @rcu_segcblist_set_seglen(%struct.rcu_segcblist* noundef %rsclp, i32 noundef %seg) unnamed_addr #1 {
entry:
  %idxprom = sext i32 %seg to i64
  %arrayidx = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 4, i64 %idxprom
  store volatile i64 0, i64* %arrayidx, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @rcu_segcblist_set_len(%struct.rcu_segcblist* noundef %rsclp) unnamed_addr #1 {
entry:
  %len = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 3
  store volatile i64 0, i64* %len, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @rcu_segcblist_set_flags(%struct.rcu_segcblist* nocapture noundef %rsclp, i32 noundef %flags) unnamed_addr #2 {
entry:
  %flags1 = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 5
  %0 = load i8, i8* %flags1, align 8
  %1 = trunc i32 %flags to i8
  %conv2 = or i8 %0, %1
  store i8 %conv2, i8* %flags1, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rcu_segcblist_disable(%struct.rcu_segcblist* noundef %rsclp) local_unnamed_addr #5 {
entry:
  %call = call fastcc i1 @rcu_segcblist_empty(%struct.rcu_segcblist* noundef %rsclp) #7
  br i1 %call, label %if.end, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/rcu_segcblist.c\22; .popsection; .long 14472b - 14470b; .short 258; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #8, !srcloc !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call16 = call fastcc i64 @rcu_segcblist_n_cbs(%struct.rcu_segcblist* noundef %rsclp) #7
  %tobool17.not = icmp eq i64 %call16, 0
  br i1 %tobool17.not, label %if.end31, label %if.then30, !prof !9

if.then30:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/rcu_segcblist.c\22; .popsection; .long 14472b - 14470b; .short 259; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #8, !srcloc !11
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end
  call fastcc void @rcu_segcblist_clear_flags(%struct.rcu_segcblist* noundef %rsclp, i32 noundef 1) #7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @rcu_segcblist_empty(%struct.rcu_segcblist* noundef %rsclp) unnamed_addr #4 {
entry:
  %head = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 0
  %0 = load volatile %struct.callback_head*, %struct.callback_head** %head, align 8
  %tobool.not = icmp eq %struct.callback_head* %0, null
  ret i1 %tobool.not
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @rcu_segcblist_n_cbs(%struct.rcu_segcblist* noundef %rsclp) unnamed_addr #4 {
entry:
  %len = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 3
  %0 = load volatile i64, i64* %len, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @rcu_segcblist_clear_flags(%struct.rcu_segcblist* nocapture noundef %rsclp, i32 noundef %flags) unnamed_addr #2 {
entry:
  %flags1 = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 5
  %0 = load i8, i8* %flags1, align 8
  %1 = trunc i32 %flags to i8
  %2 = xor i8 %1, -1
  %conv2 = and i8 %0, %2
  store i8 %conv2, i8* %flags1, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @rcu_segcblist_offload(%struct.rcu_segcblist* nocapture noundef %rsclp, i1 noundef %offload) local_unnamed_addr #2 {
entry:
  br i1 %offload, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call fastcc void @rcu_segcblist_clear_flags(%struct.rcu_segcblist* noundef %rsclp, i32 noundef 2) #7
  call fastcc void @rcu_segcblist_set_flags(%struct.rcu_segcblist* noundef %rsclp, i32 noundef 16) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call fastcc void @rcu_segcblist_clear_flags(%struct.rcu_segcblist* noundef %rsclp, i32 noundef 16) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i1 @rcu_segcblist_ready_cbs(%struct.rcu_segcblist* noundef %rsclp) local_unnamed_addr #4 {
entry:
  %call = call fastcc i1 @rcu_segcblist_is_enabled(%struct.rcu_segcblist* noundef %rsclp) #7
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %head = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 0
  %arrayidx = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 0
  %0 = load volatile %struct.callback_head**, %struct.callback_head*** %arrayidx, align 8
  %cmp = icmp ne %struct.callback_head** %head, %0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @rcu_segcblist_is_enabled(%struct.rcu_segcblist* noundef %rsclp) unnamed_addr #4 {
entry:
  %call = call fastcc i1 @rcu_segcblist_test_flags(%struct.rcu_segcblist* noundef %rsclp) #7
  ret i1 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i1 @rcu_segcblist_pend_cbs(%struct.rcu_segcblist* noundef %rsclp) local_unnamed_addr #4 {
entry:
  %call = call fastcc i1 @rcu_segcblist_is_enabled(%struct.rcu_segcblist* noundef %rsclp) #7
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %call1 = call fastcc i1 @rcu_segcblist_restempty(%struct.rcu_segcblist* noundef %rsclp, i32 noundef 0) #7
  %lnot = xor i1 %call1, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  ret i1 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @rcu_segcblist_restempty(%struct.rcu_segcblist* noundef %rsclp, i32 noundef %seg) unnamed_addr #4 {
entry:
  %0 = zext i32 %seg to i64
  %arrayidx = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 %0
  %1 = load volatile %struct.callback_head**, %struct.callback_head*** %arrayidx, align 8
  %2 = load volatile %struct.callback_head*, %struct.callback_head** %1, align 8
  %tobool.not = icmp eq %struct.callback_head* %2, null
  ret i1 %tobool.not
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local %struct.callback_head* @rcu_segcblist_first_cb(%struct.rcu_segcblist* noundef %rsclp) local_unnamed_addr #4 {
entry:
  %call = call fastcc i1 @rcu_segcblist_is_enabled(%struct.rcu_segcblist* noundef %rsclp) #7
  br i1 %call, label %if.then, label %return

if.then:                                          ; preds = %entry
  %head = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 0
  %0 = load %struct.callback_head*, %struct.callback_head** %head, align 8
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.callback_head* [ %0, %if.then ], [ null, %entry ]
  ret %struct.callback_head* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local %struct.callback_head* @rcu_segcblist_first_pend_cb(%struct.rcu_segcblist* noundef %rsclp) local_unnamed_addr #4 {
entry:
  %call = call fastcc i1 @rcu_segcblist_is_enabled(%struct.rcu_segcblist* noundef %rsclp) #7
  br i1 %call, label %if.then, label %return

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 0
  %0 = load %struct.callback_head**, %struct.callback_head*** %arrayidx, align 8
  %1 = load %struct.callback_head*, %struct.callback_head** %0, align 8
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.callback_head* [ %1, %if.then ], [ null, %entry ]
  ret %struct.callback_head* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i1 @rcu_segcblist_nextgp(%struct.rcu_segcblist* noundef %rsclp, i64* nocapture noundef writeonly %lp) local_unnamed_addr #4 {
entry:
  %call = call i1 @rcu_segcblist_pend_cbs(%struct.rcu_segcblist* noundef %rsclp) #7
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 2, i64 1
  %0 = load i64, i64* %arrayidx, align 8
  store i64 %0, i64* %lp, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rcu_segcblist_enqueue(%struct.rcu_segcblist* noundef %rsclp, %struct.callback_head* noundef %rhp) local_unnamed_addr #5 {
entry:
  call void @rcu_segcblist_inc_len(%struct.rcu_segcblist* noundef %rsclp) #7
  call fastcc void @rcu_segcblist_inc_seglen(%struct.rcu_segcblist* noundef %rsclp, i32 noundef 3) #7
  %next = getelementptr inbounds %struct.callback_head, %struct.callback_head* %rhp, i64 0, i32 0
  store %struct.callback_head* null, %struct.callback_head** %next, align 8
  %arrayidx = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 3
  %0 = load %struct.callback_head**, %struct.callback_head*** %arrayidx, align 8
  store volatile %struct.callback_head* %rhp, %struct.callback_head** %0, align 8
  store volatile %struct.callback_head** %next, %struct.callback_head*** %arrayidx, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @rcu_segcblist_inc_seglen(%struct.rcu_segcblist* noundef %rsclp, i32 noundef %seg) unnamed_addr #1 {
entry:
  call fastcc void @rcu_segcblist_add_seglen(%struct.rcu_segcblist* noundef %rsclp, i32 noundef %seg, i64 noundef 1) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @rcu_segcblist_entrain(%struct.rcu_segcblist* noundef %rsclp, %struct.callback_head* noundef %rhp) local_unnamed_addr #5 {
entry:
  %call = call fastcc i64 @rcu_segcblist_n_cbs(%struct.rcu_segcblist* noundef %rsclp) #7
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @rcu_segcblist_inc_len(%struct.rcu_segcblist* noundef %rsclp) #7
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %next = getelementptr inbounds %struct.callback_head, %struct.callback_head* %rhp, i64 0, i32 0
  store %struct.callback_head* null, %struct.callback_head** %next, align 8
  %arrayidx = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 3
  %0 = load %struct.callback_head**, %struct.callback_head*** %arrayidx, align 8
  %arrayidx4 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 2
  %1 = load %struct.callback_head**, %struct.callback_head*** %arrayidx4, align 8
  %cmp5.not = icmp eq %struct.callback_head** %0, %1
  br i1 %cmp5.not, label %for.cond.1, label %do.body24.preheader

for.cond.1:                                       ; preds = %if.end
  %arrayidx4.1 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 1
  %2 = load %struct.callback_head**, %struct.callback_head*** %arrayidx4.1, align 8
  %cmp5.not.1 = icmp eq %struct.callback_head** %0, %2
  br i1 %cmp5.not.1, label %for.cond.2, label %do.body24.preheader

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx4.2 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 0
  %3 = load %struct.callback_head**, %struct.callback_head*** %arrayidx4.2, align 8
  %cmp5.not.2 = icmp ne %struct.callback_head** %0, %3
  %spec.select = zext i1 %cmp5.not.2 to i32
  br label %do.body24.preheader

do.body24.preheader:                              ; preds = %for.cond.2, %if.end, %for.cond.1
  %i.0.lcssa = phi i32 [ 3, %if.end ], [ 2, %for.cond.1 ], [ %spec.select, %for.cond.2 ]
  call fastcc void @rcu_segcblist_inc_seglen(%struct.rcu_segcblist* noundef %rsclp, i32 noundef %i.0.lcssa) #7
  %4 = zext i32 %i.0.lcssa to i64
  %arrayidx12 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 %4
  %5 = load %struct.callback_head**, %struct.callback_head*** %arrayidx12, align 8
  store volatile %struct.callback_head* %rhp, %struct.callback_head** %5, align 8
  %6 = zext i32 %i.0.lcssa to i64
  %arrayidx28 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 %6
  store volatile %struct.callback_head** %next, %struct.callback_head*** %arrayidx28, align 8
  %indvars.iv.next = add nuw nsw i64 %6, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %cleanup, label %do.body24.1

do.body24.1:                                      ; preds = %do.body24.preheader
  %arrayidx28.1 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 %indvars.iv.next
  store volatile %struct.callback_head** %next, %struct.callback_head*** %arrayidx28.1, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %6, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 4
  br i1 %exitcond.not.1, label %cleanup, label %do.body24.2

do.body24.2:                                      ; preds = %do.body24.1
  %arrayidx28.2 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 %indvars.iv.next.1
  store volatile %struct.callback_head** %next, %struct.callback_head*** %arrayidx28.2, align 8
  %indvars.iv.next.2 = add nuw nsw i64 %6, 3
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 4
  br i1 %exitcond.not.2, label %cleanup, label %do.body24.3

do.body24.3:                                      ; preds = %do.body24.2
  %arrayidx28.3 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 %indvars.iv.next.2
  store volatile %struct.callback_head** %next, %struct.callback_head*** %arrayidx28.3, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body24.preheader, %do.body24.1, %do.body24.2, %do.body24.3, %entry
  %7 = xor i1 %cmp, true
  ret i1 %7
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local void @rcu_segcblist_extract_done_cbs(%struct.rcu_segcblist* noundef %rsclp, %struct.rcu_cblist* nocapture noundef %rclp) local_unnamed_addr #1 {
entry:
  %call = call i1 @rcu_segcblist_ready_cbs(%struct.rcu_segcblist* noundef %rsclp) #7
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i64 @rcu_segcblist_get_seglen(%struct.rcu_segcblist* noundef %rsclp, i32 noundef 0) #7
  %len = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %rclp, i64 0, i32 2
  store i64 %call1, i64* %len, align 8
  %head = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 0
  %0 = load %struct.callback_head*, %struct.callback_head** %head, align 8
  %tail = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %rclp, i64 0, i32 1
  %1 = load %struct.callback_head**, %struct.callback_head*** %tail, align 8
  store %struct.callback_head* %0, %struct.callback_head** %1, align 8
  %arrayidx = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 0
  %2 = load %struct.callback_head**, %struct.callback_head*** %arrayidx, align 8
  %3 = load %struct.callback_head*, %struct.callback_head** %2, align 8
  store volatile %struct.callback_head* %3, %struct.callback_head** %head, align 8
  store volatile %struct.callback_head* null, %struct.callback_head** %2, align 8
  %4 = load %struct.callback_head**, %struct.callback_head*** %arrayidx, align 8
  store %struct.callback_head** %4, %struct.callback_head*** %tail, align 8
  %arrayidx24 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 3
  %5 = load %struct.callback_head**, %struct.callback_head*** %arrayidx24, align 8
  %6 = load %struct.callback_head**, %struct.callback_head*** %arrayidx, align 8
  %cmp27 = icmp eq %struct.callback_head** %5, %6
  br i1 %cmp27, label %do.body33, label %for.inc

do.body33:                                        ; preds = %if.end
  store volatile %struct.callback_head** %head, %struct.callback_head*** %arrayidx24, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end, %do.body33
  %arrayidx24.1 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 2
  %7 = load %struct.callback_head**, %struct.callback_head*** %arrayidx24.1, align 8
  %cmp27.1 = icmp eq %struct.callback_head** %7, %6
  br i1 %cmp27.1, label %do.body33.1, label %for.inc.1

do.body33.1:                                      ; preds = %for.inc
  store volatile %struct.callback_head** %head, %struct.callback_head*** %arrayidx24.1, align 8
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.body33.1, %for.inc
  %arrayidx24.2 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 1
  %8 = load %struct.callback_head**, %struct.callback_head*** %arrayidx24.2, align 8
  %cmp27.2 = icmp eq %struct.callback_head** %8, %6
  br i1 %cmp27.2, label %do.body33.2, label %for.inc.3

do.body33.2:                                      ; preds = %for.inc.1
  store volatile %struct.callback_head** %head, %struct.callback_head*** %arrayidx24.2, align 8
  br label %for.inc.3

for.inc.3:                                        ; preds = %do.body33.2, %for.inc.1
  store volatile %struct.callback_head** %head, %struct.callback_head*** %arrayidx, align 8
  call fastcc void @rcu_segcblist_set_seglen(%struct.rcu_segcblist* noundef %rsclp, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.inc.3
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local void @rcu_segcblist_extract_pend_cbs(%struct.rcu_segcblist* noundef %rsclp, %struct.rcu_cblist* nocapture noundef %rclp) local_unnamed_addr #1 {
entry:
  %call = call i1 @rcu_segcblist_pend_cbs(%struct.rcu_segcblist* noundef %rsclp) #7
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %rclp, i64 0, i32 2
  store i64 0, i64* %len, align 8
  %arrayidx = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 0
  %0 = load %struct.callback_head**, %struct.callback_head*** %arrayidx, align 8
  %1 = load %struct.callback_head*, %struct.callback_head** %0, align 8
  %tail = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %rclp, i64 0, i32 1
  %2 = load %struct.callback_head**, %struct.callback_head*** %tail, align 8
  store %struct.callback_head* %1, %struct.callback_head** %2, align 8
  %arrayidx2 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 3
  %3 = load %struct.callback_head**, %struct.callback_head*** %arrayidx2, align 8
  store %struct.callback_head** %3, %struct.callback_head*** %tail, align 8
  %4 = load %struct.callback_head**, %struct.callback_head*** %arrayidx, align 8
  store volatile %struct.callback_head* null, %struct.callback_head** %4, align 8
  %call12 = call fastcc i64 @rcu_segcblist_get_seglen(%struct.rcu_segcblist* noundef %rsclp, i32 noundef 1) #7
  %5 = load i64, i64* %len, align 8
  %add = add i64 %5, %call12
  store i64 %add, i64* %len, align 8
  %6 = load %struct.callback_head**, %struct.callback_head*** %arrayidx, align 8
  %arrayidx22 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 1
  store volatile %struct.callback_head** %6, %struct.callback_head*** %arrayidx22, align 8
  call fastcc void @rcu_segcblist_set_seglen(%struct.rcu_segcblist* noundef %rsclp, i32 noundef 1) #7
  %call12.1 = call fastcc i64 @rcu_segcblist_get_seglen(%struct.rcu_segcblist* noundef %rsclp, i32 noundef 2) #7
  %7 = load i64, i64* %len, align 8
  %add.1 = add i64 %7, %call12.1
  store i64 %add.1, i64* %len, align 8
  %8 = load %struct.callback_head**, %struct.callback_head*** %arrayidx, align 8
  %arrayidx22.1 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 2
  store volatile %struct.callback_head** %8, %struct.callback_head*** %arrayidx22.1, align 8
  call fastcc void @rcu_segcblist_set_seglen(%struct.rcu_segcblist* noundef %rsclp, i32 noundef 2) #7
  %call12.2 = call fastcc i64 @rcu_segcblist_get_seglen(%struct.rcu_segcblist* noundef %rsclp, i32 noundef 3) #7
  %9 = load i64, i64* %len, align 8
  %add.2 = add i64 %9, %call12.2
  store i64 %add.2, i64* %len, align 8
  %10 = load %struct.callback_head**, %struct.callback_head*** %arrayidx, align 8
  store volatile %struct.callback_head** %10, %struct.callback_head*** %arrayidx2, align 8
  call fastcc void @rcu_segcblist_set_seglen(%struct.rcu_segcblist* noundef %rsclp, i32 noundef 3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rcu_segcblist_insert_count(%struct.rcu_segcblist* noundef %rsclp, %struct.rcu_cblist* nocapture noundef readonly %rclp) local_unnamed_addr #5 {
entry:
  %len = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %rclp, i64 0, i32 2
  %0 = load i64, i64* %len, align 8
  call void @rcu_segcblist_add_len(%struct.rcu_segcblist* noundef %rsclp, i64 noundef %0) #7
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local void @rcu_segcblist_insert_done_cbs(%struct.rcu_segcblist* noundef %rsclp, %struct.rcu_cblist* noundef %rclp) local_unnamed_addr #1 {
entry:
  %head = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %rclp, i64 0, i32 0
  %0 = load %struct.callback_head*, %struct.callback_head** %head, align 8
  %tobool.not = icmp eq %struct.callback_head* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %rclp, i64 0, i32 2
  %1 = load i64, i64* %len, align 8
  call fastcc void @rcu_segcblist_add_seglen(%struct.rcu_segcblist* noundef %rsclp, i32 noundef 0, i64 noundef %1) #7
  %head1 = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 0
  %2 = load %struct.callback_head*, %struct.callback_head** %head1, align 8
  %tail = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %rclp, i64 0, i32 1
  %3 = load %struct.callback_head**, %struct.callback_head*** %tail, align 8
  store %struct.callback_head* %2, %struct.callback_head** %3, align 8
  %4 = load %struct.callback_head*, %struct.callback_head** %head, align 8
  store volatile %struct.callback_head* %4, %struct.callback_head** %head1, align 8
  %arrayidx = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 0
  %5 = load %struct.callback_head**, %struct.callback_head*** %arrayidx, align 8
  %cmp11 = icmp eq %struct.callback_head** %head1, %5
  br i1 %cmp11, label %do.body17, label %for.end

do.body17:                                        ; preds = %if.end
  %6 = load %struct.callback_head**, %struct.callback_head*** %tail, align 8
  store volatile %struct.callback_head** %6, %struct.callback_head*** %arrayidx, align 8
  %arrayidx.1 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 1
  %7 = load %struct.callback_head**, %struct.callback_head*** %arrayidx.1, align 8
  %cmp11.1 = icmp eq %struct.callback_head** %head1, %7
  br i1 %cmp11.1, label %do.body17.1, label %for.end

do.body17.1:                                      ; preds = %do.body17
  %8 = load %struct.callback_head**, %struct.callback_head*** %tail, align 8
  store volatile %struct.callback_head** %8, %struct.callback_head*** %arrayidx.1, align 8
  %arrayidx.2 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 2
  %9 = load %struct.callback_head**, %struct.callback_head*** %arrayidx.2, align 8
  %cmp11.2 = icmp eq %struct.callback_head** %head1, %9
  br i1 %cmp11.2, label %do.body17.2, label %for.end

do.body17.2:                                      ; preds = %do.body17.1
  %10 = load %struct.callback_head**, %struct.callback_head*** %tail, align 8
  store volatile %struct.callback_head** %10, %struct.callback_head*** %arrayidx.2, align 8
  %arrayidx.3 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 3
  %11 = load %struct.callback_head**, %struct.callback_head*** %arrayidx.3, align 8
  %cmp11.3 = icmp eq %struct.callback_head** %head1, %11
  br i1 %cmp11.3, label %do.body17.3, label %for.end

do.body17.3:                                      ; preds = %do.body17.2
  %12 = load %struct.callback_head**, %struct.callback_head*** %tail, align 8
  store volatile %struct.callback_head** %12, %struct.callback_head*** %arrayidx.3, align 8
  br label %for.end

for.end:                                          ; preds = %do.body17.3, %do.body17.2, %do.body17.1, %do.body17, %if.end
  store %struct.callback_head* null, %struct.callback_head** %head, align 8
  store %struct.callback_head** %head, %struct.callback_head*** %tail, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @rcu_segcblist_add_seglen(%struct.rcu_segcblist* noundef %rsclp, i32 noundef %seg, i64 noundef %v) unnamed_addr #1 {
entry:
  %idxprom = sext i32 %seg to i64
  %arrayidx = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 4, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, %v
  store volatile i64 %add, i64* %arrayidx, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local void @rcu_segcblist_insert_pend_cbs(%struct.rcu_segcblist* noundef %rsclp, %struct.rcu_cblist* nocapture noundef readonly %rclp) local_unnamed_addr #1 {
entry:
  %head = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %rclp, i64 0, i32 0
  %0 = load %struct.callback_head*, %struct.callback_head** %head, align 8
  %tobool.not = icmp eq %struct.callback_head* %0, null
  br i1 %tobool.not, label %do.end13, label %if.end

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %rclp, i64 0, i32 2
  %1 = load i64, i64* %len, align 8
  call fastcc void @rcu_segcblist_add_seglen(%struct.rcu_segcblist* noundef %rsclp, i32 noundef 3, i64 noundef %1) #7
  %2 = load %struct.callback_head*, %struct.callback_head** %head, align 8
  %arrayidx = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 3
  %3 = load %struct.callback_head**, %struct.callback_head*** %arrayidx, align 8
  store volatile %struct.callback_head* %2, %struct.callback_head** %3, align 8
  %tail = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %rclp, i64 0, i32 1
  %4 = load %struct.callback_head**, %struct.callback_head*** %tail, align 8
  store volatile %struct.callback_head** %4, %struct.callback_head*** %arrayidx, align 8
  br label %do.end13

do.end13:                                         ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rcu_segcblist_advance(%struct.rcu_segcblist* noundef %rsclp, i64 noundef %seq) local_unnamed_addr #5 {
entry:
  %call = call fastcc i1 @rcu_segcblist_is_enabled(%struct.rcu_segcblist* noundef %rsclp) #7
  br i1 %call, label %if.end, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/rcu_segcblist.c\22; .popsection; .long 14472b - 14470b; .short 486; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #8, !srcloc !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call15 = call fastcc i1 @rcu_segcblist_restempty(%struct.rcu_segcblist* noundef %rsclp, i32 noundef 0) #7
  br i1 %call15, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %arrayidx28 = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 0
  %arrayidx = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 2, i64 1
  %0 = load i64, i64* %arrayidx, align 8
  %sub = sub i64 %seq, %0
  %cmp19 = icmp slt i64 %sub, 0
  br i1 %cmp19, label %cleanup, label %do.body24

do.body24:                                        ; preds = %for.cond.preheader
  %arrayidx26 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 1
  %1 = load %struct.callback_head**, %struct.callback_head*** %arrayidx26, align 8
  store volatile %struct.callback_head** %1, %struct.callback_head*** %arrayidx28, align 8
  call fastcc void @rcu_segcblist_move_seglen(%struct.rcu_segcblist* noundef %rsclp, i32 noundef 1, i32 noundef 0) #7
  %arrayidx.1 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 2, i64 2
  %2 = load i64, i64* %arrayidx.1, align 8
  %sub.1 = sub i64 %seq, %2
  %cmp19.1 = icmp slt i64 %sub.1, 0
  br i1 %cmp19.1, label %do.body45.lr.ph, label %do.body24.1

do.body24.1:                                      ; preds = %do.body24
  %arrayidx26.1 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 2
  %3 = load %struct.callback_head**, %struct.callback_head*** %arrayidx26.1, align 8
  store volatile %struct.callback_head** %3, %struct.callback_head*** %arrayidx28, align 8
  call fastcc void @rcu_segcblist_move_seglen(%struct.rcu_segcblist* noundef %rsclp, i32 noundef 2, i32 noundef 0) #7
  br label %do.body45.lr.ph

do.body45.lr.ph:                                  ; preds = %do.body24, %do.body24.1
  %4 = load %struct.callback_head**, %struct.callback_head*** %arrayidx28, align 8
  %arrayidx50 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 1
  store volatile %struct.callback_head** %4, %struct.callback_head*** %arrayidx50, align 8
  br i1 %cmp19.1, label %for.body61.lr.ph, label %do.body45.1

for.body61.lr.ph:                                 ; preds = %do.body45.lr.ph
  %arrayidx66 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 3
  %arrayidx64 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 1
  %5 = load %struct.callback_head**, %struct.callback_head*** %arrayidx64, align 8
  %6 = load %struct.callback_head**, %struct.callback_head*** %arrayidx66, align 8
  %cmp67 = icmp eq %struct.callback_head** %5, %6
  br i1 %cmp67, label %cleanup, label %do.body75

do.body45.1:                                      ; preds = %do.body45.lr.ph
  %arrayidx50.1 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 2
  store volatile %struct.callback_head** %4, %struct.callback_head*** %arrayidx50.1, align 8
  br label %cleanup

do.body75:                                        ; preds = %for.body61.lr.ph
  %arrayidx88 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 2, i64 2
  %arrayidx78 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 2
  %7 = load %struct.callback_head**, %struct.callback_head*** %arrayidx78, align 8
  store volatile %struct.callback_head** %7, %struct.callback_head*** %arrayidx64, align 8
  call fastcc void @rcu_segcblist_move_seglen(%struct.rcu_segcblist* noundef %rsclp, i32 noundef 2, i32 noundef 1) #7
  %8 = load i64, i64* %arrayidx88, align 8
  store i64 %8, i64* %arrayidx, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body45.1, %for.cond.preheader, %do.body75, %for.body61.lr.ph, %if.end
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @rcu_segcblist_move_seglen(%struct.rcu_segcblist* noundef %rsclp, i32 noundef %from, i32 noundef %to) unnamed_addr #1 {
entry:
  %cmp = icmp eq i32 %from, %to
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i64 @rcu_segcblist_get_seglen(%struct.rcu_segcblist* noundef %rsclp, i32 noundef %from) #7
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  call fastcc void @rcu_segcblist_add_seglen(%struct.rcu_segcblist* noundef %rsclp, i32 noundef %to, i64 noundef %call) #7
  call fastcc void @rcu_segcblist_set_seglen(%struct.rcu_segcblist* noundef %rsclp, i32 noundef %from) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end2
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @rcu_segcblist_accelerate(%struct.rcu_segcblist* noundef %rsclp, i64 noundef %seq) local_unnamed_addr #5 {
entry:
  %call = call fastcc i1 @rcu_segcblist_is_enabled(%struct.rcu_segcblist* noundef %rsclp) #7
  br i1 %call, label %if.end, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/rcu_segcblist.c\22; .popsection; .long 14472b - 14470b; .short 543; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #8, !srcloc !14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call15 = call fastcc i1 @rcu_segcblist_restempty(%struct.rcu_segcblist* noundef %rsclp, i32 noundef 0) #7
  br i1 %call15, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %arrayidx = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 2
  %0 = load %struct.callback_head**, %struct.callback_head*** %arrayidx, align 8
  %arrayidx21 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 1
  %1 = load %struct.callback_head**, %struct.callback_head*** %arrayidx21, align 8
  %cmp22.not = icmp eq %struct.callback_head** %0, %1
  br i1 %cmp22.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.preheader
  %arrayidx25 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 2, i64 2
  %2 = load i64, i64* %arrayidx25, align 8
  %sub26 = sub i64 %2, %seq
  %cmp27 = icmp slt i64 %sub26, 0
  br i1 %cmp27, label %for.end.thread, label %for.inc

for.inc:                                          ; preds = %for.body.preheader, %land.lhs.true
  %arrayidx21.1 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 0
  %3 = load %struct.callback_head**, %struct.callback_head*** %arrayidx21.1, align 8
  %cmp22.not.1 = icmp eq %struct.callback_head** %1, %3
  br i1 %cmp22.not.1, label %for.inc.1, label %land.lhs.true.1

land.lhs.true.1:                                  ; preds = %for.inc
  %arrayidx25.1 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 2, i64 1
  %4 = load i64, i64* %arrayidx25.1, align 8
  %sub26.1 = sub i64 %4, %seq
  %cmp27.1 = icmp slt i64 %sub26.1, 0
  br i1 %cmp27.1, label %for.end, label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true.1, %for.inc
  br label %for.end

for.end:                                          ; preds = %for.inc.1, %land.lhs.true.1
  %i.0.lcssa = phi i32 [ 0, %for.inc.1 ], [ 1, %land.lhs.true.1 ]
  %call31 = call fastcc i1 @rcu_segcblist_restempty(%struct.rcu_segcblist* noundef %rsclp, i32 noundef %i.0.lcssa) #7
  br i1 %call31, label %cleanup, label %for.body40.preheader

for.end.thread:                                   ; preds = %land.lhs.true
  %call31106 = call fastcc i1 @rcu_segcblist_restempty(%struct.rcu_segcblist* noundef %rsclp, i32 noundef 2) #7
  br label %cleanup

for.body40.preheader:                             ; preds = %for.end
  %inc = add nuw nsw i32 %i.0.lcssa, 1
  %add = or i32 %i.0.lcssa, 2
  call fastcc void @rcu_segcblist_move_seglen(%struct.rcu_segcblist* noundef %rsclp, i32 noundef %add, i32 noundef %inc) #7
  %inc42 = add nuw nsw i32 %i.0.lcssa, 3
  %exitcond.not = icmp eq i32 %inc42, 4
  br i1 %exitcond.not, label %do.body49.lr.ph, label %for.body40.1

do.body49.lr.ph:                                  ; preds = %for.body40.1, %for.body40.preheader
  %arrayidx51 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 3
  %narrow = add nuw nsw i32 %i.0.lcssa, 1
  %5 = zext i32 %narrow to i64
  %6 = load %struct.callback_head**, %struct.callback_head*** %arrayidx51, align 8
  %arrayidx54 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 %5
  store volatile %struct.callback_head** %6, %struct.callback_head*** %arrayidx54, align 8
  %arrayidx61 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 2, i64 %5
  store i64 %seq, i64* %arrayidx61, align 8
  %indvars.iv.next = add nuw nsw i64 %5, 1
  %exitcond102.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond102.not, label %cleanup, label %do.body49.1

for.body40.1:                                     ; preds = %for.body40.preheader
  call fastcc void @rcu_segcblist_move_seglen(%struct.rcu_segcblist* noundef %rsclp, i32 noundef %inc42, i32 noundef %inc) #7
  br label %do.body49.lr.ph

do.body49.1:                                      ; preds = %do.body49.lr.ph
  %7 = load %struct.callback_head**, %struct.callback_head*** %arrayidx51, align 8
  %arrayidx54.1 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 %indvars.iv.next
  store volatile %struct.callback_head** %7, %struct.callback_head*** %arrayidx54.1, align 8
  %arrayidx61.1 = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 2, i64 %indvars.iv.next
  store i64 %seq, i64* %arrayidx61.1, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body49.lr.ph, %do.body49.1, %for.end.thread, %for.end, %if.end
  %retval.0 = phi i1 [ false, %if.end ], [ false, %for.end ], [ false, %for.end.thread ], [ true, %do.body49.1 ], [ true, %do.body49.lr.ph ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rcu_segcblist_merge(%struct.rcu_segcblist* noundef %dst_rsclp, %struct.rcu_segcblist* noundef %src_rsclp) local_unnamed_addr #5 {
entry:
  %donecbs = alloca %struct.rcu_cblist, align 8
  %pendcbs = alloca %struct.rcu_cblist, align 8
  %0 = bitcast %struct.rcu_cblist* %donecbs to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !15
  %1 = bitcast %struct.rcu_cblist* %pendcbs to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false), !annotation !15
  call void @rcu_cblist_init(%struct.rcu_cblist* noundef nonnull %donecbs) #7
  call void @rcu_cblist_init(%struct.rcu_cblist* noundef nonnull %pendcbs) #7
  call void @rcu_segcblist_extract_done_cbs(%struct.rcu_segcblist* noundef %src_rsclp, %struct.rcu_cblist* noundef nonnull %donecbs) #7
  call void @rcu_segcblist_extract_pend_cbs(%struct.rcu_segcblist* noundef %src_rsclp, %struct.rcu_cblist* noundef nonnull %pendcbs) #7
  call fastcc void @rcu_segcblist_set_len(%struct.rcu_segcblist* noundef %src_rsclp) #7
  call void @rcu_segcblist_insert_count(%struct.rcu_segcblist* noundef %dst_rsclp, %struct.rcu_cblist* noundef nonnull %donecbs) #7
  call void @rcu_segcblist_insert_count(%struct.rcu_segcblist* noundef %dst_rsclp, %struct.rcu_cblist* noundef nonnull %pendcbs) #7
  call void @rcu_segcblist_insert_done_cbs(%struct.rcu_segcblist* noundef %dst_rsclp, %struct.rcu_cblist* noundef nonnull %donecbs) #7
  call void @rcu_segcblist_insert_pend_cbs(%struct.rcu_segcblist* noundef %dst_rsclp, %struct.rcu_cblist* noundef nonnull %pendcbs) #7
  call void @rcu_segcblist_init(%struct.rcu_segcblist* noundef %src_rsclp) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @rcu_segcblist_test_flags(%struct.rcu_segcblist* noundef %rsclp) unnamed_addr #4 {
entry:
  %flags1 = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 5
  %0 = load volatile i8, i8* %flags1, align 8
  %1 = and i8 %0, 1
  %tobool = icmp ne i8 %1, 0
  ret i1 %tobool
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 2152281404}
!8 = !{i64 2152283292}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2152290897}
!11 = !{i64 2152292622}
!12 = !{i64 2152300118}
!13 = !{i64 2152327152}
!14 = !{i64 2152334859}
!15 = !{!"auto-init"}
