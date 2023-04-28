; ModuleID = 'crypto/pkcs7/pk7_smime.c'
source_filename = "crypto/pkcs7/pk7_smime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkcs7_st = type { i8*, i64, i32, i32, %struct.asn1_object_st*, %union.anon, %struct.PKCS7_CTX_st }
%struct.asn1_object_st = type opaque
%union.anon = type { i8* }
%struct.PKCS7_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }
%struct.x509_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.bio_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.pkcs7_signer_info_st = type { %struct.asn1_string_st*, %struct.pkcs7_issuer_and_serial_st*, %struct.X509_algor_st*, %struct.stack_st_X509_ATTRIBUTE*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ATTRIBUTE*, %struct.evp_pkey_st*, %struct.PKCS7_CTX_st* }
%struct.pkcs7_issuer_and_serial_st = type { %struct.X509_name_st*, %struct.asn1_string_st* }
%struct.X509_name_st = type opaque
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_type_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.evp_md_st = type opaque
%struct.stack_st = type opaque
%struct.stack_st_X509_ALGOR = type opaque
%struct.evp_cipher_st = type opaque
%struct.stack_st_PKCS7_SIGNER_INFO = type opaque
%struct.x509_store_st = type opaque
%struct.x509_store_ctx_st = type opaque
%struct.pkcs7_signed_st = type { %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR*, %struct.stack_st_X509*, %struct.stack_st_X509_CRL*, %struct.stack_st_PKCS7_SIGNER_INFO*, %struct.pkcs7_st* }
%struct.stack_st_X509_CRL = type opaque
%struct.bio_method_st = type opaque
%struct.pkcs7_recip_info_st = type { %struct.asn1_string_st*, %struct.pkcs7_issuer_and_serial_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.x509_st*, %struct.PKCS7_CTX_st* }

@.str = private unnamed_addr constant [25 x i8] c"crypto/pkcs7/pk7_smime.c\00", align 1
@__func__.PKCS7_sign_ex = private unnamed_addr constant [14 x i8] c"PKCS7_sign_ex\00", align 1
@__func__.PKCS7_final = private unnamed_addr constant [12 x i8] c"PKCS7_final\00", align 1
@__func__.PKCS7_sign_add_signer = private unnamed_addr constant [22 x i8] c"PKCS7_sign_add_signer\00", align 1
@__func__.PKCS7_verify = private unnamed_addr constant [13 x i8] c"PKCS7_verify\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"smime_sign\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Verify error: %s\00", align 1
@__func__.PKCS7_get0_signers = private unnamed_addr constant [19 x i8] c"PKCS7_get0_signers\00", align 1
@__func__.PKCS7_encrypt_ex = private unnamed_addr constant [17 x i8] c"PKCS7_encrypt_ex\00", align 1
@__func__.PKCS7_decrypt = private unnamed_addr constant [14 x i8] c"PKCS7_decrypt\00", align 1
@__func__.pkcs7_copy_existing_digest = private unnamed_addr constant [27 x i8] c"pkcs7_copy_existing_digest\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_st* @PKCS7_sign_ex(%struct.x509_st* noundef %signcert, %struct.evp_pkey_st* noundef %pkey, %struct.stack_st_X509* noundef %certs, %struct.bio_st* noundef %data, i32 noundef %flags, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.pkcs7_st* @PKCS7_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #4
  %cmp = icmp eq %struct.pkcs7_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 31, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.PKCS7_sign_ex, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @PKCS7_set_type(%struct.pkcs7_st* noundef nonnull %call, i32 noundef 22) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @PKCS7_content_new(%struct.pkcs7_st* noundef nonnull %call, i32 noundef 21) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err, label %if.end7

if.end7:                                          ; preds = %if.end3
  %tobool8.not = icmp eq %struct.evp_pkey_st* %pkey, null
  br i1 %tobool8.not, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end7
  %call9 = tail call %struct.pkcs7_signer_info_st* @PKCS7_sign_add_signer(%struct.pkcs7_st* noundef nonnull %call, %struct.x509_st* noundef %signcert, %struct.evp_pkey_st* noundef nonnull %pkey, %struct.evp_md_st* noundef null, i32 noundef %flags) #5
  %tobool10.not = icmp eq %struct.pkcs7_signer_info_st* %call9, null
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %land.lhs.true
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 42, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.PKCS7_sign_ex, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 153, i8* noundef null) #4
  br label %err

if.end12:                                         ; preds = %land.lhs.true, %if.end7
  %and = and i32 %flags, 2
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %for.cond.preheader, label %if.end24

for.cond.preheader:                               ; preds = %if.end12
  %call15 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %certs) #5
  %call1657 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call15) #4
  %cmp1758 = icmp sgt i32 %call1657, 0
  br i1 %cmp1758, label %for.body, label %if.end24

for.cond:                                         ; preds = %for.body
  %call16 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call15) #4
  %cmp17 = icmp slt i32 %inc, %call16
  br i1 %cmp17, label %for.body, label %if.end24, !llvm.loop !4

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.059 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call19 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call15, i32 noundef %i.059) #4
  %0 = bitcast i8* %call19 to %struct.x509_st*
  %call20 = tail call i32 @PKCS7_add_certificate(%struct.pkcs7_st* noundef nonnull %call, %struct.x509_st* noundef %0) #4
  %tobool21.not = icmp eq i32 %call20, 0
  %inc = add nuw nsw i32 %i.059, 1
  br i1 %tobool21.not, label %err, label %for.cond

if.end24:                                         ; preds = %for.cond, %for.cond.preheader, %if.end12
  %and25 = and i32 %flags, 64
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.end24
  %call28 = tail call i64 @PKCS7_ctrl(%struct.pkcs7_st* noundef nonnull %call, i32 noundef 1, i64 noundef 1, i8* noundef null) #4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end24
  %and30 = and i32 %flags, 20480
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end33, label %cleanup

if.end33:                                         ; preds = %if.end29
  %call34 = tail call i32 @PKCS7_final(%struct.pkcs7_st* noundef nonnull %call, %struct.bio_st* noundef %data, i32 noundef %flags) #5
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err, label %cleanup

