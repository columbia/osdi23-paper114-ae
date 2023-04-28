; ModuleID = 'crypto/des/ofb_enc.c'
source_filename = "crypto/des/ofb_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DES_ks = type { [16 x %union.anon] }
%union.anon = type { [2 x i32] }

; Function Attrs: noinline nounwind uwtable
define void @DES_ofb_encrypt(i8* nocapture noundef readonly %in, i8* nocapture noundef writeonly %out, i32 noundef %numbits, i64 noundef %length, %struct.DES_ks* noundef %schedule, [8 x i8]* nocapture noundef %ivec) local_unnamed_addr #0 {
entry:
  %ti = alloca [2 x i32], align 4
  %add = add nsw i32 %numbits, 7
  %div = sdiv i32 %add, 8
  %0 = bitcast [2 x i32]* %ti to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #3
  %cmp = icmp sgt i32 %numbits, 64
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp sgt i32 %numbits, 32
  br i1 %cmp1, label %if.then2, label %if.else7

if.then2:                                         ; preds = %if.end
  %cmp3 = icmp ugt i32 %numbits, 63
  br i1 %cmp3, label %if.end17, label %if.else

if.else:                                          ; preds = %if.then2
  %sub = add nsw i32 %numbits, -32
  %sh_prom = zext i32 %sub to i64
  %notmask334 = shl nsw i64 -1, %sh_prom
  %1 = trunc i64 %notmask334 to i32
  %conv = xor i32 %1, -1
  br label %if.end17

if.else7:                                         ; preds = %if.end
  %cmp8 = icmp eq i32 %numbits, 32
  %sh_prom12 = zext i32 %numbits to i64
  %notmask = shl nsw i64 -1, %sh_prom12
  %2 = trunc i64 %notmask to i32
  %conv15 = xor i32 %2, -1
  %mask0.0 = select i1 %cmp8, i32 -1, i32 %conv15
  br label %if.end17

if.end17:                                         ; preds = %if.then2, %if.else, %if.else7
  %mask0.1 = phi i32 [ -1, %if.else ], [ %mask0.0, %if.else7 ], [ -1, %if.then2 ]
  %mask1.0 = phi i32 [ %conv, %if.else ], [ 0, %if.else7 ], [ -1, %if.then2 ]
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 0
  %incdec.ptr = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 1
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !4
  %conv18 = zext i8 %3 to i32
  %incdec.ptr19 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 2
  %4 = load i8, i8* %incdec.ptr, align 1, !tbaa !4
  %conv20 = zext i8 %4 to i32
  %shl21 = shl nuw nsw i32 %conv20, 8
  %or = or i32 %shl21, %conv18
  %incdec.ptr22 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 3
  %5 = load i8, i8* %incdec.ptr19, align 1, !tbaa !4
  %conv23 = zext i8 %5 to i32
  %shl24 = shl nuw nsw i32 %conv23, 16
  %or25 = or i32 %or, %shl24
  %incdec.ptr26 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 4
  %6 = load i8, i8* %incdec.ptr22, align 1, !tbaa !4
  %conv27 = zext i8 %6 to i32
  %shl28 = shl nuw i32 %conv27, 24
  %or29 = or i32 %or25, %shl28
  %incdec.ptr30 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 5
  %7 = load i8, i8* %incdec.ptr26, align 1, !tbaa !4
  %conv31 = zext i8 %7 to i32
  %incdec.ptr32 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 6
  %8 = load i8, i8* %incdec.ptr30, align 1, !tbaa !4
  %conv33 = zext i8 %8 to i32
  %shl34 = shl nuw nsw i32 %conv33, 8
  %or35 = or i32 %shl34, %conv31
  %incdec.ptr36 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 7
  %9 = load i8, i8* %incdec.ptr32, align 1, !tbaa !4
  %conv37 = zext i8 %9 to i32
  %shl38 = shl nuw nsw i32 %conv37, 16
  %or39 = or i32 %or35, %shl38
  %10 = load i8, i8* %incdec.ptr36, align 1, !tbaa !4
  %conv41 = zext i8 %10 to i32
  %shl42 = shl nuw i32 %conv41, 24
  %or43 = or i32 %or39, %shl42
  %arrayidx44 = getelementptr inbounds [2 x i32], [2 x i32]* %ti, i64 0, i64 0
  %arrayidx45 = getelementptr inbounds [2 x i32], [2 x i32]* %ti, i64 0, i64 1
  %cmp46336 = icmp sgt i64 %length, 0
  br i1 %cmp46336, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.end17
  %idx.ext = zext i32 %div to i64
  %sub162 = sub nsw i32 32, %numbits
  %sub144 = add nsw i32 %numbits, -32
  %sub146 = sub nsw i32 64, %numbits
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end177
  %dec341.in = phi i64 [ %length, %while.body.lr.ph ], [ %dec341, %if.end177 ]
  %in.addr.0340 = phi i8* [ %in, %while.body.lr.ph ], [ %add.ptr88, %if.end177 ]
  %out.addr.0339 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr132, %if.end177 ]
  %v1.0338 = phi i32 [ %or43, %while.body.lr.ph ], [ %v1.1, %if.end177 ]
  %v0.0337 = phi i32 [ %or29, %while.body.lr.ph ], [ %v0.1, %if.end177 ]
  %dec341 = add nsw i64 %dec341.in, -1
  store i32 %v0.0337, i32* %arrayidx44, align 4, !tbaa !7
  store i32 %v1.0338, i32* %arrayidx45, align 4, !tbaa !7
  call void @DES_encrypt1(i32* noundef nonnull %arrayidx44, %struct.DES_ks* noundef %schedule, i32 noundef 1) #4
  %11 = load i32, i32* %arrayidx44, align 4, !tbaa !7
  %12 = load i32, i32* %arrayidx45, align 4, !tbaa !7
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.0340, i64 %idx.ext
  switch i32 %div, label %sw.epilog [
    i32 8, label %sw.bb
    i32 7, label %sw.bb55
    i32 6, label %sw.bb60
    i32 5, label %sw.bb65
    i32 4, label %sw.bb69
    i32 3, label %sw.bb73
    i32 2, label %sw.bb78
    i32 1, label %sw.bb83
  ]

