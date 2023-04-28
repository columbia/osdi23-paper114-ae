; ModuleID = 'crypto/evp/p5_crpt2.c'
source_filename = "crypto/evp/p5_crpt2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_md_ctx_st = type { %struct.evp_md_st*, %struct.evp_md_st*, %struct.engine_st*, i64, i8*, %struct.evp_pkey_ctx_st*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i8*, %struct.evp_md_st* }
%struct.engine_st = type opaque
%struct.evp_pkey_ctx_st = type { i32, %struct.ossl_lib_ctx_st*, i8*, i8*, %struct.evp_keymgmt_st*, %union.anon, %struct.anon.4, i8*, i32 (%struct.evp_pkey_ctx_st*)*, i32*, i32, i32, %struct.evp_pkey_method_st*, %struct.engine_st*, %struct.evp_pkey_st*, %struct.evp_pkey_st*, i8*, i8, %struct.bignum_st* }
%struct.evp_keymgmt_st = type { i32, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, void (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i8* (i8*, i32, %struct.ossl_param_st*)*, i32 (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, void (i8*)*, i8* (i8*, i64)*, i8* (i32)*, i32 (i8*, i32)*, i32 (i8*, i32, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i32)*, i32 (i8*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, %struct.ossl_param_st* (i32)*, i8* (i8*, i32)* }
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.evp_keyexch_st*, i8* }
%struct.evp_keyexch_st = type { i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*)*, i32 (i8*, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.anon.4 = type { i8*, i8*, i64, i8 }
%struct.evp_pkey_method_st = type { i32, i32, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)*, void (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* }
%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon.5 }
%struct.evp_pkey_asn1_method_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon.5 = type { i32, i32, i32 }
%struct.bignum_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_kdf_st = type { %struct.ossl_provider_st*, i32, i8*, i8*, i32, i8*, i8* (i8*)*, i8* (i8*)*, void (i8*)*, void (i8*)*, i32 (i8*, i8*, i64, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)* }
%struct.evp_kdf_ctx_st = type { %struct.evp_kdf_st*, i8* }
%struct.evp_cipher_ctx_st = type { %struct.evp_cipher_st*, %struct.engine_st*, i32, i32, [16 x i8], [16 x i8], [32 x i8], i32, i8*, i32, i64, i8*, i32, i32, [32 x i8], i8*, %struct.evp_cipher_st* }
%struct.asn1_type_st = type { i32, %union.anon.6 }
%union.anon.6 = type { i8* }
%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.ASN1_ITEM_st = type opaque
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.PBE2PARAM_st = type { %struct.X509_algor_st*, %struct.X509_algor_st* }
%struct.PBKDF2PARAM_st = type { %struct.asn1_type_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.X509_algor_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"PBKDF2\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"pkcs5\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"salt\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"crypto/evp/p5_crpt2.c\00", align 1
@__func__.PKCS5_v2_PBE_keyivgen_ex = private unnamed_addr constant [25 x i8] c"PKCS5_v2_PBE_keyivgen_ex\00", align 1
@__func__.PKCS5_v2_PBKDF2_keyivgen_ex = private unnamed_addr constant [28 x i8] c"PKCS5_v2_PBKDF2_keyivgen_ex\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"assertion failed: keylen <= sizeof(key)\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_pkcs5_pbkdf2_hmac_ex(i8* noundef %pass, i32 noundef %passlen, i8* noundef %salt, i32 noundef %saltlen, i32 noundef %iter, %struct.evp_md_st* noundef %digest, i32 noundef %keylen, i8* noundef %out, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %iter.addr = alloca i32, align 4
  %mode = alloca i32, align 4
  %params = alloca [6 x %struct.ossl_param_st], align 16
  %tmp19 = alloca %struct.ossl_param_st, align 8
  %tmp21 = alloca %struct.ossl_param_st, align 8
  %tmp24 = alloca %struct.ossl_param_st, align 8
  %tmp26 = alloca %struct.ossl_param_st, align 8
  %tmp27 = alloca %struct.ossl_param_st, align 8
  store i32 %iter, i32* %iter.addr, align 4, !tbaa !4
  %0 = bitcast i32* %mode to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  store i32 1, i32* %mode, align 4, !tbaa !4
  %call = tail call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef %digest) #7
  %1 = bitcast [6 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 240, i8* nonnull %1) #6
  %arraydecay = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %cmp = icmp eq i8* %pass, null
  br i1 %cmp, label %if.end4, label %if.else

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %passlen, -1
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.else
  %call3 = tail call i64 @strlen(i8* noundef nonnull %pass) #8
  %conv = trunc i64 %call3 to i32
  br label %if.end4

if.end4:                                          ; preds = %entry, %if.else, %if.then2
  %passlen.addr.0 = phi i32 [ %conv, %if.then2 ], [ %passlen, %if.else ], [ 0, %entry ]
  %pass.addr.0 = phi i8* [ %pass, %if.then2 ], [ %pass, %if.else ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %entry ]
  %call11 = tail call %struct.evp_kdf_st* @EVP_KDF_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* noundef %propq) #7
  %call12 = tail call %struct.evp_kdf_ctx_st* @EVP_KDF_CTX_new(%struct.evp_kdf_st* noundef %call11) #7
  tail call void @EVP_KDF_free(%struct.evp_kdf_st* noundef %call11) #7
  %cmp13 = icmp eq %struct.evp_kdf_ctx_st* %call12, null
  br i1 %cmp13, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end4
  %cmp5 = icmp eq i8* %salt, null
  %cmp7 = icmp eq i32 %saltlen, 0
  %or.cond = and i1 %cmp5, %cmp7
  %spec.select = select i1 %or.cond, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %salt
  %incdec.ptr = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %conv17 = sext i32 %passlen.addr.0 to i64
  %params64 = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params64, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* noundef %pass.addr.0, i64 noundef %conv17) #7
  %incdec.ptr18 = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %2 = bitcast %struct.ossl_param_st* %tmp19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #6
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp19, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* noundef nonnull %mode) #7
  %3 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #6
  %incdec.ptr20 = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 3
  %4 = bitcast %struct.ossl_param_st* %tmp21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #6
  %conv22 = sext i32 %saltlen to i64
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp21, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef %spec.select, i64 noundef %conv22) #7
  %5 = bitcast %struct.ossl_param_st* %incdec.ptr18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %5, i8* noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #6
  %incdec.ptr23 = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 4
  %6 = bitcast %struct.ossl_param_st* %tmp24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #6
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp24, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32* noundef nonnull %iter.addr) #7
  %7 = bitcast %struct.ossl_param_st* %incdec.ptr20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %7, i8* noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #6
  %incdec.ptr25 = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 5
  %8 = bitcast %struct.ossl_param_st* %tmp26 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %8) #6
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp26, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* noundef %call, i64 noundef 0) #7
  %9 = bitcast %struct.ossl_param_st* %incdec.ptr23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %9, i8* noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false), !tbaa.struct !8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #6
  %10 = bitcast %struct.ossl_param_st* %tmp27 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %10) #6
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp27) #7
  %11 = bitcast %struct.ossl_param_st* %incdec.ptr25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %11, i8* noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %10) #6
  %conv28 = sext i32 %keylen to i64
  %call30 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef nonnull %call12, i8* noundef %out, i64 noundef %conv28, %struct.ossl_param_st* noundef nonnull %arraydecay) #7
  %cmp31.not = icmp eq i32 %call30, 1
  %spec.select63 = zext i1 %cmp31.not to i32
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef nonnull %call12) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end16
  %retval.0 = phi i32 [ %spec.select63, %if.end16 ], [ 0, %if.end4 ]
  call void @llvm.lifetime.end.p0i8(i64 240, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #3

declare %struct.evp_kdf_st* @EVP_KDF_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.evp_kdf_ctx_st* @EVP_KDF_CTX_new(%struct.evp_kdf_st* noundef) local_unnamed_addr #2

declare void @EVP_KDF_free(%struct.evp_kdf_st* noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare void @OSSL_PARAM_construct_int(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #2

declare i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef, i8* noundef, i64 noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS5_PBKDF2_HMAC(i8* noundef %pass, i32 noundef %passlen, i8* noundef %salt, i32 noundef %saltlen, i32 noundef %iter, %struct.evp_md_st* noundef %digest, i32 noundef %keylen, i8* noundef %out) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_pkcs5_pbkdf2_hmac_ex(i8* noundef %pass, i32 noundef %passlen, i8* noundef %salt, i32 noundef %saltlen, i32 noundef %iter, %struct.evp_md_st* noundef %digest, i32 noundef %keylen, i8* noundef %out, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS5_PBKDF2_HMAC_SHA1(i8* noundef %pass, i32 noundef %passlen, i8* noundef %salt, i32 noundef %saltlen, i32 noundef %iter, i32 noundef %keylen, i8* noundef %out) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* noundef null) #7
  %cmp.not = icmp eq %struct.evp_md_st* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ossl_pkcs5_pbkdf2_hmac_ex(i8* noundef %pass, i32 noundef %passlen, i8* noundef %salt, i32 noundef %saltlen, i32 noundef %iter, %struct.evp_md_st* noundef nonnull %call, i32 noundef %keylen, i8* noundef %out, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %r.0 = phi i32 [ %call1, %if.then ], [ 0, %entry ]
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %call) #7
  ret i32 %r.0
}

declare %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS5_v2_PBE_keyivgen_ex(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %pass, i32 noundef %passlen, %struct.asn1_type_st* noundef %param, %struct.evp_cipher_st* nocapture readnone %c, %struct.evp_md_st* nocapture readnone %md, i32 noundef %en_de, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %ciph_name = alloca [80 x i8], align 16
  %kdf = alloca i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)*, align 8
  %0 = getelementptr inbounds [80 x i8], [80 x i8]* %ciph_name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #6
  %1 = bitcast i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)** %kdf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  %call = tail call %struct.ASN1_ITEM_st* @PBE2PARAM_it() #7
  %call1 = tail call i8* @ASN1_TYPE_unpack_sequence(%struct.ASN1_ITEM_st* noundef %call, %struct.asn1_type_st* noundef %param) #7
  %cmp = icmp eq i8* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 noundef 125, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.PKCS5_v2_PBE_keyivgen_ex, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 114, i8* noundef null) #7
  br label %err

