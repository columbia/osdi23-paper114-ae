; ModuleID = 'crypto/x509/x_pubkey.c'
source_filename = "crypto/x509/x_pubkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.ASN1_EXTERN_FUNCS_st = type { i8*, i32 (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, i32 (%struct.ASN1_VALUE_st**, i8**, i64, %struct.ASN1_ITEM_st*, i32, i32, i8, %struct.ASN1_TLC_st*)*, i32 (%struct.ASN1_VALUE_st**, i8**, %struct.ASN1_ITEM_st*, i32, i32)*, i32 (%struct.bio_st*, %struct.ASN1_VALUE_st**, i32, i8*, %struct.asn1_pctx_st*)*, i32 (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ASN1_VALUE_st**, i8**, i64, %struct.ASN1_ITEM_st*, i32, i32, i8, %struct.ASN1_TLC_st*, %struct.ossl_lib_ctx_st*, i8*)* }
%struct.ASN1_VALUE_st = type opaque
%struct.ASN1_TLC_st = type { i8, i32, i64, i32, i32, i32 }
%struct.bio_st = type opaque
%struct.asn1_pctx_st = type { i64, i64, i64, i64, i64 }
%struct.ossl_lib_ctx_st = type opaque
%struct.X509_pubkey_st = type { %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*, %struct.ossl_lib_ctx_st*, i8*, i8 }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon }
%struct.evp_pkey_asn1_method_st = type { i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* }
%struct.pkcs8_priv_key_info_st = type { %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.evp_md_ctx_st = type opaque
%struct.x509_sig_info_st = type { i32, i32, i32, i32 }
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.engine_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.evp_keymgmt_st = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon = type { i32, i32, i32 }
%struct.ossl_encoder_ctx_st = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.bio_method_st = type opaque
%struct.rsa_st = type opaque
%struct.dh_st = type opaque
%struct.dsa_st = type opaque
%struct.ec_key_st = type opaque
%struct.ecx_key_st = type { %struct.ossl_lib_ctx_st*, i8*, i8, [57 x i8], i8*, i64, i32, i32, i8* }
%struct.x509_st = type { %struct.x509_cinf_st, %struct.X509_algor_st, %struct.asn1_string_st, %struct.x509_sig_info_st, i32, %struct.crypto_ex_data_st, i64, i64, i32, i32, i32, i32, %struct.asn1_string_st*, %struct.AUTHORITY_KEYID_st*, %struct.X509_POLICY_CACHE_st*, %struct.stack_st_DIST_POINT*, %struct.stack_st_GENERAL_NAME*, %struct.NAME_CONSTRAINTS_st*, %struct.stack_st_IPAddressFamily*, %struct.ASIdentifiers_st*, [20 x i8], %struct.x509_cert_aux_st*, i8*, i32, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.x509_cinf_st = type { %struct.asn1_string_st*, %struct.asn1_string_st, %struct.X509_algor_st, %struct.X509_name_st*, %struct.X509_val_st, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.X509_val_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.ASN1_ENCODING_st = type { i8*, i64, i32 }
%struct.AUTHORITY_KEYID_st = type { %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAME*, %struct.asn1_string_st* }
%struct.X509_POLICY_CACHE_st = type opaque
%struct.stack_st_DIST_POINT = type opaque
%struct.stack_st_GENERAL_NAME = type opaque
%struct.NAME_CONSTRAINTS_st = type { %struct.stack_st_GENERAL_SUBTREE*, %struct.stack_st_GENERAL_SUBTREE* }
%struct.stack_st_GENERAL_SUBTREE = type opaque
%struct.stack_st_IPAddressFamily = type opaque
%struct.ASIdentifiers_st = type { %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st* }
%struct.ASIdentifierChoice_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i32* }
%struct.x509_cert_aux_st = type { %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR* }
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.stack_st_X509_ALGOR = type opaque
%struct.ossl_decoder_ctx_st = type opaque

@.str = private unnamed_addr constant [23 x i8] c"crypto/x509/x_pubkey.c\00", align 1
@X509_PUBKEY_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 4, i64 16, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* bitcast (%struct.ASN1_EXTERN_FUNCS_st* @x509_pubkey_ff to i8*), i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0) }, align 8
@x509_pubkey_ff = internal constant %struct.ASN1_EXTERN_FUNCS_st { i8* null, i32 (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)* null, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)* @x509_pubkey_ex_free, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)* null, i32 (%struct.ASN1_VALUE_st**, i8**, i64, %struct.ASN1_ITEM_st*, i32, i32, i8, %struct.ASN1_TLC_st*)* null, i32 (%struct.ASN1_VALUE_st**, i8**, %struct.ASN1_ITEM_st*, i32, i32)* @x509_pubkey_ex_i2d, i32 (%struct.bio_st*, %struct.ASN1_VALUE_st**, i32, i8*, %struct.asn1_pctx_st*)* @x509_pubkey_ex_print, i32 (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, %struct.ossl_lib_ctx_st*, i8*)* @x509_pubkey_ex_new_ex, i32 (%struct.ASN1_VALUE_st**, i8**, i64, %struct.ASN1_ITEM_st*, i32, i32, i8, %struct.ASN1_TLC_st*, %struct.ossl_lib_ctx_st*, i8*)* @x509_pubkey_ex_d2i_ex }, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"X509_PUBKEY\00", align 1
@__func__.X509_PUBKEY_dup = private unnamed_addr constant [16 x i8] c"X509_PUBKEY_dup\00", align 1
@__func__.X509_PUBKEY_set = private unnamed_addr constant [16 x i8] c"X509_PUBKEY_set\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"DER\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"SubjectPublicKeyInfo\00", align 1
@__func__.X509_PUBKEY_get0 = private unnamed_addr constant [17 x i8] c"X509_PUBKEY_get0\00", align 1
@__func__.X509_PUBKEY_get = private unnamed_addr constant [16 x i8] c"X509_PUBKEY_get\00", align 1
@__func__.i2d_RSA_PUBKEY = private unnamed_addr constant [15 x i8] c"i2d_RSA_PUBKEY\00", align 1
@__func__.ossl_i2d_DH_PUBKEY = private unnamed_addr constant [19 x i8] c"ossl_i2d_DH_PUBKEY\00", align 1
@__func__.ossl_i2d_DHx_PUBKEY = private unnamed_addr constant [20 x i8] c"ossl_i2d_DHx_PUBKEY\00", align 1
@__func__.i2d_DSA_PUBKEY = private unnamed_addr constant [15 x i8] c"i2d_DSA_PUBKEY\00", align 1
@__func__.i2d_EC_PUBKEY = private unnamed_addr constant [14 x i8] c"i2d_EC_PUBKEY\00", align 1
@__func__.ossl_i2d_ED25519_PUBKEY = private unnamed_addr constant [24 x i8] c"ossl_i2d_ED25519_PUBKEY\00", align 1
@__func__.ossl_i2d_ED448_PUBKEY = private unnamed_addr constant [22 x i8] c"ossl_i2d_ED448_PUBKEY\00", align 1
@__func__.ossl_i2d_X25519_PUBKEY = private unnamed_addr constant [23 x i8] c"ossl_i2d_X25519_PUBKEY\00", align 1
@__func__.ossl_i2d_X448_PUBKEY = private unnamed_addr constant [21 x i8] c"ossl_i2d_X448_PUBKEY\00", align 1
@X509_PUBKEY_INTERNAL_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* @X509_PUBKEY_INTERNAL_seq_tt, i32 0, i32 0), i64 2, i8* null, i64 48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0) }, align 8
@X509_PUBKEY_INTERNAL_seq_tt = internal constant [2 x %struct.ASN1_TEMPLATE_st] [%struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, %struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_BIT_STRING_it }], align 16
@.str.4 = private unnamed_addr constant [6 x i8] c"algor\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"public_key\00", align 1
@__func__.x509_pubkey_ex_new_ex = private unnamed_addr constant [22 x i8] c"x509_pubkey_ex_new_ex\00", align 1
@__func__.x509_pubkey_ex_d2i_ex = private unnamed_addr constant [22 x i8] c"x509_pubkey_ex_d2i_ex\00", align 1
@__func__.x509_pubkey_decode = private unnamed_addr constant [19 x i8] c"x509_pubkey_decode\00", align 1
@__func__.d2i_PUBKEY_int = private unnamed_addr constant [15 x i8] c"d2i_PUBKEY_int\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.X509_pubkey_st* @ossl_d2i_X509_PUBKEY_INTERNAL(i8** noundef %pp, i64 noundef %len, %struct.ossl_lib_ctx_st* noundef %libctx) local_unnamed_addr #0 {
entry:
  %xpub = alloca %struct.X509_pubkey_st*, align 8
  %0 = bitcast %struct.X509_pubkey_st** %xpub to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 48, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 71) #8
  %1 = bitcast %struct.X509_pubkey_st** %xpub to i8**
  store i8* %call, i8** %1, align 8, !tbaa !4
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %2 = bitcast %struct.X509_pubkey_st** %xpub to %struct.ASN1_VALUE_st**
  %call2 = call %struct.ASN1_VALUE_st* @ASN1_item_d2i_ex(%struct.ASN1_VALUE_st** noundef nonnull %2, i8** noundef %pp, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @X509_PUBKEY_INTERNAL_it.local_it, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef null) #8
  %3 = bitcast %struct.ASN1_VALUE_st* %call2 to %struct.X509_pubkey_st*
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.X509_pubkey_st* [ %3, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret %struct.X509_pubkey_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i_ex(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define void @ossl_X509_PUBKEY_INTERNAL_free(%struct.X509_pubkey_st* noundef %xpub) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.X509_pubkey_st* %xpub to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @X509_PUBKEY_INTERNAL_it.local_it) #8
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @X509_PUBKEY_it() local_unnamed_addr #3 {
entry:
  ret %struct.ASN1_ITEM_st* @X509_PUBKEY_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_pubkey_st* @d2i_X509_PUBKEY(%struct.X509_pubkey_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.X509_pubkey_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @X509_PUBKEY_it.local_it) #8
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.X509_pubkey_st*
  ret %struct.X509_pubkey_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_X509_PUBKEY(%struct.X509_pubkey_st* noundef %a, i8** noundef %out) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.X509_pubkey_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @X509_PUBKEY_it.local_it) #8
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.X509_pubkey_st* @X509_PUBKEY_new() local_unnamed_addr #0 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @X509_PUBKEY_it.local_it) #8
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.X509_pubkey_st*
  ret %struct.X509_pubkey_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @X509_PUBKEY_free(%struct.X509_pubkey_st* noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.X509_pubkey_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @X509_PUBKEY_it.local_it) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_pubkey_st* @X509_PUBKEY_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new_ex(%struct.ASN1_ITEM_st* noundef nonnull @X509_PUBKEY_it.local_it, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #8
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.X509_pubkey_st*
  %call2 = tail call fastcc i32 @x509_pubkey_set0_libctx(%struct.X509_pubkey_st* noundef %0, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #9
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @X509_PUBKEY_free(%struct.X509_pubkey_st* noundef %0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %pubkey.0 = phi %struct.X509_pubkey_st* [ %0, %entry ], [ null, %if.then ]
  ret %struct.X509_pubkey_st* %pubkey.0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new_ex(%struct.ASN1_ITEM_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @x509_pubkey_set0_libctx(%struct.X509_pubkey_st* noundef %x, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.X509_pubkey_st* %x, null
  br i1 %cmp.not, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  %libctx1 = getelementptr inbounds %struct.X509_pubkey_st, %struct.X509_pubkey_st* %x, i64 0, i32 3
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %libctx1, align 8, !tbaa !8
  %propq2 = getelementptr inbounds %struct.X509_pubkey_st, %struct.X509_pubkey_st* %x, i64 0, i32 4
  %0 = load i8*, i8** %propq2, align 8, !tbaa !11
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 52) #8
  store i8* null, i8** %propq2, align 8, !tbaa !11
  %cmp4.not = icmp eq i8* %propq, null
  br i1 %cmp4.not, label %if.end11, label %if.then5

if.then5:                                         ; preds = %if.then
  %call = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %propq, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 55) #8
  store i8* %call, i8** %propq2, align 8, !tbaa !11
  %cmp8 = icmp eq i8* %call, null
  br i1 %cmp8, label %return, label %if.end11

if.end11:                                         ; preds = %if.then, %if.then5, %entry
  br label %return

return:                                           ; preds = %if.then5, %if.end11
  %retval.0 = phi i32 [ 1, %if.end11 ], [ 0, %if.then5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_pubkey_st* @X509_PUBKEY_dup(%struct.X509_pubkey_st* nocapture noundef readonly %a) local_unnamed_addr #0 {
entry:
  %pubkey = alloca %struct.X509_pubkey_st*, align 8
  %0 = bitcast %struct.X509_pubkey_st** %pubkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 48, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 285) #8
  %1 = bitcast %struct.X509_pubkey_st** %pubkey to i8**
  store i8* %call, i8** %1, align 8, !tbaa !4
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = bitcast i8* %call to %struct.X509_pubkey_st*
  %libctx = getelementptr inbounds %struct.X509_pubkey_st, %struct.X509_pubkey_st* %a, i64 0, i32 3
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !8
  %propq = getelementptr inbounds %struct.X509_pubkey_st, %struct.X509_pubkey_st* %a, i64 0, i32 4
  %4 = load i8*, i8** %propq, align 8, !tbaa !11
  %call1 = tail call fastcc i32 @x509_pubkey_set0_libctx(%struct.X509_pubkey_st* noundef nonnull %2, %struct.ossl_lib_ctx_st* noundef %3, i8* noundef %4) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %algor = getelementptr inbounds %struct.X509_pubkey_st, %struct.X509_pubkey_st* %a, i64 0, i32 0
  %5 = load %struct.X509_algor_st*, %struct.X509_algor_st** %algor, align 8, !tbaa !12
  %call3 = tail call %struct.X509_algor_st* @X509_ALGOR_dup(%struct.X509_algor_st* noundef %5) #8
  %algor4 = bitcast i8* %call to %struct.X509_algor_st**
  store %struct.X509_algor_st* %call3, %struct.X509_algor_st** %algor4, align 8, !tbaa !12
  %cmp5 = icmp eq %struct.X509_algor_st* %call3, null
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false2
  %call7 = tail call %struct.asn1_string_st* @ASN1_BIT_STRING_new() #8
  %6 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %pubkey, align 8, !tbaa !4
  %public_key = getelementptr inbounds %struct.X509_pubkey_st, %struct.X509_pubkey_st* %6, i64 0, i32 1
  store %struct.asn1_string_st* %call7, %struct.asn1_string_st** %public_key, align 8, !tbaa !13
  %cmp8 = icmp eq %struct.asn1_string_st* %call7, null
  br i1 %cmp8, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %public_key11 = getelementptr inbounds %struct.X509_pubkey_st, %struct.X509_pubkey_st* %a, i64 0, i32 1
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %public_key11, align 8, !tbaa !13
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %7, i64 0, i32 2
  %8 = load i8*, i8** %data, align 8, !tbaa !14
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %7, i64 0, i32 0
  %9 = load i32, i32* %length, align 8, !tbaa !17
  %call13 = tail call i32 @ASN1_BIT_STRING_set(%struct.asn1_string_st* noundef nonnull %call7, i8* noundef %8, i32 noundef %9) #8
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false9
  %pkey = getelementptr inbounds %struct.X509_pubkey_st, %struct.X509_pubkey_st* %a, i64 0, i32 2
  %10 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !18
  %cmp16.not = icmp eq %struct.evp_pkey_st* %10, null
  br i1 %cmp16.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false15
  %call18 = tail call i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef nonnull %10) #8
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  %.pre = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !18
  br label %if.end

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false2, %lor.lhs.false, %entry
  %11 = bitcast %struct.X509_pubkey_st** %pubkey to %struct.ASN1_VALUE_st**
  call void @x509_pubkey_ex_free(%struct.ASN1_VALUE_st** noundef nonnull %11, %struct.ASN1_ITEM_st* noundef nonnull @X509_PUBKEY_INTERNAL_it.local_it) #9
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 296, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.X509_PUBKEY_dup, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false15
  %12 = phi %struct.evp_pkey_st* [ %.pre, %land.lhs.true.if.end_crit_edge ], [ null, %lor.lhs.false15 ]
  %pkey22 = getelementptr inbounds %struct.X509_pubkey_st, %struct.X509_pubkey_st* %6, i64 0, i32 2
  store %struct.evp_pkey_st* %12, %struct.evp_pkey_st** %pkey22, align 8, !tbaa !18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.X509_pubkey_st* [ null, %if.then ], [ %6, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret %struct.X509_pubkey_st* %retval.0
}

declare %struct.X509_algor_st* @X509_ALGOR_dup(%struct.X509_algor_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @ASN1_BIT_STRING_new() local_unnamed_addr #2

declare i32 @ASN1_BIT_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @x509_pubkey_ex_free(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* nocapture noundef readnone %it) #0 {
entry:
  %cmp.not = icmp eq %struct.ASN1_VALUE_st** %pval, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.X509_pubkey_st**
  %1 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %0, align 8, !tbaa !4
  %cmp1.not = icmp eq %struct.X509_pubkey_st* %1, null
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %algor = getelementptr inbounds %struct.X509_pubkey_st, %struct.X509_pubkey_st* %1, i64 0, i32 0
  %2 = load %struct.X509_algor_st*, %struct.X509_algor_st** %algor, align 8, !tbaa !12
  tail call void @X509_ALGOR_free(%struct.X509_algor_st* noundef %2) #8
  %public_key = getelementptr inbounds %struct.X509_pubkey_st, %struct.X509_pubkey_st* %1, i64 0, i32 1
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %public_key, align 8, !tbaa !13
  tail call void @ASN1_BIT_STRING_free(%struct.asn1_string_st* noundef %3) #8
  %pkey = getelementptr inbounds %struct.X509_pubkey_st, %struct.X509_pubkey_st* %1, i64 0, i32 2
  %4 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !18
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %4) #8
  %propq = getelementptr inbounds %struct.X509_pubkey_st, %struct.X509_pubkey_st* %1, i64 0, i32 4
  %5 = load i8*, i8** %propq, align 8, !tbaa !11
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 93) #8
  %6 = bitcast %struct.X509_pubkey_st* %1 to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %6, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 94) #8
  store %struct.ASN1_VALUE_st* null, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_PUBKEY_set(%struct.X509_pubkey_st** noundef %x, %struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %der = alloca i8*, align 8
  %derlen = alloca i64, align 8
  %pder = alloca i8*, align 8
  %cmp = icmp eq %struct.X509_pubkey_st** %x, null
  %cmp1 = icmp eq %struct.evp_pkey_st* %pkey, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 308, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.X509_PUBKEY_set, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786690, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %0 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !19
  %cmp2.not = icmp eq %struct.evp_pkey_asn1_method_st* %0, null
  br i1 %cmp2.not, label %if.else16, label %if.then3

if.then3:                                         ; preds = %if.end
  %call = tail call %struct.X509_pubkey_st* @X509_PUBKEY_new() #9
  %cmp4 = icmp eq %struct.X509_pubkey_st* %call, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then3
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 314, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.X509_PUBKEY_set, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #8
  br label %error

if.end6:                                          ; preds = %if.then3
  %1 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !19
  %pub_encode = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %1, i64 0, i32 6
  %2 = load i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)** %pub_encode, align 8, !tbaa !23
  %cmp8.not = icmp eq i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)* %2, null
  br i1 %cmp8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end6
  %call12 = tail call i32 %2(%struct.X509_pubkey_st* noundef nonnull %call, %struct.evp_pkey_st* noundef nonnull %pkey) #8
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.then13, label %if.end29

