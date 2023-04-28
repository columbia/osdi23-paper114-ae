; ModuleID = 'crypto/rsa/rsa_oaep.c'
source_filename = "crypto/rsa/rsa_oaep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_lib_ctx_st = type opaque
%struct.evp_md_st = type opaque
%struct.engine_st = type opaque
%struct.evp_md_ctx_st = type opaque

@.str = private unnamed_addr constant [22 x i8] c"crypto/rsa/rsa_oaep.c\00", align 1
@__func__.ossl_rsa_padding_add_PKCS1_OAEP_mgf1_ex = private unnamed_addr constant [40 x i8] c"ossl_rsa_padding_add_PKCS1_OAEP_mgf1_ex\00", align 1
@__func__.RSA_padding_check_PKCS1_OAEP_mgf1 = private unnamed_addr constant [34 x i8] c"RSA_padding_check_PKCS1_OAEP_mgf1\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_padding_add_PKCS1_OAEP(i8* noundef %to, i32 noundef %tlen, i8* noundef %from, i32 noundef %flen, i8* noundef %param, i32 noundef %plen) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_rsa_padding_add_PKCS1_OAEP_mgf1_ex(%struct.ossl_lib_ctx_st* noundef null, i8* noundef %to, i32 noundef %tlen, i8* noundef %from, i32 noundef %flen, i8* noundef %param, i32 noundef %plen, %struct.evp_md_st* noundef null, %struct.evp_md_st* noundef null) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsa_padding_add_PKCS1_OAEP_mgf1_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %to, i32 noundef %tlen, i8* noundef %from, i32 noundef %flen, i8* noundef %param, i32 noundef %plen, %struct.evp_md_st* noundef %md, %struct.evp_md_st* noundef %mgf1md) local_unnamed_addr #0 {
entry:
  %seedmask = alloca [64 x i8], align 16
  %sub = add nsw i32 %tlen, -1
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %seedmask, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #7
  %cmp = icmp eq %struct.evp_md_st* %md, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call %struct.evp_md_st* @EVP_sha1() #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %md.addr.0 = phi %struct.evp_md_st* [ %call, %if.then ], [ %md, %entry ]
  %cmp1 = icmp eq %struct.evp_md_st* %mgf1md, null
  %spec.select = select i1 %cmp1, %struct.evp_md_st* %md.addr.0, %struct.evp_md_st* %mgf1md
  %call4 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %md.addr.0) #8
  %cmp5 = icmp slt i32 %call4, 1
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.ossl_rsa_padding_add_PKCS1_OAEP_mgf1_ex, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 181, i8* noundef null) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %mul = shl nuw nsw i32 %call4, 1
  %1 = xor i32 %mul, -1
  %sub9 = add i32 %sub, %1
  %cmp10 = icmp slt i32 %sub9, %flen
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end7
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.ossl_rsa_padding_add_PKCS1_OAEP_mgf1_ex, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 110, i8* noundef null) #8
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %add = or i32 %mul, 1
  %cmp14.not = icmp slt i32 %add, %tlen
  br i1 %cmp14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end12
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.ossl_rsa_padding_add_PKCS1_OAEP_mgf1_ex, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 120, i8* noundef null) #8
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  store i8 0, i8* %to, align 1, !tbaa !4
  %add.ptr = getelementptr inbounds i8, i8* %to, i64 1
  %idx.ext163 = zext i32 %call4 to i64
  %add.ptr17 = getelementptr inbounds i8, i8* %to, i64 %idx.ext163
  %add.ptr18 = getelementptr inbounds i8, i8* %add.ptr17, i64 1
  %conv = sext i32 %plen to i64
  %call19 = tail call i32 @EVP_Digest(i8* noundef %param, i64 noundef %conv, i8* noundef nonnull %add.ptr18, i32* noundef null, %struct.evp_md_st* noundef %md.addr.0, %struct.engine_st* noundef null) #8
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %err, label %if.end21

if.end21:                                         ; preds = %if.end16
  %add.ptr23 = getelementptr inbounds i8, i8* %add.ptr18, i64 %idx.ext163
  %sub24 = sub nsw i32 %sub, %flen
  %sub27 = add i32 %sub24, %1
  %conv28 = sext i32 %sub27 to i64
  %call29 = tail call i8* @memset(i8* noundef nonnull %add.ptr23, i32 noundef 0, i64 noundef %conv28) #8
  %2 = xor i32 %call4, -1
  %sub32 = add i32 %sub24, %2
  %idxprom = sext i32 %sub32 to i64
  %arrayidx33 = getelementptr inbounds i8, i8* %add.ptr18, i64 %idxprom
  store i8 1, i8* %arrayidx33, align 1, !tbaa !4
  %idx.ext34 = sext i32 %sub to i64
  %add.ptr35 = getelementptr inbounds i8, i8* %add.ptr18, i64 %idx.ext34
  %idx.ext36 = sext i32 %flen to i64
  %idx.neg = sub nsw i64 0, %idx.ext36
  %add.ptr37 = getelementptr inbounds i8, i8* %add.ptr35, i64 %idx.neg
  %idx.neg39 = sub nsw i64 0, %idx.ext163
  %add.ptr40 = getelementptr inbounds i8, i8* %add.ptr37, i64 %idx.neg39
  %conv41 = zext i32 %flen to i64
  %call42 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr40, i8* noundef %from, i64 noundef %conv41) #8
  %call44 = tail call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef nonnull %add.ptr, i64 noundef %idx.ext163, i32 noundef 0) #8
  %cmp45 = icmp slt i32 %call44, 1
  br i1 %cmp45, label %err, label %if.end48

if.end48:                                         ; preds = %if.end21
  %sub49 = sub nsw i32 %sub, %call4
  %conv50 = sext i32 %sub49 to i64
  %call51 = tail call i8* @CRYPTO_malloc(i64 noundef %conv50, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 114) #8
  %cmp52 = icmp eq i8* %call51, null
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end48
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 116, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.ossl_rsa_padding_add_PKCS1_OAEP_mgf1_ex, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786688, i8* noundef null) #8
  br label %err

if.end55:                                         ; preds = %if.end48
  %call58 = tail call i32 @PKCS1_MGF1(i8* noundef nonnull %call51, i64 noundef %conv50, i8* noundef nonnull %add.ptr, i64 noundef %idx.ext163, %struct.evp_md_st* noundef %spec.select) #6
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %err, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end55
  %cmp63164 = icmp sgt i32 %sub49, 0
  br i1 %cmp63164, label %iter.check, label %for.end

