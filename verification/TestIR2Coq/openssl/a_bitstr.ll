; ModuleID = 'crypto/asn1/a_bitstr.c'
source_filename = "crypto/asn1/a_bitstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_string_st = type { i32, i32, i8*, i64 }

@.str = private unnamed_addr constant [23 x i8] c"crypto/asn1/a_bitstr.c\00", align 1
@__func__.ossl_c2i_ASN1_BIT_STRING = private unnamed_addr constant [25 x i8] c"ossl_c2i_ASN1_BIT_STRING\00", align 1
@__func__.ASN1_BIT_STRING_set_bit = private unnamed_addr constant [24 x i8] c"ASN1_BIT_STRING_set_bit\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_BIT_STRING_set(%struct.asn1_string_st* noundef %x, i8* noundef %d, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef %x, i8* noundef %d, i32 noundef %len) #5
  ret i32 %call
}

declare i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_i2c_ASN1_BIT_STRING(%struct.asn1_string_st* noundef readonly %a, i8** noundef %pp) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.asn1_string_st* %a, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 0
  %0 = load i32, i32* %length, align 8, !tbaa !4
  %cmp1 = icmp sgt i32 %0, 0
  br i1 %cmp1, label %if.then2, label %if.end58

if.then2:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 3
  %1 = load i64, i64* %flags, align 8, !tbaa !11
  %and = and i64 %1, 8
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.then3

for.cond.preheader:                               ; preds = %if.then2
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 2
  %2 = zext i32 %0 to i64
  %3 = load i8*, i8** %data, align 8, !tbaa !12
  br label %for.cond

if.then3:                                         ; preds = %if.then2
  %conv = trunc i64 %1 to i32
  %and5 = and i32 %conv, 7
  br label %if.end58

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %2, %for.cond.preheader ], [ %indvars.iv.next, %for.body ]
  %cmp6 = icmp sgt i64 %indvars.iv, 0
  br i1 %cmp6, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  %.pre = load i8*, i8** %data, align 8, !tbaa !12
  br label %for.end

for.body:                                         ; preds = %for.cond
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %4 = and i64 %indvars.iv.next, 4294967295
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %4
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !13
  %tobool8.not = icmp eq i8 %5, 0
  br i1 %tobool8.not, label %for.cond, label %for.end.loopexit, !llvm.loop !14

for.end.loopexit:                                 ; preds = %for.body
  %6 = trunc i64 %indvars.iv to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.for.end_crit_edge
  %7 = phi i8* [ %.pre, %for.cond.for.end_crit_edge ], [ %3, %for.end.loopexit ]
  %len.0.lcssa = phi i32 [ 0, %for.cond.for.end_crit_edge ], [ %6, %for.end.loopexit ]
  %sub12 = add nsw i32 %len.0.lcssa, -1
  %idxprom13 = sext i32 %sub12 to i64
  %arrayidx14 = getelementptr inbounds i8, i8* %7, i64 %idxprom13
  %8 = load i8, i8* %arrayidx14, align 1, !tbaa !13
  %conv15 = zext i8 %8 to i32
  %and16 = and i32 %conv15, 1
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.else19, label %if.end58

if.else19:                                        ; preds = %for.end
  %and20 = and i32 %conv15, 2
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.else23, label %if.end58

if.else23:                                        ; preds = %if.else19
  %and24 = and i32 %conv15, 4
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.else27, label %if.end58

if.else27:                                        ; preds = %if.else23
  %and28 = and i32 %conv15, 8
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.else31, label %if.end58

if.else31:                                        ; preds = %if.else27
  %and32 = and i32 %conv15, 16
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.else35, label %if.end58

if.else35:                                        ; preds = %if.else31
  %and36 = and i32 %conv15, 32
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.else39, label %if.end58

if.else39:                                        ; preds = %if.else35
  %and40 = and i32 %conv15, 64
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.else43, label %if.end58

if.else43:                                        ; preds = %if.else39
  %and44 = and i32 %conv15, 128
  %tobool45.not = icmp eq i32 %and44, 0
  %. = select i1 %tobool45.not, i32 0, i32 7
  br label %if.end58

