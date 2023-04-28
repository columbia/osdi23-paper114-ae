; ModuleID = 'crypto/modes/wrap128.c'
source_filename = "crypto/modes/wrap128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@default_iv = internal constant [8 x i8] c"\A6\A6\A6\A6\A6\A6\A6\A6", align 1
@default_aiv = internal constant [4 x i8] c"\A6YY\A6", align 1
@CRYPTO_128_unwrap_pad.zeros = internal global [8 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define i64 @CRYPTO_128_wrap(i8* noundef %key, i8* noundef %iv, i8* noundef %out, i8* noundef %in, i64 noundef %inlen, void (i8*, i8*, i8*)* nocapture noundef readonly %block) local_unnamed_addr #0 {
entry:
  %B = alloca [16 x i8], align 16
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %B, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #4
  %and = and i64 %inlen, 7
  %tobool = icmp ne i64 %and, 0
  %1 = add i64 %inlen, -2147483649
  %2 = icmp ult i64 %1, -2147483633
  %3 = or i1 %2, %tobool
  br i1 %3, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %out, i64 8
  %call = tail call i8* @memmove(i8* noundef nonnull %add.ptr, i8* noundef %in, i64 noundef %inlen) #5
  %tobool3.not = icmp eq i8* %iv, null
  %spec.store.select = select i1 %tobool3.not, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @default_iv, i64 0, i64 0), i8* %iv
  %call6 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef %spec.store.select, i64 noundef 8) #5
  %add.ptr13 = getelementptr inbounds [16 x i8], [16 x i8]* %B, i64 0, i64 8
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %B, i64 0, i64 7
  %arrayidx27 = getelementptr inbounds [16 x i8], [16 x i8]* %B, i64 0, i64 6
  %arrayidx35 = getelementptr inbounds [16 x i8], [16 x i8]* %B, i64 0, i64 5
  %arrayidx43 = getelementptr inbounds [16 x i8], [16 x i8]* %B, i64 0, i64 4
  br label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %if.end, %for.inc52
  %t.096 = phi i64 [ 1, %if.end ], [ %inc, %for.inc52 ]
  %j.095 = phi i64 [ 0, %if.end ], [ %inc53, %for.inc52 ]
  br label %for.body11

for.body11:                                       ; preds = %for.cond9.preheader, %if.end47
  %t.193 = phi i64 [ %inc, %if.end47 ], [ %t.096, %for.cond9.preheader ]
  %i.092 = phi i64 [ %add, %if.end47 ], [ 0, %for.cond9.preheader ]
  %R.091 = phi i8* [ %add.ptr51, %if.end47 ], [ %add.ptr, %for.cond9.preheader ]
  %call14 = call i8* @memcpy(i8* noundef nonnull %add.ptr13, i8* noundef nonnull %R.091, i64 noundef 8) #5
  call void %block(i8* noundef nonnull %0, i8* noundef nonnull %0, i8* noundef %key) #5
  %conv = trunc i64 %t.193 to i8
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !4
  %xor = xor i8 %4, %conv
  store i8 %xor, i8* %arrayidx, align 1, !tbaa !4
  %cmp21 = icmp ugt i64 %t.193, 255
  br i1 %cmp21, label %if.then23, label %if.end47

if.then23:                                        ; preds = %for.body11
  %5 = load i8, i8* %arrayidx27, align 2, !tbaa !4
  %6 = lshr i64 %t.193, 8
  %7 = trunc i64 %6 to i8
  %conv30 = xor i8 %5, %7
  store i8 %conv30, i8* %arrayidx27, align 2, !tbaa !4
  %8 = load i8, i8* %arrayidx35, align 1, !tbaa !4
  %9 = lshr i64 %t.193, 16
  %10 = trunc i64 %9 to i8
  %conv38 = xor i8 %8, %10
  store i8 %conv38, i8* %arrayidx35, align 1, !tbaa !4
  %11 = load i8, i8* %arrayidx43, align 4, !tbaa !4
  %12 = lshr i64 %t.193, 24
  %13 = trunc i64 %12 to i8
  %conv46 = xor i8 %11, %13
  store i8 %conv46, i8* %arrayidx43, align 4, !tbaa !4
  br label %if.end47

