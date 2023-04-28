; ModuleID = 'crypto/rc2/rc2_cbc.c'
source_filename = "crypto/rc2/rc2_cbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc2_key_st = type { [64 x i32] }

; Function Attrs: nofree noinline nosync nounwind uwtable
define void @RC2_cbc_encrypt(i8* nocapture noundef readonly %in, i8* nocapture noundef writeonly %out, i64 noundef %length, %struct.rc2_key_st* nocapture noundef readonly %ks, i8* noundef %iv, i32 noundef %encrypt) local_unnamed_addr #0 {
entry:
  %tin = alloca [2 x i64], align 16
  %0 = bitcast [2 x i64]* %tin to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #3
  %tobool.not = icmp eq i32 %encrypt, 0
  %incdec.ptr194 = getelementptr inbounds i8, i8* %iv, i64 1
  %1 = load i8, i8* %iv, align 1, !tbaa !4
  %conv195 = zext i8 %1 to i64
  %incdec.ptr196 = getelementptr inbounds i8, i8* %iv, i64 2
  %2 = load i8, i8* %incdec.ptr194, align 1, !tbaa !4
  %conv197 = zext i8 %2 to i64
  %shl198 = shl nuw nsw i64 %conv197, 8
  %or199 = or i64 %shl198, %conv195
  %incdec.ptr200 = getelementptr inbounds i8, i8* %iv, i64 3
  %3 = load i8, i8* %incdec.ptr196, align 1, !tbaa !4
  %conv201 = zext i8 %3 to i64
  %shl202 = shl nuw nsw i64 %conv201, 16
  %or203 = or i64 %or199, %shl202
  %incdec.ptr204 = getelementptr inbounds i8, i8* %iv, i64 4
  %4 = load i8, i8* %incdec.ptr200, align 1, !tbaa !4
  %conv205 = zext i8 %4 to i64
  %shl206 = shl nuw nsw i64 %conv205, 24
  %or207 = or i64 %or203, %shl206
  %incdec.ptr208 = getelementptr inbounds i8, i8* %iv, i64 5
  %5 = load i8, i8* %incdec.ptr204, align 1, !tbaa !4
  %conv209 = zext i8 %5 to i64
  %incdec.ptr210 = getelementptr inbounds i8, i8* %iv, i64 6
  %6 = load i8, i8* %incdec.ptr208, align 1, !tbaa !4
  %conv211 = zext i8 %6 to i64
  %shl212 = shl nuw nsw i64 %conv211, 8
  %or213 = or i64 %shl212, %conv209
  %incdec.ptr214 = getelementptr inbounds i8, i8* %iv, i64 7
  %7 = load i8, i8* %incdec.ptr210, align 1, !tbaa !4
  %conv215 = zext i8 %7 to i64
  %shl216 = shl nuw nsw i64 %conv215, 16
  %or217 = or i64 %or213, %shl216
  %8 = load i8, i8* %incdec.ptr214, align 1, !tbaa !4
  %conv219 = zext i8 %8 to i64
  %shl220 = shl nuw nsw i64 %conv219, 24
  %or221 = or i64 %or217, %shl220
  %cmp225640 = icmp sgt i64 %length, 7
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp225640, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.then
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %tin, i64 0, i64 0
  %arrayidx55 = getelementptr inbounds [2 x i64], [2 x i64]* %tin, i64 0, i64 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %l.0.in635 = phi i64 [ %length, %for.body.lr.ph ], [ %l.0, %for.body ]
  %tout1.0634 = phi i64 [ %or221, %for.body.lr.ph ], [ %18, %for.body ]
  %tout0.0633 = phi i64 [ %or207, %for.body.lr.ph ], [ %17, %for.body ]
  %in.addr.0632 = phi i8* [ %in, %for.body.lr.ph ], [ %incdec.ptr50, %for.body ]
  %out.addr.0631 = phi i8* [ %out, %for.body.lr.ph ], [ %incdec.ptr85, %for.body ]
  %l.0 = add nsw i64 %l.0.in635, -8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %in.addr.0632, i64 1
  %9 = load i8, i8* %in.addr.0632, align 1, !tbaa !4
  %conv27 = zext i8 %9 to i64
  %incdec.ptr28 = getelementptr inbounds i8, i8* %in.addr.0632, i64 2
  %10 = load i8, i8* %incdec.ptr26, align 1, !tbaa !4
  %conv29 = zext i8 %10 to i64
  %shl30 = shl nuw nsw i64 %conv29, 8
  %or31 = or i64 %shl30, %conv27
  %incdec.ptr32 = getelementptr inbounds i8, i8* %in.addr.0632, i64 3
  %11 = load i8, i8* %incdec.ptr28, align 1, !tbaa !4
  %conv33 = zext i8 %11 to i64
  %shl34 = shl nuw nsw i64 %conv33, 16
  %or35 = or i64 %or31, %shl34
  %incdec.ptr36 = getelementptr inbounds i8, i8* %in.addr.0632, i64 4
  %12 = load i8, i8* %incdec.ptr32, align 1, !tbaa !4
  %conv37 = zext i8 %12 to i64
  %shl38 = shl nuw nsw i64 %conv37, 24
  %or39 = or i64 %or35, %shl38
  %incdec.ptr40 = getelementptr inbounds i8, i8* %in.addr.0632, i64 5
  %13 = load i8, i8* %incdec.ptr36, align 1, !tbaa !4
  %conv41 = zext i8 %13 to i64
  %incdec.ptr42 = getelementptr inbounds i8, i8* %in.addr.0632, i64 6
  %14 = load i8, i8* %incdec.ptr40, align 1, !tbaa !4
  %conv43 = zext i8 %14 to i64
  %shl44 = shl nuw nsw i64 %conv43, 8
  %or45 = or i64 %shl44, %conv41
  %incdec.ptr46 = getelementptr inbounds i8, i8* %in.addr.0632, i64 7
  %15 = load i8, i8* %incdec.ptr42, align 1, !tbaa !4
  %conv47 = zext i8 %15 to i64
  %shl48 = shl nuw nsw i64 %conv47, 16
  %or49 = or i64 %or45, %shl48
  %incdec.ptr50 = getelementptr inbounds i8, i8* %in.addr.0632, i64 8
  %16 = load i8, i8* %incdec.ptr46, align 1, !tbaa !4
  %conv51 = zext i8 %16 to i64
  %shl52 = shl nuw nsw i64 %conv51, 24
  %or53 = or i64 %or49, %shl52
  %xor = xor i64 %or39, %tout0.0633
  %xor54 = xor i64 %or53, %tout1.0634
  store i64 %xor, i64* %arrayidx, align 16, !tbaa !7
  store i64 %xor54, i64* %arrayidx55, align 8, !tbaa !7
  call void @RC2_encrypt(i64* noundef nonnull %arrayidx, %struct.rc2_key_st* noundef %ks) #4
  %17 = load i64, i64* %arrayidx, align 16, !tbaa !7
  %conv57 = trunc i64 %17 to i8
  %incdec.ptr58 = getelementptr inbounds i8, i8* %out.addr.0631, i64 1
  store i8 %conv57, i8* %out.addr.0631, align 1, !tbaa !4
  %shr = lshr i64 %17, 8
  %conv60 = trunc i64 %shr to i8
  %incdec.ptr61 = getelementptr inbounds i8, i8* %out.addr.0631, i64 2
  store i8 %conv60, i8* %incdec.ptr58, align 1, !tbaa !4
  %shr62 = lshr i64 %17, 16
  %conv64 = trunc i64 %shr62 to i8
  %incdec.ptr65 = getelementptr inbounds i8, i8* %out.addr.0631, i64 3
  store i8 %conv64, i8* %incdec.ptr61, align 1, !tbaa !4
  %shr66 = lshr i64 %17, 24
  %conv68 = trunc i64 %shr66 to i8
  %incdec.ptr69 = getelementptr inbounds i8, i8* %out.addr.0631, i64 4
  store i8 %conv68, i8* %incdec.ptr65, align 1, !tbaa !4
  %18 = load i64, i64* %arrayidx55, align 8, !tbaa !7
  %conv72 = trunc i64 %18 to i8
  %incdec.ptr73 = getelementptr inbounds i8, i8* %out.addr.0631, i64 5
  store i8 %conv72, i8* %incdec.ptr69, align 1, !tbaa !4
  %shr74 = lshr i64 %18, 8
  %conv76 = trunc i64 %shr74 to i8
  %incdec.ptr77 = getelementptr inbounds i8, i8* %out.addr.0631, i64 6
  store i8 %conv76, i8* %incdec.ptr73, align 1, !tbaa !4
  %shr78 = lshr i64 %18, 16
  %conv80 = trunc i64 %shr78 to i8
  %incdec.ptr81 = getelementptr inbounds i8, i8* %out.addr.0631, i64 7
  store i8 %conv80, i8* %incdec.ptr77, align 1, !tbaa !4
  %shr82 = lshr i64 %18, 24
  %conv84 = trunc i64 %shr82 to i8
  %incdec.ptr85 = getelementptr inbounds i8, i8* %out.addr.0631, i64 8
  store i8 %conv84, i8* %incdec.ptr81, align 1, !tbaa !4
  %cmp = icmp ugt i64 %l.0.in635, 15
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !9

