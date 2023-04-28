; ModuleID = 'assoc.c'
source_filename = "assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._stritem = type { %struct._stritem*, %struct._stritem*, %struct._stritem*, i32, i32, i32, i16, i16, i8, i8, [0 x %union.anon] }
%union.anon = type { i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.stats_state = type { i64, i64, i64, i64, i32, i32, i32, i32, i8, i8, i8, i8 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.anon.0, %union.anon.1, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.anon.0 = type { i64 }
%union.anon.1 = type { i64 }
%struct.settings = type { i64, i32, i32, i32, i8*, i32, i32, i64, i32, i8*, i8*, i32, double, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, double, i32, i32, i8, i32, i8, i8, i8*, i32, i32, i32, i32, double, double, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8, i32, i32, i8*, i32 }
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, i64* }
%union.pthread_attr_t = type { i64, [48 x i8] }

@hashpower = dso_local local_unnamed_addr global i32 16, align 4, !dbg !0
@primary_hashtable = internal unnamed_addr global %struct._stritem** null, align 8, !dbg !70
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [27 x i8] c"Failed to init hashtable.\0A\00", align 1
@stats_state = external dso_local local_unnamed_addr global %struct.stats_state, align 8
@expanding = internal unnamed_addr global i1 false, align 1, !dbg !154
@expand_bucket = internal unnamed_addr global i64 0, align 8, !dbg !75
@old_hashtable = internal unnamed_addr global %struct._stritem** null, align 8, !dbg !77
@maintenance_lock = internal global %union.pthread_mutex_t zeroinitializer, align 8, !dbg !79
@maintenance_cond = internal global %union.pthread_cond_t zeroinitializer, align 8, !dbg !110
@.str.1 = private unnamed_addr constant [13 x i8] c"*before != 0\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"assoc.c\00", align 1
@__PRETTY_FUNCTION__.assoc_delete = private unnamed_addr constant [62 x i8] c"void assoc_delete(const char *, const size_t, const uint32_t)\00", align 1
@hash_bulk_move = dso_local local_unnamed_addr global i32 1, align 4, !dbg !64
@.str.3 = private unnamed_addr constant [25 x i8] c"MEMCACHED_HASH_BULK_MOVE\00", align 1
@maintenance_tid = internal global i64 0, align 8, !dbg !66
@.str.4 = private unnamed_addr constant [25 x i8] c"Can't create thread: %s\0A\00", align 1
@do_run_maintenance_thread = internal global i32 1, align 4, !dbg !151
@hash = external dso_local local_unnamed_addr global i32 (i8*, i64)*, align 8
@settings = external dso_local local_unnamed_addr global %struct.settings, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"Hash table expansion done\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Hash table expansion starting\0A\00", align 1
@__llvm_gcov_ctr = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.7 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.8 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.9 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.10 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.11 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.12 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.13 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.14 = internal global [11 x i64] zeroinitializer
@__llvm_gcov_ctr.15 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.16 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.17 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.18 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.19 = internal global [3 x i64] zeroinitializer
@0 = private unnamed_addr constant [53 x i8] c"/home/xuheng/blackbox/llvm-test/memcached/assoc.gcda\00", align 1
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [14 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 198341712, i32 -91692630 }, %emit_function_args_ty { i32 1, i32 -1210897469, i32 -91692630 }, %emit_function_args_ty { i32 2, i32 -973326813, i32 -91692630 }, %emit_function_args_ty { i32 3, i32 -1154938837, i32 -91692630 }, %emit_function_args_ty { i32 4, i32 711776589, i32 -91692630 }, %emit_function_args_ty { i32 5, i32 -169315878, i32 -91692630 }, %emit_function_args_ty { i32 6, i32 1740318295, i32 -91692630 }, %emit_function_args_ty { i32 7, i32 1051467791, i32 -91692630 }, %emit_function_args_ty { i32 8, i32 -1813356509, i32 -91692630 }, %emit_function_args_ty { i32 9, i32 -1382556375, i32 -91692630 }, %emit_function_args_ty { i32 10, i32 -2015699432, i32 -91692630 }, %emit_function_args_ty { i32 11, i32 -206675612, i32 -91692630 }, %emit_function_args_ty { i32 12, i32 -584322000, i32 -91692630 }, %emit_function_args_ty { i32 13, i32 608374714, i32 -91692630 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [14 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr, i32 0, i32 0) }, %emit_arcs_args_ty { i32 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.7, i32 0, i32 0) }, %emit_arcs_args_ty { i32 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.8, i32 0, i32 0) }, %emit_arcs_args_ty { i32 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.9, i32 0, i32 0) }, %emit_arcs_args_ty { i32 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.10, i32 0, i32 0) }, %emit_arcs_args_ty { i32 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.11, i32 0, i32 0) }, %emit_arcs_args_ty { i32 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.12, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.13, i32 0, i32 0) }, %emit_arcs_args_ty { i32 11, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.14, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.15, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.16, i32 0, i32 0) }, %emit_arcs_args_ty { i32 5, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.17, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.18, i32 0, i32 0) }, %emit_arcs_args_ty { i32 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.19, i32 0, i32 0) }]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @__llvm_gcov_init, i8* null }]

; Function Attrs: noinline nounwind uwtable
define dso_local void @assoc_init(i32 noundef %hashtable_init) local_unnamed_addr #0 !dbg !161 {
entry:
  call void @llvm.dbg.value(metadata i32 %hashtable_init, metadata !166, metadata !DIExpression()), !dbg !167
  %tobool.not = icmp eq i32 %hashtable_init, 0, !dbg !168
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !dbg !170

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre = load i32, i32* @hashpower, align 4, !dbg !171, !tbaa !172
  br label %if.end, !dbg !170

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr, i64 0, i64 0), align 16, !dbg !176
  %0 = add i64 %gcov_ctr, 1, !dbg !176
  store i64 %0, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr, i64 0, i64 0), align 16, !dbg !176
  store i32 %hashtable_init, i32* @hashpower, align 4, !dbg !178, !tbaa !172
  br label %if.end, !dbg !179

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %1 = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ %hashtable_init, %if.then ], !dbg !171
  %sh_prom = zext i32 %1 to i64, !dbg !171
  %shl = shl nuw i64 1, %sh_prom, !dbg !171
  %call = tail call noalias i8* @calloc(i64 noundef %shl, i64 noundef 8) #12, !dbg !180
  store i8* %call, i8** bitcast (%struct._stritem*** @primary_hashtable to i8**), align 8, !dbg !181, !tbaa !182
  %tobool1.not = icmp eq i8* %call, null, !dbg !184
  br i1 %tobool1.not, label %if.then2, label %if.end4, !dbg !186

if.then2:                                         ; preds = %if.end
  %gcov_ctr8 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr, i64 0, i64 2), align 16, !dbg !187
  %2 = add i64 %gcov_ctr8, 1, !dbg !187
  store i64 %2, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr, i64 0, i64 2), align 16, !dbg !187
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !187, !tbaa !182
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0)) #12, !dbg !189
  tail call void @exit(i32 noundef 1) #13, !dbg !190
  unreachable, !dbg !190

if.end4:                                          ; preds = %if.end
  %gcov_ctr7 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr, i64 0, i64 1), align 8, !dbg !191
  %4 = add i64 %gcov_ctr7, 1, !dbg !191
  store i64 %4, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr, i64 0, i64 1), align 8, !dbg !191
  tail call void @STATS_LOCK() #12, !dbg !191
  %5 = load i32, i32* @hashpower, align 4, !dbg !192, !tbaa !172
  store i32 %5, i32* getelementptr inbounds (%struct.stats_state, %struct.stats_state* @stats_state, i64 0, i32 6), align 8, !dbg !193, !tbaa !194
  %sh_prom5 = zext i32 %5 to i64, !dbg !198
  %mul = shl i64 8, %sh_prom5, !dbg !199
  store i64 %mul, i64* getelementptr inbounds (%struct.stats_state, %struct.stats_state* @stats_state, i64 0, i32 3), align 8, !dbg !200, !tbaa !201
  tail call void @STATS_UNLOCK() #12, !dbg !202
  ret void, !dbg !203
}

; Function Attrs: nounwind
declare !dbg !204 dso_local noalias i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !211 dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare !dbg !272 dso_local void @exit(i32 noundef) local_unnamed_addr #3

declare !dbg !275 dso_local void @STATS_LOCK() local_unnamed_addr #2

declare !dbg !278 dso_local void @STATS_UNLOCK() local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind uwtable
define dso_local %struct._stritem* @assoc_find(i8* noundef readonly %key, i64 noundef %nkey, i32 noundef %hv) local_unnamed_addr #4 !dbg !279 {
entry:
  call void @llvm.dbg.value(metadata i8* %key, metadata !287, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i64 %nkey, metadata !288, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i32 %hv, metadata !289, metadata !DIExpression()), !dbg !294
  %.b38 = load i1, i1* @expanding, align 1, !dbg !295
  br i1 %.b38, label %land.lhs.true, label %entry.if.else_crit_edge, !dbg !297

entry.if.else_crit_edge:                          ; preds = %entry
  %.pre = load i32, i32* @hashpower, align 4, !dbg !298, !tbaa !172
  %.pre47 = zext i32 %hv to i64, !dbg !300
  br label %if.else, !dbg !297

land.lhs.true:                                    ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.7, i64 0, i64 0), align 16, !dbg !301
  %0 = add i64 %gcov_ctr, 1, !dbg !301
  store i64 %0, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.7, i64 0, i64 0), align 16, !dbg !301
  %conv = zext i32 %hv to i64, !dbg !301
  %1 = load i32, i32* @hashpower, align 4, !dbg !302, !tbaa !172
  %sub = add i32 %1, -1, !dbg !302
  %sh_prom = zext i32 %sub to i64, !dbg !302
  %notmask39 = shl nsw i64 -1, %sh_prom, !dbg !302
  %sub1 = xor i64 %notmask39, -1, !dbg !302
  %and = and i64 %sub1, %conv, !dbg !303
  call void @llvm.dbg.value(metadata i64 %and, metadata !291, metadata !DIExpression()), !dbg !294
  %2 = load i64, i64* @expand_bucket, align 8, !dbg !304, !tbaa !305
  %cmp.not = icmp ult i64 %and, %2, !dbg !306
  br i1 %cmp.not, label %if.else, label %if.then, !dbg !307

if.then:                                          ; preds = %land.lhs.true
  %gcov_ctr22 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.7, i64 0, i64 1), align 8, !dbg !308
  %3 = add i64 %gcov_ctr22, 1, !dbg !308
  store i64 %3, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.7, i64 0, i64 1), align 8, !dbg !308
  %4 = load %struct._stritem**, %struct._stritem*** @old_hashtable, align 8, !dbg !308, !tbaa !182
  %arrayidx = getelementptr inbounds %struct._stritem*, %struct._stritem** %4, i64 %and, !dbg !308
  call void @llvm.dbg.value(metadata %struct._stritem* undef, metadata !290, metadata !DIExpression()), !dbg !294
  br label %if.end, !dbg !310

if.else:                                          ; preds = %entry.if.else_crit_edge, %land.lhs.true
  %conv3.pre-phi = phi i64 [ %.pre47, %entry.if.else_crit_edge ], [ %conv, %land.lhs.true ], !dbg !300
  %5 = phi i32 [ %.pre, %entry.if.else_crit_edge ], [ %1, %land.lhs.true ], !dbg !298
  %gcov_ctr23 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.7, i64 0, i64 2), align 16, !dbg !311
  %6 = add i64 %gcov_ctr23, 1, !dbg !311
  store i64 %6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.7, i64 0, i64 2), align 16, !dbg !311
  %7 = load %struct._stritem**, %struct._stritem*** @primary_hashtable, align 8, !dbg !311, !tbaa !182
  %sh_prom4 = zext i32 %5 to i64, !dbg !298
  %notmask = shl nsw i64 -1, %sh_prom4, !dbg !298
  %sub6 = xor i64 %notmask, -1, !dbg !298
  %and7 = and i64 %conv3.pre-phi, %sub6, !dbg !312
  %arrayidx8 = getelementptr inbounds %struct._stritem*, %struct._stritem** %7, i64 %and7, !dbg !311
  call void @llvm.dbg.value(metadata %struct._stritem* undef, metadata !290, metadata !DIExpression()), !dbg !294
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %it.0.in = phi %struct._stritem** [ %arrayidx, %if.then ], [ %arrayidx8, %if.else ]
  call void @llvm.dbg.value(metadata %struct._stritem* undef, metadata !290, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata %struct._stritem* null, metadata !292, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i32 0, metadata !293, metadata !DIExpression()), !dbg !294
  %it.142 = load %struct._stritem*, %struct._stritem** %it.0.in, align 8, !dbg !294, !tbaa !182
  call void @llvm.dbg.value(metadata i32 poison, metadata !293, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata %struct._stritem* %it.142, metadata !290, metadata !DIExpression()), !dbg !294
  %tobool9.not43 = icmp eq %struct._stritem* %it.142, null, !dbg !313
  br i1 %tobool9.not43, label %while.end, label %while.body, !dbg !313

while.body:                                       ; preds = %if.end, %if.end21
  %it.144 = phi %struct._stritem* [ %it.1, %if.end21 ], [ %it.142, %if.end ]
  %nkey10 = getelementptr inbounds %struct._stritem, %struct._stritem* %it.144, i64 0, i32 9, !dbg !314
  %8 = load i8, i8* %nkey10, align 1, !dbg !314, !tbaa !317
  %conv11 = zext i8 %8 to i64, !dbg !318
  %cmp12 = icmp eq i64 %conv11, %nkey, !dbg !319
  br i1 %cmp12, label %land.lhs.true14, label %if.end21, !dbg !320

land.lhs.true14:                                  ; preds = %while.body
  %gcov_ctr24 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.7, i64 0, i64 3), align 8, !dbg !321
  %9 = add i64 %gcov_ctr24, 1, !dbg !321
  store i64 %9, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.7, i64 0, i64 3), align 8, !dbg !321
  %data = getelementptr inbounds %struct._stritem, %struct._stritem* %it.144, i64 0, i32 10, !dbg !322
  %10 = bitcast [0 x %union.anon]* %data to i8*, !dbg !322
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %it.144, i64 0, i32 7, !dbg !322
  %11 = load i16, i16* %it_flags, align 2, !dbg !322, !tbaa !323
  %12 = shl i16 %11, 2, !dbg !322
  %13 = and i16 %12, 8, !dbg !322
  %14 = zext i16 %13 to i64, !dbg !322
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %14, !dbg !322
  %call = tail call i32 @memcmp(i8* noundef %key, i8* noundef nonnull %add.ptr, i64 noundef %nkey) #14, !dbg !325
  %cmp18 = icmp eq i32 %call, 0, !dbg !326
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !327

if.then20:                                        ; preds = %land.lhs.true14
  %gcov_ctr25 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.7, i64 0, i64 4), align 16, !dbg !328
  %15 = add i64 %gcov_ctr25, 1, !dbg !328
  store i64 %15, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.7, i64 0, i64 4), align 16, !dbg !328
  call void @llvm.dbg.value(metadata %struct._stritem* %it.144, metadata !292, metadata !DIExpression()), !dbg !294
  br label %while.end, !dbg !330

