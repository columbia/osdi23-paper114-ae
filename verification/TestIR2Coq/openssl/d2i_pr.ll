; ModuleID = 'crypto/asn1/d2i_pr.c'
source_filename = "crypto/asn1/d2i_pr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon }
%struct.evp_pkey_asn1_method_st = type { i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* }
%struct.X509_pubkey_st = type opaque
%struct.pkcs8_priv_key_info_st = type opaque
%struct.bio_st = type opaque
%struct.asn1_pctx_st = type { i64, i64, i64, i64, i64 }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.evp_md_ctx_st = type opaque
%struct.ASN1_ITEM_st = type opaque
%struct.x509_sig_info_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.engine_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.evp_keymgmt_st = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon = type { i32, i32, i32 }
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_decoder_ctx_st = type opaque
%struct.stack_st_ASN1_TYPE = type opaque
%struct.stack_st = type opaque

@.str = private unnamed_addr constant [21 x i8] c"crypto/asn1/d2i_pr.c\00", align 1
@__func__.ossl_d2i_PrivateKey_legacy = private unnamed_addr constant [27 x i8] c"ossl_d2i_PrivateKey_legacy\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"type-specific\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"PrivateKeyInfo\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"DER\00", align 1
@__func__.d2i_AutoPrivateKey_legacy = private unnamed_addr constant [26 x i8] c"d2i_AutoPrivateKey_legacy\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @ossl_d2i_PrivateKey_legacy(i32 noundef %keytype, %struct.evp_pkey_st** noundef %a, i8** nocapture noundef %pp, i64 noundef %length, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  %1 = load i8*, i8** %pp, align 8, !tbaa !4
  store i8* %1, i8** %p, align 8, !tbaa !4
  %cmp = icmp eq %struct.evp_pkey_st** %a, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %a, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.evp_pkey_st* %2, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #5
  %cmp2 = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.then
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ossl_d2i_PrivateKey_legacy, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 524294, i8* noundef null) #5
  br label %cleanup63

if.else:                                          ; preds = %lor.lhs.false
  %engine = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %2, i64 0, i32 3
  %3 = load %struct.engine_st*, %struct.engine_st** %engine, align 8, !tbaa !8
  %call4 = tail call i32 @ENGINE_finish(%struct.engine_st* noundef %3) #5
  store %struct.engine_st* null, %struct.engine_st** %engine, align 8, !tbaa !8
  br label %if.end6

if.end6:                                          ; preds = %if.then, %if.else
  %ret.0 = phi %struct.evp_pkey_st* [ %call, %if.then ], [ %2, %if.else ]
  %call7 = tail call i32 @EVP_PKEY_set_type(%struct.evp_pkey_st* noundef nonnull %ret.0, i32 noundef %keytype) #5
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 98, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ossl_d2i_PrivateKey_legacy, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 163, i8* noundef null) #5
  br label %err

if.end9:                                          ; preds = %if.end6
  %call10 = tail call i32 @ERR_set_mark() #5
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %ret.0, i64 0, i32 2
  %4 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !14
  %old_priv_decode = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %4, i64 0, i32 24
  %5 = load i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**, i32)** %old_priv_decode, align 8, !tbaa !15
  %tobool11.not = icmp eq i32 (%struct.evp_pkey_st*, i8**, i32)* %5, null
  br i1 %tobool11.not, label %if.then17, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.end9
  %conv = trunc i64 %length to i32
  %call15 = call i32 %5(%struct.evp_pkey_st* noundef nonnull %ret.0, i8** noundef nonnull %p, i32 noundef %conv) #5
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %lor.lhs.false12.if.then17_crit_edge, label %if.else49

lor.lhs.false12.if.then17_crit_edge:              ; preds = %lor.lhs.false12
  %.pre = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !14
  br label %if.then17