for.end:                                          ; preds = %for.body, %if.then
  %out.addr.0.lcssa = phi i8* [ %out, %if.then ], [ %incdec.ptr85, %for.body ]
  %in.addr.0.lcssa = phi i8* [ %in, %if.then ], [ %incdec.ptr50, %for.body ]
  %tout0.0.lcssa = phi i64 [ %or207, %if.then ], [ %17, %for.body ]
  %tout1.0.lcssa = phi i64 [ %or221, %if.then ], [ %18, %for.body ]
  %l.0.in.lcssa = phi i64 [ %length, %if.then ], [ %l.0, %for.body ]
  %cmp87.not = icmp eq i64 %l.0.in.lcssa, 0
  br i1 %cmp87.not, label %for.end.if.end_crit_edge, label %if.then89

for.end.if.end_crit_edge:                         ; preds = %for.end
  %.pre = trunc i64 %tout0.0.lcssa to i8
  %.pre652 = lshr i64 %tout0.0.lcssa, 8
  %.pre653 = trunc i64 %.pre652 to i8
  %.pre654 = lshr i64 %tout0.0.lcssa, 16
  %.pre655 = trunc i64 %.pre654 to i8
  %.pre656 = lshr i64 %tout0.0.lcssa, 24
  %.pre657 = trunc i64 %.pre656 to i8
  %.pre658 = trunc i64 %tout1.0.lcssa to i8
  %.pre659 = lshr i64 %tout1.0.lcssa, 8
  %.pre660 = trunc i64 %.pre659 to i8
  %.pre661 = lshr i64 %tout1.0.lcssa, 16
  %.pre662 = trunc i64 %.pre661 to i8
  %.pre663 = lshr i64 %tout1.0.lcssa, 24
  %.pre664 = trunc i64 %.pre663 to i8
  br label %if.end

if.then89:                                        ; preds = %for.end
  %add.ptr90 = getelementptr inbounds i8, i8* %in.addr.0.lcssa, i64 %l.0.in.lcssa
  switch i64 %l.0.in.lcssa, label %sw.epilog [
    i64 1, label %sw.bb123
    i64 7, label %sw.bb95
    i64 6, label %sw.bb100
    i64 5, label %sw.bb105
    i64 4, label %sw.bb109
    i64 3, label %sw.bb113
    i64 2, label %sw.bb118
  ]

sw.bb95:                                          ; preds = %if.then89
  %incdec.ptr96 = getelementptr inbounds i8, i8* %add.ptr90, i64 -1
  %19 = load i8, i8* %incdec.ptr96, align 1, !tbaa !4
  %conv97 = zext i8 %19 to i64
  %shl98 = shl nuw nsw i64 %conv97, 16
  br label %sw.bb100

sw.bb100:                                         ; preds = %if.then89, %sw.bb95
  %in.addr.2 = phi i8* [ %add.ptr90, %if.then89 ], [ %incdec.ptr96, %sw.bb95 ]
  %tin1.1 = phi i64 [ 0, %if.then89 ], [ %shl98, %sw.bb95 ]
  %incdec.ptr101 = getelementptr inbounds i8, i8* %in.addr.2, i64 -1
  %20 = load i8, i8* %incdec.ptr101, align 1, !tbaa !4
  %conv102 = zext i8 %20 to i64
  %shl103 = shl nuw nsw i64 %conv102, 8
  %or104 = or i64 %shl103, %tin1.1
  br label %sw.bb105

sw.bb105:                                         ; preds = %if.then89, %sw.bb100
  %in.addr.3 = phi i8* [ %add.ptr90, %if.then89 ], [ %incdec.ptr101, %sw.bb100 ]
  %tin1.2 = phi i64 [ 0, %if.then89 ], [ %or104, %sw.bb100 ]
  %incdec.ptr106 = getelementptr inbounds i8, i8* %in.addr.3, i64 -1
  %21 = load i8, i8* %incdec.ptr106, align 1, !tbaa !4
  %conv107 = zext i8 %21 to i64
  %or108 = or i64 %tin1.2, %conv107
  br label %sw.bb109

