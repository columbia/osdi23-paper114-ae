; ModuleID = 'crypto/asn1/a_object.c'
source_filename = "crypto/asn1/a_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }
%struct.bignum_st = type opaque
%struct.bio_st = type opaque

@.str = private unnamed_addr constant [23 x i8] c"crypto/asn1/a_object.c\00", align 1
@__func__.i2d_ASN1_OBJECT = private unnamed_addr constant [16 x i8] c"i2d_ASN1_OBJECT\00", align 1
@__func__.a2d_ASN1_OBJECT = private unnamed_addr constant [16 x i8] c"a2d_ASN1_OBJECT\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@__func__.i2a_ASN1_OBJECT = private unnamed_addr constant [16 x i8] c"i2a_ASN1_OBJECT\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"<INVALID>\00", align 1
@__func__.d2i_ASN1_OBJECT = private unnamed_addr constant [16 x i8] c"d2i_ASN1_OBJECT\00", align 1
@__func__.ossl_c2i_ASN1_OBJECT = private unnamed_addr constant [21 x i8] c"ossl_c2i_ASN1_OBJECT\00", align 1
@__func__.ASN1_OBJECT_new = private unnamed_addr constant [16 x i8] c"ASN1_OBJECT_new\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ASN1_OBJECT(%struct.asn1_object_st* noundef readonly %a, i8** noundef %pp) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %cmp = icmp eq %struct.asn1_object_st* %a, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %data = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %a, i64 0, i32 4
  %1 = load i8*, i8** %data, align 8, !tbaa !4
  %cmp1 = icmp eq i8* %1, null
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %length = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %a, i64 0, i32 3
  %2 = load i32, i32* %length, align 4, !tbaa !10
  %call = tail call i32 @ASN1_object_size(i32 noundef 0, i32 noundef %2, i32 noundef 6) #7
  %cmp2 = icmp eq i8** %pp, null
  %cmp4 = icmp eq i32 %call, -1
  %or.cond = select i1 %cmp2, i1 true, i1 %cmp4
  br i1 %or.cond, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %3 = load i8*, i8** %pp, align 8, !tbaa !11
  %cmp7 = icmp eq i8* %3, null
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  %conv = sext i32 %call to i64
  %call9 = tail call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 34) #7
  store i8* %call9, i8** %p, align 8, !tbaa !11
  %cmp10 = icmp eq i8* %call9, null
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.then8
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.i2d_ASN1_OBJECT, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.else:                                          ; preds = %if.end6
  store i8* %3, i8** %p, align 8, !tbaa !11
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.else
  %allocated.0 = phi i8* [ %call9, %if.then8 ], [ null, %if.else ]
  %4 = load i32, i32* %length, align 4, !tbaa !10
  call void @ASN1_put_object(i8** noundef nonnull %p, i32 noundef 0, i32 noundef %4, i32 noundef 6, i32 noundef 0) #7
  %5 = load i8*, i8** %p, align 8, !tbaa !11
  %6 = load i8*, i8** %data, align 8, !tbaa !4
  %7 = load i32, i32* %length, align 4, !tbaa !10
  %conv18 = sext i32 %7 to i64
  %call19 = call i8* @memcpy(i8* noundef %5, i8* noundef %6, i64 noundef %conv18) #7
  %cmp20.not = icmp eq i8* %allocated.0, null
  br i1 %cmp20.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.end14
  %8 = load i8*, i8** %p, align 8, !tbaa !11
  %9 = load i32, i32* %length, align 4, !tbaa !10
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %idx.ext
  br label %cond.end

cond.end:                                         ; preds = %if.end14, %cond.false
  %cond = phi i8* [ %add.ptr, %cond.false ], [ %allocated.0, %if.end14 ]
  store i8* %cond, i8** %pp, align 8, !tbaa !11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %lor.lhs.false, %cond.end, %if.then12
  %retval.0 = phi i32 [ 0, %if.then12 ], [ %call, %cond.end ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %call, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @ASN1_object_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare void @ASN1_put_object(i8** noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @a2d_ASN1_OBJECT(i8* noundef writeonly %out, i32 noundef %olen, i8* noundef %buf, i32 noundef %num) local_unnamed_addr #0 {
entry:
  %ftmp = alloca [24 x i8], align 16
  %0 = getelementptr inbounds [24 x i8], [24 x i8]* %ftmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #6
  switch i32 %num, label %if.end3 [
    i32 0, label %cleanup188
    i32 -1, label %if.then2
  ]

if.then2:                                         ; preds = %entry
  %call = tail call i64 @strlen(i8* noundef %buf) #8
  %conv = trunc i64 %call to i32
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then2
  %num.addr.0 = phi i32 [ %conv, %if.then2 ], [ %num, %entry ]
  %incdec.ptr = getelementptr inbounds i8, i8* %buf, i64 1
  %1 = load i8, i8* %buf, align 1, !tbaa !12
  %2 = add i8 %1, -48
  %3 = icmp ult i8 %2, 3
  br i1 %3, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.end3
  %conv4311 = zext i8 %1 to i32
  %sub = add nsw i32 %conv4311, -48
  %cmp12 = icmp slt i32 %num.addr.0, 2
  br i1 %cmp12, label %if.then14, label %if.end15

if.else10:                                        ; preds = %if.end3
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.a2d_ASN1_OBJECT, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 122, i8* noundef null) #7
  br label %cleanup188.sink.split

if.then14:                                        ; preds = %if.then9
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.a2d_ASN1_OBJECT, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 138, i8* noundef null) #7
  br label %cleanup188.sink.split

if.end15:                                         ; preds = %if.then9
  %cmp19387 = icmp eq i32 %num.addr.0, 2
  br i1 %cmp19387, label %cleanup188.sink.split, label %if.end22.lr.ph

if.end22.lr.ph:                                   ; preds = %if.end15
  %dec18 = add nsw i32 %num.addr.0, -2
  %4 = load i8, i8* %incdec.ptr, align 1, !tbaa !12
  %incdec.ptr16 = getelementptr inbounds i8, i8* %buf, i64 2
  %cmp83 = icmp ult i8 %1, 50
  %mul92 = mul nuw nsw i32 %sub, 40
  %5 = zext i32 %mul92 to i64
  %6 = zext i32 %sub to i64
  %mul100 = mul nuw nsw i64 %6, 40
  %cmp149.not = icmp eq i8* %out, null
  %scevgep515 = getelementptr i8, i8* %out, i64 1
  br label %if.end22

