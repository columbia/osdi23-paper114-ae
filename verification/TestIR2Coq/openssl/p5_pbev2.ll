; ModuleID = 'crypto/asn1/p5_pbev2.c'
source_filename = "crypto/asn1/p5_pbev2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, {}* }
%struct.PBE2PARAM_st = type { %struct.X509_algor_st*, %struct.X509_algor_st* }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.ASN1_VALUE_st = type opaque
%struct.PBKDF2PARAM_st = type { %struct.asn1_type_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.X509_algor_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.evp_cipher_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_cipher_ctx_st = type opaque
%struct.engine_st = type opaque

@PBE2PARAM_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @PBE2PARAM_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [10 x i8] c"PBE2PARAM\00", align 1
@PBKDF2PARAM_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([4 x %struct.ASN1_TEMPLATE_st], [4 x %struct.ASN1_TEMPLATE_st]* bitcast ([4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @PBKDF2PARAM_seq_tt to [4 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 4, i8* null, i64 32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"PBKDF2PARAM\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"crypto/asn1/p5_pbev2.c\00", align 1
@__func__.PKCS5_pbe2_set_iv_ex = private unnamed_addr constant [21 x i8] c"PKCS5_pbe2_set_iv_ex\00", align 1
@__func__.PKCS5_pbkdf2_set_ex = private unnamed_addr constant [20 x i8] c"PKCS5_pbkdf2_set_ex\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"keyfunc\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"encryption\00", align 1
@PBE2PARAM_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }], align 16
@.str.6 = private unnamed_addr constant [5 x i8] c"salt\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"keylength\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"prf\00", align 1
@PBKDF2PARAM_seq_tt = internal constant [4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_ANY_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @PBE2PARAM_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @PBE2PARAM_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.PBE2PARAM_st* @d2i_PBE2PARAM(%struct.PBE2PARAM_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.PBE2PARAM_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @PBE2PARAM_it.local_it) #5
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.PBE2PARAM_st*
  ret %struct.PBE2PARAM_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PBE2PARAM(%struct.PBE2PARAM_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.PBE2PARAM_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @PBE2PARAM_it.local_it) #5
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.PBE2PARAM_st* @PBE2PARAM_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @PBE2PARAM_it.local_it) #5
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.PBE2PARAM_st*
  ret %struct.PBE2PARAM_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @PBE2PARAM_free(%struct.PBE2PARAM_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.PBE2PARAM_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @PBE2PARAM_it.local_it) #5
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @PBKDF2PARAM_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @PBKDF2PARAM_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.PBKDF2PARAM_st* @d2i_PBKDF2PARAM(%struct.PBKDF2PARAM_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.PBKDF2PARAM_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @PBKDF2PARAM_it.local_it) #5
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.PBKDF2PARAM_st*
  ret %struct.PBKDF2PARAM_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PBKDF2PARAM(%struct.PBKDF2PARAM_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.PBKDF2PARAM_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @PBKDF2PARAM_it.local_it) #5
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.PBKDF2PARAM_st* @PBKDF2PARAM_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @PBKDF2PARAM_it.local_it) #5
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.PBKDF2PARAM_st*
  ret %struct.PBKDF2PARAM_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @PBKDF2PARAM_free(%struct.PBKDF2PARAM_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.PBKDF2PARAM_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @PBKDF2PARAM_it.local_it) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_algor_st* @PKCS5_pbe2_set_iv_ex(%struct.evp_cipher_st* noundef %cipher, i32 noundef %iter, i8* noundef %salt, i32 noundef %saltlen, i8* noundef %aiv, i32 noundef %prf_nid, %struct.ossl_lib_ctx_st* noundef %libctx) local_unnamed_addr #1 {
entry:
  %prf_nid.addr = alloca i32, align 4
  %iv = alloca [16 x i8], align 16
  store i32 %prf_nid, i32* %prf_nid.addr, align 4, !tbaa !4
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #6
  %call = tail call i32 @EVP_CIPHER_get_type(%struct.evp_cipher_st* noundef %cipher) #5
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.PKCS5_pbe2_set_iv_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 108, i8* noundef null) #5
  br label %err

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.PBE2PARAM_st* @PBE2PARAM_new() #7
  %cmp2 = icmp eq %struct.PBE2PARAM_st* %call1, null
  br i1 %cmp2, label %merr, label %if.end4

if.end4:                                          ; preds = %if.end
  %encryption = getelementptr inbounds %struct.PBE2PARAM_st, %struct.PBE2PARAM_st* %call1, i64 0, i32 1
  %1 = load %struct.X509_algor_st*, %struct.X509_algor_st** %encryption, align 8, !tbaa !8
  %call5 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %call) #5
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %1, i64 0, i32 0
  store %struct.asn1_object_st* %call5, %struct.asn1_object_st** %algorithm, align 8, !tbaa !11
  %call6 = tail call %struct.asn1_type_st* @ASN1_TYPE_new() #5
  %parameter = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %1, i64 0, i32 1
  store %struct.asn1_type_st* %call6, %struct.asn1_type_st** %parameter, align 8, !tbaa !13
  %cmp7 = icmp eq %struct.asn1_type_st* %call6, null
  br i1 %cmp7, label %merr, label %if.end9

