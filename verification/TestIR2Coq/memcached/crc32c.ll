; ModuleID = 'crc32c.c'
source_filename = "crc32c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crc32c = dso_local local_unnamed_addr global i32 (i32, i8*, i64)* null, align 8, !dbg !0
@crc32c_once_little = internal global i32 0, align 4, !dbg !60
@crc32c_table_little = internal unnamed_addr global [8 x [256 x i32]] zeroinitializer, align 16, !dbg !36
@crc32c_once_big = internal global i32 0, align 4, !dbg !62
@crc32c_table_big_byte = internal unnamed_addr global [256 x i32] zeroinitializer, align 16, !dbg !42
@crc32c_table_big = internal unnamed_addr global [8 x [256 x i64]] zeroinitializer, align 16, !dbg !46
@crc32c_once_hw = internal global i32 0, align 4, !dbg !49
@crc32c_long = internal global [4 x [256 x i32]] zeroinitializer, align 16, !dbg !53
@crc32c_short = internal global [4 x [256 x i32]] zeroinitializer, align 16, !dbg !58

; Function Attrs: noinline nounwind uwtable writeonly
define dso_local void @crc32c_init() local_unnamed_addr #0 !dbg !72 {
entry:
  call void @llvm.dbg.value(metadata i32 1, metadata !77, metadata !DIExpression()), !dbg !80
  %0 = tail call i32 asm "cpuid", "={cx},{ax},~{ebx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 1) #10, !dbg !81, !srcloc !82
  call void @llvm.dbg.value(metadata i32 %0, metadata !79, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.value(metadata i32 %0, metadata !76, metadata !DIExpression(DW_OP_constu, 20, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !83
  %1 = and i32 %0, 1048576, !dbg !84
  %tobool.not = icmp eq i32 %1, 0, !dbg !84
  %crc32c_sw.crc32c_hw = select i1 %tobool.not, i32 (i32, i8*, i64)* @crc32c_sw, i32 (i32, i8*, i64)* @crc32c_hw
  store i32 (i32, i8*, i64)* %crc32c_sw.crc32c_hw, i32 (i32, i8*, i64)** @crc32c, align 8, !dbg !86, !tbaa !87
  ret void, !dbg !91
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @crc32c_hw(i32 noundef %crc, i8* noundef %buf, i64 noundef %len) #3 !dbg !92 {
entry:
  call void @llvm.dbg.value(metadata i32 %crc, metadata !94, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i8* %buf, metadata !95, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i64 %len, metadata !96, metadata !DIExpression()), !dbg !113
  %call = tail call i32 @pthread_once(i32* noundef nonnull @crc32c_once_hw, void ()* noundef nonnull @crc32c_init_hw) #11, !dbg !114
  %neg = xor i32 %crc, -1, !dbg !115
  call void @llvm.dbg.value(metadata i32 %neg, metadata !94, metadata !DIExpression()), !dbg !113
  %conv = zext i32 %neg to i64, !dbg !116
  call void @llvm.dbg.value(metadata i64 %conv, metadata !97, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i8* %buf, metadata !98, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i64 %len, metadata !96, metadata !DIExpression()), !dbg !113
  %tobool118 = icmp ne i64 %len, 0, !dbg !117
  %0 = ptrtoint i8* %buf to i64, !dbg !118
  %and119 = and i64 %0, 7, !dbg !118
  %cmp120 = icmp ne i64 %and119, 0, !dbg !118
  %1 = and i1 %tobool118, %cmp120, !dbg !118
  br i1 %1, label %while.body, label %while.cond2.preheader, !dbg !119

while.cond2.preheader:                            ; preds = %while.body, %entry
  %next.0.lcssa = phi i8* [ %buf, %entry ], [ %incdec.ptr, %while.body ], !dbg !113
  %crc0.0.lcssa = phi i64 [ %conv, %entry ], [ %2, %while.body ], !dbg !113
  %len.addr.0.lcssa = phi i64 [ %len, %entry ], [ %dec, %while.body ]
  call void @llvm.dbg.value(metadata i64 %len.addr.0.lcssa, metadata !96, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i64 %crc0.0.lcssa, metadata !97, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i8* %next.0.lcssa, metadata !98, metadata !DIExpression()), !dbg !113
  %cmp3128 = icmp ugt i64 %len.addr.0.lcssa, 24575, !dbg !120
  br i1 %cmp3128, label %do.body.preheader, label %while.cond20.preheader, !dbg !121

while.body:                                       ; preds = %entry, %while.body
  %len.addr.0123 = phi i64 [ %dec, %while.body ], [ %len, %entry ]
  %crc0.0122 = phi i64 [ %2, %while.body ], [ %conv, %entry ]
  %next.0121 = phi i8* [ %incdec.ptr, %while.body ], [ %buf, %entry ]
  call void @llvm.dbg.value(metadata i64 %len.addr.0123, metadata !96, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i64 %crc0.0122, metadata !97, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i8* %next.0121, metadata !98, metadata !DIExpression()), !dbg !113
  %2 = tail call i64 asm "crc32b\09($1), $0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i8* %next.0121, i64 %crc0.0122) #10, !dbg !122, !srcloc !124
  call void @llvm.dbg.value(metadata i64 %2, metadata !97, metadata !DIExpression()), !dbg !113
  %incdec.ptr = getelementptr inbounds i8, i8* %next.0121, i64 1, !dbg !125
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !98, metadata !DIExpression()), !dbg !113
  %dec = add i64 %len.addr.0123, -1, !dbg !126
  call void @llvm.dbg.value(metadata i64 %dec, metadata !96, metadata !DIExpression()), !dbg !113
  %tobool = icmp ne i64 %dec, 0, !dbg !117
  %3 = ptrtoint i8* %incdec.ptr to i64, !dbg !118
  %and = and i64 %3, 7, !dbg !118
  %cmp = icmp ne i64 %and, 0, !dbg !118
  %4 = select i1 %tobool, i1 %cmp, i1 false, !dbg !118
  br i1 %4, label %while.body, label %while.cond2.preheader, !dbg !119, !llvm.loop !127

do.body.preheader:                                ; preds = %while.cond2.preheader, %do.end
  %len.addr.1131 = phi i64 [ %sub, %do.end ], [ %len.addr.0.lcssa, %while.cond2.preheader ]
  %crc0.1130 = phi i64 [ %xor17, %do.end ], [ %crc0.0.lcssa, %while.cond2.preheader ]
  %next.1129 = phi i8* [ %add.ptr18, %do.end ], [ %next.0.lcssa, %while.cond2.preheader ]
  call void @llvm.dbg.value(metadata i64 %len.addr.1131, metadata !96, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i64 %crc0.1130, metadata !97, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i8* %next.1129, metadata !98, metadata !DIExpression()), !dbg !113
  br label %do.body, !dbg !130

while.cond20.preheader:                           ; preds = %do.end, %while.cond2.preheader
  %next.1.lcssa = phi i8* [ %next.0.lcssa, %while.cond2.preheader ], [ %add.ptr18, %do.end ], !dbg !113
  %crc0.1.lcssa = phi i64 [ %crc0.0.lcssa, %while.cond2.preheader ], [ %xor17, %do.end ], !dbg !113
  %len.addr.1.lcssa = phi i64 [ %len.addr.0.lcssa, %while.cond2.preheader ], [ %sub, %do.end ]
  call void @llvm.dbg.value(metadata i64 %len.addr.1.lcssa, metadata !96, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i64 %crc0.1.lcssa, metadata !97, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i8* %next.1.lcssa, metadata !98, metadata !DIExpression()), !dbg !113
  %cmp21138 = icmp ugt i64 %len.addr.1.lcssa, 767, !dbg !131
  br i1 %cmp21138, label %do.body28.preheader, label %while.end47, !dbg !132

do.body:                                          ; preds = %do.body.preheader, %do.body
  %crc1.0 = phi i64 [ %asmresult6, %do.body ], [ 0, %do.body.preheader ], !dbg !133
  %crc2.0 = phi i64 [ %asmresult7, %do.body ], [ 0, %do.body.preheader ], !dbg !133
  %next.2.idx = phi i64 [ %next.2.add, %do.body ], [ 0, %do.body.preheader ]
  %crc0.2 = phi i64 [ %asmresult, %do.body ], [ %crc0.1130, %do.body.preheader ], !dbg !113
  %next.2.ptr = getelementptr inbounds i8, i8* %next.1129, i64 %next.2.idx, !dbg !113
  call void @llvm.dbg.value(metadata i64 %crc0.2, metadata !97, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i8* %next.2.ptr, metadata !98, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i64 %crc2.0, metadata !104, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 %crc1.0, metadata !102, metadata !DIExpression()), !dbg !133
  %5 = tail call { i64, i64, i64 } asm "crc32q\09($3), $0\0A\09crc32q\098192($3), $1\0A\09crc32q\0916384($3), $2", "=r,=r,=r,r,0,1,2,~{dirflag},~{fpsr},~{flags}"(i8* %next.2.ptr, i64 %crc0.2, i64 %crc1.0, i64 %crc2.0) #10, !dbg !134, !srcloc !136
  %asmresult = extractvalue { i64, i64, i64 } %5, 0, !dbg !134
  %asmresult6 = extractvalue { i64, i64, i64 } %5, 1, !dbg !134
  %asmresult7 = extractvalue { i64, i64, i64 } %5, 2, !dbg !134
  call void @llvm.dbg.value(metadata i64 %asmresult, metadata !97, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i64 %asmresult6, metadata !102, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 %asmresult7, metadata !104, metadata !DIExpression()), !dbg !133
  %next.2.add = add nuw nsw i64 %next.2.idx, 8, !dbg !137
  call void @llvm.dbg.value(metadata !DIArgList(i8* %next.1129, i64 %next.2.add), metadata !98, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !113
  %cmp9 = icmp ult i64 %next.2.idx, 8184, !dbg !138
  br i1 %cmp9, label %do.body, label %do.end, !dbg !139, !llvm.loop !140

do.end:                                           ; preds = %do.body
  %asmresult.le = extractvalue { i64, i64, i64 } %5, 0, !dbg !134
  %asmresult6.le = extractvalue { i64, i64, i64 } %5, 1, !dbg !134
  %asmresult7.le = extractvalue { i64, i64, i64 } %5, 2, !dbg !134
  call void @llvm.dbg.value(metadata i8* %next.1129, metadata !98, metadata !DIExpression(DW_OP_plus_uconst, 8192, DW_OP_stack_value)), !dbg !113
  %conv11 = trunc i64 %asmresult.le to i32, !dbg !142
  %call12 = tail call fastcc i32 @crc32c_shift([256 x i32]* noundef getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @crc32c_long, i64 0, i64 0), i32 noundef %conv11) #12, !dbg !143
  call void @llvm.dbg.value(metadata !DIArgList(i64 %asmresult6.le, i32 %call12), metadata !97, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_xor, DW_OP_stack_value)), !dbg !113
  %6 = trunc i64 %asmresult6.le to i32, !dbg !144
  %conv14 = xor i32 %call12, %6, !dbg !144
  %call15 = tail call fastcc i32 @crc32c_shift([256 x i32]* noundef getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @crc32c_long, i64 0, i64 0), i32 noundef %conv14) #12, !dbg !145
  %conv16 = zext i32 %call15 to i64, !dbg !145
  %xor17 = xor i64 %asmresult7.le, %conv16, !dbg !146
  call void @llvm.dbg.value(metadata i64 %xor17, metadata !97, metadata !DIExpression()), !dbg !113
  %add.ptr18 = getelementptr inbounds i8, i8* %next.1129, i64 24576, !dbg !147
  call void @llvm.dbg.value(metadata i8* %add.ptr18, metadata !98, metadata !DIExpression()), !dbg !113
  %sub = add i64 %len.addr.1131, -24576, !dbg !148
  call void @llvm.dbg.value(metadata i64 %sub, metadata !96, metadata !DIExpression()), !dbg !113
  %cmp3 = icmp ugt i64 %sub, 24575, !dbg !120
  br i1 %cmp3, label %do.body.preheader, label %while.cond20.preheader, !dbg !121, !llvm.loop !149

do.body28.preheader:                              ; preds = %while.cond20.preheader, %do.end36
  %len.addr.2141 = phi i64 [ %sub46, %do.end36 ], [ %len.addr.1.lcssa, %while.cond20.preheader ]
  %crc0.3140 = phi i64 [ %xor44, %do.end36 ], [ %crc0.1.lcssa, %while.cond20.preheader ]
  %next.3139 = phi i8* [ %add.ptr45, %do.end36 ], [ %next.1.lcssa, %while.cond20.preheader ]
  call void @llvm.dbg.value(metadata i64 %len.addr.2141, metadata !96, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i64 %crc0.3140, metadata !97, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i8* %next.3139, metadata !98, metadata !DIExpression()), !dbg !113
  br label %do.body28, !dbg !151

do.body28:                                        ; preds = %do.body28.preheader, %do.body28
  %next.4.idx = phi i64 [ %next.4.add, %do.body28 ], [ 0, %do.body28.preheader ]
  %crc124.0 = phi i64 [ %asmresult30, %do.body28 ], [ 0, %do.body28.preheader ], !dbg !152
  %crc225.0 = phi i64 [ %asmresult31, %do.body28 ], [ 0, %do.body28.preheader ], !dbg !152
  %crc0.4 = phi i64 [ %asmresult29, %do.body28 ], [ %crc0.3140, %do.body28.preheader ], !dbg !113
  %next.4.ptr = getelementptr inbounds i8, i8* %next.3139, i64 %next.4.idx, !dbg !113
  call void @llvm.dbg.value(metadata i64 %crc0.4, metadata !97, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i64 %crc225.0, metadata !109, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.value(metadata i64 %crc124.0, metadata !107, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.value(metadata i8* %next.4.ptr, metadata !98, metadata !DIExpression()), !dbg !113
  %7 = tail call { i64, i64, i64 } asm "crc32q\09($3), $0\0A\09crc32q\09256($3), $1\0A\09crc32q\09512($3), $2", "=r,=r,=r,r,0,1,2,~{dirflag},~{fpsr},~{flags}"(i8* %next.4.ptr, i64 %crc0.4, i64 %crc124.0, i64 %crc225.0) #10, !dbg !153, !srcloc !155
  %asmresult29 = extractvalue { i64, i64, i64 } %7, 0, !dbg !153
  %asmresult30 = extractvalue { i64, i64, i64 } %7, 1, !dbg !153
  %asmresult31 = extractvalue { i64, i64, i64 } %7, 2, !dbg !153
  call void @llvm.dbg.value(metadata i64 %asmresult29, metadata !97, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i64 %asmresult30, metadata !107, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.value(metadata i64 %asmresult31, metadata !109, metadata !DIExpression()), !dbg !152
  %next.4.add = add nuw nsw i64 %next.4.idx, 8, !dbg !156
  call void @llvm.dbg.value(metadata !DIArgList(i8* %next.3139, i64 %next.4.add), metadata !98, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !113
  %cmp34 = icmp ult i64 %next.4.idx, 248, !dbg !157
  br i1 %cmp34, label %do.body28, label %do.end36, !dbg !158, !llvm.loop !159

do.end36:                                         ; preds = %do.body28
  %asmresult29.le = extractvalue { i64, i64, i64 } %7, 0, !dbg !153
  %asmresult30.le = extractvalue { i64, i64, i64 } %7, 1, !dbg !153
  %asmresult31.le = extractvalue { i64, i64, i64 } %7, 2, !dbg !153
  call void @llvm.dbg.value(metadata i8* %next.3139, metadata !98, metadata !DIExpression(DW_OP_plus_uconst, 256, DW_OP_stack_value)), !dbg !113
  %conv37 = trunc i64 %asmresult29.le to i32, !dbg !161
  %call38 = tail call fastcc i32 @crc32c_shift([256 x i32]* noundef getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @crc32c_short, i64 0, i64 0), i32 noundef %conv37) #12, !dbg !162
  call void @llvm.dbg.value(metadata !DIArgList(i64 %asmresult30.le, i32 %call38), metadata !97, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_xor, DW_OP_stack_value)), !dbg !113
  %8 = trunc i64 %asmresult30.le to i32, !dbg !163
  %conv41 = xor i32 %call38, %8, !dbg !163
  %call42 = tail call fastcc i32 @crc32c_shift([256 x i32]* noundef getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @crc32c_short, i64 0, i64 0), i32 noundef %conv41) #12, !dbg !164
  %conv43 = zext i32 %call42 to i64, !dbg !164
  %xor44 = xor i64 %asmresult31.le, %conv43, !dbg !165
  call void @llvm.dbg.value(metadata i64 %xor44, metadata !97, metadata !DIExpression()), !dbg !113
  %add.ptr45 = getelementptr inbounds i8, i8* %next.3139, i64 768, !dbg !166
  call void @llvm.dbg.value(metadata i8* %add.ptr45, metadata !98, metadata !DIExpression()), !dbg !113
  %sub46 = add i64 %len.addr.2141, -768, !dbg !167
  call void @llvm.dbg.value(metadata i64 %sub46, metadata !96, metadata !DIExpression()), !dbg !113
  %cmp21 = icmp ugt i64 %sub46, 767, !dbg !131
  br i1 %cmp21, label %do.body28.preheader, label %while.end47, !dbg !132, !llvm.loop !168

while.end47:                                      ; preds = %do.end36, %while.cond20.preheader
  %next.3.lcssa = phi i8* [ %next.1.lcssa, %while.cond20.preheader ], [ %add.ptr45, %do.end36 ], !dbg !113
  %crc0.3.lcssa = phi i64 [ %crc0.1.lcssa, %while.cond20.preheader ], [ %xor44, %do.end36 ], !dbg !113
  %len.addr.2.lcssa = phi i64 [ %len.addr.1.lcssa, %while.cond20.preheader ], [ %sub46, %do.end36 ]
  %and49 = and i64 %len.addr.2.lcssa, 7, !dbg !170
  %sub50 = and i64 %len.addr.2.lcssa, -8, !dbg !171
  %add.ptr51 = getelementptr inbounds i8, i8* %next.3.lcssa, i64 %sub50, !dbg !172
  call void @llvm.dbg.value(metadata i8* %add.ptr51, metadata !111, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata i64 %crc0.3.lcssa, metadata !97, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i8* %next.3.lcssa, metadata !98, metadata !DIExpression()), !dbg !113
  %cmp53145.not = icmp eq i64 %sub50, 0, !dbg !174
  br i1 %cmp53145.not, label %while.cond59.preheader, label %while.body55, !dbg !175

while.cond59.preheader:                           ; preds = %while.body55, %while.end47
  %next.5.lcssa = phi i8* [ %next.3.lcssa, %while.end47 ], [ %add.ptr56, %while.body55 ], !dbg !113
  %crc0.5.lcssa = phi i64 [ %crc0.3.lcssa, %while.end47 ], [ %9, %while.body55 ], !dbg !113
  call void @llvm.dbg.value(metadata i64 %and49, metadata !96, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i64 %crc0.5.lcssa, metadata !97, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i8* %next.5.lcssa, metadata !98, metadata !DIExpression()), !dbg !113
  %tobool60.not150 = icmp eq i64 %and49, 0, !dbg !176
  br i1 %tobool60.not150, label %while.end64, label %while.body61, !dbg !176

while.body55:                                     ; preds = %while.end47, %while.body55
  %crc0.5147 = phi i64 [ %9, %while.body55 ], [ %crc0.3.lcssa, %while.end47 ]
  %next.5146 = phi i8* [ %add.ptr56, %while.body55 ], [ %next.3.lcssa, %while.end47 ]
  call void @llvm.dbg.value(metadata i64 %crc0.5147, metadata !97, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i8* %next.5146, metadata !98, metadata !DIExpression()), !dbg !113
  %9 = tail call i64 asm "crc32q\09($1), $0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i8* %next.5146, i64 %crc0.5147) #10, !dbg !177, !srcloc !179
  call void @llvm.dbg.value(metadata i64 %9, metadata !97, metadata !DIExpression()), !dbg !113
  %add.ptr56 = getelementptr inbounds i8, i8* %next.5146, i64 8, !dbg !180
  call void @llvm.dbg.value(metadata i8* %add.ptr56, metadata !98, metadata !DIExpression()), !dbg !113
  %cmp53 = icmp ult i8* %add.ptr56, %add.ptr51, !dbg !174
  br i1 %cmp53, label %while.body55, label %while.cond59.preheader, !dbg !175, !llvm.loop !181

while.body61:                                     ; preds = %while.cond59.preheader, %while.body61
  %len.addr.3153 = phi i64 [ %dec63, %while.body61 ], [ %and49, %while.cond59.preheader ]
  %crc0.6152 = phi i64 [ %10, %while.body61 ], [ %crc0.5.lcssa, %while.cond59.preheader ]
  %next.6151 = phi i8* [ %incdec.ptr62, %while.body61 ], [ %next.5.lcssa, %while.cond59.preheader ]
  call void @llvm.dbg.value(metadata i64 %len.addr.3153, metadata !96, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i64 %crc0.6152, metadata !97, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i8* %next.6151, metadata !98, metadata !DIExpression()), !dbg !113
  %10 = tail call i64 asm "crc32b\09($1), $0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i8* %next.6151, i64 %crc0.6152) #10, !dbg !183, !srcloc !185
  call void @llvm.dbg.value(metadata i64 %10, metadata !97, metadata !DIExpression()), !dbg !113
  %incdec.ptr62 = getelementptr inbounds i8, i8* %next.6151, i64 1, !dbg !186
  call void @llvm.dbg.value(metadata i8* %incdec.ptr62, metadata !98, metadata !DIExpression()), !dbg !113
  %dec63 = add nsw i64 %len.addr.3153, -1, !dbg !187
  call void @llvm.dbg.value(metadata i64 %dec63, metadata !96, metadata !DIExpression()), !dbg !113
  %tobool60.not = icmp eq i64 %dec63, 0, !dbg !176
  br i1 %tobool60.not, label %while.end64, label %while.body61, !dbg !176, !llvm.loop !188

while.end64:                                      ; preds = %while.body61, %while.cond59.preheader
  %crc0.6.lcssa = phi i64 [ %crc0.5.lcssa, %while.cond59.preheader ], [ %10, %while.body61 ], !dbg !113
  %11 = trunc i64 %crc0.6.lcssa to i32, !dbg !190
  %conv66 = xor i32 %11, -1, !dbg !190
  ret i32 %conv66, !dbg !191
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crc32c_sw(i32 noundef %crc, i8* noundef %buf, i64 noundef %len) #3 !dbg !20 {
entry:
  call void @llvm.dbg.value(metadata i32 %crc, metadata !31, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata i8* %buf, metadata !32, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata i64 %len, metadata !33, metadata !DIExpression()), !dbg !192
  %call = tail call i32 @crc32c_sw_little(i32 noundef %crc, i8* noundef %buf, i64 noundef %len) #12, !dbg !193
  ret i32 %call, !dbg !195
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crc32c_sw_little(i32 noundef %crc, i8* noundef %buf, i64 noundef %len) local_unnamed_addr #3 !dbg !196 {
entry:
  call void @llvm.dbg.value(metadata i32 %crc, metadata !198, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i8* %buf, metadata !199, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i64 %len, metadata !200, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i8* %buf, metadata !201, metadata !DIExpression()), !dbg !205
  %call = tail call i32 @pthread_once(i32* noundef nonnull @crc32c_once_little, void ()* noundef nonnull @crc32c_init_sw_little) #11, !dbg !206
  %neg = xor i32 %crc, -1, !dbg !207
  call void @llvm.dbg.value(metadata i32 %neg, metadata !198, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i8* %buf, metadata !201, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i64 %len, metadata !200, metadata !DIExpression()), !dbg !205
  %tobool81 = icmp ne i64 %len, 0, !dbg !208
  %0 = ptrtoint i8* %buf to i64, !dbg !209
  %and82 = and i64 %0, 7, !dbg !209
  %cmp83 = icmp ne i64 %and82, 0, !dbg !209
  %1 = and i1 %tobool81, %cmp83, !dbg !209
  br i1 %1, label %while.body, label %while.end, !dbg !210

while.body:                                       ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %buf, metadata !201, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i64 %len, metadata !200, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i32 %neg, metadata !198, metadata !DIExpression()), !dbg !205
  %incdec.ptr = getelementptr inbounds i8, i8* %buf, i64 1, !dbg !211
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !201, metadata !DIExpression()), !dbg !205
  %2 = load i8, i8* %buf, align 1, !dbg !213, !tbaa !214
  %conv = zext i8 %2 to i32, !dbg !213
  %crc.addr.0.masked = and i32 %neg, 255, !dbg !215
  %and1 = xor i32 %crc.addr.0.masked, %conv, !dbg !215
  %idxprom = zext i32 %and1 to i64, !dbg !216
  %arrayidx = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]]* @crc32c_table_little, i64 0, i64 0, i64 %idxprom, !dbg !216
  %3 = load i32, i32* %arrayidx, align 4, !dbg !216, !tbaa !217
  %shr = lshr i32 %neg, 8, !dbg !219
  %xor2 = xor i32 %3, %shr, !dbg !220
  call void @llvm.dbg.value(metadata i32 %xor2, metadata !198, metadata !DIExpression()), !dbg !205
  %dec = add i64 %len, -1, !dbg !221
  call void @llvm.dbg.value(metadata i64 %dec, metadata !200, metadata !DIExpression()), !dbg !205
  %tobool = icmp ne i64 %dec, 0, !dbg !208
  %4 = ptrtoint i8* %incdec.ptr to i64, !dbg !209
  %and = and i64 %4, 7, !dbg !209
  %cmp = icmp ne i64 %and, 0, !dbg !209
  %5 = select i1 %tobool, i1 %cmp, i1 false, !dbg !209
  br i1 %5, label %while.body.1, label %while.end, !dbg !210, !llvm.loop !222