if.end22:                                         ; preds = %if.end22.lr.ph, %if.end176
  %bl.0397 = phi %struct.bignum_st* [ null, %if.end22.lr.ph ], [ %bl.1.lcssa, %if.end176 ]
  %p.0396 = phi i8* [ %incdec.ptr16, %if.end22.lr.ph ], [ %incdec.ptr36, %if.end176 ]
  %tmpsize.0394 = phi i32 [ 24, %if.end22.lr.ph ], [ %tmpsize.3, %if.end176 ]
  %tmp.0391 = phi i8* [ %0, %if.end22.lr.ph ], [ %tmp.3, %if.end176 ]
  %c.0390.in = phi i8 [ %4, %if.end22.lr.ph ], [ %7, %if.end176 ]
  %len.0389 = phi i32 [ 0, %if.end22.lr.ph ], [ %len.2, %if.end176 ]
  %num.addr.1388 = phi i32 [ %dec18, %if.end22.lr.ph ], [ %num.addr.3, %if.end176 ]
  %c.0390 = sext i8 %c.0390.in to i32
  switch i32 %c.0390, label %err.sink.split [
    i32 46, label %if.end34.preheader
    i32 32, label %if.end34.preheader
  ]

if.end34.preheader:                               ; preds = %if.end22, %if.end22
  br label %if.end34

if.end34:                                         ; preds = %if.end34.preheader, %if.end79
  %bl.1369 = phi %struct.bignum_st* [ %bl.3292, %if.end79 ], [ %bl.0397, %if.end34.preheader ]
  %l.0367 = phi i64 [ %l.1, %if.end79 ], [ 0, %if.end34.preheader ]
  %p.1366 = phi i8* [ %incdec.ptr36, %if.end79 ], [ %p.0396, %if.end34.preheader ]
  %use_bn.0365 = phi i32 [ %use_bn.1289, %if.end79 ], [ 0, %if.end34.preheader ]
  %num.addr.2364 = phi i32 [ %dec35, %if.end79 ], [ %num.addr.1388, %if.end34.preheader ]
  %dec35 = add nsw i32 %num.addr.2364, -1
  %incdec.ptr36 = getelementptr inbounds i8, i8* %p.1366, i64 1
  %7 = load i8, i8* %p.1366, align 1, !tbaa !12
  %conv37 = sext i8 %7 to i32
  switch i8 %7, label %if.end43 [
    i8 46, label %for.end
    i8 32, label %for.end
  ]

if.end43:                                         ; preds = %if.end34
  %call44 = call i32 @ossl_ctype_check(i32 noundef %conv37, i32 noundef 4) #7
  %tobool.not = icmp eq i32 %call44, 0
  br i1 %tobool.not, label %err.sink.split, label %if.end46

if.end46:                                         ; preds = %if.end43
  %tobool47 = icmp eq i32 %use_bn.0365, 0
  %cmp49 = icmp ugt i64 %l.0367, 1844674407370955152
  %or.cond201 = select i1 %tobool47, i1 %cmp49, i1 false
  br i1 %or.cond201, label %if.then51, label %if.end64

if.then51:                                        ; preds = %if.end46
  %cmp52 = icmp eq %struct.bignum_st* %bl.1369, null
  br i1 %cmp52, label %if.end56, label %lor.lhs.false59

if.end56:                                         ; preds = %if.then51
  %call55 = call %struct.bignum_st* @BN_new() #7
  %cmp57 = icmp eq %struct.bignum_st* %call55, null
  br i1 %cmp57, label %err, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %if.then51, %if.end56
  %bl.2285 = phi %struct.bignum_st* [ %call55, %if.end56 ], [ %bl.1369, %if.then51 ]
  %call60 = call i32 @BN_set_word(%struct.bignum_st* noundef nonnull %bl.2285, i64 noundef %l.0367) #7
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %err, label %if.then66

if.end64:                                         ; preds = %if.end46
  br i1 %tobool47, label %if.else76, label %if.then66

if.then66:                                        ; preds = %lor.lhs.false59, %if.end64
  %bl.3291 = phi %struct.bignum_st* [ %bl.1369, %if.end64 ], [ %bl.2285, %lor.lhs.false59 ]
  %use_bn.1290 = phi i32 [ %use_bn.0365, %if.end64 ], [ 1, %lor.lhs.false59 ]
  %call67 = call i32 @BN_mul_word(%struct.bignum_st* noundef %bl.3291, i64 noundef 10) #7
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %err, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %if.then66
  %sub70 = add nsw i32 %conv37, -48
  %conv71 = sext i32 %sub70 to i64
  %call72 = call i32 @BN_add_word(%struct.bignum_st* noundef %bl.3291, i64 noundef %conv71) #7
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %err, label %if.end79

if.else76:                                        ; preds = %if.end64
  %mul = mul i64 %l.0367, 10
  %sub77 = add nsw i32 %conv37, -48
  %conv78 = sext i32 %sub77 to i64
  %add = add i64 %mul, %conv78
  br label %if.end79

if.end79:                                         ; preds = %lor.lhs.false69, %if.else76
  %bl.3292 = phi %struct.bignum_st* [ %bl.3291, %lor.lhs.false69 ], [ %bl.1369, %if.else76 ]
  %use_bn.1289 = phi i32 [ %use_bn.1290, %lor.lhs.false69 ], [ 0, %if.else76 ]
  %l.1 = phi i64 [ %l.0367, %lor.lhs.false69 ], [ %add, %if.else76 ]
  %cmp31 = icmp ult i32 %num.addr.2364, 2
  br i1 %cmp31, label %for.end, label %if.end34

