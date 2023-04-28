; ModuleID = 'crypto/dsa/dsa_ossl.c'
source_filename = "crypto/dsa/dsa_ossl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_method = type { i8*, %struct.DSA_SIG_st* (i8*, i32, %struct.dsa_st*)*, i32 (%struct.dsa_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, i32 (i8*, i32, %struct.DSA_SIG_st*, %struct.dsa_st*)*, i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dsa_st*)*, i32 (%struct.dsa_st*)*, i32, i8*, i32 (%struct.dsa_st*, i32, i8*, i32, i32*, i64*, %struct.bn_gencb_st*)*, i32 (%struct.dsa_st*)* }
%struct.DSA_SIG_st = type { %struct.bignum_st*, %struct.bignum_st* }
%struct.bignum_st = type opaque
%struct.dsa_st = type { i32, i32, %struct.ffc_params_st, %struct.bignum_st*, %struct.bignum_st*, i32, %struct.bn_mont_ctx_st*, i32, %struct.crypto_ex_data_st, %struct.dsa_method*, %struct.engine_st*, i8*, %struct.ossl_lib_ctx_st*, i64 }
%struct.ffc_params_st = type { %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i64, i32, i32, i32, i32, i32, i8*, i8* }
%struct.bn_mont_ctx_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.engine_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type opaque

@default_DSA_method = internal unnamed_addr global %struct.dsa_method* @openssl_dsa_meth, align 8
@openssl_dsa_meth = internal global %struct.dsa_method { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), %struct.DSA_SIG_st* (i8*, i32, %struct.dsa_st*)* @dsa_do_sign, i32 (%struct.dsa_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)* @dsa_sign_setup_no_digest, i32 (i8*, i32, %struct.DSA_SIG_st*, %struct.dsa_st*)* @dsa_do_verify, i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)* null, i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)* null, i32 (%struct.dsa_st*)* @dsa_init, i32 (%struct.dsa_st*)* @dsa_finish, i32 1024, i8* null, i32 (%struct.dsa_st*, i32, i8*, i32, i32*, i64*, %struct.bn_gencb_st*)* null, i32 (%struct.dsa_st*)* null }, align 8
@.str = private unnamed_addr constant [22 x i8] c"crypto/dsa/dsa_ossl.c\00", align 1
@__func__.ossl_dsa_do_sign_int = private unnamed_addr constant [21 x i8] c"ossl_dsa_do_sign_int\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"OpenSSL DSA method\00", align 1
@__func__.dsa_do_verify = private unnamed_addr constant [14 x i8] c"dsa_do_verify\00", align 1
@__func__.dsa_sign_setup = private unnamed_addr constant [15 x i8] c"dsa_sign_setup\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @DSA_set_default_method(%struct.dsa_method* noundef %meth) local_unnamed_addr #0 {
entry:
  store %struct.dsa_method* %meth, %struct.dsa_method** @default_DSA_method, align 8, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.dsa_method* @DSA_get_default_method() local_unnamed_addr #1 {
entry:
  %0 = load %struct.dsa_method*, %struct.dsa_method** @default_DSA_method, align 8, !tbaa !4
  ret %struct.dsa_method* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.dsa_method* @DSA_OpenSSL() local_unnamed_addr #2 {
entry:
  ret %struct.dsa_method* @openssl_dsa_meth
}

; Function Attrs: noinline nounwind uwtable
define %struct.DSA_SIG_st* @ossl_dsa_do_sign_int(i8* noundef %dgst, i32 noundef %dlen, %struct.dsa_st* noundef %dsa) local_unnamed_addr #3 {
entry:
  %kinv = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.bignum_st** %kinv to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store %struct.bignum_st* null, %struct.bignum_st** %kinv, align 8, !tbaa !4
  %p = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 2, i32 0
  %1 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !8
  %cmp = icmp eq %struct.bignum_st* %1, null
  br i1 %cmp, label %if.then119, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %q = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 2, i32 1
  %2 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !14
  %cmp2 = icmp eq %struct.bignum_st* %2, null
  br i1 %cmp2, label %if.then119, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %g = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 2, i32 2
  %3 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !15
  %cmp5 = icmp eq %struct.bignum_st* %3, null
  br i1 %cmp5, label %if.then119, label %if.end

if.end:                                           ; preds = %lor.lhs.false3
  %priv_key = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 4
  %4 = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !16
  %cmp6 = icmp eq %struct.bignum_st* %4, null
  br i1 %cmp6, label %if.then119, label %if.end8

if.end8:                                          ; preds = %if.end
  %call = tail call %struct.DSA_SIG_st* @DSA_SIG_new() #7
  %cmp9 = icmp eq %struct.DSA_SIG_st* %call, null
  br i1 %cmp9, label %if.then119, label %if.end11

if.end11:                                         ; preds = %if.end8
  %call12 = tail call %struct.bignum_st* @BN_new() #7
  %r = getelementptr inbounds %struct.DSA_SIG_st, %struct.DSA_SIG_st* %call, i64 0, i32 0
  store %struct.bignum_st* %call12, %struct.bignum_st** %r, align 8, !tbaa !17
  %call13 = tail call %struct.bignum_st* @BN_new() #7
  %s = getelementptr inbounds %struct.DSA_SIG_st, %struct.DSA_SIG_st* %call, i64 0, i32 1
  store %struct.bignum_st* %call13, %struct.bignum_st** %s, align 8, !tbaa !19
  %5 = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !17
  %cmp15 = icmp eq %struct.bignum_st* %5, null
  %cmp18 = icmp eq %struct.bignum_st* %call13, null
  %or.cond = select i1 %cmp15, i1 true, i1 %cmp18
  br i1 %or.cond, label %if.then119, label %if.end20