while.body.1:                                     ; preds = %while.body
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !201, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i64 %dec, metadata !200, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i32 %xor2, metadata !198, metadata !DIExpression()), !dbg !205
  %incdec.ptr.1 = getelementptr inbounds i8, i8* %buf, i64 2, !dbg !211
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.1, metadata !201, metadata !DIExpression()), !dbg !205
  %6 = load i8, i8* %incdec.ptr, align 1, !dbg !213, !tbaa !214
  %conv.1 = zext i8 %6 to i32, !dbg !213
  %crc.addr.0.masked.1 = and i32 %xor2, 255, !dbg !215
  %and1.1 = xor i32 %crc.addr.0.masked.1, %conv.1, !dbg !215
  %idxprom.1 = zext i32 %and1.1 to i64, !dbg !216
  %arrayidx.1 = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]]* @crc32c_table_little, i64 0, i64 0, i64 %idxprom.1, !dbg !216
  %7 = load i32, i32* %arrayidx.1, align 4, !dbg !216, !tbaa !217
  %shr.1 = lshr i32 %xor2, 8, !dbg !219
  %xor2.1 = xor i32 %7, %shr.1, !dbg !220
  call void @llvm.dbg.value(metadata i32 %xor2.1, metadata !198, metadata !DIExpression()), !dbg !205
  %dec.1 = add i64 %len, -2, !dbg !221
  call void @llvm.dbg.value(metadata i64 %dec.1, metadata !200, metadata !DIExpression()), !dbg !205
  %tobool.1 = icmp ne i64 %dec.1, 0, !dbg !208
  %8 = ptrtoint i8* %incdec.ptr.1 to i64, !dbg !209
  %and.1 = and i64 %8, 7, !dbg !209
  %cmp.1 = icmp ne i64 %and.1, 0, !dbg !209
  %9 = select i1 %tobool.1, i1 %cmp.1, i1 false, !dbg !209
  br i1 %9, label %while.body.2, label %while.end, !dbg !210, !llvm.loop !222

while.body.2:                                     ; preds = %while.body.1
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.1, metadata !201, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i64 %dec.1, metadata !200, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i32 %xor2.1, metadata !198, metadata !DIExpression()), !dbg !205
  %incdec.ptr.2 = getelementptr inbounds i8, i8* %buf, i64 3, !dbg !211
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.2, metadata !201, metadata !DIExpression()), !dbg !205
  %10 = load i8, i8* %incdec.ptr.1, align 1, !dbg !213, !tbaa !214
  %conv.2 = zext i8 %10 to i32, !dbg !213
  %crc.addr.0.masked.2 = and i32 %xor2.1, 255, !dbg !215
  %and1.2 = xor i32 %crc.addr.0.masked.2, %conv.2, !dbg !215
  %idxprom.2 = zext i32 %and1.2 to i64, !dbg !216
  %arrayidx.2 = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]]* @crc32c_table_little, i64 0, i64 0, i64 %idxprom.2, !dbg !216
  %11 = load i32, i32* %arrayidx.2, align 4, !dbg !216, !tbaa !217
  %shr.2 = lshr i32 %xor2.1, 8, !dbg !219
  %xor2.2 = xor i32 %11, %shr.2, !dbg !220
  call void @llvm.dbg.value(metadata i32 %xor2.2, metadata !198, metadata !DIExpression()), !dbg !205
  %dec.2 = add i64 %len, -3, !dbg !221
  call void @llvm.dbg.value(metadata i64 %dec.2, metadata !200, metadata !DIExpression()), !dbg !205
  %tobool.2 = icmp ne i64 %dec.2, 0, !dbg !208
  %12 = ptrtoint i8* %incdec.ptr.2 to i64, !dbg !209
  %and.2 = and i64 %12, 7, !dbg !209
  %cmp.2 = icmp ne i64 %and.2, 0, !dbg !209
  %13 = select i1 %tobool.2, i1 %cmp.2, i1 false, !dbg !209
  br i1 %13, label %while.body.3, label %while.end, !dbg !210, !llvm.loop !222

while.body.3:                                     ; preds = %while.body.2
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.2, metadata !201, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i64 %dec.2, metadata !200, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i32 %xor2.2, metadata !198, metadata !DIExpression()), !dbg !205
  %incdec.ptr.3 = getelementptr inbounds i8, i8* %buf, i64 4, !dbg !211
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.3, metadata !201, metadata !DIExpression()), !dbg !205
  %14 = load i8, i8* %incdec.ptr.2, align 1, !dbg !213, !tbaa !214
  %conv.3 = zext i8 %14 to i32, !dbg !213
  %crc.addr.0.masked.3 = and i32 %xor2.2, 255, !dbg !215
  %and1.3 = xor i32 %crc.addr.0.masked.3, %conv.3, !dbg !215
  %idxprom.3 = zext i32 %and1.3 to i64, !dbg !216
  %arrayidx.3 = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]]* @crc32c_table_little, i64 0, i64 0, i64 %idxprom.3, !dbg !216
  %15 = load i32, i32* %arrayidx.3, align 4, !dbg !216, !tbaa !217
  %shr.3 = lshr i32 %xor2.2, 8, !dbg !219
  %xor2.3 = xor i32 %15, %shr.3, !dbg !220
  call void @llvm.dbg.value(metadata i32 %xor2.3, metadata !198, metadata !DIExpression()), !dbg !205
  %dec.3 = add i64 %len, -4, !dbg !221
  call void @llvm.dbg.value(metadata i64 %dec.3, metadata !200, metadata !DIExpression()), !dbg !205
  %tobool.3 = icmp ne i64 %dec.3, 0, !dbg !208
  %16 = ptrtoint i8* %incdec.ptr.3 to i64, !dbg !209
  %and.3 = and i64 %16, 7, !dbg !209
  %cmp.3 = icmp ne i64 %and.3, 0, !dbg !209
  %17 = select i1 %tobool.3, i1 %cmp.3, i1 false, !dbg !209
  br i1 %17, label %while.body.4, label %while.end, !dbg !210, !llvm.loop !222

while.body.4:                                     ; preds = %while.body.3
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.3, metadata !201, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i64 %dec.3, metadata !200, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i32 %xor2.3, metadata !198, metadata !DIExpression()), !dbg !205
  %incdec.ptr.4 = getelementptr inbounds i8, i8* %buf, i64 5, !dbg !211
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.4, metadata !201, metadata !DIExpression()), !dbg !205
  %18 = load i8, i8* %incdec.ptr.3, align 1, !dbg !213, !tbaa !214
  %conv.4 = zext i8 %18 to i32, !dbg !213
  %crc.addr.0.masked.4 = and i32 %xor2.3, 255, !dbg !215
  %and1.4 = xor i32 %crc.addr.0.masked.4, %conv.4, !dbg !215
  %idxprom.4 = zext i32 %and1.4 to i64, !dbg !216
  %arrayidx.4 = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]]* @crc32c_table_little, i64 0, i64 0, i64 %idxprom.4, !dbg !216
  %19 = load i32, i32* %arrayidx.4, align 4, !dbg !216, !tbaa !217
  %shr.4 = lshr i32 %xor2.3, 8, !dbg !219
  %xor2.4 = xor i32 %19, %shr.4, !dbg !220
  call void @llvm.dbg.value(metadata i32 %xor2.4, metadata !198, metadata !DIExpression()), !dbg !205
  %dec.4 = add i64 %len, -5, !dbg !221
  call void @llvm.dbg.value(metadata i64 %dec.4, metadata !200, metadata !DIExpression()), !dbg !205
  %tobool.4 = icmp ne i64 %dec.4, 0, !dbg !208
  %20 = ptrtoint i8* %incdec.ptr.4 to i64, !dbg !209
  %and.4 = and i64 %20, 7, !dbg !209
  %cmp.4 = icmp ne i64 %and.4, 0, !dbg !209
  %21 = select i1 %tobool.4, i1 %cmp.4, i1 false, !dbg !209
  br i1 %21, label %while.body.5, label %while.end, !dbg !210, !llvm.loop !222

while.body.5:                                     ; preds = %while.body.4
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.4, metadata !201, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i64 %dec.4, metadata !200, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i32 %xor2.4, metadata !198, metadata !DIExpression()), !dbg !205
  %incdec.ptr.5 = getelementptr inbounds i8, i8* %buf, i64 6, !dbg !211
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.5, metadata !201, metadata !DIExpression()), !dbg !205
  %22 = load i8, i8* %incdec.ptr.4, align 1, !dbg !213, !tbaa !214
  %conv.5 = zext i8 %22 to i32, !dbg !213
  %crc.addr.0.masked.5 = and i32 %xor2.4, 255, !dbg !215
  %and1.5 = xor i32 %crc.addr.0.masked.5, %conv.5, !dbg !215
  %idxprom.5 = zext i32 %and1.5 to i64, !dbg !216
  %arrayidx.5 = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]]* @crc32c_table_little, i64 0, i64 0, i64 %idxprom.5, !dbg !216
  %23 = load i32, i32* %arrayidx.5, align 4, !dbg !216, !tbaa !217
  %shr.5 = lshr i32 %xor2.4, 8, !dbg !219
  %xor2.5 = xor i32 %23, %shr.5, !dbg !220
  call void @llvm.dbg.value(metadata i32 %xor2.5, metadata !198, metadata !DIExpression()), !dbg !205
  %dec.5 = add i64 %len, -6, !dbg !221
  call void @llvm.dbg.value(metadata i64 %dec.5, metadata !200, metadata !DIExpression()), !dbg !205
  %tobool.5 = icmp ne i64 %dec.5, 0, !dbg !208
  %24 = ptrtoint i8* %incdec.ptr.5 to i64, !dbg !209
  %and.5 = and i64 %24, 7, !dbg !209
  %cmp.5 = icmp ne i64 %and.5, 0, !dbg !209
  %25 = select i1 %tobool.5, i1 %cmp.5, i1 false, !dbg !209
  br i1 %25, label %while.body.6, label %while.end, !dbg !210, !llvm.loop !222

while.body.6:                                     ; preds = %while.body.5
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.5, metadata !201, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i64 %dec.5, metadata !200, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i32 %xor2.5, metadata !198, metadata !DIExpression()), !dbg !205
  %incdec.ptr.6 = getelementptr inbounds i8, i8* %buf, i64 7, !dbg !211
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.6, metadata !201, metadata !DIExpression()), !dbg !205
  %26 = load i8, i8* %incdec.ptr.5, align 1, !dbg !213, !tbaa !214
  %conv.6 = zext i8 %26 to i32, !dbg !213
  %crc.addr.0.masked.6 = and i32 %xor2.5, 255, !dbg !215
  %and1.6 = xor i32 %crc.addr.0.masked.6, %conv.6, !dbg !215
  %idxprom.6 = zext i32 %and1.6 to i64, !dbg !216
  %arrayidx.6 = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]]* @crc32c_table_little, i64 0, i64 0, i64 %idxprom.6, !dbg !216
  %27 = load i32, i32* %arrayidx.6, align 4, !dbg !216, !tbaa !217
  %shr.6 = lshr i32 %xor2.5, 8, !dbg !219
  %xor2.6 = xor i32 %27, %shr.6, !dbg !220
  call void @llvm.dbg.value(metadata i32 %xor2.6, metadata !198, metadata !DIExpression()), !dbg !205
  %dec.6 = add i64 %len, -7, !dbg !221
  call void @llvm.dbg.value(metadata i64 %dec.6, metadata !200, metadata !DIExpression()), !dbg !205
  %tobool.6 = icmp ne i64 %dec.6, 0, !dbg !208
  %28 = ptrtoint i8* %incdec.ptr.6 to i64, !dbg !209
  %and.6 = and i64 %28, 7, !dbg !209
  %cmp.6 = icmp ne i64 %and.6, 0, !dbg !209
  %29 = select i1 %tobool.6, i1 %cmp.6, i1 false, !dbg !209
  br i1 %29, label %while.body.7, label %while.end, !dbg !210, !llvm.loop !222

while.body.7:                                     ; preds = %while.body.6
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.6, metadata !201, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i64 %dec.6, metadata !200, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i32 %xor2.6, metadata !198, metadata !DIExpression()), !dbg !205
  %incdec.ptr.7 = getelementptr inbounds i8, i8* %buf, i64 8, !dbg !211
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.7, metadata !201, metadata !DIExpression()), !dbg !205
  %30 = load i8, i8* %incdec.ptr.6, align 1, !dbg !213, !tbaa !214
  %conv.7 = zext i8 %30 to i32, !dbg !213
  %crc.addr.0.masked.7 = and i32 %xor2.6, 255, !dbg !215
  %and1.7 = xor i32 %crc.addr.0.masked.7, %conv.7, !dbg !215
  %idxprom.7 = zext i32 %and1.7 to i64, !dbg !216
  %arrayidx.7 = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]]* @crc32c_table_little, i64 0, i64 0, i64 %idxprom.7, !dbg !216
  %31 = load i32, i32* %arrayidx.7, align 4, !dbg !216, !tbaa !217
  %shr.7 = lshr i32 %xor2.6, 8, !dbg !219
  %xor2.7 = xor i32 %31, %shr.7, !dbg !220
  call void @llvm.dbg.value(metadata i32 %xor2.7, metadata !198, metadata !DIExpression()), !dbg !205
  %dec.7 = add i64 %len, -8, !dbg !221
  call void @llvm.dbg.value(metadata i64 %dec.7, metadata !200, metadata !DIExpression()), !dbg !205
  br label %while.end

while.end:                                        ; preds = %while.body, %while.body.1, %while.body.2, %while.body.3, %while.body.4, %while.body.5, %while.body.6, %while.body.7, %entry
  %crc.addr.0.lcssa = phi i32 [ %neg, %entry ], [ %xor2, %while.body ], [ %xor2.1, %while.body.1 ], [ %xor2.2, %while.body.2 ], [ %xor2.3, %while.body.3 ], [ %xor2.4, %while.body.4 ], [ %xor2.5, %while.body.5 ], [ %xor2.6, %while.body.6 ], [ %xor2.7, %while.body.7 ], !dbg !205
  %len.addr.0.lcssa = phi i64 [ %len, %entry ], [ %dec, %while.body ], [ %dec.1, %while.body.1 ], [ %dec.2, %while.body.2 ], [ %dec.3, %while.body.3 ], [ %dec.4, %while.body.4 ], [ %dec.5, %while.body.5 ], [ %dec.6, %while.body.6 ], [ %dec.7, %while.body.7 ]
  %next.0.lcssa = phi i8* [ %buf, %entry ], [ %incdec.ptr, %while.body ], [ %incdec.ptr.1, %while.body.1 ], [ %incdec.ptr.2, %while.body.2 ], [ %incdec.ptr.3, %while.body.3 ], [ %incdec.ptr.4, %while.body.4 ], [ %incdec.ptr.5, %while.body.5 ], [ %incdec.ptr.6, %while.body.6 ], [ %incdec.ptr.7, %while.body.7 ], !dbg !205
  %cmp3 = icmp ugt i64 %len.addr.0.lcssa, 7, !dbg !224
  br i1 %cmp3, label %do.body, label %if.end, !dbg !225

do.body:                                          ; preds = %while.end, %do.body
  %len.addr.1 = phi i64 [ %sub, %do.body ], [ %len.addr.0.lcssa, %while.end ]
  %next.1 = phi i8* [ %add.ptr, %do.body ], [ %next.0.lcssa, %while.end ], !dbg !205
  %crcw.0.in = phi i32 [ %xor35, %do.body ], [ %crc.addr.0.lcssa, %while.end ]
  %crcw.0 = zext i32 %crcw.0.in to i64, !dbg !226
  call void @llvm.dbg.value(metadata i64 %crcw.0, metadata !202, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i8* %next.1, metadata !201, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i64 %len.addr.1, metadata !200, metadata !DIExpression()), !dbg !205
  %32 = bitcast i8* %next.1 to i64*, !dbg !227
  %33 = load i64, i64* %32, align 8, !dbg !227, !tbaa !229
  %xor6 = xor i64 %33, %crcw.0, !dbg !231
  call void @llvm.dbg.value(metadata !DIArgList(i64 %33, i64 %crcw.0), metadata !202, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value)), !dbg !226
  %and7 = and i64 %xor6, 255, !dbg !232
  %arrayidx8 = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]]* @crc32c_table_little, i64 0, i64 7, i64 %and7, !dbg !233
  %34 = load i32, i32* %arrayidx8, align 4, !dbg !233, !tbaa !217
  %shr9 = lshr i64 %xor6, 8, !dbg !234
  %and10 = and i64 %shr9, 255, !dbg !235
  %arrayidx11 = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]]* @crc32c_table_little, i64 0, i64 6, i64 %and10, !dbg !236
  %35 = load i32, i32* %arrayidx11, align 4, !dbg !236, !tbaa !217
  %xor12 = xor i32 %35, %34, !dbg !237
  %shr13 = lshr i64 %xor6, 16, !dbg !238
  %and14 = and i64 %shr13, 255, !dbg !239
  %arrayidx15 = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]]* @crc32c_table_little, i64 0, i64 5, i64 %and14, !dbg !240
  %36 = load i32, i32* %arrayidx15, align 4, !dbg !240, !tbaa !217
  %xor16 = xor i32 %xor12, %36, !dbg !241
  %shr17 = lshr i64 %xor6, 24, !dbg !242
  %and18 = and i64 %shr17, 255, !dbg !243
  %arrayidx19 = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]]* @crc32c_table_little, i64 0, i64 4, i64 %and18, !dbg !244
  %37 = load i32, i32* %arrayidx19, align 4, !dbg !244, !tbaa !217
  %xor20 = xor i32 %xor16, %37, !dbg !245
  %shr21 = lshr i64 %33, 32, !dbg !246
  %and22 = and i64 %shr21, 255, !dbg !247
  %arrayidx23 = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]]* @crc32c_table_little, i64 0, i64 3, i64 %and22, !dbg !248
  %38 = load i32, i32* %arrayidx23, align 4, !dbg !248, !tbaa !217
  %xor24 = xor i32 %xor20, %38, !dbg !249
  %shr25 = lshr i64 %33, 40, !dbg !250
  %and26 = and i64 %shr25, 255, !dbg !251
  %arrayidx27 = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]]* @crc32c_table_little, i64 0, i64 2, i64 %and26, !dbg !252
  %39 = load i32, i32* %arrayidx27, align 4, !dbg !252, !tbaa !217
  %xor28 = xor i32 %xor24, %39, !dbg !253
  %shr29 = lshr i64 %33, 48, !dbg !254
  %and30 = and i64 %shr29, 255, !dbg !255
  %arrayidx31 = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]]* @crc32c_table_little, i64 0, i64 1, i64 %and30, !dbg !256
  %40 = load i32, i32* %arrayidx31, align 4, !dbg !256, !tbaa !217
  %xor32 = xor i32 %xor28, %40, !dbg !257
  %shr33 = lshr i64 %33, 56, !dbg !258
  %arrayidx34 = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]]* @crc32c_table_little, i64 0, i64 0, i64 %shr33, !dbg !259
  %41 = load i32, i32* %arrayidx34, align 4, !dbg !259, !tbaa !217
  %xor35 = xor i32 %xor32, %41, !dbg !260
  call void @llvm.dbg.value(metadata i32 %xor35, metadata !202, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !226
  %add.ptr = getelementptr inbounds i8, i8* %next.1, i64 8, !dbg !261
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !201, metadata !DIExpression()), !dbg !205
  %sub = add i64 %len.addr.1, -8, !dbg !262
  call void @llvm.dbg.value(metadata i64 %sub, metadata !200, metadata !DIExpression()), !dbg !205
  %cmp37 = icmp ugt i64 %sub, 7, !dbg !263
  br i1 %cmp37, label %do.body, label %if.end, !dbg !264, !llvm.loop !265

if.end:                                           ; preds = %do.body, %while.end
  %crc.addr.1 = phi i32 [ %crc.addr.0.lcssa, %while.end ], [ %xor35, %do.body ], !dbg !205
  %len.addr.2 = phi i64 [ %len.addr.0.lcssa, %while.end ], [ %sub, %do.body ]
  %next.2 = phi i8* [ %next.0.lcssa, %while.end ], [ %add.ptr, %do.body ], !dbg !205
  call void @llvm.dbg.value(metadata i8* %next.2, metadata !201, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i64 %len.addr.2, metadata !200, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i32 %crc.addr.1, metadata !198, metadata !DIExpression()), !dbg !205
  %tobool41.not89 = icmp eq i64 %len.addr.2, 0, !dbg !268
  br i1 %tobool41.not89, label %while.end52, label %while.body42.preheader, !dbg !268

