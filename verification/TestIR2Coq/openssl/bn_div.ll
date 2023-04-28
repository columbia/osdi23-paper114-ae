; ModuleID = 'crypto/bn/bn_div.c'
source_filename = "crypto/bn/bn_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_st = type { i64*, i32, i32, i32, i32 }
%struct.bignum_ctx = type opaque

@.str = private unnamed_addr constant [19 x i8] c"crypto/bn/bn_div.c\00", align 1
@__func__.BN_div = private unnamed_addr constant [7 x i8] c"BN_div\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @BN_div(%struct.bignum_st* noundef %dv, %struct.bignum_st* noundef %rm, %struct.bignum_st* noundef %num, %struct.bignum_st* noundef %divisor, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %divisor) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 215, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @__func__.BN_div, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 103, i8* noundef null) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %divisor, i64 0, i32 0
  %0 = load i64*, i64** %d, align 8, !tbaa !4
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %divisor, i64 0, i32 1
  %1 = load i32, i32* %top, align 8, !tbaa !10
  %sub = add nsw i32 %1, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !11
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 225, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @__func__.BN_div, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 107, i8* noundef null) #3
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = tail call i32 @bn_div_fixed_top(%struct.bignum_st* noundef %dv, %struct.bignum_st* noundef %rm, %struct.bignum_st* noundef %num, %struct.bignum_st* noundef nonnull %divisor, %struct.bignum_ctx* noundef %ctx) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %if.then5

if.then5:                                         ; preds = %if.end2
  %cmp6.not = icmp eq %struct.bignum_st* %dv, null
  br i1 %cmp6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.then5
  tail call void @bn_correct_top(%struct.bignum_st* noundef nonnull %dv) #3
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then5
  %cmp9.not = icmp eq %struct.bignum_st* %rm, null
  br i1 %cmp9.not, label %cleanup, label %if.then10

if.then10:                                        ; preds = %if.end8
  tail call void @bn_correct_top(%struct.bignum_st* noundef nonnull %rm) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then10, %if.end8, %if.then1, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then1 ], [ %call3, %if.end8 ], [ %call3, %if.then10 ], [ 0, %if.end2 ]
  ret i32 %retval.0
}

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @bn_div_fixed_top(%struct.bignum_st* noundef %dv, %struct.bignum_st* noundef %rm, %struct.bignum_st* noundef %num, %struct.bignum_st* noundef %divisor, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #3
  %cmp = icmp eq %struct.bignum_st* %dv, null
  br i1 %cmp, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  %call = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.bignum_st* [ %call, %cond.true ], [ %dv, %entry ]
  %call1 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  %call2 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  %call3 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  %cmp4 = icmp eq %struct.bignum_st* %call3, null
  br i1 %cmp4, label %cleanup, label %if.end

if.end:                                           ; preds = %cond.end
  %call5 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %call3, %struct.bignum_st* noundef %divisor) #3
  %tobool.not = icmp eq %struct.bignum_st* %call5, null
  br i1 %tobool.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  %call8 = tail call fastcc i32 @bn_left_align(%struct.bignum_st* noundef nonnull %call3) #4
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call3, i64 0, i32 3
  store i32 0, i32* %neg, align 8, !tbaa !13
  %call9 = tail call i32 @bn_lshift_fixed_top(%struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %num, i32 noundef %call8) #3
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end7
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call3, i64 0, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !10
  %top13 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call2, i64 0, i32 1
  %1 = load i32, i32* %top13, align 8, !tbaa !10
  %cmp14.not = icmp slt i32 %0, %1
  br i1 %cmp14.not, label %if.end24, label %if.then15

if.then15:                                        ; preds = %if.end12
  %add = add i32 %0, 1
  %call16 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef nonnull %call2, i32 noundef %add) #3
  %cmp17 = icmp eq %struct.bignum_st* %call16, null
  br i1 %cmp17, label %cleanup, label %if.end19

