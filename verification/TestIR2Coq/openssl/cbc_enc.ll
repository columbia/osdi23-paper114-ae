; ModuleID = 'crypto/des/cbc_enc.c'
source_filename = "crypto/des/cbc_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DES_ks = type { [16 x %union.anon] }
%union.anon = type { [2 x i32] }

; Function Attrs: noinline nounwind uwtable
define void @DES_cbc_encrypt(i8* nocapture noundef readonly %in, i8* nocapture noundef writeonly %out, i64 noundef %length, %struct.DES_ks* noundef %_schedule, [8 x i8]* nocapture noundef readonly %ivec, i32 noundef %enc) local_unnamed_addr #0 {
entry:
  %tin = alloca [2 x i32], align 4
  %0 = bitcast [2 x i32]* %tin to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #3
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 0
  %tobool.not = icmp eq i32 %enc, 0
  %incdec.ptr164 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 1
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !4
  %conv165 = zext i8 %1 to i32
  %incdec.ptr166 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 2
  %2 = load i8, i8* %incdec.ptr164, align 1, !tbaa !4
  %conv167 = zext i8 %2 to i32
  %shl168 = shl nuw nsw i32 %conv167, 8
  %or169 = or i32 %shl168, %conv165
  %incdec.ptr170 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 3
  %3 = load i8, i8* %incdec.ptr166, align 1, !tbaa !4
  %conv171 = zext i8 %3 to i32
  %shl172 = shl nuw nsw i32 %conv171, 16
  %or173 = or i32 %or169, %shl172
  %incdec.ptr174 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 4
  %4 = load i8, i8* %incdec.ptr170, align 1, !tbaa !4
  %conv175 = zext i8 %4 to i32
  %shl176 = shl nuw i32 %conv175, 24
  %or177 = or i32 %or173, %shl176
  %incdec.ptr178 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 5
  %5 = load i8, i8* %incdec.ptr174, align 1, !tbaa !4
  %conv179 = zext i8 %5 to i32
  %incdec.ptr180 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 6
  %6 = load i8, i8* %incdec.ptr178, align 1, !tbaa !4
  %conv181 = zext i8 %6 to i32
  %shl182 = shl nuw nsw i32 %conv181, 8
  %or183 = or i32 %shl182, %conv179
  %incdec.ptr184 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 7
  %7 = load i8, i8* %incdec.ptr180, align 1, !tbaa !4
  %conv185 = zext i8 %7 to i32
  %shl186 = shl nuw nsw i32 %conv185, 16
  %or187 = or i32 %or183, %shl186
  %8 = load i8, i8* %incdec.ptr184, align 1, !tbaa !4
  %conv189 = zext i8 %8 to i32
  %shl190 = shl nuw i32 %conv189, 24
  %or191 = or i32 %or187, %shl190
  %cmp194544 = icmp sgt i64 %length, 7
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp194544, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.then
  %arrayidx54 = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 0
  %arrayidx56 = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %l.0.in539 = phi i64 [ %length, %for.body.lr.ph ], [ %l.0, %for.body ]
  %tout1.0538 = phi i32 [ %or191, %for.body.lr.ph ], [ %18, %for.body ]
  %tout0.0537 = phi i32 [ %or177, %for.body.lr.ph ], [ %17, %for.body ]
  %in.addr.0536 = phi i8* [ %in, %for.body.lr.ph ], [ %incdec.ptr50, %for.body ]
  %out.addr.0535 = phi i8* [ %out, %for.body.lr.ph ], [ %incdec.ptr86, %for.body ]
  %l.0 = add nsw i64 %l.0.in539, -8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %in.addr.0536, i64 1
  %9 = load i8, i8* %in.addr.0536, align 1, !tbaa !4
  %conv27 = zext i8 %9 to i32
  %incdec.ptr28 = getelementptr inbounds i8, i8* %in.addr.0536, i64 2
  %10 = load i8, i8* %incdec.ptr26, align 1, !tbaa !4
  %conv29 = zext i8 %10 to i32
  %shl30 = shl nuw nsw i32 %conv29, 8
  %or31 = or i32 %shl30, %conv27
  %incdec.ptr32 = getelementptr inbounds i8, i8* %in.addr.0536, i64 3
  %11 = load i8, i8* %incdec.ptr28, align 1, !tbaa !4
  %conv33 = zext i8 %11 to i32
  %shl34 = shl nuw nsw i32 %conv33, 16
  %or35 = or i32 %or31, %shl34
  %incdec.ptr36 = getelementptr inbounds i8, i8* %in.addr.0536, i64 4
  %12 = load i8, i8* %incdec.ptr32, align 1, !tbaa !4
  %conv37 = zext i8 %12 to i32
  %shl38 = shl nuw i32 %conv37, 24
  %or39 = or i32 %or35, %shl38
  %incdec.ptr40 = getelementptr inbounds i8, i8* %in.addr.0536, i64 5
  %13 = load i8, i8* %incdec.ptr36, align 1, !tbaa !4
  %conv41 = zext i8 %13 to i32
  %incdec.ptr42 = getelementptr inbounds i8, i8* %in.addr.0536, i64 6
  %14 = load i8, i8* %incdec.ptr40, align 1, !tbaa !4
  %conv43 = zext i8 %14 to i32
  %shl44 = shl nuw nsw i32 %conv43, 8
  %or45 = or i32 %shl44, %conv41
  %incdec.ptr46 = getelementptr inbounds i8, i8* %in.addr.0536, i64 7
  %15 = load i8, i8* %incdec.ptr42, align 1, !tbaa !4
  %conv47 = zext i8 %15 to i32
  %shl48 = shl nuw nsw i32 %conv47, 16
  %or49 = or i32 %or45, %shl48
  %incdec.ptr50 = getelementptr inbounds i8, i8* %in.addr.0536, i64 8
  %16 = load i8, i8* %incdec.ptr46, align 1, !tbaa !4
  %conv51 = zext i8 %16 to i32
  %shl52 = shl nuw i32 %conv51, 24
  %or53 = or i32 %or49, %shl52
  %xor = xor i32 %or39, %tout0.0537
  store i32 %xor, i32* %arrayidx54, align 4, !tbaa !7
  %xor55 = xor i32 %or53, %tout1.0538
  store i32 %xor55, i32* %arrayidx56, align 4, !tbaa !7
  call void @DES_encrypt1(i32* noundef nonnull %arrayidx54, %struct.DES_ks* noundef %_schedule, i32 noundef 1) #4
  %17 = load i32, i32* %arrayidx54, align 4, !tbaa !7
  %conv58 = trunc i32 %17 to i8
  %incdec.ptr59 = getelementptr inbounds i8, i8* %out.addr.0535, i64 1
  store i8 %conv58, i8* %out.addr.0535, align 1, !tbaa !4
  %shr = lshr i32 %17, 8
  %conv61 = trunc i32 %shr to i8
  %incdec.ptr62 = getelementptr inbounds i8, i8* %out.addr.0535, i64 2
  store i8 %conv61, i8* %incdec.ptr59, align 1, !tbaa !4
  %shr63 = lshr i32 %17, 16
  %conv65 = trunc i32 %shr63 to i8
  %incdec.ptr66 = getelementptr inbounds i8, i8* %out.addr.0535, i64 3
  store i8 %conv65, i8* %incdec.ptr62, align 1, !tbaa !4
  %shr67 = lshr i32 %17, 24
  %conv69 = trunc i32 %shr67 to i8
  %incdec.ptr70 = getelementptr inbounds i8, i8* %out.addr.0535, i64 4
  store i8 %conv69, i8* %incdec.ptr66, align 1, !tbaa !4
  %18 = load i32, i32* %arrayidx56, align 4, !tbaa !7
  %conv73 = trunc i32 %18 to i8
  %incdec.ptr74 = getelementptr inbounds i8, i8* %out.addr.0535, i64 5
  store i8 %conv73, i8* %incdec.ptr70, align 1, !tbaa !4
  %shr75 = lshr i32 %18, 8
  %conv77 = trunc i32 %shr75 to i8
  %incdec.ptr78 = getelementptr inbounds i8, i8* %out.addr.0535, i64 6
  store i8 %conv77, i8* %incdec.ptr74, align 1, !tbaa !4
  %shr79 = lshr i32 %18, 16
  %conv81 = trunc i32 %shr79 to i8
  %incdec.ptr82 = getelementptr inbounds i8, i8* %out.addr.0535, i64 7
  store i8 %conv81, i8* %incdec.ptr78, align 1, !tbaa !4
  %shr83 = lshr i32 %18, 24
  %conv85 = trunc i32 %shr83 to i8
  %incdec.ptr86 = getelementptr inbounds i8, i8* %out.addr.0535, i64 8
  store i8 %conv85, i8* %incdec.ptr82, align 1, !tbaa !4
  %cmp = icmp ugt i64 %l.0.in539, 15
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !9