sw.bb:                                            ; preds = %while.body
  %incdec.ptr52 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %13 = load i8, i8* %incdec.ptr52, align 1, !tbaa !4
  %conv53 = zext i8 %13 to i32
  %shl54 = shl nuw i32 %conv53, 24
  br label %sw.bb55

sw.bb55:                                          ; preds = %while.body, %sw.bb
  %d1.0 = phi i32 [ 0, %while.body ], [ %shl54, %sw.bb ]
  %in.addr.1 = phi i8* [ %add.ptr, %while.body ], [ %incdec.ptr52, %sw.bb ]
  %incdec.ptr56 = getelementptr inbounds i8, i8* %in.addr.1, i64 -1
  %14 = load i8, i8* %incdec.ptr56, align 1, !tbaa !4
  %conv57 = zext i8 %14 to i32
  %shl58 = shl nuw nsw i32 %conv57, 16
  %or59 = or i32 %shl58, %d1.0
  br label %sw.bb60

sw.bb60:                                          ; preds = %while.body, %sw.bb55
  %d1.1 = phi i32 [ 0, %while.body ], [ %or59, %sw.bb55 ]
  %in.addr.2 = phi i8* [ %add.ptr, %while.body ], [ %incdec.ptr56, %sw.bb55 ]
  %incdec.ptr61 = getelementptr inbounds i8, i8* %in.addr.2, i64 -1
  %15 = load i8, i8* %incdec.ptr61, align 1, !tbaa !4
  %conv62 = zext i8 %15 to i32
  %shl63 = shl nuw nsw i32 %conv62, 8
  %or64 = or i32 %shl63, %d1.1
  br label %sw.bb65

sw.bb65:                                          ; preds = %while.body, %sw.bb60
  %d1.2 = phi i32 [ 0, %while.body ], [ %or64, %sw.bb60 ]
  %in.addr.3 = phi i8* [ %add.ptr, %while.body ], [ %incdec.ptr61, %sw.bb60 ]
  %incdec.ptr66 = getelementptr inbounds i8, i8* %in.addr.3, i64 -1
  %16 = load i8, i8* %incdec.ptr66, align 1, !tbaa !4
  %conv67 = zext i8 %16 to i32
  %or68 = or i32 %d1.2, %conv67
  br label %sw.bb69

