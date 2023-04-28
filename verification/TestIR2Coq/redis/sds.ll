; ModuleID = 'sds.c'
source_filename = "sds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"SDS: Out Of Memory (SDS_ABORT_ON_OOM defined)\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local nonnull i8* @sdsnewlen(i8* noundef %init, i64 noundef %initlen) local_unnamed_addr #0 !dbg !30 {
entry:
  call void @llvm.dbg.value(metadata i8* %init, metadata !41, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.value(metadata i64 %initlen, metadata !42, metadata !DIExpression()), !dbg !54
  %add1 = add i64 %initlen, 17, !dbg !55
  %call = tail call i8* @zmalloc(i64 noundef %add1) #15, !dbg !56
  call void @llvm.dbg.value(metadata i8* %call, metadata !43, metadata !DIExpression()), !dbg !54
  %cmp = icmp eq i8* %call, null, !dbg !57
  br i1 %cmp, label %if.then, label %if.end, !dbg !59

if.then:                                          ; preds = %entry
  tail call fastcc void @sdsOomAbort() #16, !dbg !60
  unreachable, !dbg !60

if.end:                                           ; preds = %entry
  %len = bitcast i8* %call to i64*, !dbg !61
  store i64 %initlen, i64* %len, align 8, !dbg !62, !tbaa !63
  %free = getelementptr inbounds i8, i8* %call, i64 8, !dbg !67
  %0 = bitcast i8* %free to i64*, !dbg !67
  store i64 0, i64* %0, align 8, !dbg !68, !tbaa !63
  %tobool.not = icmp eq i64 %initlen, 0, !dbg !69
  br i1 %tobool.not, label %if.end10, label %if.then2, !dbg !71

if.then2:                                         ; preds = %if.end
  %tobool3.not = icmp eq i8* %init, null, !dbg !72
  %buf6 = getelementptr inbounds i8, i8* %call, i64 16, !dbg !75
  br i1 %tobool3.not, label %if.else, label %if.then4, !dbg !76

if.then4:                                         ; preds = %if.then2
  %call5 = tail call i8* @memcpy(i8* noundef nonnull %buf6, i8* noundef nonnull %init, i64 noundef %initlen) #15, !dbg !77
  br label %if.end10, !dbg !77

if.else:                                          ; preds = %if.then2
  %call8 = tail call i8* @memset(i8* noundef nonnull %buf6, i32 noundef 0, i64 noundef %initlen) #15, !dbg !78
  br label %if.end10

if.end10:                                         ; preds = %if.then4, %if.else, %if.end
  %buf11 = getelementptr inbounds i8, i8* %call, i64 16, !dbg !79
  %arrayidx = getelementptr inbounds i8, i8* %buf11, i64 %initlen, !dbg !80
  store i8 0, i8* %arrayidx, align 1, !dbg !81, !tbaa !82
  ret i8* %buf11, !dbg !83
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare !dbg !84 dso_local i8* @zmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define internal fastcc void @sdsOomAbort() unnamed_addr #4 !dbg !89 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !92, !tbaa !93
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0)) #15, !dbg !95
  tail call void @abort() #17, !dbg !96
  unreachable, !dbg !96
}

; Function Attrs: nounwind
declare !dbg !97 dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !103 dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local nonnull i8* @sdsempty() local_unnamed_addr #0 !dbg !106 {
entry:
  %call = tail call i8* @sdsnewlen(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 noundef 0) #16, !dbg !109
  ret i8* %call, !dbg !110
}

; Function Attrs: noinline nounwind uwtable
define dso_local nonnull i8* @sdsnew(i8* noundef %init) local_unnamed_addr #0 !dbg !111 {
entry:
  call void @llvm.dbg.value(metadata i8* %init, metadata !117, metadata !DIExpression()), !dbg !119
  %cmp = icmp eq i8* %init, null, !dbg !120
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !121

cond.false:                                       ; preds = %entry
  %call = tail call i64 @strlen(i8* noundef nonnull %init) #18, !dbg !122
  br label %cond.end, !dbg !121

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i64 [ %call, %cond.false ], [ 0, %entry ], !dbg !121
  call void @llvm.dbg.value(metadata i64 %cond, metadata !118, metadata !DIExpression()), !dbg !119
  %call1 = tail call i8* @sdsnewlen(i8* noundef %init, i64 noundef %cond) #16, !dbg !123
  ret i8* %call1, !dbg !124
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !125 dso_local i64 @strlen(i8* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @sdslen(i8* nocapture noundef readonly %s) local_unnamed_addr #7 !dbg !128 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !133, metadata !DIExpression()), !dbg !135
  %add.ptr = getelementptr inbounds i8, i8* %s, i64 -16, !dbg !136
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !134, metadata !DIExpression()), !dbg !135
  %len = bitcast i8* %add.ptr to i64*, !dbg !137
  %0 = load i64, i64* %len, align 8, !dbg !137, !tbaa !63
  ret i64 %0, !dbg !138
}

; Function Attrs: noinline nounwind uwtable
define dso_local nonnull i8* @sdsdup(i8* noundef %s) local_unnamed_addr #0 !dbg !139 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !143, metadata !DIExpression()), !dbg !144
  %call = tail call i64 @sdslen(i8* noundef %s) #16, !dbg !145
  %call1 = tail call i8* @sdsnewlen(i8* noundef %s, i64 noundef %call) #16, !dbg !146
  ret i8* %call1, !dbg !147
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sdsfree(i8* noundef %s) local_unnamed_addr #0 !dbg !148 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !152, metadata !DIExpression()), !dbg !153
  %cmp = icmp eq i8* %s, null, !dbg !154
  br i1 %cmp, label %return, label %if.end, !dbg !156

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %s, i64 -16, !dbg !157
  tail call void @zfree(i8* noundef nonnull %add.ptr) #15, !dbg !158
  br label %return, !dbg !159

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !159
}

declare !dbg !160 dso_local void @zfree(i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @sdsavail(i8* nocapture noundef readonly %s) local_unnamed_addr #7 !dbg !163 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !167, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata i8* %s, metadata !168, metadata !DIExpression(DW_OP_constu, 16, DW_OP_minus, DW_OP_stack_value)), !dbg !169
  %free = getelementptr inbounds i8, i8* %s, i64 -8, !dbg !170
  %0 = bitcast i8* %free to i64*, !dbg !170
  %1 = load i64, i64* %0, align 8, !dbg !170, !tbaa !63
  ret i64 %1, !dbg !171
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define dso_local void @sdsupdatelen(i8* noundef %s) local_unnamed_addr #8 !dbg !172 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !174, metadata !DIExpression()), !dbg !177
  %add.ptr = getelementptr inbounds i8, i8* %s, i64 -16, !dbg !178
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !175, metadata !DIExpression()), !dbg !177
  %call = tail call i64 @strlen(i8* noundef %s) #18, !dbg !179
  call void @llvm.dbg.value(metadata i64 %call, metadata !176, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !177
  %len = bitcast i8* %add.ptr to i64*, !dbg !180
  %0 = load i64, i64* %len, align 8, !dbg !180, !tbaa !63
  %sext = shl i64 %call, 32, !dbg !181
  %conv1 = ashr exact i64 %sext, 32, !dbg !181
  %sub = sub i64 %0, %conv1, !dbg !182
  %free = getelementptr inbounds i8, i8* %s, i64 -8, !dbg !183
  %1 = bitcast i8* %free to i64*, !dbg !183
  %2 = load i64, i64* %1, align 8, !dbg !184, !tbaa !63
  %add = add nsw i64 %sub, %2, !dbg !184
  store i64 %add, i64* %1, align 8, !dbg !184, !tbaa !63
  store i64 %conv1, i64* %len, align 8, !dbg !185, !tbaa !63
  ret void, !dbg !186
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @sdscatlen(i8* noundef %s, i8* noundef %t, i64 noundef %len) local_unnamed_addr #0 !dbg !187 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !191, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata i8* %t, metadata !192, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata i64 %len, metadata !193, metadata !DIExpression()), !dbg !196
  %call = tail call i64 @sdslen(i8* noundef %s) #16, !dbg !197
  call void @llvm.dbg.value(metadata i64 %call, metadata !195, metadata !DIExpression()), !dbg !196
  %call1 = tail call fastcc i8* @sdsMakeRoomFor(i8* noundef %s, i64 noundef %len) #16, !dbg !198
  call void @llvm.dbg.value(metadata i8* %call1, metadata !191, metadata !DIExpression()), !dbg !196
  %cmp = icmp eq i8* %call1, null, !dbg !199
  br i1 %cmp, label %cleanup, label %if.end, !dbg !201

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %call1, i64 -16, !dbg !202
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !194, metadata !DIExpression()), !dbg !196
  %add.ptr2 = getelementptr inbounds i8, i8* %call1, i64 %call, !dbg !203
  %call3 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr2, i8* noundef %t, i64 noundef %len) #15, !dbg !204
  %add = add i64 %call, %len, !dbg !205
  %len4 = bitcast i8* %add.ptr to i64*, !dbg !206
  store i64 %add, i64* %len4, align 8, !dbg !207, !tbaa !63
  %free = getelementptr inbounds i8, i8* %call1, i64 -8, !dbg !208
  %0 = bitcast i8* %free to i64*, !dbg !208
  %1 = load i64, i64* %0, align 8, !dbg !208, !tbaa !63
  %sub = sub i64 %1, %len, !dbg !209
  store i64 %sub, i64* %0, align 8, !dbg !210, !tbaa !63
  %arrayidx = getelementptr inbounds i8, i8* %call1, i64 %add, !dbg !211
  store i8 0, i8* %arrayidx, align 1, !dbg !212, !tbaa !82
  br label %cleanup, !dbg !213

cleanup:                                          ; preds = %entry, %if.end
  ret i8* %call1, !dbg !214
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @sdsMakeRoomFor(i8* noundef %s, i64 noundef %addlen) unnamed_addr #0 !dbg !215 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !219, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i64 %addlen, metadata !220, metadata !DIExpression()), !dbg !226
  %call = tail call i64 @sdsavail(i8* noundef %s) #16, !dbg !227
  call void @llvm.dbg.value(metadata i64 %call, metadata !223, metadata !DIExpression()), !dbg !226
  %cmp.not = icmp ult i64 %call, %addlen, !dbg !228
  br i1 %cmp.not, label %if.end, label %cleanup, !dbg !230

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @sdslen(i8* noundef %s) #16, !dbg !231
  call void @llvm.dbg.value(metadata i64 %call1, metadata !224, metadata !DIExpression()), !dbg !226
  %add.ptr = getelementptr inbounds i8, i8* %s, i64 -16, !dbg !232
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !221, metadata !DIExpression()), !dbg !226
  %add = add i64 %call1, %addlen, !dbg !233
  %mul = shl i64 %add, 1, !dbg !234
  call void @llvm.dbg.value(metadata i64 %mul, metadata !225, metadata !DIExpression()), !dbg !226
  %add3 = add i64 %mul, 17, !dbg !235
  %call4 = tail call i8* @zrealloc(i8* noundef nonnull %add.ptr, i64 noundef %add3) #15, !dbg !236
  call void @llvm.dbg.value(metadata i8* %call4, metadata !222, metadata !DIExpression()), !dbg !226
  %cmp5 = icmp eq i8* %call4, null, !dbg !237
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !239

if.then6:                                         ; preds = %if.end
  tail call fastcc void @sdsOomAbort() #16, !dbg !240
  unreachable, !dbg !240

if.end7:                                          ; preds = %if.end
  %sub = sub i64 %mul, %call1, !dbg !241
  %free8 = getelementptr inbounds i8, i8* %call4, i64 8, !dbg !242
  %0 = bitcast i8* %free8 to i64*, !dbg !242
  store i64 %sub, i64* %0, align 8, !dbg !243, !tbaa !63
  %buf = getelementptr inbounds i8, i8* %call4, i64 16, !dbg !244
  br label %cleanup, !dbg !245

cleanup:                                          ; preds = %entry, %if.end7
  %retval.0 = phi i8* [ %buf, %if.end7 ], [ %s, %entry ], !dbg !226
  ret i8* %retval.0, !dbg !246
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @sdscat(i8* noundef %s, i8* noundef %t) local_unnamed_addr #0 !dbg !247 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !251, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i8* %t, metadata !252, metadata !DIExpression()), !dbg !253
  %call = tail call i64 @strlen(i8* noundef %t) #18, !dbg !254
  %call1 = tail call i8* @sdscatlen(i8* noundef %s, i8* noundef %t, i64 noundef %call) #16, !dbg !255
  ret i8* %call1, !dbg !256
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @sdscpylen(i8* noundef %s, i8* noundef %t, i64 noundef %len) local_unnamed_addr #0 !dbg !257 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !261, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i8* %t, metadata !262, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i64 %len, metadata !263, metadata !DIExpression()), !dbg !266
  %add.ptr = getelementptr inbounds i8, i8* %s, i64 -16, !dbg !267
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !264, metadata !DIExpression()), !dbg !266
  %free = getelementptr inbounds i8, i8* %s, i64 -8, !dbg !268
  %0 = bitcast i8* %free to i64*, !dbg !268
  %1 = load i64, i64* %0, align 8, !dbg !268, !tbaa !63
  %len1 = bitcast i8* %add.ptr to i64*, !dbg !269
  %2 = load i64, i64* %len1, align 8, !dbg !269, !tbaa !63
  %add = add nsw i64 %2, %1, !dbg !270
  call void @llvm.dbg.value(metadata i64 %add, metadata !265, metadata !DIExpression()), !dbg !266
  %cmp = icmp ult i64 %add, %len, !dbg !271
  br i1 %cmp, label %if.then, label %if.end9, !dbg !273

if.then:                                          ; preds = %entry
  %sub = sub i64 %len, %2, !dbg !274
  %call = tail call fastcc i8* @sdsMakeRoomFor(i8* noundef nonnull %s, i64 noundef %sub) #16, !dbg !276
  call void @llvm.dbg.value(metadata i8* %call, metadata !261, metadata !DIExpression()), !dbg !266
  %cmp3 = icmp eq i8* %call, null, !dbg !277
  br i1 %cmp3, label %cleanup, label %if.end, !dbg !279

if.end:                                           ; preds = %if.then
  %add.ptr5 = getelementptr inbounds i8, i8* %call, i64 -16, !dbg !280
  call void @llvm.dbg.value(metadata i8* %add.ptr5, metadata !264, metadata !DIExpression()), !dbg !266
  %free6 = getelementptr inbounds i8, i8* %call, i64 -8, !dbg !281
  %3 = bitcast i8* %free6 to i64*, !dbg !281
  %4 = load i64, i64* %3, align 8, !dbg !281, !tbaa !63
  %len7 = bitcast i8* %add.ptr5 to i64*, !dbg !282
  %5 = load i64, i64* %len7, align 8, !dbg !282, !tbaa !63
  %add8 = add nsw i64 %5, %4, !dbg !283
  call void @llvm.dbg.value(metadata i64 %add8, metadata !265, metadata !DIExpression()), !dbg !266
  br label %if.end9, !dbg !284

if.end9:                                          ; preds = %if.end, %entry
  %len11.pre-phi = phi i64* [ %len7, %if.end ], [ %len1, %entry ], !dbg !285
  %s.addr.0 = phi i8* [ %call, %if.end ], [ %s, %entry ]
  %totlen.0 = phi i64 [ %add8, %if.end ], [ %add, %entry ], !dbg !266
  call void @llvm.dbg.value(metadata i64 %totlen.0, metadata !265, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i8* undef, metadata !264, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i8* %s.addr.0, metadata !261, metadata !DIExpression()), !dbg !266
  %call10 = tail call i8* @memcpy(i8* noundef nonnull %s.addr.0, i8* noundef %t, i64 noundef %len) #15, !dbg !286
  %arrayidx = getelementptr inbounds i8, i8* %s.addr.0, i64 %len, !dbg !287
  store i8 0, i8* %arrayidx, align 1, !dbg !288, !tbaa !82
  store i64 %len, i64* %len11.pre-phi, align 8, !dbg !289, !tbaa !63
  %sub12 = sub i64 %totlen.0, %len, !dbg !290
  %free13 = getelementptr inbounds i8, i8* %s.addr.0, i64 -8, !dbg !291
  %6 = bitcast i8* %free13 to i64*, !dbg !291
  store i64 %sub12, i64* %6, align 8, !dbg !292, !tbaa !63
  br label %cleanup, !dbg !293

cleanup:                                          ; preds = %if.then, %if.end9
  %retval.0 = phi i8* [ %s.addr.0, %if.end9 ], [ null, %if.then ], !dbg !266
  ret i8* %retval.0, !dbg !294
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @sdscpy(i8* noundef %s, i8* noundef %t) local_unnamed_addr #0 !dbg !295 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !297, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i8* %t, metadata !298, metadata !DIExpression()), !dbg !299
  %call = tail call i64 @strlen(i8* noundef %t) #18, !dbg !300
  %call1 = tail call i8* @sdscpylen(i8* noundef %s, i8* noundef %t, i64 noundef %call) #16, !dbg !301
  ret i8* %call1, !dbg !302
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @sdscatprintf(i8* noundef %s, i8* noundef %fmt, ...) local_unnamed_addr #0 !dbg !303 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i8* %s, metadata !307, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.value(metadata i8* %fmt, metadata !308, metadata !DIExpression()), !dbg !326
  %0 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !327
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #19, !dbg !327
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !309, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata i64 16, metadata !325, metadata !DIExpression()), !dbg !326
  %call27 = call i8* @zmalloc(i64 noundef 16) #15, !dbg !329
  call void @llvm.dbg.value(metadata i8* %call27, metadata !323, metadata !DIExpression()), !dbg !326
  %cmp28 = icmp eq i8* %call27, null, !dbg !331
  br i1 %cmp28, label %if.then, label %if.end.lr.ph, !dbg !333

