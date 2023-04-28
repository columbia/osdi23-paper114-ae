; ModuleID = 'crypto/rsa/rsa_backend.c'
source_filename = "crypto/rsa/rsa_backend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsa_st = type { i32, %struct.ossl_lib_ctx_st*, i32, %struct.rsa_meth_st*, %struct.engine_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.rsa_pss_params_30_st, %struct.rsa_pss_params_st*, %struct.stack_st_RSA_PRIME_INFO*, %struct.crypto_ex_data_st, i32, i32, %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st*, %struct.bn_blinding_st*, %struct.bn_blinding_st*, i8*, i32 }
%struct.ossl_lib_ctx_st = type opaque
%struct.rsa_meth_st = type { i8*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.rsa_st*, %struct.bignum_ctx*)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.rsa_st*)*, i32 (%struct.rsa_st*)*, i32, i8*, i32 (i32, i8*, i32, i8*, i32*, %struct.rsa_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.rsa_st*)*, i32 (%struct.rsa_st*, i32, %struct.bignum_st*, %struct.bn_gencb_st*)*, i32 (%struct.rsa_st*, i32, i32, %struct.bignum_st*, %struct.bn_gencb_st*)* }
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type opaque
%struct.engine_st = type opaque
%struct.bignum_st = type opaque
%struct.rsa_pss_params_30_st = type { i32, %struct.anon, i32, i32 }
%struct.anon = type { i32, i32 }
%struct.rsa_pss_params_st = type { %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.X509_algor_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.stack_st_RSA_PRIME_INFO = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.bn_mont_ctx_st = type opaque
%struct.bn_blinding_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.stack_st_BIGNUM = type opaque
%struct.stack_st = type opaque
%struct.ossl_param_bld_st = type opaque
%struct.stack_st_BIGNUM_const = type opaque
%struct.evp_md_st = type opaque
%struct.rsa_prime_info_st = type { %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bn_mont_ctx_st* }
%struct.ASN1_ITEM_st = type opaque
%struct.pkcs8_priv_key_info_st = type opaque

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@ossl_rsa_mp_factor_names = external global [0 x i8*], align 8
@ossl_rsa_mp_exp_names = external global [0 x i8*], align 8
@ossl_rsa_mp_coeff_names = external global [0 x i8*], align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"mgf\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"mgf1-digest\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"saltlen\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"properties\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"crypto/rsa/rsa_backend.c\00", align 1
@__func__.ossl_rsa_dup = private unnamed_addr constant [13 x i8] c"ossl_rsa_dup\00", align 1
@__func__.ossl_rsa_param_decode = private unnamed_addr constant [22 x i8] c"ossl_rsa_param_decode\00", align 1
@__func__.ossl_rsa_key_from_pkcs8 = private unnamed_addr constant [24 x i8] c"ossl_rsa_key_from_pkcs8\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsa_fromdata(%struct.rsa_st* noundef %rsa, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %n = alloca %struct.bignum_st*, align 8
  %e = alloca %struct.bignum_st*, align 8
  %d = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.bignum_st** %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.bignum_st* null, %struct.bignum_st** %n, align 8, !tbaa !4
  %1 = bitcast %struct.bignum_st** %e to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store %struct.bignum_st* null, %struct.bignum_st** %e, align 8, !tbaa !4
  %2 = bitcast %struct.bignum_st** %d to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  store %struct.bignum_st* null, %struct.bignum_st** %d, align 8, !tbaa !4
  %cmp = icmp eq %struct.rsa_st* %rsa, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #6
  %call1 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6
  %call2 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6
  %cmp3.not = icmp eq %struct.ossl_param_st* %call, null
  br i1 %cmp3.not, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call4 = call i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef nonnull %call, %struct.bignum_st** noundef nonnull %n) #6
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %cmp5.not = icmp eq %struct.ossl_param_st* %call1, null
  br i1 %cmp5.not, label %lor.lhs.false9, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %lor.lhs.false
  %call7 = call i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef nonnull %call1, %struct.bignum_st** noundef nonnull %e) #6
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %land.lhs.true6, %lor.lhs.false
  %cmp10.not = icmp eq %struct.ossl_param_st* %call2, null
  br i1 %cmp10.not, label %if.end15, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %lor.lhs.false9
  %call12 = call i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef nonnull %call2, %struct.bignum_st** noundef nonnull %d) #6
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %land.lhs.true11.if.end15_crit_edge

land.lhs.true11.if.end15_crit_edge:               ; preds = %land.lhs.true11
  %.pre = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !4
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true11.if.end15_crit_edge, %lor.lhs.false9
  %3 = phi %struct.bignum_st* [ %.pre, %land.lhs.true11.if.end15_crit_edge ], [ null, %lor.lhs.false9 ]
  %4 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !4
  %5 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !4
  %call17 = call i32 @RSA_set0_key(%struct.rsa_st* noundef nonnull %rsa, %struct.bignum_st* noundef %4, %struct.bignum_st* noundef %5, %struct.bignum_st* noundef %3) #6
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %if.end20

if.end20:                                         ; preds = %if.end15
  %cmp16.not = icmp eq %struct.bignum_st* %3, null
  store %struct.bignum_st* null, %struct.bignum_st** %d, align 8, !tbaa !4
  store %struct.bignum_st* null, %struct.bignum_st** %e, align 8, !tbaa !4
  store %struct.bignum_st* null, %struct.bignum_st** %n, align 8, !tbaa !4
  br i1 %cmp16.not, label %if.end44, label %if.then22

if.then22:                                        ; preds = %if.end20
  %call23 = call fastcc %struct.stack_st_BIGNUM* @sk_BIGNUM_new_null() #7
  %call24 = call fastcc i32 @collect_numbers(%struct.stack_st_BIGNUM* noundef %call23, %struct.ossl_param_st* noundef %params, i8** noundef getelementptr inbounds ([0 x i8*], [0 x i8*]* @ossl_rsa_mp_factor_names, i64 0, i64 0)) #7
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %if.then22
  %call27 = call fastcc %struct.stack_st_BIGNUM* @sk_BIGNUM_new_null() #7
  %call28 = call fastcc i32 @collect_numbers(%struct.stack_st_BIGNUM* noundef %call27, %struct.ossl_param_st* noundef %params, i8** noundef getelementptr inbounds ([0 x i8*], [0 x i8*]* @ossl_rsa_mp_exp_names, i64 0, i64 0)) #7
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %err, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false26
  %call31 = call fastcc %struct.stack_st_BIGNUM* @sk_BIGNUM_new_null() #7
  %call32 = call fastcc i32 @collect_numbers(%struct.stack_st_BIGNUM* noundef %call31, %struct.ossl_param_st* noundef %params, i8** noundef getelementptr inbounds ([0 x i8*], [0 x i8*]* @ossl_rsa_mp_coeff_names, i64 0, i64 0)) #7
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %if.end35

if.end35:                                         ; preds = %lor.lhs.false30
  %call36 = call fastcc i32 @sk_BIGNUM_num(%struct.stack_st_BIGNUM* noundef %call23) #7
  %cmp37.not = icmp eq i32 %call36, 0
  br i1 %cmp37.not, label %if.end44, label %land.lhs.true39

land.lhs.true39:                                  ; preds = %if.end35
  %call40 = call i32 @ossl_rsa_set0_all_params(%struct.rsa_st* noundef nonnull %rsa, %struct.stack_st_BIGNUM* noundef %call23, %struct.stack_st_BIGNUM* noundef %call27, %struct.stack_st_BIGNUM* noundef %call31) #6
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %err, label %if.end44

if.end44:                                         ; preds = %if.end35, %land.lhs.true39, %if.end20
  %factors.0 = phi %struct.stack_st_BIGNUM* [ %call23, %land.lhs.true39 ], [ %call23, %if.end35 ], [ null, %if.end20 ]
  %exps.0 = phi %struct.stack_st_BIGNUM* [ %call27, %land.lhs.true39 ], [ %call27, %if.end35 ], [ null, %if.end20 ]
  %coeffs.0 = phi %struct.stack_st_BIGNUM* [ %call31, %land.lhs.true39 ], [ %call31, %if.end35 ], [ null, %if.end20 ]
  call fastcc void @sk_BIGNUM_free(%struct.stack_st_BIGNUM* noundef %factors.0) #7
  call fastcc void @sk_BIGNUM_free(%struct.stack_st_BIGNUM* noundef %exps.0) #7
  call fastcc void @sk_BIGNUM_free(%struct.stack_st_BIGNUM* noundef %coeffs.0) #7
  br label %cleanup

