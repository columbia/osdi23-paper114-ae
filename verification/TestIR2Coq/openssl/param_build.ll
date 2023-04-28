; ModuleID = 'crypto/param_build.c'
source_filename = "crypto/param_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_param_bld_st = type { i64, i64, %struct.stack_st_OSSL_PARAM_BLD_DEF* }
%struct.stack_st_OSSL_PARAM_BLD_DEF = type opaque
%struct.stack_st = type opaque
%struct.OSSL_PARAM_BLD_DEF = type { i8*, i32, i32, i64, i64, %struct.bignum_st*, i8*, %union.anon }
%struct.bignum_st = type opaque
%union.anon = type { i64 }
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%union.OSSL_PARAM_ALIGNED_BLOCK = type { double }

@.str = private unnamed_addr constant [21 x i8] c"crypto/param_build.c\00", align 1
@__func__.OSSL_PARAM_BLD_push_BN_pad = private unnamed_addr constant [27 x i8] c"OSSL_PARAM_BLD_push_BN_pad\00", align 1
@__func__.OSSL_PARAM_BLD_push_utf8_string = private unnamed_addr constant [32 x i8] c"OSSL_PARAM_BLD_push_utf8_string\00", align 1
@__func__.OSSL_PARAM_BLD_push_utf8_ptr = private unnamed_addr constant [29 x i8] c"OSSL_PARAM_BLD_push_utf8_ptr\00", align 1
@__func__.OSSL_PARAM_BLD_push_octet_string = private unnamed_addr constant [33 x i8] c"OSSL_PARAM_BLD_push_octet_string\00", align 1
@__func__.OSSL_PARAM_BLD_push_octet_ptr = private unnamed_addr constant [30 x i8] c"OSSL_PARAM_BLD_push_octet_ptr\00", align 1
@__func__.OSSL_PARAM_BLD_to_param = private unnamed_addr constant [24 x i8] c"OSSL_PARAM_BLD_to_param\00", align 1
@__func__.param_push = private unnamed_addr constant [11 x i8] c"param_push\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 24, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 93) #6
  %cmp.not = icmp eq i8* %call, null
  br i1 %cmp.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast i8* %call to %struct.ossl_param_bld_st*
  %call1 = tail call fastcc %struct.stack_st_OSSL_PARAM_BLD_DEF* @sk_OSSL_PARAM_BLD_DEF_new_null() #7
  %params = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %params to %struct.stack_st_OSSL_PARAM_BLD_DEF**
  store %struct.stack_st_OSSL_PARAM_BLD_DEF* %call1, %struct.stack_st_OSSL_PARAM_BLD_DEF** %1, align 8, !tbaa !4
  %cmp3 = icmp eq %struct.stack_st_OSSL_PARAM_BLD_DEF* %call1, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 98) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then, %if.then4, %entry
  %r.0 = phi %struct.ossl_param_bld_st* [ null, %if.then4 ], [ %0, %if.then ], [ null, %entry ]
  ret %struct.ossl_param_bld_st* %r.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_OSSL_PARAM_BLD_DEF* @sk_OSSL_PARAM_BLD_DEF_new_null() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #6
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_OSSL_PARAM_BLD_DEF*
  ret %struct.stack_st_OSSL_PARAM_BLD_DEF* %0
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef %bld) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_param_bld_st* %bld, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @free_all_params(%struct.ossl_param_bld_st* noundef nonnull %bld) #7
  %params = getelementptr inbounds %struct.ossl_param_bld_st, %struct.ossl_param_bld_st* %bld, i64 0, i32 2
  %0 = load %struct.stack_st_OSSL_PARAM_BLD_DEF*, %struct.stack_st_OSSL_PARAM_BLD_DEF** %params, align 8, !tbaa !4
  tail call fastcc void @sk_OSSL_PARAM_BLD_DEF_free(%struct.stack_st_OSSL_PARAM_BLD_DEF* noundef %0) #7
  %1 = bitcast %struct.ossl_param_bld_st* %bld to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 119) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @free_all_params(%struct.ossl_param_bld_st* nocapture noundef readonly %bld) unnamed_addr #0 {
