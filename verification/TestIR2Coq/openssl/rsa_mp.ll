; ModuleID = 'crypto/rsa/rsa_mp.c'
source_filename = "crypto/rsa/rsa_mp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsa_prime_info_st = type { %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bn_mont_ctx_st* }
%struct.bignum_st = type opaque
%struct.bn_mont_ctx_st = type opaque
%struct.rsa_st = type { i32, %struct.ossl_lib_ctx_st*, i32, %struct.rsa_meth_st*, %struct.engine_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.rsa_pss_params_30_st, %struct.rsa_pss_params_st*, %struct.stack_st_RSA_PRIME_INFO*, %struct.crypto_ex_data_st, i32, i32, %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st*, %struct.bn_blinding_st*, %struct.bn_blinding_st*, i8*, i32 }
%struct.ossl_lib_ctx_st = type opaque
%struct.rsa_meth_st = type { i8*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.rsa_st*, %struct.bignum_ctx*)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, {}*, {}*, i32, i8*, i32 (i32, i8*, i32, i8*, i32*, %struct.rsa_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.rsa_st*)*, i32 (%struct.rsa_st*, i32, %struct.bignum_st*, %struct.bn_gencb_st*)*, i32 (%struct.rsa_st*, i32, i32, %struct.bignum_st*, %struct.bn_gencb_st*)* }
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type opaque
%struct.engine_st = type opaque
%struct.rsa_pss_params_30_st = type { i32, %struct.anon, i32, i32 }
%struct.anon = type { i32, i32 }
%struct.rsa_pss_params_st = type { %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.X509_algor_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.X509_algor_st = type opaque
%struct.stack_st_RSA_PRIME_INFO = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.bn_blinding_st = type opaque
%struct.stack_st = type opaque

@.str = private unnamed_addr constant [20 x i8] c"crypto/rsa/rsa_mp.c\00", align 1
@__func__.ossl_rsa_multip_info_new = private unnamed_addr constant [25 x i8] c"ossl_rsa_multip_info_new\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @ossl_rsa_multip_info_free_ex(%struct.rsa_prime_info_st* noundef %pinfo) local_unnamed_addr #0 {
entry:
  %pp = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %pinfo, i64 0, i32 3
  %0 = load %struct.bignum_st*, %struct.bignum_st** %pp, align 8, !tbaa !4
  tail call void @BN_clear_free(%struct.bignum_st* noundef %0) #3
  %1 = bitcast %struct.rsa_prime_info_st* %pinfo to i8*
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 19) #3
  ret void
}

declare void @BN_clear_free(%struct.bignum_st* noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @ossl_rsa_multip_info_free(%struct.rsa_prime_info_st* noundef %pinfo) local_unnamed_addr #0 {
entry:
  %r = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %pinfo, i64 0, i32 0
  %0 = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !9
  tail call void @BN_clear_free(%struct.bignum_st* noundef %0) #3
  %d = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %pinfo, i64 0, i32 1
  %1 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !10
  tail call void @BN_clear_free(%struct.bignum_st* noundef %1) #3
  %t = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %pinfo, i64 0, i32 2
  %2 = load %struct.bignum_st*, %struct.bignum_st** %t, align 8, !tbaa !11
  tail call void @BN_clear_free(%struct.bignum_st* noundef %2) #3
  tail call void @ossl_rsa_multip_info_free_ex(%struct.rsa_prime_info_st* noundef %pinfo) #4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.rsa_prime_info_st* @ossl_rsa_multip_info_new() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 40, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 36) #3
  %0 = bitcast i8* %call to %struct.rsa_prime_info_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 37, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ossl_rsa_multip_info_new, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786688, i8* noundef null) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.bignum_st* @BN_secure_new() #3
  %r = bitcast i8* %call to %struct.bignum_st**
  store %struct.bignum_st* %call1, %struct.bignum_st** %r, align 8, !tbaa !9
  %cmp2 = icmp eq %struct.bignum_st* %call1, null
  br i1 %cmp2, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call %struct.bignum_st* @BN_secure_new() #3
  %d = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %d to %struct.bignum_st**
  store %struct.bignum_st* %call5, %struct.bignum_st** %1, align 8, !tbaa !10
  %cmp6 = icmp eq %struct.bignum_st* %call5, null
  br i1 %cmp6, label %err, label %if.end8