err:                                              ; preds = %for.body, %if.end33, %if.end3, %if.end, %if.then11
  tail call void @PKCS7_free(%struct.pkcs7_st* noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end29, %err, %if.then
  %retval.0 = phi %struct.pkcs7_st* [ null, %if.then ], [ null, %err ], [ %call, %if.end29 ], [ %call, %if.end33 ]
  ret %struct.pkcs7_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.pkcs7_st* @PKCS7_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @PKCS7_set_type(%struct.pkcs7_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @PKCS7_content_new(%struct.pkcs7_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_signer_info_st* @PKCS7_sign_add_signer(%struct.pkcs7_st* noundef %p7, %struct.x509_st* noundef %signcert, %struct.evp_pkey_st* noundef %pkey, %struct.evp_md_st* noundef %md, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @X509_check_private_key(%struct.x509_st* noundef %signcert, %struct.evp_pkey_st* noundef %pkey) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 125, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.PKCS7_sign_add_signer, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 127, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.pkcs7_signer_info_st* @PKCS7_add_signature(%struct.pkcs7_st* noundef %p7, %struct.x509_st* noundef %signcert, %struct.evp_pkey_st* noundef %pkey, %struct.evp_md_st* noundef %md) #4
  %cmp = icmp eq %struct.pkcs7_signer_info_st* %call1, null
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 130, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.PKCS7_sign_add_signer, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 124, i8* noundef null) #4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call %struct.PKCS7_CTX_st* @ossl_pkcs7_get0_ctx(%struct.pkcs7_st* noundef %p7) #4
  %ctx = getelementptr inbounds %struct.pkcs7_signer_info_st, %struct.pkcs7_signer_info_st* %call1, i64 0, i32 8
  store %struct.PKCS7_CTX_st* %call4, %struct.PKCS7_CTX_st** %ctx, align 8, !tbaa !6
  %and = and i32 %flags, 2
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.end3
  %call7 = tail call i32 @PKCS7_add_certificate(%struct.pkcs7_st* noundef %p7, %struct.x509_st* noundef %signcert) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %if.end11

if.end11:                                         ; preds = %if.then6, %if.end3
  %and12 = and i32 %flags, 256
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.then14, label %cleanup

if.then14:                                        ; preds = %if.end11
  %call15 = tail call i32 @PKCS7_add_attrib_content_type(%struct.pkcs7_signer_info_st* noundef nonnull %call1, %struct.asn1_object_st* noundef null) #4
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %if.end18

if.end18:                                         ; preds = %if.then14
  %and19 = and i32 %flags, 512
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end67

if.then21:                                        ; preds = %if.end18
  %call22 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #4
  %0 = bitcast %struct.stack_st* %call22 to %struct.stack_st_X509_ALGOR*
  %cmp23 = icmp eq %struct.stack_st* %call22, null
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then21
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 146, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.PKCS7_sign_add_signer, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 786688, i8* noundef null) #4
  br label %err

if.end25:                                         ; preds = %if.then21
  %call26 = tail call fastcc i32 @add_cipher_smcap(%struct.stack_st_X509_ALGOR* noundef nonnull %0, i32 noundef 427, i32 noundef -1) #5
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end25
  %call28 = tail call fastcc i32 @add_digest_smcap(%struct.stack_st_X509_ALGOR* noundef nonnull %0, i32 noundef 982) #5
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %err, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false
  %call31 = tail call fastcc i32 @add_digest_smcap(%struct.stack_st_X509_ALGOR* noundef nonnull %0, i32 noundef 983) #5
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false30
  %call34 = tail call fastcc i32 @add_digest_smcap(%struct.stack_st_X509_ALGOR* noundef nonnull %0, i32 noundef 809) #5
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false33
  %call37 = tail call fastcc i32 @add_cipher_smcap(%struct.stack_st_X509_ALGOR* noundef nonnull %0, i32 noundef 813, i32 noundef -1) #5
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %err, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %lor.lhs.false36
  %call40 = tail call fastcc i32 @add_cipher_smcap(%struct.stack_st_X509_ALGOR* noundef nonnull %0, i32 noundef 423, i32 noundef -1) #5
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %err, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false39
  %call43 = tail call fastcc i32 @add_cipher_smcap(%struct.stack_st_X509_ALGOR* noundef nonnull %0, i32 noundef 419, i32 noundef -1) #5
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %err, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false42
  %call46 = tail call fastcc i32 @add_cipher_smcap(%struct.stack_st_X509_ALGOR* noundef nonnull %0, i32 noundef 44, i32 noundef -1) #5
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %err, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %lor.lhs.false45
  %call49 = tail call fastcc i32 @add_cipher_smcap(%struct.stack_st_X509_ALGOR* noundef nonnull %0, i32 noundef 37, i32 noundef 128) #5
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %err, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %lor.lhs.false48
  %call52 = tail call fastcc i32 @add_cipher_smcap(%struct.stack_st_X509_ALGOR* noundef nonnull %0, i32 noundef 37, i32 noundef 64) #5
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %err, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %lor.lhs.false51
  %call55 = tail call fastcc i32 @add_cipher_smcap(%struct.stack_st_X509_ALGOR* noundef nonnull %0, i32 noundef 31, i32 noundef -1) #5
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %err, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %lor.lhs.false54
  %call58 = tail call fastcc i32 @add_cipher_smcap(%struct.stack_st_X509_ALGOR* noundef nonnull %0, i32 noundef 37, i32 noundef 40) #5
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %err, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false57
  %call61 = tail call i32 @PKCS7_add_attrib_smimecap(%struct.pkcs7_signer_info_st* noundef nonnull %call1, %struct.stack_st_X509_ALGOR* noundef nonnull %0) #4
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %err, label %if.end64

if.end64:                                         ; preds = %lor.lhs.false60
  %call65 = tail call fastcc %struct.stack_st* @ossl_check_X509_ALGOR_sk_type(%struct.stack_st_X509_ALGOR* noundef nonnull %0) #5
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call65, void (i8*)* noundef bitcast (void (%struct.X509_algor_st*)* @X509_ALGOR_free to void (i8*)*)) #4
  br label %if.end67

if.end67:                                         ; preds = %if.end64, %if.end18
  %and68 = and i32 %flags, 32768
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %cleanup, label %if.then70

if.then70:                                        ; preds = %if.end67
  %call71 = tail call fastcc i32 @pkcs7_copy_existing_digest(%struct.pkcs7_st* noundef %p7, %struct.pkcs7_signer_info_st* noundef nonnull %call1) #5
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %err, label %if.end74

if.end74:                                         ; preds = %if.then70
  %and75 = and i32 %flags, 16384
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %if.end74
  %call77 = tail call i32 @PKCS7_SIGNER_INFO_sign(%struct.pkcs7_signer_info_st* noundef nonnull %call1) #4
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %err, label %cleanup

err:                                              ; preds = %land.lhs.true, %if.then70, %if.end25, %lor.lhs.false, %lor.lhs.false30, %lor.lhs.false33, %lor.lhs.false36, %lor.lhs.false39, %lor.lhs.false42, %lor.lhs.false45, %lor.lhs.false48, %lor.lhs.false51, %lor.lhs.false54, %lor.lhs.false57, %lor.lhs.false60, %if.then14, %if.then6, %if.then24
  %smcap.1 = phi %struct.stack_st_X509_ALGOR* [ null, %land.lhs.true ], [ null, %if.then70 ], [ null, %if.then24 ], [ %0, %lor.lhs.false60 ], [ %0, %lor.lhs.false57 ], [ %0, %lor.lhs.false54 ], [ %0, %lor.lhs.false51 ], [ %0, %lor.lhs.false48 ], [ %0, %lor.lhs.false45 ], [ %0, %lor.lhs.false42 ], [ %0, %lor.lhs.false39 ], [ %0, %lor.lhs.false36 ], [ %0, %lor.lhs.false33 ], [ %0, %lor.lhs.false30 ], [ %0, %lor.lhs.false ], [ %0, %if.end25 ], [ null, %if.then14 ], [ null, %if.then6 ]
  %call83 = tail call fastcc %struct.stack_st* @ossl_check_X509_ALGOR_sk_type(%struct.stack_st_X509_ALGOR* noundef %smcap.1) #5
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call83, void (i8*)* noundef bitcast (void (%struct.X509_algor_st*)* @X509_ALGOR_free to void (i8*)*)) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end74, %land.lhs.true, %if.end67, %err, %if.then2, %if.then
  %retval.0 = phi %struct.pkcs7_signer_info_st* [ null, %if.then2 ], [ null, %err ], [ null, %if.then ], [ %call1, %if.end67 ], [ %call1, %land.lhs.true ], [ %call1, %if.end74 ], [ %call1, %if.end11 ]
  ret %struct.pkcs7_signer_info_st* %retval.0
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @PKCS7_add_certificate(%struct.pkcs7_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare i64 @PKCS7_ctrl(%struct.pkcs7_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS7_final(%struct.pkcs7_st* noundef %p7, %struct.bio_st* noundef %data, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_st* @PKCS7_dataInit(%struct.pkcs7_st* noundef %p7, %struct.bio_st* noundef null) #4
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.PKCS7_final, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @SMIME_crlf_copy(%struct.bio_st* noundef %data, %struct.bio_st* noundef nonnull %call, i32 noundef %flags) #4
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call, i32 noundef 11, i64 noundef 0, i8* noundef null) #4
  %call3 = tail call i32 @PKCS7_dataFinal(%struct.pkcs7_st* noundef %p7, %struct.bio_st* noundef nonnull %call) #4
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then4, label %err

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.PKCS7_final, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 145, i8* noundef null) #4
  br label %err

err:                                              ; preds = %if.end, %if.then4
  %ret.0 = phi i32 [ 0, %if.then4 ], [ 1, %if.end ]
  tail call void @BIO_free_all(%struct.bio_st* noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.0, %err ]
  ret i32 %retval.0
}

