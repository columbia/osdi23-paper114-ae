; ModuleID = 'crypto/pkcs7/pk7_doit.c'
source_filename = "crypto/pkcs7/pk7_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkcs7_st = type { i8*, i64, i32, i32, %struct.asn1_object_st*, %union.anon, %struct.PKCS7_CTX_st }
%struct.asn1_object_st = type opaque
%union.anon = type { i8* }
%struct.PKCS7_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.asn1_type_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.bio_st = type opaque
%struct.evp_cipher_ctx_st = type opaque
%struct.pkcs7_signed_st = type { %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR*, %struct.stack_st_X509*, %struct.stack_st_X509_CRL*, %struct.stack_st_PKCS7_SIGNER_INFO*, %struct.pkcs7_st* }
%struct.stack_st_X509_ALGOR = type opaque
%struct.stack_st_X509 = type opaque
%struct.stack_st_X509_CRL = type opaque
%struct.stack_st_PKCS7_SIGNER_INFO = type opaque
%struct.pkcs7_signedandenveloped_st = type { %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR*, %struct.stack_st_X509*, %struct.stack_st_X509_CRL*, %struct.stack_st_PKCS7_SIGNER_INFO*, %struct.pkcs7_enc_content_st*, %struct.stack_st_PKCS7_RECIP_INFO* }
%struct.pkcs7_enc_content_st = type { %struct.asn1_object_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_cipher_st*, %struct.PKCS7_CTX_st* }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.evp_cipher_st = type opaque
%struct.stack_st_PKCS7_RECIP_INFO = type opaque
%struct.pkcs7_enveloped_st = type { %struct.asn1_string_st*, %struct.stack_st_PKCS7_RECIP_INFO*, %struct.pkcs7_enc_content_st* }
%struct.pkcs7_digest_st = type { %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.pkcs7_st*, %struct.asn1_string_st* }
%struct.stack_st = type opaque
%struct.bio_method_st = type opaque
%struct.engine_st = type opaque
%struct.pkcs7_recip_info_st = type { %struct.asn1_string_st*, %struct.pkcs7_issuer_and_serial_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.x509_st*, %struct.PKCS7_CTX_st* }
%struct.pkcs7_issuer_and_serial_st = type { %struct.X509_name_st*, %struct.asn1_string_st* }
%struct.X509_name_st = type opaque
%struct.x509_st = type opaque
%struct.evp_md_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.evp_pkey_ctx_st = type opaque
%struct.evp_md_ctx_st = type opaque
%struct.pkcs7_signer_info_st = type { %struct.asn1_string_st*, %struct.pkcs7_issuer_and_serial_st*, %struct.X509_algor_st*, %struct.stack_st_X509_ATTRIBUTE*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ATTRIBUTE*, %struct.evp_pkey_st*, %struct.PKCS7_CTX_st* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ASN1_VALUE_st = type opaque
%struct.ASN1_ITEM_st = type opaque
%struct.x509_store_st = type opaque
%struct.x509_store_ctx_st = type opaque
%struct.x509_attributes_st = type opaque

@.str = private unnamed_addr constant [24 x i8] c"crypto/pkcs7/pk7_doit.c\00", align 1
@__func__.PKCS7_dataInit = private unnamed_addr constant [15 x i8] c"PKCS7_dataInit\00", align 1
@__func__.PKCS7_dataDecode = private unnamed_addr constant [17 x i8] c"PKCS7_dataDecode\00", align 1
@__func__.PKCS7_dataFinal = private unnamed_addr constant [16 x i8] c"PKCS7_dataFinal\00", align 1
@__func__.PKCS7_SIGNER_INFO_sign = private unnamed_addr constant [23 x i8] c"PKCS7_SIGNER_INFO_sign\00", align 1
@__func__.PKCS7_dataVerify = private unnamed_addr constant [17 x i8] c"PKCS7_dataVerify\00", align 1
@__func__.PKCS7_signatureVerify = private unnamed_addr constant [22 x i8] c"PKCS7_signatureVerify\00", align 1
@__func__.pkcs7_bio_add_digest = private unnamed_addr constant [21 x i8] c"pkcs7_bio_add_digest\00", align 1
@__func__.pkcs7_encode_rinfo = private unnamed_addr constant [19 x i8] c"pkcs7_encode_rinfo\00", align 1
@__func__.pkcs7_decrypt_rinfo = private unnamed_addr constant [20 x i8] c"pkcs7_decrypt_rinfo\00", align 1
@__func__.PKCS7_find_digest = private unnamed_addr constant [18 x i8] c"PKCS7_find_digest\00", align 1
@__func__.do_pkcs7_signed_attrib = private unnamed_addr constant [23 x i8] c"do_pkcs7_signed_attrib\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS7_type_is_other(%struct.pkcs7_st* nocapture noundef readonly %p7) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 4
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !4
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #5
  %1 = add i32 %call, -27
  %switch = icmp ult i32 %1, -6
  %. = zext i1 %switch to i32
  ret i32 %.
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @PKCS7_get_octet_string(%struct.pkcs7_st* nocapture noundef readonly %p7) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 4
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !4
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #5
  %cmp = icmp eq i32 %call, 21
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %data = bitcast %union.anon* %d to %struct.asn1_string_st**
  br label %return.sink.split

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @PKCS7_type_is_other(%struct.pkcs7_st* noundef nonnull %p7) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %d2 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %other = bitcast %union.anon* %d2 to %struct.asn1_type_st**
  %1 = load %struct.asn1_type_st*, %struct.asn1_type_st** %other, align 8, !tbaa !12
  %tobool3.not = icmp eq %struct.asn1_type_st* %1, null
  br i1 %tobool3.not, label %return, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %land.lhs.true
  %type7 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %1, i64 0, i32 0
  %2 = load i32, i32* %type7, align 8, !tbaa !13
  %cmp8 = icmp eq i32 %2, 4
  br i1 %cmp8, label %if.then9, label %return

if.then9:                                         ; preds = %land.lhs.true4
  %value = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %1, i64 0, i32 1
  %octet_string = bitcast %union.anon.0* %value to %struct.asn1_string_st**
  br label %return.sink.split

return.sink.split:                                ; preds = %if.then, %if.then9
  %octet_string.sink = phi %struct.asn1_string_st** [ %octet_string, %if.then9 ], [ %data, %if.then ]
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %octet_string.sink, align 8, !tbaa !12
  br label %return

return:                                           ; preds = %return.sink.split, %if.end, %land.lhs.true, %land.lhs.true4
  %retval.0 = phi %struct.asn1_string_st* [ null, %land.lhs.true4 ], [ null, %land.lhs.true ], [ null, %if.end ], [ %3, %return.sink.split ]
  ret %struct.asn1_string_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @PKCS7_dataInit(%struct.pkcs7_st* noundef %p7, %struct.bio_st* noundef %bio) local_unnamed_addr #0 {
entry:
  %out = alloca %struct.bio_st*, align 8
  %key = alloca [64 x i8], align 16
  %iv = alloca [16 x i8], align 16
  %ctx = alloca %struct.evp_cipher_ctx_st*, align 8
  %0 = bitcast %struct.bio_st** %out to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store %struct.bio_st* null, %struct.bio_st** %out, align 8, !tbaa !15
  %cmp = icmp eq %struct.pkcs7_st* %p7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 221, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.PKCS7_dataInit, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 143, i8* noundef null) #5
  br label %cleanup197

if.end:                                           ; preds = %entry
  %call = tail call %struct.PKCS7_CTX_st* @ossl_pkcs7_get0_ctx(%struct.pkcs7_st* noundef nonnull %p7) #5
  %call1 = tail call %struct.ossl_lib_ctx_st* @ossl_pkcs7_ctx_get0_libctx(%struct.PKCS7_CTX_st* noundef %call) #5
  %call2 = tail call i8* @ossl_pkcs7_ctx_get0_propq(%struct.PKCS7_CTX_st* noundef %call) #5
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %ptr = getelementptr %union.anon, %union.anon* %d, i64 0, i32 0
  %1 = load i8*, i8** %ptr, align 8, !tbaa !12
  %cmp3 = icmp eq i8* %1, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 239, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.PKCS7_dataInit, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 122, i8* noundef null) #5
  br label %cleanup197

if.end5:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 4
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !4
  %call6 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %2) #5
  %state = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 2
  store i32 0, i32* %state, align 8, !tbaa !16
  switch i32 %call6, label %sw.default [
    i32 22, label %sw.bb
    i32 24, label %sw.bb11
    i32 23, label %sw.bb25
    i32 25, label %sw.bb39
    i32 21, label %sw.epilog
  ]

sw.bb:                                            ; preds = %if.end5
  %sign = bitcast %union.anon* %d to %struct.pkcs7_signed_st**
  %3 = load %struct.pkcs7_signed_st*, %struct.pkcs7_signed_st** %sign, align 8, !tbaa !12
  %md_algs = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %3, i64 0, i32 1
  %4 = load %struct.stack_st_X509_ALGOR*, %struct.stack_st_X509_ALGOR** %md_algs, align 8, !tbaa !17
  %contents = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %3, i64 0, i32 5
  br label %sw.epilog.sink.split

sw.bb11:                                          ; preds = %if.end5
  %signed_and_enveloped = bitcast %union.anon* %d to %struct.pkcs7_signedandenveloped_st**
  %5 = load %struct.pkcs7_signedandenveloped_st*, %struct.pkcs7_signedandenveloped_st** %signed_and_enveloped, align 8, !tbaa !12
  %recipientinfo = getelementptr inbounds %struct.pkcs7_signedandenveloped_st, %struct.pkcs7_signedandenveloped_st* %5, i64 0, i32 6
  %6 = load %struct.stack_st_PKCS7_RECIP_INFO*, %struct.stack_st_PKCS7_RECIP_INFO** %recipientinfo, align 8, !tbaa !19
  %md_algs15 = getelementptr inbounds %struct.pkcs7_signedandenveloped_st, %struct.pkcs7_signedandenveloped_st* %5, i64 0, i32 1
  %7 = load %struct.stack_st_X509_ALGOR*, %struct.stack_st_X509_ALGOR** %md_algs15, align 8, !tbaa !21
  %enc_data = getelementptr inbounds %struct.pkcs7_signedandenveloped_st, %struct.pkcs7_signedandenveloped_st* %5, i64 0, i32 5
  %8 = load %struct.pkcs7_enc_content_st*, %struct.pkcs7_enc_content_st** %enc_data, align 8, !tbaa !22
  %algorithm = getelementptr inbounds %struct.pkcs7_enc_content_st, %struct.pkcs7_enc_content_st* %8, i64 0, i32 1
  %9 = load %struct.X509_algor_st*, %struct.X509_algor_st** %algorithm, align 8, !tbaa !23
  %cipher21 = getelementptr inbounds %struct.pkcs7_enc_content_st, %struct.pkcs7_enc_content_st* %8, i64 0, i32 3
  %10 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher21, align 8, !tbaa !25
  %cmp22 = icmp eq %struct.evp_cipher_st* %10, null
  br i1 %cmp22, label %if.then23, label %sw.epilog

if.then23:                                        ; preds = %sw.bb11
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 257, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.PKCS7_dataInit, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 116, i8* noundef null) #5
  br label %err

sw.bb25:                                          ; preds = %if.end5
  %enveloped = bitcast %union.anon* %d to %struct.pkcs7_enveloped_st**
  %11 = load %struct.pkcs7_enveloped_st*, %struct.pkcs7_enveloped_st** %enveloped, align 8, !tbaa !12
  %recipientinfo27 = getelementptr inbounds %struct.pkcs7_enveloped_st, %struct.pkcs7_enveloped_st* %11, i64 0, i32 1
  %12 = load %struct.stack_st_PKCS7_RECIP_INFO*, %struct.stack_st_PKCS7_RECIP_INFO** %recipientinfo27, align 8, !tbaa !26
  %enc_data30 = getelementptr inbounds %struct.pkcs7_enveloped_st, %struct.pkcs7_enveloped_st* %11, i64 0, i32 2
  %13 = load %struct.pkcs7_enc_content_st*, %struct.pkcs7_enc_content_st** %enc_data30, align 8, !tbaa !28
  %algorithm31 = getelementptr inbounds %struct.pkcs7_enc_content_st, %struct.pkcs7_enc_content_st* %13, i64 0, i32 1
  %14 = load %struct.X509_algor_st*, %struct.X509_algor_st** %algorithm31, align 8, !tbaa !23
  %cipher35 = getelementptr inbounds %struct.pkcs7_enc_content_st, %struct.pkcs7_enc_content_st* %13, i64 0, i32 3
  %15 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher35, align 8, !tbaa !25
  %cmp36 = icmp eq %struct.evp_cipher_st* %15, null
  br i1 %cmp36, label %if.then37, label %sw.epilog

if.then37:                                        ; preds = %sw.bb25
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 266, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.PKCS7_dataInit, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 116, i8* noundef null) #5
  br label %err

sw.bb39:                                          ; preds = %if.end5
  %digest = bitcast %union.anon* %d to %struct.pkcs7_digest_st**
  %16 = load %struct.pkcs7_digest_st*, %struct.pkcs7_digest_st** %digest, align 8, !tbaa !12
  %md = getelementptr inbounds %struct.pkcs7_digest_st, %struct.pkcs7_digest_st* %16, i64 0, i32 1
  %17 = load %struct.X509_algor_st*, %struct.X509_algor_st** %md, align 8, !tbaa !29
  %contents43 = getelementptr inbounds %struct.pkcs7_digest_st, %struct.pkcs7_digest_st* %16, i64 0, i32 2
  br label %sw.epilog.sink.split

sw.default:                                       ; preds = %if.end5
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 277, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.PKCS7_dataInit, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 112, i8* noundef null) #5
  br label %err

sw.epilog.sink.split:                             ; preds = %sw.bb, %sw.bb39
  %contents43.sink = phi %struct.pkcs7_st** [ %contents43, %sw.bb39 ], [ %contents, %sw.bb ]
  %md_sk.0.ph = phi %struct.stack_st_X509_ALGOR* [ null, %sw.bb39 ], [ %4, %sw.bb ]
  %xa.0.ph = phi %struct.X509_algor_st* [ %17, %sw.bb39 ], [ null, %sw.bb ]
  %18 = load %struct.pkcs7_st*, %struct.pkcs7_st** %contents43.sink, align 8, !tbaa !15
  %call44 = tail call %struct.asn1_string_st* @PKCS7_get_octet_string(%struct.pkcs7_st* noundef %18) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb25, %sw.bb11, %if.end5
  %evp_cipher.0 = phi %struct.evp_cipher_st* [ null, %if.end5 ], [ %15, %sw.bb25 ], [ %10, %sw.bb11 ], [ null, %sw.epilog.sink.split ]
  %md_sk.0 = phi %struct.stack_st_X509_ALGOR* [ null, %if.end5 ], [ null, %sw.bb25 ], [ %7, %sw.bb11 ], [ %md_sk.0.ph, %sw.epilog.sink.split ]
  %rsk.0 = phi %struct.stack_st_PKCS7_RECIP_INFO* [ null, %if.end5 ], [ %12, %sw.bb25 ], [ %6, %sw.bb11 ], [ null, %sw.epilog.sink.split ]
  %xalg.0 = phi %struct.X509_algor_st* [ null, %if.end5 ], [ %14, %sw.bb25 ], [ %9, %sw.bb11 ], [ null, %sw.epilog.sink.split ]
  %os.0 = phi %struct.asn1_string_st* [ null, %if.end5 ], [ null, %sw.bb25 ], [ null, %sw.bb11 ], [ %call44, %sw.epilog.sink.split ]
  %xa.0 = phi %struct.X509_algor_st* [ null, %if.end5 ], [ null, %sw.bb25 ], [ null, %sw.bb11 ], [ %xa.0.ph, %sw.epilog.sink.split ]
  %call45 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_ALGOR_sk_type(%struct.stack_st_X509_ALGOR* noundef %md_sk.0) #6
  %call46296 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call45) #5
  %cmp47297 = icmp sgt i32 %call46296, 0
  br i1 %cmp47297, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %call46 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call45) #5
  %cmp47 = icmp slt i32 %inc, %call46
  br i1 %cmp47, label %for.body, label %for.end, !llvm.loop !31

for.body:                                         ; preds = %sw.epilog, %for.cond
  %i.0298 = phi i32 [ %inc, %for.cond ], [ 0, %sw.epilog ]
  %call49 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call45, i32 noundef %i.0298) #5
  %19 = bitcast i8* %call49 to %struct.X509_algor_st*
  %call50 = call fastcc i32 @pkcs7_bio_add_digest(%struct.bio_st** noundef nonnull %out, %struct.X509_algor_st* noundef %19, %struct.PKCS7_CTX_st* noundef %call) #6
  %tobool.not = icmp eq i32 %call50, 0
  %inc = add nuw nsw i32 %i.0298, 1
  br i1 %tobool.not, label %err, label %for.cond

for.end:                                          ; preds = %for.cond, %sw.epilog
  %tobool53.not = icmp eq %struct.X509_algor_st* %xa.0, null
  br i1 %tobool53.not, label %if.end57, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end
  %call54 = call fastcc i32 @pkcs7_bio_add_digest(%struct.bio_st** noundef nonnull %out, %struct.X509_algor_st* noundef nonnull %xa.0, %struct.PKCS7_CTX_st* noundef %call) #6
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %err, label %if.end57

if.end57:                                         ; preds = %land.lhs.true, %for.end
  %cmp58.not = icmp eq %struct.evp_cipher_st* %evp_cipher.0, null
  br i1 %cmp58.not, label %if.end155, label %if.then59

if.then59:                                        ; preds = %if.end57
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %key, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %20) #7
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %21) #7
  %22 = bitcast %struct.evp_cipher_ctx_st** %ctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #7
  %call60 = tail call %struct.bio_method_st* @BIO_f_cipher() #5
  %call61 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call60) #5
  %cmp62 = icmp eq %struct.bio_st* %call61, null
  br i1 %cmp62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.then59
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 295, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.PKCS7_dataInit, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 524320, i8* noundef null) #5
  br label %cleanup.thread

if.end64:                                         ; preds = %if.then59
  %call65 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call61, i32 noundef 129, i64 noundef 0, i8* noundef nonnull %22) #5
  %call66 = call i32 @EVP_CIPHER_get_key_length(%struct.evp_cipher_st* noundef nonnull %evp_cipher.0) #5
  %call67 = call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef nonnull %evp_cipher.0) #5
  %call68 = call i32 @EVP_CIPHER_get_type(%struct.evp_cipher_st* noundef nonnull %evp_cipher.0) #5
  %call69 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %call68) #5
  %algorithm70 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %xalg.0, i64 0, i32 0
  store %struct.asn1_object_st* %call69, %struct.asn1_object_st** %algorithm70, align 8, !tbaa !33
  %cmp71 = icmp sgt i32 %call67, 0
  br i1 %cmp71, label %if.then72, label %if.end78

if.then72:                                        ; preds = %if.end64
  %conv295 = zext i32 %call67 to i64
  %call73 = call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %call1, i8* noundef nonnull %21, i64 noundef %conv295, i32 noundef 0) #5
  %cmp74 = icmp slt i32 %call73, 1
  br i1 %cmp74, label %cleanup.thread, label %if.end78

