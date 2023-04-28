; ModuleID = 'timedrun.c'
source_filename = "timedrun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct.__sigset_t = type { [16 x i64] }

@caught_sig = dso_local global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [30 x i8] c"naptime > 0 && naptime < 1800\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"timedrun.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"./timedrun <naptime in sec> args...\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Timeout.. killing the process\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"lost child when trying to kill\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 !dbg !21 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !25, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i8** %argv, metadata !26, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i32 0, metadata !27, metadata !DIExpression()), !dbg !28
  %cmp = icmp slt i32 %argc, 3, !dbg !29
  br i1 %cmp, label %if.then, label %if.end, !dbg !31

if.then:                                          ; preds = %entry
  tail call fastcc void @usage() #10, !dbg !32
  unreachable, !dbg !32

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 1, !dbg !33
  %0 = load i8*, i8** %arrayidx, align 8, !dbg !33, !tbaa !34
  %call = tail call i32 @atoi(i8* noundef %0) #11, !dbg !38
  call void @llvm.dbg.value(metadata i32 %call, metadata !27, metadata !DIExpression()), !dbg !28
  %1 = add i32 %call, -1, !dbg !39
  %2 = icmp ult i32 %1, 1799, !dbg !39
  br i1 %2, label %if.end4, label %if.else, !dbg !39

