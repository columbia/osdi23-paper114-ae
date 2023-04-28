; ModuleID = 'crypto/modes/ocb128.c'
source_filename = "crypto/modes/ocb128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocb128_context = type { void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)*, i8*, i8*, void (i8*, i8*, i64, i8*, i64, i8*, [16 x i8]*, i8*)*, i64, i64, %union.OCB_BLOCK, %union.OCB_BLOCK, %union.OCB_BLOCK*, %struct.anon }
%union.OCB_BLOCK = type { [2 x i64] }
%struct.anon = type { i64, i64, %union.OCB_BLOCK, %union.OCB_BLOCK, %union.OCB_BLOCK, %union.OCB_BLOCK }

@.str = private unnamed_addr constant [22 x i8] c"crypto/modes/ocb128.c\00", align 1
@__func__.CRYPTO_ocb128_init = private unnamed_addr constant [19 x i8] c"CRYPTO_ocb128_init\00", align 1
@__func__.CRYPTO_ocb128_copy_ctx = private unnamed_addr constant [23 x i8] c"CRYPTO_ocb128_copy_ctx\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.ocb128_context* @CRYPTO_ocb128_new(i8* noundef %keyenc, i8* noundef %keydec, void (i8*, i8*, i8*)* noundef %encrypt, void (i8*, i8*, i8*)* noundef %decrypt, void (i8*, i8*, i64, i8*, i64, i8*, [16 x i8]*, i8*)* noundef %stream) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 176, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 137) #6
  %0 = bitcast i8* %call to %struct.ocb128_context*
  %cmp.not = icmp eq i8* %call, null
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @CRYPTO_ocb128_init(%struct.ocb128_context* noundef nonnull %0, i8* noundef %keyenc, i8* noundef %keydec, void (i8*, i8*, i8*)* noundef %encrypt, void (i8*, i8*, i8*)* noundef %decrypt, void (i8*, i8*, i64, i8*, i64, i8*, [16 x i8]*, i8*)* noundef %stream) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %if.then
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 142) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %if.then
  %retval.0 = phi %struct.ocb128_context* [ %0, %if.then ], [ null, %if.end ], [ null, %entry ]
  ret %struct.ocb128_context* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @CRYPTO_ocb128_init(%struct.ocb128_context* noundef %ctx, i8* noundef %keyenc, i8* noundef %keydec, void (i8*, i8*, i8*)* noundef %encrypt, void (i8*, i8*, i8*)* noundef %decrypt, void (i8*, i8*, i64, i8*, i64, i8*, [16 x i8]*, i8*)* noundef %stream) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ocb128_context* %ctx to i8*
  %call = tail call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 176) #6
  %l_index = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 5
  %1 = bitcast i64* %l_index to <2 x i64>*
  store <2 x i64> <i64 0, i64 5>, <2 x i64>* %1, align 8, !tbaa !4
  %call2 = tail call i8* @CRYPTO_malloc(i64 noundef 80, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 158) #6
  %l = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 9
  %2 = bitcast %union.OCB_BLOCK** %l to i8**
  store i8* %call2, i8** %2, align 8, !tbaa !8
  %cmp = icmp eq i8* %call2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 159, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.CRYPTO_ocb128_init, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %encrypt3 = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 0
  store void (i8*, i8*, i8*)* %encrypt, void (i8*, i8*, i8*)** %encrypt3, align 8, !tbaa !13
  %decrypt4 = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 1
  store void (i8*, i8*, i8*)* %decrypt, void (i8*, i8*, i8*)** %decrypt4, align 8, !tbaa !14
  %stream5 = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 4
  store void (i8*, i8*, i64, i8*, i64, i8*, [16 x i8]*, i8*)* %stream, void (i8*, i8*, i64, i8*, i64, i8*, [16 x i8]*, i8*)** %stream5, align 8, !tbaa !15
  %keyenc6 = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 2
  store i8* %keyenc, i8** %keyenc6, align 8, !tbaa !16
  %keydec7 = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 3
  store i8* %keydec, i8** %keydec7, align 8, !tbaa !17
  %l_star = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 7
  %arraydecay = bitcast %union.OCB_BLOCK* %l_star to i8*
  tail call void %encrypt(i8* noundef nonnull %arraydecay, i8* noundef nonnull %arraydecay, i8* noundef %keyenc) #6
  %l_dollar = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 8
  tail call fastcc void @ocb_double(%union.OCB_BLOCK* noundef nonnull %l_star, %union.OCB_BLOCK* noundef nonnull %l_dollar) #7
  %3 = load %union.OCB_BLOCK*, %union.OCB_BLOCK** %l, align 8, !tbaa !8
  tail call fastcc void @ocb_double(%union.OCB_BLOCK* noundef nonnull %l_dollar, %union.OCB_BLOCK* noundef %3) #7
  %4 = load %union.OCB_BLOCK*, %union.OCB_BLOCK** %l, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds %union.OCB_BLOCK, %union.OCB_BLOCK* %4, i64 1
  tail call fastcc void @ocb_double(%union.OCB_BLOCK* noundef %4, %union.OCB_BLOCK* noundef nonnull %add.ptr) #7
  %5 = load %union.OCB_BLOCK*, %union.OCB_BLOCK** %l, align 8, !tbaa !8
  %add.ptr19 = getelementptr inbounds %union.OCB_BLOCK, %union.OCB_BLOCK* %5, i64 1
  %add.ptr21 = getelementptr inbounds %union.OCB_BLOCK, %union.OCB_BLOCK* %5, i64 2
  tail call fastcc void @ocb_double(%union.OCB_BLOCK* noundef nonnull %add.ptr19, %union.OCB_BLOCK* noundef nonnull %add.ptr21) #7
  %6 = load %union.OCB_BLOCK*, %union.OCB_BLOCK** %l, align 8, !tbaa !8
  %add.ptr23 = getelementptr inbounds %union.OCB_BLOCK, %union.OCB_BLOCK* %6, i64 2
  %add.ptr25 = getelementptr inbounds %union.OCB_BLOCK, %union.OCB_BLOCK* %6, i64 3
  tail call fastcc void @ocb_double(%union.OCB_BLOCK* noundef nonnull %add.ptr23, %union.OCB_BLOCK* noundef nonnull %add.ptr25) #7
  %7 = load %union.OCB_BLOCK*, %union.OCB_BLOCK** %l, align 8, !tbaa !8
  %add.ptr27 = getelementptr inbounds %union.OCB_BLOCK, %union.OCB_BLOCK* %7, i64 3
  %add.ptr29 = getelementptr inbounds %union.OCB_BLOCK, %union.OCB_BLOCK* %7, i64 4
  tail call fastcc void @ocb_double(%union.OCB_BLOCK* noundef nonnull %add.ptr27, %union.OCB_BLOCK* noundef nonnull %add.ptr29) #7
  store i64 4, i64* %l_index, align 8, !tbaa !18
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @ocb_double(%union.OCB_BLOCK* nocapture noundef readonly %in, %union.OCB_BLOCK* nocapture noundef %out) unnamed_addr #4 {
entry:
  %arrayidx = bitcast %union.OCB_BLOCK* %in to i8*
  %0 = load i8, i8* %arrayidx, align 8, !tbaa !19
  %isneg = icmp slt i8 %0, 0
  %1 = select i1 %isneg, i8 -121, i8 0
  %c8 = bitcast %union.OCB_BLOCK* %out to [16 x i8]*
  %arraydecay9 = bitcast %union.OCB_BLOCK* %out to i8*
  tail call fastcc void @ocb_block_lshift(i8* noundef nonnull %arrayidx, i64 noundef 1, i8* noundef %arraydecay9) #7
  %arrayidx12 = getelementptr inbounds [16 x i8], [16 x i8]* %c8, i64 0, i64 15
  %2 = load i8, i8* %arrayidx12, align 1, !tbaa !19
  %xor = xor i8 %1, %2
  store i8 %xor, i8* %arrayidx12, align 1, !tbaa !19
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @CRYPTO_ocb128_copy_ctx(%struct.ocb128_context* noundef %dest, %struct.ocb128_context* noundef %src, i8* noundef %keyenc, i8* noundef %keydec) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ocb128_context* %dest to i8*
  %1 = bitcast %struct.ocb128_context* %src to i8*
  %call = tail call i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef 176) #6
  %tobool.not = icmp eq i8* %keyenc, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %keyenc1 = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %dest, i64 0, i32 2
  store i8* %keyenc, i8** %keyenc1, align 8, !tbaa !16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool2.not = icmp eq i8* %keydec, null
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %keydec4 = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %dest, i64 0, i32 3
  store i8* %keydec, i8** %keydec4, align 8, !tbaa !17
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %l = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %src, i64 0, i32 9
  %2 = load %union.OCB_BLOCK*, %union.OCB_BLOCK** %l, align 8, !tbaa !8
  %tobool6.not = icmp eq %union.OCB_BLOCK* %2, null
  br i1 %tobool6.not, label %return, label %if.then7

if.then7:                                         ; preds = %if.end5
  %max_l_index = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %src, i64 0, i32 6
  %3 = load i64, i64* %max_l_index, align 8, !tbaa !20
  %mul = shl i64 %3, 4
  %call8 = tail call i8* @CRYPTO_malloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 205) #6
  %l9 = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %dest, i64 0, i32 9
  %4 = bitcast %union.OCB_BLOCK** %l9 to i8**
  store i8* %call8, i8** %4, align 8, !tbaa !8
  %cmp = icmp eq i8* %call8, null
  br i1 %cmp, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then7
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 206, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.CRYPTO_ocb128_copy_ctx, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #6
  br label %return

