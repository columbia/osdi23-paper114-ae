; ModuleID = 'crypto/pem/pem_pkey.c'
source_filename = "crypto/pem/pem_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon }
%struct.evp_pkey_asn1_method_st = type { i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* }
%struct.X509_pubkey_st = type opaque
%struct.pkcs8_priv_key_info_st = type { %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.asn1_pctx_st = type { i64, i64, i64, i64, i64 }
%struct.evp_md_ctx_st = type opaque
%struct.ASN1_ITEM_st = type opaque
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
%struct.bio_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_passphrase_data_st = type { i32, %union.anon.0, i8, i8*, i64 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i8*, i64 }
%struct.bio_method_st = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_cipher_ctx_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.ossl_encoder_ctx_st = type opaque
%struct.ossl_decoder_ctx_st = type opaque
%struct.X509_sig_st = type { %struct.X509_algor_st*, %struct.asn1_string_st* }

@.str = private unnamed_addr constant [22 x i8] c"crypto/pem/pem_pkey.c\00", align 1
@__func__.PEM_read_PUBKEY_ex = private unnamed_addr constant [19 x i8] c"PEM_read_PUBKEY_ex\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"PEM\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"PrivateKeyInfo\00", align 1
@__func__.PEM_write_bio_PrivateKey_traditional = private unnamed_addr constant [37 x i8] c"PEM_write_bio_PrivateKey_traditional\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"%s PRIVATE KEY\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"type-specific\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"%s PARAMETERS\00", align 1
@__func__.PEM_read_PrivateKey_ex = private unnamed_addr constant [23 x i8] c"PEM_read_PrivateKey_ex\00", align 1
@__func__.PEM_write_PrivateKey_ex = private unnamed_addr constant [24 x i8] c"PEM_write_PrivateKey_ex\00", align 1
@__func__.pem_read_bio_key_decoder = private unnamed_addr constant [25 x i8] c"pem_read_bio_key_decoder\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"ANY PRIVATE KEY\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"PARAMETERS\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"PUBLIC KEY\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"PRIVATE KEY\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"ENCRYPTED PRIVATE KEY\00", align 1
@__func__.pem_read_bio_key_legacy = private unnamed_addr constant [24 x i8] c"pem_read_bio_key_legacy\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @PEM_read_bio_PUBKEY_ex(%struct.bio_st* noundef %bp, %struct.evp_pkey_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.evp_pkey_st* @pem_read_bio_key(%struct.bio_st* noundef %bp, %struct.evp_pkey_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, i32 noundef 134) #6
  ret %struct.evp_pkey_st* %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_st* @pem_read_bio_key(%struct.bio_st* noundef %bp, %struct.evp_pkey_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, i32 noundef %selection) unnamed_addr #0 {
entry:
  %pwdata = alloca %struct.ossl_passphrase_data_st, align 8
  %0 = bitcast %struct.ossl_passphrase_data_st* %pwdata to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %call = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %bp, i32 noundef 133, i64 noundef 0, i8* noundef null) #8
  %1 = and i64 %call, 2147483648
  %cmp.not = icmp eq i64 %1, 0
  br i1 %cmp.not, label %if.end10, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call %struct.bio_method_st* @BIO_f_readbuffer() #8
  %call3 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call2) #8
  %cmp4 = icmp eq %struct.bio_st* %call3, null
  br i1 %cmp4, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %call7 = tail call %struct.bio_st* @BIO_push(%struct.bio_st* noundef nonnull %call3, %struct.bio_st* noundef %bp) #8
  %call8 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call7, i32 noundef 133, i64 noundef 0, i8* noundef null) #8
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry
  %bp.addr.0 = phi %struct.bio_st* [ %call7, %if.end ], [ %bp, %entry ]
  %new_bio.0 = phi %struct.bio_st* [ %call3, %if.end ], [ null, %entry ]
  %pos.0 = phi i64 [ %call8, %if.end ], [ %call, %entry ]
  %cmp11 = icmp eq i32 (i8*, i32, i32, i8*)* %cb, null
  %spec.store.select = select i1 %cmp11, i32 (i8*, i32, i32, i8*)* @PEM_def_callback, i32 (i8*, i32, i32, i8*)* %cb
  %call15 = call i32 @ossl_pw_set_pem_password_cb(%struct.ossl_passphrase_data_st* noundef nonnull %pwdata, i32 (i8*, i32, i32, i8*)* noundef %spec.store.select, i8* noundef %u) #8
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end10
  %call16 = call i32 @ossl_pw_enable_passphrase_caching(%struct.ossl_passphrase_data_st* noundef nonnull %pwdata) #8
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %if.end19

if.end19:                                         ; preds = %lor.lhs.false
  %call20 = call i32 @ERR_set_mark() #8
  %call21 = call fastcc %struct.evp_pkey_st* @pem_read_bio_key_decoder(%struct.bio_st* noundef %bp.addr.0, %struct.evp_pkey_st** noundef %x, i8* noundef nonnull %0, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, i32 noundef %selection) #6
  %cmp22 = icmp eq %struct.evp_pkey_st* %call21, null
  br i1 %cmp22, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end19
  %sext = shl i64 %pos.0, 32
  %conv24 = ashr exact i64 %sext, 32
  %call25 = call i64 @BIO_ctrl(%struct.bio_st* noundef %bp.addr.0, i32 noundef 128, i64 noundef %conv24, i8* noundef null) #8
  %2 = and i64 %call25, 2147483648
  %cmp27.not = icmp eq i64 %2, 0
  br i1 %cmp27.not, label %lor.lhs.false29, label %if.then33