while.body42.preheader:                           ; preds = %if.end
  %xtraiter = and i64 %len.addr.2, 1, !dbg !268
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !268
  br i1 %lcmp.mod.not, label %while.body42.prol.loopexit, label %while.body42.prol, !dbg !268

while.body42.prol:                                ; preds = %while.body42.preheader
  call void @llvm.dbg.value(metadata i8* %next.2, metadata !201, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i64 %len.addr.2, metadata !200, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i32 %crc.addr.1, metadata !198, metadata !DIExpression()), !dbg !205
  %incdec.ptr43.prol = getelementptr inbounds i8, i8* %next.2, i64 1, !dbg !269
  call void @llvm.dbg.value(metadata i8* %incdec.ptr43.prol, metadata !201, metadata !DIExpression()), !dbg !205
  %42 = load i8, i8* %next.2, align 1, !dbg !271, !tbaa !214
  %conv44.prol = zext i8 %42 to i32, !dbg !271
  %crc.addr.2.masked.prol = and i32 %crc.addr.1, 255, !dbg !272
  %and46.prol = xor i32 %crc.addr.2.masked.prol, %conv44.prol, !dbg !272
  %idxprom47.prol = zext i32 %and46.prol to i64, !dbg !273
  %arrayidx48.prol = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]]* @crc32c_table_little, i64 0, i64 0, i64 %idxprom47.prol, !dbg !273
  %43 = load i32, i32* %arrayidx48.prol, align 4, !dbg !273, !tbaa !217
  %shr49.prol = lshr i32 %crc.addr.1, 8, !dbg !274
  %xor50.prol = xor i32 %43, %shr49.prol, !dbg !275
  call void @llvm.dbg.value(metadata i32 %xor50.prol, metadata !198, metadata !DIExpression()), !dbg !205
  %dec51.prol = add i64 %len.addr.2, -1, !dbg !276
  call void @llvm.dbg.value(metadata i64 %dec51.prol, metadata !200, metadata !DIExpression()), !dbg !205
  br label %while.body42.prol.loopexit, !dbg !268

while.body42.prol.loopexit:                       ; preds = %while.body42.prol, %while.body42.preheader
  %xor50.lcssa.unr = phi i32 [ undef, %while.body42.preheader ], [ %xor50.prol, %while.body42.prol ]
  %next.392.unr = phi i8* [ %next.2, %while.body42.preheader ], [ %incdec.ptr43.prol, %while.body42.prol ]
  %len.addr.391.unr = phi i64 [ %len.addr.2, %while.body42.preheader ], [ %dec51.prol, %while.body42.prol ]
  %crc.addr.290.unr = phi i32 [ %crc.addr.1, %while.body42.preheader ], [ %xor50.prol, %while.body42.prol ]
  %44 = icmp eq i64 %len.addr.2, 1, !dbg !268
  br i1 %44, label %while.end52, label %while.body42, !dbg !268

while.body42:                                     ; preds = %while.body42.prol.loopexit, %while.body42
  %next.392 = phi i8* [ %incdec.ptr43.1, %while.body42 ], [ %next.392.unr, %while.body42.prol.loopexit ]
  %len.addr.391 = phi i64 [ %dec51.1, %while.body42 ], [ %len.addr.391.unr, %while.body42.prol.loopexit ]
  %crc.addr.290 = phi i32 [ %xor50.1, %while.body42 ], [ %crc.addr.290.unr, %while.body42.prol.loopexit ]
  call void @llvm.dbg.value(metadata i8* %next.392, metadata !201, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i64 %len.addr.391, metadata !200, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i32 %crc.addr.290, metadata !198, metadata !DIExpression()), !dbg !205
  %incdec.ptr43 = getelementptr inbounds i8, i8* %next.392, i64 1, !dbg !269
  call void @llvm.dbg.value(metadata i8* %incdec.ptr43, metadata !201, metadata !DIExpression()), !dbg !205
  %45 = load i8, i8* %next.392, align 1, !dbg !271, !tbaa !214
  %conv44 = zext i8 %45 to i32, !dbg !271
  %crc.addr.2.masked = and i32 %crc.addr.290, 255, !dbg !272
  %and46 = xor i32 %crc.addr.2.masked, %conv44, !dbg !272
  %idxprom47 = zext i32 %and46 to i64, !dbg !273
  %arrayidx48 = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]]* @crc32c_table_little, i64 0, i64 0, i64 %idxprom47, !dbg !273
  %46 = load i32, i32* %arrayidx48, align 4, !dbg !273, !tbaa !217
  %shr49 = lshr i32 %crc.addr.290, 8, !dbg !274
  %xor50 = xor i32 %46, %shr49, !dbg !275
  call void @llvm.dbg.value(metadata i32 %xor50, metadata !198, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i64 %len.addr.391, metadata !200, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !205
  call void @llvm.dbg.value(metadata i8* %incdec.ptr43, metadata !201, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i64 %len.addr.391, metadata !200, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !205
  call void @llvm.dbg.value(metadata i32 %xor50, metadata !198, metadata !DIExpression()), !dbg !205
  %incdec.ptr43.1 = getelementptr inbounds i8, i8* %next.392, i64 2, !dbg !269
  call void @llvm.dbg.value(metadata i8* %incdec.ptr43.1, metadata !201, metadata !DIExpression()), !dbg !205
  %47 = load i8, i8* %incdec.ptr43, align 1, !dbg !271, !tbaa !214
  %conv44.1 = zext i8 %47 to i32, !dbg !271
  %crc.addr.2.masked.1 = and i32 %xor50, 255, !dbg !272
  %and46.1 = xor i32 %crc.addr.2.masked.1, %conv44.1, !dbg !272
  %idxprom47.1 = zext i32 %and46.1 to i64, !dbg !273
  %arrayidx48.1 = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]]* @crc32c_table_little, i64 0, i64 0, i64 %idxprom47.1, !dbg !273
  %48 = load i32, i32* %arrayidx48.1, align 4, !dbg !273, !tbaa !217
  %shr49.1 = lshr i32 %xor50, 8, !dbg !274
  %xor50.1 = xor i32 %48, %shr49.1, !dbg !275
  call void @llvm.dbg.value(metadata i32 %xor50.1, metadata !198, metadata !DIExpression()), !dbg !205
  %dec51.1 = add i64 %len.addr.391, -2, !dbg !276
  call void @llvm.dbg.value(metadata i64 %dec51.1, metadata !200, metadata !DIExpression()), !dbg !205
  %tobool41.not.1 = icmp eq i64 %dec51.1, 0, !dbg !268
  br i1 %tobool41.not.1, label %while.end52, label %while.body42, !dbg !268, !llvm.loop !277

while.end52:                                      ; preds = %while.body42.prol.loopexit, %while.body42, %if.end
  %crc.addr.2.lcssa = phi i32 [ %crc.addr.1, %if.end ], [ %xor50.lcssa.unr, %while.body42.prol.loopexit ], [ %xor50.1, %while.body42 ], !dbg !205
  %neg53 = xor i32 %crc.addr.2.lcssa, -1, !dbg !279
  ret i32 %neg53, !dbg !280
}

declare !dbg !281 dso_local i32 @pthread_once(i32* noundef, void ()* noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @crc32c_init_sw_little() #5 !dbg !288 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !290, metadata !DIExpression()), !dbg !302
  br label %vector.body, !dbg !303

vector.body:                                      ; preds = %vector.body, %entry
  %index = phi i64 [ 0, %entry ], [ %index.next, %vector.body ], !dbg !304
  %vec.ind144 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %entry ], [ %vec.ind.next145, %vector.body ], !dbg !305
  %0 = and <4 x i32> %vec.ind144, <i32 1, i32 1, i32 1, i32 1>, !dbg !305
  %1 = icmp eq <4 x i32> %0, zeroinitializer, !dbg !305
  %2 = lshr <4 x i32> %vec.ind144, <i32 1, i32 1, i32 1, i32 1>, !dbg !306
  %3 = xor <4 x i32> %2, <i32 -2097792136, i32 -2097792136, i32 -2097792136, i32 -2097792136>, !dbg !306
  %4 = select <4 x i1> %1, <4 x i32> %2, <4 x i32> %3, !dbg !306
  %5 = and <4 x i32> %4, <i32 1, i32 1, i32 1, i32 1>, !dbg !307
  %6 = icmp eq <4 x i32> %5, zeroinitializer, !dbg !307
  %7 = lshr <4 x i32> %4, <i32 1, i32 1, i32 1, i32 1>, !dbg !308
  %8 = xor <4 x i32> %7, <i32 -2097792136, i32 -2097792136, i32 -2097792136, i32 -2097792136>, !dbg !308
  %9 = select <4 x i1> %6, <4 x i32> %7, <4 x i32> %8, !dbg !308
  %10 = and <4 x i32> %9, <i32 1, i32 1, i32 1, i32 1>, !dbg !309
  %11 = icmp eq <4 x i32> %10, zeroinitializer, !dbg !309
  %12 = lshr <4 x i32> %9, <i32 1, i32 1, i32 1, i32 1>, !dbg !310
  %13 = xor <4 x i32> %12, <i32 -2097792136, i32 -2097792136, i32 -2097792136, i32 -2097792136>, !dbg !310
  %14 = select <4 x i1> %11, <4 x i32> %12, <4 x i32> %13, !dbg !310
  %15 = and <4 x i32> %14, <i32 1, i32 1, i32 1, i32 1>, !dbg !311
  %16 = icmp eq <4 x i32> %15, zeroinitializer, !dbg !311
  %17 = lshr <4 x i32> %14, <i32 1, i32 1, i32 1, i32 1>, !dbg !312
  %18 = xor <4 x i32> %17, <i32 -2097792136, i32 -2097792136, i32 -2097792136, i32 -2097792136>, !dbg !312
  %19 = select <4 x i1> %16, <4 x i32> %17, <4 x i32> %18, !dbg !312
  %20 = and <4 x i32> %19, <i32 1, i32 1, i32 1, i32 1>, !dbg !313
  %21 = icmp eq <4 x i32> %20, zeroinitializer, !dbg !313
  %22 = lshr <4 x i32> %19, <i32 1, i32 1, i32 1, i32 1>, !dbg !314
  %23 = xor <4 x i32> %22, <i32 -2097792136, i32 -2097792136, i32 -2097792136, i32 -2097792136>, !dbg !314
  %24 = select <4 x i1> %21, <4 x i32> %22, <4 x i32> %23, !dbg !314
  %25 = and <4 x i32> %24, <i32 1, i32 1, i32 1, i32 1>, !dbg !315
  %26 = icmp eq <4 x i32> %25, zeroinitializer, !dbg !315
  %27 = lshr <4 x i32> %24, <i32 1, i32 1, i32 1, i32 1>, !dbg !316
  %28 = xor <4 x i32> %27, <i32 -2097792136, i32 -2097792136, i32 -2097792136, i32 -2097792136>, !dbg !316
  %29 = select <4 x i1> %26, <4 x i32> %27, <4 x i32> %28, !dbg !316
  %30 = and <4 x i32> %29, <i32 1, i32 1, i32 1, i32 1>, !dbg !317
  %31 = icmp eq <4 x i32> %30, zeroinitializer, !dbg !317
  %32 = lshr <4 x i32> %29, <i32 1, i32 1, i32 1, i32 1>, !dbg !318
  %33 = xor <4 x i32> %32, <i32 -2097792136, i32 -2097792136, i32 -2097792136, i32 -2097792136>, !dbg !318
  %34 = select <4 x i1> %31, <4 x i32> %32, <4 x i32> %33, !dbg !318
  %35 = and <4 x i32> %34, <i32 1, i32 1, i32 1, i32 1>, !dbg !319
  %36 = icmp eq <4 x i32> %35, zeroinitializer, !dbg !319
  %37 = lshr <4 x i32> %34, <i32 1, i32 1, i32 1, i32 1>, !dbg !320
  %38 = xor <4 x i32> %37, <i32 -2097792136, i32 -2097792136, i32 -2097792136, i32 -2097792136>, !dbg !320
  %39 = select <4 x i1> %36, <4 x i32> %37, <4 x i32> %38, !dbg !320
  %40 = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]]* @crc32c_table_little, i64 0, i64 0, i64 %index, !dbg !304
  %41 = bitcast i32* %40 to <4 x i32>*, !dbg !321
  store <4 x i32> %39, <4 x i32>* %41, align 16, !dbg !321, !tbaa !217
  %index.next = add nuw i64 %index, 4, !dbg !304
  %vec.ind.next145 = add <4 x i32> %vec.ind144, <i32 4, i32 4, i32 4, i32 4>, !dbg !305
  %42 = icmp eq i64 %index.next, 256, !dbg !304
  br i1 %42, label %for.body69, label %vector.body, !dbg !304, !llvm.loop !322

for.cond.cleanup68:                               ; preds = %for.body69
  ret void, !dbg !325

for.body69:                                       ; preds = %vector.body, %for.body69
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %for.body69 ], [ 0, %vector.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv140, metadata !295, metadata !DIExpression()), !dbg !326
  %arrayidx72 = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]]* @crc32c_table_little, i64 0, i64 0, i64 %indvars.iv140, !dbg !327
  %43 = load i32, i32* %arrayidx72, align 4, !dbg !327, !tbaa !217
  call void @llvm.dbg.value(metadata i32 %43, metadata !297, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata i32 1, metadata !300, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.value(metadata i64 1, metadata !300, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.value(metadata i32 %43, metadata !297, metadata !DIExpression()), !dbg !328
  %and77 = and i32 %43, 255, !dbg !330
  %idxprom78 = zext i32 %and77 to i64, !dbg !333
  %arrayidx79 = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]]* @crc32c_table_little, i64 0, i64 0, i64 %idxprom78, !dbg !333
  %44 = load i32, i32* %arrayidx79, align 4, !dbg !333, !tbaa !217
  %shr80 = lshr i32 %43, 8, !dbg !334
  %xor81 = xor i32 %44, %shr80, !dbg !335
  call void @llvm.dbg.value(metadata i32 %xor81, metadata !297, metadata !DIExpression()), !dbg !328
  %arrayidx85 = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]]* @crc32c_table_little, i64 0, i64 1, i64 %indvars.iv140, !dbg !336
  store i32 %xor81, i32* %arrayidx85, align 4, !dbg !337, !tbaa !217
  call void @llvm.dbg.value(metadata i64 2, metadata !300, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.value(metadata i64 2, metadata !300, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.value(metadata i32 %xor81, metadata !297, metadata !DIExpression()), !dbg !328
  %and77.1 = and i32 %xor81, 255, !dbg !330
  %idxprom78.1 = zext i32 %and77.1 to i64, !dbg !333
  %arrayidx79.1 = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]]* @crc32c_table_little, i64 0, i64 0, i64 %idxprom78.1, !dbg !333
  %45 = load i32, i32* %arrayidx79.1, align 4, !dbg !333, !tbaa !217
  %shr80.1 = lshr i32 %xor81, 8, !dbg !334
  %xor81.1 = xor i32 %45, %shr80.1, !dbg !335
  call void @llvm.dbg.value(metadata i32 %xor81.1, metadata !297, metadata !DIExpression()), !dbg !328
  %arrayidx85.1 = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]]* @crc32c_table_little, i64 0, i64 2, i64 %indvars.iv140, !dbg !336
  store i32 %xor81.1, i32* %arrayidx85.1, align 4, !dbg !337, !tbaa !217
  call void @llvm.dbg.value(metadata i64 3, metadata !300, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.value(metadata i64 3, metadata !300, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.value(metadata i32 %xor81.1, metadata !297, metadata !DIExpression()), !dbg !328
  %and77.2 = and i32 %xor81.1, 255, !dbg !330
  %idxprom78.2 = zext i32 %and77.2 to i64, !dbg !333
  %arrayidx79.2 = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]]* @crc32c_table_little, i64 0, i64 0, i64 %idxprom78.2, !dbg !333
  %46 = load i32, i32* %arrayidx79.2, align 4, !dbg !333, !tbaa !217
  %shr80.2 = lshr i32 %xor81.1, 8, !dbg !334
  %xor81.2 = xor i32 %46, %shr80.2, !dbg !335
  call void @llvm.dbg.value(metadata i32 %xor81.2, metadata !297, metadata !DIExpression()), !dbg !328
  %arrayidx85.2 = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]]* @crc32c_table_little, i64 0, i64 3, i64 %indvars.iv140, !dbg !336
  store i32 %xor81.2, i32* %arrayidx85.2, align 4, !dbg !337, !tbaa !217
  call void @llvm.dbg.value(metadata i64 4, metadata !300, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.value(metadata i64 4, metadata !300, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.value(metadata i32 %xor81.2, metadata !297, metadata !DIExpression()), !dbg !328
  %and77.3 = and i32 %xor81.2, 255, !dbg !330
  %idxprom78.3 = zext i32 %and77.3 to i64, !dbg !333
  %arrayidx79.3 = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]]* @crc32c_table_little, i64 0, i64 0, i64 %idxprom78.3, !dbg !333
  %47 = load i32, i32* %arrayidx79.3, align 4, !dbg !333, !tbaa !217
  %shr80.3 = lshr i32 %xor81.2, 8, !dbg !334
  %xor81.3 = xor i32 %47, %shr80.3, !dbg !335
  call void @llvm.dbg.value(metadata i32 %xor81.3, metadata !297, metadata !DIExpression()), !dbg !328
  %arrayidx85.3 = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]]* @crc32c_table_little, i64 0, i64 4, i64 %indvars.iv140, !dbg !336
  store i32 %xor81.3, i32* %arrayidx85.3, align 4, !dbg !337, !tbaa !217
  call void @llvm.dbg.value(metadata i64 5, metadata !300, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.value(metadata i64 5, metadata !300, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.value(metadata i32 %xor81.3, metadata !297, metadata !DIExpression()), !dbg !328
  %and77.4 = and i32 %xor81.3, 255, !dbg !330
  %idxprom78.4 = zext i32 %and77.4 to i64, !dbg !333
  %arrayidx79.4 = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]]* @crc32c_table_little, i64 0, i64 0, i64 %idxprom78.4, !dbg !333
  %48 = load i32, i32* %arrayidx79.4, align 4, !dbg !333, !tbaa !217
  %shr80.4 = lshr i32 %xor81.3, 8, !dbg !334
  %xor81.4 = xor i32 %48, %shr80.4, !dbg !335
  call void @llvm.dbg.value(metadata i32 %xor81.4, metadata !297, metadata !DIExpression()), !dbg !328
  %arrayidx85.4 = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]]* @crc32c_table_little, i64 0, i64 5, i64 %indvars.iv140, !dbg !336
  store i32 %xor81.4, i32* %arrayidx85.4, align 4, !dbg !337, !tbaa !217
  call void @llvm.dbg.value(metadata i64 6, metadata !300, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.value(metadata i64 6, metadata !300, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.value(metadata i32 %xor81.4, metadata !297, metadata !DIExpression()), !dbg !328
  %and77.5 = and i32 %xor81.4, 255, !dbg !330
  %idxprom78.5 = zext i32 %and77.5 to i64, !dbg !333
  %arrayidx79.5 = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]]* @crc32c_table_little, i64 0, i64 0, i64 %idxprom78.5, !dbg !333
  %49 = load i32, i32* %arrayidx79.5, align 4, !dbg !333, !tbaa !217
  %shr80.5 = lshr i32 %xor81.4, 8, !dbg !334
  %xor81.5 = xor i32 %49, %shr80.5, !dbg !335
  call void @llvm.dbg.value(metadata i32 %xor81.5, metadata !297, metadata !DIExpression()), !dbg !328
  %arrayidx85.5 = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]]* @crc32c_table_little, i64 0, i64 6, i64 %indvars.iv140, !dbg !336
  store i32 %xor81.5, i32* %arrayidx85.5, align 4, !dbg !337, !tbaa !217
  call void @llvm.dbg.value(metadata i64 7, metadata !300, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.value(metadata i64 7, metadata !300, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.value(metadata i32 %xor81.5, metadata !297, metadata !DIExpression()), !dbg !328
  %and77.6 = and i32 %xor81.5, 255, !dbg !330
  %idxprom78.6 = zext i32 %and77.6 to i64, !dbg !333
  %arrayidx79.6 = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]]* @crc32c_table_little, i64 0, i64 0, i64 %idxprom78.6, !dbg !333
  %50 = load i32, i32* %arrayidx79.6, align 4, !dbg !333, !tbaa !217
  %shr80.6 = lshr i32 %xor81.5, 8, !dbg !334
  %xor81.6 = xor i32 %50, %shr80.6, !dbg !335
  call void @llvm.dbg.value(metadata i32 %xor81.6, metadata !297, metadata !DIExpression()), !dbg !328
  %arrayidx85.6 = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]]* @crc32c_table_little, i64 0, i64 7, i64 %indvars.iv140, !dbg !336
  store i32 %xor81.6, i32* %arrayidx85.6, align 4, !dbg !337, !tbaa !217
  call void @llvm.dbg.value(metadata i64 8, metadata !300, metadata !DIExpression()), !dbg !329
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1, !dbg !338
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next141, metadata !295, metadata !DIExpression()), !dbg !326
  %exitcond143.not = icmp eq i64 %indvars.iv.next141, 256, !dbg !339
  br i1 %exitcond143.not, label %for.cond.cleanup68, label %for.body69, !dbg !340, !llvm.loop !341
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crc32c_sw_big(i32 noundef %crc, i8* noundef %buf, i64 noundef %len) local_unnamed_addr #3 !dbg !343 {
entry:
  call void @llvm.dbg.value(metadata i32 %crc, metadata !345, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata i8* %buf, metadata !346, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata i64 %len, metadata !347, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata i8* %buf, metadata !348, metadata !DIExpression()), !dbg !352
  %call = tail call i32 @pthread_once(i32* noundef nonnull @crc32c_once_big, void ()* noundef nonnull @crc32c_init_sw_big) #11, !dbg !353
  %neg = xor i32 %crc, -1, !dbg !354
  call void @llvm.dbg.value(metadata i32 %neg, metadata !345, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata i8* %buf, metadata !348, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata i64 %len, metadata !347, metadata !DIExpression()), !dbg !352
  %tobool80 = icmp ne i64 %len, 0, !dbg !355
  %0 = ptrtoint i8* %buf to i64, !dbg !356
  %and81 = and i64 %0, 7, !dbg !356
  %cmp82 = icmp ne i64 %and81, 0, !dbg !356
  %1 = and i1 %tobool80, %cmp82, !dbg !356
  br i1 %1, label %while.body, label %while.end, !dbg !357