err:                                              ; preds = %land.lhs.true39, %if.then22, %lor.lhs.false26, %lor.lhs.false30, %if.end15, %land.lhs.true, %land.lhs.true6, %land.lhs.true11
  %factors.1 = phi %struct.stack_st_BIGNUM* [ %call23, %land.lhs.true39 ], [ %call23, %lor.lhs.false30 ], [ %call23, %lor.lhs.false26 ], [ %call23, %if.then22 ], [ null, %if.end15 ], [ null, %land.lhs.true11 ], [ null, %land.lhs.true6 ], [ null, %land.lhs.true ]
  %exps.1 = phi %struct.stack_st_BIGNUM* [ %call27, %land.lhs.true39 ], [ %call27, %lor.lhs.false30 ], [ %call27, %lor.lhs.false26 ], [ null, %if.then22 ], [ null, %if.end15 ], [ null, %land.lhs.true11 ], [ null, %land.lhs.true6 ], [ null, %land.lhs.true ]
  %coeffs.1 = phi %struct.stack_st_BIGNUM* [ %call31, %land.lhs.true39 ], [ %call31, %lor.lhs.false30 ], [ null, %lor.lhs.false26 ], [ null, %if.then22 ], [ null, %if.end15 ], [ null, %land.lhs.true11 ], [ null, %land.lhs.true6 ], [ null, %land.lhs.true ]
  %6 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !4
  call void @BN_free(%struct.bignum_st* noundef %6) #6
  %7 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !4
  call void @BN_free(%struct.bignum_st* noundef %7) #6
  %8 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !4
  call void @BN_free(%struct.bignum_st* noundef %8) #6
  call fastcc void @sk_BIGNUM_pop_free(%struct.stack_st_BIGNUM* noundef %factors.1) #7
  call fastcc void @sk_BIGNUM_pop_free(%struct.stack_st_BIGNUM* noundef %exps.1) #7
  call fastcc void @sk_BIGNUM_pop_free(%struct.stack_st_BIGNUM* noundef %coeffs.1) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %err, %if.end44
  %retval.0 = phi i32 [ 1, %if.end44 ], [ 0, %err ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef, %struct.bignum_st** noundef) local_unnamed_addr #2

declare i32 @RSA_set0_key(%struct.rsa_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @collect_numbers(%struct.stack_st_BIGNUM* noundef %numbers, %struct.ossl_param_st* noundef %params, i8** nocapture noundef readonly %names) unnamed_addr #0 {
entry:
  %tmp = alloca %struct.bignum_st*, align 8
  %cmp = icmp eq %struct.stack_st_BIGNUM* %numbers, null
  br i1 %cmp, label %cleanup12, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %0 = load i8*, i8** %names, align 8, !tbaa !4
  %cmp1.not21 = icmp eq i8* %0, null
  br i1 %cmp1.not21, label %cleanup12, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %1 = bitcast %struct.bignum_st** %tmp to i8*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %2 = phi i8* [ %0, %for.body.lr.ph ], [ %4, %for.inc ]
  %call = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef nonnull %2) #6
  %cmp4.not = icmp eq %struct.ossl_param_st* %call, null
  br i1 %cmp4.not, label %for.inc, label %if.then5

if.then5:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store %struct.bignum_st* null, %struct.bignum_st** %tmp, align 8, !tbaa !4
  %call6 = call i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef nonnull %call, %struct.bignum_st** noundef nonnull %tmp) #6
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then5
  %3 = load %struct.bignum_st*, %struct.bignum_st** %tmp, align 8, !tbaa !4
  %call7 = call fastcc i32 @sk_BIGNUM_push(%struct.stack_st_BIGNUM* noundef nonnull %numbers, %struct.bignum_st* noundef %3) #7
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %cleanup, label %for.inc.critedge

cleanup:                                          ; preds = %if.then5, %lor.lhs.false
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  br label %cleanup12

for.inc.critedge:                                 ; preds = %lor.lhs.false
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  br label %for.inc

for.inc:                                          ; preds = %for.inc.critedge, %for.body
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds i8*, i8** %names, i64 %indvars.iv.next
  %4 = load i8*, i8** %arrayidx, align 8, !tbaa !4
  %cmp1.not = icmp eq i8* %4, null
  br i1 %cmp1.not, label %cleanup12, label %for.body, !llvm.loop !8

cleanup12:                                        ; preds = %for.inc, %for.cond.preheader, %cleanup, %entry
  %retval.3 = phi i32 [ 0, %cleanup ], [ 0, %entry ], [ 1, %for.cond.preheader ], [ 1, %for.inc ]
  ret i32 %retval.3
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_BIGNUM* @sk_BIGNUM_new_null() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #6
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_BIGNUM*
  ret %struct.stack_st_BIGNUM* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_BIGNUM_num(%struct.stack_st_BIGNUM* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_BIGNUM* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #6
  ret i32 %call
}

declare i32 @ossl_rsa_set0_all_params(%struct.rsa_st* noundef, %struct.stack_st_BIGNUM* noundef, %struct.stack_st_BIGNUM* noundef, %struct.stack_st_BIGNUM* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_BIGNUM_free(%struct.stack_st_BIGNUM* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_BIGNUM* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %0) #6
  ret void
}

declare void @BN_free(%struct.bignum_st* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_BIGNUM_pop_free(%struct.stack_st_BIGNUM* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_BIGNUM* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.bignum_st*)* @BN_free to void (i8*)*)) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsa_todata(%struct.rsa_st* noundef %rsa, %struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %rsa_d = alloca %struct.bignum_st*, align 8
  %rsa_n = alloca %struct.bignum_st*, align 8
  %rsa_e = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.bignum_st** %rsa_d to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.bignum_st* null, %struct.bignum_st** %rsa_d, align 8, !tbaa !4
  %1 = bitcast %struct.bignum_st** %rsa_n to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store %struct.bignum_st* null, %struct.bignum_st** %rsa_n, align 8, !tbaa !4
  %2 = bitcast %struct.bignum_st** %rsa_e to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  store %struct.bignum_st* null, %struct.bignum_st** %rsa_e, align 8, !tbaa !4
  %call = tail call fastcc %struct.stack_st_BIGNUM_const* @sk_BIGNUM_const_new_null() #7
  %call1 = tail call fastcc %struct.stack_st_BIGNUM_const* @sk_BIGNUM_const_new_null() #7
  %call2 = tail call fastcc %struct.stack_st_BIGNUM_const* @sk_BIGNUM_const_new_null() #7
  %cmp = icmp eq %struct.rsa_st* %rsa, null
  %cmp3 = icmp eq %struct.stack_st_BIGNUM_const* %call, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  %cmp5 = icmp eq %struct.stack_st_BIGNUM_const* %call1, null
  %or.cond51 = select i1 %or.cond, i1 true, i1 %cmp5
  %cmp7 = icmp eq %struct.stack_st_BIGNUM_const* %call2, null
  %or.cond52 = select i1 %or.cond51, i1 true, i1 %cmp7
  br i1 %or.cond52, label %err, label %if.end

if.end:                                           ; preds = %entry
  call void @RSA_get0_key(%struct.rsa_st* noundef nonnull %rsa, %struct.bignum_st** noundef nonnull %rsa_n, %struct.bignum_st** noundef nonnull %rsa_e, %struct.bignum_st** noundef nonnull %rsa_d) #6
  %call8 = call i32 @ossl_rsa_get0_all_params(%struct.rsa_st* noundef nonnull %rsa, %struct.stack_st_BIGNUM_const* noundef nonnull %call, %struct.stack_st_BIGNUM_const* noundef nonnull %call1, %struct.stack_st_BIGNUM_const* noundef nonnull %call2) #6
  %3 = load %struct.bignum_st*, %struct.bignum_st** %rsa_n, align 8, !tbaa !4
  %call9 = call i32 @ossl_param_build_set_bn(%struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.bignum_st* noundef %3) #6
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %if.end
  %4 = load %struct.bignum_st*, %struct.bignum_st** %rsa_e, align 8, !tbaa !4
  %call11 = call i32 @ossl_param_build_set_bn(%struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %struct.bignum_st* noundef %4) #6
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %if.end14

if.end14:                                         ; preds = %lor.lhs.false10
  %5 = load %struct.bignum_st*, %struct.bignum_st** %rsa_d, align 8, !tbaa !4
  %cmp15.not = icmp eq %struct.bignum_st* %5, null
  br i1 %cmp15.not, label %err, label %if.then16

if.then16:                                        ; preds = %if.end14
  %call17 = call fastcc i32 @sk_BIGNUM_const_num(%struct.stack_st_BIGNUM_const* noundef nonnull %call) #7
  %call18 = call fastcc i32 @sk_BIGNUM_const_num(%struct.stack_st_BIGNUM_const* noundef nonnull %call1) #7
  %call19 = call fastcc i32 @sk_BIGNUM_const_num(%struct.stack_st_BIGNUM_const* noundef nonnull %call2) #7
  %cmp20.not = icmp eq i32 %call17, 0
  br i1 %cmp20.not, label %if.end27, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then16
  %cmp21 = icmp slt i32 %call17, 2
  %cmp23 = icmp slt i32 %call18, 2
  %or.cond53 = select i1 %cmp21, i1 true, i1 %cmp23
  %cmp25 = icmp slt i32 %call19, 1
  %or.cond54 = select i1 %or.cond53, i1 true, i1 %cmp25
  br i1 %or.cond54, label %cleanup.thread, label %if.end27

if.end27:                                         ; preds = %land.lhs.true, %if.then16
  %6 = load %struct.bignum_st*, %struct.bignum_st** %rsa_d, align 8, !tbaa !4
  %call28 = call i32 @ossl_param_build_set_bn(%struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %struct.bignum_st* noundef %6) #6
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %cleanup.thread, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %if.end27
  %call31 = call i32 @ossl_param_build_set_multi_key_bn(%struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %params, i8** noundef getelementptr inbounds ([0 x i8*], [0 x i8*]* @ossl_rsa_mp_factor_names, i64 0, i64 0), %struct.stack_st_BIGNUM_const* noundef nonnull %call) #6
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %cleanup.thread, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false30
  %call34 = call i32 @ossl_param_build_set_multi_key_bn(%struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %params, i8** noundef getelementptr inbounds ([0 x i8*], [0 x i8*]* @ossl_rsa_mp_exp_names, i64 0, i64 0), %struct.stack_st_BIGNUM_const* noundef nonnull %call1) #6
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %cleanup.thread, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false33
  %call37 = call i32 @ossl_param_build_set_multi_key_bn(%struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %params, i8** noundef getelementptr inbounds ([0 x i8*], [0 x i8*]* @ossl_rsa_mp_coeff_names, i64 0, i64 0), %struct.stack_st_BIGNUM_const* noundef nonnull %call2) #6
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %cleanup.thread, label %err

cleanup.thread:                                   ; preds = %land.lhs.true, %lor.lhs.false33, %lor.lhs.false30, %if.end27, %lor.lhs.false36
  br label %err

err:                                              ; preds = %if.end14, %lor.lhs.false36, %cleanup.thread, %if.end, %lor.lhs.false10, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %lor.lhs.false10 ], [ 0, %if.end ], [ 0, %cleanup.thread ], [ 1, %lor.lhs.false36 ], [ 1, %if.end14 ]
  call fastcc void @sk_BIGNUM_const_free(%struct.stack_st_BIGNUM_const* noundef %call) #7
  call fastcc void @sk_BIGNUM_const_free(%struct.stack_st_BIGNUM_const* noundef %call1) #7
  call fastcc void @sk_BIGNUM_const_free(%struct.stack_st_BIGNUM_const* noundef %call2) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_BIGNUM_const* @sk_BIGNUM_const_new_null() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #6
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_BIGNUM_const*
  ret %struct.stack_st_BIGNUM_const* %0
}

