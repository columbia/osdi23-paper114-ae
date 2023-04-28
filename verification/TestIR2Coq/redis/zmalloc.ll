; ModuleID = 'zmalloc.c'
source_filename = "zmalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@used_memory_mutex = dso_local global %union.pthread_mutex_t zeroinitializer, align 8, !dbg !0
@zmalloc_thread_safe = internal unnamed_addr global i1 false, align 4, !dbg !49
@used_memory = internal unnamed_addr global i64 0, align 8, !dbg !16
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [53 x i8] c"zmalloc: Out of memory trying to allocate %zu bytes\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias nonnull i8* @zmalloc(i64 noundef %size) local_unnamed_addr #0 !dbg !55 {
entry:
  call void @llvm.dbg.value(metadata i64 %size, metadata !59, metadata !DIExpression()), !dbg !63
  %add = add i64 %size, 8, !dbg !64
  %call = tail call noalias i8* @malloc(i64 noundef %add) #8, !dbg !65
  call void @llvm.dbg.value(metadata i8* %call, metadata !60, metadata !DIExpression()), !dbg !63
  %tobool.not = icmp eq i8* %call, null, !dbg !66
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !68

if.then:                                          ; preds = %entry
  tail call fastcc void @zmalloc_oom(i64 noundef %size) #9, !dbg !69
  unreachable, !dbg !69

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to i64*, !dbg !70
  store i64 %size, i64* %0, align 8, !dbg !71, !tbaa !72
  call void @llvm.dbg.value(metadata i64 %add, metadata !61, metadata !DIExpression()), !dbg !76
  %and = and i64 %size, 7, !dbg !77
  %tobool2.not = icmp eq i64 %and, 0, !dbg !77
  %1 = add i64 %size, 16, !dbg !79
  %add5 = and i64 %1, -8, !dbg !79
  %_n.0 = select i1 %tobool2.not, i64 %add, i64 %add5, !dbg !79
  call void @llvm.dbg.value(metadata i64 %_n.0, metadata !61, metadata !DIExpression()), !dbg !76
  %.b = load i1, i1* @zmalloc_thread_safe, align 4, !dbg !80
  br i1 %.b, label %if.then8, label %if.else, !dbg !79

if.then8:                                         ; preds = %if.end
  %call9 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @used_memory_mutex) #8, !dbg !82
  %2 = load i64, i64* @used_memory, align 8, !dbg !82, !tbaa !72
  %add10 = add i64 %2, %_n.0, !dbg !82
  store i64 %add10, i64* @used_memory, align 8, !dbg !82, !tbaa !72
  %call11 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @used_memory_mutex) #8, !dbg !82
  br label %if.end13, !dbg !82

if.else:                                          ; preds = %if.end
  %3 = load i64, i64* @used_memory, align 8, !dbg !84, !tbaa !72
  %add12 = add i64 %3, %_n.0, !dbg !84
  store i64 %add12, i64* @used_memory, align 8, !dbg !84, !tbaa !72
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then8
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 8, !dbg !86
  ret i8* %add.ptr, !dbg !87
}

; Function Attrs: nounwind
declare !dbg !88 dso_local noalias i8* @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define internal fastcc void @zmalloc_oom(i64 noundef %size) unnamed_addr #2 !dbg !91 {
entry:
  call void @llvm.dbg.value(metadata i64 %size, metadata !95, metadata !DIExpression()), !dbg !96
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !97, !tbaa !98
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 noundef %size) #8, !dbg !100
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !101, !tbaa !98
  %call1 = tail call i32 @fflush(%struct._IO_FILE* noundef %1) #8, !dbg !102
  tail call void @abort() #10, !dbg !103
  unreachable, !dbg !103
}

; Function Attrs: nounwind
declare !dbg !104 dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !109 dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local nonnull i8* @zrealloc(i8* noundef %ptr, i64 noundef %size) local_unnamed_addr #0 !dbg !110 {
entry:
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !114, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata i64 %size, metadata !115, metadata !DIExpression()), !dbg !123
  %cmp = icmp eq i8* %ptr, null, !dbg !124
  br i1 %cmp, label %if.then, label %if.end, !dbg !126