lor.lhs.false29:                                  ; preds = %land.lhs.true
  %call30 = call fastcc %struct.evp_pkey_st* @pem_read_bio_key_legacy(%struct.bio_st* noundef %bp.addr.0, %struct.evp_pkey_st** noundef %x, i8* noundef nonnull %0, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, i32 noundef %selection) #6
  %cmp31 = icmp eq %struct.evp_pkey_st* %call30, null
  br i1 %cmp31, label %if.then33, label %if.else

if.then33:                                        ; preds = %lor.lhs.false29, %land.lhs.true
  %call34 = call i32 @ERR_clear_last_mark() #8
  br label %err

if.else:                                          ; preds = %lor.lhs.false29, %if.end19
  %ret.1 = phi %struct.evp_pkey_st* [ %call30, %lor.lhs.false29 ], [ %call21, %if.end19 ]
  %call35 = call i32 @ERR_pop_to_mark() #8
  br label %err

err:                                              ; preds = %if.then33, %if.else, %if.end10, %lor.lhs.false
  %ret.2 = phi %struct.evp_pkey_st* [ null, %if.then33 ], [ %ret.1, %if.else ], [ null, %lor.lhs.false ], [ null, %if.end10 ]
  call void @ossl_pw_clear_passphrase_data(%struct.ossl_passphrase_data_st* noundef nonnull %pwdata) #8
  %cmp37.not = icmp eq %struct.bio_st* %new_bio.0, null
  br i1 %cmp37.not, label %cleanup, label %if.then39

