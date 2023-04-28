; ModuleID = 'crypto/des/cfb_enc.c'
source_filename = "crypto/des/cfb_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DES_ks = type { [16 x %union.anon] }
%union.anon = type { [2 x i32] }

; Function Attrs: noinline nounwind uwtable
define void @DES_cfb_encrypt(i8* nocapture noundef readonly %in, i8* nocapture noundef writeonly %out, i32 noundef %numbits, i64 noundef %length, %struct.DES_ks* noundef %schedule, [8 x i8]* nocapture noundef %ivec, i32 noundef %enc) local_unnamed_addr #0 {
entry:
  %ti = alloca [2 x i32], align 4
  %sh = alloca [4 x i32], align 16
  %div = sdiv i32 %numbits, 8
  %add = add nsw i32 %numbits, 7
  %div1 = sdiv i32 %add, 8
  %rem2 = srem i32 %numbits, 8
  %0 = bitcast [2 x i32]* %ti to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  %1 = bitcast [4 x i32]* %sh to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #4
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %sh, i64 0, i64 0
  %2 = add i32 %numbits, -65
  %3 = icmp ult i32 %2, -64
  br i1 %3, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 0
  %incdec.ptr = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 1
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !4
  %conv = zext i8 %4 to i32
  %incdec.ptr4 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 2
  %5 = load i8, i8* %incdec.ptr, align 1, !tbaa !4
  %conv5 = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %conv5, 8
  %or = or i32 %shl, %conv
  %incdec.ptr6 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 3
  %6 = load i8, i8* %incdec.ptr4, align 1, !tbaa !4
  %conv7 = zext i8 %6 to i32
  %shl8 = shl nuw nsw i32 %conv7, 16
  %or9 = or i32 %or, %shl8
  %incdec.ptr10 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 4
  %7 = load i8, i8* %incdec.ptr6, align 1, !tbaa !4
  %conv11 = zext i8 %7 to i32
  %shl12 = shl nuw i32 %conv11, 24
  %or13 = or i32 %or9, %shl12
  %incdec.ptr14 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 5
  %8 = load i8, i8* %incdec.ptr10, align 1, !tbaa !4
  %conv15 = zext i8 %8 to i32
  %incdec.ptr16 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 6
  %9 = load i8, i8* %incdec.ptr14, align 1, !tbaa !4
  %conv17 = zext i8 %9 to i32
  %shl18 = shl nuw nsw i32 %conv17, 8
  %or19 = or i32 %shl18, %conv15
  %incdec.ptr20 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 7
  %10 = load i8, i8* %incdec.ptr16, align 1, !tbaa !4
  %conv21 = zext i8 %10 to i32
  %shl22 = shl nuw nsw i32 %conv21, 16
  %or23 = or i32 %or19, %shl22
  %11 = load i8, i8* %incdec.ptr20, align 1, !tbaa !4
  %conv25 = zext i8 %11 to i32
  %shl26 = shl nuw i32 %conv25, 24
  %or27 = or i32 %or23, %shl26
  %tobool.not = icmp eq i32 %enc, 0
  %conv158 = sext i32 %div1 to i64
  %cmp159.not541 = icmp ugt i64 %conv158, %length
  br i1 %tobool.not, label %while.cond157.preheader, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  br i1 %cmp159.not541, label %if.end303, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %arrayidx33 = getelementptr inbounds [2 x i32], [2 x i32]* %ti, i64 0, i64 0
  %arrayidx34 = getelementptr inbounds [2 x i32], [2 x i32]* %ti, i64 0, i64 1
  %arrayidx125 = getelementptr inbounds [4 x i32], [4 x i32]* %sh, i64 0, i64 1
  %arrayidx126 = getelementptr inbounds [4 x i32], [4 x i32]* %sh, i64 0, i64 2
  %arrayidx127 = getelementptr inbounds [4 x i32], [4 x i32]* %sh, i64 0, i64 3
  %cmp128 = icmp eq i32 %rem2, 0
  %sub145 = sub nsw i32 8, %rem2
  %idx.ext131 = sext i32 %div to i64
  %add.ptr132 = getelementptr inbounds i8, i8* %1, i64 %idx.ext131
  %12 = add nsw i64 %idx.ext131, 1
  %arrayidx143 = getelementptr inbounds i8, i8* %1, i64 %12
  %13 = add nsw i64 %idx.ext131, 2
  %arrayidx143.1 = getelementptr inbounds i8, i8* %1, i64 %13
  %arrayidx150.1 = getelementptr inbounds i8, i8* %1, i64 1
  %14 = add nsw i64 %idx.ext131, 2
  %arrayidx137.2 = getelementptr inbounds i8, i8* %1, i64 %14
  %15 = add nsw i64 %idx.ext131, 3
  %arrayidx143.2 = getelementptr inbounds i8, i8* %1, i64 %15
  %arrayidx150.2 = getelementptr inbounds i8, i8* %1, i64 2
  %16 = add nsw i64 %idx.ext131, 3
  %arrayidx137.3 = getelementptr inbounds i8, i8* %1, i64 %16
  %17 = add nsw i64 %idx.ext131, 4
  %arrayidx143.3 = getelementptr inbounds i8, i8* %1, i64 %17
  %arrayidx150.3 = getelementptr inbounds i8, i8* %1, i64 3
  %18 = add nsw i64 %idx.ext131, 4
  %arrayidx137.4 = getelementptr inbounds i8, i8* %1, i64 %18
  %19 = add nsw i64 %idx.ext131, 5
  %arrayidx143.4 = getelementptr inbounds i8, i8* %1, i64 %19
  %arrayidx150.4556 = getelementptr inbounds [4 x i32], [4 x i32]* %sh, i64 0, i64 1
  %arrayidx150.4 = bitcast i32* %arrayidx150.4556 to i8*
  %20 = add nsw i64 %idx.ext131, 5
  %arrayidx137.5 = getelementptr inbounds i8, i8* %1, i64 %20
  %21 = add nsw i64 %idx.ext131, 6
  %arrayidx143.5 = getelementptr inbounds i8, i8* %1, i64 %21
  %arrayidx150.5 = getelementptr inbounds i8, i8* %1, i64 5
  %22 = add nsw i64 %idx.ext131, 6
  %arrayidx137.6 = getelementptr inbounds i8, i8* %1, i64 %22
  %23 = add nsw i64 %idx.ext131, 7
  %arrayidx143.6 = getelementptr inbounds i8, i8* %1, i64 %23
  %arrayidx150.6 = getelementptr inbounds i8, i8* %1, i64 6
  %24 = add nsw i64 %idx.ext131, 7
  %arrayidx137.7 = getelementptr inbounds i8, i8* %1, i64 %24
  %25 = add nsw i64 %idx.ext131, 8
  %arrayidx143.7 = getelementptr inbounds i8, i8* %1, i64 %25
  %arrayidx150.7 = getelementptr inbounds i8, i8* %1, i64 7
  br label %while.body

