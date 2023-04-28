; ModuleID = 'crypto/bn/bn_exp.c'
source_filename = "crypto/bn/bn_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_st = type { i64*, i32, i32, i32, i32 }
%struct.bignum_ctx = type opaque
%struct.bn_mont_ctx_st = type { i32, %struct.bignum_st, %struct.bignum_st, %struct.bignum_st, [2 x i64], i32 }
%struct.bn_recp_ctx_st = type { %struct.bignum_st, %struct.bignum_st, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"crypto/bn/bn_exp.c\00", align 1
@__func__.BN_exp = private unnamed_addr constant [7 x i8] c"BN_exp\00", align 1
@__func__.BN_mod_exp_recp = private unnamed_addr constant [16 x i8] c"BN_mod_exp_recp\00", align 1
@__func__.BN_mod_exp_mont = private unnamed_addr constant [16 x i8] c"BN_mod_exp_mont\00", align 1
@__func__.BN_mod_exp_mont_consttime = private unnamed_addr constant [26 x i8] c"BN_mod_exp_mont_consttime\00", align 1
@__func__.BN_mod_exp_mont_word = private unnamed_addr constant [21 x i8] c"BN_mod_exp_mont_word\00", align 1
@__func__.BN_mod_exp_simple = private unnamed_addr constant [18 x i8] c"BN_mod_exp_simple\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @BN_exp(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_get_flags(%struct.bignum_st* noundef %p, i32 noundef 4) #8
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @BN_get_flags(%struct.bignum_st* noundef %a, i32 noundef 4) #8
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @__func__.BN_exp, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 786689, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #8
  %cmp3 = icmp eq %struct.bignum_st* %r, %a
  %cmp5 = icmp eq %struct.bignum_st* %r, %p
  %or.cond84 = or i1 %cmp3, %cmp5
  br i1 %or.cond84, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.end
  %call6 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #8
  br label %cond.end

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.bignum_st* [ %call6, %cond.true ], [ %r, %if.end ]
  %call7 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #8
  %cmp8 = icmp eq %struct.bignum_st* %cond, null
  %cmp10 = icmp eq %struct.bignum_st* %call7, null
  %or.cond = select i1 %cmp8, i1 true, i1 %cmp10
  br i1 %or.cond, label %err, label %if.end12

if.end12:                                         ; preds = %cond.end
  %call13 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %call7, %struct.bignum_st* noundef %a) #8
  %cmp14 = icmp eq %struct.bignum_st* %call13, null
  br i1 %cmp14, label %err, label %if.end16

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %p) #8
  %call18 = tail call i32 @BN_is_odd(%struct.bignum_st* noundef %p) #8
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end16
  %call20 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %cond, %struct.bignum_st* noundef %a) #8
  %cmp21 = icmp eq %struct.bignum_st* %call20, null
  br i1 %cmp21, label %err, label %if.end28

if.else:                                          ; preds = %if.end16
  %call24 = tail call i32 @BN_set_word(%struct.bignum_st* noundef nonnull %cond, i64 noundef 1) #8
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %if.end28

if.end28:                                         ; preds = %if.else, %if.then19
  %cmp2985 = icmp sgt i32 %call17, 1
  br i1 %cmp2985, label %for.body, label %for.end

for.body:                                         ; preds = %if.end28, %for.inc
  %i.086 = phi i32 [ %inc, %for.inc ], [ 1, %if.end28 ]
  %call30 = tail call i32 @BN_sqr(%struct.bignum_st* noundef %call7, %struct.bignum_st* noundef %call7, %struct.bignum_ctx* noundef %ctx) #8
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %err, label %if.end33

if.end33:                                         ; preds = %for.body
  %call34 = tail call i32 @BN_is_bit_set(%struct.bignum_st* noundef %p, i32 noundef %i.086) #8
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %for.inc, label %if.then36

if.then36:                                        ; preds = %if.end33
  %call37 = tail call i32 @BN_mul(%struct.bignum_st* noundef %cond, %struct.bignum_st* noundef %cond, %struct.bignum_st* noundef %call7, %struct.bignum_ctx* noundef %ctx) #8
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %err, label %for.inc

for.inc:                                          ; preds = %if.end33, %if.then36
  %inc = add nuw nsw i32 %i.086, 1
  %exitcond.not = icmp eq i32 %inc, %call17
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !4

for.end:                                          ; preds = %for.inc, %if.end28
  %cmp42.not = icmp eq %struct.bignum_st* %cond, %r
  br i1 %cmp42.not, label %if.end46, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end
  %call43 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %cond) #8
  %cmp44 = icmp eq %struct.bignum_st* %call43, null
  br i1 %cmp44, label %err, label %if.end46

if.end46:                                         ; preds = %land.lhs.true, %for.end
  br label %err

err:                                              ; preds = %if.then36, %for.body, %land.lhs.true, %if.else, %if.then19, %if.end12, %cond.end, %if.end46
  %ret.0 = phi i32 [ 0, %cond.end ], [ 0, %if.end12 ], [ 0, %if.then19 ], [ 0, %land.lhs.true ], [ 1, %if.end46 ], [ 0, %if.else ], [ 0, %for.body ], [ 0, %if.then36 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.0, %err ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @BN_get_flags(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_is_odd(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_set_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BN_sqr(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_is_bit_set(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BN_mul(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @BN_mod_exp(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_is_odd(%struct.bignum_st* noundef %m) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else14, label %if.then

if.then:                                          ; preds = %entry
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !6
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 3
  %1 = load i32, i32* %neg, align 8, !tbaa !12
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %land.lhs.true2, label %if.else

land.lhs.true2:                                   ; preds = %land.lhs.true
  %call3 = tail call i32 @BN_get_flags(%struct.bignum_st* noundef %p, i32 noundef 4) #8
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %land.lhs.true5, label %if.else

land.lhs.true5:                                   ; preds = %land.lhs.true2
  %call6 = tail call i32 @BN_get_flags(%struct.bignum_st* noundef nonnull %a, i32 noundef 4) #8
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %land.lhs.true8, label %if.else

land.lhs.true8:                                   ; preds = %land.lhs.true5
  %call9 = tail call i32 @BN_get_flags(%struct.bignum_st* noundef %m, i32 noundef 4) #8
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %land.lhs.true8
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %2 = load i64*, i64** %d, align 8, !tbaa !13
  %3 = load i64, i64* %2, align 8, !tbaa !14
  %call12 = tail call i32 @BN_mod_exp_mont_word(%struct.bignum_st* noundef %r, i64 noundef %3, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx, %struct.bn_mont_ctx_st* noundef null) #9
  br label %if.end16

if.else:                                          ; preds = %land.lhs.true8, %land.lhs.true5, %land.lhs.true2, %land.lhs.true, %if.then
  %call13 = tail call i32 @BN_mod_exp_mont(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef nonnull %a, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx, %struct.bn_mont_ctx_st* noundef null) #9
  br label %if.end16

if.else14:                                        ; preds = %entry
  %call15 = tail call i32 @BN_mod_exp_recp(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.else, %if.else14
  %ret.0 = phi i32 [ %call13, %if.else ], [ %call12, %if.then11 ], [ %call15, %if.else14 ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_mod_exp_mont_word(%struct.bignum_st* noundef %rr, i64 noundef %a, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx, %struct.bn_mont_ctx_st* noundef %in_mont) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_get_flags(%struct.bignum_st* noundef %p, i32 noundef 4) #8
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @BN_get_flags(%struct.bignum_st* noundef %m, i32 noundef 4) #8
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1155, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.BN_mod_exp_mont_word, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 786689, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call i32 @BN_is_odd(%struct.bignum_st* noundef %m) #8
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1163, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.BN_mod_exp_mont_word, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 102, i8* noundef null) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %m, i64 0, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !6
  %cmp6 = icmp eq i32 %0, 1
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %m, i64 0, i32 0
  %1 = load i64*, i64** %d, align 8, !tbaa !13
  %2 = load i64, i64* %1, align 8, !tbaa !14
  %rem = urem i64 %a, %2
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5
  %a.addr.0 = phi i64 [ %rem, %if.then7 ], [ %a, %if.end5 ]
  %call9 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %p) #8
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end17

if.then11:                                        ; preds = %if.end8
  %call12 = tail call i32 @BN_abs_is_word(%struct.bignum_st* noundef nonnull %m, i64 noundef 1) #8
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.then11
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %rr) #8
  br label %cleanup

if.else:                                          ; preds = %if.then11
  %call15 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %rr, i64 noundef 1) #8
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %cmp18 = icmp eq i64 %a.addr.0, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end17
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %rr) #8
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #8
  %call21 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #8
  %call22 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #8
  %cmp23 = icmp eq %struct.bignum_st* %call22, null
  br i1 %cmp23, label %err, label %if.end25

if.end25:                                         ; preds = %if.end20
  %cmp26.not = icmp eq %struct.bn_mont_ctx_st* %in_mont, null
  br i1 %cmp26.not, label %if.else28, label %if.end37

if.else28:                                        ; preds = %if.end25
  %call29 = tail call %struct.bn_mont_ctx_st* @BN_MONT_CTX_new() #8
  %cmp30 = icmp eq %struct.bn_mont_ctx_st* %call29, null
  br i1 %cmp30, label %if.then130, label %if.end32

if.end32:                                         ; preds = %if.else28
  %call33 = tail call i32 @BN_MONT_CTX_set(%struct.bn_mont_ctx_st* noundef nonnull %call29, %struct.bignum_st* noundef nonnull %m, %struct.bignum_ctx* noundef %ctx) #8
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then130, label %if.end37

if.end37:                                         ; preds = %if.end25, %if.end32
  %mont.0 = phi %struct.bn_mont_ctx_st* [ %call29, %if.end32 ], [ %in_mont, %if.end25 ]
  %cmp38275 = icmp sgt i32 %call9, 1
  br i1 %cmp38275, label %for.body.preheader, label %for.end.thread

for.body.preheader:                               ; preds = %if.end37
  %sub = add nsw i32 %call9, -2
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %t.0280 = phi %struct.bignum_st* [ %t.5, %for.inc ], [ %call22, %for.body.preheader ]
  %r.0279 = phi %struct.bignum_st* [ %r.5, %for.inc ], [ %call21, %for.body.preheader ]
  %w.0278 = phi i64 [ %w.1, %for.inc ], [ %a.addr.0, %for.body.preheader ]
  %r_is_one.0277 = phi i32 [ %r_is_one.5, %for.inc ], [ 1, %for.body.preheader ]
  %b.0276 = phi i32 [ %dec, %for.inc ], [ %sub, %for.body.preheader ]
  %mul243 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %w.0278, i64 %w.0278)
  %mul.val = extractvalue { i64, i1 } %mul243, 0
  %mul.ov = extractvalue { i64, i1 } %mul243, 1
  %tobool41.not = icmp eq i32 %r_is_one.0277, 0
  br i1 %mul.ov, label %if.then40, label %if.end59

if.then40:                                        ; preds = %for.body
  br i1 %tobool41.not, label %if.else49, label %if.then42

if.then42:                                        ; preds = %if.then40
  %call43 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %r.0279, i64 noundef %w.0278) #8
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %err, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then42
  %call45 = tail call i32 @BN_to_montgomery(%struct.bignum_st* noundef %r.0279, %struct.bignum_st* noundef %r.0279, %struct.bn_mont_ctx_st* noundef nonnull %mont.0, %struct.bignum_ctx* noundef %ctx) #8
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %err, label %if.then61

if.else49:                                        ; preds = %if.then40
  %call50 = tail call i32 @BN_mul_word(%struct.bignum_st* noundef %r.0279, i64 noundef %w.0278) #8
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %err, label %land.lhs.true52

land.lhs.true52:                                  ; preds = %if.else49
  %call53 = tail call i32 @BN_div(%struct.bignum_st* noundef null, %struct.bignum_st* noundef %t.0280, %struct.bignum_st* noundef %r.0279, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx) #8
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %err, label %if.then61

if.end59:                                         ; preds = %for.body
  br i1 %tobool41.not, label %if.then61, label %if.end66

if.then61:                                        ; preds = %land.lhs.true, %land.lhs.true52, %if.end59
  %t.2258 = phi %struct.bignum_st* [ %t.0280, %if.end59 ], [ %r.0279, %land.lhs.true52 ], [ %t.0280, %land.lhs.true ]
  %r.2256 = phi %struct.bignum_st* [ %r.0279, %if.end59 ], [ %t.0280, %land.lhs.true52 ], [ %r.0279, %land.lhs.true ]
  %next_w.0254 = phi i64 [ %mul.val, %if.end59 ], [ 1, %land.lhs.true52 ], [ 1, %land.lhs.true ]
  %call62 = tail call i32 @BN_mod_mul_montgomery(%struct.bignum_st* noundef %r.2256, %struct.bignum_st* noundef %r.2256, %struct.bignum_st* noundef %r.2256, %struct.bn_mont_ctx_st* noundef nonnull %mont.0, %struct.bignum_ctx* noundef %ctx) #8
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %err, label %if.end66

if.end66:                                         ; preds = %if.then61, %if.end59
  %tobool60.not259 = phi i1 [ true, %if.then61 ], [ false, %if.end59 ]
  %t.2257 = phi %struct.bignum_st* [ %t.2258, %if.then61 ], [ %t.0280, %if.end59 ]
  %r.2255 = phi %struct.bignum_st* [ %r.2256, %if.then61 ], [ %r.0279, %if.end59 ]
  %next_w.0253 = phi i64 [ %next_w.0254, %if.then61 ], [ %mul.val, %if.end59 ]
  %r_is_one.2251 = phi i32 [ 0, %if.then61 ], [ %r_is_one.0277, %if.end59 ]
  %call67 = tail call i32 @BN_is_bit_set(%struct.bignum_st* noundef %p, i32 noundef %b.0276) #8
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %for.inc, label %if.then69

if.then69:                                        ; preds = %if.end66
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %a.addr.0, i64 %next_w.0253)
  %mul.val244 = extractvalue { i64, i1 } %mul, 0
  %mul.ov245 = extractvalue { i64, i1 } %mul, 1
  br i1 %mul.ov245, label %if.then73, label %for.inc

if.then73:                                        ; preds = %if.then69
  br i1 %tobool60.not259, label %if.else83, label %if.then75

if.then75:                                        ; preds = %if.then73
  %call76 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %r.2255, i64 noundef %next_w.0253) #8
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %err, label %land.lhs.true78

land.lhs.true78:                                  ; preds = %if.then75
  %call79 = tail call i32 @BN_to_montgomery(%struct.bignum_st* noundef %r.2255, %struct.bignum_st* noundef %r.2255, %struct.bn_mont_ctx_st* noundef nonnull %mont.0, %struct.bignum_ctx* noundef %ctx) #8
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %err, label %for.inc

if.else83:                                        ; preds = %if.then73
  %call84 = tail call i32 @BN_mul_word(%struct.bignum_st* noundef %r.2255, i64 noundef %next_w.0253) #8
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %err, label %land.lhs.true86

land.lhs.true86:                                  ; preds = %if.else83
  %call87 = tail call i32 @BN_div(%struct.bignum_st* noundef null, %struct.bignum_st* noundef %t.2257, %struct.bignum_st* noundef %r.2255, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx) #8
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %err, label %for.inc

for.inc:                                          ; preds = %if.then69, %land.lhs.true86, %land.lhs.true78, %if.end66
  %r_is_one.5 = phi i32 [ %r_is_one.2251, %if.end66 ], [ %r_is_one.2251, %if.then69 ], [ 0, %land.lhs.true86 ], [ 0, %land.lhs.true78 ]
  %w.1 = phi i64 [ %next_w.0253, %if.end66 ], [ %mul.val244, %if.then69 ], [ %a.addr.0, %land.lhs.true86 ], [ %a.addr.0, %land.lhs.true78 ]
  %r.5 = phi %struct.bignum_st* [ %r.2255, %if.end66 ], [ %r.2255, %if.then69 ], [ %t.2257, %land.lhs.true86 ], [ %r.2255, %land.lhs.true78 ]
  %t.5 = phi %struct.bignum_st* [ %t.2257, %if.end66 ], [ %t.2257, %if.then69 ], [ %r.2255, %land.lhs.true86 ], [ %t.2257, %land.lhs.true78 ]
  %dec = add nsw i32 %b.0276, -1
  %cmp38 = icmp sgt i32 %b.0276, 0
  br i1 %cmp38, label %for.body, label %for.end, !llvm.loop !16

for.end:                                          ; preds = %for.inc
  %cmp95.not = icmp eq i64 %w.1, 1
  %tobool117.not = icmp eq i32 %r_is_one.5, 0
  br i1 %cmp95.not, label %if.end116, label %if.then96

for.end.thread:                                   ; preds = %if.end37
  %cmp95.not288 = icmp eq i64 %a.addr.0, 1
  br i1 %cmp95.not288, label %if.then118, label %if.then98

if.then96:                                        ; preds = %for.end
  br i1 %tobool117.not, label %if.else106, label %if.then98

if.then98:                                        ; preds = %for.end.thread, %if.then96
  %w.0.lcssa291301 = phi i64 [ %w.1, %if.then96 ], [ %a.addr.0, %for.end.thread ]
  %r.0.lcssa293300 = phi %struct.bignum_st* [ %r.5, %if.then96 ], [ %call21, %for.end.thread ]
  %call99 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %r.0.lcssa293300, i64 noundef %w.0.lcssa291301) #8
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %err, label %land.lhs.true101

land.lhs.true101:                                 ; preds = %if.then98
  %call102 = tail call i32 @BN_to_montgomery(%struct.bignum_st* noundef %r.0.lcssa293300, %struct.bignum_st* noundef %r.0.lcssa293300, %struct.bn_mont_ctx_st* noundef nonnull %mont.0, %struct.bignum_ctx* noundef %ctx) #8
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %err, label %if.else123

if.else106:                                       ; preds = %if.then96
  %call107 = tail call i32 @BN_mul_word(%struct.bignum_st* noundef %r.5, i64 noundef %w.1) #8
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %err, label %land.lhs.true109

land.lhs.true109:                                 ; preds = %if.else106
  %call110 = tail call i32 @BN_div(%struct.bignum_st* noundef null, %struct.bignum_st* noundef %t.5, %struct.bignum_st* noundef %r.5, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx) #8
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %err, label %if.else123

if.end116:                                        ; preds = %for.end
  br i1 %tobool117.not, label %if.else123, label %if.then118

if.then118:                                       ; preds = %for.end.thread, %if.end116
  %call119 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %rr, i64 noundef 1) #8
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %err, label %if.end128

if.else123:                                       ; preds = %land.lhs.true109, %land.lhs.true101, %if.end116
  %r.6264 = phi %struct.bignum_st* [ %r.5, %if.end116 ], [ %t.5, %land.lhs.true109 ], [ %r.0.lcssa293300, %land.lhs.true101 ]
  %call124 = tail call i32 @BN_from_montgomery(%struct.bignum_st* noundef %rr, %struct.bignum_st* noundef %r.6264, %struct.bn_mont_ctx_st* noundef nonnull %mont.0, %struct.bignum_ctx* noundef %ctx) #8
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %err, label %if.end128

if.end128:                                        ; preds = %if.else123, %if.then118
  br label %err

err:                                              ; preds = %if.else83, %land.lhs.true86, %if.then75, %land.lhs.true78, %if.then61, %if.else49, %land.lhs.true52, %if.then42, %land.lhs.true, %if.else123, %if.then118, %if.else106, %land.lhs.true109, %if.then98, %land.lhs.true101, %if.end20, %if.end128
  %mont.1 = phi %struct.bn_mont_ctx_st* [ null, %if.end20 ], [ %mont.0, %if.end128 ], [ %mont.0, %if.then118 ], [ %mont.0, %if.else123 ], [ %mont.0, %land.lhs.true101 ], [ %mont.0, %if.then98 ], [ %mont.0, %land.lhs.true109 ], [ %mont.0, %if.else106 ], [ %mont.0, %land.lhs.true ], [ %mont.0, %if.then42 ], [ %mont.0, %land.lhs.true52 ], [ %mont.0, %if.else49 ], [ %mont.0, %if.then61 ], [ %mont.0, %land.lhs.true78 ], [ %mont.0, %if.then75 ], [ %mont.0, %land.lhs.true86 ], [ %mont.0, %if.else83 ]
  %ret.1 = phi i32 [ 0, %if.end20 ], [ 1, %if.end128 ], [ 0, %if.then118 ], [ 0, %if.else123 ], [ 0, %land.lhs.true101 ], [ 0, %if.then98 ], [ 0, %land.lhs.true109 ], [ 0, %if.else106 ], [ 0, %land.lhs.true ], [ 0, %if.then42 ], [ 0, %land.lhs.true52 ], [ 0, %if.else49 ], [ 0, %if.then61 ], [ 0, %land.lhs.true78 ], [ 0, %if.then75 ], [ 0, %land.lhs.true86 ], [ 0, %if.else83 ]
  %cmp129 = icmp eq %struct.bn_mont_ctx_st* %in_mont, null
  br i1 %cmp129, label %if.then130, label %if.end131

if.then130:                                       ; preds = %if.else28, %if.end32, %err
  %ret.1270 = phi i32 [ %ret.1, %err ], [ 0, %if.end32 ], [ 0, %if.else28 ]
  %mont.1268 = phi %struct.bn_mont_ctx_st* [ %mont.1, %err ], [ %call29, %if.end32 ], [ null, %if.else28 ]
  tail call void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef %mont.1268) #8
  br label %if.end131

if.end131:                                        ; preds = %if.then130, %err
  %ret.1269 = phi i32 [ %ret.1270, %if.then130 ], [ %ret.1, %err ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.else, %if.end131, %if.then19, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.then19 ], [ %ret.1269, %if.end131 ], [ 0, %if.then4 ], [ 1, %if.then14 ], [ %call15, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_mod_exp_mont(%struct.bignum_st* noundef %rr, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx, %struct.bn_mont_ctx_st* noundef %in_mont) local_unnamed_addr #0 {
entry:
  %val = alloca [32 x %struct.bignum_st*], align 16
  %0 = bitcast [32 x %struct.bignum_st*]* %val to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #10
  %call = tail call i32 @BN_get_flags(%struct.bignum_st* noundef %p, i32 noundef 4) #8
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @BN_get_flags(%struct.bignum_st* noundef %a, i32 noundef 4) #8
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %lor.lhs.false3, label %if.then

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @BN_get_flags(%struct.bignum_st* noundef %m, i32 noundef 4) #8
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %call6 = tail call i32 @BN_mod_exp_mont_consttime(%struct.bignum_st* noundef %rr, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx, %struct.bn_mont_ctx_st* noundef %in_mont) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %call7 = tail call i32 @BN_is_odd(%struct.bignum_st* noundef %m) #8
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 316, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.BN_mod_exp_mont, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 102, i8* noundef null) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %p) #8
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end18

if.then12:                                        ; preds = %if.end9
  %call13 = tail call i32 @BN_abs_is_word(%struct.bignum_st* noundef %m, i64 noundef 1) #8
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.then12
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %rr) #8
  br label %cleanup

if.else:                                          ; preds = %if.then12
  %call16 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %rr, i64 noundef 1) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #8
  %call19 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #8
  %call20 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #8
  %call21 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #8
  %arrayidx = getelementptr inbounds [32 x %struct.bignum_st*], [32 x %struct.bignum_st*]* %val, i64 0, i64 0
  store %struct.bignum_st* %call21, %struct.bignum_st** %arrayidx, align 16, !tbaa !17
  %cmp23 = icmp eq %struct.bignum_st* %call21, null
  br i1 %cmp23, label %err, label %if.end25

if.end25:                                         ; preds = %if.end18
  %cmp26.not = icmp eq %struct.bn_mont_ctx_st* %in_mont, null
  br i1 %cmp26.not, label %if.else28, label %if.end37

