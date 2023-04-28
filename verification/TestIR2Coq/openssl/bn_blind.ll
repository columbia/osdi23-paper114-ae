; ModuleID = 'crypto/bn/bn_blind.c'
source_filename = "crypto/bn/bn_blind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bn_blinding_st = type { %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i64, i32, i64, %struct.bn_mont_ctx_st*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i8* }
%struct.bn_mont_ctx_st = type { i32, %struct.bignum_st, %struct.bignum_st, %struct.bignum_st, [2 x i64], i32 }
%struct.bignum_st = type { i64*, i32, i32, i32, i32 }
%struct.bignum_ctx = type opaque

@.str = private unnamed_addr constant [21 x i8] c"crypto/bn/bn_blind.c\00", align 1
@__func__.BN_BLINDING_new = private unnamed_addr constant [16 x i8] c"BN_BLINDING_new\00", align 1
@__func__.BN_BLINDING_update = private unnamed_addr constant [19 x i8] c"BN_BLINDING_update\00", align 1
@__func__.BN_BLINDING_convert_ex = private unnamed_addr constant [23 x i8] c"BN_BLINDING_convert_ex\00", align 1
@__func__.BN_BLINDING_invert_ex = private unnamed_addr constant [22 x i8] c"BN_BLINDING_invert_ex\00", align 1
@__func__.BN_BLINDING_create_param = private unnamed_addr constant [25 x i8] c"BN_BLINDING_create_param\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.bn_blinding_st* @BN_BLINDING_new(%struct.bignum_st* noundef %A, %struct.bignum_st* noundef %Ai, %struct.bignum_st* noundef %mod) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 80, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 36) #5
  %0 = bitcast i8* %call to %struct.bn_blinding_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 37, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.BN_BLINDING_new, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @CRYPTO_THREAD_lock_new() #5
  %lock = getelementptr inbounds i8, i8* %call, i64 72
  %1 = bitcast i8* %lock to i8**
  store i8* %call1, i8** %1, align 8, !tbaa !4
  %cmp3 = icmp eq i8* %call1, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.BN_BLINDING_new, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 786688, i8* noundef null) #5
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 44) #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void @BN_BLINDING_set_current_thread(%struct.bn_blinding_st* noundef nonnull %0) #6
  %cmp6.not = icmp eq %struct.bignum_st* %A, null
  br i1 %cmp6.not, label %if.end13, label %if.then7

if.then7:                                         ; preds = %if.end5
  %call8 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull %A) #5
  %A9 = bitcast i8* %call to %struct.bignum_st**
  store %struct.bignum_st* %call8, %struct.bignum_st** %A9, align 8, !tbaa !11
  %cmp10 = icmp eq %struct.bignum_st* %call8, null
  br i1 %cmp10, label %err, label %if.end13

if.end13:                                         ; preds = %if.then7, %if.end5
  %cmp14.not = icmp eq %struct.bignum_st* %Ai, null
  br i1 %cmp14.not, label %if.end21, label %if.then15

if.then15:                                        ; preds = %if.end13
  %call16 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull %Ai) #5
  %Ai17 = getelementptr inbounds i8, i8* %call, i64 8
  %2 = bitcast i8* %Ai17 to %struct.bignum_st**
  store %struct.bignum_st* %call16, %struct.bignum_st** %2, align 8, !tbaa !12
  %cmp18 = icmp eq %struct.bignum_st* %call16, null
  br i1 %cmp18, label %err, label %if.end21

if.end21:                                         ; preds = %if.then15, %if.end13
  %call22 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %mod) #5
  %mod23 = getelementptr inbounds i8, i8* %call, i64 24
  %3 = bitcast i8* %mod23 to %struct.bignum_st**
  store %struct.bignum_st* %call22, %struct.bignum_st** %3, align 8, !tbaa !13
  %cmp24 = icmp eq %struct.bignum_st* %call22, null
  br i1 %cmp24, label %err, label %if.end26

if.end26:                                         ; preds = %if.end21
  %call27 = tail call i32 @BN_get_flags(%struct.bignum_st* noundef %mod, i32 noundef 4) #5
  %cmp28.not = icmp eq i32 %call27, 0
  br i1 %cmp28.not, label %if.end31, label %if.then29