if.end.lr.ph:                                     ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0
  br label %if.end, !dbg !333

if.then:                                          ; preds = %if.then10, %entry
  call fastcc void @sdsOomAbort() #16, !dbg !334
  unreachable, !dbg !334

if.end:                                           ; preds = %if.end.lr.ph, %if.then10
  %call30 = phi i8* [ %call27, %if.end.lr.ph ], [ %call, %if.then10 ]
  %buflen.029 = phi i64 [ 16, %if.end.lr.ph ], [ %mul, %if.then10 ]
  call void @llvm.dbg.value(metadata i64 %buflen.029, metadata !325, metadata !DIExpression()), !dbg !326
  %sub = add i64 %buflen.029, -2, !dbg !335
  %arrayidx = getelementptr inbounds i8, i8* %call30, i64 %sub, !dbg !336
  store i8 0, i8* %arrayidx, align 1, !dbg !337, !tbaa !82
  call void @llvm.va_start(i8* nonnull %0), !dbg !338
  %call3 = call i32 @vsnprintf(i8* noundef nonnull %call30, i64 noundef %buflen.029, i8* noundef %fmt, %struct.__va_list_tag* noundef nonnull %arraydecay) #15, !dbg !339
  call void @llvm.va_end(i8* nonnull %0), !dbg !340
  %1 = load i8, i8* %arrayidx, align 1, !dbg !341, !tbaa !82
  %cmp8.not = icmp eq i8 %1, 0, !dbg !343
  br i1 %cmp8.not, label %while.end, label %if.then10, !dbg !344

if.then10:                                        ; preds = %if.end
  call void @zfree(i8* noundef nonnull %call30) #15, !dbg !345
  %mul = shl i64 %buflen.029, 1, !dbg !347
  call void @llvm.dbg.value(metadata i64 %mul, metadata !325, metadata !DIExpression()), !dbg !326
  %call = call i8* @zmalloc(i64 noundef %mul) #15, !dbg !329
  call void @llvm.dbg.value(metadata i8* %call, metadata !323, metadata !DIExpression()), !dbg !326
  %cmp = icmp eq i8* %call, null, !dbg !331
  br i1 %cmp, label %if.then, label %if.end, !dbg !333, !llvm.loop !348

while.end:                                        ; preds = %if.end
  %call12 = call i8* @sdscat(i8* noundef %s, i8* noundef nonnull %call30) #16, !dbg !351
  call void @llvm.dbg.value(metadata i8* %call12, metadata !324, metadata !DIExpression()), !dbg !326
  call void @zfree(i8* noundef nonnull %call30) #15, !dbg !352
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #19, !dbg !353
  ret i8* %call12, !dbg !354
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #9

; Function Attrs: nounwind
declare !dbg !355 dso_local i32 @vsnprintf(i8* noundef, i64 noundef, i8* noundef, %struct.__va_list_tag* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #9

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @sdstrim(i8* noundef returned %s, i8* noundef readonly %cset) local_unnamed_addr #0 !dbg !362 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !366, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata i8* %cset, metadata !367, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata i8* %s, metadata !368, metadata !DIExpression(DW_OP_constu, 16, DW_OP_minus, DW_OP_stack_value)), !dbg !374
  call void @llvm.dbg.value(metadata i8* %s, metadata !369, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata i8* %s, metadata !371, metadata !DIExpression()), !dbg !374
  %call = tail call i64 @sdslen(i8* noundef %s) #16, !dbg !375
  %add.ptr1 = getelementptr inbounds i8, i8* %s, i64 %call, !dbg !376
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr1, i64 -1, !dbg !377
  call void @llvm.dbg.value(metadata i8* %add.ptr2, metadata !370, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata i8* %add.ptr2, metadata !372, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata i8* %s, metadata !371, metadata !DIExpression()), !dbg !374
  %cmp.not57 = icmp ult i8* %add.ptr2, %s, !dbg !378
  br i1 %cmp.not57, label %while.end, label %land.rhs, !dbg !379

land.rhs:                                         ; preds = %entry, %while.body
  %sp.058 = phi i8* [ %incdec.ptr, %while.body ], [ %s, %entry ]
  call void @llvm.dbg.value(metadata i8* %sp.058, metadata !371, metadata !DIExpression()), !dbg !374
  %0 = load i8, i8* %sp.058, align 1, !dbg !380, !tbaa !82
  %conv = sext i8 %0 to i32, !dbg !380
  %call3 = tail call i8* @strchr(i8* noundef %cset, i32 noundef %conv) #18, !dbg !381
  %tobool.not = icmp eq i8* %call3, null, !dbg !379
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !382

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr inbounds i8, i8* %sp.058, i64 1, !dbg !383
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !371, metadata !DIExpression()), !dbg !374
  %cmp.not = icmp ugt i8* %incdec.ptr, %add.ptr2, !dbg !378
  br i1 %cmp.not, label %while.end, label %land.rhs, !dbg !379, !llvm.loop !384

while.end:                                        ; preds = %land.rhs, %while.body, %entry
  %sp.0.lcssa = phi i8* [ %s, %entry ], [ %incdec.ptr, %while.body ], [ %sp.058, %land.rhs ], !dbg !374
  call void @llvm.dbg.value(metadata i8* %add.ptr2, metadata !372, metadata !DIExpression()), !dbg !374
  %cmp560 = icmp ugt i8* %add.ptr2, %s, !dbg !385
  br i1 %cmp560, label %land.rhs7, label %while.end14, !dbg !386

land.rhs7:                                        ; preds = %while.end, %while.body12
  %ep.061 = phi i8* [ %incdec.ptr13, %while.body12 ], [ %add.ptr2, %while.end ]
  call void @llvm.dbg.value(metadata i8* %ep.061, metadata !372, metadata !DIExpression()), !dbg !374
  %1 = load i8, i8* %ep.061, align 1, !dbg !387, !tbaa !82
  %conv8 = sext i8 %1 to i32, !dbg !387
  %call9 = tail call i8* @strchr(i8* noundef %cset, i32 noundef %conv8) #18, !dbg !388
  %tobool10.not = icmp eq i8* %call9, null, !dbg !386
  br i1 %tobool10.not, label %while.end14, label %while.body12, !dbg !389

while.body12:                                     ; preds = %land.rhs7
  %incdec.ptr13 = getelementptr inbounds i8, i8* %ep.061, i64 -1, !dbg !390
  call void @llvm.dbg.value(metadata i8* %incdec.ptr13, metadata !372, metadata !DIExpression()), !dbg !374
  %cmp5 = icmp ugt i8* %incdec.ptr13, %s, !dbg !385
  br i1 %cmp5, label %land.rhs7, label %while.end14, !dbg !386, !llvm.loop !391

while.end14:                                      ; preds = %land.rhs7, %while.body12, %while.end
  %ep.0.lcssa = phi i8* [ %add.ptr2, %while.end ], [ %s, %while.body12 ], [ %ep.061, %land.rhs7 ], !dbg !374
  %cmp15 = icmp ugt i8* %sp.0.lcssa, %ep.0.lcssa, !dbg !392
  %sub.ptr.lhs.cast = ptrtoint i8* %ep.0.lcssa to i64, !dbg !393
  %sub.ptr.rhs.cast = ptrtoint i8* %sp.0.lcssa to i64, !dbg !393
  %sub.ptr.sub = sub i64 1, %sub.ptr.rhs.cast, !dbg !393
  %add = add i64 %sub.ptr.sub, %sub.ptr.lhs.cast, !dbg !393
  %cond = select i1 %cmp15, i64 0, i64 %add, !dbg !393
  call void @llvm.dbg.value(metadata i64 %cond, metadata !373, metadata !DIExpression()), !dbg !374
  %cmp17.not = icmp eq i8* %sp.0.lcssa, %s, !dbg !394
  br i1 %cmp17.not, label %if.end, label %if.then, !dbg !396

if.then:                                          ; preds = %while.end14
  %call21 = tail call i8* @memmove(i8* noundef %s, i8* noundef %sp.0.lcssa, i64 noundef %cond) #15, !dbg !397
  br label %if.end, !dbg !397

if.end:                                           ; preds = %if.then, %while.end14
  %add.ptr = getelementptr inbounds i8, i8* %s, i64 -16, !dbg !398
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !368, metadata !DIExpression()), !dbg !374
  %arrayidx = getelementptr inbounds i8, i8* %s, i64 %cond, !dbg !399
  store i8 0, i8* %arrayidx, align 1, !dbg !400, !tbaa !82
  %free = getelementptr inbounds i8, i8* %s, i64 -8, !dbg !401
  %2 = bitcast i8* %free to i64*, !dbg !401
  %3 = load i64, i64* %2, align 8, !dbg !401, !tbaa !63
  %len23 = bitcast i8* %add.ptr to i64*, !dbg !402
  %4 = load i64, i64* %len23, align 8, !dbg !402, !tbaa !63
  %sub = sub i64 %3, %cond, !dbg !403
  %add24 = add i64 %sub, %4, !dbg !404
  store i64 %add24, i64* %2, align 8, !dbg !405, !tbaa !63
  store i64 %cond, i64* %len23, align 8, !dbg !406, !tbaa !63
  ret i8* %s, !dbg !407
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !408 dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !411 dso_local i8* @memmove(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @sdsrange(i8* noundef returned %s, i64 noundef %start, i64 noundef %end) local_unnamed_addr #0 !dbg !414 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !418, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.value(metadata i64 %start, metadata !419, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.value(metadata i64 %end, metadata !420, metadata !DIExpression()), !dbg !424
  %add.ptr = getelementptr inbounds i8, i8* %s, i64 -16, !dbg !425
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !421, metadata !DIExpression()), !dbg !424
  %call = tail call i64 @sdslen(i8* noundef %s) #16, !dbg !426
  call void @llvm.dbg.value(metadata i64 %call, metadata !423, metadata !DIExpression()), !dbg !424
  %cmp = icmp eq i64 %call, 0, !dbg !427
  br i1 %cmp, label %cleanup, label %if.end, !dbg !429

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i64 %start, 0, !dbg !430
  %add = add i64 %call, %start, !dbg !432
  %0 = icmp sgt i64 %add, 0, !dbg !432
  %spec.store.select = select i1 %0, i64 %add, i64 0, !dbg !432
  %start.addr.0 = select i1 %cmp1, i64 %spec.store.select, i64 %start, !dbg !432
  call void @llvm.dbg.value(metadata i64 %start.addr.0, metadata !419, metadata !DIExpression()), !dbg !424
  %cmp7 = icmp slt i64 %end, 0, !dbg !433
  %add9 = add i64 %call, %end, !dbg !435
  %1 = icmp sgt i64 %add9, 0, !dbg !435
  %spec.store.select56 = select i1 %1, i64 %add9, i64 0, !dbg !435
  %end.addr.0 = select i1 %cmp7, i64 %spec.store.select56, i64 %end, !dbg !435
  call void @llvm.dbg.value(metadata i64 %end.addr.0, metadata !420, metadata !DIExpression()), !dbg !424
  %cmp14 = icmp ult i64 %end.addr.0, %start.addr.0, !dbg !436
  %sub = sub nsw i64 %end.addr.0, %start.addr.0, !dbg !437
  call void @llvm.dbg.value(metadata i64 undef, metadata !422, metadata !DIExpression()), !dbg !424
  %cmp16.not95 = icmp eq i64 %sub, -1, !dbg !438
  %cmp16.not = select i1 %cmp14, i1 true, i1 %cmp16.not95, !dbg !438
  br i1 %cmp16.not, label %if.end47, label %if.end39, !dbg !440

if.end39:                                         ; preds = %if.end
  %sext = shl i64 %call, 32, !dbg !441
  %conv18 = ashr exact i64 %sext, 32, !dbg !441
  %cmp19.not = icmp slt i64 %start.addr.0, %conv18, !dbg !444
  %sub22 = add i64 %call, -1
  %spec.select = select i1 %cmp19.not, i64 %start.addr.0, i64 %sub22, !dbg !445
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !419, metadata !DIExpression()), !dbg !424
  %cmp26.not = icmp slt i64 %end.addr.0, %conv18, !dbg !446
  %end.addr.1 = select i1 %cmp26.not, i64 %end.addr.0, i64 %sub22, !dbg !448
  call void @llvm.dbg.value(metadata i64 %end.addr.1, metadata !420, metadata !DIExpression()), !dbg !424
  %cmp31 = icmp slt i64 %end.addr.1, %spec.select, !dbg !449
  %sub35 = sub i64 1, %spec.select, !dbg !450
  %add36 = add i64 %sub35, %end.addr.1, !dbg !450
  %cond38 = select i1 %cmp31, i64 0, i64 %add36, !dbg !450
  call void @llvm.dbg.value(metadata i64 %cond38, metadata !422, metadata !DIExpression()), !dbg !424
  %cmp40.not = icmp eq i64 %spec.select, 0, !dbg !451
  br i1 %cmp40.not, label %if.end47, label %if.then42, !dbg !453

if.then42:                                        ; preds = %if.end39
  %add.ptr45 = getelementptr inbounds i8, i8* %s, i64 %spec.select, !dbg !454
  %call46 = tail call i8* @memmove(i8* noundef %s, i8* noundef nonnull %add.ptr45, i64 noundef %cond38) #15, !dbg !455
  br label %if.end47, !dbg !455

if.end47:                                         ; preds = %if.end, %if.then42, %if.end39
  %newlen.099 = phi i64 [ %cond38, %if.then42 ], [ %cond38, %if.end39 ], [ 0, %if.end ]
  %arrayidx = getelementptr inbounds i8, i8* %s, i64 %newlen.099, !dbg !456
  store i8 0, i8* %arrayidx, align 1, !dbg !457, !tbaa !82
  %free = getelementptr inbounds i8, i8* %s, i64 -8, !dbg !458
  %2 = bitcast i8* %free to i64*, !dbg !458
  %3 = load i64, i64* %2, align 8, !dbg !458, !tbaa !63
  %len49 = bitcast i8* %add.ptr to i64*, !dbg !459
  %4 = load i64, i64* %len49, align 8, !dbg !459, !tbaa !63
  %sub50 = sub i64 %3, %newlen.099, !dbg !460
  %add51 = add i64 %sub50, %4, !dbg !461
  store i64 %add51, i64* %2, align 8, !dbg !462, !tbaa !63
  store i64 %newlen.099, i64* %len49, align 8, !dbg !463, !tbaa !63
  br label %cleanup, !dbg !464