iter.check:                                       ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %sub49 to i64
  %min.iters.check = icmp ult i32 %sub49, 8
  br i1 %min.iters.check, label %for.body.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %3 = add nuw nsw i64 %idx.ext163, %wide.trip.count
  %4 = add nuw nsw i64 %3, 1
  %scevgep = getelementptr i8, i8* %to, i64 %4
  %scevgep174 = getelementptr i8, i8* %call51, i64 %wide.trip.count
  %bound0 = icmp ult i8* %add.ptr18, %scevgep174
  %bound1 = icmp ult i8* %call51, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check175 = icmp ult i32 %sub49, 32
  br i1 %min.iters.check175, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %wide.trip.count, 4294967264
  %5 = add nsw i64 %n.vec, -32
  %6 = lshr exact i64 %5, 5
  %7 = add nuw nsw i64 %6, 1
  %xtraiter = and i64 %7, 1
  %8 = icmp eq i64 %5, 0
  br i1 %8, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %7, 1152921504606846974
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %9 = getelementptr inbounds i8, i8* %call51, i64 %index
  %10 = bitcast i8* %9 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %10, align 1, !tbaa !4, !alias.scope !7
  %11 = getelementptr inbounds i8, i8* %9, i64 16
  %12 = bitcast i8* %11 to <16 x i8>*
  %wide.load176 = load <16 x i8>, <16 x i8>* %12, align 1, !tbaa !4, !alias.scope !7
  %13 = getelementptr inbounds i8, i8* %add.ptr18, i64 %index
  %14 = bitcast i8* %13 to <16 x i8>*
  %wide.load177 = load <16 x i8>, <16 x i8>* %14, align 1, !tbaa !4, !alias.scope !10, !noalias !7
  %15 = getelementptr inbounds i8, i8* %13, i64 16
  %16 = bitcast i8* %15 to <16 x i8>*
  %wide.load178 = load <16 x i8>, <16 x i8>* %16, align 1, !tbaa !4, !alias.scope !10, !noalias !7
  %17 = xor <16 x i8> %wide.load177, %wide.load
  %18 = xor <16 x i8> %wide.load178, %wide.load176
  %19 = bitcast i8* %13 to <16 x i8>*
  store <16 x i8> %17, <16 x i8>* %19, align 1, !tbaa !4, !alias.scope !10, !noalias !7
  %20 = bitcast i8* %15 to <16 x i8>*
  store <16 x i8> %18, <16 x i8>* %20, align 1, !tbaa !4, !alias.scope !10, !noalias !7
  %index.next = or i64 %index, 32
  %21 = getelementptr inbounds i8, i8* %call51, i64 %index.next
  %22 = bitcast i8* %21 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %22, align 1, !tbaa !4, !alias.scope !7
  %23 = getelementptr inbounds i8, i8* %21, i64 16
  %24 = bitcast i8* %23 to <16 x i8>*
  %wide.load176.1 = load <16 x i8>, <16 x i8>* %24, align 1, !tbaa !4, !alias.scope !7
  %25 = getelementptr inbounds i8, i8* %add.ptr18, i64 %index.next
  %26 = bitcast i8* %25 to <16 x i8>*
  %wide.load177.1 = load <16 x i8>, <16 x i8>* %26, align 1, !tbaa !4, !alias.scope !10, !noalias !7
  %27 = getelementptr inbounds i8, i8* %25, i64 16
  %28 = bitcast i8* %27 to <16 x i8>*
  %wide.load178.1 = load <16 x i8>, <16 x i8>* %28, align 1, !tbaa !4, !alias.scope !10, !noalias !7
  %29 = xor <16 x i8> %wide.load177.1, %wide.load.1
  %30 = xor <16 x i8> %wide.load178.1, %wide.load176.1
  %31 = bitcast i8* %25 to <16 x i8>*
  store <16 x i8> %29, <16 x i8>* %31, align 1, !tbaa !4, !alias.scope !10, !noalias !7
  %32 = bitcast i8* %27 to <16 x i8>*
  store <16 x i8> %30, <16 x i8>* %32, align 1, !tbaa !4, !alias.scope !10, !noalias !7
  %index.next.1 = add nuw i64 %index, 64
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !12

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %33 = getelementptr inbounds i8, i8* %call51, i64 %index.unr
  %34 = bitcast i8* %33 to <16 x i8>*
  %wide.load.epil = load <16 x i8>, <16 x i8>* %34, align 1, !tbaa !4, !alias.scope !7
  %35 = getelementptr inbounds i8, i8* %33, i64 16
  %36 = bitcast i8* %35 to <16 x i8>*
  %wide.load176.epil = load <16 x i8>, <16 x i8>* %36, align 1, !tbaa !4, !alias.scope !7
  %37 = getelementptr inbounds i8, i8* %add.ptr18, i64 %index.unr
  %38 = bitcast i8* %37 to <16 x i8>*
  %wide.load177.epil = load <16 x i8>, <16 x i8>* %38, align 1, !tbaa !4, !alias.scope !10, !noalias !7
  %39 = getelementptr inbounds i8, i8* %37, i64 16
  %40 = bitcast i8* %39 to <16 x i8>*
  %wide.load178.epil = load <16 x i8>, <16 x i8>* %40, align 1, !tbaa !4, !alias.scope !10, !noalias !7
  %41 = xor <16 x i8> %wide.load177.epil, %wide.load.epil
  %42 = xor <16 x i8> %wide.load178.epil, %wide.load176.epil
  %43 = bitcast i8* %37 to <16 x i8>*
  store <16 x i8> %41, <16 x i8>* %43, align 1, !tbaa !4, !alias.scope !10, !noalias !7
  %44 = bitcast i8* %39 to <16 x i8>*
  store <16 x i8> %42, <16 x i8>* %44, align 1, !tbaa !4, !alias.scope !10, !noalias !7
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
  %n.vec180 = and i64 %wide.trip.count, 4294967288
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index182 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next185, %vec.epilog.vector.body ]
  %45 = getelementptr inbounds i8, i8* %call51, i64 %index182
  %46 = bitcast i8* %45 to <8 x i8>*
  %wide.load183 = load <8 x i8>, <8 x i8>* %46, align 1, !tbaa !4
  %47 = getelementptr inbounds i8, i8* %add.ptr18, i64 %index182
  %48 = bitcast i8* %47 to <8 x i8>*
  %wide.load184 = load <8 x i8>, <8 x i8>* %48, align 1, !tbaa !4
  %49 = xor <8 x i8> %wide.load184, %wide.load183
  %50 = bitcast i8* %47 to <8 x i8>*
  store <8 x i8> %49, <8 x i8>* %50, align 1, !tbaa !4
  %index.next185 = add nuw i64 %index182, 8
  %51 = icmp eq i64 %index.next185, %n.vec180
  br i1 %51, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !15

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n181 = icmp eq i64 %n.vec180, %wide.trip.count
  br i1 %cmp.n181, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec180, %vec.epilog.middle.block ]
  %52 = xor i64 %indvars.iv.ph, -1
  %53 = add nsw i64 %52, %wide.trip.count
  %xtraiter219 = and i64 %wide.trip.count, 3
  %lcmp.mod220.not = icmp eq i64 %xtraiter219, 0
  br i1 %lcmp.mod220.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader, %for.body.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body.prol ], [ %indvars.iv.ph, %for.body.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader ]
  %arrayidx66.prol = getelementptr inbounds i8, i8* %call51, i64 %indvars.iv.prol
  %54 = load i8, i8* %arrayidx66.prol, align 1, !tbaa !4
  %arrayidx69.prol = getelementptr inbounds i8, i8* %add.ptr18, i64 %indvars.iv.prol
  %55 = load i8, i8* %arrayidx69.prol, align 1, !tbaa !4
  %xor162.prol = xor i8 %55, %54
  store i8 %xor162.prol, i8* %arrayidx69.prol, align 1, !tbaa !4
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter219
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !17

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body.preheader ], [ %indvars.iv.next.prol, %for.body.prol ]
  %56 = icmp ult i64 %53, 3
  br i1 %56, label %for.end, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body ], [ %indvars.iv.unr, %for.body.prol.loopexit ]
  %arrayidx66 = getelementptr inbounds i8, i8* %call51, i64 %indvars.iv
  %57 = load i8, i8* %arrayidx66, align 1, !tbaa !4
  %arrayidx69 = getelementptr inbounds i8, i8* %add.ptr18, i64 %indvars.iv
  %58 = load i8, i8* %arrayidx69, align 1, !tbaa !4
  %xor162 = xor i8 %58, %57
  store i8 %xor162, i8* %arrayidx69, align 1, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx66.1 = getelementptr inbounds i8, i8* %call51, i64 %indvars.iv.next
  %59 = load i8, i8* %arrayidx66.1, align 1, !tbaa !4
  %arrayidx69.1 = getelementptr inbounds i8, i8* %add.ptr18, i64 %indvars.iv.next
  %60 = load i8, i8* %arrayidx69.1, align 1, !tbaa !4
  %xor162.1 = xor i8 %60, %59
  store i8 %xor162.1, i8* %arrayidx69.1, align 1, !tbaa !4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx66.2 = getelementptr inbounds i8, i8* %call51, i64 %indvars.iv.next.1
  %61 = load i8, i8* %arrayidx66.2, align 1, !tbaa !4
  %arrayidx69.2 = getelementptr inbounds i8, i8* %add.ptr18, i64 %indvars.iv.next.1
  %62 = load i8, i8* %arrayidx69.2, align 1, !tbaa !4
  %xor162.2 = xor i8 %62, %61
  store i8 %xor162.2, i8* %arrayidx69.2, align 1, !tbaa !4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %arrayidx66.3 = getelementptr inbounds i8, i8* %call51, i64 %indvars.iv.next.2
  %63 = load i8, i8* %arrayidx66.3, align 1, !tbaa !4
  %arrayidx69.3 = getelementptr inbounds i8, i8* %add.ptr18, i64 %indvars.iv.next.2
  %64 = load i8, i8* %arrayidx69.3, align 1, !tbaa !4
  %xor162.3 = xor i8 %64, %63
  store i8 %xor162.3, i8* %arrayidx69.3, align 1, !tbaa !4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %for.end, label %for.body, !llvm.loop !19

for.end:                                          ; preds = %for.body.prol.loopexit, %for.body, %middle.block, %vec.epilog.middle.block, %for.cond.preheader
  %call74 = call i32 @PKCS1_MGF1(i8* noundef nonnull %0, i64 noundef %idx.ext163, i8* noundef nonnull %add.ptr18, i64 noundef %conv50, %struct.evp_md_st* noundef %spec.select) #6
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %err, label %for.cond79.preheader

for.cond79.preheader:                             ; preds = %for.end
  %cmp80166 = icmp sgt i32 %call4, 0
  br i1 %cmp80166, label %iter.check190, label %err

iter.check190:                                    ; preds = %for.cond79.preheader
  %min.iters.check188 = icmp ult i32 %call4, 8
  br i1 %min.iters.check188, label %for.body82.preheader, label %vector.main.loop.iter.check192

vector.main.loop.iter.check192:                   ; preds = %iter.check190
  %min.iters.check191 = icmp ult i32 %call4, 32
  br i1 %min.iters.check191, label %vec.epilog.ph207, label %vector.ph193

vector.ph193:                                     ; preds = %vector.main.loop.iter.check192
  %n.vec195 = and i64 %idx.ext163, 4294967264
  %65 = add nsw i64 %n.vec195, -32
  %66 = lshr exact i64 %65, 5
  %67 = add nuw nsw i64 %66, 1
  %xtraiter221 = and i64 %67, 1
  %68 = icmp eq i64 %65, 0
  br i1 %68, label %middle.block186.unr-lcssa, label %vector.ph193.new

vector.ph193.new:                                 ; preds = %vector.ph193
  %unroll_iter223 = and i64 %67, 1152921504606846974
  br label %vector.body187

vector.body187:                                   ; preds = %vector.body187, %vector.ph193.new
  %index197 = phi i64 [ 0, %vector.ph193.new ], [ %index.next202.1, %vector.body187 ]
  %niter224 = phi i64 [ 0, %vector.ph193.new ], [ %niter224.next.1, %vector.body187 ]
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %seedmask, i64 0, i64 %index197
  %70 = bitcast i8* %69 to <16 x i8>*
  %wide.load198 = load <16 x i8>, <16 x i8>* %70, align 16, !tbaa !4
  %71 = getelementptr inbounds i8, i8* %69, i64 16
  %72 = bitcast i8* %71 to <16 x i8>*
  %wide.load199 = load <16 x i8>, <16 x i8>* %72, align 16, !tbaa !4
  %73 = getelementptr inbounds i8, i8* %add.ptr, i64 %index197
  %74 = bitcast i8* %73 to <16 x i8>*
  %wide.load200 = load <16 x i8>, <16 x i8>* %74, align 1, !tbaa !4
  %75 = getelementptr inbounds i8, i8* %73, i64 16
  %76 = bitcast i8* %75 to <16 x i8>*
  %wide.load201 = load <16 x i8>, <16 x i8>* %76, align 1, !tbaa !4
  %77 = xor <16 x i8> %wide.load200, %wide.load198
  %78 = xor <16 x i8> %wide.load201, %wide.load199
  %79 = bitcast i8* %73 to <16 x i8>*
  store <16 x i8> %77, <16 x i8>* %79, align 1, !tbaa !4
  %80 = bitcast i8* %75 to <16 x i8>*
  store <16 x i8> %78, <16 x i8>* %80, align 1, !tbaa !4
  %index.next202 = or i64 %index197, 32
  %81 = getelementptr inbounds [64 x i8], [64 x i8]* %seedmask, i64 0, i64 %index.next202
  %82 = bitcast i8* %81 to <16 x i8>*
  %wide.load198.1 = load <16 x i8>, <16 x i8>* %82, align 16, !tbaa !4
  %83 = getelementptr inbounds i8, i8* %81, i64 16
  %84 = bitcast i8* %83 to <16 x i8>*
  %wide.load199.1 = load <16 x i8>, <16 x i8>* %84, align 16, !tbaa !4
  %85 = getelementptr inbounds i8, i8* %add.ptr, i64 %index.next202
  %86 = bitcast i8* %85 to <16 x i8>*
  %wide.load200.1 = load <16 x i8>, <16 x i8>* %86, align 1, !tbaa !4
  %87 = getelementptr inbounds i8, i8* %85, i64 16
  %88 = bitcast i8* %87 to <16 x i8>*
  %wide.load201.1 = load <16 x i8>, <16 x i8>* %88, align 1, !tbaa !4
  %89 = xor <16 x i8> %wide.load200.1, %wide.load198.1
  %90 = xor <16 x i8> %wide.load201.1, %wide.load199.1
  %91 = bitcast i8* %85 to <16 x i8>*
  store <16 x i8> %89, <16 x i8>* %91, align 1, !tbaa !4
  %92 = bitcast i8* %87 to <16 x i8>*
  store <16 x i8> %90, <16 x i8>* %92, align 1, !tbaa !4
  %index.next202.1 = add nuw i64 %index197, 64
  %niter224.next.1 = add i64 %niter224, 2
  %niter224.ncmp.1 = icmp eq i64 %niter224.next.1, %unroll_iter223
  br i1 %niter224.ncmp.1, label %middle.block186.unr-lcssa, label %vector.body187, !llvm.loop !20