for.end:                                          ; preds = %if.end79, %if.end34, %if.end34
  %use_bn.0.lcssa = phi i32 [ %use_bn.0365, %if.end34 ], [ %use_bn.0365, %if.end34 ], [ %use_bn.1289, %if.end79 ]
  %l.0.lcssa = phi i64 [ %l.0367, %if.end34 ], [ %l.0367, %if.end34 ], [ %l.1, %if.end79 ]
  %bl.1.lcssa = phi %struct.bignum_st* [ %bl.1369, %if.end34 ], [ %bl.1369, %if.end34 ], [ %bl.3292, %if.end79 ]
  %num.addr.3 = phi i32 [ %dec35, %if.end34 ], [ %dec35, %if.end34 ], [ 0, %if.end79 ]
  %cmp80 = icmp eq i32 %len.0389, 0
  br i1 %cmp80, label %if.then82, label %if.end103

if.then82:                                        ; preds = %for.end
  %cmp86 = icmp ugt i64 %l.0.lcssa, 39
  %or.cond202 = select i1 %cmp83, i1 %cmp86, i1 false
  br i1 %or.cond202, label %err.sink.split, label %if.end89

if.end89:                                         ; preds = %if.then82
  %tobool90.not = icmp eq i32 %use_bn.0.lcssa, 0
  br i1 %tobool90.not, label %if.end103.thread, label %if.then91

if.then91:                                        ; preds = %if.end89
  %call94 = call i32 @BN_add_word(%struct.bignum_st* noundef %bl.1.lcssa, i64 noundef %5) #7
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %err, label %if.then105

if.end103.thread:                                 ; preds = %if.end89
  %add101 = add i64 %l.0.lcssa, %mul100
  br label %for.cond136.preheader

if.end103:                                        ; preds = %for.end
  %tobool104.not = icmp eq i32 %use_bn.0.lcssa, 0
  br i1 %tobool104.not, label %for.cond136.preheader, label %if.then105

for.cond136.preheader:                            ; preds = %if.end103.thread, %if.end103
  %l.3.ph = phi i64 [ %l.0.lcssa, %if.end103 ], [ %add101, %if.end103.thread ]
  br label %for.cond136

if.then105:                                       ; preds = %if.then91, %if.end103
  %call106 = call i32 @BN_num_bits(%struct.bignum_st* noundef %bl.1.lcssa) #7
  %add107 = add nsw i32 %call106, 6
  %div = sdiv i32 %add107, 7
  %cmp108 = icmp sgt i32 %div, %tmpsize.0394
  br i1 %cmp108, label %if.then110, label %if.end123

if.then110:                                       ; preds = %if.then105
  %cmp112.not = icmp eq i8* %tmp.0391, %0
  br i1 %cmp112.not, label %if.end115, label %if.then114

if.then114:                                       ; preds = %if.then110
  call void @CRYPTO_free(i8* noundef %tmp.0391, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 135) #7
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %if.then110
  %add116 = add nsw i32 %div, 32
  %8 = zext i32 %add116 to i64
  %call118 = call i8* @CRYPTO_malloc(i64 noundef %8, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 137) #7
  %cmp119 = icmp eq i8* %call118, null
  br i1 %cmp119, label %err.thread305, label %if.end123

err.thread305:                                    ; preds = %if.end115
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 139, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.a2d_ASN1_OBJECT, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #7
  br label %if.then186

if.end123:                                        ; preds = %if.end115, %if.then105
  %tmp.1 = phi i8* [ %call118, %if.end115 ], [ %tmp.0391, %if.then105 ]
  %tmpsize.1 = phi i32 [ %add116, %if.end115 ], [ %tmpsize.0394, %if.then105 ]
  %add107.off = add i32 %call106, 12
  %9 = icmp ult i32 %add107.off, 13
  br i1 %9, label %if.end148, label %while.body

while.body:                                       ; preds = %if.end123, %cleanup
  %indvars.iv = phi i64 [ %indvars.iv.next, %cleanup ], [ 0, %if.end123 ]
  %dec124380.in = phi i32 [ %dec124380, %cleanup ], [ %div, %if.end123 ]
  %dec124380 = add nsw i32 %dec124380.in, -1
  %call126 = call i64 @BN_div_word(%struct.bignum_st* noundef %bl.1.lcssa, i64 noundef 128) #7
  %cmp127 = icmp eq i64 %call126, -1
  br i1 %cmp127, label %err, label %cleanup

cleanup:                                          ; preds = %while.body
  %conv131 = trunc i64 %call126 to i8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds i8, i8* %tmp.1, i64 %indvars.iv
  store i8 %conv131, i8* %arrayidx, align 1, !tbaa !12
  %tobool125.not = icmp eq i32 %dec124380, 0
  br i1 %tobool125.not, label %if.end148.loopexit401, label %while.body

for.cond136:                                      ; preds = %for.cond136.preheader, %for.cond136
  %indvars.iv445 = phi i64 [ %indvars.iv.next446, %for.cond136 ], [ 0, %for.cond136.preheader ]
  %l.3 = phi i64 [ %shr, %for.cond136 ], [ %l.3.ph, %for.cond136.preheader ]
  %conv137 = trunc i64 %l.3 to i8
  %and = and i8 %conv137, 127
  %indvars.iv.next446 = add nuw nsw i64 %indvars.iv445, 1
  %arrayidx142 = getelementptr inbounds i8, i8* %tmp.0391, i64 %indvars.iv445
  store i8 %and, i8* %arrayidx142, align 1, !tbaa !12
  %shr = lshr i64 %l.3, 7
  %cmp143 = icmp ult i64 %l.3, 128
  br i1 %cmp143, label %if.end148.loopexit, label %for.cond136

if.end148.loopexit:                               ; preds = %for.cond136
  %10 = trunc i64 %indvars.iv.next446 to i32
  br label %if.end148

if.end148.loopexit401:                            ; preds = %cleanup
  %11 = trunc i64 %indvars.iv.next to i32
  br label %if.end148

if.end148:                                        ; preds = %if.end148.loopexit401, %if.end148.loopexit, %if.end123
  %i.4 = phi i32 [ 0, %if.end123 ], [ %10, %if.end148.loopexit ], [ %11, %if.end148.loopexit401 ]
  %tmp.3 = phi i8* [ %tmp.1, %if.end123 ], [ %tmp.0391, %if.end148.loopexit ], [ %tmp.1, %if.end148.loopexit401 ]
  %tmpsize.3 = phi i32 [ %tmpsize.1, %if.end123 ], [ %tmpsize.0394, %if.end148.loopexit ], [ %tmpsize.1, %if.end148.loopexit401 ]
  %add175 = add nsw i32 %i.4, %len.0389
  br i1 %cmp149.not, label %if.end176, label %if.then151