declare void @PKCS7_free(%struct.pkcs7_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_st* @PKCS7_sign(%struct.x509_st* noundef %signcert, %struct.evp_pkey_st* noundef %pkey, %struct.stack_st_X509* noundef %certs, %struct.bio_st* noundef %data, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.pkcs7_st* @PKCS7_sign_ex(%struct.x509_st* noundef %signcert, %struct.evp_pkey_st* noundef %pkey, %struct.stack_st_X509* noundef %certs, %struct.bio_st* noundef %data, i32 noundef %flags, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #5
  ret %struct.pkcs7_st* %call
}

declare %struct.bio_st* @PKCS7_dataInit(%struct.pkcs7_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare i32 @SMIME_crlf_copy(%struct.bio_st* noundef, %struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare i32 @PKCS7_dataFinal(%struct.pkcs7_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #2

declare i32 @X509_check_private_key(%struct.x509_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare %struct.pkcs7_signer_info_st* @PKCS7_add_signature(%struct.pkcs7_st* noundef, %struct.x509_st* noundef, %struct.evp_pkey_st* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #2

declare %struct.PKCS7_CTX_st* @ossl_pkcs7_get0_ctx(%struct.pkcs7_st* noundef) local_unnamed_addr #2

declare i32 @PKCS7_add_attrib_content_type(%struct.pkcs7_signer_info_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #2

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @add_cipher_smcap(%struct.stack_st_X509_ALGOR* noundef %sk, i32 noundef %nid, i32 noundef %arg) unnamed_addr #0 {
entry:
  %call = tail call i8* @OBJ_nid2sn(i32 noundef %nid) #4
  %call1 = tail call %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef %call) #4
  %tobool.not = icmp eq %struct.evp_cipher_st* %call1, null
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @PKCS7_simple_smimecap(%struct.stack_st_X509_ALGOR* noundef %sk, i32 noundef %nid, i32 noundef %arg) #4
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @add_digest_smcap(%struct.stack_st_X509_ALGOR* noundef %sk, i32 noundef %nid) unnamed_addr #0 {
entry:
  %call = tail call i8* @OBJ_nid2sn(i32 noundef %nid) #4
  %call1 = tail call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %call) #4
  %tobool.not = icmp eq %struct.evp_md_st* %call1, null
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @PKCS7_simple_smimecap(%struct.stack_st_X509_ALGOR* noundef %sk, i32 noundef %nid, i32 noundef -1) #4
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

declare i32 @PKCS7_add_attrib_smimecap(%struct.pkcs7_signer_info_st* noundef, %struct.stack_st_X509_ALGOR* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_ALGOR_sk_type(%struct.stack_st_X509_ALGOR* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_ALGOR* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_ALGOR_free(%struct.X509_algor_st* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @pkcs7_copy_existing_digest(%struct.pkcs7_st* noundef %p7, %struct.pkcs7_signer_info_st* noundef %si) unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st_PKCS7_SIGNER_INFO* @PKCS7_get_signer_info(%struct.pkcs7_st* noundef %p7) #4
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_const_PKCS7_SIGNER_INFO_sk_type(%struct.stack_st_PKCS7_SIGNER_INFO* noundef %call) #5
  %call241 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #4
  %cmp42 = icmp sgt i32 %call241, 0
  br i1 %cmp42, label %for.body.lr.ph, label %if.end21

for.body.lr.ph:                                   ; preds = %entry
  %digest_alg = getelementptr inbounds %struct.pkcs7_signer_info_st, %struct.pkcs7_signer_info_st* %si, i64 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %call4 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call1, i32 noundef %i.043) #4
  %0 = bitcast i8* %call4 to %struct.pkcs7_signer_info_st*
  %cmp5 = icmp eq %struct.pkcs7_signer_info_st* %0, %si
  br i1 %cmp5, label %if.end21, label %if.end

if.end:                                           ; preds = %for.body
  %auth_attr = getelementptr inbounds i8, i8* %call4, i64 24
  %1 = bitcast i8* %auth_attr to %struct.stack_st_X509_ATTRIBUTE**
  %2 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %1, align 8, !tbaa !11
  %call6 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_ATTRIBUTE_sk_type(%struct.stack_st_X509_ATTRIBUTE* noundef %2) #5
  %call7 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call6) #4
  %cmp8 = icmp slt i32 %call7, 1
  br i1 %cmp8, label %for.inc, label %if.end10

if.end10:                                         ; preds = %if.end
  %3 = load %struct.X509_algor_st*, %struct.X509_algor_st** %digest_alg, align 8, !tbaa !12
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %3, i64 0, i32 0
  %4 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !13
  %digest_alg11 = getelementptr inbounds i8, i8* %call4, i64 16
  %5 = bitcast i8* %digest_alg11 to %struct.X509_algor_st**
  %6 = load %struct.X509_algor_st*, %struct.X509_algor_st** %5, align 8, !tbaa !12
  %algorithm12 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %6, i64 0, i32 0
  %7 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm12, align 8, !tbaa !13
  %call13 = tail call i32 @OBJ_cmp(%struct.asn1_object_st* noundef %4, %struct.asn1_object_st* noundef %7) #4
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %if.end10, %if.end
  %inc = add nuw nsw i32 %i.043, 1
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #4
  %cmp = icmp slt i32 %inc, %call2
  br i1 %cmp, label %for.body, label %if.end21, !llvm.loop !15

for.end:                                          ; preds = %if.end10
  %8 = bitcast i8* %auth_attr to %struct.stack_st_X509_ATTRIBUTE**
  %9 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %8, align 8, !tbaa !11
  %call16 = tail call %struct.asn1_string_st* @PKCS7_digest_from_attributes(%struct.stack_st_X509_ATTRIBUTE* noundef %9) #4
  %cmp18.not = icmp eq %struct.asn1_string_st* %call16, null
  br i1 %cmp18.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %for.end
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call16, i64 0, i32 2
  %10 = load i8*, i8** %data, align 8, !tbaa !16
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call16, i64 0, i32 0
  %11 = load i32, i32* %length, align 8, !tbaa !20
  %call20 = tail call i32 @PKCS7_add1_attrib_digest(%struct.pkcs7_signer_info_st* noundef nonnull %si, i8* noundef %10, i32 noundef %11) #4
  br label %cleanup

if.end21:                                         ; preds = %for.body, %for.inc, %entry, %for.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 208, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.pkcs7_copy_existing_digest, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 154, i8* noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then19
  %retval.0 = phi i32 [ %call20, %if.then19 ], [ 0, %if.end21 ]
  ret i32 %retval.0
}

declare i32 @PKCS7_SIGNER_INFO_sign(%struct.pkcs7_signer_info_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS7_verify(%struct.pkcs7_st* noundef %p7, %struct.stack_st_X509* noundef %certs, %struct.x509_store_st* noundef %store, %struct.bio_st* noundef %indata, %struct.bio_st* noundef %out, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %ptr = alloca i8*, align 8
  %cmp = icmp eq %struct.pkcs7_st* %p7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 227, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.PKCS7_verify, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 143, i8* noundef null) #4
  br label %cleanup164

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 4
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !21
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #4
  %cmp1 = icmp eq i32 %call, 22
  br i1 %cmp1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 232, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.PKCS7_verify, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 113, i8* noundef null) #4
  br label %cleanup164

if.end3:                                          ; preds = %if.end
  %call4 = tail call i64 @PKCS7_ctrl(%struct.pkcs7_st* noundef nonnull %p7, i32 noundef 2, i64 noundef 0, i8* noundef null) #4
  %tobool = icmp eq i64 %call4, 0
  %tobool5 = icmp ne %struct.bio_st* %indata, null
  %or.cond = or i1 %tobool5, %tobool
  br i1 %or.cond, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end3
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 238, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.PKCS7_verify, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 122, i8* noundef null) #4
  br label %cleanup164

if.end7:                                          ; preds = %if.end3
  %and = and i32 %flags, 65536
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end16, label %if.then9

if.then9:                                         ; preds = %if.end7
  %call10 = tail call i64 @PKCS7_ctrl(%struct.pkcs7_st* noundef nonnull %p7, i32 noundef 2, i64 noundef 0, i8* noundef null) #4
  %tobool11 = icmp eq i64 %call10, 0
  %or.cond178 = and i1 %tobool5, %tobool11
  br i1 %or.cond178, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.then9
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 251, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.PKCS7_verify, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 118, i8* noundef null) #4
  br label %cleanup164

if.end16:                                         ; preds = %if.then9, %if.end7
  %call17 = tail call %struct.stack_st_PKCS7_SIGNER_INFO* @PKCS7_get_signer_info(%struct.pkcs7_st* noundef nonnull %p7) #4
  %tobool18.not = icmp eq %struct.stack_st_PKCS7_SIGNER_INFO* %call17, null
  br i1 %tobool18.not, label %if.then22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end16
  %call19 = tail call fastcc %struct.stack_st* @ossl_check_const_PKCS7_SIGNER_INFO_sk_type(%struct.stack_st_PKCS7_SIGNER_INFO* noundef nonnull %call17) #5
  %call20 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call19) #4
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %if.end23

if.then22:                                        ; preds = %lor.lhs.false, %if.end16
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 259, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.PKCS7_verify, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 123, i8* noundef null) #4
  br label %cleanup164

if.end23:                                         ; preds = %lor.lhs.false
  %call24 = tail call %struct.stack_st_X509* @PKCS7_get0_signers(%struct.pkcs7_st* noundef nonnull %p7, %struct.stack_st_X509* noundef %certs, i32 noundef %flags) #5
  %cmp25 = icmp eq %struct.stack_st_X509* %call24, null
  br i1 %cmp25, label %cleanup164, label %if.end27

if.end27:                                         ; preds = %if.end23
  %call28 = tail call %struct.PKCS7_CTX_st* @ossl_pkcs7_get0_ctx(%struct.pkcs7_st* noundef nonnull %p7) #4
  %call29 = tail call %struct.ossl_lib_ctx_st* @ossl_pkcs7_ctx_get0_libctx(%struct.PKCS7_CTX_st* noundef %call28) #4
  %call30 = tail call i8* @ossl_pkcs7_ctx_get0_propq(%struct.PKCS7_CTX_st* noundef %call28) #4
  %call31 = tail call %struct.x509_store_ctx_st* @X509_STORE_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %call29, i8* noundef %call30) #4
  %cmp32 = icmp eq %struct.x509_store_ctx_st* %call31, null
  br i1 %cmp32, label %err, label %if.end34

if.end34:                                         ; preds = %if.end27
  %and35 = and i32 %flags, 32
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %for.cond.preheader, label %if.end71

for.cond.preheader:                               ; preds = %if.end34
  %call38 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %call24) #5
  %call39271 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call38) #4
  %cmp40272 = icmp sgt i32 %call39271, 0
  br i1 %cmp40272, label %for.body.lr.ph, label %if.end71

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %and43 = and i32 %flags, 8
  %tobool44.not = icmp eq i32 %and43, 0
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %sign = bitcast %union.anon* %d to %struct.pkcs7_signed_st**
  %and56 = and i32 %flags, 8192
  %tobool57.not = icmp eq i32 %and56, 0
  br label %for.body