if.then13:                                        ; preds = %if.then9
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 319, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.X509_PUBKEY_set, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 126, i8* noundef null) #8
  br label %error

if.else:                                          ; preds = %if.end6
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 323, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.X509_PUBKEY_set, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 124, i8* noundef null) #8
  br label %error

if.else16:                                        ; preds = %if.end
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 13
  %3 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !25
  %cmp17.not = icmp eq %struct.evp_keymgmt_st* %3, null
  br i1 %cmp17.not, label %if.then28, label %if.then18

if.then18:                                        ; preds = %if.else16
  %4 = bitcast i8** %der to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #7
  store i8* null, i8** %der, align 8, !tbaa !4
  %5 = bitcast i64* %derlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7
  store i64 0, i64* %derlen, align 8, !tbaa !26
  %call19 = tail call %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef nonnull %pkey, i32 noundef 134, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* noundef null) #8
  %call20 = call i32 @OSSL_ENCODER_to_data(%struct.ossl_encoder_ctx_st* noundef %call19, i8** noundef nonnull %der, i64* noundef nonnull %derlen) #8
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end26, label %if.then22

if.then22:                                        ; preds = %if.then18
  %6 = bitcast i8** %pder to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #7
  %7 = load i8*, i8** %der, align 8, !tbaa !4
  store i8* %7, i8** %pder, align 8, !tbaa !4
  %8 = load i64, i64* %derlen, align 8, !tbaa !26
  %call23 = call %struct.X509_pubkey_st* @d2i_X509_PUBKEY(%struct.X509_pubkey_st** noundef null, i8** noundef nonnull %pder, i64 noundef %8) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #7
  br label %if.end26

if.end26:                                         ; preds = %if.then18, %if.then22
  %pk.0 = phi %struct.X509_pubkey_st* [ %call23, %if.then22 ], [ null, %if.then18 ]
  call void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef %call19) #8
  %9 = load i8*, i8** %der, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %9, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 341) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #7
  %cmp27 = icmp eq %struct.X509_pubkey_st* %pk.0, null
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.else16, %if.end26
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 345, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.X509_PUBKEY_set, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 111, i8* noundef null) #8
  br label %error

if.end29:                                         ; preds = %if.then9, %if.end26
  %pk.165 = phi %struct.X509_pubkey_st* [ %pk.0, %if.end26 ], [ %call, %if.then9 ]
  %10 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %x, align 8, !tbaa !4
  call void @X509_PUBKEY_free(%struct.X509_pubkey_st* noundef %10) #9
  %call30 = call i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef nonnull %pkey) #8
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end29
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 351, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.X509_PUBKEY_set, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786691, i8* noundef null) #8
  br label %error

if.end33:                                         ; preds = %if.end29
  store %struct.X509_pubkey_st* %pk.165, %struct.X509_pubkey_st** %x, align 8, !tbaa !4
  %pkey34 = getelementptr inbounds %struct.X509_pubkey_st, %struct.X509_pubkey_st* %pk.165, i64 0, i32 2
  %11 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey34, align 8, !tbaa !18
  %cmp35.not = icmp eq %struct.evp_pkey_st* %11, null
  br i1 %cmp35.not, label %if.end38, label %if.then36

