; ModuleID = 'lib/timerqueue.c'
source_filename = "lib/timerqueue.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.timerqueue_node = type { %struct.rb_node, i64 }

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @timerqueue_add(%struct.timerqueue_head* noundef %head, %struct.timerqueue_node* noundef %node) local_unnamed_addr #0 {
entry:
  %__rb_parent_color = getelementptr inbounds %struct.timerqueue_node, %struct.timerqueue_node* %node, i64 0, i32 0, i32 0
  %0 = load i64, i64* %__rb_parent_color, align 8
  %1 = ptrtoint %struct.timerqueue_node* %node to i64
  %cmp.not = icmp eq i64 %0, %1
  br i1 %cmp.not, label %if.end, label %if.then, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/timerqueue.c\22; .popsection; .long 14472b - 14470b; .short 38; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #4, !srcloc !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %node1 = getelementptr inbounds %struct.timerqueue_node, %struct.timerqueue_node* %node, i64 0, i32 0
  %rb_node.i = getelementptr inbounds %struct.timerqueue_head, %struct.timerqueue_head* %head, i64 0, i32 0, i32 0, i32 0
  %2 = load %struct.rb_node*, %struct.rb_node** %rb_node.i, align 8
  %tobool.not2.i = icmp eq %struct.rb_node* %2, null
  br i1 %tobool.not2.i, label %rb_add_cached.exit, label %while.body.i

while.body.i:                                     ; preds = %if.end, %while.body.i
  %3 = phi %struct.rb_node* [ %4, %while.body.i ], [ %2, %if.end ]
  %leftmost.0.off03.i = phi i1 [ %leftmost.1.off0.i, %while.body.i ], [ true, %if.end ]
  %call.i = call fastcc i1 @__timerqueue_less(%struct.rb_node* noundef %node1, %struct.rb_node* noundef nonnull %3) #5
  %rb_left.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %3, i64 0, i32 2
  %rb_right.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %3, i64 0, i32 1
  %link.1.i = select i1 %call.i, %struct.rb_node** %rb_left.i, %struct.rb_node** %rb_right.i
  %leftmost.1.off0.i = select i1 %call.i, i1 %leftmost.0.off03.i, i1 false
  %4 = load %struct.rb_node*, %struct.rb_node** %link.1.i, align 8
  %tobool.not.i = icmp eq %struct.rb_node* %4, null
  br i1 %tobool.not.i, label %rb_add_cached.exit, label %while.body.i

rb_add_cached.exit:                               ; preds = %while.body.i, %if.end
  %link.0.lcssa.i = phi %struct.rb_node** [ %rb_node.i, %if.end ], [ %link.1.i, %while.body.i ]
  %parent.0.lcssa.i = phi %struct.rb_node* [ null, %if.end ], [ %3, %while.body.i ]
  %leftmost.0.off0.lcssa.i = phi i1 [ true, %if.end ], [ %leftmost.1.off0.i, %while.body.i ]
  %rb_root = getelementptr inbounds %struct.timerqueue_head, %struct.timerqueue_head* %head, i64 0, i32 0
  call fastcc void @rb_link_node(%struct.rb_node* noundef %node1, %struct.rb_node* noundef %parent.0.lcssa.i, %struct.rb_node** noundef %link.0.lcssa.i) #5
  call fastcc void @rb_insert_color_cached(%struct.rb_node* noundef %node1, %struct.rb_root_cached* noundef %rb_root, i1 noundef %leftmost.0.off0.lcssa.i) #5
  %tobool1823 = icmp ne %struct.timerqueue_node* %node, null
  %tobool18 = and i1 %tobool1823, %leftmost.0.off0.lcssa.i
  ret i1 %tobool18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @__timerqueue_less(%struct.rb_node* nocapture noundef readonly %a, %struct.rb_node* nocapture noundef readonly %b) unnamed_addr #1 {