for.cond:                                         ; preds = %if.end61
  %call39 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call38) #4
  %cmp40 = icmp slt i32 %inc, %call39
  br i1 %cmp40, label %for.body, label %if.end71, !llvm.loop !24

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %k.0273 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %call42 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call38, i32 noundef %k.0273) #4
  %1 = bitcast i8* %call42 to %struct.x509_st*
  br i1 %tobool44.not, label %if.then45, label %if.else

if.then45:                                        ; preds = %for.body
  %2 = load %struct.pkcs7_signed_st*, %struct.pkcs7_signed_st** %sign, align 8, !tbaa !25
  %cert = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %2, i64 0, i32 2
  %3 = load %struct.stack_st_X509*, %struct.stack_st_X509** %cert, align 8, !tbaa !26
  %call46 = tail call i32 @X509_STORE_CTX_init(%struct.x509_store_ctx_st* noundef nonnull %call31, %struct.x509_store_st* noundef %store, %struct.x509_st* noundef %1, %struct.stack_st_X509* noundef %3) #4
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.then45
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 279, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.PKCS7_verify, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 524299, i8* noundef null) #4
  br label %err

if.end49:                                         ; preds = %if.then45
  %call50 = tail call i32 @X509_STORE_CTX_set_default(%struct.x509_store_ctx_st* noundef nonnull %call31, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)) #4
  br label %if.end55

if.else:                                          ; preds = %for.body
  %call51 = tail call i32 @X509_STORE_CTX_init(%struct.x509_store_ctx_st* noundef nonnull %call31, %struct.x509_store_st* noundef %store, %struct.x509_st* noundef %1, %struct.stack_st_X509* noundef null) #4
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.else
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 284, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.PKCS7_verify, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 524299, i8* noundef null) #4
  br label %err

if.end55:                                         ; preds = %if.else, %if.end49
  br i1 %tobool57.not, label %if.then58, label %if.end61

if.then58:                                        ; preds = %if.end55
  %4 = load %struct.pkcs7_signed_st*, %struct.pkcs7_signed_st** %sign, align 8, !tbaa !25
  %crl = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %4, i64 0, i32 3
  %5 = load %struct.stack_st_X509_CRL*, %struct.stack_st_X509_CRL** %crl, align 8, !tbaa !28
  tail call void @X509_STORE_CTX_set0_crls(%struct.x509_store_ctx_st* noundef nonnull %call31, %struct.stack_st_X509_CRL* noundef %5) #4
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.end55
  %call62 = tail call i32 @X509_verify_cert(%struct.x509_store_ctx_st* noundef nonnull %call31) #4
  %cmp63 = icmp slt i32 %call62, 1
  %inc = add nuw nsw i32 %k.0273, 1
  br i1 %cmp63, label %if.then68, label %for.cond

if.then68:                                        ; preds = %if.end61
  %call65 = tail call i32 @X509_STORE_CTX_get_error(%struct.x509_store_ctx_st* noundef nonnull %call31) #4
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 293, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.PKCS7_verify, i64 0, i64 0)) #4
  %conv = sext i32 %call65 to i64
  %call69 = tail call i8* @X509_verify_cert_error_string(i64 noundef %conv) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 117, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* noundef %call69) #4
  br label %err

if.end71:                                         ; preds = %for.cond, %for.cond.preheader, %if.end34
  br i1 %tobool5, label %land.lhs.true73, label %if.end89

