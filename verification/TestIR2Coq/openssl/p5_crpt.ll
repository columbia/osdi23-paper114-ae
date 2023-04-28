; ModuleID = 'crypto/evp/p5_crpt.c'
source_filename = "crypto/evp/p5_crpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_cipher_ctx_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.evp_cipher_st = type opaque
%struct.evp_md_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.ASN1_ITEM_st = type opaque
%struct.PBEPARAM_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.evp_kdf_st = type opaque
%struct.evp_kdf_ctx_st = type opaque
%struct.engine_st = type opaque

@.str = private unnamed_addr constant [21 x i8] c"crypto/evp/p5_crpt.c\00", align 1
@__func__.PKCS5_PBE_keyivgen_ex = private unnamed_addr constant [22 x i8] c"PKCS5_PBE_keyivgen_ex\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"PBKDF1\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"salt\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"digest\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define void @PKCS5_PBE_add() local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS5_PBE_keyivgen_ex(%struct.evp_cipher_ctx_st* noundef %cctx, i8* noundef %pass, i32 noundef %passlen, %struct.asn1_type_st* noundef %param, %struct.evp_cipher_st* noundef %cipher, %struct.evp_md_st* noundef %md, i32 noundef %en_de, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #1 {
entry:
  %md_tmp = alloca [64 x i8], align 16
  %key = alloca [64 x i8], align 16
  %iv = alloca [16 x i8], align 16
  %iter = alloca i32, align 4
  %params = alloca [5 x %struct.ossl_param_st], align 16
  %tmp53 = alloca %struct.ossl_param_st, align 8
  %tmp56 = alloca %struct.ossl_param_st, align 8
  %tmp58 = alloca %struct.ossl_param_st, align 8
  %tmp59 = alloca %struct.ossl_param_st, align 8
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %md_tmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #7
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %key, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #7
  %2 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7
  %3 = bitcast i32* %iter to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #7
  %4 = bitcast [5 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %4) #7
  %arraydecay = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %call = tail call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef %md) #8
  %cmp = icmp eq %struct.asn1_type_st* %param, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %param, i64 0, i32 0
  %5 = load i32, i32* %type, align 8, !tbaa !4
  %cmp1.not = icmp eq i32 %5, 16
  br i1 %cmp1.not, label %lor.lhs.false2, label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %value = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %param, i64 0, i32 1
  %sequence = bitcast %union.anon* %value to %struct.asn1_string_st**
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %sequence, align 8, !tbaa !9
  %cmp3 = icmp eq %struct.asn1_string_st* %6, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.PKCS5_PBE_keyivgen_ex, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 114, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %call4 = tail call %struct.ASN1_ITEM_st* @PBEPARAM_it() #8
  %call5 = tail call i8* @ASN1_TYPE_unpack_sequence(%struct.ASN1_ITEM_st* noundef %call4, %struct.asn1_type_st* noundef nonnull %param) #8
  %7 = bitcast i8* %call5 to %struct.PBEPARAM_st*
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.PKCS5_PBE_keyivgen_ex, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 114, i8* noundef null) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef %cipher) #8
  %8 = icmp ugt i32 %call9, 16
  br i1 %8, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end8
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.PKCS5_PBE_keyivgen_ex, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 194, i8* noundef null) #8
  br label %err

if.end14:                                         ; preds = %if.end8
  %call15 = tail call i32 @EVP_CIPHER_get_key_length(%struct.evp_cipher_st* noundef %cipher) #8
  %9 = icmp ugt i32 %call15, 64
  br i1 %9, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end14
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.PKCS5_PBE_keyivgen_ex, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 130, i8* noundef null) #8
  br label %err

if.end20:                                         ; preds = %if.end14
  %iter21 = getelementptr inbounds i8, i8* %call5, i64 8
  %10 = bitcast i8* %iter21 to %struct.asn1_string_st**
  %11 = load %struct.asn1_string_st*, %struct.asn1_string_st** %10, align 8, !tbaa !10
  %cmp22 = icmp eq %struct.asn1_string_st* %11, null
  br i1 %cmp22, label %if.end26, label %if.else

if.else:                                          ; preds = %if.end20
  %call25 = tail call i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef nonnull %11) #8
  %conv = trunc i64 %call25 to i32
  br label %if.end26

