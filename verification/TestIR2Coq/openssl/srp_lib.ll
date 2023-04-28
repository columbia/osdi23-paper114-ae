; ModuleID = 'crypto/srp/srp_lib.c'
source_filename = "crypto/srp/srp_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SRP_gN_st = type { i8*, %struct.bignum_st*, %struct.bignum_st* }
%struct.bignum_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_md_st = type opaque
%struct.engine_st = type opaque
%struct.bignum_ctx = type opaque
%struct.evp_md_ctx_st = type opaque

@.str = private unnamed_addr constant [21 x i8] c"crypto/srp/srp_lib.c\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@knowngN = internal global [7 x %struct.SRP_gN_st] [%struct.SRP_gN_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), %struct.bignum_st* @ossl_bn_generator_19, %struct.bignum_st* @ossl_bn_group_8192 }, %struct.SRP_gN_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), %struct.bignum_st* @ossl_bn_generator_5, %struct.bignum_st* @ossl_bn_group_6144 }, %struct.SRP_gN_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), %struct.bignum_st* @ossl_bn_generator_5, %struct.bignum_st* @ossl_bn_group_4096 }, %struct.SRP_gN_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), %struct.bignum_st* @ossl_bn_generator_5, %struct.bignum_st* @ossl_bn_group_3072 }, %struct.SRP_gN_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), %struct.bignum_st* @ossl_bn_generator_2, %struct.bignum_st* @ossl_bn_group_2048 }, %struct.SRP_gN_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), %struct.bignum_st* @ossl_bn_generator_2, %struct.bignum_st* @ossl_bn_group_1536 }, %struct.SRP_gN_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), %struct.bignum_st* @ossl_bn_generator_2, %struct.bignum_st* @ossl_bn_group_1024 }], align 16
@.str.3 = private unnamed_addr constant [5 x i8] c"8192\00", align 1
@ossl_bn_generator_19 = external constant %struct.bignum_st, align 1
@ossl_bn_group_8192 = external constant %struct.bignum_st, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"6144\00", align 1
@ossl_bn_generator_5 = external constant %struct.bignum_st, align 1
@ossl_bn_group_6144 = external constant %struct.bignum_st, align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"4096\00", align 1
@ossl_bn_group_4096 = external constant %struct.bignum_st, align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"3072\00", align 1
@ossl_bn_group_3072 = external constant %struct.bignum_st, align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"2048\00", align 1
@ossl_bn_generator_2 = external constant %struct.bignum_st, align 1
@ossl_bn_group_2048 = external constant %struct.bignum_st, align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"1536\00", align 1
@ossl_bn_group_1536 = external constant %struct.bignum_st, align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"1024\00", align 1
@ossl_bn_group_1024 = external constant %struct.bignum_st, align 1

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_st* @SRP_Calc_u_ex(%struct.bignum_st* noundef %A, %struct.bignum_st* noundef %B, %struct.bignum_st* noundef %N, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.bignum_st* @srp_Calc_xy(%struct.bignum_st* noundef %A, %struct.bignum_st* noundef %B, %struct.bignum_st* noundef %N, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #5
  ret %struct.bignum_st* %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.bignum_st* @srp_Calc_xy(%struct.bignum_st* noundef %x, %struct.bignum_st* noundef %y, %struct.bignum_st* noundef %N, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) unnamed_addr #0 {
entry:
  %digest = alloca [20 x i8], align 16
  %0 = getelementptr inbounds [20 x i8], [20 x i8]* %digest, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %0) #6
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %N) #7
  %add = add nsw i32 %call, 7
  %div = sdiv i32 %add, 8
  %call1 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* noundef %propq) #7
  %cmp = icmp eq %struct.evp_md_st* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp2.not = icmp eq %struct.bignum_st* %x, %N
  br i1 %cmp2.not, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef %x, %struct.bignum_st* noundef %N) #7
  %cmp4 = icmp sgt i32 %call3, -1
  br i1 %cmp4, label %err, label %if.end6

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %cmp7.not = icmp eq %struct.bignum_st* %y, %N
  br i1 %cmp7.not, label %if.end12, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %if.end6
  %call9 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef %y, %struct.bignum_st* noundef %N) #7
  %cmp10 = icmp sgt i32 %call9, -1
  br i1 %cmp10, label %err, label %if.end12

if.end12:                                         ; preds = %land.lhs.true8, %if.end6
  %mul = shl nsw i32 %div, 1
  %conv = sext i32 %mul to i64
  %call13 = tail call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 42) #7
  %cmp14 = icmp eq i8* %call13, null
  br i1 %cmp14, label %err, label %if.end17

if.end17:                                         ; preds = %if.end12
  %call18 = tail call i32 @BN_bn2binpad(%struct.bignum_st* noundef %x, i8* noundef nonnull %call13, i32 noundef %div) #7
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end17
  %idx.ext = sext i32 %div to i64
  %add.ptr = getelementptr inbounds i8, i8* %call13, i64 %idx.ext
  %call21 = tail call i32 @BN_bn2binpad(%struct.bignum_st* noundef %y, i8* noundef nonnull %add.ptr, i32 noundef %div) #7
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %err, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false
  %call27 = call i32 @EVP_Digest(i8* noundef nonnull %call13, i64 noundef %conv, i8* noundef nonnull %0, i32* noundef null, %struct.evp_md_st* noundef nonnull %call1, %struct.engine_st* noundef null) #7
  %tobool.not = icmp eq i32 %call27, 0
  br i1 %tobool.not, label %err, label %if.end29

if.end29:                                         ; preds = %lor.lhs.false24
  %call31 = call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %0, i32 noundef 20, %struct.bignum_st* noundef null) #7
  br label %err

