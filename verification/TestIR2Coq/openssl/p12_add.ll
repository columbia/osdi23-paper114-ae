; ModuleID = 'crypto/pkcs12/p12_add.c'
source_filename = "crypto/pkcs12/p12_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PKCS12_SAFEBAG_st = type { %struct.asn1_object_st*, %union.anon, %struct.stack_st_X509_ATTRIBUTE* }
%struct.asn1_object_st = type opaque
%union.anon = type { %struct.pkcs12_bag_st* }
%struct.pkcs12_bag_st = type { %struct.asn1_object_st*, %union.anon.0 }
%union.anon.0 = type { %struct.asn1_string_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.ASN1_ITEM_st = type opaque
%struct.pkcs7_st = type { i8*, i64, i32, i32, %struct.asn1_object_st*, %union.anon.2, %struct.PKCS7_CTX_st }
%union.anon.2 = type { i8* }
%struct.PKCS7_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_PKCS12_SAFEBAG = type opaque
%struct.evp_cipher_st = type opaque
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_type_st = type { i32, %union.anon.1 }
%union.anon.1 = type { i8* }
%struct.pkcs7_encrypted_st = type { %struct.asn1_string_st*, %struct.pkcs7_enc_content_st* }
%struct.pkcs7_enc_content_st = type { %struct.asn1_object_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_cipher_st*, %struct.PKCS7_CTX_st* }
%struct.pkcs8_priv_key_info_st = type opaque
%struct.X509_sig_st = type opaque
%struct.PKCS12_st = type { %struct.asn1_string_st*, %struct.PKCS12_MAC_DATA_st*, %struct.pkcs7_st* }
%struct.PKCS12_MAC_DATA_st = type { %struct.X509_sig_st*, %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.stack_st_PKCS7 = type opaque
%struct.stack_st = type opaque

@.str = private unnamed_addr constant [24 x i8] c"crypto/pkcs12/p12_add.c\00", align 1
@__func__.PKCS12_item_pack_safebag = private unnamed_addr constant [25 x i8] c"PKCS12_item_pack_safebag\00", align 1
@__func__.PKCS12_pack_p7data = private unnamed_addr constant [19 x i8] c"PKCS12_pack_p7data\00", align 1
@__func__.PKCS12_unpack_p7data = private unnamed_addr constant [21 x i8] c"PKCS12_unpack_p7data\00", align 1
@__func__.PKCS12_pack_p7encdata_ex = private unnamed_addr constant [25 x i8] c"PKCS12_pack_p7encdata_ex\00", align 1
@__func__.PKCS12_unpack_authsafes = private unnamed_addr constant [24 x i8] c"PKCS12_unpack_authsafes\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.PKCS12_SAFEBAG_st* @PKCS12_item_pack_safebag(i8* noundef %obj, %struct.ASN1_ITEM_st* noundef %it, i32 noundef %nid1, i32 noundef %nid2) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.pkcs12_bag_st* @PKCS12_BAGS_new() #3
  %cmp = icmp eq %struct.pkcs12_bag_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 27, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.PKCS12_item_pack_safebag, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 786688, i8* noundef null) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %nid1) #3
  %type = getelementptr inbounds %struct.pkcs12_bag_st, %struct.pkcs12_bag_st* %call, i64 0, i32 0
  store %struct.asn1_object_st* %call1, %struct.asn1_object_st** %type, align 8, !tbaa !4
  %octet = getelementptr inbounds %struct.pkcs12_bag_st, %struct.pkcs12_bag_st* %call, i64 0, i32 1, i32 0
  %call2 = tail call %struct.asn1_string_st* @ASN1_item_pack(i8* noundef %obj, %struct.ASN1_ITEM_st* noundef %it, %struct.asn1_string_st** noundef nonnull %octet) #3
  %tobool.not = icmp eq %struct.asn1_string_st* %call2, null
  br i1 %tobool.not, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call %struct.PKCS12_SAFEBAG_st* @PKCS12_SAFEBAG_new() #3
  %cmp6 = icmp eq %struct.PKCS12_SAFEBAG_st* %call5, null
  br i1 %cmp6, label %err, label %if.end8