if.then151:                                       ; preds = %if.end148
  %cmp153 = icmp sgt i32 %add175, %olen
  br i1 %cmp153, label %err.sink.split, label %while.cond157.preheader

while.cond157.preheader:                          ; preds = %if.then151
  %cmp159383 = icmp sgt i32 %i.4, 1
  br i1 %cmp159383, label %while.body161.preheader, label %while.end169

while.body161.preheader:                          ; preds = %while.cond157.preheader
  %12 = zext i32 %i.4 to i64
  %13 = sext i32 %len.0389 to i64
  %14 = add nuw nsw i64 %12, 1
  %umin521 = call i64 @llvm.umin.i64(i64 %12, i64 2)
  %15 = sub nsw i64 %14, %umin521
  %min.iters.check = icmp ult i64 %15, 32
  br i1 %min.iters.check, label %while.body161.preheader527, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %while.body161.preheader
  %umin = call i64 @llvm.umin.i64(i64 %12, i64 2)
  %16 = sub nsw i64 %12, %umin
  %17 = add i32 %i.4, -1
  %18 = trunc i64 %16 to i32
  %19 = icmp ult i32 %17, %18
  %20 = icmp ugt i64 %16, 4294967295
  %21 = or i1 %19, %20
  br i1 %21, label %while.body161.preheader527, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep = getelementptr i8, i8* %out, i64 %13
  %22 = add nsw i64 %13, %12
  %umin516 = call i64 @llvm.umin.i64(i64 %12, i64 2)
  %23 = sub nsw i64 %22, %umin516
  %scevgep517 = getelementptr i8, i8* %scevgep515, i64 %23
  %24 = add i32 %i.4, -1
  %25 = zext i32 %24 to i64
  %26 = add nuw nsw i64 %umin516, %25
  %27 = sub nsw i64 %26, %12
  %scevgep518 = getelementptr i8, i8* %tmp.3, i64 %27
  %scevgep519 = getelementptr i8, i8* %tmp.3, i64 1
  %scevgep520 = getelementptr i8, i8* %scevgep519, i64 %25
  %bound0 = icmp ult i8* %scevgep, %scevgep520
  %bound1 = icmp ult i8* %scevgep518, %scevgep517
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %while.body161.preheader527, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %15, -32
  %ind.end = add nsw i64 %n.vec, %13
  %ind.end523 = sub nsw i64 %12, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = add i64 %index, %13
  %28 = xor i64 %index, -1
  %29 = add i64 %28, %12
  %30 = and i64 %29, 4294967295
  %31 = getelementptr inbounds i8, i8* %tmp.3, i64 %30
  %32 = getelementptr inbounds i8, i8* %31, i64 -15
  %33 = bitcast i8* %32 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %33, align 1, !tbaa !12, !alias.scope !13
  %34 = getelementptr inbounds i8, i8* %31, i64 -16
  %35 = getelementptr inbounds i8, i8* %34, i64 -15
  %36 = bitcast i8* %35 to <16 x i8>*
  %wide.load525 = load <16 x i8>, <16 x i8>* %36, align 1, !tbaa !12, !alias.scope !13
  %37 = or <16 x i8> %wide.load, <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>
  %38 = shufflevector <16 x i8> %37, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %39 = or <16 x i8> %wide.load525, <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>
  %40 = shufflevector <16 x i8> %39, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %41 = getelementptr inbounds i8, i8* %out, i64 %offset.idx
  %42 = bitcast i8* %41 to <16 x i8>*
  store <16 x i8> %38, <16 x i8>* %42, align 1, !tbaa !12, !alias.scope !16, !noalias !13
  %43 = getelementptr inbounds i8, i8* %41, i64 16
  %44 = bitcast i8* %43 to <16 x i8>*
  store <16 x i8> %40, <16 x i8>* %44, align 1, !tbaa !12, !alias.scope !16, !noalias !13
  %index.next = add nuw i64 %index, 32
  %45 = icmp eq i64 %index.next, %n.vec
  br i1 %45, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %15, %n.vec
  br i1 %cmp.n, label %while.end169.loopexit, label %while.body161.preheader527

while.body161.preheader527:                       ; preds = %vector.memcheck, %vector.scevcheck, %while.body161.preheader, %middle.block
  %indvars.iv450.ph = phi i64 [ %13, %vector.memcheck ], [ %13, %vector.scevcheck ], [ %13, %while.body161.preheader ], [ %ind.end, %middle.block ]
  %indvars.iv448.ph = phi i64 [ %12, %vector.memcheck ], [ %12, %vector.scevcheck ], [ %12, %while.body161.preheader ], [ %ind.end523, %middle.block ]
  br label %while.body161

while.body161:                                    ; preds = %while.body161.preheader527, %while.body161
  %indvars.iv450 = phi i64 [ %indvars.iv.next451, %while.body161 ], [ %indvars.iv450.ph, %while.body161.preheader527 ]
  %indvars.iv448 = phi i64 [ %indvars.iv.next449, %while.body161 ], [ %indvars.iv448.ph, %while.body161.preheader527 ]
  %indvars.iv.next449 = add nsw i64 %indvars.iv448, -1
  %idxprom162312 = and i64 %indvars.iv.next449, 4294967295
  %arrayidx163 = getelementptr inbounds i8, i8* %tmp.3, i64 %idxprom162312
  %46 = load i8, i8* %arrayidx163, align 1, !tbaa !12
  %or = or i8 %46, -128
  %indvars.iv.next451 = add nsw i64 %indvars.iv450, 1
  %arrayidx168 = getelementptr inbounds i8, i8* %out, i64 %indvars.iv450
  store i8 %or, i8* %arrayidx168, align 1, !tbaa !12
  %cmp159 = icmp ugt i64 %indvars.iv448, 2
  br i1 %cmp159, label %while.body161, label %while.end169.loopexit, !llvm.loop !21