for.end:                                          ; preds = %for.body, %if.then
  %out.addr.0.lcssa = phi i8* [ %out, %if.then ], [ %incdec.ptr86, %for.body ]
  %in.addr.0.lcssa = phi i8* [ %in, %if.then ], [ %incdec.ptr50, %for.body ]
  %tout0.0.lcssa = phi i32 [ %or177, %if.then ], [ %17, %for.body ]
  %tout1.0.lcssa = phi i32 [ %or191, %if.then ], [ %18, %for.body ]
  %l.0.in.lcssa = phi i64 [ %length, %if.then ], [ %l.0, %for.body ]
  %cmp88.not = icmp eq i64 %l.0.in.lcssa, 0
  br i1 %cmp88.not, label %if.end346, label %if.then90

if.then90:                                        ; preds = %for.end
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.0.lcssa, i64 %l.0.in.lcssa
  switch i64 %l.0.in.lcssa, label %sw.epilog [
    i64 1, label %sw.bb123
    i64 7, label %sw.bb95
    i64 6, label %sw.bb100
    i64 5, label %sw.bb105
    i64 4, label %sw.bb109
    i64 3, label %sw.bb113
    i64 2, label %sw.bb118
  ]

sw.bb95:                                          ; preds = %if.then90
  %incdec.ptr96 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %19 = load i8, i8* %incdec.ptr96, align 1, !tbaa !4
  %conv97 = zext i8 %19 to i32
  %shl98 = shl nuw nsw i32 %conv97, 16
  br label %sw.bb100

