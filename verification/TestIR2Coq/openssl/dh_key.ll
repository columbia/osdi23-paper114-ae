; ModuleID = 'crypto/dh/dh_key.c'
source_filename = "crypto/dh/dh_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dh_method = type { i8*, i32 (%struct.dh_st*)*, {}*, i32 (%struct.dh_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dh_st*)*, i32 (%struct.dh_st*)*, i32, i8*, i32 (%struct.dh_st*, i32, i32, %struct.bn_gencb_st*)* }
%struct.dh_st = type { i32, i32, %struct.ffc_params_st, i32, %struct.bignum_st*, %struct.bignum_st*, i32, %struct.bn_mont_ctx_st*, i32, %struct.crypto_ex_data_st, %struct.engine_st*, %struct.ossl_lib_ctx_st*, %struct.dh_method*, i8*, i64 }
%struct.ffc_params_st = type { %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i64, i32, i32, i32, i32, i32, i8*, i8* }
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.engine_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.bignum_st = type opaque
%struct.bignum_ctx = type opaque
%struct.bn_mont_ctx_st = type opaque
%struct.bn_gencb_st = type opaque

@.str = private unnamed_addr constant [19 x i8] c"crypto/dh/dh_key.c\00", align 1
@__func__.ossl_dh_compute_key = private unnamed_addr constant [20 x i8] c"ossl_dh_compute_key\00", align 1
@default_DH_method = internal unnamed_addr global %struct.dh_method* bitcast ({ i8*, i32 (%struct.dh_st*)*, i32 (i8*, %struct.bignum_st*, %struct.dh_st*)*, i32 (%struct.dh_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dh_st*)*, i32 (%struct.dh_st*)*, i32, i8*, i32 (%struct.dh_st*, i32, i32, %struct.bn_gencb_st*)* }* @dh_ossl to %struct.dh_method*), align 8
@__func__.ossl_dh_buf2key = private unnamed_addr constant [16 x i8] c"ossl_dh_buf2key\00", align 1
@__func__.ossl_dh_key2buf = private unnamed_addr constant [16 x i8] c"ossl_dh_key2buf\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"OpenSSL DH Method\00", align 1
@dh_ossl = internal global { i8*, i32 (%struct.dh_st*)*, i32 (i8*, %struct.bignum_st*, %struct.dh_st*)*, i32 (%struct.dh_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dh_st*)*, i32 (%struct.dh_st*)*, i32, i8*, i32 (%struct.dh_st*, i32, i32, %struct.bn_gencb_st*)* } { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.dh_st*)* @generate_key, i32 (i8*, %struct.bignum_st*, %struct.dh_st*)* @ossl_dh_compute_key, i32 (%struct.dh_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)* @dh_bn_mod_exp, i32 (%struct.dh_st*)* @dh_init, i32 (%struct.dh_st*)* @dh_finish, i32 1024, i8* null, i32 (%struct.dh_st*, i32, i32, %struct.bn_gencb_st*)* null }, align 8
@__func__.generate_key = private unnamed_addr constant [13 x i8] c"generate_key\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_dh_compute_key(i8* noundef %key, %struct.bignum_st* noundef %pub_key, %struct.dh_st* noundef %dh) #0 {
entry:
  %p = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2, i32 0
  %0 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %0) #7
  %cmp = icmp sgt i32 %call, 10000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ossl_dh_compute_key, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 103, i8* noundef null) #7
  br label %err

if.end:                                           ; preds = %entry
  %1 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  %call3 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %1) #7
  %cmp4 = icmp slt i32 %call3, 512
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ossl_dh_compute_key, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 126, i8* noundef null) #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %libctx = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 11
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !13
  %call7 = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %2) #7
  %cmp8 = icmp eq %struct.bignum_ctx* %call7, null
  br i1 %cmp8, label %err, label %if.end10

if.end10:                                         ; preds = %if.end6
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %call7) #7
  %call11 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call7) #7
  %call12 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call7) #7
  %cmp13 = icmp eq %struct.bignum_st* %call12, null
  br i1 %cmp13, label %err, label %if.end15

if.end15:                                         ; preds = %if.end10
  %priv_key = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 5
  %3 = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !14
  %cmp16 = icmp eq %struct.bignum_st* %3, null
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end15
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ossl_dh_compute_key, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 100, i8* noundef null) #7
  br label %err

if.end18:                                         ; preds = %if.end15
  %flags = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 6
  %4 = load i32, i32* %flags, align 8, !tbaa !15
  %and = and i32 %4, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end27, label %if.then19

if.then19:                                        ; preds = %if.end18
  %method_mont_p = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 7
  %lock = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 13
  %5 = load i8*, i8** %lock, align 8, !tbaa !16
  %6 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  %call22 = tail call %struct.bn_mont_ctx_st* @BN_MONT_CTX_set_locked(%struct.bn_mont_ctx_st** noundef nonnull %method_mont_p, i8* noundef %5, %struct.bignum_st* noundef %6, %struct.bignum_ctx* noundef nonnull %call7) #7
  %7 = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !14
  tail call void @BN_set_flags(%struct.bignum_st* noundef %7, i32 noundef 4) #7
  %tobool24.not = icmp eq %struct.bn_mont_ctx_st* %call22, null
  br i1 %tobool24.not, label %err, label %if.then19.if.end27_crit_edge

