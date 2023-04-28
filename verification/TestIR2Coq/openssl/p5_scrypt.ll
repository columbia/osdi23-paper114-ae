; ModuleID = 'crypto/asn1/p5_scrypt.c'
source_filename = "crypto/asn1/p5_scrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, {}* }
%struct.SCRYPT_PARAMS_st = type { %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.ASN1_VALUE_st = type opaque
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_cipher_ctx_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.PBE2PARAM_st = type { %struct.X509_algor_st*, %struct.X509_algor_st* }
%struct.engine_st = type opaque
%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_md_ctx_st = type opaque
%struct.ossl_lib_ctx_st = type opaque

@SCRYPT_PARAMS_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([5 x %struct.ASN1_TEMPLATE_st], [5 x %struct.ASN1_TEMPLATE_st]* bitcast ([5 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @SCRYPT_PARAMS_seq_tt to [5 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 5, i8* null, i64 40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [14 x i8] c"SCRYPT_PARAMS\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"crypto/asn1/p5_scrypt.c\00", align 1
@__func__.PKCS5_pbe2_set_scrypt = private unnamed_addr constant [22 x i8] c"PKCS5_pbe2_set_scrypt\00", align 1
@__func__.PKCS5_v2_scrypt_keyivgen_ex = private unnamed_addr constant [28 x i8] c"PKCS5_v2_scrypt_keyivgen_ex\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"salt\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"costParameter\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"blockSize\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"parallelizationParameter\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"keyLength\00", align 1
@SCRYPT_PARAMS_seq_tt = internal constant [5 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }], align 16
@__func__.pkcs5_scrypt_set = private unnamed_addr constant [17 x i8] c"pkcs5_scrypt_set\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @SCRYPT_PARAMS_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @SCRYPT_PARAMS_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.SCRYPT_PARAMS_st* @d2i_SCRYPT_PARAMS(%struct.SCRYPT_PARAMS_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.SCRYPT_PARAMS_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @SCRYPT_PARAMS_it.local_it) #5
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.SCRYPT_PARAMS_st*
  ret %struct.SCRYPT_PARAMS_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_SCRYPT_PARAMS(%struct.SCRYPT_PARAMS_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.SCRYPT_PARAMS_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @SCRYPT_PARAMS_it.local_it) #5
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.SCRYPT_PARAMS_st* @SCRYPT_PARAMS_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @SCRYPT_PARAMS_it.local_it) #5
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.SCRYPT_PARAMS_st*
  ret %struct.SCRYPT_PARAMS_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @SCRYPT_PARAMS_free(%struct.SCRYPT_PARAMS_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.SCRYPT_PARAMS_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @SCRYPT_PARAMS_it.local_it) #5
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.X509_algor_st* @PKCS5_pbe2_set_scrypt(%struct.evp_cipher_st* noundef %cipher, i8* noundef %salt, i32 noundef %saltlen, i8* noundef %aiv, i64 noundef %N, i64 noundef %r, i64 noundef %p) local_unnamed_addr #1 {
entry:
  %iv = alloca [16 x i8], align 16
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #6
  %tobool.not = icmp eq %struct.evp_cipher_st* %cipher, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.PKCS5_pbe2_set_scrypt, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786690, i8* noundef null) #5
  br label %err

if.end:                                           ; preds = %entry
  %call = tail call i32 @EVP_PBE_scrypt(i8* noundef null, i64 noundef 0, i8* noundef null, i64 noundef 0, i64 noundef %N, i64 noundef %r, i64 noundef %p, i64 noundef 0, i8* noundef null, i64 noundef 0) #5
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.PKCS5_pbe2_set_scrypt, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 227, i8* noundef null) #5
  br label %err

if.end2:                                          ; preds = %if.end
  %call3 = tail call i32 @EVP_CIPHER_get_type(%struct.evp_cipher_st* noundef nonnull %cipher) #5
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end2
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.PKCS5_pbe2_set_scrypt, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 108, i8* noundef null) #5
  br label %err

