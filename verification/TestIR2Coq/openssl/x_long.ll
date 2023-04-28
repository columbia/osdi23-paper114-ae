; ModuleID = 'crypto/asn1/x_long.c'
source_filename = "crypto/asn1/x_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, {}* }
%struct.ASN1_PRIMITIVE_FUNCS_st = type { i8*, i64, i32 (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, i32 (%struct.ASN1_VALUE_st**, i8*, i32, i32, i8*, %struct.ASN1_ITEM_st*)*, i32 (%struct.ASN1_VALUE_st**, i8*, i32*, %struct.ASN1_ITEM_st*)*, i32 (%struct.bio_st*, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i32, %struct.asn1_pctx_st*)* }
%struct.ASN1_VALUE_st = type opaque
%struct.bio_st = type opaque
%struct.asn1_pctx_st = type opaque

@LONG_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 2, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* bitcast (%struct.ASN1_PRIMITIVE_FUNCS_st* @long_pf to i8*), i64 2147483647, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0) }, align 8
@long_pf = internal global %struct.ASN1_PRIMITIVE_FUNCS_st { i8* null, i64 0, i32 (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)* @long_new, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)* @long_free, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)* @long_free, i32 (%struct.ASN1_VALUE_st**, i8*, i32, i32, i8*, %struct.ASN1_ITEM_st*)* @long_c2i, i32 (%struct.ASN1_VALUE_st**, i8*, i32*, %struct.ASN1_ITEM_st*)* @long_i2c, i32 (%struct.bio_st*, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i32, %struct.asn1_pctx_st*)* @long_print }, align 8
@.str = private unnamed_addr constant [5 x i8] c"LONG\00", align 1
@ZLONG_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 2, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* bitcast (%struct.ASN1_PRIMITIVE_FUNCS_st* @long_pf to i8*), i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"ZLONG\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"crypto/asn1/x_long.c\00", align 1
@__func__.long_c2i = private unnamed_addr constant [9 x i8] c"long_c2i\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @LONG_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @LONG_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ZLONG_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ZLONG_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @long_new(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef %it) #1 {
entry:
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to i8*
  %size = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 5
  %1 = bitcast i64* %size to i8*
  %call = tail call i8* @memcpy(i8* noundef %0, i8* noundef nonnull %1, i64 noundef 8) #6
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal void @long_free(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef %it) #1 {
entry:
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to i8*
  %size = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 5
  %1 = bitcast i64* %size to i8*
  %call = tail call i8* @memcpy(i8* noundef %0, i8* noundef nonnull %1, i64 noundef 8) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @long_c2i(%struct.ASN1_VALUE_st** noundef %pval, i8* nocapture noundef readonly %cont, i32 noundef %len, i32 noundef %utype, i8* nocapture noundef readnone %free_cont, %struct.ASN1_ITEM_st* nocapture noundef readonly %it) #1 {
entry:
  %ltmp = alloca i64, align 8
  %0 = bitcast i64* %ltmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %cmp = icmp sgt i32 %len, 1
  br i1 %cmp, label %if.then, label %if.then10

if.then:                                          ; preds = %entry
  %1 = load i8, i8* %cont, align 1, !tbaa !4
  switch i8 %1, label %if.end.thread [
    i8 -1, label %if.end
    i8 0, label %sw.bb1
  ]

sw.bb1:                                           ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb1
  %sign.0 = phi i64 [ 0, %sw.bb1 ], [ 255, %if.then ]
  %incdec.ptr = getelementptr inbounds i8, i8* %cont, i64 1
  %dec = add nsw i32 %len, -1
  %cmp4 = icmp ugt i32 %dec, 8
  br i1 %cmp4, label %if.then6, label %if.else16

if.end.thread:                                    ; preds = %if.then
  %cmp497 = icmp ugt i32 %len, 8
  br i1 %cmp497, label %if.then6, label %land.lhs.true

if.then6:                                         ; preds = %if.end.thread, %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 155, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.long_c2i, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 128, i8* noundef null) #6
  br label %cleanup

if.then10:                                        ; preds = %entry
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %if.else, label %land.lhs.truethread-pre-split