if.end19:                                         ; preds = %if.then15
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call2, i64 0, i32 0
  %2 = load i64*, i64** %d, align 8, !tbaa !4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 %idxprom
  %3 = bitcast i64* %arrayidx to i8*
  %add20 = sub i32 %add, %1
  %conv = sext i32 %add20 to i64
  %mul = shl nsw i64 %conv, 3
  %call21 = tail call i8* @memset(i8* noundef %3, i32 noundef 0, i64 noundef %mul) #3
  store i32 %add, i32* %top13, align 8, !tbaa !10
  br label %if.end24

if.end24:                                         ; preds = %if.end19, %if.end12
  %num_n.0 = phi i32 [ %add, %if.end19 ], [ %1, %if.end12 ]
  %sub25 = sub i32 %num_n.0, %0
  %d26 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call2, i64 0, i32 0
  %4 = load i64*, i64** %d26, align 8, !tbaa !4
  %idxprom27 = sext i32 %sub25 to i64
  %arrayidx28 = getelementptr inbounds i64, i64* %4, i64 %idxprom27
  %sub30 = add nsw i32 %num_n.0, -1
  %idxprom31 = sext i32 %sub30 to i64
  %arrayidx32 = getelementptr inbounds i64, i64* %4, i64 %idxprom31
  %d33 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call3, i64 0, i32 0
  %5 = load i64*, i64** %d33, align 8, !tbaa !4
  %sub34 = add nsw i32 %0, -1
  %idxprom35 = sext i32 %sub34 to i64
  %arrayidx36 = getelementptr inbounds i64, i64* %5, i64 %idxprom35
  %6 = load i64, i64* %arrayidx36, align 8, !tbaa !11
  %cmp37 = icmp eq i32 %0, 1
  br i1 %cmp37, label %cond.end45, label %cond.false40

cond.false40:                                     ; preds = %if.end24
  %sub42 = add nsw i32 %0, -2
  %idxprom43 = sext i32 %sub42 to i64
  %arrayidx44 = getelementptr inbounds i64, i64* %5, i64 %idxprom43
  %7 = load i64, i64* %arrayidx44, align 8, !tbaa !11
  br label %cond.end45

cond.end45:                                       ; preds = %if.end24, %cond.false40
  %cond46 = phi i64 [ %7, %cond.false40 ], [ 0, %if.end24 ]
  %call47 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %cond, i32 noundef %sub25) #3
  %tobool48.not = icmp eq %struct.bignum_st* %call47, null
  br i1 %tobool48.not, label %cleanup, label %if.end50

if.end50:                                         ; preds = %cond.end45
  %neg51 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %num, i64 0, i32 3
  %8 = load i32, i32* %neg51, align 8, !tbaa !13
  %neg52 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %divisor, i64 0, i32 3
  %9 = load i32, i32* %neg52, align 8, !tbaa !13
  %xor = xor i32 %9, %8
  %neg53 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %cond, i64 0, i32 3
  store i32 %xor, i32* %neg53, align 8, !tbaa !13
  %top54 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %cond, i64 0, i32 1
  store i32 %sub25, i32* %top54, align 8, !tbaa !10
  %d55 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %cond, i64 0, i32 0
  %10 = load i64*, i64** %d55, align 8, !tbaa !4
  %add58 = add nsw i32 %0, 1
  %call59 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %call1, i32 noundef %add58) #3
  %tobool60.not = icmp eq %struct.bignum_st* %call59, null
  br i1 %tobool60.not, label %cleanup, label %if.end62

if.end62:                                         ; preds = %if.end50
  %cmp63296 = icmp sgt i32 %sub25, 0
  br i1 %cmp63296, label %for.body.lr.ph, label %for.end135

