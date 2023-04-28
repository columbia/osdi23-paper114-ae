; ModuleID = 'sizes.c'
source_filename = "sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"Slab Stats\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Thread stats\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Global stats\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Settings\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Item (no cas)\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Item (cas)\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"extstore header\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Libevent thread\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Response object\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Response bundle\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Response objects per bundle\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"----------------------------------------\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"libevent thread cumulative\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"Thread stats cumulative\09\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"%s\09%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** nocapture noundef readnone %argv) local_unnamed_addr #0 !dbg !9 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !16, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.value(metadata i8** %argv, metadata !17, metadata !DIExpression()), !dbg !18
  tail call fastcc void @display(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 noundef 64) #3, !dbg !19
  tail call fastcc void @display(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 noundef -6352) #3, !dbg !20
  tail call fastcc void @display(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 noundef 208) #3, !dbg !21
  tail call fastcc void @display(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 noundef 344) #3, !dbg !22
  tail call fastcc void @display(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i64 noundef 48) #3, !dbg !23
  tail call fastcc void @display(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64 noundef 56) #3, !dbg !24
  tail call fastcc void @display(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i64 noundef 12) #3, !dbg !25
  tail call fastcc void @display(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i64 noundef 360) #3, !dbg !26
  tail call fastcc void @display(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i64 noundef 496) #3, !dbg !27
  tail call fastcc void @display(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i64 noundef 1184) #3, !dbg !28
  tail call fastcc void @display(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i64 noundef 24) #3, !dbg !29
  tail call fastcc void @display(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i64 noundef 13) #3, !dbg !30
  %call = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0)) #4, !dbg !31
  tail call fastcc void @display(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i64 noundef 6808) #3, !dbg !32
  tail call fastcc void @display(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i64 noundef 6448) #3, !dbg !33
  ret i32 0, !dbg !34
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @display(i8* noundef %name, i64 noundef %size) unnamed_addr #0 !dbg !35 {
entry:
  call void @llvm.dbg.value(metadata i8* %name, metadata !44, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata i64 %size, metadata !45, metadata !DIExpression()), !dbg !46
  %conv = trunc i64 %size to i32, !dbg !47
  %call = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* noundef %name, i32 noundef %conv) #4, !dbg !48
  ret void, !dbg !49
}

declare !dbg !50 dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nobuiltin "no-builtins" }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "sizes.c", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "aed9d9cd885efc68c530f8d648fb3318")
!2 = !{!3}
!3 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 14.0.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 9, type: !10, scopeLine: 9, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !15)
!10 = !DISubroutineType(types: !11)
!11 = !{!3, !3, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !{!16, !17}
!16 = !DILocalVariable(name: "argc", arg: 1, scope: !9, file: !1, line: 9, type: !3)
!17 = !DILocalVariable(name: "argv", arg: 2, scope: !9, file: !1, line: 9, type: !12)
!18 = !DILocation(line: 0, scope: !9)
!19 = !DILocation(line: 11, column: 5, scope: !9)
!20 = !DILocation(line: 12, column: 5, scope: !9)
!21 = !DILocation(line: 15, column: 5, scope: !9)
!22 = !DILocation(line: 16, column: 5, scope: !9)
!23 = !DILocation(line: 17, column: 5, scope: !9)
!24 = !DILocation(line: 18, column: 5, scope: !9)
!25 = !DILocation(line: 20, column: 5, scope: !9)
!26 = !DILocation(line: 22, column: 5, scope: !9)
!27 = !DILocation(line: 24, column: 5, scope: !9)
!28 = !DILocation(line: 25, column: 5, scope: !9)
!29 = !DILocation(line: 26, column: 5, scope: !9)
!30 = !DILocation(line: 27, column: 5, scope: !9)
!31 = !DILocation(line: 29, column: 5, scope: !9)
!32 = !DILocation(line: 31, column: 5, scope: !9)
!33 = !DILocation(line: 32, column: 5, scope: !9)
!34 = !DILocation(line: 34, column: 5, scope: !9)
!35 = distinct !DISubprogram(name: "display", scope: !1, file: !1, line: 5, type: !36, scopeLine: 5, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !43)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !38, !40}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !41, line: 46, baseType: !42)
!41 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!42 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!43 = !{!44, !45}
!44 = !DILocalVariable(name: "name", arg: 1, scope: !35, file: !1, line: 5, type: !38)
!45 = !DILocalVariable(name: "size", arg: 2, scope: !35, file: !1, line: 5, type: !40)
!46 = !DILocation(line: 0, scope: !35)
!47 = !DILocation(line: 6, column: 30, scope: !35)
!48 = !DILocation(line: 6, column: 5, scope: !35)
!49 = !DILocation(line: 7, column: 1, scope: !35)
!50 = !DISubprogram(name: "printf", scope: !51, file: !51, line: 332, type: !52, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !55)
!51 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!52 = !DISubroutineType(types: !53)
!53 = !{!3, !54, null}
!54 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !38)
!55 = !{}