if.else28:                                        ; preds = %if.end25
  %call29 = tail call %struct.bn_mont_ctx_st* @BN_MONT_CTX_new() #8
  %cmp30 = icmp eq %struct.bn_mont_ctx_st* %call29, null
  br i1 %cmp30, label %if.then194, label %if.end32

if.end32:                                         ; preds = %if.else28
  %call33 = tail call i32 @BN_MONT_CTX_set(%struct.bn_mont_ctx_st* noundef nonnull %call29, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx) #8
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then194, label %if.end37

if.end37:                                         ; preds = %if.end25, %if.end32
  %mont.0 = phi %struct.bn_mont_ctx_st* [ %call29, %if.end32 ], [ %in_mont, %if.end25 ]
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 3
  %1 = load i32, i32* %neg, align 8, !tbaa !12
  %tobool38.not = icmp eq i32 %1, 0
  br i1 %tobool38.not, label %lor.lhs.false39, label %if.then42

lor.lhs.false39:                                  ; preds = %if.end37
  %call40 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef nonnull %a, %struct.bignum_st* noundef %m) #8
  %cmp41 = icmp sgt i32 %call40, -1
  br i1 %cmp41, label %if.then42, label %if.end50

if.then42:                                        ; preds = %lor.lhs.false39, %if.end37
  %call44 = tail call i32 @BN_nnmod(%struct.bignum_st* noundef nonnull %call21, %struct.bignum_st* noundef nonnull %a, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx) #8
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %err, label %if.end50

if.end50:                                         ; preds = %if.then42, %lor.lhs.false39
  %aa.0 = phi %struct.bignum_st* [ %a, %lor.lhs.false39 ], [ %call21, %if.then42 ]
  %call52 = tail call i32 @bn_to_mont_fixed_top(%struct.bignum_st* noundef nonnull %call21, %struct.bignum_st* noundef nonnull %aa.0, %struct.bn_mont_ctx_st* noundef nonnull %mont.0, %struct.bignum_ctx* noundef %ctx) #8
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %err, label %if.end55

if.end55:                                         ; preds = %if.end50
  %cmp56 = icmp sgt i32 %call10, 671
  br i1 %cmp56, label %if.then70, label %cond.false

cond.false:                                       ; preds = %if.end55
  %cmp57 = icmp sgt i32 %call10, 239
  br i1 %cmp57, label %if.then70, label %cond.false59

cond.false59:                                     ; preds = %cond.false
  %cmp60 = icmp sgt i32 %call10, 79
  br i1 %cmp60, label %if.then70, label %cond.false62

cond.false62:                                     ; preds = %cond.false59
  %cmp63 = icmp sgt i32 %call10, 23
  br i1 %cmp63, label %if.then70, label %if.end91

if.then70:                                        ; preds = %cond.false62, %if.end55, %cond.false, %cond.false59
  %cond68.ph = phi i32 [ 4, %cond.false59 ], [ 5, %cond.false ], [ 6, %if.end55 ], [ 3, %cond.false62 ]
  %call73 = tail call i32 @bn_mul_mont_fixed_top(%struct.bignum_st* noundef %call19, %struct.bignum_st* noundef nonnull %call21, %struct.bignum_st* noundef nonnull %call21, %struct.bn_mont_ctx_st* noundef nonnull %mont.0, %struct.bignum_ctx* noundef %ctx) #8
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %err, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then70
  %sub = add nsw i32 %cond68.ph, -1
  %shl = shl nuw nsw i32 1, %sub
  %wide.trip.count = zext i32 %shl to i64
  br label %for.body

for.cond:                                         ; preds = %lor.lhs.false81
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end91, label %for.body, !llvm.loop !18

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %indvars.iv = phi i64 [ 1, %for.body.preheader ], [ %indvars.iv.next, %for.cond ]
  %call78 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #8
  %arrayidx79 = getelementptr inbounds [32 x %struct.bignum_st*], [32 x %struct.bignum_st*]* %val, i64 0, i64 %indvars.iv
  store %struct.bignum_st* %call78, %struct.bignum_st** %arrayidx79, align 8, !tbaa !17
  %cmp80 = icmp eq %struct.bignum_st* %call78, null
  br i1 %cmp80, label %err, label %lor.lhs.false81

lor.lhs.false81:                                  ; preds = %for.body
  %2 = add nsw i64 %indvars.iv, -1
  %arrayidx86 = getelementptr inbounds [32 x %struct.bignum_st*], [32 x %struct.bignum_st*]* %val, i64 0, i64 %2
  %3 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx86, align 8, !tbaa !17
  %call87 = tail call i32 @bn_mul_mont_fixed_top(%struct.bignum_st* noundef nonnull %call78, %struct.bignum_st* noundef %3, %struct.bignum_st* noundef %call19, %struct.bn_mont_ctx_st* noundef nonnull %mont.0, %struct.bignum_ctx* noundef %ctx) #8
  %tobool88.not = icmp eq i32 %call87, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %tobool88.not, label %err, label %for.cond

if.end91:                                         ; preds = %for.cond, %cond.false62
  %cond68329 = phi i32 [ 1, %cond.false62 ], [ %cond68.ph, %for.cond ]
  %sub92 = add nsw i32 %call10, -1
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %m, i64 0, i32 1
  %4 = load i32, i32* %top, align 8, !tbaa !6
  %d93 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %m, i64 0, i32 0
  %5 = load i64*, i64** %d93, align 8, !tbaa !13
  %sub94 = add nsw i32 %4, -1
  %idxprom95 = sext i32 %sub94 to i64
  %arrayidx96 = getelementptr inbounds i64, i64* %5, i64 %idxprom95
  %6 = load i64, i64* %arrayidx96, align 8, !tbaa !14
  %tobool97.not = icmp sgt i64 %6, -1
  br i1 %tobool97.not, label %if.else124, label %if.then98

if.then98:                                        ; preds = %if.end91
  %call99 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %call20, i32 noundef %4) #8
  %cmp100 = icmp eq %struct.bignum_st* %call99, null
  br i1 %cmp100, label %err, label %if.end102

if.end102:                                        ; preds = %if.then98
  %7 = load i64*, i64** %d93, align 8, !tbaa !13
  %8 = load i64, i64* %7, align 8, !tbaa !14
  %sub105 = sub i64 0, %8
  %d107 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call20, i64 0, i32 0
  %9 = load i64*, i64** %d107, align 8, !tbaa !13
  store i64 %sub105, i64* %9, align 8, !tbaa !14
  %cmp110345 = icmp sgt i32 %4, 1
  br i1 %cmp110345, label %for.body111.preheader, label %for.end122

for.body111.preheader:                            ; preds = %if.end102
  %wide.trip.count369 = zext i32 %4 to i64
  %10 = add nsw i64 %wide.trip.count369, -1
  %min.iters.check = icmp ult i64 %10, 4
  br i1 %min.iters.check, label %for.body111.preheader392, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body111.preheader
  %scevgep = getelementptr i64, i64* %9, i64 1
  %scevgep382 = getelementptr i64, i64* %9, i64 %wide.trip.count369
  %scevgep384 = getelementptr i64, i64* %7, i64 1
  %scevgep386 = getelementptr i64, i64* %7, i64 %wide.trip.count369
  %bound0 = icmp ult i64* %scevgep, %scevgep386
  %bound1 = icmp ult i64* %scevgep384, %scevgep382
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body111.preheader392, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %10, -4
  %ind.end = or i64 %n.vec, 1
  %11 = add nsw i64 %n.vec, -4
  %12 = lshr exact i64 %11, 2
  %13 = add nuw nsw i64 %12, 1
  %xtraiter = and i64 %13, 1
  %14 = icmp eq i64 %11, 0
  br i1 %14, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %13, 9223372036854775806
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %offset.idx = or i64 %index, 1
  %15 = getelementptr inbounds i64, i64* %7, i64 %offset.idx
  %16 = bitcast i64* %15 to <2 x i64>*
  %wide.load = load <2 x i64>, <2 x i64>* %16, align 8, !tbaa !14, !alias.scope !19
  %17 = getelementptr inbounds i64, i64* %15, i64 2
  %18 = bitcast i64* %17 to <2 x i64>*
  %wide.load388 = load <2 x i64>, <2 x i64>* %18, align 8, !tbaa !14, !alias.scope !19
  %19 = xor <2 x i64> %wide.load, <i64 -1, i64 -1>
  %20 = xor <2 x i64> %wide.load388, <i64 -1, i64 -1>
  %21 = getelementptr inbounds i64, i64* %9, i64 %offset.idx
  %22 = bitcast i64* %21 to <2 x i64>*
  store <2 x i64> %19, <2 x i64>* %22, align 8, !tbaa !14, !alias.scope !22, !noalias !19
  %23 = getelementptr inbounds i64, i64* %21, i64 2
  %24 = bitcast i64* %23 to <2 x i64>*
  store <2 x i64> %20, <2 x i64>* %24, align 8, !tbaa !14, !alias.scope !22, !noalias !19
  %offset.idx.1 = or i64 %index, 5
  %25 = getelementptr inbounds i64, i64* %7, i64 %offset.idx.1
  %26 = bitcast i64* %25 to <2 x i64>*
  %wide.load.1 = load <2 x i64>, <2 x i64>* %26, align 8, !tbaa !14, !alias.scope !19
  %27 = getelementptr inbounds i64, i64* %25, i64 2
  %28 = bitcast i64* %27 to <2 x i64>*
  %wide.load388.1 = load <2 x i64>, <2 x i64>* %28, align 8, !tbaa !14, !alias.scope !19
  %29 = xor <2 x i64> %wide.load.1, <i64 -1, i64 -1>
  %30 = xor <2 x i64> %wide.load388.1, <i64 -1, i64 -1>
  %31 = getelementptr inbounds i64, i64* %9, i64 %offset.idx.1
  %32 = bitcast i64* %31 to <2 x i64>*
  store <2 x i64> %29, <2 x i64>* %32, align 8, !tbaa !14, !alias.scope !22, !noalias !19
  %33 = getelementptr inbounds i64, i64* %31, i64 2
  %34 = bitcast i64* %33 to <2 x i64>*
  store <2 x i64> %30, <2 x i64>* %34, align 8, !tbaa !14, !alias.scope !22, !noalias !19
  %index.next.1 = add nuw i64 %index, 8
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa.loopexit, label %vector.body, !llvm.loop !24

middle.block.unr-lcssa.loopexit:                  ; preds = %vector.body
  %phi.bo = or i64 %index.next.1, 1
  br label %middle.block.unr-lcssa

middle.block.unr-lcssa:                           ; preds = %middle.block.unr-lcssa.loopexit, %vector.ph
  %index.unr = phi i64 [ 1, %vector.ph ], [ %phi.bo, %middle.block.unr-lcssa.loopexit ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %35 = getelementptr inbounds i64, i64* %7, i64 %index.unr
  %36 = bitcast i64* %35 to <2 x i64>*
  %wide.load.epil = load <2 x i64>, <2 x i64>* %36, align 8, !tbaa !14, !alias.scope !19
  %37 = getelementptr inbounds i64, i64* %35, i64 2
  %38 = bitcast i64* %37 to <2 x i64>*
  %wide.load388.epil = load <2 x i64>, <2 x i64>* %38, align 8, !tbaa !14, !alias.scope !19
  %39 = xor <2 x i64> %wide.load.epil, <i64 -1, i64 -1>
  %40 = xor <2 x i64> %wide.load388.epil, <i64 -1, i64 -1>
  %41 = getelementptr inbounds i64, i64* %9, i64 %index.unr
  %42 = bitcast i64* %41 to <2 x i64>*
  store <2 x i64> %39, <2 x i64>* %42, align 8, !tbaa !14, !alias.scope !22, !noalias !19
  %43 = getelementptr inbounds i64, i64* %41, i64 2
  %44 = bitcast i64* %43 to <2 x i64>*
  store <2 x i64> %40, <2 x i64>* %44, align 8, !tbaa !14, !alias.scope !22, !noalias !19
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %10, %n.vec
  br i1 %cmp.n, label %for.end122, label %for.body111.preheader392

for.body111.preheader392:                         ; preds = %vector.memcheck, %for.body111.preheader, %middle.block
  %indvars.iv366.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %for.body111.preheader ], [ %ind.end, %middle.block ]
  %45 = sub nsw i64 %wide.trip.count369, %indvars.iv366.ph
  %46 = xor i64 %indvars.iv366.ph, -1
  %47 = add nsw i64 %46, %wide.trip.count369
  %xtraiter394 = and i64 %45, 3
  %lcmp.mod395.not = icmp eq i64 %xtraiter394, 0
  br i1 %lcmp.mod395.not, label %for.body111.prol.loopexit, label %for.body111.prol

for.body111.prol:                                 ; preds = %for.body111.preheader392, %for.body111.prol
  %indvars.iv366.prol = phi i64 [ %indvars.iv.next367.prol, %for.body111.prol ], [ %indvars.iv366.ph, %for.body111.preheader392 ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body111.prol ], [ 0, %for.body111.preheader392 ]
  %arrayidx114.prol = getelementptr inbounds i64, i64* %7, i64 %indvars.iv366.prol
  %48 = load i64, i64* %arrayidx114.prol, align 8, !tbaa !14
  %neg115.prol = xor i64 %48, -1
  %arrayidx119.prol = getelementptr inbounds i64, i64* %9, i64 %indvars.iv366.prol
  store i64 %neg115.prol, i64* %arrayidx119.prol, align 8, !tbaa !14
  %indvars.iv.next367.prol = add nuw nsw i64 %indvars.iv366.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter394
  br i1 %prol.iter.cmp.not, label %for.body111.prol.loopexit, label %for.body111.prol, !llvm.loop !26

for.body111.prol.loopexit:                        ; preds = %for.body111.prol, %for.body111.preheader392
  %indvars.iv366.unr = phi i64 [ %indvars.iv366.ph, %for.body111.preheader392 ], [ %indvars.iv.next367.prol, %for.body111.prol ]
  %49 = icmp ult i64 %47, 3
  br i1 %49, label %for.end122, label %for.body111

for.body111:                                      ; preds = %for.body111.prol.loopexit, %for.body111
  %indvars.iv366 = phi i64 [ %indvars.iv.next367.3, %for.body111 ], [ %indvars.iv366.unr, %for.body111.prol.loopexit ]
  %arrayidx114 = getelementptr inbounds i64, i64* %7, i64 %indvars.iv366
  %50 = load i64, i64* %arrayidx114, align 8, !tbaa !14
  %neg115 = xor i64 %50, -1
  %arrayidx119 = getelementptr inbounds i64, i64* %9, i64 %indvars.iv366
  store i64 %neg115, i64* %arrayidx119, align 8, !tbaa !14
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1
  %arrayidx114.1 = getelementptr inbounds i64, i64* %7, i64 %indvars.iv.next367
  %51 = load i64, i64* %arrayidx114.1, align 8, !tbaa !14
  %neg115.1 = xor i64 %51, -1
  %arrayidx119.1 = getelementptr inbounds i64, i64* %9, i64 %indvars.iv.next367
  store i64 %neg115.1, i64* %arrayidx119.1, align 8, !tbaa !14
  %indvars.iv.next367.1 = add nuw nsw i64 %indvars.iv366, 2
  %arrayidx114.2 = getelementptr inbounds i64, i64* %7, i64 %indvars.iv.next367.1
  %52 = load i64, i64* %arrayidx114.2, align 8, !tbaa !14
  %neg115.2 = xor i64 %52, -1
  %arrayidx119.2 = getelementptr inbounds i64, i64* %9, i64 %indvars.iv.next367.1
  store i64 %neg115.2, i64* %arrayidx119.2, align 8, !tbaa !14
  %indvars.iv.next367.2 = add nuw nsw i64 %indvars.iv366, 3
  %arrayidx114.3 = getelementptr inbounds i64, i64* %7, i64 %indvars.iv.next367.2
  %53 = load i64, i64* %arrayidx114.3, align 8, !tbaa !14
  %neg115.3 = xor i64 %53, -1
  %arrayidx119.3 = getelementptr inbounds i64, i64* %9, i64 %indvars.iv.next367.2
  store i64 %neg115.3, i64* %arrayidx119.3, align 8, !tbaa !14
  %indvars.iv.next367.3 = add nuw nsw i64 %indvars.iv366, 4
  %exitcond370.not.3 = icmp eq i64 %indvars.iv.next367.3, %wide.trip.count369
  br i1 %exitcond370.not.3, label %for.end122, label %for.body111, !llvm.loop !28

for.end122:                                       ; preds = %for.body111.prol.loopexit, %for.body111, %middle.block, %if.end102
  %top123 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call20, i64 0, i32 1
  store i32 %4, i32* %top123, align 8, !tbaa !6
  br label %if.end130

if.else124:                                       ; preds = %if.end91
  %call125 = tail call %struct.bignum_st* @BN_value_one() #8
  %call126 = tail call i32 @bn_to_mont_fixed_top(%struct.bignum_st* noundef %call20, %struct.bignum_st* noundef %call125, %struct.bn_mont_ctx_st* noundef nonnull %mont.0, %struct.bignum_ctx* noundef %ctx) #8
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %err, label %if.end130

if.end130:                                        ; preds = %if.else124, %for.end122
  %cmp147350 = icmp ugt i32 %cond68329, 1
  br label %for.cond131.outer

for.cond131.outer:                                ; preds = %if.end182, %if.end130
  %wstart.0.ph = phi i32 [ %sub184, %if.end182 ], [ %sub92, %if.end130 ]
  %tobool164.not = phi i1 [ false, %if.end182 ], [ true, %if.end130 ]
  %tobool135.not = phi i1 [ true, %if.end182 ], [ false, %if.end130 ]
  %call132347 = tail call i32 @BN_is_bit_set(%struct.bignum_st* noundef %p, i32 noundef %wstart.0.ph) #8
  %cmp133348 = icmp eq i32 %call132347, 0
  br i1 %cmp133348, label %if.then134, label %for.cond146.preheader

for.cond146.preheader:                            ; preds = %if.end144, %for.cond131.outer
  %wstart.0.lcssa = phi i32 [ %wstart.0.ph, %for.cond131.outer ], [ %dec, %if.end144 ]
  br i1 %cmp147350, label %for.body148, label %for.end163

if.then134:                                       ; preds = %for.cond131.outer, %if.end144
  %wstart.0349 = phi i32 [ %dec, %if.end144 ], [ %wstart.0.ph, %for.cond131.outer ]
  br i1 %tobool135.not, label %if.then136, label %if.end141

if.then136:                                       ; preds = %if.then134
  %call137 = tail call i32 @bn_mul_mont_fixed_top(%struct.bignum_st* noundef %call20, %struct.bignum_st* noundef %call20, %struct.bignum_st* noundef %call20, %struct.bn_mont_ctx_st* noundef nonnull %mont.0, %struct.bignum_ctx* noundef %ctx) #8
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %err, label %if.end141

if.end141:                                        ; preds = %if.then136, %if.then134
  %cmp142 = icmp eq i32 %wstart.0349, 0
  br i1 %cmp142, label %for.end188, label %if.end144

if.end144:                                        ; preds = %if.end141
  %dec = add nsw i32 %wstart.0349, -1
  %call132 = tail call i32 @BN_is_bit_set(%struct.bignum_st* noundef %p, i32 noundef %dec) #8
  %cmp133 = icmp eq i32 %call132, 0
  br i1 %cmp133, label %if.then134, label %for.cond146.preheader

for.body148:                                      ; preds = %for.cond146.preheader, %if.end152
  %i.2353 = phi i32 [ %inc162, %if.end152 ], [ 1, %for.cond146.preheader ]
  %wvalue.0352 = phi i32 [ %wvalue.1, %if.end152 ], [ 1, %for.cond146.preheader ]
  %wend.0351 = phi i32 [ %wend.1, %if.end152 ], [ 0, %for.cond146.preheader ]
  %sub149 = sub nsw i32 %wstart.0.lcssa, %i.2353
  %cmp150 = icmp slt i32 %sub149, 0
  br i1 %cmp150, label %for.end163, label %if.end152

if.end152:                                        ; preds = %for.body148
  %call154 = tail call i32 @BN_is_bit_set(%struct.bignum_st* noundef %p, i32 noundef %sub149) #8
  %tobool155.not = icmp eq i32 %call154, 0
  %sub157 = sub nsw i32 %i.2353, %wend.0351
  %shl158 = shl i32 %wvalue.0352, %sub157
  %or159 = or i32 %shl158, 1
  %wend.1 = select i1 %tobool155.not, i32 %wend.0351, i32 %i.2353
  %wvalue.1 = select i1 %tobool155.not, i32 %wvalue.0352, i32 %or159
  %inc162 = add nuw nsw i32 %i.2353, 1
  %exitcond371.not = icmp eq i32 %inc162, %cond68329
  br i1 %exitcond371.not, label %for.end163, label %for.body148, !llvm.loop !29

for.end163:                                       ; preds = %if.end152, %for.body148, %for.cond146.preheader
  %wend.0.lcssa = phi i32 [ 0, %for.cond146.preheader ], [ %wend.0351, %for.body148 ], [ %wend.1, %if.end152 ]
  %wvalue.0.lcssa = phi i32 [ 1, %for.cond146.preheader ], [ %wvalue.0352, %for.body148 ], [ %wvalue.1, %if.end152 ]
  %add.neg = xor i32 %wend.0.lcssa, -1
  %cmp167.not358 = icmp slt i32 %wend.0.lcssa, 0
  %or.cond = select i1 %tobool164.not, i1 true, i1 %cmp167.not358
  br i1 %or.cond, label %if.end176, label %for.body168

for.cond166:                                      ; preds = %for.body168
  %inc174 = add nuw i32 %i.3359, 1
  %exitcond372.not = icmp eq i32 %i.3359, %wend.0.lcssa
  br i1 %exitcond372.not, label %if.end176, label %for.body168, !llvm.loop !30

for.body168:                                      ; preds = %for.end163, %for.cond166
  %i.3359 = phi i32 [ %inc174, %for.cond166 ], [ 0, %for.end163 ]
  %call169 = tail call i32 @bn_mul_mont_fixed_top(%struct.bignum_st* noundef %call20, %struct.bignum_st* noundef %call20, %struct.bignum_st* noundef %call20, %struct.bn_mont_ctx_st* noundef nonnull %mont.0, %struct.bignum_ctx* noundef %ctx) #8
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %err, label %for.cond166

if.end176:                                        ; preds = %for.cond166, %for.end163
  %shr = ashr i32 %wvalue.0.lcssa, 1
  %idxprom177 = sext i32 %shr to i64
  %arrayidx178 = getelementptr inbounds [32 x %struct.bignum_st*], [32 x %struct.bignum_st*]* %val, i64 0, i64 %idxprom177
  %54 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx178, align 8, !tbaa !17
  %call179 = tail call i32 @bn_mul_mont_fixed_top(%struct.bignum_st* noundef %call20, %struct.bignum_st* noundef %call20, %struct.bignum_st* noundef %54, %struct.bn_mont_ctx_st* noundef nonnull %mont.0, %struct.bignum_ctx* noundef %ctx) #8
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %err, label %if.end182

if.end182:                                        ; preds = %if.end176
  %sub184 = add i32 %wstart.0.lcssa, %add.neg
  %cmp185 = icmp slt i32 %sub184, 0
  br i1 %cmp185, label %for.end188, label %for.cond131.outer

for.end188:                                       ; preds = %if.end182, %if.end141
  %call189 = tail call i32 @BN_from_montgomery(%struct.bignum_st* noundef %rr, %struct.bignum_st* noundef %call20, %struct.bn_mont_ctx_st* noundef nonnull %mont.0, %struct.bignum_ctx* noundef %ctx) #8
  %tobool190.not = icmp ne i32 %call189, 0
  %spec.select = zext i1 %tobool190.not to i32
  br label %err

