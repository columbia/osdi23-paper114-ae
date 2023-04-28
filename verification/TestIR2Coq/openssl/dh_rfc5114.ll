; ModuleID = 'crypto/dh/dh_rfc5114.c'
source_filename = "crypto/dh/dh_rfc5114.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_st = type opaque
%struct.dh_st = type { i32, i32, %struct.ffc_params_st, i32, %struct.bignum_st*, %struct.bignum_st*, i32, %struct.bn_mont_ctx_st*, i32, %struct.crypto_ex_data_st, %struct.engine_st*, %struct.ossl_lib_ctx_st*, %struct.dh_method*, i8*, i64 }
%struct.ffc_params_st = type { %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i64, i32, i32, i32, i32, i32, i8*, i8* }
%struct.bn_mont_ctx_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.engine_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.dh_method = type { i8*, i32 (%struct.dh_st*)*, i32 (i8*, %struct.bignum_st*, %struct.dh_st*)*, i32 (%struct.dh_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dh_st*)*, i32 (%struct.dh_st*)*, i32, i8*, i32 (%struct.dh_st*, i32, i32, %struct.bn_gencb_st*)* }
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type opaque

@ossl_bignum_dh1024_160_p = external constant %struct.bignum_st, align 1
@ossl_bignum_dh1024_160_g = external constant %struct.bignum_st, align 1
@ossl_bignum_dh1024_160_q = external constant %struct.bignum_st, align 1
@ossl_bignum_dh2048_224_p = external constant %struct.bignum_st, align 1
@ossl_bignum_dh2048_224_g = external constant %struct.bignum_st, align 1
@ossl_bignum_dh2048_224_q = external constant %struct.bignum_st, align 1
@ossl_bignum_dh2048_256_p = external constant %struct.bignum_st, align 1
@ossl_bignum_dh2048_256_g = external constant %struct.bignum_st, align 1
@ossl_bignum_dh2048_256_q = external constant %struct.bignum_st, align 1

; Function Attrs: noinline nounwind uwtable
define %struct.dh_st* @DH_get_1024_160() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.dh_st* @DH_new() #2
  %cmp = icmp eq %struct.dh_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull @ossl_bignum_dh1024_160_p) #2
  %p = getelementptr inbounds %struct.dh_st, %struct.dh_st* %call, i64 0, i32 2, i32 0
  store %struct.bignum_st* %call1, %struct.bignum_st** %p, align 8, !tbaa !4
  %call2 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull @ossl_bignum_dh1024_160_g) #2
  %g = getelementptr inbounds %struct.dh_st, %struct.dh_st* %call, i64 0, i32 2, i32 2
  store %struct.bignum_st* %call2, %struct.bignum_st** %g, align 8, !tbaa !13
  %call4 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull @ossl_bignum_dh1024_160_q) #2
  %q = getelementptr inbounds %struct.dh_st, %struct.dh_st* %call, i64 0, i32 2, i32 1
  store %struct.bignum_st* %call4, %struct.bignum_st** %q, align 8, !tbaa !14
  %0 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  %cmp8 = icmp eq %struct.bignum_st* %0, null
  %cmp11 = icmp eq %struct.bignum_st* %call4, null
  %or.cond = select i1 %cmp8, i1 true, i1 %cmp11
  br i1 %or.cond, label %if.then16, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.end
  %1 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !13
  %cmp15 = icmp eq %struct.bignum_st* %1, null
  br i1 %cmp15, label %if.then16, label %cleanup

if.then16:                                        ; preds = %lor.lhs.false12, %if.end
  tail call void @DH_free(%struct.dh_st* noundef nonnull %call) #2
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false12, %entry, %if.then16
  %retval.0 = phi %struct.dh_st* [ null, %if.then16 ], [ null, %entry ], [ %call, %lor.lhs.false12 ]
  ret %struct.dh_st* %retval.0
}

declare %struct.dh_st* @DH_new() local_unnamed_addr #1

declare %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef) local_unnamed_addr #1