sw.bb109:                                         ; preds = %if.then89, %sw.bb105
  %in.addr.4 = phi i8* [ %add.ptr90, %if.then89 ], [ %incdec.ptr106, %sw.bb105 ]
  %tin1.3 = phi i64 [ 0, %if.then89 ], [ %or108, %sw.bb105 ]
  %incdec.ptr110 = getelementptr inbounds i8, i8* %in.addr.4, i64 -1
  %22 = load i8, i8* %incdec.ptr110, align 1, !tbaa !4
  %conv111 = zext i8 %22 to i64
  %shl112 = shl nuw nsw i64 %conv111, 24
  br label %sw.bb113

sw.bb113:                                         ; preds = %if.then89, %sw.bb109
  %in.addr.5 = phi i8* [ %add.ptr90, %if.then89 ], [ %incdec.ptr110, %sw.bb109 ]
  %tin0.0 = phi i64 [ 0, %if.then89 ], [ %shl112, %sw.bb109 ]
  %tin1.4 = phi i64 [ 0, %if.then89 ], [ %tin1.3, %sw.bb109 ]
  %incdec.ptr114 = getelementptr inbounds i8, i8* %in.addr.5, i64 -1
  %23 = load i8, i8* %incdec.ptr114, align 1, !tbaa !4
  %conv115 = zext i8 %23 to i64
  %shl116 = shl nuw nsw i64 %conv115, 16
  %or117 = or i64 %shl116, %tin0.0
  br label %sw.bb118

sw.bb118:                                         ; preds = %if.then89, %sw.bb113
  %in.addr.6 = phi i8* [ %add.ptr90, %if.then89 ], [ %incdec.ptr114, %sw.bb113 ]
  %tin0.1 = phi i64 [ 0, %if.then89 ], [ %or117, %sw.bb113 ]
  %tin1.5 = phi i64 [ 0, %if.then89 ], [ %tin1.4, %sw.bb113 ]
  %incdec.ptr119 = getelementptr inbounds i8, i8* %in.addr.6, i64 -1
  %24 = load i8, i8* %incdec.ptr119, align 1, !tbaa !4
  %conv120 = zext i8 %24 to i64
  %shl121 = shl nuw nsw i64 %conv120, 8
  %or122 = or i64 %shl121, %tin0.1
  br label %sw.bb123

sw.bb123:                                         ; preds = %if.then89, %sw.bb118
  %in.addr.7 = phi i8* [ %add.ptr90, %if.then89 ], [ %incdec.ptr119, %sw.bb118 ]
  %tin0.2 = phi i64 [ 0, %if.then89 ], [ %or122, %sw.bb118 ]
  %tin1.6 = phi i64 [ 0, %if.then89 ], [ %tin1.5, %sw.bb118 ]
  %incdec.ptr124 = getelementptr inbounds i8, i8* %in.addr.7, i64 -1
  %25 = load i8, i8* %incdec.ptr124, align 1, !tbaa !4
  %conv125 = zext i8 %25 to i64
  %or126 = or i64 %tin0.2, %conv125
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb123, %if.then89
  %tin0.3 = phi i64 [ 0, %if.then89 ], [ %or126, %sw.bb123 ]
  %tin1.7 = phi i64 [ 0, %if.then89 ], [ %tin1.6, %sw.bb123 ]
  %xor127 = xor i64 %tin0.3, %tout0.0.lcssa
  %xor128 = xor i64 %tin1.7, %tout1.0.lcssa
  %arrayidx129 = getelementptr inbounds [2 x i64], [2 x i64]* %tin, i64 0, i64 0
  store i64 %xor127, i64* %arrayidx129, align 16, !tbaa !7
  %arrayidx130 = getelementptr inbounds [2 x i64], [2 x i64]* %tin, i64 0, i64 1
  store i64 %xor128, i64* %arrayidx130, align 8, !tbaa !7
  call void @RC2_encrypt(i64* noundef nonnull %arrayidx129, %struct.rc2_key_st* noundef %ks) #4
  %26 = load i64, i64* %arrayidx129, align 16, !tbaa !7
  %conv134 = trunc i64 %26 to i8
  %incdec.ptr135 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 1
  store i8 %conv134, i8* %out.addr.0.lcssa, align 1, !tbaa !4
  %shr136 = lshr i64 %26, 8
  %conv138 = trunc i64 %shr136 to i8
  %incdec.ptr139 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 2
  store i8 %conv138, i8* %incdec.ptr135, align 1, !tbaa !4
  %shr140 = lshr i64 %26, 16
  %conv142 = trunc i64 %shr140 to i8
  %incdec.ptr143 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 3
  store i8 %conv142, i8* %incdec.ptr139, align 1, !tbaa !4
  %shr144 = lshr i64 %26, 24
  %conv146 = trunc i64 %shr144 to i8
  %incdec.ptr147 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 4
  store i8 %conv146, i8* %incdec.ptr143, align 1, !tbaa !4
  %27 = load i64, i64* %arrayidx130, align 8, !tbaa !7
  %conv150 = trunc i64 %27 to i8
  %incdec.ptr151 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 5
  store i8 %conv150, i8* %incdec.ptr147, align 1, !tbaa !4
  %shr152 = lshr i64 %27, 8
  %conv154 = trunc i64 %shr152 to i8
  %incdec.ptr155 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 6
  store i8 %conv154, i8* %incdec.ptr151, align 1, !tbaa !4
  %shr156 = lshr i64 %27, 16
  %conv158 = trunc i64 %shr156 to i8
  %incdec.ptr159 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 7
  store i8 %conv158, i8* %incdec.ptr155, align 1, !tbaa !4
  %shr160 = lshr i64 %27, 24
  %conv162 = trunc i64 %shr160 to i8
  store i8 %conv162, i8* %incdec.ptr159, align 1, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %for.end.if.end_crit_edge, %sw.epilog
  %conv192.pre-phi = phi i8 [ %.pre664, %for.end.if.end_crit_edge ], [ %conv162, %sw.epilog ]
  %conv188.pre-phi = phi i8 [ %.pre662, %for.end.if.end_crit_edge ], [ %conv158, %sw.epilog ]
  %conv184.pre-phi = phi i8 [ %.pre660, %for.end.if.end_crit_edge ], [ %conv154, %sw.epilog ]
  %conv180.pre-phi = phi i8 [ %.pre658, %for.end.if.end_crit_edge ], [ %conv150, %sw.epilog ]
  %conv177.pre-phi = phi i8 [ %.pre657, %for.end.if.end_crit_edge ], [ %conv146, %sw.epilog ]
  %conv173.pre-phi = phi i8 [ %.pre655, %for.end.if.end_crit_edge ], [ %conv142, %sw.epilog ]
  %conv169.pre-phi = phi i8 [ %.pre653, %for.end.if.end_crit_edge ], [ %conv138, %sw.epilog ]
  %conv165.pre-phi = phi i8 [ %.pre, %for.end.if.end_crit_edge ], [ %conv134, %sw.epilog ]
  store i8 %conv165.pre-phi, i8* %iv, align 1, !tbaa !4
  store i8 %conv169.pre-phi, i8* %incdec.ptr194, align 1, !tbaa !4
  store i8 %conv173.pre-phi, i8* %incdec.ptr196, align 1, !tbaa !4
  store i8 %conv177.pre-phi, i8* %incdec.ptr200, align 1, !tbaa !4
  store i8 %conv180.pre-phi, i8* %incdec.ptr204, align 1, !tbaa !4
  store i8 %conv184.pre-phi, i8* %incdec.ptr208, align 1, !tbaa !4
  store i8 %conv188.pre-phi, i8* %incdec.ptr210, align 1, !tbaa !4
  br label %if.end407

