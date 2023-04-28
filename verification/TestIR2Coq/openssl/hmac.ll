; ModuleID = 'crypto/hmac/hmac.c'
source_filename = "crypto/hmac/hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hmac_ctx_st = type { %struct.evp_md_st*, %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st* }
%struct.evp_md_ctx_st = type opaque
%struct.evp_md_st = type opaque
%struct.engine_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"crypto/hmac/hmac.c\00", align 1
@HMAC.static_md = internal global [64 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [5 x i8] c"HMAC\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @HMAC_Init_ex(%struct.hmac_ctx_st* nocapture noundef %ctx, i8* noundef %key, i32 noundef %len, %struct.evp_md_st* noundef %md, %struct.engine_st* noundef %impl) local_unnamed_addr #0 {
entry:
  %pad = alloca [144 x i8], align 16
  %keytmp_length = alloca i32, align 4
  %keytmp = alloca [144 x i8], align 16
  %0 = getelementptr inbounds [144 x i8], [144 x i8]* %pad, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %0) #5
  %1 = bitcast i32* %keytmp_length to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #5
  %2 = getelementptr inbounds [144 x i8], [144 x i8]* %keytmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %2) #5
  %cmp.not = icmp eq %struct.evp_md_st* %md, null
  %md9 = getelementptr inbounds %struct.hmac_ctx_st, %struct.hmac_ctx_st* %ctx, i64 0, i32 0
  %3 = load %struct.evp_md_st*, %struct.evp_md_st** %md9, align 8, !tbaa !4
  br i1 %cmp.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %cmp2.not = icmp eq %struct.evp_md_st* %3, %md
  br i1 %cmp2.not, label %if.then7, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %cmp4 = icmp eq i8* %key, null
  %cmp5 = icmp slt i32 %len, 0
  %or.cond = or i1 %cmp4, %cmp5
  br i1 %or.cond, label %cleanup, label %if.then7

if.then7:                                         ; preds = %land.lhs.true, %land.lhs.true3
  store %struct.evp_md_st* %md, %struct.evp_md_st** %md9, align 8, !tbaa !4
  br label %if.end15

if.else:                                          ; preds = %entry
  %cmp10.not = icmp eq %struct.evp_md_st* %3, null
  br i1 %cmp10.not, label %cleanup, label %if.end15

if.end15:                                         ; preds = %if.else, %if.then7
  %md.addr.0 = phi %struct.evp_md_st* [ %md, %if.then7 ], [ %3, %if.else ]
  %call = tail call i64 @EVP_MD_get_flags(%struct.evp_md_st* noundef nonnull %md.addr.0) #6
  %and = and i64 %call, 2
  %cmp16.not = icmp eq i64 %and, 0
  br i1 %cmp16.not, label %if.end18, label %cleanup

if.end18:                                         ; preds = %if.end15
  %cmp19.not = icmp eq i8* %key, null
  br i1 %cmp19.not, label %err, label %if.then20

if.then20:                                        ; preds = %if.end18
  %call21 = tail call i32 @EVP_MD_get_block_size(%struct.evp_md_st* noundef nonnull %md.addr.0) #6
  %4 = icmp ugt i32 %call21, 144
  br i1 %4, label %cleanup, label %if.end30

if.end30:                                         ; preds = %if.then20
  %cmp31 = icmp slt i32 %call21, %len
  br i1 %cmp31, label %if.then33, label %if.else46

if.then33:                                        ; preds = %if.end30
  %md_ctx = getelementptr inbounds %struct.hmac_ctx_st, %struct.hmac_ctx_st* %ctx, i64 0, i32 1
  %5 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %md_ctx, align 8, !tbaa !9
  %call34 = tail call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef %5, %struct.evp_md_st* noundef nonnull %md.addr.0, %struct.engine_st* noundef %impl) #6
  %tobool.not = icmp eq i32 %call34, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %if.then33
  %6 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %md_ctx, align 8, !tbaa !9
  %conv37 = sext i32 %len to i64
  %call38 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %6, i8* noundef nonnull %key, i64 noundef %conv37) #6
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %cleanup, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %lor.lhs.false35
  %7 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %md_ctx, align 8, !tbaa !9
  %call42 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef %7, i8* noundef nonnull %2, i32* noundef nonnull %keytmp_length) #6
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %cleanup, label %if.end57thread-pre-split

if.else46:                                        ; preds = %if.end30
  %cmp47 = icmp slt i32 %len, 0
  br i1 %cmp47, label %cleanup, label %if.end53

if.end53:                                         ; preds = %if.else46
  %conv55179 = zext i32 %len to i64
  %call56 = call i8* @memcpy(i8* noundef nonnull %2, i8* noundef nonnull %key, i64 noundef %conv55179) #6
  store i32 %len, i32* %keytmp_length, align 4, !tbaa !10
  br label %if.end57

