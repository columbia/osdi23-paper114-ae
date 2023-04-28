; ModuleID = 'drivers/clk/clk-multiplier.c'
source_filename = "drivers/clk/clk-multiplier.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.clk_hw = type { %struct.clk_core*, %struct.clk*, %struct.clk_init_data* }
%struct.clk_core = type opaque
%struct.clk = type opaque
%struct.clk_init_data = type { i8*, %struct.clk_ops*, i8**, %struct.clk_parent_data*, %struct.clk_hw**, i8, i64 }
%struct.clk_ops = type { {}*, void (%struct.clk_hw*)*, {}*, void (%struct.clk_hw*)*, {}*, void (%struct.clk_hw*)*, {}*, void (%struct.clk_hw*)*, {}*, void (%struct.clk_hw*)*, i64 (%struct.clk_hw*, i64)*, i64 (%struct.clk_hw*, i64, i64*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, i8)*, i8 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64, i8)*, i64 (%struct.clk_hw*, i64)*, {}*, i32 (%struct.clk_hw*, i32)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, {}*, void (%struct.clk_hw*)*, void (%struct.clk_hw*, %struct.dentry*)* }
%struct.clk_parent_data = type { %struct.clk_hw*, i8*, i8*, i32 }
%struct.clk_rate_request = type { i64, i64, i64, i64, %struct.clk_hw* }
%struct.clk_duty = type { i32, i32 }
%struct.dentry = type opaque
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.clk_multiplier = type { %struct.clk_hw, i8*, i8, i8, i8, %struct.spinlock* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }

@clk_multiplier_ops = dso_local local_unnamed_addr constant { i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i64 (%struct.clk_hw*, i64)*, i64 (%struct.clk_hw*, i64, i64*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, i8)*, i8 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64, i8)*, i64 (%struct.clk_hw*, i64)*, i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i32)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, void (%struct.clk_hw*, %struct.dentry*)* } { i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i64 (%struct.clk_hw*, i64)* @clk_multiplier_recalc_rate, i64 (%struct.clk_hw*, i64, i64*)* @clk_multiplier_round_rate, i32 (%struct.clk_hw*, %struct.clk_rate_request*)* null, i32 (%struct.clk_hw*, i8)* null, i8 (%struct.clk_hw*)* null, i32 (%struct.clk_hw*, i64, i64)* @clk_multiplier_set_rate, i32 (%struct.clk_hw*, i64, i64, i8)* null, i64 (%struct.clk_hw*, i64)* null, i32 (%struct.clk_hw*)* null, i32 (%struct.clk_hw*, i32)* null, i32 (%struct.clk_hw*, %struct.clk_duty*)* null, i32 (%struct.clk_hw*, %struct.clk_duty*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, void (%struct.clk_hw*, %struct.dentry*)* null }, align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @clk_multiplier_recalc_rate(%struct.clk_hw* nocapture noundef readonly %hw, i64 noundef %parent_rate) #0 {
entry:
  %0 = bitcast %struct.clk_hw* %hw to %struct.clk_multiplier*
  %call = call fastcc i32 @clk_mult_readl(%struct.clk_multiplier* noundef %0) #6
  %shift = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 1, i32 1
  %1 = bitcast %struct.clk** %shift to i8*
  %2 = load i8, i8* %1, align 8
  %conv = zext i8 %2 to i32
  %shr = lshr i32 %call, %conv
  %conv1 = zext i32 %shr to i64
  %width = getelementptr inbounds %struct.clk_multiplier, %struct.clk_multiplier* %0, i64 0, i32 3
  %3 = load i8, i8* %width, align 1
  %conv2 = zext i8 %3 to i64
  %sub3 = sub nsw i64 64, %conv2
  %sh_prom = and i64 %sub3, 4294967295
  %shr4 = lshr i64 -1, %sh_prom
  %and5 = and i64 %shr4, %conv1
  %tobool.not = icmp eq i64 %and5, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.clk_multiplier, %struct.clk_multiplier* %0, i64 0, i32 4
  %4 = load i8, i8* %flags, align 2
  %5 = and i8 %4, 1
  %6 = zext i8 %5 to i64
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %val.0 = phi i64 [ %and5, %entry ], [ %6, %land.lhs.true ]
  %mul = mul i64 %val.0, %parent_rate
  ret i64 %mul
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @clk_multiplier_round_rate(%struct.clk_hw* noundef %hw, i64 noundef %rate, i64* nocapture noundef %parent_rate) #0 {
entry:
  %0 = bitcast %struct.clk_hw* %hw to %struct.clk_multiplier*
  %width = getelementptr inbounds %struct.clk_multiplier, %struct.clk_multiplier* %0, i64 0, i32 3
  %1 = load i8, i8* %width, align 1
  %flags = getelementptr inbounds %struct.clk_multiplier, %struct.clk_multiplier* %0, i64 0, i32 4
  %2 = load i8, i8* %flags, align 2
  %conv = zext i8 %2 to i64
  %call = call fastcc i64 @__bestmult(%struct.clk_hw* noundef %hw, i64 noundef %rate, i64* noundef %parent_rate, i8 noundef %1, i64 noundef %conv) #6
  %3 = load i64, i64* %parent_rate, align 8
  %mul = mul i64 %3, %call
  ret i64 %mul
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @clk_multiplier_set_rate(%struct.clk_hw* nocapture noundef readonly %hw, i64 noundef %rate, i64 noundef %parent_rate) #0 {
entry:
  %0 = bitcast %struct.clk_hw* %hw to %struct.clk_multiplier*
  %call = call fastcc i64 @__get_mult(%struct.clk_multiplier* noundef %0, i64 noundef %rate, i64 noundef %parent_rate) #6
  %lock = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 1, i32 2
  %1 = bitcast %struct.clk_init_data** %lock to %struct.spinlock**
  %2 = load %struct.spinlock*, %struct.spinlock** %1, align 8
  %tobool.not = icmp eq %struct.spinlock* %2, null
  br i1 %tobool.not, label %if.end, label %do.body2

do.body2:                                         ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %2, i64 0, i32 0, i32 0
  %call6 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #6
  br label %if.end

if.end:                                           ; preds = %entry, %do.body2
  %flags.0 = phi i64 [ %call6, %do.body2 ], [ 0, %entry ]
  %call11 = call fastcc i32 @clk_mult_readl(%struct.clk_multiplier* noundef %0) #6
  %conv12 = zext i32 %call11 to i64
  %shift = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 1, i32 1
  %3 = bitcast %struct.clk** %shift to i8*
  %4 = load i8, i8* %3, align 8
  %conv13 = zext i8 %4 to i64
  %shl.neg = shl nsw i64 -1, %conv13
  %width = getelementptr inbounds %struct.clk_multiplier, %struct.clk_multiplier* %0, i64 0, i32 3
  %5 = load i8, i8* %width, align 1
  %conv14 = zext i8 %5 to i64
  %6 = add nuw nsw i64 %conv13, %conv14
  %sub19 = sub nsw i64 64, %6
  %sh_prom20 = and i64 %sub19, 4294967295
  %shr = lshr i64 -1, %sh_prom20
  %and = and i64 %shr, %shl.neg
  %neg = xor i64 %and, -1
  %and22 = and i64 %neg, %conv12
  %shl26 = shl i64 %call, %conv13
  %or = or i64 %and22, %shl26
  %conv27 = trunc i64 %or to i32
  call fastcc void @clk_mult_writel(%struct.clk_multiplier* noundef %0, i32 noundef %conv27) #6
  %7 = load %struct.spinlock*, %struct.spinlock** %1, align 8
  %tobool29.not = icmp eq %struct.spinlock* %7, null
  br i1 %tobool29.not, label %if.end33, label %if.then30

if.then30:                                        ; preds = %if.end
  %rlock.i51 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %7, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i51, i64 noundef %flags.0) #7
  br label %if.end33

if.end33:                                         ; preds = %if.end, %if.then30
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @clk_mult_readl(%struct.clk_multiplier* nocapture noundef readonly %mult) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.clk_multiplier, %struct.clk_multiplier* %mult, i64 0, i32 4
  %0 = load i8, i8* %flags, align 2
  %1 = and i8 %0, 4
  %tobool.not = icmp eq i8 %1, 0
  %reg5 = getelementptr inbounds %struct.clk_multiplier, %struct.clk_multiplier* %mult, i64 0, i32 1
  %2 = load i8*, i8** %reg5, align 8
  %3 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %2) #8
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i32 @__fswab32(i32 noundef %3) #9
  call void asm sideeffect "dmb oshld", "~{memory}"() #8, !srcloc !7
  %conv2 = zext i32 %call1 to i64
  %4 = call i64 asm sideeffect "eor\09$0, $1, $1\0Acbnz\09$0, .", "=r,r,~{memory}"(i64 %conv2) #8, !srcloc !8
  br label %return

