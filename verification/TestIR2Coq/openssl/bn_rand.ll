; ModuleID = 'crypto/bn/bn_rand.c'
source_filename = "crypto/bn/bn_rand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_st = type { i64*, i32, i32, i32, i32 }
%struct.bignum_ctx = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_md_ctx_st = type opaque
%struct.evp_md_st = type opaque
%struct.engine_st = type opaque

@.str = private unnamed_addr constant [20 x i8] c"crypto/bn/bn_rand.c\00", align 1
@__func__.BN_generate_dsa_nonce = private unnamed_addr constant [22 x i8] c"BN_generate_dsa_nonce\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"SHA512\00", align 1
@__func__.bnrand = private unnamed_addr constant [7 x i8] c"bnrand\00", align 1
@__func__.bnrand_range = private unnamed_addr constant [13 x i8] c"bnrand_range\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @BN_rand_ex(%struct.bignum_st* noundef %rnd, i32 noundef %bits, i32 noundef %top, i32 noundef %bottom, i32 noundef %strength, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @bnrand(i32 noundef 0, %struct.bignum_st* noundef %rnd, i32 noundef %bits, i32 noundef %top, i32 noundef %bottom, i32 noundef %strength, %struct.bignum_ctx* noundef %ctx) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @bnrand(i32 noundef %flag, %struct.bignum_st* noundef %rnd, i32 noundef %bits, i32 noundef %top, i32 noundef %bottom, i32 noundef %strength, %struct.bignum_ctx* noundef %ctx) unnamed_addr #0 {
entry:
  %c = alloca i8, align 1
  %call = tail call %struct.ossl_lib_ctx_st* @ossl_bn_get_libctx(%struct.bignum_ctx* noundef %ctx) #5
  %cmp = icmp eq i32 %bits, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %cmp1 = icmp ne i32 %top, -1
  %cmp2 = icmp ne i32 %bottom, 0
  %or.cond = or i1 %cmp1, %cmp2
  br i1 %or.cond, label %toosmall, label %if.end

if.end:                                           ; preds = %if.then
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %rnd) #5
  br label %cleanup109

if.end4:                                          ; preds = %entry
  %cmp5 = icmp slt i32 %bits, 0
  br i1 %cmp5, label %toosmall, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %if.end4
  %cmp7 = icmp eq i32 %bits, 1
  %cmp8 = icmp sgt i32 %top, 0
  %or.cond116 = and i1 %cmp7, %cmp8
  br i1 %or.cond116, label %toosmall, label %if.end10

if.end10:                                         ; preds = %lor.lhs.false6
  %add = add nuw i32 %bits, 7
  %div173 = lshr i32 %add, 3
  %rem174 = and i32 %add, 7
  %shl = shl nuw nsw i32 510, %rem174
  %conv175 = zext i32 %div173 to i64
  %call12 = tail call i8* @CRYPTO_malloc(i64 noundef %conv175, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 43) #5
  %cmp13 = icmp eq i8* %call12, null
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end10
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @__func__.bnrand, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 786688, i8* noundef null) #5
  br label %err

if.end16:                                         ; preds = %if.end10
  %cmp17 = icmp eq i32 %flag, 0
  br i1 %cmp17, label %cond.end.thread, label %cond.end

cond.end:                                         ; preds = %if.end16
  %call22 = tail call i32 @RAND_priv_bytes_ex(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef nonnull %call12, i64 noundef %conv175, i32 noundef %strength) #5
  %cmp23 = icmp slt i32 %call22, 1
  br i1 %cmp23, label %err, label %if.end26

cond.end.thread:                                  ; preds = %if.end16
  %call20 = tail call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef nonnull %call12, i64 noundef %conv175, i32 noundef %strength) #5
  %cmp23170 = icmp slt i32 %call20, 1
  br i1 %cmp23170, label %err, label %if.end64

if.end26:                                         ; preds = %cond.end
  %cmp27 = icmp eq i32 %flag, 1
  br i1 %cmp27, label %for.body.preheader, label %if.end64