if.then39:                                        ; preds = %err
  %call40 = call %struct.bio_st* @BIO_pop(%struct.bio_st* noundef nonnull %new_bio.0) #8
  %call41 = call i32 @BIO_free(%struct.bio_st* noundef nonnull %new_bio.0) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then39, %if.then
  %retval.0 = phi %struct.evp_pkey_st* [ null, %if.then ], [ %ret.2, %if.then39 ], [ %ret.2, %err ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #7
  ret %struct.evp_pkey_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @PEM_read_bio_PUBKEY(%struct.bio_st* noundef %bp, %struct.evp_pkey_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_pkey_st* @PEM_read_bio_PUBKEY_ex(%struct.bio_st* noundef %bp, %struct.evp_pkey_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #6
  ret %struct.evp_pkey_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @PEM_read_PUBKEY_ex(%struct._IO_FILE* noundef %fp, %struct.evp_pkey_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_file() #8
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #8
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 277, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.PEM_read_PUBKEY_ex, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 524295, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast %struct._IO_FILE* %fp to i8*
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 106, i64 noundef 0, i8* noundef %0) #8
  %call3 = tail call %struct.evp_pkey_st* @PEM_read_bio_PUBKEY_ex(%struct.bio_st* noundef nonnull %call1, %struct.evp_pkey_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #6
  %call4 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.evp_pkey_st* [ null, %if.then ], [ %call3, %if.end ]
  ret %struct.evp_pkey_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

declare %struct.bio_method_st* @BIO_s_file() local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @PEM_read_PUBKEY(%struct._IO_FILE* noundef %fp, %struct.evp_pkey_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_pkey_st* @PEM_read_PUBKEY_ex(%struct._IO_FILE* noundef %fp, %struct.evp_pkey_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #6
  ret %struct.evp_pkey_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @PEM_read_bio_PrivateKey_ex(%struct.bio_st* noundef %bp, %struct.evp_pkey_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.evp_pkey_st* @pem_read_bio_key(%struct.bio_st* noundef %bp, %struct.evp_pkey_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, i32 noundef 135) #6
  ret %struct.evp_pkey_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @PEM_read_bio_PrivateKey(%struct.bio_st* noundef %bp, %struct.evp_pkey_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_pkey_st* @PEM_read_bio_PrivateKey_ex(%struct.bio_st* noundef %bp, %struct.evp_pkey_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #6
  ret %struct.evp_pkey_st* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_bio_PrivateKey_ex(%struct.bio_st* noundef %out, %struct.evp_pkey_st* noundef %x, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, %struct.ossl_lib_ctx_st* nocapture readnone %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef %x, i32 noundef 135, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* noundef %propq) #8
  %call1 = tail call i32 @OSSL_ENCODER_CTX_get_num_encoders(%struct.ossl_encoder_ctx_st* noundef %call) #8
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef %call) #8
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %x, i64 0, i32 2
  %0 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !4
  %cmp38 = icmp eq %struct.evp_pkey_asn1_method_st* %0, null
  br i1 %cmp38, label %if.then43, label %lor.lhs.false

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq i8* %kstr, null
  %cmp3 = icmp eq i32 (i8*, i32, i32, i8*)* %cb, null
  %or.cond = and i1 %cmp2, %cmp3
  br i1 %or.cond, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.end
  %cmp5.not = icmp eq i8* %u, null
  br i1 %cmp5.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.then4
  %call7 = tail call i64 @strlen(i8* noundef nonnull %u) #9
  %conv = trunc i64 %call7 to i32
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.then6, %if.end
  %cb.addr.0 = phi i32 (i8*, i32, i32, i8*)* [ null, %if.then6 ], [ %cb, %if.end ], [ @PEM_def_callback, %if.then4 ]
  %klen.addr.0 = phi i32 [ %conv, %if.then6 ], [ %klen, %if.end ], [ %klen, %if.then4 ]
  %kstr.addr.0 = phi i8* [ %u, %if.then6 ], [ %kstr, %if.end ], [ null, %if.then4 ]
  %cmp10.not = icmp eq %struct.evp_cipher_st* %enc, null
  br i1 %cmp10.not, label %if.end36, label %if.then12

if.then12:                                        ; preds = %if.end9
  %call13 = tail call i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef nonnull %enc) #8
  %call14 = tail call i32 @OSSL_ENCODER_CTX_set_cipher(%struct.ossl_encoder_ctx_st* noundef %call, i8* noundef %call13, i8* noundef null) #8
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.then35, label %if.then15

if.then15:                                        ; preds = %if.then12
  %cmp16.not = icmp eq i8* %kstr.addr.0, null
  br i1 %cmp16.not, label %if.else23, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %if.then15
  %conv19 = sext i32 %klen.addr.0 to i64
  %call20 = tail call i32 @OSSL_ENCODER_CTX_set_passphrase(%struct.ossl_encoder_ctx_st* noundef %call, i8* noundef nonnull %kstr.addr.0, i64 noundef %conv19) #8
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then35, label %if.else23

if.else23:                                        ; preds = %land.lhs.true18, %if.then15
  %cmp24.not = icmp eq i32 (i8*, i32, i32, i8*)* %cb.addr.0, null
  br i1 %cmp24.not, label %if.end36, label %land.lhs.true26

land.lhs.true26:                                  ; preds = %if.else23
  %call27 = tail call i32 @OSSL_ENCODER_CTX_set_pem_password_cb(%struct.ossl_encoder_ctx_st* noundef %call, i32 (i8*, i32, i32, i8*)* noundef nonnull %cb.addr.0, i8* noundef %u) #8
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then35, label %if.end36

if.then35:                                        ; preds = %land.lhs.true18, %if.then12, %land.lhs.true26
  tail call void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef %call) #8
  br label %cleanup

if.end36:                                         ; preds = %if.end9, %if.else23, %land.lhs.true26
  %call37 = tail call i32 @OSSL_ENCODER_to_bio(%struct.ossl_encoder_ctx_st* noundef %call, %struct.bio_st* noundef %out) #8
  tail call void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef %call) #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %priv_encode = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %0, i64 0, i32 10
  %1 = load i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)** %priv_encode, align 8, !tbaa !13
  %cmp41.not = icmp eq i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)* %1, null
  br i1 %cmp41.not, label %if.end45, label %if.then43

if.then43:                                        ; preds = %lor.lhs.false, %if.then
  %call44 = tail call i32 @PEM_write_bio_PKCS8PrivateKey(%struct.bio_st* noundef %out, %struct.evp_pkey_st* noundef nonnull %x, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #8
  br label %cleanup

if.end45:                                         ; preds = %lor.lhs.false
  %call46 = tail call i32 @PEM_write_bio_PrivateKey_traditional(%struct.bio_st* noundef %out, %struct.evp_pkey_st* noundef nonnull %x, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then43, %if.end36, %if.then35
  %retval.0 = phi i32 [ %call44, %if.then43 ], [ %call46, %if.end45 ], [ %call37, %if.end36 ], [ 0, %if.then35 ]
  ret i32 %retval.0
}

declare %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OSSL_ENCODER_CTX_get_num_encoders(%struct.ossl_encoder_ctx_st* noundef) local_unnamed_addr #2

declare void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #3

declare i32 @PEM_def_callback(i8* noundef, i32 noundef, i32 noundef, i8* noundef) #2

declare i32 @OSSL_ENCODER_CTX_set_cipher(%struct.ossl_encoder_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare i32 @OSSL_ENCODER_CTX_set_passphrase(%struct.ossl_encoder_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @OSSL_ENCODER_CTX_set_pem_password_cb(%struct.ossl_encoder_ctx_st* noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OSSL_ENCODER_to_bio(%struct.ossl_encoder_ctx_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare i32 @PEM_write_bio_PKCS8PrivateKey(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i32 noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_bio_PrivateKey_traditional(%struct.bio_st* noundef %bp, %struct.evp_pkey_st* noundef %x, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %pem_str = alloca [80 x i8], align 16
  %copy = alloca %struct.evp_pkey_st*, align 8
  %0 = getelementptr inbounds [80 x i8], [80 x i8]* %pem_str, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #7
  %1 = bitcast %struct.evp_pkey_st** %copy to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %copy, align 8, !tbaa !15
  %ptr = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %x, i64 0, i32 5, i32 0
  %2 = load i8*, i8** %ptr, align 8, !tbaa !16
  %cmp.not = icmp eq i8* %2, null
  br i1 %cmp.not, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %entry
  %keydata = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %x, i64 0, i32 14
  %3 = load i8*, i8** %keydata, align 8, !tbaa !17
  %cmp1.not = icmp eq i8* %3, null
  br i1 %cmp1.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %x, i64 0, i32 13
  %4 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !18
  %cmp2.not = icmp eq %struct.evp_keymgmt_st* %4, null
  br i1 %cmp2.not, label %if.end, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call = call i32 @evp_pkey_copy_downgraded(%struct.evp_pkey_st** noundef nonnull %copy, %struct.evp_pkey_st* noundef nonnull %x) #8
  %tobool.not = icmp eq i32 %call, 0
  %5 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %copy, align 8
  %spec.select = select i1 %tobool.not, %struct.evp_pkey_st* %x, %struct.evp_pkey_st* %5
  br label %if.end

if.end:                                           ; preds = %land.lhs.true3, %land.lhs.true, %lor.lhs.false
  %x.addr.0 = phi %struct.evp_pkey_st* [ %x, %land.lhs.true ], [ %x, %lor.lhs.false ], [ %spec.select, %land.lhs.true3 ]
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %x.addr.0, i64 0, i32 2
  %6 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !4
  %cmp4 = icmp eq %struct.evp_pkey_asn1_method_st* %6, null
  br i1 %cmp4, label %if.then8, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %if.end
  %old_priv_encode = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %6, i64 0, i32 25
  %7 = load i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*, i8**)** %old_priv_encode, align 8, !tbaa !19
  %cmp7 = icmp eq i32 (%struct.evp_pkey_st*, i8**)* %7, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false5, %if.end
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 345, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.PEM_write_bio_PrivateKey_traditional, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 110, i8* noundef null) #8
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false5
  %pem_str11 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %6, i64 0, i32 3
  %8 = load i8*, i8** %pem_str11, align 8, !tbaa !20
  %call12 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 80, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* noundef %8) #8
  %9 = bitcast %struct.evp_pkey_st* %x.addr.0 to i8*
  %call14 = call i32 @PEM_ASN1_write_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.evp_pkey_st*, i8**)* @i2d_PrivateKey to i32 (i8*, i8**)*), i8* noundef nonnull %0, %struct.bio_st* noundef %bp, i8* noundef %9, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #8
  %10 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %copy, align 8, !tbaa !15
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %10) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then8
  %retval.0 = phi i32 [ 0, %if.then8 ], [ %call14, %if.end9 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_bio_PrivateKey(%struct.bio_st* noundef %out, %struct.evp_pkey_st* noundef %x, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @PEM_write_bio_PrivateKey_ex(%struct.bio_st* noundef %out, %struct.evp_pkey_st* noundef %x, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, %struct.ossl_lib_ctx_st* undef, i8* noundef null) #6
  ret i32 %call
}

declare i32 @evp_pkey_copy_downgraded(%struct.evp_pkey_st** noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @PEM_ASN1_write_bio(i32 (i8*, i8**)* noundef, i8* noundef, %struct.bio_st* noundef, i8* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i32 noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @i2d_PrivateKey(%struct.evp_pkey_st* noundef, i8** noundef) #2

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @PEM_read_bio_Parameters_ex(%struct.bio_st* noundef %bp, %struct.evp_pkey_st** noundef %x, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.evp_pkey_st* @pem_read_bio_key(%struct.bio_st* noundef %bp, %struct.evp_pkey_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, i32 noundef 132) #6
  ret %struct.evp_pkey_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @PEM_read_bio_Parameters(%struct.bio_st* noundef %bp, %struct.evp_pkey_st** noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_pkey_st* @PEM_read_bio_Parameters_ex(%struct.bio_st* noundef %bp, %struct.evp_pkey_st** noundef %x, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #6
  ret %struct.evp_pkey_st* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_bio_Parameters(%struct.bio_st* noundef %out, %struct.evp_pkey_st* noundef %x) local_unnamed_addr #0 {
entry:
  %pem_str = alloca [80 x i8], align 16
  %0 = getelementptr inbounds [80 x i8], [80 x i8]* %pem_str, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #7
  %call = tail call %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef %x, i32 noundef 132, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* noundef null) #8
  %call1 = tail call i32 @OSSL_ENCODER_CTX_get_num_encoders(%struct.ossl_encoder_ctx_st* noundef %call) #8
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef %call) #8
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %x, i64 0, i32 2
  %1 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !4
  %tobool.not = icmp eq %struct.evp_pkey_asn1_method_st* %1, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @OSSL_ENCODER_to_bio(%struct.ossl_encoder_ctx_st* noundef %call, %struct.bio_st* noundef %out) #8
  tail call void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef %call) #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %param_encode = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %1, i64 0, i32 16
  %2 = load i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*, i8**)** %param_encode, align 8, !tbaa !21
  %tobool4.not = icmp eq i32 (%struct.evp_pkey_st*, i8**)* %2, null
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %lor.lhs.false
  %pem_str8 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %1, i64 0, i32 3
  %3 = load i8*, i8** %pem_str8, align 8, !tbaa !20
  %call9 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 80, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* noundef %3) #8
  %4 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !4
  %param_encode11 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %4, i64 0, i32 16
  %5 = bitcast i32 (%struct.evp_pkey_st*, i8**)** %param_encode11 to i32 (i8*, i8**)**
  %6 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** %5, align 8, !tbaa !21
  %7 = bitcast %struct.evp_pkey_st* %x to i8*
  %call13 = call i32 @PEM_ASN1_write_bio(i32 (i8*, i8**)* noundef %6, i8* noundef nonnull %0, %struct.bio_st* noundef %out, i8* noundef %7, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %lor.lhs.false, %if.end6, %if.end
  %retval.0 = phi i32 [ %call13, %if.end6 ], [ %call2, %if.end ], [ 0, %lor.lhs.false ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @PEM_read_PrivateKey_ex(%struct._IO_FILE* noundef %fp, %struct.evp_pkey_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_file() #8
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #8
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 393, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.PEM_read_PrivateKey_ex, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 524295, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast %struct._IO_FILE* %fp to i8*
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 106, i64 noundef 0, i8* noundef %0) #8
  %call3 = tail call %struct.evp_pkey_st* @PEM_read_bio_PrivateKey_ex(%struct.bio_st* noundef nonnull %call1, %struct.evp_pkey_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #6
  %call4 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.evp_pkey_st* [ null, %if.then ], [ %call3, %if.end ]
  ret %struct.evp_pkey_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @PEM_read_PrivateKey(%struct._IO_FILE* noundef %fp, %struct.evp_pkey_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_pkey_st* @PEM_read_PrivateKey_ex(%struct._IO_FILE* noundef %fp, %struct.evp_pkey_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #6
  ret %struct.evp_pkey_st* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_PrivateKey_ex(%struct._IO_FILE* noundef %out, %struct.evp_pkey_st* noundef %x, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, %struct.ossl_lib_ctx_st* nocapture readnone %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_st* @BIO_new_fp(%struct._IO_FILE* noundef %out, i32 noundef 0) #8
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 414, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.PEM_write_PrivateKey_ex, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 524295, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @PEM_write_bio_PrivateKey_ex(%struct.bio_st* noundef nonnull %call, %struct.evp_pkey_st* noundef %x, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, %struct.ossl_lib_ctx_st* undef, i8* noundef %propq) #6
  %call2 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call1, %if.end ]
  ret i32 %retval.0
}

declare %struct.bio_st* @BIO_new_fp(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_PrivateKey(%struct._IO_FILE* noundef %out, %struct.evp_pkey_st* noundef %x, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @PEM_write_PrivateKey_ex(%struct._IO_FILE* noundef %out, %struct.evp_pkey_st* noundef %x, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, %struct.ossl_lib_ctx_st* undef, i8* noundef null) #6
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare %struct.bio_method_st* @BIO_f_readbuffer() local_unnamed_addr #2

declare %struct.bio_st* @BIO_push(%struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare i32 @ossl_pw_set_pem_password_cb(%struct.ossl_passphrase_data_st* noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @ossl_pw_enable_passphrase_caching(%struct.ossl_passphrase_data_st* noundef) local_unnamed_addr #2

declare i32 @ERR_set_mark() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_st* @pem_read_bio_key_decoder(%struct.bio_st* noundef %bp, %struct.evp_pkey_st** noundef %x, i8* noundef %u, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, i32 noundef %selection) unnamed_addr #0 {
entry:
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !15
  %call = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %bp, i32 noundef 133, i64 noundef 0, i8* noundef null) #8
  %conv = trunc i64 %call to i32
  %cmp = icmp slt i32 %conv, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call %struct.ossl_decoder_ctx_st* @OSSL_DECODER_CTX_new_for_pkey(%struct.evp_pkey_st** noundef nonnull %pkey, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* noundef null, i8* noundef null, i32 noundef %selection, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #8
  %cmp3 = icmp eq %struct.ossl_decoder_ctx_st* %call2, null
  br i1 %cmp3, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %call11 = call i32 @OSSL_DECODER_CTX_set_pem_password_cb(%struct.ossl_decoder_ctx_st* noundef nonnull %call2, i32 (i8*, i32, i32, i8*)* noundef nonnull @ossl_pw_pem_password, i8* noundef %u) #8
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %err, label %if.end13

if.end13:                                         ; preds = %if.end6
  %call14 = call i32 @ERR_set_mark() #8
  %call151 = call i32 @OSSL_DECODER_from_bio(%struct.ossl_decoder_ctx_st* noundef nonnull %call2, %struct.bio_st* noundef %bp) #8
  %tobool16.not2 = icmp eq i32 %call151, 0
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8
  %cmp173 = icmp eq %struct.evp_pkey_st* %1, null
  %2 = select i1 %tobool16.not2, i1 true, i1 %cmp173
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %if.end13, %if.then36
  %pos.04 = phi i32 [ %conv24, %if.then36 ], [ %conv, %if.end13 ]
  %call19 = call i64 @BIO_ctrl(%struct.bio_st* noundef %bp, i32 noundef 2, i64 noundef 0, i8* noundef null) #8
  %conv20 = trunc i64 %call19 to i32
  %cmp21.not = icmp eq i32 %conv20, 0
  br i1 %cmp21.not, label %lor.lhs.false, label %if.then30

lor.lhs.false:                                    ; preds = %while.body
  %call23 = call i64 @BIO_ctrl(%struct.bio_st* noundef %bp, i32 noundef 133, i64 noundef 0, i8* noundef null) #8
  %conv24 = trunc i64 %call23 to i32
  %cmp25 = icmp sgt i32 %conv24, -1
  %cmp28.not = icmp slt i32 %pos.04, %conv24
  %or.cond = select i1 %cmp25, i1 %cmp28.not, i1 false
  br i1 %or.cond, label %if.else, label %if.then30

if.then30:                                        ; preds = %lor.lhs.false, %while.body
  %call31 = call i32 @ERR_clear_last_mark() #8
  br label %err

if.else:                                          ; preds = %lor.lhs.false
  %call32 = call i64 @ERR_peek_error() #8
  %call33 = call fastcc i32 @ERR_GET_REASON(i64 noundef %call32) #6
  %cmp34 = icmp eq i32 %call33, 524556
  br i1 %cmp34, label %if.then36, label %if.else39

if.then36:                                        ; preds = %if.else
  %call37 = call i32 @ERR_pop_to_mark() #8
  %call38 = call i32 @ERR_set_mark() #8
  %call15 = call i32 @OSSL_DECODER_from_bio(%struct.ossl_decoder_ctx_st* noundef nonnull %call2, %struct.bio_st* noundef %bp) #8
  %tobool16.not = icmp eq i32 %call15, 0
  %3 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8
  %cmp17 = icmp eq %struct.evp_pkey_st* %3, null
  %4 = select i1 %tobool16.not, i1 true, i1 %cmp17
  br i1 %4, label %while.body, label %while.end, !llvm.loop !22

if.else39:                                        ; preds = %if.else
  %call40 = call i32 @ERR_clear_last_mark() #8
  br label %err

while.end:                                        ; preds = %if.then36, %if.end13
  %call43 = call i32 @ERR_pop_to_mark() #8
  %5 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !15
  %call44 = call i32 @evp_keymgmt_util_has(%struct.evp_pkey_st* noundef %5, i32 noundef %selection) #8
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then46, label %if.end47

if.then46:                                        ; preds = %while.end
  %6 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !15
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %6) #8
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !15
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.pem_read_bio_key_decoder, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 126, i8* noundef null) #8
  br label %err

if.end47:                                         ; preds = %while.end
  %cmp48.not = icmp eq %struct.evp_pkey_st** %x, null
  br i1 %cmp48.not, label %err, label %if.then50

if.then50:                                        ; preds = %if.end47
  %7 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %x, align 8, !tbaa !15
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %7) #8
  %8 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !15
  store %struct.evp_pkey_st* %8, %struct.evp_pkey_st** %x, align 8, !tbaa !15
  br label %err

err:                                              ; preds = %if.end47, %if.then50, %if.end6, %if.then46, %if.else39, %if.then30
  call void @OSSL_DECODER_CTX_free(%struct.ossl_decoder_ctx_st* noundef nonnull %call2) #8
  %9 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %err
  %retval.0 = phi %struct.evp_pkey_st* [ %9, %err ], [ null, %entry ], [ null, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret %struct.evp_pkey_st* %retval.0
}

declare i32 @ossl_pw_pem_password(i8* noundef, i32 noundef, i32 noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_st* @pem_read_bio_key_legacy(%struct.bio_st* noundef %bp, %struct.evp_pkey_st** noundef %x, i8* noundef %u, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, i32 noundef %selection) unnamed_addr #0 {
entry:
  %nm = alloca i8*, align 8
  %p = alloca i8*, align 8
  %data = alloca i8*, align 8
  %len = alloca i64, align 8
  %psbuf = alloca [1024 x i8], align 16
  %0 = bitcast i8** %nm to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store i8* null, i8** %nm, align 8, !tbaa !15
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  store i8* null, i8** %p, align 8, !tbaa !15
  %2 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7
  store i8* null, i8** %data, align 8, !tbaa !15
  %3 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #7
  %call = tail call i32 @ERR_set_mark() #8
  %and = and i32 %selection, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 @PEM_bytes_read_bio_secmem(i8** noundef nonnull %data, i64* noundef nonnull %len, i8** noundef nonnull %nm, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), %struct.bio_st* noundef %bp, i32 (i8*, i32, i32, i8*)* noundef nonnull @ossl_pw_pem_password, i8* noundef %u) #8
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end14

if.then3:                                         ; preds = %if.then
  %call4 = call i32 @ERR_pop_to_mark() #8
  br label %cleanup125

if.else:                                          ; preds = %entry
  %and5 = and i32 %selection, 2
  %tobool6.not = icmp eq i32 %and5, 0
  %spec.store.select = select i1 %tobool6.not, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0)
  %call9 = call i32 @PEM_bytes_read_bio(i8** noundef nonnull %data, i64* noundef nonnull %len, i8** noundef nonnull %nm, i8* noundef %spec.store.select, %struct.bio_st* noundef %bp, i32 (i8*, i32, i32, i8*)* noundef nonnull @ossl_pw_pem_password, i8* noundef %u) #8
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.else
  %call12 = call i32 @ERR_pop_to_mark() #8
  br label %cleanup125

if.end14:                                         ; preds = %if.else, %if.then
  %call15 = call i32 @ERR_clear_last_mark() #8
  %4 = load i8*, i8** %data, align 8, !tbaa !15
  store i8* %4, i8** %p, align 8, !tbaa !15
  %5 = load i8*, i8** %nm, align 8, !tbaa !15
  %call16 = call i32 @strcmp(i8* noundef %5, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0)) #9
  %cmp = icmp eq i32 %call16, 0
  br i1 %cmp, label %if.then17, label %if.else29

if.then17:                                        ; preds = %if.end14
  %6 = load i64, i64* %len, align 8, !tbaa !24
  %call18 = call %struct.pkcs8_priv_key_info_st* @d2i_PKCS8_PRIV_KEY_INFO(%struct.pkcs8_priv_key_info_st** noundef null, i8** noundef nonnull %p, i64 noundef %6) #8
  %cmp19 = icmp eq %struct.pkcs8_priv_key_info_st* %call18, null
  br i1 %cmp19, label %land.lhs.true, label %if.end21

if.end21:                                         ; preds = %if.then17
  %call22 = call %struct.evp_pkey_st* @evp_pkcs82pkey_legacy(%struct.pkcs8_priv_key_info_st* noundef nonnull %call18, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #8
  %cmp23.not = icmp eq %struct.evp_pkey_st** %x, null
  br i1 %cmp23.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end21
  %7 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %x, align 8, !tbaa !15
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %7) #8
  store %struct.evp_pkey_st* %call22, %struct.evp_pkey_st** %x, align 8, !tbaa !15
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end21
  call void @PKCS8_PRIV_KEY_INFO_free(%struct.pkcs8_priv_key_info_st* noundef nonnull %call18) #8
  br label %p8err

if.else29:                                        ; preds = %if.end14
  %call30 = call i32 @strcmp(i8* noundef %5, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0)) #9
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then32, label %if.else66

if.then32:                                        ; preds = %if.else29
  %8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %psbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %8) #7
  %9 = load i64, i64* %len, align 8, !tbaa !24
  %call34 = call %struct.X509_sig_st* @d2i_X509_SIG(%struct.X509_sig_st** noundef null, i8** noundef nonnull %p, i64 noundef %9) #8
  %cmp35 = icmp eq %struct.X509_sig_st* %call34, null
  br i1 %cmp35, label %cleanup60.thread, label %if.then39

if.then39:                                        ; preds = %if.then32
  %call40 = call i32 @ossl_pw_pem_password(i8* noundef nonnull %8, i32 noundef 1024, i32 noundef 0, i8* noundef %u) #8
  %cmp45 = icmp slt i32 %call40, 0
  br i1 %cmp45, label %cleanup60, label %if.end47

if.end47:                                         ; preds = %if.then39
  %call49 = call %struct.pkcs8_priv_key_info_st* @PKCS8_decrypt(%struct.X509_sig_st* noundef nonnull %call34, i8* noundef nonnull %8, i32 noundef %call40) #8
  call void @X509_SIG_free(%struct.X509_sig_st* noundef nonnull %call34) #8
  %conv9 = zext i32 %call40 to i64
  call void @OPENSSL_cleanse(i8* noundef nonnull %8, i64 noundef %conv9) #8
  %cmp51 = icmp eq %struct.pkcs8_priv_key_info_st* %call49, null
  br i1 %cmp51, label %cleanup60.thread, label %if.end54

if.end54:                                         ; preds = %if.end47
  %call55 = call %struct.evp_pkey_st* @evp_pkcs82pkey_legacy(%struct.pkcs8_priv_key_info_st* noundef nonnull %call49, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #8
  %cmp56.not = icmp eq %struct.evp_pkey_st** %x, null
  br i1 %cmp56.not, label %if.end59, label %if.then58

if.then58:                                        ; preds = %if.end54
  %10 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %x, align 8, !tbaa !15
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %10) #8
  store %struct.evp_pkey_st* %call55, %struct.evp_pkey_st** %x, align 8, !tbaa !15
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end54
  call void @PKCS8_PRIV_KEY_INFO_free(%struct.pkcs8_priv_key_info_st* noundef nonnull %call49) #8
  br label %cleanup60.thread

cleanup60.thread:                                 ; preds = %if.end59, %if.then32, %if.end47
  %ret.1.ph = phi %struct.evp_pkey_st* [ null, %if.end47 ], [ null, %if.then32 ], [ %call55, %if.end59 ]
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %8) #7
  br label %p8err

cleanup60:                                        ; preds = %if.then39
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 155, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.pem_read_bio_key_legacy, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 104, i8* noundef null) #8
  call void @X509_SIG_free(%struct.X509_sig_st* noundef nonnull %call34) #8
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %8) #7
  br label %err

if.else66:                                        ; preds = %if.else29
  %call67 = call i32 @ossl_pem_check_suffix(i8* noundef %5, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0)) #8
  %cmp68 = icmp sgt i32 %call67, 0
  br i1 %cmp68, label %if.then70, label %if.else82

if.then70:                                        ; preds = %if.else66
  %11 = load i8*, i8** %nm, align 8, !tbaa !15
  %call71 = call %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_find_str(%struct.engine_st** noundef null, i8* noundef %11, i32 noundef %call67) #8
  %cmp72 = icmp eq %struct.evp_pkey_asn1_method_st* %call71, null
  br i1 %cmp72, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then70
  %old_priv_decode = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %call71, i64 0, i32 24
  %12 = load i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**, i32)** %old_priv_decode, align 8, !tbaa !25
  %cmp74 = icmp eq i32 (%struct.evp_pkey_st*, i8**, i32)* %12, null
  br i1 %cmp74, label %land.lhs.true, label %if.end77

if.end77:                                         ; preds = %lor.lhs.false
  %pkey_id = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %call71, i64 0, i32 0
  %13 = load i32, i32* %pkey_id, align 8, !tbaa !26
  %14 = load i64, i64* %len, align 8, !tbaa !24
  %call78 = call %struct.evp_pkey_st* @ossl_d2i_PrivateKey_legacy(i32 noundef %13, %struct.evp_pkey_st** noundef %x, i8** noundef nonnull %p, i64 noundef %14, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #8
  br label %p8err

if.else82:                                        ; preds = %if.else66
  %and83 = and i32 %selection, 2
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.else87, label %if.then85

if.then85:                                        ; preds = %if.else82
  %15 = load i64, i64* %len, align 8, !tbaa !24
  %call86 = call %struct.evp_pkey_st* @ossl_d2i_PUBKEY_legacy(%struct.evp_pkey_st** noundef %x, i8** noundef nonnull %p, i64 noundef %15) #8
  br label %p8err

if.else87:                                        ; preds = %if.else82
  %16 = load i8*, i8** %nm, align 8, !tbaa !15
  %call88 = call i32 @ossl_pem_check_suffix(i8* noundef %16, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0)) #8
  %cmp89 = icmp sgt i32 %call88, 0
  br i1 %cmp89, label %if.then91, label %land.lhs.true

if.then91:                                        ; preds = %if.else87
  %call92 = call %struct.evp_pkey_st* @EVP_PKEY_new() #8
  %cmp93 = icmp eq %struct.evp_pkey_st* %call92, null
  br i1 %cmp93, label %err, label %if.end96

if.end96:                                         ; preds = %if.then91
  %17 = load i8*, i8** %nm, align 8, !tbaa !15
  %call97 = call i32 @EVP_PKEY_set_type_str(%struct.evp_pkey_st* noundef nonnull %call92, i8* noundef %17, i32 noundef %call88) #8
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.then108, label %lor.lhs.false99

lor.lhs.false99:                                  ; preds = %if.end96
  %ameth100 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %call92, i64 0, i32 2
  %18 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth100, align 8, !tbaa !4
  %param_decode = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %18, i64 0, i32 15
  %19 = load i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**, i32)** %param_decode, align 8, !tbaa !27
  %tobool101.not = icmp eq i32 (%struct.evp_pkey_st*, i8**, i32)* %19, null
  br i1 %tobool101.not, label %if.then108, label %lor.lhs.false102