sw.bb100:                                         ; preds = %if.then90, %sw.bb95
  %in.addr.2 = phi i8* [ %add.ptr, %if.then90 ], [ %incdec.ptr96, %sw.bb95 ]
  %tin1.1 = phi i32 [ 0, %if.then90 ], [ %shl98, %sw.bb95 ]
  %incdec.ptr101 = getelementptr inbounds i8, i8* %in.addr.2, i64 -1
  %20 = load i8, i8* %incdec.ptr101, align 1, !tbaa !4
  %conv102 = zext i8 %20 to i32
  %shl103 = shl nuw nsw i32 %conv102, 8
  %or104 = or i32 %shl103, %tin1.1
  br label %sw.bb105

sw.bb105:                                         ; preds = %if.then90, %sw.bb100
  %in.addr.3 = phi i8* [ %add.ptr, %if.then90 ], [ %incdec.ptr101, %sw.bb100 ]
  %tin1.2 = phi i32 [ 0, %if.then90 ], [ %or104, %sw.bb100 ]
  %incdec.ptr106 = getelementptr inbounds i8, i8* %in.addr.3, i64 -1
  %21 = load i8, i8* %incdec.ptr106, align 1, !tbaa !4
  %conv107 = zext i8 %21 to i32
  %or108 = or i32 %tin1.2, %conv107
  br label %sw.bb109