if.end21:                                         ; preds = %land.lhs.true14, %while.body
  %gcov_ctr26 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.7, i64 0, i64 5), align 8, !dbg !331
  %16 = add i64 %gcov_ctr26, 1, !dbg !331
  store i64 %16, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.7, i64 0, i64 5), align 8, !dbg !331
  %h_next = getelementptr inbounds %struct._stritem, %struct._stritem* %it.144, i64 0, i32 2, !dbg !332
  call void @llvm.dbg.value(metadata %struct._stritem* undef, metadata !290, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i32 poison, metadata !293, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !294
  %it.1 = load %struct._stritem*, %struct._stritem** %h_next, align 8, !dbg !294, !tbaa !182
  call void @llvm.dbg.value(metadata i32 poison, metadata !293, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata %struct._stritem* %it.1, metadata !290, metadata !DIExpression()), !dbg !294
  %tobool9.not = icmp eq %struct._stritem* %it.1, null, !dbg !313
  br i1 %tobool9.not, label %while.end, label %while.body, !dbg !313, !llvm.loop !333

while.end:                                        ; preds = %if.end21, %if.end, %if.then20
  %it.141 = phi %struct._stritem* [ %it.144, %if.then20 ], [ null, %if.end ], [ null, %if.end21 ]
  call void @llvm.dbg.value(metadata %struct._stritem* %it.141, metadata !292, metadata !DIExpression()), !dbg !294
  ret %struct._stritem* %it.141, !dbg !336
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !337 dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @assoc_start_expand(i64 noundef %curr_items) local_unnamed_addr #0 !dbg !343 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.8, i64 0, i64 0), align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.8, i64 0, i64 0), align 16
  call void @llvm.dbg.value(metadata i64 %curr_items, metadata !347, metadata !DIExpression()), !dbg !348
  %call = tail call i32 @pthread_mutex_trylock(%union.pthread_mutex_t* noundef nonnull @maintenance_lock) #12, !dbg !349
  %cmp = icmp eq i32 %call, 0, !dbg !351
  br i1 %cmp, label %if.then, label %if.end6, !dbg !352

if.then:                                          ; preds = %entry
  %gcov_ctr7 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.8, i64 0, i64 1), align 8, !dbg !353
  %1 = add i64 %gcov_ctr7, 1, !dbg !353
  store i64 %1, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.8, i64 0, i64 1), align 8, !dbg !353
  %2 = load i32, i32* @hashpower, align 4, !dbg !356, !tbaa !172
  %sh_prom = zext i32 %2 to i64, !dbg !356
  %mul = shl i64 3, %sh_prom, !dbg !357
  %div = lshr i64 %mul, 1, !dbg !358
  %cmp1 = icmp ult i64 %div, %curr_items, !dbg !359
  br i1 %cmp1, label %land.lhs.true, label %if.end, !dbg !360

land.lhs.true:                                    ; preds = %if.then
  %gcov_ctr8 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.8, i64 0, i64 2), align 16, !dbg !361
  %3 = add i64 %gcov_ctr8, 1, !dbg !361
  store i64 %3, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.8, i64 0, i64 2), align 16, !dbg !361
  %cmp2 = icmp ult i32 %2, 32, !dbg !362
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !363

if.then3:                                         ; preds = %land.lhs.true
  %gcov_ctr9 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.8, i64 0, i64 3), align 8, !dbg !364
  %4 = add i64 %gcov_ctr9, 1, !dbg !364
  store i64 %4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.8, i64 0, i64 3), align 8, !dbg !364
  %call4 = tail call i32 @pthread_cond_signal(%union.pthread_cond_t* noundef nonnull @maintenance_cond) #12, !dbg !364
  br label %if.end, !dbg !366

if.end:                                           ; preds = %if.then3, %land.lhs.true, %if.then
  %call5 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @maintenance_lock) #12, !dbg !367
  br label %if.end6, !dbg !368

if.end6:                                          ; preds = %if.end, %entry
  ret void, !dbg !369
}

; Function Attrs: nounwind
declare !dbg !370 dso_local i32 @pthread_mutex_trylock(%union.pthread_mutex_t* noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !375 dso_local i32 @pthread_cond_signal(%union.pthread_cond_t* noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !379 dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @assoc_insert(%struct._stritem* noundef %it, i32 noundef %hv) local_unnamed_addr #6 !dbg !380 {
entry:
  call void @llvm.dbg.value(metadata %struct._stritem* %it, metadata !384, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata i32 %hv, metadata !385, metadata !DIExpression()), !dbg !387
  %.b26 = load i1, i1* @expanding, align 1, !dbg !388
  br i1 %.b26, label %land.lhs.true, label %entry.if.else_crit_edge, !dbg !390

entry.if.else_crit_edge:                          ; preds = %entry
  %.pre = load i32, i32* @hashpower, align 4, !dbg !391, !tbaa !172
  %.pre29 = zext i32 %hv to i64, !dbg !393
  br label %if.else, !dbg !390

land.lhs.true:                                    ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.9, i64 0, i64 0), align 16, !dbg !394
  %0 = add i64 %gcov_ctr, 1, !dbg !394
  store i64 %0, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.9, i64 0, i64 0), align 16, !dbg !394
  %conv = zext i32 %hv to i64, !dbg !394
  %1 = load i32, i32* @hashpower, align 4, !dbg !395, !tbaa !172
  %sub = add i32 %1, -1, !dbg !395
  %sh_prom = zext i32 %sub to i64, !dbg !395
  %notmask28 = shl nsw i64 -1, %sh_prom, !dbg !395
  %sub1 = xor i64 %notmask28, -1, !dbg !395
  %and = and i64 %sub1, %conv, !dbg !396
  call void @llvm.dbg.value(metadata i64 %and, metadata !386, metadata !DIExpression()), !dbg !387
  %2 = load i64, i64* @expand_bucket, align 8, !dbg !397, !tbaa !305
  %cmp.not = icmp ult i64 %and, %2, !dbg !398
  br i1 %cmp.not, label %if.else, label %if.then, !dbg !399

if.then:                                          ; preds = %land.lhs.true
  %gcov_ctr17 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.9, i64 0, i64 1), align 8, !dbg !400
  %3 = add i64 %gcov_ctr17, 1, !dbg !400
  store i64 %3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.9, i64 0, i64 1), align 8, !dbg !400
  %4 = load %struct._stritem**, %struct._stritem*** @old_hashtable, align 8, !dbg !400, !tbaa !182
  %arrayidx = getelementptr inbounds %struct._stritem*, %struct._stritem** %4, i64 %and, !dbg !400
  br label %if.end, !dbg !402

if.else:                                          ; preds = %entry.if.else_crit_edge, %land.lhs.true
  %conv4.pre-phi = phi i64 [ %.pre29, %entry.if.else_crit_edge ], [ %conv, %land.lhs.true ], !dbg !393
  %5 = phi i32 [ %.pre, %entry.if.else_crit_edge ], [ %1, %land.lhs.true ], !dbg !391
  %gcov_ctr18 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.9, i64 0, i64 2), align 16, !dbg !403
  %6 = add i64 %gcov_ctr18, 1, !dbg !403
  store i64 %6, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.9, i64 0, i64 2), align 16, !dbg !403
  %7 = load %struct._stritem**, %struct._stritem*** @primary_hashtable, align 8, !dbg !403, !tbaa !182
  %sh_prom5 = zext i32 %5 to i64, !dbg !391
  %notmask = shl nsw i64 -1, %sh_prom5, !dbg !391
  %sub7 = xor i64 %notmask, -1, !dbg !391
  %and8 = and i64 %conv4.pre-phi, %sub7, !dbg !404
  %arrayidx9 = getelementptr inbounds %struct._stritem*, %struct._stritem** %7, i64 %and8, !dbg !403
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arrayidx9.sink30 = phi %struct._stritem** [ %arrayidx9, %if.else ], [ %arrayidx, %if.then ]
  %8 = load %struct._stritem*, %struct._stritem** %arrayidx9.sink30, align 8, !dbg !405, !tbaa !182
  %h_next10 = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 2, !dbg !405
  store %struct._stritem* %8, %struct._stritem** %h_next10, align 8, !dbg !405, !tbaa !182
  store %struct._stritem* %it, %struct._stritem** %arrayidx9.sink30, align 8, !dbg !405, !tbaa !182
  ret i32 1, !dbg !406
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @assoc_delete(i8* noundef %key, i64 noundef %nkey, i32 noundef %hv) local_unnamed_addr #0 !dbg !407 {
entry:
  call void @llvm.dbg.value(metadata i8* %key, metadata !411, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata i64 %nkey, metadata !412, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata i32 %hv, metadata !413, metadata !DIExpression()), !dbg !418
  %call = tail call fastcc %struct._stritem** @_hashitem_before(i8* noundef %key, i64 noundef %nkey, i32 noundef %hv) #15, !dbg !419
  call void @llvm.dbg.value(metadata %struct._stritem** %call, metadata !414, metadata !DIExpression()), !dbg !418
  %0 = load %struct._stritem*, %struct._stritem** %call, align 8, !dbg !420, !tbaa !182
  %tobool.not = icmp eq %struct._stritem* %0, null, !dbg !420
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !421

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.10, i64 0, i64 0), align 16, !dbg !422
  %1 = add i64 %gcov_ctr, 1, !dbg !422
  store i64 %1, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.10, i64 0, i64 0), align 16, !dbg !422
  %2 = load %struct._stritem*, %struct._stritem** %call, align 8, !dbg !423, !tbaa !182
  %h_next = getelementptr inbounds %struct._stritem, %struct._stritem* %2, i64 0, i32 2, !dbg !424
  %3 = load %struct._stritem*, %struct._stritem** %h_next, align 8, !dbg !424, !tbaa !182
  call void @llvm.dbg.value(metadata %struct._stritem* %3, metadata !415, metadata !DIExpression()), !dbg !425
  store %struct._stritem* null, %struct._stritem** %h_next, align 8, !dbg !426, !tbaa !182
  store %struct._stritem* %3, %struct._stritem** %call, align 8, !dbg !427, !tbaa !182
  ret void, !dbg !428

if.else:                                          ; preds = %entry
  %gcov_ctr5 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.10, i64 0, i64 2), align 16, !dbg !429
  %4 = add i64 %gcov_ctr5, 1, !dbg !429
  store i64 %4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.10, i64 0, i64 2), align 16, !dbg !429
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef 184, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.assoc_delete, i64 0, i64 0)) #13, !dbg !429
  unreachable, !dbg !429
}

; Function Attrs: nofree noinline nounwind uwtable
define internal fastcc %struct._stritem** @_hashitem_before(i8* noundef readonly %key, i64 noundef %nkey, i32 noundef %hv) unnamed_addr #4 !dbg !432 {
entry:
  call void @llvm.dbg.value(metadata i8* %key, metadata !436, metadata !DIExpression()), !dbg !441
  call void @llvm.dbg.value(metadata i64 %nkey, metadata !437, metadata !DIExpression()), !dbg !441
  call void @llvm.dbg.value(metadata i32 %hv, metadata !438, metadata !DIExpression()), !dbg !441
  %.b32 = load i1, i1* @expanding, align 1, !dbg !442
  br i1 %.b32, label %land.lhs.true, label %entry.if.else_crit_edge, !dbg !444

entry.if.else_crit_edge:                          ; preds = %entry
  %.pre = load i32, i32* @hashpower, align 4, !dbg !445, !tbaa !172
  %.pre38 = zext i32 %hv to i64, !dbg !447
  br label %if.else, !dbg !444

land.lhs.true:                                    ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.11, i64 0, i64 0), align 16, !dbg !448
  %0 = add i64 %gcov_ctr, 1, !dbg !448
  store i64 %0, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.11, i64 0, i64 0), align 16, !dbg !448
  %conv = zext i32 %hv to i64, !dbg !448
  %1 = load i32, i32* @hashpower, align 4, !dbg !449, !tbaa !172
  %sub = add i32 %1, -1, !dbg !449
  %sh_prom = zext i32 %sub to i64, !dbg !449
  %notmask33 = shl nsw i64 -1, %sh_prom, !dbg !449
  %sub1 = xor i64 %notmask33, -1, !dbg !449
  %and = and i64 %sub1, %conv, !dbg !450
  call void @llvm.dbg.value(metadata i64 %and, metadata !440, metadata !DIExpression()), !dbg !441
  %2 = load i64, i64* @expand_bucket, align 8, !dbg !451, !tbaa !305
  %cmp.not = icmp ult i64 %and, %2, !dbg !452
  br i1 %cmp.not, label %if.else, label %if.then, !dbg !453

if.then:                                          ; preds = %land.lhs.true
  %gcov_ctr18 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.11, i64 0, i64 1), align 8, !dbg !454
  %3 = add i64 %gcov_ctr18, 1, !dbg !454
  store i64 %3, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.11, i64 0, i64 1), align 8, !dbg !454
  %4 = load %struct._stritem**, %struct._stritem*** @old_hashtable, align 8, !dbg !454, !tbaa !182
  %arrayidx = getelementptr inbounds %struct._stritem*, %struct._stritem** %4, i64 %and, !dbg !454
  call void @llvm.dbg.value(metadata %struct._stritem** %arrayidx, metadata !439, metadata !DIExpression()), !dbg !441
  br label %if.end, !dbg !456

if.else:                                          ; preds = %entry.if.else_crit_edge, %land.lhs.true
  %conv3.pre-phi = phi i64 [ %.pre38, %entry.if.else_crit_edge ], [ %conv, %land.lhs.true ], !dbg !447
  %5 = phi i32 [ %.pre, %entry.if.else_crit_edge ], [ %1, %land.lhs.true ], !dbg !445
  %gcov_ctr19 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.11, i64 0, i64 2), align 16, !dbg !457
  %6 = add i64 %gcov_ctr19, 1, !dbg !457
  store i64 %6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.11, i64 0, i64 2), align 16, !dbg !457
  %7 = load %struct._stritem**, %struct._stritem*** @primary_hashtable, align 8, !dbg !457, !tbaa !182
  %sh_prom4 = zext i32 %5 to i64, !dbg !445
  %notmask = shl nsw i64 -1, %sh_prom4, !dbg !445
  %sub6 = xor i64 %notmask, -1, !dbg !445
  %and7 = and i64 %conv3.pre-phi, %sub6, !dbg !458
  %arrayidx8 = getelementptr inbounds %struct._stritem*, %struct._stritem** %7, i64 %and7, !dbg !457
  call void @llvm.dbg.value(metadata %struct._stritem** %arrayidx8, metadata !439, metadata !DIExpression()), !dbg !441
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %pos.0 = phi %struct._stritem** [ %arrayidx, %if.then ], [ %arrayidx8, %if.else ], !dbg !459
  call void @llvm.dbg.value(metadata %struct._stritem** %pos.0, metadata !439, metadata !DIExpression()), !dbg !441
  %8 = load %struct._stritem*, %struct._stritem** %pos.0, align 8, !dbg !460, !tbaa !182
  %tobool9.not34 = icmp eq %struct._stritem* %8, null, !dbg !460
  br i1 %tobool9.not34, label %while.end, label %land.rhs, !dbg !461

land.rhs:                                         ; preds = %if.end, %while.body
  %9 = phi %struct._stritem* [ %22, %while.body ], [ %8, %if.end ]
  %pos.135 = phi %struct._stritem** [ %h_next, %while.body ], [ %pos.0, %if.end ]
  call void @llvm.dbg.value(metadata %struct._stritem** %pos.135, metadata !439, metadata !DIExpression()), !dbg !441
  %nkey10 = getelementptr inbounds %struct._stritem, %struct._stritem* %9, i64 0, i32 9, !dbg !462
  %10 = load i8, i8* %nkey10, align 1, !dbg !462, !tbaa !317
  %conv11 = zext i8 %10 to i64, !dbg !463
  %cmp12.not = icmp eq i64 %conv11, %nkey, !dbg !464
  br i1 %cmp12.not, label %lor.rhs, label %while.body.critedge, !dbg !465

