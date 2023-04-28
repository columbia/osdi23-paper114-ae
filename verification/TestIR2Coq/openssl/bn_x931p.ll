; ModuleID = 'crypto/bn/bn_x931p.c'
source_filename = "crypto/bn/bn_x931p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_st = type { i64*, i32, i32, i32, i32 }
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type { i32, i8*, %union.anon }
%union.anon = type { void (i32, i32, i8*)* }

; Function Attrs: noinline nounwind uwtable
define i32 @BN_X931_derive_prime_ex(%struct.bignum_st* noundef %p, %struct.bignum_st* noundef %p1, %struct.bignum_st* noundef %p2, %struct.bignum_st* noundef %Xp, %struct.bignum_st* noundef %Xp1, %struct.bignum_st* noundef %Xp2, %struct.bignum_st* noundef %e, %struct.bignum_ctx* noundef %ctx, %struct.bn_gencb_st* noundef %cb) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_is_odd(%struct.bignum_st* noundef %e) #2
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup91, label %if.end

if.end:                                           ; preds = %entry
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #2
  %cmp = icmp eq %struct.bignum_st* %p1, null
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %call2 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #2
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end
  %p1.addr.0 = phi %struct.bignum_st* [ %call2, %if.then1 ], [ %p1, %if.end ]
  %cmp4 = icmp eq %struct.bignum_st* %p2, null
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end3
  %call6 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #2
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3
  %p2.addr.0 = phi %struct.bignum_st* [ %call6, %if.then5 ], [ %p2, %if.end3 ]
  %call8 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #2
  %call9 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #2
  %call10 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #2
  %cmp11 = icmp eq %struct.bignum_st* %call10, null
  br i1 %cmp11, label %err, label %if.end13

if.end13:                                         ; preds = %if.end7
  %call14 = tail call fastcc i32 @bn_x931_derive_pi(%struct.bignum_st* noundef %p1.addr.0, %struct.bignum_st* noundef %Xp1, %struct.bignum_ctx* noundef %ctx, %struct.bn_gencb_st* noundef %cb) #3
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %if.end17

if.end17:                                         ; preds = %if.end13
  %call18 = tail call fastcc i32 @bn_x931_derive_pi(%struct.bignum_st* noundef %p2.addr.0, %struct.bignum_st* noundef %Xp2, %struct.bignum_ctx* noundef %ctx, %struct.bn_gencb_st* noundef %cb) #3
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %if.end21

if.end21:                                         ; preds = %if.end17
  %call22 = tail call i32 @BN_mul(%struct.bignum_st* noundef %call9, %struct.bignum_st* noundef %p1.addr.0, %struct.bignum_st* noundef %p2.addr.0, %struct.bignum_ctx* noundef %ctx) #2
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %err, label %if.end25

if.end25:                                         ; preds = %if.end21
  %call26 = tail call %struct.bignum_st* @BN_mod_inverse(%struct.bignum_st* noundef %p, %struct.bignum_st* noundef %p2.addr.0, %struct.bignum_st* noundef %p1.addr.0, %struct.bignum_ctx* noundef %ctx) #2
  %tobool27.not = icmp eq %struct.bignum_st* %call26, null
  br i1 %tobool27.not, label %err, label %if.end29

if.end29:                                         ; preds = %if.end25
  %call30 = tail call i32 @BN_mul(%struct.bignum_st* noundef %p, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %p2.addr.0, %struct.bignum_ctx* noundef %ctx) #2
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %err, label %if.end33

if.end33:                                         ; preds = %if.end29
  %call34 = tail call %struct.bignum_st* @BN_mod_inverse(%struct.bignum_st* noundef %call8, %struct.bignum_st* noundef %p1.addr.0, %struct.bignum_st* noundef %p2.addr.0, %struct.bignum_ctx* noundef %ctx) #2
  %tobool35.not = icmp eq %struct.bignum_st* %call34, null
  br i1 %tobool35.not, label %err, label %if.end37