err:                                              ; preds = %if.end17, %lor.lhs.false, %lor.lhs.false24, %if.end12, %land.lhs.true8, %land.lhs.true, %if.end29
  %tmp.0 = phi i8* [ null, %land.lhs.true ], [ null, %land.lhs.true8 ], [ null, %if.end12 ], [ %call13, %if.end17 ], [ %call13, %lor.lhs.false ], [ %call13, %if.end29 ], [ %call13, %lor.lhs.false24 ]
  %res.0 = phi %struct.bignum_st* [ null, %land.lhs.true ], [ null, %land.lhs.true8 ], [ null, %if.end12 ], [ null, %if.end17 ], [ null, %lor.lhs.false ], [ %call31, %if.end29 ], [ null, %lor.lhs.false24 ]
  call void @EVP_MD_free(%struct.evp_md_st* noundef nonnull %call1) #7
  call void @CRYPTO_free(i8* noundef %tmp.0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 51) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %err
  %retval.0 = phi %struct.bignum_st* [ %res.0, %err ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %0) #6
  ret %struct.bignum_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_st* @SRP_Calc_u(%struct.bignum_st* noundef %A, %struct.bignum_st* noundef %B, %struct.bignum_st* noundef %N) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.bignum_st* @srp_Calc_xy(%struct.bignum_st* noundef %A, %struct.bignum_st* noundef %B, %struct.bignum_st* noundef %N, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #5
  ret %struct.bignum_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_st* @SRP_Calc_server_key(%struct.bignum_st* noundef %A, %struct.bignum_st* noundef %v, %struct.bignum_st* noundef %u, %struct.bignum_st* noundef %b, %struct.bignum_st* noundef %N) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.bignum_st* %u, null
  %cmp1 = icmp eq %struct.bignum_st* %A, null
  %or.cond = or i1 %cmp1, %cmp
  %cmp3 = icmp eq %struct.bignum_st* %v, null
  %or.cond29 = or i1 %cmp3, %or.cond
  %cmp5 = icmp eq %struct.bignum_st* %b, null
  %or.cond30 = or i1 %cmp5, %or.cond29
  %cmp7 = icmp eq %struct.bignum_st* %N, null
  %or.cond31 = or i1 %cmp7, %or.cond30
  br i1 %or.cond31, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.bignum_ctx* @BN_CTX_new() #7
  %cmp8 = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp8, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end
  %call10 = tail call %struct.bignum_st* @BN_new() #7
  %cmp11 = icmp eq %struct.bignum_st* %call10, null
  br i1 %cmp11, label %err, label %if.end13

if.end13:                                         ; preds = %lor.lhs.false9
  %call14 = tail call i32 @BN_mod_exp(%struct.bignum_st* noundef nonnull %call10, %struct.bignum_st* noundef nonnull %v, %struct.bignum_st* noundef nonnull %u, %struct.bignum_st* noundef nonnull %N, %struct.bignum_ctx* noundef nonnull %call) #7
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %err, label %if.end16

if.end16:                                         ; preds = %if.end13
  %call17 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef nonnull %call10, %struct.bignum_st* noundef nonnull %A, %struct.bignum_st* noundef nonnull %call10, %struct.bignum_st* noundef nonnull %N, %struct.bignum_ctx* noundef nonnull %call) #7
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %if.end20

if.end20:                                         ; preds = %if.end16
  %call21 = tail call %struct.bignum_st* @BN_new() #7
  %cmp22.not = icmp eq %struct.bignum_st* %call21, null
  br i1 %cmp22.not, label %err, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end20
  %call23 = tail call i32 @BN_mod_exp(%struct.bignum_st* noundef nonnull %call21, %struct.bignum_st* noundef nonnull %call10, %struct.bignum_st* noundef nonnull %b, %struct.bignum_st* noundef nonnull %N, %struct.bignum_ctx* noundef nonnull %call) #7
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %err

if.then25:                                        ; preds = %land.lhs.true
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call21) #7
  br label %err

err:                                              ; preds = %if.end20, %land.lhs.true, %if.then25, %if.end16, %if.end13, %if.end, %lor.lhs.false9
  %tmp.0 = phi %struct.bignum_st* [ null, %if.end ], [ null, %lor.lhs.false9 ], [ %call10, %land.lhs.true ], [ %call10, %if.then25 ], [ %call10, %if.end20 ], [ %call10, %if.end16 ], [ %call10, %if.end13 ]
  %S.0 = phi %struct.bignum_st* [ null, %if.end ], [ null, %lor.lhs.false9 ], [ %call21, %land.lhs.true ], [ null, %if.then25 ], [ null, %if.end20 ], [ null, %if.end16 ], [ null, %if.end13 ]
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %call) #7
  tail call void @BN_clear_free(%struct.bignum_st* noundef %tmp.0) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %err
  %retval.0 = phi %struct.bignum_st* [ %S.0, %err ], [ null, %entry ]
  ret %struct.bignum_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.bignum_ctx* @BN_CTX_new() local_unnamed_addr #2

declare %struct.bignum_st* @BN_new() local_unnamed_addr #2

