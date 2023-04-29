; ModuleID = 'lib/fdt_strerror.c'
source_filename = "lib/fdt_strerror.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.fdt_errtabent = type { i8* }

@.str = private unnamed_addr constant [22 x i8] c"<valid offset/length>\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"<no error>\00", align 1
@fdt_errtable = internal unnamed_addr constant [19 x %struct.fdt_errtabent] [%struct.fdt_errtabent zeroinitializer, %struct.fdt_errtabent { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0) }, %struct.fdt_errtabent { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0) }, %struct.fdt_errtabent { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0) }, %struct.fdt_errtabent { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0) }, %struct.fdt_errtabent { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0) }, %struct.fdt_errtabent { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0) }, %struct.fdt_errtabent { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0) }, %struct.fdt_errtabent { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0) }, %struct.fdt_errtabent { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0) }, %struct.fdt_errtabent { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0) }, %struct.fdt_errtabent { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0) }, %struct.fdt_errtabent { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0) }, %struct.fdt_errtabent { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0) }, %struct.fdt_errtabent { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0) }, %struct.fdt_errtabent { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0) }, %struct.fdt_errtabent { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0) }, %struct.fdt_errtabent { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0) }, %struct.fdt_errtabent { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0) }], align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"<unknown error>\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"FDT_ERR_NOTFOUND\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"FDT_ERR_EXISTS\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"FDT_ERR_NOSPACE\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"FDT_ERR_BADOFFSET\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"FDT_ERR_BADPATH\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"FDT_ERR_BADPHANDLE\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"FDT_ERR_BADSTATE\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"FDT_ERR_TRUNCATED\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"FDT_ERR_BADMAGIC\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"FDT_ERR_BADVERSION\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"FDT_ERR_BADSTRUCTURE\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"FDT_ERR_BADLAYOUT\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"FDT_ERR_INTERNAL\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"FDT_ERR_BADNCELLS\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"FDT_ERR_BADVALUE\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"FDT_ERR_BADOVERLAY\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"FDT_ERR_NOPHANDLES\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"FDT_ERR_BADFLAGS\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i8* @fdt_strerror(i32 noundef %errval) local_unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %errval, 0
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %errval, 0
  br i1 %cmp1, label %return, label %if.else3

if.else3:                                         ; preds = %if.else
  %sub = sub i32 0, %errval
  %cmp4 = icmp slt i32 %sub, 19
  br i1 %cmp4, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.else3
  %idxprom = sext i32 %sub to i64
  %str = getelementptr [19 x %struct.fdt_errtabent], [19 x %struct.fdt_errtabent]* @fdt_errtable, i64 0, i64 %idxprom, i32 0
  %0 = load i8*, i8** %str, align 8
  %1 = and i64 %idxprom, 2305843009213693951
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.end10, label %return

if.end10:                                         ; preds = %if.then5, %if.else3
  br label %return

return:                                           ; preds = %if.then5, %if.else, %entry, %if.end10
  %retval.1 = phi i8* [ %0, %if.then5 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), %if.end10 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %entry ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %if.else ]
  ret i8* %retval.1
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