if.end47:                                         ; preds = %if.then23, %for.body11
  %call50 = call i8* @memcpy(i8* noundef nonnull %R.091, i8* noundef nonnull %add.ptr13, i64 noundef 8) #5
  %add = add i64 %i.092, 8
  %inc = add i64 %t.193, 1
  %add.ptr51 = getelementptr inbounds i8, i8* %R.091, i64 8
  %cmp10 = icmp ult i64 %add, %inlen
  br i1 %cmp10, label %for.body11, label %for.inc52, !llvm.loop !7

for.inc52:                                        ; preds = %if.end47
  %inc53 = add nuw nsw i64 %j.095, 1
  %exitcond.not = icmp eq i64 %inc53, 6
  br i1 %exitcond.not, label %for.end54, label %for.cond9.preheader, !llvm.loop !9

for.end54:                                        ; preds = %for.inc52
  %call55 = call i8* @memcpy(i8* noundef %out, i8* noundef nonnull %0, i64 noundef 8) #5
  %add56 = add i64 %inlen, 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end54
  %retval.0 = phi i64 [ %add56, %for.end54 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #4
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memmove(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i64 @CRYPTO_128_unwrap(i8* noundef %key, i8* noundef %iv, i8* noundef %out, i8* noundef %in, i64 noundef %inlen, void (i8*, i8*, i8*)* nocapture noundef readonly %block) local_unnamed_addr #0 {
entry:
  %got_iv = alloca [8 x i8], align 1
  %0 = getelementptr inbounds [8 x i8], [8 x i8]* %got_iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  %call = call fastcc i64 @crypto_128_unwrap_raw(i8* noundef %key, i8* noundef nonnull %0, i8* noundef %out, i8* noundef %in, i64 noundef %inlen, void (i8*, i8*, i8*)* noundef %block) #6
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i8* %iv, null
  %spec.store.select = select i1 %tobool.not, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @default_iv, i64 0, i64 0), i8* %iv
  %call4 = call i32 @CRYPTO_memcmp(i8* noundef nonnull %0, i8* noundef %spec.store.select, i64 noundef 8) #5
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @OPENSSL_cleanse(i8* noundef %out, i64 noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then6
  %retval.0 = phi i64 [ 0, %if.then6 ], [ 0, %entry ], [ %call, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @crypto_128_unwrap_raw(i8* noundef %key, i8* noundef %iv, i8* noundef %out, i8* noundef %in, i64 noundef %inlen, void (i8*, i8*, i8*)* nocapture noundef readonly %block) unnamed_addr #0 {
entry:
  %B = alloca [16 x i8], align 16
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %B, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #4
  %sub = add i64 %inlen, -8
  %and = and i64 %inlen, 7
  %tobool = icmp ne i64 %and, 0
  %1 = add i64 %inlen, -2147483657
  %2 = icmp ult i64 %1, -2147483633
  %3 = or i1 %2, %tobool
  br i1 %3, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %shr = lshr i64 %sub, 3
  %mul = mul nuw i64 %shr, 6
  %call = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef %in, i64 noundef 8) #5
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 8
  %call3 = call i8* @memmove(i8* noundef %out, i8* noundef nonnull %add.ptr, i64 noundef %sub) #5
  %add.ptr5 = getelementptr inbounds i8, i8* %out, i64 %sub
  %cmp890.not = icmp eq i64 %sub, 0
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %B, i64 0, i64 7
  %arrayidx21 = getelementptr inbounds [16 x i8], [16 x i8]* %B, i64 0, i64 6
  %arrayidx29 = getelementptr inbounds [16 x i8], [16 x i8]* %B, i64 0, i64 5
  %arrayidx37 = getelementptr inbounds [16 x i8], [16 x i8]* %B, i64 0, i64 4
  %add.ptr43 = getelementptr inbounds [16 x i8], [16 x i8]* %B, i64 0, i64 8
  br label %for.body

for.body:                                         ; preds = %if.end, %for.inc51
  %t.096 = phi i64 [ %mul, %if.end ], [ %t.1.lcssa, %for.inc51 ]
  %j.095 = phi i64 [ 0, %if.end ], [ %inc, %for.inc51 ]
  br i1 %cmp890.not, label %for.inc51, label %for.body9

for.body9:                                        ; preds = %for.body, %if.end41
  %R.094.pn = phi i8* [ %R.094, %if.end41 ], [ %add.ptr5, %for.body ]
  %t.192 = phi i64 [ %dec, %if.end41 ], [ %t.096, %for.body ]
  %i.091 = phi i64 [ %add, %if.end41 ], [ 0, %for.body ]
  %R.094 = getelementptr inbounds i8, i8* %R.094.pn, i64 -8
  %conv = trunc i64 %t.192 to i8
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !4
  %xor = xor i8 %4, %conv
  store i8 %xor, i8* %arrayidx, align 1, !tbaa !4
  %cmp14 = icmp ugt i64 %t.192, 255
  br i1 %cmp14, label %if.then16, label %if.end41

if.then16:                                        ; preds = %for.body9
  %5 = load i8, i8* %arrayidx21, align 2, !tbaa !4
  %6 = lshr i64 %t.192, 8
  %7 = trunc i64 %6 to i8
  %conv24 = xor i8 %5, %7
  store i8 %conv24, i8* %arrayidx21, align 2, !tbaa !4
  %8 = load i8, i8* %arrayidx29, align 1, !tbaa !4
  %9 = lshr i64 %t.192, 16
  %10 = trunc i64 %9 to i8
  %conv32 = xor i8 %8, %10
  store i8 %conv32, i8* %arrayidx29, align 1, !tbaa !4
  %11 = load i8, i8* %arrayidx37, align 4, !tbaa !4
  %12 = lshr i64 %t.192, 24
  %13 = trunc i64 %12 to i8
  %conv40 = xor i8 %11, %13
  store i8 %conv40, i8* %arrayidx37, align 4, !tbaa !4
  br label %if.end41

if.end41:                                         ; preds = %if.then16, %for.body9
  %call44 = call i8* @memcpy(i8* noundef nonnull %add.ptr43, i8* noundef nonnull %R.094, i64 noundef 8) #5
  call void %block(i8* noundef nonnull %0, i8* noundef nonnull %0, i8* noundef %key) #5
  %call49 = call i8* @memcpy(i8* noundef nonnull %R.094, i8* noundef nonnull %add.ptr43, i64 noundef 8) #5
  %add = add i64 %i.091, 8
  %dec = add i64 %t.192, -1
  %cmp8 = icmp ult i64 %add, %sub
  br i1 %cmp8, label %for.body9, label %for.inc51, !llvm.loop !10

for.inc51:                                        ; preds = %if.end41, %for.body
  %t.1.lcssa = phi i64 [ %t.096, %for.body ], [ %dec, %if.end41 ]
  %inc = add nuw nsw i64 %j.095, 1
  %exitcond.not = icmp eq i64 %inc, 6
  br i1 %exitcond.not, label %for.end52, label %for.body, !llvm.loop !11

for.end52:                                        ; preds = %for.inc51
  %call53 = call i8* @memcpy(i8* noundef %iv, i8* noundef nonnull %0, i64 noundef 8) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end52
  %retval.0 = phi i64 [ %sub, %for.end52 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #4
  ret i64 %retval.0
}

declare i32 @CRYPTO_memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i64 @CRYPTO_128_wrap_pad(i8* noundef %key, i8* noundef %icv, i8* noundef %out, i8* noundef %in, i64 noundef %inlen, void (i8*, i8*, i8*)* nocapture noundef readonly %block) local_unnamed_addr #0 {
entry:
  %aiv = alloca [8 x i8], align 1
  %add = add i64 %inlen, 7
  %div = and i64 %add, -8
  %sub = sub i64 %div, %inlen
  %0 = getelementptr inbounds [8 x i8], [8 x i8]* %aiv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  %1 = add i64 %inlen, -2147483648
  %2 = icmp ult i64 %1, -2147483647
  br i1 %2, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i8* %icv, null
  br i1 %tobool.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %call = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @default_aiv, i64 0, i64 0), i64 noundef 4) #5
  br label %if.end5

