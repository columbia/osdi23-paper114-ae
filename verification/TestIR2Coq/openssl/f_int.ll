; ModuleID = 'crypto/asn1/f_int.c'
source_filename = "crypto/asn1/f_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }

@.str = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"00\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"crypto/asn1/f_int.c\00", align 1
@__func__.a2i_ASN1_INTEGER = private unnamed_addr constant [17 x i8] c"a2i_ASN1_INTEGER\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @i2a_ASN1_INTEGER(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef readonly %a) local_unnamed_addr #0 {
entry:
  %buf = alloca [2 x i8], align 1
  %0 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %0) #3
  %cmp = icmp eq %struct.asn1_string_st* %a, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 1
  %1 = load i32, i32* %type, align 4, !tbaa !4
  %and = and i32 %1, 256
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5, label %if.then1

if.then1:                                         ; preds = %if.end
  %call = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1) #4
  %cmp2.not = icmp eq i32 %call, 1
  br i1 %cmp2.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.then1, %if.end
  %n.0 = phi i32 [ 0, %if.end ], [ 1, %if.then1 ]
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 0
  %2 = load i32, i32* %length, align 8, !tbaa !11
  %cmp6 = icmp eq i32 %2, 0
  br i1 %cmp6, label %if.then7, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end5
  %cmp1362 = icmp sgt i32 %2, 0
  br i1 %cmp1362, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 2
  %arrayidx34 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 1
  br label %for.body

if.then7:                                         ; preds = %if.end5
  %call8 = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 noundef 2) #4
  %cmp9.not = icmp eq i32 %call8, 2
  %add = or i32 %n.0, 2
  %spec.select = select i1 %cmp9.not, i32 %add, i32 -1
  br label %cleanup

for.body:                                         ; preds = %for.body.lr.ph, %if.end39
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end39 ]
  %n.164 = phi i32 [ %n.0, %for.body.lr.ph ], [ %add40, %if.end39 ]
  %cmp14.not = icmp ne i64 %indvars.iv, 0
  %3 = trunc i64 %indvars.iv to i32
  %rem = urem i32 %3, 35
  %cmp15 = icmp eq i32 %rem, 0
  %or.cond = and i1 %cmp14.not, %cmp15
  br i1 %or.cond, label %if.then16, label %if.end22

if.then16:                                        ; preds = %for.body
  %call17 = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 noundef 2) #4
  %cmp18.not = icmp eq i32 %call17, 2
  br i1 %cmp18.not, label %if.end20, label %cleanup

if.end20:                                         ; preds = %if.then16
  %add21 = add nsw i32 %n.164, 2
  br label %if.end22

if.end22:                                         ; preds = %if.end20, %for.body
  %n.2 = phi i32 [ %add21, %if.end20 ], [ %n.164, %for.body ]
  %4 = load i8*, i8** %data, align 8, !tbaa !12
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %indvars.iv
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !13
  %6 = lshr i8 %5, 4
  %7 = zext i8 %6 to i64
  %arrayidx25 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %7
  %8 = load i8, i8* %arrayidx25, align 1, !tbaa !13
  store i8 %8, i8* %0, align 1, !tbaa !13
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !13
  %10 = and i8 %9, 15
  %11 = zext i8 %10 to i64
  %arrayidx33 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %11
  %12 = load i8, i8* %arrayidx33, align 1, !tbaa !13
  store i8 %12, i8* %arrayidx34, align 1, !tbaa !13
  %call35 = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef nonnull %0, i32 noundef 2) #4
  %cmp36.not = icmp eq i32 %call35, 2
  br i1 %cmp36.not, label %if.end39, label %cleanup

if.end39:                                         ; preds = %if.end22
  %add40 = add nsw i32 %n.2, 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %13 = load i32, i32* %length, align 8, !tbaa !11
  %14 = sext i32 %13 to i64
  %cmp13 = icmp slt i64 %indvars.iv.next, %14
  br i1 %cmp13, label %for.body, label %cleanup, !llvm.loop !14

cleanup:                                          ; preds = %if.end39, %if.end22, %if.then16, %for.cond.preheader, %if.then7, %if.then1, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ -1, %if.then1 ], [ %spec.select, %if.then7 ], [ %n.0, %for.cond.preheader ], [ %add40, %if.end39 ], [ -1, %if.end22 ], [ -1, %if.then16 ]
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %0) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @a2i_ASN1_INTEGER(%struct.bio_st* noundef %bp, %struct.asn1_string_st* nocapture noundef writeonly %bs, i8* noundef %buf, i32 noundef %size) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %bs, i64 0, i32 1
  store i32 2, i32* %type, align 4, !tbaa !4
  %call = tail call i32 @BIO_gets(%struct.bio_st* noundef %bp, i8* noundef %buf, i32 noundef %size) #4
  %cmp225 = icmp slt i32 %call, 1
  br i1 %cmp225, label %err, label %if.end.lr.ph

