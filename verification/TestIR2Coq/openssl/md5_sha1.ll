; ModuleID = 'crypto/md5/md5_sha1.c'
source_filename = "crypto/md5/md5_sha1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md5_sha1_st = type { %struct.MD5state_st, %struct.SHAstate_st }
%struct.MD5state_st = type { i32, i32, i32, i32, i32, i32, [16 x i32], i32 }
%struct.SHAstate_st = type { i32, i32, i32, i32, i32, i32, i32, [16 x i32], i32 }

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_md5_sha1_init(%struct.md5_sha1_st* noundef %mctx) local_unnamed_addr #0 {
entry:
  %md5 = getelementptr inbounds %struct.md5_sha1_st, %struct.md5_sha1_st* %mctx, i64 0, i32 0
  %call = tail call i32 @MD5_Init(%struct.MD5state_st* noundef %md5) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sha1 = getelementptr inbounds %struct.md5_sha1_st, %struct.md5_sha1_st* %mctx, i64 0, i32 1
  %call1 = tail call i32 @SHA1_Init(%struct.SHAstate_st* noundef nonnull %sha1) #4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @MD5_Init(%struct.MD5state_st* noundef) local_unnamed_addr #1

declare i32 @SHA1_Init(%struct.SHAstate_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_md5_sha1_update(%struct.md5_sha1_st* noundef %mctx, i8* noundef %data, i64 noundef %count) local_unnamed_addr #0 {
entry:
  %md5 = getelementptr inbounds %struct.md5_sha1_st, %struct.md5_sha1_st* %mctx, i64 0, i32 0
  %call = tail call i32 @MD5_Update(%struct.MD5state_st* noundef %md5, i8* noundef %data, i64 noundef %count) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sha1 = getelementptr inbounds %struct.md5_sha1_st, %struct.md5_sha1_st* %mctx, i64 0, i32 1
  %call1 = tail call i32 @SHA1_Update(%struct.SHAstate_st* noundef nonnull %sha1, i8* noundef %data, i64 noundef %count) #4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @MD5_Update(%struct.MD5state_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @SHA1_Update(%struct.SHAstate_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_md5_sha1_final(i8* noundef %md, %struct.md5_sha1_st* noundef %mctx) local_unnamed_addr #0 {
entry:
  %md5 = getelementptr inbounds %struct.md5_sha1_st, %struct.md5_sha1_st* %mctx, i64 0, i32 0
  %call = tail call i32 @MD5_Final(i8* noundef %md, %struct.MD5state_st* noundef %md5) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %md, i64 16
  %sha1 = getelementptr inbounds %struct.md5_sha1_st, %struct.md5_sha1_st* %mctx, i64 0, i32 1
  %call1 = tail call i32 @SHA1_Final(i8* noundef nonnull %add.ptr, %struct.SHAstate_st* noundef nonnull %sha1) #4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @MD5_Final(i8* noundef, %struct.MD5state_st* noundef) local_unnamed_addr #1

declare i32 @SHA1_Final(i8* noundef, %struct.SHAstate_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_md5_sha1_ctrl(%struct.md5_sha1_st* noundef %mctx, i32 noundef %cmd, i32 noundef %mslen, i8* noundef %ms) local_unnamed_addr #0 {
entry:
  %padtmp = alloca [48 x i8], align 16
  %md5tmp = alloca [16 x i8], align 16
  %sha1tmp = alloca [20 x i8], align 16
  %0 = getelementptr inbounds [48 x i8], [48 x i8]* %padtmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #5
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* %md5tmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #5
  %2 = getelementptr inbounds [20 x i8], [20 x i8]* %sha1tmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %2) #5
  %cmp.not = icmp eq i32 %cmd, 29
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %cmp1 = icmp ne %struct.md5_sha1_st* %mctx, null
  %cmp4.not = icmp eq i32 %mslen, 48
  %or.cond = and i1 %cmp1, %cmp4.not
  br i1 %or.cond, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.end
  %call = tail call i32 @ossl_md5_sha1_update(%struct.md5_sha1_st* noundef nonnull %mctx, i8* noundef %ms, i64 noundef 48) #6
  %cmp7 = icmp slt i32 %call, 1
  br i1 %cmp7, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end6
  %call11 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 54, i64 noundef 48) #4
  %md5 = getelementptr inbounds %struct.md5_sha1_st, %struct.md5_sha1_st* %mctx, i64 0, i32 0
  %call13 = call i32 @MD5_Update(%struct.MD5state_st* noundef nonnull %md5, i8* noundef nonnull %0, i64 noundef 48) #4
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %cleanup, label %if.end15