if.else:                                          ; preds = %if.end
  %call4 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef nonnull %icv, i64 noundef 4) #5
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %shr = lshr i64 %inlen, 24
  %conv = trunc i64 %shr to i8
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %aiv, i64 0, i64 4
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !4
  %shr6 = lshr i64 %inlen, 16
  %conv8 = trunc i64 %shr6 to i8
  %arrayidx9 = getelementptr inbounds [8 x i8], [8 x i8]* %aiv, i64 0, i64 5
  store i8 %conv8, i8* %arrayidx9, align 1, !tbaa !4
  %shr10 = lshr i64 %inlen, 8
  %conv12 = trunc i64 %shr10 to i8
  %arrayidx13 = getelementptr inbounds [8 x i8], [8 x i8]* %aiv, i64 0, i64 6
  store i8 %conv12, i8* %arrayidx13, align 1, !tbaa !4
  %conv15 = trunc i64 %inlen to i8
  %arrayidx16 = getelementptr inbounds [8 x i8], [8 x i8]* %aiv, i64 0, i64 7
  store i8 %conv15, i8* %arrayidx16, align 1, !tbaa !4
  %cmp17 = icmp eq i64 %div, 8
  br i1 %cmp17, label %if.then19, label %if.else26

if.then19:                                        ; preds = %if.end5
  %add.ptr = getelementptr inbounds i8, i8* %out, i64 8
  %call20 = call i8* @memmove(i8* noundef nonnull %add.ptr, i8* noundef %in, i64 noundef %inlen) #5
  %call22 = call i8* @memcpy(i8* noundef %out, i8* noundef nonnull %0, i64 noundef 8) #5
  %add.ptr24 = getelementptr inbounds i8, i8* %add.ptr, i64 %inlen
  %call25 = call i8* @memset(i8* noundef nonnull %add.ptr24, i32 noundef 0, i64 noundef %sub) #5
  call void %block(i8* noundef %out, i8* noundef %out, i8* noundef %key) #5
  br label %cleanup