if.then36:                                        ; preds = %if.end33
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %11) #8
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end33
  store %struct.evp_pkey_st* %pkey, %struct.evp_pkey_st** %pkey34, align 8, !tbaa !18
  br label %cleanup

error:                                            ; preds = %if.then32, %if.then28, %if.else, %if.then13, %if.then5
  %pk.2 = phi %struct.X509_pubkey_st* [ null, %if.then5 ], [ null, %if.then28 ], [ %pk.165, %if.then32 ], [ %call, %if.then13 ], [ %call, %if.else ]
  call void @X509_PUBKEY_free(%struct.X509_pubkey_st* noundef %pk.2) #9
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end38, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %error ], [ 1, %if.end38 ]
  ret i32 %retval.0
}

declare %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OSSL_ENCODER_to_data(%struct.ossl_encoder_ctx_st* noundef, i8** noundef, i64* noundef) local_unnamed_addr #2

declare void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @X509_PUBKEY_get0(%struct.X509_pubkey_st* noundef readonly %key) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.X509_pubkey_st* %key, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 438, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.X509_PUBKEY_get0, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786690, i8* noundef null) #8
  br label %return

if.end:                                           ; preds = %entry
  %pkey = getelementptr inbounds %struct.X509_pubkey_st, %struct.X509_pubkey_st* %key, i64 0, i32 2
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !18
  %cmp1 = icmp eq %struct.evp_pkey_st* %0, null
  br i1 %cmp1, label %if.then2, label %return

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 444, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.X509_PUBKEY_get0, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 114, i8* noundef null) #8
  br label %return

return:                                           ; preds = %if.end, %if.then2, %if.then
  %retval.0 = phi %struct.evp_pkey_st* [ null, %if.then ], [ null, %if.then2 ], [ %0, %if.end ]
  ret %struct.evp_pkey_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @X509_PUBKEY_get(%struct.X509_pubkey_st* noundef %key) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_pkey_st* @X509_PUBKEY_get0(%struct.X509_pubkey_st* noundef %key) #9
  %cmp.not = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef nonnull %call) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 456, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.X509_PUBKEY_get, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786691, i8* noundef null) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %ret.0 = phi %struct.evp_pkey_st* [ %call, %land.lhs.true ], [ null, %if.then ], [ null, %entry ]
  ret %struct.evp_pkey_st* %ret.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @ossl_d2i_PUBKEY_legacy(%struct.evp_pkey_st** noundef %a, i8** nocapture noundef %pp, i64 noundef %length) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.evp_pkey_st* @d2i_PUBKEY_int(%struct.evp_pkey_st** noundef %a, i8** noundef %pp, i64 noundef %length, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null, i32 noundef 1) #9
  ret %struct.evp_pkey_st* %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_st* @d2i_PUBKEY_int(%struct.evp_pkey_st** noundef %a, i8** nocapture noundef %pp, i64 noundef %length, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, i32 noundef %force_legacy) unnamed_addr #0 {
entry:
  %xpk2 = alloca %struct.X509_pubkey_st*, align 8
  %q = alloca i8*, align 8
  %0 = bitcast %struct.X509_pubkey_st** %xpk2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store %struct.X509_pubkey_st* null, %struct.X509_pubkey_st** %xpk2, align 8, !tbaa !4
  %1 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  %2 = load i8*, i8** %pp, align 8, !tbaa !4
  store i8* %2, i8** %q, align 8, !tbaa !4
  %cmp = icmp ne %struct.ossl_lib_ctx_st* %libctx, null
  %cmp1 = icmp ne i8* %propq, null
  %or.cond = or i1 %cmp, %cmp1
  %tobool = icmp ne i32 %force_legacy, 0
  %or.cond27 = or i1 %or.cond, %tobool
  br i1 %or.cond27, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 48, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 487) #8
  %3 = bitcast %struct.X509_pubkey_st** %xpk2 to i8**
  store i8* %call, i8** %3, align 8, !tbaa !4
  %cmp3 = icmp eq i8* %call, null
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 489, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.d2i_PUBKEY_int, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %4 = bitcast i8* %call to %struct.X509_pubkey_st*
  %call5 = tail call fastcc i32 @x509_pubkey_set0_libctx(%struct.X509_pubkey_st* noundef nonnull %4, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #9
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %end, label %if.end8

if.end8:                                          ; preds = %if.end
  %5 = getelementptr inbounds i8, i8* %call, i64 40
  %6 = zext i1 %tobool to i8
  %bf.load = load i8, i8* %5, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, %6
  store i8 %bf.set, i8* %5, align 8
  br label %if.end11

if.end11:                                         ; preds = %entry, %if.end8
  %pxpk.0 = phi %struct.X509_pubkey_st** [ %xpk2, %if.end8 ], [ null, %entry ]
  %call12 = call %struct.X509_pubkey_st* @d2i_X509_PUBKEY(%struct.X509_pubkey_st** noundef %pxpk.0, i8** noundef nonnull %q, i64 noundef %length) #9
  %cmp13 = icmp eq %struct.X509_pubkey_st* %call12, null
  br i1 %cmp13, label %end, label %if.end15

if.end15:                                         ; preds = %if.end11
  %call16 = call %struct.evp_pkey_st* @X509_PUBKEY_get(%struct.X509_pubkey_st* noundef nonnull %call12) #9
  call void @X509_PUBKEY_free(%struct.X509_pubkey_st* noundef nonnull %call12) #9
  store %struct.X509_pubkey_st* null, %struct.X509_pubkey_st** %xpk2, align 8, !tbaa !4
  %cmp17 = icmp eq %struct.evp_pkey_st* %call16, null
  br i1 %cmp17, label %end, label %if.end19

if.end19:                                         ; preds = %if.end15
  %7 = load i8*, i8** %q, align 8, !tbaa !4
  store i8* %7, i8** %pp, align 8, !tbaa !4
  %cmp20.not = icmp eq %struct.evp_pkey_st** %a, null
  br i1 %cmp20.not, label %end, label %if.then21

if.then21:                                        ; preds = %if.end19
  %8 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %a, align 8, !tbaa !4
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %8) #8
  store %struct.evp_pkey_st* %call16, %struct.evp_pkey_st** %a, align 8, !tbaa !4
  br label %end

end:                                              ; preds = %if.end19, %if.then21, %if.end15, %if.end11, %if.end
  %pktmp.0 = phi %struct.evp_pkey_st* [ null, %if.end11 ], [ null, %if.end15 ], [ %call16, %if.then21 ], [ %call16, %if.end19 ], [ null, %if.end ]
  %9 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %xpk2, align 8, !tbaa !4
  call void @X509_PUBKEY_free(%struct.X509_pubkey_st* noundef %9) #9
  br label %cleanup

cleanup:                                          ; preds = %end, %if.then4
  %retval.0 = phi %struct.evp_pkey_st* [ null, %if.then4 ], [ %pktmp.0, %end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret %struct.evp_pkey_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @d2i_PUBKEY_ex(%struct.evp_pkey_st** noundef %a, i8** nocapture noundef %pp, i64 noundef %length, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.evp_pkey_st* @d2i_PUBKEY_int(%struct.evp_pkey_st** noundef %a, i8** noundef %pp, i64 noundef %length, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, i32 noundef 0) #9
  ret %struct.evp_pkey_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @d2i_PUBKEY(%struct.evp_pkey_st** noundef %a, i8** nocapture noundef %pp, i64 noundef %length) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_pkey_st* @d2i_PUBKEY_ex(%struct.evp_pkey_st** noundef %a, i8** noundef %pp, i64 noundef %length, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #9
  ret %struct.evp_pkey_st* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PUBKEY(%struct.evp_pkey_st* noundef %a, i8** noundef %pp) local_unnamed_addr #0 {
entry:
  %buf = alloca %struct.buf_mem_st*, align 8
  %cmp = icmp eq %struct.evp_pkey_st* %a, null
  br i1 %cmp, label %cleanup49, label %if.end

if.end:                                           ; preds = %entry
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %a, i64 0, i32 2
  %0 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !19
  %cmp1.not = icmp eq %struct.evp_pkey_asn1_method_st* %0, null
  br i1 %cmp1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %call = tail call %struct.X509_pubkey_st* @X509_PUBKEY_new() #9
  %cmp3 = icmp eq %struct.X509_pubkey_st* %call, null
  br i1 %cmp3, label %cleanup49, label %if.end5

if.end5:                                          ; preds = %if.then2
  %1 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !19
  %pub_encode = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %1, i64 0, i32 6
  %2 = load i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)** %pub_encode, align 8, !tbaa !23
  %cmp7.not = icmp eq i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)* %2, null
  br i1 %cmp7.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end5
  %call10 = tail call i32 %2(%struct.X509_pubkey_st* noundef nonnull %call, %struct.evp_pkey_st* noundef nonnull %a) #8
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %cleanup, label %if.then11

if.then11:                                        ; preds = %land.lhs.true
  %pkey = getelementptr inbounds %struct.X509_pubkey_st, %struct.X509_pubkey_st* %call, i64 0, i32 2
  store %struct.evp_pkey_st* %a, %struct.evp_pkey_st** %pkey, align 8, !tbaa !18
  %call12 = tail call i32 @i2d_X509_PUBKEY(%struct.X509_pubkey_st* noundef nonnull %call, i8** noundef %pp) #9
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !18
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %land.lhs.true, %if.then11
  %ret.0 = phi i32 [ %call12, %if.then11 ], [ -1, %land.lhs.true ], [ -1, %if.end5 ]
  tail call void @X509_PUBKEY_free(%struct.X509_pubkey_st* noundef nonnull %call) #9
  br label %cleanup49

if.else:                                          ; preds = %if.end
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %a, i64 0, i32 13
  %3 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !25
  %cmp15.not = icmp eq %struct.evp_keymgmt_st* %3, null
  br i1 %cmp15.not, label %cleanup49, label %if.then16

if.then16:                                        ; preds = %if.else
  %call17 = tail call %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef nonnull %a, i32 noundef 134, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* noundef null) #8
  %call18 = tail call %struct.bio_method_st* @BIO_s_mem() #8
  %call19 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call18) #8
  %4 = bitcast %struct.buf_mem_st** %buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #7
  store %struct.buf_mem_st* null, %struct.buf_mem_st** %buf, align 8, !tbaa !4
  %call20 = tail call i32 @OSSL_ENCODER_CTX_get_num_encoders(%struct.ossl_encoder_ctx_st* noundef %call17) #8
  %cmp21 = icmp ne i32 %call20, 0
  %cmp23 = icmp ne %struct.bio_st* %call19, null
  %or.cond = select i1 %cmp21, i1 %cmp23, i1 false
  br i1 %or.cond, label %land.lhs.true24, label %if.end45

land.lhs.true24:                                  ; preds = %if.then16
  %call25 = tail call i32 @OSSL_ENCODER_to_bio(%struct.ossl_encoder_ctx_st* noundef %call17, %struct.bio_st* noundef nonnull %call19) #8
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end45, label %land.lhs.true27

land.lhs.true27:                                  ; preds = %land.lhs.true24
  %call28 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call19, i32 noundef 115, i64 noundef 0, i8* noundef nonnull %4) #8
  %cmp29 = icmp sgt i64 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.end45

if.then30:                                        ; preds = %land.lhs.true27
  %5 = load %struct.buf_mem_st*, %struct.buf_mem_st** %buf, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %5, i64 0, i32 0
  %6 = load i64, i64* %length, align 8, !tbaa !27
  %conv = trunc i64 %6 to i32
  %cmp31.not = icmp eq i8** %pp, null
  br i1 %cmp31.not, label %if.end45, label %if.then33