sw.bb69:                                          ; preds = %while.body, %sw.bb65
  %d1.3 = phi i32 [ 0, %while.body ], [ %or68, %sw.bb65 ]
  %in.addr.4 = phi i8* [ %add.ptr, %while.body ], [ %incdec.ptr66, %sw.bb65 ]
  %incdec.ptr70 = getelementptr inbounds i8, i8* %in.addr.4, i64 -1
  %17 = load i8, i8* %incdec.ptr70, align 1, !tbaa !4
  %conv71 = zext i8 %17 to i32
  %shl72 = shl nuw i32 %conv71, 24
  br label %sw.bb73

sw.bb73:                                          ; preds = %while.body, %sw.bb69
  %d0.0 = phi i32 [ 0, %while.body ], [ %shl72, %sw.bb69 ]
  %d1.4 = phi i32 [ 0, %while.body ], [ %d1.3, %sw.bb69 ]
  %in.addr.5 = phi i8* [ %add.ptr, %while.body ], [ %incdec.ptr70, %sw.bb69 ]
  %incdec.ptr74 = getelementptr inbounds i8, i8* %in.addr.5, i64 -1
  %18 = load i8, i8* %incdec.ptr74, align 1, !tbaa !4
  %conv75 = zext i8 %18 to i32
  %shl76 = shl nuw nsw i32 %conv75, 16
  %or77 = or i32 %shl76, %d0.0
  br label %sw.bb78

sw.bb78:                                          ; preds = %while.body, %sw.bb73
  %d0.1 = phi i32 [ 0, %while.body ], [ %or77, %sw.bb73 ]
  %d1.5 = phi i32 [ 0, %while.body ], [ %d1.4, %sw.bb73 ]
  %in.addr.6 = phi i8* [ %add.ptr, %while.body ], [ %incdec.ptr74, %sw.bb73 ]
  %incdec.ptr79 = getelementptr inbounds i8, i8* %in.addr.6, i64 -1
  %19 = load i8, i8* %incdec.ptr79, align 1, !tbaa !4
  %conv80 = zext i8 %19 to i32
  %shl81 = shl nuw nsw i32 %conv80, 8
  %or82 = or i32 %shl81, %d0.1
  br label %sw.bb83

sw.bb83:                                          ; preds = %while.body, %sw.bb78
  %d0.2 = phi i32 [ 0, %while.body ], [ %or82, %sw.bb78 ]
  %d1.6 = phi i32 [ 0, %while.body ], [ %d1.5, %sw.bb78 ]
  %in.addr.7 = phi i8* [ %add.ptr, %while.body ], [ %incdec.ptr79, %sw.bb78 ]
  %incdec.ptr84 = getelementptr inbounds i8, i8* %in.addr.7, i64 -1
  %20 = load i8, i8* %incdec.ptr84, align 1, !tbaa !4
  %conv85 = zext i8 %20 to i32
  %or86 = or i32 %d0.2, %conv85
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb83, %while.body
  %d0.3 = phi i32 [ 0, %while.body ], [ %or86, %sw.bb83 ]
  %d1.7 = phi i32 [ 0, %while.body ], [ %d1.6, %sw.bb83 ]
  %in.addr.8 = phi i8* [ %add.ptr, %while.body ], [ %incdec.ptr84, %sw.bb83 ]
  %add.ptr88 = getelementptr inbounds i8, i8* %in.addr.8, i64 %idx.ext
  %xor = xor i32 %d0.3, %11
  %and = and i32 %xor, %mask0.1
  %xor89 = xor i32 %d1.7, %12
  %and90 = and i32 %xor89, %mask1.0
  %add.ptr92 = getelementptr inbounds i8, i8* %out.addr.0339, i64 %idx.ext
  switch i32 %div, label %sw.epilog130 [
    i32 8, label %sw.bb93
    i32 7, label %sw.bb97
    i32 6, label %sw.bb102
    i32 5, label %sw.bb107
    i32 4, label %sw.bb111
    i32 3, label %sw.bb116
    i32 2, label %sw.bb121
    i32 1, label %sw.bb126
  ]