land.lhs.true73:                                  ; preds = %if.end71
  %call74 = tail call i32 @BIO_method_type(%struct.bio_st* noundef nonnull %indata) #4
  %cmp75 = icmp eq i32 %call74, 1025
  br i1 %cmp75, label %if.then77, label %if.end89

if.then77:                                        ; preds = %land.lhs.true73
  %6 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6
  %call78 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %indata, i32 noundef 3, i64 noundef 0, i8* noundef nonnull %6) #4
  %cmp79 = icmp eq i64 %call78, 0
  br i1 %cmp79, label %cleanup.thread, label %cond.end

cond.end:                                         ; preds = %if.then77
  %7 = load i8*, i8** %ptr, align 8, !tbaa !29
  %conv81 = trunc i64 %call78 to i32
  %call82 = call %struct.bio_st* @BIO_new_mem_buf(i8* noundef %7, i32 noundef %conv81) #4
  %cmp83 = icmp eq %struct.bio_st* %call82, null
  br i1 %cmp83, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %cond.end, %if.then77
  %cond267.ph = phi %struct.bio_st* [ %call82, %cond.end ], [ %indata, %if.then77 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6
  br label %if.end89

cleanup:                                          ; preds = %cond.end
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 314, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.PKCS7_verify, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 786688, i8* noundef null) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6
  br label %err

if.end89:                                         ; preds = %cleanup.thread, %if.end71, %land.lhs.true73
  %tmpin.0 = phi %struct.bio_st* [ %indata, %land.lhs.true73 ], [ null, %if.end71 ], [ %cond267.ph, %cleanup.thread ]
  %call90 = call %struct.bio_st* @PKCS7_dataInit(%struct.pkcs7_st* noundef nonnull %p7, %struct.bio_st* noundef %tmpin.0) #4
  %cmp91 = icmp eq %struct.bio_st* %call90, null
  br i1 %cmp91, label %err, label %if.end94

if.end94:                                         ; preds = %if.end89
  %and95 = and i32 %flags, 1
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.end106, label %if.then97

if.then97:                                        ; preds = %if.end94
  %call98 = call %struct.bio_method_st* @BIO_s_mem() #4
  %call99 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call98) #4
  %cmp100 = icmp eq %struct.bio_st* %call99, null
  br i1 %cmp100, label %if.then102, label %if.end103

if.then102:                                       ; preds = %if.then97
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 325, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.PKCS7_verify, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 786688, i8* noundef null) #4
  br label %err

if.end103:                                        ; preds = %if.then97
  %call104 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call99, i32 noundef 130, i64 noundef 0, i8* noundef null) #4
  br label %if.end106

if.end106:                                        ; preds = %if.end94, %if.end103
  %tmpout.0 = phi %struct.bio_st* [ %call99, %if.end103 ], [ %out, %if.end94 ]
  %call107 = call i8* @CRYPTO_malloc(i64 noundef 4096, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 333) #4
  %cmp108 = icmp eq i8* %call107, null
  br i1 %cmp108, label %if.then110, label %for.cond112.preheader

for.cond112.preheader:                            ; preds = %if.end106
  %call113274 = call i32 @BIO_read(%struct.bio_st* noundef nonnull %call90, i8* noundef nonnull %call107, i32 noundef 4096) #4
  %cmp114275 = icmp slt i32 %call113274, 1
  br i1 %cmp114275, label %for.end122, label %if.end117.lr.ph

if.end117.lr.ph:                                  ; preds = %for.cond112.preheader
  %tobool118.not = icmp eq %struct.bio_st* %tmpout.0, null
  br label %if.end117

if.then110:                                       ; preds = %if.end106
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 334, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.PKCS7_verify, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 786688, i8* noundef null) #4
  br label %err

if.end117:                                        ; preds = %if.end117.lr.ph, %if.end121
  %call113276 = phi i32 [ %call113274, %if.end117.lr.ph ], [ %call113, %if.end121 ]
  br i1 %tobool118.not, label %if.end121, label %if.then119

if.then119:                                       ; preds = %if.end117
  %call120 = call i32 @BIO_write(%struct.bio_st* noundef nonnull %tmpout.0, i8* noundef nonnull %call107, i32 noundef %call113276) #4
  br label %if.end121

if.end121:                                        ; preds = %if.then119, %if.end117
  %call113 = call i32 @BIO_read(%struct.bio_st* noundef nonnull %call90, i8* noundef nonnull %call107, i32 noundef 4096) #4
  %cmp114 = icmp slt i32 %call113, 1
  br i1 %cmp114, label %for.end122, label %if.end117

for.end122:                                       ; preds = %if.end121, %for.cond112.preheader
  br i1 %tobool96.not, label %if.end132, label %if.then125

if.then125:                                       ; preds = %for.end122
  %call126 = call i32 @SMIME_text(%struct.bio_st* noundef %tmpout.0, %struct.bio_st* noundef %out) #4
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.then128, label %if.end130

if.then128:                                       ; preds = %if.then125
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 347, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.PKCS7_verify, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 129, i8* noundef null) #4
  %call129 = call i32 @BIO_free(%struct.bio_st* noundef %tmpout.0) #4
  br label %err

if.end130:                                        ; preds = %if.then125
  %call131 = call i32 @BIO_free(%struct.bio_st* noundef %tmpout.0) #4
  br label %if.end132

if.end132:                                        ; preds = %if.end130, %for.end122
  %and133 = and i32 %flags, 4
  %tobool134.not = icmp eq i32 %and133, 0
  br i1 %tobool134.not, label %for.cond136.preheader, label %err

for.cond136.preheader:                            ; preds = %if.end132
  %call138277 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call19) #4
  %cmp139278 = icmp sgt i32 %call138277, 0
  br i1 %cmp139278, label %for.body141, label %err

for.cond136:                                      ; preds = %for.body141
  %call138 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call19) #4
  %cmp139 = icmp slt i32 %inc152, %call138
  br i1 %cmp139, label %for.body141, label %err, !llvm.loop !30

for.body141:                                      ; preds = %for.cond136.preheader, %for.cond136
  %i.0279 = phi i32 [ %inc152, %for.cond136 ], [ 0, %for.cond136.preheader ]
  %call143 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call19, i32 noundef %i.0279) #4
  %8 = bitcast i8* %call143 to %struct.pkcs7_signer_info_st*
  %call144 = call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %call24) #5
  %call145 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call144, i32 noundef %i.0279) #4
  %9 = bitcast i8* %call145 to %struct.x509_st*
  %call146 = call i32 @PKCS7_signatureVerify(%struct.bio_st* noundef nonnull %call90, %struct.pkcs7_st* noundef nonnull %p7, %struct.pkcs7_signer_info_st* noundef %8, %struct.x509_st* noundef %9) #4
  %cmp147 = icmp slt i32 %call146, 1
  %inc152 = add nuw nsw i32 %i.0279, 1
  br i1 %cmp147, label %if.then149, label %for.cond136

if.then149:                                       ; preds = %for.body141
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 361, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.PKCS7_verify, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 105, i8* noundef null) #4
  br label %err