middle.block186.unr-lcssa:                        ; preds = %vector.body187, %vector.ph193
  %index197.unr = phi i64 [ 0, %vector.ph193 ], [ %index.next202.1, %vector.body187 ]
  %lcmp.mod222.not = icmp eq i64 %xtraiter221, 0
  br i1 %lcmp.mod222.not, label %middle.block186, label %vector.body187.epil

vector.body187.epil:                              ; preds = %middle.block186.unr-lcssa
  %93 = getelementptr inbounds [64 x i8], [64 x i8]* %seedmask, i64 0, i64 %index197.unr
  %94 = bitcast i8* %93 to <16 x i8>*
  %wide.load198.epil = load <16 x i8>, <16 x i8>* %94, align 16, !tbaa !4
  %95 = getelementptr inbounds i8, i8* %93, i64 16
  %96 = bitcast i8* %95 to <16 x i8>*
  %wide.load199.epil = load <16 x i8>, <16 x i8>* %96, align 16, !tbaa !4
  %97 = getelementptr inbounds i8, i8* %add.ptr, i64 %index197.unr
  %98 = bitcast i8* %97 to <16 x i8>*
  %wide.load200.epil = load <16 x i8>, <16 x i8>* %98, align 1, !tbaa !4
  %99 = getelementptr inbounds i8, i8* %97, i64 16
  %100 = bitcast i8* %99 to <16 x i8>*
  %wide.load201.epil = load <16 x i8>, <16 x i8>* %100, align 1, !tbaa !4
  %101 = xor <16 x i8> %wide.load200.epil, %wide.load198.epil
  %102 = xor <16 x i8> %wide.load201.epil, %wide.load199.epil
  %103 = bitcast i8* %97 to <16 x i8>*
  store <16 x i8> %101, <16 x i8>* %103, align 1, !tbaa !4
  %104 = bitcast i8* %99 to <16 x i8>*
  store <16 x i8> %102, <16 x i8>* %104, align 1, !tbaa !4
  br label %middle.block186

middle.block186:                                  ; preds = %middle.block186.unr-lcssa, %vector.body187.epil
  %cmp.n196 = icmp eq i64 %n.vec195, %idx.ext163
  br i1 %cmp.n196, label %err, label %vec.epilog.iter.check206

vec.epilog.iter.check206:                         ; preds = %middle.block186
  %n.vec.remaining208 = and i64 %idx.ext163, 24
  %min.epilog.iters.check209 = icmp eq i64 %n.vec.remaining208, 0
  br i1 %min.epilog.iters.check209, label %for.body82.preheader, label %vec.epilog.ph207

vec.epilog.ph207:                                 ; preds = %vector.main.loop.iter.check192, %vec.epilog.iter.check206
  %vec.epilog.resume.val210 = phi i64 [ %n.vec195, %vec.epilog.iter.check206 ], [ 0, %vector.main.loop.iter.check192 ]
  %n.vec212 = and i64 %idx.ext163, 4294967288
  br label %vec.epilog.vector.body205

vec.epilog.vector.body205:                        ; preds = %vec.epilog.vector.body205, %vec.epilog.ph207
  %index215 = phi i64 [ %vec.epilog.resume.val210, %vec.epilog.ph207 ], [ %index.next218, %vec.epilog.vector.body205 ]
  %105 = getelementptr inbounds [64 x i8], [64 x i8]* %seedmask, i64 0, i64 %index215
  %106 = bitcast i8* %105 to <8 x i8>*
  %wide.load216 = load <8 x i8>, <8 x i8>* %106, align 8, !tbaa !4
  %107 = getelementptr inbounds i8, i8* %add.ptr, i64 %index215
  %108 = bitcast i8* %107 to <8 x i8>*
  %wide.load217 = load <8 x i8>, <8 x i8>* %108, align 1, !tbaa !4
  %109 = xor <8 x i8> %wide.load217, %wide.load216
  %110 = bitcast i8* %107 to <8 x i8>*
  store <8 x i8> %109, <8 x i8>* %110, align 1, !tbaa !4
  %index.next218 = add nuw i64 %index215, 8
  %111 = icmp eq i64 %index.next218, %n.vec212
  br i1 %111, label %vec.epilog.middle.block203, label %vec.epilog.vector.body205, !llvm.loop !21

vec.epilog.middle.block203:                       ; preds = %vec.epilog.vector.body205
  %cmp.n214 = icmp eq i64 %n.vec212, %idx.ext163
  br i1 %cmp.n214, label %err, label %for.body82.preheader

for.body82.preheader:                             ; preds = %iter.check190, %vec.epilog.iter.check206, %vec.epilog.middle.block203
  %indvars.iv169.ph = phi i64 [ 0, %iter.check190 ], [ %n.vec195, %vec.epilog.iter.check206 ], [ %n.vec212, %vec.epilog.middle.block203 ]
  br label %for.body82

for.body82:                                       ; preds = %for.body82.preheader, %for.body82
  %indvars.iv169 = phi i64 [ %indvars.iv.next170, %for.body82 ], [ %indvars.iv169.ph, %for.body82.preheader ]
  %arrayidx84 = getelementptr inbounds [64 x i8], [64 x i8]* %seedmask, i64 0, i64 %indvars.iv169
  %112 = load i8, i8* %arrayidx84, align 1, !tbaa !4
  %arrayidx87 = getelementptr inbounds i8, i8* %add.ptr, i64 %indvars.iv169
  %113 = load i8, i8* %arrayidx87, align 1, !tbaa !4
  %xor89161 = xor i8 %113, %112
  store i8 %xor89161, i8* %arrayidx87, align 1, !tbaa !4
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1
  %exitcond173.not = icmp eq i64 %indvars.iv.next170, %idx.ext163
  br i1 %exitcond173.not, label %err, label %for.body82, !llvm.loop !22

err:                                              ; preds = %for.body82, %middle.block186, %vec.epilog.middle.block203, %for.cond79.preheader, %for.end, %if.end55, %if.end21, %if.end16, %if.then54
  %rv.0 = phi i32 [ 0, %if.end21 ], [ 0, %if.then54 ], [ 0, %if.end55 ], [ 0, %for.end ], [ 0, %if.end16 ], [ 1, %for.cond79.preheader ], [ 1, %vec.epilog.middle.block203 ], [ 1, %middle.block186 ], [ 1, %for.body82 ]
  %dbmask.0 = phi i8* [ null, %if.end21 ], [ null, %if.then54 ], [ %call51, %if.end55 ], [ %call51, %for.end ], [ null, %if.end16 ], [ %call51, %for.cond79.preheader ], [ %call51, %vec.epilog.middle.block203 ], [ %call51, %middle.block186 ], [ %call51, %for.body82 ]
  %dbmask_len.0 = phi i32 [ 0, %if.end21 ], [ %sub49, %if.then54 ], [ %sub49, %if.end55 ], [ %sub49, %for.end ], [ 0, %if.end16 ], [ %sub49, %for.cond79.preheader ], [ %sub49, %vec.epilog.middle.block203 ], [ %sub49, %middle.block186 ], [ %sub49, %for.body82 ]
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 64) #8
  %conv95 = sext i32 %dbmask_len.0 to i64
  call void @CRYPTO_clear_free(i8* noundef %dbmask.0, i64 noundef %conv95, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 137) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then15, %if.then11, %if.then6
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 0, %if.then11 ], [ 0, %if.then15 ], [ %rv.0, %err ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.evp_md_st* @EVP_sha1() local_unnamed_addr #2

declare i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @EVP_Digest(i8* noundef, i64 noundef, i8* noundef, i32* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS1_MGF1(i8* noundef %mask, i64 noundef %len, i8* noundef %seed, i64 noundef %seedlen, %struct.evp_md_st* noundef %dgst) local_unnamed_addr #0 {
entry:
  %cnt = alloca [4 x i8], align 1
  %md = alloca [64 x i8], align 16
  %0 = getelementptr inbounds [4 x i8], [4 x i8]* %cnt, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  %call = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #8
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %md, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #7
  %cmp = icmp eq %struct.evp_md_ctx_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %dgst) #8
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %err, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %cmp574 = icmp sgt i64 %len, 0
  br i1 %cmp574, label %for.body.lr.ph, label %err

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arrayidx9 = getelementptr inbounds [4 x i8], [4 x i8]* %cnt, i64 0, i64 1
  %arrayidx15 = getelementptr inbounds [4 x i8], [4 x i8]* %cnt, i64 0, i64 2
  %arrayidx18 = getelementptr inbounds [4 x i8], [4 x i8]* %cnt, i64 0, i64 3
  %conv2785 = zext i32 %call1 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.076 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %outlen.075 = phi i64 [ 0, %for.body.lr.ph ], [ %add, %for.inc ]
  %2 = lshr i64 %i.076, 24
  %conv = trunc i64 %2 to i8
  store i8 %conv, i8* %0, align 1, !tbaa !4
  %3 = lshr i64 %i.076, 16
  %conv8 = trunc i64 %3 to i8
  store i8 %conv8, i8* %arrayidx9, align 1, !tbaa !4
  %4 = lshr i64 %i.076, 8
  %conv14 = trunc i64 %4 to i8
  store i8 %conv14, i8* %arrayidx15, align 1, !tbaa !4
  %conv17 = trunc i64 %i.076 to i8
  store i8 %conv17, i8* %arrayidx18, align 1, !tbaa !4
  %call19 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call, %struct.evp_md_st* noundef %dgst, %struct.engine_st* noundef null) #8
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %call20 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef %seed, i64 noundef %seedlen) #8
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false
  %call23 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef nonnull %0, i64 noundef 4) #8
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %if.end26