if.end78:                                         ; preds = %if.then72, %if.end64
  %call79 = call i32 @ERR_set_mark() #5
  %call80 = call i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef nonnull %evp_cipher.0) #5
  %call81 = call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %call1, i8* noundef %call80, i8* noundef %call2) #5
  %call82 = call i32 @ERR_pop_to_mark() #5
  %cmp83.not = icmp eq %struct.evp_cipher_st* %call81, null
  %evp_cipher.0.call81 = select i1 %cmp83.not, %struct.evp_cipher_st* %evp_cipher.0, %struct.evp_cipher_st* %call81
  %23 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx, align 8, !tbaa !15
  %call87 = call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %23, %struct.evp_cipher_st* noundef nonnull %evp_cipher.0.call81, %struct.engine_st* noundef null, i8* noundef null, i8* noundef null, i32 noundef 1) #5
  %cmp88 = icmp slt i32 %call87, 1
  br i1 %cmp88, label %cleanup.thread, label %if.end91

if.end91:                                         ; preds = %if.end78
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %call81) #5
  %24 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx, align 8, !tbaa !15
  %call93 = call i32 @EVP_CIPHER_CTX_rand_key(%struct.evp_cipher_ctx_st* noundef %24, i8* noundef nonnull %20) #5
  %cmp94 = icmp slt i32 %call93, 1
  br i1 %cmp94, label %cleanup.thread, label %if.end97

if.end97:                                         ; preds = %if.end91
  %25 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx, align 8, !tbaa !15
  %call100 = call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %25, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef nonnull %20, i8* noundef nonnull %21, i32 noundef 1) #5
  %cmp101 = icmp slt i32 %call100, 1
  br i1 %cmp101, label %cleanup.thread, label %if.end104

if.end104:                                        ; preds = %if.end97
  br i1 %cmp71, label %if.then107, label %if.end125

if.then107:                                       ; preds = %if.end104
  %parameter = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %xalg.0, i64 0, i32 1
  %26 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter, align 8, !tbaa !35
  %cmp108 = icmp eq %struct.asn1_type_st* %26, null
  br i1 %cmp108, label %if.then110, label %if.end118

if.then110:                                       ; preds = %if.then107
  %call111 = call %struct.asn1_type_st* @ASN1_TYPE_new() #5
  store %struct.asn1_type_st* %call111, %struct.asn1_type_st** %parameter, align 8, !tbaa !35
  %cmp114 = icmp eq %struct.asn1_type_st* %call111, null
  br i1 %cmp114, label %cleanup.thread, label %if.end118

if.end118:                                        ; preds = %if.then110, %if.then107
  %27 = phi %struct.asn1_type_st* [ %call111, %if.then110 ], [ %26, %if.then107 ]
  %28 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx, align 8, !tbaa !15
  %call120 = call i32 @EVP_CIPHER_param_to_asn1(%struct.evp_cipher_ctx_st* noundef %28, %struct.asn1_type_st* noundef nonnull %27) #5
  %cmp121 = icmp slt i32 %call120, 0
  br i1 %cmp121, label %cleanup.thread, label %if.end125

if.end125:                                        ; preds = %if.end118, %if.end104
  %call127 = call fastcc %struct.stack_st* @ossl_check_const_PKCS7_RECIP_INFO_sk_type(%struct.stack_st_PKCS7_RECIP_INFO* noundef %rsk.0) #6
  %call128299 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call127) #5
  %cmp129300 = icmp sgt i32 %call128299, 0
  br i1 %cmp129300, label %for.body131, label %for.end142

for.cond126:                                      ; preds = %for.body131
  %call128 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call127) #5
  %cmp129 = icmp slt i32 %inc141, %call128
  br i1 %cmp129, label %for.body131, label %for.end142, !llvm.loop !36

for.body131:                                      ; preds = %if.end125, %for.cond126
  %i.1301 = phi i32 [ %inc141, %for.cond126 ], [ 0, %if.end125 ]
  %call133 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call127, i32 noundef %i.1301) #5
  %29 = bitcast i8* %call133 to %struct.pkcs7_recip_info_st*
  %call135 = call fastcc i32 @pkcs7_encode_rinfo(%struct.pkcs7_recip_info_st* noundef %29, i8* noundef nonnull %20, i32 noundef %call66) #6
  %cmp136 = icmp slt i32 %call135, 1
  %inc141 = add nuw nsw i32 %i.1301, 1
  br i1 %cmp136, label %cleanup.thread, label %for.cond126

for.end142:                                       ; preds = %for.cond126, %if.end125
  %conv144 = sext i32 %call66 to i64
  call void @OPENSSL_cleanse(i8* noundef nonnull %20, i64 noundef %conv144) #5
  %30 = load %struct.bio_st*, %struct.bio_st** %out, align 8, !tbaa !15
  %cmp145 = icmp eq %struct.bio_st* %30, null
  br i1 %cmp145, label %if.then147, label %if.else148

if.then147:                                       ; preds = %for.end142
  store %struct.bio_st* %call61, %struct.bio_st** %out, align 8, !tbaa !15
  br label %cleanup

if.else148:                                       ; preds = %for.end142
  %call149 = call %struct.bio_st* @BIO_push(%struct.bio_st* noundef nonnull %30, %struct.bio_st* noundef nonnull %call61) #5
  br label %cleanup

cleanup.thread:                                   ; preds = %for.body131, %if.then63, %if.then72, %if.end78, %if.end91, %if.end97, %if.then110, %if.end118
  %fetched_cipher.0.ph = phi %struct.evp_cipher_st* [ null, %if.end118 ], [ null, %if.then110 ], [ null, %if.end97 ], [ null, %if.end91 ], [ %call81, %if.end78 ], [ null, %if.then72 ], [ null, %if.then63 ], [ null, %for.body131 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %21) #7
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %20) #7
  br label %err

cleanup:                                          ; preds = %if.then147, %if.else148
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %21) #7
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %20) #7
  br label %if.end155

if.end155:                                        ; preds = %cleanup, %if.end57
  %cmp156 = icmp eq %struct.bio_st* %bio, null
  br i1 %cmp156, label %if.then158, label %if.end191

if.then158:                                       ; preds = %if.end155
  %31 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !4
  %call160 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %31) #5
  %cmp161 = icmp eq i32 %call160, 22
  br i1 %cmp161, label %land.lhs.true163, label %if.else169

land.lhs.true163:                                 ; preds = %if.then158
  %call164 = call i64 @PKCS7_ctrl(%struct.pkcs7_st* noundef nonnull %p7, i32 noundef 2, i64 noundef 0, i8* noundef null) #5
  %tobool165.not = icmp eq i64 %call164, 0
  br i1 %tobool165.not, label %if.else169, label %if.then166

if.then166:                                       ; preds = %land.lhs.true163
  %call167 = call %struct.bio_method_st* @BIO_s_null() #5
  %call168 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call167) #5
  br label %if.end186

if.else169:                                       ; preds = %land.lhs.true163, %if.then158
  %tobool170.not = icmp eq %struct.asn1_string_st* %os.0, null
  br i1 %tobool170.not, label %if.else177, label %land.lhs.true171

land.lhs.true171:                                 ; preds = %if.else169
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %os.0, i64 0, i32 0
  %32 = load i32, i32* %length, align 8, !tbaa !37
  %cmp172 = icmp sgt i32 %32, 0
  br i1 %cmp172, label %if.then174, label %if.else177

if.then174:                                       ; preds = %land.lhs.true171
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %os.0, i64 0, i32 2
  %33 = load i8*, i8** %data, align 8, !tbaa !39
  %call176 = call %struct.bio_st* @BIO_new_mem_buf(i8* noundef %33, i32 noundef %32) #5
  br label %if.end186

if.else177:                                       ; preds = %land.lhs.true171, %if.else169
  %call178 = call %struct.bio_method_st* @BIO_s_mem() #5
  %call179 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call178) #5
  %cmp180 = icmp eq %struct.bio_st* %call179, null
  br i1 %cmp180, label %err, label %if.end186.thread

if.end186.thread:                                 ; preds = %if.else177
  %call184 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call179, i32 noundef 130, i64 noundef 0, i8* noundef null) #5
  br label %if.end191

if.end186:                                        ; preds = %if.then174, %if.then166
  %bio.addr.0 = phi %struct.bio_st* [ %call168, %if.then166 ], [ %call176, %if.then174 ]
  %cmp187 = icmp eq %struct.bio_st* %bio.addr.0, null
  br i1 %cmp187, label %err, label %if.end191

if.end191:                                        ; preds = %if.end186.thread, %if.end186, %if.end155
  %bio.addr.1 = phi %struct.bio_st* [ %bio.addr.0, %if.end186 ], [ %bio, %if.end155 ], [ %call179, %if.end186.thread ]
  %34 = load %struct.bio_st*, %struct.bio_st** %out, align 8, !tbaa !15
  %tobool192.not = icmp eq %struct.bio_st* %34, null
  br i1 %tobool192.not, label %cleanup197, label %if.then193

if.then193:                                       ; preds = %if.end191
  %call194 = call %struct.bio_st* @BIO_push(%struct.bio_st* noundef nonnull %34, %struct.bio_st* noundef nonnull %bio.addr.1) #5
  br label %cleanup197

err:                                              ; preds = %for.body, %cleanup.thread, %if.end186, %if.else177, %land.lhs.true, %sw.default, %if.then37, %if.then23
  %fetched_cipher.2 = phi %struct.evp_cipher_st* [ null, %sw.default ], [ null, %if.end186 ], [ null, %if.else177 ], [ null, %land.lhs.true ], [ null, %if.then37 ], [ null, %if.then23 ], [ %fetched_cipher.0.ph, %cleanup.thread ], [ null, %for.body ]
  %btmp.2 = phi %struct.bio_st* [ null, %sw.default ], [ null, %if.end186 ], [ null, %if.else177 ], [ null, %land.lhs.true ], [ null, %if.then37 ], [ null, %if.then23 ], [ %call61, %cleanup.thread ], [ null, %for.body ]
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %fetched_cipher.2) #5
  %35 = load %struct.bio_st*, %struct.bio_st** %out, align 8, !tbaa !15
  call void @BIO_free_all(%struct.bio_st* noundef %35) #5
  call void @BIO_free_all(%struct.bio_st* noundef %btmp.2) #5
  br label %cleanup197

cleanup197:                                       ; preds = %if.end191, %if.then193, %err, %if.then4, %if.then
  %retval.0 = phi %struct.bio_st* [ null, %if.then ], [ null, %if.then4 ], [ null, %err ], [ %34, %if.then193 ], [ %bio.addr.1, %if.end191 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret %struct.bio_st* %retval.0
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare %struct.PKCS7_CTX_st* @ossl_pkcs7_get0_ctx(%struct.pkcs7_st* noundef) local_unnamed_addr #2

declare %struct.ossl_lib_ctx_st* @ossl_pkcs7_ctx_get0_libctx(%struct.PKCS7_CTX_st* noundef) local_unnamed_addr #2

declare i8* @ossl_pkcs7_ctx_get0_propq(%struct.PKCS7_CTX_st* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_ALGOR_sk_type(%struct.stack_st_X509_ALGOR* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_ALGOR* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @pkcs7_bio_add_digest(%struct.bio_st** nocapture noundef %pbio, %struct.X509_algor_st* nocapture noundef readonly %alg, %struct.PKCS7_CTX_st* noundef %ctx) unnamed_addr #0 {
entry:
  %name = alloca [50 x i8], align 16
  %0 = getelementptr inbounds [50 x i8], [50 x i8]* %name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 50, i8* nonnull %0) #7
  %call = tail call %struct.bio_method_st* @BIO_f_md() #5
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #5
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.pkcs7_bio_add_digest, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 524320, i8* noundef null) #5
  br label %err

if.end:                                           ; preds = %entry
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %alg, i64 0, i32 0
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !33
  %call2 = call i32 @OBJ_obj2txt(i8* noundef nonnull %0, i32 noundef 50, %struct.asn1_object_st* noundef %1, i32 noundef 0) #5
  %call3 = call i32 @ERR_set_mark() #5
  %call4 = call %struct.ossl_lib_ctx_st* @ossl_pkcs7_ctx_get0_libctx(%struct.PKCS7_CTX_st* noundef %ctx) #5
  %call6 = call i8* @ossl_pkcs7_ctx_get0_propq(%struct.PKCS7_CTX_st* noundef %ctx) #5
  %call7 = call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %call4, i8* noundef nonnull %0, i8* noundef %call6) #5
  %cmp8.not = icmp eq %struct.evp_md_st* %call7, null
  br i1 %cmp8.not, label %if.end12, label %if.end16

if.end12:                                         ; preds = %if.end
  %call11 = call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef nonnull %0) #5
  %cmp13 = icmp eq %struct.evp_md_st* %call11, null
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end12
  %call15 = call i32 @ERR_clear_last_mark() #5
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.pkcs7_bio_add_digest, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 109, i8* noundef null) #5
  br label %err

if.end16:                                         ; preds = %if.end, %if.end12
  %md.044 = phi %struct.evp_md_st* [ %call11, %if.end12 ], [ %call7, %if.end ]
  %call17 = call i32 @ERR_pop_to_mark() #5
  %2 = bitcast %struct.evp_md_st* %md.044 to i8*
  %call18 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 111, i64 noundef 0, i8* noundef nonnull %2) #5
  call void @EVP_MD_free(%struct.evp_md_st* noundef %call7) #5
  %3 = load %struct.bio_st*, %struct.bio_st** %pbio, align 8, !tbaa !15
  %cmp19 = icmp eq %struct.bio_st* %3, null
  br i1 %cmp19, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.end16
  store %struct.bio_st* %call1, %struct.bio_st** %pbio, align 8, !tbaa !15
  br label %cleanup

if.else21:                                        ; preds = %if.end16
  %call22 = call %struct.bio_st* @BIO_push(%struct.bio_st* noundef nonnull %3, %struct.bio_st* noundef nonnull %call1) #5
  %tobool.not = icmp eq %struct.bio_st* %call22, null
  br i1 %tobool.not, label %if.then23, label %cleanup

if.then23:                                        ; preds = %if.else21
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.pkcs7_bio_add_digest, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 524320, i8* noundef null) #5
  br label %err

err:                                              ; preds = %if.then23, %if.then14, %if.then
  %call26 = call i32 @BIO_free(%struct.bio_st* noundef %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.else21, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.else21 ], [ 1, %if.then20 ]
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %0) #7
  ret i32 %retval.0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

declare %struct.bio_method_st* @BIO_f_cipher() local_unnamed_addr #2

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_get_key_length(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_get_type(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ERR_set_mark() local_unnamed_addr #2

declare %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare i32 @ERR_pop_to_mark() local_unnamed_addr #2

declare i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_rand_key(%struct.evp_cipher_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.asn1_type_st* @ASN1_TYPE_new() local_unnamed_addr #2

declare i32 @EVP_CIPHER_param_to_asn1(%struct.evp_cipher_ctx_st* noundef, %struct.asn1_type_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_PKCS7_RECIP_INFO_sk_type(%struct.stack_st_PKCS7_RECIP_INFO* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_PKCS7_RECIP_INFO* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @pkcs7_encode_rinfo(%struct.pkcs7_recip_info_st* nocapture noundef readonly %ri, i8* noundef %key, i32 noundef %keylen) unnamed_addr #0 {
entry:
  %eklen = alloca i64, align 8
  %0 = bitcast i64* %eklen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %ctx1 = getelementptr inbounds %struct.pkcs7_recip_info_st, %struct.pkcs7_recip_info_st* %ri, i64 0, i32 5
  %1 = load %struct.PKCS7_CTX_st*, %struct.PKCS7_CTX_st** %ctx1, align 8, !tbaa !40
  %cert = getelementptr inbounds %struct.pkcs7_recip_info_st, %struct.pkcs7_recip_info_st* %ri, i64 0, i32 4
  %2 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !42
  %call = tail call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef %2) #5
  %cmp = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.ossl_lib_ctx_st* @ossl_pkcs7_ctx_get0_libctx(%struct.PKCS7_CTX_st* noundef %1) #5
  %call3 = tail call i8* @ossl_pkcs7_ctx_get0_propq(%struct.PKCS7_CTX_st* noundef %1) #5
  %call4 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %call2, %struct.evp_pkey_st* noundef nonnull %call, i8* noundef %call3) #5
  %cmp5 = icmp eq %struct.evp_pkey_ctx_st* %call4, null
  br i1 %cmp5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @EVP_PKEY_encrypt_init(%struct.evp_pkey_ctx_st* noundef nonnull %call4) #5
  %cmp9 = icmp slt i32 %call8, 1
  br i1 %cmp9, label %err, label %if.end11

if.end11:                                         ; preds = %if.end7
  %conv = sext i32 %keylen to i64
  %call12 = call i32 @EVP_PKEY_encrypt(%struct.evp_pkey_ctx_st* noundef nonnull %call4, i8* noundef null, i64* noundef nonnull %eklen, i8* noundef %key, i64 noundef %conv) #5
  %cmp13 = icmp slt i32 %call12, 1
  br i1 %cmp13, label %err, label %if.end16

if.end16:                                         ; preds = %if.end11
  %3 = load i64, i64* %eklen, align 8, !tbaa !43
  %call17 = call i8* @CRYPTO_malloc(i64 noundef %3, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 129) #5
  %cmp18 = icmp eq i8* %call17, null
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end16
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 132, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.pkcs7_encode_rinfo, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 786688, i8* noundef null) #5
  br label %err

if.end21:                                         ; preds = %if.end16
  %call23 = call i32 @EVP_PKEY_encrypt(%struct.evp_pkey_ctx_st* noundef nonnull %call4, i8* noundef nonnull %call17, i64* noundef nonnull %eklen, i8* noundef %key, i64 noundef %conv) #5
  %cmp24 = icmp slt i32 %call23, 1
  br i1 %cmp24, label %err, label %if.end27

if.end27:                                         ; preds = %if.end21
  %enc_key = getelementptr inbounds %struct.pkcs7_recip_info_st, %struct.pkcs7_recip_info_st* %ri, i64 0, i32 3
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %enc_key, align 8, !tbaa !44
  %5 = load i64, i64* %eklen, align 8, !tbaa !43
  %conv28 = trunc i64 %5 to i32
  call void @ASN1_STRING_set0(%struct.asn1_string_st* noundef %4, i8* noundef nonnull %call17, i32 noundef %conv28) #5
  br label %err

err:                                              ; preds = %if.end21, %if.end11, %if.end7, %if.end27, %if.then20
  %ek.0 = phi i8* [ null, %if.end7 ], [ null, %if.end11 ], [ null, %if.then20 ], [ %call17, %if.end21 ], [ null, %if.end27 ]
  %ret.0 = phi i32 [ 0, %if.end7 ], [ 0, %if.end11 ], [ 0, %if.then20 ], [ 0, %if.end21 ], [ 1, %if.end27 ]
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %call4) #5
  call void @CRYPTO_free(i8* noundef %ek.0, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 146) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %entry ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #2

declare %struct.bio_st* @BIO_push(%struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare i64 @PKCS7_ctrl(%struct.pkcs7_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare %struct.bio_method_st* @BIO_s_null() local_unnamed_addr #2

declare %struct.bio_st* @BIO_new_mem_buf(i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #2

declare void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @PKCS7_dataDecode(%struct.pkcs7_st* noundef %p7, %struct.evp_pkey_st* noundef %pkey, %struct.bio_st* noundef %in_bio, %struct.x509_st* noundef %pcert) local_unnamed_addr #0 {
entry:
  %evp_ctx = alloca %struct.evp_cipher_ctx_st*, align 8
  %ek = alloca i8*, align 8
  %eklen = alloca i32, align 4
  %name = alloca [50 x i8], align 16
  %0 = bitcast %struct.evp_cipher_ctx_st** %evp_ctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store %struct.evp_cipher_ctx_st* null, %struct.evp_cipher_ctx_st** %evp_ctx, align 8, !tbaa !15
  %1 = bitcast i8** %ek to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  store i8* null, i8** %ek, align 8, !tbaa !15
  %2 = bitcast i32* %eklen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #7
  store i32 0, i32* %eklen, align 4, !tbaa !45
  %3 = getelementptr inbounds [50 x i8], [50 x i8]* %name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 50, i8* nonnull %3) #7
  %cmp = icmp eq %struct.pkcs7_st* %p7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 414, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.PKCS7_dataDecode, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 143, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call %struct.PKCS7_CTX_st* @ossl_pkcs7_get0_ctx(%struct.pkcs7_st* noundef nonnull %p7) #5
  %call1 = tail call %struct.ossl_lib_ctx_st* @ossl_pkcs7_ctx_get0_libctx(%struct.PKCS7_CTX_st* noundef %call) #5
  %call2 = tail call i8* @ossl_pkcs7_ctx_get0_propq(%struct.PKCS7_CTX_st* noundef %call) #5
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %ptr = getelementptr %union.anon, %union.anon* %d, i64 0, i32 0
  %4 = load i8*, i8** %ptr, align 8, !tbaa !12
  %cmp3 = icmp eq i8* %4, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 423, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.PKCS7_dataDecode, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 122, i8* noundef null) #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 4
  %5 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !4
  %call6 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %5) #5
  %state = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 2
  store i32 0, i32* %state, align 8, !tbaa !16
  switch i32 %call6, label %sw.default [
    i32 22, label %sw.bb
    i32 24, label %sw.bb19
    i32 23, label %sw.bb45
  ]

sw.bb:                                            ; preds = %if.end5
  %sign = bitcast %union.anon* %d to %struct.pkcs7_signed_st**
  %6 = load %struct.pkcs7_signed_st*, %struct.pkcs7_signed_st** %sign, align 8, !tbaa !12
  %contents = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %6, i64 0, i32 5
  %7 = load %struct.pkcs7_st*, %struct.pkcs7_st** %contents, align 8, !tbaa !46
  %call8 = tail call %struct.asn1_string_st* @PKCS7_get_octet_string(%struct.pkcs7_st* noundef %7) #6
  %8 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !4
  %call10 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %8) #5
  %cmp11 = icmp eq i32 %call10, 22
  br i1 %cmp11, label %land.lhs.true, label %land.lhs.true13

