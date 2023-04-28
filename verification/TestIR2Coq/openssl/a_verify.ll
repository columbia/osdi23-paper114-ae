; ModuleID = 'crypto/asn1/a_verify.c'
source_filename = "crypto/asn1/a_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon }
%struct.evp_pkey_asn1_method_st = type { i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* }
%struct.X509_pubkey_st = type opaque
%struct.pkcs8_priv_key_info_st = type opaque
%struct.bio_st = type opaque
%struct.asn1_pctx_st = type { i64, i64, i64, i64, i64 }
%struct.evp_md_ctx_st = type opaque
%struct.ASN1_ITEM_st = type opaque
%struct.x509_sig_info_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_lib_ctx_st = type opaque
%struct.engine_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.evp_keymgmt_st = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon = type { i32, i32, i32 }
%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.ossl_provider_st = type opaque
%struct.evp_pkey_ctx_st = type { i32, %struct.ossl_lib_ctx_st*, i8*, i8*, %struct.evp_keymgmt_st*, %union.anon.0, %struct.anon.6, i8*, i32 (%struct.evp_pkey_ctx_st*)*, i32*, i32, i32, %struct.evp_pkey_method_st*, %struct.engine_st*, %struct.evp_pkey_st*, %struct.evp_pkey_st*, i8*, i8, %struct.bignum_st* }
%union.anon.0 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.evp_keyexch_st*, i8* }
%struct.evp_keyexch_st = type opaque
%struct.anon.6 = type { i8*, i8*, i64, i8 }
%struct.evp_pkey_method_st = type { i32, i32, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)*, {}*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* }
%struct.bignum_st = type opaque
%struct.ASN1_VALUE_st = type opaque

@.str = private unnamed_addr constant [23 x i8] c"crypto/asn1/a_verify.c\00", align 1
@__func__.ASN1_verify = private unnamed_addr constant [12 x i8] c"ASN1_verify\00", align 1
@__func__.ASN1_item_verify_ctx = private unnamed_addr constant [21 x i8] c"ASN1_item_verify_ctx\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"RSA-PSS\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_verify(i32 (i8*, i8**)* nocapture noundef readonly %i2d, %struct.X509_algor_st* nocapture noundef readonly %a, %struct.asn1_string_st* nocapture noundef readonly %signature, i8* noundef %data, %struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %call = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #3
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  %cmp = icmp eq %struct.evp_md_ctx_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 36, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.ASN1_verify, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #3
  br label %err

if.end:                                           ; preds = %entry
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %a, i64 0, i32 0
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !4
  %call1 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %1) #3
  %call2 = tail call i8* @OBJ_nid2sn(i32 noundef %call1) #3
  %call3 = tail call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %call2) #3
  %cmp4 = icmp eq %struct.evp_md_st* %call3, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 42, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.ASN1_verify, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 161, i8* noundef null) #3
  br label %err

if.end6:                                          ; preds = %if.end
  %type7 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %signature, i64 0, i32 1
  %2 = load i32, i32* %type7, align 4, !tbaa !9
  %cmp8 = icmp eq i32 %2, 3
  br i1 %cmp8, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end6
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %signature, i64 0, i32 3
  %3 = load i64, i64* %flags, align 8, !tbaa !13
  %and = and i64 %3, 7
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %land.lhs.true
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.ASN1_verify, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 220, i8* noundef null) #3
  br label %err

if.end10:                                         ; preds = %land.lhs.true, %if.end6
  %call11 = tail call i32 %i2d(i8* noundef %data, i8** noundef null) #3
  %cmp12 = icmp slt i32 %call11, 1
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.ASN1_verify, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786691, i8* noundef null) #3
  br label %err

if.end14:                                         ; preds = %if.end10
  %conv = zext i32 %call11 to i64
  %call15 = tail call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 56) #3
  %cmp16 = icmp eq i8* %call15, null
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end14
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.ASN1_verify, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #3
  br label %err