while.end169.loopexit:                            ; preds = %while.body161, %middle.block
  %indvars.iv.next451.lcssa = phi i64 [ %ind.end, %middle.block ], [ %indvars.iv.next451, %while.body161 ]
  %47 = trunc i64 %indvars.iv.next451.lcssa to i32
  br label %while.end169

while.end169:                                     ; preds = %while.end169.loopexit, %while.cond157.preheader
  %len.1.lcssa = phi i32 [ %len.0389, %while.cond157.preheader ], [ %47, %while.end169.loopexit ]
  %48 = load i8, i8* %tmp.3, align 1, !tbaa !12
  %inc171 = add nsw i32 %len.1.lcssa, 1
  %idxprom172 = sext i32 %len.1.lcssa to i64
  %arrayidx173 = getelementptr inbounds i8, i8* %out, i64 %idxprom172
  store i8 %48, i8* %arrayidx173, align 1, !tbaa !12
  br label %if.end176

if.end176:                                        ; preds = %if.end148, %while.end169
  %len.2 = phi i32 [ %inc171, %while.end169 ], [ %add175, %if.end148 ]
  %cmp19 = icmp slt i32 %num.addr.3, 1
  br i1 %cmp19, label %for.end177, label %if.end22

for.end177:                                       ; preds = %if.end176
  %cmp179.not = icmp eq i8* %tmp.3, %0
  br i1 %cmp179.not, label %cleanup188.sink.split, label %if.then181

if.then181:                                       ; preds = %for.end177
  call void @CRYPTO_free(i8* noundef %tmp.3, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 171) #7
  br label %cleanup188.sink.split

err.sink.split:                                   ; preds = %if.then151, %if.then82, %if.end22, %if.end43
  %.sink494 = phi i32 [ 100, %if.end43 ], [ 87, %if.end22 ], [ 119, %if.then82 ], [ 161, %if.then151 ]
  %.sink = phi i32 [ 130, %if.end43 ], [ 131, %if.end22 ], [ 147, %if.then82 ], [ 107, %if.then151 ]
  %tmp.4.ph = phi i8* [ %tmp.0391, %if.end43 ], [ %tmp.0391, %if.end22 ], [ %tmp.0391, %if.then82 ], [ %tmp.3, %if.then151 ]
  %bl.4.ph = phi %struct.bignum_st* [ %bl.1369, %if.end43 ], [ %bl.0397, %if.end22 ], [ %bl.1.lcssa, %if.then82 ], [ %bl.1.lcssa, %if.then151 ]
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink494, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.a2d_ASN1_OBJECT, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef %.sink, i8* noundef null) #7
  br label %err

err:                                              ; preds = %if.then91, %if.then66, %lor.lhs.false69, %if.end56, %lor.lhs.false59, %while.body, %err.sink.split
  %tmp.4 = phi i8* [ %tmp.4.ph, %err.sink.split ], [ %tmp.1, %while.body ], [ %tmp.0391, %lor.lhs.false59 ], [ %tmp.0391, %if.end56 ], [ %tmp.0391, %lor.lhs.false69 ], [ %tmp.0391, %if.then66 ], [ %tmp.0391, %if.then91 ]
  %bl.4 = phi %struct.bignum_st* [ %bl.4.ph, %err.sink.split ], [ %bl.1.lcssa, %while.body ], [ %bl.3291, %if.then66 ], [ %bl.3291, %lor.lhs.false69 ], [ null, %if.end56 ], [ %bl.2285, %lor.lhs.false59 ], [ %bl.1.lcssa, %if.then91 ]
  %cmp184.not = icmp eq i8* %tmp.4, %0
  br i1 %cmp184.not, label %cleanup188.sink.split, label %if.then186

if.then186:                                       ; preds = %err.thread305, %err
  %bl.4310 = phi %struct.bignum_st* [ %bl.1.lcssa, %err.thread305 ], [ %bl.4, %err ]
  %tmp.4309 = phi i8* [ null, %err.thread305 ], [ %tmp.4, %err ]
  call void @CRYPTO_free(i8* noundef %tmp.4309, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 176) #7
  br label %cleanup188.sink.split

cleanup188.sink.split:                            ; preds = %err, %if.then186, %if.then14, %if.else10, %for.end177, %if.then181, %if.end15
  %bl.4304.sink = phi %struct.bignum_st* [ %bl.1.lcssa, %if.then181 ], [ %bl.1.lcssa, %for.end177 ], [ null, %if.end15 ], [ %bl.4310, %if.then186 ], [ %bl.4, %err ], [ null, %if.then14 ], [ null, %if.else10 ]
  %retval.0.ph = phi i32 [ %len.2, %if.then181 ], [ %len.2, %for.end177 ], [ 0, %if.end15 ], [ 0, %if.then186 ], [ 0, %err ], [ 0, %if.then14 ], [ 0, %if.else10 ]
  call void @BN_free(%struct.bignum_st* noundef %bl.4304.sink) #7
  br label %cleanup188

cleanup188:                                       ; preds = %cleanup188.sink.split, %entry
  %retval.0 = phi i32 [ %num, %entry ], [ %retval.0.ph, %cleanup188.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #4

declare i32 @ossl_ctype_check(i32 noundef, i32 noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_new() local_unnamed_addr #2

declare i32 @BN_set_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BN_mul_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BN_add_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i64 @BN_div_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #2

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2t_ASN1_OBJECT(i8* noundef %buf, i32 noundef %buf_len, %struct.asn1_object_st* noundef %a) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @OBJ_obj2txt(i8* noundef %buf, i32 noundef %buf_len, %struct.asn1_object_st* noundef %a, i32 noundef 0) #7
  ret i32 %call
}

declare i32 @OBJ_obj2txt(i8* noundef, i32 noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef %bp, %struct.asn1_object_st* noundef %a) local_unnamed_addr #0 {
entry:
  %buf = alloca [80 x i8], align 16
  %0 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #6
  %cmp = icmp eq %struct.asn1_object_st* %a, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %data = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %a, i64 0, i32 4
  %1 = load i8*, i8** %data, align 8, !tbaa !4
  %cmp1 = icmp eq i8* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 noundef 4) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call i32 @i2t_ASN1_OBJECT(i8* noundef nonnull %0, i32 noundef 80, %struct.asn1_object_st* noundef nonnull %a) #9
  %cmp4 = icmp sgt i32 %call3, 79
  br i1 %cmp4, label %if.then5, label %if.end16