if.then33:                                        ; preds = %if.then30
  %7 = load i8*, i8** %pp, align 8, !tbaa !4
  %cmp34 = icmp eq i8* %7, null
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %5, i64 0, i32 1
  %8 = load i8*, i8** %data, align 8, !tbaa !29
  br i1 %cmp34, label %if.then36, label %if.else39

if.then36:                                        ; preds = %if.then33
  store i8* %8, i8** %pp, align 8, !tbaa !4
  store i64 0, i64* %length, align 8, !tbaa !27
  store i8* null, i8** %data, align 8, !tbaa !29
  br label %if.end45

if.else39:                                        ; preds = %if.then33
  %sext = shl i64 %6, 32
  %conv41 = ashr exact i64 %sext, 32
  %call42 = call i8* @memcpy(i8* noundef nonnull %7, i8* noundef %8, i64 noundef %conv41) #8
  %9 = load i8*, i8** %pp, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %conv41
  store i8* %add.ptr, i8** %pp, align 8, !tbaa !4
  br label %if.end45

if.end45:                                         ; preds = %if.then30, %if.else39, %if.then36, %land.lhs.true27, %land.lhs.true24, %if.then16
  %ret.2 = phi i32 [ %conv, %if.then36 ], [ %conv, %if.else39 ], [ %conv, %if.then30 ], [ -1, %land.lhs.true27 ], [ -1, %land.lhs.true24 ], [ -1, %if.then16 ]
  %call46 = call i32 @BIO_free(%struct.bio_st* noundef %call19) #8
  call void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef %call17) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #7
  br label %cleanup49

cleanup49:                                        ; preds = %if.then2, %if.end45, %if.else, %cleanup, %entry
  %retval.1 = phi i32 [ 0, %entry ], [ %ret.0, %cleanup ], [ %ret.2, %if.end45 ], [ -1, %if.else ], [ -1, %if.then2 ]
  ret i32 %retval.1
}

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

declare %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #2

declare i32 @OSSL_ENCODER_CTX_get_num_encoders(%struct.ossl_encoder_ctx_st* noundef) local_unnamed_addr #2

declare i32 @OSSL_ENCODER_to_bio(%struct.ossl_encoder_ctx_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.rsa_st* @d2i_RSA_PUBKEY(%struct.rsa_st** noundef %a, i8** nocapture noundef %pp, i64 noundef %length) local_unnamed_addr #0 {
entry:
  %q = alloca i8*, align 8
  %0 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = load i8*, i8** %pp, align 8, !tbaa !4
  store i8* %1, i8** %q, align 8, !tbaa !4
  %call = call %struct.evp_pkey_st* @ossl_d2i_PUBKEY_legacy(%struct.evp_pkey_st** noundef null, i8** noundef nonnull %q, i64 noundef %length) #9
  %cmp = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.rsa_st* @EVP_PKEY_get1_RSA(%struct.evp_pkey_st* noundef nonnull %call) #8
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call) #8
  %cmp2 = icmp eq %struct.rsa_st* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %2 = load i8*, i8** %q, align 8, !tbaa !4
  store i8* %2, i8** %pp, align 8, !tbaa !4
  %cmp5.not = icmp eq %struct.rsa_st** %a, null
  br i1 %cmp5.not, label %cleanup, label %if.then6

if.then6:                                         ; preds = %if.end4
  %3 = load %struct.rsa_st*, %struct.rsa_st** %a, align 8, !tbaa !4
  tail call void @RSA_free(%struct.rsa_st* noundef %3) #8
  store %struct.rsa_st* %call1, %struct.rsa_st** %a, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then6, %if.end, %entry
  %retval.0 = phi %struct.rsa_st* [ null, %entry ], [ null, %if.end ], [ %call1, %if.then6 ], [ %call1, %if.end4 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret %struct.rsa_st* %retval.0
}

declare %struct.rsa_st* @EVP_PKEY_get1_RSA(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare void @RSA_free(%struct.rsa_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_RSA_PUBKEY(%struct.rsa_st* noundef %a, i8** noundef %pp) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.rsa_st* %a, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #8
  %cmp = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 617, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.i2d_RSA_PUBKEY, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %0 = bitcast %struct.rsa_st* %a to i8*
  %call3 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef nonnull %call, i32 noundef 6, i8* noundef nonnull %0) #8
  %call4 = tail call i32 @i2d_PUBKEY(%struct.evp_pkey_st* noundef nonnull %call, i8** noundef %pp) #9
  %ptr = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %call, i64 0, i32 5, i32 0
  store i8* null, i8** %ptr, align 8, !tbaa !30
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end2, %if.then1
  %retval.0 = phi i32 [ -1, %if.then1 ], [ %call4, %if.end2 ], [ 0, %entry ]
  ret i32 %retval.0
}

declare %struct.evp_pkey_st* @EVP_PKEY_new() local_unnamed_addr #2

declare i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.dh_st* @ossl_d2i_DH_PUBKEY(%struct.dh_st** noundef %a, i8** nocapture noundef %pp, i64 noundef %length) local_unnamed_addr #0 {
entry:
  %q = alloca i8*, align 8
  %0 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = load i8*, i8** %pp, align 8, !tbaa !4
  store i8* %1, i8** %q, align 8, !tbaa !4
  %call = call %struct.evp_pkey_st* @ossl_d2i_PUBKEY_legacy(%struct.evp_pkey_st** noundef null, i8** noundef nonnull %q, i64 noundef %length) #9
  %cmp = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef nonnull %call) #8
  %cmp2 = icmp eq i32 %call1, 28
  br i1 %cmp2, label %if.end5, label %if.end5.thread

if.end5.thread:                                   ; preds = %if.end
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call4 = tail call %struct.dh_st* @EVP_PKEY_get1_DH(%struct.evp_pkey_st* noundef nonnull %call) #8
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call) #8
  %cmp6 = icmp eq %struct.dh_st* %call4, null
  br i1 %cmp6, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end5
  %2 = load i8*, i8** %q, align 8, !tbaa !4
  store i8* %2, i8** %pp, align 8, !tbaa !4
  %cmp9.not = icmp eq %struct.dh_st** %a, null
  br i1 %cmp9.not, label %cleanup, label %if.then10

if.then10:                                        ; preds = %if.end8
  %3 = load %struct.dh_st*, %struct.dh_st** %a, align 8, !tbaa !4
  tail call void @DH_free(%struct.dh_st* noundef %3) #8
  store %struct.dh_st* %call4, %struct.dh_st** %a, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end5.thread, %if.end8, %if.then10, %if.end5, %entry
  %retval.0 = phi %struct.dh_st* [ null, %entry ], [ null, %if.end5 ], [ %call4, %if.then10 ], [ %call4, %if.end8 ], [ null, %if.end5.thread ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret %struct.dh_st* %retval.0
}

declare i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare %struct.dh_st* @EVP_PKEY_get1_DH(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare void @DH_free(%struct.dh_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_i2d_DH_PUBKEY(%struct.dh_st* noundef %a, i8** noundef %pp) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.dh_st* %a, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #8
  %cmp = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 659, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ossl_i2d_DH_PUBKEY, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %0 = bitcast %struct.dh_st* %a to i8*
  %call3 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef nonnull %call, i32 noundef 28, i8* noundef nonnull %0) #8
  %call4 = tail call i32 @i2d_PUBKEY(%struct.evp_pkey_st* noundef nonnull %call, i8** noundef %pp) #9
  %ptr = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %call, i64 0, i32 5, i32 0
  store i8* null, i8** %ptr, align 8, !tbaa !30
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end2, %if.then1
  %retval.0 = phi i32 [ -1, %if.then1 ], [ %call4, %if.end2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.dh_st* @ossl_d2i_DHx_PUBKEY(%struct.dh_st** noundef %a, i8** nocapture noundef %pp, i64 noundef %length) local_unnamed_addr #0 {
entry:
  %q = alloca i8*, align 8
  %0 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = load i8*, i8** %pp, align 8, !tbaa !4
  store i8* %1, i8** %q, align 8, !tbaa !4
  %call = call %struct.evp_pkey_st* @ossl_d2i_PUBKEY_legacy(%struct.evp_pkey_st** noundef null, i8** noundef nonnull %q, i64 noundef %length) #9
  %cmp = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef nonnull %call) #8
  %cmp2 = icmp eq i32 %call1, 920
  br i1 %cmp2, label %if.end5, label %if.end5.thread

if.end5.thread:                                   ; preds = %if.end
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call4 = tail call %struct.dh_st* @EVP_PKEY_get1_DH(%struct.evp_pkey_st* noundef nonnull %call) #8
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call) #8
  %cmp6 = icmp eq %struct.dh_st* %call4, null
  br i1 %cmp6, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end5
  %2 = load i8*, i8** %q, align 8, !tbaa !4
  store i8* %2, i8** %pp, align 8, !tbaa !4
  %cmp9.not = icmp eq %struct.dh_st** %a, null
  br i1 %cmp9.not, label %cleanup, label %if.then10

if.then10:                                        ; preds = %if.end8
  %3 = load %struct.dh_st*, %struct.dh_st** %a, align 8, !tbaa !4
  tail call void @DH_free(%struct.dh_st* noundef %3) #8
  store %struct.dh_st* %call4, %struct.dh_st** %a, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end5.thread, %if.end8, %if.then10, %if.end5, %entry
  %retval.0 = phi %struct.dh_st* [ null, %entry ], [ null, %if.end5 ], [ %call4, %if.then10 ], [ %call4, %if.end8 ], [ null, %if.end5.thread ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret %struct.dh_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_i2d_DHx_PUBKEY(%struct.dh_st* noundef %a, i8** noundef %pp) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.dh_st* %a, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #8
  %cmp = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 700, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ossl_i2d_DHx_PUBKEY, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %0 = bitcast %struct.dh_st* %a to i8*
  %call3 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef nonnull %call, i32 noundef 920, i8* noundef nonnull %0) #8
  %call4 = tail call i32 @i2d_PUBKEY(%struct.evp_pkey_st* noundef nonnull %call, i8** noundef %pp) #9
  %ptr = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %call, i64 0, i32 5, i32 0
  store i8* null, i8** %ptr, align 8, !tbaa !30
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end2, %if.then1
  %retval.0 = phi i32 [ -1, %if.then1 ], [ %call4, %if.end2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.dsa_st* @d2i_DSA_PUBKEY(%struct.dsa_st** noundef %a, i8** nocapture noundef %pp, i64 noundef %length) local_unnamed_addr #0 {
entry:
  %q = alloca i8*, align 8
  %0 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = load i8*, i8** %pp, align 8, !tbaa !4
  store i8* %1, i8** %q, align 8, !tbaa !4
  %call = call %struct.evp_pkey_st* @ossl_d2i_PUBKEY_legacy(%struct.evp_pkey_st** noundef null, i8** noundef nonnull %q, i64 noundef %length) #9
  %cmp = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.dsa_st* @EVP_PKEY_get1_DSA(%struct.evp_pkey_st* noundef nonnull %call) #8
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call) #8
  %cmp2 = icmp eq %struct.dsa_st* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %2 = load i8*, i8** %q, align 8, !tbaa !4
  store i8* %2, i8** %pp, align 8, !tbaa !4
  %cmp5.not = icmp eq %struct.dsa_st** %a, null
  br i1 %cmp5.not, label %cleanup, label %if.then6