sw.bb109:                                         ; preds = %if.then90, %sw.bb105
  %in.addr.4 = phi i8* [ %add.ptr, %if.then90 ], [ %incdec.ptr106, %sw.bb105 ]
  %tin1.3 = phi i32 [ 0, %if.then90 ], [ %or108, %sw.bb105 ]
  %incdec.ptr110 = getelementptr inbounds i8, i8* %in.addr.4, i64 -1
  %22 = load i8, i8* %incdec.ptr110, align 1, !tbaa !4
  %conv111 = zext i8 %22 to i32
  %shl112 = shl nuw i32 %conv111, 24
  br label %sw.bb113

sw.bb113:                                         ; preds = %if.then90, %sw.bb109
  %in.addr.5 = phi i8* [ %add.ptr, %if.then90 ], [ %incdec.ptr110, %sw.bb109 ]
  %tin0.0 = phi i32 [ 0, %if.then90 ], [ %shl112, %sw.bb109 ]
  %tin1.4 = phi i32 [ 0, %if.then90 ], [ %tin1.3, %sw.bb109 ]
  %incdec.ptr114 = getelementptr inbounds i8, i8* %in.addr.5, i64 -1
  %23 = load i8, i8* %incdec.ptr114, align 1, !tbaa !4
  %conv115 = zext i8 %23 to i32
  %shl116 = shl nuw nsw i32 %conv115, 16
  %or117 = or i32 %shl116, %tin0.0
  br label %sw.bb118

sw.bb118:                                         ; preds = %if.then90, %sw.bb113
  %in.addr.6 = phi i8* [ %add.ptr, %if.then90 ], [ %incdec.ptr114, %sw.bb113 ]
  %tin0.1 = phi i32 [ 0, %if.then90 ], [ %or117, %sw.bb113 ]
  %tin1.5 = phi i32 [ 0, %if.then90 ], [ %tin1.4, %sw.bb113 ]
  %incdec.ptr119 = getelementptr inbounds i8, i8* %in.addr.6, i64 -1
  %24 = load i8, i8* %incdec.ptr119, align 1, !tbaa !4
  %conv120 = zext i8 %24 to i32
  %shl121 = shl nuw nsw i32 %conv120, 8
  %or122 = or i32 %shl121, %tin0.1
  br label %sw.bb123

sw.bb123:                                         ; preds = %if.then90, %sw.bb118
  %in.addr.7 = phi i8* [ %add.ptr, %if.then90 ], [ %incdec.ptr119, %sw.bb118 ]
  %tin0.2 = phi i32 [ 0, %if.then90 ], [ %or122, %sw.bb118 ]
  %tin1.6 = phi i32 [ 0, %if.then90 ], [ %tin1.5, %sw.bb118 ]
  %incdec.ptr124 = getelementptr inbounds i8, i8* %in.addr.7, i64 -1
  %25 = load i8, i8* %incdec.ptr124, align 1, !tbaa !4
  %conv125 = zext i8 %25 to i32
  %or126 = or i32 %tin0.2, %conv125
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb123, %if.then90
  %tin0.3 = phi i32 [ 0, %if.then90 ], [ %or126, %sw.bb123 ]
  %tin1.7 = phi i32 [ 0, %if.then90 ], [ %tin1.6, %sw.bb123 ]
  %xor127 = xor i32 %tin0.3, %tout0.0.lcssa
  %arrayidx128 = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 0
  store i32 %xor127, i32* %arrayidx128, align 4, !tbaa !7
  %xor129 = xor i32 %tin1.7, %tout1.0.lcssa
  %arrayidx130 = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 1
  store i32 %xor129, i32* %arrayidx130, align 4, !tbaa !7
  call void @DES_encrypt1(i32* noundef nonnull %arrayidx128, %struct.DES_ks* noundef %_schedule, i32 noundef 1) #4
  %26 = load i32, i32* %arrayidx128, align 4, !tbaa !7
  %conv134 = trunc i32 %26 to i8
  %incdec.ptr135 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 1
  store i8 %conv134, i8* %out.addr.0.lcssa, align 1, !tbaa !4
  %shr136 = lshr i32 %26, 8
  %conv138 = trunc i32 %shr136 to i8
  %incdec.ptr139 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 2
  store i8 %conv138, i8* %incdec.ptr135, align 1, !tbaa !4
  %shr140 = lshr i32 %26, 16
  %conv142 = trunc i32 %shr140 to i8
  %incdec.ptr143 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 3
  store i8 %conv142, i8* %incdec.ptr139, align 1, !tbaa !4
  %shr144 = lshr i32 %26, 24
  %conv146 = trunc i32 %shr144 to i8
  %incdec.ptr147 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 4
  store i8 %conv146, i8* %incdec.ptr143, align 1, !tbaa !4
  %27 = load i32, i32* %arrayidx130, align 4, !tbaa !7
  %conv150 = trunc i32 %27 to i8
  %incdec.ptr151 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 5
  store i8 %conv150, i8* %incdec.ptr147, align 1, !tbaa !4
  %shr152 = lshr i32 %27, 8
  %conv154 = trunc i32 %shr152 to i8
  %incdec.ptr155 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 6
  store i8 %conv154, i8* %incdec.ptr151, align 1, !tbaa !4
  %shr156 = lshr i32 %27, 16
  %conv158 = trunc i32 %shr156 to i8
  %incdec.ptr159 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 7
  store i8 %conv158, i8* %incdec.ptr155, align 1, !tbaa !4
  %shr160 = lshr i32 %27, 24
  %conv162 = trunc i32 %shr160 to i8
  store i8 %conv162, i8* %incdec.ptr159, align 1, !tbaa !4
  br label %if.end346