if.else26:                                        ; preds = %if.end5
  %call27 = call i8* @memmove(i8* noundef %out, i8* noundef %in, i64 noundef %inlen) #5
  %add.ptr28 = getelementptr inbounds i8, i8* %out, i64 %inlen
  %call29 = call i8* @memset(i8* noundef %add.ptr28, i32 noundef 0, i64 noundef %sub) #5
  %call31 = call i64 @CRYPTO_128_wrap(i8* noundef %key, i8* noundef nonnull %0, i8* noundef %out, i8* noundef %out, i64 noundef %div, void (i8*, i8*, i8*)* noundef %block) #6
  %sext = shl i64 %call31, 32
  %phi.cast = ashr exact i64 %sext, 32
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.else26, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ 16, %if.then19 ], [ %phi.cast, %if.else26 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i64 %retval.0
}

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i64 @CRYPTO_128_unwrap_pad(i8* noundef %key, i8* noundef %icv, i8* noundef %out, i8* noundef %in, i64 noundef %inlen, void (i8*, i8*, i8*)* nocapture noundef readonly %block) local_unnamed_addr #0 {
entry:
  %aiv = alloca [8 x i8], align 1
  %buff = alloca [16 x i8], align 16
  %0 = getelementptr inbounds [8 x i8], [8 x i8]* %aiv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  %cmp1 = icmp ult i64 %inlen, 16
  %1 = and i64 %inlen, -2147483641
  %2 = icmp ne i64 %1, 0
  %3 = or i1 %cmp1, %2
  br i1 %3, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp4 = icmp eq i64 %inlen, 16
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %4 = getelementptr inbounds [16 x i8], [16 x i8]* %buff, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #4
  call void %block(i8* noundef %in, i8* noundef nonnull %4, i8* noundef %key) #5
  %call = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef nonnull %4, i64 noundef 8) #5
  %add.ptr = getelementptr inbounds [16 x i8], [16 x i8]* %buff, i64 0, i64 8
  %call9 = call i8* @memcpy(i8* noundef %out, i8* noundef nonnull %add.ptr, i64 noundef 8) #5
  call void @OPENSSL_cleanse(i8* noundef nonnull %4, i64 noundef 16) #5
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #4
  br label %if.end17

