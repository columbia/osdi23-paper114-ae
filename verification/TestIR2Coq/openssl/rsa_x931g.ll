; ModuleID = 'crypto/rsa/rsa_x931g.c'
source_filename = "crypto/rsa/rsa_x931g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsa_st = type { i32, %struct.ossl_lib_ctx_st*, i32, %struct.rsa_meth_st*, %struct.engine_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.rsa_pss_params_30_st, %struct.rsa_pss_params_st*, %struct.stack_st_RSA_PRIME_INFO*, %struct.crypto_ex_data_st, i32, i32, %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st*, %struct.bn_blinding_st*, %struct.bn_blinding_st*, i8*, i32 }
%struct.ossl_lib_ctx_st = type opaque
%struct.rsa_meth_st = type { i8*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.rsa_st*, %struct.bignum_ctx*)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.rsa_st*)*, i32 (%struct.rsa_st*)*, i32, i8*, i32 (i32, i8*, i32, i8*, i32*, %struct.rsa_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.rsa_st*)*, i32 (%struct.rsa_st*, i32, %struct.bignum_st*, %struct.bn_gencb_st*)*, i32 (%struct.rsa_st*, i32, i32, %struct.bignum_st*, %struct.bn_gencb_st*)* }
%struct.bignum_ctx = type opaque
%struct.engine_st = type opaque
%struct.rsa_pss_params_30_st = type { i32, %struct.anon, i32, i32 }
%struct.anon = type { i32, i32 }
%struct.rsa_pss_params_st = type { %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.X509_algor_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.X509_algor_st = type opaque
%struct.stack_st_RSA_PRIME_INFO = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.bn_mont_ctx_st = type opaque
%struct.bn_blinding_st = type opaque
%struct.bignum_st = type opaque
%struct.bn_gencb_st = type opaque

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_X931_derive_ex(%struct.rsa_st* noundef %rsa, %struct.bignum_st* noundef %p1, %struct.bignum_st* noundef %p2, %struct.bignum_st* noundef %q1, %struct.bignum_st* noundef %q2, %struct.bignum_st* noundef %Xp1, %struct.bignum_st* noundef %Xp2, %struct.bignum_st* noundef %Xp, %struct.bignum_st* noundef %Xq1, %struct.bignum_st* noundef %Xq2, %struct.bignum_st* noundef %Xq, %struct.bignum_st* noundef %e, %struct.bn_gencb_st* noundef %cb) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.rsa_st* %rsa, null
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.bignum_ctx* @BN_CTX_new() #2
  %cmp = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp, label %err, label %if.end2

if.end2:                                          ; preds = %if.end
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %call) #2
  %call3 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call) #2
  %call4 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call) #2
  %call5 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call) #2
  %call6 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call) #2
  %cmp7 = icmp eq %struct.bignum_st* %call6, null
  br i1 %cmp7, label %err, label %if.end9

if.end9:                                          ; preds = %if.end2
  %e10 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 6
  %0 = load %struct.bignum_st*, %struct.bignum_st** %e10, align 8, !tbaa !4
  %tobool11.not = icmp eq %struct.bignum_st* %0, null
  br i1 %tobool11.not, label %if.then12, label %if.end20

if.then12:                                        ; preds = %if.end9
  %call13 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %e) #2
  store %struct.bignum_st* %call13, %struct.bignum_st** %e10, align 8, !tbaa !4
  %tobool16.not = icmp eq %struct.bignum_st* %call13, null
  br i1 %tobool16.not, label %err, label %if.end20

if.end20:                                         ; preds = %if.end9, %if.then12
  %e.addr.0 = phi %struct.bignum_st* [ %e, %if.then12 ], [ %0, %if.end9 ]
  %tobool21.not = icmp eq %struct.bignum_st* %Xp, null
  br i1 %tobool21.not, label %if.end35, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end20
  %p = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 8
  %1 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !13
  %cmp22 = icmp eq %struct.bignum_st* %1, null
  br i1 %cmp22, label %if.then23, label %if.end35