if.end26:                                         ; preds = %lor.lhs.false22
  %add = add nuw nsw i64 %outlen.075, %conv2785
  %cmp28.not = icmp sgt i64 %add, %len
  br i1 %cmp28.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.end26
  %add.ptr = getelementptr inbounds i8, i8* %mask, i64 %outlen.075
  %call31 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef %add.ptr, i32* noundef null) #8
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %for.inc

if.else:                                          ; preds = %if.end26
  %call38 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef nonnull %1, i32* noundef null) #8
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %err, label %for.inc.thread

for.inc.thread:                                   ; preds = %if.else
  %add.ptr42 = getelementptr inbounds i8, i8* %mask, i64 %outlen.075
  %sub = sub nsw i64 %len, %outlen.075
  %call44 = call i8* @memcpy(i8* noundef %add.ptr42, i8* noundef nonnull %1, i64 noundef %sub) #8
  br label %err

for.inc:                                          ; preds = %if.then30
  %inc = add nuw nsw i64 %i.076, 1
  %cmp5 = icmp slt i64 %add, %len
  br i1 %cmp5, label %for.body, label %err, !llvm.loop !23

err:                                              ; preds = %lor.lhs.false22, %lor.lhs.false, %for.body, %if.then30, %for.inc, %if.else, %for.inc.thread, %for.cond.preheader, %if.end, %entry
  %rv.0 = phi i32 [ -1, %entry ], [ -1, %if.end ], [ 0, %for.cond.preheader ], [ -1, %if.else ], [ 0, %for.inc.thread ], [ -1, %lor.lhs.false22 ], [ -1, %lor.lhs.false ], [ -1, %for.body ], [ -1, %if.then30 ], [ 0, %for.inc ]
  call void @OPENSSL_cleanse(i8* noundef nonnull %1, i64 noundef 64) #8
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call) #8
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret i32 %rv.0
}

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_padding_add_PKCS1_OAEP_mgf1(i8* noundef %to, i32 noundef %tlen, i8* noundef %from, i32 noundef %flen, i8* noundef %param, i32 noundef %plen, %struct.evp_md_st* noundef %md, %struct.evp_md_st* noundef %mgf1md) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_rsa_padding_add_PKCS1_OAEP_mgf1_ex(%struct.ossl_lib_ctx_st* noundef null, i8* noundef %to, i32 noundef %tlen, i8* noundef %from, i32 noundef %flen, i8* noundef %param, i32 noundef %plen, %struct.evp_md_st* noundef %md, %struct.evp_md_st* noundef %mgf1md) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_padding_check_PKCS1_OAEP(i8* nocapture noundef %to, i32 noundef %tlen, i8* nocapture noundef readonly %from, i32 noundef %flen, i32 noundef %num, i8* noundef %param, i32 noundef %plen) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @RSA_padding_check_PKCS1_OAEP_mgf1(i8* noundef %to, i32 noundef %tlen, i8* noundef %from, i32 noundef %flen, i32 noundef %num, i8* noundef %param, i32 noundef %plen, %struct.evp_md_st* noundef null, %struct.evp_md_st* noundef null) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_padding_check_PKCS1_OAEP_mgf1(i8* nocapture noundef %to, i32 noundef %tlen, i8* nocapture noundef readonly %from, i32 noundef %flen, i32 noundef %num, i8* noundef %param, i32 noundef %plen, %struct.evp_md_st* noundef %md, %struct.evp_md_st* noundef %mgf1md) local_unnamed_addr #0 {
entry:
  %seed = alloca [64 x i8], align 16
  %seed372 = getelementptr inbounds [64 x i8], [64 x i8]* %seed, i64 0, i64 0
  %phash = alloca [64 x i8], align 16
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %seed, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #7
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %phash, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #7
  %cmp = icmp eq %struct.evp_md_st* %md, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call %struct.evp_md_st* @EVP_sha1() #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %md.addr.0 = phi %struct.evp_md_st* [ %call, %if.then ], [ %md, %entry ]
  %cmp1 = icmp eq %struct.evp_md_st* %mgf1md, null
  %spec.select = select i1 %cmp1, %struct.evp_md_st* %md.addr.0, %struct.evp_md_st* %mgf1md
  %call4 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %md.addr.0) #8
  %cmp5 = icmp slt i32 %tlen, 1
  %cmp6 = icmp slt i32 %flen, 1
  %or.cond = or i1 %cmp5, %cmp6
  br i1 %or.cond, label %cleanup182, label %if.end8

if.end8:                                          ; preds = %if.end
  %cmp9 = icmp slt i32 %num, %flen
  br i1 %cmp9, label %if.then12, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %if.end8
  %mul = shl nsw i32 %call4, 1
  %add = add nsw i32 %mul, 2
  %cmp11 = icmp sgt i32 %add, %num
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %lor.lhs.false10, %if.end8
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 200, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.RSA_padding_check_PKCS1_OAEP_mgf1, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 121, i8* noundef null) #8
  br label %cleanup182

if.end13:                                         ; preds = %lor.lhs.false10
  %2 = xor i32 %call4, -1
  %sub14 = add i32 %2, %num
  %conv = sext i32 %sub14 to i64
  %call15 = tail call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 205) #8
  %cmp16 = icmp eq i8* %call15, null
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end13
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 207, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.RSA_padding_check_PKCS1_OAEP_mgf1, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786688, i8* noundef null) #8
  %.pre371 = sext i32 %num to i64
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %conv20 = sext i32 %num to i64
  %call21 = tail call i8* @CRYPTO_malloc(i64 noundef %conv20, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 211) #8
  %cmp22 = icmp eq i8* %call21, null
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end19
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 213, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.RSA_padding_check_PKCS1_OAEP_mgf1, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  %add.ptr27 = getelementptr inbounds i8, i8* %call21, i64 %conv20
  %cmp28326 = icmp sgt i32 %num, 0
  br i1 %cmp28326, label %for.body.preheader, label %if.end25.for.end_crit_edge

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  %.pre = load i8, i8* %add.ptr27, align 1, !tbaa !4
  br label %for.end

for.body.preheader:                               ; preds = %if.end25
  %idx.ext325 = zext i32 %flen to i64
  %add.ptr = getelementptr inbounds i8, i8* %from, i64 %idx.ext325
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %from.addr.0330 = phi i8* [ %add.ptr34, %for.body ], [ %add.ptr, %for.body.preheader ]
  %em.0329 = phi i8* [ %incdec.ptr, %for.body ], [ %add.ptr27, %for.body.preheader ]
  %flen.addr.0328 = phi i32 [ %sub31, %for.body ], [ %flen, %for.body.preheader ]
  %i.0327 = phi i32 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %call30 = tail call fastcc i32 @constant_time_is_zero(i32 noundef %flen.addr.0328) #6
  %neg = xor i32 %call30, -1
  %and = and i32 %neg, 1
  %sub31 = sub i32 %flen.addr.0328, %and
  %idx.ext33 = zext i32 %and to i64
  %idx.neg = sub nsw i64 0, %idx.ext33
  %add.ptr34 = getelementptr inbounds i8, i8* %from.addr.0330, i64 %idx.neg
  %3 = load i8, i8* %add.ptr34, align 1, !tbaa !4
  %4 = trunc i32 %neg to i8
  %conv37 = and i8 %3, %4
  %incdec.ptr = getelementptr inbounds i8, i8* %em.0329, i64 -1
  store i8 %conv37, i8* %incdec.ptr, align 1, !tbaa !4
  %inc = add nuw nsw i32 %i.0327, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !24

for.end:                                          ; preds = %for.body, %if.end25.for.end_crit_edge
  %5 = phi i8 [ %.pre, %if.end25.for.end_crit_edge ], [ %conv37, %for.body ]
  %em.0.lcssa = phi i8* [ %add.ptr27, %if.end25.for.end_crit_edge ], [ %incdec.ptr, %for.body ]
  %conv38 = zext i8 %5 to i32
  %call39 = tail call fastcc i32 @constant_time_is_zero(i32 noundef %conv38) #6
  %add.ptr40 = getelementptr inbounds i8, i8* %em.0.lcssa, i64 1
  %idx.ext42 = sext i32 %call4 to i64
  %add.ptr43 = getelementptr inbounds i8, i8* %add.ptr40, i64 %idx.ext42
  %call46 = call i32 @PKCS1_MGF1(i8* noundef nonnull %0, i64 noundef %idx.ext42, i8* noundef nonnull %add.ptr43, i64 noundef %conv, %struct.evp_md_st* noundef %spec.select) #6
  %tobool.not = icmp eq i32 %call46, 0
  br i1 %tobool.not, label %for.cond49.preheader, label %cleanup

for.cond49.preheader:                             ; preds = %for.end
  %cmp50331 = icmp sgt i32 %call4, 0
  br i1 %cmp50331, label %iter.check, label %for.end61

