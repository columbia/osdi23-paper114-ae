; ModuleID = 'lib/cpumask.c'
source_filename = "lib/cpumask.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.cpumask = type { [4 x i64] }
%struct.atomic_t = type { i32 }

@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@distribute_cpu_mask_prev = internal global i32 0, section ".data..percpu", align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4

; Function Attrs: mustprogress nofree noinline nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @cpumask_next(i32 noundef %n, %struct.cpumask* noundef %srcp) local_unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  %add = add i32 %n, 1
  %conv = sext i32 %add to i64
  %call1 = call fastcc i64 @find_next_bit(i64* noundef %arraydecay, i64 noundef %conv) #7
  %conv2 = trunc i64 %call1 to i32
  ret i32 %conv2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_next_bit(i64* noundef %addr, i64 noundef %offset) unnamed_addr #1 {
entry:
  %call12 = call i64 @_find_next_bit(i64* noundef %addr, i64* noundef null, i64 noundef 256, i64 noundef %offset, i64 noundef 0, i64 noundef 0) #8
  ret i64 %call12
}

; Function Attrs: mustprogress nofree noinline nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @cpumask_next_and(i32 noundef %n, %struct.cpumask* noundef %src1p, %struct.cpumask* noundef %src2p) local_unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src1p, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src2p, i64 0, i32 0, i64 0
  %add = add i32 %n, 1
  %conv = sext i32 %add to i64
  %call3 = call fastcc i64 @find_next_and_bit(i64* noundef %arraydecay, i64* noundef %arraydecay2, i64 noundef %conv) #7
  %conv4 = trunc i64 %call3 to i32
  ret i32 %conv4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_next_and_bit(i64* noundef %addr1, i64* noundef %addr2, i64 noundef %offset) unnamed_addr #1 {
entry:
  %call13 = call i64 @_find_next_bit(i64* noundef %addr1, i64* noundef %addr2, i64 noundef 256, i64 noundef %offset, i64 noundef 0, i64 noundef 0) #8
  ret i64 %call13
}

; Function Attrs: mustprogress nofree noinline nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @cpumask_any_but(%struct.cpumask* noundef readonly %mask, i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %call1.peel = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef %mask) #9
  %cmp.peel = icmp ult i32 %call1.peel, %0
  %cmp2.not.peel = icmp eq i32 %call1.peel, %cpu
  %or.cond.peel = and i1 %cmp2.not.peel, %cmp.peel
  br i1 %or.cond.peel, label %entry.peel.newph, label %for.end

entry.peel.newph:                                 ; preds = %entry
  %call1 = call i32 @cpumask_next(i32 noundef %cpu, %struct.cpumask* noundef %mask) #9
  %cmp = icmp ult i32 %call1, %0
  %cmp2.not = icmp eq i32 %call1, %cpu
  %or.cond = and i1 %cmp2.not, %cmp
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry.peel.newph
  br i1 %or.cond, label %for.cond, label %for.end, !llvm.loop !8

for.end:                                          ; preds = %for.cond, %entry
  %call1.lcssa = phi i32 [ %call1.peel, %entry ], [ %call1, %for.cond ]
  ret i32 %call1.lcssa
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define dso_local i32 @cpumask_next_wrap(i32 noundef %n, %struct.cpumask* noundef readonly %mask, i32 noundef %start, i1 noundef %wrap) local_unnamed_addr #2 {
entry:
  br label %again

again:                                            ; preds = %if.else, %entry
  %n.addr.0 = phi i32 [ %n, %entry ], [ -1, %if.else ]
  %wrap.addr.0.off0 = phi i1 [ %wrap, %entry ], [ true, %if.else ]
  %call = call i32 @cpumask_next(i32 noundef %n.addr.0, %struct.cpumask* noundef %mask) #9
  %cmp = icmp slt i32 %n.addr.0, %start
  %or.cond = and i1 %wrap.addr.0.off0, %cmp
  %or.cond.not = xor i1 %or.cond, true
  %cmp2.not = icmp slt i32 %call, %start
  %or.cond11 = select i1 %or.cond.not, i1 true, i1 %cmp2.not
  br i1 %or.cond11, label %if.else, label %cleanup

