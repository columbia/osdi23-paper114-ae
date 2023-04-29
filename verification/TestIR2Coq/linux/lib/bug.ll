; ModuleID = 'lib/bug.c'
source_filename = "lib/bug.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.bug_entry = type { i32, i32, i16, i16 }
%struct.pt_regs = type { %union.anon, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.warn_args = type opaque

@__start___bug_table = external dso_local global [0 x %struct.bug_entry], align 4
@__stop___bug_table = external dso_local global [0 x %struct.bug_entry], align 4
@.str = private unnamed_addr constant [38 x i8] c"------------[ cut here ]------------\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"\012kernel BUG at %s:%u!\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"\012Kernel BUG at %pB [verbose debug info unavailable]\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @bug_get_file_line(%struct.bug_entry* noundef %bug, i8** nocapture noundef writeonly %file, i32* nocapture noundef writeonly %line) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.bug_entry* %bug to i8*
  %file_disp = getelementptr inbounds %struct.bug_entry, %struct.bug_entry* %bug, i64 0, i32 1
  %1 = load i32, i32* %file_disp, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext
  store i8* %add.ptr, i8** %file, align 8
  %line1 = getelementptr inbounds %struct.bug_entry, %struct.bug_entry* %bug, i64 0, i32 2
  %2 = load i16, i16* %line1, align 4
  %conv = zext i16 %2 to i32
  store i32 %conv, i32* %line, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local %struct.bug_entry* @find_bug(i64 noundef %bugaddr) local_unnamed_addr #1 {
entry:
  br i1 icmp ult (%struct.bug_entry* getelementptr inbounds ([0 x %struct.bug_entry], [0 x %struct.bug_entry]* @__start___bug_table, i64 0, i64 0), %struct.bug_entry* getelementptr inbounds ([0 x %struct.bug_entry], [0 x %struct.bug_entry]* @__stop___bug_table, i64 0, i64 0)), label %for.body, label %cleanup

for.body:                                         ; preds = %entry, %for.inc
  %bug.08 = phi %struct.bug_entry* [ %incdec.ptr, %for.inc ], [ getelementptr inbounds ([0 x %struct.bug_entry], [0 x %struct.bug_entry]* @__start___bug_table, i64 0, i64 0), %entry ]
  %call = call fastcc i64 @bug_addr(%struct.bug_entry* noundef %bug.08) #8
  %cmp1 = icmp eq i64 %call, %bugaddr
  br i1 %cmp1, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.bug_entry, %struct.bug_entry* %bug.08, i64 1
  %cmp = icmp ult %struct.bug_entry* %incdec.ptr, getelementptr inbounds ([0 x %struct.bug_entry], [0 x %struct.bug_entry]* @__stop___bug_table, i64 0, i64 0)
  br i1 %cmp, label %for.body, label %cleanup

cleanup:                                          ; preds = %for.body, %for.inc, %entry
  %retval.0 = phi %struct.bug_entry* [ null, %entry ], [ null, %for.inc ], [ %bug.08, %for.body ]
  ret %struct.bug_entry* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @bug_addr(%struct.bug_entry* noundef %bug) unnamed_addr #3 {
entry:
  %0 = ptrtoint %struct.bug_entry* %bug to i64
  %bug_addr_disp = getelementptr inbounds %struct.bug_entry, %struct.bug_entry* %bug, i64 0, i32 0
  %1 = load i32, i32* %bug_addr_disp, align 4
  %conv = sext i32 %1 to i64
  %add = add i64 %conv, %0
  ret i64 %add
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @report_bug(i64 noundef %bugaddr, %struct.pt_regs* noundef %regs) local_unnamed_addr #4 {
entry:
  %file = alloca i8*, align 8
  %line = alloca i32, align 4
  %0 = bitcast i8** %file to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i8* null, i8** %file, align 8, !annotation !7
  %1 = bitcast i32* %line to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #9
  store i32 0, i32* %line, align 4, !annotation !7
  %call = call i32 @is_valid_bugaddr(i64 noundef %bugaddr) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call %struct.bug_entry* @find_bug(i64 noundef %bugaddr) #8
  %tobool2.not = icmp eq %struct.bug_entry* %call1, null
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  call void @bug_get_file_line(%struct.bug_entry* noundef nonnull %call1, i8** noundef nonnull %file, i32* noundef nonnull %line) #8
  %flags = getelementptr inbounds %struct.bug_entry, %struct.bug_entry* %call1, i64 0, i32 3
  %2 = load i16, i16* %flags, align 2
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 1
  %cmp.not = icmp eq i32 %and, 0
  %3 = and i32 %conv, 3
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %if.then18, label %if.end25

if.then18:                                        ; preds = %if.end4
  %and13 = and i32 %conv, 4
  %cmp14.not = icmp eq i32 %and13, 0
  br i1 %cmp14.not, label %if.end21, label %cleanup

if.end21:                                         ; preds = %if.then18
  %or = or i16 %2, 4
  store i16 %or, i16* %flags, align 2
  br label %if.end25

if.end25:                                         ; preds = %if.end21, %if.end4
  %5 = phi i16 [ %or, %if.end21 ], [ %2, %if.end4 ]
  %6 = and i16 %5, 8
  %cmp29 = icmp eq i16 %6, 0
  br i1 %cmp29, label %do.end, label %if.end33

do.end:                                           ; preds = %if.end25
  %call32 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0)) #11
  br label %if.end33

