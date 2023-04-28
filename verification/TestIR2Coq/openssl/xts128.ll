; ModuleID = 'crypto/modes/xts128.c'
source_filename = "crypto/modes/xts128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xts128_context = type { i8*, i8*, void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)* }

; Function Attrs: noinline nounwind uwtable
define i32 @CRYPTO_xts128_encrypt(%struct.xts128_context* nocapture noundef readonly %ctx, i8* noundef %iv, i8* nocapture noundef readonly %inp, i8* noundef %out, i64 noundef %len, i32 noundef %enc) local_unnamed_addr #0 {
entry:
  %tweak = alloca <2 x i64>, align 16
  %scratch = alloca <2 x i64>, align 16
  %0 = bitcast <2 x i64>* %tweak to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #4
  %1 = bitcast <2 x i64>* %scratch to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #4
  %cmp = icmp ult i64 %len, 16
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef %iv, i64 noundef 16) #5
  %block2 = getelementptr inbounds %struct.xts128_context, %struct.xts128_context* %ctx, i64 0, i32 3
  %2 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %block2, align 8, !tbaa !4
  %key2 = getelementptr inbounds %struct.xts128_context, %struct.xts128_context* %ctx, i64 0, i32 1
  %3 = load i8*, i8** %key2, align 8, !tbaa !9
  call void %2(i8* noundef nonnull %0, i8* noundef nonnull %0, i8* noundef %3) #5
  %tobool.not = icmp eq i32 %enc, 0
  %rem = and i64 %len, 15
  %tobool5.not = icmp ne i64 %rem, 0
  %4 = and i1 %tobool.not, %tobool5.not
  %sub = add i64 %len, -16
  %spec.select = select i1 %4, i64 %sub, i64 %len
  %cmp8259 = icmp ugt i64 %spec.select, 15
  br i1 %cmp8259, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %arrayidx9 = getelementptr inbounds <2 x i64>, <2 x i64>* %tweak, i64 0, i64 0
  %5 = getelementptr inbounds <2 x i64>, <2 x i64>* %tweak, i64 0, i64 1
  %block1 = getelementptr inbounds %struct.xts128_context, %struct.xts128_context* %ctx, i64 0, i32 2
  %key1 = getelementptr inbounds %struct.xts128_context, %struct.xts128_context* %ctx, i64 0, i32 0
  %6 = load <2 x i64>, <2 x i64>* %tweak, align 16, !tbaa !10
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end38
  %inp.addr.0262 = phi i8* [ %inp, %while.body.lr.ph ], [ %add.ptr, %if.end38 ]
  %out.addr.0261 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr34, %if.end38 ]
  %len.addr.1260 = phi i64 [ %spec.select, %while.body.lr.ph ], [ %sub35, %if.end38 ]
  %7 = phi <2 x i64> [ %6, %while.body.lr.ph ], [ %20, %if.end38 ]
  %8 = bitcast i8* %inp.addr.0262 to <2 x i64>*
  %9 = load <2 x i64>, <2 x i64>* %8, align 1, !tbaa !11
  %10 = xor <2 x i64> %7, %9
  store <2 x i64> %10, <2 x i64>* %scratch, align 16, !tbaa !10
  %11 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %block1, align 8, !tbaa !13
  %12 = load i8*, i8** %key1, align 8, !tbaa !14
  call void %11(i8* noundef nonnull %1, i8* noundef nonnull %1, i8* noundef %12) #5
  %13 = load <2 x i64>, <2 x i64>* %tweak, align 16, !tbaa !10
  %14 = load <2 x i64>, <2 x i64>* %scratch, align 16, !tbaa !10
  %15 = xor <2 x i64> %14, %13
  store <2 x i64> %15, <2 x i64>* %scratch, align 16, !tbaa !10
  %16 = bitcast i8* %out.addr.0261 to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %16, align 1, !tbaa !11
  %sub35 = add i64 %len.addr.1260, -16
  %cmp36 = icmp eq i64 %sub35, 0
  br i1 %cmp36, label %cleanup, label %if.end38

if.end38:                                         ; preds = %while.body
  %add.ptr34 = getelementptr inbounds i8, i8* %out.addr.0261, i64 16
  %add.ptr = getelementptr inbounds i8, i8* %inp.addr.0262, i64 16
  %17 = extractelement <2 x i64> %13, i64 1
  %isneg255 = icmp slt i64 %17, 0
  %and = select i1 %isneg255, i64 135, i64 0
  %18 = extractelement <2 x i64> %13, i64 0
  %shl = shl i64 %18, 1
  %xor46 = xor i64 %and, %shl
  store i64 %xor46, i64* %arrayidx9, align 16, !tbaa !10
  %or = call i64 @llvm.fshl.i64(i64 %17, i64 %18, i64 1)
  store i64 %or, i64* %5, align 8, !tbaa !10
  %cmp8 = icmp ugt i64 %sub35, 15
  %19 = insertelement <2 x i64> poison, i64 %xor46, i64 0
  %20 = insertelement <2 x i64> %19, i64 %or, i64 1
  br i1 %cmp8, label %while.body, label %while.end, !llvm.loop !15