for.body.preheader:                               ; preds = %if.end26
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %c) #6
  %wide.trip.count = zext i32 %div173 to i64
  br label %for.body

cleanup.thread:                                   ; preds = %for.inc
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %c) #6
  br label %if.end64

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %call32 = call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef nonnull %c, i64 noundef 1, i32 noundef %strength) #5
  %cmp33 = icmp slt i32 %call32, 1
  br i1 %cmp33, label %cleanup, label %if.end36

if.end36:                                         ; preds = %for.body
  %0 = load i8, i8* %c, align 1, !tbaa !4
  %cmp38 = icmp slt i8 %0, 0
  %cmp41 = icmp ne i64 %indvars.iv, 0
  %or.cond117 = select i1 %cmp38, i1 %cmp41, i1 false
  br i1 %or.cond117, label %if.then43, label %if.else

if.then43:                                        ; preds = %if.end36
  %1 = add nuw i64 %indvars.iv, 4294967295
  %2 = and i64 %1, 4294967295
  %arrayidx = getelementptr inbounds i8, i8* %call12, i64 %2
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !4
  br label %for.inc.sink.split

if.else:                                          ; preds = %if.end36
  %cmp48 = icmp ult i8 %0, 42
  br i1 %cmp48, label %for.inc.sink.split, label %if.else53

if.else53:                                        ; preds = %if.else
  %cmp55 = icmp ult i8 %0, 84
  br i1 %cmp55, label %for.inc.sink.split, label %for.inc

for.inc.sink.split:                               ; preds = %if.else53, %if.else, %if.then43
  %.sink = phi i8 [ %3, %if.then43 ], [ 0, %if.else ], [ -1, %if.else53 ]
  %arrayidx46 = getelementptr inbounds i8, i8* %call12, i64 %indvars.iv
  store i8 %.sink, i8* %arrayidx46, align 1, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %cleanup.thread, label %for.body, !llvm.loop !7

cleanup:                                          ; preds = %for.body
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %c) #6
  br label %err

if.end64:                                         ; preds = %cond.end.thread, %cleanup.thread, %if.end26
  %cmp65 = icmp sgt i32 %top, -1
  br i1 %cmp65, label %if.then67, label %if.end64.if.end91_crit_edge

if.end64.if.end91_crit_edge:                      ; preds = %if.end64
  %.pre = load i8, i8* %call12, align 1, !tbaa !4
  br label %if.end91

if.then67:                                        ; preds = %if.end64
  %tobool.not = icmp eq i32 %top, 0
  br i1 %tobool.not, label %if.else84, label %if.then68

if.then68:                                        ; preds = %if.then67
  %cmp69 = icmp eq i32 %rem174, 0
  br i1 %cmp69, label %if.then71, label %if.else76

if.then71:                                        ; preds = %if.then68
  store i8 1, i8* %call12, align 1, !tbaa !4
  %arrayidx73 = getelementptr inbounds i8, i8* %call12, i64 1
  %4 = load i8, i8* %arrayidx73, align 1, !tbaa !4
  %5 = or i8 %4, -128
  store i8 %5, i8* %arrayidx73, align 1, !tbaa !4
  br label %if.end91

if.else76:                                        ; preds = %if.then68
  %sub77 = add nsw i32 %rem174, -1
  %shl78 = shl i32 3, %sub77
  %6 = load i8, i8* %call12, align 1, !tbaa !4
  %7 = trunc i32 %shl78 to i8
  %conv82 = or i8 %6, %7
  store i8 %conv82, i8* %call12, align 1, !tbaa !4
  br label %if.end91

if.else84:                                        ; preds = %if.then67
  %shl85 = shl nuw i32 1, %rem174
  %8 = load i8, i8* %call12, align 1, !tbaa !4
  %9 = trunc i32 %shl85 to i8
  %conv89 = or i8 %8, %9
  store i8 %conv89, i8* %call12, align 1, !tbaa !4
  br label %if.end91