if.then23:                                        ; preds = %land.lhs.true
  %call24 = tail call %struct.bignum_st* @BN_new() #2
  store %struct.bignum_st* %call24, %struct.bignum_st** %p, align 8, !tbaa !13
  %cmp27 = icmp eq %struct.bignum_st* %call24, null
  br i1 %cmp27, label %err, label %if.end29

if.end29:                                         ; preds = %if.then23
  %call31 = tail call i32 @BN_X931_derive_prime_ex(%struct.bignum_st* noundef nonnull %call24, %struct.bignum_st* noundef %p1, %struct.bignum_st* noundef %p2, %struct.bignum_st* noundef nonnull %Xp, %struct.bignum_st* noundef %Xp1, %struct.bignum_st* noundef %Xp2, %struct.bignum_st* noundef %e.addr.0, %struct.bignum_ctx* noundef nonnull %call, %struct.bn_gencb_st* noundef %cb) #2
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %if.end35

if.end35:                                         ; preds = %if.end29, %land.lhs.true, %if.end20
  %tobool36.not = icmp eq %struct.bignum_st* %Xq, null
  br i1 %tobool36.not, label %if.end51, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %if.end35
  %q = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 9
  %2 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !14
  %cmp38 = icmp eq %struct.bignum_st* %2, null
  br i1 %cmp38, label %if.then39, label %if.end51

if.then39:                                        ; preds = %land.lhs.true37
  %call40 = tail call %struct.bignum_st* @BN_new() #2
  store %struct.bignum_st* %call40, %struct.bignum_st** %q, align 8, !tbaa !14
  %cmp43 = icmp eq %struct.bignum_st* %call40, null
  br i1 %cmp43, label %err, label %if.end45

if.end45:                                         ; preds = %if.then39
  %call47 = tail call i32 @BN_X931_derive_prime_ex(%struct.bignum_st* noundef nonnull %call40, %struct.bignum_st* noundef %q1, %struct.bignum_st* noundef %q2, %struct.bignum_st* noundef nonnull %Xq, %struct.bignum_st* noundef %Xq1, %struct.bignum_st* noundef %Xq2, %struct.bignum_st* noundef %e.addr.0, %struct.bignum_ctx* noundef nonnull %call, %struct.bn_gencb_st* noundef %cb) #2
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %err, label %if.end51

if.end51:                                         ; preds = %if.end45, %land.lhs.true37, %if.end35
  %p52 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 8
  %3 = load %struct.bignum_st*, %struct.bignum_st** %p52, align 8, !tbaa !13
  %cmp53 = icmp eq %struct.bignum_st* %3, null
  br i1 %cmp53, label %if.then56, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end51
  %q54 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 9
  %4 = load %struct.bignum_st*, %struct.bignum_st** %q54, align 8, !tbaa !14
  %cmp55 = icmp eq %struct.bignum_st* %4, null
  br i1 %cmp55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %lor.lhs.false, %if.end51
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef nonnull %call) #2
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef nonnull %call) #2
  br label %cleanup

if.end57:                                         ; preds = %lor.lhs.false
  %call58 = tail call %struct.bignum_st* @BN_new() #2
  %n = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 5
  store %struct.bignum_st* %call58, %struct.bignum_st** %n, align 8, !tbaa !15
  %cmp60 = icmp eq %struct.bignum_st* %call58, null
  br i1 %cmp60, label %err, label %if.end62

if.end62:                                         ; preds = %if.end57
  %5 = load %struct.bignum_st*, %struct.bignum_st** %p52, align 8, !tbaa !13
  %6 = load %struct.bignum_st*, %struct.bignum_st** %q54, align 8, !tbaa !14
  %call66 = tail call i32 @BN_mul(%struct.bignum_st* noundef nonnull %call58, %struct.bignum_st* noundef %5, %struct.bignum_st* noundef %6, %struct.bignum_ctx* noundef nonnull %call) #2
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %err, label %if.end69

if.end69:                                         ; preds = %if.end62
  %7 = load %struct.bignum_st*, %struct.bignum_st** %p52, align 8, !tbaa !13
  %call71 = tail call %struct.bignum_st* @BN_value_one() #2
  %call72 = tail call i32 @BN_sub(%struct.bignum_st* noundef %call4, %struct.bignum_st* noundef %7, %struct.bignum_st* noundef %call71) #2
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %err, label %if.end75