lor.lhs.false102:                                 ; preds = %lor.lhs.false99
  %20 = load i64, i64* %len, align 8, !tbaa !24
  %conv105 = trunc i64 %20 to i32
  %call106 = call i32 %19(%struct.evp_pkey_st* noundef nonnull %call92, i8** noundef nonnull %p, i32 noundef %conv105) #8
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.then108, label %if.end109

if.then108:                                       ; preds = %lor.lhs.false102, %lor.lhs.false99, %if.end96
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call92) #8
  br label %err

if.end109:                                        ; preds = %lor.lhs.false102
  %tobool110.not = icmp eq %struct.evp_pkey_st** %x, null
  br i1 %tobool110.not, label %err, label %if.then111

if.then111:                                       ; preds = %if.end109
  %21 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %x, align 8, !tbaa !15
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %21) #8
  store %struct.evp_pkey_st* %call92, %struct.evp_pkey_st** %x, align 8, !tbaa !15
  br label %err

p8err:                                            ; preds = %cleanup60.thread, %if.end77, %if.end25, %if.then85
  %ret.3 = phi %struct.evp_pkey_st* [ %call86, %if.then85 ], [ %call22, %if.end25 ], [ %call78, %if.end77 ], [ %ret.1.ph, %cleanup60.thread ]
  %cmp118 = icmp eq %struct.evp_pkey_st* %ret.3, null
  br i1 %cmp118, label %land.lhs.true, label %err