sw.bb93:                                          ; preds = %sw.epilog
  %shr = lshr i32 %and90, 24
  %conv95 = trunc i32 %shr to i8
  %incdec.ptr96 = getelementptr inbounds i8, i8* %add.ptr92, i64 -1
  store i8 %conv95, i8* %incdec.ptr96, align 1, !tbaa !4
  br label %sw.bb97

sw.bb97:                                          ; preds = %sw.epilog, %sw.bb93
  %out.addr.1 = phi i8* [ %add.ptr92, %sw.epilog ], [ %incdec.ptr96, %sw.bb93 ]
  %shr98 = lshr i32 %and90, 16
  %conv100 = trunc i32 %shr98 to i8
  %incdec.ptr101 = getelementptr inbounds i8, i8* %out.addr.1, i64 -1
  store i8 %conv100, i8* %incdec.ptr101, align 1, !tbaa !4
  br label %sw.bb102

sw.bb102:                                         ; preds = %sw.epilog, %sw.bb97
  %out.addr.2 = phi i8* [ %add.ptr92, %sw.epilog ], [ %incdec.ptr101, %sw.bb97 ]
  %shr103 = lshr i32 %and90, 8
  %conv105 = trunc i32 %shr103 to i8
  %incdec.ptr106 = getelementptr inbounds i8, i8* %out.addr.2, i64 -1
  store i8 %conv105, i8* %incdec.ptr106, align 1, !tbaa !4
  br label %sw.bb107

sw.bb107:                                         ; preds = %sw.epilog, %sw.bb102
  %out.addr.3 = phi i8* [ %add.ptr92, %sw.epilog ], [ %incdec.ptr106, %sw.bb102 ]
  %conv109 = trunc i32 %and90 to i8
  %incdec.ptr110 = getelementptr inbounds i8, i8* %out.addr.3, i64 -1
  store i8 %conv109, i8* %incdec.ptr110, align 1, !tbaa !4
  br label %sw.bb111

sw.bb111:                                         ; preds = %sw.epilog, %sw.bb107
  %out.addr.4 = phi i8* [ %add.ptr92, %sw.epilog ], [ %incdec.ptr110, %sw.bb107 ]
  %shr112 = lshr i32 %and, 24
  %conv114 = trunc i32 %shr112 to i8
  %incdec.ptr115 = getelementptr inbounds i8, i8* %out.addr.4, i64 -1
  store i8 %conv114, i8* %incdec.ptr115, align 1, !tbaa !4
  br label %sw.bb116

sw.bb116:                                         ; preds = %sw.epilog, %sw.bb111
  %out.addr.5 = phi i8* [ %add.ptr92, %sw.epilog ], [ %incdec.ptr115, %sw.bb111 ]
  %shr117 = lshr i32 %and, 16
  %conv119 = trunc i32 %shr117 to i8
  %incdec.ptr120 = getelementptr inbounds i8, i8* %out.addr.5, i64 -1
  store i8 %conv119, i8* %incdec.ptr120, align 1, !tbaa !4
  br label %sw.bb121

sw.bb121:                                         ; preds = %sw.epilog, %sw.bb116
  %out.addr.6 = phi i8* [ %add.ptr92, %sw.epilog ], [ %incdec.ptr120, %sw.bb116 ]
  %shr122 = lshr i32 %and, 8
  %conv124 = trunc i32 %shr122 to i8
  %incdec.ptr125 = getelementptr inbounds i8, i8* %out.addr.6, i64 -1
  store i8 %conv124, i8* %incdec.ptr125, align 1, !tbaa !4
  br label %sw.bb126

sw.bb126:                                         ; preds = %sw.epilog, %sw.bb121
  %out.addr.7 = phi i8* [ %add.ptr92, %sw.epilog ], [ %incdec.ptr125, %sw.bb121 ]
  %conv128 = trunc i32 %and to i8
  %incdec.ptr129 = getelementptr inbounds i8, i8* %out.addr.7, i64 -1
  store i8 %conv128, i8* %incdec.ptr129, align 1, !tbaa !4
  br label %sw.epilog130