if.end58:                                         ; preds = %if.end, %if.else43, %if.else39, %if.else35, %if.else31, %if.else27, %if.else23, %if.else19, %for.end, %if.then3
  %bits.0 = phi i32 [ %and5, %if.then3 ], [ 0, %for.end ], [ 1, %if.else19 ], [ 2, %if.else23 ], [ 3, %if.else27 ], [ 4, %if.else31 ], [ 5, %if.else35 ], [ 6, %if.else39 ], [ %., %if.else43 ], [ 0, %if.end ]
  %len.1 = phi i32 [ %0, %if.then3 ], [ %len.0.lcssa, %for.end ], [ %len.0.lcssa, %if.else19 ], [ %len.0.lcssa, %if.else23 ], [ %len.0.lcssa, %if.else27 ], [ %len.0.lcssa, %if.else31 ], [ %len.0.lcssa, %if.else35 ], [ %len.0.lcssa, %if.else39 ], [ %len.0.lcssa, %if.else43 ], [ %0, %if.end ]
  %add = add nsw i32 %len.1, 1
  %cmp59 = icmp eq i8** %pp, null
  br i1 %cmp59, label %cleanup, label %if.end62

if.end62:                                         ; preds = %if.end58
  %9 = load i8*, i8** %pp, align 8, !tbaa !16
  %conv63 = trunc i32 %bits.0 to i8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i64 1
  store i8 %conv63, i8* %9, align 1, !tbaa !13
  %cmp65 = icmp sgt i32 %len.1, 0
  br i1 %cmp65, label %if.then67, label %if.end73

if.then67:                                        ; preds = %if.end62
  %data64 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 2
  %10 = load i8*, i8** %data64, align 8, !tbaa !12
  %conv68114 = zext i32 %len.1 to i64
  %call = tail call i8* @memcpy(i8* noundef nonnull %incdec.ptr, i8* noundef %10, i64 noundef %conv68114) #5
  %add.ptr = getelementptr inbounds i8, i8* %incdec.ptr, i64 %conv68114
  %shl = shl nuw nsw i32 255, %bits.0
  %arrayidx69 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %11 = load i8, i8* %arrayidx69, align 1, !tbaa !13
  %12 = trunc i32 %shl to i8
  %conv72 = and i8 %11, %12
  store i8 %conv72, i8* %arrayidx69, align 1, !tbaa !13
  br label %if.end73