if.end9:                                          ; preds = %if.end4
  %call10 = tail call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef %cipher) #5
  %cmp11 = icmp sgt i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end23

if.then12:                                        ; preds = %if.end9
  %tobool.not = icmp eq i8* %aiv, null
  %conv16114 = zext i32 %call10 to i64
  br i1 %tobool.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.then12
  %call14 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef nonnull %aiv, i64 noundef %conv16114) #5
  br label %if.end23

if.else:                                          ; preds = %if.then12
  %call17 = call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef nonnull %0, i64 noundef %conv16114, i32 noundef 0) #5
  %cmp18 = icmp slt i32 %call17, 1
  br i1 %cmp18, label %err, label %if.end23

if.end23:                                         ; preds = %if.then13, %if.else, %if.end9
  %call24 = call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #5
  %cmp25 = icmp eq %struct.evp_cipher_ctx_st* %call24, null
  br i1 %cmp25, label %merr, label %if.end28

if.end28:                                         ; preds = %if.end23
  %call30 = call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef nonnull %call24, %struct.evp_cipher_st* noundef %cipher, %struct.engine_st* noundef null, i8* noundef null, i8* noundef nonnull %0, i32 noundef 0) #5
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %err, label %if.end33

if.end33:                                         ; preds = %if.end28
  %2 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter, align 8, !tbaa !13
  %call35 = call i32 @EVP_CIPHER_param_to_asn1(%struct.evp_cipher_ctx_st* noundef nonnull %call24, %struct.asn1_type_st* noundef %2) #5
  %cmp36 = icmp slt i32 %call35, 1
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end33
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.PKCS5_pbe2_set_iv_ex, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 114, i8* noundef null) #5
  br label %err

if.end39:                                         ; preds = %if.end33
  %call40 = call i32 @ERR_set_mark() #5
  %cmp41 = icmp eq i32 %prf_nid, -1
  br i1 %cmp41, label %land.lhs.true, label %if.end47

land.lhs.true:                                    ; preds = %if.end39
  %3 = bitcast i32* %prf_nid.addr to i8*
  %call43 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef nonnull %call24, i32 noundef 7, i32 noundef 0, i8* noundef nonnull %3) #5
  %cmp44 = icmp slt i32 %call43, 1
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %land.lhs.true
  store i32 799, i32* %prf_nid.addr, align 4, !tbaa !4
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %land.lhs.true, %if.end39
  %call48 = call i32 @ERR_pop_to_mark() #5
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef nonnull %call24) #5
  %cmp49 = icmp eq i32 %call, 37
  br i1 %cmp49, label %if.then51, label %if.end54

if.then51:                                        ; preds = %if.end47
  %call52 = call i32 @EVP_CIPHER_get_key_length(%struct.evp_cipher_st* noundef %cipher) #5
  br label %if.end54