if.then6:                                         ; preds = %if.end4
  %3 = load %struct.dsa_st*, %struct.dsa_st** %a, align 8, !tbaa !4
  tail call void @DSA_free(%struct.dsa_st* noundef %3) #8
  store %struct.dsa_st* %call1, %struct.dsa_st** %a, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then6, %if.end, %entry
  %retval.0 = phi %struct.dsa_st* [ null, %entry ], [ null, %if.end ], [ %call1, %if.then6 ], [ %call1, %if.end4 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret %struct.dsa_st* %retval.0
}

declare %struct.dsa_st* @EVP_PKEY_get1_DSA(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare void @DSA_free(%struct.dsa_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_DSA_PUBKEY(%struct.dsa_st* noundef %a, i8** noundef %pp) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.dsa_st* %a, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #8
  %cmp = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 742, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.i2d_DSA_PUBKEY, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %0 = bitcast %struct.dsa_st* %a to i8*
  %call3 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef nonnull %call, i32 noundef 116, i8* noundef nonnull %0) #8
  %call4 = tail call i32 @i2d_PUBKEY(%struct.evp_pkey_st* noundef nonnull %call, i8** noundef %pp) #9
  %ptr = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %call, i64 0, i32 5, i32 0
  store i8* null, i8** %ptr, align 8, !tbaa !30
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end2, %if.then1
  %retval.0 = phi i32 [ -1, %if.then1 ], [ %call4, %if.end2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ec_key_st* @d2i_EC_PUBKEY(%struct.ec_key_st** noundef %a, i8** nocapture noundef %pp, i64 noundef %length) local_unnamed_addr #0 {
entry:
  %q = alloca i8*, align 8
  %0 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = load i8*, i8** %pp, align 8, !tbaa !4
  store i8* %1, i8** %q, align 8, !tbaa !4
  %call = call %struct.evp_pkey_st* @ossl_d2i_PUBKEY_legacy(%struct.evp_pkey_st** noundef null, i8** noundef nonnull %q, i64 noundef %length) #9
  %cmp = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef nonnull %call) #8
  switch i32 %call1, label %if.end6.thread [
    i32 1172, label %if.end6
    i32 408, label %if.end6
  ]

if.end6.thread:                                   ; preds = %if.end
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end, %if.end
  %call5 = tail call %struct.ec_key_st* @EVP_PKEY_get1_EC_KEY(%struct.evp_pkey_st* noundef nonnull %call) #8
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call) #8
  %cmp7 = icmp eq %struct.ec_key_st* %call5, null
  br i1 %cmp7, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end6
  %2 = load i8*, i8** %q, align 8, !tbaa !4
  store i8* %2, i8** %pp, align 8, !tbaa !4
  %cmp10.not = icmp eq %struct.ec_key_st** %a, null
  br i1 %cmp10.not, label %cleanup, label %if.then11

if.then11:                                        ; preds = %if.end9
  %3 = load %struct.ec_key_st*, %struct.ec_key_st** %a, align 8, !tbaa !4
  tail call void @EC_KEY_free(%struct.ec_key_st* noundef %3) #8
  store %struct.ec_key_st* %call5, %struct.ec_key_st** %a, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end6.thread, %if.end9, %if.then11, %if.end6, %entry
  %retval.0 = phi %struct.ec_key_st* [ null, %entry ], [ null, %if.end6 ], [ %call5, %if.then11 ], [ %call5, %if.end9 ], [ null, %if.end6.thread ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret %struct.ec_key_st* %retval.0
}

declare %struct.ec_key_st* @EVP_PKEY_get1_EC_KEY(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare void @EC_KEY_free(%struct.ec_key_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_EC_PUBKEY(%struct.ec_key_st* noundef %a, i8** noundef %pp) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ec_key_st* %a, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #8
  %cmp1 = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 787, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.i2d_EC_PUBKEY, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %0 = bitcast %struct.ec_key_st* %a to i8*
  %call4 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef nonnull %call, i32 noundef 408, i8* noundef nonnull %0) #8
  %call5 = tail call i32 @i2d_PUBKEY(%struct.evp_pkey_st* noundef nonnull %call, i8** noundef %pp) #9
  %ptr = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %call, i64 0, i32 5, i32 0
  store i8* null, i8** %ptr, align 8, !tbaa !30
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end3, %if.then2
  %retval.0 = phi i32 [ -1, %if.then2 ], [ %call5, %if.end3 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ecx_key_st* @ossl_d2i_ED25519_PUBKEY(%struct.ecx_key_st** noundef %a, i8** nocapture noundef %pp, i64 noundef %length) local_unnamed_addr #0 {
entry:
  %q = alloca i8*, align 8
  %0 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = load i8*, i8** %pp, align 8, !tbaa !4
  store i8* %1, i8** %q, align 8, !tbaa !4
  %call = call %struct.evp_pkey_st* @ossl_d2i_PUBKEY_legacy(%struct.evp_pkey_st** noundef null, i8** noundef nonnull %q, i64 noundef %length) #9
  %cmp = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.ecx_key_st* @ossl_evp_pkey_get1_ED25519(%struct.evp_pkey_st* noundef nonnull %call) #8
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call) #8
  %cmp2 = icmp eq %struct.ecx_key_st* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %2 = load i8*, i8** %q, align 8, !tbaa !4
  store i8* %2, i8** %pp, align 8, !tbaa !4
  %cmp5.not = icmp eq %struct.ecx_key_st** %a, null
  br i1 %cmp5.not, label %cleanup, label %if.then6

if.then6:                                         ; preds = %if.end4
  %3 = load %struct.ecx_key_st*, %struct.ecx_key_st** %a, align 8, !tbaa !4
  tail call void @ossl_ecx_key_free(%struct.ecx_key_st* noundef %3) #8
  store %struct.ecx_key_st* %call1, %struct.ecx_key_st** %a, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then6, %if.end, %entry
  %retval.0 = phi %struct.ecx_key_st* [ null, %entry ], [ null, %if.end ], [ %call1, %if.then6 ], [ %call1, %if.end4 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret %struct.ecx_key_st* %retval.0
}

declare %struct.ecx_key_st* @ossl_evp_pkey_get1_ED25519(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare void @ossl_ecx_key_free(%struct.ecx_key_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_i2d_ED25519_PUBKEY(%struct.ecx_key_st* noundef %a, i8** noundef %pp) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ecx_key_st* %a, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #8
  %cmp1 = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 828, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ossl_i2d_ED25519_PUBKEY, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %0 = bitcast %struct.ecx_key_st* %a to i8*
  %call4 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef nonnull %call, i32 noundef 1087, i8* noundef nonnull %0) #8
  %call5 = tail call i32 @i2d_PUBKEY(%struct.evp_pkey_st* noundef nonnull %call, i8** noundef %pp) #9
  %ptr = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %call, i64 0, i32 5, i32 0
  store i8* null, i8** %ptr, align 8, !tbaa !30
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end3, %if.then2
  %retval.0 = phi i32 [ -1, %if.then2 ], [ %call5, %if.end3 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ecx_key_st* @ossl_d2i_ED448_PUBKEY(%struct.ecx_key_st** noundef %a, i8** nocapture noundef %pp, i64 noundef %length) local_unnamed_addr #0 {
entry:
  %q = alloca i8*, align 8
  %0 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = load i8*, i8** %pp, align 8, !tbaa !4
  store i8* %1, i8** %q, align 8, !tbaa !4
  %call = call %struct.evp_pkey_st* @ossl_d2i_PUBKEY_legacy(%struct.evp_pkey_st** noundef null, i8** noundef nonnull %q, i64 noundef %length) #9
  %cmp = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef nonnull %call) #8
  %cmp2 = icmp eq i32 %call1, 1088
  br i1 %cmp2, label %if.end5, label %if.end5.thread

if.end5.thread:                                   ; preds = %if.end
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call4 = tail call %struct.ecx_key_st* @ossl_evp_pkey_get1_ED448(%struct.evp_pkey_st* noundef nonnull %call) #8
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call) #8
  %cmp6 = icmp eq %struct.ecx_key_st* %call4, null
  br i1 %cmp6, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end5
  %2 = load i8*, i8** %q, align 8, !tbaa !4
  store i8* %2, i8** %pp, align 8, !tbaa !4
  %cmp9.not = icmp eq %struct.ecx_key_st** %a, null
  br i1 %cmp9.not, label %cleanup, label %if.then10

if.then10:                                        ; preds = %if.end8
  %3 = load %struct.ecx_key_st*, %struct.ecx_key_st** %a, align 8, !tbaa !4
  tail call void @ossl_ecx_key_free(%struct.ecx_key_st* noundef %3) #8
  store %struct.ecx_key_st* %call4, %struct.ecx_key_st** %a, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end5.thread, %if.end8, %if.then10, %if.end5, %entry
  %retval.0 = phi %struct.ecx_key_st* [ null, %entry ], [ null, %if.end5 ], [ %call4, %if.then10 ], [ %call4, %if.end8 ], [ null, %if.end5.thread ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret %struct.ecx_key_st* %retval.0
}

declare %struct.ecx_key_st* @ossl_evp_pkey_get1_ED448(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_i2d_ED448_PUBKEY(%struct.ecx_key_st* noundef %a, i8** noundef %pp) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ecx_key_st* %a, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #8
  %cmp1 = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 870, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ossl_i2d_ED448_PUBKEY, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %0 = bitcast %struct.ecx_key_st* %a to i8*
  %call4 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef nonnull %call, i32 noundef 1088, i8* noundef nonnull %0) #8
  %call5 = tail call i32 @i2d_PUBKEY(%struct.evp_pkey_st* noundef nonnull %call, i8** noundef %pp) #9
  %ptr = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %call, i64 0, i32 5, i32 0
  store i8* null, i8** %ptr, align 8, !tbaa !30
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end3, %if.then2
  %retval.0 = phi i32 [ -1, %if.then2 ], [ %call5, %if.end3 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ecx_key_st* @ossl_d2i_X25519_PUBKEY(%struct.ecx_key_st** noundef %a, i8** nocapture noundef %pp, i64 noundef %length) local_unnamed_addr #0 {
entry:
  %q = alloca i8*, align 8
  %0 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = load i8*, i8** %pp, align 8, !tbaa !4
  store i8* %1, i8** %q, align 8, !tbaa !4
  %call = call %struct.evp_pkey_st* @ossl_d2i_PUBKEY_legacy(%struct.evp_pkey_st** noundef null, i8** noundef nonnull %q, i64 noundef %length) #9
  %cmp = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef nonnull %call) #8
  %cmp2 = icmp eq i32 %call1, 1034
  br i1 %cmp2, label %if.end5, label %if.end5.thread

if.end5.thread:                                   ; preds = %if.end
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call4 = tail call %struct.ecx_key_st* @ossl_evp_pkey_get1_X25519(%struct.evp_pkey_st* noundef nonnull %call) #8
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call) #8
  %cmp6 = icmp eq %struct.ecx_key_st* %call4, null
  br i1 %cmp6, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end5
  %2 = load i8*, i8** %q, align 8, !tbaa !4
  store i8* %2, i8** %pp, align 8, !tbaa !4
  %cmp9.not = icmp eq %struct.ecx_key_st** %a, null
  br i1 %cmp9.not, label %cleanup, label %if.then10