if.then5:                                         ; preds = %if.end
  %cmp6 = icmp eq i32 %call3, 2147483647
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then5
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 196, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.i2a_ASN1_OBJECT, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 231, i8* noundef null) #7
  br label %cleanup

if.end8:                                          ; preds = %if.then5
  %add = add nuw nsw i32 %call3, 1
  %2 = zext i32 %add to i64
  %call9 = call i8* @CRYPTO_malloc(i64 noundef %2, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 199) #7
  %cmp10 = icmp eq i8* %call9, null
  br i1 %cmp10, label %if.then12, label %if.end24

if.then12:                                        ; preds = %if.end8
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 200, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.i2a_ASN1_OBJECT, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %cmp17 = icmp slt i32 %call3, 1
  br i1 %cmp17, label %if.then19, label %if.end24.thread

if.end24.thread:                                  ; preds = %if.end16
  %call2558 = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef nonnull %0, i32 noundef %call3) #7
  br label %cleanup

if.then19:                                        ; preds = %if.end16
  %call20 = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 9) #7
  %3 = load i8*, i8** %data, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %a, i64 0, i32 3
  %4 = load i32, i32* %length, align 4, !tbaa !10
  %call22 = call i32 @BIO_dump(%struct.bio_st* noundef %bp, i8* noundef %3, i32 noundef %4) #7
  %add23 = add nsw i32 %call22, %call20
  br label %cleanup

if.end24:                                         ; preds = %if.end8
  %call15 = call i32 @i2t_ASN1_OBJECT(i8* noundef nonnull %call9, i32 noundef %add, %struct.asn1_object_st* noundef nonnull %a) #9
  %call25 = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef nonnull %call9, i32 noundef %call3) #7
  %cmp27.not = icmp eq i8* %call9, %0
  br i1 %cmp27.not, label %cleanup, label %if.then29

if.then29:                                        ; preds = %if.end24
  call void @CRYPTO_free(i8* noundef nonnull %call9, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 212) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end24.thread, %if.end24, %if.then29, %if.then19, %if.then12, %if.then7, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ -1, %if.then7 ], [ -1, %if.then12 ], [ %add23, %if.then19 ], [ %call3, %if.then29 ], [ %call3, %if.end24 ], [ %call3, %if.end24.thread ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #6
  ret i32 %retval.0
}

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_dump(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_object_st* @d2i_ASN1_OBJECT(%struct.asn1_object_st** noundef %a, i8** nocapture noundef %pp, i64 noundef %length) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %len = alloca i64, align 8
  %tag = alloca i32, align 4
  %xclass = alloca i32, align 4
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %1 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  %2 = bitcast i32* %tag to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #6
  %3 = bitcast i32* %xclass to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #6
  %4 = load i8*, i8** %pp, align 8, !tbaa !11
  store i8* %4, i8** %p, align 8, !tbaa !11
  %call = call i32 @ASN1_get_object(i8** noundef nonnull %p, i64* noundef nonnull %len, i32* noundef nonnull %tag, i32* noundef nonnull %xclass, i64 noundef %length) #7
  %and = and i32 %call, 128
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %err

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %tag, align 4, !tbaa !22
  %cmp.not = icmp eq i32 %5, 6
  br i1 %cmp.not, label %if.end2, label %err

if.end2:                                          ; preds = %if.end
  %6 = load i64, i64* %len, align 8, !tbaa !23
  %call3 = call %struct.asn1_object_st* @ossl_c2i_ASN1_OBJECT(%struct.asn1_object_st** noundef %a, i8** noundef nonnull %p, i64 noundef %6) #9
  %tobool4.not = icmp eq %struct.asn1_object_st* %call3, null
  br i1 %tobool4.not, label %cleanup, label %if.then5

if.then5:                                         ; preds = %if.end2
  %7 = load i8*, i8** %p, align 8, !tbaa !11
  store i8* %7, i8** %pp, align 8, !tbaa !11
  br label %cleanup

err:                                              ; preds = %if.end, %entry
  %i.0 = phi i32 [ 102, %entry ], [ 116, %if.end ]
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 240, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.d2i_ASN1_OBJECT, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef %i.0, i8* noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then5, %err
  %retval.0 = phi %struct.asn1_object_st* [ null, %err ], [ %call3, %if.then5 ], [ null, %if.end2 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret %struct.asn1_object_st* %retval.0
}

declare i32 @ASN1_get_object(i8** noundef, i64* noundef, i32* noundef, i32* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_object_st* @ossl_c2i_ASN1_OBJECT(%struct.asn1_object_st** noundef %a, i8** noundef %pp, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %tobj = alloca %struct.asn1_object_st, align 8
  %0 = bitcast %struct.asn1_object_st* %tobj to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #6
  %1 = add i64 %len, -2147483648
  %2 = icmp ult i64 %1, -2147483647
  %cmp3 = icmp eq i8** %pp, null
  %or.cond96 = or i1 %cmp3, %2
  br i1 %or.cond96, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %entry
  %3 = load i8*, i8** %pp, align 8, !tbaa !11
  %cmp5 = icmp eq i8* %3, null
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %sub = add nsw i64 %len, -1
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %sub
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %tobool.not = icmp sgt i8 %4, -1
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false4, %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 259, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ossl_c2i_ASN1_OBJECT, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 216, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false6
  %conv7 = trunc i64 %len to i32
  %nid = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %tobj, i64 0, i32 2
  store i32 0, i32* %nid, align 8, !tbaa !25
  %data8 = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %tobj, i64 0, i32 4
  store i8* %3, i8** %data8, align 8, !tbaa !4
  %length9 = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %tobj, i64 0, i32 3
  store i32 %conv7, i32* %length9, align 4, !tbaa !10
  %flags = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %tobj, i64 0, i32 5
  store i32 0, i32* %flags, align 8, !tbaa !26
  %call = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef nonnull %tobj) #7
  %cmp10.not = icmp eq i32 %call, 0
  br i1 %cmp10.not, label %for.body, label %if.then12

if.then12:                                        ; preds = %if.end
  %call13 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %call) #7
  %tobool14.not = icmp eq %struct.asn1_object_st** %a, null
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.then12
  %5 = load %struct.asn1_object_st*, %struct.asn1_object_st** %a, align 8, !tbaa !11
  call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %5) #9
  store %struct.asn1_object_st* %call13, %struct.asn1_object_st** %a, align 8, !tbaa !11
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.then12
  %6 = load i8*, i8** %pp, align 8, !tbaa !11
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %len
  store i8* %add.ptr, i8** %pp, align 8, !tbaa !11
  br label %cleanup

