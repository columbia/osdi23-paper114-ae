; ModuleID = 'murmur3_hash.c'
source_filename = "murmur3_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @MurmurHash3_x86_32(i8* nocapture noundef readonly %key, i64 noundef %length) local_unnamed_addr #0 !dbg !20 {
entry:
  call void @llvm.dbg.value(metadata i8* %key, metadata !29, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata i64 %length, metadata !30, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata i8* %key, metadata !31, metadata !DIExpression()), !dbg !46
  %div = lshr i64 %length, 2, !dbg !47
  %conv = trunc i64 %div to i32, !dbg !48
  call void @llvm.dbg.value(metadata i32 %conv, metadata !32, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata i32 0, metadata !35, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata i32 -862048943, metadata !36, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata i32 461845907, metadata !37, metadata !DIExpression()), !dbg !46
  %mul = shl nsw i32 %conv, 2, !dbg !49
  %idx.ext = sext i32 %mul to i64, !dbg !50
  %add.ptr = getelementptr inbounds i8, i8* %key, i64 %idx.ext, !dbg !50
  %0 = bitcast i8* %add.ptr to i32*, !dbg !51
  call void @llvm.dbg.value(metadata i32* %0, metadata !38, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata !DIArgList(i32 0, i32 %conv), metadata !39, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !52
  call void @llvm.dbg.value(metadata i32 0, metadata !35, metadata !DIExpression()), !dbg !46
  %tobool.not66 = icmp eq i32 %conv, 0, !dbg !53
  br i1 %tobool.not66, label %for.cond.cleanup, label %for.body.preheader, !dbg !53

for.body.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata !DIArgList(i32 0, i32 %conv), metadata !39, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !52
  %.neg = mul i64 %div, -4294967296, !dbg !53
  %1 = ashr exact i64 %.neg, 32, !dbg !53
  br label %for.body, !dbg !53

for.cond.cleanup:                                 ; preds = %for.body, %entry
  %h1.0.lcssa = phi i32 [ 0, %entry ], [ %add, %for.body ], !dbg !46
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !44, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata i32 0, metadata !45, metadata !DIExpression()), !dbg !46
  %and = and i64 %length, 3, !dbg !54
  switch i64 %and, label %sw.epilog [
    i64 3, label %sw.bb
    i64 2, label %sw.bb12
    i64 1, label %sw.bb17
  ], !dbg !55

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %1, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %h1.068 = phi i32 [ 0, %for.body.preheader ], [ %add, %for.body ]
  call void @llvm.dbg.value(metadata i32 %h1.068, metadata !35, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !39, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i32* %0, metadata !56, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !61, metadata !DIExpression()), !dbg !62
  %arrayidx.i = getelementptr inbounds i32, i32* %0, i64 %indvars.iv, !dbg !64
  %2 = load i32, i32* %arrayidx.i, align 4, !dbg !64, !tbaa !65
  call void @llvm.dbg.value(metadata i32 %2, metadata !41, metadata !DIExpression()), !dbg !69
  %mul1 = mul i32 %2, -862048943, !dbg !70
  call void @llvm.dbg.value(metadata i32 %mul1, metadata !41, metadata !DIExpression()), !dbg !69
  %call2 = tail call fastcc i32 @rotl32(i32 noundef %mul1, i8 noundef signext 15) #3, !dbg !71
  call void @llvm.dbg.value(metadata i32 %call2, metadata !41, metadata !DIExpression()), !dbg !69
  %mul3 = mul i32 %call2, 461845907, !dbg !72
  call void @llvm.dbg.value(metadata i32 %mul3, metadata !41, metadata !DIExpression()), !dbg !69
  %xor = xor i32 %mul3, %h1.068, !dbg !73
  call void @llvm.dbg.value(metadata i32 %xor, metadata !35, metadata !DIExpression()), !dbg !46
  %call4 = tail call fastcc i32 @rotl32(i32 noundef %xor, i8 noundef signext 13) #3, !dbg !74
  call void @llvm.dbg.value(metadata i32 %call4, metadata !35, metadata !DIExpression()), !dbg !46
  %mul5 = mul i32 %call4, 5, !dbg !75
  %add = add i32 %mul5, -430675100, !dbg !76
  call void @llvm.dbg.value(metadata i32 %add, metadata !35, metadata !DIExpression()), !dbg !46
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !77
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !39, metadata !DIExpression()), !dbg !52
  %3 = trunc i64 %indvars.iv.next to i32, !dbg !53
  %tobool.not = icmp eq i32 %3, 0, !dbg !53
  br i1 %tobool.not, label %for.cond.cleanup, label %for.body, !dbg !53, !llvm.loop !78

