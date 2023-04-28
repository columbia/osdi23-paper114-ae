; ModuleID = 'crypto/pem/pvkfmt.c'
source_filename = "crypto/pem/pvkfmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon }
%struct.evp_pkey_asn1_method_st = type opaque
%struct.engine_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_void = type opaque
%struct.evp_keymgmt_st = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon = type { i32, i32, i32 }
%struct.rsa_st = type opaque
%struct.dsa_st = type opaque
%struct.bio_st = type opaque
%struct.bignum_st = type opaque
%struct.bignum_ctx = type opaque
%struct.evp_cipher_ctx_st = type opaque
%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.evp_md_ctx_st = type opaque
%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }

@.str = private unnamed_addr constant [20 x i8] c"crypto/pem/pvkfmt.c\00", align 1
@__func__.ossl_do_blob_header = private unnamed_addr constant [20 x i8] c"ossl_do_blob_header\00", align 1
@__func__.ossl_b2i_bio = private unnamed_addr constant [13 x i8] c"ossl_b2i_bio\00", align 1
@__func__.ossl_b2i_DSA_after_header = private unnamed_addr constant [26 x i8] c"ossl_b2i_DSA_after_header\00", align 1
@__func__.ossl_b2i_RSA_after_header = private unnamed_addr constant [26 x i8] c"ossl_b2i_RSA_after_header\00", align 1
@__func__.ossl_do_PVK_header = private unnamed_addr constant [19 x i8] c"ossl_do_PVK_header\00", align 1
@__func__.i2b_PVK_bio_ex = private unnamed_addr constant [15 x i8] c"i2b_PVK_bio_ex\00", align 1
@__func__.do_b2i_key = private unnamed_addr constant [11 x i8] c"do_b2i_key\00", align 1
@__func__.evp_pkey_new0_key = private unnamed_addr constant [18 x i8] c"evp_pkey_new0_key\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"DSA\00", align 1
@__func__.do_i2b = private unnamed_addr constant [7 x i8] c"do_i2b\00", align 1
@__func__.check_bitlen_rsa = private unnamed_addr constant [17 x i8] c"check_bitlen_rsa\00", align 1
@__func__.check_bitlen_dsa = private unnamed_addr constant [17 x i8] c"check_bitlen_dsa\00", align 1
@__func__.do_PVK_key_bio = private unnamed_addr constant [15 x i8] c"do_PVK_key_bio\00", align 1
@__func__.do_PVK_body_key = private unnamed_addr constant [16 x i8] c"do_PVK_body_key\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"RC4\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1
@__func__.i2b_PVK = private unnamed_addr constant [8 x i8] c"i2b_PVK\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_do_blob_header(i8** nocapture noundef %in, i32 noundef %length, i32* nocapture noundef %pmagic, i32* nocapture noundef writeonly %pbitlen, i32* nocapture noundef %pisdss, i32* nocapture noundef %pispub) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %1 = load i8*, i8** %in, align 8, !tbaa !4
  %cmp = icmp ult i32 %length, 16
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %2 = load i8, i8* %1, align 1, !tbaa !8
  switch i8 %2, label %cleanup [
    i8 6, label %sw.bb
    i8 7, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.end
  %3 = load i32, i32* %pispub, align 4, !tbaa !9
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then3, label %sw.epilog

if.then3:                                         ; preds = %sw.bb
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 171, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ossl_do_blob_header, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 119, i8* noundef null) #7
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  %4 = load i32, i32* %pispub, align 4, !tbaa !9
  %cmp6 = icmp eq i32 %4, 1
  br i1 %cmp6, label %if.then8, label %sw.epilog

if.then8:                                         ; preds = %sw.bb5
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 179, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ossl_do_blob_header, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 120, i8* noundef null) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb
  %storemerge = phi i32 [ 1, %sw.bb ], [ 0, %sw.bb5 ]
  store i32 %storemerge, i32* %pispub, align 4, !tbaa !9
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1
  %5 = load i8, i8* %incdec.ptr, align 1, !tbaa !8
  %cmp12.not = icmp eq i8 %5, 2
  br i1 %cmp12.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %sw.epilog
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 191, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ossl_do_blob_header, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 117, i8* noundef null) #7
  br label %cleanup

if.end15:                                         ; preds = %sw.epilog
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 8
  store i8* %add.ptr, i8** %p, align 8, !tbaa !4
  %call = call fastcc i32 @read_ledword(i8** noundef nonnull %p) #8
  store i32 %call, i32* %pmagic, align 4, !tbaa !9
  %call16 = call fastcc i32 @read_ledword(i8** noundef nonnull %p) #8
  store i32 %call16, i32* %pbitlen, align 4, !tbaa !9
  %6 = load i32, i32* %pmagic, align 4, !tbaa !9
  switch i32 %6, label %sw.default27 [
    i32 827544388, label %sw.bb17
    i32 826364754, label %sw.bb17
    i32 844321604, label %sw.bb22
    i32 843141970, label %sw.bb22
  ]

sw.bb17:                                          ; preds = %if.end15, %if.end15
  %7 = load i32, i32* %pispub, align 4, !tbaa !9
  %cmp18 = icmp eq i32 %7, 0
  br i1 %cmp18, label %if.then20, label %sw.epilog28

if.then20:                                        ; preds = %sw.bb17
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 204, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ossl_do_blob_header, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 119, i8* noundef null) #7
  br label %cleanup

sw.bb22:                                          ; preds = %if.end15, %if.end15
  %8 = load i32, i32* %pispub, align 4, !tbaa !9
  %cmp23 = icmp eq i32 %8, 1
  br i1 %cmp23, label %if.then25, label %sw.epilog28

if.then25:                                        ; preds = %sw.bb22
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 212, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ossl_do_blob_header, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 120, i8* noundef null) #7
  br label %cleanup

sw.default27:                                     ; preds = %if.end15
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 218, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ossl_do_blob_header, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 116, i8* noundef null) #7
  br label %cleanup

sw.epilog28:                                      ; preds = %sw.bb22, %sw.bb17
  switch i32 %6, label %sw.default39 [
    i32 827544388, label %sw.bb29
    i32 844321604, label %sw.bb29
    i32 826364754, label %sw.bb34
    i32 843141970, label %sw.bb34
  ]

sw.bb29:                                          ; preds = %sw.epilog28, %sw.epilog28
  %9 = load i32, i32* %pisdss, align 4, !tbaa !9
  %cmp30 = icmp eq i32 %9, 0
  br i1 %cmp30, label %if.then32, label %sw.epilog40

if.then32:                                        ; preds = %sw.bb29
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 227, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ossl_do_blob_header, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 131, i8* noundef null) #7
  br label %cleanup

sw.bb34:                                          ; preds = %sw.epilog28, %sw.epilog28
  %10 = load i32, i32* %pisdss, align 4, !tbaa !9
  %cmp35 = icmp eq i32 %10, 1
  br i1 %cmp35, label %if.then37, label %sw.epilog40

if.then37:                                        ; preds = %sw.bb34
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 235, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ossl_do_blob_header, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 132, i8* noundef null) #7
  br label %cleanup

sw.default39:                                     ; preds = %sw.epilog28
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 242, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ossl_do_blob_header, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 116, i8* noundef null) #7
  br label %cleanup