err:                                              ; preds = %for.body, %lor.lhs.false81, %if.end176, %if.then136, %for.body168, %for.end188, %if.else124, %if.then98, %if.then70, %if.end50, %if.then42, %if.end18
  %ret.1 = phi i32 [ 0, %if.end18 ], [ 0, %if.then98 ], [ 0, %if.else124 ], [ 0, %if.then70 ], [ 0, %if.end50 ], [ 0, %if.then42 ], [ %spec.select, %for.end188 ], [ 0, %for.body168 ], [ 0, %if.then136 ], [ 0, %if.end176 ], [ 0, %lor.lhs.false81 ], [ 0, %for.body ]
  %mont.1 = phi %struct.bn_mont_ctx_st* [ null, %if.end18 ], [ %mont.0, %if.then98 ], [ %mont.0, %if.else124 ], [ %mont.0, %if.then70 ], [ %mont.0, %if.end50 ], [ %mont.0, %if.then42 ], [ %mont.0, %for.end188 ], [ %mont.0, %for.body168 ], [ %mont.0, %if.then136 ], [ %mont.0, %if.end176 ], [ %mont.0, %lor.lhs.false81 ], [ %mont.0, %for.body ]
  %cmp193 = icmp eq %struct.bn_mont_ctx_st* %in_mont, null
  br i1 %cmp193, label %if.then194, label %if.end195

if.then194:                                       ; preds = %if.else28, %if.end32, %err
  %mont.1336 = phi %struct.bn_mont_ctx_st* [ %mont.1, %err ], [ %call29, %if.end32 ], [ null, %if.else28 ]
  %ret.1335 = phi i32 [ %ret.1, %err ], [ 0, %if.end32 ], [ 0, %if.else28 ]
  tail call void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef %mont.1336) #8
  br label %if.end195

if.end195:                                        ; preds = %if.then194, %err
  %ret.1334 = phi i32 [ %ret.1335, %if.then194 ], [ %ret.1, %err ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.else, %if.end195, %if.then8, %if.then
  %retval.0 = phi i32 [ %call6, %if.then ], [ %ret.1334, %if.end195 ], [ 0, %if.then8 ], [ 1, %if.then15 ], [ %call16, %if.else ]
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_mod_exp_recp(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %val = alloca [32 x %struct.bignum_st*], align 16
  %recp = alloca %struct.bn_recp_ctx_st, align 8
  %0 = bitcast [32 x %struct.bignum_st*]* %val to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #10
  %1 = bitcast %struct.bn_recp_ctx_st* %recp to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #10
  %call = tail call i32 @BN_get_flags(%struct.bignum_st* noundef %p, i32 noundef 4) #8
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @BN_get_flags(%struct.bignum_st* noundef %a, i32 noundef 4) #8
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %lor.lhs.false3, label %if.then

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @BN_get_flags(%struct.bignum_st* noundef %m, i32 noundef 4) #8
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 174, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.BN_mod_exp_recp, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 786689, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %call6 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %p) #8
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.end
  %call9 = tail call i32 @BN_abs_is_word(%struct.bignum_st* noundef %m, i64 noundef 1) #8
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then8
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %r) #8
  br label %cleanup

if.else:                                          ; preds = %if.then8
  %call11 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %r, i64 noundef 1) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #8
  %call14 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #8
  %call15 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #8
  %arrayidx = getelementptr inbounds [32 x %struct.bignum_st*], [32 x %struct.bignum_st*]* %val, i64 0, i64 0
  store %struct.bignum_st* %call15, %struct.bignum_st** %arrayidx, align 16, !tbaa !17
  %cmp17 = icmp eq %struct.bignum_st* %call15, null
  br i1 %cmp17, label %err, label %if.end19

if.end19:                                         ; preds = %if.end13
  call void @BN_RECP_CTX_init(%struct.bn_recp_ctx_st* noundef nonnull %recp) #8
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %m, i64 0, i32 3
  %2 = load i32, i32* %neg, align 8, !tbaa !12
  %tobool20.not = icmp eq i32 %2, 0
  br i1 %tobool20.not, label %if.else31, label %if.then21

if.then21:                                        ; preds = %if.end19
  %call22 = call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call14, %struct.bignum_st* noundef nonnull %m) #8
  %tobool23.not = icmp eq %struct.bignum_st* %call22, null
  br i1 %tobool23.not, label %err, label %if.end25

if.end25:                                         ; preds = %if.then21
  %neg26 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call14, i64 0, i32 3
  store i32 0, i32* %neg26, align 8, !tbaa !12
  %call27 = call i32 @BN_RECP_CTX_set(%struct.bn_recp_ctx_st* noundef nonnull %recp, %struct.bignum_st* noundef %call14, %struct.bignum_ctx* noundef %ctx) #8
  %cmp28 = icmp slt i32 %call27, 1
  br i1 %cmp28, label %err, label %if.end36

if.else31:                                        ; preds = %if.end19
  %call32 = call i32 @BN_RECP_CTX_set(%struct.bn_recp_ctx_st* noundef nonnull %recp, %struct.bignum_st* noundef nonnull %m, %struct.bignum_ctx* noundef %ctx) #8
  %cmp33 = icmp slt i32 %call32, 1
  br i1 %cmp33, label %err, label %if.end36

if.end36:                                         ; preds = %if.else31, %if.end25
  %call38 = call i32 @BN_nnmod(%struct.bignum_st* noundef nonnull %call15, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef nonnull %m, %struct.bignum_ctx* noundef %ctx) #8
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %err, label %if.end41

if.end41:                                         ; preds = %if.end36
  %call43 = call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %call15) #8
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.then45

if.then45:                                        ; preds = %if.end41
  call void @BN_zero_ex(%struct.bignum_st* noundef %r) #8
  br label %err

if.end46:                                         ; preds = %if.end41
  %cmp47 = icmp sgt i32 %call6, 671
  br i1 %cmp47, label %if.then61, label %cond.false

cond.false:                                       ; preds = %if.end46
  %cmp48 = icmp sgt i32 %call6, 239
  br i1 %cmp48, label %if.then61, label %cond.false50

cond.false50:                                     ; preds = %cond.false
  %cmp51 = icmp sgt i32 %call6, 79
  br i1 %cmp51, label %if.then61, label %cond.false53

cond.false53:                                     ; preds = %cond.false50
  %cmp54 = icmp sgt i32 %call6, 23
  br i1 %cmp54, label %if.then61, label %if.end82

if.then61:                                        ; preds = %cond.false53, %if.end46, %cond.false, %cond.false50
  %cond59.ph = phi i32 [ 4, %cond.false50 ], [ 5, %cond.false ], [ 6, %if.end46 ], [ 3, %cond.false53 ]
  %call64 = call i32 @BN_mod_mul_reciprocal(%struct.bignum_st* noundef %call14, %struct.bignum_st* noundef nonnull %call15, %struct.bignum_st* noundef nonnull %call15, %struct.bn_recp_ctx_st* noundef nonnull %recp, %struct.bignum_ctx* noundef %ctx) #8
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %err, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then61
  %sub = add nsw i32 %cond59.ph, -1
  %shl = shl nuw nsw i32 1, %sub
  %wide.trip.count = zext i32 %shl to i64
  br label %for.body

for.cond:                                         ; preds = %lor.lhs.false72
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end82, label %for.body, !llvm.loop !31

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %indvars.iv = phi i64 [ 1, %for.body.preheader ], [ %indvars.iv.next, %for.cond ]
  %call69 = call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #8
  %arrayidx70 = getelementptr inbounds [32 x %struct.bignum_st*], [32 x %struct.bignum_st*]* %val, i64 0, i64 %indvars.iv
  store %struct.bignum_st* %call69, %struct.bignum_st** %arrayidx70, align 8, !tbaa !17
  %cmp71 = icmp eq %struct.bignum_st* %call69, null
  br i1 %cmp71, label %err, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %for.body
  %3 = add nsw i64 %indvars.iv, -1
  %arrayidx77 = getelementptr inbounds [32 x %struct.bignum_st*], [32 x %struct.bignum_st*]* %val, i64 0, i64 %3
  %4 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx77, align 8, !tbaa !17
  %call78 = call i32 @BN_mod_mul_reciprocal(%struct.bignum_st* noundef nonnull %call69, %struct.bignum_st* noundef %4, %struct.bignum_st* noundef %call14, %struct.bn_recp_ctx_st* noundef nonnull %recp, %struct.bignum_ctx* noundef %ctx) #8
  %tobool79.not = icmp eq i32 %call78, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %tobool79.not, label %err, label %for.cond

if.end82:                                         ; preds = %for.cond, %cond.false53
  %cond59236 = phi i32 [ 1, %cond.false53 ], [ %cond59.ph, %for.cond ]
  %call84 = call i32 @BN_set_word(%struct.bignum_st* noundef %r, i64 noundef 1) #8
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %err, label %for.cond88.preheader

for.cond88.preheader:                             ; preds = %if.end82
  %sub83 = add nsw i32 %call6, -1
  %cmp104248 = icmp ugt i32 %cond59236, 1
  br label %for.cond88.outer

for.cond88.outer:                                 ; preds = %for.cond88.preheader, %if.end138
  %wstart.0.ph = phi i32 [ %sub83, %for.cond88.preheader ], [ %sub140, %if.end138 ]
  %tobool120.not = phi i1 [ true, %for.cond88.preheader ], [ false, %if.end138 ]
  %tobool92.not = phi i1 [ false, %for.cond88.preheader ], [ true, %if.end138 ]
  %call89245 = call i32 @BN_is_bit_set(%struct.bignum_st* noundef %p, i32 noundef %wstart.0.ph) #8
  %cmp90246 = icmp eq i32 %call89245, 0
  br i1 %cmp90246, label %if.then91, label %for.cond103.preheader

for.cond103.preheader:                            ; preds = %if.end101, %for.cond88.outer
  %wstart.0.lcssa = phi i32 [ %wstart.0.ph, %for.cond88.outer ], [ %dec, %if.end101 ]
  br i1 %cmp104248, label %for.body105, label %for.end119

if.then91:                                        ; preds = %for.cond88.outer, %if.end101
  %wstart.0247 = phi i32 [ %dec, %if.end101 ], [ %wstart.0.ph, %for.cond88.outer ]
  br i1 %tobool92.not, label %if.then93, label %if.end98

if.then93:                                        ; preds = %if.then91
  %call94 = call i32 @BN_mod_mul_reciprocal(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %r, %struct.bn_recp_ctx_st* noundef nonnull %recp, %struct.bignum_ctx* noundef %ctx) #8
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %err, label %if.end98

if.end98:                                         ; preds = %if.then93, %if.then91
  %cmp99 = icmp eq i32 %wstart.0247, 0
  br i1 %cmp99, label %err, label %if.end101

if.end101:                                        ; preds = %if.end98
  %dec = add nsw i32 %wstart.0247, -1
  %call89 = call i32 @BN_is_bit_set(%struct.bignum_st* noundef %p, i32 noundef %dec) #8
  %cmp90 = icmp eq i32 %call89, 0
  br i1 %cmp90, label %if.then91, label %for.cond103.preheader

for.body105:                                      ; preds = %for.cond103.preheader, %if.end109
  %wvalue.0251 = phi i32 [ %wvalue.1, %if.end109 ], [ 1, %for.cond103.preheader ]
  %i.1250 = phi i32 [ %inc118, %if.end109 ], [ 1, %for.cond103.preheader ]
  %wend.0249 = phi i32 [ %wend.1, %if.end109 ], [ 0, %for.cond103.preheader ]
  %sub106 = sub nsw i32 %wstart.0.lcssa, %i.1250
  %cmp107 = icmp slt i32 %sub106, 0
  br i1 %cmp107, label %for.end119, label %if.end109

if.end109:                                        ; preds = %for.body105
  %call111 = call i32 @BN_is_bit_set(%struct.bignum_st* noundef %p, i32 noundef %sub106) #8
  %tobool112.not = icmp eq i32 %call111, 0
  %sub114 = sub nsw i32 %i.1250, %wend.0249
  %shl115 = shl i32 %wvalue.0251, %sub114
  %or = or i32 %shl115, 1
  %wend.1 = select i1 %tobool112.not, i32 %wend.0249, i32 %i.1250
  %wvalue.1 = select i1 %tobool112.not, i32 %wvalue.0251, i32 %or
  %inc118 = add nuw nsw i32 %i.1250, 1
  %exitcond264.not = icmp eq i32 %inc118, %cond59236
  br i1 %exitcond264.not, label %for.end119, label %for.body105, !llvm.loop !32

for.end119:                                       ; preds = %if.end109, %for.body105, %for.cond103.preheader
  %wend.0.lcssa = phi i32 [ 0, %for.cond103.preheader ], [ %wend.0249, %for.body105 ], [ %wend.1, %if.end109 ]
  %wvalue.0.lcssa = phi i32 [ 1, %for.cond103.preheader ], [ %wvalue.0251, %for.body105 ], [ %wvalue.1, %if.end109 ]
  %add.neg = xor i32 %wend.0.lcssa, -1
  %cmp123.not256 = icmp slt i32 %wend.0.lcssa, 0
  %or.cond = select i1 %tobool120.not, i1 true, i1 %cmp123.not256
  br i1 %or.cond, label %if.end132, label %for.body124

for.cond122:                                      ; preds = %for.body124
  %inc130 = add nuw i32 %i.2257, 1
  %exitcond265.not = icmp eq i32 %i.2257, %wend.0.lcssa
  br i1 %exitcond265.not, label %if.end132, label %for.body124, !llvm.loop !33

for.body124:                                      ; preds = %for.end119, %for.cond122
  %i.2257 = phi i32 [ %inc130, %for.cond122 ], [ 0, %for.end119 ]
  %call125 = call i32 @BN_mod_mul_reciprocal(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %r, %struct.bn_recp_ctx_st* noundef nonnull %recp, %struct.bignum_ctx* noundef %ctx) #8
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %err, label %for.cond122

if.end132:                                        ; preds = %for.cond122, %for.end119
  %shr = ashr i32 %wvalue.0.lcssa, 1
  %idxprom133 = sext i32 %shr to i64
  %arrayidx134 = getelementptr inbounds [32 x %struct.bignum_st*], [32 x %struct.bignum_st*]* %val, i64 0, i64 %idxprom133
  %5 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx134, align 8, !tbaa !17
  %call135 = call i32 @BN_mod_mul_reciprocal(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %5, %struct.bn_recp_ctx_st* noundef nonnull %recp, %struct.bignum_ctx* noundef %ctx) #8
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %err, label %if.end138

if.end138:                                        ; preds = %if.end132
  %sub140 = add i32 %wstart.0.lcssa, %add.neg
  %cmp141 = icmp slt i32 %sub140, 0
  br i1 %cmp141, label %err, label %for.cond88.outer

err:                                              ; preds = %for.body, %lor.lhs.false72, %if.end138, %if.end132, %if.end98, %if.then93, %for.body124, %if.end82, %if.then61, %if.end36, %if.else31, %if.end25, %if.then21, %if.end13, %if.then45
  %ret.1 = phi i32 [ 0, %if.end13 ], [ 0, %if.end25 ], [ 1, %if.then45 ], [ 0, %if.end82 ], [ 0, %if.then61 ], [ 0, %if.end36 ], [ 0, %if.then21 ], [ 0, %if.else31 ], [ 0, %for.body124 ], [ 0, %if.then93 ], [ 1, %if.end98 ], [ 0, %if.end132 ], [ 1, %if.end138 ], [ 0, %lor.lhs.false72 ], [ 0, %for.body ]
  call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #8
  call void @BN_RECP_CTX_free(%struct.bn_recp_ctx_st* noundef nonnull %recp) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.else, %err, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.1, %err ], [ 1, %if.then10 ], [ %call11, %if.else ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #10
  ret i32 %retval.0
}

declare i32 @BN_abs_is_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #2

declare void @BN_zero_ex(%struct.bignum_st* noundef) local_unnamed_addr #2

declare void @BN_RECP_CTX_init(%struct.bn_recp_ctx_st* noundef) local_unnamed_addr #2

declare i32 @BN_RECP_CTX_set(%struct.bn_recp_ctx_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_nnmod(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_mod_mul_reciprocal(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bn_recp_ctx_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare void @BN_RECP_CTX_free(%struct.bn_recp_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @BN_mod_exp_mont_consttime(%struct.bignum_st* noundef %rr, %struct.bignum_st* noundef %a, %struct.bignum_st* nocapture noundef readonly %p, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx, %struct.bn_mont_ctx_st* noundef %in_mont) local_unnamed_addr #0 {
entry:
  %tmp = alloca %struct.bignum_st, align 8
  %am = alloca %struct.bignum_st, align 8
  %0 = bitcast %struct.bignum_st* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #10
  %1 = bitcast %struct.bignum_st* %am to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #10
  %call = tail call i32 @BN_is_odd(%struct.bignum_st* noundef %m) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 611, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.BN_mod_exp_mont_consttime, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 102, i8* noundef null) #8
  br label %cleanup480

if.end:                                           ; preds = %entry
  %top1 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %m, i64 0, i32 1
  %2 = load i32, i32* %top1, align 8, !tbaa !6
  %top2 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %p, i64 0, i32 1
  %3 = load i32, i32* %top2, align 8, !tbaa !6
  %mul = shl nsw i32 %3, 6
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then3, label %if.end9

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @BN_abs_is_word(%struct.bignum_st* noundef nonnull %m, i64 noundef 1) #8
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then3
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %rr) #8
  br label %cleanup480

if.else:                                          ; preds = %if.then3
  %call7 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %rr, i64 noundef 1) #8
  br label %cleanup480

if.end9:                                          ; preds = %if.end
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #8
  %cmp10.not = icmp eq %struct.bn_mont_ctx_st* %in_mont, null
  br i1 %cmp10.not, label %if.else12, label %if.end21

if.else12:                                        ; preds = %if.end9
  %call13 = tail call %struct.bn_mont_ctx_st* @BN_MONT_CTX_new() #8
  %cmp14 = icmp eq %struct.bn_mont_ctx_st* %call13, null
  br i1 %cmp14, label %if.then473, label %if.end16

if.end16:                                         ; preds = %if.else12
  %call17 = tail call i32 @BN_MONT_CTX_set(%struct.bn_mont_ctx_st* noundef nonnull %call13, %struct.bignum_st* noundef nonnull %m, %struct.bignum_ctx* noundef %ctx) #8
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then473, label %if.end21

if.end21:                                         ; preds = %if.end9, %if.end16
  %mont.0 = phi %struct.bn_mont_ctx_st* [ %call13, %if.end16 ], [ %in_mont, %if.end9 ]
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 3
  %4 = load i32, i32* %neg, align 8, !tbaa !12
  %tobool22.not = icmp eq i32 %4, 0
  br i1 %tobool22.not, label %lor.lhs.false, label %if.then25

lor.lhs.false:                                    ; preds = %if.end21
  %call23 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef nonnull %a, %struct.bignum_st* noundef nonnull %m) #8
  %cmp24 = icmp sgt i32 %call23, -1
  br i1 %cmp24, label %if.then25, label %if.end33

if.then25:                                        ; preds = %lor.lhs.false, %if.end21
  %call26 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #8
  %cmp27 = icmp eq %struct.bignum_st* %call26, null
  br i1 %cmp27, label %err, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %if.then25
  %call29 = tail call i32 @BN_nnmod(%struct.bignum_st* noundef nonnull %call26, %struct.bignum_st* noundef nonnull %a, %struct.bignum_st* noundef nonnull %m, %struct.bignum_ctx* noundef %ctx) #8
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %err, label %if.end33

if.end33:                                         ; preds = %lor.lhs.false28, %lor.lhs.false
  %a.addr.1 = phi %struct.bignum_st* [ %a, %lor.lhs.false ], [ %call26, %lor.lhs.false28 ]
  %top34 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a.addr.1, i64 0, i32 1
  %5 = load i32, i32* %top34, align 8, !tbaa !6
  %cmp35 = icmp eq i32 %5, 16
  br i1 %cmp35, label %land.lhs.true, label %if.else55

land.lhs.true:                                    ; preds = %if.end33
  %6 = load i32, i32* %top2, align 8, !tbaa !6
  %cmp37 = icmp eq i32 %6, 16
  br i1 %cmp37, label %land.lhs.true38, label %if.end80

land.lhs.true38:                                  ; preds = %land.lhs.true
  %call39 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %m) #8
  %cmp40 = icmp eq i32 %call39, 1024
  br i1 %cmp40, label %land.lhs.true41, label %if.else55thread-pre-split

land.lhs.true41:                                  ; preds = %land.lhs.true38
  %call42 = tail call i32 @rsaz_avx2_eligible() #8
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.else55thread-pre-split, label %if.then44

if.then44:                                        ; preds = %land.lhs.true41
  %call45 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %rr, i32 noundef 16) #8
  %cmp46 = icmp eq %struct.bignum_st* %call45, null
  br i1 %cmp46, label %err, label %if.end48

if.end48:                                         ; preds = %if.then44
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %rr, i64 0, i32 0
  %7 = load i64*, i64** %d, align 8, !tbaa !13
  %d49 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a.addr.1, i64 0, i32 0
  %8 = load i64*, i64** %d49, align 8, !tbaa !13
  %d50 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %p, i64 0, i32 0
  %9 = load i64*, i64** %d50, align 8, !tbaa !13
  %d51 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %m, i64 0, i32 0
  %10 = load i64*, i64** %d51, align 8, !tbaa !13
  %d52 = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %mont.0, i64 0, i32 1, i32 0
  %11 = load i64*, i64** %d52, align 8, !tbaa !34
  %arrayidx = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %mont.0, i64 0, i32 4, i64 0
  %12 = load i64, i64* %arrayidx, align 8, !tbaa !14
  tail call void @RSAZ_1024_mod_exp_avx2(i64* noundef %7, i64* noundef %8, i64* noundef %9, i64* noundef %10, i64* noundef %11, i64 noundef %12) #8
  %top53 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %rr, i64 0, i32 1
  store i32 16, i32* %top53, align 8, !tbaa !6
  %neg54 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %rr, i64 0, i32 3
  store i32 0, i32* %neg54, align 8, !tbaa !12
  tail call void @bn_correct_top(%struct.bignum_st* noundef %rr) #8
  br label %err

if.else55thread-pre-split:                        ; preds = %land.lhs.true38, %land.lhs.true41
  %.pr = load i32, i32* %top34, align 8, !tbaa !6
  br label %if.else55

if.else55:                                        ; preds = %if.else55thread-pre-split, %if.end33
  %13 = phi i32 [ %.pr, %if.else55thread-pre-split ], [ %5, %if.end33 ]
  %cmp57 = icmp eq i32 %13, 8
  br i1 %cmp57, label %land.lhs.true58, label %if.end80

land.lhs.true58:                                  ; preds = %if.else55
  %14 = load i32, i32* %top2, align 8, !tbaa !6
  %cmp60 = icmp eq i32 %14, 8
  br i1 %cmp60, label %land.lhs.true61, label %if.end80

land.lhs.true61:                                  ; preds = %land.lhs.true58
  %call62 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %m) #8
  %cmp63 = icmp eq i32 %call62, 512
  br i1 %cmp63, label %if.then64, label %if.end80

if.then64:                                        ; preds = %land.lhs.true61
  %call65 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %rr, i32 noundef 8) #8
  %cmp66 = icmp eq %struct.bignum_st* %call65, null
  br i1 %cmp66, label %err, label %if.end68