if.end75:                                         ; preds = %if.end69
  %8 = load %struct.bignum_st*, %struct.bignum_st** %q54, align 8, !tbaa !14
  %call77 = tail call %struct.bignum_st* @BN_value_one() #2
  %call78 = tail call i32 @BN_sub(%struct.bignum_st* noundef %call5, %struct.bignum_st* noundef %8, %struct.bignum_st* noundef %call77) #2
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %err, label %if.end81

if.end81:                                         ; preds = %if.end75
  %call82 = tail call i32 @BN_mul(%struct.bignum_st* noundef %call3, %struct.bignum_st* noundef %call4, %struct.bignum_st* noundef %call5, %struct.bignum_ctx* noundef nonnull %call) #2
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %err, label %if.end85

if.end85:                                         ; preds = %if.end81
  %call86 = tail call i32 @BN_gcd(%struct.bignum_st* noundef nonnull %call6, %struct.bignum_st* noundef %call4, %struct.bignum_st* noundef %call5, %struct.bignum_ctx* noundef nonnull %call) #2
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %err, label %if.end89

if.end89:                                         ; preds = %if.end85
  %call90 = tail call i32 @BN_div(%struct.bignum_st* noundef %call3, %struct.bignum_st* noundef null, %struct.bignum_st* noundef %call3, %struct.bignum_st* noundef nonnull %call6, %struct.bignum_ctx* noundef nonnull %call) #2
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %err, label %if.end93

if.end93:                                         ; preds = %if.end89
  %call94 = tail call %struct.bignum_ctx* @BN_CTX_new() #2
  %cmp95 = icmp eq %struct.bignum_ctx* %call94, null
  br i1 %cmp95, label %err, label %if.end97

if.end97:                                         ; preds = %if.end93
  %9 = load %struct.bignum_st*, %struct.bignum_st** %e10, align 8, !tbaa !4
  %call99 = tail call %struct.bignum_st* @BN_mod_inverse(%struct.bignum_st* noundef null, %struct.bignum_st* noundef %9, %struct.bignum_st* noundef %call3, %struct.bignum_ctx* noundef nonnull %call94) #2
  %d = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 7
  store %struct.bignum_st* %call99, %struct.bignum_st** %d, align 8, !tbaa !16
  %cmp101 = icmp eq %struct.bignum_st* %call99, null
  br i1 %cmp101, label %err, label %if.end103

if.end103:                                        ; preds = %if.end97
  %call104 = tail call %struct.bignum_st* @BN_new() #2
  %dmp1 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 10
  store %struct.bignum_st* %call104, %struct.bignum_st** %dmp1, align 8, !tbaa !17
  %cmp106 = icmp eq %struct.bignum_st* %call104, null
  br i1 %cmp106, label %err, label %if.end108

if.end108:                                        ; preds = %if.end103
  %10 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !16
  %call111 = tail call i32 @BN_div(%struct.bignum_st* noundef null, %struct.bignum_st* noundef nonnull %call104, %struct.bignum_st* noundef %10, %struct.bignum_st* noundef %call4, %struct.bignum_ctx* noundef nonnull %call) #2
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %err, label %if.end114

if.end114:                                        ; preds = %if.end108
  %call115 = tail call %struct.bignum_st* @BN_new() #2
  %dmq1 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 11
  store %struct.bignum_st* %call115, %struct.bignum_st** %dmq1, align 8, !tbaa !18
  %cmp117 = icmp eq %struct.bignum_st* %call115, null
  br i1 %cmp117, label %err, label %if.end119

if.end119:                                        ; preds = %if.end114
  %11 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !16
  %call122 = tail call i32 @BN_div(%struct.bignum_st* noundef null, %struct.bignum_st* noundef nonnull %call115, %struct.bignum_st* noundef %11, %struct.bignum_st* noundef %call5, %struct.bignum_ctx* noundef nonnull %call) #2
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %err, label %if.end125