if.then19.if.end27_crit_edge:                     ; preds = %if.then19
  %.pre = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !14
  br label %if.end27

if.end27:                                         ; preds = %if.then19.if.end27_crit_edge, %if.end18
  %8 = phi %struct.bignum_st* [ %.pre, %if.then19.if.end27_crit_edge ], [ %3, %if.end18 ]
  %mont.0 = phi %struct.bn_mont_ctx_st* [ %call22, %if.then19.if.end27_crit_edge ], [ null, %if.end18 ]
  %meth = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 12
  %9 = load %struct.dh_method*, %struct.dh_method** %meth, align 8, !tbaa !17
  %bn_mod_exp = getelementptr inbounds %struct.dh_method, %struct.dh_method* %9, i64 0, i32 3
  %10 = load i32 (%struct.dh_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dh_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)** %bn_mod_exp, align 8, !tbaa !18
  %11 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  %call31 = tail call i32 %10(%struct.dh_st* noundef nonnull %dh, %struct.bignum_st* noundef nonnull %call12, %struct.bignum_st* noundef %pub_key, %struct.bignum_st* noundef %8, %struct.bignum_st* noundef %11, %struct.bignum_ctx* noundef nonnull %call7, %struct.bn_mont_ctx_st* noundef %mont.0) #7
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end27
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ossl_dh_compute_key, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 524291, i8* noundef null) #7
  br label %err

if.end34:                                         ; preds = %if.end27
  %12 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  %call37 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %12) #7
  %cmp38 = icmp eq %struct.bignum_st* %call37, null
  br i1 %cmp38, label %if.then48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end34
  %call39 = tail call i32 @BN_sub_word(%struct.bignum_st* noundef %call11, i64 noundef 1) #7
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then48, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false
  %call42 = tail call %struct.bignum_st* @BN_value_one() #7
  %call43 = tail call i32 @BN_cmp(%struct.bignum_st* noundef nonnull %call12, %struct.bignum_st* noundef %call42) #7
  %cmp44 = icmp slt i32 %call43, 1
  br i1 %cmp44, label %if.then48, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false41
  %call46 = tail call i32 @BN_cmp(%struct.bignum_st* noundef nonnull %call12, %struct.bignum_st* noundef %call11) #7
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %lor.lhs.false45, %lor.lhs.false41, %lor.lhs.false, %if.end34
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ossl_dh_compute_key, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 128, i8* noundef null) #7
  br label %err

if.end49:                                         ; preds = %lor.lhs.false45
  %13 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  %call52 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %13) #7
  %add = add nsw i32 %call52, 7
  %div = sdiv i32 %add, 8
  %call53 = tail call i32 @BN_bn2binpad(%struct.bignum_st* noundef nonnull %call12, i8* noundef %key, i32 noundef %div) #7
  br label %err

