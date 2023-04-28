; ModuleID = 'pqsort.c'
source_filename = "pqsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @pqsort(i8* noundef %a, i64 noundef %n, i64 noundef %es, i32 (i8*, i8*)* nocapture noundef readonly %cmp, i64 noundef %lrange, i64 noundef %rrange) local_unnamed_addr #0 !dbg !18 {
entry:
  call void @llvm.dbg.value(metadata i8* %a, metadata !28, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.value(metadata i64 %n, metadata !29, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.value(metadata i64 %es, metadata !30, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %cmp, metadata !31, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.value(metadata i64 %lrange, metadata !32, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.value(metadata i64 %rrange, metadata !33, metadata !DIExpression()), !dbg !34
  %mul = mul i64 %lrange, %es, !dbg !35
  %add.ptr = getelementptr inbounds i8, i8* %a, i64 %mul, !dbg !36
  %add = add i64 %rrange, 1, !dbg !37
  %mul1 = mul i64 %add, %es, !dbg !38
  %add.ptr2 = getelementptr inbounds i8, i8* %a, i64 %mul1, !dbg !39
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr2, i64 -1, !dbg !40
  tail call fastcc void @_pqsort(i8* noundef %a, i64 noundef %n, i64 noundef %es, i32 (i8*, i8*)* noundef %cmp, i8* noundef %add.ptr, i8* noundef nonnull %add.ptr3) #4, !dbg !41
  ret void, !dbg !42
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @_pqsort(i8* noundef %a, i64 noundef %n, i64 noundef %es, i32 (i8*, i8*)* nocapture noundef readonly %cmp, i8* noundef %lrange, i8* noundef %rrange) unnamed_addr #0 !dbg !43 {
entry:
  %idx.neg = sub i64 0, %es, !dbg !113
  call void @llvm.dbg.value(metadata i8* %a, metadata !47, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i64 %n, metadata !48, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i64 %es, metadata !49, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %cmp, metadata !50, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i8* %lrange, metadata !51, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i8* %rrange, metadata !52, metadata !DIExpression()), !dbg !114
  %cmp3 = icmp ne i64 %es, 8
  %cond = zext i1 %cmp3 to i32
  br label %loop, !dbg !115

loop:                                             ; preds = %lor.lhs.false226, %entry
  %n.addr.0 = phi i64 [ %n, %entry ], [ %div220, %lor.lhs.false226 ]
  %a.addr.0 = phi i8* [ %a, %entry ], [ %add.ptr219, %lor.lhs.false226 ]
  call void @llvm.dbg.value(metadata i8* %a.addr.0, metadata !47, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i64 %n.addr.0, metadata !48, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.label(metadata !112), !dbg !116
  %sub.ptr.lhs.cast = ptrtoint i8* %a.addr.0 to i64, !dbg !117
  %0 = or i64 %sub.ptr.lhs.cast, %es, !dbg !117
  %1 = and i64 %0, 7, !dbg !117
  %2 = icmp eq i64 %1, 0, !dbg !117
  %cond4 = select i1 %2, i32 %cond, i32 2, !dbg !117
  call void @llvm.dbg.value(metadata i32 %cond4, metadata !62, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i32 0, metadata !63, metadata !DIExpression()), !dbg !114
  %cmp5 = icmp ult i64 %n.addr.0, 7, !dbg !118
  br i1 %cmp5, label %for.cond.preheader, label %if.end26, !dbg !119

for.cond.preheader:                               ; preds = %loop
  %mul = mul i64 %n.addr.0, %es
  %add.ptr6 = getelementptr inbounds i8, i8* %a.addr.0, i64 %mul
  call void @llvm.dbg.value(metadata !DIArgList(i8* %a.addr.0, i64 %es), metadata !58, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !114
  %cmp7540 = icmp sgt i64 %mul, %es, !dbg !120
  br i1 %cmp7540, label %for.cond8.preheader.lr.ph, label %cleanup234, !dbg !121

for.cond8.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %pm.0539 = getelementptr inbounds i8, i8* %a.addr.0, i64 %es, !dbg !122
  call void @llvm.dbg.value(metadata i8* %pm.0539, metadata !58, metadata !DIExpression()), !dbg !114
  %cmp13 = icmp eq i32 %cond4, 0
  br label %for.cond8.preheader, !dbg !121

for.cond8.preheader:                              ; preds = %for.cond8.preheader.lr.ph, %for.inc23
  %pm.0541 = phi i8* [ %pm.0539, %for.cond8.preheader.lr.ph ], [ %pm.0, %for.inc23 ]
  call void @llvm.dbg.value(metadata i8* %pm.0541, metadata !57, metadata !DIExpression()), !dbg !114
  %cmp9537 = icmp ugt i8* %pm.0541, %a.addr.0, !dbg !123
  br i1 %cmp9537, label %land.rhs, label %for.inc23, !dbg !124

land.rhs:                                         ; preds = %for.cond8.preheader, %for.inc
  %pl.0538 = phi i8* [ %add.ptr10, %for.inc ], [ %pm.0541, %for.cond8.preheader ]
  call void @llvm.dbg.value(metadata i8* %pl.0538, metadata !57, metadata !DIExpression()), !dbg !114
  %add.ptr10 = getelementptr inbounds i8, i8* %pl.0538, i64 %idx.neg, !dbg !113
  %call = tail call i32 %cmp(i8* noundef nonnull %add.ptr10, i8* noundef nonnull %pl.0538) #5, !dbg !125
  %cmp11 = icmp sgt i32 %call, 0, !dbg !126
  br i1 %cmp11, label %for.body12, label %for.inc23, !dbg !127

for.body12:                                       ; preds = %land.rhs
  br i1 %cmp13, label %if.then14, label %if.else, !dbg !128

if.then14:                                        ; preds = %for.body12
  %3 = bitcast i8* %pl.0538 to i64*, !dbg !129
  %4 = load i64, i64* %3, align 8, !dbg !129, !tbaa !130
  call void @llvm.dbg.value(metadata i64 %4, metadata !65, metadata !DIExpression()), !dbg !134
  %5 = bitcast i8* %add.ptr10 to i64*, !dbg !129
  %6 = load i64, i64* %5, align 8, !dbg !129, !tbaa !130
  store i64 %6, i64* %3, align 8, !dbg !129, !tbaa !130
  store i64 %4, i64* %5, align 8, !dbg !129, !tbaa !130
  br label %for.inc, !dbg !129

if.else:                                          ; preds = %for.body12
  tail call fastcc void @swapfunc(i8* noundef nonnull %pl.0538, i8* noundef nonnull %add.ptr10, i64 noundef %es, i32 noundef %cond4) #4, !dbg !135
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %if.else
  call void @llvm.dbg.value(metadata i8* %add.ptr10, metadata !57, metadata !DIExpression()), !dbg !114
  %cmp9 = icmp ugt i8* %add.ptr10, %a.addr.0, !dbg !123
  br i1 %cmp9, label %land.rhs, label %for.inc23, !dbg !124, !llvm.loop !136

for.inc23:                                        ; preds = %for.inc, %land.rhs, %for.cond8.preheader
  call void @llvm.dbg.value(metadata !DIArgList(i8* %pm.0541, i64 %es), metadata !58, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !114
  %pm.0 = getelementptr inbounds i8, i8* %pm.0541, i64 %es, !dbg !122
  call void @llvm.dbg.value(metadata i8* %pm.0, metadata !58, metadata !DIExpression()), !dbg !114
  %cmp7 = icmp ult i8* %pm.0, %add.ptr6, !dbg !120
  br i1 %cmp7, label %for.cond8.preheader, label %cleanup234, !dbg !121, !llvm.loop !138

if.end26:                                         ; preds = %loop
  %div = lshr i64 %n.addr.0, 1, !dbg !140
  %mul27 = mul i64 %div, %es, !dbg !141
  %add.ptr28 = getelementptr inbounds i8, i8* %a.addr.0, i64 %mul27, !dbg !142
  call void @llvm.dbg.value(metadata i8* %add.ptr28, metadata !58, metadata !DIExpression()), !dbg !114
  %cmp29.not = icmp eq i64 %n.addr.0, 7, !dbg !143
  br i1 %cmp29.not, label %if.end53, label %if.then30, !dbg !145

if.then30:                                        ; preds = %if.end26
  call void @llvm.dbg.value(metadata i8* %a.addr.0, metadata !57, metadata !DIExpression()), !dbg !114
  %sub = add i64 %n.addr.0, -1, !dbg !146
  %mul31 = mul i64 %sub, %es, !dbg !148
  %add.ptr32 = getelementptr inbounds i8, i8* %a.addr.0, i64 %mul31, !dbg !149
  call void @llvm.dbg.value(metadata i8* %add.ptr32, metadata !59, metadata !DIExpression()), !dbg !114
  %cmp33 = icmp ugt i64 %n.addr.0, 40, !dbg !150
  br i1 %cmp33, label %if.then34, label %if.end51, !dbg !152

if.then34:                                        ; preds = %if.then30
  %div35 = lshr i64 %n.addr.0, 3, !dbg !153
  %mul36 = mul i64 %div35, %es, !dbg !155
  call void @llvm.dbg.value(metadata i64 %mul36, metadata !60, metadata !DIExpression()), !dbg !114
  %add.ptr37 = getelementptr inbounds i8, i8* %a.addr.0, i64 %mul36, !dbg !156
  %mul38 = shl i64 %mul36, 1, !dbg !157
  %add.ptr39 = getelementptr inbounds i8, i8* %a.addr.0, i64 %mul38, !dbg !158
  %call40 = tail call fastcc i8* @med3(i8* noundef %a.addr.0, i8* noundef %add.ptr37, i8* noundef %add.ptr39, i32 (i8*, i8*)* noundef %cmp) #4, !dbg !159
  call void @llvm.dbg.value(metadata i8* %call40, metadata !57, metadata !DIExpression()), !dbg !114
  %idx.neg41 = sub i64 0, %mul36, !dbg !160
  %add.ptr42 = getelementptr inbounds i8, i8* %add.ptr28, i64 %idx.neg41, !dbg !160
  %add.ptr43 = getelementptr inbounds i8, i8* %add.ptr28, i64 %mul36, !dbg !161
  %call44 = tail call fastcc i8* @med3(i8* noundef %add.ptr42, i8* noundef %add.ptr28, i8* noundef %add.ptr43, i32 (i8*, i8*)* noundef %cmp) #4, !dbg !162
  call void @llvm.dbg.value(metadata i8* %call44, metadata !58, metadata !DIExpression()), !dbg !114
  %idx.neg46 = sub i64 0, %mul38, !dbg !163
  %add.ptr47 = getelementptr inbounds i8, i8* %add.ptr32, i64 %idx.neg46, !dbg !163
  %add.ptr49 = getelementptr inbounds i8, i8* %add.ptr32, i64 %idx.neg41, !dbg !164
  %call50 = tail call fastcc i8* @med3(i8* noundef %add.ptr47, i8* noundef %add.ptr49, i8* noundef %add.ptr32, i32 (i8*, i8*)* noundef %cmp) #4, !dbg !165
  call void @llvm.dbg.value(metadata i8* %call50, metadata !59, metadata !DIExpression()), !dbg !114
  br label %if.end51, !dbg !166

if.end51:                                         ; preds = %if.then34, %if.then30
  %pn.0 = phi i8* [ %call50, %if.then34 ], [ %add.ptr32, %if.then30 ], !dbg !167
  %pm.1 = phi i8* [ %call44, %if.then34 ], [ %add.ptr28, %if.then30 ], !dbg !114
  %pl.1 = phi i8* [ %call40, %if.then34 ], [ %a.addr.0, %if.then30 ], !dbg !167
  call void @llvm.dbg.value(metadata i8* %pl.1, metadata !57, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i8* %pm.1, metadata !58, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i8* %pn.0, metadata !59, metadata !DIExpression()), !dbg !114
  %call52 = tail call fastcc i8* @med3(i8* noundef %pl.1, i8* noundef %pm.1, i8* noundef %pn.0, i32 (i8*, i8*)* noundef %cmp) #4, !dbg !168
  call void @llvm.dbg.value(metadata i8* %call52, metadata !58, metadata !DIExpression()), !dbg !114
  br label %if.end53, !dbg !169

if.end53:                                         ; preds = %if.end51, %if.end26
  %pm.2 = phi i8* [ %call52, %if.end51 ], [ %add.ptr28, %if.end26 ], !dbg !114
  call void @llvm.dbg.value(metadata i8* %pm.2, metadata !58, metadata !DIExpression()), !dbg !114
  %cmp54 = icmp eq i32 %cond4, 0, !dbg !170
  br i1 %cmp54, label %if.then55, label %if.else57, !dbg !171

if.then55:                                        ; preds = %if.end53
  %7 = bitcast i8* %a.addr.0 to i64*, !dbg !172
  %8 = load i64, i64* %7, align 8, !dbg !172, !tbaa !130
  call void @llvm.dbg.value(metadata i64 %8, metadata !74, metadata !DIExpression()), !dbg !173
  %9 = bitcast i8* %pm.2 to i64*, !dbg !172
  %10 = load i64, i64* %9, align 8, !dbg !172, !tbaa !130
  store i64 %10, i64* %7, align 8, !dbg !172, !tbaa !130
  store i64 %8, i64* %9, align 8, !dbg !172, !tbaa !130
  br label %if.end58, !dbg !172

if.else57:                                        ; preds = %if.end53
  tail call fastcc void @swapfunc(i8* noundef %a.addr.0, i8* noundef %pm.2, i64 noundef %es, i32 noundef %cond4) #4, !dbg !170
  br label %if.end58

if.end58:                                         ; preds = %if.else57, %if.then55
  %add.ptr59 = getelementptr inbounds i8, i8* %a.addr.0, i64 %es, !dbg !174
  call void @llvm.dbg.value(metadata i8* %add.ptr59, metadata !54, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i8* %add.ptr59, metadata !53, metadata !DIExpression()), !dbg !114
  %sub60 = add i64 %n.addr.0, -1, !dbg !175
  %mul61 = mul i64 %sub60, %es, !dbg !176
  %add.ptr62 = getelementptr inbounds i8, i8* %a.addr.0, i64 %mul61, !dbg !177
  call void @llvm.dbg.value(metadata i8* %add.ptr62, metadata !56, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i8* %add.ptr62, metadata !55, metadata !DIExpression()), !dbg !114
  br label %for.cond63, !dbg !178

for.cond63:                                       ; preds = %if.end106, %if.end58
  %swap_cnt.0 = phi i32 [ 0, %if.end58 ], [ 1, %if.end106 ], !dbg !114
  %pd.0 = phi i8* [ %add.ptr62, %if.end58 ], [ %pd.1517, %if.end106 ], !dbg !179
  %pc.0 = phi i8* [ %add.ptr62, %if.end58 ], [ %add.ptr109, %if.end106 ], !dbg !114
  %pb.0 = phi i8* [ %add.ptr59, %if.end58 ], [ %add.ptr107, %if.end106 ], !dbg !114
  %pa.0 = phi i8* [ %add.ptr59, %if.end58 ], [ %pa.1.lcssa, %if.end106 ], !dbg !180
  call void @llvm.dbg.value(metadata i8* %pa.0, metadata !53, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i8* %pb.0, metadata !54, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i8* %pc.0, metadata !55, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i8* %pd.0, metadata !56, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i32 %swap_cnt.0, metadata !63, metadata !DIExpression()), !dbg !114
  %cmp64.not503 = icmp ugt i8* %pb.0, %pc.0, !dbg !181
  br i1 %cmp64.not503, label %while.end, label %land.rhs65, !dbg !182

land.rhs65:                                       ; preds = %for.cond63, %if.end77
  %pa.1508 = phi i8* [ %pa.2, %if.end77 ], [ %pa.0, %for.cond63 ]
  %pb.1505 = phi i8* [ %add.ptr78, %if.end77 ], [ %pb.0, %for.cond63 ]
  %swap_cnt.1504 = phi i32 [ %swap_cnt.2, %if.end77 ], [ %swap_cnt.0, %for.cond63 ]
  call void @llvm.dbg.value(metadata i8* %pa.1508, metadata !53, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i8* %pb.1505, metadata !54, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i32 %swap_cnt.1504, metadata !63, metadata !DIExpression()), !dbg !114
  %call66 = tail call i32 %cmp(i8* noundef %pb.1505, i8* noundef %a.addr.0) #5, !dbg !183
  call void @llvm.dbg.value(metadata i32 %call66, metadata !64, metadata !DIExpression()), !dbg !114
  %cmp67 = icmp slt i32 %call66, 1, !dbg !184
  br i1 %cmp67, label %while.body, label %while.end, !dbg !185

while.body:                                       ; preds = %land.rhs65
  %cmp69 = icmp eq i32 %call66, 0, !dbg !186
  br i1 %cmp69, label %if.then70, label %if.end77, !dbg !187

if.then70:                                        ; preds = %while.body
  call void @llvm.dbg.value(metadata i32 1, metadata !63, metadata !DIExpression()), !dbg !114
  br i1 %cmp54, label %if.then72, label %if.else74, !dbg !188

if.then72:                                        ; preds = %if.then70
  %11 = bitcast i8* %pa.1508 to i64*, !dbg !189
  %12 = load i64, i64* %11, align 8, !dbg !189, !tbaa !130
  call void @llvm.dbg.value(metadata i64 %12, metadata !77, metadata !DIExpression()), !dbg !190
  %13 = bitcast i8* %pb.1505 to i64*, !dbg !189
  %14 = load i64, i64* %13, align 8, !dbg !189, !tbaa !130
  store i64 %14, i64* %11, align 8, !dbg !189, !tbaa !130
  store i64 %12, i64* %13, align 8, !dbg !189, !tbaa !130
  br label %if.end75, !dbg !189

if.else74:                                        ; preds = %if.then70
  tail call fastcc void @swapfunc(i8* noundef %pa.1508, i8* noundef %pb.1505, i64 noundef %es, i32 noundef %cond4) #4, !dbg !191
  br label %if.end75

if.end75:                                         ; preds = %if.else74, %if.then72
  %add.ptr76 = getelementptr inbounds i8, i8* %pa.1508, i64 %es, !dbg !192
  call void @llvm.dbg.value(metadata i8* %add.ptr76, metadata !53, metadata !DIExpression()), !dbg !114
  br label %if.end77, !dbg !193

if.end77:                                         ; preds = %if.end75, %while.body
  %swap_cnt.2 = phi i32 [ 1, %if.end75 ], [ %swap_cnt.1504, %while.body ], !dbg !114
  %pa.2 = phi i8* [ %add.ptr76, %if.end75 ], [ %pa.1508, %while.body ], !dbg !114
  call void @llvm.dbg.value(metadata i8* %pa.2, metadata !53, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i32 %swap_cnt.2, metadata !63, metadata !DIExpression()), !dbg !114
  %add.ptr78 = getelementptr inbounds i8, i8* %pb.1505, i64 %es, !dbg !194
  call void @llvm.dbg.value(metadata i8* %add.ptr78, metadata !54, metadata !DIExpression()), !dbg !114
  %cmp64.not = icmp ugt i8* %add.ptr78, %pc.0, !dbg !181
  br i1 %cmp64.not, label %while.end, label %land.rhs65, !dbg !182, !llvm.loop !195

while.end:                                        ; preds = %land.rhs65, %if.end77, %for.cond63
  %swap_cnt.1.lcssa = phi i32 [ %swap_cnt.0, %for.cond63 ], [ %swap_cnt.2, %if.end77 ], [ %swap_cnt.1504, %land.rhs65 ], !dbg !114
  %pb.1.lcssa = phi i8* [ %pb.0, %for.cond63 ], [ %add.ptr78, %if.end77 ], [ %pb.1505, %land.rhs65 ], !dbg !114
  %pa.1.lcssa = phi i8* [ %pa.0, %for.cond63 ], [ %pa.2, %if.end77 ], [ %pa.1508, %land.rhs65 ], !dbg !114
  call void @llvm.dbg.value(metadata i8* %pc.0, metadata !55, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i8* %pd.0, metadata !56, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i32 %swap_cnt.1.lcssa, metadata !63, metadata !DIExpression()), !dbg !114
  %cmp80.not515 = icmp ugt i8* %pb.1.lcssa, %pc.0, !dbg !197
  br i1 %cmp80.not515, label %for.end110, label %land.rhs81, !dbg !198

land.rhs81:                                       ; preds = %while.end, %if.end95
  %pc.1519 = phi i8* [ %add.ptr97, %if.end95 ], [ %pc.0, %while.end ]
  %pd.1517 = phi i8* [ %pd.2, %if.end95 ], [ %pd.0, %while.end ]
  %swap_cnt.3516 = phi i32 [ %swap_cnt.4, %if.end95 ], [ %swap_cnt.1.lcssa, %while.end ]
  call void @llvm.dbg.value(metadata i8* %pc.1519, metadata !55, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i8* %pd.1517, metadata !56, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i32 %swap_cnt.3516, metadata !63, metadata !DIExpression()), !dbg !114
  %call82 = tail call i32 %cmp(i8* noundef %pc.1519, i8* noundef %a.addr.0) #5, !dbg !199
  call void @llvm.dbg.value(metadata i32 %call82, metadata !64, metadata !DIExpression()), !dbg !114
  %cmp83 = icmp sgt i32 %call82, -1, !dbg !200
  br i1 %cmp83, label %while.body85, label %if.end101, !dbg !201

while.body85:                                     ; preds = %land.rhs81
  %cmp86 = icmp eq i32 %call82, 0, !dbg !202
  br i1 %cmp86, label %if.then87, label %if.end95, !dbg !203

if.then87:                                        ; preds = %while.body85
  call void @llvm.dbg.value(metadata i32 1, metadata !63, metadata !DIExpression()), !dbg !114
  br i1 %cmp54, label %if.then89, label %if.else91, !dbg !204

if.then89:                                        ; preds = %if.then87
  %15 = bitcast i8* %pc.1519 to i64*, !dbg !205
  %16 = load i64, i64* %15, align 8, !dbg !205, !tbaa !130
  call void @llvm.dbg.value(metadata i64 %16, metadata !86, metadata !DIExpression()), !dbg !206
  %17 = bitcast i8* %pd.1517 to i64*, !dbg !205
  %18 = load i64, i64* %17, align 8, !dbg !205, !tbaa !130
  store i64 %18, i64* %15, align 8, !dbg !205, !tbaa !130
  store i64 %16, i64* %17, align 8, !dbg !205, !tbaa !130
  br label %if.end92, !dbg !205

if.else91:                                        ; preds = %if.then87
  tail call fastcc void @swapfunc(i8* noundef %pc.1519, i8* noundef %pd.1517, i64 noundef %es, i32 noundef %cond4) #4, !dbg !207
  br label %if.end92

if.end92:                                         ; preds = %if.else91, %if.then89
  %add.ptr94 = getelementptr inbounds i8, i8* %pd.1517, i64 %idx.neg, !dbg !208
  call void @llvm.dbg.value(metadata i8* %add.ptr94, metadata !56, metadata !DIExpression()), !dbg !114
  br label %if.end95, !dbg !209

if.end95:                                         ; preds = %if.end92, %while.body85
  %swap_cnt.4 = phi i32 [ 1, %if.end92 ], [ %swap_cnt.3516, %while.body85 ], !dbg !114
  %pd.2 = phi i8* [ %add.ptr94, %if.end92 ], [ %pd.1517, %while.body85 ], !dbg !114
  call void @llvm.dbg.value(metadata i8* %pd.2, metadata !56, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i32 %swap_cnt.4, metadata !63, metadata !DIExpression()), !dbg !114
  %add.ptr97 = getelementptr inbounds i8, i8* %pc.1519, i64 %idx.neg, !dbg !210
  call void @llvm.dbg.value(metadata i8* %add.ptr97, metadata !55, metadata !DIExpression()), !dbg !114
  %cmp80.not = icmp ugt i8* %pb.1.lcssa, %add.ptr97, !dbg !197
  br i1 %cmp80.not, label %for.end110, label %land.rhs81, !dbg !198, !llvm.loop !211

if.end101:                                        ; preds = %land.rhs81
  br i1 %cmp54, label %if.then103, label %if.else105, !dbg !213

if.then103:                                       ; preds = %if.end101
  %19 = bitcast i8* %pb.1.lcssa to i64*, !dbg !214
  %20 = load i64, i64* %19, align 8, !dbg !214, !tbaa !130
  call void @llvm.dbg.value(metadata i64 %20, metadata !92, metadata !DIExpression()), !dbg !215
  %21 = bitcast i8* %pc.1519 to i64*, !dbg !214
  %22 = load i64, i64* %21, align 8, !dbg !214, !tbaa !130
  store i64 %22, i64* %19, align 8, !dbg !214, !tbaa !130
  store i64 %20, i64* %21, align 8, !dbg !214, !tbaa !130
  br label %if.end106, !dbg !214

if.else105:                                       ; preds = %if.end101
  tail call fastcc void @swapfunc(i8* noundef %pb.1.lcssa, i8* noundef %pc.1519, i64 noundef %es, i32 noundef %cond4) #4, !dbg !216
  br label %if.end106

if.end106:                                        ; preds = %if.else105, %if.then103
  call void @llvm.dbg.value(metadata i32 1, metadata !63, metadata !DIExpression()), !dbg !114
  %add.ptr107 = getelementptr inbounds i8, i8* %pb.1.lcssa, i64 %es, !dbg !217
  call void @llvm.dbg.value(metadata i8* %add.ptr107, metadata !54, metadata !DIExpression()), !dbg !114
  %add.ptr109 = getelementptr inbounds i8, i8* %pc.1519, i64 %idx.neg, !dbg !218
  call void @llvm.dbg.value(metadata i8* %add.ptr109, metadata !55, metadata !DIExpression()), !dbg !114
  br label %for.cond63, !dbg !219, !llvm.loop !220

for.end110:                                       ; preds = %while.end, %if.end95
  %swap_cnt.3.lcssa = phi i32 [ %swap_cnt.4, %if.end95 ], [ %swap_cnt.1.lcssa, %while.end ], !dbg !114
  %pd.1.lcssa = phi i8* [ %pd.2, %if.end95 ], [ %pd.0, %while.end ], !dbg !114
  %pc.1.lcssa = phi i8* [ %add.ptr97, %if.end95 ], [ %pc.0, %while.end ], !dbg !114
  %cmp111 = icmp eq i32 %swap_cnt.3.lcssa, 0, !dbg !223
  %mul115 = mul i64 %n.addr.0, %es
  %add.ptr116 = getelementptr inbounds i8, i8* %a.addr.0, i64 %mul115
  br i1 %cmp111, label %for.cond114.preheader, label %if.end146, !dbg !224

for.cond114.preheader:                            ; preds = %for.end110
  call void @llvm.dbg.value(metadata i8* %add.ptr59, metadata !58, metadata !DIExpression()), !dbg !114
  %cmp117534 = icmp sgt i64 %mul115, %es, !dbg !225
  br i1 %cmp117534, label %for.cond119.preheader, label %cleanup234, !dbg !226

for.cond119.preheader:                            ; preds = %for.cond114.preheader, %for.inc143
  %pm.3535 = phi i8* [ %add.ptr144, %for.inc143 ], [ %add.ptr59, %for.cond114.preheader ]
  call void @llvm.dbg.value(metadata i8* %pm.3535, metadata !58, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i8* %pm.3535, metadata !57, metadata !DIExpression()), !dbg !114
  %cmp120532 = icmp ugt i8* %pm.3535, %a.addr.0, !dbg !227
  br i1 %cmp120532, label %land.rhs121, label %for.inc143, !dbg !228

land.rhs121:                                      ; preds = %for.cond119.preheader, %for.inc139
  %pl.2533 = phi i8* [ %add.ptr123, %for.inc139 ], [ %pm.3535, %for.cond119.preheader ]
  call void @llvm.dbg.value(metadata i8* %pl.2533, metadata !57, metadata !DIExpression()), !dbg !114
  %add.ptr123 = getelementptr inbounds i8, i8* %pl.2533, i64 %idx.neg, !dbg !229
  %call124 = tail call i32 %cmp(i8* noundef nonnull %add.ptr123, i8* noundef nonnull %pl.2533) #5, !dbg !230
  %cmp125 = icmp sgt i32 %call124, 0, !dbg !231
  br i1 %cmp125, label %for.body127, label %for.inc143, !dbg !232

for.body127:                                      ; preds = %land.rhs121
  br i1 %cmp54, label %if.then129, label %if.else135, !dbg !233

if.then129:                                       ; preds = %for.body127
  %23 = bitcast i8* %pl.2533 to i64*, !dbg !234
  %24 = load i64, i64* %23, align 8, !dbg !234, !tbaa !130
  call void @llvm.dbg.value(metadata i64 %24, metadata !95, metadata !DIExpression()), !dbg !235
  %25 = bitcast i8* %add.ptr123 to i64*, !dbg !234
  %26 = load i64, i64* %25, align 8, !dbg !234, !tbaa !130
  store i64 %26, i64* %23, align 8, !dbg !234, !tbaa !130
  store i64 %24, i64* %25, align 8, !dbg !234, !tbaa !130
  br label %for.inc139, !dbg !234

if.else135:                                       ; preds = %for.body127
  tail call fastcc void @swapfunc(i8* noundef nonnull %pl.2533, i8* noundef nonnull %add.ptr123, i64 noundef %es, i32 noundef %cond4) #4, !dbg !236
  br label %for.inc139

for.inc139:                                       ; preds = %if.then129, %if.else135
  call void @llvm.dbg.value(metadata i8* %add.ptr123, metadata !57, metadata !DIExpression()), !dbg !114
  %cmp120 = icmp ugt i8* %add.ptr123, %a.addr.0, !dbg !227
  br i1 %cmp120, label %land.rhs121, label %for.inc143, !dbg !228, !llvm.loop !237

for.inc143:                                       ; preds = %for.inc139, %land.rhs121, %for.cond119.preheader
  %add.ptr144 = getelementptr inbounds i8, i8* %pm.3535, i64 %es, !dbg !239
  call void @llvm.dbg.value(metadata i8* %add.ptr144, metadata !58, metadata !DIExpression()), !dbg !114
  %cmp117 = icmp ult i8* %add.ptr144, %add.ptr116, !dbg !225
  br i1 %cmp117, label %for.cond119.preheader, label %cleanup234, !dbg !226, !llvm.loop !240

if.end146:                                        ; preds = %for.end110
  call void @llvm.dbg.value(metadata i8* %add.ptr116, metadata !59, metadata !DIExpression()), !dbg !114
  %sub.ptr.lhs.cast149 = ptrtoint i8* %pa.1.lcssa to i64, !dbg !242
  %sub.ptr.sub150 = sub i64 %sub.ptr.lhs.cast149, %sub.ptr.lhs.cast, !dbg !242
  %sub.ptr.lhs.cast151 = ptrtoint i8* %pb.1.lcssa to i64, !dbg !242
  %sub.ptr.sub153 = sub i64 %sub.ptr.lhs.cast151, %sub.ptr.lhs.cast149, !dbg !242
  %cmp154 = icmp slt i64 %sub.ptr.sub150, %sub.ptr.sub153, !dbg !242
  %sub.ptr.sub150.sub.ptr.sub153 = select i1 %cmp154, i64 %sub.ptr.sub150, i64 %sub.ptr.sub153, !dbg !242
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub150.sub.ptr.sub153, metadata !61, metadata !DIExpression()), !dbg !114
  %cmp165.not = icmp eq i64 %sub.ptr.sub150.sub.ptr.sub153, 0, !dbg !243
  br i1 %cmp165.not, label %if.end169, label %if.then166, !dbg !245

if.then166:                                       ; preds = %if.end146
  %idx.neg167 = sub i64 0, %sub.ptr.sub150.sub.ptr.sub153, !dbg !243
  %add.ptr168 = getelementptr inbounds i8, i8* %pb.1.lcssa, i64 %idx.neg167, !dbg !243
  tail call fastcc void @swapfunc(i8* noundef %a.addr.0, i8* noundef nonnull %add.ptr168, i64 noundef %sub.ptr.sub150.sub.ptr.sub153, i32 noundef %cond4) #4, !dbg !243
  br label %if.end169, !dbg !243

if.end169:                                        ; preds = %if.then166, %if.end146
  %sub.ptr.lhs.cast170 = ptrtoint i8* %pd.1.lcssa to i64, !dbg !246
  %sub.ptr.rhs.cast171 = ptrtoint i8* %pc.1.lcssa to i64, !dbg !246
  %sub.ptr.sub172 = sub i64 %sub.ptr.lhs.cast170, %sub.ptr.rhs.cast171, !dbg !246
  %sub.ptr.lhs.cast173 = ptrtoint i8* %add.ptr116 to i64, !dbg !246
  %27 = add i64 %sub.ptr.lhs.cast170, %es, !dbg !246
  %sub176 = sub i64 %sub.ptr.lhs.cast173, %27, !dbg !246
  %cmp177 = icmp ult i64 %sub.ptr.sub172, %sub176, !dbg !246
  %sub.ptr.sub172.sub176 = select i1 %cmp177, i64 %sub.ptr.sub172, i64 %sub176, !dbg !246
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub172.sub176, metadata !61, metadata !DIExpression()), !dbg !114
  %cmp189.not = icmp eq i64 %sub.ptr.sub172.sub176, 0, !dbg !247
  br i1 %cmp189.not, label %if.end193, label %if.then190, !dbg !249

if.then190:                                       ; preds = %if.end169
  %idx.neg191 = sub i64 0, %sub.ptr.sub172.sub176, !dbg !247
  %add.ptr192 = getelementptr inbounds i8, i8* %add.ptr116, i64 %idx.neg191, !dbg !247
  tail call fastcc void @swapfunc(i8* noundef nonnull %pb.1.lcssa, i8* noundef %add.ptr192, i64 noundef %sub.ptr.sub172.sub176, i32 noundef %cond4) #4, !dbg !247
  br label %if.end193, !dbg !247

if.end193:                                        ; preds = %if.then190, %if.end169
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub153, metadata !61, metadata !DIExpression()), !dbg !114
  %cmp197 = icmp ugt i64 %sub.ptr.sub153, %es, !dbg !250
  br i1 %cmp197, label %if.then198, label %if.end210, !dbg !251

if.then198:                                       ; preds = %if.end193
  call void @llvm.dbg.value(metadata i8* %a.addr.0, metadata !104, metadata !DIExpression()), !dbg !252
  %add.ptr199 = getelementptr inbounds i8, i8* %a.addr.0, i64 -1, !dbg !253
  %add.ptr200 = getelementptr inbounds i8, i8* %add.ptr199, i64 %sub.ptr.sub153, !dbg !254
  call void @llvm.dbg.value(metadata i8* %add.ptr200, metadata !107, metadata !DIExpression()), !dbg !252
  %cmp201 = icmp ugt i8* %a.addr.0, %lrange, !dbg !255
  %cmp202 = icmp ugt i8* %a.addr.0, %rrange
  %or.cond483 = and i1 %cmp201, %cmp202, !dbg !257
  br i1 %or.cond483, label %if.end210, label %lor.lhs.false203, !dbg !257

lor.lhs.false203:                                 ; preds = %if.then198
  %cmp204 = icmp ult i8* %add.ptr200, %lrange, !dbg !258
  %cmp206 = icmp ult i8* %add.ptr200, %rrange
  %or.cond484 = and i1 %cmp204, %cmp206, !dbg !259
  br i1 %or.cond484, label %if.end210, label %if.then207, !dbg !259

if.then207:                                       ; preds = %lor.lhs.false203
  %div208 = udiv i64 %sub.ptr.sub153, %es, !dbg !260
  tail call fastcc void @_pqsort(i8* noundef %a.addr.0, i64 noundef %div208, i64 noundef %es, i32 (i8*, i8*)* noundef %cmp, i8* noundef %lrange, i8* noundef %rrange) #4, !dbg !261
  br label %if.end210, !dbg !261

if.end210:                                        ; preds = %if.then207, %if.then198, %lor.lhs.false203, %if.end193
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub172, metadata !61, metadata !DIExpression()), !dbg !114
  %cmp214 = icmp ugt i64 %sub.ptr.sub172, %es, !dbg !262
  br i1 %cmp214, label %if.then215, label %cleanup234, !dbg !263

if.then215:                                       ; preds = %if.end210
  %idx.neg218 = sub i64 0, %sub.ptr.sub172, !dbg !264
  %add.ptr219 = getelementptr inbounds i8, i8* %add.ptr116, i64 %idx.neg218, !dbg !264
  call void @llvm.dbg.value(metadata i8* %add.ptr219, metadata !47, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i64 undef, metadata !48, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i8* %add.ptr219, metadata !108, metadata !DIExpression()), !dbg !265
  %add.ptr221 = getelementptr inbounds i8, i8* %add.ptr219, i64 -1, !dbg !266
  %add.ptr222 = getelementptr inbounds i8, i8* %add.ptr221, i64 %sub.ptr.sub172, !dbg !267
  call void @llvm.dbg.value(metadata i8* %add.ptr222, metadata !111, metadata !DIExpression()), !dbg !265
  %cmp223 = icmp ugt i8* %add.ptr219, %lrange, !dbg !268
  %cmp225 = icmp ugt i8* %add.ptr219, %rrange
  %or.cond485 = and i1 %cmp223, %cmp225, !dbg !270
  br i1 %or.cond485, label %cleanup234, label %lor.lhs.false226, !dbg !270

lor.lhs.false226:                                 ; preds = %if.then215
  %div220 = udiv i64 %sub.ptr.sub172, %es, !dbg !271
  call void @llvm.dbg.value(metadata i64 %div220, metadata !48, metadata !DIExpression()), !dbg !114
  %cmp227 = icmp ult i8* %add.ptr222, %lrange, !dbg !272
  %cmp229 = icmp ult i8* %add.ptr222, %rrange
  %or.cond486 = and i1 %cmp227, %cmp229, !dbg !273
  br i1 %or.cond486, label %cleanup234, label %loop, !dbg !273

cleanup234:                                       ; preds = %lor.lhs.false226, %if.then215, %if.end210, %for.inc143, %for.inc23, %for.cond114.preheader, %for.cond.preheader
  ret void, !dbg !274
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @swapfunc(i8* nocapture noundef %a, i8* nocapture noundef %b, i64 noundef %n, i32 noundef %swaptype) unnamed_addr #2 !dbg !275 {
entry:
  call void @llvm.dbg.value(metadata i8* %a, metadata !279, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i8* %b, metadata !280, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 %n, metadata !281, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i32 %swaptype, metadata !282, metadata !DIExpression()), !dbg !296
  %cmp = icmp slt i32 %swaptype, 2, !dbg !297
  br i1 %cmp, label %if.then, label %iter.check, !dbg !298

iter.check:                                       ; preds = %entry
  %min.iters.check = icmp ult i64 %n, 8, !dbg !299
  br i1 %min.iters.check, label %do.body7.preheader, label %vector.memcheck, !dbg !299

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, i8* %a, i64 %n, !dbg !299
  %scevgep33 = getelementptr i8, i8* %b, i64 %n, !dbg !299
  %bound0 = icmp ugt i8* %scevgep33, %a, !dbg !299
  %bound1 = icmp ugt i8* %scevgep, %b, !dbg !299
  %found.conflict = and i1 %bound0, %bound1, !dbg !299
  br i1 %found.conflict, label %do.body7.preheader, label %vector.main.loop.iter.check, !dbg !299

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check34 = icmp ult i64 %n, 32, !dbg !299
  br i1 %min.iters.check34, label %vec.epilog.ph, label %vector.ph, !dbg !299

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %n, -32, !dbg !299
  %0 = add i64 %n.vec, -32, !dbg !299
  %1 = lshr exact i64 %0, 5, !dbg !299
  %2 = add nuw nsw i64 %1, 1, !dbg !299
  %xtraiter = and i64 %2, 1, !dbg !299
  %3 = icmp eq i64 %0, 0, !dbg !299
  br i1 %3, label %middle.block.unr-lcssa, label %vector.ph.new, !dbg !299

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %2, 1152921504606846974, !dbg !299
  br label %vector.body, !dbg !299

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %next.gep = getelementptr i8, i8* %a, i64 %index, !dbg !300
  %next.gep36 = getelementptr i8, i8* %b, i64 %index, !dbg !300
  %4 = bitcast i8* %next.gep to <16 x i8>*, !dbg !301
  %wide.load = load <16 x i8>, <16 x i8>* %4, align 1, !dbg !301, !tbaa !302, !alias.scope !303, !noalias !306
  %5 = getelementptr i8, i8* %next.gep, i64 16, !dbg !301
  %6 = bitcast i8* %5 to <16 x i8>*, !dbg !301
  %wide.load38 = load <16 x i8>, <16 x i8>* %6, align 1, !dbg !301, !tbaa !302, !alias.scope !303, !noalias !306
  %7 = bitcast i8* %next.gep36 to <16 x i8>*, !dbg !301
  %wide.load39 = load <16 x i8>, <16 x i8>* %7, align 1, !dbg !301, !tbaa !302, !alias.scope !306
  %8 = getelementptr i8, i8* %next.gep36, i64 16, !dbg !301
  %9 = bitcast i8* %8 to <16 x i8>*, !dbg !301
  %wide.load40 = load <16 x i8>, <16 x i8>* %9, align 1, !dbg !301, !tbaa !302, !alias.scope !306
  %10 = bitcast i8* %next.gep to <16 x i8>*, !dbg !301
  store <16 x i8> %wide.load39, <16 x i8>* %10, align 1, !dbg !301, !tbaa !302, !alias.scope !303, !noalias !306
  %11 = bitcast i8* %5 to <16 x i8>*, !dbg !301
  store <16 x i8> %wide.load40, <16 x i8>* %11, align 1, !dbg !301, !tbaa !302, !alias.scope !303, !noalias !306
  %12 = bitcast i8* %next.gep36 to <16 x i8>*, !dbg !301
  store <16 x i8> %wide.load, <16 x i8>* %12, align 1, !dbg !301, !tbaa !302, !alias.scope !306
  %13 = bitcast i8* %8 to <16 x i8>*, !dbg !301
  store <16 x i8> %wide.load38, <16 x i8>* %13, align 1, !dbg !301, !tbaa !302, !alias.scope !306
  %index.next = or i64 %index, 32
  %next.gep.1 = getelementptr i8, i8* %a, i64 %index.next, !dbg !300
  %next.gep36.1 = getelementptr i8, i8* %b, i64 %index.next, !dbg !300
  %14 = bitcast i8* %next.gep.1 to <16 x i8>*, !dbg !301
  %wide.load.1 = load <16 x i8>, <16 x i8>* %14, align 1, !dbg !301, !tbaa !302, !alias.scope !303, !noalias !306
  %15 = getelementptr i8, i8* %next.gep.1, i64 16, !dbg !301
  %16 = bitcast i8* %15 to <16 x i8>*, !dbg !301
  %wide.load38.1 = load <16 x i8>, <16 x i8>* %16, align 1, !dbg !301, !tbaa !302, !alias.scope !303, !noalias !306
  %17 = bitcast i8* %next.gep36.1 to <16 x i8>*, !dbg !301
  %wide.load39.1 = load <16 x i8>, <16 x i8>* %17, align 1, !dbg !301, !tbaa !302, !alias.scope !306
  %18 = getelementptr i8, i8* %next.gep36.1, i64 16, !dbg !301
  %19 = bitcast i8* %18 to <16 x i8>*, !dbg !301
  %wide.load40.1 = load <16 x i8>, <16 x i8>* %19, align 1, !dbg !301, !tbaa !302, !alias.scope !306
  %20 = bitcast i8* %next.gep.1 to <16 x i8>*, !dbg !301
  store <16 x i8> %wide.load39.1, <16 x i8>* %20, align 1, !dbg !301, !tbaa !302, !alias.scope !303, !noalias !306
  %21 = bitcast i8* %15 to <16 x i8>*, !dbg !301
  store <16 x i8> %wide.load40.1, <16 x i8>* %21, align 1, !dbg !301, !tbaa !302, !alias.scope !303, !noalias !306
  %22 = bitcast i8* %next.gep36.1 to <16 x i8>*, !dbg !301
  store <16 x i8> %wide.load.1, <16 x i8>* %22, align 1, !dbg !301, !tbaa !302, !alias.scope !306
  %23 = bitcast i8* %18 to <16 x i8>*, !dbg !301
  store <16 x i8> %wide.load38.1, <16 x i8>* %23, align 1, !dbg !301, !tbaa !302, !alias.scope !306
  %index.next.1 = add nuw i64 %index, 64
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !308

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %next.gep.epil = getelementptr i8, i8* %a, i64 %index.unr, !dbg !300
  %next.gep36.epil = getelementptr i8, i8* %b, i64 %index.unr, !dbg !300
  %24 = bitcast i8* %next.gep.epil to <16 x i8>*, !dbg !301
  %wide.load.epil = load <16 x i8>, <16 x i8>* %24, align 1, !dbg !301, !tbaa !302, !alias.scope !303, !noalias !306
  %25 = getelementptr i8, i8* %next.gep.epil, i64 16, !dbg !301
  %26 = bitcast i8* %25 to <16 x i8>*, !dbg !301
  %wide.load38.epil = load <16 x i8>, <16 x i8>* %26, align 1, !dbg !301, !tbaa !302, !alias.scope !303, !noalias !306
  %27 = bitcast i8* %next.gep36.epil to <16 x i8>*, !dbg !301
  %wide.load39.epil = load <16 x i8>, <16 x i8>* %27, align 1, !dbg !301, !tbaa !302, !alias.scope !306
  %28 = getelementptr i8, i8* %next.gep36.epil, i64 16, !dbg !301
  %29 = bitcast i8* %28 to <16 x i8>*, !dbg !301
  %wide.load40.epil = load <16 x i8>, <16 x i8>* %29, align 1, !dbg !301, !tbaa !302, !alias.scope !306
  %30 = bitcast i8* %next.gep.epil to <16 x i8>*, !dbg !301
  store <16 x i8> %wide.load39.epil, <16 x i8>* %30, align 1, !dbg !301, !tbaa !302, !alias.scope !303, !noalias !306
  %31 = bitcast i8* %25 to <16 x i8>*, !dbg !301
  store <16 x i8> %wide.load40.epil, <16 x i8>* %31, align 1, !dbg !301, !tbaa !302, !alias.scope !303, !noalias !306
  %32 = bitcast i8* %next.gep36.epil to <16 x i8>*, !dbg !301
  store <16 x i8> %wide.load.epil, <16 x i8>* %32, align 1, !dbg !301, !tbaa !302, !alias.scope !306
  %33 = bitcast i8* %28 to <16 x i8>*, !dbg !301
  store <16 x i8> %wide.load38.epil, <16 x i8>* %33, align 1, !dbg !301, !tbaa !302, !alias.scope !306
  br label %middle.block, !dbg !301

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %n.vec, %n, !dbg !301
  br i1 %cmp.n, label %if.end, label %vec.epilog.iter.check, !dbg !301

vec.epilog.iter.check:                            ; preds = %middle.block
  %ind.end49 = getelementptr i8, i8* %b, i64 %n.vec, !dbg !299
  %ind.end46 = getelementptr i8, i8* %a, i64 %n.vec, !dbg !299
  %ind.end43 = and i64 %n, 31, !dbg !299
  %n.vec.remaining = and i64 %n, 24, !dbg !299
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0, !dbg !299
  br i1 %min.epilog.iters.check, label %do.body7.preheader, label %vec.epilog.ph, !dbg !299

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec42 = and i64 %n, -8, !dbg !299
  %ind.end = and i64 %n, 7, !dbg !299
  %ind.end45 = getelementptr i8, i8* %a, i64 %n.vec42, !dbg !299
  %ind.end48 = getelementptr i8, i8* %b, i64 %n.vec42, !dbg !299
  br label %vec.epilog.vector.body, !dbg !299

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index51 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ]
  %next.gep53 = getelementptr i8, i8* %a, i64 %index51, !dbg !300
  %next.gep54 = getelementptr i8, i8* %b, i64 %index51, !dbg !300
  %34 = bitcast i8* %next.gep53 to <8 x i8>*, !dbg !301
  %wide.load55 = load <8 x i8>, <8 x i8>* %34, align 1, !dbg !301, !tbaa !302
  %35 = bitcast i8* %next.gep54 to <8 x i8>*, !dbg !301
  %wide.load56 = load <8 x i8>, <8 x i8>* %35, align 1, !dbg !301, !tbaa !302
  %36 = bitcast i8* %next.gep53 to <8 x i8>*, !dbg !301
  store <8 x i8> %wide.load56, <8 x i8>* %36, align 1, !dbg !301, !tbaa !302
  %37 = bitcast i8* %next.gep54 to <8 x i8>*, !dbg !301
  store <8 x i8> %wide.load55, <8 x i8>* %37, align 1, !dbg !301, !tbaa !302
  %index.next57 = add nuw i64 %index51, 8
  %38 = icmp eq i64 %index.next57, %n.vec42
  br i1 %38, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !310

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n50 = icmp eq i64 %n.vec42, %n, !dbg !301
  br i1 %cmp.n50, label %if.end, label %do.body7.preheader, !dbg !301

do.body7.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %i3.0.ph = phi i64 [ %n, %iter.check ], [ %n, %vector.memcheck ], [ %ind.end43, %vec.epilog.iter.check ], [ %ind.end, %vec.epilog.middle.block ]
  %pi5.0.ph = phi i8* [ %a, %iter.check ], [ %a, %vector.memcheck ], [ %ind.end46, %vec.epilog.iter.check ], [ %ind.end45, %vec.epilog.middle.block ]
  %pj6.0.ph = phi i8* [ %b, %iter.check ], [ %b, %vector.memcheck ], [ %ind.end49, %vec.epilog.iter.check ], [ %ind.end48, %vec.epilog.middle.block ]
  %39 = add i64 %i3.0.ph, -1, !dbg !299
  %xtraiter89 = and i64 %i3.0.ph, 3, !dbg !299
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0, !dbg !299
  br i1 %lcmp.mod90.not, label %do.body7.prol.loopexit, label %do.body7.prol, !dbg !299

do.body7.prol:                                    ; preds = %do.body7.preheader, %do.body7.prol
  %i3.0.prol = phi i64 [ %dec12.prol, %do.body7.prol ], [ %i3.0.ph, %do.body7.preheader ], !dbg !299
  %pi5.0.prol = phi i8* [ %incdec.ptr9.prol, %do.body7.prol ], [ %pi5.0.ph, %do.body7.preheader ], !dbg !300
  %pj6.0.prol = phi i8* [ %incdec.ptr10.prol, %do.body7.prol ], [ %pj6.0.ph, %do.body7.preheader ], !dbg !300
  %prol.iter = phi i64 [ %prol.iter.next, %do.body7.prol ], [ 0, %do.body7.preheader ]
  call void @llvm.dbg.value(metadata i8* %pj6.0.prol, metadata !293, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i8* %pi5.0.prol, metadata !292, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i64 %i3.0.prol, metadata !290, metadata !DIExpression()), !dbg !300
  %40 = load i8, i8* %pi5.0.prol, align 1, !dbg !301, !tbaa !302
  call void @llvm.dbg.value(metadata i8 %40, metadata !294, metadata !DIExpression()), !dbg !312
  %41 = load i8, i8* %pj6.0.prol, align 1, !dbg !301, !tbaa !302
  %incdec.ptr9.prol = getelementptr inbounds i8, i8* %pi5.0.prol, i64 1, !dbg !301
  call void @llvm.dbg.value(metadata i8* %incdec.ptr9.prol, metadata !292, metadata !DIExpression()), !dbg !300
  store i8 %41, i8* %pi5.0.prol, align 1, !dbg !301, !tbaa !302
  %incdec.ptr10.prol = getelementptr inbounds i8, i8* %pj6.0.prol, i64 1, !dbg !301
  call void @llvm.dbg.value(metadata i8* %incdec.ptr10.prol, metadata !293, metadata !DIExpression()), !dbg !300
  store i8 %40, i8* %pj6.0.prol, align 1, !dbg !301, !tbaa !302
  %dec12.prol = add i64 %i3.0.prol, -1, !dbg !299
  call void @llvm.dbg.value(metadata i64 %dec12.prol, metadata !290, metadata !DIExpression()), !dbg !300
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !301
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter89, !dbg !301
  br i1 %prol.iter.cmp.not, label %do.body7.prol.loopexit, label %do.body7.prol, !dbg !301, !llvm.loop !313

do.body7.prol.loopexit:                           ; preds = %do.body7.prol, %do.body7.preheader
  %i3.0.unr = phi i64 [ %i3.0.ph, %do.body7.preheader ], [ %dec12.prol, %do.body7.prol ]
  %pi5.0.unr = phi i8* [ %pi5.0.ph, %do.body7.preheader ], [ %incdec.ptr9.prol, %do.body7.prol ]
  %pj6.0.unr = phi i8* [ %pj6.0.ph, %do.body7.preheader ], [ %incdec.ptr10.prol, %do.body7.prol ]
  %42 = icmp ult i64 %39, 3, !dbg !299
  br i1 %42, label %if.end, label %do.body7, !dbg !299

if.then:                                          ; preds = %entry
  %div = lshr i64 %n, 3, !dbg !315
  call void @llvm.dbg.value(metadata i64 %div, metadata !283, metadata !DIExpression()), !dbg !316
  %43 = bitcast i8* %a to i64*, !dbg !315
  call void @llvm.dbg.value(metadata i64* %43, metadata !286, metadata !DIExpression()), !dbg !316
  %44 = bitcast i8* %b to i64*, !dbg !315
  call void @llvm.dbg.value(metadata i64* %44, metadata !287, metadata !DIExpression()), !dbg !316
  %min.iters.check66 = icmp ult i64 %n, 32, !dbg !315
  br i1 %min.iters.check66, label %do.body.preheader, label %vector.memcheck58, !dbg !315

vector.memcheck58:                                ; preds = %if.then
  %45 = and i64 %n, -8, !dbg !315
  %scevgep59 = getelementptr i8, i8* %a, i64 %45, !dbg !315
  %scevgep60 = getelementptr i8, i8* %b, i64 %45, !dbg !315
  %bound061 = icmp ugt i8* %scevgep60, %a, !dbg !315
  %bound162 = icmp ugt i8* %scevgep59, %b, !dbg !315
  %found.conflict63 = and i1 %bound061, %bound162, !dbg !315
  br i1 %found.conflict63, label %do.body.preheader, label %vector.ph67, !dbg !315

vector.ph67:                                      ; preds = %vector.memcheck58
  %n.vec69 = and i64 %div, 2305843009213693948, !dbg !315
  %ind.end71 = getelementptr i64, i64* %44, i64 %n.vec69, !dbg !315
  %ind.end73 = getelementptr i64, i64* %43, i64 %n.vec69, !dbg !315
  %ind.end75 = and i64 %div, 3, !dbg !315
  %46 = add nsw i64 %n.vec69, -4, !dbg !315
  %47 = lshr exact i64 %46, 2, !dbg !315
  %48 = add nuw nsw i64 %47, 1, !dbg !315
  %xtraiter91 = and i64 %48, 1, !dbg !315
  %49 = icmp eq i64 %46, 0, !dbg !315
  br i1 %49, label %middle.block64.unr-lcssa, label %vector.ph67.new, !dbg !315

vector.ph67.new:                                  ; preds = %vector.ph67
  %unroll_iter93 = and i64 %48, 9223372036854775806, !dbg !315
  br label %vector.body65, !dbg !315

vector.body65:                                    ; preds = %vector.body65, %vector.ph67.new
  %index77 = phi i64 [ 0, %vector.ph67.new ], [ %index.next87.1, %vector.body65 ]
  %niter94 = phi i64 [ 0, %vector.ph67.new ], [ %niter94.next.1, %vector.body65 ]
  %next.gep78 = getelementptr i64, i64* %44, i64 %index77, !dbg !316
  %next.gep80 = getelementptr i64, i64* %43, i64 %index77, !dbg !316
  %50 = bitcast i64* %next.gep80 to <2 x i64>*, !dbg !317
  %wide.load83 = load <2 x i64>, <2 x i64>* %50, align 8, !dbg !317, !tbaa !130, !alias.scope !318, !noalias !321
  %51 = getelementptr i64, i64* %next.gep80, i64 2, !dbg !317
  %52 = bitcast i64* %51 to <2 x i64>*, !dbg !317
  %wide.load84 = load <2 x i64>, <2 x i64>* %52, align 8, !dbg !317, !tbaa !130, !alias.scope !318, !noalias !321
  %53 = bitcast i64* %next.gep78 to <2 x i64>*, !dbg !317
  %wide.load85 = load <2 x i64>, <2 x i64>* %53, align 8, !dbg !317, !tbaa !130, !alias.scope !321
  %54 = getelementptr i64, i64* %next.gep78, i64 2, !dbg !317
  %55 = bitcast i64* %54 to <2 x i64>*, !dbg !317
  %wide.load86 = load <2 x i64>, <2 x i64>* %55, align 8, !dbg !317, !tbaa !130, !alias.scope !321
  %56 = bitcast i64* %next.gep80 to <2 x i64>*, !dbg !317
  store <2 x i64> %wide.load85, <2 x i64>* %56, align 8, !dbg !317, !tbaa !130, !alias.scope !318, !noalias !321
  %57 = bitcast i64* %51 to <2 x i64>*, !dbg !317
  store <2 x i64> %wide.load86, <2 x i64>* %57, align 8, !dbg !317, !tbaa !130, !alias.scope !318, !noalias !321
  %58 = bitcast i64* %next.gep78 to <2 x i64>*, !dbg !317
  store <2 x i64> %wide.load83, <2 x i64>* %58, align 8, !dbg !317, !tbaa !130, !alias.scope !321
  %59 = bitcast i64* %54 to <2 x i64>*, !dbg !317
  store <2 x i64> %wide.load84, <2 x i64>* %59, align 8, !dbg !317, !tbaa !130, !alias.scope !321
  %index.next87 = or i64 %index77, 4
  %next.gep78.1 = getelementptr i64, i64* %44, i64 %index.next87, !dbg !316
  %next.gep80.1 = getelementptr i64, i64* %43, i64 %index.next87, !dbg !316
  %60 = bitcast i64* %next.gep80.1 to <2 x i64>*, !dbg !317
  %wide.load83.1 = load <2 x i64>, <2 x i64>* %60, align 8, !dbg !317, !tbaa !130, !alias.scope !318, !noalias !321
  %61 = getelementptr i64, i64* %next.gep80.1, i64 2, !dbg !317
  %62 = bitcast i64* %61 to <2 x i64>*, !dbg !317
  %wide.load84.1 = load <2 x i64>, <2 x i64>* %62, align 8, !dbg !317, !tbaa !130, !alias.scope !318, !noalias !321
  %63 = bitcast i64* %next.gep78.1 to <2 x i64>*, !dbg !317
  %wide.load85.1 = load <2 x i64>, <2 x i64>* %63, align 8, !dbg !317, !tbaa !130, !alias.scope !321
  %64 = getelementptr i64, i64* %next.gep78.1, i64 2, !dbg !317
  %65 = bitcast i64* %64 to <2 x i64>*, !dbg !317
  %wide.load86.1 = load <2 x i64>, <2 x i64>* %65, align 8, !dbg !317, !tbaa !130, !alias.scope !321
  %66 = bitcast i64* %next.gep80.1 to <2 x i64>*, !dbg !317
  store <2 x i64> %wide.load85.1, <2 x i64>* %66, align 8, !dbg !317, !tbaa !130, !alias.scope !318, !noalias !321
  %67 = bitcast i64* %61 to <2 x i64>*, !dbg !317
  store <2 x i64> %wide.load86.1, <2 x i64>* %67, align 8, !dbg !317, !tbaa !130, !alias.scope !318, !noalias !321
  %68 = bitcast i64* %next.gep78.1 to <2 x i64>*, !dbg !317
  store <2 x i64> %wide.load83.1, <2 x i64>* %68, align 8, !dbg !317, !tbaa !130, !alias.scope !321
  %69 = bitcast i64* %64 to <2 x i64>*, !dbg !317
  store <2 x i64> %wide.load84.1, <2 x i64>* %69, align 8, !dbg !317, !tbaa !130, !alias.scope !321
  %index.next87.1 = add nuw i64 %index77, 8
  %niter94.next.1 = add i64 %niter94, 2
  %niter94.ncmp.1 = icmp eq i64 %niter94.next.1, %unroll_iter93
  br i1 %niter94.ncmp.1, label %middle.block64.unr-lcssa, label %vector.body65, !llvm.loop !323

middle.block64.unr-lcssa:                         ; preds = %vector.body65, %vector.ph67
  %index77.unr = phi i64 [ 0, %vector.ph67 ], [ %index.next87.1, %vector.body65 ]
  %lcmp.mod92.not = icmp eq i64 %xtraiter91, 0
  br i1 %lcmp.mod92.not, label %middle.block64, label %vector.body65.epil

vector.body65.epil:                               ; preds = %middle.block64.unr-lcssa
  %next.gep78.epil = getelementptr i64, i64* %44, i64 %index77.unr, !dbg !316
  %next.gep80.epil = getelementptr i64, i64* %43, i64 %index77.unr, !dbg !316
  %70 = bitcast i64* %next.gep80.epil to <2 x i64>*, !dbg !317
  %wide.load83.epil = load <2 x i64>, <2 x i64>* %70, align 8, !dbg !317, !tbaa !130, !alias.scope !318, !noalias !321
  %71 = getelementptr i64, i64* %next.gep80.epil, i64 2, !dbg !317
  %72 = bitcast i64* %71 to <2 x i64>*, !dbg !317
  %wide.load84.epil = load <2 x i64>, <2 x i64>* %72, align 8, !dbg !317, !tbaa !130, !alias.scope !318, !noalias !321
  %73 = bitcast i64* %next.gep78.epil to <2 x i64>*, !dbg !317
  %wide.load85.epil = load <2 x i64>, <2 x i64>* %73, align 8, !dbg !317, !tbaa !130, !alias.scope !321
  %74 = getelementptr i64, i64* %next.gep78.epil, i64 2, !dbg !317
  %75 = bitcast i64* %74 to <2 x i64>*, !dbg !317
  %wide.load86.epil = load <2 x i64>, <2 x i64>* %75, align 8, !dbg !317, !tbaa !130, !alias.scope !321
  %76 = bitcast i64* %next.gep80.epil to <2 x i64>*, !dbg !317
  store <2 x i64> %wide.load85.epil, <2 x i64>* %76, align 8, !dbg !317, !tbaa !130, !alias.scope !318, !noalias !321
  %77 = bitcast i64* %71 to <2 x i64>*, !dbg !317
  store <2 x i64> %wide.load86.epil, <2 x i64>* %77, align 8, !dbg !317, !tbaa !130, !alias.scope !318, !noalias !321
  %78 = bitcast i64* %next.gep78.epil to <2 x i64>*, !dbg !317
  store <2 x i64> %wide.load83.epil, <2 x i64>* %78, align 8, !dbg !317, !tbaa !130, !alias.scope !321
  %79 = bitcast i64* %74 to <2 x i64>*, !dbg !317
  store <2 x i64> %wide.load84.epil, <2 x i64>* %79, align 8, !dbg !317, !tbaa !130, !alias.scope !321
  br label %middle.block64, !dbg !317

middle.block64:                                   ; preds = %middle.block64.unr-lcssa, %vector.body65.epil
  %cmp.n76 = icmp eq i64 %div, %n.vec69, !dbg !317
  br i1 %cmp.n76, label %if.end, label %do.body.preheader, !dbg !317

do.body.preheader:                                ; preds = %vector.memcheck58, %if.then, %middle.block64
  %pj.0.ph = phi i64* [ %44, %vector.memcheck58 ], [ %44, %if.then ], [ %ind.end71, %middle.block64 ]
  %pi.0.ph = phi i64* [ %43, %vector.memcheck58 ], [ %43, %if.then ], [ %ind.end73, %middle.block64 ]
  %i.0.ph = phi i64 [ %div, %vector.memcheck58 ], [ %div, %if.then ], [ %ind.end75, %middle.block64 ]
  %80 = add nsw i64 %i.0.ph, -1, !dbg !315
  %xtraiter95 = and i64 %i.0.ph, 3, !dbg !315
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0, !dbg !315
  br i1 %lcmp.mod96.not, label %do.body.prol.loopexit, label %do.body.prol, !dbg !315

do.body.prol:                                     ; preds = %do.body.preheader, %do.body.prol
  %pj.0.prol = phi i64* [ %incdec.ptr1.prol, %do.body.prol ], [ %pj.0.ph, %do.body.preheader ], !dbg !316
  %pi.0.prol = phi i64* [ %incdec.ptr.prol, %do.body.prol ], [ %pi.0.ph, %do.body.preheader ], !dbg !316
  %i.0.prol = phi i64 [ %dec.prol, %do.body.prol ], [ %i.0.ph, %do.body.preheader ], !dbg !315
  %prol.iter97 = phi i64 [ %prol.iter97.next, %do.body.prol ], [ 0, %do.body.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.0.prol, metadata !283, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata i64* %pi.0.prol, metadata !286, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata i64* %pj.0.prol, metadata !287, metadata !DIExpression()), !dbg !316
  %81 = load i64, i64* %pi.0.prol, align 8, !dbg !317, !tbaa !130
  call void @llvm.dbg.value(metadata i64 %81, metadata !288, metadata !DIExpression()), !dbg !324
  %82 = load i64, i64* %pj.0.prol, align 8, !dbg !317, !tbaa !130
  %incdec.ptr.prol = getelementptr inbounds i64, i64* %pi.0.prol, i64 1, !dbg !317
  call void @llvm.dbg.value(metadata i64* %incdec.ptr.prol, metadata !286, metadata !DIExpression()), !dbg !316
  store i64 %82, i64* %pi.0.prol, align 8, !dbg !317, !tbaa !130
  %incdec.ptr1.prol = getelementptr inbounds i64, i64* %pj.0.prol, i64 1, !dbg !317
  call void @llvm.dbg.value(metadata i64* %incdec.ptr1.prol, metadata !287, metadata !DIExpression()), !dbg !316
  store i64 %81, i64* %pj.0.prol, align 8, !dbg !317, !tbaa !130
  %dec.prol = add i64 %i.0.prol, -1, !dbg !315
  call void @llvm.dbg.value(metadata i64 %dec.prol, metadata !283, metadata !DIExpression()), !dbg !316
  %prol.iter97.next = add i64 %prol.iter97, 1, !dbg !317
  %prol.iter97.cmp.not = icmp eq i64 %prol.iter97.next, %xtraiter95, !dbg !317
  br i1 %prol.iter97.cmp.not, label %do.body.prol.loopexit, label %do.body.prol, !dbg !317, !llvm.loop !325

do.body.prol.loopexit:                            ; preds = %do.body.prol, %do.body.preheader
  %pj.0.unr = phi i64* [ %pj.0.ph, %do.body.preheader ], [ %incdec.ptr1.prol, %do.body.prol ]
  %pi.0.unr = phi i64* [ %pi.0.ph, %do.body.preheader ], [ %incdec.ptr.prol, %do.body.prol ]
  %i.0.unr = phi i64 [ %i.0.ph, %do.body.preheader ], [ %dec.prol, %do.body.prol ]
  %83 = icmp ult i64 %80, 3, !dbg !315
  br i1 %83, label %if.end, label %do.body, !dbg !315

do.body:                                          ; preds = %do.body.prol.loopexit, %do.body
  %pj.0 = phi i64* [ %incdec.ptr1.3, %do.body ], [ %pj.0.unr, %do.body.prol.loopexit ], !dbg !316
  %pi.0 = phi i64* [ %incdec.ptr.3, %do.body ], [ %pi.0.unr, %do.body.prol.loopexit ], !dbg !316
  %i.0 = phi i64 [ %dec.3, %do.body ], [ %i.0.unr, %do.body.prol.loopexit ], !dbg !315
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !283, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata i64* %pi.0, metadata !286, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata i64* %pj.0, metadata !287, metadata !DIExpression()), !dbg !316
  %84 = load i64, i64* %pi.0, align 8, !dbg !317, !tbaa !130
  call void @llvm.dbg.value(metadata i64 %84, metadata !288, metadata !DIExpression()), !dbg !324
  %85 = load i64, i64* %pj.0, align 8, !dbg !317, !tbaa !130
  %incdec.ptr = getelementptr inbounds i64, i64* %pi.0, i64 1, !dbg !317
  call void @llvm.dbg.value(metadata i64* %incdec.ptr, metadata !286, metadata !DIExpression()), !dbg !316
  store i64 %85, i64* %pi.0, align 8, !dbg !317, !tbaa !130
  %incdec.ptr1 = getelementptr inbounds i64, i64* %pj.0, i64 1, !dbg !317
  call void @llvm.dbg.value(metadata i64* %incdec.ptr1, metadata !287, metadata !DIExpression()), !dbg !316
  store i64 %84, i64* %pj.0, align 8, !dbg !317, !tbaa !130
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !283, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !316
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !283, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !316
  call void @llvm.dbg.value(metadata i64* %incdec.ptr, metadata !286, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata i64* %incdec.ptr1, metadata !287, metadata !DIExpression()), !dbg !316
  %86 = load i64, i64* %incdec.ptr, align 8, !dbg !317, !tbaa !130
  call void @llvm.dbg.value(metadata i64 %86, metadata !288, metadata !DIExpression()), !dbg !324
  %87 = load i64, i64* %incdec.ptr1, align 8, !dbg !317, !tbaa !130
  %incdec.ptr.1 = getelementptr inbounds i64, i64* %pi.0, i64 2, !dbg !317
  call void @llvm.dbg.value(metadata i64* %incdec.ptr.1, metadata !286, metadata !DIExpression()), !dbg !316
  store i64 %87, i64* %incdec.ptr, align 8, !dbg !317, !tbaa !130
  %incdec.ptr1.1 = getelementptr inbounds i64, i64* %pj.0, i64 2, !dbg !317
  call void @llvm.dbg.value(metadata i64* %incdec.ptr1.1, metadata !287, metadata !DIExpression()), !dbg !316
  store i64 %86, i64* %incdec.ptr1, align 8, !dbg !317, !tbaa !130
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !283, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !316
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !283, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !316
  call void @llvm.dbg.value(metadata i64* %incdec.ptr.1, metadata !286, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata i64* %incdec.ptr1.1, metadata !287, metadata !DIExpression()), !dbg !316
  %88 = load i64, i64* %incdec.ptr.1, align 8, !dbg !317, !tbaa !130
  call void @llvm.dbg.value(metadata i64 %88, metadata !288, metadata !DIExpression()), !dbg !324
  %89 = load i64, i64* %incdec.ptr1.1, align 8, !dbg !317, !tbaa !130
  %incdec.ptr.2 = getelementptr inbounds i64, i64* %pi.0, i64 3, !dbg !317
  call void @llvm.dbg.value(metadata i64* %incdec.ptr.2, metadata !286, metadata !DIExpression()), !dbg !316
  store i64 %89, i64* %incdec.ptr.1, align 8, !dbg !317, !tbaa !130
  %incdec.ptr1.2 = getelementptr inbounds i64, i64* %pj.0, i64 3, !dbg !317
  call void @llvm.dbg.value(metadata i64* %incdec.ptr1.2, metadata !287, metadata !DIExpression()), !dbg !316
  store i64 %88, i64* %incdec.ptr1.1, align 8, !dbg !317, !tbaa !130
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !283, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !316
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !283, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !316
  call void @llvm.dbg.value(metadata i64* %incdec.ptr.2, metadata !286, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata i64* %incdec.ptr1.2, metadata !287, metadata !DIExpression()), !dbg !316
  %90 = load i64, i64* %incdec.ptr.2, align 8, !dbg !317, !tbaa !130
  call void @llvm.dbg.value(metadata i64 %90, metadata !288, metadata !DIExpression()), !dbg !324
  %91 = load i64, i64* %incdec.ptr1.2, align 8, !dbg !317, !tbaa !130
  %incdec.ptr.3 = getelementptr inbounds i64, i64* %pi.0, i64 4, !dbg !317
  call void @llvm.dbg.value(metadata i64* %incdec.ptr.3, metadata !286, metadata !DIExpression()), !dbg !316
  store i64 %91, i64* %incdec.ptr.2, align 8, !dbg !317, !tbaa !130
  %incdec.ptr1.3 = getelementptr inbounds i64, i64* %pj.0, i64 4, !dbg !317
  call void @llvm.dbg.value(metadata i64* %incdec.ptr1.3, metadata !287, metadata !DIExpression()), !dbg !316
  store i64 %90, i64* %incdec.ptr1.2, align 8, !dbg !317, !tbaa !130
  %dec.3 = add i64 %i.0, -4, !dbg !315
  call void @llvm.dbg.value(metadata i64 %dec.3, metadata !283, metadata !DIExpression()), !dbg !316
  %cmp2.not.3 = icmp eq i64 %dec.3, 0, !dbg !315
  br i1 %cmp2.not.3, label %if.end, label %do.body, !dbg !317, !llvm.loop !326

do.body7:                                         ; preds = %do.body7.prol.loopexit, %do.body7
  %i3.0 = phi i64 [ %dec12.3, %do.body7 ], [ %i3.0.unr, %do.body7.prol.loopexit ], !dbg !299
  %pi5.0 = phi i8* [ %incdec.ptr9.3, %do.body7 ], [ %pi5.0.unr, %do.body7.prol.loopexit ], !dbg !300
  %pj6.0 = phi i8* [ %incdec.ptr10.3, %do.body7 ], [ %pj6.0.unr, %do.body7.prol.loopexit ], !dbg !300
  call void @llvm.dbg.value(metadata i8* %pj6.0, metadata !293, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i8* %pi5.0, metadata !292, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i64 %i3.0, metadata !290, metadata !DIExpression()), !dbg !300
  %92 = load i8, i8* %pi5.0, align 1, !dbg !301, !tbaa !302
  call void @llvm.dbg.value(metadata i8 %92, metadata !294, metadata !DIExpression()), !dbg !312
  %93 = load i8, i8* %pj6.0, align 1, !dbg !301, !tbaa !302
  %incdec.ptr9 = getelementptr inbounds i8, i8* %pi5.0, i64 1, !dbg !301
  call void @llvm.dbg.value(metadata i8* %incdec.ptr9, metadata !292, metadata !DIExpression()), !dbg !300
  store i8 %93, i8* %pi5.0, align 1, !dbg !301, !tbaa !302
  %incdec.ptr10 = getelementptr inbounds i8, i8* %pj6.0, i64 1, !dbg !301
  call void @llvm.dbg.value(metadata i8* %incdec.ptr10, metadata !293, metadata !DIExpression()), !dbg !300
  store i8 %92, i8* %pj6.0, align 1, !dbg !301, !tbaa !302
  call void @llvm.dbg.value(metadata i64 %i3.0, metadata !290, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !300
  call void @llvm.dbg.value(metadata i8* %incdec.ptr10, metadata !293, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i8* %incdec.ptr9, metadata !292, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i64 %i3.0, metadata !290, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !300
  %94 = load i8, i8* %incdec.ptr9, align 1, !dbg !301, !tbaa !302
  call void @llvm.dbg.value(metadata i8 %94, metadata !294, metadata !DIExpression()), !dbg !312
  %95 = load i8, i8* %incdec.ptr10, align 1, !dbg !301, !tbaa !302
  %incdec.ptr9.1 = getelementptr inbounds i8, i8* %pi5.0, i64 2, !dbg !301
  call void @llvm.dbg.value(metadata i8* %incdec.ptr9.1, metadata !292, metadata !DIExpression()), !dbg !300
  store i8 %95, i8* %incdec.ptr9, align 1, !dbg !301, !tbaa !302
  %incdec.ptr10.1 = getelementptr inbounds i8, i8* %pj6.0, i64 2, !dbg !301
  call void @llvm.dbg.value(metadata i8* %incdec.ptr10.1, metadata !293, metadata !DIExpression()), !dbg !300
  store i8 %94, i8* %incdec.ptr10, align 1, !dbg !301, !tbaa !302
  call void @llvm.dbg.value(metadata i64 %i3.0, metadata !290, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !300
  call void @llvm.dbg.value(metadata i8* %incdec.ptr10.1, metadata !293, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i8* %incdec.ptr9.1, metadata !292, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i64 %i3.0, metadata !290, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !300
  %96 = load i8, i8* %incdec.ptr9.1, align 1, !dbg !301, !tbaa !302
  call void @llvm.dbg.value(metadata i8 %96, metadata !294, metadata !DIExpression()), !dbg !312
  %97 = load i8, i8* %incdec.ptr10.1, align 1, !dbg !301, !tbaa !302
  %incdec.ptr9.2 = getelementptr inbounds i8, i8* %pi5.0, i64 3, !dbg !301
  call void @llvm.dbg.value(metadata i8* %incdec.ptr9.2, metadata !292, metadata !DIExpression()), !dbg !300
  store i8 %97, i8* %incdec.ptr9.1, align 1, !dbg !301, !tbaa !302
  %incdec.ptr10.2 = getelementptr inbounds i8, i8* %pj6.0, i64 3, !dbg !301
  call void @llvm.dbg.value(metadata i8* %incdec.ptr10.2, metadata !293, metadata !DIExpression()), !dbg !300
  store i8 %96, i8* %incdec.ptr10.1, align 1, !dbg !301, !tbaa !302
  call void @llvm.dbg.value(metadata i64 %i3.0, metadata !290, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !300
  call void @llvm.dbg.value(metadata i8* %incdec.ptr10.2, metadata !293, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i8* %incdec.ptr9.2, metadata !292, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i64 %i3.0, metadata !290, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !300
  %98 = load i8, i8* %incdec.ptr9.2, align 1, !dbg !301, !tbaa !302
  call void @llvm.dbg.value(metadata i8 %98, metadata !294, metadata !DIExpression()), !dbg !312
  %99 = load i8, i8* %incdec.ptr10.2, align 1, !dbg !301, !tbaa !302
  %incdec.ptr9.3 = getelementptr inbounds i8, i8* %pi5.0, i64 4, !dbg !301
  call void @llvm.dbg.value(metadata i8* %incdec.ptr9.3, metadata !292, metadata !DIExpression()), !dbg !300
  store i8 %99, i8* %incdec.ptr9.2, align 1, !dbg !301, !tbaa !302
  %incdec.ptr10.3 = getelementptr inbounds i8, i8* %pj6.0, i64 4, !dbg !301
  call void @llvm.dbg.value(metadata i8* %incdec.ptr10.3, metadata !293, metadata !DIExpression()), !dbg !300
  store i8 %98, i8* %incdec.ptr10.2, align 1, !dbg !301, !tbaa !302
  %dec12.3 = add i64 %i3.0, -4, !dbg !299
  call void @llvm.dbg.value(metadata i64 %dec12.3, metadata !290, metadata !DIExpression()), !dbg !300
  %cmp13.not.3 = icmp eq i64 %dec12.3, 0, !dbg !299
  br i1 %cmp13.not.3, label %if.end, label %do.body7, !dbg !301, !llvm.loop !327

if.end:                                           ; preds = %do.body7.prol.loopexit, %do.body7, %do.body.prol.loopexit, %do.body, %middle.block, %vec.epilog.middle.block, %middle.block64
  ret void, !dbg !328
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @med3(i8* noundef %a, i8* noundef %b, i8* noundef %c, i32 (i8*, i8*)* nocapture noundef readonly %cmp) unnamed_addr #0 !dbg !329 {
entry:
  call void @llvm.dbg.value(metadata i8* %a, metadata !333, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.value(metadata i8* %b, metadata !334, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.value(metadata i8* %c, metadata !335, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %cmp, metadata !336, metadata !DIExpression()), !dbg !337
  %call = tail call i32 %cmp(i8* noundef %a, i8* noundef %b) #5, !dbg !338
  %cmp1 = icmp slt i32 %call, 0, !dbg !339
  %call2 = tail call i32 %cmp(i8* noundef %b, i8* noundef %c) #5, !dbg !337
  br i1 %cmp1, label %cond.true, label %cond.false11, !dbg !338

cond.true:                                        ; preds = %entry
  %cmp3 = icmp slt i32 %call2, 0, !dbg !340
  br i1 %cmp3, label %cond.end24, label %cond.false, !dbg !341

cond.false:                                       ; preds = %cond.true
  %call5 = tail call i32 %cmp(i8* noundef %a, i8* noundef %c) #5, !dbg !342
  %cmp6 = icmp slt i32 %call5, 0, !dbg !343
  %cond = select i1 %cmp6, i8* %c, i8* %a, !dbg !342
  br label %cond.end24, !dbg !341

cond.false11:                                     ; preds = %entry
  %cmp13 = icmp sgt i32 %call2, 0, !dbg !344
  br i1 %cmp13, label %cond.end24, label %cond.false15, !dbg !345

cond.false15:                                     ; preds = %cond.false11
  %call16 = tail call i32 %cmp(i8* noundef %a, i8* noundef %c) #5, !dbg !346
  %cmp17 = icmp slt i32 %call16, 0, !dbg !347
  %cond21 = select i1 %cmp17, i8* %a, i8* %c, !dbg !346
  br label %cond.end24, !dbg !345

cond.end24:                                       ; preds = %cond.false11, %cond.true, %cond.false15, %cond.false
  %cond25 = phi i8* [ %cond, %cond.false ], [ %cond21, %cond.false15 ], [ %b, %cond.true ], [ %b, %cond.false11 ], !dbg !338
  ret i8* %cond25, !dbg !348
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "pqsort.c", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "cf92be764c539ba6c24c126ff9707177")
!2 = !{!3, !5, !7, !9, !10}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !11, line: 46, baseType: !12)
!11 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!12 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!13 = !{i32 7, !"Dwarf Version", i32 5}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{!"clang version 14.0.0"}
!18 = distinct !DISubprogram(name: "pqsort", scope: !1, file: !1, line: 192, type: !19, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !27)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !9, !10, !10, !21, !10, !10}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DISubroutineType(types: !23)
!23 = !{!24, !25, !25}
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!27 = !{!28, !29, !30, !31, !32, !33}
!28 = !DILocalVariable(name: "a", arg: 1, scope: !18, file: !1, line: 192, type: !9)
!29 = !DILocalVariable(name: "n", arg: 2, scope: !18, file: !1, line: 192, type: !10)
!30 = !DILocalVariable(name: "es", arg: 3, scope: !18, file: !1, line: 192, type: !10)
!31 = !DILocalVariable(name: "cmp", arg: 4, scope: !18, file: !1, line: 193, type: !21)
!32 = !DILocalVariable(name: "lrange", arg: 5, scope: !18, file: !1, line: 193, type: !10)
!33 = !DILocalVariable(name: "rrange", arg: 6, scope: !18, file: !1, line: 193, type: !10)
!34 = !DILocation(line: 0, scope: !18)
!35 = !DILocation(line: 195, column: 51, scope: !18)
!36 = !DILocation(line: 195, column: 43, scope: !18)
!37 = !DILocation(line: 196, column: 52, scope: !18)
!38 = !DILocation(line: 196, column: 55, scope: !18)
!39 = !DILocation(line: 196, column: 43, scope: !18)
!40 = !DILocation(line: 196, column: 59, scope: !18)
!41 = !DILocation(line: 195, column: 5, scope: !18)
!42 = !DILocation(line: 197, column: 1, scope: !18)
!43 = distinct !DISubprogram(name: "_pqsort", scope: !1, file: !1, line: 100, type: !44, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !46)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !9, !10, !10, !21, !9, !9}
!46 = !{!47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !74, !77, !86, !92, !95, !104, !107, !108, !111, !112}
!47 = !DILocalVariable(name: "a", arg: 1, scope: !43, file: !1, line: 100, type: !9)
!48 = !DILocalVariable(name: "n", arg: 2, scope: !43, file: !1, line: 100, type: !10)
!49 = !DILocalVariable(name: "es", arg: 3, scope: !43, file: !1, line: 100, type: !10)
!50 = !DILocalVariable(name: "cmp", arg: 4, scope: !43, file: !1, line: 101, type: !21)
!51 = !DILocalVariable(name: "lrange", arg: 5, scope: !43, file: !1, line: 101, type: !9)
!52 = !DILocalVariable(name: "rrange", arg: 6, scope: !43, file: !1, line: 101, type: !9)
!53 = !DILocalVariable(name: "pa", scope: !43, file: !1, line: 103, type: !5)
!54 = !DILocalVariable(name: "pb", scope: !43, file: !1, line: 103, type: !5)
!55 = !DILocalVariable(name: "pc", scope: !43, file: !1, line: 103, type: !5)
!56 = !DILocalVariable(name: "pd", scope: !43, file: !1, line: 103, type: !5)
!57 = !DILocalVariable(name: "pl", scope: !43, file: !1, line: 103, type: !5)
!58 = !DILocalVariable(name: "pm", scope: !43, file: !1, line: 103, type: !5)
!59 = !DILocalVariable(name: "pn", scope: !43, file: !1, line: 103, type: !5)
!60 = !DILocalVariable(name: "d", scope: !43, file: !1, line: 104, type: !10)
!61 = !DILocalVariable(name: "r", scope: !43, file: !1, line: 104, type: !10)
!62 = !DILocalVariable(name: "swaptype", scope: !43, file: !1, line: 105, type: !24)
!63 = !DILocalVariable(name: "swap_cnt", scope: !43, file: !1, line: 105, type: !24)
!64 = !DILocalVariable(name: "cmp_result", scope: !43, file: !1, line: 105, type: !24)
!65 = !DILocalVariable(name: "t", scope: !66, file: !1, line: 113, type: !8)
!66 = distinct !DILexicalBlock(scope: !67, file: !1, line: 113, column: 5)
!67 = distinct !DILexicalBlock(scope: !68, file: !1, line: 113, column: 5)
!68 = distinct !DILexicalBlock(scope: !69, file: !1, line: 111, column: 4)
!69 = distinct !DILexicalBlock(scope: !70, file: !1, line: 111, column: 4)
!70 = distinct !DILexicalBlock(scope: !71, file: !1, line: 110, column: 3)
!71 = distinct !DILexicalBlock(scope: !72, file: !1, line: 110, column: 3)
!72 = distinct !DILexicalBlock(scope: !73, file: !1, line: 109, column: 13)
!73 = distinct !DILexicalBlock(scope: !43, file: !1, line: 109, column: 6)
!74 = !DILocalVariable(name: "t", scope: !75, file: !1, line: 128, type: !8)
!75 = distinct !DILexicalBlock(scope: !76, file: !1, line: 128, column: 2)
!76 = distinct !DILexicalBlock(scope: !43, file: !1, line: 128, column: 2)
!77 = !DILocalVariable(name: "t", scope: !78, file: !1, line: 136, type: !8)
!78 = distinct !DILexicalBlock(scope: !79, file: !1, line: 136, column: 5)
!79 = distinct !DILexicalBlock(scope: !80, file: !1, line: 136, column: 5)
!80 = distinct !DILexicalBlock(scope: !81, file: !1, line: 134, column: 25)
!81 = distinct !DILexicalBlock(scope: !82, file: !1, line: 134, column: 8)
!82 = distinct !DILexicalBlock(scope: !83, file: !1, line: 133, column: 54)
!83 = distinct !DILexicalBlock(scope: !84, file: !1, line: 132, column: 11)
!84 = distinct !DILexicalBlock(scope: !85, file: !1, line: 132, column: 2)
!85 = distinct !DILexicalBlock(scope: !43, file: !1, line: 132, column: 2)
!86 = !DILocalVariable(name: "t", scope: !87, file: !1, line: 144, type: !8)
!87 = distinct !DILexicalBlock(scope: !88, file: !1, line: 144, column: 5)
!88 = distinct !DILexicalBlock(scope: !89, file: !1, line: 144, column: 5)
!89 = distinct !DILexicalBlock(scope: !90, file: !1, line: 142, column: 25)
!90 = distinct !DILexicalBlock(scope: !91, file: !1, line: 142, column: 8)
!91 = distinct !DILexicalBlock(scope: !83, file: !1, line: 141, column: 54)
!92 = !DILocalVariable(name: "t", scope: !93, file: !1, line: 151, type: !8)
!93 = distinct !DILexicalBlock(scope: !94, file: !1, line: 151, column: 3)
!94 = distinct !DILexicalBlock(scope: !83, file: !1, line: 151, column: 3)
!95 = !DILocalVariable(name: "t", scope: !96, file: !1, line: 160, type: !8)
!96 = distinct !DILexicalBlock(scope: !97, file: !1, line: 160, column: 5)
!97 = distinct !DILexicalBlock(scope: !98, file: !1, line: 160, column: 5)
!98 = distinct !DILexicalBlock(scope: !99, file: !1, line: 158, column: 4)
!99 = distinct !DILexicalBlock(scope: !100, file: !1, line: 158, column: 4)
!100 = distinct !DILexicalBlock(scope: !101, file: !1, line: 157, column: 3)
!101 = distinct !DILexicalBlock(scope: !102, file: !1, line: 157, column: 3)
!102 = distinct !DILexicalBlock(scope: !103, file: !1, line: 156, column: 21)
!103 = distinct !DILexicalBlock(scope: !43, file: !1, line: 156, column: 6)
!104 = !DILocalVariable(name: "_l", scope: !105, file: !1, line: 170, type: !9)
!105 = distinct !DILexicalBlock(scope: !106, file: !1, line: 169, column: 26)
!106 = distinct !DILexicalBlock(scope: !43, file: !1, line: 169, column: 6)
!107 = !DILocalVariable(name: "_r", scope: !105, file: !1, line: 170, type: !9)
!108 = !DILocalVariable(name: "_l", scope: !109, file: !1, line: 176, type: !9)
!109 = distinct !DILexicalBlock(scope: !110, file: !1, line: 175, column: 26)
!110 = distinct !DILexicalBlock(scope: !43, file: !1, line: 175, column: 6)
!111 = !DILocalVariable(name: "_r", scope: !109, file: !1, line: 176, type: !9)
!112 = !DILabel(scope: !43, name: "loop", file: !1, line: 107)
!113 = !DILocation(line: 111, column: 44, scope: !68)
!114 = !DILocation(line: 0, scope: !43)
!115 = !DILocation(line: 105, column: 2, scope: !43)
!116 = !DILocation(line: 107, column: 1, scope: !43)
!117 = !DILocation(line: 107, column: 7, scope: !43)
!118 = !DILocation(line: 109, column: 8, scope: !73)
!119 = !DILocation(line: 109, column: 6, scope: !43)
!120 = !DILocation(line: 110, column: 33, scope: !70)
!121 = !DILocation(line: 110, column: 3, scope: !71)
!122 = !DILocation(line: 0, scope: !71)
!123 = !DILocation(line: 111, column: 21, scope: !68)
!124 = !DILocation(line: 111, column: 34, scope: !68)
!125 = !DILocation(line: 111, column: 37, scope: !68)
!126 = !DILocation(line: 111, column: 54, scope: !68)
!127 = !DILocation(line: 111, column: 4, scope: !69)
!128 = !DILocation(line: 113, column: 5, scope: !68)
!129 = !DILocation(line: 113, column: 5, scope: !66)
!130 = !{!131, !131, i64 0}
!131 = !{!"long", !132, i64 0}
!132 = !{!"omnipotent char", !133, i64 0}
!133 = !{!"Simple C/C++ TBAA"}
!134 = !DILocation(line: 0, scope: !66)
!135 = !DILocation(line: 113, column: 5, scope: !67)
!136 = distinct !{!136, !127, !137}
!137 = !DILocation(line: 113, column: 5, scope: !69)
!138 = distinct !{!138, !121, !139}
!139 = !DILocation(line: 113, column: 5, scope: !71)
!140 = !DILocation(line: 116, column: 23, scope: !43)
!141 = !DILocation(line: 116, column: 28, scope: !43)
!142 = !DILocation(line: 116, column: 18, scope: !43)
!143 = !DILocation(line: 117, column: 8, scope: !144)
!144 = distinct !DILexicalBlock(scope: !43, file: !1, line: 117, column: 6)
!145 = !DILocation(line: 117, column: 6, scope: !43)
!146 = !DILocation(line: 119, column: 24, scope: !147)
!147 = distinct !DILexicalBlock(scope: !144, file: !1, line: 117, column: 13)
!148 = !DILocation(line: 119, column: 29, scope: !147)
!149 = !DILocation(line: 119, column: 19, scope: !147)
!150 = !DILocation(line: 120, column: 9, scope: !151)
!151 = distinct !DILexicalBlock(scope: !147, file: !1, line: 120, column: 7)
!152 = !DILocation(line: 120, column: 7, scope: !147)
!153 = !DILocation(line: 121, column: 11, scope: !154)
!154 = distinct !DILexicalBlock(scope: !151, file: !1, line: 120, column: 15)
!155 = !DILocation(line: 121, column: 16, scope: !154)
!156 = !DILocation(line: 122, column: 21, scope: !154)
!157 = !DILocation(line: 122, column: 33, scope: !154)
!158 = !DILocation(line: 122, column: 29, scope: !154)
!159 = !DILocation(line: 122, column: 9, scope: !154)
!160 = !DILocation(line: 123, column: 17, scope: !154)
!161 = !DILocation(line: 123, column: 29, scope: !154)
!162 = !DILocation(line: 123, column: 9, scope: !154)
!163 = !DILocation(line: 124, column: 17, scope: !154)
!164 = !DILocation(line: 124, column: 29, scope: !154)
!165 = !DILocation(line: 124, column: 9, scope: !154)
!166 = !DILocation(line: 125, column: 3, scope: !154)
!167 = !DILocation(line: 0, scope: !147)
!168 = !DILocation(line: 126, column: 8, scope: !147)
!169 = !DILocation(line: 127, column: 2, scope: !147)
!170 = !DILocation(line: 128, column: 2, scope: !76)
!171 = !DILocation(line: 128, column: 2, scope: !43)
!172 = !DILocation(line: 128, column: 2, scope: !75)
!173 = !DILocation(line: 0, scope: !75)
!174 = !DILocation(line: 129, column: 23, scope: !43)
!175 = !DILocation(line: 131, column: 28, scope: !43)
!176 = !DILocation(line: 131, column: 33, scope: !43)
!177 = !DILocation(line: 131, column: 23, scope: !43)
!178 = !DILocation(line: 132, column: 2, scope: !43)
!179 = !DILocation(line: 131, column: 10, scope: !43)
!180 = !DILocation(line: 129, column: 5, scope: !43)
!181 = !DILocation(line: 133, column: 13, scope: !83)
!182 = !DILocation(line: 133, column: 19, scope: !83)
!183 = !DILocation(line: 133, column: 36, scope: !83)
!184 = !DILocation(line: 133, column: 48, scope: !83)
!185 = !DILocation(line: 133, column: 3, scope: !83)
!186 = !DILocation(line: 134, column: 19, scope: !81)
!187 = !DILocation(line: 134, column: 8, scope: !82)
!188 = !DILocation(line: 136, column: 5, scope: !80)
!189 = !DILocation(line: 136, column: 5, scope: !78)
!190 = !DILocation(line: 0, scope: !78)
!191 = !DILocation(line: 136, column: 5, scope: !79)
!192 = !DILocation(line: 137, column: 8, scope: !80)
!193 = !DILocation(line: 138, column: 4, scope: !80)
!194 = !DILocation(line: 139, column: 7, scope: !82)
!195 = distinct !{!195, !185, !196}
!196 = !DILocation(line: 140, column: 3, scope: !83)
!197 = !DILocation(line: 141, column: 13, scope: !83)
!198 = !DILocation(line: 141, column: 19, scope: !83)
!199 = !DILocation(line: 141, column: 36, scope: !83)
!200 = !DILocation(line: 141, column: 48, scope: !83)
!201 = !DILocation(line: 141, column: 3, scope: !83)
!202 = !DILocation(line: 142, column: 19, scope: !90)
!203 = !DILocation(line: 142, column: 8, scope: !91)
!204 = !DILocation(line: 144, column: 5, scope: !89)
!205 = !DILocation(line: 144, column: 5, scope: !87)
!206 = !DILocation(line: 0, scope: !87)
!207 = !DILocation(line: 144, column: 5, scope: !88)
!208 = !DILocation(line: 145, column: 8, scope: !89)
!209 = !DILocation(line: 146, column: 4, scope: !89)
!210 = !DILocation(line: 147, column: 7, scope: !91)
!211 = distinct !{!211, !201, !212}
!212 = !DILocation(line: 148, column: 3, scope: !83)
!213 = !DILocation(line: 151, column: 3, scope: !83)
!214 = !DILocation(line: 151, column: 3, scope: !93)
!215 = !DILocation(line: 0, scope: !93)
!216 = !DILocation(line: 151, column: 3, scope: !94)
!217 = !DILocation(line: 153, column: 6, scope: !83)
!218 = !DILocation(line: 154, column: 6, scope: !83)
!219 = !DILocation(line: 132, column: 2, scope: !84)
!220 = distinct !{!220, !221, !222}
!221 = !DILocation(line: 132, column: 2, scope: !85)
!222 = !DILocation(line: 155, column: 2, scope: !85)
!223 = !DILocation(line: 156, column: 15, scope: !103)
!224 = !DILocation(line: 156, column: 6, scope: !43)
!225 = !DILocation(line: 157, column: 33, scope: !100)
!226 = !DILocation(line: 157, column: 3, scope: !101)
!227 = !DILocation(line: 158, column: 21, scope: !98)
!228 = !DILocation(line: 158, column: 34, scope: !98)
!229 = !DILocation(line: 158, column: 44, scope: !98)
!230 = !DILocation(line: 158, column: 37, scope: !98)
!231 = !DILocation(line: 158, column: 54, scope: !98)
!232 = !DILocation(line: 158, column: 4, scope: !99)
!233 = !DILocation(line: 160, column: 5, scope: !98)
!234 = !DILocation(line: 160, column: 5, scope: !96)
!235 = !DILocation(line: 0, scope: !96)
!236 = !DILocation(line: 160, column: 5, scope: !97)
!237 = distinct !{!237, !232, !238}
!238 = !DILocation(line: 160, column: 5, scope: !99)
!239 = !DILocation(line: 157, column: 59, scope: !100)
!240 = distinct !{!240, !226, !241}
!241 = !DILocation(line: 160, column: 5, scope: !101)
!242 = !DILocation(line: 165, column: 6, scope: !43)
!243 = !DILocation(line: 166, column: 2, scope: !244)
!244 = distinct !DILexicalBlock(scope: !43, file: !1, line: 166, column: 2)
!245 = !DILocation(line: 166, column: 2, scope: !43)
!246 = !DILocation(line: 167, column: 6, scope: !43)
!247 = !DILocation(line: 168, column: 2, scope: !248)
!248 = distinct !DILexicalBlock(scope: !43, file: !1, line: 168, column: 2)
!249 = !DILocation(line: 168, column: 2, scope: !43)
!250 = !DILocation(line: 169, column: 20, scope: !106)
!251 = !DILocation(line: 169, column: 6, scope: !43)
!252 = !DILocation(line: 0, scope: !105)
!253 = !DILocation(line: 170, column: 56, scope: !105)
!254 = !DILocation(line: 170, column: 58, scope: !105)
!255 = !DILocation(line: 171, column: 31, scope: !256)
!256 = distinct !DILexicalBlock(scope: !105, file: !1, line: 171, column: 21)
!257 = !DILocation(line: 171, column: 36, scope: !256)
!258 = !DILocation(line: 172, column: 29, scope: !256)
!259 = !DILocation(line: 172, column: 34, scope: !256)
!260 = !DILocation(line: 173, column: 20, scope: !256)
!261 = !DILocation(line: 173, column: 7, scope: !256)
!262 = !DILocation(line: 175, column: 20, scope: !110)
!263 = !DILocation(line: 175, column: 6, scope: !43)
!264 = !DILocation(line: 179, column: 10, scope: !109)
!265 = !DILocation(line: 0, scope: !109)
!266 = !DILocation(line: 183, column: 41, scope: !109)
!267 = !DILocation(line: 183, column: 43, scope: !109)
!268 = !DILocation(line: 184, column: 31, scope: !269)
!269 = distinct !DILexicalBlock(scope: !109, file: !1, line: 184, column: 21)
!270 = !DILocation(line: 184, column: 36, scope: !269)
!271 = !DILocation(line: 180, column: 9, scope: !109)
!272 = !DILocation(line: 185, column: 29, scope: !269)
!273 = !DILocation(line: 185, column: 34, scope: !269)
!274 = !DILocation(line: 189, column: 1, scope: !43)
!275 = distinct !DISubprogram(name: "swapfunc", scope: !1, file: !1, line: 70, type: !276, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !278)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !5, !5, !10, !24}
!278 = !{!279, !280, !281, !282, !283, !286, !287, !288, !290, !292, !293, !294}
!279 = !DILocalVariable(name: "a", arg: 1, scope: !275, file: !1, line: 70, type: !5)
!280 = !DILocalVariable(name: "b", arg: 2, scope: !275, file: !1, line: 70, type: !5)
!281 = !DILocalVariable(name: "n", arg: 3, scope: !275, file: !1, line: 70, type: !10)
!282 = !DILocalVariable(name: "swaptype", arg: 4, scope: !275, file: !1, line: 70, type: !24)
!283 = !DILocalVariable(name: "i", scope: !284, file: !1, line: 74, type: !10)
!284 = distinct !DILexicalBlock(scope: !285, file: !1, line: 74, column: 3)
!285 = distinct !DILexicalBlock(scope: !275, file: !1, line: 73, column: 6)
!286 = !DILocalVariable(name: "pi", scope: !284, file: !1, line: 74, type: !7)
!287 = !DILocalVariable(name: "pj", scope: !284, file: !1, line: 74, type: !7)
!288 = !DILocalVariable(name: "t", scope: !289, file: !1, line: 74, type: !8)
!289 = distinct !DILexicalBlock(scope: !284, file: !1, line: 74, column: 3)
!290 = !DILocalVariable(name: "i", scope: !291, file: !1, line: 76, type: !10)
!291 = distinct !DILexicalBlock(scope: !285, file: !1, line: 76, column: 3)
!292 = !DILocalVariable(name: "pi", scope: !291, file: !1, line: 76, type: !5)
!293 = !DILocalVariable(name: "pj", scope: !291, file: !1, line: 76, type: !5)
!294 = !DILocalVariable(name: "t", scope: !295, file: !1, line: 76, type: !6)
!295 = distinct !DILexicalBlock(scope: !291, file: !1, line: 76, column: 3)
!296 = !DILocation(line: 0, scope: !275)
!297 = !DILocation(line: 73, column: 15, scope: !285)
!298 = !DILocation(line: 73, column: 6, scope: !275)
!299 = !DILocation(line: 76, column: 3, scope: !291)
!300 = !DILocation(line: 0, scope: !291)
!301 = !DILocation(line: 76, column: 3, scope: !295)
!302 = !{!132, !132, i64 0}
!303 = !{!304}
!304 = distinct !{!304, !305}
!305 = distinct !{!305, !"LVerDomain"}
!306 = !{!307}
!307 = distinct !{!307, !305}
!308 = distinct !{!308, !299, !299, !309}
!309 = !{!"llvm.loop.isvectorized", i32 1}
!310 = distinct !{!310, !299, !299, !309, !311}
!311 = !{!"llvm.loop.unroll.runtime.disable"}
!312 = !DILocation(line: 0, scope: !295)
!313 = distinct !{!313, !314}
!314 = !{!"llvm.loop.unroll.disable"}
!315 = !DILocation(line: 74, column: 3, scope: !284)
!316 = !DILocation(line: 0, scope: !284)
!317 = !DILocation(line: 74, column: 3, scope: !289)
!318 = !{!319}
!319 = distinct !{!319, !320}
!320 = distinct !{!320, !"LVerDomain"}
!321 = !{!322}
!322 = distinct !{!322, !320}
!323 = distinct !{!323, !315, !315, !309}
!324 = !DILocation(line: 0, scope: !289)
!325 = distinct !{!325, !314}
!326 = distinct !{!326, !315, !315, !309}
!327 = distinct !{!327, !299, !299, !309}
!328 = !DILocation(line: 77, column: 1, scope: !275)
!329 = distinct !DISubprogram(name: "med3", scope: !1, file: !1, line: 90, type: !330, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !332)
!330 = !DISubroutineType(types: !331)
!331 = !{!5, !5, !5, !5, !21}
!332 = !{!333, !334, !335, !336}
!333 = !DILocalVariable(name: "a", arg: 1, scope: !329, file: !1, line: 90, type: !5)
!334 = !DILocalVariable(name: "b", arg: 2, scope: !329, file: !1, line: 90, type: !5)
!335 = !DILocalVariable(name: "c", arg: 3, scope: !329, file: !1, line: 90, type: !5)
!336 = !DILocalVariable(name: "cmp", arg: 4, scope: !329, file: !1, line: 91, type: !21)
!337 = !DILocation(line: 0, scope: !329)
!338 = !DILocation(line: 94, column: 9, scope: !329)
!339 = !DILocation(line: 94, column: 19, scope: !329)
!340 = !DILocation(line: 95, column: 20, scope: !329)
!341 = !DILocation(line: 95, column: 10, scope: !329)
!342 = !DILocation(line: 95, column: 31, scope: !329)
!343 = !DILocation(line: 95, column: 41, scope: !329)
!344 = !DILocation(line: 96, column: 27, scope: !329)
!345 = !DILocation(line: 96, column: 17, scope: !329)
!346 = !DILocation(line: 96, column: 38, scope: !329)
!347 = !DILocation(line: 96, column: 48, scope: !329)
!348 = !DILocation(line: 94, column: 2, scope: !329)