if.end20:                                         ; preds = %if.end11
  %libctx = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 12
  %6 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !20
  %call21 = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %6) #7
  %cmp22 = icmp eq %struct.bignum_ctx* %call21, null
  br i1 %cmp22, label %if.then119, label %if.end24

if.end24:                                         ; preds = %if.end20
  %call25 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call21) #7
  %call26 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call21) #7
  %call27 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call21) #7
  %call28 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call21) #7
  %cmp29 = icmp eq %struct.bignum_st* %call28, null
  br i1 %cmp29, label %if.then119, label %redo.preheader

redo.preheader:                                   ; preds = %if.end24
  %call33200 = call fastcc i32 @dsa_sign_setup(%struct.dsa_st* noundef nonnull %dsa, %struct.bignum_ctx* noundef nonnull %call21, %struct.bignum_st** noundef nonnull %kinv, %struct.bignum_st** noundef nonnull %r, i8* noundef %dgst, i32 noundef %dlen) #8
  %tobool.not201 = icmp eq i32 %call33200, 0
  br i1 %tobool.not201, label %if.then119, label %if.end35

if.end35:                                         ; preds = %redo.preheader, %if.then116
  %dlen.addr.0202 = phi i32 [ %dlen.addr.1, %if.then116 ], [ %dlen, %redo.preheader ]
  %7 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !14
  %call38 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %7) #7
  %add = add nsw i32 %call38, 7
  %div = sdiv i32 %add, 8
  %cmp39 = icmp sgt i32 %dlen.addr.0202, %div
  br i1 %cmp39, label %if.then40, label %if.end46

if.then40:                                        ; preds = %if.end35
  %8 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !14
  %call43 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %8) #7
  %add44 = add nsw i32 %call43, 7
  %div45 = sdiv i32 %add44, 8
  br label %if.end46

if.end46:                                         ; preds = %if.then40, %if.end35
  %dlen.addr.1 = phi i32 [ %div45, %if.then40 ], [ %dlen.addr.0202, %if.end35 ]
  %call47 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef %dgst, i32 noundef %dlen.addr.1, %struct.bignum_st* noundef %call25) #7
  %cmp48 = icmp eq %struct.bignum_st* %call47, null
  br i1 %cmp48, label %if.then119, label %do.body

do.body:                                          ; preds = %if.end46, %do.cond
  %9 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !14
  %call53 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %9) #7
  %sub = add nsw i32 %call53, -1
  %call54 = tail call i32 @BN_priv_rand_ex(%struct.bignum_st* noundef %call26, i32 noundef %sub, i32 noundef -1, i32 noundef 0, i32 noundef 0, %struct.bignum_ctx* noundef nonnull %call21) #7
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.then119, label %do.cond

do.cond:                                          ; preds = %do.body
  %call58 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %call26) #7
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %do.end, label %do.body, !llvm.loop !21

do.end:                                           ; preds = %do.cond
  tail call void @BN_set_flags(%struct.bignum_st* noundef %call26, i32 noundef 4) #7
  tail call void @BN_set_flags(%struct.bignum_st* noundef %call27, i32 noundef 4) #7
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %call28, i32 noundef 4) #7
  %10 = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !16
  %11 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !14
  %call63 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef nonnull %call28, %struct.bignum_st* noundef %call26, %struct.bignum_st* noundef %10, %struct.bignum_st* noundef %11, %struct.bignum_ctx* noundef nonnull %call21) #7
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then119, label %if.end66

if.end66:                                         ; preds = %do.end
  %12 = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !17
  %13 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !14
  %call70 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef nonnull %call28, %struct.bignum_st* noundef nonnull %call28, %struct.bignum_st* noundef %12, %struct.bignum_st* noundef %13, %struct.bignum_ctx* noundef nonnull %call21) #7
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then119, label %if.end73

if.end73:                                         ; preds = %if.end66
  %14 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !14
  %call76 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef %call27, %struct.bignum_st* noundef %call26, %struct.bignum_st* noundef %call25, %struct.bignum_st* noundef %14, %struct.bignum_ctx* noundef nonnull %call21) #7
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then119, label %if.end79

if.end79:                                         ; preds = %if.end73
  %15 = load %struct.bignum_st*, %struct.bignum_st** %s, align 8, !tbaa !19
  %16 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !14
  %call83 = tail call i32 @BN_mod_add_quick(%struct.bignum_st* noundef %15, %struct.bignum_st* noundef nonnull %call28, %struct.bignum_st* noundef %call27, %struct.bignum_st* noundef %16) #7
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.then119, label %if.end86

if.end86:                                         ; preds = %if.end79
  %17 = load %struct.bignum_st*, %struct.bignum_st** %s, align 8, !tbaa !19
  %18 = load %struct.bignum_st*, %struct.bignum_st** %kinv, align 8, !tbaa !4
  %19 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !14
  %call91 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef %17, %struct.bignum_st* noundef %17, %struct.bignum_st* noundef %18, %struct.bignum_st* noundef %19, %struct.bignum_ctx* noundef nonnull %call21) #7
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.then119, label %if.end94

if.end94:                                         ; preds = %if.end86
  %20 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !14
  %call97 = tail call %struct.bignum_st* @BN_mod_inverse(%struct.bignum_st* noundef %call26, %struct.bignum_st* noundef %call26, %struct.bignum_st* noundef %20, %struct.bignum_ctx* noundef nonnull %call21) #7
  %cmp98 = icmp eq %struct.bignum_st* %call97, null
  br i1 %cmp98, label %if.then119, label %if.end100