if.end54:                                         ; preds = %if.end47, %if.then51
  %keylen.0 = phi i32 [ %call52, %if.then51 ], [ -1, %if.end47 ]
  %keyfunc = getelementptr inbounds %struct.PBE2PARAM_st, %struct.PBE2PARAM_st* %call1, i64 0, i32 0
  %4 = load %struct.X509_algor_st*, %struct.X509_algor_st** %keyfunc, align 8, !tbaa !14
  call void @X509_ALGOR_free(%struct.X509_algor_st* noundef %4) #5
  %5 = load i32, i32* %prf_nid.addr, align 4, !tbaa !4
  %call55 = call %struct.X509_algor_st* @PKCS5_pbkdf2_set_ex(i32 noundef %iter, i8* noundef %salt, i32 noundef %saltlen, i32 noundef %5, i32 noundef %keylen.0, %struct.ossl_lib_ctx_st* noundef %libctx) #7
  store %struct.X509_algor_st* %call55, %struct.X509_algor_st** %keyfunc, align 8, !tbaa !14
  %cmp58 = icmp eq %struct.X509_algor_st* %call55, null
  br i1 %cmp58, label %merr, label %if.end61

if.end61:                                         ; preds = %if.end54
  %call62 = call %struct.X509_algor_st* @X509_ALGOR_new() #5
  %cmp63 = icmp eq %struct.X509_algor_st* %call62, null
  br i1 %cmp63, label %merr, label %if.end66

if.end66:                                         ; preds = %if.end61
  %call67 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 161) #5
  %algorithm68 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %call62, i64 0, i32 0
  store %struct.asn1_object_st* %call67, %struct.asn1_object_st** %algorithm68, align 8, !tbaa !11
  %6 = bitcast %struct.PBE2PARAM_st* %call1 to i8*
  %parameter70 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %call62, i64 0, i32 1
  %call71 = call %struct.asn1_type_st* @ASN1_TYPE_pack_sequence(%struct.ASN1_ITEM_st* noundef nonnull @PBE2PARAM_it.local_it, i8* noundef nonnull %6, %struct.asn1_type_st** noundef nonnull %parameter70) #5
  %tobool72.not = icmp eq %struct.asn1_type_st* %call71, null
  br i1 %tobool72.not, label %merr, label %if.end74

if.end74:                                         ; preds = %if.end66
  call void @PBE2PARAM_free(%struct.PBE2PARAM_st* noundef nonnull %call1) #7
  br label %cleanup

merr:                                             ; preds = %if.end66, %if.end61, %if.end54, %if.end23, %if.end4, %if.end
  %ret.0 = phi %struct.X509_algor_st* [ null, %if.end ], [ null, %if.end4 ], [ null, %if.end23 ], [ null, %if.end54 ], [ null, %if.end61 ], [ %call62, %if.end66 ]
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef 137, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.PKCS5_pbe2_set_iv_ex, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #5
  br label %err

