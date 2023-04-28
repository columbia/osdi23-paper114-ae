; ModuleID = 'crypto/whrlpool/wp_dgst.c'
source_filename = "crypto/whrlpool/wp_dgst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WHIRLPOOL_CTX = type { %union.anon, [64 x i8], i32, [4 x i64] }
%union.anon = type { [8 x double] }

@WHIRLPOOL.m = internal global [64 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define i32 @WHIRLPOOL_Init(%struct.WHIRLPOOL_CTX* noundef %c) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.WHIRLPOOL_CTX* %c to i8*
  %call = tail call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 168) #4
  ret i32 1
}

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @WHIRLPOOL_Update(%struct.WHIRLPOOL_CTX* noundef %c, i8* noundef %_inp, i64 noundef %bytes) local_unnamed_addr #0 {
entry:
  %cmp13 = icmp ugt i64 %bytes, 1152921504606846975
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.body
  %inp.015 = phi i8* [ %add.ptr, %while.body ], [ %_inp, %entry ]
  %bytes.addr.014 = phi i64 [ %sub, %while.body ], [ %bytes, %entry ]
  tail call void @WHIRLPOOL_BitUpdate(%struct.WHIRLPOOL_CTX* noundef %c, i8* noundef %inp.015, i64 noundef -9223372036854775808) #5
  %sub = add i64 %bytes.addr.014, -1152921504606846976
  %add.ptr = getelementptr inbounds i8, i8* %inp.015, i64 1152921504606846976
  %cmp = icmp ugt i64 %sub, 1152921504606846975
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !4