if.then29:                                        ; preds = %if.end26
  %4 = load %struct.bignum_st*, %struct.bignum_st** %3, align 8, !tbaa !13
  tail call void @BN_set_flags(%struct.bignum_st* noundef %4, i32 noundef 4) #5
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end26
  %counter = getelementptr inbounds i8, i8* %call, i64 40
  %5 = bitcast i8* %counter to i32*
  store i32 -1, i32* %5, align 8, !tbaa !14
  br label %cleanup

err:                                              ; preds = %if.end21, %if.then15, %if.then7
  tail call void @BN_BLINDING_free(%struct.bn_blinding_st* noundef nonnull %0) #6
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end31, %if.then4, %if.then
  %retval.0 = phi %struct.bn_blinding_st* [ null, %if.then ], [ null, %if.then4 ], [ null, %err ], [ %0, %if.end31 ]
  ret %struct.bn_blinding_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @BN_BLINDING_set_current_thread(%struct.bn_blinding_st* nocapture noundef writeonly %b) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @CRYPTO_THREAD_get_current_id() #5
  %tid = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %b, i64 0, i32 4
  store i64 %call, i64* %tid, align 8, !tbaa !15
  ret void
}

declare %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_get_flags(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @BN_set_flags(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @BN_BLINDING_free(%struct.bn_blinding_st* noundef %r) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.bn_blinding_st* %r, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %A = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %r, i64 0, i32 0
  %0 = load %struct.bignum_st*, %struct.bignum_st** %A, align 8, !tbaa !11
  tail call void @BN_free(%struct.bignum_st* noundef %0) #5
  %Ai = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %r, i64 0, i32 1
  %1 = load %struct.bignum_st*, %struct.bignum_st** %Ai, align 8, !tbaa !12
  tail call void @BN_free(%struct.bignum_st* noundef %1) #5
  %e = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %r, i64 0, i32 2
  %2 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !16
  tail call void @BN_free(%struct.bignum_st* noundef %2) #5
  %mod = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %r, i64 0, i32 3
  %3 = load %struct.bignum_st*, %struct.bignum_st** %mod, align 8, !tbaa !13
  tail call void @BN_free(%struct.bignum_st* noundef %3) #5
  %lock = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %r, i64 0, i32 9
  %4 = load i8*, i8** %lock, align 8, !tbaa !4
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %4) #5
  %5 = bitcast %struct.bn_blinding_st* %r to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 90) #5
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @BN_BLINDING_update(%struct.bn_blinding_st* noundef %b, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %A = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %b, i64 0, i32 0
  %0 = load %struct.bignum_st*, %struct.bignum_st** %A, align 8, !tbaa !11
  %cmp = icmp eq %struct.bignum_st* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %Ai = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %b, i64 0, i32 1
  %1 = load %struct.bignum_st*, %struct.bignum_st** %Ai, align 8, !tbaa !12
  %cmp1 = icmp eq %struct.bignum_st* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 98, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.BN_BLINDING_update, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 107, i8* noundef null) #5
  br label %err

if.end:                                           ; preds = %lor.lhs.false
  %counter = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %b, i64 0, i32 5
  %2 = load i32, i32* %counter, align 8, !tbaa !14
  %cmp2 = icmp eq i32 %2, -1
  br i1 %cmp2, label %if.end5.thread, label %if.end5

if.end5.thread:                                   ; preds = %if.end
  store i32 1, i32* %counter, align 8, !tbaa !14
  br label %if.else

if.end5:                                          ; preds = %if.end
  %inc = add nuw nsw i32 %2, 1
  store i32 %inc, i32* %counter, align 8, !tbaa !14
  %cmp7 = icmp eq i32 %inc, 32
  br i1 %cmp7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end5
  %e = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %b, i64 0, i32 2
  %3 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !16
  %cmp8.not = icmp eq %struct.bignum_st* %3, null
  br i1 %cmp8.not, label %if.else, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %b, i64 0, i32 6
  %4 = load i64, i64* %flags, align 8, !tbaa !17
  %and = and i64 %4, 2
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then10, label %if.else

if.then10:                                        ; preds = %land.lhs.true9
  %call = tail call %struct.bn_blinding_st* @BN_BLINDING_create_param(%struct.bn_blinding_st* noundef nonnull %b, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_ctx* noundef %ctx, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)* noundef null, %struct.bn_mont_ctx_st* noundef null) #6
  %tobool11.not = icmp eq %struct.bn_blinding_st* %call, null
  br i1 %tobool11.not, label %err, label %if.end52