land.lhs.true:                                    ; preds = %sw.bb
  %call12 = tail call i64 @PKCS7_ctrl(%struct.pkcs7_st* noundef nonnull %p7, i32 noundef 2, i64 noundef 0, i8* noundef null) #5
  %tobool = icmp eq i64 %call12, 0
  %cmp14 = icmp eq %struct.asn1_string_st* %call8, null
  %or.cond = select i1 %tobool, i1 %cmp14, i1 false
  br i1 %or.cond, label %if.then15, label %if.end16

land.lhs.true13:                                  ; preds = %sw.bb
  %cmp14.old = icmp eq %struct.asn1_string_st* %call8, null
  br i1 %cmp14.old, label %if.then15, label %if.end16

if.then15:                                        ; preds = %land.lhs.true, %land.lhs.true13
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 440, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.PKCS7_dataDecode, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 155, i8* noundef null) #5
  br label %err

if.end16:                                         ; preds = %land.lhs.true13, %land.lhs.true
  %9 = load %struct.pkcs7_signed_st*, %struct.pkcs7_signed_st** %sign, align 8, !tbaa !12
  %md_algs = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %9, i64 0, i32 1
  %10 = load %struct.stack_st_X509_ALGOR*, %struct.stack_st_X509_ALGOR** %md_algs, align 8, !tbaa !17
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end5
  %signed_and_enveloped = bitcast %union.anon* %d to %struct.pkcs7_signedandenveloped_st**
  %11 = load %struct.pkcs7_signedandenveloped_st*, %struct.pkcs7_signedandenveloped_st** %signed_and_enveloped, align 8, !tbaa !12
  %recipientinfo = getelementptr inbounds %struct.pkcs7_signedandenveloped_st, %struct.pkcs7_signedandenveloped_st* %11, i64 0, i32 6
  %12 = load %struct.stack_st_PKCS7_RECIP_INFO*, %struct.stack_st_PKCS7_RECIP_INFO** %recipientinfo, align 8, !tbaa !19
  %md_algs23 = getelementptr inbounds %struct.pkcs7_signedandenveloped_st, %struct.pkcs7_signedandenveloped_st* %11, i64 0, i32 1
  %13 = load %struct.stack_st_X509_ALGOR*, %struct.stack_st_X509_ALGOR** %md_algs23, align 8, !tbaa !21
  %enc_data = getelementptr inbounds %struct.pkcs7_signedandenveloped_st, %struct.pkcs7_signedandenveloped_st* %11, i64 0, i32 5
  %14 = load %struct.pkcs7_enc_content_st*, %struct.pkcs7_enc_content_st** %enc_data, align 8, !tbaa !22
  %enc_data26 = getelementptr inbounds %struct.pkcs7_enc_content_st, %struct.pkcs7_enc_content_st* %14, i64 0, i32 2
  %15 = load %struct.asn1_string_st*, %struct.asn1_string_st** %enc_data26, align 8, !tbaa !47
  %algorithm = getelementptr inbounds %struct.pkcs7_enc_content_st, %struct.pkcs7_enc_content_st* %14, i64 0, i32 1
  %16 = load %struct.X509_algor_st*, %struct.X509_algor_st** %algorithm, align 8, !tbaa !23
  %algorithm30 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %16, i64 0, i32 0
  %17 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm30, align 8, !tbaa !33
  %call31 = call i32 @OBJ_obj2txt(i8* noundef nonnull %3, i32 noundef 50, %struct.asn1_object_st* noundef %17, i32 noundef 0) #5
  %call32 = call i32 @ERR_set_mark() #5
  %call34 = call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %call1, i8* noundef nonnull %3, i8* noundef %call2) #5
  %cmp35.not = icmp eq %struct.evp_cipher_st* %call34, null
  br i1 %cmp35.not, label %if.end39, label %if.end43

if.end39:                                         ; preds = %sw.bb19
  %call38 = call %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef nonnull %3) #5
  %cmp40 = icmp eq %struct.evp_cipher_st* %call38, null
  br i1 %cmp40, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end39
  %call42 = call i32 @ERR_clear_last_mark() #5
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 463, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.PKCS7_dataDecode, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 111, i8* noundef null) #5
  br label %err

if.end43:                                         ; preds = %sw.bb19, %if.end39
  %cipher.0389 = phi %struct.evp_cipher_st* [ %call38, %if.end39 ], [ %call34, %sw.bb19 ]
  %call44 = call i32 @ERR_pop_to_mark() #5
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.end5
  %enveloped = bitcast %union.anon* %d to %struct.pkcs7_enveloped_st**
  %18 = load %struct.pkcs7_enveloped_st*, %struct.pkcs7_enveloped_st** %enveloped, align 8, !tbaa !12
  %recipientinfo47 = getelementptr inbounds %struct.pkcs7_enveloped_st, %struct.pkcs7_enveloped_st* %18, i64 0, i32 1
  %19 = load %struct.stack_st_PKCS7_RECIP_INFO*, %struct.stack_st_PKCS7_RECIP_INFO** %recipientinfo47, align 8, !tbaa !26
  %enc_data50 = getelementptr inbounds %struct.pkcs7_enveloped_st, %struct.pkcs7_enveloped_st* %18, i64 0, i32 2
  %20 = load %struct.pkcs7_enc_content_st*, %struct.pkcs7_enc_content_st** %enc_data50, align 8, !tbaa !28
  %algorithm51 = getelementptr inbounds %struct.pkcs7_enc_content_st, %struct.pkcs7_enc_content_st* %20, i64 0, i32 1
  %21 = load %struct.X509_algor_st*, %struct.X509_algor_st** %algorithm51, align 8, !tbaa !23
  %enc_data55 = getelementptr inbounds %struct.pkcs7_enc_content_st, %struct.pkcs7_enc_content_st* %20, i64 0, i32 2
  %22 = load %struct.asn1_string_st*, %struct.asn1_string_st** %enc_data55, align 8, !tbaa !47
  %algorithm57 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %21, i64 0, i32 0
  %23 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm57, align 8, !tbaa !33
  %call58 = call i32 @OBJ_obj2txt(i8* noundef nonnull %3, i32 noundef 50, %struct.asn1_object_st* noundef %23, i32 noundef 0) #5
  %call59 = call i32 @ERR_set_mark() #5
  %call61 = call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %call1, i8* noundef nonnull %3, i8* noundef %call2) #5
  %cmp62.not = icmp eq %struct.evp_cipher_st* %call61, null
  br i1 %cmp62.not, label %if.end67, label %sw.epilog.thread

if.end67:                                         ; preds = %sw.bb45
  %call66 = call %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef nonnull %3) #5
  %cmp68 = icmp eq %struct.evp_cipher_st* %call66, null
  br i1 %cmp68, label %if.then69, label %sw.epilog.thread

if.then69:                                        ; preds = %if.end67
  %call70 = call i32 @ERR_clear_last_mark() #5
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 484, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.PKCS7_dataDecode, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 111, i8* noundef null) #5
  br label %err

sw.default:                                       ; preds = %if.end5
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 490, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.PKCS7_dataDecode, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 112, i8* noundef null) #5
  br label %err

sw.epilog:                                        ; preds = %if.end43, %if.end16
  %data_body.0 = phi %struct.asn1_string_st* [ %15, %if.end43 ], [ %call8, %if.end16 ]
  %evp_cipher.0 = phi %struct.evp_cipher_st* [ %call34, %if.end43 ], [ null, %if.end16 ]
  %cipher.2 = phi %struct.evp_cipher_st* [ %cipher.0389, %if.end43 ], [ null, %if.end16 ]
  %enc_alg.0 = phi %struct.X509_algor_st* [ %16, %if.end43 ], [ null, %if.end16 ]
  %md_sk.0 = phi %struct.stack_st_X509_ALGOR* [ %13, %if.end43 ], [ %10, %if.end16 ]
  %rsk.0 = phi %struct.stack_st_PKCS7_RECIP_INFO* [ %12, %if.end43 ], [ null, %if.end16 ]
  %cmp73 = icmp eq %struct.asn1_string_st* %data_body.0, null
  %cmp75 = icmp eq %struct.bio_st* %in_bio, null
  %or.cond275 = and i1 %cmp75, %cmp73
  br i1 %or.cond275, label %if.then76, label %if.end77

sw.epilog.thread:                                 ; preds = %if.end67, %sw.bb45
  %cipher.1392 = phi %struct.evp_cipher_st* [ %call66, %if.end67 ], [ %call61, %sw.bb45 ]
  %call72 = call i32 @ERR_pop_to_mark() #5
  %cmp73399 = icmp eq %struct.asn1_string_st* %22, null
  %cmp75400 = icmp eq %struct.bio_st* %in_bio, null
  %or.cond275401 = and i1 %cmp75400, %cmp73399
  br i1 %or.cond275401, label %if.then76, label %if.then115

if.then76:                                        ; preds = %sw.epilog.thread, %sw.epilog
  %evp_cipher.0403 = phi %struct.evp_cipher_st* [ %call61, %sw.epilog.thread ], [ %evp_cipher.0, %sw.epilog ]
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 496, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.PKCS7_dataDecode, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 122, i8* noundef null) #5
  br label %err

if.end77:                                         ; preds = %sw.epilog
  %cmp78.not = icmp eq %struct.stack_st_X509_ALGOR* %md_sk.0, null
  br i1 %cmp78.not, label %if.end113, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end77
  %call80 = call fastcc %struct.stack_st* @ossl_check_const_X509_ALGOR_sk_type(%struct.stack_st_X509_ALGOR* noundef nonnull %md_sk.0) #6
  %call81467 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call80) #5
  %cmp82468 = icmp sgt i32 %call81467, 0
  br i1 %cmp82468, label %for.body, label %if.end113

for.body:                                         ; preds = %for.cond.preheader, %if.end112
  %i.0471 = phi i32 [ %inc, %if.end112 ], [ 0, %for.cond.preheader ]
  %out.0469 = phi %struct.bio_st* [ %out.1, %if.end112 ], [ null, %for.cond.preheader ]
  %call84 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call80, i32 noundef %i.0471) #5
  %call85 = call %struct.bio_method_st* @BIO_f_md() #5
  %call86 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call85) #5
  %cmp87 = icmp eq %struct.bio_st* %call86, null
  br i1 %cmp87, label %if.then88, label %if.end89

if.then88:                                        ; preds = %for.body
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 505, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.PKCS7_dataDecode, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 524320, i8* noundef null) #5
  br label %err

if.end89:                                         ; preds = %for.body
  %algorithm91 = bitcast i8* %call84 to %struct.asn1_object_st**
  %24 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm91, align 8, !tbaa !33
  %call92 = call i32 @OBJ_obj2txt(i8* noundef nonnull %3, i32 noundef 50, %struct.asn1_object_st* noundef %24, i32 noundef 0) #5
  %call93 = call i32 @ERR_set_mark() #5
  %call95 = call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %call1, i8* noundef nonnull %3, i8* noundef %call2) #5
  %cmp96.not = icmp eq %struct.evp_md_st* %call95, null
  br i1 %cmp96.not, label %if.end101, label %if.end105

if.end101:                                        ; preds = %if.end89
  %call100 = call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef nonnull %3) #5
  %cmp102 = icmp eq %struct.evp_md_st* %call100, null
  br i1 %cmp102, label %if.then103, label %if.end105

if.then103:                                       ; preds = %if.end101
  %call104 = call i32 @ERR_clear_last_mark() #5
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 520, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.PKCS7_dataDecode, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 109, i8* noundef null) #5
  br label %err

if.end105:                                        ; preds = %if.end89, %if.end101
  %md.0431 = phi %struct.evp_md_st* [ %call100, %if.end101 ], [ %call95, %if.end89 ]
  %call106 = call i32 @ERR_pop_to_mark() #5
  %25 = bitcast %struct.evp_md_st* %md.0431 to i8*
  %call107 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call86, i32 noundef 111, i64 noundef 0, i8* noundef nonnull %25) #5
  call void @EVP_MD_free(%struct.evp_md_st* noundef %call95) #5
  %cmp108 = icmp eq %struct.bio_st* %out.0469, null
  br i1 %cmp108, label %if.end112, label %if.else110

if.else110:                                       ; preds = %if.end105
  %call111 = call %struct.bio_st* @BIO_push(%struct.bio_st* noundef nonnull %out.0469, %struct.bio_st* noundef nonnull %call86) #5
  br label %if.end112

if.end112:                                        ; preds = %if.end105, %if.else110
  %out.1 = phi %struct.bio_st* [ %out.0469, %if.else110 ], [ %call86, %if.end105 ]
  %inc = add nuw nsw i32 %i.0471, 1
  %call81 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call80) #5
  %cmp82 = icmp slt i32 %inc, %call81
  br i1 %cmp82, label %for.body, label %if.end113, !llvm.loop !48

if.end113:                                        ; preds = %if.end112, %for.cond.preheader, %if.end77
  %out.2 = phi %struct.bio_st* [ null, %if.end77 ], [ null, %for.cond.preheader ], [ %out.1, %if.end112 ]
  %cmp114.not = icmp eq %struct.evp_cipher_st* %cipher.2, null
  br i1 %cmp114.not, label %if.end223, label %if.then115

if.then115:                                       ; preds = %sw.epilog.thread, %if.end113
  %out.2448 = phi %struct.bio_st* [ %out.2, %if.end113 ], [ null, %sw.epilog.thread ]
  %evp_cipher.0405447 = phi %struct.evp_cipher_st* [ %evp_cipher.0, %if.end113 ], [ %call61, %sw.epilog.thread ]
  %cmp75415424445 = phi i1 [ %cmp75, %if.end113 ], [ %cmp75400, %sw.epilog.thread ]
  %rsk.0412425444 = phi %struct.stack_st_PKCS7_RECIP_INFO* [ %rsk.0, %if.end113 ], [ %19, %sw.epilog.thread ]
  %enc_alg.0410426443 = phi %struct.X509_algor_st* [ %enc_alg.0, %if.end113 ], [ %21, %sw.epilog.thread ]
  %cipher.2409427442 = phi %struct.evp_cipher_st* [ %cipher.2, %if.end113 ], [ %cipher.1392, %sw.epilog.thread ]
  %data_body.0402428440 = phi %struct.asn1_string_st* [ %data_body.0, %if.end113 ], [ %22, %sw.epilog.thread ]
  %call116 = call %struct.bio_method_st* @BIO_f_cipher() #5
  %call117 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call116) #5
  %cmp118 = icmp eq %struct.bio_st* %call117, null
  br i1 %cmp118, label %if.then119, label %if.end120

if.then119:                                       ; preds = %if.then115
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 537, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.PKCS7_dataDecode, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 524320, i8* noundef null) #5
  br label %err

if.end120:                                        ; preds = %if.then115
  %tobool121.not = icmp eq %struct.x509_st* %pcert, null
  br i1 %tobool121.not, label %for.cond143.preheader, label %for.cond123.preheader

for.cond123.preheader:                            ; preds = %if.end120
  %call124 = call fastcc %struct.stack_st* @ossl_check_const_PKCS7_RECIP_INFO_sk_type(%struct.stack_st_PKCS7_RECIP_INFO* noundef %rsk.0412425444) #6
  %call125473 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call124) #5
  %cmp126474 = icmp sgt i32 %call125473, 0
  br i1 %cmp126474, label %for.body127, label %if.then138

for.cond123:                                      ; preds = %for.body127
  %call125 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call124) #5
  %cmp126 = icmp slt i32 %inc135, %call125
  br i1 %cmp126, label %for.body127, label %if.then138, !llvm.loop !49

for.body127:                                      ; preds = %for.cond123.preheader, %for.cond123
  %i.1475 = phi i32 [ %inc135, %for.cond123 ], [ 0, %for.cond123.preheader ]
  %call129 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call124, i32 noundef %i.1475) #5
  %26 = bitcast i8* %call129 to %struct.pkcs7_recip_info_st*
  %call130 = call fastcc i32 @pkcs7_cmp_ri(%struct.pkcs7_recip_info_st* noundef %26, %struct.x509_st* noundef nonnull %pcert) #6
  %tobool131.not = icmp eq i32 %call130, 0
  %inc135 = add nuw nsw i32 %i.1475, 1
  br i1 %tobool131.not, label %for.end136, label %for.cond123

for.end136:                                       ; preds = %for.body127
  %27 = bitcast i8* %call129 to %struct.pkcs7_recip_info_st*
  %cmp137 = icmp eq i8* %call129, null
  br i1 %cmp137, label %if.then138, label %if.end140

if.then138:                                       ; preds = %for.cond123, %for.cond123.preheader, %for.end136
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 560, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.PKCS7_dataDecode, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 115, i8* noundef null) #5
  br label %err

if.end140:                                        ; preds = %for.end136
  br i1 %tobool121.not, label %for.cond143.preheader, label %if.else159