lor.rhs:                                          ; preds = %land.rhs
  %gcov_ctr20 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.11, i64 0, i64 3), align 8, !dbg !466
  %11 = add i64 %gcov_ctr20, 1, !dbg !466
  store i64 %11, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.11, i64 0, i64 3), align 8, !dbg !466
  %12 = load %struct._stritem*, %struct._stritem** %pos.135, align 8, !dbg !467, !tbaa !182
  %data = getelementptr inbounds %struct._stritem, %struct._stritem* %12, i64 0, i32 10, !dbg !467
  %13 = bitcast [0 x %union.anon]* %data to i8*, !dbg !467
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %12, i64 0, i32 7, !dbg !467
  %14 = load i16, i16* %it_flags, align 2, !dbg !467, !tbaa !323
  %15 = shl i16 %14, 2, !dbg !467
  %16 = and i16 %15, 8, !dbg !467
  %17 = zext i16 %16 to i64, !dbg !467
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %17, !dbg !467
  %call = tail call i32 @memcmp(i8* noundef %key, i8* noundef nonnull %add.ptr, i64 noundef %nkey) #14, !dbg !468
  %tobool17.not = icmp eq i32 %call, 0, !dbg !465
  %gcov_ctr21 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.11, i64 0, i64 4), align 16
  %18 = add i64 %gcov_ctr21, 1
  store i64 %18, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.11, i64 0, i64 4), align 16
  br i1 %tobool17.not, label %while.end, label %while.body, !dbg !469

while.body.critedge:                              ; preds = %land.rhs
  %gcov_ctr21.c = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.11, i64 0, i64 4), align 16
  %19 = add i64 %gcov_ctr21.c, 1
  store i64 %19, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.11, i64 0, i64 4), align 16
  br label %while.body, !dbg !469

while.body:                                       ; preds = %while.body.critedge, %lor.rhs
  %gcov_ctr22 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.11, i64 0, i64 5), align 8, !dbg !470
  %20 = add i64 %gcov_ctr22, 1, !dbg !470
  store i64 %20, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.11, i64 0, i64 5), align 8, !dbg !470
  %21 = load %struct._stritem*, %struct._stritem** %pos.135, align 8, !dbg !472, !tbaa !182
  %h_next = getelementptr inbounds %struct._stritem, %struct._stritem* %21, i64 0, i32 2, !dbg !473
  call void @llvm.dbg.value(metadata %struct._stritem** %h_next, metadata !439, metadata !DIExpression()), !dbg !441
  %22 = load %struct._stritem*, %struct._stritem** %h_next, align 8, !dbg !460, !tbaa !182
  %tobool9.not = icmp eq %struct._stritem* %22, null, !dbg !460
  br i1 %tobool9.not, label %while.end, label %land.rhs, !dbg !461, !llvm.loop !474

while.end:                                        ; preds = %lor.rhs, %while.body, %if.end
  %pos.1.lcssa = phi %struct._stritem** [ %pos.0, %if.end ], [ %h_next, %while.body ], [ %pos.135, %lor.rhs ], !dbg !441
  ret %struct._stritem** %pos.1.lcssa, !dbg !476
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @start_assoc_maintenance_thread() local_unnamed_addr #0 !dbg !477 {
entry:
  %call = tail call i8* @getenv(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0)) #12, !dbg !483
  call void @llvm.dbg.value(metadata i8* %call, metadata !482, metadata !DIExpression()), !dbg !484
  %cmp.not = icmp eq i8* %call, null, !dbg !485
  br i1 %cmp.not, label %if.end4, label %if.then, !dbg !487

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @atoi(i8* noundef %call) #14, !dbg !488
  store i32 %call1, i32* @hash_bulk_move, align 4, !dbg !490, !tbaa !172
  %cmp2 = icmp eq i32 %call1, 0, !dbg !491
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !493

if.then3:                                         ; preds = %if.then
  %gcov_ctr = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.12, i64 0, i64 0), align 16, !dbg !494
  %0 = add i64 %gcov_ctr, 1, !dbg !494
  store i64 %0, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.12, i64 0, i64 0), align 16, !dbg !494
  store i32 1, i32* @hash_bulk_move, align 4, !dbg !494, !tbaa !172
  br label %if.end, !dbg !496

if.end:                                           ; preds = %if.then3, %if.then
  %gcov_ctr12 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.12, i64 0, i64 1), align 8, !dbg !497
  %1 = add i64 %gcov_ctr12, 1, !dbg !497
  store i64 %1, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.12, i64 0, i64 1), align 8, !dbg !497
  br label %if.end4, !dbg !497

if.end4:                                          ; preds = %if.end, %entry
  %call5 = tail call i32 @pthread_create(i64* noundef nonnull @maintenance_tid, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef nonnull @assoc_maintenance_thread, i8* noundef null) #12, !dbg !498
  call void @llvm.dbg.value(metadata i32 %call5, metadata !481, metadata !DIExpression()), !dbg !484
  %cmp6.not = icmp eq i32 %call5, 0, !dbg !500
  br i1 %cmp6.not, label %if.end10, label %if.then7, !dbg !501

if.then7:                                         ; preds = %if.end4
  %gcov_ctr13 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.12, i64 0, i64 2), align 16, !dbg !502
  %2 = add i64 %gcov_ctr13, 1, !dbg !502
  store i64 %2, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.12, i64 0, i64 2), align 16, !dbg !502
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !502, !tbaa !182
  %call8 = tail call i8* @strerror(i32 noundef %call5) #12, !dbg !504
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* noundef %call8) #12, !dbg !505
  br label %cleanup, !dbg !506

if.end10:                                         ; preds = %if.end4
  %gcov_ctr14 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.12, i64 0, i64 3), align 8, !dbg !507
  %4 = add i64 %gcov_ctr14, 1, !dbg !507
  store i64 %4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.12, i64 0, i64 3), align 8, !dbg !507
  br label %cleanup, !dbg !507

cleanup:                                          ; preds = %if.end10, %if.then7
  %retval.0 = phi i32 [ -1, %if.then7 ], [ 0, %if.end10 ], !dbg !484
  ret i32 %retval.0, !dbg !508
}

; Function Attrs: nounwind
declare !dbg !509 dso_local i8* @getenv(i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
declare dso_local i32 @atoi(i8* noundef nonnull) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !512 dso_local i32 @pthread_create(i64* noundef, %union.pthread_attr_t* noundef, i8* (i8*)* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @assoc_maintenance_thread(i8* nocapture noundef readnone %arg) #0 !dbg !532 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 16
  call void @llvm.dbg.value(metadata i8* %arg, metadata !534, metadata !DIExpression()), !dbg !544
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @maintenance_lock) #12, !dbg !545
  %1 = load volatile i32, i32* @do_run_maintenance_thread, align 4, !dbg !546, !tbaa !172
  %tobool.not81 = icmp eq i32 %1, 0, !dbg !547
  br i1 %tobool.not81, label %while.end, label %for.cond.preheader, !dbg !547

for.cond.preheader:                               ; preds = %entry, %if.end47
  call void @llvm.dbg.value(metadata i32 0, metadata !535, metadata !DIExpression()), !dbg !548
  %2 = load i32, i32* @hash_bulk_move, align 4, !dbg !549, !tbaa !172
  %cmp79 = icmp sgt i32 %2, 0, !dbg !550
  br i1 %cmp79, label %land.rhs, label %for.end40, !dbg !551

land.rhs:                                         ; preds = %for.cond.preheader, %if.end37
  %ii.080 = phi i32 [ %inc39, %if.end37 ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i32 %ii.080, metadata !535, metadata !DIExpression()), !dbg !548
  %gcov_ctr49 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 1), align 8, !dbg !552
  %3 = add i64 %gcov_ctr49, 1, !dbg !552
  store i64 %3, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 1), align 8, !dbg !552
  %.b7375 = load i1, i1* @expanding, align 1, !dbg !552
  br i1 %.b7375, label %for.body, label %if.then42, !dbg !553

for.body:                                         ; preds = %land.rhs
  call void @llvm.dbg.value(metadata i8* null, metadata !543, metadata !DIExpression()), !dbg !554
  %4 = load i64, i64* @expand_bucket, align 8, !dbg !555, !tbaa !305
  %conv = trunc i64 %4 to i32, !dbg !555
  %call2 = tail call i8* @item_trylock(i32 noundef %conv) #12, !dbg !557
  call void @llvm.dbg.value(metadata i8* %call2, metadata !543, metadata !DIExpression()), !dbg !554
  %tobool3.not = icmp eq i8* %call2, null, !dbg !558
  br i1 %tobool3.not, label %if.end34.thread, label %if.then, !dbg !559

if.then:                                          ; preds = %for.body
  %5 = load %struct._stritem**, %struct._stritem*** @old_hashtable, align 8, !dbg !560, !tbaa !182
  %6 = load i64, i64* @expand_bucket, align 8, !dbg !563, !tbaa !305
  %arrayidx = getelementptr inbounds %struct._stritem*, %struct._stritem** %5, i64 %6, !dbg !560
  %7 = load %struct._stritem*, %struct._stritem** %arrayidx, align 8, !dbg !560, !tbaa !182
  call void @llvm.dbg.value(metadata %struct._stritem* %7, metadata !537, metadata !DIExpression()), !dbg !554
  %cmp5.not77 = icmp eq %struct._stritem* %7, null, !dbg !564
  br i1 %cmp5.not77, label %if.then.for.end_crit_edge, label %for.body7, !dbg !566

if.then.for.end_crit_edge:                        ; preds = %if.then
  %.pre83 = load i32, i32* @hashpower, align 4, !dbg !567, !tbaa !172
  br label %for.end, !dbg !566

for.body7:                                        ; preds = %if.then, %for.body7
  %it.078 = phi %struct._stritem* [ %8, %for.body7 ], [ %7, %if.then ]
  call void @llvm.dbg.value(metadata %struct._stritem* %it.078, metadata !537, metadata !DIExpression()), !dbg !554
  %h_next = getelementptr inbounds %struct._stritem, %struct._stritem* %it.078, i64 0, i32 2, !dbg !569
  %8 = load %struct._stritem*, %struct._stritem** %h_next, align 8, !dbg !569, !tbaa !182
  call void @llvm.dbg.value(metadata %struct._stritem* %8, metadata !541, metadata !DIExpression()), !dbg !554
  %9 = load i32 (i8*, i64)*, i32 (i8*, i64)** @hash, align 8, !dbg !571, !tbaa !182
  %data = getelementptr inbounds %struct._stritem, %struct._stritem* %it.078, i64 0, i32 10, !dbg !572
  %10 = bitcast [0 x %union.anon]* %data to i8*, !dbg !572
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %it.078, i64 0, i32 7, !dbg !572
  %11 = load i16, i16* %it_flags, align 2, !dbg !572, !tbaa !323
  %12 = shl i16 %11, 2, !dbg !572
  %13 = and i16 %12, 8, !dbg !572
  %14 = zext i16 %13 to i64, !dbg !572
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %14, !dbg !572
  %nkey = getelementptr inbounds %struct._stritem, %struct._stritem* %it.078, i64 0, i32 9, !dbg !573
  %15 = load i8, i8* %nkey, align 1, !dbg !573, !tbaa !317
  %conv10 = zext i8 %15 to i64, !dbg !574
  %call11 = tail call i32 %9(i8* noundef nonnull %add.ptr, i64 noundef %conv10) #12, !dbg !571
  %conv12 = zext i32 %call11 to i64, !dbg !571
  %16 = load i32, i32* @hashpower, align 4, !dbg !575, !tbaa !172
  %sh_prom = zext i32 %16 to i64, !dbg !575
  %notmask = shl nsw i64 -1, %sh_prom, !dbg !575
  %sub = xor i64 %notmask, -1, !dbg !575
  %and13 = and i64 %sub, %conv12, !dbg !576
  call void @llvm.dbg.value(metadata i64 %and13, metadata !542, metadata !DIExpression()), !dbg !554
  %17 = load %struct._stritem**, %struct._stritem*** @primary_hashtable, align 8, !dbg !577, !tbaa !182
  %arrayidx14 = getelementptr inbounds %struct._stritem*, %struct._stritem** %17, i64 %and13, !dbg !577
  %18 = load %struct._stritem*, %struct._stritem** %arrayidx14, align 8, !dbg !577, !tbaa !182
  store %struct._stritem* %18, %struct._stritem** %h_next, align 8, !dbg !578, !tbaa !182
  store %struct._stritem* %it.078, %struct._stritem** %arrayidx14, align 8, !dbg !579, !tbaa !182
  %gcov_ctr50 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 2), align 16, !dbg !580
  %19 = add i64 %gcov_ctr50, 1, !dbg !580
  store i64 %19, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 2), align 16, !dbg !580
  call void @llvm.dbg.value(metadata %struct._stritem* %8, metadata !537, metadata !DIExpression()), !dbg !554
  %cmp5.not = icmp eq %struct._stritem* %8, null, !dbg !564
  br i1 %cmp5.not, label %for.end.loopexit, label %for.body7, !dbg !566, !llvm.loop !581

for.end.loopexit:                                 ; preds = %for.body7
  %.pre = load %struct._stritem**, %struct._stritem*** @old_hashtable, align 8, !dbg !583, !tbaa !182
  %.pre82 = load i64, i64* @expand_bucket, align 8, !dbg !584, !tbaa !305
  br label %for.end, !dbg !583

for.end:                                          ; preds = %if.then.for.end_crit_edge, %for.end.loopexit
  %20 = phi i32 [ %16, %for.end.loopexit ], [ %.pre83, %if.then.for.end_crit_edge ], !dbg !567
  %21 = phi i64 [ %.pre82, %for.end.loopexit ], [ %6, %if.then.for.end_crit_edge ], !dbg !584
  %22 = phi %struct._stritem** [ %.pre, %for.end.loopexit ], [ %5, %if.then.for.end_crit_edge ], !dbg !583
  %arrayidx17 = getelementptr inbounds %struct._stritem*, %struct._stritem** %22, i64 %21, !dbg !583
  store %struct._stritem* null, %struct._stritem** %arrayidx17, align 8, !dbg !585, !tbaa !182
  %inc = add i64 %21, 1, !dbg !586
  store i64 %inc, i64* @expand_bucket, align 8, !dbg !586, !tbaa !305
  %sub18 = add i32 %20, -1, !dbg !567
  %sh_prom19 = zext i32 %sub18 to i64, !dbg !567
  %shl20 = shl nuw i64 1, %sh_prom19, !dbg !567
  %cmp21 = icmp eq i64 %inc, %shl20, !dbg !587
  br i1 %cmp21, label %if.then23, label %if.then36, !dbg !588

if.then23:                                        ; preds = %for.end
  %23 = bitcast %struct._stritem** %22 to i8*, !dbg !589
  store i1 false, i1* @expanding, align 1, !dbg !590
  tail call void @free(i8* noundef %23) #12, !dbg !592
  tail call void @STATS_LOCK() #12, !dbg !593
  %24 = load i32, i32* @hashpower, align 4, !dbg !594, !tbaa !172
  %sub24 = add i32 %24, -1, !dbg !594
  %sh_prom25 = zext i32 %sub24 to i64, !dbg !594
  %mul.neg = shl i64 -8, %sh_prom25, !dbg !595
  %25 = load i64, i64* getelementptr inbounds (%struct.stats_state, %struct.stats_state* @stats_state, i64 0, i32 3), align 8, !dbg !596, !tbaa !201
  %sub27 = add i64 %mul.neg, %25, !dbg !596
  store i64 %sub27, i64* getelementptr inbounds (%struct.stats_state, %struct.stats_state* @stats_state, i64 0, i32 3), align 8, !dbg !596, !tbaa !201
  store i8 0, i8* getelementptr inbounds (%struct.stats_state, %struct.stats_state* @stats_state, i64 0, i32 8), align 8, !dbg !597, !tbaa !598
  tail call void @STATS_UNLOCK() #12, !dbg !599
  %26 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !600, !tbaa !602
  %cmp28 = icmp sgt i32 %26, 1, !dbg !605
  br i1 %cmp28, label %if.then30, label %if.end, !dbg !606