declare void @RSA_get0_key(%struct.rsa_st* noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef) local_unnamed_addr #2

declare i32 @ossl_rsa_get0_all_params(%struct.rsa_st* noundef, %struct.stack_st_BIGNUM_const* noundef, %struct.stack_st_BIGNUM_const* noundef, %struct.stack_st_BIGNUM_const* noundef) local_unnamed_addr #2

declare i32 @ossl_param_build_set_bn(%struct.ossl_param_bld_st* noundef, %struct.ossl_param_st* noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_BIGNUM_const_num(%struct.stack_st_BIGNUM_const* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_BIGNUM_const* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #6
  ret i32 %call
}

declare i32 @ossl_param_build_set_multi_key_bn(%struct.ossl_param_bld_st* noundef, %struct.ossl_param_st* noundef, i8** noundef, %struct.stack_st_BIGNUM_const* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_BIGNUM_const_free(%struct.stack_st_BIGNUM_const* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_BIGNUM_const* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %0) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsa_pss_params_30_todata(%struct.rsa_pss_params_30_st* noundef %pss, %struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_rsa_pss_params_30_is_unrestricted(%struct.rsa_pss_params_30_st* noundef %pss) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end50

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ossl_rsa_pss_params_30_hashalg(%struct.rsa_pss_params_30_st* noundef %pss) #6
  %call2 = tail call i32 @ossl_rsa_pss_params_30_maskgenalg(%struct.rsa_pss_params_30_st* noundef %pss) #6
  %call3 = tail call i32 @ossl_rsa_pss_params_30_maskgenhashalg(%struct.rsa_pss_params_30_st* noundef %pss) #6
  %call4 = tail call i32 @ossl_rsa_pss_params_30_saltlen(%struct.rsa_pss_params_30_st* noundef %pss) #6
  %call5 = tail call i32 @ossl_rsa_pss_params_30_hashalg(%struct.rsa_pss_params_30_st* noundef null) #6
  %call6 = tail call i32 @ossl_rsa_pss_params_30_maskgenalg(%struct.rsa_pss_params_30_st* noundef null) #6
  %call7 = tail call i32 @ossl_rsa_pss_params_30_maskgenhashalg(%struct.rsa_pss_params_30_st* noundef null) #6
  %cmp = icmp eq i32 %call1, %call5
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.then
  %call8 = tail call i8* @ossl_rsa_oaeppss_nid2name(i32 noundef %call1) #6
  br label %cond.end

cond.end:                                         ; preds = %if.then, %cond.false
  %cond = phi i8* [ %call8, %cond.false ], [ null, %if.then ]
  %cmp9 = icmp eq i32 %call2, %call6
  br i1 %cmp9, label %cond.end13, label %cond.false11

cond.false11:                                     ; preds = %cond.end
  %call12 = tail call i8* @ossl_rsa_oaeppss_nid2name(i32 noundef %call2) #6
  br label %cond.end13

cond.end13:                                       ; preds = %cond.end, %cond.false11
  %cond14 = phi i8* [ %call12, %cond.false11 ], [ null, %cond.end ]
  %cmp15 = icmp eq i32 %call3, %call7
  br i1 %cmp15, label %cond.end19, label %cond.false17

cond.false17:                                     ; preds = %cond.end13
  %call18 = tail call i8* @ossl_rsa_oaeppss_nid2name(i32 noundef %call3) #6
  br label %cond.end19

cond.end19:                                       ; preds = %cond.end13, %cond.false17
  %cond20 = phi i8* [ %call18, %cond.false17 ], [ null, %cond.end13 ]
  %cmp21.not = icmp eq i8* %cond, null
  br i1 %cmp21.not, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end19
  %call22 = tail call i32 @ossl_param_build_set_utf8_string(%struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %cond) #6
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %cond.end19
  %cmp24.not = icmp eq i8* %cond14, null
  br i1 %cmp24.not, label %lor.lhs.false28, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %lor.lhs.false
  %call26 = tail call i32 @ossl_param_build_set_utf8_string(%struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* noundef nonnull %cond14) #6
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %return, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %land.lhs.true25, %lor.lhs.false
  %cmp29.not = icmp eq i8* %cond20, null
  br i1 %cmp29.not, label %cleanup, label %land.lhs.true30

land.lhs.true30:                                  ; preds = %lor.lhs.false28
  %call31 = tail call i32 @ossl_param_build_set_utf8_string(%struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* noundef nonnull %cond20) #6
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %return, label %cleanup

cleanup:                                          ; preds = %lor.lhs.false28, %land.lhs.true30
  %call34 = tail call i32 @ossl_param_build_set_int(%struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 noundef %call4) #6
  %tobool35.not.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not.not, label %return, label %if.end50

if.end50:                                         ; preds = %cleanup, %entry
  br label %return

return:                                           ; preds = %land.lhs.true, %land.lhs.true25, %land.lhs.true30, %cleanup, %if.end50
  %retval.1 = phi i32 [ 1, %if.end50 ], [ 0, %cleanup ], [ 0, %land.lhs.true30 ], [ 0, %land.lhs.true25 ], [ 0, %land.lhs.true ]
  ret i32 %retval.1
}

declare i32 @ossl_rsa_pss_params_30_is_unrestricted(%struct.rsa_pss_params_30_st* noundef) local_unnamed_addr #2

declare i32 @ossl_rsa_pss_params_30_hashalg(%struct.rsa_pss_params_30_st* noundef) local_unnamed_addr #2

declare i32 @ossl_rsa_pss_params_30_maskgenalg(%struct.rsa_pss_params_30_st* noundef) local_unnamed_addr #2

declare i32 @ossl_rsa_pss_params_30_maskgenhashalg(%struct.rsa_pss_params_30_st* noundef) local_unnamed_addr #2

declare i32 @ossl_rsa_pss_params_30_saltlen(%struct.rsa_pss_params_30_st* noundef) local_unnamed_addr #2

declare i8* @ossl_rsa_oaeppss_nid2name(i32 noundef) local_unnamed_addr #2

declare i32 @ossl_param_build_set_utf8_string(%struct.ossl_param_bld_st* noundef, %struct.ossl_param_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @ossl_param_build_set_int(%struct.ossl_param_bld_st* noundef, %struct.ossl_param_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsa_pss_params_30_fromdata(%struct.rsa_pss_params_30_st* noundef %pss_params, i32* nocapture noundef %defaults_set, %struct.ossl_param_st* noundef %params, %struct.ossl_lib_ctx_st* noundef %libctx) local_unnamed_addr #0 {
entry:
  %saltlen = alloca i32, align 4
  %mgfname = alloca i8*, align 8
  %mdname = alloca i8*, align 8
  %mgf1mdname = alloca i8*, align 8
  %0 = bitcast i32* %saltlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  %cmp = icmp eq %struct.rsa_pss_params_30_st* %pss_params, null
  br i1 %cmp, label %cleanup101, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0)) #6
  %call1 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #6
  %call2 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)) #6
  %call3 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0)) #6
  %call4 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)) #6
  %cmp5.not = icmp eq %struct.ossl_param_st* %call, null
  br i1 %cmp5.not, label %if.end10, label %if.then6

if.then6:                                         ; preds = %if.end
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call, i64 0, i32 1
  %1 = load i32, i32* %data_type, align 8, !tbaa !10
  %cmp7 = icmp eq i32 %1, 4
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.then6
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call, i64 0, i32 2
  %2 = load i8*, i8** %data, align 8, !tbaa !14
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.then8, %if.end
  %propq.0 = phi i8* [ %2, %if.then8 ], [ null, %if.then6 ], [ null, %if.end ]
  %3 = load i32, i32* %defaults_set, align 4, !tbaa !15
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end22

land.lhs.true:                                    ; preds = %if.end10
  %cmp11 = icmp ne %struct.ossl_param_st* %call1, null
  %cmp12 = icmp ne %struct.ossl_param_st* %call2, null
  %or.cond = select i1 %cmp11, i1 true, i1 %cmp12
  %cmp14 = icmp ne %struct.ossl_param_st* %call3, null
  %or.cond111 = select i1 %or.cond, i1 true, i1 %cmp14
  %cmp16 = icmp ne %struct.ossl_param_st* %call4, null
  %or.cond112 = select i1 %or.cond111, i1 true, i1 %cmp16
  br i1 %or.cond112, label %if.then17, label %if.end100