if.end11:                                         ; preds = %if.then7
  %5 = bitcast %union.OCB_BLOCK** %l to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !8
  %l_index = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %src, i64 0, i32 5
  %7 = load i64, i64* %l_index, align 8, !tbaa !18
  %add = shl i64 %7, 4
  %mul14 = add i64 %add, 16
  %call15 = tail call i8* @memcpy(i8* noundef nonnull %call8, i8* noundef %6, i64 noundef %mul14) #6
  br label %return

return:                                           ; preds = %if.end5, %if.end11, %if.then10
  %retval.0 = phi i32 [ 0, %if.then10 ], [ 1, %if.end11 ], [ 1, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @CRYPTO_ocb128_setiv(%struct.ocb128_context* noundef %ctx, i8* noundef %iv, i64 noundef %len, i64 noundef %taglen) local_unnamed_addr #0 {
entry:
  %ktop = alloca [16 x i8], align 16
  %tmp = alloca [16 x i8], align 16
  %stretch = alloca [24 x i8], align 16
  %nonce = alloca [16 x i8], align 16
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %ktop, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8
  %2 = getelementptr inbounds [24 x i8], [24 x i8]* %stretch, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #8
  %3 = getelementptr inbounds [16 x i8], [16 x i8]* %nonce, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #8
  %4 = add i64 %len, -16
  %5 = icmp ult i64 %4, -15
  %6 = add i64 %taglen, -17
  %7 = icmp ult i64 %6, -16
  %8 = or i1 %5, %7
  br i1 %8, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %sess = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 10
  %9 = bitcast %struct.anon* %sess to i8*
  %call = tail call i8* @memset(i8* noundef nonnull %9, i32 noundef 0, i64 noundef 80) #6
  %taglen.tr = trunc i64 %taglen to i8
  %conv = shl i8 %taglen.tr, 4
  store i8 %conv, i8* %3, align 16, !tbaa !19
  %add.ptr = getelementptr inbounds [16 x i8], [16 x i8]* %nonce, i64 0, i64 1
  %call6 = call i8* @memset(i8* noundef nonnull %add.ptr, i32 noundef 0, i64 noundef 15) #6
  %add.ptr8 = getelementptr inbounds [16 x i8], [16 x i8]* %nonce, i64 0, i64 16
  %idx.neg = sub nsw i64 0, %len
  %add.ptr9 = getelementptr inbounds i8, i8* %add.ptr8, i64 %idx.neg
  %call10 = call i8* @memcpy(i8* noundef nonnull %add.ptr9, i8* noundef %iv, i64 noundef %len) #6
  %sub = sub nuw nsw i64 15, %len
  %arrayidx11 = getelementptr inbounds [16 x i8], [16 x i8]* %nonce, i64 0, i64 %sub
  %10 = load i8, i8* %arrayidx11, align 1, !tbaa !19
  %11 = or i8 %10, 1
  store i8 %11, i8* %arrayidx11, align 1, !tbaa !19
  %call16 = call i8* @memcpy(i8* noundef nonnull %1, i8* noundef nonnull %3, i64 noundef 16) #6
  %arrayidx17 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp, i64 0, i64 15
  %12 = load i8, i8* %arrayidx17, align 1, !tbaa !19
  %13 = and i8 %12, -64
  store i8 %13, i8* %arrayidx17, align 1, !tbaa !19
  %encrypt = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 0
  %14 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %encrypt, align 8, !tbaa !13
  %keyenc = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 2
  %15 = load i8*, i8** %keyenc, align 8, !tbaa !16
  call void %14(i8* noundef nonnull %1, i8* noundef nonnull %0, i8* noundef %15) #6
  %call24 = call i8* @memcpy(i8* noundef nonnull %2, i8* noundef nonnull %0, i64 noundef 16) #6
  %add.ptr27 = getelementptr inbounds [16 x i8], [16 x i8]* %ktop, i64 0, i64 1
  %add.ptr29 = getelementptr inbounds [24 x i8], [24 x i8]* %stretch, i64 0, i64 16
  call fastcc void @ocb_block_xor(i8* noundef nonnull %0, i8* noundef nonnull %add.ptr27, i64 noundef 8, i8* noundef nonnull %add.ptr29) #7
  %arrayidx30 = getelementptr inbounds [16 x i8], [16 x i8]* %nonce, i64 0, i64 15
  %16 = load i8, i8* %arrayidx30, align 1, !tbaa !19
  %17 = and i8 %16, 63
  %18 = zext i8 %17 to i64
  %rem34 = and i64 %18, 7
  %div = lshr i64 %18, 3
  %add.ptr36 = getelementptr inbounds [24 x i8], [24 x i8]* %stretch, i64 0, i64 %div
  %offset = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 10, i32 4
  %c = bitcast %union.OCB_BLOCK* %offset to [16 x i8]*
  %arraydecay38 = bitcast %union.OCB_BLOCK* %offset to i8*
  call fastcc void @ocb_block_lshift(i8* noundef nonnull %add.ptr36, i64 noundef %rem34, i8* noundef nonnull %arraydecay38) #7
  %19 = trunc i64 %rem34 to i32
  %sh_prom = sub nuw nsw i32 8, %19
  %shl41 = shl nuw nsw i32 255, %sh_prom
  %add.ptr46 = getelementptr inbounds i8, i8* %add.ptr36, i64 16
  %20 = load i8, i8* %add.ptr46, align 1, !tbaa !19
  %conv47 = zext i8 %20 to i32
  %and49 = and i32 %shl41, %conv47
  %shr = lshr i32 %and49, %sh_prom
  %arrayidx55 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 15
  %21 = load i8, i8* %arrayidx55, align 1, !tbaa !19
  %22 = trunc i32 %shr to i8
  %conv58 = or i8 %21, %22
  store i8 %conv58, i8* %arrayidx55, align 1, !tbaa !19
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ -1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @ocb_block_xor(i8* nocapture noundef readonly %in1, i8* nocapture noundef readonly %in2, i64 noundef %len, i8* nocapture noundef writeonly %out) unnamed_addr #4 {
entry:
  %cmp11.not = icmp eq i64 %len, 0
  br i1 %cmp11.not, label %for.end, label %iter.check

iter.check:                                       ; preds = %entry
  %min.iters.check = icmp ult i64 %len, 8
  br i1 %min.iters.check, label %for.body.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, i8* %out, i64 %len
  %scevgep13 = getelementptr i8, i8* %in1, i64 %len
  %scevgep14 = getelementptr i8, i8* %in2, i64 %len
  %bound0 = icmp ugt i8* %scevgep13, %out
  %bound1 = icmp ugt i8* %scevgep, %in1
  %found.conflict = and i1 %bound0, %bound1
  %bound015 = icmp ugt i8* %scevgep14, %out
  %bound116 = icmp ugt i8* %scevgep, %in2
  %found.conflict17 = and i1 %bound015, %bound116
  %conflict.rdx = or i1 %found.conflict, %found.conflict17
  br i1 %conflict.rdx, label %for.body.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check18 = icmp ult i64 %len, 32
  br i1 %min.iters.check18, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %len, -32
  %0 = add i64 %n.vec, -32
  %1 = lshr exact i64 %0, 5
  %2 = add nuw nsw i64 %1, 1
  %xtraiter = and i64 %2, 1
  %3 = icmp eq i64 %0, 0
  br i1 %3, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %2, 1152921504606846974
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %4 = getelementptr inbounds i8, i8* %in1, i64 %index
  %5 = bitcast i8* %4 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %5, align 1, !tbaa !19, !alias.scope !21
  %6 = getelementptr inbounds i8, i8* %4, i64 16
  %7 = bitcast i8* %6 to <16 x i8>*
  %wide.load19 = load <16 x i8>, <16 x i8>* %7, align 1, !tbaa !19, !alias.scope !21
  %8 = getelementptr inbounds i8, i8* %in2, i64 %index
  %9 = bitcast i8* %8 to <16 x i8>*
  %wide.load20 = load <16 x i8>, <16 x i8>* %9, align 1, !tbaa !19, !alias.scope !24
  %10 = getelementptr inbounds i8, i8* %8, i64 16
  %11 = bitcast i8* %10 to <16 x i8>*
  %wide.load21 = load <16 x i8>, <16 x i8>* %11, align 1, !tbaa !19, !alias.scope !24
  %12 = xor <16 x i8> %wide.load20, %wide.load
  %13 = xor <16 x i8> %wide.load21, %wide.load19
  %14 = getelementptr inbounds i8, i8* %out, i64 %index
  %15 = bitcast i8* %14 to <16 x i8>*
  store <16 x i8> %12, <16 x i8>* %15, align 1, !tbaa !19, !alias.scope !26, !noalias !28
  %16 = getelementptr inbounds i8, i8* %14, i64 16
  %17 = bitcast i8* %16 to <16 x i8>*
  store <16 x i8> %13, <16 x i8>* %17, align 1, !tbaa !19, !alias.scope !26, !noalias !28
  %index.next = or i64 %index, 32
  %18 = getelementptr inbounds i8, i8* %in1, i64 %index.next
  %19 = bitcast i8* %18 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %19, align 1, !tbaa !19, !alias.scope !21
  %20 = getelementptr inbounds i8, i8* %18, i64 16
  %21 = bitcast i8* %20 to <16 x i8>*
  %wide.load19.1 = load <16 x i8>, <16 x i8>* %21, align 1, !tbaa !19, !alias.scope !21
  %22 = getelementptr inbounds i8, i8* %in2, i64 %index.next
  %23 = bitcast i8* %22 to <16 x i8>*
  %wide.load20.1 = load <16 x i8>, <16 x i8>* %23, align 1, !tbaa !19, !alias.scope !24
  %24 = getelementptr inbounds i8, i8* %22, i64 16
  %25 = bitcast i8* %24 to <16 x i8>*
  %wide.load21.1 = load <16 x i8>, <16 x i8>* %25, align 1, !tbaa !19, !alias.scope !24
  %26 = xor <16 x i8> %wide.load20.1, %wide.load.1
  %27 = xor <16 x i8> %wide.load21.1, %wide.load19.1
  %28 = getelementptr inbounds i8, i8* %out, i64 %index.next
  %29 = bitcast i8* %28 to <16 x i8>*
  store <16 x i8> %26, <16 x i8>* %29, align 1, !tbaa !19, !alias.scope !26, !noalias !28
  %30 = getelementptr inbounds i8, i8* %28, i64 16
  %31 = bitcast i8* %30 to <16 x i8>*
  store <16 x i8> %27, <16 x i8>* %31, align 1, !tbaa !19, !alias.scope !26, !noalias !28
  %index.next.1 = add nuw i64 %index, 64
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !29

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %32 = getelementptr inbounds i8, i8* %in1, i64 %index.unr
  %33 = bitcast i8* %32 to <16 x i8>*
  %wide.load.epil = load <16 x i8>, <16 x i8>* %33, align 1, !tbaa !19, !alias.scope !21
  %34 = getelementptr inbounds i8, i8* %32, i64 16
  %35 = bitcast i8* %34 to <16 x i8>*
  %wide.load19.epil = load <16 x i8>, <16 x i8>* %35, align 1, !tbaa !19, !alias.scope !21
  %36 = getelementptr inbounds i8, i8* %in2, i64 %index.unr
  %37 = bitcast i8* %36 to <16 x i8>*
  %wide.load20.epil = load <16 x i8>, <16 x i8>* %37, align 1, !tbaa !19, !alias.scope !24
  %38 = getelementptr inbounds i8, i8* %36, i64 16
  %39 = bitcast i8* %38 to <16 x i8>*
  %wide.load21.epil = load <16 x i8>, <16 x i8>* %39, align 1, !tbaa !19, !alias.scope !24
  %40 = xor <16 x i8> %wide.load20.epil, %wide.load.epil
  %41 = xor <16 x i8> %wide.load21.epil, %wide.load19.epil
  %42 = getelementptr inbounds i8, i8* %out, i64 %index.unr
  %43 = bitcast i8* %42 to <16 x i8>*
  store <16 x i8> %40, <16 x i8>* %43, align 1, !tbaa !19, !alias.scope !26, !noalias !28
  %44 = getelementptr inbounds i8, i8* %42, i64 16
  %45 = bitcast i8* %44 to <16 x i8>*
  store <16 x i8> %41, <16 x i8>* %45, align 1, !tbaa !19, !alias.scope !26, !noalias !28
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %n.vec, %len
  br i1 %cmp.n, label %for.end, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %n.vec.remaining = and i64 %len, 24
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check, label %for.body.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec23 = and i64 %len, -8
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index25 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next28, %vec.epilog.vector.body ]
  %46 = getelementptr inbounds i8, i8* %in1, i64 %index25
  %47 = bitcast i8* %46 to <8 x i8>*
  %wide.load26 = load <8 x i8>, <8 x i8>* %47, align 1, !tbaa !19
  %48 = getelementptr inbounds i8, i8* %in2, i64 %index25
  %49 = bitcast i8* %48 to <8 x i8>*
  %wide.load27 = load <8 x i8>, <8 x i8>* %49, align 1, !tbaa !19
  %50 = xor <8 x i8> %wide.load27, %wide.load26
  %51 = getelementptr inbounds i8, i8* %out, i64 %index25
  %52 = bitcast i8* %51 to <8 x i8>*
  store <8 x i8> %50, <8 x i8>* %52, align 1, !tbaa !19
  %index.next28 = add nuw i64 %index25, 8
  %53 = icmp eq i64 %index.next28, %n.vec23
  br i1 %53, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !32

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n24 = icmp eq i64 %n.vec23, %len
  br i1 %cmp.n24, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %i.012.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec23, %vec.epilog.middle.block ]
  %54 = xor i64 %i.012.ph, -1
  %55 = add i64 %54, %len
  %xtraiter29 = and i64 %len, 3
  %lcmp.mod30.not = icmp eq i64 %xtraiter29, 0
  br i1 %lcmp.mod30.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader, %for.body.prol
  %i.012.prol = phi i64 [ %inc.prol, %for.body.prol ], [ %i.012.ph, %for.body.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader ]
  %arrayidx.prol = getelementptr inbounds i8, i8* %in1, i64 %i.012.prol
  %56 = load i8, i8* %arrayidx.prol, align 1, !tbaa !19
  %arrayidx1.prol = getelementptr inbounds i8, i8* %in2, i64 %i.012.prol
  %57 = load i8, i8* %arrayidx1.prol, align 1, !tbaa !19
  %xor10.prol = xor i8 %57, %56
  %arrayidx4.prol = getelementptr inbounds i8, i8* %out, i64 %i.012.prol
  store i8 %xor10.prol, i8* %arrayidx4.prol, align 1, !tbaa !19
  %inc.prol = add nuw i64 %i.012.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter29
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !34

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %i.012.unr = phi i64 [ %i.012.ph, %for.body.preheader ], [ %inc.prol, %for.body.prol ]
  %58 = icmp ult i64 %55, 3
  br i1 %58, label %for.end, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %i.012 = phi i64 [ %inc.3, %for.body ], [ %i.012.unr, %for.body.prol.loopexit ]
  %arrayidx = getelementptr inbounds i8, i8* %in1, i64 %i.012
  %59 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %arrayidx1 = getelementptr inbounds i8, i8* %in2, i64 %i.012
  %60 = load i8, i8* %arrayidx1, align 1, !tbaa !19
  %xor10 = xor i8 %60, %59
  %arrayidx4 = getelementptr inbounds i8, i8* %out, i64 %i.012
  store i8 %xor10, i8* %arrayidx4, align 1, !tbaa !19
  %inc = add nuw i64 %i.012, 1
  %arrayidx.1 = getelementptr inbounds i8, i8* %in1, i64 %inc
  %61 = load i8, i8* %arrayidx.1, align 1, !tbaa !19
  %arrayidx1.1 = getelementptr inbounds i8, i8* %in2, i64 %inc
  %62 = load i8, i8* %arrayidx1.1, align 1, !tbaa !19
  %xor10.1 = xor i8 %62, %61
  %arrayidx4.1 = getelementptr inbounds i8, i8* %out, i64 %inc
  store i8 %xor10.1, i8* %arrayidx4.1, align 1, !tbaa !19
  %inc.1 = add nuw i64 %i.012, 2
  %arrayidx.2 = getelementptr inbounds i8, i8* %in1, i64 %inc.1
  %63 = load i8, i8* %arrayidx.2, align 1, !tbaa !19
  %arrayidx1.2 = getelementptr inbounds i8, i8* %in2, i64 %inc.1
  %64 = load i8, i8* %arrayidx1.2, align 1, !tbaa !19
  %xor10.2 = xor i8 %64, %63
  %arrayidx4.2 = getelementptr inbounds i8, i8* %out, i64 %inc.1
  store i8 %xor10.2, i8* %arrayidx4.2, align 1, !tbaa !19
  %inc.2 = add nuw i64 %i.012, 3
  %arrayidx.3 = getelementptr inbounds i8, i8* %in1, i64 %inc.2
  %65 = load i8, i8* %arrayidx.3, align 1, !tbaa !19
  %arrayidx1.3 = getelementptr inbounds i8, i8* %in2, i64 %inc.2
  %66 = load i8, i8* %arrayidx1.3, align 1, !tbaa !19
  %xor10.3 = xor i8 %66, %65
  %arrayidx4.3 = getelementptr inbounds i8, i8* %out, i64 %inc.2
  store i8 %xor10.3, i8* %arrayidx4.3, align 1, !tbaa !19
  %inc.3 = add nuw i64 %i.012, 4
  %exitcond.not.3 = icmp eq i64 %inc.3, %len
  br i1 %exitcond.not.3, label %for.end, label %for.body, !llvm.loop !36