if.end19:                                         ; preds = %if.end14
  store i8* %call15, i8** %p, align 8, !tbaa !14
  %call20 = call i32 %i2d(i8* noundef %data, i8** noundef nonnull %p) #3
  %call21 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call, %struct.evp_md_st* noundef nonnull %call3, %struct.engine_st* noundef null) #3
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.end.thread, label %land.end

land.end.thread:                                  ; preds = %if.end19
  call void @CRYPTO_clear_free(i8* noundef nonnull %call15, i64 noundef %conv, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 67) #3
  br label %if.then28

land.end:                                         ; preds = %if.end19
  %call24 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef nonnull %call15, i64 noundef %conv) #3
  %tobool25.not = icmp eq i32 %call24, 0
  call void @CRYPTO_clear_free(i8* noundef nonnull %call15, i64 noundef %conv, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 67) #3
  br i1 %tobool25.not, label %if.then28, label %if.end29

if.then28:                                        ; preds = %land.end.thread, %land.end
  call void @ERR_new() #3
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.ASN1_verify, i64 0, i64 0)) #3
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 524294, i8* noundef null) #3
  br label %err

if.end29:                                         ; preds = %land.end
  %data30 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %signature, i64 0, i32 2
  %4 = load i8*, i8** %data30, align 8, !tbaa !15
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %signature, i64 0, i32 0
  %5 = load i32, i32* %length, align 8, !tbaa !16
  %call31 = call i32 @EVP_VerifyFinal(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef %4, i32 noundef %5, %struct.evp_pkey_st* noundef %pkey) #3
  %cmp32 = icmp slt i32 %call31, 1
  br i1 %cmp32, label %if.then34, label %err

if.then34:                                        ; preds = %if.end29
  call void @ERR_new() #3
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.ASN1_verify, i64 0, i64 0)) #3
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 524294, i8* noundef null) #3
  br label %err