if.then10:                                        ; preds = %if.end8
  %3 = load %struct.ecx_key_st*, %struct.ecx_key_st** %a, align 8, !tbaa !4
  tail call void @ossl_ecx_key_free(%struct.ecx_key_st* noundef %3) #8
  store %struct.ecx_key_st* %call4, %struct.ecx_key_st** %a, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end5.thread, %if.end8, %if.then10, %if.end5, %entry
  %retval.0 = phi %struct.ecx_key_st* [ null, %entry ], [ null, %if.end5 ], [ %call4, %if.then10 ], [ %call4, %if.end8 ], [ null, %if.end5.thread ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret %struct.ecx_key_st* %retval.0
}

declare %struct.ecx_key_st* @ossl_evp_pkey_get1_X25519(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_i2d_X25519_PUBKEY(%struct.ecx_key_st* noundef %a, i8** noundef %pp) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ecx_key_st* %a, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #8
  %cmp1 = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 912, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ossl_i2d_X25519_PUBKEY, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %0 = bitcast %struct.ecx_key_st* %a to i8*
  %call4 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef nonnull %call, i32 noundef 1034, i8* noundef nonnull %0) #8
  %call5 = tail call i32 @i2d_PUBKEY(%struct.evp_pkey_st* noundef nonnull %call, i8** noundef %pp) #9
  %ptr = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %call, i64 0, i32 5, i32 0
  store i8* null, i8** %ptr, align 8, !tbaa !30
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end3, %if.then2
  %retval.0 = phi i32 [ -1, %if.then2 ], [ %call5, %if.end3 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ecx_key_st* @ossl_d2i_X448_PUBKEY(%struct.ecx_key_st** noundef %a, i8** nocapture noundef %pp, i64 noundef %length) local_unnamed_addr #0 {
entry:
  %q = alloca i8*, align 8
  %0 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = load i8*, i8** %pp, align 8, !tbaa !4
  store i8* %1, i8** %q, align 8, !tbaa !4
  %call = call %struct.evp_pkey_st* @ossl_d2i_PUBKEY_legacy(%struct.evp_pkey_st** noundef null, i8** noundef nonnull %q, i64 noundef %length) #9
  %cmp = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef nonnull %call) #8
  %cmp2 = icmp eq i32 %call1, 1035
  br i1 %cmp2, label %if.end5, label %if.end5.thread

if.end5.thread:                                   ; preds = %if.end
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call4 = tail call %struct.ecx_key_st* @ossl_evp_pkey_get1_X448(%struct.evp_pkey_st* noundef nonnull %call) #8
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call) #8
  %cmp6 = icmp eq %struct.ecx_key_st* %call4, null
  br i1 %cmp6, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end5
  %2 = load i8*, i8** %q, align 8, !tbaa !4
  store i8* %2, i8** %pp, align 8, !tbaa !4
  %cmp9.not = icmp eq %struct.ecx_key_st** %a, null
  br i1 %cmp9.not, label %cleanup, label %if.then10

if.then10:                                        ; preds = %if.end8
  %3 = load %struct.ecx_key_st*, %struct.ecx_key_st** %a, align 8, !tbaa !4
  tail call void @ossl_ecx_key_free(%struct.ecx_key_st* noundef %3) #8
  store %struct.ecx_key_st* %call4, %struct.ecx_key_st** %a, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end5.thread, %if.end8, %if.then10, %if.end5, %entry
  %retval.0 = phi %struct.ecx_key_st* [ null, %entry ], [ null, %if.end5 ], [ %call4, %if.then10 ], [ %call4, %if.end8 ], [ null, %if.end5.thread ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret %struct.ecx_key_st* %retval.0
}

declare %struct.ecx_key_st* @ossl_evp_pkey_get1_X448(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_i2d_X448_PUBKEY(%struct.ecx_key_st* noundef %a, i8** noundef %pp) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ecx_key_st* %a, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #8
  %cmp1 = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 954, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ossl_i2d_X448_PUBKEY, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %0 = bitcast %struct.ecx_key_st* %a to i8*
  %call4 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef nonnull %call, i32 noundef 1035, i8* noundef nonnull %0) #8
  %call5 = tail call i32 @i2d_PUBKEY(%struct.evp_pkey_st* noundef nonnull %call, i8** noundef %pp) #9
  %ptr = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %call, i64 0, i32 5, i32 0
  store i8* null, i8** %ptr, align 8, !tbaa !30
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end3, %if.then2
  %retval.0 = phi i32 [ -1, %if.then2 ], [ %call5, %if.end3 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_PUBKEY_set0_param(%struct.X509_pubkey_st* nocapture noundef readonly %pub, %struct.asn1_object_st* noundef %aobj, i32 noundef %ptype, i8* noundef %pval, i8* noundef %penc, i32 noundef %penclen) local_unnamed_addr #0 {
entry:
  %algor = getelementptr inbounds %struct.X509_pubkey_st, %struct.X509_pubkey_st* %pub, i64 0, i32 0
  %0 = load %struct.X509_algor_st*, %struct.X509_algor_st** %algor, align 8, !tbaa !12
  %call = tail call i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef %0, %struct.asn1_object_st* noundef %aobj, i32 noundef %ptype, i8* noundef %pval) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq i8* %penc, null
  br i1 %tobool1.not, label %return, label %if.then2

if.then2:                                         ; preds = %if.end
  %public_key = getelementptr inbounds %struct.X509_pubkey_st, %struct.X509_pubkey_st* %pub, i64 0, i32 1
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %public_key, align 8, !tbaa !13
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %1, i64 0, i32 2
  %2 = load i8*, i8** %data, align 8, !tbaa !14
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 973) #8
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %public_key, align 8, !tbaa !13
  %data4 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %3, i64 0, i32 2
  store i8* %penc, i8** %data4, align 8, !tbaa !14
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %3, i64 0, i32 0
  store i32 %penclen, i32* %length, align 8, !tbaa !17
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %3, i64 0, i32 3
  %4 = load i64, i64* %flags, align 8, !tbaa !31
  %and = and i64 %4, -16
  %or = or i64 %and, 8
  store i64 %or, i64* %flags, align 8, !tbaa !31
  br label %return

return:                                           ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.then2 ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef, %struct.asn1_object_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @X509_PUBKEY_get0_param(%struct.asn1_object_st** noundef writeonly %ppkalg, i8** noundef writeonly %pk, i32* nocapture noundef writeonly %ppklen, %struct.X509_algor_st** noundef writeonly %pa, %struct.X509_pubkey_st* nocapture noundef readonly %pub) local_unnamed_addr #5 {
entry:
  %tobool.not = icmp eq %struct.asn1_object_st** %ppkalg, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %algor = getelementptr inbounds %struct.X509_pubkey_st, %struct.X509_pubkey_st* %pub, i64 0, i32 0
  %0 = load %struct.X509_algor_st*, %struct.X509_algor_st** %algor, align 8, !tbaa !12
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %0, i64 0, i32 0
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !32
  store %struct.asn1_object_st* %1, %struct.asn1_object_st** %ppkalg, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool1.not = icmp eq i8** %pk, null
  br i1 %tobool1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %public_key = getelementptr inbounds %struct.X509_pubkey_st, %struct.X509_pubkey_st* %pub, i64 0, i32 1
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %public_key, align 8, !tbaa !13
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %2, i64 0, i32 2
  %3 = load i8*, i8** %data, align 8, !tbaa !14
  store i8* %3, i8** %pk, align 8, !tbaa !4
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %public_key, align 8, !tbaa !13
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %4, i64 0, i32 0
  %5 = load i32, i32* %length, align 8, !tbaa !17
  store i32 %5, i32* %ppklen, align 4, !tbaa !34
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %tobool5.not = icmp eq %struct.X509_algor_st** %pa, null
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end4
  %algor7 = getelementptr inbounds %struct.X509_pubkey_st, %struct.X509_pubkey_st* %pub, i64 0, i32 0
  %6 = load %struct.X509_algor_st*, %struct.X509_algor_st** %algor7, align 8, !tbaa !12
  store %struct.X509_algor_st* %6, %struct.X509_algor_st** %pa, align 8, !tbaa !4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_string_st* @X509_get0_pubkey_bitstr(%struct.x509_st* noundef readonly %x) local_unnamed_addr #6 {
entry:
  %cmp = icmp eq %struct.x509_st* %x, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %key = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 6
  %0 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %key, align 8, !tbaa !35
  %public_key = getelementptr inbounds %struct.X509_pubkey_st, %struct.X509_pubkey_st* %0, i64 0, i32 1
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %public_key, align 8, !tbaa !13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.asn1_string_st* [ %1, %if.end ], [ null, %entry ]
  ret %struct.asn1_string_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_PUBKEY_eq(%struct.X509_pubkey_st* noundef %a, %struct.X509_pubkey_st* noundef %b) local_unnamed_addr #0 {
entry:
  %algA = alloca %struct.X509_algor_st*, align 8
  %algB = alloca %struct.X509_algor_st*, align 8
  %0 = bitcast %struct.X509_algor_st** %algA to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = bitcast %struct.X509_algor_st** %algB to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  %cmp = icmp eq %struct.X509_pubkey_st* %a, %b
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct.X509_pubkey_st* %a, null
  %cmp2 = icmp eq %struct.X509_pubkey_st* %b, null
  %or.cond = or i1 %cmp1, %cmp2
  br i1 %or.cond, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %call = call i32 @X509_PUBKEY_get0_param(%struct.asn1_object_st** noundef null, i8** noundef null, i32* noundef null, %struct.X509_algor_st** noundef nonnull %algA, %struct.X509_pubkey_st* noundef nonnull %a) #9
  %2 = load %struct.X509_algor_st*, %struct.X509_algor_st** %algA, align 8
  %cmp6 = icmp eq %struct.X509_algor_st* %2, null
  br i1 %cmp6, label %cleanup, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %if.end4
  %call8 = call i32 @X509_PUBKEY_get0_param(%struct.asn1_object_st** noundef null, i8** noundef null, i32* noundef null, %struct.X509_algor_st** noundef nonnull %algB, %struct.X509_pubkey_st* noundef nonnull %b) #9
  %3 = load %struct.X509_algor_st*, %struct.X509_algor_st** %algB, align 8
  %cmp11 = icmp eq %struct.X509_algor_st* %3, null
  br i1 %cmp11, label %cleanup, label %if.end13

if.end13:                                         ; preds = %lor.lhs.false7
  %4 = load %struct.X509_algor_st*, %struct.X509_algor_st** %algA, align 8, !tbaa !4
  %call14 = call i32 @X509_ALGOR_cmp(%struct.X509_algor_st* noundef %4, %struct.X509_algor_st* noundef nonnull %3) #8
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %if.end17, label %cleanup

if.end17:                                         ; preds = %if.end13
  %call18 = call %struct.evp_pkey_st* @X509_PUBKEY_get0(%struct.X509_pubkey_st* noundef nonnull %a) #9
  %cmp19 = icmp eq %struct.evp_pkey_st* %call18, null
  br i1 %cmp19, label %cleanup, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.end17
  %call21 = call %struct.evp_pkey_st* @X509_PUBKEY_get0(%struct.X509_pubkey_st* noundef nonnull %b) #9
  %cmp22 = icmp eq %struct.evp_pkey_st* %call21, null
  br i1 %cmp22, label %cleanup, label %if.end24

