; ModuleID = 'crypto/rsa/rsa_pss.c'
source_filename = "crypto/rsa/rsa_pss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsa_pss_params_30_st = type { i32, %struct.anon, i32, i32 }
%struct.anon = type { i32, i32 }
%struct.rsa_st = type { i32, %struct.ossl_lib_ctx_st*, i32, %struct.rsa_meth_st*, %struct.engine_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.rsa_pss_params_30_st, %struct.rsa_pss_params_st*, %struct.stack_st_RSA_PRIME_INFO*, %struct.crypto_ex_data_st, i32, i32, %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st*, %struct.bn_blinding_st*, %struct.bn_blinding_st*, i8*, i32 }
%struct.ossl_lib_ctx_st = type opaque
%struct.rsa_meth_st = type { i8*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.rsa_st*, %struct.bignum_ctx*)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.rsa_st*)*, i32 (%struct.rsa_st*)*, i32, i8*, i32 (i32, i8*, i32, i8*, i32*, %struct.rsa_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.rsa_st*)*, i32 (%struct.rsa_st*, i32, %struct.bignum_st*, %struct.bn_gencb_st*)*, i32 (%struct.rsa_st*, i32, i32, %struct.bignum_st*, %struct.bn_gencb_st*)* }
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type opaque
%struct.engine_st = type opaque
%struct.bignum_st = type opaque
%struct.rsa_pss_params_st = type { %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.X509_algor_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.X509_algor_st = type opaque
%struct.stack_st_RSA_PRIME_INFO = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.bn_mont_ctx_st = type opaque
%struct.bn_blinding_st = type opaque
%struct.evp_md_st = type opaque
%struct.evp_md_ctx_st = type opaque

@.str = private unnamed_addr constant [21 x i8] c"crypto/rsa/rsa_pss.c\00", align 1
@__func__.RSA_verify_PKCS1_PSS_mgf1 = private unnamed_addr constant [26 x i8] c"RSA_verify_PKCS1_PSS_mgf1\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"expected: %d retrieved: %d\00", align 1
@zeroes = internal constant [8 x i8] zeroinitializer, align 1
@__func__.RSA_padding_add_PKCS1_PSS_mgf1 = private unnamed_addr constant [31 x i8] c"RSA_padding_add_PKCS1_PSS_mgf1\00", align 1
@default_RSASSA_PSS_params = internal unnamed_addr constant %struct.rsa_pss_params_30_st { i32 64, %struct.anon { i32 911, i32 64 }, i32 20, i32 1 }, align 4
@ossl_rsa_pss_params_30_is_unrestricted.pss_params_cmp = internal global %struct.rsa_pss_params_30_st zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_verify_PKCS1_PSS(%struct.rsa_st* noundef %rsa, i8* noundef %mHash, %struct.evp_md_st* noundef %Hash, i8* noundef %EM, i32 noundef %sLen) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @RSA_verify_PKCS1_PSS_mgf1(%struct.rsa_st* noundef %rsa, i8* noundef %mHash, %struct.evp_md_st* noundef %Hash, %struct.evp_md_st* noundef null, i8* noundef %EM, i32 noundef %sLen) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_verify_PKCS1_PSS_mgf1(%struct.rsa_st* noundef %rsa, i8* noundef %mHash, %struct.evp_md_st* noundef %Hash, %struct.evp_md_st* noundef %mgf1Hash, i8* noundef %EM, i32 noundef %sLen) local_unnamed_addr #0 {
entry:
  %H_ = alloca [64 x i8], align 16
  %call = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #11
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %H_, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #12
  %cmp = icmp eq %struct.evp_md_ctx_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct.evp_md_st* %mgf1Hash, null
  %spec.select = select i1 %cmp1, %struct.evp_md_st* %Hash, %struct.evp_md_st* %mgf1Hash
  %call4 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %Hash) #11
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %err, label %if.end7

if.end7:                                          ; preds = %if.end
  %cmp8 = icmp eq i32 %sLen, -1
  br i1 %cmp8, label %if.end13, label %if.else

if.else:                                          ; preds = %if.end7
  %cmp10 = icmp slt i32 %sLen, -3
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.else
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.RSA_verify_PKCS1_PSS_mgf1, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 136, i8* noundef null) #11
  br label %err

if.end13:                                         ; preds = %if.end7, %if.else
  %sLen.addr.0 = phi i32 [ %sLen, %if.else ], [ %call4, %if.end7 ]
  %n = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 5
  %1 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !4
  %call14 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %1) #11
  %sub = add i32 %call14, 7
  %and = and i32 %sub, 7
  %call15 = tail call i32 @RSA_size(%struct.rsa_st* noundef %rsa) #11
  %2 = load i8, i8* %EM, align 1, !tbaa !13
  %conv = zext i8 %2 to i32
  %shl = shl nuw nsw i32 255, %and
  %and16 = and i32 %shl, %conv
  %tobool.not = icmp eq i32 %and16, 0
  br i1 %tobool.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end13
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.RSA_verify_PKCS1_PSS_mgf1, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 133, i8* noundef null) #11
  br label %err

if.end18:                                         ; preds = %if.end13
  %cmp19 = icmp eq i32 %and, 0
  %dec = sext i1 %cmp19 to i32
  %emLen.0 = add nsw i32 %call15, %dec
  %EM.addr.0.idx = zext i1 %cmp19 to i64
  %EM.addr.0 = getelementptr i8, i8* %EM, i64 %EM.addr.0.idx
  %add = add nuw nsw i32 %call4, 2
  %cmp23 = icmp slt i32 %emLen.0, %add
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end18
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.RSA_verify_PKCS1_PSS_mgf1, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 109, i8* noundef null) #11
  br label %err

if.end26:                                         ; preds = %if.end18
  %cmp27 = icmp eq i32 %sLen.addr.0, -3
  %sub30 = sub nuw i32 -2, %call4
  %sub31 = add i32 %sub30, %emLen.0
  br i1 %cmp27, label %if.end39, label %if.else32

if.else32:                                        ; preds = %if.end26
  %cmp35 = icmp sgt i32 %sLen.addr.0, %sub31
  br i1 %cmp35, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.else32
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.RSA_verify_PKCS1_PSS_mgf1, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 109, i8* noundef null) #11
  br label %err

if.end39:                                         ; preds = %if.end26, %if.else32
  %sLen.addr.1 = phi i32 [ %sLen.addr.0, %if.else32 ], [ %sub31, %if.end26 ]
  %sub40 = add nsw i32 %emLen.0, -1
  %idxprom = sext i32 %sub40 to i64
  %arrayidx41 = getelementptr inbounds i8, i8* %EM.addr.0, i64 %idxprom
  %3 = load i8, i8* %arrayidx41, align 1, !tbaa !13
  %cmp43.not = icmp eq i8 %3, -68
  br i1 %cmp43.not, label %if.end46, label %if.then45

if.then45:                                        ; preds = %if.end39
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 94, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.RSA_verify_PKCS1_PSS_mgf1, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 134, i8* noundef null) #11
  br label %err