while.body:                                       ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %buf, metadata !348, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata i64 %len, metadata !347, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata i32 %neg, metadata !345, metadata !DIExpression()), !dbg !352
  %incdec.ptr = getelementptr inbounds i8, i8* %buf, i64 1, !dbg !358
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !348, metadata !DIExpression()), !dbg !352
  %2 = load i8, i8* %buf, align 1, !dbg !360, !tbaa !214
  %conv = zext i8 %2 to i32, !dbg !360
  %crc.addr.0.masked = and i32 %neg, 255, !dbg !361
  %and1 = xor i32 %crc.addr.0.masked, %conv, !dbg !361
  %idxprom = zext i32 %and1 to i64, !dbg !362
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @crc32c_table_big_byte, i64 0, i64 %idxprom, !dbg !362
  %3 = load i32, i32* %arrayidx, align 4, !dbg !362, !tbaa !217
  %shr = lshr i32 %neg, 8, !dbg !363
  %xor2 = xor i32 %3, %shr, !dbg !364
  call void @llvm.dbg.value(metadata i32 %xor2, metadata !345, metadata !DIExpression()), !dbg !352
  %dec = add i64 %len, -1, !dbg !365
  call void @llvm.dbg.value(metadata i64 %dec, metadata !347, metadata !DIExpression()), !dbg !352
  %tobool = icmp ne i64 %dec, 0, !dbg !355
  %4 = ptrtoint i8* %incdec.ptr to i64, !dbg !356
  %and = and i64 %4, 7, !dbg !356
  %cmp = icmp ne i64 %and, 0, !dbg !356
  %5 = select i1 %tobool, i1 %cmp, i1 false, !dbg !356
  br i1 %5, label %while.body.1, label %while.end, !dbg !357, !llvm.loop !366

while.body.1:                                     ; preds = %while.body
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !348, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata i64 %dec, metadata !347, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata i32 %xor2, metadata !345, metadata !DIExpression()), !dbg !352
  %incdec.ptr.1 = getelementptr inbounds i8, i8* %buf, i64 2, !dbg !358
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.1, metadata !348, metadata !DIExpression()), !dbg !352
  %6 = load i8, i8* %incdec.ptr, align 1, !dbg !360, !tbaa !214
  %conv.1 = zext i8 %6 to i32, !dbg !360
  %crc.addr.0.masked.1 = and i32 %xor2, 255, !dbg !361
  %and1.1 = xor i32 %crc.addr.0.masked.1, %conv.1, !dbg !361
  %idxprom.1 = zext i32 %and1.1 to i64, !dbg !362
  %arrayidx.1 = getelementptr inbounds [256 x i32], [256 x i32]* @crc32c_table_big_byte, i64 0, i64 %idxprom.1, !dbg !362
  %7 = load i32, i32* %arrayidx.1, align 4, !dbg !362, !tbaa !217
  %shr.1 = lshr i32 %xor2, 8, !dbg !363
  %xor2.1 = xor i32 %7, %shr.1, !dbg !364
  call void @llvm.dbg.value(metadata i32 %xor2.1, metadata !345, metadata !DIExpression()), !dbg !352
  %dec.1 = add i64 %len, -2, !dbg !365
  call void @llvm.dbg.value(metadata i64 %dec.1, metadata !347, metadata !DIExpression()), !dbg !352
  %tobool.1 = icmp ne i64 %dec.1, 0, !dbg !355
  %8 = ptrtoint i8* %incdec.ptr.1 to i64, !dbg !356
  %and.1 = and i64 %8, 7, !dbg !356
  %cmp.1 = icmp ne i64 %and.1, 0, !dbg !356
  %9 = select i1 %tobool.1, i1 %cmp.1, i1 false, !dbg !356
  br i1 %9, label %while.body.2, label %while.end, !dbg !357, !llvm.loop !366

while.body.2:                                     ; preds = %while.body.1
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.1, metadata !348, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata i64 %dec.1, metadata !347, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata i32 %xor2.1, metadata !345, metadata !DIExpression()), !dbg !352
  %incdec.ptr.2 = getelementptr inbounds i8, i8* %buf, i64 3, !dbg !358
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.2, metadata !348, metadata !DIExpression()), !dbg !352
  %10 = load i8, i8* %incdec.ptr.1, align 1, !dbg !360, !tbaa !214
  %conv.2 = zext i8 %10 to i32, !dbg !360
  %crc.addr.0.masked.2 = and i32 %xor2.1, 255, !dbg !361
  %and1.2 = xor i32 %crc.addr.0.masked.2, %conv.2, !dbg !361
  %idxprom.2 = zext i32 %and1.2 to i64, !dbg !362
  %arrayidx.2 = getelementptr inbounds [256 x i32], [256 x i32]* @crc32c_table_big_byte, i64 0, i64 %idxprom.2, !dbg !362
  %11 = load i32, i32* %arrayidx.2, align 4, !dbg !362, !tbaa !217
  %shr.2 = lshr i32 %xor2.1, 8, !dbg !363
  %xor2.2 = xor i32 %11, %shr.2, !dbg !364
  call void @llvm.dbg.value(metadata i32 %xor2.2, metadata !345, metadata !DIExpression()), !dbg !352
  %dec.2 = add i64 %len, -3, !dbg !365
  call void @llvm.dbg.value(metadata i64 %dec.2, metadata !347, metadata !DIExpression()), !dbg !352
  %tobool.2 = icmp ne i64 %dec.2, 0, !dbg !355
  %12 = ptrtoint i8* %incdec.ptr.2 to i64, !dbg !356
  %and.2 = and i64 %12, 7, !dbg !356
  %cmp.2 = icmp ne i64 %and.2, 0, !dbg !356
  %13 = select i1 %tobool.2, i1 %cmp.2, i1 false, !dbg !356
  br i1 %13, label %while.body.3, label %while.end, !dbg !357, !llvm.loop !366

while.body.3:                                     ; preds = %while.body.2
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.2, metadata !348, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata i64 %dec.2, metadata !347, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata i32 %xor2.2, metadata !345, metadata !DIExpression()), !dbg !352
  %incdec.ptr.3 = getelementptr inbounds i8, i8* %buf, i64 4, !dbg !358
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.3, metadata !348, metadata !DIExpression()), !dbg !352
  %14 = load i8, i8* %incdec.ptr.2, align 1, !dbg !360, !tbaa !214
  %conv.3 = zext i8 %14 to i32, !dbg !360
  %crc.addr.0.masked.3 = and i32 %xor2.2, 255, !dbg !361
  %and1.3 = xor i32 %crc.addr.0.masked.3, %conv.3, !dbg !361
  %idxprom.3 = zext i32 %and1.3 to i64, !dbg !362
  %arrayidx.3 = getelementptr inbounds [256 x i32], [256 x i32]* @crc32c_table_big_byte, i64 0, i64 %idxprom.3, !dbg !362
  %15 = load i32, i32* %arrayidx.3, align 4, !dbg !362, !tbaa !217
  %shr.3 = lshr i32 %xor2.2, 8, !dbg !363
  %xor2.3 = xor i32 %15, %shr.3, !dbg !364
  call void @llvm.dbg.value(metadata i32 %xor2.3, metadata !345, metadata !DIExpression()), !dbg !352
  %dec.3 = add i64 %len, -4, !dbg !365
  call void @llvm.dbg.value(metadata i64 %dec.3, metadata !347, metadata !DIExpression()), !dbg !352
  %tobool.3 = icmp ne i64 %dec.3, 0, !dbg !355
  %16 = ptrtoint i8* %incdec.ptr.3 to i64, !dbg !356
  %and.3 = and i64 %16, 7, !dbg !356
  %cmp.3 = icmp ne i64 %and.3, 0, !dbg !356
  %17 = select i1 %tobool.3, i1 %cmp.3, i1 false, !dbg !356
  br i1 %17, label %while.body.4, label %while.end, !dbg !357, !llvm.loop !366

while.body.4:                                     ; preds = %while.body.3
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.3, metadata !348, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata i64 %dec.3, metadata !347, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata i32 %xor2.3, metadata !345, metadata !DIExpression()), !dbg !352
  %incdec.ptr.4 = getelementptr inbounds i8, i8* %buf, i64 5, !dbg !358
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.4, metadata !348, metadata !DIExpression()), !dbg !352
  %18 = load i8, i8* %incdec.ptr.3, align 1, !dbg !360, !tbaa !214
  %conv.4 = zext i8 %18 to i32, !dbg !360
  %crc.addr.0.masked.4 = and i32 %xor2.3, 255, !dbg !361
  %and1.4 = xor i32 %crc.addr.0.masked.4, %conv.4, !dbg !361
  %idxprom.4 = zext i32 %and1.4 to i64, !dbg !362
  %arrayidx.4 = getelementptr inbounds [256 x i32], [256 x i32]* @crc32c_table_big_byte, i64 0, i64 %idxprom.4, !dbg !362
  %19 = load i32, i32* %arrayidx.4, align 4, !dbg !362, !tbaa !217
  %shr.4 = lshr i32 %xor2.3, 8, !dbg !363
  %xor2.4 = xor i32 %19, %shr.4, !dbg !364
  call void @llvm.dbg.value(metadata i32 %xor2.4, metadata !345, metadata !DIExpression()), !dbg !352
  %dec.4 = add i64 %len, -5, !dbg !365
  call void @llvm.dbg.value(metadata i64 %dec.4, metadata !347, metadata !DIExpression()), !dbg !352
  %tobool.4 = icmp ne i64 %dec.4, 0, !dbg !355
  %20 = ptrtoint i8* %incdec.ptr.4 to i64, !dbg !356
  %and.4 = and i64 %20, 7, !dbg !356
  %cmp.4 = icmp ne i64 %and.4, 0, !dbg !356
  %21 = select i1 %tobool.4, i1 %cmp.4, i1 false, !dbg !356
  br i1 %21, label %while.body.5, label %while.end, !dbg !357, !llvm.loop !366

while.body.5:                                     ; preds = %while.body.4
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.4, metadata !348, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata i64 %dec.4, metadata !347, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata i32 %xor2.4, metadata !345, metadata !DIExpression()), !dbg !352
  %incdec.ptr.5 = getelementptr inbounds i8, i8* %buf, i64 6, !dbg !358
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.5, metadata !348, metadata !DIExpression()), !dbg !352
  %22 = load i8, i8* %incdec.ptr.4, align 1, !dbg !360, !tbaa !214
  %conv.5 = zext i8 %22 to i32, !dbg !360
  %crc.addr.0.masked.5 = and i32 %xor2.4, 255, !dbg !361
  %and1.5 = xor i32 %crc.addr.0.masked.5, %conv.5, !dbg !361
  %idxprom.5 = zext i32 %and1.5 to i64, !dbg !362
  %arrayidx.5 = getelementptr inbounds [256 x i32], [256 x i32]* @crc32c_table_big_byte, i64 0, i64 %idxprom.5, !dbg !362
  %23 = load i32, i32* %arrayidx.5, align 4, !dbg !362, !tbaa !217
  %shr.5 = lshr i32 %xor2.4, 8, !dbg !363
  %xor2.5 = xor i32 %23, %shr.5, !dbg !364
  call void @llvm.dbg.value(metadata i32 %xor2.5, metadata !345, metadata !DIExpression()), !dbg !352
  %dec.5 = add i64 %len, -6, !dbg !365
  call void @llvm.dbg.value(metadata i64 %dec.5, metadata !347, metadata !DIExpression()), !dbg !352
  %tobool.5 = icmp ne i64 %dec.5, 0, !dbg !355
  %24 = ptrtoint i8* %incdec.ptr.5 to i64, !dbg !356
  %and.5 = and i64 %24, 7, !dbg !356
  %cmp.5 = icmp ne i64 %and.5, 0, !dbg !356
  %25 = select i1 %tobool.5, i1 %cmp.5, i1 false, !dbg !356
  br i1 %25, label %while.body.6, label %while.end, !dbg !357, !llvm.loop !366

while.body.6:                                     ; preds = %while.body.5
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.5, metadata !348, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata i64 %dec.5, metadata !347, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata i32 %xor2.5, metadata !345, metadata !DIExpression()), !dbg !352
  %incdec.ptr.6 = getelementptr inbounds i8, i8* %buf, i64 7, !dbg !358
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.6, metadata !348, metadata !DIExpression()), !dbg !352
  %26 = load i8, i8* %incdec.ptr.5, align 1, !dbg !360, !tbaa !214
  %conv.6 = zext i8 %26 to i32, !dbg !360
  %crc.addr.0.masked.6 = and i32 %xor2.5, 255, !dbg !361
  %and1.6 = xor i32 %crc.addr.0.masked.6, %conv.6, !dbg !361
  %idxprom.6 = zext i32 %and1.6 to i64, !dbg !362
  %arrayidx.6 = getelementptr inbounds [256 x i32], [256 x i32]* @crc32c_table_big_byte, i64 0, i64 %idxprom.6, !dbg !362
  %27 = load i32, i32* %arrayidx.6, align 4, !dbg !362, !tbaa !217
  %shr.6 = lshr i32 %xor2.5, 8, !dbg !363
  %xor2.6 = xor i32 %27, %shr.6, !dbg !364
  call void @llvm.dbg.value(metadata i32 %xor2.6, metadata !345, metadata !DIExpression()), !dbg !352
  %dec.6 = add i64 %len, -7, !dbg !365
  call void @llvm.dbg.value(metadata i64 %dec.6, metadata !347, metadata !DIExpression()), !dbg !352
  %tobool.6 = icmp ne i64 %dec.6, 0, !dbg !355
  %28 = ptrtoint i8* %incdec.ptr.6 to i64, !dbg !356
  %and.6 = and i64 %28, 7, !dbg !356
  %cmp.6 = icmp ne i64 %and.6, 0, !dbg !356
  %29 = select i1 %tobool.6, i1 %cmp.6, i1 false, !dbg !356
  br i1 %29, label %while.body.7, label %while.end, !dbg !357, !llvm.loop !366

while.body.7:                                     ; preds = %while.body.6
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.6, metadata !348, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata i64 %dec.6, metadata !347, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata i32 %xor2.6, metadata !345, metadata !DIExpression()), !dbg !352
  %incdec.ptr.7 = getelementptr inbounds i8, i8* %buf, i64 8, !dbg !358
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.7, metadata !348, metadata !DIExpression()), !dbg !352
  %30 = load i8, i8* %incdec.ptr.6, align 1, !dbg !360, !tbaa !214
  %conv.7 = zext i8 %30 to i32, !dbg !360
  %crc.addr.0.masked.7 = and i32 %xor2.6, 255, !dbg !361
  %and1.7 = xor i32 %crc.addr.0.masked.7, %conv.7, !dbg !361
  %idxprom.7 = zext i32 %and1.7 to i64, !dbg !362
  %arrayidx.7 = getelementptr inbounds [256 x i32], [256 x i32]* @crc32c_table_big_byte, i64 0, i64 %idxprom.7, !dbg !362
  %31 = load i32, i32* %arrayidx.7, align 4, !dbg !362, !tbaa !217
  %shr.7 = lshr i32 %xor2.6, 8, !dbg !363
  %xor2.7 = xor i32 %31, %shr.7, !dbg !364
  call void @llvm.dbg.value(metadata i32 %xor2.7, metadata !345, metadata !DIExpression()), !dbg !352
  %dec.7 = add i64 %len, -8, !dbg !365
  call void @llvm.dbg.value(metadata i64 %dec.7, metadata !347, metadata !DIExpression()), !dbg !352
  br label %while.end

while.end:                                        ; preds = %while.body, %while.body.1, %while.body.2, %while.body.3, %while.body.4, %while.body.5, %while.body.6, %while.body.7, %entry
  %crc.addr.0.lcssa = phi i32 [ %neg, %entry ], [ %xor2, %while.body ], [ %xor2.1, %while.body.1 ], [ %xor2.2, %while.body.2 ], [ %xor2.3, %while.body.3 ], [ %xor2.4, %while.body.4 ], [ %xor2.5, %while.body.5 ], [ %xor2.6, %while.body.6 ], [ %xor2.7, %while.body.7 ], !dbg !352
  %len.addr.0.lcssa = phi i64 [ %len, %entry ], [ %dec, %while.body ], [ %dec.1, %while.body.1 ], [ %dec.2, %while.body.2 ], [ %dec.3, %while.body.3 ], [ %dec.4, %while.body.4 ], [ %dec.5, %while.body.5 ], [ %dec.6, %while.body.6 ], [ %dec.7, %while.body.7 ]
  %next.0.lcssa = phi i8* [ %buf, %entry ], [ %incdec.ptr, %while.body ], [ %incdec.ptr.1, %while.body.1 ], [ %incdec.ptr.2, %while.body.2 ], [ %incdec.ptr.3, %while.body.3 ], [ %incdec.ptr.4, %while.body.4 ], [ %incdec.ptr.5, %while.body.5 ], [ %incdec.ptr.6, %while.body.6 ], [ %incdec.ptr.7, %while.body.7 ], !dbg !352
  %cmp3 = icmp ugt i64 %len.addr.0.lcssa, 7, !dbg !368
  br i1 %cmp3, label %if.then, label %if.end, !dbg !369

if.then:                                          ; preds = %while.end
  %conv5 = zext i32 %crc.addr.0.lcssa to i64, !dbg !370
  %32 = tail call i64 @llvm.bswap.i64(i64 %conv5), !dbg !371
  call void @llvm.dbg.value(metadata i64 %32, metadata !349, metadata !DIExpression()), !dbg !372
  br label %do.body, !dbg !373

do.body:                                          ; preds = %do.body, %if.then
  %len.addr.1 = phi i64 [ %len.addr.0.lcssa, %if.then ], [ %sub, %do.body ]
  %next.1 = phi i8* [ %next.0.lcssa, %if.then ], [ %add.ptr, %do.body ], !dbg !352
  %crcw.0 = phi i64 [ %32, %if.then ], [ %xor35, %do.body ], !dbg !372
  call void @llvm.dbg.value(metadata i64 %crcw.0, metadata !349, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i8* %next.1, metadata !348, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata i64 %len.addr.1, metadata !347, metadata !DIExpression()), !dbg !352
  %33 = bitcast i8* %next.1 to i64*, !dbg !374
  %34 = load i64, i64* %33, align 8, !dbg !374, !tbaa !229
  %xor6 = xor i64 %34, %crcw.0, !dbg !376
  call void @llvm.dbg.value(metadata i64 %xor6, metadata !349, metadata !DIExpression()), !dbg !372
  %and7 = and i64 %xor6, 255, !dbg !377
  %arrayidx8 = getelementptr inbounds [8 x [256 x i64]], [8 x [256 x i64]]* @crc32c_table_big, i64 0, i64 0, i64 %and7, !dbg !378
  %35 = load i64, i64* %arrayidx8, align 8, !dbg !378, !tbaa !229
  %shr9 = lshr i64 %xor6, 8, !dbg !379
  %and10 = and i64 %shr9, 255, !dbg !380
  %arrayidx11 = getelementptr inbounds [8 x [256 x i64]], [8 x [256 x i64]]* @crc32c_table_big, i64 0, i64 1, i64 %and10, !dbg !381
  %36 = load i64, i64* %arrayidx11, align 8, !dbg !381, !tbaa !229
  %xor12 = xor i64 %36, %35, !dbg !382
  %shr13 = lshr i64 %xor6, 16, !dbg !383
  %and14 = and i64 %shr13, 255, !dbg !384
  %arrayidx15 = getelementptr inbounds [8 x [256 x i64]], [8 x [256 x i64]]* @crc32c_table_big, i64 0, i64 2, i64 %and14, !dbg !385
  %37 = load i64, i64* %arrayidx15, align 8, !dbg !385, !tbaa !229
  %xor16 = xor i64 %xor12, %37, !dbg !386
  %shr17 = lshr i64 %xor6, 24, !dbg !387
  %and18 = and i64 %shr17, 255, !dbg !388
  %arrayidx19 = getelementptr inbounds [8 x [256 x i64]], [8 x [256 x i64]]* @crc32c_table_big, i64 0, i64 3, i64 %and18, !dbg !389
  %38 = load i64, i64* %arrayidx19, align 8, !dbg !389, !tbaa !229
  %xor20 = xor i64 %xor16, %38, !dbg !390
  %shr21 = lshr i64 %xor6, 32, !dbg !391
  %and22 = and i64 %shr21, 255, !dbg !392
  %arrayidx23 = getelementptr inbounds [8 x [256 x i64]], [8 x [256 x i64]]* @crc32c_table_big, i64 0, i64 4, i64 %and22, !dbg !393
  %39 = load i64, i64* %arrayidx23, align 8, !dbg !393, !tbaa !229
  %xor24 = xor i64 %xor20, %39, !dbg !394
  %shr25 = lshr i64 %xor6, 40, !dbg !395
  %and26 = and i64 %shr25, 255, !dbg !396
  %arrayidx27 = getelementptr inbounds [8 x [256 x i64]], [8 x [256 x i64]]* @crc32c_table_big, i64 0, i64 5, i64 %and26, !dbg !397
  %40 = load i64, i64* %arrayidx27, align 8, !dbg !397, !tbaa !229
  %xor28 = xor i64 %xor24, %40, !dbg !398
  %shr29 = lshr i64 %xor6, 48, !dbg !399
  %and30 = and i64 %shr29, 255, !dbg !400
  %arrayidx31 = getelementptr inbounds [8 x [256 x i64]], [8 x [256 x i64]]* @crc32c_table_big, i64 0, i64 6, i64 %and30, !dbg !401
  %41 = load i64, i64* %arrayidx31, align 8, !dbg !401, !tbaa !229
  %xor32 = xor i64 %xor28, %41, !dbg !402
  %shr33 = lshr i64 %xor6, 56, !dbg !403
  %arrayidx34 = getelementptr inbounds [8 x [256 x i64]], [8 x [256 x i64]]* @crc32c_table_big, i64 0, i64 7, i64 %shr33, !dbg !404
  %42 = load i64, i64* %arrayidx34, align 8, !dbg !404, !tbaa !229
  %xor35 = xor i64 %xor32, %42, !dbg !405
  call void @llvm.dbg.value(metadata i64 %xor35, metadata !349, metadata !DIExpression()), !dbg !372
  %add.ptr = getelementptr inbounds i8, i8* %next.1, i64 8, !dbg !406
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !348, metadata !DIExpression()), !dbg !352
  %sub = add i64 %len.addr.1, -8, !dbg !407
  call void @llvm.dbg.value(metadata i64 %sub, metadata !347, metadata !DIExpression()), !dbg !352
  %cmp36 = icmp ugt i64 %sub, 7, !dbg !408
  br i1 %cmp36, label %do.body, label %do.end, !dbg !409, !llvm.loop !410

do.end:                                           ; preds = %do.body
  %43 = tail call i64 @llvm.bswap.i64(i64 %xor35), !dbg !412
  %conv38 = trunc i64 %43 to i32, !dbg !412
  call void @llvm.dbg.value(metadata i32 %conv38, metadata !345, metadata !DIExpression()), !dbg !352
  br label %if.end, !dbg !413