if.end24:                                         ; preds = %lor.lhs.false20
  %call25 = call i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef nonnull %call18, %struct.evp_pkey_st* noundef nonnull %call21) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %lor.lhs.false20, %if.end13, %if.end4, %lor.lhs.false7, %if.end, %entry, %if.end24
  %retval.0 = phi i32 [ %call25, %if.end24 ], [ 1, %entry ], [ 0, %if.end ], [ -2, %lor.lhs.false7 ], [ -2, %if.end4 ], [ 0, %if.end13 ], [ -2, %lor.lhs.false20 ], [ -2, %if.end17 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

declare i32 @X509_ALGOR_cmp(%struct.X509_algor_st* noundef, %struct.X509_algor_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @ossl_x509_PUBKEY_get0_libctx(%struct.ossl_lib_ctx_st** noundef writeonly %plibctx, i8** noundef writeonly %ppropq, %struct.X509_pubkey_st* nocapture noundef readonly %key) local_unnamed_addr #5 {
entry:
  %tobool.not = icmp eq %struct.ossl_lib_ctx_st** %plibctx, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %libctx = getelementptr inbounds %struct.X509_pubkey_st, %struct.X509_pubkey_st* %key, i64 0, i32 3
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !8
  store %struct.ossl_lib_ctx_st* %0, %struct.ossl_lib_ctx_st** %plibctx, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool1.not = icmp eq i8** %ppropq, null
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %propq = getelementptr inbounds %struct.X509_pubkey_st, %struct.X509_pubkey_st* %key, i64 0, i32 4
  %1 = load i8*, i8** %propq, align 8, !tbaa !11
  store i8* %1, i8** %ppropq, align 8, !tbaa !4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  ret i32 1
}

declare %struct.ASN1_ITEM_st* @X509_ALGOR_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_BIT_STRING_it() #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @x509_pubkey_ex_i2d(%struct.ASN1_VALUE_st** noundef %pval, i8** noundef %out, %struct.ASN1_ITEM_st* nocapture noundef readnone %it, i32 noundef %tag, i32 noundef %aclass) #0 {
entry:
  %call1 = tail call i32 @ASN1_item_ex_i2d(%struct.ASN1_VALUE_st** noundef %pval, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @X509_PUBKEY_INTERNAL_it.local_it, i32 noundef %tag, i32 noundef %aclass) #8
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @x509_pubkey_ex_print(%struct.bio_st* noundef %out, %struct.ASN1_VALUE_st** nocapture noundef readonly %pval, i32 noundef %indent, i8* nocapture noundef readnone %fname, %struct.asn1_pctx_st* noundef %pctx) #0 {
entry:
  %0 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !4
  %call1 = tail call i32 @ASN1_item_print(%struct.bio_st* noundef %out, %struct.ASN1_VALUE_st* noundef %0, i32 noundef %indent, %struct.ASN1_ITEM_st* noundef nonnull @X509_PUBKEY_INTERNAL_it.local_it, %struct.asn1_pctx_st* noundef %pctx) #8
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @x509_pubkey_ex_new_ex(%struct.ASN1_VALUE_st** nocapture noundef writeonly %pval, %struct.ASN1_ITEM_st* nocapture noundef readnone %it, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #0 {
entry:
  %ret = alloca %struct.X509_pubkey_st*, align 8
  %0 = bitcast %struct.X509_pubkey_st** %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 48, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 115) #8
  %1 = bitcast %struct.X509_pubkey_st** %ret to i8**
  store i8* %call, i8** %1, align 8, !tbaa !4
  %cmp = icmp eq i8* %call, null
  %2 = bitcast i8* %call to %struct.X509_pubkey_st*
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = bitcast %struct.X509_pubkey_st** %ret to %struct.ASN1_VALUE_st**
  %call1 = call fastcc i32 @x509_pubkey_ex_populate(%struct.ASN1_VALUE_st** noundef nonnull %3) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %call3 = tail call fastcc i32 @x509_pubkey_set0_libctx(%struct.X509_pubkey_st* noundef nonnull %2, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #9
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry, %lor.lhs.false2, %lor.lhs.false
  %.pre-phi = bitcast %struct.X509_pubkey_st** %ret to %struct.ASN1_VALUE_st**
  call void @x509_pubkey_ex_free(%struct.ASN1_VALUE_st** noundef nonnull %.pre-phi, %struct.ASN1_ITEM_st* noundef null) #9
  store %struct.X509_pubkey_st* null, %struct.X509_pubkey_st** %ret, align 8, !tbaa !4
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 120, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.x509_pubkey_ex_new_ex, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #8
  %.pre = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %ret, align 8, !tbaa !4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false2
  %4 = bitcast %struct.ASN1_VALUE_st** %pval to i8**
  store i8* %call, i8** %4, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = phi %struct.X509_pubkey_st* [ %2, %if.else ], [ %.pre, %if.then ]
  %cmp5 = icmp ne %struct.X509_pubkey_st* %5, null
  %conv = zext i1 %cmp5 to i32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @x509_pubkey_ex_d2i_ex(%struct.ASN1_VALUE_st** noundef %pval, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* nocapture noundef readnone %it, i32 noundef %tag, i32 noundef %aclass, i8 noundef signext %opt, %struct.ASN1_TLC_st* noundef %ctx, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #0 {
entry:
  %p = alloca i8*, align 8
  %txtoidname = alloca [50 x i8], align 16
  %slen = alloca i64, align 8
  %0 = load i8*, i8** %in, align 8, !tbaa !4
  %1 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !4
  %cmp = icmp eq %struct.ASN1_VALUE_st* %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @x509_pubkey_ex_new_ex(%struct.ASN1_VALUE_st** noundef nonnull %pval, %struct.ASN1_ITEM_st* noundef %it, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup66, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %call1 = tail call fastcc i32 @x509_pubkey_ex_populate(%struct.ASN1_VALUE_st** noundef nonnull %pval) #9
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 144, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.x509_pubkey_ex_d2i_ex, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup66

if.end4:                                          ; preds = %if.end
  %call6 = tail call i32 @ASN1_item_ex_d2i(%struct.ASN1_VALUE_st** noundef nonnull %pval, i8** noundef nonnull %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @X509_PUBKEY_INTERNAL_it.local_it, i32 noundef %tag, i32 noundef %aclass, i8 noundef signext %opt, %struct.ASN1_TLC_st* noundef %ctx) #8
  %cmp7 = icmp slt i32 %call6, 1
  br i1 %cmp7, label %cleanup66, label %if.end9

if.end9:                                          ; preds = %if.end4
  %2 = load i8*, i8** %in, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp10.not = icmp eq i64 %sub.ptr.sub, 0
  br i1 %cmp10.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 156, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.x509_pubkey_ex_d2i_ex, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786691, i8* noundef null) #8
  br label %cleanup66

if.end14:                                         ; preds = %if.end9
  %3 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.X509_pubkey_st**
  %4 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %3, align 8, !tbaa !4
  %pkey = getelementptr inbounds %struct.X509_pubkey_st, %struct.X509_pubkey_st* %4, i64 0, i32 2
  %5 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !18
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %5) #8
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !18
  %call16 = tail call i32 @ERR_set_mark() #8
  %call18 = tail call fastcc i32 @x509_pubkey_decode(%struct.evp_pkey_st** noundef nonnull %pkey, %struct.X509_pubkey_st* noundef %4) #9
  %cmp19 = icmp eq i32 %call18, -1
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end14
  %call22 = tail call i32 @ERR_clear_last_mark() #8
  br label %end

if.end23:                                         ; preds = %if.end14
  %cmp24 = icmp slt i32 %call18, 1
  br i1 %cmp24, label %land.lhs.true26, label %if.end64

land.lhs.true26:                                  ; preds = %if.end23
  %flag_force_legacy = getelementptr inbounds %struct.X509_pubkey_st, %struct.X509_pubkey_st* %4, i64 0, i32 5
  %bf.load = load i8, i8* %flag_force_legacy, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool27.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool27.not, label %if.then28, label %if.end64

if.then28:                                        ; preds = %land.lhs.true26
  %6 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #7
  %7 = getelementptr inbounds [50 x i8], [50 x i8]* %txtoidname, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 50, i8* nonnull %7) #7
  %8 = bitcast i64* %slen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #7
  store i64 %sub.ptr.sub, i64* %slen, align 8, !tbaa !26
  %cmp29.not = icmp eq i32 %aclass, 0
  br i1 %cmp29.not, label %if.end37, label %if.then31

if.then31:                                        ; preds = %if.then28
  %call32 = tail call i8* @CRYPTO_memdup(i8* noundef %0, i64 noundef %sub.ptr.sub, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 192) #8
  %cmp33 = icmp eq i8* %call32, null
  br i1 %cmp33, label %cleanup, label %if.end36

if.end36:                                         ; preds = %if.then31
  store i8 48, i8* %call32, align 1, !tbaa !30
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then28
  %in_saved.0 = phi i8* [ %call32, %if.end36 ], [ %0, %if.then28 ]
  %tmpbuf.0 = phi i8* [ %call32, %if.end36 ], [ null, %if.then28 ]
  store i8* %in_saved.0, i8** %p, align 8, !tbaa !4
  %algor = getelementptr inbounds %struct.X509_pubkey_st, %struct.X509_pubkey_st* %4, i64 0, i32 0
  %9 = load %struct.X509_algor_st*, %struct.X509_algor_st** %algor, align 8, !tbaa !12
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %9, i64 0, i32 0
  %10 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !32
  %call38 = call i32 @OBJ_obj2txt(i8* noundef nonnull %7, i32 noundef 50, %struct.asn1_object_st* noundef %10, i32 noundef 0) #8
  %cmp39 = icmp slt i32 %call38, 1
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end37
  %call42 = call i32 @ERR_clear_last_mark() #8
  br label %cleanup.thread107

if.end43:                                         ; preds = %if.end37
  %libctx46 = getelementptr inbounds %struct.X509_pubkey_st, %struct.X509_pubkey_st* %4, i64 0, i32 3
  %11 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx46, align 8, !tbaa !8
  %propq47 = getelementptr inbounds %struct.X509_pubkey_st, %struct.X509_pubkey_st* %4, i64 0, i32 4
  %12 = load i8*, i8** %propq47, align 8, !tbaa !11
  %call48 = call %struct.ossl_decoder_ctx_st* @OSSL_DECODER_CTX_new_for_pkey(%struct.evp_pkey_st** noundef nonnull %pkey, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %7, i32 noundef 134, %struct.ossl_lib_ctx_st* noundef %11, i8* noundef %12) #8
  %cmp49.not = icmp eq %struct.ossl_decoder_ctx_st* %call48, null
  br i1 %cmp49.not, label %cleanup.thread, label %if.then51

if.then51:                                        ; preds = %if.end43
  %call52 = call i32 @OSSL_DECODER_from_data(%struct.ossl_decoder_ctx_st* noundef nonnull %call48, i8** noundef nonnull %p, i64* noundef nonnull %slen) #8
  %tobool53 = icmp ne i32 %call52, 0
  %13 = load i64, i64* %slen, align 8
  %cmp55 = icmp ne i64 %13, 0
  %or.cond = select i1 %tobool53, i1 %cmp55, i1 false
  br i1 %or.cond, label %if.then57, label %cleanup.thread

if.then57:                                        ; preds = %if.then51
  %call58 = call i32 @ERR_clear_last_mark() #8
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 224, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.x509_pubkey_ex_d2i_ex, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 114, i8* noundef null) #8
  br label %cleanup.thread107

cleanup.thread:                                   ; preds = %if.then51, %if.end43
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #7
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %7) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #7
  br label %if.end64

cleanup.thread107:                                ; preds = %if.then41, %if.then57
  %dctx.0.ph = phi %struct.ossl_decoder_ctx_st* [ %call48, %if.then57 ], [ null, %if.then41 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #7
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %7) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #7
  br label %end