if.else:                                          ; preds = %if.end5.thread, %land.lhs.true9, %land.lhs.true, %if.end5
  %flags14 = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %b, i64 0, i32 6
  %5 = load i64, i64* %flags14, align 8, !tbaa !17
  %and15 = and i64 %5, 1
  %tobool16.not = icmp eq i64 %and15, 0
  br i1 %tobool16.not, label %if.then17, label %if.end52

if.then17:                                        ; preds = %if.else
  %m_ctx = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %b, i64 0, i32 7
  %6 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %m_ctx, align 8, !tbaa !18
  %cmp18.not = icmp eq %struct.bn_mont_ctx_st* %6, null
  br i1 %cmp18.not, label %if.else35, label %if.then19

if.then19:                                        ; preds = %if.then17
  %call24 = tail call i32 @bn_mul_mont_fixed_top(%struct.bignum_st* noundef nonnull %1, %struct.bignum_st* noundef nonnull %1, %struct.bignum_st* noundef nonnull %1, %struct.bn_mont_ctx_st* noundef nonnull %6, %struct.bignum_ctx* noundef %ctx) #5
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %if.then19
  %7 = load %struct.bignum_st*, %struct.bignum_st** %A, align 8, !tbaa !11
  %8 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %m_ctx, align 8, !tbaa !18
  %call31 = tail call i32 @bn_mul_mont_fixed_top(%struct.bignum_st* noundef %7, %struct.bignum_st* noundef %7, %struct.bignum_st* noundef %7, %struct.bn_mont_ctx_st* noundef %8, %struct.bignum_ctx* noundef %ctx) #5
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %if.end52

if.else35:                                        ; preds = %if.then17
  %mod = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %b, i64 0, i32 3
  %9 = load %struct.bignum_st*, %struct.bignum_st** %mod, align 8, !tbaa !13
  %call39 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef nonnull %1, %struct.bignum_st* noundef nonnull %1, %struct.bignum_st* noundef nonnull %1, %struct.bignum_st* noundef %9, %struct.bignum_ctx* noundef %ctx) #5
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %if.else35
  %10 = load %struct.bignum_st*, %struct.bignum_st** %A, align 8, !tbaa !11
  %11 = load %struct.bignum_st*, %struct.bignum_st** %mod, align 8, !tbaa !13
  %call46 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef %10, %struct.bignum_st* noundef %10, %struct.bignum_st* noundef %10, %struct.bignum_st* noundef %11, %struct.bignum_ctx* noundef %ctx) #5
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %err, label %if.end52

if.end52:                                         ; preds = %if.else, %lor.lhs.false41, %lor.lhs.false26, %if.then10
  br label %err

err:                                              ; preds = %if.else35, %lor.lhs.false41, %if.then19, %lor.lhs.false26, %if.then10, %if.end52, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ 1, %if.end52 ], [ 0, %lor.lhs.false26 ], [ 0, %if.then19 ], [ 0, %lor.lhs.false41 ], [ 0, %if.else35 ], [ 0, %if.then10 ]
  %counter53 = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %b, i64 0, i32 5
  %12 = load i32, i32* %counter53, align 8, !tbaa !14
  %cmp54 = icmp eq i32 %12, 32
  br i1 %cmp54, label %if.then55, label %if.end57

if.then55:                                        ; preds = %err
  store i32 0, i32* %counter53, align 8, !tbaa !14
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %err
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.bn_blinding_st* @BN_BLINDING_create_param(%struct.bn_blinding_st* noundef %b, %struct.bignum_st* noundef %e, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)* noundef %bn_mod_exp, %struct.bn_mont_ctx_st* noundef %m_ctx) local_unnamed_addr #0 {
entry:
  %rv = alloca i32, align 4
  %cmp = icmp eq %struct.bn_blinding_st* %b, null
  br i1 %cmp, label %if.end, label %if.end3

if.end:                                           ; preds = %entry
  %call = tail call %struct.bn_blinding_st* @BN_BLINDING_new(%struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_st* noundef %m) #6
  %cmp1 = icmp eq %struct.bn_blinding_st* %call, null
  br i1 %cmp1, label %if.then95, label %if.end3