declare i32 @BN_mod_exp(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_mod_mul(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare void @BN_clear_free(%struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_st* @SRP_Calc_B_ex(%struct.bignum_st* noundef %b, %struct.bignum_st* noundef %N, %struct.bignum_st* noundef %g, %struct.bignum_st* noundef %v, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.bignum_st* %b, null
  %cmp1 = icmp eq %struct.bignum_st* %N, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq %struct.bignum_st* %g, null
  %or.cond34 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq %struct.bignum_st* %v, null
  %or.cond35 = or i1 %or.cond34, %cmp5
  br i1 %or.cond35, label %cleanup, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %entry
  %call = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx) #7
  %cmp7 = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp7, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false6
  %call8 = tail call %struct.bignum_st* @BN_new() #7
  %cmp9 = icmp eq %struct.bignum_st* %call8, null
  br i1 %cmp9, label %err, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %if.end
  %call11 = tail call %struct.bignum_st* @BN_new() #7
  %cmp12 = icmp eq %struct.bignum_st* %call11, null
  br i1 %cmp12, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %call14 = tail call %struct.bignum_st* @BN_new() #7
  %cmp15 = icmp eq %struct.bignum_st* %call14, null
  br i1 %cmp15, label %err, label %if.end17

if.end17:                                         ; preds = %lor.lhs.false13
  %call18 = tail call i32 @BN_mod_exp(%struct.bignum_st* noundef nonnull %call11, %struct.bignum_st* noundef nonnull %g, %struct.bignum_st* noundef nonnull %b, %struct.bignum_st* noundef nonnull %N, %struct.bignum_ctx* noundef nonnull %call) #7
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %if.then28, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.end17
  %call20 = tail call fastcc %struct.bignum_st* @srp_Calc_k(%struct.bignum_st* noundef nonnull %N, %struct.bignum_st* noundef nonnull %g, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #5
  %cmp21 = icmp eq %struct.bignum_st* %call20, null
  br i1 %cmp21, label %if.then28, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false19
  %call23 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef nonnull %call8, %struct.bignum_st* noundef nonnull %v, %struct.bignum_st* noundef nonnull %call20, %struct.bignum_st* noundef nonnull %N, %struct.bignum_ctx* noundef nonnull %call) #7
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then28, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %call26 = tail call i32 @BN_mod_add(%struct.bignum_st* noundef nonnull %call14, %struct.bignum_st* noundef nonnull %call11, %struct.bignum_st* noundef nonnull %call8, %struct.bignum_st* noundef nonnull %N, %struct.bignum_ctx* noundef nonnull %call) #7
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %err

if.then28:                                        ; preds = %lor.lhs.false25, %lor.lhs.false22, %lor.lhs.false19, %if.end17
  %k.0 = phi %struct.bignum_st* [ null, %lor.lhs.false19 ], [ %call20, %lor.lhs.false25 ], [ %call20, %lor.lhs.false22 ], [ null, %if.end17 ]
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call14) #7
  br label %err

err:                                              ; preds = %lor.lhs.false25, %if.then28, %if.end, %lor.lhs.false10, %lor.lhs.false13
  %gb.0 = phi %struct.bignum_st* [ null, %if.end ], [ null, %lor.lhs.false10 ], [ %call11, %lor.lhs.false13 ], [ %call11, %if.then28 ], [ %call11, %lor.lhs.false25 ]
  %B.0 = phi %struct.bignum_st* [ null, %if.end ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false13 ], [ null, %if.then28 ], [ %call14, %lor.lhs.false25 ]
  %k.1 = phi %struct.bignum_st* [ null, %if.end ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false13 ], [ %k.0, %if.then28 ], [ %call20, %lor.lhs.false25 ]
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef nonnull %call) #7
  tail call void @BN_clear_free(%struct.bignum_st* noundef %call8) #7
  tail call void @BN_clear_free(%struct.bignum_st* noundef %gb.0) #7
  tail call void @BN_free(%struct.bignum_st* noundef %k.1) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false6, %err
  %retval.0 = phi %struct.bignum_st* [ %B.0, %err ], [ null, %lor.lhs.false6 ], [ null, %entry ]
  ret %struct.bignum_st* %retval.0
}

declare %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.bignum_st* @srp_Calc_k(%struct.bignum_st* noundef %N, %struct.bignum_st* noundef %g, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.bignum_st* @srp_Calc_xy(%struct.bignum_st* noundef %N, %struct.bignum_st* noundef %g, %struct.bignum_st* noundef %N, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #5
  ret %struct.bignum_st* %call
}

declare i32 @BN_mod_add(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_st* @SRP_Calc_B(%struct.bignum_st* noundef %b, %struct.bignum_st* noundef %N, %struct.bignum_st* noundef %g, %struct.bignum_st* noundef %v) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bignum_st* @SRP_Calc_B_ex(%struct.bignum_st* noundef %b, %struct.bignum_st* noundef %N, %struct.bignum_st* noundef %g, %struct.bignum_st* noundef %v, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #5
  ret %struct.bignum_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_st* @SRP_Calc_x_ex(%struct.bignum_st* noundef %s, i8* noundef %user, i8* noundef %pass, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %dig = alloca [20 x i8], align 16
  %0 = getelementptr inbounds [20 x i8], [20 x i8]* %dig, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %0) #6
  %cmp = icmp eq %struct.bignum_st* %s, null
  %cmp1 = icmp eq i8* %user, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i8* %pass, null
  %or.cond66 = or i1 %or.cond, %cmp3
  br i1 %or.cond66, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #7
  %cmp4 = icmp eq %struct.evp_md_ctx_st* %call, null
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %s) #7
  %add = add nsw i32 %call7, 7
  %div = sdiv i32 %add, 8
  %conv = sext i32 %div to i64
  %call8 = tail call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 159) #7
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %err, label %if.end12

if.end12:                                         ; preds = %if.end6
  %call13 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* noundef %propq) #7
  %cmp14 = icmp eq %struct.evp_md_st* %call13, null
  br i1 %cmp14, label %err, label %if.end17