if.then17:                                        ; preds = %land.lhs.true
  %call18 = tail call i32 @ossl_rsa_pss_params_30_set_defaults(%struct.rsa_pss_params_30_st* noundef nonnull %pss_params) #6
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %cleanup101, label %if.end21

if.end21:                                         ; preds = %if.then17
  store i32 1, i32* %defaults_set, align 4, !tbaa !15
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end10
  %cmp23.not = icmp eq %struct.ossl_param_st* %call2, null
  br i1 %cmp23.not, label %if.end42, label %if.then24

if.then24:                                        ; preds = %if.end22
  %call25 = tail call i32 @ossl_rsa_pss_params_30_maskgenalg(%struct.rsa_pss_params_30_st* noundef null) #6
  %4 = bitcast i8** %mgfname to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5
  store i8* null, i8** %mgfname, align 8, !tbaa !4
  %data_type26 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call2, i64 0, i32 1
  %5 = load i32, i32* %data_type26, align 8, !tbaa !10
  %cmp27 = icmp eq i32 %5, 4
  br i1 %cmp27, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.then24
  %data29 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call2, i64 0, i32 2
  %6 = load i8*, i8** %data29, align 8, !tbaa !14
  store i8* %6, i8** %mgfname, align 8, !tbaa !4
  br label %if.end34

if.else:                                          ; preds = %if.then24
  %call30 = call i32 @OSSL_PARAM_get_utf8_ptr(%struct.ossl_param_st* noundef nonnull %call2, i8** noundef nonnull %mgfname) #6
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %cleanup101.critedge, label %if.else.if.end34_crit_edge

if.else.if.end34_crit_edge:                       ; preds = %if.else
  %data35.phi.trans.insert = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call2, i64 0, i32 2
  %.pre = load i8*, i8** %data35.phi.trans.insert, align 8, !tbaa !14
  br label %if.end34

if.end34:                                         ; preds = %if.else.if.end34_crit_edge, %if.then28
  %7 = phi i8* [ %.pre, %if.else.if.end34_crit_edge ], [ %6, %if.then28 ]
  %call36 = call i8* @ossl_rsa_mgf_nid2name(i32 noundef %call25) #6
  %call37 = call i32 @strcasecmp(i8* noundef %7, i8* noundef %call36) #8
  %cmp38.not = icmp eq i32 %call37, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5
  br i1 %cmp38.not, label %if.end42, label %cleanup101

if.end42:                                         ; preds = %if.end34, %if.end22
  %cmp43.not = icmp eq %struct.ossl_param_st* %call1, null
  br i1 %cmp43.not, label %if.end66, label %if.then44

if.then44:                                        ; preds = %if.end42
  %8 = bitcast i8** %mdname to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5
  store i8* null, i8** %mdname, align 8, !tbaa !4
  %data_type45 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call1, i64 0, i32 1
  %9 = load i32, i32* %data_type45, align 8, !tbaa !10
  %cmp46 = icmp eq i32 %9, 4
  br i1 %cmp46, label %if.then47, label %if.else49

if.then47:                                        ; preds = %if.then44
  %data48 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call1, i64 0, i32 2
  %10 = load i8*, i8** %data48, align 8, !tbaa !14
  store i8* %10, i8** %mdname, align 8, !tbaa !4
  br label %if.end54

if.else49:                                        ; preds = %if.then44
  %call50 = call i32 @OSSL_PARAM_get_utf8_ptr(%struct.ossl_param_st* noundef %call2, i8** noundef nonnull %mdname) #6
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %cleanup63.thread, label %if.else49.if.end54_crit_edge

if.else49.if.end54_crit_edge:                     ; preds = %if.else49
  %.pre176 = load i8*, i8** %mdname, align 8, !tbaa !4
  br label %if.end54

if.end54:                                         ; preds = %if.else49.if.end54_crit_edge, %if.then47
  %11 = phi i8* [ %.pre176, %if.else49.if.end54_crit_edge ], [ %10, %if.then47 ]
  %call55 = call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %11, i8* noundef %propq.0) #6
  %cmp56 = icmp eq %struct.evp_md_st* %call55, null
  br i1 %cmp56, label %cleanup63.thread, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %if.end54
  %call58 = call i32 @ossl_rsa_oaeppss_md2nid(%struct.evp_md_st* noundef nonnull %call55) #6
  %call59 = call i32 @ossl_rsa_pss_params_30_set_hashalg(%struct.rsa_pss_params_30_st* noundef nonnull %pss_params, i32 noundef %call58) #6
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %cleanup63.thread, label %cleanup63

cleanup63.thread:                                 ; preds = %if.else49, %if.end54, %lor.lhs.false57
  %md.0.ph = phi %struct.evp_md_st* [ null, %if.end54 ], [ null, %if.else49 ], [ %call55, %lor.lhs.false57 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5
  br label %err

cleanup63:                                        ; preds = %lor.lhs.false57
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5
  br label %if.end66

if.end66:                                         ; preds = %cleanup63, %if.end42
  %md.1 = phi %struct.evp_md_st* [ %call55, %cleanup63 ], [ null, %if.end42 ]
  %cmp67.not = icmp eq %struct.ossl_param_st* %call3, null
  br i1 %cmp67.not, label %if.end90, label %if.then68

if.then68:                                        ; preds = %if.end66
  %12 = bitcast i8** %mgf1mdname to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #5
  store i8* null, i8** %mgf1mdname, align 8, !tbaa !4
  %data_type69 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call3, i64 0, i32 1
  %13 = load i32, i32* %data_type69, align 8, !tbaa !10
  %cmp70 = icmp eq i32 %13, 4
  br i1 %cmp70, label %if.then71, label %if.else73

if.then71:                                        ; preds = %if.then68
  %data72 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call3, i64 0, i32 2
  %14 = load i8*, i8** %data72, align 8, !tbaa !14
  store i8* %14, i8** %mgf1mdname, align 8, !tbaa !4
  br label %if.end78

if.else73:                                        ; preds = %if.then68
  %call74 = call i32 @OSSL_PARAM_get_utf8_ptr(%struct.ossl_param_st* noundef %call2, i8** noundef nonnull %mgf1mdname) #6
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %cleanup87.thread, label %if.else73.if.end78_crit_edge

if.else73.if.end78_crit_edge:                     ; preds = %if.else73
  %.pre177 = load i8*, i8** %mgf1mdname, align 8, !tbaa !4
  br label %if.end78

if.end78:                                         ; preds = %if.else73.if.end78_crit_edge, %if.then71
  %15 = phi i8* [ %.pre177, %if.else73.if.end78_crit_edge ], [ %14, %if.then71 ]
  %call79 = call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %15, i8* noundef %propq.0) #6
  %cmp80 = icmp eq %struct.evp_md_st* %call79, null
  br i1 %cmp80, label %cleanup87.thread, label %lor.lhs.false81

lor.lhs.false81:                                  ; preds = %if.end78
  %call82 = call i32 @ossl_rsa_oaeppss_md2nid(%struct.evp_md_st* noundef nonnull %call79) #6
  %call83 = call i32 @ossl_rsa_pss_params_30_set_maskgenhashalg(%struct.rsa_pss_params_30_st* noundef nonnull %pss_params, i32 noundef %call82) #6
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %cleanup87.thread, label %cleanup87

cleanup87.thread:                                 ; preds = %if.else73, %if.end78, %lor.lhs.false81
  %mgf1md.0.ph = phi %struct.evp_md_st* [ null, %if.end78 ], [ null, %if.else73 ], [ %call79, %lor.lhs.false81 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #5
  br label %err

cleanup87:                                        ; preds = %lor.lhs.false81
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #5
  br label %if.end90

if.end90:                                         ; preds = %cleanup87, %if.end66
  %mgf1md.1 = phi %struct.evp_md_st* [ %call79, %cleanup87 ], [ null, %if.end66 ]
  %cmp91.not = icmp eq %struct.ossl_param_st* %call4, null
  br i1 %cmp91.not, label %if.end100, label %if.then92

if.then92:                                        ; preds = %if.end90
  %call93 = call i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef nonnull %call4, i32* noundef nonnull %saltlen) #6
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %err, label %lor.lhs.false95

lor.lhs.false95:                                  ; preds = %if.then92
  %16 = load i32, i32* %saltlen, align 4, !tbaa !15
  %call96 = call i32 @ossl_rsa_pss_params_30_set_saltlen(%struct.rsa_pss_params_30_st* noundef nonnull %pss_params, i32 noundef %16) #6
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %err, label %if.end100

if.end100:                                        ; preds = %land.lhs.true, %lor.lhs.false95, %if.end90
  %mgf1md.1175 = phi %struct.evp_md_st* [ %mgf1md.1, %lor.lhs.false95 ], [ %mgf1md.1, %if.end90 ], [ null, %land.lhs.true ]
  %md.1166174 = phi %struct.evp_md_st* [ %md.1, %lor.lhs.false95 ], [ %md.1, %if.end90 ], [ null, %land.lhs.true ]
  br label %err