if.end15:                                         ; preds = %if.end10
  %call18 = call i32 @MD5_Final(i8* noundef nonnull %1, %struct.MD5state_st* noundef nonnull %md5) #4
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %cleanup, label %if.end21

if.end21:                                         ; preds = %if.end15
  %sha1 = getelementptr inbounds %struct.md5_sha1_st, %struct.md5_sha1_st* %mctx, i64 0, i32 1
  %call23 = call i32 @SHA1_Update(%struct.SHAstate_st* noundef nonnull %sha1, i8* noundef nonnull %0, i64 noundef 40) #4
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup, label %if.end26

if.end26:                                         ; preds = %if.end21
  %call29 = call i32 @SHA1_Final(i8* noundef nonnull %2, %struct.SHAstate_st* noundef nonnull %sha1) #4
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %cleanup, label %if.end32

if.end32:                                         ; preds = %if.end26
  %call33 = call i32 @ossl_md5_sha1_init(%struct.md5_sha1_st* noundef nonnull %mctx) #6
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %cleanup, label %if.end36

if.end36:                                         ; preds = %if.end32
  %call38 = call i32 @ossl_md5_sha1_update(%struct.md5_sha1_st* noundef nonnull %mctx, i8* noundef %ms, i64 noundef 48) #6
  %cmp39 = icmp slt i32 %call38, 1
  br i1 %cmp39, label %cleanup, label %if.end42

if.end42:                                         ; preds = %if.end36
  %call44 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 92, i64 noundef 48) #4
  %call47 = call i32 @MD5_Update(%struct.MD5state_st* noundef nonnull %md5, i8* noundef nonnull %0, i64 noundef 48) #4
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %cleanup, label %if.end50

if.end50:                                         ; preds = %if.end42
  %call53 = call i32 @MD5_Update(%struct.MD5state_st* noundef nonnull %md5, i8* noundef nonnull %1, i64 noundef 16) #4
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %cleanup, label %if.end56

if.end56:                                         ; preds = %if.end50
  %call59 = call i32 @SHA1_Update(%struct.SHAstate_st* noundef nonnull %sha1, i8* noundef nonnull %0, i64 noundef 40) #4
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %cleanup, label %if.end62

if.end62:                                         ; preds = %if.end56
  %call65 = call i32 @SHA1_Update(%struct.SHAstate_st* noundef nonnull %sha1, i8* noundef nonnull %2, i64 noundef 20) #4
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %cleanup, label %if.end68

if.end68:                                         ; preds = %if.end62
  call void @OPENSSL_cleanse(i8* noundef nonnull %1, i64 noundef 16) #4
  call void @OPENSSL_cleanse(i8* noundef nonnull %2, i64 noundef 20) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.end56, %if.end50, %if.end42, %if.end36, %if.end32, %if.end26, %if.end21, %if.end15, %if.end10, %if.end6, %if.end, %entry, %if.end68
  %retval.0 = phi i32 [ 1, %if.end68 ], [ -2, %entry ], [ 0, %if.end ], [ 0, %if.end6 ], [ 0, %if.end10 ], [ 0, %if.end15 ], [ 0, %if.end21 ], [ 0, %if.end26 ], [ 0, %if.end32 ], [ 0, %if.end36 ], [ 0, %if.end42 ], [ 0, %if.end50 ], [ 0, %if.end56 ], [ 0, %if.end62 ]
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