if.end100:                                        ; preds = %if.end94
  %21 = load %struct.bignum_st*, %struct.bignum_st** %s, align 8, !tbaa !19
  %22 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !14
  %call105 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef %21, %struct.bignum_st* noundef %21, %struct.bignum_st* noundef %call26, %struct.bignum_st* noundef %22, %struct.bignum_ctx* noundef nonnull %call21) #7
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.then119, label %if.end108

if.end108:                                        ; preds = %if.end100
  %23 = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !17
  %call110 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %23) #7
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %lor.lhs.false112, label %if.then116

lor.lhs.false112:                                 ; preds = %if.end108
  %24 = load %struct.bignum_st*, %struct.bignum_st** %s, align 8, !tbaa !19
  %call114 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %24) #7
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end120, label %if.then116

if.then116:                                       ; preds = %lor.lhs.false112, %if.end108
  %call33 = call fastcc i32 @dsa_sign_setup(%struct.dsa_st* noundef nonnull %dsa, %struct.bignum_ctx* noundef nonnull %call21, %struct.bignum_st** noundef nonnull %kinv, %struct.bignum_st** noundef nonnull %r, i8* noundef %dgst, i32 noundef %dlen.addr.1) #8
  %tobool.not = icmp eq i32 %call33, 0
  br i1 %tobool.not, label %if.then119, label %if.end35

if.then119:                                       ; preds = %if.then116, %do.end, %if.end66, %if.end73, %if.end79, %if.end86, %if.end100, %if.end94, %if.end46, %do.body, %redo.preheader, %if.end8, %if.end11, %if.end20, %if.end24, %lor.lhs.false3, %lor.lhs.false, %entry, %if.end
  %ctx.0.ph = phi %struct.bignum_ctx* [ null, %if.end ], [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false3 ], [ %call21, %if.end24 ], [ null, %if.end20 ], [ null, %if.end11 ], [ null, %if.end8 ], [ %call21, %redo.preheader ], [ %call21, %do.body ], [ %call21, %if.end46 ], [ %call21, %if.end94 ], [ %call21, %if.end100 ], [ %call21, %if.end86 ], [ %call21, %if.end79 ], [ %call21, %if.end73 ], [ %call21, %if.end66 ], [ %call21, %do.end ], [ %call21, %if.then116 ]
  %reason.0.ph = phi i32 [ 111, %if.end ], [ 101, %entry ], [ 101, %lor.lhs.false ], [ 101, %lor.lhs.false3 ], [ 524291, %if.end24 ], [ 524291, %if.end20 ], [ 524291, %if.end11 ], [ 524291, %if.end8 ], [ 524291, %redo.preheader ], [ 524291, %do.body ], [ 524291, %if.end46 ], [ 524291, %if.end94 ], [ 524291, %if.end100 ], [ 524291, %if.end86 ], [ 524291, %if.end79 ], [ 524291, %if.end73 ], [ 524291, %if.end66 ], [ 524291, %do.end ], [ 524291, %if.then116 ]
  %ret.0.ph = phi %struct.DSA_SIG_st* [ null, %if.end ], [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false3 ], [ %call, %if.end24 ], [ %call, %if.end20 ], [ %call, %if.end11 ], [ null, %if.end8 ], [ %call, %redo.preheader ], [ %call, %do.body ], [ %call, %if.end46 ], [ %call, %if.end94 ], [ %call, %if.end100 ], [ %call, %if.end86 ], [ %call, %if.end79 ], [ %call, %if.end73 ], [ %call, %if.end66 ], [ %call, %do.end ], [ %call, %if.then116 ]
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 177, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ossl_dsa_do_sign_int, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 10, i32 noundef %reason.0.ph, i8* noundef null) #7
  tail call void @DSA_SIG_free(%struct.DSA_SIG_st* noundef %ret.0.ph) #7
  %.pre = load %struct.bignum_st*, %struct.bignum_st** %kinv, align 8, !tbaa !4
  br label %if.end120

if.end120:                                        ; preds = %lor.lhs.false112, %if.then119
  %25 = phi %struct.bignum_st* [ %.pre, %if.then119 ], [ %18, %lor.lhs.false112 ]
  %ctx.0195 = phi %struct.bignum_ctx* [ %ctx.0.ph, %if.then119 ], [ %call21, %lor.lhs.false112 ]
  %ret.1 = phi %struct.DSA_SIG_st* [ null, %if.then119 ], [ %call, %lor.lhs.false112 ]
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %ctx.0195) #7
  tail call void @BN_clear_free(%struct.bignum_st* noundef %25) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret %struct.DSA_SIG_st* %ret.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare %struct.DSA_SIG_st* @DSA_SIG_new() local_unnamed_addr #5

declare %struct.bignum_st* @BN_new() local_unnamed_addr #5

declare %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #5

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @dsa_sign_setup(%struct.dsa_st* noundef %dsa, %struct.bignum_ctx* noundef %ctx_in, %struct.bignum_st** nocapture noundef %kinvp, %struct.bignum_st** nocapture noundef readonly %rp, i8* noundef %dgst, i32 noundef %dlen) unnamed_addr #3 {
entry:
  %0 = load %struct.bignum_st*, %struct.bignum_st** %rp, align 8, !tbaa !4
  %p = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 2, i32 0
  %1 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !8
  %tobool.not = icmp eq %struct.bignum_st* %1, null
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %q = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 2, i32 1
  %2 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !14
  %tobool2.not = icmp eq %struct.bignum_st* %2, null
  br i1 %tobool2.not, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %g = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 2, i32 2
  %3 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !15
  %tobool5.not = icmp eq %struct.bignum_st* %3, null
  br i1 %tobool5.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 208, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.dsa_sign_setup, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 10, i32 noundef 101, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %call = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %1) #7
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %if.then19