while.end:                                        ; preds = %while.body, %entry
  %bytes.addr.0.lcssa = phi i64 [ %bytes, %entry ], [ %sub, %while.body ]
  %inp.0.lcssa = phi i8* [ %_inp, %entry ], [ %add.ptr, %while.body ]
  %tobool.not = icmp eq i64 %bytes.addr.0.lcssa, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  %mul1 = shl nuw nsw i64 %bytes.addr.0.lcssa, 3
  tail call void @WHIRLPOOL_BitUpdate(%struct.WHIRLPOOL_CTX* noundef %c, i8* noundef %inp.0.lcssa, i64 noundef %mul1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define void @WHIRLPOOL_BitUpdate(%struct.WHIRLPOOL_CTX* noundef %c, i8* noundef %_inp, i64 noundef %bits) local_unnamed_addr #0 {
entry:
  %bitoff1 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 2
  %0 = load i32, i32* %bitoff1, align 8, !tbaa !6
  %rem = and i32 %0, 7
  %conv = trunc i64 %bits to i32
  %sub = sub i32 0, %conv
  %and = and i32 %sub, 7
  %arrayidx = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 3, i64 0
  %1 = load i64, i64* %arrayidx, align 8, !tbaa !11
  %add = add i64 %1, %bits
  store i64 %add, i64* %arrayidx, align 8, !tbaa !11
  %cmp = icmp ult i64 %add, %bits
  br i1 %cmp, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  %arrayidx7 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 3, i64 1
  %2 = load i64, i64* %arrayidx7, align 8, !tbaa !11
  %inc = add i64 %2, 1
  store i64 %inc, i64* %arrayidx7, align 8, !tbaa !11
  %cmp10 = icmp eq i64 %inc, 0
  br i1 %cmp10, label %do.body.1, label %if.end, !llvm.loop !13

do.body.1:                                        ; preds = %do.body
  %arrayidx7.1 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 3, i64 2
  %3 = load i64, i64* %arrayidx7.1, align 8, !tbaa !11
  %inc.1 = add i64 %3, 1
  store i64 %inc.1, i64* %arrayidx7.1, align 8, !tbaa !11
  %cmp10.1 = icmp eq i64 %inc.1, 0
  br i1 %cmp10.1, label %do.body.2, label %if.end, !llvm.loop !13

do.body.2:                                        ; preds = %do.body.1
  %arrayidx7.2 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 3, i64 3
  %4 = load i64, i64* %arrayidx7.2, align 8, !tbaa !11
  %inc.2 = add i64 %4, 1
  store i64 %inc.2, i64* %arrayidx7.2, align 8, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %do.body, %do.body.1, %do.body.2, %entry
  %cmp15299 = icmp eq i32 %and, 0
  %cmp17300 = icmp eq i32 %rem, 0
  %or.cond301 = select i1 %cmp15299, i1 %cmp17300, i1 false
  br i1 %or.cond301, label %while.cond.preheader, label %while.cond55.preheader.lr.ph

while.cond55.preheader.lr.ph:                     ; preds = %if.end
  %arraydecay163 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 0
  %cmp60 = icmp eq i32 %rem, %and
  %tobool140.not = icmp eq i32 %rem, 0
  %sub169 = sub nuw nsw i32 8, %rem
  %sub90 = sub nuw nsw i32 8, %and
  %tobool97.not = icmp eq i32 %rem, 0
  %sub127 = sub nuw nsw i32 8, %rem
  %tobool56.not334 = icmp eq i64 %bits, 0
  br i1 %tobool56.not334, label %if.end181, label %while.body57

reconsider.loopexit:                              ; preds = %if.then77, %if.then62
  %storemerge.ph = phi i32 [ %add72, %if.then62 ], [ 0, %if.then77 ]
  store i32 %storemerge.ph, i32* %bitoff1, align 8, !tbaa !6
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %reconsider.loopexit, %if.end
  %bitoff.0.lcssa = phi i32 [ %0, %if.end ], [ %storemerge.ph, %reconsider.loopexit ]
  %inp.0.lcssa = phi i8* [ %_inp, %if.end ], [ %incdec.ptr, %reconsider.loopexit ]
  %bits.addr.0.lcssa = phi i64 [ %bits, %if.end ], [ %sub74, %reconsider.loopexit ]
  %tobool.not309 = icmp eq i64 %bits.addr.0.lcssa, 0
  br i1 %tobool.not309, label %if.end181, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %arraydecay = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end53
  %bits.addr.1312 = phi i64 [ %bits.addr.0.lcssa, %while.body.lr.ph ], [ %bits.addr.3, %if.end53 ]
  %inp.1311 = phi i8* [ %inp.0.lcssa, %while.body.lr.ph ], [ %inp.3, %if.end53 ]
  %bitoff.1310 = phi i32 [ %bitoff.0.lcssa, %while.body.lr.ph ], [ %bitoff.3, %if.end53 ]
  %cmp20 = icmp ne i32 %bitoff.1310, 0
  %tobool23.not = icmp ult i64 %bits.addr.1312, 512
  %or.cond294 = select i1 %cmp20, i1 true, i1 %tobool23.not
  br i1 %or.cond294, label %if.else, label %if.then24

if.then24:                                        ; preds = %while.body
  %div = lshr i64 %bits.addr.1312, 9
  tail call void @whirlpool_block(%struct.WHIRLPOOL_CTX* noundef %c, i8* noundef %inp.1311, i64 noundef %div) #4
  %mul = lshr i64 %bits.addr.1312, 3
  %div25 = and i64 %mul, 2305843009213693888
  %add.ptr = getelementptr inbounds i8, i8* %inp.1311, i64 %div25
  %rem26 = and i64 %bits.addr.1312, 511
  br label %if.end53

if.else:                                          ; preds = %while.body
  %div27 = lshr i32 %bitoff.1310, 3
  %sub28 = sub i32 512, %bitoff.1310
  %conv29 = zext i32 %sub28 to i64
  %cmp30.not = icmp ult i64 %bits.addr.1312, %conv29
  br i1 %cmp30.not, label %if.else42, label %if.then32

if.then32:                                        ; preds = %if.else
  %sub34 = sub i64 %bits.addr.1312, %conv29
  %div35 = lshr i32 %sub28, 3
  %idx.ext = zext i32 %div27 to i64
  %add.ptr36 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 %idx.ext
  %conv37 = zext i32 %div35 to i64
  %call = tail call i8* @memcpy(i8* noundef nonnull %add.ptr36, i8* noundef %inp.1311, i64 noundef %conv37) #4
  %add.ptr39 = getelementptr inbounds i8, i8* %inp.1311, i64 %conv37
  tail call void @whirlpool_block(%struct.WHIRLPOOL_CTX* noundef %c, i8* noundef nonnull %arraydecay, i64 noundef 1) #4
  br label %if.end51

if.else42:                                        ; preds = %if.else
  %idx.ext45 = zext i32 %div27 to i64
  %add.ptr46 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 %idx.ext45
  %div47 = lshr i64 %bits.addr.1312, 3
  %call48 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr46, i8* noundef %inp.1311, i64 noundef %div47) #4
  %conv49 = trunc i64 %bits.addr.1312 to i32
  %add50 = add i32 %bitoff.1310, %conv49
  br label %if.end51

