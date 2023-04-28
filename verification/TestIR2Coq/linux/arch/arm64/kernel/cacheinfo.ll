; ModuleID = 'arch/arm64/kernel/cacheinfo.c'
source_filename = "arch/arm64/kernel/cacheinfo.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.cpu_cacheinfo = type { %struct.cacheinfo*, i32, i32, i8 }
%struct.cacheinfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.cpumask, i32, i8*, i8, i8* }
%struct.cpumask = type { [4 x i64] }

@coherency_max_size = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @cache_line_size() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* @coherency_max_size, align 4
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @cache_line_size_of_cpu() #6
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ %0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @cache_line_size_of_cpu() unnamed_addr #1 {
entry:
  %call = call fastcc i32 @cache_type_cwg() #6
  %tobool.not = icmp eq i32 %call, 0
  %shl = shl i32 4, %call
  %cond = select i1 %tobool.not, i32 128, i32 %shl
  ret i32 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @init_cache_level(i32 noundef %cpu) local_unnamed_addr #2 {
entry:
  %call = call %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32 noundef %cpu) #7
  %call1 = call fastcc i32 @get_cache_type(i32 noundef 1) #6
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %for.end, label %if.end

if.end:                                           ; preds = %entry
  %cmp3 = icmp eq i32 %call1, 3
  %cond = select i1 %cmp3, i32 2, i32 1
  %call1.1 = call fastcc i32 @get_cache_type(i32 noundef 2) #6
  %cmp2.1 = icmp eq i32 %call1.1, 0
  br i1 %cmp2.1, label %for.end, label %if.end.1

if.end.1:                                         ; preds = %if.end
  %cmp3.1 = icmp eq i32 %call1.1, 3
  %cond.1 = select i1 %cmp3.1, i32 2, i32 1
  %add.1 = add nuw nsw i32 %cond.1, %cond
  %call1.2 = call fastcc i32 @get_cache_type(i32 noundef 3) #6
  %cmp2.2 = icmp eq i32 %call1.2, 0
  br i1 %cmp2.2, label %for.end, label %if.end.2

if.end.2:                                         ; preds = %if.end.1
  %cmp3.2 = icmp eq i32 %call1.2, 3
  %cond.2 = select i1 %cmp3.2, i32 2, i32 1
  %add.2 = add nuw nsw i32 %cond.2, %add.1
  %call1.3 = call fastcc i32 @get_cache_type(i32 noundef 4) #6
  %cmp2.3 = icmp eq i32 %call1.3, 0
  br i1 %cmp2.3, label %for.end, label %if.end.3

if.end.3:                                         ; preds = %if.end.2
  %cmp3.3 = icmp eq i32 %call1.3, 3
  %cond.3 = select i1 %cmp3.3, i32 2, i32 1
  %add.3 = add nuw nsw i32 %cond.3, %add.2
  %call1.4 = call fastcc i32 @get_cache_type(i32 noundef 5) #6
  %cmp2.4 = icmp eq i32 %call1.4, 0
  br i1 %cmp2.4, label %for.end, label %if.end.4

if.end.4:                                         ; preds = %if.end.3
  %cmp3.4 = icmp eq i32 %call1.4, 3
  %cond.4 = select i1 %cmp3.4, i32 2, i32 1
  %add.4 = add nuw nsw i32 %cond.4, %add.3
  %call1.5 = call fastcc i32 @get_cache_type(i32 noundef 6) #6
  %cmp2.5 = icmp eq i32 %call1.5, 0
  br i1 %cmp2.5, label %for.end, label %if.end.5

if.end.5:                                         ; preds = %if.end.4
  %cmp3.5 = icmp eq i32 %call1.5, 3
  %cond.5 = select i1 %cmp3.5, i32 2, i32 1
  %add.5 = add nuw nsw i32 %cond.5, %add.4
  %call1.6 = call fastcc i32 @get_cache_type(i32 noundef 7) #6
  %cmp2.6 = icmp eq i32 %call1.6, 0
  br i1 %cmp2.6, label %for.end, label %if.end.6

if.end.6:                                         ; preds = %if.end.5
  %cmp3.6 = icmp eq i32 %call1.6, 3
  %cond.6 = select i1 %cmp3.6, i32 2, i32 1
  %add.6 = add nuw nsw i32 %cond.6, %add.5
  br label %for.end