while.cond157.preheader:                          ; preds = %if.end
  br i1 %cmp159.not541, label %if.end303, label %while.body161.lr.ph

while.body161.lr.ph:                              ; preds = %while.cond157.preheader
  %arrayidx164 = getelementptr inbounds [2 x i32], [2 x i32]* %ti, i64 0, i64 0
  %arrayidx165 = getelementptr inbounds [2 x i32], [2 x i32]* %ti, i64 0, i64 1
  %arrayidx217 = getelementptr inbounds [4 x i32], [4 x i32]* %sh, i64 0, i64 1
  %arrayidx218 = getelementptr inbounds [4 x i32], [4 x i32]* %sh, i64 0, i64 2
  %arrayidx219 = getelementptr inbounds [4 x i32], [4 x i32]* %sh, i64 0, i64 3
  %cmp220 = icmp eq i32 %rem2, 0
  %sub241 = sub nsw i32 8, %rem2
  %idx.ext223 = sext i32 %div to i64
  %add.ptr224 = getelementptr inbounds i8, i8* %1, i64 %idx.ext223
  %26 = add nsw i64 %idx.ext223, 1
  %arrayidx239 = getelementptr inbounds i8, i8* %1, i64 %26
  %27 = add nsw i64 %idx.ext223, 2
  %arrayidx239.1 = getelementptr inbounds i8, i8* %1, i64 %27
  %arrayidx246.1 = getelementptr inbounds i8, i8* %1, i64 1
  %28 = add nsw i64 %idx.ext223, 2
  %arrayidx233.2 = getelementptr inbounds i8, i8* %1, i64 %28
  %29 = add nsw i64 %idx.ext223, 3
  %arrayidx239.2 = getelementptr inbounds i8, i8* %1, i64 %29
  %arrayidx246.2 = getelementptr inbounds i8, i8* %1, i64 2
  %30 = add nsw i64 %idx.ext223, 3
  %arrayidx233.3 = getelementptr inbounds i8, i8* %1, i64 %30
  %31 = add nsw i64 %idx.ext223, 4
  %arrayidx239.3 = getelementptr inbounds i8, i8* %1, i64 %31
  %arrayidx246.3 = getelementptr inbounds i8, i8* %1, i64 3
  %32 = add nsw i64 %idx.ext223, 4
  %arrayidx233.4 = getelementptr inbounds i8, i8* %1, i64 %32
  %33 = add nsw i64 %idx.ext223, 5
  %arrayidx239.4 = getelementptr inbounds i8, i8* %1, i64 %33
  %arrayidx246.4557 = getelementptr inbounds [4 x i32], [4 x i32]* %sh, i64 0, i64 1
  %arrayidx246.4 = bitcast i32* %arrayidx246.4557 to i8*
  %34 = add nsw i64 %idx.ext223, 5
  %arrayidx233.5 = getelementptr inbounds i8, i8* %1, i64 %34
  %35 = add nsw i64 %idx.ext223, 6
  %arrayidx239.5 = getelementptr inbounds i8, i8* %1, i64 %35
  %arrayidx246.5 = getelementptr inbounds i8, i8* %1, i64 5
  %36 = add nsw i64 %idx.ext223, 6
  %arrayidx233.6 = getelementptr inbounds i8, i8* %1, i64 %36
  %37 = add nsw i64 %idx.ext223, 7
  %arrayidx239.6 = getelementptr inbounds i8, i8* %1, i64 %37
  %arrayidx246.6 = getelementptr inbounds i8, i8* %1, i64 6
  %38 = add nsw i64 %idx.ext223, 7
  %arrayidx233.7 = getelementptr inbounds i8, i8* %1, i64 %38
  %39 = add nsw i64 %idx.ext223, 8
  %arrayidx239.7 = getelementptr inbounds i8, i8* %1, i64 %39
  %arrayidx246.7 = getelementptr inbounds i8, i8* %1, i64 7
  br label %while.body161

while.body:                                       ; preds = %while.body.lr.ph, %if.end155
  %in.addr.0538 = phi i8* [ %in, %while.body.lr.ph ], [ %add.ptr72, %if.end155 ]
  %out.addr.0537 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr116, %if.end155 ]
  %l.0536 = phi i64 [ %length, %while.body.lr.ph ], [ %sub, %if.end155 ]
  %v1.0535 = phi i32 [ %or27, %while.body.lr.ph ], [ %v1.1, %if.end155 ]
  %v0.0534 = phi i32 [ %or13, %while.body.lr.ph ], [ %v0.1, %if.end155 ]
  %sub = sub i64 %l.0536, %conv158
  store i32 %v0.0534, i32* %arrayidx33, align 4, !tbaa !7
  store i32 %v1.0535, i32* %arrayidx34, align 4, !tbaa !7
  call void @DES_encrypt1(i32* noundef nonnull %arrayidx33, %struct.DES_ks* noundef %schedule, i32 noundef 1) #5
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.0538, i64 %conv158
  switch i32 %div1, label %sw.epilog [
    i32 8, label %sw.bb
    i32 7, label %sw.bb39
    i32 6, label %sw.bb44
    i32 5, label %sw.bb49
    i32 4, label %sw.bb53
    i32 3, label %sw.bb57
    i32 2, label %sw.bb62
    i32 1, label %sw.bb67
  ]

sw.bb:                                            ; preds = %while.body
  %incdec.ptr36 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %40 = load i8, i8* %incdec.ptr36, align 1, !tbaa !4
  %conv37 = zext i8 %40 to i32
  %shl38 = shl nuw i32 %conv37, 24
  br label %sw.bb39