if.else:                                          ; preds = %if.end
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 noundef 106, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #12, !dbg !39
  unreachable, !dbg !39

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @alarm(i32 noundef %call) #13, !dbg !42
  %add.ptr = getelementptr inbounds i8*, i8** %argv, i64 2, !dbg !43
  %call6 = tail call fastcc i32 @spawn_and_wait(i8** noundef nonnull %add.ptr) #10, !dbg !44
  ret i32 %call6, !dbg !45
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline noreturn nounwind uwtable
define internal fastcc void @usage() unnamed_addr #3 !dbg !46 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !50, !tbaa !34
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0)) #13, !dbg !51
  tail call void @exit(i32 noundef -1) #12, !dbg !52
  unreachable, !dbg !52
}

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
declare dso_local i32 @atoi(i8* noundef nonnull) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !53 dso_local i32 @alarm(i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @spawn_and_wait(i8** noundef %argv) unnamed_addr #0 !dbg !58 {
entry:
  call void @llvm.dbg.value(metadata i8** %argv, metadata !62, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata i32 70, metadata !63, metadata !DIExpression()), !dbg !68
  %call = tail call i32 @fork() #13, !dbg !69
  call void @llvm.dbg.value(metadata i32 %call, metadata !64, metadata !DIExpression()), !dbg !68
  switch i32 %call, label %sw.default [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb1
  ], !dbg !70

sw.bb:                                            ; preds = %entry
  tail call void @perror(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #13, !dbg !71
  call void @llvm.dbg.value(metadata i32 71, metadata !63, metadata !DIExpression()), !dbg !68
  br label %sw.epilog, !dbg !73

sw.bb1:                                           ; preds = %entry
  %0 = load i8*, i8** %argv, align 8, !dbg !74, !tbaa !34
  %call2 = tail call i32 @execvp(i8* noundef %0, i8** noundef nonnull %argv) #13, !dbg !75
  tail call void @perror(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !76
  call void @llvm.dbg.value(metadata i32 70, metadata !63, metadata !DIExpression()), !dbg !68
  br label %sw.epilog, !dbg !77

sw.default:                                       ; preds = %entry
  %call3 = tail call fastcc i32 @wait_for_process(i32 noundef %call) #10, !dbg !78
  call void @llvm.dbg.value(metadata i32 %call3, metadata !63, metadata !DIExpression()), !dbg !68
  br label %sw.epilog, !dbg !79

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  %rv.0 = phi i32 [ %call3, %sw.default ], [ 70, %sw.bb1 ], [ 71, %sw.bb ], !dbg !80
  call void @llvm.dbg.value(metadata i32 %rv.0, metadata !63, metadata !DIExpression()), !dbg !68
  ret i32 %rv.0, !dbg !81
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare !dbg !82 dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: noreturn nounwind
declare !dbg !148 dso_local void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !152 dso_local i32 @fork() local_unnamed_addr #6

declare !dbg !155 dso_local void @perror(i8* noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !158 dso_local i32 @execvp(i8* noundef, i8** noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @wait_for_process(i32 noundef %pid) unnamed_addr #0 !dbg !163 {
entry:
  %status = alloca i32, align 4
  %sig_handler = alloca %struct.sigaction, align 8
  call void @llvm.dbg.value(metadata i32 %pid, metadata !167, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata i32 70, metadata !168, metadata !DIExpression()), !dbg !281
  %0 = bitcast i32* %status to i8*, !dbg !282
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #14, !dbg !282
  call void @llvm.dbg.value(metadata i32 0, metadata !169, metadata !DIExpression()), !dbg !281
  store i32 0, i32* %status, align 4, !dbg !283, !tbaa !284
  call void @llvm.dbg.value(metadata i32 0, metadata !170, metadata !DIExpression()), !dbg !281
  %1 = bitcast %struct.sigaction* %sig_handler to i8*, !dbg !286
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %1) #14, !dbg !286
  call void @llvm.dbg.declare(metadata %struct.sigaction* %sig_handler, metadata !171, metadata !DIExpression()), !dbg !287
  %call = call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef 152) #13, !dbg !288
  %sa_handler = getelementptr inbounds %struct.sigaction, %struct.sigaction* %sig_handler, i64 0, i32 0, i32 0, !dbg !289
  store void (i32)* @signal_handler, void (i32)** %sa_handler, align 8, !dbg !290, !tbaa !291
  %sa_flags = getelementptr inbounds %struct.sigaction, %struct.sigaction* %sig_handler, i64 0, i32 2, !dbg !292
  store i32 0, i32* %sa_flags, align 8, !dbg !293, !tbaa !294
  %call1 = call i32 @sigaction(i32 noundef 14, %struct.sigaction* noundef nonnull %sig_handler, %struct.sigaction* noundef null) #13, !dbg !297
  %call2 = call i32 @sigaction(i32 noundef 1, %struct.sigaction* noundef nonnull %sig_handler, %struct.sigaction* noundef null) #13, !dbg !298
  %call3 = call i32 @sigaction(i32 noundef 2, %struct.sigaction* noundef nonnull %sig_handler, %struct.sigaction* noundef null) #13, !dbg !299
  %call4 = call i32 @sigaction(i32 noundef 10, %struct.sigaction* noundef nonnull %sig_handler, %struct.sigaction* noundef null) #13, !dbg !300
  %call5 = call i32 @sigaction(i32 noundef 15, %struct.sigaction* noundef nonnull %sig_handler, %struct.sigaction* noundef null) #13, !dbg !301
  %call6 = call i32 @sigaction(i32 noundef 13, %struct.sigaction* noundef nonnull %sig_handler, %struct.sigaction* noundef null) #13, !dbg !302
  call void @llvm.dbg.value(metadata i32 70, metadata !168, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata i32 0, metadata !170, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata i32* %status, metadata !169, metadata !DIExpression(DW_OP_deref)), !dbg !281
  %call741 = call i32 @waitpid(i32 noundef %pid, i32* noundef nonnull %status, i32 noundef 0) #13, !dbg !303
  call void @llvm.dbg.value(metadata i32 %call741, metadata !274, metadata !DIExpression()), !dbg !304
  %cmp42 = icmp eq i32 %call741, %pid, !dbg !305
  br i1 %cmp42, label %for.end, label %if.else, !dbg !306

if.else:                                          ; preds = %entry, %for.inc
  %i.043 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i32 %i.043, metadata !170, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata i32 0, metadata !278, metadata !DIExpression()), !dbg !307
  switch i32 %i.043, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.epilog
  ], !dbg !308

sw.bb:                                            ; preds = %if.else
  %2 = load volatile i32, i32* @caught_sig, align 4, !dbg !309, !tbaa !284
  %cmp11 = icmp sgt i32 %2, 0, !dbg !311
  br i1 %cmp11, label %cond.true12, label %cond.end14, !dbg !309

cond.true12:                                      ; preds = %sw.bb
  %3 = load volatile i32, i32* @caught_sig, align 4, !dbg !312, !tbaa !284
  br label %cond.end14, !dbg !309

cond.end14:                                       ; preds = %sw.bb, %cond.true12
  %cond15 = phi i32 [ %3, %cond.true12 ], [ 15, %sw.bb ], !dbg !309
  call void @llvm.dbg.value(metadata i32 %cond15, metadata !278, metadata !DIExpression()), !dbg !307
  %4 = load volatile i32, i32* @caught_sig, align 4, !dbg !313, !tbaa !284
  %cmp16 = icmp eq i32 %4, 14, !dbg !315
  br i1 %cmp16, label %if.then17, label %sw.epilog, !dbg !316

if.then17:                                        ; preds = %cond.end14
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !317, !tbaa !34
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0)) #13, !dbg !319
  br label %sw.epilog, !dbg !320