if.then30:                                        ; preds = %if.then23
  %gcov_ctr51 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 3), align 8, !dbg !607
  %27 = add i64 %gcov_ctr51, 1, !dbg !607
  store i64 %27, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 3), align 8, !dbg !607
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !607, !tbaa !182
  %call31 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0)) #12, !dbg !608
  br label %if.end, !dbg !608

if.end:                                           ; preds = %if.then30, %if.then23
  %gcov_ctr52 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 4), align 16, !dbg !609
  %29 = add i64 %gcov_ctr52, 1, !dbg !609
  store i64 %29, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 4), align 16, !dbg !609
  br label %if.then36, !dbg !609

if.end34.thread:                                  ; preds = %for.body
  %gcov_ctr54 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 6), align 16, !dbg !610
  %30 = add i64 %gcov_ctr54, 1, !dbg !610
  store i64 %30, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 6), align 16, !dbg !610
  %call33 = tail call i32 @usleep(i32 noundef 10000) #12, !dbg !610
  br label %if.end37, !dbg !612

if.then36:                                        ; preds = %if.end, %for.end
  %gcov_ctr53 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 5), align 8, !dbg !613
  %31 = add i64 %gcov_ctr53, 1, !dbg !613
  store i64 %31, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 5), align 8, !dbg !613
  %gcov_ctr55 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 7), align 8, !dbg !614
  %32 = add i64 %gcov_ctr55, 1, !dbg !614
  store i64 %32, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 7), align 8, !dbg !614
  tail call void @item_trylock_unlock(i8* noundef nonnull %call2) #12, !dbg !617
  call void @llvm.dbg.value(metadata i8* null, metadata !543, metadata !DIExpression()), !dbg !554
  br label %if.end37, !dbg !618

if.end37:                                         ; preds = %if.end34.thread, %if.then36
  %inc39 = add nuw nsw i32 %ii.080, 1, !dbg !619
  call void @llvm.dbg.value(metadata i32 %inc39, metadata !535, metadata !DIExpression()), !dbg !548
  %33 = load i32, i32* @hash_bulk_move, align 4, !dbg !549, !tbaa !172
  %cmp = icmp slt i32 %inc39, %33, !dbg !550
  br i1 %cmp, label %land.rhs, label %for.end40, !dbg !551, !llvm.loop !620

for.end40:                                        ; preds = %if.end37, %for.cond.preheader
  %.b74.pr = load i1, i1* @expanding, align 1, !dbg !622
  br i1 %.b74.pr, label %if.end47, label %if.then42, !dbg !624

if.then42:                                        ; preds = %land.rhs, %for.end40
  %call43 = tail call i32 @pthread_cond_wait(%union.pthread_cond_t* noundef nonnull @maintenance_cond, %union.pthread_mutex_t* noundef nonnull @maintenance_lock) #12, !dbg !625
  %34 = load volatile i32, i32* @do_run_maintenance_thread, align 4, !dbg !627, !tbaa !172
  %tobool44.not = icmp eq i32 %34, 0, !dbg !627
  br i1 %tobool44.not, label %if.end46, label %if.then45, !dbg !629

if.then45:                                        ; preds = %if.then42
  %gcov_ctr56 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 8), align 16, !dbg !630
  %35 = add i64 %gcov_ctr56, 1, !dbg !630
  store i64 %35, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 8), align 16, !dbg !630
  tail call void @pause_threads(i32 noundef 1) #12, !dbg !630
  tail call fastcc void @assoc_expand() #15, !dbg !632
  tail call void @pause_threads(i32 noundef 2) #12, !dbg !633
  br label %if.end46, !dbg !634

if.end46:                                         ; preds = %if.then45, %if.then42
  %gcov_ctr57 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 9), align 8, !dbg !635
  %36 = add i64 %gcov_ctr57, 1, !dbg !635
  store i64 %36, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 9), align 8, !dbg !635
  br label %if.end47, !dbg !635

if.end47:                                         ; preds = %if.end46, %for.end40
  %gcov_ctr58 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 10), align 16, !dbg !636
  %37 = add i64 %gcov_ctr58, 1, !dbg !636
  store i64 %37, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 10), align 16, !dbg !636
  %38 = load volatile i32, i32* @do_run_maintenance_thread, align 4, !dbg !546, !tbaa !172
  %tobool.not = icmp eq i32 %38, 0, !dbg !547
  br i1 %tobool.not, label %while.end, label %for.cond.preheader, !dbg !547, !llvm.loop !637

while.end:                                        ; preds = %if.end47, %entry
  %call48 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @maintenance_lock) #12, !dbg !638
  ret i8* null, !dbg !639
}

; Function Attrs: nounwind
declare !dbg !640 dso_local i8* @strerror(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @stop_assoc_maintenance_thread() local_unnamed_addr #0 !dbg !643 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.15, i64 0, i64 0), align 8, !dbg !644
  %0 = add i64 %gcov_ctr, 1, !dbg !644
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.15, i64 0, i64 0), align 8, !dbg !644
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @maintenance_lock) #12, !dbg !644
  store volatile i32 0, i32* @do_run_maintenance_thread, align 4, !dbg !645, !tbaa !172
  %call1 = tail call i32 @pthread_cond_signal(%union.pthread_cond_t* noundef nonnull @maintenance_cond) #12, !dbg !646
  %call2 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @maintenance_lock) #12, !dbg !647
  %1 = load i64, i64* @maintenance_tid, align 8, !dbg !648, !tbaa !305
  %call3 = tail call i32 @pthread_join(i64 noundef %1, i8** noundef null) #12, !dbg !649
  ret void, !dbg !650
}

; Function Attrs: nounwind
declare !dbg !651 dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef) local_unnamed_addr #1

declare !dbg !652 dso_local i32 @pthread_join(i64 noundef, i8** noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @assoc_get_iterator() local_unnamed_addr #0 !dbg !656 {
entry:
  %call = tail call noalias i8* @calloc(i64 noundef 1, i64 noundef 32) #12, !dbg !661
  call void @llvm.dbg.value(metadata i8* %call, metadata !660, metadata !DIExpression()), !dbg !662
  %cmp = icmp eq i8* %call, null, !dbg !663
  br i1 %cmp, label %if.then, label %if.end, !dbg !665

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.16, i64 0, i64 0), align 8, !dbg !666
  %0 = add i64 %gcov_ctr, 1, !dbg !666
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.16, i64 0, i64 0), align 8, !dbg !666
  br label %cleanup, !dbg !666

if.end:                                           ; preds = %entry
  %gcov_ctr2 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.16, i64 0, i64 1), align 8, !dbg !668
  %1 = add i64 %gcov_ctr2, 1, !dbg !668
  store i64 %1, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.16, i64 0, i64 1), align 8, !dbg !668
  %call1 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @maintenance_lock) #12, !dbg !668
  br label %cleanup, !dbg !669

cleanup:                                          ; preds = %if.end, %if.then
  ret i8* %call, !dbg !670
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @assoc_iterate(i8* nocapture noundef %iterp, %struct._stritem** nocapture noundef writeonly %it) local_unnamed_addr #0 !dbg !671 {
entry:
  call void @llvm.dbg.value(metadata i8* %iterp, metadata !675, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata %struct._stritem** %it, metadata !676, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i8* %iterp, metadata !677, metadata !DIExpression()), !dbg !678
  store %struct._stritem* null, %struct._stritem** %it, align 8, !dbg !679, !tbaa !182
  %0 = getelementptr inbounds i8, i8* %iterp, i64 24, !dbg !680
  %1 = load i8, i8* %0, align 8, !dbg !680, !tbaa !682, !range !684
  %tobool.not = icmp eq i8 %1, 0, !dbg !680
  br i1 %tobool.not, label %if.end9, label %if.then, !dbg !685

if.then:                                          ; preds = %entry
  %next = getelementptr inbounds i8, i8* %iterp, i64 16, !dbg !686
  %2 = bitcast i8* %next to %struct._stritem**, !dbg !686
  %3 = load %struct._stritem*, %struct._stritem** %2, align 8, !dbg !686, !tbaa !689
  %cmp.not = icmp eq %struct._stritem* %3, null, !dbg !690
  br i1 %cmp.not, label %if.else, label %if.then1, !dbg !691

if.then1:                                         ; preds = %if.then
  %gcov_ctr = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.17, i64 0, i64 0), align 16, !dbg !692
  %4 = add i64 %gcov_ctr, 1, !dbg !692
  store i64 %4, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.17, i64 0, i64 0), align 16, !dbg !692
  %it3 = getelementptr inbounds i8, i8* %iterp, i64 8, !dbg !694
  %5 = bitcast i8* %it3 to %struct._stritem**, !dbg !694
  store %struct._stritem* %3, %struct._stritem** %5, align 8, !dbg !695, !tbaa !696
  %h_next = getelementptr inbounds %struct._stritem, %struct._stritem* %3, i64 0, i32 2, !dbg !697
  %6 = load %struct._stritem*, %struct._stritem** %h_next, align 8, !dbg !697, !tbaa !182
  store %struct._stritem* %6, %struct._stritem** %2, align 8, !dbg !698, !tbaa !689
  br label %if.end, !dbg !699

if.else:                                          ; preds = %if.then
  %gcov_ctr36 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.17, i64 0, i64 1), align 8, !dbg !700
  %7 = add i64 %gcov_ctr36, 1, !dbg !700
  store i64 %7, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.17, i64 0, i64 1), align 8, !dbg !700
  %bucket = bitcast i8* %iterp to i64*, !dbg !702
  %8 = load i64, i64* %bucket, align 8, !dbg !702, !tbaa !703
  %conv = trunc i64 %8 to i32, !dbg !700
  tail call void @item_unlock(i32 noundef %conv) #12, !dbg !704
  %9 = load i64, i64* %bucket, align 8, !dbg !705, !tbaa !703
  %inc = add i64 %9, 1, !dbg !705
  store i64 %inc, i64* %bucket, align 8, !dbg !705, !tbaa !703
  store i8 0, i8* %0, align 8, !dbg !706, !tbaa !682
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  store %struct._stritem* %3, %struct._stritem** %it, align 8, !dbg !707, !tbaa !182
  br label %cleanup, !dbg !708

if.end9:                                          ; preds = %entry
  %bucket10 = bitcast i8* %iterp to i64*, !dbg !709
  %10 = load i64, i64* %bucket10, align 8, !dbg !709, !tbaa !703
  %11 = load i32, i32* @hashpower, align 4, !dbg !711, !tbaa !172
  %sh_prom = zext i32 %11 to i64, !dbg !711
  %shl = shl nuw i64 1, %sh_prom, !dbg !711
  %cmp11.not = icmp eq i64 %10, %shl, !dbg !712
  br i1 %cmp11.not, label %if.else34, label %if.then13, !dbg !713

if.then13:                                        ; preds = %if.end9
  %conv15 = trunc i64 %10 to i32, !dbg !714
  tail call void @item_lock(i32 noundef %conv15) #12, !dbg !716
  store i8 1, i8* %0, align 8, !dbg !717, !tbaa !682
  %12 = load %struct._stritem**, %struct._stritem*** @primary_hashtable, align 8, !dbg !718, !tbaa !182
  %13 = load i64, i64* %bucket10, align 8, !dbg !719, !tbaa !703
  %arrayidx = getelementptr inbounds %struct._stritem*, %struct._stritem** %12, i64 %13, !dbg !718
  %14 = load %struct._stritem*, %struct._stritem** %arrayidx, align 8, !dbg !718, !tbaa !182
  %it18 = getelementptr inbounds i8, i8* %iterp, i64 8, !dbg !720
  %15 = bitcast i8* %it18 to %struct._stritem**, !dbg !720
  store %struct._stritem* %14, %struct._stritem** %15, align 8, !dbg !721, !tbaa !696
  %cmp20.not = icmp eq %struct._stritem* %14, null, !dbg !722
  br i1 %cmp20.not, label %if.else27, label %if.then22, !dbg !724

if.then22:                                        ; preds = %if.then13
  %gcov_ctr38 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.17, i64 0, i64 3), align 8, !dbg !725
  %16 = add i64 %gcov_ctr38, 1, !dbg !725
  store i64 %16, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.17, i64 0, i64 3), align 8, !dbg !725
  %17 = load %struct._stritem*, %struct._stritem** %15, align 8, !dbg !727, !tbaa !696
  %h_next24 = getelementptr inbounds %struct._stritem, %struct._stritem* %17, i64 0, i32 2, !dbg !728
  %18 = load %struct._stritem*, %struct._stritem** %h_next24, align 8, !dbg !728, !tbaa !182
  %next25 = getelementptr inbounds i8, i8* %iterp, i64 16, !dbg !729
  %19 = bitcast i8* %next25 to %struct._stritem**, !dbg !729
  store %struct._stritem* %18, %struct._stritem** %19, align 8, !dbg !730, !tbaa !689
  store %struct._stritem* %17, %struct._stritem** %it, align 8, !dbg !731, !tbaa !182
  br label %cleanup, !dbg !732

if.else27:                                        ; preds = %if.then13
  %gcov_ctr37 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.17, i64 0, i64 2), align 16, !dbg !733
  %20 = add i64 %gcov_ctr37, 1, !dbg !733
  store i64 %20, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.17, i64 0, i64 2), align 16, !dbg !733
  %21 = load i64, i64* %bucket10, align 8, !dbg !735, !tbaa !703
  %conv29 = trunc i64 %21 to i32, !dbg !733
  tail call void @item_unlock(i32 noundef %conv29) #12, !dbg !736
  store i8 0, i8* %0, align 8, !dbg !737, !tbaa !682
  %22 = load i64, i64* %bucket10, align 8, !dbg !738, !tbaa !703
  %inc32 = add i64 %22, 1, !dbg !738
  store i64 %inc32, i64* %bucket10, align 8, !dbg !738, !tbaa !703
  br label %cleanup

if.else34:                                        ; preds = %if.end9
  %gcov_ctr39 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.17, i64 0, i64 4), align 16, !dbg !739
  %23 = add i64 %gcov_ctr39, 1, !dbg !739
  store i64 %23, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.17, i64 0, i64 4), align 16, !dbg !739
  br label %cleanup, !dbg !739

cleanup:                                          ; preds = %if.else27, %if.then22, %if.else34, %if.end
  %retval.0 = phi i1 [ true, %if.end ], [ false, %if.else34 ], [ true, %if.then22 ], [ true, %if.else27 ], !dbg !678
  ret i1 %retval.0, !dbg !741
}

declare !dbg !742 dso_local void @item_unlock(i32 noundef) local_unnamed_addr #2

