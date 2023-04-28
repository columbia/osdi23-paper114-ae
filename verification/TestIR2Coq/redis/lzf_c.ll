; ModuleID = 'lzf_c.c'
source_filename = "lzf_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i32 @lzf_compress(i8* noundef %in_data, i32 noundef %in_len, i8* noundef %out_data, i32 noundef %out_len) local_unnamed_addr #0 !dbg !17 {
entry:
  %in_data652 = ptrtoint i8* %in_data to i64
  %htab = alloca [65536 x i8*], align 16
  call void @llvm.dbg.value(metadata i8* %in_data, metadata !26, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i32 %in_len, metadata !27, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i8* %out_data, metadata !28, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i32 %out_len, metadata !29, metadata !DIExpression()), !dbg !52
  %0 = bitcast [65536 x i8*]* %htab to i8*, !dbg !53
  call void @llvm.lifetime.start.p0i8(i64 524288, i8* nonnull %0) #4, !dbg !53
  call void @llvm.dbg.declare(metadata [65536 x i8*]* %htab, metadata !30, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.value(metadata i8* %in_data, metadata !37, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i8* %out_data, metadata !38, metadata !DIExpression()), !dbg !52
  %idx.ext = zext i32 %in_len to i64, !dbg !55
  %add.ptr = getelementptr inbounds i8, i8* %in_data, i64 %idx.ext, !dbg !55
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !39, metadata !DIExpression()), !dbg !52
  %idx.ext1 = zext i32 %out_len to i64, !dbg !56
  %add.ptr2 = getelementptr inbounds i8, i8* %out_data, i64 %idx.ext1, !dbg !56
  call void @llvm.dbg.value(metadata i8* %add.ptr2, metadata !40, metadata !DIExpression()), !dbg !52
  %tobool = icmp ne i32 %in_len, 0, !dbg !57
  %tobool3 = icmp ne i32 %out_len, 0
  %or.cond = and i1 %tobool, %tobool3, !dbg !59
  br i1 %or.cond, label %if.end, label %cleanup397, !dbg !59

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !45, metadata !DIExpression()), !dbg !52
  %incdec.ptr = getelementptr inbounds i8, i8* %out_data, i64 1, !dbg !60
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !38, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata !DIArgList(i8 undef, i8 undef), metadata !44, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value)), !dbg !52
  %add.ptr6 = getelementptr inbounds i8, i8* %add.ptr, i64 -2
  call void @llvm.dbg.value(metadata i32 0, metadata !45, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata !DIArgList(i8 undef, i8 undef), metadata !44, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value)), !dbg !52
  call void @llvm.dbg.value(metadata i8* %in_data, metadata !37, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !38, metadata !DIExpression()), !dbg !52
  %cmp626 = icmp ugt i8* %add.ptr6, %in_data, !dbg !61
  br i1 %cmp626, label %while.body.lr.ph, label %while.end, !dbg !62

