; ModuleID = 'crypto/md4/md4_dgst.c'
source_filename = "crypto/md4/md4_dgst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MD4state_st = type { i32, i32, i32, i32, i32, i32, [16 x i32], i32 }

; Function Attrs: noinline nounwind uwtable
define i32 @MD4_Update(%struct.MD4state_st* noundef %c, i8* noundef %data_, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %len, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %Nl = getelementptr inbounds %struct.MD4state_st, %struct.MD4state_st* %c, i64 0, i32 4
  %0 = load i32, i32* %Nl, align 4, !tbaa !4
  %conv = trunc i64 %len to i32
  %shl = shl i32 %conv, 3
  %add = add i32 %0, %shl
  %cmp4 = icmp ult i32 %add, %0
  %Nh = getelementptr inbounds %struct.MD4state_st, %struct.MD4state_st* %c, i64 0, i32 5
  %1 = load i32, i32* %Nh, align 4, !tbaa !9
  %inc = zext i1 %cmp4 to i32
  %2 = add i32 %1, %inc
  %shr = lshr i64 %len, 29
  %conv8 = trunc i64 %shr to i32
  %Nh9 = getelementptr inbounds %struct.MD4state_st, %struct.MD4state_st* %c, i64 0, i32 5
  %add10 = add i32 %2, %conv8
  store i32 %add10, i32* %Nh9, align 4, !tbaa !9
  store i32 %add, i32* %Nl, align 4, !tbaa !4
  %num = getelementptr inbounds %struct.MD4state_st, %struct.MD4state_st* %c, i64 0, i32 7
  %3 = load i32, i32* %num, align 4, !tbaa !10
  %conv12 = zext i32 %3 to i64
  %cmp13.not = icmp eq i32 %3, 0
  br i1 %cmp13.not, label %if.end34, label %if.then15

if.then15:                                        ; preds = %if.end
  %arraydecay = getelementptr inbounds %struct.MD4state_st, %struct.MD4state_st* %c, i64 0, i32 6, i64 0
  %4 = bitcast i32* %arraydecay to i8*
  %cmp17 = icmp ugt i64 %len, 63
  %add19 = add i64 %conv12, %len
  %cmp20 = icmp ugt i64 %add19, 63
  %or.cond = select i1 %cmp17, i1 true, i1 %cmp20
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %conv12
  br i1 %or.cond, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.then15
  %sub = sub nsw i64 64, %conv12
  %call = tail call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef %data_, i64 noundef %sub) #5
  tail call void @md4_block_data_order(%struct.MD4state_st* noundef nonnull %c, i8* noundef nonnull %4, i64 noundef 1) #6
  %add.ptr24 = getelementptr inbounds i8, i8* %data_, i64 %sub
  %sub25 = sub i64 %len, %sub
  store i32 0, i32* %num, align 4, !tbaa !10
  %call27 = tail call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i64 noundef 64) #5
  br label %if.end34

if.else:                                          ; preds = %if.then15
  %call29 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef %data_, i64 noundef %len) #5
  %5 = load i32, i32* %num, align 4, !tbaa !10
  %add32 = add i32 %5, %conv
  store i32 %add32, i32* %num, align 4, !tbaa !10
  br label %cleanup

if.end34:                                         ; preds = %if.then22, %if.end
  %len.addr.0 = phi i64 [ %sub25, %if.then22 ], [ %len, %if.end ]
  %data.0 = phi i8* [ %add.ptr24, %if.then22 ], [ %data_, %if.end ]
  %cmp35.not = icmp ult i64 %len.addr.0, 64
  br i1 %cmp35.not, label %if.end40, label %if.then37

if.then37:                                        ; preds = %if.end34
  %div = lshr i64 %len.addr.0, 6
  tail call void @md4_block_data_order(%struct.MD4state_st* noundef nonnull %c, i8* noundef %data.0, i64 noundef %div) #6
  %mul = and i64 %len.addr.0, -64
  %add.ptr38 = getelementptr inbounds i8, i8* %data.0, i64 %mul
  %sub39 = and i64 %len.addr.0, 63
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end34
  %len.addr.1 = phi i64 [ %sub39, %if.then37 ], [ %len.addr.0, %if.end34 ]
  %data.1 = phi i8* [ %add.ptr38, %if.then37 ], [ %data.0, %if.end34 ]
  %cmp41.not = icmp eq i64 %len.addr.1, 0
  br i1 %cmp41.not, label %cleanup, label %if.then43

