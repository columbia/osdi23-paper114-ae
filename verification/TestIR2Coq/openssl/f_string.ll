; ModuleID = 'crypto/asn1/f_string.c'
source_filename = "crypto/asn1/f_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }

@.str = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"crypto/asn1/f_string.c\00", align 1
@__func__.a2i_ASN1_STRING = private unnamed_addr constant [16 x i8] c"a2i_ASN1_STRING\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @i2a_ASN1_STRING(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef readonly %a, i32 noundef %type) local_unnamed_addr #0 {
entry:
  %buf = alloca [2 x i8], align 1
  %0 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %0) #3
  %cmp = icmp eq %struct.asn1_string_st* %a, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 0
  %1 = load i32, i32* %length, align 8, !tbaa !4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then2, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %cmp752 = icmp sgt i32 %1, 0
  br i1 %cmp752, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 2
  %arrayidx26 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 1
  br label %for.body

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1) #4
  %cmp3.not = icmp eq i32 %call, 1
  br i1 %cmp3.not, label %cleanup, label %err

for.body:                                         ; preds = %for.body.lr.ph, %if.end31
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end31 ]
  %n.054 = phi i32 [ 0, %for.body.lr.ph ], [ %add32, %if.end31 ]
  %cmp8.not = icmp ne i64 %indvars.iv, 0
  %2 = trunc i64 %indvars.iv to i32
  %rem = urem i32 %2, 35
  %cmp9 = icmp eq i32 %rem, 0
  %or.cond = and i1 %cmp8.not, %cmp9
  br i1 %or.cond, label %if.then10, label %if.end15

if.then10:                                        ; preds = %for.body
  %call11 = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 noundef 2) #4
  %cmp12.not = icmp eq i32 %call11, 2
  br i1 %cmp12.not, label %if.end14, label %err

if.end14:                                         ; preds = %if.then10
  %add = add nsw i32 %n.054, 2
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %for.body
  %n.1 = phi i32 [ %add, %if.end14 ], [ %n.054, %for.body ]
  %3 = load i8*, i8** %data, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %indvars.iv
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %5 = lshr i8 %4, 4
  %6 = zext i8 %5 to i64
  %arrayidx17 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %6
  %7 = load i8, i8* %arrayidx17, align 1, !tbaa !12
  store i8 %7, i8* %0, align 1, !tbaa !12
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %9 = and i8 %8, 15
  %10 = zext i8 %9 to i64
  %arrayidx25 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %10
  %11 = load i8, i8* %arrayidx25, align 1, !tbaa !12
  store i8 %11, i8* %arrayidx26, align 1, !tbaa !12
  %call27 = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef nonnull %0, i32 noundef 2) #4
  %cmp28.not = icmp eq i32 %call27, 2
  br i1 %cmp28.not, label %if.end31, label %err

if.end31:                                         ; preds = %if.end15
  %add32 = add nsw i32 %n.1, 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %12 = load i32, i32* %length, align 8, !tbaa !4
  %13 = sext i32 %12 to i64
  %cmp7 = icmp slt i64 %indvars.iv.next, %13
  br i1 %cmp7, label %for.body, label %cleanup, !llvm.loop !13

err:                                              ; preds = %if.end15, %if.then10, %if.then2
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %for.cond.preheader, %if.then2, %entry, %err
  %retval.0 = phi i32 [ -1, %err ], [ 0, %entry ], [ 1, %if.then2 ], [ 0, %for.cond.preheader ], [ %add32, %if.end31 ]
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %0) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @a2i_ASN1_STRING(%struct.bio_st* noundef %bp, %struct.asn1_string_st* nocapture noundef writeonly %bs, i8* noundef %buf, i32 noundef %size) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BIO_gets(%struct.bio_st* noundef %bp, i8* noundef %buf, i32 noundef %size) #4
  %cmp222 = icmp slt i32 %call, 1
  br i1 %cmp222, label %for.end107, label %if.end

if.then:                                          ; preds = %if.then103
  br i1 %cmp222, label %for.end107, label %err

