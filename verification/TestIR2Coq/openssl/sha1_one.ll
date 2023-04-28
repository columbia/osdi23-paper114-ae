; ModuleID = 'crypto/sha/sha1_one.c'
source_filename = "crypto/sha/sha1_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SHAstate_st = type { i32, i32, i32, i32, i32, i32, i32, [16 x i32], i32 }
%struct.ossl_lib_ctx_st = type opaque

@ossl_sha1.m = internal global [20 x i8] zeroinitializer, align 16
@SHA1.m = internal global [20 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1
@SHA224.m = internal global [28 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"SHA224\00", align 1
@SHA256.m = internal global [32 x i8] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [7 x i8] c"SHA256\00", align 1
@SHA384.m = internal global [48 x i8] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [7 x i8] c"SHA384\00", align 1
@SHA512.m = internal global [64 x i8] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [7 x i8] c"SHA512\00", align 1

; Function Attrs: noinline nounwind uwtable
define i8* @ossl_sha1(i8* noundef %d, i64 noundef %n, i8* noundef %md) local_unnamed_addr #0 {
entry:
  %c = alloca %struct.SHAstate_st, align 4
  %0 = bitcast %struct.SHAstate_st* %c to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %0) #3
  %cmp = icmp eq i8* %md, null
  %spec.store.select = select i1 %cmp, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @ossl_sha1.m, i64 0, i64 0), i8* %md
  %call = call i32 @SHA1_Init(%struct.SHAstate_st* noundef nonnull %c) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %entry
  %call3 = call i32 @SHA1_Update(%struct.SHAstate_st* noundef nonnull %c, i8* noundef %d, i64 noundef %n) #4
  %call4 = call i32 @SHA1_Final(i8* noundef %spec.store.select, %struct.SHAstate_st* noundef nonnull %c) #4
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 96) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end2
  %retval.0 = phi i8* [ %spec.store.select, %if.end2 ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %0) #3
  ret i8* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @SHA1_Init(%struct.SHAstate_st* noundef) local_unnamed_addr #2

declare i32 @SHA1_Update(%struct.SHAstate_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @SHA1_Final(i8* noundef, %struct.SHAstate_st* noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i8* @SHA1(i8* noundef %d, i64 noundef %n, i8* noundef %md) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %md, null
  %spec.store.select = select i1 %cmp, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @SHA1.m, i64 0, i64 0), i8* %md
  %call = tail call i32 @EVP_Q_digest(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef null, i8* noundef %d, i64 noundef %n, i8* noundef %spec.store.select, i64* noundef null) #4
  %tobool.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool.not, i8* null, i8* %spec.store.select
  ret i8* %cond
}

declare i32 @EVP_Q_digest(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @SHA224(i8* noundef %d, i64 noundef %n, i8* noundef %md) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %md, null
  %spec.store.select = select i1 %cmp, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @SHA224.m, i64 0, i64 0), i8* %md
  %call = tail call i32 @EVP_Q_digest(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* noundef null, i8* noundef %d, i64 noundef %n, i8* noundef %spec.store.select, i64* noundef null) #4
  %tobool.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool.not, i8* null, i8* %spec.store.select
  ret i8* %cond
}

; Function Attrs: noinline nounwind uwtable
define i8* @SHA256(i8* noundef %d, i64 noundef %n, i8* noundef %md) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %md, null
  %spec.store.select = select i1 %cmp, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @SHA256.m, i64 0, i64 0), i8* %md
  %call = tail call i32 @EVP_Q_digest(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* noundef null, i8* noundef %d, i64 noundef %n, i8* noundef %spec.store.select, i64* noundef null) #4
  %tobool.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool.not, i8* null, i8* %spec.store.select
  ret i8* %cond
}

; Function Attrs: noinline nounwind uwtable
define i8* @SHA384(i8* noundef %d, i64 noundef %n, i8* noundef %md) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %md, null
  %spec.store.select = select i1 %cmp, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @SHA384.m, i64 0, i64 0), i8* %md
  %call = tail call i32 @EVP_Q_digest(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef null, i8* noundef %d, i64 noundef %n, i8* noundef %spec.store.select, i64* noundef null) #4
  %tobool.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool.not, i8* null, i8* %spec.store.select
  ret i8* %cond
}

; Function Attrs: noinline nounwind uwtable
define i8* @SHA512(i8* noundef %d, i64 noundef %n, i8* noundef %md) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %md, null
  %spec.store.select = select i1 %cmp, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @SHA512.m, i64 0, i64 0), i8* %md
  %call = tail call i32 @EVP_Q_digest(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* noundef null, i8* noundef %d, i64 noundef %n, i8* noundef %spec.store.select, i64* noundef null) #4
  %tobool.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool.not, i8* null, i8* %spec.store.select
  ret i8* %cond
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