sw.bb:                                            ; preds = %for.cond.cleanup
  %arrayidx = getelementptr inbounds i8, i8* %add.ptr, i64 2, !dbg !81
  %4 = load i8, i8* %arrayidx, align 1, !dbg !81, !tbaa !83
  %conv10 = zext i8 %4 to i32, !dbg !81
  %shl = shl nuw nsw i32 %conv10, 16, !dbg !84
  call void @llvm.dbg.value(metadata i32 %shl, metadata !45, metadata !DIExpression()), !dbg !46
  br label %sw.bb12, !dbg !85

sw.bb12:                                          ; preds = %for.cond.cleanup, %sw.bb
  %k19.0 = phi i32 [ 0, %for.cond.cleanup ], [ %shl, %sw.bb ], !dbg !46
  call void @llvm.dbg.value(metadata i32 %k19.0, metadata !45, metadata !DIExpression()), !dbg !46
  %arrayidx13 = getelementptr inbounds i8, i8* %add.ptr, i64 1, !dbg !86
  %5 = load i8, i8* %arrayidx13, align 1, !dbg !86, !tbaa !83
  %conv14 = zext i8 %5 to i32, !dbg !86
  %shl15 = shl nuw nsw i32 %conv14, 8, !dbg !87
  %xor1665 = or i32 %shl15, %k19.0, !dbg !88
  call void @llvm.dbg.value(metadata i32 %xor1665, metadata !45, metadata !DIExpression()), !dbg !46
  br label %sw.bb17, !dbg !89

sw.bb17:                                          ; preds = %for.cond.cleanup, %sw.bb12
  %k19.1 = phi i32 [ 0, %for.cond.cleanup ], [ %xor1665, %sw.bb12 ], !dbg !46
  call void @llvm.dbg.value(metadata i32 %k19.1, metadata !45, metadata !DIExpression()), !dbg !46
  %6 = load i8, i8* %add.ptr, align 1, !dbg !90, !tbaa !83
  %conv19 = zext i8 %6 to i32, !dbg !90
  %xor20 = xor i32 %k19.1, %conv19, !dbg !91
  call void @llvm.dbg.value(metadata i32 %xor20, metadata !45, metadata !DIExpression()), !dbg !46
  %mul21 = mul i32 %xor20, -862048943, !dbg !92
  call void @llvm.dbg.value(metadata i32 %mul21, metadata !45, metadata !DIExpression()), !dbg !46
  %call22 = tail call fastcc i32 @rotl32(i32 noundef %mul21, i8 noundef signext 15) #3, !dbg !93
  call void @llvm.dbg.value(metadata i32 %call22, metadata !45, metadata !DIExpression()), !dbg !46
  %mul23 = mul i32 %call22, 461845907, !dbg !94
  call void @llvm.dbg.value(metadata i32 %mul23, metadata !45, metadata !DIExpression()), !dbg !46
  %xor24 = xor i32 %mul23, %h1.0.lcssa, !dbg !95
  call void @llvm.dbg.value(metadata i32 %xor24, metadata !35, metadata !DIExpression()), !dbg !46
  br label %sw.epilog, !dbg !96

