; ModuleID = 'lib/plist.c'
source_filename = "lib/plist.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.plist_head = type { %struct.list_head }

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @plist_add(%struct.plist_node* noundef %node, %struct.plist_head* noundef %head) local_unnamed_addr #0 {
entry:
  %node_list = getelementptr inbounds %struct.plist_head, %struct.plist_head* %head, i64 0, i32 0
  %call = call fastcc i32 @plist_node_empty(%struct.plist_node* noundef %node) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/plist.c\22; .popsection; .long 14472b - 14470b; .short 79; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #5, !srcloc !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %prio_list = getelementptr inbounds %struct.plist_node, %struct.plist_node* %node, i64 0, i32 1
  %call17 = call fastcc i32 @list_empty(%struct.list_head* noundef %prio_list) #4
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then33, label %if.end34, !prof !7

if.then33:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/plist.c\22; .popsection; .long 14472b - 14470b; .short 80; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #5, !srcloc !9
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end
  %call43 = call fastcc i32 @plist_head_empty(%struct.plist_head* noundef %head) #4
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %ins_node

if.end46:                                         ; preds = %if.end34
  %call47 = call fastcc %struct.plist_node* @plist_first(%struct.plist_head* noundef %head) #4
  %prio = getelementptr inbounds %struct.plist_node, %struct.plist_node* %node, i64 0, i32 0
  %0 = load i32, i32* %prio, align 8
  %prio49102 = getelementptr inbounds %struct.plist_node, %struct.plist_node* %call47, i64 0, i32 0
  %1 = load i32, i32* %prio49102, align 8
  %cmp103 = icmp slt i32 %0, %1
  br i1 %cmp103, label %if.then51, label %if.end53

do.body48:                                        ; preds = %if.end53
  %prio49 = bitcast i8* %add.ptr to i32*
  %2 = load i32, i32* %prio49, align 8
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %if.then51.loopexit, label %if.end53

if.then51.loopexit:                               ; preds = %do.body48
  %3 = bitcast i8* %add.ptr to %struct.plist_node*
  br label %if.then51

if.then51:                                        ; preds = %if.then51.loopexit, %if.end46
  %prev.0.lcssa = phi %struct.plist_node* [ null, %if.end46 ], [ %iter.0104, %if.then51.loopexit ]
  %iter.0.lcssa = phi %struct.plist_node* [ %call47, %if.end46 ], [ %3, %if.then51.loopexit ]
  %node_list52 = getelementptr inbounds %struct.plist_node, %struct.plist_node* %iter.0.lcssa, i64 0, i32 2
  br label %do.end62

if.end53:                                         ; preds = %if.end46, %do.body48
  %iter.0104 = phi %struct.plist_node* [ %6, %do.body48 ], [ %call47, %if.end46 ]
  %next = getelementptr inbounds %struct.plist_node, %struct.plist_node* %iter.0104, i64 0, i32 1, i32 0
  %4 = bitcast %struct.list_head** %next to i8**
  %5 = load i8*, i8** %4, align 8
  %add.ptr = getelementptr i8, i8* %5, i64 -8
  %6 = bitcast i8* %add.ptr to %struct.plist_node*
  %cmp60.not = icmp eq %struct.plist_node* %call47, %6
  br i1 %cmp60.not, label %do.end62, label %do.body48

do.end62:                                         ; preds = %if.end53, %if.then51
  %node_next.0 = phi %struct.list_head* [ %node_list52, %if.then51 ], [ %node_list, %if.end53 ]
  %prev.1 = phi %struct.plist_node* [ %prev.0.lcssa, %if.then51 ], [ %iter.0104, %if.end53 ]
  %iter.1 = phi %struct.plist_node* [ %iter.0.lcssa, %if.then51 ], [ %call47, %if.end53 ]
  %tobool63.not = icmp eq %struct.plist_node* %prev.1, null
  br i1 %tobool63.not, label %if.then68, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end62
  %prio64 = getelementptr inbounds %struct.plist_node, %struct.plist_node* %prev.1, i64 0, i32 0
  %7 = load i32, i32* %prio64, align 8
  %cmp66.not = icmp eq i32 %7, %0
  br i1 %cmp66.not, label %ins_node, label %if.then68