entry:
  %params = getelementptr inbounds %struct.ossl_param_bld_st, %struct.ossl_param_bld_st* %bld, i64 0, i32 2
  %0 = load %struct.stack_st_OSSL_PARAM_BLD_DEF*, %struct.stack_st_OSSL_PARAM_BLD_DEF** %params, align 8, !tbaa !4
  %call = tail call fastcc i32 @sk_OSSL_PARAM_BLD_DEF_num(%struct.stack_st_OSSL_PARAM_BLD_DEF* noundef %0) #7
  %cmp7 = icmp sgt i32 %call, 0
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %i.08 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %1 = load %struct.stack_st_OSSL_PARAM_BLD_DEF*, %struct.stack_st_OSSL_PARAM_BLD_DEF** %params, align 8, !tbaa !4
  %call2 = tail call fastcc %struct.OSSL_PARAM_BLD_DEF* @sk_OSSL_PARAM_BLD_DEF_pop(%struct.stack_st_OSSL_PARAM_BLD_DEF* noundef %1) #7
  %2 = bitcast %struct.OSSL_PARAM_BLD_DEF* %call2 to i8*
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 110) #6
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !10

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_OSSL_PARAM_BLD_DEF_free(%struct.stack_st_OSSL_PARAM_BLD_DEF* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_PARAM_BLD_DEF* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %0) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_BLD_push_int(%struct.ossl_param_bld_st* nocapture noundef %bld, i8* noundef %key, i32 noundef %num) local_unnamed_addr #0 {
entry:
  %num.addr = alloca i32, align 4
  store i32 %num, i32* %num.addr, align 4, !tbaa !12
  %0 = bitcast i32* %num.addr to i8*
  %call = call fastcc i32 @param_push_num(%struct.ossl_param_bld_st* noundef %bld, i8* noundef %key, i8* noundef nonnull %0, i64 noundef 4, i32 noundef 1) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @param_push_num(%struct.ossl_param_bld_st* nocapture noundef %bld, i8* noundef %key, i8* noundef %num, i64 noundef %size, i32 noundef %type) unnamed_addr #0 {
entry:
  %conv = trunc i64 %size to i32
  %call = tail call fastcc %struct.OSSL_PARAM_BLD_DEF* @param_push(%struct.ossl_param_bld_st* noundef %bld, i8* noundef %key, i32 noundef %conv, i64 noundef %size, i32 noundef %type, i32 noundef 0) #7
  %cmp = icmp eq %struct.OSSL_PARAM_BLD_DEF* %call, null
  br i1 %cmp, label %cleanup, label %if.end5