if.else:                                          ; preds = %if.end
  %sub11 = add nsw i64 %inlen, -8
  %call13 = call fastcc i64 @crypto_128_unwrap_raw(i8* noundef %key, i8* noundef nonnull %0, i8* noundef %out, i8* noundef %in, i64 noundef %inlen, void (i8*, i8*, i8*)* noundef %block) #6
  %cmp14.not = icmp eq i64 %sub11, %call13
  br i1 %cmp14.not, label %if.end17, label %cleanup.sink.split

if.end17:                                         ; preds = %if.else, %if.then5
  %padded_len.0 = phi i64 [ 8, %if.then5 ], [ %sub11, %if.else ]
  %tobool.not = icmp eq i8* %icv, null
  br i1 %tobool.not, label %land.lhs.true, label %land.lhs.true23

land.lhs.true:                                    ; preds = %if.end17
  %call19 = call i32 @CRYPTO_memcmp(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @default_aiv, i64 0, i64 0), i64 noundef 4) #5
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end28, label %cleanup.sink.split

land.lhs.true23:                                  ; preds = %if.end17
  %call25 = call i32 @CRYPTO_memcmp(i8* noundef nonnull %0, i8* noundef nonnull %icv, i64 noundef 4) #5
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %cleanup.sink.split

if.end28:                                         ; preds = %land.lhs.true, %land.lhs.true23
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %aiv, i64 0, i64 4
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !4
  %conv = zext i8 %5 to i64
  %shl = shl nuw nsw i64 %conv, 24
  %arrayidx29 = getelementptr inbounds [8 x i8], [8 x i8]* %aiv, i64 0, i64 5
  %6 = load i8, i8* %arrayidx29, align 1, !tbaa !4
  %conv30 = zext i8 %6 to i64
  %shl31 = shl nuw nsw i64 %conv30, 16
  %or = or i64 %shl31, %shl
  %arrayidx32 = getelementptr inbounds [8 x i8], [8 x i8]* %aiv, i64 0, i64 6
  %7 = load i8, i8* %arrayidx32, align 1, !tbaa !4
  %conv33 = zext i8 %7 to i64
  %shl34 = shl nuw nsw i64 %conv33, 8
  %or35 = or i64 %or, %shl34
  %arrayidx36 = getelementptr inbounds [8 x i8], [8 x i8]* %aiv, i64 0, i64 7
  %8 = load i8, i8* %arrayidx36, align 1, !tbaa !4
  %conv37 = zext i8 %8 to i64
  %or38 = or i64 %or35, %conv37
  %9 = add nsw i64 %inlen, -16
  %mul = and i64 %9, -8
  %cmp41.not = icmp ult i64 %mul, %or38
  br i1 %cmp41.not, label %lor.lhs.false43, label %cleanup.sink.split

lor.lhs.false43:                                  ; preds = %if.end28
  %10 = add nsw i64 %inlen, -8
  %mul44 = and i64 %10, -8
  %cmp45 = icmp ugt i64 %or38, %mul44
  br i1 %cmp45, label %cleanup.sink.split, label %if.end48

if.end48:                                         ; preds = %lor.lhs.false43
  %sub49 = sub i64 %padded_len.0, %or38
  %add.ptr50 = getelementptr inbounds i8, i8* %out, i64 %or38
  %call51 = call i32 @CRYPTO_memcmp(i8* noundef nonnull %add.ptr50, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @CRYPTO_128_unwrap_pad.zeros, i64 0, i64 0), i64 noundef %sub49) #5
  %cmp52.not = icmp eq i32 %call51, 0
  br i1 %cmp52.not, label %cleanup, label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end48, %if.end28, %lor.lhs.false43, %land.lhs.true, %land.lhs.true23, %if.else
  call void @OPENSSL_cleanse(i8* noundef %out, i64 noundef %inlen) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end48, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ %or38, %if.end48 ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i64 %retval.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }

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
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