if.end68:                                         ; preds = %if.then64
  %d69 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %rr, i64 0, i32 0
  %15 = load i64*, i64** %d69, align 8, !tbaa !13
  %d70 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a.addr.1, i64 0, i32 0
  %16 = load i64*, i64** %d70, align 8, !tbaa !13
  %d71 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %p, i64 0, i32 0
  %17 = load i64*, i64** %d71, align 8, !tbaa !13
  %d72 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %m, i64 0, i32 0
  %18 = load i64*, i64** %d72, align 8, !tbaa !13
  %arrayidx74 = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %mont.0, i64 0, i32 4, i64 0
  %19 = load i64, i64* %arrayidx74, align 8, !tbaa !14
  %d76 = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %mont.0, i64 0, i32 1, i32 0
  %20 = load i64*, i64** %d76, align 8, !tbaa !34
  tail call void @RSAZ_512_mod_exp(i64* noundef %15, i64* noundef %16, i64* noundef %17, i64* noundef %18, i64 noundef %19, i64* noundef %20) #8
  %top77 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %rr, i64 0, i32 1
  store i32 8, i32* %top77, align 8, !tbaa !6
  %neg78 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %rr, i64 0, i32 3
  store i32 0, i32* %neg78, align 8, !tbaa !12
  tail call void @bn_correct_top(%struct.bignum_st* noundef %rr) #8
  br label %err

if.end80:                                         ; preds = %land.lhs.true, %if.else55, %land.lhs.true58, %land.lhs.true61
  %cmp81 = icmp sgt i32 %3, 14
  br i1 %cmp81, label %cond.end92, label %cond.false

cond.false:                                       ; preds = %if.end80
  %cmp82 = icmp sgt i32 %3, 4
  br i1 %cmp82, label %cond.end92, label %cond.false84

cond.false84:                                     ; preds = %cond.false
  %cmp85 = icmp sgt i32 %3, 1
  br i1 %cmp85, label %cond.end92, label %cond.false87

cond.false87:                                     ; preds = %cond.false84
  %cmp88 = icmp eq i32 %3, 1
  %cond = select i1 %cmp88, i32 3, i32 1
  br label %cond.end92

cond.end92:                                       ; preds = %cond.false, %cond.false84, %cond.false87, %if.end80
  %cond93 = phi i32 [ 6, %if.end80 ], [ 5, %cond.false ], [ %cond, %cond.false87 ], [ 4, %cond.false84 ]
  %cmp94 = icmp ugt i32 %cond93, 4
  %conv778 = zext i32 %2 to i64
  %mul96 = shl i64 %conv778, 35
  %window.0 = select i1 %cmp94, i32 5, i32 %cond93
  %shl = shl nuw nsw i32 1, %window.0
  %mul100 = shl i32 %2, %window.0
  %mul101 = shl nsw i32 %2, 1
  %cmp102 = icmp sgt i32 %mul101, %shl
  %cond108 = select i1 %cmp102, i32 %mul101, i32 %shl
  %add109 = add nsw i32 %cond108, %mul100
  %conv110 = sext i32 %add109 to i64
  %mul111 = shl nsw i64 %conv110, 3
  %mul96.op = ashr exact i64 %mul96, 32
  %conv112 = select i1 %cmp94, i64 %mul96.op, i64 0
  %add113 = add nsw i64 %mul111, %conv112
  %conv114 = trunc i64 %add113 to i32
  %cmp115 = icmp slt i32 %conv114, 3072
  %add118 = shl i64 %add113, 32
  %sext777 = add i64 %add118, 274877906944
  %conv119 = ashr exact i64 %sext777, 32
  br i1 %cmp115, label %if.then117, label %if.else120

if.then117:                                       ; preds = %cond.end92
  %21 = alloca i8, i64 %conv119, align 16
  br label %if.end128

if.else120:                                       ; preds = %cond.end92
  %call123 = tail call i8* @CRYPTO_malloc(i64 noundef %conv119, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 720) #8
  %cmp124 = icmp eq i8* %call123, null
  br i1 %cmp124, label %err, label %if.end128

if.end128:                                        ; preds = %if.else120, %if.then117
  %spec.select = phi i8* [ %call123, %if.else120 ], [ null, %if.then117 ]
  %powerbufFree.0 = phi i8* [ %call123, %if.else120 ], [ %21, %if.then117 ]
  %22 = ptrtoint i8* %powerbufFree.0 to i64
  %and = and i64 %22, 63
  %sub = sub nuw nsw i64 64, %and
  %add.ptr = getelementptr inbounds i8, i8* %powerbufFree.0, i64 %sub
  %conv129 = ashr exact i64 %add118, 32
  %call130 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %conv129) #8
  %conv135 = sext i32 %2 to i64
  %mul136 = shl nsw i64 %conv135, 3
  %23 = zext i32 %shl to i64
  %mul138 = mul nsw i64 %mul136, %23
  %add.ptr139 = getelementptr inbounds i8, i8* %add.ptr, i64 %mul138
  %24 = bitcast i8* %add.ptr139 to i64*
  %d140 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %tmp, i64 0, i32 0
  %25 = bitcast %struct.bignum_st* %tmp to i8**
  store i8* %add.ptr139, i8** %25, align 8, !tbaa !13
  %add.ptr142 = getelementptr inbounds i64, i64* %24, i64 %conv135
  %d143 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %am, i64 0, i32 0
  store i64* %add.ptr142, i64** %d143, align 8, !tbaa !13
  %top144 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %am, i64 0, i32 1
  store i32 0, i32* %top144, align 8, !tbaa !6
  %top145 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %tmp, i64 0, i32 1
  store i32 0, i32* %top145, align 8, !tbaa !6
  %dmax = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %am, i64 0, i32 2
  store i32 %2, i32* %dmax, align 4, !tbaa !36
  %dmax146 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %tmp, i64 0, i32 2
  store i32 %2, i32* %dmax146, align 4, !tbaa !36
  %neg147 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %am, i64 0, i32 3
  store i32 0, i32* %neg147, align 8, !tbaa !12
  %neg148 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %tmp, i64 0, i32 3
  store i32 0, i32* %neg148, align 8, !tbaa !12
  %flags = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %am, i64 0, i32 4
  store i32 2, i32* %flags, align 4, !tbaa !37
  %flags149 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %tmp, i64 0, i32 4
  store i32 2, i32* %flags149, align 4, !tbaa !37
  %d150 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %m, i64 0, i32 0
  %26 = load i64*, i64** %d150, align 8, !tbaa !13
  %sub151 = add nsw i32 %2, -1
  %idxprom = sext i32 %sub151 to i64
  %arrayidx152 = getelementptr inbounds i64, i64* %26, i64 %idxprom
  %27 = load i64, i64* %arrayidx152, align 8, !tbaa !14
  %tobool154.not = icmp sgt i64 %27, -1
  br i1 %tobool154.not, label %if.else173, label %if.then155

if.then155:                                       ; preds = %if.end128
  %28 = load i64, i64* %26, align 8, !tbaa !14
  %sub158 = sub i64 0, %28
  store i64 %sub158, i64* %24, align 8, !tbaa !14
  %cmp162810 = icmp sgt i32 %2, 1
  br i1 %cmp162810, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.then155
  %29 = add nsw i64 %conv778, -1
  %min.iters.check = icmp ult i64 %29, 4
  br i1 %min.iters.check, label %for.body.preheader937, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.preheader
  %30 = add nsw i64 %mul138, 72
  %31 = sub nsw i64 %30, %and
  %scevgep = getelementptr i8, i8* %powerbufFree.0, i64 %31
  %32 = shl nuw nsw i64 %conv778, 3
  %33 = add nsw i64 %mul138, %32
  %34 = add i64 %33, 64
  %35 = sub i64 %34, %and
  %scevgep880 = getelementptr i8, i8* %powerbufFree.0, i64 %35
  %scevgep881 = getelementptr i64, i64* %26, i64 1
  %scevgep881882 = bitcast i64* %scevgep881 to i8*
  %scevgep883 = getelementptr i64, i64* %26, i64 %conv778
  %scevgep883884 = bitcast i64* %scevgep883 to i8*
  %bound0 = icmp ult i8* %scevgep, %scevgep883884
  %bound1 = icmp ugt i8* %scevgep880, %scevgep881882
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body.preheader937, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %29, -4
  %ind.end = or i64 %n.vec, 1
  %36 = add nsw i64 %n.vec, -4
  %37 = lshr exact i64 %36, 2
  %38 = add nuw nsw i64 %37, 1
  %xtraiter = and i64 %38, 1
  %39 = icmp eq i64 %36, 0
  br i1 %39, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %38, 9223372036854775806
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %offset.idx = or i64 %index, 1
  %40 = getelementptr inbounds i64, i64* %26, i64 %offset.idx
  %41 = bitcast i64* %40 to <2 x i64>*
  %wide.load = load <2 x i64>, <2 x i64>* %41, align 8, !tbaa !14, !alias.scope !38
  %42 = getelementptr inbounds i64, i64* %40, i64 2
  %43 = bitcast i64* %42 to <2 x i64>*
  %wide.load885 = load <2 x i64>, <2 x i64>* %43, align 8, !tbaa !14, !alias.scope !38
  %44 = xor <2 x i64> %wide.load, <i64 -1, i64 -1>
  %45 = xor <2 x i64> %wide.load885, <i64 -1, i64 -1>
  %46 = getelementptr inbounds i64, i64* %24, i64 %offset.idx
  %47 = bitcast i64* %46 to <2 x i64>*
  store <2 x i64> %44, <2 x i64>* %47, align 8, !tbaa !14, !alias.scope !41, !noalias !38
  %48 = getelementptr inbounds i64, i64* %46, i64 2
  %49 = bitcast i64* %48 to <2 x i64>*
  store <2 x i64> %45, <2 x i64>* %49, align 8, !tbaa !14, !alias.scope !41, !noalias !38
  %offset.idx.1 = or i64 %index, 5
  %50 = getelementptr inbounds i64, i64* %26, i64 %offset.idx.1
  %51 = bitcast i64* %50 to <2 x i64>*
  %wide.load.1 = load <2 x i64>, <2 x i64>* %51, align 8, !tbaa !14, !alias.scope !38
  %52 = getelementptr inbounds i64, i64* %50, i64 2
  %53 = bitcast i64* %52 to <2 x i64>*
  %wide.load885.1 = load <2 x i64>, <2 x i64>* %53, align 8, !tbaa !14, !alias.scope !38
  %54 = xor <2 x i64> %wide.load.1, <i64 -1, i64 -1>
  %55 = xor <2 x i64> %wide.load885.1, <i64 -1, i64 -1>
  %56 = getelementptr inbounds i64, i64* %24, i64 %offset.idx.1
  %57 = bitcast i64* %56 to <2 x i64>*
  store <2 x i64> %54, <2 x i64>* %57, align 8, !tbaa !14, !alias.scope !41, !noalias !38
  %58 = getelementptr inbounds i64, i64* %56, i64 2
  %59 = bitcast i64* %58 to <2 x i64>*
  store <2 x i64> %55, <2 x i64>* %59, align 8, !tbaa !14, !alias.scope !41, !noalias !38
  %index.next.1 = add nuw i64 %index, 8
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !43

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %offset.idx.epil = or i64 %index.unr, 1
  %60 = getelementptr inbounds i64, i64* %26, i64 %offset.idx.epil
  %61 = bitcast i64* %60 to <2 x i64>*
  %wide.load.epil = load <2 x i64>, <2 x i64>* %61, align 8, !tbaa !14, !alias.scope !38
  %62 = getelementptr inbounds i64, i64* %60, i64 2
  %63 = bitcast i64* %62 to <2 x i64>*
  %wide.load885.epil = load <2 x i64>, <2 x i64>* %63, align 8, !tbaa !14, !alias.scope !38
  %64 = xor <2 x i64> %wide.load.epil, <i64 -1, i64 -1>
  %65 = xor <2 x i64> %wide.load885.epil, <i64 -1, i64 -1>
  %66 = getelementptr inbounds i64, i64* %24, i64 %offset.idx.epil
  %67 = bitcast i64* %66 to <2 x i64>*
  store <2 x i64> %64, <2 x i64>* %67, align 8, !tbaa !14, !alias.scope !41, !noalias !38
  %68 = getelementptr inbounds i64, i64* %66, i64 2
  %69 = bitcast i64* %68 to <2 x i64>*
  store <2 x i64> %65, <2 x i64>* %69, align 8, !tbaa !14, !alias.scope !41, !noalias !38
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %29, %n.vec
  br i1 %cmp.n, label %for.end, label %for.body.preheader937

for.body.preheader937:                            ; preds = %vector.memcheck, %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %for.body.preheader ], [ %ind.end, %middle.block ]
  %70 = sub nsw i64 %conv778, %indvars.iv.ph
  %71 = xor i64 %indvars.iv.ph, -1
  %72 = add nsw i64 %71, %conv778
  %xtraiter938 = and i64 %70, 3
  %lcmp.mod939.not = icmp eq i64 %xtraiter938, 0
  br i1 %lcmp.mod939.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader937, %for.body.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body.prol ], [ %indvars.iv.ph, %for.body.preheader937 ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader937 ]
  %arrayidx166.prol = getelementptr inbounds i64, i64* %26, i64 %indvars.iv.prol
  %73 = load i64, i64* %arrayidx166.prol, align 8, !tbaa !14
  %neg167.prol = xor i64 %73, -1
  %arrayidx171.prol = getelementptr inbounds i64, i64* %24, i64 %indvars.iv.prol
  store i64 %neg167.prol, i64* %arrayidx171.prol, align 8, !tbaa !14
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter938
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !44

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader937
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body.preheader937 ], [ %indvars.iv.next.prol, %for.body.prol ]
  %74 = icmp ult i64 %72, 3
  br i1 %74, label %for.end, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body ], [ %indvars.iv.unr, %for.body.prol.loopexit ]
  %arrayidx166 = getelementptr inbounds i64, i64* %26, i64 %indvars.iv
  %75 = load i64, i64* %arrayidx166, align 8, !tbaa !14
  %neg167 = xor i64 %75, -1
  %arrayidx171 = getelementptr inbounds i64, i64* %24, i64 %indvars.iv
  store i64 %neg167, i64* %arrayidx171, align 8, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx166.1 = getelementptr inbounds i64, i64* %26, i64 %indvars.iv.next
  %76 = load i64, i64* %arrayidx166.1, align 8, !tbaa !14
  %neg167.1 = xor i64 %76, -1
  %arrayidx171.1 = getelementptr inbounds i64, i64* %24, i64 %indvars.iv.next
  store i64 %neg167.1, i64* %arrayidx171.1, align 8, !tbaa !14
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx166.2 = getelementptr inbounds i64, i64* %26, i64 %indvars.iv.next.1
  %77 = load i64, i64* %arrayidx166.2, align 8, !tbaa !14
  %neg167.2 = xor i64 %77, -1
  %arrayidx171.2 = getelementptr inbounds i64, i64* %24, i64 %indvars.iv.next.1
  store i64 %neg167.2, i64* %arrayidx171.2, align 8, !tbaa !14
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %arrayidx166.3 = getelementptr inbounds i64, i64* %26, i64 %indvars.iv.next.2
  %78 = load i64, i64* %arrayidx166.3, align 8, !tbaa !14
  %neg167.3 = xor i64 %78, -1
  %arrayidx171.3 = getelementptr inbounds i64, i64* %24, i64 %indvars.iv.next.2
  store i64 %neg167.3, i64* %arrayidx171.3, align 8, !tbaa !14
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %conv778
  br i1 %exitcond.not.3, label %for.end, label %for.body, !llvm.loop !45

for.end:                                          ; preds = %for.body.prol.loopexit, %for.body, %middle.block, %if.then155
  store i32 %2, i32* %top145, align 8, !tbaa !6
  br label %if.end179

if.else173:                                       ; preds = %if.end128
  %call174 = call %struct.bignum_st* @BN_value_one() #8
  %call175 = call i32 @bn_to_mont_fixed_top(%struct.bignum_st* noundef nonnull %tmp, %struct.bignum_st* noundef %call174, %struct.bn_mont_ctx_st* noundef nonnull %mont.0, %struct.bignum_ctx* noundef %ctx) #8
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %err, label %if.end179

if.end179:                                        ; preds = %if.else173, %for.end
  %call180 = call i32 @bn_to_mont_fixed_top(%struct.bignum_st* noundef nonnull %am, %struct.bignum_st* noundef %a.addr.1, %struct.bn_mont_ctx_st* noundef nonnull %mont.0, %struct.bignum_ctx* noundef %ctx) #8
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %err, label %if.end183

if.end183:                                        ; preds = %if.end179
  %cmp184 = icmp eq i32 %window.0, 5
  %cmp187 = icmp sgt i32 %2, 1
  %or.cond = select i1 %cmp184, i1 %cmp187, i1 false
  br i1 %or.cond, label %if.then189, label %if.else385

if.then189:                                       ; preds = %if.end183
  %arraydecay = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %mont.0, i64 0, i32 4, i64 0
  %79 = load i32, i32* %top144, align 8, !tbaa !6
  %cmp194815 = icmp slt i32 %79, %2
  br i1 %cmp194815, label %for.body196.lr.ph, label %for.end202

for.body196.lr.ph:                                ; preds = %if.then189
  %80 = load i64*, i64** %d143, align 8, !tbaa !13
  %81 = sext i32 %79 to i64
  %82 = sub nsw i64 %conv135, %81
  %min.iters.check889 = icmp ult i64 %82, 4
  br i1 %min.iters.check889, label %for.body196.preheader, label %vector.ph890

vector.ph890:                                     ; preds = %for.body196.lr.ph
  %n.vec892 = and i64 %82, -4
  %ind.end894 = add nsw i64 %n.vec892, %81
  %83 = add nsw i64 %n.vec892, -4
  %84 = lshr exact i64 %83, 2
  %85 = add nuw nsw i64 %84, 1
  %xtraiter940 = and i64 %85, 3
  %86 = icmp ult i64 %83, 12
  br i1 %86, label %middle.block886.unr-lcssa, label %vector.ph890.new

vector.ph890.new:                                 ; preds = %vector.ph890
  %unroll_iter942 = and i64 %85, 9223372036854775804
  br label %vector.body888

vector.body888:                                   ; preds = %vector.body888, %vector.ph890.new
  %index896 = phi i64 [ 0, %vector.ph890.new ], [ %index.next898.3, %vector.body888 ]
  %niter943 = phi i64 [ 0, %vector.ph890.new ], [ %niter943.next.3, %vector.body888 ]
  %offset.idx897 = add i64 %index896, %81
  %87 = getelementptr inbounds i64, i64* %80, i64 %offset.idx897
  %88 = bitcast i64* %87 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %88, align 8, !tbaa !14
  %89 = getelementptr inbounds i64, i64* %87, i64 2
  %90 = bitcast i64* %89 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %90, align 8, !tbaa !14
  %index.next898 = or i64 %index896, 4
  %offset.idx897.1 = add i64 %index.next898, %81
  %91 = getelementptr inbounds i64, i64* %80, i64 %offset.idx897.1
  %92 = bitcast i64* %91 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %92, align 8, !tbaa !14
  %93 = getelementptr inbounds i64, i64* %91, i64 2
  %94 = bitcast i64* %93 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %94, align 8, !tbaa !14
  %index.next898.1 = or i64 %index896, 8
  %offset.idx897.2 = add i64 %index.next898.1, %81
  %95 = getelementptr inbounds i64, i64* %80, i64 %offset.idx897.2
  %96 = bitcast i64* %95 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %96, align 8, !tbaa !14
  %97 = getelementptr inbounds i64, i64* %95, i64 2
  %98 = bitcast i64* %97 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %98, align 8, !tbaa !14
  %index.next898.2 = or i64 %index896, 12
  %offset.idx897.3 = add i64 %index.next898.2, %81
  %99 = getelementptr inbounds i64, i64* %80, i64 %offset.idx897.3
  %100 = bitcast i64* %99 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %100, align 8, !tbaa !14
  %101 = getelementptr inbounds i64, i64* %99, i64 2
  %102 = bitcast i64* %101 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %102, align 8, !tbaa !14
  %index.next898.3 = add nuw i64 %index896, 16
  %niter943.next.3 = add nuw i64 %niter943, 4
  %niter943.ncmp.3 = icmp eq i64 %niter943.next.3, %unroll_iter942
  br i1 %niter943.ncmp.3, label %middle.block886.unr-lcssa, label %vector.body888, !llvm.loop !46

middle.block886.unr-lcssa:                        ; preds = %vector.body888, %vector.ph890
  %index896.unr = phi i64 [ 0, %vector.ph890 ], [ %index.next898.3, %vector.body888 ]
  %lcmp.mod941.not = icmp eq i64 %xtraiter940, 0
  br i1 %lcmp.mod941.not, label %middle.block886, label %vector.body888.epil

vector.body888.epil:                              ; preds = %middle.block886.unr-lcssa, %vector.body888.epil
  %index896.epil = phi i64 [ %index.next898.epil, %vector.body888.epil ], [ %index896.unr, %middle.block886.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body888.epil ], [ 0, %middle.block886.unr-lcssa ]
  %offset.idx897.epil = add i64 %index896.epil, %81
  %103 = getelementptr inbounds i64, i64* %80, i64 %offset.idx897.epil
  %104 = bitcast i64* %103 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %104, align 8, !tbaa !14
  %105 = getelementptr inbounds i64, i64* %103, i64 2
  %106 = bitcast i64* %105 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %106, align 8, !tbaa !14
  %index.next898.epil = add nuw i64 %index896.epil, 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter940
  br i1 %epil.iter.cmp.not, label %middle.block886, label %vector.body888.epil, !llvm.loop !47

middle.block886:                                  ; preds = %vector.body888.epil, %middle.block886.unr-lcssa
  %cmp.n895 = icmp eq i64 %82, %n.vec892
  br i1 %cmp.n895, label %for.end202, label %for.body196.preheader

for.body196.preheader:                            ; preds = %for.body196.lr.ph, %middle.block886
  %indvars.iv841.ph = phi i64 [ %81, %for.body196.lr.ph ], [ %ind.end894, %middle.block886 ]
  br label %for.body196

for.body196:                                      ; preds = %for.body196.preheader, %for.body196
  %indvars.iv841 = phi i64 [ %indvars.iv.next842, %for.body196 ], [ %indvars.iv841.ph, %for.body196.preheader ]
  %arrayidx199 = getelementptr inbounds i64, i64* %80, i64 %indvars.iv841
  store i64 0, i64* %arrayidx199, align 8, !tbaa !14
  %indvars.iv.next842 = add nsw i64 %indvars.iv841, 1
  %exitcond845.not = icmp eq i64 %indvars.iv.next842, %conv135
  br i1 %exitcond845.not, label %for.end202, label %for.body196, !llvm.loop !48

for.end202:                                       ; preds = %for.body196, %middle.block886, %if.then189
  %107 = load i32, i32* %top145, align 8, !tbaa !6
  %cmp205817 = icmp slt i32 %107, %2
  br i1 %cmp205817, label %for.body207.lr.ph, label %for.end213

for.body207.lr.ph:                                ; preds = %for.end202
  %108 = load i64*, i64** %d140, align 8, !tbaa !13
  %109 = sext i32 %107 to i64
  %110 = sub nsw i64 %conv135, %109
  %min.iters.check902 = icmp ult i64 %110, 4
  br i1 %min.iters.check902, label %for.body207.preheader, label %vector.ph903

vector.ph903:                                     ; preds = %for.body207.lr.ph
  %n.vec905 = and i64 %110, -4
  %ind.end907 = add nsw i64 %n.vec905, %109
  %111 = add nsw i64 %n.vec905, -4
  %112 = lshr exact i64 %111, 2
  %113 = add nuw nsw i64 %112, 1
  %xtraiter944 = and i64 %113, 3
  %114 = icmp ult i64 %111, 12
  br i1 %114, label %middle.block899.unr-lcssa, label %vector.ph903.new

vector.ph903.new:                                 ; preds = %vector.ph903
  %unroll_iter947 = and i64 %113, 9223372036854775804
  br label %vector.body901