if.end6:                                          ; preds = %if.end2
  %call7 = tail call %struct.PBE2PARAM_st* @PBE2PARAM_new() #5
  %cmp8 = icmp eq %struct.PBE2PARAM_st* %call7, null
  br i1 %cmp8, label %merr, label %if.end10

if.end10:                                         ; preds = %if.end6
  %encryption = getelementptr inbounds %struct.PBE2PARAM_st, %struct.PBE2PARAM_st* %call7, i64 0, i32 1
  %1 = load %struct.X509_algor_st*, %struct.X509_algor_st** %encryption, align 8, !tbaa !4
  %call11 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %call3) #5
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %1, i64 0, i32 0
  store %struct.asn1_object_st* %call11, %struct.asn1_object_st** %algorithm, align 8, !tbaa !9
  %call12 = tail call %struct.asn1_type_st* @ASN1_TYPE_new() #5
  %parameter = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %1, i64 0, i32 1
  store %struct.asn1_type_st* %call12, %struct.asn1_type_st** %parameter, align 8, !tbaa !11
  %cmp14 = icmp eq %struct.asn1_type_st* %call12, null
  br i1 %cmp14, label %merr, label %if.end16

if.end16:                                         ; preds = %if.end10
  %call17 = tail call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef nonnull %cipher) #5
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end32, label %if.then19

if.then19:                                        ; preds = %if.end16
  %tobool20.not = icmp eq i8* %aiv, null
  %call25 = tail call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef nonnull %cipher) #5
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.then19
  %conv = sext i32 %call25 to i64
  %call23 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef nonnull %aiv, i64 noundef %conv) #5
  br label %if.end32

if.else:                                          ; preds = %if.then19
  %call26 = call i32 @RAND_bytes(i8* noundef nonnull %0, i32 noundef %call25) #5
  %cmp27 = icmp slt i32 %call26, 1
  br i1 %cmp27, label %err, label %if.end32

if.end32:                                         ; preds = %if.then21, %if.else, %if.end16
  %call33 = call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #5
  %cmp34 = icmp eq %struct.evp_cipher_ctx_st* %call33, null
  br i1 %cmp34, label %merr, label %if.end37

if.end37:                                         ; preds = %if.end32
  %call39 = call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef nonnull %call33, %struct.evp_cipher_st* noundef nonnull %cipher, %struct.engine_st* noundef null, i8* noundef null, i8* noundef nonnull %0, i32 noundef 0) #5
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %err, label %if.end43

if.end43:                                         ; preds = %if.end37
  %2 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter, align 8, !tbaa !11
  %call45 = call i32 @EVP_CIPHER_param_to_asn1(%struct.evp_cipher_ctx_st* noundef nonnull %call33, %struct.asn1_type_st* noundef %2) #5
  %cmp46 = icmp slt i32 %call45, 1
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end43
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 97, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.PKCS5_pbe2_set_scrypt, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 114, i8* noundef null) #5
  br label %err

if.end49:                                         ; preds = %if.end43
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef nonnull %call33) #5
  %cmp50 = icmp eq i32 %call3, 37
  br i1 %cmp50, label %if.then52, label %if.end55

if.then52:                                        ; preds = %if.end49
  %call53 = call i32 @EVP_CIPHER_get_key_length(%struct.evp_cipher_st* noundef nonnull %cipher) #5
  %conv54 = sext i32 %call53 to i64
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %if.end49
  %keylen.0 = phi i64 [ %conv54, %if.then52 ], [ 0, %if.end49 ]
  %keyfunc = getelementptr inbounds %struct.PBE2PARAM_st, %struct.PBE2PARAM_st* %call7, i64 0, i32 0
  %3 = load %struct.X509_algor_st*, %struct.X509_algor_st** %keyfunc, align 8, !tbaa !12
  call void @X509_ALGOR_free(%struct.X509_algor_st* noundef %3) #5
  %conv56 = sext i32 %saltlen to i64
  %call57 = call fastcc %struct.X509_algor_st* @pkcs5_scrypt_set(i8* noundef %salt, i64 noundef %conv56, i64 noundef %keylen.0, i64 noundef %N, i64 noundef %r, i64 noundef %p) #7
  store %struct.X509_algor_st* %call57, %struct.X509_algor_st** %keyfunc, align 8, !tbaa !12
  %cmp60 = icmp eq %struct.X509_algor_st* %call57, null
  br i1 %cmp60, label %merr, label %if.end63