if.end26:                                         ; preds = %if.end20, %if.else
  %storemerge = phi i32 [ %conv, %if.else ], [ 1, %if.end20 ]
  store i32 %storemerge, i32* %iter, align 4, !tbaa !13
  %salt27 = bitcast i8* %call5 to %struct.asn1_string_st**
  %12 = load %struct.asn1_string_st*, %struct.asn1_string_st** %salt27, align 8, !tbaa !14
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %12, i64 0, i32 2
  %13 = load i8*, i8** %data, align 8, !tbaa !15
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %12, i64 0, i32 0
  %14 = load i32, i32* %length, align 8, !tbaa !18
  %cmp29 = icmp eq i8* %pass, null
  br i1 %cmp29, label %if.end39, label %if.else32

if.else32:                                        ; preds = %if.end26
  %cmp33 = icmp eq i32 %passlen, -1
  br i1 %cmp33, label %if.then35, label %if.end39

if.then35:                                        ; preds = %if.else32
  %call36 = tail call i64 @strlen(i8* noundef nonnull %pass) #9
  %conv37 = trunc i64 %call36 to i32
  br label %if.end39

if.end39:                                         ; preds = %if.end26, %if.else32, %if.then35
  %passlen.addr.0 = phi i32 [ %conv37, %if.then35 ], [ %passlen, %if.else32 ], [ 0, %if.end26 ]
  %call40 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %md) #8
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %err, label %if.end44

if.end44:                                         ; preds = %if.end39
  %call45 = tail call %struct.evp_kdf_st* @EVP_KDF_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* noundef %propq) #8
  %call46 = tail call %struct.evp_kdf_ctx_st* @EVP_KDF_CTX_new(%struct.evp_kdf_st* noundef %call45) #8
  tail call void @EVP_KDF_free(%struct.evp_kdf_st* noundef %call45) #8
  %cmp47 = icmp eq %struct.evp_kdf_ctx_st* %call46, null
  br i1 %cmp47, label %err, label %if.end50

if.end50:                                         ; preds = %if.end44
  %incdec.ptr = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %conv51 = sext i32 %passlen.addr.0 to i64
  %params142 = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params142, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* noundef %pass, i64 noundef %conv51) #8
  %incdec.ptr52 = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %15 = bitcast %struct.ossl_param_st* %tmp53 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %15) #7
  %conv54 = sext i32 %14 to i64
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp53, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef %13, i64 noundef %conv54) #8
  %16 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %16, i8* noundef nonnull align 8 dereferenceable(40) %15, i64 40, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %15) #7
  %incdec.ptr55 = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 3
  %17 = bitcast %struct.ossl_param_st* %tmp56 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %17) #7
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp56, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %iter) #8
  %18 = bitcast %struct.ossl_param_st* %incdec.ptr52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %18, i8* noundef nonnull align 8 dereferenceable(40) %17, i64 40, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %17) #7
  %incdec.ptr57 = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 4
  %19 = bitcast %struct.ossl_param_st* %tmp58 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %19) #7
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp58, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* noundef %call, i64 noundef 0) #8
  %20 = bitcast %struct.ossl_param_st* %incdec.ptr55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %20, i8* noundef nonnull align 8 dereferenceable(40) %19, i64 40, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %19) #7
  %21 = bitcast %struct.ossl_param_st* %tmp59 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %21) #7
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp59) #8
  %22 = bitcast %struct.ossl_param_st* %incdec.ptr57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %22, i8* noundef nonnull align 8 dereferenceable(40) %21, i64 40, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %21) #7
  %conv61139 = zext i32 %call40 to i64
  %call63 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef nonnull %call46, i8* noundef nonnull %0, i64 noundef %conv61139, %struct.ossl_param_st* noundef nonnull %arraydecay) #8
  %cmp64.not = icmp eq i32 %call63, 1
  br i1 %cmp64.not, label %if.end67, label %err

