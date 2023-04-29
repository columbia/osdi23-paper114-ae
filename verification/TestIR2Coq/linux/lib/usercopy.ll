; ModuleID = 'lib/usercopy.c'
source_filename = "lib/usercopy.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @check_zeroed_user(i8* noundef %from, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %from to i64
  %rem = and i64 %0, 7
  %cmp = icmp eq i64 %size, 0
  br i1 %cmp, label %cleanup, label %if.end, !prof !7

if.end:                                           ; preds = %entry
  %idx.neg = sub nsw i64 0, %rem
  %add.ptr = getelementptr i8, i8* %from, i64 %idx.neg
  %add = add i64 %rem, %size
  %call = call fastcc i64 @__range_ok(i8* noundef %add.ptr, i64 noundef %add) #1
  %tobool2.not = icmp eq i64 %call, 0
  br i1 %tobool2.not, label %cleanup, label %do.body

do.body:                                          ; preds = %if.end
  %call6 = call fastcc i64 @__range_ok(i8* noundef %add.ptr, i64 noundef 8) #1
  %tobool7.not = icmp eq i64 %call6, 0
  br i1 %tobool7.not, label %cleanup, label %if.end17, !prof !8

if.end17:                                         ; preds = %do.body
  %call9 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %add.ptr) #1
  %1 = bitcast i8* %call9 to i64*
  %2 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:x}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i64* %1, i32 -14, i32 0) #2, !srcloc !9
  %asmresult = extractvalue { i32, i64 } %2, 0
  %phi.cmp = icmp eq i32 %asmresult, 0
  br i1 %phi.cmp, label %do.end31, label %cleanup, !prof !10

do.end31:                                         ; preds = %if.end17
  %asmresult13 = extractvalue { i32, i64 } %2, 1
  %tobool32.not = icmp eq i64 %rem, 0
  %mul = shl nuw nsw i64 %rem, 3
  %notmask133 = shl nsw i64 -1, %mul
  %and = select i1 %tobool32.not, i64 -1, i64 %notmask133
  %val.1 = and i64 %asmresult13, %and
  br label %while.cond

while.cond:                                       ; preds = %if.end69, %do.end31
  %val.2 = phi i64 [ %val.1, %do.end31 ], [ %asmresult62, %if.end69 ]
  %size.addr.0 = phi i64 [ %add, %do.end31 ], [ %sub48, %if.end69 ]
  %from.addr.0 = phi i8* [ %add.ptr, %do.end31 ], [ %add.ptr47, %if.end69 ]
  %cmp35 = icmp ugt i64 %size.addr.0, 8
  br i1 %cmp35, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %tobool37.not = icmp eq i64 %val.2, 0
  br i1 %tobool37.not, label %if.end46, label %do.end95, !prof !10

if.end46:                                         ; preds = %while.body
  %add.ptr47 = getelementptr i8, i8* %from.addr.0, i64 8
  %call53 = call fastcc i64 @__range_ok(i8* noundef %add.ptr47, i64 noundef 8) #1
  %tobool54.not = icmp eq i64 %call53, 0
  br i1 %tobool54.not, label %cleanup, label %if.end69

if.end69:                                         ; preds = %if.end46
  %sub48 = add i64 %size.addr.0, -8
  %call56 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %add.ptr47) #1
  %3 = bitcast i8* %call56 to i64*
  %4 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:x}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i64* %3, i32 -14, i32 0) #2, !srcloc !11
  %asmresult61 = extractvalue { i32, i64 } %4, 0
  %asmresult62 = extractvalue { i32, i64 } %4, 1
  %tobool73.not = icmp eq i32 %asmresult61, 0
  br i1 %tobool73.not, label %while.cond, label %cleanup, !prof !10

while.end:                                        ; preds = %while.cond
  %cmp85.not = icmp eq i64 %size.addr.0, 8
  br i1 %cmp85.not, label %do.end95, label %if.then87

if.then87:                                        ; preds = %while.end
  %mul88 = shl nuw nsw i64 %size.addr.0, 3
  %notmask = shl nsw i64 -1, %mul88
  %sub90 = xor i64 %notmask, -1
  %and91 = and i64 %val.2, %sub90
  br label %do.end95

do.end95:                                         ; preds = %while.body, %if.then87, %while.end
  %val.4 = phi i64 [ %and91, %if.then87 ], [ %val.2, %while.end ], [ 1, %while.body ]
  %cmp96 = icmp eq i64 %val.4, 0
  %conv97 = zext i1 %cmp96 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.end69, %do.body, %if.end17, %if.end, %entry, %do.end95
  %retval.0 = phi i32 [ %conv97, %do.end95 ], [ 1, %entry ], [ -14, %if.end ], [ -14, %if.end17 ], [ -14, %do.body ], [ -14, %if.end69 ], [ -14, %if.end46 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #2, !srcloc !12
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #2, !srcloc !13
  call void asm sideeffect "hint #20", "~{memory}"() #2, !srcloc !14
  ret i8* %2
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { nobuiltin "no-builtins" }
attributes #2 = { nounwind }

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
!8 = !{!"branch_weights", i32 1073205, i32 2146410443}
!9 = !{i64 2150800966, i64 2150801006, i64 2150801023, i64 2150801058, i64 2150801080, i64 2150801106, i64 2150801129, i64 2150801147, i64 2150801162, i64 2150801203, i64 2150801225, i64 2150801271}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2150810861, i64 2150810901, i64 2150810918, i64 2150810953, i64 2150810975, i64 2150811001, i64 2150811024, i64 2150811042, i64 2150811057, i64 2150811098, i64 2150811120, i64 2150811166}
!12 = !{i64 2978620, i64 2978703, i64 2978927, i64 2979147, i64 2979170}
!13 = !{i64 2983322, i64 2983346}
!14 = !{i64 2150782780}