if.else:                                          ; preds = %entry
  br i1 %cmp194544, label %for.body196.lr.ph, label %for.end264

for.body196.lr.ph:                                ; preds = %if.else
  %arrayidx211 = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 0
  %arrayidx226 = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 1
  br label %for.body196

for.body196:                                      ; preds = %for.body196.lr.ph, %for.body196
  %l.1.in549 = phi i64 [ %length, %for.body196.lr.ph ], [ %l.1, %for.body196 ]
  %xor1.0548 = phi i32 [ %or191, %for.body196.lr.ph ], [ %or225, %for.body196 ]
  %xor0.0547 = phi i32 [ %or177, %for.body196.lr.ph ], [ %or210, %for.body196 ]
  %in.addr.8546 = phi i8* [ %in, %for.body196.lr.ph ], [ %incdec.ptr222, %for.body196 ]
  %out.addr.1545 = phi i8* [ %out, %for.body196.lr.ph ], [ %incdec.ptr261, %for.body196 ]
  %l.1 = add nsw i64 %l.1.in549, -8
  %incdec.ptr197 = getelementptr inbounds i8, i8* %in.addr.8546, i64 1
  %28 = load i8, i8* %in.addr.8546, align 1, !tbaa !4
  %conv198 = zext i8 %28 to i32
  %incdec.ptr199 = getelementptr inbounds i8, i8* %in.addr.8546, i64 2
  %29 = load i8, i8* %incdec.ptr197, align 1, !tbaa !4
  %conv200 = zext i8 %29 to i32
  %shl201 = shl nuw nsw i32 %conv200, 8
  %or202 = or i32 %shl201, %conv198
  %incdec.ptr203 = getelementptr inbounds i8, i8* %in.addr.8546, i64 3
  %30 = load i8, i8* %incdec.ptr199, align 1, !tbaa !4
  %conv204 = zext i8 %30 to i32
  %shl205 = shl nuw nsw i32 %conv204, 16
  %or206 = or i32 %or202, %shl205
  %incdec.ptr207 = getelementptr inbounds i8, i8* %in.addr.8546, i64 4
  %31 = load i8, i8* %incdec.ptr203, align 1, !tbaa !4
  %conv208 = zext i8 %31 to i32
  %shl209 = shl nuw i32 %conv208, 24
  %or210 = or i32 %or206, %shl209
  store i32 %or210, i32* %arrayidx211, align 4, !tbaa !7
  %incdec.ptr212 = getelementptr inbounds i8, i8* %in.addr.8546, i64 5
  %32 = load i8, i8* %incdec.ptr207, align 1, !tbaa !4
  %conv213 = zext i8 %32 to i32
  %incdec.ptr214 = getelementptr inbounds i8, i8* %in.addr.8546, i64 6
  %33 = load i8, i8* %incdec.ptr212, align 1, !tbaa !4
  %conv215 = zext i8 %33 to i32
  %shl216 = shl nuw nsw i32 %conv215, 8
  %or217 = or i32 %shl216, %conv213
  %incdec.ptr218 = getelementptr inbounds i8, i8* %in.addr.8546, i64 7
  %34 = load i8, i8* %incdec.ptr214, align 1, !tbaa !4
  %conv219 = zext i8 %34 to i32
  %shl220 = shl nuw nsw i32 %conv219, 16
  %or221 = or i32 %or217, %shl220
  %incdec.ptr222 = getelementptr inbounds i8, i8* %in.addr.8546, i64 8
  %35 = load i8, i8* %incdec.ptr218, align 1, !tbaa !4
  %conv223 = zext i8 %35 to i32
  %shl224 = shl nuw i32 %conv223, 24
  %or225 = or i32 %or221, %shl224
  store i32 %or225, i32* %arrayidx226, align 4, !tbaa !7
  call void @DES_encrypt1(i32* noundef nonnull %arrayidx211, %struct.DES_ks* noundef %_schedule, i32 noundef 0) #4
  %36 = load i32, i32* %arrayidx211, align 4, !tbaa !7
  %xor229 = xor i32 %36, %xor0.0547
  %37 = load i32, i32* %arrayidx226, align 4, !tbaa !7
  %xor231 = xor i32 %37, %xor1.0548
  %conv233 = trunc i32 %xor229 to i8
  %incdec.ptr234 = getelementptr inbounds i8, i8* %out.addr.1545, i64 1
  store i8 %conv233, i8* %out.addr.1545, align 1, !tbaa !4
  %shr235 = lshr i32 %xor229, 8
  %conv237 = trunc i32 %shr235 to i8
  %incdec.ptr238 = getelementptr inbounds i8, i8* %out.addr.1545, i64 2
  store i8 %conv237, i8* %incdec.ptr234, align 1, !tbaa !4
  %shr239 = lshr i32 %xor229, 16
  %conv241 = trunc i32 %shr239 to i8
  %incdec.ptr242 = getelementptr inbounds i8, i8* %out.addr.1545, i64 3
  store i8 %conv241, i8* %incdec.ptr238, align 1, !tbaa !4
  %shr243 = lshr i32 %xor229, 24
  %conv245 = trunc i32 %shr243 to i8
  %incdec.ptr246 = getelementptr inbounds i8, i8* %out.addr.1545, i64 4
  store i8 %conv245, i8* %incdec.ptr242, align 1, !tbaa !4
  %conv248 = trunc i32 %xor231 to i8
  %incdec.ptr249 = getelementptr inbounds i8, i8* %out.addr.1545, i64 5
  store i8 %conv248, i8* %incdec.ptr246, align 1, !tbaa !4
  %shr250 = lshr i32 %xor231, 8
  %conv252 = trunc i32 %shr250 to i8
  %incdec.ptr253 = getelementptr inbounds i8, i8* %out.addr.1545, i64 6
  store i8 %conv252, i8* %incdec.ptr249, align 1, !tbaa !4
  %shr254 = lshr i32 %xor231, 16
  %conv256 = trunc i32 %shr254 to i8
  %incdec.ptr257 = getelementptr inbounds i8, i8* %out.addr.1545, i64 7
  store i8 %conv256, i8* %incdec.ptr253, align 1, !tbaa !4
  %shr258 = lshr i32 %xor231, 24
  %conv260 = trunc i32 %shr258 to i8
  %incdec.ptr261 = getelementptr inbounds i8, i8* %out.addr.1545, i64 8
  store i8 %conv260, i8* %incdec.ptr257, align 1, !tbaa !4
  %cmp194 = icmp ugt i64 %l.1.in549, 15
  br i1 %cmp194, label %for.body196, label %for.end264, !llvm.loop !11