if.then43:                                        ; preds = %if.end40
  %arraydecay45 = getelementptr inbounds %struct.MD4state_st, %struct.MD4state_st* %c, i64 0, i32 6, i64 0
  %6 = bitcast i32* %arraydecay45 to i8*
  %conv46 = trunc i64 %len.addr.1 to i32
  store i32 %conv46, i32* %num, align 4, !tbaa !10
  %call48 = tail call i8* @memcpy(i8* noundef nonnull %6, i8* noundef %data.1, i64 noundef %len.addr.1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then43, %entry, %if.else
  ret i32 1
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nosync nounwind uwtable
define void @md4_block_data_order(%struct.MD4state_st* nocapture noundef %c, i8* noundef readonly %data_, i64 noundef %num) local_unnamed_addr #2 {
entry:
  %A1 = getelementptr inbounds %struct.MD4state_st, %struct.MD4state_st* %c, i64 0, i32 0
  %B2 = getelementptr inbounds %struct.MD4state_st, %struct.MD4state_st* %c, i64 0, i32 1
  %C3 = getelementptr inbounds %struct.MD4state_st, %struct.MD4state_st* %c, i64 0, i32 2
  %D4 = getelementptr inbounds %struct.MD4state_st, %struct.MD4state_st* %c, i64 0, i32 3
  %tobool.not1505 = icmp eq i64 %num, 0
  br i1 %tobool.not1505, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %0 = load i32, i32* %D4, align 4, !tbaa !11
  %1 = load i32, i32* %C3, align 4, !tbaa !12
  %2 = load i32, i32* %B2, align 4, !tbaa !13
  %3 = load i32, i32* %A1, align 4, !tbaa !14
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %num.addr.01511 = phi i64 [ %dec, %for.body ], [ %num, %for.body.preheader ]
  %data.01510 = phi i8* [ %incdec.ptr467, %for.body ], [ %data_, %for.body.preheader ]
  %A.01509 = phi i32 [ %add958, %for.body ], [ %3, %for.body.preheader ]
  %B.01508 = phi i32 [ %add960, %for.body ], [ %2, %for.body.preheader ]
  %C.01507 = phi i32 [ %add962, %for.body ], [ %1, %for.body.preheader ]
  %D.01506 = phi i32 [ %add964, %for.body ], [ %0, %for.body.preheader ]
  %dec = add i64 %num.addr.01511, -1
  %incdec.ptr = getelementptr inbounds i8, i8* %data.01510, i64 1
  %4 = load i8, i8* %data.01510, align 1, !tbaa !15
  %incdec.ptr6 = getelementptr inbounds i8, i8* %data.01510, i64 2
  %5 = load i8, i8* %incdec.ptr, align 1, !tbaa !15
  %conv7 = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %conv7, 8
  %conv8 = zext i8 %4 to i32
  %or = or i32 %shl, %conv8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %data.01510, i64 3
  %6 = load i8, i8* %incdec.ptr6, align 1, !tbaa !15
  %conv11 = zext i8 %6 to i32
  %shl12 = shl nuw nsw i32 %conv11, 16
  %or14 = or i32 %or, %shl12
  %incdec.ptr16 = getelementptr inbounds i8, i8* %data.01510, i64 4
  %7 = load i8, i8* %incdec.ptr10, align 1, !tbaa !15
  %conv17 = zext i8 %7 to i32
  %shl18 = shl nuw i32 %conv17, 24
  %or20 = or i32 %or14, %shl18
  %incdec.ptr22 = getelementptr inbounds i8, i8* %data.01510, i64 5
  %8 = load i8, i8* %incdec.ptr16, align 1, !tbaa !15
  %incdec.ptr25 = getelementptr inbounds i8, i8* %data.01510, i64 6
  %9 = load i8, i8* %incdec.ptr22, align 1, !tbaa !15
  %conv26 = zext i8 %9 to i32
  %shl27 = shl nuw nsw i32 %conv26, 8
  %conv28 = zext i8 %8 to i32
  %or29 = or i32 %shl27, %conv28
  %incdec.ptr31 = getelementptr inbounds i8, i8* %data.01510, i64 7
  %10 = load i8, i8* %incdec.ptr25, align 1, !tbaa !15
  %conv32 = zext i8 %10 to i32
  %shl33 = shl nuw nsw i32 %conv32, 16
  %or35 = or i32 %or29, %shl33
  %incdec.ptr37 = getelementptr inbounds i8, i8* %data.01510, i64 8
  %11 = load i8, i8* %incdec.ptr31, align 1, !tbaa !15
  %conv38 = zext i8 %11 to i32
  %shl39 = shl nuw i32 %conv38, 24
  %or41 = or i32 %or35, %shl39
  %xor = xor i32 %C.01507, %D.01506
  %and = and i32 %xor, %B.01508
  %xor43 = xor i32 %and, %D.01506
  %add44 = add i32 %xor43, %A.01509
  %add45 = add i32 %add44, %or20
  %or48 = tail call i32 @llvm.fshl.i32(i32 %add45, i32 %add45, i32 3)
  %incdec.ptr49 = getelementptr inbounds i8, i8* %data.01510, i64 9
  %12 = load i8, i8* %incdec.ptr37, align 1, !tbaa !15
  %incdec.ptr52 = getelementptr inbounds i8, i8* %data.01510, i64 10
  %13 = load i8, i8* %incdec.ptr49, align 1, !tbaa !15
  %conv53 = zext i8 %13 to i32
  %shl54 = shl nuw nsw i32 %conv53, 8
  %conv55 = zext i8 %12 to i32
  %or56 = or i32 %shl54, %conv55
  %incdec.ptr58 = getelementptr inbounds i8, i8* %data.01510, i64 11
  %14 = load i8, i8* %incdec.ptr52, align 1, !tbaa !15
  %conv59 = zext i8 %14 to i32
  %shl60 = shl nuw nsw i32 %conv59, 16
  %or62 = or i32 %or56, %shl60
  %incdec.ptr64 = getelementptr inbounds i8, i8* %data.01510, i64 12
  %15 = load i8, i8* %incdec.ptr58, align 1, !tbaa !15
  %conv65 = zext i8 %15 to i32
  %shl66 = shl nuw i32 %conv65, 24
  %or68 = or i32 %or62, %shl66
  %xor71 = xor i32 %B.01508, %C.01507
  %and72 = and i32 %or48, %xor71
  %xor73 = xor i32 %and72, %C.01507
  %add74 = add i32 %or41, %D.01506
  %add75 = add i32 %add74, %xor73
  %or79 = tail call i32 @llvm.fshl.i32(i32 %add75, i32 %add75, i32 7)
  %incdec.ptr80 = getelementptr inbounds i8, i8* %data.01510, i64 13
  %16 = load i8, i8* %incdec.ptr64, align 1, !tbaa !15
  %incdec.ptr83 = getelementptr inbounds i8, i8* %data.01510, i64 14
  %17 = load i8, i8* %incdec.ptr80, align 1, !tbaa !15
  %conv84 = zext i8 %17 to i32
  %shl85 = shl nuw nsw i32 %conv84, 8
  %conv86 = zext i8 %16 to i32
  %or87 = or i32 %shl85, %conv86
  %incdec.ptr89 = getelementptr inbounds i8, i8* %data.01510, i64 15
  %18 = load i8, i8* %incdec.ptr83, align 1, !tbaa !15
  %conv90 = zext i8 %18 to i32
  %shl91 = shl nuw nsw i32 %conv90, 16
  %or93 = or i32 %or87, %shl91
  %incdec.ptr95 = getelementptr inbounds i8, i8* %data.01510, i64 16
  %19 = load i8, i8* %incdec.ptr89, align 1, !tbaa !15
  %conv96 = zext i8 %19 to i32
  %shl97 = shl nuw i32 %conv96, 24
  %or99 = or i32 %or93, %shl97
  %xor102 = xor i32 %or48, %B.01508
  %and103 = and i32 %or79, %xor102
  %xor104 = xor i32 %and103, %B.01508
  %add105 = add i32 %or68, %C.01507
  %add106 = add i32 %add105, %xor104
  %or110 = tail call i32 @llvm.fshl.i32(i32 %add106, i32 %add106, i32 11)
  %incdec.ptr111 = getelementptr inbounds i8, i8* %data.01510, i64 17
  %20 = load i8, i8* %incdec.ptr95, align 1, !tbaa !15
  %incdec.ptr114 = getelementptr inbounds i8, i8* %data.01510, i64 18
  %21 = load i8, i8* %incdec.ptr111, align 1, !tbaa !15
  %conv115 = zext i8 %21 to i32
  %shl116 = shl nuw nsw i32 %conv115, 8
  %conv117 = zext i8 %20 to i32
  %or118 = or i32 %shl116, %conv117
  %incdec.ptr120 = getelementptr inbounds i8, i8* %data.01510, i64 19
  %22 = load i8, i8* %incdec.ptr114, align 1, !tbaa !15
  %conv121 = zext i8 %22 to i32
  %shl122 = shl nuw nsw i32 %conv121, 16
  %or124 = or i32 %or118, %shl122
  %incdec.ptr126 = getelementptr inbounds i8, i8* %data.01510, i64 20
  %23 = load i8, i8* %incdec.ptr120, align 1, !tbaa !15
  %conv127 = zext i8 %23 to i32
  %shl128 = shl nuw i32 %conv127, 24
  %or130 = or i32 %or124, %shl128
  %xor133 = xor i32 %or79, %or48
  %and134 = and i32 %or110, %xor133
  %xor135 = xor i32 %and134, %or48
  %add136 = add i32 %or99, %B.01508
  %add137 = add i32 %add136, %xor135
  %or141 = tail call i32 @llvm.fshl.i32(i32 %add137, i32 %add137, i32 19)
  %incdec.ptr142 = getelementptr inbounds i8, i8* %data.01510, i64 21
  %24 = load i8, i8* %incdec.ptr126, align 1, !tbaa !15
  %incdec.ptr145 = getelementptr inbounds i8, i8* %data.01510, i64 22
  %25 = load i8, i8* %incdec.ptr142, align 1, !tbaa !15
  %conv146 = zext i8 %25 to i32
  %shl147 = shl nuw nsw i32 %conv146, 8
  %conv148 = zext i8 %24 to i32
  %or149 = or i32 %shl147, %conv148
  %incdec.ptr151 = getelementptr inbounds i8, i8* %data.01510, i64 23
  %26 = load i8, i8* %incdec.ptr145, align 1, !tbaa !15
  %conv152 = zext i8 %26 to i32
  %shl153 = shl nuw nsw i32 %conv152, 16
  %or155 = or i32 %or149, %shl153
  %incdec.ptr157 = getelementptr inbounds i8, i8* %data.01510, i64 24
  %27 = load i8, i8* %incdec.ptr151, align 1, !tbaa !15
  %conv158 = zext i8 %27 to i32
  %shl159 = shl nuw i32 %conv158, 24
  %or161 = or i32 %or155, %shl159
  %xor164 = xor i32 %or110, %or79
  %and165 = and i32 %or141, %xor164
  %xor166 = xor i32 %and165, %or79
  %add167 = add i32 %or130, %or48
  %add168 = add i32 %add167, %xor166
  %or172 = tail call i32 @llvm.fshl.i32(i32 %add168, i32 %add168, i32 3)
  %incdec.ptr173 = getelementptr inbounds i8, i8* %data.01510, i64 25
  %28 = load i8, i8* %incdec.ptr157, align 1, !tbaa !15
  %incdec.ptr176 = getelementptr inbounds i8, i8* %data.01510, i64 26
  %29 = load i8, i8* %incdec.ptr173, align 1, !tbaa !15
  %conv177 = zext i8 %29 to i32
  %shl178 = shl nuw nsw i32 %conv177, 8
  %conv179 = zext i8 %28 to i32
  %or180 = or i32 %shl178, %conv179
  %incdec.ptr182 = getelementptr inbounds i8, i8* %data.01510, i64 27
  %30 = load i8, i8* %incdec.ptr176, align 1, !tbaa !15
  %conv183 = zext i8 %30 to i32
  %shl184 = shl nuw nsw i32 %conv183, 16
  %or186 = or i32 %or180, %shl184
  %incdec.ptr188 = getelementptr inbounds i8, i8* %data.01510, i64 28
  %31 = load i8, i8* %incdec.ptr182, align 1, !tbaa !15
  %conv189 = zext i8 %31 to i32
  %shl190 = shl nuw i32 %conv189, 24
  %or192 = or i32 %or186, %shl190
  %xor195 = xor i32 %or141, %or110
  %and196 = and i32 %or172, %xor195
  %xor197 = xor i32 %and196, %or110
  %add198 = add i32 %or161, %or79
  %add199 = add i32 %add198, %xor197
  %or203 = tail call i32 @llvm.fshl.i32(i32 %add199, i32 %add199, i32 7)
  %incdec.ptr204 = getelementptr inbounds i8, i8* %data.01510, i64 29
  %32 = load i8, i8* %incdec.ptr188, align 1, !tbaa !15
  %incdec.ptr207 = getelementptr inbounds i8, i8* %data.01510, i64 30
  %33 = load i8, i8* %incdec.ptr204, align 1, !tbaa !15
  %conv208 = zext i8 %33 to i32
  %shl209 = shl nuw nsw i32 %conv208, 8
  %conv210 = zext i8 %32 to i32
  %or211 = or i32 %shl209, %conv210
  %incdec.ptr213 = getelementptr inbounds i8, i8* %data.01510, i64 31
  %34 = load i8, i8* %incdec.ptr207, align 1, !tbaa !15
  %conv214 = zext i8 %34 to i32
  %shl215 = shl nuw nsw i32 %conv214, 16
  %or217 = or i32 %or211, %shl215
  %incdec.ptr219 = getelementptr inbounds i8, i8* %data.01510, i64 32
  %35 = load i8, i8* %incdec.ptr213, align 1, !tbaa !15
  %conv220 = zext i8 %35 to i32
  %shl221 = shl nuw i32 %conv220, 24
  %or223 = or i32 %or217, %shl221
  %xor226 = xor i32 %or172, %or141
  %and227 = and i32 %or203, %xor226
  %xor228 = xor i32 %and227, %or141
  %add229 = add i32 %or192, %or110
  %add230 = add i32 %add229, %xor228
  %or234 = tail call i32 @llvm.fshl.i32(i32 %add230, i32 %add230, i32 11)
  %incdec.ptr235 = getelementptr inbounds i8, i8* %data.01510, i64 33
  %36 = load i8, i8* %incdec.ptr219, align 1, !tbaa !15
  %incdec.ptr238 = getelementptr inbounds i8, i8* %data.01510, i64 34
  %37 = load i8, i8* %incdec.ptr235, align 1, !tbaa !15
  %conv239 = zext i8 %37 to i32
  %shl240 = shl nuw nsw i32 %conv239, 8
  %conv241 = zext i8 %36 to i32
  %or242 = or i32 %shl240, %conv241
  %incdec.ptr244 = getelementptr inbounds i8, i8* %data.01510, i64 35
  %38 = load i8, i8* %incdec.ptr238, align 1, !tbaa !15
  %conv245 = zext i8 %38 to i32
  %shl246 = shl nuw nsw i32 %conv245, 16
  %or248 = or i32 %or242, %shl246
  %incdec.ptr250 = getelementptr inbounds i8, i8* %data.01510, i64 36
  %39 = load i8, i8* %incdec.ptr244, align 1, !tbaa !15
  %conv251 = zext i8 %39 to i32
  %shl252 = shl nuw i32 %conv251, 24
  %or254 = or i32 %or248, %shl252
  %xor257 = xor i32 %or203, %or172
  %and258 = and i32 %or234, %xor257
  %xor259 = xor i32 %and258, %or172
  %add260 = add i32 %or223, %or141
  %add261 = add i32 %add260, %xor259
  %or265 = tail call i32 @llvm.fshl.i32(i32 %add261, i32 %add261, i32 19)
  %incdec.ptr266 = getelementptr inbounds i8, i8* %data.01510, i64 37
  %40 = load i8, i8* %incdec.ptr250, align 1, !tbaa !15
  %incdec.ptr269 = getelementptr inbounds i8, i8* %data.01510, i64 38
  %41 = load i8, i8* %incdec.ptr266, align 1, !tbaa !15
  %conv270 = zext i8 %41 to i32
  %shl271 = shl nuw nsw i32 %conv270, 8
  %conv272 = zext i8 %40 to i32
  %or273 = or i32 %shl271, %conv272
  %incdec.ptr275 = getelementptr inbounds i8, i8* %data.01510, i64 39
  %42 = load i8, i8* %incdec.ptr269, align 1, !tbaa !15
  %conv276 = zext i8 %42 to i32
  %shl277 = shl nuw nsw i32 %conv276, 16
  %or279 = or i32 %or273, %shl277
  %incdec.ptr281 = getelementptr inbounds i8, i8* %data.01510, i64 40
  %43 = load i8, i8* %incdec.ptr275, align 1, !tbaa !15
  %conv282 = zext i8 %43 to i32
  %shl283 = shl nuw i32 %conv282, 24
  %or285 = or i32 %or279, %shl283
  %xor288 = xor i32 %or234, %or203
  %and289 = and i32 %or265, %xor288
  %xor290 = xor i32 %and289, %or203
  %add291 = add i32 %or254, %or172
  %add292 = add i32 %add291, %xor290
  %or296 = tail call i32 @llvm.fshl.i32(i32 %add292, i32 %add292, i32 3)
  %incdec.ptr297 = getelementptr inbounds i8, i8* %data.01510, i64 41
  %44 = load i8, i8* %incdec.ptr281, align 1, !tbaa !15
  %incdec.ptr300 = getelementptr inbounds i8, i8* %data.01510, i64 42
  %45 = load i8, i8* %incdec.ptr297, align 1, !tbaa !15
  %conv301 = zext i8 %45 to i32
  %shl302 = shl nuw nsw i32 %conv301, 8
  %conv303 = zext i8 %44 to i32
  %or304 = or i32 %shl302, %conv303
  %incdec.ptr306 = getelementptr inbounds i8, i8* %data.01510, i64 43
  %46 = load i8, i8* %incdec.ptr300, align 1, !tbaa !15
  %conv307 = zext i8 %46 to i32
  %shl308 = shl nuw nsw i32 %conv307, 16
  %or310 = or i32 %or304, %shl308
  %incdec.ptr312 = getelementptr inbounds i8, i8* %data.01510, i64 44
  %47 = load i8, i8* %incdec.ptr306, align 1, !tbaa !15
  %conv313 = zext i8 %47 to i32
  %shl314 = shl nuw i32 %conv313, 24
  %or316 = or i32 %or310, %shl314
  %xor319 = xor i32 %or265, %or234
  %and320 = and i32 %or296, %xor319
  %xor321 = xor i32 %and320, %or234
  %add322 = add i32 %or285, %or203
  %add323 = add i32 %add322, %xor321
  %or327 = tail call i32 @llvm.fshl.i32(i32 %add323, i32 %add323, i32 7)
  %incdec.ptr328 = getelementptr inbounds i8, i8* %data.01510, i64 45
  %48 = load i8, i8* %incdec.ptr312, align 1, !tbaa !15
  %incdec.ptr331 = getelementptr inbounds i8, i8* %data.01510, i64 46
  %49 = load i8, i8* %incdec.ptr328, align 1, !tbaa !15
  %conv332 = zext i8 %49 to i32
  %shl333 = shl nuw nsw i32 %conv332, 8
  %conv334 = zext i8 %48 to i32
  %or335 = or i32 %shl333, %conv334
  %incdec.ptr337 = getelementptr inbounds i8, i8* %data.01510, i64 47
  %50 = load i8, i8* %incdec.ptr331, align 1, !tbaa !15
  %conv338 = zext i8 %50 to i32
  %shl339 = shl nuw nsw i32 %conv338, 16
  %or341 = or i32 %or335, %shl339
  %incdec.ptr343 = getelementptr inbounds i8, i8* %data.01510, i64 48
  %51 = load i8, i8* %incdec.ptr337, align 1, !tbaa !15
  %conv344 = zext i8 %51 to i32
  %shl345 = shl nuw i32 %conv344, 24
  %or347 = or i32 %or341, %shl345
  %xor350 = xor i32 %or296, %or265
  %and351 = and i32 %or327, %xor350
  %xor352 = xor i32 %and351, %or265
  %add353 = add i32 %or316, %or234
  %add354 = add i32 %add353, %xor352
  %or358 = tail call i32 @llvm.fshl.i32(i32 %add354, i32 %add354, i32 11)
  %incdec.ptr359 = getelementptr inbounds i8, i8* %data.01510, i64 49
  %52 = load i8, i8* %incdec.ptr343, align 1, !tbaa !15
  %incdec.ptr362 = getelementptr inbounds i8, i8* %data.01510, i64 50
  %53 = load i8, i8* %incdec.ptr359, align 1, !tbaa !15
  %conv363 = zext i8 %53 to i32
  %shl364 = shl nuw nsw i32 %conv363, 8
  %conv365 = zext i8 %52 to i32
  %or366 = or i32 %shl364, %conv365
  %incdec.ptr368 = getelementptr inbounds i8, i8* %data.01510, i64 51
  %54 = load i8, i8* %incdec.ptr362, align 1, !tbaa !15
  %conv369 = zext i8 %54 to i32
  %shl370 = shl nuw nsw i32 %conv369, 16
  %or372 = or i32 %or366, %shl370
  %incdec.ptr374 = getelementptr inbounds i8, i8* %data.01510, i64 52
  %55 = load i8, i8* %incdec.ptr368, align 1, !tbaa !15
  %conv375 = zext i8 %55 to i32
  %shl376 = shl nuw i32 %conv375, 24
  %or378 = or i32 %or372, %shl376
  %xor381 = xor i32 %or327, %or296
  %and382 = and i32 %or358, %xor381
  %xor383 = xor i32 %and382, %or296
  %add384 = add i32 %or347, %or265
  %add385 = add i32 %add384, %xor383
  %or389 = tail call i32 @llvm.fshl.i32(i32 %add385, i32 %add385, i32 19)
  %incdec.ptr390 = getelementptr inbounds i8, i8* %data.01510, i64 53
  %56 = load i8, i8* %incdec.ptr374, align 1, !tbaa !15
  %incdec.ptr393 = getelementptr inbounds i8, i8* %data.01510, i64 54
  %57 = load i8, i8* %incdec.ptr390, align 1, !tbaa !15
  %conv394 = zext i8 %57 to i32
  %shl395 = shl nuw nsw i32 %conv394, 8
  %conv396 = zext i8 %56 to i32
  %or397 = or i32 %shl395, %conv396
  %incdec.ptr399 = getelementptr inbounds i8, i8* %data.01510, i64 55
  %58 = load i8, i8* %incdec.ptr393, align 1, !tbaa !15
  %conv400 = zext i8 %58 to i32
  %shl401 = shl nuw nsw i32 %conv400, 16
  %or403 = or i32 %or397, %shl401
  %incdec.ptr405 = getelementptr inbounds i8, i8* %data.01510, i64 56
  %59 = load i8, i8* %incdec.ptr399, align 1, !tbaa !15
  %conv406 = zext i8 %59 to i32
  %shl407 = shl nuw i32 %conv406, 24
  %or409 = or i32 %or403, %shl407
  %xor412 = xor i32 %or358, %or327
  %and413 = and i32 %or389, %xor412
  %xor414 = xor i32 %and413, %or327
  %add415 = add i32 %or378, %or296
  %add416 = add i32 %add415, %xor414
  %or420 = tail call i32 @llvm.fshl.i32(i32 %add416, i32 %add416, i32 3)
  %incdec.ptr421 = getelementptr inbounds i8, i8* %data.01510, i64 57
  %60 = load i8, i8* %incdec.ptr405, align 1, !tbaa !15
  %incdec.ptr424 = getelementptr inbounds i8, i8* %data.01510, i64 58
  %61 = load i8, i8* %incdec.ptr421, align 1, !tbaa !15
  %conv425 = zext i8 %61 to i32
  %shl426 = shl nuw nsw i32 %conv425, 8
  %conv427 = zext i8 %60 to i32
  %or428 = or i32 %shl426, %conv427
  %incdec.ptr430 = getelementptr inbounds i8, i8* %data.01510, i64 59
  %62 = load i8, i8* %incdec.ptr424, align 1, !tbaa !15
  %conv431 = zext i8 %62 to i32
  %shl432 = shl nuw nsw i32 %conv431, 16
  %or434 = or i32 %or428, %shl432
  %incdec.ptr436 = getelementptr inbounds i8, i8* %data.01510, i64 60
  %63 = load i8, i8* %incdec.ptr430, align 1, !tbaa !15
  %conv437 = zext i8 %63 to i32
  %shl438 = shl nuw i32 %conv437, 24
  %or440 = or i32 %or434, %shl438
  %xor443 = xor i32 %or389, %or358
  %and444 = and i32 %or420, %xor443
  %xor445 = xor i32 %and444, %or358
  %add446 = add i32 %or409, %or327
  %add447 = add i32 %add446, %xor445
  %or451 = tail call i32 @llvm.fshl.i32(i32 %add447, i32 %add447, i32 7)
  %incdec.ptr452 = getelementptr inbounds i8, i8* %data.01510, i64 61
  %64 = load i8, i8* %incdec.ptr436, align 1, !tbaa !15
  %incdec.ptr455 = getelementptr inbounds i8, i8* %data.01510, i64 62
  %65 = load i8, i8* %incdec.ptr452, align 1, !tbaa !15
  %conv456 = zext i8 %65 to i32
  %shl457 = shl nuw nsw i32 %conv456, 8
  %conv458 = zext i8 %64 to i32
  %or459 = or i32 %shl457, %conv458
  %incdec.ptr461 = getelementptr inbounds i8, i8* %data.01510, i64 63
  %66 = load i8, i8* %incdec.ptr455, align 1, !tbaa !15
  %conv462 = zext i8 %66 to i32
  %shl463 = shl nuw nsw i32 %conv462, 16
  %or465 = or i32 %or459, %shl463
  %incdec.ptr467 = getelementptr inbounds i8, i8* %data.01510, i64 64
  %67 = load i8, i8* %incdec.ptr461, align 1, !tbaa !15
  %conv468 = zext i8 %67 to i32
  %shl469 = shl nuw i32 %conv468, 24
  %or471 = or i32 %or465, %shl469
  %xor474 = xor i32 %or420, %or389
  %and475 = and i32 %or451, %xor474
  %xor476 = xor i32 %and475, %or389
  %add477 = add i32 %or440, %or358
  %add478 = add i32 %add477, %xor476
  %or482 = tail call i32 @llvm.fshl.i32(i32 %add478, i32 %add478, i32 11)
  %xor484 = xor i32 %or451, %or420
  %and485 = and i32 %or482, %xor484
  %xor486 = xor i32 %and485, %or420
  %add487 = add i32 %or471, %or389
  %add488 = add i32 %add487, %xor486
  %or492 = tail call i32 @llvm.fshl.i32(i32 %add488, i32 %add488, i32 19)
  %add494 = add i32 %or20, 1518500249
  %and495 = and i32 %or492, %or482
  %and4961512 = or i32 %or492, %or482
  %or497 = and i32 %and4961512, %or451
  %or499 = or i32 %or497, %and495
  %add501 = add i32 %add494, %or420
  %add503 = add i32 %add501, %or499
  %or508 = tail call i32 @llvm.fshl.i32(i32 %add503, i32 %add503, i32 3)
  %add510 = add i32 %or130, 1518500249
  %and511 = and i32 %or508, %or492
  %and512 = and i32 %or508, %or482
  %or513 = or i32 %and512, %and495
  %or515 = or i32 %or513, %and511
  %add517 = add i32 %add510, %or451
  %add519 = add i32 %add517, %or515
  %or524 = tail call i32 @llvm.fshl.i32(i32 %add519, i32 %add519, i32 5)
  %add526 = add i32 %or254, 1518500249
  %and527 = and i32 %or524, %or508
  %and528 = and i32 %or524, %or492
  %or529 = or i32 %and528, %and511
  %or531 = or i32 %or529, %and527
  %add533 = add i32 %add526, %or482
  %add535 = add i32 %add533, %or531
  %or540 = tail call i32 @llvm.fshl.i32(i32 %add535, i32 %add535, i32 9)
  %add542 = add i32 %or378, 1518500249
  %and543 = and i32 %or540, %or524
  %and544 = and i32 %or540, %or508
  %or545 = or i32 %and544, %and527
  %or547 = or i32 %or545, %and543
  %add549 = add i32 %add542, %or492
  %add551 = add i32 %add549, %or547
  %or556 = tail call i32 @llvm.fshl.i32(i32 %add551, i32 %add551, i32 13)
  %add558 = add i32 %or41, 1518500249
  %and559 = and i32 %or556, %or540
  %and560 = and i32 %or556, %or524
  %or561 = or i32 %and560, %and543
  %or563 = or i32 %or561, %and559
  %add565 = add i32 %add558, %or508
  %add567 = add i32 %add565, %or563
  %or572 = tail call i32 @llvm.fshl.i32(i32 %add567, i32 %add567, i32 3)
  %add574 = add i32 %or161, 1518500249
  %and575 = and i32 %or572, %or556
  %and576 = and i32 %or572, %or540
  %or577 = or i32 %and576, %and559
  %or579 = or i32 %or577, %and575
  %add581 = add i32 %add574, %or524
  %add583 = add i32 %add581, %or579
  %or588 = tail call i32 @llvm.fshl.i32(i32 %add583, i32 %add583, i32 5)
  %add590 = add i32 %or285, 1518500249
  %and591 = and i32 %or588, %or572
  %and592 = and i32 %or588, %or556
  %or593 = or i32 %and592, %and575
  %or595 = or i32 %or593, %and591
  %add597 = add i32 %add590, %or540
  %add599 = add i32 %add597, %or595
  %or604 = tail call i32 @llvm.fshl.i32(i32 %add599, i32 %add599, i32 9)
  %add606 = add i32 %or409, 1518500249
  %and607 = and i32 %or604, %or588
  %and608 = and i32 %or604, %or572
  %or609 = or i32 %and608, %and591
  %or611 = or i32 %or609, %and607
  %add613 = add i32 %add606, %or556
  %add615 = add i32 %add613, %or611
  %or620 = tail call i32 @llvm.fshl.i32(i32 %add615, i32 %add615, i32 13)
  %add622 = add i32 %or68, 1518500249
  %and623 = and i32 %or620, %or604
  %and624 = and i32 %or620, %or588
  %or625 = or i32 %and624, %and607
  %or627 = or i32 %or625, %and623
  %add629 = add i32 %add622, %or572
  %add631 = add i32 %add629, %or627
  %or636 = tail call i32 @llvm.fshl.i32(i32 %add631, i32 %add631, i32 3)
  %add638 = add i32 %or192, 1518500249
  %and639 = and i32 %or636, %or620
  %and640 = and i32 %or636, %or604
  %or641 = or i32 %and640, %and623
  %or643 = or i32 %or641, %and639
  %add645 = add i32 %add638, %or588
  %add647 = add i32 %add645, %or643
  %or652 = tail call i32 @llvm.fshl.i32(i32 %add647, i32 %add647, i32 5)
  %add654 = add i32 %or316, 1518500249
  %and655 = and i32 %or652, %or636
  %and656 = and i32 %or652, %or620
  %or657 = or i32 %and656, %and639
  %or659 = or i32 %or657, %and655
  %add661 = add i32 %add654, %or604
  %add663 = add i32 %add661, %or659
  %or668 = tail call i32 @llvm.fshl.i32(i32 %add663, i32 %add663, i32 9)
  %add670 = add i32 %or440, 1518500249
  %and671 = and i32 %or668, %or652
  %and672 = and i32 %or668, %or636
  %or673 = or i32 %and672, %and655
  %or675 = or i32 %or673, %and671
  %add677 = add i32 %add670, %or620
  %add679 = add i32 %add677, %or675
  %or684 = tail call i32 @llvm.fshl.i32(i32 %add679, i32 %add679, i32 13)
  %add686 = add i32 %or99, 1518500249
  %and687 = and i32 %or684, %or668
  %and688 = and i32 %or684, %or652
  %or689 = or i32 %and688, %and671
  %or691 = or i32 %or689, %and687
  %add693 = add i32 %add686, %or636
  %add695 = add i32 %add693, %or691
  %or700 = tail call i32 @llvm.fshl.i32(i32 %add695, i32 %add695, i32 3)
  %add702 = add i32 %or223, 1518500249
  %and703 = and i32 %or700, %or684
  %and704 = and i32 %or700, %or668
  %or705 = or i32 %and704, %and687
  %or707 = or i32 %or705, %and703
  %add709 = add i32 %add702, %or652
  %add711 = add i32 %add709, %or707
  %or716 = tail call i32 @llvm.fshl.i32(i32 %add711, i32 %add711, i32 5)
  %add718 = add i32 %or347, 1518500249
  %and719 = and i32 %or716, %or700
  %and720 = and i32 %or716, %or684
  %or721 = or i32 %and720, %and703
  %or723 = or i32 %or721, %and719
  %add725 = add i32 %add718, %or668
  %add727 = add i32 %add725, %or723
  %or732 = tail call i32 @llvm.fshl.i32(i32 %add727, i32 %add727, i32 9)
  %add734 = add i32 %or471, 1518500249
  %and7361504 = or i32 %or716, %or700
  %or737 = and i32 %or732, %and7361504
  %or739 = or i32 %or737, %and719
  %add741 = add i32 %add734, %or684
  %add743 = add i32 %add741, %or739
  %or748 = tail call i32 @llvm.fshl.i32(i32 %add743, i32 %add743, i32 13)
  %add750 = add i32 %or20, 1859775393
  %xor751 = xor i32 %or748, %or732
  %xor752 = xor i32 %xor751, %or716
  %add754 = add i32 %add750, %or700
  %add756 = add i32 %add754, %xor752
  %or761 = tail call i32 @llvm.fshl.i32(i32 %add756, i32 %add756, i32 3)
  %add763 = add i32 %or254, 1859775393
  %xor765 = xor i32 %xor751, %or761
  %add767 = add i32 %add763, %or716
  %add769 = add i32 %add767, %xor765
  %or774 = tail call i32 @llvm.fshl.i32(i32 %add769, i32 %add769, i32 9)
  %add776 = add i32 %or130, 1859775393
  %xor777 = xor i32 %or761, %or748
  %xor778 = xor i32 %xor777, %or774
  %add780 = add i32 %add776, %or732
  %add782 = add i32 %add780, %xor778
  %or787 = tail call i32 @llvm.fshl.i32(i32 %add782, i32 %add782, i32 11)
  %add789 = add i32 %or378, 1859775393
  %xor790 = xor i32 %or774, %or761
  %xor791 = xor i32 %xor790, %or787
  %add793 = add i32 %add789, %or748
  %add795 = add i32 %add793, %xor791
  %or800 = tail call i32 @llvm.fshl.i32(i32 %add795, i32 %add795, i32 15)
  %add802 = add i32 %or68, 1859775393
  %xor803 = xor i32 %or787, %or774
  %xor804 = xor i32 %xor803, %or800
  %add806 = add i32 %add802, %or761
  %add808 = add i32 %add806, %xor804
  %or813 = tail call i32 @llvm.fshl.i32(i32 %add808, i32 %add808, i32 3)
  %add815 = add i32 %or316, 1859775393
  %xor816 = xor i32 %or800, %or787
  %xor817 = xor i32 %xor816, %or813
  %add819 = add i32 %add815, %or774
  %add821 = add i32 %add819, %xor817
  %or826 = tail call i32 @llvm.fshl.i32(i32 %add821, i32 %add821, i32 9)
  %add828 = add i32 %or192, 1859775393
  %xor829 = xor i32 %or813, %or800
  %xor830 = xor i32 %xor829, %or826
  %add832 = add i32 %add828, %or787
  %add834 = add i32 %add832, %xor830
  %or839 = tail call i32 @llvm.fshl.i32(i32 %add834, i32 %add834, i32 11)
  %add841 = add i32 %or440, 1859775393
  %xor842 = xor i32 %or826, %or813
  %xor843 = xor i32 %xor842, %or839
  %add845 = add i32 %add841, %or800
  %add847 = add i32 %add845, %xor843
  %or852 = tail call i32 @llvm.fshl.i32(i32 %add847, i32 %add847, i32 15)
  %add854 = add i32 %or41, 1859775393
  %xor855 = xor i32 %or839, %or826
  %xor856 = xor i32 %xor855, %or852
  %add858 = add i32 %add854, %or813
  %add860 = add i32 %add858, %xor856
  %or865 = tail call i32 @llvm.fshl.i32(i32 %add860, i32 %add860, i32 3)
  %add867 = add i32 %or285, 1859775393
  %xor868 = xor i32 %or852, %or839
  %xor869 = xor i32 %xor868, %or865
  %add871 = add i32 %add867, %or826
  %add873 = add i32 %add871, %xor869
  %or878 = tail call i32 @llvm.fshl.i32(i32 %add873, i32 %add873, i32 9)
  %add880 = add i32 %or161, 1859775393
  %xor881 = xor i32 %or865, %or852
  %xor882 = xor i32 %xor881, %or878
  %add884 = add i32 %add880, %or839
  %add886 = add i32 %add884, %xor882
  %or891 = tail call i32 @llvm.fshl.i32(i32 %add886, i32 %add886, i32 11)
  %add893 = add i32 %or409, 1859775393
  %xor894 = xor i32 %or878, %or865
  %xor895 = xor i32 %xor894, %or891
  %add897 = add i32 %add893, %or852
  %add899 = add i32 %add897, %xor895
  %or904 = tail call i32 @llvm.fshl.i32(i32 %add899, i32 %add899, i32 15)
  %add906 = add i32 %or99, 1859775393
  %xor907 = xor i32 %or891, %or878
  %xor908 = xor i32 %xor907, %or904
  %add910 = add i32 %add906, %or865
  %add912 = add i32 %add910, %xor908
  %or917 = tail call i32 @llvm.fshl.i32(i32 %add912, i32 %add912, i32 3)
  %add919 = add i32 %or347, 1859775393
  %xor920 = xor i32 %or904, %or891
  %xor921 = xor i32 %xor920, %or917
  %add923 = add i32 %add919, %or878
  %add925 = add i32 %add923, %xor921
  %or930 = tail call i32 @llvm.fshl.i32(i32 %add925, i32 %add925, i32 9)
  %add932 = add i32 %or223, 1859775393
  %xor933 = xor i32 %or917, %or904
  %xor934 = xor i32 %xor933, %or930
  %add936 = add i32 %add932, %or891
  %add938 = add i32 %add936, %xor934
  %or943 = tail call i32 @llvm.fshl.i32(i32 %add938, i32 %add938, i32 11)
  %add945 = add i32 %or471, 1859775393
  %xor946 = xor i32 %or930, %or917
  %xor947 = xor i32 %xor946, %or943
  %add949 = add i32 %add945, %or904
  %add951 = add i32 %add949, %xor947
  %or956 = tail call i32 @llvm.fshl.i32(i32 %add951, i32 %add951, i32 15)
  %68 = load i32, i32* %A1, align 4, !tbaa !14
  %add958 = add i32 %or917, %68
  store i32 %add958, i32* %A1, align 4, !tbaa !14
  %69 = load i32, i32* %B2, align 4, !tbaa !13
  %add960 = add i32 %or956, %69
  store i32 %add960, i32* %B2, align 4, !tbaa !13
  %70 = load i32, i32* %C3, align 4, !tbaa !12
  %add962 = add i32 %or943, %70
  store i32 %add962, i32* %C3, align 4, !tbaa !12
  %71 = load i32, i32* %D4, align 4, !tbaa !11
  %add964 = add i32 %or930, %71
  store i32 %add964, i32* %D4, align 4, !tbaa !11
  %tobool.not = icmp eq i64 %dec, 0
  br i1 %tobool.not, label %for.end, label %for.body, !llvm.loop !16

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nosync nounwind uwtable
define void @MD4_Transform(%struct.MD4state_st* nocapture noundef %c, i8* noundef %data) local_unnamed_addr #2 {
entry:
  tail call void @md4_block_data_order(%struct.MD4state_st* noundef %c, i8* noundef %data, i64 noundef 1) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @MD4_Final(i8* nocapture noundef writeonly %md, %struct.MD4state_st* noundef %c) local_unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.MD4state_st, %struct.MD4state_st* %c, i64 0, i32 6, i64 0
  %0 = bitcast i32* %arraydecay to i8*
  %num = getelementptr inbounds %struct.MD4state_st, %struct.MD4state_st* %c, i64 0, i32 7
  %1 = load i32, i32* %num, align 4, !tbaa !10
  %conv = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %conv
  store i8 -128, i8* %arrayidx, align 1, !tbaa !15
  %inc = add nuw nsw i64 %conv, 1
  %cmp = icmp ugt i32 %1, 55
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %inc
  %sub = sub nsw i64 63, %conv
  %call = tail call i8* @memset(i8* noundef nonnull %add.ptr, i32 noundef 0, i64 noundef %sub) #5
  tail call void @md4_block_data_order(%struct.MD4state_st* noundef nonnull %c, i8* noundef nonnull %0, i64 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %n.0 = phi i64 [ 0, %if.then ], [ %inc, %entry ]
  %add.ptr2 = getelementptr inbounds i8, i8* %0, i64 %n.0
  %sub3 = sub nsw i64 56, %n.0
  %call4 = tail call i8* @memset(i8* noundef nonnull %add.ptr2, i32 noundef 0, i64 noundef %sub3) #5
  %add.ptr5183 = getelementptr inbounds %struct.MD4state_st, %struct.MD4state_st* %c, i64 0, i32 6, i64 14
  %add.ptr5 = bitcast i32* %add.ptr5183 to i8*
  %Nl = getelementptr inbounds %struct.MD4state_st, %struct.MD4state_st* %c, i64 0, i32 4
  %2 = load i32, i32* %Nl, align 4, !tbaa !4
  %conv6 = trunc i32 %2 to i8
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr5, i64 1
  store i8 %conv6, i8* %add.ptr5, align 1, !tbaa !15
  %shr = lshr i32 %2, 8
  %conv9 = trunc i32 %shr to i8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %add.ptr5, i64 2
  store i8 %conv9, i8* %incdec.ptr, align 1, !tbaa !15
  %shr12 = lshr i32 %2, 16
  %conv14 = trunc i32 %shr12 to i8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %add.ptr5, i64 3
  store i8 %conv14, i8* %incdec.ptr10, align 1, !tbaa !15
  %shr17 = lshr i32 %2, 24
  %conv19 = trunc i32 %shr17 to i8
  %incdec.ptr20184 = getelementptr inbounds %struct.MD4state_st, %struct.MD4state_st* %c, i64 0, i32 6, i64 15
  %incdec.ptr20 = bitcast i32* %incdec.ptr20184 to i8*
  store i8 %conv19, i8* %incdec.ptr15, align 1, !tbaa !15
  %Nh = getelementptr inbounds %struct.MD4state_st, %struct.MD4state_st* %c, i64 0, i32 5
  %3 = load i32, i32* %Nh, align 4, !tbaa !9
  %conv23 = trunc i32 %3 to i8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %incdec.ptr20, i64 1
  store i8 %conv23, i8* %incdec.ptr20, align 1, !tbaa !15
  %shr26 = lshr i32 %3, 8
  %conv28 = trunc i32 %shr26 to i8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %incdec.ptr20, i64 2
  store i8 %conv28, i8* %incdec.ptr24, align 1, !tbaa !15
  %shr31 = lshr i32 %3, 16
  %conv33 = trunc i32 %shr31 to i8
  %incdec.ptr34 = getelementptr inbounds i8, i8* %incdec.ptr20, i64 3
  store i8 %conv33, i8* %incdec.ptr29, align 1, !tbaa !15
  %shr36 = lshr i32 %3, 24
  %conv38 = trunc i32 %shr36 to i8
  store i8 %conv38, i8* %incdec.ptr34, align 1, !tbaa !15
  tail call void @md4_block_data_order(%struct.MD4state_st* noundef nonnull %c, i8* noundef nonnull %0, i64 noundef 1) #6
  store i32 0, i32* %num, align 4, !tbaa !10
  tail call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 64) #5
  %A = getelementptr inbounds %struct.MD4state_st, %struct.MD4state_st* %c, i64 0, i32 0
  %4 = load i32, i32* %A, align 4, !tbaa !14
  %conv43 = zext i32 %4 to i64
  %conv45 = trunc i32 %4 to i8
  %incdec.ptr46 = getelementptr inbounds i8, i8* %md, i64 1
  store i8 %conv45, i8* %md, align 1, !tbaa !15
  %shr47 = lshr i64 %conv43, 8
  %conv49 = trunc i64 %shr47 to i8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %md, i64 2
  store i8 %conv49, i8* %incdec.ptr46, align 1, !tbaa !15
  %shr51 = lshr i64 %conv43, 16
  %conv53 = trunc i64 %shr51 to i8
  %incdec.ptr54 = getelementptr inbounds i8, i8* %md, i64 3
  store i8 %conv53, i8* %incdec.ptr50, align 1, !tbaa !15
  %shr55 = lshr i64 %conv43, 24
  %conv57 = trunc i64 %shr55 to i8
  %incdec.ptr58 = getelementptr inbounds i8, i8* %md, i64 4
  store i8 %conv57, i8* %incdec.ptr54, align 1, !tbaa !15
  %B = getelementptr inbounds %struct.MD4state_st, %struct.MD4state_st* %c, i64 0, i32 1
  %5 = load i32, i32* %B, align 4, !tbaa !13
  %conv59 = zext i32 %5 to i64
  %conv61 = trunc i32 %5 to i8
  %incdec.ptr62 = getelementptr inbounds i8, i8* %md, i64 5
  store i8 %conv61, i8* %incdec.ptr58, align 1, !tbaa !15
  %shr63 = lshr i64 %conv59, 8
  %conv65 = trunc i64 %shr63 to i8
  %incdec.ptr66 = getelementptr inbounds i8, i8* %md, i64 6
  store i8 %conv65, i8* %incdec.ptr62, align 1, !tbaa !15
  %shr67 = lshr i64 %conv59, 16
  %conv69 = trunc i64 %shr67 to i8
  %incdec.ptr70 = getelementptr inbounds i8, i8* %md, i64 7
  store i8 %conv69, i8* %incdec.ptr66, align 1, !tbaa !15
  %shr71 = lshr i64 %conv59, 24
  %conv73 = trunc i64 %shr71 to i8
  %incdec.ptr74 = getelementptr inbounds i8, i8* %md, i64 8
  store i8 %conv73, i8* %incdec.ptr70, align 1, !tbaa !15
  %C = getelementptr inbounds %struct.MD4state_st, %struct.MD4state_st* %c, i64 0, i32 2
  %6 = load i32, i32* %C, align 4, !tbaa !12
  %conv75 = zext i32 %6 to i64
  %conv77 = trunc i32 %6 to i8
  %incdec.ptr78 = getelementptr inbounds i8, i8* %md, i64 9
  store i8 %conv77, i8* %incdec.ptr74, align 1, !tbaa !15
  %shr79 = lshr i64 %conv75, 8
  %conv81 = trunc i64 %shr79 to i8
  %incdec.ptr82 = getelementptr inbounds i8, i8* %md, i64 10
  store i8 %conv81, i8* %incdec.ptr78, align 1, !tbaa !15
  %shr83 = lshr i64 %conv75, 16
  %conv85 = trunc i64 %shr83 to i8
  %incdec.ptr86 = getelementptr inbounds i8, i8* %md, i64 11
  store i8 %conv85, i8* %incdec.ptr82, align 1, !tbaa !15
  %shr87 = lshr i64 %conv75, 24
  %conv89 = trunc i64 %shr87 to i8
  %incdec.ptr90 = getelementptr inbounds i8, i8* %md, i64 12
  store i8 %conv89, i8* %incdec.ptr86, align 1, !tbaa !15
  %D = getelementptr inbounds %struct.MD4state_st, %struct.MD4state_st* %c, i64 0, i32 3
  %7 = load i32, i32* %D, align 4, !tbaa !11
  %conv91 = zext i32 %7 to i64
  %conv93 = trunc i32 %7 to i8
  %incdec.ptr94 = getelementptr inbounds i8, i8* %md, i64 13
  store i8 %conv93, i8* %incdec.ptr90, align 1, !tbaa !15
  %shr95 = lshr i64 %conv91, 8
  %conv97 = trunc i64 %shr95 to i8
  %incdec.ptr98 = getelementptr inbounds i8, i8* %md, i64 14
  store i8 %conv97, i8* %incdec.ptr94, align 1, !tbaa !15
  %shr99 = lshr i64 %conv91, 16
  %conv101 = trunc i64 %shr99 to i8
  %incdec.ptr102 = getelementptr inbounds i8, i8* %md, i64 15
  store i8 %conv101, i8* %incdec.ptr98, align 1, !tbaa !15
  %shr103 = lshr i64 %conv91, 24
  %conv105 = trunc i64 %shr103 to i8
  store i8 %conv105, i8* %incdec.ptr102, align 1, !tbaa !15
  ret i32 1
}

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @MD4_Init(%struct.MD4state_st* noundef %c) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.MD4state_st* %c to i8*
  %call = tail call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 92) #5
  %1 = bitcast %struct.MD4state_st* %c to <4 x i32>*
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %1, align 4, !tbaa !18
  ret i32 1
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 16}
!5 = !{!"MD4state_st", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !7, i64 24, !6, i64 88}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 20}
!10 = !{!5, !6, i64 88}
!11 = !{!5, !6, i64 12}
!12 = !{!5, !6, i64 8}
!13 = !{!5, !6, i64 4}
!14 = !{!5, !6, i64 0}
!15 = !{!7, !7, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!6, !6, i64 0}
