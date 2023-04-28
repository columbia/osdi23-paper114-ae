; ModuleID = 'init/noinitramfs.c'
source_filename = "init/noinitramfs.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcallrootfs.init\22, \22a\22\09\09"
module asm "__initcall__kmod_noinitramfs__368_42_default_rootfsrootfs:\09\09\09"
module asm ".long\09default_rootfs - .\09"
module asm ".previous\09\09\09\09\09"

@__UNIQUE_ID___addressable_default_rootfs369 = internal global i8* bitcast (i32 ()* @default_rootfs to i8*), section ".discard.addressable", align 8
@.str = private unnamed_addr constant [5 x i8] c"/dev\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"/dev/console\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"/root\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"\014Failed to create a rootfs\0A\00", align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_default_rootfs369 to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @default_rootfs() #0 section ".init.text" {
entry:
  call fastcc void @usermodehelper_enable() #4
  %call = call i32 @init_mkdir(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i16 noundef 493) #5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i32 @init_mknod(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i16 noundef 8576, i32 noundef 1281) #5
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @init_mkdir(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i16 noundef 448) #5
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.end, label %cleanup

do.end:                                           ; preds = %entry, %if.end, %if.end5
  %err.0 = phi i32 [ %call, %entry ], [ %call2, %if.end ], [ %call6, %if.end5 ]
  %call10 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end
  %retval.0 = phi i32 [ %err.0, %do.end ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @usermodehelper_enable() unnamed_addr #1 {
entry:
  call void @__usermodehelper_set_disable_depth(i32 noundef 0) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_mkdir(i8* noundef, i16 noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_mknod(i8* noundef, i16 noundef, i32 noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__usermodehelper_set_disable_depth(i32 noundef) local_unnamed_addr #3

attributes #0 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { cold nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