if.end46:                                         ; preds = %if.end39
  %4 = xor i32 %call4, -1
  %sub48 = add i32 %emLen.0, %4
  %idx.ext = sext i32 %sub48 to i64
  %add.ptr = getelementptr inbounds i8, i8* %EM.addr.0, i64 %idx.ext
  %call50 = tail call i8* @CRYPTO_malloc(i64 noundef %idx.ext, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 99) #11
  %cmp51 = icmp eq i8* %call50, null
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end46
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 101, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.RSA_verify_PKCS1_PSS_mgf1, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786688, i8* noundef null) #11
  br label %err

if.end54:                                         ; preds = %if.end46
  %conv56215 = zext i32 %call4 to i64
  %call57 = tail call i32 @PKCS1_MGF1(i8* noundef nonnull %call50, i64 noundef %idx.ext, i8* noundef nonnull %add.ptr, i64 noundef %conv56215, %struct.evp_md_st* noundef %spec.select) #11
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %err, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end54
  %cmp62216 = icmp sgt i32 %sub48, 0
  br i1 %cmp62216, label %iter.check, label %for.end

iter.check:                                       ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %sub48 to i64
  %min.iters.check = icmp ult i32 %sub48, 8
  br i1 %min.iters.check, label %for.body.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, i8* %call50, i64 %wide.trip.count
  %5 = add nuw nsw i64 %EM.addr.0.idx, %wide.trip.count
  %scevgep222 = getelementptr i8, i8* %EM, i64 %5
  %bound0 = icmp ult i8* %call50, %scevgep222
  %bound1 = icmp ult i8* %EM.addr.0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check223 = icmp ult i32 %sub48, 32
  br i1 %min.iters.check223, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %wide.trip.count, 4294967264
  %6 = add nsw i64 %n.vec, -32
  %7 = lshr exact i64 %6, 5
  %8 = add nuw nsw i64 %7, 1
  %xtraiter = and i64 %8, 1
  %9 = icmp eq i64 %6, 0
  br i1 %9, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %8, 1152921504606846974
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %10 = getelementptr inbounds i8, i8* %EM.addr.0, i64 %index
  %11 = bitcast i8* %10 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %11, align 1, !tbaa !13, !alias.scope !14
  %12 = getelementptr inbounds i8, i8* %10, i64 16
  %13 = bitcast i8* %12 to <16 x i8>*
  %wide.load224 = load <16 x i8>, <16 x i8>* %13, align 1, !tbaa !13, !alias.scope !14
  %14 = getelementptr inbounds i8, i8* %call50, i64 %index
  %15 = bitcast i8* %14 to <16 x i8>*
  %wide.load225 = load <16 x i8>, <16 x i8>* %15, align 1, !tbaa !13, !alias.scope !17, !noalias !14
  %16 = getelementptr inbounds i8, i8* %14, i64 16
  %17 = bitcast i8* %16 to <16 x i8>*
  %wide.load226 = load <16 x i8>, <16 x i8>* %17, align 1, !tbaa !13, !alias.scope !17, !noalias !14
  %18 = xor <16 x i8> %wide.load225, %wide.load
  %19 = xor <16 x i8> %wide.load226, %wide.load224
  %20 = bitcast i8* %14 to <16 x i8>*
  store <16 x i8> %18, <16 x i8>* %20, align 1, !tbaa !13, !alias.scope !17, !noalias !14
  %21 = bitcast i8* %16 to <16 x i8>*
  store <16 x i8> %19, <16 x i8>* %21, align 1, !tbaa !13, !alias.scope !17, !noalias !14
  %index.next = or i64 %index, 32
  %22 = getelementptr inbounds i8, i8* %EM.addr.0, i64 %index.next
  %23 = bitcast i8* %22 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %23, align 1, !tbaa !13, !alias.scope !14
  %24 = getelementptr inbounds i8, i8* %22, i64 16
  %25 = bitcast i8* %24 to <16 x i8>*
  %wide.load224.1 = load <16 x i8>, <16 x i8>* %25, align 1, !tbaa !13, !alias.scope !14
  %26 = getelementptr inbounds i8, i8* %call50, i64 %index.next
  %27 = bitcast i8* %26 to <16 x i8>*
  %wide.load225.1 = load <16 x i8>, <16 x i8>* %27, align 1, !tbaa !13, !alias.scope !17, !noalias !14
  %28 = getelementptr inbounds i8, i8* %26, i64 16
  %29 = bitcast i8* %28 to <16 x i8>*
  %wide.load226.1 = load <16 x i8>, <16 x i8>* %29, align 1, !tbaa !13, !alias.scope !17, !noalias !14
  %30 = xor <16 x i8> %wide.load225.1, %wide.load.1
  %31 = xor <16 x i8> %wide.load226.1, %wide.load224.1
  %32 = bitcast i8* %26 to <16 x i8>*
  store <16 x i8> %30, <16 x i8>* %32, align 1, !tbaa !13, !alias.scope !17, !noalias !14
  %33 = bitcast i8* %28 to <16 x i8>*
  store <16 x i8> %31, <16 x i8>* %33, align 1, !tbaa !13, !alias.scope !17, !noalias !14
  %index.next.1 = add nuw i64 %index, 64
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !19

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %34 = getelementptr inbounds i8, i8* %EM.addr.0, i64 %index.unr
  %35 = bitcast i8* %34 to <16 x i8>*
  %wide.load.epil = load <16 x i8>, <16 x i8>* %35, align 1, !tbaa !13, !alias.scope !14
  %36 = getelementptr inbounds i8, i8* %34, i64 16
  %37 = bitcast i8* %36 to <16 x i8>*
  %wide.load224.epil = load <16 x i8>, <16 x i8>* %37, align 1, !tbaa !13, !alias.scope !14
  %38 = getelementptr inbounds i8, i8* %call50, i64 %index.unr
  %39 = bitcast i8* %38 to <16 x i8>*
  %wide.load225.epil = load <16 x i8>, <16 x i8>* %39, align 1, !tbaa !13, !alias.scope !17, !noalias !14
  %40 = getelementptr inbounds i8, i8* %38, i64 16
  %41 = bitcast i8* %40 to <16 x i8>*
  %wide.load226.epil = load <16 x i8>, <16 x i8>* %41, align 1, !tbaa !13, !alias.scope !17, !noalias !14
  %42 = xor <16 x i8> %wide.load225.epil, %wide.load.epil
  %43 = xor <16 x i8> %wide.load226.epil, %wide.load224.epil
  %44 = bitcast i8* %38 to <16 x i8>*
  store <16 x i8> %42, <16 x i8>* %44, align 1, !tbaa !13, !alias.scope !17, !noalias !14
  %45 = bitcast i8* %40 to <16 x i8>*
  store <16 x i8> %43, <16 x i8>* %45, align 1, !tbaa !13, !alias.scope !17, !noalias !14
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.end, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %n.vec.remaining = and i64 %wide.trip.count, 24
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check, label %for.body.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec228 = and i64 %wide.trip.count, 4294967288
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index230 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next233, %vec.epilog.vector.body ]
  %46 = getelementptr inbounds i8, i8* %EM.addr.0, i64 %index230
  %47 = bitcast i8* %46 to <8 x i8>*
  %wide.load231 = load <8 x i8>, <8 x i8>* %47, align 1, !tbaa !13
  %48 = getelementptr inbounds i8, i8* %call50, i64 %index230
  %49 = bitcast i8* %48 to <8 x i8>*
  %wide.load232 = load <8 x i8>, <8 x i8>* %49, align 1, !tbaa !13
  %50 = xor <8 x i8> %wide.load232, %wide.load231
  %51 = bitcast i8* %48 to <8 x i8>*
  store <8 x i8> %50, <8 x i8>* %51, align 1, !tbaa !13
  %index.next233 = add nuw i64 %index230, 8
  %52 = icmp eq i64 %index.next233, %n.vec228
  br i1 %52, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !22

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n229 = icmp eq i64 %n.vec228, %wide.trip.count
  br i1 %cmp.n229, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec228, %vec.epilog.middle.block ]
  %53 = xor i64 %indvars.iv.ph, -1
  %54 = add nsw i64 %53, %wide.trip.count
  %xtraiter234 = and i64 %wide.trip.count, 3
  %lcmp.mod235.not = icmp eq i64 %xtraiter234, 0
  br i1 %lcmp.mod235.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader, %for.body.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body.prol ], [ %indvars.iv.ph, %for.body.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader ]
  %arrayidx65.prol = getelementptr inbounds i8, i8* %EM.addr.0, i64 %indvars.iv.prol
  %55 = load i8, i8* %arrayidx65.prol, align 1, !tbaa !13
  %arrayidx68.prol = getelementptr inbounds i8, i8* %call50, i64 %indvars.iv.prol
  %56 = load i8, i8* %arrayidx68.prol, align 1, !tbaa !13
  %xor214.prol = xor i8 %56, %55
  store i8 %xor214.prol, i8* %arrayidx68.prol, align 1, !tbaa !13
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter234
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !24

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body.preheader ], [ %indvars.iv.next.prol, %for.body.prol ]
  %57 = icmp ult i64 %54, 3
  br i1 %57, label %for.end, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body ], [ %indvars.iv.unr, %for.body.prol.loopexit ]
  %arrayidx65 = getelementptr inbounds i8, i8* %EM.addr.0, i64 %indvars.iv
  %58 = load i8, i8* %arrayidx65, align 1, !tbaa !13
  %arrayidx68 = getelementptr inbounds i8, i8* %call50, i64 %indvars.iv
  %59 = load i8, i8* %arrayidx68, align 1, !tbaa !13
  %xor214 = xor i8 %59, %58
  store i8 %xor214, i8* %arrayidx68, align 1, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx65.1 = getelementptr inbounds i8, i8* %EM.addr.0, i64 %indvars.iv.next
  %60 = load i8, i8* %arrayidx65.1, align 1, !tbaa !13
  %arrayidx68.1 = getelementptr inbounds i8, i8* %call50, i64 %indvars.iv.next
  %61 = load i8, i8* %arrayidx68.1, align 1, !tbaa !13
  %xor214.1 = xor i8 %61, %60
  store i8 %xor214.1, i8* %arrayidx68.1, align 1, !tbaa !13
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx65.2 = getelementptr inbounds i8, i8* %EM.addr.0, i64 %indvars.iv.next.1
  %62 = load i8, i8* %arrayidx65.2, align 1, !tbaa !13
  %arrayidx68.2 = getelementptr inbounds i8, i8* %call50, i64 %indvars.iv.next.1
  %63 = load i8, i8* %arrayidx68.2, align 1, !tbaa !13
  %xor214.2 = xor i8 %63, %62
  store i8 %xor214.2, i8* %arrayidx68.2, align 1, !tbaa !13
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %arrayidx65.3 = getelementptr inbounds i8, i8* %EM.addr.0, i64 %indvars.iv.next.2
  %64 = load i8, i8* %arrayidx65.3, align 1, !tbaa !13
  %arrayidx68.3 = getelementptr inbounds i8, i8* %call50, i64 %indvars.iv.next.2
  %65 = load i8, i8* %arrayidx68.3, align 1, !tbaa !13
  %xor214.3 = xor i8 %65, %64
  store i8 %xor214.3, i8* %arrayidx68.3, align 1, !tbaa !13
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %for.end, label %for.body, !llvm.loop !26