if.end8:                                          ; preds = %if.end4
  %bag10 = getelementptr inbounds %struct.PKCS12_SAFEBAG_st, %struct.PKCS12_SAFEBAG_st* %call5, i64 0, i32 1, i32 0
  store %struct.pkcs12_bag_st* %call, %struct.pkcs12_bag_st** %bag10, align 8, !tbaa !9
  %call11 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %nid2) #3
  %type12 = getelementptr inbounds %struct.PKCS12_SAFEBAG_st, %struct.PKCS12_SAFEBAG_st* %call5, i64 0, i32 0
  store %struct.asn1_object_st* %call11, %struct.asn1_object_st** %type12, align 8, !tbaa !10
  br label %cleanup

err:                                              ; preds = %if.end4, %if.end
  %.sink = phi i32 [ 32, %if.end ], [ 36, %if.end4 ]
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.PKCS12_item_pack_safebag, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 786688, i8* noundef null) #3
  tail call void @PKCS12_BAGS_free(%struct.pkcs12_bag_st* noundef nonnull %call) #3
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end8, %if.then
  %retval.0 = phi %struct.PKCS12_SAFEBAG_st* [ null, %if.then ], [ null, %err ], [ %call5, %if.end8 ]
  ret %struct.PKCS12_SAFEBAG_st* %retval.0
}

declare %struct.pkcs12_bag_st* @PKCS12_BAGS_new() local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #1

declare %struct.asn1_string_st* @ASN1_item_pack(i8* noundef, %struct.ASN1_ITEM_st* noundef, %struct.asn1_string_st** noundef) local_unnamed_addr #1

declare %struct.PKCS12_SAFEBAG_st* @PKCS12_SAFEBAG_new() local_unnamed_addr #1

declare void @PKCS12_BAGS_free(%struct.pkcs12_bag_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_st* @PKCS12_pack_p7data(%struct.stack_st_PKCS12_SAFEBAG* noundef %sk) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.pkcs7_st* @PKCS7_new() #3
  %cmp = icmp eq %struct.pkcs7_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.PKCS12_pack_p7data, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 786688, i8* noundef null) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 21) #3
  %type = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %call, i64 0, i32 4
  store %struct.asn1_object_st* %call1, %struct.asn1_object_st** %type, align 8, !tbaa !12
  %call2 = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #3
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %call, i64 0, i32 5
  %data = bitcast %union.anon.2* %d to %struct.asn1_string_st**
  store %struct.asn1_string_st* %call2, %struct.asn1_string_st** %data, align 8, !tbaa !9
  %cmp3 = icmp eq %struct.asn1_string_st* %call2, null
  br i1 %cmp3, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %0 = bitcast %struct.stack_st_PKCS12_SAFEBAG* %sk to i8*
  %call6 = tail call %struct.ASN1_ITEM_st* @PKCS12_SAFEBAGS_it() #3
  %call9 = tail call %struct.asn1_string_st* @ASN1_item_pack(i8* noundef %0, %struct.ASN1_ITEM_st* noundef %call6, %struct.asn1_string_st** noundef nonnull %data) #3
  %tobool.not = icmp eq %struct.asn1_string_st* %call9, null
  br i1 %tobool.not, label %err, label %cleanup

err:                                              ; preds = %if.end5, %if.end
  %.sink17 = phi i32 [ 59, %if.end ], [ 64, %if.end5 ]
  %.sink = phi i32 [ 786688, %if.end ], [ 100, %if.end5 ]
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink17, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.PKCS12_pack_p7data, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef %.sink, i8* noundef null) #3
  tail call void @PKCS7_free(%struct.pkcs7_st* noundef nonnull %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %err, %if.then
  %retval.0 = phi %struct.pkcs7_st* [ null, %if.then ], [ null, %err ], [ %call, %if.end5 ]
  ret %struct.pkcs7_st* %retval.0
}

declare %struct.pkcs7_st* @PKCS7_new() local_unnamed_addr #1

declare %struct.asn1_string_st* @ASN1_OCTET_STRING_new() local_unnamed_addr #1