if.end73:                                         ; preds = %if.then67, %if.end62
  %p.0 = phi i8* [ %add.ptr, %if.then67 ], [ %incdec.ptr, %if.end62 ]
  store i8* %p.0, i8** %pp, align 8, !tbaa !16
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %entry, %if.end73
  %retval.0 = phi i32 [ %add, %if.end73 ], [ 0, %entry ], [ %add, %if.end58 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @ossl_c2i_ASN1_BIT_STRING(%struct.asn1_string_st** noundef %a, i8** nocapture noundef %pp, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i64 %len, 1
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp ugt i64 %len, 2147483647
  br i1 %cmp1, label %err, label %if.end3

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp eq %struct.asn1_string_st** %a, null
  br i1 %cmp4, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %a, align 8, !tbaa !16
  %cmp5 = icmp eq %struct.asn1_string_st* %0, null
  br i1 %cmp5, label %if.then6, label %if.end10

if.then6:                                         ; preds = %lor.lhs.false, %if.end3
  %call = tail call %struct.asn1_string_st* @ASN1_BIT_STRING_new() #5
  %cmp7 = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp7, label %cleanup, label %if.end10

if.end10:                                         ; preds = %lor.lhs.false, %if.then6
  %ret.0 = phi %struct.asn1_string_st* [ %call, %if.then6 ], [ %0, %lor.lhs.false ]
  %1 = load i8*, i8** %pp, align 8, !tbaa !16
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1
  %2 = load i8, i8* %1, align 1, !tbaa !13
  %conv = zext i8 %2 to i32
  %cmp11 = icmp ugt i8 %2, 7
  br i1 %cmp11, label %err, label %if.end14

if.end14:                                         ; preds = %if.end10
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %ret.0, i64 0, i32 3
  %3 = load i64, i64* %flags, align 8, !tbaa !11
  %and = and i64 %3, -16
  %or = or i32 %conv, 8
  %conv15 = zext i32 %or to i64
  %or17 = or i64 %and, %conv15
  store i64 %or17, i64* %flags, align 8, !tbaa !11
  %dec = add nsw i64 %len, -1
  %cmp18 = icmp ugt i64 %len, 1
  br i1 %cmp18, label %if.then20, label %if.end35

if.then20:                                        ; preds = %if.end14
  %call23 = tail call i8* @CRYPTO_malloc(i64 noundef %dec, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 117) #5
  %cmp24 = icmp eq i8* %call23, null
  br i1 %cmp24, label %err, label %if.end27

if.end27:                                         ; preds = %if.then20
  %call30 = tail call i8* @memcpy(i8* noundef nonnull %call23, i8* noundef nonnull %incdec.ptr, i64 noundef %dec) #5
  %shl = shl i32 255, %conv
  %sub = add nsw i64 %len, -2
  %arrayidx = getelementptr inbounds i8, i8* %call23, i64 %sub
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !13
  %5 = trunc i32 %shl to i8
  %conv33 = and i8 %4, %5
  store i8 %conv33, i8* %arrayidx, align 1, !tbaa !13
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %len
  br label %if.end35

if.end35:                                         ; preds = %if.end14, %if.end27
  %p.0 = phi i8* [ %add.ptr, %if.end27 ], [ %incdec.ptr, %if.end14 ]
  %s.0 = phi i8* [ %call23, %if.end27 ], [ null, %if.end14 ]
  %conv36 = trunc i64 %dec to i32
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %ret.0, i64 0, i32 0
  store i32 %conv36, i32* %length, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %ret.0, i64 0, i32 2
  %6 = load i8*, i8** %data, align 8, !tbaa !12
  tail call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 129) #5
  store i8* %s.0, i8** %data, align 8, !tbaa !12
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %ret.0, i64 0, i32 1
  store i32 3, i32* %type, align 4, !tbaa !17
  br i1 %cmp4, label %if.end41, label %if.then40

if.then40:                                        ; preds = %if.end35
  store %struct.asn1_string_st* %ret.0, %struct.asn1_string_st** %a, align 8, !tbaa !16
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end35
  store i8* %p.0, i8** %pp, align 8, !tbaa !16
  br label %cleanup

err:                                              ; preds = %if.then20, %if.end10, %if.end, %entry
  %ret.1 = phi %struct.asn1_string_st* [ null, %entry ], [ null, %if.end ], [ %ret.0, %if.end10 ], [ %ret.0, %if.then20 ]
  %i.0 = phi i32 [ 152, %entry ], [ 151, %if.end ], [ 220, %if.end10 ], [ 786688, %if.then20 ]
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 137, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ossl_c2i_ASN1_BIT_STRING, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef %i.0, i8* noundef null) #5
  %cmp42 = icmp eq %struct.asn1_string_st** %a, null
  br i1 %cmp42, label %if.then47, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %err
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %a, align 8, !tbaa !16
  %cmp45.not = icmp eq %struct.asn1_string_st* %7, %ret.1
  br i1 %cmp45.not, label %cleanup, label %if.then47

if.then47:                                        ; preds = %lor.lhs.false44, %err
  tail call void @ASN1_BIT_STRING_free(%struct.asn1_string_st* noundef %ret.1) #5
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false44, %if.then47, %if.then6, %if.end41
  %retval.0 = phi %struct.asn1_string_st* [ %ret.0, %if.end41 ], [ null, %if.then6 ], [ null, %if.then47 ], [ null, %lor.lhs.false44 ]
  ret %struct.asn1_string_st* %retval.0
}