iter.check:                                       ; preds = %for.cond49.preheader
  %wide.trip.count = zext i32 %call4 to i64
  %min.iters.check = icmp ult i32 %call4, 8
  br i1 %min.iters.check, label %for.body52.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr [64 x i8], [64 x i8]* %seed, i64 0, i64 %wide.trip.count
  %6 = add nuw nsw i64 %wide.trip.count, 1
  %scevgep373 = getelementptr i8, i8* %em.0.lcssa, i64 %6
  %bound0 = icmp ult i8* %seed372, %scevgep373
  %bound1 = icmp ult i8* %add.ptr40, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body52.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check374 = icmp ult i32 %call4, 32
  br i1 %min.iters.check374, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %wide.trip.count, 4294967264
  %7 = add nsw i64 %n.vec, -32
  %8 = lshr exact i64 %7, 5
  %9 = add nuw nsw i64 %8, 1
  %xtraiter = and i64 %9, 1
  %10 = icmp eq i64 %7, 0
  br i1 %10, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %9, 1152921504606846974
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %11 = getelementptr inbounds i8, i8* %add.ptr40, i64 %index
  %12 = bitcast i8* %11 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %12, align 1, !tbaa !4, !alias.scope !25
  %13 = getelementptr inbounds i8, i8* %11, i64 16
  %14 = bitcast i8* %13 to <16 x i8>*
  %wide.load375 = load <16 x i8>, <16 x i8>* %14, align 1, !tbaa !4, !alias.scope !25
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %seed, i64 0, i64 %index
  %16 = bitcast i8* %15 to <16 x i8>*
  %wide.load376 = load <16 x i8>, <16 x i8>* %16, align 16, !tbaa !4, !alias.scope !28, !noalias !25
  %17 = getelementptr inbounds i8, i8* %15, i64 16
  %18 = bitcast i8* %17 to <16 x i8>*
  %wide.load377 = load <16 x i8>, <16 x i8>* %18, align 16, !tbaa !4, !alias.scope !28, !noalias !25
  %19 = xor <16 x i8> %wide.load376, %wide.load
  %20 = xor <16 x i8> %wide.load377, %wide.load375
  %21 = bitcast i8* %15 to <16 x i8>*
  store <16 x i8> %19, <16 x i8>* %21, align 16, !tbaa !4, !alias.scope !28, !noalias !25
  %22 = bitcast i8* %17 to <16 x i8>*
  store <16 x i8> %20, <16 x i8>* %22, align 16, !tbaa !4, !alias.scope !28, !noalias !25
  %index.next = or i64 %index, 32
  %23 = getelementptr inbounds i8, i8* %add.ptr40, i64 %index.next
  %24 = bitcast i8* %23 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %24, align 1, !tbaa !4, !alias.scope !25
  %25 = getelementptr inbounds i8, i8* %23, i64 16
  %26 = bitcast i8* %25 to <16 x i8>*
  %wide.load375.1 = load <16 x i8>, <16 x i8>* %26, align 1, !tbaa !4, !alias.scope !25
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %seed, i64 0, i64 %index.next
  %28 = bitcast i8* %27 to <16 x i8>*
  %wide.load376.1 = load <16 x i8>, <16 x i8>* %28, align 16, !tbaa !4, !alias.scope !28, !noalias !25
  %29 = getelementptr inbounds i8, i8* %27, i64 16
  %30 = bitcast i8* %29 to <16 x i8>*
  %wide.load377.1 = load <16 x i8>, <16 x i8>* %30, align 16, !tbaa !4, !alias.scope !28, !noalias !25
  %31 = xor <16 x i8> %wide.load376.1, %wide.load.1
  %32 = xor <16 x i8> %wide.load377.1, %wide.load375.1
  %33 = bitcast i8* %27 to <16 x i8>*
  store <16 x i8> %31, <16 x i8>* %33, align 16, !tbaa !4, !alias.scope !28, !noalias !25
  %34 = bitcast i8* %29 to <16 x i8>*
  store <16 x i8> %32, <16 x i8>* %34, align 16, !tbaa !4, !alias.scope !28, !noalias !25
  %index.next.1 = add nuw i64 %index, 64
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !30

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %35 = getelementptr inbounds i8, i8* %add.ptr40, i64 %index.unr
  %36 = bitcast i8* %35 to <16 x i8>*
  %wide.load.epil = load <16 x i8>, <16 x i8>* %36, align 1, !tbaa !4, !alias.scope !25
  %37 = getelementptr inbounds i8, i8* %35, i64 16
  %38 = bitcast i8* %37 to <16 x i8>*
  %wide.load375.epil = load <16 x i8>, <16 x i8>* %38, align 1, !tbaa !4, !alias.scope !25
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %seed, i64 0, i64 %index.unr
  %40 = bitcast i8* %39 to <16 x i8>*
  %wide.load376.epil = load <16 x i8>, <16 x i8>* %40, align 16, !tbaa !4, !alias.scope !28, !noalias !25
  %41 = getelementptr inbounds i8, i8* %39, i64 16
  %42 = bitcast i8* %41 to <16 x i8>*
  %wide.load377.epil = load <16 x i8>, <16 x i8>* %42, align 16, !tbaa !4, !alias.scope !28, !noalias !25
  %43 = xor <16 x i8> %wide.load376.epil, %wide.load.epil
  %44 = xor <16 x i8> %wide.load377.epil, %wide.load375.epil
  %45 = bitcast i8* %39 to <16 x i8>*
  store <16 x i8> %43, <16 x i8>* %45, align 16, !tbaa !4, !alias.scope !28, !noalias !25
  %46 = bitcast i8* %41 to <16 x i8>*
  store <16 x i8> %44, <16 x i8>* %46, align 16, !tbaa !4, !alias.scope !28, !noalias !25
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.end61, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %n.vec.remaining = and i64 %wide.trip.count, 24
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check, label %for.body52.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec379 = and i64 %wide.trip.count, 4294967288
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index381 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next384, %vec.epilog.vector.body ]
  %47 = getelementptr inbounds i8, i8* %add.ptr40, i64 %index381
  %48 = bitcast i8* %47 to <8 x i8>*
  %wide.load382 = load <8 x i8>, <8 x i8>* %48, align 1, !tbaa !4
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %seed, i64 0, i64 %index381
  %50 = bitcast i8* %49 to <8 x i8>*
  %wide.load383 = load <8 x i8>, <8 x i8>* %50, align 8, !tbaa !4
  %51 = xor <8 x i8> %wide.load383, %wide.load382
  %52 = bitcast i8* %49 to <8 x i8>*
  store <8 x i8> %51, <8 x i8>* %52, align 8, !tbaa !4
  %index.next384 = add nuw i64 %index381, 8
  %53 = icmp eq i64 %index.next384, %n.vec379
  br i1 %53, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !31

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n380 = icmp eq i64 %n.vec379, %wide.trip.count
  br i1 %cmp.n380, label %for.end61, label %for.body52.preheader

for.body52.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec379, %vec.epilog.middle.block ]
  %54 = xor i64 %indvars.iv.ph, -1
  %55 = add nsw i64 %54, %wide.trip.count
  %xtraiter424 = and i64 %wide.trip.count, 3
  %lcmp.mod425.not = icmp eq i64 %xtraiter424, 0
  br i1 %lcmp.mod425.not, label %for.body52.prol.loopexit, label %for.body52.prol

for.body52.prol:                                  ; preds = %for.body52.preheader, %for.body52.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body52.prol ], [ %indvars.iv.ph, %for.body52.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body52.prol ], [ 0, %for.body52.preheader ]
  %arrayidx53.prol = getelementptr inbounds i8, i8* %add.ptr40, i64 %indvars.iv.prol
  %56 = load i8, i8* %arrayidx53.prol, align 1, !tbaa !4
  %arrayidx56.prol = getelementptr inbounds [64 x i8], [64 x i8]* %seed, i64 0, i64 %indvars.iv.prol
  %57 = load i8, i8* %arrayidx56.prol, align 1, !tbaa !4
  %xor324.prol = xor i8 %57, %56
  store i8 %xor324.prol, i8* %arrayidx56.prol, align 1, !tbaa !4
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter424
  br i1 %prol.iter.cmp.not, label %for.body52.prol.loopexit, label %for.body52.prol, !llvm.loop !32

for.body52.prol.loopexit:                         ; preds = %for.body52.prol, %for.body52.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body52.preheader ], [ %indvars.iv.next.prol, %for.body52.prol ]
  %58 = icmp ult i64 %55, 3
  br i1 %58, label %for.end61, label %for.body52

for.body52:                                       ; preds = %for.body52.prol.loopexit, %for.body52
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body52 ], [ %indvars.iv.unr, %for.body52.prol.loopexit ]
  %arrayidx53 = getelementptr inbounds i8, i8* %add.ptr40, i64 %indvars.iv
  %59 = load i8, i8* %arrayidx53, align 1, !tbaa !4
  %arrayidx56 = getelementptr inbounds [64 x i8], [64 x i8]* %seed, i64 0, i64 %indvars.iv
  %60 = load i8, i8* %arrayidx56, align 1, !tbaa !4
  %xor324 = xor i8 %60, %59
  store i8 %xor324, i8* %arrayidx56, align 1, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx53.1 = getelementptr inbounds i8, i8* %add.ptr40, i64 %indvars.iv.next
  %61 = load i8, i8* %arrayidx53.1, align 1, !tbaa !4
  %arrayidx56.1 = getelementptr inbounds [64 x i8], [64 x i8]* %seed, i64 0, i64 %indvars.iv.next
  %62 = load i8, i8* %arrayidx56.1, align 1, !tbaa !4
  %xor324.1 = xor i8 %62, %61
  store i8 %xor324.1, i8* %arrayidx56.1, align 1, !tbaa !4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx53.2 = getelementptr inbounds i8, i8* %add.ptr40, i64 %indvars.iv.next.1
  %63 = load i8, i8* %arrayidx53.2, align 1, !tbaa !4
  %arrayidx56.2 = getelementptr inbounds [64 x i8], [64 x i8]* %seed, i64 0, i64 %indvars.iv.next.1
  %64 = load i8, i8* %arrayidx56.2, align 1, !tbaa !4
  %xor324.2 = xor i8 %64, %63
  store i8 %xor324.2, i8* %arrayidx56.2, align 1, !tbaa !4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %arrayidx53.3 = getelementptr inbounds i8, i8* %add.ptr40, i64 %indvars.iv.next.2
  %65 = load i8, i8* %arrayidx53.3, align 1, !tbaa !4
  %arrayidx56.3 = getelementptr inbounds [64 x i8], [64 x i8]* %seed, i64 0, i64 %indvars.iv.next.2
  %66 = load i8, i8* %arrayidx56.3, align 1, !tbaa !4
  %xor324.3 = xor i8 %66, %65
  store i8 %xor324.3, i8* %arrayidx56.3, align 1, !tbaa !4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %exitcond352.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond352.not.3, label %for.end61, label %for.body52, !llvm.loop !33

