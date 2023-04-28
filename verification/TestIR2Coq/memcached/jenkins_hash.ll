; ModuleID = 'jenkins_hash.c'
source_filename = "jenkins_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline nosync nounwind readonly uwtable
define dso_local i32 @jenkins_hash(i8* noundef %key, i64 noundef %length) local_unnamed_addr #0 !dbg !18 {
entry:
  call void @llvm.dbg.value(metadata i8* %key, metadata !27, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i64 %length, metadata !28, metadata !DIExpression()), !dbg !53
  %conv = trunc i64 %length to i32, !dbg !54
  %add = add i32 %conv, -559038737, !dbg !55
  call void @llvm.dbg.value(metadata i32 %add, metadata !31, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %add, metadata !30, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %add, metadata !29, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i8* %key, metadata !32, metadata !DIExpression()), !dbg !53
  %0 = ptrtoint i8* %key to i64, !dbg !56
  %and = and i64 %0, 3, !dbg !57
  %cmp = icmp eq i64 %and, 0, !dbg !58
  br i1 %cmp, label %if.then, label %if.else, !dbg !59

if.then:                                          ; preds = %entry
  %1 = bitcast i8* %key to i32*, !dbg !60
  call void @llvm.dbg.value(metadata i32* %1, metadata !37, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i64 %length, metadata !28, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %add, metadata !31, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %add, metadata !30, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %add, metadata !29, metadata !DIExpression()), !dbg !53
  %cmp3891 = icmp ugt i64 %length, 12, !dbg !62
  br i1 %cmp3891, label %while.body, label %while.end, !dbg !63

while.body:                                       ; preds = %if.then, %while.body
  %k.0896 = phi i32* [ %add.ptr, %while.body ], [ %1, %if.then ]
  %length.addr.0895 = phi i64 [ %sub42, %while.body ], [ %length, %if.then ]
  %c.0894 = phi i32 [ %xor40, %while.body ], [ %add, %if.then ]
  %b.0893 = phi i32 [ %add41, %while.body ], [ %add, %if.then ]
  %a.0892 = phi i32 [ %add35, %while.body ], [ %add, %if.then ]
  call void @llvm.dbg.value(metadata i32* %k.0896, metadata !37, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i64 %length.addr.0895, metadata !28, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %c.0894, metadata !31, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %b.0893, metadata !30, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %a.0892, metadata !29, metadata !DIExpression()), !dbg !53
  %2 = load i32, i32* %k.0896, align 4, !dbg !64, !tbaa !66
  %add5 = add i32 %2, %a.0892, !dbg !70
  call void @llvm.dbg.value(metadata i32 %add5, metadata !29, metadata !DIExpression()), !dbg !53
  %arrayidx6 = getelementptr inbounds i32, i32* %k.0896, i64 1, !dbg !71
  %3 = load i32, i32* %arrayidx6, align 4, !dbg !71, !tbaa !66
  %add7 = add i32 %3, %b.0893, !dbg !72
  call void @llvm.dbg.value(metadata i32 %add7, metadata !30, metadata !DIExpression()), !dbg !53
  %arrayidx8 = getelementptr inbounds i32, i32* %k.0896, i64 2, !dbg !73
  %4 = load i32, i32* %arrayidx8, align 4, !dbg !73, !tbaa !66
  %add9 = add i32 %4, %c.0894, !dbg !74
  call void @llvm.dbg.value(metadata i32 %add9, metadata !31, metadata !DIExpression()), !dbg !53
  %sub = sub i32 %add5, %add9, !dbg !75
  call void @llvm.dbg.value(metadata i32 %sub, metadata !29, metadata !DIExpression()), !dbg !53
  %xor852 = tail call i32 @llvm.fshl.i32(i32 %add9, i32 %add9, i32 4), !dbg !75
  %xor10 = xor i32 %sub, %xor852, !dbg !75
  call void @llvm.dbg.value(metadata i32 %xor10, metadata !29, metadata !DIExpression()), !dbg !53
  %add11 = add i32 %add9, %add7, !dbg !75
  call void @llvm.dbg.value(metadata i32 %add11, metadata !31, metadata !DIExpression()), !dbg !53
  %sub12 = sub i32 %add7, %xor10, !dbg !75
  call void @llvm.dbg.value(metadata i32 %sub12, metadata !30, metadata !DIExpression()), !dbg !53
  %xor15853 = tail call i32 @llvm.fshl.i32(i32 %xor10, i32 %xor10, i32 6), !dbg !75
  %xor16 = xor i32 %sub12, %xor15853, !dbg !75
  call void @llvm.dbg.value(metadata i32 %xor16, metadata !30, metadata !DIExpression()), !dbg !53
  %add17 = add i32 %xor10, %add11, !dbg !75
  call void @llvm.dbg.value(metadata i32 %add17, metadata !29, metadata !DIExpression()), !dbg !53
  %sub18 = sub i32 %add11, %xor16, !dbg !75
  call void @llvm.dbg.value(metadata i32 %sub18, metadata !31, metadata !DIExpression()), !dbg !53
  %xor21854 = tail call i32 @llvm.fshl.i32(i32 %xor16, i32 %xor16, i32 8), !dbg !75
  %xor22 = xor i32 %sub18, %xor21854, !dbg !75
  call void @llvm.dbg.value(metadata i32 %xor22, metadata !31, metadata !DIExpression()), !dbg !53
  %add23 = add i32 %xor16, %add17, !dbg !75
  call void @llvm.dbg.value(metadata i32 %add23, metadata !30, metadata !DIExpression()), !dbg !53
  %sub24 = sub i32 %add17, %xor22, !dbg !75
  call void @llvm.dbg.value(metadata i32 %sub24, metadata !29, metadata !DIExpression()), !dbg !53
  %xor27855 = tail call i32 @llvm.fshl.i32(i32 %xor22, i32 %xor22, i32 16), !dbg !75
  %xor28 = xor i32 %sub24, %xor27855, !dbg !75
  call void @llvm.dbg.value(metadata i32 %xor28, metadata !29, metadata !DIExpression()), !dbg !53
  %add29 = add i32 %xor22, %add23, !dbg !75
  call void @llvm.dbg.value(metadata i32 %add29, metadata !31, metadata !DIExpression()), !dbg !53
  %sub30 = sub i32 %add23, %xor28, !dbg !75
  call void @llvm.dbg.value(metadata i32 %sub30, metadata !30, metadata !DIExpression()), !dbg !53
  %xor33856 = tail call i32 @llvm.fshl.i32(i32 %xor28, i32 %xor28, i32 19), !dbg !75
  %xor34 = xor i32 %sub30, %xor33856, !dbg !75
  call void @llvm.dbg.value(metadata i32 %xor34, metadata !30, metadata !DIExpression()), !dbg !53
  %add35 = add i32 %xor28, %add29, !dbg !75
  call void @llvm.dbg.value(metadata i32 %add35, metadata !29, metadata !DIExpression()), !dbg !53
  %sub36 = sub i32 %add29, %xor34, !dbg !75
  call void @llvm.dbg.value(metadata i32 %sub36, metadata !31, metadata !DIExpression()), !dbg !53
  %xor39857 = tail call i32 @llvm.fshl.i32(i32 %xor34, i32 %xor34, i32 4), !dbg !75
  %xor40 = xor i32 %sub36, %xor39857, !dbg !75
  call void @llvm.dbg.value(metadata i32 %xor40, metadata !31, metadata !DIExpression()), !dbg !53
  %add41 = add i32 %xor34, %add35, !dbg !75
  call void @llvm.dbg.value(metadata i32 %add41, metadata !30, metadata !DIExpression()), !dbg !53
  %sub42 = add i64 %length.addr.0895, -12, !dbg !77
  call void @llvm.dbg.value(metadata i64 %sub42, metadata !28, metadata !DIExpression()), !dbg !53
  %add.ptr = getelementptr inbounds i32, i32* %k.0896, i64 3, !dbg !78
  call void @llvm.dbg.value(metadata i32* %add.ptr, metadata !37, metadata !DIExpression()), !dbg !61
  %cmp3 = icmp ugt i64 %sub42, 12, !dbg !62
  br i1 %cmp3, label %while.body, label %while.end, !dbg !63, !llvm.loop !79

while.end:                                        ; preds = %while.body, %if.then
  %a.0.lcssa = phi i32 [ %add, %if.then ], [ %add35, %while.body ], !dbg !53
  %b.0.lcssa = phi i32 [ %add, %if.then ], [ %add41, %while.body ], !dbg !53
  %c.0.lcssa = phi i32 [ %add, %if.then ], [ %xor40, %while.body ], !dbg !53
  %length.addr.0.lcssa = phi i64 [ %length, %if.then ], [ %sub42, %while.body ]
  %k.0.lcssa = phi i32* [ %1, %if.then ], [ %add.ptr, %while.body ], !dbg !61
  switch i64 %length.addr.0.lcssa, label %if.end445 [
    i64 12, label %sw.bb
    i64 11, label %sw.bb49
    i64 10, label %sw.bb57
    i64 9, label %sw.bb65
    i64 8, label %sw.bb73
    i64 7, label %sw.bb78
    i64 6, label %sw.bb84
    i64 5, label %sw.bb90
    i64 4, label %sw.bb96
    i64 3, label %sw.bb99
    i64 2, label %sw.bb103
    i64 1, label %sw.bb107
    i64 0, label %cleanup481
  ], !dbg !82

sw.bb:                                            ; preds = %while.end
  %arrayidx43 = getelementptr inbounds i32, i32* %k.0.lcssa, i64 2, !dbg !83
  %5 = load i32, i32* %arrayidx43, align 4, !dbg !83, !tbaa !66
  %add44 = add i32 %5, %c.0.lcssa, !dbg !85
  call void @llvm.dbg.value(metadata i32 %add44, metadata !31, metadata !DIExpression()), !dbg !53
  %arrayidx45 = getelementptr inbounds i32, i32* %k.0.lcssa, i64 1, !dbg !86
  %6 = load i32, i32* %arrayidx45, align 4, !dbg !86, !tbaa !66
  %add46 = add i32 %6, %b.0.lcssa, !dbg !87
  call void @llvm.dbg.value(metadata i32 %add46, metadata !30, metadata !DIExpression()), !dbg !53
  %7 = load i32, i32* %k.0.lcssa, align 4, !dbg !88, !tbaa !66
  %add48 = add i32 %7, %a.0.lcssa, !dbg !89
  call void @llvm.dbg.value(metadata i32 %add48, metadata !29, metadata !DIExpression()), !dbg !53
  br label %if.end445, !dbg !90

sw.bb49:                                          ; preds = %while.end
  %arrayidx50 = getelementptr inbounds i32, i32* %k.0.lcssa, i64 2, !dbg !91
  %8 = load i32, i32* %arrayidx50, align 4, !dbg !91, !tbaa !66
  %and51 = and i32 %8, 16777215, !dbg !92
  %add52 = add i32 %and51, %c.0.lcssa, !dbg !93
  call void @llvm.dbg.value(metadata i32 %add52, metadata !31, metadata !DIExpression()), !dbg !53
  %arrayidx53 = getelementptr inbounds i32, i32* %k.0.lcssa, i64 1, !dbg !94
  %9 = load i32, i32* %arrayidx53, align 4, !dbg !94, !tbaa !66
  %add54 = add i32 %9, %b.0.lcssa, !dbg !95
  call void @llvm.dbg.value(metadata i32 %add54, metadata !30, metadata !DIExpression()), !dbg !53
  %10 = load i32, i32* %k.0.lcssa, align 4, !dbg !96, !tbaa !66
  %add56 = add i32 %10, %a.0.lcssa, !dbg !97
  call void @llvm.dbg.value(metadata i32 %add56, metadata !29, metadata !DIExpression()), !dbg !53
  br label %if.end445, !dbg !98

sw.bb57:                                          ; preds = %while.end
  %arrayidx58 = getelementptr inbounds i32, i32* %k.0.lcssa, i64 2, !dbg !99
  %11 = load i32, i32* %arrayidx58, align 4, !dbg !99, !tbaa !66
  %and59 = and i32 %11, 65535, !dbg !100
  %add60 = add i32 %and59, %c.0.lcssa, !dbg !101
  call void @llvm.dbg.value(metadata i32 %add60, metadata !31, metadata !DIExpression()), !dbg !53
  %arrayidx61 = getelementptr inbounds i32, i32* %k.0.lcssa, i64 1, !dbg !102
  %12 = load i32, i32* %arrayidx61, align 4, !dbg !102, !tbaa !66
  %add62 = add i32 %12, %b.0.lcssa, !dbg !103
  call void @llvm.dbg.value(metadata i32 %add62, metadata !30, metadata !DIExpression()), !dbg !53
  %13 = load i32, i32* %k.0.lcssa, align 4, !dbg !104, !tbaa !66
  %add64 = add i32 %13, %a.0.lcssa, !dbg !105
  call void @llvm.dbg.value(metadata i32 %add64, metadata !29, metadata !DIExpression()), !dbg !53
  br label %if.end445, !dbg !106