sw.default:                                       ; preds = %if.else
  call void @llvm.dbg.value(metadata i32 9, metadata !278, metadata !DIExpression()), !dbg !307
  br label %sw.epilog, !dbg !321

sw.epilog:                                        ; preds = %if.else, %cond.end14, %if.then17, %sw.default
  %sig.0 = phi i32 [ 9, %sw.default ], [ %cond15, %if.then17 ], [ %cond15, %cond.end14 ], [ 15, %if.else ], !dbg !322
  call void @llvm.dbg.value(metadata i32 %sig.0, metadata !278, metadata !DIExpression()), !dbg !307
  %call20 = call i32 @kill(i32 noundef %pid, i32 noundef %sig.0) #13, !dbg !323
  %cmp21 = icmp slt i32 %call20, 0, !dbg !325
  br i1 %cmp21, label %if.then22, label %for.inc, !dbg !326

if.then22:                                        ; preds = %sw.epilog
  call void @perror(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0)) #13, !dbg !327
  br label %for.inc, !dbg !329

for.inc:                                          ; preds = %sw.epilog, %if.then22
  %call24 = call i32 @alarm(i32 noundef 5) #13, !dbg !330
  call void @llvm.dbg.value(metadata i32 %cond, metadata !168, metadata !DIExpression()), !dbg !281
  %inc = add nuw nsw i32 %i.043, 1, !dbg !331
  call void @llvm.dbg.value(metadata i32 70, metadata !168, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata i32 %inc, metadata !170, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata i32* %status, metadata !169, metadata !DIExpression(DW_OP_deref)), !dbg !281
  %call7 = call i32 @waitpid(i32 noundef %pid, i32* noundef nonnull %status, i32 noundef 0) #13, !dbg !303
  call void @llvm.dbg.value(metadata i32 %call7, metadata !274, metadata !DIExpression()), !dbg !304
  %cmp = icmp eq i32 %call7, %pid, !dbg !305
  br i1 %cmp, label %for.end, label %if.else, !dbg !306, !llvm.loop !332

for.end:                                          ; preds = %for.inc, %entry
  %6 = load i32, i32* %status, align 4, !dbg !335, !tbaa !284
  call void @llvm.dbg.value(metadata i32 %6, metadata !169, metadata !DIExpression()), !dbg !281
  %and = and i32 %6, 127, !dbg !335
  %cmp8 = icmp eq i32 %and, 0, !dbg !335
  %and9 = lshr i32 %6, 8, !dbg !335
  %7 = and i32 %and9, 255, !dbg !335
  %or = or i32 %and, 128, !dbg !335
  %cond = select i1 %cmp8, i32 %7, i32 %or, !dbg !335
  call void @llvm.dbg.value(metadata i32 %cond, metadata !168, metadata !DIExpression()), !dbg !281
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %1) #14, !dbg !337
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14, !dbg !337
  ret i32 %cond, !dbg !338
}

; Function Attrs: nounwind
declare !dbg !339 dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nounwind uwtable
define internal void @signal_handler(i32 noundef %which) #8 !dbg !343 {
entry:
  call void @llvm.dbg.value(metadata i32 %which, metadata !345, metadata !DIExpression()), !dbg !346
  store volatile i32 %which, i32* @caught_sig, align 4, !dbg !347, !tbaa !284
  ret void, !dbg !348
}

; Function Attrs: nounwind
declare !dbg !349 dso_local i32 @sigaction(i32 noundef, %struct.sigaction* noundef, %struct.sigaction* noundef) local_unnamed_addr #6