lor.lhs.false9:                                   ; preds = %if.end
  %4 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !14
  %call12 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %4) #7
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %lor.lhs.false14, label %if.then19

lor.lhs.false14:                                  ; preds = %lor.lhs.false9
  %5 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !15
  %call17 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %5) #7
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %lor.lhs.false14, %lor.lhs.false9, %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 216, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.dsa_sign_setup, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 10, i32 noundef 112, i8* noundef null) #7
  br label %cleanup

if.end20:                                         ; preds = %lor.lhs.false14
  %priv_key = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 4
  %6 = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !16
  %cmp = icmp eq %struct.bignum_st* %6, null
  br i1 %cmp, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end20
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 220, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.dsa_sign_setup, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 10, i32 noundef 111, i8* noundef null) #7
  br label %cleanup

if.end22:                                         ; preds = %if.end20
  %call23 = tail call %struct.bignum_st* @BN_new() #7
  %call24 = tail call %struct.bignum_st* @BN_new() #7
  %cmp25 = icmp eq %struct.bignum_st* %call23, null
  %cmp27 = icmp eq %struct.bignum_st* %call24, null
  %or.cond = select i1 %cmp25, i1 true, i1 %cmp27
  br i1 %or.cond, label %if.then132, label %if.end29

if.end29:                                         ; preds = %if.end22
  %cmp30 = icmp eq %struct.bignum_ctx* %ctx_in, null
  br i1 %cmp30, label %if.then31, label %if.end36

if.then31:                                        ; preds = %if.end29
  %call32 = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef null) #7
  %cmp33 = icmp eq %struct.bignum_ctx* %call32, null
  br i1 %cmp33, label %if.then132, label %if.end36

if.end36:                                         ; preds = %if.end29, %if.then31
  %ctx.0 = phi %struct.bignum_ctx* [ %call32, %if.then31 ], [ %ctx_in, %if.end29 ]
  %7 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !14
  %call39 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %7) #7
  %8 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !14
  %call42 = tail call i32 @bn_get_top(%struct.bignum_st* noundef %8) #7
  %add = add nsw i32 %call42, 2
  %call43 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef nonnull %call23, i32 noundef %add) #7
  %tobool44.not = icmp eq %struct.bignum_st* %call43, null
  br i1 %tobool44.not, label %if.then132, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %if.end36
  %call47 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef nonnull %call24, i32 noundef %add) #7
  %tobool48.not = icmp eq %struct.bignum_st* %call47, null
  br i1 %tobool48.not, label %if.then132, label %do.body.preheader

do.body.preheader:                                ; preds = %lor.lhs.false45
  %cmp51.not = icmp eq i8* %dgst, null
  %conv = sext i32 %dlen to i64
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %do.cond
  %9 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !14
  br i1 %cmp51.not, label %if.else60, label %if.then52

if.then52:                                        ; preds = %do.body
  %10 = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !16
  %call56 = tail call i32 @BN_generate_dsa_nonce(%struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %9, %struct.bignum_st* noundef %10, i8* noundef nonnull %dgst, i64 noundef %conv, %struct.bignum_ctx* noundef %ctx.0) #7
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then132, label %do.cond

if.else60:                                        ; preds = %do.body
  %call63 = tail call i32 @BN_priv_rand_range_ex(%struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %9, i32 noundef 0, %struct.bignum_ctx* noundef %ctx.0) #7
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then132, label %do.cond

do.cond:                                          ; preds = %if.then52, %if.else60
  %call68 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %call23) #7
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %do.end, label %do.body, !llvm.loop !23

do.end:                                           ; preds = %do.cond
  tail call void @BN_set_flags(%struct.bignum_st* noundef %call23, i32 noundef 4) #7
  tail call void @BN_set_flags(%struct.bignum_st* noundef %call24, i32 noundef 4) #7
  %flags = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 5
  %11 = load i32, i32* %flags, align 8, !tbaa !24
  %and = and i32 %11, 1
  %tobool70.not = icmp eq i32 %and, 0
  br i1 %tobool70.not, label %if.end78, label %if.then71

if.then71:                                        ; preds = %do.end
  %method_mont_p = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 6
  %lock = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 11
  %12 = load i8*, i8** %lock, align 8, !tbaa !25
  %13 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !8
  %call74 = tail call %struct.bn_mont_ctx_st* @BN_MONT_CTX_set_locked(%struct.bn_mont_ctx_st** noundef nonnull %method_mont_p, i8* noundef %12, %struct.bignum_st* noundef %13, %struct.bignum_ctx* noundef %ctx.0) #7
  %tobool75.not = icmp eq %struct.bn_mont_ctx_st* %call74, null
  br i1 %tobool75.not, label %if.then132, label %if.end78

if.end78:                                         ; preds = %if.then71, %do.end
  %14 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !14
  %call81 = tail call i32 @BN_add(%struct.bignum_st* noundef %call24, %struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %14) #7
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.then132, label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %if.end78
  %15 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !14
  %call86 = tail call i32 @BN_add(%struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %call24, %struct.bignum_st* noundef %15) #7
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.then132, label %if.end89

if.end89:                                         ; preds = %lor.lhs.false83
  %call90 = tail call i32 @BN_is_bit_set(%struct.bignum_st* noundef %call24, i32 noundef %call39) #7
  %conv91 = sext i32 %call90 to i64
  tail call void @BN_consttime_swap(i64 noundef %conv91, %struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %call24, i32 noundef %add) #7
  %meth = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 9
  %16 = load %struct.dsa_method*, %struct.dsa_method** %meth, align 8, !tbaa !26
  %bn_mod_exp = getelementptr inbounds %struct.dsa_method, %struct.dsa_method* %16, i64 0, i32 5
  %17 = load i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)** %bn_mod_exp, align 8, !tbaa !27
  %cmp93.not = icmp eq i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)* %17, null
  %18 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !15
  %19 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !8
  %method_mont_p112 = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 6
  %20 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %method_mont_p112, align 8, !tbaa !29
  br i1 %cmp93.not, label %if.else107, label %if.then95