for.cond143.preheader:                            ; preds = %if.end120, %if.end140
  %call144 = call fastcc %struct.stack_st* @ossl_check_const_PKCS7_RECIP_INFO_sk_type(%struct.stack_st_PKCS7_RECIP_INFO* noundef %rsk.0412425444) #6
  %call145476 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call144) #5
  %cmp146477 = icmp sgt i32 %call145476, 0
  br i1 %cmp146477, label %for.body147, label %if.end166

for.body147:                                      ; preds = %for.cond143.preheader, %if.end155
  %i.2478 = phi i32 [ %inc157, %if.end155 ], [ 0, %for.cond143.preheader ]
  %call149 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call144, i32 noundef %i.2478) #5
  %28 = bitcast i8* %call149 to %struct.pkcs7_recip_info_st*
  %ctx = getelementptr inbounds i8, i8* %call149, i64 40
  %29 = bitcast i8* %ctx to %struct.PKCS7_CTX_st**
  store %struct.PKCS7_CTX_st* %call, %struct.PKCS7_CTX_st** %29, align 8, !tbaa !40
  %call150 = call i32 @EVP_CIPHER_get_key_length(%struct.evp_cipher_st* noundef nonnull %cipher.2409427442) #5
  %conv = sext i32 %call150 to i64
  %call151 = call fastcc i32 @pkcs7_decrypt_rinfo(i8** noundef nonnull %ek, i32* noundef nonnull %eklen, %struct.pkcs7_recip_info_st* noundef %28, %struct.evp_pkey_st* noundef %pkey, i64 noundef %conv) #6
  %cmp152 = icmp slt i32 %call151, 0
  br i1 %cmp152, label %err, label %if.end155

if.end155:                                        ; preds = %for.body147
  call void @ERR_clear_error() #5
  %inc157 = add nuw nsw i32 %i.2478, 1
  %call145 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call144) #5
  %cmp146 = icmp slt i32 %inc157, %call145
  br i1 %cmp146, label %for.body147, label %if.end166, !llvm.loop !50

if.else159:                                       ; preds = %if.end140
  %ctx160 = getelementptr inbounds i8, i8* %call129, i64 40
  %30 = bitcast i8* %ctx160 to %struct.PKCS7_CTX_st**
  store %struct.PKCS7_CTX_st* %call, %struct.PKCS7_CTX_st** %30, align 8, !tbaa !40
  %call161 = call fastcc i32 @pkcs7_decrypt_rinfo(i8** noundef nonnull %ek, i32* noundef nonnull %eklen, %struct.pkcs7_recip_info_st* noundef nonnull %27, %struct.evp_pkey_st* noundef %pkey, i64 noundef 0) #6
  %cmp162 = icmp slt i32 %call161, 0
  br i1 %cmp162, label %err, label %if.end165

if.end165:                                        ; preds = %if.else159
  call void @ERR_clear_error() #5
  br label %if.end166

if.end166:                                        ; preds = %if.end155, %for.cond143.preheader, %if.end165
  store %struct.evp_cipher_ctx_st* null, %struct.evp_cipher_ctx_st** %evp_ctx, align 8, !tbaa !15
  %call167 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call117, i32 noundef 129, i64 noundef 0, i8* noundef nonnull %0) #5
  %31 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %evp_ctx, align 8, !tbaa !15
  %call168 = call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %31, %struct.evp_cipher_st* noundef nonnull %cipher.2409427442, %struct.engine_st* noundef null, i8* noundef null, i8* noundef null, i32 noundef 0) #5
  %cmp169 = icmp slt i32 %call168, 1
  br i1 %cmp169, label %err, label %if.end172

if.end172:                                        ; preds = %if.end166
  %32 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %evp_ctx, align 8, !tbaa !15
  %parameter = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %enc_alg.0410426443, i64 0, i32 1
  %33 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter, align 8, !tbaa !35
  %call173 = call i32 @EVP_CIPHER_asn1_to_param(%struct.evp_cipher_ctx_st* noundef %32, %struct.asn1_type_st* noundef %33) #5
  %cmp174 = icmp slt i32 %call173, 0
  br i1 %cmp174, label %err, label %if.end177

if.end177:                                        ; preds = %if.end172
  %34 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %evp_ctx, align 8, !tbaa !15
  %call178 = call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %34) #5
  %cmp179 = icmp slt i32 %call178, 1
  br i1 %cmp179, label %err, label %if.end182

if.end182:                                        ; preds = %if.end177
  %conv183463 = zext i32 %call178 to i64
  %call186 = call i8* @CRYPTO_malloc(i64 noundef %conv183463, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 598) #5
  %cmp187 = icmp eq i8* %call186, null
  br i1 %cmp187, label %err, label %if.end190

if.end190:                                        ; preds = %if.end182
  %35 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %evp_ctx, align 8, !tbaa !15
  %call191 = call i32 @EVP_CIPHER_CTX_rand_key(%struct.evp_cipher_ctx_st* noundef %35, i8* noundef nonnull %call186) #5
  %cmp192 = icmp slt i32 %call191, 1
  br i1 %cmp192, label %err, label %if.end195

if.end195:                                        ; preds = %if.end190
  %36 = load i8*, i8** %ek, align 8, !tbaa !15
  %cmp196 = icmp eq i8* %36, null
  br i1 %cmp196, label %if.then198, label %if.end195.if.end199_crit_edge

if.end195.if.end199_crit_edge:                    ; preds = %if.end195
  %.pre = load i32, i32* %eklen, align 4, !tbaa !45
  br label %if.end199

if.then198:                                       ; preds = %if.end195
  store i8* %call186, i8** %ek, align 8, !tbaa !15
  store i32 %call178, i32* %eklen, align 4, !tbaa !45
  br label %if.end199

if.end199:                                        ; preds = %if.end195.if.end199_crit_edge, %if.then198
  %37 = phi i8* [ %call186, %if.then198 ], [ %36, %if.end195.if.end199_crit_edge ]
  %38 = phi i32 [ %call178, %if.then198 ], [ %.pre, %if.end195.if.end199_crit_edge ]
  %tkey.0 = phi i8* [ null, %if.then198 ], [ %call186, %if.end195.if.end199_crit_edge ]
  %39 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %evp_ctx, align 8, !tbaa !15
  %call200 = call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %39) #5
  %cmp201.not = icmp eq i32 %38, %call200
  br i1 %cmp201.not, label %if.end209, label %if.then203

if.then203:                                       ; preds = %if.end199
  %40 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %evp_ctx, align 8, !tbaa !15
  %call204 = call i32 @EVP_CIPHER_CTX_set_key_length(%struct.evp_cipher_ctx_st* noundef %40, i32 noundef %38) #5
  %tobool205.not = icmp eq i32 %call204, 0
  br i1 %tobool205.not, label %if.then206, label %if.end209

if.then206:                                       ; preds = %if.then203
  %conv207 = sext i32 %38 to i64
  call void @CRYPTO_clear_free(i8* noundef nonnull %37, i64 noundef %conv207, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 617) #5
  store i8* %tkey.0, i8** %ek, align 8, !tbaa !15
  store i32 %call178, i32* %eklen, align 4, !tbaa !45
  br label %if.end209

if.end209:                                        ; preds = %if.then203, %if.then206, %if.end199
  %41 = phi i32 [ %38, %if.then203 ], [ %call178, %if.then206 ], [ %38, %if.end199 ]
  %42 = phi i8* [ %37, %if.then203 ], [ %tkey.0, %if.then206 ], [ %37, %if.end199 ]
  %tkey.1 = phi i8* [ %tkey.0, %if.then203 ], [ null, %if.then206 ], [ %tkey.0, %if.end199 ]
  call void @ERR_clear_error() #5
  %43 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %evp_ctx, align 8, !tbaa !15
  %call210 = call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %43, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef %42, i8* noundef null, i32 noundef 0) #5
  %cmp211 = icmp slt i32 %call210, 1
  br i1 %cmp211, label %err, label %if.end214

if.end214:                                        ; preds = %if.end209
  %conv215 = sext i32 %41 to i64
  call void @CRYPTO_clear_free(i8* noundef %42, i64 noundef %conv215, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 628) #5
  store i8* null, i8** %ek, align 8, !tbaa !15
  call void @CRYPTO_clear_free(i8* noundef %tkey.1, i64 noundef %conv183463, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 630) #5
  %cmp217 = icmp eq %struct.bio_st* %out.2448, null
  br i1 %cmp217, label %if.end223, label %if.else220

if.else220:                                       ; preds = %if.end214
  %call221 = call %struct.bio_st* @BIO_push(%struct.bio_st* noundef nonnull %out.2448, %struct.bio_st* noundef nonnull %call117) #5
  br i1 %cmp75415424445, label %if.else227, label %if.end246

if.end223:                                        ; preds = %if.end214, %if.end113
  %cmp75415424446 = phi i1 [ %cmp75, %if.end113 ], [ %cmp75415424445, %if.end214 ]
  %data_body.0402428441 = phi %struct.asn1_string_st* [ %data_body.0, %if.end113 ], [ %data_body.0402428440, %if.end214 ]
  %evp_cipher.0408 = phi %struct.evp_cipher_st* [ %evp_cipher.0, %if.end113 ], [ %evp_cipher.0405447, %if.end214 ]
  %tkeylen.0 = phi i32 [ 0, %if.end113 ], [ %call178, %if.end214 ]
  %out.4 = phi %struct.bio_st* [ %out.2, %if.end113 ], [ %call117, %if.end214 ]
  br i1 %cmp75415424446, label %if.else227, label %if.end246

if.else227:                                       ; preds = %if.else220, %if.end223
  %out.4459 = phi %struct.bio_st* [ %out.2448, %if.else220 ], [ %out.4, %if.end223 ]
  %tkeylen.0457 = phi i32 [ %call178, %if.else220 ], [ %tkeylen.0, %if.end223 ]
  %evp_cipher.0408456 = phi %struct.evp_cipher_st* [ %evp_cipher.0405447, %if.else220 ], [ %evp_cipher.0408, %if.end223 ]
  %data_body.0402428441454 = phi %struct.asn1_string_st* [ %data_body.0402428440, %if.else220 ], [ %data_body.0402428441, %if.end223 ]
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %data_body.0402428441454, i64 0, i32 0
  %44 = load i32, i32* %length, align 8, !tbaa !37
  %cmp228 = icmp sgt i32 %44, 0
  br i1 %cmp228, label %if.end241, label %if.else233

if.else233:                                       ; preds = %if.else227
  %call234 = call %struct.bio_method_st* @BIO_s_mem() #5
  %call235 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call234) #5
  %cmp236 = icmp eq %struct.bio_st* %call235, null
  br i1 %cmp236, label %err, label %if.end241.thread

if.end241.thread:                                 ; preds = %if.else233
  %call240 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call235, i32 noundef 130, i64 noundef 0, i8* noundef null) #5
  br label %if.end246

if.end241:                                        ; preds = %if.else227
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %data_body.0402428441454, i64 0, i32 2
  %45 = load i8*, i8** %data, align 8, !tbaa !39
  %call232 = call %struct.bio_st* @BIO_new_mem_buf(i8* noundef %45, i32 noundef %44) #5
  %cmp242 = icmp eq %struct.bio_st* %call232, null
  br i1 %cmp242, label %err, label %if.end246

if.end246:                                        ; preds = %if.end241.thread, %if.else220, %if.end223, %if.end241
  %out.4458 = phi %struct.bio_st* [ %out.4459, %if.end241 ], [ %out.4, %if.end223 ], [ %out.2448, %if.else220 ], [ %out.4459, %if.end241.thread ]
  %evp_cipher.0408455 = phi %struct.evp_cipher_st* [ %evp_cipher.0408456, %if.end241 ], [ %evp_cipher.0408, %if.end223 ], [ %evp_cipher.0405447, %if.else220 ], [ %evp_cipher.0408456, %if.end241.thread ]
  %bio.1 = phi %struct.bio_st* [ %call232, %if.end241 ], [ %in_bio, %if.end223 ], [ %in_bio, %if.else220 ], [ %call235, %if.end241.thread ]
  %call247 = call %struct.bio_st* @BIO_push(%struct.bio_st* noundef %out.4458, %struct.bio_st* noundef %bio.1) #5
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %evp_cipher.0408455) #5
  br label %cleanup

err:                                              ; preds = %for.body147, %if.end241, %if.else233, %if.end209, %if.end190, %if.end182, %if.end177, %if.end172, %if.end166, %if.else159, %if.then138, %if.then119, %if.then103, %if.then88, %if.then76, %sw.default, %if.then69, %if.then41, %if.then15
  %etmp.1 = phi %struct.bio_st* [ null, %sw.default ], [ null, %if.then69 ], [ null, %if.then76 ], [ null, %if.then88 ], [ null, %if.then103 ], [ null, %if.then119 ], [ %call117, %if.then138 ], [ %call117, %if.end166 ], [ %call117, %if.end172 ], [ %call117, %if.end177 ], [ %call117, %if.end182 ], [ %call117, %if.end190 ], [ %call117, %if.end209 ], [ null, %if.end241 ], [ null, %if.else233 ], [ %call117, %if.else159 ], [ null, %if.then41 ], [ null, %if.then15 ], [ %call117, %for.body147 ]
  %btmp.2 = phi %struct.bio_st* [ null, %sw.default ], [ null, %if.then69 ], [ null, %if.then76 ], [ null, %if.then88 ], [ %call86, %if.then103 ], [ null, %if.then119 ], [ null, %if.then138 ], [ null, %if.end166 ], [ null, %if.end172 ], [ null, %if.end177 ], [ null, %if.end182 ], [ null, %if.end190 ], [ null, %if.end209 ], [ null, %if.end241 ], [ null, %if.else233 ], [ null, %if.else159 ], [ null, %if.then41 ], [ null, %if.then15 ], [ null, %for.body147 ]
  %evp_cipher.1 = phi %struct.evp_cipher_st* [ null, %sw.default ], [ null, %if.then69 ], [ %evp_cipher.0403, %if.then76 ], [ %evp_cipher.0, %if.then88 ], [ %evp_cipher.0, %if.then103 ], [ %evp_cipher.0405447, %if.then119 ], [ %evp_cipher.0405447, %if.then138 ], [ %evp_cipher.0405447, %if.end166 ], [ %evp_cipher.0405447, %if.end172 ], [ %evp_cipher.0405447, %if.end177 ], [ %evp_cipher.0405447, %if.end182 ], [ %evp_cipher.0405447, %if.end190 ], [ %evp_cipher.0405447, %if.end209 ], [ %evp_cipher.0408456, %if.end241 ], [ %evp_cipher.0408456, %if.else233 ], [ %evp_cipher.0405447, %if.else159 ], [ null, %if.then41 ], [ null, %if.then15 ], [ %evp_cipher.0405447, %for.body147 ]
  %tkey.3 = phi i8* [ null, %sw.default ], [ null, %if.then69 ], [ null, %if.then76 ], [ null, %if.then88 ], [ null, %if.then103 ], [ null, %if.then119 ], [ null, %if.then138 ], [ null, %if.end166 ], [ null, %if.end172 ], [ null, %if.end177 ], [ null, %if.end182 ], [ %call186, %if.end190 ], [ %tkey.1, %if.end209 ], [ null, %if.end241 ], [ null, %if.else233 ], [ null, %if.else159 ], [ null, %if.then41 ], [ null, %if.then15 ], [ null, %for.body147 ]
  %tkeylen.1 = phi i32 [ 0, %sw.default ], [ 0, %if.then69 ], [ 0, %if.then76 ], [ 0, %if.then88 ], [ 0, %if.then103 ], [ 0, %if.then119 ], [ 0, %if.then138 ], [ 0, %if.end166 ], [ 0, %if.end172 ], [ 0, %if.end177 ], [ %call178, %if.end182 ], [ %call178, %if.end190 ], [ %call178, %if.end209 ], [ %tkeylen.0457, %if.end241 ], [ %tkeylen.0457, %if.else233 ], [ 0, %if.else159 ], [ 0, %if.then41 ], [ 0, %if.then15 ], [ 0, %for.body147 ]
  %out.5 = phi %struct.bio_st* [ null, %sw.default ], [ null, %if.then69 ], [ null, %if.then76 ], [ %out.0469, %if.then88 ], [ %out.0469, %if.then103 ], [ %out.2448, %if.then119 ], [ %out.2448, %if.then138 ], [ %out.2448, %if.end166 ], [ %out.2448, %if.end172 ], [ %out.2448, %if.end177 ], [ %out.2448, %if.end182 ], [ %out.2448, %if.end190 ], [ %out.2448, %if.end209 ], [ %out.4459, %if.end241 ], [ %out.4459, %if.else233 ], [ %out.2448, %if.else159 ], [ null, %if.then41 ], [ null, %if.then15 ], [ %out.2448, %for.body147 ]
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %evp_cipher.1) #5
  %46 = load i8*, i8** %ek, align 8, !tbaa !15
  %47 = load i32, i32* %eklen, align 4, !tbaa !45
  %conv248 = sext i32 %47 to i64
  call void @CRYPTO_clear_free(i8* noundef %46, i64 noundef %conv248, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 660) #5
  %conv249462 = zext i32 %tkeylen.1 to i64
  call void @CRYPTO_clear_free(i8* noundef %tkey.3, i64 noundef %conv249462, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 661) #5
  call void @BIO_free_all(%struct.bio_st* noundef %out.5) #5
  call void @BIO_free_all(%struct.bio_st* noundef %btmp.2) #5
  call void @BIO_free_all(%struct.bio_st* noundef %etmp.1) #5
  call void @BIO_free_all(%struct.bio_st* noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end246, %if.then4, %if.then
  %retval.0 = phi %struct.bio_st* [ null, %if.then ], [ null, %if.then4 ], [ null, %err ], [ %out.4458, %if.end246 ]
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret %struct.bio_st* %retval.0
}

declare i32 @OBJ_obj2txt(i8* noundef, i32 noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef) local_unnamed_addr #2

declare i32 @ERR_clear_last_mark() local_unnamed_addr #2

declare %struct.bio_method_st* @BIO_f_md() local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #2

declare void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @pkcs7_cmp_ri(%struct.pkcs7_recip_info_st* nocapture noundef readonly %ri, %struct.x509_st* noundef %pcert) unnamed_addr #0 {
entry:
  %issuer_and_serial = getelementptr inbounds %struct.pkcs7_recip_info_st, %struct.pkcs7_recip_info_st* %ri, i64 0, i32 1
  %0 = load %struct.pkcs7_issuer_and_serial_st*, %struct.pkcs7_issuer_and_serial_st** %issuer_and_serial, align 8, !tbaa !51
  %issuer = getelementptr inbounds %struct.pkcs7_issuer_and_serial_st, %struct.pkcs7_issuer_and_serial_st* %0, i64 0, i32 0
  %1 = load %struct.X509_name_st*, %struct.X509_name_st** %issuer, align 8, !tbaa !52
  %call = tail call %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef %pcert) #5
  %call1 = tail call i32 @X509_NAME_cmp(%struct.X509_name_st* noundef %1, %struct.X509_name_st* noundef %call) #5
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.asn1_string_st* @X509_get0_serialNumber(%struct.x509_st* noundef %pcert) #5
  %2 = load %struct.pkcs7_issuer_and_serial_st*, %struct.pkcs7_issuer_and_serial_st** %issuer_and_serial, align 8, !tbaa !51
  %serial = getelementptr inbounds %struct.pkcs7_issuer_and_serial_st, %struct.pkcs7_issuer_and_serial_st* %2, i64 0, i32 1
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %serial, align 8, !tbaa !54
  %call4 = tail call i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef %call2, %struct.asn1_string_st* noundef %3) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @pkcs7_decrypt_rinfo(i8** nocapture noundef %pek, i32* nocapture noundef %peklen, %struct.pkcs7_recip_info_st* nocapture noundef readonly %ri, %struct.evp_pkey_st* noundef %pkey, i64 noundef %fixlen) unnamed_addr #0 {