while.end:                                        ; preds = %if.end38, %if.end
  %len.addr.1.lcssa = phi i64 [ %spec.select, %if.end ], [ %sub35, %if.end38 ]
  %out.addr.0.lcssa = phi i8* [ %out, %if.end ], [ %add.ptr34, %if.end38 ]
  %inp.addr.0.lcssa = phi i8* [ %inp, %if.end ], [ %add.ptr, %if.end38 ]
  %21 = phi <2 x i64> [ undef, %if.end ], [ %15, %if.end38 ]
  br i1 %tobool.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.end
  %cmp58265.not = icmp eq i64 %len.addr.1.lcssa, 0
  br i1 %cmp58265.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %c62 = bitcast <2 x i64>* %scratch to [16 x i8]*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %conv57267 = phi i64 [ 0, %for.body.lr.ph ], [ %conv57, %for.body ]
  %arrayidx61 = getelementptr inbounds i8, i8* %inp.addr.0.lcssa, i64 %conv57267
  %22 = load i8, i8* %arrayidx61, align 1, !tbaa !10
  %arrayidx64 = getelementptr inbounds [16 x i8], [16 x i8]* %c62, i64 0, i64 %conv57267
  %23 = load i8, i8* %arrayidx64, align 1, !tbaa !10
  %arrayidx66 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 %conv57267
  store i8 %23, i8* %arrayidx66, align 1, !tbaa !10
  store i8 %22, i8* %arrayidx64, align 1, !tbaa !10
  %inc = add nuw nsw i64 %conv57267, 1
  %conv57 = and i64 %inc, 4294967295
  %cmp58 = icmp ugt i64 %len.addr.1.lcssa, %conv57
  br i1 %cmp58, label %for.body, label %for.end.loopexit, !llvm.loop !17

for.end.loopexit:                                 ; preds = %for.body
  %24 = load <2 x i64>, <2 x i64>* %scratch, align 16, !tbaa !10
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader
  %25 = phi <2 x i64> [ %24, %for.end.loopexit ], [ %21, %for.cond.preheader ]
  %26 = load <2 x i64>, <2 x i64>* %tweak, align 16, !tbaa !10
  %27 = xor <2 x i64> %25, %26
  store <2 x i64> %27, <2 x i64>* %scratch, align 16, !tbaa !10
  %block180 = getelementptr inbounds %struct.xts128_context, %struct.xts128_context* %ctx, i64 0, i32 2
  %28 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %block180, align 8, !tbaa !13
  %key185 = getelementptr inbounds %struct.xts128_context, %struct.xts128_context* %ctx, i64 0, i32 0
  %29 = load i8*, i8** %key185, align 8, !tbaa !14
  call void %28(i8* noundef nonnull %1, i8* noundef nonnull %1, i8* noundef %29) #5
  %30 = load <2 x i64>, <2 x i64>* %tweak, align 16, !tbaa !10
  %31 = load <2 x i64>, <2 x i64>* %scratch, align 16, !tbaa !10
  %32 = xor <2 x i64> %31, %30
  store <2 x i64> %32, <2 x i64>* %scratch, align 16, !tbaa !10
  %add.ptr96 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 -16
  %call99 = call i8* @memcpy(i8* noundef nonnull %add.ptr96, i8* noundef nonnull %1, i64 noundef 16) #5
  br label %cleanup