sw.epilog40:                                      ; preds = %sw.bb34, %sw.bb29
  %storemerge52 = phi i32 [ 1, %sw.bb29 ], [ 0, %sw.bb34 ]
  store i32 %storemerge52, i32* %pisdss, align 4, !tbaa !9
  %11 = load i8*, i8** %p, align 8, !tbaa !4
  store i8* %11, i8** %in, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %sw.epilog40, %sw.default39, %if.then37, %if.then32, %sw.default27, %if.then25, %if.then20, %if.then14, %if.then8, %if.then3
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %if.then14 ], [ -1, %sw.default27 ], [ 0, %if.then25 ], [ -1, %sw.default39 ], [ 0, %if.then37 ], [ 1, %sw.epilog40 ], [ 0, %if.then32 ], [ 0, %if.then20 ], [ 0, %if.then3 ], [ 0, %entry ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @read_ledword(i8** nocapture noundef %in) unnamed_addr #3 {
entry:
  %0 = load i8*, i8** %in, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1
  %1 = load i8, i8* %0, align 1, !tbaa !8
  %conv = zext i8 %1 to i32
  %incdec.ptr1 = getelementptr inbounds i8, i8* %0, i64 2
  %2 = load i8, i8* %incdec.ptr, align 1, !tbaa !8
  %conv2 = zext i8 %2 to i32
  %shl = shl nuw nsw i32 %conv2, 8
  %or = or i32 %shl, %conv
  %incdec.ptr3 = getelementptr inbounds i8, i8* %0, i64 3
  %3 = load i8, i8* %incdec.ptr1, align 1, !tbaa !8
  %conv4 = zext i8 %3 to i32
  %shl5 = shl nuw nsw i32 %conv4, 16
  %or6 = or i32 %or, %shl5
  %incdec.ptr7 = getelementptr inbounds i8, i8* %0, i64 4
  %4 = load i8, i8* %incdec.ptr3, align 1, !tbaa !8
  %conv8 = zext i8 %4 to i32
  %shl9 = shl nuw i32 %conv8, 24
  %or10 = or i32 %or6, %shl9
  store i8* %incdec.ptr7, i8** %in, align 8, !tbaa !4
  ret i32 %or10
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i32 @ossl_blob_length(i32 noundef %bitlen, i32 noundef %isdss, i32 noundef %ispub) local_unnamed_addr #4 {
entry:
  %add = add i32 %bitlen, 7
  %shr = lshr i32 %add, 3
  %add1 = add i32 %bitlen, 15
  %shr2 = lshr i32 %add1, 4
  %tobool.not = icmp eq i32 %isdss, 0
  %tobool9.not = icmp eq i32 %ispub, 0
  br i1 %tobool.not, label %if.else8, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool9.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  %mul = mul nuw nsw i32 %shr, 3
  %add5 = add nuw nsw i32 %mul, 44
  br label %cleanup

if.else:                                          ; preds = %if.then
  %mul6 = shl nuw nsw i32 %shr, 1
  %add7 = add nuw nsw i32 %mul6, 64
  br label %cleanup

if.else8:                                         ; preds = %entry
  br i1 %tobool9.not, label %if.else12, label %if.then10

if.then10:                                        ; preds = %if.else8
  %add11 = add nuw nsw i32 %shr, 4
  br label %cleanup

if.else12:                                        ; preds = %if.else8
  %mul13 = shl nuw nsw i32 %shr, 1
  %add14 = add nuw nsw i32 %mul13, 4
  %mul15 = mul nuw nsw i32 %shr2, 5
  %add16 = add nuw i32 %add14, %mul15
  br label %cleanup

cleanup:                                          ; preds = %if.else12, %if.then10, %if.else, %if.then4
  %retval.0 = phi i32 [ %add5, %if.then4 ], [ %add7, %if.else ], [ %add11, %if.then10 ], [ %add16, %if.else12 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @ossl_b2i(i8** nocapture noundef readonly %in, i32 noundef %length, i32* nocapture noundef %ispub) local_unnamed_addr #0 {
entry:
  %isdss = alloca i32, align 4
  %0 = bitcast i32* %isdss to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  store i32 -1, i32* %isdss, align 4, !tbaa !9
  %call = call fastcc i8* @do_b2i_key(i8** noundef %in, i32 noundef %length, i32* noundef nonnull %isdss, i32* noundef %ispub) #8
  %1 = load i32, i32* %isdss, align 4, !tbaa !9
  %cmp = icmp eq i32 %1, 0
  %cmp1 = icmp eq i32 %1, 1
  %cond = select i1 %cmp1, i32 116, i32 0
  %cond2 = select i1 %cmp, i32 6, i32 %cond
  %call3 = tail call fastcc %struct.evp_pkey_st* @evp_pkey_new0_key(i8* noundef %call, i32 noundef %cond2) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret %struct.evp_pkey_st* %call3
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @do_b2i_key(i8** nocapture noundef readonly %in, i32 noundef %length, i32* nocapture noundef %isdss, i32* nocapture noundef %ispub) unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %bitlen = alloca i32, align 4
  %magic = alloca i32, align 4
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %1 = load i8*, i8** %in, align 8, !tbaa !4
  store i8* %1, i8** %p, align 8, !tbaa !4
  %2 = bitcast i32* %bitlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #6
  %3 = bitcast i32* %magic to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #6
  %call = call i32 @ossl_do_blob_header(i8** noundef nonnull %p, i32 noundef %length, i32* noundef nonnull %magic, i32* noundef nonnull %bitlen, i32* noundef %isdss, i32* noundef %ispub) #8
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %sub = add i32 %length, -16
  %4 = load i32, i32* %bitlen, align 4, !tbaa !9
  %5 = load i32, i32* %isdss, align 4, !tbaa !9
  %6 = load i32, i32* %ispub, align 4, !tbaa !9
  %call1 = tail call i32 @ossl_blob_length(i32 noundef %4, i32 noundef %5, i32 noundef %6) #8
  %cmp2 = icmp ult i32 %sub, %call1
  br i1 %cmp2, label %cleanup.sink.split, label %if.end4

if.end4:                                          ; preds = %if.end
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end4
  %call6 = call %struct.rsa_st* @ossl_b2i_RSA_after_header(i8** noundef nonnull %p, i32 noundef %4, i32 noundef %6) #8
  %7 = bitcast %struct.rsa_st* %call6 to i8*
  br label %if.end8

if.else:                                          ; preds = %if.end4
  %call7 = call %struct.dsa_st* @ossl_b2i_DSA_after_header(i8** noundef nonnull %p, i32 noundef %4, i32 noundef %6) #8
  %8 = bitcast %struct.dsa_st* %call7 to i8*
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  %key.0 = phi i8* [ %8, %if.else ], [ %7, %if.then5 ]
  %cmp9 = icmp eq i8* %key.0, null
  br i1 %cmp9, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end8, %if.end, %entry
  %.sink24 = phi i32 [ 290, %entry ], [ 295, %if.end ], [ 306, %if.end8 ]
  %.sink = phi i32 [ 122, %entry ], [ 123, %if.end ], [ 110, %if.end8 ]
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink24, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.do_b2i_key, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef %.sink, i8* noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end8
  %retval.0 = phi i8* [ %key.0, %if.end8 ], [ null, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_st* @evp_pkey_new0_key(i8* noundef %key, i32 noundef %evp_type) unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %key, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  switch i32 %evp_type, label %cleanup.sink.split [
    i32 116, label %if.end5
    i32 6, label %if.end5
  ]

if.end5:                                          ; preds = %if.end, %if.end
  %call = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #7
  %cmp6.not = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp6.not, label %if.end16, label %if.then7

if.then7:                                         ; preds = %if.end5
  switch i32 %evp_type, label %cleanup [
    i32 6, label %sw.bb
    i32 116, label %sw.bb11
  ]

sw.bb:                                            ; preds = %if.then7
  %0 = bitcast i8* %key to %struct.rsa_st*
  %call8 = tail call i32 @EVP_PKEY_set1_RSA(%struct.evp_pkey_st* noundef nonnull %call, %struct.rsa_st* noundef nonnull %0) #7
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %sw.bb17

if.end10:                                         ; preds = %sw.bb
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call) #7
  br label %sw.bb17

sw.bb11:                                          ; preds = %if.then7
  %1 = bitcast i8* %key to %struct.dsa_st*
  %call12 = tail call i32 @EVP_PKEY_set1_DSA(%struct.evp_pkey_st* noundef nonnull %call, %struct.dsa_st* noundef nonnull %1) #7
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %sw.bb18

if.end15:                                         ; preds = %sw.bb11
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call) #7
  br label %sw.bb18

if.end16:                                         ; preds = %if.end5
  switch i32 %evp_type, label %cleanup.sink.split [
    i32 6, label %sw.bb17
    i32 116, label %sw.bb18
  ]

sw.bb17:                                          ; preds = %if.end16, %sw.bb, %if.end10
  %pkey.037 = phi %struct.evp_pkey_st* [ null, %if.end10 ], [ %call, %sw.bb ], [ null, %if.end16 ]
  %.pre-phi = bitcast i8* %key to %struct.rsa_st*
  tail call void @RSA_free(%struct.rsa_st* noundef nonnull %.pre-phi) #7
  br label %sw.epilog19

sw.bb18:                                          ; preds = %if.end16, %sw.bb11, %if.end15
  %pkey.043 = phi %struct.evp_pkey_st* [ null, %if.end15 ], [ %call, %sw.bb11 ], [ null, %if.end16 ]
  %.pre-phi45 = bitcast i8* %key to %struct.dsa_st*
  tail call void @DSA_free(%struct.dsa_st* noundef nonnull %.pre-phi45) #7
  br label %sw.epilog19

sw.epilog19:                                      ; preds = %sw.bb18, %sw.bb17
  %pkey.038 = phi %struct.evp_pkey_st* [ %pkey.043, %sw.bb18 ], [ %pkey.037, %sw.bb17 ]
  %cmp20 = icmp eq %struct.evp_pkey_st* %pkey.038, null
  br i1 %cmp20, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %sw.epilog19, %if.end16, %if.end
  %.sink51 = phi i32 [ 82, %if.end ], [ 117, %if.end16 ], [ 117, %sw.epilog19 ]
  %.sink = phi i32 [ 786691, %if.end ], [ 786688, %if.end16 ], [ 786688, %sw.epilog19 ]
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink51, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.evp_pkey_new0_key, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef %.sink, i8* noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then7, %sw.epilog19, %entry
  %retval.0 = phi %struct.evp_pkey_st* [ null, %entry ], [ %pkey.038, %sw.epilog19 ], [ %call, %if.then7 ], [ null, %cleanup.sink.split ]
  ret %struct.evp_pkey_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @ossl_b2i_bio(%struct.bio_st* noundef %in, i32* nocapture noundef %ispub) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %hdr_buf = alloca [16 x i8], align 16
  %bitlen = alloca i32, align 4
  %magic = alloca i32, align 4
  %isdss = alloca i32, align 4
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* %hdr_buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #6
  %2 = bitcast i32* %bitlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #6
  %3 = bitcast i32* %magic to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #6
  %4 = bitcast i32* %isdss to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #6
  store i32 -1, i32* %isdss, align 4, !tbaa !9
  %call = call i32 @BIO_read(%struct.bio_st* noundef %in, i8* noundef nonnull %1, i32 noundef 16) #7
  %cmp.not = icmp eq i32 %call, 16
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 331, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.ossl_b2i_bio, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 123, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  store i8* %1, i8** %p, align 8, !tbaa !4
  %call2 = call i32 @ossl_do_blob_header(i8** noundef nonnull %p, i32 noundef 16, i32* noundef nonnull %magic, i32* noundef nonnull %bitlen, i32* noundef nonnull %isdss, i32* noundef %ispub) #8
  %cmp3 = icmp slt i32 %call2, 1
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %5 = load i32, i32* %bitlen, align 4, !tbaa !9
  %6 = load i32, i32* %isdss, align 4, !tbaa !9
  %7 = load i32, i32* %ispub, align 4, !tbaa !9
  %call6 = call i32 @ossl_blob_length(i32 noundef %5, i32 noundef %6, i32 noundef %7) #8
  %cmp7 = icmp ugt i32 %call6, 102400
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 340, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.ossl_b2i_bio, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 128, i8* noundef null) #7
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %conv = zext i32 %call6 to i64
  %call10 = call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 343) #7
  %cmp11 = icmp eq i8* %call10, null
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 345, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.ossl_b2i_bio, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 786688, i8* noundef null) #7
  br label %err

if.end14:                                         ; preds = %if.end9
  store i8* %call10, i8** %p, align 8, !tbaa !4
  %call15 = call i32 @BIO_read(%struct.bio_st* noundef %in, i8* noundef nonnull %call10, i32 noundef %call6) #7
  %cmp16.not = icmp eq i32 %call15, %call6
  br i1 %cmp16.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end14
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 350, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.ossl_b2i_bio, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 123, i8* noundef null) #7
  br label %err

if.end19:                                         ; preds = %if.end14
  %tobool.not = icmp eq i32 %6, 0
  %8 = load i32, i32* %ispub, align 4, !tbaa !9
  br i1 %tobool.not, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end19
  %call21 = call %struct.rsa_st* @ossl_b2i_RSA_after_header(i8** noundef nonnull %p, i32 noundef %5, i32 noundef %8) #8
  %9 = bitcast %struct.rsa_st* %call21 to i8*
  br label %if.end23

if.else:                                          ; preds = %if.end19
  %call22 = call %struct.dsa_st* @ossl_b2i_DSA_after_header(i8** noundef nonnull %p, i32 noundef %5, i32 noundef %8) #8
  %10 = bitcast %struct.dsa_st* %call22 to i8*
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then20
  %key.0 = phi i8* [ %10, %if.else ], [ %9, %if.then20 ]
  %cmp24 = icmp eq i8* %key.0, null
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end23
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 362, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.ossl_b2i_bio, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 110, i8* noundef null) #7
  br label %err

if.end27:                                         ; preds = %if.end23
  %cmp30 = icmp eq i32 %6, 1
  %cond = select i1 %cmp30, i32 116, i32 0
  %cond32 = select i1 %tobool.not, i32 6, i32 %cond
  %call33 = call fastcc %struct.evp_pkey_st* @evp_pkey_new0_key(i8* noundef nonnull %key.0, i32 noundef %cond32) #8
  br label %err

err:                                              ; preds = %if.end27, %if.then26, %if.then18, %if.then13
  %pkey.0 = phi %struct.evp_pkey_st* [ null, %if.then13 ], [ null, %if.then18 ], [ null, %if.then26 ], [ %call33, %if.end27 ]
  call void @CRYPTO_free(i8* noundef %call10, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 368) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %err, %if.then8, %if.then
  %retval.0 = phi %struct.evp_pkey_st* [ null, %if.then ], [ null, %if.then8 ], [ %pkey.0, %err ], [ null, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret %struct.evp_pkey_st* %retval.0
}

declare i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.rsa_st* @ossl_b2i_RSA_after_header(i8** nocapture noundef %in, i32 noundef %bitlen, i32 noundef %ispub) local_unnamed_addr #0 {
entry:
  %pin = alloca i8*, align 8
  %n = alloca %struct.bignum_st*, align 8
  %d = alloca %struct.bignum_st*, align 8
  %p = alloca %struct.bignum_st*, align 8
  %q = alloca %struct.bignum_st*, align 8
  %dmp1 = alloca %struct.bignum_st*, align 8
  %dmq1 = alloca %struct.bignum_st*, align 8
  %iqmp = alloca %struct.bignum_st*, align 8
  %0 = bitcast i8** %pin to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %1 = load i8*, i8** %in, align 8, !tbaa !4
  store i8* %1, i8** %pin, align 8, !tbaa !4
  %2 = bitcast %struct.bignum_st** %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #6
  store %struct.bignum_st* null, %struct.bignum_st** %n, align 8, !tbaa !4
  %3 = bitcast %struct.bignum_st** %d to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6
  store %struct.bignum_st* null, %struct.bignum_st** %d, align 8, !tbaa !4
  %4 = bitcast %struct.bignum_st** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #6
  store %struct.bignum_st* null, %struct.bignum_st** %p, align 8, !tbaa !4
  %5 = bitcast %struct.bignum_st** %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #6
  store %struct.bignum_st* null, %struct.bignum_st** %q, align 8, !tbaa !4
  %6 = bitcast %struct.bignum_st** %dmp1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6
  store %struct.bignum_st* null, %struct.bignum_st** %dmp1, align 8, !tbaa !4
  %7 = bitcast %struct.bignum_st** %dmq1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6
  store %struct.bignum_st* null, %struct.bignum_st** %dmq1, align 8, !tbaa !4
  %8 = bitcast %struct.bignum_st** %iqmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #6
  store %struct.bignum_st* null, %struct.bignum_st** %iqmp, align 8, !tbaa !4
  %add = add i32 %bitlen, 7
  %shr = lshr i32 %add, 3
  %add1 = add i32 %bitlen, 15
  %shr2 = lshr i32 %add1, 4
  %call = tail call %struct.rsa_st* @RSA_new() #7
  %cmp = icmp eq %struct.rsa_st* %call, null
  br i1 %cmp, label %memerr, label %if.end

if.end:                                           ; preds = %entry
  %call3 = tail call %struct.bignum_st* @BN_new() #7
  %cmp4 = icmp eq %struct.bignum_st* %call3, null
  br i1 %cmp4, label %memerr, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = call fastcc i32 @read_ledword(i8** noundef nonnull %pin) #8
  %conv = zext i32 %call7 to i64
  %call8 = tail call i32 @BN_set_word(%struct.bignum_st* noundef nonnull %call3, i64 noundef %conv) #7
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %memerr, label %if.end10

