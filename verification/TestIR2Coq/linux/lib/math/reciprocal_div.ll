; ModuleID = 'lib/math/reciprocal_div.c'
source_filename = "lib/math/reciprocal_div.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@.str = private unnamed_addr constant [58 x i8] c"ceil(log2(0x%08x)) == 32, %s doesn't support such divisor\00", align 1
@__func__.reciprocal_value_adv = private unnamed_addr constant [21 x i8] c"reciprocal_value_adv\00", align 1

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i64 @reciprocal_value(i32 noundef %d) local_unnamed_addr #0 {
entry:
  %sub = add i32 %d, -1
  %tobool.not.i = icmp eq i32 %sub, 0
  %0 = call i32 @llvm.ctlz.i32(i32 %sub, i1 false) #4, !range !7
  %narrow.i = sub nuw nsw i32 32, %0
  %narrow3.i = select i1 %tobool.not.i, i32 0, i32 %narrow.i
  %sh_prom = zext i32 %narrow3.i to i64
  %shl = shl nuw nsw i64 1, %sh_prom
  %conv = zext i32 %d to i64
  %sub1 = sub nsw i64 %shl, %conv
  %mul = shl i64 %sub1, 32
  %div = udiv i64 %mul, %conv
  %conv5 = add nuw i64 %div, 1
  %cmp.not = icmp eq i32 %narrow3.i, 0
  %1 = icmp ugt i32 %narrow3.i, 1
  %2 = select i1 %1, i32 %narrow3.i, i32 1
  %cond17 = add nsw i32 %2, -1
  %retval.sroa.4.0.insert.ext = zext i32 %cond17 to i64
  %retval.sroa.4.0.insert.shift = shl nuw nsw i64 %retval.sroa.4.0.insert.ext, 40
  %retval.sroa.3.0.insert.shift = select i1 %cmp.not, i64 0, i64 4294967296
  %retval.sroa.3.0.insert.insert = or i64 %retval.sroa.4.0.insert.shift, %retval.sroa.3.0.insert.shift
  %retval.sroa.0.0.insert.ext = and i64 %conv5, 4294967295
  %retval.sroa.0.0.insert.insert = or i64 %retval.sroa.0.0.insert.ext, %retval.sroa.3.0.insert.insert
  ret i64 %retval.sroa.0.0.insert.insert
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @reciprocal_value_adv(i32 noundef %d, i8 noundef %prec) local_unnamed_addr #1 {
entry:
  %sub = add i32 %d, -1
  %tobool.not.i = icmp eq i32 %sub, 0
  %0 = call i32 @llvm.ctlz.i32(i32 %sub, i1 false) #4, !range !7
  %narrow.i = sub nuw nsw i32 32, %0
  %narrow3.i = select i1 %tobool.not.i, i32 0, i32 %narrow.i
  %cmp = icmp eq i32 %narrow3.i, 32
  br i1 %cmp, label %do.end, label %if.end, !prof !8

do.end:                                           ; preds = %entry
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 noundef %d, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.reciprocal_value_adv, i64 0, i64 0)) #5
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/math/reciprocal_div.c\22; .popsection; .long 14472b - 14470b; .short 49; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #4, !srcloc !9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %add = add nuw nsw i32 %narrow3.i, 32
  %sh_prom = zext i32 %add to i64
  %shl = shl nuw i64 1, %sh_prom
  %conv20 = zext i32 %d to i64
  %conv28 = zext i8 %prec to i32
  %sub29 = sub nsw i32 %add, %conv28
  %sh_prom30 = zext i32 %sub29 to i64
  %shl31 = shl nuw i64 1, %sh_prom30
  %add32 = add i64 %shl31, %shl
  %div39 = udiv i64 %add32, %conv20
  %cmp41.not91 = icmp eq i32 %narrow3.i, 0
  br i1 %cmp41.not91, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %div = udiv i64 %shl, %conv20
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %post_shift.094 = phi i32 [ %dec, %for.inc ], [ %narrow3.i, %for.body.preheader ]
  %mhigh.093 = phi i64 [ %shr43, %for.inc ], [ %div39, %for.body.preheader ]
  %mlow.092 = phi i64 [ %shr, %for.inc ], [ %div, %for.body.preheader ]
  %shr = lshr i64 %mlow.092, 1
  %shr43 = lshr i64 %mhigh.093, 1
  %cmp44.not = icmp ult i64 %shr, %shr43
  br i1 %cmp44.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body
  %dec = add i32 %post_shift.094, -1
  %cmp41.not = icmp eq i32 %dec, 0
  br i1 %cmp41.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.body, %if.end
  %mhigh.0.lcssa = phi i64 [ %div39, %if.end ], [ %mhigh.093, %for.body ], [ %shr43, %for.inc ]
  %post_shift.0.lcssa = phi i32 [ 0, %if.end ], [ %post_shift.094, %for.body ], [ 0, %for.inc ]
  %cmp52 = icmp ugt i64 %mhigh.0.lcssa, 4294967295
  %retval.sroa.5.0.insert.shift = select i1 %cmp52, i64 281474976710656, i64 0
  %1 = and i32 %narrow3.i, 255
  %retval.sroa.4.0.insert.ext = zext i32 %1 to i64
  %retval.sroa.4.0.insert.shift = shl nuw nsw i64 %retval.sroa.4.0.insert.ext, 40
  %retval.sroa.4.0.insert.insert = or i64 %retval.sroa.5.0.insert.shift, %retval.sroa.4.0.insert.shift
  %2 = and i32 %post_shift.0.lcssa, 255
  %retval.sroa.3.0.insert.ext = zext i32 %2 to i64
  %retval.sroa.3.0.insert.shift = shl nuw nsw i64 %retval.sroa.3.0.insert.ext, 32
  %retval.sroa.3.0.insert.insert = or i64 %retval.sroa.3.0.insert.shift, %retval.sroa.4.0.insert.insert
  %retval.sroa.0.0.insert.ext = and i64 %mhigh.0.lcssa, 4294967295
  %retval.sroa.0.0.insert.insert = or i64 %retval.sroa.3.0.insert.insert, %retval.sroa.0.0.insert.ext
  ret i64 %retval.sroa.0.0.insert.insert
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

attributes #0 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i32 0, i32 33}
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2148454984}