if.end:                                           ; preds = %do.end, %while.end
  %crc.addr.1 = phi i32 [ %conv38, %do.end ], [ %crc.addr.0.lcssa, %while.end ], !dbg !352
  %len.addr.2 = phi i64 [ %sub, %do.end ], [ %len.addr.0.lcssa, %while.end ]
  %next.2 = phi i8* [ %add.ptr, %do.end ], [ %next.0.lcssa, %while.end ], !dbg !352
  call void @llvm.dbg.value(metadata i8* %next.2, metadata !348, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata i64 %len.addr.2, metadata !347, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata i32 %crc.addr.1, metadata !345, metadata !DIExpression()), !dbg !352
  %tobool40.not88 = icmp eq i64 %len.addr.2, 0, !dbg !414
  br i1 %tobool40.not88, label %while.end51, label %while.body41.preheader, !dbg !414

while.body41.preheader:                           ; preds = %if.end
  %xtraiter = and i64 %len.addr.2, 1, !dbg !414
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !414
  br i1 %lcmp.mod.not, label %while.body41.prol.loopexit, label %while.body41.prol, !dbg !414

while.body41.prol:                                ; preds = %while.body41.preheader
  call void @llvm.dbg.value(metadata i8* %next.2, metadata !348, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata i64 %len.addr.2, metadata !347, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata i32 %crc.addr.1, metadata !345, metadata !DIExpression()), !dbg !352
  %incdec.ptr42.prol = getelementptr inbounds i8, i8* %next.2, i64 1, !dbg !415
  call void @llvm.dbg.value(metadata i8* %incdec.ptr42.prol, metadata !348, metadata !DIExpression()), !dbg !352
  %44 = load i8, i8* %next.2, align 1, !dbg !417, !tbaa !214
  %conv43.prol = zext i8 %44 to i32, !dbg !417
  %crc.addr.2.masked.prol = and i32 %crc.addr.1, 255, !dbg !418
  %and45.prol = xor i32 %crc.addr.2.masked.prol, %conv43.prol, !dbg !418
  %idxprom46.prol = zext i32 %and45.prol to i64, !dbg !419
  %arrayidx47.prol = getelementptr inbounds [256 x i32], [256 x i32]* @crc32c_table_big_byte, i64 0, i64 %idxprom46.prol, !dbg !419
  %45 = load i32, i32* %arrayidx47.prol, align 4, !dbg !419, !tbaa !217
  %shr48.prol = lshr i32 %crc.addr.1, 8, !dbg !420
  %xor49.prol = xor i32 %45, %shr48.prol, !dbg !421
  call void @llvm.dbg.value(metadata i32 %xor49.prol, metadata !345, metadata !DIExpression()), !dbg !352
  %dec50.prol = add i64 %len.addr.2, -1, !dbg !422
  call void @llvm.dbg.value(metadata i64 %dec50.prol, metadata !347, metadata !DIExpression()), !dbg !352
  br label %while.body41.prol.loopexit, !dbg !414

while.body41.prol.loopexit:                       ; preds = %while.body41.prol, %while.body41.preheader
  %xor49.lcssa.unr = phi i32 [ undef, %while.body41.preheader ], [ %xor49.prol, %while.body41.prol ]
  %next.391.unr = phi i8* [ %next.2, %while.body41.preheader ], [ %incdec.ptr42.prol, %while.body41.prol ]
  %len.addr.390.unr = phi i64 [ %len.addr.2, %while.body41.preheader ], [ %dec50.prol, %while.body41.prol ]
  %crc.addr.289.unr = phi i32 [ %crc.addr.1, %while.body41.preheader ], [ %xor49.prol, %while.body41.prol ]
  %46 = icmp eq i64 %len.addr.2, 1, !dbg !414
  br i1 %46, label %while.end51, label %while.body41, !dbg !414

while.body41:                                     ; preds = %while.body41.prol.loopexit, %while.body41
  %next.391 = phi i8* [ %incdec.ptr42.1, %while.body41 ], [ %next.391.unr, %while.body41.prol.loopexit ]
  %len.addr.390 = phi i64 [ %dec50.1, %while.body41 ], [ %len.addr.390.unr, %while.body41.prol.loopexit ]
  %crc.addr.289 = phi i32 [ %xor49.1, %while.body41 ], [ %crc.addr.289.unr, %while.body41.prol.loopexit ]
  call void @llvm.dbg.value(metadata i8* %next.391, metadata !348, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata i64 %len.addr.390, metadata !347, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata i32 %crc.addr.289, metadata !345, metadata !DIExpression()), !dbg !352
  %incdec.ptr42 = getelementptr inbounds i8, i8* %next.391, i64 1, !dbg !415
  call void @llvm.dbg.value(metadata i8* %incdec.ptr42, metadata !348, metadata !DIExpression()), !dbg !352
  %47 = load i8, i8* %next.391, align 1, !dbg !417, !tbaa !214
  %conv43 = zext i8 %47 to i32, !dbg !417
  %crc.addr.2.masked = and i32 %crc.addr.289, 255, !dbg !418
  %and45 = xor i32 %crc.addr.2.masked, %conv43, !dbg !418
  %idxprom46 = zext i32 %and45 to i64, !dbg !419
  %arrayidx47 = getelementptr inbounds [256 x i32], [256 x i32]* @crc32c_table_big_byte, i64 0, i64 %idxprom46, !dbg !419
  %48 = load i32, i32* %arrayidx47, align 4, !dbg !419, !tbaa !217
  %shr48 = lshr i32 %crc.addr.289, 8, !dbg !420
  %xor49 = xor i32 %48, %shr48, !dbg !421
  call void @llvm.dbg.value(metadata i32 %xor49, metadata !345, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata i64 %len.addr.390, metadata !347, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !352
  call void @llvm.dbg.value(metadata i8* %incdec.ptr42, metadata !348, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata i64 %len.addr.390, metadata !347, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !352
  call void @llvm.dbg.value(metadata i32 %xor49, metadata !345, metadata !DIExpression()), !dbg !352
  %incdec.ptr42.1 = getelementptr inbounds i8, i8* %next.391, i64 2, !dbg !415
  call void @llvm.dbg.value(metadata i8* %incdec.ptr42.1, metadata !348, metadata !DIExpression()), !dbg !352
  %49 = load i8, i8* %incdec.ptr42, align 1, !dbg !417, !tbaa !214
  %conv43.1 = zext i8 %49 to i32, !dbg !417
  %crc.addr.2.masked.1 = and i32 %xor49, 255, !dbg !418
  %and45.1 = xor i32 %crc.addr.2.masked.1, %conv43.1, !dbg !418
  %idxprom46.1 = zext i32 %and45.1 to i64, !dbg !419
  %arrayidx47.1 = getelementptr inbounds [256 x i32], [256 x i32]* @crc32c_table_big_byte, i64 0, i64 %idxprom46.1, !dbg !419
  %50 = load i32, i32* %arrayidx47.1, align 4, !dbg !419, !tbaa !217
  %shr48.1 = lshr i32 %xor49, 8, !dbg !420
  %xor49.1 = xor i32 %50, %shr48.1, !dbg !421
  call void @llvm.dbg.value(metadata i32 %xor49.1, metadata !345, metadata !DIExpression()), !dbg !352
  %dec50.1 = add i64 %len.addr.390, -2, !dbg !422
  call void @llvm.dbg.value(metadata i64 %dec50.1, metadata !347, metadata !DIExpression()), !dbg !352
  %tobool40.not.1 = icmp eq i64 %dec50.1, 0, !dbg !414
  br i1 %tobool40.not.1, label %while.end51, label %while.body41, !dbg !414, !llvm.loop !423

while.end51:                                      ; preds = %while.body41.prol.loopexit, %while.body41, %if.end
  %crc.addr.2.lcssa = phi i32 [ %crc.addr.1, %if.end ], [ %xor49.lcssa.unr, %while.body41.prol.loopexit ], [ %xor49.1, %while.body41 ], !dbg !352
  %neg52 = xor i32 %crc.addr.2.lcssa, -1, !dbg !425
  ret i32 %neg52, !dbg !426
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal void @crc32c_init_sw_big() #6 !dbg !427 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !429, metadata !DIExpression()), !dbg !441
  br label %vector.body, !dbg !442

vector.body:                                      ; preds = %vector.body, %entry
  %index = phi i64 [ 0, %entry ], [ %index.next, %vector.body ], !dbg !443
  %vec.ind150 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %entry ], [ %vec.ind.next151, %vector.body ], !dbg !444
  %0 = and <4 x i32> %vec.ind150, <i32 1, i32 1, i32 1, i32 1>, !dbg !444
  %1 = icmp eq <4 x i32> %0, zeroinitializer, !dbg !444
  %2 = lshr <4 x i32> %vec.ind150, <i32 1, i32 1, i32 1, i32 1>, !dbg !445
  %3 = xor <4 x i32> %2, <i32 -2097792136, i32 -2097792136, i32 -2097792136, i32 -2097792136>, !dbg !445
  %4 = select <4 x i1> %1, <4 x i32> %2, <4 x i32> %3, !dbg !445
  %5 = and <4 x i32> %4, <i32 1, i32 1, i32 1, i32 1>, !dbg !446
  %6 = icmp eq <4 x i32> %5, zeroinitializer, !dbg !446
  %7 = lshr <4 x i32> %4, <i32 1, i32 1, i32 1, i32 1>, !dbg !447
  %8 = xor <4 x i32> %7, <i32 -2097792136, i32 -2097792136, i32 -2097792136, i32 -2097792136>, !dbg !447
  %9 = select <4 x i1> %6, <4 x i32> %7, <4 x i32> %8, !dbg !447
  %10 = and <4 x i32> %9, <i32 1, i32 1, i32 1, i32 1>, !dbg !448
  %11 = icmp eq <4 x i32> %10, zeroinitializer, !dbg !448
  %12 = lshr <4 x i32> %9, <i32 1, i32 1, i32 1, i32 1>, !dbg !449
  %13 = xor <4 x i32> %12, <i32 -2097792136, i32 -2097792136, i32 -2097792136, i32 -2097792136>, !dbg !449
  %14 = select <4 x i1> %11, <4 x i32> %12, <4 x i32> %13, !dbg !449
  %15 = and <4 x i32> %14, <i32 1, i32 1, i32 1, i32 1>, !dbg !450
  %16 = icmp eq <4 x i32> %15, zeroinitializer, !dbg !450
  %17 = lshr <4 x i32> %14, <i32 1, i32 1, i32 1, i32 1>, !dbg !451
  %18 = xor <4 x i32> %17, <i32 -2097792136, i32 -2097792136, i32 -2097792136, i32 -2097792136>, !dbg !451
  %19 = select <4 x i1> %16, <4 x i32> %17, <4 x i32> %18, !dbg !451
  %20 = and <4 x i32> %19, <i32 1, i32 1, i32 1, i32 1>, !dbg !452
  %21 = icmp eq <4 x i32> %20, zeroinitializer, !dbg !452
  %22 = lshr <4 x i32> %19, <i32 1, i32 1, i32 1, i32 1>, !dbg !453
  %23 = xor <4 x i32> %22, <i32 -2097792136, i32 -2097792136, i32 -2097792136, i32 -2097792136>, !dbg !453
  %24 = select <4 x i1> %21, <4 x i32> %22, <4 x i32> %23, !dbg !453
  %25 = and <4 x i32> %24, <i32 1, i32 1, i32 1, i32 1>, !dbg !454
  %26 = icmp eq <4 x i32> %25, zeroinitializer, !dbg !454
  %27 = lshr <4 x i32> %24, <i32 1, i32 1, i32 1, i32 1>, !dbg !455
  %28 = xor <4 x i32> %27, <i32 -2097792136, i32 -2097792136, i32 -2097792136, i32 -2097792136>, !dbg !455
  %29 = select <4 x i1> %26, <4 x i32> %27, <4 x i32> %28, !dbg !455
  %30 = and <4 x i32> %29, <i32 1, i32 1, i32 1, i32 1>, !dbg !456
  %31 = icmp eq <4 x i32> %30, zeroinitializer, !dbg !456
  %32 = lshr <4 x i32> %29, <i32 1, i32 1, i32 1, i32 1>, !dbg !457
  %33 = xor <4 x i32> %32, <i32 -2097792136, i32 -2097792136, i32 -2097792136, i32 -2097792136>, !dbg !457
  %34 = select <4 x i1> %31, <4 x i32> %32, <4 x i32> %33, !dbg !457
  %35 = and <4 x i32> %34, <i32 1, i32 1, i32 1, i32 1>, !dbg !458
  %36 = icmp eq <4 x i32> %35, zeroinitializer, !dbg !458
  %37 = lshr <4 x i32> %34, <i32 1, i32 1, i32 1, i32 1>, !dbg !459
  %38 = xor <4 x i32> %37, <i32 -2097792136, i32 -2097792136, i32 -2097792136, i32 -2097792136>, !dbg !459
  %39 = select <4 x i1> %36, <4 x i32> %37, <4 x i32> %38, !dbg !459
  %40 = getelementptr inbounds [256 x i32], [256 x i32]* @crc32c_table_big_byte, i64 0, i64 %index, !dbg !443
  %41 = bitcast i32* %40 to <4 x i32>*, !dbg !460
  store <4 x i32> %39, <4 x i32>* %41, align 16, !dbg !460, !tbaa !217
  %index.next = add nuw i64 %index, 4, !dbg !443
  %vec.ind.next151 = add <4 x i32> %vec.ind150, <i32 4, i32 4, i32 4, i32 4>, !dbg !444
  %42 = icmp eq i64 %index.next, 256, !dbg !443
  br i1 %42, label %for.body69, label %vector.body, !dbg !443, !llvm.loop !461

for.cond.cleanup68:                               ; preds = %for.body69
  ret void, !dbg !463

for.body69:                                       ; preds = %vector.body, %for.body69
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %for.body69 ], [ 0, %vector.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv146, metadata !434, metadata !DIExpression()), !dbg !464
  %arrayidx72 = getelementptr inbounds [256 x i32], [256 x i32]* @crc32c_table_big_byte, i64 0, i64 %indvars.iv146, !dbg !465
  %43 = load i32, i32* %arrayidx72, align 4, !dbg !465, !tbaa !217
  call void @llvm.dbg.value(metadata i32 %43, metadata !436, metadata !DIExpression()), !dbg !466
  %conv = zext i32 %43 to i64, !dbg !467
  %44 = tail call i64 @llvm.bswap.i64(i64 %conv), !dbg !468
  %arrayidx74 = getelementptr inbounds [8 x [256 x i64]], [8 x [256 x i64]]* @crc32c_table_big, i64 0, i64 0, i64 %indvars.iv146, !dbg !469
  store i64 %44, i64* %arrayidx74, align 8, !dbg !470, !tbaa !229
  call void @llvm.dbg.value(metadata i32 1, metadata !439, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata i32 %43, metadata !436, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.value(metadata i64 1, metadata !439, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata i32 %43, metadata !436, metadata !DIExpression()), !dbg !466
  %and80 = and i32 %43, 255, !dbg !472
  %idxprom81 = zext i32 %and80 to i64, !dbg !475
  %arrayidx82 = getelementptr inbounds [256 x i32], [256 x i32]* @crc32c_table_big_byte, i64 0, i64 %idxprom81, !dbg !475
  %45 = load i32, i32* %arrayidx82, align 4, !dbg !475, !tbaa !217
  %shr83 = lshr i32 %43, 8, !dbg !476
  %xor84 = xor i32 %45, %shr83, !dbg !477
  call void @llvm.dbg.value(metadata i32 %xor84, metadata !436, metadata !DIExpression()), !dbg !466
  %conv85 = zext i32 %xor84 to i64, !dbg !478
  %46 = tail call i64 @llvm.bswap.i64(i64 %conv85), !dbg !479
  %arrayidx89 = getelementptr inbounds [8 x [256 x i64]], [8 x [256 x i64]]* @crc32c_table_big, i64 0, i64 1, i64 %indvars.iv146, !dbg !480
  store i64 %46, i64* %arrayidx89, align 8, !dbg !481, !tbaa !229
  call void @llvm.dbg.value(metadata i64 2, metadata !439, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata i64 2, metadata !439, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata i32 %xor84, metadata !436, metadata !DIExpression()), !dbg !466
  %and80.1 = and i32 %xor84, 255, !dbg !472
  %idxprom81.1 = zext i32 %and80.1 to i64, !dbg !475
  %arrayidx82.1 = getelementptr inbounds [256 x i32], [256 x i32]* @crc32c_table_big_byte, i64 0, i64 %idxprom81.1, !dbg !475
  %47 = load i32, i32* %arrayidx82.1, align 4, !dbg !475, !tbaa !217
  %shr83.1 = lshr i32 %xor84, 8, !dbg !476
  %xor84.1 = xor i32 %47, %shr83.1, !dbg !477
  call void @llvm.dbg.value(metadata i32 %xor84.1, metadata !436, metadata !DIExpression()), !dbg !466
  %conv85.1 = zext i32 %xor84.1 to i64, !dbg !478
  %48 = tail call i64 @llvm.bswap.i64(i64 %conv85.1), !dbg !479
  %arrayidx89.1 = getelementptr inbounds [8 x [256 x i64]], [8 x [256 x i64]]* @crc32c_table_big, i64 0, i64 2, i64 %indvars.iv146, !dbg !480
  store i64 %48, i64* %arrayidx89.1, align 8, !dbg !481, !tbaa !229
  call void @llvm.dbg.value(metadata i64 3, metadata !439, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata i64 3, metadata !439, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata i32 %xor84.1, metadata !436, metadata !DIExpression()), !dbg !466
  %and80.2 = and i32 %xor84.1, 255, !dbg !472
  %idxprom81.2 = zext i32 %and80.2 to i64, !dbg !475
  %arrayidx82.2 = getelementptr inbounds [256 x i32], [256 x i32]* @crc32c_table_big_byte, i64 0, i64 %idxprom81.2, !dbg !475
  %49 = load i32, i32* %arrayidx82.2, align 4, !dbg !475, !tbaa !217
  %shr83.2 = lshr i32 %xor84.1, 8, !dbg !476
  %xor84.2 = xor i32 %49, %shr83.2, !dbg !477
  call void @llvm.dbg.value(metadata i32 %xor84.2, metadata !436, metadata !DIExpression()), !dbg !466
  %conv85.2 = zext i32 %xor84.2 to i64, !dbg !478
  %50 = tail call i64 @llvm.bswap.i64(i64 %conv85.2), !dbg !479
  %arrayidx89.2 = getelementptr inbounds [8 x [256 x i64]], [8 x [256 x i64]]* @crc32c_table_big, i64 0, i64 3, i64 %indvars.iv146, !dbg !480
  store i64 %50, i64* %arrayidx89.2, align 8, !dbg !481, !tbaa !229
  call void @llvm.dbg.value(metadata i64 4, metadata !439, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata i64 4, metadata !439, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata i32 %xor84.2, metadata !436, metadata !DIExpression()), !dbg !466
  %and80.3 = and i32 %xor84.2, 255, !dbg !472
  %idxprom81.3 = zext i32 %and80.3 to i64, !dbg !475
  %arrayidx82.3 = getelementptr inbounds [256 x i32], [256 x i32]* @crc32c_table_big_byte, i64 0, i64 %idxprom81.3, !dbg !475
  %51 = load i32, i32* %arrayidx82.3, align 4, !dbg !475, !tbaa !217
  %shr83.3 = lshr i32 %xor84.2, 8, !dbg !476
  %xor84.3 = xor i32 %51, %shr83.3, !dbg !477
  call void @llvm.dbg.value(metadata i32 %xor84.3, metadata !436, metadata !DIExpression()), !dbg !466
  %conv85.3 = zext i32 %xor84.3 to i64, !dbg !478
  %52 = tail call i64 @llvm.bswap.i64(i64 %conv85.3), !dbg !479
  %arrayidx89.3 = getelementptr inbounds [8 x [256 x i64]], [8 x [256 x i64]]* @crc32c_table_big, i64 0, i64 4, i64 %indvars.iv146, !dbg !480
  store i64 %52, i64* %arrayidx89.3, align 8, !dbg !481, !tbaa !229
  call void @llvm.dbg.value(metadata i64 5, metadata !439, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata i64 5, metadata !439, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata i32 %xor84.3, metadata !436, metadata !DIExpression()), !dbg !466
  %and80.4 = and i32 %xor84.3, 255, !dbg !472
  %idxprom81.4 = zext i32 %and80.4 to i64, !dbg !475
  %arrayidx82.4 = getelementptr inbounds [256 x i32], [256 x i32]* @crc32c_table_big_byte, i64 0, i64 %idxprom81.4, !dbg !475
  %53 = load i32, i32* %arrayidx82.4, align 4, !dbg !475, !tbaa !217
  %shr83.4 = lshr i32 %xor84.3, 8, !dbg !476
  %xor84.4 = xor i32 %53, %shr83.4, !dbg !477
  call void @llvm.dbg.value(metadata i32 %xor84.4, metadata !436, metadata !DIExpression()), !dbg !466
  %conv85.4 = zext i32 %xor84.4 to i64, !dbg !478
  %54 = tail call i64 @llvm.bswap.i64(i64 %conv85.4), !dbg !479
  %arrayidx89.4 = getelementptr inbounds [8 x [256 x i64]], [8 x [256 x i64]]* @crc32c_table_big, i64 0, i64 5, i64 %indvars.iv146, !dbg !480
  store i64 %54, i64* %arrayidx89.4, align 8, !dbg !481, !tbaa !229
  call void @llvm.dbg.value(metadata i64 6, metadata !439, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata i64 6, metadata !439, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata i32 %xor84.4, metadata !436, metadata !DIExpression()), !dbg !466
  %and80.5 = and i32 %xor84.4, 255, !dbg !472
  %idxprom81.5 = zext i32 %and80.5 to i64, !dbg !475
  %arrayidx82.5 = getelementptr inbounds [256 x i32], [256 x i32]* @crc32c_table_big_byte, i64 0, i64 %idxprom81.5, !dbg !475
  %55 = load i32, i32* %arrayidx82.5, align 4, !dbg !475, !tbaa !217
  %shr83.5 = lshr i32 %xor84.4, 8, !dbg !476
  %xor84.5 = xor i32 %55, %shr83.5, !dbg !477
  call void @llvm.dbg.value(metadata i32 %xor84.5, metadata !436, metadata !DIExpression()), !dbg !466
  %conv85.5 = zext i32 %xor84.5 to i64, !dbg !478
  %56 = tail call i64 @llvm.bswap.i64(i64 %conv85.5), !dbg !479
  %arrayidx89.5 = getelementptr inbounds [8 x [256 x i64]], [8 x [256 x i64]]* @crc32c_table_big, i64 0, i64 6, i64 %indvars.iv146, !dbg !480
  store i64 %56, i64* %arrayidx89.5, align 8, !dbg !481, !tbaa !229
  call void @llvm.dbg.value(metadata i64 7, metadata !439, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata i64 7, metadata !439, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata i32 %xor84.5, metadata !436, metadata !DIExpression()), !dbg !466
  %and80.6 = and i32 %xor84.5, 255, !dbg !472
  %idxprom81.6 = zext i32 %and80.6 to i64, !dbg !475
  %arrayidx82.6 = getelementptr inbounds [256 x i32], [256 x i32]* @crc32c_table_big_byte, i64 0, i64 %idxprom81.6, !dbg !475
  %57 = load i32, i32* %arrayidx82.6, align 4, !dbg !475, !tbaa !217
  %shr83.6 = lshr i32 %xor84.5, 8, !dbg !476
  %xor84.6 = xor i32 %57, %shr83.6, !dbg !477
  call void @llvm.dbg.value(metadata i32 %xor84.6, metadata !436, metadata !DIExpression()), !dbg !466
  %conv85.6 = zext i32 %xor84.6 to i64, !dbg !478
  %58 = tail call i64 @llvm.bswap.i64(i64 %conv85.6), !dbg !479
  %arrayidx89.6 = getelementptr inbounds [8 x [256 x i64]], [8 x [256 x i64]]* @crc32c_table_big, i64 0, i64 7, i64 %indvars.iv146, !dbg !480
  store i64 %58, i64* %arrayidx89.6, align 8, !dbg !481, !tbaa !229
  call void @llvm.dbg.value(metadata i64 8, metadata !439, metadata !DIExpression()), !dbg !471
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1, !dbg !482
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next147, metadata !434, metadata !DIExpression()), !dbg !464
  %exitcond149.not = icmp eq i64 %indvars.iv.next147, 256, !dbg !483
  br i1 %exitcond149.not, label %for.cond.cleanup68, label %for.body69, !dbg !484, !llvm.loop !485
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal void @crc32c_init_hw() #6 !dbg !487 {
entry:
  tail call fastcc void @crc32c_zeros([256 x i32]* noundef getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @crc32c_long, i64 0, i64 0), i64 noundef 8192) #12, !dbg !488
  tail call fastcc void @crc32c_zeros([256 x i32]* noundef getelementptr inbounds ([4 x [256 x i32]], [4 x [256 x i32]]* @crc32c_short, i64 0, i64 0), i64 noundef 256) #12, !dbg !489
  ret void, !dbg !490
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @crc32c_shift([256 x i32]* nocapture noundef readonly %zeros, i32 noundef %crc) unnamed_addr #7 !dbg !491 {
entry:
  call void @llvm.dbg.value(metadata [256 x i32]* %zeros, metadata !496, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.value(metadata i32 %crc, metadata !497, metadata !DIExpression()), !dbg !498
  %and = and i32 %crc, 255, !dbg !499
  %idxprom = zext i32 %and to i64, !dbg !500
  %arrayidx1 = getelementptr inbounds [256 x i32], [256 x i32]* %zeros, i64 0, i64 %idxprom, !dbg !500
  %0 = load i32, i32* %arrayidx1, align 4, !dbg !500, !tbaa !217
  %shr = lshr i32 %crc, 8, !dbg !501
  %and3 = and i32 %shr, 255, !dbg !502
  %idxprom4 = zext i32 %and3 to i64, !dbg !503
  %arrayidx5 = getelementptr inbounds [256 x i32], [256 x i32]* %zeros, i64 1, i64 %idxprom4, !dbg !503
  %1 = load i32, i32* %arrayidx5, align 4, !dbg !503, !tbaa !217
  %xor = xor i32 %1, %0, !dbg !504
  %shr7 = lshr i32 %crc, 16, !dbg !505
  %and8 = and i32 %shr7, 255, !dbg !506
  %idxprom9 = zext i32 %and8 to i64, !dbg !507
  %arrayidx10 = getelementptr inbounds [256 x i32], [256 x i32]* %zeros, i64 2, i64 %idxprom9, !dbg !507
  %2 = load i32, i32* %arrayidx10, align 4, !dbg !507, !tbaa !217
  %xor11 = xor i32 %xor, %2, !dbg !508
  %shr13 = lshr i32 %crc, 24, !dbg !509
  %idxprom14 = zext i32 %shr13 to i64, !dbg !510
  %arrayidx15 = getelementptr inbounds [256 x i32], [256 x i32]* %zeros, i64 3, i64 %idxprom14, !dbg !510
  %3 = load i32, i32* %arrayidx15, align 4, !dbg !510, !tbaa !217
  %xor16 = xor i32 %xor11, %3, !dbg !511
  ret i32 %xor16, !dbg !512
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @crc32c_zeros([256 x i32]* nocapture noundef writeonly %zeros, i64 noundef %len) unnamed_addr #6 !dbg !513 {
entry:
  %op = alloca [32 x i32], align 16
  call void @llvm.dbg.value(metadata [256 x i32]* %zeros, metadata !517, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata i64 %len, metadata !518, metadata !DIExpression()), !dbg !525
  %0 = bitcast [32 x i32]* %op to i8*, !dbg !526
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #13, !dbg !526
  call void @llvm.dbg.declare(metadata [32 x i32]* %op, metadata !519, metadata !DIExpression()), !dbg !527
  %arraydecay = getelementptr inbounds [32 x i32], [32 x i32]* %op, i64 0, i64 0, !dbg !528
  call fastcc void @crc32c_zeros_op(i32* noundef nonnull %arraydecay, i64 noundef %len) #12, !dbg !529
  call void @llvm.dbg.value(metadata i32 0, metadata !523, metadata !DIExpression()), !dbg !530
  br label %for.body, !dbg !531

for.cond.cleanup:                                 ; preds = %for.body
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #13, !dbg !532
  ret void, !dbg !532

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !523, metadata !DIExpression()), !dbg !530
  %1 = trunc i64 %indvars.iv to i32, !dbg !533
  %call = call fastcc i32 @gf2_matrix_times(i32* noundef nonnull %arraydecay, i32 noundef %1) #12, !dbg !533
  %arrayidx2 = getelementptr inbounds [256 x i32], [256 x i32]* %zeros, i64 0, i64 %indvars.iv, !dbg !536
  store i32 %call, i32* %arrayidx2, align 4, !dbg !537, !tbaa !217
  %indvars.iv.tr = trunc i64 %indvars.iv to i32, !dbg !538
  %2 = shl i32 %indvars.iv.tr, 8, !dbg !538
  %call4 = call fastcc i32 @gf2_matrix_times(i32* noundef nonnull %arraydecay, i32 noundef %2) #12, !dbg !538
  %arrayidx7 = getelementptr inbounds [256 x i32], [256 x i32]* %zeros, i64 1, i64 %indvars.iv, !dbg !539
  store i32 %call4, i32* %arrayidx7, align 4, !dbg !540, !tbaa !217
  %indvars.iv.tr38 = trunc i64 %indvars.iv to i32, !dbg !541
  %3 = shl i32 %indvars.iv.tr38, 16, !dbg !541
  %call10 = call fastcc i32 @gf2_matrix_times(i32* noundef nonnull %arraydecay, i32 noundef %3) #12, !dbg !541
  %arrayidx13 = getelementptr inbounds [256 x i32], [256 x i32]* %zeros, i64 2, i64 %indvars.iv, !dbg !542
  store i32 %call10, i32* %arrayidx13, align 4, !dbg !543, !tbaa !217
  %indvars.iv.tr39 = trunc i64 %indvars.iv to i32, !dbg !544
  %4 = shl i32 %indvars.iv.tr39, 24, !dbg !544
  %call16 = call fastcc i32 @gf2_matrix_times(i32* noundef nonnull %arraydecay, i32 noundef %4) #12, !dbg !544
  %arrayidx19 = getelementptr inbounds [256 x i32], [256 x i32]* %zeros, i64 3, i64 %indvars.iv, !dbg !545
  store i32 %call16, i32* %arrayidx19, align 4, !dbg !546, !tbaa !217
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !547
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !523, metadata !DIExpression()), !dbg !530
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256, !dbg !548
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !531, !llvm.loop !549
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @crc32c_zeros_op(i32* nocapture noundef %even, i64 noundef %len) unnamed_addr #6 !dbg !551 {
entry:
  %odd = alloca [32 x i32], align 16
  call void @llvm.dbg.value(metadata i32* %even, metadata !556, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 %len, metadata !557, metadata !DIExpression()), !dbg !564
  %0 = bitcast [32 x i32]* %odd to i8*, !dbg !565
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #13, !dbg !565
  call void @llvm.dbg.declare(metadata [32 x i32]* %odd, metadata !558, metadata !DIExpression()), !dbg !566
  %arrayidx = getelementptr inbounds [32 x i32], [32 x i32]* %odd, i64 0, i64 0, !dbg !567
  call void @llvm.dbg.value(metadata i32 1, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i32 1, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i64 1, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 1, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i32 2, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 2, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i64 2, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 2, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i32 4, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 3, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i64 3, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 4, metadata !559, metadata !DIExpression()), !dbg !564
  %1 = bitcast [32 x i32]* %odd to <4 x i32>*, !dbg !569
  store <4 x i32> <i32 -2097792136, i32 1, i32 2, i32 4>, <4 x i32>* %1, align 16, !dbg !569, !tbaa !217
  call void @llvm.dbg.value(metadata i32 8, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 4, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i64 4, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 8, metadata !559, metadata !DIExpression()), !dbg !564
  %arrayidx1.3 = getelementptr inbounds [32 x i32], [32 x i32]* %odd, i64 0, i64 4, !dbg !570
  call void @llvm.dbg.value(metadata i32 16, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 5, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i64 5, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 16, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i32 32, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 6, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i64 6, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 32, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i32 64, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 7, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i64 7, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 64, metadata !559, metadata !DIExpression()), !dbg !564
  %2 = bitcast i32* %arrayidx1.3 to <4 x i32>*, !dbg !573
  store <4 x i32> <i32 8, i32 16, i32 32, i32 64>, <4 x i32>* %2, align 16, !dbg !573, !tbaa !217
  call void @llvm.dbg.value(metadata i32 128, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 8, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i64 8, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 128, metadata !559, metadata !DIExpression()), !dbg !564
  %arrayidx1.7 = getelementptr inbounds [32 x i32], [32 x i32]* %odd, i64 0, i64 8, !dbg !570
  call void @llvm.dbg.value(metadata i32 256, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 9, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i64 9, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 256, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i32 512, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 10, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i64 10, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 512, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i32 1024, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 11, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i64 11, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 1024, metadata !559, metadata !DIExpression()), !dbg !564
  %3 = bitcast i32* %arrayidx1.7 to <4 x i32>*, !dbg !573
  store <4 x i32> <i32 128, i32 256, i32 512, i32 1024>, <4 x i32>* %3, align 16, !dbg !573, !tbaa !217
  call void @llvm.dbg.value(metadata i32 2048, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 12, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i64 12, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 2048, metadata !559, metadata !DIExpression()), !dbg !564
  %arrayidx1.11 = getelementptr inbounds [32 x i32], [32 x i32]* %odd, i64 0, i64 12, !dbg !570
  call void @llvm.dbg.value(metadata i32 4096, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 13, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i64 13, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 4096, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i32 8192, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 14, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i64 14, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 8192, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i32 16384, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 15, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i64 15, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 16384, metadata !559, metadata !DIExpression()), !dbg !564
  %4 = bitcast i32* %arrayidx1.11 to <4 x i32>*, !dbg !573
  store <4 x i32> <i32 2048, i32 4096, i32 8192, i32 16384>, <4 x i32>* %4, align 16, !dbg !573, !tbaa !217
  call void @llvm.dbg.value(metadata i32 32768, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 16, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i64 16, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 32768, metadata !559, metadata !DIExpression()), !dbg !564
  %arrayidx1.15 = getelementptr inbounds [32 x i32], [32 x i32]* %odd, i64 0, i64 16, !dbg !570
  call void @llvm.dbg.value(metadata i32 65536, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 17, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i64 17, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 65536, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i32 131072, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 18, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i64 18, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 131072, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i32 262144, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 19, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i64 19, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 262144, metadata !559, metadata !DIExpression()), !dbg !564
  %5 = bitcast i32* %arrayidx1.15 to <4 x i32>*, !dbg !573
  store <4 x i32> <i32 32768, i32 65536, i32 131072, i32 262144>, <4 x i32>* %5, align 16, !dbg !573, !tbaa !217
  call void @llvm.dbg.value(metadata i32 524288, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 20, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i64 20, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 524288, metadata !559, metadata !DIExpression()), !dbg !564
  %arrayidx1.19 = getelementptr inbounds [32 x i32], [32 x i32]* %odd, i64 0, i64 20, !dbg !570
  call void @llvm.dbg.value(metadata i32 1048576, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 21, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i64 21, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 1048576, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i32 2097152, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 22, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i64 22, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 2097152, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i32 4194304, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 23, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i64 23, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 4194304, metadata !559, metadata !DIExpression()), !dbg !564
  %6 = bitcast i32* %arrayidx1.19 to <4 x i32>*, !dbg !573
  store <4 x i32> <i32 524288, i32 1048576, i32 2097152, i32 4194304>, <4 x i32>* %6, align 16, !dbg !573, !tbaa !217
  call void @llvm.dbg.value(metadata i32 8388608, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 24, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i64 24, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 8388608, metadata !559, metadata !DIExpression()), !dbg !564
  %arrayidx1.23 = getelementptr inbounds [32 x i32], [32 x i32]* %odd, i64 0, i64 24, !dbg !570
  call void @llvm.dbg.value(metadata i32 16777216, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 25, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i64 25, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 16777216, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i32 33554432, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 26, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i64 26, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 33554432, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i32 67108864, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 27, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i64 27, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 67108864, metadata !559, metadata !DIExpression()), !dbg !564
  %7 = bitcast i32* %arrayidx1.23 to <4 x i32>*, !dbg !573
  store <4 x i32> <i32 8388608, i32 16777216, i32 33554432, i32 67108864>, <4 x i32>* %7, align 16, !dbg !573, !tbaa !217
  call void @llvm.dbg.value(metadata i32 134217728, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 28, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i64 28, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 134217728, metadata !559, metadata !DIExpression()), !dbg !564
  %arrayidx1.27 = getelementptr inbounds [32 x i32], [32 x i32]* %odd, i64 0, i64 28, !dbg !570
  call void @llvm.dbg.value(metadata i32 268435456, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 29, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i64 29, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 268435456, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i32 536870912, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 30, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i64 30, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 536870912, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i32 1073741824, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 31, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i64 31, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 1073741824, metadata !559, metadata !DIExpression()), !dbg !564
  %8 = bitcast i32* %arrayidx1.27 to <4 x i32>*, !dbg !573
  store <4 x i32> <i32 134217728, i32 268435456, i32 536870912, i32 1073741824>, <4 x i32>* %8, align 16, !dbg !573, !tbaa !217
  call void @llvm.dbg.value(metadata i32 -2147483648, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 32, metadata !560, metadata !DIExpression()), !dbg !568
  call fastcc void @gf2_matrix_square(i32* noundef %even, i32* noundef nonnull %arrayidx) #12, !dbg !574
  call fastcc void @gf2_matrix_square(i32* noundef nonnull %arrayidx, i32* noundef %even) #12, !dbg !575
  br label %do.body, !dbg !576

