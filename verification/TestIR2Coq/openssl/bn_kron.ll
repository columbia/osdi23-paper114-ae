; ModuleID = 'crypto/bn/bn_kron.c'
source_filename = "crypto/bn/bn_kron.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_st = type { i64*, i32, i32, i32, i32 }
%struct.bignum_ctx = type opaque

@BN_kronecker.tab = internal unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 0, i32 -1, i32 0, i32 -1, i32 0, i32 1], align 16

; Function Attrs: noinline nounwind uwtable
define i32 @BN_kronecker(%struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #2
  %call = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #2
  %call1 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #2
  %cmp = icmp eq %struct.bignum_st* %call1, null
  br i1 %cmp, label %end.thread, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %a) #2
  %tobool.not = icmp eq %struct.bignum_st* %call2, null
  br i1 %tobool.not, label %end.thread, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %call1, %struct.bignum_st* noundef %b) #2
  %tobool7.not = icmp eq %struct.bignum_st* %call6, null
  br i1 %tobool7.not, label %end.thread, label %if.end12

if.end12:                                         ; preds = %if.end5
  %call13 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %call1) #2
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end12
  %call16 = tail call i32 @BN_abs_is_word(%struct.bignum_st* noundef %call, i64 noundef 1) #2
  br label %end.thread

if.end17:                                         ; preds = %if.end12
  %call18 = tail call i32 @BN_is_odd(%struct.bignum_st* noundef %call) #2
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true, label %while.cond.preheader

land.lhs.true:                                    ; preds = %if.end17
  %call20 = tail call i32 @BN_is_odd(%struct.bignum_st* noundef nonnull %call1) #2
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %end.thread, label %while.cond.preheader

while.cond.preheader:                             ; preds = %land.lhs.true, %if.end17
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %while.cond
  %i.0 = phi i32 [ %inc, %while.cond ], [ 0, %while.cond.preheader ]
  %call24 = tail call i32 @BN_is_bit_set(%struct.bignum_st* noundef nonnull %call1, i32 noundef %i.0) #2
  %tobool25.not = icmp eq i32 %call24, 0
  %inc = add nuw nsw i32 %i.0, 1
  br i1 %tobool25.not, label %while.cond, label %while.end, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %call28 = tail call i32 @BN_rshift(%struct.bignum_st* noundef nonnull %call1, %struct.bignum_st* noundef nonnull %call1, i32 noundef %i.0) #2
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %end.thread, label %if.end34

if.end34:                                         ; preds = %while.end
  %and = and i32 %i.0, 1
  %tobool35.not = icmp eq i32 %and, 0
  br i1 %tobool35.not, label %if.end40, label %if.then36

if.then36:                                        ; preds = %if.end34
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call, i64 0, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !6
  %cmp37 = icmp eq i32 %0, 0
  br i1 %cmp37, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.then36
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call, i64 0, i32 0
  %1 = load i64*, i64** %d, align 8, !tbaa !12
  %2 = load i64, i64* %1, align 8, !tbaa !13
  %phi.bo = and i64 %2, 7
  br label %cond.end

cond.end:                                         ; preds = %if.then36, %cond.false
  %cond = phi i64 [ %phi.bo, %cond.false ], [ 0, %if.then36 ]
  %arrayidx39 = getelementptr inbounds [8 x i32], [8 x i32]* @BN_kronecker.tab, i64 0, i64 %cond
  %3 = load i32, i32* %arrayidx39, align 4, !tbaa !15
  br label %if.end40

if.end40:                                         ; preds = %if.end34, %cond.end
  %ret.0 = phi i32 [ %3, %cond.end ], [ 1, %if.end34 ]
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call1, i64 0, i32 3
  %4 = load i32, i32* %neg, align 8, !tbaa !16
  %tobool41.not = icmp eq i32 %4, 0
  br i1 %tobool41.not, label %if.end48, label %if.then42