if.then:                                          ; preds = %entry
  %call = tail call i8* @zmalloc(i64 noundef %size) #9, !dbg !127
  br label %cleanup, !dbg !128

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %ptr, i64 -8, !dbg !129
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !116, metadata !DIExpression()), !dbg !123
  %0 = bitcast i8* %add.ptr to i64*, !dbg !130
  %1 = load i64, i64* %0, align 8, !dbg !131, !tbaa !72
  call void @llvm.dbg.value(metadata i64 %1, metadata !117, metadata !DIExpression()), !dbg !123
  %add = add i64 %size, 8, !dbg !132
  %call1 = tail call i8* @realloc(i8* noundef nonnull %add.ptr, i64 noundef %add) #8, !dbg !133
  call void @llvm.dbg.value(metadata i8* %call1, metadata !118, metadata !DIExpression()), !dbg !123
  %tobool.not = icmp eq i8* %call1, null, !dbg !134
  br i1 %tobool.not, label %if.then2, label %if.end3, !dbg !136

if.then2:                                         ; preds = %if.end
  tail call fastcc void @zmalloc_oom(i64 noundef %size) #9, !dbg !137
  unreachable, !dbg !137

if.end3:                                          ; preds = %if.end
  %2 = bitcast i8* %call1 to i64*, !dbg !138
  store i64 %size, i64* %2, align 8, !dbg !139, !tbaa !72
  call void @llvm.dbg.value(metadata i64 %1, metadata !119, metadata !DIExpression()), !dbg !140
  %and = and i64 %1, 7, !dbg !141
  %tobool4.not = icmp eq i64 %and, 0, !dbg !141
  %sub = sub nuw nsw i64 8, %and, !dbg !143
  %add7 = select i1 %tobool4.not, i64 0, i64 %sub, !dbg !143
  %_n.0 = add i64 %add7, %1, !dbg !143
  call void @llvm.dbg.value(metadata i64 %_n.0, metadata !119, metadata !DIExpression()), !dbg !140
  %.b59 = load i1, i1* @zmalloc_thread_safe, align 4, !dbg !144
  br i1 %.b59, label %if.end15, label %if.end15.thread, !dbg !143

if.end15.thread:                                  ; preds = %if.end3
  %3 = load i64, i64* @used_memory, align 8, !dbg !146, !tbaa !72
  %sub14 = sub i64 %3, %_n.0, !dbg !146
  call void @llvm.dbg.value(metadata i64 %size, metadata !121, metadata !DIExpression()), !dbg !148
  %and1861 = and i64 %size, 7, !dbg !149
  %tobool19.not62 = icmp eq i64 %and1861, 0, !dbg !149
  %sub2263 = sub nuw nsw i64 8, %and1861, !dbg !151
  %add2364 = select i1 %tobool19.not62, i64 0, i64 %sub2263, !dbg !151
  %_n17.065 = add i64 %add2364, %size, !dbg !151
  call void @llvm.dbg.value(metadata i64 %_n17.0, metadata !121, metadata !DIExpression()), !dbg !148
  br label %if.else30, !dbg !151

if.end15:                                         ; preds = %if.end3
  %call11 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @used_memory_mutex) #8, !dbg !152
  %4 = load i64, i64* @used_memory, align 8, !dbg !152, !tbaa !72
  %sub12 = sub i64 %4, %_n.0, !dbg !152
  store i64 %sub12, i64* @used_memory, align 8, !dbg !152, !tbaa !72
  %call13 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @used_memory_mutex) #8, !dbg !152
  %.b.pr = load i1, i1* @zmalloc_thread_safe, align 4, !dbg !154
  call void @llvm.dbg.value(metadata i64 %size, metadata !121, metadata !DIExpression()), !dbg !148
  %and18 = and i64 %size, 7, !dbg !149
  %tobool19.not = icmp eq i64 %and18, 0, !dbg !149
  %sub22 = sub nuw nsw i64 8, %and18, !dbg !151
  %add23 = select i1 %tobool19.not, i64 0, i64 %sub22, !dbg !151
  %_n17.0 = add i64 %add23, %size, !dbg !151
  call void @llvm.dbg.value(metadata i64 %_n17.0, metadata !121, metadata !DIExpression()), !dbg !148
  br i1 %.b.pr, label %if.then26, label %if.end15.if.else30_crit_edge, !dbg !151

if.end15.if.else30_crit_edge:                     ; preds = %if.end15
  %.pre = load i64, i64* @used_memory, align 8, !dbg !156, !tbaa !72
  br label %if.else30, !dbg !151

