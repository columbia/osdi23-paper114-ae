; ModuleID = 'arch/arm64/kernel/idreg-override.c'
source_filename = "arch/arm64/kernel/idreg-override.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ftr_set_desc = type { [20 x i8], %struct.arm64_ftr_override*, [0 x %struct.anon] }
%struct.arm64_ftr_override = type { i64, i64 }
%struct.anon = type { [10 x i8], i8, i1 (i64)* }
%struct.anon.0 = type { [30 x i8], [80 x i8] }

@regs = internal unnamed_addr constant [4 x %struct.ftr_set_desc*] [%struct.ftr_set_desc* bitcast ({ [20 x i8], %struct.arm64_ftr_override*, [2 x %struct.anon] }* @mmfr1 to %struct.ftr_set_desc*), %struct.ftr_set_desc* bitcast ({ [20 x i8], %struct.arm64_ftr_override*, [3 x %struct.anon] }* @pfr1 to %struct.ftr_set_desc*), %struct.ftr_set_desc* bitcast ({ [20 x i8], %struct.arm64_ftr_override*, [5 x %struct.anon] }* @isar1 to %struct.ftr_set_desc*), %struct.ftr_set_desc* bitcast ({ [20 x i8], %struct.arm64_ftr_override*, [2 x %struct.anon] }* @kaslr to %struct.ftr_set_desc*)], section ".init.rodata", align 8
@id_aa64mmfr1_override = external dso_local global %struct.arm64_ftr_override, align 8
@mmfr1 = internal constant { [20 x i8], %struct.arm64_ftr_override*, [2 x %struct.anon] } { [20 x i8] c"id_aa64mmfr1\00\00\00\00\00\00\00\00", %struct.arm64_ftr_override* @id_aa64mmfr1_override, [2 x %struct.anon] [%struct.anon { [10 x i8] c"vh\00\00\00\00\00\00\00\00", i8 8, i1 (i64)* @mmfr1_vh_filter }, %struct.anon zeroinitializer] }, section ".init.rodata", align 8
@id_aa64pfr1_override = external dso_local global %struct.arm64_ftr_override, align 8
@pfr1 = internal constant { [20 x i8], %struct.arm64_ftr_override*, [3 x %struct.anon] } { [20 x i8] c"id_aa64pfr1\00\00\00\00\00\00\00\00\00", %struct.arm64_ftr_override* @id_aa64pfr1_override, [3 x %struct.anon] [%struct.anon { [10 x i8] c"bt\00\00\00\00\00\00\00\00", i8 0, i1 (i64)* null }, %struct.anon { [10 x i8] c"mte\00\00\00\00\00\00\00", i8 8, i1 (i64)* null }, %struct.anon zeroinitializer] }, section ".init.rodata", align 8
@id_aa64isar1_override = external dso_local global %struct.arm64_ftr_override, align 8
@isar1 = internal constant { [20 x i8], %struct.arm64_ftr_override*, [5 x %struct.anon] } { [20 x i8] c"id_aa64isar1\00\00\00\00\00\00\00\00", %struct.arm64_ftr_override* @id_aa64isar1_override, [5 x %struct.anon] [%struct.anon { [10 x i8] c"gpi\00\00\00\00\00\00\00", i8 28, i1 (i64)* null }, %struct.anon { [10 x i8] c"gpa\00\00\00\00\00\00\00", i8 24, i1 (i64)* null }, %struct.anon { [10 x i8] c"api\00\00\00\00\00\00\00", i8 8, i1 (i64)* null }, %struct.anon { [10 x i8] c"apa\00\00\00\00\00\00\00", i8 4, i1 (i64)* null }, %struct.anon zeroinitializer] }, section ".init.rodata", align 8
@kaslr = internal constant { [20 x i8], %struct.arm64_ftr_override*, [2 x %struct.anon] } { [20 x i8] c"kaslr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.arm64_ftr_override* null, [2 x %struct.anon] [%struct.anon { [10 x i8] c"disabled\00\00", i8 0, i1 (i64)* null }, %struct.anon zeroinitializer] }, section ".init.rodata", align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"bootargs\00", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@aliases = internal constant [6 x %struct.anon.0] [%struct.anon.0 { [30 x i8] c"kvm-arm.mode=nvhe\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"id_aa64mmfr1.vh=0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.0 { [30 x i8] c"kvm-arm.mode=protected\00\00\00\00\00\00\00\00", [80 x i8] c"id_aa64mmfr1.vh=0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.0 { [30 x i8] c"arm64.nobti\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"id_aa64pfr1.bt=0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.0 { [30 x i8] c"arm64.nopauth\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"id_aa64isar1.gpi=0 id_aa64isar1.gpa=0 id_aa64isar1.api=0 id_aa64isar1.apa=0\00\00\00\00\00" }, %struct.anon.0 { [30 x i8] c"arm64.nomte\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"id_aa64pfr1.mte=0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.0 { [30 x i8] c"nokaslr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"kaslr.disabled=1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], section ".init.rodata", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%s.%s=\00", align 1

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @init_feature_override() local_unnamed_addr #0 section ".init.text" {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr [4 x %struct.ftr_set_desc*], [4 x %struct.ftr_set_desc*]* @regs, i64 0, i64 %indvars.iv
  %0 = load %struct.ftr_set_desc*, %struct.ftr_set_desc** %arrayidx, align 8
  %override = getelementptr inbounds %struct.ftr_set_desc, %struct.ftr_set_desc* %0, i64 0, i32 1
  %1 = load %struct.arm64_ftr_override*, %struct.arm64_ftr_override** %override, align 8
  %tobool.not = icmp eq %struct.arm64_ftr_override* %1, null
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %val = getelementptr inbounds %struct.arm64_ftr_override, %struct.arm64_ftr_override* %1, i64 0, i32 0
  store i64 0, i64* %val, align 8
  %2 = load %struct.arm64_ftr_override*, %struct.arm64_ftr_override** %override, align 8
  %mask = getelementptr inbounds %struct.arm64_ftr_override, %struct.arm64_ftr_override* %2, i64 0, i32 1
  store i64 0, i64* %mask, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  call fastcc void @parse_cmdline() #5
  br label %for.body12

for.body12:                                       ; preds = %for.end, %for.inc25
  %indvars.iv44 = phi i64 [ 0, %for.end ], [ %indvars.iv.next45, %for.inc25 ]
  %arrayidx14 = getelementptr [4 x %struct.ftr_set_desc*], [4 x %struct.ftr_set_desc*]* @regs, i64 0, i64 %indvars.iv44
  %3 = load %struct.ftr_set_desc*, %struct.ftr_set_desc** %arrayidx14, align 8
  %override15 = getelementptr inbounds %struct.ftr_set_desc, %struct.ftr_set_desc* %3, i64 0, i32 1
  %4 = load %struct.arm64_ftr_override*, %struct.arm64_ftr_override** %override15, align 8
  %tobool16.not = icmp eq %struct.arm64_ftr_override* %4, null
  br i1 %tobool16.not, label %for.inc25, label %if.then17

if.then17:                                        ; preds = %for.body12
  %5 = ptrtoint %struct.arm64_ftr_override* %4 to i64
  %add = add i64 %5, 16
  call void @dcache_clean_inval_poc(i64 noundef %5, i64 noundef %add) #6
  br label %for.inc25

for.inc25:                                        ; preds = %for.body12, %if.then17
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %exitcond47.not = icmp eq i64 %indvars.iv.next45, 4
  br i1 %exitcond47.not, label %for.end27, label %for.body12

for.end27:                                        ; preds = %for.inc25
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @parse_cmdline() unnamed_addr #0 section ".init.text" {
entry:
  %call = call fastcc i8* @get_bootargs_cmdline() #5
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.then, label %if.then2

if.then:                                          ; preds = %entry
  call fastcc void @__parse_cmdline(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i1 noundef true) #5
  br label %if.end3

if.then2:                                         ; preds = %entry
  call fastcc void @__parse_cmdline(i8* noundef nonnull %call, i1 noundef true) #5
  br label %if.end3

if.end3:                                          ; preds = %if.then, %if.then2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dcache_clean_inval_poc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i1 @mmfr1_vh_filter(i64 noundef %val) #0 section ".init.text" {
entry:
  %call = call fastcc i1 @is_kernel_in_hyp_mode() #7
  %cmp = icmp eq i64 %val, 0
  %0 = and i1 %cmp, %call
  %lnot = xor i1 %0, true
  ret i1 %lnot
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @is_kernel_in_hyp_mode() unnamed_addr #3 {
entry:
  %0 = call i64 asm sideeffect "mrs $0, CurrentEL", "=r"() #8, !srcloc !7
  %cmp = icmp eq i64 %0, 8
  ret i1 %cmp
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i8* @get_bootargs_cmdline() unnamed_addr #0 section ".init.text" {
entry:
  %call = call i8* @get_early_fdt_ptr() #6
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @fdt_path_offset(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #6
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = call i8* @fdt_getprop(i8* noundef nonnull %call, i32 noundef %call1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32* noundef null) #6
  %tobool5.not = icmp eq i8* %call4, null
  br i1 %tobool5.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end3
  %call8 = call i64 @strlen(i8* noundef nonnull %call4) #6
  %tobool9.not = icmp eq i64 %call8, 0
  %cond = select i1 %tobool9.not, i8* null, i8* %call4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end, %entry, %if.end7
  %retval.0 = phi i8* [ %cond, %if.end7 ], [ null, %entry ], [ null, %if.end ], [ null, %if.end3 ]
  ret i8* %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @__parse_cmdline(i8* noundef %cmdline, i1 noundef %parse_aliases) unnamed_addr #0 section ".init.text" {
entry:
  %buf = alloca [256 x i8], align 1
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(256) %0, i8 0, i64 256, i1 false), !annotation !8
  %call74 = call i8* @skip_spaces(i8* noundef %cmdline) #6
  %1 = load i8, i8* %call74, align 1
  %tobool.not6775 = icmp eq i8 %1, 0
  br i1 %tobool.not6775, label %do.end, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %entry, %cleanup
  %2 = phi i8 [ %7, %cleanup ], [ %1, %entry ]
  %call76 = phi i8* [ %call, %cleanup ], [ %call74, %entry ]
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.preheader, %for.inc
  %3 = phi i8 [ %6, %for.inc ], [ %2, %land.rhs.preheader ]
  %len.068 = phi i64 [ %inc, %for.inc ], [ 0, %land.rhs.preheader ]
  %idxprom = zext i8 %3 to i64
  %arrayidx3 = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx3, align 1
  %5 = and i8 %4, 32
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %land.rhs
  %inc = add i64 %len.068, 1
  %arrayidx = getelementptr i8, i8* %call76, i64 %inc
  %6 = load i8, i8* %arrayidx, align 1
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %for.end, label %land.rhs

for.end:                                          ; preds = %land.rhs, %for.inc
  %len.0.lcssa = phi i64 [ %len.068, %land.rhs ], [ %inc, %for.inc ]
  %tobool6.not = icmp eq i64 %len.0.lcssa, 0
  br i1 %tobool6.not, label %do.end, label %if.end

if.end:                                           ; preds = %for.end
  %cmp7 = icmp ult i64 %len.0.lcssa, 255
  %cond = select i1 %cmp7, i64 %len.0.lcssa, i64 255
  %call9 = call i8* @strncpy(i8* noundef nonnull %0, i8* noundef %call76, i64 noundef %cond) #6
  %arrayidx10 = getelementptr [256 x i8], [256 x i8]* %buf, i64 0, i64 %cond
  store i8 0, i8* %arrayidx10, align 1
  %call12 = call i32 @strcmp(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #6
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %do.end, label %if.end16

if.end16:                                         ; preds = %if.end
  %add.ptr = getelementptr i8, i8* %call76, i64 %cond
  call fastcc void @match_options(i8* noundef nonnull %0) #5
  br i1 %parse_aliases, label %for.body26, label %cleanup

for.body26:                                       ; preds = %if.end16, %for.inc37
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc37 ], [ 0, %if.end16 ]
  %arraydecay30 = getelementptr [6 x %struct.anon.0], [6 x %struct.anon.0]* @aliases, i64 0, i64 %indvars.iv, i32 0, i64 0
  %call31 = call i1 @parameq(i8* noundef nonnull %0, i8* noundef %arraydecay30) #6
  br i1 %call31, label %if.then32, label %for.inc37

if.then32:                                        ; preds = %for.body26
  %arraydecay35 = getelementptr [6 x %struct.anon.0], [6 x %struct.anon.0]* @aliases, i64 0, i64 %indvars.iv, i32 1, i64 0
  call fastcc void @__parse_cmdline(i8* noundef %arraydecay35, i1 noundef false) #5
  br label %for.inc37

for.inc37:                                        ; preds = %for.body26, %if.then32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp23 = icmp ult i64 %indvars.iv, 5
  br i1 %cmp23, label %for.body26, label %cleanup

cleanup:                                          ; preds = %for.inc37, %if.end16
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #8
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(256) %0, i8 0, i64 256, i1 false), !annotation !8
  %call = call i8* @skip_spaces(i8* noundef %add.ptr) #6
  %7 = load i8, i8* %call, align 1
  %tobool.not67 = icmp eq i8 %7, 0
  br i1 %tobool.not67, label %do.end, label %land.rhs.preheader

do.end:                                           ; preds = %if.end, %for.end, %cleanup, %entry
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @get_early_fdt_ptr() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_path_offset(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @fdt_getprop(i8* noundef, i32 noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @skip_spaces(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @match_options(i8* noundef %cmdline) unnamed_addr #0 section ".init.text" {
entry:
  %v = alloca i64, align 8
  %0 = bitcast i64* %v to i8*
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc66
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc66 ]
  %arrayidx = getelementptr [4 x %struct.ftr_set_desc*], [4 x %struct.ftr_set_desc*]* @regs, i64 0, i64 %indvars.iv
  %1 = load %struct.ftr_set_desc*, %struct.ftr_set_desc** %arrayidx, align 8
  %override = getelementptr inbounds %struct.ftr_set_desc, %struct.ftr_set_desc* %1, i64 0, i32 1
  %2 = load %struct.arm64_ftr_override*, %struct.arm64_ftr_override** %override, align 8
  %tobool.not = icmp eq %struct.arm64_ftr_override* %2, null
  br i1 %tobool.not, label %for.inc66, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.body
  %arraydecay103 = getelementptr %struct.ftr_set_desc, %struct.ftr_set_desc* %1, i64 0, i32 2, i64 0, i32 0, i64 0
  %call104 = call i64 @strlen(i8* noundef %arraydecay103) #6
  %tobool7.not105 = icmp eq i64 %call104, 0
  br i1 %tobool7.not105, label %for.inc66, label %for.body8

for.body8:                                        ; preds = %for.cond2.preheader, %for.inc
  %idxprom5107 = phi i64 [ %idxprom5, %for.inc ], [ 0, %for.cond2.preheader ]
  %indvars = trunc i64 %idxprom5107 to i32
  %shift14 = getelementptr %struct.ftr_set_desc, %struct.ftr_set_desc* %1, i64 0, i32 2, i64 %idxprom5107, i32 1
  %3 = load i8, i8* %shift14, align 2
  %conv15 = zext i8 %3 to i64
  %shl = shl i64 15, %conv15
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store i64 0, i64* %v, align 8, !annotation !8
  %call18 = call fastcc i32 @find_field(i8* noundef %cmdline, %struct.ftr_set_desc* noundef %1, i32 noundef %indvars, i64* noundef nonnull %v) #5
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %for.inc

if.end21:                                         ; preds = %for.body8
  %filter = getelementptr %struct.ftr_set_desc, %struct.ftr_set_desc* %1, i64 0, i32 2, i64 %idxprom5107, i32 2
  %4 = load i1 (i64)*, i1 (i64)** %filter, align 8
  %tobool27.not = icmp eq i1 (i64)* %4, null
  br i1 %tobool27.not, label %cleanup64, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end21
  %5 = load i64, i64* %v, align 8
  %call34 = call i1 %4(i64 noundef %5) #6
  br i1 %call34, label %cleanup64, label %if.then35

if.then35:                                        ; preds = %land.lhs.true
  %6 = load %struct.arm64_ftr_override*, %struct.arm64_ftr_override** %override, align 8
  %val = getelementptr inbounds %struct.arm64_ftr_override, %struct.arm64_ftr_override* %6, i64 0, i32 0
  %7 = load i64, i64* %val, align 8
  %or = or i64 %7, %shl
  store i64 %or, i64* %val, align 8
  %neg = xor i64 %shl, -1
  %8 = load %struct.arm64_ftr_override*, %struct.arm64_ftr_override** %override, align 8
  %mask42 = getelementptr inbounds %struct.arm64_ftr_override, %struct.arm64_ftr_override* %8, i64 0, i32 1
  %9 = load i64, i64* %mask42, align 8
  %and = and i64 %9, %neg
  store i64 %and, i64* %mask42, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then35, %for.body8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  %inc = shl nsw i64 %idxprom5107, 32
  %sext = add i64 %inc, 4294967296
  %idxprom5 = ashr exact i64 %sext, 32
  %arraydecay = getelementptr %struct.ftr_set_desc, %struct.ftr_set_desc* %1, i64 0, i32 2, i64 %idxprom5, i32 0, i64 0
  %call = call i64 @strlen(i8* noundef %arraydecay) #6
  %tobool7.not = icmp eq i64 %call, 0
  br i1 %tobool7.not, label %for.inc66, label %for.body8

cleanup64:                                        ; preds = %land.lhs.true, %if.end21
  %conv15.le = zext i8 %3 to i64
  %neg44 = xor i64 %shl, -1
  %10 = load %struct.arm64_ftr_override*, %struct.arm64_ftr_override** %override, align 8
  %val48 = getelementptr inbounds %struct.arm64_ftr_override, %struct.arm64_ftr_override* %10, i64 0, i32 0
  %11 = load i64, i64* %val48, align 8
  %and49 = and i64 %11, %neg44
  store i64 %and49, i64* %val48, align 8
  %12 = load i64, i64* %v, align 8
  %shl50 = shl i64 %12, %conv15.le
  %and51 = and i64 %shl50, %shl
  %13 = load %struct.arm64_ftr_override*, %struct.arm64_ftr_override** %override, align 8
  %val55 = getelementptr inbounds %struct.arm64_ftr_override, %struct.arm64_ftr_override* %13, i64 0, i32 0
  %14 = load i64, i64* %val55, align 8
  %or56 = or i64 %14, %and51
  store i64 %or56, i64* %val55, align 8
  %15 = load %struct.arm64_ftr_override*, %struct.arm64_ftr_override** %override, align 8
  %mask60 = getelementptr inbounds %struct.arm64_ftr_override, %struct.arm64_ftr_override* %15, i64 0, i32 1
  %16 = load i64, i64* %mask60, align 8
  %or61 = or i64 %16, %shl
  store i64 %or61, i64* %mask60, align 8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  br label %cleanup69

for.inc66:                                        ; preds = %for.inc, %for.cond2.preheader, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %cleanup69, label %for.body

cleanup69:                                        ; preds = %for.inc66, %cleanup64
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @parameq(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @find_field(i8* noundef %cmdline, %struct.ftr_set_desc* noundef %reg, i32 noundef %f, i64* noundef %v) unnamed_addr #0 section ".init.text" {
entry:
  %opt = alloca [32 x i8], align 1
  %0 = getelementptr inbounds [32 x i8], [32 x i8]* %opt, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !8
  %arraydecay1 = getelementptr inbounds %struct.ftr_set_desc, %struct.ftr_set_desc* %reg, i64 0, i32 0, i64 0
  %idxprom = sext i32 %f to i64
  %arraydecay3 = getelementptr %struct.ftr_set_desc, %struct.ftr_set_desc* %reg, i64 0, i32 2, i64 %idxprom, i32 0, i64 0
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %0, i64 noundef 32, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* noundef %arraydecay1, i8* noundef %arraydecay3) #6
  %conv = sext i32 %call to i64
  %call5 = call i1 @parameqn(i8* noundef %cmdline, i8* noundef nonnull %0, i64 noundef %conv) #6
  br i1 %call5, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, i8* %cmdline, i64 %conv
  %call6 = call fastcc i32 @kstrtou64(i8* noundef %add.ptr, i64* noundef %v) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call6, %if.end ], [ -1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @parameqn(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kstrtou64(i8* noundef %s, i64* noundef %res) unnamed_addr #3 {
entry:
  %call = call i32 @kstrtoull(i8* noundef %s, i32 noundef 0, i64* noundef %res) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(i8* noundef, i32 noundef, i64* noundef) local_unnamed_addr #2

attributes #0 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { cold nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
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
!7 = !{i64 2149271537}
!8 = !{!"auto-init"}
