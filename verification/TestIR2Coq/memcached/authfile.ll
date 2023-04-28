; ModuleID = 'authfile.c'
source_filename = "authfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_entry = type { i8*, i64, i8*, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@entry_cnt = dso_local local_unnamed_addr global i32 0, align 4, !dbg !0
@main_auth_data = dso_local local_unnamed_addr global i8* null, align 8, !dbg !17
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@main_auth_entries = dso_local global [8 x %struct.auth_entry] zeroinitializer, align 16, !dbg !21
@__llvm_gcov_ctr = internal global [18 x i64] zeroinitializer
@__llvm_gcov_ctr.1 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.2 = internal global [8 x i64] zeroinitializer
@0 = private unnamed_addr constant [56 x i8] c"/home/xuheng/blackbox/llvm-test/memcached/authfile.gcda\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @__llvm_gcov_init, i8* null }]

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @authfile_load(i8* noundef %file) local_unnamed_addr #0 !dbg !43 {
entry:
  %sb = alloca %struct.stat, align 8
  %auth_entries = alloca [8 x %struct.auth_entry], align 16
  call void @llvm.dbg.value(metadata i8* %file, metadata !49, metadata !DIExpression()), !dbg !154
  %0 = bitcast %struct.stat* %sb to i8*, !dbg !155
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %0) #10, !dbg !155
  call void @llvm.dbg.declare(metadata %struct.stat* %sb, metadata !50, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata i8* null, metadata !90, metadata !DIExpression()), !dbg !154
  %1 = bitcast [8 x %struct.auth_entry]* %auth_entries to i8*, !dbg !157
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %1) #10, !dbg !157
  call void @llvm.dbg.declare(metadata [8 x %struct.auth_entry]* %auth_entries, metadata !91, metadata !DIExpression()), !dbg !158
  %call = tail call %struct._IO_FILE* @fopen(i8* noundef %file, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #11, !dbg !159
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call, metadata !92, metadata !DIExpression()), !dbg !154
  %cmp = icmp eq %struct._IO_FILE* %call, null, !dbg !160
  br i1 %cmp, label %if.then, label %if.else, !dbg !162

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr, i64 0, i64 0), align 16, !dbg !163
  %2 = add i64 %gcov_ctr, 1, !dbg !163
  store i64 %2, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr, i64 0, i64 0), align 16, !dbg !163
  br label %cleanup88, !dbg !163

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %call) #11, !dbg !165
  %call2 = call i32 @fstat(i32 noundef %call1, %struct.stat* noundef %sb) #11, !dbg !167
  %tobool.not = icmp eq i32 %call2, 0, !dbg !167
  br i1 %tobool.not, label %if.end, label %if.then3, !dbg !168

if.then3:                                         ; preds = %if.else
  %gcov_ctr93 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr, i64 0, i64 2), align 16, !dbg !169
  %3 = add i64 %gcov_ctr93, 1, !dbg !169
  store i64 %3, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr, i64 0, i64 2), align 16, !dbg !169
  %call4 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %call) #11, !dbg !171
  br label %cleanup88, !dbg !172

if.end:                                           ; preds = %if.else
  %gcov_ctr92 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr, i64 0, i64 1), align 8
  %4 = add i64 %gcov_ctr92, 1
  store i64 %4, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr, i64 0, i64 1), align 8
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %sb, i64 0, i32 8, !dbg !173
  %5 = load i64, i64* %st_size, align 8, !dbg !173, !tbaa !174
  %add = add nsw i64 %5, 1, !dbg !181
  %call6 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %add) #11, !dbg !182
  call void @llvm.dbg.value(metadata i8* %call6, metadata !90, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.value(metadata i8* %call6, metadata !146, metadata !DIExpression()), !dbg !154
  %6 = load i64, i64* %st_size, align 8, !dbg !183, !tbaa !174
  %add.ptr = getelementptr inbounds i8, i8* %call6, i64 %6, !dbg !184
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !147, metadata !DIExpression()), !dbg !154
  %arraydecay = getelementptr inbounds [8 x %struct.auth_entry], [8 x %struct.auth_entry]* %auth_entries, i64 0, i64 0, !dbg !185
  call void @llvm.dbg.value(metadata %struct.auth_entry* %arraydecay, metadata !148, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.value(metadata i32 0, metadata !150, metadata !DIExpression()), !dbg !154
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr to i64
  br label %while.cond, !dbg !186

while.cond:                                       ; preds = %cleanup, %if.end
  %auth_cur.0 = phi i8* [ %call6, %if.end ], [ %arrayidx69, %cleanup ], !dbg !187
  %entry_cur.0 = phi %struct.auth_entry* [ %arraydecay, %if.end ], [ %incdec.ptr, %cleanup ], !dbg !188
  %used.0 = phi i32 [ 0, %if.end ], [ %inc63, %cleanup ], !dbg !154
  call void @llvm.dbg.value(metadata i32 %used.0, metadata !150, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.value(metadata %struct.auth_entry* %entry_cur.0, metadata !148, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.value(metadata i8* %auth_cur.0, metadata !146, metadata !DIExpression()), !dbg !154
  %sub.ptr.rhs.cast = ptrtoint i8* %auth_cur.0 to i64, !dbg !189
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !189
  %cmp8 = icmp slt i64 %sub.ptr.sub, 256, !dbg !190
  br i1 %cmp8, label %cond.true, label %cond.false, !dbg !191

cond.true:                                        ; preds = %while.cond
  %gcov_ctr94 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr, i64 0, i64 3), align 8, !dbg !192
  %7 = add i64 %gcov_ctr94, 1, !dbg !192
  store i64 %7, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr, i64 0, i64 3), align 8, !dbg !192
  br label %cond.end, !dbg !191

cond.false:                                       ; preds = %while.cond
  %gcov_ctr95 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr, i64 0, i64 4), align 16, !dbg !191
  %8 = add i64 %gcov_ctr95, 1, !dbg !191
  store i64 %8, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr, i64 0, i64 4), align 16, !dbg !191
  br label %cond.end, !dbg !191

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub.ptr.sub, %cond.true ], [ 256, %cond.false ], !dbg !191
  %conv = trunc i64 %cond to i32, !dbg !191
  %call12 = call i8* @fgets(i8* noundef %auth_cur.0, i32 noundef %conv, %struct._IO_FILE* noundef nonnull %call) #11, !dbg !193
  %cmp13.not = icmp eq i8* %call12, null, !dbg !194
  br i1 %cmp13.not, label %while.end, label %for.cond.preheader, !dbg !186