declare %struct.ASN1_ITEM_st* @PKCS12_SAFEBAGS_it() local_unnamed_addr #1

declare void @PKCS7_free(%struct.pkcs7_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_PKCS12_SAFEBAG* @PKCS12_unpack_p7data(%struct.pkcs7_st* nocapture noundef readonly %p7) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 4
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !12
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #3
  %cmp = icmp eq i32 %call, 21
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.PKCS12_unpack_p7data, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 121, i8* noundef null) #3
  br label %return

if.end:                                           ; preds = %entry
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %data = bitcast %union.anon.2* %d to %struct.asn1_string_st**
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %data, align 8, !tbaa !9
  %call1 = tail call %struct.ASN1_ITEM_st* @PKCS12_SAFEBAGS_it() #3
  %call2 = tail call i8* @ASN1_item_unpack(%struct.asn1_string_st* noundef %1, %struct.ASN1_ITEM_st* noundef %call1) #3
  %2 = bitcast i8* %call2 to %struct.stack_st_PKCS12_SAFEBAG*
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.stack_st_PKCS12_SAFEBAG* [ %2, %if.end ], [ null, %if.then ]
  ret %struct.stack_st_PKCS12_SAFEBAG* %retval.0
}

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #1

declare i8* @ASN1_item_unpack(%struct.asn1_string_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_st* @PKCS12_pack_p7encdata_ex(i32 noundef %pbe_nid, i8* noundef %pass, i32 noundef %passlen, i8* noundef %salt, i32 noundef %saltlen, i32 noundef %iter, %struct.stack_st_PKCS12_SAFEBAG* noundef %bags, %struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.pkcs7_st* @PKCS7_new_ex(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %propq) #3
  %cmp = icmp eq %struct.pkcs7_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 97, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.PKCS12_pack_p7encdata_ex, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 786688, i8* noundef null) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @PKCS7_set_type(%struct.pkcs7_st* noundef nonnull %call, i32 noundef 26) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @ERR_set_mark() #3
  %call5 = tail call i8* @OBJ_nid2sn(i32 noundef %pbe_nid) #3
  %call6 = tail call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %call5, i8* noundef %propq) #3
  %cmp7 = icmp eq %struct.evp_cipher_st* %call6, null
  br i1 %cmp7, label %if.end11, label %if.end11.thread

if.end11.thread:                                  ; preds = %if.end3
  %call1268 = tail call i32 @ERR_pop_to_mark() #3
  br label %if.then14

if.end11:                                         ; preds = %if.end3
  %call9 = tail call i8* @OBJ_nid2sn(i32 noundef %pbe_nid) #3
  %call10 = tail call %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef %call9) #3
  %call12 = tail call i32 @ERR_pop_to_mark() #3
  %cmp13.not = icmp eq %struct.evp_cipher_st* %call10, null
  br i1 %cmp13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end11.thread, %if.end11
  %pbe_ciph.070 = phi %struct.evp_cipher_st* [ %call6, %if.end11.thread ], [ %call10, %if.end11 ]
  %call15 = tail call %struct.X509_algor_st* @PKCS5_pbe2_set_iv_ex(%struct.evp_cipher_st* noundef nonnull %pbe_ciph.070, i32 noundef %iter, i8* noundef %salt, i32 noundef %saltlen, i8* noundef null, i32 noundef -1, %struct.ossl_lib_ctx_st* noundef %ctx) #3
  br label %if.end17

if.else:                                          ; preds = %if.end11
  %call16 = tail call %struct.X509_algor_st* @PKCS5_pbe_set_ex(i32 noundef %pbe_nid, i32 noundef %iter, i8* noundef %salt, i32 noundef %saltlen, %struct.ossl_lib_ctx_st* noundef %ctx) #3
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then14
  %pbe.0 = phi %struct.X509_algor_st* [ %call15, %if.then14 ], [ %call16, %if.else ]
  %cmp18 = icmp eq %struct.X509_algor_st* %pbe.0, null
  br i1 %cmp18, label %err, label %if.end20