cleanup:                                          ; preds = %entry, %if.end47
  ret i8* %s, !dbg !465
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @sdstolower(i8* nocapture noundef %s) local_unnamed_addr #10 !dbg !466 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !468, metadata !DIExpression()), !dbg !475
  %call = tail call i64 @sdslen(i8* noundef %s) #16, !dbg !476
  %conv = trunc i64 %call to i32, !dbg !476
  call void @llvm.dbg.value(metadata i32 %conv, metadata !469, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.value(metadata i32 0, metadata !470, metadata !DIExpression()), !dbg !475
  %cmp17 = icmp sgt i32 %conv, 0, !dbg !477
  br i1 %cmp17, label %for.body.lr.ph, label %for.end, !dbg !478

for.body.lr.ph:                                   ; preds = %entry
  %call2 = tail call i32** @__ctype_tolower_loc() #20, !dbg !475
  %wide.trip.count = and i64 %call, 4294967295, !dbg !477
  %0 = add nsw i64 %wide.trip.count, -1, !dbg !478
  %xtraiter = and i64 %call, 3, !dbg !478
  %1 = icmp ult i64 %0, 3, !dbg !478
  br i1 %1, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new, !dbg !478

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = sub nsw i64 %wide.trip.count, %xtraiter, !dbg !478
  br label %for.body, !dbg !478

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !470, metadata !DIExpression()), !dbg !475
  %2 = load i32*, i32** %call2, align 8, !dbg !479, !tbaa !93
  %arrayidx = getelementptr inbounds i8, i8* %s, i64 %indvars.iv, !dbg !479
  %3 = load i8, i8* %arrayidx, align 1, !dbg !479, !tbaa !82
  %idxprom4 = sext i8 %3 to i64, !dbg !479
  %arrayidx5 = getelementptr inbounds i32, i32* %2, i64 %idxprom4, !dbg !479
  %4 = load i32, i32* %arrayidx5, align 4, !dbg !479, !tbaa !481
  call void @llvm.dbg.value(metadata i32 %4, metadata !471, metadata !DIExpression()), !dbg !483
  %conv6 = trunc i32 %4 to i8, !dbg !484
  store i8 %conv6, i8* %arrayidx, align 1, !dbg !485, !tbaa !82
  %indvars.iv.next = or i64 %indvars.iv, 1, !dbg !486
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !470, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !470, metadata !DIExpression()), !dbg !475
  %5 = load i32*, i32** %call2, align 8, !dbg !479, !tbaa !93
  %arrayidx.1 = getelementptr inbounds i8, i8* %s, i64 %indvars.iv.next, !dbg !479
  %6 = load i8, i8* %arrayidx.1, align 1, !dbg !479, !tbaa !82
  %idxprom4.1 = sext i8 %6 to i64, !dbg !479
  %arrayidx5.1 = getelementptr inbounds i32, i32* %5, i64 %idxprom4.1, !dbg !479
  %7 = load i32, i32* %arrayidx5.1, align 4, !dbg !479, !tbaa !481
  call void @llvm.dbg.value(metadata i32 %7, metadata !471, metadata !DIExpression()), !dbg !483
  %conv6.1 = trunc i32 %7 to i8, !dbg !484
  store i8 %conv6.1, i8* %arrayidx.1, align 1, !dbg !485, !tbaa !82
  %indvars.iv.next.1 = or i64 %indvars.iv, 2, !dbg !486
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.1, metadata !470, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.1, metadata !470, metadata !DIExpression()), !dbg !475
  %8 = load i32*, i32** %call2, align 8, !dbg !479, !tbaa !93
  %arrayidx.2 = getelementptr inbounds i8, i8* %s, i64 %indvars.iv.next.1, !dbg !479
  %9 = load i8, i8* %arrayidx.2, align 1, !dbg !479, !tbaa !82
  %idxprom4.2 = sext i8 %9 to i64, !dbg !479
  %arrayidx5.2 = getelementptr inbounds i32, i32* %8, i64 %idxprom4.2, !dbg !479
  %10 = load i32, i32* %arrayidx5.2, align 4, !dbg !479, !tbaa !481
  call void @llvm.dbg.value(metadata i32 %10, metadata !471, metadata !DIExpression()), !dbg !483
  %conv6.2 = trunc i32 %10 to i8, !dbg !484
  store i8 %conv6.2, i8* %arrayidx.2, align 1, !dbg !485, !tbaa !82
  %indvars.iv.next.2 = or i64 %indvars.iv, 3, !dbg !486
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.2, metadata !470, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.2, metadata !470, metadata !DIExpression()), !dbg !475
  %11 = load i32*, i32** %call2, align 8, !dbg !479, !tbaa !93
  %arrayidx.3 = getelementptr inbounds i8, i8* %s, i64 %indvars.iv.next.2, !dbg !479
  %12 = load i8, i8* %arrayidx.3, align 1, !dbg !479, !tbaa !82
  %idxprom4.3 = sext i8 %12 to i64, !dbg !479
  %arrayidx5.3 = getelementptr inbounds i32, i32* %11, i64 %idxprom4.3, !dbg !479
  %13 = load i32, i32* %arrayidx5.3, align 4, !dbg !479, !tbaa !481
  call void @llvm.dbg.value(metadata i32 %13, metadata !471, metadata !DIExpression()), !dbg !483
  %conv6.3 = trunc i32 %13 to i8, !dbg !484
  store i8 %conv6.3, i8* %arrayidx.3, align 1, !dbg !485, !tbaa !82
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4, !dbg !486
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.3, metadata !470, metadata !DIExpression()), !dbg !475
  %niter.next.3 = add i64 %niter, 4, !dbg !478
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !478
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body, !dbg !478, !llvm.loop !487

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !478
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil, !dbg !478

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.epil, metadata !470, metadata !DIExpression()), !dbg !475
  %14 = load i32*, i32** %call2, align 8, !dbg !479, !tbaa !93
  %arrayidx.epil = getelementptr inbounds i8, i8* %s, i64 %indvars.iv.epil, !dbg !479
  %15 = load i8, i8* %arrayidx.epil, align 1, !dbg !479, !tbaa !82
  %idxprom4.epil = sext i8 %15 to i64, !dbg !479
  %arrayidx5.epil = getelementptr inbounds i32, i32* %14, i64 %idxprom4.epil, !dbg !479
  %16 = load i32, i32* %arrayidx5.epil, align 4, !dbg !479, !tbaa !481
  call void @llvm.dbg.value(metadata i32 %16, metadata !471, metadata !DIExpression()), !dbg !483
  %conv6.epil = trunc i32 %16 to i8, !dbg !484
  store i8 %conv6.epil, i8* %arrayidx.epil, align 1, !dbg !485, !tbaa !82
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1, !dbg !486
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.epil, metadata !470, metadata !DIExpression()), !dbg !475
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !478
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !478
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !dbg !478, !llvm.loop !489

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %entry
  ret void, !dbg !491
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #11

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @sdstoupper(i8* nocapture noundef %s) local_unnamed_addr #10 !dbg !492 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !494, metadata !DIExpression()), !dbg !501
  %call = tail call i64 @sdslen(i8* noundef %s) #16, !dbg !502
  %conv = trunc i64 %call to i32, !dbg !502
  call void @llvm.dbg.value(metadata i32 %conv, metadata !495, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i32 0, metadata !496, metadata !DIExpression()), !dbg !501
  %cmp17 = icmp sgt i32 %conv, 0, !dbg !503
  br i1 %cmp17, label %for.body.lr.ph, label %for.end, !dbg !504

for.body.lr.ph:                                   ; preds = %entry
  %call2 = tail call i32** @__ctype_toupper_loc() #20, !dbg !501
  %wide.trip.count = and i64 %call, 4294967295, !dbg !503
  %0 = add nsw i64 %wide.trip.count, -1, !dbg !504
  %xtraiter = and i64 %call, 3, !dbg !504
  %1 = icmp ult i64 %0, 3, !dbg !504
  br i1 %1, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new, !dbg !504

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = sub nsw i64 %wide.trip.count, %xtraiter, !dbg !504
  br label %for.body, !dbg !504

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !496, metadata !DIExpression()), !dbg !501
  %2 = load i32*, i32** %call2, align 8, !dbg !505, !tbaa !93
  %arrayidx = getelementptr inbounds i8, i8* %s, i64 %indvars.iv, !dbg !505
  %3 = load i8, i8* %arrayidx, align 1, !dbg !505, !tbaa !82
  %idxprom4 = sext i8 %3 to i64, !dbg !505
  %arrayidx5 = getelementptr inbounds i32, i32* %2, i64 %idxprom4, !dbg !505
  %4 = load i32, i32* %arrayidx5, align 4, !dbg !505, !tbaa !481
  call void @llvm.dbg.value(metadata i32 %4, metadata !497, metadata !DIExpression()), !dbg !507
  %conv6 = trunc i32 %4 to i8, !dbg !508
  store i8 %conv6, i8* %arrayidx, align 1, !dbg !509, !tbaa !82
  %indvars.iv.next = or i64 %indvars.iv, 1, !dbg !510
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !496, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !496, metadata !DIExpression()), !dbg !501
  %5 = load i32*, i32** %call2, align 8, !dbg !505, !tbaa !93
  %arrayidx.1 = getelementptr inbounds i8, i8* %s, i64 %indvars.iv.next, !dbg !505
  %6 = load i8, i8* %arrayidx.1, align 1, !dbg !505, !tbaa !82
  %idxprom4.1 = sext i8 %6 to i64, !dbg !505
  %arrayidx5.1 = getelementptr inbounds i32, i32* %5, i64 %idxprom4.1, !dbg !505
  %7 = load i32, i32* %arrayidx5.1, align 4, !dbg !505, !tbaa !481
  call void @llvm.dbg.value(metadata i32 %7, metadata !497, metadata !DIExpression()), !dbg !507
  %conv6.1 = trunc i32 %7 to i8, !dbg !508
  store i8 %conv6.1, i8* %arrayidx.1, align 1, !dbg !509, !tbaa !82
  %indvars.iv.next.1 = or i64 %indvars.iv, 2, !dbg !510
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.1, metadata !496, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.1, metadata !496, metadata !DIExpression()), !dbg !501
  %8 = load i32*, i32** %call2, align 8, !dbg !505, !tbaa !93
  %arrayidx.2 = getelementptr inbounds i8, i8* %s, i64 %indvars.iv.next.1, !dbg !505
  %9 = load i8, i8* %arrayidx.2, align 1, !dbg !505, !tbaa !82
  %idxprom4.2 = sext i8 %9 to i64, !dbg !505
  %arrayidx5.2 = getelementptr inbounds i32, i32* %8, i64 %idxprom4.2, !dbg !505
  %10 = load i32, i32* %arrayidx5.2, align 4, !dbg !505, !tbaa !481
  call void @llvm.dbg.value(metadata i32 %10, metadata !497, metadata !DIExpression()), !dbg !507
  %conv6.2 = trunc i32 %10 to i8, !dbg !508
  store i8 %conv6.2, i8* %arrayidx.2, align 1, !dbg !509, !tbaa !82
  %indvars.iv.next.2 = or i64 %indvars.iv, 3, !dbg !510
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.2, metadata !496, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.2, metadata !496, metadata !DIExpression()), !dbg !501
  %11 = load i32*, i32** %call2, align 8, !dbg !505, !tbaa !93
  %arrayidx.3 = getelementptr inbounds i8, i8* %s, i64 %indvars.iv.next.2, !dbg !505
  %12 = load i8, i8* %arrayidx.3, align 1, !dbg !505, !tbaa !82
  %idxprom4.3 = sext i8 %12 to i64, !dbg !505
  %arrayidx5.3 = getelementptr inbounds i32, i32* %11, i64 %idxprom4.3, !dbg !505
  %13 = load i32, i32* %arrayidx5.3, align 4, !dbg !505, !tbaa !481
  call void @llvm.dbg.value(metadata i32 %13, metadata !497, metadata !DIExpression()), !dbg !507
  %conv6.3 = trunc i32 %13 to i8, !dbg !508
  store i8 %conv6.3, i8* %arrayidx.3, align 1, !dbg !509, !tbaa !82
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4, !dbg !510
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.3, metadata !496, metadata !DIExpression()), !dbg !501
  %niter.next.3 = add i64 %niter, 4, !dbg !504
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !504
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body, !dbg !504, !llvm.loop !511

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !504
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil, !dbg !504

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.epil, metadata !496, metadata !DIExpression()), !dbg !501
  %14 = load i32*, i32** %call2, align 8, !dbg !505, !tbaa !93
  %arrayidx.epil = getelementptr inbounds i8, i8* %s, i64 %indvars.iv.epil, !dbg !505
  %15 = load i8, i8* %arrayidx.epil, align 1, !dbg !505, !tbaa !82
  %idxprom4.epil = sext i8 %15 to i64, !dbg !505
  %arrayidx5.epil = getelementptr inbounds i32, i32* %14, i64 %idxprom4.epil, !dbg !505
  %16 = load i32, i32* %arrayidx5.epil, align 4, !dbg !505, !tbaa !481
  call void @llvm.dbg.value(metadata i32 %16, metadata !497, metadata !DIExpression()), !dbg !507
  %conv6.epil = trunc i32 %16 to i8, !dbg !508
  store i8 %conv6.epil, i8* %arrayidx.epil, align 1, !dbg !509, !tbaa !82
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1, !dbg !510
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.epil, metadata !496, metadata !DIExpression()), !dbg !501
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !504
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !504
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !dbg !504, !llvm.loop !513

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %entry
  ret void, !dbg !514
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define dso_local i32 @sdscmp(i8* noundef readonly %s1, i8* noundef readonly %s2) local_unnamed_addr #12 !dbg !515 {
entry:
  call void @llvm.dbg.value(metadata i8* %s1, metadata !519, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata i8* %s2, metadata !520, metadata !DIExpression()), !dbg !525
  %call = tail call i64 @sdslen(i8* noundef %s1) #16, !dbg !526
  call void @llvm.dbg.value(metadata i64 %call, metadata !521, metadata !DIExpression()), !dbg !525
  %call1 = tail call i64 @sdslen(i8* noundef %s2) #16, !dbg !527
  call void @llvm.dbg.value(metadata i64 %call1, metadata !522, metadata !DIExpression()), !dbg !525
  %cmp2 = icmp ult i64 %call, %call1, !dbg !528
  %cond = select i1 %cmp2, i64 %call, i64 %call1, !dbg !529
  call void @llvm.dbg.value(metadata i64 %cond, metadata !523, metadata !DIExpression()), !dbg !525
  %call3 = tail call i32 @memcmp(i8* noundef %s1, i8* noundef %s2, i64 noundef %cond) #18, !dbg !530
  call void @llvm.dbg.value(metadata i32 %call3, metadata !524, metadata !DIExpression()), !dbg !525
  %cmp4 = icmp eq i32 %call3, 0, !dbg !531
  %sub = sub i64 %call, %call1, !dbg !533
  %conv = trunc i64 %sub to i32, !dbg !533
  %retval.0 = select i1 %cmp4, i32 %conv, i32 %call3, !dbg !533
  ret i32 %retval.0, !dbg !534
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !535 dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8** @sdssplitlen(i8* noundef %s, i32 noundef %len, i8* noundef readonly %sep, i32 noundef %seplen, i32* nocapture noundef writeonly %count) local_unnamed_addr #0 !dbg !538 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !544, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i32 %len, metadata !545, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i8* %sep, metadata !546, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i32 %seplen, metadata !547, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i32* %count, metadata !548, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i32 0, metadata !549, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i32 5, metadata !550, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i32 0, metadata !551, metadata !DIExpression()), !dbg !560
  %call = tail call i8* @zmalloc(i64 noundef 40) #15, !dbg !561
  %0 = bitcast i8* %call to i8**, !dbg !561
  call void @llvm.dbg.value(metadata i8** %0, metadata !553, metadata !DIExpression()), !dbg !560
  %cmp = icmp eq i8* %call, null, !dbg !562
  br i1 %cmp, label %if.end.thread, label %if.end, !dbg !564

if.end.thread:                                    ; preds = %entry
  tail call fastcc void @sdsOomAbort() #16, !dbg !565
  unreachable, !dbg !566

if.end:                                           ; preds = %entry
  %cmp2 = icmp slt i32 %seplen, 1, !dbg !568
  %cmp4 = icmp slt i32 %len, 0
  %or.cond = or i1 %cmp4, %cmp2, !dbg !566
  br i1 %or.cond, label %cleanup, label %if.end10, !dbg !566

if.end10:                                         ; preds = %if.end
  %cmp11 = icmp eq i32 %len, 0, !dbg !569
  br i1 %cmp11, label %cleanup.sink.split, label %for.cond.preheader, !dbg !571

for.cond.preheader:                               ; preds = %if.end10
  %sub.neg = add nuw i32 %len, 1
  %sub15 = sub i32 %sub.neg, %seplen
  call void @llvm.dbg.value(metadata i8** %0, metadata !553, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i32 0, metadata !552, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i32 0, metadata !551, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i32 5, metadata !550, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i32 0, metadata !549, metadata !DIExpression()), !dbg !560
  %cmp16134 = icmp sgt i32 %sub15, 0, !dbg !572
  br i1 %cmp16134, label %for.body.lr.ph, label %if.end73, !dbg !573

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cmp30 = icmp eq i32 %seplen, 1
  %conv39146 = zext i32 %seplen to i64
  br label %for.body, !dbg !573

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %tokens.0143 = phi i8** [ %0, %for.body.lr.ph ], [ %tokens.1, %for.inc ]
  %j.0140 = phi i32 [ 0, %for.body.lr.ph ], [ %inc60, %for.inc ]
  %start.0138 = phi i32 [ 0, %for.body.lr.ph ], [ %start.1, %for.inc ]
  %slots.0137 = phi i32 [ 5, %for.body.lr.ph ], [ %slots.1, %for.inc ]
  %elements.0135 = phi i32 [ 0, %for.body.lr.ph ], [ %elements.1, %for.inc ]
  call void @llvm.dbg.value(metadata i8** %tokens.0143, metadata !553, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i32 %j.0140, metadata !552, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i32 %start.0138, metadata !551, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i32 %slots.0137, metadata !550, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i32 %elements.0135, metadata !549, metadata !DIExpression()), !dbg !560
  %add = add nsw i32 %elements.0135, 2, !dbg !574
  %cmp18 = icmp slt i32 %slots.0137, %add, !dbg !575
  br i1 %cmp18, label %if.then20, label %if.end29, !dbg !576

if.then20:                                        ; preds = %for.body
  %mul21 = shl nsw i32 %slots.0137, 1, !dbg !577
  call void @llvm.dbg.value(metadata i32 %mul21, metadata !550, metadata !DIExpression()), !dbg !560
  %1 = bitcast i8** %tokens.0143 to i8*, !dbg !578
  %conv22 = sext i32 %mul21 to i64, !dbg !579
  %mul23 = shl nsw i64 %conv22, 3, !dbg !580
  %call24 = tail call i8* @zrealloc(i8* noundef %1, i64 noundef %mul23) #15, !dbg !581
  %2 = bitcast i8* %call24 to i8**, !dbg !581
  call void @llvm.dbg.value(metadata i8** %2, metadata !554, metadata !DIExpression()), !dbg !582
  %cmp25 = icmp eq i8* %call24, null, !dbg !583
  br i1 %cmp25, label %if.then27, label %if.end29, !dbg !585

if.then27:                                        ; preds = %if.then20
  tail call fastcc void @sdsOomAbort() #16, !dbg !586
  unreachable, !dbg !588