for.end:                                          ; preds = %for.body.prol.loopexit, %for.body, %middle.block, %vec.epilog.middle.block, %for.cond.preheader
  br i1 %cmp19, label %if.end78, label %if.then72

if.then72:                                        ; preds = %for.end
  %sub73 = sub nuw nsw i32 8, %and
  %shr = lshr i32 255, %sub73
  %66 = load i8, i8* %call50, align 1, !tbaa !13
  %67 = trunc i32 %shr to i8
  %conv77 = and i8 %66, %67
  store i8 %conv77, i8* %call50, align 1, !tbaa !13
  br label %if.end78

if.end78:                                         ; preds = %if.then72, %for.end
  %sub85 = add nsw i32 %sub48, -1
  %68 = sext i32 %sub85 to i64
  br label %for.cond79

for.cond79:                                       ; preds = %for.cond79, %if.end78
  %indvars.iv219 = phi i64 [ %indvars.iv.next220, %for.cond79 ], [ 0, %if.end78 ]
  %arrayidx81 = getelementptr inbounds i8, i8* %call50, i64 %indvars.iv219
  %69 = load i8, i8* %arrayidx81, align 1, !tbaa !13
  %cmp83 = icmp eq i8 %69, 0
  %cmp86 = icmp slt i64 %indvars.iv219, %68
  %70 = select i1 %cmp83, i1 %cmp86, i1 false
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1
  br i1 %70, label %for.cond79, label %for.end91, !llvm.loop !27

for.end91:                                        ; preds = %for.cond79
  %71 = trunc i64 %indvars.iv219 to i32
  %inc92 = add nuw nsw i32 %71, 1
  %cmp96.not = icmp eq i8 %69, 1
  br i1 %cmp96.not, label %if.end99, label %if.then98

if.then98:                                        ; preds = %for.end91
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 112, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.RSA_verify_PKCS1_PSS_mgf1, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 135, i8* noundef null) #11
  br label %err

if.end99:                                         ; preds = %for.end91
  %cmp100.not = icmp eq i32 %sLen.addr.1, -2
  br i1 %cmp100.not, label %if.end107, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end99
  %sub102 = sub nsw i32 %sub48, %inc92
  %cmp103.not = icmp eq i32 %sub102, %sLen.addr.1
  br i1 %cmp103.not, label %if.end107, label %if.then105

if.then105:                                       ; preds = %land.lhs.true
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 116, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.RSA_verify_PKCS1_PSS_mgf1, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 136, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef %sLen.addr.1, i32 noundef %sub102) #11
  br label %err

if.end107:                                        ; preds = %land.lhs.true, %if.end99
  %call108 = tail call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call, %struct.evp_md_st* noundef %Hash, %struct.engine_st* noundef null) #11
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end107
  %call110 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @zeroes, i64 0, i64 0), i64 noundef 8) #11
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %err, label %lor.lhs.false112