if.end63:                                         ; preds = %if.end55
  %call64 = call %struct.X509_algor_st* @X509_ALGOR_new() #5
  %cmp65 = icmp eq %struct.X509_algor_st* %call64, null
  br i1 %cmp65, label %merr, label %if.end68

if.end68:                                         ; preds = %if.end63
  %call69 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 161) #5
  %algorithm70 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %call64, i64 0, i32 0
  store %struct.asn1_object_st* %call69, %struct.asn1_object_st** %algorithm70, align 8, !tbaa !9
  %call71 = call %struct.ASN1_ITEM_st* @PBE2PARAM_it() #5
  %4 = bitcast %struct.PBE2PARAM_st* %call7 to i8*
  %parameter72 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %call64, i64 0, i32 1
  %call73 = call %struct.asn1_type_st* @ASN1_TYPE_pack_sequence(%struct.ASN1_ITEM_st* noundef %call71, i8* noundef nonnull %4, %struct.asn1_type_st** noundef nonnull %parameter72) #5
  %cmp74 = icmp eq %struct.asn1_type_st* %call73, null
  br i1 %cmp74, label %merr, label %if.end77

if.end77:                                         ; preds = %if.end68
  call void @PBE2PARAM_free(%struct.PBE2PARAM_st* noundef nonnull %call7) #5
  br label %cleanup

merr:                                             ; preds = %if.end68, %if.end63, %if.end55, %if.end32, %if.end10, %if.end6
  %ret.0 = phi %struct.X509_algor_st* [ null, %if.end6 ], [ null, %if.end10 ], [ null, %if.end32 ], [ null, %if.end55 ], [ null, %if.end63 ], [ %call64, %if.end68 ]
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 137, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.PKCS5_pbe2_set_scrypt, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #5
  br label %err