if.end10:                                         ; preds = %if.end6
  %call11 = call fastcc i32 @read_lebn(i8** noundef nonnull %pin, i32 noundef %shr, %struct.bignum_st** noundef nonnull %n) #8
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %memerr, label %if.end14

if.end14:                                         ; preds = %if.end10
  %tobool15.not = icmp eq i32 %ispub, 0
  br i1 %tobool15.not, label %if.then16, label %if.end49

if.then16:                                        ; preds = %if.end14
  %call17 = call fastcc i32 @read_lebn(i8** noundef nonnull %pin, i32 noundef %shr2, %struct.bignum_st** noundef nonnull %p) #8
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %memerr, label %if.end20

if.end20:                                         ; preds = %if.then16
  %call21 = call fastcc i32 @read_lebn(i8** noundef nonnull %pin, i32 noundef %shr2, %struct.bignum_st** noundef nonnull %q) #8
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %memerr, label %if.end24

if.end24:                                         ; preds = %if.end20
  %call25 = call fastcc i32 @read_lebn(i8** noundef nonnull %pin, i32 noundef %shr2, %struct.bignum_st** noundef nonnull %dmp1) #8
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %memerr, label %if.end28

if.end28:                                         ; preds = %if.end24
  %call29 = call fastcc i32 @read_lebn(i8** noundef nonnull %pin, i32 noundef %shr2, %struct.bignum_st** noundef nonnull %dmq1) #8
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %memerr, label %if.end32

if.end32:                                         ; preds = %if.end28
  %call33 = call fastcc i32 @read_lebn(i8** noundef nonnull %pin, i32 noundef %shr2, %struct.bignum_st** noundef nonnull %iqmp) #8
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %memerr, label %if.end36

if.end36:                                         ; preds = %if.end32
  %call37 = call fastcc i32 @read_lebn(i8** noundef nonnull %pin, i32 noundef %shr, %struct.bignum_st** noundef nonnull %d) #8
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %memerr, label %if.end40

if.end40:                                         ; preds = %if.end36
  %9 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  %10 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !4
  %call41 = tail call i32 @RSA_set0_factors(%struct.rsa_st* noundef nonnull %call, %struct.bignum_st* noundef %9, %struct.bignum_st* noundef %10) #7
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %memerr, label %if.end44

if.end44:                                         ; preds = %if.end40
  store %struct.bignum_st* null, %struct.bignum_st** %q, align 8, !tbaa !4
  store %struct.bignum_st* null, %struct.bignum_st** %p, align 8, !tbaa !4
  %11 = load %struct.bignum_st*, %struct.bignum_st** %dmp1, align 8, !tbaa !4
  %12 = load %struct.bignum_st*, %struct.bignum_st** %dmq1, align 8, !tbaa !4
  %13 = load %struct.bignum_st*, %struct.bignum_st** %iqmp, align 8, !tbaa !4
  %call45 = tail call i32 @RSA_set0_crt_params(%struct.rsa_st* noundef nonnull %call, %struct.bignum_st* noundef %11, %struct.bignum_st* noundef %12, %struct.bignum_st* noundef %13) #7
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %memerr, label %if.end48

if.end48:                                         ; preds = %if.end44
  store %struct.bignum_st* null, %struct.bignum_st** %iqmp, align 8, !tbaa !4
  store %struct.bignum_st* null, %struct.bignum_st** %dmq1, align 8, !tbaa !4
  store %struct.bignum_st* null, %struct.bignum_st** %dmp1, align 8, !tbaa !4
  %.pre = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !4
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.end14
  %14 = phi %struct.bignum_st* [ %.pre, %if.end48 ], [ null, %if.end14 ]
  %15 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !4
  %call50 = tail call i32 @RSA_set0_key(%struct.rsa_st* noundef nonnull %call, %struct.bignum_st* noundef %15, %struct.bignum_st* noundef nonnull %call3, %struct.bignum_st* noundef %14) #7
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %memerr, label %if.end53

if.end53:                                         ; preds = %if.end49
  %16 = load i8*, i8** %pin, align 8, !tbaa !4
  store i8* %16, i8** %in, align 8, !tbaa !4
  br label %cleanup

memerr:                                           ; preds = %if.end49, %if.end44, %if.end40, %if.end36, %if.end32, %if.end28, %if.end24, %if.end20, %if.then16, %if.end10, %if.end6, %if.end, %entry
  %e.0 = phi %struct.bignum_st* [ null, %entry ], [ null, %if.end ], [ %call3, %if.end49 ], [ %call3, %if.end44 ], [ %call3, %if.end40 ], [ %call3, %if.end36 ], [ %call3, %if.end32 ], [ %call3, %if.end28 ], [ %call3, %if.end24 ], [ %call3, %if.end20 ], [ %call3, %if.then16 ], [ %call3, %if.end10 ], [ %call3, %if.end6 ]
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 488, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ossl_b2i_RSA_after_header, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 786688, i8* noundef null) #7
  tail call void @BN_free(%struct.bignum_st* noundef %e.0) #7
  %17 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !4
  tail call void @BN_free(%struct.bignum_st* noundef %17) #7
  %18 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  tail call void @BN_free(%struct.bignum_st* noundef %18) #7
  %19 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !4
  tail call void @BN_free(%struct.bignum_st* noundef %19) #7
  %20 = load %struct.bignum_st*, %struct.bignum_st** %dmp1, align 8, !tbaa !4
  tail call void @BN_free(%struct.bignum_st* noundef %20) #7
  %21 = load %struct.bignum_st*, %struct.bignum_st** %dmq1, align 8, !tbaa !4
  tail call void @BN_free(%struct.bignum_st* noundef %21) #7
  %22 = load %struct.bignum_st*, %struct.bignum_st** %iqmp, align 8, !tbaa !4
  tail call void @BN_free(%struct.bignum_st* noundef %22) #7
  %23 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !4
  tail call void @BN_free(%struct.bignum_st* noundef %23) #7
  tail call void @RSA_free(%struct.rsa_st* noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %memerr, %if.end53
  %retval.0 = phi %struct.rsa_st* [ null, %memerr ], [ %call, %if.end53 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret %struct.rsa_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.dsa_st* @ossl_b2i_DSA_after_header(i8** nocapture noundef %in, i32 noundef %bitlen, i32 noundef %ispub) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %pbn = alloca %struct.bignum_st*, align 8
  %qbn = alloca %struct.bignum_st*, align 8
  %gbn = alloca %struct.bignum_st*, align 8
  %priv_key = alloca %struct.bignum_st*, align 8
  %pub_key = alloca %struct.bignum_st*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %1 = load i8*, i8** %in, align 8, !tbaa !4
  store i8* %1, i8** %p, align 8, !tbaa !4
  %2 = bitcast %struct.bignum_st** %pbn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #6
  store %struct.bignum_st* null, %struct.bignum_st** %pbn, align 8, !tbaa !4
  %3 = bitcast %struct.bignum_st** %qbn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6
  store %struct.bignum_st* null, %struct.bignum_st** %qbn, align 8, !tbaa !4
  %4 = bitcast %struct.bignum_st** %gbn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #6
  store %struct.bignum_st* null, %struct.bignum_st** %gbn, align 8, !tbaa !4
  %5 = bitcast %struct.bignum_st** %priv_key to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #6
  store %struct.bignum_st* null, %struct.bignum_st** %priv_key, align 8, !tbaa !4
  %6 = bitcast %struct.bignum_st** %pub_key to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6
  store %struct.bignum_st* null, %struct.bignum_st** %pub_key, align 8, !tbaa !4
  %add = add i32 %bitlen, 7
  %shr = lshr i32 %add, 3
  %call = tail call %struct.dsa_st* @DSA_new() #7
  %cmp = icmp eq %struct.dsa_st* %call, null
  br i1 %cmp, label %memerr, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @read_lebn(i8** noundef nonnull %p, i32 noundef %shr, %struct.bignum_st** noundef nonnull %pbn) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %memerr, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = call fastcc i32 @read_lebn(i8** noundef nonnull %p, i32 noundef 20, %struct.bignum_st** noundef nonnull %qbn) #8
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %memerr, label %if.end7

if.end7:                                          ; preds = %if.end3
  %call8 = call fastcc i32 @read_lebn(i8** noundef nonnull %p, i32 noundef %shr, %struct.bignum_st** noundef nonnull %gbn) #8
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %memerr, label %if.end11

if.end11:                                         ; preds = %if.end7
  %tobool12.not = icmp eq i32 %ispub, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end11
  %call14 = call fastcc i32 @read_lebn(i8** noundef nonnull %p, i32 noundef %shr, %struct.bignum_st** noundef nonnull %pub_key) #8
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %memerr, label %if.then13.if.end34_crit_edge

if.then13.if.end34_crit_edge:                     ; preds = %if.then13
  %.pre = load %struct.bignum_st*, %struct.bignum_st** %pbn, align 8, !tbaa !4
  %.pre63 = load %struct.bignum_st*, %struct.bignum_st** %gbn, align 8, !tbaa !4
  br label %if.end34

if.else:                                          ; preds = %if.end11
  %call18 = call fastcc i32 @read_lebn(i8** noundef nonnull %p, i32 noundef 20, %struct.bignum_st** noundef nonnull %priv_key) #8
  %tobool19.not = icmp eq i32 %call18, 0
  %.pre64 = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !4
  br i1 %tobool19.not, label %memerr, label %if.end21

if.end21:                                         ; preds = %if.else
  tail call void @BN_set_flags(%struct.bignum_st* noundef %.pre64, i32 noundef 4) #7
  %call22 = tail call %struct.bignum_st* @BN_new() #7
  store %struct.bignum_st* %call22, %struct.bignum_st** %pub_key, align 8, !tbaa !4
  %cmp23 = icmp eq %struct.bignum_st* %call22, null
  br i1 %cmp23, label %memerr, label %if.end25

if.end25:                                         ; preds = %if.end21
  %call26 = tail call %struct.bignum_ctx* @BN_CTX_new() #7
  %cmp27 = icmp eq %struct.bignum_ctx* %call26, null
  br i1 %cmp27, label %memerr, label %if.end29

if.end29:                                         ; preds = %if.end25
  %7 = load %struct.bignum_st*, %struct.bignum_st** %gbn, align 8, !tbaa !4
  %8 = load %struct.bignum_st*, %struct.bignum_st** %pbn, align 8, !tbaa !4
  %call30 = tail call i32 @BN_mod_exp(%struct.bignum_st* noundef nonnull %call22, %struct.bignum_st* noundef %7, %struct.bignum_st* noundef %.pre64, %struct.bignum_st* noundef %8, %struct.bignum_ctx* noundef nonnull %call26) #7
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %memerr, label %if.end33

if.end33:                                         ; preds = %if.end29
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef nonnull %call26) #7
  br label %if.end34

if.end34:                                         ; preds = %if.then13.if.end34_crit_edge, %if.end33
  %9 = phi %struct.bignum_st* [ null, %if.then13.if.end34_crit_edge ], [ %.pre64, %if.end33 ]
  %10 = phi %struct.bignum_st* [ %.pre63, %if.then13.if.end34_crit_edge ], [ %7, %if.end33 ]
  %11 = phi %struct.bignum_st* [ %.pre, %if.then13.if.end34_crit_edge ], [ %8, %if.end33 ]
  %12 = load %struct.bignum_st*, %struct.bignum_st** %qbn, align 8, !tbaa !4
  %call35 = tail call i32 @DSA_set0_pqg(%struct.dsa_st* noundef nonnull %call, %struct.bignum_st* noundef %11, %struct.bignum_st* noundef %12, %struct.bignum_st* noundef %10) #7
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %memerr, label %if.end38

if.end38:                                         ; preds = %if.end34
  store %struct.bignum_st* null, %struct.bignum_st** %gbn, align 8, !tbaa !4
  store %struct.bignum_st* null, %struct.bignum_st** %qbn, align 8, !tbaa !4
  store %struct.bignum_st* null, %struct.bignum_st** %pbn, align 8, !tbaa !4
  %13 = load %struct.bignum_st*, %struct.bignum_st** %pub_key, align 8, !tbaa !4
  %call39 = tail call i32 @DSA_set0_key(%struct.dsa_st* noundef nonnull %call, %struct.bignum_st* noundef %13, %struct.bignum_st* noundef %9) #7
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %memerr, label %if.end42

if.end42:                                         ; preds = %if.end38
  %14 = load i8*, i8** %p, align 8, !tbaa !4
  store i8* %14, i8** %in, align 8, !tbaa !4
  br label %cleanup

memerr:                                           ; preds = %if.else, %if.end38, %if.end34, %if.end29, %if.end25, %if.end21, %if.then13, %if.end7, %if.end3, %if.end, %entry
  %15 = phi %struct.bignum_st* [ null, %entry ], [ %9, %if.end38 ], [ %9, %if.end34 ], [ null, %if.then13 ], [ %.pre64, %if.end21 ], [ %.pre64, %if.end25 ], [ %.pre64, %if.end29 ], [ null, %if.end7 ], [ null, %if.end3 ], [ null, %if.end ], [ %.pre64, %if.else ]
  %ctx.1 = phi %struct.bignum_ctx* [ null, %entry ], [ null, %if.end38 ], [ null, %if.end34 ], [ null, %if.then13 ], [ null, %if.end21 ], [ null, %if.end25 ], [ %call26, %if.end29 ], [ null, %if.end7 ], [ null, %if.end3 ], [ null, %if.end ], [ null, %if.else ]
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 429, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ossl_b2i_DSA_after_header, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 786688, i8* noundef null) #7
  tail call void @DSA_free(%struct.dsa_st* noundef %call) #7
  %16 = load %struct.bignum_st*, %struct.bignum_st** %pbn, align 8, !tbaa !4
  tail call void @BN_free(%struct.bignum_st* noundef %16) #7
  %17 = load %struct.bignum_st*, %struct.bignum_st** %qbn, align 8, !tbaa !4
  tail call void @BN_free(%struct.bignum_st* noundef %17) #7
  %18 = load %struct.bignum_st*, %struct.bignum_st** %gbn, align 8, !tbaa !4
  tail call void @BN_free(%struct.bignum_st* noundef %18) #7
  %19 = load %struct.bignum_st*, %struct.bignum_st** %pub_key, align 8, !tbaa !4
  tail call void @BN_free(%struct.bignum_st* noundef %19) #7
  tail call void @BN_free(%struct.bignum_st* noundef %15) #7
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %ctx.1) #7
  br label %cleanup

