; ModuleID = 'crypto/ffc/ffc_params_generate.c'
source_filename = "crypto/ffc/ffc_params_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_lib_ctx_st = type opaque
%struct.ffc_params_st = type { %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i64, i32, i32, i32, i32, i32, i8*, i8* }
%struct.bignum_st = type opaque
%struct.bn_gencb_st = type opaque
%struct.evp_md_st = type opaque
%struct.evp_md_ctx_st = type opaque
%struct.bignum_ctx = type opaque
%struct.bn_mont_ctx_st = type opaque
%struct.engine_st = type opaque

@.str = private unnamed_addr constant [33 x i8] c"crypto/ffc/ffc_params_generate.c\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"SHA-224\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"SHA-256\00", align 1
@__func__.ffc_validate_LN = private unnamed_addr constant [16 x i8] c"ffc_validate_LN\00", align 1
@generate_canonical_g.ggen = internal constant [4 x i8] c"ggen", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ffc_params_FIPS186_4_gen_verify(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.ffc_params_st* noundef %params, i32 noundef %mode, i32 noundef %type, i64 noundef %L, i64 noundef %N, i32* noundef %res, %struct.bn_gencb_st* noundef %cb) local_unnamed_addr #0 {
entry:
  %pcounter = alloca i32, align 4
  %m = alloca i32, align 4
  %hret = alloca i32, align 4
  %0 = bitcast i32* %pcounter to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  store i32 0, i32* %pcounter, align 4, !tbaa !4
  %1 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #5
  store i32 0, i32* %m, align 4, !tbaa !4
  %2 = bitcast i32* %hret to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #5
  store i32 0, i32* %hret, align 4, !tbaa !4
  %cmp = icmp eq i32 %mode, 0
  br i1 %cmp, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  %flags1 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 10
  %3 = load i32, i32* %flags1, align 8, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ 0, %entry ]
  store i32 0, i32* %res, align 4, !tbaa !4
  %mdname = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 11
  %4 = load i8*, i8** %mdname, align 8, !tbaa !12
  %cmp2.not = icmp eq i8* %4, null
  br i1 %cmp2.not, label %if.else, label %if.end19

if.else:                                          ; preds = %cond.end
  %cmp5 = icmp eq i64 %N, 0
  %cmp8 = icmp ugt i64 %L, 2047
  %5 = select i1 %cmp8, i64 256, i64 160
  %N.addr.0 = select i1 %cmp5, i64 %5, i64 %N
  %call12 = tail call fastcc i8* @default_mdname(i64 noundef %N.addr.0) #6
  %cmp13 = icmp eq i8* %call12, null
  br i1 %cmp13, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.else
  store i32 32, i32* %res, align 4, !tbaa !4
  br label %err

if.end19:                                         ; preds = %if.else, %cond.end
  %call12.sink = phi i8* [ %4, %cond.end ], [ %call12, %if.else ]
  %N.addr.1 = phi i64 [ %N, %cond.end ], [ %N.addr.0, %if.else ]
  %mdprops17 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 12
  %6 = load i8*, i8** %mdprops17, align 8, !tbaa !13
  %call18 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef nonnull %call12.sink, i8* noundef %6) #7
  %cmp20 = icmp eq %struct.evp_md_st* %call18, null
  br i1 %cmp20, label %err, label %if.end23

if.end23:                                         ; preds = %if.end19
  %call24 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef nonnull %call18) #7
  %cmp25 = icmp slt i32 %call24, 1
  br i1 %cmp25, label %err, label %if.end28

if.end28:                                         ; preds = %if.end23
  %cmp29 = icmp eq i64 %N.addr.1, 0
  %mul32 = shl i32 %call24, 3
  %conv33 = sext i32 %mul32 to i64
  %N.addr.2 = select i1 %cmp29, i64 %conv33, i64 %N.addr.1
  %shr = lshr i64 %N.addr.2, 3
  %conv35 = trunc i64 %shr to i32
  %cmp36.not = icmp ult i64 %N.addr.2, %L
  br i1 %cmp36.not, label %lor.lhs.false, label %if.then40

lor.lhs.false:                                    ; preds = %if.end28
  %call38 = tail call fastcc i32 @ffc_validate_LN(i64 noundef %L, i64 noundef %N.addr.2, i32 noundef %type) #6
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %if.end41

if.then40:                                        ; preds = %lor.lhs.false, %if.end28
  store i32 128, i32* %res, align 4, !tbaa !4
  br label %err

if.end41:                                         ; preds = %lor.lhs.false
  %call42 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #7
  %cmp43 = icmp eq %struct.evp_md_ctx_st* %call42, null
  br i1 %cmp43, label %err, label %if.end46

if.end46:                                         ; preds = %if.end41
  %call47 = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx) #7
  %cmp48 = icmp eq %struct.bignum_ctx* %call47, null
  br i1 %cmp48, label %err, label %if.end51

if.end51:                                         ; preds = %if.end46
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %call47) #7
  %call52 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call47) #7
  %call53 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call47) #7
  %call54 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call47) #7
  %call55 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call47) #7
  %call56 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call47) #7
  %cmp57 = icmp eq %struct.bignum_st* %call56, null
  br i1 %cmp57, label %err, label %if.end60

if.end60:                                         ; preds = %if.end51
  %seedlen61 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 5
  %7 = load i64, i64* %seedlen61, align 8, !tbaa !14
  %cmp62 = icmp eq i64 %7, 0
  %conv65554 = zext i32 %call24 to i64
  %spec.select = select i1 %cmp62, i64 %conv65554, i64 %7
  %seed67 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 4
  %8 = load i8*, i8** %seed67, align 8, !tbaa !15
  %cmp68.not = icmp eq i8* %8, null
  br i1 %cmp, label %if.else85, label %if.then74

if.then74:                                        ; preds = %if.end60
  %p75 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 0
  %9 = load %struct.bignum_st*, %struct.bignum_st** %p75, align 8, !tbaa !16
  %cmp76 = icmp ne %struct.bignum_st* %9, null
  %q78 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 1
  %10 = load %struct.bignum_st*, %struct.bignum_st** %q78, align 8, !tbaa !17
  %cmp79 = icmp eq %struct.bignum_st* %10, null
  %cmp81.not = xor i1 %cmp76, %cmp79
  br i1 %cmp81.not, label %if.then74.if.end108_crit_edge, label %if.then83

if.then74.if.end108_crit_edge:                    ; preds = %if.then74
  %.pre555 = and i32 %cond, 1
  br label %if.end108

if.then83:                                        ; preds = %if.then74
  store i32 2048, i32* %res, align 4, !tbaa !4
  br label %err

if.else85:                                        ; preds = %if.end60
  %and = and i32 %cond, 1
  %cmp86.not = icmp eq i32 %and, 0
  br i1 %cmp86.not, label %if.end97, label %if.then88

if.then88:                                        ; preds = %if.else85
  br i1 %cmp68.not, label %if.then95, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %if.then88
  %pcounter92 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 6
  %11 = load i32, i32* %pcounter92, align 8, !tbaa !18
  %cmp93 = icmp slt i32 %11, 0
  br i1 %cmp93, label %if.then95, label %if.end97

if.then95:                                        ; preds = %lor.lhs.false91, %if.then88
  store i32 512, i32* %res, align 4, !tbaa !4
  br label %err

if.end97:                                         ; preds = %lor.lhs.false91, %if.else85
  %and98 = and i32 %cond, 2
  %cmp99.not = icmp eq i32 %and98, 0
  br i1 %cmp99.not, label %if.end108, label %if.then101

if.then101:                                       ; preds = %if.end97
  %g102 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 2
  %12 = load %struct.bignum_st*, %struct.bignum_st** %g102, align 8, !tbaa !19
  %cmp103 = icmp eq %struct.bignum_st* %12, null
  br i1 %cmp103, label %if.then105, label %if.end108

if.then105:                                       ; preds = %if.then101
  store i32 1024, i32* %res, align 4, !tbaa !4
  br label %err

if.end108:                                        ; preds = %if.then74.if.end108_crit_edge, %if.end97, %if.then101
  %and112.pre-phi = phi i32 [ %.pre555, %if.then74.if.end108_crit_edge ], [ %and, %if.end97 ], [ %and, %if.then101 ]
  %p109 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 0
  %13 = load %struct.bignum_st*, %struct.bignum_st** %p109, align 8, !tbaa !16
  %cmp110.not = icmp ne %struct.bignum_st* %13, null
  %cmp113 = icmp eq i32 %and112.pre-phi, 0
  %or.cond548 = select i1 %cmp110.not, i1 %cmp113, i1 false
  br i1 %or.cond548, label %if.then115, label %if.end118

if.then115:                                       ; preds = %if.end108
  %q117 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 1
  %14 = load %struct.bignum_st*, %struct.bignum_st** %q117, align 8, !tbaa !17
  br label %g_only

if.end118:                                        ; preds = %if.end108
  %call119 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call47) #7
  %call120 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call47) #7
  %cmp121 = icmp eq %struct.bignum_st* %call120, null
  br i1 %cmp121, label %err, label %if.end124

if.end124:                                        ; preds = %if.end118
  %mul125 = shl i64 %spec.select, 3
  %cmp126 = icmp ult i64 %mul125, %N.addr.2
  br i1 %cmp126, label %if.then128, label %if.end129

if.then128:                                       ; preds = %if.end124
  store i32 256, i32* %res, align 4, !tbaa !4
  br label %err

if.end129:                                        ; preds = %if.end124
  %call130 = tail call i8* @CRYPTO_malloc(i64 noundef %spec.select, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 643) #7
  %cmp131 = icmp eq i8* %call130, null
  br i1 %cmp131, label %err, label %if.end134

if.end134:                                        ; preds = %if.end129
  br i1 %cmp68.not, label %if.then137, label %if.end146

if.then137:                                       ; preds = %if.end134
  br i1 %cmp, label %if.then139, label %if.end140

if.then139:                                       ; preds = %if.then137
  store i32 512, i32* %res, align 4, !tbaa !4
  br label %err

if.end140:                                        ; preds = %if.then137
  %call141 = tail call i8* @CRYPTO_malloc(i64 noundef %spec.select, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 654) #7
  %cmp142 = icmp eq i8* %call141, null
  br i1 %cmp142, label %err, label %if.end146.thread

if.end146.thread:                                 ; preds = %if.end140
  %L.tr550 = trunc i64 %L to i32
  %15 = shl i32 %L.tr550, 2
  %conv148551 = add i32 %15, -1
  br label %if.end157

if.end146:                                        ; preds = %if.end134
  %L.tr = trunc i64 %L to i32
  %16 = shl i32 %L.tr, 2
  %conv148 = add i32 %16, -1
  br i1 %cmp, label %if.then150, label %if.end157

if.then150:                                       ; preds = %if.end146
  %pcounter151 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 6
  %17 = load i32, i32* %pcounter151, align 8, !tbaa !18
  %cmp152 = icmp sgt i32 %17, %conv148
  br i1 %cmp152, label %if.then154, label %if.end157

if.then154:                                       ; preds = %if.then150
  store i32 4096, i32* %res, align 4, !tbaa !4
  br label %err

if.end157:                                        ; preds = %if.end146.thread, %if.then150, %if.end146
  %L.tr553 = phi i32 [ %L.tr, %if.end146 ], [ %L.tr, %if.then150 ], [ %L.tr550, %if.end146.thread ]
  %seed.1552 = phi i8* [ %8, %if.end146 ], [ %8, %if.then150 ], [ %call141, %if.end146.thread ]
  %counter.0 = phi i32 [ %conv148, %if.end146 ], [ %17, %if.then150 ], [ %conv148551, %if.end146.thread ]
  %sub158 = add i64 %L, -1
  %div = udiv i64 %sub158, %conv33
  %conv160 = trunc i64 %div to i32
  %call161 = tail call %struct.bignum_st* @BN_value_one() #7
  %conv163 = trunc i64 %sub158 to i32
  %call164 = tail call i32 @BN_lshift(%struct.bignum_st* noundef %call55, %struct.bignum_st* noundef %call161, i32 noundef %conv163) #7
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %err, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end157
  %q177 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 1
  %.pre = load i8*, i8** %seed67, align 8, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %if.end201
  %18 = phi i8* [ %.pre, %for.cond.preheader ], [ %20, %if.end201 ]
  %cmp169 = icmp ne i8* %seed.1552, %18
  %conv170 = zext i1 %cmp169 to i32
  %call171 = call fastcc i32 @generate_q_fips186_4(%struct.bignum_ctx* noundef %call47, %struct.bignum_st* noundef nonnull %call120, %struct.evp_md_st* noundef %call18, i32 noundef %conv35, i8* noundef nonnull %seed.1552, i64 noundef %spec.select, i32 noundef %conv170, i32* noundef nonnull %m, i32* noundef nonnull %res, %struct.bn_gencb_st* noundef %cb) #6
  %tobool172.not = icmp eq i32 %call171, 0
  br i1 %tobool172.not, label %err, label %if.end174