err:                                              ; preds = %for.cond136, %for.cond136.preheader, %cleanup, %if.end132, %if.end89, %if.end27, %if.then149, %if.then128, %if.then110, %if.then102, %if.then68, %if.then53, %if.then48
  %buf.0 = phi i8* [ null, %if.end27 ], [ null, %cleanup ], [ null, %if.end89 ], [ null, %if.then102 ], [ null, %if.then110 ], [ %call107, %if.then149 ], [ %call107, %if.then128 ], [ null, %if.then68 ], [ null, %if.then53 ], [ null, %if.then48 ], [ %call107, %if.end132 ], [ %call107, %for.cond136.preheader ], [ %call107, %for.cond136 ]
  %ret.0 = phi i32 [ 0, %if.end27 ], [ 0, %cleanup ], [ 0, %if.end89 ], [ 0, %if.then102 ], [ 0, %if.then110 ], [ 0, %if.then149 ], [ 0, %if.then128 ], [ 0, %if.then68 ], [ 0, %if.then53 ], [ 0, %if.then48 ], [ 1, %if.end132 ], [ 1, %for.cond136.preheader ], [ 1, %for.cond136 ]
  %p7bio.0 = phi %struct.bio_st* [ null, %if.end27 ], [ null, %cleanup ], [ null, %if.end89 ], [ %call90, %if.then102 ], [ %call90, %if.then110 ], [ %call90, %if.then149 ], [ %call90, %if.then128 ], [ null, %if.then68 ], [ null, %if.then53 ], [ null, %if.then48 ], [ %call90, %if.end132 ], [ %call90, %for.cond136.preheader ], [ %call90, %for.cond136 ]
  %tmpin.1 = phi %struct.bio_st* [ null, %if.end27 ], [ null, %cleanup ], [ %tmpin.0, %if.end89 ], [ %tmpin.0, %if.then102 ], [ %tmpin.0, %if.then110 ], [ %tmpin.0, %if.then149 ], [ %tmpin.0, %if.then128 ], [ null, %if.then68 ], [ null, %if.then53 ], [ null, %if.then48 ], [ %tmpin.0, %if.end132 ], [ %tmpin.0, %for.cond136.preheader ], [ %tmpin.0, %for.cond136 ]
  call void @X509_STORE_CTX_free(%struct.x509_store_ctx_st* noundef %call31) #4
  call void @CRYPTO_free(i8* noundef %buf.0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 370) #4
  %cmp155 = icmp eq %struct.bio_st* %tmpin.1, %indata
  %or.cond179 = and i1 %tobool5, %cmp155
  br i1 %or.cond179, label %if.then159, label %if.end162

if.then159:                                       ; preds = %err
  %call160 = call %struct.bio_st* @BIO_pop(%struct.bio_st* noundef %p7bio.0) #4
  br label %if.end162

if.end162:                                        ; preds = %if.then159, %err
  call void @BIO_free_all(%struct.bio_st* noundef %p7bio.0) #4
  %call163 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef nonnull %call24) #5
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call163) #4
  br label %cleanup164

cleanup164:                                       ; preds = %if.end23, %if.end162, %if.then22, %if.then14, %if.then6, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then14 ], [ %ret.0, %if.end162 ], [ 0, %if.then22 ], [ 0, %if.then6 ], [ 0, %if.then2 ], [ 0, %if.end23 ]
  ret i32 %retval.0
}

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare %struct.stack_st_PKCS7_SIGNER_INFO* @PKCS7_get_signer_info(%struct.pkcs7_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_PKCS7_SIGNER_INFO_sk_type(%struct.stack_st_PKCS7_SIGNER_INFO* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_PKCS7_SIGNER_INFO* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_X509* @PKCS7_get0_signers(%struct.pkcs7_st* noundef %p7, %struct.stack_st_X509* noundef %certs, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.pkcs7_st* %p7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 391, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.PKCS7_get0_signers, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 143, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 4
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !21
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #4
  %cmp1 = icmp eq i32 %call, 22
  br i1 %cmp1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 396, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.PKCS7_get0_signers, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 113, i8* noundef null) #4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call %struct.stack_st_PKCS7_SIGNER_INFO* @PKCS7_get_signer_info(%struct.pkcs7_st* noundef nonnull %p7) #4
  %call5 = tail call fastcc %struct.stack_st* @ossl_check_const_PKCS7_SIGNER_INFO_sk_type(%struct.stack_st_PKCS7_SIGNER_INFO* noundef %call4) #5
  %call6 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call5) #4
  %cmp7 = icmp slt i32 %call6, 1
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end3
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 405, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.PKCS7_get0_signers, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 142, i8* noundef null) #4
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %call10 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #4
  %1 = bitcast %struct.stack_st* %call10 to %struct.stack_st_X509*
  %cmp11 = icmp eq %struct.stack_st* %call10, null
  br i1 %cmp11, label %if.then12, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end9
  %call1582 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call5) #4
  %cmp1683 = icmp sgt i32 %call1582, 0
  br i1 %cmp1683, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tobool.not = icmp eq %struct.stack_st_X509* %certs, null
  %and = and i32 %flags, 16
  %tobool23.not = icmp eq i32 %and, 0
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %sign = bitcast %union.anon* %d to %struct.pkcs7_signed_st**
  br label %for.body

if.then12:                                        ; preds = %if.end9
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 410, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.PKCS7_get0_signers, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

for.cond:                                         ; preds = %if.end37
  %call15 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call5) #4
  %cmp16 = icmp slt i32 %inc, %call15
  br i1 %cmp16, label %for.body, label %cleanup, !llvm.loop !31

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %i.084 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %call18 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call5, i32 noundef %i.084) #4
  %issuer_and_serial = getelementptr inbounds i8, i8* %call18, i64 8
  %2 = bitcast i8* %issuer_and_serial to %struct.pkcs7_issuer_and_serial_st**
  %3 = load %struct.pkcs7_issuer_and_serial_st*, %struct.pkcs7_issuer_and_serial_st** %2, align 8, !tbaa !32
  br i1 %tobool.not, label %land.lhs.true, label %if.end21

if.end21:                                         ; preds = %for.body
  %issuer = getelementptr inbounds %struct.pkcs7_issuer_and_serial_st, %struct.pkcs7_issuer_and_serial_st* %3, i64 0, i32 0
  %4 = load %struct.X509_name_st*, %struct.X509_name_st** %issuer, align 8, !tbaa !33
  %serial = getelementptr inbounds %struct.pkcs7_issuer_and_serial_st, %struct.pkcs7_issuer_and_serial_st* %3, i64 0, i32 1
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %serial, align 8, !tbaa !35
  %call20 = tail call %struct.x509_st* @X509_find_by_issuer_and_serial(%struct.stack_st_X509* noundef nonnull %certs, %struct.X509_name_st* noundef %4, %struct.asn1_string_st* noundef %5) #4
  %tobool22.not = icmp eq %struct.x509_st* %call20, null
  br i1 %tobool22.not, label %land.lhs.true, label %if.end37

land.lhs.true:                                    ; preds = %for.body, %if.end21
  br i1 %tobool23.not, label %land.lhs.true24, label %if.then35

land.lhs.true24:                                  ; preds = %land.lhs.true
  %6 = load %struct.pkcs7_signed_st*, %struct.pkcs7_signed_st** %sign, align 8, !tbaa !25
  %cert = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %6, i64 0, i32 2
  %7 = load %struct.stack_st_X509*, %struct.stack_st_X509** %cert, align 8, !tbaa !26
  %tobool25.not = icmp eq %struct.stack_st_X509* %7, null
  br i1 %tobool25.not, label %if.then35, label %if.end33

if.end33:                                         ; preds = %land.lhs.true24
  %issuer30 = getelementptr inbounds %struct.pkcs7_issuer_and_serial_st, %struct.pkcs7_issuer_and_serial_st* %3, i64 0, i32 0
  %8 = load %struct.X509_name_st*, %struct.X509_name_st** %issuer30, align 8, !tbaa !33
  %serial31 = getelementptr inbounds %struct.pkcs7_issuer_and_serial_st, %struct.pkcs7_issuer_and_serial_st* %3, i64 0, i32 1
  %9 = load %struct.asn1_string_st*, %struct.asn1_string_st** %serial31, align 8, !tbaa !35
  %call32 = tail call %struct.x509_st* @X509_find_by_issuer_and_serial(%struct.stack_st_X509* noundef nonnull %7, %struct.X509_name_st* noundef %8, %struct.asn1_string_st* noundef %9) #4
  %tobool34.not = icmp eq %struct.x509_st* %call32, null
  br i1 %tobool34.not, label %if.then35, label %if.end37