err:                                              ; preds = %if.end37, %if.else, %merr, %if.then48, %if.then5, %if.then1, %if.then
  %ret.1 = phi %struct.X509_algor_st* [ null, %if.then1 ], [ null, %if.then5 ], [ %ret.0, %merr ], [ null, %if.end37 ], [ null, %if.then48 ], [ null, %if.else ], [ null, %if.then ]
  %ctx.1 = phi %struct.evp_cipher_ctx_st* [ null, %if.then1 ], [ null, %if.then5 ], [ null, %merr ], [ %call33, %if.end37 ], [ %call33, %if.then48 ], [ null, %if.else ], [ null, %if.then ]
  %pbe2.0 = phi %struct.PBE2PARAM_st* [ null, %if.then1 ], [ null, %if.then5 ], [ %call7, %merr ], [ %call7, %if.end37 ], [ %call7, %if.then48 ], [ %call7, %if.else ], [ null, %if.then ]
  call void @PBE2PARAM_free(%struct.PBE2PARAM_st* noundef %pbe2.0) #5
  call void @X509_ALGOR_free(%struct.X509_algor_st* noundef %ret.1) #5
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %ctx.1) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end77
  %retval.0 = phi %struct.X509_algor_st* [ null, %err ], [ %call64, %if.end77 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #6
  ret %struct.X509_algor_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @EVP_PBE_scrypt(i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_get_type(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare %struct.PBE2PARAM_st* @PBE2PARAM_new() local_unnamed_addr #2

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #2

declare %struct.asn1_type_st* @ASN1_TYPE_new() local_unnamed_addr #2

declare i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i32 @RAND_bytes(i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() local_unnamed_addr #2

declare i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_param_to_asn1(%struct.evp_cipher_ctx_st* noundef, %struct.asn1_type_st* noundef) local_unnamed_addr #2

declare void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_get_key_length(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare void @X509_ALGOR_free(%struct.X509_algor_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.X509_algor_st* @pkcs5_scrypt_set(i8* noundef %salt, i64 noundef %saltlen, i64 noundef %keylen, i64 noundef %N, i64 noundef %r, i64 noundef %p) unnamed_addr #1 {
entry:
  %call = tail call %struct.SCRYPT_PARAMS_st* @SCRYPT_PARAMS_new() #7
  %cmp = icmp eq %struct.SCRYPT_PARAMS_st* %call, null
  br i1 %cmp, label %merr, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i64 %saltlen, 0
  %salt3 = getelementptr inbounds %struct.SCRYPT_PARAMS_st, %struct.SCRYPT_PARAMS_st* %call, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %salt3, align 8, !tbaa !13
  %1 = trunc i64 %saltlen to i32
  %conv = select i1 %tobool.not, i32 8, i32 %1
  %call4 = tail call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef %0, i8* noundef %salt, i32 noundef %conv) #5
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %merr, label %if.end8

if.end8:                                          ; preds = %if.end
  %cmp9 = icmp eq i8* %salt, null
  br i1 %cmp9, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %if.end8
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %salt3, align 8, !tbaa !13
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %2, i64 0, i32 2
  %3 = load i8*, i8** %data, align 8, !tbaa !15
  %call13 = tail call i32 @RAND_bytes(i8* noundef %3, i32 noundef %conv) #5
  %cmp14 = icmp slt i32 %call13, 1
  br i1 %cmp14, label %err, label %if.end17

if.end17:                                         ; preds = %land.lhs.true, %if.end8
  %costParameter = getelementptr inbounds %struct.SCRYPT_PARAMS_st, %struct.SCRYPT_PARAMS_st* %call, i64 0, i32 1
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %costParameter, align 8, !tbaa !19
  %call18 = tail call i32 @ASN1_INTEGER_set_uint64(%struct.asn1_string_st* noundef %4, i64 noundef %N) #5
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %merr, label %if.end22

if.end22:                                         ; preds = %if.end17
  %blockSize = getelementptr inbounds %struct.SCRYPT_PARAMS_st, %struct.SCRYPT_PARAMS_st* %call, i64 0, i32 2
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %blockSize, align 8, !tbaa !20
  %call23 = tail call i32 @ASN1_INTEGER_set_uint64(%struct.asn1_string_st* noundef %5, i64 noundef %r) #5
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %merr, label %if.end27

if.end27:                                         ; preds = %if.end22
  %parallelizationParameter = getelementptr inbounds %struct.SCRYPT_PARAMS_st, %struct.SCRYPT_PARAMS_st* %call, i64 0, i32 3
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %parallelizationParameter, align 8, !tbaa !21
  %call28 = tail call i32 @ASN1_INTEGER_set_uint64(%struct.asn1_string_st* noundef %6, i64 noundef %p) #5
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %merr, label %if.end32

if.end32:                                         ; preds = %if.end27
  %cmp33.not = icmp eq i64 %keylen, 0
  br i1 %cmp33.not, label %if.end48, label %if.then35

if.then35:                                        ; preds = %if.end32
  %call36 = tail call %struct.asn1_string_st* @ASN1_INTEGER_new() #5
  %keyLength = getelementptr inbounds %struct.SCRYPT_PARAMS_st, %struct.SCRYPT_PARAMS_st* %call, i64 0, i32 4
  store %struct.asn1_string_st* %call36, %struct.asn1_string_st** %keyLength, align 8, !tbaa !22
  %cmp38 = icmp eq %struct.asn1_string_st* %call36, null
  br i1 %cmp38, label %merr, label %if.end41

if.end41:                                         ; preds = %if.then35
  %call43 = tail call i32 @ASN1_INTEGER_set_int64(%struct.asn1_string_st* noundef nonnull %call36, i64 noundef %keylen) #5
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %merr, label %if.end48

if.end48:                                         ; preds = %if.end41, %if.end32
  %call49 = tail call %struct.X509_algor_st* @X509_ALGOR_new() #5
  %cmp50 = icmp eq %struct.X509_algor_st* %call49, null
  br i1 %cmp50, label %merr, label %if.end53

if.end53:                                         ; preds = %if.end48
  %call54 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 973) #5
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %call49, i64 0, i32 0
  store %struct.asn1_object_st* %call54, %struct.asn1_object_st** %algorithm, align 8, !tbaa !9
  %7 = bitcast %struct.SCRYPT_PARAMS_st* %call to i8*
  %parameter = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %call49, i64 0, i32 1
  %call56 = tail call %struct.asn1_type_st* @ASN1_TYPE_pack_sequence(%struct.ASN1_ITEM_st* noundef nonnull @SCRYPT_PARAMS_it.local_it, i8* noundef nonnull %7, %struct.asn1_type_st** noundef nonnull %parameter) #5
  %cmp57 = icmp eq %struct.asn1_type_st* %call56, null
  br i1 %cmp57, label %merr, label %if.end60

if.end60:                                         ; preds = %if.end53
  tail call void @SCRYPT_PARAMS_free(%struct.SCRYPT_PARAMS_st* noundef nonnull %call) #7
  br label %cleanup

merr:                                             ; preds = %if.end53, %if.end48, %if.end41, %if.then35, %if.end27, %if.end22, %if.end17, %if.end, %entry
  %keyfunc.0 = phi %struct.X509_algor_st* [ null, %entry ], [ null, %if.end ], [ null, %if.end17 ], [ null, %if.end22 ], [ null, %if.end27 ], [ null, %if.then35 ], [ null, %if.end41 ], [ null, %if.end48 ], [ %call49, %if.end53 ]
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 204, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.pkcs5_scrypt_set, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #5
  br label %err

err:                                              ; preds = %land.lhs.true, %merr
  %keyfunc.1 = phi %struct.X509_algor_st* [ %keyfunc.0, %merr ], [ null, %land.lhs.true ]
  tail call void @SCRYPT_PARAMS_free(%struct.SCRYPT_PARAMS_st* noundef %call) #7
  tail call void @X509_ALGOR_free(%struct.X509_algor_st* noundef %keyfunc.1) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end60
  %retval.0 = phi %struct.X509_algor_st* [ null, %err ], [ %call49, %if.end60 ]
  ret %struct.X509_algor_st* %retval.0
}

declare %struct.X509_algor_st* @X509_ALGOR_new() local_unnamed_addr #2

declare %struct.asn1_type_st* @ASN1_TYPE_pack_sequence(%struct.ASN1_ITEM_st* noundef, i8* noundef, %struct.asn1_type_st** noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @PBE2PARAM_it() local_unnamed_addr #2

declare void @PBE2PARAM_free(%struct.PBE2PARAM_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS5_v2_scrypt_keyivgen_ex(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %pass, i32 noundef %passlen, %struct.asn1_type_st* noundef %param, %struct.evp_cipher_st* nocapture readnone %c, %struct.evp_md_st* nocapture readnone %md, i32 noundef %en_de, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #1 {
entry:
  %key = alloca [64 x i8], align 16
  %p = alloca i64, align 8
  %r = alloca i64, align 8
  %N = alloca i64, align 8
  %spkeylen = alloca i64, align 8
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %key, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #6
  %1 = bitcast i64* %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  %2 = bitcast i64* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #6
  %3 = bitcast i64* %N to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6
  %call = tail call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %cmp = icmp eq %struct.evp_cipher_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 224, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.PKCS5_v2_scrypt_keyivgen_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 131, i8* noundef null) #5
  br label %if.end51

if.end:                                           ; preds = %entry
  %call2 = tail call i8* @ASN1_TYPE_unpack_sequence(%struct.ASN1_ITEM_st* noundef nonnull @SCRYPT_PARAMS_it.local_it, %struct.asn1_type_st* noundef %param) #5
  %4 = bitcast i8* %call2 to %struct.SCRYPT_PARAMS_st*
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 233, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.PKCS5_v2_scrypt_keyivgen_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 114, i8* noundef null) #5
  br label %if.end51

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 239, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.PKCS5_v2_scrypt_keyivgen_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 130, i8* noundef null) #5
  br label %if.end51

if.end9:                                          ; preds = %if.end5
  %conv93 = zext i32 %call6 to i64
  %keyLength = getelementptr inbounds i8, i8* %call2, i64 32
  %5 = bitcast i8* %keyLength to %struct.asn1_string_st**
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %5, align 8, !tbaa !22
  %tobool.not = icmp eq %struct.asn1_string_st* %6, null
  br i1 %tobool.not, label %if.end19, label %if.then10

if.then10:                                        ; preds = %if.end9
  %7 = bitcast i64* %spkeylen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6
  %call12 = call i32 @ASN1_INTEGER_get_uint64(i64* noundef nonnull %spkeylen, %struct.asn1_string_st* noundef nonnull %6) #5
  %cmp13 = icmp ne i32 %call12, 0
  %8 = load i64, i64* %spkeylen, align 8
  %cmp15.not = icmp eq i64 %8, %conv93
  %or.cond = select i1 %cmp13, i1 %cmp15.not, i1 false
  br i1 %or.cond, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6
  br label %if.end19

cleanup:                                          ; preds = %if.then10
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 250, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.PKCS5_v2_scrypt_keyivgen_ex, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 123, i8* noundef null) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6
  br label %err

if.end19:                                         ; preds = %cleanup.thread, %if.end9
  %costParameter = getelementptr inbounds i8, i8* %call2, i64 8
  %9 = bitcast i8* %costParameter to %struct.asn1_string_st**
  %10 = load %struct.asn1_string_st*, %struct.asn1_string_st** %9, align 8, !tbaa !19
  %call20 = call i32 @ASN1_INTEGER_get_uint64(i64* noundef nonnull %N, %struct.asn1_string_st* noundef %10) #5
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then35, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %if.end19
  %blockSize = getelementptr inbounds i8, i8* %call2, i64 16
  %11 = bitcast i8* %blockSize to %struct.asn1_string_st**
  %12 = load %struct.asn1_string_st*, %struct.asn1_string_st** %11, align 8, !tbaa !20
  %call24 = call i32 @ASN1_INTEGER_get_uint64(i64* noundef nonnull %r, %struct.asn1_string_st* noundef %12) #5
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then35, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false23
  %parallelizationParameter = getelementptr inbounds i8, i8* %call2, i64 24
  %13 = bitcast i8* %parallelizationParameter to %struct.asn1_string_st**
  %14 = load %struct.asn1_string_st*, %struct.asn1_string_st** %13, align 8, !tbaa !21
  %call28 = call i32 @ASN1_INTEGER_get_uint64(i64* noundef nonnull %p, %struct.asn1_string_st* noundef %14) #5
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then35, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false27
  %15 = load i64, i64* %N, align 8, !tbaa !23
  %16 = load i64, i64* %r, align 8, !tbaa !23
  %17 = load i64, i64* %p, align 8, !tbaa !23
  %call32 = call i32 @EVP_PBE_scrypt_ex(i8* noundef null, i64 noundef 0, i8* noundef null, i64 noundef 0, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef 0, i8* noundef null, i64 noundef 0, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #5
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %lor.lhs.false31, %lor.lhs.false27, %lor.lhs.false23, %if.end19
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 260, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.PKCS5_v2_scrypt_keyivgen_ex, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 171, i8* noundef null) #5
  br label %err

if.end36:                                         ; preds = %lor.lhs.false31
  %salt37 = bitcast i8* %call2 to %struct.asn1_string_st**
  %18 = load %struct.asn1_string_st*, %struct.asn1_string_st** %salt37, align 8, !tbaa !13
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %18, i64 0, i32 2
  %19 = load i8*, i8** %data, align 8, !tbaa !15
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %18, i64 0, i32 0
  %20 = load i32, i32* %length, align 8, !tbaa !24
  %conv39 = sext i32 %20 to i64
  %conv40 = sext i32 %passlen to i64
  %21 = load i64, i64* %N, align 8, !tbaa !23
  %22 = load i64, i64* %r, align 8, !tbaa !23
  %23 = load i64, i64* %p, align 8, !tbaa !23
  %call41 = call i32 @EVP_PBE_scrypt_ex(i8* noundef %pass, i64 noundef %conv40, i8* noundef %19, i64 noundef %conv39, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef 0, i8* noundef nonnull %0, i64 noundef %conv93, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #5
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %err, label %if.end45

if.end45:                                         ; preds = %if.end36
  %call47 = call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef nonnull %0, i8* noundef null, i32 noundef %en_de) #5
  br label %err

err:                                              ; preds = %cleanup, %if.end36, %if.end45, %if.then35
  %rv.0 = phi i32 [ 0, %cleanup ], [ 0, %if.then35 ], [ 0, %if.end36 ], [ %call47, %if.end45 ]
  %tobool48.not = icmp eq i32 %call6, 0
  br i1 %tobool48.not, label %if.end51, label %if.then49

if.then49:                                        ; preds = %err
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef %conv93) #5
  br label %if.end51

if.end51:                                         ; preds = %if.then8, %if.then4, %if.then, %if.then49, %err
  %sparam.092 = phi %struct.SCRYPT_PARAMS_st* [ %4, %if.then49 ], [ %4, %err ], [ %4, %if.then8 ], [ null, %if.then4 ], [ null, %if.then ]
  %rv.091 = phi i32 [ %rv.0, %if.then49 ], [ %rv.0, %err ], [ 0, %if.then8 ], [ 0, %if.then4 ], [ 0, %if.then ]
  call void @SCRYPT_PARAMS_free(%struct.SCRYPT_PARAMS_st* noundef %sparam.092) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #6
  ret i32 %rv.091
}