if.end174:                                        ; preds = %for.cond
  br i1 %cmp, label %land.lhs.true176, label %if.end182

land.lhs.true176:                                 ; preds = %if.end174
  %19 = load %struct.bignum_st*, %struct.bignum_st** %q177, align 8, !tbaa !17
  %call178 = tail call i32 @BN_cmp(%struct.bignum_st* noundef nonnull %call120, %struct.bignum_st* noundef %19) #7
  %cmp179.not = icmp eq i32 %call178, 0
  br i1 %cmp179.not, label %if.end182, label %if.then181

if.then181:                                       ; preds = %land.lhs.true176
  store i32 16384, i32* %res, align 4, !tbaa !4
  br label %err

if.end182:                                        ; preds = %land.lhs.true176, %if.end174
  %call183 = tail call i32 @BN_GENCB_call(%struct.bn_gencb_st* noundef %cb, i32 noundef 2, i32 noundef 0) #7
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %err, label %if.end186

if.end186:                                        ; preds = %if.end182
  %call187 = tail call i32 @BN_GENCB_call(%struct.bn_gencb_st* noundef %cb, i32 noundef 3, i32 noundef 0) #7
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %err, label %if.end190

if.end190:                                        ; preds = %if.end186
  %call191 = tail call i8* @memcpy(i8* noundef nonnull %call130, i8* noundef nonnull %seed.1552, i64 noundef %spec.select) #7
  %call193 = call fastcc i32 @generate_p(%struct.bignum_ctx* noundef %call47, %struct.evp_md_st* noundef %call18, i32 noundef %counter.0, i32 noundef %conv160, i8* noundef nonnull %call130, i64 noundef %spec.select, %struct.bignum_st* noundef nonnull %call120, %struct.bignum_st* noundef %call119, i32 noundef %L.tr553, %struct.bn_gencb_st* noundef %cb, i32* noundef nonnull %pcounter, i32* noundef nonnull %res) #6
  %cmp194 = icmp sgt i32 %call193, 0
  br i1 %cmp194, label %for.end, label %if.end197

if.end197:                                        ; preds = %if.end190
  %cmp198 = icmp slt i32 %call193, 0
  br i1 %cmp198, label %err, label %if.end201

if.end201:                                        ; preds = %if.end197
  %20 = load i8*, i8** %seed67, align 8, !tbaa !15
  %cmp203 = icmp eq i8* %seed.1552, %20
  br i1 %cmp203, label %if.then205, label %for.cond

if.then205:                                       ; preds = %if.end201
  store i32 1, i32* %res, align 4, !tbaa !4
  br label %err

for.end:                                          ; preds = %if.end190
  %call207 = tail call i32 @BN_GENCB_call(%struct.bn_gencb_st* noundef %cb, i32 noundef 2, i32 noundef 1) #7
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %err, label %if.end210

if.end210:                                        ; preds = %for.end
  br i1 %cmp, label %land.lhs.true212, label %if.end221

land.lhs.true212:                                 ; preds = %if.end210
  %21 = load i32, i32* %pcounter, align 4, !tbaa !4
  %cmp213.not = icmp eq i32 %21, %counter.0
  br i1 %cmp213.not, label %lor.lhs.false215, label %err

lor.lhs.false215:                                 ; preds = %land.lhs.true212
  %22 = load %struct.bignum_st*, %struct.bignum_st** %p109, align 8, !tbaa !16
  %call217 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %call119, %struct.bignum_st* noundef %22) #7
  %cmp218.not = icmp eq i32 %call217, 0
  br i1 %cmp218.not, label %if.end221, label %err

if.end221:                                        ; preds = %lor.lhs.false215, %if.end210
  %and222 = and i32 %cond, 3
  %cmp223 = icmp eq i32 %and222, 1
  br i1 %cmp223, label %if.end221.pass_crit_edge, label %g_only

if.end221.pass_crit_edge:                         ; preds = %if.end221
  %.pre556 = and i32 %cond, 2
  br label %pass

g_only:                                           ; preds = %if.end221, %if.then115
  %q.0 = phi %struct.bignum_st* [ %14, %if.then115 ], [ %call120, %if.end221 ]
  %p.0 = phi %struct.bignum_st* [ %13, %if.then115 ], [ %call119, %if.end221 ]
  %seed_tmp.0 = phi i8* [ null, %if.then115 ], [ %call130, %if.end221 ]
  %seed.2 = phi i8* [ %8, %if.then115 ], [ %seed.1552, %if.end221 ]
  %call227 = tail call %struct.bn_mont_ctx_st* @BN_MONT_CTX_new() #7
  %cmp228 = icmp eq %struct.bn_mont_ctx_st* %call227, null
  br i1 %cmp228, label %err, label %if.end231

if.end231:                                        ; preds = %g_only
  %call232 = tail call i32 @BN_MONT_CTX_set(%struct.bn_mont_ctx_st* noundef nonnull %call227, %struct.bignum_st* noundef %p.0, %struct.bignum_ctx* noundef %call47) #7
  %tobool233.not = icmp eq i32 %call232, 0
  br i1 %tobool233.not, label %err, label %if.end235

if.end235:                                        ; preds = %if.end231
  %and236 = and i32 %cond, 2
  %cmp237.not = icmp eq i32 %and236, 0
  br i1 %cmp237.not, label %if.end244, label %land.lhs.true239

land.lhs.true239:                                 ; preds = %if.end235
  %g240 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 2
  %23 = load %struct.bignum_st*, %struct.bignum_st** %g240, align 8, !tbaa !19
  %call241 = tail call i32 @ossl_ffc_params_validate_unverifiable_g(%struct.bignum_ctx* noundef %call47, %struct.bn_mont_ctx_st* noundef nonnull %call227, %struct.bignum_st* noundef %p.0, %struct.bignum_st* noundef %q.0, %struct.bignum_st* noundef %23, %struct.bignum_st* noundef nonnull %call56, i32* noundef nonnull %res) #7
  %tobool242.not = icmp eq i32 %call241, 0
  br i1 %tobool242.not, label %err, label %if.end244

if.end244:                                        ; preds = %land.lhs.true239, %if.end235
  %call245 = tail call %struct.bignum_st* @BN_value_one() #7
  %call246 = tail call i32 @BN_sub(%struct.bignum_st* noundef %call53, %struct.bignum_st* noundef %p.0, %struct.bignum_st* noundef %call245) #7
  %tobool247.not = icmp eq i32 %call246, 0
  br i1 %tobool247.not, label %err, label %land.lhs.true248

land.lhs.true248:                                 ; preds = %if.end244
  %call249 = tail call i32 @BN_div(%struct.bignum_st* noundef %call54, %struct.bignum_st* noundef null, %struct.bignum_st* noundef %call53, %struct.bignum_st* noundef %q.0, %struct.bignum_ctx* noundef %call47) #7
  %tobool250.not = icmp eq i32 %call249, 0
  br i1 %tobool250.not, label %err, label %if.end252

if.end252:                                        ; preds = %land.lhs.true248
  %cmp253.not = icmp eq i8* %seed.2, null
  br i1 %cmp253.not, label %if.else272, label %land.lhs.true255

land.lhs.true255:                                 ; preds = %if.end252
  %gindex = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 8
  %24 = load i32, i32* %gindex, align 8, !tbaa !20
  %cmp256.not = icmp eq i32 %24, -1
  br i1 %cmp256.not, label %if.else272, label %if.then258

if.then258:                                       ; preds = %land.lhs.true255
  %call260 = tail call fastcc i32 @generate_canonical_g(%struct.bignum_ctx* noundef %call47, %struct.bn_mont_ctx_st* noundef nonnull %call227, %struct.evp_md_st* noundef %call18, %struct.bignum_st* noundef %call52, %struct.bignum_st* noundef nonnull %call56, %struct.bignum_st* noundef %p.0, %struct.bignum_st* noundef %call54, i32 noundef %24, i8* noundef nonnull %seed.2, i64 noundef %spec.select) #6
  %tobool261.not = icmp eq i32 %call260, 0
  br i1 %tobool261.not, label %if.then262, label %if.end263

if.then262:                                       ; preds = %if.then258
  store i32 1024, i32* %res, align 4, !tbaa !4
  br label %err

if.end263:                                        ; preds = %if.then258
  br i1 %cmp, label %land.lhs.true265, label %if.end280

land.lhs.true265:                                 ; preds = %if.end263
  %g266 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 2
  %25 = load %struct.bignum_st*, %struct.bignum_st** %g266, align 8, !tbaa !19
  %call267 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %call52, %struct.bignum_st* noundef %25) #7
  %cmp268.not = icmp eq i32 %call267, 0
  br i1 %cmp268.not, label %if.end280, label %if.then270

if.then270:                                       ; preds = %land.lhs.true265
  store i32 32768, i32* %res, align 4, !tbaa !4
  br label %err

if.else272:                                       ; preds = %land.lhs.true255, %if.end252
  br i1 %cmp, label %if.end280, label %if.then274

if.then274:                                       ; preds = %if.else272
  %call275 = call fastcc i32 @generate_unverifiable_g(%struct.bignum_ctx* noundef %call47, %struct.bn_mont_ctx_st* noundef nonnull %call227, %struct.bignum_st* noundef %call52, %struct.bignum_st* noundef nonnull %call56, %struct.bignum_st* noundef %p.0, %struct.bignum_st* noundef %call54, %struct.bignum_st* noundef %call53, i32* noundef nonnull %hret) #6
  %tobool276.not = icmp eq i32 %call275, 0
  br i1 %tobool276.not, label %err, label %if.end280

if.end280:                                        ; preds = %if.else272, %if.then274, %if.end263, %land.lhs.true265
  %canonical_g.0 = phi i32 [ 1, %land.lhs.true265 ], [ 1, %if.end263 ], [ 0, %if.else272 ], [ 0, %if.then274 ]
  %call281 = tail call i32 @BN_GENCB_call(%struct.bn_gencb_st* noundef %cb, i32 noundef 3, i32 noundef 1) #7
  %tobool282.not = icmp eq i32 %call281, 0
  br i1 %tobool282.not, label %err, label %if.end284

if.end284:                                        ; preds = %if.end280
  br i1 %cmp, label %pass, label %if.then286

if.then286:                                       ; preds = %if.end284
  %26 = load %struct.bignum_st*, %struct.bignum_st** %p109, align 8, !tbaa !16
  %cmp288.not = icmp eq %struct.bignum_st* %p.0, %26
  br i1 %cmp288.not, label %if.end294, label %if.then290

if.then290:                                       ; preds = %if.then286
  tail call void @BN_free(%struct.bignum_st* noundef %26) #7
  %call292 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %p.0) #7
  store %struct.bignum_st* %call292, %struct.bignum_st** %p109, align 8, !tbaa !16
  br label %if.end294

if.end294:                                        ; preds = %if.then290, %if.then286
  %q295 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 1
  %27 = load %struct.bignum_st*, %struct.bignum_st** %q295, align 8, !tbaa !17
  %cmp296.not = icmp eq %struct.bignum_st* %q.0, %27
  br i1 %cmp296.not, label %if.end302, label %if.then298

if.then298:                                       ; preds = %if.end294
  tail call void @BN_free(%struct.bignum_st* noundef %27) #7
  %call300 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %q.0) #7
  store %struct.bignum_st* %call300, %struct.bignum_st** %q295, align 8, !tbaa !17
  br label %if.end302

