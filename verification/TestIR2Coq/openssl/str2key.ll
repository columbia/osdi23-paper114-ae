; ModuleID = 'crypto/des/str2key.c'
source_filename = "crypto/des/str2key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DES_ks = type { [16 x %union.anon] }
%union.anon = type { [2 x i32] }

; Function Attrs: noinline nounwind uwtable
define void @DES_string_to_key(i8* noundef %str, [8 x i8]* noundef %key) local_unnamed_addr #0 {
entry:
  %ks = alloca %struct.DES_ks, align 4
  %0 = bitcast %struct.DES_ks* %ks to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #6
  %1 = getelementptr [8 x i8], [8 x i8]* %key, i64 0, i64 0
  %call = tail call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 8) #7
  %call1 = tail call i64 @strlen(i8* noundef %str) #8
  %conv = trunc i64 %call1 to i32
  %cmp66 = icmp sgt i32 %conv, 0
  br i1 %cmp66, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = and i64 %call1, 4294967295
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %if.end
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %if.end ]
  %arrayidx = getelementptr inbounds i8, i8* %str, i64 %indvars.iv
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !4
  %rem70 = and i64 %indvars.iv, 8
  %cmp3.not.not = icmp eq i64 %rem70, 0
  br i1 %cmp3.not.not, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %shl = shl i8 %2, 1
  %rem6 = and i64 %indvars.iv, 7
  br label %if.end

if.else:                                          ; preds = %for.body
  %rev = tail call i8 @llvm.bitreverse.i8(i8 %2)
  %rem33 = and i64 %indvars.iv, 7
  %sub = xor i64 %rem33, 7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %sub.sink = phi i64 [ %sub, %if.else ], [ %rem6, %if.then ]
  %rev.sink = phi i8 [ %rev, %if.else ], [ %shl, %if.then ]
  %arrayidx35 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 %sub.sink
  %3 = load i8, i8* %arrayidx35, align 1, !tbaa !4
  %xor3765 = xor i8 %3, %rev.sink
  store i8 %xor3765, i8* %arrayidx35, align 1, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !7

for.end:                                          ; preds = %if.end, %entry
  tail call void @DES_set_odd_parity([8 x i8]* noundef %key) #7
  call void @DES_set_key_unchecked([8 x i8]* noundef %key, %struct.DES_ks* noundef nonnull %ks) #7
  %sext = shl i64 %call1, 32
  %conv39 = ashr exact i64 %sext, 32
  %call40 = call i32 @DES_cbc_cksum(i8* noundef %str, [8 x i8]* noundef %key, i64 noundef %conv39, %struct.DES_ks* noundef nonnull %ks, [8 x i8]* noundef %key) #7
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 128) #7
  call void @DES_set_odd_parity([8 x i8]* noundef %key) #7
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare void @DES_set_odd_parity([8 x i8]* noundef) local_unnamed_addr #4

declare void @DES_set_key_unchecked([8 x i8]* noundef, %struct.DES_ks* noundef) local_unnamed_addr #4

declare i32 @DES_cbc_cksum(i8* noundef, [8 x i8]* noundef, i64 noundef, %struct.DES_ks* noundef, [8 x i8]* noundef) local_unnamed_addr #4

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define void @DES_string_to_2keys(i8* noundef %str, [8 x i8]* noundef %key1, [8 x i8]* noundef %key2) local_unnamed_addr #0 {
entry:
  %ks = alloca %struct.DES_ks, align 4
  %0 = bitcast %struct.DES_ks* %ks to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #6
  %1 = getelementptr [8 x i8], [8 x i8]* %key1, i64 0, i64 0
  %call = tail call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 8) #7
  %2 = getelementptr [8 x i8], [8 x i8]* %key2, i64 0, i64 0
  %call1 = tail call i8* @memset(i8* noundef %2, i32 noundef 0, i64 noundef 8) #7
  %call2 = tail call i64 @strlen(i8* noundef %str) #8
  %conv = trunc i64 %call2 to i32
  %cmp121 = icmp sgt i32 %conv, 0
  br i1 %cmp121, label %for.body.preheader, label %if.then70

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = and i64 %call2, 4294967295
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %if.end67
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %if.end67 ]
  %arrayidx = getelementptr inbounds i8, i8* %str, i64 %indvars.iv
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !4
  %4 = trunc i64 %indvars.iv to i32
  %rem = and i32 %4, 16
  %cmp4.not.not = icmp eq i32 %rem, 0
  br i1 %cmp4.not.not, label %if.then, label %if.else24