land.lhs.truethread-pre-split:                    ; preds = %if.then10
  %.pr = load i8, i8* %cont, align 1, !tbaa !4
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.thread, %land.lhs.truethread-pre-split
  %2 = phi i8 [ %.pr, %land.lhs.truethread-pre-split ], [ %1, %if.end.thread ]
  %tobool13.not = icmp sgt i8 %2, -1
  br i1 %tobool13.not, label %if.else, label %if.end24

if.else:                                          ; preds = %land.lhs.true, %if.then10
  br label %if.end24

if.else16:                                        ; preds = %if.end
  %3 = load i8, i8* %incdec.ptr, align 1, !tbaa !4
  %conv18 = zext i8 %3 to i64
  %xor = xor i64 %sign.0, %conv18
  %and19 = and i64 %xor, 128
  %cmp20 = icmp eq i64 %and19, 0
  br i1 %cmp20, label %if.then22, label %for.body.preheader

if.then22:                                        ; preds = %if.else16
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 166, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.long_c2i, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 221, i8* noundef null) #6
  br label %cleanup

if.end24:                                         ; preds = %land.lhs.true, %if.else
  %sign.1 = phi i64 [ 0, %if.else ], [ 255, %land.lhs.true ]
  %cmp2589 = icmp sgt i32 %len, 0
  br i1 %cmp2589, label %for.body.preheader, label %for.end.thread

for.end.thread:                                   ; preds = %if.end24
  store i64 0, i64* %ltmp, align 8, !tbaa !7
  br label %if.end33

for.body.preheader:                               ; preds = %if.else16, %if.end24
  %sign.1112 = phi i64 [ %sign.1, %if.end24 ], [ %sign.0, %if.else16 ]
  %cont.addr.07178111 = phi i8* [ %cont, %if.end24 ], [ %incdec.ptr, %if.else16 ]
  %len.addr.07080110 = phi i32 [ %len, %if.end24 ], [ %dec, %if.else16 ]
  %wide.trip.count = zext i32 %len.addr.07080110 to i64
  %4 = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %wide.trip.count, 3
  %5 = icmp ult i64 %4, 3
  br i1 %5, label %for.end.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %indvars.iv = phi i64 [ 0, %for.body.preheader.new ], [ %indvars.iv.next.3, %for.body ]
  %utmp.091 = phi i64 [ 0, %for.body.preheader.new ], [ %or.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.preheader.new ], [ %niter.next.3, %for.body ]
  %arrayidx27 = getelementptr inbounds i8, i8* %cont.addr.07178111, i64 %indvars.iv
  %6 = load i8, i8* %arrayidx27, align 1, !tbaa !4
  %conv28 = zext i8 %6 to i64
  %xor29 = xor i64 %sign.1112, %conv28
  %indvars.iv.next = or i64 %indvars.iv, 1
  %7 = shl i64 %utmp.091, 16
  %8 = shl nsw i64 %xor29, 8
  %shl.1 = or i64 %7, %8
  %arrayidx27.1 = getelementptr inbounds i8, i8* %cont.addr.07178111, i64 %indvars.iv.next
  %9 = load i8, i8* %arrayidx27.1, align 1, !tbaa !4
  %conv28.1 = zext i8 %9 to i64
  %xor29.1 = xor i64 %sign.1112, %conv28.1
  %or.1 = or i64 %xor29.1, %shl.1
  %indvars.iv.next.1 = or i64 %indvars.iv, 2
  %arrayidx27.2 = getelementptr inbounds i8, i8* %cont.addr.07178111, i64 %indvars.iv.next.1
  %10 = load i8, i8* %arrayidx27.2, align 1, !tbaa !4
  %conv28.2 = zext i8 %10 to i64
  %xor29.2 = xor i64 %sign.1112, %conv28.2
  %indvars.iv.next.2 = or i64 %indvars.iv, 3
  %11 = shl i64 %or.1, 16
  %12 = shl nsw i64 %xor29.2, 8
  %shl.3 = or i64 %11, %12
  %arrayidx27.3 = getelementptr inbounds i8, i8* %cont.addr.07178111, i64 %indvars.iv.next.2
  %13 = load i8, i8* %arrayidx27.3, align 1, !tbaa !4
  %conv28.3 = zext i8 %13 to i64
  %xor29.3 = xor i64 %sign.1112, %conv28.3
  %or.3 = or i64 %xor29.3, %shl.3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.unr-lcssa, label %for.body, !llvm.loop !9