declare !dbg !745 dso_local void @item_lock(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @assoc_iterate_final(i8* noundef %iterp) local_unnamed_addr #0 !dbg !746 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.18, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.18, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* %iterp, metadata !750, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i8* %iterp, metadata !751, metadata !DIExpression()), !dbg !752
  %1 = getelementptr inbounds i8, i8* %iterp, i64 24, !dbg !753
  %2 = load i8, i8* %1, align 8, !dbg !753, !tbaa !682, !range !684
  %tobool.not = icmp eq i8 %2, 0, !dbg !753
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !755

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %iterp, metadata !751, metadata !DIExpression()), !dbg !752
  %gcov_ctr1 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.18, i64 0, i64 1), align 8, !dbg !756
  %3 = add i64 %gcov_ctr1, 1, !dbg !756
  store i64 %3, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.18, i64 0, i64 1), align 8, !dbg !756
  %bucket = bitcast i8* %iterp to i64*, !dbg !758
  %4 = load i64, i64* %bucket, align 8, !dbg !758, !tbaa !703
  %conv = trunc i64 %4 to i32, !dbg !756
  tail call void @item_unlock(i32 noundef %conv) #12, !dbg !759
  br label %if.end, !dbg !760

if.end:                                           ; preds = %if.then, %entry
  %call = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @maintenance_lock) #12, !dbg !761
  tail call void @free(i8* noundef nonnull %iterp) #12, !dbg !762
  ret void, !dbg !763
}

; Function Attrs: nounwind
declare !dbg !764 dso_local void @free(i8* noundef) local_unnamed_addr #1

declare !dbg !765 dso_local i8* @item_trylock(i32 noundef) local_unnamed_addr #2

declare !dbg !768 dso_local i32 @usleep(i32 noundef) local_unnamed_addr #2

declare !dbg !773 dso_local void @item_trylock_unlock(i8* noundef) local_unnamed_addr #2

declare !dbg !774 dso_local i32 @pthread_cond_wait(%union.pthread_cond_t* noundef, %union.pthread_mutex_t* noundef) local_unnamed_addr #2

declare !dbg !779 dso_local void @pause_threads(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @assoc_expand() unnamed_addr #0 !dbg !782 {
entry:
  %0 = load %struct._stritem**, %struct._stritem*** @primary_hashtable, align 8, !dbg !783, !tbaa !182
  store %struct._stritem** %0, %struct._stritem*** @old_hashtable, align 8, !dbg !784, !tbaa !182
  %1 = load i32, i32* @hashpower, align 4, !dbg !785, !tbaa !172
  %add = add i32 %1, 1, !dbg !785
  %sh_prom = zext i32 %add to i64, !dbg !785
  %shl = shl nuw i64 1, %sh_prom, !dbg !785
  %call = tail call noalias i8* @calloc(i64 noundef %shl, i64 noundef 8) #12, !dbg !786
  store i8* %call, i8** bitcast (%struct._stritem*** @primary_hashtable to i8**), align 8, !dbg !787, !tbaa !182
  %tobool.not = icmp eq i8* %call, null, !dbg !788
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !790

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 0), align 16, !dbg !791
  %2 = add i64 %gcov_ctr, 1, !dbg !791
  store i64 %2, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 0), align 16, !dbg !791
  %3 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !791, !tbaa !602
  %cmp = icmp sgt i32 %3, 1, !dbg !794
  br i1 %cmp, label %if.then1, label %if.end, !dbg !795

if.then1:                                         ; preds = %if.then
  %gcov_ctr7 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 1), align 8, !dbg !796
  %4 = add i64 %gcov_ctr7, 1, !dbg !796
  store i64 %4, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 1), align 8, !dbg !796
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !796, !tbaa !182
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0)) #12, !dbg !797
  br label %if.end, !dbg !797

if.end:                                           ; preds = %if.then1, %if.then
  %6 = load i32, i32* @hashpower, align 4, !dbg !798, !tbaa !172
  %inc = add i32 %6, 1, !dbg !798
  store i32 %inc, i32* @hashpower, align 4, !dbg !798, !tbaa !172
  store i1 true, i1* @expanding, align 1, !dbg !799
  store i64 0, i64* @expand_bucket, align 8, !dbg !800, !tbaa !305
  tail call void @STATS_LOCK() #12, !dbg !801
  %7 = load i32, i32* @hashpower, align 4, !dbg !802, !tbaa !172
  store i32 %7, i32* getelementptr inbounds (%struct.stats_state, %struct.stats_state* @stats_state, i64 0, i32 6), align 8, !dbg !803, !tbaa !194
  %sh_prom3 = zext i32 %7 to i64, !dbg !804
  %mul = shl i64 8, %sh_prom3, !dbg !805
  %8 = load i64, i64* getelementptr inbounds (%struct.stats_state, %struct.stats_state* @stats_state, i64 0, i32 3), align 8, !dbg !806, !tbaa !201
  %add5 = add i64 %8, %mul, !dbg !806
  store i64 %add5, i64* getelementptr inbounds (%struct.stats_state, %struct.stats_state* @stats_state, i64 0, i32 3), align 8, !dbg !806, !tbaa !201
  store i8 1, i8* getelementptr inbounds (%struct.stats_state, %struct.stats_state* @stats_state, i64 0, i32 8), align 8, !dbg !807, !tbaa !598
  tail call void @STATS_UNLOCK() #12, !dbg !808
  br label %if.end6, !dbg !809

if.else:                                          ; preds = %entry
  %gcov_ctr8 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 2), align 16, !dbg !810
  %9 = add i64 %gcov_ctr8, 1, !dbg !810
  store i64 %9, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 2), align 16, !dbg !810
  %10 = load %struct._stritem**, %struct._stritem*** @old_hashtable, align 8, !dbg !810, !tbaa !182
  store %struct._stritem** %10, %struct._stritem*** @primary_hashtable, align 8, !dbg !812, !tbaa !182
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.end
  ret void, !dbg !813
}

; Function Attrs: noinline nounwind uwtable
define internal void @__llvm_gcov_writeout() unnamed_addr #8 {
entry:
  tail call void @llvm_gcda_start_file(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @0, i64 0, i64 0), i32 875575338, i32 -91692630) #16
  br label %counter.loop.header

counter.loop.header:                              ; preds = %entry, %counter.loop.header
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %counter.loop.header ]
  %0 = getelementptr inbounds [14 x %emit_function_args_ty], [14 x %emit_function_args_ty]* @__llvm_internal_gcov_emit_function_args.0, i64 0, i64 %indvars.iv, i32 0
  %ident = load i32, i32* %0, align 4
  %1 = getelementptr inbounds [14 x %emit_function_args_ty], [14 x %emit_function_args_ty]* @__llvm_internal_gcov_emit_function_args.0, i64 0, i64 %indvars.iv, i32 1
  %func_checkssum = load i32, i32* %1, align 4
  %2 = getelementptr inbounds [14 x %emit_function_args_ty], [14 x %emit_function_args_ty]* @__llvm_internal_gcov_emit_function_args.0, i64 0, i64 %indvars.iv, i32 2
  %cfg_checksum = load i32, i32* %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #16
  %3 = getelementptr inbounds [14 x %emit_arcs_args_ty], [14 x %emit_arcs_args_ty]* @__llvm_internal_gcov_emit_arcs_args.0, i64 0, i64 %indvars.iv, i32 0
  %num_counters = load i32, i32* %3, align 16
  %4 = getelementptr inbounds [14 x %emit_arcs_args_ty], [14 x %emit_arcs_args_ty]* @__llvm_internal_gcov_emit_arcs_args.0, i64 0, i64 %indvars.iv, i32 1
  %counters = load i64*, i64** %4, align 8
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, i64* %counters) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 14
  br i1 %exitcond.not, label %file.loop.latch, label %counter.loop.header

file.loop.latch:                                  ; preds = %counter.loop.header
  tail call void @llvm_gcda_summary_info() #16
  tail call void @llvm_gcda_end_file() #16
  ret void
}

declare void @llvm_gcda_start_file(i8*, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, i64*) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly
define internal void @__llvm_gcov_reset() unnamed_addr #9 {
entry:
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([3 x i64]* @__llvm_gcov_ctr to i8*), i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(48) bitcast ([6 x i64]* @__llvm_gcov_ctr.7 to i8*), i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x i64]* @__llvm_gcov_ctr.8 to i8*), i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([3 x i64]* @__llvm_gcov_ctr.9 to i8*), i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x i64]* @__llvm_gcov_ctr.10 to i8*), i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(48) bitcast ([6 x i64]* @__llvm_gcov_ctr.11 to i8*), i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x i64]* @__llvm_gcov_ctr.12 to i8*), i8 0, i64 32, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.13, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(88) bitcast ([11 x i64]* @__llvm_gcov_ctr.14 to i8*), i8 0, i64 88, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.15, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.16 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([5 x i64]* @__llvm_gcov_ctr.17 to i8*), i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.18 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([3 x i64]* @__llvm_gcov_ctr.19 to i8*), i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: noinline nounwind uwtable
define internal void @__llvm_gcov_init() unnamed_addr #8 {
entry:
  tail call void @llvm_gcov_init(void ()* nonnull @__llvm_gcov_writeout, void ()* nonnull @__llvm_gcov_reset) #16
  ret void
}