if.end17:                                         ; preds = %if.end12
  %call18 = tail call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call, %struct.evp_md_st* noundef nonnull %call13, %struct.engine_st* noundef null) #7
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.end17
  %call20 = tail call i64 @strlen(i8* noundef nonnull %user) #8
  %call21 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef nonnull %user, i64 noundef %call20) #7
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false19
  %call24 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 noundef 1) #7
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false23
  %call27 = tail call i64 @strlen(i8* noundef nonnull %pass) #8
  %call28 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef nonnull %pass, i64 noundef %call27) #7
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %err, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false26
  %call31 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef nonnull %0, i32* noundef null) #7
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false30
  %call34 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call, %struct.evp_md_st* noundef nonnull %call13, %struct.engine_st* noundef null) #7
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err, label %if.end37

if.end37:                                         ; preds = %lor.lhs.false33
  %call38 = call i32 @BN_bn2bin(%struct.bignum_st* noundef nonnull %s, i8* noundef nonnull %call8) #7
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %err, label %if.end42

if.end42:                                         ; preds = %if.end37
  %call43 = call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %s) #7
  %add44 = add nsw i32 %call43, 7
  %div45 = sdiv i32 %add44, 8
  %conv46 = sext i32 %div45 to i64
  %call47 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef nonnull %call8, i64 noundef %conv46) #7
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %err, label %if.end50

if.end50:                                         ; preds = %if.end42
  %call52 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef nonnull %0, i64 noundef 20) #7
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %err, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %if.end50
  %call56 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef nonnull %0, i32* noundef null) #7
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %err, label %if.end59

if.end59:                                         ; preds = %lor.lhs.false54
  %call61 = call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %0, i32 noundef 20, %struct.bignum_st* noundef null) #7
  br label %err

err:                                              ; preds = %if.end50, %lor.lhs.false54, %if.end42, %if.end37, %if.end17, %lor.lhs.false19, %lor.lhs.false23, %lor.lhs.false26, %lor.lhs.false30, %lor.lhs.false33, %if.end12, %if.end6, %if.end59
  %res.0 = phi %struct.bignum_st* [ null, %if.end6 ], [ null, %if.end12 ], [ null, %if.end37 ], [ %call61, %if.end59 ], [ null, %lor.lhs.false54 ], [ null, %if.end50 ], [ null, %if.end42 ], [ null, %lor.lhs.false33 ], [ null, %lor.lhs.false30 ], [ null, %lor.lhs.false26 ], [ null, %lor.lhs.false23 ], [ null, %lor.lhs.false19 ], [ null, %if.end17 ]
  %sha1.0 = phi %struct.evp_md_st* [ null, %if.end6 ], [ null, %if.end12 ], [ %call13, %if.end37 ], [ %call13, %if.end59 ], [ %call13, %lor.lhs.false54 ], [ %call13, %if.end50 ], [ %call13, %if.end42 ], [ %call13, %lor.lhs.false33 ], [ %call13, %lor.lhs.false30 ], [ %call13, %lor.lhs.false26 ], [ %call13, %lor.lhs.false23 ], [ %call13, %lor.lhs.false19 ], [ %call13, %if.end17 ]
  call void @EVP_MD_free(%struct.evp_md_st* noundef %sha1.0) #7
  call void @CRYPTO_free(i8* noundef %call8, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 186) #7
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %err
  %retval.0 = phi %struct.bignum_st* [ %res.0, %err ], [ null, %entry ], [ null, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %0) #6
  ret %struct.bignum_st* %retval.0
}

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #3

declare i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

declare i32 @BN_bn2bin(%struct.bignum_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_st* @SRP_Calc_x(%struct.bignum_st* noundef %s, i8* noundef %user, i8* noundef %pass) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bignum_st* @SRP_Calc_x_ex(%struct.bignum_st* noundef %s, i8* noundef %user, i8* noundef %pass, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #5
  ret %struct.bignum_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_st* @SRP_Calc_A(%struct.bignum_st* noundef %a, %struct.bignum_st* noundef %N, %struct.bignum_st* noundef %g) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.bignum_st* %a, null
  %cmp1 = icmp eq %struct.bignum_st* %N, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq %struct.bignum_st* %g, null
  %or.cond12 = or i1 %or.cond, %cmp3
  br i1 %or.cond12, label %cleanup, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %entry
  %call = tail call %struct.bignum_ctx* @BN_CTX_new() #7
  %cmp5 = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp5, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false4
  %call6 = tail call %struct.bignum_st* @BN_new() #7
  %cmp7.not = icmp eq %struct.bignum_st* %call6, null
  br i1 %cmp7.not, label %if.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call8 = tail call i32 @BN_mod_exp(%struct.bignum_st* noundef nonnull %call6, %struct.bignum_st* noundef nonnull %g, %struct.bignum_st* noundef nonnull %a, %struct.bignum_st* noundef nonnull %N, %struct.bignum_ctx* noundef nonnull %call) #7
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %land.lhs.true
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call6) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %land.lhs.true, %if.end
  %A.0 = phi %struct.bignum_st* [ %call6, %land.lhs.true ], [ null, %if.then9 ], [ null, %if.end ]
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false4, %if.end10
  %retval.0 = phi %struct.bignum_st* [ %A.0, %if.end10 ], [ null, %lor.lhs.false4 ], [ null, %entry ]
  ret %struct.bignum_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_st* @SRP_Calc_client_key_ex(%struct.bignum_st* noundef %N, %struct.bignum_st* noundef %B, %struct.bignum_st* noundef %g, %struct.bignum_st* noundef %x, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %u, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.bignum_st* %u, null
  %cmp1 = icmp eq %struct.bignum_st* %B, null
  %or.cond = or i1 %cmp1, %cmp
  %cmp3 = icmp eq %struct.bignum_st* %N, null
  %or.cond60 = or i1 %cmp3, %or.cond
  %cmp5 = icmp eq %struct.bignum_st* %g, null
  %or.cond61 = or i1 %cmp5, %or.cond60
  %cmp7 = icmp eq %struct.bignum_st* %x, null
  %or.cond62 = or i1 %cmp7, %or.cond61
  %cmp9 = icmp eq %struct.bignum_st* %a, null
  %or.cond63 = or i1 %cmp9, %or.cond62
  br i1 %or.cond63, label %cleanup, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %entry
  %call = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx) #7
  %cmp11 = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp11, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false10
  %call12 = tail call %struct.bignum_st* @BN_new() #7
  %cmp13 = icmp eq %struct.bignum_st* %call12, null
  br i1 %cmp13, label %err, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %if.end
  %call15 = tail call %struct.bignum_st* @BN_new() #7
  %cmp16 = icmp eq %struct.bignum_st* %call15, null
  br i1 %cmp16, label %err, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false14
  %call18 = tail call %struct.bignum_st* @BN_new() #7
  %cmp19 = icmp eq %struct.bignum_st* %call18, null
  br i1 %cmp19, label %err, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false17
  %call21 = tail call %struct.bignum_st* @BN_new() #7
  %cmp22 = icmp eq %struct.bignum_st* %call21, null
  br i1 %cmp22, label %err, label %if.end24

if.end24:                                         ; preds = %lor.lhs.false20
  tail call void @BN_with_flags(%struct.bignum_st* noundef nonnull %call21, %struct.bignum_st* noundef nonnull %x, i32 noundef 4) #7
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %call12, i32 noundef 4) #7
  %call25 = tail call i32 @BN_mod_exp(%struct.bignum_st* noundef nonnull %call12, %struct.bignum_st* noundef nonnull %g, %struct.bignum_st* noundef nonnull %call21, %struct.bignum_st* noundef nonnull %N, %struct.bignum_ctx* noundef nonnull %call) #7
  %tobool.not = icmp eq i32 %call25, 0
  br i1 %tobool.not, label %err, label %if.end27

