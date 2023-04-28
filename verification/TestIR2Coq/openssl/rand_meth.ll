; ModuleID = 'crypto/rand/rand_meth.c'
source_filename = "crypto/rand/rand_meth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rand_meth_st = type { i32 (i8*, i32)*, i32 (i8*, i32)*, void ()*, i32 (i8*, i32, double)*, i32 (i8*, i32)*, i32 ()* }
%struct.evp_rand_ctx_st = type opaque
%struct.ossl_lib_ctx_st = type opaque

@ossl_rand_meth = global %struct.rand_meth_st { i32 (i8*, i32)* @drbg_seed, i32 (i8*, i32)* @drbg_bytes, void ()* null, i32 (i8*, i32, double)* @drbg_add, i32 (i8*, i32)* @drbg_bytes, i32 ()* @drbg_status }, align 8

; Function Attrs: noinline nounwind uwtable
define internal i32 @drbg_seed(i8* noundef %buf, i32 noundef %num) #0 {
entry:
  %conv = sitofp i32 %num to double
  %call = tail call i32 @drbg_add(i8* noundef %buf, i32 noundef %num, double noundef %conv) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @drbg_bytes(i8* noundef %out, i32 noundef %count) #0 {
entry:
  %call = tail call %struct.evp_rand_ctx_st* @RAND_get0_public(%struct.ossl_lib_ctx_st* noundef null) #4
  %cmp = icmp eq %struct.evp_rand_ctx_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %conv = sext i32 %count to i64
  %call1 = tail call i32 @EVP_RAND_generate(%struct.evp_rand_ctx_st* noundef nonnull %call, i8* noundef %out, i64 noundef %conv, i32 noundef 0, i32 noundef 0, i8* noundef null, i64 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @drbg_add(i8* noundef %buf, i32 noundef %num, double noundef %randomness) #0 {
entry:
  %call = tail call %struct.evp_rand_ctx_st* @RAND_get0_primary(%struct.ossl_lib_ctx_st* noundef null) #4
  %cmp = icmp eq %struct.evp_rand_ctx_st* %call, null
  %cmp1 = icmp slt i32 %num, 1
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %conv6 = zext i32 %num to i64
  %call2 = tail call i32 @EVP_RAND_reseed(%struct.evp_rand_ctx_st* noundef nonnull %call, i32 noundef 0, i8* noundef null, i64 noundef 0, i8* noundef %buf, i64 noundef %conv6) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @drbg_status() #0 {
entry:
  %call = tail call %struct.evp_rand_ctx_st* @RAND_get0_primary(%struct.ossl_lib_ctx_st* noundef null) #4
  %cmp = icmp eq %struct.evp_rand_ctx_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @EVP_RAND_get_state(%struct.evp_rand_ctx_st* noundef nonnull %call) #4
  %cmp2 = icmp eq i32 %call1, 1
  %cond = zext i1 %cmp2 to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %cond, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.rand_meth_st* @RAND_OpenSSL() local_unnamed_addr #1 {
entry:
  ret %struct.rand_meth_st* @ossl_rand_meth
}

declare %struct.evp_rand_ctx_st* @RAND_get0_public(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

declare i32 @EVP_RAND_generate(%struct.evp_rand_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef, i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare %struct.evp_rand_ctx_st* @RAND_get0_primary(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

declare i32 @EVP_RAND_reseed(%struct.evp_rand_ctx_st* noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_RAND_get_state(%struct.evp_rand_ctx_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin "no-builtins" }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