if.else:                                          ; preds = %entry
  br i1 %cmp225640, label %for.body227.lr.ph, label %for.end295

for.body227.lr.ph:                                ; preds = %if.else
  %arrayidx242 = getelementptr inbounds [2 x i64], [2 x i64]* %tin, i64 0, i64 0
  %arrayidx257 = getelementptr inbounds [2 x i64], [2 x i64]* %tin, i64 0, i64 1
  br label %for.body227

for.body227:                                      ; preds = %for.body227.lr.ph, %for.body227
  %l.1.in645 = phi i64 [ %length, %for.body227.lr.ph ], [ %l.1, %for.body227 ]
  %xor1.0644 = phi i64 [ %or221, %for.body227.lr.ph ], [ %or256, %for.body227 ]
  %xor0.0643 = phi i64 [ %or207, %for.body227.lr.ph ], [ %or241, %for.body227 ]
  %in.addr.8642 = phi i8* [ %in, %for.body227.lr.ph ], [ %incdec.ptr253, %for.body227 ]
  %out.addr.1641 = phi i8* [ %out, %for.body227.lr.ph ], [ %incdec.ptr292, %for.body227 ]
  %l.1 = add nsw i64 %l.1.in645, -8
  %incdec.ptr228 = getelementptr inbounds i8, i8* %in.addr.8642, i64 1
  %28 = load i8, i8* %in.addr.8642, align 1, !tbaa !4
  %conv229 = zext i8 %28 to i64
  %incdec.ptr230 = getelementptr inbounds i8, i8* %in.addr.8642, i64 2
  %29 = load i8, i8* %incdec.ptr228, align 1, !tbaa !4
  %conv231 = zext i8 %29 to i64
  %shl232 = shl nuw nsw i64 %conv231, 8
  %or233 = or i64 %shl232, %conv229
  %incdec.ptr234 = getelementptr inbounds i8, i8* %in.addr.8642, i64 3
  %30 = load i8, i8* %incdec.ptr230, align 1, !tbaa !4
  %conv235 = zext i8 %30 to i64
  %shl236 = shl nuw nsw i64 %conv235, 16
  %or237 = or i64 %or233, %shl236
  %incdec.ptr238 = getelementptr inbounds i8, i8* %in.addr.8642, i64 4
  %31 = load i8, i8* %incdec.ptr234, align 1, !tbaa !4
  %conv239 = zext i8 %31 to i64
  %shl240 = shl nuw nsw i64 %conv239, 24
  %or241 = or i64 %or237, %shl240
  store i64 %or241, i64* %arrayidx242, align 16, !tbaa !7
  %incdec.ptr243 = getelementptr inbounds i8, i8* %in.addr.8642, i64 5
  %32 = load i8, i8* %incdec.ptr238, align 1, !tbaa !4
  %conv244 = zext i8 %32 to i64
  %incdec.ptr245 = getelementptr inbounds i8, i8* %in.addr.8642, i64 6
  %33 = load i8, i8* %incdec.ptr243, align 1, !tbaa !4
  %conv246 = zext i8 %33 to i64
  %shl247 = shl nuw nsw i64 %conv246, 8
  %or248 = or i64 %shl247, %conv244
  %incdec.ptr249 = getelementptr inbounds i8, i8* %in.addr.8642, i64 7
  %34 = load i8, i8* %incdec.ptr245, align 1, !tbaa !4
  %conv250 = zext i8 %34 to i64
  %shl251 = shl nuw nsw i64 %conv250, 16
  %or252 = or i64 %or248, %shl251
  %incdec.ptr253 = getelementptr inbounds i8, i8* %in.addr.8642, i64 8
  %35 = load i8, i8* %incdec.ptr249, align 1, !tbaa !4
  %conv254 = zext i8 %35 to i64
  %shl255 = shl nuw nsw i64 %conv254, 24
  %or256 = or i64 %or252, %shl255
  store i64 %or256, i64* %arrayidx257, align 8, !tbaa !7
  call void @RC2_decrypt(i64* noundef nonnull %arrayidx242, %struct.rc2_key_st* noundef %ks) #4
  %36 = load i64, i64* %arrayidx242, align 16, !tbaa !7
  %xor260 = xor i64 %36, %xor0.0643
  %37 = load i64, i64* %arrayidx257, align 8, !tbaa !7
  %xor262 = xor i64 %37, %xor1.0644
  %conv264 = trunc i64 %xor260 to i8
  %incdec.ptr265 = getelementptr inbounds i8, i8* %out.addr.1641, i64 1
  store i8 %conv264, i8* %out.addr.1641, align 1, !tbaa !4
  %shr266 = lshr i64 %xor260, 8
  %conv268 = trunc i64 %shr266 to i8
  %incdec.ptr269 = getelementptr inbounds i8, i8* %out.addr.1641, i64 2
  store i8 %conv268, i8* %incdec.ptr265, align 1, !tbaa !4
  %shr270 = lshr i64 %xor260, 16
  %conv272 = trunc i64 %shr270 to i8
  %incdec.ptr273 = getelementptr inbounds i8, i8* %out.addr.1641, i64 3
  store i8 %conv272, i8* %incdec.ptr269, align 1, !tbaa !4
  %shr274 = lshr i64 %xor260, 24
  %conv276 = trunc i64 %shr274 to i8
  %incdec.ptr277 = getelementptr inbounds i8, i8* %out.addr.1641, i64 4
  store i8 %conv276, i8* %incdec.ptr273, align 1, !tbaa !4
  %conv279 = trunc i64 %xor262 to i8
  %incdec.ptr280 = getelementptr inbounds i8, i8* %out.addr.1641, i64 5
  store i8 %conv279, i8* %incdec.ptr277, align 1, !tbaa !4
  %shr281 = lshr i64 %xor262, 8
  %conv283 = trunc i64 %shr281 to i8
  %incdec.ptr284 = getelementptr inbounds i8, i8* %out.addr.1641, i64 6
  store i8 %conv283, i8* %incdec.ptr280, align 1, !tbaa !4
  %shr285 = lshr i64 %xor262, 16
  %conv287 = trunc i64 %shr285 to i8
  %incdec.ptr288 = getelementptr inbounds i8, i8* %out.addr.1641, i64 7
  store i8 %conv287, i8* %incdec.ptr284, align 1, !tbaa !4
  %shr289 = lshr i64 %xor262, 24
  %conv291 = trunc i64 %shr289 to i8
  %incdec.ptr292 = getelementptr inbounds i8, i8* %out.addr.1641, i64 8
  store i8 %conv291, i8* %incdec.ptr288, align 1, !tbaa !4
  %cmp225 = icmp ugt i64 %l.1.in645, 15
  br i1 %cmp225, label %for.body227, label %for.end295, !llvm.loop !11