if.then26:                                        ; preds = %if.end15
  %call27 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @used_memory_mutex) #8, !dbg !158
  %5 = load i64, i64* @used_memory, align 8, !dbg !158, !tbaa !72
  %add28 = add i64 %5, %_n17.0, !dbg !158
  store i64 %add28, i64* @used_memory, align 8, !dbg !158, !tbaa !72
  %call29 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @used_memory_mutex) #8, !dbg !158
  br label %if.end32, !dbg !158

if.else30:                                        ; preds = %if.end15.if.else30_crit_edge, %if.end15.thread
  %6 = phi i64 [ %sub14, %if.end15.thread ], [ %.pre, %if.end15.if.else30_crit_edge ], !dbg !156
  %_n17.066 = phi i64 [ %_n17.065, %if.end15.thread ], [ %_n17.0, %if.end15.if.else30_crit_edge ]
  %add31 = add i64 %6, %_n17.066, !dbg !156
  store i64 %add31, i64* @used_memory, align 8, !dbg !156, !tbaa !72
  br label %if.end32

if.end32:                                         ; preds = %if.else30, %if.then26
  %add.ptr35 = getelementptr inbounds i8, i8* %call1, i64 8, !dbg !160
  br label %cleanup, !dbg !161

cleanup:                                          ; preds = %if.end32, %if.then
  %retval.0 = phi i8* [ %call, %if.then ], [ %add.ptr35, %if.end32 ], !dbg !123
  ret i8* %retval.0, !dbg !162
}

; Function Attrs: nounwind
declare !dbg !163 dso_local i8* @realloc(i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @zfree(i8* noundef %ptr) local_unnamed_addr #0 !dbg !164 {
entry:
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !168, metadata !DIExpression()), !dbg !173
  %cmp = icmp eq i8* %ptr, null, !dbg !174
  br i1 %cmp, label %cleanup, label %if.end, !dbg !176

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %ptr, i64 -8, !dbg !177
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !169, metadata !DIExpression()), !dbg !173
  %0 = bitcast i8* %add.ptr to i64*, !dbg !178
  %1 = load i64, i64* %0, align 8, !dbg !179, !tbaa !72
  call void @llvm.dbg.value(metadata i64 %1, metadata !170, metadata !DIExpression()), !dbg !173
  %add = add i64 %1, 8, !dbg !180
  call void @llvm.dbg.value(metadata i64 %add, metadata !171, metadata !DIExpression()), !dbg !181
  %and = and i64 %1, 7, !dbg !182
  %tobool.not = icmp eq i64 %and, 0, !dbg !182
  %2 = add i64 %1, 16, !dbg !180
  %add3 = and i64 %2, -8, !dbg !180
  %_n.0 = select i1 %tobool.not, i64 %add, i64 %add3, !dbg !180
  call void @llvm.dbg.value(metadata i64 %_n.0, metadata !171, metadata !DIExpression()), !dbg !181
  %.b = load i1, i1* @zmalloc_thread_safe, align 4, !dbg !184
  br i1 %.b, label %if.then6, label %if.else, !dbg !180

if.then6:                                         ; preds = %if.end
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @used_memory_mutex) #8, !dbg !186
  %3 = load i64, i64* @used_memory, align 8, !dbg !186, !tbaa !72
  %sub7 = sub i64 %3, %_n.0, !dbg !186
  store i64 %sub7, i64* @used_memory, align 8, !dbg !186, !tbaa !72
  %call8 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @used_memory_mutex) #8, !dbg !186
  br label %if.end10, !dbg !186

if.else:                                          ; preds = %if.end
  %4 = load i64, i64* @used_memory, align 8, !dbg !188, !tbaa !72
  %sub9 = sub i64 %4, %_n.0, !dbg !188
  store i64 %sub9, i64* @used_memory, align 8, !dbg !188, !tbaa !72
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then6
  tail call void @free(i8* noundef nonnull %add.ptr) #8, !dbg !190
  br label %cleanup, !dbg !191

cleanup:                                          ; preds = %entry, %if.end10
  ret void, !dbg !191
}