if.end57thread-pre-split:                         ; preds = %lor.lhs.false40
  %.pr = load i32, i32* %keytmp_length, align 4, !tbaa !10
  br label %if.end57

if.end57:                                         ; preds = %if.end57thread-pre-split, %if.end53
  %8 = phi i32 [ %.pr, %if.end57thread-pre-split ], [ %len, %if.end53 ]
  %cmp58.not = icmp eq i32 %8, 144
  br i1 %cmp58.not, label %vector.body, label %if.then60

if.then60:                                        ; preds = %if.end57
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds [144 x i8], [144 x i8]* %keytmp, i64 0, i64 %idxprom
  %sub = sub i32 144, %8
  %conv61 = zext i32 %sub to i64
  %call62 = call i8* @memset(i8* noundef nonnull %arrayidx, i32 noundef 0, i64 noundef %conv61) #6
  br label %vector.body

vector.body:                                      ; preds = %if.end57, %if.then60
  %9 = bitcast [144 x i8]* %keytmp to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %9, align 16, !tbaa !12
  %10 = getelementptr inbounds [144 x i8], [144 x i8]* %keytmp, i64 0, i64 16
  %11 = bitcast i8* %10 to <16 x i8>*
  %wide.load187 = load <16 x i8>, <16 x i8>* %11, align 16, !tbaa !12
  %12 = xor <16 x i8> %wide.load, <i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54>
  %13 = xor <16 x i8> %wide.load187, <i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54>
  %14 = bitcast [144 x i8]* %pad to <16 x i8>*
  store <16 x i8> %12, <16 x i8>* %14, align 16, !tbaa !12
  %15 = getelementptr inbounds [144 x i8], [144 x i8]* %pad, i64 0, i64 16
  %16 = bitcast i8* %15 to <16 x i8>*
  store <16 x i8> %13, <16 x i8>* %16, align 16, !tbaa !12
  %17 = getelementptr inbounds [144 x i8], [144 x i8]* %keytmp, i64 0, i64 32
  %18 = bitcast i8* %17 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %18, align 16, !tbaa !12
  %19 = getelementptr inbounds [144 x i8], [144 x i8]* %keytmp, i64 0, i64 48
  %20 = bitcast i8* %19 to <16 x i8>*
  %wide.load187.1 = load <16 x i8>, <16 x i8>* %20, align 16, !tbaa !12
  %21 = xor <16 x i8> %wide.load.1, <i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54>
  %22 = xor <16 x i8> %wide.load187.1, <i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54>
  %23 = getelementptr inbounds [144 x i8], [144 x i8]* %pad, i64 0, i64 32
  %24 = bitcast i8* %23 to <16 x i8>*
  store <16 x i8> %21, <16 x i8>* %24, align 16, !tbaa !12
  %25 = getelementptr inbounds [144 x i8], [144 x i8]* %pad, i64 0, i64 48
  %26 = bitcast i8* %25 to <16 x i8>*
  store <16 x i8> %22, <16 x i8>* %26, align 16, !tbaa !12
  %27 = getelementptr inbounds [144 x i8], [144 x i8]* %keytmp, i64 0, i64 64
  %28 = bitcast i8* %27 to <16 x i8>*
  %wide.load.2 = load <16 x i8>, <16 x i8>* %28, align 16, !tbaa !12
  %29 = getelementptr inbounds [144 x i8], [144 x i8]* %keytmp, i64 0, i64 80
  %30 = bitcast i8* %29 to <16 x i8>*
  %wide.load187.2 = load <16 x i8>, <16 x i8>* %30, align 16, !tbaa !12
  %31 = xor <16 x i8> %wide.load.2, <i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54>
  %32 = xor <16 x i8> %wide.load187.2, <i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54>
  %33 = getelementptr inbounds [144 x i8], [144 x i8]* %pad, i64 0, i64 64
  %34 = bitcast i8* %33 to <16 x i8>*
  store <16 x i8> %31, <16 x i8>* %34, align 16, !tbaa !12
  %35 = getelementptr inbounds [144 x i8], [144 x i8]* %pad, i64 0, i64 80
  %36 = bitcast i8* %35 to <16 x i8>*
  store <16 x i8> %32, <16 x i8>* %36, align 16, !tbaa !12
  %37 = getelementptr inbounds [144 x i8], [144 x i8]* %keytmp, i64 0, i64 96
  %38 = bitcast i8* %37 to <16 x i8>*
  %wide.load.3 = load <16 x i8>, <16 x i8>* %38, align 16, !tbaa !12
  %39 = getelementptr inbounds [144 x i8], [144 x i8]* %keytmp, i64 0, i64 112
  %40 = bitcast i8* %39 to <16 x i8>*
  %wide.load187.3 = load <16 x i8>, <16 x i8>* %40, align 16, !tbaa !12
  %41 = xor <16 x i8> %wide.load.3, <i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54>
  %42 = xor <16 x i8> %wide.load187.3, <i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54>
  %43 = getelementptr inbounds [144 x i8], [144 x i8]* %pad, i64 0, i64 96
  %44 = bitcast i8* %43 to <16 x i8>*
  store <16 x i8> %41, <16 x i8>* %44, align 16, !tbaa !12
  %45 = getelementptr inbounds [144 x i8], [144 x i8]* %pad, i64 0, i64 112
  %46 = bitcast i8* %45 to <16 x i8>*
  store <16 x i8> %42, <16 x i8>* %46, align 16, !tbaa !12
  %47 = getelementptr inbounds [144 x i8], [144 x i8]* %keytmp, i64 0, i64 128
  %48 = bitcast i8* %47 to <8 x i8>*
  %wide.load190 = load <8 x i8>, <8 x i8>* %48, align 16, !tbaa !12
  %49 = xor <8 x i8> %wide.load190, <i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54>
  %50 = getelementptr inbounds [144 x i8], [144 x i8]* %pad, i64 0, i64 128
  %51 = bitcast i8* %50 to <8 x i8>*
  store <8 x i8> %49, <8 x i8>* %51, align 16, !tbaa !12
  %52 = getelementptr inbounds [144 x i8], [144 x i8]* %keytmp, i64 0, i64 136
  %53 = bitcast i8* %52 to <8 x i8>*
  %wide.load190.1 = load <8 x i8>, <8 x i8>* %53, align 8, !tbaa !12
  %54 = xor <8 x i8> %wide.load190.1, <i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54>
  %55 = getelementptr inbounds [144 x i8], [144 x i8]* %pad, i64 0, i64 136
  %56 = bitcast i8* %55 to <8 x i8>*
  store <8 x i8> %54, <8 x i8>* %56, align 8, !tbaa !12
  %i_ctx = getelementptr inbounds %struct.hmac_ctx_st, %struct.hmac_ctx_st* %ctx, i64 0, i32 2
  %57 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %i_ctx, align 8, !tbaa !13
  %call72 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef %57, %struct.evp_md_st* noundef nonnull %md.addr.0, %struct.engine_st* noundef %impl) #6
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.then116, label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %vector.body
  %58 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %i_ctx, align 8, !tbaa !13
  %call77 = call i32 @EVP_MD_get_block_size(%struct.evp_md_st* noundef nonnull %md.addr.0) #6
  %conv78 = sext i32 %call77 to i64
  %call79 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %58, i8* noundef nonnull %0, i64 noundef %conv78) #6
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.then116, label %vector.body193