if.end5:                                          ; preds = %entry
  %num6 = getelementptr inbounds %struct.OSSL_PARAM_BLD_DEF, %struct.OSSL_PARAM_BLD_DEF* %call, i64 0, i32 7
  %0 = bitcast %union.anon* %num6 to i8*
  %call7 = tail call i8* @memcpy(i8* noundef nonnull %0, i8* noundef %num, i64 noundef %size) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end5
  %retval.0 = phi i32 [ 1, %if.end5 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_BLD_push_uint(%struct.ossl_param_bld_st* nocapture noundef %bld, i8* noundef %key, i32 noundef %num) local_unnamed_addr #0 {
entry:
  %num.addr = alloca i32, align 4
  store i32 %num, i32* %num.addr, align 4, !tbaa !12
  %0 = bitcast i32* %num.addr to i8*
  %call = call fastcc i32 @param_push_num(%struct.ossl_param_bld_st* noundef %bld, i8* noundef %key, i8* noundef nonnull %0, i64 noundef 4, i32 noundef 2) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_BLD_push_long(%struct.ossl_param_bld_st* nocapture noundef %bld, i8* noundef %key, i64 noundef %num) local_unnamed_addr #0 {
entry:
  %num.addr = alloca i64, align 8
  store i64 %num, i64* %num.addr, align 8, !tbaa !14
  %0 = bitcast i64* %num.addr to i8*
  %call = call fastcc i32 @param_push_num(%struct.ossl_param_bld_st* noundef %bld, i8* noundef %key, i8* noundef nonnull %0, i64 noundef 8, i32 noundef 1) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_BLD_push_ulong(%struct.ossl_param_bld_st* nocapture noundef %bld, i8* noundef %key, i64 noundef %num) local_unnamed_addr #0 {
entry:
  %num.addr = alloca i64, align 8
  store i64 %num, i64* %num.addr, align 8, !tbaa !14
  %0 = bitcast i64* %num.addr to i8*
  %call = call fastcc i32 @param_push_num(%struct.ossl_param_bld_st* noundef %bld, i8* noundef %key, i8* noundef nonnull %0, i64 noundef 8, i32 noundef 2) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_BLD_push_int32(%struct.ossl_param_bld_st* nocapture noundef %bld, i8* noundef %key, i32 noundef %num) local_unnamed_addr #0 {
entry:
  %num.addr = alloca i32, align 4
  store i32 %num, i32* %num.addr, align 4, !tbaa !12
  %0 = bitcast i32* %num.addr to i8*
  %call = call fastcc i32 @param_push_num(%struct.ossl_param_bld_st* noundef %bld, i8* noundef %key, i8* noundef nonnull %0, i64 noundef 4, i32 noundef 1) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_BLD_push_uint32(%struct.ossl_param_bld_st* nocapture noundef %bld, i8* noundef %key, i32 noundef %num) local_unnamed_addr #0 {
entry:
  %num.addr = alloca i32, align 4
  store i32 %num, i32* %num.addr, align 4, !tbaa !12
  %0 = bitcast i32* %num.addr to i8*
  %call = call fastcc i32 @param_push_num(%struct.ossl_param_bld_st* noundef %bld, i8* noundef %key, i8* noundef nonnull %0, i64 noundef 4, i32 noundef 2) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_BLD_push_int64(%struct.ossl_param_bld_st* nocapture noundef %bld, i8* noundef %key, i64 noundef %num) local_unnamed_addr #0 {
entry:
  %num.addr = alloca i64, align 8
  store i64 %num, i64* %num.addr, align 8, !tbaa !14
  %0 = bitcast i64* %num.addr to i8*
  %call = call fastcc i32 @param_push_num(%struct.ossl_param_bld_st* noundef %bld, i8* noundef %key, i8* noundef nonnull %0, i64 noundef 8, i32 noundef 1) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_BLD_push_uint64(%struct.ossl_param_bld_st* nocapture noundef %bld, i8* noundef %key, i64 noundef %num) local_unnamed_addr #0 {
entry:
  %num.addr = alloca i64, align 8
  store i64 %num, i64* %num.addr, align 8, !tbaa !14
  %0 = bitcast i64* %num.addr to i8*
  %call = call fastcc i32 @param_push_num(%struct.ossl_param_bld_st* noundef %bld, i8* noundef %key, i8* noundef nonnull %0, i64 noundef 8, i32 noundef 2) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_BLD_push_size_t(%struct.ossl_param_bld_st* nocapture noundef %bld, i8* noundef %key, i64 noundef %num) local_unnamed_addr #0 {
entry:
  %num.addr = alloca i64, align 8
  store i64 %num, i64* %num.addr, align 8, !tbaa !14
  %0 = bitcast i64* %num.addr to i8*
  %call = call fastcc i32 @param_push_num(%struct.ossl_param_bld_st* noundef %bld, i8* noundef %key, i8* noundef nonnull %0, i64 noundef 8, i32 noundef 2) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_BLD_push_time_t(%struct.ossl_param_bld_st* nocapture noundef %bld, i8* noundef %key, i64 noundef %num) local_unnamed_addr #0 {
entry:
  %num.addr = alloca i64, align 8
  store i64 %num, i64* %num.addr, align 8, !tbaa !14
  %0 = bitcast i64* %num.addr to i8*
  %call = call fastcc i32 @param_push_num(%struct.ossl_param_bld_st* noundef %bld, i8* noundef %key, i8* noundef nonnull %0, i64 noundef 8, i32 noundef 1) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_BLD_push_double(%struct.ossl_param_bld_st* nocapture noundef %bld, i8* noundef %key, double noundef %num) local_unnamed_addr #0 {
entry:
  %num.addr = alloca double, align 8
  store double %num, double* %num.addr, align 8, !tbaa !15
  %0 = bitcast double* %num.addr to i8*
  %call = call fastcc i32 @param_push_num(%struct.ossl_param_bld_st* noundef %bld, i8* noundef %key, i8* noundef nonnull %0, i64 noundef 8, i32 noundef 3) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* nocapture noundef %bld, i8* noundef %key, %struct.bignum_st* noundef %bn) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.bignum_st* %bn, null
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %bn) #6
  %add = add nsw i32 %call, 7
  %div = sdiv i32 %add, 8
  %phi.cast = sext i32 %div to i64
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i64 [ %phi.cast, %cond.false ], [ 0, %entry ]
  %call1 = tail call i32 @OSSL_PARAM_BLD_push_BN_pad(%struct.ossl_param_bld_st* noundef %bld, i8* noundef %key, %struct.bignum_st* noundef %bn, i64 noundef %cond) #7
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_BLD_push_BN_pad(%struct.ossl_param_bld_st* nocapture noundef %bld, i8* noundef %key, %struct.bignum_st* noundef %bn, i64 noundef %sz) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.bignum_st* %bn, null
  br i1 %cmp.not, label %if.end12, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %bn) #6
  %cmp1 = icmp slt i32 %call, -14
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 209, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.OSSL_PARAM_BLD_push_BN_pad, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 115, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %if.then
  %add = add nsw i32 %call, 7
  %div = sdiv i32 %add, 8
  %conv32 = zext i32 %div to i64
  %cmp3 = icmp ugt i64 %conv32, %sz
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 213, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.OSSL_PARAM_BLD_push_BN_pad, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 116, i8* noundef null) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @BN_get_flags(%struct.bignum_st* noundef nonnull %bn, i32 noundef 8) #6
  %cmp8 = icmp eq i32 %call7, 8
  %spec.select = zext i1 %cmp8 to i32
  br label %if.end12