cleanup:                                          ; preds = %memerr, %if.end42
  %retval.0 = phi %struct.dsa_st* [ null, %memerr ], [ %call, %if.end42 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret %struct.dsa_st* %retval.0
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.dsa_st* @DSA_new() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @read_lebn(i8** nocapture noundef %in, i32 noundef %nbyte, %struct.bignum_st** nocapture noundef writeonly %r) unnamed_addr #0 {
entry:
  %0 = load i8*, i8** %in, align 8, !tbaa !4
  %call = tail call %struct.bignum_st* @BN_lebin2bn(i8* noundef %0, i32 noundef %nbyte, %struct.bignum_st* noundef null) #7
  store %struct.bignum_st* %call, %struct.bignum_st** %r, align 8, !tbaa !4
  %cmp = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %in, align 8, !tbaa !4
  %idx.ext = zext i32 %nbyte to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  store i8* %add.ptr, i8** %in, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare void @BN_set_flags(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_new() local_unnamed_addr #2

declare %struct.bignum_ctx* @BN_CTX_new() local_unnamed_addr #2

declare i32 @BN_mod_exp(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @DSA_set0_pqg(%struct.dsa_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @DSA_set0_key(%struct.dsa_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare void @DSA_free(%struct.dsa_st* noundef) local_unnamed_addr #2

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

declare %struct.rsa_st* @RSA_new() local_unnamed_addr #2

declare i32 @BN_set_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @RSA_set0_factors(%struct.rsa_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @RSA_set0_crt_params(%struct.rsa_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @RSA_set0_key(%struct.rsa_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare void @RSA_free(%struct.rsa_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @b2i_PrivateKey(i8** nocapture noundef readonly %in, i64 noundef %length) local_unnamed_addr #0 {
entry:
  %ispub = alloca i32, align 4
  %0 = bitcast i32* %ispub to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  store i32 0, i32* %ispub, align 4, !tbaa !9
  %conv = trunc i64 %length to i32
  %call = call %struct.evp_pkey_st* @ossl_b2i(i8** noundef %in, i32 noundef %conv, i32* noundef nonnull %ispub) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret %struct.evp_pkey_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @b2i_PublicKey(i8** nocapture noundef readonly %in, i64 noundef %length) local_unnamed_addr #0 {
entry:
  %ispub = alloca i32, align 4
  %0 = bitcast i32* %ispub to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  store i32 1, i32* %ispub, align 4, !tbaa !9
  %conv = trunc i64 %length to i32
  %call = call %struct.evp_pkey_st* @ossl_b2i(i8** noundef %in, i32 noundef %conv, i32* noundef nonnull %ispub) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret %struct.evp_pkey_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @b2i_PrivateKey_bio(%struct.bio_st* noundef %in) local_unnamed_addr #0 {
entry:
  %ispub = alloca i32, align 4
  %0 = bitcast i32* %ispub to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  store i32 0, i32* %ispub, align 4, !tbaa !9
  %call = call %struct.evp_pkey_st* @ossl_b2i_bio(%struct.bio_st* noundef %in, i32* noundef nonnull %ispub) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret %struct.evp_pkey_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @b2i_PublicKey_bio(%struct.bio_st* noundef %in) local_unnamed_addr #0 {
entry:
  %ispub = alloca i32, align 4
  %0 = bitcast i32* %ispub to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  store i32 1, i32* %ispub, align 4, !tbaa !9
  %call = call %struct.evp_pkey_st* @ossl_b2i_bio(%struct.bio_st* noundef %in, i32* noundef nonnull %ispub) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret %struct.evp_pkey_st* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2b_PrivateKey_bio(%struct.bio_st* noundef %out, %struct.evp_pkey_st* noundef %pk) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @do_i2b_bio(%struct.bio_st* noundef %out, %struct.evp_pkey_st* noundef %pk, i32 noundef 0) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_i2b_bio(%struct.bio_st* noundef %out, %struct.evp_pkey_st* noundef %pk, i32 noundef %ispub) unnamed_addr #0 {
entry:
  %tmp = alloca i8*, align 8
  %0 = bitcast i8** %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store i8* null, i8** %tmp, align 8, !tbaa !4
  %call = call fastcc i32 @do_i2b(i8** noundef nonnull %tmp, %struct.evp_pkey_st* noundef %pk, i32 noundef %ispub) #8
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %tmp, align 8, !tbaa !4
  %call1 = call i32 @BIO_write(%struct.bio_st* noundef %out, i8* noundef %1, i32 noundef %call) #7
  %2 = load i8*, i8** %tmp, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 618) #7
  %cmp2 = icmp eq i32 %call1, %call
  %call. = select i1 %cmp2, i32 %call, i32 -1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %call., %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2b_PublicKey_bio(%struct.bio_st* noundef %out, %struct.evp_pkey_st* noundef %pk) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @do_i2b_bio(%struct.bio_st* noundef %out, %struct.evp_pkey_st* noundef %pk, i32 noundef 1) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_do_PVK_header(i8** nocapture noundef %in, i32 noundef %length, i32 noundef %skip_magic, i32* nocapture noundef %psaltlen, i32* nocapture noundef writeonly %pkeylen) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %1 = load i8*, i8** %in, align 8, !tbaa !4
  store i8* %1, i8** %p, align 8, !tbaa !4
  %tobool.not = icmp eq i32 %skip_magic, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %cmp = icmp ult i32 %length, 20
  br i1 %cmp, label %if.then1, label %if.end9

if.then1:                                         ; preds = %if.then
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 757, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ossl_do_PVK_header, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 125, i8* noundef null) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  %cmp2 = icmp ult i32 %length, 24
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.else
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 762, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ossl_do_PVK_header, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 125, i8* noundef null) #7
  br label %cleanup

if.end4:                                          ; preds = %if.else
  %call = call fastcc i32 @read_ledword(i8** noundef nonnull %p) #8
  %cmp5.not = icmp eq i32 %call, -1330253538
  br i1 %cmp5.not, label %if.end4.if.end9_crit_edge, label %if.then7

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  %.pre = load i8*, i8** %p, align 8, !tbaa !4
  br label %if.end9

if.then7:                                         ; preds = %if.end4
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 767, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ossl_do_PVK_header, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 116, i8* noundef null) #7
  br label %cleanup

if.end9:                                          ; preds = %if.end4.if.end9_crit_edge, %if.then
  %2 = phi i8* [ %.pre, %if.end4.if.end9_crit_edge ], [ %1, %if.then ]
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 4
  store i8* %add.ptr, i8** %p, align 8, !tbaa !4
  %call10 = call fastcc i32 @read_ledword(i8** noundef nonnull %p) #8
  %call11 = call fastcc i32 @read_ledword(i8** noundef nonnull %p) #8
  %call12 = call fastcc i32 @read_ledword(i8** noundef nonnull %p) #8
  store i32 %call12, i32* %psaltlen, align 4, !tbaa !9
  %call13 = call fastcc i32 @read_ledword(i8** noundef nonnull %p) #8
  store i32 %call13, i32* %pkeylen, align 4, !tbaa !9
  %cmp14 = icmp ugt i32 %call13, 102400
  br i1 %cmp14, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end9
  %3 = load i32, i32* %psaltlen, align 4, !tbaa !9
  %cmp16 = icmp ugt i32 %3, 10240
  br i1 %cmp16, label %cleanup, label %if.end19

if.end19:                                         ; preds = %lor.lhs.false
  %tobool20.not = icmp ne i32 %call11, 0
  %cmp21 = icmp eq i32 %3, 0
  %or.cond = select i1 %tobool20.not, i1 %cmp21, i1 false
  br i1 %or.cond, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end19
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 784, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ossl_do_PVK_header, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 121, i8* noundef null) #7
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %4 = load i8*, i8** %p, align 8, !tbaa !4
  store i8* %4, i8** %in, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %lor.lhs.false, %if.end24, %if.then23, %if.then7, %if.then3, %if.then1
  %retval.0 = phi i32 [ 0, %if.then1 ], [ 0, %if.then23 ], [ 1, %if.end24 ], [ 0, %if.then3 ], [ 0, %if.then7 ], [ 0, %lor.lhs.false ], [ 0, %if.end9 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.dsa_st* @b2i_DSA_PVK_bio_ex(%struct.bio_st* noundef %in, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %isdss = alloca i32, align 4
  %ispub = alloca i32, align 4
  %0 = bitcast i32* %isdss to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  store i32 1, i32* %isdss, align 4, !tbaa !9
  %1 = bitcast i32* %ispub to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #6
  store i32 0, i32* %ispub, align 4, !tbaa !9
  %call = call fastcc i8* @do_PVK_key_bio(%struct.bio_st* noundef %in, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, i32* noundef nonnull %isdss, i32* noundef nonnull %ispub, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #8
  %2 = bitcast i8* %call to %struct.dsa_st*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret %struct.dsa_st* %2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @do_PVK_key_bio(%struct.bio_st* noundef %in, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, i32* nocapture noundef %isdss, i32* nocapture noundef %ispub, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) unnamed_addr #0 {
entry:
  %pvk_hdr = alloca [24 x i8], align 16
  %p = alloca i8*, align 8
  %saltlen = alloca i32, align 4
  %keylen = alloca i32, align 4
  %0 = getelementptr inbounds [24 x i8], [24 x i8]* %pvk_hdr, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #6
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  %2 = bitcast i32* %saltlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #6
  %3 = bitcast i32* %keylen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #6
  %call = call i32 @BIO_read(%struct.bio_st* noundef %in, i8* noundef nonnull %0, i32 noundef 24) #7
  %cmp.not = icmp eq i32 %call, 24
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 923, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.do_PVK_key_bio, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 124, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  store i8* %0, i8** %p, align 8, !tbaa !4
  %call2 = call i32 @ossl_do_PVK_header(i8** noundef nonnull %p, i32 noundef 24, i32 noundef 0, i32* noundef nonnull %saltlen, i32* noundef nonnull %keylen) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %4 = load i32, i32* %keylen, align 4, !tbaa !9
  %5 = load i32, i32* %saltlen, align 4, !tbaa !9
  %add = add i32 %5, %4
  %conv = sext i32 %add to i64
  %call5 = call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 931) #7
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 933, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.do_PVK_key_bio, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  store i8* %call5, i8** %p, align 8, !tbaa !4
  %call10 = call i32 @BIO_read(%struct.bio_st* noundef %in, i8* noundef nonnull %call5, i32 noundef %add) #7
  %cmp11.not = icmp eq i32 %call10, %add
  br i1 %cmp11.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end9
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 938, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.do_PVK_key_bio, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 124, i8* noundef null) #7
  br label %err

if.end14:                                         ; preds = %if.end9
  %call15 = call fastcc i8* @do_PVK_body_key(i8** noundef nonnull %p, i32 noundef %5, i32 noundef %4, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, i32* noundef %isdss, i32* noundef %ispub, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #8
  br label %err

err:                                              ; preds = %if.end14, %if.then13
  %key.0 = phi i8* [ null, %if.then13 ], [ %call15, %if.end14 ]
  call void @CRYPTO_clear_free(i8* noundef nonnull %call5, i64 noundef %conv, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 944) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %err, %if.then8, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ null, %if.then8 ], [ %key.0, %err ], [ null, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #6
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.dsa_st* @b2i_DSA_PVK_bio(%struct.bio_st* noundef %in, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.dsa_st* @b2i_DSA_PVK_bio_ex(%struct.bio_st* noundef %in, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #8
  ret %struct.dsa_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.rsa_st* @b2i_RSA_PVK_bio_ex(%struct.bio_st* noundef %in, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %isdss = alloca i32, align 4
  %ispub = alloca i32, align 4
  %0 = bitcast i32* %isdss to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  store i32 0, i32* %isdss, align 4, !tbaa !9
  %1 = bitcast i32* %ispub to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #6
  store i32 0, i32* %ispub, align 4, !tbaa !9
  %call = call fastcc i8* @do_PVK_key_bio(%struct.bio_st* noundef %in, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, i32* noundef nonnull %isdss, i32* noundef nonnull %ispub, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #8
  %2 = bitcast i8* %call to %struct.rsa_st*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret %struct.rsa_st* %2
}

; Function Attrs: noinline nounwind uwtable
define %struct.rsa_st* @b2i_RSA_PVK_bio(%struct.bio_st* noundef %in, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.rsa_st* @b2i_RSA_PVK_bio_ex(%struct.bio_st* noundef %in, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #8
  ret %struct.rsa_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @b2i_PVK_bio_ex(%struct.bio_st* noundef %in, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, %struct.ossl_lib_ctx_st* nocapture readnone %libctx, i8* nocapture readnone %propq) local_unnamed_addr #0 {
entry:
  %isdss = alloca i32, align 4
  %ispub = alloca i32, align 4
  %0 = bitcast i32* %isdss to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  store i32 -1, i32* %isdss, align 4, !tbaa !9
  %1 = bitcast i32* %ispub to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #6
  store i32 -1, i32* %ispub, align 4, !tbaa !9
  %call = call fastcc i8* @do_PVK_key_bio(%struct.bio_st* noundef %in, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, i32* noundef nonnull %isdss, i32* noundef nonnull %ispub, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #8
  %2 = load i32, i32* %isdss, align 4, !tbaa !9
  %cmp = icmp eq i32 %2, 0
  %cmp1 = icmp eq i32 %2, 1
  %cond = select i1 %cmp1, i32 116, i32 0
  %cond2 = select i1 %cmp, i32 6, i32 %cond
  %call3 = tail call fastcc %struct.evp_pkey_st* @evp_pkey_new0_key(i8* noundef %call, i32 noundef %cond2) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret %struct.evp_pkey_st* %call3
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @b2i_PVK_bio(%struct.bio_st* noundef %in, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_pkey_st* @b2i_PVK_bio_ex(%struct.bio_st* noundef %in, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, %struct.ossl_lib_ctx_st* undef, i8* undef) #8
  ret %struct.evp_pkey_st* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2b_PVK_bio_ex(%struct.bio_st* noundef %out, %struct.evp_pkey_st* noundef %pk, i32 noundef %enclevel, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %tmp = alloca i8*, align 8
  %0 = bitcast i8** %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store i8* null, i8** %tmp, align 8, !tbaa !4
  %call = call fastcc i32 @i2b_PVK(i8** noundef nonnull %tmp, %struct.evp_pkey_st* noundef %pk, i32 noundef %enclevel, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #8
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %tmp, align 8, !tbaa !4
  %call1 = call i32 @BIO_write(%struct.bio_st* noundef %out, i8* noundef %1, i32 noundef %call) #7
  %2 = load i8*, i8** %tmp, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 1107) #7
  %cmp2 = icmp eq i32 %call1, %call
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 1111, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.i2b_PVK_bio_ex, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 118, i8* noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i32 [ -1, %if.end4 ], [ -1, %entry ], [ %call, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @i2b_PVK(i8** noundef %out, %struct.evp_pkey_st* noundef %pk, i32 noundef %enclevel, i32 (i8*, i32, i32, i8*)* noundef readonly %cb, i8* noundef %u, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %psbuf = alloca [1024 x i8], align 16
  %keybuf = alloca [20 x i8], align 16
  %enctmplen = alloca i32, align 4
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %tobool.not = icmp eq i32 %enclevel, 0
  %call = tail call fastcc i32 @do_i2b(i8** noundef null, %struct.evp_pkey_st* noundef %pk, i32 noundef 0) #8
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup99, label %if.end2

if.end2:                                          ; preds = %entry
  %spec.select = select i1 %tobool.not, i32 24, i32 40
  %add3 = add nuw nsw i32 %call, %spec.select
  %cmp4 = icmp eq i8** %out, null
  br i1 %cmp4, label %cleanup99, label %if.end6

if.end6:                                          ; preds = %if.end2
  %1 = load i8*, i8** %out, align 8, !tbaa !4
  %cmp7.not = icmp eq i8* %1, null
  br i1 %cmp7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  store i8* %1, i8** %p, align 8, !tbaa !4
  br label %if.end14

if.else:                                          ; preds = %if.end6
  %conv153 = zext i32 %add3 to i64
  %call9 = tail call i8* @CRYPTO_malloc(i64 noundef %conv153, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 1017) #7
  store i8* %call9, i8** %p, align 8, !tbaa !4
  %cmp10 = icmp eq i8* %call9, null
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.else
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 1019, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.i2b_PVK, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup99

if.end14:                                         ; preds = %if.else, %if.then8
  %start.0 = phi i8* [ null, %if.then8 ], [ %call9, %if.else ]
  %call15 = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #7
  %cmp16 = icmp eq %struct.evp_cipher_ctx_st* %call15, null
  br i1 %cmp16, label %error, label %if.end19

if.end19:                                         ; preds = %if.end14
  call fastcc void @write_ledword(i8** noundef nonnull %p, i32 noundef -1330253538) #8
  call fastcc void @write_ledword(i8** noundef nonnull %p, i32 noundef 0) #8
  %call20 = tail call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef %pk) #7
  %cmp21 = icmp eq i32 %call20, 6
  %. = select i1 %cmp21, i32 1, i32 2
  call fastcc void @write_ledword(i8** noundef nonnull %p, i32 noundef %.) #8
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = zext i1 %not.tobool.not to i32
  call fastcc void @write_ledword(i8** noundef nonnull %p, i32 noundef %cond) #8
  %cond28 = select i1 %tobool.not, i32 0, i32 16
  call fastcc void @write_ledword(i8** noundef nonnull %p, i32 noundef %cond28) #8
  call fastcc void @write_ledword(i8** noundef nonnull %p, i32 noundef %call) #8
  br i1 %tobool.not, label %if.end36.thread, label %if.then30

if.end36.thread:                                  ; preds = %if.end19
  %call37149 = call fastcc i32 @do_i2b(i8** noundef nonnull %p, %struct.evp_pkey_st* noundef %pk, i32 noundef 0) #8
  br label %if.end90

if.then30:                                        ; preds = %if.end19
  %2 = load i8*, i8** %p, align 8, !tbaa !4
  %call31 = tail call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %2, i64 noundef 16, i32 noundef 0) #7
  %cmp32 = icmp slt i32 %call31, 1
  br i1 %cmp32, label %error, label %if.then40

if.then40:                                        ; preds = %if.then30
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 16
  store i8* %add.ptr, i8** %p, align 8, !tbaa !4
  %call37 = call fastcc i32 @do_i2b(i8** noundef nonnull %p, %struct.evp_pkey_st* noundef %pk, i32 noundef 0) #8
  %3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %psbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %3) #6
  %4 = getelementptr inbounds [20 x i8], [20 x i8]* %keybuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %4) #6
  %5 = bitcast i32* %enctmplen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #6
  %tobool41.not = icmp eq i32 (i8*, i32, i32, i8*)* %cb, null
  br i1 %tobool41.not, label %if.else44, label %if.then42

if.then42:                                        ; preds = %if.then40
  %call43 = call i32 %cb(i8* noundef nonnull %3, i32 noundef 1024, i32 noundef 1, i8* noundef %u) #7
  br label %if.end47

if.else44:                                        ; preds = %if.then40
  %call46 = call i32 @PEM_def_callback(i8* noundef nonnull %3, i32 noundef 1024, i32 noundef 1, i8* noundef %u) #7
  br label %if.end47

if.end47:                                         ; preds = %if.else44, %if.then42
  %inlen.0 = phi i32 [ %call43, %if.then42 ], [ %call46, %if.else44 ]
  %cmp48 = icmp slt i32 %inlen.0, 1
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end47
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 1058, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.i2b_PVK, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 104, i8* noundef null) #7
  br label %cleanup.thread

if.end51:                                         ; preds = %if.end47
  %call54 = call fastcc i32 @derive_pvk_key(i8* noundef nonnull %4, i8* noundef %2, i32 noundef 16, i8* noundef nonnull %3, i32 noundef %inlen.0, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #8
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %cleanup.thread, label %if.end57

if.end57:                                         ; preds = %if.end51
  %call58 = call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef %propq) #7
  %cmp59 = icmp eq %struct.evp_cipher_st* %call58, null
  br i1 %cmp59, label %cleanup.thread, label %if.end62

if.end62:                                         ; preds = %if.end57
  %cmp63 = icmp eq i32 %enclevel, 1
  br i1 %cmp63, label %if.then65, label %if.end69

if.then65:                                        ; preds = %if.end62
  %add.ptr67 = getelementptr inbounds [20 x i8], [20 x i8]* %keybuf, i64 0, i64 5
  %call68 = call i8* @memset(i8* noundef nonnull %add.ptr67, i32 noundef 0, i64 noundef 11) #7
  br label %if.end69

if.end69:                                         ; preds = %if.then65, %if.end62
  %add.ptr71 = getelementptr inbounds i8, i8* %2, i64 24
  store i8* %add.ptr71, i8** %p, align 8, !tbaa !4
  %call73 = call i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef nonnull %call15, %struct.evp_cipher_st* noundef nonnull %call58, %struct.engine_st* noundef null, i8* noundef nonnull %4, i8* noundef null) #7
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %cleanup.thread, label %if.end76

if.end76:                                         ; preds = %if.end69
  call void @OPENSSL_cleanse(i8* noundef nonnull %4, i64 noundef 20) #7
  %6 = load i8*, i8** %p, align 8, !tbaa !4
  %sub = add nsw i32 %call, -8
  %call78 = call i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef nonnull %call15, i8* noundef %6, i32* noundef nonnull %enctmplen, i8* noundef %6, i32 noundef %sub) #7
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %cleanup.thread, label %if.end81

if.end81:                                         ; preds = %if.end76
  %7 = load i8*, i8** %p, align 8, !tbaa !4
  %8 = load i32, i32* %enctmplen, align 4, !tbaa !9
  %idx.ext = sext i32 %8 to i64
  %add.ptr82 = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  %call83 = call i32 @EVP_EncryptFinal_ex(%struct.evp_cipher_ctx_st* noundef nonnull %call15, i8* noundef %add.ptr82, i32* noundef nonnull %enctmplen) #7
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then50, %if.end51, %if.end57, %if.end69, %if.end76, %if.end81
  %rc4.0.ph = phi %struct.evp_cipher_st* [ %call58, %if.end76 ], [ %call58, %if.end69 ], [ null, %if.end57 ], [ null, %if.end51 ], [ null, %if.then50 ], [ %call58, %if.end81 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #6
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %3) #6
  br label %error

cleanup:                                          ; preds = %if.end81
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #6
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %3) #6
  br label %if.end90

if.end90:                                         ; preds = %cleanup, %if.end36.thread
  %rc4.1 = phi %struct.evp_cipher_st* [ %call58, %cleanup ], [ null, %if.end36.thread ]
  %9 = load i8*, i8** %out, align 8, !tbaa !4
  %cmp91 = icmp eq i8* %9, null
  br i1 %cmp91, label %if.then93, label %error

if.then93:                                        ; preds = %if.end90
  store i8* %start.0, i8** %out, align 8, !tbaa !4
  br label %error

error:                                            ; preds = %cleanup.thread, %if.end90, %if.then93, %if.then30, %if.end14
  %ret.0 = phi i32 [ -1, %if.end14 ], [ -1, %if.then30 ], [ %add3, %if.then93 ], [ %add3, %if.end90 ], [ -1, %cleanup.thread ]
  %rc4.2 = phi %struct.evp_cipher_st* [ null, %if.end14 ], [ null, %if.then30 ], [ %rc4.1, %if.then93 ], [ %rc4.1, %if.end90 ], [ %rc4.0.ph, %cleanup.thread ]
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %call15) #7
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %rc4.2) #7
  %10 = load i8*, i8** %out, align 8, !tbaa !4
  %cmp95 = icmp eq i8* %10, null
  br i1 %cmp95, label %if.then97, label %cleanup99

if.then97:                                        ; preds = %error
  call void @CRYPTO_free(i8* noundef %start.0, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 1091) #7
  br label %cleanup99

cleanup99:                                        ; preds = %error, %if.then97, %if.end2, %entry, %if.then12
  %retval.0 = phi i32 [ -1, %if.then12 ], [ -1, %entry ], [ %add3, %if.end2 ], [ %ret.0, %if.then97 ], [ %ret.0, %error ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.0
}

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2b_PVK_bio(%struct.bio_st* noundef %out, %struct.evp_pkey_st* noundef %pk, i32 noundef %enclevel, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @i2b_PVK_bio_ex(%struct.bio_st* noundef %out, %struct.evp_pkey_st* noundef %pk, i32 noundef %enclevel, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #8
  ret i32 %call
}

declare %struct.evp_pkey_st* @EVP_PKEY_new() local_unnamed_addr #2

declare i32 @EVP_PKEY_set1_RSA(%struct.evp_pkey_st* noundef, %struct.rsa_st* noundef) local_unnamed_addr #2

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_set1_DSA(%struct.evp_pkey_st* noundef, %struct.dsa_st* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_lebin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_i2b(i8** noundef %out, %struct.evp_pkey_st* noundef %pk, i32 noundef %ispub) unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %magic = alloca i32, align 4
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %1 = bitcast i32* %magic to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #6
  store i32 0, i32* %magic, align 4, !tbaa !9
  %call = tail call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef %pk, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call %struct.rsa_st* @EVP_PKEY_get0_RSA(%struct.evp_pkey_st* noundef %pk) #7
  %call2 = call fastcc i32 @check_bitlen_rsa(%struct.rsa_st* noundef %call1, i32 noundef %ispub, i32* noundef nonnull %magic) #8
  br label %if.end8

if.else:                                          ; preds = %entry
  %call3 = tail call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef %pk, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #7
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %end, label %if.then5

if.then5:                                         ; preds = %if.else
  %call6 = tail call %struct.dsa_st* @EVP_PKEY_get0_DSA(%struct.evp_pkey_st* noundef %pk) #7
  %call7 = call fastcc i32 @check_bitlen_dsa(%struct.dsa_st* noundef %call6, i32 noundef %ispub, i32* noundef nonnull %magic) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.then
  %bitlen.0 = phi i32 [ %call2, %if.then ], [ %call7, %if.then5 ]
  %cmp11 = phi i32 [ 0, %if.then ], [ 1, %if.then5 ]
  %keyalg.0 = phi i32 [ 41984, %if.then ], [ 8704, %if.then5 ]
  %cmp = icmp eq i32 %bitlen.0, 0
  br i1 %cmp, label %end, label %if.end10

if.end10:                                         ; preds = %if.end8
  %call12 = tail call i32 @ossl_blob_length(i32 noundef %bitlen.0, i32 noundef %cmp11, i32 noundef %ispub) #8
  %add = add i32 %call12, 16
  %cmp13 = icmp eq i8** %out, null
  br i1 %cmp13, label %end, label %if.end15

if.end15:                                         ; preds = %if.end10
  %2 = load i8*, i8** %out, align 8, !tbaa !4
  %tobool16.not = icmp eq i8* %2, null
  br i1 %tobool16.not, label %if.else18, label %if.end24

if.else18:                                        ; preds = %if.end15
  %conv = sext i32 %add to i64
  %call19 = tail call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 579) #7
  %cmp20 = icmp eq i8* %call19, null
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.else18
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 580, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @__func__.do_i2b, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 786688, i8* noundef null) #7
  br label %end

if.end23:                                         ; preds = %if.else18
  store i8* %call19, i8** %out, align 8, !tbaa !4
  br label %if.end24

if.end24:                                         ; preds = %if.end15, %if.end23
  %3 = phi i8* [ %call19, %if.end23 ], [ %2, %if.end15 ]
  %tobool25.not = icmp eq i32 %ispub, 0
  %spec.select = select i1 %tobool25.not, i8 7, i8 6
  %storemerge72 = getelementptr inbounds i8, i8* %3, i64 1
  store i8 %spec.select, i8* %3, align 1, !tbaa !8
  %incdec.ptr30 = getelementptr inbounds i8, i8* %3, i64 2
  store i8 2, i8* %storemerge72, align 1, !tbaa !8
  %incdec.ptr31 = getelementptr inbounds i8, i8* %3, i64 3
  store i8 0, i8* %incdec.ptr30, align 1, !tbaa !8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %3, i64 4
  store i8* %incdec.ptr32, i8** %p, align 8, !tbaa !4
  store i8 0, i8* %incdec.ptr31, align 1, !tbaa !8
  call fastcc void @write_ledword(i8** noundef nonnull %p, i32 noundef %keyalg.0) #8
  %4 = load i32, i32* %magic, align 4, !tbaa !9
  call fastcc void @write_ledword(i8** noundef nonnull %p, i32 noundef %4) #8
  call fastcc void @write_ledword(i8** noundef nonnull %p, i32 noundef %bitlen.0) #8
  br i1 %tobool.not, label %if.else37, label %if.then35

if.then35:                                        ; preds = %if.end24
  %call36 = tail call %struct.rsa_st* @EVP_PKEY_get0_RSA(%struct.evp_pkey_st* noundef %pk) #7
  call fastcc void @write_rsa(i8** noundef nonnull %p, %struct.rsa_st* noundef %call36, i32 noundef %ispub) #8
  br label %if.end39

if.else37:                                        ; preds = %if.end24
  %call38 = tail call %struct.dsa_st* @EVP_PKEY_get0_DSA(%struct.evp_pkey_st* noundef %pk) #7
  call fastcc void @write_dsa(i8** noundef nonnull %p, %struct.dsa_st* noundef %call38, i32 noundef %ispub) #8
  br label %if.end39

if.end39:                                         ; preds = %if.else37, %if.then35
  br i1 %tobool16.not, label %end, label %if.then41

if.then41:                                        ; preds = %if.end39
  %5 = load i8*, i8** %out, align 8, !tbaa !4
  %idx.ext = sext i32 %add to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  store i8* %add.ptr, i8** %out, align 8, !tbaa !4
  br label %end

end:                                              ; preds = %if.else, %if.end39, %if.then41, %if.end10, %if.end8, %if.then22
  %outlen.0 = phi i32 [ -1, %if.end8 ], [ %add, %if.end10 ], [ %add, %if.end39 ], [ %add, %if.then41 ], [ -1, %if.then22 ], [ -1, %if.else ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %outlen.0
}

declare i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_bitlen_rsa(%struct.rsa_st* noundef %rsa, i32 noundef %ispub, i32* nocapture noundef writeonly %pmagic) unnamed_addr #0 {
entry:
  %e = alloca %struct.bignum_st*, align 8
  %d = alloca %struct.bignum_st*, align 8
  %p = alloca %struct.bignum_st*, align 8
  %q = alloca %struct.bignum_st*, align 8
  %iqmp = alloca %struct.bignum_st*, align 8
  %dmp1 = alloca %struct.bignum_st*, align 8
  %dmq1 = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.bignum_st** %e to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  call void @RSA_get0_key(%struct.rsa_st* noundef %rsa, %struct.bignum_st** noundef null, %struct.bignum_st** noundef nonnull %e, %struct.bignum_st** noundef null) #7
  %1 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !4
  %call = call i32 @BN_num_bits(%struct.bignum_st* noundef %1) #7
  %cmp = icmp sgt i32 %call, 32
  br i1 %cmp, label %badkey, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @RSA_bits(%struct.rsa_st* noundef %rsa) #7
  %call2 = call i32 @RSA_size(%struct.rsa_st* noundef %rsa) #7
  %add = add nsw i32 %call1, 15
  %shr = ashr i32 %add, 4
  %tobool.not = icmp eq i32 %ispub, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  store i32 826364754, i32* %pmagic, align 4, !tbaa !9
  br label %cleanup40

if.else:                                          ; preds = %if.end
  %2 = bitcast %struct.bignum_st** %d to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #6
  %3 = bitcast %struct.bignum_st** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6
  %4 = bitcast %struct.bignum_st** %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #6
  %5 = bitcast %struct.bignum_st** %iqmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #6
  %6 = bitcast %struct.bignum_st** %dmp1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6
  %7 = bitcast %struct.bignum_st** %dmq1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6
  store i32 843141970, i32* %pmagic, align 4, !tbaa !9
  call void @RSA_get0_key(%struct.rsa_st* noundef %rsa, %struct.bignum_st** noundef null, %struct.bignum_st** noundef null, %struct.bignum_st** noundef nonnull %d) #7
  %8 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !4
  %call4 = call i32 @BN_num_bits(%struct.bignum_st* noundef %8) #7
  %add5 = add nsw i32 %call4, 7
  %div = sdiv i32 %add5, 8
  %cmp6 = icmp sgt i32 %div, %call2
  br i1 %cmp6, label %cleanup.thread, label %if.end8

if.end8:                                          ; preds = %if.else
  call void @RSA_get0_factors(%struct.rsa_st* noundef %rsa, %struct.bignum_st** noundef nonnull %p, %struct.bignum_st** noundef nonnull %q) #7
  call void @RSA_get0_crt_params(%struct.rsa_st* noundef %rsa, %struct.bignum_st** noundef nonnull %dmp1, %struct.bignum_st** noundef nonnull %dmq1, %struct.bignum_st** noundef nonnull %iqmp) #7
  %9 = load %struct.bignum_st*, %struct.bignum_st** %iqmp, align 8, !tbaa !4
  %call9 = call i32 @BN_num_bits(%struct.bignum_st* noundef %9) #7
  %add10 = add nsw i32 %call9, 7
  %div11 = sdiv i32 %add10, 8
  %cmp12 = icmp sgt i32 %div11, %shr
  br i1 %cmp12, label %cleanup.thread, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end8
  %10 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  %call13 = call i32 @BN_num_bits(%struct.bignum_st* noundef %10) #7
  %add14 = add nsw i32 %call13, 7
  %div15 = sdiv i32 %add14, 8
  %cmp16 = icmp sgt i32 %div15, %shr
  br i1 %cmp16, label %cleanup.thread, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %11 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !4
  %call18 = call i32 @BN_num_bits(%struct.bignum_st* noundef %11) #7
  %add19 = add nsw i32 %call18, 7
  %div20 = sdiv i32 %add19, 8
  %cmp21 = icmp sgt i32 %div20, %shr
  br i1 %cmp21, label %cleanup.thread, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false17
  %12 = load %struct.bignum_st*, %struct.bignum_st** %dmp1, align 8, !tbaa !4
  %call23 = call i32 @BN_num_bits(%struct.bignum_st* noundef %12) #7
  %add24 = add nsw i32 %call23, 7
  %div25 = sdiv i32 %add24, 8
  %cmp26 = icmp sgt i32 %div25, %shr
  br i1 %cmp26, label %cleanup.thread, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false22
  %13 = load %struct.bignum_st*, %struct.bignum_st** %dmq1, align 8, !tbaa !4
  %call28 = call i32 @BN_num_bits(%struct.bignum_st* noundef %13) #7
  %add29 = add nsw i32 %call28, 7
  %div30 = sdiv i32 %add29, 8
  %cmp31 = icmp sgt i32 %div30, %shr
  br i1 %cmp31, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.else, %lor.lhs.false22, %lor.lhs.false17, %lor.lhs.false, %if.end8, %lor.lhs.false27
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #6
  br label %badkey

cleanup:                                          ; preds = %lor.lhs.false27
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #6
  br label %cleanup40

badkey:                                           ; preds = %cleanup.thread, %entry
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 660, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.check_bitlen_rsa, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 126, i8* noundef null) #7
  br label %cleanup40

cleanup40:                                        ; preds = %cleanup, %badkey, %if.then3
  %retval.0 = phi i32 [ 0, %badkey ], [ %call1, %if.then3 ], [ %call1, %cleanup ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.0
}

declare %struct.rsa_st* @EVP_PKEY_get0_RSA(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_bitlen_dsa(%struct.dsa_st* noundef %dsa, i32 noundef %ispub, i32* nocapture noundef writeonly %pmagic) unnamed_addr #0 {
entry:
  %p = alloca %struct.bignum_st*, align 8
  %q = alloca %struct.bignum_st*, align 8
  %g = alloca %struct.bignum_st*, align 8
  %pub_key = alloca %struct.bignum_st*, align 8
  %priv_key = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.bignum_st** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store %struct.bignum_st* null, %struct.bignum_st** %p, align 8, !tbaa !4
  %1 = bitcast %struct.bignum_st** %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  store %struct.bignum_st* null, %struct.bignum_st** %q, align 8, !tbaa !4
  %2 = bitcast %struct.bignum_st** %g to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #6
  store %struct.bignum_st* null, %struct.bignum_st** %g, align 8, !tbaa !4
  %3 = bitcast %struct.bignum_st** %pub_key to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6
  store %struct.bignum_st* null, %struct.bignum_st** %pub_key, align 8, !tbaa !4
  %4 = bitcast %struct.bignum_st** %priv_key to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #6
  store %struct.bignum_st* null, %struct.bignum_st** %priv_key, align 8, !tbaa !4
  call void @DSA_get0_pqg(%struct.dsa_st* noundef %dsa, %struct.bignum_st** noundef nonnull %p, %struct.bignum_st** noundef nonnull %q, %struct.bignum_st** noundef nonnull %g) #7
  call void @DSA_get0_key(%struct.dsa_st* noundef %dsa, %struct.bignum_st** noundef nonnull %pub_key, %struct.bignum_st** noundef nonnull %priv_key) #7
  %5 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  %call = call i32 @BN_num_bits(%struct.bignum_st* noundef %5) #7
  %and = and i32 %call, 7
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %badkey

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !4
  %call1 = call i32 @BN_num_bits(%struct.bignum_st* noundef %6) #7
  %cmp.not = icmp eq i32 %call1, 160
  br i1 %cmp.not, label %lor.lhs.false2, label %badkey

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %7 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !4
  %call3 = call i32 @BN_num_bits(%struct.bignum_st* noundef %7) #7
  %cmp4 = icmp sgt i32 %call3, %call
  br i1 %cmp4, label %badkey, label %if.end

if.end:                                           ; preds = %lor.lhs.false2
  %tobool5.not = icmp eq i32 %ispub, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  %8 = load %struct.bignum_st*, %struct.bignum_st** %pub_key, align 8, !tbaa !4
  %call7 = call i32 @BN_num_bits(%struct.bignum_st* noundef %8) #7
  %cmp8 = icmp sgt i32 %call7, %call
  br i1 %cmp8, label %badkey, label %if.end15

if.else:                                          ; preds = %if.end
  %9 = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !4
  %call11 = call i32 @BN_num_bits(%struct.bignum_st* noundef %9) #7
  %cmp12 = icmp sgt i32 %call11, 160
  br i1 %cmp12, label %badkey, label %if.end15

if.end15:                                         ; preds = %if.else, %if.then6
  %storemerge = phi i32 [ 827544388, %if.then6 ], [ 844321604, %if.else ]
  store i32 %storemerge, i32* %pmagic, align 4, !tbaa !9
  br label %cleanup

badkey:                                           ; preds = %if.else, %if.then6, %entry, %lor.lhs.false, %lor.lhs.false2
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 711, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.check_bitlen_dsa, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 126, i8* noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %badkey, %if.end15
  %retval.0 = phi i32 [ 0, %badkey ], [ %call, %if.end15 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.0
}

declare %struct.dsa_st* @EVP_PKEY_get0_DSA(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @write_ledword(i8** nocapture noundef %out, i32 noundef %dw) unnamed_addr #3 {
entry:
  %0 = load i8*, i8** %out, align 8, !tbaa !4
  %conv = trunc i32 %dw to i8
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1
  store i8 %conv, i8* %0, align 1, !tbaa !8
  %shr = lshr i32 %dw, 8
  %conv2 = trunc i32 %shr to i8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %0, i64 2
  store i8 %conv2, i8* %incdec.ptr, align 1, !tbaa !8
  %shr4 = lshr i32 %dw, 16
  %conv6 = trunc i32 %shr4 to i8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %0, i64 3
  store i8 %conv6, i8* %incdec.ptr3, align 1, !tbaa !8
  %shr8 = lshr i32 %dw, 24
  %conv10 = trunc i32 %shr8 to i8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %0, i64 4
  store i8 %conv10, i8* %incdec.ptr7, align 1, !tbaa !8
  store i8* %incdec.ptr11, i8** %out, align 8, !tbaa !4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @write_rsa(i8** nocapture noundef %out, %struct.rsa_st* noundef %rsa, i32 noundef %ispub) unnamed_addr #0 {
entry:
  %n = alloca %struct.bignum_st*, align 8
  %d = alloca %struct.bignum_st*, align 8
  %e = alloca %struct.bignum_st*, align 8
  %p = alloca %struct.bignum_st*, align 8
  %q = alloca %struct.bignum_st*, align 8
  %iqmp = alloca %struct.bignum_st*, align 8
  %dmp1 = alloca %struct.bignum_st*, align 8
  %dmq1 = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.bignum_st** %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %1 = bitcast %struct.bignum_st** %d to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  %2 = bitcast %struct.bignum_st** %e to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #6
  %3 = bitcast %struct.bignum_st** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6
  %4 = bitcast %struct.bignum_st** %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #6
  %5 = bitcast %struct.bignum_st** %iqmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #6
  %6 = bitcast %struct.bignum_st** %dmp1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6
  %7 = bitcast %struct.bignum_st** %dmq1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6
  %call = tail call i32 @RSA_size(%struct.rsa_st* noundef %rsa) #7
  %call1 = tail call i32 @RSA_bits(%struct.rsa_st* noundef %rsa) #7
  %add = add nsw i32 %call1, 15
  %shr = ashr i32 %add, 4
  call void @RSA_get0_key(%struct.rsa_st* noundef %rsa, %struct.bignum_st** noundef nonnull %n, %struct.bignum_st** noundef nonnull %e, %struct.bignum_st** noundef nonnull %d) #7
  %8 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !4
  call fastcc void @write_lebn(i8** noundef %out, %struct.bignum_st* noundef %8, i32 noundef 4) #8
  %9 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !4
  call fastcc void @write_lebn(i8** noundef %out, %struct.bignum_st* noundef %9, i32 noundef %call) #8
  %tobool.not = icmp eq i32 %ispub, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call void @RSA_get0_factors(%struct.rsa_st* noundef %rsa, %struct.bignum_st** noundef nonnull %p, %struct.bignum_st** noundef nonnull %q) #7
  call void @RSA_get0_crt_params(%struct.rsa_st* noundef %rsa, %struct.bignum_st** noundef nonnull %dmp1, %struct.bignum_st** noundef nonnull %dmq1, %struct.bignum_st** noundef nonnull %iqmp) #7
  %10 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  call fastcc void @write_lebn(i8** noundef %out, %struct.bignum_st* noundef %10, i32 noundef %shr) #8
  %11 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !4
  call fastcc void @write_lebn(i8** noundef %out, %struct.bignum_st* noundef %11, i32 noundef %shr) #8
  %12 = load %struct.bignum_st*, %struct.bignum_st** %dmp1, align 8, !tbaa !4
  call fastcc void @write_lebn(i8** noundef %out, %struct.bignum_st* noundef %12, i32 noundef %shr) #8
  %13 = load %struct.bignum_st*, %struct.bignum_st** %dmq1, align 8, !tbaa !4
  call fastcc void @write_lebn(i8** noundef %out, %struct.bignum_st* noundef %13, i32 noundef %shr) #8
  %14 = load %struct.bignum_st*, %struct.bignum_st** %iqmp, align 8, !tbaa !4
  call fastcc void @write_lebn(i8** noundef %out, %struct.bignum_st* noundef %14, i32 noundef %shr) #8
  %15 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !4
  call fastcc void @write_lebn(i8** noundef %out, %struct.bignum_st* noundef %15, i32 noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @write_dsa(i8** nocapture noundef %out, %struct.dsa_st* noundef %dsa, i32 noundef %ispub) unnamed_addr #0 {
entry:
  %p = alloca %struct.bignum_st*, align 8
  %q = alloca %struct.bignum_st*, align 8
  %g = alloca %struct.bignum_st*, align 8
  %pub_key = alloca %struct.bignum_st*, align 8
  %priv_key = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.bignum_st** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store %struct.bignum_st* null, %struct.bignum_st** %p, align 8, !tbaa !4
  %1 = bitcast %struct.bignum_st** %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  store %struct.bignum_st* null, %struct.bignum_st** %q, align 8, !tbaa !4
  %2 = bitcast %struct.bignum_st** %g to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #6
  store %struct.bignum_st* null, %struct.bignum_st** %g, align 8, !tbaa !4
  %3 = bitcast %struct.bignum_st** %pub_key to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6
  store %struct.bignum_st* null, %struct.bignum_st** %pub_key, align 8, !tbaa !4
  %4 = bitcast %struct.bignum_st** %priv_key to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #6
  store %struct.bignum_st* null, %struct.bignum_st** %priv_key, align 8, !tbaa !4
  call void @DSA_get0_pqg(%struct.dsa_st* noundef %dsa, %struct.bignum_st** noundef nonnull %p, %struct.bignum_st** noundef nonnull %q, %struct.bignum_st** noundef nonnull %g) #7
  call void @DSA_get0_key(%struct.dsa_st* noundef %dsa, %struct.bignum_st** noundef nonnull %pub_key, %struct.bignum_st** noundef nonnull %priv_key) #7
  %5 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  %call = call i32 @BN_num_bits(%struct.bignum_st* noundef %5) #7
  %add = add nsw i32 %call, 7
  %div = sdiv i32 %add, 8
  %6 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  call fastcc void @write_lebn(i8** noundef %out, %struct.bignum_st* noundef %6, i32 noundef %div) #8
  %7 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !4
  call fastcc void @write_lebn(i8** noundef %out, %struct.bignum_st* noundef %7, i32 noundef 20) #8
  %8 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !4
  call fastcc void @write_lebn(i8** noundef %out, %struct.bignum_st* noundef %8, i32 noundef %div) #8
  %tobool.not = icmp eq i32 %ispub, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %9 = load %struct.bignum_st*, %struct.bignum_st** %pub_key, align 8, !tbaa !4
  call fastcc void @write_lebn(i8** noundef %out, %struct.bignum_st* noundef %9, i32 noundef %div) #8
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !4
  call fastcc void @write_lebn(i8** noundef %out, %struct.bignum_st* noundef %10, i32 noundef 20) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i8*, i8** %out, align 8, !tbaa !4
  %call1 = call i8* @memset(i8* noundef %11, i32 noundef 255, i64 noundef 24) #7
  %12 = load i8*, i8** %out, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 24
  store i8* %add.ptr, i8** %out, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret void
}

declare void @RSA_get0_key(%struct.rsa_st* noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef) local_unnamed_addr #2

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @RSA_bits(%struct.rsa_st* noundef) local_unnamed_addr #2

declare i32 @RSA_size(%struct.rsa_st* noundef) local_unnamed_addr #2

declare void @RSA_get0_factors(%struct.rsa_st* noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef) local_unnamed_addr #2

declare void @RSA_get0_crt_params(%struct.rsa_st* noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef) local_unnamed_addr #2

declare void @DSA_get0_pqg(%struct.dsa_st* noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef) local_unnamed_addr #2

declare void @DSA_get0_key(%struct.dsa_st* noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @write_lebn(i8** nocapture noundef %out, %struct.bignum_st* noundef %bn, i32 noundef %len) unnamed_addr #0 {
entry:
  %0 = load i8*, i8** %out, align 8, !tbaa !4
  %call = tail call i32 @BN_bn2lebinpad(%struct.bignum_st* noundef %bn, i8* noundef %0, i32 noundef %len) #7
  %1 = load i8*, i8** %out, align 8, !tbaa !4
  %idx.ext = sext i32 %len to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  store i8* %add.ptr, i8** %out, align 8, !tbaa !4
  ret void
}

declare i32 @BN_bn2lebinpad(%struct.bignum_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @do_PVK_body_key(i8** nocapture noundef readonly %in, i32 noundef %saltlen, i32 noundef %keylen, i32 (i8*, i32, i32, i8*)* noundef readonly %cb, i8* noundef %u, i32* nocapture noundef %isdss, i32* nocapture noundef %ispub, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %keybuf = alloca [20 x i8], align 16
  %psbuf = alloca [1024 x i8], align 16
  %enctmplen = alloca i32, align 4
  %q = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %1 = load i8*, i8** %in, align 8, !tbaa !4
  store i8* %1, i8** %p, align 8, !tbaa !4
  %2 = getelementptr inbounds [20 x i8], [20 x i8]* %keybuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %2) #6
  %call = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #7
  %tobool.not = icmp eq i32 %saltlen, 0
  br i1 %tobool.not, label %if.end88, label %if.then

if.then:                                          ; preds = %entry
  %3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %psbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %3) #6
  %4 = bitcast i32* %enctmplen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #6
  %5 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #6
  %tobool1.not = icmp eq i32 (i8*, i32, i32, i8*)* %cb, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %call3 = call i32 %cb(i8* noundef nonnull %3, i32 noundef 1024, i32 noundef 0, i8* noundef %u) #7
  br label %if.end

if.else:                                          ; preds = %if.then
  %call5 = call i32 @PEM_def_callback(i8* noundef nonnull %3, i32 noundef 1024, i32 noundef 0, i8* noundef %u) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %inlen.0 = phi i32 [ %call3, %if.then2 ], [ %call5, %if.else ]
  %cmp = icmp slt i32 %inlen.0, 0
  br i1 %cmp, label %cleanup.thread.sink.split, label %if.end7

if.end7:                                          ; preds = %if.end
  %add = add i32 %keylen, 8
  %conv = zext i32 %add to i64
  %call8 = call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 850) #7
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %cleanup.thread.sink.split, label %if.end12

if.end12:                                         ; preds = %if.end7
  %call15 = call fastcc i32 @derive_pvk_key(i8* noundef nonnull %2, i8* noundef %1, i32 noundef %saltlen, i8* noundef nonnull %3, i32 noundef %inlen.0, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #8
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %cleanup.thread, label %if.end18

if.end18:                                         ; preds = %if.end12
  %idx.ext = zext i32 %saltlen to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8, !tbaa !4
  %call19 = call i8* @memcpy(i8* noundef nonnull %call8, i8* noundef nonnull %add.ptr, i64 noundef 8) #7
  %add.ptr20 = getelementptr inbounds i8, i8* %add.ptr, i64 8
  %cmp21 = icmp ult i32 %keylen, 8
  br i1 %cmp21, label %cleanup.thread.sink.split, label %if.end24

if.end24:                                         ; preds = %if.end18
  %sub = add i32 %keylen, -8
  %add.ptr25 = getelementptr inbounds i8, i8* %call8, i64 8
  store i8* %add.ptr25, i8** %q, align 8, !tbaa !4
  %call26 = call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef %propq) #7
  %cmp27 = icmp eq %struct.evp_cipher_st* %call26, null
  br i1 %cmp27, label %cleanup.thread, label %if.end30

if.end30:                                         ; preds = %if.end24
  %call32 = call i32 @EVP_DecryptInit_ex(%struct.evp_cipher_ctx_st* noundef %call, %struct.evp_cipher_st* noundef nonnull %call26, %struct.engine_st* noundef null, i8* noundef nonnull %2, i8* noundef null) #7
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %cleanup.thread, label %if.end35

if.end35:                                         ; preds = %if.end30
  %call36 = call i32 @EVP_DecryptUpdate(%struct.evp_cipher_ctx_st* noundef %call, i8* noundef nonnull %add.ptr25, i32* noundef nonnull %enctmplen, i8* noundef nonnull %add.ptr20, i32 noundef %sub) #7
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %cleanup.thread, label %if.end39

if.end39:                                         ; preds = %if.end35
  %6 = load i32, i32* %enctmplen, align 4, !tbaa !9
  %idx.ext40 = sext i32 %6 to i64
  %add.ptr41 = getelementptr inbounds i8, i8* %add.ptr25, i64 %idx.ext40
  %call42 = call i32 @EVP_DecryptFinal_ex(%struct.evp_cipher_ctx_st* noundef %call, i8* noundef nonnull %add.ptr41, i32* noundef nonnull %enctmplen) #7
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %cleanup.thread, label %if.end45

if.end45:                                         ; preds = %if.end39
  %call46 = call fastcc i32 @read_ledword(i8** noundef nonnull %q) #8
  switch i32 %call46, label %if.then53 [
    i32 844321604, label %cleanup
    i32 843141970, label %cleanup
  ]

if.then53:                                        ; preds = %if.end45
  store i8* %add.ptr25, i8** %q, align 8, !tbaa !4
  %add.ptr56 = getelementptr inbounds [20 x i8], [20 x i8]* %keybuf, i64 0, i64 5
  %call57 = call i8* @memset(i8* noundef nonnull %add.ptr56, i32 noundef 0, i64 noundef 11) #7
  %call59 = call i32 @EVP_DecryptInit_ex(%struct.evp_cipher_ctx_st* noundef %call, %struct.evp_cipher_st* noundef nonnull %call26, %struct.engine_st* noundef null, i8* noundef nonnull %2, i8* noundef null) #7
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %cleanup.thread, label %if.end62

if.end62:                                         ; preds = %if.then53
  %call63 = call i32 @EVP_DecryptUpdate(%struct.evp_cipher_ctx_st* noundef %call, i8* noundef nonnull %add.ptr25, i32* noundef nonnull %enctmplen, i8* noundef nonnull %add.ptr20, i32 noundef %sub) #7
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %cleanup.thread, label %if.end66

if.end66:                                         ; preds = %if.end62
  %7 = load i32, i32* %enctmplen, align 4, !tbaa !9
  %idx.ext67 = sext i32 %7 to i64
  %add.ptr68 = getelementptr inbounds i8, i8* %add.ptr25, i64 %idx.ext67
  %call69 = call i32 @EVP_DecryptFinal_ex(%struct.evp_cipher_ctx_st* noundef %call, i8* noundef nonnull %add.ptr68, i32* noundef nonnull %enctmplen) #7
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %cleanup.thread, label %if.end72

if.end72:                                         ; preds = %if.end66
  %call73 = call fastcc i32 @read_ledword(i8** noundef nonnull %q) #8
  switch i32 %call73, label %cleanup.thread.sink.split [
    i32 844321604, label %cleanup
    i32 843141970, label %cleanup
  ]

cleanup.thread.sink.split:                        ; preds = %if.end72, %if.end18, %if.end7, %if.end
  %.sink142 = phi i32 [ 847, %if.end ], [ 852, %if.end7 ], [ 863, %if.end18 ], [ 888, %if.end72 ]
  %.sink = phi i32 [ 104, %if.end ], [ 786688, %if.end7 ], [ 125, %if.end18 ], [ 101, %if.end72 ]
  %enctmp.0.ph.ph = phi i8* [ null, %if.end ], [ null, %if.end7 ], [ %call8, %if.end18 ], [ %call8, %if.end72 ]
  %rc4.0.ph.ph = phi %struct.evp_cipher_st* [ null, %if.end ], [ null, %if.end7 ], [ null, %if.end18 ], [ %call26, %if.end72 ]
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink142, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.do_PVK_body_key, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef %.sink, i8* noundef null) #7
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cleanup.thread.sink.split, %if.end12, %if.end24, %if.end30, %if.end35, %if.end39, %if.then53, %if.end62, %if.end66
  %enctmp.0.ph = phi i8* [ %call8, %if.end66 ], [ %call8, %if.end62 ], [ %call8, %if.then53 ], [ %call8, %if.end39 ], [ %call8, %if.end35 ], [ %call8, %if.end30 ], [ %call8, %if.end24 ], [ %call8, %if.end12 ], [ %enctmp.0.ph.ph, %cleanup.thread.sink.split ]
  %rc4.0.ph = phi %struct.evp_cipher_st* [ %call26, %if.end66 ], [ %call26, %if.end62 ], [ %call26, %if.then53 ], [ %call26, %if.end39 ], [ %call26, %if.end35 ], [ %call26, %if.end30 ], [ null, %if.end24 ], [ null, %if.end12 ], [ %rc4.0.ph.ph, %cleanup.thread.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %3) #6
  br label %err

cleanup:                                          ; preds = %if.end45, %if.end45, %if.end72, %if.end72
  store i8* %call8, i8** %p, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %3) #6
  br label %if.end88

if.end88:                                         ; preds = %cleanup, %entry
  %enctmp.1 = phi i8* [ %call8, %cleanup ], [ null, %entry ]
  %rc4.1 = phi %struct.evp_cipher_st* [ %call26, %cleanup ], [ null, %entry ]
  %call89 = call fastcc i8* @do_b2i_key(i8** noundef nonnull %p, i32 noundef %keylen, i32* noundef %isdss, i32* noundef %ispub) #8
  br label %err

err:                                              ; preds = %cleanup.thread, %if.end88
  %enctmp.2 = phi i8* [ %enctmp.1, %if.end88 ], [ %enctmp.0.ph, %cleanup.thread ]
  %key.0 = phi i8* [ %call89, %if.end88 ], [ null, %cleanup.thread ]
  %rc4.2 = phi %struct.evp_cipher_st* [ %rc4.1, %if.end88 ], [ %rc4.0.ph, %cleanup.thread ]
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %call) #7
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %rc4.2) #7
  %cmp90.not = icmp eq i8* %enctmp.2, null
  br i1 %cmp90.not, label %cleanup95, label %if.then92

if.then92:                                        ; preds = %err
  call void @OPENSSL_cleanse(i8* noundef nonnull %2, i64 noundef 20) #7
  call void @CRYPTO_free(i8* noundef nonnull %enctmp.2, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 907) #7
  br label %cleanup95

cleanup95:                                        ; preds = %err, %if.then92
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i8* %key.0
}

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() local_unnamed_addr #2

declare i32 @PEM_def_callback(i8* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @derive_pvk_key(i8* noundef %key, i8* noundef %salt, i32 noundef %saltlen, i8* noundef %pass, i32 noundef %passlen, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #7
  %call1 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef %propq) #7
  %cmp = icmp eq %struct.evp_md_st* %call1, null
  %cmp2 = icmp eq %struct.evp_md_ctx_st* %call, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %or.cond, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call, %struct.evp_md_st* noundef nonnull %call1, %struct.engine_st* noundef null) #7
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %conv = zext i32 %saltlen to i64
  %call5 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef %salt, i64 noundef %conv) #7
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %err, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %conv8 = sext i32 %passlen to i64
  %call9 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef %pass, i64 noundef %conv8) #7
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %err, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false7
  %call12 = tail call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef %key, i32* noundef null) #7
  %tobool13.not = icmp ne i32 %call12, 0
  %spec.select = zext i1 %tobool13.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false11, %lor.lhs.false, %lor.lhs.false4, %lor.lhs.false7, %entry
  %rv.0 = phi i32 [ 0, %entry ], [ 0, %lor.lhs.false7 ], [ 0, %lor.lhs.false4 ], [ 0, %lor.lhs.false ], [ %spec.select, %lor.lhs.false11 ]
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call) #7
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %call1) #7
  ret i32 %rv.0
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

declare %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @EVP_DecryptInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @EVP_DecryptUpdate(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_DecryptFinal_ex(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

declare void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #2

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

declare void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_EncryptFinal_ex(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = !{!6, !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !6, i64 0}