vector.body193:                                   ; preds = %lor.lhs.false74
  %59 = bitcast [144 x i8]* %keytmp to <16 x i8>*
  %wide.load200 = load <16 x i8>, <16 x i8>* %59, align 16, !tbaa !12
  %60 = getelementptr inbounds [144 x i8], [144 x i8]* %keytmp, i64 0, i64 16
  %61 = bitcast i8* %60 to <16 x i8>*
  %wide.load201 = load <16 x i8>, <16 x i8>* %61, align 16, !tbaa !12
  %62 = xor <16 x i8> %wide.load200, <i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92>
  %63 = xor <16 x i8> %wide.load201, <i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92>
  %64 = bitcast [144 x i8]* %pad to <16 x i8>*
  store <16 x i8> %62, <16 x i8>* %64, align 16, !tbaa !12
  %65 = getelementptr inbounds [144 x i8], [144 x i8]* %pad, i64 0, i64 16
  %66 = bitcast i8* %65 to <16 x i8>*
  store <16 x i8> %63, <16 x i8>* %66, align 16, !tbaa !12
  %67 = getelementptr inbounds [144 x i8], [144 x i8]* %keytmp, i64 0, i64 32
  %68 = bitcast i8* %67 to <16 x i8>*
  %wide.load200.1 = load <16 x i8>, <16 x i8>* %68, align 16, !tbaa !12
  %69 = getelementptr inbounds [144 x i8], [144 x i8]* %keytmp, i64 0, i64 48
  %70 = bitcast i8* %69 to <16 x i8>*
  %wide.load201.1 = load <16 x i8>, <16 x i8>* %70, align 16, !tbaa !12
  %71 = xor <16 x i8> %wide.load200.1, <i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92>
  %72 = xor <16 x i8> %wide.load201.1, <i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92>
  %73 = getelementptr inbounds [144 x i8], [144 x i8]* %pad, i64 0, i64 32
  %74 = bitcast i8* %73 to <16 x i8>*
  store <16 x i8> %71, <16 x i8>* %74, align 16, !tbaa !12
  %75 = getelementptr inbounds [144 x i8], [144 x i8]* %pad, i64 0, i64 48
  %76 = bitcast i8* %75 to <16 x i8>*
  store <16 x i8> %72, <16 x i8>* %76, align 16, !tbaa !12
  %77 = getelementptr inbounds [144 x i8], [144 x i8]* %keytmp, i64 0, i64 64
  %78 = bitcast i8* %77 to <16 x i8>*
  %wide.load200.2 = load <16 x i8>, <16 x i8>* %78, align 16, !tbaa !12
  %79 = getelementptr inbounds [144 x i8], [144 x i8]* %keytmp, i64 0, i64 80
  %80 = bitcast i8* %79 to <16 x i8>*
  %wide.load201.2 = load <16 x i8>, <16 x i8>* %80, align 16, !tbaa !12
  %81 = xor <16 x i8> %wide.load200.2, <i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92>
  %82 = xor <16 x i8> %wide.load201.2, <i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92>
  %83 = getelementptr inbounds [144 x i8], [144 x i8]* %pad, i64 0, i64 64
  %84 = bitcast i8* %83 to <16 x i8>*
  store <16 x i8> %81, <16 x i8>* %84, align 16, !tbaa !12
  %85 = getelementptr inbounds [144 x i8], [144 x i8]* %pad, i64 0, i64 80
  %86 = bitcast i8* %85 to <16 x i8>*
  store <16 x i8> %82, <16 x i8>* %86, align 16, !tbaa !12
  %87 = getelementptr inbounds [144 x i8], [144 x i8]* %keytmp, i64 0, i64 96
  %88 = bitcast i8* %87 to <16 x i8>*
  %wide.load200.3 = load <16 x i8>, <16 x i8>* %88, align 16, !tbaa !12
  %89 = getelementptr inbounds [144 x i8], [144 x i8]* %keytmp, i64 0, i64 112
  %90 = bitcast i8* %89 to <16 x i8>*
  %wide.load201.3 = load <16 x i8>, <16 x i8>* %90, align 16, !tbaa !12
  %91 = xor <16 x i8> %wide.load200.3, <i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92>
  %92 = xor <16 x i8> %wide.load201.3, <i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92>
  %93 = getelementptr inbounds [144 x i8], [144 x i8]* %pad, i64 0, i64 96
  %94 = bitcast i8* %93 to <16 x i8>*
  store <16 x i8> %91, <16 x i8>* %94, align 16, !tbaa !12
  %95 = getelementptr inbounds [144 x i8], [144 x i8]* %pad, i64 0, i64 112
  %96 = bitcast i8* %95 to <16 x i8>*
  store <16 x i8> %92, <16 x i8>* %96, align 16, !tbaa !12
  %97 = getelementptr inbounds [144 x i8], [144 x i8]* %keytmp, i64 0, i64 128
  %98 = bitcast i8* %97 to <8 x i8>*
  %wide.load212 = load <8 x i8>, <8 x i8>* %98, align 16, !tbaa !12
  %99 = xor <8 x i8> %wide.load212, <i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92>
  %100 = getelementptr inbounds [144 x i8], [144 x i8]* %pad, i64 0, i64 128
  %101 = bitcast i8* %100 to <8 x i8>*
  store <8 x i8> %99, <8 x i8>* %101, align 16, !tbaa !12
  %102 = getelementptr inbounds [144 x i8], [144 x i8]* %keytmp, i64 0, i64 136
  %103 = bitcast i8* %102 to <8 x i8>*
  %wide.load212.1 = load <8 x i8>, <8 x i8>* %103, align 8, !tbaa !12
  %104 = xor <8 x i8> %wide.load212.1, <i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92, i8 92>
  %105 = getelementptr inbounds [144 x i8], [144 x i8]* %pad, i64 0, i64 136
  %106 = bitcast i8* %105 to <8 x i8>*
  store <8 x i8> %104, <8 x i8>* %106, align 8, !tbaa !12
  %o_ctx = getelementptr inbounds %struct.hmac_ctx_st, %struct.hmac_ctx_st* %ctx, i64 0, i32 3
  %107 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %o_ctx, align 8, !tbaa !14
  %call97 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef %107, %struct.evp_md_st* noundef nonnull %md.addr.0, %struct.engine_st* noundef %impl) #6
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.then116, label %lor.lhs.false99