for.end264:                                       ; preds = %for.body196, %if.else
  %out.addr.1.lcssa = phi i8* [ %out, %if.else ], [ %incdec.ptr261, %for.body196 ]
  %in.addr.8.lcssa = phi i8* [ %in, %if.else ], [ %incdec.ptr222, %for.body196 ]
  %xor0.0.lcssa = phi i32 [ %or177, %if.else ], [ %or210, %for.body196 ]
  %xor1.0.lcssa = phi i32 [ %or191, %if.else ], [ %or225, %for.body196 ]
  %l.1.in.lcssa = phi i64 [ %length, %if.else ], [ %l.1, %for.body196 ]
  %cmp265.not = icmp eq i64 %l.1.in.lcssa, 0
  br i1 %cmp265.not, label %if.end346, label %if.then267

if.then267:                                       ; preds = %for.end264
  %incdec.ptr268 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 1
  %38 = load i8, i8* %in.addr.8.lcssa, align 1, !tbaa !4
  %conv269 = zext i8 %38 to i32
  %incdec.ptr270 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 2
  %39 = load i8, i8* %incdec.ptr268, align 1, !tbaa !4
  %conv271 = zext i8 %39 to i32
  %shl272 = shl nuw nsw i32 %conv271, 8
  %or273 = or i32 %shl272, %conv269
  %incdec.ptr274 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 3
  %40 = load i8, i8* %incdec.ptr270, align 1, !tbaa !4
  %conv275 = zext i8 %40 to i32
  %shl276 = shl nuw nsw i32 %conv275, 16
  %or277 = or i32 %or273, %shl276
  %incdec.ptr278 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 4
  %41 = load i8, i8* %incdec.ptr274, align 1, !tbaa !4
  %conv279 = zext i8 %41 to i32
  %shl280 = shl nuw i32 %conv279, 24
  %or281 = or i32 %or277, %shl280
  %arrayidx282 = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 0
  store i32 %or281, i32* %arrayidx282, align 4, !tbaa !7
  %incdec.ptr283 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 5
  %42 = load i8, i8* %incdec.ptr278, align 1, !tbaa !4
  %conv284 = zext i8 %42 to i32
  %incdec.ptr285 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 6
  %43 = load i8, i8* %incdec.ptr283, align 1, !tbaa !4
  %conv286 = zext i8 %43 to i32
  %shl287 = shl nuw nsw i32 %conv286, 8
  %or288 = or i32 %shl287, %conv284
  %incdec.ptr289 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 7
  %44 = load i8, i8* %incdec.ptr285, align 1, !tbaa !4
  %conv290 = zext i8 %44 to i32
  %shl291 = shl nuw nsw i32 %conv290, 16
  %or292 = or i32 %or288, %shl291
  %45 = load i8, i8* %incdec.ptr289, align 1, !tbaa !4
  %conv294 = zext i8 %45 to i32
  %shl295 = shl nuw i32 %conv294, 24
  %or296 = or i32 %or292, %shl295
  %arrayidx297 = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 1
  store i32 %or296, i32* %arrayidx297, align 4, !tbaa !7
  call void @DES_encrypt1(i32* noundef nonnull %arrayidx282, %struct.DES_ks* noundef %_schedule, i32 noundef 0) #4
  %46 = load i32, i32* %arrayidx282, align 4, !tbaa !7
  %xor300 = xor i32 %46, %xor0.0.lcssa
  %47 = load i32, i32* %arrayidx297, align 4, !tbaa !7
  %xor302 = xor i32 %47, %xor1.0.lcssa
  %add.ptr304 = getelementptr inbounds i8, i8* %out.addr.1.lcssa, i64 %l.1.in.lcssa
  switch i64 %l.1.in.lcssa, label %if.end346 [
    i64 1, label %sw.bb340
    i64 7, label %sw.bb311
    i64 6, label %sw.bb316
    i64 5, label %sw.bb321
    i64 4, label %sw.bb325
    i64 3, label %sw.bb330
    i64 2, label %sw.bb335
  ]