if.end37:                                         ; preds = %if.end33
  %call38 = tail call i32 @BN_mul(%struct.bignum_st* noundef %call8, %struct.bignum_st* noundef %call8, %struct.bignum_st* noundef %p1.addr.0, %struct.bignum_ctx* noundef %ctx) #2
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %err, label %if.end41

if.end41:                                         ; preds = %if.end37
  %call42 = tail call i32 @BN_sub(%struct.bignum_st* noundef %p, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %call8) #2
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %err, label %if.end45

if.end45:                                         ; preds = %if.end41
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %p, i64 0, i32 3
  %0 = load i32, i32* %neg, align 8, !tbaa !4
  %tobool46.not = icmp eq i32 %0, 0
  br i1 %tobool46.not, label %if.end50, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end45
  %call47 = tail call i32 @BN_add(%struct.bignum_st* noundef nonnull %p, %struct.bignum_st* noundef nonnull %p, %struct.bignum_st* noundef %call9) #2
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %err, label %if.end50

if.end50:                                         ; preds = %land.lhs.true, %if.end45
  %call51 = tail call i32 @BN_mod_sub(%struct.bignum_st* noundef nonnull %p, %struct.bignum_st* noundef nonnull %p, %struct.bignum_st* noundef %Xp, %struct.bignum_st* noundef %call9, %struct.bignum_ctx* noundef %ctx) #2
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %err, label %if.end54

if.end54:                                         ; preds = %if.end50
  %call55 = tail call i32 @BN_add(%struct.bignum_st* noundef nonnull %p, %struct.bignum_st* noundef nonnull %p, %struct.bignum_st* noundef %Xp) #2
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %err, label %for.cond

for.cond:                                         ; preds = %if.end54, %if.end82
  %call59 = tail call i32 @BN_GENCB_call(%struct.bn_gencb_st* noundef %cb, i32 noundef 0, i32 noundef 1) #2
  %call60 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %call10, %struct.bignum_st* noundef %p) #2
  %tobool61.not = icmp eq %struct.bignum_st* %call60, null
  br i1 %tobool61.not, label %err, label %if.end63

if.end63:                                         ; preds = %for.cond
  %call64 = tail call i32 @BN_sub_word(%struct.bignum_st* noundef nonnull %call10, i64 noundef 1) #2
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %err, label %if.end67

if.end67:                                         ; preds = %if.end63
  %call68 = tail call i32 @BN_gcd(%struct.bignum_st* noundef %call8, %struct.bignum_st* noundef nonnull %call10, %struct.bignum_st* noundef %e, %struct.bignum_ctx* noundef %ctx) #2
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %err, label %if.end71

if.end71:                                         ; preds = %if.end67
  %call72 = tail call i32 @BN_is_one(%struct.bignum_st* noundef %call8) #2
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end82, label %if.then74

if.then74:                                        ; preds = %if.end71
  %call75 = tail call i32 @BN_check_prime(%struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx, %struct.bn_gencb_st* noundef %cb) #2
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %err, label %cleanup

cleanup:                                          ; preds = %if.then74
  %tobool79.not = icmp eq i32 %call75, 0
  br i1 %tobool79.not, label %if.end82, label %for.end

if.end82:                                         ; preds = %cleanup, %if.end71
  %call83 = tail call i32 @BN_add(%struct.bignum_st* noundef %p, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %call9) #2
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %err, label %for.cond

for.end:                                          ; preds = %cleanup
  %call90 = tail call i32 @BN_GENCB_call(%struct.bn_gencb_st* noundef %cb, i32 noundef 3, i32 noundef 0) #2
  br label %err