lor.lhs.false112:                                 ; preds = %lor.lhs.false
  %call114 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef %mHash, i64 noundef %conv56215) #11
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %err, label %if.end117

if.end117:                                        ; preds = %lor.lhs.false112
  %sub118 = sub nsw i32 %sub48, %inc92
  %tobool119.not = icmp eq i32 %sub118, 0
  br i1 %tobool119.not, label %if.end129, label %if.then120

if.then120:                                       ; preds = %if.end117
  %idx.ext121 = zext i32 %inc92 to i64
  %add.ptr122 = getelementptr inbounds i8, i8* %call50, i64 %idx.ext121
  %conv124 = sext i32 %sub118 to i64
  %call125 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef nonnull %add.ptr122, i64 noundef %conv124) #11
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %err, label %if.end129

if.end129:                                        ; preds = %if.then120, %if.end117
  %call130 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef nonnull %0, i32* noundef null) #11
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %err, label %if.end133

if.end133:                                        ; preds = %if.end129
  %call136 = call i32 @memcmp(i8* noundef nonnull %0, i8* noundef nonnull %add.ptr, i64 noundef %conv56215) #13
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %err, label %if.then138

if.then138:                                       ; preds = %if.end133
  call void @ERR_new() #11
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 132, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.RSA_verify_PKCS1_PSS_mgf1, i64 0, i64 0)) #11
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 104, i8* noundef null) #11
  br label %err

err:                                              ; preds = %if.end133, %if.then138, %if.end129, %if.then120, %if.end107, %lor.lhs.false, %lor.lhs.false112, %if.end54, %if.end, %entry, %if.then105, %if.then98, %if.then53, %if.then45, %if.then37, %if.then25, %if.then17, %if.then11
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.then17 ], [ 0, %if.then25 ], [ 0, %if.then45 ], [ 0, %if.then53 ], [ 0, %if.end54 ], [ 0, %if.then98 ], [ 0, %if.then105 ], [ 0, %if.then138 ], [ 0, %if.end129 ], [ 0, %if.then120 ], [ 0, %lor.lhs.false112 ], [ 0, %lor.lhs.false ], [ 0, %if.end107 ], [ 0, %if.then37 ], [ 0, %if.then11 ], [ 1, %if.end133 ]
  %DB.0 = phi i8* [ null, %entry ], [ null, %if.end ], [ null, %if.then17 ], [ null, %if.then25 ], [ null, %if.then45 ], [ null, %if.then53 ], [ %call50, %if.end54 ], [ %call50, %if.then98 ], [ %call50, %if.then105 ], [ %call50, %if.then138 ], [ %call50, %if.end129 ], [ %call50, %if.then120 ], [ %call50, %lor.lhs.false112 ], [ %call50, %lor.lhs.false ], [ %call50, %if.end107 ], [ null, %if.then37 ], [ null, %if.then11 ], [ %call50, %if.end133 ]
  call void @CRYPTO_free(i8* noundef %DB.0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 139) #11
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call) #11
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #12
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #2

declare i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @RSA_size(%struct.rsa_st* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @PKCS1_MGF1(i8* noundef, i64 noundef, i8* noundef, i64 noundef, %struct.evp_md_st* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_padding_add_PKCS1_PSS(%struct.rsa_st* noundef %rsa, i8* noundef %EM, i8* noundef %mHash, %struct.evp_md_st* noundef %Hash, i32 noundef %sLen) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @RSA_padding_add_PKCS1_PSS_mgf1(%struct.rsa_st* noundef %rsa, i8* noundef %EM, i8* noundef %mHash, %struct.evp_md_st* noundef %Hash, %struct.evp_md_st* noundef null, i32 noundef %sLen) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_padding_add_PKCS1_PSS_mgf1(%struct.rsa_st* noundef %rsa, i8* noundef %EM, i8* noundef %mHash, %struct.evp_md_st* noundef %Hash, %struct.evp_md_st* noundef %mgf1Hash, i32 noundef %sLen) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_md_st* %mgf1Hash, null
  %spec.select = select i1 %cmp, %struct.evp_md_st* %Hash, %struct.evp_md_st* %mgf1Hash
  %call = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %Hash) #11
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %err, label %if.end3

if.end3:                                          ; preds = %entry
  switch i32 %sLen, label %if.else8 [
    i32 -1, label %if.end13
    i32 -2, label %if.then7
  ]

if.then7:                                         ; preds = %if.end3
  br label %if.end13

if.else8:                                         ; preds = %if.end3
  %cmp9 = icmp slt i32 %sLen, -3
  br i1 %cmp9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.else8
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 182, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.RSA_padding_add_PKCS1_PSS_mgf1, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 136, i8* noundef null) #11
  br label %err

if.end13:                                         ; preds = %if.end3, %if.then7, %if.else8
  %sLen.addr.0 = phi i32 [ -3, %if.then7 ], [ %sLen, %if.else8 ], [ %call, %if.end3 ]
  %n = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 5
  %0 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !4
  %call14 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %0) #11
  %sub = add i32 %call14, 7
  %and = and i32 %sub, 7
  %call15 = tail call i32 @RSA_size(%struct.rsa_st* noundef %rsa) #11
  %cmp16 = icmp eq i32 %and, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end13
  %incdec.ptr = getelementptr inbounds i8, i8* %EM, i64 1
  store i8 0, i8* %EM, align 1, !tbaa !13
  %dec = add nsw i32 %call15, -1
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end13
  %emLen.0 = phi i32 [ %dec, %if.then17 ], [ %call15, %if.end13 ]
  %EM.addr.0 = phi i8* [ %incdec.ptr, %if.then17 ], [ %EM, %if.end13 ]
  %add = add nuw nsw i32 %call, 2
  %cmp19 = icmp slt i32 %emLen.0, %add
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end18
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 193, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.RSA_padding_add_PKCS1_PSS_mgf1, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 110, i8* noundef null) #11
  br label %err

if.end21:                                         ; preds = %if.end18
  %cmp22 = icmp eq i32 %sLen.addr.0, -3
  %sub24 = sub nuw i32 -2, %call
  %sub25 = add i32 %sub24, %emLen.0
  br i1 %cmp22, label %if.end32, label %if.else26

if.else26:                                        ; preds = %if.end21
  %cmp29 = icmp sgt i32 %sLen.addr.0, %sub25
  br i1 %cmp29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.else26
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 199, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.RSA_padding_add_PKCS1_PSS_mgf1, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 110, i8* noundef null) #11
  br label %err

if.end32:                                         ; preds = %if.end21, %if.else26
  %sLen.addr.1 = phi i32 [ %sLen.addr.0, %if.else26 ], [ %sub25, %if.end21 ]
  %cmp33 = icmp sgt i32 %sLen.addr.1, 0
  br i1 %cmp33, label %if.then34, label %if.end46