vector.body901:                                   ; preds = %vector.body901, %vector.ph903.new
  %index909 = phi i64 [ 0, %vector.ph903.new ], [ %index.next911.3, %vector.body901 ]
  %niter948 = phi i64 [ 0, %vector.ph903.new ], [ %niter948.next.3, %vector.body901 ]
  %offset.idx910 = add i64 %index909, %109
  %115 = getelementptr inbounds i64, i64* %108, i64 %offset.idx910
  %116 = bitcast i64* %115 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %116, align 8, !tbaa !14
  %117 = getelementptr inbounds i64, i64* %115, i64 2
  %118 = bitcast i64* %117 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %118, align 8, !tbaa !14
  %index.next911 = or i64 %index909, 4
  %offset.idx910.1 = add i64 %index.next911, %109
  %119 = getelementptr inbounds i64, i64* %108, i64 %offset.idx910.1
  %120 = bitcast i64* %119 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %120, align 8, !tbaa !14
  %121 = getelementptr inbounds i64, i64* %119, i64 2
  %122 = bitcast i64* %121 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %122, align 8, !tbaa !14
  %index.next911.1 = or i64 %index909, 8
  %offset.idx910.2 = add i64 %index.next911.1, %109
  %123 = getelementptr inbounds i64, i64* %108, i64 %offset.idx910.2
  %124 = bitcast i64* %123 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %124, align 8, !tbaa !14
  %125 = getelementptr inbounds i64, i64* %123, i64 2
  %126 = bitcast i64* %125 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %126, align 8, !tbaa !14
  %index.next911.2 = or i64 %index909, 12
  %offset.idx910.3 = add i64 %index.next911.2, %109
  %127 = getelementptr inbounds i64, i64* %108, i64 %offset.idx910.3
  %128 = bitcast i64* %127 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %128, align 8, !tbaa !14
  %129 = getelementptr inbounds i64, i64* %127, i64 2
  %130 = bitcast i64* %129 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %130, align 8, !tbaa !14
  %index.next911.3 = add nuw i64 %index909, 16
  %niter948.next.3 = add nuw i64 %niter948, 4
  %niter948.ncmp.3 = icmp eq i64 %niter948.next.3, %unroll_iter947
  br i1 %niter948.ncmp.3, label %middle.block899.unr-lcssa, label %vector.body901, !llvm.loop !50

middle.block899.unr-lcssa:                        ; preds = %vector.body901, %vector.ph903
  %index909.unr = phi i64 [ 0, %vector.ph903 ], [ %index.next911.3, %vector.body901 ]
  %lcmp.mod946.not = icmp eq i64 %xtraiter944, 0
  br i1 %lcmp.mod946.not, label %middle.block899, label %vector.body901.epil

vector.body901.epil:                              ; preds = %middle.block899.unr-lcssa, %vector.body901.epil
  %index909.epil = phi i64 [ %index.next911.epil, %vector.body901.epil ], [ %index909.unr, %middle.block899.unr-lcssa ]
  %epil.iter945 = phi i64 [ %epil.iter945.next, %vector.body901.epil ], [ 0, %middle.block899.unr-lcssa ]
  %offset.idx910.epil = add i64 %index909.epil, %109
  %131 = getelementptr inbounds i64, i64* %108, i64 %offset.idx910.epil
  %132 = bitcast i64* %131 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %132, align 8, !tbaa !14
  %133 = getelementptr inbounds i64, i64* %131, i64 2
  %134 = bitcast i64* %133 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %134, align 8, !tbaa !14
  %index.next911.epil = add nuw i64 %index909.epil, 4
  %epil.iter945.next = add i64 %epil.iter945, 1
  %epil.iter945.cmp.not = icmp eq i64 %epil.iter945.next, %xtraiter944
  br i1 %epil.iter945.cmp.not, label %middle.block899, label %vector.body901.epil, !llvm.loop !51

middle.block899:                                  ; preds = %vector.body901.epil, %middle.block899.unr-lcssa
  %cmp.n908 = icmp eq i64 %110, %n.vec905
  br i1 %cmp.n908, label %for.end213, label %for.body207.preheader

for.body207.preheader:                            ; preds = %for.body207.lr.ph, %middle.block899
  %indvars.iv846.ph = phi i64 [ %109, %for.body207.lr.ph ], [ %ind.end907, %middle.block899 ]
  br label %for.body207

for.body207:                                      ; preds = %for.body207.preheader, %for.body207
  %indvars.iv846 = phi i64 [ %indvars.iv.next847, %for.body207 ], [ %indvars.iv846.ph, %for.body207.preheader ]
  %arrayidx210 = getelementptr inbounds i64, i64* %108, i64 %indvars.iv846
  store i64 0, i64* %arrayidx210, align 8, !tbaa !14
  %indvars.iv.next847 = add nsw i64 %indvars.iv846, 1
  %exitcond850.not = icmp eq i64 %indvars.iv.next847, %conv135
  br i1 %exitcond850.not, label %for.end213, label %for.body207, !llvm.loop !52

for.end213:                                       ; preds = %for.body207, %middle.block899, %for.end202
  %135 = load i64*, i64** %d143, align 8, !tbaa !13
  %add.ptr216 = getelementptr i64, i64* %135, i64 %conv135
  %cmp218819 = icmp sgt i32 %2, 0
  br i1 %cmp218819, label %for.body220.lr.ph, label %for.end315

for.body220.lr.ph:                                ; preds = %for.end213
  %d221 = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %mont.0, i64 0, i32 2, i32 0
  %136 = load i64*, i64** %d221, align 8, !tbaa !53
  %min.iters.check924 = icmp ult i32 %2, 4
  br i1 %min.iters.check924, label %for.body220.preheader, label %vector.memcheck912

vector.memcheck912:                               ; preds = %for.body220.lr.ph
  %137 = add nsw i64 %conv135, %conv778
  %scevgep914 = getelementptr i64, i64* %135, i64 %137
  %scevgep916 = getelementptr i64, i64* %136, i64 %conv778
  %bound0918 = icmp ult i64* %add.ptr216, %scevgep916
  %bound1919 = icmp ult i64* %136, %scevgep914
  %found.conflict920 = and i1 %bound0918, %bound1919
  br i1 %found.conflict920, label %for.body220.preheader, label %vector.ph925

vector.ph925:                                     ; preds = %vector.memcheck912
  %n.vec927 = and i64 %conv778, 4294967292
  %138 = add nsw i64 %n.vec927, -4
  %139 = lshr exact i64 %138, 2
  %140 = add nuw nsw i64 %139, 1
  %xtraiter949 = and i64 %140, 3
  %141 = icmp ult i64 %138, 12
  br i1 %141, label %middle.block921.unr-lcssa, label %vector.ph925.new

vector.ph925.new:                                 ; preds = %vector.ph925
  %unroll_iter952 = and i64 %140, 9223372036854775804
  br label %vector.body923

vector.body923:                                   ; preds = %vector.body923, %vector.ph925.new
  %index930 = phi i64 [ 0, %vector.ph925.new ], [ %index.next933.3, %vector.body923 ]
  %niter953 = phi i64 [ 0, %vector.ph925.new ], [ %niter953.next.3, %vector.body923 ]
  %142 = getelementptr inbounds i64, i64* %136, i64 %index930
  %143 = bitcast i64* %142 to <2 x i64>*
  %wide.load931 = load <2 x i64>, <2 x i64>* %143, align 8, !tbaa !14, !alias.scope !54
  %144 = getelementptr inbounds i64, i64* %142, i64 2
  %145 = bitcast i64* %144 to <2 x i64>*
  %wide.load932 = load <2 x i64>, <2 x i64>* %145, align 8, !tbaa !14, !alias.scope !54
  %146 = getelementptr inbounds i64, i64* %add.ptr216, i64 %index930
  %147 = bitcast i64* %146 to <2 x i64>*
  store <2 x i64> %wide.load931, <2 x i64>* %147, align 8, !tbaa !14, !alias.scope !57, !noalias !54
  %148 = getelementptr inbounds i64, i64* %146, i64 2
  %149 = bitcast i64* %148 to <2 x i64>*
  store <2 x i64> %wide.load932, <2 x i64>* %149, align 8, !tbaa !14, !alias.scope !57, !noalias !54
  %index.next933 = or i64 %index930, 4
  %150 = getelementptr inbounds i64, i64* %136, i64 %index.next933
  %151 = bitcast i64* %150 to <2 x i64>*
  %wide.load931.1 = load <2 x i64>, <2 x i64>* %151, align 8, !tbaa !14, !alias.scope !54
  %152 = getelementptr inbounds i64, i64* %150, i64 2
  %153 = bitcast i64* %152 to <2 x i64>*
  %wide.load932.1 = load <2 x i64>, <2 x i64>* %153, align 8, !tbaa !14, !alias.scope !54
  %154 = getelementptr inbounds i64, i64* %add.ptr216, i64 %index.next933
  %155 = bitcast i64* %154 to <2 x i64>*
  store <2 x i64> %wide.load931.1, <2 x i64>* %155, align 8, !tbaa !14, !alias.scope !57, !noalias !54
  %156 = getelementptr inbounds i64, i64* %154, i64 2
  %157 = bitcast i64* %156 to <2 x i64>*
  store <2 x i64> %wide.load932.1, <2 x i64>* %157, align 8, !tbaa !14, !alias.scope !57, !noalias !54
  %index.next933.1 = or i64 %index930, 8
  %158 = getelementptr inbounds i64, i64* %136, i64 %index.next933.1
  %159 = bitcast i64* %158 to <2 x i64>*
  %wide.load931.2 = load <2 x i64>, <2 x i64>* %159, align 8, !tbaa !14, !alias.scope !54
  %160 = getelementptr inbounds i64, i64* %158, i64 2
  %161 = bitcast i64* %160 to <2 x i64>*
  %wide.load932.2 = load <2 x i64>, <2 x i64>* %161, align 8, !tbaa !14, !alias.scope !54
  %162 = getelementptr inbounds i64, i64* %add.ptr216, i64 %index.next933.1
  %163 = bitcast i64* %162 to <2 x i64>*
  store <2 x i64> %wide.load931.2, <2 x i64>* %163, align 8, !tbaa !14, !alias.scope !57, !noalias !54
  %164 = getelementptr inbounds i64, i64* %162, i64 2
  %165 = bitcast i64* %164 to <2 x i64>*
  store <2 x i64> %wide.load932.2, <2 x i64>* %165, align 8, !tbaa !14, !alias.scope !57, !noalias !54
  %index.next933.2 = or i64 %index930, 12
  %166 = getelementptr inbounds i64, i64* %136, i64 %index.next933.2
  %167 = bitcast i64* %166 to <2 x i64>*
  %wide.load931.3 = load <2 x i64>, <2 x i64>* %167, align 8, !tbaa !14, !alias.scope !54
  %168 = getelementptr inbounds i64, i64* %166, i64 2
  %169 = bitcast i64* %168 to <2 x i64>*
  %wide.load932.3 = load <2 x i64>, <2 x i64>* %169, align 8, !tbaa !14, !alias.scope !54
  %170 = getelementptr inbounds i64, i64* %add.ptr216, i64 %index.next933.2
  %171 = bitcast i64* %170 to <2 x i64>*
  store <2 x i64> %wide.load931.3, <2 x i64>* %171, align 8, !tbaa !14, !alias.scope !57, !noalias !54
  %172 = getelementptr inbounds i64, i64* %170, i64 2
  %173 = bitcast i64* %172 to <2 x i64>*
  store <2 x i64> %wide.load932.3, <2 x i64>* %173, align 8, !tbaa !14, !alias.scope !57, !noalias !54
  %index.next933.3 = add nuw i64 %index930, 16
  %niter953.next.3 = add nuw i64 %niter953, 4
  %niter953.ncmp.3 = icmp eq i64 %niter953.next.3, %unroll_iter952
  br i1 %niter953.ncmp.3, label %middle.block921.unr-lcssa, label %vector.body923, !llvm.loop !59

middle.block921.unr-lcssa:                        ; preds = %vector.body923, %vector.ph925
  %index930.unr = phi i64 [ 0, %vector.ph925 ], [ %index.next933.3, %vector.body923 ]
  %lcmp.mod951.not = icmp eq i64 %xtraiter949, 0
  br i1 %lcmp.mod951.not, label %middle.block921, label %vector.body923.epil

vector.body923.epil:                              ; preds = %middle.block921.unr-lcssa, %vector.body923.epil
  %index930.epil = phi i64 [ %index.next933.epil, %vector.body923.epil ], [ %index930.unr, %middle.block921.unr-lcssa ]
  %epil.iter950 = phi i64 [ %epil.iter950.next, %vector.body923.epil ], [ 0, %middle.block921.unr-lcssa ]
  %174 = getelementptr inbounds i64, i64* %136, i64 %index930.epil
  %175 = bitcast i64* %174 to <2 x i64>*
  %wide.load931.epil = load <2 x i64>, <2 x i64>* %175, align 8, !tbaa !14, !alias.scope !54
  %176 = getelementptr inbounds i64, i64* %174, i64 2
  %177 = bitcast i64* %176 to <2 x i64>*
  %wide.load932.epil = load <2 x i64>, <2 x i64>* %177, align 8, !tbaa !14, !alias.scope !54
  %178 = getelementptr inbounds i64, i64* %add.ptr216, i64 %index930.epil
  %179 = bitcast i64* %178 to <2 x i64>*
  store <2 x i64> %wide.load931.epil, <2 x i64>* %179, align 8, !tbaa !14, !alias.scope !57, !noalias !54
  %180 = getelementptr inbounds i64, i64* %178, i64 2
  %181 = bitcast i64* %180 to <2 x i64>*
  store <2 x i64> %wide.load932.epil, <2 x i64>* %181, align 8, !tbaa !14, !alias.scope !57, !noalias !54
  %index.next933.epil = add nuw i64 %index930.epil, 4
  %epil.iter950.next = add i64 %epil.iter950, 1
  %epil.iter950.cmp.not = icmp eq i64 %epil.iter950.next, %xtraiter949
  br i1 %epil.iter950.cmp.not, label %middle.block921, label %vector.body923.epil, !llvm.loop !60

middle.block921:                                  ; preds = %vector.body923.epil, %middle.block921.unr-lcssa
  %cmp.n929 = icmp eq i64 %n.vec927, %conv778
  br i1 %cmp.n929, label %for.end315, label %for.body220.preheader

for.body220.preheader:                            ; preds = %vector.memcheck912, %for.body220.lr.ph, %middle.block921
  %indvars.iv851.ph = phi i64 [ 0, %vector.memcheck912 ], [ 0, %for.body220.lr.ph ], [ %n.vec927, %middle.block921 ]
  %182 = xor i64 %indvars.iv851.ph, -1
  %183 = add nsw i64 %182, %conv778
  %xtraiter954 = and i64 %conv778, 3
  %lcmp.mod955.not = icmp eq i64 %xtraiter954, 0
  br i1 %lcmp.mod955.not, label %for.body220.prol.loopexit, label %for.body220.prol

for.body220.prol:                                 ; preds = %for.body220.preheader, %for.body220.prol
  %indvars.iv851.prol = phi i64 [ %indvars.iv.next852.prol, %for.body220.prol ], [ %indvars.iv851.ph, %for.body220.preheader ]
  %prol.iter956 = phi i64 [ %prol.iter956.next, %for.body220.prol ], [ 0, %for.body220.preheader ]
  %arrayidx223.prol = getelementptr inbounds i64, i64* %136, i64 %indvars.iv851.prol
  %184 = load i64, i64* %arrayidx223.prol, align 8, !tbaa !14
  %arrayidx225.prol = getelementptr inbounds i64, i64* %add.ptr216, i64 %indvars.iv851.prol
  store i64 %184, i64* %arrayidx225.prol, align 8, !tbaa !14
  %indvars.iv.next852.prol = add nuw nsw i64 %indvars.iv851.prol, 1
  %prol.iter956.next = add i64 %prol.iter956, 1
  %prol.iter956.cmp.not = icmp eq i64 %prol.iter956.next, %xtraiter954
  br i1 %prol.iter956.cmp.not, label %for.body220.prol.loopexit, label %for.body220.prol, !llvm.loop !61

for.body220.prol.loopexit:                        ; preds = %for.body220.prol, %for.body220.preheader
  %indvars.iv851.unr = phi i64 [ %indvars.iv851.ph, %for.body220.preheader ], [ %indvars.iv.next852.prol, %for.body220.prol ]
  %185 = icmp ult i64 %183, 3
  br i1 %185, label %for.end315, label %for.body220

for.body220:                                      ; preds = %for.body220.prol.loopexit, %for.body220
  %indvars.iv851 = phi i64 [ %indvars.iv.next852.3, %for.body220 ], [ %indvars.iv851.unr, %for.body220.prol.loopexit ]
  %arrayidx223 = getelementptr inbounds i64, i64* %136, i64 %indvars.iv851
  %186 = load i64, i64* %arrayidx223, align 8, !tbaa !14
  %arrayidx225 = getelementptr inbounds i64, i64* %add.ptr216, i64 %indvars.iv851
  store i64 %186, i64* %arrayidx225, align 8, !tbaa !14
  %indvars.iv.next852 = add nuw nsw i64 %indvars.iv851, 1
  %arrayidx223.1 = getelementptr inbounds i64, i64* %136, i64 %indvars.iv.next852
  %187 = load i64, i64* %arrayidx223.1, align 8, !tbaa !14
  %arrayidx225.1 = getelementptr inbounds i64, i64* %add.ptr216, i64 %indvars.iv.next852
  store i64 %187, i64* %arrayidx225.1, align 8, !tbaa !14
  %indvars.iv.next852.1 = add nuw nsw i64 %indvars.iv851, 2
  %arrayidx223.2 = getelementptr inbounds i64, i64* %136, i64 %indvars.iv.next852.1
  %188 = load i64, i64* %arrayidx223.2, align 8, !tbaa !14
  %arrayidx225.2 = getelementptr inbounds i64, i64* %add.ptr216, i64 %indvars.iv.next852.1
  store i64 %188, i64* %arrayidx225.2, align 8, !tbaa !14
  %indvars.iv.next852.2 = add nuw nsw i64 %indvars.iv851, 3
  %arrayidx223.3 = getelementptr inbounds i64, i64* %136, i64 %indvars.iv.next852.2
  %189 = load i64, i64* %arrayidx223.3, align 8, !tbaa !14
  %arrayidx225.3 = getelementptr inbounds i64, i64* %add.ptr216, i64 %indvars.iv.next852.2
  store i64 %189, i64* %arrayidx225.3, align 8, !tbaa !14
  %indvars.iv.next852.3 = add nuw nsw i64 %indvars.iv851, 4
  %exitcond855.not.3 = icmp eq i64 %indvars.iv.next852.3, %conv778
  br i1 %exitcond855.not.3, label %for.end315, label %for.body220, !llvm.loop !62