err:                                              ; preds = %if.end82, %if.then74, %if.end67, %if.end63, %for.cond, %if.end54, %if.end50, %land.lhs.true, %if.end41, %if.end37, %if.end33, %if.end29, %if.end25, %if.end21, %if.end17, %if.end13, %if.end7, %for.end
  %ret.0 = phi i32 [ 0, %if.end7 ], [ 1, %for.end ], [ 0, %if.end54 ], [ 0, %if.end50 ], [ 0, %land.lhs.true ], [ 0, %if.end41 ], [ 0, %if.end37 ], [ 0, %if.end33 ], [ 0, %if.end29 ], [ 0, %if.end25 ], [ 0, %if.end21 ], [ 0, %if.end17 ], [ 0, %if.end13 ], [ 0, %for.cond ], [ 0, %if.end63 ], [ 0, %if.end67 ], [ 0, %if.then74 ], [ 0, %if.end82 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #2
  br label %cleanup91

cleanup91:                                        ; preds = %entry, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @BN_is_odd(%struct.bignum_st* noundef) local_unnamed_addr #1

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @bn_x931_derive_pi(%struct.bignum_st* noundef %pi, %struct.bignum_st* noundef %Xpi, %struct.bignum_ctx* noundef %ctx, %struct.bn_gencb_st* noundef %cb) unnamed_addr #0 {
entry:
  %call = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %pi, %struct.bignum_st* noundef %Xpi) #2
  %tobool.not = icmp eq %struct.bignum_st* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @BN_is_odd(%struct.bignum_st* noundef %pi) #2
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true, label %for.cond.preheader

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call i32 @BN_add_word(%struct.bignum_st* noundef %pi, i64 noundef 1) #2
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %land.lhs.true, %if.end
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %if.end13
  %i.0 = phi i32 [ %inc, %if.end13 ], [ 0, %for.cond.preheader ]
  %inc = add nuw nsw i32 %i.0, 1
  %call7 = tail call i32 @BN_GENCB_call(%struct.bn_gencb_st* noundef %cb, i32 noundef 0, i32 noundef %inc) #2
  %call8 = tail call i32 @BN_check_prime(%struct.bignum_st* noundef %pi, %struct.bignum_ctx* noundef %ctx, %struct.bn_gencb_st* noundef %cb) #2
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %cleanup, label %if.end10

if.end10:                                         ; preds = %for.cond
  %tobool11.not = icmp eq i32 %call8, 0
  br i1 %tobool11.not, label %if.end13, label %for.end

if.end13:                                         ; preds = %if.end10
  %call14 = tail call i32 @BN_add_word(%struct.bignum_st* noundef %pi, i64 noundef 2) #2
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup, label %for.cond

for.end:                                          ; preds = %if.end10
  %call18 = tail call i32 @BN_GENCB_call(%struct.bn_gencb_st* noundef %cb, i32 noundef 2, i32 noundef %inc) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %for.cond, %land.lhs.true, %entry, %for.end
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %entry ], [ 0, %land.lhs.true ], [ 0, %for.cond ], [ 0, %if.end13 ]
  ret i32 %retval.0
}