land.lhs.true:                                    ; preds = %if.then70, %lor.lhs.false, %if.then17, %if.else87, %p8err
  %call120 = call i64 @ERR_peek_last_error() #8
  %cmp121 = icmp eq i64 %call120, 0
  br i1 %cmp121, label %if.then123, label %err

if.then123:                                       ; preds = %land.lhs.true
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 199, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.pem_read_bio_key_legacy, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 524301, i8* noundef null) #8
  br label %err

err:                                              ; preds = %if.end109, %if.then111, %cleanup60, %p8err, %land.lhs.true, %if.then123, %if.then91, %if.then108
  %ret.4 = phi %struct.evp_pkey_st* [ null, %if.then123 ], [ null, %land.lhs.true ], [ %ret.3, %p8err ], [ null, %cleanup60 ], [ null, %if.then91 ], [ null, %if.then108 ], [ %call92, %if.then111 ], [ %call92, %if.end109 ]
  %22 = load i8*, i8** %nm, align 8, !tbaa !15
  call void @CRYPTO_secure_free(i8* noundef %22, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 201) #8
  %23 = load i8*, i8** %data, align 8, !tbaa !15
  %24 = load i64, i64* %len, align 8, !tbaa !24
  call void @CRYPTO_secure_clear_free(i8* noundef %23, i64 noundef %24, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 202) #8
  br label %cleanup125