while.body.lr.ph:                                 ; preds = %if.end
  %1 = load i8, i8* %in_data, align 1, !dbg !63, !tbaa !64
  call void @llvm.dbg.value(metadata !DIArgList(i8 %1, i8 undef), metadata !44, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value)), !dbg !52
  %conv = zext i8 %1 to i32, !dbg !63
  call void @llvm.dbg.value(metadata !DIArgList(i32 %conv, i8 undef), metadata !44, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value)), !dbg !52
  %shl = shl nuw nsw i32 %conv, 8, !dbg !63
  call void @llvm.dbg.value(metadata !DIArgList(i32 %shl, i8 undef), metadata !44, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value)), !dbg !52
  %arrayidx4 = getelementptr inbounds i8, i8* %in_data, i64 1, !dbg !63
  %2 = load i8, i8* %arrayidx4, align 1, !dbg !63, !tbaa !64
  call void @llvm.dbg.value(metadata !DIArgList(i8 undef, i8 %2), metadata !44, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value)), !dbg !52
  %conv5 = zext i8 %2 to i32, !dbg !63
  call void @llvm.dbg.value(metadata !DIArgList(i8 undef, i32 %conv5), metadata !44, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !52
  %or = or i32 %shl, %conv5, !dbg !63
  call void @llvm.dbg.value(metadata i32 %or, metadata !44, metadata !DIExpression()), !dbg !52
  %sub.ptr.lhs.cast36 = ptrtoint i8* %add.ptr to i64
  br label %while.body, !dbg !62

while.body:                                       ; preds = %while.body.lr.ph, %if.end351
  %lit.0631 = phi i32 [ 0, %while.body.lr.ph ], [ %lit.2, %if.end351 ]
  %hval.0630 = phi i32 [ %or, %while.body.lr.ph ], [ %hval.2, %if.end351 ]
  %ip.0628 = phi i8* [ %in_data, %while.body.lr.ph ], [ %ip.2, %if.end351 ]
  %op.0627 = phi i8* [ %incdec.ptr, %while.body.lr.ph ], [ %op.3, %if.end351 ]
  call void @llvm.dbg.value(metadata i32 %lit.0631, metadata !45, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i32 %hval.0630, metadata !44, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i8* %ip.0628, metadata !37, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i8* %op.0627, metadata !38, metadata !DIExpression()), !dbg !52
  %shl8 = shl i32 %hval.0630, 8, !dbg !67
  %arrayidx9 = getelementptr inbounds i8, i8* %ip.0628, i64 2, !dbg !67
  %3 = load i8, i8* %arrayidx9, align 1, !dbg !67, !tbaa !64
  %conv10 = zext i8 %3 to i32, !dbg !67
  %or11 = or i32 %shl8, %conv10, !dbg !67
  call void @llvm.dbg.value(metadata !DIArgList(i32 %shl8, i32 %conv10), metadata !44, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !52
  %mul.neg = mul i32 %or11, -5, !dbg !68
  %sub = add i32 %mul.neg, %hval.0630, !dbg !68
  %and = and i32 %sub, 65535, !dbg !68
  %idx.ext12 = zext i32 %and to i64, !dbg !69
  %add.ptr13 = getelementptr inbounds [65536 x i8*], [65536 x i8*]* %htab, i64 0, i64 %idx.ext12, !dbg !69
  call void @llvm.dbg.value(metadata i8** %add.ptr13, metadata !35, metadata !DIExpression()), !dbg !52
  %4 = load i8*, i8** %add.ptr13, align 8, !dbg !70, !tbaa !71
  call void @llvm.dbg.value(metadata i8* %4, metadata !41, metadata !DIExpression()), !dbg !52
  store i8* %ip.0628, i8** %add.ptr13, align 8, !dbg !73, !tbaa !71
  %sub.ptr.lhs.cast = ptrtoint i8* %ip.0628 to i64, !dbg !74
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64, !dbg !74
  %5 = xor i64 %sub.ptr.rhs.cast, -1, !dbg !75
  %sub14 = add i64 %5, %sub.ptr.lhs.cast, !dbg !75
  call void @llvm.dbg.value(metadata i64 %sub14, metadata !42, metadata !DIExpression()), !dbg !52
  %cmp15 = icmp ult i64 %sub14, 8192, !dbg !76
  br i1 %cmp15, label %land.lhs.true, label %if.else322, !dbg !77

land.lhs.true:                                    ; preds = %while.body
  %add.ptr17 = getelementptr inbounds i8, i8* %ip.0628, i64 4, !dbg !78
  %cmp18 = icmp ult i8* %add.ptr17, %add.ptr, !dbg !79
  %cmp21 = icmp ugt i8* %4, %in_data
  %or.cond596 = select i1 %cmp18, i1 %cmp21, i1 false, !dbg !80
  br i1 %or.cond596, label %land.lhs.true23, label %if.else322, !dbg !80

land.lhs.true23:                                  ; preds = %land.lhs.true
  %6 = bitcast i8* %4 to i16*, !dbg !81
  %7 = load i16, i16* %6, align 2, !dbg !81, !tbaa !82
  %8 = bitcast i8* %ip.0628 to i16*, !dbg !84
  %9 = load i16, i16* %8, align 2, !dbg !84, !tbaa !82
  %cmp26 = icmp eq i16 %7, %9, !dbg !85
  br i1 %cmp26, label %land.lhs.true28, label %if.else322, !dbg !86

land.lhs.true28:                                  ; preds = %land.lhs.true23
  %arrayidx29 = getelementptr inbounds i8, i8* %4, i64 2, !dbg !87
  %10 = load i8, i8* %arrayidx29, align 1, !dbg !87, !tbaa !64
  %11 = load i8, i8* %arrayidx9, align 1, !dbg !88, !tbaa !64
  %cmp33 = icmp eq i8 %10, %11, !dbg !89
  br i1 %cmp33, label %if.then35, label %if.else322, !dbg !90

if.then35:                                        ; preds = %land.lhs.true28
  call void @llvm.dbg.value(metadata i32 2, metadata !47, metadata !DIExpression()), !dbg !91
  %sub.ptr.sub38 = sub i64 %sub.ptr.lhs.cast36, %sub.ptr.lhs.cast, !dbg !92
  %12 = trunc i64 %sub.ptr.sub38 to i32, !dbg !93
  %conv41 = add i32 %12, -2, !dbg !93
  call void @llvm.dbg.value(metadata i32 %conv41, metadata !51, metadata !DIExpression()), !dbg !91
  %13 = icmp ult i32 %conv41, 264, !dbg !94
  %cond = select i1 %13, i32 %conv41, i32 264, !dbg !94
  call void @llvm.dbg.value(metadata i32 %cond, metadata !51, metadata !DIExpression()), !dbg !91
  %14 = trunc i32 %lit.0631 to i8, !dbg !95
  %conv45 = add i8 %14, -1, !dbg !95
  %sub47 = xor i32 %lit.0631, -1, !dbg !96
  %idxprom = sext i32 %sub47 to i64, !dbg !97
  %arrayidx48 = getelementptr inbounds i8, i8* %op.0627, i64 %idxprom, !dbg !97
  store i8 %conv45, i8* %arrayidx48, align 1, !dbg !98, !tbaa !64
  %tobool49.not = icmp eq i32 %lit.0631, 0, !dbg !99
  %.neg595 = sext i1 %tobool49.not to i64
  %add.ptr51 = getelementptr inbounds i8, i8* %op.0627, i64 %.neg595, !dbg !100
  call void @llvm.dbg.value(metadata i8* %add.ptr51, metadata !38, metadata !DIExpression()), !dbg !52
  %add.ptr52 = getelementptr inbounds i8, i8* %add.ptr51, i64 3, !dbg !101
  %add.ptr53 = getelementptr inbounds i8, i8* %add.ptr52, i64 1, !dbg !101
  %cmp54.not = icmp ult i8* %add.ptr53, %add.ptr2, !dbg !101
  br i1 %cmp54.not, label %for.cond, label %cleanup397, !dbg !103, !prof !104

for.cond:                                         ; preds = %if.then35
  %cmp62 = icmp ugt i32 %cond, 16, !dbg !105
  br i1 %cmp62, label %if.then69, label %if.end245, !dbg !110, !prof !104

if.then69:                                        ; preds = %for.cond
  call void @llvm.dbg.value(metadata i32 3, metadata !47, metadata !DIExpression()), !dbg !91
  %arrayidx71 = getelementptr inbounds i8, i8* %4, i64 3, !dbg !111
  %15 = load i8, i8* %arrayidx71, align 1, !dbg !111, !tbaa !64
  %arrayidx74 = getelementptr inbounds i8, i8* %ip.0628, i64 3, !dbg !114
  %16 = load i8, i8* %arrayidx74, align 1, !dbg !114, !tbaa !64
  %cmp76.not = icmp eq i8 %15, %16, !dbg !115
  br i1 %cmp76.not, label %if.end79, label %for.end.thread607, !dbg !116

if.end79:                                         ; preds = %if.then69
  call void @llvm.dbg.value(metadata i32 4, metadata !47, metadata !DIExpression()), !dbg !91
  %arrayidx82 = getelementptr inbounds i8, i8* %4, i64 4, !dbg !117
  %17 = load i8, i8* %arrayidx82, align 1, !dbg !117, !tbaa !64
  %18 = load i8, i8* %add.ptr17, align 1, !dbg !119, !tbaa !64
  %cmp87.not = icmp eq i8 %17, %18, !dbg !120
  br i1 %cmp87.not, label %if.end90, label %for.end.thread607, !dbg !121

if.end90:                                         ; preds = %if.end79
  call void @llvm.dbg.value(metadata i32 5, metadata !47, metadata !DIExpression()), !dbg !91
  %arrayidx93 = getelementptr inbounds i8, i8* %4, i64 5, !dbg !122
  %19 = load i8, i8* %arrayidx93, align 1, !dbg !122, !tbaa !64
  %arrayidx96 = getelementptr inbounds i8, i8* %ip.0628, i64 5, !dbg !124
  %20 = load i8, i8* %arrayidx96, align 1, !dbg !124, !tbaa !64
  %cmp98.not = icmp eq i8 %19, %20, !dbg !125
  br i1 %cmp98.not, label %if.end101, label %for.end.thread607, !dbg !126

if.end101:                                        ; preds = %if.end90
  call void @llvm.dbg.value(metadata i32 6, metadata !47, metadata !DIExpression()), !dbg !91
  %arrayidx104 = getelementptr inbounds i8, i8* %4, i64 6, !dbg !127
  %21 = load i8, i8* %arrayidx104, align 1, !dbg !127, !tbaa !64
  %arrayidx107 = getelementptr inbounds i8, i8* %ip.0628, i64 6, !dbg !129
  %22 = load i8, i8* %arrayidx107, align 1, !dbg !129, !tbaa !64
  %cmp109.not = icmp eq i8 %21, %22, !dbg !130
  br i1 %cmp109.not, label %if.end112, label %for.end.thread607, !dbg !131

if.end112:                                        ; preds = %if.end101
  call void @llvm.dbg.value(metadata i32 7, metadata !47, metadata !DIExpression()), !dbg !91
  %arrayidx115 = getelementptr inbounds i8, i8* %4, i64 7, !dbg !132
  %23 = load i8, i8* %arrayidx115, align 1, !dbg !132, !tbaa !64
  %arrayidx118 = getelementptr inbounds i8, i8* %ip.0628, i64 7, !dbg !134
  %24 = load i8, i8* %arrayidx118, align 1, !dbg !134, !tbaa !64
  %cmp120.not = icmp eq i8 %23, %24, !dbg !135
  br i1 %cmp120.not, label %if.end123, label %for.end.thread607, !dbg !136

if.end123:                                        ; preds = %if.end112
  call void @llvm.dbg.value(metadata i32 8, metadata !47, metadata !DIExpression()), !dbg !91
  %arrayidx126 = getelementptr inbounds i8, i8* %4, i64 8, !dbg !137
  %25 = load i8, i8* %arrayidx126, align 1, !dbg !137, !tbaa !64
  %arrayidx129 = getelementptr inbounds i8, i8* %ip.0628, i64 8, !dbg !139
  %26 = load i8, i8* %arrayidx129, align 1, !dbg !139, !tbaa !64
  %cmp131.not = icmp eq i8 %25, %26, !dbg !140
  br i1 %cmp131.not, label %if.end134, label %for.end.thread607, !dbg !141

if.end134:                                        ; preds = %if.end123
  call void @llvm.dbg.value(metadata i32 9, metadata !47, metadata !DIExpression()), !dbg !91
  %arrayidx137 = getelementptr inbounds i8, i8* %4, i64 9, !dbg !142
  %27 = load i8, i8* %arrayidx137, align 1, !dbg !142, !tbaa !64
  %arrayidx140 = getelementptr inbounds i8, i8* %ip.0628, i64 9, !dbg !144
  %28 = load i8, i8* %arrayidx140, align 1, !dbg !144, !tbaa !64
  %cmp142.not = icmp eq i8 %27, %28, !dbg !145
  br i1 %cmp142.not, label %if.end145, label %for.end.thread, !dbg !146

if.end145:                                        ; preds = %if.end134
  call void @llvm.dbg.value(metadata i32 10, metadata !47, metadata !DIExpression()), !dbg !91
  %arrayidx148 = getelementptr inbounds i8, i8* %4, i64 10, !dbg !147
  %29 = load i8, i8* %arrayidx148, align 1, !dbg !147, !tbaa !64
  %arrayidx151 = getelementptr inbounds i8, i8* %ip.0628, i64 10, !dbg !149
  %30 = load i8, i8* %arrayidx151, align 1, !dbg !149, !tbaa !64
  %cmp153.not = icmp eq i8 %29, %30, !dbg !150
  br i1 %cmp153.not, label %if.end156, label %for.end.thread, !dbg !151

if.end156:                                        ; preds = %if.end145
  call void @llvm.dbg.value(metadata i32 11, metadata !47, metadata !DIExpression()), !dbg !91
  %arrayidx159 = getelementptr inbounds i8, i8* %4, i64 11, !dbg !152
  %31 = load i8, i8* %arrayidx159, align 1, !dbg !152, !tbaa !64
  %arrayidx162 = getelementptr inbounds i8, i8* %ip.0628, i64 11, !dbg !154
  %32 = load i8, i8* %arrayidx162, align 1, !dbg !154, !tbaa !64
  %cmp164.not = icmp eq i8 %31, %32, !dbg !155
  br i1 %cmp164.not, label %if.end167, label %for.end.thread, !dbg !156

if.end167:                                        ; preds = %if.end156
  call void @llvm.dbg.value(metadata i32 12, metadata !47, metadata !DIExpression()), !dbg !91
  %arrayidx170 = getelementptr inbounds i8, i8* %4, i64 12, !dbg !157
  %33 = load i8, i8* %arrayidx170, align 1, !dbg !157, !tbaa !64
  %arrayidx173 = getelementptr inbounds i8, i8* %ip.0628, i64 12, !dbg !159
  %34 = load i8, i8* %arrayidx173, align 1, !dbg !159, !tbaa !64
  %cmp175.not = icmp eq i8 %33, %34, !dbg !160
  br i1 %cmp175.not, label %if.end178, label %for.end.thread, !dbg !161

if.end178:                                        ; preds = %if.end167
  call void @llvm.dbg.value(metadata i32 13, metadata !47, metadata !DIExpression()), !dbg !91
  %arrayidx181 = getelementptr inbounds i8, i8* %4, i64 13, !dbg !162
  %35 = load i8, i8* %arrayidx181, align 1, !dbg !162, !tbaa !64
  %arrayidx184 = getelementptr inbounds i8, i8* %ip.0628, i64 13, !dbg !164
  %36 = load i8, i8* %arrayidx184, align 1, !dbg !164, !tbaa !64
  %cmp186.not = icmp eq i8 %35, %36, !dbg !165
  br i1 %cmp186.not, label %if.end189, label %for.end.thread, !dbg !166

if.end189:                                        ; preds = %if.end178
  call void @llvm.dbg.value(metadata i32 14, metadata !47, metadata !DIExpression()), !dbg !91
  %arrayidx192 = getelementptr inbounds i8, i8* %4, i64 14, !dbg !167
  %37 = load i8, i8* %arrayidx192, align 1, !dbg !167, !tbaa !64
  %arrayidx195 = getelementptr inbounds i8, i8* %ip.0628, i64 14, !dbg !169
  %38 = load i8, i8* %arrayidx195, align 1, !dbg !169, !tbaa !64
  %cmp197.not = icmp eq i8 %37, %38, !dbg !170
  br i1 %cmp197.not, label %if.end200, label %for.end.thread, !dbg !171

if.end200:                                        ; preds = %if.end189
  call void @llvm.dbg.value(metadata i32 15, metadata !47, metadata !DIExpression()), !dbg !91
  %arrayidx203 = getelementptr inbounds i8, i8* %4, i64 15, !dbg !172
  %39 = load i8, i8* %arrayidx203, align 1, !dbg !172, !tbaa !64
  %arrayidx206 = getelementptr inbounds i8, i8* %ip.0628, i64 15, !dbg !174
  %40 = load i8, i8* %arrayidx206, align 1, !dbg !174, !tbaa !64
  %cmp208.not = icmp eq i8 %39, %40, !dbg !175
  br i1 %cmp208.not, label %if.end211, label %for.end.thread, !dbg !176

if.end211:                                        ; preds = %if.end200
  call void @llvm.dbg.value(metadata i32 16, metadata !47, metadata !DIExpression()), !dbg !91
  %arrayidx214 = getelementptr inbounds i8, i8* %4, i64 16, !dbg !177
  %41 = load i8, i8* %arrayidx214, align 1, !dbg !177, !tbaa !64
  %arrayidx217 = getelementptr inbounds i8, i8* %ip.0628, i64 16, !dbg !179
  %42 = load i8, i8* %arrayidx217, align 1, !dbg !179, !tbaa !64
  %cmp219.not = icmp eq i8 %41, %42, !dbg !180
  br i1 %cmp219.not, label %if.end222, label %for.end.thread, !dbg !181

if.end222:                                        ; preds = %if.end211
  call void @llvm.dbg.value(metadata i32 17, metadata !47, metadata !DIExpression()), !dbg !91
  %arrayidx225 = getelementptr inbounds i8, i8* %4, i64 17, !dbg !182
  %43 = load i8, i8* %arrayidx225, align 1, !dbg !182, !tbaa !64
  %arrayidx228 = getelementptr inbounds i8, i8* %ip.0628, i64 17, !dbg !184
  %44 = load i8, i8* %arrayidx228, align 1, !dbg !184, !tbaa !64
  %cmp230.not = icmp eq i8 %43, %44, !dbg !185
  br i1 %cmp230.not, label %if.end233, label %for.end.thread, !dbg !186

if.end233:                                        ; preds = %if.end222
  call void @llvm.dbg.value(metadata i32 18, metadata !47, metadata !DIExpression()), !dbg !91
  %arrayidx236 = getelementptr inbounds i8, i8* %4, i64 18, !dbg !187
  %45 = load i8, i8* %arrayidx236, align 1, !dbg !187, !tbaa !64
  %arrayidx239 = getelementptr inbounds i8, i8* %ip.0628, i64 18, !dbg !189
  %46 = load i8, i8* %arrayidx239, align 1, !dbg !189, !tbaa !64
  %cmp241.not = icmp eq i8 %45, %46, !dbg !190
  br i1 %cmp241.not, label %if.end245, label %for.end.thread, !dbg !191

if.end245:                                        ; preds = %if.end233, %for.cond
  %len.0 = phi i32 [ 18, %if.end233 ], [ 2, %for.cond ], !dbg !91
  call void @llvm.dbg.value(metadata i32 %len.0, metadata !47, metadata !DIExpression()), !dbg !91
  %47 = zext i32 %len.0 to i64, !dbg !192
  %48 = zext i32 %cond to i64, !dbg !192
  %49 = or i32 %len.0, 1, !dbg !192
  %umax = call i32 @llvm.umax.i32(i32 %cond, i32 %49), !dbg !192
  %50 = add nsw i32 %umax, -1, !dbg !192
  br label %do.body, !dbg !192

do.body:                                          ; preds = %land.rhs, %if.end245
  %indvars.iv = phi i64 [ %indvars.iv.next, %land.rhs ], [ %47, %if.end245 ], !dbg !193
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !47, metadata !DIExpression()), !dbg !91
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !194
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !47, metadata !DIExpression()), !dbg !91
  %cmp247 = icmp ult i64 %indvars.iv.next, %48, !dbg !195
  br i1 %cmp247, label %land.rhs, label %for.end, !dbg !196