if.end33:                                         ; preds = %do.end, %if.end25
  %7 = load i8*, i8** %file, align 8
  br i1 %cmp.not, label %if.end38, label %if.then35

if.then35:                                        ; preds = %if.end33
  %8 = load i32, i32* %line, align 4
  %9 = inttoptr i64 %bugaddr to i8*
  %10 = load i16, i16* %flags, align 2
  %11 = lshr i16 %10, 8
  %12 = zext i16 %11 to i32
  call void @__warn(i8* noundef %7, i32 noundef %8, i8* noundef %9, i32 noundef %12, %struct.pt_regs* noundef %regs, %struct.warn_args* noundef null) #10
  br label %cleanup

if.end38:                                         ; preds = %if.end33
  %tobool39.not = icmp eq i8* %7, null
  br i1 %tobool39.not, label %do.end48, label %do.end43

do.end43:                                         ; preds = %if.end38
  %13 = load i32, i32* %line, align 4
  %call45 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* noundef nonnull %7, i32 noundef %13) #11
  br label %cleanup

do.end48:                                         ; preds = %if.end38
  %14 = inttoptr i64 %bugaddr to i8*
  %call50 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i8* noundef %14) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %do.end48, %if.then18, %if.end, %entry, %if.then35
  %retval.0 = phi i32 [ 1, %if.then35 ], [ 0, %entry ], [ 0, %if.end ], [ 1, %if.then18 ], [ 2, %do.end48 ], [ 2, %do.end43 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_valid_bugaddr(i64 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn(i8* noundef, i32 noundef, i8* noundef, i32 noundef, %struct.pt_regs* noundef, %struct.warn_args* noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local void @generic_bug_clear_once() local_unnamed_addr #7 {
entry:
  call fastcc void @clear_once_table() #8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc void @clear_once_table() unnamed_addr #7 {
entry:
  br i1 icmp ult (%struct.bug_entry* getelementptr inbounds ([0 x %struct.bug_entry], [0 x %struct.bug_entry]* @__start___bug_table, i64 0, i64 0), %struct.bug_entry* getelementptr inbounds ([0 x %struct.bug_entry], [0 x %struct.bug_entry]* @__stop___bug_table, i64 0, i64 0)), label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %bug.01 = phi %struct.bug_entry* [ %incdec.ptr, %for.body ], [ getelementptr inbounds ([0 x %struct.bug_entry], [0 x %struct.bug_entry]* @__start___bug_table, i64 0, i64 0), %entry ]
  %flags = getelementptr inbounds %struct.bug_entry, %struct.bug_entry* %bug.01, i64 0, i32 3
  %0 = load i16, i16* %flags, align 2
  %1 = and i16 %0, -5
  store i16 %1, i16* %flags, align 2
  %incdec.ptr = getelementptr %struct.bug_entry, %struct.bug_entry* %bug.01, i64 1
  %cmp = icmp ult %struct.bug_entry* %incdec.ptr, getelementptr inbounds ([0 x %struct.bug_entry], [0 x %struct.bug_entry]* @__stop___bug_table, i64 0, i64 0)
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { cold nobuiltin nounwind "no-builtins" }

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