lor.lhs.false99:                                  ; preds = %vector.body193
  %108 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %o_ctx, align 8, !tbaa !14
  %call102 = call i32 @EVP_MD_get_block_size(%struct.evp_md_st* noundef nonnull %md.addr.0) #6
  %conv103 = sext i32 %call102 to i64
  %call104 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %108, i8* noundef nonnull %0, i64 noundef %conv103) #6
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.then116, label %err

err:                                              ; preds = %if.end18, %lor.lhs.false99
  %md_ctx109 = getelementptr inbounds %struct.hmac_ctx_st, %struct.hmac_ctx_st* %ctx, i64 0, i32 1
  %109 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %md_ctx109, align 8, !tbaa !9
  %i_ctx110 = getelementptr inbounds %struct.hmac_ctx_st, %struct.hmac_ctx_st* %ctx, i64 0, i32 2
  %110 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %i_ctx110, align 8, !tbaa !13
  %call111 = call i32 @EVP_MD_CTX_copy_ex(%struct.evp_md_ctx_st* noundef %109, %struct.evp_md_ctx_st* noundef %110) #6
  %tobool112.not = icmp ne i32 %call111, 0
  %spec.select = zext i1 %tobool112.not to i32
  br i1 %cmp19.not, label %cleanup, label %if.then116

