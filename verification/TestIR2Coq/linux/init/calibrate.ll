; ModuleID = 'init/calibrate.c'
source_filename = "init/calibrate.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }

@__setup_str_lpj_setup = internal constant [5 x i8] c"lpj=\00", section ".init.rodata", align 1
@__setup_lpj_setup = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__setup_str_lpj_setup, i32 0, i32 0), i32 (i8*)* @lpj_setup, i32 0 }, section ".init.setup", align 8
@calibrate_delay.printed = internal unnamed_addr global i1 false, align 1
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@cpu_loops_per_jiffy = internal global i64 0, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@.str = private unnamed_addr constant [63 x i8] c"\016Calibrating delay loop (skipped) already calibrated this CPU\00", align 1
@preset_lpj = dso_local local_unnamed_addr global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"\016Calibrating delay loop (skipped) preset value.. \00", align 1
@lpj_fine = dso_local local_unnamed_addr global i64 0, align 8
@.str.2 = private unnamed_addr constant [78 x i8] c"\016Calibrating delay loop (skipped), value calculated using timer frequency.. \00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"\016Calibrating delay loop... \00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"\01c%lu.%02lu BogoMIPS (lpj=%lu)\0A\00", align 1
@loops_per_jiffy = external dso_local local_unnamed_addr global i64, align 8
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_kernel_param* @__setup_lpj_setup to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @lpj_setup(i8* noundef %str) #0 section ".init.text" {
entry:
  %call = call i64 @simple_strtoul(i8* noundef %str, i8** noundef null, i32 noundef 0) #6
  store i64 %call, i64* @preset_lpj, align 8
  ret i32 1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @calibrate_delay_is_known() local_unnamed_addr #1 {
entry:
  ret i64 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local void @calibration_delay_done() local_unnamed_addr #1 {
entry:
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @calibrate_delay() local_unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #7
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  %add9 = add i64 %2, ptrtoint (i64* @cpu_loops_per_jiffy to i64)
  %3 = inttoptr i64 %add9 to i64*
  %4 = load i64, i64* %3, align 8
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %if.else, label %do.body10

do.body10:                                        ; preds = %entry
  %.b116121 = load i1, i1* @calibrate_delay.printed, align 1
  br i1 %.b116121, label %if.end75.thread, label %do.end24

do.end24:                                         ; preds = %do.body10
  %call26 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0)) #8
  br label %if.end75

if.else:                                          ; preds = %entry
  %5 = load i64, i64* @preset_lpj, align 8
  %tobool27.not = icmp eq i64 %5, 0
  %.b114117 = load i1, i1* @calibrate_delay.printed, align 1
  br i1 %tobool27.not, label %if.else37, label %if.then28

if.then28:                                        ; preds = %if.else
  br i1 %.b114117, label %if.end75.thread, label %do.end33

do.end33:                                         ; preds = %if.then28
  %call35 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0)) #8
  br label %if.end75

if.else37:                                        ; preds = %if.else
  %tobool38.not = xor i1 %.b114117, true
  %6 = load i64, i64* @lpj_fine, align 8
  %tobool39 = icmp ne i64 %6, 0
  %or.cond = select i1 %tobool38.not, i1 %tobool39, i1 false
  br i1 %or.cond, label %if.then40, label %if.else46

if.then40:                                        ; preds = %if.else37
  %call45 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0)) #8
  br label %if.end75

if.else46:                                        ; preds = %if.else37
  %call47 = call i64 @calibrate_delay_is_known() #7
  %tobool48.not = icmp eq i64 %call47, 0
  br i1 %tobool48.not, label %if.else50, label %if.end75

if.else50:                                        ; preds = %if.else46
  %.b113118 = load i1, i1* @calibrate_delay.printed, align 1
  br i1 %.b113118, label %if.end69, label %do.end66

do.end66:                                         ; preds = %if.else50
  %call68 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0)) #8
  br label %if.end69

if.end69:                                         ; preds = %do.end66, %if.else50
  %call70 = call fastcc i64 @calibrate_delay_converge() #7
  br label %if.end75

if.end75.thread:                                  ; preds = %if.then28, %do.body10
  %lpj.0.ph122 = phi i64 [ %5, %if.then28 ], [ %4, %do.body10 ]
  store i64 %lpj.0.ph122, i64* %3, align 8
  br label %if.end94

if.end75:                                         ; preds = %do.end33, %if.else46, %if.end69, %if.then40, %do.end24
  %lpj.0.ph = phi i64 [ %call70, %if.end69 ], [ %call47, %if.else46 ], [ %6, %if.then40 ], [ %5, %do.end33 ], [ %4, %do.end24 ]
  %.b119.pr = load i1, i1* @calibrate_delay.printed, align 1
  %7 = load i64, i64* %arrayidx, align 8
  %add85 = add i64 %7, ptrtoint (i64* @cpu_loops_per_jiffy to i64)
  %8 = inttoptr i64 %add85 to i64*
  store i64 %lpj.0.ph, i64* %8, align 8
  br i1 %.b119.pr, label %if.end94, label %do.end90

do.end90:                                         ; preds = %if.end75
  %div = udiv i64 %lpj.0.ph, 2000
  %div92 = udiv i64 %lpj.0.ph, 20
  %rem = urem i64 %div92, 100
  %call93 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 noundef %div, i64 noundef %rem, i64 noundef %lpj.0.ph) #8
  br label %if.end94