cleanup:                                          ; preds = %if.then31
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 194, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.x509_pubkey_ex_d2i_ex, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #7
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %7) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #7
  br label %cleanup66

if.end64:                                         ; preds = %cleanup.thread, %land.lhs.true26, %if.end23
  %dctx.1 = phi %struct.ossl_decoder_ctx_st* [ null, %land.lhs.true26 ], [ null, %if.end23 ], [ %call48, %cleanup.thread ]
  %tmpbuf.2 = phi i8* [ null, %land.lhs.true26 ], [ null, %if.end23 ], [ %tmpbuf.0, %cleanup.thread ]
  %call65 = call i32 @ERR_pop_to_mark() #8
  br label %end

end:                                              ; preds = %cleanup.thread107, %if.end64, %if.then21
  %ret.0 = phi i32 [ -1, %if.then21 ], [ 1, %if.end64 ], [ %call18, %cleanup.thread107 ]
  %dctx.2 = phi %struct.ossl_decoder_ctx_st* [ null, %if.then21 ], [ %dctx.1, %if.end64 ], [ %dctx.0.ph, %cleanup.thread107 ]
  %tmpbuf.3 = phi i8* [ null, %if.then21 ], [ %tmpbuf.2, %if.end64 ], [ %tmpbuf.0, %cleanup.thread107 ]
  call void @OSSL_DECODER_CTX_free(%struct.ossl_decoder_ctx_st* noundef %dctx.2) #8
  call void @CRYPTO_free(i8* noundef %tmpbuf.3, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 234) #8
  br label %cleanup66

cleanup66:                                        ; preds = %cleanup, %if.end4, %land.lhs.true, %end, %if.then13, %if.then3
  %retval.1 = phi i32 [ %ret.0, %end ], [ 0, %cleanup ], [ 0, %if.then13 ], [ 0, %if.then3 ], [ 0, %land.lhs.true ], [ %call6, %if.end4 ]
  ret i32 %retval.1
}

declare i32 @ASN1_item_ex_i2d(%struct.ASN1_VALUE_st** noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ASN1_item_print(%struct.bio_st* noundef, %struct.ASN1_VALUE_st* noundef, i32 noundef, %struct.ASN1_ITEM_st* noundef, %struct.asn1_pctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @x509_pubkey_ex_populate(%struct.ASN1_VALUE_st** nocapture noundef readonly %pval) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.X509_pubkey_st**
  %1 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %0, align 8, !tbaa !4
  %algor = getelementptr inbounds %struct.X509_pubkey_st, %struct.X509_pubkey_st* %1, i64 0, i32 0
  %2 = load %struct.X509_algor_st*, %struct.X509_algor_st** %algor, align 8, !tbaa !12
  %cmp.not = icmp eq %struct.X509_algor_st* %2, null
  br i1 %cmp.not, label %lor.lhs.false, label %land.rhs

lor.lhs.false:                                    ; preds = %entry
  %call = tail call %struct.X509_algor_st* @X509_ALGOR_new() #8
  store %struct.X509_algor_st* %call, %struct.X509_algor_st** %algor, align 8, !tbaa !12
  %cmp2.not = icmp eq %struct.X509_algor_st* %call, null
  br i1 %cmp2.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %lor.lhs.false, %entry
  %public_key = getelementptr inbounds %struct.X509_pubkey_st, %struct.X509_pubkey_st* %1, i64 0, i32 1
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %public_key, align 8, !tbaa !13
  %cmp3.not = icmp eq %struct.asn1_string_st* %3, null
  br i1 %cmp3.not, label %lor.rhs, label %land.end

lor.rhs:                                          ; preds = %land.rhs
  %call4 = tail call %struct.asn1_string_st* @ASN1_BIT_STRING_new() #8
  store %struct.asn1_string_st* %call4, %struct.asn1_string_st** %public_key, align 8, !tbaa !13
  %cmp6 = icmp ne %struct.asn1_string_st* %call4, null
  %phi.cast = zext i1 %cmp6 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs, %lor.lhs.false
  %4 = phi i32 [ 0, %lor.lhs.false ], [ 1, %land.rhs ], [ %phi.cast, %lor.rhs ]
  ret i32 %4
}

declare %struct.X509_algor_st* @X509_ALGOR_new() local_unnamed_addr #2

declare i32 @ASN1_item_ex_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef, i32 noundef, i32 noundef, i8 noundef signext, %struct.ASN1_TLC_st* noundef) local_unnamed_addr #2

declare i32 @ERR_set_mark() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @x509_pubkey_decode(%struct.evp_pkey_st** nocapture noundef writeonly %ppkey, %struct.X509_pubkey_st* noundef %key) unnamed_addr #0 {
entry:
  %algor = getelementptr inbounds %struct.X509_pubkey_st, %struct.X509_pubkey_st* %key, i64 0, i32 0
  %0 = load %struct.X509_algor_st*, %struct.X509_algor_st** %algor, align 8, !tbaa !12
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %0, i64 0, i32 0
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !32
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %1) #8
  %flag_force_legacy = getelementptr inbounds %struct.X509_pubkey_st, %struct.X509_pubkey_st* %key, i64 0, i32 5
  %bf.load = load i8, i8* %flag_force_legacy, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %call1 = tail call %struct.engine_st* @ENGINE_get_pkey_meth_engine(i32 noundef %call) #8
  %cmp = icmp eq %struct.engine_st* %call1, null
  br i1 %cmp, label %cleanup22, label %if.end

if.end:                                           ; preds = %if.then
  %call3 = tail call i32 @ENGINE_finish(%struct.engine_st* noundef nonnull %call1) #8
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %call5 = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #8
  %cmp6 = icmp eq %struct.evp_pkey_st* %call5, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 405, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.x509_pubkey_decode, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup22

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @EVP_PKEY_set_type(%struct.evp_pkey_st* noundef nonnull %call5, i32 noundef %call) #8
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %error.sink.split, label %if.end12

if.end12:                                         ; preds = %if.end8
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %call5, i64 0, i32 2
  %2 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !19
  %pub_decode = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %2, i64 0, i32 5
  %3 = load i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)** %pub_decode, align 8, !tbaa !41
  %tobool13.not = icmp eq i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)* %3, null
  br i1 %tobool13.not, label %error.sink.split, label %if.then14

if.then14:                                        ; preds = %if.end12
  %call17 = tail call i32 %3(%struct.evp_pkey_st* noundef nonnull %call5, %struct.X509_pubkey_st* noundef nonnull %key) #8
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %error, label %if.end21

if.end21:                                         ; preds = %if.then14
  store %struct.evp_pkey_st* %call5, %struct.evp_pkey_st** %ppkey, align 8, !tbaa !4
  br label %cleanup22

error.sink.split:                                 ; preds = %if.end12, %if.end8
  %.sink37 = phi i32 [ 410, %if.end8 ], [ 423, %if.end12 ]
  %.sink = phi i32 [ 111, %if.end8 ], [ 124, %if.end12 ]
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink37, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.x509_pubkey_decode, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef %.sink, i8* noundef null) #8
  br label %error

error:                                            ; preds = %error.sink.split, %if.then14
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call5) #8
  br label %cleanup22

cleanup22:                                        ; preds = %if.then, %error, %if.end21, %if.then7
  %retval.1 = phi i32 [ -1, %if.then7 ], [ 1, %if.end21 ], [ 0, %error ], [ 0, %if.then ]
  ret i32 %retval.1
}

declare i32 @ERR_clear_last_mark() local_unnamed_addr #2

declare i8* @CRYPTO_memdup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2txt(i8* noundef, i32 noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.ossl_decoder_ctx_st* @OSSL_DECODER_CTX_new_for_pkey(%struct.evp_pkey_st** noundef, i8* noundef, i8* noundef, i8* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OSSL_DECODER_from_data(%struct.ossl_decoder_ctx_st* noundef, i8** noundef, i64* noundef) local_unnamed_addr #2

declare i32 @ERR_pop_to_mark() local_unnamed_addr #2

declare void @OSSL_DECODER_CTX_free(%struct.ossl_decoder_ctx_st* noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare %struct.engine_st* @ENGINE_get_pkey_meth_engine(i32 noundef) local_unnamed_addr #2

declare i32 @ENGINE_finish(%struct.engine_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_set_type(%struct.evp_pkey_st* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @X509_ALGOR_free(%struct.X509_algor_st* noundef) local_unnamed_addr #2

declare void @ASN1_BIT_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }

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
!8 = !{!9, !5, i64 24}
!9 = !{!"X509_pubkey_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !10, i64 40}
!10 = !{!"int", !6, i64 0}
!11 = !{!9, !5, i64 32}
!12 = !{!9, !5, i64 0}
!13 = !{!9, !5, i64 8}
!14 = !{!15, !5, i64 8}
!15 = !{!"asn1_string_st", !10, i64 0, !10, i64 4, !5, i64 8, !16, i64 16}
!16 = !{!"long", !6, i64 0}
!17 = !{!15, !10, i64 0}
!18 = !{!9, !5, i64 16}
!19 = !{!20, !5, i64 8}
!20 = !{!"evp_pkey_st", !10, i64 0, !10, i64 4, !5, i64 8, !5, i64 16, !5, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !5, i64 56, !5, i64 64, !10, i64 72, !10, i64 76, !21, i64 80, !5, i64 96, !5, i64 104, !16, i64 112, !5, i64 120, !16, i64 128, !22, i64 136}
!21 = !{!"crypto_ex_data_st", !5, i64 0, !5, i64 8}
!22 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8}
!23 = !{!24, !5, i64 40}
!24 = !{!"evp_pkey_asn1_method_st", !10, i64 0, !10, i64 4, !16, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !5, i64 232, !5, i64 240, !5, i64 248, !5, i64 256, !5, i64 264, !5, i64 272, !5, i64 280, !5, i64 288, !5, i64 296, !5, i64 304, !5, i64 312}
!25 = !{!20, !5, i64 96}
!26 = !{!16, !16, i64 0}
!27 = !{!28, !16, i64 0}
!28 = !{!"buf_mem_st", !16, i64 0, !5, i64 8, !16, i64 16, !16, i64 24}
!29 = !{!28, !5, i64 8}
!30 = !{!6, !6, i64 0}
!31 = !{!15, !16, i64 16}
!32 = !{!33, !5, i64 0}
!33 = !{!"X509_algor_st", !5, i64 0, !5, i64 8}
!34 = !{!10, !10, i64 0}
!35 = !{!36, !5, i64 80}
!36 = !{!"x509_st", !37, i64 0, !33, i64 136, !15, i64 152, !40, i64 176, !6, i64 192, !21, i64 200, !16, i64 216, !16, i64 224, !10, i64 232, !10, i64 236, !10, i64 240, !10, i64 244, !5, i64 248, !5, i64 256, !5, i64 264, !5, i64 272, !5, i64 280, !5, i64 288, !5, i64 296, !5, i64 304, !6, i64 312, !5, i64 336, !5, i64 344, !10, i64 352, !5, i64 360, !5, i64 368, !5, i64 376}
!37 = !{!"x509_cinf_st", !5, i64 0, !15, i64 8, !33, i64 32, !5, i64 48, !38, i64 56, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !39, i64 112}
!38 = !{!"X509_val_st", !5, i64 0, !5, i64 8}
!39 = !{!"ASN1_ENCODING_st", !5, i64 0, !16, i64 8, !10, i64 16}
!40 = !{!"x509_sig_info_st", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12}
!41 = !{!24, !5, i64 32}