sw.bb39:                                          ; preds = %while.body, %sw.bb
  %d1.0 = phi i32 [ 0, %while.body ], [ %shl38, %sw.bb ]
  %in.addr.1 = phi i8* [ %add.ptr, %while.body ], [ %incdec.ptr36, %sw.bb ]
  %incdec.ptr40 = getelementptr inbounds i8, i8* %in.addr.1, i64 -1
  %41 = load i8, i8* %incdec.ptr40, align 1, !tbaa !4
  %conv41 = zext i8 %41 to i32
  %shl42 = shl nuw nsw i32 %conv41, 16
  %or43 = or i32 %shl42, %d1.0
  br label %sw.bb44

sw.bb44:                                          ; preds = %while.body, %sw.bb39
  %d1.1 = phi i32 [ 0, %while.body ], [ %or43, %sw.bb39 ]
  %in.addr.2 = phi i8* [ %add.ptr, %while.body ], [ %incdec.ptr40, %sw.bb39 ]
  %incdec.ptr45 = getelementptr inbounds i8, i8* %in.addr.2, i64 -1
  %42 = load i8, i8* %incdec.ptr45, align 1, !tbaa !4
  %conv46 = zext i8 %42 to i32
  %shl47 = shl nuw nsw i32 %conv46, 8
  %or48 = or i32 %shl47, %d1.1
  br label %sw.bb49

sw.bb49:                                          ; preds = %while.body, %sw.bb44
  %d1.2 = phi i32 [ 0, %while.body ], [ %or48, %sw.bb44 ]
  %in.addr.3 = phi i8* [ %add.ptr, %while.body ], [ %incdec.ptr45, %sw.bb44 ]
  %incdec.ptr50 = getelementptr inbounds i8, i8* %in.addr.3, i64 -1
  %43 = load i8, i8* %incdec.ptr50, align 1, !tbaa !4
  %conv51 = zext i8 %43 to i32
  %or52 = or i32 %d1.2, %conv51
  br label %sw.bb53

sw.bb53:                                          ; preds = %while.body, %sw.bb49
  %d1.3 = phi i32 [ 0, %while.body ], [ %or52, %sw.bb49 ]
  %in.addr.4 = phi i8* [ %add.ptr, %while.body ], [ %incdec.ptr50, %sw.bb49 ]
  %incdec.ptr54 = getelementptr inbounds i8, i8* %in.addr.4, i64 -1
  %44 = load i8, i8* %incdec.ptr54, align 1, !tbaa !4
  %conv55 = zext i8 %44 to i32
  %shl56 = shl nuw i32 %conv55, 24
  br label %sw.bb57

sw.bb57:                                          ; preds = %while.body, %sw.bb53
  %d1.4 = phi i32 [ 0, %while.body ], [ %d1.3, %sw.bb53 ]
  %d0.0 = phi i32 [ 0, %while.body ], [ %shl56, %sw.bb53 ]
  %in.addr.5 = phi i8* [ %add.ptr, %while.body ], [ %incdec.ptr54, %sw.bb53 ]
  %incdec.ptr58 = getelementptr inbounds i8, i8* %in.addr.5, i64 -1
  %45 = load i8, i8* %incdec.ptr58, align 1, !tbaa !4
  %conv59 = zext i8 %45 to i32
  %shl60 = shl nuw nsw i32 %conv59, 16
  %or61 = or i32 %shl60, %d0.0
  br label %sw.bb62

sw.bb62:                                          ; preds = %while.body, %sw.bb57
  %d1.5 = phi i32 [ 0, %while.body ], [ %d1.4, %sw.bb57 ]
  %d0.1 = phi i32 [ 0, %while.body ], [ %or61, %sw.bb57 ]
  %in.addr.6 = phi i8* [ %add.ptr, %while.body ], [ %incdec.ptr58, %sw.bb57 ]
  %incdec.ptr63 = getelementptr inbounds i8, i8* %in.addr.6, i64 -1
  %46 = load i8, i8* %incdec.ptr63, align 1, !tbaa !4
  %conv64 = zext i8 %46 to i32
  %shl65 = shl nuw nsw i32 %conv64, 8
  %or66 = or i32 %shl65, %d0.1
  br label %sw.bb67

sw.bb67:                                          ; preds = %while.body, %sw.bb62
  %d1.6 = phi i32 [ 0, %while.body ], [ %d1.5, %sw.bb62 ]
  %d0.2 = phi i32 [ 0, %while.body ], [ %or66, %sw.bb62 ]
  %in.addr.7 = phi i8* [ %add.ptr, %while.body ], [ %incdec.ptr63, %sw.bb62 ]
  %incdec.ptr68 = getelementptr inbounds i8, i8* %in.addr.7, i64 -1
  %47 = load i8, i8* %incdec.ptr68, align 1, !tbaa !4
  %conv69 = zext i8 %47 to i32
  %or70 = or i32 %d0.2, %conv69
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb67, %while.body
  %d1.7 = phi i32 [ 0, %while.body ], [ %d1.6, %sw.bb67 ]
  %d0.3 = phi i32 [ 0, %while.body ], [ %or70, %sw.bb67 ]
  %in.addr.8 = phi i8* [ %add.ptr, %while.body ], [ %incdec.ptr68, %sw.bb67 ]
  %add.ptr72 = getelementptr inbounds i8, i8* %in.addr.8, i64 %conv158
  %48 = load i32, i32* %arrayidx33, align 4, !tbaa !7
  %xor = xor i32 %48, %d0.3
  %49 = load i32, i32* %arrayidx34, align 4, !tbaa !7
  %xor75 = xor i32 %49, %d1.7
  %add.ptr77 = getelementptr inbounds i8, i8* %out.addr.0537, i64 %conv158
  switch i32 %div1, label %sw.epilog114 [
    i32 8, label %sw.bb78
    i32 7, label %sw.bb81
    i32 6, label %sw.bb86
    i32 5, label %sw.bb91
    i32 4, label %sw.bb95
    i32 3, label %sw.bb100
    i32 2, label %sw.bb105
    i32 1, label %sw.bb110
  ]

sw.bb78:                                          ; preds = %sw.epilog
  %shr = lshr i32 %xor75, 24
  %conv79 = trunc i32 %shr to i8
  %incdec.ptr80 = getelementptr inbounds i8, i8* %add.ptr77, i64 -1
  store i8 %conv79, i8* %incdec.ptr80, align 1, !tbaa !4
  br label %sw.bb81