land.rhs:                                         ; preds = %do.body
  %arrayidx250 = getelementptr inbounds i8, i8* %4, i64 %indvars.iv.next, !dbg !197
  %51 = load i8, i8* %arrayidx250, align 1, !dbg !197, !tbaa !64
  %arrayidx253 = getelementptr inbounds i8, i8* %ip.0628, i64 %indvars.iv.next, !dbg !198
  %52 = load i8, i8* %arrayidx253, align 1, !dbg !198, !tbaa !64
  %cmp255 = icmp eq i8 %51, %52, !dbg !199
  br i1 %cmp255, label %do.body, label %for.end.split.loop.exit645, !dbg !200, !llvm.loop !201

for.end.thread:                                   ; preds = %if.end134, %if.end145, %if.end156, %if.end167, %if.end178, %if.end189, %if.end200, %if.end211, %if.end222, %if.end233
  %len.2.ph = phi i32 [ 18, %if.end233 ], [ 17, %if.end222 ], [ 16, %if.end211 ], [ 15, %if.end200 ], [ 14, %if.end189 ], [ 13, %if.end178 ], [ 12, %if.end167 ], [ 11, %if.end156 ], [ 10, %if.end145 ], [ 9, %if.end134 ]
  call void @llvm.dbg.value(metadata i32 %sub257, metadata !47, metadata !DIExpression()), !dbg !91
  %incdec.ptr258599 = getelementptr inbounds i8, i8* %ip.0628, i64 1, !dbg !203
  call void @llvm.dbg.value(metadata i8* %incdec.ptr258, metadata !37, metadata !DIExpression()), !dbg !52
  br label %if.else, !dbg !204

for.end.thread607:                                ; preds = %if.then69, %if.end79, %if.end90, %if.end101, %if.end112, %if.end123
  %len.2.ph606 = phi i32 [ 8, %if.end123 ], [ 7, %if.end112 ], [ 6, %if.end101 ], [ 5, %if.end90 ], [ 4, %if.end79 ], [ 3, %if.then69 ]
  call void @llvm.dbg.value(metadata i32 %inc246.lcssa, metadata !47, metadata !DIExpression()), !dbg !91
  %sub257609 = add nsw i32 %len.2.ph606, -2, !dbg !205
  call void @llvm.dbg.value(metadata i32 %sub257, metadata !47, metadata !DIExpression()), !dbg !91
  %incdec.ptr258610 = getelementptr inbounds i8, i8* %ip.0628, i64 1, !dbg !203
  call void @llvm.dbg.value(metadata i8* %incdec.ptr258, metadata !37, metadata !DIExpression()), !dbg !52
  br label %if.then261, !dbg !204

for.end.split.loop.exit645:                       ; preds = %land.rhs
  %53 = trunc i64 %indvars.iv to i32, !dbg !196
  %54 = trunc i64 %indvars.iv.next to i32, !dbg !196
  br label %for.end, !dbg !205

for.end:                                          ; preds = %do.body, %for.end.split.loop.exit645
  %len.1.lcssa = phi i32 [ %53, %for.end.split.loop.exit645 ], [ %50, %do.body ], !dbg !193
  %inc246.lcssa = phi i32 [ %54, %for.end.split.loop.exit645 ], [ %umax, %do.body ], !dbg !194
  call void @llvm.dbg.value(metadata i32 %inc246.lcssa, metadata !47, metadata !DIExpression()), !dbg !91
  %sub257 = add i32 %len.1.lcssa, -1, !dbg !205
  call void @llvm.dbg.value(metadata i32 %sub257, metadata !47, metadata !DIExpression()), !dbg !91
  %incdec.ptr258 = getelementptr inbounds i8, i8* %ip.0628, i64 1, !dbg !203
  call void @llvm.dbg.value(metadata i8* %incdec.ptr258, metadata !37, metadata !DIExpression()), !dbg !52
  %cmp259 = icmp ult i32 %sub257, 7, !dbg !206
  br i1 %cmp259, label %if.then261, label %if.else, !dbg !204