if.end302:                                        ; preds = %if.then298, %if.end294
  %g303 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 2
  %28 = load %struct.bignum_st*, %struct.bignum_st** %g303, align 8, !tbaa !19
  %cmp304.not = icmp eq %struct.bignum_st* %call52, %28
  br i1 %cmp304.not, label %if.end310, label %if.then306

if.then306:                                       ; preds = %if.end302
  tail call void @BN_free(%struct.bignum_st* noundef %28) #7
  %call308 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %call52) #7
  store %struct.bignum_st* %call308, %struct.bignum_st** %g303, align 8, !tbaa !19
  br label %if.end310

if.end310:                                        ; preds = %if.then306, %if.end302
  %29 = phi %struct.bignum_st* [ %call308, %if.then306 ], [ %call52, %if.end302 ]
  %30 = load %struct.bignum_st*, %struct.bignum_st** %p109, align 8, !tbaa !16
  %cmp312 = icmp eq %struct.bignum_st* %30, null
  br i1 %cmp312, label %err, label %lor.lhs.false314

lor.lhs.false314:                                 ; preds = %if.end310
  %31 = load %struct.bignum_st*, %struct.bignum_st** %q295, align 8, !tbaa !17
  %cmp316 = icmp eq %struct.bignum_st* %31, null
  %cmp320 = icmp eq %struct.bignum_st* %29, null
  %or.cond557 = select i1 %cmp316, i1 true, i1 %cmp320
  br i1 %or.cond557, label %err, label %if.end323

if.end323:                                        ; preds = %lor.lhs.false314
  %32 = load i32, i32* %pcounter, align 4, !tbaa !4
  %call324 = tail call i32 @ossl_ffc_params_set_validate_params(%struct.ffc_params_st* noundef nonnull %params, i8* noundef %seed.2, i64 noundef %spec.select, i32 noundef %32) #7
  %tobool325.not = icmp eq i32 %call324, 0
  br i1 %tobool325.not, label %err, label %if.end327

if.end327:                                        ; preds = %if.end323
  %33 = load i32, i32* %hret, align 4, !tbaa !4
  %h = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 9
  store i32 %33, i32* %h, align 4, !tbaa !21
  br label %pass

pass:                                             ; preds = %if.end221.pass_crit_edge, %if.end284, %if.end327
  %and329.pre-phi = phi i32 [ %.pre556, %if.end221.pass_crit_edge ], [ %and236, %if.end284 ], [ %and236, %if.end327 ]
  %mont.0 = phi %struct.bn_mont_ctx_st* [ null, %if.end221.pass_crit_edge ], [ %call227, %if.end284 ], [ %call227, %if.end327 ]
  %seed_tmp.1 = phi i8* [ %call130, %if.end221.pass_crit_edge ], [ %seed_tmp.0, %if.end284 ], [ %seed_tmp.0, %if.end327 ]
  %canonical_g.1 = phi i32 [ 0, %if.end221.pass_crit_edge ], [ %canonical_g.0, %if.end284 ], [ %canonical_g.0, %if.end327 ]
  %seed.3 = phi i8* [ %seed.1552, %if.end221.pass_crit_edge ], [ %seed.2, %if.end284 ], [ %seed.2, %if.end327 ]
  %cmp330 = icmp ne i32 %and329.pre-phi, 0
  %cmp333 = icmp eq i32 %canonical_g.1, 0
  %or.cond = and i1 %cmp330, %cmp333
  %. = select i1 %or.cond, i32 2, i32 1
  br label %err

err:                                              ; preds = %if.end197, %if.end186, %if.end182, %for.cond, %pass, %if.end323, %if.end310, %lor.lhs.false314, %if.end280, %if.then274, %if.end244, %land.lhs.true248, %land.lhs.true239, %if.end231, %g_only, %land.lhs.true212, %lor.lhs.false215, %for.end, %if.end157, %if.end140, %if.end129, %if.end118, %if.end51, %if.end46, %if.end41, %if.end23, %if.end19, %if.then270, %if.then262, %if.then205, %if.then181, %if.then154, %if.then139, %if.then128, %if.then105, %if.then95, %if.then83, %if.then40, %if.then15
  %mont.1 = phi %struct.bn_mont_ctx_st* [ null, %if.end19 ], [ null, %if.end23 ], [ null, %if.then40 ], [ null, %if.end41 ], [ null, %if.end46 ], [ null, %if.end51 ], [ null, %if.then95 ], [ null, %if.then105 ], [ null, %g_only ], [ %call227, %if.then270 ], [ %call227, %if.end310 ], [ %call227, %lor.lhs.false314 ], [ %call227, %if.end323 ], [ %call227, %if.end280 ], [ %call227, %if.then262 ], [ %call227, %if.then274 ], [ %call227, %land.lhs.true248 ], [ %call227, %if.end244 ], [ %call227, %land.lhs.true239 ], [ %call227, %if.end231 ], [ null, %if.end118 ], [ null, %if.then128 ], [ null, %if.end129 ], [ null, %if.then139 ], [ null, %if.end140 ], [ null, %if.then154 ], [ null, %if.then181 ], [ null, %land.lhs.true212 ], [ null, %lor.lhs.false215 ], [ null, %for.end ], [ null, %if.then205 ], [ null, %if.end157 ], [ null, %if.then83 ], [ null, %if.then15 ], [ %mont.0, %pass ], [ null, %for.cond ], [ null, %if.end182 ], [ null, %if.end186 ], [ null, %if.end197 ]
  %seed_tmp.2 = phi i8* [ null, %if.end19 ], [ null, %if.end23 ], [ null, %if.then40 ], [ null, %if.end41 ], [ null, %if.end46 ], [ null, %if.end51 ], [ null, %if.then95 ], [ null, %if.then105 ], [ %seed_tmp.0, %g_only ], [ %seed_tmp.0, %if.then270 ], [ %seed_tmp.0, %if.end310 ], [ %seed_tmp.0, %lor.lhs.false314 ], [ %seed_tmp.0, %if.end323 ], [ %seed_tmp.0, %if.end280 ], [ %seed_tmp.0, %if.then262 ], [ %seed_tmp.0, %if.then274 ], [ %seed_tmp.0, %land.lhs.true248 ], [ %seed_tmp.0, %if.end244 ], [ %seed_tmp.0, %land.lhs.true239 ], [ %seed_tmp.0, %if.end231 ], [ null, %if.end118 ], [ null, %if.then128 ], [ null, %if.end129 ], [ %call130, %if.then139 ], [ %call130, %if.end140 ], [ %call130, %if.then154 ], [ %call130, %if.then181 ], [ %call130, %land.lhs.true212 ], [ %call130, %lor.lhs.false215 ], [ %call130, %for.end ], [ %call130, %if.then205 ], [ %call130, %if.end157 ], [ null, %if.then83 ], [ null, %if.then15 ], [ %seed_tmp.1, %pass ], [ %call130, %for.cond ], [ %call130, %if.end182 ], [ %call130, %if.end186 ], [ %call130, %if.end197 ]
  %ctx.0 = phi %struct.bignum_ctx* [ null, %if.end19 ], [ null, %if.end23 ], [ null, %if.then40 ], [ null, %if.end41 ], [ null, %if.end46 ], [ %call47, %if.end51 ], [ %call47, %if.then95 ], [ %call47, %if.then105 ], [ %call47, %g_only ], [ %call47, %if.then270 ], [ %call47, %if.end310 ], [ %call47, %lor.lhs.false314 ], [ %call47, %if.end323 ], [ %call47, %if.end280 ], [ %call47, %if.then262 ], [ %call47, %if.then274 ], [ %call47, %land.lhs.true248 ], [ %call47, %if.end244 ], [ %call47, %land.lhs.true239 ], [ %call47, %if.end231 ], [ %call47, %if.end118 ], [ %call47, %if.then128 ], [ %call47, %if.end129 ], [ %call47, %if.then139 ], [ %call47, %if.end140 ], [ %call47, %if.then154 ], [ %call47, %if.then181 ], [ %call47, %land.lhs.true212 ], [ %call47, %lor.lhs.false215 ], [ %call47, %for.end ], [ %call47, %if.then205 ], [ %call47, %if.end157 ], [ %call47, %if.then83 ], [ null, %if.then15 ], [ %call47, %pass ], [ %call47, %for.cond ], [ %call47, %if.end182 ], [ %call47, %if.end186 ], [ %call47, %if.end197 ]
  %mctx.0 = phi %struct.evp_md_ctx_st* [ null, %if.end19 ], [ null, %if.end23 ], [ null, %if.then40 ], [ null, %if.end41 ], [ %call42, %if.end46 ], [ %call42, %if.end51 ], [ %call42, %if.then95 ], [ %call42, %if.then105 ], [ %call42, %g_only ], [ %call42, %if.then270 ], [ %call42, %if.end310 ], [ %call42, %lor.lhs.false314 ], [ %call42, %if.end323 ], [ %call42, %if.end280 ], [ %call42, %if.then262 ], [ %call42, %if.then274 ], [ %call42, %land.lhs.true248 ], [ %call42, %if.end244 ], [ %call42, %land.lhs.true239 ], [ %call42, %if.end231 ], [ %call42, %if.end118 ], [ %call42, %if.then128 ], [ %call42, %if.end129 ], [ %call42, %if.then139 ], [ %call42, %if.end140 ], [ %call42, %if.then154 ], [ %call42, %if.then181 ], [ %call42, %land.lhs.true212 ], [ %call42, %lor.lhs.false215 ], [ %call42, %for.end ], [ %call42, %if.then205 ], [ %call42, %if.end157 ], [ %call42, %if.then83 ], [ null, %if.then15 ], [ %call42, %pass ], [ %call42, %for.cond ], [ %call42, %if.end182 ], [ %call42, %if.end186 ], [ %call42, %if.end197 ]
  %md.1 = phi %struct.evp_md_st* [ null, %if.end19 ], [ %call18, %if.end23 ], [ %call18, %if.then40 ], [ %call18, %if.end41 ], [ %call18, %if.end46 ], [ %call18, %if.end51 ], [ %call18, %if.then95 ], [ %call18, %if.then105 ], [ %call18, %g_only ], [ %call18, %if.then270 ], [ %call18, %if.end310 ], [ %call18, %lor.lhs.false314 ], [ %call18, %if.end323 ], [ %call18, %if.end280 ], [ %call18, %if.then262 ], [ %call18, %if.then274 ], [ %call18, %land.lhs.true248 ], [ %call18, %if.end244 ], [ %call18, %land.lhs.true239 ], [ %call18, %if.end231 ], [ %call18, %if.end118 ], [ %call18, %if.then128 ], [ %call18, %if.end129 ], [ %call18, %if.then139 ], [ %call18, %if.end140 ], [ %call18, %if.then154 ], [ %call18, %if.then181 ], [ %call18, %land.lhs.true212 ], [ %call18, %lor.lhs.false215 ], [ %call18, %for.end ], [ %call18, %if.then205 ], [ %call18, %if.end157 ], [ %call18, %if.then83 ], [ null, %if.then15 ], [ %call18, %pass ], [ %call18, %for.cond ], [ %call18, %if.end182 ], [ %call18, %if.end186 ], [ %call18, %if.end197 ]
  %seed.4 = phi i8* [ null, %if.end19 ], [ null, %if.end23 ], [ null, %if.then40 ], [ null, %if.end41 ], [ null, %if.end46 ], [ null, %if.end51 ], [ %8, %if.then95 ], [ %8, %if.then105 ], [ %seed.2, %g_only ], [ %seed.2, %if.then270 ], [ %seed.2, %if.end310 ], [ %seed.2, %lor.lhs.false314 ], [ %seed.2, %if.end323 ], [ %seed.2, %if.end280 ], [ %seed.2, %if.then262 ], [ %seed.2, %if.then274 ], [ %seed.2, %land.lhs.true248 ], [ %seed.2, %if.end244 ], [ %seed.2, %land.lhs.true239 ], [ %seed.2, %if.end231 ], [ %8, %if.end118 ], [ %8, %if.then128 ], [ %8, %if.end129 ], [ null, %if.then139 ], [ null, %if.end140 ], [ %8, %if.then154 ], [ %seed.1552, %if.then181 ], [ %seed.1552, %land.lhs.true212 ], [ %seed.1552, %lor.lhs.false215 ], [ %seed.1552, %for.end ], [ %seed.1552, %if.then205 ], [ %seed.1552, %if.end157 ], [ %8, %if.then83 ], [ null, %if.then15 ], [ %seed.3, %pass ], [ %seed.1552, %for.cond ], [ %seed.1552, %if.end182 ], [ %seed.1552, %if.end186 ], [ %seed.1552, %if.end197 ]
  %ok.0 = phi i32 [ 0, %if.end19 ], [ 0, %if.end23 ], [ 0, %if.then40 ], [ 0, %if.end41 ], [ 0, %if.end46 ], [ 0, %if.end51 ], [ 0, %if.then95 ], [ 0, %if.then105 ], [ 0, %g_only ], [ 0, %if.then270 ], [ 0, %if.end310 ], [ 0, %lor.lhs.false314 ], [ 0, %if.end323 ], [ 0, %if.end280 ], [ 0, %if.then262 ], [ 0, %if.then274 ], [ 0, %land.lhs.true248 ], [ 0, %if.end244 ], [ 0, %land.lhs.true239 ], [ 0, %if.end231 ], [ 0, %if.end118 ], [ 0, %if.then128 ], [ 0, %if.end129 ], [ 0, %if.then139 ], [ 0, %if.end140 ], [ 0, %if.then154 ], [ 0, %if.then181 ], [ 0, %land.lhs.true212 ], [ 0, %lor.lhs.false215 ], [ 0, %for.end ], [ 0, %if.then205 ], [ 0, %if.end157 ], [ 0, %if.then83 ], [ 0, %if.then15 ], [ %., %pass ], [ 0, %for.cond ], [ 0, %if.end182 ], [ 0, %if.end186 ], [ 0, %if.end197 ]
  %seed338 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 4
  %34 = load i8*, i8** %seed338, align 8, !tbaa !15
  %cmp339.not = icmp eq i8* %seed.4, %34
  br i1 %cmp339.not, label %if.end342, label %if.then341