if.end:                                           ; preds = %entry
  %keyfunc = bitcast i8* %call1 to %struct.X509_algor_st**
  %2 = load %struct.X509_algor_st*, %struct.X509_algor_st** %keyfunc, align 8, !tbaa !13
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %2, i64 0, i32 0
  %3 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !15
  %call2 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %3) #7
  %call3 = call i32 @EVP_PBE_find_ex(i32 noundef 2, i32 noundef %call2, i32* noundef null, i32* noundef null, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)** noundef null, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)** noundef nonnull %kdf) #7
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 noundef 132, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.PKCS5_v2_PBE_keyivgen_ex, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 124, i8* noundef null) #7
  br label %err

if.end5:                                          ; preds = %if.end
  %encryption = getelementptr inbounds i8, i8* %call1, i64 8
  %4 = bitcast i8* %encryption to %struct.X509_algor_st**
  %5 = load %struct.X509_algor_st*, %struct.X509_algor_st** %4, align 8, !tbaa !17
  %algorithm6 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %5, i64 0, i32 0
  %6 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm6, align 8, !tbaa !15
  %call7 = call i32 @OBJ_obj2txt(i8* noundef nonnull %0, i32 noundef 80, %struct.asn1_object_st* noundef %6, i32 noundef 0) #7
  %cmp8 = icmp slt i32 %call7, 1
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end5
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 noundef 140, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.PKCS5_v2_PBE_keyivgen_ex, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 107, i8* noundef null) #7
  br label %err