err:                                              ; preds = %cleanup87.thread, %cleanup63.thread, %if.then92, %lor.lhs.false95, %if.end100
  %md.2 = phi %struct.evp_md_st* [ %md.1166174, %if.end100 ], [ %md.1, %lor.lhs.false95 ], [ %md.1, %if.then92 ], [ %md.0.ph, %cleanup63.thread ], [ %md.1, %cleanup87.thread ]
  %mgf1md.2 = phi %struct.evp_md_st* [ %mgf1md.1175, %if.end100 ], [ %mgf1md.1, %lor.lhs.false95 ], [ %mgf1md.1, %if.then92 ], [ null, %cleanup63.thread ], [ %mgf1md.0.ph, %cleanup87.thread ]
  %ret.0 = phi i32 [ 1, %if.end100 ], [ 0, %lor.lhs.false95 ], [ 0, %if.then92 ], [ 0, %cleanup63.thread ], [ 0, %cleanup87.thread ]
  call void @EVP_MD_free(%struct.evp_md_st* noundef %md.2) #6
  call void @EVP_MD_free(%struct.evp_md_st* noundef %mgf1md.2) #6
  br label %cleanup101

cleanup101.critedge:                              ; preds = %if.else
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5
  br label %cleanup101

cleanup101:                                       ; preds = %cleanup101.critedge, %if.then17, %entry, %if.end34, %err
  %retval.2 = phi i32 [ %ret.0, %err ], [ 0, %if.end34 ], [ 0, %entry ], [ 0, %if.then17 ], [ 0, %cleanup101.critedge ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  ret i32 %retval.2
}

declare i32 @ossl_rsa_pss_params_30_set_defaults(%struct.rsa_pss_params_30_st* noundef) local_unnamed_addr #2