for.end315:                                       ; preds = %for.body220.prol.loopexit, %for.body220, %middle.block921, %for.end213
  %190 = load i64*, i64** %d140, align 8, !tbaa !13
  call void @bn_scatter5(i64* noundef %190, i64 noundef %conv135, i8* noundef %add.ptr, i64 noundef 0) #8
  %191 = load i64*, i64** %d143, align 8, !tbaa !13
  %192 = load i32, i32* %top144, align 8, !tbaa !6
  %conv233 = sext i32 %192 to i64
  call void @bn_scatter5(i64* noundef %191, i64 noundef %conv233, i8* noundef %add.ptr, i64 noundef 1) #8
  %193 = load i64*, i64** %d140, align 8, !tbaa !13
  %194 = load i64*, i64** %d143, align 8, !tbaa !13
  %call237 = call i32 @bn_mul_mont(i64* noundef %193, i64* noundef %194, i64* noundef %194, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2) #8
  %195 = load i64*, i64** %d140, align 8, !tbaa !13
  call void @bn_scatter5(i64* noundef %195, i64 noundef %conv135, i8* noundef %add.ptr, i64 noundef 2) #8
  %196 = load i64*, i64** %d140, align 8, !tbaa !13
  %call247 = call i32 @bn_mul_mont(i64* noundef %196, i64* noundef %196, i64* noundef %196, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2) #8
  %197 = load i64*, i64** %d140, align 8, !tbaa !13
  call void @bn_scatter5(i64* noundef %197, i64 noundef %conv135, i8* noundef %add.ptr, i64 noundef 4) #8
  %198 = load i64*, i64** %d140, align 8, !tbaa !13
  %call247.1 = call i32 @bn_mul_mont(i64* noundef %198, i64* noundef %198, i64* noundef %198, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2) #8
  %199 = load i64*, i64** %d140, align 8, !tbaa !13
  call void @bn_scatter5(i64* noundef %199, i64 noundef %conv135, i8* noundef %add.ptr, i64 noundef 8) #8
  %200 = load i64*, i64** %d140, align 8, !tbaa !13
  %call247.2 = call i32 @bn_mul_mont(i64* noundef %200, i64* noundef %200, i64* noundef %200, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2) #8
  %201 = load i64*, i64** %d140, align 8, !tbaa !13
  call void @bn_scatter5(i64* noundef %201, i64 noundef %conv135, i8* noundef %add.ptr, i64 noundef 16) #8
  %202 = load i64*, i64** %d140, align 8, !tbaa !13
  %203 = load i64*, i64** %d143, align 8, !tbaa !13
  call void @bn_mul_mont_gather5(i64* noundef %202, i64* noundef %203, i8* noundef %add.ptr, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2, i32 noundef 2) #8
  %204 = load i64*, i64** %d140, align 8, !tbaa !13
  call void @bn_scatter5(i64* noundef %204, i64 noundef %conv135, i8* noundef %add.ptr, i64 noundef 3) #8
  %205 = load i64*, i64** %d140, align 8, !tbaa !13
  %call272 = call i32 @bn_mul_mont(i64* noundef %205, i64* noundef %205, i64* noundef %205, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2) #8
  %206 = load i64*, i64** %d140, align 8, !tbaa !13
  call void @bn_scatter5(i64* noundef %206, i64 noundef %conv135, i8* noundef %add.ptr, i64 noundef 6) #8
  %207 = load i64*, i64** %d140, align 8, !tbaa !13
  %call272.1861 = call i32 @bn_mul_mont(i64* noundef %207, i64* noundef %207, i64* noundef %207, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2) #8
  %208 = load i64*, i64** %d140, align 8, !tbaa !13
  call void @bn_scatter5(i64* noundef %208, i64 noundef %conv135, i8* noundef %add.ptr, i64 noundef 12) #8
  %209 = load i64*, i64** %d140, align 8, !tbaa !13
  %call272.2863 = call i32 @bn_mul_mont(i64* noundef %209, i64* noundef %209, i64* noundef %209, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2) #8
  %210 = load i64*, i64** %d140, align 8, !tbaa !13
  call void @bn_scatter5(i64* noundef %210, i64 noundef %conv135, i8* noundef %add.ptr, i64 noundef 24) #8
  %211 = load i64*, i64** %d140, align 8, !tbaa !13
  %212 = load i64*, i64** %d143, align 8, !tbaa !13
  call void @bn_mul_mont_gather5(i64* noundef %211, i64* noundef %212, i8* noundef %add.ptr, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2, i32 noundef 4) #8
  %213 = load i64*, i64** %d140, align 8, !tbaa !13
  call void @bn_scatter5(i64* noundef %213, i64 noundef %conv135, i8* noundef %add.ptr, i64 noundef 5) #8
  %214 = load i64*, i64** %d140, align 8, !tbaa !13
  %call272.1 = call i32 @bn_mul_mont(i64* noundef %214, i64* noundef %214, i64* noundef %214, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2) #8
  %215 = load i64*, i64** %d140, align 8, !tbaa !13
  call void @bn_scatter5(i64* noundef %215, i64 noundef %conv135, i8* noundef %add.ptr, i64 noundef 10) #8
  %216 = load i64*, i64** %d140, align 8, !tbaa !13
  %call272.1.1 = call i32 @bn_mul_mont(i64* noundef %216, i64* noundef %216, i64* noundef %216, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2) #8
  %217 = load i64*, i64** %d140, align 8, !tbaa !13
  call void @bn_scatter5(i64* noundef %217, i64 noundef %conv135, i8* noundef %add.ptr, i64 noundef 20) #8
  %218 = load i64*, i64** %d140, align 8, !tbaa !13
  %219 = load i64*, i64** %d143, align 8, !tbaa !13
  call void @bn_mul_mont_gather5(i64* noundef %218, i64* noundef %219, i8* noundef %add.ptr, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2, i32 noundef 6) #8
  %220 = load i64*, i64** %d140, align 8, !tbaa !13
  call void @bn_scatter5(i64* noundef %220, i64 noundef %conv135, i8* noundef %add.ptr, i64 noundef 7) #8
  %221 = load i64*, i64** %d140, align 8, !tbaa !13
  %call272.2 = call i32 @bn_mul_mont(i64* noundef %221, i64* noundef %221, i64* noundef %221, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2) #8
  %222 = load i64*, i64** %d140, align 8, !tbaa !13
  call void @bn_scatter5(i64* noundef %222, i64 noundef %conv135, i8* noundef %add.ptr, i64 noundef 14) #8
  %223 = load i64*, i64** %d140, align 8, !tbaa !13
  %call272.2.1 = call i32 @bn_mul_mont(i64* noundef %223, i64* noundef %223, i64* noundef %223, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2) #8
  %224 = load i64*, i64** %d140, align 8, !tbaa !13
  call void @bn_scatter5(i64* noundef %224, i64 noundef %conv135, i8* noundef %add.ptr, i64 noundef 28) #8
  %225 = load i64*, i64** %d140, align 8, !tbaa !13
  %226 = load i64*, i64** %d143, align 8, !tbaa !13
  call void @bn_mul_mont_gather5(i64* noundef %225, i64* noundef %226, i8* noundef %add.ptr, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2, i32 noundef 8) #8
  %227 = load i64*, i64** %d140, align 8, !tbaa !13
  call void @bn_scatter5(i64* noundef %227, i64 noundef %conv135, i8* noundef %add.ptr, i64 noundef 9) #8
  %228 = load i64*, i64** %d140, align 8, !tbaa !13
  %call295 = call i32 @bn_mul_mont(i64* noundef %228, i64* noundef %228, i64* noundef %228, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2) #8
  %229 = load i64*, i64** %d140, align 8, !tbaa !13
  call void @bn_scatter5(i64* noundef %229, i64 noundef %conv135, i8* noundef %add.ptr, i64 noundef 18) #8
  %230 = load i64*, i64** %d140, align 8, !tbaa !13
  %231 = load i64*, i64** %d143, align 8, !tbaa !13
  call void @bn_mul_mont_gather5(i64* noundef %230, i64* noundef %231, i8* noundef %add.ptr, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2, i32 noundef 10) #8
  %232 = load i64*, i64** %d140, align 8, !tbaa !13
  call void @bn_scatter5(i64* noundef %232, i64 noundef %conv135, i8* noundef %add.ptr, i64 noundef 11) #8
  %233 = load i64*, i64** %d140, align 8, !tbaa !13
  %call295.1 = call i32 @bn_mul_mont(i64* noundef %233, i64* noundef %233, i64* noundef %233, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2) #8
  %234 = load i64*, i64** %d140, align 8, !tbaa !13
  call void @bn_scatter5(i64* noundef %234, i64 noundef %conv135, i8* noundef %add.ptr, i64 noundef 22) #8
  %235 = load i64*, i64** %d140, align 8, !tbaa !13
  %236 = load i64*, i64** %d143, align 8, !tbaa !13
  call void @bn_mul_mont_gather5(i64* noundef %235, i64* noundef %236, i8* noundef %add.ptr, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2, i32 noundef 12) #8
  %237 = load i64*, i64** %d140, align 8, !tbaa !13
  call void @bn_scatter5(i64* noundef %237, i64 noundef %conv135, i8* noundef %add.ptr, i64 noundef 13) #8
  %238 = load i64*, i64** %d140, align 8, !tbaa !13
  %call295.2 = call i32 @bn_mul_mont(i64* noundef %238, i64* noundef %238, i64* noundef %238, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2) #8
  %239 = load i64*, i64** %d140, align 8, !tbaa !13
  call void @bn_scatter5(i64* noundef %239, i64 noundef %conv135, i8* noundef %add.ptr, i64 noundef 26) #8
  %240 = load i64*, i64** %d140, align 8, !tbaa !13
  %241 = load i64*, i64** %d143, align 8, !tbaa !13
  call void @bn_mul_mont_gather5(i64* noundef %240, i64* noundef %241, i8* noundef %add.ptr, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2, i32 noundef 14) #8
  %242 = load i64*, i64** %d140, align 8, !tbaa !13
  call void @bn_scatter5(i64* noundef %242, i64 noundef %conv135, i8* noundef %add.ptr, i64 noundef 15) #8
  %243 = load i64*, i64** %d140, align 8, !tbaa !13
  %call295.3 = call i32 @bn_mul_mont(i64* noundef %243, i64* noundef %243, i64* noundef %243, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2) #8
  %244 = load i64*, i64** %d140, align 8, !tbaa !13
  call void @bn_scatter5(i64* noundef %244, i64 noundef %conv135, i8* noundef %add.ptr, i64 noundef 30) #8
  %245 = load i64*, i64** %d140, align 8, !tbaa !13
  %246 = load i64*, i64** %d143, align 8, !tbaa !13
  call void @bn_mul_mont_gather5(i64* noundef %245, i64* noundef %246, i8* noundef %add.ptr, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2, i32 noundef 16) #8
  %247 = load i64*, i64** %d140, align 8, !tbaa !13
  call void @bn_scatter5(i64* noundef %247, i64 noundef %conv135, i8* noundef %add.ptr, i64 noundef 17) #8
  %248 = load i64*, i64** %d140, align 8, !tbaa !13
  %249 = load i64*, i64** %d143, align 8, !tbaa !13
  call void @bn_mul_mont_gather5(i64* noundef %248, i64* noundef %249, i8* noundef %add.ptr, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2, i32 noundef 18) #8
  %250 = load i64*, i64** %d140, align 8, !tbaa !13
  call void @bn_scatter5(i64* noundef %250, i64 noundef %conv135, i8* noundef %add.ptr, i64 noundef 19) #8
  %251 = load i64*, i64** %d140, align 8, !tbaa !13
  %252 = load i64*, i64** %d143, align 8, !tbaa !13
  call void @bn_mul_mont_gather5(i64* noundef %251, i64* noundef %252, i8* noundef %add.ptr, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2, i32 noundef 20) #8
  %253 = load i64*, i64** %d140, align 8, !tbaa !13
  call void @bn_scatter5(i64* noundef %253, i64 noundef %conv135, i8* noundef %add.ptr, i64 noundef 21) #8
  %254 = load i64*, i64** %d140, align 8, !tbaa !13
  %255 = load i64*, i64** %d143, align 8, !tbaa !13
  call void @bn_mul_mont_gather5(i64* noundef %254, i64* noundef %255, i8* noundef %add.ptr, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2, i32 noundef 22) #8
  %256 = load i64*, i64** %d140, align 8, !tbaa !13
  call void @bn_scatter5(i64* noundef %256, i64 noundef %conv135, i8* noundef %add.ptr, i64 noundef 23) #8
  %257 = load i64*, i64** %d140, align 8, !tbaa !13
  %258 = load i64*, i64** %d143, align 8, !tbaa !13
  call void @bn_mul_mont_gather5(i64* noundef %257, i64* noundef %258, i8* noundef %add.ptr, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2, i32 noundef 24) #8
  %259 = load i64*, i64** %d140, align 8, !tbaa !13
  call void @bn_scatter5(i64* noundef %259, i64 noundef %conv135, i8* noundef %add.ptr, i64 noundef 25) #8
  %260 = load i64*, i64** %d140, align 8, !tbaa !13
  %261 = load i64*, i64** %d143, align 8, !tbaa !13
  call void @bn_mul_mont_gather5(i64* noundef %260, i64* noundef %261, i8* noundef %add.ptr, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2, i32 noundef 26) #8
  %262 = load i64*, i64** %d140, align 8, !tbaa !13
  call void @bn_scatter5(i64* noundef %262, i64 noundef %conv135, i8* noundef %add.ptr, i64 noundef 27) #8
  %263 = load i64*, i64** %d140, align 8, !tbaa !13
  %264 = load i64*, i64** %d143, align 8, !tbaa !13
  call void @bn_mul_mont_gather5(i64* noundef %263, i64* noundef %264, i8* noundef %add.ptr, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2, i32 noundef 28) #8
  %265 = load i64*, i64** %d140, align 8, !tbaa !13
  call void @bn_scatter5(i64* noundef %265, i64 noundef %conv135, i8* noundef %add.ptr, i64 noundef 29) #8
  %266 = load i64*, i64** %d140, align 8, !tbaa !13
  %267 = load i64*, i64** %d143, align 8, !tbaa !13
  call void @bn_mul_mont_gather5(i64* noundef %266, i64* noundef %267, i8* noundef %add.ptr, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2, i32 noundef 30) #8
  %268 = load i64*, i64** %d140, align 8, !tbaa !13
  call void @bn_scatter5(i64* noundef %268, i64 noundef %conv135, i8* noundef %add.ptr, i64 noundef 31) #8
  %sub316 = add nsw i32 %mul, -1
  %rem = srem i32 %sub316, 5
  %add317 = add nsw i32 %rem, 1
  %notmask775 = shl nsw i32 -1, %add317
  %sub319 = xor i32 %notmask775, -1
  %sub320 = sub nsw i32 %mul, %add317
  %call321 = call fastcc i64 @bn_get_bits(%struct.bignum_st* noundef %p, i32 noundef %sub320) #9
  %269 = trunc i64 %call321 to i32
  %conv324 = and i32 %269, %sub319
  %270 = load i64*, i64** %d140, align 8, !tbaa !13
  %conv327 = sext i32 %conv324 to i64
  call void @bn_gather5(i64* noundef %270, i64 noundef %conv135, i8* noundef %add.ptr, i64 noundef %conv327) #8
  %and328 = and i32 %2, 7
  %tobool329.not = icmp eq i32 %and328, 0
  %cmp360832 = icmp sgt i32 %sub320, 0
  br i1 %tobool329.not, label %while.cond359.preheader, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.end315
  br i1 %cmp360832, label %while.body.lr.ph, label %if.end369

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %d355 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %p, i64 0, i32 0
  br label %while.body

while.cond359.preheader:                          ; preds = %for.end315
  br i1 %cmp360832, label %while.body362.lr.ph, label %if.end369

while.body362.lr.ph:                              ; preds = %while.cond359.preheader
  %d365 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %p, i64 0, i32 0
  br label %while.body362

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %bits.0831 = phi i32 [ %sub320, %while.body.lr.ph ], [ %sub356, %while.body ]
  %271 = load i64*, i64** %d140, align 8, !tbaa !13
  %call336 = call i32 @bn_mul_mont(i64* noundef %271, i64* noundef %271, i64* noundef %271, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2) #8
  %272 = load i64*, i64** %d140, align 8, !tbaa !13
  %call340 = call i32 @bn_mul_mont(i64* noundef %272, i64* noundef %272, i64* noundef %272, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2) #8
  %273 = load i64*, i64** %d140, align 8, !tbaa !13
  %call344 = call i32 @bn_mul_mont(i64* noundef %273, i64* noundef %273, i64* noundef %273, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2) #8
  %274 = load i64*, i64** %d140, align 8, !tbaa !13
  %call348 = call i32 @bn_mul_mont(i64* noundef %274, i64* noundef %274, i64* noundef %274, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2) #8
  %275 = load i64*, i64** %d140, align 8, !tbaa !13
  %call352 = call i32 @bn_mul_mont(i64* noundef %275, i64* noundef %275, i64* noundef %275, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2) #8
  %276 = load i64*, i64** %d140, align 8, !tbaa !13
  %277 = load i64*, i64** %d355, align 8, !tbaa !13
  %sub356 = add nsw i32 %bits.0831, -5
  %call357 = call i32 @bn_get_bits5(i64* noundef %277, i32 noundef %sub356) #8
  call void @bn_mul_mont_gather5(i64* noundef %276, i64* noundef %276, i8* noundef %add.ptr, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2, i32 noundef %call357) #8
  %cmp331 = icmp ugt i32 %bits.0831, 5
  br i1 %cmp331, label %while.body, label %if.end369, !llvm.loop !63

while.body362:                                    ; preds = %while.body362.lr.ph, %while.body362
  %bits.1833 = phi i32 [ %sub320, %while.body362.lr.ph ], [ %sub366, %while.body362 ]
  %278 = load i64*, i64** %d140, align 8, !tbaa !13
  %279 = load i64*, i64** %d365, align 8, !tbaa !13
  %sub366 = add nsw i32 %bits.1833, -5
  %call367 = call i32 @bn_get_bits5(i64* noundef %279, i32 noundef %sub366) #8
  call void @bn_power5(i64* noundef %278, i64* noundef %278, i8* noundef %add.ptr, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2, i32 noundef %call367) #8
  %cmp360 = icmp ugt i32 %bits.1833, 5
  br i1 %cmp360, label %while.body362, label %if.end369, !llvm.loop !64

if.end369:                                        ; preds = %while.body, %while.body362, %while.cond.preheader, %while.cond359.preheader
  %280 = load i64*, i64** %d140, align 8, !tbaa !13
  %call372 = call i32 @bn_from_montgomery(i64* noundef %280, i64* noundef %280, i64* noundef null, i64* noundef %add.ptr216, i64* noundef nonnull %arraydecay, i32 noundef %2) #8
  store i32 %2, i32* %top145, align 8, !tbaa !6
  call void @bn_correct_top(%struct.bignum_st* noundef nonnull %tmp) #8
  %tobool374.not = icmp eq i32 %call372, 0
  br i1 %tobool374.not, label %if.end466, label %cleanup381

cleanup381:                                       ; preds = %if.end369
  %call376 = call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %rr, %struct.bignum_st* noundef nonnull %tmp) #8
  %tobool377.not = icmp eq %struct.bignum_st* %call376, null
  %spec.select780 = select i1 %tobool377.not, i32 0, i32 %call372
  br label %err

if.else385:                                       ; preds = %if.end183
  call fastcc void @MOD_EXP_CTIME_COPY_TO_PREBUF(%struct.bignum_st* noundef nonnull %tmp, i32 noundef %2, i8* noundef %add.ptr, i32 noundef 0, i32 noundef %window.0) #9
  call fastcc void @MOD_EXP_CTIME_COPY_TO_PREBUF(%struct.bignum_st* noundef nonnull %am, i32 noundef %2, i8* noundef %add.ptr, i32 noundef 1, i32 noundef %window.0) #9
  %cmp394 = icmp ugt i32 %window.0, 1
  br i1 %cmp394, label %if.then396, label %if.end420

if.then396:                                       ; preds = %if.else385
  %call397 = call i32 @bn_mul_mont_fixed_top(%struct.bignum_st* noundef nonnull %tmp, %struct.bignum_st* noundef nonnull %am, %struct.bignum_st* noundef nonnull %am, %struct.bn_mont_ctx_st* noundef nonnull %mont.0, %struct.bignum_ctx* noundef %ctx) #8
  %tobool398.not = icmp eq i32 %call397, 0
  br i1 %tobool398.not, label %err, label %for.body408.preheader

for.body408.preheader:                            ; preds = %if.then396
  call fastcc void @MOD_EXP_CTIME_COPY_TO_PREBUF(%struct.bignum_st* noundef nonnull %tmp, i32 noundef %2, i8* noundef %add.ptr, i32 noundef 2, i32 noundef %window.0) #9
  %umax = call i32 @llvm.umax.i32(i32 %shl, i32 4)
  br label %for.body408

for.body408:                                      ; preds = %for.body408.preheader, %if.end412
  %i.8813 = phi i32 [ %inc418, %if.end412 ], [ 3, %for.body408.preheader ]
  %call409 = call i32 @bn_mul_mont_fixed_top(%struct.bignum_st* noundef nonnull %tmp, %struct.bignum_st* noundef nonnull %am, %struct.bignum_st* noundef nonnull %tmp, %struct.bn_mont_ctx_st* noundef nonnull %mont.0, %struct.bignum_ctx* noundef %ctx) #8
  %tobool410.not = icmp eq i32 %call409, 0
  br i1 %tobool410.not, label %err, label %if.end412

if.end412:                                        ; preds = %for.body408
  call fastcc void @MOD_EXP_CTIME_COPY_TO_PREBUF(%struct.bignum_st* noundef nonnull %tmp, i32 noundef %2, i8* noundef %add.ptr, i32 noundef %i.8813, i32 noundef %window.0) #9
  %inc418 = add nuw nsw i32 %i.8813, 1
  %exitcond838.not = icmp eq i32 %inc418, %umax
  br i1 %exitcond838.not, label %if.end420, label %for.body408, !llvm.loop !65

if.end420:                                        ; preds = %if.end412, %if.else385
  %sub421 = add nsw i32 %mul, -1
  %rem422 = srem i32 %sub421, %window.0
  %add423 = add nsw i32 %rem422, 1
  %notmask = shl nsw i32 -1, %add423
  %sub425 = xor i32 %notmask, -1
  %sub426 = sub nsw i32 %mul, %add423
  %call427 = call fastcc i64 @bn_get_bits(%struct.bignum_st* noundef %p, i32 noundef %sub426) #9
  %281 = trunc i64 %call427 to i32
  %conv430 = and i32 %281, %sub425
  %call431 = call fastcc i32 @MOD_EXP_CTIME_COPY_FROM_PREBUF(%struct.bignum_st* noundef nonnull %tmp, i32 noundef %2, i8* noundef %add.ptr, i32 noundef %conv430, i32 noundef %window.0) #9
  %tobool432.not = icmp eq i32 %call431, 0
  br i1 %tobool432.not, label %err, label %if.end434

if.end434:                                        ; preds = %if.end420
  %sub436 = add nsw i32 %shl, -1
  br label %while.cond437

while.cond437:                                    ; preds = %if.end460, %if.end434
  %bits.2 = phi i32 [ %sub426, %if.end434 ], [ %sub452, %if.end460 ]
  %cmp438 = icmp sgt i32 %bits.2, 0
  br i1 %cmp438, label %for.body444, label %if.end466

for.cond441:                                      ; preds = %for.body444
  %exitcond840.not = icmp eq i32 %inc450, %window.0
  br i1 %exitcond840.not, label %for.end451, label %for.body444, !llvm.loop !66

for.body444:                                      ; preds = %while.cond437, %for.cond441
  %i.9814 = phi i32 [ %inc450, %for.cond441 ], [ 0, %while.cond437 ]
  %call445 = call i32 @bn_mul_mont_fixed_top(%struct.bignum_st* noundef nonnull %tmp, %struct.bignum_st* noundef nonnull %tmp, %struct.bignum_st* noundef nonnull %tmp, %struct.bn_mont_ctx_st* noundef nonnull %mont.0, %struct.bignum_ctx* noundef %ctx) #8
  %tobool446.not = icmp eq i32 %call445, 0
  %inc450 = add nuw nsw i32 %i.9814, 1
  br i1 %tobool446.not, label %err, label %for.cond441

for.end451:                                       ; preds = %for.cond441
  %sub452 = sub nsw i32 %bits.2, %window.0
  %call453 = call fastcc i64 @bn_get_bits(%struct.bignum_st* noundef %p, i32 noundef %sub452) #9
  %282 = trunc i64 %call453 to i32
  %conv456 = and i32 %sub436, %282
  %call457 = call fastcc i32 @MOD_EXP_CTIME_COPY_FROM_PREBUF(%struct.bignum_st* noundef nonnull %am, i32 noundef %2, i8* noundef %add.ptr, i32 noundef %conv456, i32 noundef %window.0) #9
  %tobool458.not = icmp eq i32 %call457, 0
  br i1 %tobool458.not, label %err, label %if.end460

if.end460:                                        ; preds = %for.end451
  %call461 = call i32 @bn_mul_mont_fixed_top(%struct.bignum_st* noundef nonnull %tmp, %struct.bignum_st* noundef nonnull %tmp, %struct.bignum_st* noundef nonnull %am, %struct.bn_mont_ctx_st* noundef nonnull %mont.0, %struct.bignum_ctx* noundef %ctx) #8
  %tobool462.not = icmp eq i32 %call461, 0
  br i1 %tobool462.not, label %err, label %while.cond437, !llvm.loop !67

if.end466:                                        ; preds = %while.cond437, %if.end369
  %call467 = call i32 @BN_from_montgomery(%struct.bignum_st* noundef %rr, %struct.bignum_st* noundef nonnull %tmp, %struct.bn_mont_ctx_st* noundef nonnull %mont.0, %struct.bignum_ctx* noundef %ctx) #8
  %tobool468.not = icmp ne i32 %call467, 0
  %spec.select783 = zext i1 %tobool468.not to i32
  br label %err

err:                                              ; preds = %for.body408, %if.end460, %for.end451, %for.body444, %lor.lhs.false28, %if.then25, %cleanup381, %if.end466, %if.end420, %if.then396, %if.end179, %if.else173, %if.else120, %if.then64, %if.then44, %if.end68, %if.end48
  %ret.4 = phi i32 [ 0, %if.then44 ], [ 1, %if.end48 ], [ 0, %if.then64 ], [ 1, %if.end68 ], [ %spec.select780, %cleanup381 ], [ 0, %if.end420 ], [ 0, %if.then396 ], [ 0, %if.end179 ], [ 0, %if.else173 ], [ 0, %if.else120 ], [ %spec.select783, %if.end466 ], [ 0, %if.then25 ], [ 0, %lor.lhs.false28 ], [ 0, %for.body444 ], [ 0, %for.end451 ], [ 0, %if.end460 ], [ 0, %for.body408 ]
  %powerbufFree.2 = phi i8* [ null, %if.then44 ], [ null, %if.end48 ], [ null, %if.then64 ], [ null, %if.end68 ], [ %spec.select, %cleanup381 ], [ %spec.select, %if.end420 ], [ %spec.select, %if.then396 ], [ %spec.select, %if.end179 ], [ %spec.select, %if.else173 ], [ null, %if.else120 ], [ %spec.select, %if.end466 ], [ null, %if.then25 ], [ null, %lor.lhs.false28 ], [ %spec.select, %for.body444 ], [ %spec.select, %for.end451 ], [ %spec.select, %if.end460 ], [ %spec.select, %for.body408 ]
  %powerbufLen.1 = phi i64 [ 0, %if.then44 ], [ 0, %if.end48 ], [ 0, %if.then64 ], [ 0, %if.end68 ], [ %add113, %cleanup381 ], [ %add113, %if.end420 ], [ %add113, %if.then396 ], [ %add113, %if.end179 ], [ %add113, %if.else173 ], [ %add113, %if.else120 ], [ %add113, %if.end466 ], [ 0, %if.then25 ], [ 0, %lor.lhs.false28 ], [ %add113, %for.body444 ], [ %add113, %for.end451 ], [ %add113, %if.end460 ], [ %add113, %for.body408 ]
  %powerbuf.0 = phi i8* [ null, %if.then44 ], [ null, %if.end48 ], [ null, %if.then64 ], [ null, %if.end68 ], [ %add.ptr, %cleanup381 ], [ %add.ptr, %if.end420 ], [ %add.ptr, %if.then396 ], [ %add.ptr, %if.end179 ], [ %add.ptr, %if.else173 ], [ null, %if.else120 ], [ %add.ptr, %if.end466 ], [ null, %if.then25 ], [ null, %lor.lhs.false28 ], [ %add.ptr, %for.body444 ], [ %add.ptr, %for.end451 ], [ %add.ptr, %if.end460 ], [ %add.ptr, %for.body408 ]
  br i1 %cmp10.not, label %if.then473, label %if.end474