entry:
  %eklen = alloca i64, align 8
  %0 = bitcast i64* %eklen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %ctx1 = getelementptr inbounds %struct.pkcs7_recip_info_st, %struct.pkcs7_recip_info_st* %ri, i64 0, i32 5
  %1 = load %struct.PKCS7_CTX_st*, %struct.PKCS7_CTX_st** %ctx1, align 8, !tbaa !40
  %call = tail call %struct.ossl_lib_ctx_st* @ossl_pkcs7_ctx_get0_libctx(%struct.PKCS7_CTX_st* noundef %1) #5
  %call2 = tail call i8* @ossl_pkcs7_ctx_get0_propq(%struct.PKCS7_CTX_st* noundef %1) #5
  %call3 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %call, %struct.evp_pkey_st* noundef %pkey, i8* noundef %call2) #5
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %call3, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @EVP_PKEY_decrypt_init(%struct.evp_pkey_ctx_st* noundef nonnull %call3) #5
  %cmp5 = icmp slt i32 %call4, 1
  br i1 %cmp5, label %err.thread, label %if.end7

if.end7:                                          ; preds = %if.end
  %enc_key = getelementptr inbounds %struct.pkcs7_recip_info_st, %struct.pkcs7_recip_info_st* %ri, i64 0, i32 3
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %enc_key, align 8, !tbaa !44
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %2, i64 0, i32 2
  %3 = load i8*, i8** %data, align 8, !tbaa !39
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %2, i64 0, i32 0
  %4 = load i32, i32* %length, align 8, !tbaa !37
  %conv = sext i32 %4 to i64
  %call9 = call i32 @EVP_PKEY_decrypt(%struct.evp_pkey_ctx_st* noundef nonnull %call3, i8* noundef null, i64* noundef nonnull %eklen, i8* noundef %3, i64 noundef %conv) #5
  %cmp10 = icmp slt i32 %call9, 1
  br i1 %cmp10, label %err.thread, label %if.end13

if.end13:                                         ; preds = %if.end7
  %5 = load i64, i64* %eklen, align 8, !tbaa !43
  %call14 = call i8* @CRYPTO_malloc(i64 noundef %5, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 173) #5
  %cmp15 = icmp eq i8* %call14, null
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end13
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 176, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.pkcs7_decrypt_rinfo, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 786688, i8* noundef null) #5
  br label %err.thread

if.end18:                                         ; preds = %if.end13
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %enc_key, align 8, !tbaa !44
  %data20 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %6, i64 0, i32 2
  %7 = load i8*, i8** %data20, align 8, !tbaa !39
  %length22 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %6, i64 0, i32 0
  %8 = load i32, i32* %length22, align 8, !tbaa !37
  %conv23 = sext i32 %8 to i64
  %call24 = call i32 @EVP_PKEY_decrypt(%struct.evp_pkey_ctx_st* noundef nonnull %call3, i8* noundef nonnull %call14, i64* noundef nonnull %eklen, i8* noundef %7, i64 noundef %conv23) #5
  %cmp25 = icmp slt i32 %call24, 1
  %9 = load i64, i64* %eklen, align 8
  %cmp27 = icmp eq i64 %9, 0
  %or.cond = select i1 %cmp25, i1 true, i1 %cmp27
  br i1 %or.cond, label %if.then38, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %if.end18
  %cmp30.not = icmp eq i64 %fixlen, 0
  %cmp32.not = icmp eq i64 %9, %fixlen
  %or.cond64 = select i1 %cmp30.not, i1 true, i1 %cmp32.not
  br i1 %or.cond64, label %if.end35, label %if.then38

if.end35:                                         ; preds = %lor.lhs.false29
  %10 = load i8*, i8** %pek, align 8, !tbaa !15
  %11 = load i32, i32* %peklen, align 4, !tbaa !45
  %conv36 = sext i32 %11 to i64
  call void @CRYPTO_clear_free(i8* noundef %10, i64 noundef %conv36, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 191) #5
  store i8* %call14, i8** %pek, align 8, !tbaa !15
  %12 = load i64, i64* %eklen, align 8, !tbaa !43
  %conv37 = trunc i64 %12 to i32
  store i32 %conv37, i32* %peklen, align 4, !tbaa !45
  br label %err.thread

err.thread:                                       ; preds = %if.end, %if.end7, %if.then17, %if.end35
  %ret.0.ph = phi i32 [ 1, %if.end35 ], [ -1, %if.then17 ], [ -1, %if.end7 ], [ -1, %if.end ]
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %call3) #5
  br label %cleanup

if.then38:                                        ; preds = %lor.lhs.false29, %if.end18
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 185, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.pkcs7_decrypt_rinfo, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 524294, i8* noundef null) #5
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %call3) #5
  call void @CRYPTO_free(i8* noundef nonnull %call14, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 198) #5
  br label %cleanup

cleanup:                                          ; preds = %err.thread, %if.then38, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 0, %if.then38 ], [ %ret.0.ph, %err.thread ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

declare void @ERR_clear_error() local_unnamed_addr #2

declare i32 @EVP_CIPHER_asn1_to_param(%struct.evp_cipher_ctx_st* noundef, %struct.asn1_type_st* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_set_key_length(%struct.evp_cipher_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS7_dataFinal(%struct.pkcs7_st* noundef %p7, %struct.bio_st* noundef %bio) local_unnamed_addr #0 {
entry:
  %mdc = alloca %struct.evp_md_ctx_st*, align 8
  %abuflen = alloca i32, align 4
  %md_data = alloca [64 x i8], align 16
  %md_len = alloca i32, align 4
  %cont = alloca i8*, align 8
  %0 = bitcast %struct.evp_md_ctx_st** %mdc to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %cmp = icmp eq %struct.pkcs7_st* %p7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 732, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.PKCS7_dataFinal, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 143, i8* noundef null) #5
  br label %cleanup181

if.end:                                           ; preds = %entry
  %call = tail call %struct.PKCS7_CTX_st* @ossl_pkcs7_get0_ctx(%struct.pkcs7_st* noundef nonnull %p7) #5
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %ptr = getelementptr %union.anon, %union.anon* %d, i64 0, i32 0
  %1 = load i8*, i8** %ptr, align 8, !tbaa !12
  %cmp1 = icmp eq i8* %1, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 739, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.PKCS7_dataFinal, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 122, i8* noundef null) #5
  br label %cleanup181

if.end3:                                          ; preds = %if.end
  %call4 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #5
  %cmp5 = icmp eq %struct.evp_md_ctx_st* %call4, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 745, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.PKCS7_dataFinal, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup181

if.end7:                                          ; preds = %if.end3
  %type = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 4
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !4
  %call8 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %2) #5
  %state = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 2
  store i32 0, i32* %state, align 8, !tbaa !16
  switch i32 %call8, label %sw.default [
    i32 21, label %sw.bb
    i32 24, label %sw.bb10
    i32 23, label %sw.bb26
    i32 22, label %sw.bb41
    i32 25, label %sw.bb60
  ]

sw.bb:                                            ; preds = %if.end7
  %data = bitcast %union.anon* %d to %struct.asn1_string_st**
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %data, align 8, !tbaa !12
  br label %if.end152

sw.bb10:                                          ; preds = %if.end7
  %signed_and_enveloped = bitcast %union.anon* %d to %struct.pkcs7_signedandenveloped_st**
  %4 = load %struct.pkcs7_signedandenveloped_st*, %struct.pkcs7_signedandenveloped_st** %signed_and_enveloped, align 8, !tbaa !12
  %signer_info = getelementptr inbounds %struct.pkcs7_signedandenveloped_st, %struct.pkcs7_signedandenveloped_st* %4, i64 0, i32 4
  %5 = load %struct.stack_st_PKCS7_SIGNER_INFO*, %struct.stack_st_PKCS7_SIGNER_INFO** %signer_info, align 8, !tbaa !55
  %enc_data = getelementptr inbounds %struct.pkcs7_signedandenveloped_st, %struct.pkcs7_signedandenveloped_st* %4, i64 0, i32 5
  %6 = load %struct.pkcs7_enc_content_st*, %struct.pkcs7_enc_content_st** %enc_data, align 8, !tbaa !22
  %enc_data14 = getelementptr inbounds %struct.pkcs7_enc_content_st, %struct.pkcs7_enc_content_st* %6, i64 0, i32 2
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %enc_data14, align 8, !tbaa !47
  %cmp15 = icmp eq %struct.asn1_string_st* %7, null
  br i1 %cmp15, label %if.then16, label %sw.epilog

if.then16:                                        ; preds = %sw.bb10
  %call17 = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #5
  %cmp18 = icmp eq %struct.asn1_string_st* %call17, null
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then16
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 763, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.PKCS7_dataFinal, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 786688, i8* noundef null) #5
  br label %err

if.end20:                                         ; preds = %if.then16
  %8 = load %struct.pkcs7_signedandenveloped_st*, %struct.pkcs7_signedandenveloped_st** %signed_and_enveloped, align 8, !tbaa !12
  %enc_data23 = getelementptr inbounds %struct.pkcs7_signedandenveloped_st, %struct.pkcs7_signedandenveloped_st* %8, i64 0, i32 5
  %9 = load %struct.pkcs7_enc_content_st*, %struct.pkcs7_enc_content_st** %enc_data23, align 8, !tbaa !22
  %enc_data24 = getelementptr inbounds %struct.pkcs7_enc_content_st, %struct.pkcs7_enc_content_st* %9, i64 0, i32 2
  store %struct.asn1_string_st* %call17, %struct.asn1_string_st** %enc_data24, align 8, !tbaa !47
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end7
  %enveloped = bitcast %union.anon* %d to %struct.pkcs7_enveloped_st**
  %10 = load %struct.pkcs7_enveloped_st*, %struct.pkcs7_enveloped_st** %enveloped, align 8, !tbaa !12
  %enc_data28 = getelementptr inbounds %struct.pkcs7_enveloped_st, %struct.pkcs7_enveloped_st* %10, i64 0, i32 2
  %11 = load %struct.pkcs7_enc_content_st*, %struct.pkcs7_enc_content_st** %enc_data28, align 8, !tbaa !28
  %enc_data29 = getelementptr inbounds %struct.pkcs7_enc_content_st, %struct.pkcs7_enc_content_st* %11, i64 0, i32 2
  %12 = load %struct.asn1_string_st*, %struct.asn1_string_st** %enc_data29, align 8, !tbaa !47
  %cmp30 = icmp eq %struct.asn1_string_st* %12, null
  br i1 %cmp30, label %if.then31, label %if.end152

if.then31:                                        ; preds = %sw.bb26
  %call32 = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #5
  %cmp33 = icmp eq %struct.asn1_string_st* %call32, null
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.then31
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 775, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.PKCS7_dataFinal, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 786688, i8* noundef null) #5
  br label %err

if.end35:                                         ; preds = %if.then31
  %13 = load %struct.pkcs7_enveloped_st*, %struct.pkcs7_enveloped_st** %enveloped, align 8, !tbaa !12
  %enc_data38 = getelementptr inbounds %struct.pkcs7_enveloped_st, %struct.pkcs7_enveloped_st* %13, i64 0, i32 2
  %14 = load %struct.pkcs7_enc_content_st*, %struct.pkcs7_enc_content_st** %enc_data38, align 8, !tbaa !28
  %enc_data39 = getelementptr inbounds %struct.pkcs7_enc_content_st, %struct.pkcs7_enc_content_st* %14, i64 0, i32 2
  store %struct.asn1_string_st* %call32, %struct.asn1_string_st** %enc_data39, align 8, !tbaa !47
  br label %if.end152

sw.bb41:                                          ; preds = %if.end7
  %sign = bitcast %union.anon* %d to %struct.pkcs7_signed_st**
  %15 = load %struct.pkcs7_signed_st*, %struct.pkcs7_signed_st** %sign, align 8, !tbaa !12
  %signer_info43 = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %15, i64 0, i32 4
  %16 = load %struct.stack_st_PKCS7_SIGNER_INFO*, %struct.stack_st_PKCS7_SIGNER_INFO** %signer_info43, align 8, !tbaa !56
  %contents = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %15, i64 0, i32 5
  %17 = load %struct.pkcs7_st*, %struct.pkcs7_st** %contents, align 8, !tbaa !46
  %call46 = tail call %struct.asn1_string_st* @PKCS7_get_octet_string(%struct.pkcs7_st* noundef %17) #6
  %18 = load %struct.pkcs7_signed_st*, %struct.pkcs7_signed_st** %sign, align 8, !tbaa !12
  %contents49 = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %18, i64 0, i32 5
  %19 = load %struct.pkcs7_st*, %struct.pkcs7_st** %contents49, align 8, !tbaa !46
  %type50 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %19, i64 0, i32 4
  %20 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type50, align 8, !tbaa !4
  %call51 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %20) #5
  %cmp52 = icmp eq i32 %call51, 21
  br i1 %cmp52, label %land.lhs.true, label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb41
  %detached = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 3
  %21 = load i32, i32* %detached, align 4, !tbaa !57
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %sw.epilog, label %if.then53

if.then53:                                        ; preds = %land.lhs.true
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %call46) #5
  %22 = load %struct.pkcs7_signed_st*, %struct.pkcs7_signed_st** %sign, align 8, !tbaa !12
  %contents56 = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %22, i64 0, i32 5
  %23 = load %struct.pkcs7_st*, %struct.pkcs7_st** %contents56, align 8, !tbaa !46
  %d57 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %23, i64 0, i32 5
  %data58 = bitcast %union.anon* %d57 to %struct.asn1_string_st**
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %data58, align 8, !tbaa !12
  br label %sw.epilog

sw.bb60:                                          ; preds = %if.end7
  %digest = bitcast %union.anon* %d to %struct.pkcs7_digest_st**
  %24 = load %struct.pkcs7_digest_st*, %struct.pkcs7_digest_st** %digest, align 8, !tbaa !12
  %contents62 = getelementptr inbounds %struct.pkcs7_digest_st, %struct.pkcs7_digest_st* %24, i64 0, i32 2
  %25 = load %struct.pkcs7_st*, %struct.pkcs7_st** %contents62, align 8, !tbaa !58
  %call63 = tail call %struct.asn1_string_st* @PKCS7_get_octet_string(%struct.pkcs7_st* noundef %25) #6
  %26 = load %struct.pkcs7_digest_st*, %struct.pkcs7_digest_st** %digest, align 8, !tbaa !12
  %contents66 = getelementptr inbounds %struct.pkcs7_digest_st, %struct.pkcs7_digest_st* %26, i64 0, i32 2
  %27 = load %struct.pkcs7_st*, %struct.pkcs7_st** %contents66, align 8, !tbaa !58
  %type67 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %27, i64 0, i32 4
  %28 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type67, align 8, !tbaa !4
  %call68 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %28) #5
  %cmp69 = icmp eq i32 %call68, 21
  br i1 %cmp69, label %land.lhs.true70, label %if.then126

land.lhs.true70:                                  ; preds = %sw.bb60
  %detached71 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 3
  %29 = load i32, i32* %detached71, align 4, !tbaa !57
  %tobool72.not = icmp eq i32 %29, 0
  br i1 %tobool72.not, label %if.then126, label %if.then73

if.then73:                                        ; preds = %land.lhs.true70
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %call63) #5
  %30 = load %struct.pkcs7_digest_st*, %struct.pkcs7_digest_st** %digest, align 8, !tbaa !12
  %contents76 = getelementptr inbounds %struct.pkcs7_digest_st, %struct.pkcs7_digest_st* %30, i64 0, i32 2
  %31 = load %struct.pkcs7_st*, %struct.pkcs7_st** %contents76, align 8, !tbaa !58
  %d77 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %31, i64 0, i32 5
  %data78 = bitcast %union.anon* %d77 to %struct.asn1_string_st**
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %data78, align 8, !tbaa !12
  br label %if.then126

sw.default:                                       ; preds = %if.end7
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 803, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.PKCS7_dataFinal, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 112, i8* noundef null) #5
  br label %err

sw.epilog:                                        ; preds = %sw.bb41, %land.lhs.true, %if.then53, %sw.bb10, %if.end20
  %si_sk.0 = phi %struct.stack_st_PKCS7_SIGNER_INFO* [ %16, %if.then53 ], [ %16, %land.lhs.true ], [ %16, %sw.bb41 ], [ %5, %if.end20 ], [ %5, %sw.bb10 ]
  %os.0 = phi %struct.asn1_string_st* [ null, %if.then53 ], [ %call46, %land.lhs.true ], [ %call46, %sw.bb41 ], [ %call17, %if.end20 ], [ %7, %sw.bb10 ]
  %cmp80.not = icmp eq %struct.stack_st_PKCS7_SIGNER_INFO* %si_sk.0, null
  br i1 %cmp80.not, label %if.end152, label %for.cond.preheader

for.cond.preheader:                               ; preds = %sw.epilog
  %call82 = call fastcc %struct.stack_st* @ossl_check_const_PKCS7_SIGNER_INFO_sk_type(%struct.stack_st_PKCS7_SIGNER_INFO* noundef nonnull %si_sk.0) #6
  %call83283 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call82) #5
  %cmp84284 = icmp sgt i32 %call83283, 0
  br i1 %cmp84284, label %for.body.lr.ph, label %if.end152

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %32 = bitcast i32* %abuflen to i8*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.0285 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %call86 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call82, i32 noundef %i.0285) #5
  %33 = bitcast i8* %call86 to %struct.pkcs7_signer_info_st*
  %pkey = getelementptr inbounds i8, i8* %call86, i64 56
  %34 = bitcast i8* %pkey to %struct.evp_pkey_st**
  %35 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %34, align 8, !tbaa !59
  %cmp87 = icmp eq %struct.evp_pkey_st* %35, null
  br i1 %cmp87, label %for.inc, label %if.end89

if.end89:                                         ; preds = %for.body
  %digest_alg = getelementptr inbounds i8, i8* %call86, i64 16
  %36 = bitcast i8* %digest_alg to %struct.X509_algor_st**
  %37 = load %struct.X509_algor_st*, %struct.X509_algor_st** %36, align 8, !tbaa !61
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %37, i64 0, i32 0
  %38 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !33
  %call90 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %38) #5
  %call91 = call fastcc %struct.bio_st* @PKCS7_find_digest(%struct.evp_md_ctx_st** noundef nonnull %mdc, %struct.bio_st* noundef %bio, i32 noundef %call90) #6
  %cmp92 = icmp eq %struct.bio_st* %call91, null
  br i1 %cmp92, label %err, label %if.end94

if.end94:                                         ; preds = %if.end89
  %39 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %mdc, align 8, !tbaa !15
  %call95 = call i32 @EVP_MD_CTX_copy_ex(%struct.evp_md_ctx_st* noundef nonnull %call4, %struct.evp_md_ctx_st* noundef %39) #5
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %err, label %if.end98

if.end98:                                         ; preds = %if.end94
  %auth_attr = getelementptr inbounds i8, i8* %call86, i64 24
  %40 = bitcast i8* %auth_attr to %struct.stack_st_X509_ATTRIBUTE**
  %41 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %40, align 8, !tbaa !62
  %call99 = call fastcc %struct.stack_st* @ossl_check_const_X509_ATTRIBUTE_sk_type(%struct.stack_st_X509_ATTRIBUTE* noundef %41) #6
  %call100 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call99) #5
  %cmp101 = icmp sgt i32 %call100, 0
  br i1 %cmp101, label %if.then102, label %if.else