err:                                              ; preds = %if.then19, %if.end10, %if.end6, %if.end49, %if.then48, %if.then33, %if.then17, %if.then
  %ctx.0 = phi %struct.bignum_ctx* [ null, %if.then ], [ null, %if.end6 ], [ %call7, %if.end10 ], [ %call7, %if.then17 ], [ %call7, %if.then48 ], [ %call7, %if.end49 ], [ %call7, %if.then33 ], [ %call7, %if.then19 ]
  %z.0 = phi %struct.bignum_st* [ null, %if.then ], [ null, %if.end6 ], [ null, %if.end10 ], [ %call12, %if.then17 ], [ %call12, %if.then48 ], [ %call12, %if.end49 ], [ %call12, %if.then33 ], [ %call12, %if.then19 ]
  %ret.0 = phi i32 [ -1, %if.then ], [ -1, %if.end6 ], [ -1, %if.end10 ], [ -1, %if.then17 ], [ -1, %if.then48 ], [ %call53, %if.end49 ], [ -1, %if.then33 ], [ -1, %if.then19 ]
  tail call void @BN_clear(%struct.bignum_st* noundef %z.0) #7
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx.0) #7
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %ctx.0) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then5
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %if.then5 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.bn_mont_ctx_st* @BN_MONT_CTX_set_locked(%struct.bn_mont_ctx_st** noundef, i8* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare void @BN_set_flags(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_sub_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BN_cmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_value_one() local_unnamed_addr #2

declare i32 @BN_bn2binpad(%struct.bignum_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @BN_clear(%struct.bignum_st* noundef) local_unnamed_addr #2

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @DH_compute_key(i8* noundef %key, %struct.bignum_st* noundef %pub_key, %struct.dh_st* noundef %dh) local_unnamed_addr #0 {
entry:
  %npad = alloca i64, align 8
  %mask = alloca i64, align 8
  %npad.0.sroa_cast = bitcast i64* %npad to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %npad.0.sroa_cast)
  store volatile i64 0, i64* %npad, align 8, !tbaa !20
  %mask.0.sroa_cast = bitcast i64* %mask to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %mask.0.sroa_cast)
  store volatile i64 1, i64* %mask, align 8, !tbaa !20
  %meth = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 12
  %0 = load %struct.dh_method*, %struct.dh_method** %meth, align 8, !tbaa !17
  %compute_key = getelementptr inbounds %struct.dh_method, %struct.dh_method* %0, i64 0, i32 2
  %compute_key1 = bitcast {}** %compute_key to i32 (i8*, %struct.bignum_st*, %struct.dh_st*)**
  %1 = load i32 (i8*, %struct.bignum_st*, %struct.dh_st*)*, i32 (i8*, %struct.bignum_st*, %struct.dh_st*)** %compute_key1, align 8, !tbaa !21
  %call = tail call i32 %1(i8* noundef %key, %struct.bignum_st* noundef %pub_key, %struct.dh_st* noundef %dh) #7
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %call to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %2 = icmp eq i32 %call, 1
  br i1 %2, label %for.end.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %indvars.iv = phi i64 [ 0, %for.body.preheader.new ], [ %indvars.iv.next.1, %for.body ]
  %niter = phi i64 [ 0, %for.body.preheader.new ], [ %niter.next.1, %for.body ]
  %arrayidx = getelementptr inbounds i8, i8* %key, i64 %indvars.iv
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !22
  %tobool.not = icmp eq i8 %3, 0
  %4 = zext i1 %tobool.not to i64
  %mask.0.mask.0.mask.0. = load volatile i64, i64* %mask, align 8, !tbaa !20
  %and = and i64 %mask.0.mask.0.mask.0., %4
  store volatile i64 %and, i64* %mask, align 8, !tbaa !20
  %mask.0.mask.0.mask.0.12 = load volatile i64, i64* %mask, align 8, !tbaa !20
  %npad.0.npad.0.npad.0. = load volatile i64, i64* %npad, align 8, !tbaa !20
  %add = add i64 %npad.0.npad.0.npad.0., %mask.0.mask.0.mask.0.12
  store volatile i64 %add, i64* %npad, align 8, !tbaa !20
  %indvars.iv.next = or i64 %indvars.iv, 1
  %arrayidx.1 = getelementptr inbounds i8, i8* %key, i64 %indvars.iv.next
  %5 = load i8, i8* %arrayidx.1, align 1, !tbaa !22
  %tobool.not.1 = icmp eq i8 %5, 0
  %6 = zext i1 %tobool.not.1 to i64
  %mask.0.mask.0.mask.0..1 = load volatile i64, i64* %mask, align 8, !tbaa !20
  %and.1 = and i64 %mask.0.mask.0.mask.0..1, %6
  store volatile i64 %and.1, i64* %mask, align 8, !tbaa !20
  %mask.0.mask.0.mask.0.12.1 = load volatile i64, i64* %mask, align 8, !tbaa !20
  %npad.0.npad.0.npad.0..1 = load volatile i64, i64* %npad, align 8, !tbaa !20
  %add.1 = add i64 %npad.0.npad.0.npad.0..1, %mask.0.mask.0.mask.0.12.1
  store volatile i64 %add.1, i64* %npad, align 8, !tbaa !20
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.end.unr-lcssa, label %for.body, !llvm.loop !23

for.end.unr-lcssa:                                ; preds = %for.body, %for.body.preheader
  %indvars.iv.unr = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next.1, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.unr-lcssa
  %arrayidx.epil = getelementptr inbounds i8, i8* %key, i64 %indvars.iv.unr
  %7 = load i8, i8* %arrayidx.epil, align 1, !tbaa !22
  %tobool.not.epil = icmp eq i8 %7, 0
  %8 = zext i1 %tobool.not.epil to i64
  %mask.0.mask.0.mask.0..epil = load volatile i64, i64* %mask, align 8, !tbaa !20
  %and.epil = and i64 %mask.0.mask.0.mask.0..epil, %8
  store volatile i64 %and.epil, i64* %mask, align 8, !tbaa !20
  %mask.0.mask.0.mask.0.12.epil = load volatile i64, i64* %mask, align 8, !tbaa !20
  %npad.0.npad.0.npad.0..epil = load volatile i64, i64* %npad, align 8, !tbaa !20
  %add.epil = add i64 %npad.0.npad.0.npad.0..epil, %mask.0.mask.0.mask.0.12.epil
  store volatile i64 %add.epil, i64* %npad, align 8, !tbaa !20
  br label %for.end

for.end:                                          ; preds = %for.end.unr-lcssa, %for.body.epil
  %npad.0.npad.0.npad.0.14 = load volatile i64, i64* %npad, align 8, !tbaa !20
  %9 = trunc i64 %npad.0.npad.0.npad.0.14 to i32
  %conv4 = sub i32 %call, %9
  %npad.0.npad.0.npad.0.15 = load volatile i64, i64* %npad, align 8, !tbaa !20
  %add.ptr = getelementptr inbounds i8, i8* %key, i64 %npad.0.npad.0.npad.0.15
  %conv5 = sext i32 %conv4 to i64
  %call6 = tail call i8* @memmove(i8* noundef nonnull %key, i8* noundef %add.ptr, i64 noundef %conv5) #7
  %add.ptr7 = getelementptr inbounds i8, i8* %key, i64 %conv5
  %npad.0.npad.0.npad.0.16 = load volatile i64, i64* %npad, align 8, !tbaa !20
  %call8 = tail call i8* @memset(i8* noundef %add.ptr7, i32 noundef 0, i64 noundef %npad.0.npad.0.npad.0.16) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i32 [ %conv4, %for.end ], [ %call, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %mask.0.sroa_cast)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %npad.0.sroa_cast)
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i8* @memmove(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @DH_compute_key_padded(i8* noundef %key, %struct.bignum_st* noundef %pub_key, %struct.dh_st* noundef %dh) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 12
  %0 = load %struct.dh_method*, %struct.dh_method** %meth, align 8, !tbaa !17
  %compute_key = getelementptr inbounds %struct.dh_method, %struct.dh_method* %0, i64 0, i32 2
  %compute_key1 = bitcast {}** %compute_key to i32 (i8*, %struct.bignum_st*, %struct.dh_st*)**
  %1 = load i32 (i8*, %struct.bignum_st*, %struct.dh_st*)*, i32 (i8*, %struct.bignum_st*, %struct.dh_st*)** %compute_key1, align 8, !tbaa !21
  %call = tail call i32 %1(i8* noundef %key, %struct.bignum_st* noundef %pub_key, %struct.dh_st* noundef %dh) #7
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %p = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2, i32 0
  %2 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  %call2 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %2) #7
  %add = add nsw i32 %call2, 7
  %div = sdiv i32 %add, 8
  %sub = sub nsw i32 %div, %call
  %cmp3 = icmp sgt i32 %sub, 0
  br i1 %cmp3, label %if.then4, label %cleanup

