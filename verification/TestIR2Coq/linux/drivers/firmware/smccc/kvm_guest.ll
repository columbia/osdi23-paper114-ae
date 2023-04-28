; ModuleID = 'drivers/firmware/smccc/kvm_guest.c'
source_filename = "drivers/firmware/smccc/kvm_guest.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.arm_smccc_res = type { i64, i64, i64, i64 }

@__kvm_arm_hyp_services = internal global [2 x i64] zeroinitializer, section ".data..ro_after_init", align 8
@.str = private unnamed_addr constant [78 x i8] c"\016smccc: KVM: hypervisor services detected (0x%08lx 0x%08lx 0x%08lx 0x%08lx)\0A\00", align 1

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @kvm_init_hyp_services() local_unnamed_addr #0 section ".init.text" {
entry:
  %res = alloca %struct.arm_smccc_res, align 8
  %val = alloca [4 x i32], align 4
  %0 = bitcast %struct.arm_smccc_res* %res to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #6
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !7
  %1 = bitcast [4 x i32]* %val to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #6
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !7
  %call = call i32 @arm_smccc_1_1_get_conduit() #7
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @arm_smccc_1_1_get_conduit() #7
  switch i32 %call1, label %do.body29 [
    i32 2, label %do.body
    i32 1, label %do.body8
  ]

do.body:                                          ; preds = %if.end
  %2 = call { i64, i64, i64, i64 } asm sideeffect "hvc\09#0\0A", "={x0},={x1},={x2},={x3},{x0},~{memory}"(i64 2248212225) #6, !srcloc !8
  %asmresult4 = extractvalue { i64, i64, i64, i64 } %2, 3
  %asmresult3 = extractvalue { i64, i64, i64, i64 } %2, 2
  %asmresult2 = extractvalue { i64, i64, i64, i64 } %2, 1
  %asmresult = extractvalue { i64, i64, i64, i64 } %2, 0
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %res, i64 0, i32 0
  store i64 %asmresult, i64* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %.compoundliteral.sroa.2.0..sroa_idx172 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %res, i64 0, i32 1
  store i64 %asmresult2, i64* %.compoundliteral.sroa.2.0..sroa_idx172, align 8
  %.compoundliteral.sroa.3.0..sroa_idx173 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %res, i64 0, i32 2
  store i64 %asmresult3, i64* %.compoundliteral.sroa.3.0..sroa_idx173, align 8
  %.compoundliteral.sroa.4.0..sroa_idx174 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %res, i64 0, i32 3
  store i64 %asmresult4, i64* %.compoundliteral.sroa.4.0..sroa_idx174, align 8
  br label %sw.epilog

do.body8:                                         ; preds = %if.end
  %3 = call { i64, i64, i64, i64 } asm sideeffect "smc\09#0\0A", "={x0},={x1},={x2},={x3},{x0},~{memory}"(i64 2248212225) #6, !srcloc !9
  %asmresult18 = extractvalue { i64, i64, i64, i64 } %3, 3
  %asmresult17 = extractvalue { i64, i64, i64, i64 } %3, 2
  %asmresult16 = extractvalue { i64, i64, i64, i64 } %3, 1
  %asmresult15 = extractvalue { i64, i64, i64, i64 } %3, 0
  %.compoundliteral21.sroa.0.0..sroa_idx = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %res, i64 0, i32 0
  store i64 %asmresult15, i64* %.compoundliteral21.sroa.0.0..sroa_idx, align 8
  %.compoundliteral21.sroa.2.0..sroa_idx162 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %res, i64 0, i32 1
  store i64 %asmresult16, i64* %.compoundliteral21.sroa.2.0..sroa_idx162, align 8
  %.compoundliteral21.sroa.3.0..sroa_idx163 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %res, i64 0, i32 2
  store i64 %asmresult17, i64* %.compoundliteral21.sroa.3.0..sroa_idx163, align 8
  %.compoundliteral21.sroa.4.0..sroa_idx164 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %res, i64 0, i32 3
  store i64 %asmresult18, i64* %.compoundliteral21.sroa.4.0..sroa_idx164, align 8
  br label %sw.epilog

do.body29:                                        ; preds = %if.end
  call void asm sideeffect "", "{x0},~{memory}"(i64 2248212225) #6, !srcloc !10
  %a034 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %res, i64 0, i32 0
  store i64 -1, i64* %a034, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body29, %do.body8, %do.body
  %4 = phi i64 [ 0, %do.body29 ], [ %asmresult18, %do.body8 ], [ %asmresult4, %do.body ]
  %5 = phi i64 [ 0, %do.body29 ], [ %asmresult17, %do.body8 ], [ %asmresult3, %do.body ]
  %6 = phi i64 [ 0, %do.body29 ], [ %asmresult16, %do.body8 ], [ %asmresult2, %do.body ]
  %7 = phi i64 [ -1, %do.body29 ], [ %asmresult15, %do.body8 ], [ %asmresult, %do.body ]
  %a038 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %res, i64 0, i32 0
  %cmp39 = icmp ne i64 %7, 3060773928
  %a140 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %res, i64 0, i32 1
  %cmp41 = icmp ne i64 %6, 3910255918
  %or.cond = select i1 %cmp39, i1 true, i1 %cmp41
  %a243 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %res, i64 0, i32 2
  %cmp44 = icmp ne i64 %5, 1447807657
  %or.cond132 = select i1 %or.cond, i1 true, i1 %cmp44
  %a346 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %res, i64 0, i32 3
  %cmp47 = icmp ne i64 %4, 1949958221
  %or.cond133 = select i1 %or.cond132, i1 true, i1 %cmp47
  br i1 %or.cond133, label %cleanup, label %if.end49