if.then34:                                        ; preds = %if.end32
  %conv176 = zext i32 %sLen.addr.1 to i64
  %call35 = tail call i8* @CRYPTO_malloc(i64 noundef %conv176, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 203) #11
  %cmp36 = icmp eq i8* %call35, null
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.then34
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 205, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.RSA_padding_add_PKCS1_PSS_mgf1, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786688, i8* noundef null) #11
  br label %err

if.end39:                                         ; preds = %if.then34
  %libctx = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 1
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !28
  %call41 = tail call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %1, i8* noundef nonnull %call35, i64 noundef %conv176, i32 noundef 0) #11
  %cmp42 = icmp slt i32 %call41, 1
  br i1 %cmp42, label %err, label %if.end46

if.end46:                                         ; preds = %if.end39, %if.end32
  %salt.0 = phi i8* [ %call35, %if.end39 ], [ null, %if.end32 ]
  %2 = xor i32 %call, -1
  %sub48 = add i32 %emLen.0, %2
  %idx.ext = sext i32 %sub48 to i64
  %add.ptr = getelementptr inbounds i8, i8* %EM.addr.0, i64 %idx.ext
  %call49 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #11
  %cmp50 = icmp eq %struct.evp_md_ctx_st* %call49, null
  br i1 %cmp50, label %err, label %if.end53

if.end53:                                         ; preds = %if.end46
  %call54 = tail call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call49, %struct.evp_md_st* noundef %Hash, %struct.engine_st* noundef null) #11
  %tobool.not = icmp eq i32 %call54, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end53
  %call55 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call49, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @zeroes, i64 0, i64 0), i64 noundef 8) #11
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %err, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %lor.lhs.false
  %conv58177 = zext i32 %call to i64
  %call59 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call49, i8* noundef %mHash, i64 noundef %conv58177) #11
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %err, label %if.end62

if.end62:                                         ; preds = %lor.lhs.false57
  %tobool63.not = icmp eq i32 %sLen.addr.1, 0
  br i1 %tobool63.not, label %if.end68, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end62
  %conv64 = sext i32 %sLen.addr.1 to i64
  %call65 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call49, i8* noundef %salt.0, i64 noundef %conv64) #11
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %err, label %if.end68

if.end68:                                         ; preds = %land.lhs.true, %if.end62
  %call69 = tail call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call49, i8* noundef %add.ptr, i32* noundef null) #11
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %err, label %if.end72

if.end72:                                         ; preds = %if.end68
  %call75 = tail call i32 @PKCS1_MGF1(i8* noundef %EM.addr.0, i64 noundef %idx.ext, i8* noundef %add.ptr, i64 noundef %conv58177, %struct.evp_md_st* noundef %spec.select) #11
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %err

if.end78:                                         ; preds = %if.end72
  %3 = add i32 %emLen.0, -2
  %4 = add i32 %call, %sLen.addr.1
  %sub81 = sub i32 %3, %4
  %idx.ext82 = sext i32 %sub81 to i64
  %add.ptr83 = getelementptr inbounds i8, i8* %EM.addr.0, i64 %idx.ext82
  %5 = load i8, i8* %add.ptr83, align 1, !tbaa !13
  %6 = xor i8 %5, 1
  store i8 %6, i8* %add.ptr83, align 1, !tbaa !13
  br i1 %cmp33, label %iter.check, label %if.end97