if.end125:                                        ; preds = %if.end119
  %12 = load %struct.bignum_st*, %struct.bignum_st** %q54, align 8, !tbaa !14
  %13 = load %struct.bignum_st*, %struct.bignum_st** %p52, align 8, !tbaa !13
  %call128 = tail call %struct.bignum_st* @BN_mod_inverse(%struct.bignum_st* noundef null, %struct.bignum_st* noundef %12, %struct.bignum_st* noundef %13, %struct.bignum_ctx* noundef nonnull %call94) #2
  %iqmp = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 12
  store %struct.bignum_st* %call128, %struct.bignum_st** %iqmp, align 8, !tbaa !19
  %cmp130 = icmp eq %struct.bignum_st* %call128, null
  br i1 %cmp130, label %err, label %if.end132

if.end132:                                        ; preds = %if.end125
  %dirty_cnt = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 25
  %14 = load i32, i32* %dirty_cnt, align 8, !tbaa !20
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %dirty_cnt, align 8, !tbaa !20
  br label %err

err:                                              ; preds = %if.end125, %if.end119, %if.end114, %if.end108, %if.end103, %if.end97, %if.end93, %if.end89, %if.end85, %if.end81, %if.end75, %if.end69, %if.end62, %if.end57, %if.end45, %if.then39, %if.end29, %if.then23, %if.then12, %if.end2, %if.end, %entry, %if.end132
  %ctx.0 = phi %struct.bignum_ctx* [ null, %if.end ], [ %call, %if.end2 ], [ %call, %if.then23 ], [ %call, %if.then39 ], [ %call, %if.end57 ], [ %call, %if.end93 ], [ %call, %if.end97 ], [ %call, %if.end103 ], [ %call, %if.end114 ], [ %call, %if.end125 ], [ %call, %if.end132 ], [ %call, %if.end119 ], [ %call, %if.end108 ], [ %call, %if.end89 ], [ %call, %if.end85 ], [ %call, %if.end81 ], [ %call, %if.end75 ], [ %call, %if.end69 ], [ %call, %if.end62 ], [ %call, %if.end45 ], [ %call, %if.end29 ], [ %call, %if.then12 ], [ null, %entry ]
  %ctx2.0 = phi %struct.bignum_ctx* [ null, %if.end ], [ null, %if.end2 ], [ null, %if.then23 ], [ null, %if.then39 ], [ null, %if.end57 ], [ null, %if.end93 ], [ %call94, %if.end97 ], [ %call94, %if.end103 ], [ %call94, %if.end114 ], [ %call94, %if.end125 ], [ %call94, %if.end132 ], [ %call94, %if.end119 ], [ %call94, %if.end108 ], [ null, %if.end89 ], [ null, %if.end85 ], [ null, %if.end81 ], [ null, %if.end75 ], [ null, %if.end69 ], [ null, %if.end62 ], [ null, %if.end45 ], [ null, %if.end29 ], [ null, %if.then12 ], [ null, %entry ]
  %ret.0 = phi i32 [ 0, %if.end ], [ 0, %if.end2 ], [ 0, %if.then23 ], [ 0, %if.then39 ], [ 0, %if.end57 ], [ 0, %if.end93 ], [ 0, %if.end97 ], [ 0, %if.end103 ], [ 0, %if.end114 ], [ 0, %if.end125 ], [ 1, %if.end132 ], [ 0, %if.end119 ], [ 0, %if.end108 ], [ 0, %if.end89 ], [ 0, %if.end85 ], [ 0, %if.end81 ], [ 0, %if.end75 ], [ 0, %if.end69 ], [ 0, %if.end62 ], [ 0, %if.end45 ], [ 0, %if.end29 ], [ 0, %if.then12 ], [ 0, %entry ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx.0) #2
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %ctx.0) #2
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %ctx2.0) #2
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then56
  %retval.0 = phi i32 [ %ret.0, %err ], [ 2, %if.then56 ]
  ret i32 %retval.0
}

declare %struct.bignum_ctx* @BN_CTX_new() local_unnamed_addr #1

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_new() local_unnamed_addr #1