for.end.unr-lcssa:                                ; preds = %for.body, %for.body.preheader
  %or.lcssa.ph = phi i64 [ undef, %for.body.preheader ], [ %or.3, %for.body ]
  %indvars.iv.unr = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next.3, %for.body ]
  %utmp.091.unr = phi i64 [ 0, %for.body.preheader ], [ %or.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.unr-lcssa ]
  %utmp.091.epil = phi i64 [ %or.epil, %for.body.epil ], [ %utmp.091.unr, %for.end.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.unr-lcssa ]
  %shl.epil = shl i64 %utmp.091.epil, 8
  %arrayidx27.epil = getelementptr inbounds i8, i8* %cont.addr.07178111, i64 %indvars.iv.epil
  %14 = load i8, i8* %arrayidx27.epil, align 1, !tbaa !4
  %conv28.epil = zext i8 %14 to i64
  %xor29.epil = xor i64 %sign.1112, %conv28.epil
  %or.epil = or i64 %xor29.epil, %shl.epil
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !11

for.end:                                          ; preds = %for.body.epil, %for.end.unr-lcssa
  %or.lcssa = phi i64 [ %or.lcssa.ph, %for.end.unr-lcssa ], [ %or.epil, %for.body.epil ]
  store i64 %or.lcssa, i64* %ltmp, align 8, !tbaa !7
  %cmp30 = icmp slt i64 %or.lcssa, 0
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %for.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 176, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.long_c2i, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 128, i8* noundef null) #6
  br label %cleanup

if.end33:                                         ; preds = %for.end.thread, %for.end
  %utmp.0.lcssa118 = phi i64 [ 0, %for.end.thread ], [ %or.lcssa, %for.end ]
  %sign.1113117 = phi i64 [ %sign.1, %for.end.thread ], [ %sign.1112, %for.end ]
  %tobool34.not = icmp eq i64 %sign.1113117, 0
  br i1 %tobool34.not, label %if.end37, label %if.then35

if.then35:                                        ; preds = %if.end33
  %sub36 = xor i64 %utmp.0.lcssa118, -1
  store i64 %sub36, i64* %ltmp, align 8, !tbaa !7
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end33
  %15 = phi i64 [ %sub36, %if.then35 ], [ %utmp.0.lcssa118, %if.end33 ]
  %size = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 5
  %16 = load i64, i64* %size, align 8, !tbaa !13
  %cmp38 = icmp eq i64 %15, %16
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end37
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 182, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.long_c2i, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 128, i8* noundef null) #6
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  %17 = bitcast %struct.ASN1_VALUE_st** %pval to i8*
  %call = call i8* @memcpy(i8* noundef %17, i8* noundef nonnull %0, i64 noundef 8) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then40, %if.then32, %if.then22, %if.then6
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 0, %if.then32 ], [ 0, %if.then40 ], [ 1, %if.end41 ], [ 0, %if.then22 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @long_i2c(%struct.ASN1_VALUE_st** noundef %pval, i8* noundef writeonly %cont, i32* nocapture noundef readnone %putype, %struct.ASN1_ITEM_st* nocapture noundef readonly %it) #1 {
entry:
  %ltmp = alloca i64, align 8
  %0 = bitcast i64* %ltmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = bitcast %struct.ASN1_VALUE_st** %pval to i8*
  %call = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef %1, i64 noundef 8) #6
  %2 = load i64, i64* %ltmp, align 8, !tbaa !7
  %size = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 5
  %3 = load i64, i64* %size, align 8, !tbaa !13
  %cmp = icmp eq i64 %2, %3
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i64 %2, 0
  %.lobit = ashr i64 %2, 63
  %utmp.0 = xor i64 %.lobit, %2
  %sign.0 = select i1 %cmp1, i64 255, i64 0
  %call5 = call fastcc i32 @num_bits_ulong(i64 noundef %utmp.0) #8
  %and = and i32 %call5, 7
  %tobool.not = icmp eq i32 %and, 0
  %pad.0 = zext i1 %tobool.not to i32
  %add = add nsw i32 %call5, 7
  %shr = ashr i32 %add, 3
  %cmp9.not = icmp eq i8* %cont, null
  br i1 %cmp9.not, label %if.end19, label %if.then10