for.cond.preheader:                               ; preds = %cond.end
  %.promoted = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr, i64 0, i64 8), align 16
  %.promoted178 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr, i64 0, i64 9), align 8
  %.promoted179 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr, i64 0, i64 11), align 8
  %.promoted180 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr, i64 0, i64 6), align 16
  %.promoted181 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr, i64 0, i64 7), align 8
  call void @llvm.dbg.value(metadata i32 0, metadata !153, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata i32 0, metadata !151, metadata !DIExpression()), !dbg !195
  %user = getelementptr inbounds %struct.auth_entry, %struct.auth_entry* %entry_cur.0, i64 0, i32 0
  %ulen = getelementptr inbounds %struct.auth_entry, %struct.auth_entry* %entry_cur.0, i64 0, i32 1
  %pass = getelementptr inbounds %struct.auth_entry, %struct.auth_entry* %entry_cur.0, i64 0, i32 2
  br label %for.body.outer, !dbg !196

for.body.outer:                                   ; preds = %for.inc.thread, %for.cond.preheader
  %indvars.iv.ph = phi i64 [ %indvars.iv.next195, %for.inc.thread ], [ 0, %for.cond.preheader ]
  %found.0184.ph = phi i32 [ 1, %for.inc.thread ], [ 0, %for.cond.preheader ]
  %.ph = phi i64 [ %15, %for.inc.thread ], [ %.promoted, %for.cond.preheader ]
  %.ph201 = phi i64 [ %16, %for.inc.thread ], [ %.promoted178, %for.cond.preheader ]
  %.ph202 = phi i64 [ %21, %for.inc.thread ], [ %.promoted179, %for.cond.preheader ]
  %.ph203 = phi i64 [ %9, %for.inc.thread ], [ %.promoted180, %for.cond.preheader ]
  %.ph204 = phi i64 [ %10, %for.inc.thread ], [ %.promoted181, %for.cond.preheader ]
  br label %for.body, !dbg !196

for.body:                                         ; preds = %for.body.outer, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %indvars.iv.ph, %for.body.outer ]
  %found.0184 = phi i32 [ %found.1, %for.inc ], [ %found.0184.ph, %for.body.outer ]
  %9 = phi i64 [ %19, %for.inc ], [ %.ph203, %for.body.outer ]
  %10 = phi i64 [ %20, %for.inc ], [ %.ph204, %for.body.outer ]
  call void @llvm.dbg.value(metadata i32 %found.0184, metadata !153, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !151, metadata !DIExpression()), !dbg !195
  %tobool17.not = icmp eq i32 %found.0184, 0, !dbg !198
  %arrayidx = getelementptr inbounds i8, i8* %auth_cur.0, i64 %indvars.iv, !dbg !202
  %11 = load i8, i8* %arrayidx, align 1, !dbg !202, !tbaa !203
  br i1 %tobool17.not, label %if.then18, label %if.else36, !dbg !204

if.then18:                                        ; preds = %for.body
  switch i8 %11, label %for.inc [
    i8 0, label %for.end.thread
    i8 58, label %if.then29
  ], !dbg !205

for.end.thread:                                   ; preds = %if.then18
  %gcov_ctr96 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr, i64 0, i64 5), align 8, !dbg !207
  %12 = add i64 %gcov_ctr96, 1, !dbg !207
  store i64 %12, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr, i64 0, i64 5), align 8, !dbg !207
  br label %cleanup.thread162, !dbg !210

if.then29:                                        ; preds = %if.then18
  %13 = add i64 %9, 1, !dbg !211
  store i64 %13, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr, i64 0, i64 6), align 16, !dbg !211
  store i8* %auth_cur.0, i8** %user, align 8, !dbg !214, !tbaa !215
  store i64 %indvars.iv, i64* %ulen, align 8, !dbg !218, !tbaa !219
  %14 = add nuw nsw i64 %indvars.iv, 1, !dbg !220
  %arrayidx33 = getelementptr inbounds i8, i8* %auth_cur.0, i64 %14, !dbg !221
  store i8* %arrayidx33, i8** %pass, align 8, !dbg !222, !tbaa !223
  call void @llvm.dbg.value(metadata i32 1, metadata !153, metadata !DIExpression()), !dbg !195
  br label %for.inc, !dbg !224

if.else36:                                        ; preds = %for.body
  %cmp40 = icmp eq i8 %11, 10, !dbg !225
  br i1 %cmp40, label %for.end.thread156, label %lor.lhs.false, !dbg !228

lor.lhs.false:                                    ; preds = %if.else36
  %15 = add i64 %.ph, 1, !dbg !229
  store i64 %15, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr, i64 0, i64 8), align 16, !dbg !229
  %cmp45 = icmp eq i8 %11, 13, !dbg !230
  br i1 %cmp45, label %for.end.thread156, label %lor.lhs.false47, !dbg !231

lor.lhs.false47:                                  ; preds = %lor.lhs.false
  %16 = add i64 %.ph201, 1, !dbg !232
  store i64 %16, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr, i64 0, i64 9), align 8, !dbg !232
  %cmp51 = icmp eq i8 %11, 0, !dbg !233
  br i1 %cmp51, label %for.end.thread156, label %for.inc.thread, !dbg !234

for.end.thread156:                                ; preds = %if.else36, %lor.lhs.false, %lor.lhs.false47
  %idxprom37.le = and i64 %indvars.iv, 4294967295, !dbg !235
  %gcov_ctr101 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr, i64 0, i64 10), align 16, !dbg !236
  %17 = add i64 %gcov_ctr101, 1, !dbg !236
  store i64 %17, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr, i64 0, i64 10), align 16, !dbg !236
  %18 = load i64, i64* %ulen, align 8, !dbg !238, !tbaa !219
  %add56.neg = xor i64 %18, -1, !dbg !239
  %sub = add i64 %idxprom37.le, %add56.neg, !dbg !240
  %plen = getelementptr inbounds %struct.auth_entry, %struct.auth_entry* %entry_cur.0, i64 0, i32 3, !dbg !241
  store i64 %sub, i64* %plen, align 8, !dbg !242, !tbaa !243
  br label %if.end62, !dbg !210