for.body.lr.ph:                                   ; preds = %if.end62
  %arrayidx57 = getelementptr inbounds i64, i64* %10, i64 %idxprom27
  %conv79 = zext i64 %cond46 to i128
  %d106 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call1, i64 0, i32 0
  %idxprom110 = sext i32 %0 to i64
  %cmp118294 = icmp sgt i32 %0, 0
  %wide.trip.count = zext i32 %0 to i64
  %11 = and i64 %wide.trip.count, 4294967292
  %12 = add nsw i64 %11, -4
  %13 = lshr exact i64 %12, 2
  %14 = add nuw nsw i64 %13, 1
  %min.iters.check = icmp ult i32 %0, 4
  %n.vec = and i64 %wide.trip.count, 4294967292
  %xtraiter = and i64 %14, 1
  %15 = icmp eq i64 %12, 0
  %unroll_iter = and i64 %14, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter312 = and i64 %wide.trip.count, 3
  %lcmp.mod313.not = icmp eq i64 %xtraiter312, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.end127
  %i.0303 = phi i32 [ 0, %for.body.lr.ph ], [ %inc133, %for.end127 ]
  %resp.0302 = phi i64* [ %arrayidx57, %for.body.lr.ph ], [ %incdec.ptr131, %for.end127 ]
  %wnum.0300 = phi i64* [ %arrayidx28, %for.body.lr.ph ], [ %incdec.ptr, %for.end127 ]
  %wnumtop.0297 = phi i64* [ %arrayidx32, %for.body.lr.ph ], [ %arrayidx66, %for.end127 ]
  %16 = load i64, i64* %wnumtop.0297, align 8, !tbaa !11
  %arrayidx66 = getelementptr inbounds i64, i64* %wnumtop.0297, i64 -1
  %17 = load i64, i64* %arrayidx66, align 8, !tbaa !11
  %cmp67 = icmp eq i64 %16, %6
  br i1 %cmp67, label %if.end105, label %if.else

if.else:                                          ; preds = %for.body
  %cmp70 = icmp eq i64* %wnumtop.0297, %wnum.0300
  br i1 %cmp70, label %cond.end75, label %cond.false73

cond.false73:                                     ; preds = %if.else
  %arrayidx74 = getelementptr inbounds i64, i64* %wnumtop.0297, i64 -2
  %18 = load i64, i64* %arrayidx74, align 8, !tbaa !11
  br label %cond.end75

cond.end75:                                       ; preds = %if.else, %cond.false73
  %cond76 = phi i64 [ %18, %cond.false73 ], [ 0, %if.else ]
  %19 = tail call { i64, i64 } asm sideeffect "divq   $4", "={ax},={dx},{ax},{dx},r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %17, i64 %16, i64 %6) #5, !srcloc !14
  %asmresult = extractvalue { i64, i64 } %19, 0
  %asmresult77 = extractvalue { i64, i64 } %19, 1
  %conv80 = zext i64 %asmresult to i128
  %mul81 = mul nuw i128 %conv80, %conv79
  %shr = lshr i128 %mul81, 64
  %conv82 = trunc i128 %shr to i64
  %cmp86287 = icmp ugt i64 %asmresult77, %conv82
  br i1 %cmp86287, label %if.end105, label %lor.lhs.false.preheader

lor.lhs.false.preheader:                          ; preds = %cond.end75
  %conv84 = trunc i128 %mul81 to i64
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.lhs.false.preheader, %if.end98
  %t2h.0291 = phi i64 [ %spec.select, %if.end98 ], [ %conv82, %lor.lhs.false.preheader ]
  %t2l.0290 = phi i64 [ %sub104, %if.end98 ], [ %conv84, %lor.lhs.false.preheader ]
  %rem.0289 = phi i64 [ %add94, %if.end98 ], [ %asmresult77, %lor.lhs.false.preheader ]
  %q.0288 = phi i64 [ %dec, %if.end98 ], [ %asmresult, %lor.lhs.false.preheader ]
  %cmp88 = icmp ne i64 %t2h.0291, %rem.0289
  %cmp90.not = icmp ugt i64 %t2l.0290, %cond76
  %or.cond = select i1 %cmp88, i1 true, i1 %cmp90.not
  br i1 %or.cond, label %if.end93, label %if.end105

if.end93:                                         ; preds = %lor.lhs.false
  %dec = add i64 %q.0288, -1
  %add94 = add i64 %rem.0289, %6
  %cmp95 = icmp ult i64 %add94, %6
  br i1 %cmp95, label %if.end105, label %if.end98