for.end:                                          ; preds = %for.body.prol.loopexit, %for.body, %middle.block, %vec.epilog.middle.block, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @ocb_block_lshift(i8* nocapture noundef readonly %in, i64 noundef %shift, i8* nocapture noundef writeonly %out) unnamed_addr #4 {
entry:
  %0 = trunc i64 %shift to i32
  %sh_prom = sub i32 8, %0
  %arrayidx = getelementptr inbounds i8, i8* %in, i64 15
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %1 to i32
  %shr = lshr i32 %conv, %sh_prom
  %shl = shl i32 %conv, %0
  %conv7 = trunc i32 %shl to i8
  %arrayidx9 = getelementptr inbounds i8, i8* %out, i64 15
  store i8 %conv7, i8* %arrayidx9, align 1, !tbaa !19
  %arrayidx.1 = getelementptr inbounds i8, i8* %in, i64 14
  %2 = load i8, i8* %arrayidx.1, align 1, !tbaa !19
  %conv.1 = zext i8 %2 to i32
  %shr.1 = lshr i32 %conv.1, %sh_prom
  %shl.1 = shl i32 %conv.1, %0
  %or.1 = or i32 %shl.1, %shr
  %conv7.1 = trunc i32 %or.1 to i8
  %arrayidx9.1 = getelementptr inbounds i8, i8* %out, i64 14
  store i8 %conv7.1, i8* %arrayidx9.1, align 1, !tbaa !19
  %arrayidx.2 = getelementptr inbounds i8, i8* %in, i64 13
  %3 = load i8, i8* %arrayidx.2, align 1, !tbaa !19
  %conv.2 = zext i8 %3 to i32
  %shr.2 = lshr i32 %conv.2, %sh_prom
  %shl.2 = shl i32 %conv.2, %0
  %or.2 = or i32 %shl.2, %shr.1
  %conv7.2 = trunc i32 %or.2 to i8
  %arrayidx9.2 = getelementptr inbounds i8, i8* %out, i64 13
  store i8 %conv7.2, i8* %arrayidx9.2, align 1, !tbaa !19
  %arrayidx.3 = getelementptr inbounds i8, i8* %in, i64 12
  %4 = load i8, i8* %arrayidx.3, align 1, !tbaa !19
  %conv.3 = zext i8 %4 to i32
  %shr.3 = lshr i32 %conv.3, %sh_prom
  %shl.3 = shl i32 %conv.3, %0
  %or.3 = or i32 %shl.3, %shr.2
  %conv7.3 = trunc i32 %or.3 to i8
  %arrayidx9.3 = getelementptr inbounds i8, i8* %out, i64 12
  store i8 %conv7.3, i8* %arrayidx9.3, align 1, !tbaa !19
  %arrayidx.4 = getelementptr inbounds i8, i8* %in, i64 11
  %5 = load i8, i8* %arrayidx.4, align 1, !tbaa !19
  %conv.4 = zext i8 %5 to i32
  %shr.4 = lshr i32 %conv.4, %sh_prom
  %shl.4 = shl i32 %conv.4, %0
  %or.4 = or i32 %shl.4, %shr.3
  %conv7.4 = trunc i32 %or.4 to i8
  %arrayidx9.4 = getelementptr inbounds i8, i8* %out, i64 11
  store i8 %conv7.4, i8* %arrayidx9.4, align 1, !tbaa !19
  %arrayidx.5 = getelementptr inbounds i8, i8* %in, i64 10
  %6 = load i8, i8* %arrayidx.5, align 1, !tbaa !19
  %conv.5 = zext i8 %6 to i32
  %shr.5 = lshr i32 %conv.5, %sh_prom
  %shl.5 = shl i32 %conv.5, %0
  %or.5 = or i32 %shl.5, %shr.4
  %conv7.5 = trunc i32 %or.5 to i8
  %arrayidx9.5 = getelementptr inbounds i8, i8* %out, i64 10
  store i8 %conv7.5, i8* %arrayidx9.5, align 1, !tbaa !19
  %arrayidx.6 = getelementptr inbounds i8, i8* %in, i64 9
  %7 = load i8, i8* %arrayidx.6, align 1, !tbaa !19
  %conv.6 = zext i8 %7 to i32
  %shr.6 = lshr i32 %conv.6, %sh_prom
  %shl.6 = shl i32 %conv.6, %0
  %or.6 = or i32 %shl.6, %shr.5
  %conv7.6 = trunc i32 %or.6 to i8
  %arrayidx9.6 = getelementptr inbounds i8, i8* %out, i64 9
  store i8 %conv7.6, i8* %arrayidx9.6, align 1, !tbaa !19
  %arrayidx.7 = getelementptr inbounds i8, i8* %in, i64 8
  %8 = load i8, i8* %arrayidx.7, align 1, !tbaa !19
  %conv.7 = zext i8 %8 to i32
  %shr.7 = lshr i32 %conv.7, %sh_prom
  %shl.7 = shl i32 %conv.7, %0
  %or.7 = or i32 %shl.7, %shr.6
  %conv7.7 = trunc i32 %or.7 to i8
  %arrayidx9.7 = getelementptr inbounds i8, i8* %out, i64 8
  store i8 %conv7.7, i8* %arrayidx9.7, align 1, !tbaa !19
  %arrayidx.8 = getelementptr inbounds i8, i8* %in, i64 7
  %9 = load i8, i8* %arrayidx.8, align 1, !tbaa !19
  %conv.8 = zext i8 %9 to i32
  %shr.8 = lshr i32 %conv.8, %sh_prom
  %shl.8 = shl i32 %conv.8, %0
  %or.8 = or i32 %shl.8, %shr.7
  %conv7.8 = trunc i32 %or.8 to i8
  %arrayidx9.8 = getelementptr inbounds i8, i8* %out, i64 7
  store i8 %conv7.8, i8* %arrayidx9.8, align 1, !tbaa !19
  %arrayidx.9 = getelementptr inbounds i8, i8* %in, i64 6
  %10 = load i8, i8* %arrayidx.9, align 1, !tbaa !19
  %conv.9 = zext i8 %10 to i32
  %shr.9 = lshr i32 %conv.9, %sh_prom
  %shl.9 = shl i32 %conv.9, %0
  %or.9 = or i32 %shl.9, %shr.8
  %conv7.9 = trunc i32 %or.9 to i8
  %arrayidx9.9 = getelementptr inbounds i8, i8* %out, i64 6
  store i8 %conv7.9, i8* %arrayidx9.9, align 1, !tbaa !19
  %arrayidx.10 = getelementptr inbounds i8, i8* %in, i64 5
  %11 = load i8, i8* %arrayidx.10, align 1, !tbaa !19
  %conv.10 = zext i8 %11 to i32
  %shr.10 = lshr i32 %conv.10, %sh_prom
  %shl.10 = shl i32 %conv.10, %0
  %or.10 = or i32 %shl.10, %shr.9
  %conv7.10 = trunc i32 %or.10 to i8
  %arrayidx9.10 = getelementptr inbounds i8, i8* %out, i64 5
  store i8 %conv7.10, i8* %arrayidx9.10, align 1, !tbaa !19
  %arrayidx.11 = getelementptr inbounds i8, i8* %in, i64 4
  %12 = load i8, i8* %arrayidx.11, align 1, !tbaa !19
  %conv.11 = zext i8 %12 to i32
  %shr.11 = lshr i32 %conv.11, %sh_prom
  %shl.11 = shl i32 %conv.11, %0
  %or.11 = or i32 %shl.11, %shr.10
  %conv7.11 = trunc i32 %or.11 to i8
  %arrayidx9.11 = getelementptr inbounds i8, i8* %out, i64 4
  store i8 %conv7.11, i8* %arrayidx9.11, align 1, !tbaa !19
  %arrayidx.12 = getelementptr inbounds i8, i8* %in, i64 3
  %13 = load i8, i8* %arrayidx.12, align 1, !tbaa !19
  %conv.12 = zext i8 %13 to i32
  %shr.12 = lshr i32 %conv.12, %sh_prom
  %shl.12 = shl i32 %conv.12, %0
  %or.12 = or i32 %shl.12, %shr.11
  %conv7.12 = trunc i32 %or.12 to i8
  %arrayidx9.12 = getelementptr inbounds i8, i8* %out, i64 3
  store i8 %conv7.12, i8* %arrayidx9.12, align 1, !tbaa !19
  %arrayidx.13 = getelementptr inbounds i8, i8* %in, i64 2
  %14 = load i8, i8* %arrayidx.13, align 1, !tbaa !19
  %conv.13 = zext i8 %14 to i32
  %shr.13 = lshr i32 %conv.13, %sh_prom
  %shl.13 = shl i32 %conv.13, %0
  %or.13 = or i32 %shl.13, %shr.12
  %conv7.13 = trunc i32 %or.13 to i8
  %arrayidx9.13 = getelementptr inbounds i8, i8* %out, i64 2
  store i8 %conv7.13, i8* %arrayidx9.13, align 1, !tbaa !19
  %arrayidx.14 = getelementptr inbounds i8, i8* %in, i64 1
  %15 = load i8, i8* %arrayidx.14, align 1, !tbaa !19
  %conv.14 = zext i8 %15 to i32
  %shr.14 = lshr i32 %conv.14, %sh_prom
  %shl.14 = shl i32 %conv.14, %0
  %or.14 = or i32 %shl.14, %shr.13
  %conv7.14 = trunc i32 %or.14 to i8
  %arrayidx9.14 = getelementptr inbounds i8, i8* %out, i64 1
  store i8 %conv7.14, i8* %arrayidx9.14, align 1, !tbaa !19
  %16 = load i8, i8* %in, align 1, !tbaa !19
  %conv.15 = zext i8 %16 to i32
  %shl.15 = shl i32 %conv.15, %0
  %or.15 = or i32 %shl.15, %shr.14
  %conv7.15 = trunc i32 %or.15 to i8
  store i8 %conv7.15, i8* %out, align 1, !tbaa !19
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @CRYPTO_ocb128_aad(%struct.ocb128_context* nocapture noundef %ctx, i8* noundef %aad, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %tmp = alloca <2 x i64>, align 16
  %0 = bitcast <2 x i64>* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8
  %div = lshr i64 %len, 4
  %blocks_hashed = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 10, i32 0
  %1 = load i64, i64* %blocks_hashed, align 8, !tbaa !37
  %add = add i64 %1, %div
  %i.0203 = add i64 %1, 1
  %cmp.not204 = icmp ugt i64 %i.0203, %add
  br i1 %cmp.not204, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 10, i32 2, i32 0, i64 0
  %arrayidx17 = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 10, i32 2, i32 0, i64 1
  %encrypt = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 0
  %keyenc = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 2
  %arrayidx52 = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 10, i32 3, i32 0, i64 0
  %2 = bitcast i64* %arrayidx to <2 x i64>*
  %3 = bitcast i64* %arrayidx52 to <2 x i64>*
  %4 = bitcast i64* %arrayidx52 to <2 x i64>*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %i.0206 = phi i64 [ %i.0203, %for.body.lr.ph ], [ %i.0, %cleanup ]
  %aad.addr.0205 = phi i8* [ %aad, %for.body.lr.ph ], [ %add.ptr, %cleanup ]
  %call = call fastcc i32 @ocb_ntz(i64 noundef %i.0206) #7
  %conv = zext i32 %call to i64
  %call4 = call fastcc %union.OCB_BLOCK* @ocb_lookup_l(%struct.ocb128_context* noundef nonnull %ctx, i64 noundef %conv) #7
  %cmp5 = icmp eq %union.OCB_BLOCK* %call4, null
  br i1 %cmp5, label %cleanup152, label %cleanup

cleanup:                                          ; preds = %for.body
  %5 = load i64, i64* %arrayidx, align 8, !tbaa !19
  %arrayidx9 = getelementptr inbounds %union.OCB_BLOCK, %union.OCB_BLOCK* %call4, i64 0, i32 0, i64 0
  %6 = load i64, i64* %arrayidx9, align 8, !tbaa !19
  %xor = xor i64 %6, %5
  store i64 %xor, i64* %arrayidx, align 8, !tbaa !19
  %7 = load i64, i64* %arrayidx17, align 8, !tbaa !19
  %arrayidx19 = getelementptr inbounds %union.OCB_BLOCK, %union.OCB_BLOCK* %call4, i64 0, i32 0, i64 1
  %8 = load i64, i64* %arrayidx19, align 8, !tbaa !19
  %xor20 = xor i64 %8, %7
  store i64 %xor20, i64* %arrayidx17, align 8, !tbaa !19
  %call25 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef %aad.addr.0205, i64 noundef 16) #6
  %add.ptr = getelementptr inbounds i8, i8* %aad.addr.0205, i64 16
  %9 = load <2 x i64>, <2 x i64>* %2, align 8, !tbaa !19
  %10 = load <2 x i64>, <2 x i64>* %tmp, align 16, !tbaa !19
  %11 = xor <2 x i64> %10, %9
  store <2 x i64> %11, <2 x i64>* %tmp, align 16, !tbaa !19
  %12 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %encrypt, align 8, !tbaa !13
  %13 = load i8*, i8** %keyenc, align 8, !tbaa !16
  call void %12(i8* noundef nonnull %0, i8* noundef nonnull %0, i8* noundef %13) #6
  %14 = load <2 x i64>, <2 x i64>* %tmp, align 16, !tbaa !19
  %15 = load <2 x i64>, <2 x i64>* %3, align 8, !tbaa !19
  %16 = xor <2 x i64> %15, %14
  store <2 x i64> %16, <2 x i64>* %4, align 8, !tbaa !19
  %i.0 = add i64 %i.0206, 1
  %cmp.not = icmp ugt i64 %i.0, %add
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %cleanup, %entry
  %aad.addr.0.lcssa = phi i8* [ %aad, %entry ], [ %add.ptr, %cleanup ]
  %rem = and i64 %len, 15
  %cmp69.not = icmp eq i64 %rem, 0
  br i1 %cmp69.not, label %if.end149, label %if.then71

