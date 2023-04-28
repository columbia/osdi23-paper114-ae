; ModuleID = 'daemon.c'
source_filename = "daemon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"chdir\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"dup2 stdin\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"dup2 stdout\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"dup2 stderr\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@__llvm_gcov_ctr = internal global [33 x i64] zeroinitializer
@0 = private unnamed_addr constant [54 x i8] c"/home/xuheng/blackbox/llvm-test/memcached/daemon.gcda\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @__llvm_gcov_init, i8* null }]

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @daemonize(i32 noundef %nochdir, i32 noundef %noclose) local_unnamed_addr #0 !dbg !8 {
entry:
  %0 = load <2 x i64>, <2 x i64>* bitcast ([33 x i64]* @__llvm_gcov_ctr to <2 x i64>*), align 16
  %1 = add <2 x i64> %0, <i64 1, i64 1>
  store <2 x i64> %1, <2 x i64>* bitcast ([33 x i64]* @__llvm_gcov_ctr to <2 x i64>*), align 16
  call void @llvm.dbg.value(metadata i32 %nochdir, metadata !13, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.value(metadata i32 %noclose, metadata !14, metadata !DIExpression()), !dbg !17
  %call = tail call i32 @__gcov_fork() #9, !dbg !18
  switch i32 %call, label %sw.default [
    i32 -1, label %sw.bb
    i32 0, label %sw.epilog
  ], !dbg !19

sw.bb:                                            ; preds = %entry
  %gcov_ctr35 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 5), align 8, !dbg !20
  %2 = add i64 %gcov_ctr35, 1, !dbg !20
  store i64 %2, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 5), align 8, !dbg !20
  %gcov_ctr32 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 2), align 16, !dbg !20
  %3 = add i64 %gcov_ctr32, 1, !dbg !20
  store i64 %3, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 2), align 16, !dbg !20
  br label %cleanup, !dbg !20

sw.default:                                       ; preds = %entry
  %gcov_ctr36 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 6), align 16, !dbg !22
  %4 = add i64 %gcov_ctr36, 1, !dbg !22
  store i64 %4, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 6), align 16, !dbg !22
  %gcov_ctr33 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 3), align 8, !dbg !22
  %5 = add i64 %gcov_ctr33, 1, !dbg !22
  store i64 %5, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 3), align 8, !dbg !22
  tail call void @_exit(i32 noundef 0) #10, !dbg !22
  unreachable, !dbg !22

sw.epilog:                                        ; preds = %entry
  %gcov_ctr34 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 4), align 16, !dbg !23
  %6 = add i64 %gcov_ctr34, 1, !dbg !23
  store i64 %6, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 4), align 16, !dbg !23
  %call1 = tail call i32 @setsid() #9, !dbg !23
  %cmp = icmp eq i32 %call1, -1, !dbg !25
  br i1 %cmp, label %if.then, label %if.end, !dbg !26

if.then:                                          ; preds = %sw.epilog
  %gcov_ctr39 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 9), align 8, !dbg !27
  %7 = add i64 %gcov_ctr39, 1, !dbg !27
  store i64 %7, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 9), align 8, !dbg !27
  %gcov_ctr37 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 7), align 8, !dbg !27
  %8 = add i64 %gcov_ctr37, 1, !dbg !27
  store i64 %8, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 7), align 8, !dbg !27
  br label %cleanup, !dbg !27

if.end:                                           ; preds = %sw.epilog
  %gcov_ctr38 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 8), align 16, !dbg !28
  %9 = add i64 %gcov_ctr38, 1, !dbg !28
  store i64 %9, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 8), align 16, !dbg !28
  %cmp2 = icmp eq i32 %nochdir, 0, !dbg !30
  br i1 %cmp2, label %if.then3, label %if.end8, !dbg !31