if.end20:                                         ; preds = %if.end17
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %call, i64 0, i32 5
  %encrypted = bitcast %union.anon.2* %d to %struct.pkcs7_encrypted_st**
  %0 = load %struct.pkcs7_encrypted_st*, %struct.pkcs7_encrypted_st** %encrypted, align 8, !tbaa !9
  %enc_data = getelementptr inbounds %struct.pkcs7_encrypted_st, %struct.pkcs7_encrypted_st* %0, i64 0, i32 1
  %1 = load %struct.pkcs7_enc_content_st*, %struct.pkcs7_enc_content_st** %enc_data, align 8, !tbaa !17
  %algorithm = getelementptr inbounds %struct.pkcs7_enc_content_st, %struct.pkcs7_enc_content_st* %1, i64 0, i32 1
  %2 = load %struct.X509_algor_st*, %struct.X509_algor_st** %algorithm, align 8, !tbaa !19
  tail call void @X509_ALGOR_free(%struct.X509_algor_st* noundef %2) #3
  %3 = load %struct.pkcs7_encrypted_st*, %struct.pkcs7_encrypted_st** %encrypted, align 8, !tbaa !9
  %enc_data23 = getelementptr inbounds %struct.pkcs7_encrypted_st, %struct.pkcs7_encrypted_st* %3, i64 0, i32 1
  %4 = load %struct.pkcs7_enc_content_st*, %struct.pkcs7_enc_content_st** %enc_data23, align 8, !tbaa !17
  %algorithm24 = getelementptr inbounds %struct.pkcs7_enc_content_st, %struct.pkcs7_enc_content_st* %4, i64 0, i32 1
  store %struct.X509_algor_st* %pbe.0, %struct.X509_algor_st** %algorithm24, align 8, !tbaa !19
  %5 = load %struct.pkcs7_encrypted_st*, %struct.pkcs7_encrypted_st** %encrypted, align 8, !tbaa !9
  %enc_data27 = getelementptr inbounds %struct.pkcs7_encrypted_st, %struct.pkcs7_encrypted_st* %5, i64 0, i32 1
  %6 = load %struct.pkcs7_enc_content_st*, %struct.pkcs7_enc_content_st** %enc_data27, align 8, !tbaa !17
  %enc_data28 = getelementptr inbounds %struct.pkcs7_enc_content_st, %struct.pkcs7_enc_content_st* %6, i64 0, i32 2
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %enc_data28, align 8, !tbaa !21
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %7) #3
  %call29 = tail call %struct.ASN1_ITEM_st* @PKCS12_SAFEBAGS_it() #3
  %8 = bitcast %struct.stack_st_PKCS12_SAFEBAG* %bags to i8*
  %call30 = tail call %struct.asn1_string_st* @PKCS12_item_i2d_encrypt_ex(%struct.X509_algor_st* noundef nonnull %pbe.0, %struct.ASN1_ITEM_st* noundef %call29, i8* noundef %pass, i32 noundef %passlen, i8* noundef %8, i32 noundef 1, %struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %propq) #3
  %9 = load %struct.pkcs7_encrypted_st*, %struct.pkcs7_encrypted_st** %encrypted, align 8, !tbaa !9
  %enc_data33 = getelementptr inbounds %struct.pkcs7_encrypted_st, %struct.pkcs7_encrypted_st* %9, i64 0, i32 1
  %10 = load %struct.pkcs7_enc_content_st*, %struct.pkcs7_enc_content_st** %enc_data33, align 8, !tbaa !17
  %enc_data34 = getelementptr inbounds %struct.pkcs7_enc_content_st, %struct.pkcs7_enc_content_st* %10, i64 0, i32 2
  store %struct.asn1_string_st* %call30, %struct.asn1_string_st** %enc_data34, align 8, !tbaa !21
  %tobool35.not = icmp eq %struct.asn1_string_st* %call30, null
  br i1 %tobool35.not, label %err, label %if.end37

if.end37:                                         ; preds = %if.end20
  tail call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %call6) #3
  br label %cleanup