if.end12:                                         ; preds = %if.end6, %entry
  %secure.0 = phi i32 [ 0, %entry ], [ %spec.select, %if.end6 ]
  %conv13 = trunc i64 %sz to i32
  %call14 = tail call fastcc %struct.OSSL_PARAM_BLD_DEF* @param_push(%struct.ossl_param_bld_st* noundef %bld, i8* noundef %key, i32 noundef %conv13, i64 noundef %sz, i32 noundef 2, i32 noundef %secure.0) #7
  %cmp15 = icmp eq %struct.OSSL_PARAM_BLD_DEF* %call14, null
  br i1 %cmp15, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.end12
  %bn19 = getelementptr inbounds %struct.OSSL_PARAM_BLD_DEF, %struct.OSSL_PARAM_BLD_DEF* %call14, i64 0, i32 5
  store %struct.bignum_st* %bn, %struct.bignum_st** %bn19, align 8, !tbaa !17
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end18, %if.then5, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.then5 ], [ 1, %if.end18 ], [ 0, %if.end12 ]
  ret i32 %retval.0
}

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @BN_get_flags(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.OSSL_PARAM_BLD_DEF* @param_push(%struct.ossl_param_bld_st* nocapture noundef %bld, i8* noundef %key, i32 noundef %size, i64 noundef %alloc, i32 noundef %type, i32 noundef %secure) unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 56, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 55) #6
  %0 = bitcast i8* %call to %struct.OSSL_PARAM_BLD_DEF*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.param_push, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %key1 = bitcast i8* %call to i8**
  store i8* %key, i8** %key1, align 8, !tbaa !19
  %type2 = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %type2 to i32*
  store i32 %type, i32* %1, align 8, !tbaa !20
  %conv = sext i32 %size to i64
  %size3 = getelementptr inbounds i8, i8* %call, i64 16
  %2 = bitcast i8* %size3 to i64*
  store i64 %conv, i64* %2, align 8, !tbaa !21
  %call4 = tail call i64 @ossl_param_bytes_to_blocks(i64 noundef %alloc) #6
  %alloc_blocks = getelementptr inbounds i8, i8* %call, i64 24
  %3 = bitcast i8* %alloc_blocks to i64*
  store i64 %call4, i64* %3, align 8, !tbaa !22
  %secure5 = getelementptr inbounds i8, i8* %call, i64 12
  %4 = bitcast i8* %secure5 to i32*
  store i32 %secure, i32* %4, align 4, !tbaa !23
  %cmp6.not = icmp eq i32 %secure, 0
  %total_blocks = getelementptr inbounds %struct.ossl_param_bld_st, %struct.ossl_param_bld_st* %bld, i64 0, i32 0
  %secure_blocks = getelementptr inbounds %struct.ossl_param_bld_st, %struct.ossl_param_bld_st* %bld, i64 0, i32 1
  %total_blocks.sink31 = select i1 %cmp6.not, i64* %total_blocks, i64* %secure_blocks
  %5 = load i64, i64* %total_blocks.sink31, align 8, !tbaa !14
  %add11 = add i64 %5, %call4
  store i64 %add11, i64* %total_blocks.sink31, align 8, !tbaa !14
  %params = getelementptr inbounds %struct.ossl_param_bld_st, %struct.ossl_param_bld_st* %bld, i64 0, i32 2
  %6 = load %struct.stack_st_OSSL_PARAM_BLD_DEF*, %struct.stack_st_OSSL_PARAM_BLD_DEF** %params, align 8, !tbaa !4
  %call13 = tail call fastcc i32 @sk_OSSL_PARAM_BLD_DEF_push(%struct.stack_st_OSSL_PARAM_BLD_DEF* noundef %6, %struct.OSSL_PARAM_BLD_DEF* noundef nonnull %0) #7
  %cmp14 = icmp slt i32 %call13, 1
  br i1 %cmp14, label %if.then16, label %cleanup

if.then16:                                        ; preds = %if.end
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 70) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then16, %if.then
  %retval.0 = phi %struct.OSSL_PARAM_BLD_DEF* [ null, %if.then ], [ null, %if.then16 ], [ %0, %if.end ]
  ret %struct.OSSL_PARAM_BLD_DEF* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_BLD_push_utf8_string(%struct.ossl_param_bld_st* nocapture noundef %bld, i8* noundef %key, i8* noundef %buf, i64 noundef %bsize) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %bsize, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i64 @strlen(i8* noundef %buf) #8
  br label %if.end3

if.else:                                          ; preds = %entry
  %cmp1 = icmp ugt i64 %bsize, 2147483647
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.else
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 235, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.OSSL_PARAM_BLD_push_utf8_string, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 112, i8* noundef null) #6
  br label %cleanup