if.then17:                                        ; preds = %lor.lhs.false12.if.then17_crit_edge, %if.end9
  %6 = phi %struct.evp_pkey_asn1_method_st* [ %.pre, %lor.lhs.false12.if.then17_crit_edge ], [ %4, %if.end9 ]
  %priv_decode = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %6, i64 0, i32 9
  %7 = load i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)** %priv_decode, align 8, !tbaa !17
  %cmp19.not = icmp eq i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)* %7, null
  br i1 %cmp19.not, label %lor.lhs.false21, label %if.then25

lor.lhs.false21:                                  ; preds = %if.then17
  %priv_decode_ex = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %6, i64 0, i32 40
  %8 = load i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)** %priv_decode_ex, align 8, !tbaa !18
  %cmp23.not = icmp eq i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* %8, null
  br i1 %cmp23.not, label %if.else46, label %if.then25

if.then25:                                        ; preds = %lor.lhs.false21, %if.then17
  %call26 = call %struct.pkcs8_priv_key_info_st* @d2i_PKCS8_PRIV_KEY_INFO(%struct.pkcs8_priv_key_info_st** noundef null, i8** noundef nonnull %p, i64 noundef %length) #5
  %cmp27 = icmp eq %struct.pkcs8_priv_key_info_st* %call26, null
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.then25
  %call30 = call i32 @ERR_clear_last_mark() #5
  br label %err

if.end31:                                         ; preds = %if.then25
  %call32 = call %struct.evp_pkey_st* @evp_pkcs82pkey_legacy(%struct.pkcs8_priv_key_info_st* noundef nonnull %call26, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #5
  call void @PKCS8_PRIV_KEY_INFO_free(%struct.pkcs8_priv_key_info_st* noundef nonnull %call26) #5
  %cmp33 = icmp eq %struct.evp_pkey_st* %call32, null
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end31
  %call36 = call i32 @ERR_clear_last_mark() #5
  br label %err

if.end37:                                         ; preds = %if.end31
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %ret.0) #5
  %call38 = call i32 @ERR_pop_to_mark() #5
  %call39 = call i32 @EVP_PKEY_type(i32 noundef %keytype) #5
  %call40 = call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef nonnull %call32) #5
  %cmp41.not = icmp eq i32 %call39, %call40
  br i1 %cmp41.not, label %if.end51, label %err

if.else46:                                        ; preds = %lor.lhs.false21
  %call47 = call i32 @ERR_clear_last_mark() #5
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 127, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ossl_d2i_PrivateKey_legacy, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 524301, i8* noundef null) #5
  br label %err

if.else49:                                        ; preds = %lor.lhs.false12
  %call50 = call i32 @ERR_clear_last_mark() #5
  br label %if.end51

if.end51:                                         ; preds = %if.end37, %if.else49
  %ret.2 = phi %struct.evp_pkey_st* [ %ret.0, %if.else49 ], [ %call32, %if.end37 ]
  %9 = load i8*, i8** %p, align 8, !tbaa !4
  store i8* %9, i8** %pp, align 8, !tbaa !4
  br i1 %cmp, label %cleanup63, label %if.then54

if.then54:                                        ; preds = %if.end51
  store %struct.evp_pkey_st* %ret.2, %struct.evp_pkey_st** %a, align 8, !tbaa !4
  br label %cleanup63

err:                                              ; preds = %if.end37, %if.then35, %if.then29, %if.else46, %if.then8
  %ret.3 = phi %struct.evp_pkey_st* [ %ret.0, %if.else46 ], [ %ret.0, %if.then8 ], [ %call32, %if.end37 ], [ %ret.0, %if.then35 ], [ %ret.0, %if.then29 ]
  br i1 %cmp, label %if.then61, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %err
  %10 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %a, align 8, !tbaa !4
  %cmp59.not = icmp eq %struct.evp_pkey_st* %10, %ret.3
  br i1 %cmp59.not, label %cleanup63, label %if.then61

if.then61:                                        ; preds = %lor.lhs.false58, %err
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %ret.3) #5
  br label %cleanup63