if.end91:                                         ; preds = %if.end64.if.end91_crit_edge, %if.else84, %if.else76, %if.then71
  %10 = phi i8 [ %.pre, %if.end64.if.end91_crit_edge ], [ %conv89, %if.else84 ], [ %conv82, %if.else76 ], [ 1, %if.then71 ]
  %11 = trunc i32 %shl to i8
  %12 = xor i8 %11, -1
  %conv94 = and i8 %10, %12
  store i8 %conv94, i8* %call12, align 1, !tbaa !4
  %tobool95.not = icmp eq i32 %bottom, 0
  br i1 %tobool95.not, label %if.end103, label %if.then96

if.then96:                                        ; preds = %if.end91
  %sub97 = add nsw i32 %div173, -1
  %idxprom98 = sext i32 %sub97 to i64
  %arrayidx99 = getelementptr inbounds i8, i8* %call12, i64 %idxprom98
  %13 = load i8, i8* %arrayidx99, align 1, !tbaa !4
  %14 = or i8 %13, 1
  store i8 %14, i8* %arrayidx99, align 1, !tbaa !4
  br label %if.end103

if.end103:                                        ; preds = %if.then96, %if.end91
  %call104 = call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %call12, i32 noundef %div173, %struct.bignum_st* noundef %rnd) #5
  %tobool105.not = icmp ne %struct.bignum_st* %call104, null
  %spec.select = zext i1 %tobool105.not to i32
  br label %err

err:                                              ; preds = %cleanup, %cond.end.thread, %if.end103, %cond.end, %if.then15
  %ret.0 = phi i32 [ 0, %if.then15 ], [ 0, %cond.end ], [ 0, %cleanup ], [ %spec.select, %if.end103 ], [ 0, %cond.end.thread ]
  call void @CRYPTO_clear_free(i8* noundef %call12, i64 noundef %conv175, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 93) #5
  br label %cleanup109

toosmall:                                         ; preds = %if.end4, %lor.lhs.false6, %if.then
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 98, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @__func__.bnrand, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 118, i8* noundef null) #5
  br label %cleanup109

cleanup109:                                       ; preds = %toosmall, %err, %if.end
  %retval.0 = phi i32 [ 0, %toosmall ], [ 1, %if.end ], [ %ret.0, %err ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_rand(%struct.bignum_st* noundef %rnd, i32 noundef %bits, i32 noundef %top, i32 noundef %bottom) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @bnrand(i32 noundef 0, %struct.bignum_st* noundef %rnd, i32 noundef %bits, i32 noundef %top, i32 noundef %bottom, i32 noundef 0, %struct.bignum_ctx* noundef null) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_bntest_rand(%struct.bignum_st* noundef %rnd, i32 noundef %bits, i32 noundef %top, i32 noundef %bottom) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @bnrand(i32 noundef 1, %struct.bignum_st* noundef %rnd, i32 noundef %bits, i32 noundef %top, i32 noundef %bottom, i32 noundef 0, %struct.bignum_ctx* noundef null) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_priv_rand_ex(%struct.bignum_st* noundef %rnd, i32 noundef %bits, i32 noundef %top, i32 noundef %bottom, i32 noundef %strength, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @bnrand(i32 noundef 2, %struct.bignum_st* noundef %rnd, i32 noundef %bits, i32 noundef %top, i32 noundef %bottom, i32 noundef %strength, %struct.bignum_ctx* noundef %ctx) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_priv_rand(%struct.bignum_st* noundef %rnd, i32 noundef %bits, i32 noundef %top, i32 noundef %bottom) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @bnrand(i32 noundef 2, %struct.bignum_st* noundef %rnd, i32 noundef %bits, i32 noundef %top, i32 noundef %bottom, i32 noundef 0, %struct.bignum_ctx* noundef null) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_rand_range_ex(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %range, i32 noundef %strength, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @bnrand_range(i32 noundef 0, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %range, i32 noundef %strength, %struct.bignum_ctx* noundef %ctx) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @bnrand_range(i32 noundef %flag, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %range, i32 noundef %strength, %struct.bignum_ctx* noundef %ctx) unnamed_addr #0 {
entry:
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %range, i64 0, i32 3
  %0 = load i32, i32* %neg, align 8, !tbaa !9
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %range) #5
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 140, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.bnrand_range, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 115, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %range) #5
  %cmp = icmp eq i32 %call2, 1
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %r) #5
  br label %cleanup