if.end8:                                          ; preds = %if.end4
  %call9 = tail call %struct.bignum_st* @BN_secure_new() #3
  %t = getelementptr inbounds i8, i8* %call, i64 16
  %2 = bitcast i8* %t to %struct.bignum_st**
  store %struct.bignum_st* %call9, %struct.bignum_st** %2, align 8, !tbaa !11
  %cmp10 = icmp eq %struct.bignum_st* %call9, null
  br i1 %cmp10, label %err, label %if.end12

if.end12:                                         ; preds = %if.end8
  %call13 = tail call %struct.bignum_st* @BN_secure_new() #3
  %pp = getelementptr inbounds i8, i8* %call, i64 24
  %3 = bitcast i8* %pp to %struct.bignum_st**
  store %struct.bignum_st* %call13, %struct.bignum_st** %3, align 8, !tbaa !4
  %cmp14 = icmp eq %struct.bignum_st* %call13, null
  br i1 %cmp14, label %err, label %cleanup

err:                                              ; preds = %if.end, %if.end12, %if.end8, %if.end4
  %4 = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !9
  tail call void @BN_free(%struct.bignum_st* noundef %4) #3
  %d18 = getelementptr inbounds i8, i8* %call, i64 8
  %5 = bitcast i8* %d18 to %struct.bignum_st**
  %6 = load %struct.bignum_st*, %struct.bignum_st** %5, align 8, !tbaa !10
  tail call void @BN_free(%struct.bignum_st* noundef %6) #3
  %t19 = getelementptr inbounds i8, i8* %call, i64 16
  %7 = bitcast i8* %t19 to %struct.bignum_st**
  %8 = load %struct.bignum_st*, %struct.bignum_st** %7, align 8, !tbaa !11
  tail call void @BN_free(%struct.bignum_st* noundef %8) #3
  %pp20 = getelementptr inbounds i8, i8* %call, i64 24
  %9 = bitcast i8* %pp20 to %struct.bignum_st**
  %10 = load %struct.bignum_st*, %struct.bignum_st** %9, align 8, !tbaa !4
  tail call void @BN_free(%struct.bignum_st* noundef %10) #3
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 56) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %err, %if.then
  %retval.0 = phi %struct.rsa_prime_info_st* [ null, %if.then ], [ null, %err ], [ %0, %if.end12 ]
  ret %struct.rsa_prime_info_st* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare %struct.bignum_st* @BN_secure_new() local_unnamed_addr #1

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsa_multip_calc_product(%struct.rsa_st* nocapture noundef readonly %rsa) local_unnamed_addr #0 {
entry:
  %prime_infos = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 15
  %0 = load %struct.stack_st_RSA_PRIME_INFO*, %struct.stack_st_RSA_PRIME_INFO** %prime_infos, align 8, !tbaa !12
  %call = tail call fastcc i32 @sk_RSA_PRIME_INFO_num(%struct.stack_st_RSA_PRIME_INFO* noundef %0) #4
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.bignum_ctx* @BN_CTX_new() #3
  %cmp2 = icmp eq %struct.bignum_ctx* %call1, null
  br i1 %cmp2, label %err, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %q = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 9
  %p = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %if.end20
  %p2.045.in = phi %struct.bignum_st** [ %r, %if.end20 ], [ %q, %for.body.preheader ]
  %p1.044.in = phi %struct.bignum_st** [ %pp, %if.end20 ], [ %p, %for.body.preheader ]
  %i.043 = phi i32 [ %inc, %if.end20 ], [ 0, %for.body.preheader ]
  %p1.044 = load %struct.bignum_st*, %struct.bignum_st** %p1.044.in, align 8, !tbaa !18
  %p2.045 = load %struct.bignum_st*, %struct.bignum_st** %p2.045.in, align 8, !tbaa !18
  %1 = load %struct.stack_st_RSA_PRIME_INFO*, %struct.stack_st_RSA_PRIME_INFO** %prime_infos, align 8, !tbaa !12
  %call7 = tail call fastcc %struct.rsa_prime_info_st* @sk_RSA_PRIME_INFO_value(%struct.stack_st_RSA_PRIME_INFO* noundef %1, i32 noundef %i.043) #4
  %pp = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call7, i64 0, i32 3
  %2 = load %struct.bignum_st*, %struct.bignum_st** %pp, align 8, !tbaa !4
  %cmp8 = icmp eq %struct.bignum_st* %2, null
  br i1 %cmp8, label %if.then9, label %if.end16