if.then4:                                         ; preds = %if.end
  %idx.ext25 = zext i32 %sub to i64
  %add.ptr = getelementptr inbounds i8, i8* %key, i64 %idx.ext25
  %conv26 = zext i32 %call to i64
  %call5 = tail call i8* @memmove(i8* noundef nonnull %add.ptr, i8* noundef %key, i64 noundef %conv26) #7
  %call7 = tail call i8* @memset(i8* noundef %key, i32 noundef 0, i64 noundef %idx.ext25) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then4, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ %div, %if.then4 ], [ %div, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define %struct.dh_method* @DH_OpenSSL() local_unnamed_addr #4 {
entry:
  ret %struct.dh_method* bitcast ({ i8*, i32 (%struct.dh_st*)*, i32 (i8*, %struct.bignum_st*, %struct.dh_st*)*, i32 (%struct.dh_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dh_st*)*, i32 (%struct.dh_st*)*, i32, i8*, i32 (%struct.dh_st*, i32, i32, %struct.bn_gencb_st*)* }* @dh_ossl to %struct.dh_method*)
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.dh_method* @DH_get_default_method() local_unnamed_addr #5 {
entry:
  %0 = load %struct.dh_method*, %struct.dh_method** @default_DH_method, align 8, !tbaa !25
  ret %struct.dh_method* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @DH_set_default_method(%struct.dh_method* noundef %meth) local_unnamed_addr #6 {
entry:
  store %struct.dh_method* %meth, %struct.dh_method** @default_DH_method, align 8, !tbaa !25
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @DH_generate_key(%struct.dh_st* noundef %dh) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 12
  %0 = load %struct.dh_method*, %struct.dh_method** %meth, align 8, !tbaa !17
  %generate_key = getelementptr inbounds %struct.dh_method, %struct.dh_method* %0, i64 0, i32 1
  %1 = load i32 (%struct.dh_st*)*, i32 (%struct.dh_st*)** %generate_key, align 8, !tbaa !26
  %call = tail call i32 %1(%struct.dh_st* noundef %dh) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_dh_generate_public_key(%struct.bignum_ctx* noundef %ctx, %struct.dh_st* noundef %dh, %struct.bignum_st* noundef %priv_key, %struct.bignum_st* noundef %pub_key) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #7
  %cmp = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp, label %cleanup14, label %if.end

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 6
  %0 = load i32, i32* %flags, align 8, !tbaa !15
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end6, label %if.then1

if.then1:                                         ; preds = %if.end
  %method_mont_p = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 7
  %lock = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 13
  %1 = load i8*, i8** %lock, align 8, !tbaa !16
  %p = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2, i32 0
  %2 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  %call2 = tail call %struct.bn_mont_ctx_st* @BN_MONT_CTX_set_locked(%struct.bn_mont_ctx_st** noundef nonnull %method_mont_p, i8* noundef %1, %struct.bignum_st* noundef %2, %struct.bignum_ctx* noundef %ctx) #7
  %cmp3 = icmp eq %struct.bn_mont_ctx_st* %call2, null
  br i1 %cmp3, label %err, label %if.end6

if.end6:                                          ; preds = %if.then1, %if.end
  %mont.0 = phi %struct.bn_mont_ctx_st* [ %call2, %if.then1 ], [ null, %if.end ]
  tail call void @BN_with_flags(%struct.bignum_st* noundef nonnull %call, %struct.bignum_st* noundef %priv_key, i32 noundef 4) #7
  %meth = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 12
  %3 = load %struct.dh_method*, %struct.dh_method** %meth, align 8, !tbaa !17
  %bn_mod_exp = getelementptr inbounds %struct.dh_method, %struct.dh_method* %3, i64 0, i32 3
  %4 = load i32 (%struct.dh_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dh_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)** %bn_mod_exp, align 8, !tbaa !18
  %g = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2, i32 2
  %5 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !27
  %p9 = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2, i32 0
  %6 = load %struct.bignum_st*, %struct.bignum_st** %p9, align 8, !tbaa !4
  %call10 = tail call i32 %4(%struct.dh_st* noundef nonnull %dh, %struct.bignum_st* noundef %pub_key, %struct.bignum_st* noundef %5, %struct.bignum_st* noundef nonnull %call, %struct.bignum_st* noundef %6, %struct.bignum_ctx* noundef %ctx, %struct.bn_mont_ctx_st* noundef %mont.0) #7
  %tobool11.not = icmp ne i32 %call10, 0
  %spec.select = zext i1 %tobool11.not to i32
  br label %err

err:                                              ; preds = %if.end6, %if.then1
  %ret.0 = phi i32 [ 0, %if.then1 ], [ %spec.select, %if.end6 ]
  tail call void @BN_clear_free(%struct.bignum_st* noundef nonnull %call) #7
  br label %cleanup14

cleanup14:                                        ; preds = %entry, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %entry ]
  ret i32 %retval.0
}