iter.check:                                       ; preds = %if.end78
  %wide.trip.count = zext i32 %sLen.addr.1 to i64
  %min.iters.check = icmp ult i32 %sLen.addr.1, 8
  br i1 %min.iters.check, label %for.body.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %7 = add nsw i64 %idx.ext82, 1
  %scevgep = getelementptr i8, i8* %EM.addr.0, i64 %7
  %8 = add nsw i64 %idx.ext82, %wide.trip.count
  %9 = add nsw i64 %8, 1
  %scevgep183 = getelementptr i8, i8* %EM.addr.0, i64 %9
  %scevgep184 = getelementptr i8, i8* %salt.0, i64 %wide.trip.count
  %bound0 = icmp ult i8* %scevgep, %scevgep184
  %bound1 = icmp ult i8* %salt.0, %scevgep183
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check185 = icmp ult i32 %sLen.addr.1, 32
  br i1 %min.iters.check185, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %wide.trip.count, 4294967264
  %10 = add nsw i64 %n.vec, -32
  %11 = lshr exact i64 %10, 5
  %12 = add nuw nsw i64 %11, 1
  %xtraiter = and i64 %12, 1
  %13 = icmp eq i64 %10, 0
  br i1 %13, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %12, 1152921504606846974
  %next.gep = getelementptr i8, i8* %add.ptr83, i64 1
  %next.gep.1 = getelementptr i8, i8* %add.ptr83, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %14 = getelementptr inbounds i8, i8* %next.gep, i64 %index
  %15 = getelementptr inbounds i8, i8* %salt.0, i64 %index
  %16 = bitcast i8* %15 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %16, align 1, !tbaa !13, !alias.scope !29
  %17 = getelementptr inbounds i8, i8* %15, i64 16
  %18 = bitcast i8* %17 to <16 x i8>*
  %wide.load187 = load <16 x i8>, <16 x i8>* %18, align 1, !tbaa !13, !alias.scope !29
  %19 = bitcast i8* %14 to <16 x i8>*
  %wide.load188 = load <16 x i8>, <16 x i8>* %19, align 1, !tbaa !13, !alias.scope !32, !noalias !29
  %20 = getelementptr inbounds i8, i8* %14, i64 16
  %21 = bitcast i8* %20 to <16 x i8>*
  %wide.load189 = load <16 x i8>, <16 x i8>* %21, align 1, !tbaa !13, !alias.scope !32, !noalias !29
  %22 = xor <16 x i8> %wide.load188, %wide.load
  %23 = xor <16 x i8> %wide.load189, %wide.load187
  %24 = bitcast i8* %14 to <16 x i8>*
  store <16 x i8> %22, <16 x i8>* %24, align 1, !tbaa !13, !alias.scope !32, !noalias !29
  %25 = bitcast i8* %20 to <16 x i8>*
  store <16 x i8> %23, <16 x i8>* %25, align 1, !tbaa !13, !alias.scope !32, !noalias !29
  %index.next = or i64 %index, 32
  %26 = getelementptr inbounds i8, i8* %next.gep.1, i64 %index.next
  %27 = getelementptr inbounds i8, i8* %salt.0, i64 %index.next
  %28 = bitcast i8* %27 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %28, align 1, !tbaa !13, !alias.scope !29
  %29 = getelementptr inbounds i8, i8* %27, i64 16
  %30 = bitcast i8* %29 to <16 x i8>*
  %wide.load187.1 = load <16 x i8>, <16 x i8>* %30, align 1, !tbaa !13, !alias.scope !29
  %31 = bitcast i8* %26 to <16 x i8>*
  %wide.load188.1 = load <16 x i8>, <16 x i8>* %31, align 1, !tbaa !13, !alias.scope !32, !noalias !29
  %32 = getelementptr inbounds i8, i8* %26, i64 16
  %33 = bitcast i8* %32 to <16 x i8>*
  %wide.load189.1 = load <16 x i8>, <16 x i8>* %33, align 1, !tbaa !13, !alias.scope !32, !noalias !29
  %34 = xor <16 x i8> %wide.load188.1, %wide.load.1
  %35 = xor <16 x i8> %wide.load189.1, %wide.load187.1
  %36 = bitcast i8* %26 to <16 x i8>*
  store <16 x i8> %34, <16 x i8>* %36, align 1, !tbaa !13, !alias.scope !32, !noalias !29
  %37 = bitcast i8* %32 to <16 x i8>*
  store <16 x i8> %35, <16 x i8>* %37, align 1, !tbaa !13, !alias.scope !32, !noalias !29
  %index.next.1 = add nuw i64 %index, 64
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !34

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %next.gep.epil = getelementptr i8, i8* %add.ptr83, i64 1
  %38 = getelementptr inbounds i8, i8* %next.gep.epil, i64 %index.unr
  %39 = getelementptr inbounds i8, i8* %salt.0, i64 %index.unr
  %40 = bitcast i8* %39 to <16 x i8>*
  %wide.load.epil = load <16 x i8>, <16 x i8>* %40, align 1, !tbaa !13, !alias.scope !29
  %41 = getelementptr inbounds i8, i8* %39, i64 16
  %42 = bitcast i8* %41 to <16 x i8>*
  %wide.load187.epil = load <16 x i8>, <16 x i8>* %42, align 1, !tbaa !13, !alias.scope !29
  %43 = bitcast i8* %38 to <16 x i8>*
  %wide.load188.epil = load <16 x i8>, <16 x i8>* %43, align 1, !tbaa !13, !alias.scope !32, !noalias !29
  %44 = getelementptr inbounds i8, i8* %38, i64 16
  %45 = bitcast i8* %44 to <16 x i8>*
  %wide.load189.epil = load <16 x i8>, <16 x i8>* %45, align 1, !tbaa !13, !alias.scope !32, !noalias !29
  %46 = xor <16 x i8> %wide.load188.epil, %wide.load.epil
  %47 = xor <16 x i8> %wide.load189.epil, %wide.load187.epil
  %48 = bitcast i8* %38 to <16 x i8>*
  store <16 x i8> %46, <16 x i8>* %48, align 1, !tbaa !13, !alias.scope !32, !noalias !29
  %49 = bitcast i8* %44 to <16 x i8>*
  store <16 x i8> %47, <16 x i8>* %49, align 1, !tbaa !13, !alias.scope !32, !noalias !29
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %if.end97, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %ind.end193 = getelementptr i8, i8* %add.ptr83, i64 %n.vec
  %n.vec.remaining = and i64 %wide.trip.count, 24
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check, label %for.body.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec191 = and i64 %wide.trip.count, 4294967288
  %ind.end = getelementptr i8, i8* %add.ptr83, i64 %n.vec191
  %next.gep196 = getelementptr i8, i8* %add.ptr83, i64 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index195 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next199, %vec.epilog.vector.body ]
  %50 = getelementptr inbounds i8, i8* %next.gep196, i64 %index195
  %51 = getelementptr inbounds i8, i8* %salt.0, i64 %index195
  %52 = bitcast i8* %51 to <8 x i8>*
  %wide.load197 = load <8 x i8>, <8 x i8>* %52, align 1, !tbaa !13
  %53 = bitcast i8* %50 to <8 x i8>*
  %wide.load198 = load <8 x i8>, <8 x i8>* %53, align 1, !tbaa !13
  %54 = xor <8 x i8> %wide.load198, %wide.load197
  %55 = bitcast i8* %50 to <8 x i8>*
  store <8 x i8> %54, <8 x i8>* %55, align 1, !tbaa !13
  %index.next199 = add nuw i64 %index195, 8
  %56 = icmp eq i64 %index.next199, %n.vec191
  br i1 %56, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !35

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n194 = icmp eq i64 %n.vec191, %wide.trip.count
  br i1 %cmp.n194, label %if.end97, label %for.body.preheader

for.body.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec191, %vec.epilog.middle.block ]
  %add.ptr83.pn.ph = phi i8* [ %add.ptr83, %iter.check ], [ %add.ptr83, %vector.memcheck ], [ %ind.end193, %vec.epilog.iter.check ], [ %ind.end, %vec.epilog.middle.block ]
  %57 = xor i64 %indvars.iv.ph, -1
  %58 = add nsw i64 %57, %wide.trip.count
  %xtraiter200 = and i64 %wide.trip.count, 3
  %lcmp.mod201.not = icmp eq i64 %xtraiter200, 0
  br i1 %lcmp.mod201.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader, %for.body.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body.prol ], [ %indvars.iv.ph, %for.body.preheader ]
  %add.ptr83.pn.prol = phi i8* [ %p.0181.prol, %for.body.prol ], [ %add.ptr83.pn.ph, %for.body.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader ]
  %p.0181.prol = getelementptr inbounds i8, i8* %add.ptr83.pn.prol, i64 1
  %arrayidx.prol = getelementptr inbounds i8, i8* %salt.0, i64 %indvars.iv.prol
  %59 = load i8, i8* %arrayidx.prol, align 1, !tbaa !13
  %60 = load i8, i8* %p.0181.prol, align 1, !tbaa !13
  %xor95175.prol = xor i8 %60, %59
  store i8 %xor95175.prol, i8* %p.0181.prol, align 1, !tbaa !13
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter200
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !36

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body.preheader ], [ %indvars.iv.next.prol, %for.body.prol ]
  %add.ptr83.pn.unr = phi i8* [ %add.ptr83.pn.ph, %for.body.preheader ], [ %p.0181.prol, %for.body.prol ]
  %61 = icmp ult i64 %58, 3
  br i1 %61, label %if.end97, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body ], [ %indvars.iv.unr, %for.body.prol.loopexit ]
  %add.ptr83.pn = phi i8* [ %p.0181.3, %for.body ], [ %add.ptr83.pn.unr, %for.body.prol.loopexit ]
  %p.0181 = getelementptr inbounds i8, i8* %add.ptr83.pn, i64 1
  %arrayidx = getelementptr inbounds i8, i8* %salt.0, i64 %indvars.iv
  %62 = load i8, i8* %arrayidx, align 1, !tbaa !13
  %63 = load i8, i8* %p.0181, align 1, !tbaa !13
  %xor95175 = xor i8 %63, %62
  store i8 %xor95175, i8* %p.0181, align 1, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %p.0181.1 = getelementptr inbounds i8, i8* %add.ptr83.pn, i64 2
  %arrayidx.1 = getelementptr inbounds i8, i8* %salt.0, i64 %indvars.iv.next
  %64 = load i8, i8* %arrayidx.1, align 1, !tbaa !13
  %65 = load i8, i8* %p.0181.1, align 1, !tbaa !13
  %xor95175.1 = xor i8 %65, %64
  store i8 %xor95175.1, i8* %p.0181.1, align 1, !tbaa !13
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %p.0181.2 = getelementptr inbounds i8, i8* %add.ptr83.pn, i64 3
  %arrayidx.2 = getelementptr inbounds i8, i8* %salt.0, i64 %indvars.iv.next.1
  %66 = load i8, i8* %arrayidx.2, align 1, !tbaa !13
  %67 = load i8, i8* %p.0181.2, align 1, !tbaa !13
  %xor95175.2 = xor i8 %67, %66
  store i8 %xor95175.2, i8* %p.0181.2, align 1, !tbaa !13
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %p.0181.3 = getelementptr inbounds i8, i8* %add.ptr83.pn, i64 4
  %arrayidx.3 = getelementptr inbounds i8, i8* %salt.0, i64 %indvars.iv.next.2
  %68 = load i8, i8* %arrayidx.3, align 1, !tbaa !13
  %69 = load i8, i8* %p.0181.3, align 1, !tbaa !13
  %xor95175.3 = xor i8 %69, %68
  store i8 %xor95175.3, i8* %p.0181.3, align 1, !tbaa !13
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %if.end97, label %for.body, !llvm.loop !37