for.body:                                         ; preds = %if.end, %for.inc
  %i.0165 = phi i32 [ %inc, %for.inc ], [ 0, %if.end ]
  %p.0164 = phi i8* [ %incdec.ptr, %for.inc ], [ %3, %if.end ]
  %7 = load i8, i8* %p.0164, align 1, !tbaa !12
  %cmp21 = icmp eq i8 %7, -128
  br i1 %cmp21, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %tobool23.not = icmp eq i32 %i.0165, 0
  br i1 %tobool23.not, label %if.then29, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %land.lhs.true
  %arrayidx25 = getelementptr inbounds i8, i8* %p.0164, i64 -1
  %8 = load i8, i8* %arrayidx25, align 1, !tbaa !12
  %tobool28.not = icmp sgt i8 %8, -1
  br i1 %tobool28.not, label %if.then29, label %for.inc

if.then29:                                        ; preds = %lor.lhs.false24, %land.lhs.true
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 289, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ossl_c2i_ASN1_OBJECT, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 216, i8* noundef null) #7
  br label %cleanup

for.inc:                                          ; preds = %for.body, %lor.lhs.false24
  %inc = add nuw nsw i32 %i.0165, 1
  %incdec.ptr = getelementptr inbounds i8, i8* %p.0164, i64 1
  %exitcond.not = icmp eq i32 %inc, %conv7
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !27

for.end:                                          ; preds = %for.inc
  %cmp31 = icmp eq %struct.asn1_object_st** %a, null
  br i1 %cmp31, label %if.then40, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %for.end
  %9 = load %struct.asn1_object_st*, %struct.asn1_object_st** %a, align 8, !tbaa !11
  %cmp34 = icmp eq %struct.asn1_object_st* %9, null
  br i1 %cmp34, label %if.then40, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false33
  %flags37 = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %9, i64 0, i32 5
  %10 = load i32, i32* %flags37, align 8, !tbaa !26
  %and38 = and i32 %10, 1
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.then40, label %if.end46

if.then40:                                        ; preds = %lor.lhs.false36, %lor.lhs.false33, %for.end
  %call41 = call %struct.asn1_object_st* @ASN1_OBJECT_new() #9
  %cmp42 = icmp eq %struct.asn1_object_st* %call41, null
  br i1 %cmp42, label %cleanup, label %if.end46

if.end46:                                         ; preds = %lor.lhs.false36, %if.then40
  %ret.0 = phi %struct.asn1_object_st* [ %call41, %if.then40 ], [ %9, %lor.lhs.false36 ]
  %11 = load i8*, i8** %pp, align 8, !tbaa !11
  %data47 = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %ret.0, i64 0, i32 4
  %12 = load i8*, i8** %data47, align 8, !tbaa !4
  store i8* null, i8** %data47, align 8, !tbaa !4
  %cmp49 = icmp eq i8* %12, null
  br i1 %cmp49, label %if.then55, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %if.end46
  %length52 = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %ret.0, i64 0, i32 3
  %13 = load i32, i32* %length52, align 4, !tbaa !10
  %cmp53 = icmp slt i32 %13, %conv7
  br i1 %cmp53, label %if.then55, label %lor.lhs.false51.if.end64_crit_edge

lor.lhs.false51.if.end64_crit_edge:               ; preds = %lor.lhs.false51
  %.pre = shl i64 %len, 32
  %.pre167 = ashr exact i64 %.pre, 32
  br label %if.end64

if.then55:                                        ; preds = %lor.lhs.false51, %if.end46
  %length56 = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %ret.0, i64 0, i32 3
  store i32 0, i32* %length56, align 4, !tbaa !10
  call void @CRYPTO_free(i8* noundef %12, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 309) #7
  %sext162 = shl i64 %len, 32
  %conv57 = ashr exact i64 %sext162, 32
  %call58 = call i8* @CRYPTO_malloc(i64 noundef %conv57, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 310) #7
  %cmp59 = icmp eq i8* %call58, null
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.then55
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 337, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ossl_c2i_ASN1_OBJECT, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #7
  br i1 %cmp31, label %if.then89, label %lor.lhs.false86

if.end62:                                         ; preds = %if.then55
  %flags63 = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %ret.0, i64 0, i32 5
  %14 = load i32, i32* %flags63, align 8, !tbaa !26
  %or = or i32 %14, 8
  store i32 %or, i32* %flags63, align 8, !tbaa !26
  br label %if.end64

if.end64:                                         ; preds = %lor.lhs.false51.if.end64_crit_edge, %if.end62
  %conv65.pre-phi = phi i64 [ %.pre167, %lor.lhs.false51.if.end64_crit_edge ], [ %conv57, %if.end62 ]
  %data.0 = phi i8* [ %12, %lor.lhs.false51.if.end64_crit_edge ], [ %call58, %if.end62 ]
  %call66 = call i8* @memcpy(i8* noundef nonnull %data.0, i8* noundef %11, i64 noundef %conv65.pre-phi) #7
  %flags67 = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %ret.0, i64 0, i32 5
  %15 = load i32, i32* %flags67, align 8, !tbaa !26
  %and68 = and i32 %15, 4
  %cmp69.not = icmp eq i32 %and68, 0
  br i1 %cmp69.not, label %if.end74, label %if.then71