if.else:                                          ; preds = %while.end
  %d102 = bitcast <2 x i64>* %tweak to [4 x i32]*
  %arrayidx103 = getelementptr inbounds [4 x i32], [4 x i32]* %d102, i64 0, i64 3
  %33 = load i32, i32* %arrayidx103, align 4, !tbaa !10
  %isneg = icmp slt i32 %33, 0
  %and105 = select i1 %isneg, i64 135, i64 0
  %arrayidx107 = getelementptr inbounds <2 x i64>, <2 x i64>* %tweak, i64 0, i64 0
  %34 = load i64, i64* %arrayidx107, align 16, !tbaa !10
  %shl112 = shl i64 %34, 1
  %xor114 = xor i64 %shl112, %and105
  %35 = getelementptr inbounds <2 x i64>, <2 x i64>* %tweak, i64 0, i64 1
  %36 = load i64, i64* %35, align 8, !tbaa !10
  %or121 = call i64 @llvm.fshl.i64(i64 %36, i64 %34, i64 1)
  %37 = bitcast i8* %inp.addr.0.lcssa to i64*
  %38 = load i64, i64* %37, align 1, !tbaa !11
  %xor127 = xor i64 %38, %xor114
  %arrayidx129 = getelementptr inbounds <2 x i64>, <2 x i64>* %scratch, i64 0, i64 0
  store i64 %xor127, i64* %arrayidx129, align 16, !tbaa !10
  %arrayidx130 = getelementptr inbounds i8, i8* %inp.addr.0.lcssa, i64 8
  %39 = bitcast i8* %arrayidx130 to i64*
  %40 = load i64, i64* %39, align 1, !tbaa !11
  %xor133 = xor i64 %40, %or121
  %41 = getelementptr inbounds <2 x i64>, <2 x i64>* %scratch, i64 0, i64 1
  store i64 %xor133, i64* %41, align 8, !tbaa !10
  %block1136 = getelementptr inbounds %struct.xts128_context, %struct.xts128_context* %ctx, i64 0, i32 2
  %42 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %block1136, align 8, !tbaa !13
  %c137 = bitcast <2 x i64>* %scratch to [16 x i8]*
  %key1141 = getelementptr inbounds %struct.xts128_context, %struct.xts128_context* %ctx, i64 0, i32 0
  %43 = load i8*, i8** %key1141, align 8, !tbaa !14
  call void %42(i8* noundef nonnull %1, i8* noundef nonnull %1, i8* noundef %43) #5
  %44 = load i64, i64* %arrayidx129, align 16, !tbaa !10
  %xor146 = xor i64 %44, %xor114
  store i64 %xor146, i64* %arrayidx129, align 16, !tbaa !10
  %45 = load i64, i64* %41, align 8, !tbaa !10
  %xor151 = xor i64 %45, %or121
  store i64 %xor151, i64* %41, align 8, !tbaa !10
  %cmp154268.not = icmp eq i64 %len.addr.1.lcssa, 0
  br i1 %cmp154268.not, label %for.end171, label %for.body156

for.body156:                                      ; preds = %if.else, %for.body156
  %conv153270 = phi i64 [ %conv153, %for.body156 ], [ 0, %if.else ]
  %add = add nuw nsw i64 %conv153270, 16
  %idxprom158 = and i64 %add, 4294967295
  %arrayidx159 = getelementptr inbounds i8, i8* %inp.addr.0.lcssa, i64 %idxprom158
  %46 = load i8, i8* %arrayidx159, align 1, !tbaa !10
  %arrayidx162 = getelementptr inbounds [16 x i8], [16 x i8]* %c137, i64 0, i64 %conv153270
  %47 = load i8, i8* %arrayidx162, align 1, !tbaa !10
  %arrayidx165 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 %idxprom158
  store i8 %47, i8* %arrayidx165, align 1, !tbaa !10
  store i8 %46, i8* %arrayidx162, align 1, !tbaa !10
  %inc170 = add nuw nsw i64 %conv153270, 1
  %conv153 = and i64 %inc170, 4294967295
  %cmp154 = icmp ugt i64 %len.addr.1.lcssa, %conv153
  br i1 %cmp154, label %for.body156, label %for.end171.loopexit, !llvm.loop !18

for.end171.loopexit:                              ; preds = %for.body156
  %.pre276 = load i64, i64* %arrayidx129, align 16, !tbaa !10
  %.pre277 = load i64, i64* %41, align 8, !tbaa !10
  br label %for.end171

for.end171:                                       ; preds = %for.end171.loopexit, %if.else
  %48 = phi i64 [ %.pre277, %for.end171.loopexit ], [ %xor151, %if.else ]
  %49 = phi i64 [ %.pre276, %for.end171.loopexit ], [ %xor146, %if.else ]
  %50 = load i64, i64* %arrayidx107, align 16, !tbaa !10
  %xor176 = xor i64 %49, %50
  store i64 %xor176, i64* %arrayidx129, align 16, !tbaa !10
  %51 = load i64, i64* %35, align 8, !tbaa !10
  %xor181 = xor i64 %48, %51
  store i64 %xor181, i64* %41, align 8, !tbaa !10
  %52 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %block1136, align 8, !tbaa !13
  %53 = load i8*, i8** %key1141, align 8, !tbaa !14
  call void %52(i8* noundef nonnull %1, i8* noundef nonnull %1, i8* noundef %53) #5
  %54 = load <2 x i64>, <2 x i64>* %scratch, align 16, !tbaa !10
  %55 = load <2 x i64>, <2 x i64>* %tweak, align 16, !tbaa !10
  %56 = xor <2 x i64> %55, %54
  %57 = bitcast i8* %out.addr.0.lcssa to <2 x i64>*
  store <2 x i64> %56, <2 x i64>* %57, align 1, !tbaa !11
  br label %cleanup

cleanup:                                          ; preds = %while.body, %for.end, %for.end171, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 0, %for.end171 ], [ 0, %for.end ], [ 0, %while.body ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 24}
!5 = !{!"xts128_context", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 8}
!10 = !{!7, !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long long", !7, i64 0}
!13 = !{!5, !6, i64 16}
!14 = !{!5, !6, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