if.end67:                                         ; preds = %if.end50
  %conv70140 = zext i32 %call15 to i64
  %call71 = call i8* @memcpy(i8* noundef nonnull %1, i8* noundef nonnull %0, i64 noundef %conv70140) #8
  %sub = sub nuw nsw i32 16, %call9
  %23 = zext i32 %sub to i64
  %add.ptr = getelementptr inbounds [64 x i8], [64 x i8]* %md_tmp, i64 0, i64 %23
  %conv74141 = zext i32 %call9 to i64
  %call75 = call i8* @memcpy(i8* noundef nonnull %2, i8* noundef nonnull %add.ptr, i64 noundef %conv74141) #8
  %call78 = call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %cctx, %struct.evp_cipher_st* noundef %cipher, %struct.engine_st* noundef null, i8* noundef nonnull %1, i8* noundef nonnull %2, i32 noundef %en_de) #8
  %tobool.not = icmp eq i32 %call78, 0
  br i1 %tobool.not, label %err, label %if.end80

if.end80:                                         ; preds = %if.end67
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 64) #8
  call void @OPENSSL_cleanse(i8* noundef nonnull %1, i64 noundef 64) #8
  call void @OPENSSL_cleanse(i8* noundef nonnull %2, i64 noundef 16) #8
  br label %err

err:                                              ; preds = %if.end67, %if.end50, %if.end44, %if.end39, %if.end80, %if.then19, %if.then13
  %rv.0 = phi i32 [ 0, %if.then13 ], [ 0, %if.then19 ], [ 0, %if.end39 ], [ 0, %if.end44 ], [ 0, %if.end50 ], [ 1, %if.end80 ], [ 0, %if.end67 ]
  %kctx.0 = phi %struct.evp_kdf_ctx_st* [ null, %if.then13 ], [ null, %if.then19 ], [ null, %if.end39 ], [ null, %if.end44 ], [ %call46, %if.end50 ], [ %call46, %if.end80 ], [ %call46, %if.end67 ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %kctx.0) #8
  call void @PBEPARAM_free(%struct.PBEPARAM_st* noundef nonnull %7) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then7, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then7 ], [ %rv.0, %err ]
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %4) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef) local_unnamed_addr #3

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i8* @ASN1_TYPE_unpack_sequence(%struct.ASN1_ITEM_st* noundef, %struct.asn1_type_st* noundef) local_unnamed_addr #3

declare %struct.ASN1_ITEM_st* @PBEPARAM_it() local_unnamed_addr #3

declare i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

declare i32 @EVP_CIPHER_get_key_length(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

declare i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #4

declare i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #3

declare %struct.evp_kdf_st* @EVP_KDF_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare %struct.evp_kdf_ctx_st* @EVP_KDF_CTX_new(%struct.evp_kdf_st* noundef) local_unnamed_addr #3

declare void @EVP_KDF_free(%struct.evp_kdf_st* noundef) local_unnamed_addr #3

declare void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @OSSL_PARAM_construct_int(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #3

declare void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #3

declare i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef, i8* noundef, i64 noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

declare i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #3

declare void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef) local_unnamed_addr #3

declare void @PBEPARAM_free(%struct.PBEPARAM_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS5_PBE_keyivgen(%struct.evp_cipher_ctx_st* noundef %cctx, i8* noundef %pass, i32 noundef %passlen, %struct.asn1_type_st* noundef %param, %struct.evp_cipher_st* noundef %cipher, %struct.evp_md_st* noundef %md, i32 noundef %en_de) local_unnamed_addr #1 {
entry:
  %call = tail call i32 @PKCS5_PBE_keyivgen_ex(%struct.evp_cipher_ctx_st* noundef %cctx, i8* noundef %pass, i32 noundef %passlen, %struct.asn1_type_st* noundef %param, %struct.evp_cipher_st* noundef %cipher, %struct.evp_md_st* noundef %md, i32 noundef %en_de, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #10
  ret i32 %call
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #10 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"asn1_type_st", !6, i64 0, !7, i64 8}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !12, i64 8}
!11 = !{!"PBEPARAM_st", !12, i64 0, !12, i64 8}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!6, !6, i64 0}
!14 = !{!11, !12, i64 0}
!15 = !{!16, !12, i64 8}
!16 = !{!"asn1_string_st", !6, i64 0, !6, i64 4, !12, i64 8, !17, i64 16}
!17 = !{!"long", !7, i64 0}
!18 = !{!16, !6, i64 0}
!19 = !{i64 0, i64 8, !20, i64 8, i64 4, !13, i64 16, i64 8, !20, i64 24, i64 8, !21, i64 32, i64 8, !21}
!20 = !{!12, !12, i64 0}
!21 = !{!17, !17, i64 0}