do.body:                                          ; preds = %if.end, %entry
  %len.addr.0 = phi i64 [ %len, %entry ], [ %shr, %if.end ]
  call void @llvm.dbg.value(metadata i64 %len.addr.0, metadata !557, metadata !DIExpression()), !dbg !564
  call fastcc void @gf2_matrix_square(i32* noundef %even, i32* noundef nonnull %arrayidx) #12, !dbg !577
  call void @llvm.dbg.value(metadata i64 %len.addr.0, metadata !557, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_stack_value)), !dbg !564
  %cmp4 = icmp ult i64 %len.addr.0, 2, !dbg !579
  br i1 %cmp4, label %cleanup, label %if.end, !dbg !581

if.end:                                           ; preds = %do.body
  %shr = lshr i64 %len.addr.0, 2, !dbg !582
  call void @llvm.dbg.value(metadata i64 %shr, metadata !557, metadata !DIExpression()), !dbg !564
  call fastcc void @gf2_matrix_square(i32* noundef nonnull %arrayidx, i32* noundef %even) #12, !dbg !583
  call void @llvm.dbg.value(metadata i64 %shr, metadata !557, metadata !DIExpression()), !dbg !564
  %tobool.not = icmp ult i64 %len.addr.0, 4, !dbg !584
  br i1 %tobool.not, label %for.body11.preheader, label %do.body, !dbg !584, !llvm.loop !585

for.body11.preheader:                             ; preds = %if.end
  call void @llvm.dbg.value(metadata i64 0, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 1, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 1, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 2, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 2, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 3, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 3, metadata !562, metadata !DIExpression()), !dbg !587
  %9 = bitcast [32 x i32]* %odd to <4 x i32>*, !dbg !588
  %10 = load <4 x i32>, <4 x i32>* %9, align 16, !dbg !588, !tbaa !217
  %11 = bitcast i32* %even to <4 x i32>*, !dbg !590
  store <4 x i32> %10, <4 x i32>* %11, align 4, !dbg !590, !tbaa !217
  call void @llvm.dbg.value(metadata i64 4, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 4, metadata !562, metadata !DIExpression()), !dbg !587
  %arrayidx15.4 = getelementptr inbounds i32, i32* %even, i64 4, !dbg !591
  call void @llvm.dbg.value(metadata i64 5, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 5, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 6, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 6, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 7, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 7, metadata !562, metadata !DIExpression()), !dbg !587
  %12 = bitcast i32* %arrayidx1.3 to <4 x i32>*, !dbg !588
  %13 = load <4 x i32>, <4 x i32>* %12, align 16, !dbg !588, !tbaa !217
  %14 = bitcast i32* %arrayidx15.4 to <4 x i32>*, !dbg !590
  store <4 x i32> %13, <4 x i32>* %14, align 4, !dbg !590, !tbaa !217
  call void @llvm.dbg.value(metadata i64 8, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 8, metadata !562, metadata !DIExpression()), !dbg !587
  %arrayidx15.8 = getelementptr inbounds i32, i32* %even, i64 8, !dbg !591
  call void @llvm.dbg.value(metadata i64 9, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 9, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 10, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 10, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 11, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 11, metadata !562, metadata !DIExpression()), !dbg !587
  %15 = bitcast i32* %arrayidx1.7 to <4 x i32>*, !dbg !588
  %16 = load <4 x i32>, <4 x i32>* %15, align 16, !dbg !588, !tbaa !217
  %17 = bitcast i32* %arrayidx15.8 to <4 x i32>*, !dbg !590
  store <4 x i32> %16, <4 x i32>* %17, align 4, !dbg !590, !tbaa !217
  call void @llvm.dbg.value(metadata i64 12, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 12, metadata !562, metadata !DIExpression()), !dbg !587
  %arrayidx15.12 = getelementptr inbounds i32, i32* %even, i64 12, !dbg !591
  call void @llvm.dbg.value(metadata i64 13, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 13, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 14, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 14, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 15, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 15, metadata !562, metadata !DIExpression()), !dbg !587
  %18 = bitcast i32* %arrayidx1.11 to <4 x i32>*, !dbg !588
  %19 = load <4 x i32>, <4 x i32>* %18, align 16, !dbg !588, !tbaa !217
  %20 = bitcast i32* %arrayidx15.12 to <4 x i32>*, !dbg !590
  store <4 x i32> %19, <4 x i32>* %20, align 4, !dbg !590, !tbaa !217
  call void @llvm.dbg.value(metadata i64 16, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 16, metadata !562, metadata !DIExpression()), !dbg !587
  %arrayidx15.16 = getelementptr inbounds i32, i32* %even, i64 16, !dbg !591
  call void @llvm.dbg.value(metadata i64 17, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 17, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 18, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 18, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 19, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 19, metadata !562, metadata !DIExpression()), !dbg !587
  %21 = bitcast i32* %arrayidx1.15 to <4 x i32>*, !dbg !588
  %22 = load <4 x i32>, <4 x i32>* %21, align 16, !dbg !588, !tbaa !217
  %23 = bitcast i32* %arrayidx15.16 to <4 x i32>*, !dbg !590
  store <4 x i32> %22, <4 x i32>* %23, align 4, !dbg !590, !tbaa !217
  call void @llvm.dbg.value(metadata i64 20, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 20, metadata !562, metadata !DIExpression()), !dbg !587
  %arrayidx15.20 = getelementptr inbounds i32, i32* %even, i64 20, !dbg !591
  call void @llvm.dbg.value(metadata i64 21, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 21, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 22, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 22, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 23, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 23, metadata !562, metadata !DIExpression()), !dbg !587
  %24 = bitcast i32* %arrayidx1.19 to <4 x i32>*, !dbg !588
  %25 = load <4 x i32>, <4 x i32>* %24, align 16, !dbg !588, !tbaa !217
  %26 = bitcast i32* %arrayidx15.20 to <4 x i32>*, !dbg !590
  store <4 x i32> %25, <4 x i32>* %26, align 4, !dbg !590, !tbaa !217
  call void @llvm.dbg.value(metadata i64 24, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 24, metadata !562, metadata !DIExpression()), !dbg !587
  %arrayidx15.24 = getelementptr inbounds i32, i32* %even, i64 24, !dbg !591
  call void @llvm.dbg.value(metadata i64 25, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 25, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 26, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 26, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 27, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 27, metadata !562, metadata !DIExpression()), !dbg !587
  %27 = bitcast i32* %arrayidx1.23 to <4 x i32>*, !dbg !588
  %28 = load <4 x i32>, <4 x i32>* %27, align 16, !dbg !588, !tbaa !217
  %29 = bitcast i32* %arrayidx15.24 to <4 x i32>*, !dbg !590
  store <4 x i32> %28, <4 x i32>* %29, align 4, !dbg !590, !tbaa !217
  call void @llvm.dbg.value(metadata i64 28, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 28, metadata !562, metadata !DIExpression()), !dbg !587
  %arrayidx15.28 = getelementptr inbounds i32, i32* %even, i64 28, !dbg !591
  call void @llvm.dbg.value(metadata i64 29, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 29, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 30, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 30, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 31, metadata !562, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 31, metadata !562, metadata !DIExpression()), !dbg !587
  %30 = bitcast i32* %arrayidx1.27 to <4 x i32>*, !dbg !588
  %31 = load <4 x i32>, <4 x i32>* %30, align 16, !dbg !588, !tbaa !217
  %32 = bitcast i32* %arrayidx15.28 to <4 x i32>*, !dbg !590
  store <4 x i32> %31, <4 x i32>* %32, align 4, !dbg !590, !tbaa !217
  call void @llvm.dbg.value(metadata i64 32, metadata !562, metadata !DIExpression()), !dbg !587
  br label %cleanup, !dbg !592

cleanup:                                          ; preds = %do.body, %for.body11.preheader
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #13, !dbg !592
  ret void, !dbg !592
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal fastcc i32 @gf2_matrix_times(i32* nocapture noundef readonly %mat, i32 noundef %vec) unnamed_addr #8 !dbg !593 {
entry:
  call void @llvm.dbg.value(metadata i32* %mat, metadata !597, metadata !DIExpression()), !dbg !600
  call void @llvm.dbg.value(metadata i32 %vec, metadata !598, metadata !DIExpression()), !dbg !600
  call void @llvm.dbg.value(metadata i32 0, metadata !599, metadata !DIExpression()), !dbg !600
  %tobool.not7 = icmp eq i32 %vec, 0, !dbg !601
  br i1 %tobool.not7, label %while.end, label %while.body, !dbg !601