if.then341:                                       ; preds = %err
  tail call void @CRYPTO_free(i8* noundef %seed.4, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 794) #7
  br label %if.end342

if.end342:                                        ; preds = %if.then341, %err
  tail call void @CRYPTO_free(i8* noundef %seed_tmp.2, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 795) #7
  %cmp343.not = icmp eq %struct.bignum_ctx* %ctx.0, null
  br i1 %cmp343.not, label %if.end346, label %if.then345

if.then345:                                       ; preds = %if.end342
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef nonnull %ctx.0) #7
  br label %if.end346

if.end346:                                        ; preds = %if.then345, %if.end342
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %ctx.0) #7
  tail call void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef %mont.1) #7
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %mctx.0) #7
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %md.1) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  ret i32 %ok.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i8* @default_mdname(i64 noundef %N) unnamed_addr #3 {
entry:
  switch i64 %N, label %if.end7 [
    i64 160, label %return
    i64 224, label %if.then2
    i64 256, label %if.then5
  ]

if.then2:                                         ; preds = %entry
  br label %return

if.then5:                                         ; preds = %entry
  br label %return

if.end7:                                          ; preds = %entry
  br label %return

return:                                           ; preds = %entry, %if.end7, %if.then5, %if.then2
  %retval.0 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %if.then2 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %if.then5 ], [ null, %if.end7 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %entry ]
  ret i8* %retval.0
}

declare i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ffc_validate_LN(i64 noundef %L, i64 noundef %N, i32 noundef %type) unnamed_addr #0 {
entry:
  switch i32 %type, label %return [
    i32 1, label %if.then
    i32 0, label %if.then11
  ]

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i64 %L, 1024
  %cmp2 = icmp eq i64 %N, 160
  %or.cond = and i1 %cmp1, %cmp2
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %cmp4 = icmp eq i64 %L, 2048
  br i1 %cmp4, label %land.lhs.true5, label %if.end9

land.lhs.true5:                                   ; preds = %if.end
  switch i64 %N, label %if.end9 [
    i64 256, label %return
    i64 224, label %return
  ]

if.end9:                                          ; preds = %land.lhs.true5, %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ffc_validate_LN, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 127, i8* noundef null) #7
  br label %return

if.then11:                                        ; preds = %entry
  %cmp12 = icmp ugt i64 %L, 3071
  %cmp14 = icmp ugt i64 %N, 255
  %or.cond30 = and i1 %cmp12, %cmp14
  br i1 %or.cond30, label %return, label %if.end16

if.end16:                                         ; preds = %if.then11
  %cmp17 = icmp ugt i64 %L, 2047
  %cmp19 = icmp ugt i64 %N, 223
  %or.cond31 = and i1 %cmp17, %cmp19
  br i1 %or.cond31, label %return, label %if.end21

if.end21:                                         ; preds = %if.end16
  %cmp22 = icmp ugt i64 %L, 1023
  %cmp24 = icmp ugt i64 %N, 159
  %or.cond32 = and i1 %cmp22, %cmp24
  br i1 %or.cond32, label %return, label %if.end26

if.end26:                                         ; preds = %if.end21
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ffc_validate_LN, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 10, i32 noundef 114, i8* noundef null) #7
  br label %return

return:                                           ; preds = %if.end9, %if.end26, %entry, %if.end21, %if.end16, %if.then11, %land.lhs.true5, %land.lhs.true5, %if.then
  %retval.0 = phi i32 [ 80, %if.then ], [ 112, %land.lhs.true5 ], [ 112, %land.lhs.true5 ], [ 128, %if.then11 ], [ 112, %if.end16 ], [ 80, %if.end21 ], [ 0, %entry ], [ 0, %if.end26 ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #2

declare %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BN_lshift(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_value_one() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @generate_q_fips186_4(%struct.bignum_ctx* noundef %ctx, %struct.bignum_st* noundef %q, %struct.evp_md_st* noundef %evpmd, i32 noundef %qsize, i8* noundef %seed, i64 noundef %seedlen, i32 noundef %generate_seed, i32* nocapture noundef %retm, i32* nocapture noundef %res, %struct.bn_gencb_st* noundef %cb) unnamed_addr #0 {
entry:
  %md = alloca [64 x i8], align 16
  %0 = load i32, i32* %retm, align 4, !tbaa !4
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %md, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #5
  %call = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %evpmd) #7
  %call1 = tail call %struct.ossl_lib_ctx_st* @ossl_bn_get_libctx(%struct.bignum_ctx* noundef %ctx) #7
  %tobool3.not = icmp eq i32 %generate_seed, 0
  %cmp11 = icmp sgt i32 %call, %qsize
  %idx.ext = sext i32 %call to i64
  %add.ptr = getelementptr inbounds [64 x i8], [64 x i8]* %md, i64 0, i64 %idx.ext
  %idx.ext14 = sext i32 %qsize to i64
  %idx.neg = sub nsw i64 0, %idx.ext14
  %add.ptr15 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %pmd.0 = select i1 %cmp11, i8* %add.ptr15, i8* %1
  %cmp18 = icmp slt i32 %call, %qsize
  %sub = sub nsw i32 %qsize, %call
  %conv = sext i32 %sub to i64
  %sub27 = add nsw i32 %qsize, -1
  %idxprom = sext i32 %sub27 to i64
  %arrayidx28 = getelementptr inbounds i8, i8* %pmd.0, i64 %idxprom
  br label %for.cond

for.cond:                                         ; preds = %if.end44, %entry
  %m.0 = phi i32 [ %0, %entry ], [ %inc, %if.end44 ]
  %inc = add nsw i32 %m.0, 1
  %call2 = call i32 @BN_GENCB_call(%struct.bn_gencb_st* noundef %cb, i32 noundef 0, i32 noundef %m.0) #7
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %for.cond
  br i1 %tobool3.not, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call4 = call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %call1, i8* noundef %seed, i64 noundef %seedlen, i32 noundef 0) #7
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %err, label %if.end6

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %call7 = call i32 @EVP_Digest(i8* noundef %seed, i64 noundef %seedlen, i8* noundef nonnull %1, i32* noundef null, %struct.evp_md_st* noundef %evpmd, %struct.engine_st* noundef null) #7
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %if.end10

if.end10:                                         ; preds = %if.end6
  br i1 %cmp18, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.end10
  %call23 = call i8* @memset(i8* noundef nonnull %add.ptr, i32 noundef 0, i64 noundef %conv) #7
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.end10
  %2 = load i8, i8* %pmd.0, align 1, !tbaa !22
  %3 = or i8 %2, -128
  store i8 %3, i8* %pmd.0, align 1, !tbaa !22
  %4 = load i8, i8* %arrayidx28, align 1, !tbaa !22
  %5 = or i8 %4, 1
  store i8 %5, i8* %arrayidx28, align 1, !tbaa !22
  %call32 = call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %pmd.0, i32 noundef %qsize, %struct.bignum_st* noundef %q) #7
  %tobool33.not = icmp eq %struct.bignum_st* %call32, null
  br i1 %tobool33.not, label %err, label %if.end35

if.end35:                                         ; preds = %if.end24
  %call36 = call i32 @BN_check_prime(%struct.bignum_st* noundef %q, %struct.bignum_ctx* noundef %ctx, %struct.bn_gencb_st* noundef %cb) #7
  %cmp37 = icmp sgt i32 %call36, 0
  br i1 %cmp37, label %err, label %if.end40

if.end40:                                         ; preds = %if.end35
  br i1 %tobool3.not, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end40
  %6 = load i32, i32* %res, align 4, !tbaa !4
  %or43 = or i32 %6, 16
  store i32 %or43, i32* %res, align 4, !tbaa !4
  br label %err

if.end44:                                         ; preds = %if.end40
  %cmp45.not = icmp eq i32 %call36, 0
  br i1 %cmp45.not, label %for.cond, label %err

err:                                              ; preds = %if.end35, %if.end44, %if.end24, %if.end6, %land.lhs.true, %for.cond, %if.then42
  %ret.0 = phi i32 [ 0, %if.then42 ], [ 1, %if.end35 ], [ 0, %for.cond ], [ 0, %if.end6 ], [ 0, %if.end24 ], [ 0, %if.end44 ], [ 0, %land.lhs.true ]
  store i32 %inc, i32* %retm, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #5
  ret i32 %ret.0
}

declare i32 @BN_cmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_GENCB_call(%struct.bn_gencb_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @generate_p(%struct.bignum_ctx* noundef %ctx, %struct.evp_md_st* noundef %evpmd, i32 noundef %max_counter, i32 noundef %n, i8* noundef %buf, i64 noundef %buf_len, %struct.bignum_st* noundef %q, %struct.bignum_st* noundef %p, i32 noundef %L, %struct.bn_gencb_st* noundef %cb, i32* nocapture noundef writeonly %counter, i32* nocapture noundef %res) unnamed_addr #0 {
entry:
  %md = alloca [64 x i8], align 16
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %md, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #5
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #7
  %call = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #7
  %call1 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #7
  %call2 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #7
  %call3 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #7
  %call4 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #7
  %cmp = icmp eq %struct.bignum_st* %call4, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call5 = tail call %struct.bignum_st* @BN_value_one() #7
  %sub = add nsw i32 %L, -1
  %call6 = tail call i32 @BN_lshift(%struct.bignum_st* noundef %call3, %struct.bignum_st* noundef %call5, i32 noundef %sub) #7
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %err, label %if.end8

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %evpmd) #7
  %cmp10 = icmp slt i32 %call9, 1
  br i1 %cmp10, label %err, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end8
  %cmp13.not157 = icmp slt i32 %max_counter, 0
  br i1 %cmp13.not157, label %for.end91, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cmp20.not155 = icmp slt i32 %n, 0
  %shl = shl i32 %call9, 3
  %1 = and i64 %buf_len, 4294967295
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc89
  %i.0158 = phi i32 [ 0, %for.body.lr.ph ], [ %inc90, %for.inc89 ]
  %cmp14.not = icmp eq i32 %i.0158, 0
  br i1 %cmp14.not, label %if.end18, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %call15 = call i32 @BN_GENCB_call(%struct.bn_gencb_st* noundef %cb, i32 noundef 0, i32 noundef %i.0158) #7
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %if.end18

if.end18:                                         ; preds = %land.lhs.true, %for.body
  call void @BN_zero_ex(%struct.bignum_st* noundef %call) #7
  br i1 %cmp20.not155, label %for.end50, label %for.body21