if.then102:                                       ; preds = %if.end98
  %call103 = call fastcc i32 @do_pkcs7_signed_attrib(%struct.pkcs7_signer_info_st* noundef nonnull %33, %struct.evp_md_ctx_st* noundef nonnull %call4) #6
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %err, label %for.inc

if.else:                                          ; preds = %if.end98
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %32) #7
  %42 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %34, align 8, !tbaa !59
  %call108 = call i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef %42) #5
  store i32 %call108, i32* %abuflen, align 4, !tbaa !45
  %conv = zext i32 %call108 to i64
  %call109 = call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 841) #5
  %cmp110 = icmp eq i8* %call109, null
  br i1 %cmp110, label %cleanup.thread, label %if.end113

if.end113:                                        ; preds = %if.else
  %43 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %34, align 8, !tbaa !59
  %call115 = call %struct.ossl_lib_ctx_st* @ossl_pkcs7_ctx_get0_libctx(%struct.PKCS7_CTX_st* noundef %call) #5
  %call116 = call i8* @ossl_pkcs7_ctx_get0_propq(%struct.PKCS7_CTX_st* noundef %call) #5
  %call117 = call i32 @EVP_SignFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call4, i8* noundef nonnull %call109, i32* noundef nonnull %abuflen, %struct.evp_pkey_st* noundef %43, %struct.ossl_lib_ctx_st* noundef %call115, i8* noundef %call116) #5
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.then119, label %cleanup

if.then119:                                       ; preds = %if.end113
  call void @CRYPTO_free(i8* noundef nonnull %call109, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 848) #5
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 849, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.PKCS7_dataFinal, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 524294, i8* noundef null) #5
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.else, %if.then119
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %32) #7
  br label %err

cleanup:                                          ; preds = %if.end113
  %enc_digest = getelementptr inbounds i8, i8* %call86, i64 40
  %44 = bitcast i8* %enc_digest to %struct.asn1_string_st**
  %45 = load %struct.asn1_string_st*, %struct.asn1_string_st** %44, align 8, !tbaa !63
  %46 = load i32, i32* %abuflen, align 4, !tbaa !45
  call void @ASN1_STRING_set0(%struct.asn1_string_st* noundef %45, i8* noundef nonnull %call109, i32 noundef %46) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %32) #7
  br label %for.inc

for.inc:                                          ; preds = %cleanup, %if.then102, %for.body
  %inc = add nuw nsw i32 %i.0285, 1
  %call83 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call82) #5
  %cmp84 = icmp slt i32 %inc, %call83
  br i1 %cmp84, label %for.body, label %if.end152, !llvm.loop !64

if.then126:                                       ; preds = %if.then73, %land.lhs.true70, %sw.bb60
  %os.0.ph.ph = phi %struct.asn1_string_st* [ null, %if.then73 ], [ %call63, %land.lhs.true70 ], [ %call63, %sw.bb60 ]
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %md_data, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %47) #7
  %48 = bitcast i32* %md_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %48) #7
  %49 = load %struct.pkcs7_digest_st*, %struct.pkcs7_digest_st** %digest, align 8, !tbaa !12
  %md = getelementptr inbounds %struct.pkcs7_digest_st, %struct.pkcs7_digest_st* %49, i64 0, i32 1
  %50 = load %struct.X509_algor_st*, %struct.X509_algor_st** %md, align 8, !tbaa !29
  %algorithm129 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %50, i64 0, i32 0
  %51 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm129, align 8, !tbaa !33
  %call130 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %51) #5
  %call131 = call fastcc %struct.bio_st* @PKCS7_find_digest(%struct.evp_md_ctx_st** noundef nonnull %mdc, %struct.bio_st* noundef %bio, i32 noundef %call130) #6
  %tobool132.not = icmp eq %struct.bio_st* %call131, null
  br i1 %tobool132.not, label %cleanup147.thread, label %if.end134

if.end134:                                        ; preds = %if.then126
  %52 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %mdc, align 8, !tbaa !15
  %call135 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef %52, i8* noundef nonnull %47, i32* noundef nonnull %md_len) #5
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %cleanup147.thread, label %if.end138

if.end138:                                        ; preds = %if.end134
  %53 = load %struct.pkcs7_digest_st*, %struct.pkcs7_digest_st** %digest, align 8, !tbaa !12
  %digest141 = getelementptr inbounds %struct.pkcs7_digest_st, %struct.pkcs7_digest_st* %53, i64 0, i32 3
  %54 = load %struct.asn1_string_st*, %struct.asn1_string_st** %digest141, align 8, !tbaa !65
  %55 = load i32, i32* %md_len, align 4, !tbaa !45
  %call143 = call i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef %54, i8* noundef nonnull %47, i32 noundef %55) #5
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %cleanup147.thread, label %cleanup147

cleanup147.thread:                                ; preds = %if.then126, %if.end134, %if.end138
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %48) #7
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %47) #7
  br label %err

cleanup147:                                       ; preds = %if.end138
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %48) #7
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %47) #7
  br label %if.end152

if.end152:                                        ; preds = %for.inc, %for.cond.preheader, %sw.epilog, %cleanup147, %sw.bb, %sw.bb26, %if.end35
  %os.0270 = phi %struct.asn1_string_st* [ %os.0.ph.ph, %cleanup147 ], [ %3, %sw.bb ], [ %12, %sw.bb26 ], [ %call32, %if.end35 ], [ %os.0, %sw.epilog ], [ %os.0, %for.cond.preheader ], [ %os.0, %for.inc ]
  %56 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !4
  %call154 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %56) #5
  %cmp155 = icmp eq i32 %call154, 22
  br i1 %cmp155, label %land.lhs.true157, label %if.then160

land.lhs.true157:                                 ; preds = %if.end152
  %call158 = call i64 @PKCS7_ctrl(%struct.pkcs7_st* noundef nonnull %p7, i32 noundef 2, i64 noundef 0, i8* noundef null) #5
  %tobool159.not = icmp eq i64 %call158, 0
  br i1 %tobool159.not, label %if.then160, label %err

if.then160:                                       ; preds = %land.lhs.true157, %if.end152
  %cmp161 = icmp eq %struct.asn1_string_st* %os.0270, null
  br i1 %cmp161, label %err, label %if.end164

if.end164:                                        ; preds = %if.then160
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %os.0270, i64 0, i32 3
  %57 = load i64, i64* %flags, align 8, !tbaa !66
  %and = and i64 %57, 16
  %tobool165.not = icmp eq i64 %and, 0
  br i1 %tobool165.not, label %if.then166, label %err

if.then166:                                       ; preds = %if.end164
  %58 = bitcast i8** %cont to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %58) #7
  %call167 = call %struct.bio_st* @BIO_find_type(%struct.bio_st* noundef %bio, i32 noundef 1025) #5
  %cmp168 = icmp eq %struct.bio_st* %call167, null
  br i1 %cmp168, label %cleanup175, label %cleanup175.thread

cleanup175.thread:                                ; preds = %if.then166
  %call172 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call167, i32 noundef 3, i64 noundef 0, i8* noundef nonnull %58) #5
  call void @BIO_set_flags(%struct.bio_st* noundef nonnull %call167, i32 noundef 512) #5
  %call173 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call167, i32 noundef 130, i64 noundef 0, i8* noundef null) #5
  %59 = load i8*, i8** %cont, align 8, !tbaa !15
  %conv174 = trunc i64 %call172 to i32
  call void @ASN1_STRING_set0(%struct.asn1_string_st* noundef nonnull %os.0270, i8* noundef %59, i32 noundef %conv174) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %58) #7
  br label %err

cleanup175:                                       ; preds = %if.then166
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 879, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.PKCS7_dataFinal, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 107, i8* noundef null) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %58) #7
  br label %err

err:                                              ; preds = %if.then102, %if.end94, %if.end89, %land.lhs.true157, %if.end164, %cleanup175.thread, %cleanup175, %cleanup147.thread, %cleanup.thread, %if.then160, %sw.default, %if.then34, %if.then19
  %ret.0 = phi i32 [ 0, %sw.default ], [ 0, %if.then160 ], [ 0, %cleanup175 ], [ 0, %if.then34 ], [ 0, %if.then19 ], [ 0, %cleanup.thread ], [ 0, %cleanup147.thread ], [ 1, %cleanup175.thread ], [ 1, %if.end164 ], [ 1, %land.lhs.true157 ], [ 0, %if.end89 ], [ 0, %if.end94 ], [ 0, %if.then102 ]
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef nonnull %call4) #5
  br label %cleanup181

cleanup181:                                       ; preds = %err, %if.then6, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then6 ], [ %ret.0, %err ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #2

declare %struct.asn1_string_st* @ASN1_OCTET_STRING_new() local_unnamed_addr #2

declare void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_PKCS7_SIGNER_INFO_sk_type(%struct.stack_st_PKCS7_SIGNER_INFO* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_PKCS7_SIGNER_INFO* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.bio_st* @PKCS7_find_digest(%struct.evp_md_ctx_st** noundef %pmd, %struct.bio_st* noundef %bio, i32 noundef %nid) unnamed_addr #0 {
entry:
  %call19 = tail call %struct.bio_st* @BIO_find_type(%struct.bio_st* noundef %bio, i32 noundef 520) #5
  %cmp20 = icmp eq %struct.bio_st* %call19, null
  br i1 %cmp20, label %return.sink.split, label %if.end.lr.ph

if.end.lr.ph:                                     ; preds = %entry
  %0 = bitcast %struct.evp_md_ctx_st** %pmd to i8*
  br label %if.end

if.end:                                           ; preds = %if.end.lr.ph, %if.end9
  %call21 = phi %struct.bio_st* [ %call19, %if.end.lr.ph ], [ %call, %if.end9 ]
  %call1 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call21, i32 noundef 120, i64 noundef 0, i8* noundef %0) #5
  %1 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %pmd, align 8, !tbaa !15
  %cmp2 = icmp eq %struct.evp_md_ctx_st* %1, null
  br i1 %cmp2, label %return.sink.split, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef nonnull %1) #5
  %call6 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %call5) #5
  %cmp7 = icmp eq i32 %call6, %nid
  br i1 %cmp7, label %return, label %if.end9

if.end9:                                          ; preds = %if.end4
  %call10 = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef nonnull %call21) #5
  %call = tail call %struct.bio_st* @BIO_find_type(%struct.bio_st* noundef %call10, i32 noundef 520) #5
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %return.sink.split, label %if.end

return.sink.split:                                ; preds = %if.end, %if.end9, %entry
  %.sink26 = phi i32 [ 674, %entry ], [ 674, %if.end9 ], [ 679, %if.end ]
  %.sink = phi i32 [ 108, %entry ], [ 108, %if.end9 ], [ 786691, %if.end ]
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink26, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.PKCS7_find_digest, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef %.sink, i8* noundef null) #5
  br label %return

return:                                           ; preds = %if.end4, %return.sink.split
  %retval.0 = phi %struct.bio_st* [ null, %return.sink.split ], [ %call21, %if.end4 ]
  ret %struct.bio_st* %retval.0
}

declare i32 @EVP_MD_CTX_copy_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_ATTRIBUTE_sk_type(%struct.stack_st_X509_ATTRIBUTE* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_ATTRIBUTE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_pkcs7_signed_attrib(%struct.pkcs7_signer_info_st* noundef %si, %struct.evp_md_ctx_st* noundef %mctx) unnamed_addr #0 {
entry:
  %md_data = alloca [64 x i8], align 16
  %md_len = alloca i32, align 4
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %md_data, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #7
  %1 = bitcast i32* %md_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7
  %call = tail call %struct.asn1_type_st* @PKCS7_get_signed_attribute(%struct.pkcs7_signer_info_st* noundef %si, i32 noundef 52) #6
  %tobool.not = icmp eq %struct.asn1_type_st* %call, null
  br i1 %tobool.not, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @PKCS7_add0_attrib_signing_time(%struct.pkcs7_signer_info_st* noundef %si, %struct.asn1_string_st* noundef null) #5
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.then
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 697, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.do_pkcs7_signed_attrib, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end4:                                          ; preds = %if.then, %entry
  %call5 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef %mctx, i8* noundef nonnull %0, i32* noundef nonnull %md_len) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 704, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.do_pkcs7_signed_attrib, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 524294, i8* noundef null) #5
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %2 = load i32, i32* %md_len, align 4, !tbaa !45
  %call10 = call i32 @PKCS7_add1_attrib_digest(%struct.pkcs7_signer_info_st* noundef %si, i8* noundef nonnull %0, i32 noundef %2) #5
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end8
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 708, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.do_pkcs7_signed_attrib, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %call14 = call i32 @PKCS7_SIGNER_INFO_sign(%struct.pkcs7_signer_info_st* noundef %si) #6
  %tobool15.not = icmp ne i32 %call14, 0
  %. = zext i1 %tobool15.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then12, %if.then7, %if.then3
  %retval.0 = phi i32 [ 0, %if.then12 ], [ 0, %if.then7 ], [ 0, %if.then3 ], [ %., %if.end13 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #7
  ret i32 %retval.0
}

declare i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @EVP_SignFinal_ex(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef, %struct.evp_pkey_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ASN1_STRING_set0(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

declare i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.bio_st* @BIO_find_type(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @BIO_set_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS7_SIGNER_INFO_sign(%struct.pkcs7_signer_info_st* nocapture noundef readonly %si) local_unnamed_addr #0 {
entry:
  %pctx = alloca %struct.evp_pkey_ctx_st*, align 8
  %abuf = alloca i8*, align 8
  %siglen = alloca i64, align 8
  %0 = bitcast %struct.evp_pkey_ctx_st** %pctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store %struct.evp_pkey_ctx_st* null, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !15
  %1 = bitcast i8** %abuf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  store i8* null, i8** %abuf, align 8, !tbaa !15
  %2 = bitcast i64* %siglen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7
  %ctx1 = getelementptr inbounds %struct.pkcs7_signer_info_st, %struct.pkcs7_signer_info_st* %si, i64 0, i32 8
  %3 = load %struct.PKCS7_CTX_st*, %struct.PKCS7_CTX_st** %ctx1, align 8, !tbaa !67
  %digest_alg = getelementptr inbounds %struct.pkcs7_signer_info_st, %struct.pkcs7_signer_info_st* %si, i64 0, i32 2
  %4 = load %struct.X509_algor_st*, %struct.X509_algor_st** %digest_alg, align 8, !tbaa !61
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %4, i64 0, i32 0
  %5 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !33
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %5) #5
  %call2 = tail call i8* @OBJ_nid2sn(i32 noundef %call) #5
  %call3 = tail call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %call2) #5
  %cmp = icmp eq %struct.evp_md_st* %call3, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call4 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #5
  %cmp5 = icmp eq %struct.evp_md_ctx_st* %call4, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 914, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.PKCS7_SIGNER_INFO_sign, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 786688, i8* noundef null) #5
  br label %err

if.end7:                                          ; preds = %if.end
  %call8 = tail call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef nonnull %call3) #5
  %call9 = tail call %struct.ossl_lib_ctx_st* @ossl_pkcs7_ctx_get0_libctx(%struct.PKCS7_CTX_st* noundef %3) #5
  %call10 = tail call i8* @ossl_pkcs7_ctx_get0_propq(%struct.PKCS7_CTX_st* noundef %3) #5
  %pkey = getelementptr inbounds %struct.pkcs7_signer_info_st, %struct.pkcs7_signer_info_st* %si, i64 0, i32 7
  %6 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !59
  %call11 = call i32 @EVP_DigestSignInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call4, %struct.evp_pkey_ctx_st** noundef nonnull %pctx, i8* noundef %call8, %struct.ossl_lib_ctx_st* noundef %call9, i8* noundef %call10, %struct.evp_pkey_st* noundef %6, %struct.ossl_param_st* noundef null) #5
  %cmp12 = icmp slt i32 %call11, 1
  br i1 %cmp12, label %err, label %if.end14

if.end14:                                         ; preds = %if.end7
  %auth_attr = getelementptr inbounds %struct.pkcs7_signer_info_st, %struct.pkcs7_signer_info_st* %si, i64 0, i32 3
  %7 = bitcast %struct.stack_st_X509_ATTRIBUTE** %auth_attr to %struct.ASN1_VALUE_st**
  %8 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %7, align 8, !tbaa !62
  %call15 = call %struct.ASN1_ITEM_st* @PKCS7_ATTR_SIGN_it() #5
  %call16 = call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %8, i8** noundef nonnull %abuf, %struct.ASN1_ITEM_st* noundef %call15) #5
  %9 = load i8*, i8** %abuf, align 8, !tbaa !15
  %tobool.not = icmp eq i8* %9, null
  br i1 %tobool.not, label %err, label %if.end18

if.end18:                                         ; preds = %if.end14
  %conv = sext i32 %call16 to i64
  %call19 = call i32 @EVP_DigestSignUpdate(%struct.evp_md_ctx_st* noundef nonnull %call4, i8* noundef nonnull %9, i64 noundef %conv) #5
  %cmp20 = icmp slt i32 %call19, 1
  br i1 %cmp20, label %err, label %if.end23

if.end23:                                         ; preds = %if.end18
  %10 = load i8*, i8** %abuf, align 8, !tbaa !15
  call void @CRYPTO_free(i8* noundef %10, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 930) #5
  store i8* null, i8** %abuf, align 8, !tbaa !15
  %call24 = call i32 @EVP_DigestSignFinal(%struct.evp_md_ctx_st* noundef nonnull %call4, i8* noundef null, i64* noundef nonnull %siglen) #5
  %cmp25 = icmp slt i32 %call24, 1
  br i1 %cmp25, label %err, label %if.end28

if.end28:                                         ; preds = %if.end23
  %11 = load i64, i64* %siglen, align 8, !tbaa !43
  %call29 = call i8* @CRYPTO_malloc(i64 noundef %11, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 934) #5
  store i8* %call29, i8** %abuf, align 8, !tbaa !15
  %cmp30 = icmp eq i8* %call29, null
  br i1 %cmp30, label %err, label %if.end33

if.end33:                                         ; preds = %if.end28
  %call34 = call i32 @EVP_DigestSignFinal(%struct.evp_md_ctx_st* noundef nonnull %call4, i8* noundef nonnull %call29, i64* noundef nonnull %siglen) #5
  %cmp35 = icmp slt i32 %call34, 1
  br i1 %cmp35, label %err, label %if.end38

if.end38:                                         ; preds = %if.end33
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef nonnull %call4) #5
  %enc_digest = getelementptr inbounds %struct.pkcs7_signer_info_st, %struct.pkcs7_signer_info_st* %si, i64 0, i32 5
  %12 = load %struct.asn1_string_st*, %struct.asn1_string_st** %enc_digest, align 8, !tbaa !63
  %13 = load i8*, i8** %abuf, align 8, !tbaa !15
  %14 = load i64, i64* %siglen, align 8, !tbaa !43
  %conv39 = trunc i64 %14 to i32
  call void @ASN1_STRING_set0(%struct.asn1_string_st* noundef %12, i8* noundef %13, i32 noundef %conv39) #5
  br label %cleanup

err:                                              ; preds = %if.end33, %if.end28, %if.end23, %if.end18, %if.end14, %if.end7, %if.then6
  %15 = load i8*, i8** %abuf, align 8, !tbaa !15
  call void @CRYPTO_free(i8* noundef %15, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 947) #5
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call4) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %err, %if.end38
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end38 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestSignInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st** noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.evp_pkey_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @PKCS7_ATTR_SIGN_it() local_unnamed_addr #2