sw.epilog130:                                     ; preds = %sw.bb126, %sw.epilog
  %out.addr.8 = phi i8* [ %add.ptr92, %sw.epilog ], [ %incdec.ptr129, %sw.bb126 ]
  %add.ptr132 = getelementptr inbounds i8, i8* %out.addr.8, i64 %idx.ext
  switch i32 %numbits, label %if.else140 [
    i32 32, label %if.end177
    i32 64, label %if.then139
  ]

if.then139:                                       ; preds = %sw.epilog130
  br label %if.end177

if.else140:                                       ; preds = %sw.epilog130
  br i1 %cmp1, label %if.then143, label %if.else160

if.then143:                                       ; preds = %if.else140
  %shr145 = lshr i32 %v1.0338, %sub144
  %shl147 = shl i32 %11, %sub146
  %or148 = or i32 %shl147, %shr145
  %shr153 = lshr i32 %11, %sub144
  %shl155 = shl i32 %12, %sub146
  %or156 = or i32 %shl155, %shr153
  br label %if.end177

if.else160:                                       ; preds = %if.else140
  %shr161 = lshr i32 %v0.0337, %numbits
  %shl163 = shl i32 %v1.0338, %sub162
  %or164 = or i32 %shl163, %shr161
  %shr168 = lshr i32 %v1.0338, %numbits
  %shl170 = shl i32 %11, %sub162
  %or171 = or i32 %shl170, %shr168
  br label %if.end177

if.end177:                                        ; preds = %sw.epilog130, %if.then139, %if.else160, %if.then143
  %v0.1 = phi i32 [ %11, %if.then139 ], [ %or148, %if.then143 ], [ %or164, %if.else160 ], [ %v1.0338, %sw.epilog130 ]
  %v1.1 = phi i32 [ %12, %if.then139 ], [ %or156, %if.then143 ], [ %or171, %if.else160 ], [ %11, %sw.epilog130 ]
  %cmp46 = icmp ugt i64 %dec341.in, 1
  br i1 %cmp46, label %while.body, label %while.end, !llvm.loop !9

while.end:                                        ; preds = %if.end177, %if.end17
  %v0.0.lcssa = phi i32 [ %or29, %if.end17 ], [ %v0.1, %if.end177 ]
  %v1.0.lcssa = phi i32 [ %or43, %if.end17 ], [ %v1.1, %if.end177 ]
  %conv180 = trunc i32 %v0.0.lcssa to i8
  store i8 %conv180, i8* %arrayidx, align 1, !tbaa !4
  %shr182 = lshr i32 %v0.0.lcssa, 8
  %conv184 = trunc i32 %shr182 to i8
  store i8 %conv184, i8* %incdec.ptr, align 1, !tbaa !4
  %shr186 = lshr i32 %v0.0.lcssa, 16
  %conv188 = trunc i32 %shr186 to i8
  store i8 %conv188, i8* %incdec.ptr19, align 1, !tbaa !4
  %shr190 = lshr i32 %v0.0.lcssa, 24
  %conv192 = trunc i32 %shr190 to i8
  store i8 %conv192, i8* %incdec.ptr22, align 1, !tbaa !4
  %conv195 = trunc i32 %v1.0.lcssa to i8
  store i8 %conv195, i8* %incdec.ptr26, align 1, !tbaa !4
  %shr197 = lshr i32 %v1.0.lcssa, 8
  %conv199 = trunc i32 %shr197 to i8
  store i8 %conv199, i8* %incdec.ptr30, align 1, !tbaa !4
  %shr201 = lshr i32 %v1.0.lcssa, 16
  %conv203 = trunc i32 %shr201 to i8
  store i8 %conv203, i8* %incdec.ptr32, align 1, !tbaa !4
  %shr205 = lshr i32 %v1.0.lcssa, 24
  %conv207 = trunc i32 %shr205 to i8
  store i8 %conv207, i8* %incdec.ptr36, align 1, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
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