while.body:                                       ; preds = %entry, %if.end
  %sum.010 = phi i32 [ %sum.1, %if.end ], [ 0, %entry ]
  %vec.addr.09 = phi i32 [ %shr, %if.end ], [ %vec, %entry ]
  %mat.addr.08 = phi i32* [ %incdec.ptr, %if.end ], [ %mat, %entry ]
  call void @llvm.dbg.value(metadata i32 %sum.010, metadata !599, metadata !DIExpression()), !dbg !600
  call void @llvm.dbg.value(metadata i32 %vec.addr.09, metadata !598, metadata !DIExpression()), !dbg !600
  call void @llvm.dbg.value(metadata i32* %mat.addr.08, metadata !597, metadata !DIExpression()), !dbg !600
  %and = and i32 %vec.addr.09, 1, !dbg !602
  %tobool1.not = icmp eq i32 %and, 0, !dbg !602
  br i1 %tobool1.not, label %if.end, label %if.then, !dbg !605

if.then:                                          ; preds = %while.body
  %0 = load i32, i32* %mat.addr.08, align 4, !dbg !606, !tbaa !217
  %xor = xor i32 %0, %sum.010, !dbg !607
  call void @llvm.dbg.value(metadata i32 %xor, metadata !599, metadata !DIExpression()), !dbg !600
  br label %if.end, !dbg !608

if.end:                                           ; preds = %if.then, %while.body
  %sum.1 = phi i32 [ %xor, %if.then ], [ %sum.010, %while.body ], !dbg !600
  call void @llvm.dbg.value(metadata i32 %sum.1, metadata !599, metadata !DIExpression()), !dbg !600
  %shr = lshr i32 %vec.addr.09, 1, !dbg !609
  call void @llvm.dbg.value(metadata i32 %shr, metadata !598, metadata !DIExpression()), !dbg !600
  %incdec.ptr = getelementptr inbounds i32, i32* %mat.addr.08, i64 1, !dbg !610
  call void @llvm.dbg.value(metadata i32* %incdec.ptr, metadata !597, metadata !DIExpression()), !dbg !600
  %tobool.not = icmp ult i32 %vec.addr.09, 2, !dbg !601
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !601, !llvm.loop !611

while.end:                                        ; preds = %if.end, %entry
  %sum.0.lcssa = phi i32 [ 0, %entry ], [ %sum.1, %if.end ], !dbg !600
  ret i32 %sum.0.lcssa, !dbg !613
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @gf2_matrix_square(i32* nocapture noundef writeonly %square, i32* nocapture noundef readonly %mat) unnamed_addr #5 !dbg !614 {
entry:
  call void @llvm.dbg.value(metadata i32* %square, metadata !618, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.value(metadata i32* %mat, metadata !619, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.value(metadata i32 0, metadata !620, metadata !DIExpression()), !dbg !623
  br label %for.body, !dbg !624

for.cond.cleanup:                                 ; preds = %for.body
  ret void, !dbg !625

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !620, metadata !DIExpression()), !dbg !623
  %arrayidx = getelementptr inbounds i32, i32* %mat, i64 %indvars.iv, !dbg !626
  %0 = load i32, i32* %arrayidx, align 4, !dbg !626, !tbaa !217
  %call = tail call fastcc i32 @gf2_matrix_times(i32* noundef %mat, i32 noundef %0) #12, !dbg !628
  %arrayidx2 = getelementptr inbounds i32, i32* %square, i64 %indvars.iv, !dbg !629
  store i32 %call, i32* %arrayidx2, align 4, !dbg !630, !tbaa !217
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !631
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !620, metadata !DIExpression()), !dbg !623
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32, !dbg !632
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !624, !llvm.loop !633
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