if.end.lr.ph:                                     ; preds = %entry
  %arrayidx53 = getelementptr inbounds i8, i8* %buf, i64 1
  br label %if.end

if.end:                                           ; preds = %if.end.lr.ph, %if.then115
  %tobool47.not230 = phi i1 [ false, %if.end.lr.ph ], [ true, %if.then115 ]
  %slen.0229 = phi i32 [ 0, %if.end.lr.ph ], [ %slen.1, %if.then115 ]
  %num.0228 = phi i32 [ 0, %if.end.lr.ph ], [ %add, %if.then115 ]
  %s.0227 = phi i8* [ null, %if.end.lr.ph ], [ %s.1, %if.then115 ]
  %bufsize.0226 = phi i32 [ %call, %if.end.lr.ph ], [ %call116, %if.then115 ]
  %sub = add nsw i32 %bufsize.0226, -1
  %0 = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, i8* %buf, i64 %0
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !13
  %cmp1 = icmp eq i8 %1, 10
  br i1 %cmp1, label %if.end6, label %if.end10

if.end6:                                          ; preds = %if.end
  store i8 0, i8* %arrayidx, align 1, !tbaa !13
  %cmp7 = icmp eq i32 %sub, 0
  br i1 %cmp7, label %err, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  %.pre = add nsw i32 %bufsize.0226, -2
  %.pre258 = zext i32 %.pre to i64
  br label %if.end10

if.end10:                                         ; preds = %if.end6.if.end10_crit_edge, %if.end
  %.pre-phi = phi i64 [ %.pre258, %if.end6.if.end10_crit_edge ], [ %0, %if.end ]
  %sub11.pre-phi = phi i32 [ %.pre, %if.end6.if.end10_crit_edge ], [ %sub, %if.end ]
  %i.0207 = phi i32 [ %sub, %if.end6.if.end10_crit_edge ], [ %bufsize.0226, %if.end ]
  %arrayidx13 = getelementptr inbounds i8, i8* %buf, i64 %.pre-phi
  %2 = load i8, i8* %arrayidx13, align 1, !tbaa !13
  %cmp15 = icmp eq i8 %2, 13
  br i1 %cmp15, label %if.end21, label %for.body.preheader

if.end21:                                         ; preds = %if.end10
  store i8 0, i8* %arrayidx13, align 1, !tbaa !13
  %cmp22 = icmp eq i32 %sub11.pre-phi, 0
  br i1 %cmp22, label %err, label %if.end21.if.end25_crit_edge

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  %.pre259 = add nsw i32 %sub11.pre-phi, -1
  %.pre260 = zext i32 %.pre259 to i64
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end10, %if.end21.if.end25_crit_edge
  %.pre-phi261 = phi i64 [ %.pre260, %if.end21.if.end25_crit_edge ], [ %.pre-phi, %if.end10 ]
  %i.1210 = phi i32 [ %sub11.pre-phi, %if.end21.if.end25_crit_edge ], [ %i.0207, %if.end10 ]
  %arrayidx28 = getelementptr inbounds i8, i8* %buf, i64 %.pre-phi261
  %3 = load i8, i8* %arrayidx28, align 1, !tbaa !13
  %cmp30 = icmp eq i8 %3, 92
  %conv31.neg = sext i1 %cmp30 to i32
  %wide.trip.count = zext i32 %i.1210 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %arrayidx36 = getelementptr inbounds i8, i8* %buf, i64 %indvars.iv
  %4 = load i8, i8* %arrayidx36, align 1, !tbaa !13
  %conv37 = sext i8 %4 to i32
  %call38 = tail call i32 @ossl_ctype_check(i32 noundef %conv37, i32 noundef 16) #4
  %tobool.not = icmp eq i32 %call38, 0
  br i1 %tobool.not, label %for.end.split.loop.exit269, label %for.inc

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !16

for.end.split.loop.exit269:                       ; preds = %for.body
  %5 = trunc i64 %indvars.iv to i32
  br label %for.end