if.end10:                                         ; preds = %if.end5
  %call11 = call i32 @ERR_set_mark() #7
  %call13 = call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef nonnull %0, i8* noundef %propq) #7
  %cmp14 = icmp eq %struct.evp_cipher_st* %call13, null
  br i1 %cmp14, label %if.end18, label %if.end22

if.end18:                                         ; preds = %if.end10
  %call17 = call %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef nonnull %0) #7
  %cmp19 = icmp eq %struct.evp_cipher_st* %call17, null
  br i1 %cmp19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end18
  %call21 = call i32 @ERR_clear_last_mark() #7
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 noundef 152, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.PKCS5_v2_PBE_keyivgen_ex, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 107, i8* noundef null) #7
  br label %err

if.end22:                                         ; preds = %if.end10, %if.end18
  %cipher.054 = phi %struct.evp_cipher_st* [ %call17, %if.end18 ], [ %call13, %if.end10 ]
  %call23 = call i32 @ERR_pop_to_mark() #7
  %call24 = call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef nonnull %cipher.054, %struct.engine_st* noundef null, i8* noundef null, i8* noundef null, i32 noundef %en_de) #7
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %if.end27

if.end27:                                         ; preds = %if.end22
  %7 = load %struct.X509_algor_st*, %struct.X509_algor_st** %4, align 8, !tbaa !17
  %parameter = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %7, i64 0, i32 1
  %8 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter, align 8, !tbaa !18
  %call29 = call i32 @EVP_CIPHER_asn1_to_param(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.asn1_type_st* noundef %8) #7
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end27
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 noundef 161, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.PKCS5_v2_PBE_keyivgen_ex, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 122, i8* noundef null) #7
  br label %err

