; ModuleID = 'crypto/bn/bn_depr.c'
source_filename = "crypto/bn/bn_depr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_st = type { i64*, i32, i32, i32, i32 }
%struct.bn_gencb_st = type { i32, i8*, %union.anon }
%union.anon = type { void (i32, i32, i8*)* }
%struct.bignum_ctx = type opaque

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_st* @BN_generate_prime(%struct.bignum_st* noundef %ret, i32 noundef %bits, i32 noundef %safe, %struct.bignum_st* noundef %add, %struct.bignum_st* noundef %rem, void (i32, i32, i8*)* noundef %callback, i8* noundef %cb_arg) local_unnamed_addr #0 {
entry:
  %cb = alloca %struct.bn_gencb_st, align 8
  %0 = bitcast %struct.bn_gencb_st* %cb to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #3
  call void @BN_GENCB_set_old(%struct.bn_gencb_st* noundef nonnull %cb, void (i32, i32, i8*)* noundef %callback, i8* noundef %cb_arg) #4
  %cmp = icmp eq %struct.bignum_st* %ret, null
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %call = call %struct.bignum_st* @BN_new() #4
  %cmp1 = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp1, label %err, label %if.end3

if.end3:                                          ; preds = %entry, %if.then
  %rnd.0 = phi %struct.bignum_st* [ %call, %if.then ], [ %ret, %entry ]
  %call4 = call i32 @BN_generate_prime_ex(%struct.bignum_st* noundef nonnull %rnd.0, i32 noundef %bits, i32 noundef %safe, %struct.bignum_st* noundef %add, %struct.bignum_st* noundef %rem, %struct.bn_gencb_st* noundef nonnull %cb) #4
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %err, label %cleanup

err:                                              ; preds = %if.end3, %if.then
  %rnd.1 = phi %struct.bignum_st* [ null, %if.then ], [ %rnd.0, %if.end3 ]
  call void @BN_free(%struct.bignum_st* noundef %rnd.1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %err
  %retval.0 = phi %struct.bignum_st* [ null, %err ], [ %rnd.0, %if.end3 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #3
  ret %struct.bignum_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @BN_GENCB_set_old(%struct.bn_gencb_st* noundef, void (i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_new() local_unnamed_addr #2

declare i32 @BN_generate_prime_ex(%struct.bignum_st* noundef, i32 noundef, i32 noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #2

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @BN_is_prime(%struct.bignum_st* noundef %a, i32 noundef %checks, void (i32, i32, i8*)* noundef %callback, %struct.bignum_ctx* noundef %ctx_passed, i8* noundef %cb_arg) local_unnamed_addr #0 {
entry:
  %cb = alloca %struct.bn_gencb_st, align 8
  %0 = bitcast %struct.bn_gencb_st* %cb to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #3
  call void @BN_GENCB_set_old(%struct.bn_gencb_st* noundef nonnull %cb, void (i32, i32, i8*)* noundef %callback, i8* noundef %cb_arg) #4
  %call = call i32 @ossl_bn_check_prime(%struct.bignum_st* noundef %a, i32 noundef %checks, %struct.bignum_ctx* noundef %ctx_passed, i32 noundef 0, %struct.bn_gencb_st* noundef nonnull %cb) #4
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #3
  ret i32 %call
}

declare i32 @ossl_bn_check_prime(%struct.bignum_st* noundef, i32 noundef, %struct.bignum_ctx* noundef, i32 noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @BN_is_prime_fasttest(%struct.bignum_st* noundef %a, i32 noundef %checks, void (i32, i32, i8*)* noundef %callback, %struct.bignum_ctx* noundef %ctx_passed, i8* noundef %cb_arg, i32 noundef %do_trial_division) local_unnamed_addr #0 {
entry:
  %cb = alloca %struct.bn_gencb_st, align 8
  %0 = bitcast %struct.bn_gencb_st* %cb to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #3
  call void @BN_GENCB_set_old(%struct.bn_gencb_st* noundef nonnull %cb, void (i32, i32, i8*)* noundef %callback, i8* noundef %cb_arg) #4
  %call = call i32 @ossl_bn_check_prime(%struct.bignum_st* noundef %a, i32 noundef %checks, %struct.bignum_ctx* noundef %ctx_passed, i32 noundef %do_trial_division, %struct.bn_gencb_st* noundef nonnull %cb) #4
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #3
  ret i32 %call
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