if.end98:                                         ; preds = %if.end93
  %cmp99 = icmp ult i64 %t2l.0290, %cond46
  %dec102 = sext i1 %cmp99 to i64
  %spec.select = add i64 %t2h.0291, %dec102
  %sub104 = sub i64 %t2l.0290, %cond46
  %cmp86 = icmp ult i64 %spec.select, %add94
  br i1 %cmp86, label %if.end105, label %lor.lhs.false

if.end105:                                        ; preds = %lor.lhs.false, %if.end93, %if.end98, %cond.end75, %for.body
  %q.2 = phi i64 [ -1, %for.body ], [ %asmresult, %cond.end75 ], [ %q.0288, %lor.lhs.false ], [ %dec, %if.end93 ], [ %dec, %if.end98 ]
  %20 = load i64*, i64** %d106, align 8, !tbaa !4
  %21 = load i64*, i64** %d33, align 8, !tbaa !4
  %call108 = tail call i64 @bn_mul_words(i64* noundef %20, i64* noundef %21, i32 noundef %0, i64 noundef %q.2) #3
  %22 = load i64*, i64** %d106, align 8, !tbaa !4
  %arrayidx111 = getelementptr inbounds i64, i64* %22, i64 %idxprom110
  store i64 %call108, i64* %arrayidx111, align 8, !tbaa !11
  %incdec.ptr = getelementptr inbounds i64, i64* %wnum.0300, i64 -1
  %call114 = tail call i64 @bn_sub_words(i64* noundef nonnull %incdec.ptr, i64* noundef nonnull %incdec.ptr, i64* noundef %22, i32 noundef %add58) #3
  %sub115 = sub i64 %q.2, %call114
  %sub116 = sub i64 0, %call114
  br i1 %cmp118294, label %for.body120.lr.ph, label %if.end105.for.end127_crit_edge

if.end105.for.end127_crit_edge:                   ; preds = %if.end105
  %.pre = load i64*, i64** %d106, align 8, !tbaa !4
  br label %for.end127