for.cond19:                                       ; preds = %lor.lhs.false43
  %inc49 = add nuw i32 %j.0156, 1
  %exitcond.not = icmp eq i32 %j.0156, %n
  br i1 %exitcond.not, label %for.end50, label %for.body21, !llvm.loop !23

for.body21:                                       ; preds = %if.end18, %for.cond19
  %j.0156 = phi i32 [ %inc49, %for.cond19 ], [ 0, %if.end18 ]
  br label %for.cond23

for.cond23:                                       ; preds = %for.body26, %for.body21
  %indvars.iv = phi i64 [ %2, %for.body26 ], [ %1, %for.body21 ]
  %2 = add nsw i64 %indvars.iv, -1
  %3 = trunc i64 %indvars.iv to i32
  %cmp24 = icmp sgt i32 %3, 0
  br i1 %cmp24, label %for.body26, label %for.end

for.body26:                                       ; preds = %for.cond23
  %arrayidx = getelementptr inbounds i8, i8* %buf, i64 %2
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !22
  %inc = add i8 %4, 1
  store i8 %inc, i8* %arrayidx, align 1, !tbaa !22
  %cmp30.not = icmp eq i8 %inc, 0
  br i1 %cmp30.not, label %for.cond23, label %for.end, !llvm.loop !25

for.end:                                          ; preds = %for.body26, %for.cond23
  %call34 = call i32 @EVP_Digest(i8* noundef %buf, i64 noundef %buf_len, i8* noundef nonnull %0, i32* noundef null, %struct.evp_md_st* noundef %evpmd, %struct.engine_st* noundef null) #7
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %call37 = call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %0, i32 noundef %call9, %struct.bignum_st* noundef nonnull %call4) #7
  %cmp38 = icmp eq %struct.bignum_st* %call37, null
  br i1 %cmp38, label %err, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %lor.lhs.false
  %mul = mul nsw i32 %shl, %j.0156
  %call41 = call i32 @BN_lshift(%struct.bignum_st* noundef nonnull %call4, %struct.bignum_st* noundef nonnull %call4, i32 noundef %mul) #7
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %err, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %lor.lhs.false40
  %call44 = call i32 @BN_add(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef nonnull %call4) #7
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %err, label %for.cond19

for.end50:                                        ; preds = %for.cond19, %if.end18
  %call52 = call i32 @BN_mask_bits(%struct.bignum_st* noundef %call, i32 noundef %sub) #7
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %err, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %for.end50
  %call55 = call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %call) #7
  %tobool56.not = icmp eq %struct.bignum_st* %call55, null
  br i1 %tobool56.not, label %err, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %lor.lhs.false54
  %call58 = call i32 @BN_add(%struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %call3) #7
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %err, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false57
  %call61 = call i32 @BN_lshift1(%struct.bignum_st* noundef nonnull %call4, %struct.bignum_st* noundef %q) #7
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %err, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %lor.lhs.false60
  %call64 = call i32 @BN_div(%struct.bignum_st* noundef null, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call1, %struct.bignum_st* noundef nonnull %call4, %struct.bignum_ctx* noundef %ctx) #7
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %err, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %lor.lhs.false63
  %call67 = call %struct.bignum_st* @BN_value_one() #7
  %call68 = call i32 @BN_sub(%struct.bignum_st* noundef nonnull %call4, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call67) #7
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %err, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %lor.lhs.false66
  %call71 = call i32 @BN_sub(%struct.bignum_st* noundef %p, %struct.bignum_st* noundef %call1, %struct.bignum_st* noundef nonnull %call4) #7
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %err, label %if.end74

if.end74:                                         ; preds = %lor.lhs.false70
  %call75 = call i32 @BN_cmp(%struct.bignum_st* noundef %p, %struct.bignum_st* noundef %call3) #7
  %cmp76 = icmp sgt i32 %call75, -1
  br i1 %cmp76, label %if.then78, label %for.inc89

if.then78:                                        ; preds = %if.end74
  %call79 = call i32 @BN_check_prime(%struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx, %struct.bn_gencb_st* noundef %cb) #7
  %cmp80 = icmp sgt i32 %call79, 0
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.then78
  store i32 %i.0158, i32* %counter, align 4, !tbaa !4
  br label %err

if.end83:                                         ; preds = %if.then78
  %cmp84.not = icmp eq i32 %call79, 0
  br i1 %cmp84.not, label %for.inc89, label %err

for.inc89:                                        ; preds = %if.end74, %if.end83
  %inc90 = add nuw i32 %i.0158, 1
  %exitcond166.not = icmp eq i32 %i.0158, %max_counter
  br i1 %exitcond166.not, label %for.end91, label %for.body, !llvm.loop !26

for.end91:                                        ; preds = %for.inc89, %for.cond.preheader
  %5 = load i32, i32* %res, align 4, !tbaa !4
  %or = or i32 %5, 1
  store i32 %or, i32* %res, align 4, !tbaa !4
  br label %err

err:                                              ; preds = %if.end83, %for.end50, %lor.lhs.false54, %lor.lhs.false57, %lor.lhs.false60, %lor.lhs.false63, %lor.lhs.false66, %lor.lhs.false70, %land.lhs.true, %for.end, %lor.lhs.false, %lor.lhs.false40, %lor.lhs.false43, %if.end8, %if.end, %entry, %for.end91, %if.then82
  %ret.0 = phi i32 [ -1, %entry ], [ -1, %if.end8 ], [ 1, %if.then82 ], [ 0, %for.end91 ], [ -1, %if.end ], [ -1, %lor.lhs.false43 ], [ -1, %lor.lhs.false40 ], [ -1, %lor.lhs.false ], [ -1, %for.end ], [ -1, %land.lhs.true ], [ -1, %lor.lhs.false70 ], [ -1, %lor.lhs.false66 ], [ -1, %lor.lhs.false63 ], [ -1, %lor.lhs.false60 ], [ -1, %lor.lhs.false57 ], [ -1, %lor.lhs.false54 ], [ -1, %for.end50 ], [ -1, %if.end83 ]
  call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #7
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #5
  ret i32 %ret.0
}

declare %struct.bn_mont_ctx_st* @BN_MONT_CTX_new() local_unnamed_addr #2

declare i32 @BN_MONT_CTX_set(%struct.bn_mont_ctx_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @ossl_ffc_params_validate_unverifiable_g(%struct.bignum_ctx* noundef, %struct.bn_mont_ctx_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, i32* noundef) local_unnamed_addr #2

declare i32 @BN_sub(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_div(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @generate_canonical_g(%struct.bignum_ctx* noundef %ctx, %struct.bn_mont_ctx_st* noundef %mont, %struct.evp_md_st* noundef %evpmd, %struct.bignum_st* noundef %g, %struct.bignum_st* noundef %tmp, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %e, i32 noundef %gindex, i8* noundef %seed, i64 noundef %seedlen) unnamed_addr #0 {
entry:
  %md = alloca [64 x i8], align 16
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %md, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #5
  %call = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %evpmd) #7
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #7
  %cmp2 = icmp eq %struct.evp_md_ctx_st* %call1, null
  br i1 %cmp2, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %conv = trunc i32 %gindex to i8
  %arrayidx8 = getelementptr inbounds [64 x i8], [64 x i8]* %md, i64 0, i64 1
  %arrayidx11 = getelementptr inbounds [64 x i8], [64 x i8]* %md, i64 0, i64 2
  br label %for.body

for.cond:                                         ; preds = %if.end34
  %inc = add nuw nsw i32 %counter.062, 1
  %exitcond.not = icmp eq i32 %inc, 65536
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !27

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %counter.062 = phi i32 [ 1, %for.cond.preheader ], [ %inc, %for.cond ]
  store i8 %conv, i8* %0, align 16, !tbaa !22
  %1 = lshr i32 %counter.062, 8
  %conv7 = trunc i32 %1 to i8
  store i8 %conv7, i8* %arrayidx8, align 1, !tbaa !22
  %conv10 = trunc i32 %counter.062 to i8
  store i8 %conv10, i8* %arrayidx11, align 2, !tbaa !22
  %call12 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call1, %struct.evp_md_st* noundef %evpmd, %struct.engine_st* noundef null) #7
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %for.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %call13 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call1, i8* noundef %seed, i64 noundef %seedlen) #7
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %for.end, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %call16 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @generate_canonical_g.ggen, i64 0, i64 0), i64 noundef 4) #7
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %for.end, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %call19 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call1, i8* noundef nonnull %0, i64 noundef 3) #7
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %for.end, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false18
  %call23 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call1, i8* noundef nonnull %0, i32* noundef null) #7
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %for.end, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false21
  %call27 = call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %0, i32 noundef %call, %struct.bignum_st* noundef %tmp) #7
  %cmp28 = icmp eq %struct.bignum_st* %call27, null
  br i1 %cmp28, label %for.end, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false25
  %call31 = call i32 @BN_mod_exp_mont(%struct.bignum_st* noundef %g, %struct.bignum_st* noundef %tmp, %struct.bignum_st* noundef %e, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx, %struct.bn_mont_ctx_st* noundef %mont) #7
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %for.end, label %if.end34

if.end34:                                         ; preds = %lor.lhs.false30
  %call35 = call %struct.bignum_st* @BN_value_one() #7
  %call36 = call i32 @BN_cmp(%struct.bignum_st* noundef %g, %struct.bignum_st* noundef %call35) #7
  %cmp37 = icmp sgt i32 %call36, 0
  br i1 %cmp37, label %for.end, label %for.cond

for.end:                                          ; preds = %if.end34, %for.body, %lor.lhs.false, %lor.lhs.false15, %lor.lhs.false18, %lor.lhs.false21, %lor.lhs.false25, %lor.lhs.false30, %for.cond
  %ret.0 = phi i32 [ 0, %lor.lhs.false25 ], [ 0, %lor.lhs.false30 ], [ 0, %lor.lhs.false21 ], [ 0, %lor.lhs.false18 ], [ 0, %lor.lhs.false15 ], [ 0, %lor.lhs.false ], [ 0, %for.body ], [ 0, %for.cond ], [ 1, %if.end34 ]
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef nonnull %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %for.end
  %retval.0 = phi i32 [ %ret.0, %for.end ], [ 0, %entry ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @generate_unverifiable_g(%struct.bignum_ctx* noundef %ctx, %struct.bn_mont_ctx_st* noundef %mont, %struct.bignum_st* noundef %g, %struct.bignum_st* noundef %hbn, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %e, %struct.bignum_st* noundef %pm1, i32* nocapture noundef writeonly %hret) unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_set_word(%struct.bignum_st* noundef %hbn, i64 noundef 2) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call125 = tail call i32 @BN_mod_exp_mont(%struct.bignum_st* noundef %g, %struct.bignum_st* noundef %hbn, %struct.bignum_st* noundef %e, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx, %struct.bn_mont_ctx_st* noundef %mont) #7
  %tobool2.not26 = icmp eq i32 %call125, 0
  br i1 %tobool2.not26, label %cleanup, label %if.end4

if.end4:                                          ; preds = %for.cond.preheader, %if.end16
  %h.027 = phi i32 [ %inc, %if.end16 ], [ 2, %for.cond.preheader ]
  %call5 = tail call %struct.bignum_st* @BN_value_one() #7
  %call6 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %g, %struct.bignum_st* noundef %call5) #7
  %cmp = icmp sgt i32 %call6, 0
  br i1 %cmp, label %for.end, label %if.end9

if.end9:                                          ; preds = %if.end4
  %call10 = tail call i32 @BN_add_word(%struct.bignum_st* noundef %hbn, i64 noundef 1) #7
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end9
  %call12 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %hbn, %struct.bignum_st* noundef %pm1) #7
  %cmp13 = icmp sgt i32 %call12, -1
  br i1 %cmp13, label %cleanup, label %if.end16

if.end16:                                         ; preds = %lor.lhs.false
  %inc = add nuw nsw i32 %h.027, 1
  %call1 = tail call i32 @BN_mod_exp_mont(%struct.bignum_st* noundef %g, %struct.bignum_st* noundef %hbn, %struct.bignum_st* noundef %e, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx, %struct.bn_mont_ctx_st* noundef %mont) #7
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end4