declare i32 @BN_X931_derive_prime_ex(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #1

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_mul(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_sub(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_value_one() local_unnamed_addr #1

declare i32 @BN_gcd(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_div(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_mod_inverse(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_X931_generate_key_ex(%struct.rsa_st* noundef %rsa, i32 noundef %bits, %struct.bignum_st* noundef %e, %struct.bn_gencb_st* noundef %cb) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bignum_ctx* @BN_CTX_new() #2
  %cmp = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp, label %error, label %if.end

if.end:                                           ; preds = %entry
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %call) #2
  %call1 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call) #2
  %call2 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call) #2
  %cmp3 = icmp eq %struct.bignum_st* %call2, null
  br i1 %cmp3, label %error, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @BN_X931_generate_Xpq(%struct.bignum_st* noundef %call1, %struct.bignum_st* noundef nonnull %call2, i32 noundef %bits, %struct.bignum_ctx* noundef nonnull %call) #2
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %error, label %if.end8

if.end8:                                          ; preds = %if.end5
  %call9 = tail call %struct.bignum_st* @BN_new() #2
  %p = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 8
  store %struct.bignum_st* %call9, %struct.bignum_st** %p, align 8, !tbaa !13
  %call10 = tail call %struct.bignum_st* @BN_new() #2
  %q = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 9
  store %struct.bignum_st* %call10, %struct.bignum_st** %q, align 8, !tbaa !14
  %0 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !13
  %cmp12 = icmp eq %struct.bignum_st* %0, null
  %cmp14 = icmp eq %struct.bignum_st* %call10, null
  %or.cond = select i1 %cmp12, i1 true, i1 %cmp14
  br i1 %or.cond, label %error, label %if.end16

if.end16:                                         ; preds = %if.end8
  %call18 = tail call i32 @BN_X931_generate_prime_ex(%struct.bignum_st* noundef nonnull %0, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %e, %struct.bignum_ctx* noundef nonnull %call, %struct.bn_gencb_st* noundef %cb) #2
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %error, label %if.end21

if.end21:                                         ; preds = %if.end16
  %1 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !14
  %call23 = tail call i32 @BN_X931_generate_prime_ex(%struct.bignum_st* noundef %1, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_st* noundef nonnull %call2, %struct.bignum_st* noundef %e, %struct.bignum_ctx* noundef nonnull %call, %struct.bn_gencb_st* noundef %cb) #2
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %error, label %if.end26

if.end26:                                         ; preds = %if.end21
  %call27 = tail call i32 @RSA_X931_derive_ex(%struct.rsa_st* noundef nonnull %rsa, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_st* noundef %e, %struct.bn_gencb_st* noundef %cb) #3
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %error, label %if.end30

if.end30:                                         ; preds = %if.end26
  %dirty_cnt = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 25
  %2 = load i32, i32* %dirty_cnt, align 8, !tbaa !20
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %dirty_cnt, align 8, !tbaa !20
  br label %error

error:                                            ; preds = %if.end26, %if.end21, %if.end16, %if.end8, %if.end5, %if.end, %entry, %if.end30
  %tobool31.not = phi i32 [ 0, %if.end26 ], [ 0, %if.end21 ], [ 0, %if.end16 ], [ 0, %if.end8 ], [ 0, %if.end5 ], [ 0, %if.end ], [ 0, %entry ], [ 1, %if.end30 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %call) #2
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %call) #2
  ret i32 %tobool31.not
}

declare i32 @BN_X931_generate_Xpq(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_X931_generate_prime_ex(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #1

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
!4 = !{!5, !9, i64 48}
!5 = !{!"rsa_st", !6, i64 0, !9, i64 8, !6, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !10, i64 104, !9, i64 128, !9, i64 136, !12, i64 144, !7, i64 160, !6, i64 164, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !6, i64 216}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!"rsa_pss_params_30_st", !6, i64 0, !11, i64 4, !6, i64 12, !6, i64 16}
!11 = !{!"", !6, i64 0, !6, i64 4}
!12 = !{!"crypto_ex_data_st", !9, i64 0, !9, i64 8}
!13 = !{!5, !9, i64 64}
!14 = !{!5, !9, i64 72}
!15 = !{!5, !9, i64 40}
!16 = !{!5, !9, i64 56}
!17 = !{!5, !9, i64 80}
!18 = !{!5, !9, i64 88}
!19 = !{!5, !9, i64 96}
!20 = !{!5, !6, i64 216}