sw.bb65:                                          ; preds = %while.end
  %arrayidx66 = getelementptr inbounds i32, i32* %k.0.lcssa, i64 2, !dbg !107
  %14 = load i32, i32* %arrayidx66, align 4, !dbg !107, !tbaa !66
  %and67 = and i32 %14, 255, !dbg !108
  %add68 = add i32 %and67, %c.0.lcssa, !dbg !109
  call void @llvm.dbg.value(metadata i32 %add68, metadata !31, metadata !DIExpression()), !dbg !53
  %arrayidx69 = getelementptr inbounds i32, i32* %k.0.lcssa, i64 1, !dbg !110
  %15 = load i32, i32* %arrayidx69, align 4, !dbg !110, !tbaa !66
  %add70 = add i32 %15, %b.0.lcssa, !dbg !111
  call void @llvm.dbg.value(metadata i32 %add70, metadata !30, metadata !DIExpression()), !dbg !53
  %16 = load i32, i32* %k.0.lcssa, align 4, !dbg !112, !tbaa !66
  %add72 = add i32 %16, %a.0.lcssa, !dbg !113
  call void @llvm.dbg.value(metadata i32 %add72, metadata !29, metadata !DIExpression()), !dbg !53
  br label %if.end445, !dbg !114

sw.bb73:                                          ; preds = %while.end
  %arrayidx74 = getelementptr inbounds i32, i32* %k.0.lcssa, i64 1, !dbg !115
  %17 = load i32, i32* %arrayidx74, align 4, !dbg !115, !tbaa !66
  %add75 = add i32 %17, %b.0.lcssa, !dbg !116
  call void @llvm.dbg.value(metadata i32 %add75, metadata !30, metadata !DIExpression()), !dbg !53
  %18 = load i32, i32* %k.0.lcssa, align 4, !dbg !117, !tbaa !66
  %add77 = add i32 %18, %a.0.lcssa, !dbg !118
  call void @llvm.dbg.value(metadata i32 %add77, metadata !29, metadata !DIExpression()), !dbg !53
  br label %if.end445, !dbg !119

sw.bb78:                                          ; preds = %while.end
  %arrayidx79 = getelementptr inbounds i32, i32* %k.0.lcssa, i64 1, !dbg !120
  %19 = load i32, i32* %arrayidx79, align 4, !dbg !120, !tbaa !66
  %and80 = and i32 %19, 16777215, !dbg !121
  %add81 = add i32 %and80, %b.0.lcssa, !dbg !122
  call void @llvm.dbg.value(metadata i32 %add81, metadata !30, metadata !DIExpression()), !dbg !53
  %20 = load i32, i32* %k.0.lcssa, align 4, !dbg !123, !tbaa !66
  %add83 = add i32 %20, %a.0.lcssa, !dbg !124
  call void @llvm.dbg.value(metadata i32 %add83, metadata !29, metadata !DIExpression()), !dbg !53
  br label %if.end445, !dbg !125

sw.bb84:                                          ; preds = %while.end
  %arrayidx85 = getelementptr inbounds i32, i32* %k.0.lcssa, i64 1, !dbg !126
  %21 = load i32, i32* %arrayidx85, align 4, !dbg !126, !tbaa !66
  %and86 = and i32 %21, 65535, !dbg !127
  %add87 = add i32 %and86, %b.0.lcssa, !dbg !128
  call void @llvm.dbg.value(metadata i32 %add87, metadata !30, metadata !DIExpression()), !dbg !53
  %22 = load i32, i32* %k.0.lcssa, align 4, !dbg !129, !tbaa !66
  %add89 = add i32 %22, %a.0.lcssa, !dbg !130
  call void @llvm.dbg.value(metadata i32 %add89, metadata !29, metadata !DIExpression()), !dbg !53
  br label %if.end445, !dbg !131

sw.bb90:                                          ; preds = %while.end
  %arrayidx91 = getelementptr inbounds i32, i32* %k.0.lcssa, i64 1, !dbg !132
  %23 = load i32, i32* %arrayidx91, align 4, !dbg !132, !tbaa !66
  %and92 = and i32 %23, 255, !dbg !133
  %add93 = add i32 %and92, %b.0.lcssa, !dbg !134
  call void @llvm.dbg.value(metadata i32 %add93, metadata !30, metadata !DIExpression()), !dbg !53
  %24 = load i32, i32* %k.0.lcssa, align 4, !dbg !135, !tbaa !66
  %add95 = add i32 %24, %a.0.lcssa, !dbg !136
  call void @llvm.dbg.value(metadata i32 %add95, metadata !29, metadata !DIExpression()), !dbg !53
  br label %if.end445, !dbg !137

sw.bb96:                                          ; preds = %while.end
  %25 = load i32, i32* %k.0.lcssa, align 4, !dbg !138, !tbaa !66
  %add98 = add i32 %25, %a.0.lcssa, !dbg !139
  call void @llvm.dbg.value(metadata i32 %add98, metadata !29, metadata !DIExpression()), !dbg !53
  br label %if.end445, !dbg !140

sw.bb99:                                          ; preds = %while.end
  %26 = load i32, i32* %k.0.lcssa, align 4, !dbg !141, !tbaa !66
  %and101 = and i32 %26, 16777215, !dbg !142
  %add102 = add i32 %and101, %a.0.lcssa, !dbg !143
  call void @llvm.dbg.value(metadata i32 %add102, metadata !29, metadata !DIExpression()), !dbg !53
  br label %if.end445, !dbg !144

sw.bb103:                                         ; preds = %while.end
  %27 = load i32, i32* %k.0.lcssa, align 4, !dbg !145, !tbaa !66
  %and105 = and i32 %27, 65535, !dbg !146
  %add106 = add i32 %and105, %a.0.lcssa, !dbg !147
  call void @llvm.dbg.value(metadata i32 %add106, metadata !29, metadata !DIExpression()), !dbg !53
  br label %if.end445, !dbg !148

sw.bb107:                                         ; preds = %while.end
  %28 = load i32, i32* %k.0.lcssa, align 4, !dbg !149, !tbaa !66
  %and109 = and i32 %28, 255, !dbg !150
  %add110 = add i32 %and109, %a.0.lcssa, !dbg !151
  call void @llvm.dbg.value(metadata i32 %add110, metadata !29, metadata !DIExpression()), !dbg !53
  br label %if.end445, !dbg !152

if.else:                                          ; preds = %entry
  %and113 = and i64 %0, 1, !dbg !153
  %cmp114 = icmp eq i64 %and113, 0, !dbg !154
  br i1 %cmp114, label %if.then116, label %while.cond295.preheader, !dbg !155

while.cond295.preheader:                          ; preds = %if.else
  call void @llvm.dbg.value(metadata i8* %key, metadata !51, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata i64 %length, metadata !28, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %add, metadata !31, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %add, metadata !30, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %add, metadata !29, metadata !DIExpression()), !dbg !53
  %cmp296870 = icmp ugt i64 %length, 12, !dbg !157
  br i1 %cmp296870, label %while.body298, label %while.end382, !dbg !158