sw.bb81:                                          ; preds = %sw.epilog, %sw.bb78
  %out.addr.1 = phi i8* [ %add.ptr77, %sw.epilog ], [ %incdec.ptr80, %sw.bb78 ]
  %shr82 = lshr i32 %xor75, 16
  %conv84 = trunc i32 %shr82 to i8
  %incdec.ptr85 = getelementptr inbounds i8, i8* %out.addr.1, i64 -1
  store i8 %conv84, i8* %incdec.ptr85, align 1, !tbaa !4
  br label %sw.bb86

sw.bb86:                                          ; preds = %sw.epilog, %sw.bb81
  %out.addr.2 = phi i8* [ %add.ptr77, %sw.epilog ], [ %incdec.ptr85, %sw.bb81 ]
  %shr87 = lshr i32 %xor75, 8
  %conv89 = trunc i32 %shr87 to i8
  %incdec.ptr90 = getelementptr inbounds i8, i8* %out.addr.2, i64 -1
  store i8 %conv89, i8* %incdec.ptr90, align 1, !tbaa !4
  br label %sw.bb91

sw.bb91:                                          ; preds = %sw.epilog, %sw.bb86
  %out.addr.3 = phi i8* [ %add.ptr77, %sw.epilog ], [ %incdec.ptr90, %sw.bb86 ]
  %conv93 = trunc i32 %xor75 to i8
  %incdec.ptr94 = getelementptr inbounds i8, i8* %out.addr.3, i64 -1
  store i8 %conv93, i8* %incdec.ptr94, align 1, !tbaa !4
  br label %sw.bb95

sw.bb95:                                          ; preds = %sw.epilog, %sw.bb91
  %out.addr.4 = phi i8* [ %add.ptr77, %sw.epilog ], [ %incdec.ptr94, %sw.bb91 ]
  %shr96 = lshr i32 %xor, 24
  %conv98 = trunc i32 %shr96 to i8
  %incdec.ptr99 = getelementptr inbounds i8, i8* %out.addr.4, i64 -1
  store i8 %conv98, i8* %incdec.ptr99, align 1, !tbaa !4
  br label %sw.bb100

sw.bb100:                                         ; preds = %sw.epilog, %sw.bb95
  %out.addr.5 = phi i8* [ %add.ptr77, %sw.epilog ], [ %incdec.ptr99, %sw.bb95 ]
  %shr101 = lshr i32 %xor, 16
  %conv103 = trunc i32 %shr101 to i8
  %incdec.ptr104 = getelementptr inbounds i8, i8* %out.addr.5, i64 -1
  store i8 %conv103, i8* %incdec.ptr104, align 1, !tbaa !4
  br label %sw.bb105

sw.bb105:                                         ; preds = %sw.epilog, %sw.bb100
  %out.addr.6 = phi i8* [ %add.ptr77, %sw.epilog ], [ %incdec.ptr104, %sw.bb100 ]
  %shr106 = lshr i32 %xor, 8
  %conv108 = trunc i32 %shr106 to i8
  %incdec.ptr109 = getelementptr inbounds i8, i8* %out.addr.6, i64 -1
  store i8 %conv108, i8* %incdec.ptr109, align 1, !tbaa !4
  br label %sw.bb110

sw.bb110:                                         ; preds = %sw.epilog, %sw.bb105
  %out.addr.7 = phi i8* [ %add.ptr77, %sw.epilog ], [ %incdec.ptr109, %sw.bb105 ]
  %conv112 = trunc i32 %xor to i8
  %incdec.ptr113 = getelementptr inbounds i8, i8* %out.addr.7, i64 -1
  store i8 %conv112, i8* %incdec.ptr113, align 1, !tbaa !4
  br label %sw.epilog114

sw.epilog114:                                     ; preds = %sw.bb110, %sw.epilog
  %out.addr.8 = phi i8* [ %add.ptr77, %sw.epilog ], [ %incdec.ptr113, %sw.bb110 ]
  %add.ptr116 = getelementptr inbounds i8, i8* %out.addr.8, i64 %conv158
  switch i32 %numbits, label %if.else123 [
    i32 32, label %if.end155
    i32 64, label %if.then122
  ]

if.then122:                                       ; preds = %sw.epilog114
  br label %if.end155

if.else123:                                       ; preds = %sw.epilog114
  store i32 %v0.0534, i32* %arraydecay, align 16, !tbaa !7
  store i32 %v1.0535, i32* %arrayidx125, align 4, !tbaa !7
  store i32 %xor, i32* %arrayidx126, align 8, !tbaa !7
  store i32 %xor75, i32* %arrayidx127, align 4, !tbaa !7
  br i1 %cmp128, label %if.then130, label %for.body.preheader

