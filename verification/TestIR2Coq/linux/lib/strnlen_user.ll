; ModuleID = 'lib/strnlen_user.c'
source_filename = "lib/strnlen_user.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.word_at_a_time = type { i64, i64 }

@__const.do_strnlen_user.constants = private unnamed_addr constant %struct.word_at_a_time { i64 72340172838076673, i64 -9187201950435737472 }, align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @strnlen_user(i8* noundef %str, i64 noundef %count) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i64 %count, 1
  br i1 %cmp, label %cleanup24, label %if.end, !prof !7

if.end:                                           ; preds = %entry
  %0 = ptrtoint i8* %str to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %cmp2 = icmp ult i64 %and, 549755813888
  br i1 %cmp2, label %if.then11, label %cleanup24, !prof !8

if.then11:                                        ; preds = %if.end
  %sub = sub nuw nsw i64 549755813888, %and
  %cmp13 = icmp ugt i64 %sub, %count
  %spec.select = select i1 %cmp13, i64 %count, i64 %sub
  %call17 = call fastcc i64 @__range_ok(i8* noundef %str, i64 noundef %spec.select) #7
  %tobool18.not = icmp eq i64 %call17, 0
  br i1 %tobool18.not, label %cleanup24, label %cleanup

cleanup:                                          ; preds = %if.then11
  %call20 = call fastcc i64 @do_strnlen_user(i8* noundef %str, i64 noundef %count, i64 noundef %spec.select) #7
  br label %cleanup24

cleanup24:                                        ; preds = %if.then11, %if.end, %cleanup, %entry
  %retval.1 = phi i64 [ %call20, %cleanup ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.then11 ]
  ret i64 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #8, !srcloc !9
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @do_strnlen_user(i8* noundef %src, i64 noundef %count, i64 noundef %max) unnamed_addr #0 {
entry:
  %constants = alloca %struct.word_at_a_time, align 8
  %data = alloca i64, align 8
  %0 = bitcast %struct.word_at_a_time* %constants to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8* noundef align 8 dereferenceable(16) bitcast (%struct.word_at_a_time* @__const.do_strnlen_user.constants to i8*), i64 16, i1 false)
  %1 = ptrtoint i8* %src to i64
  %and = and i64 %1, 7
  %idx.neg = sub nsw i64 0, %and
  %add.ptr = getelementptr i8, i8* %src, i64 %idx.neg
  %add = add i64 %and, %max
  %call = call fastcc i64 @__range_ok(i8* noundef %add.ptr, i64 noundef 8) #7
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup83, label %if.end, !prof !10

if.end:                                           ; preds = %entry
  %call2 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %add.ptr) #7
  %2 = bitcast i8* %call2 to i64*
  %3 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:x}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i64* %2, i32 -14, i32 0) #8, !srcloc !11
  %asmresult = extractvalue { i32, i64 } %3, 0
  %phi.cmp = icmp eq i32 %asmresult, 0
  br i1 %phi.cmp, label %do.end18, label %cleanup83, !prof !8

do.end18:                                         ; preds = %if.end
  %asmresult6 = extractvalue { i32, i64 } %3, 1
  %mul = shl nuw nsw i64 %and, 3
  %notmask = shl nsw i64 -1, %mul
  %sub = xor i64 %notmask, -1
  %or = or i64 %asmresult6, %sub
  %4 = bitcast i64* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #8
  store i64 0, i64* %data, align 8, !annotation !12
  %call19146 = call fastcc i64 @has_zero(i64 noundef %or, i64* noundef nonnull %data, %struct.word_at_a_time* noundef nonnull %constants) #7
  %tobool20.not147 = icmp eq i64 %call19146, 0
  br i1 %tobool20.not147, label %if.end27, label %cleanup.thread128

cleanup.thread128:                                ; preds = %cleanup, %do.end18
  %res.0.lcssa = phi i64 [ 0, %do.end18 ], [ %add28, %cleanup ]
  %5 = load i64, i64* %data, align 8
  %call22 = call fastcc i64 @create_zero_mask(i64 noundef %5) #7, !range !13
  %call23 = call fastcc i64 @find_zero(i64 noundef %call22) #7
  %add24 = sub nsw i64 1, %and
  %add25 = add i64 %add24, %res.0.lcssa
  %sub26 = add i64 %add25, %call23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #8
  br label %cleanup83

if.end27:                                         ; preds = %do.end18, %cleanup
  %max.addr.0149 = phi i64 [ %sub39, %cleanup ], [ %add, %do.end18 ]
  %res.0148 = phi i64 [ %add28, %cleanup ], [ 0, %do.end18 ]
  %add28 = add i64 %res.0148, 8
  %cmp = icmp ult i64 %max.addr.0149, 9
  br i1 %cmp, label %for.end, label %if.end38, !prof !7