if.then42:                                        ; preds = %if.end40
  store i32 0, i32* %neg, align 8, !tbaa !16
  %neg44 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call, i64 0, i32 3
  %5 = load i32, i32* %neg44, align 8, !tbaa !16
  %tobool45.not = icmp eq i32 %5, 0
  %sub = sub nsw i32 0, %ret.0
  %spec.select = select i1 %tobool45.not, i32 %ret.0, i32 %sub
  br label %if.end48

if.end48:                                         ; preds = %if.then42, %if.end40
  %ret.1 = phi i32 [ %ret.0, %if.end40 ], [ %spec.select, %if.then42 ]
  %call51208 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %call) #2
  %tobool52.not209 = icmp eq i32 %call51208, 0
  br i1 %tobool52.not209, label %while.cond61.preheader, label %if.then53

while.cond61.preheader:                           ; preds = %if.end48, %if.end133
  %B.0212 = phi %struct.bignum_st* [ %A.0211, %if.end133 ], [ %call1, %if.end48 ]
  %A.0211 = phi %struct.bignum_st* [ %B.0212, %if.end133 ], [ %call, %if.end48 ]
  %ret.2210 = phi i32 [ %spec.select202, %if.end133 ], [ %ret.1, %if.end48 ]
  br label %while.cond61

if.then53:                                        ; preds = %if.end133, %if.end48
  %ret.2.lcssa = phi i32 [ %ret.1, %if.end48 ], [ %spec.select202, %if.end133 ]
  %B.0.lcssa = phi %struct.bignum_st* [ %call1, %if.end48 ], [ %A.0211, %if.end133 ]
  %call54 = tail call i32 @BN_is_one(%struct.bignum_st* noundef nonnull %B.0.lcssa) #2
  %tobool55.not = icmp eq i32 %call54, 0
  %cond59 = select i1 %tobool55.not, i32 0, i32 %ret.2.lcssa
  br label %end.thread

while.cond61:                                     ; preds = %while.cond61, %while.cond61.preheader
  %i.1 = phi i32 [ %inc67, %while.cond61 ], [ 0, %while.cond61.preheader ]
  %call62 = tail call i32 @BN_is_bit_set(%struct.bignum_st* noundef %A.0211, i32 noundef %i.1) #2
  %tobool63.not = icmp eq i32 %call62, 0
  %inc67 = add nuw nsw i32 %i.1, 1
  br i1 %tobool63.not, label %while.cond61, label %while.end68, !llvm.loop !17

while.end68:                                      ; preds = %while.cond61
  %call69 = tail call i32 @BN_rshift(%struct.bignum_st* noundef %A.0211, %struct.bignum_st* noundef %A.0211, i32 noundef %i.1) #2
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %end.thread, label %if.end75

if.end75:                                         ; preds = %while.end68
  %and76 = and i32 %i.1, 1
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end89, label %if.then78

if.then78:                                        ; preds = %if.end75
  %top79 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %B.0212, i64 0, i32 1
  %6 = load i32, i32* %top79, align 8, !tbaa !6
  %cmp80 = icmp eq i32 %6, 0
  br i1 %cmp80, label %cond.end85, label %cond.false82

cond.false82:                                     ; preds = %if.then78
  %d83 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %B.0212, i64 0, i32 0
  %7 = load i64*, i64** %d83, align 8, !tbaa !12
  %8 = load i64, i64* %7, align 8, !tbaa !13
  br label %cond.end85

cond.end85:                                       ; preds = %if.then78, %cond.false82
  %cond86 = phi i64 [ %8, %cond.false82 ], [ 0, %if.then78 ]
  %and87 = and i64 %cond86, 7
  %arrayidx88 = getelementptr inbounds [8 x i32], [8 x i32]* @BN_kronecker.tab, i64 0, i64 %and87
  %9 = load i32, i32* %arrayidx88, align 4, !tbaa !15
  %mul = mul nsw i32 %9, %ret.2210
  br label %if.end89