if.end49:                                         ; preds = %sw.epilog
  %call50 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 32) #7
  %call52 = call i32 @arm_smccc_1_1_get_conduit() #7
  switch i32 %call52, label %do.body98 [
    i32 2, label %do.body54
    i32 1, label %do.body76
  ]

do.body54:                                        ; preds = %if.end49
  %8 = call { i64, i64, i64, i64 } asm sideeffect "hvc\09#0\0A", "={x0},={x1},={x2},={x3},{x0},~{memory}"(i64 2248146944) #6, !srcloc !11
  %asmresult64 = extractvalue { i64, i64, i64, i64 } %8, 3
  %asmresult63 = extractvalue { i64, i64, i64, i64 } %8, 2
  %asmresult62 = extractvalue { i64, i64, i64, i64 } %8, 1
  %asmresult61 = extractvalue { i64, i64, i64, i64 } %8, 0
  store i64 %asmresult61, i64* %a038, align 8
  store i64 %asmresult62, i64* %a140, align 8
  store i64 %asmresult63, i64* %a243, align 8
  store i64 %asmresult64, i64* %a346, align 8
  br label %sw.epilog107

do.body76:                                        ; preds = %if.end49
  %9 = call { i64, i64, i64, i64 } asm sideeffect "smc\09#0\0A", "={x0},={x1},={x2},={x3},{x0},~{memory}"(i64 2248146944) #6, !srcloc !12
  %asmresult86 = extractvalue { i64, i64, i64, i64 } %9, 3
  %asmresult85 = extractvalue { i64, i64, i64, i64 } %9, 2
  %asmresult84 = extractvalue { i64, i64, i64, i64 } %9, 1
  %asmresult83 = extractvalue { i64, i64, i64, i64 } %9, 0
  store i64 %asmresult83, i64* %a038, align 8
  store i64 %asmresult84, i64* %a140, align 8
  store i64 %asmresult85, i64* %a243, align 8
  store i64 %asmresult86, i64* %a346, align 8
  br label %sw.epilog107

do.body98:                                        ; preds = %if.end49
  call void asm sideeffect "", "{x0},~{memory}"(i64 2248146944) #6, !srcloc !13
  store i64 -1, i64* %a038, align 8
  %.pre = load i64, i64* %a140, align 8
  %.pre184 = load i64, i64* %a243, align 8
  %.pre185 = load i64, i64* %a346, align 8
  br label %sw.epilog107

sw.epilog107:                                     ; preds = %do.body98, %do.body76, %do.body54
  %10 = phi i64 [ %.pre185, %do.body98 ], [ %asmresult86, %do.body76 ], [ %asmresult64, %do.body54 ]
  %11 = phi i64 [ %.pre184, %do.body98 ], [ %asmresult85, %do.body76 ], [ %asmresult63, %do.body54 ]
  %12 = phi i64 [ %.pre, %do.body98 ], [ %asmresult84, %do.body76 ], [ %asmresult62, %do.body54 ]
  %13 = phi i64 [ -1, %do.body98 ], [ %asmresult83, %do.body76 ], [ %asmresult61, %do.body54 ]
  %conv = trunc i64 %13 to i32
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %val, i64 0, i64 0
  store i32 %conv, i32* %arrayidx, align 4
  %conv112 = trunc i64 %12 to i32
  %arrayidx113 = getelementptr inbounds [4 x i32], [4 x i32]* %val, i64 0, i64 1
  store i32 %conv112, i32* %arrayidx113, align 4
  %conv116 = trunc i64 %11 to i32
  %arrayidx117 = getelementptr inbounds [4 x i32], [4 x i32]* %val, i64 0, i64 2
  store i32 %conv116, i32* %arrayidx117, align 4
  %conv120 = trunc i64 %10 to i32
  %arrayidx121 = getelementptr inbounds [4 x i32], [4 x i32]* %val, i64 0, i64 3
  store i32 %conv120, i32* %arrayidx121, align 4
  call void @bitmap_from_arr32(i64* noundef getelementptr inbounds ([2 x i64], [2 x i64]* @__kvm_arm_hyp_services, i64 0, i64 0), i32* noundef nonnull %arrayidx, i32 noundef 128) #7
  %14 = load i64, i64* %a346, align 8
  %15 = load i64, i64* %a243, align 8
  %16 = load i64, i64* %a140, align 8
  %17 = load i64, i64* %a038, align 8
  %call130 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry, %sw.epilog107
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_smccc_1_1_get_conduit() local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_from_arr32(i64* noundef, i32* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i1 @kvm_arm_hyp_service_available(i32 noundef %func_id) local_unnamed_addr #5 {
entry:
  %cmp = icmp ugt i32 %func_id, 127
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %div.i = lshr i32 %func_id, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr [2 x i64], [2 x i64]* @__kvm_arm_hyp_services, i64 0, i64 %idxprom.i
  %0 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %func_id, 63
  %sh_prom.i = zext i32 %and.i to i64
  %1 = shl nuw i64 1, %sh_prom.i
  %2 = and i64 %0, %1
  %tobool = icmp ne i64 %2, 0
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i1 [ %tobool, %if.end ], [ false, %entry ]
  ret i1 %retval.0
}

attributes #0 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { cold nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"auto-init"}
!8 = !{i64 2148550476}
!9 = !{i64 2148552417}
!10 = !{i64 2148553566}
!11 = !{i64 2148557004}
!12 = !{i64 2148558900}
!13 = !{i64 2148560019}