for.end:                                          ; preds = %for.inc, %for.end.split.loop.exit269
  %i.2 = phi i32 [ %5, %for.end.split.loop.exit269 ], [ %i.1210, %for.inc ]
  %idxprom41 = sext i32 %i.2 to i64
  %arrayidx42 = getelementptr inbounds i8, i8* %buf, i64 %idxprom41
  store i8 0, i8* %arrayidx42, align 1, !tbaa !13
  %cmp43 = icmp slt i32 %i.2, 2
  br i1 %cmp43, label %err, label %if.end46

if.end46:                                         ; preds = %for.end
  br i1 %tobool47.not230, label %if.end60, label %if.then48

if.then48:                                        ; preds = %if.end46
  %6 = load i8, i8* %buf, align 1, !tbaa !13
  %cmp51 = icmp eq i8 %6, 48
  br i1 %cmp51, label %land.lhs.true, label %if.end60

land.lhs.true:                                    ; preds = %if.then48
  %7 = load i8, i8* %arrayidx53, align 1, !tbaa !13
  %cmp55 = icmp eq i8 %7, 48
  %sub58 = add nsw i32 %i.2, -2
  %spec.select = select i1 %cmp55, i32 %sub58, i32 %i.2
  %spec.select235.idx = select i1 %cmp55, i64 2, i64 0
  %spec.select235 = getelementptr i8, i8* %buf, i64 %spec.select235.idx
  br label %if.end60

if.end60:                                         ; preds = %land.lhs.true, %if.then48, %if.end46
  %i.3 = phi i32 [ %i.2, %if.then48 ], [ %i.2, %if.end46 ], [ %spec.select, %land.lhs.true ]
  %bufp.0 = phi i8* [ %buf, %if.then48 ], [ %buf, %if.end46 ], [ %spec.select235, %land.lhs.true ]
  %sub61 = add i32 %i.3, %conv31.neg
  %8 = and i32 %sub61, 1
  %cmp62.not = icmp eq i32 %8, 0
  br i1 %cmp62.not, label %if.end65, label %if.then64

if.then64:                                        ; preds = %if.end60
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 noundef 103, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.a2i_ASN1_INTEGER, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 145, i8* noundef null) #4
  tail call void @CRYPTO_free(i8* noundef %s.0227, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 noundef 104) #4
  br label %cleanup

if.end65:                                         ; preds = %if.end60
  %div = sdiv i32 %sub61, 2
  %add = add nsw i32 %div, %num.0228
  %cmp66 = icmp sgt i32 %add, %slen.0229
  br i1 %cmp66, label %if.then68, label %if.end79

if.then68:                                        ; preds = %if.end65
  %conv69 = sext i32 %slen.0229 to i64
  %mul = shl nsw i32 %div, 1
  %add70 = add nsw i32 %mul, %num.0228
  %conv71 = sext i32 %add70 to i64
  %call72 = tail call i8* @CRYPTO_clear_realloc(i8* noundef %s.0227, i64 noundef %conv69, i64 noundef %conv71, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 noundef 109) #4
  %cmp73 = icmp eq i8* %call72, null
  br i1 %cmp73, label %if.then75, label %if.end79

if.then75:                                        ; preds = %if.then68
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 noundef 111, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.a2i_ASN1_INTEGER, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #4
  tail call void @CRYPTO_free(i8* noundef %s.0227, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 noundef 112) #4
  br label %cleanup

if.end79:                                         ; preds = %if.then68, %if.end65
  %s.1 = phi i8* [ %s.0227, %if.end65 ], [ %call72, %if.then68 ]
  %slen.1 = phi i32 [ %slen.0229, %if.end65 ], [ %add70, %if.then68 ]
  %cmp81222 = icmp sgt i32 %sub61, 1
  br i1 %cmp81222, label %for.cond84.preheader.preheader, label %for.end112

for.cond84.preheader.preheader:                   ; preds = %if.end79
  %9 = sext i32 %num.0228 to i64
  %wide.trip.count256 = zext i32 %div to i64
  br label %for.cond84.preheader

for.cond84.preheader:                             ; preds = %for.cond84.preheader.preheader, %if.end95.1
  %indvars.iv251 = phi i64 [ 0, %for.cond84.preheader.preheader ], [ %indvars.iv.next252, %if.end95.1 ]
  %indvars.iv248 = phi i64 [ 0, %for.cond84.preheader.preheader ], [ %indvars.iv.next249, %if.end95.1 ]
  %10 = add nsw i64 %indvars.iv248, %9
  %arrayidx98 = getelementptr inbounds i8, i8* %s.1, i64 %10
  %arrayidx90 = getelementptr inbounds i8, i8* %bufp.0, i64 %indvars.iv251
  %11 = load i8, i8* %arrayidx90, align 1, !tbaa !13
  %call91 = tail call i32 @OPENSSL_hexchar2int(i8 noundef zeroext %11) #4
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %if.then94, label %if.end95