for.body.preheader:                               ; preds = %if.else123
  %50 = load i8, i8* %add.ptr132, align 1, !tbaa !4
  %conv138 = zext i8 %50 to i32
  %shl139 = shl i32 %conv138, %rem2
  %51 = load i8, i8* %arrayidx143, align 1, !tbaa !4
  %conv144 = zext i8 %51 to i32
  %shr146 = lshr i32 %conv144, %sub145
  %or147 = or i32 %shr146, %shl139
  %conv148 = trunc i32 %or147 to i8
  store i8 %conv148, i8* %1, align 16, !tbaa !4
  %52 = load i8, i8* %arrayidx143, align 1, !tbaa !4
  %conv138.1 = zext i8 %52 to i32
  %shl139.1 = shl i32 %conv138.1, %rem2
  %53 = load i8, i8* %arrayidx143.1, align 1, !tbaa !4
  %conv144.1 = zext i8 %53 to i32
  %shr146.1 = lshr i32 %conv144.1, %sub145
  %or147.1 = or i32 %shr146.1, %shl139.1
  %conv148.1 = trunc i32 %or147.1 to i8
  store i8 %conv148.1, i8* %arrayidx150.1, align 1, !tbaa !4
  %54 = load i8, i8* %arrayidx137.2, align 1, !tbaa !4
  %conv138.2 = zext i8 %54 to i32
  %shl139.2 = shl i32 %conv138.2, %rem2
  %55 = load i8, i8* %arrayidx143.2, align 1, !tbaa !4
  %conv144.2 = zext i8 %55 to i32
  %shr146.2 = lshr i32 %conv144.2, %sub145
  %or147.2 = or i32 %shr146.2, %shl139.2
  %conv148.2 = trunc i32 %or147.2 to i8
  store i8 %conv148.2, i8* %arrayidx150.2, align 2, !tbaa !4
  %56 = load i8, i8* %arrayidx137.3, align 1, !tbaa !4
  %conv138.3 = zext i8 %56 to i32
  %shl139.3 = shl i32 %conv138.3, %rem2
  %57 = load i8, i8* %arrayidx143.3, align 1, !tbaa !4
  %conv144.3 = zext i8 %57 to i32
  %shr146.3 = lshr i32 %conv144.3, %sub145
  %or147.3 = or i32 %shr146.3, %shl139.3
  %conv148.3 = trunc i32 %or147.3 to i8
  store i8 %conv148.3, i8* %arrayidx150.3, align 1, !tbaa !4
  %58 = load i8, i8* %arrayidx137.4, align 1, !tbaa !4
  %conv138.4 = zext i8 %58 to i32
  %shl139.4 = shl i32 %conv138.4, %rem2
  %59 = load i8, i8* %arrayidx143.4, align 1, !tbaa !4
  %conv144.4 = zext i8 %59 to i32
  %shr146.4 = lshr i32 %conv144.4, %sub145
  %or147.4 = or i32 %shr146.4, %shl139.4
  %conv148.4 = trunc i32 %or147.4 to i8
  store i8 %conv148.4, i8* %arrayidx150.4, align 4, !tbaa !4
  %60 = load i8, i8* %arrayidx137.5, align 1, !tbaa !4
  %conv138.5 = zext i8 %60 to i32
  %shl139.5 = shl i32 %conv138.5, %rem2
  %61 = load i8, i8* %arrayidx143.5, align 1, !tbaa !4
  %conv144.5 = zext i8 %61 to i32
  %shr146.5 = lshr i32 %conv144.5, %sub145
  %or147.5 = or i32 %shr146.5, %shl139.5
  %conv148.5 = trunc i32 %or147.5 to i8
  store i8 %conv148.5, i8* %arrayidx150.5, align 1, !tbaa !4
  %62 = load i8, i8* %arrayidx137.6, align 1, !tbaa !4
  %conv138.6 = zext i8 %62 to i32
  %shl139.6 = shl i32 %conv138.6, %rem2
  %63 = load i8, i8* %arrayidx143.6, align 1, !tbaa !4
  %conv144.6 = zext i8 %63 to i32
  %shr146.6 = lshr i32 %conv144.6, %sub145
  %or147.6 = or i32 %shr146.6, %shl139.6
  %conv148.6 = trunc i32 %or147.6 to i8
  store i8 %conv148.6, i8* %arrayidx150.6, align 2, !tbaa !4
  %64 = load i8, i8* %arrayidx137.7, align 1, !tbaa !4
  %conv138.7 = zext i8 %64 to i32
  %shl139.7 = shl i32 %conv138.7, %rem2
  %65 = load i8, i8* %arrayidx143.7, align 1, !tbaa !4
  %conv144.7 = zext i8 %65 to i32
  %shr146.7 = lshr i32 %conv144.7, %sub145
  %or147.7 = or i32 %shr146.7, %shl139.7
  %conv148.7 = trunc i32 %or147.7 to i8
  store i8 %conv148.7, i8* %arrayidx150.7, align 1, !tbaa !4
  br label %if.end151

if.then130:                                       ; preds = %if.else123
  %call = call i8* @memmove(i8* noundef nonnull %1, i8* noundef nonnull %add.ptr132, i64 noundef 8) #5
  br label %if.end151

if.end151:                                        ; preds = %for.body.preheader, %if.then130
  %66 = load i32, i32* %arraydecay, align 16, !tbaa !7
  %67 = load i32, i32* %arrayidx125, align 4, !tbaa !7
  br label %if.end155

if.end155:                                        ; preds = %sw.epilog114, %if.then122, %if.end151
  %v0.1 = phi i32 [ %xor, %if.then122 ], [ %66, %if.end151 ], [ %v1.0535, %sw.epilog114 ]
  %v1.1 = phi i32 [ %xor75, %if.then122 ], [ %67, %if.end151 ], [ %xor, %sw.epilog114 ]
  %cmp30.not = icmp ult i64 %sub, %conv158
  br i1 %cmp30.not, label %if.end303, label %while.body, !llvm.loop !9

while.body161:                                    ; preds = %while.body161.lr.ph, %sw.epilog299
  %in.addr.9546 = phi i8* [ %in, %while.body161.lr.ph ], [ %add.ptr207, %sw.epilog299 ]
  %out.addr.9545 = phi i8* [ %out, %while.body161.lr.ph ], [ %add.ptr301, %sw.epilog299 ]
  %l.1544 = phi i64 [ %length, %while.body161.lr.ph ], [ %sub163, %sw.epilog299 ]
  %v1.2543 = phi i32 [ %or27, %while.body161.lr.ph ], [ %v1.3, %sw.epilog299 ]
  %v0.2542 = phi i32 [ %or13, %while.body161.lr.ph ], [ %v0.3, %sw.epilog299 ]
  %sub163 = sub i64 %l.1544, %conv158
  store i32 %v0.2542, i32* %arrayidx164, align 4, !tbaa !7
  store i32 %v1.2543, i32* %arrayidx165, align 4, !tbaa !7
  call void @DES_encrypt1(i32* noundef nonnull %arrayidx164, %struct.DES_ks* noundef %schedule, i32 noundef 1) #5
  %add.ptr168 = getelementptr inbounds i8, i8* %in.addr.9546, i64 %conv158
  switch i32 %div1, label %sw.epilog205 [
    i32 8, label %sw.bb169
    i32 7, label %sw.bb173
    i32 6, label %sw.bb178
    i32 5, label %sw.bb183
    i32 4, label %sw.bb187
    i32 3, label %sw.bb191
    i32 2, label %sw.bb196
    i32 1, label %sw.bb201
  ]

sw.bb169:                                         ; preds = %while.body161
  %incdec.ptr170 = getelementptr inbounds i8, i8* %add.ptr168, i64 -1
  %68 = load i8, i8* %incdec.ptr170, align 1, !tbaa !4
  %conv171 = zext i8 %68 to i32
  %shl172 = shl nuw i32 %conv171, 24
  br label %sw.bb173