for.end61:                                        ; preds = %for.body52.prol.loopexit, %for.body52, %middle.block, %vec.epilog.middle.block, %for.cond49.preheader
  %call65 = call i32 @PKCS1_MGF1(i8* noundef nonnull %call15, i64 noundef %conv, i8* noundef nonnull %0, i64 noundef %idx.ext42, %struct.evp_md_st* noundef %spec.select) #6
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %for.cond69.preheader, label %cleanup

for.cond69.preheader:                             ; preds = %for.end61
  %cmp70333 = icmp sgt i32 %sub14, 0
  br i1 %cmp70333, label %iter.check395, label %for.end83

iter.check395:                                    ; preds = %for.cond69.preheader
  %wide.trip.count356 = zext i32 %sub14 to i64
  %min.iters.check393 = icmp ult i32 %sub14, 8
  br i1 %min.iters.check393, label %for.body72.preheader, label %vector.memcheck385

vector.memcheck385:                               ; preds = %iter.check395
  %scevgep386 = getelementptr i8, i8* %call15, i64 %wide.trip.count356
  %67 = add nsw i64 %idx.ext42, %wide.trip.count356
  %68 = add nsw i64 %67, 1
  %scevgep387 = getelementptr i8, i8* %em.0.lcssa, i64 %68
  %bound0388 = icmp ult i8* %call15, %scevgep387
  %bound1389 = icmp ult i8* %add.ptr43, %scevgep386
  %found.conflict390 = and i1 %bound0388, %bound1389
  br i1 %found.conflict390, label %for.body72.preheader, label %vector.main.loop.iter.check397

vector.main.loop.iter.check397:                   ; preds = %vector.memcheck385
  %min.iters.check396 = icmp ult i32 %sub14, 32
  br i1 %min.iters.check396, label %vec.epilog.ph412, label %vector.ph398

vector.ph398:                                     ; preds = %vector.main.loop.iter.check397
  %n.vec400 = and i64 %wide.trip.count356, 4294967264
  %69 = add nsw i64 %n.vec400, -32
  %70 = lshr exact i64 %69, 5
  %71 = add nuw nsw i64 %70, 1
  %xtraiter426 = and i64 %71, 1
  %72 = icmp eq i64 %69, 0
  br i1 %72, label %middle.block391.unr-lcssa, label %vector.ph398.new

vector.ph398.new:                                 ; preds = %vector.ph398
  %unroll_iter428 = and i64 %71, 1152921504606846974
  br label %vector.body392

vector.body392:                                   ; preds = %vector.body392, %vector.ph398.new
  %index402 = phi i64 [ 0, %vector.ph398.new ], [ %index.next407.1, %vector.body392 ]
  %niter429 = phi i64 [ 0, %vector.ph398.new ], [ %niter429.next.1, %vector.body392 ]
  %73 = getelementptr inbounds i8, i8* %add.ptr43, i64 %index402
  %74 = bitcast i8* %73 to <16 x i8>*
  %wide.load403 = load <16 x i8>, <16 x i8>* %74, align 1, !tbaa !4, !alias.scope !34
  %75 = getelementptr inbounds i8, i8* %73, i64 16
  %76 = bitcast i8* %75 to <16 x i8>*
  %wide.load404 = load <16 x i8>, <16 x i8>* %76, align 1, !tbaa !4, !alias.scope !34
  %77 = getelementptr inbounds i8, i8* %call15, i64 %index402
  %78 = bitcast i8* %77 to <16 x i8>*
  %wide.load405 = load <16 x i8>, <16 x i8>* %78, align 1, !tbaa !4, !alias.scope !37, !noalias !34
  %79 = getelementptr inbounds i8, i8* %77, i64 16
  %80 = bitcast i8* %79 to <16 x i8>*
  %wide.load406 = load <16 x i8>, <16 x i8>* %80, align 1, !tbaa !4, !alias.scope !37, !noalias !34
  %81 = xor <16 x i8> %wide.load405, %wide.load403
  %82 = xor <16 x i8> %wide.load406, %wide.load404
  %83 = bitcast i8* %77 to <16 x i8>*
  store <16 x i8> %81, <16 x i8>* %83, align 1, !tbaa !4, !alias.scope !37, !noalias !34
  %84 = bitcast i8* %79 to <16 x i8>*
  store <16 x i8> %82, <16 x i8>* %84, align 1, !tbaa !4, !alias.scope !37, !noalias !34
  %index.next407 = or i64 %index402, 32
  %85 = getelementptr inbounds i8, i8* %add.ptr43, i64 %index.next407
  %86 = bitcast i8* %85 to <16 x i8>*
  %wide.load403.1 = load <16 x i8>, <16 x i8>* %86, align 1, !tbaa !4, !alias.scope !34
  %87 = getelementptr inbounds i8, i8* %85, i64 16
  %88 = bitcast i8* %87 to <16 x i8>*
  %wide.load404.1 = load <16 x i8>, <16 x i8>* %88, align 1, !tbaa !4, !alias.scope !34
  %89 = getelementptr inbounds i8, i8* %call15, i64 %index.next407
  %90 = bitcast i8* %89 to <16 x i8>*
  %wide.load405.1 = load <16 x i8>, <16 x i8>* %90, align 1, !tbaa !4, !alias.scope !37, !noalias !34
  %91 = getelementptr inbounds i8, i8* %89, i64 16
  %92 = bitcast i8* %91 to <16 x i8>*
  %wide.load406.1 = load <16 x i8>, <16 x i8>* %92, align 1, !tbaa !4, !alias.scope !37, !noalias !34
  %93 = xor <16 x i8> %wide.load405.1, %wide.load403.1
  %94 = xor <16 x i8> %wide.load406.1, %wide.load404.1
  %95 = bitcast i8* %89 to <16 x i8>*
  store <16 x i8> %93, <16 x i8>* %95, align 1, !tbaa !4, !alias.scope !37, !noalias !34
  %96 = bitcast i8* %91 to <16 x i8>*
  store <16 x i8> %94, <16 x i8>* %96, align 1, !tbaa !4, !alias.scope !37, !noalias !34
  %index.next407.1 = add nuw i64 %index402, 64
  %niter429.next.1 = add i64 %niter429, 2
  %niter429.ncmp.1 = icmp eq i64 %niter429.next.1, %unroll_iter428
  br i1 %niter429.ncmp.1, label %middle.block391.unr-lcssa, label %vector.body392, !llvm.loop !39

middle.block391.unr-lcssa:                        ; preds = %vector.body392, %vector.ph398
  %index402.unr = phi i64 [ 0, %vector.ph398 ], [ %index.next407.1, %vector.body392 ]
  %lcmp.mod427.not = icmp eq i64 %xtraiter426, 0
  br i1 %lcmp.mod427.not, label %middle.block391, label %vector.body392.epil

vector.body392.epil:                              ; preds = %middle.block391.unr-lcssa
  %97 = getelementptr inbounds i8, i8* %add.ptr43, i64 %index402.unr
  %98 = bitcast i8* %97 to <16 x i8>*
  %wide.load403.epil = load <16 x i8>, <16 x i8>* %98, align 1, !tbaa !4, !alias.scope !34
  %99 = getelementptr inbounds i8, i8* %97, i64 16
  %100 = bitcast i8* %99 to <16 x i8>*
  %wide.load404.epil = load <16 x i8>, <16 x i8>* %100, align 1, !tbaa !4, !alias.scope !34
  %101 = getelementptr inbounds i8, i8* %call15, i64 %index402.unr
  %102 = bitcast i8* %101 to <16 x i8>*
  %wide.load405.epil = load <16 x i8>, <16 x i8>* %102, align 1, !tbaa !4, !alias.scope !37, !noalias !34
  %103 = getelementptr inbounds i8, i8* %101, i64 16
  %104 = bitcast i8* %103 to <16 x i8>*
  %wide.load406.epil = load <16 x i8>, <16 x i8>* %104, align 1, !tbaa !4, !alias.scope !37, !noalias !34
  %105 = xor <16 x i8> %wide.load405.epil, %wide.load403.epil
  %106 = xor <16 x i8> %wide.load406.epil, %wide.load404.epil
  %107 = bitcast i8* %101 to <16 x i8>*
  store <16 x i8> %105, <16 x i8>* %107, align 1, !tbaa !4, !alias.scope !37, !noalias !34
  %108 = bitcast i8* %103 to <16 x i8>*
  store <16 x i8> %106, <16 x i8>* %108, align 1, !tbaa !4, !alias.scope !37, !noalias !34
  br label %middle.block391

middle.block391:                                  ; preds = %middle.block391.unr-lcssa, %vector.body392.epil
  %cmp.n401 = icmp eq i64 %n.vec400, %wide.trip.count356
  br i1 %cmp.n401, label %for.end83, label %vec.epilog.iter.check411

vec.epilog.iter.check411:                         ; preds = %middle.block391
  %n.vec.remaining413 = and i64 %wide.trip.count356, 24
  %min.epilog.iters.check414 = icmp eq i64 %n.vec.remaining413, 0
  br i1 %min.epilog.iters.check414, label %for.body72.preheader, label %vec.epilog.ph412

vec.epilog.ph412:                                 ; preds = %vector.main.loop.iter.check397, %vec.epilog.iter.check411
  %vec.epilog.resume.val415 = phi i64 [ %n.vec400, %vec.epilog.iter.check411 ], [ 0, %vector.main.loop.iter.check397 ]
  %n.vec417 = and i64 %wide.trip.count356, 4294967288
  br label %vec.epilog.vector.body410

vec.epilog.vector.body410:                        ; preds = %vec.epilog.vector.body410, %vec.epilog.ph412
  %index420 = phi i64 [ %vec.epilog.resume.val415, %vec.epilog.ph412 ], [ %index.next423, %vec.epilog.vector.body410 ]
  %109 = getelementptr inbounds i8, i8* %add.ptr43, i64 %index420
  %110 = bitcast i8* %109 to <8 x i8>*
  %wide.load421 = load <8 x i8>, <8 x i8>* %110, align 1, !tbaa !4
  %111 = getelementptr inbounds i8, i8* %call15, i64 %index420
  %112 = bitcast i8* %111 to <8 x i8>*
  %wide.load422 = load <8 x i8>, <8 x i8>* %112, align 1, !tbaa !4
  %113 = xor <8 x i8> %wide.load422, %wide.load421
  %114 = bitcast i8* %111 to <8 x i8>*
  store <8 x i8> %113, <8 x i8>* %114, align 1, !tbaa !4
  %index.next423 = add nuw i64 %index420, 8
  %115 = icmp eq i64 %index.next423, %n.vec417
  br i1 %115, label %vec.epilog.middle.block408, label %vec.epilog.vector.body410, !llvm.loop !40