if.end27:                                         ; preds = %if.end24
  %call28 = tail call fastcc %struct.bignum_st* @srp_Calc_k(%struct.bignum_st* noundef nonnull %N, %struct.bignum_st* noundef nonnull %g, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #5
  %cmp29 = icmp eq %struct.bignum_st* %call28, null
  br i1 %cmp29, label %err, label %if.end31

if.end31:                                         ; preds = %if.end27
  %call32 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef nonnull %call15, %struct.bignum_st* noundef nonnull %call12, %struct.bignum_st* noundef nonnull %call28, %struct.bignum_st* noundef nonnull %N, %struct.bignum_ctx* noundef nonnull %call) #7
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %if.end35

if.end35:                                         ; preds = %if.end31
  %call36 = tail call i32 @BN_mod_sub(%struct.bignum_st* noundef nonnull %call12, %struct.bignum_st* noundef nonnull %B, %struct.bignum_st* noundef nonnull %call15, %struct.bignum_st* noundef nonnull %N, %struct.bignum_ctx* noundef nonnull %call) #7
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %err, label %if.end39

if.end39:                                         ; preds = %if.end35
  %call40 = tail call i32 @BN_mul(%struct.bignum_st* noundef nonnull %call18, %struct.bignum_st* noundef nonnull %u, %struct.bignum_st* noundef nonnull %call21, %struct.bignum_ctx* noundef nonnull %call) #7
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %err, label %if.end43

if.end43:                                         ; preds = %if.end39
  %call44 = tail call i32 @BN_add(%struct.bignum_st* noundef nonnull %call15, %struct.bignum_st* noundef nonnull %a, %struct.bignum_st* noundef nonnull %call18) #7
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %err, label %if.end47

if.end47:                                         ; preds = %if.end43
  %call48 = tail call %struct.bignum_st* @BN_new() #7
  %cmp49.not = icmp eq %struct.bignum_st* %call48, null
  br i1 %cmp49.not, label %err, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end47
  %call50 = tail call i32 @BN_mod_exp(%struct.bignum_st* noundef nonnull %call48, %struct.bignum_st* noundef nonnull %call12, %struct.bignum_st* noundef nonnull %call15, %struct.bignum_st* noundef nonnull %N, %struct.bignum_ctx* noundef nonnull %call) #7
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then52, label %err

if.then52:                                        ; preds = %land.lhs.true
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call48) #7
  br label %err