if.end32:                                         ; preds = %if.end27
  %9 = load i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)** %kdf, align 8, !tbaa !9
  %10 = load %struct.X509_algor_st*, %struct.X509_algor_st** %keyfunc, align 8, !tbaa !13
  %parameter34 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %10, i64 0, i32 1
  %11 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter34, align 8, !tbaa !18
  %call35 = call i32 %9(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %pass, i32 noundef %passlen, %struct.asn1_type_st* noundef %11, %struct.evp_cipher_st* noundef null, %struct.evp_md_st* noundef null, i32 noundef %en_de, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #7
  br label %err

err:                                              ; preds = %if.end22, %if.end32, %if.then31, %if.then20, %if.then9, %if.then4, %if.then
  %cipher_fetch.0 = phi %struct.evp_cipher_st* [ null, %if.then ], [ null, %if.then9 ], [ null, %if.then20 ], [ %call13, %if.then31 ], [ %call13, %if.end32 ], [ %call13, %if.end22 ], [ null, %if.then4 ]
  %rv.0 = phi i32 [ 0, %if.then ], [ 0, %if.then9 ], [ 0, %if.then20 ], [ 0, %if.then31 ], [ %call35, %if.end32 ], [ 0, %if.end22 ], [ 0, %if.then4 ]
  %12 = bitcast i8* %call1 to %struct.PBE2PARAM_st*
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %cipher_fetch.0) #7
  call void @PBE2PARAM_free(%struct.PBE2PARAM_st* noundef %12) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #6
  ret i32 %rv.0
}

declare i8* @ASN1_TYPE_unpack_sequence(%struct.ASN1_ITEM_st* noundef, %struct.asn1_type_st* noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @PBE2PARAM_it() local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @EVP_PBE_find_ex(i32 noundef, i32 noundef, i32* noundef, i32* noundef, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)** noundef, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, %struct.ossl_lib_ctx_st*, i8*)** noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2txt(i8* noundef, i32 noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ERR_set_mark() local_unnamed_addr #2

declare %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef) local_unnamed_addr #2