if.then95:                                        ; preds = %if.end89
  %call103 = tail call i32 %17(%struct.dsa_st* noundef nonnull %dsa, %struct.bignum_st* noundef %0, %struct.bignum_st* noundef %18, %struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %19, %struct.bignum_ctx* noundef %ctx.0, %struct.bn_mont_ctx_st* noundef %20) #7
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.then132, label %if.end117

if.else107:                                       ; preds = %if.end89
  %call113 = tail call i32 @BN_mod_exp_mont(%struct.bignum_st* noundef %0, %struct.bignum_st* noundef %18, %struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %19, %struct.bignum_ctx* noundef %ctx.0, %struct.bn_mont_ctx_st* noundef %20) #7
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.then132, label %if.end117

if.end117:                                        ; preds = %if.else107, %if.then95
  %21 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !14
  %call120 = tail call i32 @BN_div(%struct.bignum_st* noundef null, %struct.bignum_st* noundef %0, %struct.bignum_st* noundef %0, %struct.bignum_st* noundef %21, %struct.bignum_ctx* noundef %ctx.0) #7
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.then132, label %if.end123

if.end123:                                        ; preds = %if.end117
  %22 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !14
  %call126 = tail call fastcc %struct.bignum_st* @dsa_mod_inverse_fermat(%struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %22, %struct.bignum_ctx* noundef %ctx.0) #8
  %cmp127 = icmp eq %struct.bignum_st* %call126, null
  br i1 %cmp127, label %if.then132, label %err

err:                                              ; preds = %if.end123
  %23 = load %struct.bignum_st*, %struct.bignum_st** %kinvp, align 8, !tbaa !4
  tail call void @BN_clear_free(%struct.bignum_st* noundef %23) #7
  store %struct.bignum_st* %call126, %struct.bignum_st** %kinvp, align 8, !tbaa !4
  br label %if.end133

if.then132:                                       ; preds = %if.else60, %if.then52, %if.end123, %if.end117, %if.else107, %if.then95, %if.end78, %lor.lhs.false83, %if.then71, %if.end36, %lor.lhs.false45, %if.then31, %if.end22
  %ctx.1.ph = phi %struct.bignum_ctx* [ null, %if.end22 ], [ null, %if.then31 ], [ %ctx.0, %lor.lhs.false45 ], [ %ctx.0, %if.end36 ], [ %ctx.0, %if.then71 ], [ %ctx.0, %lor.lhs.false83 ], [ %ctx.0, %if.end78 ], [ %ctx.0, %if.then95 ], [ %ctx.0, %if.else107 ], [ %ctx.0, %if.end117 ], [ %ctx.0, %if.end123 ], [ %ctx.0, %if.then52 ], [ %ctx.0, %if.else60 ]
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 310, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.dsa_sign_setup, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 10, i32 noundef 524291, i8* noundef null) #7
  br label %if.end133

if.end133:                                        ; preds = %err, %if.then132
  %ctx.1224 = phi %struct.bignum_ctx* [ %ctx.1.ph, %if.then132 ], [ %ctx.0, %err ]
  %ret.0222 = phi i32 [ 0, %if.then132 ], [ 1, %err ]
  %cmp134.not = icmp eq %struct.bignum_ctx* %ctx.1224, %ctx_in
  br i1 %cmp134.not, label %if.end137, label %if.then136

if.then136:                                       ; preds = %if.end133
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %ctx.1224) #7
  br label %if.end137

if.end137:                                        ; preds = %if.then136, %if.end133
  tail call void @BN_clear_free(%struct.bignum_st* noundef %call23) #7
  tail call void @BN_clear_free(%struct.bignum_st* noundef %call24) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end137, %if.then21, %if.then19, %if.then
  %retval.0 = phi i32 [ 0, %if.then19 ], [ 0, %if.then21 ], [ %ret.0222, %if.end137 ], [ 0, %if.then ]
  ret i32 %retval.0
}

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #5

declare %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #5