vec.epilog.middle.block408:                       ; preds = %vec.epilog.vector.body410
  %cmp.n419 = icmp eq i64 %n.vec417, %wide.trip.count356
  br i1 %cmp.n419, label %for.end83, label %for.body72.preheader

for.body72.preheader:                             ; preds = %vector.memcheck385, %iter.check395, %vec.epilog.iter.check411, %vec.epilog.middle.block408
  %indvars.iv353.ph = phi i64 [ 0, %iter.check395 ], [ 0, %vector.memcheck385 ], [ %n.vec400, %vec.epilog.iter.check411 ], [ %n.vec417, %vec.epilog.middle.block408 ]
  %116 = xor i64 %indvars.iv353.ph, -1
  %117 = add nsw i64 %116, %wide.trip.count356
  %xtraiter430 = and i64 %wide.trip.count356, 3
  %lcmp.mod431.not = icmp eq i64 %xtraiter430, 0
  br i1 %lcmp.mod431.not, label %for.body72.prol.loopexit, label %for.body72.prol

for.body72.prol:                                  ; preds = %for.body72.preheader, %for.body72.prol
  %indvars.iv353.prol = phi i64 [ %indvars.iv.next354.prol, %for.body72.prol ], [ %indvars.iv353.ph, %for.body72.preheader ]
  %prol.iter432 = phi i64 [ %prol.iter432.next, %for.body72.prol ], [ 0, %for.body72.preheader ]
  %arrayidx74.prol = getelementptr inbounds i8, i8* %add.ptr43, i64 %indvars.iv353.prol
  %118 = load i8, i8* %arrayidx74.prol, align 1, !tbaa !4
  %arrayidx77.prol = getelementptr inbounds i8, i8* %call15, i64 %indvars.iv353.prol
  %119 = load i8, i8* %arrayidx77.prol, align 1, !tbaa !4
  %xor79323.prol = xor i8 %119, %118
  store i8 %xor79323.prol, i8* %arrayidx77.prol, align 1, !tbaa !4
  %indvars.iv.next354.prol = add nuw nsw i64 %indvars.iv353.prol, 1
  %prol.iter432.next = add i64 %prol.iter432, 1
  %prol.iter432.cmp.not = icmp eq i64 %prol.iter432.next, %xtraiter430
  br i1 %prol.iter432.cmp.not, label %for.body72.prol.loopexit, label %for.body72.prol, !llvm.loop !41

for.body72.prol.loopexit:                         ; preds = %for.body72.prol, %for.body72.preheader
  %indvars.iv353.unr = phi i64 [ %indvars.iv353.ph, %for.body72.preheader ], [ %indvars.iv.next354.prol, %for.body72.prol ]
  %120 = icmp ult i64 %117, 3
  br i1 %120, label %for.end83, label %for.body72

for.body72:                                       ; preds = %for.body72.prol.loopexit, %for.body72
  %indvars.iv353 = phi i64 [ %indvars.iv.next354.3, %for.body72 ], [ %indvars.iv353.unr, %for.body72.prol.loopexit ]
  %arrayidx74 = getelementptr inbounds i8, i8* %add.ptr43, i64 %indvars.iv353
  %121 = load i8, i8* %arrayidx74, align 1, !tbaa !4
  %arrayidx77 = getelementptr inbounds i8, i8* %call15, i64 %indvars.iv353
  %122 = load i8, i8* %arrayidx77, align 1, !tbaa !4
  %xor79323 = xor i8 %122, %121
  store i8 %xor79323, i8* %arrayidx77, align 1, !tbaa !4
  %indvars.iv.next354 = add nuw nsw i64 %indvars.iv353, 1
  %arrayidx74.1 = getelementptr inbounds i8, i8* %add.ptr43, i64 %indvars.iv.next354
  %123 = load i8, i8* %arrayidx74.1, align 1, !tbaa !4
  %arrayidx77.1 = getelementptr inbounds i8, i8* %call15, i64 %indvars.iv.next354
  %124 = load i8, i8* %arrayidx77.1, align 1, !tbaa !4
  %xor79323.1 = xor i8 %124, %123
  store i8 %xor79323.1, i8* %arrayidx77.1, align 1, !tbaa !4
  %indvars.iv.next354.1 = add nuw nsw i64 %indvars.iv353, 2
  %arrayidx74.2 = getelementptr inbounds i8, i8* %add.ptr43, i64 %indvars.iv.next354.1
  %125 = load i8, i8* %arrayidx74.2, align 1, !tbaa !4
  %arrayidx77.2 = getelementptr inbounds i8, i8* %call15, i64 %indvars.iv.next354.1
  %126 = load i8, i8* %arrayidx77.2, align 1, !tbaa !4
  %xor79323.2 = xor i8 %126, %125
  store i8 %xor79323.2, i8* %arrayidx77.2, align 1, !tbaa !4
  %indvars.iv.next354.2 = add nuw nsw i64 %indvars.iv353, 3
  %arrayidx74.3 = getelementptr inbounds i8, i8* %add.ptr43, i64 %indvars.iv.next354.2
  %127 = load i8, i8* %arrayidx74.3, align 1, !tbaa !4
  %arrayidx77.3 = getelementptr inbounds i8, i8* %call15, i64 %indvars.iv.next354.2
  %128 = load i8, i8* %arrayidx77.3, align 1, !tbaa !4
  %xor79323.3 = xor i8 %128, %127
  store i8 %xor79323.3, i8* %arrayidx77.3, align 1, !tbaa !4
  %indvars.iv.next354.3 = add nuw nsw i64 %indvars.iv353, 4
  %exitcond357.not.3 = icmp eq i64 %indvars.iv.next354.3, %wide.trip.count356
  br i1 %exitcond357.not.3, label %for.end83, label %for.body72, !llvm.loop !42

for.end83:                                        ; preds = %for.body72.prol.loopexit, %for.body72, %middle.block391, %vec.epilog.middle.block408, %for.cond69.preheader
  %conv84 = sext i32 %plen to i64
  %call86 = call i32 @EVP_Digest(i8* noundef %param, i64 noundef %conv84, i8* noundef nonnull %1, i32* noundef null, %struct.evp_md_st* noundef %md.addr.0, %struct.engine_st* noundef null) #8
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %cleanup, label %if.end89

if.end89:                                         ; preds = %for.end83
  %call92 = call i32 @CRYPTO_memcmp(i8* noundef nonnull %call15, i8* noundef nonnull %1, i64 noundef %idx.ext42) #8
  %call93 = call fastcc i32 @constant_time_is_zero(i32 noundef %call92) #6
  %and94 = and i32 %call93, %call39
  %cmp96335 = icmp slt i32 %call4, %sub14
  br i1 %cmp96335, label %for.body98, label %for.end114

for.body98:                                       ; preds = %if.end89, %for.body98
  %indvars.iv358 = phi i64 [ %indvars.iv.next359, %for.body98 ], [ %idx.ext42, %if.end89 ]
  %found_one_byte.0339 = phi i32 [ %or, %for.body98 ], [ 0, %if.end89 ]
  %good.0338 = phi i32 [ %and111, %for.body98 ], [ %and94, %if.end89 ]
  %one_index.0337 = phi i32 [ %call109, %for.body98 ], [ 0, %if.end89 ]
  %arrayidx100 = getelementptr inbounds i8, i8* %call15, i64 %indvars.iv358
  %129 = load i8, i8* %arrayidx100, align 1, !tbaa !4
  %conv101 = zext i8 %129 to i32
  %call102 = call fastcc i32 @constant_time_eq(i32 noundef %conv101, i32 noundef 1) #6
  %call106 = call fastcc i32 @constant_time_is_zero(i32 noundef %conv101) #6
  %neg107 = xor i32 %found_one_byte.0339, -1
  %and108 = and i32 %call102, %neg107
  %130 = trunc i64 %indvars.iv358 to i32
  %call109 = call fastcc i32 @constant_time_select_int(i32 noundef %and108, i32 noundef %130, i32 noundef %one_index.0337) #6
  %or = or i32 %call102, %found_one_byte.0339
  %or110 = or i32 %or, %call106
  %and111 = and i32 %or110, %good.0338
  %indvars.iv.next359 = add nsw i64 %indvars.iv358, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next359 to i32
  %exitcond361.not = icmp eq i32 %sub14, %lftr.wideiv
  br i1 %exitcond361.not, label %for.end114.loopexit, label %for.body98, !llvm.loop !43

for.end114.loopexit:                              ; preds = %for.body98
  %phi.bo = xor i32 %call109, -1
  br label %for.end114

for.end114:                                       ; preds = %for.end114.loopexit, %if.end89
  %one_index.0.lcssa = phi i32 [ -1, %if.end89 ], [ %phi.bo, %for.end114.loopexit ]
  %good.0.lcssa = phi i32 [ %and94, %if.end89 ], [ %and111, %for.end114.loopexit ]
  %found_one_byte.0.lcssa = phi i32 [ 0, %if.end89 ], [ %or, %for.end114.loopexit ]
  %and115 = and i32 %found_one_byte.0.lcssa, %good.0.lcssa
  %sub117 = add i32 %sub14, %one_index.0.lcssa
  %call118 = call fastcc i32 @constant_time_ge(i32 noundef %tlen, i32 noundef %sub117) #6
  %and119 = and i32 %and115, %call118
  %sub121 = add i32 %sub14, %2
  %call122 = call fastcc i32 @constant_time_lt(i32 noundef %sub121, i32 noundef %tlen) #6, !range !44
  %call125 = call fastcc i32 @constant_time_select_int(i32 noundef %call122, i32 noundef %sub121, i32 noundef %tlen) #6
  %cmp129346 = icmp sgt i32 %sub121, 1
  br i1 %cmp129346, label %for.body131.lr.ph, label %for.cond158.preheader

for.body131.lr.ph:                                ; preds = %for.end114
  %sub134 = sub nsw i32 %sub121, %sub117
  %i.4343 = add i32 %call4, 1
  %131 = sext i32 %i.4343 to i64
  br label %for.body131