declare %struct.asn1_string_st* @ASN1_BIT_STRING_new() local_unnamed_addr #1

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare void @ASN1_BIT_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_BIT_STRING_set_bit(%struct.asn1_string_st* noundef %a, i32 noundef %n, i32 noundef %value) local_unnamed_addr #0 {
entry:
  %div = sdiv i32 %n, 8
  %and = and i32 %n, 7
  %sub = xor i32 %and, 7
  %shl = shl nuw i32 1, %sub
  %neg = xor i32 %shl, -1
  %tobool.not = icmp eq i32 %value, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 %shl
  %cmp = icmp eq %struct.asn1_string_st* %a, null
  br i1 %cmp, label %cleanup, label %if.end2

if.end2:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 3
  %0 = load i64, i64* %flags, align 8, !tbaa !11
  %and3 = and i64 %0, -16
  store i64 %and3, i64* %flags, align 8, !tbaa !11
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 0
  %1 = load i32, i32* %length, align 8, !tbaa !4
  %add = add nsw i32 %div, 1
  %cmp4.not = icmp sgt i32 %1, %div
  br i1 %cmp4.not, label %lor.lhs.false, label %if.then6

lor.lhs.false:                                    ; preds = %if.end2
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 2
  %2 = load i8*, i8** %data, align 8, !tbaa !12
  %cmp5 = icmp eq i8* %2, null
  br i1 %cmp5, label %if.then6, label %if.end34

if.then6:                                         ; preds = %lor.lhs.false, %if.end2
  br i1 %tobool.not, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.then6
  %data10 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 2
  %3 = load i8*, i8** %data10, align 8, !tbaa !12
  %conv = sext i32 %1 to i64
  %conv13 = sext i32 %add to i64
  %call = tail call i8* @CRYPTO_clear_realloc(i8* noundef %3, i64 noundef %conv, i64 noundef %conv13, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 165) #5
  %cmp14 = icmp eq i8* %call, null
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end9
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 167, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ASN1_BIT_STRING_set_bit, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %4 = load i32, i32* %length, align 8, !tbaa !4
  %sub20 = sub nsw i32 %add, %4
  %cmp21 = icmp sgt i32 %sub20, 0
  br i1 %cmp21, label %if.then23, label %if.end30

if.then23:                                        ; preds = %if.end17
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 %idx.ext
  %conv2888 = zext i32 %sub20 to i64
  %call29 = tail call i8* @memset(i8* noundef nonnull %add.ptr, i32 noundef 0, i64 noundef %conv2888) #5
  br label %if.end30

if.end30:                                         ; preds = %if.then23, %if.end17
  store i8* %call, i8** %data10, align 8, !tbaa !12
  store i32 %add, i32* %length, align 8, !tbaa !4
  br label %if.end34

if.end34:                                         ; preds = %if.end30, %lor.lhs.false
  %5 = phi i8* [ %call, %if.end30 ], [ %2, %lor.lhs.false ]
  %idxprom = sext i32 %div to i64
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !13
  %conv36 = zext i8 %6 to i32
  %and37 = and i32 %conv36, %neg
  %or = or i32 %and37, %spec.select
  %conv38 = trunc i32 %or to i8
  store i8 %conv38, i8* %arrayidx, align 1, !tbaa !13
  %.pr = load i32, i32* %length, align 8, !tbaa !4
  %cmp4389 = icmp sgt i32 %.pr, 0
  br i1 %cmp4389, label %land.rhs.lr.ph, label %cleanup