if.end38:                                         ; preds = %if.end27
  %sub39 = add i64 %max.addr.0149, -8
  %add.ptr44 = getelementptr i8, i8* %add.ptr, i64 %add28
  %call45 = call fastcc i64 @__range_ok(i8* noundef %add.ptr44, i64 noundef 8) #7
  %tobool46.not = icmp eq i64 %call45, 0
  br i1 %tobool46.not, label %cleanup.thread, label %if.end61

if.end61:                                         ; preds = %if.end38
  %call48 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %add.ptr44) #7
  %6 = bitcast i8* %call48 to i64*
  %7 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:x}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i64* %6, i32 -14, i32 0) #8, !srcloc !14
  %asmresult53 = extractvalue { i32, i64 } %7, 0
  %tobool65.not = icmp eq i32 %asmresult53, 0
  br i1 %tobool65.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end61, %if.end38
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #8
  br label %cleanup83

cleanup:                                          ; preds = %if.end61
  %asmresult54 = extractvalue { i32, i64 } %7, 1
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #8
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #8
  store i64 0, i64* %data, align 8, !annotation !12
  %call19 = call fastcc i64 @has_zero(i64 noundef %asmresult54, i64* noundef nonnull %data, %struct.word_at_a_time* noundef nonnull %constants) #7
  %tobool20.not = icmp eq i64 %call19, 0
  br i1 %tobool20.not, label %if.end27, label %cleanup.thread128

for.end:                                          ; preds = %if.end27
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #8
  %sub77 = sub i64 %add28, %and
  %cmp78.not = icmp ult i64 %sub77, %count
  %add81 = add i64 %count, 1
  %spec.select = select i1 %cmp78.not, i64 0, i64 %add81
  br label %cleanup83

cleanup83:                                        ; preds = %for.end, %entry, %if.end, %cleanup.thread, %cleanup.thread128
  %retval.2 = phi i64 [ %sub26, %cleanup.thread128 ], [ 0, %cleanup.thread ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %for.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8
  ret i64 %retval.2
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #8, !srcloc !15
  call void asm sideeffect "hint #20", "~{memory}"() #8, !srcloc !16
  ret i8* %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @has_zero(i64 noundef %a, i64* nocapture noundef writeonly %bits, %struct.word_at_a_time* nocapture noundef readonly %c) unnamed_addr #3 {
entry:
  %one_bits = getelementptr inbounds %struct.word_at_a_time, %struct.word_at_a_time* %c, i64 0, i32 0
  %0 = load i64, i64* %one_bits, align 8
  %sub = sub i64 %a, %0
  %neg = xor i64 %a, -1
  %and = and i64 %sub, %neg
  %high_bits = getelementptr inbounds %struct.word_at_a_time, %struct.word_at_a_time* %c, i64 0, i32 1
  %1 = load i64, i64* %high_bits, align 8
  %and1 = and i64 %and, %1
  store i64 %and1, i64* %bits, align 8
  ret i64 %and1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @create_zero_mask(i64 noundef %bits) unnamed_addr #4 {
entry:
  %sub = add i64 %bits, -1
  %neg = xor i64 %bits, -1
  %and = and i64 %sub, %neg
  %shr = lshr i64 %and, 7
  ret i64 %shr
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @find_zero(i64 noundef %mask) unnamed_addr #5 {
entry:
  %cmp.i = icmp eq i64 %mask, 0
  %0 = call i64 @llvm.ctlz.i64(i64 %mask, i1 false) #8, !range !17
  %conv.i = sub nuw nsw i64 64, %0
  %conv.i.op = lshr i64 %conv.i, 3
  %conv2 = select i1 %cmp.i, i64 0, i64 %conv.i.op
  ret i64 %conv2
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #6

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
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
!7 = !{!"branch_weights", i32 1, i32 2000}
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2979826, i64 2979909, i64 2980133, i64 2980353, i64 2980376}
!10 = !{!"branch_weights", i32 1073205, i32 2146410443}
!11 = !{i64 2152566225, i64 2152566265, i64 2152566282, i64 2152566317, i64 2152566339, i64 2152566365, i64 2152566388, i64 2152566406, i64 2152566421, i64 2152566462, i64 2152566484, i64 2152566530}
!12 = !{!"auto-init"}
!13 = !{i64 0, i64 144115188075855872}
!14 = !{i64 2152576157, i64 2152576197, i64 2152576214, i64 2152576249, i64 2152576271, i64 2152576297, i64 2152576320, i64 2152576338, i64 2152576353, i64 2152576394, i64 2152576416, i64 2152576462}
!15 = !{i64 2984528, i64 2984552}
!16 = !{i64 2150783986}
!17 = !{i64 0, i64 65}