declare i32 @OSSL_PARAM_get_utf8_ptr(%struct.ossl_param_st* noundef, i8** noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #3

declare i8* @ossl_rsa_mgf_nid2name(i32 noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @ossl_rsa_pss_params_30_set_hashalg(%struct.rsa_pss_params_30_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_rsa_oaeppss_md2nid(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare i32 @ossl_rsa_pss_params_30_set_maskgenhashalg(%struct.rsa_pss_params_30_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef, i32* noundef) local_unnamed_addr #2

declare i32 @ossl_rsa_pss_params_30_set_saltlen(%struct.rsa_pss_params_30_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsa_is_foreign(%struct.rsa_st* noundef %rsa) local_unnamed_addr #0 {
entry:
  %engine = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 4
  %0 = load %struct.engine_st*, %struct.engine_st** %engine, align 8, !tbaa !16
  %cmp.not = icmp eq %struct.engine_st* %0, null
  br i1 %cmp.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %call = tail call %struct.rsa_meth_st* @RSA_get_method(%struct.rsa_st* noundef nonnull %rsa) #6
  %call1 = tail call %struct.rsa_meth_st* @RSA_PKCS1_OpenSSL() #6
  %cmp2.not = icmp ne %struct.rsa_meth_st* %call, %call1
  %spec.select = zext i1 %cmp2.not to i32
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

declare %struct.rsa_meth_st* @RSA_get_method(%struct.rsa_st* noundef) local_unnamed_addr #2

declare %struct.rsa_meth_st* @RSA_PKCS1_OpenSSL() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.rsa_st* @ossl_rsa_dup(%struct.rsa_st* noundef %rsa, i32 noundef %selection) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_rsa_is_foreign(%struct.rsa_st* noundef %rsa) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup120

if.end:                                           ; preds = %entry
  %libctx = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 1
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !21
  %call1 = tail call %struct.rsa_st* @ossl_rsa_new_with_ctx(%struct.ossl_lib_ctx_st* noundef %0) #6
  %cmp = icmp eq %struct.rsa_st* %call1, null
  br i1 %cmp, label %cleanup120, label %if.end3

if.end3:                                          ; preds = %if.end
  %and = and i32 %selection, 3
  %cmp4.not = icmp eq i32 %and, 0
  br i1 %cmp4.not, label %if.end16, label %if.then5

if.then5:                                         ; preds = %if.end3
  %n = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %call1, i64 0, i32 5
  %n6 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 5
  %1 = load %struct.bignum_st*, %struct.bignum_st** %n6, align 8, !tbaa !22
  %call7 = tail call fastcc i32 @rsa_bn_dup_check(%struct.bignum_st** noundef nonnull %n, %struct.bignum_st* noundef %1) #7
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %if.end10

if.end10:                                         ; preds = %if.then5
  %e = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %call1, i64 0, i32 6
  %e11 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 6
  %2 = load %struct.bignum_st*, %struct.bignum_st** %e11, align 8, !tbaa !23
  %call12 = tail call fastcc i32 @rsa_bn_dup_check(%struct.bignum_st** noundef nonnull %e, %struct.bignum_st* noundef %2) #7
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %if.end16

if.end16:                                         ; preds = %if.end10, %if.end3
  %and17 = and i32 %selection, 1
  %cmp18.not = icmp eq i32 %and17, 0
  br i1 %cmp18.not, label %if.end50.thread, label %if.then19

if.end50.thread:                                  ; preds = %if.end16
  %version180 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 2
  %3 = load i32, i32* %version180, align 8, !tbaa !24
  %version51181 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %call1, i64 0, i32 2
  store i32 %3, i32* %version51181, align 8, !tbaa !24
  %flags182 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 18
  %4 = load i32, i32* %flags182, align 4, !tbaa !25
  %flags52183 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %call1, i64 0, i32 18
  store i32 %4, i32* %flags52183, align 4, !tbaa !25
  %pss_params184 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %call1, i64 0, i32 13
  %pss_params53185 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 13
  %5 = bitcast %struct.rsa_pss_params_30_st* %pss_params184 to i8*
  %6 = bitcast %struct.rsa_pss_params_30_st* %pss_params53185 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(20) %5, i8* noundef nonnull align 8 dereferenceable(20) %6, i64 20, i1 false), !tbaa.struct !26
  br label %if.end91

if.then19:                                        ; preds = %if.end16
  %d = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %call1, i64 0, i32 7
  %d20 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 7
  %7 = load %struct.bignum_st*, %struct.bignum_st** %d20, align 8, !tbaa !27
  %call21 = tail call fastcc i32 @rsa_bn_dup_check(%struct.bignum_st** noundef nonnull %d, %struct.bignum_st* noundef %7) #7
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err, label %if.end24

if.end24:                                         ; preds = %if.then19
  %p = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %call1, i64 0, i32 8
  %p25 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 8
  %8 = load %struct.bignum_st*, %struct.bignum_st** %p25, align 8, !tbaa !28
  %call26 = tail call fastcc i32 @rsa_bn_dup_check(%struct.bignum_st** noundef nonnull %p, %struct.bignum_st* noundef %8) #7
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %if.end29

if.end29:                                         ; preds = %if.end24
  %q = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %call1, i64 0, i32 9
  %q30 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 9
  %9 = load %struct.bignum_st*, %struct.bignum_st** %q30, align 8, !tbaa !29
  %call31 = tail call fastcc i32 @rsa_bn_dup_check(%struct.bignum_st** noundef nonnull %q, %struct.bignum_st* noundef %9) #7
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %if.end34

if.end34:                                         ; preds = %if.end29
  %dmp1 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %call1, i64 0, i32 10
  %dmp135 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 10
  %10 = load %struct.bignum_st*, %struct.bignum_st** %dmp135, align 8, !tbaa !30
  %call36 = tail call fastcc i32 @rsa_bn_dup_check(%struct.bignum_st** noundef nonnull %dmp1, %struct.bignum_st* noundef %10) #7
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %err, label %if.end39

if.end39:                                         ; preds = %if.end34
  %dmq1 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %call1, i64 0, i32 11
  %dmq140 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 11
  %11 = load %struct.bignum_st*, %struct.bignum_st** %dmq140, align 8, !tbaa !31
  %call41 = tail call fastcc i32 @rsa_bn_dup_check(%struct.bignum_st** noundef nonnull %dmq1, %struct.bignum_st* noundef %11) #7
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %err, label %if.end44

if.end44:                                         ; preds = %if.end39
  %iqmp = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %call1, i64 0, i32 12
  %iqmp45 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 12
  %12 = load %struct.bignum_st*, %struct.bignum_st** %iqmp45, align 8, !tbaa !32
  %call46 = tail call fastcc i32 @rsa_bn_dup_check(%struct.bignum_st** noundef nonnull %iqmp, %struct.bignum_st* noundef %12) #7
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %err, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end44
  %version = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 2
  %13 = load i32, i32* %version, align 8, !tbaa !24
  %version51 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %call1, i64 0, i32 2
  store i32 %13, i32* %version51, align 8, !tbaa !24
  %flags = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 18
  %14 = load i32, i32* %flags, align 4, !tbaa !25
  %flags52 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %call1, i64 0, i32 18
  store i32 %14, i32* %flags52, align 4, !tbaa !25
  %pss_params = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %call1, i64 0, i32 13
  %pss_params53 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 13
  %15 = bitcast %struct.rsa_pss_params_30_st* %pss_params to i8*
  %16 = bitcast %struct.rsa_pss_params_30_st* %pss_params53 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(20) %15, i8* noundef nonnull align 8 dereferenceable(20) %16, i64 20, i1 false), !tbaa.struct !26
  %prime_infos = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 15
  %17 = load %struct.stack_st_RSA_PRIME_INFO*, %struct.stack_st_RSA_PRIME_INFO** %prime_infos, align 8, !tbaa !33
  %call56 = tail call fastcc i32 @sk_RSA_PRIME_INFO_num(%struct.stack_st_RSA_PRIME_INFO* noundef %17) #7
  %cmp57 = icmp sgt i32 %call56, 0
  br i1 %cmp57, label %if.then58, label %if.end91

if.then58:                                        ; preds = %land.lhs.true
  %call59 = tail call fastcc %struct.stack_st_RSA_PRIME_INFO* @sk_RSA_PRIME_INFO_new_reserve(i32 noundef %call56) #7
  %prime_infos60 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %call1, i64 0, i32 15
  store %struct.stack_st_RSA_PRIME_INFO* %call59, %struct.stack_st_RSA_PRIME_INFO** %prime_infos60, align 8, !tbaa !33
  br label %for.body

for.cond:                                         ; preds = %if.end80
  %exitcond.not = icmp eq i32 %inc, %call56
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !34

for.body:                                         ; preds = %if.then58, %for.cond
  %i.0189 = phi i32 [ 0, %if.then58 ], [ %inc, %for.cond ]
  %call62 = tail call i8* @CRYPTO_zalloc(i64 noundef 40, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 399) #6
  %cmp63 = icmp eq i8* %call62, null
  br i1 %cmp63, label %if.then64, label %if.end65

if.then64:                                        ; preds = %for.body
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 400, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.ossl_rsa_dup, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786688, i8* noundef null) #6
  br label %err

if.end65:                                         ; preds = %for.body
  %18 = bitcast i8* %call62 to %struct.rsa_prime_info_st*
  %19 = load %struct.stack_st_RSA_PRIME_INFO*, %struct.stack_st_RSA_PRIME_INFO** %prime_infos60, align 8, !tbaa !33
  tail call fastcc void @sk_RSA_PRIME_INFO_push(%struct.stack_st_RSA_PRIME_INFO* noundef %19, %struct.rsa_prime_info_st* noundef nonnull %18) #7
  %20 = load %struct.stack_st_RSA_PRIME_INFO*, %struct.stack_st_RSA_PRIME_INFO** %prime_infos, align 8, !tbaa !33
  %call69 = tail call fastcc %struct.rsa_prime_info_st* @sk_RSA_PRIME_INFO_value(%struct.stack_st_RSA_PRIME_INFO* noundef %20, i32 noundef %i.0189) #7
  %r = bitcast i8* %call62 to %struct.bignum_st**
  %r70 = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call69, i64 0, i32 0
  %21 = load %struct.bignum_st*, %struct.bignum_st** %r70, align 8, !tbaa !35
  %call71 = tail call fastcc i32 @rsa_bn_dup_check(%struct.bignum_st** noundef nonnull %r, %struct.bignum_st* noundef %21) #7
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %err, label %if.end74

if.end74:                                         ; preds = %if.end65
  %d75 = getelementptr inbounds i8, i8* %call62, i64 8
  %22 = bitcast i8* %d75 to %struct.bignum_st**
  %d76 = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call69, i64 0, i32 1
  %23 = load %struct.bignum_st*, %struct.bignum_st** %d76, align 8, !tbaa !37
  %call77 = tail call fastcc i32 @rsa_bn_dup_check(%struct.bignum_st** noundef nonnull %22, %struct.bignum_st* noundef %23) #7
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %err, label %if.end80

if.end80:                                         ; preds = %if.end74
  %t = getelementptr inbounds i8, i8* %call62, i64 16
  %24 = bitcast i8* %t to %struct.bignum_st**
  %t81 = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call69, i64 0, i32 2
  %25 = load %struct.bignum_st*, %struct.bignum_st** %t81, align 8, !tbaa !38
  %call82 = tail call fastcc i32 @rsa_bn_dup_check(%struct.bignum_st** noundef nonnull %24, %struct.bignum_st* noundef %25) #7
  %tobool83.not = icmp eq i32 %call82, 0
  %inc = add nuw nsw i32 %i.0189, 1
  br i1 %tobool83.not, label %err, label %for.cond

for.end:                                          ; preds = %for.cond
  %call87 = tail call i32 @ossl_rsa_multip_calc_product(%struct.rsa_st* noundef nonnull %call1) #6
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %err, label %if.end91

if.end91:                                         ; preds = %if.end50.thread, %for.end, %land.lhs.true
  %pss = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 14
  %26 = load %struct.rsa_pss_params_st*, %struct.rsa_pss_params_st** %pss, align 8, !tbaa !39
  %cmp92.not = icmp eq %struct.rsa_pss_params_st* %26, null
  br i1 %cmp92.not, label %if.end114, label %if.then93

if.then93:                                        ; preds = %if.end91
  %call95 = tail call %struct.rsa_pss_params_st* @RSA_PSS_PARAMS_dup(%struct.rsa_pss_params_st* noundef nonnull %26) #6
  %pss96 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %call1, i64 0, i32 14
  store %struct.rsa_pss_params_st* %call95, %struct.rsa_pss_params_st** %pss96, align 8, !tbaa !39
  %27 = load %struct.rsa_pss_params_st*, %struct.rsa_pss_params_st** %pss, align 8, !tbaa !39
  %maskGenAlgorithm = getelementptr inbounds %struct.rsa_pss_params_st, %struct.rsa_pss_params_st* %27, i64 0, i32 1
  %28 = load %struct.X509_algor_st*, %struct.X509_algor_st** %maskGenAlgorithm, align 8, !tbaa !40
  %cmp98.not = icmp eq %struct.X509_algor_st* %28, null
  br i1 %cmp98.not, label %if.end114, label %land.lhs.true99

land.lhs.true99:                                  ; preds = %if.then93
  %maskGenAlgorithm101 = getelementptr inbounds %struct.rsa_pss_params_st, %struct.rsa_pss_params_st* %call95, i64 0, i32 1
  %29 = load %struct.X509_algor_st*, %struct.X509_algor_st** %maskGenAlgorithm101, align 8, !tbaa !40
  %cmp102 = icmp eq %struct.X509_algor_st* %29, null
  br i1 %cmp102, label %if.then103, label %if.end114

if.then103:                                       ; preds = %land.lhs.true99
  %call106 = tail call %struct.X509_algor_st* @ossl_x509_algor_mgf1_decode(%struct.X509_algor_st* noundef nonnull %28) #6
  %30 = load %struct.rsa_pss_params_st*, %struct.rsa_pss_params_st** %pss96, align 8, !tbaa !39
  %maskHash = getelementptr inbounds %struct.rsa_pss_params_st, %struct.rsa_pss_params_st* %30, i64 0, i32 4
  store %struct.X509_algor_st* %call106, %struct.X509_algor_st** %maskHash, align 8, !tbaa !42
  %cmp110 = icmp eq %struct.X509_algor_st* %call106, null
  br i1 %cmp110, label %err, label %if.end114

if.end114:                                        ; preds = %if.then93, %land.lhs.true99, %if.then103, %if.end91
  %ex_data = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %call1, i64 0, i32 16
  %ex_data115 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 16
  %call116 = tail call i32 @CRYPTO_dup_ex_data(i32 noundef 9, %struct.crypto_ex_data_st* noundef nonnull %ex_data, %struct.crypto_ex_data_st* noundef nonnull %ex_data115) #6
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %err, label %cleanup120

err:                                              ; preds = %if.end80, %if.end74, %if.end65, %if.then64, %if.end114, %if.then103, %for.end, %if.end44, %if.end39, %if.end34, %if.end29, %if.end24, %if.then19, %if.end10, %if.then5
  tail call void @RSA_free(%struct.rsa_st* noundef nonnull %call1) #6
  br label %cleanup120

cleanup120:                                       ; preds = %if.end114, %if.end, %entry, %err
  %retval.0 = phi %struct.rsa_st* [ null, %err ], [ null, %entry ], [ null, %if.end ], [ %call1, %if.end114 ]
  ret %struct.rsa_st* %retval.0
}

declare %struct.rsa_st* @ossl_rsa_new_with_ctx(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @rsa_bn_dup_check(%struct.bignum_st** nocapture noundef writeonly %out, %struct.bignum_st* noundef %f) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.bignum_st* %f, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull %f) #6
  store %struct.bignum_st* %call, %struct.bignum_st** %out, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_RSA_PRIME_INFO_num(%struct.stack_st_RSA_PRIME_INFO* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_RSA_PRIME_INFO* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_RSA_PRIME_INFO* @sk_RSA_PRIME_INFO_new_reserve(i32 noundef %n) unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_reserve(i32 (i8*, i8*)* noundef null, i32 noundef %n) #6
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_RSA_PRIME_INFO*
  ret %struct.stack_st_RSA_PRIME_INFO* %0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_RSA_PRIME_INFO_push(%struct.stack_st_RSA_PRIME_INFO* noundef %sk, %struct.rsa_prime_info_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_RSA_PRIME_INFO* %sk to %struct.stack_st*
  %1 = bitcast %struct.rsa_prime_info_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.rsa_prime_info_st* @sk_RSA_PRIME_INFO_value(%struct.stack_st_RSA_PRIME_INFO* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_RSA_PRIME_INFO* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #6
  %1 = bitcast i8* %call to %struct.rsa_prime_info_st*
  ret %struct.rsa_prime_info_st* %1
}

declare i32 @ossl_rsa_multip_calc_product(%struct.rsa_st* noundef) local_unnamed_addr #2

declare %struct.rsa_pss_params_st* @RSA_PSS_PARAMS_dup(%struct.rsa_pss_params_st* noundef) local_unnamed_addr #2

declare %struct.X509_algor_st* @ossl_x509_algor_mgf1_decode(%struct.X509_algor_st* noundef) local_unnamed_addr #2

declare i32 @CRYPTO_dup_ex_data(i32 noundef, %struct.crypto_ex_data_st* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #2

declare void @RSA_free(%struct.rsa_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.rsa_pss_params_st* @ossl_rsa_pss_decode(%struct.X509_algor_st* nocapture noundef readonly %alg) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @RSA_PSS_PARAMS_it() #6
  %parameter = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %alg, i64 0, i32 1
  %0 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter, align 8, !tbaa !43
  %call1 = tail call i8* @ASN1_TYPE_unpack_sequence(%struct.ASN1_ITEM_st* noundef %call, %struct.asn1_type_st* noundef %0) #6
  %1 = bitcast i8* %call1 to %struct.rsa_pss_params_st*
  %cmp = icmp eq i8* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %maskGenAlgorithm = getelementptr inbounds i8, i8* %call1, i64 8
  %2 = bitcast i8* %maskGenAlgorithm to %struct.X509_algor_st**
  %3 = load %struct.X509_algor_st*, %struct.X509_algor_st** %2, align 8, !tbaa !40
  %cmp2.not = icmp eq %struct.X509_algor_st* %3, null
  br i1 %cmp2.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  %call5 = tail call %struct.X509_algor_st* @ossl_x509_algor_mgf1_decode(%struct.X509_algor_st* noundef nonnull %3) #6
  %maskHash = getelementptr inbounds i8, i8* %call1, i64 32
  %4 = bitcast i8* %maskHash to %struct.X509_algor_st**
  store %struct.X509_algor_st* %call5, %struct.X509_algor_st** %4, align 8, !tbaa !42
  %cmp7 = icmp eq %struct.X509_algor_st* %call5, null
  br i1 %cmp7, label %if.then8, label %cleanup

if.then8:                                         ; preds = %if.then3
  tail call void @RSA_PSS_PARAMS_free(%struct.rsa_pss_params_st* noundef nonnull %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3, %entry, %if.then8
  %retval.0 = phi %struct.rsa_pss_params_st* [ null, %if.then8 ], [ null, %entry ], [ %1, %if.then3 ], [ %1, %if.end ]
  ret %struct.rsa_pss_params_st* %retval.0
}

declare i8* @ASN1_TYPE_unpack_sequence(%struct.ASN1_ITEM_st* noundef, %struct.asn1_type_st* noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @RSA_PSS_PARAMS_it() local_unnamed_addr #2

declare void @RSA_PSS_PARAMS_free(%struct.rsa_pss_params_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsa_pss_get_param_unverified(%struct.rsa_pss_params_st* noundef readonly %pss, %struct.evp_md_st** nocapture noundef writeonly %pmd, %struct.evp_md_st** nocapture noundef writeonly %pmgf1md, i32* nocapture noundef writeonly %psaltlen, i32* nocapture noundef writeonly %ptrailerField) local_unnamed_addr #0 {
entry:
  %pss_params = alloca %struct.rsa_pss_params_30_st, align 4
  %0 = bitcast %struct.rsa_pss_params_30_st* %pss_params to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %0) #5
  %call = call i32 @ossl_rsa_pss_params_30_set_defaults(%struct.rsa_pss_params_30_st* noundef nonnull %pss_params) #6
  %cmp = icmp eq %struct.rsa_pss_params_st* %pss, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %hashAlgorithm = getelementptr inbounds %struct.rsa_pss_params_st, %struct.rsa_pss_params_st* %pss, i64 0, i32 0
  %1 = load %struct.X509_algor_st*, %struct.X509_algor_st** %hashAlgorithm, align 8, !tbaa !45
  %call1 = call %struct.evp_md_st* @ossl_x509_algor_get_md(%struct.X509_algor_st* noundef %1) #6
  store %struct.evp_md_st* %call1, %struct.evp_md_st** %pmd, align 8, !tbaa !4
  %cmp2 = icmp eq %struct.evp_md_st* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %maskHash = getelementptr inbounds %struct.rsa_pss_params_st, %struct.rsa_pss_params_st* %pss, i64 0, i32 4
  %2 = load %struct.X509_algor_st*, %struct.X509_algor_st** %maskHash, align 8, !tbaa !42
  %call5 = call %struct.evp_md_st* @ossl_x509_algor_get_md(%struct.X509_algor_st* noundef %2) #6
  store %struct.evp_md_st* %call5, %struct.evp_md_st** %pmgf1md, align 8, !tbaa !4
  %cmp6 = icmp eq %struct.evp_md_st* %call5, null
  br i1 %cmp6, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end4
  %saltLength = getelementptr inbounds %struct.rsa_pss_params_st, %struct.rsa_pss_params_st* %pss, i64 0, i32 2
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %saltLength, align 8, !tbaa !46
  %tobool.not = icmp eq %struct.asn1_string_st* %3, null
  br i1 %tobool.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end8
  %call11 = call i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef nonnull %3) #6
  %conv = trunc i64 %call11 to i32
  br label %if.end13

if.else:                                          ; preds = %if.end8
  %call12 = call i32 @ossl_rsa_pss_params_30_saltlen(%struct.rsa_pss_params_30_st* noundef nonnull %pss_params) #6
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then9
  %storemerge = phi i32 [ %call12, %if.else ], [ %conv, %if.then9 ]
  store i32 %storemerge, i32* %psaltlen, align 4, !tbaa !15
  %trailerField = getelementptr inbounds %struct.rsa_pss_params_st, %struct.rsa_pss_params_st* %pss, i64 0, i32 3
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %trailerField, align 8, !tbaa !47
  %tobool14.not = icmp eq %struct.asn1_string_st* %4, null
  br i1 %tobool14.not, label %if.else19, label %if.then15

if.then15:                                        ; preds = %if.end13
  %call17 = call i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef nonnull %4) #6
  %conv18 = trunc i64 %call17 to i32
  br label %if.end21

if.else19:                                        ; preds = %if.end13
  %call20 = call i32 @ossl_rsa_pss_params_30_trailerfield(%struct.rsa_pss_params_30_st* noundef nonnull %pss_params) #6
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %if.then15
  %storemerge33 = phi i32 [ %call20, %if.else19 ], [ %conv18, %if.then15 ]
  store i32 %storemerge33, i32* %ptrailerField, align 4, !tbaa !15
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end, %entry, %if.end21
  %retval.0 = phi i32 [ 1, %if.end21 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end4 ]
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %0) #5
  ret i32 %retval.0
}

declare %struct.evp_md_st* @ossl_x509_algor_get_md(%struct.X509_algor_st* noundef) local_unnamed_addr #2

declare i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @ossl_rsa_pss_params_30_trailerfield(%struct.rsa_pss_params_30_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsa_param_decode(%struct.rsa_st* noundef %rsa, %struct.X509_algor_st* noundef %alg) local_unnamed_addr #0 {
entry:
  %algoid = alloca %struct.asn1_object_st*, align 8
  %algp = alloca i8*, align 8
  %algptype = alloca i32, align 4
  %0 = bitcast %struct.asn1_object_st** %algoid to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %1 = bitcast i8** %algp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  %2 = bitcast i32* %algptype to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #5
  call void @X509_ALGOR_get0(%struct.asn1_object_st** noundef nonnull %algoid, i32* noundef nonnull %algptype, i8** noundef nonnull %algp, %struct.X509_algor_st* noundef %alg) #6
  %3 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algoid, align 8, !tbaa !4
  %call = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %3) #6
  %cmp.not = icmp eq i32 %call, 912
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %algptype, align 4, !tbaa !15
  switch i32 %4, label %if.then5 [
    i32 -1, label %cleanup
    i32 16, label %if.end6
  ]

if.then5:                                         ; preds = %if.end
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 542, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ossl_rsa_param_decode, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 149, i8* noundef null) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call %struct.rsa_pss_params_st* @ossl_rsa_pss_decode(%struct.X509_algor_st* noundef %alg) #7
  %cmp8 = icmp eq %struct.rsa_pss_params_st* %call7, null
  br i1 %cmp8, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %call9 = call i32 @ossl_rsa_set0_pss_params(%struct.rsa_st* noundef %rsa, %struct.rsa_pss_params_st* noundef nonnull %call7) #6
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false, %if.end6
  call void @RSA_PSS_PARAMS_free(%struct.rsa_pss_params_st* noundef %call7) #6
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %call12 = call fastcc i32 @ossl_rsa_sync_to_pss_params_30(%struct.rsa_st* noundef %rsa) #7
  %tobool13.not = icmp ne i32 %call12, 0
  %. = zext i1 %tobool13.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end, %entry, %if.then10, %if.then5
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 0, %if.then10 ], [ 1, %entry ], [ 1, %if.end ], [ %., %if.end11 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

declare void @X509_ALGOR_get0(%struct.asn1_object_st** noundef, i32* noundef, i8** noundef, %struct.X509_algor_st* noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare i32 @ossl_rsa_set0_pss_params(%struct.rsa_st* noundef, %struct.rsa_pss_params_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ossl_rsa_sync_to_pss_params_30(%struct.rsa_st* noundef %rsa) unnamed_addr #0 {
entry:
  %md = alloca %struct.evp_md_st*, align 8
  %mgf1md = alloca %struct.evp_md_st*, align 8
  %saltlen = alloca i32, align 4
  %trailerField = alloca i32, align 4
  %pss_params = alloca %struct.rsa_pss_params_30_st, align 4
  %cmp.not = icmp eq %struct.rsa_st* %rsa, null
  br i1 %cmp.not, label %cleanup31, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call %struct.rsa_pss_params_st* @RSA_get0_pss_params(%struct.rsa_st* noundef nonnull %rsa) #6
  %cmp1.not = icmp eq %struct.rsa_pss_params_st* %call, null
  br i1 %cmp1.not, label %cleanup31, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %call3 = tail call %struct.rsa_pss_params_30_st* @ossl_rsa_get0_pss_params_30(%struct.rsa_st* noundef nonnull %rsa) #6
  %cmp4.not = icmp eq %struct.rsa_pss_params_30_st* %call3, null
  br i1 %cmp4.not, label %cleanup31, label %if.then

if.then:                                          ; preds = %land.lhs.true2
  %0 = bitcast %struct.evp_md_st** %md to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.evp_md_st* null, %struct.evp_md_st** %md, align 8, !tbaa !4
  %1 = bitcast %struct.evp_md_st** %mgf1md to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store %struct.evp_md_st* null, %struct.evp_md_st** %mgf1md, align 8, !tbaa !4
  %2 = bitcast i32* %saltlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #5
  %3 = bitcast i32* %trailerField to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #5
  %4 = bitcast %struct.rsa_pss_params_30_st* %pss_params to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %4) #5
  %call5 = call i32 @ossl_rsa_pss_get_param_unverified(%struct.rsa_pss_params_st* noundef nonnull %call, %struct.evp_md_st** noundef nonnull %md, %struct.evp_md_st** noundef nonnull %mgf1md, i32* noundef nonnull %saltlen, i32* noundef nonnull %trailerField) #7
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %5 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !4
  %call7 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %5) #6
  %6 = load %struct.evp_md_st*, %struct.evp_md_st** %mgf1md, align 8, !tbaa !4
  %call8 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %6) #6
  %call9 = call i32 @ossl_rsa_pss_params_30_set_defaults(%struct.rsa_pss_params_30_st* noundef nonnull %pss_params) #6
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call11 = call i32 @ossl_rsa_pss_params_30_set_hashalg(%struct.rsa_pss_params_30_st* noundef nonnull %pss_params, i32 noundef %call7) #6
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %call14 = call i32 @ossl_rsa_pss_params_30_set_maskgenhashalg(%struct.rsa_pss_params_30_st* noundef nonnull %pss_params, i32 noundef %call8) #6
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %7 = load i32, i32* %saltlen, align 4, !tbaa !15
  %call17 = call i32 @ossl_rsa_pss_params_30_set_saltlen(%struct.rsa_pss_params_30_st* noundef nonnull %pss_params, i32 noundef %7) #6
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %cleanup, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %8 = load i32, i32* %trailerField, align 4, !tbaa !15
  %call20 = call i32 @ossl_rsa_pss_params_30_set_trailerfield(%struct.rsa_pss_params_30_st* noundef nonnull %pss_params, i32 noundef %8) #6
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup, label %if.end23