if.then473:                                       ; preds = %if.else12, %if.end16, %err
  %powerbuf.0806 = phi i8* [ %powerbuf.0, %err ], [ null, %if.end16 ], [ null, %if.else12 ]
  %powerbufLen.1804 = phi i64 [ %powerbufLen.1, %err ], [ 0, %if.end16 ], [ 0, %if.else12 ]
  %powerbufFree.2802 = phi i8* [ %powerbufFree.2, %err ], [ null, %if.end16 ], [ null, %if.else12 ]
  %mont.1800 = phi %struct.bn_mont_ctx_st* [ %mont.0, %err ], [ %call13, %if.end16 ], [ null, %if.else12 ]
  %ret.4799 = phi i32 [ %ret.4, %err ], [ 0, %if.end16 ], [ 0, %if.else12 ]
  call void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef %mont.1800) #8
  br label %if.end474

if.end474:                                        ; preds = %if.then473, %err
  %powerbuf.0805 = phi i8* [ %powerbuf.0806, %if.then473 ], [ %powerbuf.0, %err ]
  %powerbufLen.1803 = phi i64 [ %powerbufLen.1804, %if.then473 ], [ %powerbufLen.1, %err ]
  %powerbufFree.2801 = phi i8* [ %powerbufFree.2802, %if.then473 ], [ %powerbufFree.2, %err ]
  %ret.4798 = phi i32 [ %ret.4799, %if.then473 ], [ %ret.4, %err ]
  %cmp475.not = icmp eq i8* %powerbuf.0805, null
  br i1 %cmp475.not, label %if.end479, label %if.then477

if.then477:                                       ; preds = %if.end474
  %sext = shl i64 %powerbufLen.1803, 32
  %conv478 = ashr exact i64 %sext, 32
  call void @OPENSSL_cleanse(i8* noundef nonnull %powerbuf.0805, i64 noundef %conv478) #8
  call void @CRYPTO_free(i8* noundef %powerbufFree.2801, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1120) #8
  br label %if.end479

if.end479:                                        ; preds = %if.then477, %if.end474
  call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #8
  br label %cleanup480

cleanup480:                                       ; preds = %if.then6, %if.else, %if.end479, %if.then
  %retval.0 = phi i32 [ %ret.4798, %if.end479 ], [ 0, %if.then ], [ 1, %if.then6 ], [ %call7, %if.else ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #10
  ret i32 %retval.0
}

declare %struct.bn_mont_ctx_st* @BN_MONT_CTX_new() local_unnamed_addr #2

declare i32 @BN_MONT_CTX_set(%struct.bn_mont_ctx_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_ucmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @bn_to_mont_fixed_top(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bn_mont_ctx_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @bn_mul_mont_fixed_top(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bn_mont_ctx_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_value_one() local_unnamed_addr #2

declare i32 @BN_from_montgomery(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bn_mont_ctx_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef) local_unnamed_addr #2

declare i32 @rsaz_avx2_eligible() local_unnamed_addr #2

declare void @RSAZ_1024_mod_exp_avx2(i64* noundef, i64* noundef, i64* noundef, i64* noundef, i64* noundef, i64 noundef) local_unnamed_addr #2

declare void @bn_correct_top(%struct.bignum_st* noundef) local_unnamed_addr #2

declare void @RSAZ_512_mod_exp(i64* noundef, i64* noundef, i64* noundef, i64* noundef, i64 noundef, i64* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare void @bn_scatter5(i64* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @bn_mul_mont(i64* noundef, i64* noundef, i64* noundef, i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #2

declare void @bn_mul_mont_gather5(i64* noundef, i64* noundef, i8* noundef, i64* noundef, i64* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i64 @bn_get_bits(%struct.bignum_st* nocapture noundef readonly %a, i32 noundef %bitpos) unnamed_addr #4 {
entry:
  %div = sdiv i32 %bitpos, 64
  %rem = srem i32 %bitpos, 64
  %cmp = icmp sgt i32 %bitpos, -64
  br i1 %cmp, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %entry
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !6
  %cmp1 = icmp slt i32 %div, %0
  br i1 %cmp1, label %if.then, label %if.end11

if.then:                                          ; preds = %land.lhs.true
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %1 = load i64*, i64** %d, align 8, !tbaa !13
  %idxprom = sext i32 %div to i64
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !14
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end11, label %if.then2

if.then2:                                         ; preds = %if.then
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %2, %sh_prom
  %inc = add nsw i32 %div, 1
  %cmp4 = icmp slt i32 %inc, %0
  br i1 %cmp4, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.then2
  %idxprom7 = sext i32 %inc to i64
  %arrayidx8 = getelementptr inbounds i64, i64* %1, i64 %idxprom7
  %3 = load i64, i64* %arrayidx8, align 8, !tbaa !14
  %sub = sub nsw i32 64, %rem
  %sh_prom9 = zext i32 %sub to i64
  %shl = shl i64 %3, %sh_prom9
  %or = or i64 %shl, %shr
  br label %if.end11

if.end11:                                         ; preds = %if.then, %if.then5, %if.then2, %land.lhs.true, %entry
  %ret.0 = phi i64 [ %or, %if.then5 ], [ %shr, %if.then2 ], [ %2, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ]
  ret i64 %ret.0
}

declare void @bn_gather5(i64* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @bn_get_bits5(i64* noundef, i32 noundef) local_unnamed_addr #2

declare void @bn_power5(i64* noundef, i64* noundef, i8* noundef, i64* noundef, i64* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @bn_from_montgomery(i64* noundef, i64* noundef, i64* noundef, i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @MOD_EXP_CTIME_COPY_TO_PREBUF(%struct.bignum_st* nocapture noundef readonly %b, i32 noundef %top, i8* nocapture noundef writeonly %buf, i32 noundef %idx, i32 noundef %window) unnamed_addr #5 {
entry:
  %0 = bitcast i8* %buf to i64*
  %top1 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 1
  %1 = load i32, i32* %top1, align 8, !tbaa !6
  %cmp = icmp slt i32 %1, %top
  %spec.select = select i1 %cmp, i32 %1, i32 %top
  %cmp31 = icmp sgt i32 %spec.select, 0
  br i1 %cmp31, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %shl = shl i32 1, %window
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 0
  %2 = load i64*, i64** %d, align 8, !tbaa !13
  %3 = sext i32 %idx to i64
  %4 = sext i32 %shl to i64
  %wide.trip.count = zext i32 %spec.select to i64
  %min.iters.check = icmp ugt i32 %spec.select, 3
  %ident.check.not = icmp eq i32 %window, 0
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.memcheck, label %for.body.preheader

vector.memcheck:                                  ; preds = %for.body.lr.ph
  %5 = bitcast i64* %2 to i8*
  %6 = shl nsw i64 %3, 3
  %scevgep = getelementptr i8, i8* %buf, i64 %6
  %7 = add nsw i64 %3, %wide.trip.count
  %8 = shl nsw i64 %7, 3
  %scevgep9 = getelementptr i8, i8* %buf, i64 %8
  %scevgep10 = getelementptr i64, i64* %2, i64 %wide.trip.count
  %scevgep1011 = bitcast i64* %scevgep10 to i8*
  %bound0 = icmp ult i8* %scevgep, %scevgep1011
  %bound1 = icmp ugt i8* %scevgep9, %5
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292
  %9 = mul nsw i64 %n.vec, %4
  %ind.end = add i64 %9, %3
  %10 = add nsw i64 %n.vec, -4
  %11 = lshr exact i64 %10, 2
  %12 = add nuw nsw i64 %11, 1
  %xtraiter = and i64 %12, 1
  %13 = icmp eq i64 %10, 0
  br i1 %13, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %12, 9223372036854775806
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %14 = mul i64 %index, %4
  %offset.idx = add i64 %14, %3
  %15 = getelementptr inbounds i64, i64* %2, i64 %index
  %16 = bitcast i64* %15 to <2 x i64>*
  %wide.load = load <2 x i64>, <2 x i64>* %16, align 8, !tbaa !14, !alias.scope !68
  %17 = getelementptr inbounds i64, i64* %15, i64 2
  %18 = bitcast i64* %17 to <2 x i64>*
  %wide.load13 = load <2 x i64>, <2 x i64>* %18, align 8, !tbaa !14, !alias.scope !68
  %19 = getelementptr inbounds i64, i64* %0, i64 %offset.idx
  %20 = bitcast i64* %19 to <2 x i64>*
  store <2 x i64> %wide.load, <2 x i64>* %20, align 8, !tbaa !14, !alias.scope !71, !noalias !68
  %21 = getelementptr inbounds i64, i64* %19, i64 2
  %22 = bitcast i64* %21 to <2 x i64>*
  store <2 x i64> %wide.load13, <2 x i64>* %22, align 8, !tbaa !14, !alias.scope !71, !noalias !68
  %index.next = or i64 %index, 4
  %23 = mul i64 %index.next, %4
  %offset.idx.1 = add i64 %23, %3
  %24 = getelementptr inbounds i64, i64* %2, i64 %index.next
  %25 = bitcast i64* %24 to <2 x i64>*
  %wide.load.1 = load <2 x i64>, <2 x i64>* %25, align 8, !tbaa !14, !alias.scope !68
  %26 = getelementptr inbounds i64, i64* %24, i64 2
  %27 = bitcast i64* %26 to <2 x i64>*
  %wide.load13.1 = load <2 x i64>, <2 x i64>* %27, align 8, !tbaa !14, !alias.scope !68
  %28 = getelementptr inbounds i64, i64* %0, i64 %offset.idx.1
  %29 = bitcast i64* %28 to <2 x i64>*
  store <2 x i64> %wide.load.1, <2 x i64>* %29, align 8, !tbaa !14, !alias.scope !71, !noalias !68
  %30 = getelementptr inbounds i64, i64* %28, i64 2
  %31 = bitcast i64* %30 to <2 x i64>*
  store <2 x i64> %wide.load13.1, <2 x i64>* %31, align 8, !tbaa !14, !alias.scope !71, !noalias !68
  %index.next.1 = add nuw i64 %index, 8
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !73

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %32 = mul i64 %index.unr, %4
  %offset.idx.epil = add i64 %32, %3
  %33 = getelementptr inbounds i64, i64* %2, i64 %index.unr
  %34 = bitcast i64* %33 to <2 x i64>*
  %wide.load.epil = load <2 x i64>, <2 x i64>* %34, align 8, !tbaa !14, !alias.scope !68
  %35 = getelementptr inbounds i64, i64* %33, i64 2
  %36 = bitcast i64* %35 to <2 x i64>*
  %wide.load13.epil = load <2 x i64>, <2 x i64>* %36, align 8, !tbaa !14, !alias.scope !68
  %37 = getelementptr inbounds i64, i64* %0, i64 %offset.idx.epil
  %38 = bitcast i64* %37 to <2 x i64>*
  store <2 x i64> %wide.load.epil, <2 x i64>* %38, align 8, !tbaa !14, !alias.scope !71, !noalias !68
  %39 = getelementptr inbounds i64, i64* %37, i64 2
  %40 = bitcast i64* %39 to <2 x i64>*
  store <2 x i64> %wide.load13.epil, <2 x i64>* %40, align 8, !tbaa !14, !alias.scope !71, !noalias !68
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %vector.memcheck, %for.body.lr.ph, %middle.block
  %indvars.iv4.ph = phi i64 [ %3, %vector.memcheck ], [ %3, %for.body.lr.ph ], [ %ind.end, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body.lr.ph ], [ %n.vec, %middle.block ]
  %41 = xor i64 %indvars.iv.ph, -1
  %42 = add nsw i64 %41, %wide.trip.count
  %xtraiter14 = and i64 %wide.trip.count, 3
  %lcmp.mod15.not = icmp eq i64 %xtraiter14, 0
  br i1 %lcmp.mod15.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader, %for.body.prol
  %indvars.iv4.prol = phi i64 [ %indvars.iv.next5.prol, %for.body.prol ], [ %indvars.iv4.ph, %for.body.preheader ]
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body.prol ], [ %indvars.iv.ph, %for.body.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader ]
  %arrayidx.prol = getelementptr inbounds i64, i64* %2, i64 %indvars.iv.prol
  %43 = load i64, i64* %arrayidx.prol, align 8, !tbaa !14
  %arrayidx5.prol = getelementptr inbounds i64, i64* %0, i64 %indvars.iv4.prol
  store i64 %43, i64* %arrayidx5.prol, align 8, !tbaa !14
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1
  %indvars.iv.next5.prol = add i64 %indvars.iv4.prol, %4
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter14
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !74

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %indvars.iv4.unr = phi i64 [ %indvars.iv4.ph, %for.body.preheader ], [ %indvars.iv.next5.prol, %for.body.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body.preheader ], [ %indvars.iv.next.prol, %for.body.prol ]
  %44 = icmp ult i64 %42, 3
  br i1 %44, label %for.end, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %indvars.iv4 = phi i64 [ %indvars.iv.next5.3, %for.body ], [ %indvars.iv4.unr, %for.body.prol.loopexit ]
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body ], [ %indvars.iv.unr, %for.body.prol.loopexit ]
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 %indvars.iv
  %45 = load i64, i64* %arrayidx, align 8, !tbaa !14
  %arrayidx5 = getelementptr inbounds i64, i64* %0, i64 %indvars.iv4
  store i64 %45, i64* %arrayidx5, align 8, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next5 = add i64 %indvars.iv4, %4
  %arrayidx.1 = getelementptr inbounds i64, i64* %2, i64 %indvars.iv.next
  %46 = load i64, i64* %arrayidx.1, align 8, !tbaa !14
  %arrayidx5.1 = getelementptr inbounds i64, i64* %0, i64 %indvars.iv.next5
  store i64 %46, i64* %arrayidx5.1, align 8, !tbaa !14
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %indvars.iv.next5.1 = add i64 %indvars.iv.next5, %4
  %arrayidx.2 = getelementptr inbounds i64, i64* %2, i64 %indvars.iv.next.1
  %47 = load i64, i64* %arrayidx.2, align 8, !tbaa !14
  %arrayidx5.2 = getelementptr inbounds i64, i64* %0, i64 %indvars.iv.next5.1
  store i64 %47, i64* %arrayidx5.2, align 8, !tbaa !14
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %indvars.iv.next5.2 = add i64 %indvars.iv.next5.1, %4
  %arrayidx.3 = getelementptr inbounds i64, i64* %2, i64 %indvars.iv.next.2
  %48 = load i64, i64* %arrayidx.3, align 8, !tbaa !14
  %arrayidx5.3 = getelementptr inbounds i64, i64* %0, i64 %indvars.iv.next5.2
  store i64 %48, i64* %arrayidx5.3, align 8, !tbaa !14
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %indvars.iv.next5.3 = add i64 %indvars.iv.next5.2, %4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %for.end, label %for.body, !llvm.loop !75

for.end:                                          ; preds = %for.body.prol.loopexit, %for.body, %middle.block, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @MOD_EXP_CTIME_COPY_FROM_PREBUF(%struct.bignum_st* noundef %b, i32 noundef %top, i8* noundef %buf, i32 noundef %idx, i32 noundef %window) unnamed_addr #0 {
entry:
  %shl = shl nuw i32 1, %window
  %0 = bitcast i8* %buf to i64*
  %call = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %b, i32 noundef %top) #8
  %cmp = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %window, 4
  br i1 %cmp1, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %if.end
  %cmp3157 = icmp sgt i32 %top, 0
  br i1 %cmp3157, label %for.cond4.preheader.lr.ph, label %if.end82

for.cond4.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 0
  %1 = load i64*, i64** %d, align 8, !tbaa !13
  %idx.ext = sext i32 %shl to i64
  %smax173 = call i32 @llvm.smax.i32(i32 %shl, i32 1)
  %wide.trip.count179 = zext i32 %top to i64
  %wide.trip.count174 = zext i32 %smax173 to i64
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.cond4.preheader.lr.ph, %for.end
  %indvars.iv176 = phi i64 [ 0, %for.cond4.preheader.lr.ph ], [ %indvars.iv.next177, %for.end ]
  %table.0158 = phi i64* [ %0, %for.cond4.preheader.lr.ph ], [ %add.ptr, %for.end ]
  br label %for.body6

for.body6:                                        ; preds = %for.cond4.preheader, %for.body6
  %indvars.iv170 = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next171, %for.body6 ]
  %acc.0154 = phi i64 [ 0, %for.cond4.preheader ], [ %or, %for.body6 ]
  %arrayidx = getelementptr inbounds i64, i64* %table.0158, i64 %indvars.iv170
  %2 = load volatile i64, i64* %arrayidx, align 8, !tbaa !14
  %3 = trunc i64 %indvars.iv170 to i32
  %call7 = tail call fastcc i32 @constant_time_eq_int(i32 noundef %3, i32 noundef %idx) #9
  %and = and i32 %call7, 1
  %conv = zext i32 %and to i64
  %sub = sub nsw i64 0, %conv
  %and8 = and i64 %2, %sub
  %or = or i64 %and8, %acc.0154
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1
  %exitcond175.not = icmp eq i64 %indvars.iv.next171, %wide.trip.count174
  br i1 %exitcond175.not, label %for.end, label %for.body6, !llvm.loop !76

for.end:                                          ; preds = %for.body6
  %arrayidx10 = getelementptr inbounds i64, i64* %1, i64 %indvars.iv176
  store i64 %or, i64* %arrayidx10, align 8, !tbaa !14
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1
  %add.ptr = getelementptr inbounds i64, i64* %table.0158, i64 %idx.ext
  %exitcond180.not = icmp eq i64 %indvars.iv.next177, %wide.trip.count179
  br i1 %exitcond180.not, label %if.end82, label %for.cond4.preheader, !llvm.loop !77

if.else:                                          ; preds = %if.end
  %sub14 = add nsw i32 %window, -2
  %shl15 = shl nuw i32 1, %sub14
  %shr = ashr i32 %idx, %sub14
  %sub17 = add nsw i32 %shl15, -1
  %and18 = and i32 %sub17, %idx
  %call19 = tail call fastcc i32 @constant_time_eq_int(i32 noundef %shr, i32 noundef 0) #9
  %and20 = and i32 %call19, 1
  %conv21 = zext i32 %and20 to i64
  %sub22 = sub nsw i64 0, %conv21
  %call23 = tail call fastcc i32 @constant_time_eq_int(i32 noundef %shr, i32 noundef 1) #9
  %and24 = and i32 %call23, 1
  %conv25 = zext i32 %and24 to i64
  %sub26 = sub nsw i64 0, %conv25
  %call27 = tail call fastcc i32 @constant_time_eq_int(i32 noundef %shr, i32 noundef 2) #9
  %and28 = and i32 %call27, 1
  %conv29 = zext i32 %and28 to i64
  %sub30 = sub nsw i64 0, %conv29
  %call31 = tail call fastcc i32 @constant_time_eq_int(i32 noundef %shr, i32 noundef 3) #9
  %and32 = and i32 %call31, 1
  %conv33 = zext i32 %and32 to i64
  %sub34 = sub nsw i64 0, %conv33
  %cmp36150 = icmp sgt i32 %top, 0
  br i1 %cmp36150, label %for.cond40.preheader.lr.ph, label %if.end82

for.cond40.preheader.lr.ph:                       ; preds = %if.else
  %cmp41147.not = icmp eq i32 %sub14, 31
  %mul53 = shl nsw i32 %shl15, 1
  %mul59 = shl i32 3, %sub14
  %d74 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 0
  %4 = load i64*, i64** %d74, align 8, !tbaa !13
  %5 = zext i32 %shl to i64
  %6 = sext i32 %shl15 to i64
  %7 = sext i32 %mul53 to i64
  %8 = sext i32 %mul59 to i64
  %smax = call i32 @llvm.smax.i32(i32 %shl15, i32 1)
  %wide.trip.count168 = zext i32 %top to i64
  %wide.trip.count = zext i32 %smax to i64
  br label %for.cond40.preheader

for.cond40.preheader:                             ; preds = %for.cond40.preheader.lr.ph, %for.end73
  %indvars.iv165 = phi i64 [ 0, %for.cond40.preheader.lr.ph ], [ %indvars.iv.next166, %for.end73 ]
  %table.1151 = phi i64* [ %0, %for.cond40.preheader.lr.ph ], [ %add.ptr80, %for.end73 ]
  br i1 %cmp41147.not, label %for.end73, label %for.body43

for.body43:                                       ; preds = %for.cond40.preheader, %for.body43
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body43 ], [ 0, %for.cond40.preheader ]
  %acc39.0149 = phi i64 [ %or70, %for.body43 ], [ 0, %for.cond40.preheader ]
  %arrayidx45 = getelementptr inbounds i64, i64* %table.1151, i64 %indvars.iv
  %9 = load volatile i64, i64* %arrayidx45, align 8, !tbaa !14
  %and46 = and i64 %9, %sub22
  %10 = add nuw nsw i64 %indvars.iv, %6
  %arrayidx50 = getelementptr inbounds i64, i64* %table.1151, i64 %10
  %11 = load volatile i64, i64* %arrayidx50, align 8, !tbaa !14
  %and51 = and i64 %11, %sub26
  %or52 = or i64 %and51, %and46
  %12 = add nsw i64 %indvars.iv, %7
  %arrayidx56 = getelementptr inbounds i64, i64* %table.1151, i64 %12
  %13 = load volatile i64, i64* %arrayidx56, align 8, !tbaa !14
  %and57 = and i64 %13, %sub30
  %or58 = or i64 %or52, %and57
  %14 = add nsw i64 %indvars.iv, %8
  %arrayidx62 = getelementptr inbounds i64, i64* %table.1151, i64 %14
  %15 = load volatile i64, i64* %arrayidx62, align 8, !tbaa !14
  %and63 = and i64 %15, %sub34
  %or64 = or i64 %or58, %and63
  %16 = trunc i64 %indvars.iv to i32
  %call65 = tail call fastcc i32 @constant_time_eq_int(i32 noundef %16, i32 noundef %and18) #9
  %and66 = and i32 %call65, 1
  %conv67 = zext i32 %and66 to i64
  %sub68 = sub nsw i64 0, %conv67
  %and69 = and i64 %or64, %sub68
  %or70 = or i64 %and69, %acc39.0149
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end73, label %for.body43, !llvm.loop !78

for.end73:                                        ; preds = %for.body43, %for.cond40.preheader
  %acc39.0.lcssa = phi i64 [ 0, %for.cond40.preheader ], [ %or70, %for.body43 ]
  %arrayidx76 = getelementptr inbounds i64, i64* %4, i64 %indvars.iv165
  store i64 %acc39.0.lcssa, i64* %arrayidx76, align 8, !tbaa !14
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1
  %add.ptr80 = getelementptr inbounds i64, i64* %table.1151, i64 %5
  %exitcond169.not = icmp eq i64 %indvars.iv.next166, %wide.trip.count168
  br i1 %exitcond169.not, label %if.end82, label %for.cond40.preheader, !llvm.loop !79

if.end82:                                         ; preds = %for.end73, %for.end, %if.else, %for.cond.preheader
  %top83 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 1
  store i32 %top, i32* %top83, align 8, !tbaa !6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end82
  %retval.0 = phi i32 [ 1, %if.end82 ], [ 0, %entry ]
  ret i32 %retval.0
}

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BN_to_montgomery(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bn_mont_ctx_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_mul_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BN_div(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_mod_mul_montgomery(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bn_mont_ctx_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @BN_mod_exp_simple(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %val = alloca [32 x %struct.bignum_st*], align 16
  %0 = bitcast [32 x %struct.bignum_st*]* %val to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #10
  %call = tail call i32 @BN_get_flags(%struct.bignum_st* noundef %p, i32 noundef 4) #8
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @BN_get_flags(%struct.bignum_st* noundef %a, i32 noundef 4) #8
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %lor.lhs.false3, label %if.then

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @BN_get_flags(%struct.bignum_st* noundef %m, i32 noundef 4) #8
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1287, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.BN_mod_exp_simple, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 786689, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %call6 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %p) #8
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.end
  %call9 = tail call i32 @BN_abs_is_word(%struct.bignum_st* noundef %m, i64 noundef 1) #8
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then8
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %r) #8
  br label %cleanup

if.else:                                          ; preds = %if.then8
  %call11 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %r, i64 noundef 1) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #8
  %call14 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #8
  %call15 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #8
  %arrayidx = getelementptr inbounds [32 x %struct.bignum_st*], [32 x %struct.bignum_st*]* %val, i64 0, i64 0
  store %struct.bignum_st* %call15, %struct.bignum_st** %arrayidx, align 16, !tbaa !17
  %cmp17 = icmp eq %struct.bignum_st* %call15, null
  br i1 %cmp17, label %err, label %if.end19

if.end19:                                         ; preds = %if.end13
  %call21 = tail call i32 @BN_nnmod(%struct.bignum_st* noundef nonnull %call15, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx) #8
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err, label %if.end24

if.end24:                                         ; preds = %if.end19
  %call26 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %call15) #8
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.end24
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %r) #8
  br label %err

if.end29:                                         ; preds = %if.end24
  %cmp30 = icmp sgt i32 %call6, 671
  br i1 %cmp30, label %if.then44, label %cond.false

cond.false:                                       ; preds = %if.end29
  %cmp31 = icmp sgt i32 %call6, 239
  br i1 %cmp31, label %if.then44, label %cond.false33

cond.false33:                                     ; preds = %cond.false
  %cmp34 = icmp sgt i32 %call6, 79
  br i1 %cmp34, label %if.then44, label %cond.false36

cond.false36:                                     ; preds = %cond.false33
  %cmp37 = icmp sgt i32 %call6, 23
  br i1 %cmp37, label %if.then44, label %if.end65

if.then44:                                        ; preds = %cond.false36, %if.end29, %cond.false, %cond.false33
  %cond42.ph = phi i32 [ 4, %cond.false33 ], [ 5, %cond.false ], [ 6, %if.end29 ], [ 3, %cond.false36 ]
  %call47 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef %call14, %struct.bignum_st* noundef nonnull %call15, %struct.bignum_st* noundef nonnull %call15, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx) #8
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %err, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then44
  %sub = add nsw i32 %cond42.ph, -1
  %shl = shl nuw nsw i32 1, %sub
  %wide.trip.count = zext i32 %shl to i64
  br label %for.body

for.cond:                                         ; preds = %lor.lhs.false55
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end65, label %for.body, !llvm.loop !80

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %indvars.iv = phi i64 [ 1, %for.body.preheader ], [ %indvars.iv.next, %for.cond ]
  %call52 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #8
  %arrayidx53 = getelementptr inbounds [32 x %struct.bignum_st*], [32 x %struct.bignum_st*]* %val, i64 0, i64 %indvars.iv
  store %struct.bignum_st* %call52, %struct.bignum_st** %arrayidx53, align 8, !tbaa !17
  %cmp54 = icmp eq %struct.bignum_st* %call52, null
  br i1 %cmp54, label %err, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %for.body
  %1 = add nsw i64 %indvars.iv, -1
  %arrayidx60 = getelementptr inbounds [32 x %struct.bignum_st*], [32 x %struct.bignum_st*]* %val, i64 0, i64 %1
  %2 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx60, align 8, !tbaa !17
  %call61 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef nonnull %call52, %struct.bignum_st* noundef %2, %struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx) #8
  %tobool62.not = icmp eq i32 %call61, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %tobool62.not, label %err, label %for.cond