sw.bb173:                                         ; preds = %while.body161, %sw.bb169
  %d1.8 = phi i32 [ 0, %while.body161 ], [ %shl172, %sw.bb169 ]
  %in.addr.10 = phi i8* [ %add.ptr168, %while.body161 ], [ %incdec.ptr170, %sw.bb169 ]
  %incdec.ptr174 = getelementptr inbounds i8, i8* %in.addr.10, i64 -1
  %69 = load i8, i8* %incdec.ptr174, align 1, !tbaa !4
  %conv175 = zext i8 %69 to i32
  %shl176 = shl nuw nsw i32 %conv175, 16
  %or177 = or i32 %shl176, %d1.8
  br label %sw.bb178

sw.bb178:                                         ; preds = %while.body161, %sw.bb173
  %d1.9 = phi i32 [ 0, %while.body161 ], [ %or177, %sw.bb173 ]
  %in.addr.11 = phi i8* [ %add.ptr168, %while.body161 ], [ %incdec.ptr174, %sw.bb173 ]
  %incdec.ptr179 = getelementptr inbounds i8, i8* %in.addr.11, i64 -1
  %70 = load i8, i8* %incdec.ptr179, align 1, !tbaa !4
  %conv180 = zext i8 %70 to i32
  %shl181 = shl nuw nsw i32 %conv180, 8
  %or182 = or i32 %shl181, %d1.9
  br label %sw.bb183

sw.bb183:                                         ; preds = %while.body161, %sw.bb178
  %d1.10 = phi i32 [ 0, %while.body161 ], [ %or182, %sw.bb178 ]
  %in.addr.12 = phi i8* [ %add.ptr168, %while.body161 ], [ %incdec.ptr179, %sw.bb178 ]
  %incdec.ptr184 = getelementptr inbounds i8, i8* %in.addr.12, i64 -1
  %71 = load i8, i8* %incdec.ptr184, align 1, !tbaa !4
  %conv185 = zext i8 %71 to i32
  %or186 = or i32 %d1.10, %conv185
  br label %sw.bb187

sw.bb187:                                         ; preds = %while.body161, %sw.bb183
  %d1.11 = phi i32 [ 0, %while.body161 ], [ %or186, %sw.bb183 ]
  %in.addr.13 = phi i8* [ %add.ptr168, %while.body161 ], [ %incdec.ptr184, %sw.bb183 ]
  %incdec.ptr188 = getelementptr inbounds i8, i8* %in.addr.13, i64 -1
  %72 = load i8, i8* %incdec.ptr188, align 1, !tbaa !4
  %conv189 = zext i8 %72 to i32
  %shl190 = shl nuw i32 %conv189, 24
  br label %sw.bb191

sw.bb191:                                         ; preds = %while.body161, %sw.bb187
  %d1.12 = phi i32 [ 0, %while.body161 ], [ %d1.11, %sw.bb187 ]
  %d0.4 = phi i32 [ 0, %while.body161 ], [ %shl190, %sw.bb187 ]
  %in.addr.14 = phi i8* [ %add.ptr168, %while.body161 ], [ %incdec.ptr188, %sw.bb187 ]
  %incdec.ptr192 = getelementptr inbounds i8, i8* %in.addr.14, i64 -1
  %73 = load i8, i8* %incdec.ptr192, align 1, !tbaa !4
  %conv193 = zext i8 %73 to i32
  %shl194 = shl nuw nsw i32 %conv193, 16
  %or195 = or i32 %shl194, %d0.4
  br label %sw.bb196

sw.bb196:                                         ; preds = %while.body161, %sw.bb191
  %d1.13 = phi i32 [ 0, %while.body161 ], [ %d1.12, %sw.bb191 ]
  %d0.5 = phi i32 [ 0, %while.body161 ], [ %or195, %sw.bb191 ]
  %in.addr.15 = phi i8* [ %add.ptr168, %while.body161 ], [ %incdec.ptr192, %sw.bb191 ]
  %incdec.ptr197 = getelementptr inbounds i8, i8* %in.addr.15, i64 -1
  %74 = load i8, i8* %incdec.ptr197, align 1, !tbaa !4
  %conv198 = zext i8 %74 to i32
  %shl199 = shl nuw nsw i32 %conv198, 8
  %or200 = or i32 %shl199, %d0.5
  br label %sw.bb201

sw.bb201:                                         ; preds = %while.body161, %sw.bb196
  %d1.14 = phi i32 [ 0, %while.body161 ], [ %d1.13, %sw.bb196 ]
  %d0.6 = phi i32 [ 0, %while.body161 ], [ %or200, %sw.bb196 ]
  %in.addr.16 = phi i8* [ %add.ptr168, %while.body161 ], [ %incdec.ptr197, %sw.bb196 ]
  %incdec.ptr202 = getelementptr inbounds i8, i8* %in.addr.16, i64 -1
  %75 = load i8, i8* %incdec.ptr202, align 1, !tbaa !4
  %conv203 = zext i8 %75 to i32
  %or204 = or i32 %d0.6, %conv203
  br label %sw.epilog205

sw.epilog205:                                     ; preds = %sw.bb201, %while.body161
  %d1.15 = phi i32 [ 0, %while.body161 ], [ %d1.14, %sw.bb201 ]
  %d0.7 = phi i32 [ 0, %while.body161 ], [ %or204, %sw.bb201 ]
  %in.addr.17 = phi i8* [ %add.ptr168, %while.body161 ], [ %incdec.ptr202, %sw.bb201 ]
  %add.ptr207 = getelementptr inbounds i8, i8* %in.addr.17, i64 %conv158
  switch i32 %numbits, label %if.else215 [
    i32 32, label %if.end254
    i32 64, label %if.then214
  ]

if.then214:                                       ; preds = %sw.epilog205
  br label %if.end254

if.else215:                                       ; preds = %sw.epilog205
  store i32 %v0.2542, i32* %arraydecay, align 16, !tbaa !7
  store i32 %v1.2543, i32* %arrayidx217, align 4, !tbaa !7
  store i32 %d0.7, i32* %arrayidx218, align 8, !tbaa !7
  store i32 %d1.15, i32* %arrayidx219, align 4, !tbaa !7
  br i1 %cmp220, label %if.then222, label %for.body230.preheader