if.then35:                                        ; preds = %land.lhs.true24, %land.lhs.true, %if.end33
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 428, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.PKCS7_get0_signers, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 128, i8* noundef null) #4
  %call36 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef nonnull %1) #5
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call36) #4
  br label %cleanup

if.end37:                                         ; preds = %if.end21, %if.end33
  %signer.181 = phi %struct.x509_st* [ %call32, %if.end33 ], [ %call20, %if.end21 ]
  %call38 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef nonnull %1) #5
  %10 = bitcast %struct.x509_st* %signer.181 to i8*
  %call40 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call38, i8* noundef %10) #4
  %tobool41.not = icmp eq i32 %call40, 0
  %inc = add nuw nsw i32 %i.084, 1
  br i1 %tobool41.not, label %if.then42, label %for.cond

if.then42:                                        ; preds = %if.end37
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call38) #4
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %for.cond.preheader, %if.then42, %if.then35, %if.then12, %if.then8, %if.then2, %if.then
  %retval.0 = phi %struct.stack_st_X509* [ null, %if.then ], [ null, %if.then8 ], [ null, %if.then12 ], [ null, %if.then42 ], [ null, %if.then35 ], [ null, %if.then2 ], [ %1, %for.cond.preheader ], [ %1, %for.cond ]
  ret %struct.stack_st_X509* %retval.0
}

declare %struct.x509_store_ctx_st* @X509_STORE_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.ossl_lib_ctx_st* @ossl_pkcs7_ctx_get0_libctx(%struct.PKCS7_CTX_st* noundef) local_unnamed_addr #2

declare i8* @ossl_pkcs7_ctx_get0_propq(%struct.PKCS7_CTX_st* noundef) local_unnamed_addr #2

declare i32 @X509_STORE_CTX_init(%struct.x509_store_ctx_st* noundef, %struct.x509_store_st* noundef, %struct.x509_st* noundef, %struct.stack_st_X509* noundef) local_unnamed_addr #2

declare i32 @X509_STORE_CTX_set_default(%struct.x509_store_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare void @X509_STORE_CTX_set0_crls(%struct.x509_store_ctx_st* noundef, %struct.stack_st_X509_CRL* noundef) local_unnamed_addr #2

declare i32 @X509_verify_cert(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare i32 @X509_STORE_CTX_get_error(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare i8* @X509_verify_cert_error_string(i64 noundef) local_unnamed_addr #2

declare i32 @BIO_method_type(%struct.bio_st* noundef) local_unnamed_addr #2

declare %struct.bio_st* @BIO_new_mem_buf(i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

declare %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SMIME_text(%struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

declare i32 @PKCS7_signatureVerify(%struct.bio_st* noundef, %struct.pkcs7_st* noundef, %struct.pkcs7_signer_info_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare void @X509_STORE_CTX_free(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.bio_st* @BIO_pop(%struct.bio_st* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.x509_st* @X509_find_by_issuer_and_serial(%struct.stack_st_X509* noundef, %struct.X509_name_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_st* @PKCS7_encrypt_ex(%struct.stack_st_X509* noundef %certs, %struct.bio_st* noundef %in, %struct.evp_cipher_st* noundef %cipher, i32 noundef %flags, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.pkcs7_st* @PKCS7_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #4
  %cmp = icmp eq %struct.pkcs7_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 453, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.PKCS7_encrypt_ex, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @PKCS7_set_type(%struct.pkcs7_st* noundef nonnull %call, i32 noundef 23) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @PKCS7_set_cipher(%struct.pkcs7_st* noundef nonnull %call, %struct.evp_cipher_st* noundef %cipher) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err.sink.split, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end3
  %call8 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %certs) #5
  %call941 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call8) #4
  %cmp1042 = icmp sgt i32 %call941, 0
  br i1 %cmp1042, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %call9 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call8) #4
  %cmp10 = icmp slt i32 %inc, %call9
  br i1 %cmp10, label %for.body, label %for.end, !llvm.loop !36

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.043 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call12 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call8, i32 noundef %i.043) #4
  %0 = bitcast i8* %call12 to %struct.x509_st*
  %call13 = tail call %struct.pkcs7_recip_info_st* @PKCS7_add_recipient(%struct.pkcs7_st* noundef nonnull %call, %struct.x509_st* noundef %0) #4
  %tobool14.not = icmp eq %struct.pkcs7_recip_info_st* %call13, null
  %inc = add nuw nsw i32 %i.043, 1
  br i1 %tobool14.not, label %err.sink.split, label %for.cond

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  %and = and i32 %flags, 4096
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end19, label %cleanup

if.end19:                                         ; preds = %for.end
  %call20 = tail call i32 @PKCS7_final(%struct.pkcs7_st* noundef nonnull %call, %struct.bio_st* noundef %in, i32 noundef %flags) #5
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %cleanup

err.sink.split:                                   ; preds = %for.body, %if.end3
  %.sink44 = phi i32 [ 460, %if.end3 ], [ 467, %for.body ]
  %.sink = phi i32 [ 121, %if.end3 ], [ 120, %for.body ]
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink44, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.PKCS7_encrypt_ex, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef %.sink, i8* noundef null) #4
  br label %err

err:                                              ; preds = %err.sink.split, %if.end19, %if.end
  tail call void @BIO_free_all(%struct.bio_st* noundef null) #4
  tail call void @PKCS7_free(%struct.pkcs7_st* noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %for.end, %err, %if.then
  %retval.0 = phi %struct.pkcs7_st* [ null, %if.then ], [ null, %err ], [ %call, %for.end ], [ %call, %if.end19 ]
  ret %struct.pkcs7_st* %retval.0
}

declare i32 @PKCS7_set_cipher(%struct.pkcs7_st* noundef, %struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare %struct.pkcs7_recip_info_st* @PKCS7_add_recipient(%struct.pkcs7_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_st* @PKCS7_encrypt(%struct.stack_st_X509* noundef %certs, %struct.bio_st* noundef %in, %struct.evp_cipher_st* noundef %cipher, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.pkcs7_st* @PKCS7_encrypt_ex(%struct.stack_st_X509* noundef %certs, %struct.bio_st* noundef %in, %struct.evp_cipher_st* noundef %cipher, i32 noundef %flags, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #5
  ret %struct.pkcs7_st* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS7_decrypt(%struct.pkcs7_st* noundef %p7, %struct.evp_pkey_st* noundef %pkey, %struct.x509_st* noundef %cert, %struct.bio_st* noundef %data, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.pkcs7_st* %p7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 500, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.PKCS7_decrypt, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 143, i8* noundef null) #4
  br label %cleanup56

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 4
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !21
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #4
  %cmp1 = icmp eq i32 %call, 23
  br i1 %cmp1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 505, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.PKCS7_decrypt, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 113, i8* noundef null) #4
  br label %cleanup56

if.end3:                                          ; preds = %if.end
  %tobool.not = icmp eq %struct.x509_st* %cert, null
  br i1 %tobool.not, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end3
  %call4 = tail call i32 @X509_check_private_key(%struct.x509_st* noundef nonnull %cert, %struct.evp_pkey_st* noundef %pkey) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 511, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.PKCS7_decrypt, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 127, i8* noundef null) #4
  br label %cleanup56

if.end7:                                          ; preds = %land.lhs.true, %if.end3
  %call8 = tail call %struct.bio_st* @PKCS7_dataDecode(%struct.pkcs7_st* noundef nonnull %p7, %struct.evp_pkey_st* noundef %pkey, %struct.bio_st* noundef null, %struct.x509_st* noundef %cert) #4
  %cmp9 = icmp eq %struct.bio_st* %call8, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 516, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.PKCS7_decrypt, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 119, i8* noundef null) #4
  br label %cleanup56

if.end11:                                         ; preds = %if.end7
  %and = and i32 %flags, 1
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end35, label %if.then13

if.then13:                                        ; preds = %if.end11
  %call14 = tail call %struct.bio_method_st* @BIO_f_buffer() #4
  %call15 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call14) #4
  %cmp16 = icmp eq %struct.bio_st* %call15, null
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then13
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 524, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.PKCS7_decrypt, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 786688, i8* noundef null) #4
  tail call void @BIO_free_all(%struct.bio_st* noundef nonnull %call8) #4
  br label %cleanup56

if.end18:                                         ; preds = %if.then13
  %call19 = tail call %struct.bio_st* @BIO_push(%struct.bio_st* noundef nonnull %call15, %struct.bio_st* noundef nonnull %call8) #4
  %cmp20 = icmp eq %struct.bio_st* %call19, null
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end18
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 529, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.PKCS7_decrypt, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 786688, i8* noundef null) #4
  tail call void @BIO_free_all(%struct.bio_st* noundef nonnull %call15) #4
  tail call void @BIO_free_all(%struct.bio_st* noundef nonnull %call8) #4
  br label %cleanup56

if.end22:                                         ; preds = %if.end18
  %call23 = tail call i32 @SMIME_text(%struct.bio_st* noundef nonnull %call19, %struct.bio_st* noundef %data) #4
  %cmp24 = icmp sgt i32 %call23, 0
  br i1 %cmp24, label %land.lhs.true25, label %if.end33

land.lhs.true25:                                  ; preds = %if.end22
  %call26 = tail call i32 @BIO_method_type(%struct.bio_st* noundef nonnull %call8) #4
  %cmp27 = icmp eq i32 %call26, 522
  br i1 %cmp27, label %if.then28, label %if.end33

if.then28:                                        ; preds = %land.lhs.true25
  %call29 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call8, i32 noundef 113, i64 noundef 0, i8* noundef null) #4
  %tobool30.not = icmp eq i64 %call29, 0
  %spec.select = select i1 %tobool30.not, i32 0, i32 %call23
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %land.lhs.true25, %if.end22
  %ret.0 = phi i32 [ %call23, %land.lhs.true25 ], [ %call23, %if.end22 ], [ %spec.select, %if.then28 ]
  tail call void @BIO_free_all(%struct.bio_st* noundef nonnull %call19) #4
  br label %cleanup56

if.end35:                                         ; preds = %if.end11
  %call36 = tail call i8* @CRYPTO_malloc(i64 noundef 4096, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 542) #4
  %cmp37 = icmp eq i8* %call36, null
  br i1 %cmp37, label %if.then38, label %for.cond

if.then38:                                        ; preds = %if.end35
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 543, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.PKCS7_decrypt, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 786688, i8* noundef null) #4
  br label %err

for.cond:                                         ; preds = %if.end35, %if.end51
  %call40 = tail call i32 @BIO_read(%struct.bio_st* noundef nonnull %call8, i8* noundef nonnull %call36, i32 noundef 4096) #4
  %cmp41 = icmp slt i32 %call40, 1
  br i1 %cmp41, label %if.then42, label %if.end51

if.then42:                                        ; preds = %for.cond
  %call43 = tail call i32 @BIO_method_type(%struct.bio_st* noundef nonnull %call8) #4
  %cmp44 = icmp eq i32 %call43, 522
  br i1 %cmp44, label %if.then45, label %err

if.then45:                                        ; preds = %if.then42
  %call46 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call8, i32 noundef 113, i64 noundef 0, i8* noundef null) #4
  %tobool47.not = icmp ne i64 %call46, 0
  %spec.select88 = zext i1 %tobool47.not to i32
  br label %err