for.inc:                                          ; preds = %if.then29, %if.then18
  %19 = phi i64 [ %13, %if.then29 ], [ %9, %if.then18 ]
  %tobool59.not = phi i1 [ false, %if.then29 ], [ true, %if.then18 ], !dbg !195
  %found.1 = phi i32 [ 1, %if.then29 ], [ 0, %if.then18 ], !dbg !195
  call void @llvm.dbg.value(metadata i32 %found.1, metadata !153, metadata !DIExpression()), !dbg !195
  %20 = add i64 %10, 1, !dbg !244
  store i64 %20, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr, i64 0, i64 7), align 8, !dbg !244
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !245
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !151, metadata !DIExpression()), !dbg !195
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256, !dbg !246
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !196, !llvm.loop !247

for.inc.thread:                                   ; preds = %lor.lhs.false47
  %21 = add i64 %.ph202, 1
  store i64 %21, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr, i64 0, i64 11), align 8
  call void @llvm.dbg.value(metadata i32 %found.1, metadata !153, metadata !DIExpression()), !dbg !195
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv, 1, !dbg !245
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !151, metadata !DIExpression()), !dbg !195
  %exitcond.not196 = icmp eq i64 %indvars.iv.next195, 256, !dbg !246
  br i1 %exitcond.not196, label %if.end62, label %for.body.outer, !dbg !196, !llvm.loop !247

for.end:                                          ; preds = %for.inc
  br i1 %tobool59.not, label %cleanup.thread162, label %if.end62, !dbg !210

cleanup.thread162:                                ; preds = %for.end, %for.end.thread
  %gcov_ctr103 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr, i64 0, i64 12), align 16, !dbg !250
  %22 = add i64 %gcov_ctr103, 1, !dbg !250
  store i64 %22, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr, i64 0, i64 12), align 16, !dbg !250
  %call61 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %call) #11, !dbg !253
  call void @free(i8* noundef %call6) #11, !dbg !254
  call void @llvm.dbg.value(metadata i32 %inc63, metadata !150, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.value(metadata %struct.auth_entry* %incdec.ptr, metadata !148, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.value(metadata i8* %arrayidx69, metadata !146, metadata !DIExpression()), !dbg !154
  br label %cleanup88

if.end62:                                         ; preds = %for.inc.thread, %for.end.thread156, %for.end
  %x.0171 = phi i64 [ %indvars.iv, %for.end.thread156 ], [ 256, %for.end ], [ 256, %for.inc.thread ]
  %inc63 = add nuw nsw i32 %used.0, 1, !dbg !255
  call void @llvm.dbg.value(metadata i32 %inc63, metadata !150, metadata !DIExpression()), !dbg !154
  %cmp64 = icmp eq i32 %inc63, 8, !dbg !257
  br i1 %cmp64, label %if.then66, label %if.end67, !dbg !258

if.then66:                                        ; preds = %if.end62
  %gcov_ctr104 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr, i64 0, i64 13), align 8
  %23 = add i64 %gcov_ctr104, 1
  store i64 %23, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr, i64 0, i64 13), align 8
  br label %while.end, !dbg !259

if.end67:                                         ; preds = %if.end62
  %idxprom68 = and i64 %x.0171, 4294967295, !dbg !261
  %arrayidx69 = getelementptr inbounds i8, i8* %auth_cur.0, i64 %idxprom68, !dbg !261
  %24 = load i8, i8* %arrayidx69, align 1, !dbg !261, !tbaa !203
  %cmp71 = icmp eq i8 %24, 0, !dbg !263
  br i1 %cmp71, label %if.then73, label %cleanup, !dbg !264

if.then73:                                        ; preds = %if.end67
  %gcov_ctr105 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr, i64 0, i64 14), align 16
  %25 = add i64 %gcov_ctr105, 1
  store i64 %25, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr, i64 0, i64 14), align 16
  br label %while.end, !dbg !265

cleanup:                                          ; preds = %if.end67
  %gcov_ctr106 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr, i64 0, i64 15), align 8, !dbg !266
  %26 = add i64 %gcov_ctr106, 1, !dbg !266
  store i64 %26, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr, i64 0, i64 15), align 8, !dbg !266
  call void @llvm.dbg.value(metadata i8* %arrayidx69, metadata !146, metadata !DIExpression()), !dbg !154
  %incdec.ptr = getelementptr inbounds %struct.auth_entry, %struct.auth_entry* %entry_cur.0, i64 1, !dbg !267
  call void @llvm.dbg.value(metadata i32 %inc63, metadata !150, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.value(metadata %struct.auth_entry* %incdec.ptr, metadata !148, metadata !DIExpression()), !dbg !154
  br label %while.cond

while.end:                                        ; preds = %cond.end, %if.then73, %if.then66
  %used.2 = phi i32 [ %inc63, %if.then73 ], [ 8, %if.then66 ], [ %used.0, %cond.end ], !dbg !154
  call void @llvm.dbg.value(metadata i32 %used.2, metadata !150, metadata !DIExpression()), !dbg !154
  %27 = load i8*, i8** @main_auth_data, align 8, !dbg !268, !tbaa !270
  %cmp77.not = icmp eq i8* %27, null, !dbg !271
  br i1 %cmp77.not, label %if.end80, label %if.then79, !dbg !272

if.then79:                                        ; preds = %while.end
  %gcov_ctr107 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr, i64 0, i64 16), align 16, !dbg !273
  %28 = add i64 %gcov_ctr107, 1, !dbg !273
  store i64 %28, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr, i64 0, i64 16), align 16, !dbg !273
  call void @free(i8* noundef nonnull %27) #11, !dbg !275
  br label %if.end80, !dbg !276

if.end80:                                         ; preds = %if.then79, %while.end
  %gcov_ctr108 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr, i64 0, i64 17), align 8, !dbg !277
  %29 = add i64 %gcov_ctr108, 1, !dbg !277
  store i64 %29, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr, i64 0, i64 17), align 8, !dbg !277
  store i32 %used.2, i32* @entry_cnt, align 4, !dbg !278, !tbaa !279
  store i8* %call6, i8** @main_auth_data, align 8, !dbg !280, !tbaa !270
  %call82 = call i8* @memcpy(i8* noundef bitcast ([8 x %struct.auth_entry]* @main_auth_entries to i8*), i8* noundef nonnull %1, i64 noundef 256) #11, !dbg !281
  %call83 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %call) #11, !dbg !282
  br label %cleanup88, !dbg !283