for.end295:                                       ; preds = %for.body227, %if.else
  %out.addr.1.lcssa = phi i8* [ %out, %if.else ], [ %incdec.ptr292, %for.body227 ]
  %in.addr.8.lcssa = phi i8* [ %in, %if.else ], [ %incdec.ptr253, %for.body227 ]
  %xor0.0.lcssa = phi i64 [ %or207, %if.else ], [ %or241, %for.body227 ]
  %xor1.0.lcssa = phi i64 [ %or221, %if.else ], [ %or256, %for.body227 ]
  %l.1.in.lcssa = phi i64 [ %length, %if.else ], [ %l.1, %for.body227 ]
  %cmp296.not = icmp eq i64 %l.1.in.lcssa, 0
  br i1 %cmp296.not, label %if.end376, label %if.then298

if.then298:                                       ; preds = %for.end295
  %incdec.ptr299 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 1
  %38 = load i8, i8* %in.addr.8.lcssa, align 1, !tbaa !4
  %conv300 = zext i8 %38 to i64
  %incdec.ptr301 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 2
  %39 = load i8, i8* %incdec.ptr299, align 1, !tbaa !4
  %conv302 = zext i8 %39 to i64
  %shl303 = shl nuw nsw i64 %conv302, 8
  %or304 = or i64 %shl303, %conv300
  %incdec.ptr305 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 3
  %40 = load i8, i8* %incdec.ptr301, align 1, !tbaa !4
  %conv306 = zext i8 %40 to i64
  %shl307 = shl nuw nsw i64 %conv306, 16
  %or308 = or i64 %or304, %shl307
  %incdec.ptr309 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 4
  %41 = load i8, i8* %incdec.ptr305, align 1, !tbaa !4
  %conv310 = zext i8 %41 to i64
  %shl311 = shl nuw nsw i64 %conv310, 24
  %or312 = or i64 %or308, %shl311
  %arrayidx313 = getelementptr inbounds [2 x i64], [2 x i64]* %tin, i64 0, i64 0
  store i64 %or312, i64* %arrayidx313, align 16, !tbaa !7
  %incdec.ptr314 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 5
  %42 = load i8, i8* %incdec.ptr309, align 1, !tbaa !4
  %conv315 = zext i8 %42 to i64
  %incdec.ptr316 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 6
  %43 = load i8, i8* %incdec.ptr314, align 1, !tbaa !4
  %conv317 = zext i8 %43 to i64
  %shl318 = shl nuw nsw i64 %conv317, 8
  %or319 = or i64 %shl318, %conv315
  %incdec.ptr320 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 7
  %44 = load i8, i8* %incdec.ptr316, align 1, !tbaa !4
  %conv321 = zext i8 %44 to i64
  %shl322 = shl nuw nsw i64 %conv321, 16
  %or323 = or i64 %or319, %shl322
  %45 = load i8, i8* %incdec.ptr320, align 1, !tbaa !4
  %conv325 = zext i8 %45 to i64
  %shl326 = shl nuw nsw i64 %conv325, 24
  %or327 = or i64 %or323, %shl326
  %arrayidx328 = getelementptr inbounds [2 x i64], [2 x i64]* %tin, i64 0, i64 1
  store i64 %or327, i64* %arrayidx328, align 8, !tbaa !7
  call void @RC2_decrypt(i64* noundef nonnull %arrayidx313, %struct.rc2_key_st* noundef %ks) #4
  %46 = load i64, i64* %arrayidx313, align 16, !tbaa !7
  %xor331 = xor i64 %46, %xor0.0.lcssa
  %47 = load i64, i64* %arrayidx328, align 8, !tbaa !7
  %xor333 = xor i64 %47, %xor1.0.lcssa
  %add.ptr335 = getelementptr inbounds i8, i8* %out.addr.1.lcssa, i64 %l.1.in.lcssa
  switch i64 %l.1.in.lcssa, label %if.end376 [
    i64 1, label %sw.bb371
    i64 7, label %sw.bb342
    i64 6, label %sw.bb347
    i64 5, label %sw.bb352
    i64 4, label %sw.bb356
    i64 3, label %sw.bb361
    i64 2, label %sw.bb366
  ]

sw.bb342:                                         ; preds = %if.then298
  %shr343 = lshr i64 %xor333, 16
  %conv345 = trunc i64 %shr343 to i8
  %incdec.ptr346 = getelementptr inbounds i8, i8* %add.ptr335, i64 -1
  store i8 %conv345, i8* %incdec.ptr346, align 1, !tbaa !4
  br label %sw.bb347

sw.bb347:                                         ; preds = %if.then298, %sw.bb342
  %out.addr.3 = phi i8* [ %add.ptr335, %if.then298 ], [ %incdec.ptr346, %sw.bb342 ]
  %shr348 = lshr i64 %xor333, 8
  %conv350 = trunc i64 %shr348 to i8
  %incdec.ptr351 = getelementptr inbounds i8, i8* %out.addr.3, i64 -1
  store i8 %conv350, i8* %incdec.ptr351, align 1, !tbaa !4
  br label %sw.bb352