declare i32 @ERR_clear_last_mark() local_unnamed_addr #2

declare i32 @ERR_pop_to_mark() local_unnamed_addr #2

declare i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_asn1_to_param(%struct.evp_cipher_ctx_st* noundef, %struct.asn1_type_st* noundef) local_unnamed_addr #2

declare void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare void @PBE2PARAM_free(%struct.PBE2PARAM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS5_v2_PBE_keyivgen(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %pass, i32 noundef %passlen, %struct.asn1_type_st* noundef %param, %struct.evp_cipher_st* nocapture noundef readnone %c, %struct.evp_md_st* nocapture noundef readnone %md, i32 noundef %en_de) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @PKCS5_v2_PBE_keyivgen_ex(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %pass, i32 noundef %passlen, %struct.asn1_type_st* noundef %param, %struct.evp_cipher_st* undef, %struct.evp_md_st* undef, i32 noundef %en_de, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS5_v2_PBKDF2_keyivgen_ex(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %pass, i32 noundef %passlen, %struct.asn1_type_st* noundef %param, %struct.evp_cipher_st* nocapture readnone %c, %struct.evp_md_st* nocapture readnone %md, i32 noundef %en_de, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %key = alloca [64 x i8], align 16
  %hmac_md_nid = alloca i32, align 4
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %key, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #6
  %1 = bitcast i32* %hmac_md_nid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #6
  %call = tail call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %cmp = icmp eq %struct.evp_cipher_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 noundef 193, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.PKCS5_v2_PBKDF2_keyivgen_ex, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 131, i8* noundef null) #7
  br label %err

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %cmp2 = icmp ult i32 %call1, 65
  br i1 %cmp2, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 noundef 197) #10
  unreachable

cond.end:                                         ; preds = %if.end
  %call4 = tail call %struct.ASN1_ITEM_st* @PBKDF2PARAM_it() #7
  %call5 = tail call i8* @ASN1_TYPE_unpack_sequence(%struct.ASN1_ITEM_st* noundef %call4, %struct.asn1_type_st* noundef %param) #7
  %2 = bitcast i8* %call5 to %struct.PBKDF2PARAM_st*
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %cond.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 noundef 204, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.PKCS5_v2_PBKDF2_keyivgen_ex, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 114, i8* noundef null) #7
  br label %err

if.end9:                                          ; preds = %cond.end
  %call10 = tail call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %ctx) #7
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 noundef 210, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.PKCS5_v2_PBKDF2_keyivgen_ex, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 130, i8* noundef null) #7
  br label %err

if.end14:                                         ; preds = %if.end9
  %keylength = getelementptr inbounds i8, i8* %call5, i64 16
  %3 = bitcast i8* %keylength to %struct.asn1_string_st**
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %3, align 8, !tbaa !19
  %tobool.not = icmp eq %struct.asn1_string_st* %4, null
  br i1 %tobool.not, label %if.end21, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end14
  %call16 = tail call i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef nonnull %4) #7
  %conv1798 = zext i32 %call10 to i64
  %cmp18.not = icmp eq i64 %call16, %conv1798
  br i1 %cmp18.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %land.lhs.true
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 noundef 218, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.PKCS5_v2_PBKDF2_keyivgen_ex, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 123, i8* noundef null) #7
  br label %err

if.end21:                                         ; preds = %land.lhs.true, %if.end14
  %prf = getelementptr inbounds i8, i8* %call5, i64 24
  %5 = bitcast i8* %prf to %struct.X509_algor_st**
  %6 = load %struct.X509_algor_st*, %struct.X509_algor_st** %5, align 8, !tbaa !21
  %tobool22.not = icmp eq %struct.X509_algor_st* %6, null
  br i1 %tobool22.not, label %if.end26, label %if.then23