; Function Attrs: nounwind
declare !dbg !192 dso_local void @free(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local nonnull i8* @zstrdup(i8* noundef %s) local_unnamed_addr #0 !dbg !193 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !199, metadata !DIExpression()), !dbg !202
  %call = tail call i64 @strlen(i8* noundef %s) #11, !dbg !203
  %add = add i64 %call, 1, !dbg !204
  call void @llvm.dbg.value(metadata i64 %add, metadata !200, metadata !DIExpression()), !dbg !202
  %call1 = tail call i8* @zmalloc(i64 noundef %add) #9, !dbg !205
  call void @llvm.dbg.value(metadata i8* %call1, metadata !201, metadata !DIExpression()), !dbg !202
  %call2 = tail call i8* @memcpy(i8* noundef nonnull %call1, i8* noundef %s, i64 noundef %add) #8, !dbg !206
  ret i8* %call1, !dbg !207
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !208 dso_local i64 @strlen(i8* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !212 dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @zmalloc_used_memory() local_unnamed_addr #0 !dbg !219 {
entry:
  %.b6 = load i1, i1* @zmalloc_thread_safe, align 4, !dbg !224
  br i1 %.b6, label %if.end, label %if.end.thread, !dbg !226

if.end.thread:                                    ; preds = %entry
  %0 = load i64, i64* @used_memory, align 8, !dbg !227, !tbaa !72
  call void @llvm.dbg.value(metadata i64 %1, metadata !223, metadata !DIExpression()), !dbg !228
  br label %if.end4, !dbg !229

if.end:                                           ; preds = %entry
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @used_memory_mutex) #8, !dbg !230
  %.b.pr = load i1, i1* @zmalloc_thread_safe, align 4, !dbg !231
  %1 = load i64, i64* @used_memory, align 8, !dbg !227, !tbaa !72
  call void @llvm.dbg.value(metadata i64 %1, metadata !223, metadata !DIExpression()), !dbg !228
  br i1 %.b.pr, label %if.then2, label %if.end4, !dbg !229

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @used_memory_mutex) #8, !dbg !233
  br label %if.end4, !dbg !233

if.end4:                                          ; preds = %if.end.thread, %if.then2, %if.end
  %2 = phi i64 [ %0, %if.end.thread ], [ %1, %if.then2 ], [ %1, %if.end ]
  ret i64 %2, !dbg !234
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @zmalloc_enable_thread_safeness() local_unnamed_addr #4 !dbg !235 {
entry:
  store i1 true, i1* @zmalloc_thread_safe, align 4, !dbg !238
  ret void, !dbg !239
}

declare !dbg !240 dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) local_unnamed_addr #5