err:                                              ; preds = %if.end28, %if.else, %merr, %if.then38, %if.then
  %ret.1 = phi %struct.X509_algor_st* [ null, %if.then ], [ %ret.0, %merr ], [ null, %if.then38 ], [ null, %if.end28 ], [ null, %if.else ]
  %ctx.1 = phi %struct.evp_cipher_ctx_st* [ null, %if.then ], [ null, %merr ], [ %call24, %if.then38 ], [ %call24, %if.end28 ], [ null, %if.else ]
  %pbe2.0 = phi %struct.PBE2PARAM_st* [ null, %if.then ], [ %call1, %merr ], [ %call1, %if.then38 ], [ %call1, %if.end28 ], [ %call1, %if.else ]
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %ctx.1) #5
  call void @PBE2PARAM_free(%struct.PBE2PARAM_st* noundef %pbe2.0) #7
  call void @X509_ALGOR_free(%struct.X509_algor_st* noundef %ret.1) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end74
  %retval.0 = phi %struct.X509_algor_st* [ null, %err ], [ %call62, %if.end74 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #6
  ret %struct.X509_algor_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare i32 @EVP_CIPHER_get_type(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #2

declare %struct.asn1_type_st* @ASN1_TYPE_new() local_unnamed_addr #2

declare i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() local_unnamed_addr #2

declare i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_param_to_asn1(%struct.evp_cipher_ctx_st* noundef, %struct.asn1_type_st* noundef) local_unnamed_addr #2

declare i32 @ERR_set_mark() local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare i32 @ERR_pop_to_mark() local_unnamed_addr #2

declare void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_get_key_length(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare void @X509_ALGOR_free(%struct.X509_algor_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.X509_algor_st* @PKCS5_pbkdf2_set_ex(i32 noundef %iter, i8* noundef %salt, i32 noundef %saltlen, i32 noundef %prf_nid, i32 noundef %keylen, %struct.ossl_lib_ctx_st* noundef %libctx) local_unnamed_addr #1 {
entry:
  %call = tail call %struct.PBKDF2PARAM_st* @PBKDF2PARAM_new() #7
  %cmp = icmp eq %struct.PBKDF2PARAM_st* %call, null
  br i1 %cmp, label %merr, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #5
  %cmp2 = icmp eq %struct.asn1_string_st* %call1, null
  br i1 %cmp2, label %merr, label %if.end4

if.end4:                                          ; preds = %if.end
  %salt5 = getelementptr inbounds %struct.PBKDF2PARAM_st, %struct.PBKDF2PARAM_st* %call, i64 0, i32 0
  %0 = load %struct.asn1_type_st*, %struct.asn1_type_st** %salt5, align 8, !tbaa !15
  %value = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %0, i64 0, i32 1
  %octet_string = bitcast %union.anon* %value to %struct.asn1_string_st**
  store %struct.asn1_string_st* %call1, %struct.asn1_string_st** %octet_string, align 8, !tbaa !17
  %1 = load %struct.asn1_type_st*, %struct.asn1_type_st** %salt5, align 8, !tbaa !15
  %type = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %1, i64 0, i32 0
  store i32 4, i32* %type, align 8, !tbaa !18
  %cmp7 = icmp slt i32 %saltlen, 0
  br i1 %cmp7, label %merr, label %if.end9

if.end9:                                          ; preds = %if.end4
  %cmp10 = icmp eq i32 %saltlen, 0
  %spec.store.select = select i1 %cmp10, i32 8, i32 %saltlen
  %conv115 = zext i32 %spec.store.select to i64
  %call13 = tail call i8* @CRYPTO_malloc(i64 noundef %conv115, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef 184) #5
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call1, i64 0, i32 2
  store i8* %call13, i8** %data, align 8, !tbaa !20
  %cmp14 = icmp eq i8* %call13, null
  br i1 %cmp14, label %merr, label %if.end17

if.end17:                                         ; preds = %if.end9
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call1, i64 0, i32 0
  store i32 %spec.store.select, i32* %length, align 8, !tbaa !23
  %tobool.not = icmp eq i8* %salt, null
  br i1 %tobool.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end17
  %call21 = tail call i8* @memcpy(i8* noundef nonnull %call13, i8* noundef nonnull %salt, i64 noundef %conv115) #5
  br label %if.end29

if.else:                                          ; preds = %if.end17
  %call24 = tail call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef nonnull %call13, i64 noundef %conv115, i32 noundef 0) #5
  %cmp25 = icmp slt i32 %call24, 1
  br i1 %cmp25, label %merr, label %if.end29

if.end29:                                         ; preds = %if.else, %if.then18
  %cmp30 = icmp slt i32 %iter, 1
  %spec.store.select83 = select i1 %cmp30, i32 2048, i32 %iter
  %iter34 = getelementptr inbounds %struct.PBKDF2PARAM_st, %struct.PBKDF2PARAM_st* %call, i64 0, i32 1
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %iter34, align 8, !tbaa !24
  %conv35116 = zext i32 %spec.store.select83 to i64
  %call36 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef %2, i64 noundef %conv35116) #5
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %merr, label %if.end39

if.end39:                                         ; preds = %if.end29
  %cmp40 = icmp sgt i32 %keylen, 0
  br i1 %cmp40, label %if.then42, label %if.end54

if.then42:                                        ; preds = %if.end39
  %call43 = tail call %struct.asn1_string_st* @ASN1_INTEGER_new() #5
  %keylength = getelementptr inbounds %struct.PBKDF2PARAM_st, %struct.PBKDF2PARAM_st* %call, i64 0, i32 2
  store %struct.asn1_string_st* %call43, %struct.asn1_string_st** %keylength, align 8, !tbaa !25
  %cmp44 = icmp eq %struct.asn1_string_st* %call43, null
  br i1 %cmp44, label %merr, label %if.end47

if.end47:                                         ; preds = %if.then42
  %conv49117 = zext i32 %keylen to i64
  %call50 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef nonnull %call43, i64 noundef %conv49117) #5
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %merr, label %if.end54

if.end54:                                         ; preds = %if.end47, %if.end39
  %cmp55 = icmp sgt i32 %prf_nid, 0
  %cmp57 = icmp ne i32 %prf_nid, 163
  %or.cond = and i1 %cmp55, %cmp57
  br i1 %or.cond, label %if.then59, label %if.end69

if.then59:                                        ; preds = %if.end54
  %call60 = tail call %struct.X509_algor_st* @X509_ALGOR_new() #5
  %prf = getelementptr inbounds %struct.PBKDF2PARAM_st, %struct.PBKDF2PARAM_st* %call, i64 0, i32 3
  store %struct.X509_algor_st* %call60, %struct.X509_algor_st** %prf, align 8, !tbaa !26
  %cmp62 = icmp eq %struct.X509_algor_st* %call60, null
  br i1 %cmp62, label %merr, label %if.end65

if.end65:                                         ; preds = %if.then59
  %call67 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %prf_nid) #5
  %call68 = tail call i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef nonnull %call60, %struct.asn1_object_st* noundef %call67, i32 noundef 5, i8* noundef null) #5
  br label %if.end69