attributes #0 = { noinline nounwind uwtable writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind readnone }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "crc32c", scope: !2, file: !3, line: 46, type: !64, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !17, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "crc32c.c", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "295f4fcdef51c336da50938ad5fe9ec8")
!4 = !{!5, !8, !14}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !6, line: 90, baseType: !7)
!6 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!7 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !11, line: 27, baseType: !12)
!11 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !13, line: 45, baseType: !7)
!13 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !{!18, !0, !36, !42, !46, !49, !53, !58, !60, !62}
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "little", scope: !20, file: !3, line: 507, type: !34, isLocal: true, isDefinition: true)
!20 = distinct !DISubprogram(name: "crc32c_sw", scope: !3, file: !3, line: 506, type: !21, scopeLine: 506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !30)
!21 = !DISubroutineType(types: !22)
!22 = !{!23, !23, !26, !28}
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !11, line: 26, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !13, line: 42, baseType: !25)
!25 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 46, baseType: !7)
!29 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!30 = !{!31, !32, !33}
!31 = !DILocalVariable(name: "crc", arg: 1, scope: !20, file: !3, line: 506, type: !23)
!32 = !DILocalVariable(name: "buf", arg: 2, scope: !20, file: !3, line: 506, type: !26)
!33 = !DILocalVariable(name: "len", arg: 3, scope: !20, file: !3, line: 506, type: !28)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "crc32c_table_little", scope: !2, file: !3, line: 367, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 65536, elements: !39)
!39 = !{!40, !41}
!40 = !DISubrange(count: 8)
!41 = !DISubrange(count: 256)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "crc32c_table_big_byte", scope: !2, file: !3, line: 439, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8192, elements: !45)
!45 = !{!41}
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "crc32c_table_big", scope: !2, file: !3, line: 440, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 131072, elements: !39)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "crc32c_once_hw", scope: !2, file: !3, line: 149, type: !51, isLocal: true, isDefinition: true)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_once_t", file: !52, line: 53, baseType: !35)
!52 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "crc32c_long", scope: !2, file: !3, line: 150, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32768, elements: !56)
!56 = !{!57, !41}
!57 = !DISubrange(count: 4)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "crc32c_short", scope: !2, file: !3, line: 151, type: !55, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "crc32c_once_little", scope: !2, file: !3, line: 366, type: !51, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "crc32c_once_big", scope: !2, file: !3, line: 438, type: !51, isLocal: true, isDefinition: true)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "crc_func", file: !65, line: 15, baseType: !66)
!65 = !DIFile(filename: "./crc32c.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "8a48ba9fe4cc0dc3de03e345ef4b0904")
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!67 = !{i32 7, !"Dwarf Version", i32 5}
!68 = !{i32 2, !"Debug Info Version", i32 3}
!69 = !{i32 1, !"wchar_size", i32 4}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{!"clang version 14.0.0"}
!72 = distinct !DISubprogram(name: "crc32c_init", scope: !3, file: !3, line: 265, type: !73, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !75)
!73 = !DISubroutineType(types: !74)
!74 = !{null}
!75 = !{!76, !77, !79}
!76 = !DILocalVariable(name: "sse42", scope: !72, file: !3, line: 266, type: !35)
!77 = !DILocalVariable(name: "eax", scope: !78, file: !3, line: 268, type: !23)
!78 = distinct !DILexicalBlock(scope: !72, file: !3, line: 268, column: 5)
!79 = !DILocalVariable(name: "ecx", scope: !78, file: !3, line: 268, type: !23)
!80 = !DILocation(line: 0, scope: !78)
!81 = !DILocation(line: 268, column: 5, scope: !78)
!82 = !{i64 2147731551}
!83 = !DILocation(line: 0, scope: !72)
!84 = !DILocation(line: 269, column: 9, scope: !85)
!85 = distinct !DILexicalBlock(scope: !72, file: !3, line: 269, column: 9)
!86 = !DILocation(line: 0, scope: !85)
!87 = !{!88, !88, i64 0}
!88 = !{!"any pointer", !89, i64 0}
!89 = !{!"omnipotent char", !90, i64 0}
!90 = !{!"Simple C/C++ TBAA"}
!91 = !DILocation(line: 274, column: 1, scope: !72)
!92 = distinct !DISubprogram(name: "crc32c_hw", scope: !3, file: !3, line: 160, type: !21, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !93)
!93 = !{!94, !95, !96, !97, !98, !102, !104, !105, !107, !109, !110, !111}
!94 = !DILocalVariable(name: "crc", arg: 1, scope: !92, file: !3, line: 160, type: !23)
!95 = !DILocalVariable(name: "buf", arg: 2, scope: !92, file: !3, line: 160, type: !26)
!96 = !DILocalVariable(name: "len", arg: 3, scope: !92, file: !3, line: 160, type: !28)
!97 = !DILocalVariable(name: "crc0", scope: !92, file: !3, line: 166, type: !10)
!98 = !DILocalVariable(name: "next", scope: !92, file: !3, line: 170, type: !99)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!101 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!102 = !DILocalVariable(name: "crc1", scope: !103, file: !3, line: 184, type: !10)
!103 = distinct !DILexicalBlock(scope: !92, file: !3, line: 183, column: 27)
!104 = !DILocalVariable(name: "crc2", scope: !103, file: !3, line: 185, type: !10)
!105 = !DILocalVariable(name: "end", scope: !103, file: !3, line: 186, type: !106)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!107 = !DILocalVariable(name: "crc1", scope: !108, file: !3, line: 204, type: !10)
!108 = distinct !DILexicalBlock(scope: !92, file: !3, line: 203, column: 28)
!109 = !DILocalVariable(name: "crc2", scope: !108, file: !3, line: 205, type: !10)
!110 = !DILocalVariable(name: "end", scope: !108, file: !3, line: 206, type: !106)
!111 = !DILocalVariable(name: "end", scope: !112, file: !3, line: 224, type: !106)
!112 = distinct !DILexicalBlock(scope: !92, file: !3, line: 223, column: 5)
!113 = !DILocation(line: 0, scope: !92)
!114 = !DILocation(line: 162, column: 5, scope: !92)
!115 = !DILocation(line: 165, column: 11, scope: !92)
!116 = !DILocation(line: 166, column: 21, scope: !92)
!117 = !DILocation(line: 171, column: 12, scope: !92)
!118 = !DILocation(line: 171, column: 16, scope: !92)
!119 = !DILocation(line: 171, column: 5, scope: !92)
!120 = !DILocation(line: 183, column: 16, scope: !92)
!121 = !DILocation(line: 183, column: 5, scope: !92)
!122 = !DILocation(line: 172, column: 9, scope: !123)
!123 = distinct !DILexicalBlock(scope: !92, file: !3, line: 171, column: 47)
!124 = !{i64 6375}
!125 = !DILocation(line: 175, column: 13, scope: !123)
!126 = !DILocation(line: 176, column: 12, scope: !123)
!127 = distinct !{!127, !119, !128, !129}
!128 = !DILocation(line: 177, column: 5, scope: !92)
!129 = !{!"llvm.loop.mustprogress"}
!130 = !DILocation(line: 187, column: 9, scope: !103)
!131 = !DILocation(line: 203, column: 16, scope: !92)
!132 = !DILocation(line: 203, column: 5, scope: !92)
!133 = !DILocation(line: 0, scope: !103)
!134 = !DILocation(line: 188, column: 13, scope: !135)
!135 = distinct !DILexicalBlock(scope: !103, file: !3, line: 187, column: 12)
!136 = !{i64 6980, i64 7002, i64 7055}
!137 = !DILocation(line: 193, column: 18, scope: !135)
!138 = !DILocation(line: 194, column: 23, scope: !103)
!139 = !DILocation(line: 194, column: 9, scope: !135)
!140 = distinct !{!140, !130, !141, !129}
!141 = !DILocation(line: 194, column: 28, scope: !103)
!142 = !DILocation(line: 195, column: 42, scope: !103)
!143 = !DILocation(line: 195, column: 16, scope: !103)
!144 = !DILocation(line: 196, column: 42, scope: !103)
!145 = !DILocation(line: 196, column: 16, scope: !103)
!146 = !DILocation(line: 196, column: 48, scope: !103)
!147 = !DILocation(line: 197, column: 14, scope: !103)
!148 = !DILocation(line: 198, column: 13, scope: !103)
!149 = distinct !{!149, !121, !150, !129}
!150 = !DILocation(line: 199, column: 5, scope: !92)
!151 = !DILocation(line: 207, column: 9, scope: !108)
!152 = !DILocation(line: 0, scope: !108)
!153 = !DILocation(line: 208, column: 13, scope: !154)
!154 = distinct !DILexicalBlock(scope: !108, file: !3, line: 207, column: 12)
!155 = !{i64 7731, i64 7753, i64 7807}
!156 = !DILocation(line: 213, column: 18, scope: !154)
!157 = !DILocation(line: 214, column: 23, scope: !108)
!158 = !DILocation(line: 214, column: 9, scope: !154)
!159 = distinct !{!159, !151, !160, !129}
!160 = !DILocation(line: 214, column: 28, scope: !108)
!161 = !DILocation(line: 215, column: 43, scope: !108)
!162 = !DILocation(line: 215, column: 16, scope: !108)
!163 = !DILocation(line: 216, column: 43, scope: !108)
!164 = !DILocation(line: 216, column: 16, scope: !108)
!165 = !DILocation(line: 216, column: 49, scope: !108)
!166 = !DILocation(line: 217, column: 14, scope: !108)
!167 = !DILocation(line: 218, column: 13, scope: !108)
!168 = distinct !{!168, !132, !169, !129}
!169 = !DILocation(line: 219, column: 5, scope: !92)
!170 = !DILocation(line: 224, column: 62, scope: !112)
!171 = !DILocation(line: 224, column: 55, scope: !112)
!172 = !DILocation(line: 224, column: 48, scope: !112)
!173 = !DILocation(line: 0, scope: !112)
!174 = !DILocation(line: 225, column: 21, scope: !112)
!175 = !DILocation(line: 225, column: 9, scope: !112)
!176 = !DILocation(line: 235, column: 5, scope: !92)
!177 = !DILocation(line: 226, column: 13, scope: !178)
!178 = distinct !DILexicalBlock(scope: !112, file: !3, line: 225, column: 28)
!179 = !{i64 8422}
!180 = !DILocation(line: 229, column: 18, scope: !178)
!181 = distinct !{!181, !175, !182, !129}
!182 = !DILocation(line: 230, column: 9, scope: !112)
!183 = !DILocation(line: 236, column: 9, scope: !184)
!184 = distinct !DILexicalBlock(scope: !92, file: !3, line: 235, column: 17)
!185 = !{i64 8671}
!186 = !DILocation(line: 239, column: 13, scope: !184)
!187 = !DILocation(line: 240, column: 12, scope: !184)
!188 = distinct !{!188, !176, !189, !129}
!189 = !DILocation(line: 241, column: 5, scope: !92)
!190 = !DILocation(line: 244, column: 12, scope: !92)
!191 = !DILocation(line: 244, column: 5, scope: !92)
!192 = !DILocation(line: 0, scope: !20)
!193 = !DILocation(line: 509, column: 16, scope: !194)
!194 = distinct !DILexicalBlock(scope: !20, file: !3, line: 508, column: 9)
!195 = !DILocation(line: 512, column: 1, scope: !20)
!196 = distinct !DISubprogram(name: "crc32c_sw_little", scope: !3, file: !3, line: 392, type: !21, scopeLine: 392, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !197)
!197 = !{!198, !199, !200, !201, !202}
!198 = !DILocalVariable(name: "crc", arg: 1, scope: !196, file: !3, line: 392, type: !23)
!199 = !DILocalVariable(name: "buf", arg: 2, scope: !196, file: !3, line: 392, type: !26)
!200 = !DILocalVariable(name: "len", arg: 3, scope: !196, file: !3, line: 392, type: !28)
!201 = !DILocalVariable(name: "next", scope: !196, file: !3, line: 393, type: !99)
!202 = !DILocalVariable(name: "crcw", scope: !203, file: !3, line: 402, type: !10)
!203 = distinct !DILexicalBlock(scope: !204, file: !3, line: 401, column: 19)
!204 = distinct !DILexicalBlock(scope: !196, file: !3, line: 401, column: 9)
!205 = !DILocation(line: 0, scope: !196)
!206 = !DILocation(line: 395, column: 5, scope: !196)
!207 = !DILocation(line: 396, column: 11, scope: !196)
!208 = !DILocation(line: 397, column: 12, scope: !196)
!209 = !DILocation(line: 397, column: 16, scope: !196)
!210 = !DILocation(line: 397, column: 5, scope: !196)
!211 = !DILocation(line: 398, column: 50, scope: !212)
!212 = distinct !DILexicalBlock(scope: !196, file: !3, line: 397, column: 47)
!213 = !DILocation(line: 398, column: 45, scope: !212)
!214 = !{!89, !89, i64 0}
!215 = !DILocation(line: 398, column: 54, scope: !212)
!216 = !DILocation(line: 398, column: 15, scope: !212)
!217 = !{!218, !218, i64 0}
!218 = !{!"int", !89, i64 0}
!219 = !DILocation(line: 398, column: 69, scope: !212)
!220 = !DILocation(line: 398, column: 62, scope: !212)
!221 = !DILocation(line: 399, column: 12, scope: !212)
!222 = distinct !{!222, !210, !223, !129}
!223 = !DILocation(line: 400, column: 5, scope: !196)
!224 = !DILocation(line: 401, column: 13, scope: !204)
!225 = !DILocation(line: 401, column: 9, scope: !196)
!226 = !DILocation(line: 0, scope: !203)
!227 = !DILocation(line: 404, column: 21, scope: !228)
!228 = distinct !DILexicalBlock(scope: !203, file: !3, line: 403, column: 12)
!229 = !{!230, !230, i64 0}
!230 = !{!"long", !89, i64 0}
!231 = !DILocation(line: 404, column: 18, scope: !228)
!232 = !DILocation(line: 405, column: 48, scope: !228)
!233 = !DILocation(line: 405, column: 20, scope: !228)
!234 = !DILocation(line: 406, column: 49, scope: !228)
!235 = !DILocation(line: 406, column: 55, scope: !228)
!236 = !DILocation(line: 406, column: 20, scope: !228)
!237 = !DILocation(line: 405, column: 56, scope: !228)
!238 = !DILocation(line: 407, column: 49, scope: !228)
!239 = !DILocation(line: 407, column: 56, scope: !228)
!240 = !DILocation(line: 407, column: 20, scope: !228)
!241 = !DILocation(line: 406, column: 63, scope: !228)
!242 = !DILocation(line: 408, column: 49, scope: !228)
!243 = !DILocation(line: 408, column: 56, scope: !228)
!244 = !DILocation(line: 408, column: 20, scope: !228)
!245 = !DILocation(line: 407, column: 64, scope: !228)
!246 = !DILocation(line: 409, column: 49, scope: !228)
!247 = !DILocation(line: 409, column: 56, scope: !228)
!248 = !DILocation(line: 409, column: 20, scope: !228)
!249 = !DILocation(line: 408, column: 64, scope: !228)
!250 = !DILocation(line: 410, column: 49, scope: !228)
!251 = !DILocation(line: 410, column: 56, scope: !228)
!252 = !DILocation(line: 410, column: 20, scope: !228)
!253 = !DILocation(line: 409, column: 64, scope: !228)
!254 = !DILocation(line: 411, column: 49, scope: !228)
!255 = !DILocation(line: 411, column: 56, scope: !228)
!256 = !DILocation(line: 411, column: 20, scope: !228)
!257 = !DILocation(line: 410, column: 64, scope: !228)
!258 = !DILocation(line: 412, column: 48, scope: !228)
!259 = !DILocation(line: 412, column: 20, scope: !228)
!260 = !DILocation(line: 411, column: 64, scope: !228)
!261 = !DILocation(line: 413, column: 18, scope: !228)
!262 = !DILocation(line: 414, column: 17, scope: !228)
!263 = !DILocation(line: 415, column: 22, scope: !203)
!264 = !DILocation(line: 415, column: 9, scope: !228)
!265 = distinct !{!265, !266, !267, !129}
!266 = !DILocation(line: 403, column: 9, scope: !203)
!267 = !DILocation(line: 415, column: 26, scope: !203)
!268 = !DILocation(line: 418, column: 5, scope: !196)
!269 = !DILocation(line: 419, column: 50, scope: !270)
!270 = distinct !DILexicalBlock(scope: !196, file: !3, line: 418, column: 17)
!271 = !DILocation(line: 419, column: 45, scope: !270)
!272 = !DILocation(line: 419, column: 54, scope: !270)
!273 = !DILocation(line: 419, column: 15, scope: !270)
!274 = !DILocation(line: 419, column: 69, scope: !270)
!275 = !DILocation(line: 419, column: 62, scope: !270)
!276 = !DILocation(line: 420, column: 12, scope: !270)
!277 = distinct !{!277, !268, !278, !129}
!278 = !DILocation(line: 421, column: 5, scope: !196)
!279 = !DILocation(line: 422, column: 12, scope: !196)
!280 = !DILocation(line: 422, column: 5, scope: !196)
!281 = !DISubprogram(name: "pthread_once", scope: !282, file: !282, line: 470, type: !283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !287)
!282 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!283 = !DISubroutineType(types: !284)
!284 = !{!35, !285, !286}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!287 = !{}
!288 = distinct !DISubprogram(name: "crc32c_init_sw_little", scope: !3, file: !3, line: 368, type: !73, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !289)
!289 = !{!290, !292, !295, !297, !300}
!290 = !DILocalVariable(name: "n", scope: !291, file: !3, line: 369, type: !25)
!291 = distinct !DILexicalBlock(scope: !288, file: !3, line: 369, column: 5)
!292 = !DILocalVariable(name: "crc", scope: !293, file: !3, line: 370, type: !23)
!293 = distinct !DILexicalBlock(scope: !294, file: !3, line: 369, column: 40)
!294 = distinct !DILexicalBlock(scope: !291, file: !3, line: 369, column: 5)
!295 = !DILocalVariable(name: "n", scope: !296, file: !3, line: 381, type: !25)
!296 = distinct !DILexicalBlock(scope: !288, file: !3, line: 381, column: 5)
!297 = !DILocalVariable(name: "crc", scope: !298, file: !3, line: 382, type: !23)
!298 = distinct !DILexicalBlock(scope: !299, file: !3, line: 381, column: 40)
!299 = distinct !DILexicalBlock(scope: !296, file: !3, line: 381, column: 5)
!300 = !DILocalVariable(name: "k", scope: !301, file: !3, line: 383, type: !25)
!301 = distinct !DILexicalBlock(scope: !298, file: !3, line: 383, column: 9)
!302 = !DILocation(line: 0, scope: !291)
!303 = !DILocation(line: 369, column: 5, scope: !291)
!304 = !DILocation(line: 369, column: 36, scope: !294)
!305 = !DILocation(line: 371, column: 19, scope: !293)
!306 = !DILocation(line: 371, column: 15, scope: !293)
!307 = !DILocation(line: 372, column: 19, scope: !293)
!308 = !DILocation(line: 372, column: 15, scope: !293)
!309 = !DILocation(line: 373, column: 19, scope: !293)
!310 = !DILocation(line: 373, column: 15, scope: !293)
!311 = !DILocation(line: 374, column: 19, scope: !293)
!312 = !DILocation(line: 374, column: 15, scope: !293)
!313 = !DILocation(line: 375, column: 19, scope: !293)
!314 = !DILocation(line: 375, column: 15, scope: !293)
!315 = !DILocation(line: 376, column: 19, scope: !293)
!316 = !DILocation(line: 376, column: 15, scope: !293)
!317 = !DILocation(line: 377, column: 19, scope: !293)
!318 = !DILocation(line: 377, column: 15, scope: !293)
!319 = !DILocation(line: 378, column: 19, scope: !293)
!320 = !DILocation(line: 378, column: 15, scope: !293)
!321 = !DILocation(line: 379, column: 35, scope: !293)
!322 = distinct !{!322, !303, !323, !129, !324}
!323 = !DILocation(line: 380, column: 5, scope: !291)
!324 = !{!"llvm.loop.isvectorized", i32 1}
!325 = !DILocation(line: 388, column: 1, scope: !288)
!326 = !DILocation(line: 0, scope: !296)
!327 = !DILocation(line: 382, column: 24, scope: !298)
!328 = !DILocation(line: 0, scope: !298)
!329 = !DILocation(line: 0, scope: !301)
!330 = !DILocation(line: 384, column: 46, scope: !331)
!331 = distinct !DILexicalBlock(scope: !332, file: !3, line: 383, column: 42)
!332 = distinct !DILexicalBlock(scope: !301, file: !3, line: 383, column: 9)
!333 = !DILocation(line: 384, column: 19, scope: !331)
!334 = !DILocation(line: 384, column: 61, scope: !331)
!335 = !DILocation(line: 384, column: 54, scope: !331)
!336 = !DILocation(line: 385, column: 13, scope: !331)
!337 = !DILocation(line: 385, column: 39, scope: !331)
!338 = !DILocation(line: 381, column: 36, scope: !299)
!339 = !DILocation(line: 381, column: 28, scope: !299)
!340 = !DILocation(line: 381, column: 5, scope: !296)
!341 = distinct !{!341, !340, !342, !129}
!342 = !DILocation(line: 387, column: 5, scope: !296)
!343 = distinct !DISubprogram(name: "crc32c_sw_big", scope: !3, file: !3, line: 466, type: !21, scopeLine: 466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !344)
!344 = !{!345, !346, !347, !348, !349}
!345 = !DILocalVariable(name: "crc", arg: 1, scope: !343, file: !3, line: 466, type: !23)
!346 = !DILocalVariable(name: "buf", arg: 2, scope: !343, file: !3, line: 466, type: !26)
!347 = !DILocalVariable(name: "len", arg: 3, scope: !343, file: !3, line: 466, type: !28)
!348 = !DILocalVariable(name: "next", scope: !343, file: !3, line: 467, type: !99)
!349 = !DILocalVariable(name: "crcw", scope: !350, file: !3, line: 476, type: !10)
!350 = distinct !DILexicalBlock(scope: !351, file: !3, line: 475, column: 19)
!351 = distinct !DILexicalBlock(scope: !343, file: !3, line: 475, column: 9)
!352 = !DILocation(line: 0, scope: !343)
!353 = !DILocation(line: 469, column: 5, scope: !343)
!354 = !DILocation(line: 470, column: 11, scope: !343)
!355 = !DILocation(line: 471, column: 12, scope: !343)
!356 = !DILocation(line: 471, column: 16, scope: !343)
!357 = !DILocation(line: 471, column: 5, scope: !343)
!358 = !DILocation(line: 472, column: 49, scope: !359)
!359 = distinct !DILexicalBlock(scope: !343, file: !3, line: 471, column: 47)
!360 = !DILocation(line: 472, column: 44, scope: !359)
!361 = !DILocation(line: 472, column: 53, scope: !359)
!362 = !DILocation(line: 472, column: 15, scope: !359)
!363 = !DILocation(line: 472, column: 68, scope: !359)
!364 = !DILocation(line: 472, column: 61, scope: !359)
!365 = !DILocation(line: 473, column: 12, scope: !359)
!366 = distinct !{!366, !357, !367, !129}
!367 = !DILocation(line: 474, column: 5, scope: !343)
!368 = !DILocation(line: 475, column: 13, scope: !351)
!369 = !DILocation(line: 475, column: 9, scope: !343)
!370 = !DILocation(line: 476, column: 30, scope: !350)
!371 = !DILocation(line: 476, column: 25, scope: !350)
!372 = !DILocation(line: 0, scope: !350)
!373 = !DILocation(line: 477, column: 9, scope: !350)
!374 = !DILocation(line: 478, column: 21, scope: !375)
!375 = distinct !DILexicalBlock(scope: !350, file: !3, line: 477, column: 12)
!376 = !DILocation(line: 478, column: 18, scope: !375)
!377 = !DILocation(line: 479, column: 45, scope: !375)
!378 = !DILocation(line: 479, column: 20, scope: !375)
!379 = !DILocation(line: 480, column: 46, scope: !375)
!380 = !DILocation(line: 480, column: 52, scope: !375)
!381 = !DILocation(line: 480, column: 20, scope: !375)
!382 = !DILocation(line: 479, column: 53, scope: !375)
!383 = !DILocation(line: 481, column: 46, scope: !375)
!384 = !DILocation(line: 481, column: 53, scope: !375)
!385 = !DILocation(line: 481, column: 20, scope: !375)
!386 = !DILocation(line: 480, column: 60, scope: !375)
!387 = !DILocation(line: 482, column: 46, scope: !375)
!388 = !DILocation(line: 482, column: 53, scope: !375)
!389 = !DILocation(line: 482, column: 20, scope: !375)
!390 = !DILocation(line: 481, column: 61, scope: !375)
!391 = !DILocation(line: 483, column: 46, scope: !375)
!392 = !DILocation(line: 483, column: 53, scope: !375)
!393 = !DILocation(line: 483, column: 20, scope: !375)
!394 = !DILocation(line: 482, column: 61, scope: !375)
!395 = !DILocation(line: 484, column: 46, scope: !375)
!396 = !DILocation(line: 484, column: 53, scope: !375)
!397 = !DILocation(line: 484, column: 20, scope: !375)
!398 = !DILocation(line: 483, column: 61, scope: !375)
!399 = !DILocation(line: 485, column: 46, scope: !375)
!400 = !DILocation(line: 485, column: 53, scope: !375)
!401 = !DILocation(line: 485, column: 20, scope: !375)
!402 = !DILocation(line: 484, column: 61, scope: !375)
!403 = !DILocation(line: 486, column: 46, scope: !375)
!404 = !DILocation(line: 486, column: 20, scope: !375)
!405 = !DILocation(line: 485, column: 61, scope: !375)
!406 = !DILocation(line: 487, column: 18, scope: !375)
!407 = !DILocation(line: 488, column: 17, scope: !375)
!408 = !DILocation(line: 489, column: 22, scope: !350)
!409 = !DILocation(line: 489, column: 9, scope: !375)
!410 = distinct !{!410, !373, !411, !129}
!411 = !DILocation(line: 489, column: 26, scope: !350)
!412 = !DILocation(line: 490, column: 15, scope: !350)
!413 = !DILocation(line: 491, column: 5, scope: !350)
!414 = !DILocation(line: 492, column: 5, scope: !343)
!415 = !DILocation(line: 493, column: 49, scope: !416)
!416 = distinct !DILexicalBlock(scope: !343, file: !3, line: 492, column: 17)
!417 = !DILocation(line: 493, column: 44, scope: !416)
!418 = !DILocation(line: 493, column: 53, scope: !416)
!419 = !DILocation(line: 493, column: 15, scope: !416)
!420 = !DILocation(line: 493, column: 68, scope: !416)
!421 = !DILocation(line: 493, column: 61, scope: !416)
!422 = !DILocation(line: 494, column: 12, scope: !416)
!423 = distinct !{!423, !414, !424, !129}
!424 = !DILocation(line: 495, column: 5, scope: !343)
!425 = !DILocation(line: 496, column: 12, scope: !343)
!426 = !DILocation(line: 496, column: 5, scope: !343)
!427 = distinct !DISubprogram(name: "crc32c_init_sw_big", scope: !3, file: !3, line: 441, type: !73, scopeLine: 441, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !428)
!428 = !{!429, !431, !434, !436, !439}
!429 = !DILocalVariable(name: "n", scope: !430, file: !3, line: 442, type: !25)
!430 = distinct !DILexicalBlock(scope: !427, file: !3, line: 442, column: 5)
!431 = !DILocalVariable(name: "crc", scope: !432, file: !3, line: 443, type: !23)
!432 = distinct !DILexicalBlock(scope: !433, file: !3, line: 442, column: 40)
!433 = distinct !DILexicalBlock(scope: !430, file: !3, line: 442, column: 5)
!434 = !DILocalVariable(name: "n", scope: !435, file: !3, line: 454, type: !25)
!435 = distinct !DILexicalBlock(scope: !427, file: !3, line: 454, column: 5)
!436 = !DILocalVariable(name: "crc", scope: !437, file: !3, line: 455, type: !23)
!437 = distinct !DILexicalBlock(scope: !438, file: !3, line: 454, column: 40)
!438 = distinct !DILexicalBlock(scope: !435, file: !3, line: 454, column: 5)
!439 = !DILocalVariable(name: "k", scope: !440, file: !3, line: 457, type: !25)
!440 = distinct !DILexicalBlock(scope: !437, file: !3, line: 457, column: 9)
!441 = !DILocation(line: 0, scope: !430)
!442 = !DILocation(line: 442, column: 5, scope: !430)
!443 = !DILocation(line: 442, column: 36, scope: !433)
!444 = !DILocation(line: 444, column: 19, scope: !432)
!445 = !DILocation(line: 444, column: 15, scope: !432)
!446 = !DILocation(line: 445, column: 19, scope: !432)
!447 = !DILocation(line: 445, column: 15, scope: !432)
!448 = !DILocation(line: 446, column: 19, scope: !432)
!449 = !DILocation(line: 446, column: 15, scope: !432)
!450 = !DILocation(line: 447, column: 19, scope: !432)
!451 = !DILocation(line: 447, column: 15, scope: !432)
!452 = !DILocation(line: 448, column: 19, scope: !432)
!453 = !DILocation(line: 448, column: 15, scope: !432)
!454 = !DILocation(line: 449, column: 19, scope: !432)
!455 = !DILocation(line: 449, column: 15, scope: !432)
!456 = !DILocation(line: 450, column: 19, scope: !432)
!457 = !DILocation(line: 450, column: 15, scope: !432)
!458 = !DILocation(line: 451, column: 19, scope: !432)
!459 = !DILocation(line: 451, column: 15, scope: !432)
!460 = !DILocation(line: 452, column: 34, scope: !432)
!461 = distinct !{!461, !442, !462, !129, !324}
!462 = !DILocation(line: 453, column: 5, scope: !430)
!463 = !DILocation(line: 462, column: 1, scope: !427)
!464 = !DILocation(line: 0, scope: !435)
!465 = !DILocation(line: 455, column: 24, scope: !437)
!466 = !DILocation(line: 0, scope: !437)
!467 = !DILocation(line: 456, column: 39, scope: !437)
!468 = !DILocation(line: 456, column: 34, scope: !437)
!469 = !DILocation(line: 456, column: 9, scope: !437)
!470 = !DILocation(line: 456, column: 32, scope: !437)
!471 = !DILocation(line: 0, scope: !440)
!472 = !DILocation(line: 458, column: 45, scope: !473)
!473 = distinct !DILexicalBlock(scope: !474, file: !3, line: 457, column: 42)
!474 = distinct !DILexicalBlock(scope: !440, file: !3, line: 457, column: 9)
!475 = !DILocation(line: 458, column: 19, scope: !473)
!476 = !DILocation(line: 458, column: 60, scope: !473)
!477 = !DILocation(line: 458, column: 53, scope: !473)
!478 = !DILocation(line: 459, column: 43, scope: !473)
!479 = !DILocation(line: 459, column: 38, scope: !473)
!480 = !DILocation(line: 459, column: 13, scope: !473)
!481 = !DILocation(line: 459, column: 36, scope: !473)
!482 = !DILocation(line: 454, column: 36, scope: !438)
!483 = !DILocation(line: 454, column: 28, scope: !438)
!484 = !DILocation(line: 454, column: 5, scope: !435)
!485 = distinct !{!485, !484, !486, !129}
!486 = !DILocation(line: 461, column: 5, scope: !435)
!487 = distinct !DISubprogram(name: "crc32c_init_hw", scope: !3, file: !3, line: 154, type: !73, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !287)
!488 = !DILocation(line: 155, column: 5, scope: !487)
!489 = !DILocation(line: 156, column: 5, scope: !487)
!490 = !DILocation(line: 157, column: 1, scope: !487)
!491 = distinct !DISubprogram(name: "crc32c_shift", scope: !3, file: !3, line: 133, type: !492, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !495)
!492 = !DISubroutineType(types: !493)
!493 = !{!23, !494, !23}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!495 = !{!496, !497}
!496 = !DILocalVariable(name: "zeros", arg: 1, scope: !491, file: !3, line: 133, type: !494)
!497 = !DILocalVariable(name: "crc", arg: 2, scope: !491, file: !3, line: 133, type: !23)
!498 = !DILocation(line: 0, scope: !491)
!499 = !DILocation(line: 134, column: 25, scope: !491)
!500 = !DILocation(line: 134, column: 12, scope: !491)
!501 = !DILocation(line: 134, column: 49, scope: !491)
!502 = !DILocation(line: 134, column: 55, scope: !491)
!503 = !DILocation(line: 134, column: 35, scope: !491)
!504 = !DILocation(line: 134, column: 33, scope: !491)
!505 = !DILocation(line: 135, column: 26, scope: !491)
!506 = !DILocation(line: 135, column: 33, scope: !491)
!507 = !DILocation(line: 135, column: 12, scope: !491)
!508 = !DILocation(line: 134, column: 63, scope: !491)
!509 = !DILocation(line: 135, column: 56, scope: !491)
!510 = !DILocation(line: 135, column: 43, scope: !491)
!511 = !DILocation(line: 135, column: 41, scope: !491)
!512 = !DILocation(line: 134, column: 5, scope: !491)
!513 = distinct !DISubprogram(name: "crc32c_zeros", scope: !3, file: !3, line: 120, type: !514, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !516)
!514 = !DISubroutineType(types: !515)
!515 = !{null, !494, !28}
!516 = !{!517, !518, !519, !523}
!517 = !DILocalVariable(name: "zeros", arg: 1, scope: !513, file: !3, line: 120, type: !494)
!518 = !DILocalVariable(name: "len", arg: 2, scope: !513, file: !3, line: 120, type: !28)
!519 = !DILocalVariable(name: "op", scope: !513, file: !3, line: 121, type: !520)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 1024, elements: !521)
!521 = !{!522}
!522 = !DISubrange(count: 32)
!523 = !DILocalVariable(name: "n", scope: !524, file: !3, line: 124, type: !25)
!524 = distinct !DILexicalBlock(scope: !513, file: !3, line: 124, column: 5)
!525 = !DILocation(line: 0, scope: !513)
!526 = !DILocation(line: 121, column: 5, scope: !513)
!527 = !DILocation(line: 121, column: 14, scope: !513)
!528 = !DILocation(line: 123, column: 21, scope: !513)
!529 = !DILocation(line: 123, column: 5, scope: !513)
!530 = !DILocation(line: 0, scope: !524)
!531 = !DILocation(line: 124, column: 5, scope: !524)
!532 = !DILocation(line: 130, column: 1, scope: !513)
!533 = !DILocation(line: 125, column: 23, scope: !534)
!534 = distinct !DILexicalBlock(scope: !535, file: !3, line: 124, column: 40)
!535 = distinct !DILexicalBlock(scope: !524, file: !3, line: 124, column: 5)
!536 = !DILocation(line: 125, column: 9, scope: !534)
!537 = !DILocation(line: 125, column: 21, scope: !534)
!538 = !DILocation(line: 126, column: 23, scope: !534)
!539 = !DILocation(line: 126, column: 9, scope: !534)
!540 = !DILocation(line: 126, column: 21, scope: !534)
!541 = !DILocation(line: 127, column: 23, scope: !534)
!542 = !DILocation(line: 127, column: 9, scope: !534)
!543 = !DILocation(line: 127, column: 21, scope: !534)
!544 = !DILocation(line: 128, column: 23, scope: !534)
!545 = !DILocation(line: 128, column: 9, scope: !534)
!546 = !DILocation(line: 128, column: 21, scope: !534)
!547 = !DILocation(line: 124, column: 36, scope: !535)
!548 = !DILocation(line: 124, column: 28, scope: !535)
!549 = distinct !{!549, !531, !550, !129}
!550 = !DILocation(line: 129, column: 5, scope: !524)
!551 = distinct !DISubprogram(name: "crc32c_zeros_op", scope: !3, file: !3, line: 84, type: !552, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !555)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !554, !28}
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!555 = !{!556, !557, !558, !559, !560, !562}
!556 = !DILocalVariable(name: "even", arg: 1, scope: !551, file: !3, line: 84, type: !554)
!557 = !DILocalVariable(name: "len", arg: 2, scope: !551, file: !3, line: 84, type: !28)
!558 = !DILocalVariable(name: "odd", scope: !551, file: !3, line: 85, type: !520)
!559 = !DILocalVariable(name: "row", scope: !551, file: !3, line: 89, type: !23)
!560 = !DILocalVariable(name: "n", scope: !561, file: !3, line: 90, type: !25)
!561 = distinct !DILexicalBlock(scope: !551, file: !3, line: 90, column: 5)
!562 = !DILocalVariable(name: "n", scope: !563, file: !3, line: 114, type: !25)
!563 = distinct !DILexicalBlock(scope: !551, file: !3, line: 114, column: 5)
!564 = !DILocation(line: 0, scope: !551)
!565 = !DILocation(line: 85, column: 5, scope: !551)
!566 = !DILocation(line: 85, column: 14, scope: !551)
!567 = !DILocation(line: 88, column: 5, scope: !551)
!568 = !DILocation(line: 0, scope: !561)
!569 = !DILocation(line: 88, column: 12, scope: !551)
!570 = !DILocation(line: 91, column: 9, scope: !571)
!571 = distinct !DILexicalBlock(scope: !572, file: !3, line: 90, column: 39)
!572 = distinct !DILexicalBlock(scope: !561, file: !3, line: 90, column: 5)
!573 = !DILocation(line: 91, column: 16, scope: !571)
!574 = !DILocation(line: 96, column: 5, scope: !551)
!575 = !DILocation(line: 99, column: 5, scope: !551)
!576 = !DILocation(line: 104, column: 5, scope: !551)
!577 = !DILocation(line: 105, column: 9, scope: !578)
!578 = distinct !DILexicalBlock(scope: !551, file: !3, line: 104, column: 8)
!579 = !DILocation(line: 107, column: 17, scope: !580)
!580 = distinct !DILexicalBlock(scope: !578, file: !3, line: 107, column: 13)
!581 = !DILocation(line: 107, column: 13, scope: !578)
!582 = !DILocation(line: 106, column: 13, scope: !578)
!583 = !DILocation(line: 109, column: 9, scope: !578)
!584 = !DILocation(line: 111, column: 5, scope: !578)
!585 = distinct !{!585, !576, !586, !129}
!586 = !DILocation(line: 111, column: 17, scope: !551)
!587 = !DILocation(line: 0, scope: !563)
!588 = !DILocation(line: 115, column: 19, scope: !589)
!589 = distinct !DILexicalBlock(scope: !563, file: !3, line: 114, column: 5)
!590 = !DILocation(line: 115, column: 17, scope: !589)
!591 = !DILocation(line: 115, column: 9, scope: !589)
!592 = !DILocation(line: 116, column: 1, scope: !551)
!593 = distinct !DISubprogram(name: "gf2_matrix_times", scope: !3, file: !3, line: 61, type: !594, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !596)
!594 = !DISubroutineType(types: !595)
!595 = !{!23, !554, !23}
!596 = !{!597, !598, !599}
!597 = !DILocalVariable(name: "mat", arg: 1, scope: !593, file: !3, line: 61, type: !554)
!598 = !DILocalVariable(name: "vec", arg: 2, scope: !593, file: !3, line: 61, type: !23)
!599 = !DILocalVariable(name: "sum", scope: !593, file: !3, line: 62, type: !23)
!600 = !DILocation(line: 0, scope: !593)
!601 = !DILocation(line: 63, column: 5, scope: !593)
!602 = !DILocation(line: 64, column: 17, scope: !603)
!603 = distinct !DILexicalBlock(scope: !604, file: !3, line: 64, column: 13)
!604 = distinct !DILexicalBlock(scope: !593, file: !3, line: 63, column: 17)
!605 = !DILocation(line: 64, column: 13, scope: !604)
!606 = !DILocation(line: 65, column: 20, scope: !603)
!607 = !DILocation(line: 65, column: 17, scope: !603)
!608 = !DILocation(line: 65, column: 13, scope: !603)
!609 = !DILocation(line: 66, column: 13, scope: !604)
!610 = !DILocation(line: 67, column: 12, scope: !604)
!611 = distinct !{!611, !601, !612, !129}
!612 = !DILocation(line: 68, column: 5, scope: !593)
!613 = !DILocation(line: 69, column: 5, scope: !593)
!614 = distinct !DISubprogram(name: "gf2_matrix_square", scope: !3, file: !3, line: 74, type: !615, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !617)
!615 = !DISubroutineType(types: !616)
!616 = !{null, !554, !554}
!617 = !{!618, !619, !620}
!618 = !DILocalVariable(name: "square", arg: 1, scope: !614, file: !3, line: 74, type: !554)
!619 = !DILocalVariable(name: "mat", arg: 2, scope: !614, file: !3, line: 74, type: !554)
!620 = !DILocalVariable(name: "n", scope: !621, file: !3, line: 75, type: !25)
!621 = distinct !DILexicalBlock(scope: !614, file: !3, line: 75, column: 5)
!622 = !DILocation(line: 0, scope: !614)
!623 = !DILocation(line: 0, scope: !621)
!624 = !DILocation(line: 75, column: 5, scope: !621)
!625 = !DILocation(line: 77, column: 1, scope: !614)
!626 = !DILocation(line: 76, column: 43, scope: !627)
!627 = distinct !DILexicalBlock(scope: !621, file: !3, line: 75, column: 5)
!628 = !DILocation(line: 76, column: 21, scope: !627)
!629 = !DILocation(line: 76, column: 9, scope: !627)
!630 = !DILocation(line: 76, column: 19, scope: !627)
!631 = !DILocation(line: 75, column: 35, scope: !627)
!632 = !DILocation(line: 75, column: 28, scope: !627)
!633 = distinct !{!633, !624, !634, !129}
!634 = !DILocation(line: 76, column: 49, scope: !621)
