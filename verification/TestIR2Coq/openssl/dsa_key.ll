; ModuleID = 'crypto/dsa/dsa_key.c'
source_filename = "crypto/dsa/dsa_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_st = type { i32, i32, %struct.ffc_params_st, %struct.bignum_st*, %struct.bignum_st*, i32, %struct.bn_mont_ctx_st*, i32, %struct.crypto_ex_data_st, %struct.dsa_method*, %struct.engine_st*, i8*, %struct.ossl_lib_ctx_st*, i64 }
%struct.ffc_params_st = type { %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i64, i32, i32, i32, i32, i32, i8*, i8* }
%struct.bignum_st = type opaque
%struct.bn_mont_ctx_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.dsa_method = type { i8*, %struct.DSA_SIG_st* (i8*, i32, %struct.dsa_st*)*, i32 (%struct.dsa_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, i32 (i8*, i32, %struct.DSA_SIG_st*, %struct.dsa_st*)*, i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, {}*, {}*, i32, i8*, i32 (%struct.dsa_st*, i32, i8*, i32, i32*, i64*, %struct.bn_gencb_st*)*, {}* }
%struct.DSA_SIG_st = type { %struct.bignum_st*, %struct.bignum_st* }
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type opaque
%struct.engine_st = type opaque
%struct.ossl_lib_ctx_st = type opaque

; Function Attrs: noinline nounwind uwtable
define i32 @DSA_generate_key(%struct.dsa_st* noundef %dsa) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 9
  %0 = load %struct.dsa_method*, %struct.dsa_method** %meth, align 8, !tbaa !4
  %dsa_keygen = getelementptr inbounds %struct.dsa_method, %struct.dsa_method* %0, i64 0, i32 11
  %dsa_keygen1 = bitcast {}** %dsa_keygen to i32 (%struct.dsa_st*)**
  %1 = load i32 (%struct.dsa_st*)*, i32 (%struct.dsa_st*)** %dsa_keygen1, align 8, !tbaa !13
  %cmp.not = icmp eq i32 (%struct.dsa_st*)* %1, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(%struct.dsa_st* noundef nonnull %dsa) #2
  br label %return

if.end:                                           ; preds = %entry
  %call5 = tail call fastcc i32 @dsa_keygen(%struct.dsa_st* noundef nonnull %dsa) #3
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @dsa_keygen(%struct.dsa_st* noundef %dsa) unnamed_addr #0 {
entry:
  %libctx = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 12
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !15
  %call = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %0) #2
  %cmp = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %priv_key1 = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 4
  %1 = load %struct.bignum_st*, %struct.bignum_st** %priv_key1, align 8, !tbaa !16
  %cmp2 = icmp eq %struct.bignum_st* %1, null
  br i1 %cmp2, label %if.then3, label %if.end9

if.then3:                                         ; preds = %if.end
  %call4 = tail call %struct.bignum_st* @BN_secure_new() #2
  %cmp5 = icmp eq %struct.bignum_st* %call4, null
  br i1 %cmp5, label %err, label %if.end9

if.end9:                                          ; preds = %if.end, %if.then3
  %priv_key.0 = phi %struct.bignum_st* [ %call4, %if.then3 ], [ %1, %if.end ]
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !15
  %params = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 2
  %call11 = tail call i32 @ossl_ffc_params_simple_validate(%struct.ossl_lib_ctx_st* noundef %2, %struct.ffc_params_st* noundef nonnull %params, i32 noundef 0, i32* noundef null) #2
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %err, label %if.end13

if.end13:                                         ; preds = %if.end9
  %q = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 2, i32 1
  %3 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !17
  %call16 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %3) #2
  %call17 = tail call i32 @ossl_ffc_generate_private_key(%struct.bignum_ctx* noundef nonnull %call, %struct.ffc_params_st* noundef nonnull %params, i32 noundef %call16, i32 noundef 80, %struct.bignum_st* noundef nonnull %priv_key.0) #2
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %if.end20

if.end20:                                         ; preds = %if.end13
  %pub_key21 = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 3
  %4 = load %struct.bignum_st*, %struct.bignum_st** %pub_key21, align 8, !tbaa !18
  %cmp22 = icmp eq %struct.bignum_st* %4, null
  br i1 %cmp22, label %if.then23, label %if.end30

if.then23:                                        ; preds = %if.end20
  %call24 = tail call %struct.bignum_st* @BN_new() #2
  %cmp25 = icmp eq %struct.bignum_st* %call24, null
  br i1 %cmp25, label %err, label %if.end30

if.end30:                                         ; preds = %if.end20, %if.then23
  %pub_key.0 = phi %struct.bignum_st* [ %call24, %if.then23 ], [ %4, %if.end20 ]
  %call31 = tail call i32 @ossl_dsa_generate_public_key(%struct.bignum_ctx* noundef nonnull %call, %struct.dsa_st* noundef nonnull %dsa, %struct.bignum_st* noundef nonnull %priv_key.0, %struct.bignum_st* noundef nonnull %pub_key.0) #3
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %if.end34