declare i32 @BN_priv_rand_ex(%struct.bignum_st* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #5

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #5

declare void @BN_set_flags(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #5

declare i32 @BN_mod_mul(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #5

declare i32 @BN_mod_add_quick(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #5

declare %struct.bignum_st* @BN_mod_inverse(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #5

declare void @ERR_new() local_unnamed_addr #5

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #5

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #5

declare void @DSA_SIG_free(%struct.DSA_SIG_st* noundef) local_unnamed_addr #5

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #5

declare void @BN_clear_free(%struct.bignum_st* noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: noinline nounwind uwtable
define internal %struct.DSA_SIG_st* @dsa_do_sign(i8* noundef %dgst, i32 noundef %dlen, %struct.dsa_st* noundef %dsa) #3 {
entry:
  %call = tail call %struct.DSA_SIG_st* @ossl_dsa_do_sign_int(i8* noundef %dgst, i32 noundef %dlen, %struct.dsa_st* noundef %dsa) #8
  ret %struct.DSA_SIG_st* %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dsa_sign_setup_no_digest(%struct.dsa_st* noundef %dsa, %struct.bignum_ctx* noundef %ctx_in, %struct.bignum_st** nocapture noundef %kinvp, %struct.bignum_st** nocapture noundef readonly %rp) #3 {
entry:
  %call = tail call fastcc i32 @dsa_sign_setup(%struct.dsa_st* noundef %dsa, %struct.bignum_ctx* noundef %ctx_in, %struct.bignum_st** noundef %kinvp, %struct.bignum_st** noundef %rp, i8* noundef null, i32 noundef 0) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dsa_do_verify(i8* noundef %dgst, i32 noundef %dgst_len, %struct.DSA_SIG_st* noundef %sig, %struct.dsa_st* noundef %dsa) #3 {
entry:
  %r = alloca %struct.bignum_st*, align 8
  %s = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.bignum_st** %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %1 = bitcast %struct.bignum_st** %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  %p = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 2, i32 0
  %2 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !8
  %cmp = icmp eq %struct.bignum_st* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %q = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 2, i32 1
  %3 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !14
  %cmp2 = icmp eq %struct.bignum_st* %3, null
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %g = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 2, i32 2
  %4 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !15
  %cmp5 = icmp eq %struct.bignum_st* %4, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 330, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.dsa_do_verify, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 10, i32 noundef 101, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %3) #7
  switch i32 %call, label %if.then12 [
    i32 256, label %if.end13
    i32 224, label %if.end13
    i32 160, label %if.end13
  ]

if.then12:                                        ; preds = %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 337, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.dsa_do_verify, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 10, i32 noundef 102, i8* noundef null) #7
  br label %cleanup

if.end13:                                         ; preds = %if.end, %if.end, %if.end
  %5 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !8
  %call16 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %5) #7
  %cmp17 = icmp sgt i32 %call16, 10000
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end13
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 342, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.dsa_do_verify, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 10, i32 noundef 103, i8* noundef null) #7
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %call20 = tail call %struct.bignum_st* @BN_new() #7
  %call21 = tail call %struct.bignum_st* @BN_new() #7
  %call22 = tail call %struct.bignum_st* @BN_new() #7
  %call23 = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef null) #7
  %cmp24 = icmp eq %struct.bignum_st* %call20, null
  %cmp26 = icmp eq %struct.bignum_st* %call21, null
  %or.cond134 = select i1 %cmp24, i1 true, i1 %cmp26
  %cmp28 = icmp eq %struct.bignum_st* %call22, null
  %or.cond135 = select i1 %or.cond134, i1 true, i1 %cmp28
  %cmp30 = icmp eq %struct.bignum_ctx* %call23, null
  %or.cond136 = select i1 %or.cond135, i1 true, i1 %cmp30
  br i1 %or.cond136, label %if.then123, label %if.end32

if.end32:                                         ; preds = %if.end19
  call void @DSA_SIG_get0(%struct.DSA_SIG_st* noundef %sig, %struct.bignum_st** noundef nonnull %r, %struct.bignum_st** noundef nonnull %s) #7
  %6 = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !4
  %call33 = call i32 @BN_is_zero(%struct.bignum_st* noundef %6) #7
  %tobool.not = icmp eq i32 %call33, 0
  br i1 %tobool.not, label %lor.lhs.false34, label %if.end124

lor.lhs.false34:                                  ; preds = %if.end32
  %7 = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !4
  %call35 = call i32 @BN_is_negative(%struct.bignum_st* noundef %7) #7
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %lor.lhs.false37, label %if.end124

lor.lhs.false37:                                  ; preds = %lor.lhs.false34
  %8 = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !4
  %9 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !14
  %call40 = call i32 @BN_ucmp(%struct.bignum_st* noundef %8, %struct.bignum_st* noundef %9) #7
  %cmp41 = icmp sgt i32 %call40, -1
  br i1 %cmp41, label %if.end124, label %if.end43

if.end43:                                         ; preds = %lor.lhs.false37
  %10 = load %struct.bignum_st*, %struct.bignum_st** %s, align 8, !tbaa !4
  %call44 = call i32 @BN_is_zero(%struct.bignum_st* noundef %10) #7
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %lor.lhs.false46, label %if.end124

lor.lhs.false46:                                  ; preds = %if.end43
  %11 = load %struct.bignum_st*, %struct.bignum_st** %s, align 8, !tbaa !4
  %call47 = call i32 @BN_is_negative(%struct.bignum_st* noundef %11) #7
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %lor.lhs.false49, label %if.end124

lor.lhs.false49:                                  ; preds = %lor.lhs.false46
  %12 = load %struct.bignum_st*, %struct.bignum_st** %s, align 8, !tbaa !4
  %13 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !14
  %call52 = call i32 @BN_ucmp(%struct.bignum_st* noundef %12, %struct.bignum_st* noundef %13) #7
  %cmp53 = icmp sgt i32 %call52, -1
  br i1 %cmp53, label %if.end124, label %if.end55

if.end55:                                         ; preds = %lor.lhs.false49
  %14 = load %struct.bignum_st*, %struct.bignum_st** %s, align 8, !tbaa !4
  %15 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !14
  %call58 = call %struct.bignum_st* @BN_mod_inverse(%struct.bignum_st* noundef nonnull %call21, %struct.bignum_st* noundef %14, %struct.bignum_st* noundef %15, %struct.bignum_ctx* noundef nonnull %call23) #7
  %cmp59 = icmp eq %struct.bignum_st* %call58, null
  br i1 %cmp59, label %if.then123, label %if.end61

if.end61:                                         ; preds = %if.end55
  %shr207 = lshr i32 %call, 3
  %cmp62 = icmp slt i32 %shr207, %dgst_len
  %spec.select = select i1 %cmp62, i32 %shr207, i32 %dgst_len
  %call66 = call %struct.bignum_st* @BN_bin2bn(i8* noundef %dgst, i32 noundef %spec.select, %struct.bignum_st* noundef nonnull %call20) #7
  %cmp67 = icmp eq %struct.bignum_st* %call66, null
  br i1 %cmp67, label %if.then123, label %if.end69

if.end69:                                         ; preds = %if.end61
  %16 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !14
  %call72 = call i32 @BN_mod_mul(%struct.bignum_st* noundef nonnull %call20, %struct.bignum_st* noundef nonnull %call20, %struct.bignum_st* noundef nonnull %call21, %struct.bignum_st* noundef %16, %struct.bignum_ctx* noundef nonnull %call23) #7
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.then123, label %if.end75

if.end75:                                         ; preds = %if.end69
  %17 = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !4
  %18 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !14
  %call78 = call i32 @BN_mod_mul(%struct.bignum_st* noundef nonnull %call21, %struct.bignum_st* noundef %17, %struct.bignum_st* noundef nonnull %call21, %struct.bignum_st* noundef %18, %struct.bignum_ctx* noundef nonnull %call23) #7
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.then123, label %if.end81

if.end81:                                         ; preds = %if.end75
  %flags = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 5
  %19 = load i32, i32* %flags, align 8, !tbaa !24
  %and = and i32 %19, 1
  %tobool82.not = icmp eq i32 %and, 0
  br i1 %tobool82.not, label %if.end90, label %if.then83

if.then83:                                        ; preds = %if.end81
  %method_mont_p = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 6
  %lock = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 11
  %20 = load i8*, i8** %lock, align 8, !tbaa !25
  %21 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !8
  %call86 = call %struct.bn_mont_ctx_st* @BN_MONT_CTX_set_locked(%struct.bn_mont_ctx_st** noundef nonnull %method_mont_p, i8* noundef %20, %struct.bignum_st* noundef %21, %struct.bignum_ctx* noundef nonnull %call23) #7
  %tobool87.not = icmp eq %struct.bn_mont_ctx_st* %call86, null
  br i1 %tobool87.not, label %if.then123, label %if.end90

if.end90:                                         ; preds = %if.then83, %if.end81
  %mont.0 = phi %struct.bn_mont_ctx_st* [ %call86, %if.then83 ], [ null, %if.end81 ]
  %meth = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 9
  %22 = load %struct.dsa_method*, %struct.dsa_method** %meth, align 8, !tbaa !26
  %dsa_mod_exp = getelementptr inbounds %struct.dsa_method, %struct.dsa_method* %22, i64 0, i32 4
  %23 = load i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)** %dsa_mod_exp, align 8, !tbaa !30
  %cmp91.not = icmp eq i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)* %23, null
  %24 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !15
  %pub_key105 = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 3
  %25 = load %struct.bignum_st*, %struct.bignum_st** %pub_key105, align 8, !tbaa !31
  %26 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !8
  br i1 %cmp91.not, label %if.else, label %if.then92