declare void @DH_free(%struct.dh_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.dh_st* @DH_get_2048_224() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.dh_st* @DH_new() #2
  %cmp = icmp eq %struct.dh_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull @ossl_bignum_dh2048_224_p) #2
  %p = getelementptr inbounds %struct.dh_st, %struct.dh_st* %call, i64 0, i32 2, i32 0
  store %struct.bignum_st* %call1, %struct.bignum_st** %p, align 8, !tbaa !4
  %call2 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull @ossl_bignum_dh2048_224_g) #2
  %g = getelementptr inbounds %struct.dh_st, %struct.dh_st* %call, i64 0, i32 2, i32 2
  store %struct.bignum_st* %call2, %struct.bignum_st** %g, align 8, !tbaa !13
  %call4 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull @ossl_bignum_dh2048_224_q) #2
  %q = getelementptr inbounds %struct.dh_st, %struct.dh_st* %call, i64 0, i32 2, i32 1
  store %struct.bignum_st* %call4, %struct.bignum_st** %q, align 8, !tbaa !14
  %0 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  %cmp8 = icmp eq %struct.bignum_st* %0, null
  %cmp11 = icmp eq %struct.bignum_st* %call4, null
  %or.cond = select i1 %cmp8, i1 true, i1 %cmp11
  br i1 %or.cond, label %if.then16, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.end
  %1 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !13
  %cmp15 = icmp eq %struct.bignum_st* %1, null
  br i1 %cmp15, label %if.then16, label %cleanup

if.then16:                                        ; preds = %lor.lhs.false12, %if.end
  tail call void @DH_free(%struct.dh_st* noundef nonnull %call) #2
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false12, %entry, %if.then16
  %retval.0 = phi %struct.dh_st* [ null, %if.then16 ], [ null, %entry ], [ %call, %lor.lhs.false12 ]
  ret %struct.dh_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.dh_st* @DH_get_2048_256() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.dh_st* @DH_new() #2
  %cmp = icmp eq %struct.dh_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull @ossl_bignum_dh2048_256_p) #2
  %p = getelementptr inbounds %struct.dh_st, %struct.dh_st* %call, i64 0, i32 2, i32 0
  store %struct.bignum_st* %call1, %struct.bignum_st** %p, align 8, !tbaa !4
  %call2 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull @ossl_bignum_dh2048_256_g) #2
  %g = getelementptr inbounds %struct.dh_st, %struct.dh_st* %call, i64 0, i32 2, i32 2
  store %struct.bignum_st* %call2, %struct.bignum_st** %g, align 8, !tbaa !13
  %call4 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull @ossl_bignum_dh2048_256_q) #2
  %q = getelementptr inbounds %struct.dh_st, %struct.dh_st* %call, i64 0, i32 2, i32 1
  store %struct.bignum_st* %call4, %struct.bignum_st** %q, align 8, !tbaa !14
  %0 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  %cmp8 = icmp eq %struct.bignum_st* %0, null
  %cmp11 = icmp eq %struct.bignum_st* %call4, null
  %or.cond = select i1 %cmp8, i1 true, i1 %cmp11
  br i1 %or.cond, label %if.then16, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.end
  %1 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !13
  %cmp15 = icmp eq %struct.bignum_st* %1, null
  br i1 %cmp15, label %if.then16, label %cleanup

if.then16:                                        ; preds = %lor.lhs.false12, %if.end
  tail call void @DH_free(%struct.dh_st* noundef nonnull %call) #2
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false12, %entry, %if.then16
  %retval.0 = phi %struct.dh_st* [ null, %if.then16 ], [ null, %entry ], [ %call, %lor.lhs.false12 ]
  ret %struct.dh_st* %retval.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !10, i64 8}
!5 = !{!"dh_st", !6, i64 0, !6, i64 4, !9, i64 8, !6, i64 96, !10, i64 104, !10, i64 112, !6, i64 120, !10, i64 128, !7, i64 136, !12, i64 144, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !11, i64 192}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"ffc_params_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !11, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !10, i64 72, !10, i64 80}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = !{!"crypto_ex_data_st", !10, i64 0, !10, i64 8}
!13 = !{!5, !10, i64 24}
!14 = !{!5, !10, i64 16}