if.end34:                                         ; preds = %if.end30
  store %struct.bignum_st* %priv_key.0, %struct.bignum_st** %priv_key1, align 8, !tbaa !16
  store %struct.bignum_st* %pub_key.0, %struct.bignum_st** %pub_key21, align 8, !tbaa !18
  %dirty_cnt = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 13
  %5 = load i64, i64* %dirty_cnt, align 8, !tbaa !19
  %inc = add i64 %5, 1
  store i64 %inc, i64* %dirty_cnt, align 8, !tbaa !19
  br label %err

err:                                              ; preds = %if.end30, %if.then23, %if.end13, %if.end9, %if.then3, %entry, %if.end34
  %ok.1 = phi i32 [ 0, %entry ], [ 0, %if.then3 ], [ 0, %if.then23 ], [ 1, %if.end34 ], [ 0, %if.end30 ], [ 0, %if.end13 ], [ 0, %if.end9 ]
  %pub_key.1 = phi %struct.bignum_st* [ null, %entry ], [ null, %if.then3 ], [ null, %if.then23 ], [ %pub_key.0, %if.end34 ], [ %pub_key.0, %if.end30 ], [ null, %if.end13 ], [ null, %if.end9 ]
  %priv_key.1 = phi %struct.bignum_st* [ null, %entry ], [ null, %if.then3 ], [ %priv_key.0, %if.then23 ], [ %priv_key.0, %if.end34 ], [ %priv_key.0, %if.end30 ], [ %priv_key.0, %if.end13 ], [ %priv_key.0, %if.end9 ]
  %pub_key50 = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 3
  %6 = load %struct.bignum_st*, %struct.bignum_st** %pub_key50, align 8, !tbaa !18
  %cmp51.not = icmp eq %struct.bignum_st* %pub_key.1, %6
  br i1 %cmp51.not, label %if.end53, label %if.then52

if.then52:                                        ; preds = %err
  tail call void @BN_free(%struct.bignum_st* noundef %pub_key.1) #2
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %err
  %priv_key54 = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 4
  %7 = load %struct.bignum_st*, %struct.bignum_st** %priv_key54, align 8, !tbaa !16
  %cmp55.not = icmp eq %struct.bignum_st* %priv_key.1, %7
  br i1 %cmp55.not, label %if.end57, label %if.then56

if.then56:                                        ; preds = %if.end53
  tail call void @BN_free(%struct.bignum_st* noundef %priv_key.1) #2
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.end53
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %call) #2
  ret i32 %ok.1
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_dsa_generate_public_key(%struct.bignum_ctx* noundef %ctx, %struct.dsa_st* nocapture noundef readonly %dsa, %struct.bignum_st* noundef %priv_key, %struct.bignum_st* noundef %pub_key) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #2
  %cmp = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @BN_with_flags(%struct.bignum_st* noundef nonnull %call, %struct.bignum_st* noundef %priv_key, i32 noundef 4) #2
  %g = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 2, i32 2
  %0 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !20
  %p = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 2, i32 0
  %1 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !21
  %call2 = tail call i32 @BN_mod_exp(%struct.bignum_st* noundef %pub_key, %struct.bignum_st* noundef %0, %struct.bignum_st* noundef nonnull %call, %struct.bignum_st* noundef %1, %struct.bignum_ctx* noundef %ctx) #2
  %tobool.not = icmp ne i32 %call2, 0
  %spec.select = zext i1 %tobool.not to i32
  tail call void @BN_clear_free(%struct.bignum_st* noundef nonnull %call) #2
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare %struct.bignum_st* @BN_new() local_unnamed_addr #1

declare void @BN_with_flags(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @BN_mod_exp(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare void @BN_clear_free(%struct.bignum_st* noundef) local_unnamed_addr #1

declare %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_secure_new() local_unnamed_addr #1

declare i32 @ossl_ffc_params_simple_validate(%struct.ossl_lib_ctx_st* noundef, %struct.ffc_params_st* noundef, i32 noundef, i32* noundef) local_unnamed_addr #1

declare i32 @ossl_ffc_generate_private_key(%struct.bignum_ctx* noundef, %struct.ffc_params_st* noundef, i32 noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #1

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }
attributes #3 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !10, i64 152}
!5 = !{!"dsa_st", !6, i64 0, !6, i64 4, !9, i64 8, !10, i64 96, !10, i64 104, !6, i64 112, !10, i64 120, !7, i64 128, !12, i64 136, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !11, i64 184}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"ffc_params_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !11, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !10, i64 72, !10, i64 80}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = !{!"crypto_ex_data_st", !10, i64 0, !10, i64 8}
!13 = !{!14, !10, i64 88}
!14 = !{!"dsa_method", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !6, i64 64, !10, i64 72, !10, i64 80, !10, i64 88}
!15 = !{!5, !10, i64 176}
!16 = !{!5, !10, i64 104}
!17 = !{!5, !10, i64 16}
!18 = !{!5, !10, i64 96}
!19 = !{!5, !11, i64 184}
!20 = !{!5, !10, i64 24}
!21 = !{!5, !10, i64 8}