declare i32 @EVP_DigestSignUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestSignFinal(%struct.evp_md_ctx_st* noundef, i8* noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS7_dataVerify(%struct.x509_store_st* noundef %cert_store, %struct.x509_store_ctx_st* noundef %ctx, %struct.bio_st* noundef %bio, %struct.pkcs7_st* noundef %p7, %struct.pkcs7_signer_info_st* nocapture noundef readonly %si) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.pkcs7_st* %p7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 961, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.PKCS7_dataVerify, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 143, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %ptr = getelementptr %union.anon, %union.anon* %d, i64 0, i32 0
  %0 = load i8*, i8** %ptr, align 8, !tbaa !12
  %cmp1 = icmp eq i8* %0, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 966, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.PKCS7_dataVerify, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 122, i8* noundef null) #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 4
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !4
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %1) #5
  %cmp4 = icmp eq i32 %call, 22
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end3
  %sign = bitcast %union.anon* %d to %struct.pkcs7_signed_st**
  %2 = load %struct.pkcs7_signed_st*, %struct.pkcs7_signed_st** %sign, align 8, !tbaa !12
  %cert7 = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %2, i64 0, i32 2
  br label %if.end16

if.else:                                          ; preds = %if.end3
  %3 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !4
  %call9 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %3) #5
  %cmp10 = icmp eq i32 %call9, 24
  br i1 %cmp10, label %if.then11, label %if.else14

if.then11:                                        ; preds = %if.else
  %signed_and_enveloped = bitcast %union.anon* %d to %struct.pkcs7_signedandenveloped_st**
  %4 = load %struct.pkcs7_signedandenveloped_st*, %struct.pkcs7_signedandenveloped_st** %signed_and_enveloped, align 8, !tbaa !12
  %cert13 = getelementptr inbounds %struct.pkcs7_signedandenveloped_st, %struct.pkcs7_signedandenveloped_st* %4, i64 0, i32 2
  br label %if.end16

if.else14:                                        ; preds = %if.else
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 975, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.PKCS7_dataVerify, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 114, i8* noundef null) #5
  br label %cleanup

if.end16:                                         ; preds = %if.then11, %if.then5
  %cert.0.in = phi %struct.stack_st_X509** [ %cert7, %if.then5 ], [ %cert13, %if.then11 ]
  %cert.0 = load %struct.stack_st_X509*, %struct.stack_st_X509** %cert.0.in, align 8, !tbaa !15
  %issuer_and_serial = getelementptr inbounds %struct.pkcs7_signer_info_st, %struct.pkcs7_signer_info_st* %si, i64 0, i32 1
  %5 = load %struct.pkcs7_issuer_and_serial_st*, %struct.pkcs7_issuer_and_serial_st** %issuer_and_serial, align 8, !tbaa !68
  %issuer = getelementptr inbounds %struct.pkcs7_issuer_and_serial_st, %struct.pkcs7_issuer_and_serial_st* %5, i64 0, i32 0
  %6 = load %struct.X509_name_st*, %struct.X509_name_st** %issuer, align 8, !tbaa !52
  %serial = getelementptr inbounds %struct.pkcs7_issuer_and_serial_st, %struct.pkcs7_issuer_and_serial_st* %5, i64 0, i32 1
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %serial, align 8, !tbaa !54
  %call17 = tail call %struct.x509_st* @X509_find_by_issuer_and_serial(%struct.stack_st_X509* noundef %cert.0, %struct.X509_name_st* noundef %6, %struct.asn1_string_st* noundef %7) #5
  %cmp18 = icmp eq %struct.x509_st* %call17, null
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 985, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.PKCS7_dataVerify, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 106, i8* noundef null) #5
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %call21 = tail call i32 @X509_STORE_CTX_init(%struct.x509_store_ctx_st* noundef %ctx, %struct.x509_store_st* noundef %cert_store, %struct.x509_st* noundef nonnull %call17, %struct.stack_st_X509* noundef %cert.0) #5
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end20
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 991, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.PKCS7_dataVerify, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 524299, i8* noundef null) #5
  br label %cleanup

if.end23:                                         ; preds = %if.end20
  %call24 = tail call i32 @X509_STORE_CTX_set_purpose(%struct.x509_store_ctx_st* noundef %ctx, i32 noundef 4) #5
  %call25 = tail call i32 @X509_verify_cert(%struct.x509_store_ctx_st* noundef %ctx) #5
  %cmp26 = icmp slt i32 %call25, 1
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end23
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 997, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.PKCS7_dataVerify, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 524299, i8* noundef null) #5
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %call29 = tail call i32 @PKCS7_signatureVerify(%struct.bio_st* noundef %bio, %struct.pkcs7_st* noundef nonnull %p7, %struct.pkcs7_signer_info_st* noundef nonnull %si, %struct.x509_st* noundef nonnull %call17) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else14, %if.then19, %if.then22, %if.then27, %if.end28, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ %call29, %if.end28 ], [ 0, %if.then27 ], [ 0, %if.then22 ], [ 0, %if.then19 ], [ 0, %if.else14 ]
  ret i32 %retval.0
}

declare %struct.x509_st* @X509_find_by_issuer_and_serial(%struct.stack_st_X509* noundef, %struct.X509_name_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @X509_STORE_CTX_init(%struct.x509_store_ctx_st* noundef, %struct.x509_store_st* noundef, %struct.x509_st* noundef, %struct.stack_st_X509* noundef) local_unnamed_addr #2

declare i32 @X509_STORE_CTX_set_purpose(%struct.x509_store_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @X509_verify_cert(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS7_signatureVerify(%struct.bio_st* noundef %bio, %struct.pkcs7_st* noundef %p7, %struct.pkcs7_signer_info_st* nocapture noundef readonly %si, %struct.x509_st* noundef %x509) local_unnamed_addr #0 {
entry:
  %mdc = alloca %struct.evp_md_ctx_st*, align 8
  %md_dat = alloca [64 x i8], align 16
  %abuf = alloca i8*, align 8
  %md_len = alloca i32, align 4
  %0 = bitcast %struct.evp_md_ctx_st** %mdc to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %call = tail call %struct.PKCS7_CTX_st* @ossl_pkcs7_get0_ctx(%struct.pkcs7_st* noundef %p7) #5
  %call1 = tail call %struct.ossl_lib_ctx_st* @ossl_pkcs7_ctx_get0_libctx(%struct.PKCS7_CTX_st* noundef %call) #5
  %call2 = tail call i8* @ossl_pkcs7_ctx_get0_propq(%struct.PKCS7_CTX_st* noundef %call) #5
  %call3 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #5
  %cmp = icmp eq %struct.evp_md_ctx_st* %call3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1024, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.PKCS7_signatureVerify, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 786688, i8* noundef null) #5
  br label %err

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 4
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !4
  %call4 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %1) #5
  %cmp5 = icmp eq i32 %call4, 22
  br i1 %cmp5, label %if.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !4
  %call7 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %2) #5
  %cmp8 = icmp eq i32 %call7, 24
  br i1 %cmp8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %land.lhs.true
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1029, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.PKCS7_signatureVerify, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 114, i8* noundef null) #5
  br label %err

if.end10:                                         ; preds = %land.lhs.true, %if.end
  %digest_alg = getelementptr inbounds %struct.pkcs7_signer_info_st, %struct.pkcs7_signer_info_st* %si, i64 0, i32 2
  %3 = load %struct.X509_algor_st*, %struct.X509_algor_st** %digest_alg, align 8, !tbaa !61
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %3, i64 0, i32 0
  %4 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !33
  %call11 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %4) #5
  %cmp12172 = icmp eq %struct.bio_st* %bio, null
  br i1 %cmp12172, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end10, %if.end30
  %btmp.0173 = phi %struct.bio_st* [ %call31, %if.end30 ], [ %bio, %if.end10 ]
  %call13 = call %struct.bio_st* @BIO_find_type(%struct.bio_st* noundef nonnull %btmp.0173, i32 noundef 520) #5
  %cmp14 = icmp eq %struct.bio_st* %call13, null
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end30, %lor.lhs.false, %if.end10
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1039, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.PKCS7_signatureVerify, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 108, i8* noundef null) #5
  br label %err

if.end16:                                         ; preds = %lor.lhs.false
  %call17 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call13, i32 noundef 120, i64 noundef 0, i8* noundef nonnull %0) #5
  %5 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %mdc, align 8, !tbaa !15
  %cmp18 = icmp eq %struct.evp_md_ctx_st* %5, null
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1044, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.PKCS7_signatureVerify, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 786691, i8* noundef null) #5
  br label %err

if.end20:                                         ; preds = %if.end16
  %call21 = call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef nonnull %5) #5
  %call22 = call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %call21) #5
  %cmp23 = icmp eq i32 %call22, %call11
  br i1 %cmp23, label %for.end, label %if.end25

if.end25:                                         ; preds = %if.end20
  %6 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %mdc, align 8, !tbaa !15
  %call26 = call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef %6) #5
  %call27 = call i32 @EVP_MD_get_pkey_type(%struct.evp_md_st* noundef %call26) #5
  %cmp28 = icmp eq i32 %call27, %call11
  br i1 %cmp28, label %for.end, label %if.end30

if.end30:                                         ; preds = %if.end25
  %call31 = call %struct.bio_st* @BIO_next(%struct.bio_st* noundef nonnull %call13) #5
  %cmp12 = icmp eq %struct.bio_st* %call31, null
  br i1 %cmp12, label %if.then15, label %lor.lhs.false

for.end:                                          ; preds = %if.end25, %if.end20
  %7 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %mdc, align 8, !tbaa !15
  %call32 = call i32 @EVP_MD_CTX_copy_ex(%struct.evp_md_ctx_st* noundef nonnull %call3, %struct.evp_md_ctx_st* noundef %7) #5
  %tobool.not = icmp eq i32 %call32, 0
  br i1 %tobool.not, label %err, label %if.end34

if.end34:                                         ; preds = %for.end
  %auth_attr = getelementptr inbounds %struct.pkcs7_signer_info_st, %struct.pkcs7_signer_info_st* %si, i64 0, i32 3
  %8 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %auth_attr, align 8, !tbaa !62
  %cmp35.not = icmp eq %struct.stack_st_X509_ATTRIBUTE* %8, null
  br i1 %cmp35.not, label %if.end89, label %land.lhs.true36

land.lhs.true36:                                  ; preds = %if.end34
  %call37 = call fastcc %struct.stack_st* @ossl_check_const_X509_ATTRIBUTE_sk_type(%struct.stack_st_X509_ATTRIBUTE* noundef nonnull %8) #6
  %call38 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call37) #5
  %cmp39.not = icmp eq i32 %call38, 0
  br i1 %cmp39.not, label %if.end89, label %if.then40

if.then40:                                        ; preds = %land.lhs.true36
  %9 = getelementptr inbounds [64 x i8], [64 x i8]* %md_dat, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %9) #7
  %10 = bitcast i8** %abuf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #7
  store i8* null, i8** %abuf, align 8, !tbaa !15
  %11 = bitcast i32* %md_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #7
  %call41 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call3, i8* noundef nonnull %9, i32* noundef nonnull %md_len) #5
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %cleanup.thread, label %if.end44

if.end44:                                         ; preds = %if.then40
  %call45 = call %struct.asn1_string_st* @PKCS7_digest_from_attributes(%struct.stack_st_X509_ATTRIBUTE* noundef nonnull %8) #6
  %tobool46.not = icmp eq %struct.asn1_string_st* %call45, null
  br i1 %tobool46.not, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end44
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1076, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.PKCS7_signatureVerify, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 108, i8* noundef null) #5
  br label %cleanup.thread

if.end48:                                         ; preds = %if.end44
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call45, i64 0, i32 0
  %12 = load i32, i32* %length, align 8, !tbaa !37
  %13 = load i32, i32* %md_len, align 4, !tbaa !45
  %cmp49.not = icmp eq i32 %12, %13
  br i1 %cmp49.not, label %lor.lhs.false50, label %if.then54

lor.lhs.false50:                                  ; preds = %if.end48
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call45, i64 0, i32 2
  %14 = load i8*, i8** %data, align 8, !tbaa !39
  %conv = zext i32 %12 to i64
  %call52 = call i32 @memcmp(i8* noundef %14, i8* noundef nonnull %9, i64 noundef %conv) #8
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.then54

if.then54:                                        ; preds = %lor.lhs.false50, %if.end48
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1081, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.PKCS7_signatureVerify, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 101, i8* noundef null) #5
  br label %cleanup.thread

if.end55:                                         ; preds = %lor.lhs.false50
  %call56 = call i32 @ERR_set_mark() #5
  %call57 = call i8* @OBJ_nid2sn(i32 noundef %call11) #5
  %call58 = call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %call1, i8* noundef %call57, i8* noundef %call2) #5
  %cmp59.not = icmp eq %struct.evp_md_st* %call58, null
  br i1 %cmp59.not, label %if.end64, label %lor.lhs.false67

if.end64:                                         ; preds = %if.end55
  %call62 = call i8* @OBJ_nid2sn(i32 noundef %call11) #5
  %call63 = call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %call62) #5
  %cmp65 = icmp eq %struct.evp_md_st* %call63, null
  br i1 %cmp65, label %if.then70, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %if.end55, %if.end64
  %md.0166 = phi %struct.evp_md_st* [ %call63, %if.end64 ], [ %call58, %if.end55 ]
  %call68 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call3, %struct.evp_md_st* noundef nonnull %md.0166, %struct.engine_st* noundef null) #5
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then70, label %if.end72

if.then70:                                        ; preds = %lor.lhs.false67, %if.end64
  %call71 = call i32 @ERR_clear_last_mark() #5
  br label %cleanup.thread

if.end72:                                         ; preds = %lor.lhs.false67
  %call73 = call i32 @ERR_pop_to_mark() #5
  %15 = bitcast %struct.stack_st_X509_ATTRIBUTE* %8 to %struct.ASN1_VALUE_st*
  %call74 = call %struct.ASN1_ITEM_st* @PKCS7_ATTR_VERIFY_it() #5
  %call75 = call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef nonnull %15, i8** noundef nonnull %abuf, %struct.ASN1_ITEM_st* noundef %call74) #5
  %cmp76 = icmp slt i32 %call75, 1
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end72
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1103, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.PKCS7_signatureVerify, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 524301, i8* noundef null) #5
  br label %cleanup.thread

if.end79:                                         ; preds = %if.end72
  %16 = load i8*, i8** %abuf, align 8, !tbaa !15
  %conv80171 = zext i32 %call75 to i64
  %call81 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call3, i8* noundef %16, i64 noundef %conv80171) #5
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then54, %if.then70, %if.then78, %if.then47, %if.then40, %if.end79
  %ret.0.ph = phi i32 [ 0, %if.end79 ], [ 0, %if.then40 ], [ 0, %if.then47 ], [ -1, %if.then78 ], [ 0, %if.then70 ], [ -1, %if.then54 ]
  %fetched_md.0.ph = phi %struct.evp_md_st* [ %call58, %if.end79 ], [ null, %if.then40 ], [ null, %if.then47 ], [ %call58, %if.then78 ], [ %call58, %if.then70 ], [ null, %if.then54 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #7
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %9) #7
  br label %err

cleanup:                                          ; preds = %if.end79
  %17 = load i8*, i8** %abuf, align 8, !tbaa !15
  call void @CRYPTO_free(i8* noundef %17, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1110) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #7
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %9) #7
  br label %if.end89

if.end89:                                         ; preds = %cleanup, %land.lhs.true36, %if.end34
  %fetched_md.1 = phi %struct.evp_md_st* [ %call58, %cleanup ], [ null, %land.lhs.true36 ], [ null, %if.end34 ]
  %enc_digest = getelementptr inbounds %struct.pkcs7_signer_info_st, %struct.pkcs7_signer_info_st* %si, i64 0, i32 5
  %18 = load %struct.asn1_string_st*, %struct.asn1_string_st** %enc_digest, align 8, !tbaa !63
  %call90 = call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef %x509) #5
  %cmp91 = icmp eq %struct.evp_pkey_st* %call90, null
  br i1 %cmp91, label %err, label %if.end94

if.end94:                                         ; preds = %if.end89
  %data95 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %18, i64 0, i32 2
  %19 = load i8*, i8** %data95, align 8, !tbaa !39
  %length96 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %18, i64 0, i32 0
  %20 = load i32, i32* %length96, align 8, !tbaa !37
  %call97 = call i32 @EVP_VerifyFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call3, i8* noundef %19, i32 noundef %20, %struct.evp_pkey_st* noundef nonnull %call90, %struct.ossl_lib_ctx_st* noundef %call1, i8* noundef %call2) #5
  %cmp98 = icmp slt i32 %call97, 1
  br i1 %cmp98, label %if.then100, label %err

if.then100:                                       ; preds = %if.end94
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1122, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.PKCS7_signatureVerify, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 105, i8* noundef null) #5
  br label %err

err:                                              ; preds = %cleanup.thread, %if.end94, %if.end89, %for.end, %if.then100, %if.then19, %if.then15, %if.then9, %if.then
  %ret.1 = phi i32 [ 0, %if.then ], [ 0, %if.then15 ], [ 0, %if.then19 ], [ -1, %if.then100 ], [ 0, %for.end ], [ 0, %if.then9 ], [ -1, %if.end89 ], [ 1, %if.end94 ], [ %ret.0.ph, %cleanup.thread ]
  %fetched_md.2 = phi %struct.evp_md_st* [ null, %if.then ], [ null, %if.then15 ], [ null, %if.then19 ], [ %fetched_md.1, %if.then100 ], [ null, %for.end ], [ null, %if.then9 ], [ %fetched_md.1, %if.end89 ], [ %fetched_md.1, %if.end94 ], [ %fetched_md.0.ph, %cleanup.thread ]
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call3) #5
  call void @EVP_MD_free(%struct.evp_md_st* noundef %fetched_md.2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %ret.1
}