declare !dbg !301 dso_local i32 @fflush(%struct._IO_FILE* noundef) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare !dbg !304 dso_local void @abort() local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #11 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "used_memory_mutex", scope: !2, file: !3, line: 69, type: !18, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !12, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "zmalloc.c", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "5ab8b5a6a048f4a3376a8c51928f15c0")
!4 = !{!5, !9, !11}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !7, line: 46, baseType: !8)
!7 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!8 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !{!0, !13, !16}
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "zmalloc_thread_safe", scope: !2, file: !3, line: 68, type: !15, isLocal: true, isDefinition: true)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "used_memory", scope: !2, file: !3, line: 67, type: !6, isLocal: true, isDefinition: true)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !19, line: 72, baseType: !20)
!19 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!20 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !19, line: 67, size: 320, elements: !21)
!21 = !{!22, !43, !47}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !20, file: !19, line: 69, baseType: !23, size: 320)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !24, line: 22, size: 320, elements: !25)
!24 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!25 = !{!26, !27, !29, !30, !31, !32, !34, !35}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !23, file: !24, line: 24, baseType: !15, size: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !23, file: !24, line: 25, baseType: !28, size: 32, offset: 32)
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !23, file: !24, line: 26, baseType: !15, size: 32, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !23, file: !24, line: 28, baseType: !28, size: 32, offset: 96)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !23, file: !24, line: 32, baseType: !15, size: 32, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !23, file: !24, line: 34, baseType: !33, size: 16, offset: 160)
!33 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !23, file: !24, line: 35, baseType: !33, size: 16, offset: 176)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !23, file: !24, line: 36, baseType: !36, size: 128, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !37, line: 53, baseType: !38)
!37 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !37, line: 49, size: 128, elements: !39)
!39 = !{!40, !42}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !38, file: !37, line: 51, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !38, file: !37, line: 52, baseType: !41, size: 64, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !20, file: !19, line: 70, baseType: !44, size: 320)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 320, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 40)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !20, file: !19, line: 71, baseType: !48, size: 64)
!48 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!49 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!50 = !{i32 7, !"Dwarf Version", i32 5}
!51 = !{i32 2, !"Debug Info Version", i32 3}
!52 = !{i32 1, !"wchar_size", i32 4}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{!"clang version 14.0.0"}
!55 = distinct !DISubprogram(name: "zmalloc", scope: !3, file: !3, line: 78, type: !56, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !58)
!56 = !DISubroutineType(types: !57)
!57 = !{!11, !6}
!58 = !{!59, !60, !61}
!59 = !DILocalVariable(name: "size", arg: 1, scope: !55, file: !3, line: 78, type: !6)
!60 = !DILocalVariable(name: "ptr", scope: !55, file: !3, line: 79, type: !11)
!61 = !DILocalVariable(name: "_n", scope: !62, file: !3, line: 87, type: !6)
!62 = distinct !DILexicalBlock(scope: !55, file: !3, line: 87, column: 5)
!63 = !DILocation(line: 0, scope: !55)
!64 = !DILocation(line: 79, column: 28, scope: !55)
!65 = !DILocation(line: 79, column: 17, scope: !55)
!66 = !DILocation(line: 81, column: 10, scope: !67)
!67 = distinct !DILexicalBlock(scope: !55, file: !3, line: 81, column: 9)
!68 = !DILocation(line: 81, column: 9, scope: !55)
!69 = !DILocation(line: 81, column: 15, scope: !67)
!70 = !DILocation(line: 86, column: 7, scope: !55)
!71 = !DILocation(line: 86, column: 21, scope: !55)
!72 = !{!73, !73, i64 0}
!73 = !{!"long", !74, i64 0}
!74 = !{!"omnipotent char", !75, i64 0}
!75 = !{!"Simple C/C++ TBAA"}
!76 = !DILocation(line: 0, scope: !62)
!77 = !DILocation(line: 87, column: 5, scope: !78)
!78 = distinct !DILexicalBlock(scope: !62, file: !3, line: 87, column: 5)
!79 = !DILocation(line: 87, column: 5, scope: !62)
!80 = !DILocation(line: 87, column: 5, scope: !81)
!81 = distinct !DILexicalBlock(scope: !62, file: !3, line: 87, column: 5)
!82 = !DILocation(line: 87, column: 5, scope: !83)
!83 = distinct !DILexicalBlock(scope: !81, file: !3, line: 87, column: 5)
!84 = !DILocation(line: 87, column: 5, scope: !85)
!85 = distinct !DILexicalBlock(scope: !81, file: !3, line: 87, column: 5)
!86 = !DILocation(line: 88, column: 22, scope: !55)
!87 = !DILocation(line: 88, column: 5, scope: !55)
!88 = !DISubprogram(name: "malloc", scope: !89, file: !89, line: 539, type: !56, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !90)
!89 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!90 = !{}
!91 = distinct !DISubprogram(name: "zmalloc_oom", scope: !3, file: !3, line: 71, type: !92, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !94)
!92 = !DISubroutineType(types: !93)
!93 = !{null, !6}
!94 = !{!95}
!95 = !DILocalVariable(name: "size", arg: 1, scope: !91, file: !3, line: 71, type: !6)
!96 = !DILocation(line: 0, scope: !91)
!97 = !DILocation(line: 72, column: 13, scope: !91)
!98 = !{!99, !99, i64 0}
!99 = !{!"any pointer", !74, i64 0}
!100 = !DILocation(line: 72, column: 5, scope: !91)
!101 = !DILocation(line: 74, column: 12, scope: !91)
!102 = !DILocation(line: 74, column: 5, scope: !91)
!103 = !DILocation(line: 75, column: 5, scope: !91)
!104 = !DISubprogram(name: "pthread_mutex_lock", scope: !105, file: !105, line: 738, type: !106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !90)
!105 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!106 = !DISubroutineType(types: !107)
!107 = !{!15, !108}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!109 = !DISubprogram(name: "pthread_mutex_unlock", scope: !105, file: !105, line: 756, type: !106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !90)
!110 = distinct !DISubprogram(name: "zrealloc", scope: !3, file: !3, line: 92, type: !111, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !113)
!111 = !DISubroutineType(types: !112)
!112 = !{!11, !11, !6}
!113 = !{!114, !115, !116, !117, !118, !119, !121}
!114 = !DILocalVariable(name: "ptr", arg: 1, scope: !110, file: !3, line: 92, type: !11)
!115 = !DILocalVariable(name: "size", arg: 2, scope: !110, file: !3, line: 92, type: !6)
!116 = !DILocalVariable(name: "realptr", scope: !110, file: !3, line: 94, type: !11)
!117 = !DILocalVariable(name: "oldsize", scope: !110, file: !3, line: 96, type: !6)
!118 = !DILocalVariable(name: "newptr", scope: !110, file: !3, line: 97, type: !11)
!119 = !DILocalVariable(name: "_n", scope: !120, file: !3, line: 115, type: !6)
!120 = distinct !DILexicalBlock(scope: !110, file: !3, line: 115, column: 5)
!121 = !DILocalVariable(name: "_n", scope: !122, file: !3, line: 116, type: !6)
!122 = distinct !DILexicalBlock(scope: !110, file: !3, line: 116, column: 5)
!123 = !DILocation(line: 0, scope: !110)
!124 = !DILocation(line: 99, column: 13, scope: !125)
!125 = distinct !DILexicalBlock(scope: !110, file: !3, line: 99, column: 9)
!126 = !DILocation(line: 99, column: 9, scope: !110)
!127 = !DILocation(line: 99, column: 29, scope: !125)
!128 = !DILocation(line: 99, column: 22, scope: !125)
!129 = !DILocation(line: 109, column: 25, scope: !110)
!130 = !DILocation(line: 110, column: 17, scope: !110)
!131 = !DILocation(line: 110, column: 15, scope: !110)
!132 = !DILocation(line: 111, column: 34, scope: !110)
!133 = !DILocation(line: 111, column: 14, scope: !110)
!134 = !DILocation(line: 112, column: 10, scope: !135)
!135 = distinct !DILexicalBlock(scope: !110, file: !3, line: 112, column: 9)
!136 = !DILocation(line: 112, column: 9, scope: !110)
!137 = !DILocation(line: 112, column: 18, scope: !135)
!138 = !DILocation(line: 114, column: 7, scope: !110)
!139 = !DILocation(line: 114, column: 24, scope: !110)
!140 = !DILocation(line: 0, scope: !120)
!141 = !DILocation(line: 115, column: 5, scope: !142)
!142 = distinct !DILexicalBlock(scope: !120, file: !3, line: 115, column: 5)
!143 = !DILocation(line: 115, column: 5, scope: !120)
!144 = !DILocation(line: 115, column: 5, scope: !145)
!145 = distinct !DILexicalBlock(scope: !120, file: !3, line: 115, column: 5)
!146 = !DILocation(line: 115, column: 5, scope: !147)
!147 = distinct !DILexicalBlock(scope: !145, file: !3, line: 115, column: 5)
!148 = !DILocation(line: 0, scope: !122)
!149 = !DILocation(line: 116, column: 5, scope: !150)
!150 = distinct !DILexicalBlock(scope: !122, file: !3, line: 116, column: 5)
!151 = !DILocation(line: 116, column: 5, scope: !122)
!152 = !DILocation(line: 115, column: 5, scope: !153)
!153 = distinct !DILexicalBlock(scope: !145, file: !3, line: 115, column: 5)
!154 = !DILocation(line: 116, column: 5, scope: !155)
!155 = distinct !DILexicalBlock(scope: !122, file: !3, line: 116, column: 5)
!156 = !DILocation(line: 116, column: 5, scope: !157)
!157 = distinct !DILexicalBlock(scope: !155, file: !3, line: 116, column: 5)
!158 = !DILocation(line: 116, column: 5, scope: !159)
!159 = distinct !DILexicalBlock(scope: !155, file: !3, line: 116, column: 5)
!160 = !DILocation(line: 117, column: 25, scope: !110)
!161 = !DILocation(line: 117, column: 5, scope: !110)
!162 = !DILocation(line: 119, column: 1, scope: !110)
!163 = !DISubprogram(name: "realloc", scope: !89, file: !89, line: 550, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !90)
!164 = distinct !DISubprogram(name: "zfree", scope: !3, file: !3, line: 121, type: !165, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !167)
!165 = !DISubroutineType(types: !166)
!166 = !{null, !11}
!167 = !{!168, !169, !170, !171}
!168 = !DILocalVariable(name: "ptr", arg: 1, scope: !164, file: !3, line: 121, type: !11)
!169 = !DILocalVariable(name: "realptr", scope: !164, file: !3, line: 123, type: !11)
!170 = !DILocalVariable(name: "oldsize", scope: !164, file: !3, line: 124, type: !6)
!171 = !DILocalVariable(name: "_n", scope: !172, file: !3, line: 134, type: !6)
!172 = distinct !DILexicalBlock(scope: !164, file: !3, line: 134, column: 5)
!173 = !DILocation(line: 0, scope: !164)
!174 = !DILocation(line: 127, column: 13, scope: !175)
!175 = distinct !DILexicalBlock(scope: !164, file: !3, line: 127, column: 9)
!176 = !DILocation(line: 127, column: 9, scope: !164)
!177 = !DILocation(line: 132, column: 25, scope: !164)
!178 = !DILocation(line: 133, column: 17, scope: !164)
!179 = !DILocation(line: 133, column: 15, scope: !164)
!180 = !DILocation(line: 134, column: 5, scope: !172)
!181 = !DILocation(line: 0, scope: !172)
!182 = !DILocation(line: 134, column: 5, scope: !183)
!183 = distinct !DILexicalBlock(scope: !172, file: !3, line: 134, column: 5)
!184 = !DILocation(line: 134, column: 5, scope: !185)
!185 = distinct !DILexicalBlock(scope: !172, file: !3, line: 134, column: 5)
!186 = !DILocation(line: 134, column: 5, scope: !187)
!187 = distinct !DILexicalBlock(scope: !185, file: !3, line: 134, column: 5)
!188 = !DILocation(line: 134, column: 5, scope: !189)
!189 = distinct !DILexicalBlock(scope: !185, file: !3, line: 134, column: 5)
!190 = !DILocation(line: 135, column: 5, scope: !164)
!191 = !DILocation(line: 137, column: 1, scope: !164)
!192 = !DISubprogram(name: "free", scope: !89, file: !89, line: 565, type: !165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !90)
!193 = distinct !DISubprogram(name: "zstrdup", scope: !3, file: !3, line: 139, type: !194, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !198)
!194 = !DISubroutineType(types: !195)
!195 = !{!9, !196}
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!198 = !{!199, !200, !201}
!199 = !DILocalVariable(name: "s", arg: 1, scope: !193, file: !3, line: 139, type: !196)
!200 = !DILocalVariable(name: "l", scope: !193, file: !3, line: 140, type: !6)
!201 = !DILocalVariable(name: "p", scope: !193, file: !3, line: 141, type: !9)
!202 = !DILocation(line: 0, scope: !193)
!203 = !DILocation(line: 140, column: 16, scope: !193)
!204 = !DILocation(line: 140, column: 25, scope: !193)
!205 = !DILocation(line: 141, column: 15, scope: !193)
!206 = !DILocation(line: 143, column: 5, scope: !193)
!207 = !DILocation(line: 144, column: 5, scope: !193)
!208 = !DISubprogram(name: "strlen", scope: !209, file: !209, line: 385, type: !210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !90)
!209 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "61f60112cf5c0a45c54ea1f595add24c")
!210 = !DISubroutineType(types: !211)
!211 = !{!6, !196}
!212 = !DISubprogram(name: "memcpy", scope: !209, file: !209, line: 43, type: !213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !90)
!213 = !DISubroutineType(types: !214)
!214 = !{!11, !215, !216, !6}
!215 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !11)
!216 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!219 = distinct !DISubprogram(name: "zmalloc_used_memory", scope: !3, file: !3, line: 147, type: !220, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !222)
!220 = !DISubroutineType(types: !221)
!221 = !{!6}
!222 = !{!223}
!223 = !DILocalVariable(name: "um", scope: !219, file: !3, line: 148, type: !6)
!224 = !DILocation(line: 150, column: 9, scope: !225)
!225 = distinct !DILexicalBlock(scope: !219, file: !3, line: 150, column: 9)
!226 = !DILocation(line: 150, column: 9, scope: !219)
!227 = !DILocation(line: 151, column: 10, scope: !219)
!228 = !DILocation(line: 0, scope: !219)
!229 = !DILocation(line: 152, column: 9, scope: !219)
!230 = !DILocation(line: 150, column: 30, scope: !225)
!231 = !DILocation(line: 152, column: 9, scope: !232)
!232 = distinct !DILexicalBlock(scope: !219, file: !3, line: 152, column: 9)
!233 = !DILocation(line: 152, column: 30, scope: !232)
!234 = !DILocation(line: 153, column: 5, scope: !219)
!235 = distinct !DISubprogram(name: "zmalloc_enable_thread_safeness", scope: !3, file: !3, line: 156, type: !236, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !90)
!236 = !DISubroutineType(types: !237)
!237 = !{null}
!238 = !DILocation(line: 157, column: 25, scope: !235)
!239 = !DILocation(line: 158, column: 1, scope: !235)
!240 = !DISubprogram(name: "fprintf", scope: !241, file: !241, line: 326, type: !242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !90)
!241 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!242 = !DISubroutineType(types: !243)
!243 = !{!15, !244, !300, null}
!244 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !247, line: 7, baseType: !248)
!247 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !249, line: 49, size: 1728, elements: !250)
!249 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!250 = !{!251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !266, !268, !269, !270, !273, !275, !277, !281, !284, !286, !289, !292, !293, !294, !295, !296}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !248, file: !249, line: 51, baseType: !15, size: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !248, file: !249, line: 54, baseType: !9, size: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !248, file: !249, line: 55, baseType: !9, size: 64, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !248, file: !249, line: 56, baseType: !9, size: 64, offset: 192)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !248, file: !249, line: 57, baseType: !9, size: 64, offset: 256)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !248, file: !249, line: 58, baseType: !9, size: 64, offset: 320)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !248, file: !249, line: 59, baseType: !9, size: 64, offset: 384)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !248, file: !249, line: 60, baseType: !9, size: 64, offset: 448)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !248, file: !249, line: 61, baseType: !9, size: 64, offset: 512)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !248, file: !249, line: 64, baseType: !9, size: 64, offset: 576)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !248, file: !249, line: 65, baseType: !9, size: 64, offset: 640)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !248, file: !249, line: 66, baseType: !9, size: 64, offset: 704)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !248, file: !249, line: 68, baseType: !264, size: 64, offset: 768)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !249, line: 36, flags: DIFlagFwdDecl)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !248, file: !249, line: 70, baseType: !267, size: 64, offset: 832)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !248, file: !249, line: 72, baseType: !15, size: 32, offset: 896)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !248, file: !249, line: 73, baseType: !15, size: 32, offset: 928)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !248, file: !249, line: 74, baseType: !271, size: 64, offset: 960)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !272, line: 152, baseType: !48)
!272 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !248, file: !249, line: 77, baseType: !274, size: 16, offset: 1024)
!274 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !248, file: !249, line: 78, baseType: !276, size: 8, offset: 1040)
!276 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !248, file: !249, line: 79, baseType: !278, size: 8, offset: 1048)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 8, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 1)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !248, file: !249, line: 81, baseType: !282, size: 64, offset: 1088)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !249, line: 43, baseType: null)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !248, file: !249, line: 89, baseType: !285, size: 64, offset: 1152)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !272, line: 153, baseType: !48)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !248, file: !249, line: 91, baseType: !287, size: 64, offset: 1216)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !249, line: 37, flags: DIFlagFwdDecl)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !248, file: !249, line: 92, baseType: !290, size: 64, offset: 1280)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !249, line: 38, flags: DIFlagFwdDecl)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !248, file: !249, line: 93, baseType: !267, size: 64, offset: 1344)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !248, file: !249, line: 94, baseType: !11, size: 64, offset: 1408)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !248, file: !249, line: 95, baseType: !6, size: 64, offset: 1472)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !248, file: !249, line: 96, baseType: !15, size: 32, offset: 1536)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !248, file: !249, line: 98, baseType: !297, size: 160, offset: 1568)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 160, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: 20)
!300 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !196)
!301 = !DISubprogram(name: "fflush", scope: !241, file: !241, line: 218, type: !302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !90)
!302 = !DISubroutineType(types: !303)
!303 = !{!15, !245}
!304 = !DISubprogram(name: "abort", scope: !89, file: !89, line: 591, type: !236, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !90)