if.end23:                                         ; preds = %lor.lhs.false19
  %9 = bitcast %struct.rsa_pss_params_30_st* %call3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(20) %9, i8* noundef nonnull align 4 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !26
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %4) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  br label %cleanup31

cleanup:                                          ; preds = %if.end, %lor.lhs.false, %lor.lhs.false13, %lor.lhs.false16, %lor.lhs.false19, %if.then
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %4) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  br label %cleanup31

cleanup31:                                        ; preds = %entry, %land.lhs.true, %land.lhs.true2, %if.end23, %cleanup
  %retval.1 = phi i32 [ 0, %cleanup ], [ 1, %if.end23 ], [ 1, %land.lhs.true2 ], [ 1, %land.lhs.true ], [ 1, %entry ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define %struct.rsa_st* @ossl_rsa_key_from_pkcs8(%struct.pkcs8_priv_key_info_st* noundef %p8inf, %struct.ossl_lib_ctx_st* nocapture noundef readnone %libctx, i8* nocapture noundef readnone %propq) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %pklen = alloca i32, align 4
  %alg = alloca %struct.X509_algor_st*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %1 = bitcast i32* %pklen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #5
  %2 = bitcast %struct.X509_algor_st** %alg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  %call = call i32 @PKCS8_pkey_get0(%struct.asn1_object_st** noundef null, i8** noundef nonnull %p, i32* noundef nonnull %pklen, %struct.X509_algor_st** noundef nonnull %alg, %struct.pkcs8_priv_key_info_st* noundef %p8inf) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %pklen, align 4, !tbaa !15
  %conv = sext i32 %3 to i64
  %call1 = call %struct.rsa_st* @d2i_RSAPrivateKey(%struct.rsa_st** noundef null, i8** noundef nonnull %p, i64 noundef %conv) #6
  %cmp = icmp eq %struct.rsa_st* %call1, null
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 567, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ossl_rsa_key_from_pkcs8, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 524292, i8* noundef null) #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = load %struct.X509_algor_st*, %struct.X509_algor_st** %alg, align 8, !tbaa !4
  %call5 = call i32 @ossl_rsa_param_decode(%struct.rsa_st* noundef nonnull %call1, %struct.X509_algor_st* noundef %4) #7
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @RSA_free(%struct.rsa_st* noundef nonnull %call1) #6
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @RSA_clear_flags(%struct.rsa_st* noundef nonnull %call1, i32 noundef 61440) #6
  %5 = load %struct.X509_algor_st*, %struct.X509_algor_st** %alg, align 8, !tbaa !4
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %5, i64 0, i32 0
  %6 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !48
  %call9 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %6) #6
  switch i32 %call9, label %cleanup [
    i32 6, label %sw.bb
    i32 912, label %sw.bb10
  ]