err:                                              ; preds = %if.end47, %land.lhs.true, %if.then52, %if.end43, %if.end39, %if.end35, %if.end31, %if.end27, %if.end24, %if.end, %lor.lhs.false14, %lor.lhs.false17, %lor.lhs.false20
  %tmp2.0 = phi %struct.bignum_st* [ null, %if.end ], [ null, %lor.lhs.false14 ], [ %call15, %lor.lhs.false17 ], [ %call15, %lor.lhs.false20 ], [ %call15, %if.end27 ], [ %call15, %land.lhs.true ], [ %call15, %if.then52 ], [ %call15, %if.end47 ], [ %call15, %if.end43 ], [ %call15, %if.end39 ], [ %call15, %if.end35 ], [ %call15, %if.end31 ], [ %call15, %if.end24 ]
  %tmp3.0 = phi %struct.bignum_st* [ null, %if.end ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false17 ], [ %call18, %lor.lhs.false20 ], [ %call18, %if.end27 ], [ %call18, %land.lhs.true ], [ %call18, %if.then52 ], [ %call18, %if.end47 ], [ %call18, %if.end43 ], [ %call18, %if.end39 ], [ %call18, %if.end35 ], [ %call18, %if.end31 ], [ %call18, %if.end24 ]
  %k.0 = phi %struct.bignum_st* [ null, %if.end ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false20 ], [ null, %if.end27 ], [ %call28, %land.lhs.true ], [ %call28, %if.then52 ], [ %call28, %if.end47 ], [ %call28, %if.end43 ], [ %call28, %if.end39 ], [ %call28, %if.end35 ], [ %call28, %if.end31 ], [ null, %if.end24 ]
  %K.0 = phi %struct.bignum_st* [ null, %if.end ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false20 ], [ null, %if.end27 ], [ %call48, %land.lhs.true ], [ null, %if.then52 ], [ null, %if.end47 ], [ null, %if.end43 ], [ null, %if.end39 ], [ null, %if.end35 ], [ null, %if.end31 ], [ null, %if.end24 ]
  %xtmp.0 = phi %struct.bignum_st* [ null, %if.end ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false20 ], [ %call21, %if.end27 ], [ %call21, %land.lhs.true ], [ %call21, %if.then52 ], [ %call21, %if.end47 ], [ %call21, %if.end43 ], [ %call21, %if.end39 ], [ %call21, %if.end35 ], [ %call21, %if.end31 ], [ %call21, %if.end24 ]
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef nonnull %call) #7
  tail call void @BN_free(%struct.bignum_st* noundef %xtmp.0) #7
  tail call void @BN_clear_free(%struct.bignum_st* noundef %call12) #7
  tail call void @BN_clear_free(%struct.bignum_st* noundef %tmp2.0) #7
  tail call void @BN_clear_free(%struct.bignum_st* noundef %tmp3.0) #7
  tail call void @BN_free(%struct.bignum_st* noundef %k.0) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false10, %err
  %retval.0 = phi %struct.bignum_st* [ %K.0, %err ], [ null, %lor.lhs.false10 ], [ null, %entry ]
  ret %struct.bignum_st* %retval.0
}

declare void @BN_with_flags(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @BN_set_flags(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BN_mod_sub(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_mul(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_add(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_st* @SRP_Calc_client_key(%struct.bignum_st* noundef %N, %struct.bignum_st* noundef %B, %struct.bignum_st* noundef %g, %struct.bignum_st* noundef %x, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %u) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bignum_st* @SRP_Calc_client_key_ex(%struct.bignum_st* noundef %N, %struct.bignum_st* noundef %B, %struct.bignum_st* noundef %g, %struct.bignum_st* noundef %x, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %u, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #5
  ret %struct.bignum_st* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @SRP_Verify_B_mod_N(%struct.bignum_st* noundef %B, %struct.bignum_st* noundef %N) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.bignum_st* %B, null
  %cmp1 = icmp eq %struct.bignum_st* %N, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %call = tail call %struct.bignum_ctx* @BN_CTX_new() #7
  %cmp3 = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp3, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false2
  %call4 = tail call %struct.bignum_st* @BN_new() #7
  %cmp5 = icmp eq %struct.bignum_st* %call4, null
  br i1 %cmp5, label %err, label %if.end7

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @BN_nnmod(%struct.bignum_st* noundef nonnull %call4, %struct.bignum_st* noundef nonnull %B, %struct.bignum_st* noundef nonnull %N, %struct.bignum_ctx* noundef nonnull %call) #7
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %err, label %if.end10

if.end10:                                         ; preds = %if.end7
  %call11 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %call4) #7
  %tobool12.not = icmp eq i32 %call11, 0
  %lnot.ext = zext i1 %tobool12.not to i32
  br label %err

err:                                              ; preds = %if.end7, %if.end, %if.end10
  %ret.0 = phi i32 [ 0, %if.end ], [ %lnot.ext, %if.end10 ], [ 0, %if.end7 ]
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef nonnull %call) #7
  tail call void @BN_free(%struct.bignum_st* noundef %call4) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false2, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %lor.lhs.false2 ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @BN_nnmod(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @SRP_Verify_A_mod_N(%struct.bignum_st* noundef %A, %struct.bignum_st* noundef %N) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @SRP_Verify_B_mod_N(%struct.bignum_st* noundef %A, %struct.bignum_st* noundef %N) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i8* @SRP_check_known_gN_param(%struct.bignum_st* noundef %g, %struct.bignum_st* noundef %N) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.bignum_st* %g, null
  %cmp1 = icmp eq %struct.bignum_st* %N, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %0 = load %struct.bignum_st*, %struct.bignum_st** getelementptr inbounds ([7 x %struct.SRP_gN_st], [7 x %struct.SRP_gN_st]* @knowngN, i64 0, i64 0, i32 1), align 8, !tbaa !4
  %call = tail call i32 @BN_cmp(%struct.bignum_st* noundef %0, %struct.bignum_st* noundef nonnull %g) #7
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body.preheader
  %1 = load %struct.bignum_st*, %struct.bignum_st** getelementptr inbounds ([7 x %struct.SRP_gN_st], [7 x %struct.SRP_gN_st]* @knowngN, i64 0, i64 0, i32 2), align 16, !tbaa !9
  %call7 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %1, %struct.bignum_st* noundef nonnull %N) #7
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %for.inc

if.then9:                                         ; preds = %land.lhs.true.6, %land.lhs.true.5, %land.lhs.true.4, %land.lhs.true.3, %land.lhs.true.2, %land.lhs.true.1, %land.lhs.true
  %i.020.lcssa = phi i64 [ 0, %land.lhs.true ], [ 1, %land.lhs.true.1 ], [ 2, %land.lhs.true.2 ], [ 3, %land.lhs.true.3 ], [ 4, %land.lhs.true.4 ], [ 5, %land.lhs.true.5 ], [ 6, %land.lhs.true.6 ]
  %id = getelementptr inbounds [7 x %struct.SRP_gN_st], [7 x %struct.SRP_gN_st]* @knowngN, i64 0, i64 %i.020.lcssa, i32 0
  %2 = load i8*, i8** %id, align 8, !tbaa !10
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader, %land.lhs.true
  %3 = load %struct.bignum_st*, %struct.bignum_st** getelementptr inbounds ([7 x %struct.SRP_gN_st], [7 x %struct.SRP_gN_st]* @knowngN, i64 0, i64 1, i32 1), align 16, !tbaa !4
  %call.1 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %3, %struct.bignum_st* noundef nonnull %g) #7
  %cmp4.1 = icmp eq i32 %call.1, 0
  br i1 %cmp4.1, label %land.lhs.true.1, label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %4 = load %struct.bignum_st*, %struct.bignum_st** getelementptr inbounds ([7 x %struct.SRP_gN_st], [7 x %struct.SRP_gN_st]* @knowngN, i64 0, i64 1, i32 2), align 8, !tbaa !9
  %call7.1 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %4, %struct.bignum_st* noundef nonnull %N) #7
  %cmp8.1 = icmp eq i32 %call7.1, 0
  br i1 %cmp8.1, label %if.then9, label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true.1, %for.inc
  %5 = load %struct.bignum_st*, %struct.bignum_st** getelementptr inbounds ([7 x %struct.SRP_gN_st], [7 x %struct.SRP_gN_st]* @knowngN, i64 0, i64 2, i32 1), align 8, !tbaa !4
  %call.2 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %5, %struct.bignum_st* noundef nonnull %g) #7
  %cmp4.2 = icmp eq i32 %call.2, 0
  br i1 %cmp4.2, label %land.lhs.true.2, label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %6 = load %struct.bignum_st*, %struct.bignum_st** getelementptr inbounds ([7 x %struct.SRP_gN_st], [7 x %struct.SRP_gN_st]* @knowngN, i64 0, i64 2, i32 2), align 16, !tbaa !9
  %call7.2 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %6, %struct.bignum_st* noundef nonnull %N) #7
  %cmp8.2 = icmp eq i32 %call7.2, 0
  br i1 %cmp8.2, label %if.then9, label %for.inc.2