if.end3:                                          ; preds = %entry, %if.end
  %ret.0152 = phi %struct.bn_blinding_st* [ %call, %if.end ], [ %b, %entry ]
  %A = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %ret.0152, i64 0, i32 0
  %0 = load %struct.bignum_st*, %struct.bignum_st** %A, align 8, !tbaa !11
  %cmp4 = icmp eq %struct.bignum_st* %0, null
  br i1 %cmp4, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end3
  %call5 = tail call %struct.bignum_st* @BN_new() #5
  store %struct.bignum_st* %call5, %struct.bignum_st** %A, align 8, !tbaa !11
  %cmp7 = icmp eq %struct.bignum_st* %call5, null
  br i1 %cmp7, label %err, label %if.end9

if.end9:                                          ; preds = %land.lhs.true, %if.end3
  %Ai = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %ret.0152, i64 0, i32 1
  %1 = load %struct.bignum_st*, %struct.bignum_st** %Ai, align 8, !tbaa !12
  %cmp10 = icmp eq %struct.bignum_st* %1, null
  br i1 %cmp10, label %land.lhs.true11, label %if.end16

land.lhs.true11:                                  ; preds = %if.end9
  %call12 = tail call %struct.bignum_st* @BN_new() #5
  store %struct.bignum_st* %call12, %struct.bignum_st** %Ai, align 8, !tbaa !12
  %cmp14 = icmp eq %struct.bignum_st* %call12, null
  br i1 %cmp14, label %err, label %if.end16

if.end16:                                         ; preds = %land.lhs.true11, %if.end9
  %cmp17.not = icmp eq %struct.bignum_st* %e, null
  %e23.phi.trans.insert = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %ret.0152, i64 0, i32 2
  %.pre = load %struct.bignum_st*, %struct.bignum_st** %e23.phi.trans.insert, align 8, !tbaa !16
  br i1 %cmp17.not, label %if.end22, label %if.then18

if.then18:                                        ; preds = %if.end16
  tail call void @BN_free(%struct.bignum_st* noundef %.pre) #5
  %call20 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull %e) #5
  store %struct.bignum_st* %call20, %struct.bignum_st** %e23.phi.trans.insert, align 8, !tbaa !16
  br label %if.end22

if.end22:                                         ; preds = %if.end16, %if.then18
  %2 = phi %struct.bignum_st* [ %call20, %if.then18 ], [ %.pre, %if.end16 ]
  %e23 = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %ret.0152, i64 0, i32 2
  %cmp24 = icmp eq %struct.bignum_st* %2, null
  br i1 %cmp24, label %err, label %if.end26

if.end26:                                         ; preds = %if.end22
  %cmp27.not = icmp eq i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)* %bn_mod_exp, null
  br i1 %cmp27.not, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end26
  %bn_mod_exp29 = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %ret.0152, i64 0, i32 8
  store i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)* %bn_mod_exp, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)** %bn_mod_exp29, align 8, !tbaa !19
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end26
  %cmp31.not = icmp eq %struct.bn_mont_ctx_st* %m_ctx, null
  br i1 %cmp31.not, label %if.end34, label %if.then32

if.then32:                                        ; preds = %if.end30
  %m_ctx33 = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %ret.0152, i64 0, i32 7
  store %struct.bn_mont_ctx_st* %m_ctx, %struct.bn_mont_ctx_st** %m_ctx33, align 8, !tbaa !18
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end30
  %3 = bitcast i32* %rv to i8*
  %mod = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %ret.0152, i64 0, i32 3
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #7
  %4 = load %struct.bignum_st*, %struct.bignum_st** %A, align 8, !tbaa !11
  %5 = load %struct.bignum_st*, %struct.bignum_st** %mod, align 8, !tbaa !13
  %call36164 = call i32 @BN_priv_rand_range_ex(%struct.bignum_st* noundef %4, %struct.bignum_st* noundef %5, i32 noundef 0, %struct.bignum_ctx* noundef %ctx) #5
  %tobool.not165 = icmp eq i32 %call36164, 0
  br i1 %tobool.not165, label %cleanup.thread, label %if.end38

if.end38:                                         ; preds = %if.end34, %cleanup
  %retry_counter.0166 = phi i32 [ %dec, %cleanup ], [ 32, %if.end34 ]
  %6 = load %struct.bignum_st*, %struct.bignum_st** %Ai, align 8, !tbaa !12
  %7 = load %struct.bignum_st*, %struct.bignum_st** %A, align 8, !tbaa !11
  %8 = load %struct.bignum_st*, %struct.bignum_st** %mod, align 8, !tbaa !13
  %call42 = call %struct.bignum_st* @int_bn_mod_inverse(%struct.bignum_st* noundef %6, %struct.bignum_st* noundef %7, %struct.bignum_st* noundef %8, %struct.bignum_ctx* noundef %ctx, i32* noundef nonnull %rv) #5
  %tobool43.not = icmp eq %struct.bignum_st* %call42, null
  br i1 %tobool43.not, label %if.end45, label %do.end