if.then71:                                        ; preds = %for.end
  %arrayidx75 = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 10, i32 2, i32 0, i64 0
  %arrayidx77 = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 7, i32 0, i64 0
  %17 = bitcast i64* %arrayidx75 to <2 x i64>*
  %18 = load <2 x i64>, <2 x i64>* %17, align 8, !tbaa !19
  %19 = bitcast i64* %arrayidx77 to <2 x i64>*
  %20 = load <2 x i64>, <2 x i64>* %19, align 8, !tbaa !19
  %21 = xor <2 x i64> %20, %18
  %22 = bitcast i64* %arrayidx75 to <2 x i64>*
  store <2 x i64> %21, <2 x i64>* %22, align 8, !tbaa !19
  %c95 = bitcast <2 x i64>* %tmp to [16 x i8]*
  %call97 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 16) #6
  %call100 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef %aad.addr.0.lcssa, i64 noundef %rem) #6
  %arrayidx102 = getelementptr inbounds [16 x i8], [16 x i8]* %c95, i64 0, i64 %rem
  store i8 -128, i8* %arrayidx102, align 1, !tbaa !19
  %23 = bitcast i64* %arrayidx75 to <2 x i64>*
  %24 = load <2 x i64>, <2 x i64>* %23, align 8, !tbaa !19
  %25 = load <2 x i64>, <2 x i64>* %tmp, align 16, !tbaa !19
  %26 = xor <2 x i64> %25, %24
  store <2 x i64> %26, <2 x i64>* %tmp, align 16, !tbaa !19
  %encrypt121 = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 0
  %27 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %encrypt121, align 8, !tbaa !13
  %keyenc126 = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 2
  %28 = load i8*, i8** %keyenc126, align 8, !tbaa !16
  call void %27(i8* noundef nonnull %0, i8* noundef nonnull %0, i8* noundef %28) #6
  %arrayidx132 = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 10, i32 3, i32 0, i64 0
  %29 = load <2 x i64>, <2 x i64>* %tmp, align 16, !tbaa !19
  %30 = bitcast i64* %arrayidx132 to <2 x i64>*
  %31 = load <2 x i64>, <2 x i64>* %30, align 8, !tbaa !19
  %32 = xor <2 x i64> %31, %29
  %33 = bitcast i64* %arrayidx132 to <2 x i64>*
  store <2 x i64> %32, <2 x i64>* %33, align 8, !tbaa !19
  br label %if.end149

