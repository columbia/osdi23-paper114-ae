; ModuleID = 'crypto/asn1/a_print.c'
source_filename = "crypto/asn1/a_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.bio_st = type opaque

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_PRINTABLE_type(i8* noundef %s, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %s, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %len, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %call = tail call i64 @strlen(i8* noundef nonnull %s) #4
  %conv = trunc i64 %call to i32
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %len.addr.0 = phi i32 [ %conv, %if.then2 ], [ %len, %if.end ]
  %cmp429 = icmp sgt i32 %len.addr.0, 0
  br i1 %cmp429, label %while.body, label %if.end16.thread

while.body:                                       ; preds = %if.end3, %while.body
  %t61.033 = phi i32 [ %t61.1, %while.body ], [ 0, %if.end3 ]
  %ia5.032 = phi i32 [ %spec.select, %while.body ], [ 0, %if.end3 ]
  %len.addr.131 = phi i32 [ %dec, %while.body ], [ %len.addr.0, %if.end3 ]
  %s.addr.030 = phi i8* [ %incdec.ptr, %while.body ], [ %s, %if.end3 ]
  %dec = add nsw i32 %len.addr.131, -1
  %incdec.ptr = getelementptr inbounds i8, i8* %s.addr.030, i64 1
  %0 = load i8, i8* %s.addr.030, align 1, !tbaa !4
  %conv6 = zext i8 %0 to i32
  %call7 = tail call i32 @ossl_ctype_check(i32 noundef %conv6, i32 noundef 2048) #5
  %tobool.not = icmp eq i32 %call7, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 %ia5.032
  %and = and i32 %conv6, 128
  %cmp10 = icmp eq i32 %and, 0
  %t61.1 = select i1 %cmp10, i32 %t61.033, i32 1
  %cmp4 = icmp ugt i32 %len.addr.131, 1
  br i1 %cmp4, label %while.body, label %while.end, !llvm.loop !7

while.end:                                        ; preds = %while.body
  %phi.cmp = icmp eq i32 %t61.1, 0
  br i1 %phi.cmp, label %if.end16, label %cleanup

if.end16:                                         ; preds = %while.end
  %tobool17.not = icmp eq i32 %spec.select, 0
  br i1 %tobool17.not, label %if.end16.thread, label %cleanup

if.end16.thread:                                  ; preds = %if.end3, %if.end16
  br label %cleanup

cleanup:                                          ; preds = %if.end16.thread, %if.end16, %while.end, %entry
  %retval.0 = phi i32 [ 19, %entry ], [ 20, %while.end ], [ 19, %if.end16.thread ], [ 22, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #2

declare i32 @ossl_ctype_check(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_UNIVERSALSTRING_to_string(%struct.asn1_string_st* nocapture noundef %s) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %s, i64 0, i32 1
  %0 = load i32, i32* %type, align 4, !tbaa !9
  %cmp.not = icmp eq i32 %0, 28
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %s, i64 0, i32 0
  %1 = load i32, i32* %length, align 8, !tbaa !14
  %2 = and i32 %1, 3
  %cmp1.not = icmp eq i32 %2, 0
  br i1 %cmp1.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %s, i64 0, i32 2
  %3 = load i8*, i8** %data, align 8, !tbaa !15
  %cmp563 = icmp sgt i32 %1, 0
  br i1 %cmp563, label %for.body, label %for.end34

for.cond25.preheader:                             ; preds = %if.else
  %cmp2766 = icmp sgt i32 %1, 3
  br i1 %cmp2766, label %for.body29.preheader, label %for.end34

for.body29.preheader:                             ; preds = %for.cond25.preheader
  %arrayidx3171 = getelementptr inbounds i8, i8* %3, i64 3
  %4 = load i8, i8* %arrayidx3171, align 1, !tbaa !4
  %incdec.ptr72 = getelementptr inbounds i8, i8* %3, i64 1
  store i8 %4, i8* %3, align 1, !tbaa !4
  %5 = load i32, i32* %length, align 8, !tbaa !14
  %cmp2773 = icmp sgt i32 %5, 7
  br i1 %cmp2773, label %for.body29.for.body29_crit_edge, label %for.end34, !llvm.loop !16

for.body:                                         ; preds = %if.end3, %if.else
  %p.065 = phi i8* [ %add.ptr, %if.else ], [ %3, %if.end3 ]
  %i.064 = phi i32 [ %add, %if.else ], [ 0, %if.end3 ]
  %6 = load i8, i8* %p.065, align 1, !tbaa !4
  %cmp6.not = icmp eq i8 %6, 0
  br i1 %cmp6.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %arrayidx8 = getelementptr inbounds i8, i8* %p.065, i64 1
  %7 = load i8, i8* %arrayidx8, align 1, !tbaa !4
  %cmp10.not = icmp eq i8 %7, 0
  br i1 %cmp10.not, label %lor.lhs.false12, label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %arrayidx13 = getelementptr inbounds i8, i8* %p.065, i64 2
  %8 = load i8, i8* %arrayidx13, align 1, !tbaa !4
  %cmp15.not = icmp eq i8 %8, 0
  br i1 %cmp15.not, label %if.else, label %cleanup

if.else:                                          ; preds = %lor.lhs.false12
  %add.ptr = getelementptr inbounds i8, i8* %p.065, i64 4
  %add = add nuw nsw i32 %i.064, 4
  %cmp5 = icmp slt i32 %add, %1
  br i1 %cmp5, label %for.body, label %for.cond25.preheader, !llvm.loop !17

for.body29.for.body29_crit_edge:                  ; preds = %for.body29.preheader, %for.body29.for.body29_crit_edge
  %indvars.iv.next75 = phi i64 [ %indvars.iv.next, %for.body29.for.body29_crit_edge ], [ 7, %for.body29.preheader ]
  %incdec.ptr74 = phi i8* [ %incdec.ptr, %for.body29.for.body29_crit_edge ], [ %incdec.ptr72, %for.body29.preheader ]
  %.pre = load i8*, i8** %data, align 8, !tbaa !15
  %arrayidx31 = getelementptr inbounds i8, i8* %.pre, i64 %indvars.iv.next75
  %9 = load i8, i8* %arrayidx31, align 1, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, i8* %incdec.ptr74, i64 1
  store i8 %9, i8* %incdec.ptr74, align 1, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next75, 4
  %10 = load i32, i32* %length, align 8, !tbaa !14
  %11 = sext i32 %10 to i64
  %cmp27 = icmp slt i64 %indvars.iv.next, %11
  br i1 %cmp27, label %for.body29.for.body29_crit_edge, label %for.end34, !llvm.loop !16

for.end34:                                        ; preds = %for.body29.for.body29_crit_edge, %for.body29.preheader, %if.end3, %for.cond25.preheader
  %p.1.lcssa = phi i8* [ %3, %for.cond25.preheader ], [ %3, %if.end3 ], [ %incdec.ptr72, %for.body29.preheader ], [ %incdec.ptr, %for.body29.for.body29_crit_edge ]
  store i8 0, i8* %p.1.lcssa, align 1, !tbaa !4
  %12 = load i32, i32* %length, align 8, !tbaa !14
  %div = sdiv i32 %12, 4
  store i32 %div, i32* %length, align 8, !tbaa !14
  %13 = load i8*, i8** %data, align 8, !tbaa !15
  %call = tail call i32 @ASN1_PRINTABLE_type(i8* noundef %13, i32 noundef %div) #6
  store i32 %call, i32* %type, align 4, !tbaa !9
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false12, %lor.lhs.false, %for.body, %if.end, %entry, %for.end34
  %retval.0 = phi i32 [ 1, %for.end34 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %for.body ], [ 0, %lor.lhs.false ], [ 0, %lor.lhs.false12 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_STRING_print(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef readonly %v) local_unnamed_addr #0 {
entry:
  %buf = alloca [80 x i8], align 16
  %0 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #7
  %cmp = icmp eq %struct.asn1_string_st* %v, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %v, i64 0, i32 2
  %1 = load i8*, i8** %data, align 8, !tbaa !15
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %v, i64 0, i32 0
  %2 = load i32, i32* %length, align 8, !tbaa !14
  %cmp174 = icmp sgt i32 %2, 0
  br i1 %cmp174, label %for.body, label %if.end46

for.body:                                         ; preds = %if.end, %for.inc
  %3 = phi i32 [ %5, %for.inc ], [ %2, %if.end ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end ]
  %n.076 = phi i32 [ %n.1, %for.inc ], [ 0, %if.end ]
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %indvars.iv
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !4
  %cmp2 = icmp eq i8 %4, 127
  br i1 %cmp2, label %if.end27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %.fr = freeze i8 %4
  %cmp7 = icmp sgt i8 %.fr, 31
  br i1 %cmp7, label %if.end27, label %switch.early.test

switch.early.test:                                ; preds = %lor.lhs.false
  %switch.selectcmp = icmp eq i8 %.fr, 10
  %switch.select = select i1 %switch.selectcmp, i8 10, i8 46
  %switch.selectcmp80 = icmp eq i8 %.fr, 13
  %switch.select81 = select i1 %switch.selectcmp80, i8 13, i8 %switch.select
  br label %if.end27

if.end27:                                         ; preds = %lor.lhs.false, %for.body, %switch.early.test
  %.fr.sink = phi i8 [ %switch.select81, %switch.early.test ], [ 46, %for.body ], [ %.fr, %lor.lhs.false ]
  %idxprom25 = sext i32 %n.076 to i64
  %arrayidx26 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i64 0, i64 %idxprom25
  store i8 %.fr.sink, i8* %arrayidx26, align 1, !tbaa !4
  %inc = add nsw i32 %n.076, 1
  %cmp28 = icmp sgt i32 %n.076, 78
  br i1 %cmp28, label %if.then30, label %for.inc

if.then30:                                        ; preds = %if.end27
  %call = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef nonnull %0, i32 noundef %inc) #5
  %cmp31 = icmp slt i32 %call, 1
  br i1 %cmp31, label %cleanup, label %if.then30.for.inc_crit_edge

if.then30.for.inc_crit_edge:                      ; preds = %if.then30
  %.pre = load i32, i32* %length, align 8, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %if.then30.for.inc_crit_edge, %if.end27
  %5 = phi i32 [ %3, %if.end27 ], [ %.pre, %if.then30.for.inc_crit_edge ]
  %n.1 = phi i32 [ %inc, %if.end27 ], [ 0, %if.then30.for.inc_crit_edge ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %6 = sext i32 %5 to i64
  %cmp1 = icmp slt i64 %indvars.iv.next, %6
  br i1 %cmp1, label %for.body, label %for.end, !llvm.loop !18

for.end:                                          ; preds = %for.inc
  %cmp37 = icmp sgt i32 %n.1, 0
  br i1 %cmp37, label %if.then39, label %if.end46

if.then39:                                        ; preds = %for.end
  %call41 = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef nonnull %0, i32 noundef %n.1) #5
  %cmp42 = icmp slt i32 %call41, 1
  br i1 %cmp42, label %cleanup, label %if.end46

if.end46:                                         ; preds = %if.end, %if.then39, %for.end
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.then39, %entry, %if.end46
  %retval.0 = phi i32 [ 1, %if.end46 ], [ 0, %entry ], [ 0, %if.then39 ], [ 0, %if.then30 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #7
  ret i32 %retval.0
}

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!10, !11, i64 4}
!10 = !{!"asn1_string_st", !11, i64 0, !11, i64 4, !12, i64 8, !13, i64 16}
!11 = !{!"int", !5, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!10, !11, i64 0}
!15 = !{!10, !12, i64 8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