if.then116:                                       ; preds = %vector.body, %lor.lhs.false74, %vector.body193, %lor.lhs.false99, %err
  %rv.0178 = phi i32 [ %spec.select, %err ], [ 0, %lor.lhs.false99 ], [ 0, %vector.body193 ], [ 0, %lor.lhs.false74 ], [ 0, %vector.body ]
  call void @OPENSSL_cleanse(i8* noundef nonnull %2, i64 noundef 144) #6
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 144) #6
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then116, %if.else46, %if.then33, %lor.lhs.false35, %lor.lhs.false40, %if.then20, %if.end15, %if.else, %land.lhs.true3
  %retval.0 = phi i32 [ 0, %land.lhs.true3 ], [ 0, %if.else ], [ 0, %if.end15 ], [ 0, %if.then20 ], [ 0, %lor.lhs.false40 ], [ 0, %lor.lhs.false35 ], [ 0, %if.then33 ], [ 0, %if.else46 ], [ %rv.0178, %if.then116 ], [ %spec.select, %err ]
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i64 @EVP_MD_get_flags(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare i32 @EVP_MD_get_block_size(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @EVP_MD_CTX_copy_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @HMAC_Init(%struct.hmac_ctx_st* nocapture noundef %ctx, i8* noundef %key, i32 noundef %len, %struct.evp_md_st* noundef %md) local_unnamed_addr #0 {
entry:
  %tobool = icmp ne i8* %key, null
  %tobool1 = icmp ne %struct.evp_md_st* %md, null
  %or.cond = and i1 %tobool, %tobool1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @HMAC_CTX_reset(%struct.hmac_ctx_st* noundef %ctx) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = tail call i32 @HMAC_Init_ex(%struct.hmac_ctx_st* noundef %ctx, i8* noundef %key, i32 noundef %len, %struct.evp_md_st* noundef %md, %struct.engine_st* noundef null) #7
  ret i32 %call2
}

; Function Attrs: noinline nounwind uwtable
define i32 @HMAC_CTX_reset(%struct.hmac_ctx_st* nocapture noundef %ctx) local_unnamed_addr #0 {
entry:
  tail call fastcc void @hmac_ctx_cleanup(%struct.hmac_ctx_st* noundef %ctx) #7
  %call = tail call fastcc i32 @hmac_ctx_alloc_mds(%struct.hmac_ctx_st* noundef %ctx) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %return

if.then:                                          ; preds = %entry
  tail call fastcc void @hmac_ctx_cleanup(%struct.hmac_ctx_st* noundef %ctx) #7
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @HMAC_Update(%struct.hmac_ctx_st* nocapture noundef readonly %ctx, i8* noundef %data, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %md = getelementptr inbounds %struct.hmac_ctx_st, %struct.hmac_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !4
  %tobool.not = icmp eq %struct.evp_md_st* %0, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %md_ctx = getelementptr inbounds %struct.hmac_ctx_st, %struct.hmac_ctx_st* %ctx, i64 0, i32 1
  %1 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %md_ctx, align 8, !tbaa !9
  %call = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %1, i8* noundef %data, i64 noundef %len) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @HMAC_Final(%struct.hmac_ctx_st* nocapture noundef readonly %ctx, i8* noundef %md, i32* noundef %len) local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %buf = alloca [64 x i8], align 16
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #5
  %md1 = getelementptr inbounds %struct.hmac_ctx_st, %struct.hmac_ctx_st* %ctx, i64 0, i32 0
  %2 = load %struct.evp_md_st*, %struct.evp_md_st** %md1, align 8, !tbaa !4
  %tobool.not = icmp eq %struct.evp_md_st* %2, null
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %md_ctx = getelementptr inbounds %struct.hmac_ctx_st, %struct.hmac_ctx_st* %ctx, i64 0, i32 1
  %3 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %md_ctx, align 8, !tbaa !9
  %call = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef %3, i8* noundef nonnull %1, i32* noundef nonnull %i) #6
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %4 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %md_ctx, align 8, !tbaa !9
  %o_ctx = getelementptr inbounds %struct.hmac_ctx_st, %struct.hmac_ctx_st* %ctx, i64 0, i32 3
  %5 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %o_ctx, align 8, !tbaa !14
  %call6 = call i32 @EVP_MD_CTX_copy_ex(%struct.evp_md_ctx_st* noundef %4, %struct.evp_md_ctx_st* noundef %5) #6
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %err, label %if.end9