declare void @llvm_gcov_init(void ()*, void ()*) local_unnamed_addr

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #11

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind uwtable }
attributes #9 = { mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #11 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #14 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #15 = { nobuiltin "no-builtins" }
attributes #16 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!155, !156, !157, !158}
!llvm.gcov = !{!159}
!llvm.ident = !{!160}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "hashpower", scope: !2, file: !3, line: 32, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !63, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "assoc.c", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "d738ec506cadd7570480190bbdf647e7")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pause_thread_types", file: !6, line: 246, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./memcached.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "9260b30e1b6ff2e5471cc4f8f6971051")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "PAUSE_WORKER_THREADS", value: 0)
!10 = !DIEnumerator(name: "PAUSE_ALL_THREADS", value: 1)
!11 = !DIEnumerator(name: "RESUME_ALL_THREADS", value: 2)
!12 = !DIEnumerator(name: "RESUME_WORKER_THREADS", value: 3)
!13 = !{!14, !19, !21, !22, !40, !62}
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !15, line: 27, baseType: !16)
!15 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !17, line: 45, baseType: !18)
!17 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!18 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_iterator", file: !3, line: 292, size: 256, elements: !24)
!24 = !{!25, !26, !59, !60}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "bucket", scope: !23, file: !3, line: 293, baseType: !14, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !23, file: !3, line: 294, baseType: !27, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "item", file: !6, line: 598, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_stritem", file: !6, line: 575, size: 384, elements: !30)
!30 = !{!31, !33, !34, !35, !38, !39, !41, !43, !46, !50, !51}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !29, file: !6, line: 577, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !29, file: !6, line: 578, baseType: !32, size: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "h_next", scope: !29, file: !6, line: 580, baseType: !32, size: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !29, file: !6, line: 581, baseType: !36, size: 32, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "rel_time_t", file: !37, line: 14, baseType: !7)
!37 = !DIFile(filename: "./logger.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "920aeded0afd45e7ff5c610f1349e8a7")
!38 = !DIDerivedType(tag: DW_TAG_member, name: "exptime", scope: !29, file: !6, line: 582, baseType: !36, size: 32, offset: 224)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !29, file: !6, line: 583, baseType: !40, size: 32, offset: 256)
!40 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !29, file: !6, line: 584, baseType: !42, size: 16, offset: 288)
!42 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "it_flags", scope: !29, file: !6, line: 585, baseType: !44, size: 16, offset: 304)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !15, line: 25, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !17, line: 40, baseType: !42)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "slabs_clsid", scope: !29, file: !6, line: 586, baseType: !47, size: 8, offset: 320)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !15, line: 24, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !17, line: 38, baseType: !49)
!49 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "nkey", scope: !29, file: !6, line: 587, baseType: !47, size: 8, offset: 328)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !29, file: !6, line: 593, baseType: !52, offset: 384)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, elements: !57)
!53 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !29, file: !6, line: 590, size: 64, elements: !54)
!54 = !{!55, !56}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "cas", scope: !53, file: !6, line: 591, baseType: !14, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !53, file: !6, line: 592, baseType: !20, size: 8)
!57 = !{!58}
!58 = !DISubrange(count: -1)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !23, file: !3, line: 295, baseType: !27, size: 64, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "bucket_locked", scope: !23, file: !3, line: 296, baseType: !61, size: 8, offset: 192)
!61 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!63 = !{!0, !64, !66, !70, !73, !75, !77, !79, !110, !151}
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "hash_bulk_move", scope: !2, file: !3, line: 191, type: !40, isLocal: false, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "maintenance_tid", scope: !2, file: !3, line: 262, type: !68, isLocal: true, isDefinition: true)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !69, line: 27, baseType: !18)
!69 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "primary_hashtable", scope: !2, file: !3, line: 38, type: !72, isLocal: true, isDefinition: true)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "expanding", scope: !2, file: !3, line: 47, type: !61, isLocal: true, isDefinition: true)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "expand_bucket", scope: !2, file: !3, line: 53, type: !14, isLocal: true, isDefinition: true)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "old_hashtable", scope: !2, file: !3, line: 44, type: !72, isLocal: true, isDefinition: true)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "maintenance_lock", scope: !2, file: !3, line: 29, type: !81, isLocal: true, isDefinition: true)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !69, line: 72, baseType: !82)
!82 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !69, line: 67, size: 320, elements: !83)
!83 = !{!84, !104, !108}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !82, file: !69, line: 69, baseType: !85, size: 320)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !86, line: 22, size: 320, elements: !87)
!86 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!87 = !{!88, !89, !90, !91, !92, !93, !95, !96}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !85, file: !86, line: 24, baseType: !40, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !85, file: !86, line: 25, baseType: !7, size: 32, offset: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !85, file: !86, line: 26, baseType: !40, size: 32, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !85, file: !86, line: 28, baseType: !7, size: 32, offset: 96)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !85, file: !86, line: 32, baseType: !40, size: 32, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !85, file: !86, line: 34, baseType: !94, size: 16, offset: 160)
!94 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !85, file: !86, line: 35, baseType: !94, size: 16, offset: 176)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !85, file: !86, line: 36, baseType: !97, size: 128, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !98, line: 53, baseType: !99)
!98 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !98, line: 49, size: 128, elements: !100)
!100 = !{!101, !103}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !99, file: !98, line: 51, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !99, file: !98, line: 52, baseType: !102, size: 64, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !82, file: !69, line: 70, baseType: !105, size: 320)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 320, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 40)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !82, file: !69, line: 71, baseType: !109, size: 64)
!109 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "maintenance_cond", scope: !2, file: !3, line: 28, type: !112, isLocal: true, isDefinition: true)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !69, line: 80, baseType: !113)
!113 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !69, line: 75, size: 384, elements: !114)
!114 = !{!115, !145, !149}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !113, file: !69, line: 77, baseType: !116, size: 384)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_cond_s", file: !98, line: 92, size: 384, elements: !117)
!117 = !{!118, !128, !137, !141, !142, !143, !144}
!118 = !DIDerivedType(tag: DW_TAG_member, scope: !116, file: !98, line: 94, baseType: !119, size: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !116, file: !98, line: 94, size: 64, elements: !120)
!120 = !{!121, !123}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq", scope: !119, file: !98, line: 96, baseType: !122, size: 64)
!122 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq32", scope: !119, file: !98, line: 101, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !119, file: !98, line: 97, size: 64, elements: !125)
!125 = !{!126, !127}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !124, file: !98, line: 99, baseType: !7, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !124, file: !98, line: 100, baseType: !7, size: 32, offset: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, scope: !116, file: !98, line: 103, baseType: !129, size: 64, offset: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !116, file: !98, line: 103, size: 64, elements: !130)
!130 = !{!131, !132}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start", scope: !129, file: !98, line: 105, baseType: !122, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start32", scope: !129, file: !98, line: 110, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !129, file: !98, line: 106, size: 64, elements: !134)
!134 = !{!135, !136}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !133, file: !98, line: 108, baseType: !7, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !133, file: !98, line: 109, baseType: !7, size: 32, offset: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "__g_refs", scope: !116, file: !98, line: 112, baseType: !138, size: 64, offset: 128)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 2)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "__g_size", scope: !116, file: !98, line: 113, baseType: !138, size: 64, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_orig_size", scope: !116, file: !98, line: 114, baseType: !7, size: 32, offset: 256)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "__wrefs", scope: !116, file: !98, line: 115, baseType: !7, size: 32, offset: 288)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "__g_signals", scope: !116, file: !98, line: 116, baseType: !138, size: 64, offset: 320)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !113, file: !69, line: 78, baseType: !146, size: 384)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 384, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 48)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !113, file: !69, line: 79, baseType: !150, size: 64)
!150 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "do_run_maintenance_thread", scope: !2, file: !3, line: 188, type: !153, isLocal: true, isDefinition: true)
!153 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !40)
!154 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!155 = !{i32 7, !"Dwarf Version", i32 5}
!156 = !{i32 2, !"Debug Info Version", i32 3}
!157 = !{i32 1, !"wchar_size", i32 4}
!158 = !{i32 7, !"uwtable", i32 1}
!159 = !{!"/home/xuheng/blackbox/llvm-test/memcached/assoc.gcno", !"/home/xuheng/blackbox/llvm-test/memcached/assoc.gcda", !2}
!160 = !{!"clang version 14.0.0"}
!161 = distinct !DISubprogram(name: "assoc_init", scope: !3, file: !3, line: 55, type: !162, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !165)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !164}
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!165 = !{!166}
!166 = !DILocalVariable(name: "hashtable_init", arg: 1, scope: !161, file: !3, line: 55, type: !164)
!167 = !DILocation(line: 0, scope: !161)
!168 = !DILocation(line: 56, column: 9, scope: !169)
!169 = distinct !DILexicalBlock(scope: !161, file: !3, line: 56, column: 9)
!170 = !DILocation(line: 56, column: 9, scope: !161)
!171 = !DILocation(line: 59, column: 32, scope: !161)
!172 = !{!173, !173, i64 0}
!173 = !{!"int", !174, i64 0}
!174 = !{!"omnipotent char", !175, i64 0}
!175 = !{!"Simple C/C++ TBAA"}
!176 = !DILocation(line: 57, column: 21, scope: !177)
!177 = distinct !DILexicalBlock(scope: !169, file: !3, line: 56, column: 25)
!178 = !DILocation(line: 57, column: 19, scope: !177)
!179 = !DILocation(line: 58, column: 5, scope: !177)
!180 = !DILocation(line: 59, column: 25, scope: !161)
!181 = !DILocation(line: 59, column: 23, scope: !161)
!182 = !{!183, !183, i64 0}
!183 = !{!"any pointer", !174, i64 0}
!184 = !DILocation(line: 60, column: 11, scope: !185)
!185 = distinct !DILexicalBlock(scope: !161, file: !3, line: 60, column: 9)
!186 = !DILocation(line: 60, column: 9, scope: !161)
!187 = !DILocation(line: 61, column: 17, scope: !188)
!188 = distinct !DILexicalBlock(scope: !185, file: !3, line: 60, column: 30)
!189 = !DILocation(line: 61, column: 9, scope: !188)
!190 = !DILocation(line: 62, column: 9, scope: !188)
!191 = !DILocation(line: 64, column: 5, scope: !161)
!192 = !DILocation(line: 65, column: 36, scope: !161)
!193 = !DILocation(line: 65, column: 34, scope: !161)
!194 = !{!195, !173, i64 40}
!195 = !{!"stats_state", !196, i64 0, !196, i64 8, !196, i64 16, !196, i64 24, !173, i64 32, !173, i64 36, !173, i64 40, !173, i64 44, !197, i64 48, !197, i64 49, !197, i64 50, !197, i64 51}
!196 = !{!"long", !174, i64 0}
!197 = !{!"_Bool", !174, i64 0}
!198 = !DILocation(line: 66, column: 30, scope: !161)
!199 = !DILocation(line: 66, column: 50, scope: !161)
!200 = !DILocation(line: 66, column: 28, scope: !161)
!201 = !{!195, !196, i64 24}
!202 = !DILocation(line: 67, column: 5, scope: !161)
!203 = !DILocation(line: 68, column: 1, scope: !161)
!204 = !DISubprogram(name: "calloc", scope: !205, file: !205, line: 542, type: !206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !210)
!205 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!206 = !DISubroutineType(types: !207)
!207 = !{!21, !208, !208}
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !209, line: 46, baseType: !18)
!209 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!210 = !{}
!211 = !DISubprogram(name: "fprintf", scope: !212, file: !212, line: 326, type: !213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !210)
!212 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!213 = !DISubroutineType(types: !214)
!214 = !{!40, !215, !269, null}
!215 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !218, line: 7, baseType: !219)
!218 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !220, line: 49, size: 1728, elements: !221)
!220 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!221 = !{!222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !237, !239, !240, !241, !243, !244, !246, !250, !253, !255, !258, !261, !262, !263, !264, !265}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !219, file: !220, line: 51, baseType: !40, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !219, file: !220, line: 54, baseType: !19, size: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !219, file: !220, line: 55, baseType: !19, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !219, file: !220, line: 56, baseType: !19, size: 64, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !219, file: !220, line: 57, baseType: !19, size: 64, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !219, file: !220, line: 58, baseType: !19, size: 64, offset: 320)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !219, file: !220, line: 59, baseType: !19, size: 64, offset: 384)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !219, file: !220, line: 60, baseType: !19, size: 64, offset: 448)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !219, file: !220, line: 61, baseType: !19, size: 64, offset: 512)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !219, file: !220, line: 64, baseType: !19, size: 64, offset: 576)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !219, file: !220, line: 65, baseType: !19, size: 64, offset: 640)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !219, file: !220, line: 66, baseType: !19, size: 64, offset: 704)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !219, file: !220, line: 68, baseType: !235, size: 64, offset: 768)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !220, line: 36, flags: DIFlagFwdDecl)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !219, file: !220, line: 70, baseType: !238, size: 64, offset: 832)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !219, file: !220, line: 72, baseType: !40, size: 32, offset: 896)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !219, file: !220, line: 73, baseType: !40, size: 32, offset: 928)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !219, file: !220, line: 74, baseType: !242, size: 64, offset: 960)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !17, line: 152, baseType: !109)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !219, file: !220, line: 77, baseType: !42, size: 16, offset: 1024)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !219, file: !220, line: 78, baseType: !245, size: 8, offset: 1040)
!245 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !219, file: !220, line: 79, baseType: !247, size: 8, offset: 1048)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 8, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 1)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !219, file: !220, line: 81, baseType: !251, size: 64, offset: 1088)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !220, line: 43, baseType: null)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !219, file: !220, line: 89, baseType: !254, size: 64, offset: 1152)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !17, line: 153, baseType: !109)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !219, file: !220, line: 91, baseType: !256, size: 64, offset: 1216)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !220, line: 37, flags: DIFlagFwdDecl)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !219, file: !220, line: 92, baseType: !259, size: 64, offset: 1280)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !220, line: 38, flags: DIFlagFwdDecl)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !219, file: !220, line: 93, baseType: !238, size: 64, offset: 1344)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !219, file: !220, line: 94, baseType: !21, size: 64, offset: 1408)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !219, file: !220, line: 95, baseType: !208, size: 64, offset: 1472)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !219, file: !220, line: 96, baseType: !40, size: 32, offset: 1536)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !219, file: !220, line: 98, baseType: !266, size: 160, offset: 1568)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 160, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 20)
!269 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!272 = !DISubprogram(name: "exit", scope: !205, file: !205, line: 617, type: !273, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !210)
!273 = !DISubroutineType(types: !274)
!274 = !{null, !40}
!275 = !DISubprogram(name: "STATS_LOCK", scope: !6, file: !6, line: 991, type: !276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !210)
!276 = !DISubroutineType(types: !277)
!277 = !{null}
!278 = !DISubprogram(name: "STATS_UNLOCK", scope: !6, file: !6, line: 992, type: !276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !210)
!279 = distinct !DISubprogram(name: "assoc_find", scope: !3, file: !3, line: 70, type: !280, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !286)
!280 = !DISubroutineType(types: !281)
!281 = !{!27, !270, !282, !283}
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !15, line: 26, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !17, line: 42, baseType: !7)
!286 = !{!287, !288, !289, !290, !291, !292, !293}
!287 = !DILocalVariable(name: "key", arg: 1, scope: !279, file: !3, line: 70, type: !270)
!288 = !DILocalVariable(name: "nkey", arg: 2, scope: !279, file: !3, line: 70, type: !282)
!289 = !DILocalVariable(name: "hv", arg: 3, scope: !279, file: !3, line: 70, type: !283)
!290 = !DILocalVariable(name: "it", scope: !279, file: !3, line: 71, type: !27)
!291 = !DILocalVariable(name: "oldbucket", scope: !279, file: !3, line: 72, type: !14)
!292 = !DILocalVariable(name: "ret", scope: !279, file: !3, line: 82, type: !27)
!293 = !DILocalVariable(name: "depth", scope: !279, file: !3, line: 83, type: !40)
!294 = !DILocation(line: 0, scope: !279)
!295 = !DILocation(line: 74, column: 9, scope: !296)
!296 = distinct !DILexicalBlock(scope: !279, file: !3, line: 74, column: 9)
!297 = !DILocation(line: 74, column: 19, scope: !296)
!298 = !DILocation(line: 79, column: 37, scope: !299)
!299 = distinct !DILexicalBlock(scope: !296, file: !3, line: 78, column: 12)
!300 = !DILocation(line: 79, column: 32, scope: !299)
!301 = !DILocation(line: 75, column: 23, scope: !296)
!302 = !DILocation(line: 75, column: 28, scope: !296)
!303 = !DILocation(line: 75, column: 26, scope: !296)
!304 = !DILocation(line: 75, column: 57, scope: !296)
!305 = !{!196, !196, i64 0}
!306 = !DILocation(line: 75, column: 54, scope: !296)
!307 = !DILocation(line: 74, column: 9, scope: !279)
!308 = !DILocation(line: 77, column: 14, scope: !309)
!309 = distinct !DILexicalBlock(scope: !296, file: !3, line: 76, column: 5)
!310 = !DILocation(line: 78, column: 5, scope: !309)
!311 = !DILocation(line: 79, column: 14, scope: !299)
!312 = !DILocation(line: 79, column: 35, scope: !299)
!313 = !DILocation(line: 84, column: 5, scope: !279)
!314 = !DILocation(line: 85, column: 26, scope: !315)
!315 = distinct !DILexicalBlock(scope: !316, file: !3, line: 85, column: 13)
!316 = distinct !DILexicalBlock(scope: !279, file: !3, line: 84, column: 16)
!317 = !{!174, !174, i64 0}
!318 = !DILocation(line: 85, column: 22, scope: !315)
!319 = !DILocation(line: 85, column: 19, scope: !315)
!320 = !DILocation(line: 85, column: 32, scope: !315)
!321 = !DILocation(line: 85, column: 43, scope: !315)
!322 = !DILocation(line: 85, column: 48, scope: !315)
!323 = !{!324, !324, i64 0}
!324 = !{!"short", !174, i64 0}
!325 = !DILocation(line: 85, column: 36, scope: !315)
!326 = !DILocation(line: 85, column: 68, scope: !315)
!327 = !DILocation(line: 85, column: 13, scope: !316)
!328 = !DILocation(line: 86, column: 19, scope: !329)
!329 = distinct !DILexicalBlock(scope: !315, file: !3, line: 85, column: 75)
!330 = !DILocation(line: 87, column: 13, scope: !329)
!331 = !DILocation(line: 89, column: 14, scope: !316)
!332 = !DILocation(line: 89, column: 18, scope: !316)
!333 = distinct !{!333, !313, !334, !335}
!334 = !DILocation(line: 91, column: 5, scope: !279)
!335 = !{!"llvm.loop.mustprogress"}
!336 = !DILocation(line: 93, column: 5, scope: !279)
!337 = !DISubprogram(name: "memcmp", scope: !338, file: !338, line: 64, type: !339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !210)
!338 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "61f60112cf5c0a45c54ea1f595add24c")
!339 = !DISubroutineType(types: !340)
!340 = !{!40, !341, !341, !208}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!343 = distinct !DISubprogram(name: "assoc_start_expand", scope: !3, file: !3, line: 139, type: !344, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !346)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !14}
!346 = !{!347}
!347 = !DILocalVariable(name: "curr_items", arg: 1, scope: !343, file: !3, line: 139, type: !14)
!348 = !DILocation(line: 0, scope: !343)
!349 = !DILocation(line: 140, column: 9, scope: !350)
!350 = distinct !DILexicalBlock(scope: !343, file: !3, line: 140, column: 9)
!351 = !DILocation(line: 140, column: 50, scope: !350)
!352 = !DILocation(line: 140, column: 9, scope: !343)
!353 = !DILocation(line: 141, column: 13, scope: !354)
!354 = distinct !DILexicalBlock(scope: !355, file: !3, line: 141, column: 13)
!355 = distinct !DILexicalBlock(scope: !350, file: !3, line: 140, column: 56)
!356 = !DILocation(line: 141, column: 27, scope: !354)
!357 = !DILocation(line: 141, column: 47, scope: !354)
!358 = !DILocation(line: 141, column: 52, scope: !354)
!359 = !DILocation(line: 141, column: 24, scope: !354)
!360 = !DILocation(line: 141, column: 56, scope: !354)
!361 = !DILocation(line: 141, column: 59, scope: !354)
!362 = !DILocation(line: 141, column: 69, scope: !354)
!363 = !DILocation(line: 141, column: 13, scope: !355)
!364 = !DILocation(line: 142, column: 13, scope: !365)
!365 = distinct !DILexicalBlock(scope: !354, file: !3, line: 141, column: 86)
!366 = !DILocation(line: 143, column: 9, scope: !365)
!367 = !DILocation(line: 144, column: 9, scope: !355)
!368 = !DILocation(line: 145, column: 5, scope: !355)
!369 = !DILocation(line: 146, column: 1, scope: !343)
!370 = !DISubprogram(name: "pthread_mutex_trylock", scope: !371, file: !371, line: 734, type: !372, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !210)
!371 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!372 = !DISubroutineType(types: !373)
!373 = !{!40, !374}
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!375 = !DISubprogram(name: "pthread_cond_signal", scope: !371, file: !371, line: 974, type: !376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !210)
!376 = !DISubroutineType(types: !377)
!377 = !{!40, !378}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!379 = !DISubprogram(name: "pthread_mutex_unlock", scope: !371, file: !371, line: 756, type: !372, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !210)
!380 = distinct !DISubprogram(name: "assoc_insert", scope: !3, file: !3, line: 149, type: !381, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !383)
!381 = !DISubroutineType(types: !382)
!382 = !{!40, !27, !283}
!383 = !{!384, !385, !386}
!384 = !DILocalVariable(name: "it", arg: 1, scope: !380, file: !3, line: 149, type: !27)
!385 = !DILocalVariable(name: "hv", arg: 2, scope: !380, file: !3, line: 149, type: !283)
!386 = !DILocalVariable(name: "oldbucket", scope: !380, file: !3, line: 150, type: !14)
!387 = !DILocation(line: 0, scope: !380)
!388 = !DILocation(line: 154, column: 9, scope: !389)
!389 = distinct !DILexicalBlock(scope: !380, file: !3, line: 154, column: 9)
!390 = !DILocation(line: 154, column: 19, scope: !389)
!391 = !DILocation(line: 160, column: 45, scope: !392)
!392 = distinct !DILexicalBlock(scope: !389, file: !3, line: 159, column: 12)
!393 = !DILocation(line: 160, column: 40, scope: !392)
!394 = !DILocation(line: 155, column: 23, scope: !389)
!395 = !DILocation(line: 155, column: 28, scope: !389)
!396 = !DILocation(line: 155, column: 26, scope: !389)
!397 = !DILocation(line: 155, column: 57, scope: !389)
!398 = !DILocation(line: 155, column: 54, scope: !389)
!399 = !DILocation(line: 154, column: 9, scope: !380)
!400 = !DILocation(line: 157, column: 22, scope: !401)
!401 = distinct !DILexicalBlock(scope: !389, file: !3, line: 156, column: 5)
!402 = !DILocation(line: 159, column: 5, scope: !401)
!403 = !DILocation(line: 160, column: 22, scope: !392)
!404 = !DILocation(line: 160, column: 43, scope: !392)
!405 = !DILocation(line: 0, scope: !389)
!406 = !DILocation(line: 165, column: 5, scope: !380)
!407 = distinct !DISubprogram(name: "assoc_delete", scope: !3, file: !3, line: 168, type: !408, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !410)
!408 = !DISubroutineType(types: !409)
!409 = !{null, !270, !282, !283}
!410 = !{!411, !412, !413, !414, !415}
!411 = !DILocalVariable(name: "key", arg: 1, scope: !407, file: !3, line: 168, type: !270)
!412 = !DILocalVariable(name: "nkey", arg: 2, scope: !407, file: !3, line: 168, type: !282)
!413 = !DILocalVariable(name: "hv", arg: 3, scope: !407, file: !3, line: 168, type: !283)
!414 = !DILocalVariable(name: "before", scope: !407, file: !3, line: 169, type: !72)
!415 = !DILocalVariable(name: "nxt", scope: !416, file: !3, line: 172, type: !27)
!416 = distinct !DILexicalBlock(scope: !417, file: !3, line: 171, column: 18)
!417 = distinct !DILexicalBlock(scope: !407, file: !3, line: 171, column: 9)
!418 = !DILocation(line: 0, scope: !407)
!419 = !DILocation(line: 169, column: 21, scope: !407)
!420 = !DILocation(line: 171, column: 9, scope: !417)
!421 = !DILocation(line: 171, column: 9, scope: !407)
!422 = !DILocation(line: 172, column: 9, scope: !416)
!423 = !DILocation(line: 177, column: 16, scope: !416)
!424 = !DILocation(line: 177, column: 26, scope: !416)
!425 = !DILocation(line: 0, scope: !416)
!426 = !DILocation(line: 178, column: 27, scope: !416)
!427 = !DILocation(line: 179, column: 17, scope: !416)
!428 = !DILocation(line: 185, column: 1, scope: !407)
!429 = !DILocation(line: 184, column: 5, scope: !430)
!430 = distinct !DILexicalBlock(scope: !431, file: !3, line: 184, column: 5)
!431 = distinct !DILexicalBlock(scope: !407, file: !3, line: 184, column: 5)
!432 = distinct !DISubprogram(name: "_hashitem_before", scope: !3, file: !3, line: 99, type: !433, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !435)
!433 = !DISubroutineType(types: !434)
!434 = !{!72, !270, !282, !283}
!435 = !{!436, !437, !438, !439, !440}
!436 = !DILocalVariable(name: "key", arg: 1, scope: !432, file: !3, line: 99, type: !270)
!437 = !DILocalVariable(name: "nkey", arg: 2, scope: !432, file: !3, line: 99, type: !282)
!438 = !DILocalVariable(name: "hv", arg: 3, scope: !432, file: !3, line: 99, type: !283)
!439 = !DILocalVariable(name: "pos", scope: !432, file: !3, line: 100, type: !72)
!440 = !DILocalVariable(name: "oldbucket", scope: !432, file: !3, line: 101, type: !14)
!441 = !DILocation(line: 0, scope: !432)
!442 = !DILocation(line: 103, column: 9, scope: !443)
!443 = distinct !DILexicalBlock(scope: !432, file: !3, line: 103, column: 9)
!444 = !DILocation(line: 103, column: 19, scope: !443)
!445 = !DILocation(line: 108, column: 39, scope: !446)
!446 = distinct !DILexicalBlock(scope: !443, file: !3, line: 107, column: 12)
!447 = !DILocation(line: 108, column: 34, scope: !446)
!448 = !DILocation(line: 104, column: 23, scope: !443)
!449 = !DILocation(line: 104, column: 28, scope: !443)
!450 = !DILocation(line: 104, column: 26, scope: !443)
!451 = !DILocation(line: 104, column: 57, scope: !443)
!452 = !DILocation(line: 104, column: 54, scope: !443)
!453 = !DILocation(line: 103, column: 9, scope: !432)
!454 = !DILocation(line: 106, column: 16, scope: !455)
!455 = distinct !DILexicalBlock(scope: !443, file: !3, line: 105, column: 5)
!456 = !DILocation(line: 107, column: 5, scope: !455)
!457 = !DILocation(line: 108, column: 16, scope: !446)
!458 = !DILocation(line: 108, column: 37, scope: !446)
!459 = !DILocation(line: 0, scope: !443)
!460 = !DILocation(line: 111, column: 12, scope: !432)
!461 = !DILocation(line: 111, column: 17, scope: !432)
!462 = !DILocation(line: 111, column: 38, scope: !432)
!463 = !DILocation(line: 111, column: 30, scope: !432)
!464 = !DILocation(line: 111, column: 27, scope: !432)
!465 = !DILocation(line: 111, column: 44, scope: !432)
!466 = !DILocation(line: 111, column: 54, scope: !432)
!467 = !DILocation(line: 111, column: 59, scope: !432)
!468 = !DILocation(line: 111, column: 47, scope: !432)
!469 = !DILocation(line: 111, column: 5, scope: !432)
!470 = !DILocation(line: 112, column: 18, scope: !471)
!471 = distinct !DILexicalBlock(scope: !432, file: !3, line: 111, column: 83)
!472 = !DILocation(line: 112, column: 17, scope: !471)
!473 = !DILocation(line: 112, column: 24, scope: !471)
!474 = distinct !{!474, !469, !475, !335}
!475 = !DILocation(line: 113, column: 5, scope: !432)
!476 = !DILocation(line: 114, column: 5, scope: !432)
!477 = distinct !DISubprogram(name: "start_assoc_maintenance_thread", scope: !3, file: !3, line: 264, type: !478, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !480)
!478 = !DISubroutineType(types: !479)
!479 = !{!40}
!480 = !{!481, !482}
!481 = !DILocalVariable(name: "ret", scope: !477, file: !3, line: 265, type: !40)
!482 = !DILocalVariable(name: "env", scope: !477, file: !3, line: 266, type: !19)
!483 = !DILocation(line: 266, column: 17, scope: !477)
!484 = !DILocation(line: 0, scope: !477)
!485 = !DILocation(line: 267, column: 13, scope: !486)
!486 = distinct !DILexicalBlock(scope: !477, file: !3, line: 267, column: 9)
!487 = !DILocation(line: 267, column: 9, scope: !477)
!488 = !DILocation(line: 268, column: 26, scope: !489)
!489 = distinct !DILexicalBlock(scope: !486, file: !3, line: 267, column: 22)
!490 = !DILocation(line: 268, column: 24, scope: !489)
!491 = !DILocation(line: 269, column: 28, scope: !492)
!492 = distinct !DILexicalBlock(scope: !489, file: !3, line: 269, column: 13)
!493 = !DILocation(line: 269, column: 13, scope: !489)
!494 = !DILocation(line: 270, column: 28, scope: !495)
!495 = distinct !DILexicalBlock(scope: !492, file: !3, line: 269, column: 34)
!496 = !DILocation(line: 271, column: 9, scope: !495)
!497 = !DILocation(line: 272, column: 5, scope: !489)
!498 = !DILocation(line: 274, column: 16, scope: !499)
!499 = distinct !DILexicalBlock(scope: !477, file: !3, line: 274, column: 9)
!500 = !DILocation(line: 275, column: 64, scope: !499)
!501 = !DILocation(line: 274, column: 9, scope: !477)
!502 = !DILocation(line: 276, column: 17, scope: !503)
!503 = distinct !DILexicalBlock(scope: !499, file: !3, line: 275, column: 70)
!504 = !DILocation(line: 276, column: 54, scope: !503)
!505 = !DILocation(line: 276, column: 9, scope: !503)
!506 = !DILocation(line: 277, column: 9, scope: !503)
!507 = !DILocation(line: 279, column: 5, scope: !477)
!508 = !DILocation(line: 280, column: 1, scope: !477)
!509 = !DISubprogram(name: "getenv", scope: !205, file: !205, line: 634, type: !510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !210)
!510 = !DISubroutineType(types: !511)
!511 = !{!19, !270}
!512 = !DISubprogram(name: "pthread_create", scope: !371, file: !371, line: 198, type: !513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !210)
!513 = !DISubroutineType(types: !514)
!514 = !{!40, !515, !517, !528, !531}
!515 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !516)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !518)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !520)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !69, line: 62, baseType: !521)
!521 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "pthread_attr_t", file: !69, line: 56, size: 448, elements: !522)
!522 = !{!523, !527}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !521, file: !69, line: 58, baseType: !524, size: 448)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 448, elements: !525)
!525 = !{!526}
!526 = !DISubrange(count: 56)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !521, file: !69, line: 59, baseType: !109, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!21, !21}
!531 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !21)
!532 = distinct !DISubprogram(name: "assoc_maintenance_thread", scope: !3, file: !3, line: 193, type: !529, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !533)
!533 = !{!534, !535, !537, !541, !542, !543}
!534 = !DILocalVariable(name: "arg", arg: 1, scope: !532, file: !3, line: 193, type: !21)
!535 = !DILocalVariable(name: "ii", scope: !536, file: !3, line: 197, type: !40)
!536 = distinct !DILexicalBlock(scope: !532, file: !3, line: 196, column: 39)
!537 = !DILocalVariable(name: "it", scope: !538, file: !3, line: 201, type: !27)
!538 = distinct !DILexicalBlock(scope: !539, file: !3, line: 200, column: 62)
!539 = distinct !DILexicalBlock(scope: !540, file: !3, line: 200, column: 9)
!540 = distinct !DILexicalBlock(scope: !536, file: !3, line: 200, column: 9)
!541 = !DILocalVariable(name: "next", scope: !538, file: !3, line: 201, type: !27)
!542 = !DILocalVariable(name: "bucket", scope: !538, file: !3, line: 202, type: !14)
!543 = !DILocalVariable(name: "item_lock", scope: !538, file: !3, line: 203, type: !21)
!544 = !DILocation(line: 0, scope: !532)
!545 = !DILocation(line: 195, column: 5, scope: !532)
!546 = !DILocation(line: 196, column: 12, scope: !532)
!547 = !DILocation(line: 196, column: 5, scope: !532)
!548 = !DILocation(line: 0, scope: !536)
!549 = !DILocation(line: 200, column: 27, scope: !539)
!550 = !DILocation(line: 200, column: 25, scope: !539)
!551 = !DILocation(line: 200, column: 42, scope: !539)
!552 = !DILocation(line: 200, column: 45, scope: !539)
!553 = !DILocation(line: 200, column: 9, scope: !540)
!554 = !DILocation(line: 0, scope: !538)
!555 = !DILocation(line: 209, column: 43, scope: !556)
!556 = distinct !DILexicalBlock(scope: !538, file: !3, line: 209, column: 17)
!557 = !DILocation(line: 209, column: 30, scope: !556)
!558 = !DILocation(line: 209, column: 28, scope: !556)
!559 = !DILocation(line: 209, column: 17, scope: !538)
!560 = !DILocation(line: 210, column: 31, scope: !561)
!561 = distinct !DILexicalBlock(scope: !562, file: !3, line: 210, column: 21)
!562 = distinct !DILexicalBlock(scope: !556, file: !3, line: 209, column: 60)
!563 = !DILocation(line: 210, column: 45, scope: !561)
!564 = !DILocation(line: 210, column: 66, scope: !565)
!565 = distinct !DILexicalBlock(scope: !561, file: !3, line: 210, column: 21)
!566 = !DILocation(line: 210, column: 21, scope: !561)
!567 = !DILocation(line: 220, column: 42, scope: !568)
!568 = distinct !DILexicalBlock(scope: !562, file: !3, line: 220, column: 25)
!569 = !DILocation(line: 211, column: 36, scope: !570)
!570 = distinct !DILexicalBlock(scope: !565, file: !3, line: 210, column: 84)
!571 = !DILocation(line: 212, column: 34, scope: !570)
!572 = !DILocation(line: 212, column: 39, scope: !570)
!573 = !DILocation(line: 212, column: 57, scope: !570)
!574 = !DILocation(line: 212, column: 53, scope: !570)
!575 = !DILocation(line: 212, column: 65, scope: !570)
!576 = !DILocation(line: 212, column: 63, scope: !570)
!577 = !DILocation(line: 213, column: 38, scope: !570)
!578 = !DILocation(line: 213, column: 36, scope: !570)
!579 = !DILocation(line: 214, column: 51, scope: !570)
!580 = !DILocation(line: 210, column: 78, scope: !565)
!581 = distinct !{!581, !566, !582, !335}
!582 = !DILocation(line: 215, column: 21, scope: !561)
!583 = !DILocation(line: 217, column: 21, scope: !562)
!584 = !DILocation(line: 217, column: 35, scope: !562)
!585 = !DILocation(line: 217, column: 50, scope: !562)
!586 = !DILocation(line: 219, column: 34, scope: !562)
!587 = !DILocation(line: 220, column: 39, scope: !568)
!588 = !DILocation(line: 220, column: 25, scope: !562)
!589 = !DILocation(line: 0, scope: !562)
!590 = !DILocation(line: 221, column: 35, scope: !591)
!591 = distinct !DILexicalBlock(scope: !568, file: !3, line: 220, column: 67)
!592 = !DILocation(line: 222, column: 25, scope: !591)
!593 = !DILocation(line: 223, column: 25, scope: !591)
!594 = !DILocation(line: 224, column: 51, scope: !591)
!595 = !DILocation(line: 224, column: 75, scope: !591)
!596 = !DILocation(line: 224, column: 48, scope: !591)
!597 = !DILocation(line: 225, column: 55, scope: !591)
!598 = !{!195, !197, i64 48}
!599 = !DILocation(line: 226, column: 25, scope: !591)
!600 = !DILocation(line: 227, column: 38, scope: !601)
!601 = distinct !DILexicalBlock(scope: !591, file: !3, line: 227, column: 29)
!602 = !{!603, !173, i64 32}
!603 = !{!"settings", !196, i64 0, !173, i64 8, !173, i64 12, !173, i64 16, !183, i64 24, !173, i64 32, !173, i64 36, !196, i64 40, !173, i64 48, !183, i64 56, !183, i64 64, !173, i64 72, !604, i64 80, !173, i64 88, !173, i64 92, !173, i64 96, !174, i64 100, !173, i64 104, !173, i64 108, !197, i64 112, !174, i64 116, !173, i64 120, !173, i64 124, !173, i64 128, !173, i64 132, !173, i64 136, !197, i64 140, !197, i64 141, !197, i64 142, !197, i64 143, !197, i64 144, !197, i64 145, !173, i64 148, !604, i64 152, !173, i64 160, !173, i64 164, !197, i64 168, !173, i64 172, !197, i64 176, !197, i64 177, !183, i64 184, !173, i64 192, !173, i64 196, !173, i64 200, !173, i64 204, !604, i64 208, !604, i64 216, !173, i64 224, !197, i64 228, !173, i64 232, !173, i64 236, !173, i64 240, !173, i64 244, !173, i64 248, !197, i64 252, !197, i64 253, !197, i64 254, !197, i64 255, !173, i64 256, !173, i64 260, !173, i64 264, !173, i64 268, !173, i64 272, !173, i64 276, !173, i64 280, !173, i64 284, !173, i64 288, !173, i64 292, !604, i64 296, !604, i64 304, !197, i64 312, !173, i64 316, !173, i64 320, !183, i64 328, !173, i64 336}
!604 = !{!"double", !174, i64 0}
!605 = !DILocation(line: 227, column: 46, scope: !601)
!606 = !DILocation(line: 227, column: 29, scope: !591)
!607 = !DILocation(line: 228, column: 37, scope: !601)
!608 = !DILocation(line: 228, column: 29, scope: !601)
!609 = !DILocation(line: 229, column: 21, scope: !591)
!610 = !DILocation(line: 232, column: 17, scope: !611)
!611 = distinct !DILexicalBlock(scope: !556, file: !3, line: 231, column: 20)
!612 = !DILocation(line: 235, column: 17, scope: !538)
!613 = !DILocation(line: 231, column: 13, scope: !562)
!614 = !DILocation(line: 236, column: 37, scope: !615)
!615 = distinct !DILexicalBlock(scope: !616, file: !3, line: 235, column: 28)
!616 = distinct !DILexicalBlock(scope: !538, file: !3, line: 235, column: 17)
!617 = !DILocation(line: 236, column: 17, scope: !615)
!618 = !DILocation(line: 238, column: 13, scope: !615)
!619 = !DILocation(line: 200, column: 56, scope: !539)
!620 = distinct !{!620, !553, !621, !335}
!621 = !DILocation(line: 239, column: 9, scope: !540)
!622 = !DILocation(line: 241, column: 14, scope: !623)
!623 = distinct !DILexicalBlock(scope: !536, file: !3, line: 241, column: 13)
!624 = !DILocation(line: 241, column: 13, scope: !536)
!625 = !DILocation(line: 243, column: 13, scope: !626)
!626 = distinct !DILexicalBlock(scope: !623, file: !3, line: 241, column: 25)
!627 = !DILocation(line: 251, column: 17, scope: !628)
!628 = distinct !DILexicalBlock(scope: !626, file: !3, line: 251, column: 17)
!629 = !DILocation(line: 251, column: 17, scope: !626)
!630 = !DILocation(line: 252, column: 17, scope: !631)
!631 = distinct !DILexicalBlock(scope: !628, file: !3, line: 251, column: 44)
!632 = !DILocation(line: 253, column: 17, scope: !631)
!633 = !DILocation(line: 254, column: 17, scope: !631)
!634 = !DILocation(line: 255, column: 13, scope: !631)
!635 = !DILocation(line: 256, column: 9, scope: !626)
!636 = !DILocation(line: 257, column: 5, scope: !532)
!637 = distinct !{!637, !547, !636, !335}
!638 = !DILocation(line: 258, column: 5, scope: !532)
!639 = !DILocation(line: 259, column: 5, scope: !532)
!640 = !DISubprogram(name: "strerror", scope: !338, file: !338, line: 397, type: !641, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !210)
!641 = !DISubroutineType(types: !642)
!642 = !{!19, !40}
!643 = distinct !DISubprogram(name: "stop_assoc_maintenance_thread", scope: !3, file: !3, line: 282, type: !276, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !210)
!644 = !DILocation(line: 283, column: 5, scope: !643)
!645 = !DILocation(line: 284, column: 31, scope: !643)
!646 = !DILocation(line: 285, column: 5, scope: !643)
!647 = !DILocation(line: 286, column: 5, scope: !643)
!648 = !DILocation(line: 289, column: 18, scope: !643)
!649 = !DILocation(line: 289, column: 5, scope: !643)
!650 = !DILocation(line: 290, column: 1, scope: !643)
!651 = !DISubprogram(name: "pthread_mutex_lock", scope: !371, file: !371, line: 738, type: !372, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !210)
!652 = !DISubprogram(name: "pthread_join", scope: !371, file: !371, line: 215, type: !653, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !210)
!653 = !DISubroutineType(types: !654)
!654 = !{!40, !68, !655}
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!656 = distinct !DISubprogram(name: "assoc_get_iterator", scope: !3, file: !3, line: 299, type: !657, scopeLine: 299, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !659)
!657 = !DISubroutineType(types: !658)
!658 = !{!21}
!659 = !{!660}
!660 = !DILocalVariable(name: "iter", scope: !656, file: !3, line: 300, type: !22)
!661 = !DILocation(line: 300, column: 35, scope: !656)
!662 = !DILocation(line: 0, scope: !656)
!663 = !DILocation(line: 301, column: 14, scope: !664)
!664 = distinct !DILexicalBlock(scope: !656, file: !3, line: 301, column: 9)
!665 = !DILocation(line: 301, column: 9, scope: !656)
!666 = !DILocation(line: 302, column: 9, scope: !667)
!667 = distinct !DILexicalBlock(scope: !664, file: !3, line: 301, column: 23)
!668 = !DILocation(line: 305, column: 5, scope: !656)
!669 = !DILocation(line: 306, column: 5, scope: !656)
!670 = !DILocation(line: 307, column: 1, scope: !656)
!671 = distinct !DISubprogram(name: "assoc_iterate", scope: !3, file: !3, line: 309, type: !672, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !674)
!672 = !DISubroutineType(types: !673)
!673 = !{!61, !21, !72}
!674 = !{!675, !676, !677}
!675 = !DILocalVariable(name: "iterp", arg: 1, scope: !671, file: !3, line: 309, type: !21)
!676 = !DILocalVariable(name: "it", arg: 2, scope: !671, file: !3, line: 309, type: !72)
!677 = !DILocalVariable(name: "iter", scope: !671, file: !3, line: 310, type: !22)
!678 = !DILocation(line: 0, scope: !671)
!679 = !DILocation(line: 311, column: 9, scope: !671)
!680 = !DILocation(line: 313, column: 15, scope: !681)
!681 = distinct !DILexicalBlock(scope: !671, file: !3, line: 313, column: 9)
!682 = !{!683, !197, i64 24}
!683 = !{!"assoc_iterator", !196, i64 0, !183, i64 8, !183, i64 16, !197, i64 24}
!684 = !{i8 0, i8 2}
!685 = !DILocation(line: 313, column: 9, scope: !671)
!686 = !DILocation(line: 314, column: 19, scope: !687)
!687 = distinct !DILexicalBlock(scope: !688, file: !3, line: 314, column: 13)
!688 = distinct !DILexicalBlock(scope: !681, file: !3, line: 313, column: 30)
!689 = !{!683, !183, i64 16}
!690 = !DILocation(line: 314, column: 24, scope: !687)
!691 = !DILocation(line: 314, column: 13, scope: !688)
!692 = !DILocation(line: 315, column: 24, scope: !693)
!693 = distinct !DILexicalBlock(scope: !687, file: !3, line: 314, column: 33)
!694 = !DILocation(line: 315, column: 19, scope: !693)
!695 = !DILocation(line: 315, column: 22, scope: !693)
!696 = !{!683, !183, i64 8}
!697 = !DILocation(line: 316, column: 36, scope: !693)
!698 = !DILocation(line: 316, column: 24, scope: !693)
!699 = !DILocation(line: 318, column: 9, scope: !693)
!700 = !DILocation(line: 320, column: 25, scope: !701)
!701 = distinct !DILexicalBlock(scope: !687, file: !3, line: 318, column: 16)
!702 = !DILocation(line: 320, column: 31, scope: !701)
!703 = !{!683, !196, i64 0}
!704 = !DILocation(line: 320, column: 13, scope: !701)
!705 = !DILocation(line: 322, column: 25, scope: !701)
!706 = !DILocation(line: 323, column: 33, scope: !701)
!707 = !DILocation(line: 0, scope: !687)
!708 = !DILocation(line: 326, column: 9, scope: !688)
!709 = !DILocation(line: 330, column: 15, scope: !710)
!710 = distinct !DILexicalBlock(scope: !671, file: !3, line: 330, column: 9)
!711 = !DILocation(line: 330, column: 25, scope: !710)
!712 = !DILocation(line: 330, column: 22, scope: !710)
!713 = !DILocation(line: 330, column: 9, scope: !671)
!714 = !DILocation(line: 332, column: 19, scope: !715)
!715 = distinct !DILexicalBlock(scope: !710, file: !3, line: 330, column: 46)
!716 = !DILocation(line: 332, column: 9, scope: !715)
!717 = !DILocation(line: 333, column: 29, scope: !715)
!718 = !DILocation(line: 335, column: 20, scope: !715)
!719 = !DILocation(line: 335, column: 44, scope: !715)
!720 = !DILocation(line: 335, column: 15, scope: !715)
!721 = !DILocation(line: 335, column: 18, scope: !715)
!722 = !DILocation(line: 336, column: 22, scope: !723)
!723 = distinct !DILexicalBlock(scope: !715, file: !3, line: 336, column: 13)
!724 = !DILocation(line: 336, column: 13, scope: !715)
!725 = !DILocation(line: 338, column: 26, scope: !726)
!726 = distinct !DILexicalBlock(scope: !723, file: !3, line: 336, column: 31)
!727 = !DILocation(line: 338, column: 32, scope: !726)
!728 = !DILocation(line: 338, column: 36, scope: !726)
!729 = !DILocation(line: 338, column: 19, scope: !726)
!730 = !DILocation(line: 338, column: 24, scope: !726)
!731 = !DILocation(line: 339, column: 17, scope: !726)
!732 = !DILocation(line: 340, column: 9, scope: !726)
!733 = !DILocation(line: 342, column: 25, scope: !734)
!734 = distinct !DILexicalBlock(scope: !723, file: !3, line: 340, column: 16)
!735 = !DILocation(line: 342, column: 31, scope: !734)
!736 = !DILocation(line: 342, column: 13, scope: !734)
!737 = !DILocation(line: 343, column: 33, scope: !734)
!738 = !DILocation(line: 344, column: 25, scope: !734)
!739 = !DILocation(line: 347, column: 9, scope: !740)
!740 = distinct !DILexicalBlock(scope: !710, file: !3, line: 346, column: 12)
!741 = !DILocation(line: 351, column: 1, scope: !671)
!742 = !DISubprogram(name: "item_unlock", scope: !6, file: !6, line: 985, type: !743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !210)
!743 = !DISubroutineType(types: !744)
!744 = !{null, !284}
!745 = !DISubprogram(name: "item_lock", scope: !6, file: !6, line: 982, type: !743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !210)
!746 = distinct !DISubprogram(name: "assoc_iterate_final", scope: !3, file: !3, line: 353, type: !747, scopeLine: 353, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !749)
!747 = !DISubroutineType(types: !748)
!748 = !{null, !21}
!749 = !{!750, !751}
!750 = !DILocalVariable(name: "iterp", arg: 1, scope: !746, file: !3, line: 353, type: !21)
!751 = !DILocalVariable(name: "iter", scope: !746, file: !3, line: 354, type: !22)
!752 = !DILocation(line: 0, scope: !746)
!753 = !DILocation(line: 355, column: 15, scope: !754)
!754 = distinct !DILexicalBlock(scope: !746, file: !3, line: 355, column: 9)
!755 = !DILocation(line: 355, column: 9, scope: !746)
!756 = !DILocation(line: 356, column: 21, scope: !757)
!757 = distinct !DILexicalBlock(scope: !754, file: !3, line: 355, column: 30)
!758 = !DILocation(line: 356, column: 27, scope: !757)
!759 = !DILocation(line: 356, column: 9, scope: !757)
!760 = !DILocation(line: 357, column: 5, scope: !757)
!761 = !DILocation(line: 358, column: 5, scope: !746)
!762 = !DILocation(line: 359, column: 5, scope: !746)
!763 = !DILocation(line: 360, column: 1, scope: !746)
!764 = !DISubprogram(name: "free", scope: !205, file: !205, line: 565, type: !747, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !210)
!765 = !DISubprogram(name: "item_trylock", scope: !6, file: !6, line: 983, type: !766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !210)
!766 = !DISubroutineType(types: !767)
!767 = !{!21, !284}
!768 = !DISubprogram(name: "usleep", scope: !769, file: !769, line: 460, type: !770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !210)
!769 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "29bea3f2d65ec3bb874f389bfdfa2266")
!770 = !DISubroutineType(types: !771)
!771 = !{!40, !772}
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "__useconds_t", file: !17, line: 161, baseType: !7)
!773 = !DISubprogram(name: "item_trylock_unlock", scope: !6, file: !6, line: 984, type: !747, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !210)
!774 = !DISubprogram(name: "pthread_cond_wait", scope: !371, file: !371, line: 986, type: !775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !210)
!775 = !DISubroutineType(types: !776)
!776 = !{!40, !777, !778}
!777 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !378)
!778 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !374)
!779 = !DISubprogram(name: "pause_threads", scope: !6, file: !6, line: 986, type: !780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !210)
!780 = !DISubroutineType(types: !781)
!781 = !{null, !5}
!782 = distinct !DISubprogram(name: "assoc_expand", scope: !3, file: !3, line: 118, type: !276, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !210)
!783 = !DILocation(line: 119, column: 21, scope: !782)
!784 = !DILocation(line: 119, column: 19, scope: !782)
!785 = !DILocation(line: 121, column: 32, scope: !782)
!786 = !DILocation(line: 121, column: 25, scope: !782)
!787 = !DILocation(line: 121, column: 23, scope: !782)
!788 = !DILocation(line: 122, column: 9, scope: !789)
!789 = distinct !DILexicalBlock(scope: !782, file: !3, line: 122, column: 9)
!790 = !DILocation(line: 122, column: 9, scope: !782)
!791 = !DILocation(line: 123, column: 22, scope: !792)
!792 = distinct !DILexicalBlock(scope: !793, file: !3, line: 123, column: 13)
!793 = distinct !DILexicalBlock(scope: !789, file: !3, line: 122, column: 28)
!794 = !DILocation(line: 123, column: 30, scope: !792)
!795 = !DILocation(line: 123, column: 13, scope: !793)
!796 = !DILocation(line: 124, column: 21, scope: !792)
!797 = !DILocation(line: 124, column: 13, scope: !792)
!798 = !DILocation(line: 125, column: 18, scope: !793)
!799 = !DILocation(line: 126, column: 19, scope: !793)
!800 = !DILocation(line: 127, column: 23, scope: !793)
!801 = !DILocation(line: 128, column: 9, scope: !793)
!802 = !DILocation(line: 129, column: 40, scope: !793)
!803 = !DILocation(line: 129, column: 38, scope: !793)
!804 = !DILocation(line: 130, column: 35, scope: !793)
!805 = !DILocation(line: 130, column: 55, scope: !793)
!806 = !DILocation(line: 130, column: 32, scope: !793)
!807 = !DILocation(line: 131, column: 39, scope: !793)
!808 = !DILocation(line: 132, column: 9, scope: !793)
!809 = !DILocation(line: 133, column: 5, scope: !793)
!810 = !DILocation(line: 134, column: 29, scope: !811)
!811 = distinct !DILexicalBlock(scope: !789, file: !3, line: 133, column: 12)
!812 = !DILocation(line: 134, column: 27, scope: !811)
!813 = !DILocation(line: 137, column: 1, scope: !782)