cleanup88:                                        ; preds = %cleanup.thread162, %if.end80, %if.then3, %if.then
  %retval.3 = phi i32 [ 3, %if.then ], [ 2, %if.then3 ], [ 0, %if.end80 ], [ 4, %cleanup.thread162 ]
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %1) #10, !dbg !284
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %0) #10, !dbg !284
  ret i32 %retval.3, !dbg !284
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare !dbg !285 dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @fstat(i32 noundef, %struct.stat* noundef nonnull) local_unnamed_addr #0

; Function Attrs: nounwind
declare !dbg !291 dso_local i32 @fileno(%struct._IO_FILE* noundef) local_unnamed_addr #4

declare !dbg !294 dso_local i32 @fclose(%struct._IO_FILE* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !295 dso_local noalias i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !299 dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !304 dso_local void @free(i8* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare !dbg !307 dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @authfile_check(i8* noundef %user, i8* noundef %pass) local_unnamed_addr #0 !dbg !315 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 0), align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 0), align 16
  call void @llvm.dbg.value(metadata i8* %user, metadata !319, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata i8* %pass, metadata !320, metadata !DIExpression()), !dbg !328
  %call = tail call i64 @strlen(i8* noundef %user) #12, !dbg !329
  call void @llvm.dbg.value(metadata i64 %call, metadata !321, metadata !DIExpression()), !dbg !328
  %call1 = tail call i64 @strlen(i8* noundef %pass) #12, !dbg !330
  call void @llvm.dbg.value(metadata i64 %call1, metadata !322, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata i32 0, metadata !323, metadata !DIExpression()), !dbg !331
  %1 = load i32, i32* @entry_cnt, align 4, !dbg !332, !tbaa !279
  %cmp40 = icmp sgt i32 %1, 0, !dbg !333
  br i1 %cmp40, label %for.body, label %for.end, !dbg !334

for.body:                                         ; preds = %entry, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !323, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata !DIArgList([8 x %struct.auth_entry]* @main_auth_entries, i64 %indvars.iv), metadata !325, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !335
  %ulen2 = getelementptr inbounds [8 x %struct.auth_entry], [8 x %struct.auth_entry]* @main_auth_entries, i64 0, i64 %indvars.iv, i32 1, !dbg !336
  %2 = load i64, i64* %ulen2, align 8, !dbg !336, !tbaa !219
  %cmp3 = icmp eq i64 %call, %2, !dbg !338
  br i1 %cmp3, label %land.lhs.true, label %if.end, !dbg !339

land.lhs.true:                                    ; preds = %for.body
  %gcov_ctr19 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 2), align 16, !dbg !340
  %3 = add i64 %gcov_ctr19, 1, !dbg !340
  store i64 %3, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 2), align 16, !dbg !340
  %plen4 = getelementptr inbounds [8 x %struct.auth_entry], [8 x %struct.auth_entry]* @main_auth_entries, i64 0, i64 %indvars.iv, i32 3, !dbg !341
  %4 = load i64, i64* %plen4, align 8, !dbg !341, !tbaa !243
  %cmp5 = icmp eq i64 %call1, %4, !dbg !342
  br i1 %cmp5, label %land.lhs.true6, label %if.end, !dbg !343

land.lhs.true6:                                   ; preds = %land.lhs.true
  %gcov_ctr20 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 3), align 8, !dbg !344
  %5 = add i64 %gcov_ctr20, 1, !dbg !344
  store i64 %5, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 3), align 8, !dbg !344
  %user7 = getelementptr inbounds [8 x %struct.auth_entry], [8 x %struct.auth_entry]* @main_auth_entries, i64 0, i64 %indvars.iv, i32 0, !dbg !345
  %6 = load i8*, i8** %user7, align 16, !dbg !345, !tbaa !215
  %call9 = tail call zeroext i1 @safe_memcmp(i8* noundef %user, i8* noundef %6, i64 noundef %call) #11, !dbg !346
  br i1 %call9, label %land.lhs.true10, label %if.end, !dbg !347

land.lhs.true10:                                  ; preds = %land.lhs.true6
  %gcov_ctr21 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 4), align 16, !dbg !348
  %7 = add i64 %gcov_ctr21, 1, !dbg !348
  store i64 %7, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 4), align 16, !dbg !348
  %pass11 = getelementptr inbounds [8 x %struct.auth_entry], [8 x %struct.auth_entry]* @main_auth_entries, i64 0, i64 %indvars.iv, i32 2, !dbg !349
  %8 = load i8*, i8** %pass11, align 16, !dbg !349, !tbaa !223
  %9 = load i64, i64* %plen4, align 8, !dbg !350, !tbaa !243
  %call13 = tail call zeroext i1 @safe_memcmp(i8* noundef %pass, i8* noundef %8, i64 noundef %9) #11, !dbg !351
  br i1 %call13, label %cleanup16, label %if.end, !dbg !352

if.end:                                           ; preds = %land.lhs.true10, %land.lhs.true6, %land.lhs.true, %for.body
  %gcov_ctr23 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 6), align 16, !dbg !353
  %10 = add i64 %gcov_ctr23, 1, !dbg !353
  store i64 %10, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 6), align 16, !dbg !353
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !354
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !323, metadata !DIExpression()), !dbg !331
  %11 = load i32, i32* @entry_cnt, align 4, !dbg !332, !tbaa !279
  %12 = sext i32 %11 to i64, !dbg !333
  %cmp = icmp slt i64 %indvars.iv.next, %12, !dbg !333
  br i1 %cmp, label %for.body, label %for.end, !dbg !334, !llvm.loop !355

for.end:                                          ; preds = %if.end, %entry
  %gcov_ctr18 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 1), align 8
  %13 = add i64 %gcov_ctr18, 1
  store i64 %13, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 1), align 8
  br label %cleanup16, !dbg !357

cleanup16:                                        ; preds = %land.lhs.true10, %for.end
  %.sink = phi i64* [ getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 7), %for.end ], [ getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 5), %land.lhs.true10 ]
  %retval.3 = phi i32 [ 0, %for.end ], [ 1, %land.lhs.true10 ], !dbg !328
  %gcov_ctr22 = load i64, i64* %.sink, align 8, !dbg !328
  %14 = add i64 %gcov_ctr22, 1, !dbg !328
  store i64 %14, i64* %.sink, align 8, !dbg !328
  ret i32 %retval.3, !dbg !358
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !359 dso_local i64 @strlen(i8* noundef) local_unnamed_addr #5

