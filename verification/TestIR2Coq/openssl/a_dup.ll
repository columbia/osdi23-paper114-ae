; ModuleID = 'crypto/asn1/a_dup.c'
source_filename = "crypto/asn1/a_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.ASN1_VALUE_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ASN1_AUX_st = type { i8*, i32, i32, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)*, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* }

@.str = private unnamed_addr constant [20 x i8] c"crypto/asn1/a_dup.c\00", align 1
@__func__.ASN1_dup = private unnamed_addr constant [9 x i8] c"ASN1_dup\00", align 1
@__func__.ASN1_item_dup = private unnamed_addr constant [14 x i8] c"ASN1_item_dup\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Type=%s\00", align 1

; Function Attrs: noinline nounwind uwtable
define i8* @ASN1_dup(i32 (i8*, i8**)* nocapture noundef readonly %i2d, i8* (i8**, i8**, i64)* nocapture noundef readonly %d2i, i8* noundef %x) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #3
  %1 = bitcast i8** %p2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #3
  %cmp = icmp eq i8* %x, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 %i2d(i8* noundef nonnull %x, i8** noundef null) #4
  %cmp1 = icmp slt i32 %call, 1
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %add = add nuw nsw i32 %call, 10
  %conv27 = zext i32 %add to i64
  %call4 = tail call i8* @CRYPTO_malloc(i64 noundef %conv27, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 30) #4
  %cmp5 = icmp eq i8* %call4, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end3
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 32, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.ASN1_dup, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  store i8* %call4, i8** %p, align 8, !tbaa !4
  %call9 = call i32 %i2d(i8* noundef nonnull %x, i8** noundef nonnull %p) #4
  store i8* %call4, i8** %p2, align 8, !tbaa !4
  %conv10 = sext i32 %call9 to i64
  %call11 = call i8* %d2i(i8** noundef null, i8** noundef nonnull %p2, i64 noundef %conv10) #4
  call void @CRYPTO_free(i8* noundef nonnull %call4, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 39) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end8, %if.then7
  %retval.0 = phi i8* [ null, %if.then7 ], [ %call11, %if.end8 ], [ null, %entry ], [ null, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #3
  ret i8* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef %it, i8* noundef %x) local_unnamed_addr #0 {
entry:
  %x.addr = alloca i8*, align 8
  %b = alloca i8*, align 8
  %p = alloca i8*, align 8
  %ret = alloca %struct.ASN1_VALUE_st*, align 8
  %libctx = alloca %struct.ossl_lib_ctx_st*, align 8
  %propq = alloca i8*, align 8
  store i8* %x, i8** %x.addr, align 8, !tbaa !4
  %0 = bitcast i8** %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #3
  store i8* null, i8** %b, align 8, !tbaa !4
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #3
  %2 = bitcast %struct.ASN1_VALUE_st** %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #3
  %3 = bitcast %struct.ossl_lib_ctx_st** %libctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #3
  store %struct.ossl_lib_ctx_st* null, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !4
  %4 = bitcast i8** %propq to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #3
  store i8* null, i8** %propq, align 8, !tbaa !4
  %cmp = icmp eq i8* %x, null
  %5 = bitcast i8* %x to %struct.ASN1_VALUE_st*
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %itype = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 0
  %6 = load i8, i8* %itype, align 8, !tbaa !8
  switch i8 %6, label %if.end28 [
    i8 1, label %if.then12
    i8 2, label %if.then12
    i8 6, label %if.then12
  ]

if.then12:                                        ; preds = %if.end, %if.end, %if.end
  %funcs = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 4
  %7 = bitcast i8** %funcs to %struct.ASN1_AUX_st**
  %8 = load %struct.ASN1_AUX_st*, %struct.ASN1_AUX_st** %7, align 8, !tbaa !11
  %cmp13.not = icmp eq %struct.ASN1_AUX_st* %8, null
  br i1 %cmp13.not, label %if.end28, label %if.end16

if.end16:                                         ; preds = %if.then12
  %asn1_cb15 = getelementptr inbounds %struct.ASN1_AUX_st, %struct.ASN1_AUX_st* %8, i64 0, i32 4
  %9 = load i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)*, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)** %asn1_cb15, align 8, !tbaa !12
  %cmp17.not = icmp eq i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* %9, null
  br i1 %cmp17.not, label %if.end28, label %if.then19