declare %struct.bignum_st* @BN_new() local_unnamed_addr #2

declare void @BN_with_flags(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @BN_clear_free(%struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_dh_buf2key(%struct.dh_st* noundef %dh, i8* noundef %buf, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %p = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.bignum_st** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  %conv = trunc i64 %len to i32
  %call = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef %buf, i32 noundef %conv, %struct.bignum_st* noundef null) #7
  %cmp = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  call void @DH_get0_pqg(%struct.dh_st* noundef %dh, %struct.bignum_st** noundef nonnull %p, %struct.bignum_st** noundef null, %struct.bignum_st** noundef null) #7
  %1 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !25
  %cmp2 = icmp eq %struct.bignum_st* %1, null
  br i1 %cmp2, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call4 = call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %1) #7
  %add.off = add i32 %call4, 14
  %2 = icmp ult i32 %add.off, 15
  br i1 %2, label %err, label %if.end9

if.end9:                                          ; preds = %lor.lhs.false
  %add = add nuw nsw i32 %call4, 7
  %div = sdiv i32 %add, 8
  %conv5 = sext i32 %div to i64
  %call10 = call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %call) #7
  %tobool.not = icmp eq i32 %call10, 0
  %cmp12.not = icmp eq i64 %conv5, %len
  %or.cond = select i1 %tobool.not, i1 %cmp12.not, i1 false
  br i1 %or.cond, label %if.end15, label %err

if.end15:                                         ; preds = %if.end9
  %call16 = call i32 @DH_set0_key(%struct.dh_st* noundef %dh, %struct.bignum_st* noundef nonnull %call, %struct.bignum_st* noundef null) #7
  %cmp17.not = icmp eq i32 %call16, 1
  br i1 %cmp17.not, label %cleanup, label %err

err:                                              ; preds = %if.end9, %if.end, %lor.lhs.false, %if.end15, %entry
  %err_reason.0 = phi i32 [ 106, %entry ], [ 106, %if.end15 ], [ 107, %lor.lhs.false ], [ 107, %if.end ], [ 102, %if.end9 ]
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 399, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ossl_dh_buf2key, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef %err_reason.0, i8* noundef null) #7
  call void @BN_free(%struct.bignum_st* noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end15 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %retval.0
}

declare %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare void @DH_get0_pqg(%struct.dh_st* noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef) local_unnamed_addr #2

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @DH_set0_key(%struct.dh_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i64 @ossl_dh_key2buf(%struct.dh_st* noundef %dh, i8** noundef %pbuf_out, i64 noundef %size, i32 noundef %alloc) local_unnamed_addr #0 {
entry:
  %pubkey = alloca %struct.bignum_st*, align 8
  %p = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.bignum_st** %pubkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  %1 = bitcast %struct.bignum_st** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  call void @DH_get0_pqg(%struct.dh_st* noundef %dh, %struct.bignum_st** noundef nonnull %p, %struct.bignum_st** noundef null, %struct.bignum_st** noundef null) #7
  call void @DH_get0_key(%struct.dh_st* noundef %dh, %struct.bignum_st** noundef nonnull %pubkey, %struct.bignum_st** noundef null) #7
  %2 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !25
  %cmp = icmp eq %struct.bignum_st* %2, null
  %3 = load %struct.bignum_st*, %struct.bignum_st** %pubkey, align 8
  %cmp1 = icmp eq %struct.bignum_st* %3, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %call = call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %2) #7
  %add = add nsw i32 %call, 7
  %div = sdiv i32 %add, 8
  %add.off = add i32 %call, 14
  %4 = icmp ult i32 %add.off, 15
  br i1 %4, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %5 = load %struct.bignum_st*, %struct.bignum_st** %pubkey, align 8, !tbaa !25
  %call5 = call i32 @BN_num_bits(%struct.bignum_st* noundef %5) #7
  %add6.off = add i32 %call5, 14
  %6 = icmp ult i32 %add6.off, 15
  br i1 %6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %entry
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 417, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ossl_dh_key2buf, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 102, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %cmp9.not = icmp eq i8** %pbuf_out, null
  br i1 %cmp9.not, label %if.end34, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %tobool.not = icmp eq i32 %alloc, 0
  br i1 %tobool.not, label %lor.lhs.false10, label %if.end21

lor.lhs.false10:                                  ; preds = %land.lhs.true
  %7 = load i8*, i8** %pbuf_out, align 8, !tbaa !25
  %cmp11.not = icmp eq i8* %7, null
  br i1 %cmp11.not, label %if.end34, label %if.then14

if.then14:                                        ; preds = %lor.lhs.false10
  %conv = sext i32 %div to i64
  %cmp15.not = icmp ugt i64 %conv, %size
  br i1 %cmp15.not, label %if.then24, label %if.end25