if.end3:                                          ; preds = %if.else, %if.then
  %bsize.addr.0 = phi i64 [ %call, %if.then ], [ %bsize, %if.else ]
  %call4 = tail call i32 @CRYPTO_secure_allocated(i8* noundef %buf) #6
  %conv = trunc i64 %bsize.addr.0 to i32
  %add = add i64 %bsize.addr.0, 1
  %call5 = tail call fastcc %struct.OSSL_PARAM_BLD_DEF* @param_push(%struct.ossl_param_bld_st* noundef %bld, i8* noundef %key, i32 noundef %conv, i64 noundef %add, i32 noundef 4, i32 noundef %call4) #7
  %cmp6 = icmp eq %struct.OSSL_PARAM_BLD_DEF* %call5, null
  br i1 %cmp6, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end3
  %string = getelementptr inbounds %struct.OSSL_PARAM_BLD_DEF, %struct.OSSL_PARAM_BLD_DEF* %call5, i64 0, i32 6
  store i8* %buf, i8** %string, align 8, !tbaa !24
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end9, %if.then2
  %retval.0 = phi i32 [ 1, %if.end9 ], [ 0, %if.then2 ], [ 0, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #3

declare i32 @CRYPTO_secure_allocated(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_BLD_push_utf8_ptr(%struct.ossl_param_bld_st* nocapture noundef %bld, i8* noundef %key, i8* noundef %buf, i64 noundef %bsize) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %bsize, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i64 @strlen(i8* noundef %buf) #8
  br label %if.end3

if.else:                                          ; preds = %entry
  %cmp1 = icmp ugt i64 %bsize, 2147483647
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.else
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 254, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.OSSL_PARAM_BLD_push_utf8_ptr, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 112, i8* noundef null) #6
  br label %cleanup

if.end3:                                          ; preds = %if.else, %if.then
  %bsize.addr.0 = phi i64 [ %call, %if.then ], [ %bsize, %if.else ]
  %conv = trunc i64 %bsize.addr.0 to i32
  %call4 = tail call fastcc %struct.OSSL_PARAM_BLD_DEF* @param_push(%struct.ossl_param_bld_st* noundef %bld, i8* noundef %key, i32 noundef %conv, i64 noundef 8, i32 noundef 6, i32 noundef 0) #7
  %cmp5 = icmp eq %struct.OSSL_PARAM_BLD_DEF* %call4, null
  br i1 %cmp5, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end3
  %string = getelementptr inbounds %struct.OSSL_PARAM_BLD_DEF, %struct.OSSL_PARAM_BLD_DEF* %call4, i64 0, i32 6
  store i8* %buf, i8** %string, align 8, !tbaa !24
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end8, %if.then2
  %retval.0 = phi i32 [ 1, %if.end8 ], [ 0, %if.then2 ], [ 0, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_BLD_push_octet_string(%struct.ossl_param_bld_st* nocapture noundef %bld, i8* noundef %key, i8* noundef %buf, i64 noundef %bsize) local_unnamed_addr #0 {
entry:
  %cmp = icmp ugt i64 %bsize, 2147483647
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 271, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.OSSL_PARAM_BLD_push_octet_string, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 112, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @CRYPTO_secure_allocated(i8* noundef %buf) #6
  %conv = trunc i64 %bsize to i32
  %call1 = tail call fastcc %struct.OSSL_PARAM_BLD_DEF* @param_push(%struct.ossl_param_bld_st* noundef %bld, i8* noundef %key, i32 noundef %conv, i64 noundef %bsize, i32 noundef 5, i32 noundef %call) #7
  %cmp2 = icmp eq %struct.OSSL_PARAM_BLD_DEF* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %string = getelementptr inbounds %struct.OSSL_PARAM_BLD_DEF, %struct.OSSL_PARAM_BLD_DEF* %call1, i64 0, i32 6
  store i8* %buf, i8** %string, align 8, !tbaa !24
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end5 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_BLD_push_octet_ptr(%struct.ossl_param_bld_st* nocapture noundef %bld, i8* noundef %key, i8* noundef %buf, i64 noundef %bsize) local_unnamed_addr #0 {
entry:
  %cmp = icmp ugt i64 %bsize, 2147483647
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 288, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.OSSL_PARAM_BLD_push_octet_ptr, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 112, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i64 %bsize to i32
  %call = tail call fastcc %struct.OSSL_PARAM_BLD_DEF* @param_push(%struct.ossl_param_bld_st* noundef %bld, i8* noundef %key, i32 noundef %conv, i64 noundef 8, i32 noundef 7, i32 noundef 0) #7
  %cmp1 = icmp eq %struct.OSSL_PARAM_BLD_DEF* %call, null
  br i1 %cmp1, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %string = getelementptr inbounds %struct.OSSL_PARAM_BLD_DEF, %struct.OSSL_PARAM_BLD_DEF* %call, i64 0, i32 6
  store i8* %buf, i8** %string, align 8, !tbaa !24
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end4 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* nocapture noundef %bld) local_unnamed_addr #0 {
entry:
  %params1 = getelementptr inbounds %struct.ossl_param_bld_st, %struct.ossl_param_bld_st* %bld, i64 0, i32 2
  %0 = load %struct.stack_st_OSSL_PARAM_BLD_DEF*, %struct.stack_st_OSSL_PARAM_BLD_DEF** %params1, align 8, !tbaa !4
  %call = tail call fastcc i32 @sk_OSSL_PARAM_BLD_DEF_num(%struct.stack_st_OSSL_PARAM_BLD_DEF* noundef %0) #7
  %add = add nsw i32 %call, 1
  %conv = sext i32 %add to i64
  %mul = mul nsw i64 %conv, 40
  %call2 = tail call i64 @ossl_param_bytes_to_blocks(i64 noundef %mul) #6
  %total_blocks = getelementptr inbounds %struct.ossl_param_bld_st, %struct.ossl_param_bld_st* %bld, i64 0, i32 0
  %1 = load i64, i64* %total_blocks, align 8, !tbaa !25
  %add3 = add i64 %1, %call2
  %mul4 = shl i64 %add3, 3
  %secure_blocks = getelementptr inbounds %struct.ossl_param_bld_st, %struct.ossl_param_bld_st* %bld, i64 0, i32 1
  %2 = load i64, i64* %secure_blocks, align 8, !tbaa !26
  %mul5 = shl i64 %2, 3
  %cmp.not = icmp eq i64 %mul5, 0
  br i1 %cmp.not, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  %call7 = tail call i8* @CRYPTO_secure_malloc(i64 noundef %mul5, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 358) #6
  %3 = bitcast i8* %call7 to %union.OSSL_PARAM_ALIGNED_BLOCK*
  %cmp8 = icmp eq i8* %call7, null
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 360, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.OSSL_PARAM_BLD_to_param, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 111, i8* noundef null) #6
  br label %cleanup