if.then3:                                         ; preds = %if.end
  %gcov_ctr40 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 10), align 16, !dbg !32
  %10 = add i64 %gcov_ctr40, 1, !dbg !32
  store i64 %10, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 10), align 16, !dbg !32
  %call4 = tail call i32 @chdir(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #9, !dbg !32
  %cmp5.not = icmp eq i32 %call4, 0, !dbg !35
  br i1 %cmp5.not, label %if.end7, label %if.then6, !dbg !36

if.then6:                                         ; preds = %if.then3
  %gcov_ctr43 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 13), align 8, !dbg !37
  %11 = add i64 %gcov_ctr43, 1, !dbg !37
  store i64 %11, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 13), align 8, !dbg !37
  %gcov_ctr41 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 11), align 8, !dbg !37
  %12 = add i64 %gcov_ctr41, 1, !dbg !37
  store i64 %12, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 11), align 8, !dbg !37
  tail call void @perror(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !37
  br label %cleanup, !dbg !39

if.end7:                                          ; preds = %if.then3
  %gcov_ctr44 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 14), align 16, !dbg !40
  %13 = add i64 %gcov_ctr44, 1, !dbg !40
  store i64 %13, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 14), align 16, !dbg !40
  %gcov_ctr42 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 12), align 16, !dbg !40
  %14 = add i64 %gcov_ctr42, 1, !dbg !40
  store i64 %14, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 12), align 16, !dbg !40
  br label %if.end8, !dbg !40

if.end8:                                          ; preds = %if.end, %if.end7
  %cmp9 = icmp eq i32 %noclose, 0, !dbg !41
  br i1 %cmp9, label %land.lhs.true, label %if.end29, !dbg !43

land.lhs.true:                                    ; preds = %if.end8
  %gcov_ctr45 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 15), align 8, !dbg !44
  %15 = add i64 %gcov_ctr45, 1, !dbg !44
  store i64 %15, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 15), align 8, !dbg !44
  %call10 = tail call i32 (i8*, i32, ...) @open(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 2, i32 noundef 0) #9, !dbg !44
  call void @llvm.dbg.value(metadata i32 %call10, metadata !15, metadata !DIExpression()), !dbg !17
  %cmp11.not = icmp eq i32 %call10, -1, !dbg !45
  br i1 %cmp11.not, label %if.end29, label %if.then12, !dbg !46

if.then12:                                        ; preds = %land.lhs.true
  %gcov_ctr46 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 16), align 16, !dbg !47
  %16 = add i64 %gcov_ctr46, 1, !dbg !47
  store i64 %16, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 16), align 16, !dbg !47
  %call13 = tail call i32 @dup2(i32 noundef %call10, i32 noundef 0) #9, !dbg !50
  %cmp14 = icmp slt i32 %call13, 0, !dbg !51
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !52

if.then15:                                        ; preds = %if.then12
  %gcov_ctr49 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 19), align 8, !dbg !53
  %17 = add i64 %gcov_ctr49, 1, !dbg !53
  store i64 %17, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 19), align 8, !dbg !53
  %gcov_ctr47 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 17), align 8, !dbg !53
  %18 = add i64 %gcov_ctr47, 1, !dbg !53
  store i64 %18, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 17), align 8, !dbg !53
  br label %err_cleanup, !dbg !55

if.end16:                                         ; preds = %if.then12
  %gcov_ctr48 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 18), align 16, !dbg !56
  %19 = add i64 %gcov_ctr48, 1, !dbg !56
  store i64 %19, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 18), align 16, !dbg !56
  %call17 = tail call i32 @dup2(i32 noundef %call10, i32 noundef 1) #9, !dbg !58
  %cmp18 = icmp slt i32 %call17, 0, !dbg !59
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !60

if.then19:                                        ; preds = %if.end16
  %gcov_ctr52 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 22), align 16, !dbg !61
  %20 = add i64 %gcov_ctr52, 1, !dbg !61
  store i64 %20, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 22), align 16, !dbg !61
  %gcov_ctr50 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 20), align 16, !dbg !61
  %21 = add i64 %gcov_ctr50, 1, !dbg !61
  store i64 %21, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 20), align 16, !dbg !61
  br label %err_cleanup, !dbg !63

if.end20:                                         ; preds = %if.end16
  %gcov_ctr51 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 21), align 8, !dbg !64
  %22 = add i64 %gcov_ctr51, 1, !dbg !64
  store i64 %22, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 21), align 8, !dbg !64
  %call21 = tail call i32 @dup2(i32 noundef %call10, i32 noundef 2) #9, !dbg !66
  %cmp22 = icmp slt i32 %call21, 0, !dbg !67
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !68