if.then19:                                        ; preds = %if.end16
  %10 = bitcast i8** %x.addr to %struct.ASN1_VALUE_st**
  %call = call i32 %9(i32 noundef 14, %struct.ASN1_VALUE_st** noundef nonnull %10, %struct.ASN1_ITEM_st* noundef nonnull %it, i8* noundef null) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %auxerr, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.then19
  %call21 = call i32 %9(i32 noundef 16, %struct.ASN1_VALUE_st** noundef nonnull %10, %struct.ASN1_ITEM_st* noundef nonnull %it, i8* noundef nonnull %3) #4
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %auxerr, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false20
  %call24 = call i32 %9(i32 noundef 17, %struct.ASN1_VALUE_st** noundef nonnull %10, %struct.ASN1_ITEM_st* noundef nonnull %it, i8* noundef nonnull %4) #4
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %auxerr, label %lor.lhs.false23.if.end28_crit_edge

lor.lhs.false23.if.end28_crit_edge:               ; preds = %lor.lhs.false23
  %.pre = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %10, align 8, !tbaa !4
  br label %if.end28

if.end28:                                         ; preds = %lor.lhs.false23.if.end28_crit_edge, %if.then12, %if.end, %if.end16
  %11 = phi %struct.ASN1_VALUE_st* [ %.pre, %lor.lhs.false23.if.end28_crit_edge ], [ %5, %if.end16 ], [ %5, %if.end ], [ %5, %if.then12 ]
  %cmp17.not71 = phi i1 [ false, %lor.lhs.false23.if.end28_crit_edge ], [ true, %if.end16 ], [ true, %if.end ], [ true, %if.then12 ]
  %asn1_cb.070 = phi i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* [ %9, %lor.lhs.false23.if.end28_crit_edge ], [ null, %if.end16 ], [ null, %if.end ], [ null, %if.then12 ]
  %call29 = call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %11, i8** noundef nonnull %b, %struct.ASN1_ITEM_st* noundef nonnull %it) #4
  %12 = load i8*, i8** %b, align 8, !tbaa !4
  %cmp31 = icmp eq i8* %12, null
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end28
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.ASN1_item_dup, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

if.end34:                                         ; preds = %if.end28
  %conv30 = sext i32 %call29 to i64
  store i8* %12, i8** %p, align 8, !tbaa !4
  %13 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !4
  %14 = load i8*, i8** %propq, align 8, !tbaa !4
  %call35 = call %struct.ASN1_VALUE_st* @ASN1_item_d2i_ex(%struct.ASN1_VALUE_st** noundef null, i8** noundef nonnull %p, i64 noundef %conv30, %struct.ASN1_ITEM_st* noundef nonnull %it, %struct.ossl_lib_ctx_st* noundef %13, i8* noundef %14) #4
  store %struct.ASN1_VALUE_st* %call35, %struct.ASN1_VALUE_st** %ret, align 8, !tbaa !4
  %15 = load i8*, i8** %b, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %15, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 86) #4
  br i1 %cmp17.not71, label %if.end34.if.end41_crit_edge, label %land.lhs.true

if.end34.if.end41_crit_edge:                      ; preds = %if.end34
  %16 = bitcast %struct.ASN1_VALUE_st* %call35 to i8*
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end34
  %17 = load i8*, i8** %x.addr, align 8, !tbaa !4
  %call38 = call i32 %asn1_cb.070(i32 noundef 15, %struct.ASN1_VALUE_st** noundef nonnull %ret, %struct.ASN1_ITEM_st* noundef nonnull %it, i8* noundef %17) #4
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %auxerr, label %land.lhs.true.if.end41_crit_edge

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  %.phi.trans.insert72 = bitcast %struct.ASN1_VALUE_st** %ret to i8**
  %.pre73 = load i8*, i8** %.phi.trans.insert72, align 8, !tbaa !4
  br label %cleanup

auxerr:                                           ; preds = %land.lhs.true, %if.then19, %lor.lhs.false20, %lor.lhs.false23
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.ASN1_item_dup, i64 0, i64 0)) #4
  %sname = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 6
  %18 = load i8*, i8** %sname, align 8, !tbaa !15
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 100, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* noundef %18) #4
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true.if.end41_crit_edge, %if.end34.if.end41_crit_edge, %entry, %auxerr, %if.then33
  %retval.0 = phi i8* [ null, %if.then33 ], [ null, %auxerr ], [ null, %entry ], [ %.pre73, %land.lhs.true.if.end41_crit_edge ], [ %16, %if.end34.if.end41_crit_edge ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #3
  ret i8* %retval.0
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i_ex(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

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
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !6, i64 0}
!9 = !{!"ASN1_ITEM_st", !6, i64 0, !10, i64 8, !5, i64 16, !10, i64 24, !5, i64 32, !10, i64 40, !5, i64 48}
!10 = !{!"long", !6, i64 0}
!11 = !{!9, !5, i64 32}
!12 = !{!13, !5, i64 24}
!13 = !{!"ASN1_AUX_st", !5, i64 0, !14, i64 8, !14, i64 12, !14, i64 16, !5, i64 24, !14, i64 32, !5, i64 40}
!14 = !{!"int", !6, i64 0}
!15 = !{!9, !5, i64 48}