for.end:                                          ; preds = %if.end4
  store i32 %h.027, i32* %hret, align 4, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %lor.lhs.false, %if.end9, %for.cond.preheader, %entry, %for.end
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %entry ], [ 0, %for.cond.preheader ], [ 0, %if.end9 ], [ 0, %lor.lhs.false ], [ 0, %if.end16 ]
  ret i32 %retval.0
}

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @ossl_ffc_params_set_validate_params(%struct.ffc_params_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef) local_unnamed_addr #2

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

declare void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ffc_params_FIPS186_2_gen_verify(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.ffc_params_st* noundef %params, i32 noundef %mode, i32 %type, i64 noundef %L, i64 noundef %N, i32* noundef %res, %struct.bn_gencb_st* noundef %cb) local_unnamed_addr #0 {
entry:
  %seed = alloca [32 x i8], align 16
  %buf = alloca [32 x i8], align 16
  %m = alloca i32, align 4
  %pcounter = alloca i32, align 4
  %hret = alloca i32, align 4
  %0 = getelementptr inbounds [32 x i8], [32 x i8]* %seed, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #5
  %1 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #5
  %2 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #5
  store i32 0, i32* %m, align 4, !tbaa !4
  %3 = bitcast i32* %pcounter to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #5
  store i32 0, i32* %pcounter, align 4, !tbaa !4
  %4 = bitcast i32* %hret to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #5
  store i32 -1, i32* %hret, align 4, !tbaa !4
  %seed1 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 4
  %5 = load i8*, i8** %seed1, align 8, !tbaa !15
  %seedlen = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 5
  %6 = load i64, i64* %seedlen, align 8, !tbaa !14
  %cmp = icmp eq i32 %mode, 0
  br i1 %cmp, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  %flags2 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 10
  %7 = load i32, i32* %flags2, align 8, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ 0, %entry ]
  store i32 0, i32* %res, align 4, !tbaa !4
  %mdname = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 11
  %8 = load i8*, i8** %mdname, align 8, !tbaa !12
  %cmp3.not = icmp eq i8* %8, null
  br i1 %cmp3.not, label %if.else, label %if.end20

if.else:                                          ; preds = %cond.end
  %cmp6 = icmp eq i64 %N, 0
  %cmp9 = icmp ugt i64 %L, 2047
  %9 = select i1 %cmp9, i64 256, i64 160
  %N.addr.0 = select i1 %cmp6, i64 %9, i64 %N
  %call13 = tail call fastcc i8* @default_mdname(i64 noundef %N.addr.0) #6
  %cmp14 = icmp eq i8* %call13, null
  br i1 %cmp14, label %if.then16, label %if.end20

if.then16:                                        ; preds = %if.else
  store i32 32, i32* %res, align 4, !tbaa !4
  br label %if.end283

if.end20:                                         ; preds = %if.else, %cond.end
  %call13.sink = phi i8* [ %8, %cond.end ], [ %call13, %if.else ]
  %N.addr.1 = phi i64 [ %N, %cond.end ], [ %N.addr.0, %if.else ]
  %mdprops18 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 12
  %10 = load i8*, i8** %mdprops18, align 8, !tbaa !13
  %call19 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef nonnull %call13.sink, i8* noundef %10) #7
  %cmp21 = icmp eq %struct.evp_md_st* %call19, null
  br i1 %cmp21, label %if.end283, label %if.end24

if.end24:                                         ; preds = %if.end20
  %cmp25 = icmp eq i64 %N.addr.1, 0
  br i1 %cmp25, label %if.then27, label %if.end31

if.then27:                                        ; preds = %if.end24
  %call28 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef nonnull %call19) #7
  %mul29 = shl nsw i32 %call28, 3
  %conv30 = sext i32 %mul29 to i64
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.end24
  %N.addr.2 = phi i64 [ %conv30, %if.then27 ], [ %N.addr.1, %if.end24 ]
  %shr = lshr i64 %N.addr.2, 3
  %cmp32 = icmp ult i64 %L, 512
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end31
  store i32 128, i32* %res, align 4, !tbaa !4
  br label %if.end283

if.end35:                                         ; preds = %if.end31
  %11 = and i64 %N.addr.2, -72
  %12 = icmp ne i64 %11, 160
  %cmp41 = icmp ne i64 %shr, 32
  %or.cond284 = and i1 %12, %cmp41
  br i1 %or.cond284, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end35
  store i32 32, i32* %res, align 4, !tbaa !4
  br label %if.end283

if.end44:                                         ; preds = %if.end35
  %add = add i64 %L, 63
  %div = and i64 %add, -64
  %cmp46.not = icmp eq i8* %5, null
  br i1 %cmp46.not, label %if.end58, label %if.then48

if.then48:                                        ; preds = %if.end44
  %cmp49 = icmp ult i64 %6, %shr
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.then48
  store i32 256, i32* %res, align 4, !tbaa !4
  br label %if.end283

if.end52:                                         ; preds = %if.then48
  %cmp53 = icmp ugt i64 %6, %shr
  %spec.select = select i1 %cmp53, i64 %shr, i64 %6
  %call57 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef nonnull %5, i64 noundef %spec.select) #7
  br label %if.end58

if.end58:                                         ; preds = %if.end52, %if.end44
  %call59 = call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx) #7
  %cmp60 = icmp eq %struct.bignum_ctx* %call59, null
  br i1 %cmp60, label %if.end283, label %if.end63

if.end63:                                         ; preds = %if.end58
  call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %call59) #7
  %call64 = call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call59) #7
  %call65 = call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call59) #7
  %call66 = call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call59) #7
  %call67 = call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call59) #7
  %call68 = call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call59) #7
  %call69 = call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call59) #7
  %cmp70 = icmp eq %struct.bignum_st* %call69, null
  br i1 %cmp70, label %if.then282, label %if.end73

if.end73:                                         ; preds = %if.end63
  %call74 = call %struct.bignum_st* @BN_value_one() #7
  %sub = add i64 %div, -1
  %conv75 = trunc i64 %sub to i32
  %call76 = call i32 @BN_lshift(%struct.bignum_st* noundef nonnull %call69, %struct.bignum_st* noundef %call74, i32 noundef %conv75) #7
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then282, label %if.end79

if.end79:                                         ; preds = %if.end73
  br i1 %cmp, label %if.else92, label %if.then81

if.then81:                                        ; preds = %if.end79
  %p82 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 0
  %13 = load %struct.bignum_st*, %struct.bignum_st** %p82, align 8, !tbaa !16
  %cmp83 = icmp eq %struct.bignum_st* %13, null
  %q85 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 1
  %14 = load %struct.bignum_st*, %struct.bignum_st** %q85, align 8, !tbaa !17
  %cmp86 = icmp ne %struct.bignum_st* %14, null
  %cmp88.not = xor i1 %cmp83, %cmp86
  br i1 %cmp88.not, label %if.then81.if.end114_crit_edge, label %if.then90

if.then81.if.end114_crit_edge:                    ; preds = %if.then81
  %.pre = and i32 %cond, 1
  br label %if.end114

if.then90:                                        ; preds = %if.then81
  store i32 2048, i32* %res, align 4, !tbaa !4
  br label %if.then282

if.else92:                                        ; preds = %if.end79
  %and = and i32 %cond, 1
  %cmp93.not = icmp eq i32 %and, 0
  br i1 %cmp93.not, label %if.end103, label %if.then95

if.then95:                                        ; preds = %if.else92
  br i1 %cmp46.not, label %if.then101, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then95
  %pcounter98 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 6
  %15 = load i32, i32* %pcounter98, align 8, !tbaa !18
  %cmp99 = icmp slt i32 %15, 0
  br i1 %cmp99, label %if.then101, label %if.end103

if.then101:                                       ; preds = %lor.lhs.false, %if.then95
  store i32 512, i32* %res, align 4, !tbaa !4
  br label %if.then282

if.end103:                                        ; preds = %lor.lhs.false, %if.else92
  %and104 = and i32 %cond, 2
  %cmp105.not = icmp eq i32 %and104, 0
  br i1 %cmp105.not, label %if.end114, label %if.then107

if.then107:                                       ; preds = %if.end103
  %g108 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 2
  %16 = load %struct.bignum_st*, %struct.bignum_st** %g108, align 8, !tbaa !19
  %cmp109 = icmp eq %struct.bignum_st* %16, null
  br i1 %cmp109, label %if.then111, label %if.end114

if.then111:                                       ; preds = %if.then107
  store i32 1024, i32* %res, align 4, !tbaa !4
  br label %if.then282

if.end114:                                        ; preds = %if.then81.if.end114_crit_edge, %if.end103, %if.then107
  %and119.pre-phi = phi i32 [ %.pre, %if.then81.if.end114_crit_edge ], [ %and, %if.end103 ], [ %and, %if.then107 ]
  %p115 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 0
  %17 = load %struct.bignum_st*, %struct.bignum_st** %p115, align 8, !tbaa !16
  %cmp116.not = icmp ne %struct.bignum_st* %17, null
  %cmp120 = icmp eq i32 %and119.pre-phi, 0
  %or.cond = select i1 %cmp116.not, i1 %cmp120, i1 false
  br i1 %or.cond, label %if.then122, label %if.end125

if.then122:                                       ; preds = %if.end114
  %q124 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 1
  %18 = load %struct.bignum_st*, %struct.bignum_st** %q124, align 8, !tbaa !17
  br label %g_only

if.end125:                                        ; preds = %if.end114
  %conv127 = zext i1 %cmp46.not to i32
  %div143 = udiv i64 %sub, 160
  %conv144 = trunc i64 %div143 to i32
  %div.tr = trunc i64 %div to i32
  %19 = shl i32 %div.tr, 2
  %conv147 = add i32 %19, -1
  %pcounter150 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %if.end163, %if.end125
  %use_random_seed.0 = phi i32 [ %conv127, %if.end125 ], [ 1, %if.end163 ]
  %call130 = call fastcc i32 @generate_q_fips186_2(%struct.bignum_ctx* noundef nonnull %call59, %struct.bignum_st* noundef %call66, %struct.evp_md_st* noundef nonnull %call19, i8* noundef nonnull %1, i8* noundef nonnull %0, i64 noundef %shr, i32 noundef %use_random_seed.0, i32* noundef nonnull %m, %struct.bn_gencb_st* noundef %cb) #6
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.then282, label %if.end133

if.end133:                                        ; preds = %for.cond
  %call134 = call i32 @BN_GENCB_call(%struct.bn_gencb_st* noundef %cb, i32 noundef 2, i32 noundef 0) #7
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.then282, label %if.end137

if.end137:                                        ; preds = %if.end133
  %call138 = call i32 @BN_GENCB_call(%struct.bn_gencb_st* noundef %cb, i32 noundef 3, i32 noundef 0) #7
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.then282, label %if.end141

if.end141:                                        ; preds = %if.end137
  br i1 %cmp, label %if.then149, label %if.end156

if.then149:                                       ; preds = %if.end141
  %20 = load i32, i32* %pcounter150, align 8, !tbaa !18
  %cmp151 = icmp sgt i32 %20, %conv147
  br i1 %cmp151, label %if.then153, label %if.end156

if.then153:                                       ; preds = %if.then149
  store i32 4096, i32* %res, align 4, !tbaa !4
  br label %if.then282

if.end156:                                        ; preds = %if.then149, %if.end141
  %counter.0 = phi i32 [ %conv147, %if.end141 ], [ %20, %if.then149 ]
  %call159 = call fastcc i32 @generate_p(%struct.bignum_ctx* noundef nonnull %call59, %struct.evp_md_st* noundef nonnull %call19, i32 noundef %counter.0, i32 noundef %conv144, i8* noundef nonnull %1, i64 noundef %shr, %struct.bignum_st* noundef %call66, %struct.bignum_st* noundef %call67, i32 noundef %div.tr, %struct.bn_gencb_st* noundef %cb, i32* noundef nonnull %pcounter, i32* noundef nonnull %res) #6
  %cmp160 = icmp sgt i32 %call159, 0
  br i1 %cmp160, label %for.end, label %if.end163

if.end163:                                        ; preds = %if.end156
  %cmp164 = icmp eq i32 %call159, -1
  br i1 %cmp164, label %if.then282, label %for.cond

for.end:                                          ; preds = %if.end156
  %call168 = call i32 @BN_GENCB_call(%struct.bn_gencb_st* noundef %cb, i32 noundef 2, i32 noundef 1) #7
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %if.then282, label %if.end171