if.then116:                                       ; preds = %if.else
  %29 = bitcast i8* %key to i16*, !dbg !159
  call void @llvm.dbg.value(metadata i16* %29, metadata !42, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.value(metadata i64 %length, metadata !28, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %add, metadata !31, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %add, metadata !30, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %add, metadata !29, metadata !DIExpression()), !dbg !53
  %cmp119880 = icmp ugt i64 %length, 12, !dbg !161
  br i1 %cmp119880, label %while.body121, label %while.end181, !dbg !162

while.body121:                                    ; preds = %if.then116, %while.body121
  %k117.0885 = phi i16* [ %add.ptr180, %while.body121 ], [ %29, %if.then116 ]
  %length.addr.1884 = phi i64 [ %sub179, %while.body121 ], [ %length, %if.then116 ]
  %c.3883 = phi i32 [ %xor177, %while.body121 ], [ %add, %if.then116 ]
  %b.3882 = phi i32 [ %add178, %while.body121 ], [ %add, %if.then116 ]
  %a.3881 = phi i32 [ %add172, %while.body121 ], [ %add, %if.then116 ]
  call void @llvm.dbg.value(metadata i16* %k117.0885, metadata !42, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.value(metadata i64 %length.addr.1884, metadata !28, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %c.3883, metadata !31, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %b.3882, metadata !30, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %a.3881, metadata !29, metadata !DIExpression()), !dbg !53
  %30 = load i16, i16* %k117.0885, align 2, !dbg !163, !tbaa !165
  %conv123 = zext i16 %30 to i32, !dbg !163
  %arrayidx124 = getelementptr inbounds i16, i16* %k117.0885, i64 1, !dbg !167
  %31 = load i16, i16* %arrayidx124, align 2, !dbg !167, !tbaa !165
  %conv125 = zext i16 %31 to i32, !dbg !168
  %shl126 = shl nuw i32 %conv125, 16, !dbg !169
  %add127 = or i32 %shl126, %conv123, !dbg !170
  %add128 = add i32 %add127, %a.3881, !dbg !171
  call void @llvm.dbg.value(metadata i32 %add128, metadata !29, metadata !DIExpression()), !dbg !53
  %arrayidx129 = getelementptr inbounds i16, i16* %k117.0885, i64 2, !dbg !172
  %32 = load i16, i16* %arrayidx129, align 2, !dbg !172, !tbaa !165
  %conv130 = zext i16 %32 to i32, !dbg !172
  %arrayidx131 = getelementptr inbounds i16, i16* %k117.0885, i64 3, !dbg !173
  %33 = load i16, i16* %arrayidx131, align 2, !dbg !173, !tbaa !165
  %conv132 = zext i16 %33 to i32, !dbg !174
  %shl133 = shl nuw i32 %conv132, 16, !dbg !175
  %add134 = or i32 %shl133, %conv130, !dbg !176
  %add135 = add i32 %add134, %b.3882, !dbg !177
  call void @llvm.dbg.value(metadata i32 %add135, metadata !30, metadata !DIExpression()), !dbg !53
  %arrayidx136 = getelementptr inbounds i16, i16* %k117.0885, i64 4, !dbg !178
  %34 = load i16, i16* %arrayidx136, align 2, !dbg !178, !tbaa !165
  %conv137 = zext i16 %34 to i32, !dbg !178
  %arrayidx138 = getelementptr inbounds i16, i16* %k117.0885, i64 5, !dbg !179
  %35 = load i16, i16* %arrayidx138, align 2, !dbg !179, !tbaa !165
  %conv139 = zext i16 %35 to i32, !dbg !180
  %shl140 = shl nuw i32 %conv139, 16, !dbg !181
  %add141 = or i32 %shl140, %conv137, !dbg !182
  %add142 = add i32 %add141, %c.3883, !dbg !183
  call void @llvm.dbg.value(metadata i32 %add142, metadata !31, metadata !DIExpression()), !dbg !53
  %sub143 = sub i32 %add128, %add142, !dbg !184
  call void @llvm.dbg.value(metadata i32 %sub143, metadata !29, metadata !DIExpression()), !dbg !53
  %xor146846 = tail call i32 @llvm.fshl.i32(i32 %add142, i32 %add142, i32 4), !dbg !184
  %xor147 = xor i32 %sub143, %xor146846, !dbg !184
  call void @llvm.dbg.value(metadata i32 %xor147, metadata !29, metadata !DIExpression()), !dbg !53
  %add148 = add i32 %add142, %add135, !dbg !184
  call void @llvm.dbg.value(metadata i32 %add148, metadata !31, metadata !DIExpression()), !dbg !53
  %sub149 = sub i32 %add135, %xor147, !dbg !184
  call void @llvm.dbg.value(metadata i32 %sub149, metadata !30, metadata !DIExpression()), !dbg !53
  %xor152847 = tail call i32 @llvm.fshl.i32(i32 %xor147, i32 %xor147, i32 6), !dbg !184
  %xor153 = xor i32 %sub149, %xor152847, !dbg !184
  call void @llvm.dbg.value(metadata i32 %xor153, metadata !30, metadata !DIExpression()), !dbg !53
  %add154 = add i32 %xor147, %add148, !dbg !184
  call void @llvm.dbg.value(metadata i32 %add154, metadata !29, metadata !DIExpression()), !dbg !53
  %sub155 = sub i32 %add148, %xor153, !dbg !184
  call void @llvm.dbg.value(metadata i32 %sub155, metadata !31, metadata !DIExpression()), !dbg !53
  %xor158848 = tail call i32 @llvm.fshl.i32(i32 %xor153, i32 %xor153, i32 8), !dbg !184
  %xor159 = xor i32 %sub155, %xor158848, !dbg !184
  call void @llvm.dbg.value(metadata i32 %xor159, metadata !31, metadata !DIExpression()), !dbg !53
  %add160 = add i32 %xor153, %add154, !dbg !184
  call void @llvm.dbg.value(metadata i32 %add160, metadata !30, metadata !DIExpression()), !dbg !53
  %sub161 = sub i32 %add154, %xor159, !dbg !184
  call void @llvm.dbg.value(metadata i32 %sub161, metadata !29, metadata !DIExpression()), !dbg !53
  %xor164849 = tail call i32 @llvm.fshl.i32(i32 %xor159, i32 %xor159, i32 16), !dbg !184
  %xor165 = xor i32 %sub161, %xor164849, !dbg !184
  call void @llvm.dbg.value(metadata i32 %xor165, metadata !29, metadata !DIExpression()), !dbg !53
  %add166 = add i32 %xor159, %add160, !dbg !184
  call void @llvm.dbg.value(metadata i32 %add166, metadata !31, metadata !DIExpression()), !dbg !53
  %sub167 = sub i32 %add160, %xor165, !dbg !184
  call void @llvm.dbg.value(metadata i32 %sub167, metadata !30, metadata !DIExpression()), !dbg !53
  %xor170850 = tail call i32 @llvm.fshl.i32(i32 %xor165, i32 %xor165, i32 19), !dbg !184
  %xor171 = xor i32 %sub167, %xor170850, !dbg !184
  call void @llvm.dbg.value(metadata i32 %xor171, metadata !30, metadata !DIExpression()), !dbg !53
  %add172 = add i32 %xor165, %add166, !dbg !184
  call void @llvm.dbg.value(metadata i32 %add172, metadata !29, metadata !DIExpression()), !dbg !53
  %sub173 = sub i32 %add166, %xor171, !dbg !184
  call void @llvm.dbg.value(metadata i32 %sub173, metadata !31, metadata !DIExpression()), !dbg !53
  %xor176851 = tail call i32 @llvm.fshl.i32(i32 %xor171, i32 %xor171, i32 4), !dbg !184
  %xor177 = xor i32 %sub173, %xor176851, !dbg !184
  call void @llvm.dbg.value(metadata i32 %xor177, metadata !31, metadata !DIExpression()), !dbg !53
  %add178 = add i32 %xor171, %add172, !dbg !184
  call void @llvm.dbg.value(metadata i32 %add178, metadata !30, metadata !DIExpression()), !dbg !53
  %sub179 = add i64 %length.addr.1884, -12, !dbg !186
  call void @llvm.dbg.value(metadata i64 %sub179, metadata !28, metadata !DIExpression()), !dbg !53
  %add.ptr180 = getelementptr inbounds i16, i16* %k117.0885, i64 6, !dbg !187
  call void @llvm.dbg.value(metadata i16* %add.ptr180, metadata !42, metadata !DIExpression()), !dbg !160
  %cmp119 = icmp ugt i64 %sub179, 12, !dbg !161
  br i1 %cmp119, label %while.body121, label %while.end181, !dbg !162, !llvm.loop !188

while.end181:                                     ; preds = %while.body121, %if.then116
  %a.3.lcssa = phi i32 [ %add, %if.then116 ], [ %add172, %while.body121 ], !dbg !53
  %b.3.lcssa = phi i32 [ %add, %if.then116 ], [ %add178, %while.body121 ], !dbg !53
  %c.3.lcssa = phi i32 [ %add, %if.then116 ], [ %xor177, %while.body121 ], !dbg !53
  %length.addr.1.lcssa = phi i64 [ %length, %if.then116 ], [ %sub179, %while.body121 ]
  %k117.0.lcssa = phi i16* [ %29, %if.then116 ], [ %add.ptr180, %while.body121 ], !dbg !160
  call void @llvm.dbg.value(metadata i16* %k117.0.lcssa, metadata !50, metadata !DIExpression()), !dbg !160
  switch i64 %length.addr.1.lcssa, label %if.end445 [
    i64 12, label %sw.bb182
    i64 11, label %sw.bb204
    i64 10, label %sw.bb209
    i64 9, label %sw.bb227
    i64 8, label %sw.bb231
    i64 7, label %sw.bb246
    i64 6, label %sw.bb251
    i64 5, label %sw.bb262
    i64 4, label %sw.bb266
    i64 3, label %sw.bb274
    i64 2, label %sw.bb279
    i64 1, label %sw.bb283
    i64 0, label %cleanup481
  ], !dbg !190

sw.bb182:                                         ; preds = %while.end181
  %arrayidx183 = getelementptr inbounds i16, i16* %k117.0.lcssa, i64 4, !dbg !191
  %36 = load i16, i16* %arrayidx183, align 2, !dbg !191, !tbaa !165
  %conv184 = zext i16 %36 to i32, !dbg !191
  %arrayidx185 = getelementptr inbounds i16, i16* %k117.0.lcssa, i64 5, !dbg !193
  %37 = load i16, i16* %arrayidx185, align 2, !dbg !193, !tbaa !165
  %conv186 = zext i16 %37 to i32, !dbg !194
  %shl187 = shl nuw i32 %conv186, 16, !dbg !195
  %add188 = or i32 %shl187, %conv184, !dbg !196
  %add189 = add i32 %add188, %c.3.lcssa, !dbg !197
  call void @llvm.dbg.value(metadata i32 %add189, metadata !31, metadata !DIExpression()), !dbg !53
  %arrayidx190 = getelementptr inbounds i16, i16* %k117.0.lcssa, i64 2, !dbg !198
  %38 = load i16, i16* %arrayidx190, align 2, !dbg !198, !tbaa !165
  %conv191 = zext i16 %38 to i32, !dbg !198
  %arrayidx192 = getelementptr inbounds i16, i16* %k117.0.lcssa, i64 3, !dbg !199
  %39 = load i16, i16* %arrayidx192, align 2, !dbg !199, !tbaa !165
  %conv193 = zext i16 %39 to i32, !dbg !200
  %shl194 = shl nuw i32 %conv193, 16, !dbg !201
  %add195 = or i32 %shl194, %conv191, !dbg !202
  %add196 = add i32 %add195, %b.3.lcssa, !dbg !203
  call void @llvm.dbg.value(metadata i32 %add196, metadata !30, metadata !DIExpression()), !dbg !53
  %40 = load i16, i16* %k117.0.lcssa, align 2, !dbg !204, !tbaa !165
  %conv198 = zext i16 %40 to i32, !dbg !204
  %arrayidx199 = getelementptr inbounds i16, i16* %k117.0.lcssa, i64 1, !dbg !205
  %41 = load i16, i16* %arrayidx199, align 2, !dbg !205, !tbaa !165
  %conv200 = zext i16 %41 to i32, !dbg !206
  %shl201 = shl nuw i32 %conv200, 16, !dbg !207
  %add202 = or i32 %shl201, %conv198, !dbg !208
  %add203 = add i32 %add202, %a.3.lcssa, !dbg !209
  call void @llvm.dbg.value(metadata i32 %add203, metadata !29, metadata !DIExpression()), !dbg !53
  br label %if.end445, !dbg !210

sw.bb204:                                         ; preds = %while.end181
  %arrayidx205845 = getelementptr inbounds i16, i16* %k117.0.lcssa, i64 5, !dbg !211
  %arrayidx205 = bitcast i16* %arrayidx205845 to i8*, !dbg !211
  %42 = load i8, i8* %arrayidx205, align 1, !dbg !211, !tbaa !212
  %conv206 = zext i8 %42 to i32, !dbg !213
  %shl207 = shl nuw nsw i32 %conv206, 16, !dbg !214
  %add208 = add i32 %shl207, %c.3.lcssa, !dbg !215
  call void @llvm.dbg.value(metadata i32 %add208, metadata !31, metadata !DIExpression()), !dbg !53
  br label %sw.bb209, !dbg !216

sw.bb209:                                         ; preds = %while.end181, %sw.bb204
  %c.4 = phi i32 [ %c.3.lcssa, %while.end181 ], [ %add208, %sw.bb204 ], !dbg !53
  call void @llvm.dbg.value(metadata i32 %c.4, metadata !31, metadata !DIExpression()), !dbg !53
  %arrayidx210 = getelementptr inbounds i16, i16* %k117.0.lcssa, i64 4, !dbg !217
  %43 = load i16, i16* %arrayidx210, align 2, !dbg !217, !tbaa !165
  %conv211 = zext i16 %43 to i32, !dbg !217
  %add212 = add i32 %c.4, %conv211, !dbg !218
  call void @llvm.dbg.value(metadata i32 %add212, metadata !31, metadata !DIExpression()), !dbg !53
  %arrayidx213 = getelementptr inbounds i16, i16* %k117.0.lcssa, i64 2, !dbg !219
  %44 = load i16, i16* %arrayidx213, align 2, !dbg !219, !tbaa !165
  %conv214 = zext i16 %44 to i32, !dbg !219
  %arrayidx215 = getelementptr inbounds i16, i16* %k117.0.lcssa, i64 3, !dbg !220
  %45 = load i16, i16* %arrayidx215, align 2, !dbg !220, !tbaa !165
  %conv216 = zext i16 %45 to i32, !dbg !221
  %shl217 = shl nuw i32 %conv216, 16, !dbg !222
  %add218 = or i32 %shl217, %conv214, !dbg !223
  %add219 = add i32 %add218, %b.3.lcssa, !dbg !224
  call void @llvm.dbg.value(metadata i32 %add219, metadata !30, metadata !DIExpression()), !dbg !53
  %46 = load i16, i16* %k117.0.lcssa, align 2, !dbg !225, !tbaa !165
  %conv221 = zext i16 %46 to i32, !dbg !225
  %arrayidx222 = getelementptr inbounds i16, i16* %k117.0.lcssa, i64 1, !dbg !226
  %47 = load i16, i16* %arrayidx222, align 2, !dbg !226, !tbaa !165
  %conv223 = zext i16 %47 to i32, !dbg !227
  %shl224 = shl nuw i32 %conv223, 16, !dbg !228
  %add225 = or i32 %shl224, %conv221, !dbg !229
  %add226 = add i32 %add225, %a.3.lcssa, !dbg !230
  call void @llvm.dbg.value(metadata i32 %add226, metadata !29, metadata !DIExpression()), !dbg !53
  br label %if.end445, !dbg !231

sw.bb227:                                         ; preds = %while.end181
  %arrayidx228844 = getelementptr inbounds i16, i16* %k117.0.lcssa, i64 4, !dbg !232
  %arrayidx228 = bitcast i16* %arrayidx228844 to i8*, !dbg !232
  %48 = load i8, i8* %arrayidx228, align 1, !dbg !232, !tbaa !212
  %conv229 = zext i8 %48 to i32, !dbg !232
  %add230 = add i32 %c.3.lcssa, %conv229, !dbg !233
  call void @llvm.dbg.value(metadata i32 %add230, metadata !31, metadata !DIExpression()), !dbg !53
  br label %sw.bb231, !dbg !234

sw.bb231:                                         ; preds = %while.end181, %sw.bb227
  %c.5 = phi i32 [ %c.3.lcssa, %while.end181 ], [ %add230, %sw.bb227 ], !dbg !53
  call void @llvm.dbg.value(metadata i32 %c.5, metadata !31, metadata !DIExpression()), !dbg !53
  %arrayidx232 = getelementptr inbounds i16, i16* %k117.0.lcssa, i64 2, !dbg !235
  %49 = load i16, i16* %arrayidx232, align 2, !dbg !235, !tbaa !165
  %conv233 = zext i16 %49 to i32, !dbg !235
  %arrayidx234 = getelementptr inbounds i16, i16* %k117.0.lcssa, i64 3, !dbg !236
  %50 = load i16, i16* %arrayidx234, align 2, !dbg !236, !tbaa !165
  %conv235 = zext i16 %50 to i32, !dbg !237
  %shl236 = shl nuw i32 %conv235, 16, !dbg !238
  %add237 = or i32 %shl236, %conv233, !dbg !239
  %add238 = add i32 %add237, %b.3.lcssa, !dbg !240
  call void @llvm.dbg.value(metadata i32 %add238, metadata !30, metadata !DIExpression()), !dbg !53
  %51 = load i16, i16* %k117.0.lcssa, align 2, !dbg !241, !tbaa !165
  %conv240 = zext i16 %51 to i32, !dbg !241
  %arrayidx241 = getelementptr inbounds i16, i16* %k117.0.lcssa, i64 1, !dbg !242
  %52 = load i16, i16* %arrayidx241, align 2, !dbg !242, !tbaa !165
  %conv242 = zext i16 %52 to i32, !dbg !243
  %shl243 = shl nuw i32 %conv242, 16, !dbg !244
  %add244 = or i32 %shl243, %conv240, !dbg !245
  %add245 = add i32 %add244, %a.3.lcssa, !dbg !246
  call void @llvm.dbg.value(metadata i32 %add245, metadata !29, metadata !DIExpression()), !dbg !53
  br label %if.end445, !dbg !247

sw.bb246:                                         ; preds = %while.end181
  %arrayidx247843 = getelementptr inbounds i16, i16* %k117.0.lcssa, i64 3, !dbg !248
  %arrayidx247 = bitcast i16* %arrayidx247843 to i8*, !dbg !248
  %53 = load i8, i8* %arrayidx247, align 1, !dbg !248, !tbaa !212
  %conv248 = zext i8 %53 to i32, !dbg !249
  %shl249 = shl nuw nsw i32 %conv248, 16, !dbg !250
  %add250 = add i32 %shl249, %b.3.lcssa, !dbg !251
  call void @llvm.dbg.value(metadata i32 %add250, metadata !30, metadata !DIExpression()), !dbg !53
  br label %sw.bb251, !dbg !252

sw.bb251:                                         ; preds = %while.end181, %sw.bb246
  %b.4 = phi i32 [ %b.3.lcssa, %while.end181 ], [ %add250, %sw.bb246 ], !dbg !53
  call void @llvm.dbg.value(metadata i32 %b.4, metadata !30, metadata !DIExpression()), !dbg !53
  %arrayidx252 = getelementptr inbounds i16, i16* %k117.0.lcssa, i64 2, !dbg !253
  %54 = load i16, i16* %arrayidx252, align 2, !dbg !253, !tbaa !165
  %conv253 = zext i16 %54 to i32, !dbg !253
  %add254 = add i32 %b.4, %conv253, !dbg !254
  call void @llvm.dbg.value(metadata i32 %add254, metadata !30, metadata !DIExpression()), !dbg !53
  %55 = load i16, i16* %k117.0.lcssa, align 2, !dbg !255, !tbaa !165
  %conv256 = zext i16 %55 to i32, !dbg !255
  %arrayidx257 = getelementptr inbounds i16, i16* %k117.0.lcssa, i64 1, !dbg !256
  %56 = load i16, i16* %arrayidx257, align 2, !dbg !256, !tbaa !165
  %conv258 = zext i16 %56 to i32, !dbg !257
  %shl259 = shl nuw i32 %conv258, 16, !dbg !258
  %add260 = or i32 %shl259, %conv256, !dbg !259
  %add261 = add i32 %add260, %a.3.lcssa, !dbg !260
  call void @llvm.dbg.value(metadata i32 %add261, metadata !29, metadata !DIExpression()), !dbg !53
  br label %if.end445, !dbg !261

sw.bb262:                                         ; preds = %while.end181
  %arrayidx263842 = getelementptr inbounds i16, i16* %k117.0.lcssa, i64 2, !dbg !262
  %arrayidx263 = bitcast i16* %arrayidx263842 to i8*, !dbg !262
  %57 = load i8, i8* %arrayidx263, align 1, !dbg !262, !tbaa !212
  %conv264 = zext i8 %57 to i32, !dbg !262
  %add265 = add i32 %b.3.lcssa, %conv264, !dbg !263
  call void @llvm.dbg.value(metadata i32 %add265, metadata !30, metadata !DIExpression()), !dbg !53
  br label %sw.bb266, !dbg !264

sw.bb266:                                         ; preds = %while.end181, %sw.bb262
  %b.5 = phi i32 [ %b.3.lcssa, %while.end181 ], [ %add265, %sw.bb262 ], !dbg !53
  call void @llvm.dbg.value(metadata i32 %b.5, metadata !30, metadata !DIExpression()), !dbg !53
  %58 = load i16, i16* %k117.0.lcssa, align 2, !dbg !265, !tbaa !165
  %conv268 = zext i16 %58 to i32, !dbg !265
  %arrayidx269 = getelementptr inbounds i16, i16* %k117.0.lcssa, i64 1, !dbg !266
  %59 = load i16, i16* %arrayidx269, align 2, !dbg !266, !tbaa !165
  %conv270 = zext i16 %59 to i32, !dbg !267
  %shl271 = shl nuw i32 %conv270, 16, !dbg !268
  %add272 = or i32 %shl271, %conv268, !dbg !269
  %add273 = add i32 %add272, %a.3.lcssa, !dbg !270
  call void @llvm.dbg.value(metadata i32 %add273, metadata !29, metadata !DIExpression()), !dbg !53
  br label %if.end445, !dbg !271

sw.bb274:                                         ; preds = %while.end181
  %arrayidx275841 = getelementptr inbounds i16, i16* %k117.0.lcssa, i64 1, !dbg !272
  %arrayidx275 = bitcast i16* %arrayidx275841 to i8*, !dbg !272
  %60 = load i8, i8* %arrayidx275, align 1, !dbg !272, !tbaa !212
  %conv276 = zext i8 %60 to i32, !dbg !273
  %shl277 = shl nuw nsw i32 %conv276, 16, !dbg !274
  %add278 = add i32 %shl277, %a.3.lcssa, !dbg !275
  call void @llvm.dbg.value(metadata i32 %add278, metadata !29, metadata !DIExpression()), !dbg !53
  br label %sw.bb279, !dbg !276

sw.bb279:                                         ; preds = %while.end181, %sw.bb274
  %a.4 = phi i32 [ %a.3.lcssa, %while.end181 ], [ %add278, %sw.bb274 ], !dbg !53
  call void @llvm.dbg.value(metadata i32 %a.4, metadata !29, metadata !DIExpression()), !dbg !53
  %61 = load i16, i16* %k117.0.lcssa, align 2, !dbg !277, !tbaa !165
  %conv281 = zext i16 %61 to i32, !dbg !277
  %add282 = add i32 %a.4, %conv281, !dbg !278
  call void @llvm.dbg.value(metadata i32 %add282, metadata !29, metadata !DIExpression()), !dbg !53
  br label %if.end445, !dbg !279

sw.bb283:                                         ; preds = %while.end181
  %62 = bitcast i16* %k117.0.lcssa to i8*, !dbg !280
  call void @llvm.dbg.value(metadata i8* %62, metadata !50, metadata !DIExpression()), !dbg !160
  %63 = load i8, i8* %62, align 1, !dbg !281, !tbaa !212
  %conv285 = zext i8 %63 to i32, !dbg !281
  %add286 = add i32 %a.3.lcssa, %conv285, !dbg !282
  call void @llvm.dbg.value(metadata i32 %add286, metadata !29, metadata !DIExpression()), !dbg !53
  br label %if.end445, !dbg !283

while.body298:                                    ; preds = %while.cond295.preheader, %while.body298
  %k294.0875 = phi i8* [ %add.ptr381, %while.body298 ], [ %key, %while.cond295.preheader ]
  %length.addr.2874 = phi i64 [ %sub380, %while.body298 ], [ %length, %while.cond295.preheader ]
  %c.8873 = phi i32 [ %xor378, %while.body298 ], [ %add, %while.cond295.preheader ]
  %b.8872 = phi i32 [ %add379, %while.body298 ], [ %add, %while.cond295.preheader ]
  %a.7871 = phi i32 [ %add373, %while.body298 ], [ %add, %while.cond295.preheader ]
  call void @llvm.dbg.value(metadata i8* %k294.0875, metadata !51, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata i64 %length.addr.2874, metadata !28, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %c.8873, metadata !31, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %b.8872, metadata !30, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %a.7871, metadata !29, metadata !DIExpression()), !dbg !53
  %64 = load i8, i8* %k294.0875, align 1, !dbg !284, !tbaa !212
  %conv300 = zext i8 %64 to i32, !dbg !284
  %add301 = add i32 %a.7871, %conv300, !dbg !286
  call void @llvm.dbg.value(metadata i32 %add301, metadata !29, metadata !DIExpression()), !dbg !53
  %arrayidx302 = getelementptr inbounds i8, i8* %k294.0875, i64 1, !dbg !287
  %65 = load i8, i8* %arrayidx302, align 1, !dbg !287, !tbaa !212
  %conv303 = zext i8 %65 to i32, !dbg !288
  %shl304 = shl nuw nsw i32 %conv303, 8, !dbg !289
  %add305 = add i32 %add301, %shl304, !dbg !290
  call void @llvm.dbg.value(metadata i32 %add305, metadata !29, metadata !DIExpression()), !dbg !53
  %arrayidx306 = getelementptr inbounds i8, i8* %k294.0875, i64 2, !dbg !291
  %66 = load i8, i8* %arrayidx306, align 1, !dbg !291, !tbaa !212
  %conv307 = zext i8 %66 to i32, !dbg !292
  %shl308 = shl nuw nsw i32 %conv307, 16, !dbg !293
  %add309 = add i32 %add305, %shl308, !dbg !294
  call void @llvm.dbg.value(metadata i32 %add309, metadata !29, metadata !DIExpression()), !dbg !53
  %arrayidx310 = getelementptr inbounds i8, i8* %k294.0875, i64 3, !dbg !295
  %67 = load i8, i8* %arrayidx310, align 1, !dbg !295, !tbaa !212
  %conv311 = zext i8 %67 to i32, !dbg !296
  %shl312 = shl nuw i32 %conv311, 24, !dbg !297
  %add313 = add i32 %add309, %shl312, !dbg !298
  call void @llvm.dbg.value(metadata i32 %add313, metadata !29, metadata !DIExpression()), !dbg !53
  %arrayidx314 = getelementptr inbounds i8, i8* %k294.0875, i64 4, !dbg !299
  %68 = load i8, i8* %arrayidx314, align 1, !dbg !299, !tbaa !212
  %conv315 = zext i8 %68 to i32, !dbg !299
  %add316 = add i32 %b.8872, %conv315, !dbg !300
  call void @llvm.dbg.value(metadata i32 %add316, metadata !30, metadata !DIExpression()), !dbg !53
  %arrayidx317 = getelementptr inbounds i8, i8* %k294.0875, i64 5, !dbg !301
  %69 = load i8, i8* %arrayidx317, align 1, !dbg !301, !tbaa !212
  %conv318 = zext i8 %69 to i32, !dbg !302
  %shl319 = shl nuw nsw i32 %conv318, 8, !dbg !303
  %add320 = add i32 %add316, %shl319, !dbg !304
  call void @llvm.dbg.value(metadata i32 %add320, metadata !30, metadata !DIExpression()), !dbg !53
  %arrayidx321 = getelementptr inbounds i8, i8* %k294.0875, i64 6, !dbg !305
  %70 = load i8, i8* %arrayidx321, align 1, !dbg !305, !tbaa !212
  %conv322 = zext i8 %70 to i32, !dbg !306
  %shl323 = shl nuw nsw i32 %conv322, 16, !dbg !307
  %add324 = add i32 %add320, %shl323, !dbg !308
  call void @llvm.dbg.value(metadata i32 %add324, metadata !30, metadata !DIExpression()), !dbg !53
  %arrayidx325 = getelementptr inbounds i8, i8* %k294.0875, i64 7, !dbg !309
  %71 = load i8, i8* %arrayidx325, align 1, !dbg !309, !tbaa !212
  %conv326 = zext i8 %71 to i32, !dbg !310
  %shl327 = shl nuw i32 %conv326, 24, !dbg !311
  %add328 = add i32 %add324, %shl327, !dbg !312
  call void @llvm.dbg.value(metadata i32 %add328, metadata !30, metadata !DIExpression()), !dbg !53
  %arrayidx329 = getelementptr inbounds i8, i8* %k294.0875, i64 8, !dbg !313
  %72 = load i8, i8* %arrayidx329, align 1, !dbg !313, !tbaa !212
  %conv330 = zext i8 %72 to i32, !dbg !313
  %add331 = add i32 %c.8873, %conv330, !dbg !314
  call void @llvm.dbg.value(metadata i32 %add331, metadata !31, metadata !DIExpression()), !dbg !53
  %arrayidx332 = getelementptr inbounds i8, i8* %k294.0875, i64 9, !dbg !315
  %73 = load i8, i8* %arrayidx332, align 1, !dbg !315, !tbaa !212
  %conv333 = zext i8 %73 to i32, !dbg !316
  %shl334 = shl nuw nsw i32 %conv333, 8, !dbg !317
  %add335 = add i32 %add331, %shl334, !dbg !318
  call void @llvm.dbg.value(metadata i32 %add335, metadata !31, metadata !DIExpression()), !dbg !53
  %arrayidx336 = getelementptr inbounds i8, i8* %k294.0875, i64 10, !dbg !319
  %74 = load i8, i8* %arrayidx336, align 1, !dbg !319, !tbaa !212
  %conv337 = zext i8 %74 to i32, !dbg !320
  %shl338 = shl nuw nsw i32 %conv337, 16, !dbg !321
  %add339 = add i32 %add335, %shl338, !dbg !322
  call void @llvm.dbg.value(metadata i32 %add339, metadata !31, metadata !DIExpression()), !dbg !53
  %arrayidx340 = getelementptr inbounds i8, i8* %k294.0875, i64 11, !dbg !323
  %75 = load i8, i8* %arrayidx340, align 1, !dbg !323, !tbaa !212
  %conv341 = zext i8 %75 to i32, !dbg !324
  %shl342 = shl nuw i32 %conv341, 24, !dbg !325
  %add343 = add i32 %add339, %shl342, !dbg !326
  call void @llvm.dbg.value(metadata i32 %add343, metadata !31, metadata !DIExpression()), !dbg !53
  %sub344 = sub i32 %add313, %add343, !dbg !327
  call void @llvm.dbg.value(metadata i32 %sub344, metadata !29, metadata !DIExpression()), !dbg !53
  %xor347835 = tail call i32 @llvm.fshl.i32(i32 %add343, i32 %add343, i32 4), !dbg !327
  %xor348 = xor i32 %sub344, %xor347835, !dbg !327
  call void @llvm.dbg.value(metadata i32 %xor348, metadata !29, metadata !DIExpression()), !dbg !53
  %add349 = add i32 %add343, %add328, !dbg !327
  call void @llvm.dbg.value(metadata i32 %add349, metadata !31, metadata !DIExpression()), !dbg !53
  %sub350 = sub i32 %add328, %xor348, !dbg !327
  call void @llvm.dbg.value(metadata i32 %sub350, metadata !30, metadata !DIExpression()), !dbg !53
  %xor353836 = tail call i32 @llvm.fshl.i32(i32 %xor348, i32 %xor348, i32 6), !dbg !327
  %xor354 = xor i32 %sub350, %xor353836, !dbg !327
  call void @llvm.dbg.value(metadata i32 %xor354, metadata !30, metadata !DIExpression()), !dbg !53
  %add355 = add i32 %xor348, %add349, !dbg !327
  call void @llvm.dbg.value(metadata i32 %add355, metadata !29, metadata !DIExpression()), !dbg !53
  %sub356 = sub i32 %add349, %xor354, !dbg !327
  call void @llvm.dbg.value(metadata i32 %sub356, metadata !31, metadata !DIExpression()), !dbg !53
  %xor359837 = tail call i32 @llvm.fshl.i32(i32 %xor354, i32 %xor354, i32 8), !dbg !327
  %xor360 = xor i32 %sub356, %xor359837, !dbg !327
  call void @llvm.dbg.value(metadata i32 %xor360, metadata !31, metadata !DIExpression()), !dbg !53
  %add361 = add i32 %xor354, %add355, !dbg !327
  call void @llvm.dbg.value(metadata i32 %add361, metadata !30, metadata !DIExpression()), !dbg !53
  %sub362 = sub i32 %add355, %xor360, !dbg !327
  call void @llvm.dbg.value(metadata i32 %sub362, metadata !29, metadata !DIExpression()), !dbg !53
  %xor365838 = tail call i32 @llvm.fshl.i32(i32 %xor360, i32 %xor360, i32 16), !dbg !327
  %xor366 = xor i32 %sub362, %xor365838, !dbg !327
  call void @llvm.dbg.value(metadata i32 %xor366, metadata !29, metadata !DIExpression()), !dbg !53
  %add367 = add i32 %xor360, %add361, !dbg !327
  call void @llvm.dbg.value(metadata i32 %add367, metadata !31, metadata !DIExpression()), !dbg !53
  %sub368 = sub i32 %add361, %xor366, !dbg !327
  call void @llvm.dbg.value(metadata i32 %sub368, metadata !30, metadata !DIExpression()), !dbg !53
  %xor371839 = tail call i32 @llvm.fshl.i32(i32 %xor366, i32 %xor366, i32 19), !dbg !327
  %xor372 = xor i32 %sub368, %xor371839, !dbg !327
  call void @llvm.dbg.value(metadata i32 %xor372, metadata !30, metadata !DIExpression()), !dbg !53
  %add373 = add i32 %xor366, %add367, !dbg !327
  call void @llvm.dbg.value(metadata i32 %add373, metadata !29, metadata !DIExpression()), !dbg !53
  %sub374 = sub i32 %add367, %xor372, !dbg !327
  call void @llvm.dbg.value(metadata i32 %sub374, metadata !31, metadata !DIExpression()), !dbg !53
  %xor377840 = tail call i32 @llvm.fshl.i32(i32 %xor372, i32 %xor372, i32 4), !dbg !327
  %xor378 = xor i32 %sub374, %xor377840, !dbg !327
  call void @llvm.dbg.value(metadata i32 %xor378, metadata !31, metadata !DIExpression()), !dbg !53
  %add379 = add i32 %xor372, %add373, !dbg !327
  call void @llvm.dbg.value(metadata i32 %add379, metadata !30, metadata !DIExpression()), !dbg !53
  %sub380 = add i64 %length.addr.2874, -12, !dbg !329
  call void @llvm.dbg.value(metadata i64 %sub380, metadata !28, metadata !DIExpression()), !dbg !53
  %add.ptr381 = getelementptr inbounds i8, i8* %k294.0875, i64 12, !dbg !330
  call void @llvm.dbg.value(metadata i8* %add.ptr381, metadata !51, metadata !DIExpression()), !dbg !156
  %cmp296 = icmp ugt i64 %sub380, 12, !dbg !157
  br i1 %cmp296, label %while.body298, label %while.end382, !dbg !158, !llvm.loop !331

while.end382:                                     ; preds = %while.body298, %while.cond295.preheader
  %a.7.lcssa = phi i32 [ %add, %while.cond295.preheader ], [ %add373, %while.body298 ], !dbg !53
  %b.8.lcssa = phi i32 [ %add, %while.cond295.preheader ], [ %add379, %while.body298 ], !dbg !53
  %c.8.lcssa = phi i32 [ %add, %while.cond295.preheader ], [ %xor378, %while.body298 ], !dbg !53
  %length.addr.2.lcssa = phi i64 [ %length, %while.cond295.preheader ], [ %sub380, %while.body298 ]
  %k294.0.lcssa = phi i8* [ %key, %while.cond295.preheader ], [ %add.ptr381, %while.body298 ], !dbg !156
  switch i64 %length.addr.2.lcssa, label %if.end445 [
    i64 12, label %sw.bb383
    i64 11, label %sw.bb388
    i64 10, label %sw.bb393
    i64 9, label %sw.bb398
    i64 8, label %sw.bb402
    i64 7, label %sw.bb407
    i64 6, label %sw.bb412
    i64 5, label %sw.bb417
    i64 4, label %sw.bb421
    i64 3, label %sw.bb426
    i64 2, label %sw.bb431
    i64 1, label %sw.bb436
    i64 0, label %cleanup481
  ], !dbg !333

sw.bb383:                                         ; preds = %while.end382
  %arrayidx384 = getelementptr inbounds i8, i8* %k294.0.lcssa, i64 11, !dbg !334
  %76 = load i8, i8* %arrayidx384, align 1, !dbg !334, !tbaa !212
  %conv385 = zext i8 %76 to i32, !dbg !336
  %shl386 = shl nuw i32 %conv385, 24, !dbg !337
  %add387 = add i32 %shl386, %c.8.lcssa, !dbg !338
  call void @llvm.dbg.value(metadata i32 %add387, metadata !31, metadata !DIExpression()), !dbg !53
  br label %sw.bb388, !dbg !339

sw.bb388:                                         ; preds = %while.end382, %sw.bb383
  %c.9 = phi i32 [ %c.8.lcssa, %while.end382 ], [ %add387, %sw.bb383 ], !dbg !53
  call void @llvm.dbg.value(metadata i32 %c.9, metadata !31, metadata !DIExpression()), !dbg !53
  %arrayidx389 = getelementptr inbounds i8, i8* %k294.0.lcssa, i64 10, !dbg !340
  %77 = load i8, i8* %arrayidx389, align 1, !dbg !340, !tbaa !212
  %conv390 = zext i8 %77 to i32, !dbg !341
  %shl391 = shl nuw nsw i32 %conv390, 16, !dbg !342
  %add392 = add i32 %shl391, %c.9, !dbg !343
  call void @llvm.dbg.value(metadata i32 %add392, metadata !31, metadata !DIExpression()), !dbg !53
  br label %sw.bb393, !dbg !344

sw.bb393:                                         ; preds = %while.end382, %sw.bb388
  %c.10 = phi i32 [ %c.8.lcssa, %while.end382 ], [ %add392, %sw.bb388 ], !dbg !53
  call void @llvm.dbg.value(metadata i32 %c.10, metadata !31, metadata !DIExpression()), !dbg !53
  %arrayidx394 = getelementptr inbounds i8, i8* %k294.0.lcssa, i64 9, !dbg !345
  %78 = load i8, i8* %arrayidx394, align 1, !dbg !345, !tbaa !212
  %conv395 = zext i8 %78 to i32, !dbg !346
  %shl396 = shl nuw nsw i32 %conv395, 8, !dbg !347
  %add397 = add i32 %shl396, %c.10, !dbg !348
  call void @llvm.dbg.value(metadata i32 %add397, metadata !31, metadata !DIExpression()), !dbg !53
  br label %sw.bb398, !dbg !349

sw.bb398:                                         ; preds = %while.end382, %sw.bb393
  %c.11 = phi i32 [ %c.8.lcssa, %while.end382 ], [ %add397, %sw.bb393 ], !dbg !53
  call void @llvm.dbg.value(metadata i32 %c.11, metadata !31, metadata !DIExpression()), !dbg !53
  %arrayidx399 = getelementptr inbounds i8, i8* %k294.0.lcssa, i64 8, !dbg !350
  %79 = load i8, i8* %arrayidx399, align 1, !dbg !350, !tbaa !212
  %conv400 = zext i8 %79 to i32, !dbg !350
  %add401 = add i32 %c.11, %conv400, !dbg !351
  call void @llvm.dbg.value(metadata i32 %add401, metadata !31, metadata !DIExpression()), !dbg !53
  br label %sw.bb402, !dbg !352

sw.bb402:                                         ; preds = %while.end382, %sw.bb398
  %c.12 = phi i32 [ %c.8.lcssa, %while.end382 ], [ %add401, %sw.bb398 ], !dbg !53
  call void @llvm.dbg.value(metadata i32 %c.12, metadata !31, metadata !DIExpression()), !dbg !53
  %arrayidx403 = getelementptr inbounds i8, i8* %k294.0.lcssa, i64 7, !dbg !353
  %80 = load i8, i8* %arrayidx403, align 1, !dbg !353, !tbaa !212
  %conv404 = zext i8 %80 to i32, !dbg !354
  %shl405 = shl nuw i32 %conv404, 24, !dbg !355
  %add406 = add i32 %shl405, %b.8.lcssa, !dbg !356
  call void @llvm.dbg.value(metadata i32 %add406, metadata !30, metadata !DIExpression()), !dbg !53
  br label %sw.bb407, !dbg !357

sw.bb407:                                         ; preds = %while.end382, %sw.bb402
  %b.9 = phi i32 [ %b.8.lcssa, %while.end382 ], [ %add406, %sw.bb402 ], !dbg !53
  %c.13 = phi i32 [ %c.8.lcssa, %while.end382 ], [ %c.12, %sw.bb402 ], !dbg !358
  call void @llvm.dbg.value(metadata i32 %c.13, metadata !31, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %b.9, metadata !30, metadata !DIExpression()), !dbg !53
  %arrayidx408 = getelementptr inbounds i8, i8* %k294.0.lcssa, i64 6, !dbg !359
  %81 = load i8, i8* %arrayidx408, align 1, !dbg !359, !tbaa !212
  %conv409 = zext i8 %81 to i32, !dbg !360
  %shl410 = shl nuw nsw i32 %conv409, 16, !dbg !361
  %add411 = add i32 %shl410, %b.9, !dbg !362
  call void @llvm.dbg.value(metadata i32 %add411, metadata !30, metadata !DIExpression()), !dbg !53
  br label %sw.bb412, !dbg !363

sw.bb412:                                         ; preds = %while.end382, %sw.bb407
  %b.10 = phi i32 [ %b.8.lcssa, %while.end382 ], [ %add411, %sw.bb407 ], !dbg !53
  %c.14 = phi i32 [ %c.8.lcssa, %while.end382 ], [ %c.13, %sw.bb407 ], !dbg !358
  call void @llvm.dbg.value(metadata i32 %c.14, metadata !31, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %b.10, metadata !30, metadata !DIExpression()), !dbg !53
  %arrayidx413 = getelementptr inbounds i8, i8* %k294.0.lcssa, i64 5, !dbg !364
  %82 = load i8, i8* %arrayidx413, align 1, !dbg !364, !tbaa !212
  %conv414 = zext i8 %82 to i32, !dbg !365
  %shl415 = shl nuw nsw i32 %conv414, 8, !dbg !366
  %add416 = add i32 %shl415, %b.10, !dbg !367
  call void @llvm.dbg.value(metadata i32 %add416, metadata !30, metadata !DIExpression()), !dbg !53
  br label %sw.bb417, !dbg !368

sw.bb417:                                         ; preds = %while.end382, %sw.bb412
  %b.11 = phi i32 [ %b.8.lcssa, %while.end382 ], [ %add416, %sw.bb412 ], !dbg !53
  %c.15 = phi i32 [ %c.8.lcssa, %while.end382 ], [ %c.14, %sw.bb412 ], !dbg !358
  call void @llvm.dbg.value(metadata i32 %c.15, metadata !31, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %b.11, metadata !30, metadata !DIExpression()), !dbg !53
  %arrayidx418 = getelementptr inbounds i8, i8* %k294.0.lcssa, i64 4, !dbg !369
  %83 = load i8, i8* %arrayidx418, align 1, !dbg !369, !tbaa !212
  %conv419 = zext i8 %83 to i32, !dbg !369
  %add420 = add i32 %b.11, %conv419, !dbg !370
  call void @llvm.dbg.value(metadata i32 %add420, metadata !30, metadata !DIExpression()), !dbg !53
  br label %sw.bb421, !dbg !371

sw.bb421:                                         ; preds = %while.end382, %sw.bb417
  %b.12 = phi i32 [ %b.8.lcssa, %while.end382 ], [ %add420, %sw.bb417 ], !dbg !53
  %c.16 = phi i32 [ %c.8.lcssa, %while.end382 ], [ %c.15, %sw.bb417 ], !dbg !358
  call void @llvm.dbg.value(metadata i32 %c.16, metadata !31, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %b.12, metadata !30, metadata !DIExpression()), !dbg !53
  %arrayidx422 = getelementptr inbounds i8, i8* %k294.0.lcssa, i64 3, !dbg !372
  %84 = load i8, i8* %arrayidx422, align 1, !dbg !372, !tbaa !212
  %conv423 = zext i8 %84 to i32, !dbg !373
  %shl424 = shl nuw i32 %conv423, 24, !dbg !374
  %add425 = add i32 %shl424, %a.7.lcssa, !dbg !375
  call void @llvm.dbg.value(metadata i32 %add425, metadata !29, metadata !DIExpression()), !dbg !53
  br label %sw.bb426, !dbg !376

sw.bb426:                                         ; preds = %while.end382, %sw.bb421
  %a.8 = phi i32 [ %a.7.lcssa, %while.end382 ], [ %add425, %sw.bb421 ], !dbg !53
  %b.13 = phi i32 [ %b.8.lcssa, %while.end382 ], [ %b.12, %sw.bb421 ], !dbg !377
  %c.17 = phi i32 [ %c.8.lcssa, %while.end382 ], [ %c.16, %sw.bb421 ], !dbg !358
  call void @llvm.dbg.value(metadata i32 %c.17, metadata !31, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %b.13, metadata !30, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %a.8, metadata !29, metadata !DIExpression()), !dbg !53
  %arrayidx427 = getelementptr inbounds i8, i8* %k294.0.lcssa, i64 2, !dbg !378
  %85 = load i8, i8* %arrayidx427, align 1, !dbg !378, !tbaa !212
  %conv428 = zext i8 %85 to i32, !dbg !379
  %shl429 = shl nuw nsw i32 %conv428, 16, !dbg !380
  %add430 = add i32 %shl429, %a.8, !dbg !381
  call void @llvm.dbg.value(metadata i32 %add430, metadata !29, metadata !DIExpression()), !dbg !53
  br label %sw.bb431, !dbg !382

sw.bb431:                                         ; preds = %while.end382, %sw.bb426
  %a.9 = phi i32 [ %a.7.lcssa, %while.end382 ], [ %add430, %sw.bb426 ], !dbg !53
  %b.14 = phi i32 [ %b.8.lcssa, %while.end382 ], [ %b.13, %sw.bb426 ], !dbg !377
  %c.18 = phi i32 [ %c.8.lcssa, %while.end382 ], [ %c.17, %sw.bb426 ], !dbg !358
  call void @llvm.dbg.value(metadata i32 %c.18, metadata !31, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %b.14, metadata !30, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %a.9, metadata !29, metadata !DIExpression()), !dbg !53
  %arrayidx432 = getelementptr inbounds i8, i8* %k294.0.lcssa, i64 1, !dbg !383
  %86 = load i8, i8* %arrayidx432, align 1, !dbg !383, !tbaa !212
  %conv433 = zext i8 %86 to i32, !dbg !384
  %shl434 = shl nuw nsw i32 %conv433, 8, !dbg !385
  %add435 = add i32 %shl434, %a.9, !dbg !386
  call void @llvm.dbg.value(metadata i32 %add435, metadata !29, metadata !DIExpression()), !dbg !53
  br label %sw.bb436, !dbg !387

sw.bb436:                                         ; preds = %while.end382, %sw.bb431
  %a.10 = phi i32 [ %a.7.lcssa, %while.end382 ], [ %add435, %sw.bb431 ], !dbg !53
  %b.15 = phi i32 [ %b.8.lcssa, %while.end382 ], [ %b.14, %sw.bb431 ], !dbg !377
  %c.19 = phi i32 [ %c.8.lcssa, %while.end382 ], [ %c.18, %sw.bb431 ], !dbg !358
  call void @llvm.dbg.value(metadata i32 %c.19, metadata !31, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %b.15, metadata !30, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %a.10, metadata !29, metadata !DIExpression()), !dbg !53
  %87 = load i8, i8* %k294.0.lcssa, align 1, !dbg !388, !tbaa !212
  %conv438 = zext i8 %87 to i32, !dbg !388
  %add439 = add i32 %a.10, %conv438, !dbg !389
  call void @llvm.dbg.value(metadata i32 %add439, metadata !29, metadata !DIExpression()), !dbg !53
  br label %if.end445, !dbg !390

if.end445:                                        ; preds = %while.end382, %sw.bb436, %while.end181, %sw.bb283, %sw.bb279, %sw.bb266, %sw.bb251, %sw.bb231, %sw.bb209, %sw.bb182, %while.end, %sw.bb107, %sw.bb103, %sw.bb99, %sw.bb96, %sw.bb90, %sw.bb84, %sw.bb78, %sw.bb73, %sw.bb65, %sw.bb57, %sw.bb49, %sw.bb
  %a.13 = phi i32 [ %a.0.lcssa, %while.end ], [ %add110, %sw.bb107 ], [ %add106, %sw.bb103 ], [ %add102, %sw.bb99 ], [ %add98, %sw.bb96 ], [ %add95, %sw.bb90 ], [ %add89, %sw.bb84 ], [ %add83, %sw.bb78 ], [ %add77, %sw.bb73 ], [ %add72, %sw.bb65 ], [ %add64, %sw.bb57 ], [ %add56, %sw.bb49 ], [ %add48, %sw.bb ], [ %a.3.lcssa, %while.end181 ], [ %add286, %sw.bb283 ], [ %add282, %sw.bb279 ], [ %add273, %sw.bb266 ], [ %add261, %sw.bb251 ], [ %add245, %sw.bb231 ], [ %add226, %sw.bb209 ], [ %add203, %sw.bb182 ], [ %a.7.lcssa, %while.end382 ], [ %add439, %sw.bb436 ], !dbg !391
  %b.18 = phi i32 [ %b.0.lcssa, %while.end ], [ %b.0.lcssa, %sw.bb107 ], [ %b.0.lcssa, %sw.bb103 ], [ %b.0.lcssa, %sw.bb99 ], [ %b.0.lcssa, %sw.bb96 ], [ %add93, %sw.bb90 ], [ %add87, %sw.bb84 ], [ %add81, %sw.bb78 ], [ %add75, %sw.bb73 ], [ %add70, %sw.bb65 ], [ %add62, %sw.bb57 ], [ %add54, %sw.bb49 ], [ %add46, %sw.bb ], [ %b.3.lcssa, %while.end181 ], [ %b.3.lcssa, %sw.bb283 ], [ %b.3.lcssa, %sw.bb279 ], [ %b.5, %sw.bb266 ], [ %add254, %sw.bb251 ], [ %add238, %sw.bb231 ], [ %add219, %sw.bb209 ], [ %add196, %sw.bb182 ], [ %b.8.lcssa, %while.end382 ], [ %b.15, %sw.bb436 ], !dbg !377
  %c.22 = phi i32 [ %c.0.lcssa, %while.end ], [ %c.0.lcssa, %sw.bb107 ], [ %c.0.lcssa, %sw.bb103 ], [ %c.0.lcssa, %sw.bb99 ], [ %c.0.lcssa, %sw.bb96 ], [ %c.0.lcssa, %sw.bb90 ], [ %c.0.lcssa, %sw.bb84 ], [ %c.0.lcssa, %sw.bb78 ], [ %c.0.lcssa, %sw.bb73 ], [ %add68, %sw.bb65 ], [ %add60, %sw.bb57 ], [ %add52, %sw.bb49 ], [ %add44, %sw.bb ], [ %c.3.lcssa, %while.end181 ], [ %c.3.lcssa, %sw.bb283 ], [ %c.3.lcssa, %sw.bb279 ], [ %c.3.lcssa, %sw.bb266 ], [ %c.3.lcssa, %sw.bb251 ], [ %c.5, %sw.bb231 ], [ %add212, %sw.bb209 ], [ %add189, %sw.bb182 ], [ %c.8.lcssa, %while.end382 ], [ %c.19, %sw.bb436 ], !dbg !358
  call void @llvm.dbg.value(metadata i32 %c.22, metadata !31, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %b.18, metadata !30, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %a.13, metadata !29, metadata !DIExpression()), !dbg !53
  %xor446 = xor i32 %c.22, %b.18, !dbg !392
  call void @llvm.dbg.value(metadata i32 %xor446, metadata !31, metadata !DIExpression()), !dbg !53
  %xor449828 = tail call i32 @llvm.fshl.i32(i32 %b.18, i32 %b.18, i32 14), !dbg !392
  %sub450 = sub i32 %xor446, %xor449828, !dbg !392
  call void @llvm.dbg.value(metadata i32 %sub450, metadata !31, metadata !DIExpression()), !dbg !53
  %xor451 = xor i32 %sub450, %a.13, !dbg !392
  call void @llvm.dbg.value(metadata i32 %xor451, metadata !29, metadata !DIExpression()), !dbg !53
  %xor454829 = tail call i32 @llvm.fshl.i32(i32 %sub450, i32 %sub450, i32 11), !dbg !392
  %sub455 = sub i32 %xor451, %xor454829, !dbg !392
  call void @llvm.dbg.value(metadata i32 %sub455, metadata !29, metadata !DIExpression()), !dbg !53
  %xor456 = xor i32 %sub455, %b.18, !dbg !392
  call void @llvm.dbg.value(metadata i32 %xor456, metadata !30, metadata !DIExpression()), !dbg !53
  %xor459830 = tail call i32 @llvm.fshl.i32(i32 %sub455, i32 %sub455, i32 25), !dbg !392
  %sub460 = sub i32 %xor456, %xor459830, !dbg !392
  call void @llvm.dbg.value(metadata i32 %sub460, metadata !30, metadata !DIExpression()), !dbg !53
  %xor461 = xor i32 %sub460, %sub450, !dbg !392
  call void @llvm.dbg.value(metadata i32 %xor461, metadata !31, metadata !DIExpression()), !dbg !53
  %xor464831 = tail call i32 @llvm.fshl.i32(i32 %sub460, i32 %sub460, i32 16), !dbg !392
  %sub465 = sub i32 %xor461, %xor464831, !dbg !392
  call void @llvm.dbg.value(metadata i32 %sub465, metadata !31, metadata !DIExpression()), !dbg !53
  %xor466 = xor i32 %sub465, %sub455, !dbg !392
  call void @llvm.dbg.value(metadata i32 %xor466, metadata !29, metadata !DIExpression()), !dbg !53
  %xor469832 = tail call i32 @llvm.fshl.i32(i32 %sub465, i32 %sub465, i32 4), !dbg !392
  %sub470 = sub i32 %xor466, %xor469832, !dbg !392
  call void @llvm.dbg.value(metadata i32 %sub470, metadata !29, metadata !DIExpression()), !dbg !53
  %xor471 = xor i32 %sub470, %sub460, !dbg !392
  call void @llvm.dbg.value(metadata i32 %xor471, metadata !30, metadata !DIExpression()), !dbg !53
  %xor474833 = tail call i32 @llvm.fshl.i32(i32 %sub470, i32 %sub470, i32 14), !dbg !392
  %sub475 = sub i32 %xor471, %xor474833, !dbg !392
  call void @llvm.dbg.value(metadata i32 %sub475, metadata !30, metadata !DIExpression()), !dbg !53
  %xor476 = xor i32 %sub475, %sub465, !dbg !392
  call void @llvm.dbg.value(metadata i32 %xor476, metadata !31, metadata !DIExpression()), !dbg !53
  %xor479834 = tail call i32 @llvm.fshl.i32(i32 %sub475, i32 %sub475, i32 24), !dbg !392
  %sub480 = sub i32 %xor476, %xor479834, !dbg !392
  call void @llvm.dbg.value(metadata i32 %sub480, metadata !31, metadata !DIExpression()), !dbg !53
  br label %cleanup481, !dbg !394

cleanup481:                                       ; preds = %while.end382, %while.end181, %while.end, %if.end445
  %retval.3 = phi i32 [ %sub480, %if.end445 ], [ %c.0.lcssa, %while.end ], [ %c.3.lcssa, %while.end181 ], [ %c.8.lcssa, %while.end382 ]
  ret i32 %retval.3, !dbg !395
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

attributes #0 = { nofree noinline nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "jenkins_hash.c", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "02a1bc4699ba1ca33271c47b2b9786f2")
!2 = !{!3, !8}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !4, line: 26, baseType: !5)
!4 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !6, line: 42, baseType: !7)
!6 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !4, line: 24, baseType: !11)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !6, line: 38, baseType: !12)
!12 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!13 = !{i32 7, !"Dwarf Version", i32 5}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{!"clang version 14.0.0"}
!18 = distinct !DISubprogram(name: "jenkins_hash", scope: !1, file: !1, line: 126, type: !19, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !26)
!19 = !DISubroutineType(types: !20)
!20 = !{!3, !21, !23}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !24, line: 46, baseType: !25)
!24 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!25 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!26 = !{!27, !28, !29, !30, !31, !32, !37, !42, !50, !51}
!27 = !DILocalVariable(name: "key", arg: 1, scope: !18, file: !1, line: 127, type: !21)
!28 = !DILocalVariable(name: "length", arg: 2, scope: !18, file: !1, line: 128, type: !23)
!29 = !DILocalVariable(name: "a", scope: !18, file: !1, line: 130, type: !3)
!30 = !DILocalVariable(name: "b", scope: !18, file: !1, line: 130, type: !3)
!31 = !DILocalVariable(name: "c", scope: !18, file: !1, line: 130, type: !3)
!32 = !DILocalVariable(name: "u", scope: !18, file: !1, line: 131, type: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !18, file: !1, line: 131, size: 64, elements: !34)
!34 = !{!35, !36}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !33, file: !1, line: 131, baseType: !21, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !33, file: !1, line: 131, baseType: !23, size: 64)
!37 = !DILocalVariable(name: "k", scope: !38, file: !1, line: 138, type: !40)
!38 = distinct !DILexicalBlock(scope: !39, file: !1, line: 137, column: 49)
!39 = distinct !DILexicalBlock(scope: !18, file: !1, line: 137, column: 7)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3)
!42 = !DILocalVariable(name: "k", scope: !43, file: !1, line: 206, type: !45)
!43 = distinct !DILexicalBlock(scope: !44, file: !1, line: 205, column: 56)
!44 = distinct !DILexicalBlock(scope: !39, file: !1, line: 205, column: 14)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !4, line: 25, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !6, line: 40, baseType: !49)
!49 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!50 = !DILocalVariable(name: "k8", scope: !43, file: !1, line: 207, type: !8)
!51 = !DILocalVariable(name: "k", scope: !52, file: !1, line: 253, type: !8)
!52 = distinct !DILexicalBlock(scope: !44, file: !1, line: 252, column: 10)
!53 = !DILocation(line: 0, scope: !18)
!54 = !DILocation(line: 134, column: 29, scope: !18)
!55 = !DILocation(line: 134, column: 26, scope: !18)
!56 = !DILocation(line: 137, column: 33, scope: !39)
!57 = !DILocation(line: 137, column: 35, scope: !39)
!58 = !DILocation(line: 137, column: 42, scope: !39)
!59 = !DILocation(line: 137, column: 7, scope: !18)
!60 = !DILocation(line: 138, column: 25, scope: !38)
!61 = !DILocation(line: 0, scope: !38)
!62 = !DILocation(line: 144, column: 19, scope: !38)
!63 = !DILocation(line: 144, column: 5, scope: !38)
!64 = !DILocation(line: 146, column: 12, scope: !65)
!65 = distinct !DILexicalBlock(scope: !38, file: !1, line: 145, column: 5)
!66 = !{!67, !67, i64 0}
!67 = !{!"int", !68, i64 0}
!68 = !{!"omnipotent char", !69, i64 0}
!69 = !{!"Simple C/C++ TBAA"}
!70 = !DILocation(line: 146, column: 9, scope: !65)
!71 = !DILocation(line: 147, column: 12, scope: !65)
!72 = !DILocation(line: 147, column: 9, scope: !65)
!73 = !DILocation(line: 148, column: 12, scope: !65)
!74 = !DILocation(line: 148, column: 9, scope: !65)
!75 = !DILocation(line: 149, column: 7, scope: !76)
!76 = distinct !DILexicalBlock(scope: !65, file: !1, line: 149, column: 7)
!77 = !DILocation(line: 150, column: 14, scope: !65)
!78 = !DILocation(line: 151, column: 9, scope: !65)
!79 = distinct !{!79, !63, !80, !81}
!80 = !DILocation(line: 152, column: 5, scope: !38)
!81 = !{!"llvm.loop.mustprogress"}
!82 = !DILocation(line: 166, column: 5, scope: !38)
!83 = !DILocation(line: 168, column: 17, scope: !84)
!84 = distinct !DILexicalBlock(scope: !38, file: !1, line: 167, column: 5)
!85 = !DILocation(line: 168, column: 15, scope: !84)
!86 = !DILocation(line: 168, column: 26, scope: !84)
!87 = !DILocation(line: 168, column: 24, scope: !84)
!88 = !DILocation(line: 168, column: 35, scope: !84)
!89 = !DILocation(line: 168, column: 33, scope: !84)
!90 = !DILocation(line: 168, column: 41, scope: !84)
!91 = !DILocation(line: 169, column: 17, scope: !84)
!92 = !DILocation(line: 169, column: 21, scope: !84)
!93 = !DILocation(line: 169, column: 15, scope: !84)
!94 = !DILocation(line: 169, column: 35, scope: !84)
!95 = !DILocation(line: 169, column: 33, scope: !84)
!96 = !DILocation(line: 169, column: 44, scope: !84)
!97 = !DILocation(line: 169, column: 42, scope: !84)
!98 = !DILocation(line: 169, column: 50, scope: !84)
!99 = !DILocation(line: 170, column: 17, scope: !84)
!100 = !DILocation(line: 170, column: 21, scope: !84)
!101 = !DILocation(line: 170, column: 15, scope: !84)
!102 = !DILocation(line: 170, column: 33, scope: !84)
!103 = !DILocation(line: 170, column: 31, scope: !84)
!104 = !DILocation(line: 170, column: 42, scope: !84)
!105 = !DILocation(line: 170, column: 40, scope: !84)
!106 = !DILocation(line: 170, column: 48, scope: !84)
!107 = !DILocation(line: 171, column: 17, scope: !84)
!108 = !DILocation(line: 171, column: 21, scope: !84)
!109 = !DILocation(line: 171, column: 15, scope: !84)
!110 = !DILocation(line: 171, column: 31, scope: !84)
!111 = !DILocation(line: 171, column: 29, scope: !84)
!112 = !DILocation(line: 171, column: 40, scope: !84)
!113 = !DILocation(line: 171, column: 38, scope: !84)
!114 = !DILocation(line: 171, column: 46, scope: !84)
!115 = !DILocation(line: 172, column: 17, scope: !84)
!116 = !DILocation(line: 172, column: 15, scope: !84)
!117 = !DILocation(line: 172, column: 26, scope: !84)
!118 = !DILocation(line: 172, column: 24, scope: !84)
!119 = !DILocation(line: 172, column: 32, scope: !84)
!120 = !DILocation(line: 173, column: 17, scope: !84)
!121 = !DILocation(line: 173, column: 21, scope: !84)
!122 = !DILocation(line: 173, column: 15, scope: !84)
!123 = !DILocation(line: 173, column: 35, scope: !84)
!124 = !DILocation(line: 173, column: 33, scope: !84)
!125 = !DILocation(line: 173, column: 41, scope: !84)
!126 = !DILocation(line: 174, column: 17, scope: !84)
!127 = !DILocation(line: 174, column: 21, scope: !84)
!128 = !DILocation(line: 174, column: 15, scope: !84)
!129 = !DILocation(line: 174, column: 33, scope: !84)
!130 = !DILocation(line: 174, column: 31, scope: !84)
!131 = !DILocation(line: 174, column: 39, scope: !84)
!132 = !DILocation(line: 175, column: 17, scope: !84)
!133 = !DILocation(line: 175, column: 21, scope: !84)
!134 = !DILocation(line: 175, column: 15, scope: !84)
!135 = !DILocation(line: 175, column: 31, scope: !84)
!136 = !DILocation(line: 175, column: 29, scope: !84)
!137 = !DILocation(line: 175, column: 37, scope: !84)
!138 = !DILocation(line: 176, column: 17, scope: !84)
!139 = !DILocation(line: 176, column: 15, scope: !84)
!140 = !DILocation(line: 176, column: 23, scope: !84)
!141 = !DILocation(line: 177, column: 17, scope: !84)
!142 = !DILocation(line: 177, column: 21, scope: !84)
!143 = !DILocation(line: 177, column: 15, scope: !84)
!144 = !DILocation(line: 177, column: 32, scope: !84)
!145 = !DILocation(line: 178, column: 17, scope: !84)
!146 = !DILocation(line: 178, column: 21, scope: !84)
!147 = !DILocation(line: 178, column: 15, scope: !84)
!148 = !DILocation(line: 178, column: 30, scope: !84)
!149 = !DILocation(line: 179, column: 17, scope: !84)
!150 = !DILocation(line: 179, column: 21, scope: !84)
!151 = !DILocation(line: 179, column: 15, scope: !84)
!152 = !DILocation(line: 179, column: 28, scope: !84)
!153 = !DILocation(line: 205, column: 42, scope: !44)
!154 = !DILocation(line: 205, column: 49, scope: !44)
!155 = !DILocation(line: 205, column: 14, scope: !39)
!156 = !DILocation(line: 0, scope: !52)
!157 = !DILocation(line: 256, column: 19, scope: !52)
!158 = !DILocation(line: 256, column: 5, scope: !52)
!159 = !DILocation(line: 206, column: 25, scope: !43)
!160 = !DILocation(line: 0, scope: !43)
!161 = !DILocation(line: 210, column: 19, scope: !43)
!162 = !DILocation(line: 210, column: 5, scope: !43)
!163 = !DILocation(line: 212, column: 12, scope: !164)
!164 = distinct !DILexicalBlock(scope: !43, file: !1, line: 211, column: 5)
!165 = !{!166, !166, i64 0}
!166 = !{!"short", !68, i64 0}
!167 = !DILocation(line: 212, column: 31, scope: !164)
!168 = !DILocation(line: 212, column: 21, scope: !164)
!169 = !DILocation(line: 212, column: 36, scope: !164)
!170 = !DILocation(line: 212, column: 17, scope: !164)
!171 = !DILocation(line: 212, column: 9, scope: !164)
!172 = !DILocation(line: 213, column: 12, scope: !164)
!173 = !DILocation(line: 213, column: 31, scope: !164)
!174 = !DILocation(line: 213, column: 21, scope: !164)
!175 = !DILocation(line: 213, column: 36, scope: !164)
!176 = !DILocation(line: 213, column: 17, scope: !164)
!177 = !DILocation(line: 213, column: 9, scope: !164)
!178 = !DILocation(line: 214, column: 12, scope: !164)
!179 = !DILocation(line: 214, column: 31, scope: !164)
!180 = !DILocation(line: 214, column: 21, scope: !164)
!181 = !DILocation(line: 214, column: 36, scope: !164)
!182 = !DILocation(line: 214, column: 17, scope: !164)
!183 = !DILocation(line: 214, column: 9, scope: !164)
!184 = !DILocation(line: 215, column: 7, scope: !185)
!185 = distinct !DILexicalBlock(scope: !164, file: !1, line: 215, column: 7)
!186 = !DILocation(line: 216, column: 14, scope: !164)
!187 = !DILocation(line: 217, column: 9, scope: !164)
!188 = distinct !{!188, !162, !189, !81}
!189 = !DILocation(line: 218, column: 5, scope: !43)
!190 = !DILocation(line: 222, column: 5, scope: !43)
!191 = !DILocation(line: 224, column: 17, scope: !192)
!192 = distinct !DILexicalBlock(scope: !43, file: !1, line: 223, column: 5)
!193 = !DILocation(line: 224, column: 34, scope: !192)
!194 = !DILocation(line: 224, column: 24, scope: !192)
!195 = !DILocation(line: 224, column: 39, scope: !192)
!196 = !DILocation(line: 224, column: 21, scope: !192)
!197 = !DILocation(line: 224, column: 15, scope: !192)
!198 = !DILocation(line: 225, column: 17, scope: !192)
!199 = !DILocation(line: 225, column: 34, scope: !192)
!200 = !DILocation(line: 225, column: 24, scope: !192)
!201 = !DILocation(line: 225, column: 39, scope: !192)
!202 = !DILocation(line: 225, column: 21, scope: !192)
!203 = !DILocation(line: 225, column: 15, scope: !192)
!204 = !DILocation(line: 226, column: 17, scope: !192)
!205 = !DILocation(line: 226, column: 34, scope: !192)
!206 = !DILocation(line: 226, column: 24, scope: !192)
!207 = !DILocation(line: 226, column: 39, scope: !192)
!208 = !DILocation(line: 226, column: 21, scope: !192)
!209 = !DILocation(line: 226, column: 15, scope: !192)
!210 = !DILocation(line: 227, column: 14, scope: !192)
!211 = !DILocation(line: 228, column: 28, scope: !192)
!212 = !{!68, !68, i64 0}
!213 = !DILocation(line: 228, column: 18, scope: !192)
!214 = !DILocation(line: 228, column: 35, scope: !192)
!215 = !DILocation(line: 228, column: 15, scope: !192)
!216 = !DILocation(line: 228, column: 14, scope: !192)
!217 = !DILocation(line: 229, column: 17, scope: !192)
!218 = !DILocation(line: 229, column: 15, scope: !192)
!219 = !DILocation(line: 230, column: 17, scope: !192)
!220 = !DILocation(line: 230, column: 34, scope: !192)
!221 = !DILocation(line: 230, column: 24, scope: !192)
!222 = !DILocation(line: 230, column: 39, scope: !192)
!223 = !DILocation(line: 230, column: 21, scope: !192)
!224 = !DILocation(line: 230, column: 15, scope: !192)
!225 = !DILocation(line: 231, column: 17, scope: !192)
!226 = !DILocation(line: 231, column: 34, scope: !192)
!227 = !DILocation(line: 231, column: 24, scope: !192)
!228 = !DILocation(line: 231, column: 39, scope: !192)
!229 = !DILocation(line: 231, column: 21, scope: !192)
!230 = !DILocation(line: 231, column: 15, scope: !192)
!231 = !DILocation(line: 232, column: 14, scope: !192)
!232 = !DILocation(line: 233, column: 17, scope: !192)
!233 = !DILocation(line: 233, column: 15, scope: !192)
!234 = !DILocation(line: 233, column: 14, scope: !192)
!235 = !DILocation(line: 234, column: 17, scope: !192)
!236 = !DILocation(line: 234, column: 34, scope: !192)
!237 = !DILocation(line: 234, column: 24, scope: !192)
!238 = !DILocation(line: 234, column: 39, scope: !192)
!239 = !DILocation(line: 234, column: 21, scope: !192)
!240 = !DILocation(line: 234, column: 15, scope: !192)
!241 = !DILocation(line: 235, column: 17, scope: !192)
!242 = !DILocation(line: 235, column: 34, scope: !192)
!243 = !DILocation(line: 235, column: 24, scope: !192)
!244 = !DILocation(line: 235, column: 39, scope: !192)
!245 = !DILocation(line: 235, column: 21, scope: !192)
!246 = !DILocation(line: 235, column: 15, scope: !192)
!247 = !DILocation(line: 236, column: 14, scope: !192)
!248 = !DILocation(line: 237, column: 28, scope: !192)
!249 = !DILocation(line: 237, column: 18, scope: !192)
!250 = !DILocation(line: 237, column: 34, scope: !192)
!251 = !DILocation(line: 237, column: 15, scope: !192)
!252 = !DILocation(line: 237, column: 14, scope: !192)
!253 = !DILocation(line: 238, column: 17, scope: !192)
!254 = !DILocation(line: 238, column: 15, scope: !192)
!255 = !DILocation(line: 239, column: 17, scope: !192)
!256 = !DILocation(line: 239, column: 34, scope: !192)
!257 = !DILocation(line: 239, column: 24, scope: !192)
!258 = !DILocation(line: 239, column: 39, scope: !192)
!259 = !DILocation(line: 239, column: 21, scope: !192)
!260 = !DILocation(line: 239, column: 15, scope: !192)
!261 = !DILocation(line: 240, column: 14, scope: !192)
!262 = !DILocation(line: 241, column: 17, scope: !192)
!263 = !DILocation(line: 241, column: 15, scope: !192)
!264 = !DILocation(line: 241, column: 14, scope: !192)
!265 = !DILocation(line: 242, column: 17, scope: !192)
!266 = !DILocation(line: 242, column: 34, scope: !192)
!267 = !DILocation(line: 242, column: 24, scope: !192)
!268 = !DILocation(line: 242, column: 39, scope: !192)
!269 = !DILocation(line: 242, column: 21, scope: !192)
!270 = !DILocation(line: 242, column: 15, scope: !192)
!271 = !DILocation(line: 243, column: 14, scope: !192)
!272 = !DILocation(line: 244, column: 28, scope: !192)
!273 = !DILocation(line: 244, column: 18, scope: !192)
!274 = !DILocation(line: 244, column: 34, scope: !192)
!275 = !DILocation(line: 244, column: 15, scope: !192)
!276 = !DILocation(line: 244, column: 14, scope: !192)
!277 = !DILocation(line: 245, column: 17, scope: !192)
!278 = !DILocation(line: 245, column: 15, scope: !192)
!279 = !DILocation(line: 246, column: 14, scope: !192)
!280 = !DILocation(line: 221, column: 10, scope: !43)
!281 = !DILocation(line: 247, column: 17, scope: !192)
!282 = !DILocation(line: 247, column: 15, scope: !192)
!283 = !DILocation(line: 248, column: 14, scope: !192)
!284 = !DILocation(line: 258, column: 12, scope: !285)
!285 = distinct !DILexicalBlock(scope: !52, file: !1, line: 257, column: 5)
!286 = !DILocation(line: 258, column: 9, scope: !285)
!287 = !DILocation(line: 259, column: 23, scope: !285)
!288 = !DILocation(line: 259, column: 13, scope: !285)
!289 = !DILocation(line: 259, column: 28, scope: !285)
!290 = !DILocation(line: 259, column: 9, scope: !285)
!291 = !DILocation(line: 260, column: 23, scope: !285)
!292 = !DILocation(line: 260, column: 13, scope: !285)
!293 = !DILocation(line: 260, column: 28, scope: !285)
!294 = !DILocation(line: 260, column: 9, scope: !285)
!295 = !DILocation(line: 261, column: 23, scope: !285)
!296 = !DILocation(line: 261, column: 13, scope: !285)
!297 = !DILocation(line: 261, column: 28, scope: !285)
!298 = !DILocation(line: 261, column: 9, scope: !285)
!299 = !DILocation(line: 262, column: 12, scope: !285)
!300 = !DILocation(line: 262, column: 9, scope: !285)
!301 = !DILocation(line: 263, column: 23, scope: !285)
!302 = !DILocation(line: 263, column: 13, scope: !285)
!303 = !DILocation(line: 263, column: 28, scope: !285)
!304 = !DILocation(line: 263, column: 9, scope: !285)
!305 = !DILocation(line: 264, column: 23, scope: !285)
!306 = !DILocation(line: 264, column: 13, scope: !285)
!307 = !DILocation(line: 264, column: 28, scope: !285)
!308 = !DILocation(line: 264, column: 9, scope: !285)
!309 = !DILocation(line: 265, column: 23, scope: !285)
!310 = !DILocation(line: 265, column: 13, scope: !285)
!311 = !DILocation(line: 265, column: 28, scope: !285)
!312 = !DILocation(line: 265, column: 9, scope: !285)
!313 = !DILocation(line: 266, column: 12, scope: !285)
!314 = !DILocation(line: 266, column: 9, scope: !285)
!315 = !DILocation(line: 267, column: 23, scope: !285)
!316 = !DILocation(line: 267, column: 13, scope: !285)
!317 = !DILocation(line: 267, column: 28, scope: !285)
!318 = !DILocation(line: 267, column: 9, scope: !285)
!319 = !DILocation(line: 268, column: 23, scope: !285)
!320 = !DILocation(line: 268, column: 13, scope: !285)
!321 = !DILocation(line: 268, column: 29, scope: !285)
!322 = !DILocation(line: 268, column: 9, scope: !285)
!323 = !DILocation(line: 269, column: 23, scope: !285)
!324 = !DILocation(line: 269, column: 13, scope: !285)
!325 = !DILocation(line: 269, column: 29, scope: !285)
!326 = !DILocation(line: 269, column: 9, scope: !285)
!327 = !DILocation(line: 270, column: 7, scope: !328)
!328 = distinct !DILexicalBlock(scope: !285, file: !1, line: 270, column: 7)
!329 = !DILocation(line: 271, column: 14, scope: !285)
!330 = !DILocation(line: 272, column: 9, scope: !285)
!331 = distinct !{!331, !158, !332, !81}
!332 = !DILocation(line: 273, column: 5, scope: !52)
!333 = !DILocation(line: 276, column: 5, scope: !52)
!334 = !DILocation(line: 278, column: 28, scope: !335)
!335 = distinct !DILexicalBlock(scope: !52, file: !1, line: 277, column: 5)
!336 = !DILocation(line: 278, column: 18, scope: !335)
!337 = !DILocation(line: 278, column: 34, scope: !335)
!338 = !DILocation(line: 278, column: 15, scope: !335)
!339 = !DILocation(line: 278, column: 14, scope: !335)
!340 = !DILocation(line: 279, column: 28, scope: !335)
!341 = !DILocation(line: 279, column: 18, scope: !335)
!342 = !DILocation(line: 279, column: 34, scope: !335)
!343 = !DILocation(line: 279, column: 15, scope: !335)
!344 = !DILocation(line: 279, column: 14, scope: !335)
!345 = !DILocation(line: 280, column: 28, scope: !335)
!346 = !DILocation(line: 280, column: 18, scope: !335)
!347 = !DILocation(line: 280, column: 33, scope: !335)
!348 = !DILocation(line: 280, column: 15, scope: !335)
!349 = !DILocation(line: 280, column: 14, scope: !335)
!350 = !DILocation(line: 281, column: 17, scope: !335)
!351 = !DILocation(line: 281, column: 15, scope: !335)
!352 = !DILocation(line: 281, column: 14, scope: !335)
!353 = !DILocation(line: 282, column: 28, scope: !335)
!354 = !DILocation(line: 282, column: 18, scope: !335)
!355 = !DILocation(line: 282, column: 33, scope: !335)
!356 = !DILocation(line: 282, column: 15, scope: !335)
!357 = !DILocation(line: 282, column: 14, scope: !335)
!358 = !DILocation(line: 134, column: 13, scope: !18)
!359 = !DILocation(line: 283, column: 28, scope: !335)
!360 = !DILocation(line: 283, column: 18, scope: !335)
!361 = !DILocation(line: 283, column: 33, scope: !335)
!362 = !DILocation(line: 283, column: 15, scope: !335)
!363 = !DILocation(line: 283, column: 14, scope: !335)
!364 = !DILocation(line: 284, column: 28, scope: !335)
!365 = !DILocation(line: 284, column: 18, scope: !335)
!366 = !DILocation(line: 284, column: 33, scope: !335)
!367 = !DILocation(line: 284, column: 15, scope: !335)
!368 = !DILocation(line: 284, column: 14, scope: !335)
!369 = !DILocation(line: 285, column: 17, scope: !335)
!370 = !DILocation(line: 285, column: 15, scope: !335)
!371 = !DILocation(line: 285, column: 14, scope: !335)
!372 = !DILocation(line: 286, column: 28, scope: !335)
!373 = !DILocation(line: 286, column: 18, scope: !335)
!374 = !DILocation(line: 286, column: 33, scope: !335)
!375 = !DILocation(line: 286, column: 15, scope: !335)
!376 = !DILocation(line: 286, column: 14, scope: !335)
!377 = !DILocation(line: 134, column: 9, scope: !18)
!378 = !DILocation(line: 287, column: 28, scope: !335)
!379 = !DILocation(line: 287, column: 18, scope: !335)
!380 = !DILocation(line: 287, column: 33, scope: !335)
!381 = !DILocation(line: 287, column: 15, scope: !335)
!382 = !DILocation(line: 287, column: 14, scope: !335)
!383 = !DILocation(line: 288, column: 28, scope: !335)
!384 = !DILocation(line: 288, column: 18, scope: !335)
!385 = !DILocation(line: 288, column: 33, scope: !335)
!386 = !DILocation(line: 288, column: 15, scope: !335)
!387 = !DILocation(line: 288, column: 14, scope: !335)
!388 = !DILocation(line: 289, column: 17, scope: !335)
!389 = !DILocation(line: 289, column: 15, scope: !335)
!390 = !DILocation(line: 290, column: 14, scope: !335)
!391 = !DILocation(line: 134, column: 5, scope: !18)
!392 = !DILocation(line: 295, column: 3, scope: !393)
!393 = distinct !DILexicalBlock(scope: !18, file: !1, line: 295, column: 3)
!394 = !DILocation(line: 296, column: 3, scope: !18)
!395 = !DILocation(line: 297, column: 1, scope: !18)