if.end149:                                        ; preds = %if.then71, %for.end
  store i64 %add, i64* %blocks_hashed, align 8, !tbaa !37
  br label %cleanup152

cleanup152:                                       ; preds = %for.body, %if.end149
  %retval.2 = phi i32 [ 1, %if.end149 ], [ 0, %for.body ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %union.OCB_BLOCK* @ocb_lookup_l(%struct.ocb128_context* nocapture noundef %ctx, i64 noundef %idx) unnamed_addr #0 {
entry:
  %l_index1 = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 5
  %0 = load i64, i64* %l_index1, align 8, !tbaa !18
  %cmp.not = icmp ult i64 %0, %idx
  br i1 %cmp.not, label %if.end, label %cleanup23.sink.split

if.end:                                           ; preds = %entry
  %max_l_index = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 6
  %1 = load i64, i64* %max_l_index, align 8, !tbaa !20
  %cmp2.not = icmp ugt i64 %1, %idx
  br i1 %cmp2.not, label %while.body.lr.ph, label %if.then3

if.then3:                                         ; preds = %if.end
  %sub = add i64 %idx, 4
  %add = sub i64 %sub, %1
  %and = and i64 %add, -4
  %add6 = add i64 %and, %1
  store i64 %add6, i64* %max_l_index, align 8, !tbaa !20
  %l7 = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 9
  %2 = bitcast %union.OCB_BLOCK** %l7 to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !8
  %mul = shl i64 %add6, 4
  %call = tail call i8* @CRYPTO_realloc(i8* noundef %3, i64 noundef %mul, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 113) #6
  %cmp9 = icmp eq i8* %call, null
  br i1 %cmp9, label %cleanup23, label %if.end11

if.end11:                                         ; preds = %if.then3
  store i8* %call, i8** %2, align 8, !tbaa !8
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end, %if.end11
  %l15 = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 9
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %l_index.050 = phi i64 [ %0, %while.body.lr.ph ], [ %inc, %while.body ]
  %4 = load %union.OCB_BLOCK*, %union.OCB_BLOCK** %l15, align 8, !tbaa !8
  %add.ptr16 = getelementptr inbounds %union.OCB_BLOCK, %union.OCB_BLOCK* %4, i64 %l_index.050
  %add.ptr19 = getelementptr inbounds %union.OCB_BLOCK, %union.OCB_BLOCK* %add.ptr16, i64 1
  tail call fastcc void @ocb_double(%union.OCB_BLOCK* noundef %add.ptr16, %union.OCB_BLOCK* noundef nonnull %add.ptr19) #7
  %inc = add i64 %l_index.050, 1
  %exitcond.not = icmp eq i64 %inc, %idx
  br i1 %exitcond.not, label %while.end, label %while.body, !llvm.loop !38

while.end:                                        ; preds = %while.body
  store i64 %idx, i64* %l_index1, align 8, !tbaa !18
  br label %cleanup23.sink.split

cleanup23.sink.split:                             ; preds = %entry, %while.end
  %l21 = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 9
  %5 = load %union.OCB_BLOCK*, %union.OCB_BLOCK** %l21, align 8, !tbaa !8
  %add.ptr22 = getelementptr inbounds %union.OCB_BLOCK, %union.OCB_BLOCK* %5, i64 %idx
  br label %cleanup23

cleanup23:                                        ; preds = %cleanup23.sink.split, %if.then3
  %retval.1 = phi %union.OCB_BLOCK* [ null, %if.then3 ], [ %add.ptr22, %cleanup23.sink.split ]
  ret %union.OCB_BLOCK* %retval.1
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define internal fastcc i32 @ocb_ntz(i64 noundef %n) unnamed_addr #5 {
entry:
  %and4 = and i64 %n, 1
  %tobool.not5 = icmp eq i64 %and4, 0
  br i1 %tobool.not5, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.body
  %cnt.07 = phi i32 [ %inc, %while.body ], [ 0, %entry ]
  %n.addr.06 = phi i64 [ %shr, %while.body ], [ %n, %entry ]
  %shr = lshr i64 %n.addr.06, 1
  %inc = add i32 %cnt.07, 1
  %0 = and i64 %n.addr.06, 2
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %while.body, label %while.end, !llvm.loop !39

while.end:                                        ; preds = %while.body, %entry
  %cnt.0.lcssa = phi i32 [ 0, %entry ], [ %inc, %while.body ]
  ret i32 %cnt.0.lcssa
}

