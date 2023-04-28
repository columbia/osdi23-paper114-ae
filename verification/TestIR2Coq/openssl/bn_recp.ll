; ModuleID = 'crypto/bn/bn_recp.c'
source_filename = "crypto/bn/bn_recp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bn_recp_ctx_st = type { %struct.bignum_st, %struct.bignum_st, i32, i32, i32 }
%struct.bignum_st = type { i64*, i32, i32, i32, i32 }
%struct.bignum_ctx = type opaque

@.str = private unnamed_addr constant [20 x i8] c"crypto/bn/bn_recp.c\00", align 1
@__func__.BN_RECP_CTX_new = private unnamed_addr constant [16 x i8] c"BN_RECP_CTX_new\00", align 1
@__func__.BN_div_recp = private unnamed_addr constant [12 x i8] c"BN_div_recp\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @BN_RECP_CTX_init(%struct.bn_recp_ctx_st* noundef %recp) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.bn_recp_ctx_st* %recp to i8*
  %call = tail call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 64) #3
  %N = getelementptr inbounds %struct.bn_recp_ctx_st, %struct.bn_recp_ctx_st* %recp, i64 0, i32 0
  tail call void @bn_init(%struct.bignum_st* noundef %N) #3
  %Nr = getelementptr inbounds %struct.bn_recp_ctx_st, %struct.bn_recp_ctx_st* %recp, i64 0, i32 1
  tail call void @bn_init(%struct.bignum_st* noundef nonnull %Nr) #3
  ret void
}

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare void @bn_init(%struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.bn_recp_ctx_st* @BN_RECP_CTX_new() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 64, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 24) #3
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 25, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.BN_RECP_CTX_new, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 786688, i8* noundef null) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.bn_recp_ctx_st*
  %N = bitcast i8* %call to %struct.bignum_st*
  tail call void @bn_init(%struct.bignum_st* noundef nonnull %N) #3
  %Nr = getelementptr inbounds i8, i8* %call, i64 24
  %1 = bitcast i8* %Nr to %struct.bignum_st*
  tail call void @bn_init(%struct.bignum_st* noundef nonnull %1) #3
  %flags = getelementptr inbounds i8, i8* %call, i64 56
  %2 = bitcast i8* %flags to i32*
  store i32 1, i32* %2, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.bn_recp_ctx_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.bn_recp_ctx_st* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @BN_RECP_CTX_free(%struct.bn_recp_ctx_st* noundef %recp) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.bn_recp_ctx_st* %recp, null
  br i1 %cmp, label %if.end2, label %if.end

if.end:                                           ; preds = %entry
  %N = getelementptr inbounds %struct.bn_recp_ctx_st, %struct.bn_recp_ctx_st* %recp, i64 0, i32 0
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %N) #3
  %Nr = getelementptr inbounds %struct.bn_recp_ctx_st, %struct.bn_recp_ctx_st* %recp, i64 0, i32 1
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %Nr) #3
  %flags = getelementptr inbounds %struct.bn_recp_ctx_st, %struct.bn_recp_ctx_st* %recp, i64 0, i32 4
  %0 = load i32, i32* %flags, align 8, !tbaa !4
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  %1 = bitcast %struct.bn_recp_ctx_st* %recp to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 42) #3
  br label %if.end2