if.else:                                          ; preds = %again
  %cmp3 = icmp ugt i32 %call, 255
  br i1 %cmp3, label %again, label %cleanup

cleanup:                                          ; preds = %if.else, %again
  %retval.0 = phi i32 [ 256, %again ], [ %call, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @cpumask_local_spread(i32 noundef %i, i32 noundef %node) local_unnamed_addr #1 {
entry:
  %call = call fastcc i32 @num_online_cpus() #7
  %rem = urem i32 %i, %call
  %cmp = icmp eq i32 %node, -1
  %0 = load i32, i32* @nr_cpu_ids, align 4
  br i1 %cmp, label %for.cond, label %for.cond5

for.cond:                                         ; preds = %entry, %for.body
  %i.addr.0 = phi i32 [ %dec, %for.body ], [ %rem, %entry ]
  %cpu.0 = phi i32 [ %call1, %for.body ], [ -1, %entry ]
  %call1 = call i32 @cpumask_next(i32 noundef %cpu.0, %struct.cpumask* noundef nonnull @__cpu_online_mask) #9
  %cmp2 = icmp ult i32 %call1, %0
  br i1 %cmp2, label %for.body, label %do.body

for.body:                                         ; preds = %for.cond
  %dec = add i32 %i.addr.0, -1
  %cmp3 = icmp eq i32 %i.addr.0, 0
  br i1 %cmp3, label %cleanup, label %for.cond

for.cond5:                                        ; preds = %entry, %for.body8
  %i.addr.1 = phi i32 [ %dec9, %for.body8 ], [ %rem, %entry ]
  %cpu.1 = phi i32 [ %call6, %for.body8 ], [ -1, %entry ]
  %call6 = call i32 @cpumask_next_and(i32 noundef %cpu.1, %struct.cpumask* noundef nonnull @__cpu_online_mask, %struct.cpumask* noundef nonnull @__cpu_online_mask) #9
  %cmp7 = icmp ult i32 %call6, %0
  br i1 %cmp7, label %for.body8, label %for.cond14.outer

for.body8:                                        ; preds = %for.cond5
  %dec9 = add i32 %i.addr.1, -1
  %cmp10 = icmp eq i32 %i.addr.1, 0
  br i1 %cmp10, label %cleanup, label %for.cond5

for.cond14:                                       ; preds = %for.cond14.outer, %for.body17
  %cpu.2 = phi i32 [ %call15, %for.body17 ], [ %cpu.2.ph, %for.cond14.outer ]
  %call15 = call i32 @cpumask_next(i32 noundef %cpu.2, %struct.cpumask* noundef nonnull @__cpu_online_mask) #9
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp16 = icmp ult i32 %call15, %1
  br i1 %cmp16, label %for.body17, label %do.body

for.body17:                                       ; preds = %for.cond14
  %call18 = call fastcc i32 @cpumask_test_cpu(i32 noundef %call15) #7
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %if.end20, label %for.cond14

if.end20:                                         ; preds = %for.body17
  %dec21 = add i32 %i.addr.2.ph, -1
  %cmp22 = icmp eq i32 %i.addr.2.ph, 0
  br i1 %cmp22, label %cleanup, label %for.cond14.outer

for.cond14.outer:                                 ; preds = %for.cond5, %if.end20
  %i.addr.2.ph = phi i32 [ %dec21, %if.end20 ], [ %i.addr.1, %for.cond5 ]
  %cpu.2.ph = phi i32 [ %call15, %if.end20 ], [ -1, %for.cond5 ]
  br label %for.cond14

do.body:                                          ; preds = %for.cond14, %for.cond
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/cpumask.c\22; .popsection; .long 14472b - 14470b; .short 232; .short 0; .popsection; 14471: brk 0x800", ""() #10, !srcloc !10
  unreachable

cleanup:                                          ; preds = %for.body8, %if.end20, %for.body
  %retval.0 = phi i32 [ %call1, %for.body ], [ %call15, %if.end20 ], [ %call6, %for.body8 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @num_online_cpus() unnamed_addr #3 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @__num_online_cpus, i64 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @cpumask_test_cpu(i32 noundef %cpu) unnamed_addr #3 {
entry:
  %div.i = lshr i32 %cpu, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr %struct.cpumask, %struct.cpumask* @__cpu_online_mask, i64 0, i32 0, i64 %idxprom.i
  %0 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %cpu, 63
  %sh_prom.i = zext i32 %and.i to i64
  %shr.i = lshr i64 %0, %sh_prom.i
  %1 = trunc i64 %shr.i to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local i32 @cpumask_any_and_distribute(%struct.cpumask* noundef %src1p, %struct.cpumask* noundef %src2p) local_unnamed_addr #4 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #7
  %add = add i64 %call, ptrtoint (i32* @distribute_cpu_mask_prev to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %call9 = call i32 @cpumask_next_and(i32 noundef %1, %struct.cpumask* noundef %src1p, %struct.cpumask* noundef %src2p) #9
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %cmp.not = icmp ult i32 %call9, %2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call10 = call i32 @cpumask_next_and(i32 noundef -1, %struct.cpumask* noundef %src1p, %struct.cpumask* noundef %src2p) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %next.0 = phi i32 [ %call10, %if.then ], [ %call9, %entry ]
  %cmp11 = icmp ult i32 %next.0, %2
  br i1 %cmp11, label %if.then12, label %if.end32

if.then12:                                        ; preds = %if.end
  store i32 %next.0, i32* %0, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then12, %if.end
  ret i32 %next.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #2 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #11, !srcloc !11
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @cpumask_any_distribute(%struct.cpumask* noundef %srcp) local_unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #7
  %add = add i64 %call, ptrtoint (i32* @distribute_cpu_mask_prev to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %call9 = call i32 @cpumask_next(i32 noundef %1, %struct.cpumask* noundef %srcp) #9
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %cmp.not = icmp ult i32 %call9, %2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call10 = call fastcc i32 @cpumask_first(%struct.cpumask* noundef %srcp) #7
  %.pre = load i32, i32* @nr_cpu_ids, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = phi i32 [ %.pre, %if.then ], [ %2, %entry ]
  %next.0 = phi i32 [ %call10, %if.then ], [ %call9, %entry ]
  %cmp11 = icmp ult i32 %next.0, %3
  br i1 %cmp11, label %if.then12, label %if.end32

if.then12:                                        ; preds = %if.end
  %call26 = call fastcc i64 @__kern_my_cpu_offset() #7
  %add27 = add i64 %call26, ptrtoint (i32* @distribute_cpu_mask_prev to i64)
  %4 = inttoptr i64 %add27 to i32*
  store i32 %next.0, i32* %4, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then12, %if.end
  ret i32 %next.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_first(%struct.cpumask* noundef %srcp) unnamed_addr #1 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  %call = call fastcc i64 @find_first_bit(i64* noundef %arraydecay) #7
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_next_bit(i64* noundef, i64* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_first_bit(i64* noundef %addr) unnamed_addr #1 {
entry:
  %call5 = call i64 @_find_first_bit(i64* noundef %addr, i64 noundef 256) #8
  ret i64 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_first_bit(i64* noundef, i64 noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree noinline nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { nofree nounwind readonly }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"frame-pointer", i32 1}
!7 = !{!"clang version 14.0.0"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.peeled.count", i32 1}
!10 = !{i64 2152622686}
!11 = !{i64 2149033008, i64 2149033055, i64 2149033061, i64 2149033098, i64 2149033116, i64 2149034043, i64 2149034091, i64 2149034139, i64 2149034202, i64 2149034251, i64 2149033194, i64 2149033219, i64 2149033245, i64 2149033251, i64 2149033288, i64 2149033294, i64 2149033344, i64 2149033390, i64 2149033423}