if.end11:                                         ; preds = %if.then, %entry
  %s.0 = phi %union.OSSL_PARAM_ALIGNED_BLOCK* [ %3, %if.then ], [ null, %entry ]
  %call12 = tail call i8* @CRYPTO_malloc(i64 noundef %mul4, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 364) #6
  %4 = bitcast i8* %call12 to %struct.ossl_param_st*
  %cmp13 = icmp eq i8* %call12, null
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 366, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.OSSL_PARAM_BLD_to_param, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #6
  %5 = bitcast %union.OSSL_PARAM_ALIGNED_BLOCK* %s.0 to i8*
  tail call void @CRYPTO_secure_free(i8* noundef %5, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 367) #6
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %6 = bitcast i8* %call12 to %union.OSSL_PARAM_ALIGNED_BLOCK*
  %add.ptr = getelementptr inbounds %union.OSSL_PARAM_ALIGNED_BLOCK, %union.OSSL_PARAM_ALIGNED_BLOCK* %6, i64 %call2
  %call17 = tail call fastcc %struct.ossl_param_st* @param_bld_convert(%struct.ossl_param_bld_st* noundef nonnull %bld, %struct.ossl_param_st* noundef nonnull %4, %union.OSSL_PARAM_ALIGNED_BLOCK* noundef nonnull %add.ptr, %union.OSSL_PARAM_ALIGNED_BLOCK* noundef %s.0) #7
  %7 = bitcast %union.OSSL_PARAM_ALIGNED_BLOCK* %s.0 to i8*
  tail call void @ossl_param_set_secure_block(%struct.ossl_param_st* noundef %call17, i8* noundef %7, i64 noundef %mul5) #6
  %8 = bitcast %struct.ossl_param_bld_st* %bld to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %8, align 8, !tbaa !14
  tail call fastcc void @free_all_params(%struct.ossl_param_bld_st* noundef nonnull %bld) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then15, %if.then10
  %retval.0 = phi %struct.ossl_param_st* [ null, %if.then10 ], [ null, %if.then15 ], [ %4, %if.end16 ]
  ret %struct.ossl_param_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OSSL_PARAM_BLD_DEF_num(%struct.stack_st_OSSL_PARAM_BLD_DEF* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_PARAM_BLD_DEF* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #6
  ret i32 %call
}