if.end:                                           ; preds = %entry, %if.then103
  %slen.0226 = phi i32 [ %slen.1, %if.then103 ], [ 0, %entry ]
  %num.0225 = phi i32 [ %add, %if.then103 ], [ 0, %entry ]
  %s.0224 = phi i8* [ %s.1, %if.then103 ], [ null, %entry ]
  %bufsize.0223 = phi i32 [ %call104, %if.then103 ], [ %call, %entry ]
  %sub = add nsw i32 %bufsize.0223, -1
  %0 = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, i8* %buf, i64 %0
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %cmp2 = icmp eq i8 %1, 10
  br i1 %cmp2, label %if.end7, label %if.end11

if.end7:                                          ; preds = %if.end
  store i8 0, i8* %arrayidx, align 1, !tbaa !12
  %cmp8 = icmp eq i32 %sub, 0
  br i1 %cmp8, label %err, label %if.end7.if.end11_crit_edge

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  %.pre253 = add nsw i32 %bufsize.0223, -2
  %.pre254 = zext i32 %.pre253 to i64
  br label %if.end11

if.end11:                                         ; preds = %if.end7.if.end11_crit_edge, %if.end
  %.pre-phi = phi i64 [ %.pre254, %if.end7.if.end11_crit_edge ], [ %0, %if.end ]
  %sub12.pre-phi = phi i32 [ %.pre253, %if.end7.if.end11_crit_edge ], [ %sub, %if.end ]
  %i.0191 = phi i32 [ %sub, %if.end7.if.end11_crit_edge ], [ %bufsize.0223, %if.end ]
  %arrayidx14 = getelementptr inbounds i8, i8* %buf, i64 %.pre-phi
  %2 = load i8, i8* %arrayidx14, align 1, !tbaa !12
  %cmp16 = icmp eq i8 %2, 13
  br i1 %cmp16, label %if.end22, label %if.end26

if.end22:                                         ; preds = %if.end11
  store i8 0, i8* %arrayidx14, align 1, !tbaa !12
  %cmp23 = icmp eq i32 %sub12.pre-phi, 0
  br i1 %cmp23, label %err, label %if.end22.if.end26_crit_edge

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  %.pre255 = add nsw i32 %sub12.pre-phi, -1
  %.pre256 = zext i32 %.pre255 to i64
  br label %if.end26

if.end26:                                         ; preds = %if.end22.if.end26_crit_edge, %if.end11
  %.pre-phi257 = phi i64 [ %.pre256, %if.end22.if.end26_crit_edge ], [ %.pre-phi, %if.end11 ]
  %i.1194 = phi i32 [ %sub12.pre-phi, %if.end22.if.end26_crit_edge ], [ %i.0191, %if.end11 ]
  %arrayidx29 = getelementptr inbounds i8, i8* %buf, i64 %.pre-phi257
  %3 = load i8, i8* %arrayidx29, align 1, !tbaa !12
  %cmp31 = icmp eq i8 %3, 92
  %conv32.neg = sext i1 %cmp31 to i32
  %cmp35215 = icmp ugt i32 %i.1194, 1
  br i1 %cmp35215, label %for.body.preheader, label %for.end.thread

for.body.preheader:                               ; preds = %if.end26
  %conv39300 = sext i8 %3 to i32
  %call40301 = tail call i32 @ossl_ctype_check(i32 noundef %conv39300, i32 noundef 16) #4
  %tobool41.not302 = icmp eq i32 %call40301, 0
  br i1 %tobool41.not302, label %for.end.split.loop.exit281, label %for.inc

for.end.thread:                                   ; preds = %if.end26
  %idxprom45261264 = zext i32 %i.1194 to i64
  %arrayidx46262 = getelementptr inbounds i8, i8* %buf, i64 %idxprom45261264
  store i8 0, i8* %arrayidx46262, align 1, !tbaa !12
  br label %err