if.then92:                                        ; preds = %if.end90
  %call99 = call i32 %23(%struct.dsa_st* noundef nonnull %dsa, %struct.bignum_st* noundef nonnull %call22, %struct.bignum_st* noundef %24, %struct.bignum_st* noundef nonnull %call20, %struct.bignum_st* noundef %25, %struct.bignum_st* noundef nonnull %call21, %struct.bignum_st* noundef %26, %struct.bignum_ctx* noundef nonnull %call23, %struct.bn_mont_ctx_st* noundef %mont.0) #7
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.then123, label %if.end112

if.else:                                          ; preds = %if.end90
  %call108 = call i32 @BN_mod_exp2_mont(%struct.bignum_st* noundef nonnull %call22, %struct.bignum_st* noundef %24, %struct.bignum_st* noundef nonnull %call20, %struct.bignum_st* noundef %25, %struct.bignum_st* noundef nonnull %call21, %struct.bignum_st* noundef %26, %struct.bignum_ctx* noundef nonnull %call23, %struct.bn_mont_ctx_st* noundef %mont.0) #7
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.then123, label %if.end112

if.end112:                                        ; preds = %if.else, %if.then92
  %27 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !14
  %call115 = call i32 @BN_div(%struct.bignum_st* noundef null, %struct.bignum_st* noundef nonnull %call20, %struct.bignum_st* noundef nonnull %call22, %struct.bignum_st* noundef %27, %struct.bignum_ctx* noundef nonnull %call23) #7
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.then123, label %if.end118

if.end118:                                        ; preds = %if.end112
  %28 = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !4
  %call119 = call i32 @BN_ucmp(%struct.bignum_st* noundef nonnull %call20, %struct.bignum_st* noundef %28) #7
  %cmp120 = icmp eq i32 %call119, 0
  %conv = zext i1 %cmp120 to i32
  br label %if.end124

if.then123:                                       ; preds = %if.end19, %if.end55, %if.end61, %if.end112, %if.then92, %if.else, %if.then83, %if.end75, %if.end69
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 418, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.dsa_do_verify, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 10, i32 noundef 524291, i8* noundef null) #7
  br label %if.end124