if.end69:                                         ; preds = %if.end65, %if.end54
  %call70 = tail call %struct.X509_algor_st* @X509_ALGOR_new() #5
  %cmp71 = icmp eq %struct.X509_algor_st* %call70, null
  br i1 %cmp71, label %merr, label %if.end74

if.end74:                                         ; preds = %if.end69
  %call75 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 69) #5
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %call70, i64 0, i32 0
  store %struct.asn1_object_st* %call75, %struct.asn1_object_st** %algorithm, align 8, !tbaa !11
  %3 = bitcast %struct.PBKDF2PARAM_st* %call to i8*
  %parameter = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %call70, i64 0, i32 1
  %call77 = tail call %struct.asn1_type_st* @ASN1_TYPE_pack_sequence(%struct.ASN1_ITEM_st* noundef nonnull @PBKDF2PARAM_it.local_it, i8* noundef nonnull %3, %struct.asn1_type_st** noundef nonnull %parameter) #5
  %tobool78.not = icmp eq %struct.asn1_type_st* %call77, null
  br i1 %tobool78.not, label %merr, label %if.end80

if.end80:                                         ; preds = %if.end74
  tail call void @PBKDF2PARAM_free(%struct.PBKDF2PARAM_st* noundef nonnull %call) #7
  br label %cleanup

merr:                                             ; preds = %if.end74, %if.end69, %if.then59, %if.end47, %if.then42, %if.end29, %if.else, %if.end9, %if.end4, %if.end, %entry
  %keyfunc.0 = phi %struct.X509_algor_st* [ null, %entry ], [ null, %if.end ], [ null, %if.end4 ], [ null, %if.end9 ], [ null, %if.then42 ], [ null, %if.then59 ], [ null, %if.end69 ], [ %call70, %if.end74 ], [ null, %if.end47 ], [ null, %if.end29 ], [ null, %if.else ]
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef 235, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.PKCS5_pbkdf2_set_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #5
  tail call void @PBKDF2PARAM_free(%struct.PBKDF2PARAM_st* noundef %call) #7
  tail call void @X509_ALGOR_free(%struct.X509_algor_st* noundef %keyfunc.0) #5
  br label %cleanup