if.end51:                                         ; preds = %for.cond
  %call52 = tail call i32 @BIO_write(%struct.bio_st* noundef %data, i8* noundef nonnull %call36, i32 noundef %call40) #4
  %cmp53.not = icmp eq i32 %call52, %call40
  br i1 %cmp53.not, label %for.cond, label %err

err:                                              ; preds = %if.end51, %if.then45, %if.then42, %if.then38
  %ret.1 = phi i32 [ 0, %if.then38 ], [ 1, %if.then42 ], [ %spec.select88, %if.then45 ], [ 0, %if.end51 ]
  tail call void @CRYPTO_free(i8* noundef %call36, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 562) #4
  tail call void @BIO_free_all(%struct.bio_st* noundef nonnull %call8) #4
  br label %cleanup56

cleanup56:                                        ; preds = %if.then17, %if.then21, %if.end33, %err, %if.then10, %if.then6, %if.then2, %if.then
  %retval.1 = phi i32 [ 0, %if.then ], [ 0, %if.then10 ], [ %ret.1, %err ], [ 0, %if.then6 ], [ 0, %if.then2 ], [ 0, %if.then17 ], [ 0, %if.then21 ], [ %ret.0, %if.end33 ]
  ret i32 %retval.1
}

declare %struct.bio_st* @PKCS7_dataDecode(%struct.pkcs7_st* noundef, %struct.evp_pkey_st* noundef, %struct.bio_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare %struct.bio_method_st* @BIO_f_buffer() local_unnamed_addr #2

declare %struct.bio_st* @BIO_push(%struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef) local_unnamed_addr #2

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #2

declare i32 @PKCS7_simple_smimecap(%struct.stack_st_X509_ALGOR* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_ATTRIBUTE_sk_type(%struct.stack_st_X509_ATTRIBUTE* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_ATTRIBUTE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @OBJ_cmp(%struct.asn1_object_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @PKCS7_digest_from_attributes(%struct.stack_st_X509_ATTRIBUTE* noundef) local_unnamed_addr #2

declare i32 @PKCS7_add1_attrib_digest(%struct.pkcs7_signer_info_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{!7, !8, i64 64}
!7 = !{!"pkcs7_signer_info_st", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!7, !8, i64 24}
!12 = !{!7, !8, i64 16}
!13 = !{!14, !8, i64 0}
!14 = !{!"X509_algor_st", !8, i64 0, !8, i64 8}
!15 = distinct !{!15, !5}
!16 = !{!17, !8, i64 8}
!17 = !{!"asn1_string_st", !18, i64 0, !18, i64 4, !8, i64 8, !19, i64 16}
!18 = !{!"int", !9, i64 0}
!19 = !{!"long", !9, i64 0}
!20 = !{!17, !18, i64 0}
!21 = !{!22, !8, i64 24}
!22 = !{!"pkcs7_st", !8, i64 0, !19, i64 8, !18, i64 16, !18, i64 20, !8, i64 24, !9, i64 32, !23, i64 40}
!23 = !{!"PKCS7_CTX_st", !8, i64 0, !8, i64 8}
!24 = distinct !{!24, !5}
!25 = !{!9, !9, i64 0}
!26 = !{!27, !8, i64 16}
!27 = !{!"pkcs7_signed_st", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40}
!28 = !{!27, !8, i64 24}
!29 = !{!8, !8, i64 0}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = !{!7, !8, i64 8}
!33 = !{!34, !8, i64 0}
!34 = !{!"pkcs7_issuer_and_serial_st", !8, i64 0, !8, i64 8}
!35 = !{!34, !8, i64 8}
!36 = distinct !{!36, !5}
