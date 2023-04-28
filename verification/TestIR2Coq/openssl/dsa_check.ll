; ModuleID = 'crypto/dsa/dsa_check.c'
source_filename = "crypto/dsa/dsa_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_st = type { i32, i32, %struct.ffc_params_st, %struct.bignum_st*, %struct.bignum_st*, i32, %struct.bn_mont_ctx_st*, i32, %struct.crypto_ex_data_st, %struct.dsa_method*, %struct.engine_st*, i8*, %struct.ossl_lib_ctx_st*, i64 }
%struct.ffc_params_st = type { %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i64, i32, i32, i32, i32, i32, i8*, i8* }
%struct.bignum_st = type opaque
%struct.bn_mont_ctx_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.dsa_method = type { i8*, %struct.DSA_SIG_st* (i8*, i32, %struct.dsa_st*)*, i32 (%struct.dsa_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, i32 (i8*, i32, %struct.DSA_SIG_st*, %struct.dsa_st*)*, i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dsa_st*)*, i32 (%struct.dsa_st*)*, i32, i8*, i32 (%struct.dsa_st*, i32, i8*, i32, i32*, i64*, %struct.bn_gencb_st*)*, i32 (%struct.dsa_st*)* }
%struct.DSA_SIG_st = type { %struct.bignum_st*, %struct.bignum_st* }
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type opaque
%struct.engine_st = type opaque
%struct.ossl_lib_ctx_st = type opaque

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_dsa_check_params(%struct.dsa_st* noundef %dsa, i32 noundef %checktype, i32* noundef %ret) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %checktype, 1
  %libctx = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 12
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !4
  %params = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i32 @ossl_ffc_params_simple_validate(%struct.ossl_lib_ctx_st* noundef %0, %struct.ffc_params_st* noundef nonnull %params, i32 noundef 0, i32* noundef %ret) #2
  br label %return

if.else:                                          ; preds = %entry
  %call3 = tail call i32 @ossl_ffc_params_full_validate(%struct.ossl_lib_ctx_st* noundef %0, %struct.ffc_params_st* noundef nonnull %params, i32 noundef 0, i32* noundef %ret) #2
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call3, %if.else ]
  ret i32 %retval.0
}

declare i32 @ossl_ffc_params_simple_validate(%struct.ossl_lib_ctx_st* noundef, %struct.ffc_params_st* noundef, i32 noundef, i32* noundef) local_unnamed_addr #1

declare i32 @ossl_ffc_params_full_validate(%struct.ossl_lib_ctx_st* noundef, %struct.ffc_params_st* noundef, i32 noundef, i32* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_dsa_check_pub_key(%struct.dsa_st* noundef %dsa, %struct.bignum_st* noundef %pub_key, i32* noundef %ret) local_unnamed_addr #0 {
entry:
  %params = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 2
  %call = tail call i32 @ossl_ffc_validate_public_key(%struct.ffc_params_st* noundef nonnull %params, %struct.bignum_st* noundef %pub_key, i32* noundef %ret) #2
  ret i32 %call
}

declare i32 @ossl_ffc_validate_public_key(%struct.ffc_params_st* noundef, %struct.bignum_st* noundef, i32* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_dsa_check_pub_key_partial(%struct.dsa_st* noundef %dsa, %struct.bignum_st* noundef %pub_key, i32* noundef %ret) local_unnamed_addr #0 {
entry:
  %params = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 2
  %call = tail call i32 @ossl_ffc_validate_public_key_partial(%struct.ffc_params_st* noundef nonnull %params, %struct.bignum_st* noundef %pub_key, i32* noundef %ret) #2
  ret i32 %call
}