for.body120.lr.ph:                                ; preds = %if.end105
  %23 = load i64*, i64** %d33, align 8, !tbaa !4
  %24 = load i64*, i64** %d106, align 8, !tbaa !4
  br i1 %min.iters.check, label %for.body120.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body120.lr.ph
  %scevgep = getelementptr i64, i64* %24, i64 %wide.trip.count
  %scevgep307 = getelementptr i64, i64* %23, i64 %wide.trip.count
  %bound0 = icmp ult i64* %24, %scevgep307
  %bound1 = icmp ult i64* %23, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body120.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %sub116, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert310 = insertelement <2 x i64> poison, i64 %sub116, i64 0
  %broadcast.splat311 = shufflevector <2 x i64> %broadcast.splatinsert310, <2 x i64> poison, <2 x i32> zeroinitializer
  br i1 %15, label %middle.block.unr-lcssa, label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %vector.ph ]
  %niter = phi i64 [ %niter.next.1, %vector.body ], [ 0, %vector.ph ]
  %25 = getelementptr inbounds i64, i64* %23, i64 %index
  %26 = bitcast i64* %25 to <2 x i64>*
  %wide.load = load <2 x i64>, <2 x i64>* %26, align 8, !tbaa !11, !alias.scope !15
  %27 = getelementptr inbounds i64, i64* %25, i64 2
  %28 = bitcast i64* %27 to <2 x i64>*
  %wide.load309 = load <2 x i64>, <2 x i64>* %28, align 8, !tbaa !11, !alias.scope !15
  %29 = and <2 x i64> %wide.load, %broadcast.splat
  %30 = and <2 x i64> %wide.load309, %broadcast.splat311
  %31 = getelementptr inbounds i64, i64* %24, i64 %index
  %32 = bitcast i64* %31 to <2 x i64>*
  store <2 x i64> %29, <2 x i64>* %32, align 8, !tbaa !11, !alias.scope !18, !noalias !15
  %33 = getelementptr inbounds i64, i64* %31, i64 2
  %34 = bitcast i64* %33 to <2 x i64>*
  store <2 x i64> %30, <2 x i64>* %34, align 8, !tbaa !11, !alias.scope !18, !noalias !15
  %index.next = or i64 %index, 4
  %35 = getelementptr inbounds i64, i64* %23, i64 %index.next
  %36 = bitcast i64* %35 to <2 x i64>*
  %wide.load.1 = load <2 x i64>, <2 x i64>* %36, align 8, !tbaa !11, !alias.scope !15
  %37 = getelementptr inbounds i64, i64* %35, i64 2
  %38 = bitcast i64* %37 to <2 x i64>*
  %wide.load309.1 = load <2 x i64>, <2 x i64>* %38, align 8, !tbaa !11, !alias.scope !15
  %39 = and <2 x i64> %wide.load.1, %broadcast.splat
  %40 = and <2 x i64> %wide.load309.1, %broadcast.splat311
  %41 = getelementptr inbounds i64, i64* %24, i64 %index.next
  %42 = bitcast i64* %41 to <2 x i64>*
  store <2 x i64> %39, <2 x i64>* %42, align 8, !tbaa !11, !alias.scope !18, !noalias !15
  %43 = getelementptr inbounds i64, i64* %41, i64 2
  %44 = bitcast i64* %43 to <2 x i64>*
  store <2 x i64> %40, <2 x i64>* %44, align 8, !tbaa !11, !alias.scope !18, !noalias !15
  %index.next.1 = add nuw i64 %index, 8
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !20

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %45 = getelementptr inbounds i64, i64* %23, i64 %index.unr
  %46 = bitcast i64* %45 to <2 x i64>*
  %wide.load.epil = load <2 x i64>, <2 x i64>* %46, align 8, !tbaa !11, !alias.scope !15
  %47 = getelementptr inbounds i64, i64* %45, i64 2
  %48 = bitcast i64* %47 to <2 x i64>*
  %wide.load309.epil = load <2 x i64>, <2 x i64>* %48, align 8, !tbaa !11, !alias.scope !15
  %49 = and <2 x i64> %wide.load.epil, %broadcast.splat
  %50 = and <2 x i64> %wide.load309.epil, %broadcast.splat311
  %51 = getelementptr inbounds i64, i64* %24, i64 %index.unr
  %52 = bitcast i64* %51 to <2 x i64>*
  store <2 x i64> %49, <2 x i64>* %52, align 8, !tbaa !11, !alias.scope !18, !noalias !15
  %53 = getelementptr inbounds i64, i64* %51, i64 2
  %54 = bitcast i64* %53 to <2 x i64>*
  store <2 x i64> %50, <2 x i64>* %54, align 8, !tbaa !11, !alias.scope !18, !noalias !15
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  br i1 %cmp.n, label %for.end127, label %for.body120.preheader

for.body120.preheader:                            ; preds = %vector.memcheck, %for.body120.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body120.lr.ph ], [ %n.vec, %middle.block ]
  %55 = xor i64 %indvars.iv.ph, -1
  %56 = add nsw i64 %55, %wide.trip.count
  br i1 %lcmp.mod313.not, label %for.body120.prol.loopexit, label %for.body120.prol

for.body120.prol:                                 ; preds = %for.body120.preheader, %for.body120.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body120.prol ], [ %indvars.iv.ph, %for.body120.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body120.prol ], [ 0, %for.body120.preheader ]
  %arrayidx123.prol = getelementptr inbounds i64, i64* %23, i64 %indvars.iv.prol
  %57 = load i64, i64* %arrayidx123.prol, align 8, !tbaa !11
  %and.prol = and i64 %57, %sub116
  %arrayidx126.prol = getelementptr inbounds i64, i64* %24, i64 %indvars.iv.prol
  store i64 %and.prol, i64* %arrayidx126.prol, align 8, !tbaa !11
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter312
  br i1 %prol.iter.cmp.not, label %for.body120.prol.loopexit, label %for.body120.prol, !llvm.loop !23

for.body120.prol.loopexit:                        ; preds = %for.body120.prol, %for.body120.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body120.preheader ], [ %indvars.iv.next.prol, %for.body120.prol ]
  %58 = icmp ult i64 %56, 3
  br i1 %58, label %for.end127, label %for.body120