if.end45:                                         ; preds = %if.end38
  %9 = load i32, i32* %rv, align 4, !tbaa !20
  %tobool46.not = icmp eq i32 %9, 0
  br i1 %tobool46.not, label %cleanup.thread, label %if.end48

if.end48:                                         ; preds = %if.end45
  %cmp49 = icmp eq i32 %retry_counter.0166, 0
  br i1 %cmp49, label %if.then50, label %cleanup

if.then50:                                        ; preds = %if.end48
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 285, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.BN_BLINDING_create_param, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 113, i8* noundef null) #5
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end45, %cleanup, %if.end34, %if.then50
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #7
  br label %err

cleanup:                                          ; preds = %if.end48
  %dec = add nsw i32 %retry_counter.0166, -1
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #7
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #7
  %10 = load %struct.bignum_st*, %struct.bignum_st** %A, align 8, !tbaa !11
  %11 = load %struct.bignum_st*, %struct.bignum_st** %mod, align 8, !tbaa !13
  %call36 = call i32 @BN_priv_rand_range_ex(%struct.bignum_st* noundef %10, %struct.bignum_st* noundef %11, i32 noundef 0, %struct.bignum_ctx* noundef %ctx) #5
  %tobool.not = icmp eq i32 %call36, 0
  br i1 %tobool.not, label %cleanup.thread, label %if.end38

do.end:                                           ; preds = %if.end38
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #7
  %bn_mod_exp52 = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %ret.0152, i64 0, i32 8
  %12 = load i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)** %bn_mod_exp52, align 8, !tbaa !19
  %cmp53.not = icmp eq i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)* %12, null
  br i1 %cmp53.not, label %if.else68, label %land.lhs.true54

land.lhs.true54:                                  ; preds = %do.end
  %m_ctx55 = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %ret.0152, i64 0, i32 7
  %13 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %m_ctx55, align 8, !tbaa !18
  %cmp56.not = icmp eq %struct.bn_mont_ctx_st* %13, null
  br i1 %cmp56.not, label %if.else68, label %if.then57

if.then57:                                        ; preds = %land.lhs.true54
  %14 = load %struct.bignum_st*, %struct.bignum_st** %A, align 8, !tbaa !11
  %15 = load %struct.bignum_st*, %struct.bignum_st** %e23, align 8, !tbaa !16
  %16 = load %struct.bignum_st*, %struct.bignum_st** %mod, align 8, !tbaa !13
  %call64 = call i32 %12(%struct.bignum_st* noundef %14, %struct.bignum_st* noundef %14, %struct.bignum_st* noundef %15, %struct.bignum_st* noundef %16, %struct.bignum_ctx* noundef %ctx, %struct.bn_mont_ctx_st* noundef nonnull %13) #5
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %err, label %if.end77

if.else68:                                        ; preds = %land.lhs.true54, %do.end
  %17 = load %struct.bignum_st*, %struct.bignum_st** %A, align 8, !tbaa !11
  %18 = load %struct.bignum_st*, %struct.bignum_st** %e23, align 8, !tbaa !16
  %19 = load %struct.bignum_st*, %struct.bignum_st** %mod, align 8, !tbaa !13
  %call73 = call i32 @BN_mod_exp(%struct.bignum_st* noundef %17, %struct.bignum_st* noundef %17, %struct.bignum_st* noundef %18, %struct.bignum_st* noundef %19, %struct.bignum_ctx* noundef %ctx) #5
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %err, label %if.end77

if.end77:                                         ; preds = %if.else68, %if.then57
  %m_ctx78 = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %ret.0152, i64 0, i32 7
  %20 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %m_ctx78, align 8, !tbaa !18
  %cmp79.not = icmp eq %struct.bn_mont_ctx_st* %20, null
  br i1 %cmp79.not, label %cleanup97, label %if.then80