cleanup63:                                        ; preds = %lor.lhs.false58, %if.then61, %if.end51, %if.then54, %if.then3
  %retval.0 = phi %struct.evp_pkey_st* [ null, %if.then3 ], [ %ret.2, %if.then54 ], [ %ret.2, %if.end51 ], [ null, %if.then61 ], [ null, %lor.lhs.false58 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret %struct.evp_pkey_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.evp_pkey_st* @EVP_PKEY_new() local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @ENGINE_finish(%struct.engine_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_set_type(%struct.evp_pkey_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ERR_set_mark() local_unnamed_addr #2

declare %struct.pkcs8_priv_key_info_st* @d2i_PKCS8_PRIV_KEY_INFO(%struct.pkcs8_priv_key_info_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ERR_clear_last_mark() local_unnamed_addr #2

declare %struct.evp_pkey_st* @evp_pkcs82pkey_legacy(%struct.pkcs8_priv_key_info_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare void @PKCS8_PRIV_KEY_INFO_free(%struct.pkcs8_priv_key_info_st* noundef) local_unnamed_addr #2

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @ERR_pop_to_mark() local_unnamed_addr #2

declare i32 @EVP_PKEY_type(i32 noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @d2i_PrivateKey_ex(i32 noundef %keytype, %struct.evp_pkey_st** noundef %a, i8** noundef %pp, i64 noundef %length, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.evp_pkey_st* @d2i_PrivateKey_decoder(i32 noundef %keytype, %struct.evp_pkey_st** noundef %a, i8** noundef %pp, i64 noundef %length, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #6
  %cmp = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call %struct.evp_pkey_st* @ossl_d2i_PrivateKey_legacy(i32 noundef %keytype, %struct.evp_pkey_st** noundef %a, i8** noundef %pp, i64 noundef %length, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi %struct.evp_pkey_st* [ %call1, %if.then ], [ %call, %entry ]
  ret %struct.evp_pkey_st* %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_st* @d2i_PrivateKey_decoder(i32 noundef %keytype, %struct.evp_pkey_st** noundef %a, i8** noundef %pp, i64 noundef %length, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) unnamed_addr #0 {
entry:
  %len = alloca i64, align 8
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store i64 %length, i64* %len, align 8, !tbaa !19
  %1 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #4
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !4
  %cmp.not = icmp eq i32 %keytype, 0
  br i1 %cmp.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i8* @evp_pkey_type2name(i32 noundef %keytype) #5
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %cleanup31, label %if.end3

if.end3:                                          ; preds = %if.then, %entry
  %key_name.0 = phi i8* [ %call, %if.then ], [ null, %entry ]
  %cmp5.not = icmp eq %struct.evp_pkey_st** %a, null
  %2 = load i8*, i8** %pp, align 8, !tbaa !4
  br i1 %cmp5.not, label %if.end8.thread, label %if.then11

if.end8.thread:                                   ; preds = %if.end3
  %call974 = call %struct.ossl_decoder_ctx_st* @OSSL_DECODER_CTX_new_for_pkey(%struct.evp_pkey_st** noundef nonnull %pkey, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* noundef %key_name.0, i32 noundef 135, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #5
  br label %if.end12

if.then11:                                        ; preds = %if.end3
  %3 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %a, align 8, !tbaa !4
  %cmp6.not = icmp eq %struct.evp_pkey_st* %3, null
  %spec.select69 = select i1 %cmp6.not, %struct.evp_pkey_st** %pkey, %struct.evp_pkey_st** %a
  %call9 = call %struct.ossl_decoder_ctx_st* @OSSL_DECODER_CTX_new_for_pkey(%struct.evp_pkey_st** noundef nonnull %spec.select69, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* noundef %key_name.0, i32 noundef 135, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #5
  store %struct.evp_pkey_st* %3, %struct.evp_pkey_st** %a, align 8, !tbaa !4
  br label %if.end12

if.end12:                                         ; preds = %if.end8.thread, %if.then11
  %call977 = phi %struct.ossl_decoder_ctx_st* [ %call974, %if.end8.thread ], [ %call9, %if.then11 ]
  %ppkey.176 = phi %struct.evp_pkey_st** [ %pkey, %if.end8.thread ], [ %spec.select69, %if.then11 ]
  %cmp13 = icmp eq %struct.ossl_decoder_ctx_st* %call977, null
  br i1 %cmp13, label %for.inc, label %if.end15

if.end15:                                         ; preds = %if.end12
  %call16 = call i32 @OSSL_DECODER_from_data(%struct.ossl_decoder_ctx_st* noundef nonnull %call977, i8** noundef nonnull %pp, i64* noundef nonnull %len) #5
  call void @OSSL_DECODER_CTX_free(%struct.ossl_decoder_ctx_st* noundef nonnull %call977) #5
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %for.inc, label %if.then17

if.then17:                                        ; preds = %if.end15.2, %if.end15.1, %if.end15
  %ppkey.176.lcssa = phi %struct.evp_pkey_st** [ %ppkey.176, %if.end15 ], [ %ppkey.176.1, %if.end15.1 ], [ %ppkey.176.2, %if.end15.2 ]
  %.lcssa = phi i8* [ %2, %if.end15 ], [ %7, %if.end15.1 ], [ %9, %if.end15.2 ]
  %4 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %ppkey.176.lcssa, align 8, !tbaa !4
  %cmp18.not = icmp eq %struct.evp_pkey_st* %4, null
  br i1 %cmp18.not, label %cleanup, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %if.then17
  %call20 = call i32 @evp_keymgmt_util_has(%struct.evp_pkey_st* noundef nonnull %4, i32 noundef 1) #5
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup, label %if.then22

if.then22:                                        ; preds = %land.lhs.true19
  br i1 %cmp5.not, label %cleanup.thread81, label %if.then24

if.then24:                                        ; preds = %if.then22
  %5 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %ppkey.176.lcssa, align 8, !tbaa !4
  store %struct.evp_pkey_st* %5, %struct.evp_pkey_st** %a, align 8, !tbaa !4
  br label %cleanup.thread81

cleanup.thread81:                                 ; preds = %if.then22, %if.then24
  %6 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %ppkey.176.lcssa, align 8, !tbaa !4
  br label %cleanup31

cleanup:                                          ; preds = %if.then17, %land.lhs.true19
  store i8* %.lcssa, i8** %pp, align 8, !tbaa !4
  br label %err

for.inc:                                          ; preds = %if.end12, %if.end15
  %7 = load i8*, i8** %pp, align 8, !tbaa !4
  br i1 %cmp5.not, label %if.end8.thread.1, label %if.then11.1

if.then11.1:                                      ; preds = %for.inc
  %8 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %a, align 8, !tbaa !4
  %cmp6.not.1 = icmp eq %struct.evp_pkey_st* %8, null
  %spec.select69.1 = select i1 %cmp6.not.1, %struct.evp_pkey_st** %ppkey.176, %struct.evp_pkey_st** %a
  %call9.1 = call %struct.ossl_decoder_ctx_st* @OSSL_DECODER_CTX_new_for_pkey(%struct.evp_pkey_st** noundef %spec.select69.1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* noundef %key_name.0, i32 noundef 135, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #5
  store %struct.evp_pkey_st* %8, %struct.evp_pkey_st** %a, align 8, !tbaa !4
  br label %if.end12.1

if.end8.thread.1:                                 ; preds = %for.inc
  %call974.1 = call %struct.ossl_decoder_ctx_st* @OSSL_DECODER_CTX_new_for_pkey(%struct.evp_pkey_st** noundef nonnull %ppkey.176, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* noundef %key_name.0, i32 noundef 135, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #5
  br label %if.end12.1

if.end12.1:                                       ; preds = %if.end8.thread.1, %if.then11.1
  %call977.1 = phi %struct.ossl_decoder_ctx_st* [ %call974.1, %if.end8.thread.1 ], [ %call9.1, %if.then11.1 ]
  %ppkey.176.1 = phi %struct.evp_pkey_st** [ %ppkey.176, %if.end8.thread.1 ], [ %spec.select69.1, %if.then11.1 ]
  %cmp13.1 = icmp eq %struct.ossl_decoder_ctx_st* %call977.1, null
  br i1 %cmp13.1, label %for.inc.1, label %if.end15.1

if.end15.1:                                       ; preds = %if.end12.1
  %call16.1 = call i32 @OSSL_DECODER_from_data(%struct.ossl_decoder_ctx_st* noundef nonnull %call977.1, i8** noundef nonnull %pp, i64* noundef nonnull %len) #5
  call void @OSSL_DECODER_CTX_free(%struct.ossl_decoder_ctx_st* noundef nonnull %call977.1) #5
  %tobool.not.1 = icmp eq i32 %call16.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %if.then17

for.inc.1:                                        ; preds = %if.end15.1, %if.end12.1
  %9 = load i8*, i8** %pp, align 8, !tbaa !4
  br i1 %cmp5.not, label %if.end8.thread.2, label %if.then11.2

if.then11.2:                                      ; preds = %for.inc.1
  %10 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %a, align 8, !tbaa !4
  %cmp6.not.2 = icmp eq %struct.evp_pkey_st* %10, null
  %spec.select69.2 = select i1 %cmp6.not.2, %struct.evp_pkey_st** %ppkey.176.1, %struct.evp_pkey_st** %a
  %call9.2 = call %struct.ossl_decoder_ctx_st* @OSSL_DECODER_CTX_new_for_pkey(%struct.evp_pkey_st** noundef %spec.select69.2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef null, i8* noundef %key_name.0, i32 noundef 135, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #5
  store %struct.evp_pkey_st* %10, %struct.evp_pkey_st** %a, align 8, !tbaa !4
  br label %if.end12.2

if.end8.thread.2:                                 ; preds = %for.inc.1
  %call974.2 = call %struct.ossl_decoder_ctx_st* @OSSL_DECODER_CTX_new_for_pkey(%struct.evp_pkey_st** noundef nonnull %ppkey.176.1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef null, i8* noundef %key_name.0, i32 noundef 135, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #5
  br label %if.end12.2

if.end12.2:                                       ; preds = %if.end8.thread.2, %if.then11.2
  %call977.2 = phi %struct.ossl_decoder_ctx_st* [ %call974.2, %if.end8.thread.2 ], [ %call9.2, %if.then11.2 ]
  %ppkey.176.2 = phi %struct.evp_pkey_st** [ %ppkey.176.1, %if.end8.thread.2 ], [ %spec.select69.2, %if.then11.2 ]
  %cmp13.2 = icmp eq %struct.ossl_decoder_ctx_st* %call977.2, null
  br i1 %cmp13.2, label %err, label %if.end15.2

if.end15.2:                                       ; preds = %if.end12.2
  %call16.2 = call i32 @OSSL_DECODER_from_data(%struct.ossl_decoder_ctx_st* noundef nonnull %call977.2, i8** noundef nonnull %pp, i64* noundef nonnull %len) #5
  call void @OSSL_DECODER_CTX_free(%struct.ossl_decoder_ctx_st* noundef nonnull %call977.2) #5
  %tobool.not.2 = icmp eq i32 %call16.2, 0
  br i1 %tobool.not.2, label %err, label %if.then17

err:                                              ; preds = %if.end12.2, %if.end15.2, %cleanup
  %ppkey.17690 = phi %struct.evp_pkey_st** [ %ppkey.176.lcssa, %cleanup ], [ %ppkey.176.2, %if.end15.2 ], [ %ppkey.176.2, %if.end12.2 ]
  %cmp28.not = icmp eq %struct.evp_pkey_st** %ppkey.17690, %a
  br i1 %cmp28.not, label %cleanup31, label %if.then29

if.then29:                                        ; preds = %err
  %11 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %ppkey.17690, align 8, !tbaa !4
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %11) #5
  br label %cleanup31

cleanup31:                                        ; preds = %cleanup.thread81, %err, %if.then29, %if.then
  %retval.2 = phi %struct.evp_pkey_st* [ null, %if.then ], [ null, %if.then29 ], [ null, %err ], [ %6, %cleanup.thread81 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret %struct.evp_pkey_st* %retval.2
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @d2i_PrivateKey(i32 noundef %type, %struct.evp_pkey_st** noundef %a, i8** noundef %pp, i64 noundef %length) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_pkey_st* @d2i_PrivateKey_ex(i32 noundef %type, %struct.evp_pkey_st** noundef %a, i8** noundef %pp, i64 noundef %length, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #6
  ret %struct.evp_pkey_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @d2i_AutoPrivateKey_ex(%struct.evp_pkey_st** noundef %a, i8** noundef %pp, i64 noundef %length, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.evp_pkey_st* @d2i_PrivateKey_decoder(i32 noundef 0, %struct.evp_pkey_st** noundef %a, i8** noundef %pp, i64 noundef %length, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #6
  %cmp = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.evp_pkey_st* @d2i_AutoPrivateKey_legacy(%struct.evp_pkey_st** noundef %a, i8** noundef %pp, i64 noundef %length, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi %struct.evp_pkey_st* [ %call1, %if.then ], [ %call, %entry ]
  ret %struct.evp_pkey_st* %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_st* @d2i_AutoPrivateKey_legacy(%struct.evp_pkey_st** noundef %a, i8** nocapture noundef %pp, i64 noundef %length, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  %1 = load i8*, i8** %pp, align 8, !tbaa !4
  store i8* %1, i8** %p, align 8, !tbaa !4
  %call = call %struct.stack_st_ASN1_TYPE* @d2i_ASN1_SEQUENCE_ANY(%struct.stack_st_ASN1_TYPE** noundef null, i8** noundef nonnull %p, i64 noundef %length) #5
  %2 = load i8*, i8** %pp, align 8, !tbaa !4
  store i8* %2, i8** %p, align 8, !tbaa !4
  %call1 = call fastcc %struct.stack_st* @ossl_check_const_ASN1_TYPE_sk_type(%struct.stack_st_ASN1_TYPE* noundef %call) #6
  %call2 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #5
  %cmp = icmp eq i32 %call2, 6
  br i1 %cmp, label %if.end28, label %if.else

if.else:                                          ; preds = %entry
  %call4 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #5
  %cmp5 = icmp eq i32 %call4, 4
  br i1 %cmp5, label %if.end28, label %if.else7

if.else7:                                         ; preds = %if.else
  %call9 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #5
  %cmp10 = icmp eq i32 %call9, 3
  br i1 %cmp10, label %if.then11, label %if.end28

if.then11:                                        ; preds = %if.else7
  %call12 = call %struct.pkcs8_priv_key_info_st* @d2i_PKCS8_PRIV_KEY_INFO(%struct.pkcs8_priv_key_info_st** noundef null, i8** noundef nonnull %p, i64 noundef %length) #5
  %call13 = call fastcc %struct.stack_st* @ossl_check_ASN1_TYPE_sk_type(%struct.stack_st_ASN1_TYPE* noundef %call) #6
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call13, void (i8*)* noundef bitcast (void (%struct.asn1_type_st*)* @ASN1_TYPE_free to void (i8*)*)) #5
  %cmp15 = icmp eq %struct.pkcs8_priv_key_info_st* %call12, null
  br i1 %cmp15, label %if.then16, label %if.end

if.then16:                                        ; preds = %if.then11
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 195, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.d2i_AutoPrivateKey_legacy, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 167, i8* noundef null) #5
  br label %cleanup32

if.end:                                           ; preds = %if.then11
  %call17 = call %struct.evp_pkey_st* @evp_pkcs82pkey_legacy(%struct.pkcs8_priv_key_info_st* noundef nonnull %call12, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #5
  call void @PKCS8_PRIV_KEY_INFO_free(%struct.pkcs8_priv_key_info_st* noundef nonnull %call12) #5
  %cmp18 = icmp eq %struct.evp_pkey_st* %call17, null
  br i1 %cmp18, label %cleanup32, label %if.end20

if.end20:                                         ; preds = %if.end
  %3 = load i8*, i8** %p, align 8, !tbaa !4
  store i8* %3, i8** %pp, align 8, !tbaa !4
  %cmp21.not = icmp eq %struct.evp_pkey_st** %a, null
  br i1 %cmp21.not, label %cleanup32, label %if.then22

if.then22:                                        ; preds = %if.end20
  store %struct.evp_pkey_st* %call17, %struct.evp_pkey_st** %a, align 8, !tbaa !4
  br label %cleanup32

if.end28:                                         ; preds = %if.else7, %if.else, %entry
  %keytype.0 = phi i32 [ 116, %entry ], [ 408, %if.else ], [ 6, %if.else7 ]
  %call29 = call fastcc %struct.stack_st* @ossl_check_ASN1_TYPE_sk_type(%struct.stack_st_ASN1_TYPE* noundef %call) #6
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call29, void (i8*)* noundef bitcast (void (%struct.asn1_type_st*)* @ASN1_TYPE_free to void (i8*)*)) #5
  %call31 = call %struct.evp_pkey_st* @ossl_d2i_PrivateKey_legacy(i32 noundef %keytype.0, %struct.evp_pkey_st** noundef %a, i8** noundef nonnull %pp, i64 noundef %length, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #6
  br label %cleanup32

cleanup32:                                        ; preds = %if.then16, %if.end, %if.then22, %if.end20, %if.end28
  %retval.1 = phi %struct.evp_pkey_st* [ %call31, %if.end28 ], [ null, %if.then16 ], [ null, %if.end ], [ %call17, %if.then22 ], [ %call17, %if.end20 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret %struct.evp_pkey_st* %retval.1
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @d2i_AutoPrivateKey(%struct.evp_pkey_st** noundef %a, i8** noundef %pp, i64 noundef %length) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_pkey_st* @d2i_AutoPrivateKey_ex(%struct.evp_pkey_st** noundef %a, i8** noundef %pp, i64 noundef %length, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #6
  ret %struct.evp_pkey_st* %call
}

declare i8* @evp_pkey_type2name(i32 noundef) local_unnamed_addr #2

declare %struct.ossl_decoder_ctx_st* @OSSL_DECODER_CTX_new_for_pkey(%struct.evp_pkey_st** noundef, i8* noundef, i8* noundef, i8* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OSSL_DECODER_from_data(%struct.ossl_decoder_ctx_st* noundef, i8** noundef, i64* noundef) local_unnamed_addr #2

declare void @OSSL_DECODER_CTX_free(%struct.ossl_decoder_ctx_st* noundef) local_unnamed_addr #2

declare i32 @evp_keymgmt_util_has(%struct.evp_pkey_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.stack_st_ASN1_TYPE* @d2i_ASN1_SEQUENCE_ANY(%struct.stack_st_ASN1_TYPE** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_ASN1_TYPE_sk_type(%struct.stack_st_ASN1_TYPE* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_TYPE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_ASN1_TYPE_sk_type(%struct.stack_st_ASN1_TYPE* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_TYPE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @ASN1_TYPE_free(%struct.asn1_type_st* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = !{!9, !5, i64 16}
!9 = !{!"evp_pkey_st", !10, i64 0, !10, i64 4, !5, i64 8, !5, i64 16, !5, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !5, i64 56, !5, i64 64, !10, i64 72, !10, i64 76, !11, i64 80, !5, i64 96, !5, i64 104, !12, i64 112, !5, i64 120, !12, i64 128, !13, i64 136}
!10 = !{!"int", !6, i64 0}
!11 = !{!"crypto_ex_data_st", !5, i64 0, !5, i64 8}
!12 = !{!"long", !6, i64 0}
!13 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8}
!14 = !{!9, !5, i64 8}
!15 = !{!16, !5, i64 184}
!16 = !{!"evp_pkey_asn1_method_st", !10, i64 0, !10, i64 4, !12, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !5, i64 232, !5, i64 240, !5, i64 248, !5, i64 256, !5, i64 264, !5, i64 272, !5, i64 280, !5, i64 288, !5, i64 296, !5, i64 304, !5, i64 312}
!17 = !{!16, !5, i64 64}
!18 = !{!16, !5, i64 312}
!19 = !{!12, !12, i64 0}