if.end51:                                         ; preds = %if.else42, %if.then32
  %bitoff.2 = phi i32 [ 0, %if.then32 ], [ %add50, %if.else42 ]
  %inp.2 = phi i8* [ %add.ptr39, %if.then32 ], [ %inp.1311, %if.else42 ]
  %bits.addr.2 = phi i64 [ %sub34, %if.then32 ], [ 0, %if.else42 ]
  store i32 %bitoff.2, i32* %bitoff1, align 8, !tbaa !6
  br label %if.end53

if.end53:                                         ; preds = %if.end51, %if.then24
  %bitoff.3 = phi i32 [ 0, %if.then24 ], [ %bitoff.2, %if.end51 ]
  %inp.3 = phi i8* [ %add.ptr, %if.then24 ], [ %inp.2, %if.end51 ]
  %bits.addr.3 = phi i64 [ %rem26, %if.then24 ], [ %bits.addr.2, %if.end51 ]
  %tobool.not = icmp eq i64 %bits.addr.3, 0
  br i1 %tobool.not, label %if.end181, label %while.body, !llvm.loop !14

while.body57:                                     ; preds = %while.cond55.preheader.lr.ph, %cleanup
  %bits.addr.4337 = phi i64 [ %bits.addr.6, %cleanup ], [ %bits, %while.cond55.preheader.lr.ph ]
  %inp.4336 = phi i8* [ %inp.6, %cleanup ], [ %_inp, %while.cond55.preheader.lr.ph ]
  %bitoff.4335 = phi i32 [ %storemerge, %cleanup ], [ %0, %while.cond55.preheader.lr.ph ]
  %div59 = lshr i32 %bitoff.4335, 3
  br i1 %cmp60, label %if.then62, label %if.else82

if.then62:                                        ; preds = %while.body57
  %5 = load i8, i8* %inp.4336, align 1, !tbaa !15
  %shr = lshr i32 255, %rem
  %idxprom = zext i32 %div59 to i64
  %arrayidx68 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 %idxprom
  %6 = load i8, i8* %arrayidx68, align 1, !tbaa !15
  %7 = trunc i32 %shr to i8
  %8 = and i8 %5, %7
  %conv70 = or i8 %8, %6
  store i8 %conv70, i8* %arrayidx68, align 1, !tbaa !15
  %sub71 = sub nuw nsw i32 8, %rem
  %add72 = add i32 %sub71, %bitoff.4335
  %conv73 = zext i32 %sub71 to i64
  %sub74 = sub i64 %bits.addr.4337, %conv73
  %incdec.ptr = getelementptr inbounds i8, i8* %inp.4336, i64 1
  %cmp75 = icmp eq i32 %add72, 512
  br i1 %cmp75, label %if.then77, label %reconsider.loopexit

if.then77:                                        ; preds = %if.then62
  tail call void @whirlpool_block(%struct.WHIRLPOOL_CTX* noundef nonnull %c, i8* noundef nonnull %arraydecay163, i64 noundef 1) #4
  br label %reconsider.loopexit

if.else82:                                        ; preds = %while.body57
  %cmp83 = icmp ugt i64 %bits.addr.4337, 8
  %9 = load i8, i8* %inp.4336, align 1, !tbaa !15
  %conv87 = zext i8 %9 to i32
  %shl = shl i32 %conv87, %and
  br i1 %cmp83, label %if.then85, label %if.else134