sw.bb352:                                         ; preds = %if.then298, %sw.bb347
  %out.addr.4 = phi i8* [ %add.ptr335, %if.then298 ], [ %incdec.ptr351, %sw.bb347 ]
  %conv354 = trunc i64 %xor333 to i8
  %incdec.ptr355 = getelementptr inbounds i8, i8* %out.addr.4, i64 -1
  store i8 %conv354, i8* %incdec.ptr355, align 1, !tbaa !4
  br label %sw.bb356

sw.bb356:                                         ; preds = %if.then298, %sw.bb352
  %out.addr.5 = phi i8* [ %add.ptr335, %if.then298 ], [ %incdec.ptr355, %sw.bb352 ]
  %shr357 = lshr i64 %xor331, 24
  %conv359 = trunc i64 %shr357 to i8
  %incdec.ptr360 = getelementptr inbounds i8, i8* %out.addr.5, i64 -1
  store i8 %conv359, i8* %incdec.ptr360, align 1, !tbaa !4
  br label %sw.bb361

sw.bb361:                                         ; preds = %if.then298, %sw.bb356
  %out.addr.6 = phi i8* [ %add.ptr335, %if.then298 ], [ %incdec.ptr360, %sw.bb356 ]
  %shr362 = lshr i64 %xor331, 16
  %conv364 = trunc i64 %shr362 to i8
  %incdec.ptr365 = getelementptr inbounds i8, i8* %out.addr.6, i64 -1
  store i8 %conv364, i8* %incdec.ptr365, align 1, !tbaa !4
  br label %sw.bb366

sw.bb366:                                         ; preds = %if.then298, %sw.bb361
  %out.addr.7 = phi i8* [ %add.ptr335, %if.then298 ], [ %incdec.ptr365, %sw.bb361 ]
  %shr367 = lshr i64 %xor331, 8
  %conv369 = trunc i64 %shr367 to i8
  %incdec.ptr370 = getelementptr inbounds i8, i8* %out.addr.7, i64 -1
  store i8 %conv369, i8* %incdec.ptr370, align 1, !tbaa !4
  br label %sw.bb371

sw.bb371:                                         ; preds = %if.then298, %sw.bb366
  %out.addr.8 = phi i8* [ %add.ptr335, %if.then298 ], [ %incdec.ptr370, %sw.bb366 ]
  %conv373 = trunc i64 %xor331 to i8
  %incdec.ptr374 = getelementptr inbounds i8, i8* %out.addr.8, i64 -1
  store i8 %conv373, i8* %incdec.ptr374, align 1, !tbaa !4
  br label %if.end376

if.end376:                                        ; preds = %if.then298, %sw.bb371, %for.end295
  %xor0.1 = phi i64 [ %xor0.0.lcssa, %for.end295 ], [ %or312, %sw.bb371 ], [ %or312, %if.then298 ]
  %xor1.1 = phi i64 [ %xor1.0.lcssa, %for.end295 ], [ %or327, %sw.bb371 ], [ %or327, %if.then298 ]
  %conv378 = trunc i64 %xor0.1 to i8
  store i8 %conv378, i8* %iv, align 1, !tbaa !4
  %shr380 = lshr i64 %xor0.1, 8
  %conv382 = trunc i64 %shr380 to i8
  store i8 %conv382, i8* %incdec.ptr194, align 1, !tbaa !4
  %shr384 = lshr i64 %xor0.1, 16
  %conv386 = trunc i64 %shr384 to i8
  store i8 %conv386, i8* %incdec.ptr196, align 1, !tbaa !4
  %shr388 = lshr i64 %xor0.1, 24
  %conv390 = trunc i64 %shr388 to i8
  store i8 %conv390, i8* %incdec.ptr200, align 1, !tbaa !4
  %conv393 = trunc i64 %xor1.1 to i8
  store i8 %conv393, i8* %incdec.ptr204, align 1, !tbaa !4
  %shr395 = lshr i64 %xor1.1, 8
  %conv397 = trunc i64 %shr395 to i8
  store i8 %conv397, i8* %incdec.ptr208, align 1, !tbaa !4
  %shr399 = lshr i64 %xor1.1, 16
  %conv401 = trunc i64 %shr399 to i8
  store i8 %conv401, i8* %incdec.ptr210, align 1, !tbaa !4
  %shr403 = lshr i64 %xor1.1, 24
  %conv405 = trunc i64 %shr403 to i8
  br label %if.end407

if.end407:                                        ; preds = %if.end376, %if.end
  %conv405.sink = phi i8 [ %conv405, %if.end376 ], [ %conv192.pre-phi, %if.end ]
  store i8 %conv405.sink, i8* %incdec.ptr214, align 1, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define void @RC2_encrypt(i64* nocapture noundef %d, %struct.rc2_key_st* nocapture noundef readonly %key) local_unnamed_addr #2 {