declare %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i8* @ASN1_TYPE_unpack_sequence(%struct.ASN1_ITEM_st* noundef, %struct.asn1_type_st* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_INTEGER_get_uint64(i64* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PBE_scrypt_ex(i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i8* noundef, i64 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS5_v2_scrypt_keyivgen(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %pass, i32 noundef %passlen, %struct.asn1_type_st* noundef %param, %struct.evp_cipher_st* nocapture noundef readnone %c, %struct.evp_md_st* nocapture noundef readnone %md, i32 noundef %en_de) local_unnamed_addr #1 {
entry:
  %call = tail call i32 @PKCS5_v2_scrypt_keyivgen_ex(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %pass, i32 noundef %passlen, %struct.asn1_type_st* noundef %param, %struct.evp_cipher_st* undef, %struct.evp_md_st* undef, i32 noundef %en_de, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #7
  ret i32 %call
}

declare %struct.ASN1_ITEM_st* @ASN1_OCTET_STRING_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_INTEGER_it() #2

declare i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ASN1_INTEGER_set_uint64(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @ASN1_INTEGER_new() local_unnamed_addr #2

declare i32 @ASN1_INTEGER_set_int64(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 8}
!5 = !{!"PBE2PARAM_st", !6, i64 0, !6, i64 8}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 0}
!10 = !{!"X509_algor_st", !6, i64 0, !6, i64 8}
!11 = !{!10, !6, i64 8}
!12 = !{!5, !6, i64 0}
!13 = !{!14, !6, i64 0}
!14 = !{!"SCRYPT_PARAMS_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!15 = !{!16, !6, i64 8}
!16 = !{!"asn1_string_st", !17, i64 0, !17, i64 4, !6, i64 8, !18, i64 16}
!17 = !{!"int", !7, i64 0}
!18 = !{!"long", !7, i64 0}
!19 = !{!14, !6, i64 8}
!20 = !{!14, !6, i64 16}
!21 = !{!14, !6, i64 24}
!22 = !{!14, !6, i64 32}
!23 = !{!18, !18, i64 0}
!24 = !{!16, !17, i64 0}