if.end2:                                          ; preds = %entry, %if.then1, %if.end
  ret void
}

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @BN_RECP_CTX_set(%struct.bn_recp_ctx_st* noundef %recp, %struct.bignum_st* noundef %d, %struct.bignum_ctx* nocapture noundef readnone %ctx) local_unnamed_addr #0 {
entry:
  %N = getelementptr inbounds %struct.bn_recp_ctx_st, %struct.bn_recp_ctx_st* %recp, i64 0, i32 0
  %call = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %N, %struct.bignum_st* noundef %d) #3
  %tobool.not = icmp eq %struct.bignum_st* %call, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %Nr = getelementptr inbounds %struct.bn_recp_ctx_st, %struct.bn_recp_ctx_st* %recp, i64 0, i32 1
  tail call void @BN_zero_ex(%struct.bignum_st* noundef nonnull %Nr) #3
  %call1 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %d) #3
  %num_bits = getelementptr inbounds %struct.bn_recp_ctx_st, %struct.bn_recp_ctx_st* %recp, i64 0, i32 2
  store i32 %call1, i32* %num_bits, align 8, !tbaa !11
  %shift = getelementptr inbounds %struct.bn_recp_ctx_st, %struct.bn_recp_ctx_st* %recp, i64 0, i32 3
  store i32 0, i32* %shift, align 4, !tbaa !12
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare void @BN_zero_ex(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @BN_mod_mul_reciprocal(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %x, %struct.bignum_st* noundef %y, %struct.bn_recp_ctx_st* noundef %recp, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #3
  %call = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  %cmp = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq %struct.bignum_st* %y, null
  br i1 %cmp1.not, label %if.end14, label %if.then2

if.then2:                                         ; preds = %if.end
  %cmp3 = icmp eq %struct.bignum_st* %x, %y
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then2
  %call5 = tail call i32 @BN_sqr(%struct.bignum_st* noundef nonnull %call, %struct.bignum_st* noundef nonnull %y, %struct.bignum_ctx* noundef %ctx) #3
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %err, label %if.end14

if.else:                                          ; preds = %if.then2
  %call8 = tail call i32 @BN_mul(%struct.bignum_st* noundef nonnull %call, %struct.bignum_st* noundef %x, %struct.bignum_st* noundef nonnull %y, %struct.bignum_ctx* noundef %ctx) #3
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %if.end14

if.end14:                                         ; preds = %if.end, %if.then4, %if.else
  %ca.0 = phi %struct.bignum_st* [ %call, %if.else ], [ %call, %if.then4 ], [ %x, %if.end ]
  %call15 = tail call i32 @BN_div_recp(%struct.bignum_st* noundef null, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %ca.0, %struct.bn_recp_ctx_st* noundef %recp, %struct.bignum_ctx* noundef %ctx) #4
  br label %err

err:                                              ; preds = %if.else, %if.then4, %entry, %if.end14
  %ret.0 = phi i32 [ 0, %entry ], [ %call15, %if.end14 ], [ 0, %if.then4 ], [ 0, %if.else ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #3
  ret i32 %ret.0
}

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_sqr(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_mul(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @BN_div_recp(%struct.bignum_st* noundef %dv, %struct.bignum_st* noundef %rem, %struct.bignum_st* noundef %m, %struct.bn_recp_ctx_st* noundef %recp, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #3
  %cmp.not = icmp eq %struct.bignum_st* %dv, null
  br i1 %cmp.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %entry
  %call = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi %struct.bignum_st* [ %call, %cond.false ], [ %dv, %entry ]
  %cmp1.not = icmp eq %struct.bignum_st* %rem, null
  br i1 %cmp1.not, label %cond.false3, label %cond.end5

cond.false3:                                      ; preds = %cond.end
  %call4 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  br label %cond.end5

cond.end5:                                        ; preds = %cond.end, %cond.false3
  %cond6 = phi %struct.bignum_st* [ %call4, %cond.false3 ], [ %rem, %cond.end ]
  %call7 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  %call8 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  %cmp9 = icmp eq %struct.bignum_st* %call8, null
  br i1 %cmp9, label %err, label %if.end

if.end:                                           ; preds = %cond.end5
  %N = getelementptr inbounds %struct.bn_recp_ctx_st, %struct.bn_recp_ctx_st* %recp, i64 0, i32 0
  %call10 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef %m, %struct.bignum_st* noundef %N) #3
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.end
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %cond) #3
  %call13 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %cond6, %struct.bignum_st* noundef %m) #3
  %tobool.not = icmp ne %struct.bignum_st* %call13, null
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #3
  %. = zext i1 %tobool.not to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %call17 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %m) #3
  %num_bits = getelementptr inbounds %struct.bn_recp_ctx_st, %struct.bn_recp_ctx_st* %recp, i64 0, i32 2
  %0 = load i32, i32* %num_bits, align 8, !tbaa !11
  %shl = shl i32 %0, 1
  %cmp18 = icmp sgt i32 %shl, %call17
  %spec.select = select i1 %cmp18, i32 %shl, i32 %call17
  %shift = getelementptr inbounds %struct.bn_recp_ctx_st, %struct.bn_recp_ctx_st* %recp, i64 0, i32 3
  %1 = load i32, i32* %shift, align 4, !tbaa !12
  %cmp21.not = icmp eq i32 %spec.select, %1
  br i1 %cmp21.not, label %if.end26, label %if.then22

if.then22:                                        ; preds = %if.end16
  %Nr = getelementptr inbounds %struct.bn_recp_ctx_st, %struct.bn_recp_ctx_st* %recp, i64 0, i32 1
  %call24 = tail call i32 @BN_reciprocal(%struct.bignum_st* noundef nonnull %Nr, %struct.bignum_st* noundef nonnull %N, i32 noundef %spec.select, %struct.bignum_ctx* noundef %ctx) #4
  store i32 %call24, i32* %shift, align 4, !tbaa !12
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.end16
  %2 = phi i32 [ %call24, %if.then22 ], [ %spec.select, %if.end16 ]
  %cmp28 = icmp eq i32 %2, -1
  br i1 %cmp28, label %err, label %if.end30

if.end30:                                         ; preds = %if.end26
  %3 = load i32, i32* %num_bits, align 8, !tbaa !11
  %call32 = tail call i32 @BN_rshift(%struct.bignum_st* noundef %call7, %struct.bignum_st* noundef %m, i32 noundef %3) #3
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %if.end35

if.end35:                                         ; preds = %if.end30
  %Nr36 = getelementptr inbounds %struct.bn_recp_ctx_st, %struct.bn_recp_ctx_st* %recp, i64 0, i32 1
  %call37 = tail call i32 @BN_mul(%struct.bignum_st* noundef nonnull %call8, %struct.bignum_st* noundef %call7, %struct.bignum_st* noundef nonnull %Nr36, %struct.bignum_ctx* noundef %ctx) #3
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %err, label %if.end40

if.end40:                                         ; preds = %if.end35
  %4 = load i32, i32* %num_bits, align 8, !tbaa !11
  %sub = sub nsw i32 %spec.select, %4
  %call42 = tail call i32 @BN_rshift(%struct.bignum_st* noundef %cond, %struct.bignum_st* noundef nonnull %call8, i32 noundef %sub) #3
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %err, label %if.end45

if.end45:                                         ; preds = %if.end40
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %cond, i64 0, i32 3
  store i32 0, i32* %neg, align 8, !tbaa !13
  %call47 = tail call i32 @BN_mul(%struct.bignum_st* noundef nonnull %call8, %struct.bignum_st* noundef nonnull %N, %struct.bignum_st* noundef %cond, %struct.bignum_ctx* noundef %ctx) #3
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %err, label %if.end50

if.end50:                                         ; preds = %if.end45
  %call51 = tail call i32 @BN_usub(%struct.bignum_st* noundef %cond6, %struct.bignum_st* noundef %m, %struct.bignum_st* noundef nonnull %call8) #3
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %err, label %if.end54

if.end54:                                         ; preds = %if.end50
  %neg55 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %cond6, i64 0, i32 3
  store i32 0, i32* %neg55, align 8, !tbaa !13
  %call57 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef %cond6, %struct.bignum_st* noundef nonnull %N) #3
  %cmp58 = icmp sgt i32 %call57, -1
  br i1 %cmp58, label %while.body, label %while.end