if.then261:                                       ; preds = %for.end.thread607, %for.end
  %incdec.ptr258614 = phi i8* [ %incdec.ptr258610, %for.end.thread607 ], [ %incdec.ptr258, %for.end ]
  %sub257613 = phi i32 [ %sub257609, %for.end.thread607 ], [ %sub257, %for.end ]
  %len.2612 = phi i32 [ %len.2.ph606, %for.end.thread607 ], [ %inc246.lcssa, %for.end ]
  %shr262 = lshr i64 %sub14, 8, !dbg !208
  %shl263 = shl nuw nsw i32 %sub257613, 5, !dbg !210
  %conv264 = zext i32 %shl263 to i64, !dbg !211
  %add = add nuw nsw i64 %shr262, %conv264, !dbg !212
  %conv265 = trunc i64 %add to i8, !dbg !213
  call void @llvm.dbg.value(metadata i8* %add.ptr51, metadata !38, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !52
  store i8 %conv265, i8* %add.ptr51, align 1, !dbg !214, !tbaa !64
  br label %if.end274, !dbg !215

if.else:                                          ; preds = %for.end.thread, %for.end
  %incdec.ptr258604 = phi i8* [ %incdec.ptr258599, %for.end.thread ], [ %incdec.ptr258, %for.end ]
  %len.2601 = phi i32 [ %len.2.ph, %for.end.thread ], [ %inc246.lcssa, %for.end ]
  %shr267 = lshr i64 %sub14, 8, !dbg !216
  %55 = trunc i64 %shr267 to i8, !dbg !218
  %conv269 = add i8 %55, -32, !dbg !218
  %incdec.ptr270 = getelementptr inbounds i8, i8* %add.ptr51, i64 1, !dbg !219
  call void @llvm.dbg.value(metadata i8* %incdec.ptr270, metadata !38, metadata !DIExpression()), !dbg !52
  store i8 %conv269, i8* %add.ptr51, align 1, !dbg !220, !tbaa !64
  %56 = trunc i32 %len.2601 to i8, !dbg !221
  %conv272 = add i8 %56, -9, !dbg !221
  call void @llvm.dbg.value(metadata i8* %incdec.ptr270, metadata !38, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !52
  store i8 %conv272, i8* %incdec.ptr270, align 1, !dbg !222, !tbaa !64
  br label %if.end274

if.end274:                                        ; preds = %if.else, %if.then261
  %incdec.ptr258603 = phi i8* [ %incdec.ptr258614, %if.then261 ], [ %incdec.ptr258604, %if.else ]
  %len.2602 = phi i32 [ %len.2612, %if.then261 ], [ %len.2601, %if.else ]
  %add.ptr51.pn = phi i8* [ %add.ptr51, %if.then261 ], [ %incdec.ptr270, %if.else ]
  %op.1 = getelementptr inbounds i8, i8* %add.ptr51.pn, i64 1, !dbg !223
  call void @llvm.dbg.value(metadata i8* %op.1, metadata !38, metadata !DIExpression()), !dbg !52
  %conv275 = trunc i64 %sub14 to i8, !dbg !224
  call void @llvm.dbg.value(metadata i8* %op.1, metadata !38, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !52
  store i8 %conv275, i8* %op.1, align 1, !dbg !225, !tbaa !64
  call void @llvm.dbg.value(metadata i32 0, metadata !45, metadata !DIExpression()), !dbg !52
  %incdec.ptr277 = getelementptr inbounds i8, i8* %add.ptr51.pn, i64 3, !dbg !226
  call void @llvm.dbg.value(metadata i8* %incdec.ptr277, metadata !38, metadata !DIExpression()), !dbg !52
  %add278 = add i32 %len.2602, -1, !dbg !227
  %idx.ext279 = zext i32 %add278 to i64, !dbg !228
  %add.ptr280 = getelementptr inbounds i8, i8* %incdec.ptr258603, i64 %idx.ext279, !dbg !228
  call void @llvm.dbg.value(metadata i8* %add.ptr280, metadata !37, metadata !DIExpression()), !dbg !52
  %cmp282.not = icmp ult i8* %add.ptr280, %add.ptr6, !dbg !229
  br i1 %cmp282.not, label %cleanup.thread620, label %while.end, !dbg !231, !prof !104

cleanup.thread620:                                ; preds = %if.end274
  %incdec.ptr291 = getelementptr inbounds i8, i8* %add.ptr280, i64 -1, !dbg !232
  call void @llvm.dbg.value(metadata i8* %incdec.ptr291, metadata !37, metadata !DIExpression()), !dbg !52
  %incdec.ptr292 = getelementptr inbounds i8, i8* %incdec.ptr291, i64 -1, !dbg !233
  call void @llvm.dbg.value(metadata i8* %incdec.ptr292, metadata !37, metadata !DIExpression()), !dbg !52
  %57 = load i8, i8* %incdec.ptr292, align 1, !dbg !234, !tbaa !64
  %conv294 = zext i8 %57 to i32, !dbg !234
  %arrayidx296 = getelementptr inbounds i8, i8* %incdec.ptr292, i64 1, !dbg !234
  %58 = load i8, i8* %arrayidx296, align 1, !dbg !234, !tbaa !64
  %conv297 = zext i8 %58 to i32, !dbg !234
  call void @llvm.dbg.value(metadata !DIArgList(i32 %conv294, i32 %conv297), metadata !44, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !52
  %59 = shl nuw nsw i32 %conv294, 16, !dbg !235
  %60 = shl nuw nsw i32 %conv297, 8, !dbg !235
  %shl299 = or i32 %60, %59, !dbg !235
  %arrayidx300 = getelementptr inbounds i8, i8* %incdec.ptr292, i64 2, !dbg !235
  %61 = load i8, i8* %arrayidx300, align 1, !dbg !235, !tbaa !64
  %conv301 = zext i8 %61 to i32, !dbg !235
  %or302 = or i32 %shl299, %conv301, !dbg !235
  call void @llvm.dbg.value(metadata !DIArgList(i32 %shl299, i32 %conv301), metadata !44, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !52
  %shr303 = lshr exact i32 %shl299, 8, !dbg !236
  %mul304.neg = mul nsw i32 %or302, -5, !dbg !236
  %sub305 = add nsw i32 %mul304.neg, %shr303, !dbg !236
  %and306 = and i32 %sub305, 65535, !dbg !236
  %idxprom307 = zext i32 %and306 to i64, !dbg !237
  %arrayidx308 = getelementptr inbounds [65536 x i8*], [65536 x i8*]* %htab, i64 0, i64 %idxprom307, !dbg !237
  store i8* %incdec.ptr292, i8** %arrayidx308, align 8, !dbg !238, !tbaa !71
  call void @llvm.dbg.value(metadata i8* %arrayidx296, metadata !37, metadata !DIExpression()), !dbg !52
  %shl310 = shl nuw i32 %or302, 8, !dbg !239
  %arrayidx311 = getelementptr inbounds i8, i8* %arrayidx296, i64 2, !dbg !239
  %62 = load i8, i8* %arrayidx311, align 1, !dbg !239, !tbaa !64
  %conv312 = zext i8 %62 to i32, !dbg !239
  %or313 = or i32 %shl310, %conv312, !dbg !239
  call void @llvm.dbg.value(metadata i32 %or313, metadata !44, metadata !DIExpression()), !dbg !52
  %mul315.neg = mul i32 %or313, -5, !dbg !240
  %sub316 = add i32 %mul315.neg, %or302, !dbg !240
  %and317 = and i32 %sub316, 65535, !dbg !240
  %idxprom318 = zext i32 %and317 to i64, !dbg !241
  %arrayidx319 = getelementptr inbounds [65536 x i8*], [65536 x i8*]* %htab, i64 0, i64 %idxprom318, !dbg !241
  store i8* %arrayidx296, i8** %arrayidx319, align 8, !dbg !242, !tbaa !71
  call void @llvm.dbg.value(metadata i32 undef, metadata !45, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i32 undef, metadata !44, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i8* undef, metadata !37, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i8* undef, metadata !38, metadata !DIExpression()), !dbg !52
  br label %if.end351

if.else322:                                       ; preds = %land.lhs.true28, %land.lhs.true23, %land.lhs.true, %while.body
  %cmp323.not = icmp ult i8* %op.0627, %add.ptr2, !dbg !243
  br i1 %cmp323.not, label %if.end331, label %cleanup397, !dbg !246, !prof !104

if.end331:                                        ; preds = %if.else322
  %inc332 = add nsw i32 %lit.0631, 1, !dbg !247
  call void @llvm.dbg.value(metadata i32 %inc332, metadata !45, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i8* %ip.0628, metadata !37, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !52
  %63 = load i8, i8* %ip.0628, align 1, !dbg !248, !tbaa !64
  %incdec.ptr334 = getelementptr inbounds i8, i8* %op.0627, i64 1, !dbg !249
  call void @llvm.dbg.value(metadata i8* %incdec.ptr334, metadata !38, metadata !DIExpression()), !dbg !52
  store i8 %63, i8* %op.0627, align 1, !dbg !250, !tbaa !64
  %cmp335 = icmp eq i32 %inc332, 32, !dbg !251
  br i1 %cmp335, label %if.then342, label %if.end351, !dbg !253, !prof !254

if.then342:                                       ; preds = %if.end331
  %conv344 = trunc i32 %lit.0631 to i8, !dbg !255
  %arrayidx348 = getelementptr inbounds i8, i8* %op.0627, i64 -32, !dbg !257
  store i8 %conv344, i8* %arrayidx348, align 1, !dbg !258, !tbaa !64
  call void @llvm.dbg.value(metadata i32 0, metadata !45, metadata !DIExpression()), !dbg !52
  %incdec.ptr349 = getelementptr inbounds i8, i8* %op.0627, i64 2, !dbg !259
  call void @llvm.dbg.value(metadata i8* %incdec.ptr349, metadata !38, metadata !DIExpression()), !dbg !52
  br label %if.end351, !dbg !260

if.end351:                                        ; preds = %cleanup.thread620, %if.end331, %if.then342
  %op.3 = phi i8* [ %incdec.ptr349, %if.then342 ], [ %incdec.ptr334, %if.end331 ], [ %incdec.ptr277, %cleanup.thread620 ], !dbg !261
  %ip.0.pn = phi i8* [ %ip.0628, %if.then342 ], [ %ip.0628, %if.end331 ], [ %arrayidx296, %cleanup.thread620 ]
  %hval.2 = phi i32 [ %or11, %if.then342 ], [ %or11, %if.end331 ], [ %or313, %cleanup.thread620 ], !dbg !262
  %lit.2 = phi i32 [ 0, %if.then342 ], [ %inc332, %if.end331 ], [ 0, %cleanup.thread620 ], !dbg !52
  %ip.2 = getelementptr inbounds i8, i8* %ip.0.pn, i64 1, !dbg !52
  call void @llvm.dbg.value(metadata i32 %lit.2, metadata !45, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i32 %hval.2, metadata !44, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i8* %ip.2, metadata !37, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i8* %op.3, metadata !38, metadata !DIExpression()), !dbg !52
  %cmp = icmp ult i8* %ip.2, %add.ptr6, !dbg !61
  br i1 %cmp, label %while.body, label %while.end, !dbg !62, !llvm.loop !263

while.end:                                        ; preds = %if.end351, %if.end274, %if.end
  %op.4 = phi i8* [ %incdec.ptr, %if.end ], [ %incdec.ptr277, %if.end274 ], [ %op.3, %if.end351 ], !dbg !52
  %ip.3 = phi i8* [ %in_data, %if.end ], [ %add.ptr280, %if.end274 ], [ %ip.2, %if.end351 ], !dbg !265
  %lit.3 = phi i32 [ 0, %if.end ], [ 0, %if.end274 ], [ %lit.2, %if.end351 ], !dbg !266
  %ip.3653 = ptrtoint i8* %ip.3 to i64, !dbg !52
  call void @llvm.dbg.value(metadata i32 %lit.3, metadata !45, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i8* %ip.3, metadata !37, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i8* %op.4, metadata !38, metadata !DIExpression()), !dbg !52
  %add.ptr352 = getelementptr inbounds i8, i8* %op.4, i64 3, !dbg !267
  %cmp353 = icmp ugt i8* %add.ptr352, %add.ptr2, !dbg !269
  br i1 %cmp353, label %cleanup397, label %while.cond357.preheader, !dbg !270

while.cond357.preheader:                          ; preds = %while.end
  call void @llvm.dbg.value(metadata i32 %lit.3, metadata !45, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i8* %ip.3, metadata !37, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i8* %op.4, metadata !38, metadata !DIExpression()), !dbg !52
  %cmp358638 = icmp ult i8* %ip.3, %add.ptr, !dbg !271
  br i1 %cmp358638, label %while.body360.preheader, label %while.end380, !dbg !272

while.body360.preheader:                          ; preds = %while.cond357.preheader
  %64 = add i64 %in_data652, %idx.ext, !dbg !272
  %65 = sub i64 %64, %ip.3653, !dbg !272
  %.neg654 = add i64 %ip.3653, 1, !dbg !272
  %xtraiter = and i64 %65, 1, !dbg !272
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !272
  br i1 %lcmp.mod.not, label %while.body360.prol.loopexit, label %while.body360.prol, !dbg !272

while.body360.prol:                               ; preds = %while.body360.preheader
  call void @llvm.dbg.value(metadata i32 %lit.3, metadata !45, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i8* %ip.3, metadata !37, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i8* %op.4, metadata !38, metadata !DIExpression()), !dbg !52
  %inc361.prol = add nsw i32 %lit.3, 1, !dbg !273
  call void @llvm.dbg.value(metadata i32 %inc361.prol, metadata !45, metadata !DIExpression()), !dbg !52
  %incdec.ptr362.prol = getelementptr inbounds i8, i8* %ip.3, i64 1, !dbg !275
  call void @llvm.dbg.value(metadata i8* %incdec.ptr362.prol, metadata !37, metadata !DIExpression()), !dbg !52
  %66 = load i8, i8* %ip.3, align 1, !dbg !276, !tbaa !64
  %incdec.ptr363.prol = getelementptr inbounds i8, i8* %op.4, i64 1, !dbg !277
  call void @llvm.dbg.value(metadata i8* %incdec.ptr363.prol, metadata !38, metadata !DIExpression()), !dbg !52
  store i8 %66, i8* %op.4, align 1, !dbg !278, !tbaa !64
  %cmp364.prol = icmp eq i32 %inc361.prol, 32, !dbg !279
  br i1 %cmp364.prol, label %if.then371.prol, label %while.body360.prol.loopexit, !dbg !281, !prof !254

if.then371.prol:                                  ; preds = %while.body360.prol
  %conv373.prol = trunc i32 %lit.3 to i8, !dbg !282
  %arrayidx377.prol = getelementptr inbounds i8, i8* %op.4, i64 -32, !dbg !284
  store i8 %conv373.prol, i8* %arrayidx377.prol, align 1, !dbg !285, !tbaa !64
  call void @llvm.dbg.value(metadata i32 0, metadata !45, metadata !DIExpression()), !dbg !52
  %incdec.ptr378.prol = getelementptr inbounds i8, i8* %op.4, i64 2, !dbg !286
  call void @llvm.dbg.value(metadata i8* %incdec.ptr378.prol, metadata !38, metadata !DIExpression()), !dbg !52
  br label %while.body360.prol.loopexit, !dbg !287

while.body360.prol.loopexit:                      ; preds = %while.body360.prol, %if.then371.prol, %while.body360.preheader
  %lit.4641.unr = phi i32 [ %lit.3, %while.body360.preheader ], [ 0, %if.then371.prol ], [ %inc361.prol, %while.body360.prol ]
  %ip.4640.unr = phi i8* [ %ip.3, %while.body360.preheader ], [ %incdec.ptr362.prol, %if.then371.prol ], [ %incdec.ptr362.prol, %while.body360.prol ]
  %op.5639.unr = phi i8* [ %op.4, %while.body360.preheader ], [ %incdec.ptr378.prol, %if.then371.prol ], [ %incdec.ptr363.prol, %while.body360.prol ]
  %op.6.lcssa.unr = phi i8* [ undef, %while.body360.preheader ], [ %incdec.ptr378.prol, %if.then371.prol ], [ %incdec.ptr363.prol, %while.body360.prol ]
  %lit.5.lcssa.unr = phi i32 [ undef, %while.body360.preheader ], [ 0, %if.then371.prol ], [ %inc361.prol, %while.body360.prol ]
  %67 = icmp eq i64 %64, %.neg654, !dbg !272
  br i1 %67, label %while.end380, label %while.body360, !dbg !272

while.body360:                                    ; preds = %while.body360.prol.loopexit, %if.end379.1
  %lit.4641 = phi i32 [ %lit.5.1, %if.end379.1 ], [ %lit.4641.unr, %while.body360.prol.loopexit ]
  %ip.4640 = phi i8* [ %incdec.ptr362.1, %if.end379.1 ], [ %ip.4640.unr, %while.body360.prol.loopexit ]
  %op.5639 = phi i8* [ %op.6.1, %if.end379.1 ], [ %op.5639.unr, %while.body360.prol.loopexit ]
  call void @llvm.dbg.value(metadata i32 %lit.4641, metadata !45, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i8* %ip.4640, metadata !37, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i8* %op.5639, metadata !38, metadata !DIExpression()), !dbg !52
  %inc361 = add nsw i32 %lit.4641, 1, !dbg !273
  call void @llvm.dbg.value(metadata i32 %inc361, metadata !45, metadata !DIExpression()), !dbg !52
  %incdec.ptr362 = getelementptr inbounds i8, i8* %ip.4640, i64 1, !dbg !275
  call void @llvm.dbg.value(metadata i8* %incdec.ptr362, metadata !37, metadata !DIExpression()), !dbg !52
  %68 = load i8, i8* %ip.4640, align 1, !dbg !276, !tbaa !64
  %incdec.ptr363 = getelementptr inbounds i8, i8* %op.5639, i64 1, !dbg !277
  call void @llvm.dbg.value(metadata i8* %incdec.ptr363, metadata !38, metadata !DIExpression()), !dbg !52
  store i8 %68, i8* %op.5639, align 1, !dbg !278, !tbaa !64
  %cmp364 = icmp eq i32 %inc361, 32, !dbg !279
  br i1 %cmp364, label %if.then371, label %if.end379, !dbg !281, !prof !254

if.then371:                                       ; preds = %while.body360
  %conv373 = trunc i32 %lit.4641 to i8, !dbg !282
  %arrayidx377 = getelementptr inbounds i8, i8* %op.5639, i64 -32, !dbg !284
  store i8 %conv373, i8* %arrayidx377, align 1, !dbg !285, !tbaa !64
  call void @llvm.dbg.value(metadata i32 0, metadata !45, metadata !DIExpression()), !dbg !52
  %incdec.ptr378 = getelementptr inbounds i8, i8* %op.5639, i64 2, !dbg !286
  call void @llvm.dbg.value(metadata i8* %incdec.ptr378, metadata !38, metadata !DIExpression()), !dbg !52
  br label %if.end379, !dbg !287

if.end379:                                        ; preds = %if.then371, %while.body360
  %op.6 = phi i8* [ %incdec.ptr378, %if.then371 ], [ %incdec.ptr363, %while.body360 ], !dbg !288
  %lit.5 = phi i32 [ 0, %if.then371 ], [ %inc361, %while.body360 ], !dbg !288
  call void @llvm.dbg.value(metadata i32 %lit.5, metadata !45, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i8* %incdec.ptr362, metadata !37, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i8* %op.6, metadata !38, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i32 %lit.5, metadata !45, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i8* %incdec.ptr362, metadata !37, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i8* %op.6, metadata !38, metadata !DIExpression()), !dbg !52
  %inc361.1 = add nsw i32 %lit.5, 1, !dbg !273
  call void @llvm.dbg.value(metadata i32 %inc361.1, metadata !45, metadata !DIExpression()), !dbg !52
  %incdec.ptr362.1 = getelementptr inbounds i8, i8* %ip.4640, i64 2, !dbg !275
  call void @llvm.dbg.value(metadata i8* %incdec.ptr362.1, metadata !37, metadata !DIExpression()), !dbg !52
  %69 = load i8, i8* %incdec.ptr362, align 1, !dbg !276, !tbaa !64
  %incdec.ptr363.1 = getelementptr inbounds i8, i8* %op.6, i64 1, !dbg !277
  call void @llvm.dbg.value(metadata i8* %incdec.ptr363.1, metadata !38, metadata !DIExpression()), !dbg !52
  store i8 %69, i8* %op.6, align 1, !dbg !278, !tbaa !64
  %cmp364.1 = icmp eq i32 %inc361.1, 32, !dbg !279
  br i1 %cmp364.1, label %if.then371.1, label %if.end379.1, !dbg !281, !prof !254

if.then371.1:                                     ; preds = %if.end379
  %conv373.1 = trunc i32 %lit.5 to i8, !dbg !282
  %arrayidx377.1 = getelementptr inbounds i8, i8* %op.6, i64 -32, !dbg !284
  store i8 %conv373.1, i8* %arrayidx377.1, align 1, !dbg !285, !tbaa !64
  call void @llvm.dbg.value(metadata i32 0, metadata !45, metadata !DIExpression()), !dbg !52
  %incdec.ptr378.1 = getelementptr inbounds i8, i8* %op.6, i64 2, !dbg !286
  call void @llvm.dbg.value(metadata i8* %incdec.ptr378.1, metadata !38, metadata !DIExpression()), !dbg !52
  br label %if.end379.1, !dbg !287

if.end379.1:                                      ; preds = %if.then371.1, %if.end379
  %op.6.1 = phi i8* [ %incdec.ptr378.1, %if.then371.1 ], [ %incdec.ptr363.1, %if.end379 ], !dbg !288
  %lit.5.1 = phi i32 [ 0, %if.then371.1 ], [ %inc361.1, %if.end379 ], !dbg !288
  call void @llvm.dbg.value(metadata i32 %lit.5.1, metadata !45, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i8* %incdec.ptr362.1, metadata !37, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i8* %op.6.1, metadata !38, metadata !DIExpression()), !dbg !52
  %cmp358.1 = icmp ult i8* %incdec.ptr362.1, %add.ptr, !dbg !271
  br i1 %cmp358.1, label %while.body360, label %while.end380, !dbg !272, !llvm.loop !289

while.end380:                                     ; preds = %while.body360.prol.loopexit, %if.end379.1, %while.cond357.preheader
  %op.5.lcssa = phi i8* [ %op.4, %while.cond357.preheader ], [ %op.6.lcssa.unr, %while.body360.prol.loopexit ], [ %op.6.1, %if.end379.1 ], !dbg !52
  %lit.4.lcssa = phi i32 [ %lit.3, %while.cond357.preheader ], [ %lit.5.lcssa.unr, %while.body360.prol.loopexit ], [ %lit.5.1, %if.end379.1 ], !dbg !52
  %70 = trunc i32 %lit.4.lcssa to i8, !dbg !291
  %conv382 = add i8 %70, -1, !dbg !291
  %sub384 = xor i32 %lit.4.lcssa, -1, !dbg !292
  %idxprom385 = sext i32 %sub384 to i64, !dbg !293
  %arrayidx386 = getelementptr inbounds i8, i8* %op.5.lcssa, i64 %idxprom385, !dbg !293
  store i8 %conv382, i8* %arrayidx386, align 1, !dbg !294, !tbaa !64
  %tobool387.not = icmp eq i32 %lit.4.lcssa, 0, !dbg !295
  %.neg = sext i1 %tobool387.not to i64
  %add.ptr392 = getelementptr inbounds i8, i8* %op.5.lcssa, i64 %.neg, !dbg !296
  call void @llvm.dbg.value(metadata i8* %add.ptr392, metadata !38, metadata !DIExpression()), !dbg !52
  %sub.ptr.lhs.cast393 = ptrtoint i8* %add.ptr392 to i64, !dbg !297
  %sub.ptr.rhs.cast394 = ptrtoint i8* %out_data to i64, !dbg !297
  %sub.ptr.sub395 = sub i64 %sub.ptr.lhs.cast393, %sub.ptr.rhs.cast394, !dbg !297
  %conv396 = trunc i64 %sub.ptr.sub395 to i32, !dbg !298
  br label %cleanup397, !dbg !299

cleanup397:                                       ; preds = %if.then35, %if.else322, %while.end, %entry, %while.end380
  %retval.3 = phi i32 [ %conv396, %while.end380 ], [ 0, %entry ], [ 0, %while.end ], [ 0, %if.else322 ], [ 0, %if.then35 ], !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 524288, i8* nonnull %0) #4, !dbg !300
  ret i32 %retval.3, !dbg !300
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "lzf_c.c", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "0245d1a8a25f7563bc949e911b2aac68")
!2 = !{!3, !8, !9}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !6, line: 127, baseType: !7)
!6 = !DIFile(filename: "./lzfP.h", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "eb8e62f4a90dbcec5b11b84206339703")
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !6, line: 135, baseType: !11)
!11 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!12 = !{i32 7, !"Dwarf Version", i32 5}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{!"clang version 14.0.0"}
!17 = distinct !DISubprogram(name: "lzf_compress", scope: !1, file: !1, line: 99, type: !18, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !25)
!18 = !DISubroutineType(types: !19)
!19 = !{!20, !21, !20, !24, !20}
!20 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !{!26, !27, !28, !29, !30, !35, !37, !38, !39, !40, !41, !42, !44, !45, !47, !51}
!26 = !DILocalVariable(name: "in_data", arg: 1, scope: !17, file: !1, line: 99, type: !21)
!27 = !DILocalVariable(name: "in_len", arg: 2, scope: !17, file: !1, line: 99, type: !20)
!28 = !DILocalVariable(name: "out_data", arg: 3, scope: !17, file: !1, line: 100, type: !24)
!29 = !DILocalVariable(name: "out_len", arg: 4, scope: !17, file: !1, line: 100, type: !20)
!30 = !DILocalVariable(name: "htab", scope: !17, file: !1, line: 107, type: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "LZF_STATE", file: !6, line: 129, baseType: !32)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3, size: 4194304, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 65536)
!35 = !DILocalVariable(name: "hslot", scope: !17, file: !1, line: 109, type: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!37 = !DILocalVariable(name: "ip", scope: !17, file: !1, line: 110, type: !3)
!38 = !DILocalVariable(name: "op", scope: !17, file: !1, line: 111, type: !8)
!39 = !DILocalVariable(name: "in_end", scope: !17, file: !1, line: 112, type: !3)
!40 = !DILocalVariable(name: "out_end", scope: !17, file: !1, line: 113, type: !8)
!41 = !DILocalVariable(name: "ref", scope: !17, file: !1, line: 114, type: !3)
!42 = !DILocalVariable(name: "off", scope: !17, file: !1, line: 126, type: !43)
!43 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!44 = !DILocalVariable(name: "hval", scope: !17, file: !1, line: 128, type: !20)
!45 = !DILocalVariable(name: "lit", scope: !17, file: !1, line: 129, type: !46)
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !DILocalVariable(name: "len", scope: !48, file: !1, line: 169, type: !20)
!48 = distinct !DILexicalBlock(scope: !49, file: !1, line: 167, column: 9)
!49 = distinct !DILexicalBlock(scope: !50, file: !1, line: 151, column: 11)
!50 = distinct !DILexicalBlock(scope: !17, file: !1, line: 146, column: 5)
!51 = !DILocalVariable(name: "maxlen", scope: !48, file: !1, line: 170, type: !20)
!52 = !DILocation(line: 0, scope: !17)
!53 = !DILocation(line: 107, column: 3, scope: !17)
!54 = !DILocation(line: 107, column: 13, scope: !17)
!55 = !DILocation(line: 112, column: 26, scope: !17)
!56 = !DILocation(line: 113, column: 26, scope: !17)
!57 = !DILocation(line: 131, column: 8, scope: !58)
!58 = distinct !DILexicalBlock(scope: !17, file: !1, line: 131, column: 7)
!59 = !DILocation(line: 131, column: 15, scope: !58)
!60 = !DILocation(line: 142, column: 14, scope: !17)
!61 = !DILocation(line: 145, column: 13, scope: !17)
!62 = !DILocation(line: 145, column: 3, scope: !17)
!63 = !DILocation(line: 144, column: 10, scope: !17)
!64 = !{!65, !65, i64 0}
!65 = !{!"omnipotent char", !66, i64 0}
!66 = !{!"Simple C/C++ TBAA"}
!67 = !DILocation(line: 147, column: 14, scope: !50)
!68 = !DILocation(line: 148, column: 22, scope: !50)
!69 = !DILocation(line: 148, column: 20, scope: !50)
!70 = !DILocation(line: 149, column: 13, scope: !50)
!71 = !{!72, !72, i64 0}
!72 = !{!"any pointer", !65, i64 0}
!73 = !DILocation(line: 149, column: 28, scope: !50)
!74 = !DILocation(line: 155, column: 24, scope: !49)
!75 = !DILocation(line: 155, column: 30, scope: !49)
!76 = !DILocation(line: 155, column: 35, scope: !49)
!77 = !DILocation(line: 156, column: 11, scope: !49)
!78 = !DILocation(line: 156, column: 17, scope: !49)
!79 = !DILocation(line: 156, column: 21, scope: !49)
!80 = !DILocation(line: 157, column: 11, scope: !49)
!81 = !DILocation(line: 163, column: 14, scope: !49)
!82 = !{!83, !83, i64 0}
!83 = !{!"short", !65, i64 0}
!84 = !DILocation(line: 163, column: 29, scope: !49)
!85 = !DILocation(line: 163, column: 26, scope: !49)
!86 = !DILocation(line: 164, column: 11, scope: !49)
!87 = !DILocation(line: 164, column: 14, scope: !49)
!88 = !DILocation(line: 164, column: 24, scope: !49)
!89 = !DILocation(line: 164, column: 21, scope: !49)
!90 = !DILocation(line: 151, column: 11, scope: !50)
!91 = !DILocation(line: 0, scope: !48)
!92 = !DILocation(line: 170, column: 40, scope: !48)
!93 = !DILocation(line: 170, column: 33, scope: !48)
!94 = !DILocation(line: 171, column: 20, scope: !48)
!95 = !DILocation(line: 173, column: 28, scope: !48)
!96 = !DILocation(line: 173, column: 21, scope: !48)
!97 = !DILocation(line: 173, column: 11, scope: !48)
!98 = !DILocation(line: 173, column: 26, scope: !48)
!99 = !DILocation(line: 174, column: 17, scope: !48)
!100 = !DILocation(line: 174, column: 14, scope: !48)
!101 = !DILocation(line: 176, column: 15, scope: !102)
!102 = distinct !DILexicalBlock(scope: !48, file: !1, line: 176, column: 15)
!103 = !DILocation(line: 176, column: 15, scope: !48)
!104 = !{!"branch_weights", i32 2000, i32 1}
!105 = !DILocation(line: 181, column: 19, scope: !106)
!106 = distinct !DILexicalBlock(scope: !107, file: !1, line: 181, column: 19)
!107 = distinct !DILexicalBlock(scope: !108, file: !1, line: 180, column: 13)
!108 = distinct !DILexicalBlock(scope: !109, file: !1, line: 179, column: 11)
!109 = distinct !DILexicalBlock(scope: !48, file: !1, line: 179, column: 11)
!110 = !DILocation(line: 181, column: 19, scope: !107)
!111 = !DILocation(line: 183, column: 30, scope: !112)
!112 = distinct !DILexicalBlock(scope: !113, file: !1, line: 183, column: 30)
!113 = distinct !DILexicalBlock(scope: !106, file: !1, line: 182, column: 17)
!114 = !DILocation(line: 183, column: 43, scope: !112)
!115 = !DILocation(line: 183, column: 40, scope: !112)
!116 = !DILocation(line: 183, column: 30, scope: !113)
!117 = !DILocation(line: 184, column: 30, scope: !118)
!118 = distinct !DILexicalBlock(scope: !113, file: !1, line: 184, column: 30)
!119 = !DILocation(line: 184, column: 43, scope: !118)
!120 = !DILocation(line: 184, column: 40, scope: !118)
!121 = !DILocation(line: 184, column: 30, scope: !113)
!122 = !DILocation(line: 185, column: 30, scope: !123)
!123 = distinct !DILexicalBlock(scope: !113, file: !1, line: 185, column: 30)
!124 = !DILocation(line: 185, column: 43, scope: !123)
!125 = !DILocation(line: 185, column: 40, scope: !123)
!126 = !DILocation(line: 185, column: 30, scope: !113)
!127 = !DILocation(line: 186, column: 30, scope: !128)
!128 = distinct !DILexicalBlock(scope: !113, file: !1, line: 186, column: 30)
!129 = !DILocation(line: 186, column: 43, scope: !128)
!130 = !DILocation(line: 186, column: 40, scope: !128)
!131 = !DILocation(line: 186, column: 30, scope: !113)
!132 = !DILocation(line: 188, column: 30, scope: !133)
!133 = distinct !DILexicalBlock(scope: !113, file: !1, line: 188, column: 30)
!134 = !DILocation(line: 188, column: 43, scope: !133)
!135 = !DILocation(line: 188, column: 40, scope: !133)
!136 = !DILocation(line: 188, column: 30, scope: !113)
!137 = !DILocation(line: 189, column: 30, scope: !138)
!138 = distinct !DILexicalBlock(scope: !113, file: !1, line: 189, column: 30)
!139 = !DILocation(line: 189, column: 43, scope: !138)
!140 = !DILocation(line: 189, column: 40, scope: !138)
!141 = !DILocation(line: 189, column: 30, scope: !113)
!142 = !DILocation(line: 190, column: 30, scope: !143)
!143 = distinct !DILexicalBlock(scope: !113, file: !1, line: 190, column: 30)
!144 = !DILocation(line: 190, column: 43, scope: !143)
!145 = !DILocation(line: 190, column: 40, scope: !143)
!146 = !DILocation(line: 190, column: 30, scope: !113)
!147 = !DILocation(line: 191, column: 30, scope: !148)
!148 = distinct !DILexicalBlock(scope: !113, file: !1, line: 191, column: 30)
!149 = !DILocation(line: 191, column: 43, scope: !148)
!150 = !DILocation(line: 191, column: 40, scope: !148)
!151 = !DILocation(line: 191, column: 30, scope: !113)
!152 = !DILocation(line: 193, column: 30, scope: !153)
!153 = distinct !DILexicalBlock(scope: !113, file: !1, line: 193, column: 30)
!154 = !DILocation(line: 193, column: 43, scope: !153)
!155 = !DILocation(line: 193, column: 40, scope: !153)
!156 = !DILocation(line: 193, column: 30, scope: !113)
!157 = !DILocation(line: 194, column: 30, scope: !158)
!158 = distinct !DILexicalBlock(scope: !113, file: !1, line: 194, column: 30)
!159 = !DILocation(line: 194, column: 43, scope: !158)
!160 = !DILocation(line: 194, column: 40, scope: !158)
!161 = !DILocation(line: 194, column: 30, scope: !113)
!162 = !DILocation(line: 195, column: 30, scope: !163)
!163 = distinct !DILexicalBlock(scope: !113, file: !1, line: 195, column: 30)
!164 = !DILocation(line: 195, column: 43, scope: !163)
!165 = !DILocation(line: 195, column: 40, scope: !163)
!166 = !DILocation(line: 195, column: 30, scope: !113)
!167 = !DILocation(line: 196, column: 30, scope: !168)
!168 = distinct !DILexicalBlock(scope: !113, file: !1, line: 196, column: 30)
!169 = !DILocation(line: 196, column: 43, scope: !168)
!170 = !DILocation(line: 196, column: 40, scope: !168)
!171 = !DILocation(line: 196, column: 30, scope: !113)
!172 = !DILocation(line: 198, column: 30, scope: !173)
!173 = distinct !DILexicalBlock(scope: !113, file: !1, line: 198, column: 30)
!174 = !DILocation(line: 198, column: 43, scope: !173)
!175 = !DILocation(line: 198, column: 40, scope: !173)
!176 = !DILocation(line: 198, column: 30, scope: !113)
!177 = !DILocation(line: 199, column: 30, scope: !178)
!178 = distinct !DILexicalBlock(scope: !113, file: !1, line: 199, column: 30)
!179 = !DILocation(line: 199, column: 43, scope: !178)
!180 = !DILocation(line: 199, column: 40, scope: !178)
!181 = !DILocation(line: 199, column: 30, scope: !113)
!182 = !DILocation(line: 200, column: 30, scope: !183)
!183 = distinct !DILexicalBlock(scope: !113, file: !1, line: 200, column: 30)
!184 = !DILocation(line: 200, column: 43, scope: !183)
!185 = !DILocation(line: 200, column: 40, scope: !183)
!186 = !DILocation(line: 200, column: 30, scope: !113)
!187 = !DILocation(line: 201, column: 30, scope: !188)
!188 = distinct !DILexicalBlock(scope: !113, file: !1, line: 201, column: 30)
!189 = !DILocation(line: 201, column: 43, scope: !188)
!190 = !DILocation(line: 201, column: 40, scope: !188)
!191 = !DILocation(line: 201, column: 30, scope: !113)
!192 = !DILocation(line: 204, column: 15, scope: !107)
!193 = !DILocation(line: 0, scope: !107)
!194 = !DILocation(line: 205, column: 20, scope: !107)
!195 = !DILocation(line: 206, column: 26, scope: !107)
!196 = !DILocation(line: 206, column: 35, scope: !107)
!197 = !DILocation(line: 206, column: 38, scope: !107)
!198 = !DILocation(line: 206, column: 50, scope: !107)
!199 = !DILocation(line: 206, column: 47, scope: !107)
!200 = !DILocation(line: 205, column: 17, scope: !107)
!201 = distinct !{!201, !192, !202}
!202 = !DILocation(line: 206, column: 57, scope: !107)
!203 = !DILocation(line: 212, column: 13, scope: !48)
!204 = !DILocation(line: 214, column: 15, scope: !48)
!205 = !DILocation(line: 211, column: 15, scope: !48)
!206 = !DILocation(line: 214, column: 19, scope: !207)
!207 = distinct !DILexicalBlock(scope: !48, file: !1, line: 214, column: 15)
!208 = !DILocation(line: 216, column: 28, scope: !209)
!209 = distinct !DILexicalBlock(scope: !207, file: !1, line: 215, column: 13)
!210 = !DILocation(line: 216, column: 41, scope: !209)
!211 = !DILocation(line: 216, column: 36, scope: !209)
!212 = !DILocation(line: 216, column: 34, scope: !209)
!213 = !DILocation(line: 216, column: 23, scope: !209)
!214 = !DILocation(line: 216, column: 21, scope: !209)
!215 = !DILocation(line: 217, column: 13, scope: !209)
!216 = !DILocation(line: 220, column: 28, scope: !217)
!217 = distinct !DILexicalBlock(scope: !207, file: !1, line: 219, column: 13)
!218 = !DILocation(line: 220, column: 23, scope: !217)
!219 = !DILocation(line: 220, column: 18, scope: !217)
!220 = !DILocation(line: 220, column: 21, scope: !217)
!221 = !DILocation(line: 221, column: 23, scope: !217)
!222 = !DILocation(line: 221, column: 21, scope: !217)
!223 = !DILocation(line: 0, scope: !207)
!224 = !DILocation(line: 224, column: 19, scope: !48)
!225 = !DILocation(line: 224, column: 17, scope: !48)
!226 = !DILocation(line: 225, column: 22, scope: !48)
!227 = !DILocation(line: 227, column: 21, scope: !48)
!228 = !DILocation(line: 227, column: 14, scope: !48)
!229 = !DILocation(line: 229, column: 15, scope: !230)
!230 = distinct !DILexicalBlock(scope: !48, file: !1, line: 229, column: 15)
!231 = !DILocation(line: 229, column: 15, scope: !48)
!232 = !DILocation(line: 233, column: 11, scope: !48)
!233 = !DILocation(line: 235, column: 11, scope: !48)
!234 = !DILocation(line: 237, column: 18, scope: !48)
!235 = !DILocation(line: 239, column: 18, scope: !48)
!236 = !DILocation(line: 240, column: 16, scope: !48)
!237 = !DILocation(line: 240, column: 11, scope: !48)
!238 = !DILocation(line: 240, column: 28, scope: !48)
!239 = !DILocation(line: 244, column: 18, scope: !48)
!240 = !DILocation(line: 245, column: 16, scope: !48)
!241 = !DILocation(line: 245, column: 11, scope: !48)
!242 = !DILocation(line: 245, column: 28, scope: !48)
!243 = !DILocation(line: 263, column: 15, scope: !244)
!244 = distinct !DILexicalBlock(scope: !245, file: !1, line: 263, column: 15)
!245 = distinct !DILexicalBlock(scope: !49, file: !1, line: 261, column: 9)
!246 = !DILocation(line: 263, column: 15, scope: !245)
!247 = !DILocation(line: 266, column: 14, scope: !245)
!248 = !DILocation(line: 266, column: 26, scope: !245)
!249 = !DILocation(line: 266, column: 21, scope: !245)
!250 = !DILocation(line: 266, column: 24, scope: !245)
!251 = !DILocation(line: 268, column: 15, scope: !252)
!252 = distinct !DILexicalBlock(scope: !245, file: !1, line: 268, column: 15)
!253 = !DILocation(line: 268, column: 15, scope: !245)
!254 = !{!"branch_weights", i32 1, i32 2000}
!255 = !DILocation(line: 270, column: 32, scope: !256)
!256 = distinct !DILexicalBlock(scope: !252, file: !1, line: 269, column: 13)
!257 = !DILocation(line: 270, column: 15, scope: !256)
!258 = !DILocation(line: 270, column: 30, scope: !256)
!259 = !DILocation(line: 271, column: 26, scope: !256)
!260 = !DILocation(line: 272, column: 13, scope: !256)
!261 = !DILocation(line: 0, scope: !49)
!262 = !DILocation(line: 147, column: 12, scope: !50)
!263 = distinct !{!263, !62, !264}
!264 = !DILocation(line: 274, column: 5, scope: !17)
!265 = !DILocation(line: 110, column: 13, scope: !17)
!266 = !DILocation(line: 142, column: 7, scope: !17)
!267 = !DILocation(line: 276, column: 10, scope: !268)
!268 = distinct !DILexicalBlock(scope: !17, file: !1, line: 276, column: 7)
!269 = !DILocation(line: 276, column: 14, scope: !268)
!270 = !DILocation(line: 276, column: 7, scope: !17)
!271 = !DILocation(line: 279, column: 13, scope: !17)
!272 = !DILocation(line: 279, column: 3, scope: !17)
!273 = !DILocation(line: 281, column: 10, scope: !274)
!274 = distinct !DILexicalBlock(scope: !17, file: !1, line: 280, column: 5)
!275 = !DILocation(line: 281, column: 25, scope: !274)
!276 = !DILocation(line: 281, column: 22, scope: !274)
!277 = !DILocation(line: 281, column: 17, scope: !274)
!278 = !DILocation(line: 281, column: 20, scope: !274)
!279 = !DILocation(line: 283, column: 11, scope: !280)
!280 = distinct !DILexicalBlock(scope: !274, file: !1, line: 283, column: 11)
!281 = !DILocation(line: 283, column: 11, scope: !274)
!282 = !DILocation(line: 285, column: 28, scope: !283)
!283 = distinct !DILexicalBlock(scope: !280, file: !1, line: 284, column: 9)
!284 = !DILocation(line: 285, column: 11, scope: !283)
!285 = !DILocation(line: 285, column: 26, scope: !283)
!286 = !DILocation(line: 286, column: 22, scope: !283)
!287 = !DILocation(line: 287, column: 9, scope: !283)
!288 = !DILocation(line: 0, scope: !274)
!289 = distinct !{!289, !272, !290}
!290 = !DILocation(line: 288, column: 5, scope: !17)
!291 = !DILocation(line: 290, column: 20, scope: !17)
!292 = !DILocation(line: 290, column: 13, scope: !17)
!293 = !DILocation(line: 290, column: 3, scope: !17)
!294 = !DILocation(line: 290, column: 18, scope: !17)
!295 = !DILocation(line: 291, column: 9, scope: !17)
!296 = !DILocation(line: 291, column: 6, scope: !17)
!297 = !DILocation(line: 293, column: 13, scope: !17)
!298 = !DILocation(line: 293, column: 10, scope: !17)
!299 = !DILocation(line: 293, column: 3, scope: !17)
!300 = !DILocation(line: 294, column: 1, scope: !17)