if.then85:                                        ; preds = %if.else82
  %arrayidx88 = getelementptr inbounds i8, i8* %inp.4336, i64 1
  %10 = load i8, i8* %arrayidx88, align 1, !tbaa !15
  %conv89 = zext i8 %10 to i32
  %shr91 = lshr i32 %conv89, %sub90
  %or92 = or i32 %shr91, %shl
  br i1 %tobool97.not, label %if.else108, label %if.then98

if.then98:                                        ; preds = %if.then85
  %conv99 = and i32 %or92, 255
  %shr100 = lshr i32 %conv99, %rem
  %idxprom103 = zext i32 %div59 to i64
  %arrayidx104 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 %idxprom103
  %11 = load i8, i8* %arrayidx104, align 1, !tbaa !15
  %12 = trunc i32 %shr100 to i8
  %conv107 = or i8 %11, %12
  store i8 %conv107, i8* %arrayidx104, align 1, !tbaa !15
  br label %if.end113

if.else108:                                       ; preds = %if.then85
  %conv96 = trunc i32 %or92 to i8
  %idxprom111 = zext i32 %div59 to i64
  %arrayidx112 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 %idxprom111
  store i8 %conv96, i8* %arrayidx112, align 1, !tbaa !15
  br label %if.end113

if.end113:                                        ; preds = %if.else108, %if.then98
  %byteoff58.0 = add nuw nsw i32 %div59, 1
  %add114 = add i32 %bitoff.4335, 8
  %sub115 = add i64 %bits.addr.4337, -8
  %cmp117 = icmp ugt i32 %add114, 511
  br i1 %cmp117, label %if.then119, label %if.end123

if.then119:                                       ; preds = %if.end113
  tail call void @whirlpool_block(%struct.WHIRLPOOL_CTX* noundef nonnull %c, i8* noundef nonnull %arraydecay163, i64 noundef 1) #4
  %rem122 = and i32 %add114, 511
  br label %if.end123

if.end123:                                        ; preds = %if.then119, %if.end113
  %bitoff.6 = phi i32 [ %rem122, %if.then119 ], [ %add114, %if.end113 ]
  %byteoff58.1 = phi i32 [ 0, %if.then119 ], [ %byteoff58.0, %if.end113 ]
  br i1 %tobool97.not, label %cleanup, label %if.then125

if.then125:                                       ; preds = %if.end123
  %shl128 = shl i32 %or92, %sub127
  br label %cleanup.sink.split

if.else134:                                       ; preds = %if.else82
  br i1 %tobool140.not, label %if.else151, label %if.then141

if.then141:                                       ; preds = %if.else134
  %conv142 = and i32 %shl, 255
  %shr143 = lshr i32 %conv142, %rem
  %idxprom146 = zext i32 %div59 to i64
  %arrayidx147 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 %idxprom146
  %13 = load i8, i8* %arrayidx147, align 1, !tbaa !15
  %14 = trunc i32 %shr143 to i8
  %conv150 = or i8 %13, %14
  store i8 %conv150, i8* %arrayidx147, align 1, !tbaa !15
  br label %if.end156

if.else151:                                       ; preds = %if.else134
  %conv139 = trunc i32 %shl to i8
  %idxprom154 = zext i32 %div59 to i64
  %arrayidx155 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 %idxprom154
  store i8 %conv139, i8* %arrayidx155, align 1, !tbaa !15
  br label %if.end156

if.end156:                                        ; preds = %if.else151, %if.then141
  %byteoff58.2 = add nuw nsw i32 %div59, 1
  %conv157 = trunc i64 %bits.addr.4337 to i32
  %add158 = add i32 %bitoff.4335, %conv157
  %cmp159 = icmp eq i32 %add158, 512
  br i1 %cmp159, label %if.then161, label %if.end165

if.then161:                                       ; preds = %if.end156
  tail call void @whirlpool_block(%struct.WHIRLPOOL_CTX* noundef nonnull %c, i8* noundef nonnull %arraydecay163, i64 noundef 1) #4
  br label %if.end165