for.body120:                                      ; preds = %for.body120.prol.loopexit, %for.body120
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body120 ], [ %indvars.iv.unr, %for.body120.prol.loopexit ]
  %arrayidx123 = getelementptr inbounds i64, i64* %23, i64 %indvars.iv
  %59 = load i64, i64* %arrayidx123, align 8, !tbaa !11
  %and = and i64 %59, %sub116
  %arrayidx126 = getelementptr inbounds i64, i64* %24, i64 %indvars.iv
  store i64 %and, i64* %arrayidx126, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx123.1 = getelementptr inbounds i64, i64* %23, i64 %indvars.iv.next
  %60 = load i64, i64* %arrayidx123.1, align 8, !tbaa !11
  %and.1 = and i64 %60, %sub116
  %arrayidx126.1 = getelementptr inbounds i64, i64* %24, i64 %indvars.iv.next
  store i64 %and.1, i64* %arrayidx126.1, align 8, !tbaa !11
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx123.2 = getelementptr inbounds i64, i64* %23, i64 %indvars.iv.next.1
  %61 = load i64, i64* %arrayidx123.2, align 8, !tbaa !11
  %and.2 = and i64 %61, %sub116
  %arrayidx126.2 = getelementptr inbounds i64, i64* %24, i64 %indvars.iv.next.1
  store i64 %and.2, i64* %arrayidx126.2, align 8, !tbaa !11
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %arrayidx123.3 = getelementptr inbounds i64, i64* %23, i64 %indvars.iv.next.2
  %62 = load i64, i64* %arrayidx123.3, align 8, !tbaa !11
  %and.3 = and i64 %62, %sub116
  %arrayidx126.3 = getelementptr inbounds i64, i64* %24, i64 %indvars.iv.next.2
  store i64 %and.3, i64* %arrayidx126.3, align 8, !tbaa !11
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %for.end127, label %for.body120, !llvm.loop !25

for.end127:                                       ; preds = %for.body120.prol.loopexit, %for.body120, %middle.block, %if.end105.for.end127_crit_edge
  %63 = phi i64* [ %.pre, %if.end105.for.end127_crit_edge ], [ %24, %middle.block ], [ %24, %for.body120 ], [ %24, %for.body120.prol.loopexit ]
  %call129 = tail call i64 @bn_add_words(i64* noundef nonnull %incdec.ptr, i64* noundef nonnull %incdec.ptr, i64* noundef %63, i32 noundef %0) #3
  %64 = load i64, i64* %wnumtop.0297, align 8, !tbaa !11
  %add130 = add i64 %64, %call129
  store i64 %add130, i64* %wnumtop.0297, align 8, !tbaa !11
  %incdec.ptr131 = getelementptr inbounds i64, i64* %resp.0302, i64 -1
  store i64 %sub115, i64* %incdec.ptr131, align 8, !tbaa !11
  %inc133 = add nuw nsw i32 %i.0303, 1
  %exitcond305.not = icmp eq i32 %inc133, %sub25
  br i1 %exitcond305.not, label %for.end135, label %for.body, !llvm.loop !26

for.end135:                                       ; preds = %for.end127, %if.end62
  %neg136 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call2, i64 0, i32 3
  store i32 %8, i32* %neg136, align 8, !tbaa !13
  store i32 %0, i32* %top13, align 8, !tbaa !10
  %cmp140.not = icmp eq %struct.bignum_st* %rm, null
  br i1 %cmp140.not, label %cleanup, label %if.then142

if.then142:                                       ; preds = %for.end135
  %call143 = tail call i32 @bn_rshift_fixed_top(%struct.bignum_st* noundef nonnull %rm, %struct.bignum_st* noundef nonnull %call2, i32 noundef %call8) #3
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end, %if.end7, %if.then15, %cond.end45, %if.end50, %for.end135, %if.then142
  %retval.0 = phi i32 [ 1, %if.then142 ], [ 1, %for.end135 ], [ 0, %if.end50 ], [ 0, %cond.end45 ], [ 0, %if.then15 ], [ 0, %if.end7 ], [ 0, %if.end ], [ 0, %cond.end ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #3
  ret i32 %retval.0
}