if.then68:                                        ; preds = %lor.lhs.false, %do.end62
  %prio_list70 = getelementptr inbounds %struct.plist_node, %struct.plist_node* %iter.1, i64 0, i32 1
  call fastcc void @list_add_tail(%struct.list_head* noundef %prio_list, %struct.list_head* noundef %prio_list70) #4
  br label %ins_node

ins_node:                                         ; preds = %lor.lhs.false, %if.then68, %if.end34
  %node_next.1 = phi %struct.list_head* [ %node_list, %if.end34 ], [ %node_next.0, %if.then68 ], [ %node_next.0, %lor.lhs.false ]
  %node_list72 = getelementptr inbounds %struct.plist_node, %struct.plist_node* %node, i64 0, i32 2
  call fastcc void @list_add_tail(%struct.list_head* noundef %node_list72, %struct.list_head* noundef %node_next.1) #4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @plist_node_empty(%struct.plist_node* noundef %node) unnamed_addr #1 {
entry:
  %node_list = getelementptr inbounds %struct.plist_node, %struct.plist_node* %node, i64 0, i32 2
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %node_list) #4
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #1 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @plist_head_empty(%struct.plist_head* noundef %head) unnamed_addr #1 {
entry:
  %node_list = getelementptr inbounds %struct.plist_head, %struct.plist_head* %head, i64 0, i32 0
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %node_list) #4
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.plist_node* @plist_first(%struct.plist_head* nocapture noundef readonly %head) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.plist_head* %head to i8**
  %1 = load i8*, i8** %0, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 -24
  %2 = bitcast i8* %add.ptr to %struct.plist_node*
  ret %struct.plist_node* %2
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #3 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #4
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local void @plist_del(%struct.plist_node* noundef %node, %struct.plist_head* noundef readnone %head) local_unnamed_addr #3 {
entry:
  %prio_list = getelementptr inbounds %struct.plist_node, %struct.plist_node* %node, i64 0, i32 1
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %prio_list) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %next = getelementptr inbounds %struct.plist_node, %struct.plist_node* %node, i64 0, i32 2, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  %node_list1 = getelementptr inbounds %struct.plist_head, %struct.plist_head* %head, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %0, %node_list1
  br i1 %cmp.not, label %if.end14, label %if.then2

if.then2:                                         ; preds = %if.then
  %add.ptr = getelementptr %struct.list_head, %struct.list_head* %0, i64 -2, i32 1
  %prio_list8 = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr, i64 1
  %1 = bitcast %struct.list_head** %prio_list8 to %struct.list_head*
  %call9 = call fastcc i32 @list_empty(%struct.list_head* noundef %1) #4
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.then2
  call fastcc void @list_add(%struct.list_head* noundef %1, %struct.list_head* noundef %prio_list) #4
  br label %if.end14

if.end14:                                         ; preds = %if.then2, %if.then11, %if.then
  call fastcc void @list_del_init(%struct.list_head* noundef %prio_list) #4
  br label %if.end16

if.end16:                                         ; preds = %if.end14, %entry
  %node_list17 = getelementptr inbounds %struct.plist_node, %struct.plist_node* %node, i64 0, i32 2
  call fastcc void @list_del_init(%struct.list_head* noundef %node_list17) #4
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #3 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #4
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #3 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #4
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @plist_requeue(%struct.plist_node* noundef %node, %struct.plist_head* noundef %head) local_unnamed_addr #0 {
entry:
  %node_list = getelementptr inbounds %struct.plist_head, %struct.plist_head* %head, i64 0, i32 0
  %call = call fastcc i32 @plist_head_empty(%struct.plist_head* noundef %head) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body12, label %do.body4, !prof !10

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/plist.c\22; .popsection; .long 14472b - 14470b; .short 151; .short 0; .popsection; 14471: brk 0x800", ""() #5, !srcloc !11
  unreachable