declare !dbg !362 dso_local zeroext i1 @safe_memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @__llvm_gcov_writeout() unnamed_addr #6 {
entry:
  tail call void @llvm_gcda_start_file(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @0, i64 0, i64 0), i32 875575338, i32 -2026593852) #10
  tail call void @llvm_gcda_emit_function(i32 0, i32 44050947, i32 -2026593852) #10
  tail call void @llvm_gcda_emit_arcs(i32 18, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr, i64 0, i64 0)) #10
  tail call void @llvm_gcda_emit_function(i32 1, i32 -1420739705, i32 -2026593852) #10
  tail call void @llvm_gcda_emit_arcs(i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 0)) #10
  tail call void @llvm_gcda_emit_function(i32 2, i32 -1521706093, i32 -2026593852) #10
  tail call void @llvm_gcda_emit_arcs(i32 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 0)) #10
  tail call void @llvm_gcda_summary_info() #10
  tail call void @llvm_gcda_end_file() #10
  ret void
}

declare void @llvm_gcda_start_file(i8*, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, i64*) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly
define internal void @__llvm_gcov_reset() unnamed_addr #7 {
entry:
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(144) bitcast ([18 x i64]* @__llvm_gcov_ctr to i8*), i8 0, i64 144, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) bitcast ([8 x i64]* @__llvm_gcov_ctr.2 to i8*), i8 0, i64 64, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noinline nounwind uwtable
define internal void @__llvm_gcov_init() unnamed_addr #6 {
entry:
  tail call void @llvm_gcov_init(void ()* nonnull @__llvm_gcov_writeout, void ()* nonnull @__llvm_gcov_reset) #10
  ret void
}