if.end21:                                         ; preds = %land.lhs.true
  %conv19 = sext i32 %div to i64
  %call20 = call i8* @CRYPTO_malloc(i64 noundef %conv19, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 425) #7
  %cmp22 = icmp eq i8* %call20, null
  br i1 %cmp22, label %if.then24, label %if.end25.thread

if.then24:                                        ; preds = %if.then14, %if.end21
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 429, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ossl_dh_key2buf, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end25:                                         ; preds = %if.then14
  %8 = load %struct.bignum_st*, %struct.bignum_st** %pubkey, align 8, !tbaa !25
  %call26 = call i32 @BN_bn2binpad(%struct.bignum_st* noundef %8, i8* noundef nonnull %7, i32 noundef %div) #7
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.end32, label %if.end33

if.end25.thread:                                  ; preds = %if.end21
  %9 = load %struct.bignum_st*, %struct.bignum_st** %pubkey, align 8, !tbaa !25
  %call2660 = call i32 @BN_bn2binpad(%struct.bignum_st* noundef %9, i8* noundef nonnull %call20, i32 noundef %div) #7
  %cmp2761 = icmp slt i32 %call2660, 0
  br i1 %cmp2761, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end25.thread
  call void @CRYPTO_free(i8* noundef nonnull %call20, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 438) #7
  br label %if.end32

if.end32:                                         ; preds = %if.end25, %if.then31
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 439, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ossl_dh_key2buf, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 106, i8* noundef null) #7
  br label %cleanup

if.end33:                                         ; preds = %if.end25.thread, %if.end25
  %pbuf.05862 = phi i8* [ %call20, %if.end25.thread ], [ %7, %if.end25 ]
  store i8* %pbuf.05862, i8** %pbuf_out, align 8, !tbaa !25
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %lor.lhs.false10, %if.end
  %conv35 = sext i32 %div to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end32, %if.then24, %if.then
  %retval.0 = phi i64 [ 0, %if.then ], [ 0, %if.then24 ], [ 0, %if.end32 ], [ %conv35, %if.end34 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i64 %retval.0
}

declare void @DH_get0_key(%struct.dh_st* noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @generate_key(%struct.dh_st* noundef %dh) #0 {
entry:
  %params = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2
  %p = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 0
  %0 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %0) #7
  %cmp = icmp sgt i32 %call, 10000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 267, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.generate_key, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 103, i8* noundef null) #7
  br label %cleanup133

if.end:                                           ; preds = %entry
  %1 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  %call3 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %1) #7
  %cmp4 = icmp slt i32 %call3, 512
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 272, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.generate_key, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 126, i8* noundef null) #7
  br label %cleanup133

if.end6:                                          ; preds = %if.end
  %libctx = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 11
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !13
  %call7 = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %2) #7
  %cmp8 = icmp eq %struct.bignum_ctx* %call7, null
  br i1 %cmp8, label %if.end122, label %if.end10

if.end10:                                         ; preds = %if.end6
  %priv_key11 = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 5
  %3 = load %struct.bignum_st*, %struct.bignum_st** %priv_key11, align 8, !tbaa !14
  %cmp12 = icmp eq %struct.bignum_st* %3, null
  br i1 %cmp12, label %if.then13, label %if.end19

if.then13:                                        ; preds = %if.end10
  %call14 = tail call %struct.bignum_st* @BN_secure_new() #7
  %cmp15 = icmp eq %struct.bignum_st* %call14, null
  br i1 %cmp15, label %if.end122, label %if.end19

if.end19:                                         ; preds = %if.end10, %if.then13
  %priv_key.0 = phi %struct.bignum_st* [ %call14, %if.then13 ], [ %3, %if.end10 ]
  %pub_key20 = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 4
  %4 = load %struct.bignum_st*, %struct.bignum_st** %pub_key20, align 8, !tbaa !28
  %cmp21 = icmp eq %struct.bignum_st* %4, null
  br i1 %cmp21, label %if.then22, label %if.end29

if.then22:                                        ; preds = %if.end19
  %call23 = tail call %struct.bignum_st* @BN_new() #7
  %cmp24 = icmp eq %struct.bignum_st* %call23, null
  br i1 %cmp24, label %if.end122, label %if.end29

if.end29:                                         ; preds = %if.end19, %if.then22
  %pub_key.0 = phi %struct.bignum_st* [ %call23, %if.then22 ], [ %4, %if.end19 ]
  br i1 %cmp12, label %if.then30, label %if.end112

if.then30:                                        ; preds = %if.end29
  %call31 = tail call i32 @DH_get_nid(%struct.dh_st* noundef nonnull %dh) #7
  %cmp32.not = icmp eq i32 %call31, 0
  br i1 %cmp32.not, label %if.else54, label %if.then33

if.then33:                                        ; preds = %if.then30
  %5 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  %call36 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %5) #7
  %call37 = tail call zeroext i16 @ossl_ifc_ffc_compute_security_bits(i32 noundef %call36) #7
  %conv = zext i16 %call37 to i32
  %q = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2, i32 1
  %6 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !29
  %cmp39 = icmp eq %struct.bignum_st* %6, null
  br i1 %cmp39, label %if.end122, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then33
  %length = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 3
  %7 = load i32, i32* %length, align 8, !tbaa !30
  %call43 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %6) #7
  %cmp44 = icmp sgt i32 %7, %call43
  br i1 %cmp44, label %if.end122, label %if.end47