if.end97:                                         ; preds = %for.body.prol.loopexit, %for.body, %middle.block, %vec.epilog.middle.block, %if.end78
  br i1 %cmp16, label %if.end105, label %if.then99

if.then99:                                        ; preds = %if.end97
  %sub100 = sub nuw nsw i32 8, %and
  %shr = lshr i32 255, %sub100
  %70 = load i8, i8* %EM.addr.0, align 1, !tbaa !13
  %71 = trunc i32 %shr to i8
  %conv104 = and i8 %70, %71
  store i8 %conv104, i8* %EM.addr.0, align 1, !tbaa !13
  br label %if.end105

if.end105:                                        ; preds = %if.then99, %if.end97
  %sub106 = add nsw i32 %emLen.0, -1
  %idxprom107 = sext i32 %sub106 to i64
  %arrayidx108 = getelementptr inbounds i8, i8* %EM.addr.0, i64 %idxprom107
  store i8 -68, i8* %arrayidx108, align 1, !tbaa !13
  br label %err

err:                                              ; preds = %if.end72, %if.end68, %land.lhs.true, %if.end53, %lor.lhs.false, %lor.lhs.false57, %if.end46, %if.end39, %entry, %if.end105, %if.then38, %if.then30, %if.then20, %if.then10
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %if.then20 ], [ 0, %if.then38 ], [ 0, %if.end39 ], [ 0, %if.end46 ], [ 0, %if.end72 ], [ 1, %if.end105 ], [ 0, %if.end68 ], [ 0, %land.lhs.true ], [ 0, %lor.lhs.false57 ], [ 0, %lor.lhs.false ], [ 0, %if.end53 ], [ 0, %if.then30 ], [ 0, %if.then10 ]
  %sLen.addr.2 = phi i32 [ %sLen, %entry ], [ %sLen.addr.0, %if.then20 ], [ %sLen.addr.1, %if.then38 ], [ %sLen.addr.1, %if.end39 ], [ %sLen.addr.1, %if.end46 ], [ %sLen.addr.1, %if.end72 ], [ %sLen.addr.1, %if.end105 ], [ %sLen.addr.1, %if.end68 ], [ %sLen.addr.1, %land.lhs.true ], [ %sLen.addr.1, %lor.lhs.false57 ], [ %sLen.addr.1, %lor.lhs.false ], [ %sLen.addr.1, %if.end53 ], [ %sLen.addr.0, %if.then30 ], [ %sLen, %if.then10 ]
  %salt.1 = phi i8* [ null, %entry ], [ null, %if.then20 ], [ null, %if.then38 ], [ %call35, %if.end39 ], [ %salt.0, %if.end46 ], [ %salt.0, %if.end72 ], [ %salt.0, %if.end105 ], [ %salt.0, %if.end68 ], [ %salt.0, %land.lhs.true ], [ %salt.0, %lor.lhs.false57 ], [ %salt.0, %lor.lhs.false ], [ %salt.0, %if.end53 ], [ null, %if.then30 ], [ null, %if.then10 ]
  %ctx.0 = phi %struct.evp_md_ctx_st* [ null, %entry ], [ null, %if.then20 ], [ null, %if.then38 ], [ null, %if.end39 ], [ null, %if.end46 ], [ %call49, %if.end72 ], [ %call49, %if.end105 ], [ %call49, %if.end68 ], [ %call49, %land.lhs.true ], [ %call49, %lor.lhs.false57 ], [ %call49, %lor.lhs.false ], [ %call49, %if.end53 ], [ null, %if.then30 ], [ null, %if.then10 ]
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %ctx.0) #11
  %conv109 = sext i32 %sLen.addr.2 to i64
  tail call void @CRYPTO_clear_free(i8* noundef %salt.1, i64 noundef %conv109, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 252) #11
  ret i32 %ret.0
}