for.end:                                          ; preds = %entry, %if.end, %if.end.1, %if.end.2, %if.end.3, %if.end.4, %if.end.5, %if.end.6
  %leaves.028 = phi i32 [ %add.6, %if.end.6 ], [ 0, %entry ], [ %cond, %if.end ], [ %add.1, %if.end.1 ], [ %add.2, %if.end.2 ], [ %add.3, %if.end.3 ], [ %add.4, %if.end.4 ], [ %add.5, %if.end.5 ]
  %level.1 = phi i32 [ 8, %if.end.6 ], [ 0, %entry ], [ 1, %if.end ], [ 2, %if.end.1 ], [ 3, %if.end.2 ], [ 4, %if.end.3 ], [ 5, %if.end.4 ], [ 6, %if.end.5 ]
  %call4 = call i32 @of_find_last_cache_level(i32 noundef %cpu) #7
  %cmp5 = icmp ugt i32 %call4, %level.1
  %level.2 = select i1 %cmp5, i32 %call4, i32 %level.1
  %0 = call i32 @llvm.usub.sat.i32(i32 %call4, i32 %level.1)
  %leaves.1 = add i32 %0, %leaves.028
  %num_levels = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %call, i64 0, i32 1
  store i32 %level.2, i32* %num_levels, align 8
  %num_leaves = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %call, i64 0, i32 2
  store i32 %leaves.1, i32* %num_leaves, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @get_cache_type(i32 noundef %level) unnamed_addr #2 {
entry:
  %cmp = icmp sgt i32 %level, 7
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = call i64 asm sideeffect "mrs $0, clidr_el1", "=r"() #8, !srcloc !7
  %1 = mul i32 %level, 3
  %mul = add i32 %1, -3
  %shl = shl i32 7, %mul
  %conv = sext i32 %shl to i64
  %and = and i64 %0, %conv
  %sh_prom = zext i32 %mul to i64
  %shr = lshr i64 %and, %sh_prom
  %conv3 = trunc i64 %shr to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv3, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_find_last_cache_level(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @populate_cache_leaves(i32 noundef %cpu) local_unnamed_addr #2 {
entry:
  %call = call %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32 noundef %cpu) #7
  %num_leaves = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %call, i64 0, i32 2
  %num_levels = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %call, i64 0, i32 1
  %0 = load i32, i32* %num_levels, align 8
  %cmp.not23 = icmp eq i32 %0, 0
  br i1 %cmp.not23, label %for.end, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %entry
  %info_list = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %call, i64 0, i32 0
  %1 = load %struct.cacheinfo*, %struct.cacheinfo** %info_list, align 8
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.preheader, %for.inc
  %this_leaf.027 = phi %struct.cacheinfo* [ %this_leaf.1, %for.inc ], [ %1, %land.rhs.preheader ]
  %idx.026 = phi i32 [ %inc, %for.inc ], [ 0, %land.rhs.preheader ]
  %level.024 = phi i32 [ %inc6, %for.inc ], [ 1, %land.rhs.preheader ]
  %2 = load i32, i32* %num_leaves, align 4
  %cmp1 = icmp ult i32 %idx.026, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %land.rhs
  %call2 = call fastcc i32 @get_cache_type(i32 noundef %level.024) #6
  %cmp3 = icmp eq i32 %call2, 3
  %incdec.ptr = getelementptr %struct.cacheinfo, %struct.cacheinfo* %this_leaf.027, i64 1
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call fastcc void @ci_leaf_init(%struct.cacheinfo* noundef %this_leaf.027, i32 noundef 2, i32 noundef %level.024) #6
  %incdec.ptr4 = getelementptr %struct.cacheinfo, %struct.cacheinfo* %this_leaf.027, i64 2
  call fastcc void @ci_leaf_init(%struct.cacheinfo* noundef %incdec.ptr, i32 noundef 1, i32 noundef %level.024) #6
  br label %for.inc

if.else:                                          ; preds = %for.body
  call fastcc void @ci_leaf_init(%struct.cacheinfo* noundef %this_leaf.027, i32 noundef %call2, i32 noundef %level.024) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %this_leaf.1 = phi %struct.cacheinfo* [ %incdec.ptr4, %if.then ], [ %incdec.ptr, %if.else ]
  %inc = add nuw i32 %idx.026, 1
  %inc6 = add i32 %level.024, 1
  %3 = load i32, i32* %num_levels, align 8
  %cmp.not = icmp ugt i32 %inc6, %3
  br i1 %cmp.not, label %for.end, label %land.rhs

for.end:                                          ; preds = %land.rhs, %for.inc, %entry
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @ci_leaf_init(%struct.cacheinfo* nocapture noundef writeonly %this_leaf, i32 noundef %type, i32 noundef %level) unnamed_addr #4 {
entry:
  %level1 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %this_leaf, i64 0, i32 2
  store i32 %level, i32* %level1, align 8
  %type2 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %this_leaf, i64 0, i32 1
  store i32 %type, i32* %type2, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @cache_type_cwg() unnamed_addr #1 {
entry:
  %call = call fastcc i32 @read_cpuid_cachetype() #9
  %shr = lshr i32 %call, 24
  %and = and i32 %shr, 15
  ret i32 %and
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @read_cpuid_cachetype() unnamed_addr #1 {
entry:
  %0 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((3) << 16) | ((0) << 12) | ((0) << 8) | ((1) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #8, !srcloc !8
  %conv = trunc i64 %0 to i32
  ret i32 %conv
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

attributes #0 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin nounwind readnone willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 2152124916}
!8 = !{i64 2148623791, i64 2148623893, i64 2148623933, i64 2148623951, i64 2148623693, i64 2148623981, i64 2148624009, i64 2148623509, i64 2148624342}