if.end9:                                          ; preds = %if.end4
  %6 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %md_ctx, align 8, !tbaa !9
  %7 = load i32, i32* %i, align 4, !tbaa !10
  %conv = zext i32 %7 to i64
  %call12 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %6, i8* noundef nonnull %1, i64 noundef %conv) #6
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %if.end15

if.end15:                                         ; preds = %if.end9
  %8 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %md_ctx, align 8, !tbaa !9
  %call17 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef %8, i8* noundef %md, i32* noundef %len) #6
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %cleanup

err:                                              ; preds = %if.end15, %if.end9, %if.end4, %if.end, %entry
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end15 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i64 @HMAC_size(%struct.hmac_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %md = getelementptr inbounds %struct.hmac_ctx_st, %struct.hmac_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !4
  %call = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %0) #6
  %1 = icmp sgt i32 %call, 0
  %cond = select i1 %1, i32 %call, i32 0
  %conv = zext i32 %cond to i64
  ret i64 %conv
}

declare i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.hmac_ctx_st* @HMAC_CTX_new() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 32, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 147) #6
  %0 = bitcast i8* %call to %struct.hmac_ctx_st*
  %cmp.not = icmp eq i8* %call, null
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @HMAC_CTX_reset(%struct.hmac_ctx_st* noundef nonnull %0) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %cleanup

if.then2:                                         ; preds = %if.then
  tail call void @HMAC_CTX_free(%struct.hmac_ctx_st* noundef nonnull %0) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then, %if.then2
  %retval.0 = phi %struct.hmac_ctx_st* [ null, %if.then2 ], [ %0, %if.then ], [ %0, %entry ]
  ret %struct.hmac_ctx_st* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @HMAC_CTX_free(%struct.hmac_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.hmac_ctx_st* %ctx, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call fastcc void @hmac_ctx_cleanup(%struct.hmac_ctx_st* noundef nonnull %ctx) #7
  %i_ctx = getelementptr inbounds %struct.hmac_ctx_st, %struct.hmac_ctx_st* %ctx, i64 0, i32 2
  %0 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %i_ctx, align 8, !tbaa !13
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %0) #6
  %o_ctx = getelementptr inbounds %struct.hmac_ctx_st, %struct.hmac_ctx_st* %ctx, i64 0, i32 3
  %1 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %o_ctx, align 8, !tbaa !14
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %1) #6
  %md_ctx = getelementptr inbounds %struct.hmac_ctx_st, %struct.hmac_ctx_st* %ctx, i64 0, i32 1
  %2 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %md_ctx, align 8, !tbaa !9
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %2) #6
  %3 = bitcast %struct.hmac_ctx_st* %ctx to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 173) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @hmac_ctx_cleanup(%struct.hmac_ctx_st* nocapture noundef %ctx) unnamed_addr #0 {
entry:
  %i_ctx = getelementptr inbounds %struct.hmac_ctx_st, %struct.hmac_ctx_st* %ctx, i64 0, i32 2
  %0 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %i_ctx, align 8, !tbaa !13
  %call = tail call i32 @EVP_MD_CTX_reset(%struct.evp_md_ctx_st* noundef %0) #6
  %o_ctx = getelementptr inbounds %struct.hmac_ctx_st, %struct.hmac_ctx_st* %ctx, i64 0, i32 3
  %1 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %o_ctx, align 8, !tbaa !14
  %call1 = tail call i32 @EVP_MD_CTX_reset(%struct.evp_md_ctx_st* noundef %1) #6
  %md_ctx = getelementptr inbounds %struct.hmac_ctx_st, %struct.hmac_ctx_st* %ctx, i64 0, i32 1
  %2 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %md_ctx, align 8, !tbaa !9
  %call2 = tail call i32 @EVP_MD_CTX_reset(%struct.evp_md_ctx_st* noundef %2) #6
  %md = getelementptr inbounds %struct.hmac_ctx_st, %struct.hmac_ctx_st* %ctx, i64 0, i32 0
  store %struct.evp_md_st* null, %struct.evp_md_st** %md, align 8, !tbaa !4
  ret void
}

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @hmac_ctx_alloc_mds(%struct.hmac_ctx_st* nocapture noundef %ctx) unnamed_addr #0 {
entry:
  %i_ctx = getelementptr inbounds %struct.hmac_ctx_st, %struct.hmac_ctx_st* %ctx, i64 0, i32 2
  %0 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %i_ctx, align 8, !tbaa !13
  %cmp = icmp eq %struct.evp_md_ctx_st* %0, null
  br i1 %cmp, label %if.end, label %if.end5