if.then23:                                        ; preds = %if.end20
  %gcov_ctr55 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 25), align 8, !dbg !69
  %23 = add i64 %gcov_ctr55, 1, !dbg !69
  store i64 %23, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 25), align 8, !dbg !69
  %gcov_ctr53 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 23), align 8, !dbg !69
  %24 = add i64 %gcov_ctr53, 1, !dbg !69
  store i64 %24, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 23), align 8, !dbg !69
  br label %err_cleanup, !dbg !71

if.end24:                                         ; preds = %if.end20
  %gcov_ctr54 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 24), align 16, !dbg !72
  %25 = add i64 %gcov_ctr54, 1, !dbg !72
  store i64 %25, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 24), align 16, !dbg !72
  %call25 = tail call i32 @close(i32 noundef %call10) #9, !dbg !74
  %cmp26 = icmp slt i32 %call25, 0, !dbg !75
  br i1 %cmp26, label %if.then27, label %if.end28, !dbg !76

if.then27:                                        ; preds = %if.end24
  %gcov_ctr58 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 28), align 16, !dbg !77
  %26 = add i64 %gcov_ctr58, 1, !dbg !77
  store i64 %26, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 28), align 16, !dbg !77
  %gcov_ctr56 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 26), align 16, !dbg !77
  %27 = add i64 %gcov_ctr56, 1, !dbg !77
  store i64 %27, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 26), align 16, !dbg !77
  tail call void @perror(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !77
  br label %cleanup, !dbg !79

if.end28:                                         ; preds = %if.end24
  %gcov_ctr59 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 29), align 8, !dbg !80
  %28 = add i64 %gcov_ctr59, 1, !dbg !80
  store i64 %28, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 29), align 8, !dbg !80
  %gcov_ctr57 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 27), align 8, !dbg !80
  %29 = add i64 %gcov_ctr57, 1, !dbg !80
  store i64 %29, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 27), align 8, !dbg !80
  br label %if.end29, !dbg !80

if.end29:                                         ; preds = %land.lhs.true, %if.end8, %if.end28
  %gcov_ctr60 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 30), align 16, !dbg !81
  %30 = add i64 %gcov_ctr60, 1, !dbg !81
  store i64 %30, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 30), align 16, !dbg !81
  br label %cleanup, !dbg !81

err_cleanup:                                      ; preds = %if.then23, %if.then19, %if.then15
  %.sink = phi i8* [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), %if.then23 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), %if.then19 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %if.then15 ]
  tail call void @perror(i8* noundef %.sink) #9, !dbg !82
  %gcov_ctr61 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 31), align 8, !dbg !83
  %31 = add i64 %gcov_ctr61, 1, !dbg !83
  store i64 %31, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 31), align 8, !dbg !83
  call void @llvm.dbg.label(metadata !16), !dbg !83
  %call30 = tail call i32 @close(i32 noundef %call10) #9, !dbg !84
  br label %cleanup, !dbg !85

cleanup:                                          ; preds = %err_cleanup, %if.end29, %if.then27, %if.then6, %if.then, %sw.bb
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then6 ], [ -1, %err_cleanup ], [ -1, %if.then27 ], [ 0, %if.end29 ], [ -1, %sw.bb ], !dbg !17
  %gcov_ctr62 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 32), align 16, !dbg !86
  %32 = add i64 %gcov_ctr62, 1, !dbg !86
  store i64 %32, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 32), align 16, !dbg !86
  ret i32 %retval.0, !dbg !86
}

; Function Attrs: noreturn
declare dso_local void @_exit(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !87 dso_local i32 @setsid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !94 dso_local i32 @chdir(i8* noundef) local_unnamed_addr #2

declare !dbg !100 dso_local void @perror(i8* noundef) local_unnamed_addr #3

declare !dbg !104 dso_local i32 @open(i8* noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !108 dso_local i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !109 dso_local i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #4

declare i32 @__gcov_fork() local_unnamed_addr

; Function Attrs: noinline nounwind uwtable
define internal void @__llvm_gcov_writeout() unnamed_addr #5 {
entry:
  tail call void @llvm_gcda_start_file(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @0, i64 0, i64 0), i32 875575338, i32 -1605186718) #11
  tail call void @llvm_gcda_emit_function(i32 0, i32 -891497557, i32 -1605186718) #11
  tail call void @llvm_gcda_emit_arcs(i32 33, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr, i64 0, i64 0)) #11
  tail call void @llvm_gcda_summary_info() #11
  tail call void @llvm_gcda_end_file() #11
  ret void
}