declare i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define i32 @ossl_rsa_pss_params_30_set_defaults(%struct.rsa_pss_params_30_st* noundef writeonly %rsa_pss_params) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq %struct.rsa_pss_params_30_st* %rsa_pss_params, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.rsa_pss_params_30_st* %rsa_pss_params to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(20) %0, i8* noundef nonnull align 4 dereferenceable(20) bitcast (%struct.rsa_pss_params_30_st* @default_RSASSA_PSS_params to i8*), i64 20, i1 false), !tbaa.struct !38
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define i32 @ossl_rsa_pss_params_30_is_unrestricted(%struct.rsa_pss_params_30_st* noundef readonly %rsa_pss_params) local_unnamed_addr #6 {
entry:
  %cmp = icmp eq %struct.rsa_pss_params_30_st* %rsa_pss_params, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %0 = bitcast %struct.rsa_pss_params_30_st* %rsa_pss_params to i8*
  %call = tail call i32 @memcmp(i8* noundef nonnull %0, i8* noundef bitcast (%struct.rsa_pss_params_30_st* @ossl_rsa_pss_params_30_is_unrestricted.pss_params_cmp to i8*), i64 noundef 20) #13
  %cmp1 = icmp eq i32 %call, 0
  %phi.cast = zext i1 %cmp1 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %1 = phi i32 [ 1, %entry ], [ %phi.cast, %lor.rhs ]
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsa_pss_params_30_copy(%struct.rsa_pss_params_30_st* noundef %to, %struct.rsa_pss_params_30_st* noundef %from) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.rsa_pss_params_30_st* %to to i8*
  %1 = bitcast %struct.rsa_pss_params_30_st* %from to i8*
  %call = tail call i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef 20) #11
  ret i32 1
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @ossl_rsa_pss_params_30_set_hashalg(%struct.rsa_pss_params_30_st* noundef writeonly %rsa_pss_params, i32 noundef %hashalg_nid) local_unnamed_addr #8 {
entry:
  %cmp = icmp eq %struct.rsa_pss_params_30_st* %rsa_pss_params, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %hash_algorithm_nid = getelementptr inbounds %struct.rsa_pss_params_30_st, %struct.rsa_pss_params_30_st* %rsa_pss_params, i64 0, i32 0
  store i32 %hashalg_nid, i32* %hash_algorithm_nid, align 4, !tbaa !40
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @ossl_rsa_pss_params_30_set_maskgenalg(%struct.rsa_pss_params_30_st* noundef writeonly %rsa_pss_params, i32 noundef %maskgenalg_nid) local_unnamed_addr #8 {
entry:
  %cmp = icmp eq %struct.rsa_pss_params_30_st* %rsa_pss_params, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %algorithm_nid = getelementptr inbounds %struct.rsa_pss_params_30_st, %struct.rsa_pss_params_30_st* %rsa_pss_params, i64 0, i32 1, i32 0
  store i32 %maskgenalg_nid, i32* %algorithm_nid, align 4, !tbaa !41
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @ossl_rsa_pss_params_30_set_maskgenhashalg(%struct.rsa_pss_params_30_st* noundef writeonly %rsa_pss_params, i32 noundef %maskgenhashalg_nid) local_unnamed_addr #8 {
entry:
  %cmp = icmp eq %struct.rsa_pss_params_30_st* %rsa_pss_params, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %hash_algorithm_nid = getelementptr inbounds %struct.rsa_pss_params_30_st, %struct.rsa_pss_params_30_st* %rsa_pss_params, i64 0, i32 1, i32 1
  store i32 %maskgenhashalg_nid, i32* %hash_algorithm_nid, align 4, !tbaa !42
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @ossl_rsa_pss_params_30_set_saltlen(%struct.rsa_pss_params_30_st* noundef writeonly %rsa_pss_params, i32 noundef %saltlen) local_unnamed_addr #8 {
entry:
  %cmp = icmp eq %struct.rsa_pss_params_30_st* %rsa_pss_params, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %salt_len = getelementptr inbounds %struct.rsa_pss_params_30_st, %struct.rsa_pss_params_30_st* %rsa_pss_params, i64 0, i32 2
  store i32 %saltlen, i32* %salt_len, align 4, !tbaa !43
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @ossl_rsa_pss_params_30_set_trailerfield(%struct.rsa_pss_params_30_st* noundef writeonly %rsa_pss_params, i32 noundef %trailerfield) local_unnamed_addr #8 {
entry:
  %cmp = icmp eq %struct.rsa_pss_params_30_st* %rsa_pss_params, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %trailer_field = getelementptr inbounds %struct.rsa_pss_params_30_st, %struct.rsa_pss_params_30_st* %rsa_pss_params, i64 0, i32 3
  store i32 %trailerfield, i32* %trailer_field, align 4, !tbaa !44
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @ossl_rsa_pss_params_30_hashalg(%struct.rsa_pss_params_30_st* noundef readonly %rsa_pss_params) local_unnamed_addr #9 {
entry:
  %cmp = icmp eq %struct.rsa_pss_params_30_st* %rsa_pss_params, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %hash_algorithm_nid = getelementptr inbounds %struct.rsa_pss_params_30_st, %struct.rsa_pss_params_30_st* %rsa_pss_params, i64 0, i32 0
  %0 = load i32, i32* %hash_algorithm_nid, align 4, !tbaa !40
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %0, %if.end ], [ 64, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @ossl_rsa_pss_params_30_maskgenalg(%struct.rsa_pss_params_30_st* noundef readonly %rsa_pss_params) local_unnamed_addr #9 {
entry:
  %cmp = icmp eq %struct.rsa_pss_params_30_st* %rsa_pss_params, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %algorithm_nid = getelementptr inbounds %struct.rsa_pss_params_30_st, %struct.rsa_pss_params_30_st* %rsa_pss_params, i64 0, i32 1, i32 0
  %0 = load i32, i32* %algorithm_nid, align 4, !tbaa !41
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %0, %if.end ], [ 911, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @ossl_rsa_pss_params_30_maskgenhashalg(%struct.rsa_pss_params_30_st* noundef readonly %rsa_pss_params) local_unnamed_addr #9 {
entry:
  %cmp = icmp eq %struct.rsa_pss_params_30_st* %rsa_pss_params, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %hash_algorithm_nid = getelementptr inbounds %struct.rsa_pss_params_30_st, %struct.rsa_pss_params_30_st* %rsa_pss_params, i64 0, i32 1, i32 1
  %0 = load i32, i32* %hash_algorithm_nid, align 4, !tbaa !42
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %0, %if.end ], [ 64, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @ossl_rsa_pss_params_30_saltlen(%struct.rsa_pss_params_30_st* noundef readonly %rsa_pss_params) local_unnamed_addr #9 {
entry:
  %cmp = icmp eq %struct.rsa_pss_params_30_st* %rsa_pss_params, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %salt_len = getelementptr inbounds %struct.rsa_pss_params_30_st, %struct.rsa_pss_params_30_st* %rsa_pss_params, i64 0, i32 2
  %0 = load i32, i32* %salt_len, align 4, !tbaa !43
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %0, %if.end ], [ 20, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @ossl_rsa_pss_params_30_trailerfield(%struct.rsa_pss_params_30_st* noundef readonly %rsa_pss_params) local_unnamed_addr #9 {
entry:
  %cmp = icmp eq %struct.rsa_pss_params_30_st* %rsa_pss_params, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %trailer_field = getelementptr inbounds %struct.rsa_pss_params_30_st, %struct.rsa_pss_params_30_st* %rsa_pss_params, i64 0, i32 3
  %0 = load i32, i32* %trailer_field, align 4, !tbaa !44
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %0, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nounwind }
attributes #13 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 40}
!5 = !{!"rsa_st", !6, i64 0, !9, i64 8, !6, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !10, i64 104, !9, i64 128, !9, i64 136, !12, i64 144, !7, i64 160, !6, i64 164, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !6, i64 216}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!"rsa_pss_params_30_st", !6, i64 0, !11, i64 4, !6, i64 12, !6, i64 16}
!11 = !{!"", !6, i64 0, !6, i64 4}
!12 = !{!"crypto_ex_data_st", !9, i64 0, !9, i64 8}
!13 = !{!7, !7, i64 0}
!14 = !{!15}
!15 = distinct !{!15, !16}
!16 = distinct !{!16, !"LVerDomain"}
!17 = !{!18}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !20, !21}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = distinct !{!22, !20, !21, !23}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = distinct !{!26, !20, !21}
!27 = distinct !{!27, !20}
!28 = !{!5, !9, i64 8}
!29 = !{!30}
!30 = distinct !{!30, !31}
!31 = distinct !{!31, !"LVerDomain"}
!32 = !{!33}
!33 = distinct !{!33, !31}
!34 = distinct !{!34, !20, !21}
!35 = distinct !{!35, !20, !21, !23}
!36 = distinct !{!36, !25}
!37 = distinct !{!37, !20, !21}
!38 = !{i64 0, i64 4, !39, i64 4, i64 4, !39, i64 8, i64 4, !39, i64 12, i64 4, !39, i64 16, i64 4, !39}
!39 = !{!6, !6, i64 0}
!40 = !{!10, !6, i64 0}
!41 = !{!10, !6, i64 4}
!42 = !{!10, !6, i64 8}
!43 = !{!10, !6, i64 12}
!44 = !{!10, !6, i64 16}