cleanup:                                          ; preds = %merr, %if.end80
  %retval.0 = phi %struct.X509_algor_st* [ null, %merr ], [ %call70, %if.end80 ]
  ret %struct.X509_algor_st* %retval.0
}

declare %struct.X509_algor_st* @X509_ALGOR_new() local_unnamed_addr #2

declare %struct.asn1_type_st* @ASN1_TYPE_pack_sequence(%struct.ASN1_ITEM_st* noundef, i8* noundef, %struct.asn1_type_st** noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define %struct.X509_algor_st* @PKCS5_pbe2_set_iv(%struct.evp_cipher_st* noundef %cipher, i32 noundef %iter, i8* noundef %salt, i32 noundef %saltlen, i8* noundef %aiv, i32 noundef %prf_nid) local_unnamed_addr #1 {
entry:
  %call = tail call %struct.X509_algor_st* @PKCS5_pbe2_set_iv_ex(%struct.evp_cipher_st* noundef %cipher, i32 noundef %iter, i8* noundef %salt, i32 noundef %saltlen, i8* noundef %aiv, i32 noundef %prf_nid, %struct.ossl_lib_ctx_st* noundef null) #7
  ret %struct.X509_algor_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_algor_st* @PKCS5_pbe2_set(%struct.evp_cipher_st* noundef %cipher, i32 noundef %iter, i8* noundef %salt, i32 noundef %saltlen) local_unnamed_addr #1 {
entry:
  %call = tail call %struct.X509_algor_st* @PKCS5_pbe2_set_iv_ex(%struct.evp_cipher_st* noundef %cipher, i32 noundef %iter, i8* noundef %salt, i32 noundef %saltlen, i8* noundef null, i32 noundef -1, %struct.ossl_lib_ctx_st* noundef null) #7
  ret %struct.X509_algor_st* %call
}

declare %struct.asn1_string_st* @ASN1_OCTET_STRING_new() local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @ASN1_INTEGER_new() local_unnamed_addr #2

declare i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef, %struct.asn1_object_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.X509_algor_st* @PKCS5_pbkdf2_set(i32 noundef %iter, i8* noundef %salt, i32 noundef %saltlen, i32 noundef %prf_nid, i32 noundef %keylen) local_unnamed_addr #1 {
entry:
  %call = tail call %struct.X509_algor_st* @PKCS5_pbkdf2_set_ex(i32 noundef %iter, i8* noundef %salt, i32 noundef %saltlen, i32 noundef %prf_nid, i32 noundef %keylen, %struct.ossl_lib_ctx_st* noundef null) #7
  ret %struct.X509_algor_st* %call
}

declare %struct.ASN1_ITEM_st* @X509_ALGOR_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_ANY_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_INTEGER_it() #2

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
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 8}
!9 = !{!"PBE2PARAM_st", !10, i64 0, !10, i64 8}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !10, i64 0}
!12 = !{!"X509_algor_st", !10, i64 0, !10, i64 8}
!13 = !{!12, !10, i64 8}
!14 = !{!9, !10, i64 0}
!15 = !{!16, !10, i64 0}
!16 = !{!"PBKDF2PARAM_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!17 = !{!6, !6, i64 0}
!18 = !{!19, !5, i64 0}
!19 = !{!"asn1_type_st", !5, i64 0, !6, i64 8}
!20 = !{!21, !10, i64 8}
!21 = !{!"asn1_string_st", !5, i64 0, !5, i64 4, !10, i64 8, !22, i64 16}
!22 = !{!"long", !6, i64 0}
!23 = !{!21, !5, i64 0}
!24 = !{!16, !10, i64 8}
!25 = !{!16, !10, i64 16}
!26 = !{!16, !10, i64 24}