for.inc.2:                                        ; preds = %land.lhs.true.2, %for.inc.1
  %7 = load %struct.bignum_st*, %struct.bignum_st** getelementptr inbounds ([7 x %struct.SRP_gN_st], [7 x %struct.SRP_gN_st]* @knowngN, i64 0, i64 3, i32 1), align 16, !tbaa !4
  %call.3 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %7, %struct.bignum_st* noundef nonnull %g) #7
  %cmp4.3 = icmp eq i32 %call.3, 0
  br i1 %cmp4.3, label %land.lhs.true.3, label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %8 = load %struct.bignum_st*, %struct.bignum_st** getelementptr inbounds ([7 x %struct.SRP_gN_st], [7 x %struct.SRP_gN_st]* @knowngN, i64 0, i64 3, i32 2), align 8, !tbaa !9
  %call7.3 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %8, %struct.bignum_st* noundef nonnull %N) #7
  %cmp8.3 = icmp eq i32 %call7.3, 0
  br i1 %cmp8.3, label %if.then9, label %for.inc.3

for.inc.3:                                        ; preds = %land.lhs.true.3, %for.inc.2
  %9 = load %struct.bignum_st*, %struct.bignum_st** getelementptr inbounds ([7 x %struct.SRP_gN_st], [7 x %struct.SRP_gN_st]* @knowngN, i64 0, i64 4, i32 1), align 8, !tbaa !4
  %call.4 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %9, %struct.bignum_st* noundef nonnull %g) #7
  %cmp4.4 = icmp eq i32 %call.4, 0
  br i1 %cmp4.4, label %land.lhs.true.4, label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %10 = load %struct.bignum_st*, %struct.bignum_st** getelementptr inbounds ([7 x %struct.SRP_gN_st], [7 x %struct.SRP_gN_st]* @knowngN, i64 0, i64 4, i32 2), align 16, !tbaa !9
  %call7.4 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %10, %struct.bignum_st* noundef nonnull %N) #7
  %cmp8.4 = icmp eq i32 %call7.4, 0
  br i1 %cmp8.4, label %if.then9, label %for.inc.4

for.inc.4:                                        ; preds = %land.lhs.true.4, %for.inc.3
  %11 = load %struct.bignum_st*, %struct.bignum_st** getelementptr inbounds ([7 x %struct.SRP_gN_st], [7 x %struct.SRP_gN_st]* @knowngN, i64 0, i64 5, i32 1), align 16, !tbaa !4
  %call.5 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %11, %struct.bignum_st* noundef nonnull %g) #7
  %cmp4.5 = icmp eq i32 %call.5, 0
  br i1 %cmp4.5, label %land.lhs.true.5, label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %12 = load %struct.bignum_st*, %struct.bignum_st** getelementptr inbounds ([7 x %struct.SRP_gN_st], [7 x %struct.SRP_gN_st]* @knowngN, i64 0, i64 5, i32 2), align 8, !tbaa !9
  %call7.5 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %12, %struct.bignum_st* noundef nonnull %N) #7
  %cmp8.5 = icmp eq i32 %call7.5, 0
  br i1 %cmp8.5, label %if.then9, label %for.inc.5

for.inc.5:                                        ; preds = %land.lhs.true.5, %for.inc.4
  %13 = load %struct.bignum_st*, %struct.bignum_st** getelementptr inbounds ([7 x %struct.SRP_gN_st], [7 x %struct.SRP_gN_st]* @knowngN, i64 0, i64 6, i32 1), align 8, !tbaa !4
  %call.6 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %13, %struct.bignum_st* noundef nonnull %g) #7
  %cmp4.6 = icmp eq i32 %call.6, 0
  br i1 %cmp4.6, label %land.lhs.true.6, label %cleanup