err:                                              ; preds = %if.end29, %if.then34, %if.then28, %if.then18, %if.then13, %if.then9, %if.then5, %if.then
  %ret.0 = phi i32 [ -1, %if.then ], [ -1, %if.then5 ], [ -1, %if.then9 ], [ -1, %if.then13 ], [ -1, %if.then18 ], [ 0, %if.then34 ], [ 0, %if.then28 ], [ 1, %if.end29 ]
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #2

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_VerifyFinal(%struct.evp_md_ctx_st* noundef, i8* noundef, i32 noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_item_verify(%struct.ASN1_ITEM_st* noundef %it, %struct.X509_algor_st* noundef %alg, %struct.asn1_string_st* noundef %signature, i8* noundef %data, %struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ASN1_item_verify_ex(%struct.ASN1_ITEM_st* noundef %it, %struct.X509_algor_st* noundef %alg, %struct.asn1_string_st* noundef %signature, i8* noundef %data, %struct.asn1_string_st* noundef null, %struct.evp_pkey_st* noundef %pkey, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_item_verify_ex(%struct.ASN1_ITEM_st* noundef %it, %struct.X509_algor_st* noundef %alg, %struct.asn1_string_st* noundef %signature, i8* noundef %data, %struct.asn1_string_st* noundef %id, %struct.evp_pkey_st* noundef %pkey, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_md_ctx_st* @evp_md_ctx_new_ex(%struct.evp_pkey_st* noundef %pkey, %struct.asn1_string_st* noundef %id, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #3
  %cmp.not = icmp eq %struct.evp_md_ctx_st* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ASN1_item_verify_ctx(%struct.ASN1_ITEM_st* noundef %it, %struct.X509_algor_st* noundef %alg, %struct.asn1_string_st* noundef %signature, i8* noundef %data, %struct.evp_md_ctx_st* noundef nonnull %call) #5
  %call2 = tail call %struct.evp_pkey_ctx_st* @EVP_MD_CTX_get_pkey_ctx(%struct.evp_md_ctx_st* noundef nonnull %call) #3
  tail call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call2) #3
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef nonnull %call) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rv.0 = phi i32 [ %call1, %if.then ], [ -1, %entry ]
  ret i32 %rv.0
}

declare %struct.evp_md_ctx_st* @evp_md_ctx_new_ex(%struct.evp_pkey_st* noundef, %struct.asn1_string_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_item_verify_ctx(%struct.ASN1_ITEM_st* noundef %it, %struct.X509_algor_st* noundef %alg, %struct.asn1_string_st* noundef %signature, i8* noundef %data, %struct.evp_md_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %buf_in = alloca i8*, align 8
  %mdnid = alloca i32, align 4
  %pknid = alloca i32, align 4
  %0 = bitcast i8** %buf_in to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store i8* null, i8** %buf_in, align 8, !tbaa !14
  %1 = bitcast i32* %mdnid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #4
  %2 = bitcast i32* %pknid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #4
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_MD_CTX_get_pkey_ctx(%struct.evp_md_ctx_st* noundef %ctx) #3
  %call1 = tail call %struct.evp_pkey_st* @EVP_PKEY_CTX_get0_pkey(%struct.evp_pkey_ctx_st* noundef %call) #3
  %cmp = icmp eq %struct.evp_pkey_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 125, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ASN1_item_verify_ctx, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786690, i8* noundef null) #3
  br label %cleanup82

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %signature, i64 0, i32 1
  %3 = load i32, i32* %type, align 4, !tbaa !9
  %cmp2 = icmp eq i32 %3, 3
  br i1 %cmp2, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %signature, i64 0, i32 3
  %4 = load i64, i64* %flags, align 8, !tbaa !13
  %and = and i64 %4, 7
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 130, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ASN1_item_verify_ctx, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 220, i8* noundef null) #3
  br label %cleanup82

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %alg, i64 0, i32 0
  %5 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !4
  %call5 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %5) #3
  %call6 = call i32 @OBJ_find_sigid_algs(i32 noundef %call5, i32* noundef nonnull %mdnid, i32* noundef nonnull %pknid) #3
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %err.sink.split, label %if.end9

if.end9:                                          ; preds = %if.end4
  %6 = load i32, i32* %mdnid, align 4, !tbaa !17
  %cmp10 = icmp eq i32 %6, 0
  br i1 %cmp10, label %land.lhs.true11, label %if.else.thread

if.else.thread:                                   ; preds = %if.end9
  %7 = load i32, i32* %pknid, align 4
  br label %if.else47

land.lhs.true11:                                  ; preds = %if.end9
  %type12 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %call1, i64 0, i32 0
  %8 = load i32, i32* %type12, align 8, !tbaa !18
  %cmp13.not = icmp eq i32 %8, 0
  br i1 %cmp13.not, label %if.else, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %land.lhs.true11
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %call1, i64 0, i32 13
  %9 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !22
  %cmp15 = icmp eq %struct.evp_keymgmt_st* %9, null
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %land.lhs.true14
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %call1, i64 0, i32 2
  %10 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !23
  %cmp17 = icmp eq %struct.evp_pkey_asn1_method_st* %10, null
  br i1 %cmp17, label %err.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then16
  %item_verify = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %10, i64 0, i32 26
  %11 = load i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)** %item_verify, align 8, !tbaa !24
  %cmp19 = icmp eq i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)* %11, null
  br i1 %cmp19, label %err.sink.split, label %if.end21

if.end21:                                         ; preds = %lor.lhs.false
  %call24 = call i32 %11(%struct.evp_md_ctx_st* noundef %ctx, %struct.ASN1_ITEM_st* noundef %it, i8* noundef %data, %struct.X509_algor_st* noundef nonnull %alg, %struct.asn1_string_st* noundef nonnull %signature, %struct.evp_pkey_st* noundef nonnull %call1) #3
  %cmp25 = icmp slt i32 %call24, 1
  br i1 %cmp25, label %err.sink.split, label %if.end27

if.end27:                                         ; preds = %if.end21
  %cmp28 = icmp eq i32 %call24, 1
  br i1 %cmp28, label %err, label %if.end66

if.else:                                          ; preds = %land.lhs.true14, %land.lhs.true11
  %12 = load i32, i32* %pknid, align 4
  %cmp34 = icmp eq i32 %12, 912
  br i1 %cmp34, label %if.then35, label %if.else47