land.rhs.lr.ph:                                   ; preds = %if.end34
  %data35 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 2
  %7 = load i8*, i8** %data35, align 8, !tbaa !12
  %8 = zext i32 %.pr to i64
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body
  %indvars.iv = phi i64 [ %8, %land.rhs.lr.ph ], [ %indvars.iv.next, %while.body ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %9 = and i64 %indvars.iv.next, 4294967295
  %arrayidx49 = getelementptr inbounds i8, i8* %7, i64 %9
  %10 = load i8, i8* %arrayidx49, align 1, !tbaa !13
  %cmp51 = icmp eq i8 %10, 0
  br i1 %cmp51, label %while.body, label %cleanup

while.body:                                       ; preds = %land.rhs
  %indvars = trunc i64 %indvars.iv.next to i32
  store i32 %indvars, i32* %length, align 8, !tbaa !4
  %cmp43 = icmp ugt i64 %indvars.iv, 1
  br i1 %cmp43, label %land.rhs, label %cleanup, !llvm.loop !18

cleanup:                                          ; preds = %while.body, %land.rhs, %if.end34, %if.then6, %entry, %if.then16
  %retval.0 = phi i32 [ 0, %if.then16 ], [ 0, %entry ], [ 1, %if.then6 ], [ 1, %if.end34 ], [ 1, %land.rhs ], [ 1, %while.body ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_clear_realloc(i8* noundef, i64 noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @ASN1_BIT_STRING_get_bit(%struct.asn1_string_st* noundef readonly %a, i32 noundef %n) local_unnamed_addr #3 {
entry:
  %div = sdiv i32 %n, 8
  %and = and i32 %n, 7
  %sub = xor i32 %and, 7
  %cmp = icmp eq %struct.asn1_string_st* %a, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 0
  %0 = load i32, i32* %length, align 8, !tbaa !4
  %cmp1.not = icmp sgt i32 %0, %div
  br i1 %cmp1.not, label %lor.lhs.false2, label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 2
  %1 = load i8*, i8** %data, align 8, !tbaa !12
  %cmp3 = icmp eq i8* %1, null
  br i1 %cmp3, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false2
  %idxprom = sext i32 %div to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !13
  %conv = zext i8 %2 to i32
  %3 = lshr i32 %conv, %sub
  %4 = and i32 %3, 1
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %lor.lhs.false2, %if.end
  %retval.0 = phi i32 [ %4, %if.end ], [ 0, %lor.lhs.false2 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define i32 @ASN1_BIT_STRING_check(%struct.asn1_string_st* noundef readonly %a, i8* nocapture noundef readonly %flags, i32 noundef %flags_len) local_unnamed_addr #4 {
entry:
  %tobool.not = icmp eq %struct.asn1_string_st* %a, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 2
  %0 = load i8*, i8** %data, align 8, !tbaa !12
  %tobool1.not = icmp eq i8* %0, null
  br i1 %tobool1.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 0
  %1 = load i32, i32* %length, align 8, !tbaa !4
  %cmp24 = icmp sgt i32 %1, 0
  br i1 %cmp24, label %for.body.preheader, label %cleanup

for.body.preheader:                               ; preds = %for.cond.preheader
  %2 = sext i32 %flags_len to i64
  %3 = zext i32 %1 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %cond.end
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %cond.end ]
  %cmp3 = icmp slt i64 %indvars.iv, %2
  br i1 %cmp3, label %cond.true, label %cond.end

cond.true:                                        ; preds = %for.body
  %arrayidx = getelementptr inbounds i8, i8* %flags, i64 %indvars.iv
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !13
  %neg = xor i8 %4, -1
  br label %cond.end

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi i8 [ %neg, %cond.true ], [ -1, %for.body ]
  %arrayidx7 = getelementptr inbounds i8, i8* %0, i64 %indvars.iv
  %5 = load i8, i8* %arrayidx7, align 1, !tbaa !13
  %and23 = and i8 %5, %cond
  %cmp10 = icmp eq i8 %and23, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp = icmp ult i64 %indvars.iv.next, %3
  %6 = select i1 %cmp, i1 %cmp10, i1 false
  br i1 %6, label %for.body, label %cleanup.loopexit, !llvm.loop !19

cleanup.loopexit:                                 ; preds = %cond.end
  %conv11 = zext i1 %cmp10 to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %for.cond.preheader, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 1, %lor.lhs.false ], [ 1, %entry ], [ 1, %for.cond.preheader ], [ %conv11, %cleanup.loopexit ]
  ret i32 %retval.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }

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
!11 = !{!5, !10, i64 16}
!12 = !{!5, !9, i64 8}
!13 = !{!7, !7, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!9, !9, i64 0}
!17 = !{!5, !6, i64 4}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !15}