if.end47:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %length, align 8, !tbaa !30
  %call50 = tail call i32 @ossl_ffc_generate_private_key(%struct.bignum_ctx* noundef nonnull %call7, %struct.ffc_params_st* noundef nonnull %params, i32 noundef %8, i32 noundef %conv, %struct.bignum_st* noundef nonnull %priv_key.0) #7
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end122, label %if.end112

if.else54:                                        ; preds = %if.then30
  %q56 = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2, i32 1
  %9 = load %struct.bignum_st*, %struct.bignum_st** %q56, align 8, !tbaa !29
  %cmp57 = icmp eq %struct.bignum_st* %9, null
  br i1 %cmp57, label %if.then59, label %if.else95

if.then59:                                        ; preds = %if.else54
  %length60 = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 3
  %10 = load i32, i32* %length60, align 8, !tbaa !30
  %cmp61.not = icmp eq i32 %10, 0
  br i1 %cmp61.not, label %cond.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then59
  %11 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  %call66 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %11) #7
  %cmp67.not = icmp slt i32 %10, %call66
  br i1 %cmp67.not, label %if.end70, label %if.end122

if.end70:                                         ; preds = %land.lhs.true
  %.pr = load i32, i32* %length60, align 8, !tbaa !30
  %tobool72.not = icmp eq i32 %.pr, 0
  br i1 %tobool72.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.then59, %if.end70
  %12 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  %call76 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %12) #7
  %sub = add nsw i32 %call76, -1
  br label %cond.end

cond.end:                                         ; preds = %if.end70, %cond.false
  %cond = phi i32 [ %sub, %cond.false ], [ %.pr, %if.end70 ]
  %call77 = tail call i32 @BN_priv_rand_ex(%struct.bignum_st* noundef nonnull %priv_key.0, i32 noundef %cond, i32 noundef 0, i32 noundef 0, i32 noundef 0, %struct.bignum_ctx* noundef nonnull %call7) #7
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end122, label %if.end80

if.end80:                                         ; preds = %cond.end
  %g = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2, i32 2
  %13 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !27
  %call82 = tail call i32 @BN_is_word(%struct.bignum_st* noundef %13, i64 noundef 2) #7
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end112, label %land.lhs.true84

land.lhs.true84:                                  ; preds = %if.end80
  %14 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  %call87 = tail call i32 @BN_is_bit_set(%struct.bignum_st* noundef %14, i32 noundef 2) #7
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.then89, label %if.end112

if.then89:                                        ; preds = %land.lhs.true84
  %call90 = tail call i32 @BN_clear_bit(%struct.bignum_st* noundef nonnull %priv_key.0, i32 noundef 0) #7
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end122, label %if.end112

if.else95:                                        ; preds = %if.else54
  %15 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !13
  %call98 = tail call i32 @ossl_ffc_params_simple_validate(%struct.ossl_lib_ctx_st* noundef %15, %struct.ffc_params_st* noundef nonnull %params, i32 noundef 1, i32* noundef null) #7
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end122, label %if.end101

if.end101:                                        ; preds = %if.else95
  %16 = load %struct.bignum_st*, %struct.bignum_st** %q56, align 8, !tbaa !29
  %call105 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %16) #7
  %call106 = tail call i32 @ossl_ffc_generate_private_key(%struct.bignum_ctx* noundef nonnull %call7, %struct.ffc_params_st* noundef nonnull %params, i32 noundef %call105, i32 noundef 80, %struct.bignum_st* noundef nonnull %priv_key.0) #7
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end122, label %if.end112

if.end112:                                        ; preds = %if.end47, %if.end101, %if.end80, %land.lhs.true84, %if.then89, %if.end29
  %call113 = tail call i32 @ossl_dh_generate_public_key(%struct.bignum_ctx* noundef nonnull %call7, %struct.dh_st* noundef nonnull %dh, %struct.bignum_st* noundef nonnull %priv_key.0, %struct.bignum_st* noundef nonnull %pub_key.0) #9
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end122, label %if.end122.thread

if.end122.thread:                                 ; preds = %if.end112
  store %struct.bignum_st* %pub_key.0, %struct.bignum_st** %pub_key20, align 8, !tbaa !28
  store %struct.bignum_st* %priv_key.0, %struct.bignum_st** %priv_key11, align 8, !tbaa !14
  %dirty_cnt = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 14
  %17 = load i64, i64* %dirty_cnt, align 8, !tbaa !31
  %inc = add i64 %17, 1
  store i64 %inc, i64* %dirty_cnt, align 8, !tbaa !31
  br label %if.end127