do.body12:                                        ; preds = %entry
  %call13 = call fastcc i32 @plist_node_empty(%struct.plist_node* noundef %node) #4
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.end31, label %do.body23, !prof !10

do.body23:                                        ; preds = %do.body12
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/plist.c\22; .popsection; .long 14472b - 14470b; .short 152; .short 0; .popsection; 14471: brk 0x800", ""() #5, !srcloc !12
  unreachable

do.end31:                                         ; preds = %do.body12
  %call32 = call fastcc %struct.plist_node* @plist_last(%struct.plist_head* noundef %head) #4
  %cmp = icmp eq %struct.plist_node* %call32, %node
  br i1 %cmp, label %cleanup, label %if.end35

if.end35:                                         ; preds = %do.end31
  %node_list36 = getelementptr inbounds %struct.plist_node, %struct.plist_node* %node, i64 0, i32 2
  %0 = bitcast %struct.list_head* %node_list36 to i8**
  %1 = load i8*, i8** %0, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 -24
  %prio = getelementptr inbounds %struct.plist_node, %struct.plist_node* %node, i64 0, i32 0
  %2 = load i32, i32* %prio, align 8
  %prio40 = bitcast i8* %add.ptr to i32*
  %3 = load i32, i32* %prio40, align 8
  %cmp41.not = icmp eq i32 %2, %3
  br i1 %cmp41.not, label %if.end44, label %cleanup

if.end44:                                         ; preds = %if.end35
  call void @plist_del(%struct.plist_node* noundef %node, %struct.plist_head* noundef %head) #4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end44
  %.pn.in.in = phi i8* [ %1, %if.end44 ], [ %.pn, %for.body ]
  %.pn.in = bitcast i8* %.pn.in.in to i8**
  %.pn = load i8*, i8** %.pn.in, align 8
  %4 = bitcast i8* %.pn to %struct.list_head*
  %cmp55.not = icmp eq %struct.list_head* %node_list, %4
  br i1 %cmp55.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %iter.0.in = getelementptr i8, i8* %.pn, i64 -24
  %5 = load i32, i32* %prio, align 8
  %prio60 = bitcast i8* %iter.0.in to i32*
  %6 = load i32, i32* %prio60, align 8
  %cmp61.not = icmp eq i32 %5, %6
  br i1 %cmp61.not, label %for.cond, label %for.end.split.loop.exit102

for.end.split.loop.exit102:                       ; preds = %for.body
  %7 = bitcast i8* %.pn to %struct.list_head*
  br label %for.end

for.end:                                          ; preds = %for.cond, %for.end.split.loop.exit102
  %node_next.0 = phi %struct.list_head* [ %7, %for.end.split.loop.exit102 ], [ %node_list, %for.cond ]
  call fastcc void @list_add_tail(%struct.list_head* noundef %node_list36, %struct.list_head* noundef %node_next.0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %do.end31, %for.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.plist_node* @plist_last(%struct.plist_head* nocapture noundef readonly %head) unnamed_addr #2 {
entry:
  %prev = getelementptr inbounds %struct.plist_head, %struct.plist_head* %head, i64 0, i32 0, i32 1
  %0 = bitcast %struct.list_head** %prev to i8**
  %1 = load i8*, i8** %0, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 -24
  %2 = bitcast i8* %add.ptr to %struct.plist_node*
  ret %struct.plist_node* %2
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #3 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %new, %struct.list_head** %prev1, align 8
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next2, align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev3, align 8
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %new, %struct.list_head** %next6, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #3 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #4
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #3 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #3 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nounwind }

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
!8 = !{i64 2148600972}
!9 = !{i64 2148602537}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148608538}
!12 = !{i64 2148609883}