if.end165:                                        ; preds = %if.then161, %if.end156
  %bitoff.7 = phi i32 [ 0, %if.then161 ], [ %add158, %if.end156 ]
  %byteoff58.3 = phi i32 [ 0, %if.then161 ], [ %byteoff58.2, %if.end156 ]
  br i1 %tobool140.not, label %cleanup, label %if.then167

if.then167:                                       ; preds = %if.end165
  %shl170 = shl i32 %shl, %sub169
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then167, %if.then125
  %shl128.sink = phi i32 [ %shl128, %if.then125 ], [ %shl170, %if.then167 ]
  %byteoff58.1.sink = phi i32 [ %byteoff58.1, %if.then125 ], [ %byteoff58.3, %if.then167 ]
  %storemerge.ph329 = phi i32 [ %bitoff.6, %if.then125 ], [ %bitoff.7, %if.then167 ]
  %inp.6.ph = phi i8* [ %arrayidx88, %if.then125 ], [ %inp.4336, %if.then167 ]
  %bits.addr.6.ph = phi i64 [ %sub115, %if.then125 ], [ 0, %if.then167 ]
  %conv129 = trunc i32 %shl128.sink to i8
  %idxprom131 = zext i32 %byteoff58.1.sink to i64
  %arrayidx132 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 %idxprom131
  store i8 %conv129, i8* %arrayidx132, align 1, !tbaa !15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end123, %if.end165
  %storemerge = phi i32 [ %bitoff.6, %if.end123 ], [ %bitoff.7, %if.end165 ], [ %storemerge.ph329, %cleanup.sink.split ]
  %inp.6 = phi i8* [ %arrayidx88, %if.end123 ], [ %inp.4336, %if.end165 ], [ %inp.6.ph, %cleanup.sink.split ]
  %bits.addr.6 = phi i64 [ %sub115, %if.end123 ], [ 0, %if.end165 ], [ %bits.addr.6.ph, %cleanup.sink.split ]
  store i32 %storemerge, i32* %bitoff1, align 8, !tbaa !6
  %tobool56.not = icmp eq i64 %bits.addr.6, 0
  br i1 %tobool56.not, label %if.end181, label %while.body57