if.end94:                                         ; preds = %if.end75.thread, %do.end90, %if.end75
  %lpj.0126 = phi i64 [ %lpj.0.ph122, %if.end75.thread ], [ %lpj.0.ph, %do.end90 ], [ %lpj.0.ph, %if.end75 ]
  store i64 %lpj.0126, i64* @loops_per_jiffy, align 8
  store i1 true, i1* @calibrate_delay.printed, align 1
  call void @calibration_delay_done() #7
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #2 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #9, !srcloc !8
  ret i64 %2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @calibrate_delay_converge() unnamed_addr #1 {
entry:
  %0 = load volatile i64, i64* @jiffies, align 64
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %1 = load volatile i64, i64* @jiffies, align 64
  %cmp = icmp eq i64 %0, %1
  br i1 %cmp, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond
  %2 = load volatile i64, i64* @jiffies, align 64
  br label %do.body

do.body:                                          ; preds = %do.body, %while.end
  %trials.0 = phi i32 [ 0, %while.end ], [ %add, %do.body ]
  %band.0 = phi i32 [ 0, %while.end ], [ %spec.select, %do.body ]
  %trial_in_band.0 = phi i32 [ 0, %while.end ], [ %spec.select70, %do.body ]
  %inc = add i32 %trial_in_band.0, 1
  %shl = shl nuw i32 1, %band.0
  %cmp1 = icmp eq i32 %inc, %shl
  %inc2 = zext i1 %cmp1 to i32
  %spec.select = add i32 %band.0, %inc2
  %spec.select70 = select i1 %cmp1, i32 0, i32 %inc
  %conv = sext i32 %spec.select to i64
  %mul = shl nsw i64 %conv, 12
  call void @__delay(i64 noundef %mul) #6
  %add = add i32 %spec.select, %trials.0
  %3 = load volatile i64, i64* @jiffies, align 64
  %cmp3 = icmp eq i64 %2, %3
  br i1 %cmp3, label %do.body, label %do.end

do.end:                                           ; preds = %do.body
  %conv7 = sext i32 %trials.0 to i64
  %mul8 = shl nsw i64 %conv7, 12
  br label %recalibrate

recalibrate:                                      ; preds = %while.end25, %do.end
  %lpj_base.0 = phi i64 [ %mul8, %do.end ], [ %lpj.0.lcssa, %while.end25 ]
  %loopadd_base.0 = phi i64 [ %mul, %do.end ], [ %shl33, %while.end25 ]
  %shr = lshr i64 %lpj_base.0, 8
  %cmp1072 = icmp ugt i64 %loopadd_base.0, %shr
  br i1 %cmp1072, label %while.body12, label %while.end25

while.body12:                                     ; preds = %recalibrate, %while.end18
  %loopadd.074 = phi i64 [ %shr24, %while.end18 ], [ %loopadd_base.0, %recalibrate ]
  %lpj.073 = phi i64 [ %spec.select71, %while.end18 ], [ %lpj_base.0, %recalibrate ]
  %4 = load volatile i64, i64* @jiffies, align 64
  br label %while.cond14

while.cond14:                                     ; preds = %while.cond14, %while.body12
  %5 = load volatile i64, i64* @jiffies, align 64
  %cmp15 = icmp eq i64 %4, %5
  br i1 %cmp15, label %while.cond14, label %while.end18

while.end18:                                      ; preds = %while.cond14
  %add13 = add i64 %loopadd.074, %lpj.073
  %6 = load volatile i64, i64* @jiffies, align 64
  call void @__delay(i64 noundef %add13) #6
  %7 = load volatile i64, i64* @jiffies, align 64
  %cmp19.not = icmp eq i64 %7, %6
  %spec.select71 = select i1 %cmp19.not, i64 %add13, i64 %lpj.073
  %shr24 = lshr i64 %loopadd.074, 1
  %cmp10 = icmp ugt i64 %shr24, %shr
  br i1 %cmp10, label %while.body12, label %while.end25

while.end25:                                      ; preds = %while.end18, %recalibrate
  %lpj.0.lcssa = phi i64 [ %lpj_base.0, %recalibrate ], [ %spec.select71, %while.end18 ]
  %loopadd.0.lcssa = phi i64 [ %loopadd_base.0, %recalibrate ], [ %shr24, %while.end18 ]
  %mul26 = shl i64 %loopadd.0.lcssa, 1
  %add27 = add i64 %mul26, %lpj.0.lcssa
  %mul28 = shl i64 %loopadd_base.0, 1
  %add29 = add i64 %mul28, %lpj_base.0
  %cmp30 = icmp eq i64 %add27, %add29
  %shl33 = shl i64 %loopadd_base.0, 2
  br i1 %cmp30, label %recalibrate, label %if.end34

if.end34:                                         ; preds = %while.end25
  ret i64 %lpj.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @simple_strtoul(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__delay(i64 noundef) local_unnamed_addr #4

attributes #0 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { nofree nounwind readonly }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { cold nobuiltin nounwind "no-builtins" }
attributes #9 = { nounwind readonly }

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
!8 = !{i64 2148988196, i64 2148988243, i64 2148988249, i64 2148988286, i64 2148988304, i64 2148989231, i64 2148989279, i64 2148989327, i64 2148989390, i64 2148989439, i64 2148988382, i64 2148988407, i64 2148988433, i64 2148988439, i64 2148988476, i64 2148988482, i64 2148988532, i64 2148988578, i64 2148988611}