declare i64 @ossl_param_bytes_to_blocks(i64 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_secure_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_secure_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_param_st* @param_bld_convert(%struct.ossl_param_bld_st* nocapture noundef readonly %bld, %struct.ossl_param_st* noundef writeonly %param, %union.OSSL_PARAM_ALIGNED_BLOCK* noundef %blk, %union.OSSL_PARAM_ALIGNED_BLOCK* noundef %secure) unnamed_addr #0 {
entry:
  %tmp = alloca %struct.ossl_param_st, align 8
  %params = getelementptr inbounds %struct.ossl_param_bld_st, %struct.ossl_param_bld_st* %bld, i64 0, i32 2
  %0 = load %struct.stack_st_OSSL_PARAM_BLD_DEF*, %struct.stack_st_OSSL_PARAM_BLD_DEF** %params, align 8, !tbaa !4
  %call = tail call fastcc i32 @sk_OSSL_PARAM_BLD_DEF_num(%struct.stack_st_OSSL_PARAM_BLD_DEF* noundef %0) #7
  %cmp134 = icmp sgt i32 %call, 0
  br i1 %cmp134, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %call to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %blk.addr.0137 = phi %union.OSSL_PARAM_ALIGNED_BLOCK* [ %blk, %for.body.preheader ], [ %blk.addr.1, %for.inc ]
  %secure.addr.0136 = phi %union.OSSL_PARAM_ALIGNED_BLOCK* [ %secure, %for.body.preheader ], [ %secure.addr.1, %for.inc ]
  %1 = load %struct.stack_st_OSSL_PARAM_BLD_DEF*, %struct.stack_st_OSSL_PARAM_BLD_DEF** %params, align 8, !tbaa !4
  %2 = trunc i64 %indvars.iv to i32
  %call2 = tail call fastcc %struct.OSSL_PARAM_BLD_DEF* @sk_OSSL_PARAM_BLD_DEF_value(%struct.stack_st_OSSL_PARAM_BLD_DEF* noundef %1, i32 noundef %2) #7
  %key = getelementptr inbounds %struct.OSSL_PARAM_BLD_DEF, %struct.OSSL_PARAM_BLD_DEF* %call2, i64 0, i32 0
  %3 = load i8*, i8** %key, align 8, !tbaa !19
  %key3 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 %indvars.iv, i32 0
  store i8* %3, i8** %key3, align 8, !tbaa !27
  %type = getelementptr inbounds %struct.OSSL_PARAM_BLD_DEF, %struct.OSSL_PARAM_BLD_DEF* %call2, i64 0, i32 1
  %4 = load i32, i32* %type, align 8, !tbaa !20
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 %indvars.iv, i32 1
  store i32 %4, i32* %data_type, align 8, !tbaa !29
  %size = getelementptr inbounds %struct.OSSL_PARAM_BLD_DEF, %struct.OSSL_PARAM_BLD_DEF* %call2, i64 0, i32 3
  %5 = load i64, i64* %size, align 8, !tbaa !21
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 %indvars.iv, i32 3
  store i64 %5, i64* %data_size, align 8, !tbaa !30
  %return_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 %indvars.iv, i32 4
  store i64 -1, i64* %return_size, align 8, !tbaa !31
  %secure10 = getelementptr inbounds %struct.OSSL_PARAM_BLD_DEF, %struct.OSSL_PARAM_BLD_DEF* %call2, i64 0, i32 2
  %6 = load i32, i32* %secure10, align 4, !tbaa !23
  %tobool.not = icmp eq i32 %6, 0
  %alloc_blocks11 = getelementptr inbounds %struct.OSSL_PARAM_BLD_DEF, %struct.OSSL_PARAM_BLD_DEF* %call2, i64 0, i32 4
  %7 = load i64, i64* %alloc_blocks11, align 8, !tbaa !22
  %secure.addr.1.idx = select i1 %tobool.not, i64 0, i64 %7
  %secure.addr.1 = getelementptr %union.OSSL_PARAM_ALIGNED_BLOCK, %union.OSSL_PARAM_ALIGNED_BLOCK* %secure.addr.0136, i64 %secure.addr.1.idx
  %blk.addr.1.idx = select i1 %tobool.not, i64 %7, i64 0
  %blk.addr.1 = getelementptr %union.OSSL_PARAM_ALIGNED_BLOCK, %union.OSSL_PARAM_ALIGNED_BLOCK* %blk.addr.0137, i64 %blk.addr.1.idx
  %p.0.in = select i1 %tobool.not, %union.OSSL_PARAM_ALIGNED_BLOCK* %blk.addr.0137, %union.OSSL_PARAM_ALIGNED_BLOCK* %secure.addr.0136
  %p.0 = bitcast %union.OSSL_PARAM_ALIGNED_BLOCK* %p.0.in to i8*
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 %indvars.iv, i32 2
  %8 = bitcast i8** %data to %union.OSSL_PARAM_ALIGNED_BLOCK**
  store %union.OSSL_PARAM_ALIGNED_BLOCK* %p.0.in, %union.OSSL_PARAM_ALIGNED_BLOCK** %8, align 8, !tbaa !32
  %bn = getelementptr inbounds %struct.OSSL_PARAM_BLD_DEF, %struct.OSSL_PARAM_BLD_DEF* %call2, i64 0, i32 5
  %9 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !17
  %cmp15.not = icmp eq %struct.bignum_st* %9, null
  br i1 %cmp15.not, label %if.else20, label %if.then16

if.then16:                                        ; preds = %for.body
  %conv = trunc i64 %5 to i32
  %call19 = tail call i32 @BN_bn2nativepad(%struct.bignum_st* noundef nonnull %9, i8* noundef %p.0, i32 noundef %conv) #6
  br label %for.inc

if.else20:                                        ; preds = %for.body
  switch i32 %4, label %if.else55 [
    i32 7, label %if.then27
    i32 6, label %if.then27
    i32 5, label %if.then36
    i32 4, label %if.then36
  ]

if.then27:                                        ; preds = %if.else20, %if.else20
  %string = getelementptr inbounds %struct.OSSL_PARAM_BLD_DEF, %struct.OSSL_PARAM_BLD_DEF* %call2, i64 0, i32 6
  %10 = load i8*, i8** %string, align 8, !tbaa !24
  %11 = bitcast %union.OSSL_PARAM_ALIGNED_BLOCK* %p.0.in to i8**
  store i8* %10, i8** %11, align 8, !tbaa !33
  br label %for.inc

if.then36:                                        ; preds = %if.else20, %if.else20
  %string37 = getelementptr inbounds %struct.OSSL_PARAM_BLD_DEF, %struct.OSSL_PARAM_BLD_DEF* %call2, i64 0, i32 6
  %12 = load i8*, i8** %string37, align 8, !tbaa !24
  %cmp38.not = icmp eq i8* %12, null
  br i1 %cmp38.not, label %if.else44, label %if.then40

if.then40:                                        ; preds = %if.then36
  %call43 = tail call i8* @memcpy(i8* noundef %p.0, i8* noundef nonnull %12, i64 noundef %5) #6
  br label %if.end47

if.else44:                                        ; preds = %if.then36
  %call46 = tail call i8* @memset(i8* noundef %p.0, i32 noundef 0, i64 noundef %5) #6
  br label %if.end47

if.end47:                                         ; preds = %if.else44, %if.then40
  %13 = load i32, i32* %type, align 8, !tbaa !20
  %cmp49 = icmp eq i32 %13, 4
  br i1 %cmp49, label %if.then51, label %for.inc

if.then51:                                        ; preds = %if.end47
  %14 = load i64, i64* %size, align 8, !tbaa !21
  %arrayidx53 = getelementptr inbounds i8, i8* %p.0, i64 %14
  store i8 0, i8* %arrayidx53, align 1, !tbaa !34
  br label %for.inc

if.else55:                                        ; preds = %if.else20
  %cmp57 = icmp ugt i64 %5, 8
  br i1 %cmp57, label %if.then59, label %if.else62

if.then59:                                        ; preds = %if.else55
  %call61 = tail call i8* @memset(i8* noundef %p.0, i32 noundef 0, i64 noundef %5) #6
  br label %for.inc

if.else62:                                        ; preds = %if.else55
  %cmp64.not = icmp eq i64 %5, 0
  br i1 %cmp64.not, label %for.inc, label %if.then66

if.then66:                                        ; preds = %if.else62
  %num67 = getelementptr inbounds %struct.OSSL_PARAM_BLD_DEF, %struct.OSSL_PARAM_BLD_DEF* %call2, i64 0, i32 7
  %15 = bitcast %union.anon* %num67 to i8*
  %call69 = tail call i8* @memcpy(i8* noundef %p.0, i8* noundef nonnull %15, i64 noundef %5) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %if.then51, %if.end47, %if.else62, %if.then66, %if.then59, %if.then27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body, !llvm.loop !35

for.end.loopexit:                                 ; preds = %for.inc
  %phi.cast = zext i32 %call to i64
  br label %for.end

for.end:                                          ; preds = %entry, %for.end.loopexit
  %i.0.lcssa = phi i64 [ %phi.cast, %for.end.loopexit ], [ 0, %entry ]
  %arrayidx76 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 %i.0.lcssa
  %16 = bitcast %struct.ossl_param_st* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %16) #9
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp) #6
  %17 = bitcast %struct.ossl_param_st* %arrayidx76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %17, i8* noundef nonnull align 8 dereferenceable(40) %16, i64 40, i1 false), !tbaa.struct !36
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %16) #9
  ret %struct.ossl_param_st* %arrayidx76
}