declare void @llvm_gcov_init(void ()*, void ()*) local_unnamed_addr

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable }
attributes #7 = { mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!37, !38, !39, !40}
!llvm.gcov = !{!41}
!llvm.ident = !{!42}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "entry_cnt", scope: !2, file: !3, line: 28, type: !36, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !14, globals: !16, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "authfile.c", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "0862e0458ee628bbb6fbc2f7d2dc38f1")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "authfile_ret", file: !6, line: 4, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./authfile.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "0dde135e0a78cac5fa53ca0c0171cf2a")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "AUTHFILE_OK", value: 0)
!10 = !DIEnumerator(name: "AUTHFILE_OOM", value: 1)
!11 = !DIEnumerator(name: "AUTHFILE_STATFAIL", value: 2)
!12 = !DIEnumerator(name: "AUTHFILE_OPENFAIL", value: 3)
!13 = !DIEnumerator(name: "AUTHFILE_MALFORMED", value: 4)
!14 = !{!15}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !{!0, !17, !21}
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "main_auth_data", scope: !2, file: !3, line: 29, type: !19, isLocal: false, isDefinition: true)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "main_auth_entries", scope: !2, file: !3, line: 27, type: !23, isLocal: false, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 2048, elements: !34)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "auth_t", file: !3, line: 25, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "auth_entry", file: !3, line: 20, size: 256, elements: !26)
!26 = !{!27, !28, !32, !33}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !25, file: !3, line: 21, baseType: !19, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "ulen", scope: !25, file: !3, line: 22, baseType: !29, size: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !30, line: 46, baseType: !31)
!30 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!31 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !25, file: !3, line: 23, baseType: !19, size: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "plen", scope: !25, file: !3, line: 24, baseType: !29, size: 64, offset: 192)
!34 = !{!35}
!35 = !DISubrange(count: 8)
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !{i32 7, !"Dwarf Version", i32 5}
!38 = !{i32 2, !"Debug Info Version", i32 3}
!39 = !{i32 1, !"wchar_size", i32 4}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{!"/home/xuheng/blackbox/llvm-test/memcached/authfile.gcno", !"/home/xuheng/blackbox/llvm-test/memcached/authfile.gcda", !2}
!42 = !{!"clang version 14.0.0"}
!43 = distinct !DISubprogram(name: "authfile_load", scope: !3, file: !3, line: 31, type: !44, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !48)
!44 = !DISubroutineType(types: !45)
!45 = !{!5, !46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!48 = !{!49, !50, !90, !91, !92, !146, !147, !148, !150, !151, !153}
!49 = !DILocalVariable(name: "file", arg: 1, scope: !43, file: !3, line: 31, type: !46)
!50 = !DILocalVariable(name: "sb", scope: !43, file: !3, line: 32, type: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !52, line: 46, size: 1152, elements: !53)
!52 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "f8d5b541c4f89219f8e8ff8c3e2940d9")
!53 = !{!54, !57, !59, !61, !63, !65, !67, !68, !69, !72, !74, !76, !84, !85, !86}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !51, file: !52, line: 48, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !56, line: 145, baseType: !31)
!56 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!57 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !51, file: !52, line: 53, baseType: !58, size: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !56, line: 148, baseType: !31)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !51, file: !52, line: 61, baseType: !60, size: 64, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !56, line: 151, baseType: !31)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !51, file: !52, line: 62, baseType: !62, size: 32, offset: 192)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !56, line: 150, baseType: !7)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !51, file: !52, line: 64, baseType: !64, size: 32, offset: 224)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !56, line: 146, baseType: !7)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !51, file: !52, line: 65, baseType: !66, size: 32, offset: 256)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !56, line: 147, baseType: !7)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !51, file: !52, line: 67, baseType: !36, size: 32, offset: 288)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !51, file: !52, line: 69, baseType: !55, size: 64, offset: 320)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !51, file: !52, line: 74, baseType: !70, size: 64, offset: 384)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !56, line: 152, baseType: !71)
!71 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !51, file: !52, line: 78, baseType: !73, size: 64, offset: 448)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !56, line: 174, baseType: !71)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !51, file: !52, line: 80, baseType: !75, size: 64, offset: 512)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !56, line: 179, baseType: !71)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !51, file: !52, line: 91, baseType: !77, size: 128, offset: 576)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !78, line: 10, size: 128, elements: !79)
!78 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "33f28095c70788baa6982a79b13f774b")
!79 = !{!80, !82}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !77, file: !78, line: 12, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !56, line: 160, baseType: !71)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !77, file: !78, line: 16, baseType: !83, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !56, line: 196, baseType: !71)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !51, file: !52, line: 92, baseType: !77, size: 128, offset: 704)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !51, file: !52, line: 93, baseType: !77, size: 128, offset: 832)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !51, file: !52, line: 106, baseType: !87, size: 192, offset: 960)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 192, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 3)
!90 = !DILocalVariable(name: "auth_data", scope: !43, file: !3, line: 33, type: !19)
!91 = !DILocalVariable(name: "auth_entries", scope: !43, file: !3, line: 34, type: !23)
!92 = !DILocalVariable(name: "pwfile", scope: !43, file: !3, line: 36, type: !93)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !95, line: 7, baseType: !96)
!95 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !97, line: 49, size: 1728, elements: !98)
!97 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!98 = !{!99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !114, !116, !117, !118, !119, !121, !123, !127, !130, !132, !135, !138, !139, !140, !141, !142}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !96, file: !97, line: 51, baseType: !36, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !96, file: !97, line: 54, baseType: !19, size: 64, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !96, file: !97, line: 55, baseType: !19, size: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !96, file: !97, line: 56, baseType: !19, size: 64, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !96, file: !97, line: 57, baseType: !19, size: 64, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !96, file: !97, line: 58, baseType: !19, size: 64, offset: 320)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !96, file: !97, line: 59, baseType: !19, size: 64, offset: 384)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !96, file: !97, line: 60, baseType: !19, size: 64, offset: 448)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !96, file: !97, line: 61, baseType: !19, size: 64, offset: 512)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !96, file: !97, line: 64, baseType: !19, size: 64, offset: 576)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !96, file: !97, line: 65, baseType: !19, size: 64, offset: 640)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !96, file: !97, line: 66, baseType: !19, size: 64, offset: 704)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !96, file: !97, line: 68, baseType: !112, size: 64, offset: 768)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !97, line: 36, flags: DIFlagFwdDecl)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !96, file: !97, line: 70, baseType: !115, size: 64, offset: 832)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !96, file: !97, line: 72, baseType: !36, size: 32, offset: 896)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !96, file: !97, line: 73, baseType: !36, size: 32, offset: 928)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !96, file: !97, line: 74, baseType: !70, size: 64, offset: 960)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !96, file: !97, line: 77, baseType: !120, size: 16, offset: 1024)
!120 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !96, file: !97, line: 78, baseType: !122, size: 8, offset: 1040)
!122 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !96, file: !97, line: 79, baseType: !124, size: 8, offset: 1048)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 8, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 1)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !96, file: !97, line: 81, baseType: !128, size: 64, offset: 1088)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !97, line: 43, baseType: null)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !96, file: !97, line: 89, baseType: !131, size: 64, offset: 1152)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !56, line: 153, baseType: !71)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !96, file: !97, line: 91, baseType: !133, size: 64, offset: 1216)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !97, line: 37, flags: DIFlagFwdDecl)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !96, file: !97, line: 92, baseType: !136, size: 64, offset: 1280)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !97, line: 38, flags: DIFlagFwdDecl)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !96, file: !97, line: 93, baseType: !115, size: 64, offset: 1344)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !96, file: !97, line: 94, baseType: !15, size: 64, offset: 1408)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !96, file: !97, line: 95, baseType: !29, size: 64, offset: 1472)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !96, file: !97, line: 96, baseType: !36, size: 32, offset: 1536)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !96, file: !97, line: 98, baseType: !143, size: 160, offset: 1568)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 160, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 20)
!146 = !DILocalVariable(name: "auth_cur", scope: !43, file: !3, line: 46, type: !19)
!147 = !DILocalVariable(name: "auth_end", scope: !43, file: !3, line: 47, type: !19)
!148 = !DILocalVariable(name: "entry_cur", scope: !43, file: !3, line: 48, type: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!150 = !DILocalVariable(name: "used", scope: !43, file: !3, line: 49, type: !36)
!151 = !DILocalVariable(name: "x", scope: !152, file: !3, line: 52, type: !36)
!152 = distinct !DILexicalBlock(scope: !43, file: !3, line: 51, column: 122)
!153 = !DILocalVariable(name: "found", scope: !152, file: !3, line: 53, type: !36)
!154 = !DILocation(line: 0, scope: !43)
!155 = !DILocation(line: 32, column: 5, scope: !43)
!156 = !DILocation(line: 32, column: 17, scope: !43)
!157 = !DILocation(line: 34, column: 5, scope: !43)
!158 = !DILocation(line: 34, column: 12, scope: !43)
!159 = !DILocation(line: 36, column: 20, scope: !43)
!160 = !DILocation(line: 37, column: 16, scope: !161)
!161 = distinct !DILexicalBlock(scope: !43, file: !3, line: 37, column: 9)
!162 = !DILocation(line: 37, column: 9, scope: !43)
!163 = !DILocation(line: 38, column: 9, scope: !164)
!164 = distinct !DILexicalBlock(scope: !161, file: !3, line: 37, column: 25)
!165 = !DILocation(line: 39, column: 22, scope: !166)
!166 = distinct !DILexicalBlock(scope: !161, file: !3, line: 39, column: 16)
!167 = !DILocation(line: 39, column: 16, scope: !166)
!168 = !DILocation(line: 39, column: 16, scope: !161)
!169 = !DILocation(line: 40, column: 16, scope: !170)
!170 = distinct !DILexicalBlock(scope: !166, file: !3, line: 39, column: 44)
!171 = !DILocation(line: 40, column: 9, scope: !170)
!172 = !DILocation(line: 41, column: 9, scope: !170)
!173 = !DILocation(line: 44, column: 30, scope: !43)
!174 = !{!175, !176, i64 48}
!175 = !{!"stat", !176, i64 0, !176, i64 8, !176, i64 16, !179, i64 24, !179, i64 28, !179, i64 32, !179, i64 36, !176, i64 40, !176, i64 48, !176, i64 56, !176, i64 64, !180, i64 72, !180, i64 88, !180, i64 104, !177, i64 120}
!176 = !{!"long", !177, i64 0}
!177 = !{!"omnipotent char", !178, i64 0}
!178 = !{!"Simple C/C++ TBAA"}
!179 = !{!"int", !177, i64 0}
!180 = !{!"timespec", !176, i64 0, !176, i64 8}
!181 = !DILocation(line: 44, column: 38, scope: !43)
!182 = !DILocation(line: 44, column: 17, scope: !43)
!183 = !DILocation(line: 47, column: 37, scope: !43)
!184 = !DILocation(line: 47, column: 32, scope: !43)
!185 = !DILocation(line: 48, column: 25, scope: !43)
!186 = !DILocation(line: 51, column: 5, scope: !43)
!187 = !DILocation(line: 46, column: 11, scope: !43)
!188 = !DILocation(line: 48, column: 13, scope: !43)
!189 = !DILocation(line: 51, column: 38, scope: !43)
!190 = !DILocation(line: 51, column: 49, scope: !43)
!191 = !DILocation(line: 51, column: 29, scope: !43)
!192 = !DILocation(line: 51, column: 67, scope: !43)
!193 = !DILocation(line: 51, column: 13, scope: !43)
!194 = !DILocation(line: 51, column: 113, scope: !43)
!195 = !DILocation(line: 0, scope: !152)
!196 = !DILocation(line: 55, column: 9, scope: !197)
!197 = distinct !DILexicalBlock(scope: !152, file: !3, line: 55, column: 9)
!198 = !DILocation(line: 56, column: 18, scope: !199)
!199 = distinct !DILexicalBlock(scope: !200, file: !3, line: 56, column: 17)
!200 = distinct !DILexicalBlock(scope: !201, file: !3, line: 55, column: 45)
!201 = distinct !DILexicalBlock(scope: !197, file: !3, line: 55, column: 9)
!202 = !DILocation(line: 0, scope: !199)
!203 = !{!177, !177, i64 0}
!204 = !DILocation(line: 56, column: 17, scope: !200)
!205 = !DILocation(line: 57, column: 21, scope: !206)
!206 = distinct !DILexicalBlock(scope: !199, file: !3, line: 56, column: 25)
!207 = !DILocation(line: 59, column: 21, scope: !208)
!208 = distinct !DILexicalBlock(scope: !209, file: !3, line: 57, column: 42)
!209 = distinct !DILexicalBlock(scope: !206, file: !3, line: 57, column: 21)
!210 = !DILocation(line: 78, column: 13, scope: !152)
!211 = !DILocation(line: 61, column: 39, scope: !212)
!212 = distinct !DILexicalBlock(scope: !213, file: !3, line: 60, column: 48)
!213 = distinct !DILexicalBlock(scope: !209, file: !3, line: 60, column: 28)
!214 = !DILocation(line: 61, column: 37, scope: !212)
!215 = !{!216, !217, i64 0}
!216 = !{!"auth_entry", !217, i64 0, !176, i64 8, !217, i64 16, !176, i64 24}
!217 = !{!"any pointer", !177, i64 0}
!218 = !DILocation(line: 62, column: 37, scope: !212)
!219 = !{!216, !176, i64 8}
!220 = !DILocation(line: 63, column: 50, scope: !212)
!221 = !DILocation(line: 63, column: 40, scope: !212)
!222 = !DILocation(line: 63, column: 37, scope: !212)
!223 = !{!216, !217, i64 16}
!224 = !DILocation(line: 65, column: 17, scope: !212)
!225 = !DILocation(line: 68, column: 33, scope: !226)
!226 = distinct !DILexicalBlock(scope: !227, file: !3, line: 68, column: 21)
!227 = distinct !DILexicalBlock(scope: !199, file: !3, line: 66, column: 20)
!228 = !DILocation(line: 68, column: 41, scope: !226)
!229 = !DILocation(line: 69, column: 21, scope: !226)
!230 = !DILocation(line: 69, column: 33, scope: !226)
!231 = !DILocation(line: 69, column: 41, scope: !226)
!232 = !DILocation(line: 70, column: 21, scope: !226)
!233 = !DILocation(line: 70, column: 33, scope: !226)
!234 = !DILocation(line: 68, column: 21, scope: !227)
!235 = !DILocation(line: 68, column: 21, scope: !226)
!236 = !DILocation(line: 71, column: 39, scope: !237)
!237 = distinct !DILexicalBlock(scope: !226, file: !3, line: 70, column: 42)
!238 = !DILocation(line: 71, column: 55, scope: !237)
!239 = !DILocation(line: 71, column: 60, scope: !237)
!240 = !DILocation(line: 71, column: 41, scope: !237)
!241 = !DILocation(line: 71, column: 32, scope: !237)
!242 = !DILocation(line: 71, column: 37, scope: !237)
!243 = !{!216, !176, i64 24}
!244 = !DILocation(line: 66, column: 13, scope: !206)
!245 = !DILocation(line: 55, column: 41, scope: !201)
!246 = !DILocation(line: 55, column: 23, scope: !201)
!247 = distinct !{!247, !196, !248, !249}
!248 = !DILocation(line: 75, column: 9, scope: !197)
!249 = !{!"llvm.loop.mustprogress"}
!250 = !DILocation(line: 79, column: 26, scope: !251)
!251 = distinct !DILexicalBlock(scope: !252, file: !3, line: 78, column: 21)
!252 = distinct !DILexicalBlock(scope: !152, file: !3, line: 78, column: 13)
!253 = !DILocation(line: 79, column: 19, scope: !251)
!254 = !DILocation(line: 80, column: 13, scope: !251)
!255 = !DILocation(line: 85, column: 13, scope: !256)
!256 = distinct !DILexicalBlock(scope: !152, file: !3, line: 85, column: 13)
!257 = !DILocation(line: 85, column: 20, scope: !256)
!258 = !DILocation(line: 85, column: 13, scope: !152)
!259 = !DILocation(line: 86, column: 13, scope: !260)
!260 = distinct !DILexicalBlock(scope: !256, file: !3, line: 85, column: 36)
!261 = !DILocation(line: 89, column: 13, scope: !262)
!262 = distinct !DILexicalBlock(scope: !152, file: !3, line: 89, column: 13)
!263 = !DILocation(line: 89, column: 25, scope: !262)
!264 = !DILocation(line: 89, column: 13, scope: !152)
!265 = !DILocation(line: 90, column: 13, scope: !262)
!266 = !DILocation(line: 92, column: 21, scope: !152)
!267 = !DILocation(line: 93, column: 18, scope: !152)
!268 = !DILocation(line: 98, column: 9, scope: !269)
!269 = distinct !DILexicalBlock(scope: !43, file: !3, line: 98, column: 9)
!270 = !{!217, !217, i64 0}
!271 = !DILocation(line: 98, column: 24, scope: !269)
!272 = !DILocation(line: 98, column: 9, scope: !43)
!273 = !DILocation(line: 99, column: 14, scope: !274)
!274 = distinct !DILexicalBlock(scope: !269, file: !3, line: 98, column: 33)
!275 = !DILocation(line: 99, column: 9, scope: !274)
!276 = !DILocation(line: 100, column: 5, scope: !274)
!277 = !DILocation(line: 102, column: 17, scope: !43)
!278 = !DILocation(line: 102, column: 15, scope: !43)
!279 = !{!179, !179, i64 0}
!280 = !DILocation(line: 103, column: 20, scope: !43)
!281 = !DILocation(line: 104, column: 5, scope: !43)
!282 = !DILocation(line: 106, column: 11, scope: !43)
!283 = !DILocation(line: 108, column: 5, scope: !43)
!284 = !DILocation(line: 109, column: 1, scope: !43)
!285 = !DISubprogram(name: "fopen", scope: !286, file: !286, line: 246, type: !287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !290)
!286 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!287 = !DISubroutineType(types: !288)
!288 = !{!93, !289, !289}
!289 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !46)
!290 = !{}
!291 = !DISubprogram(name: "fileno", scope: !286, file: !286, line: 786, type: !292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !290)
!292 = !DISubroutineType(types: !293)
!293 = !{!36, !93}
!294 = !DISubprogram(name: "fclose", scope: !286, file: !286, line: 213, type: !292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !290)
!295 = !DISubprogram(name: "calloc", scope: !296, file: !296, line: 542, type: !297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !290)
!296 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!297 = !DISubroutineType(types: !298)
!298 = !{!15, !29, !29}
!299 = !DISubprogram(name: "fgets", scope: !286, file: !286, line: 564, type: !300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !290)
!300 = !DISubroutineType(types: !301)
!301 = !{!19, !302, !36, !303}
!302 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !19)
!303 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !93)
!304 = !DISubprogram(name: "free", scope: !296, file: !296, line: 565, type: !305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !290)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !15}
!307 = !DISubprogram(name: "memcpy", scope: !308, file: !308, line: 43, type: !309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !290)
!308 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "61f60112cf5c0a45c54ea1f595add24c")
!309 = !DISubroutineType(types: !310)
!310 = !{!15, !311, !312, !29}
!311 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !15)
!312 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!315 = distinct !DISubprogram(name: "authfile_check", scope: !3, file: !3, line: 112, type: !316, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !318)
!316 = !DISubroutineType(types: !317)
!317 = !{!36, !46, !46}
!318 = !{!319, !320, !321, !322, !323, !325}
!319 = !DILocalVariable(name: "user", arg: 1, scope: !315, file: !3, line: 112, type: !46)
!320 = !DILocalVariable(name: "pass", arg: 2, scope: !315, file: !3, line: 112, type: !46)
!321 = !DILocalVariable(name: "ulen", scope: !315, file: !3, line: 113, type: !29)
!322 = !DILocalVariable(name: "plen", scope: !315, file: !3, line: 114, type: !29)
!323 = !DILocalVariable(name: "x", scope: !324, file: !3, line: 116, type: !36)
!324 = distinct !DILexicalBlock(scope: !315, file: !3, line: 116, column: 5)
!325 = !DILocalVariable(name: "e", scope: !326, file: !3, line: 117, type: !149)
!326 = distinct !DILexicalBlock(scope: !327, file: !3, line: 116, column: 41)
!327 = distinct !DILexicalBlock(scope: !324, file: !3, line: 116, column: 5)
!328 = !DILocation(line: 0, scope: !315)
!329 = !DILocation(line: 113, column: 19, scope: !315)
!330 = !DILocation(line: 114, column: 19, scope: !315)
!331 = !DILocation(line: 0, scope: !324)
!332 = !DILocation(line: 116, column: 25, scope: !327)
!333 = !DILocation(line: 116, column: 23, scope: !327)
!334 = !DILocation(line: 116, column: 5, scope: !324)
!335 = !DILocation(line: 0, scope: !326)
!336 = !DILocation(line: 118, column: 24, scope: !337)
!337 = distinct !DILexicalBlock(scope: !326, file: !3, line: 118, column: 13)
!338 = !DILocation(line: 118, column: 18, scope: !337)
!339 = !DILocation(line: 118, column: 29, scope: !337)
!340 = !DILocation(line: 118, column: 32, scope: !337)
!341 = !DILocation(line: 118, column: 43, scope: !337)
!342 = !DILocation(line: 118, column: 37, scope: !337)
!343 = !DILocation(line: 118, column: 48, scope: !337)
!344 = !DILocation(line: 119, column: 25, scope: !337)
!345 = !DILocation(line: 119, column: 34, scope: !337)
!346 = !DILocation(line: 119, column: 13, scope: !337)
!347 = !DILocation(line: 119, column: 49, scope: !337)
!348 = !DILocation(line: 120, column: 25, scope: !337)
!349 = !DILocation(line: 120, column: 34, scope: !337)
!350 = !DILocation(line: 120, column: 43, scope: !337)
!351 = !DILocation(line: 120, column: 13, scope: !337)
!352 = !DILocation(line: 118, column: 13, scope: !326)
!353 = !DILocation(line: 123, column: 5, scope: !327)
!354 = !DILocation(line: 116, column: 37, scope: !327)
!355 = distinct !{!355, !334, !356, !249}
!356 = !DILocation(line: 123, column: 5, scope: !324)
!357 = !DILocation(line: 125, column: 5, scope: !315)
!358 = !DILocation(line: 126, column: 1, scope: !315)
!359 = !DISubprogram(name: "strlen", scope: !308, file: !308, line: 385, type: !360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !290)
!360 = !DISubroutineType(types: !361)
!361 = !{!29, !46}
!362 = !DISubprogram(name: "safe_memcmp", scope: !363, file: !363, line: 23, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !290)
!363 = !DIFile(filename: "./util.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "d1ef68c688867746f50aae7567be079a")
!364 = !DISubroutineType(types: !365)
!365 = !{!366, !313, !313, !29}
!366 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