if.then9:                                         ; preds = %for.body
  %call10 = tail call %struct.bignum_st* @BN_secure_new() #3
  store %struct.bignum_st* %call10, %struct.bignum_st** %pp, align 8, !tbaa !4
  %cmp13 = icmp eq %struct.bignum_st* %call10, null
  br i1 %cmp13, label %err, label %if.end16

if.end16:                                         ; preds = %if.then9, %for.body
  %3 = phi %struct.bignum_st* [ %call10, %if.then9 ], [ %2, %for.body ]
  %call18 = tail call i32 @BN_mul(%struct.bignum_st* noundef nonnull %3, %struct.bignum_st* noundef %p1.044, %struct.bignum_st* noundef %p2.045, %struct.bignum_ctx* noundef nonnull %call1) #3
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %err, label %if.end20

if.end20:                                         ; preds = %if.end16
  %r = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call7, i64 0, i32 0
  %inc = add nuw nsw i32 %i.043, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %err, label %for.body, !llvm.loop !19

err:                                              ; preds = %if.then9, %if.end16, %if.end20, %if.end, %entry
  %ctx.0 = phi %struct.bignum_ctx* [ null, %entry ], [ null, %if.end ], [ %call1, %if.end20 ], [ %call1, %if.end16 ], [ %call1, %if.then9 ]
  %rv.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.then9 ], [ 0, %if.end16 ], [ 1, %if.end20 ]
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %ctx.0) #3
  ret i32 %rv.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_RSA_PRIME_INFO_num(%struct.stack_st_RSA_PRIME_INFO* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_RSA_PRIME_INFO* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #3
  ret i32 %call
}

declare %struct.bignum_ctx* @BN_CTX_new() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.rsa_prime_info_st* @sk_RSA_PRIME_INFO_value(%struct.stack_st_RSA_PRIME_INFO* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_RSA_PRIME_INFO* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #3
  %1 = bitcast i8* %call to %struct.rsa_prime_info_st*
  ret %struct.rsa_prime_info_st* %1
}

declare i32 @BN_mul(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i32 @ossl_rsa_multip_cap(i32 noundef %bits) local_unnamed_addr #2 {
entry:
  %cmp = icmp slt i32 %bits, 1024
  br i1 %cmp, label %if.end7, label %if.else

if.else:                                          ; preds = %entry
  %cmp1 = icmp ult i32 %bits, 4096
  br i1 %cmp1, label %if.end7, label %if.else3

if.else3:                                         ; preds = %if.else
  %cmp4 = icmp ult i32 %bits, 8192
  %spec.select = select i1 %cmp4, i32 4, i32 5
  br label %if.end7

if.end7:                                          ; preds = %if.else3, %if.else, %entry
  %cap.0 = phi i32 [ 2, %entry ], [ 3, %if.else ], [ %spec.select, %if.else3 ]
  ret i32 %cap.0
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 24}
!5 = !{!"rsa_prime_info_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 0}
!10 = !{!5, !6, i64 8}
!11 = !{!5, !6, i64 16}
!12 = !{!13, !6, i64 136}
!13 = !{!"rsa_st", !14, i64 0, !6, i64 8, !14, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !15, i64 104, !6, i64 128, !6, i64 136, !17, i64 144, !7, i64 160, !14, i64 164, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !14, i64 216}
!14 = !{!"int", !7, i64 0}
!15 = !{!"rsa_pss_params_30_st", !14, i64 0, !16, i64 4, !14, i64 12, !14, i64 16}
!16 = !{!"", !14, i64 0, !14, i64 4}
!17 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!18 = !{!6, !6, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