declare i32 @BN_mul(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_mod_inverse(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_sub(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_add(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_mod_sub(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_GENCB_call(%struct.bn_gencb_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_sub_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @BN_gcd(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_is_one(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_check_prime(%struct.bignum_st* noundef, %struct.bignum_ctx* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #1

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @BN_X931_generate_Xpq(%struct.bignum_st* noundef %Xp, %struct.bignum_st* noundef %Xq, i32 noundef %nbits, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %nbits, 1023
  %and = and i32 %nbits, 255
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %shr43 = lshr i32 %nbits, 1
  %call = tail call i32 @BN_priv_rand_ex(%struct.bignum_st* noundef %Xp, i32 noundef %shr43, i32 noundef 1, i32 noundef 0, i32 noundef 0, %struct.bignum_ctx* noundef %ctx) #2
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #2
  %call4 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #2
  %cmp5 = icmp eq %struct.bignum_st* %call4, null
  br i1 %cmp5, label %err, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end3
  %sub = add nsw i32 %shr43, -100
  br label %for.body

for.cond:                                         ; preds = %if.end16
  %inc = add nuw nsw i32 %i.045, 1
  %cmp8 = icmp ult i32 %i.045, 999
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !10

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %cmp846 = phi i1 [ true, %for.cond.preheader ], [ %cmp8, %for.cond ]
  %i.045 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.cond ]
  %call9 = tail call i32 @BN_priv_rand_ex(%struct.bignum_st* noundef %Xq, i32 noundef %shr43, i32 noundef 1, i32 noundef 0, i32 noundef 0, %struct.bignum_ctx* noundef %ctx) #2
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %err, label %if.end12

if.end12:                                         ; preds = %for.body
  %call13 = tail call i32 @BN_sub(%struct.bignum_st* noundef nonnull %call4, %struct.bignum_st* noundef %Xp, %struct.bignum_st* noundef %Xq) #2
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %err, label %if.end16

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %call4) #2
  %cmp18 = icmp sgt i32 %call17, %sub
  br i1 %cmp18, label %for.end, label %for.cond

for.end:                                          ; preds = %if.end16, %for.cond
  %cmp8.lcssa = phi i1 [ %cmp846, %if.end16 ], [ %cmp8, %for.cond ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #2
  %. = zext i1 %cmp8.lcssa to i32
  br label %cleanup

err:                                              ; preds = %if.end12, %for.body, %if.end3
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #2
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end, %entry, %err
  %retval.0 = phi i32 [ 0, %err ], [ 0, %entry ], [ 0, %if.end ], [ %., %for.end ]
  ret i32 %retval.0
}

declare i32 @BN_priv_rand_ex(%struct.bignum_st* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @BN_X931_generate_prime_ex(%struct.bignum_st* noundef %p, %struct.bignum_st* noundef %p1, %struct.bignum_st* noundef %p2, %struct.bignum_st* noundef %Xp1, %struct.bignum_st* noundef %Xp2, %struct.bignum_st* noundef %Xp, %struct.bignum_st* noundef %e, %struct.bignum_ctx* noundef %ctx, %struct.bn_gencb_st* noundef %cb) local_unnamed_addr #0 {
entry:
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #2
  %cmp = icmp eq %struct.bignum_st* %Xp1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %Xp1.addr.0 = phi %struct.bignum_st* [ %call, %if.then ], [ %Xp1, %entry ]
  %cmp1 = icmp eq %struct.bignum_st* %Xp2, null
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #2
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %Xp2.addr.0 = phi %struct.bignum_st* [ %call3, %if.then2 ], [ %Xp2, %if.end ]
  %cmp5 = icmp eq %struct.bignum_st* %Xp1.addr.0, null
  %cmp6 = icmp eq %struct.bignum_st* %Xp2.addr.0, null
  %or.cond = select i1 %cmp5, i1 true, i1 %cmp6
  br i1 %or.cond, label %error, label %if.end8

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @BN_priv_rand_ex(%struct.bignum_st* noundef nonnull %Xp1.addr.0, i32 noundef 101, i32 noundef 0, i32 noundef 0, i32 noundef 0, %struct.bignum_ctx* noundef %ctx) #2
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %error, label %if.end11

if.end11:                                         ; preds = %if.end8
  %call12 = tail call i32 @BN_priv_rand_ex(%struct.bignum_st* noundef nonnull %Xp2.addr.0, i32 noundef 101, i32 noundef 0, i32 noundef 0, i32 noundef 0, %struct.bignum_ctx* noundef %ctx) #2
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %error, label %if.end15

if.end15:                                         ; preds = %if.end11
  %call16 = tail call i32 @BN_X931_derive_prime_ex(%struct.bignum_st* noundef %p, %struct.bignum_st* noundef %p1, %struct.bignum_st* noundef %p2, %struct.bignum_st* noundef %Xp, %struct.bignum_st* noundef nonnull %Xp1.addr.0, %struct.bignum_st* noundef nonnull %Xp2.addr.0, %struct.bignum_st* noundef %e, %struct.bignum_ctx* noundef %ctx, %struct.bn_gencb_st* noundef %cb) #3
  %tobool17.not = icmp ne i32 %call16, 0
  %spec.select = zext i1 %tobool17.not to i32
  br label %error

error:                                            ; preds = %if.end15, %if.end11, %if.end8, %if.end4
  %ret.0 = phi i32 [ 0, %if.end4 ], [ 0, %if.end11 ], [ 0, %if.end8 ], [ %spec.select, %if.end15 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #2
  ret i32 %ret.0
}

declare i32 @BN_add_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }
attributes #3 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 16}
!5 = !{!"bignum_st", !6, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