sw.bb:                                            ; preds = %if.end8
  call void @RSA_set_flags(%struct.rsa_st* noundef nonnull %call1, i32 noundef 0) #6
  br label %cleanup

sw.bb10:                                          ; preds = %if.end8
  call void @RSA_set_flags(%struct.rsa_st* noundef nonnull %call1, i32 noundef 4096) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %sw.bb10, %if.end8, %entry, %if.then7, %if.then3
  %retval.0 = phi %struct.rsa_st* [ null, %if.then3 ], [ null, %if.then7 ], [ null, %entry ], [ %call1, %if.end8 ], [ %call1, %sw.bb10 ], [ %call1, %sw.bb ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret %struct.rsa_st* %retval.0
}

declare i32 @PKCS8_pkey_get0(%struct.asn1_object_st** noundef, i8** noundef, i32* noundef, %struct.X509_algor_st** noundef, %struct.pkcs8_priv_key_info_st* noundef) local_unnamed_addr #2

declare %struct.rsa_st* @d2i_RSAPrivateKey(%struct.rsa_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare void @RSA_clear_flags(%struct.rsa_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @RSA_set_flags(%struct.rsa_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_BIGNUM_push(%struct.stack_st_BIGNUM* noundef %sk, %struct.bignum_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_BIGNUM* %sk to %struct.stack_st*
  %1 = bitcast %struct.bignum_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #6
  ret i32 %call
}

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef) local_unnamed_addr #2

declare %struct.stack_st* @OPENSSL_sk_new_reserve(i32 (i8*, i8*)* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.rsa_pss_params_st* @RSA_get0_pss_params(%struct.rsa_st* noundef) local_unnamed_addr #2

declare %struct.rsa_pss_params_30_st* @ossl_rsa_get0_pss_params_30(%struct.rsa_st* noundef) local_unnamed_addr #2

declare i32 @EVP_MD_get_type(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare i32 @ossl_rsa_pss_params_30_set_trailerfield(%struct.rsa_pss_params_30_st* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!11, !12, i64 8}
!11 = !{!"ossl_param_st", !5, i64 0, !12, i64 8, !5, i64 16, !13, i64 24, !13, i64 32}
!12 = !{!"int", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!11, !5, i64 16}
!15 = !{!12, !12, i64 0}
!16 = !{!17, !5, i64 32}
!17 = !{!"rsa_st", !12, i64 0, !5, i64 8, !12, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !18, i64 104, !5, i64 128, !5, i64 136, !20, i64 144, !6, i64 160, !12, i64 164, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !12, i64 216}
!18 = !{!"rsa_pss_params_30_st", !12, i64 0, !19, i64 4, !12, i64 12, !12, i64 16}
!19 = !{!"", !12, i64 0, !12, i64 4}
!20 = !{!"crypto_ex_data_st", !5, i64 0, !5, i64 8}
!21 = !{!17, !5, i64 8}
!22 = !{!17, !5, i64 40}
!23 = !{!17, !5, i64 48}
!24 = !{!17, !12, i64 16}
!25 = !{!17, !12, i64 164}
!26 = !{i64 0, i64 4, !15, i64 4, i64 4, !15, i64 8, i64 4, !15, i64 12, i64 4, !15, i64 16, i64 4, !15}
!27 = !{!17, !5, i64 56}
!28 = !{!17, !5, i64 64}
!29 = !{!17, !5, i64 72}
!30 = !{!17, !5, i64 80}
!31 = !{!17, !5, i64 88}
!32 = !{!17, !5, i64 96}
!33 = !{!17, !5, i64 136}
!34 = distinct !{!34, !9}
!35 = !{!36, !5, i64 0}
!36 = !{!"rsa_prime_info_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32}
!37 = !{!36, !5, i64 8}
!38 = !{!36, !5, i64 16}
!39 = !{!17, !5, i64 128}
!40 = !{!41, !5, i64 8}
!41 = !{!"rsa_pss_params_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32}
!42 = !{!41, !5, i64 32}
!43 = !{!44, !5, i64 8}
!44 = !{!"X509_algor_st", !5, i64 0, !5, i64 8}
!45 = !{!41, !5, i64 0}
!46 = !{!41, !5, i64 16}
!47 = !{!41, !5, i64 24}
!48 = !{!44, !5, i64 0}