sw.bb311:                                         ; preds = %if.then267
  %shr312 = lshr i32 %xor302, 16
  %conv314 = trunc i32 %shr312 to i8
  %incdec.ptr315 = getelementptr inbounds i8, i8* %add.ptr304, i64 -1
  store i8 %conv314, i8* %incdec.ptr315, align 1, !tbaa !4
  br label %sw.bb316

sw.bb316:                                         ; preds = %if.then267, %sw.bb311
  %out.addr.3 = phi i8* [ %add.ptr304, %if.then267 ], [ %incdec.ptr315, %sw.bb311 ]
  %shr317 = lshr i32 %xor302, 8
  %conv319 = trunc i32 %shr317 to i8
  %incdec.ptr320 = getelementptr inbounds i8, i8* %out.addr.3, i64 -1
  store i8 %conv319, i8* %incdec.ptr320, align 1, !tbaa !4
  br label %sw.bb321

sw.bb321:                                         ; preds = %if.then267, %sw.bb316
  %out.addr.4 = phi i8* [ %add.ptr304, %if.then267 ], [ %incdec.ptr320, %sw.bb316 ]
  %conv323 = trunc i32 %xor302 to i8
  %incdec.ptr324 = getelementptr inbounds i8, i8* %out.addr.4, i64 -1
  store i8 %conv323, i8* %incdec.ptr324, align 1, !tbaa !4
  br label %sw.bb325