err:                                              ; preds = %if.end20, %if.end17, %if.end
  %.sink71 = phi i32 [ 101, %if.end ], [ 118, %if.end17 ], [ 127, %if.end20 ]
  %.sink = phi i32 [ 120, %if.end ], [ 786688, %if.end17 ], [ 103, %if.end20 ]
  %pbe_ciph_fetch.0 = phi %struct.evp_cipher_st* [ null, %if.end ], [ %call6, %if.end17 ], [ %call6, %if.end20 ]
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink71, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.PKCS12_pack_p7encdata_ex, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef %.sink, i8* noundef null) #3
  tail call void @PKCS7_free(%struct.pkcs7_st* noundef nonnull %call) #3
  tail call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %pbe_ciph_fetch.0) #3
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end37, %if.then
  %retval.0 = phi %struct.pkcs7_st* [ null, %if.then ], [ null, %err ], [ %call, %if.end37 ]
  ret %struct.pkcs7_st* %retval.0
}

declare %struct.pkcs7_st* @PKCS7_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @PKCS7_set_type(%struct.pkcs7_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ERR_set_mark() local_unnamed_addr #1

declare %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #1

declare %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef) local_unnamed_addr #1

declare i32 @ERR_pop_to_mark() local_unnamed_addr #1