if.then35:                                        ; preds = %if.else
  %call36 = call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef nonnull %call1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #3
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %land.lhs.true38, label %if.end42

land.lhs.true38:                                  ; preds = %if.then35
  %call39 = call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef nonnull %call1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)) #3
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err.sink.split, label %if.end42

if.end42:                                         ; preds = %land.lhs.true38, %if.then35
  %call43 = call i32 @ossl_rsa_pss_to_ctx(%struct.evp_md_ctx_st* noundef %ctx, %struct.evp_pkey_ctx_st* noundef null, %struct.X509_algor_st* noundef nonnull %alg, %struct.evp_pkey_st* noundef nonnull %call1) #3
  %cmp44 = icmp slt i32 %call43, 1
  br i1 %cmp44, label %err.sink.split, label %if.end66

if.else47:                                        ; preds = %if.else.thread, %if.else
  %13 = phi i32 [ %7, %if.else.thread ], [ %12, %if.else ]
  %call48 = call i8* @OBJ_nid2sn(i32 noundef %13) #3
  %call49 = call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef nonnull %call1, i8* noundef %call48) #3
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %err.sink.split, label %if.end52

if.end52:                                         ; preds = %if.else47
  %14 = load i32, i32* %mdnid, align 4, !tbaa !17
  %cmp53.not = icmp eq i32 %14, 0
  br i1 %cmp53.not, label %if.end60, label %if.then54

if.then54:                                        ; preds = %if.end52
  %call55 = call i8* @OBJ_nid2sn(i32 noundef %14) #3
  %call56 = call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %call55) #3
  %cmp57 = icmp eq %struct.evp_md_st* %call56, null
  br i1 %cmp57, label %err.sink.split, label %if.end60

if.end60:                                         ; preds = %if.then54, %if.end52
  %type31.0 = phi %struct.evp_md_st* [ %call56, %if.then54 ], [ null, %if.end52 ]
  %call61 = call i32 @EVP_DigestVerifyInit(%struct.evp_md_ctx_st* noundef %ctx, %struct.evp_pkey_ctx_st** noundef null, %struct.evp_md_st* noundef %type31.0, %struct.engine_st* noundef null, %struct.evp_pkey_st* noundef nonnull %call1) #3
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %err.sink.split, label %if.end66

if.end66:                                         ; preds = %if.end60, %if.end42, %if.end27
  %ret.1 = phi i32 [ %call24, %if.end27 ], [ -1, %if.end60 ], [ -1, %if.end42 ]
  %15 = bitcast i8* %data to %struct.ASN1_VALUE_st*
  %call67 = call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %15, i8** noundef nonnull %buf_in, %struct.ASN1_ITEM_st* noundef %it) #3
  %cmp68 = icmp slt i32 %call67, 1
  br i1 %cmp68, label %err.sink.split, label %if.end70

if.end70:                                         ; preds = %if.end66
  %16 = load i8*, i8** %buf_in, align 8, !tbaa !14
  %cmp71 = icmp eq i8* %16, null
  br i1 %cmp71, label %err.sink.split, label %if.end73

if.end73:                                         ; preds = %if.end70
  %conv133 = zext i32 %call67 to i64
  %data74 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %signature, i64 0, i32 2
  %17 = load i8*, i8** %data74, align 8, !tbaa !15
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %signature, i64 0, i32 0
  %18 = load i32, i32* %length, align 8, !tbaa !16
  %conv75 = sext i32 %18 to i64
  %call77 = call i32 @EVP_DigestVerify(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %17, i64 noundef %conv75, i8* noundef nonnull %16, i64 noundef %conv133) #3
  %cmp78 = icmp slt i32 %call77, 1
  br i1 %cmp78, label %err.sink.split, label %err