if.then23:                                        ; preds = %if.end21
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %6, i64 0, i32 0
  %7 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !15
  %call25 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %7) #7
  br label %if.end26

if.end26:                                         ; preds = %if.end21, %if.then23
  %prf_nid.0 = phi i32 [ %call25, %if.then23 ], [ 163, %if.end21 ]
  %call27 = call i32 @EVP_PBE_find(i32 noundef 1, i32 noundef %prf_nid.0, i32* noundef null, i32* noundef nonnull %hmac_md_nid, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)** noundef null) #7
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end26
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 noundef 228, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.PKCS5_v2_PBKDF2_keyivgen_ex, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 125, i8* noundef null) #7
  br label %err

if.end30:                                         ; preds = %if.end26
  %8 = load i32, i32* %hmac_md_nid, align 4, !tbaa !4
  %call31 = call i8* @OBJ_nid2sn(i32 noundef %8) #7
  %call32 = call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %call31, i8* noundef %propq) #7
  %cmp33 = icmp eq %struct.evp_md_st* %call32, null
  br i1 %cmp33, label %if.end38, label %if.end42

if.end38:                                         ; preds = %if.end30
  %9 = load i32, i32* %hmac_md_nid, align 4, !tbaa !4
  %call36 = call i8* @OBJ_nid2sn(i32 noundef %9) #7
  %call37 = call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %call36) #7
  %cmp39 = icmp eq %struct.evp_md_st* %call37, null
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end38
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 noundef 236, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.PKCS5_v2_PBKDF2_keyivgen_ex, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 125, i8* noundef null) #7
  br label %err

if.end42:                                         ; preds = %if.end30, %if.end38
  %prfmd.097 = phi %struct.evp_md_st* [ %call37, %if.end38 ], [ %call32, %if.end30 ]
  %salt43 = bitcast i8* %call5 to %struct.asn1_type_st**
  %10 = load %struct.asn1_type_st*, %struct.asn1_type_st** %salt43, align 8, !tbaa !22
  %type = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %10, i64 0, i32 0
  %11 = load i32, i32* %type, align 8, !tbaa !23
  %cmp44.not = icmp eq i32 %11, 4
  br i1 %cmp44.not, label %if.end47, label %if.then46

if.then46:                                        ; preds = %if.end42
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 noundef 241, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.PKCS5_v2_PBKDF2_keyivgen_ex, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 126, i8* noundef null) #7
  br label %err

if.end47:                                         ; preds = %if.end42
  %value = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %10, i64 0, i32 1
  %octet_string = bitcast %union.anon.6* %value to %struct.asn1_string_st**
  %12 = load %struct.asn1_string_st*, %struct.asn1_string_st** %octet_string, align 8, !tbaa !25
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %12, i64 0, i32 2
  %13 = load i8*, i8** %data, align 8, !tbaa !26
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %12, i64 0, i32 0
  %14 = load i32, i32* %length, align 8, !tbaa !28
  %iter52 = getelementptr inbounds i8, i8* %call5, i64 8
  %15 = bitcast i8* %iter52 to %struct.asn1_string_st**
  %16 = load %struct.asn1_string_st*, %struct.asn1_string_st** %15, align 8, !tbaa !29
  %call53 = call i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef %16) #7
  %conv54 = trunc i64 %call53 to i32
  %call55 = call i32 @ossl_pkcs5_pbkdf2_hmac_ex(i8* noundef %pass, i32 noundef %passlen, i8* noundef %13, i32 noundef %14, i32 noundef %conv54, %struct.evp_md_st* noundef nonnull %prfmd.097, i32 noundef %call10, i8* noundef nonnull %0, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #9
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %err, label %if.end58

if.end58:                                         ; preds = %if.end47
  %call60 = call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef nonnull %0, i8* noundef null, i32 noundef %en_de) #7
  br label %err