declare void @llvm_gcda_start_file(i8*, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, i64*) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly
define internal void @__llvm_gcov_reset() unnamed_addr #6 {
entry:
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(264) bitcast ([33 x i64]* @__llvm_gcov_ctr to i8*), i8 0, i64 264, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind uwtable
define internal void @__llvm_gcov_init() unnamed_addr #5 {
entry:
  tail call void @llvm_gcov_init(void ()* nonnull @__llvm_gcov_writeout, void ()* nonnull @__llvm_gcov_reset) #11
  ret void
}

declare void @llvm_gcov_init(void ()*, void ()*) local_unnamed_addr

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #8

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { noinline nounwind uwtable }
attributes #6 = { mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #11 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.gcov = !{!6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "daemon.c", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "c46b1da6a409aca5962f954840b735c9")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{!"/home/xuheng/blackbox/llvm-test/memcached/daemon.gcno", !"/home/xuheng/blackbox/llvm-test/memcached/daemon.gcda", !0}
!7 = !{!"clang version 14.0.0"}
!8 = distinct !DISubprogram(name: "daemonize", scope: !1, file: !1, line: 44, type: !9, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11, !11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13, !14, !15, !16}
!13 = !DILocalVariable(name: "nochdir", arg: 1, scope: !8, file: !1, line: 44, type: !11)
!14 = !DILocalVariable(name: "noclose", arg: 2, scope: !8, file: !1, line: 44, type: !11)
!15 = !DILocalVariable(name: "fd", scope: !8, file: !1, line: 46, type: !11)
!16 = !DILabel(scope: !8, name: "err_cleanup", file: !1, line: 88)
!17 = !DILocation(line: 0, scope: !8)
!18 = !DILocation(line: 48, column: 13, scope: !8)
!19 = !DILocation(line: 48, column: 5, scope: !8)
!20 = !DILocation(line: 50, column: 9, scope: !21)
!21 = distinct !DILexicalBlock(scope: !8, file: !1, line: 48, column: 21)
!22 = !DILocation(line: 54, column: 9, scope: !21)
!23 = !DILocation(line: 57, column: 9, scope: !24)
!24 = distinct !DILexicalBlock(scope: !8, file: !1, line: 57, column: 9)
!25 = !DILocation(line: 57, column: 18, scope: !24)
!26 = !DILocation(line: 57, column: 9, scope: !8)
!27 = !DILocation(line: 58, column: 9, scope: !24)
!28 = !DILocation(line: 60, column: 9, scope: !29)
!29 = distinct !DILexicalBlock(scope: !8, file: !1, line: 60, column: 9)
!30 = !DILocation(line: 60, column: 17, scope: !29)
!31 = !DILocation(line: 60, column: 9, scope: !8)
!32 = !DILocation(line: 61, column: 12, scope: !33)
!33 = distinct !DILexicalBlock(scope: !34, file: !1, line: 61, column: 12)
!34 = distinct !DILexicalBlock(scope: !29, file: !1, line: 60, column: 23)
!35 = !DILocation(line: 61, column: 23, scope: !33)
!36 = !DILocation(line: 61, column: 12, scope: !34)
!37 = !DILocation(line: 62, column: 13, scope: !38)
!38 = distinct !DILexicalBlock(scope: !33, file: !1, line: 61, column: 29)
!39 = !DILocation(line: 63, column: 13, scope: !38)
!40 = !DILocation(line: 65, column: 5, scope: !34)
!41 = !DILocation(line: 67, column: 17, scope: !42)
!42 = distinct !DILexicalBlock(scope: !8, file: !1, line: 67, column: 9)
!43 = !DILocation(line: 67, column: 22, scope: !42)
!44 = !DILocation(line: 67, column: 31, scope: !42)
!45 = !DILocation(line: 67, column: 61, scope: !42)
!46 = !DILocation(line: 67, column: 9, scope: !8)
!47 = !DILocation(line: 68, column: 17, scope: !48)
!48 = distinct !DILexicalBlock(scope: !49, file: !1, line: 68, column: 12)
!49 = distinct !DILexicalBlock(scope: !42, file: !1, line: 67, column: 68)
!50 = !DILocation(line: 68, column: 12, scope: !48)
!51 = !DILocation(line: 68, column: 35, scope: !48)
!52 = !DILocation(line: 68, column: 12, scope: !49)
!53 = !DILocation(line: 69, column: 13, scope: !54)
!54 = distinct !DILexicalBlock(scope: !48, file: !1, line: 68, column: 40)
!55 = !DILocation(line: 70, column: 13, scope: !54)
!56 = !DILocation(line: 72, column: 17, scope: !57)
!57 = distinct !DILexicalBlock(scope: !49, file: !1, line: 72, column: 12)
!58 = !DILocation(line: 72, column: 12, scope: !57)
!59 = !DILocation(line: 72, column: 36, scope: !57)
!60 = !DILocation(line: 72, column: 12, scope: !49)
!61 = !DILocation(line: 73, column: 13, scope: !62)
!62 = distinct !DILexicalBlock(scope: !57, file: !1, line: 72, column: 41)
!63 = !DILocation(line: 74, column: 13, scope: !62)
!64 = !DILocation(line: 76, column: 17, scope: !65)
!65 = distinct !DILexicalBlock(scope: !49, file: !1, line: 76, column: 12)
!66 = !DILocation(line: 76, column: 12, scope: !65)
!67 = !DILocation(line: 76, column: 36, scope: !65)
!68 = !DILocation(line: 76, column: 12, scope: !49)
!69 = !DILocation(line: 77, column: 13, scope: !70)
!70 = distinct !DILexicalBlock(scope: !65, file: !1, line: 76, column: 41)
!71 = !DILocation(line: 78, column: 13, scope: !70)
!72 = !DILocation(line: 81, column: 18, scope: !73)
!73 = distinct !DILexicalBlock(scope: !49, file: !1, line: 81, column: 12)
!74 = !DILocation(line: 81, column: 12, scope: !73)
!75 = !DILocation(line: 81, column: 22, scope: !73)
!76 = !DILocation(line: 81, column: 12, scope: !49)
!77 = !DILocation(line: 82, column: 13, scope: !78)
!78 = distinct !DILexicalBlock(scope: !73, file: !1, line: 81, column: 27)
!79 = !DILocation(line: 83, column: 13, scope: !78)
!80 = !DILocation(line: 85, column: 5, scope: !49)
!81 = !DILocation(line: 86, column: 5, scope: !8)
!82 = !DILocation(line: 0, scope: !49)
!83 = !DILocation(line: 88, column: 5, scope: !8)
!84 = !DILocation(line: 89, column: 9, scope: !8)
!85 = !DILocation(line: 90, column: 9, scope: !8)
!86 = !DILocation(line: 91, column: 1, scope: !8)
!87 = !DISubprogram(name: "setsid", scope: !88, file: !88, line: 667, type: !89, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!88 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "29bea3f2d65ec3bb874f389bfdfa2266")
!89 = !DISubroutineType(types: !90)
!90 = !{!91}
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !92, line: 154, baseType: !11)
!92 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!93 = !{}
!94 = !DISubprogram(name: "chdir", scope: !88, file: !88, line: 497, type: !95, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!95 = !DISubroutineType(types: !96)
!96 = !{!11, !97}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!99 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!100 = !DISubprogram(name: "perror", scope: !101, file: !101, line: 775, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!101 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!102 = !DISubroutineType(types: !103)
!103 = !{null, !97}
!104 = !DISubprogram(name: "open", scope: !105, file: !105, line: 168, type: !106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!105 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "270596b098606fab5166d0114edf8288")
!106 = !DISubroutineType(types: !107)
!107 = !{!11, !97, !11, null}
!108 = !DISubprogram(name: "dup2", scope: !88, file: !88, line: 534, type: !9, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!109 = !DISubprogram(name: "close", scope: !88, file: !88, line: 353, type: !110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!110 = !DISubroutineType(types: !111)
!111 = !{!11, !11}