while.body:                                       ; preds = %if.end54
  %call63 = tail call i32 @BN_usub(%struct.bignum_st* noundef nonnull %cond6, %struct.bignum_st* noundef nonnull %cond6, %struct.bignum_st* noundef nonnull %N) #3
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %err, label %if.end66

if.then60:                                        ; preds = %while.cond.3
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 149, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.BN_div_recp, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 101, i8* noundef null) #3
  br label %err

if.end66:                                         ; preds = %while.body
  %call67 = tail call i32 @BN_add_word(%struct.bignum_st* noundef nonnull %cond, i64 noundef 1) #3
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %err, label %while.cond.1, !llvm.loop !14

while.cond.1:                                     ; preds = %if.end66
  %call57.1 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef nonnull %cond6, %struct.bignum_st* noundef nonnull %N) #3
  %cmp58.1 = icmp sgt i32 %call57.1, -1
  br i1 %cmp58.1, label %while.body.1, label %while.end

while.body.1:                                     ; preds = %while.cond.1
  %call63.1 = tail call i32 @BN_usub(%struct.bignum_st* noundef nonnull %cond6, %struct.bignum_st* noundef nonnull %cond6, %struct.bignum_st* noundef nonnull %N) #3
  %tobool64.not.1 = icmp eq i32 %call63.1, 0
  br i1 %tobool64.not.1, label %err, label %if.end66.1

if.end66.1:                                       ; preds = %while.body.1
  %call67.1 = tail call i32 @BN_add_word(%struct.bignum_st* noundef nonnull %cond, i64 noundef 1) #3
  %tobool68.not.1 = icmp eq i32 %call67.1, 0
  br i1 %tobool68.not.1, label %err, label %while.cond.2, !llvm.loop !14