if.then80:                                        ; preds = %if.end77
  %21 = load %struct.bignum_st*, %struct.bignum_st** %Ai, align 8, !tbaa !12
  %call84 = call i32 @bn_to_mont_fixed_top(%struct.bignum_st* noundef %21, %struct.bignum_st* noundef %21, %struct.bn_mont_ctx_st* noundef nonnull %20, %struct.bignum_ctx* noundef %ctx) #5
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then80
  %22 = load %struct.bignum_st*, %struct.bignum_st** %A, align 8, !tbaa !11
  %23 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %m_ctx78, align 8, !tbaa !18
  %call89 = call i32 @bn_to_mont_fixed_top(%struct.bignum_st* noundef %22, %struct.bignum_st* noundef %22, %struct.bn_mont_ctx_st* noundef %23, %struct.bignum_ctx* noundef %ctx) #5
  %tobool90.not = icmp eq i32 %call89, 0
  %24 = and i1 %cmp, %tobool90.not
  br i1 %24, label %if.then95, label %cleanup97

err:                                              ; preds = %cleanup.thread, %if.then80, %if.else68, %if.then57, %if.end22, %land.lhs.true11, %land.lhs.true
  br i1 %cmp, label %if.then95, label %cleanup97

if.then95:                                        ; preds = %if.end, %lor.lhs.false, %err
  %ret.0151 = phi %struct.bn_blinding_st* [ %ret.0152, %lor.lhs.false ], [ %ret.0152, %err ], [ null, %if.end ]
  call void @BN_BLINDING_free(%struct.bn_blinding_st* noundef %ret.0151) #6
  br label %cleanup97

cleanup97:                                        ; preds = %lor.lhs.false, %err, %if.then95, %if.end77
  %retval.0 = phi %struct.bn_blinding_st* [ %ret.0152, %lor.lhs.false ], [ %ret.0152, %if.end77 ], [ null, %if.then95 ], [ %ret.0152, %err ]
  ret %struct.bn_blinding_st* %retval.0
}

declare i32 @bn_mul_mont_fixed_top(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bn_mont_ctx_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_mod_mul(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @BN_BLINDING_convert(%struct.bignum_st* noundef %n, %struct.bn_blinding_st* noundef %b, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_BLINDING_convert_ex(%struct.bignum_st* noundef %n, %struct.bignum_st* noundef null, %struct.bn_blinding_st* noundef %b, %struct.bignum_ctx* noundef %ctx) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_BLINDING_convert_ex(%struct.bignum_st* noundef %n, %struct.bignum_st* noundef %r, %struct.bn_blinding_st* noundef %b, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %A = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %b, i64 0, i32 0
  %0 = load %struct.bignum_st*, %struct.bignum_st** %A, align 8, !tbaa !11
  %cmp = icmp eq %struct.bignum_st* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %Ai = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %b, i64 0, i32 1
  %1 = load %struct.bignum_st*, %struct.bignum_st** %Ai, align 8, !tbaa !12
  %cmp1 = icmp eq %struct.bignum_st* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 141, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.BN_BLINDING_convert_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 107, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %counter = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %b, i64 0, i32 5
  %2 = load i32, i32* %counter, align 8, !tbaa !14
  %cmp2 = icmp eq i32 %2, -1
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  store i32 0, i32* %counter, align 8, !tbaa !14
  br label %if.end7

if.else:                                          ; preds = %if.end
  %call = tail call i32 @BN_BLINDING_update(%struct.bn_blinding_st* noundef nonnull %b, %struct.bignum_ctx* noundef %ctx) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  %cmp8.not = icmp eq %struct.bignum_st* %r, null
  br i1 %cmp8.not, label %if.end13, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end7
  %3 = load %struct.bignum_st*, %struct.bignum_st** %Ai, align 8, !tbaa !12
  %call10 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %r, %struct.bignum_st* noundef %3) #5
  %cmp11 = icmp eq %struct.bignum_st* %call10, null
  br i1 %cmp11, label %cleanup, label %if.end13

if.end13:                                         ; preds = %land.lhs.true, %if.end7
  %m_ctx = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %b, i64 0, i32 7
  %4 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %m_ctx, align 8, !tbaa !18
  %cmp14.not = icmp eq %struct.bn_mont_ctx_st* %4, null
  %5 = load %struct.bignum_st*, %struct.bignum_st** %A, align 8, !tbaa !11
  br i1 %cmp14.not, label %if.else19, label %if.then15

if.then15:                                        ; preds = %if.end13
  %call18 = tail call i32 @BN_mod_mul_montgomery(%struct.bignum_st* noundef %n, %struct.bignum_st* noundef %n, %struct.bignum_st* noundef %5, %struct.bn_mont_ctx_st* noundef nonnull %4, %struct.bignum_ctx* noundef %ctx) #5
  br label %cleanup

if.else19:                                        ; preds = %if.end13
  %mod = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %b, i64 0, i32 3
  %6 = load %struct.bignum_st*, %struct.bignum_st** %mod, align 8, !tbaa !13
  %call21 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef %n, %struct.bignum_st* noundef %n, %struct.bignum_st* noundef %5, %struct.bignum_st* noundef %6, %struct.bignum_ctx* noundef %ctx) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.else19, %land.lhs.true, %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.else ], [ 0, %land.lhs.true ], [ %call18, %if.then15 ], [ %call21, %if.else19 ]
  ret i32 %retval.0
}