if.end:                                           ; preds = %entry
  call void asm sideeffect "dmb oshld", "~{memory}"() #8, !srcloc !9
  %conv9 = zext i32 %3 to i64
  %5 = call i64 asm sideeffect "eor\09$0, $1, $1\0Acbnz\09$0, .", "=r,r,~{memory}"(i64 %conv9) #8, !srcloc !10
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__fswab32(i32 noundef %val) unnamed_addr #1 {
entry:
  %or7 = call i32 @llvm.bswap.i32(i32 %val)
  ret i32 %or7
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__bestmult(%struct.clk_hw* noundef %hw, i64 noundef %rate, i64* nocapture noundef %best_parent_rate, i8 noundef %width, i64 noundef %flags) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.clk_hw* %hw to %struct.clk_multiplier*
  %1 = load i64, i64* %best_parent_rate, align 8
  %conv = zext i8 %width to i32
  %notmask = shl nsw i32 -1, %conv
  %sub = xor i32 %notmask, -1
  %call = call i64 @clk_hw_get_flags(%struct.clk_hw* noundef %hw) #7
  %and = and i64 %call, 4
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp1472 = icmp ult i32 %notmask, -2
  br i1 %cmp1472, label %for.body, label %cleanup

if.then:                                          ; preds = %entry
  %div = udiv i64 %rate, %1
  %conv1 = trunc i64 %div to i32
  %cmp = icmp eq i32 %conv1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %flags3 = getelementptr inbounds %struct.clk_multiplier, %struct.clk_multiplier* %0, i64 0, i32 4
  %2 = load i8, i8* %flags3, align 2
  %3 = and i8 %2, 1
  %4 = xor i8 %3, 1
  %5 = zext i8 %4 to i32
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %if.then
  %bestmult.0 = phi i32 [ %conv1, %if.then ], [ %5, %land.lhs.true ]
  %cmp8 = icmp ugt i32 %bestmult.0, %sub
  %spec.select70 = select i1 %cmp8, i32 %sub, i32 %bestmult.0
  br label %cleanup

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %bestmult.276 = phi i32 [ %bestmult.3, %for.inc ], [ 0, %for.cond.preheader ]
  %i.074 = phi i32 [ %inc, %for.inc ], [ 1, %for.cond.preheader ]
  %best_rate.073 = phi i64 [ %best_rate.1, %for.inc ], [ -1, %for.cond.preheader ]
  %conv16 = zext i32 %i.074 to i64
  %mul = mul i64 %1, %conv16
  %cmp17 = icmp eq i64 %mul, %rate
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %for.body
  store i64 %1, i64* %best_parent_rate, align 8
  br label %cleanup

if.end21:                                         ; preds = %for.body
  %call22 = call %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw* noundef %hw) #7
  %div24 = udiv i64 %rate, %conv16
  %call25 = call i64 @clk_hw_round_rate(%struct.clk_hw* noundef %call22, i64 noundef %div24) #7
  %mul27 = mul i64 %call25, %conv16
  %call28 = call fastcc i1 @__is_best_rate(i64 noundef %rate, i64 noundef %mul27, i64 noundef %best_rate.073, i64 noundef %flags) #6
  br i1 %call28, label %if.then29, label %for.inc