if.else:                                          ; preds = %if.end
  %sub = add nsw i32 %call2, -2
  %call4 = tail call i32 @BN_is_bit_set(%struct.bignum_st* noundef nonnull %range, i32 noundef %sub) #5
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %do.body36.preheader

do.body36.preheader:                              ; preds = %land.lhs.true, %if.else
  br label %do.body36

land.lhs.true:                                    ; preds = %if.else
  %sub6 = add nsw i32 %call2, -3
  %call7 = tail call i32 @BN_is_bit_set(%struct.bignum_st* noundef nonnull %range, i32 noundef %sub6) #5
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.body.preheader, label %do.body36.preheader

do.body.preheader:                                ; preds = %land.lhs.true
  %add = add nsw i32 %call2, 1
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %do.cond
  %count.0 = phi i32 [ %dec, %do.cond ], [ 100, %do.body.preheader ]
  %call10 = tail call fastcc i32 @bnrand(i32 noundef %flag, %struct.bignum_st* noundef %r, i32 noundef %add, i32 noundef -1, i32 noundef 0, i32 noundef %strength, %struct.bignum_ctx* noundef %ctx) #4
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %do.body
  %call14 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %range) #5
  %cmp15 = icmp sgt i32 %call14, -1
  br i1 %cmp15, label %if.then16, label %if.end29

if.then16:                                        ; preds = %if.end13
  %call17 = tail call i32 @BN_sub(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %range) #5
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %cleanup, label %if.end20

if.end20:                                         ; preds = %if.then16
  %call21 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %range) #5
  %cmp22 = icmp sgt i32 %call21, -1
  br i1 %cmp22, label %if.then23, label %if.end29

if.then23:                                        ; preds = %if.end20
  %call24 = tail call i32 @BN_sub(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %range) #5
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %cleanup, label %if.end29

if.end29:                                         ; preds = %if.end20, %if.then23, %if.end13
  %dec = add nsw i32 %count.0, -1
  %tobool30.not = icmp eq i32 %dec, 0
  br i1 %tobool30.not, label %if.then31, label %do.cond

if.then31:                                        ; preds = %if.end29
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 175, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.bnrand_range, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 113, i8* noundef null) #5
  br label %cleanup

do.cond:                                          ; preds = %if.end29
  %call33 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %range) #5
  %cmp34 = icmp sgt i32 %call33, -1
  br i1 %cmp34, label %do.body, label %cleanup, !llvm.loop !13

do.body36:                                        ; preds = %do.body36.preheader, %do.cond45
  %count.1 = phi i32 [ %dec41, %do.cond45 ], [ 100, %do.body36.preheader ]
  %call37 = tail call fastcc i32 @bnrand(i32 noundef %flag, %struct.bignum_st* noundef %r, i32 noundef %call2, i32 noundef -1, i32 noundef 0, i32 noundef 0, %struct.bignum_ctx* noundef %ctx) #4
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %cleanup, label %if.end40

if.end40:                                         ; preds = %do.body36
  %dec41 = add nsw i32 %count.1, -1
  %tobool42.not = icmp eq i32 %dec41, 0
  br i1 %tobool42.not, label %if.then43, label %do.cond45

if.then43:                                        ; preds = %if.end40
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 189, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.bnrand_range, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 113, i8* noundef null) #5
  br label %cleanup

do.cond45:                                        ; preds = %if.end40
  %call46 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %range) #5
  %cmp47 = icmp sgt i32 %call46, -1
  br i1 %cmp47, label %do.body36, label %cleanup, !llvm.loop !14