if.end:                                           ; preds = %entry
  %call = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #6
  store %struct.evp_md_ctx_st* %call, %struct.evp_md_ctx_st** %i_ctx, align 8, !tbaa !13
  %cmp3 = icmp eq %struct.evp_md_ctx_st* %call, null
  br i1 %cmp3, label %return, label %if.end5

if.end5:                                          ; preds = %entry, %if.end
  %o_ctx = getelementptr inbounds %struct.hmac_ctx_st, %struct.hmac_ctx_st* %ctx, i64 0, i32 3
  %1 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %o_ctx, align 8, !tbaa !14
  %cmp6 = icmp eq %struct.evp_md_ctx_st* %1, null
  br i1 %cmp6, label %if.end10, label %if.end14

if.end10:                                         ; preds = %if.end5
  %call8 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #6
  store %struct.evp_md_ctx_st* %call8, %struct.evp_md_ctx_st** %o_ctx, align 8, !tbaa !14
  %cmp12 = icmp eq %struct.evp_md_ctx_st* %call8, null
  br i1 %cmp12, label %return, label %if.end14

if.end14:                                         ; preds = %if.end5, %if.end10
  %md_ctx = getelementptr inbounds %struct.hmac_ctx_st, %struct.hmac_ctx_st* %ctx, i64 0, i32 1
  %2 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %md_ctx, align 8, !tbaa !9
  %cmp15 = icmp eq %struct.evp_md_ctx_st* %2, null
  br i1 %cmp15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end14
  %call17 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #6
  store %struct.evp_md_ctx_st* %call17, %struct.evp_md_ctx_st** %md_ctx, align 8, !tbaa !9
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end14
  %3 = phi %struct.evp_md_ctx_st* [ %call17, %if.then16 ], [ %2, %if.end14 ]
  %cmp21 = icmp ne %struct.evp_md_ctx_st* %3, null
  %. = zext i1 %cmp21 to i32
  br label %return