if.end181:                                        ; preds = %cleanup, %if.end53, %while.cond55.preheader.lr.ph, %while.cond.preheader
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @whirlpool_block(%struct.WHIRLPOOL_CTX* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @WHIRLPOOL_Final(i8* noundef %md, %struct.WHIRLPOOL_CTX* noundef %c) local_unnamed_addr #0 {
entry:
  %bitoff1 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 2
  %0 = load i32, i32* %bitoff1, align 8, !tbaa !6
  %div = lshr i32 %0, 3
  %rem = and i32 %0, 7
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %shr = lshr i32 128, %rem
  %idxprom = zext i32 %div to i64
  %arrayidx = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !15
  %2 = trunc i32 %shr to i8
  %conv2 = or i8 %1, %2
  store i8 %conv2, i8* %arrayidx, align 1, !tbaa !15
  br label %if.end

if.else:                                          ; preds = %entry
  %idxprom4 = zext i32 %div to i64
  %arrayidx5 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 %idxprom4
  store i8 -128, i8* %arrayidx5, align 1, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %inc = add nuw nsw i32 %div, 1
  %cmp = icmp ugt i32 %0, 255
  br i1 %cmp, label %if.then7, label %if.end17

if.then7:                                         ; preds = %if.end
  %cmp8 = icmp ult i32 %0, 504
  br i1 %cmp8, label %if.then10, label %if.end17.thread

if.then10:                                        ; preds = %if.then7
  %idxprom12 = zext i32 %inc to i64
  %arrayidx13 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 %idxprom12
  %sub = sub nsw i32 63, %div
  %conv14 = zext i32 %sub to i64
  %call = tail call i8* @memset(i8* noundef nonnull %arrayidx13, i32 noundef 0, i64 noundef %conv14) #4
  br label %if.end17.thread

if.end17.thread:                                  ; preds = %if.then7, %if.then10
  %arraydecay = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 0
  tail call void @whirlpool_block(%struct.WHIRLPOOL_CTX* noundef nonnull %c, i8* noundef nonnull %arraydecay, i64 noundef 1) #4
  br label %if.then20

if.end17:                                         ; preds = %if.end
  %cmp18 = icmp ult i32 %0, 248
  br i1 %cmp18, label %if.then20, label %if.end27

if.then20:                                        ; preds = %if.end17.thread, %if.end17
  %byteoff.093 = phi i32 [ 0, %if.end17.thread ], [ %inc, %if.end17 ]
  %idxprom22 = zext i32 %byteoff.093 to i64
  %arrayidx23 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 %idxprom22
  %sub24 = sub nuw nsw i32 32, %byteoff.093
  %conv25 = zext i32 %sub24 to i64
  %call26 = tail call i8* @memset(i8* noundef nonnull %arrayidx23, i32 noundef 0, i64 noundef %conv25) #4
  br label %if.end27

if.end27:                                         ; preds = %if.then20, %if.end17
  %arrayidx29 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 63
  %arrayidx32 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 3, i64 0
  %3 = load i64, i64* %arrayidx32, align 8, !tbaa !11
  %conv37 = trunc i64 %3 to i8
  %incdec.ptr = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 62
  store i8 %conv37, i8* %arrayidx29, align 1, !tbaa !15
  %shr39 = lshr i64 %3, 8
  %conv37.1 = trunc i64 %shr39 to i8
  %incdec.ptr.1 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 61
  store i8 %conv37.1, i8* %incdec.ptr, align 1, !tbaa !15
  %shr39.1 = lshr i64 %3, 16
  %conv37.2 = trunc i64 %shr39.1 to i8
  %incdec.ptr.2 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 60
  store i8 %conv37.2, i8* %incdec.ptr.1, align 1, !tbaa !15
  %shr39.2 = lshr i64 %3, 24
  %conv37.3 = trunc i64 %shr39.2 to i8
  %incdec.ptr.3 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 59
  store i8 %conv37.3, i8* %incdec.ptr.2, align 1, !tbaa !15
  %shr39.3 = lshr i64 %3, 32
  %conv37.4 = trunc i64 %shr39.3 to i8
  %incdec.ptr.4 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 58
  store i8 %conv37.4, i8* %incdec.ptr.3, align 1, !tbaa !15
  %shr39.4 = lshr i64 %3, 40
  %conv37.5 = trunc i64 %shr39.4 to i8
  %incdec.ptr.5 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 57
  store i8 %conv37.5, i8* %incdec.ptr.4, align 1, !tbaa !15
  %shr39.5 = lshr i64 %3, 48
  %conv37.6 = trunc i64 %shr39.5 to i8
  %incdec.ptr.6 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 56
  store i8 %conv37.6, i8* %incdec.ptr.5, align 1, !tbaa !15
  %shr39.6 = lshr i64 %3, 56
  %conv37.7 = trunc i64 %shr39.6 to i8
  %incdec.ptr.7 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 55
  store i8 %conv37.7, i8* %incdec.ptr.6, align 1, !tbaa !15
  %arrayidx32.1 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 3, i64 1
  %4 = load i64, i64* %arrayidx32.1, align 8, !tbaa !11
  %conv37.199 = trunc i64 %4 to i8
  %incdec.ptr.1100 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 54
  store i8 %conv37.199, i8* %incdec.ptr.7, align 1, !tbaa !15
  %shr39.1101 = lshr i64 %4, 8
  %conv37.1.1 = trunc i64 %shr39.1101 to i8
  %incdec.ptr.1.1 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 53
  store i8 %conv37.1.1, i8* %incdec.ptr.1100, align 1, !tbaa !15
  %shr39.1.1 = lshr i64 %4, 16
  %conv37.2.1 = trunc i64 %shr39.1.1 to i8
  %incdec.ptr.2.1 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 52
  store i8 %conv37.2.1, i8* %incdec.ptr.1.1, align 1, !tbaa !15
  %shr39.2.1 = lshr i64 %4, 24
  %conv37.3.1 = trunc i64 %shr39.2.1 to i8
  %incdec.ptr.3.1 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 51
  store i8 %conv37.3.1, i8* %incdec.ptr.2.1, align 1, !tbaa !15
  %shr39.3.1 = lshr i64 %4, 32
  %conv37.4.1 = trunc i64 %shr39.3.1 to i8
  %incdec.ptr.4.1 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 50
  store i8 %conv37.4.1, i8* %incdec.ptr.3.1, align 1, !tbaa !15
  %shr39.4.1 = lshr i64 %4, 40
  %conv37.5.1 = trunc i64 %shr39.4.1 to i8
  %incdec.ptr.5.1 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 49
  store i8 %conv37.5.1, i8* %incdec.ptr.4.1, align 1, !tbaa !15
  %shr39.5.1 = lshr i64 %4, 48
  %conv37.6.1 = trunc i64 %shr39.5.1 to i8
  %incdec.ptr.6.1 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 48
  store i8 %conv37.6.1, i8* %incdec.ptr.5.1, align 1, !tbaa !15
  %shr39.6.1 = lshr i64 %4, 56
  %conv37.7.1 = trunc i64 %shr39.6.1 to i8
  %incdec.ptr.7.1 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 47
  store i8 %conv37.7.1, i8* %incdec.ptr.6.1, align 1, !tbaa !15
  %arrayidx32.2 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 3, i64 2
  %5 = load i64, i64* %arrayidx32.2, align 8, !tbaa !11
  %conv37.2102 = trunc i64 %5 to i8
  %incdec.ptr.2103 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 46
  store i8 %conv37.2102, i8* %incdec.ptr.7.1, align 1, !tbaa !15
  %shr39.2104 = lshr i64 %5, 8
  %conv37.1.2 = trunc i64 %shr39.2104 to i8
  %incdec.ptr.1.2 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 45
  store i8 %conv37.1.2, i8* %incdec.ptr.2103, align 1, !tbaa !15
  %shr39.1.2 = lshr i64 %5, 16
  %conv37.2.2 = trunc i64 %shr39.1.2 to i8
  %incdec.ptr.2.2 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 44
  store i8 %conv37.2.2, i8* %incdec.ptr.1.2, align 1, !tbaa !15
  %shr39.2.2 = lshr i64 %5, 24
  %conv37.3.2 = trunc i64 %shr39.2.2 to i8
  %incdec.ptr.3.2 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 43
  store i8 %conv37.3.2, i8* %incdec.ptr.2.2, align 1, !tbaa !15
  %shr39.3.2 = lshr i64 %5, 32
  %conv37.4.2 = trunc i64 %shr39.3.2 to i8
  %incdec.ptr.4.2 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 42
  store i8 %conv37.4.2, i8* %incdec.ptr.3.2, align 1, !tbaa !15
  %shr39.4.2 = lshr i64 %5, 40
  %conv37.5.2 = trunc i64 %shr39.4.2 to i8
  %incdec.ptr.5.2 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 41
  store i8 %conv37.5.2, i8* %incdec.ptr.4.2, align 1, !tbaa !15
  %shr39.5.2 = lshr i64 %5, 48
  %conv37.6.2 = trunc i64 %shr39.5.2 to i8
  %incdec.ptr.6.2 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 40
  store i8 %conv37.6.2, i8* %incdec.ptr.5.2, align 1, !tbaa !15
  %shr39.6.2 = lshr i64 %5, 56
  %conv37.7.2 = trunc i64 %shr39.6.2 to i8
  %incdec.ptr.7.2 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 39
  store i8 %conv37.7.2, i8* %incdec.ptr.6.2, align 1, !tbaa !15
  %arrayidx32.3 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 3, i64 3
  %6 = load i64, i64* %arrayidx32.3, align 8, !tbaa !11
  %conv37.3105 = trunc i64 %6 to i8
  %incdec.ptr.3106 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 38
  store i8 %conv37.3105, i8* %incdec.ptr.7.2, align 1, !tbaa !15
  %shr39.3107 = lshr i64 %6, 8
  %conv37.1.3 = trunc i64 %shr39.3107 to i8
  %incdec.ptr.1.3 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 37
  store i8 %conv37.1.3, i8* %incdec.ptr.3106, align 1, !tbaa !15
  %shr39.1.3 = lshr i64 %6, 16
  %conv37.2.3 = trunc i64 %shr39.1.3 to i8
  %incdec.ptr.2.3 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 36
  store i8 %conv37.2.3, i8* %incdec.ptr.1.3, align 1, !tbaa !15
  %shr39.2.3 = lshr i64 %6, 24
  %conv37.3.3 = trunc i64 %shr39.2.3 to i8
  %incdec.ptr.3.3 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 35
  store i8 %conv37.3.3, i8* %incdec.ptr.2.3, align 1, !tbaa !15
  %shr39.3.3 = lshr i64 %6, 32
  %conv37.4.3 = trunc i64 %shr39.3.3 to i8
  %incdec.ptr.4.3 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 34
  store i8 %conv37.4.3, i8* %incdec.ptr.3.3, align 1, !tbaa !15
  %shr39.4.3 = lshr i64 %6, 40
  %conv37.5.3 = trunc i64 %shr39.4.3 to i8
  %incdec.ptr.5.3 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 33
  store i8 %conv37.5.3, i8* %incdec.ptr.4.3, align 1, !tbaa !15
  %shr39.5.3 = lshr i64 %6, 48
  %conv37.6.3 = trunc i64 %shr39.5.3 to i8
  %incdec.ptr.6.3 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 32
  store i8 %conv37.6.3, i8* %incdec.ptr.5.3, align 1, !tbaa !15
  %shr39.6.3 = lshr i64 %6, 56
  %conv37.7.3 = trunc i64 %shr39.6.3 to i8
  store i8 %conv37.7.3, i8* %incdec.ptr.6.3, align 1, !tbaa !15
  %arraydecay44 = getelementptr inbounds %struct.WHIRLPOOL_CTX, %struct.WHIRLPOOL_CTX* %c, i64 0, i32 1, i64 0
  tail call void @whirlpool_block(%struct.WHIRLPOOL_CTX* noundef nonnull %c, i8* noundef nonnull %arraydecay44, i64 noundef 1) #4
  %tobool45.not = icmp eq i8* %md, null
  br i1 %tobool45.not, label %cleanup, label %if.then46

if.then46:                                        ; preds = %if.end27
  %arraydecay48 = bitcast %struct.WHIRLPOOL_CTX* %c to i8*
  %call49 = tail call i8* @memcpy(i8* noundef nonnull %md, i8* noundef %arraydecay48, i64 noundef 64) #4
  tail call void @OPENSSL_cleanse(i8* noundef %arraydecay48, i64 noundef 168) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then46
  %retval.0 = phi i32 [ 1, %if.then46 ], [ 0, %if.end27 ]
  ret i32 %retval.0
}

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i8* @WHIRLPOOL(i8* noundef %inp, i64 noundef %bytes, i8* noundef %md) local_unnamed_addr #0 {
entry:
  %ctx = alloca %struct.WHIRLPOOL_CTX, align 8
  %0 = bitcast %struct.WHIRLPOOL_CTX* %ctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 168, i8* nonnull %0) #6
  %cmp = icmp eq i8* %md, null
  %spec.store.select = select i1 %cmp, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @WHIRLPOOL.m, i64 0, i64 0), i8* %md
  %call = call i32 @WHIRLPOOL_Init(%struct.WHIRLPOOL_CTX* noundef nonnull %ctx) #5
  %call1 = call i32 @WHIRLPOOL_Update(%struct.WHIRLPOOL_CTX* noundef nonnull %ctx, i8* noundef %inp, i64 noundef %bytes) #5
  %call2 = call i32 @WHIRLPOOL_Final(i8* noundef %spec.store.select, %struct.WHIRLPOOL_CTX* noundef nonnull %ctx) #5
  call void @llvm.lifetime.end.p0i8(i64 168, i8* nonnull %0) #6
  ret i8* %spec.store.select
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{!7, !10, i64 128}
!7 = !{!"", !8, i64 0, !8, i64 64, !10, i64 128, !8, i64 136}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !8, i64 0}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = !{!8, !8, i64 0}