if.end29:                                         ; preds = %if.then20, %for.body
  %slots.1 = phi i32 [ %slots.0137, %for.body ], [ %mul21, %if.then20 ], !dbg !560
  %tokens.1 = phi i8** [ %tokens.0143, %for.body ], [ %2, %if.then20 ], !dbg !560
  call void @llvm.dbg.value(metadata i8** %tokens.1, metadata !553, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i32 %slots.1, metadata !550, metadata !DIExpression()), !dbg !560
  %idx.ext = sext i32 %j.0140 to i64, !dbg !589
  br i1 %cmp30, label %land.lhs.true, label %lor.lhs.false36, !dbg !591

land.lhs.true:                                    ; preds = %if.end29
  %add.ptr = getelementptr inbounds i8, i8* %s, i64 %idx.ext, !dbg !592
  %3 = load i8, i8* %add.ptr, align 1, !dbg !593, !tbaa !82
  %4 = load i8, i8* %sep, align 1, !dbg !594, !tbaa !82
  %cmp34 = icmp eq i8 %3, %4, !dbg !595
  br i1 %cmp34, label %if.end55, label %lor.lhs.false36, !dbg !596

lor.lhs.false36:                                  ; preds = %if.end29, %land.lhs.true
  %add.ptr38 = getelementptr inbounds i8, i8* %s, i64 %idx.ext, !dbg !597
  %call40 = tail call i32 @memcmp(i8* noundef %add.ptr38, i8* noundef %sep, i64 noundef %conv39146) #18, !dbg !598
  %cmp41 = icmp eq i32 %call40, 0, !dbg !599
  br i1 %cmp41, label %if.end55, label %for.inc, !dbg !600

if.end55:                                         ; preds = %land.lhs.true, %lor.lhs.false36
  %idx.ext44 = sext i32 %start.0138 to i64, !dbg !601
  %add.ptr45 = getelementptr inbounds i8, i8* %s, i64 %idx.ext44, !dbg !601
  %sub46 = sub nsw i32 %j.0140, %start.0138, !dbg !603
  %conv47 = sext i32 %sub46 to i64, !dbg !604
  %call48 = tail call i8* @sdsnewlen(i8* noundef %add.ptr45, i64 noundef %conv47) #16, !dbg !605
  %idxprom = sext i32 %elements.0135 to i64, !dbg !606
  %arrayidx49 = getelementptr inbounds i8*, i8** %tokens.1, i64 %idxprom, !dbg !606
  store i8* %call48, i8** %arrayidx49, align 8, !dbg !607, !tbaa !93
  %inc = add nsw i32 %elements.0135, 1, !dbg !608
  call void @llvm.dbg.value(metadata i32 %inc, metadata !549, metadata !DIExpression()), !dbg !560
  %add56 = add nsw i32 %j.0140, %seplen, !dbg !609
  call void @llvm.dbg.value(metadata i32 %add56, metadata !551, metadata !DIExpression()), !dbg !560
  %sub58 = add nsw i32 %add56, -1, !dbg !610
  call void @llvm.dbg.value(metadata i32 %sub58, metadata !552, metadata !DIExpression()), !dbg !560
  br label %for.inc, !dbg !611

for.inc:                                          ; preds = %lor.lhs.false36, %if.end55
  %elements.1 = phi i32 [ %inc, %if.end55 ], [ %elements.0135, %lor.lhs.false36 ], !dbg !560
  %start.1 = phi i32 [ %add56, %if.end55 ], [ %start.0138, %lor.lhs.false36 ], !dbg !560
  %j.1 = phi i32 [ %sub58, %if.end55 ], [ %j.0140, %lor.lhs.false36 ], !dbg !612
  call void @llvm.dbg.value(metadata i32 %j.1, metadata !552, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i32 %start.1, metadata !551, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i32 %elements.1, metadata !549, metadata !DIExpression()), !dbg !560
  %inc60 = add nsw i32 %j.1, 1, !dbg !613
  call void @llvm.dbg.value(metadata i8** %tokens.1, metadata !553, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i32 %inc60, metadata !552, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i32 %slots.1, metadata !550, metadata !DIExpression()), !dbg !560
  %cmp16 = icmp slt i32 %inc60, %sub15, !dbg !572
  br i1 %cmp16, label %for.body, label %if.end73, !dbg !573, !llvm.loop !614

if.end73:                                         ; preds = %for.inc, %for.cond.preheader
  %elements.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %elements.1, %for.inc ], !dbg !560
  %start.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %start.1, %for.inc ], !dbg !560
  %tokens.0.lcssa = phi i8** [ %0, %for.cond.preheader ], [ %tokens.1, %for.inc ], !dbg !560
  %idx.ext61 = sext i32 %start.0.lcssa to i64, !dbg !616
  %add.ptr62 = getelementptr inbounds i8, i8* %s, i64 %idx.ext61, !dbg !616
  %sub63 = sub nsw i32 %len, %start.0.lcssa, !dbg !617
  %conv64 = sext i32 %sub63 to i64, !dbg !618
  %call65 = tail call i8* @sdsnewlen(i8* noundef %add.ptr62, i64 noundef %conv64) #16, !dbg !619
  %idxprom66 = sext i32 %elements.0.lcssa to i64, !dbg !620
  %arrayidx67 = getelementptr inbounds i8*, i8** %tokens.0.lcssa, i64 %idxprom66, !dbg !620
  store i8* %call65, i8** %arrayidx67, align 8, !dbg !621, !tbaa !93
  %inc74 = add nsw i32 %elements.0.lcssa, 1, !dbg !622
  call void @llvm.dbg.value(metadata i32 %inc74, metadata !549, metadata !DIExpression()), !dbg !560
  br label %cleanup.sink.split, !dbg !623

cleanup.sink.split:                               ; preds = %if.end10, %if.end73
  %inc74.sink = phi i32 [ %inc74, %if.end73 ], [ 0, %if.end10 ]
  %retval.0.ph = phi i8** [ %tokens.0.lcssa, %if.end73 ], [ %0, %if.end10 ]
  store i32 %inc74.sink, i32* %count, align 4, !dbg !560, !tbaa !481
  br label %cleanup, !dbg !624

cleanup:                                          ; preds = %cleanup.sink.split, %if.end
  %retval.0 = phi i8** [ null, %if.end ], [ %retval.0.ph, %cleanup.sink.split ], !dbg !560
  ret i8** %retval.0, !dbg !624
}

declare !dbg !625 dso_local i8* @zrealloc(i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @sdsfreesplitres(i8** noundef %tokens, i32 noundef %count) local_unnamed_addr #0 !dbg !628 {
entry:
  call void @llvm.dbg.value(metadata i8** %tokens, metadata !632, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata i32 %count, metadata !633, metadata !DIExpression()), !dbg !634
  %tobool.not = icmp eq i8** %tokens, null, !dbg !635
  br i1 %tobool.not, label %return, label %while.cond.preheader, !dbg !637

while.cond.preheader:                             ; preds = %entry
  call void @llvm.dbg.value(metadata i32 %count, metadata !633, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata i32 %count, metadata !633, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !634
  %tobool1.not6 = icmp eq i32 %count, 0, !dbg !638
  br i1 %tobool1.not6, label %while.end, label %while.body.preheader, !dbg !638

while.body.preheader:                             ; preds = %while.cond.preheader
  %0 = sext i32 %count to i64, !dbg !638
  br label %while.body, !dbg !638

while.body:                                       ; preds = %while.body.preheader, %while.body
  %indvars.iv = phi i64 [ %0, %while.body.preheader ], [ %indvars.iv.next, %while.body ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !639
  %arrayidx = getelementptr inbounds i8*, i8** %tokens, i64 %indvars.iv.next, !dbg !640
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !640, !tbaa !93
  tail call void @sdsfree(i8* noundef %1) #16, !dbg !641
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !633, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !633, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !634
  %2 = trunc i64 %indvars.iv.next to i32, !dbg !638
  %tobool1.not = icmp eq i32 %2, 0, !dbg !638
  br i1 %tobool1.not, label %while.end, label %while.body, !dbg !638, !llvm.loop !642

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %3 = bitcast i8** %tokens to i8*, !dbg !644
  tail call void @zfree(i8* noundef nonnull %3) #15, !dbg !645
  br label %return, !dbg !646

return:                                           ; preds = %entry, %while.end
  ret void, !dbg !646
}

; Function Attrs: noinline nounwind uwtable
define dso_local nonnull i8* @sdsfromlonglong(i64 noundef %value) local_unnamed_addr #0 !dbg !647 {
entry:
  %buf = alloca [32 x i8], align 16
  call void @llvm.dbg.value(metadata i64 %value, metadata !652, metadata !DIExpression()), !dbg !660
  %0 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0, !dbg !661
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #19, !dbg !661
  call void @llvm.dbg.declare(metadata [32 x i8]* %buf, metadata !653, metadata !DIExpression()), !dbg !662
  %cmp = icmp slt i64 %value, 0, !dbg !663
  %sub = sub nsw i64 0, %value, !dbg !664
  %cond = select i1 %cmp, i64 %sub, i64 %value, !dbg !664
  call void @llvm.dbg.value(metadata i64 %cond, metadata !658, metadata !DIExpression()), !dbg !660
  %add.ptr = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 31, !dbg !665
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !657, metadata !DIExpression()), !dbg !660
  br label %do.body, !dbg !666

do.body:                                          ; preds = %do.body, %entry
  %p.0 = phi i8* [ %add.ptr, %entry ], [ %incdec.ptr, %do.body ], !dbg !660
  %v.0 = phi i64 [ %cond, %entry ], [ %div, %do.body ], !dbg !660
  call void @llvm.dbg.value(metadata i64 %v.0, metadata !658, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !657, metadata !DIExpression()), !dbg !660
  %rem = urem i64 %v.0, 10, !dbg !667
  %1 = trunc i64 %rem to i8, !dbg !669
  %conv = or i8 %1, 48, !dbg !669
  %incdec.ptr = getelementptr inbounds i8, i8* %p.0, i64 -1, !dbg !670
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !657, metadata !DIExpression()), !dbg !660
  store i8 %conv, i8* %p.0, align 1, !dbg !671, !tbaa !82
  %div = udiv i64 %v.0, 10, !dbg !672
  call void @llvm.dbg.value(metadata i64 %div, metadata !658, metadata !DIExpression()), !dbg !660
  %2 = icmp ult i64 %v.0, 10, !dbg !673
  br i1 %2, label %do.end, label %do.body, !dbg !673, !llvm.loop !674

do.end:                                           ; preds = %do.body
  br i1 %cmp, label %if.then, label %if.end, !dbg !676

if.then:                                          ; preds = %do.end
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !657, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !660
  store i8 45, i8* %incdec.ptr, align 1, !dbg !677, !tbaa !82
  br label %if.end, !dbg !679