if.end124:                                        ; preds = %if.end118, %lor.lhs.false37, %lor.lhs.false34, %if.end32, %lor.lhs.false49, %lor.lhs.false46, %if.end43, %if.then123
  %ret.0205 = phi i32 [ -1, %if.then123 ], [ %conv, %if.end118 ], [ 0, %lor.lhs.false37 ], [ 0, %lor.lhs.false34 ], [ 0, %if.end32 ], [ 0, %lor.lhs.false49 ], [ 0, %lor.lhs.false46 ], [ 0, %if.end43 ]
  call void @BN_CTX_free(%struct.bignum_ctx* noundef %call23) #7
  call void @BN_free(%struct.bignum_st* noundef %call20) #7
  call void @BN_free(%struct.bignum_st* noundef %call21) #7
  call void @BN_free(%struct.bignum_st* noundef %call22) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end124, %if.then18, %if.then12, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then12 ], [ -1, %if.then18 ], [ %ret.0205, %if.end124 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dsa_init(%struct.dsa_st* noundef %dsa) #3 {
entry:
  %flags = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 5
  %0 = load i32, i32* %flags, align 8, !tbaa !24
  %or = or i32 %0, 1
  store i32 %or, i32* %flags, align 8, !tbaa !24
  %params = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 2
  tail call void @ossl_ffc_params_init(%struct.ffc_params_st* noundef nonnull %params) #7
  %dirty_cnt = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 13
  %1 = load i64, i64* %dirty_cnt, align 8, !tbaa !32
  %inc = add i64 %1, 1
  store i64 %inc, i64* %dirty_cnt, align 8, !tbaa !32
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dsa_finish(%struct.dsa_st* nocapture noundef readonly %dsa) #3 {
entry:
  %method_mont_p = getelementptr inbounds %struct.dsa_st, %struct.dsa_st* %dsa, i64 0, i32 6
  %0 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %method_mont_p, align 8, !tbaa !29
  tail call void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef %0) #7
  ret i32 1
}

declare void @DSA_SIG_get0(%struct.DSA_SIG_st* noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef) local_unnamed_addr #5

declare i32 @BN_is_negative(%struct.bignum_st* noundef) local_unnamed_addr #5

declare i32 @BN_ucmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #5

declare %struct.bn_mont_ctx_st* @BN_MONT_CTX_set_locked(%struct.bn_mont_ctx_st** noundef, i8* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #5

declare i32 @BN_mod_exp2_mont(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef, %struct.bn_mont_ctx_st* noundef) local_unnamed_addr #5

declare i32 @BN_div(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #5

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #5

declare void @ossl_ffc_params_init(%struct.ffc_params_st* noundef) local_unnamed_addr #5

declare void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef) local_unnamed_addr #5

declare i32 @bn_get_top(%struct.bignum_st* noundef) local_unnamed_addr #5

declare %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #5

declare i32 @BN_generate_dsa_nonce(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, i8* noundef, i64 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #5

declare i32 @BN_priv_rand_range_ex(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #5

declare i32 @BN_add(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #5

declare void @BN_consttime_swap(i64 noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #5

declare i32 @BN_is_bit_set(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #5

declare i32 @BN_mod_exp_mont(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef, %struct.bn_mont_ctx_st* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.bignum_st* @dsa_mod_inverse_fermat(%struct.bignum_st* noundef %k, %struct.bignum_st* noundef %q, %struct.bignum_ctx* noundef %ctx) unnamed_addr #3 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #7
  %cmp = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #7
  %call1 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #7
  %cmp2.not = icmp eq %struct.bignum_st* %call1, null
  br i1 %cmp2.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call i32 @BN_set_word(%struct.bignum_st* noundef nonnull %call, i64 noundef 2) #7
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.else, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %land.lhs.true
  %call5 = tail call i32 @BN_sub(%struct.bignum_st* noundef nonnull %call1, %struct.bignum_st* noundef %q, %struct.bignum_st* noundef nonnull %call) #7
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.else, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %land.lhs.true4
  %call8 = tail call i32 @BN_mod_exp_mont(%struct.bignum_st* noundef nonnull %call, %struct.bignum_st* noundef %k, %struct.bignum_st* noundef nonnull %call1, %struct.bignum_st* noundef %q, %struct.bignum_ctx* noundef %ctx, %struct.bn_mont_ctx_st* noundef null) #7
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.else, label %if.end11

if.else:                                          ; preds = %land.lhs.true7, %land.lhs.true4, %land.lhs.true, %if.end
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call) #7
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true7, %if.else
  %res.0 = phi %struct.bignum_st* [ null, %if.else ], [ %call, %land.lhs.true7 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end11
  %retval.0 = phi %struct.bignum_st* [ %res.0, %if.end11 ], [ null, %entry ]
  ret %struct.bignum_st* %retval.0
}

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #5

declare i32 @BN_set_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #5

declare i32 @BN_sub(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #5

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }

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
!8 = !{!9, !5, i64 8}
!9 = !{!"dsa_st", !10, i64 0, !10, i64 4, !11, i64 8, !5, i64 96, !5, i64 104, !10, i64 112, !5, i64 120, !6, i64 128, !13, i64 136, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !12, i64 184}
!10 = !{!"int", !6, i64 0}
!11 = !{!"ffc_params_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !12, i64 40, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !5, i64 72, !5, i64 80}
!12 = !{!"long", !6, i64 0}
!13 = !{!"crypto_ex_data_st", !5, i64 0, !5, i64 8}
!14 = !{!9, !5, i64 16}
!15 = !{!9, !5, i64 24}
!16 = !{!9, !5, i64 104}
!17 = !{!18, !5, i64 0}
!18 = !{!"DSA_SIG_st", !5, i64 0, !5, i64 8}
!19 = !{!18, !5, i64 8}
!20 = !{!9, !5, i64 176}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22}
!24 = !{!9, !10, i64 112}
!25 = !{!9, !5, i64 168}
!26 = !{!9, !5, i64 152}
!27 = !{!28, !5, i64 40}
!28 = !{!"dsa_method", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !10, i64 64, !5, i64 72, !5, i64 80, !5, i64 88}
!29 = !{!9, !5, i64 120}
!30 = !{!28, !5, i64 32}
!31 = !{!9, !5, i64 96}
!32 = !{!9, !12, i64 184}