land.lhs.true.6:                                  ; preds = %for.inc.5
  %14 = load %struct.bignum_st*, %struct.bignum_st** getelementptr inbounds ([7 x %struct.SRP_gN_st], [7 x %struct.SRP_gN_st]* @knowngN, i64 0, i64 6, i32 2), align 16, !tbaa !9
  %call7.6 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %14, %struct.bignum_st* noundef nonnull %N) #7
  %cmp8.6 = icmp eq i32 %call7.6, 0
  br i1 %cmp8.6, label %if.then9, label %cleanup

cleanup:                                          ; preds = %for.inc.5, %land.lhs.true.6, %entry, %if.then9
  %retval.0 = phi i8* [ %2, %if.then9 ], [ null, %entry ], [ null, %land.lhs.true.6 ], [ null, %for.inc.5 ]
  ret i8* %retval.0
}

declare i32 @BN_cmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind readonly uwtable
define %struct.SRP_gN_st* @SRP_get_default_gN(i8* noundef readonly %id) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq i8* %id, null
  br i1 %cmp, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %0 = load i8*, i8** getelementptr inbounds ([7 x %struct.SRP_gN_st], [7 x %struct.SRP_gN_st]* @knowngN, i64 0, i64 0, i32 0), align 16, !tbaa !10
  %call = tail call i32 @strcmp(i8* noundef %0, i8* noundef nonnull %id) #8
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %if.then4, label %for.inc

if.then4:                                         ; preds = %for.inc.5, %for.inc.4, %for.inc.3, %for.inc.2, %for.inc.1, %for.inc, %for.body.preheader
  %i.012.lcssa = phi i64 [ 0, %for.body.preheader ], [ 1, %for.inc ], [ 2, %for.inc.1 ], [ 3, %for.inc.2 ], [ 4, %for.inc.3 ], [ 5, %for.inc.4 ], [ 6, %for.inc.5 ]
  %add.ptr = getelementptr inbounds [7 x %struct.SRP_gN_st], [7 x %struct.SRP_gN_st]* @knowngN, i64 0, i64 %i.012.lcssa
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %1 = load i8*, i8** getelementptr inbounds ([7 x %struct.SRP_gN_st], [7 x %struct.SRP_gN_st]* @knowngN, i64 0, i64 1, i32 0), align 8, !tbaa !10
  %call.1 = tail call i32 @strcmp(i8* noundef %1, i8* noundef nonnull %id) #8
  %cmp3.1 = icmp eq i32 %call.1, 0
  br i1 %cmp3.1, label %if.then4, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %2 = load i8*, i8** getelementptr inbounds ([7 x %struct.SRP_gN_st], [7 x %struct.SRP_gN_st]* @knowngN, i64 0, i64 2, i32 0), align 16, !tbaa !10
  %call.2 = tail call i32 @strcmp(i8* noundef %2, i8* noundef nonnull %id) #8
  %cmp3.2 = icmp eq i32 %call.2, 0
  br i1 %cmp3.2, label %if.then4, label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %3 = load i8*, i8** getelementptr inbounds ([7 x %struct.SRP_gN_st], [7 x %struct.SRP_gN_st]* @knowngN, i64 0, i64 3, i32 0), align 8, !tbaa !10
  %call.3 = tail call i32 @strcmp(i8* noundef %3, i8* noundef nonnull %id) #8
  %cmp3.3 = icmp eq i32 %call.3, 0
  br i1 %cmp3.3, label %if.then4, label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.2
  %4 = load i8*, i8** getelementptr inbounds ([7 x %struct.SRP_gN_st], [7 x %struct.SRP_gN_st]* @knowngN, i64 0, i64 4, i32 0), align 16, !tbaa !10
  %call.4 = tail call i32 @strcmp(i8* noundef %4, i8* noundef nonnull %id) #8
  %cmp3.4 = icmp eq i32 %call.4, 0
  br i1 %cmp3.4, label %if.then4, label %for.inc.4

for.inc.4:                                        ; preds = %for.inc.3
  %5 = load i8*, i8** getelementptr inbounds ([7 x %struct.SRP_gN_st], [7 x %struct.SRP_gN_st]* @knowngN, i64 0, i64 5, i32 0), align 8, !tbaa !10
  %call.5 = tail call i32 @strcmp(i8* noundef %5, i8* noundef nonnull %id) #8
  %cmp3.5 = icmp eq i32 %call.5, 0
  br i1 %cmp3.5, label %if.then4, label %for.inc.5

for.inc.5:                                        ; preds = %for.inc.4
  %6 = load i8*, i8** getelementptr inbounds ([7 x %struct.SRP_gN_st], [7 x %struct.SRP_gN_st]* @knowngN, i64 0, i64 6, i32 0), align 16, !tbaa !10
  %call.6 = tail call i32 @strcmp(i8* noundef %6, i8* noundef nonnull %id) #8
  %cmp3.6 = icmp eq i32 %call.6, 0
  br i1 %cmp3.6, label %if.then4, label %cleanup

cleanup:                                          ; preds = %for.inc.5, %entry, %if.then4
  %retval.0 = phi %struct.SRP_gN_st* [ %add.ptr, %if.then4 ], [ getelementptr inbounds ([7 x %struct.SRP_gN_st], [7 x %struct.SRP_gN_st]* @knowngN, i64 0, i64 0), %entry ], [ null, %for.inc.5 ]
  ret %struct.SRP_gN_st* %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @BN_ucmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_bn2binpad(%struct.bignum_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_Digest(i8* noundef, i64 noundef, i8* noundef, i32* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 8}
!5 = !{!"SRP_gN_st", !6, i64 0, !6, i64 8, !6, i64 16}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 16}
!10 = !{!5, !6, i64 0}