declare !dbg !357 dso_local i32 @waitpid(i32 noundef, i32* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !362 dso_local i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #12 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #13 = { nobuiltin nounwind "no-builtins" }
attributes #14 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "caught_sig", scope: !2, file: !3, line: 11, type: !11, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "timedrun.c", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "dfcd651ccf71c00d152d2c7619a86d50")
!4 = !{!5, !6, !9}
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = !{!0}
!11 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "sig_atomic_t", file: !13, line: 8, baseType: !14)
!13 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/sig_atomic_t.h", directory: "", checksumkind: CSK_MD5, checksum: "d9236f7e3e7f10f53aa9d4cd97f503cf")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sig_atomic_t", file: !15, line: 214, baseType: !5)
!15 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!16 = !{i32 7, !"Dwarf Version", i32 5}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{!"clang version 14.0.0"}
!21 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 99, type: !22, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !24)
!22 = !DISubroutineType(types: !23)
!23 = !{!5, !5, !6}
!24 = !{!25, !26, !27}
!25 = !DILocalVariable(name: "argc", arg: 1, scope: !21, file: !3, line: 99, type: !5)
!26 = !DILocalVariable(name: "argv", arg: 2, scope: !21, file: !3, line: 99, type: !6)
!27 = !DILocalVariable(name: "naptime", scope: !21, file: !3, line: 101, type: !5)
!28 = !DILocation(line: 0, scope: !21)
!29 = !DILocation(line: 102, column: 14, scope: !30)
!30 = distinct !DILexicalBlock(scope: !21, file: !3, line: 102, column: 9)
!31 = !DILocation(line: 102, column: 9, scope: !21)
!32 = !DILocation(line: 103, column: 9, scope: !30)
!33 = !DILocation(line: 105, column: 20, scope: !21)
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !DILocation(line: 105, column: 15, scope: !21)
!39 = !DILocation(line: 106, column: 5, scope: !40)
!40 = distinct !DILexicalBlock(scope: !41, file: !3, line: 106, column: 5)
!41 = distinct !DILexicalBlock(scope: !21, file: !3, line: 106, column: 5)
!42 = !DILocation(line: 108, column: 5, scope: !21)
!43 = !DILocation(line: 110, column: 31, scope: !21)
!44 = !DILocation(line: 110, column: 12, scope: !21)
!45 = !DILocation(line: 110, column: 5, scope: !21)
!46 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 94, type: !47, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !49)
!47 = !DISubroutineType(types: !48)
!48 = !{null}
!49 = !{}
!50 = !DILocation(line: 95, column: 13, scope: !46)
!51 = !DILocation(line: 95, column: 5, scope: !46)
!52 = !DILocation(line: 96, column: 5, scope: !46)
!53 = !DISubprogram(name: "alarm", scope: !54, file: !54, line: 432, type: !55, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!54 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "29bea3f2d65ec3bb874f389bfdfa2266")
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !57}
!57 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!58 = distinct !DISubprogram(name: "spawn_and_wait", scope: !3, file: !3, line: 73, type: !59, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !61)
!59 = !DISubroutineType(types: !60)
!60 = !{!5, !6}
!61 = !{!62, !63, !64}
!62 = !DILocalVariable(name: "argv", arg: 1, scope: !58, file: !3, line: 73, type: !6)
!63 = !DILocalVariable(name: "rv", scope: !58, file: !3, line: 75, type: !5)
!64 = !DILocalVariable(name: "pid", scope: !58, file: !3, line: 76, type: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !66, line: 97, baseType: !67)
!66 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "20e2108af45064f5c7b77fc9416f0cce")
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !15, line: 154, baseType: !5)
!68 = !DILocation(line: 0, scope: !58)
!69 = !DILocation(line: 76, column: 17, scope: !58)
!70 = !DILocation(line: 78, column: 5, scope: !58)
!71 = !DILocation(line: 80, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !58, file: !3, line: 78, column: 18)
!73 = !DILocation(line: 82, column: 9, scope: !72)
!74 = !DILocation(line: 84, column: 16, scope: !72)
!75 = !DILocation(line: 84, column: 9, scope: !72)
!76 = !DILocation(line: 85, column: 9, scope: !72)
!77 = !DILocation(line: 87, column: 9, scope: !72)
!78 = !DILocation(line: 89, column: 14, scope: !72)
!79 = !DILocation(line: 90, column: 5, scope: !72)
!80 = !DILocation(line: 0, scope: !72)
!81 = !DILocation(line: 91, column: 5, scope: !58)
!82 = !DISubprogram(name: "fprintf", scope: !83, file: !83, line: 326, type: !84, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!83 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!84 = !DISubroutineType(types: !85)
!85 = !{!5, !86, !145, null}
!86 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !89, line: 7, baseType: !90)
!89 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !91, line: 49, size: 1728, elements: !92)
!91 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!92 = !{!93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !108, !110, !111, !112, !115, !117, !119, !123, !126, !128, !131, !134, !135, !136, !140, !141}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !90, file: !91, line: 51, baseType: !5, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !90, file: !91, line: 54, baseType: !7, size: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !90, file: !91, line: 55, baseType: !7, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !90, file: !91, line: 56, baseType: !7, size: 64, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !90, file: !91, line: 57, baseType: !7, size: 64, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !90, file: !91, line: 58, baseType: !7, size: 64, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !90, file: !91, line: 59, baseType: !7, size: 64, offset: 384)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !90, file: !91, line: 60, baseType: !7, size: 64, offset: 448)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !90, file: !91, line: 61, baseType: !7, size: 64, offset: 512)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !90, file: !91, line: 64, baseType: !7, size: 64, offset: 576)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !90, file: !91, line: 65, baseType: !7, size: 64, offset: 640)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !90, file: !91, line: 66, baseType: !7, size: 64, offset: 704)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !90, file: !91, line: 68, baseType: !106, size: 64, offset: 768)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !91, line: 36, flags: DIFlagFwdDecl)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !90, file: !91, line: 70, baseType: !109, size: 64, offset: 832)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !90, file: !91, line: 72, baseType: !5, size: 32, offset: 896)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !90, file: !91, line: 73, baseType: !5, size: 32, offset: 928)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !90, file: !91, line: 74, baseType: !113, size: 64, offset: 960)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !15, line: 152, baseType: !114)
!114 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !90, file: !91, line: 77, baseType: !116, size: 16, offset: 1024)
!116 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !90, file: !91, line: 78, baseType: !118, size: 8, offset: 1040)
!118 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !90, file: !91, line: 79, baseType: !120, size: 8, offset: 1048)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 1)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !90, file: !91, line: 81, baseType: !124, size: 64, offset: 1088)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !91, line: 43, baseType: null)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !90, file: !91, line: 89, baseType: !127, size: 64, offset: 1152)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !15, line: 153, baseType: !114)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !90, file: !91, line: 91, baseType: !129, size: 64, offset: 1216)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !91, line: 37, flags: DIFlagFwdDecl)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !90, file: !91, line: 92, baseType: !132, size: 64, offset: 1280)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !91, line: 38, flags: DIFlagFwdDecl)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !90, file: !91, line: 93, baseType: !109, size: 64, offset: 1344)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !90, file: !91, line: 94, baseType: !9, size: 64, offset: 1408)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !90, file: !91, line: 95, baseType: !137, size: 64, offset: 1472)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !138, line: 46, baseType: !139)
!138 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!139 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !90, file: !91, line: 96, baseType: !5, size: 32, offset: 1536)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !90, file: !91, line: 98, baseType: !142, size: 160, offset: 1568)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 20)
!145 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!148 = !DISubprogram(name: "exit", scope: !149, file: !149, line: 617, type: !150, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !49)
!149 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!150 = !DISubroutineType(types: !151)
!151 = !{null, !5}
!152 = !DISubprogram(name: "fork", scope: !54, file: !54, line: 756, type: !153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!153 = !DISubroutineType(types: !154)
!154 = !{!67}
!155 = !DISubprogram(name: "perror", scope: !83, file: !83, line: 775, type: !156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!156 = !DISubroutineType(types: !157)
!157 = !{null, !146}
!158 = !DISubprogram(name: "execvp", scope: !54, file: !54, line: 578, type: !159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!159 = !DISubroutineType(types: !160)
!160 = !{!5, !146, !161}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!163 = distinct !DISubprogram(name: "wait_for_process", scope: !3, file: !3, line: 18, type: !164, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !166)
!164 = !DISubroutineType(types: !165)
!165 = !{!5, !65}
!166 = !{!167, !168, !169, !170, !171, !274, !278}
!167 = !DILocalVariable(name: "pid", arg: 1, scope: !163, file: !3, line: 18, type: !65)
!168 = !DILocalVariable(name: "rv", scope: !163, file: !3, line: 20, type: !5)
!169 = !DILocalVariable(name: "status", scope: !163, file: !3, line: 21, type: !5)
!170 = !DILocalVariable(name: "i", scope: !163, file: !3, line: 22, type: !5)
!171 = !DILocalVariable(name: "sig_handler", scope: !163, file: !3, line: 23, type: !172)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !173, line: 27, size: 1216, elements: !174)
!173 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigaction.h", directory: "", checksumkind: CSK_MD5, checksum: "1805cae78f5d4b57699d05e93bbc6a62")
!174 = !{!175, !262, !271, !272}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !172, file: !173, line: 38, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !172, file: !173, line: 31, size: 64, elements: !177)
!177 = !{!178, !182}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !176, file: !173, line: 34, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !180, line: 72, baseType: !181)
!180 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "f0ccc98b488c777571beae1a47763d91")
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !176, file: !173, line: 36, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !5, !186, !9}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !188, line: 124, baseType: !189)
!188 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h", directory: "", checksumkind: CSK_MD5, checksum: "023cf7b0ef843da262cf07900eda0ac5")
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !188, line: 36, size: 1024, elements: !190)
!190 = !{!191, !192, !193, !194, !195}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !189, file: !188, line: 38, baseType: !5, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !189, file: !188, line: 40, baseType: !5, size: 32, offset: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !189, file: !188, line: 42, baseType: !5, size: 32, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !189, file: !188, line: 48, baseType: !5, size: 32, offset: 96)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !189, file: !188, line: 123, baseType: !196, size: 896, offset: 128)
!196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !189, file: !188, line: 51, size: 896, elements: !197)
!197 = !{!198, !202, !208, !220, !226, !235, !251, !256}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !196, file: !188, line: 53, baseType: !199, size: 896)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 896, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 28)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !196, file: !188, line: 60, baseType: !203, size: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !196, file: !188, line: 56, size: 64, elements: !204)
!204 = !{!205, !206}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !203, file: !188, line: 58, baseType: !67, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !203, file: !188, line: 59, baseType: !207, size: 32, offset: 32)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !15, line: 146, baseType: !57)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !196, file: !188, line: 68, baseType: !209, size: 128)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !196, file: !188, line: 63, size: 128, elements: !210)
!210 = !{!211, !212, !213}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !209, file: !188, line: 65, baseType: !5, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !209, file: !188, line: 66, baseType: !5, size: 32, offset: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !209, file: !188, line: 67, baseType: !214, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigval_t", file: !215, line: 30, baseType: !216)
!215 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__sigval_t.h", directory: "", checksumkind: CSK_MD5, checksum: "b8454a73bc9e55d1e2fd22e496f3e023")
!216 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !215, line: 24, size: 64, elements: !217)
!217 = !{!218, !219}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !216, file: !215, line: 26, baseType: !5, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !216, file: !215, line: 27, baseType: !9, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !196, file: !188, line: 76, baseType: !221, size: 128)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !196, file: !188, line: 71, size: 128, elements: !222)
!222 = !{!223, !224, !225}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !221, file: !188, line: 73, baseType: !67, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !221, file: !188, line: 74, baseType: !207, size: 32, offset: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !221, file: !188, line: 75, baseType: !214, size: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !196, file: !188, line: 86, baseType: !227, size: 256)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !196, file: !188, line: 79, size: 256, elements: !228)
!228 = !{!229, !230, !231, !232, !234}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !227, file: !188, line: 81, baseType: !67, size: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !227, file: !188, line: 82, baseType: !207, size: 32, offset: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !227, file: !188, line: 83, baseType: !5, size: 32, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !227, file: !188, line: 84, baseType: !233, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !15, line: 156, baseType: !114)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !227, file: !188, line: 85, baseType: !233, size: 64, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !196, file: !188, line: 105, baseType: !236, size: 256)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !196, file: !188, line: 89, size: 256, elements: !237)
!237 = !{!238, !239, !241}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !236, file: !188, line: 91, baseType: !9, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !236, file: !188, line: 93, baseType: !240, size: 16, offset: 64)
!240 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_bounds", scope: !236, file: !188, line: 104, baseType: !242, size: 128, offset: 128)
!242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !236, file: !188, line: 94, size: 128, elements: !243)
!243 = !{!244, !249}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !242, file: !188, line: 101, baseType: !245, size: 128)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !242, file: !188, line: 97, size: 128, elements: !246)
!246 = !{!247, !248}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !245, file: !188, line: 99, baseType: !9, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !245, file: !188, line: 100, baseType: !9, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !242, file: !188, line: 103, baseType: !250, size: 32)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !15, line: 42, baseType: !57)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !196, file: !188, line: 112, baseType: !252, size: 128)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !196, file: !188, line: 108, size: 128, elements: !253)
!253 = !{!254, !255}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !252, file: !188, line: 110, baseType: !114, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !252, file: !188, line: 111, baseType: !5, size: 32, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !196, file: !188, line: 121, baseType: !257, size: 128)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !196, file: !188, line: 116, size: 128, elements: !258)
!258 = !{!259, !260, !261}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !257, file: !188, line: 118, baseType: !9, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !257, file: !188, line: 119, baseType: !5, size: 32, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !257, file: !188, line: 120, baseType: !57, size: 32, offset: 96)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !172, file: !173, line: 46, baseType: !263, size: 1024, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !264, line: 8, baseType: !265)
!264 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h", directory: "", checksumkind: CSK_MD5, checksum: "acc6b14c0967857fec362a8d433e1cf2")
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !264, line: 5, size: 1024, elements: !266)
!266 = !{!267}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !265, file: !264, line: 7, baseType: !268, size: 1024)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 1024, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 16)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !172, file: !173, line: 49, baseType: !5, size: 32, offset: 1088)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !172, file: !173, line: 52, baseType: !273, size: 64, offset: 1152)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!274 = !DILocalVariable(name: "p", scope: !275, file: !3, line: 38, type: !65)
!275 = distinct !DILexicalBlock(scope: !276, file: !3, line: 37, column: 23)
!276 = distinct !DILexicalBlock(scope: !277, file: !3, line: 37, column: 5)
!277 = distinct !DILexicalBlock(scope: !163, file: !3, line: 37, column: 5)
!278 = !DILocalVariable(name: "sig", scope: !279, file: !3, line: 46, type: !5)
!279 = distinct !DILexicalBlock(scope: !280, file: !3, line: 45, column: 16)
!280 = distinct !DILexicalBlock(scope: !275, file: !3, line: 39, column: 13)
!281 = !DILocation(line: 0, scope: !163)
!282 = !DILocation(line: 21, column: 5, scope: !163)
!283 = !DILocation(line: 21, column: 9, scope: !163)
!284 = !{!285, !285, i64 0}
!285 = !{!"int", !36, i64 0}
!286 = !DILocation(line: 23, column: 5, scope: !163)
!287 = !DILocation(line: 23, column: 22, scope: !163)
!288 = !DILocation(line: 25, column: 5, scope: !163)
!289 = !DILocation(line: 26, column: 17, scope: !163)
!290 = !DILocation(line: 26, column: 28, scope: !163)
!291 = !{!36, !36, i64 0}
!292 = !DILocation(line: 27, column: 17, scope: !163)
!293 = !DILocation(line: 27, column: 26, scope: !163)
!294 = !{!295, !285, i64 136}
!295 = !{!"sigaction", !36, i64 0, !296, i64 8, !285, i64 136, !35, i64 144}
!296 = !{!"", !36, i64 0}
!297 = !DILocation(line: 29, column: 5, scope: !163)
!298 = !DILocation(line: 30, column: 5, scope: !163)
!299 = !DILocation(line: 31, column: 5, scope: !163)
!300 = !DILocation(line: 32, column: 5, scope: !163)
!301 = !DILocation(line: 33, column: 5, scope: !163)
!302 = !DILocation(line: 34, column: 5, scope: !163)
!303 = !DILocation(line: 38, column: 19, scope: !275)
!304 = !DILocation(line: 0, scope: !275)
!305 = !DILocation(line: 39, column: 15, scope: !280)
!306 = !DILocation(line: 39, column: 13, scope: !275)
!307 = !DILocation(line: 0, scope: !279)
!308 = !DILocation(line: 47, column: 13, scope: !279)
!309 = !DILocation(line: 50, column: 23, scope: !310)
!310 = distinct !DILexicalBlock(scope: !279, file: !3, line: 47, column: 24)
!311 = !DILocation(line: 50, column: 34, scope: !310)
!312 = !DILocation(line: 50, column: 40, scope: !310)
!313 = !DILocation(line: 51, column: 21, scope: !314)
!314 = distinct !DILexicalBlock(scope: !310, file: !3, line: 51, column: 21)
!315 = !DILocation(line: 51, column: 32, scope: !314)
!316 = !DILocation(line: 51, column: 21, scope: !310)
!317 = !DILocation(line: 52, column: 28, scope: !318)
!318 = distinct !DILexicalBlock(scope: !314, file: !3, line: 51, column: 44)
!319 = !DILocation(line: 52, column: 20, scope: !318)
!320 = !DILocation(line: 53, column: 17, scope: !318)
!321 = !DILocation(line: 60, column: 17, scope: !310)
!322 = !DILocation(line: 0, scope: !310)
!323 = !DILocation(line: 62, column: 17, scope: !324)
!324 = distinct !DILexicalBlock(scope: !279, file: !3, line: 62, column: 17)
!325 = !DILocation(line: 62, column: 32, scope: !324)
!326 = !DILocation(line: 62, column: 17, scope: !279)
!327 = !DILocation(line: 64, column: 17, scope: !328)
!328 = distinct !DILexicalBlock(scope: !324, file: !3, line: 62, column: 37)
!329 = !DILocation(line: 65, column: 13, scope: !328)
!330 = !DILocation(line: 67, column: 13, scope: !279)
!331 = !DILocation(line: 37, column: 19, scope: !276)
!332 = distinct !{!332, !333, !334}
!333 = !DILocation(line: 37, column: 5, scope: !277)
!334 = !DILocation(line: 69, column: 5, scope: !277)
!335 = !DILocation(line: 41, column: 18, scope: !336)
!336 = distinct !DILexicalBlock(scope: !280, file: !3, line: 39, column: 23)
!337 = !DILocation(line: 71, column: 1, scope: !163)
!338 = !DILocation(line: 70, column: 5, scope: !163)
!339 = !DISubprogram(name: "memset", scope: !340, file: !340, line: 61, type: !341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!340 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "61f60112cf5c0a45c54ea1f595add24c")
!341 = !DISubroutineType(types: !342)
!342 = !{!9, !9, !5, !137}
!343 = distinct !DISubprogram(name: "signal_handler", scope: !3, file: !3, line: 13, type: !150, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !344)
!344 = !{!345}
!345 = !DILocalVariable(name: "which", arg: 1, scope: !343, file: !3, line: 13, type: !5)
!346 = !DILocation(line: 0, scope: !343)
!347 = !DILocation(line: 15, column: 16, scope: !343)
!348 = !DILocation(line: 16, column: 1, scope: !343)
!349 = !DISubprogram(name: "sigaction", scope: !180, file: !180, line: 240, type: !350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!350 = !DISubroutineType(types: !351)
!351 = !{!5, !5, !352, !355}
!352 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!355 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!357 = !DISubprogram(name: "waitpid", scope: !358, file: !358, line: 100, type: !359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!358 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/wait.h", directory: "", checksumkind: CSK_MD5, checksum: "6b7302c12011b4fba722770ed61d7499")
!359 = !DISubroutineType(types: !360)
!360 = !{!67, !67, !361, !5}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!362 = !DISubprogram(name: "kill", scope: !180, file: !180, line: 112, type: !363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!363 = !DISubroutineType(types: !364)
!364 = !{!5, !67, !5}