if.end171:                                        ; preds = %for.end
  br i1 %cmp, label %if.then173, label %if.end184

if.then173:                                       ; preds = %if.end171
  %21 = load i32, i32* %pcounter, align 4, !tbaa !4
  %cmp174.not = icmp eq i32 %21, %counter.0
  br i1 %cmp174.not, label %if.end177, label %if.then176

if.then176:                                       ; preds = %if.then173
  store i32 65536, i32* %res, align 4, !tbaa !4
  br label %if.then282

if.end177:                                        ; preds = %if.then173
  %22 = load %struct.bignum_st*, %struct.bignum_st** %p115, align 8, !tbaa !16
  %call179 = call i32 @BN_cmp(%struct.bignum_st* noundef %call67, %struct.bignum_st* noundef %22) #7
  %cmp180.not = icmp eq i32 %call179, 0
  br i1 %cmp180.not, label %if.end184, label %if.then182

if.then182:                                       ; preds = %if.end177
  store i32 8192, i32* %res, align 4, !tbaa !4
  br label %if.then282

if.end184:                                        ; preds = %if.end177, %if.end171
  %and185 = and i32 %cond, 3
  %cmp186 = icmp eq i32 %and185, 1
  br i1 %cmp186, label %pass, label %g_only

g_only:                                           ; preds = %if.end184, %if.then122
  %p.0 = phi %struct.bignum_st* [ %17, %if.then122 ], [ %call67, %if.end184 ]
  %q.0 = phi %struct.bignum_st* [ %18, %if.then122 ], [ %call66, %if.end184 ]
  %call190 = call %struct.bn_mont_ctx_st* @BN_MONT_CTX_new() #7
  %cmp191 = icmp eq %struct.bn_mont_ctx_st* %call190, null
  br i1 %cmp191, label %if.then282, label %if.end194

if.end194:                                        ; preds = %g_only
  %call195 = call i32 @BN_MONT_CTX_set(%struct.bn_mont_ctx_st* noundef nonnull %call190, %struct.bignum_st* noundef %p.0, %struct.bignum_ctx* noundef nonnull %call59) #7
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %if.then282, label %if.end198

if.end198:                                        ; preds = %if.end194
  br i1 %cmp, label %if.else214, label %if.then200

if.then200:                                       ; preds = %if.end198
  %call201 = call %struct.bignum_st* @BN_value_one() #7
  %call202 = call i32 @BN_sub(%struct.bignum_st* noundef nonnull %call69, %struct.bignum_st* noundef %p.0, %struct.bignum_st* noundef %call201) #7
  %tobool203.not = icmp eq i32 %call202, 0
  br i1 %tobool203.not, label %if.then282, label %if.end205

if.end205:                                        ; preds = %if.then200
  %call206 = call i32 @BN_div(%struct.bignum_st* noundef %call64, %struct.bignum_st* noundef null, %struct.bignum_st* noundef nonnull %call69, %struct.bignum_st* noundef %q.0, %struct.bignum_ctx* noundef nonnull %call59) #7
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %if.then282, label %if.end209

if.end209:                                        ; preds = %if.end205
  %call210 = call fastcc i32 @generate_unverifiable_g(%struct.bignum_ctx* noundef nonnull %call59, %struct.bn_mont_ctx_st* noundef nonnull %call190, %struct.bignum_st* noundef %call65, %struct.bignum_st* noundef %call68, %struct.bignum_st* noundef %p.0, %struct.bignum_st* noundef %call64, %struct.bignum_st* noundef nonnull %call69, i32* noundef nonnull %hret) #6
  %tobool211.not = icmp eq i32 %call210, 0
  br i1 %tobool211.not, label %if.then282, label %if.end224.thread

if.else214:                                       ; preds = %if.end198
  %and215 = and i32 %cond, 2
  %cmp216.not = icmp eq i32 %and215, 0
  br i1 %cmp216.not, label %if.end224, label %land.lhs.true218

land.lhs.true218:                                 ; preds = %if.else214
  %g219 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 2
  %23 = load %struct.bignum_st*, %struct.bignum_st** %g219, align 8, !tbaa !19
  %call220 = call i32 @ossl_ffc_params_validate_unverifiable_g(%struct.bignum_ctx* noundef nonnull %call59, %struct.bn_mont_ctx_st* noundef nonnull %call190, %struct.bignum_st* noundef %p.0, %struct.bignum_st* noundef %q.0, %struct.bignum_st* noundef %23, %struct.bignum_st* noundef %call68, i32* noundef nonnull %res) #7
  %tobool221.not = icmp eq i32 %call220, 0
  br i1 %tobool221.not, label %if.then282, label %if.end224

if.end224:                                        ; preds = %if.else214, %land.lhs.true218
  %call225 = call i32 @BN_GENCB_call(%struct.bn_gencb_st* noundef %cb, i32 noundef 3, i32 noundef 1) #7
  %tobool226.not = icmp eq i32 %call225, 0
  br i1 %tobool226.not, label %if.then282, label %pass

if.end224.thread:                                 ; preds = %if.end209
  %call225442 = call i32 @BN_GENCB_call(%struct.bn_gencb_st* noundef %cb, i32 noundef 3, i32 noundef 1) #7
  %tobool226.not443 = icmp eq i32 %call225442, 0
  br i1 %tobool226.not443, label %if.then282, label %if.then230

if.then230:                                       ; preds = %if.end224.thread
  %24 = load %struct.bignum_st*, %struct.bignum_st** %p115, align 8, !tbaa !16
  %cmp232.not = icmp eq %struct.bignum_st* %p.0, %24
  br i1 %cmp232.not, label %if.end238, label %if.then234

if.then234:                                       ; preds = %if.then230
  call void @BN_free(%struct.bignum_st* noundef %24) #7
  %call236 = call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %p.0) #7
  store %struct.bignum_st* %call236, %struct.bignum_st** %p115, align 8, !tbaa !16
  br label %if.end238

if.end238:                                        ; preds = %if.then234, %if.then230
  %q239 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 1
  %25 = load %struct.bignum_st*, %struct.bignum_st** %q239, align 8, !tbaa !17
  %cmp240.not = icmp eq %struct.bignum_st* %q.0, %25
  br i1 %cmp240.not, label %if.end246, label %if.then242

if.then242:                                       ; preds = %if.end238
  call void @BN_free(%struct.bignum_st* noundef %25) #7
  %call244 = call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %q.0) #7
  store %struct.bignum_st* %call244, %struct.bignum_st** %q239, align 8, !tbaa !17
  br label %if.end246

if.end246:                                        ; preds = %if.then242, %if.end238
  %g247 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 2
  %26 = load %struct.bignum_st*, %struct.bignum_st** %g247, align 8, !tbaa !19
  %cmp248.not = icmp eq %struct.bignum_st* %call65, %26
  br i1 %cmp248.not, label %if.end254, label %if.then250

if.then250:                                       ; preds = %if.end246
  call void @BN_free(%struct.bignum_st* noundef %26) #7
  %call252 = call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %call65) #7
  store %struct.bignum_st* %call252, %struct.bignum_st** %g247, align 8, !tbaa !19
  br label %if.end254

if.end254:                                        ; preds = %if.then250, %if.end246
  %27 = phi %struct.bignum_st* [ %call252, %if.then250 ], [ %call65, %if.end246 ]
  %28 = load %struct.bignum_st*, %struct.bignum_st** %p115, align 8, !tbaa !16
  %cmp256 = icmp eq %struct.bignum_st* %28, null
  br i1 %cmp256, label %if.then282, label %lor.lhs.false258

lor.lhs.false258:                                 ; preds = %if.end254
  %29 = load %struct.bignum_st*, %struct.bignum_st** %q239, align 8, !tbaa !17
  %cmp260 = icmp eq %struct.bignum_st* %29, null
  %cmp264 = icmp eq %struct.bignum_st* %27, null
  %or.cond464 = select i1 %cmp260, i1 true, i1 %cmp264
  br i1 %or.cond464, label %if.then282, label %if.end267

if.end267:                                        ; preds = %lor.lhs.false258
  %30 = load i32, i32* %pcounter, align 4, !tbaa !4
  %call269 = call i32 @ossl_ffc_params_set_validate_params(%struct.ffc_params_st* noundef nonnull %params, i8* noundef nonnull %0, i64 noundef %shr, i32 noundef %30) #7
  %tobool270.not = icmp eq i32 %call269, 0
  br i1 %tobool270.not, label %if.then282, label %if.end272

if.end272:                                        ; preds = %if.end267
  %31 = load i32, i32* %hret, align 4, !tbaa !4
  %h = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 9
  store i32 %31, i32* %h, align 4, !tbaa !21
  br label %pass

pass:                                             ; preds = %if.end224, %if.end272, %if.end184
  %mont.0 = phi %struct.bn_mont_ctx_st* [ %call190, %if.end272 ], [ null, %if.end184 ], [ %call190, %if.end224 ]
  %and274 = and i32 %cond, 2
  %cmp275.not = icmp eq i32 %and274, 0
  %. = select i1 %cmp275.not, i32 1, i32 2
  br label %if.then282

if.then282:                                       ; preds = %for.cond, %if.end133, %if.end137, %if.end163, %if.then153, %if.then176, %if.then182, %for.end, %g_only, %if.end194, %if.then200, %if.end205, %if.end209, %land.lhs.true218, %if.end224, %lor.lhs.false258, %if.end254, %if.end267, %pass, %if.end224.thread, %if.end73, %if.then90, %if.then111, %if.then101, %if.end63
  %ok.0463 = phi i32 [ 0, %if.end63 ], [ 0, %if.then101 ], [ 0, %if.then111 ], [ 0, %if.then90 ], [ 0, %if.end73 ], [ 0, %g_only ], [ 0, %if.end254 ], [ 0, %lor.lhs.false258 ], [ 0, %if.end267 ], [ 0, %if.end224 ], [ 0, %land.lhs.true218 ], [ 0, %if.end209 ], [ 0, %if.end205 ], [ 0, %if.then200 ], [ 0, %if.end194 ], [ 0, %if.then153 ], [ 0, %if.then176 ], [ 0, %if.then182 ], [ 0, %for.end ], [ %., %pass ], [ 0, %if.end224.thread ], [ 0, %if.end163 ], [ 0, %if.end137 ], [ 0, %if.end133 ], [ 0, %for.cond ]
  %mont.1460 = phi %struct.bn_mont_ctx_st* [ null, %if.end63 ], [ null, %if.then101 ], [ null, %if.then111 ], [ null, %if.then90 ], [ null, %if.end73 ], [ null, %g_only ], [ %call190, %if.end254 ], [ %call190, %lor.lhs.false258 ], [ %call190, %if.end267 ], [ %call190, %if.end224 ], [ %call190, %land.lhs.true218 ], [ %call190, %if.end209 ], [ %call190, %if.end205 ], [ %call190, %if.then200 ], [ %call190, %if.end194 ], [ null, %if.then153 ], [ null, %if.then176 ], [ null, %if.then182 ], [ null, %for.end ], [ %mont.0, %pass ], [ %call190, %if.end224.thread ], [ null, %if.end163 ], [ null, %if.end137 ], [ null, %if.end133 ], [ null, %for.cond ]
  call void @BN_CTX_end(%struct.bignum_ctx* noundef nonnull %call59) #7
  br label %if.end283