if.then10:                                        ; preds = %if.end
  br i1 %tobool.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then10
  %conv = trunc i64 %sign.0 to i8
  %incdec.ptr = getelementptr inbounds i8, i8* %cont, i64 1
  store i8 %conv, i8* %cont, align 1, !tbaa !4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then10
  %cont.addr.0 = phi i8* [ %incdec.ptr, %if.then12 ], [ %cont, %if.then10 ]
  %cmp1544 = icmp sgt i32 %call5, 0
  br i1 %cmp1544, label %for.body.preheader, label %if.end19

for.body.preheader:                               ; preds = %if.end13
  %4 = zext i32 %shr to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %4, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %utmp.145 = phi i64 [ %utmp.0, %for.body.preheader ], [ %shr18, %for.body ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %xor = xor i64 %utmp.145, %sign.0
  %conv17 = trunc i64 %xor to i8
  %idxprom42 = and i64 %indvars.iv.next, 4294967295
  %arrayidx = getelementptr inbounds i8, i8* %cont.addr.0, i64 %idxprom42
  store i8 %conv17, i8* %arrayidx, align 1, !tbaa !4
  %shr18 = lshr i64 %utmp.145, 8
  %5 = trunc i64 %indvars.iv to i32
  %cmp15 = icmp sgt i32 %5, 1
  br i1 %cmp15, label %for.body, label %if.end19, !llvm.loop !16

if.end19:                                         ; preds = %for.body, %if.end13, %if.end
  %add20 = add nsw i32 %shr, %pad.0
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end19
  %retval.0 = phi i32 [ %add20, %if.end19 ], [ -1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @long_print(%struct.bio_st* noundef %out, %struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* nocapture noundef readnone %it, i32 noundef %indent, %struct.asn1_pctx_st* nocapture noundef readnone %pctx) #1 {
entry:
  %l = alloca i64, align 8
  %0 = bitcast i64* %l to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = bitcast %struct.ASN1_VALUE_st** %pval to i8*
  %call = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef %1, i64 noundef 8) #6
  %2 = load i64, i64* %l, align 8, !tbaa !7
  %call1 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 noundef %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %call1
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare void @ERR_new() local_unnamed_addr #4

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define internal fastcc i32 @num_bits_ulong(i64 noundef %value) unnamed_addr #5 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %ret.011 = phi i64 [ 0, %entry ], [ %add.3, %for.body ]
  %i.010 = phi i64 [ 0, %entry ], [ %inc.3, %for.body ]
  %value.addr.09 = phi i64 [ %value, %entry ], [ %shr, %for.body ]
  %cmp1 = icmp ne i64 %value.addr.09, 0
  %0 = zext i1 %cmp1 to i64
  %add = add i64 %ret.011, %0
  %shr = lshr i64 %value.addr.09, 4
  %cmp1.1 = icmp ugt i64 %value.addr.09, 1
  %1 = zext i1 %cmp1.1 to i64
  %add.1 = add i64 %add, %1
  %cmp1.2 = icmp ugt i64 %value.addr.09, 3
  %2 = zext i1 %cmp1.2 to i64
  %add.2 = add i64 %add.1, %2
  %cmp1.3 = icmp ugt i64 %value.addr.09, 7
  %3 = zext i1 %cmp1.3 to i64
  %add.3 = add i64 %add.2, %3
  %inc.3 = add nuw nsw i64 %i.010, 4
  %exitcond.not.3 = icmp eq i64 %inc.3, 64
  br i1 %exitcond.not.3, label %for.end, label %for.body, !llvm.loop !17

for.end:                                          ; preds = %for.body
  %conv3 = trunc i64 %add.3 to i32
  ret i32 %conv3
}

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin "no-builtins" }

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
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{!14, !8, i64 40}
!14 = !{!"ASN1_ITEM_st", !5, i64 0, !8, i64 8, !15, i64 16, !8, i64 24, !15, i64 32, !8, i64 40, !15, i64 48}
!15 = !{!"any pointer", !5, i64 0}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