sw.epilog:                                        ; preds = %sw.bb17, %for.cond.cleanup
  %h1.1 = phi i32 [ %h1.0.lcssa, %for.cond.cleanup ], [ %xor24, %sw.bb17 ], !dbg !46
  call void @llvm.dbg.value(metadata i32 %h1.1, metadata !35, metadata !DIExpression()), !dbg !46
  %7 = trunc i64 %length to i32, !dbg !97
  %conv27 = xor i32 %h1.1, %7, !dbg !97
  call void @llvm.dbg.value(metadata i32 %conv27, metadata !35, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata i32 %conv27, metadata !98, metadata !DIExpression()), !dbg !103
  %shr.i = lshr i32 %conv27, 16, !dbg !105
  %xor.i = xor i32 %shr.i, %conv27, !dbg !106
  call void @llvm.dbg.value(metadata i32 %xor.i, metadata !98, metadata !DIExpression()), !dbg !103
  %mul.i = mul i32 %xor.i, -2048144789, !dbg !107
  call void @llvm.dbg.value(metadata i32 %mul.i, metadata !98, metadata !DIExpression()), !dbg !103
  %shr1.i = lshr i32 %mul.i, 13, !dbg !108
  %xor2.i = xor i32 %shr1.i, %mul.i, !dbg !109
  call void @llvm.dbg.value(metadata i32 %xor2.i, metadata !98, metadata !DIExpression()), !dbg !103
  %mul3.i = mul i32 %xor2.i, -1028477387, !dbg !110
  call void @llvm.dbg.value(metadata i32 %mul3.i, metadata !98, metadata !DIExpression()), !dbg !103
  %shr4.i = lshr i32 %mul3.i, 16, !dbg !111
  %xor5.i = xor i32 %shr4.i, %mul3.i, !dbg !112
  call void @llvm.dbg.value(metadata i32 %xor5.i, metadata !98, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.value(metadata i32 %xor5.i, metadata !35, metadata !DIExpression()), !dbg !46
  ret i32 %xor5.i, !dbg !113
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @rotl32(i32 noundef %x, i8 noundef signext %r) unnamed_addr #1 !dbg !114 {
entry:
  call void @llvm.dbg.value(metadata i32 %x, metadata !122, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.value(metadata i8 %r, metadata !123, metadata !DIExpression()), !dbg !124
  %0 = zext i8 %r to i32
  %shl = shl i32 %x, %0, !dbg !125
  %sub = sub nsw i32 32, %0, !dbg !126
  %shr = lshr i32 %x, %sub, !dbg !127
  %or = or i32 %shr, %shl, !dbg !128
  ret i32 %or, !dbg !129
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "murmur3_hash.c", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "1fa6e622a1efeb68aa8d03d3840e4815")
!2 = !{!3, !10}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !6, line: 24, baseType: !7)
!6 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !8, line: 38, baseType: !9)
!8 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!9 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !6, line: 26, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !8, line: 42, baseType: !14)
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{i32 7, !"Dwarf Version", i32 5}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{!"clang version 14.0.0"}
!20 = distinct !DISubprogram(name: "MurmurHash3_x86_32", scope: !1, file: !1, line: 71, type: !21, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!21 = !DISubroutineType(types: !22)
!22 = !{!12, !23, !25}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 46, baseType: !27)
!26 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!27 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!28 = !{!29, !30, !31, !32, !35, !36, !37, !38, !39, !41, !44, !45}
!29 = !DILocalVariable(name: "key", arg: 1, scope: !20, file: !1, line: 71, type: !23)
!30 = !DILocalVariable(name: "length", arg: 2, scope: !20, file: !1, line: 71, type: !25)
!31 = !DILocalVariable(name: "data", scope: !20, file: !1, line: 73, type: !3)
!32 = !DILocalVariable(name: "nblocks", scope: !20, file: !1, line: 74, type: !33)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DILocalVariable(name: "h1", scope: !20, file: !1, line: 76, type: !12)
!36 = !DILocalVariable(name: "c1", scope: !20, file: !1, line: 78, type: !12)
!37 = !DILocalVariable(name: "c2", scope: !20, file: !1, line: 79, type: !12)
!38 = !DILocalVariable(name: "blocks", scope: !20, file: !1, line: 84, type: !10)
!39 = !DILocalVariable(name: "i", scope: !40, file: !1, line: 86, type: !34)
!40 = distinct !DILexicalBlock(scope: !20, file: !1, line: 86, column: 3)
!41 = !DILocalVariable(name: "k1", scope: !42, file: !1, line: 88, type: !12)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 87, column: 3)
!43 = distinct !DILexicalBlock(scope: !40, file: !1, line: 86, column: 3)
!44 = !DILocalVariable(name: "tail", scope: !20, file: !1, line: 102, type: !3)
!45 = !DILocalVariable(name: "k1", scope: !20, file: !1, line: 104, type: !12)
!46 = !DILocation(line: 0, scope: !20)
!47 = !DILocation(line: 74, column: 30, scope: !20)
!48 = !DILocation(line: 74, column: 23, scope: !20)
!49 = !DILocation(line: 84, column: 62, scope: !20)
!50 = !DILocation(line: 84, column: 53, scope: !20)
!51 = !DILocation(line: 84, column: 29, scope: !20)
!52 = !DILocation(line: 0, scope: !40)
!53 = !DILocation(line: 86, column: 3, scope: !40)
!54 = !DILocation(line: 106, column: 17, scope: !20)
!55 = !DILocation(line: 106, column: 3, scope: !20)
!56 = !DILocalVariable(name: "p", arg: 1, scope: !57, file: !1, line: 48, type: !10)
!57 = distinct !DISubprogram(name: "getblock32", scope: !1, file: !1, line: 48, type: !58, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !60)
!58 = !DISubroutineType(types: !59)
!59 = !{!12, !10, !34}
!60 = !{!56, !61}
!61 = !DILocalVariable(name: "i", arg: 2, scope: !57, file: !1, line: 48, type: !34)
!62 = !DILocation(line: 0, scope: !57, inlinedAt: !63)
!63 = distinct !DILocation(line: 88, column: 19, scope: !42)
!64 = !DILocation(line: 50, column: 10, scope: !57, inlinedAt: !63)
!65 = !{!66, !66, i64 0}
!66 = !{!"int", !67, i64 0}
!67 = !{!"omnipotent char", !68, i64 0}
!68 = !{!"Simple C/C++ TBAA"}
!69 = !DILocation(line: 0, scope: !42)
!70 = !DILocation(line: 90, column: 8, scope: !42)
!71 = !DILocation(line: 91, column: 10, scope: !42)
!72 = !DILocation(line: 92, column: 8, scope: !42)
!73 = !DILocation(line: 94, column: 8, scope: !42)
!74 = !DILocation(line: 95, column: 10, scope: !42)
!75 = !DILocation(line: 96, column: 12, scope: !42)
!76 = !DILocation(line: 96, column: 14, scope: !42)
!77 = !DILocation(line: 86, column: 29, scope: !43)
!78 = distinct !{!78, !53, !79, !80}
!79 = !DILocation(line: 97, column: 3, scope: !40)
!80 = !{!"llvm.loop.mustprogress"}
!81 = !DILocation(line: 108, column: 17, scope: !82)
!82 = distinct !DILexicalBlock(scope: !20, file: !1, line: 107, column: 3)
!83 = !{!67, !67, i64 0}
!84 = !DILocation(line: 108, column: 25, scope: !82)
!85 = !DILocation(line: 108, column: 11, scope: !82)
!86 = !DILocation(line: 109, column: 17, scope: !82)
!87 = !DILocation(line: 109, column: 25, scope: !82)
!88 = !DILocation(line: 109, column: 14, scope: !82)
!89 = !DILocation(line: 109, column: 11, scope: !82)
!90 = !DILocation(line: 110, column: 17, scope: !82)
!91 = !DILocation(line: 110, column: 14, scope: !82)
!92 = !DILocation(line: 111, column: 14, scope: !82)
!93 = !DILocation(line: 111, column: 26, scope: !82)
!94 = !DILocation(line: 111, column: 44, scope: !82)
!95 = !DILocation(line: 111, column: 54, scope: !82)
!96 = !DILocation(line: 112, column: 3, scope: !82)
!97 = !DILocation(line: 117, column: 6, scope: !20)
!98 = !DILocalVariable(name: "h", arg: 1, scope: !99, file: !1, line: 56, type: !12)
!99 = distinct !DISubprogram(name: "fmix32", scope: !1, file: !1, line: 56, type: !100, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !102)
!100 = !DISubroutineType(types: !101)
!101 = !{!12, !12}
!102 = !{!98}
!103 = !DILocation(line: 0, scope: !99, inlinedAt: !104)
!104 = distinct !DILocation(line: 119, column: 8, scope: !20)
!105 = !DILocation(line: 58, column: 10, scope: !99, inlinedAt: !104)
!106 = !DILocation(line: 58, column: 5, scope: !99, inlinedAt: !104)
!107 = !DILocation(line: 59, column: 5, scope: !99, inlinedAt: !104)
!108 = !DILocation(line: 60, column: 10, scope: !99, inlinedAt: !104)
!109 = !DILocation(line: 60, column: 5, scope: !99, inlinedAt: !104)
!110 = !DILocation(line: 61, column: 5, scope: !99, inlinedAt: !104)
!111 = !DILocation(line: 62, column: 10, scope: !99, inlinedAt: !104)
!112 = !DILocation(line: 62, column: 5, scope: !99, inlinedAt: !104)
!113 = !DILocation(line: 122, column: 3, scope: !20)
!114 = distinct !DISubprogram(name: "rotl32", scope: !1, file: !1, line: 33, type: !115, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !121)
!115 = !DISubroutineType(types: !116)
!116 = !{!12, !12, !117}
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !118, line: 24, baseType: !119)
!118 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !8, line: 37, baseType: !120)
!120 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!121 = !{!122, !123}
!122 = !DILocalVariable(name: "x", arg: 1, scope: !114, file: !1, line: 33, type: !12)
!123 = !DILocalVariable(name: "r", arg: 2, scope: !114, file: !1, line: 33, type: !117)
!124 = !DILocation(line: 0, scope: !114)
!125 = !DILocation(line: 35, column: 13, scope: !114)
!126 = !DILocation(line: 35, column: 31, scope: !114)
!127 = !DILocation(line: 35, column: 24, scope: !114)
!128 = !DILocation(line: 35, column: 19, scope: !114)
!129 = !DILocation(line: 35, column: 3, scope: !114)