for.body230.preheader:                            ; preds = %if.else215
  %76 = load i8, i8* %add.ptr224, align 1, !tbaa !4
  %conv234 = zext i8 %76 to i32
  %shl235 = shl i32 %conv234, %rem2
  %77 = load i8, i8* %arrayidx239, align 1, !tbaa !4
  %conv240 = zext i8 %77 to i32
  %shr242 = lshr i32 %conv240, %sub241
  %or243 = or i32 %shr242, %shl235
  %conv244 = trunc i32 %or243 to i8
  store i8 %conv244, i8* %1, align 16, !tbaa !4
  %78 = load i8, i8* %arrayidx239, align 1, !tbaa !4
  %conv234.1 = zext i8 %78 to i32
  %shl235.1 = shl i32 %conv234.1, %rem2
  %79 = load i8, i8* %arrayidx239.1, align 1, !tbaa !4
  %conv240.1 = zext i8 %79 to i32
  %shr242.1 = lshr i32 %conv240.1, %sub241
  %or243.1 = or i32 %shr242.1, %shl235.1
  %conv244.1 = trunc i32 %or243.1 to i8
  store i8 %conv244.1, i8* %arrayidx246.1, align 1, !tbaa !4
  %80 = load i8, i8* %arrayidx233.2, align 1, !tbaa !4
  %conv234.2 = zext i8 %80 to i32
  %shl235.2 = shl i32 %conv234.2, %rem2
  %81 = load i8, i8* %arrayidx239.2, align 1, !tbaa !4
  %conv240.2 = zext i8 %81 to i32
  %shr242.2 = lshr i32 %conv240.2, %sub241
  %or243.2 = or i32 %shr242.2, %shl235.2
  %conv244.2 = trunc i32 %or243.2 to i8
  store i8 %conv244.2, i8* %arrayidx246.2, align 2, !tbaa !4
  %82 = load i8, i8* %arrayidx233.3, align 1, !tbaa !4
  %conv234.3 = zext i8 %82 to i32
  %shl235.3 = shl i32 %conv234.3, %rem2
  %83 = load i8, i8* %arrayidx239.3, align 1, !tbaa !4
  %conv240.3 = zext i8 %83 to i32
  %shr242.3 = lshr i32 %conv240.3, %sub241
  %or243.3 = or i32 %shr242.3, %shl235.3
  %conv244.3 = trunc i32 %or243.3 to i8
  store i8 %conv244.3, i8* %arrayidx246.3, align 1, !tbaa !4
  %84 = load i8, i8* %arrayidx233.4, align 1, !tbaa !4
  %conv234.4 = zext i8 %84 to i32
  %shl235.4 = shl i32 %conv234.4, %rem2
  %85 = load i8, i8* %arrayidx239.4, align 1, !tbaa !4
  %conv240.4 = zext i8 %85 to i32
  %shr242.4 = lshr i32 %conv240.4, %sub241
  %or243.4 = or i32 %shr242.4, %shl235.4
  %conv244.4 = trunc i32 %or243.4 to i8
  store i8 %conv244.4, i8* %arrayidx246.4, align 4, !tbaa !4
  %86 = load i8, i8* %arrayidx233.5, align 1, !tbaa !4
  %conv234.5 = zext i8 %86 to i32
  %shl235.5 = shl i32 %conv234.5, %rem2
  %87 = load i8, i8* %arrayidx239.5, align 1, !tbaa !4
  %conv240.5 = zext i8 %87 to i32
  %shr242.5 = lshr i32 %conv240.5, %sub241
  %or243.5 = or i32 %shr242.5, %shl235.5
  %conv244.5 = trunc i32 %or243.5 to i8
  store i8 %conv244.5, i8* %arrayidx246.5, align 1, !tbaa !4
  %88 = load i8, i8* %arrayidx233.6, align 1, !tbaa !4
  %conv234.6 = zext i8 %88 to i32
  %shl235.6 = shl i32 %conv234.6, %rem2
  %89 = load i8, i8* %arrayidx239.6, align 1, !tbaa !4
  %conv240.6 = zext i8 %89 to i32
  %shr242.6 = lshr i32 %conv240.6, %sub241
  %or243.6 = or i32 %shr242.6, %shl235.6
  %conv244.6 = trunc i32 %or243.6 to i8
  store i8 %conv244.6, i8* %arrayidx246.6, align 2, !tbaa !4
  %90 = load i8, i8* %arrayidx233.7, align 1, !tbaa !4
  %conv234.7 = zext i8 %90 to i32
  %shl235.7 = shl i32 %conv234.7, %rem2
  %91 = load i8, i8* %arrayidx239.7, align 1, !tbaa !4
  %conv240.7 = zext i8 %91 to i32
  %shr242.7 = lshr i32 %conv240.7, %sub241
  %or243.7 = or i32 %shr242.7, %shl235.7
  %conv244.7 = trunc i32 %or243.7 to i8
  store i8 %conv244.7, i8* %arrayidx246.7, align 1, !tbaa !4
  br label %if.end250

if.then222:                                       ; preds = %if.else215
  %call225 = call i8* @memmove(i8* noundef nonnull %1, i8* noundef nonnull %add.ptr224, i64 noundef 8) #5
  br label %if.end250

if.end250:                                        ; preds = %for.body230.preheader, %if.then222
  %92 = load i32, i32* %arraydecay, align 16, !tbaa !7
  %93 = load i32, i32* %arrayidx217, align 4, !tbaa !7
  br label %if.end254

if.end254:                                        ; preds = %sw.epilog205, %if.then214, %if.end250
  %v0.3 = phi i32 [ %d0.7, %if.then214 ], [ %92, %if.end250 ], [ %v1.2543, %sw.epilog205 ]
  %v1.3 = phi i32 [ %d1.15, %if.then214 ], [ %93, %if.end250 ], [ %d0.7, %sw.epilog205 ]
  %94 = load i32, i32* %arrayidx164, align 4, !tbaa !7
  %xor256 = xor i32 %94, %d0.7
  %95 = load i32, i32* %arrayidx165, align 4, !tbaa !7
  %xor258 = xor i32 %95, %d1.15
  %add.ptr260 = getelementptr inbounds i8, i8* %out.addr.9545, i64 %conv158
  switch i32 %div1, label %sw.epilog299 [
    i32 8, label %sw.bb261
    i32 7, label %sw.bb266
    i32 6, label %sw.bb271
    i32 5, label %sw.bb276
    i32 4, label %sw.bb280
    i32 3, label %sw.bb285
    i32 2, label %sw.bb290
    i32 1, label %sw.bb295
  ]

sw.bb261:                                         ; preds = %if.end254
  %shr262 = lshr i32 %xor258, 24
  %conv264 = trunc i32 %shr262 to i8
  %incdec.ptr265 = getelementptr inbounds i8, i8* %add.ptr260, i64 -1
  store i8 %conv264, i8* %incdec.ptr265, align 1, !tbaa !4
  br label %sw.bb266