if.then29:                                        ; preds = %if.end21
  store i64 %call25, i64* %best_parent_rate, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end21, %if.then29
  %best_rate.1 = phi i64 [ %mul27, %if.then29 ], [ %best_rate.073, %if.end21 ]
  %bestmult.3 = phi i32 [ %i.074, %if.then29 ], [ %bestmult.276, %if.end21 ]
  %inc = add i32 %i.074, 1
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %for.cond.preheader, %if.then19, %if.end
  %retval.0.in = phi i32 [ %i.074, %if.then19 ], [ %spec.select70, %if.end ], [ 0, %for.cond.preheader ], [ %bestmult.3, %for.inc ]
  %retval.0 = zext i32 %retval.0.in to i64
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clk_hw_get_flags(%struct.clk_hw* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clk_hw_round_rate(%struct.clk_hw* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @__is_best_rate(i64 noundef %rate, i64 noundef %new, i64 noundef %best, i64 noundef %flags) unnamed_addr #1 {
entry:
  %and = and i64 %flags, 2
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %sub = sub i64 %rate, %new
  %0 = call i64 @llvm.abs.i64(i64 %sub, i1 false)
  %sub3 = sub i64 %rate, %best
  %1 = call i64 @llvm.abs.i64(i64 %sub3, i1 false)
  %cmp11 = icmp slt i64 %0, %1
  br label %return

if.end:                                           ; preds = %entry
  %cmp12 = icmp ule i64 %rate, %new
  %cmp13 = icmp ult i64 %new, %best
  %2 = and i1 %cmp12, %cmp13
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i1 [ %cmp11, %if.then ], [ %2, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @__get_mult(%struct.clk_multiplier* nocapture noundef readonly %mult, i64 noundef %rate, i64 noundef %parent_rate) unnamed_addr #3 {
entry:
  %flags = getelementptr inbounds %struct.clk_multiplier, %struct.clk_multiplier* %mult, i64 0, i32 4
  %0 = load i8, i8* %flags, align 2
  %1 = and i8 %0, 2
  %tobool.not = icmp eq i8 %1, 0
  %div = lshr i64 %parent_rate, 1
  %add = select i1 %tobool.not, i64 0, i64 %div
  %add.pn = add i64 %add, %rate
  %retval.0 = udiv i64 %add.pn, %parent_rate
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #6
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #6
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clk_mult_writel(%struct.clk_multiplier* nocapture noundef readonly %mult, i32 noundef %val) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.clk_multiplier, %struct.clk_multiplier* %mult, i64 0, i32 4
  %0 = load i8, i8* %flags, align 2
  %1 = and i8 %0, 4
  %tobool.not = icmp eq i8 %1, 0
  call void asm sideeffect "dmb oshst", "~{memory}"() #8
  br i1 %tobool.not, label %if.else, label %cond.end

cond.end:                                         ; preds = %entry
  %call = call fastcc i32 @__fswab32(i32 noundef %val) #9
  %reg = getelementptr inbounds %struct.clk_multiplier, %struct.clk_multiplier* %mult, i64 0, i32 1
  %2 = load i8*, i8** %reg, align 8
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %call, i8* %2) #8, !srcloc !12
  br label %if.end

if.else:                                          ; preds = %entry
  %reg9 = getelementptr inbounds %struct.clk_multiplier, %struct.clk_multiplier* %mult, i64 0, i32 1
  %3 = load i8*, i8** %reg9, align 8
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %val, i8* %3) #8, !srcloc !12
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #6
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #7
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !13

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #7
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #8, !srcloc !14
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #8, !srcloc !15
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #6
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !16

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #8, !srcloc !17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #4 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #8, !srcloc !18
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #6
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #6
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #8, !srcloc !20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #8, !srcloc !21
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
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
!7 = !{i64 2151931225}
!8 = !{i64 2151931068, i64 2151931100}
!9 = !{i64 2151931973}
!10 = !{i64 2151931816, i64 2151931848}
!11 = !{i64 2149582417}
!12 = !{i64 3365831}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2149505161, i64 2149505208, i64 2149505214, i64 2149505251, i64 2149505269, i64 2149506580, i64 2149506628, i64 2149506676, i64 2149506739, i64 2149506788, i64 2149505347, i64 2149505372, i64 2149505398, i64 2149505404, i64 2149506246, i64 2149506286, i64 2149506304, i64 2149506336, i64 2149506364, i64 2149506418, i64 2149506438, i64 2149506535, i64 2149505427, i64 2149505441, i64 2149505447, i64 2149505497, i64 2149505543, i64 2149505576}
!15 = !{i64 2149507340, i64 2149507387, i64 2149507393, i64 2149507430, i64 2149507448, i64 2149508391, i64 2149508439, i64 2149508487, i64 2149508550, i64 2149508599, i64 2149507526, i64 2149507551, i64 2149507577, i64 2149507583, i64 2149507620, i64 2149507626, i64 2149507676, i64 2149507722, i64 2149507755}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2149499458, i64 2149499505, i64 2149499511, i64 2149499548, i64 2149499566, i64 2149500907, i64 2149500955, i64 2149501003, i64 2149501066, i64 2149501115, i64 2149499644, i64 2149499669, i64 2149499695, i64 2149499701, i64 2149500573, i64 2149500613, i64 2149500631, i64 2149500663, i64 2149500691, i64 2149500745, i64 2149500765, i64 2149500862, i64 2149499724, i64 2149499738, i64 2149499744, i64 2149499794, i64 2149499840, i64 2149499873}
!18 = !{i64 2147781635, i64 2147781668, i64 2147781721, i64 2147781780, i64 2147781814, i64 2147781869, i64 2147781898, i64 2147781918}
!19 = !{i64 2149608260}
!20 = !{i64 2149551559}
!21 = !{i64 2149511174, i64 2149511221, i64 2149511227, i64 2149511264, i64 2149511282, i64 2149512593, i64 2149512641, i64 2149512689, i64 2149512752, i64 2149512801, i64 2149511360, i64 2149511385, i64 2149511411, i64 2149511417, i64 2149512259, i64 2149512299, i64 2149512317, i64 2149512349, i64 2149512377, i64 2149512431, i64 2149512451, i64 2149512548, i64 2149511440, i64 2149511454, i64 2149511460, i64 2149511510, i64 2149511556, i64 2149511589}
