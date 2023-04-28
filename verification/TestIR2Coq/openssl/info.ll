; ModuleID = 'apps/info.c'
source_filename = "apps/info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque

@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"configdir\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Default configuration file directory\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"enginesdir\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Default engine module directory\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"modulesdir\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"Default module directory (other than engine modules)\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"dsoext\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Configured extension for modules\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"dirnamesep\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Directory-filename separator\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"listsep\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"List separator character\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"seeds\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"Seed sources\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"cpusettings\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"CPU settings info\00", align 1
@info_options = dso_local constant [12 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 2, i32 45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 3, i32 45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 4, i32 45, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 5, i32 45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i32 6, i32 45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i32 7, i32 45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 8, i32 45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i32 9, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.20 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"%s: Only one item allowed\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"%s: No items chosen\0A\00", align 1
@bio_out = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.23 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @info_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([12 x %struct.options_st], [12 x %struct.options_st]* @info_options, i64 0, i64 0)) #2
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %type.0 = phi i32 [ 0, %entry ], [ %type.1, %sw.epilog ]
  %dirty.0 = phi i32 [ 0, %entry ], [ %dirty.1, %sw.epilog ]
  %call1 = tail call i32 @opt_next() #2
  switch i32 %call1, label %opthelp [
    i32 0, label %while.end
    i32 1, label %sw.bb
    i32 2, label %sw.epilog
    i32 3, label %sw.bb4
    i32 4, label %sw.bb6
    i32 5, label %sw.bb8
    i32 6, label %sw.bb10
    i32 7, label %sw.bb12
    i32 8, label %sw.bb14
    i32 9, label %sw.bb16
  ]

opthelp.sink.split:                               ; preds = %if.end23, %if.end
  %.sink58 = phi i8* [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0), %if.end ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), %if.end23 ]
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call26 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef %.sink58, i8* noundef %call) #2
  br label %opthelp

opthelp:                                          ; preds = %while.cond, %opthelp.sink.split, %while.end
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i64 0, i64 0), i8* noundef %call) #2
  br label %end

sw.bb:                                            ; preds = %while.cond
  tail call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([12 x %struct.options_st], [12 x %struct.options_st]* @info_options, i64 0, i64 0)) #2
  br label %end

sw.bb4:                                           ; preds = %while.cond
  br label %sw.epilog

sw.bb6:                                           ; preds = %while.cond
  br label %sw.epilog

sw.bb8:                                           ; preds = %while.cond
  br label %sw.epilog

sw.bb10:                                          ; preds = %while.cond
  br label %sw.epilog

sw.bb12:                                          ; preds = %while.cond
  br label %sw.epilog

sw.bb14:                                          ; preds = %while.cond
  br label %sw.epilog

sw.bb16:                                          ; preds = %while.cond
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.cond, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4
  %type.1 = phi i32 [ 1008, %sw.bb16 ], [ 1007, %sw.bb14 ], [ 1006, %sw.bb12 ], [ 1005, %sw.bb10 ], [ 1004, %sw.bb8 ], [ 1003, %sw.bb6 ], [ 1002, %sw.bb4 ], [ 1001, %while.cond ]
  %dirty.1 = add nuw nsw i32 %dirty.0, 1
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %call18 = tail call i32 @opt_num_rest() #2
  %cmp19.not = icmp eq i32 %call18, 0
  br i1 %cmp19.not, label %if.end, label %opthelp

if.end:                                           ; preds = %while.end
  %cmp20 = icmp ugt i32 %dirty.0, 1
  br i1 %cmp20, label %opthelp.sink.split, label %if.end23

if.end23:                                         ; preds = %if.end
  %cmp24 = icmp eq i32 %dirty.0, 0
  br i1 %cmp24, label %opthelp.sink.split, label %if.end27

if.end27:                                         ; preds = %if.end23
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !3
  %call28 = tail call i8* @OPENSSL_info(i32 noundef %type.0) #2
  %call29 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i8* noundef %call28) #2
  br label %end

end:                                              ; preds = %if.end27, %sw.bb, %opthelp
  %ret.0 = phi i32 [ 1, %opthelp ], [ 0, %sw.bb ], [ 0, %if.end27 ]
  ret i32 %ret.0
}

declare dso_local i8* @opt_init(i32 noundef, i8** noundef, %struct.options_st* noundef) local_unnamed_addr #1

declare dso_local i32 @opt_next() local_unnamed_addr #1

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local void @opt_help(%struct.options_st* noundef) local_unnamed_addr #1

declare dso_local i32 @opt_num_rest() local_unnamed_addr #1

declare dso_local i8* @OPENSSL_info(i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