; Function Attrs: noinline nounwind uwtable
define i32 @CRYPTO_ocb128_encrypt(%struct.ocb128_context* noundef %ctx, i8* noundef %in, i8* noundef %out, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %tmp = alloca <2 x i64>, align 16
  %pad = alloca <2 x i64>, align 16
  %div = lshr i64 %len, 4
  %blocks_processed = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 10, i32 1
  %0 = load i64, i64* %blocks_processed, align 8, !tbaa !40
  %add = add i64 %0, %div
  %tobool.not = icmp ult i64 %len, 16
  br i1 %tobool.not, label %if.else, label %land.lhs.true1

land.lhs.true1:                                   ; preds = %entry
  %stream = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 4
  %1 = load void (i8*, i8*, i64, i8*, i64, i8*, [16 x i8]*, i8*)*, void (i8*, i8*, i64, i8*, i64, i8*, [16 x i8]*, i8*)** %stream, align 8, !tbaa !15
  %cmp2.not = icmp eq void (i8*, i8*, i64, i8*, i64, i8*, [16 x i8]*, i8*)* %1, null
  br i1 %cmp2.not, label %if.else, label %while.cond.preheader

while.cond.preheader:                             ; preds = %land.lhs.true1
  %tobool3.not266 = icmp ult i64 %add, 2
  br i1 %tobool3.not266, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %top.0268 = phi i64 [ %shr, %while.body ], [ %add, %while.cond.preheader ]
  %max_idx.0267 = phi i64 [ %inc, %while.body ], [ 0, %while.cond.preheader ]
  %shr = lshr i64 %top.0268, 1
  %inc = add nuw nsw i64 %max_idx.0267, 1
  %tobool3.not = icmp ult i64 %top.0268, 4
  br i1 %tobool3.not, label %while.end, label %while.body, !llvm.loop !41

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %max_idx.0.lcssa = phi i64 [ 0, %while.cond.preheader ], [ %inc, %while.body ]
  %call = tail call fastcc %union.OCB_BLOCK* @ocb_lookup_l(%struct.ocb128_context* noundef %ctx, i64 noundef %max_idx.0.lcssa) #7
  %cmp4 = icmp eq %union.OCB_BLOCK* %call, null
  br i1 %cmp4, label %cleanup189, label %if.end

if.end:                                           ; preds = %while.end
  %2 = load void (i8*, i8*, i64, i8*, i64, i8*, [16 x i8]*, i8*)*, void (i8*, i8*, i64, i8*, i64, i8*, [16 x i8]*, i8*)** %stream, align 8, !tbaa !15
  %keyenc = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 2
  %3 = load i8*, i8** %keyenc, align 8, !tbaa !16
  %4 = load i64, i64* %blocks_processed, align 8, !tbaa !40
  %add9 = add i64 %4, 1
  %offset = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 10, i32 4
  %arraydecay = bitcast %union.OCB_BLOCK* %offset to i8*
  %l = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 9
  %5 = bitcast %union.OCB_BLOCK** %l to [16 x i8]**
  %6 = load [16 x i8]*, [16 x i8]** %5, align 8, !tbaa !8
  %checksum = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 10, i32 5
  %arraydecay13 = bitcast %union.OCB_BLOCK* %checksum to i8*
  tail call void %2(i8* noundef %in, i8* noundef %out, i64 noundef %div, i8* noundef %3, i64 noundef %add9, i8* noundef nonnull %arraydecay, [16 x i8]* noundef %6, i8* noundef nonnull %arraydecay13) #6
  br label %if.end119

if.else:                                          ; preds = %land.lhs.true1, %entry
  %i.0269 = add i64 %0, 1
  %cmp18.not270 = icmp ugt i64 %i.0269, %add
  br i1 %cmp18.not270, label %if.end119, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.else
  %7 = bitcast <2 x i64>* %tmp to i8*
  %arrayidx = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 10, i32 4, i32 0, i64 0
  %arrayidx36 = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 10, i32 4, i32 0, i64 1
  %arrayidx52 = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 10, i32 5, i32 0, i64 0
  %encrypt = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 0
  %keyenc91 = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 2
  %8 = bitcast i64* %arrayidx52 to <2 x i64>*
  %9 = bitcast i64* %arrayidx52 to <2 x i64>*
  %10 = bitcast i64* %arrayidx to <2 x i64>*
  %11 = bitcast i64* %arrayidx to <2 x i64>*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cleanup114
  %i.0273 = phi i64 [ %i.0269, %for.body.lr.ph ], [ %i.0, %cleanup114 ]
  %in.addr.0272 = phi i8* [ %in, %for.body.lr.ph ], [ %add.ptr, %cleanup114 ]
  %out.addr.0271 = phi i8* [ %out, %for.body.lr.ph ], [ %add.ptr113, %cleanup114 ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #8
  %call19 = call fastcc i32 @ocb_ntz(i64 noundef %i.0273) #7
  %conv = zext i32 %call19 to i64
  %call20 = call fastcc %union.OCB_BLOCK* @ocb_lookup_l(%struct.ocb128_context* noundef nonnull %ctx, i64 noundef %conv) #7
  %cmp21 = icmp eq %union.OCB_BLOCK* %call20, null
  br i1 %cmp21, label %cleanup114.thread, label %cleanup114

cleanup114.thread:                                ; preds = %for.body
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #8
  br label %cleanup189

cleanup114:                                       ; preds = %for.body
  %12 = load i64, i64* %arrayidx, align 8, !tbaa !19
  %arrayidx28 = getelementptr inbounds %union.OCB_BLOCK, %union.OCB_BLOCK* %call20, i64 0, i32 0, i64 0
  %13 = load i64, i64* %arrayidx28, align 8, !tbaa !19
  %xor = xor i64 %13, %12
  store i64 %xor, i64* %arrayidx, align 8, !tbaa !19
  %14 = load i64, i64* %arrayidx36, align 8, !tbaa !19
  %arrayidx38 = getelementptr inbounds %union.OCB_BLOCK, %union.OCB_BLOCK* %call20, i64 0, i32 0, i64 1
  %15 = load i64, i64* %arrayidx38, align 8, !tbaa !19
  %xor39 = xor i64 %15, %14
  store i64 %xor39, i64* %arrayidx36, align 8, !tbaa !19
  %call46 = call i8* @memcpy(i8* noundef nonnull %7, i8* noundef %in.addr.0272, i64 noundef 16) #6
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.0272, i64 16
  %16 = load <2 x i64>, <2 x i64>* %tmp, align 16, !tbaa !19
  %17 = load <2 x i64>, <2 x i64>* %8, align 8, !tbaa !19
  %18 = xor <2 x i64> %17, %16
  store <2 x i64> %18, <2 x i64>* %9, align 8, !tbaa !19
  %19 = load <2 x i64>, <2 x i64>* %10, align 8, !tbaa !19
  %20 = xor <2 x i64> %19, %16
  store <2 x i64> %20, <2 x i64>* %tmp, align 16, !tbaa !19
  %21 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %encrypt, align 8, !tbaa !13
  %22 = load i8*, i8** %keyenc91, align 8, !tbaa !16
  call void %21(i8* noundef nonnull %7, i8* noundef nonnull %7, i8* noundef %22) #6
  %23 = load <2 x i64>, <2 x i64>* %11, align 8, !tbaa !19
  %24 = load <2 x i64>, <2 x i64>* %tmp, align 16, !tbaa !19
  %25 = xor <2 x i64> %24, %23
  store <2 x i64> %25, <2 x i64>* %tmp, align 16, !tbaa !19
  %call112 = call i8* @memcpy(i8* noundef %out.addr.0271, i8* noundef nonnull %7, i64 noundef 16) #6
  %add.ptr113 = getelementptr inbounds i8, i8* %out.addr.0271, i64 16
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #8
  %i.0 = add i64 %i.0273, 1
  %cmp18.not = icmp ugt i64 %i.0, %add
  br i1 %cmp18.not, label %if.end119, label %for.body

if.end119:                                        ; preds = %cleanup114, %if.else, %if.end
  %out.addr.2 = phi i8* [ %out, %if.end ], [ %out, %if.else ], [ %add.ptr113, %cleanup114 ]
  %in.addr.2 = phi i8* [ %in, %if.end ], [ %in, %if.else ], [ %add.ptr, %cleanup114 ]
  %rem = and i64 %len, 15
  %cmp120.not = icmp eq i64 %rem, 0
  br i1 %cmp120.not, label %if.end186, label %if.then122

if.then122:                                       ; preds = %if.end119
  %26 = bitcast <2 x i64>* %pad to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %26) #8
  %offset124 = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 10, i32 4
  %arrayidx128 = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 7, i32 0, i64 0
  %27 = bitcast %union.OCB_BLOCK* %offset124 to <2 x i64>*
  %28 = load <2 x i64>, <2 x i64>* %27, align 8, !tbaa !19
  %29 = bitcast i64* %arrayidx128 to <2 x i64>*
  %30 = load <2 x i64>, <2 x i64>* %29, align 8, !tbaa !19
  %31 = xor <2 x i64> %30, %28
  %32 = bitcast %union.OCB_BLOCK* %offset124 to <2 x i64>*
  store <2 x i64> %31, <2 x i64>* %32, align 8, !tbaa !19
  %encrypt146 = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 0
  %33 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %encrypt146, align 8, !tbaa !13
  %arraydecay150 = bitcast %union.OCB_BLOCK* %offset124 to i8*
  %c151 = bitcast <2 x i64>* %pad to [16 x i8]*
  %keyenc153 = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 2
  %34 = load i8*, i8** %keyenc153, align 8, !tbaa !16
  call void %33(i8* noundef nonnull %arraydecay150, i8* noundef nonnull %26, i8* noundef %34) #6
  call fastcc void @ocb_block_xor(i8* noundef %in.addr.2, i8* noundef nonnull %26, i64 noundef %rem, i8* noundef %out.addr.2) #7
  %call158 = call i8* @memset(i8* noundef nonnull %26, i32 noundef 0, i64 noundef 16) #6
  %call161 = call i8* @memcpy(i8* noundef nonnull %26, i8* noundef %in.addr.2, i64 noundef %rem) #6
  %arrayidx163 = getelementptr inbounds [16 x i8], [16 x i8]* %c151, i64 0, i64 %rem
  store i8 -128, i8* %arrayidx163, align 1, !tbaa !19
  %arrayidx169 = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 10, i32 5, i32 0, i64 0
  %35 = load <2 x i64>, <2 x i64>* %pad, align 16, !tbaa !19
  %36 = bitcast i64* %arrayidx169 to <2 x i64>*
  %37 = load <2 x i64>, <2 x i64>* %36, align 8, !tbaa !19
  %38 = xor <2 x i64> %37, %35
  %39 = bitcast i64* %arrayidx169 to <2 x i64>*
  store <2 x i64> %38, <2 x i64>* %39, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %26) #8
  br label %if.end186