return:                                           ; preds = %if.end19, %if.end10, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 0, %if.end10 ], [ %., %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @HMAC_CTX_copy(%struct.hmac_ctx_st* nocapture noundef %dctx, %struct.hmac_ctx_st* nocapture noundef readonly %sctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @hmac_ctx_alloc_mds(%struct.hmac_ctx_st* noundef %dctx) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %i_ctx = getelementptr inbounds %struct.hmac_ctx_st, %struct.hmac_ctx_st* %dctx, i64 0, i32 2
  %0 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %i_ctx, align 8, !tbaa !13
  %i_ctx1 = getelementptr inbounds %struct.hmac_ctx_st, %struct.hmac_ctx_st* %sctx, i64 0, i32 2
  %1 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %i_ctx1, align 8, !tbaa !13
  %call2 = tail call i32 @EVP_MD_CTX_copy_ex(%struct.evp_md_ctx_st* noundef %0, %struct.evp_md_ctx_st* noundef %1) #6
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %o_ctx = getelementptr inbounds %struct.hmac_ctx_st, %struct.hmac_ctx_st* %dctx, i64 0, i32 3
  %2 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %o_ctx, align 8, !tbaa !14
  %o_ctx6 = getelementptr inbounds %struct.hmac_ctx_st, %struct.hmac_ctx_st* %sctx, i64 0, i32 3
  %3 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %o_ctx6, align 8, !tbaa !14
  %call7 = tail call i32 @EVP_MD_CTX_copy_ex(%struct.evp_md_ctx_st* noundef %2, %struct.evp_md_ctx_st* noundef %3) #6
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %if.end10

if.end10:                                         ; preds = %if.end5
  %md_ctx = getelementptr inbounds %struct.hmac_ctx_st, %struct.hmac_ctx_st* %dctx, i64 0, i32 1
  %4 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %md_ctx, align 8, !tbaa !9
  %md_ctx11 = getelementptr inbounds %struct.hmac_ctx_st, %struct.hmac_ctx_st* %sctx, i64 0, i32 1
  %5 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %md_ctx11, align 8, !tbaa !9
  %call12 = tail call i32 @EVP_MD_CTX_copy_ex(%struct.evp_md_ctx_st* noundef %4, %struct.evp_md_ctx_st* noundef %5) #6
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %if.end15

if.end15:                                         ; preds = %if.end10
  %md = getelementptr inbounds %struct.hmac_ctx_st, %struct.hmac_ctx_st* %sctx, i64 0, i32 0
  %6 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !4
  %md16 = getelementptr inbounds %struct.hmac_ctx_st, %struct.hmac_ctx_st* %dctx, i64 0, i32 0
  store %struct.evp_md_st* %6, %struct.evp_md_st** %md16, align 8, !tbaa !4
  br label %return

err:                                              ; preds = %if.end10, %if.end5, %if.end, %entry
  tail call fastcc void @hmac_ctx_cleanup(%struct.hmac_ctx_st* noundef %dctx) #7
  br label %return

return:                                           ; preds = %err, %if.end15
  %retval.0 = phi i32 [ 1, %if.end15 ], [ 0, %err ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @HMAC(%struct.evp_md_st* noundef %evp_md, i8* noundef %key, i32 noundef %key_len, i8* noundef %data, i64 noundef %data_len, i8* noundef %md, i32* noundef writeonly %md_len) local_unnamed_addr #0 {
entry:
  %temp_md_len = alloca i64, align 8
  %call = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %evp_md) #6
  %0 = bitcast i64* %temp_md_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store i64 0, i64* %temp_md_len, align 8, !tbaa !15
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %call1 = tail call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef %evp_md) #6
  %conv = sext i32 %key_len to i64
  %cmp2 = icmp eq i8* %md, null
  %cond = select i1 %cmp2, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @HMAC.static_md, i64 0, i64 0), i8* %md
  %conv417 = zext i32 %call to i64
  %call5 = call i8* @EVP_Q_mac(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* noundef null, i8* noundef %call1, %struct.ossl_param_st* noundef null, i8* noundef %key, i64 noundef %conv, i8* noundef %data, i64 noundef %data_len, i8* noundef %cond, i64 noundef %conv417, i64* noundef nonnull %temp_md_len) #6
  %cmp6.not = icmp eq i32* %md_len, null
  br i1 %cmp6.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.then
  %1 = load i64, i64* %temp_md_len, align 8, !tbaa !15
  %conv9 = trunc i64 %1 to i32
  store i32 %conv9, i32* %md_len, align 4, !tbaa !10
  br label %if.end10

if.end10:                                         ; preds = %if.then, %if.then8, %entry
  %ret.0 = phi i8* [ %call5, %if.then8 ], [ %call5, %if.then ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i8* %ret.0
}

declare i8* @EVP_Q_mac(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef, i8* noundef, %struct.ossl_param_st* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #2

declare i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @HMAC_CTX_set_flags(%struct.hmac_ctx_st* nocapture noundef readonly %ctx, i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %i_ctx = getelementptr inbounds %struct.hmac_ctx_st, %struct.hmac_ctx_st* %ctx, i64 0, i32 2
  %0 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %i_ctx, align 8, !tbaa !13
  %conv = trunc i64 %flags to i32
  tail call void @EVP_MD_CTX_set_flags(%struct.evp_md_ctx_st* noundef %0, i32 noundef %conv) #6
  %o_ctx = getelementptr inbounds %struct.hmac_ctx_st, %struct.hmac_ctx_st* %ctx, i64 0, i32 3
  %1 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %o_ctx, align 8, !tbaa !14
  tail call void @EVP_MD_CTX_set_flags(%struct.evp_md_ctx_st* noundef %1, i32 noundef %conv) #6
  %md_ctx = getelementptr inbounds %struct.hmac_ctx_st, %struct.hmac_ctx_st* %ctx, i64 0, i32 1
  %2 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %md_ctx, align 8, !tbaa !9
  tail call void @EVP_MD_CTX_set_flags(%struct.evp_md_ctx_st* noundef %2, i32 noundef %conv) #6
  ret void
}

declare void @EVP_MD_CTX_set_flags(%struct.evp_md_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.evp_md_st* @HMAC_CTX_get_md(%struct.hmac_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %md = getelementptr inbounds %struct.hmac_ctx_st, %struct.hmac_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !4
  ret %struct.evp_md_st* %0
}

declare i32 @EVP_MD_CTX_reset(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"hmac_ctx_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 8}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !7, i64 0}
!12 = !{!7, !7, i64 0}
!13 = !{!5, !6, i64 16}
!14 = !{!5, !6, i64 24}
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !7, i64 0}