declare void @ossl_param_set_secure_block(%struct.ossl_param_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.OSSL_PARAM_BLD_DEF* @sk_OSSL_PARAM_BLD_DEF_pop(%struct.stack_st_OSSL_PARAM_BLD_DEF* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_PARAM_BLD_DEF* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_pop(%struct.stack_st* noundef %0) #6
  %1 = bitcast i8* %call to %struct.OSSL_PARAM_BLD_DEF*
  ret %struct.OSSL_PARAM_BLD_DEF* %1
}

declare i8* @OPENSSL_sk_pop(%struct.stack_st* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OSSL_PARAM_BLD_DEF_push(%struct.stack_st_OSSL_PARAM_BLD_DEF* noundef %sk, %struct.OSSL_PARAM_BLD_DEF* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_PARAM_BLD_DEF* %sk to %struct.stack_st*
  %1 = bitcast %struct.OSSL_PARAM_BLD_DEF* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #6
  ret i32 %call
}

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.OSSL_PARAM_BLD_DEF* @sk_OSSL_PARAM_BLD_DEF_value(%struct.stack_st_OSSL_PARAM_BLD_DEF* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_PARAM_BLD_DEF* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #6
  %1 = bitcast i8* %call to %struct.OSSL_PARAM_BLD_DEF*
  ret %struct.OSSL_PARAM_BLD_DEF* %1
}

declare i32 @BN_bn2nativepad(%struct.bignum_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 16}
!5 = !{!"ossl_param_bld_st", !6, i64 0, !6, i64 8, !9, i64 16}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = !{!6, !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"double", !7, i64 0}
!17 = !{!18, !9, i64 32}
!18 = !{!"", !9, i64 0, !13, i64 8, !13, i64 12, !6, i64 16, !6, i64 24, !9, i64 32, !9, i64 40, !7, i64 48}
!19 = !{!18, !9, i64 0}
!20 = !{!18, !13, i64 8}
!21 = !{!18, !6, i64 16}
!22 = !{!18, !6, i64 24}
!23 = !{!18, !13, i64 12}
!24 = !{!18, !9, i64 40}
!25 = !{!5, !6, i64 0}
!26 = !{!5, !6, i64 8}
!27 = !{!28, !9, i64 0}
!28 = !{!"ossl_param_st", !9, i64 0, !13, i64 8, !9, i64 16, !6, i64 24, !6, i64 32}
!29 = !{!28, !13, i64 8}
!30 = !{!28, !6, i64 24}
!31 = !{!28, !6, i64 32}
!32 = !{!28, !9, i64 16}
!33 = !{!9, !9, i64 0}
!34 = !{!7, !7, i64 0}
!35 = distinct !{!35, !11}
!36 = !{i64 0, i64 8, !33, i64 8, i64 4, !12, i64 16, i64 8, !33, i64 24, i64 8, !14, i64 32, i64 8, !14}
