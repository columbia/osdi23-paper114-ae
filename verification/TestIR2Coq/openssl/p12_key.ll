; ModuleID = 'crypto/pkcs12/p12_key.c'
source_filename = "crypto/pkcs12/p12_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_md_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.evp_kdf_st = type opaque
%struct.evp_kdf_ctx_st = type opaque

@.str = private unnamed_addr constant [24 x i8] c"crypto/pkcs12/p12_key.c\00", align 1
@__func__.PKCS12_key_gen_asc_ex = private unnamed_addr constant [22 x i8] c"PKCS12_key_gen_asc_ex\00", align 1
@__func__.PKCS12_key_gen_utf8_ex = private unnamed_addr constant [23 x i8] c"PKCS12_key_gen_utf8_ex\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"PKCS12KDF\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"salt\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"iter\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS12_key_gen_asc_ex(i8* noundef %pass, i32 noundef %passlen, i8* noundef %salt, i32 noundef %saltlen, i32 noundef %id, i32 noundef %iter, i32 noundef %n, i8* noundef %out, %struct.evp_md_st* noundef %md_type, %struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %unipass = alloca i8*, align 8
  %uniplen = alloca i32, align 4
  %0 = bitcast i8** %unipass to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  %1 = bitcast i32* %uniplen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #4
  %cmp = icmp eq i8* %pass, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* null, i8** %unipass, align 8, !tbaa !4
  store i32 0, i32* %uniplen, align 4, !tbaa !8
  br label %if.end2

if.else:                                          ; preds = %entry
  %call = call i8* @OPENSSL_asc2uni(i8* noundef nonnull %pass, i32 noundef %passlen, i8** noundef nonnull %unipass, i32* noundef nonnull %uniplen) #5
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.then1, label %if.else.if.end2_crit_edge

if.else.if.end2_crit_edge:                        ; preds = %if.else
  %.pre = load i8*, i8** %unipass, align 8, !tbaa !4
  %.pre10 = load i32, i32* %uniplen, align 4, !tbaa !8
  br label %if.end2

if.then1:                                         ; preds = %if.else
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 32, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.PKCS12_key_gen_asc_ex, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end2:                                          ; preds = %if.else.if.end2_crit_edge, %if.then
  %2 = phi i32 [ %.pre10, %if.else.if.end2_crit_edge ], [ 0, %if.then ]
  %3 = phi i8* [ %.pre, %if.else.if.end2_crit_edge ], [ null, %if.then ]
  %call3 = call i32 @PKCS12_key_gen_uni_ex(i8* noundef %3, i32 noundef %2, i8* noundef %salt, i32 noundef %saltlen, i32 noundef %id, i32 noundef %iter, i32 noundef %n, i8* noundef %out, %struct.evp_md_st* noundef %md_type, %struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %propq) #6
  %4 = load i8*, i8** %unipass, align 8, !tbaa !4
  %5 = load i32, i32* %uniplen, align 4, !tbaa !8
  %conv = sext i32 %5 to i64
  call void @CRYPTO_clear_free(i8* noundef %4, i64 noundef %conv, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 37) #5
  %cmp4 = icmp sgt i32 %call3, 0
  %conv5 = zext i1 %cmp4 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then1
  %retval.0 = phi i32 [ %conv5, %if.end2 ], [ 0, %if.then1 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @OPENSSL_asc2uni(i8* noundef, i32 noundef, i8** noundef, i32* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS12_key_gen_uni_ex(i8* noundef %pass, i32 noundef %passlen, i8* noundef %salt, i32 noundef %saltlen, i32 noundef %id, i32 noundef %iter, i32 noundef %n, i8* noundef %out, %struct.evp_md_st* noundef %md_type, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %id.addr = alloca i32, align 4
  %iter.addr = alloca i32, align 4
  %params = alloca [6 x %struct.ossl_param_st], align 16
  %tmp10 = alloca %struct.ossl_param_st, align 8
  %tmp12 = alloca %struct.ossl_param_st, align 8
  %tmp15 = alloca %struct.ossl_param_st, align 8
  %tmp17 = alloca %struct.ossl_param_st, align 8
  %tmp18 = alloca %struct.ossl_param_st, align 8
  store i32 %id, i32* %id.addr, align 4, !tbaa !8
  store i32 %iter, i32* %iter.addr, align 4, !tbaa !8
  %0 = bitcast [6 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 240, i8* nonnull %0) #4
  %arraydecay = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %cmp = icmp slt i32 %n, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.evp_kdf_st* @EVP_KDF_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* noundef %propq) #5
  %cmp1 = icmp eq %struct.evp_kdf_st* %call, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call %struct.evp_kdf_ctx_st* @EVP_KDF_CTX_new(%struct.evp_kdf_st* noundef nonnull %call) #5
  tail call void @EVP_KDF_free(%struct.evp_kdf_st* noundef nonnull %call) #5
  %cmp5 = icmp eq %struct.evp_kdf_ctx_st* %call4, null
  br i1 %cmp5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end3
  %incdec.ptr = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %call8 = tail call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef %md_type) #5
  %params49 = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params49, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* noundef %call8, i64 noundef 0) #5
  %incdec.ptr9 = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %1 = bitcast %struct.ossl_param_st* %tmp10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #4
  %conv = sext i32 %passlen to i64
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp10, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef %pass, i64 noundef %conv) #5
  %2 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !10
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #4
  %incdec.ptr11 = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 3
  %3 = bitcast %struct.ossl_param_st* %tmp12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #4
  %conv13 = sext i32 %saltlen to i64
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp12, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef %salt, i64 noundef %conv13) #5
  %4 = bitcast %struct.ossl_param_st* %incdec.ptr9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %4, i8* noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !10
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #4
  %incdec.ptr14 = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 4
  %5 = bitcast %struct.ossl_param_st* %tmp15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #4
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp15, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32* noundef nonnull %id.addr) #5
  %6 = bitcast %struct.ossl_param_st* %incdec.ptr11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %6, i8* noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !10
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #4
  %incdec.ptr16 = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 5
  %7 = bitcast %struct.ossl_param_st* %tmp17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %7) #4
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp17, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* noundef nonnull %iter.addr) #5
  %8 = bitcast %struct.ossl_param_st* %incdec.ptr14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %8, i8* noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !tbaa.struct !10
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %7) #4
  %9 = bitcast %struct.ossl_param_st* %tmp18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %9) #4
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp18) #5
  %10 = bitcast %struct.ossl_param_st* %incdec.ptr16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %10, i8* noundef nonnull align 8 dereferenceable(40) %9, i64 40, i1 false), !tbaa.struct !10
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %9) #4
  %conv1948 = zext i32 %n to i64
  %call21 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef nonnull %call4, i8* noundef %out, i64 noundef %conv1948, %struct.ossl_param_st* noundef nonnull %arraydecay) #5
  %tobool.not = icmp ne i32 %call21, 0
  %spec.select = zext i1 %tobool.not to i32
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef nonnull %call4) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end, %entry, %if.end7
  %retval.0 = phi i32 [ %spec.select, %if.end7 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end3 ]
  call void @llvm.lifetime.end.p0i8(i64 240, i8* nonnull %0) #4
  ret i32 %retval.0
}

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS12_key_gen_asc(i8* noundef %pass, i32 noundef %passlen, i8* noundef %salt, i32 noundef %saltlen, i32 noundef %id, i32 noundef %iter, i32 noundef %n, i8* noundef %out, %struct.evp_md_st* noundef %md_type) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @PKCS12_key_gen_asc_ex(i8* noundef %pass, i32 noundef %passlen, i8* noundef %salt, i32 noundef %saltlen, i32 noundef %id, i32 noundef %iter, i32 noundef %n, i8* noundef %out, %struct.evp_md_st* noundef %md_type, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS12_key_gen_utf8_ex(i8* noundef %pass, i32 noundef %passlen, i8* noundef %salt, i32 noundef %saltlen, i32 noundef %id, i32 noundef %iter, i32 noundef %n, i8* noundef %out, %struct.evp_md_st* noundef %md_type, %struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %unipass = alloca i8*, align 8
  %uniplen = alloca i32, align 4
  %0 = bitcast i8** %unipass to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  %1 = bitcast i32* %uniplen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #4
  %cmp = icmp eq i8* %pass, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* null, i8** %unipass, align 8, !tbaa !4
  store i32 0, i32* %uniplen, align 4, !tbaa !8
  br label %if.end2

if.else:                                          ; preds = %entry
  %call = call i8* @OPENSSL_utf82uni(i8* noundef nonnull %pass, i32 noundef %passlen, i8** noundef nonnull %unipass, i32* noundef nonnull %uniplen) #5
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.then1, label %if.else.if.end2_crit_edge

if.else.if.end2_crit_edge:                        ; preds = %if.else
  %.pre = load i8*, i8** %unipass, align 8, !tbaa !4
  %.pre10 = load i32, i32* %uniplen, align 4, !tbaa !8
  br label %if.end2

if.then1:                                         ; preds = %if.else
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.PKCS12_key_gen_utf8_ex, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end2:                                          ; preds = %if.else.if.end2_crit_edge, %if.then
  %2 = phi i32 [ %.pre10, %if.else.if.end2_crit_edge ], [ 0, %if.then ]
  %3 = phi i8* [ %.pre, %if.else.if.end2_crit_edge ], [ null, %if.then ]
  %call3 = call i32 @PKCS12_key_gen_uni_ex(i8* noundef %3, i32 noundef %2, i8* noundef %salt, i32 noundef %saltlen, i32 noundef %id, i32 noundef %iter, i32 noundef %n, i8* noundef %out, %struct.evp_md_st* noundef %md_type, %struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %propq) #6
  %4 = load i8*, i8** %unipass, align 8, !tbaa !4
  %5 = load i32, i32* %uniplen, align 4, !tbaa !8
  %conv = sext i32 %5 to i64
  call void @CRYPTO_clear_free(i8* noundef %4, i64 noundef %conv, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 67) #5
  %cmp4 = icmp sgt i32 %call3, 0
  %conv5 = zext i1 %cmp4 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then1
  %retval.0 = phi i32 [ %conv5, %if.end2 ], [ 0, %if.then1 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %retval.0
}

declare i8* @OPENSSL_utf82uni(i8* noundef, i32 noundef, i8** noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS12_key_gen_utf8(i8* noundef %pass, i32 noundef %passlen, i8* noundef %salt, i32 noundef %saltlen, i32 noundef %id, i32 noundef %iter, i32 noundef %n, i8* noundef %out, %struct.evp_md_st* noundef %md_type) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @PKCS12_key_gen_utf8_ex(i8* noundef %pass, i32 noundef %passlen, i8* noundef %salt, i32 noundef %saltlen, i32 noundef %id, i32 noundef %iter, i32 noundef %n, i8* noundef %out, %struct.evp_md_st* noundef %md_type, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #6
  ret i32 %call
}

declare %struct.evp_kdf_st* @EVP_KDF_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.evp_kdf_ctx_st* @EVP_KDF_CTX_new(%struct.evp_kdf_st* noundef) local_unnamed_addr #2

declare void @EVP_KDF_free(%struct.evp_kdf_st* noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_int(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #2

declare i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef, i8* noundef, i64 noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS12_key_gen_uni(i8* noundef %pass, i32 noundef %passlen, i8* noundef %salt, i32 noundef %saltlen, i32 noundef %id, i32 noundef %iter, i32 noundef %n, i8* noundef %out, %struct.evp_md_st* noundef %md_type) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @PKCS12_key_gen_uni_ex(i8* noundef %pass, i32 noundef %passlen, i8* noundef %salt, i32 noundef %saltlen, i32 noundef %id, i32 noundef %iter, i32 noundef %n, i8* noundef %out, %struct.evp_md_st* noundef %md_type, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #6
  ret i32 %call
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{i64 0, i64 8, !4, i64 8, i64 4, !8, i64 16, i64 8, !4, i64 24, i64 8, !11, i64 32, i64 8, !11}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !6, i64 0}