sw.bb325:                                         ; preds = %if.then267, %sw.bb321
  %out.addr.5 = phi i8* [ %add.ptr304, %if.then267 ], [ %incdec.ptr324, %sw.bb321 ]
  %shr326 = lshr i32 %xor300, 24
  %conv328 = trunc i32 %shr326 to i8
  %incdec.ptr329 = getelementptr inbounds i8, i8* %out.addr.5, i64 -1
  store i8 %conv328, i8* %incdec.ptr329, align 1, !tbaa !4
  br label %sw.bb330

sw.bb330:                                         ; preds = %if.then267, %sw.bb325
  %out.addr.6 = phi i8* [ %add.ptr304, %if.then267 ], [ %incdec.ptr329, %sw.bb325 ]
  %shr331 = lshr i32 %xor300, 16
  %conv333 = trunc i32 %shr331 to i8
  %incdec.ptr334 = getelementptr inbounds i8, i8* %out.addr.6, i64 -1
  store i8 %conv333, i8* %incdec.ptr334, align 1, !tbaa !4
  br label %sw.bb335

sw.bb335:                                         ; preds = %if.then267, %sw.bb330
  %out.addr.7 = phi i8* [ %add.ptr304, %if.then267 ], [ %incdec.ptr334, %sw.bb330 ]
  %shr336 = lshr i32 %xor300, 8
  %conv338 = trunc i32 %shr336 to i8
  %incdec.ptr339 = getelementptr inbounds i8, i8* %out.addr.7, i64 -1
  store i8 %conv338, i8* %incdec.ptr339, align 1, !tbaa !4
  br label %sw.bb340

sw.bb340:                                         ; preds = %if.then267, %sw.bb335
  %out.addr.8 = phi i8* [ %add.ptr304, %if.then267 ], [ %incdec.ptr339, %sw.bb335 ]
  %conv342 = trunc i32 %xor300 to i8
  %incdec.ptr343 = getelementptr inbounds i8, i8* %out.addr.8, i64 -1
  store i8 %conv342, i8* %incdec.ptr343, align 1, !tbaa !4
  br label %if.end346

if.end346:                                        ; preds = %for.end264, %sw.bb340, %if.then267, %for.end, %sw.epilog
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @DES_encrypt1(i32* noundef, %struct.DES_ks* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }

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