for.cond158.preheader:                            ; preds = %for.inc156, %for.end114
  %cmp159349 = icmp sgt i32 %call125, 0
  br i1 %cmp159349, label %for.body161.preheader, label %for.end176

for.body161.preheader:                            ; preds = %for.cond158.preheader
  %wide.trip.count369 = zext i32 %call125 to i64
  br label %for.body161

for.body131:                                      ; preds = %for.body131.lr.ph, %for.inc156
  %msg_index.0347 = phi i32 [ 1, %for.body131.lr.ph ], [ %shl, %for.inc156 ]
  %sub140 = sub nsw i32 %sub14, %msg_index.0347
  %cmp141344 = icmp slt i32 %i.4343, %sub140
  br i1 %cmp141344, label %for.body143.lr.ph, label %for.inc156

for.body143.lr.ph:                                ; preds = %for.body131
  %and135 = and i32 %msg_index.0347, %sub134
  %call136 = call fastcc i32 @constant_time_eq(i32 noundef %and135, i32 noundef 0) #6
  %132 = trunc i32 %call136 to i8
  %conv144 = xor i8 %132, -1
  %133 = sext i32 %msg_index.0347 to i64
  %134 = sext i32 %sub140 to i64
  br label %for.body143

for.body143:                                      ; preds = %for.body143.lr.ph, %for.body143
  %indvars.iv362 = phi i64 [ %131, %for.body143.lr.ph ], [ %indvars.iv.next363, %for.body143 ]
  %135 = add nsw i64 %indvars.iv362, %133
  %arrayidx147 = getelementptr inbounds i8, i8* %call15, i64 %135
  %136 = load i8, i8* %arrayidx147, align 1, !tbaa !4
  %arrayidx149 = getelementptr inbounds i8, i8* %call15, i64 %indvars.iv362
  %137 = load i8, i8* %arrayidx149, align 1, !tbaa !4
  %call150 = call fastcc zeroext i8 @constant_time_select_8(i8 noundef zeroext %conv144, i8 noundef zeroext %136, i8 noundef zeroext %137) #6
  store i8 %call150, i8* %arrayidx149, align 1, !tbaa !4
  %indvars.iv.next363 = add nsw i64 %indvars.iv362, 1
  %cmp141 = icmp slt i64 %indvars.iv.next363, %134
  br i1 %cmp141, label %for.body143, label %for.inc156, !llvm.loop !45

for.inc156:                                       ; preds = %for.body143, %for.body131
  %shl = shl i32 %msg_index.0347, 1
  %cmp129 = icmp slt i32 %shl, %sub121
  br i1 %cmp129, label %for.body131, label %for.cond158.preheader, !llvm.loop !46

for.body161:                                      ; preds = %for.body161.preheader, %for.body161
  %indvars.iv366 = phi i64 [ 0, %for.body161.preheader ], [ %indvars.iv.next367, %for.body161 ]
  %138 = trunc i64 %indvars.iv366 to i32
  %call162 = call fastcc i32 @constant_time_lt(i32 noundef %138, i32 noundef %sub117) #6
  %and163 = and i32 %call162, %and119
  %conv164 = trunc i32 %and163 to i8
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1
  %139 = trunc i64 %indvars.iv.next367 to i32
  %add166 = add i32 %call4, %139
  %idxprom167 = sext i32 %add166 to i64
  %arrayidx168 = getelementptr inbounds i8, i8* %call15, i64 %idxprom167
  %140 = load i8, i8* %arrayidx168, align 1, !tbaa !4
  %arrayidx170 = getelementptr inbounds i8, i8* %to, i64 %indvars.iv366
  %141 = load i8, i8* %arrayidx170, align 1, !tbaa !4
  %call171 = call fastcc zeroext i8 @constant_time_select_8(i8 noundef zeroext %conv164, i8 noundef zeroext %140, i8 noundef zeroext %141) #6
  store i8 %call171, i8* %arrayidx170, align 1, !tbaa !4
  %exitcond370.not = icmp eq i64 %indvars.iv.next367, %wide.trip.count369
  br i1 %exitcond370.not, label %for.end176, label %for.body161, !llvm.loop !47

for.end176:                                       ; preds = %for.body161, %for.cond158.preheader
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 314, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.RSA_padding_check_PKCS1_OAEP_mgf1, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 121, i8* noundef null) #8
  %and177 = and i32 %and119, 1
  call void @err_clear_last_constant_time(i32 noundef %and177) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end83, %for.end61, %for.end, %for.end176, %if.then24, %if.then18
  %conv180.pre-phi = phi i64 [ %conv20, %for.end83 ], [ %conv20, %for.end61 ], [ %conv20, %for.end ], [ %conv20, %for.end176 ], [ %conv20, %if.then24 ], [ %.pre371, %if.then18 ]
  %mlen.0 = phi i32 [ -1, %for.end83 ], [ -1, %for.end61 ], [ -1, %for.end ], [ %sub117, %for.end176 ], [ -1, %if.then24 ], [ -1, %if.then18 ]
  %good.1 = phi i32 [ %call39, %for.end83 ], [ %call39, %for.end61 ], [ %call39, %for.end ], [ %and119, %for.end176 ], [ 0, %if.then24 ], [ 0, %if.then18 ]
  %em.1 = phi i8* [ %em.0.lcssa, %for.end83 ], [ %em.0.lcssa, %for.end61 ], [ %em.0.lcssa, %for.end ], [ %em.0.lcssa, %for.end176 ], [ null, %if.then24 ], [ null, %if.then18 ]
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 64) #8
  call void @CRYPTO_clear_free(i8* noundef %call15, i64 noundef %conv, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 319) #8
  call void @CRYPTO_clear_free(i8* noundef %em.1, i64 noundef %conv180.pre-phi, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 320) #8
  %call181 = call fastcc i32 @constant_time_select_int(i32 noundef %good.1, i32 noundef %mlen.0, i32 noundef -1) #6
  br label %cleanup182

cleanup182:                                       ; preds = %if.end, %cleanup, %if.then12
  %retval.0 = phi i32 [ -1, %if.then12 ], [ %call181, %cleanup ], [ -1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_is_zero(i32 noundef %a) unnamed_addr #4 {
entry:
  %neg = xor i32 %a, -1
  %sub = add i32 %a, -1
  %and = and i32 %sub, %neg
  %call = tail call fastcc i32 @constant_time_msb(i32 noundef %and) #6
  ret i32 %call
}

declare i32 @CRYPTO_memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_eq(i32 noundef %a, i32 noundef %b) unnamed_addr #4 {
entry:
  %xor = xor i32 %b, %a
  %call = tail call fastcc i32 @constant_time_is_zero(i32 noundef %xor) #6
  ret i32 %call
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc i32 @constant_time_select_int(i32 noundef %mask, i32 noundef %a, i32 noundef %b) unnamed_addr #5 {
entry:
  %call = tail call fastcc i32 @constant_time_select(i32 noundef %mask, i32 noundef %a, i32 noundef %b) #6
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_ge(i32 noundef %a, i32 noundef %b) unnamed_addr #4 {
entry:
  %call = tail call fastcc i32 @constant_time_lt(i32 noundef %a, i32 noundef %b) #6
  %neg = xor i32 %call, -1
  ret i32 %neg
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_lt(i32 noundef %a, i32 noundef %b) unnamed_addr #4 {
entry:
  %xor = xor i32 %b, %a
  %sub = sub i32 %a, %b
  %xor1 = xor i32 %sub, %b
  %or = or i32 %xor1, %xor
  %xor2 = xor i32 %or, %a
  %call = tail call fastcc i32 @constant_time_msb(i32 noundef %xor2) #6
  ret i32 %call
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc zeroext i8 @constant_time_select_8(i8 noundef zeroext %mask, i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #5 {
entry:
  %conv = zext i8 %mask to i32
  %conv1 = zext i8 %a to i32
  %conv2 = zext i8 %b to i32
  %call = tail call fastcc i32 @constant_time_select(i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2) #6
  %conv3 = trunc i32 %call to i8
  ret i8 %conv3
}

declare void @err_clear_last_constant_time(i32 noundef) local_unnamed_addr #2

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #2

declare i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_msb(i32 noundef %a) unnamed_addr #4 {
entry:
  %shr.neg = ashr i32 %a, 31
  ret i32 %shr.neg
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc i32 @constant_time_select(i32 noundef %mask, i32 noundef %a, i32 noundef %b) unnamed_addr #5 {
entry:
  %call = tail call fastcc i32 @value_barrier(i32 noundef %mask) #6
  %and = and i32 %call, %a
  %neg = xor i32 %mask, -1
  %call1 = tail call fastcc i32 @value_barrier(i32 noundef %neg) #6
  %and2 = and i32 %call1, %b
  %or = or i32 %and2, %and
  ret i32 %or
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc i32 @value_barrier(i32 noundef %a) unnamed_addr #5 {
entry:
  %0 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %a) #9, !srcloc !48
  ret i32 %0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8}
!8 = distinct !{!8, !9}
!9 = distinct !{!9, !"LVerDomain"}
!10 = !{!11}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = distinct !{!15, !13, !14, !16}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !13, !14}
!20 = distinct !{!20, !13, !14}
!21 = distinct !{!21, !13, !14, !16}
!22 = distinct !{!22, !13, !16, !14}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = !{!26}
!26 = distinct !{!26, !27}
!27 = distinct !{!27, !"LVerDomain"}
!28 = !{!29}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !13, !14}
!31 = distinct !{!31, !13, !14, !16}
!32 = distinct !{!32, !18}
!33 = distinct !{!33, !13, !14}
!34 = !{!35}
!35 = distinct !{!35, !36}
!36 = distinct !{!36, !"LVerDomain"}
!37 = !{!38}
!38 = distinct !{!38, !36}
!39 = distinct !{!39, !13, !14}
!40 = distinct !{!40, !13, !14, !16}
!41 = distinct !{!41, !18}
!42 = distinct !{!42, !13, !14}
!43 = distinct !{!43, !13}
!44 = !{i32 -1, i32 1}
!45 = distinct !{!45, !13}
!46 = distinct !{!46, !13}
!47 = distinct !{!47, !13}
!48 = !{i64 51440}