if.end122:                                        ; preds = %if.end6, %if.then13, %if.then22, %land.lhs.true, %cond.end, %if.then89, %if.else95, %if.end101, %if.end112, %lor.lhs.false, %if.then33, %if.end47
  %pub_key.1.ph = phi %struct.bignum_st* [ null, %if.end6 ], [ null, %if.then13 ], [ null, %if.then22 ], [ %pub_key.0, %land.lhs.true ], [ %pub_key.0, %cond.end ], [ %pub_key.0, %if.then89 ], [ %pub_key.0, %if.else95 ], [ %pub_key.0, %if.end101 ], [ %pub_key.0, %if.end112 ], [ %pub_key.0, %lor.lhs.false ], [ %pub_key.0, %if.then33 ], [ %pub_key.0, %if.end47 ]
  %priv_key.1.ph = phi %struct.bignum_st* [ null, %if.end6 ], [ null, %if.then13 ], [ %priv_key.0, %if.then22 ], [ %priv_key.0, %land.lhs.true ], [ %priv_key.0, %cond.end ], [ %priv_key.0, %if.then89 ], [ %priv_key.0, %if.else95 ], [ %priv_key.0, %if.end101 ], [ %priv_key.0, %if.end112 ], [ %priv_key.0, %lor.lhs.false ], [ %priv_key.0, %if.then33 ], [ %priv_key.0, %if.end47 ]
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 363, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.generate_key, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 524291, i8* noundef null) #7
  %pub_key123.phi.trans.insert = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 4
  %.pre = load %struct.bignum_st*, %struct.bignum_st** %pub_key123.phi.trans.insert, align 8, !tbaa !28
  %cmp124.not = icmp eq %struct.bignum_st* %pub_key.1.ph, %.pre
  br i1 %cmp124.not, label %if.end127, label %if.then126

if.then126:                                       ; preds = %if.end122
  tail call void @BN_free(%struct.bignum_st* noundef %pub_key.1.ph) #7
  br label %if.end127

if.end127:                                        ; preds = %if.end122.thread, %if.then126, %if.end122
  %ok.0209219 = phi i32 [ 1, %if.end122.thread ], [ 0, %if.then126 ], [ 0, %if.end122 ]
  %priv_key.1213218 = phi %struct.bignum_st* [ %priv_key.0, %if.end122.thread ], [ %priv_key.1.ph, %if.then126 ], [ %priv_key.1.ph, %if.end122 ]
  %priv_key128 = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 5
  %18 = load %struct.bignum_st*, %struct.bignum_st** %priv_key128, align 8, !tbaa !14
  %cmp129.not = icmp eq %struct.bignum_st* %priv_key.1213218, %18
  br i1 %cmp129.not, label %if.end132, label %if.then131

if.then131:                                       ; preds = %if.end127
  tail call void @BN_free(%struct.bignum_st* noundef %priv_key.1213218) #7
  br label %if.end132

if.end132:                                        ; preds = %if.then131, %if.end127
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %call7) #7
  br label %cleanup133

cleanup133:                                       ; preds = %if.end132, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ %ok.0209219, %if.end132 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dh_bn_mod_exp(%struct.dh_st* nocapture noundef readnone %dh, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx, %struct.bn_mont_ctx_st* noundef %m_ctx) #0 {
entry:
  %call = tail call i32 @BN_mod_exp_mont(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx, %struct.bn_mont_ctx_st* noundef %m_ctx) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dh_init(%struct.dh_st* noundef %dh) #0 {
entry:
  %flags = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 6
  %0 = load i32, i32* %flags, align 8, !tbaa !15
  %or = or i32 %0, 1
  store i32 %or, i32* %flags, align 8, !tbaa !15
  %params = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2
  tail call void @ossl_ffc_params_init(%struct.ffc_params_st* noundef nonnull %params) #7
  %dirty_cnt = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 14
  %1 = load i64, i64* %dirty_cnt, align 8, !tbaa !31
  %inc = add i64 %1, 1
  store i64 %inc, i64* %dirty_cnt, align 8, !tbaa !31
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dh_finish(%struct.dh_st* nocapture noundef readonly %dh) #0 {
entry:
  %method_mont_p = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 7
  %0 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %method_mont_p, align 8, !tbaa !32
  tail call void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef %0) #7
  ret i32 1
}

declare %struct.bignum_st* @BN_secure_new() local_unnamed_addr #2

declare i32 @DH_get_nid(%struct.dh_st* noundef) local_unnamed_addr #2

declare zeroext i16 @ossl_ifc_ffc_compute_security_bits(i32 noundef) local_unnamed_addr #2

declare i32 @ossl_ffc_generate_private_key(%struct.bignum_ctx* noundef, %struct.ffc_params_st* noundef, i32 noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_priv_rand_ex(%struct.bignum_st* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_is_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BN_is_bit_set(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BN_clear_bit(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_ffc_params_simple_validate(%struct.ossl_lib_ctx_st* noundef, %struct.ffc_params_st* noundef, i32 noundef, i32* noundef) local_unnamed_addr #2

declare i32 @BN_mod_exp_mont(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef, %struct.bn_mont_ctx_st* noundef) local_unnamed_addr #2

declare void @ossl_ffc_params_init(%struct.ffc_params_st* noundef) local_unnamed_addr #2

declare void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin "no-builtins" }

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
!13 = !{!5, !10, i64 168}
!14 = !{!5, !10, i64 112}
!15 = !{!5, !6, i64 120}
!16 = !{!5, !10, i64 184}
!17 = !{!5, !10, i64 176}
!18 = !{!19, !10, i64 24}
!19 = !{!"dh_method", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !6, i64 48, !10, i64 56, !10, i64 64}
!20 = !{!11, !11, i64 0}
!21 = !{!19, !10, i64 16}
!22 = !{!7, !7, i64 0}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!10, !10, i64 0}
!26 = !{!19, !10, i64 8}
!27 = !{!5, !10, i64 24}
!28 = !{!5, !10, i64 104}
!29 = !{!5, !10, i64 16}
!30 = !{!5, !6, i64 96}
!31 = !{!5, !11, i64 192}
!32 = !{!5, !10, i64 128}