for.inc:                                          ; preds = %for.body.preheader, %for.inc.for.body_crit_edge
  %indvars.iv303 = phi i64 [ %indvars.iv.next, %for.inc.for.body_crit_edge ], [ %.pre-phi257, %for.body.preheader ]
  %indvars.iv.next = add nsw i64 %indvars.iv303, -1
  %cmp35 = icmp sgt i64 %indvars.iv303, 1
  br i1 %cmp35, label %for.inc.for.body_crit_edge, label %for.end, !llvm.loop !15

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %arrayidx38.phi.trans.insert = getelementptr inbounds i8, i8* %buf, i64 %indvars.iv.next
  %.pre = load i8, i8* %arrayidx38.phi.trans.insert, align 1, !tbaa !12
  %conv39 = sext i8 %.pre to i32
  %call40 = tail call i32 @ossl_ctype_check(i32 noundef %conv39, i32 noundef 16) #4
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %for.end.split.loop.exit281, label %for.inc

for.end.split.loop.exit281:                       ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %indvars.iv.lcssa = phi i64 [ %.pre-phi257, %for.body.preheader ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %4 = trunc i64 %indvars.iv.lcssa to i32
  br label %for.end

for.end:                                          ; preds = %for.inc, %for.end.split.loop.exit281
  %i.2 = phi i32 [ %4, %for.end.split.loop.exit281 ], [ %i.1194, %for.inc ]
  %idxprom45 = sext i32 %i.2 to i64
  %arrayidx46 = getelementptr inbounds i8, i8* %buf, i64 %idxprom45
  store i8 0, i8* %arrayidx46, align 1, !tbaa !12
  %cmp47 = icmp slt i32 %i.2, 2
  br i1 %cmp47, label %err, label %if.end50

if.end50:                                         ; preds = %for.end
  %sub51 = add i32 %i.2, %conv32.neg
  %5 = and i32 %sub51, 1
  %cmp52.not = icmp eq i32 %5, 0
  br i1 %cmp52.not, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.end50
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 94, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.a2i_ASN1_STRING, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 145, i8* noundef null) #4
  tail call void @CRYPTO_free(i8* noundef %s.0224, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 95) #4
  br label %cleanup

if.end55:                                         ; preds = %if.end50
  %div = sdiv i32 %sub51, 2
  %add = add nsw i32 %div, %num.0225
  %cmp56 = icmp sgt i32 %add, %slen.0226
  br i1 %cmp56, label %if.then58, label %if.end68

if.then58:                                        ; preds = %if.end55
  %mul = shl nsw i32 %div, 1
  %add59 = add i32 %mul, %num.0225
  %conv60 = zext i32 %add59 to i64
  %call61 = tail call i8* @CRYPTO_realloc(i8* noundef %s.0224, i64 noundef %conv60, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 100) #4
  %cmp62 = icmp eq i8* %call61, null
  br i1 %cmp62, label %if.then64, label %if.end68

if.then64:                                        ; preds = %if.then58
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 102, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.a2i_ASN1_STRING, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #4
  tail call void @CRYPTO_free(i8* noundef %s.0224, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 103) #4
  br label %cleanup

if.end68:                                         ; preds = %if.then58, %if.end55
  %s.1 = phi i8* [ %s.0224, %if.end55 ], [ %call61, %if.then58 ]
  %slen.1 = phi i32 [ %slen.0226, %if.end55 ], [ %add59, %if.then58 ]
  %cmp70219 = icmp sgt i32 %sub51, 1
  br i1 %cmp70219, label %for.cond73.preheader.preheader, label %for.end100

for.cond73.preheader.preheader:                   ; preds = %if.end68
  %6 = sext i32 %num.0225 to i64
  %wide.trip.count = zext i32 %div to i64
  br label %for.cond73.preheader

for.cond73.preheader:                             ; preds = %for.cond73.preheader.preheader, %if.end84.1
  %indvars.iv248 = phi i64 [ 0, %for.cond73.preheader.preheader ], [ %indvars.iv.next249, %if.end84.1 ]
  %indvars.iv245 = phi i64 [ 0, %for.cond73.preheader.preheader ], [ %indvars.iv.next246, %if.end84.1 ]
  %7 = add nsw i64 %indvars.iv245, %6
  %arrayidx87 = getelementptr inbounds i8, i8* %s.1, i64 %7
  %arrayidx79 = getelementptr inbounds i8, i8* %buf, i64 %indvars.iv248
  %8 = load i8, i8* %arrayidx79, align 1, !tbaa !12
  %call80 = tail call i32 @OPENSSL_hexchar2int(i8 noundef zeroext %8) #4
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end84, %for.cond73.preheader
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 113, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.a2i_ASN1_STRING, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 141, i8* noundef null) #4
  tail call void @CRYPTO_free(i8* noundef %s.1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 114) #4
  br label %cleanup