entry:
  %0 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %a, i64 1, i32 0
  %1 = load i64, i64* %0, align 8
  %2 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %b, i64 1, i32 0
  %3 = load i64, i64* %2, align 8
  %cmp = icmp slt i64 %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @timerqueue_del(%struct.timerqueue_head* noundef %head, %struct.timerqueue_node* noundef %node) local_unnamed_addr #0 {
entry:
  %__rb_parent_color = getelementptr inbounds %struct.timerqueue_node, %struct.timerqueue_node* %node, i64 0, i32 0, i32 0
  %0 = load i64, i64* %__rb_parent_color, align 8
  %1 = ptrtoint %struct.timerqueue_node* %node to i64
  %cmp = icmp eq i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/timerqueue.c\22; .popsection; .long 14472b - 14470b; .short 55; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #4, !srcloc !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %node1 = getelementptr inbounds %struct.timerqueue_node, %struct.timerqueue_node* %node, i64 0, i32 0
  %rb_root = getelementptr inbounds %struct.timerqueue_head, %struct.timerqueue_head* %head, i64 0, i32 0
  call fastcc void @rb_erase_cached(%struct.rb_node* noundef %node1, %struct.rb_root_cached* noundef %rb_root) #6
  store i64 %1, i64* %__rb_parent_color, align 8
  %rb_node = getelementptr inbounds %struct.timerqueue_head, %struct.timerqueue_head* %head, i64 0, i32 0, i32 0, i32 0
  %2 = load volatile %struct.rb_node*, %struct.rb_node** %rb_node, align 8
  %cmp23 = icmp ne %struct.rb_node* %2, null
  ret i1 %cmp23
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rb_erase_cached(%struct.rb_node* noundef %node, %struct.rb_root_cached* noundef %root) unnamed_addr #0 {
entry:
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %root, i64 0, i32 1
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_leftmost, align 8
  %cmp = icmp eq %struct.rb_node* %0, %node
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct.rb_node* @rb_next(%struct.rb_node* noundef %node) #5
  store %struct.rb_node* %call, %struct.rb_node** %rb_leftmost, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rb_root = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %root, i64 0, i32 0
  call void @rb_erase(%struct.rb_node* noundef %node, %struct.rb_root* noundef %rb_root) #5
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.timerqueue_node* @timerqueue_iterate_next(%struct.timerqueue_node* noundef %node) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.timerqueue_node* %node, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %node1 = getelementptr inbounds %struct.timerqueue_node, %struct.timerqueue_node* %node, i64 0, i32 0
  %call = call %struct.rb_node* @rb_next(%struct.rb_node* noundef %node1) #5
  %0 = bitcast %struct.rb_node* %call to %struct.timerqueue_node*
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi %struct.timerqueue_node* [ null, %entry ], [ %0, %if.end ]
  ret %struct.timerqueue_node* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.rb_node* @rb_next(%struct.rb_node* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @rb_link_node(%struct.rb_node* noundef %node, %struct.rb_node* noundef %parent, %struct.rb_node** nocapture noundef writeonly %rb_link) unnamed_addr #3 {
entry:
  %0 = ptrtoint %struct.rb_node* %parent to i64
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 0
  store i64 %0, i64* %__rb_parent_color, align 8
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 1
  store %struct.rb_node* null, %struct.rb_node** %rb_right, align 8
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 2
  store %struct.rb_node* null, %struct.rb_node** %rb_left, align 8
  store %struct.rb_node* %node, %struct.rb_node** %rb_link, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rb_insert_color_cached(%struct.rb_node* noundef %node, %struct.rb_root_cached* noundef %root, i1 noundef %leftmost) unnamed_addr #0 {
entry:
  br i1 %leftmost, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %root, i64 0, i32 1
  store %struct.rb_node* %node, %struct.rb_node** %rb_leftmost, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rb_root = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %root, i64 0, i32 0
  call void @rb_insert_color(%struct.rb_node* noundef %node, %struct.rb_root* noundef %rb_root) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(%struct.rb_node* noundef, %struct.rb_root* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(%struct.rb_node* noundef, %struct.rb_root* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"branch_weights", i32 2000, i32 1}
!8 = !{i64 2149467297}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2149469183}