if.end:                                           ; preds = %if.then, %do.end
  %3 = phi i64 [ -2, %if.then ], [ -1, %do.end ], !dbg !660
  %4 = getelementptr inbounds i8, i8* %p.0, i64 %3, !dbg !680
  call void @llvm.dbg.value(metadata i8* undef, metadata !657, metadata !DIExpression()), !dbg !660
  %incdec.ptr4 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !681
  call void @llvm.dbg.value(metadata i8* %incdec.ptr4, metadata !657, metadata !DIExpression()), !dbg !660
  %sub.ptr.lhs.cast = ptrtoint i8* %incdec.ptr4 to i64, !dbg !682
  %sub.ptr.rhs.cast = ptrtoint [32 x i8]* %buf to i64, !dbg !682
  %sub.ptr.sub.neg = add i64 %sub.ptr.rhs.cast, 32, !dbg !682
  %sub6 = sub i64 %sub.ptr.sub.neg, %sub.ptr.lhs.cast, !dbg !683
  %call = call i8* @sdsnewlen(i8* noundef nonnull %incdec.ptr4, i64 noundef %sub6) #16, !dbg !684
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #19, !dbg !685
  ret i8* %call, !dbg !686
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8** @sdssplitargs(i8* noundef %line, i32* nocapture noundef %argc) local_unnamed_addr #0 !dbg !687 {
entry:
  %c = alloca i8, align 1
  call void @llvm.dbg.value(metadata i8* %line, metadata !691, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.value(metadata i32* %argc, metadata !692, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.value(metadata i8* %line, metadata !693, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.value(metadata i8* null, metadata !694, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.value(metadata i8** null, metadata !695, metadata !DIExpression()), !dbg !709
  store i32 0, i32* %argc, align 4, !dbg !709, !tbaa !481
  %0 = load i8, i8* %line, align 1, !dbg !710, !tbaa !82
  %tobool.not132191 = icmp eq i8 %0, 0, !dbg !710
  br i1 %tobool.not132191, label %cleanup83, label %land.rhs.lr.ph.preheader, !dbg !711

land.rhs.lr.ph.preheader:                         ; preds = %entry
  %call = tail call i16** @__ctype_b_loc() #20, !dbg !709
  br label %land.rhs.lr.ph, !dbg !711

land.rhs.lr.ph:                                   ; preds = %land.rhs.lr.ph.preheader, %cleanup
  %1 = phi i8 [ %19, %cleanup ], [ %0, %land.rhs.lr.ph.preheader ]
  %vector.0193 = phi i8** [ %17, %cleanup ], [ null, %land.rhs.lr.ph.preheader ]
  %p.0192 = phi i8* [ %spec.select153, %cleanup ], [ %line, %land.rhs.lr.ph.preheader ]
  call void @llvm.dbg.value(metadata i8** %vector.0193, metadata !695, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.value(metadata i8* %p.0192, metadata !693, metadata !DIExpression()), !dbg !709
  %2 = load i16*, i16** %call, align 8, !tbaa !93
  br label %land.rhs, !dbg !711

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body5
  %3 = phi i8 [ %1, %land.rhs.lr.ph ], [ %6, %while.body5 ]
  %p.1133 = phi i8* [ %p.0192, %land.rhs.lr.ph ], [ %incdec.ptr, %while.body5 ]
  call void @llvm.dbg.value(metadata i8* %p.1133, metadata !693, metadata !DIExpression()), !dbg !709
  %idxprom = sext i8 %3 to i64, !dbg !712
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !712
  %4 = load i16, i16* %arrayidx, align 2, !dbg !712, !tbaa !713
  %5 = and i16 %4, 8192, !dbg !712
  %tobool4.not = icmp eq i16 %5, 0, !dbg !711
  br i1 %tobool4.not, label %if.then8, label %while.body5, !dbg !715

while.body5:                                      ; preds = %land.rhs
  %incdec.ptr = getelementptr inbounds i8, i8* %p.1133, i64 1, !dbg !716
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !693, metadata !DIExpression()), !dbg !709
  %6 = load i8, i8* %incdec.ptr, align 1, !dbg !710, !tbaa !82
  %tobool.not = icmp eq i8 %6, 0, !dbg !710
  br i1 %tobool.not, label %cleanup83, label %land.rhs, !dbg !711, !llvm.loop !717

if.then8:                                         ; preds = %land.rhs
  call void @llvm.dbg.value(metadata i32 0, metadata !697, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 0, metadata !701, metadata !DIExpression()), !dbg !718
  %call9 = call i8* @sdsempty() #16, !dbg !719
  call void @llvm.dbg.value(metadata i8* %call9, metadata !694, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.value(metadata i8* %call9, metadata !694, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.value(metadata i32 0, metadata !701, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 0, metadata !697, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %p.1133, metadata !693, metadata !DIExpression()), !dbg !709
  br label %while.body12, !dbg !721

while.body12:                                     ; preds = %if.end61, %if.then8
  %inq.0137 = phi i32 [ 0, %if.then8 ], [ %inq.1, %if.end61 ]
  %current.2136 = phi i8* [ %call9, %if.then8 ], [ %current.3, %if.end61 ]
  %p.2135 = phi i8* [ %p.1133, %if.then8 ], [ %spec.select, %if.end61 ]
  call void @llvm.dbg.value(metadata i32 %inq.0137, metadata !697, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %current.2136, metadata !694, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.value(metadata i8* %p.2135, metadata !693, metadata !DIExpression()), !dbg !709
  %tobool13.not = icmp eq i32 %inq.0137, 0, !dbg !722
  %7 = load i8, i8* %p.2135, align 1, !dbg !723, !tbaa !82
  br i1 %tobool13.not, label %if.else54, label %if.then14, !dbg !724

if.then14:                                        ; preds = %while.body12
  switch i8 %7, label %if.else49 [
    i8 92, label %land.lhs.true
    i8 34, label %if.then31
    i8 0, label %while.cond74.preheader
  ], !dbg !725

land.lhs.true:                                    ; preds = %if.then14
  %add.ptr = getelementptr inbounds i8, i8* %p.2135, i64 1, !dbg !726
  %8 = load i8, i8* %add.ptr, align 1, !dbg !727, !tbaa !82
  %tobool19.not = icmp eq i8 %8, 0, !dbg !727
  br i1 %tobool19.not, label %if.else49, label %if.then20, !dbg !728

if.then20:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %c) #19, !dbg !729
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !693, metadata !DIExpression()), !dbg !709
  %conv22 = sext i8 %8 to i32, !dbg !730
  switch i32 %conv22, label %sw.default [
    i32 110, label %sw.bb
    i32 114, label %sw.bb23
    i32 116, label %sw.bb24
    i32 98, label %sw.bb25
    i32 97, label %sw.bb26
  ], !dbg !731

sw.bb:                                            ; preds = %if.then20
  call void @llvm.dbg.value(metadata i8 10, metadata !702, metadata !DIExpression()), !dbg !732
  store i8 10, i8* %c, align 1, !dbg !733, !tbaa !82
  br label %sw.epilog, !dbg !735

sw.bb23:                                          ; preds = %if.then20
  call void @llvm.dbg.value(metadata i8 13, metadata !702, metadata !DIExpression()), !dbg !732
  store i8 13, i8* %c, align 1, !dbg !736, !tbaa !82
  br label %sw.epilog, !dbg !737

sw.bb24:                                          ; preds = %if.then20
  call void @llvm.dbg.value(metadata i8 9, metadata !702, metadata !DIExpression()), !dbg !732
  store i8 9, i8* %c, align 1, !dbg !738, !tbaa !82
  br label %sw.epilog, !dbg !739

sw.bb25:                                          ; preds = %if.then20
  call void @llvm.dbg.value(metadata i8 8, metadata !702, metadata !DIExpression()), !dbg !732
  store i8 8, i8* %c, align 1, !dbg !740, !tbaa !82
  br label %sw.epilog, !dbg !741

sw.bb26:                                          ; preds = %if.then20
  call void @llvm.dbg.value(metadata i8 7, metadata !702, metadata !DIExpression()), !dbg !732
  store i8 7, i8* %c, align 1, !dbg !742, !tbaa !82
  br label %sw.epilog, !dbg !743

sw.default:                                       ; preds = %if.then20
  call void @llvm.dbg.value(metadata i8 %8, metadata !702, metadata !DIExpression()), !dbg !732
  store i8 %8, i8* %c, align 1, !dbg !744, !tbaa !82
  br label %sw.epilog, !dbg !745

sw.epilog:                                        ; preds = %sw.default, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb
  call void @llvm.dbg.value(metadata i8* %c, metadata !702, metadata !DIExpression(DW_OP_deref)), !dbg !732
  %call27 = call i8* @sdscatlen(i8* noundef %current.2136, i8* noundef nonnull %c, i64 noundef 1) #16, !dbg !746
  call void @llvm.dbg.value(metadata i8* %call27, metadata !694, metadata !DIExpression()), !dbg !709
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %c) #19, !dbg !747
  br label %if.end61, !dbg !748

if.then31:                                        ; preds = %if.then14
  %add.ptr32 = getelementptr inbounds i8, i8* %p.2135, i64 1, !dbg !749
  %9 = load i8, i8* %add.ptr32, align 1, !dbg !753, !tbaa !82
  %tobool34.not = icmp eq i8 %9, 0, !dbg !753
  br i1 %tobool34.not, label %cleanup, label %land.lhs.true35, !dbg !754

land.lhs.true35:                                  ; preds = %if.then31
  %10 = load i16*, i16** %call, align 8, !dbg !755, !tbaa !93
  %idxprom39 = sext i8 %9 to i64, !dbg !755
  %arrayidx40 = getelementptr inbounds i16, i16* %10, i64 %idxprom39, !dbg !755
  %11 = load i16, i16* %arrayidx40, align 2, !dbg !755, !tbaa !713
  %12 = and i16 %11, 8192, !dbg !755
  %tobool43.not = icmp eq i16 %12, 0, !dbg !755
  br i1 %tobool43.not, label %while.cond74.preheader, label %cleanup, !dbg !756

if.else49:                                        ; preds = %if.then14, %land.lhs.true
  %call50 = call i8* @sdscatlen(i8* noundef %current.2136, i8* noundef nonnull %p.2135, i64 noundef 1) #16, !dbg !757
  call void @llvm.dbg.value(metadata i8* %call50, metadata !694, metadata !DIExpression()), !dbg !709
  br label %if.end61

if.else54:                                        ; preds = %while.body12
  %conv55 = sext i8 %7 to i32, !dbg !760
  switch i32 %conv55, label %sw.default58 [
    i32 32, label %cleanup
    i32 10, label %cleanup
    i32 13, label %cleanup
    i32 9, label %cleanup
    i32 0, label %cleanup
    i32 34, label %if.end61
  ], !dbg !762

sw.default58:                                     ; preds = %if.else54
  %call59 = call i8* @sdscatlen(i8* noundef %current.2136, i8* noundef nonnull %p.2135, i64 noundef 1) #16, !dbg !763
  call void @llvm.dbg.value(metadata i8* %call59, metadata !694, metadata !DIExpression()), !dbg !709
  br label %if.end61, !dbg !765

if.end61:                                         ; preds = %if.else54, %sw.default58, %sw.epilog, %if.else49
  %p.3 = phi i8* [ %add.ptr, %sw.epilog ], [ %p.2135, %if.else49 ], [ %p.2135, %sw.default58 ], [ %p.2135, %if.else54 ], !dbg !709
  %current.3 = phi i8* [ %call27, %sw.epilog ], [ %call50, %if.else49 ], [ %call59, %sw.default58 ], [ %current.2136, %if.else54 ], !dbg !718
  %inq.1 = phi i32 [ 1, %sw.epilog ], [ 1, %if.else49 ], [ 0, %sw.default58 ], [ 1, %if.else54 ], !dbg !718
  call void @llvm.dbg.value(metadata i32 undef, metadata !701, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %inq.1, metadata !697, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %current.3, metadata !694, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.value(metadata i8* %p.3, metadata !693, metadata !DIExpression()), !dbg !709
  %13 = load i8, i8* %p.3, align 1, !dbg !766, !tbaa !82
  %tobool62.not = icmp ne i8 %13, 0, !dbg !766
  %spec.select.idx = zext i1 %tobool62.not to i64, !dbg !768
  %spec.select = getelementptr i8, i8* %p.3, i64 %spec.select.idx, !dbg !768
  call void @llvm.dbg.value(metadata i8* %spec.select, metadata !693, metadata !DIExpression()), !dbg !709
  br label %while.body12, !dbg !721, !llvm.loop !769

cleanup:                                          ; preds = %if.else54, %if.else54, %if.else54, %if.else54, %if.else54, %if.then31, %land.lhs.true35
  call void @llvm.dbg.value(metadata i32 undef, metadata !701, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %inq.1, metadata !697, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %current.3, metadata !694, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.value(metadata i8* %p.3, metadata !693, metadata !DIExpression()), !dbg !709
  %14 = load i8, i8* %p.2135, align 1, !dbg !766, !tbaa !82
  %tobool62.not151 = icmp ne i8 %14, 0, !dbg !766
  %spec.select.idx152 = zext i1 %tobool62.not151 to i64, !dbg !768
  %spec.select153 = getelementptr i8, i8* %p.2135, i64 %spec.select.idx152, !dbg !768
  call void @llvm.dbg.value(metadata i8* %spec.select, metadata !693, metadata !DIExpression()), !dbg !709
  %15 = bitcast i8** %vector.0193 to i8*, !dbg !771
  %16 = load i32, i32* %argc, align 4, !dbg !772, !tbaa !481
  %add = add nsw i32 %16, 1, !dbg !773
  %conv67 = sext i32 %add to i64, !dbg !774
  %mul = shl nsw i64 %conv67, 3, !dbg !775
  %call68 = call i8* @zrealloc(i8* noundef %15, i64 noundef %mul) #15, !dbg !776
  %17 = bitcast i8* %call68 to i8**, !dbg !776
  call void @llvm.dbg.value(metadata i8** %17, metadata !695, metadata !DIExpression()), !dbg !709
  %18 = load i32, i32* %argc, align 4, !dbg !777, !tbaa !481
  %idxprom69 = sext i32 %18 to i64, !dbg !778
  %arrayidx70 = getelementptr inbounds i8*, i8** %17, i64 %idxprom69, !dbg !778
  store i8* %current.2136, i8** %arrayidx70, align 8, !dbg !779, !tbaa !93
  %inc = add nsw i32 %18, 1, !dbg !780
  call void @llvm.dbg.value(metadata i8* null, metadata !694, metadata !DIExpression()), !dbg !709
  store i32 %inc, i32* %argc, align 4, !dbg !709, !tbaa !481
  call void @llvm.dbg.value(metadata i8* %spec.select153, metadata !693, metadata !DIExpression()), !dbg !709
  %19 = load i8, i8* %spec.select153, align 1, !dbg !710, !tbaa !82
  %tobool.not132 = icmp eq i8 %19, 0, !dbg !710
  br i1 %tobool.not132, label %cleanup83.loopexit196, label %land.rhs.lr.ph, !dbg !711

while.cond74.preheader:                           ; preds = %land.lhs.true35, %if.then14
  call void @llvm.dbg.value(metadata i8** %24, metadata !695, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.value(metadata i8* null, metadata !694, metadata !DIExpression()), !dbg !709
  %20 = load i32, i32* %argc, align 4, !dbg !781, !tbaa !481
  %dec138 = add nsw i32 %20, -1, !dbg !781
  store i32 %dec138, i32* %argc, align 4, !dbg !781, !tbaa !481
  %tobool75.not139 = icmp eq i32 %20, 0, !dbg !782
  br i1 %tobool75.not139, label %while.end79, label %while.body76, !dbg !782

while.body76:                                     ; preds = %while.cond74.preheader, %while.body76
  %dec140 = phi i32 [ %dec, %while.body76 ], [ %dec138, %while.cond74.preheader ]
  %idxprom77 = sext i32 %dec140 to i64, !dbg !783
  %arrayidx78 = getelementptr inbounds i8*, i8** %vector.0193, i64 %idxprom77, !dbg !783
  %21 = load i8*, i8** %arrayidx78, align 8, !dbg !783, !tbaa !93
  call void @sdsfree(i8* noundef %21) #16, !dbg !784
  %22 = load i32, i32* %argc, align 4, !dbg !781, !tbaa !481
  %dec = add nsw i32 %22, -1, !dbg !781
  store i32 %dec, i32* %argc, align 4, !dbg !781, !tbaa !481
  %tobool75.not = icmp eq i32 %22, 0, !dbg !782
  br i1 %tobool75.not, label %while.end79, label %while.body76, !dbg !782, !llvm.loop !785

while.end79:                                      ; preds = %while.body76, %while.cond74.preheader
  %23 = bitcast i8** %vector.0193 to i8*, !dbg !787
  call void @zfree(i8* noundef %23) #15, !dbg !788
  %tobool80.not = icmp eq i8* %current.2136, null, !dbg !789
  br i1 %tobool80.not, label %cleanup83, label %if.then81, !dbg !791

if.then81:                                        ; preds = %while.end79
  call void @sdsfree(i8* noundef nonnull %current.2136) #16, !dbg !792
  br label %cleanup83, !dbg !792

cleanup83.loopexit196:                            ; preds = %cleanup
  %24 = bitcast i8* %call68 to i8**, !dbg !776
  br label %cleanup83, !dbg !793

cleanup83:                                        ; preds = %while.body5, %cleanup83.loopexit196, %entry, %while.end79, %if.then81
  %retval.0 = phi i8** [ null, %if.then81 ], [ null, %while.end79 ], [ null, %entry ], [ %24, %cleanup83.loopexit196 ], [ %vector.0193, %while.body5 ]
  ret i8** %retval.0, !dbg !793
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() local_unnamed_addr #11

declare !dbg !794 dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare !dbg !850 dso_local void @abort() local_unnamed_addr #13

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #14

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn }
attributes #10 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nobuiltin nounwind "no-builtins" }
attributes #16 = { nobuiltin "no-builtins" }
attributes #17 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #18 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #19 = { nounwind }
attributes #20 = { nobuiltin nounwind readnone willreturn "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !19, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "sds.c", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "27b644bab9061399b3978ced41c4d9d7")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 46, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!7 = !DIEnumerator(name: "_ISupper", value: 256)
!8 = !DIEnumerator(name: "_ISlower", value: 512)
!9 = !DIEnumerator(name: "_ISalpha", value: 1024)
!10 = !DIEnumerator(name: "_ISdigit", value: 2048)
!11 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!12 = !DIEnumerator(name: "_ISspace", value: 8192)
!13 = !DIEnumerator(name: "_ISprint", value: 16384)
!14 = !DIEnumerator(name: "_ISgraph", value: 32768)
!15 = !DIEnumerator(name: "_ISblank", value: 1)
!16 = !DIEnumerator(name: "_IScntrl", value: 2)
!17 = !DIEnumerator(name: "_ISpunct", value: 4)
!18 = !DIEnumerator(name: "_ISalnum", value: 8)
!19 = !{!20, !21, !23, !24}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!25 = !{i32 7, !"Dwarf Version", i32 5}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 4}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{!"clang version 14.0.0"}
!30 = distinct !DISubprogram(name: "sdsnewlen", scope: !1, file: !1, line: 46, type: !31, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !40)
!31 = !DISubroutineType(types: !32)
!32 = !{!33, !35, !37}
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !34, line: 36, baseType: !21)
!34 = !DIFile(filename: "./sds.h", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "be5f4c5599eae55b8730033246030f20")
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !38, line: 46, baseType: !39)
!38 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!39 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!40 = !{!41, !42, !43}
!41 = !DILocalVariable(name: "init", arg: 1, scope: !30, file: !1, line: 46, type: !35)
!42 = !DILocalVariable(name: "initlen", arg: 2, scope: !30, file: !1, line: 46, type: !37)
!43 = !DILocalVariable(name: "sh", scope: !30, file: !1, line: 47, type: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr", file: !34, line: 38, size: 128, elements: !46)
!46 = !{!47, !49, !50}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !45, file: !34, line: 39, baseType: !48, size: 64)
!48 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !45, file: !34, line: 40, baseType: !48, size: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !45, file: !34, line: 41, baseType: !51, offset: 128)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: -1)
!54 = !DILocation(line: 0, scope: !30)
!55 = !DILocation(line: 49, column: 47, scope: !30)
!56 = !DILocation(line: 49, column: 10, scope: !30)
!57 = !DILocation(line: 51, column: 12, scope: !58)
!58 = distinct !DILexicalBlock(scope: !30, file: !1, line: 51, column: 9)
!59 = !DILocation(line: 51, column: 9, scope: !30)
!60 = !DILocation(line: 51, column: 21, scope: !58)
!61 = !DILocation(line: 55, column: 9, scope: !30)
!62 = !DILocation(line: 55, column: 13, scope: !30)
!63 = !{!64, !64, i64 0}
!64 = !{!"long", !65, i64 0}
!65 = !{!"omnipotent char", !66, i64 0}
!66 = !{!"Simple C/C++ TBAA"}
!67 = !DILocation(line: 56, column: 9, scope: !30)
!68 = !DILocation(line: 56, column: 14, scope: !30)
!69 = !DILocation(line: 57, column: 9, scope: !70)
!70 = distinct !DILexicalBlock(scope: !30, file: !1, line: 57, column: 9)
!71 = !DILocation(line: 57, column: 9, scope: !30)
!72 = !DILocation(line: 58, column: 13, scope: !73)
!73 = distinct !DILexicalBlock(scope: !74, file: !1, line: 58, column: 13)
!74 = distinct !DILexicalBlock(scope: !70, file: !1, line: 57, column: 18)
!75 = !DILocation(line: 0, scope: !73)
!76 = !DILocation(line: 58, column: 13, scope: !74)
!77 = !DILocation(line: 58, column: 19, scope: !73)
!78 = !DILocation(line: 59, column: 14, scope: !73)
!79 = !DILocation(line: 61, column: 9, scope: !30)
!80 = !DILocation(line: 61, column: 5, scope: !30)
!81 = !DILocation(line: 61, column: 22, scope: !30)
!82 = !{!65, !65, i64 0}
!83 = !DILocation(line: 62, column: 5, scope: !30)
!84 = !DISubprogram(name: "zmalloc", scope: !85, file: !85, line: 34, type: !86, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !88)
!85 = !DIFile(filename: "./zmalloc.h", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "8c6e7e80b58457b2728e51e83fedc2bb")
!86 = !DISubroutineType(types: !87)
!87 = !{!20, !37}
!88 = !{}
!89 = distinct !DISubprogram(name: "sdsOomAbort", scope: !1, file: !1, line: 41, type: !90, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!90 = !DISubroutineType(types: !91)
!91 = !{null}
!92 = !DILocation(line: 42, column: 13, scope: !89)
!93 = !{!94, !94, i64 0}
!94 = !{!"any pointer", !65, i64 0}
!95 = !DILocation(line: 42, column: 5, scope: !89)
!96 = !DILocation(line: 43, column: 5, scope: !89)
!97 = !DISubprogram(name: "memcpy", scope: !98, file: !98, line: 43, type: !99, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !88)
!98 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "61f60112cf5c0a45c54ea1f595add24c")
!99 = !DISubroutineType(types: !100)
!100 = !{!20, !101, !102, !37}
!101 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !20)
!102 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !35)
!103 = !DISubprogram(name: "memset", scope: !98, file: !98, line: 61, type: !104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !88)
!104 = !DISubroutineType(types: !105)
!105 = !{!20, !20, !23, !37}
!106 = distinct !DISubprogram(name: "sdsempty", scope: !1, file: !1, line: 65, type: !107, scopeLine: 65, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!107 = !DISubroutineType(types: !108)
!108 = !{!33}
!109 = !DILocation(line: 66, column: 12, scope: !106)
!110 = !DILocation(line: 66, column: 5, scope: !106)
!111 = distinct !DISubprogram(name: "sdsnew", scope: !1, file: !1, line: 69, type: !112, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !116)
!112 = !DISubroutineType(types: !113)
!113 = !{!33, !114}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!116 = !{!117, !118}
!117 = !DILocalVariable(name: "init", arg: 1, scope: !111, file: !1, line: 69, type: !114)
!118 = !DILocalVariable(name: "initlen", scope: !111, file: !1, line: 70, type: !37)
!119 = !DILocation(line: 0, scope: !111)
!120 = !DILocation(line: 70, column: 28, scope: !111)
!121 = !DILocation(line: 70, column: 22, scope: !111)
!122 = !DILocation(line: 70, column: 43, scope: !111)
!123 = !DILocation(line: 71, column: 12, scope: !111)
!124 = !DILocation(line: 71, column: 5, scope: !111)
!125 = !DISubprogram(name: "strlen", scope: !98, file: !98, line: 385, type: !126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !88)
!126 = !DISubroutineType(types: !127)
!127 = !{!37, !114}
!128 = distinct !DISubprogram(name: "sdslen", scope: !1, file: !1, line: 74, type: !129, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !132)
!129 = !DISubroutineType(types: !130)
!130 = !{!37, !131}
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!132 = !{!133, !134}
!133 = !DILocalVariable(name: "s", arg: 1, scope: !128, file: !1, line: 74, type: !131)
!134 = !DILocalVariable(name: "sh", scope: !128, file: !1, line: 75, type: !44)
!135 = !DILocation(line: 0, scope: !128)
!136 = !DILocation(line: 75, column: 35, scope: !128)
!137 = !DILocation(line: 76, column: 16, scope: !128)
!138 = !DILocation(line: 76, column: 5, scope: !128)
!139 = distinct !DISubprogram(name: "sdsdup", scope: !1, file: !1, line: 79, type: !140, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !142)
!140 = !DISubroutineType(types: !141)
!141 = !{!33, !131}
!142 = !{!143}
!143 = !DILocalVariable(name: "s", arg: 1, scope: !139, file: !1, line: 79, type: !131)
!144 = !DILocation(line: 0, scope: !139)
!145 = !DILocation(line: 80, column: 25, scope: !139)
!146 = !DILocation(line: 80, column: 12, scope: !139)
!147 = !DILocation(line: 80, column: 5, scope: !139)
!148 = distinct !DISubprogram(name: "sdsfree", scope: !1, file: !1, line: 83, type: !149, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !151)
!149 = !DISubroutineType(types: !150)
!150 = !{null, !33}
!151 = !{!152}
!152 = !DILocalVariable(name: "s", arg: 1, scope: !148, file: !1, line: 83, type: !33)
!153 = !DILocation(line: 0, scope: !148)
!154 = !DILocation(line: 84, column: 11, scope: !155)
!155 = distinct !DILexicalBlock(scope: !148, file: !1, line: 84, column: 9)
!156 = !DILocation(line: 84, column: 9, scope: !148)
!157 = !DILocation(line: 85, column: 12, scope: !148)
!158 = !DILocation(line: 85, column: 5, scope: !148)
!159 = !DILocation(line: 86, column: 1, scope: !148)
!160 = !DISubprogram(name: "zfree", scope: !85, file: !85, line: 36, type: !161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !88)
!161 = !DISubroutineType(types: !162)
!162 = !{null, !20}
!163 = distinct !DISubprogram(name: "sdsavail", scope: !1, file: !1, line: 88, type: !164, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !166)
!164 = !DISubroutineType(types: !165)
!165 = !{!37, !33}
!166 = !{!167, !168}
!167 = !DILocalVariable(name: "s", arg: 1, scope: !163, file: !1, line: 88, type: !33)
!168 = !DILocalVariable(name: "sh", scope: !163, file: !1, line: 89, type: !44)
!169 = !DILocation(line: 0, scope: !163)
!170 = !DILocation(line: 90, column: 16, scope: !163)
!171 = !DILocation(line: 90, column: 5, scope: !163)
!172 = distinct !DISubprogram(name: "sdsupdatelen", scope: !1, file: !1, line: 93, type: !149, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !173)
!173 = !{!174, !175, !176}
!174 = !DILocalVariable(name: "s", arg: 1, scope: !172, file: !1, line: 93, type: !33)
!175 = !DILocalVariable(name: "sh", scope: !172, file: !1, line: 94, type: !44)
!176 = !DILocalVariable(name: "reallen", scope: !172, file: !1, line: 95, type: !23)
!177 = !DILocation(line: 0, scope: !172)
!178 = !DILocation(line: 94, column: 35, scope: !172)
!179 = !DILocation(line: 95, column: 19, scope: !172)
!180 = !DILocation(line: 96, column: 22, scope: !172)
!181 = !DILocation(line: 96, column: 26, scope: !172)
!182 = !DILocation(line: 96, column: 25, scope: !172)
!183 = !DILocation(line: 96, column: 9, scope: !172)
!184 = !DILocation(line: 96, column: 14, scope: !172)
!185 = !DILocation(line: 97, column: 13, scope: !172)
!186 = !DILocation(line: 98, column: 1, scope: !172)
!187 = distinct !DISubprogram(name: "sdscatlen", scope: !1, file: !1, line: 120, type: !188, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !190)
!188 = !DISubroutineType(types: !189)
!189 = !{!33, !33, !20, !37}
!190 = !{!191, !192, !193, !194, !195}
!191 = !DILocalVariable(name: "s", arg: 1, scope: !187, file: !1, line: 120, type: !33)
!192 = !DILocalVariable(name: "t", arg: 2, scope: !187, file: !1, line: 120, type: !20)
!193 = !DILocalVariable(name: "len", arg: 3, scope: !187, file: !1, line: 120, type: !37)
!194 = !DILocalVariable(name: "sh", scope: !187, file: !1, line: 121, type: !44)
!195 = !DILocalVariable(name: "curlen", scope: !187, file: !1, line: 122, type: !37)
!196 = !DILocation(line: 0, scope: !187)
!197 = !DILocation(line: 122, column: 21, scope: !187)
!198 = !DILocation(line: 124, column: 9, scope: !187)
!199 = !DILocation(line: 125, column: 11, scope: !200)
!200 = distinct !DILexicalBlock(scope: !187, file: !1, line: 125, column: 9)
!201 = !DILocation(line: 125, column: 9, scope: !187)
!202 = !DILocation(line: 126, column: 20, scope: !187)
!203 = !DILocation(line: 127, column: 13, scope: !187)
!204 = !DILocation(line: 127, column: 5, scope: !187)
!205 = !DILocation(line: 128, column: 21, scope: !187)
!206 = !DILocation(line: 128, column: 9, scope: !187)
!207 = !DILocation(line: 128, column: 13, scope: !187)
!208 = !DILocation(line: 129, column: 20, scope: !187)
!209 = !DILocation(line: 129, column: 24, scope: !187)
!210 = !DILocation(line: 129, column: 14, scope: !187)
!211 = !DILocation(line: 130, column: 5, scope: !187)
!212 = !DILocation(line: 130, column: 19, scope: !187)
!213 = !DILocation(line: 131, column: 5, scope: !187)
!214 = !DILocation(line: 132, column: 1, scope: !187)
!215 = distinct !DISubprogram(name: "sdsMakeRoomFor", scope: !1, file: !1, line: 100, type: !216, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !218)
!216 = !DISubroutineType(types: !217)
!217 = !{!33, !33, !37}
!218 = !{!219, !220, !221, !222, !223, !224, !225}
!219 = !DILocalVariable(name: "s", arg: 1, scope: !215, file: !1, line: 100, type: !33)
!220 = !DILocalVariable(name: "addlen", arg: 2, scope: !215, file: !1, line: 100, type: !37)
!221 = !DILocalVariable(name: "sh", scope: !215, file: !1, line: 101, type: !44)
!222 = !DILocalVariable(name: "newsh", scope: !215, file: !1, line: 101, type: !44)
!223 = !DILocalVariable(name: "free", scope: !215, file: !1, line: 102, type: !37)
!224 = !DILocalVariable(name: "len", scope: !215, file: !1, line: 103, type: !37)
!225 = !DILocalVariable(name: "newlen", scope: !215, file: !1, line: 103, type: !37)
!226 = !DILocation(line: 0, scope: !215)
!227 = !DILocation(line: 102, column: 19, scope: !215)
!228 = !DILocation(line: 105, column: 14, scope: !229)
!229 = distinct !DILexicalBlock(scope: !215, file: !1, line: 105, column: 9)
!230 = !DILocation(line: 105, column: 9, scope: !215)
!231 = !DILocation(line: 106, column: 11, scope: !215)
!232 = !DILocation(line: 107, column: 20, scope: !215)
!233 = !DILocation(line: 108, column: 18, scope: !215)
!234 = !DILocation(line: 108, column: 26, scope: !215)
!235 = !DILocation(line: 109, column: 54, scope: !215)
!236 = !DILocation(line: 109, column: 13, scope: !215)
!237 = !DILocation(line: 111, column: 15, scope: !238)
!238 = distinct !DILexicalBlock(scope: !215, file: !1, line: 111, column: 9)
!239 = !DILocation(line: 111, column: 9, scope: !215)
!240 = !DILocation(line: 111, column: 24, scope: !238)
!241 = !DILocation(line: 116, column: 26, scope: !215)
!242 = !DILocation(line: 116, column: 12, scope: !215)
!243 = !DILocation(line: 116, column: 17, scope: !215)
!244 = !DILocation(line: 117, column: 19, scope: !215)
!245 = !DILocation(line: 117, column: 5, scope: !215)
!246 = !DILocation(line: 118, column: 1, scope: !215)
!247 = distinct !DISubprogram(name: "sdscat", scope: !1, file: !1, line: 134, type: !248, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !250)
!248 = !DISubroutineType(types: !249)
!249 = !{!33, !33, !21}
!250 = !{!251, !252}
!251 = !DILocalVariable(name: "s", arg: 1, scope: !247, file: !1, line: 134, type: !33)
!252 = !DILocalVariable(name: "t", arg: 2, scope: !247, file: !1, line: 134, type: !21)
!253 = !DILocation(line: 0, scope: !247)
!254 = !DILocation(line: 135, column: 28, scope: !247)
!255 = !DILocation(line: 135, column: 12, scope: !247)
!256 = !DILocation(line: 135, column: 5, scope: !247)
!257 = distinct !DISubprogram(name: "sdscpylen", scope: !1, file: !1, line: 138, type: !258, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !260)
!258 = !DISubroutineType(types: !259)
!259 = !{!33, !33, !21, !37}
!260 = !{!261, !262, !263, !264, !265}
!261 = !DILocalVariable(name: "s", arg: 1, scope: !257, file: !1, line: 138, type: !33)
!262 = !DILocalVariable(name: "t", arg: 2, scope: !257, file: !1, line: 138, type: !21)
!263 = !DILocalVariable(name: "len", arg: 3, scope: !257, file: !1, line: 138, type: !37)
!264 = !DILocalVariable(name: "sh", scope: !257, file: !1, line: 139, type: !44)
!265 = !DILocalVariable(name: "totlen", scope: !257, file: !1, line: 140, type: !37)
!266 = !DILocation(line: 0, scope: !257)
!267 = !DILocation(line: 139, column: 35, scope: !257)
!268 = !DILocation(line: 140, column: 25, scope: !257)
!269 = !DILocation(line: 140, column: 34, scope: !257)
!270 = !DILocation(line: 140, column: 29, scope: !257)
!271 = !DILocation(line: 142, column: 16, scope: !272)
!272 = distinct !DILexicalBlock(scope: !257, file: !1, line: 142, column: 9)
!273 = !DILocation(line: 142, column: 9, scope: !257)
!274 = !DILocation(line: 143, column: 33, scope: !275)
!275 = distinct !DILexicalBlock(scope: !272, file: !1, line: 142, column: 23)
!276 = !DILocation(line: 143, column: 13, scope: !275)
!277 = !DILocation(line: 144, column: 15, scope: !278)
!278 = distinct !DILexicalBlock(scope: !275, file: !1, line: 144, column: 13)
!279 = !DILocation(line: 144, column: 13, scope: !275)
!280 = !DILocation(line: 145, column: 24, scope: !275)
!281 = !DILocation(line: 146, column: 22, scope: !275)
!282 = !DILocation(line: 146, column: 31, scope: !275)
!283 = !DILocation(line: 146, column: 26, scope: !275)
!284 = !DILocation(line: 147, column: 5, scope: !275)
!285 = !DILocation(line: 150, column: 9, scope: !257)
!286 = !DILocation(line: 148, column: 5, scope: !257)
!287 = !DILocation(line: 149, column: 5, scope: !257)
!288 = !DILocation(line: 149, column: 12, scope: !257)
!289 = !DILocation(line: 150, column: 13, scope: !257)
!290 = !DILocation(line: 151, column: 22, scope: !257)
!291 = !DILocation(line: 151, column: 9, scope: !257)
!292 = !DILocation(line: 151, column: 14, scope: !257)
!293 = !DILocation(line: 152, column: 5, scope: !257)
!294 = !DILocation(line: 153, column: 1, scope: !257)
!295 = distinct !DISubprogram(name: "sdscpy", scope: !1, file: !1, line: 155, type: !248, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !296)
!296 = !{!297, !298}
!297 = !DILocalVariable(name: "s", arg: 1, scope: !295, file: !1, line: 155, type: !33)
!298 = !DILocalVariable(name: "t", arg: 2, scope: !295, file: !1, line: 155, type: !21)
!299 = !DILocation(line: 0, scope: !295)
!300 = !DILocation(line: 156, column: 28, scope: !295)
!301 = !DILocation(line: 156, column: 12, scope: !295)
!302 = !DILocation(line: 156, column: 5, scope: !295)
!303 = distinct !DISubprogram(name: "sdscatprintf", scope: !1, file: !1, line: 159, type: !304, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !306)
!304 = !DISubroutineType(types: !305)
!305 = !{!33, !33, !114, null}
!306 = !{!307, !308, !309, !323, !324, !325}
!307 = !DILocalVariable(name: "s", arg: 1, scope: !303, file: !1, line: 159, type: !33)
!308 = !DILocalVariable(name: "fmt", arg: 2, scope: !303, file: !1, line: 159, type: !114)
!309 = !DILocalVariable(name: "ap", scope: !303, file: !1, line: 160, type: !310)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !311, line: 14, baseType: !312)
!311 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stdarg.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !313, baseType: !314)
!313 = !DIFile(filename: "sds.c", directory: "/home/xuheng/blackbox/llvm-test/redis")
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 192, elements: !321)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !316)
!316 = !{!317, !318, !319, !320}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !315, file: !313, line: 160, baseType: !5, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !315, file: !313, line: 160, baseType: !5, size: 32, offset: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !315, file: !313, line: 160, baseType: !20, size: 64, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !315, file: !313, line: 160, baseType: !20, size: 64, offset: 128)
!321 = !{!322}
!322 = !DISubrange(count: 1)
!323 = !DILocalVariable(name: "buf", scope: !303, file: !1, line: 161, type: !21)
!324 = !DILocalVariable(name: "t", scope: !303, file: !1, line: 161, type: !21)
!325 = !DILocalVariable(name: "buflen", scope: !303, file: !1, line: 162, type: !37)
!326 = !DILocation(line: 0, scope: !303)
!327 = !DILocation(line: 160, column: 5, scope: !303)
!328 = !DILocation(line: 160, column: 13, scope: !303)
!329 = !DILocation(line: 165, column: 15, scope: !330)
!330 = distinct !DILexicalBlock(scope: !303, file: !1, line: 164, column: 14)
!331 = !DILocation(line: 167, column: 17, scope: !332)
!332 = distinct !DILexicalBlock(scope: !330, file: !1, line: 167, column: 13)
!333 = !DILocation(line: 167, column: 13, scope: !330)
!334 = !DILocation(line: 167, column: 26, scope: !332)
!335 = !DILocation(line: 171, column: 19, scope: !330)
!336 = !DILocation(line: 171, column: 9, scope: !330)
!337 = !DILocation(line: 171, column: 23, scope: !330)
!338 = !DILocation(line: 172, column: 9, scope: !330)
!339 = !DILocation(line: 173, column: 9, scope: !330)
!340 = !DILocation(line: 174, column: 9, scope: !330)
!341 = !DILocation(line: 175, column: 13, scope: !342)
!342 = distinct !DILexicalBlock(scope: !330, file: !1, line: 175, column: 13)
!343 = !DILocation(line: 175, column: 27, scope: !342)
!344 = !DILocation(line: 175, column: 13, scope: !330)
!345 = !DILocation(line: 176, column: 13, scope: !346)
!346 = distinct !DILexicalBlock(scope: !342, file: !1, line: 175, column: 36)
!347 = !DILocation(line: 177, column: 20, scope: !346)
!348 = distinct !{!348, !349, !350}
!349 = !DILocation(line: 164, column: 5, scope: !303)
!350 = !DILocation(line: 181, column: 5, scope: !303)
!351 = !DILocation(line: 182, column: 9, scope: !303)
!352 = !DILocation(line: 183, column: 5, scope: !303)
!353 = !DILocation(line: 185, column: 1, scope: !303)
!354 = !DILocation(line: 184, column: 5, scope: !303)
!355 = !DISubprogram(name: "vsnprintf", scope: !356, file: !356, line: 358, type: !357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !88)
!356 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!357 = !DISubroutineType(types: !358)
!358 = !{!23, !359, !37, !360, !361}
!359 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !21)
!360 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !114)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!362 = distinct !DISubprogram(name: "sdstrim", scope: !1, file: !1, line: 187, type: !363, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !365)
!363 = !DISubroutineType(types: !364)
!364 = !{!33, !33, !114}
!365 = !{!366, !367, !368, !369, !370, !371, !372, !373}
!366 = !DILocalVariable(name: "s", arg: 1, scope: !362, file: !1, line: 187, type: !33)
!367 = !DILocalVariable(name: "cset", arg: 2, scope: !362, file: !1, line: 187, type: !114)
!368 = !DILocalVariable(name: "sh", scope: !362, file: !1, line: 188, type: !44)
!369 = !DILocalVariable(name: "start", scope: !362, file: !1, line: 189, type: !21)
!370 = !DILocalVariable(name: "end", scope: !362, file: !1, line: 189, type: !21)
!371 = !DILocalVariable(name: "sp", scope: !362, file: !1, line: 189, type: !21)
!372 = !DILocalVariable(name: "ep", scope: !362, file: !1, line: 189, type: !21)
!373 = !DILocalVariable(name: "len", scope: !362, file: !1, line: 190, type: !37)
!374 = !DILocation(line: 0, scope: !362)
!375 = !DILocation(line: 193, column: 18, scope: !362)
!376 = !DILocation(line: 193, column: 17, scope: !362)
!377 = !DILocation(line: 193, column: 27, scope: !362)
!378 = !DILocation(line: 194, column: 14, scope: !362)
!379 = !DILocation(line: 194, column: 21, scope: !362)
!380 = !DILocation(line: 194, column: 37, scope: !362)
!381 = !DILocation(line: 194, column: 24, scope: !362)
!382 = !DILocation(line: 194, column: 5, scope: !362)
!383 = !DILocation(line: 194, column: 45, scope: !362)
!384 = distinct !{!384, !382, !383}
!385 = !DILocation(line: 195, column: 14, scope: !362)
!386 = !DILocation(line: 195, column: 22, scope: !362)
!387 = !DILocation(line: 195, column: 38, scope: !362)
!388 = !DILocation(line: 195, column: 25, scope: !362)
!389 = !DILocation(line: 195, column: 5, scope: !362)
!390 = !DILocation(line: 195, column: 46, scope: !362)
!391 = distinct !{!391, !389, !390}
!392 = !DILocation(line: 196, column: 15, scope: !362)
!393 = !DILocation(line: 196, column: 11, scope: !362)
!394 = !DILocation(line: 197, column: 17, scope: !395)
!395 = distinct !DILexicalBlock(scope: !362, file: !1, line: 197, column: 9)
!396 = !DILocation(line: 197, column: 9, scope: !362)
!397 = !DILocation(line: 197, column: 24, scope: !395)
!398 = !DILocation(line: 188, column: 35, scope: !362)
!399 = !DILocation(line: 198, column: 5, scope: !362)
!400 = !DILocation(line: 198, column: 18, scope: !362)
!401 = !DILocation(line: 199, column: 20, scope: !362)
!402 = !DILocation(line: 199, column: 30, scope: !362)
!403 = !DILocation(line: 199, column: 33, scope: !362)
!404 = !DILocation(line: 199, column: 24, scope: !362)
!405 = !DILocation(line: 199, column: 14, scope: !362)
!406 = !DILocation(line: 200, column: 13, scope: !362)
!407 = !DILocation(line: 201, column: 5, scope: !362)
!408 = !DISubprogram(name: "strchr", scope: !98, file: !98, line: 226, type: !409, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !88)
!409 = !DISubroutineType(types: !410)
!410 = !{!21, !114, !23}
!411 = !DISubprogram(name: "memmove", scope: !98, file: !98, line: 47, type: !412, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !88)
!412 = !DISubroutineType(types: !413)
!413 = !{!20, !20, !35, !37}
!414 = distinct !DISubprogram(name: "sdsrange", scope: !1, file: !1, line: 204, type: !415, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !417)
!415 = !DISubroutineType(types: !416)
!416 = !{!33, !33, !48, !48}
!417 = !{!418, !419, !420, !421, !422, !423}
!418 = !DILocalVariable(name: "s", arg: 1, scope: !414, file: !1, line: 204, type: !33)
!419 = !DILocalVariable(name: "start", arg: 2, scope: !414, file: !1, line: 204, type: !48)
!420 = !DILocalVariable(name: "end", arg: 3, scope: !414, file: !1, line: 204, type: !48)
!421 = !DILocalVariable(name: "sh", scope: !414, file: !1, line: 205, type: !44)
!422 = !DILocalVariable(name: "newlen", scope: !414, file: !1, line: 206, type: !37)
!423 = !DILocalVariable(name: "len", scope: !414, file: !1, line: 206, type: !37)
!424 = !DILocation(line: 0, scope: !414)
!425 = !DILocation(line: 205, column: 35, scope: !414)
!426 = !DILocation(line: 206, column: 26, scope: !414)
!427 = !DILocation(line: 208, column: 13, scope: !428)
!428 = distinct !DILexicalBlock(scope: !414, file: !1, line: 208, column: 9)
!429 = !DILocation(line: 208, column: 9, scope: !414)
!430 = !DILocation(line: 209, column: 15, scope: !431)
!431 = distinct !DILexicalBlock(scope: !414, file: !1, line: 209, column: 9)
!432 = !DILocation(line: 209, column: 9, scope: !414)
!433 = !DILocation(line: 213, column: 13, scope: !434)
!434 = distinct !DILexicalBlock(scope: !414, file: !1, line: 213, column: 9)
!435 = !DILocation(line: 213, column: 9, scope: !414)
!436 = !DILocation(line: 217, column: 21, scope: !414)
!437 = !DILocation(line: 217, column: 14, scope: !414)
!438 = !DILocation(line: 218, column: 16, scope: !439)
!439 = distinct !DILexicalBlock(scope: !414, file: !1, line: 218, column: 9)
!440 = !DILocation(line: 218, column: 9, scope: !414)
!441 = !DILocation(line: 219, column: 22, scope: !442)
!442 = distinct !DILexicalBlock(scope: !443, file: !1, line: 219, column: 13)
!443 = distinct !DILexicalBlock(scope: !439, file: !1, line: 218, column: 22)
!444 = !DILocation(line: 219, column: 19, scope: !442)
!445 = !DILocation(line: 219, column: 13, scope: !443)
!446 = !DILocation(line: 220, column: 17, scope: !447)
!447 = distinct !DILexicalBlock(scope: !443, file: !1, line: 220, column: 13)
!448 = !DILocation(line: 220, column: 13, scope: !443)
!449 = !DILocation(line: 221, column: 25, scope: !443)
!450 = !DILocation(line: 221, column: 18, scope: !443)
!451 = !DILocation(line: 225, column: 15, scope: !452)
!452 = distinct !DILexicalBlock(scope: !414, file: !1, line: 225, column: 9)
!453 = !DILocation(line: 225, column: 9, scope: !414)
!454 = !DILocation(line: 225, column: 45, scope: !452)
!455 = !DILocation(line: 225, column: 21, scope: !452)
!456 = !DILocation(line: 226, column: 5, scope: !414)
!457 = !DILocation(line: 226, column: 21, scope: !414)
!458 = !DILocation(line: 227, column: 20, scope: !414)
!459 = !DILocation(line: 227, column: 30, scope: !414)
!460 = !DILocation(line: 227, column: 33, scope: !414)
!461 = !DILocation(line: 227, column: 24, scope: !414)
!462 = !DILocation(line: 227, column: 14, scope: !414)
!463 = !DILocation(line: 228, column: 13, scope: !414)
!464 = !DILocation(line: 229, column: 5, scope: !414)
!465 = !DILocation(line: 230, column: 1, scope: !414)
!466 = distinct !DISubprogram(name: "sdstolower", scope: !1, file: !1, line: 232, type: !149, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !467)
!467 = !{!468, !469, !470, !471}
!468 = !DILocalVariable(name: "s", arg: 1, scope: !466, file: !1, line: 232, type: !33)
!469 = !DILocalVariable(name: "len", scope: !466, file: !1, line: 233, type: !23)
!470 = !DILocalVariable(name: "j", scope: !466, file: !1, line: 233, type: !23)
!471 = !DILocalVariable(name: "__res", scope: !472, file: !1, line: 235, type: !23)
!472 = distinct !DILexicalBlock(scope: !473, file: !1, line: 235, column: 38)
!473 = distinct !DILexicalBlock(scope: !474, file: !1, line: 235, column: 5)
!474 = distinct !DILexicalBlock(scope: !466, file: !1, line: 235, column: 5)
!475 = !DILocation(line: 0, scope: !466)
!476 = !DILocation(line: 233, column: 15, scope: !466)
!477 = !DILocation(line: 235, column: 19, scope: !473)
!478 = !DILocation(line: 235, column: 5, scope: !474)
!479 = !DILocation(line: 235, column: 38, scope: !480)
!480 = distinct !DILexicalBlock(scope: !472, file: !1, line: 235, column: 38)
!481 = !{!482, !482, i64 0}
!482 = !{!"int", !65, i64 0}
!483 = !DILocation(line: 0, scope: !472)
!484 = !DILocation(line: 235, column: 38, scope: !473)
!485 = !DILocation(line: 235, column: 36, scope: !473)
!486 = !DILocation(line: 235, column: 27, scope: !473)
!487 = distinct !{!487, !478, !488}
!488 = !DILocation(line: 235, column: 38, scope: !474)
!489 = distinct !{!489, !490}
!490 = !{!"llvm.loop.unroll.disable"}
!491 = !DILocation(line: 236, column: 1, scope: !466)
!492 = distinct !DISubprogram(name: "sdstoupper", scope: !1, file: !1, line: 238, type: !149, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !493)
!493 = !{!494, !495, !496, !497}
!494 = !DILocalVariable(name: "s", arg: 1, scope: !492, file: !1, line: 238, type: !33)
!495 = !DILocalVariable(name: "len", scope: !492, file: !1, line: 239, type: !23)
!496 = !DILocalVariable(name: "j", scope: !492, file: !1, line: 239, type: !23)
!497 = !DILocalVariable(name: "__res", scope: !498, file: !1, line: 241, type: !23)
!498 = distinct !DILexicalBlock(scope: !499, file: !1, line: 241, column: 38)
!499 = distinct !DILexicalBlock(scope: !500, file: !1, line: 241, column: 5)
!500 = distinct !DILexicalBlock(scope: !492, file: !1, line: 241, column: 5)
!501 = !DILocation(line: 0, scope: !492)
!502 = !DILocation(line: 239, column: 15, scope: !492)
!503 = !DILocation(line: 241, column: 19, scope: !499)
!504 = !DILocation(line: 241, column: 5, scope: !500)
!505 = !DILocation(line: 241, column: 38, scope: !506)
!506 = distinct !DILexicalBlock(scope: !498, file: !1, line: 241, column: 38)
!507 = !DILocation(line: 0, scope: !498)
!508 = !DILocation(line: 241, column: 38, scope: !499)
!509 = !DILocation(line: 241, column: 36, scope: !499)
!510 = !DILocation(line: 241, column: 27, scope: !499)
!511 = distinct !{!511, !504, !512}
!512 = !DILocation(line: 241, column: 38, scope: !500)
!513 = distinct !{!513, !490}
!514 = !DILocation(line: 242, column: 1, scope: !492)
!515 = distinct !DISubprogram(name: "sdscmp", scope: !1, file: !1, line: 244, type: !516, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !518)
!516 = !DISubroutineType(types: !517)
!517 = !{!23, !33, !33}
!518 = !{!519, !520, !521, !522, !523, !524}
!519 = !DILocalVariable(name: "s1", arg: 1, scope: !515, file: !1, line: 244, type: !33)
!520 = !DILocalVariable(name: "s2", arg: 2, scope: !515, file: !1, line: 244, type: !33)
!521 = !DILocalVariable(name: "l1", scope: !515, file: !1, line: 245, type: !37)
!522 = !DILocalVariable(name: "l2", scope: !515, file: !1, line: 245, type: !37)
!523 = !DILocalVariable(name: "minlen", scope: !515, file: !1, line: 245, type: !37)
!524 = !DILocalVariable(name: "cmp", scope: !515, file: !1, line: 246, type: !23)
!525 = !DILocation(line: 0, scope: !515)
!526 = !DILocation(line: 248, column: 10, scope: !515)
!527 = !DILocation(line: 249, column: 10, scope: !515)
!528 = !DILocation(line: 250, column: 18, scope: !515)
!529 = !DILocation(line: 250, column: 14, scope: !515)
!530 = !DILocation(line: 251, column: 11, scope: !515)
!531 = !DILocation(line: 252, column: 13, scope: !532)
!532 = distinct !DILexicalBlock(scope: !515, file: !1, line: 252, column: 9)
!533 = !DILocation(line: 252, column: 9, scope: !515)
!534 = !DILocation(line: 254, column: 1, scope: !515)
!535 = !DISubprogram(name: "memcmp", scope: !98, file: !98, line: 64, type: !536, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !88)
!536 = !DISubroutineType(types: !537)
!537 = !{!23, !35, !35, !37}
!538 = distinct !DISubprogram(name: "sdssplitlen", scope: !1, file: !1, line: 272, type: !539, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !543)
!539 = !DISubroutineType(types: !540)
!540 = !{!541, !21, !23, !21, !23, !542}
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!543 = !{!544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554}
!544 = !DILocalVariable(name: "s", arg: 1, scope: !538, file: !1, line: 272, type: !21)
!545 = !DILocalVariable(name: "len", arg: 2, scope: !538, file: !1, line: 272, type: !23)
!546 = !DILocalVariable(name: "sep", arg: 3, scope: !538, file: !1, line: 272, type: !21)
!547 = !DILocalVariable(name: "seplen", arg: 4, scope: !538, file: !1, line: 272, type: !23)
!548 = !DILocalVariable(name: "count", arg: 5, scope: !538, file: !1, line: 272, type: !542)
!549 = !DILocalVariable(name: "elements", scope: !538, file: !1, line: 273, type: !23)
!550 = !DILocalVariable(name: "slots", scope: !538, file: !1, line: 273, type: !23)
!551 = !DILocalVariable(name: "start", scope: !538, file: !1, line: 273, type: !23)
!552 = !DILocalVariable(name: "j", scope: !538, file: !1, line: 273, type: !23)
!553 = !DILocalVariable(name: "tokens", scope: !538, file: !1, line: 275, type: !541)
!554 = !DILocalVariable(name: "newtokens", scope: !555, file: !1, line: 287, type: !541)
!555 = distinct !DILexicalBlock(scope: !556, file: !1, line: 286, column: 33)
!556 = distinct !DILexicalBlock(scope: !557, file: !1, line: 286, column: 13)
!557 = distinct !DILexicalBlock(scope: !558, file: !1, line: 284, column: 44)
!558 = distinct !DILexicalBlock(scope: !559, file: !1, line: 284, column: 5)
!559 = distinct !DILexicalBlock(scope: !538, file: !1, line: 284, column: 5)
!560 = !DILocation(line: 0, scope: !538)
!561 = !DILocation(line: 275, column: 19, scope: !538)
!562 = !DILocation(line: 277, column: 16, scope: !563)
!563 = distinct !DILexicalBlock(scope: !538, file: !1, line: 277, column: 9)
!564 = !DILocation(line: 277, column: 9, scope: !538)
!565 = !DILocation(line: 277, column: 25, scope: !563)
!566 = !DILocation(line: 279, column: 20, scope: !567)
!567 = distinct !DILexicalBlock(scope: !538, file: !1, line: 279, column: 9)
!568 = !DILocation(line: 279, column: 16, scope: !567)
!569 = !DILocation(line: 280, column: 13, scope: !570)
!570 = distinct !DILexicalBlock(scope: !538, file: !1, line: 280, column: 9)
!571 = !DILocation(line: 280, column: 9, scope: !538)
!572 = !DILocation(line: 284, column: 19, scope: !558)
!573 = !DILocation(line: 284, column: 5, scope: !559)
!574 = !DILocation(line: 286, column: 29, scope: !556)
!575 = !DILocation(line: 286, column: 19, scope: !556)
!576 = !DILocation(line: 286, column: 13, scope: !557)
!577 = !DILocation(line: 289, column: 19, scope: !555)
!578 = !DILocation(line: 290, column: 34, scope: !555)
!579 = !DILocation(line: 290, column: 53, scope: !555)
!580 = !DILocation(line: 290, column: 52, scope: !555)
!581 = !DILocation(line: 290, column: 25, scope: !555)
!582 = !DILocation(line: 0, scope: !555)
!583 = !DILocation(line: 291, column: 27, scope: !584)
!584 = distinct !DILexicalBlock(scope: !555, file: !1, line: 291, column: 17)
!585 = !DILocation(line: 291, column: 17, scope: !555)
!586 = !DILocation(line: 293, column: 17, scope: !587)
!587 = distinct !DILexicalBlock(scope: !584, file: !1, line: 291, column: 36)
!588 = !DILocation(line: 297, column: 13, scope: !587)
!589 = !DILocation(line: 0, scope: !590)
!590 = distinct !DILexicalBlock(scope: !557, file: !1, line: 301, column: 13)
!591 = !DILocation(line: 301, column: 26, scope: !590)
!592 = !DILocation(line: 301, column: 32, scope: !590)
!593 = !DILocation(line: 301, column: 29, scope: !590)
!594 = !DILocation(line: 301, column: 39, scope: !590)
!595 = !DILocation(line: 301, column: 36, scope: !590)
!596 = !DILocation(line: 301, column: 47, scope: !590)
!597 = !DILocation(line: 301, column: 59, scope: !590)
!598 = !DILocation(line: 301, column: 51, scope: !590)
!599 = !DILocation(line: 301, column: 74, scope: !590)
!600 = !DILocation(line: 301, column: 13, scope: !557)
!601 = !DILocation(line: 302, column: 43, scope: !602)
!602 = distinct !DILexicalBlock(scope: !590, file: !1, line: 301, column: 81)
!603 = !DILocation(line: 302, column: 51, scope: !602)
!604 = !DILocation(line: 302, column: 50, scope: !602)
!605 = !DILocation(line: 302, column: 32, scope: !602)
!606 = !DILocation(line: 302, column: 13, scope: !602)
!607 = !DILocation(line: 302, column: 30, scope: !602)
!608 = !DILocation(line: 310, column: 21, scope: !602)
!609 = !DILocation(line: 311, column: 22, scope: !602)
!610 = !DILocation(line: 312, column: 25, scope: !602)
!611 = !DILocation(line: 313, column: 9, scope: !602)
!612 = !DILocation(line: 0, scope: !559)
!613 = !DILocation(line: 284, column: 40, scope: !558)
!614 = distinct !{!614, !573, !615}
!615 = !DILocation(line: 314, column: 5, scope: !559)
!616 = !DILocation(line: 316, column: 35, scope: !538)
!617 = !DILocation(line: 316, column: 45, scope: !538)
!618 = !DILocation(line: 316, column: 42, scope: !538)
!619 = !DILocation(line: 316, column: 24, scope: !538)
!620 = !DILocation(line: 316, column: 5, scope: !538)
!621 = !DILocation(line: 316, column: 22, scope: !538)
!622 = !DILocation(line: 324, column: 13, scope: !538)
!623 = !DILocation(line: 326, column: 5, scope: !538)
!624 = !DILocation(line: 337, column: 1, scope: !538)
!625 = !DISubprogram(name: "zrealloc", scope: !85, file: !85, line: 35, type: !626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !88)
!626 = !DISubroutineType(types: !627)
!627 = !{!20, !20, !37}
!628 = distinct !DISubprogram(name: "sdsfreesplitres", scope: !1, file: !1, line: 339, type: !629, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !631)
!629 = !DISubroutineType(types: !630)
!630 = !{null, !541, !23}
!631 = !{!632, !633}
!632 = !DILocalVariable(name: "tokens", arg: 1, scope: !628, file: !1, line: 339, type: !541)
!633 = !DILocalVariable(name: "count", arg: 2, scope: !628, file: !1, line: 339, type: !23)
!634 = !DILocation(line: 0, scope: !628)
!635 = !DILocation(line: 340, column: 10, scope: !636)
!636 = distinct !DILexicalBlock(scope: !628, file: !1, line: 340, column: 9)
!637 = !DILocation(line: 340, column: 9, scope: !628)
!638 = !DILocation(line: 341, column: 5, scope: !628)
!639 = !DILocation(line: 341, column: 16, scope: !628)
!640 = !DILocation(line: 342, column: 17, scope: !628)
!641 = !DILocation(line: 342, column: 9, scope: !628)
!642 = distinct !{!642, !638, !643}
!643 = !DILocation(line: 342, column: 30, scope: !628)
!644 = !DILocation(line: 343, column: 11, scope: !628)
!645 = !DILocation(line: 343, column: 5, scope: !628)
!646 = !DILocation(line: 344, column: 1, scope: !628)
!647 = distinct !DISubprogram(name: "sdsfromlonglong", scope: !1, file: !1, line: 346, type: !648, scopeLine: 346, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !651)
!648 = !DISubroutineType(types: !649)
!649 = !{!33, !650}
!650 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!651 = !{!652, !653, !657, !658}
!652 = !DILocalVariable(name: "value", arg: 1, scope: !647, file: !1, line: 346, type: !650)
!653 = !DILocalVariable(name: "buf", scope: !647, file: !1, line: 347, type: !654)
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 256, elements: !655)
!655 = !{!656}
!656 = !DISubrange(count: 32)
!657 = !DILocalVariable(name: "p", scope: !647, file: !1, line: 347, type: !21)
!658 = !DILocalVariable(name: "v", scope: !647, file: !1, line: 348, type: !659)
!659 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!660 = !DILocation(line: 0, scope: !647)
!661 = !DILocation(line: 347, column: 5, scope: !647)
!662 = !DILocation(line: 347, column: 10, scope: !647)
!663 = !DILocation(line: 350, column: 16, scope: !647)
!664 = !DILocation(line: 350, column: 9, scope: !647)
!665 = !DILocation(line: 351, column: 12, scope: !647)
!666 = !DILocation(line: 352, column: 5, scope: !647)
!667 = !DILocation(line: 353, column: 22, scope: !668)
!668 = distinct !DILexicalBlock(scope: !647, file: !1, line: 352, column: 8)
!669 = !DILocation(line: 353, column: 16, scope: !668)
!670 = !DILocation(line: 353, column: 11, scope: !668)
!671 = !DILocation(line: 353, column: 14, scope: !668)
!672 = !DILocation(line: 354, column: 11, scope: !668)
!673 = !DILocation(line: 355, column: 5, scope: !668)
!674 = distinct !{!674, !666, !675}
!675 = !DILocation(line: 355, column: 14, scope: !647)
!676 = !DILocation(line: 356, column: 9, scope: !647)
!677 = !DILocation(line: 356, column: 25, scope: !678)
!678 = distinct !DILexicalBlock(scope: !647, file: !1, line: 356, column: 9)
!679 = !DILocation(line: 356, column: 20, scope: !678)
!680 = !DILocation(line: 356, column: 22, scope: !678)
!681 = !DILocation(line: 357, column: 6, scope: !647)
!682 = !DILocation(line: 358, column: 29, scope: !647)
!683 = !DILocation(line: 358, column: 26, scope: !647)
!684 = !DILocation(line: 358, column: 12, scope: !647)
!685 = !DILocation(line: 359, column: 1, scope: !647)
!686 = !DILocation(line: 358, column: 5, scope: !647)
!687 = distinct !DISubprogram(name: "sdssplitargs", scope: !1, file: !1, line: 373, type: !688, scopeLine: 373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !690)
!688 = !DISubroutineType(types: !689)
!689 = !{!541, !21, !542}
!690 = !{!691, !692, !693, !694, !695, !697, !701, !702, !708}
!691 = !DILocalVariable(name: "line", arg: 1, scope: !687, file: !1, line: 373, type: !21)
!692 = !DILocalVariable(name: "argc", arg: 2, scope: !687, file: !1, line: 373, type: !542)
!693 = !DILocalVariable(name: "p", scope: !687, file: !1, line: 374, type: !21)
!694 = !DILocalVariable(name: "current", scope: !687, file: !1, line: 375, type: !21)
!695 = !DILocalVariable(name: "vector", scope: !687, file: !1, line: 376, type: !696)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!697 = !DILocalVariable(name: "inq", scope: !698, file: !1, line: 384, type: !23)
!698 = distinct !DILexicalBlock(scope: !699, file: !1, line: 382, column: 17)
!699 = distinct !DILexicalBlock(scope: !700, file: !1, line: 382, column: 13)
!700 = distinct !DILexicalBlock(scope: !687, file: !1, line: 379, column: 14)
!701 = !DILocalVariable(name: "done", scope: !698, file: !1, line: 385, type: !23)
!702 = !DILocalVariable(name: "c", scope: !703, file: !1, line: 391, type: !22)
!703 = distinct !DILexicalBlock(scope: !704, file: !1, line: 390, column: 47)
!704 = distinct !DILexicalBlock(scope: !705, file: !1, line: 390, column: 25)
!705 = distinct !DILexicalBlock(scope: !706, file: !1, line: 389, column: 26)
!706 = distinct !DILexicalBlock(scope: !707, file: !1, line: 389, column: 21)
!707 = distinct !DILexicalBlock(scope: !698, file: !1, line: 388, column: 26)
!708 = !DILabel(scope: !687, name: "err", file: !1, line: 442)
!709 = !DILocation(line: 0, scope: !687)
!710 = !DILocation(line: 381, column: 15, scope: !700)
!711 = !DILocation(line: 381, column: 18, scope: !700)
!712 = !DILocation(line: 381, column: 21, scope: !700)
!713 = !{!714, !714, i64 0}
!714 = !{!"short", !65, i64 0}
!715 = !DILocation(line: 381, column: 9, scope: !700)
!716 = !DILocation(line: 381, column: 35, scope: !700)
!717 = distinct !{!717, !715, !716}
!718 = !DILocation(line: 0, scope: !698)
!719 = !DILocation(line: 387, column: 44, scope: !720)
!720 = distinct !DILexicalBlock(scope: !698, file: !1, line: 387, column: 17)
!721 = !DILocation(line: 388, column: 13, scope: !698)
!722 = !DILocation(line: 389, column: 21, scope: !706)
!723 = !DILocation(line: 0, scope: !706)
!724 = !DILocation(line: 389, column: 21, scope: !707)
!725 = !DILocation(line: 390, column: 36, scope: !704)
!726 = !DILocation(line: 390, column: 42, scope: !704)
!727 = !DILocation(line: 390, column: 39, scope: !704)
!728 = !DILocation(line: 390, column: 25, scope: !705)
!729 = !DILocation(line: 391, column: 25, scope: !703)
!730 = !DILocation(line: 394, column: 32, scope: !703)
!731 = !DILocation(line: 394, column: 25, scope: !703)
!732 = !DILocation(line: 0, scope: !703)
!733 = !DILocation(line: 395, column: 37, scope: !734)
!734 = distinct !DILexicalBlock(scope: !703, file: !1, line: 394, column: 36)
!735 = !DILocation(line: 395, column: 45, scope: !734)
!736 = !DILocation(line: 396, column: 37, scope: !734)
!737 = !DILocation(line: 396, column: 45, scope: !734)
!738 = !DILocation(line: 397, column: 37, scope: !734)
!739 = !DILocation(line: 397, column: 45, scope: !734)
!740 = !DILocation(line: 398, column: 37, scope: !734)
!741 = !DILocation(line: 398, column: 45, scope: !734)
!742 = !DILocation(line: 399, column: 37, scope: !734)
!743 = !DILocation(line: 399, column: 45, scope: !734)
!744 = !DILocation(line: 400, column: 36, scope: !734)
!745 = !DILocation(line: 400, column: 42, scope: !734)
!746 = !DILocation(line: 402, column: 35, scope: !703)
!747 = !DILocation(line: 403, column: 21, scope: !704)
!748 = !DILocation(line: 403, column: 21, scope: !703)
!749 = !DILocation(line: 405, column: 32, scope: !750)
!750 = distinct !DILexicalBlock(scope: !751, file: !1, line: 405, column: 29)
!751 = distinct !DILexicalBlock(scope: !752, file: !1, line: 403, column: 43)
!752 = distinct !DILexicalBlock(scope: !704, file: !1, line: 403, column: 32)
!753 = !DILocation(line: 405, column: 29, scope: !750)
!754 = !DILocation(line: 405, column: 36, scope: !750)
!755 = !DILocation(line: 405, column: 40, scope: !750)
!756 = !DILocation(line: 405, column: 29, scope: !751)
!757 = !DILocation(line: 411, column: 35, scope: !758)
!758 = distinct !DILexicalBlock(scope: !759, file: !1, line: 410, column: 28)
!759 = distinct !DILexicalBlock(scope: !752, file: !1, line: 407, column: 32)
!760 = !DILocation(line: 414, column: 28, scope: !761)
!761 = distinct !DILexicalBlock(scope: !706, file: !1, line: 413, column: 24)
!762 = !DILocation(line: 414, column: 21, scope: !761)
!763 = !DILocation(line: 426, column: 35, scope: !764)
!764 = distinct !DILexicalBlock(scope: !761, file: !1, line: 414, column: 32)
!765 = !DILocation(line: 427, column: 25, scope: !764)
!766 = !DILocation(line: 430, column: 21, scope: !767)
!767 = distinct !DILexicalBlock(scope: !707, file: !1, line: 430, column: 21)
!768 = !DILocation(line: 430, column: 21, scope: !707)
!769 = distinct !{!769, !721, !770}
!770 = !DILocation(line: 431, column: 13, scope: !698)
!771 = !DILocation(line: 433, column: 31, scope: !698)
!772 = !DILocation(line: 433, column: 40, scope: !698)
!773 = !DILocation(line: 433, column: 46, scope: !698)
!774 = !DILocation(line: 433, column: 38, scope: !698)
!775 = !DILocation(line: 433, column: 49, scope: !698)
!776 = !DILocation(line: 433, column: 22, scope: !698)
!777 = !DILocation(line: 434, column: 20, scope: !698)
!778 = !DILocation(line: 434, column: 13, scope: !698)
!779 = !DILocation(line: 434, column: 27, scope: !698)
!780 = !DILocation(line: 435, column: 20, scope: !698)
!781 = !DILocation(line: 443, column: 18, scope: !687)
!782 = !DILocation(line: 443, column: 5, scope: !687)
!783 = !DILocation(line: 444, column: 17, scope: !687)
!784 = !DILocation(line: 444, column: 9, scope: !687)
!785 = distinct !{!785, !782, !786}
!786 = !DILocation(line: 444, column: 30, scope: !687)
!787 = !DILocation(line: 445, column: 11, scope: !687)
!788 = !DILocation(line: 445, column: 5, scope: !687)
!789 = !DILocation(line: 446, column: 9, scope: !790)
!790 = distinct !DILexicalBlock(scope: !687, file: !1, line: 446, column: 9)
!791 = !DILocation(line: 446, column: 9, scope: !687)
!792 = !DILocation(line: 446, column: 18, scope: !790)
!793 = !DILocation(line: 448, column: 1, scope: !687)
!794 = !DISubprogram(name: "fprintf", scope: !356, file: !356, line: 326, type: !795, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !88)
!795 = !DISubroutineType(types: !796)
!796 = !{!23, !797, !360, null}
!797 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !798)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !800, line: 7, baseType: !801)
!800 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !802, line: 49, size: 1728, elements: !803)
!802 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!803 = !{!804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !819, !821, !822, !823, !826, !827, !829, !831, !834, !836, !839, !842, !843, !844, !845, !846}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !801, file: !802, line: 51, baseType: !23, size: 32)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !801, file: !802, line: 54, baseType: !21, size: 64, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !801, file: !802, line: 55, baseType: !21, size: 64, offset: 128)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !801, file: !802, line: 56, baseType: !21, size: 64, offset: 192)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !801, file: !802, line: 57, baseType: !21, size: 64, offset: 256)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !801, file: !802, line: 58, baseType: !21, size: 64, offset: 320)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !801, file: !802, line: 59, baseType: !21, size: 64, offset: 384)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !801, file: !802, line: 60, baseType: !21, size: 64, offset: 448)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !801, file: !802, line: 61, baseType: !21, size: 64, offset: 512)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !801, file: !802, line: 64, baseType: !21, size: 64, offset: 576)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !801, file: !802, line: 65, baseType: !21, size: 64, offset: 640)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !801, file: !802, line: 66, baseType: !21, size: 64, offset: 704)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !801, file: !802, line: 68, baseType: !817, size: 64, offset: 768)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !802, line: 36, flags: DIFlagFwdDecl)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !801, file: !802, line: 70, baseType: !820, size: 64, offset: 832)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !801, file: !802, line: 72, baseType: !23, size: 32, offset: 896)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !801, file: !802, line: 73, baseType: !23, size: 32, offset: 928)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !801, file: !802, line: 74, baseType: !824, size: 64, offset: 960)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !825, line: 152, baseType: !48)
!825 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !801, file: !802, line: 77, baseType: !24, size: 16, offset: 1024)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !801, file: !802, line: 78, baseType: !828, size: 8, offset: 1040)
!828 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !801, file: !802, line: 79, baseType: !830, size: 8, offset: 1048)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 8, elements: !321)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !801, file: !802, line: 81, baseType: !832, size: 64, offset: 1088)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !802, line: 43, baseType: null)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !801, file: !802, line: 89, baseType: !835, size: 64, offset: 1152)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !825, line: 153, baseType: !48)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !801, file: !802, line: 91, baseType: !837, size: 64, offset: 1216)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !802, line: 37, flags: DIFlagFwdDecl)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !801, file: !802, line: 92, baseType: !840, size: 64, offset: 1280)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !802, line: 38, flags: DIFlagFwdDecl)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !801, file: !802, line: 93, baseType: !820, size: 64, offset: 1344)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !801, file: !802, line: 94, baseType: !20, size: 64, offset: 1408)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !801, file: !802, line: 95, baseType: !37, size: 64, offset: 1472)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !801, file: !802, line: 96, baseType: !23, size: 32, offset: 1536)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !801, file: !802, line: 98, baseType: !847, size: 160, offset: 1568)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 160, elements: !848)
!848 = !{!849}
!849 = !DISubrange(count: 20)
!850 = !DISubprogram(name: "abort", scope: !851, file: !851, line: 591, type: !90, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !88)
!851 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