err.sink.split:                                   ; preds = %if.end73, %if.end70, %if.end66, %if.end60, %if.then54, %if.else47, %if.end42, %land.lhs.true38, %if.end21, %if.then16, %lor.lhs.false, %if.end4
  %.sink134 = phi i32 [ 136, %if.end4 ], [ 142, %lor.lhs.false ], [ 142, %if.then16 ], [ 153, %if.end21 ], [ 167, %land.lhs.true38 ], [ 172, %if.end42 ], [ 178, %if.else47 ], [ 186, %if.then54 ], [ 196, %if.end60 ], [ 205, %if.end66 ], [ 209, %if.end70 ], [ 217, %if.end73 ]
  %.sink = phi i32 [ 199, %if.end4 ], [ 199, %lor.lhs.false ], [ 199, %if.then16 ], [ 524294, %if.end21 ], [ 200, %land.lhs.true38 ], [ 786691, %if.end42 ], [ 200, %if.else47 ], [ 161, %if.then54 ], [ 524294, %if.end60 ], [ 786691, %if.end66 ], [ 786688, %if.end70 ], [ 524294, %if.end73 ]
  %ret.2.ph = phi i32 [ -1, %if.end4 ], [ -1, %lor.lhs.false ], [ -1, %if.then16 ], [ %call24, %if.end21 ], [ -1, %land.lhs.true38 ], [ -1, %if.end42 ], [ -1, %if.else47 ], [ -1, %if.then54 ], [ 0, %if.end60 ], [ %ret.1, %if.end66 ], [ %ret.1, %if.end70 ], [ %call77, %if.end73 ]
  %inll.0.ph = phi i64 [ 0, %if.end4 ], [ 0, %lor.lhs.false ], [ 0, %if.then16 ], [ 0, %if.end21 ], [ 0, %land.lhs.true38 ], [ 0, %if.end42 ], [ 0, %if.else47 ], [ 0, %if.then54 ], [ 0, %if.end60 ], [ 0, %if.end66 ], [ 0, %if.end70 ], [ %conv133, %if.end73 ]
  call void @ERR_new() #3
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink134, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ASN1_item_verify_ctx, i64 0, i64 0)) #3
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef %.sink, i8* noundef null) #3
  br label %err

err:                                              ; preds = %err.sink.split, %if.end73, %if.end27
  %ret.2 = phi i32 [ 1, %if.end27 ], [ 1, %if.end73 ], [ %ret.2.ph, %err.sink.split ]
  %inll.0 = phi i64 [ 0, %if.end27 ], [ %conv133, %if.end73 ], [ %inll.0.ph, %err.sink.split ]
  %19 = load i8*, i8** %buf_in, align 8, !tbaa !14
  call void @CRYPTO_clear_free(i8* noundef %19, i64 noundef %inll.0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 222) #3
  br label %cleanup82

cleanup82:                                        ; preds = %err, %if.then3, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then3 ], [ %ret.2, %err ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %retval.0
}

declare void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_ctx_st* @EVP_MD_CTX_get_pkey_ctx(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @EVP_PKEY_CTX_get0_pkey(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare i32 @OBJ_find_sigid_algs(i32 noundef, i32* noundef, i32* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @ossl_rsa_pss_to_ctx(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st* noundef, %struct.X509_algor_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestVerifyInit(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st** noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestVerify(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"X509_algor_st", !6, i64 0, !6, i64 8}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 4}
!10 = !{!"asn1_string_st", !11, i64 0, !11, i64 4, !6, i64 8, !12, i64 16}
!11 = !{!"int", !7, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!10, !12, i64 16}
!14 = !{!6, !6, i64 0}
!15 = !{!10, !6, i64 8}
!16 = !{!10, !11, i64 0}
!17 = !{!11, !11, i64 0}
!18 = !{!19, !11, i64 0}
!19 = !{!"evp_pkey_st", !11, i64 0, !11, i64 4, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !6, i64 56, !6, i64 64, !11, i64 72, !11, i64 76, !20, i64 80, !6, i64 96, !6, i64 104, !12, i64 112, !6, i64 120, !12, i64 128, !21, i64 136}
!20 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!21 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8}
!22 = !{!19, !6, i64 96}
!23 = !{!19, !6, i64 8}
!24 = !{!25, !6, i64 200}
!25 = !{!"evp_pkey_asn1_method_st", !11, i64 0, !11, i64 4, !12, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312}