declare i32 @ossl_ffc_validate_public_key_partial(%struct.ffc_params_st* noundef, %struct.bignum_st* noundef, i32* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_dsa_check_priv_key(%struct.dsa_st* nocapture noundef readonly %dsa, %struct.bignum_st* noundef %priv_key, i32* noundef %ret) local_unnamed_addr #0 {
entry:
  store i32 0, i32* %ret, align 4, !tbaa !13
  %q = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 2, i32 1
  %0 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !14
  %cmp.not = icmp eq %struct.bignum_st* %0, null
  br i1 %cmp.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = tail call i32 @ossl_ffc_validate_private_key(%struct.bignum_st* noundef nonnull %0, %struct.bignum_st* noundef %priv_key, i32* noundef nonnull %ret) #2
  %tobool = icmp ne i32 %call, 0
  %phi.cast = zext i1 %tobool to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %1
}

declare i32 @ossl_ffc_validate_private_key(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_dsa_check_pairwise(%struct.dsa_st* noundef %dsa) local_unnamed_addr #0 {
entry:
  %p = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 2, i32 0
  %0 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !15
  %cmp = icmp eq %struct.bignum_st* %0, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %g = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 2, i32 2
  %1 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !16
  %cmp2 = icmp eq %struct.bignum_st* %1, null
  br i1 %cmp2, label %cleanup, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %priv_key = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 4
  %2 = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !17
  %cmp4 = icmp eq %struct.bignum_st* %2, null
  br i1 %cmp4, label %cleanup, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %pub_key6 = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 3
  %3 = load %struct.bignum_st*, %struct.bignum_st** %pub_key6, align 8, !tbaa !18
  %cmp7 = icmp eq %struct.bignum_st* %3, null
  br i1 %cmp7, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false5
  %libctx = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 12
  %4 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !4
  %call = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %4) #2
  %cmp8 = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp8, label %err, label %if.end10

if.end10:                                         ; preds = %if.end
  %call11 = tail call %struct.bignum_st* @BN_new() #2
  %cmp12 = icmp eq %struct.bignum_st* %call11, null
  br i1 %cmp12, label %err, label %if.end14

if.end14:                                         ; preds = %if.end10
  %5 = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !17
  %call16 = tail call i32 @ossl_dsa_generate_public_key(%struct.bignum_ctx* noundef nonnull %call, %struct.dsa_st* noundef nonnull %dsa, %struct.bignum_st* noundef %5, %struct.bignum_st* noundef nonnull %call11) #2
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %err, label %if.end18

if.end18:                                         ; preds = %if.end14
  %6 = load %struct.bignum_st*, %struct.bignum_st** %pub_key6, align 8, !tbaa !18
  %call20 = tail call i32 @BN_cmp(%struct.bignum_st* noundef nonnull %call11, %struct.bignum_st* noundef %6) #2
  %cmp21 = icmp eq i32 %call20, 0
  %conv = zext i1 %cmp21 to i32
  br label %err

err:                                              ; preds = %if.end14, %if.end10, %if.end, %if.end18
  %ret.0 = phi i32 [ 0, %if.end ], [ 0, %if.end10 ], [ %conv, %if.end18 ], [ 0, %if.end14 ]
  %pub_key.0 = phi %struct.bignum_st* [ null, %if.end ], [ null, %if.end10 ], [ %call11, %if.end18 ], [ %call11, %if.end14 ]
  tail call void @BN_free(%struct.bignum_st* noundef %pub_key.0) #2
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %call) #2
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %lor.lhs.false3, %lor.lhs.false5, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false3 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

declare %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_new() local_unnamed_addr #1

declare i32 @ossl_dsa_generate_public_key(%struct.bignum_ctx* noundef, %struct.dsa_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_cmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !10, i64 176}
!5 = !{!"dsa_st", !6, i64 0, !6, i64 4, !9, i64 8, !10, i64 96, !10, i64 104, !6, i64 112, !10, i64 120, !7, i64 128, !12, i64 136, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !11, i64 184}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"ffc_params_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !11, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !10, i64 72, !10, i64 80}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = !{!"crypto_ex_data_st", !10, i64 0, !10, i64 8}
!13 = !{!6, !6, i64 0}
!14 = !{!5, !10, i64 16}
!15 = !{!5, !10, i64 8}
!16 = !{!5, !10, i64 24}
!17 = !{!5, !10, i64 104}
!18 = !{!5, !10, i64 96}