cleanup:                                          ; preds = %do.cond45, %do.body36, %do.cond, %if.then23, %if.then16, %do.body, %if.then3, %if.then43, %if.then31, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then43 ], [ 0, %if.then31 ], [ 1, %if.then3 ], [ 1, %do.cond ], [ 0, %if.then23 ], [ 0, %if.then16 ], [ 0, %do.body ], [ 1, %do.cond45 ], [ 0, %do.body36 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_rand_range(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %range) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @bnrand_range(i32 noundef 0, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %range, i32 noundef 0, %struct.bignum_ctx* noundef null) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_priv_rand_range_ex(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %range, i32 noundef %strength, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @bnrand_range(i32 noundef 2, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %range, i32 noundef %strength, %struct.bignum_ctx* noundef %ctx) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_priv_rand_range(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %range) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @bnrand_range(i32 noundef 2, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %range, i32 noundef 0, %struct.bignum_ctx* noundef null) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_pseudo_rand(%struct.bignum_st* noundef %rnd, i32 noundef %bits, i32 noundef %top, i32 noundef %bottom) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_rand(%struct.bignum_st* noundef %rnd, i32 noundef %bits, i32 noundef %top, i32 noundef %bottom) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_pseudo_rand_range(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %range) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_rand_range(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %range) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_generate_dsa_nonce(%struct.bignum_st* noundef %out, %struct.bignum_st* noundef %range, %struct.bignum_st* noundef %priv, i8* noundef %message, i64 noundef %message_len, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %random_bytes = alloca [64 x i8], align 16
  %digest = alloca [64 x i8], align 16
  %done = alloca i32, align 4
  %private_bytes = alloca [96 x i8], align 16
  %call = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #5
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %random_bytes, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #6
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %digest, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #6
  %2 = bitcast i32* %done to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #6
  %call1 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %range) #5
  %add = add nsw i32 %call1, 7
  %div = sdiv i32 %add, 8
  %add2 = add nsw i32 %div, 8
  %3 = getelementptr inbounds [96 x i8], [96 x i8]* %private_bytes, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %3) #6
  %call3 = tail call %struct.ossl_lib_ctx_st* @ossl_bn_get_libctx(%struct.bignum_ctx* noundef %ctx) #5
  %cmp = icmp eq %struct.evp_md_ctx_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %conv = zext i32 %add2 to i64
  %call4 = tail call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 269) #5
  %cmp5 = icmp eq i8* %call4, null
  br i1 %cmp5, label %err, label %if.end8

if.end8:                                          ; preds = %if.end
  %call9 = call i32 @BN_bn2binpad(%struct.bignum_st* noundef %priv, i8* noundef nonnull %3, i32 noundef 96) #5
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end8
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 280, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.BN_generate_dsa_nonce, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 117, i8* noundef null) #5
  br label %err

if.end13:                                         ; preds = %if.end8
  %call14 = call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %call3, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* noundef null) #5
  %cmp15 = icmp eq %struct.evp_md_st* %call14, null
  br i1 %cmp15, label %if.then17, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end13
  store i32 0, i32* %done, align 4, !tbaa !15
  %cmp1993.not = icmp eq i32 %add2, 0
  br i1 %cmp1993.not, label %for.end, label %for.body

if.then17:                                        ; preds = %if.end13
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 286, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.BN_generate_dsa_nonce, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 120, i8* noundef null) #5
  br label %err

for.body:                                         ; preds = %for.cond.preheader, %if.end45
  %call22 = call i32 @RAND_priv_bytes_ex(%struct.ossl_lib_ctx_st* noundef %call3, i8* noundef nonnull %0, i64 noundef 64, i32 noundef 0) #5
  %tobool.not = icmp eq i32 %call22, 0
  br i1 %tobool.not, label %err, label %if.end24

if.end24:                                         ; preds = %for.body
  %call25 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call, %struct.evp_md_st* noundef nonnull %call14, %struct.engine_st* noundef null) #5
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end24
  %call27 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef nonnull %2, i64 noundef 4) #5
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false
  %call31 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef nonnull %3, i64 noundef 96) #5
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false29
  %call34 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef %message, i64 noundef %message_len) #5
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false33
  %call38 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef nonnull %0, i64 noundef 64) #5
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %err, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %lor.lhs.false36
  %call42 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef nonnull %1, i32* noundef null) #5
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %err, label %if.end45