entry:
  %0 = load i64, i64* %d, align 8, !tbaa !7
  %conv = trunc i64 %0 to i32
  %and = and i32 %conv, 65535
  %shr = lshr i64 %0, 16
  %conv1 = trunc i64 %shr to i32
  %arrayidx2 = getelementptr inbounds i64, i64* %d, i64 1
  %1 = load i64, i64* %arrayidx2, align 8, !tbaa !7
  %conv3 = trunc i64 %1 to i32
  %and4 = and i32 %conv3, 65535
  %shr5 = lshr i64 %1, 16
  %conv6 = trunc i64 %shr5 to i32
  %arrayidx7 = getelementptr inbounds %struct.rc2_key_st, %struct.rc2_key_st* %key, i64 0, i32 0, i64 0
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %if.end, %entry
  %p0.0.ph = phi i32* [ %incdec.ptr41, %if.end ], [ %arrayidx7, %entry ]
  %x0.0.ph = phi i32 [ %add56, %if.end ], [ %and, %entry ]
  %x1.0.ph = phi i32 [ %add60, %if.end ], [ %conv1, %entry ]
  %x2.0.ph = phi i32 [ %add64, %if.end ], [ %and4, %entry ]
  %x3.0.ph = phi i32 [ %add68, %if.end ], [ %conv6, %entry ]
  %n.0.ph = phi i32 [ %dec48, %if.end ], [ 3, %entry ]
  %i.0.ph = phi i32 [ %cond, %if.end ], [ 5, %entry ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer, %for.cond
  %p0.0 = phi i32* [ %incdec.ptr41, %for.cond ], [ %p0.0.ph, %for.cond.outer ]
  %x0.0 = phi i32 [ %or, %for.cond ], [ %x0.0.ph, %for.cond.outer ]
  %x1.0 = phi i32 [ %or24, %for.cond ], [ %x1.0.ph, %for.cond.outer ]
  %x2.0 = phi i32 [ %or35, %for.cond ], [ %x2.0.ph, %for.cond.outer ]
  %x3.0 = phi i32 [ %or46, %for.cond ], [ %x3.0.ph, %for.cond.outer ]
  %i.0 = phi i32 [ %dec, %for.cond ], [ %i.0.ph, %for.cond.outer ]
  %neg = xor i32 %x3.0, -1
  %and8 = and i32 %x1.0, %neg
  %add = add i32 %and8, %x0.0
  %and9 = and i32 %x3.0, %x2.0
  %add10 = add i32 %add, %and9
  %incdec.ptr = getelementptr inbounds i32, i32* %p0.0, i64 1
  %2 = load i32, i32* %p0.0, align 4, !tbaa !12
  %add11 = add i32 %add10, %2
  %and12 = and i32 %add11, 65535
  %shl = shl nuw nsw i32 %and12, 1
  %shr13 = lshr i32 %and12, 15
  %or = or i32 %shl, %shr13
  %neg14 = xor i32 %or, -1
  %and15 = and i32 %x2.0, %neg14
  %and17 = and i32 %or, %x3.0
  %incdec.ptr19 = getelementptr inbounds i32, i32* %p0.0, i64 2
  %3 = load i32, i32* %incdec.ptr, align 4, !tbaa !12
  %add16 = add i32 %3, %x1.0
  %add18 = add i32 %add16, %and15
  %add20 = add i32 %add18, %and17
  %and21 = and i32 %add20, 65535
  %shl22 = shl nuw nsw i32 %and21, 2
  %shr23 = lshr i32 %and21, 14
  %or24 = or i32 %shl22, %shr23
  %neg25 = xor i32 %or24, -1
  %and26 = and i32 %x3.0, %neg25
  %and28 = and i32 %or24, %or
  %incdec.ptr30 = getelementptr inbounds i32, i32* %p0.0, i64 3
  %4 = load i32, i32* %incdec.ptr19, align 4, !tbaa !12
  %add27 = add i32 %4, %x2.0
  %add29 = add i32 %add27, %and26
  %add31 = add i32 %add29, %and28
  %and32 = and i32 %add31, 65535
  %shl33 = shl nuw nsw i32 %and32, 3
  %shr34 = lshr i32 %and32, 13
  %or35 = or i32 %shl33, %shr34
  %neg36 = xor i32 %or35, -1
  %and37 = and i32 %or, %neg36
  %and39 = and i32 %or35, %or24
  %incdec.ptr41 = getelementptr inbounds i32, i32* %p0.0, i64 4
  %5 = load i32, i32* %incdec.ptr30, align 4, !tbaa !12
  %add38 = add i32 %5, %x3.0
  %add40 = add i32 %add38, %and37
  %add42 = add i32 %add40, %and39
  %and43 = and i32 %add42, 65535
  %shl44 = shl nuw nsw i32 %and43, 5
  %shr45 = lshr i32 %and43, 11
  %or46 = or i32 %shl44, %shr45
  %dec = add nsw i32 %i.0, -1
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %for.cond

if.then:                                          ; preds = %for.cond
  %dec48 = add nsw i32 %n.0.ph, -1
  %cmp49 = icmp eq i32 %dec48, 0
  br i1 %cmp49, label %for.end, label %if.end

if.end:                                           ; preds = %if.then
  %cmp52 = icmp eq i32 %dec48, 2
  %cond = select i1 %cmp52, i32 6, i32 5
  %and54 = and i32 %or46, 63
  %idxprom = zext i32 %and54 to i64
  %arrayidx55 = getelementptr inbounds %struct.rc2_key_st, %struct.rc2_key_st* %key, i64 0, i32 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx55, align 4, !tbaa !12
  %add56 = add i32 %6, %or
  %and57 = and i32 %add56, 63
  %idxprom58 = zext i32 %and57 to i64
  %arrayidx59 = getelementptr inbounds %struct.rc2_key_st, %struct.rc2_key_st* %key, i64 0, i32 0, i64 %idxprom58
  %7 = load i32, i32* %arrayidx59, align 4, !tbaa !12
  %add60 = add i32 %7, %or24
  %and61 = and i32 %add60, 63
  %idxprom62 = zext i32 %and61 to i64
  %arrayidx63 = getelementptr inbounds %struct.rc2_key_st, %struct.rc2_key_st* %key, i64 0, i32 0, i64 %idxprom62
  %8 = load i32, i32* %arrayidx63, align 4, !tbaa !12
  %add64 = add i32 %8, %or35
  %and65 = and i32 %add64, 63
  %idxprom66 = zext i32 %and65 to i64
  %arrayidx67 = getelementptr inbounds %struct.rc2_key_st, %struct.rc2_key_st* %key, i64 0, i32 0, i64 %idxprom66
  %9 = load i32, i32* %arrayidx67, align 4, !tbaa !12
  %add68 = add i32 %9, %or46
  br label %for.cond.outer

for.end:                                          ; preds = %if.then
  %and70 = and i32 %or, 65535
  %10 = shl i32 %or24, 16
  %or75142 = or i32 %10, %and70
  %or75 = zext i32 %or75142 to i64
  store i64 %or75, i64* %d, align 8, !tbaa !7
  %and77 = and i32 %or35, 65535
  %11 = shl i32 %or46, 16
  %or82143 = or i32 %11, %and77
  %or82 = zext i32 %or82143 to i64
  store i64 %or82, i64* %arrayidx2, align 8, !tbaa !7
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define void @RC2_decrypt(i64* nocapture noundef %d, %struct.rc2_key_st* nocapture noundef readonly %key) local_unnamed_addr #2 {
entry:
  %0 = load i64, i64* %d, align 8, !tbaa !7
  %conv = trunc i64 %0 to i32
  %and = and i32 %conv, 65535
  %shr = lshr i64 %0, 16
  %conv1 = trunc i64 %shr to i32
  %arrayidx2 = getelementptr inbounds i64, i64* %d, i64 1
  %1 = load i64, i64* %arrayidx2, align 8, !tbaa !7
  %conv3 = trunc i64 %1 to i32
  %and4 = and i32 %conv3, 65535
  %shr5 = lshr i64 %1, 16
  %conv6 = trunc i64 %shr5 to i32
  %arrayidx7 = getelementptr inbounds %struct.rc2_key_st, %struct.rc2_key_st* %key, i64 0, i32 0, i64 63
  br label %for.cond

for.cond:                                         ; preds = %if.end79, %entry
  %p0.0 = phi i32* [ %arrayidx7, %entry ], [ %incdec.ptr50, %if.end79 ]
  %x0.0 = phi i32 [ %and, %entry ], [ %x0.1, %if.end79 ]
  %x1.0 = phi i32 [ %conv1, %entry ], [ %x1.1, %if.end79 ]
  %x2.0 = phi i32 [ %and4, %entry ], [ %x2.1, %if.end79 ]
  %x3.0 = phi i32 [ %conv6, %entry ], [ %x3.1, %if.end79 ]
  %n.0 = phi i32 [ 3, %entry ], [ %n.1, %if.end79 ]
  %i.0 = phi i32 [ 5, %entry ], [ %i.1, %if.end79 ]
  %shl = shl i32 %x3.0, 11
  %shr10 = lshr i32 %x3.0, 5
  %or = or i32 %shl, %shr10
  %neg = xor i32 %x2.0, -1
  %and12 = and i32 %x0.0, %neg
  %and13 = and i32 %x2.0, %x1.0
  %incdec.ptr = getelementptr inbounds i32, i32* %p0.0, i64 -1
  %2 = load i32, i32* %p0.0, align 4, !tbaa !12
  %3 = or i32 %and12, %and13
  %4 = add i32 %3, %2
  %sub15 = sub i32 %or, %4
  %and16 = and i32 %sub15, 65535
  %shl17 = shl nuw nsw i32 %x2.0, 13
  %shr18 = lshr i32 %x2.0, 3
  %or19 = or i32 %shl17, %shr18
  %neg21 = xor i32 %x1.0, -1
  %and22 = and i32 %sub15, %neg21
  %and24 = and i32 %x1.0, %x0.0
  %incdec.ptr26 = getelementptr inbounds i32, i32* %p0.0, i64 -2
  %5 = load i32, i32* %incdec.ptr, align 4, !tbaa !12
  %6 = add i32 %and24, %5
  %7 = add i32 %6, %and22
  %sub27 = sub i32 %or19, %7
  %and28 = and i32 %sub27, 65535
  %shl29 = shl i32 %x1.0, 14
  %shr30 = lshr i32 %x1.0, 2
  %or31 = or i32 %shl29, %shr30
  %neg33 = xor i32 %x0.0, -1
  %and34 = and i32 %sub27, %neg33
  %and36 = and i32 %sub15, %x0.0
  %incdec.ptr38 = getelementptr inbounds i32, i32* %p0.0, i64 -3
  %8 = load i32, i32* %incdec.ptr26, align 4, !tbaa !12
  %9 = add i32 %and36, %8
  %10 = add i32 %9, %and34
  %sub39 = sub i32 %or31, %10
  %shl41 = shl nsw i32 %x0.0, 15
  %shr42 = lshr i32 %x0.0, 1
  %or43 = or i32 %shl41, %shr42
  %neg45 = xor i32 %and16, -1
  %and46 = and i32 %sub39, %neg45
  %and48 = and i32 %sub27, %sub15
  %11 = or i32 %and46, %and48
  %incdec.ptr50 = getelementptr inbounds i32, i32* %p0.0, i64 -4
  %12 = load i32, i32* %incdec.ptr38, align 4, !tbaa !12
  %13 = add i32 %12, %11
  %sub51 = sub i32 %or43, %13
  %and52 = and i32 %sub51, 65535
  %dec = add nsw i32 %i.0, -1
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %if.end79

if.then:                                          ; preds = %for.cond
  %dec54 = add nsw i32 %n.0, -1
  %cmp55 = icmp eq i32 %dec54, 0
  br i1 %cmp55, label %for.end, label %if.end

if.end:                                           ; preds = %if.then
  %cmp58 = icmp eq i32 %dec54, 2
  %cond = select i1 %cmp58, i32 6, i32 5
  %and60 = and i32 %sub27, 63
  %idxprom = zext i32 %and60 to i64
  %arrayidx61 = getelementptr inbounds %struct.rc2_key_st, %struct.rc2_key_st* %key, i64 0, i32 0, i64 %idxprom
  %14 = load i32, i32* %arrayidx61, align 4, !tbaa !12
  %sub62 = sub i32 %sub15, %14
  %and63 = and i32 %sub62, 65535
  %and64 = and i32 %sub39, 63
  %idxprom65 = zext i32 %and64 to i64
  %arrayidx66 = getelementptr inbounds %struct.rc2_key_st, %struct.rc2_key_st* %key, i64 0, i32 0, i64 %idxprom65
  %15 = load i32, i32* %arrayidx66, align 4, !tbaa !12
  %sub67 = sub i32 %sub27, %15
  %and68 = and i32 %sub67, 65535
  %and69 = and i32 %sub51, 63
  %idxprom70 = zext i32 %and69 to i64
  %arrayidx71 = getelementptr inbounds %struct.rc2_key_st, %struct.rc2_key_st* %key, i64 0, i32 0, i64 %idxprom70
  %16 = load i32, i32* %arrayidx71, align 4, !tbaa !12
  %sub72 = sub i32 %sub39, %16
  %and74 = and i32 %sub62, 63
  %idxprom75 = zext i32 %and74 to i64
  %arrayidx76 = getelementptr inbounds %struct.rc2_key_st, %struct.rc2_key_st* %key, i64 0, i32 0, i64 %idxprom75
  %17 = load i32, i32* %arrayidx76, align 4, !tbaa !12
  %sub77 = sub i32 %sub51, %17
  %and78 = and i32 %sub77, 65535
  br label %if.end79

if.end79:                                         ; preds = %if.end, %for.cond
  %x0.1 = phi i32 [ %and78, %if.end ], [ %and52, %for.cond ]
  %x1.1.in = phi i32 [ %sub72, %if.end ], [ %sub39, %for.cond ]
  %x2.1 = phi i32 [ %and68, %if.end ], [ %and28, %for.cond ]
  %x3.1 = phi i32 [ %and63, %if.end ], [ %and16, %for.cond ]
  %n.1 = phi i32 [ %dec54, %if.end ], [ %n.0, %for.cond ]
  %i.1 = phi i32 [ %cond, %if.end ], [ %dec, %for.cond ]
  %x1.1 = and i32 %x1.1.in, 65535
  br label %for.cond

for.end:                                          ; preds = %if.then
  %18 = shl i32 %sub39, 16
  %or85153 = or i32 %and52, %18
  %or85 = zext i32 %or85153 to i64
  store i64 %or85, i64* %d, align 8, !tbaa !7
  %19 = shl i32 %sub15, 16
  %or92154 = or i32 %and28, %19
  %or92 = zext i32 %or92154 to i64
  store i64 %or92, i64* %arrayidx2, align 8, !tbaa !7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin "no-builtins" }

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
!8 = !{!"long", !5, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !5, i64 0}