sw.bb266:                                         ; preds = %if.end254, %sw.bb261
  %out.addr.10 = phi i8* [ %add.ptr260, %if.end254 ], [ %incdec.ptr265, %sw.bb261 ]
  %shr267 = lshr i32 %xor258, 16
  %conv269 = trunc i32 %shr267 to i8
  %incdec.ptr270 = getelementptr inbounds i8, i8* %out.addr.10, i64 -1
  store i8 %conv269, i8* %incdec.ptr270, align 1, !tbaa !4
  br label %sw.bb271

sw.bb271:                                         ; preds = %if.end254, %sw.bb266
  %out.addr.11 = phi i8* [ %add.ptr260, %if.end254 ], [ %incdec.ptr270, %sw.bb266 ]
  %shr272 = lshr i32 %xor258, 8
  %conv274 = trunc i32 %shr272 to i8
  %incdec.ptr275 = getelementptr inbounds i8, i8* %out.addr.11, i64 -1
  store i8 %conv274, i8* %incdec.ptr275, align 1, !tbaa !4
  br label %sw.bb276

sw.bb276:                                         ; preds = %if.end254, %sw.bb271
  %out.addr.12 = phi i8* [ %add.ptr260, %if.end254 ], [ %incdec.ptr275, %sw.bb271 ]
  %conv278 = trunc i32 %xor258 to i8
  %incdec.ptr279 = getelementptr inbounds i8, i8* %out.addr.12, i64 -1
  store i8 %conv278, i8* %incdec.ptr279, align 1, !tbaa !4
  br label %sw.bb280

sw.bb280:                                         ; preds = %if.end254, %sw.bb276
  %out.addr.13 = phi i8* [ %add.ptr260, %if.end254 ], [ %incdec.ptr279, %sw.bb276 ]
  %shr281 = lshr i32 %xor256, 24
  %conv283 = trunc i32 %shr281 to i8
  %incdec.ptr284 = getelementptr inbounds i8, i8* %out.addr.13, i64 -1
  store i8 %conv283, i8* %incdec.ptr284, align 1, !tbaa !4
  br label %sw.bb285

sw.bb285:                                         ; preds = %if.end254, %sw.bb280
  %out.addr.14 = phi i8* [ %add.ptr260, %if.end254 ], [ %incdec.ptr284, %sw.bb280 ]
  %shr286 = lshr i32 %xor256, 16
  %conv288 = trunc i32 %shr286 to i8
  %incdec.ptr289 = getelementptr inbounds i8, i8* %out.addr.14, i64 -1
  store i8 %conv288, i8* %incdec.ptr289, align 1, !tbaa !4
  br label %sw.bb290

sw.bb290:                                         ; preds = %if.end254, %sw.bb285
  %out.addr.15 = phi i8* [ %add.ptr260, %if.end254 ], [ %incdec.ptr289, %sw.bb285 ]
  %shr291 = lshr i32 %xor256, 8
  %conv293 = trunc i32 %shr291 to i8
  %incdec.ptr294 = getelementptr inbounds i8, i8* %out.addr.15, i64 -1
  store i8 %conv293, i8* %incdec.ptr294, align 1, !tbaa !4
  br label %sw.bb295

sw.bb295:                                         ; preds = %if.end254, %sw.bb290
  %out.addr.16 = phi i8* [ %add.ptr260, %if.end254 ], [ %incdec.ptr294, %sw.bb290 ]
  %conv297 = trunc i32 %xor256 to i8
  %incdec.ptr298 = getelementptr inbounds i8, i8* %out.addr.16, i64 -1
  store i8 %conv297, i8* %incdec.ptr298, align 1, !tbaa !4
  br label %sw.epilog299

sw.epilog299:                                     ; preds = %sw.bb295, %if.end254
  %out.addr.17 = phi i8* [ %add.ptr260, %if.end254 ], [ %incdec.ptr298, %sw.bb295 ]
  %add.ptr301 = getelementptr inbounds i8, i8* %out.addr.17, i64 %conv158
  %cmp159.not = icmp ult i64 %sub163, %conv158
  br i1 %cmp159.not, label %if.end303, label %while.body161, !llvm.loop !11

if.end303:                                        ; preds = %if.end155, %sw.epilog299, %while.cond.preheader, %while.cond157.preheader
  %v0.4 = phi i32 [ %or13, %while.cond157.preheader ], [ %or13, %while.cond.preheader ], [ %v0.3, %sw.epilog299 ], [ %v0.1, %if.end155 ]
  %v1.4 = phi i32 [ %or27, %while.cond157.preheader ], [ %or27, %while.cond.preheader ], [ %v1.3, %sw.epilog299 ], [ %v1.1, %if.end155 ]
  %conv306 = trunc i32 %v0.4 to i8
  store i8 %conv306, i8* %arrayidx, align 1, !tbaa !4
  %shr308 = lshr i32 %v0.4, 8
  %conv310 = trunc i32 %shr308 to i8
  store i8 %conv310, i8* %incdec.ptr, align 1, !tbaa !4
  %shr312 = lshr i32 %v0.4, 16
  %conv314 = trunc i32 %shr312 to i8
  store i8 %conv314, i8* %incdec.ptr4, align 1, !tbaa !4
  %shr316 = lshr i32 %v0.4, 24
  %conv318 = trunc i32 %shr316 to i8
  store i8 %conv318, i8* %incdec.ptr6, align 1, !tbaa !4
  %conv321 = trunc i32 %v1.4 to i8
  store i8 %conv321, i8* %incdec.ptr10, align 1, !tbaa !4
  %shr323 = lshr i32 %v1.4, 8
  %conv325 = trunc i32 %shr323 to i8
  store i8 %conv325, i8* %incdec.ptr14, align 1, !tbaa !4
  %shr327 = lshr i32 %v1.4, 16
  %conv329 = trunc i32 %shr327 to i8
  store i8 %conv329, i8* %incdec.ptr16, align 1, !tbaa !4
  %shr331 = lshr i32 %v1.4, 24
  %conv333 = trunc i32 %shr331 to i8
  store i8 %conv333, i8* %incdec.ptr20, align 1, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end303
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @DES_encrypt1(i32* noundef, %struct.DES_ks* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memmove(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