if.end45:                                         ; preds = %lor.lhs.false40
  %4 = load i32, i32* %done, align 4, !tbaa !15
  %sub = sub i32 %add2, %4
  %5 = icmp ult i32 %sub, 64
  %spec.store.select = select i1 %5, i32 %sub, i32 64
  %idx.ext = zext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %call4, i64 %idx.ext
  %conv51 = zext i32 %spec.store.select to i64
  %call52 = call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef nonnull %1, i64 noundef %conv51) #5
  %6 = load i32, i32* %done, align 4, !tbaa !15
  %add53 = add i32 %spec.store.select, %6
  store i32 %add53, i32* %done, align 4, !tbaa !15
  %cmp19 = icmp ult i32 %add53, %add2
  br i1 %cmp19, label %for.body, label %for.end, !llvm.loop !16

for.end:                                          ; preds = %if.end45, %for.cond.preheader
  %call54 = call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %call4, i32 noundef %add2, %struct.bignum_st* noundef %out) #5
  %tobool55.not = icmp eq %struct.bignum_st* %call54, null
  br i1 %tobool55.not, label %err, label %if.end57

if.end57:                                         ; preds = %for.end
  %call58 = call i32 @BN_div(%struct.bignum_st* noundef null, %struct.bignum_st* noundef %out, %struct.bignum_st* noundef %out, %struct.bignum_st* noundef %range, %struct.bignum_ctx* noundef %ctx) #5
  %cmp59.not = icmp eq i32 %call58, 1
  %spec.select = zext i1 %cmp59.not to i32
  br label %err

err:                                              ; preds = %if.end24, %lor.lhs.false, %lor.lhs.false29, %lor.lhs.false33, %lor.lhs.false36, %lor.lhs.false40, %for.body, %if.end57, %for.end, %if.end, %entry, %if.then17, %if.then12
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.then12 ], [ 0, %if.then17 ], [ 0, %for.end ], [ %spec.select, %if.end57 ], [ 0, %for.body ], [ 0, %lor.lhs.false40 ], [ 0, %lor.lhs.false36 ], [ 0, %lor.lhs.false33 ], [ 0, %lor.lhs.false29 ], [ 0, %lor.lhs.false ], [ 0, %if.end24 ]
  %md.0 = phi %struct.evp_md_st* [ null, %entry ], [ null, %if.end ], [ null, %if.then12 ], [ null, %if.then17 ], [ %call14, %for.end ], [ %call14, %if.end57 ], [ %call14, %for.body ], [ %call14, %lor.lhs.false40 ], [ %call14, %lor.lhs.false36 ], [ %call14, %lor.lhs.false33 ], [ %call14, %lor.lhs.false29 ], [ %call14, %lor.lhs.false ], [ %call14, %if.end24 ]
  %k_bytes.0 = phi i8* [ null, %entry ], [ null, %if.end ], [ %call4, %if.then12 ], [ %call4, %if.then17 ], [ %call4, %for.end ], [ %call4, %if.end57 ], [ %call4, %for.body ], [ %call4, %lor.lhs.false40 ], [ %call4, %lor.lhs.false36 ], [ %call4, %lor.lhs.false33 ], [ %call4, %lor.lhs.false29 ], [ %call4, %lor.lhs.false ], [ %call4, %if.end24 ]
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call) #5
  call void @EVP_MD_free(%struct.evp_md_st* noundef %md.0) #5
  call void @CRYPTO_free(i8* noundef %k_bytes.0, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 318) #5
  call void @OPENSSL_cleanse(i8* noundef nonnull %3, i64 noundef 96) #5
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #6
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #2

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #2

declare %struct.ossl_lib_ctx_st* @ossl_bn_get_libctx(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BN_bn2binpad(%struct.bignum_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @RAND_priv_bytes_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_div(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

declare void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare void @BN_zero_ex(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_is_bit_set(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BN_cmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_sub(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }

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
!9 = !{!10, !12, i64 16}
!10 = !{!"bignum_st", !11, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"int", !5, i64 0}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = !{!12, !12, i64 0}
!16 = distinct !{!16, !8}