err:                                              ; preds = %if.end47, %if.end58, %if.then46, %if.then41, %if.then29, %if.then20, %if.then13, %if.then8, %if.then
  %rv.0 = phi i32 [ 0, %if.then ], [ 0, %if.then8 ], [ 0, %if.then13 ], [ 0, %if.then20 ], [ 0, %if.then41 ], [ 0, %if.then46 ], [ %call60, %if.end58 ], [ 0, %if.end47 ], [ 0, %if.then29 ]
  %keylen.0 = phi i32 [ 0, %if.then ], [ %call1, %if.then8 ], [ %call1, %if.then13 ], [ %call10, %if.then20 ], [ %call10, %if.then41 ], [ %call10, %if.then46 ], [ %call10, %if.end58 ], [ %call10, %if.end47 ], [ %call10, %if.then29 ]
  %kdf.0 = phi %struct.PBKDF2PARAM_st* [ null, %if.then ], [ null, %if.then8 ], [ %2, %if.then13 ], [ %2, %if.then20 ], [ %2, %if.then41 ], [ %2, %if.then46 ], [ %2, %if.end58 ], [ %2, %if.end47 ], [ %2, %if.then29 ]
  %prfmd_fetch.0 = phi %struct.evp_md_st* [ null, %if.then ], [ null, %if.then8 ], [ null, %if.then13 ], [ null, %if.then20 ], [ null, %if.then41 ], [ %call32, %if.then46 ], [ %call32, %if.end58 ], [ %call32, %if.end47 ], [ null, %if.then29 ]
  %conv62 = zext i32 %keylen.0 to i64
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef %conv62) #7
  call void @PBKDF2PARAM_free(%struct.PBKDF2PARAM_st* noundef %kdf.0) #7
  call void @EVP_MD_free(%struct.evp_md_st* noundef %prfmd_fetch.0) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #6
  ret i32 %rv.0
}

declare %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @OPENSSL_die(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

declare %struct.ASN1_ITEM_st* @PBKDF2PARAM_it() local_unnamed_addr #2

declare i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PBE_find(i32 noundef, i32 noundef, i32* noundef, i32* noundef, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)** noundef) local_unnamed_addr #2

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @PBKDF2PARAM_free(%struct.PBKDF2PARAM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS5_v2_PBKDF2_keyivgen(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %pass, i32 noundef %passlen, %struct.asn1_type_st* noundef %param, %struct.evp_cipher_st* nocapture noundef readnone %c, %struct.evp_md_st* nocapture noundef readnone %md, i32 noundef %en_de) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @PKCS5_v2_PBKDF2_keyivgen_ex(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %pass, i32 noundef %passlen, %struct.asn1_type_st* noundef %param, %struct.evp_cipher_st* undef, %struct.evp_md_st* undef, i32 noundef %en_de, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #9
  ret i32 %call
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { noreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin noreturn nounwind "no-builtins" }

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
!8 = !{i64 0, i64 8, !9, i64 8, i64 4, !4, i64 16, i64 8, !9, i64 24, i64 8, !11, i64 32, i64 8, !11}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!14, !10, i64 0}
!14 = !{!"PBE2PARAM_st", !10, i64 0, !10, i64 8}
!15 = !{!16, !10, i64 0}
!16 = !{!"X509_algor_st", !10, i64 0, !10, i64 8}
!17 = !{!14, !10, i64 8}
!18 = !{!16, !10, i64 8}
!19 = !{!20, !10, i64 16}
!20 = !{!"PBKDF2PARAM_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!21 = !{!20, !10, i64 24}
!22 = !{!20, !10, i64 0}
!23 = !{!24, !5, i64 0}
!24 = !{!"asn1_type_st", !5, i64 0, !6, i64 8}
!25 = !{!6, !6, i64 0}
!26 = !{!27, !10, i64 8}
!27 = !{!"asn1_string_st", !5, i64 0, !5, i64 4, !10, i64 8, !12, i64 16}
!28 = !{!27, !5, i64 0}
!29 = !{!20, !10, i64 8}