if.end65:                                         ; preds = %for.cond, %cond.false36
  %cond42215 = phi i32 [ 1, %cond.false36 ], [ %cond42.ph, %for.cond ]
  %call67 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %r, i64 noundef 1) #8
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %err, label %for.cond71.preheader

for.cond71.preheader:                             ; preds = %if.end65
  %sub66 = add nsw i32 %call6, -1
  %cmp87227 = icmp ugt i32 %cond42215, 1
  br label %for.cond71.outer

for.cond71.outer:                                 ; preds = %for.cond71.preheader, %if.end121
  %wstart.0.ph = phi i32 [ %sub66, %for.cond71.preheader ], [ %sub123, %if.end121 ]
  %tobool103.not = phi i1 [ true, %for.cond71.preheader ], [ false, %if.end121 ]
  %tobool75.not = phi i1 [ false, %for.cond71.preheader ], [ true, %if.end121 ]
  %call72224 = tail call i32 @BN_is_bit_set(%struct.bignum_st* noundef %p, i32 noundef %wstart.0.ph) #8
  %cmp73225 = icmp eq i32 %call72224, 0
  br i1 %cmp73225, label %if.then74, label %for.cond86.preheader

for.cond86.preheader:                             ; preds = %if.end84, %for.cond71.outer
  %wstart.0.lcssa = phi i32 [ %wstart.0.ph, %for.cond71.outer ], [ %dec, %if.end84 ]
  br i1 %cmp87227, label %for.body88, label %for.end102

if.then74:                                        ; preds = %for.cond71.outer, %if.end84
  %wstart.0226 = phi i32 [ %dec, %if.end84 ], [ %wstart.0.ph, %for.cond71.outer ]
  br i1 %tobool75.not, label %if.then76, label %if.end81

if.then76:                                        ; preds = %if.then74
  %call77 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx) #8
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %err, label %if.end81

if.end81:                                         ; preds = %if.then76, %if.then74
  %cmp82 = icmp eq i32 %wstart.0226, 0
  br i1 %cmp82, label %err, label %if.end84

if.end84:                                         ; preds = %if.end81
  %dec = add nsw i32 %wstart.0226, -1
  %call72 = tail call i32 @BN_is_bit_set(%struct.bignum_st* noundef %p, i32 noundef %dec) #8
  %cmp73 = icmp eq i32 %call72, 0
  br i1 %cmp73, label %if.then74, label %for.cond86.preheader

for.body88:                                       ; preds = %for.cond86.preheader, %if.end92
  %wvalue.0230 = phi i32 [ %wvalue.1, %if.end92 ], [ 1, %for.cond86.preheader ]
  %i.1229 = phi i32 [ %inc101, %if.end92 ], [ 1, %for.cond86.preheader ]
  %wend.0228 = phi i32 [ %wend.1, %if.end92 ], [ 0, %for.cond86.preheader ]
  %sub89 = sub nsw i32 %wstart.0.lcssa, %i.1229
  %cmp90 = icmp slt i32 %sub89, 0
  br i1 %cmp90, label %for.end102, label %if.end92

if.end92:                                         ; preds = %for.body88
  %call94 = tail call i32 @BN_is_bit_set(%struct.bignum_st* noundef %p, i32 noundef %sub89) #8
  %tobool95.not = icmp eq i32 %call94, 0
  %sub97 = sub nsw i32 %i.1229, %wend.0228
  %shl98 = shl i32 %wvalue.0230, %sub97
  %or = or i32 %shl98, 1
  %wend.1 = select i1 %tobool95.not, i32 %wend.0228, i32 %i.1229
  %wvalue.1 = select i1 %tobool95.not, i32 %wvalue.0230, i32 %or
  %inc101 = add nuw nsw i32 %i.1229, 1
  %exitcond243.not = icmp eq i32 %inc101, %cond42215
  br i1 %exitcond243.not, label %for.end102, label %for.body88, !llvm.loop !81

for.end102:                                       ; preds = %if.end92, %for.body88, %for.cond86.preheader
  %wend.0.lcssa = phi i32 [ 0, %for.cond86.preheader ], [ %wend.0228, %for.body88 ], [ %wend.1, %if.end92 ]
  %wvalue.0.lcssa = phi i32 [ 1, %for.cond86.preheader ], [ %wvalue.0230, %for.body88 ], [ %wvalue.1, %if.end92 ]
  %add.neg = xor i32 %wend.0.lcssa, -1
  %cmp106.not235 = icmp slt i32 %wend.0.lcssa, 0
  %or.cond = select i1 %tobool103.not, i1 true, i1 %cmp106.not235
  br i1 %or.cond, label %if.end115, label %for.body107

for.cond105:                                      ; preds = %for.body107
  %inc113 = add nuw i32 %i.2236, 1
  %exitcond244.not = icmp eq i32 %i.2236, %wend.0.lcssa
  br i1 %exitcond244.not, label %if.end115, label %for.body107, !llvm.loop !82

for.body107:                                      ; preds = %for.end102, %for.cond105
  %i.2236 = phi i32 [ %inc113, %for.cond105 ], [ 0, %for.end102 ]
  %call108 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx) #8
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %err, label %for.cond105

if.end115:                                        ; preds = %for.cond105, %for.end102
  %shr = ashr i32 %wvalue.0.lcssa, 1
  %idxprom116 = sext i32 %shr to i64
  %arrayidx117 = getelementptr inbounds [32 x %struct.bignum_st*], [32 x %struct.bignum_st*]* %val, i64 0, i64 %idxprom116
  %3 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx117, align 8, !tbaa !17
  %call118 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %3, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx) #8
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %err, label %if.end121

if.end121:                                        ; preds = %if.end115
  %sub123 = add i32 %wstart.0.lcssa, %add.neg
  %cmp124 = icmp slt i32 %sub123, 0
  br i1 %cmp124, label %err, label %for.cond71.outer

err:                                              ; preds = %for.body, %lor.lhs.false55, %if.end121, %if.end115, %if.end81, %if.then76, %for.body107, %if.end65, %if.then44, %if.end19, %if.end13, %if.then28
  %ret.1 = phi i32 [ 0, %if.end13 ], [ 1, %if.then28 ], [ 0, %if.end65 ], [ 0, %if.then44 ], [ 0, %if.end19 ], [ 0, %for.body107 ], [ 0, %if.then76 ], [ 1, %if.end81 ], [ 0, %if.end115 ], [ 1, %if.end121 ], [ 0, %lor.lhs.false55 ], [ 0, %for.body ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.else, %err, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.1, %err ], [ 1, %if.then10 ], [ %call11, %if.else ]
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #10
  ret i32 %retval.0
}

declare i32 @BN_mod_mul(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @BN_mod_exp_mont_consttime_x2(%struct.bignum_st* noundef %rr1, %struct.bignum_st* noundef %a1, %struct.bignum_st* nocapture noundef readonly %p1, %struct.bignum_st* noundef %m1, %struct.bn_mont_ctx_st* noundef %in_mont1, %struct.bignum_st* noundef %rr2, %struct.bignum_st* noundef %a2, %struct.bignum_st* nocapture noundef readonly %p2, %struct.bignum_st* noundef %m2, %struct.bn_mont_ctx_st* noundef %in_mont2, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_rsaz_avx512ifma_eligible() #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end62, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a1, i64 0, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !6
  %cmp = icmp eq i32 %0, 16
  br i1 %cmp, label %land.lhs.true1, label %if.end62

land.lhs.true1:                                   ; preds = %land.lhs.true
  %top2 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %p1, i64 0, i32 1
  %1 = load i32, i32* %top2, align 8, !tbaa !6
  %cmp3 = icmp eq i32 %1, 16
  br i1 %cmp3, label %land.lhs.true4, label %if.end62

land.lhs.true4:                                   ; preds = %land.lhs.true1
  %call5 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %m1) #8
  %cmp6 = icmp eq i32 %call5, 1024
  br i1 %cmp6, label %land.lhs.true7, label %if.end62

land.lhs.true7:                                   ; preds = %land.lhs.true4
  %top8 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a2, i64 0, i32 1
  %2 = load i32, i32* %top8, align 8, !tbaa !6
  %cmp9 = icmp eq i32 %2, 16
  br i1 %cmp9, label %land.lhs.true10, label %if.end62

land.lhs.true10:                                  ; preds = %land.lhs.true7
  %top11 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %p2, i64 0, i32 1
  %3 = load i32, i32* %top11, align 8, !tbaa !6
  %cmp12 = icmp eq i32 %3, 16
  br i1 %cmp12, label %land.lhs.true13, label %if.end62

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %call14 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %m2) #8
  %cmp15 = icmp eq i32 %call14, 1024
  br i1 %cmp15, label %if.then, label %if.end62

if.then:                                          ; preds = %land.lhs.true13
  %call16 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %rr1, i32 noundef 16) #8
  %cmp17 = icmp eq %struct.bignum_st* %call16, null
  br i1 %cmp17, label %err, label %if.end

if.end:                                           ; preds = %if.then
  %call19 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %rr2, i32 noundef 16) #8
  %cmp20 = icmp eq %struct.bignum_st* %call19, null
  br i1 %cmp20, label %err, label %if.end22

if.end22:                                         ; preds = %if.end
  %cmp23.not = icmp eq %struct.bn_mont_ctx_st* %in_mont1, null
  br i1 %cmp23.not, label %if.else, label %if.end33

if.else:                                          ; preds = %if.end22
  %call25 = tail call %struct.bn_mont_ctx_st* @BN_MONT_CTX_new() #8
  %cmp26 = icmp eq %struct.bn_mont_ctx_st* %call25, null
  br i1 %cmp26, label %err, label %if.end28

if.end28:                                         ; preds = %if.else
  %call29 = tail call i32 @BN_MONT_CTX_set(%struct.bn_mont_ctx_st* noundef nonnull %call25, %struct.bignum_st* noundef %m1, %struct.bignum_ctx* noundef %ctx) #8
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %err, label %if.end33

if.end33:                                         ; preds = %if.end22, %if.end28
  %mont1.0 = phi %struct.bn_mont_ctx_st* [ %call25, %if.end28 ], [ %in_mont1, %if.end22 ]
  %cmp34.not = icmp eq %struct.bn_mont_ctx_st* %in_mont2, null
  br i1 %cmp34.not, label %if.else36, label %if.end45

if.else36:                                        ; preds = %if.end33
  %call37 = tail call %struct.bn_mont_ctx_st* @BN_MONT_CTX_new() #8
  %cmp38 = icmp eq %struct.bn_mont_ctx_st* %call37, null
  br i1 %cmp38, label %if.then66, label %if.end40

if.end40:                                         ; preds = %if.else36
  %call41 = tail call i32 @BN_MONT_CTX_set(%struct.bn_mont_ctx_st* noundef nonnull %call37, %struct.bignum_st* noundef %m2, %struct.bignum_ctx* noundef %ctx) #8
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then66, label %if.end45

if.end45:                                         ; preds = %if.end33, %if.end40
  %mont2.0 = phi %struct.bn_mont_ctx_st* [ %call37, %if.end40 ], [ %in_mont2, %if.end33 ]
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %rr1, i64 0, i32 0
  %4 = load i64*, i64** %d, align 8, !tbaa !13
  %d46 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a1, i64 0, i32 0
  %5 = load i64*, i64** %d46, align 8, !tbaa !13
  %d47 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %p1, i64 0, i32 0
  %6 = load i64*, i64** %d47, align 8, !tbaa !13
  %d48 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %m1, i64 0, i32 0
  %7 = load i64*, i64** %d48, align 8, !tbaa !13
  %d49 = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %mont1.0, i64 0, i32 1, i32 0
  %8 = load i64*, i64** %d49, align 8, !tbaa !34
  %arrayidx = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %mont1.0, i64 0, i32 4, i64 0
  %9 = load i64, i64* %arrayidx, align 8, !tbaa !14
  %d50 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %rr2, i64 0, i32 0
  %10 = load i64*, i64** %d50, align 8, !tbaa !13
  %d51 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a2, i64 0, i32 0
  %11 = load i64*, i64** %d51, align 8, !tbaa !13
  %d52 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %p2, i64 0, i32 0
  %12 = load i64*, i64** %d52, align 8, !tbaa !13
  %d53 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %m2, i64 0, i32 0
  %13 = load i64*, i64** %d53, align 8, !tbaa !13
  %d55 = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %mont2.0, i64 0, i32 1, i32 0
  %14 = load i64*, i64** %d55, align 8, !tbaa !34
  %arrayidx57 = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %mont2.0, i64 0, i32 4, i64 0
  %15 = load i64, i64* %arrayidx57, align 8, !tbaa !14
  %call58 = tail call i32 @ossl_rsaz_mod_exp_avx512_x2(i64* noundef %4, i64* noundef %5, i64* noundef %6, i64* noundef %7, i64* noundef %8, i64 noundef %9, i64* noundef %10, i64* noundef %11, i64* noundef %12, i64* noundef %13, i64* noundef %14, i64 noundef %15, i32 noundef 1024) #8
  %top59 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %rr1, i64 0, i32 1
  store i32 16, i32* %top59, align 8, !tbaa !6
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %rr1, i64 0, i32 3
  store i32 0, i32* %neg, align 8, !tbaa !12
  tail call void @bn_correct_top(%struct.bignum_st* noundef %rr1) #8
  %top60 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %rr2, i64 0, i32 1
  store i32 16, i32* %top60, align 8, !tbaa !6
  %neg61 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %rr2, i64 0, i32 3
  store i32 0, i32* %neg61, align 8, !tbaa !12
  tail call void @bn_correct_top(%struct.bignum_st* noundef %rr2) #8
  br label %err

if.end62:                                         ; preds = %land.lhs.true13, %land.lhs.true10, %land.lhs.true7, %land.lhs.true4, %land.lhs.true1, %land.lhs.true, %entry
  %call63 = tail call i32 @BN_mod_exp_mont_consttime(%struct.bignum_st* noundef %rr1, %struct.bignum_st* noundef %a1, %struct.bignum_st* noundef %p1, %struct.bignum_st* noundef %m1, %struct.bignum_ctx* noundef %ctx, %struct.bn_mont_ctx_st* noundef %in_mont1) #9
  %call64 = tail call i32 @BN_mod_exp_mont_consttime(%struct.bignum_st* noundef %rr2, %struct.bignum_st* noundef %a2, %struct.bignum_st* noundef %p2, %struct.bignum_st* noundef %m2, %struct.bignum_ctx* noundef %ctx, %struct.bn_mont_ctx_st* noundef %in_mont2) #9
  %and = and i32 %call64, %call63
  br label %err

err:                                              ; preds = %if.end28, %if.else, %if.end, %if.then, %if.end62, %if.end45
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.end ], [ %call58, %if.end45 ], [ 0, %if.else ], [ 0, %if.end28 ], [ %and, %if.end62 ]
  %mont1.1 = phi %struct.bn_mont_ctx_st* [ null, %if.then ], [ null, %if.end ], [ %mont1.0, %if.end45 ], [ null, %if.else ], [ %call25, %if.end28 ], [ null, %if.end62 ]
  %mont2.1 = phi %struct.bn_mont_ctx_st* [ null, %if.then ], [ null, %if.end ], [ %mont2.0, %if.end45 ], [ null, %if.else ], [ null, %if.end28 ], [ null, %if.end62 ]
  %cmp65 = icmp eq %struct.bn_mont_ctx_st* %in_mont2, null
  br i1 %cmp65, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.else36, %if.end40, %err
  %mont2.1122 = phi %struct.bn_mont_ctx_st* [ %mont2.1, %err ], [ %call37, %if.end40 ], [ null, %if.else36 ]
  %mont1.1121 = phi %struct.bn_mont_ctx_st* [ %mont1.1, %err ], [ %mont1.0, %if.end40 ], [ %mont1.0, %if.else36 ]
  %ret.0119 = phi i32 [ %ret.0, %err ], [ 0, %if.end40 ], [ 0, %if.else36 ]
  tail call void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef %mont2.1122) #8
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %err
  %mont1.1120 = phi %struct.bn_mont_ctx_st* [ %mont1.1121, %if.then66 ], [ %mont1.1, %err ]
  %ret.0118 = phi i32 [ %ret.0119, %if.then66 ], [ %ret.0, %err ]
  %cmp68 = icmp eq %struct.bn_mont_ctx_st* %in_mont1, null
  br i1 %cmp68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end67
  tail call void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef %mont1.1120) #8
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end67
  ret i32 %ret.0118
}

declare i32 @ossl_rsaz_avx512ifma_eligible() local_unnamed_addr #2

declare i32 @ossl_rsaz_mod_exp_avx512_x2(i64* noundef, i64* noundef, i64* noundef, i64* noundef, i64* noundef, i64 noundef, i64* noundef, i64* noundef, i64* noundef, i64* noundef, i64* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_eq_int(i32 noundef %a, i32 noundef %b) unnamed_addr #6 {
entry:
  %call = tail call fastcc i32 @constant_time_eq(i32 noundef %a, i32 noundef %b) #9
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_eq(i32 noundef %a, i32 noundef %b) unnamed_addr #6 {
entry:
  %xor = xor i32 %b, %a
  %call = tail call fastcc i32 @constant_time_is_zero(i32 noundef %xor) #9
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_is_zero(i32 noundef %a) unnamed_addr #6 {
entry:
  %neg = xor i32 %a, -1
  %sub = add i32 %a, -1
  %and = and i32 %sub, %neg
  %call = tail call fastcc i32 @constant_time_msb(i32 noundef %and) #9
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_msb(i32 noundef %a) unnamed_addr #6 {
entry:
  %shr.neg = ashr i32 %a, 31
  ret i32 %shr.neg
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind }

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
!12 = !{!7, !11, i64 16}
!13 = !{!7, !8, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !9, i64 0}
!16 = distinct !{!16, !5}
!17 = !{!8, !8, i64 0}
!18 = distinct !{!18, !5}
!19 = !{!20}
!20 = distinct !{!20, !21}
!21 = distinct !{!21, !"LVerDomain"}
!22 = !{!23}
!23 = distinct !{!23, !21}
!24 = distinct !{!24, !5, !25}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = distinct !{!28, !5, !25}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = !{!35, !8, i64 8}
!35 = !{!"bn_mont_ctx_st", !11, i64 0, !7, i64 8, !7, i64 32, !7, i64 56, !9, i64 80, !11, i64 96}
!36 = !{!7, !11, i64 12}
!37 = !{!7, !11, i64 20}
!38 = !{!39}
!39 = distinct !{!39, !40}
!40 = distinct !{!40, !"LVerDomain"}
!41 = !{!42}
!42 = distinct !{!42, !40}
!43 = distinct !{!43, !5, !25}
!44 = distinct !{!44, !27}
!45 = distinct !{!45, !5, !25}
!46 = distinct !{!46, !5, !25}
!47 = distinct !{!47, !27}
!48 = distinct !{!48, !5, !49, !25}
!49 = !{!"llvm.loop.unroll.runtime.disable"}
!50 = distinct !{!50, !5, !25}
!51 = distinct !{!51, !27}
!52 = distinct !{!52, !5, !49, !25}
!53 = !{!35, !8, i64 32}
!54 = !{!55}
!55 = distinct !{!55, !56}
!56 = distinct !{!56, !"LVerDomain"}
!57 = !{!58}
!58 = distinct !{!58, !56}
!59 = distinct !{!59, !5, !25}
!60 = distinct !{!60, !27}
!61 = distinct !{!61, !27}
!62 = distinct !{!62, !5, !25}
!63 = distinct !{!63, !5}
!64 = distinct !{!64, !5}
!65 = distinct !{!65, !5}
!66 = distinct !{!66, !5}
!67 = distinct !{!67, !5}
!68 = !{!69}
!69 = distinct !{!69, !70}
!70 = distinct !{!70, !"LVerDomain"}
!71 = !{!72}
!72 = distinct !{!72, !70}
!73 = distinct !{!73, !5, !25}
!74 = distinct !{!74, !27}
!75 = distinct !{!75, !5, !25}
!76 = distinct !{!76, !5}
!77 = distinct !{!77, !5}
!78 = distinct !{!78, !5}
!79 = distinct !{!79, !5}
!80 = distinct !{!80, !5}
!81 = distinct !{!81, !5}
!82 = distinct !{!82, !5}