if.end84:                                         ; preds = %for.cond73.preheader
  %9 = load i8, i8* %arrayidx87, align 1, !tbaa !12
  %shl = shl i8 %9, 4
  %10 = trunc i32 %call80 to i8
  %conv94 = or i8 %shl, %10
  store i8 %conv94, i8* %arrayidx87, align 1, !tbaa !12
  %11 = or i64 %indvars.iv248, 1
  %arrayidx79.1 = getelementptr inbounds i8, i8* %buf, i64 %11
  %12 = load i8, i8* %arrayidx79.1, align 1, !tbaa !12
  %call80.1 = tail call i32 @OPENSSL_hexchar2int(i8 noundef zeroext %12) #4
  %cmp81.1 = icmp slt i32 %call80.1, 0
  br i1 %cmp81.1, label %if.then83, label %if.end84.1

if.end84.1:                                       ; preds = %if.end84
  %13 = load i8, i8* %arrayidx87, align 1, !tbaa !12
  %shl.1 = shl i8 %13, 4
  %14 = trunc i32 %call80.1 to i8
  %conv94.1 = or i8 %shl.1, %14
  store i8 %conv94.1, i8* %arrayidx87, align 1, !tbaa !12
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 2
  %exitcond.not = icmp eq i64 %indvars.iv.next246, %wide.trip.count
  br i1 %exitcond.not, label %for.end100, label %for.cond73.preheader, !llvm.loop !16

for.end100:                                       ; preds = %if.end84.1, %if.end68
  br i1 %cmp31, label %if.then103, label %for.end107

if.then103:                                       ; preds = %for.end100
  %call104 = tail call i32 @BIO_gets(%struct.bio_st* noundef %bp, i8* noundef nonnull %buf, i32 noundef %size) #4
  %cmp = icmp slt i32 %call104, 1
  br i1 %cmp, label %if.then, label %if.end

for.end107:                                       ; preds = %for.end100, %entry, %if.then
  %s.2 = phi i8* [ %s.1, %if.then ], [ null, %entry ], [ %s.1, %for.end100 ]
  %num.1 = phi i32 [ %add, %if.then ], [ 0, %entry ], [ %add, %for.end100 ]
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %bs, i64 0, i32 0
  store i32 %num.1, i32* %length, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %bs, i64 0, i32 2
  store i8* %s.2, i8** %data, align 8, !tbaa !11
  br label %cleanup

err:                                              ; preds = %for.end, %if.end22, %if.end7, %for.end.thread, %if.then
  %s.0211 = phi i8* [ %s.1, %if.then ], [ %s.0224, %for.end.thread ], [ %s.0224, %if.end7 ], [ %s.0224, %if.end22 ], [ %s.0224, %for.end ]
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 132, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.a2i_ASN1_STRING, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 150, i8* noundef null) #4
  tail call void @CRYPTO_free(i8* noundef %s.0211, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 133) #4
  br label %cleanup

cleanup:                                          ; preds = %err, %for.end107, %if.then83, %if.then64, %if.then54
  %retval.0 = phi i32 [ 1, %for.end107 ], [ 0, %err ], [ 0, %if.then54 ], [ 0, %if.then64 ], [ 0, %if.then83 ]
  ret i32 %retval.0
}

declare i32 @BIO_gets(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_ctype_check(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_realloc(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OPENSSL_hexchar2int(i8 noundef zeroext) local_unnamed_addr #2

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
!4 = !{!5, !6, i64 0}
!5 = !{!"asn1_string_st", !6, i64 0, !6, i64 4, !9, i64 8, !10, i64 16}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!5, !9, i64 8}
!12 = !{!7, !7, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