cleanup125:                                       ; preds = %if.then11, %err, %if.then3
  %retval.2 = phi %struct.evp_pkey_st* [ %ret.4, %err ], [ null, %if.then3 ], [ null, %if.then11 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret %struct.evp_pkey_st* %retval.2
}

declare i32 @ERR_clear_last_mark() local_unnamed_addr #2

declare i32 @ERR_pop_to_mark() local_unnamed_addr #2

declare void @ossl_pw_clear_passphrase_data(%struct.ossl_passphrase_data_st* noundef) local_unnamed_addr #2

declare %struct.bio_st* @BIO_pop(%struct.bio_st* noundef) local_unnamed_addr #2

declare %struct.ossl_decoder_ctx_st* @OSSL_DECODER_CTX_new_for_pkey(%struct.evp_pkey_st** noundef, i8* noundef, i8* noundef, i8* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OSSL_DECODER_CTX_set_pem_password_cb(%struct.ossl_decoder_ctx_st* noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OSSL_DECODER_from_bio(%struct.ossl_decoder_ctx_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_REASON(i64 noundef %errcode) unnamed_addr #5 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %retval.0.v = select i1 %cmp.not, i32 8388607, i32 2147483647
  %retval.0 = and i32 %retval.0.v, %0
  ret i32 %retval.0
}

declare i64 @ERR_peek_error() local_unnamed_addr #2

declare i32 @evp_keymgmt_util_has(%struct.evp_pkey_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @OSSL_DECODER_CTX_free(%struct.ossl_decoder_ctx_st* noundef) local_unnamed_addr #2

declare i32 @PEM_bytes_read_bio_secmem(i8** noundef, i64* noundef, i8** noundef, i8* noundef, %struct.bio_st* noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @PEM_bytes_read_bio(i8** noundef, i64* noundef, i8** noundef, i8* noundef, %struct.bio_st* noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #3

declare %struct.pkcs8_priv_key_info_st* @d2i_PKCS8_PRIV_KEY_INFO(%struct.pkcs8_priv_key_info_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @evp_pkcs82pkey_legacy(%struct.pkcs8_priv_key_info_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare void @PKCS8_PRIV_KEY_INFO_free(%struct.pkcs8_priv_key_info_st* noundef) local_unnamed_addr #2

declare %struct.X509_sig_st* @d2i_X509_SIG(%struct.X509_sig_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare void @X509_SIG_free(%struct.X509_sig_st* noundef) local_unnamed_addr #2

declare %struct.pkcs8_priv_key_info_st* @PKCS8_decrypt(%struct.X509_sig_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ossl_pem_check_suffix(i8* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_find_str(%struct.engine_st** noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @ossl_d2i_PrivateKey_legacy(i32 noundef, %struct.evp_pkey_st** noundef, i8** noundef, i64 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @ossl_d2i_PUBKEY_legacy(%struct.evp_pkey_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @EVP_PKEY_new() local_unnamed_addr #2

declare i32 @EVP_PKEY_set_type_str(%struct.evp_pkey_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i64 @ERR_peek_last_error() local_unnamed_addr #2

declare void @CRYPTO_secure_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_secure_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 8}
!5 = !{!"evp_pkey_st", !6, i64 0, !6, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !9, i64 56, !9, i64 64, !6, i64 72, !6, i64 76, !10, i64 80, !9, i64 96, !9, i64 104, !11, i64 112, !9, i64 120, !11, i64 128, !12, i64 136}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!"crypto_ex_data_st", !9, i64 0, !9, i64 8}
!11 = !{!"long", !7, i64 0}
!12 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8}
!13 = !{!14, !9, i64 72}
!14 = !{!"evp_pkey_asn1_method_st", !6, i64 0, !6, i64 4, !11, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !9, i64 296, !9, i64 304, !9, i64 312}
!15 = !{!9, !9, i64 0}
!16 = !{!7, !7, i64 0}
!17 = !{!5, !9, i64 104}
!18 = !{!5, !9, i64 96}
!19 = !{!14, !9, i64 192}
!20 = !{!14, !9, i64 16}
!21 = !{!14, !9, i64 120}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!11, !11, i64 0}
!25 = !{!14, !9, i64 184}
!26 = !{!14, !6, i64 0}
!27 = !{!14, !9, i64 112}
