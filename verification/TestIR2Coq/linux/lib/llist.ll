; ModuleID = 'lib/llist.c'
source_filename = "lib/llist.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.llist_node = type { %struct.llist_node* }
%struct.llist_head = type { %struct.llist_node* }

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @llist_add_batch(%struct.llist_node* noundef %new_first, %struct.llist_node* nocapture noundef writeonly %new_last, %struct.llist_head* noundef %head) local_unnamed_addr #0 {
entry:
  %first2 = getelementptr inbounds %struct.llist_head, %struct.llist_head* %head, i64 0, i32 0
  %next = getelementptr inbounds %struct.llist_node, %struct.llist_node* %new_last, i64 0, i32 0
  %0 = bitcast %struct.llist_head* %head to i8*
  %1 = ptrtoint %struct.llist_node* %new_first to i64
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %2 = load volatile %struct.llist_node*, %struct.llist_node** %first2, align 8
  store %struct.llist_node* %2, %struct.llist_node** %next, align 8
  %3 = ptrtoint %struct.llist_node* %2 to i64
  %call14.i = call fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %0, i64 noundef %3, i64 noundef %1) #2
  %4 = inttoptr i64 %call14.i to %struct.llist_node*
  %cmp.not = icmp eq %struct.llist_node* %2, %4
  br i1 %cmp.not, label %do.end7, label %do.body

do.end7:                                          ; preds = %do.body
  %tobool.not = icmp eq %struct.llist_node* %2, null
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.llist_node* @llist_del_first(%struct.llist_head* noundef %head) local_unnamed_addr #0 {
entry:
  %first = getelementptr inbounds %struct.llist_head, %struct.llist_head* %head, i64 0, i32 0
  %0 = bitcast %struct.llist_head* %head to i8*
  %1 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.llist_node** elementtype(%struct.llist_node*) %first) #3, !srcloc !7
  %2 = inttoptr i64 %1 to %struct.llist_node*
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %entry1.0 = phi %struct.llist_node* [ %2, %entry ], [ %6, %if.end ]
  %cmp = icmp eq %struct.llist_node* %entry1.0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %for.cond
  %next6 = getelementptr inbounds %struct.llist_node, %struct.llist_node* %entry1.0, i64 0, i32 0
  %3 = load volatile %struct.llist_node*, %struct.llist_node** %next6, align 8
  %4 = ptrtoint %struct.llist_node* %entry1.0 to i64
  %5 = ptrtoint %struct.llist_node* %3 to i64
  %call14.i = call fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %0, i64 noundef %4, i64 noundef %5) #2
  %6 = inttoptr i64 %call14.i to %struct.llist_node*
  %cmp11 = icmp eq %struct.llist_node* %entry1.0, %6
  br i1 %cmp11, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.cond, %if.end
  ret %struct.llist_node* %entry1.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local %struct.llist_node* @llist_reverse_order(%struct.llist_node* noundef %head) local_unnamed_addr #1 {
entry:
  %tobool.not8 = icmp eq %struct.llist_node* %head, null
  br i1 %tobool.not8, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %head.addr.010 = phi %struct.llist_node* [ %0, %while.body ], [ %head, %entry ]
  %new_head.09 = phi %struct.llist_node* [ %head.addr.010, %while.body ], [ null, %entry ]
  %next = getelementptr inbounds %struct.llist_node, %struct.llist_node* %head.addr.010, i64 0, i32 0
  %0 = load %struct.llist_node*, %struct.llist_node** %next, align 8
  store %struct.llist_node* %new_head.09, %struct.llist_node** %next, align 8
  %tobool.not = icmp eq %struct.llist_node* %0, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  %new_head.0.lcssa = phi %struct.llist_node* [ null, %entry ], [ %head.addr.010, %while.body ]
  ret %struct.llist_node* %new_head.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) #4
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stlxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Lr,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 %old, i64 %new, i64* elementtype(i64) %0) #3, !srcloc !8
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { nobuiltin nounwind "no-builtins" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 2148494587}
!8 = !{i64 2147836692, i64 2147836725, i64 2147836776, i64 2147836832, i64 2147836865, i64 2147836920, i64 2147836949, i64 2147836976}