if.end186:                                        ; preds = %if.then122, %if.end119
  store i64 %add, i64* %blocks_processed, align 8, !tbaa !40
  br label %cleanup189

cleanup189:                                       ; preds = %cleanup114.thread, %while.end, %if.end186
  %retval.3 = phi i32 [ 1, %if.end186 ], [ 0, %while.end ], [ 0, %cleanup114.thread ]
  ret i32 %retval.3
}

; Function Attrs: noinline nounwind uwtable
define i32 @CRYPTO_ocb128_decrypt(%struct.ocb128_context* noundef %ctx, i8* noundef %in, i8* noundef %out, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %tmp = alloca <2 x i64>, align 16
  %pad = alloca <2 x i64>, align 16
  %div = lshr i64 %len, 4
  %blocks_processed = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 10, i32 1
  %0 = load i64, i64* %blocks_processed, align 8, !tbaa !40
  %add = add i64 %0, %div
  %tobool.not = icmp ult i64 %len, 16
  br i1 %tobool.not, label %if.else, label %land.lhs.true1

land.lhs.true1:                                   ; preds = %entry
  %stream = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 4
  %1 = load void (i8*, i8*, i64, i8*, i64, i8*, [16 x i8]*, i8*)*, void (i8*, i8*, i64, i8*, i64, i8*, [16 x i8]*, i8*)** %stream, align 8, !tbaa !15
  %cmp2.not = icmp eq void (i8*, i8*, i64, i8*, i64, i8*, [16 x i8]*, i8*)* %1, null
  br i1 %cmp2.not, label %if.else, label %while.cond.preheader

while.cond.preheader:                             ; preds = %land.lhs.true1
  %tobool3.not270 = icmp ult i64 %add, 2
  br i1 %tobool3.not270, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %top.0272 = phi i64 [ %shr, %while.body ], [ %add, %while.cond.preheader ]
  %max_idx.0271 = phi i64 [ %inc, %while.body ], [ 0, %while.cond.preheader ]
  %shr = lshr i64 %top.0272, 1
  %inc = add nuw nsw i64 %max_idx.0271, 1
  %tobool3.not = icmp ult i64 %top.0272, 4
  br i1 %tobool3.not, label %while.end, label %while.body, !llvm.loop !42

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %max_idx.0.lcssa = phi i64 [ 0, %while.cond.preheader ], [ %inc, %while.body ]
  %call = tail call fastcc %union.OCB_BLOCK* @ocb_lookup_l(%struct.ocb128_context* noundef %ctx, i64 noundef %max_idx.0.lcssa) #7
  %cmp4 = icmp eq %union.OCB_BLOCK* %call, null
  br i1 %cmp4, label %cleanup189, label %if.end

if.end:                                           ; preds = %while.end
  %2 = load void (i8*, i8*, i64, i8*, i64, i8*, [16 x i8]*, i8*)*, void (i8*, i8*, i64, i8*, i64, i8*, [16 x i8]*, i8*)** %stream, align 8, !tbaa !15
  %keydec = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 3
  %3 = load i8*, i8** %keydec, align 8, !tbaa !17
  %4 = load i64, i64* %blocks_processed, align 8, !tbaa !40
  %add9 = add i64 %4, 1
  %offset = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 10, i32 4
  %arraydecay = bitcast %union.OCB_BLOCK* %offset to i8*
  %l = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 9
  %5 = bitcast %union.OCB_BLOCK** %l to [16 x i8]**
  %6 = load [16 x i8]*, [16 x i8]** %5, align 8, !tbaa !8
  %checksum = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 10, i32 5
  %arraydecay13 = bitcast %union.OCB_BLOCK* %checksum to i8*
  tail call void %2(i8* noundef %in, i8* noundef %out, i64 noundef %div, i8* noundef %3, i64 noundef %add9, i8* noundef nonnull %arraydecay, [16 x i8]* noundef %6, i8* noundef nonnull %arraydecay13) #6
  br label %if.end121

if.else:                                          ; preds = %land.lhs.true1, %entry
  %7 = bitcast <2 x i64>* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #8
  %i.0273 = add i64 %0, 1
  %cmp18.not274 = icmp ugt i64 %i.0273, %add
  br i1 %cmp18.not274, label %cleanup118.thread, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.else
  %arrayidx = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 10, i32 4, i32 0, i64 0
  %arrayidx36 = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 10, i32 4, i32 0, i64 1
  %decrypt = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 1
  %keydec69 = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 3
  %arrayidx93 = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 10, i32 5, i32 0, i64 0
  %8 = bitcast i64* %arrayidx to <2 x i64>*
  %9 = bitcast i64* %arrayidx to <2 x i64>*
  %10 = bitcast i64* %arrayidx93 to <2 x i64>*
  %11 = bitcast i64* %arrayidx93 to <2 x i64>*
  br label %for.body

cleanup118.thread:                                ; preds = %cleanup114, %if.else
  %out.addr.0.lcssa = phi i8* [ %out, %if.else ], [ %add.ptr113, %cleanup114 ]
  %in.addr.0.lcssa = phi i8* [ %in, %if.else ], [ %add.ptr, %cleanup114 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #8
  br label %if.end121

for.body:                                         ; preds = %for.body.lr.ph, %cleanup114
  %i.0277 = phi i64 [ %i.0273, %for.body.lr.ph ], [ %i.0, %cleanup114 ]
  %in.addr.0276 = phi i8* [ %in, %for.body.lr.ph ], [ %add.ptr, %cleanup114 ]
  %out.addr.0275 = phi i8* [ %out, %for.body.lr.ph ], [ %add.ptr113, %cleanup114 ]
  %call19 = call fastcc i32 @ocb_ntz(i64 noundef %i.0277) #7
  %conv = zext i32 %call19 to i64
  %call20 = call fastcc %union.OCB_BLOCK* @ocb_lookup_l(%struct.ocb128_context* noundef nonnull %ctx, i64 noundef %conv) #7
  %cmp21 = icmp eq %union.OCB_BLOCK* %call20, null
  br i1 %cmp21, label %cleanup118, label %cleanup114

cleanup114:                                       ; preds = %for.body
  %12 = load i64, i64* %arrayidx, align 8, !tbaa !19
  %arrayidx28 = getelementptr inbounds %union.OCB_BLOCK, %union.OCB_BLOCK* %call20, i64 0, i32 0, i64 0
  %13 = load i64, i64* %arrayidx28, align 8, !tbaa !19
  %xor = xor i64 %13, %12
  store i64 %xor, i64* %arrayidx, align 8, !tbaa !19
  %14 = load i64, i64* %arrayidx36, align 8, !tbaa !19
  %arrayidx38 = getelementptr inbounds %union.OCB_BLOCK, %union.OCB_BLOCK* %call20, i64 0, i32 0, i64 1
  %15 = load i64, i64* %arrayidx38, align 8, !tbaa !19
  %xor39 = xor i64 %15, %14
  store i64 %xor39, i64* %arrayidx36, align 8, !tbaa !19
  %call46 = call i8* @memcpy(i8* noundef nonnull %7, i8* noundef %in.addr.0276, i64 noundef 16) #6
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.0276, i64 16
  %16 = load <2 x i64>, <2 x i64>* %8, align 8, !tbaa !19
  %17 = load <2 x i64>, <2 x i64>* %tmp, align 16, !tbaa !19
  %18 = xor <2 x i64> %17, %16
  store <2 x i64> %18, <2 x i64>* %tmp, align 16, !tbaa !19
  %19 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %decrypt, align 8, !tbaa !14
  %20 = load i8*, i8** %keydec69, align 8, !tbaa !17
  call void %19(i8* noundef nonnull %7, i8* noundef nonnull %7, i8* noundef %20) #6
  %21 = load <2 x i64>, <2 x i64>* %9, align 8, !tbaa !19
  %22 = load <2 x i64>, <2 x i64>* %tmp, align 16, !tbaa !19
  %23 = xor <2 x i64> %22, %21
  store <2 x i64> %23, <2 x i64>* %tmp, align 16, !tbaa !19
  %24 = load <2 x i64>, <2 x i64>* %10, align 8, !tbaa !19
  %25 = xor <2 x i64> %24, %23
  store <2 x i64> %25, <2 x i64>* %11, align 8, !tbaa !19
  %call112 = call i8* @memcpy(i8* noundef %out.addr.0275, i8* noundef nonnull %7, i64 noundef 16) #6
  %add.ptr113 = getelementptr inbounds i8, i8* %out.addr.0275, i64 16
  %i.0 = add i64 %i.0277, 1
  %cmp18.not = icmp ugt i64 %i.0, %add
  br i1 %cmp18.not, label %cleanup118.thread, label %for.body

cleanup118:                                       ; preds = %for.body
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #8
  br label %cleanup189

if.end121:                                        ; preds = %cleanup118.thread, %if.end
  %out.addr.3 = phi i8* [ %out, %if.end ], [ %out.addr.0.lcssa, %cleanup118.thread ]
  %in.addr.3 = phi i8* [ %in, %if.end ], [ %in.addr.0.lcssa, %cleanup118.thread ]
  %rem = and i64 %len, 15
  %cmp122.not = icmp eq i64 %rem, 0
  br i1 %cmp122.not, label %if.end186, label %if.then124

if.then124:                                       ; preds = %if.end121
  %26 = bitcast <2 x i64>* %pad to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %26) #8
  %offset126 = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 10, i32 4
  %arrayidx130 = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 7, i32 0, i64 0
  %27 = bitcast %union.OCB_BLOCK* %offset126 to <2 x i64>*
  %28 = load <2 x i64>, <2 x i64>* %27, align 8, !tbaa !19
  %29 = bitcast i64* %arrayidx130 to <2 x i64>*
  %30 = load <2 x i64>, <2 x i64>* %29, align 8, !tbaa !19
  %31 = xor <2 x i64> %30, %28
  %32 = bitcast %union.OCB_BLOCK* %offset126 to <2 x i64>*
  store <2 x i64> %31, <2 x i64>* %32, align 8, !tbaa !19
  %encrypt = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 0
  %33 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %encrypt, align 8, !tbaa !13
  %arraydecay151 = bitcast %union.OCB_BLOCK* %offset126 to i8*
  %c152 = bitcast <2 x i64>* %pad to [16 x i8]*
  %keyenc = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 2
  %34 = load i8*, i8** %keyenc, align 8, !tbaa !16
  call void %33(i8* noundef nonnull %arraydecay151, i8* noundef nonnull %26, i8* noundef %34) #6
  call fastcc void @ocb_block_xor(i8* noundef %in.addr.3, i8* noundef nonnull %26, i64 noundef %rem, i8* noundef %out.addr.3) #7
  %call158 = call i8* @memset(i8* noundef nonnull %26, i32 noundef 0, i64 noundef 16) #6
  %call161 = call i8* @memcpy(i8* noundef nonnull %26, i8* noundef %out.addr.3, i64 noundef %rem) #6
  %arrayidx163 = getelementptr inbounds [16 x i8], [16 x i8]* %c152, i64 0, i64 %rem
  store i8 -128, i8* %arrayidx163, align 1, !tbaa !19
  %arrayidx169 = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 10, i32 5, i32 0, i64 0
  %35 = load <2 x i64>, <2 x i64>* %pad, align 16, !tbaa !19
  %36 = bitcast i64* %arrayidx169 to <2 x i64>*
  %37 = load <2 x i64>, <2 x i64>* %36, align 8, !tbaa !19
  %38 = xor <2 x i64> %37, %35
  %39 = bitcast i64* %arrayidx169 to <2 x i64>*
  store <2 x i64> %38, <2 x i64>* %39, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %26) #8
  br label %if.end186