if.end89:                                         ; preds = %cond.end85, %if.end75
  %ret.3 = phi i32 [ %mul, %cond.end85 ], [ %ret.2210, %if.end75 ]
  %neg90 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %A.0211, i64 0, i32 3
  %10 = load i32, i32* %neg90, align 8, !tbaa !16
  %tobool91.not = icmp eq i32 %10, 0
  %top103 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %A.0211, i64 0, i32 1
  %11 = load i32, i32* %top103, align 8, !tbaa !6
  %cmp104 = icmp eq i32 %11, 0
  br i1 %tobool91.not, label %cond.false102, label %cond.true92

cond.true92:                                      ; preds = %if.end89
  br i1 %cmp104, label %cond.end99, label %cond.false96

cond.false96:                                     ; preds = %cond.true92
  %d97 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %A.0211, i64 0, i32 0
  %12 = load i64*, i64** %d97, align 8, !tbaa !12
  %13 = load i64, i64* %12, align 8, !tbaa !13
  br label %cond.end99

cond.end99:                                       ; preds = %cond.true92, %cond.false96
  %cond100 = phi i64 [ %13, %cond.false96 ], [ 0, %cond.true92 ]
  %neg101 = xor i64 %cond100, -1
  br label %cond.end111

cond.false102:                                    ; preds = %if.end89
  br i1 %cmp104, label %cond.end111, label %cond.false106

cond.false106:                                    ; preds = %cond.false102
  %d107 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %A.0211, i64 0, i32 0
  %14 = load i64*, i64** %d107, align 8, !tbaa !12
  %15 = load i64, i64* %14, align 8, !tbaa !13
  br label %cond.end111

cond.end111:                                      ; preds = %cond.false106, %cond.false102, %cond.end99
  %cond112 = phi i64 [ %neg101, %cond.end99 ], [ %15, %cond.false106 ], [ 0, %cond.false102 ]
  %top113 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %B.0212, i64 0, i32 1
  %16 = load i32, i32* %top113, align 8, !tbaa !6
  %cmp114 = icmp eq i32 %16, 0
  br i1 %cmp114, label %cond.end119, label %cond.false116

cond.false116:                                    ; preds = %cond.end111
  %d117 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %B.0212, i64 0, i32 0
  %17 = load i64*, i64** %d117, align 8, !tbaa !12
  %18 = load i64, i64* %17, align 8, !tbaa !13
  br label %cond.end119

cond.end119:                                      ; preds = %cond.end111, %cond.false116
  %cond120 = phi i64 [ %18, %cond.false116 ], [ 0, %cond.end111 ]
  %call127 = tail call i32 @BN_nnmod(%struct.bignum_st* noundef nonnull %B.0212, %struct.bignum_st* noundef nonnull %B.0212, %struct.bignum_st* noundef nonnull %A.0211, %struct.bignum_ctx* noundef %ctx) #2
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %end.thread, label %if.end133

if.end133:                                        ; preds = %cond.end119
  %and121 = and i64 %cond112, 2
  %and122 = and i64 %and121, %cond120
  %tobool123.not = icmp eq i64 %and122, 0
  %sub125 = sub nsw i32 0, %ret.3
  %spec.select202 = select i1 %tobool123.not, i32 %ret.3, i32 %sub125
  store i32 0, i32* %neg90, align 8, !tbaa !16
  %call51 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %B.0212) #2
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %while.cond61.preheader, label %if.then53

end.thread:                                       ; preds = %cond.end119, %while.end68, %land.lhs.true, %entry, %if.then53, %if.then15, %while.end, %if.end5, %if.end
  %19 = phi i32 [ -2, %if.end ], [ -2, %if.end5 ], [ -2, %while.end ], [ -2, %entry ], [ %call16, %if.then15 ], [ %cond59, %if.then53 ], [ 0, %land.lhs.true ], [ -2, %while.end68 ], [ -2, %cond.end119 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #2
  ret i32 %19
}

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_abs_is_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @BN_is_odd(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_is_bit_set(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @BN_rshift(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @BN_is_one(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_nnmod(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{!7, !11, i64 8}
!7 = !{!"bignum_st", !8, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!7, !8, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !9, i64 0}
!15 = !{!11, !11, i64 0}
!16 = !{!7, !11, i64 16}
!17 = distinct !{!17, !5}