if.end283:                                        ; preds = %if.then16, %if.end58, %if.then51, %if.then43, %if.then34, %if.end20, %if.then282
  %ok.0452 = phi i32 [ %ok.0463, %if.then282 ], [ 0, %if.end20 ], [ 0, %if.then34 ], [ 0, %if.then43 ], [ 0, %if.then51 ], [ 0, %if.end58 ], [ 0, %if.then16 ]
  %ctx.0451 = phi %struct.bignum_ctx* [ %call59, %if.then282 ], [ null, %if.end20 ], [ null, %if.then34 ], [ null, %if.then43 ], [ null, %if.then51 ], [ null, %if.end58 ], [ null, %if.then16 ]
  %md.1450 = phi %struct.evp_md_st* [ %call19, %if.then282 ], [ null, %if.end20 ], [ %call19, %if.then34 ], [ %call19, %if.then43 ], [ %call19, %if.then51 ], [ %call19, %if.end58 ], [ null, %if.then16 ]
  %mont.1449 = phi %struct.bn_mont_ctx_st* [ %mont.1460, %if.then282 ], [ null, %if.end20 ], [ null, %if.then34 ], [ null, %if.then43 ], [ null, %if.then51 ], [ null, %if.end58 ], [ null, %if.then16 ]
  call void @BN_CTX_free(%struct.bignum_ctx* noundef %ctx.0451) #7
  call void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef %mont.1449) #7
  call void @EVP_MD_free(%struct.evp_md_st* noundef %md.1450) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #5
  ret i32 %ok.0452
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @generate_q_fips186_2(%struct.bignum_ctx* noundef %ctx, %struct.bignum_st* noundef %q, %struct.evp_md_st* noundef %evpmd, i8* noundef %buf, i8* noundef %seed, i64 noundef %qsize, i32 noundef %generate_seed, i32* nocapture noundef %retm, %struct.bn_gencb_st* noundef %cb) unnamed_addr #0 {
entry:
  %buf2 = alloca [64 x i8], align 16
  %md = alloca [64 x i8], align 16
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %buf2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #5
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %md, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #5
  %2 = load i32, i32* %retm, align 4, !tbaa !4
  %call = tail call %struct.ossl_lib_ctx_st* @ossl_bn_get_libctx(%struct.bignum_ctx* noundef %ctx) #7
  %conv = trunc i64 %qsize to i32
  %cmp313 = icmp sgt i32 %conv, 0
  %sub47 = add i64 %qsize, -1
  %arrayidx48 = getelementptr inbounds [64 x i8], [64 x i8]* %md, i64 0, i64 %sub47
  %3 = and i64 %qsize, 4294967295
  %min.iters.check = icmp ult i64 %3, 8
  %min.iters.check10 = icmp ult i64 %3, 32
  %n.mod.vf = and i64 %qsize, 31
  %n.vec = sub nsw i64 %3, %n.mod.vf
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  %min.epilog.iters.check = icmp ult i64 %n.mod.vf, 8
  %n.mod.vf14 = and i64 %qsize, 7
  %n.vec15 = sub nsw i64 %3, %n.mod.vf14
  %cmp.n16 = icmp eq i64 %n.mod.vf14, 0
  br label %for.cond

for.cond:                                         ; preds = %if.end62, %entry
  %m.0 = phi i32 [ %2, %entry ], [ %inc, %if.end62 ]
  %generate_seed.addr.0 = phi i32 [ %generate_seed, %entry ], [ 1, %if.end62 ]
  %inc = add nsw i32 %m.0, 1
  %call1 = call i32 @BN_GENCB_call(%struct.bn_gencb_st* noundef %cb, i32 noundef 0, i32 noundef %m.0) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %for.cond
  %tobool2.not = icmp eq i32 %generate_seed.addr.0, 0
  br i1 %tobool2.not, label %if.end5, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call3 = call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef %seed, i64 noundef %qsize, i32 noundef 0) #7
  %cmp = icmp slt i32 %call3, 1
  br i1 %cmp, label %err, label %if.end5

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %call6 = call i8* @memcpy(i8* noundef %buf, i8* noundef %seed, i64 noundef %qsize) #7
  %call7 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef %seed, i64 noundef %qsize) #7
  br label %for.cond8

for.cond8:                                        ; preds = %for.body, %if.end5
  %indvars.iv = phi i64 [ %4, %for.body ], [ %3, %if.end5 ]
  %4 = add nsw i64 %indvars.iv, -1
  %5 = trunc i64 %indvars.iv to i32
  %cmp9 = icmp sgt i32 %5, 0
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond8
  %arrayidx = getelementptr inbounds i8, i8* %buf, i64 %4
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !22
  %inc11 = add i8 %6, 1
  store i8 %inc11, i8* %arrayidx, align 1, !tbaa !22
  %cmp15.not = icmp eq i8 %inc11, 0
  br i1 %cmp15.not, label %for.cond8, label %for.end, !llvm.loop !28

for.end:                                          ; preds = %for.body, %for.cond8
  %call20 = call i32 @EVP_Digest(i8* noundef %seed, i64 noundef %qsize, i8* noundef nonnull %1, i32* noundef null, %struct.evp_md_st* noundef %evpmd, %struct.engine_st* noundef null) #7
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %if.end23

if.end23:                                         ; preds = %for.end
  %call25 = call i32 @EVP_Digest(i8* noundef %buf, i64 noundef %qsize, i8* noundef nonnull %0, i32* noundef null, %struct.evp_md_st* noundef %evpmd, %struct.engine_st* noundef null) #7
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %err, label %for.cond29.preheader

for.cond29.preheader:                             ; preds = %if.end23
  br i1 %cmp313, label %iter.check, label %for.end43

iter.check:                                       ; preds = %for.cond29.preheader
  br i1 %min.iters.check, label %for.body33.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ]
  %7 = getelementptr inbounds [64 x i8], [64 x i8]* %buf2, i64 0, i64 %index
  %8 = bitcast i8* %7 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %8, align 16, !tbaa !22
  %9 = getelementptr inbounds i8, i8* %7, i64 16
  %10 = bitcast i8* %9 to <16 x i8>*
  %wide.load11 = load <16 x i8>, <16 x i8>* %10, align 16, !tbaa !22
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %md, i64 0, i64 %index
  %12 = bitcast i8* %11 to <16 x i8>*
  %wide.load12 = load <16 x i8>, <16 x i8>* %12, align 16, !tbaa !22
  %13 = getelementptr inbounds i8, i8* %11, i64 16
  %14 = bitcast i8* %13 to <16 x i8>*
  %wide.load13 = load <16 x i8>, <16 x i8>* %14, align 16, !tbaa !22
  %15 = xor <16 x i8> %wide.load12, %wide.load
  %16 = xor <16 x i8> %wide.load13, %wide.load11
  %17 = bitcast i8* %11 to <16 x i8>*
  store <16 x i8> %15, <16 x i8>* %17, align 16, !tbaa !22
  %18 = bitcast i8* %13 to <16 x i8>*
  store <16 x i8> %16, <16 x i8>* %18, align 16, !tbaa !22
  %index.next = add nuw i64 %index, 32
  %19 = icmp eq i64 %index.next, %n.vec
  br i1 %19, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.end43, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %for.body33.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index17 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next20, %vec.epilog.vector.body ]
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %buf2, i64 0, i64 %index17
  %21 = bitcast i8* %20 to <8 x i8>*
  %wide.load18 = load <8 x i8>, <8 x i8>* %21, align 1, !tbaa !22
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %md, i64 0, i64 %index17
  %23 = bitcast i8* %22 to <8 x i8>*
  %wide.load19 = load <8 x i8>, <8 x i8>* %23, align 1, !tbaa !22
  %24 = xor <8 x i8> %wide.load19, %wide.load18
  %25 = bitcast i8* %22 to <8 x i8>*
  store <8 x i8> %24, <8 x i8>* %25, align 1, !tbaa !22
  %index.next20 = add nuw i64 %index17, 8
  %26 = icmp eq i64 %index.next20, %n.vec15
  br i1 %26, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !31

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n16, label %for.end43, label %for.body33.preheader

for.body33.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv7.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ]
  br label %for.body33

for.body33:                                       ; preds = %for.body33.preheader, %for.body33
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %for.body33 ], [ %indvars.iv7.ph, %for.body33.preheader ]
  %arrayidx35 = getelementptr inbounds [64 x i8], [64 x i8]* %buf2, i64 0, i64 %indvars.iv7
  %27 = load i8, i8* %arrayidx35, align 1, !tbaa !22
  %arrayidx38 = getelementptr inbounds [64 x i8], [64 x i8]* %md, i64 0, i64 %indvars.iv7
  %28 = load i8, i8* %arrayidx38, align 1, !tbaa !22
  %xor1 = xor i8 %28, %27
  store i8 %xor1, i8* %arrayidx38, align 1, !tbaa !22
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next8, %3
  br i1 %exitcond.not, label %for.end43, label %for.body33, !llvm.loop !33

for.end43:                                        ; preds = %for.body33, %middle.block, %vec.epilog.middle.block, %for.cond29.preheader
  %29 = load i8, i8* %1, align 16, !tbaa !22
  %30 = or i8 %29, -128
  store i8 %30, i8* %1, align 16, !tbaa !22
  %31 = load i8, i8* %arrayidx48, align 1, !tbaa !22
  %32 = or i8 %31, 1
  store i8 %32, i8* %arrayidx48, align 1, !tbaa !22
  %call54 = call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %1, i32 noundef %conv, %struct.bignum_st* noundef %q) #7
  %tobool55.not = icmp eq %struct.bignum_st* %call54, null
  br i1 %tobool55.not, label %err, label %if.end57

if.end57:                                         ; preds = %for.end43
  %call58 = call i32 @BN_check_prime(%struct.bignum_st* noundef %q, %struct.bignum_ctx* noundef %ctx, %struct.bn_gencb_st* noundef %cb) #7
  %cmp59 = icmp sgt i32 %call58, 0
  br i1 %cmp59, label %err, label %if.end62

if.end62:                                         ; preds = %if.end57
  %cmp63.not = icmp eq i32 %call58, 0
  br i1 %cmp63.not, label %for.cond, label %err

err:                                              ; preds = %if.end57, %if.end62, %for.end43, %if.end23, %for.end, %land.lhs.true, %for.cond
  %ret.0 = phi i32 [ 0, %land.lhs.true ], [ 0, %if.end62 ], [ 0, %for.end43 ], [ 0, %if.end23 ], [ 0, %for.end ], [ 0, %for.cond ], [ 1, %if.end57 ]
  store i32 %inc, i32* %retm, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #5
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ffc_params_FIPS186_4_generate(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.ffc_params_st* noundef %params, i32 noundef %type, i64 noundef %L, i64 noundef %N, i32* noundef %res, %struct.bn_gencb_st* noundef %cb) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_ffc_params_FIPS186_4_gen_verify(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.ffc_params_st* noundef %params, i32 noundef 1, i32 noundef %type, i64 noundef %L, i64 noundef %N, i32* noundef %res, %struct.bn_gencb_st* noundef %cb) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ffc_params_FIPS186_2_generate(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.ffc_params_st* noundef %params, i32 noundef %type, i64 noundef %L, i64 noundef %N, i32* noundef %res, %struct.bn_gencb_st* noundef %cb) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_ffc_params_FIPS186_2_gen_verify(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.ffc_params_st* noundef %params, i32 noundef 1, i32 undef, i64 noundef %L, i64 noundef %N, i32* noundef %res, %struct.bn_gencb_st* noundef %cb) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call void @ossl_ffc_params_enable_flags(%struct.ffc_params_st* noundef %params, i32 noundef 4, i32 noundef 1) #7
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare void @ossl_ffc_params_enable_flags(%struct.ffc_params_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare %struct.ossl_lib_ctx_st* @ossl_bn_get_libctx(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_Digest(i8* noundef, i64 noundef, i8* noundef, i32* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_check_prime(%struct.bignum_st* noundef, %struct.bignum_ctx* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #2

declare void @BN_zero_ex(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_add(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_mask_bits(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_lshift1(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

declare i32 @BN_mod_exp_mont(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef, %struct.bn_mont_ctx_st* noundef) local_unnamed_addr #2

declare i32 @BN_set_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BN_add_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 64}
!9 = !{!"ffc_params_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !11, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !10, i64 72, !10, i64 80}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!9, !10, i64 72}
!13 = !{!9, !10, i64 80}
!14 = !{!9, !11, i64 40}
!15 = !{!9, !10, i64 32}
!16 = !{!9, !10, i64 0}
!17 = !{!9, !10, i64 8}
!18 = !{!9, !5, i64 48}
!19 = !{!9, !10, i64 16}
!20 = !{!9, !5, i64 56}
!21 = !{!9, !5, i64 60}
!22 = !{!6, !6, i64 0}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = distinct !{!25, !24}
!26 = distinct !{!26, !24}
!27 = distinct !{!27, !24}
!28 = distinct !{!28, !24}
!29 = distinct !{!29, !24, !30}
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = distinct !{!31, !24, !30, !32}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = distinct !{!33, !24, !32, !30}