declare i32 @EVP_MD_get_type(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

declare i32 @EVP_MD_get_pkey_type(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare %struct.bio_st* @BIO_next(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @PKCS7_digest_from_attributes(%struct.stack_st_X509_ATTRIBUTE* noundef %sk) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.asn1_type_st* @get_attribute(%struct.stack_st_X509_ATTRIBUTE* noundef %sk, i32 noundef 51) #6
  %cmp = icmp eq %struct.asn1_type_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %call, i64 0, i32 1
  %octet_string = bitcast %union.anon.0* %value to %struct.asn1_string_st**
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %octet_string, align 8, !tbaa !12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.asn1_string_st* [ %0, %if.end ], [ null, %entry ]
  ret %struct.asn1_string_st* %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @PKCS7_ATTR_VERIFY_it() local_unnamed_addr #2

declare i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @EVP_VerifyFinal_ex(%struct.evp_md_ctx_st* noundef, i8* noundef, i32 noundef, %struct.evp_pkey_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_issuer_and_serial_st* @PKCS7_get_issuer_and_serial(%struct.pkcs7_st* nocapture noundef readonly %p7, i32 noundef %idx) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 4
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !4
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #5
  %cmp.not = icmp eq i32 %call, 24
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %signed_and_enveloped = bitcast %union.anon* %d to %struct.pkcs7_signedandenveloped_st**
  %1 = load %struct.pkcs7_signedandenveloped_st*, %struct.pkcs7_signedandenveloped_st** %signed_and_enveloped, align 8, !tbaa !12
  %cmp1 = icmp eq %struct.pkcs7_signedandenveloped_st* %1, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %recipientinfo = getelementptr inbounds %struct.pkcs7_signedandenveloped_st, %struct.pkcs7_signedandenveloped_st* %1, i64 0, i32 6
  %2 = load %struct.stack_st_PKCS7_RECIP_INFO*, %struct.stack_st_PKCS7_RECIP_INFO** %recipientinfo, align 8, !tbaa !19
  %cmp6 = icmp eq %struct.stack_st_PKCS7_RECIP_INFO* %2, null
  br i1 %cmp6, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end3
  %call9 = tail call fastcc %struct.stack_st* @ossl_check_const_PKCS7_RECIP_INFO_sk_type(%struct.stack_st_PKCS7_RECIP_INFO* noundef nonnull %2) #6
  %call10 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call9) #5
  %cmp11.not = icmp sgt i32 %call10, %idx
  br i1 %cmp11.not, label %if.end13, label %cleanup

if.end13:                                         ; preds = %if.end8
  %call15 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call9, i32 noundef %idx) #5
  %issuer_and_serial = getelementptr inbounds i8, i8* %call15, i64 8
  %3 = bitcast i8* %issuer_and_serial to %struct.pkcs7_issuer_and_serial_st**
  %4 = load %struct.pkcs7_issuer_and_serial_st*, %struct.pkcs7_issuer_and_serial_st** %3, align 8, !tbaa !51
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end3, %if.end, %entry, %if.end13
  %retval.0 = phi %struct.pkcs7_issuer_and_serial_st* [ %4, %if.end13 ], [ null, %entry ], [ null, %if.end ], [ null, %if.end3 ], [ null, %if.end8 ]
  ret %struct.pkcs7_issuer_and_serial_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_type_st* @PKCS7_get_signed_attribute(%struct.pkcs7_signer_info_st* nocapture noundef readonly %si, i32 noundef %nid) local_unnamed_addr #0 {
entry:
  %auth_attr = getelementptr inbounds %struct.pkcs7_signer_info_st, %struct.pkcs7_signer_info_st* %si, i64 0, i32 3
  %0 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %auth_attr, align 8, !tbaa !62
  %call = tail call fastcc %struct.asn1_type_st* @get_attribute(%struct.stack_st_X509_ATTRIBUTE* noundef %0, i32 noundef %nid) #6
  ret %struct.asn1_type_st* %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.asn1_type_st* @get_attribute(%struct.stack_st_X509_ATTRIBUTE* noundef %sk, i32 noundef %nid) unnamed_addr #0 {
entry:
  %call = tail call i32 @X509at_get_attr_by_NID(%struct.stack_st_X509_ATTRIBUTE* noundef %sk, i32 noundef %nid, i32 noundef -1) #5
  %call1 = tail call %struct.x509_attributes_st* @X509at_get_attr(%struct.stack_st_X509_ATTRIBUTE* noundef %sk, i32 noundef %call) #5
  %call2 = tail call %struct.asn1_type_st* @X509_ATTRIBUTE_get0_type(%struct.x509_attributes_st* noundef %call1, i32 noundef 0) #5
  ret %struct.asn1_type_st* %call2
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_type_st* @PKCS7_get_attribute(%struct.pkcs7_signer_info_st* nocapture noundef readonly %si, i32 noundef %nid) local_unnamed_addr #0 {
entry:
  %unauth_attr = getelementptr inbounds %struct.pkcs7_signer_info_st, %struct.pkcs7_signer_info_st* %si, i64 0, i32 6
  %0 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %unauth_attr, align 8, !tbaa !69
  %call = tail call fastcc %struct.asn1_type_st* @get_attribute(%struct.stack_st_X509_ATTRIBUTE* noundef %0, i32 noundef %nid) #6
  ret %struct.asn1_type_st* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS7_set_signed_attributes(%struct.pkcs7_signer_info_st* nocapture noundef %p7si, %struct.stack_st_X509_ATTRIBUTE* noundef %sk) local_unnamed_addr #0 {
entry:
  %auth_attr = getelementptr inbounds %struct.pkcs7_signer_info_st, %struct.pkcs7_signer_info_st* %p7si, i64 0, i32 3
  %0 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %auth_attr, align 8, !tbaa !62
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_ATTRIBUTE_sk_type(%struct.stack_st_X509_ATTRIBUTE* noundef %0) #6
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.x509_attributes_st*)* @X509_ATTRIBUTE_free to void (i8*)*)) #5
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_ATTRIBUTE_sk_type(%struct.stack_st_X509_ATTRIBUTE* noundef %sk) #6
  %call3 = tail call %struct.stack_st* @OPENSSL_sk_dup(%struct.stack_st* noundef %call2) #5
  %1 = bitcast %struct.stack_st_X509_ATTRIBUTE** %auth_attr to %struct.stack_st**
  store %struct.stack_st* %call3, %struct.stack_st** %1, align 8, !tbaa !62
  %cmp = icmp eq %struct.stack_st* %call3, null
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call728 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #5
  %cmp829 = icmp sgt i32 %call728, 0
  br i1 %cmp829, label %for.body, label %cleanup

for.cond:                                         ; preds = %for.body
  %call7 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #5
  %cmp8 = icmp slt i32 %inc, %call7
  br i1 %cmp8, label %for.body, label %cleanup, !llvm.loop !70

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.030 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %2 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %auth_attr, align 8, !tbaa !62
  %call10 = tail call fastcc %struct.stack_st* @ossl_check_X509_ATTRIBUTE_sk_type(%struct.stack_st_X509_ATTRIBUTE* noundef %2) #6
  %call12 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call2, i32 noundef %i.030) #5
  %3 = bitcast i8* %call12 to %struct.x509_attributes_st*
  %call13 = tail call %struct.x509_attributes_st* @X509_ATTRIBUTE_dup(%struct.x509_attributes_st* noundef %3) #5
  %4 = bitcast %struct.x509_attributes_st* %call13 to i8*
  %call15 = tail call i8* @OPENSSL_sk_set(%struct.stack_st* noundef %call10, i32 noundef %i.030, i8* noundef %4) #5
  %cmp16 = icmp eq i8* %call15, null
  %inc = add nuw nsw i32 %i.030, 1
  br i1 %cmp16, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.body, %for.cond, %for.cond.preheader, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %for.cond.preheader ], [ 0, %for.body ], [ 1, %for.cond ]
  ret i32 %retval.0
}

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_ATTRIBUTE_sk_type(%struct.stack_st_X509_ATTRIBUTE* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_ATTRIBUTE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_ATTRIBUTE_free(%struct.x509_attributes_st* noundef) #2

declare %struct.stack_st* @OPENSSL_sk_dup(%struct.stack_st* noundef) local_unnamed_addr #2

declare i8* @OPENSSL_sk_set(%struct.stack_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare %struct.x509_attributes_st* @X509_ATTRIBUTE_dup(%struct.x509_attributes_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS7_set_attributes(%struct.pkcs7_signer_info_st* nocapture noundef %p7si, %struct.stack_st_X509_ATTRIBUTE* noundef %sk) local_unnamed_addr #0 {
entry:
  %unauth_attr = getelementptr inbounds %struct.pkcs7_signer_info_st, %struct.pkcs7_signer_info_st* %p7si, i64 0, i32 6
  %0 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %unauth_attr, align 8, !tbaa !69
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_ATTRIBUTE_sk_type(%struct.stack_st_X509_ATTRIBUTE* noundef %0) #6
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.x509_attributes_st*)* @X509_ATTRIBUTE_free to void (i8*)*)) #5
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_ATTRIBUTE_sk_type(%struct.stack_st_X509_ATTRIBUTE* noundef %sk) #6
  %call3 = tail call %struct.stack_st* @OPENSSL_sk_dup(%struct.stack_st* noundef %call2) #5
  %1 = bitcast %struct.stack_st_X509_ATTRIBUTE** %unauth_attr to %struct.stack_st**
  store %struct.stack_st* %call3, %struct.stack_st** %1, align 8, !tbaa !69
  %cmp = icmp eq %struct.stack_st* %call3, null
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call728 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #5
  %cmp829 = icmp sgt i32 %call728, 0
  br i1 %cmp829, label %for.body, label %cleanup

for.cond:                                         ; preds = %for.body
  %call7 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #5
  %cmp8 = icmp slt i32 %inc, %call7
  br i1 %cmp8, label %for.body, label %cleanup, !llvm.loop !71

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.030 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %2 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %unauth_attr, align 8, !tbaa !69
  %call10 = tail call fastcc %struct.stack_st* @ossl_check_X509_ATTRIBUTE_sk_type(%struct.stack_st_X509_ATTRIBUTE* noundef %2) #6
  %call12 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call2, i32 noundef %i.030) #5
  %3 = bitcast i8* %call12 to %struct.x509_attributes_st*
  %call13 = tail call %struct.x509_attributes_st* @X509_ATTRIBUTE_dup(%struct.x509_attributes_st* noundef %3) #5
  %4 = bitcast %struct.x509_attributes_st* %call13 to i8*
  %call15 = tail call i8* @OPENSSL_sk_set(%struct.stack_st* noundef %call10, i32 noundef %i.030, i8* noundef %4) #5
  %cmp16 = icmp eq i8* %call15, null
  %inc = add nuw nsw i32 %i.030, 1
  br i1 %cmp16, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.body, %for.cond, %for.cond.preheader, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %for.cond.preheader ], [ 0, %for.body ], [ 1, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS7_add_signed_attribute(%struct.pkcs7_signer_info_st* nocapture noundef %p7si, i32 noundef %nid, i32 noundef %atrtype, i8* noundef %value) local_unnamed_addr #0 {
entry:
  %auth_attr = getelementptr inbounds %struct.pkcs7_signer_info_st, %struct.pkcs7_signer_info_st* %p7si, i64 0, i32 3
  %call = tail call fastcc i32 @add_attribute(%struct.stack_st_X509_ATTRIBUTE** noundef nonnull %auth_attr, i32 noundef %nid, i32 noundef %atrtype, i8* noundef %value) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @add_attribute(%struct.stack_st_X509_ATTRIBUTE** nocapture noundef %sk, i32 noundef %nid, i32 noundef %atrtype, i8* noundef %value) unnamed_addr #0 {
entry:
  %0 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %sk, align 8, !tbaa !15
  %cmp = icmp eq %struct.stack_st_X509_ATTRIBUTE* %0, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call1258 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_ATTRIBUTE_sk_type(%struct.stack_st_X509_ATTRIBUTE* noundef nonnull %0) #6
  %call1359 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1258) #5
  %cmp1460 = icmp sgt i32 %call1359, 0
  br i1 %cmp1460, label %for.body, label %new_attrib

if.then:                                          ; preds = %entry
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %1 = bitcast %struct.stack_st_X509_ATTRIBUTE** %sk to %struct.stack_st**
  store %struct.stack_st* %call, %struct.stack_st** %1, align 8, !tbaa !15
  %cmp1 = icmp eq %struct.stack_st* %call, null
  br i1 %cmp1, label %cleanup33, label %new_attrib

new_attrib:                                       ; preds = %for.inc, %for.cond.preheader, %if.then
  %call3 = tail call %struct.x509_attributes_st* @X509_ATTRIBUTE_create(i32 noundef %nid, i32 noundef %atrtype, i8* noundef %value) #5
  %cmp4 = icmp eq %struct.x509_attributes_st* %call3, null
  br i1 %cmp4, label %cleanup33, label %if.end6

if.end6:                                          ; preds = %new_attrib
  %2 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %sk, align 8, !tbaa !15
  %call7 = tail call fastcc %struct.stack_st* @ossl_check_X509_ATTRIBUTE_sk_type(%struct.stack_st_X509_ATTRIBUTE* noundef %2) #6
  %3 = bitcast %struct.x509_attributes_st* %call3 to i8*
  %call9 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call7, i8* noundef nonnull %3) #5
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %cleanup33.sink.split, label %cleanup33

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.061 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %4 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %sk, align 8, !tbaa !15
  %call15 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_ATTRIBUTE_sk_type(%struct.stack_st_X509_ATTRIBUTE* noundef %4) #6
  %call16 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call15, i32 noundef %i.061) #5
  %5 = bitcast i8* %call16 to %struct.x509_attributes_st*
  %call17 = tail call %struct.asn1_object_st* @X509_ATTRIBUTE_get0_object(%struct.x509_attributes_st* noundef %5) #5
  %call18 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %call17) #5
  %cmp19 = icmp eq i32 %call18, %nid
  br i1 %cmp19, label %if.then20, label %for.inc

if.then20:                                        ; preds = %for.body
  %6 = bitcast i8* %call16 to %struct.x509_attributes_st*
  tail call void @X509_ATTRIBUTE_free(%struct.x509_attributes_st* noundef %6) #5
  %call21 = tail call %struct.x509_attributes_st* @X509_ATTRIBUTE_create(i32 noundef %nid, i32 noundef %atrtype, i8* noundef %value) #5
  %cmp22 = icmp eq %struct.x509_attributes_st* %call21, null
  br i1 %cmp22, label %cleanup33, label %if.end24

if.end24:                                         ; preds = %if.then20
  %7 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %sk, align 8, !tbaa !15
  %call25 = tail call fastcc %struct.stack_st* @ossl_check_X509_ATTRIBUTE_sk_type(%struct.stack_st_X509_ATTRIBUTE* noundef %7) #6
  %8 = bitcast %struct.x509_attributes_st* %call21 to i8*
  %call27 = tail call i8* @OPENSSL_sk_set(%struct.stack_st* noundef %call25, i32 noundef %i.061, i8* noundef nonnull %8) #5
  %tobool28.not = icmp eq i8* %call27, null
  br i1 %tobool28.not, label %cleanup33.sink.split, label %cleanup33

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.061, 1
  %9 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %sk, align 8, !tbaa !15
  %call12 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_ATTRIBUTE_sk_type(%struct.stack_st_X509_ATTRIBUTE* noundef %9) #6
  %call13 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call12) #5
  %cmp14 = icmp slt i32 %inc, %call13
  br i1 %cmp14, label %for.body, label %new_attrib, !llvm.loop !72

cleanup33.sink.split:                             ; preds = %if.end24, %if.end6
  %call21.sink = phi %struct.x509_attributes_st* [ %call3, %if.end6 ], [ %call21, %if.end24 ]
  tail call void @X509_ATTRIBUTE_free(%struct.x509_attributes_st* noundef nonnull %call21.sink) #5
  br label %cleanup33

cleanup33:                                        ; preds = %cleanup33.sink.split, %if.then20, %if.end6, %if.end24, %new_attrib, %if.then
  %retval.1 = phi i32 [ 0, %if.then ], [ 0, %new_attrib ], [ 1, %if.end24 ], [ 1, %if.end6 ], [ 0, %if.then20 ], [ 0, %cleanup33.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS7_add_attribute(%struct.pkcs7_signer_info_st* nocapture noundef %p7si, i32 noundef %nid, i32 noundef %atrtype, i8* noundef %value) local_unnamed_addr #0 {
entry:
  %unauth_attr = getelementptr inbounds %struct.pkcs7_signer_info_st, %struct.pkcs7_signer_info_st* %p7si, i64 0, i32 6
  %call = tail call fastcc i32 @add_attribute(%struct.stack_st_X509_ATTRIBUTE** noundef nonnull %unauth_attr, i32 noundef %nid, i32 noundef %atrtype, i8* noundef %value) #6
  ret i32 %call
}

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef, %struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_encrypt_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_encrypt(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare i32 @X509_NAME_cmp(%struct.X509_name_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #2

declare %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @X509_get0_serialNumber(%struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_decrypt_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_decrypt(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @PKCS7_add0_attrib_signing_time(%struct.pkcs7_signer_info_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @PKCS7_add1_attrib_digest(%struct.pkcs7_signer_info_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @X509at_get_attr_by_NID(%struct.stack_st_X509_ATTRIBUTE* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare %struct.x509_attributes_st* @X509at_get_attr(%struct.stack_st_X509_ATTRIBUTE* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.asn1_type_st* @X509_ATTRIBUTE_get0_type(%struct.x509_attributes_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare %struct.x509_attributes_st* @X509_ATTRIBUTE_create(i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.asn1_object_st* @X509_ATTRIBUTE_get0_object(%struct.x509_attributes_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 24}
!5 = !{!"pkcs7_st", !6, i64 0, !9, i64 8, !10, i64 16, !10, i64 20, !6, i64 24, !7, i64 32, !11, i64 40}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!"PKCS7_CTX_st", !6, i64 0, !6, i64 8}
!12 = !{!7, !7, i64 0}
!13 = !{!14, !10, i64 0}
!14 = !{!"asn1_type_st", !10, i64 0, !7, i64 8}
!15 = !{!6, !6, i64 0}
!16 = !{!5, !10, i64 16}
!17 = !{!18, !6, i64 8}
!18 = !{!"pkcs7_signed_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40}
!19 = !{!20, !6, i64 48}
!20 = !{!"pkcs7_signedandenveloped_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48}
!21 = !{!20, !6, i64 8}
!22 = !{!20, !6, i64 40}
!23 = !{!24, !6, i64 8}
!24 = !{!"pkcs7_enc_content_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!25 = !{!24, !6, i64 24}
!26 = !{!27, !6, i64 8}
!27 = !{!"pkcs7_enveloped_st", !6, i64 0, !6, i64 8, !6, i64 16}
!28 = !{!27, !6, i64 16}
!29 = !{!30, !6, i64 8}
!30 = !{!"pkcs7_digest_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!34, !6, i64 0}
!34 = !{!"X509_algor_st", !6, i64 0, !6, i64 8}
!35 = !{!34, !6, i64 8}
!36 = distinct !{!36, !32}
!37 = !{!38, !10, i64 0}
!38 = !{!"asn1_string_st", !10, i64 0, !10, i64 4, !6, i64 8, !9, i64 16}
!39 = !{!38, !6, i64 8}
!40 = !{!41, !6, i64 40}
!41 = !{!"pkcs7_recip_info_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40}
!42 = !{!41, !6, i64 32}
!43 = !{!9, !9, i64 0}
!44 = !{!41, !6, i64 24}
!45 = !{!10, !10, i64 0}
!46 = !{!18, !6, i64 40}
!47 = !{!24, !6, i64 16}
!48 = distinct !{!48, !32}
!49 = distinct !{!49, !32}
!50 = distinct !{!50, !32}
!51 = !{!41, !6, i64 8}
!52 = !{!53, !6, i64 0}
!53 = !{!"pkcs7_issuer_and_serial_st", !6, i64 0, !6, i64 8}
!54 = !{!53, !6, i64 8}
!55 = !{!20, !6, i64 32}
!56 = !{!18, !6, i64 32}
!57 = !{!5, !10, i64 20}
!58 = !{!30, !6, i64 16}
!59 = !{!60, !6, i64 56}
!60 = !{!"pkcs7_signer_info_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64}
!61 = !{!60, !6, i64 16}
!62 = !{!60, !6, i64 24}
!63 = !{!60, !6, i64 40}
!64 = distinct !{!64, !32}
!65 = !{!30, !6, i64 24}
!66 = !{!38, !9, i64 16}
!67 = !{!60, !6, i64 64}
!68 = !{!60, !6, i64 8}
!69 = !{!60, !6, i64 48}
!70 = distinct !{!70, !32}
!71 = distinct !{!71, !32}
!72 = distinct !{!72, !32}