declare %struct.X509_algor_st* @PKCS5_pbe2_set_iv_ex(%struct.evp_cipher_st* noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare %struct.X509_algor_st* @PKCS5_pbe_set_ex(i32 noundef, i32 noundef, i8* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare void @X509_ALGOR_free(%struct.X509_algor_st* noundef) local_unnamed_addr #1

declare void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare %struct.asn1_string_st* @PKCS12_item_i2d_encrypt_ex(%struct.X509_algor_st* noundef, %struct.ASN1_ITEM_st* noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_st* @PKCS12_pack_p7encdata(i32 noundef %pbe_nid, i8* noundef %pass, i32 noundef %passlen, i8* noundef %salt, i32 noundef %saltlen, i32 noundef %iter, %struct.stack_st_PKCS12_SAFEBAG* noundef %bags) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.pkcs7_st* @PKCS12_pack_p7encdata_ex(i32 noundef %pbe_nid, i8* noundef %pass, i32 noundef %passlen, i8* noundef %salt, i32 noundef %saltlen, i32 noundef %iter, %struct.stack_st_PKCS12_SAFEBAG* noundef %bags, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #4
  ret %struct.pkcs7_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_PKCS12_SAFEBAG* @PKCS12_unpack_p7encdata(%struct.pkcs7_st* nocapture noundef readonly %p7, i8* noundef %pass, i32 noundef %passlen) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 4
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !12
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #3
  %cmp = icmp eq i32 %call, 26
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %encrypted = bitcast %union.anon.2* %d to %struct.pkcs7_encrypted_st**
  %1 = load %struct.pkcs7_encrypted_st*, %struct.pkcs7_encrypted_st** %encrypted, align 8, !tbaa !9
  %enc_data = getelementptr inbounds %struct.pkcs7_encrypted_st, %struct.pkcs7_encrypted_st* %1, i64 0, i32 1
  %2 = load %struct.pkcs7_enc_content_st*, %struct.pkcs7_enc_content_st** %enc_data, align 8, !tbaa !17
  %algorithm = getelementptr inbounds %struct.pkcs7_enc_content_st, %struct.pkcs7_enc_content_st* %2, i64 0, i32 1
  %3 = load %struct.X509_algor_st*, %struct.X509_algor_st** %algorithm, align 8, !tbaa !19
  %call1 = tail call %struct.ASN1_ITEM_st* @PKCS12_SAFEBAGS_it() #3
  %4 = load %struct.pkcs7_encrypted_st*, %struct.pkcs7_encrypted_st** %encrypted, align 8, !tbaa !9
  %enc_data4 = getelementptr inbounds %struct.pkcs7_encrypted_st, %struct.pkcs7_encrypted_st* %4, i64 0, i32 1
  %5 = load %struct.pkcs7_enc_content_st*, %struct.pkcs7_enc_content_st** %enc_data4, align 8, !tbaa !17
  %enc_data5 = getelementptr inbounds %struct.pkcs7_enc_content_st, %struct.pkcs7_enc_content_st* %5, i64 0, i32 2
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %enc_data5, align 8, !tbaa !21
  %libctx = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 6, i32 0
  %7 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !22
  %propq = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 6, i32 1
  %8 = load i8*, i8** %propq, align 8, !tbaa !23
  %call7 = tail call i8* @PKCS12_item_decrypt_d2i_ex(%struct.X509_algor_st* noundef %3, %struct.ASN1_ITEM_st* noundef %call1, i8* noundef %pass, i32 noundef %passlen, %struct.asn1_string_st* noundef %6, i32 noundef 1, %struct.ossl_lib_ctx_st* noundef %7, i8* noundef %8) #3
  %9 = bitcast i8* %call7 to %struct.stack_st_PKCS12_SAFEBAG*
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.stack_st_PKCS12_SAFEBAG* [ %9, %if.end ], [ null, %entry ]
  ret %struct.stack_st_PKCS12_SAFEBAG* %retval.0
}

declare i8* @PKCS12_item_decrypt_d2i_ex(%struct.X509_algor_st* noundef, %struct.ASN1_ITEM_st* noundef, i8* noundef, i32 noundef, %struct.asn1_string_st* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs8_priv_key_info_st* @PKCS12_decrypt_skey_ex(%struct.PKCS12_SAFEBAG_st* nocapture noundef readonly %bag, i8* noundef %pass, i32 noundef %passlen, %struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %value = getelementptr inbounds %struct.PKCS12_SAFEBAG_st, %struct.PKCS12_SAFEBAG_st* %bag, i64 0, i32 1
  %shkeybag = bitcast %union.anon* %value to %struct.X509_sig_st**
  %0 = load %struct.X509_sig_st*, %struct.X509_sig_st** %shkeybag, align 8, !tbaa !9
  %call = tail call %struct.pkcs8_priv_key_info_st* @PKCS8_decrypt_ex(%struct.X509_sig_st* noundef %0, i8* noundef %pass, i32 noundef %passlen, %struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %propq) #3
  ret %struct.pkcs8_priv_key_info_st* %call
}

declare %struct.pkcs8_priv_key_info_st* @PKCS8_decrypt_ex(%struct.X509_sig_st* noundef, i8* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs8_priv_key_info_st* @PKCS12_decrypt_skey(%struct.PKCS12_SAFEBAG_st* nocapture noundef readonly %bag, i8* noundef %pass, i32 noundef %passlen) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.pkcs8_priv_key_info_st* @PKCS12_decrypt_skey_ex(%struct.PKCS12_SAFEBAG_st* noundef %bag, i8* noundef %pass, i32 noundef %passlen, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #4
  ret %struct.pkcs8_priv_key_info_st* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS12_pack_authsafes(%struct.PKCS12_st* nocapture noundef readonly %p12, %struct.stack_st_PKCS7* noundef %safes) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_PKCS7* %safes to i8*
  %call = tail call %struct.ASN1_ITEM_st* @PKCS12_AUTHSAFES_it() #3
  %authsafes = getelementptr inbounds %struct.PKCS12_st, %struct.PKCS12_st* %p12, i64 0, i32 2
  %1 = load %struct.pkcs7_st*, %struct.pkcs7_st** %authsafes, align 8, !tbaa !24
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %1, i64 0, i32 5
  %data = bitcast %union.anon.2* %d to %struct.asn1_string_st**
  %call1 = tail call %struct.asn1_string_st* @ASN1_item_pack(i8* noundef %0, %struct.ASN1_ITEM_st* noundef %call, %struct.asn1_string_st** noundef nonnull %data) #3
  %tobool.not = icmp ne %struct.asn1_string_st* %call1, null
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

declare %struct.ASN1_ITEM_st* @PKCS12_AUTHSAFES_it() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_PKCS7* @PKCS12_unpack_authsafes(%struct.PKCS12_st* nocapture noundef readonly %p12) local_unnamed_addr #0 {
entry:
  %authsafes = getelementptr inbounds %struct.PKCS12_st, %struct.PKCS12_st* %p12, i64 0, i32 2
  %0 = load %struct.pkcs7_st*, %struct.pkcs7_st** %authsafes, align 8, !tbaa !24
  %type = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %0, i64 0, i32 4
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !12
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %1) #3
  %cmp = icmp eq i32 %call, 21
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 188, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.PKCS12_unpack_authsafes, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 121, i8* noundef null) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load %struct.pkcs7_st*, %struct.pkcs7_st** %authsafes, align 8, !tbaa !24
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %2, i64 0, i32 5
  %data = bitcast %union.anon.2* %d to %struct.asn1_string_st**
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %data, align 8, !tbaa !9
  %call2 = tail call %struct.ASN1_ITEM_st* @PKCS12_AUTHSAFES_it() #3
  %call3 = tail call i8* @ASN1_item_unpack(%struct.asn1_string_st* noundef %3, %struct.ASN1_ITEM_st* noundef %call2) #3
  %4 = bitcast i8* %call3 to %struct.stack_st_PKCS7*
  %cmp4.not = icmp eq i8* %call3, null
  br i1 %cmp4.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %call6 = tail call fastcc %struct.stack_st* @ossl_check_const_PKCS7_sk_type(%struct.stack_st_PKCS7* noundef nonnull %4) #4
  %call730 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call6) #3
  %cmp831 = icmp sgt i32 %call730, 0
  br i1 %cmp831, label %for.body, label %cleanup

for.cond:                                         ; preds = %for.body
  %call7 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call6) #3
  %cmp8 = icmp slt i32 %inc, %call7
  br i1 %cmp8, label %for.body, label %cleanup, !llvm.loop !26

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.032 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call10 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call6, i32 noundef %i.032) #3
  %5 = bitcast i8* %call10 to %struct.pkcs7_st*
  %6 = load %struct.pkcs7_st*, %struct.pkcs7_st** %authsafes, align 8, !tbaa !24
  %call12 = tail call i32 @ossl_pkcs7_ctx_propagate(%struct.pkcs7_st* noundef %6, %struct.pkcs7_st* noundef %5) #3
  %tobool.not = icmp eq i32 %call12, 0
  %inc = add nuw nsw i32 %i.032, 1
  br i1 %tobool.not, label %err, label %for.cond

err:                                              ; preds = %for.body
  %call16 = tail call fastcc %struct.stack_st* @ossl_check_PKCS7_sk_type(%struct.stack_st_PKCS7* noundef nonnull %4) #4
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call16) #3
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %for.cond.preheader, %if.end, %err, %if.then
  %retval.0 = phi %struct.stack_st_PKCS7* [ null, %err ], [ null, %if.then ], [ %4, %if.end ], [ %4, %for.cond.preheader ], [ %4, %for.cond ]
  ret %struct.stack_st_PKCS7* %retval.0
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_PKCS7_sk_type(%struct.stack_st_PKCS7* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_PKCS7* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ossl_pkcs7_ctx_propagate(%struct.pkcs7_st* noundef, %struct.pkcs7_st* noundef) local_unnamed_addr #1

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_PKCS7_sk_type(%struct.stack_st_PKCS7* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_PKCS7* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"pkcs12_bag_st", !6, i64 0, !7, i64 8}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !6, i64 0}
!11 = !{!"PKCS12_SAFEBAG_st", !6, i64 0, !7, i64 8, !6, i64 16}
!12 = !{!13, !6, i64 24}
!13 = !{!"pkcs7_st", !6, i64 0, !14, i64 8, !15, i64 16, !15, i64 20, !6, i64 24, !7, i64 32, !16, i64 40}
!14 = !{!"long", !7, i64 0}
!15 = !{!"int", !7, i64 0}
!16 = !{!"PKCS7_CTX_st", !6, i64 0, !6, i64 8}
!17 = !{!18, !6, i64 8}
!18 = !{!"pkcs7_encrypted_st", !6, i64 0, !6, i64 8}
!19 = !{!20, !6, i64 8}
!20 = !{!"pkcs7_enc_content_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!21 = !{!20, !6, i64 16}
!22 = !{!13, !6, i64 40}
!23 = !{!13, !6, i64 48}
!24 = !{!25, !6, i64 16}
!25 = !{!"PKCS12_st", !6, i64 0, !6, i64 8, !6, i64 16}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