if.then:                                          ; preds = %for.body
  %rem6 = and i32 %4, 8
  %cmp7.not.not = icmp eq i32 %rem6, 0
  %shl = shl i8 %3, 1
  %rem11 = and i64 %indvars.iv, 7
  br i1 %cmp7.not.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then
  %arrayidx13 = getelementptr inbounds [8 x i8], [8 x i8]* %key1, i64 0, i64 %rem11
  br label %if.end67

if.else:                                          ; preds = %if.then
  %arrayidx20 = getelementptr inbounds [8 x i8], [8 x i8]* %key2, i64 0, i64 %rem11
  br label %if.end67

if.else24:                                        ; preds = %for.body
  %rev = tail call i8 @llvm.bitreverse.i8(i8 %3)
  %rem46 = and i32 %4, 8
  %cmp47.not.not = icmp eq i32 %rem46, 0
  %rem51 = and i64 %indvars.iv, 7
  %sub = xor i64 %rem51, 7
  br i1 %cmp47.not.not, label %if.then49, label %if.else57

if.then49:                                        ; preds = %if.else24
  %arrayidx53 = getelementptr inbounds [8 x i8], [8 x i8]* %key1, i64 0, i64 %sub
  br label %if.end67

if.else57:                                        ; preds = %if.else24
  %arrayidx62 = getelementptr inbounds [8 x i8], [8 x i8]* %key2, i64 0, i64 %sub
  br label %if.end67

if.end67:                                         ; preds = %if.then49, %if.else57, %if.then9, %if.else
  %arrayidx53.sink126 = phi i8* [ %arrayidx53, %if.then49 ], [ %arrayidx62, %if.else57 ], [ %arrayidx13, %if.then9 ], [ %arrayidx20, %if.else ]
  %rev.sink = phi i8 [ %rev, %if.then49 ], [ %rev, %if.else57 ], [ %shl, %if.then9 ], [ %shl, %if.else ]
  %5 = load i8, i8* %arrayidx53.sink126, align 1, !tbaa !4
  %xor55120 = xor i8 %5, %rev.sink
  store i8 %xor55120, i8* %arrayidx53.sink126, align 1, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !9

for.end:                                          ; preds = %if.end67
  %cmp68 = icmp slt i32 %conv, 9
  br i1 %cmp68, label %if.then70, label %if.end72

if.then70:                                        ; preds = %entry, %for.end
  %call71 = tail call i8* @memcpy(i8* noundef %2, i8* noundef %1, i64 noundef 8) #7
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %for.end
  tail call void @DES_set_odd_parity([8 x i8]* noundef %key1) #7
  tail call void @DES_set_odd_parity([8 x i8]* noundef %key2) #7
  call void @DES_set_key_unchecked([8 x i8]* noundef %key1, %struct.DES_ks* noundef nonnull %ks) #7
  %sext = shl i64 %call2, 32
  %conv73 = ashr exact i64 %sext, 32
  %call74 = call i32 @DES_cbc_cksum(i8* noundef %str, [8 x i8]* noundef %key1, i64 noundef %conv73, %struct.DES_ks* noundef nonnull %ks, [8 x i8]* noundef %key1) #7
  call void @DES_set_key_unchecked([8 x i8]* noundef %key2, %struct.DES_ks* noundef nonnull %ks) #7
  %call76 = call i32 @DES_cbc_cksum(i8* noundef %str, [8 x i8]* noundef %key2, i64 noundef %conv73, %struct.DES_ks* noundef nonnull %ks, [8 x i8]* noundef %key2) #7
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 128) #7
  call void @DES_set_odd_parity([8 x i8]* noundef %key1) #7
  call void @DES_set_odd_parity([8 x i8]* noundef %key2) #7
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #6
  ret void
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.bitreverse.i8(i8) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