declare %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_mod_mul_montgomery(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bn_mont_ctx_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @BN_BLINDING_invert(%struct.bignum_st* noundef %n, %struct.bn_blinding_st* nocapture noundef readonly %b, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_BLINDING_invert_ex(%struct.bignum_st* noundef %n, %struct.bignum_st* noundef null, %struct.bn_blinding_st* noundef %b, %struct.bignum_ctx* noundef %ctx) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_BLINDING_invert_ex(%struct.bignum_st* noundef %n, %struct.bignum_st* noundef %r, %struct.bn_blinding_st* nocapture noundef readonly %b, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.bignum_st* %r, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %Ai = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %b, i64 0, i32 1
  %0 = load %struct.bignum_st*, %struct.bignum_st** %Ai, align 8, !tbaa !12
  %cmp1 = icmp eq %struct.bignum_st* %0, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 175, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.BN_BLINDING_invert_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 107, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %r.addr.0 = phi %struct.bignum_st* [ %0, %land.lhs.true ], [ %r, %entry ]
  %m_ctx = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %b, i64 0, i32 7
  %1 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %m_ctx, align 8, !tbaa !18
  %cmp2.not = icmp eq %struct.bn_mont_ctx_st* %1, null
  br i1 %cmp2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %dmax = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %n, i64 0, i32 2
  %2 = load i32, i32* %dmax, align 4, !tbaa !21
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r.addr.0, i64 0, i32 1
  %3 = load i32, i32* %top, align 8, !tbaa !23
  %cmp4.not = icmp slt i32 %2, %3
  br i1 %cmp4.not, label %if.end26, label %if.then5

if.then5:                                         ; preds = %if.then3
  %top7 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %n, i64 0, i32 1
  %4 = load i32, i32* %top7, align 8, !tbaa !23
  %conv8 = sext i32 %4 to i64
  %cmp962.not = icmp eq i32 %3, 0
  br i1 %cmp962.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then5
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %n, i64 0, i32 0
  %5 = load i64*, i64** %d, align 8, !tbaa !24
  %umax = sext i32 %3 to i64
  %xtraiter = and i64 %umax, 1
  %6 = icmp eq i32 %3, 1
  br i1 %6, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %umax, -2
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %i.063 = phi i64 [ 0, %for.body.lr.ph.new ], [ %inc.1, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.1, %for.body ]
  %sub = sub i64 %i.063, %conv8
  %arrayidx = getelementptr inbounds i64, i64* %5, i64 %i.063
  %7 = load i64, i64* %arrayidx, align 8, !tbaa !25
  %isneg = icmp slt i64 %sub, 0
  %and = select i1 %isneg, i64 %7, i64 0
  store i64 %and, i64* %arrayidx, align 8, !tbaa !25
  %inc = or i64 %i.063, 1
  %sub.1 = sub i64 %inc, %conv8
  %arrayidx.1 = getelementptr inbounds i64, i64* %5, i64 %inc
  %8 = load i64, i64* %arrayidx.1, align 8, !tbaa !25
  %isneg.1 = icmp slt i64 %sub.1, 0
  %and.1 = select i1 %isneg.1, i64 %8, i64 0
  store i64 %and.1, i64* %arrayidx.1, align 8, !tbaa !25
  %inc.1 = add nuw i64 %i.063, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.end.loopexit.unr-lcssa, label %for.body, !llvm.loop !26

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %i.063.unr = phi i64 [ 0, %for.body.lr.ph ], [ %inc.1, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa
  %sub.epil = sub i64 %i.063.unr, %conv8
  %arrayidx.epil = getelementptr inbounds i64, i64* %5, i64 %i.063.unr
  %9 = load i64, i64* %arrayidx.epil, align 8, !tbaa !25
  %isneg.epil = icmp slt i64 %sub.epil, 0
  %and.epil = select i1 %isneg.epil, i64 %9, i64 0
  store i64 %and.epil, i64* %arrayidx.epil, align 8, !tbaa !25
  br label %for.end

for.end:                                          ; preds = %for.body.epil, %for.end.loopexit.unr-lcssa, %if.then5
  %10 = icmp slt i32 %3, %4
  %or = select i1 %10, i32 %4, i32 %3
  store i32 %or, i32* %top7, align 8, !tbaa !23
  br label %if.end26

if.end26:                                         ; preds = %for.end, %if.then3
  %call = tail call i32 @BN_mod_mul_montgomery(%struct.bignum_st* noundef nonnull %n, %struct.bignum_st* noundef nonnull %n, %struct.bignum_st* noundef %r.addr.0, %struct.bn_mont_ctx_st* noundef nonnull %1, %struct.bignum_ctx* noundef %ctx) #5
  br label %cleanup

if.else:                                          ; preds = %if.end
  %mod = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %b, i64 0, i32 3
  %11 = load %struct.bignum_st*, %struct.bignum_st** %mod, align 8, !tbaa !13
  %call28 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef %n, %struct.bignum_st* noundef %n, %struct.bignum_st* noundef nonnull %r.addr.0, %struct.bignum_st* noundef %11, %struct.bignum_ctx* noundef %ctx) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end26 ], [ %call28, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_BLINDING_is_current_thread(%struct.bn_blinding_st* nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @CRYPTO_THREAD_get_current_id() #5
  %tid = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %b, i64 0, i32 4
  %0 = load i64, i64* %tid, align 8, !tbaa !15
  %call1 = tail call i32 @CRYPTO_THREAD_compare_id(i64 noundef %call, i64 noundef %0) #5
  ret i32 %call1
}

declare i32 @CRYPTO_THREAD_compare_id(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @CRYPTO_THREAD_get_current_id() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @BN_BLINDING_lock(%struct.bn_blinding_st* nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %lock = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %b, i64 0, i32 9
  %0 = load i8*, i8** %lock, align 8, !tbaa !4
  %call = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %0) #5
  ret i32 %call
}

declare i32 @CRYPTO_THREAD_write_lock(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @BN_BLINDING_unlock(%struct.bn_blinding_st* nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %lock = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %b, i64 0, i32 9
  %0 = load i8*, i8** %lock, align 8, !tbaa !4
  %call = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %0) #5
  ret i32 %call
}

declare i32 @CRYPTO_THREAD_unlock(i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @BN_BLINDING_get_flags(%struct.bn_blinding_st* nocapture noundef readonly %b) local_unnamed_addr #3 {
entry:
  %flags = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %b, i64 0, i32 6
  %0 = load i64, i64* %flags, align 8, !tbaa !17
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @BN_BLINDING_set_flags(%struct.bn_blinding_st* nocapture noundef writeonly %b, i64 noundef %flags) local_unnamed_addr #4 {
entry:
  %flags1 = getelementptr inbounds %struct.bn_blinding_st, %struct.bn_blinding_st* %b, i64 0, i32 6
  store i64 %flags, i64* %flags1, align 8, !tbaa !17
  ret void
}

declare %struct.bignum_st* @BN_new() local_unnamed_addr #2

declare i32 @BN_priv_rand_range_ex(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @int_bn_mod_inverse(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef, i32* noundef) local_unnamed_addr #2

declare i32 @BN_mod_exp(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @bn_to_mont_fixed_top(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bn_mont_ctx_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 72}
!5 = !{!"bn_blinding_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !9, i64 32, !10, i64 40, !9, i64 48, !6, i64 56, !6, i64 64, !6, i64 72}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!5, !6, i64 0}
!12 = !{!5, !6, i64 8}
!13 = !{!5, !6, i64 24}
!14 = !{!5, !10, i64 40}
!15 = !{!5, !9, i64 32}
!16 = !{!5, !6, i64 16}
!17 = !{!5, !9, i64 48}
!18 = !{!5, !6, i64 56}
!19 = !{!5, !6, i64 64}
!20 = !{!10, !10, i64 0}
!21 = !{!22, !10, i64 12}
!22 = !{!"bignum_st", !6, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20}
!23 = !{!22, !10, i64 8}
!24 = !{!22, !6, i64 0}
!25 = !{!9, !9, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