declare void @bn_correct_top(%struct.bignum_st* noundef) local_unnamed_addr #1

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @bn_left_align(%struct.bignum_st* nocapture noundef readonly %num) unnamed_addr #0 {
entry:
  %d1 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %num, i64 0, i32 0
  %0 = load i64*, i64** %d1, align 8, !tbaa !4
  %top2 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %num, i64 0, i32 1
  %1 = load i32, i32* %top2, align 8, !tbaa !10
  %sub = add nsw i32 %1, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !11
  %call = tail call i32 @BN_num_bits_word(i64 noundef %2) #3
  %sub3 = sub nsw i32 64, %call
  %rem = srem i32 %call, 64
  %narrow = sub nsw i32 0, %rem
  %sub4 = sext i32 %narrow to i64
  %shr = lshr i64 %sub4, 8
  %or = or i64 %shr, %sub4
  %cmp36 = icmp sgt i32 %1, 0
  br i1 %cmp36, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sh_prom = zext i32 %sub3 to i64
  %sh_prom11 = zext i32 %rem to i64
  %wide.trip.count = zext i32 %1 to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %3 = icmp eq i32 %1, 1
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph.new ], [ %indvars.iv.next.1, %for.body ]
  %m.037 = phi i64 [ 0, %for.body.lr.ph.new ], [ %and13.1, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.1, %for.body ]
  %arrayidx7 = getelementptr inbounds i64, i64* %0, i64 %indvars.iv
  %4 = load i64, i64* %arrayidx7, align 8, !tbaa !11
  %shl = shl i64 %4, %sh_prom
  %or8 = or i64 %shl, %m.037
  store i64 %or8, i64* %arrayidx7, align 8, !tbaa !11
  %shr12 = lshr i64 %4, %sh_prom11
  %and13 = and i64 %shr12, %or
  %indvars.iv.next = or i64 %indvars.iv, 1
  %arrayidx7.1 = getelementptr inbounds i64, i64* %0, i64 %indvars.iv.next
  %5 = load i64, i64* %arrayidx7.1, align 8, !tbaa !11
  %shl.1 = shl i64 %5, %sh_prom
  %or8.1 = or i64 %shl.1, %and13
  store i64 %or8.1, i64* %arrayidx7.1, align 8, !tbaa !11
  %shr12.1 = lshr i64 %5, %sh_prom11
  %and13.1 = and i64 %shr12.1, %or
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.end.loopexit.unr-lcssa, label %for.body, !llvm.loop !27

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next.1, %for.body ]
  %m.037.unr = phi i64 [ 0, %for.body.lr.ph ], [ %and13.1, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa
  %arrayidx7.epil = getelementptr inbounds i64, i64* %0, i64 %indvars.iv.unr
  %6 = load i64, i64* %arrayidx7.epil, align 8, !tbaa !11
  %shl.epil = shl i64 %6, %sh_prom
  %or8.epil = or i64 %shl.epil, %m.037.unr
  store i64 %or8.epil, i64* %arrayidx7.epil, align 8, !tbaa !11
  br label %for.end

for.end:                                          ; preds = %for.body.epil, %for.end.loopexit.unr-lcssa, %entry
  ret i32 %sub3
}

declare i32 @bn_lshift_fixed_top(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @bn_mul_words(i64* noundef, i64* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @bn_sub_words(i64* noundef, i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #1

declare i64 @bn_add_words(i64* noundef, i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @bn_rshift_fixed_top(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_num_bits_word(i64 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"bignum_st", !6, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!5, !9, i64 8}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!5, !9, i64 16}
!14 = !{i64 2148478175}
!15 = !{!16}
!16 = distinct !{!16, !17}
!17 = distinct !{!17, !"LVerDomain"}
!18 = !{!19}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !21, !22}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = distinct !{!25, !21, !22}
!26 = distinct !{!26, !21}
!27 = distinct !{!27, !21}