if.end186:                                        ; preds = %if.then124, %if.end121
  store i64 %add, i64* %blocks_processed, align 8, !tbaa !40
  br label %cleanup189

cleanup189:                                       ; preds = %cleanup118, %while.end, %if.end186
  %retval.4 = phi i32 [ 1, %if.end186 ], [ 0, %cleanup118 ], [ 0, %while.end ]
  ret i32 %retval.4
}

; Function Attrs: noinline nounwind uwtable
define i32 @CRYPTO_ocb128_finish(%struct.ocb128_context* nocapture noundef readonly %ctx, i8* noundef %tag, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @ocb_finish(%struct.ocb128_context* noundef %ctx, i8* noundef %tag, i64 noundef %len, i32 noundef 0) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ocb_finish(%struct.ocb128_context* nocapture noundef readonly %ctx, i8* noundef %tag, i64 noundef %len, i32 noundef %write) unnamed_addr #0 {
entry:
  %tmp = alloca <2 x i64>, align 16
  %0 = bitcast <2 x i64>* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8
  %1 = add i64 %len, -17
  %2 = icmp ult i64 %1, -16
  br i1 %2, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 10, i32 5, i32 0, i64 0
  %arrayidx4 = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 10, i32 4, i32 0, i64 0
  %3 = bitcast i64* %arrayidx to <2 x i64>*
  %4 = load <2 x i64>, <2 x i64>* %3, align 8, !tbaa !19
  %5 = bitcast i64* %arrayidx4 to <2 x i64>*
  %6 = load <2 x i64>, <2 x i64>* %5, align 8, !tbaa !19
  %7 = xor <2 x i64> %6, %4
  %arrayidx19 = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 8, i32 0, i64 0
  %8 = bitcast i64* %arrayidx19 to <2 x i64>*
  %9 = load <2 x i64>, <2 x i64>* %8, align 8, !tbaa !19
  %10 = xor <2 x i64> %9, %7
  store <2 x i64> %10, <2 x i64>* %tmp, align 16, !tbaa !19
  %encrypt = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 0
  %11 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %encrypt, align 8, !tbaa !13
  %keyenc = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 2
  %12 = load i8*, i8** %keyenc, align 8, !tbaa !16
  call void %11(i8* noundef nonnull %0, i8* noundef nonnull %0, i8* noundef %12) #6
  %arrayidx39 = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 10, i32 3, i32 0, i64 0
  %13 = load <2 x i64>, <2 x i64>* %tmp, align 16, !tbaa !19
  %14 = bitcast i64* %arrayidx39 to <2 x i64>*
  %15 = load <2 x i64>, <2 x i64>* %14, align 8, !tbaa !19
  %16 = xor <2 x i64> %15, %13
  store <2 x i64> %16, <2 x i64>* %tmp, align 16, !tbaa !19
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %if.else, label %if.then52

if.then52:                                        ; preds = %if.end
  %call = call i8* @memcpy(i8* noundef %tag, i8* noundef nonnull %0, i64 noundef %len) #6
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call53 = call i32 @CRYPTO_memcmp(i8* noundef nonnull %0, i8* noundef %tag, i64 noundef %len) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.else, %if.then52
  %retval.0 = phi i32 [ 1, %if.then52 ], [ %call53, %if.else ], [ -1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @CRYPTO_ocb128_tag(%struct.ocb128_context* nocapture noundef readonly %ctx, i8* noundef %tag, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @ocb_finish(%struct.ocb128_context* noundef %ctx, i8* noundef %tag, i64 noundef %len, i32 noundef 1) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define void @CRYPTO_ocb128_cleanup(%struct.ocb128_context* noundef %ctx) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.ocb128_context* %ctx, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %l = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 9
  %0 = bitcast %union.OCB_BLOCK** %l to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !8
  %max_l_index = getelementptr inbounds %struct.ocb128_context, %struct.ocb128_context* %ctx, i64 0, i32 6
  %2 = load i64, i64* %max_l_index, align 8, !tbaa !20
  %mul = shl i64 %2, 4
  tail call void @CRYPTO_clear_free(i8* noundef %1, i64 noundef %mul, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 557) #6
  %3 = bitcast %struct.ocb128_context* %ctx to i8*
  tail call void @OPENSSL_cleanse(i8* noundef nonnull %3, i64 noundef 176) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_realloc(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @CRYPTO_memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 88}
!9 = !{!"ocb128_context", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !5, i64 40, !5, i64 48, !6, i64 56, !6, i64 72, !10, i64 88, !11, i64 96}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"", !12, i64 0, !12, i64 8, !6, i64 16, !6, i64 32, !6, i64 48, !6, i64 64}
!12 = !{!"long long", !6, i64 0}
!13 = !{!9, !10, i64 0}
!14 = !{!9, !10, i64 8}
!15 = !{!9, !10, i64 32}
!16 = !{!9, !10, i64 16}
!17 = !{!9, !10, i64 24}
!18 = !{!9, !5, i64 40}
!19 = !{!6, !6, i64 0}
!20 = !{!9, !5, i64 48}
!21 = !{!22}
!22 = distinct !{!22, !23}
!23 = distinct !{!23, !"LVerDomain"}
!24 = !{!25}
!25 = distinct !{!25, !23}
!26 = !{!27}
!27 = distinct !{!27, !23}
!28 = !{!22, !25}
!29 = distinct !{!29, !30, !31}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = distinct !{!32, !30, !31, !33}
!33 = !{!"llvm.loop.unroll.runtime.disable"}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.unroll.disable"}
!36 = distinct !{!36, !30, !31}
!37 = !{!9, !12, i64 96}
!38 = distinct !{!38, !30}
!39 = distinct !{!39, !30}
!40 = !{!9, !12, i64 104}
!41 = distinct !{!41, !30}
!42 = distinct !{!42, !30}