while.cond.2:                                     ; preds = %if.end66.1
  %call57.2 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef nonnull %cond6, %struct.bignum_st* noundef nonnull %N) #3
  %cmp58.2 = icmp sgt i32 %call57.2, -1
  br i1 %cmp58.2, label %while.body.2, label %while.end

while.body.2:                                     ; preds = %while.cond.2
  %call63.2 = tail call i32 @BN_usub(%struct.bignum_st* noundef nonnull %cond6, %struct.bignum_st* noundef nonnull %cond6, %struct.bignum_st* noundef nonnull %N) #3
  %tobool64.not.2 = icmp eq i32 %call63.2, 0
  br i1 %tobool64.not.2, label %err, label %if.end66.2

if.end66.2:                                       ; preds = %while.body.2
  %call67.2 = tail call i32 @BN_add_word(%struct.bignum_st* noundef nonnull %cond, i64 noundef 1) #3
  %tobool68.not.2 = icmp eq i32 %call67.2, 0
  br i1 %tobool68.not.2, label %err, label %while.cond.3, !llvm.loop !14

while.cond.3:                                     ; preds = %if.end66.2
  %call57.3 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef nonnull %cond6, %struct.bignum_st* noundef nonnull %N) #3
  %cmp58.3 = icmp sgt i32 %call57.3, -1
  br i1 %cmp58.3, label %if.then60, label %while.end

while.end:                                        ; preds = %while.cond.3, %while.cond.2, %while.cond.1, %if.end54
  %call71 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %cond6) #3
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %cond.false74, label %cond.end76

cond.false74:                                     ; preds = %while.end
  %neg75 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %m, i64 0, i32 3
  %5 = load i32, i32* %neg75, align 8, !tbaa !13
  br label %cond.end76

cond.end76:                                       ; preds = %while.end, %cond.false74
  %cond77 = phi i32 [ %5, %cond.false74 ], [ 0, %while.end ]
  store i32 %cond77, i32* %neg55, align 8, !tbaa !13
  %neg79 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %m, i64 0, i32 3
  %6 = load i32, i32* %neg79, align 8, !tbaa !13
  %neg81 = getelementptr inbounds %struct.bn_recp_ctx_st, %struct.bn_recp_ctx_st* %recp, i64 0, i32 0, i32 3
  %7 = load i32, i32* %neg81, align 8, !tbaa !16
  %xor = xor i32 %7, %6
  store i32 %xor, i32* %neg, align 8, !tbaa !13
  br label %err

err:                                              ; preds = %if.end66, %while.body, %while.body.1, %if.end66.1, %while.body.2, %if.end66.2, %if.end50, %if.end45, %if.end40, %if.end35, %if.end30, %if.end26, %cond.end5, %cond.end76, %if.then60
  %ret.0 = phi i32 [ 0, %cond.end5 ], [ 0, %if.end26 ], [ 0, %if.then60 ], [ 1, %cond.end76 ], [ 0, %if.end50 ], [ 0, %if.end45 ], [ 0, %if.end40 ], [ 0, %if.end35 ], [ 0, %if.end30 ], [ 0, %if.end66.2 ], [ 0, %while.body.2 ], [ 0, %if.end66.1 ], [ 0, %while.body.1 ], [ 0, %while.body ], [ 0, %if.end66 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ %., %if.then12 ]
  ret i32 %retval.0
}

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_ucmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @BN_reciprocal(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %m, i32 noundef %len, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #3
  %call = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  %cmp = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @BN_set_bit(%struct.bignum_st* noundef nonnull %call, i32 noundef %len) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @BN_div(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef null, %struct.bignum_st* noundef nonnull %call, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx) #3
  %tobool5.not = icmp eq i32 %call4, 0
  %spec.select = select i1 %tobool5.not, i32 -1, i32 %len
  br label %err

err:                                              ; preds = %if.end3, %if.end, %entry
  %ret.0 = phi i32 [ -1, %entry ], [ -1, %if.end ], [ %spec.select, %if.end3 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #3
  ret i32 %ret.0
}

declare i32 @BN_rshift(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BN_usub(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_add_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_set_bit(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BN_div(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !10, i64 56}
!5 = !{!"bn_recp_ctx_st", !6, i64 0, !6, i64 24, !10, i64 48, !10, i64 52, !10, i64 56}
!6 = !{!"bignum_st", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!5, !10, i64 48}
!12 = !{!5, !10, i64 52}
!13 = !{!6, !10, i64 16}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!5, !10, i64 16}