if.then94:                                        ; preds = %if.end95, %for.cond84.preheader
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 noundef 122, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.a2i_ASN1_INTEGER, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 141, i8* noundef null) #4
  br label %err

if.end95:                                         ; preds = %for.cond84.preheader
  %12 = load i8, i8* %arrayidx98, align 1, !tbaa !13
  %shl = shl i8 %12, 4
  %13 = trunc i32 %call91 to i8
  %conv105 = or i8 %shl, %13
  store i8 %conv105, i8* %arrayidx98, align 1, !tbaa !13
  %14 = or i64 %indvars.iv251, 1
  %arrayidx90.1 = getelementptr inbounds i8, i8* %bufp.0, i64 %14
  %15 = load i8, i8* %arrayidx90.1, align 1, !tbaa !13
  %call91.1 = tail call i32 @OPENSSL_hexchar2int(i8 noundef zeroext %15) #4
  %cmp92.1 = icmp slt i32 %call91.1, 0
  br i1 %cmp92.1, label %if.then94, label %if.end95.1

if.end95.1:                                       ; preds = %if.end95
  %16 = load i8, i8* %arrayidx98, align 1, !tbaa !13
  %shl.1 = shl i8 %16, 4
  %17 = trunc i32 %call91.1 to i8
  %conv105.1 = or i8 %shl.1, %17
  store i8 %conv105.1, i8* %arrayidx98, align 1, !tbaa !13
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1
  %indvars.iv.next252 = add nuw nsw i64 %indvars.iv251, 2
  %exitcond257.not = icmp eq i64 %indvars.iv.next249, %wide.trip.count256
  br i1 %exitcond257.not, label %for.end112, label %for.cond84.preheader, !llvm.loop !17

for.end112:                                       ; preds = %if.end95.1, %if.end79
  br i1 %cmp30, label %if.then115, label %for.end118

if.then115:                                       ; preds = %for.end112
  %call116 = tail call i32 @BIO_gets(%struct.bio_st* noundef %bp, i8* noundef %buf, i32 noundef %size) #4
  %cmp = icmp slt i32 %call116, 1
  br i1 %cmp, label %err, label %if.end

for.end118:                                       ; preds = %for.end112
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %bs, i64 0, i32 0
  store i32 %add, i32* %length, align 8, !tbaa !11
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %bs, i64 0, i32 2
  store i8* %s.1, i8** %data, align 8, !tbaa !12
  br label %cleanup

err:                                              ; preds = %if.then115, %if.end6, %if.end21, %for.end, %entry, %if.then94
  %s.2 = phi i8* [ %s.1, %if.then94 ], [ null, %entry ], [ %s.1, %if.then115 ], [ %s.0227, %if.end6 ], [ %s.0227, %if.end21 ], [ %s.0227, %for.end ]
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 noundef 139, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.a2i_ASN1_INTEGER, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 150, i8* noundef null) #4
  tail call void @CRYPTO_free(i8* noundef %s.2, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 noundef 140) #4
  br label %cleanup

cleanup:                                          ; preds = %err, %for.end118, %if.then75, %if.then64
  %retval.0 = phi i32 [ 0, %err ], [ 0, %if.then64 ], [ 0, %if.then75 ], [ 1, %for.end118 ]
  ret i32 %retval.0
}

declare i32 @BIO_gets(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_ctype_check(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_clear_realloc(i8* noundef, i64 noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OPENSSL_hexchar2int(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2a_ASN1_ENUMERATED(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef %a) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @i2a_ASN1_INTEGER(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef %a) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @a2i_ASN1_ENUMERATED(%struct.bio_st* noundef %bp, %struct.asn1_string_st* nocapture noundef %bs, i8* noundef %buf, i32 noundef %size) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @a2i_ASN1_INTEGER(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef %bs, i8* noundef %buf, i32 noundef %size) #5
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %bs, i64 0, i32 1
  %0 = load i32, i32* %type, align 4, !tbaa !4
  %and = and i32 %0, 256
  %or = or i32 %and, 2
  store i32 %or, i32* %type, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 4}
!5 = !{!"asn1_string_st", !6, i64 0, !6, i64 4, !9, i64 8, !10, i64 16}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!5, !6, i64 0}
!12 = !{!5, !9, i64 8}
!13 = !{!7, !7, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