if.then71:                                        ; preds = %if.end64
  %sn = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %ret.0, i64 0, i32 0
  %16 = load i8*, i8** %sn, align 8, !tbaa !28
  call void @CRYPTO_free(i8* noundef %16, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 320) #7
  %ln = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %ret.0, i64 0, i32 1
  %17 = load i8*, i8** %ln, align 8, !tbaa !29
  call void @CRYPTO_free(i8* noundef %17, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 321) #7
  %18 = load i32, i32* %flags67, align 8, !tbaa !26
  %and73 = and i32 %18, -5
  store i32 %and73, i32* %flags67, align 8, !tbaa !26
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %if.end64
  store i8* %data.0, i8** %data47, align 8, !tbaa !4
  %length76 = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %ret.0, i64 0, i32 3
  store i32 %conv7, i32* %length76, align 4, !tbaa !10
  %19 = bitcast %struct.asn1_object_st* %ret.0 to <2 x i8*>*
  store <2 x i8*> zeroinitializer, <2 x i8*>* %19, align 8, !tbaa !11
  %add.ptr79 = getelementptr inbounds i8, i8* %11, i64 %conv65.pre-phi
  br i1 %cmp31, label %if.end83, label %if.then82

if.then82:                                        ; preds = %if.end74
  store %struct.asn1_object_st* %ret.0, %struct.asn1_object_st** %a, align 8, !tbaa !11
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %if.end74
  store i8* %add.ptr79, i8** %pp, align 8, !tbaa !11
  br label %cleanup

lor.lhs.false86:                                  ; preds = %if.then61
  %20 = load %struct.asn1_object_st*, %struct.asn1_object_st** %a, align 8, !tbaa !11
  %cmp87.not = icmp eq %struct.asn1_object_st* %20, %ret.0
  br i1 %cmp87.not, label %cleanup, label %if.then89

if.then89:                                        ; preds = %lor.lhs.false86, %if.then61
  call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef nonnull %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false86, %if.then89, %if.then40, %if.end83, %if.then29, %if.end16, %if.then
  %retval.0 = phi %struct.asn1_object_st* [ null, %if.then ], [ %call13, %if.end16 ], [ null, %if.then29 ], [ %ret.0, %if.end83 ], [ null, %if.then40 ], [ null, %if.then89 ], [ null, %lor.lhs.false86 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #6
  ret %struct.asn1_object_st* %retval.0
}

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %a) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.asn1_object_st* %a, null
  br i1 %cmp, label %if.end15, label %if.end

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %a, i64 0, i32 5
  %0 = load i32, i32* %flags, align 8, !tbaa !26
  %and = and i32 %0, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4, label %if.then1

if.then1:                                         ; preds = %if.end
  %sn = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %a, i64 0, i32 0
  %1 = load i8*, i8** %sn, align 8, !tbaa !28
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 366) #7
  %ln = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %a, i64 0, i32 1
  %2 = load i8*, i8** %ln, align 8, !tbaa !29
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 367) #7
  %3 = bitcast %struct.asn1_object_st* %a to <2 x i8*>*
  store <2 x i8*> zeroinitializer, <2 x i8*>* %3, align 8, !tbaa !11
  %.pre = load i32, i32* %flags, align 8, !tbaa !26
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end
  %4 = phi i32 [ %.pre, %if.then1 ], [ %0, %if.end ]
  %and6 = and i32 %4, 8
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end4
  %data = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %a, i64 0, i32 4
  %5 = load i8*, i8** %data, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 372) #7
  store i8* null, i8** %data, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %a, i64 0, i32 3
  store i32 0, i32* %length, align 4, !tbaa !10
  %.pre27 = load i32, i32* %flags, align 8, !tbaa !26
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end4
  %6 = phi i32 [ %.pre27, %if.then8 ], [ %4, %if.end4 ]
  %and12 = and i32 %6, 1
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end10
  %7 = bitcast %struct.asn1_object_st* %a to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %7, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 377) #7
  br label %if.end15

if.end15:                                         ; preds = %entry, %if.then14, %if.end10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_object_st* @ASN1_OBJECT_new() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 40, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 347) #7
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 349, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ASN1_OBJECT_new, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.asn1_object_st*
  %flags = getelementptr inbounds i8, i8* %call, i64 32
  %1 = bitcast i8* %flags to i32*
  store i32 1, i32* %1, align 8, !tbaa !26
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.asn1_object_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.asn1_object_st* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_object_st* @ASN1_OBJECT_create(i32 noundef %nid, i8* noundef %data, i32 noundef %len, i8* noundef %sn, i8* noundef %ln) local_unnamed_addr #0 {
entry:
  %o = alloca %struct.asn1_object_st, align 8
  %0 = bitcast %struct.asn1_object_st* %o to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #6
  %sn1 = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %o, i64 0, i32 0
  store i8* %sn, i8** %sn1, align 8, !tbaa !28
  %ln2 = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %o, i64 0, i32 1
  store i8* %ln, i8** %ln2, align 8, !tbaa !29
  %data3 = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %o, i64 0, i32 4
  store i8* %data, i8** %data3, align 8, !tbaa !4
  %nid4 = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %o, i64 0, i32 2
  store i32 %nid, i32* %nid4, align 8, !tbaa !25
  %length = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %o, i64 0, i32 3
  store i32 %len, i32* %length, align 4, !tbaa !10
  %flags = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %o, i64 0, i32 5
  store i32 13, i32* %flags, align 8, !tbaa !26
  %call = call %struct.asn1_object_st* @OBJ_dup(%struct.asn1_object_st* noundef nonnull %o) #7
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #6
  ret %struct.asn1_object_st* %call
}

declare %struct.asn1_object_st* @OBJ_dup(%struct.asn1_object_st* noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 24}
!5 = !{!"asn1_object_st", !6, i64 0, !6, i64 8, !9, i64 16, !9, i64 20, !6, i64 24, !9, i64 32}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!5, !9, i64 20}
!11 = !{!6, !6, i64 0}
!12 = !{!7, !7, i64 0}
!13 = !{!14}
!14 = distinct !{!14, !15}
!15 = distinct !{!15, !"LVerDomain"}
!16 = !{!17}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !19, !20}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = distinct !{!21, !19, !20}
!22 = !{!9, !9, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"long", !7, i64 0}
!25 = !{!5, !9, i64 16}
!26 = !{!5, !9, i64 32}
!27 = distinct !{!27, !19}
!28 = !{!5, !6, i64 0}
!29 = !{!5, !6, i64 8}
