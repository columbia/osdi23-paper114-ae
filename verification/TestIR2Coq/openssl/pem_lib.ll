; ModuleID = 'crypto/pem/pem_lib.c'
source_filename = "crypto/pem/pem_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.bio_method_st = type opaque
%struct.bio_st = type opaque
%struct.evp_cipher_info_st = type { %struct.evp_cipher_st*, [16 x i8] }
%struct.evp_cipher_st = type opaque
%struct.evp_md_st = type opaque
%struct.evp_cipher_ctx_st = type opaque
%struct.engine_st = type opaque
%struct.evp_Encode_Ctx_st = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.evp_pkey_asn1_method_st = type { i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* }
%struct.evp_pkey_st = type opaque
%struct.X509_pubkey_st = type opaque
%struct.pkcs8_priv_key_info_st = type opaque
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
%struct.ossl_lib_ctx_st = type opaque

@.str = private unnamed_addr constant [23 x i8] c"Enter PEM pass phrase:\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"crypto/pem/pem_lib.c\00", align 1
@__func__.PEM_def_callback = private unnamed_addr constant [17 x i8] c"PEM_def_callback\00", align 1
@.str.2 = private constant [10 x i8] c"ENCRYPTED\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"MIC-CLEAR\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"MIC-ONLY\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"BAD-TYPE\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Proc-Type: 4,%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"DEK-Info: %s,\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__func__.PEM_ASN1_read = private unnamed_addr constant [14 x i8] c"PEM_ASN1_read\00", align 1
@__func__.PEM_ASN1_write = private unnamed_addr constant [15 x i8] c"PEM_ASN1_write\00", align 1
@__func__.PEM_ASN1_write_bio = private unnamed_addr constant [19 x i8] c"PEM_ASN1_write_bio\00", align 1
@__func__.PEM_do_header = private unnamed_addr constant [14 x i8] c"PEM_do_header\00", align 1
@PEM_get_EVP_CIPHER_INFO.ProcType = internal constant [11 x i8] c"Proc-Type:\00", align 1
@PEM_get_EVP_CIPHER_INFO.DEKInfo = internal constant [10 x i8] c"DEK-Info:\00", align 1
@__func__.PEM_get_EVP_CIPHER_INFO = private unnamed_addr constant [24 x i8] c"PEM_get_EVP_CIPHER_INFO\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c" \09\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c" \09\0D\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c" \09,\00", align 1
@__func__.PEM_write = private unnamed_addr constant [10 x i8] c"PEM_write\00", align 1
@.str.14 = private constant [12 x i8] c"-----BEGIN \00", align 1
@.str.15 = private constant [7 x i8] c"-----\0A\00", align 1
@.str.16 = private constant [10 x i8] c"-----END \00", align 1
@__func__.PEM_write_bio = private unnamed_addr constant [14 x i8] c"PEM_write_bio\00", align 1
@__func__.PEM_read = private unnamed_addr constant [9 x i8] c"PEM_read\00", align 1
@__func__.PEM_read_bio_ex = private unnamed_addr constant [16 x i8] c"PEM_read_bio_ex\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"Expecting: \00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"ANY PRIVATE KEY\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"ENCRYPTED PRIVATE KEY\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"PRIVATE KEY\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"PARAMETERS\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"X9.42 DH PARAMETERS\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"DH PARAMETERS\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"X509 CERTIFICATE\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"CERTIFICATE\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"NEW CERTIFICATE REQUEST\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"CERTIFICATE REQUEST\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"TRUSTED CERTIFICATE\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"PKCS7\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"PKCS #7 SIGNED DATA\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"CMS\00", align 1
@__func__.load_iv = private unnamed_addr constant [8 x i8] c"load_iv\00", align 1
@__func__.get_name = private unnamed_addr constant [9 x i8] c"get_name\00", align 1
@__const.sanitize_line.utf8_bom = private unnamed_addr constant [3 x i8] c"\EF\BB\BF", align 1
@__func__.get_header_and_data = private unnamed_addr constant [20 x i8] c"get_header_and_data\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_def_callback(i8* noundef %buf, i32 noundef %num, i32 noundef %rwflag, i8* noundef %userdata) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i8* %userdata, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i64 @strlen(i8* noundef nonnull %userdata) #9
  %conv = trunc i64 %call to i32
  %cmp = icmp sgt i32 %conv, %num
  %cond = select i1 %cmp, i32 %num, i32 %conv
  %conv2 = sext i32 %cond to i64
  %call3 = tail call i8* @memcpy(i8* noundef %buf, i8* noundef nonnull %userdata, i64 noundef %conv2) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i8* @EVP_get_pw_prompt() #10
  %cmp5 = icmp eq i8* %call4, null
  %spec.store.select = select i1 %cmp5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %call4
  %tobool9.not = icmp eq i32 %rwflag, 0
  %cond10 = select i1 %tobool9.not, i32 0, i32 4
  %call11 = tail call i32 @EVP_read_pw_string_min(i8* noundef %buf, i32 noundef %cond10, i32 noundef %num, i8* noundef %spec.store.select, i32 noundef %rwflag) #10
  %cmp12.not = icmp eq i32 %call11, 0
  br i1 %cmp12.not, label %if.end17, label %if.then14

if.then14:                                        ; preds = %if.end
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.PEM_def_callback, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 109, i8* noundef null) #10
  %conv15 = zext i32 %num to i64
  %call16 = tail call i8* @memset(i8* noundef %buf, i32 noundef 0, i64 noundef %conv15) #10
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %call18 = tail call i64 @strlen(i8* noundef %buf) #9
  %conv19 = trunc i64 %call18 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then14, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ -1, %if.then14 ], [ %conv19, %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i8* @EVP_get_pw_prompt() local_unnamed_addr #4

declare i32 @EVP_read_pw_string_min(i8* noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare void @ERR_new() local_unnamed_addr #4

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define void @PEM_proc_type(i8* noundef %buf, i32 noundef %type) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @strlen(i8* noundef %buf) #9
  switch i32 %type, label %if.else6 [
    i32 10, label %if.end8
    i32 30, label %if.then2
    i32 20, label %if.then5
  ]

if.then2:                                         ; preds = %entry
  br label %if.end8

if.then5:                                         ; preds = %entry
  br label %if.end8

if.else6:                                         ; preds = %entry
  br label %if.end8

if.end8:                                          ; preds = %entry, %if.then2, %if.else6, %if.then5
  %str.0 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %if.then2 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %if.then5 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), %if.else6 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %entry ]
  %add.ptr = getelementptr inbounds i8, i8* %buf, i64 %call
  %sub = sub i64 1024, %call
  %call9 = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef %add.ptr, i64 noundef %sub, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* noundef nonnull %str.0) #10
  ret void
}

declare i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define void @PEM_dek_info(i8* noundef %buf, i8* noundef %type, i32 noundef %len, i8* nocapture noundef readonly %str) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @strlen(i8* noundef %buf) #9
  %add.ptr = getelementptr inbounds i8, i8* %buf, i64 %call
  %0 = trunc i64 %call to i32
  %conv = sub i32 1024, %0
  %conv1 = sext i32 %conv to i64
  %call2 = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef %add.ptr, i64 noundef %conv1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* noundef %type) #10
  %cmp = icmp sgt i32 %call2, 0
  br i1 %cmp, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  %sub4 = sub nsw i32 %conv, %call2
  %idx.ext50 = zext i32 %call2 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext50
  %conv6 = sext i32 %len to i64
  %cmp754 = icmp sgt i32 %len, 0
  br i1 %cmp754, label %for.body, label %for.end

for.body:                                         ; preds = %if.then, %if.end
  %j.057 = phi i32 [ %sub15, %if.end ], [ %sub4, %if.then ]
  %p.056 = phi i8* [ %add.ptr17, %if.end ], [ %add.ptr5, %if.then ]
  %i.055 = phi i64 [ %inc, %if.end ], [ 0, %if.then ]
  %conv9 = sext i32 %j.057 to i64
  %arrayidx = getelementptr inbounds i8, i8* %str, i64 %i.055
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !4
  %conv1049 = zext i8 %1 to i32
  %call11 = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef %p.056, i64 noundef %conv9, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 noundef %conv1049) #10
  %cmp12 = icmp slt i32 %call11, 1
  br i1 %cmp12, label %cleanup, label %if.end

if.end:                                           ; preds = %for.body
  %sub15 = sub nsw i32 %j.057, %call11
  %idx.ext1651 = zext i32 %call11 to i64
  %add.ptr17 = getelementptr inbounds i8, i8* %p.056, i64 %idx.ext1651
  %inc = add nuw nsw i64 %i.055, 1
  %exitcond.not = icmp eq i64 %inc, %conv6
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !7

for.end:                                          ; preds = %if.end, %if.then
  %p.0.lcssa = phi i8* [ %add.ptr5, %if.then ], [ %add.ptr17, %if.end ]
  %j.0.lcssa = phi i32 [ %sub4, %if.then ], [ %sub15, %if.end ]
  %cmp18 = icmp sgt i32 %j.0.lcssa, 1
  br i1 %cmp18, label %if.then20, label %cleanup

if.then20:                                        ; preds = %for.end
  %call21 = tail call i8* @strcpy(i8* noundef %p.0.lcssa, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #10
  br label %cleanup

cleanup:                                          ; preds = %for.body, %entry, %if.then20, %for.end
  ret void
}

; Function Attrs: nounwind
declare i8* @strcpy(i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i8* @PEM_ASN1_read(i8* (i8**, i8**, i64)* noundef %d2i, i8* noundef %name, %struct._IO_FILE* noundef %fp, i8** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_file() #10
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #10
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 116, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.PEM_ASN1_read, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 524295, i8* noundef null) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast %struct._IO_FILE* %fp to i8*
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 106, i64 noundef 0, i8* noundef %0) #10
  %call3 = tail call i8* @PEM_ASN1_read_bio(i8* (i8**, i8**, i64)* noundef %d2i, i8* noundef %name, %struct.bio_st* noundef nonnull %call1, i8** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #10
  %call4 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %call3, %if.end ]
  ret i8* %retval.0
}

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #4

declare %struct.bio_method_st* @BIO_s_file() local_unnamed_addr #4

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #4

declare i8* @PEM_ASN1_read_bio(i8* (i8**, i8**, i64)* noundef, i8* noundef, %struct.bio_st* noundef, i8** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #4

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_bytes_read_bio(i8** nocapture noundef writeonly %pdata, i64* nocapture noundef writeonly %plen, i8** noundef %pnm, i8* noundef %name, %struct.bio_st* noundef %bp, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @pem_bytes_read_bio_flags(i8** noundef %pdata, i64* noundef %plen, i8** noundef %pnm, i8* noundef %name, %struct.bio_st* noundef %bp, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, i32 noundef 2) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @pem_bytes_read_bio_flags(i8** nocapture noundef writeonly %pdata, i64* nocapture noundef writeonly %plen, i8** noundef writeonly %pnm, i8* noundef %name, %struct.bio_st* noundef %bp, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, i32 noundef %flags) unnamed_addr #0 {
entry:
  %cipher = alloca %struct.evp_cipher_info_st, align 8
  %nm = alloca i8*, align 8
  %header = alloca i8*, align 8
  %data = alloca i8*, align 8
  %len = alloca i64, align 8
  %0 = bitcast %struct.evp_cipher_info_st* %cipher to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #12
  %1 = bitcast i8** %nm to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #12
  store i8* null, i8** %nm, align 8, !tbaa !9
  %2 = bitcast i8** %header to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #12
  store i8* null, i8** %header, align 8, !tbaa !9
  %3 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #12
  store i8* null, i8** %data, align 8, !tbaa !9
  %4 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #12
  store i64 0, i64* %len, align 8, !tbaa !11
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %5 = phi i64 [ %.pre53, %do.cond.do.body_crit_edge ], [ 0, %entry ]
  %6 = phi i8* [ %.pre52, %do.cond.do.body_crit_edge ], [ null, %entry ]
  %7 = phi i8* [ %.pre, %do.cond.do.body_crit_edge ], [ null, %entry ]
  %8 = phi i8* [ %9, %do.cond.do.body_crit_edge ], [ null, %entry ]
  tail call fastcc void @pem_free(i8* noundef %8, i32 noundef %flags, i64 noundef 0) #11
  tail call fastcc void @pem_free(i8* noundef %7, i32 noundef %flags, i64 noundef 0) #11
  tail call fastcc void @pem_free(i8* noundef %6, i32 noundef %flags, i64 noundef %5) #11
  %call = call i32 @PEM_read_bio_ex(%struct.bio_st* noundef %bp, i8** noundef nonnull %nm, i8** noundef nonnull %header, i8** noundef nonnull %data, i64* noundef nonnull %len, i32 noundef %flags) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %do.cond

if.then:                                          ; preds = %do.body
  %call1 = tail call i64 @ERR_peek_error() #10
  %call2 = tail call fastcc i32 @ERR_GET_REASON(i64 noundef %call1) #11
  %cmp = icmp eq i32 %call2, 108
  br i1 %cmp, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.then
  tail call void (i32, ...) @ERR_add_error_data(i32 noundef 2, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i8* noundef %name) #10
  br label %cleanup

do.cond:                                          ; preds = %do.body
  %9 = load i8*, i8** %nm, align 8, !tbaa !9
  %call5 = tail call fastcc i32 @check_pem(i8* noundef %9, i8* noundef %name) #11
  %tobool6.not = icmp eq i32 %call5, 0
  %.pre = load i8*, i8** %header, align 8, !tbaa !9
  br i1 %tobool6.not, label %do.cond.do.body_crit_edge, label %do.end, !llvm.loop !13

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  %.pre52 = load i8*, i8** %data, align 8, !tbaa !9
  %.pre53 = load i64, i64* %len, align 8, !tbaa !11
  br label %do.body

do.end:                                           ; preds = %do.cond
  %call7 = call i32 @PEM_get_EVP_CIPHER_INFO(i8* noundef %.pre, %struct.evp_cipher_info_st* noundef nonnull %cipher) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end21, label %if.end10

if.end10:                                         ; preds = %do.end
  %10 = load i8*, i8** %data, align 8, !tbaa !9
  %call11 = call i32 @PEM_do_header(%struct.evp_cipher_info_st* noundef nonnull %cipher, i8* noundef %10, i64* noundef nonnull %len, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end21, label %if.end14

if.end14:                                         ; preds = %if.end10
  store i8* %10, i8** %pdata, align 8, !tbaa !9
  %11 = load i64, i64* %len, align 8, !tbaa !11
  store i64 %11, i64* %plen, align 8, !tbaa !11
  %cmp15.not = icmp eq i8** %pnm, null
  br i1 %cmp15.not, label %if.end21, label %err

err:                                              ; preds = %if.end14
  store i8* %9, i8** %pnm, align 8, !tbaa !9
  call fastcc void @pem_free(i8* noundef %.pre, i32 noundef %flags, i64 noundef 0) #11
  br label %cleanup

if.end21:                                         ; preds = %if.end14, %do.end, %if.end10
  %ret.049 = phi i32 [ 1, %if.end14 ], [ 0, %do.end ], [ 0, %if.end10 ]
  %tobool1847 = phi i1 [ false, %if.end14 ], [ true, %do.end ], [ true, %if.end10 ]
  call fastcc void @pem_free(i8* noundef %9, i32 noundef %flags, i64 noundef 0) #11
  call fastcc void @pem_free(i8* noundef %.pre, i32 noundef %flags, i64 noundef 0) #11
  br i1 %tobool1847, label %if.then23, label %cleanup

if.then23:                                        ; preds = %if.end21
  %12 = load i8*, i8** %data, align 8, !tbaa !9
  %13 = load i64, i64* %len, align 8, !tbaa !11
  call fastcc void @pem_free(i8* noundef %12, i32 noundef %flags, i64 noundef %13) #11
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end21, %if.then23, %if.then, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %if.then ], [ %ret.049, %if.then23 ], [ %ret.049, %if.end21 ], [ 1, %err ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_bytes_read_bio_secmem(i8** nocapture noundef writeonly %pdata, i64* nocapture noundef writeonly %plen, i8** noundef %pnm, i8* noundef %name, %struct.bio_st* noundef %bp, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @pem_bytes_read_bio_flags(i8** noundef %pdata, i64* noundef %plen, i8** noundef %pnm, i8* noundef %name, %struct.bio_st* noundef %bp, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, i32 noundef 3) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_ASN1_write(i32 (i8*, i8**)* nocapture noundef readonly %i2d, i8* noundef %name, %struct._IO_FILE* noundef %fp, i8* noundef %x, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %callback, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_file() #10
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #10
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 302, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.PEM_ASN1_write, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 524295, i8* noundef null) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast %struct._IO_FILE* %fp to i8*
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 106, i64 noundef 0, i8* noundef %0) #10
  %call3 = tail call i32 @PEM_ASN1_write_bio(i32 (i8*, i8**)* noundef %i2d, i8* noundef %name, %struct.bio_st* noundef nonnull %call1, i8* noundef %x, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %callback, i8* noundef %u) #11
  %call4 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_ASN1_write_bio(i32 (i8*, i8**)* nocapture noundef readonly %i2d, i8* noundef %name, %struct.bio_st* noundef %bp, i8* noundef %x, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef readonly %callback, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %p = alloca i8*, align 8
  %buf = alloca [1024 x i8], align 16
  %key = alloca [64 x i8], align 16
  %iv = alloca [16 x i8], align 16
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  store i32 0, i32* %i, align 4, !tbaa !14
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #12
  store i32 0, i32* %j, align 4, !tbaa !14
  %2 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #12
  %3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %3) #12
  %4 = getelementptr inbounds [64 x i8], [64 x i8]* %key, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %4) #12
  %5 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #12
  %cmp.not = icmp eq %struct.evp_cipher_st* %enc, null
  br i1 %cmp.not, label %if.end15, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef nonnull %enc) #10
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call2 = tail call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef nonnull %enc) #10
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then14, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call5 = tail call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef nonnull %enc) #10
  %cmp6 = icmp sgt i32 %call5, 16
  br i1 %cmp6, label %if.then14, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %call8 = tail call i64 @strlen(i8* noundef nonnull %call) #9
  %call9 = tail call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef nonnull %enc) #10
  %mul = shl nsw i32 %call9, 1
  %conv = sext i32 %mul to i64
  %add10 = add i64 %call8, -989
  %6 = add i64 %add10, %conv
  %cmp12 = icmp ult i64 %6, -1025
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %lor.lhs.false7, %lor.lhs.false4, %lor.lhs.false, %if.then
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 335, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.PEM_ASN1_write_bio, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 113, i8* noundef null) #10
  br label %err

if.end15:                                         ; preds = %lor.lhs.false7, %entry
  %objstr.0 = phi i8* [ %call, %lor.lhs.false7 ], [ null, %entry ]
  %call16 = tail call i32 %i2d(i8* noundef %x, i8** noundef null) #10
  %cmp17 = icmp slt i32 %call16, 1
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end15
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 341, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.PEM_ASN1_write_bio, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 524301, i8* noundef null) #10
  br label %err

if.end20:                                         ; preds = %if.end15
  %add21 = add nuw i32 %call16, 20
  %conv22 = zext i32 %add21 to i64
  %call23 = tail call i8* @CRYPTO_malloc(i64 noundef %conv22, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 347) #10
  %cmp24 = icmp eq i8* %call23, null
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end20
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 349, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.PEM_ASN1_write_bio, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 786688, i8* noundef null) #10
  br label %err

if.end27:                                         ; preds = %if.end20
  store i8* %call23, i8** %p, align 8, !tbaa !9
  %call28 = call i32 %i2d(i8* noundef %x, i8** noundef nonnull %p) #10
  store i32 %call28, i32* %i, align 4, !tbaa !14
  br i1 %cmp.not, label %if.else93, label %if.then31

if.then31:                                        ; preds = %if.end27
  %cmp32 = icmp eq i8* %kstr, null
  br i1 %cmp32, label %if.then34, label %if.end47

if.then34:                                        ; preds = %if.then31
  %cmp35 = icmp eq i32 (i8*, i32, i32, i8*)* %callback, null
  br i1 %cmp35, label %if.then37, label %if.else

if.then37:                                        ; preds = %if.then34
  %call38 = call i32 @PEM_def_callback(i8* noundef nonnull %3, i32 noundef 1024, i32 noundef 1, i8* noundef %u) #11
  br label %if.end41

if.else:                                          ; preds = %if.then34
  %call40 = call i32 %callback(i8* noundef nonnull %3, i32 noundef 1024, i32 noundef 1, i8* noundef %u) #10
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then37
  %klen.addr.0 = phi i32 [ %call38, %if.then37 ], [ %call40, %if.else ]
  %cmp42 = icmp slt i32 %klen.addr.0, 1
  br i1 %cmp42, label %if.then44, label %if.end47

if.then44:                                        ; preds = %if.end41
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 362, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.PEM_ASN1_write_bio, i64 0, i64 0)) #10
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 111, i8* noundef null) #10
  br label %err

if.end47:                                         ; preds = %if.end41, %if.then31
  %klen.addr.1 = phi i32 [ %klen, %if.then31 ], [ %klen.addr.0, %if.end41 ]
  %kstr.addr.0 = phi i8* [ %kstr, %if.then31 ], [ %3, %if.end41 ]
  %call49 = call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef nonnull %enc) #10
  %call50 = call i32 @RAND_bytes(i8* noundef nonnull %5, i32 noundef %call49) #10
  %cmp51 = icmp slt i32 %call50, 1
  br i1 %cmp51, label %err, label %if.end54

if.end54:                                         ; preds = %if.end47
  %call55 = call %struct.evp_md_st* @EVP_md5() #10
  %call58 = call i32 @EVP_BytesToKey(%struct.evp_cipher_st* noundef nonnull %enc, %struct.evp_md_st* noundef %call55, i8* noundef nonnull %5, i8* noundef nonnull %kstr.addr.0, i32 noundef %klen.addr.1, i32 noundef 1, i8* noundef nonnull %4, i8* noundef null) #10
  %tobool.not = icmp eq i32 %call58, 0
  br i1 %tobool.not, label %err, label %if.end60

if.end60:                                         ; preds = %if.end54
  %cmp62 = icmp eq i8* %kstr.addr.0, %3
  br i1 %cmp62, label %if.then64, label %if.end66

if.then64:                                        ; preds = %if.end60
  call void @OPENSSL_cleanse(i8* noundef nonnull %3, i64 noundef 1024) #10
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.end60
  store i8 0, i8* %3, align 16, !tbaa !4
  call void @PEM_proc_type(i8* noundef nonnull %3, i32 noundef 10) #11
  %call69 = call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef nonnull %enc) #10
  call void @PEM_dek_info(i8* noundef nonnull %3, i8* noundef %objstr.0, i32 noundef %call69, i8* noundef nonnull %5) #11
  %call71 = call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #10
  %cmp72 = icmp eq %struct.evp_cipher_ctx_st* %call71, null
  br i1 %cmp72, label %err, label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %if.end66
  %call77 = call i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef nonnull %call71, %struct.evp_cipher_st* noundef nonnull %enc, %struct.engine_st* noundef null, i8* noundef nonnull %4, i8* noundef nonnull %5) #10
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %err, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %lor.lhs.false74
  %call80 = call i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef nonnull %call71, i8* noundef nonnull %call23, i32* noundef nonnull %j, i8* noundef nonnull %call23, i32 noundef %call28) #10
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %err, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %lor.lhs.false79
  %7 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom = sext i32 %7 to i64
  %arrayidx83 = getelementptr inbounds i8, i8* %call23, i64 %idxprom
  %call84 = call i32 @EVP_EncryptFinal_ex(%struct.evp_cipher_ctx_st* noundef nonnull %call71, i8* noundef nonnull %arrayidx83, i32* noundef nonnull %i) #10
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %err, label %if.end91

if.end91:                                         ; preds = %lor.lhs.false82
  %8 = load i32, i32* %j, align 4, !tbaa !14
  %9 = load i32, i32* %i, align 4, !tbaa !14
  %add92 = add nsw i32 %9, %8
  store i32 %add92, i32* %i, align 4, !tbaa !14
  br label %if.end95

if.else93:                                        ; preds = %if.end27
  store i8 0, i8* %3, align 16, !tbaa !4
  br label %if.end95

if.end95:                                         ; preds = %if.else93, %if.end91
  %10 = phi i32 [ %add92, %if.end91 ], [ %call28, %if.else93 ]
  %ctx.0 = phi %struct.evp_cipher_ctx_st* [ %call71, %if.end91 ], [ null, %if.else93 ]
  %conv97 = sext i32 %10 to i64
  %call98 = call i32 @PEM_write_bio(%struct.bio_st* noundef %bp, i8* noundef %name, i8* noundef nonnull %3, i8* noundef nonnull %call23, i64 noundef %conv97) #11
  store i32 %call98, i32* %i, align 4, !tbaa !14
  %cmp99 = icmp sgt i32 %call98, 0
  %spec.select = zext i1 %cmp99 to i32
  br label %err

err:                                              ; preds = %if.end95, %if.end66, %lor.lhs.false74, %lor.lhs.false79, %lor.lhs.false82, %if.end54, %if.end47, %if.then44, %if.then26, %if.then19, %if.then14
  %ctx.1 = phi %struct.evp_cipher_ctx_st* [ null, %if.then14 ], [ null, %if.then19 ], [ null, %if.then26 ], [ null, %if.then44 ], [ null, %if.end47 ], [ null, %if.end54 ], [ %ctx.0, %if.end95 ], [ %call71, %lor.lhs.false82 ], [ %call71, %lor.lhs.false79 ], [ %call71, %lor.lhs.false74 ], [ null, %if.end66 ]
  %dsize.0 = phi i32 [ 0, %if.then14 ], [ 0, %if.then19 ], [ %call16, %if.then26 ], [ %call16, %if.then44 ], [ %call16, %if.end47 ], [ %call16, %if.end54 ], [ %call16, %if.end95 ], [ %call16, %lor.lhs.false82 ], [ %call16, %lor.lhs.false79 ], [ %call16, %lor.lhs.false74 ], [ %call16, %if.end66 ]
  %ret.2 = phi i32 [ 0, %if.then14 ], [ 0, %if.then19 ], [ 0, %if.then26 ], [ 0, %if.then44 ], [ 0, %if.end47 ], [ 0, %if.end54 ], [ %spec.select, %if.end95 ], [ 0, %lor.lhs.false82 ], [ 0, %lor.lhs.false79 ], [ 0, %lor.lhs.false74 ], [ 0, %if.end66 ]
  %data.0 = phi i8* [ null, %if.then14 ], [ null, %if.then19 ], [ null, %if.then26 ], [ %call23, %if.then44 ], [ %call23, %if.end47 ], [ %call23, %if.end54 ], [ %call23, %if.end95 ], [ %call23, %lor.lhs.false82 ], [ %call23, %lor.lhs.false79 ], [ %call23, %lor.lhs.false74 ], [ %call23, %if.end66 ]
  call void @OPENSSL_cleanse(i8* noundef nonnull %4, i64 noundef 64) #10
  call void @OPENSSL_cleanse(i8* noundef nonnull %5, i64 noundef 16) #10
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %ctx.1) #10
  call void @OPENSSL_cleanse(i8* noundef nonnull %3, i64 noundef 1024) #10
  %conv106 = zext i32 %dsize.0 to i64
  call void @CRYPTO_clear_free(i8* noundef %data.0, i64 noundef %conv106, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 410) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #12
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %4) #12
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %ret.2
}

declare i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef) local_unnamed_addr #4

declare i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef) local_unnamed_addr #4

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare i32 @RAND_bytes(i8* noundef, i32 noundef) local_unnamed_addr #4

declare i32 @EVP_BytesToKey(%struct.evp_cipher_st* noundef, %struct.evp_md_st* noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #4

declare %struct.evp_md_st* @EVP_md5() local_unnamed_addr #4

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #4

declare %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() local_unnamed_addr #4

declare i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #4

declare i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare i32 @EVP_EncryptFinal_ex(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_bio(%struct.bio_st* noundef %bp, i8* noundef %name, i8* noundef %header, i8* noundef %data, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %outl = alloca i32, align 4
  %0 = bitcast i32* %outl to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  %call = tail call %struct.evp_Encode_Ctx_st* @EVP_ENCODE_CTX_new() #10
  %cmp = icmp eq %struct.evp_Encode_Ctx_st* %call, null
  br i1 %cmp, label %if.then75, label %if.end

if.end:                                           ; preds = %entry
  tail call void @EVP_EncodeInit(%struct.evp_Encode_Ctx_st* noundef nonnull %call) #10
  %call2 = tail call i64 @strlen(i8* noundef %name) #9
  %conv = trunc i64 %call2 to i32
  %call3 = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 noundef 11) #10
  %cmp4.not = icmp eq i32 %call3, 11
  br i1 %cmp4.not, label %lor.lhs.false, label %if.then75

lor.lhs.false:                                    ; preds = %if.end
  %call6 = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef %name, i32 noundef %conv) #10
  %cmp7.not = icmp eq i32 %call6, %conv
  br i1 %cmp7.not, label %lor.lhs.false9, label %if.then75

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %call10 = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 noundef 6) #10
  %cmp11.not = icmp eq i32 %call10, 6
  br i1 %cmp11.not, label %if.end14, label %if.then75

if.end14:                                         ; preds = %lor.lhs.false9
  %call15 = tail call i64 @strlen(i8* noundef %header) #9
  %conv16 = trunc i64 %call15 to i32
  %cmp17 = icmp sgt i32 %conv16, 0
  br i1 %cmp17, label %if.then19, label %if.end29

if.then19:                                        ; preds = %if.end14
  %call20 = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef %header, i32 noundef %conv16) #10
  %cmp21.not = icmp eq i32 %call20, %conv16
  br i1 %cmp21.not, label %lor.lhs.false23, label %if.then75

lor.lhs.false23:                                  ; preds = %if.then19
  %call24 = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 noundef 1) #10
  %cmp25.not = icmp eq i32 %call24, 1
  br i1 %cmp25.not, label %if.end29, label %if.then75

if.end29:                                         ; preds = %lor.lhs.false23, %if.end14
  %call30 = tail call i8* @CRYPTO_malloc(i64 noundef 8192, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 636) #10
  %cmp31 = icmp eq i8* %call30, null
  br i1 %cmp31, label %if.then75, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end29
  %cmp35132 = icmp sgt i64 %len, 0
  br i1 %cmp35132, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond.preheader, %if.end48
  %len.addr.0135 = phi i64 [ %sub, %if.end48 ], [ %len, %while.cond.preheader ]
  %j.0134 = phi i32 [ %add50, %if.end48 ], [ 0, %while.cond.preheader ]
  %i.0133 = phi i32 [ %add, %if.end48 ], [ 0, %while.cond.preheader ]
  %1 = icmp ult i64 %len.addr.0135, 5120
  %cond = select i1 %1, i64 %len.addr.0135, i64 5120
  %conv39 = trunc i64 %cond to i32
  %idxprom = zext i32 %j.0134 to i64
  %arrayidx = getelementptr inbounds i8, i8* %data, i64 %idxprom
  %call40 = call i32 @EVP_EncodeUpdate(%struct.evp_Encode_Ctx_st* noundef nonnull %call, i8* noundef nonnull %call30, i32* noundef nonnull %outl, i8* noundef %arrayidx, i32 noundef %conv39) #10
  %tobool.not = icmp eq i32 %call40, 0
  br i1 %tobool.not, label %if.then75, label %if.end42

if.end42:                                         ; preds = %while.body
  %2 = load i32, i32* %outl, align 4, !tbaa !14
  %tobool43.not = icmp eq i32 %2, 0
  br i1 %tobool43.not, label %if.end48, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end42
  %call44 = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef nonnull %call30, i32 noundef %2) #10
  %3 = load i32, i32* %outl, align 4, !tbaa !14
  %cmp45.not = icmp eq i32 %call44, %3
  br i1 %cmp45.not, label %if.end48, label %if.then75

if.end48:                                         ; preds = %land.lhs.true, %if.end42
  %4 = phi i32 [ %call44, %land.lhs.true ], [ 0, %if.end42 ]
  %add = add nsw i32 %4, %i.0133
  %sub = sub nsw i64 %len.addr.0135, %cond
  %add50 = add nuw nsw i32 %j.0134, %conv39
  %cmp35 = icmp sgt i64 %sub, 0
  br i1 %cmp35, label %while.body, label %while.end, !llvm.loop !16

while.end:                                        ; preds = %if.end48, %while.cond.preheader
  %i.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %add, %if.end48 ]
  call void @EVP_EncodeFinal(%struct.evp_Encode_Ctx_st* noundef nonnull %call, i8* noundef nonnull %call30, i32* noundef nonnull %outl) #10
  %5 = load i32, i32* %outl, align 4, !tbaa !14
  %cmp51 = icmp sgt i32 %5, 0
  br i1 %cmp51, label %land.lhs.true53, label %if.end58

land.lhs.true53:                                  ; preds = %while.end
  %call54 = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef nonnull %call30, i32 noundef %5) #10
  %6 = load i32, i32* %outl, align 4, !tbaa !14
  %cmp55.not = icmp eq i32 %call54, %6
  br i1 %cmp55.not, label %if.end58, label %if.then75

if.end58:                                         ; preds = %land.lhs.true53, %while.end
  %call59 = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32 noundef 9) #10
  %cmp60.not = icmp eq i32 %call59, 9
  br i1 %cmp60.not, label %lor.lhs.false62, label %if.then75

lor.lhs.false62:                                  ; preds = %if.end58
  %call63 = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef %name, i32 noundef %conv) #10
  %cmp64.not = icmp eq i32 %call63, %conv
  br i1 %cmp64.not, label %lor.lhs.false66, label %if.then75

lor.lhs.false66:                                  ; preds = %lor.lhs.false62
  %call67 = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 noundef 6) #10
  %cmp68.not = icmp eq i32 %call67, 6
  br i1 %cmp68.not, label %err, label %if.then75

err:                                              ; preds = %lor.lhs.false66
  %7 = load i32, i32* %outl, align 4, !tbaa !14
  %add72 = add nsw i32 %7, %i.0.lcssa
  %cmp73 = icmp eq i32 %add72, 0
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %while.body, %land.lhs.true, %if.end29, %entry, %lor.lhs.false66, %lor.lhs.false62, %if.end58, %land.lhs.true53, %lor.lhs.false23, %if.then19, %lor.lhs.false9, %lor.lhs.false, %if.end, %err
  %reason.0127 = phi i32 [ 524295, %err ], [ 786688, %if.end29 ], [ 786688, %entry ], [ 524295, %lor.lhs.false66 ], [ 524295, %lor.lhs.false62 ], [ 524295, %if.end58 ], [ 524295, %land.lhs.true53 ], [ 524295, %lor.lhs.false23 ], [ 524295, %if.then19 ], [ 524295, %lor.lhs.false9 ], [ 524295, %lor.lhs.false ], [ 524295, %if.end ], [ 524295, %land.lhs.true ], [ 524295, %while.body ]
  %buf.0126 = phi i8* [ %call30, %err ], [ null, %if.end29 ], [ null, %entry ], [ %call30, %lor.lhs.false66 ], [ %call30, %lor.lhs.false62 ], [ %call30, %if.end58 ], [ %call30, %land.lhs.true53 ], [ null, %lor.lhs.false23 ], [ null, %if.then19 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false ], [ null, %if.end ], [ %call30, %land.lhs.true ], [ %call30, %while.body ]
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 664, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.PEM_write_bio, i64 0, i64 0)) #10
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef %reason.0127, i8* noundef null) #10
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %err
  %retval1.0128 = phi i32 [ 0, %if.then75 ], [ %add72, %err ]
  %buf.0125 = phi i8* [ %buf.0126, %if.then75 ], [ %call30, %err ]
  call void @EVP_ENCODE_CTX_free(%struct.evp_Encode_Ctx_st* noundef %call) #10
  call void @CRYPTO_clear_free(i8* noundef %buf.0125, i64 noundef 8192, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 666) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval1.0128
}

declare void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #4

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_do_header(%struct.evp_cipher_info_st* noundef %cipher, i8* noundef %data, i64* nocapture noundef %plen, i32 (i8*, i32, i32, i8*)* noundef readonly %callback, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %ilen = alloca i32, align 4
  %key = alloca [64 x i8], align 16
  %buf = alloca [1024 x i8], align 16
  %0 = load i64, i64* %plen, align 8, !tbaa !11
  %1 = bitcast i32* %ilen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #12
  %conv = trunc i64 %0 to i32
  store i32 %conv, i32* %ilen, align 4, !tbaa !14
  %2 = getelementptr inbounds [64 x i8], [64 x i8]* %key, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %2) #12
  %3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %3) #12
  %cmp = icmp sgt i64 %0, 2147483647
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 428, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.PEM_do_header, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 128, i8* noundef null) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cipher2 = getelementptr inbounds %struct.evp_cipher_info_st, %struct.evp_cipher_info_st* %cipher, i64 0, i32 0
  %4 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher2, align 8, !tbaa !17
  %cmp3 = icmp eq %struct.evp_cipher_st* %4, null
  br i1 %cmp3, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %cmp7 = icmp eq i32 (i8*, i32, i32, i8*)* %callback, null
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  %call = call i32 @PEM_def_callback(i8* noundef nonnull %3, i32 noundef 1024, i32 noundef 0, i8* noundef %u) #11
  br label %if.end12

if.else:                                          ; preds = %if.end6
  %call11 = call i32 %callback(i8* noundef nonnull %3, i32 noundef 1024, i32 noundef 0, i8* noundef %u) #10
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9
  %keylen.0 = phi i32 [ %call, %if.then9 ], [ %call11, %if.else ]
  %cmp13 = icmp slt i32 %keylen.0, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 440, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.PEM_do_header, i64 0, i64 0)) #10
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 104, i8* noundef null) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %5 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher2, align 8, !tbaa !17
  %call18 = call %struct.evp_md_st* @EVP_md5() #10
  %arrayidx = getelementptr inbounds %struct.evp_cipher_info_st, %struct.evp_cipher_info_st* %cipher, i64 0, i32 1, i64 0
  %call21 = call i32 @EVP_BytesToKey(%struct.evp_cipher_st* noundef %5, %struct.evp_md_st* noundef %call18, i8* noundef nonnull %arrayidx, i8* noundef nonnull %3, i32 noundef %keylen.0, i32 noundef 1, i8* noundef nonnull %2, i8* noundef null) #10
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %cleanup, label %if.end23

if.end23:                                         ; preds = %if.end16
  %call24 = call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #10
  %cmp25 = icmp eq %struct.evp_cipher_ctx_st* %call24, null
  br i1 %cmp25, label %cleanup, label %if.end28

if.end28:                                         ; preds = %if.end23
  %6 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher2, align 8, !tbaa !17
  %call33 = call i32 @EVP_DecryptInit_ex(%struct.evp_cipher_ctx_st* noundef nonnull %call24, %struct.evp_cipher_st* noundef %6, %struct.engine_st* noundef null, i8* noundef nonnull %2, i8* noundef nonnull %arrayidx) #10
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.else47, label %if.then35

if.then35:                                        ; preds = %if.end28
  %call36 = call i32 @EVP_DecryptUpdate(%struct.evp_cipher_ctx_st* noundef nonnull %call24, i8* noundef %data, i32* noundef nonnull %ilen, i8* noundef %data, i32 noundef %conv) #10
  %phi.cmp = icmp eq i32 %call36, 0
  br i1 %phi.cmp, label %if.else47, label %if.end43

if.end43:                                         ; preds = %if.then35
  %7 = load i32, i32* %ilen, align 4, !tbaa !14
  %conv40 = sext i32 %7 to i64
  store i64 %conv40, i64* %plen, align 8, !tbaa !11
  %arrayidx41 = getelementptr inbounds i8, i8* %data, i64 %conv40
  %call42 = call i32 @EVP_DecryptFinal_ex(%struct.evp_cipher_ctx_st* noundef nonnull %call24, i8* noundef %arrayidx41, i32* noundef nonnull %ilen) #10
  %tobool44.not = icmp eq i32 %call42, 0
  br i1 %tobool44.not, label %if.else47, label %if.then45

if.then45:                                        ; preds = %if.end43
  %8 = load i32, i32* %ilen, align 4, !tbaa !14
  %conv46 = sext i32 %8 to i64
  %9 = load i64, i64* %plen, align 8, !tbaa !11
  %add = add nsw i64 %9, %conv46
  store i64 %add, i64* %plen, align 8, !tbaa !11
  br label %if.end48

if.else47:                                        ; preds = %if.end28, %if.then35, %if.end43
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 467, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.PEM_do_header, i64 0, i64 0)) #10
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 101, i8* noundef null) #10
  br label %if.end48

if.end48:                                         ; preds = %if.else47, %if.then45
  %ok.182 = phi i32 [ 0, %if.else47 ], [ %call42, %if.then45 ]
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef nonnull %call24) #10
  call void @OPENSSL_cleanse(i8* noundef nonnull %3, i64 noundef 1024) #10
  call void @OPENSSL_cleanse(i8* noundef nonnull %2, i64 noundef 64) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end16, %if.end, %if.end48, %if.then15, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then15 ], [ %ok.182, %if.end48 ], [ 1, %if.end ], [ 0, %if.end16 ], [ 0, %if.end23 ]
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #12
  ret i32 %retval.0
}

declare i32 @EVP_DecryptInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #4

declare i32 @EVP_DecryptUpdate(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare i32 @EVP_DecryptFinal_ex(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_get_EVP_CIPHER_INFO(i8* noundef %header, %struct.evp_cipher_info_st* noundef %cipher) local_unnamed_addr #0 {
entry:
  %header.addr = alloca i8*, align 8
  %cipher1 = getelementptr inbounds %struct.evp_cipher_info_st, %struct.evp_cipher_info_st* %cipher, i64 0, i32 0
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** %cipher1, align 8, !tbaa !17
  %arraydecay = getelementptr inbounds %struct.evp_cipher_info_st, %struct.evp_cipher_info_st* %cipher, i64 0, i32 1, i64 0
  %call = tail call i8* @memset(i8* noundef nonnull %arraydecay, i32 noundef 0, i64 noundef 16) #10
  %cmp = icmp eq i8* %header, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, i8* %header, align 1, !tbaa !4
  switch i8 %0, label %if.end [
    i8 0, label %cleanup
    i8 10, label %cleanup
  ]

if.end:                                           ; preds = %lor.lhs.false
  %call8 = tail call i32 @strncmp(i8* noundef nonnull %header, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @PEM_get_EVP_CIPHER_INFO.ProcType, i64 0, i64 0), i64 noundef 10) #9
  %cmp9.not = icmp eq i32 %call8, 0
  br i1 %cmp9.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 502, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.PEM_get_EVP_CIPHER_INFO, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 107, i8* noundef null) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %add.ptr = getelementptr inbounds i8, i8* %header, i64 10
  %call13 = tail call i64 @strspn(i8* noundef nonnull %add.ptr, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)) #9
  %add.ptr14 = getelementptr inbounds i8, i8* %add.ptr, i64 %call13
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr14, i64 1
  %1 = load i8, i8* %add.ptr14, align 1, !tbaa !4
  %cmp16.not = icmp eq i8 %1, 52
  br i1 %cmp16.not, label %lor.lhs.false18, label %cleanup

lor.lhs.false18:                                  ; preds = %if.end12
  %incdec.ptr19 = getelementptr inbounds i8, i8* %incdec.ptr, i64 1
  %2 = load i8, i8* %incdec.ptr, align 1, !tbaa !4
  %cmp21.not = icmp eq i8 %2, 44
  br i1 %cmp21.not, label %if.end24, label %cleanup

if.end24:                                         ; preds = %lor.lhs.false18
  %call25 = tail call i64 @strspn(i8* noundef nonnull %incdec.ptr19, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)) #9
  %add.ptr26 = getelementptr inbounds i8, i8* %incdec.ptr19, i64 %call25
  %call27 = tail call i32 @strncmp(i8* noundef nonnull %add.ptr26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 noundef 9) #9
  %cmp28.not = icmp eq i32 %call27, 0
  br i1 %cmp28.not, label %lor.lhs.false30, label %if.then36

lor.lhs.false30:                                  ; preds = %if.end24
  %add.ptr31 = getelementptr inbounds i8, i8* %add.ptr26, i64 10
  %add.ptr32 = getelementptr inbounds i8, i8* %add.ptr31, i64 -1
  %call33 = tail call i64 @strspn(i8* noundef nonnull %add.ptr32, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)) #9
  %cmp34 = icmp eq i64 %call33, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %lor.lhs.false30, %if.end24
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 515, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.PEM_get_EVP_CIPHER_INFO, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 106, i8* noundef null) #10
  br label %cleanup

if.end37:                                         ; preds = %lor.lhs.false30
  %add.ptr38 = getelementptr inbounds i8, i8* %add.ptr26, i64 9
  %call39 = tail call i64 @strspn(i8* noundef nonnull %add.ptr38, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #9
  %add.ptr40 = getelementptr inbounds i8, i8* %add.ptr38, i64 %call39
  %incdec.ptr41 = getelementptr inbounds i8, i8* %add.ptr40, i64 1
  %3 = load i8, i8* %add.ptr40, align 1, !tbaa !4
  %cmp43.not = icmp eq i8 %3, 10
  br i1 %cmp43.not, label %if.end46, label %if.then45

if.then45:                                        ; preds = %if.end37
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 521, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.PEM_get_EVP_CIPHER_INFO, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 112, i8* noundef null) #10
  br label %cleanup

if.end46:                                         ; preds = %if.end37
  %call47 = tail call i32 @strncmp(i8* noundef nonnull %incdec.ptr41, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @PEM_get_EVP_CIPHER_INFO.DEKInfo, i64 0, i64 0), i64 noundef 9) #9
  %cmp48.not = icmp eq i32 %call47, 0
  br i1 %cmp48.not, label %if.end51, label %if.then50

if.then50:                                        ; preds = %if.end46
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 530, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.PEM_get_EVP_CIPHER_INFO, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 105, i8* noundef null) #10
  br label %cleanup

if.end51:                                         ; preds = %if.end46
  %add.ptr52 = getelementptr inbounds i8, i8* %incdec.ptr41, i64 9
  %call53 = tail call i64 @strspn(i8* noundef nonnull %add.ptr52, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)) #9
  %add.ptr54 = getelementptr inbounds i8, i8* %add.ptr52, i64 %call53
  %call55 = tail call i64 @strcspn(i8* noundef nonnull %add.ptr54, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0)) #9
  %add.ptr56 = getelementptr inbounds i8, i8* %add.ptr54, i64 %call55
  %4 = load i8, i8* %add.ptr56, align 1, !tbaa !4
  store i8 0, i8* %add.ptr56, align 1, !tbaa !4
  %call57 = tail call %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef nonnull %add.ptr54) #10
  store %struct.evp_cipher_st* %call57, %struct.evp_cipher_st** %cipher1, align 8, !tbaa !17
  store i8 %4, i8* %add.ptr56, align 1, !tbaa !4
  %call59 = tail call i64 @strspn(i8* noundef nonnull %add.ptr56, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)) #9
  %add.ptr60 = getelementptr inbounds i8, i8* %add.ptr56, i64 %call59
  store i8* %add.ptr60, i8** %header.addr, align 8, !tbaa !9
  %cmp61 = icmp eq %struct.evp_cipher_st* %call57, null
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end51
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 549, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.PEM_get_EVP_CIPHER_INFO, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 114, i8* noundef null) #10
  br label %cleanup

if.end64:                                         ; preds = %if.end51
  %call65 = tail call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef nonnull %call57) #10
  %cmp66 = icmp sgt i32 %call65, 0
  br i1 %cmp66, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end64
  %incdec.ptr68 = getelementptr inbounds i8, i8* %add.ptr60, i64 1
  store i8* %incdec.ptr68, i8** %header.addr, align 8, !tbaa !9
  %5 = load i8, i8* %add.ptr60, align 1, !tbaa !4
  %cmp70.not = icmp eq i8 %5, 44
  br i1 %cmp70.not, label %if.end81, label %if.then72

if.then72:                                        ; preds = %land.lhs.true
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 554, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.PEM_get_EVP_CIPHER_INFO, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 129, i8* noundef null) #10
  br label %cleanup

if.else:                                          ; preds = %if.end64
  %cmp73 = icmp eq i32 %call65, 0
  br i1 %cmp73, label %land.lhs.true75, label %if.end81

land.lhs.true75:                                  ; preds = %if.else
  %6 = load i8, i8* %add.ptr60, align 1, !tbaa !4
  %cmp77 = icmp eq i8 %6, 44
  br i1 %cmp77, label %if.then79, label %if.end81

if.then79:                                        ; preds = %land.lhs.true75
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 557, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.PEM_get_EVP_CIPHER_INFO, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 130, i8* noundef null) #10
  br label %cleanup

if.end81:                                         ; preds = %land.lhs.true, %if.else, %land.lhs.true75
  %call84 = tail call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef nonnull %call57) #10
  %call85 = call fastcc i32 @load_iv(i8** noundef nonnull %header.addr, i8* noundef nonnull %arraydecay, i32 noundef %call84) #11
  %tobool.not = icmp ne i32 %call85, 0
  %. = zext i1 %tobool.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end81, %if.end12, %lor.lhs.false18, %entry, %lor.lhs.false, %lor.lhs.false, %if.then79, %if.then72, %if.then63, %if.then50, %if.then45, %if.then36, %if.then11
  %retval.0 = phi i32 [ 0, %if.then11 ], [ 0, %if.then36 ], [ 0, %if.then45 ], [ 0, %if.then50 ], [ 0, %if.then63 ], [ 0, %if.then72 ], [ 0, %if.then79 ], [ 1, %lor.lhs.false ], [ 1, %lor.lhs.false ], [ 1, %entry ], [ 0, %lor.lhs.false18 ], [ 0, %if.end12 ], [ %., %if.end81 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @load_iv(i8** nocapture noundef %fromp, i8* nocapture noundef %to, i32 noundef %num) unnamed_addr #0 {
entry:
  %0 = load i8*, i8** %fromp, align 8, !tbaa !9
  %cmp32 = icmp sgt i32 %num, 0
  br i1 %cmp32, label %iter.check, label %for.end12

iter.check:                                       ; preds = %entry
  %wide.trip.count = zext i32 %num to i64
  %min.iters.check = icmp ult i32 %num, 8
  br i1 %min.iters.check, label %for.body.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check39 = icmp ult i32 %num, 32
  br i1 %min.iters.check39, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %wide.trip.count, 4294967264
  %1 = add nsw i64 %n.vec, -32
  %2 = lshr exact i64 %1, 5
  %3 = add nuw nsw i64 %2, 1
  %xtraiter = and i64 %3, 7
  %4 = icmp ult i64 %1, 224
  br i1 %4, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %3, 1152921504606846968
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.7, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.7, %vector.body ]
  %5 = getelementptr inbounds i8, i8* %to, i64 %index
  %6 = bitcast i8* %5 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %6, align 1, !tbaa !4
  %7 = getelementptr inbounds i8, i8* %5, i64 16
  %8 = bitcast i8* %7 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %8, align 1, !tbaa !4
  %index.next = or i64 %index, 32
  %9 = getelementptr inbounds i8, i8* %to, i64 %index.next
  %10 = bitcast i8* %9 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %10, align 1, !tbaa !4
  %11 = getelementptr inbounds i8, i8* %9, i64 16
  %12 = bitcast i8* %11 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %12, align 1, !tbaa !4
  %index.next.1 = or i64 %index, 64
  %13 = getelementptr inbounds i8, i8* %to, i64 %index.next.1
  %14 = bitcast i8* %13 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %14, align 1, !tbaa !4
  %15 = getelementptr inbounds i8, i8* %13, i64 16
  %16 = bitcast i8* %15 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %16, align 1, !tbaa !4
  %index.next.2 = or i64 %index, 96
  %17 = getelementptr inbounds i8, i8* %to, i64 %index.next.2
  %18 = bitcast i8* %17 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %18, align 1, !tbaa !4
  %19 = getelementptr inbounds i8, i8* %17, i64 16
  %20 = bitcast i8* %19 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %20, align 1, !tbaa !4
  %index.next.3 = or i64 %index, 128
  %21 = getelementptr inbounds i8, i8* %to, i64 %index.next.3
  %22 = bitcast i8* %21 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %22, align 1, !tbaa !4
  %23 = getelementptr inbounds i8, i8* %21, i64 16
  %24 = bitcast i8* %23 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %24, align 1, !tbaa !4
  %index.next.4 = or i64 %index, 160
  %25 = getelementptr inbounds i8, i8* %to, i64 %index.next.4
  %26 = bitcast i8* %25 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %26, align 1, !tbaa !4
  %27 = getelementptr inbounds i8, i8* %25, i64 16
  %28 = bitcast i8* %27 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %28, align 1, !tbaa !4
  %index.next.5 = or i64 %index, 192
  %29 = getelementptr inbounds i8, i8* %to, i64 %index.next.5
  %30 = bitcast i8* %29 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %30, align 1, !tbaa !4
  %31 = getelementptr inbounds i8, i8* %29, i64 16
  %32 = bitcast i8* %31 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %32, align 1, !tbaa !4
  %index.next.6 = or i64 %index, 224
  %33 = getelementptr inbounds i8, i8* %to, i64 %index.next.6
  %34 = bitcast i8* %33 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %34, align 1, !tbaa !4
  %35 = getelementptr inbounds i8, i8* %33, i64 16
  %36 = bitcast i8* %35 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %36, align 1, !tbaa !4
  %index.next.7 = add nuw i64 %index, 256
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !19

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.7, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %37 = getelementptr inbounds i8, i8* %to, i64 %index.epil
  %38 = bitcast i8* %37 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %38, align 1, !tbaa !4
  %39 = getelementptr inbounds i8, i8* %37, i64 16
  %40 = bitcast i8* %39 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %40, align 1, !tbaa !4
  %index.next.epil = add nuw i64 %index.epil, 32
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !21

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.end, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %n.vec.remaining = and i64 %wide.trip.count, 24
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check, label %for.body.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec41 = and i64 %wide.trip.count, 4294967288
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next44, %vec.epilog.vector.body ]
  %41 = getelementptr inbounds i8, i8* %to, i64 %index43
  %42 = bitcast i8* %41 to <8 x i8>*
  store <8 x i8> zeroinitializer, <8 x i8>* %42, align 1, !tbaa !4
  %index.next44 = add nuw i64 %index43, 8
  %43 = icmp eq i64 %index.next44, %n.vec41
  br i1 %43, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n42 = icmp eq i64 %n.vec41, %wide.trip.count
  br i1 %cmp.n42, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec41, %vec.epilog.middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader ]
  %arrayidx = getelementptr inbounds i8, i8* %to, i64 %indvars.iv
  store i8 0, i8* %arrayidx, align 1, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !25

for.end:                                          ; preds = %for.body, %vec.epilog.middle.block, %middle.block
  br i1 %cmp32, label %for.body3.preheader, label %for.end12

for.body3.preheader:                              ; preds = %for.end
  %mul = shl nuw i32 %num, 1
  %smax = call i32 @llvm.smax.i32(i32 %mul, i32 1)
  br label %for.body3

for.body3:                                        ; preds = %for.body3.preheader, %if.end
  %from.036 = phi i8* [ %incdec.ptr, %if.end ], [ %0, %for.body3.preheader ]
  %i.135 = phi i32 [ %inc11, %if.end ], [ 0, %for.body3.preheader ]
  %44 = load i8, i8* %from.036, align 1, !tbaa !4
  %call = tail call i32 @OPENSSL_hexchar2int(i8 noundef zeroext %44) #10
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 579, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.load_iv, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 103, i8* noundef null) #10
  br label %cleanup

if.end:                                           ; preds = %for.body3
  %incdec.ptr = getelementptr inbounds i8, i8* %from.036, i64 1
  %and = shl i32 %i.135, 2
  %45 = and i32 %and, 4
  %mul5 = xor i32 %45, 4
  %shl = shl i32 %call, %mul5
  %div = lshr i32 %i.135, 1
  %idxprom6 = zext i32 %div to i64
  %arrayidx7 = getelementptr inbounds i8, i8* %to, i64 %idxprom6
  %46 = load i8, i8* %arrayidx7, align 1, !tbaa !4
  %47 = trunc i32 %shl to i8
  %conv9 = or i8 %46, %47
  store i8 %conv9, i8* %arrayidx7, align 1, !tbaa !4
  %inc11 = add nuw nsw i32 %i.135, 1
  %exitcond38.not = icmp eq i32 %inc11, %smax
  br i1 %exitcond38.not, label %for.end12, label %for.body3, !llvm.loop !26

for.end12:                                        ; preds = %if.end, %entry, %for.end
  %from.0.lcssa = phi i8* [ %0, %for.end ], [ %0, %entry ], [ %incdec.ptr, %if.end ]
  store i8* %from.0.lcssa, i8** %fromp, align 8, !tbaa !9
  br label %cleanup

cleanup:                                          ; preds = %for.end12, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %for.end12 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write(%struct._IO_FILE* noundef %fp, i8* noundef %name, i8* noundef %header, i8* noundef %data, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_file() #10
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #10
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 598, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.PEM_write, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 524295, i8* noundef null) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast %struct._IO_FILE* %fp to i8*
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 106, i64 noundef 0, i8* noundef %0) #10
  %call3 = tail call i32 @PEM_write_bio(%struct.bio_st* noundef nonnull %call1, i8* noundef %name, i8* noundef %header, i8* noundef %data, i64 noundef %len) #11
  %call4 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

declare %struct.evp_Encode_Ctx_st* @EVP_ENCODE_CTX_new() local_unnamed_addr #4

declare void @EVP_EncodeInit(%struct.evp_Encode_Ctx_st* noundef) local_unnamed_addr #4

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare i32 @EVP_EncodeUpdate(%struct.evp_Encode_Ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare void @EVP_EncodeFinal(%struct.evp_Encode_Ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #4

declare void @EVP_ENCODE_CTX_free(%struct.evp_Encode_Ctx_st* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_read(%struct._IO_FILE* noundef %fp, i8** nocapture noundef writeonly %name, i8** nocapture noundef %header, i8** nocapture noundef %data, i64* nocapture noundef writeonly %len) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_file() #10
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #10
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 678, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.PEM_read, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 524295, i8* noundef null) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast %struct._IO_FILE* %fp to i8*
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 106, i64 noundef 0, i8* noundef %0) #10
  %call3 = tail call i32 @PEM_read_bio(%struct.bio_st* noundef nonnull %call1, i8** noundef %name, i8** noundef %header, i8** noundef %data, i64* noundef %len) #11
  %call4 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_read_bio(%struct.bio_st* noundef %bp, i8** nocapture noundef writeonly %name, i8** nocapture noundef %header, i8** nocapture noundef %data, i64* nocapture noundef writeonly %len) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @PEM_read_bio_ex(%struct.bio_st* noundef %bp, i8** noundef %name, i8** noundef %header, i8** noundef %data, i64* noundef %len, i32 noundef 2) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_read_bio_ex(%struct.bio_st* noundef %bp, i8** nocapture noundef writeonly %name_out, i8** nocapture noundef %header, i8** nocapture noundef %data, i64* nocapture noundef writeonly %len_out, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %headerB = alloca %struct.bio_st*, align 8
  %dataB = alloca %struct.bio_st*, align 8
  %name = alloca i8*, align 8
  %len = alloca i32, align 4
  %taillen = alloca i32, align 4
  %buf_mem = alloca %struct.buf_mem_st*, align 8
  %0 = bitcast %struct.bio_st** %headerB to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store %struct.bio_st* null, %struct.bio_st** %headerB, align 8, !tbaa !9
  %1 = bitcast %struct.bio_st** %dataB to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #12
  %2 = bitcast i8** %name to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #12
  store i8* null, i8** %name, align 8, !tbaa !9
  %3 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #12
  %4 = bitcast i32* %taillen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #12
  %5 = bitcast %struct.buf_mem_st** %buf_mem to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #12
  store i64 0, i64* %len_out, align 8, !tbaa !11
  store i8* null, i8** %header, align 8, !tbaa !9
  store i8* null, i8** %name_out, align 8, !tbaa !9
  store i8* null, i8** %data, align 8, !tbaa !9
  %6 = and i32 %flags, 6
  %.not = icmp eq i32 %6, 6
  br i1 %.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 933, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.PEM_read_bio_ex, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 524550, i8* noundef null) #10
  br label %end

if.end:                                           ; preds = %entry
  %and3 = and i32 %flags, 1
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %call = tail call %struct.bio_method_st* @BIO_s_secmem() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call5 = tail call %struct.bio_method_st* @BIO_s_mem() #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.bio_method_st* [ %call, %cond.true ], [ %call5, %cond.false ]
  %call6 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %cond) #10
  store %struct.bio_st* %call6, %struct.bio_st** %headerB, align 8, !tbaa !9
  %call7 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %cond) #10
  store %struct.bio_st* %call7, %struct.bio_st** %dataB, align 8, !tbaa !9
  %cmp = icmp eq %struct.bio_st* %call6, null
  %cmp8 = icmp eq %struct.bio_st* %call7, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp8
  br i1 %or.cond, label %if.then9, label %if.end10

if.then9:                                         ; preds = %cond.end
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 941, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.PEM_read_bio_ex, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 786688, i8* noundef null) #10
  br label %end

if.end10:                                         ; preds = %cond.end
  %call11 = call fastcc i32 @get_name(%struct.bio_st* noundef %bp, i8** noundef nonnull %name, i32 noundef %flags) #11
  %tobool12.not = icmp eq i32 %call11, 0
  %.pre = load i8*, i8** %name, align 8, !tbaa !9
  br i1 %tobool12.not, label %end, label %if.end14

if.end14:                                         ; preds = %if.end10
  %call15 = call fastcc i32 @get_header_and_data(%struct.bio_st* noundef %bp, %struct.bio_st** noundef nonnull %headerB, %struct.bio_st** noundef nonnull %dataB, i8* noundef %.pre, i32 noundef %flags) #11
  %tobool16.not = icmp eq i32 %call15, 0
  %.pre96 = load %struct.bio_st*, %struct.bio_st** %dataB, align 8, !tbaa !9
  br i1 %tobool16.not, label %end, label %if.end18

if.end18:                                         ; preds = %if.end14
  %call19 = call i64 @BIO_ctrl(%struct.bio_st* noundef %.pre96, i32 noundef 115, i64 noundef 0, i8* noundef nonnull %5) #10
  %7 = load %struct.buf_mem_st*, %struct.buf_mem_st** %buf_mem, align 8, !tbaa !9
  %length = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %7, i64 0, i32 0
  %8 = load i64, i64* %length, align 8, !tbaa !27
  %conv = trunc i64 %8 to i32
  store i32 %conv, i32* %len, align 4, !tbaa !14
  %cmp20 = icmp eq i32 %conv, 0
  br i1 %cmp20, label %end, label %if.end23

if.end23:                                         ; preds = %if.end18
  %call24 = call %struct.evp_Encode_Ctx_st* @EVP_ENCODE_CTX_new() #10
  %cmp25 = icmp eq %struct.evp_Encode_Ctx_st* %call24, null
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end23
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 959, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.PEM_read_bio_ex, i64 0, i64 0)) #10
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 786688, i8* noundef null) #10
  br label %end

if.end28:                                         ; preds = %if.end23
  call void @EVP_DecodeInit(%struct.evp_Encode_Ctx_st* noundef nonnull %call24) #10
  %9 = load %struct.buf_mem_st*, %struct.buf_mem_st** %buf_mem, align 8, !tbaa !9
  %data29 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %9, i64 0, i32 1
  %10 = load i8*, i8** %data29, align 8, !tbaa !29
  %call31 = call i32 @EVP_DecodeUpdate(%struct.evp_Encode_Ctx_st* noundef nonnull %call24, i8* noundef %10, i32* noundef nonnull %len, i8* noundef %10, i32 noundef %conv) #10
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then39, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %if.end28
  %11 = load %struct.buf_mem_st*, %struct.buf_mem_st** %buf_mem, align 8, !tbaa !9
  %data35 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %11, i64 0, i32 1
  %12 = load i8*, i8** %data35, align 8, !tbaa !29
  %13 = load i32, i32* %len, align 4, !tbaa !14
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %idxprom
  %call36 = call i32 @EVP_DecodeFinal(%struct.evp_Encode_Ctx_st* noundef nonnull %call24, i8* noundef %arrayidx, i32* noundef nonnull %taillen) #10
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %lor.lhs.false34, %if.end28
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 968, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.PEM_read_bio_ex, i64 0, i64 0)) #10
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 100, i8* noundef null) #10
  br label %end

if.end40:                                         ; preds = %lor.lhs.false34
  %14 = load i32, i32* %taillen, align 4, !tbaa !14
  %15 = load i32, i32* %len, align 4, !tbaa !14
  %add = add nsw i32 %15, %14
  store i32 %add, i32* %len, align 4, !tbaa !14
  %conv41 = sext i32 %add to i64
  %16 = load %struct.buf_mem_st*, %struct.buf_mem_st** %buf_mem, align 8, !tbaa !9
  %length42 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %16, i64 0, i32 0
  store i64 %conv41, i64* %length42, align 8, !tbaa !27
  %17 = load %struct.bio_st*, %struct.bio_st** %headerB, align 8, !tbaa !9
  %call43 = call i64 @BIO_ctrl(%struct.bio_st* noundef %17, i32 noundef 3, i64 noundef 0, i8* noundef null) #10
  %conv44 = trunc i64 %call43 to i32
  %add45 = add nsw i32 %conv44, 1
  %call46 = call fastcc i8* @pem_malloc(i32 noundef %add45, i32 noundef %flags) #11
  store i8* %call46, i8** %header, align 8, !tbaa !9
  %18 = load i32, i32* %len, align 4, !tbaa !14
  %call47 = call fastcc i8* @pem_malloc(i32 noundef %18, i32 noundef %flags) #11
  store i8* %call47, i8** %data, align 8, !tbaa !9
  %19 = load i8*, i8** %header, align 8, !tbaa !9
  %cmp48 = icmp eq i8* %19, null
  %cmp51 = icmp eq i8* %call47, null
  %or.cond95 = select i1 %cmp48, i1 true, i1 %cmp51
  br i1 %or.cond95, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end40
  call fastcc void @pem_free(i8* noundef %19, i32 noundef %flags, i64 noundef 0) #11
  %20 = load i8*, i8** %data, align 8, !tbaa !9
  call fastcc void @pem_free(i8* noundef %20, i32 noundef %flags, i64 noundef 0) #11
  br label %end

if.end54:                                         ; preds = %if.end40
  %call55 = call i32 @BIO_read(%struct.bio_st* noundef %17, i8* noundef nonnull %19, i32 noundef %conv44) #10
  %21 = load i8*, i8** %header, align 8, !tbaa !9
  %sext = shl i64 %call43, 32
  %idxprom56 = ashr exact i64 %sext, 32
  %arrayidx57 = getelementptr inbounds i8, i8* %21, i64 %idxprom56
  store i8 0, i8* %arrayidx57, align 1, !tbaa !4
  %22 = load i8*, i8** %data, align 8, !tbaa !9
  %23 = load i32, i32* %len, align 4, !tbaa !14
  %call58 = call i32 @BIO_read(%struct.bio_st* noundef %.pre96, i8* noundef %22, i32 noundef %23) #10
  %24 = load i32, i32* %len, align 4, !tbaa !14
  %conv59 = sext i32 %24 to i64
  store i64 %conv59, i64* %len_out, align 8, !tbaa !11
  store i8* %.pre, i8** %name_out, align 8, !tbaa !9
  store i8* null, i8** %name, align 8, !tbaa !9
  br label %end

end:                                              ; preds = %if.end14, %if.end10, %if.end18, %if.end54, %if.then53, %if.then39, %if.then27, %if.then9, %if.then
  %25 = phi %struct.bio_st* [ null, %if.then ], [ %call7, %if.then9 ], [ %.pre96, %if.end18 ], [ %.pre96, %if.then27 ], [ %.pre96, %if.then39 ], [ %.pre96, %if.then53 ], [ %.pre96, %if.end54 ], [ %call7, %if.end10 ], [ %.pre96, %if.end14 ]
  %26 = phi i8* [ null, %if.then ], [ null, %if.then9 ], [ %.pre, %if.end18 ], [ %.pre, %if.then27 ], [ %.pre, %if.then39 ], [ %.pre, %if.then53 ], [ null, %if.end54 ], [ %.pre, %if.end10 ], [ %.pre, %if.end14 ]
  %ctx.0 = phi %struct.evp_Encode_Ctx_st* [ null, %if.then ], [ null, %if.then9 ], [ null, %if.end18 ], [ null, %if.then27 ], [ %call24, %if.then39 ], [ %call24, %if.then53 ], [ %call24, %if.end54 ], [ null, %if.end10 ], [ null, %if.end14 ]
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.then9 ], [ 0, %if.end18 ], [ 0, %if.then27 ], [ 0, %if.then39 ], [ 0, %if.then53 ], [ 1, %if.end54 ], [ 0, %if.end10 ], [ 0, %if.end14 ]
  call void @EVP_ENCODE_CTX_free(%struct.evp_Encode_Ctx_st* noundef %ctx.0) #10
  call fastcc void @pem_free(i8* noundef %26, i32 noundef %flags, i64 noundef 0) #11
  %27 = load %struct.bio_st*, %struct.bio_st** %headerB, align 8, !tbaa !9
  %call60 = call i32 @BIO_free(%struct.bio_st* noundef %27) #10
  %call61 = call i32 @BIO_free(%struct.bio_st* noundef %25) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %ret.0
}

declare %struct.bio_method_st* @BIO_s_secmem() local_unnamed_addr #4

declare %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @get_name(%struct.bio_st* noundef %bp, i8** nocapture noundef writeonly %name, i32 noundef %flags) unnamed_addr #0 {
entry:
  %call = tail call fastcc i8* @pem_malloc(i32 noundef 256, i32 noundef %flags) #11
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %do.body.preheader

do.body.preheader:                                ; preds = %entry
  %call147 = tail call i32 @BIO_gets(%struct.bio_st* noundef %bp, i8* noundef nonnull %call, i32 noundef 255) #10
  %cmp248 = icmp slt i32 %call147, 1
  br i1 %cmp248, label %if.then3, label %if.end4.lr.ph

if.end4.lr.ph:                                    ; preds = %do.body.preheader
  %and = and i32 %flags, -5
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 -6
  br label %if.end4

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 755, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.get_name, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 786688, i8* noundef null) #10
  br label %cleanup

if.then3:                                         ; preds = %do.body.backedge, %do.body.preheader
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 763, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.get_name, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 108, i8* noundef null) #10
  br label %err

if.end4:                                          ; preds = %if.end4.lr.ph, %do.body.backedge
  %call150 = phi i32 [ %call147, %if.end4.lr.ph ], [ %call1, %do.body.backedge ]
  %first_call.049 = phi i32 [ 1, %if.end4.lr.ph ], [ 0, %do.body.backedge ]
  %call5 = tail call fastcc i32 @sanitize_line(i8* noundef nonnull %call, i32 noundef %call150, i32 noundef %and, i32 noundef %first_call.049) #11
  %call6 = tail call i32 @strncmp(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i64 noundef 11) #9
  %cmp7 = icmp ne i32 %call6, 0
  %cmp8 = icmp slt i32 %call5, 6
  %or.cond = select i1 %cmp7, i1 true, i1 %cmp8
  br i1 %or.cond, label %do.body.backedge, label %lor.rhs

lor.rhs:                                          ; preds = %if.end4
  %idx.ext46 = zext i32 %call5 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext46
  %call10 = tail call i32 @strncmp(i8* noundef nonnull %add.ptr9, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i64 noundef 6) #9
  %cmp11.not = icmp eq i32 %call10, 0
  br i1 %cmp11.not, label %do.end, label %do.body.backedge

do.body.backedge:                                 ; preds = %lor.rhs, %if.end4
  %call1 = tail call i32 @BIO_gets(%struct.bio_st* noundef %bp, i8* noundef nonnull %call, i32 noundef 255) #10
  %cmp2 = icmp slt i32 %call1, 1
  br i1 %cmp2, label %if.then3, label %if.end4, !llvm.loop !30

do.end:                                           ; preds = %lor.rhs
  %sub = add nsw i32 %call5, -6
  %0 = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, i8* %call, i64 %0
  store i8 0, i8* %arrayidx, align 1, !tbaa !4
  %add = add nsw i32 %call5, -16
  %call14 = tail call fastcc i8* @pem_malloc(i32 noundef %add, i32 noundef %flags) #11
  store i8* %call14, i8** %name, align 8, !tbaa !9
  %cmp15 = icmp eq i8* %call14, null
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.end
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 779, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.get_name, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 786688, i8* noundef null) #10
  br label %err

if.end17:                                         ; preds = %do.end
  %add.ptr18 = getelementptr inbounds i8, i8* %call, i64 11
  %conv = sext i32 %add to i64
  %call19 = tail call i8* @memcpy(i8* noundef nonnull %call14, i8* noundef nonnull %add.ptr18, i64 noundef %conv) #10
  br label %err

err:                                              ; preds = %if.end17, %if.then16, %if.then3
  %ret.0 = phi i32 [ 0, %if.then3 ], [ 0, %if.then16 ], [ 1, %if.end17 ]
  tail call fastcc void @pem_free(i8* noundef nonnull %call, i32 noundef %flags, i64 noundef 256) #11
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.0, %err ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @get_header_and_data(%struct.bio_st* noundef %bp, %struct.bio_st** nocapture noundef %header, %struct.bio_st** nocapture noundef %data, i8* noundef readonly %name, i32 noundef %flags) unnamed_addr #0 {
entry:
  %0 = load %struct.bio_st*, %struct.bio_st** %header, align 8, !tbaa !9
  %call = tail call fastcc i8* @pem_malloc(i32 noundef 256, i32 noundef %flags) #11
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call1140 = tail call i32 @BIO_gets(%struct.bio_st* noundef %bp, i8* noundef nonnull %call, i32 noundef 255) #10
  %cmp2141 = icmp slt i32 %call1140, 1
  br i1 %cmp2141, label %if.then3, label %if.end4.lr.ph

if.end4.lr.ph:                                    ; preds = %for.cond.preheader
  %arrayidx = getelementptr inbounds i8, i8* %call, i64 253
  br label %if.end4

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 823, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.get_header_and_data, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 786688, i8* noundef null) #10
  br label %cleanup

if.then3:                                         ; preds = %for.inc, %for.cond.preheader
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 831, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.get_header_and_data, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 102, i8* noundef null) #10
  br label %err

if.end4:                                          ; preds = %if.end4.lr.ph, %for.inc
  %call1146 = phi i32 [ %call1140, %if.end4.lr.ph ], [ %call1, %for.inc ]
  %got_header.0145 = phi i32 [ 0, %if.end4.lr.ph ], [ %got_header.2, %for.inc ]
  %partial_line_read.0144 = phi i32 [ 0, %if.end4.lr.ph ], [ %land.ext, %for.inc ]
  %end.0143 = phi i32 [ 0, %if.end4.lr.ph ], [ %end.1, %for.inc ]
  %tmp.0142 = phi %struct.bio_st* [ %0, %if.end4.lr.ph ], [ %tmp.1, %for.inc ]
  %cmp5 = icmp eq i32 %call1146, 254
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end4
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !4
  %cmp6 = icmp ne i8 %1, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end4
  %2 = phi i1 [ false, %if.end4 ], [ %cmp6, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  %cmp8 = icmp eq i32 %got_header.0145, 0
  br i1 %cmp8, label %if.then10, label %if.end17

if.then10:                                        ; preds = %land.end
  %conv11132 = zext i32 %call1146 to i64
  %call12 = tail call i8* @memchr(i8* noundef nonnull %call, i32 noundef 58, i64 noundef %conv11132) #9
  %cmp13.not = icmp ne i8* %call12, null
  %spec.select = zext i1 %cmp13.not to i32
  br label %if.end17

if.end17:                                         ; preds = %if.then10, %land.end
  %got_header.1 = phi i32 [ %got_header.0145, %land.end ], [ %spec.select, %if.then10 ]
  %call18 = tail call i32 @strncmp(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i64 noundef 9) #9
  %tobool = icmp eq i32 %call18, 0
  %cmp19 = icmp eq i32 %got_header.1, 1
  %or.cond = select i1 %tobool, i1 true, i1 %cmp19
  %spec.select130 = select i1 %or.cond, i32 -5, i32 -1
  %and23 = and i32 %spec.select130, %flags
  %call24 = tail call fastcc i32 @sanitize_line(i8* noundef nonnull %call, i32 noundef %call1146, i32 noundef %and23, i32 noundef 0) #11
  %3 = load i8, i8* %call, align 1, !tbaa !4
  %cmp27 = icmp eq i8 %3, 10
  br i1 %cmp27, label %if.then29, label %if.end37

if.then29:                                        ; preds = %if.end17
  %tobool30.not = icmp eq i32 %partial_line_read.0144, 0
  br i1 %tobool30.not, label %if.then31, label %for.inc

if.then31:                                        ; preds = %if.then29
  %cmp32 = icmp eq i32 %got_header.1, 2
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.then31
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 860, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.get_header_and_data, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 102, i8* noundef null) #10
  br label %err

if.end35:                                         ; preds = %if.then31
  %4 = load %struct.bio_st*, %struct.bio_st** %data, align 8, !tbaa !9
  br label %for.inc

if.end37:                                         ; preds = %if.end17
  %call38 = tail call i32 @strncmp(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i64 noundef 9) #9
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.then41, label %if.else

if.then41:                                        ; preds = %if.end37
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 9
  %call42 = tail call i64 @strlen(i8* noundef %name) #9
  %call43 = tail call i32 @strncmp(i8* noundef nonnull %add.ptr, i8* noundef %name, i64 noundef %call42) #9
  %cmp44.not = icmp eq i32 %call43, 0
  br i1 %cmp44.not, label %lor.lhs.false46, label %if.then51

lor.lhs.false46:                                  ; preds = %if.then41
  %add.ptr47 = getelementptr inbounds i8, i8* %add.ptr, i64 %call42
  %call48 = tail call i32 @strncmp(i8* noundef nonnull %add.ptr47, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i64 noundef 6) #9
  %cmp49.not = icmp eq i32 %call48, 0
  br i1 %cmp49.not, label %if.end52, label %if.then51

if.then51:                                        ; preds = %lor.lhs.false46, %if.then41
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 875, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.get_header_and_data, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 102, i8* noundef null) #10
  br label %err

if.end52:                                         ; preds = %lor.lhs.false46
  %cmp53 = icmp eq i32 %got_header.1, 0
  br i1 %cmp53, label %if.then55, label %err

if.then55:                                        ; preds = %if.end52
  %5 = load %struct.bio_st*, %struct.bio_st** %data, align 8, !tbaa !9
  store %struct.bio_st* %5, %struct.bio_st** %header, align 8, !tbaa !9
  store %struct.bio_st* %tmp.0142, %struct.bio_st** %data, align 8, !tbaa !9
  br label %err

if.else:                                          ; preds = %if.end37
  %tobool57.not = icmp eq i32 %end.0143, 0
  br i1 %tobool57.not, label %if.end60, label %if.then58

if.then58:                                        ; preds = %if.else
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 885, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.get_header_and_data, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 102, i8* noundef null) #10
  br label %err

if.end60:                                         ; preds = %if.else
  %call61 = tail call i32 @BIO_puts(%struct.bio_st* noundef %tmp.0142, i8* noundef nonnull %call) #10
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %err, label %if.end65

if.end65:                                         ; preds = %if.end60
  %cmp66 = icmp eq i32 %got_header.1, 2
  br i1 %cmp66, label %if.then68, label %for.inc

if.then68:                                        ; preds = %if.end65
  %cmp69 = icmp sgt i32 %call24, 65
  br i1 %cmp69, label %err, label %if.end72

if.end72:                                         ; preds = %if.then68
  %cmp73.not = icmp ne i32 %call24, 65
  %spec.select131 = zext i1 %cmp73.not to i32
  br label %for.inc

for.inc:                                          ; preds = %if.end72, %if.end65, %if.then29, %if.end35
  %tmp.1 = phi %struct.bio_st* [ %tmp.0142, %if.then29 ], [ %4, %if.end35 ], [ %tmp.0142, %if.end65 ], [ %tmp.0142, %if.end72 ]
  %end.1 = phi i32 [ %end.0143, %if.then29 ], [ %end.0143, %if.end35 ], [ 0, %if.end65 ], [ %spec.select131, %if.end72 ]
  %got_header.2 = phi i32 [ %got_header.1, %if.then29 ], [ 2, %if.end35 ], [ %got_header.1, %if.end65 ], [ 2, %if.end72 ]
  %call1 = tail call i32 @BIO_gets(%struct.bio_st* noundef %bp, i8* noundef nonnull %call, i32 noundef 255) #10
  %cmp2 = icmp slt i32 %call1, 1
  br i1 %cmp2, label %if.then3, label %if.end4

err:                                              ; preds = %if.then68, %if.end60, %if.then55, %if.end52, %if.then58, %if.then51, %if.then34, %if.then3
  %ret.0 = phi i32 [ 0, %if.then3 ], [ 0, %if.then34 ], [ 0, %if.then51 ], [ 0, %if.then58 ], [ 1, %if.end52 ], [ 1, %if.then55 ], [ 0, %if.end60 ], [ 0, %if.then68 ]
  tail call fastcc void @pem_free(i8* noundef nonnull %call, i32 noundef %flags, i64 noundef 256) #11
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.0, %err ]
  ret i32 %retval.0
}

declare void @EVP_DecodeInit(%struct.evp_Encode_Ctx_st* noundef) local_unnamed_addr #4

declare i32 @EVP_DecodeUpdate(%struct.evp_Encode_Ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare i32 @EVP_DecodeFinal(%struct.evp_Encode_Ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @pem_malloc(i32 noundef %num, i32 noundef %flags) unnamed_addr #0 {
entry:
  %and = and i32 %flags, 1
  %tobool.not = icmp eq i32 %and, 0
  %conv1 = sext i32 %num to i64
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %call = tail call i8* @CRYPTO_secure_malloc(i64 noundef %conv1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 231) #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call2 = tail call i8* @CRYPTO_malloc(i64 noundef %conv1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 232) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %call2, %cond.false ]
  ret i8* %cond
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @pem_free(i8* noundef %p, i32 noundef %flags, i64 noundef %num) unnamed_addr #0 {
entry:
  %and = and i32 %flags, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void @CRYPTO_secure_clear_free(i8* noundef %p, i64 noundef %num, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 224) #10
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @CRYPTO_free(i8* noundef %p, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 226) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define i32 @ossl_pem_check_suffix(i8* noundef %pem_str, i8* noundef %suffix) local_unnamed_addr #5 {
entry:
  %call = tail call i64 @strlen(i8* noundef %pem_str) #9
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @strlen(i8* noundef %suffix) #9
  %conv2 = trunc i64 %call1 to i32
  %add = add nsw i32 %conv2, 1
  %cmp.not = icmp slt i32 %add, %conv
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %sext = shl i64 %call, 32
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr = getelementptr inbounds i8, i8* %pem_str, i64 %idx.ext
  %sext28 = shl i64 %call1, 32
  %idx.ext4 = ashr exact i64 %sext28, 32
  %idx.neg = sub nsw i64 0, %idx.ext4
  %add.ptr5 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %call6 = tail call i32 @strcmp(i8* noundef %add.ptr5, i8* noundef %suffix) #9
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %if.end
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr5, i64 -1
  %0 = load i8, i8* %incdec.ptr, align 1, !tbaa !4
  %cmp10.not = icmp eq i8 %0, 32
  br i1 %cmp10.not, label %if.end13, label %cleanup

if.end13:                                         ; preds = %if.end8
  %sub.ptr.lhs.cast = ptrtoint i8* %incdec.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %pem_str to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv14 = trunc i64 %sub.ptr.sub to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end, %entry, %if.end13
  %retval.0 = phi i32 [ %conv14, %if.end13 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_REASON(i64 noundef %errcode) unnamed_addr #6 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %retval.0.v = select i1 %cmp.not, i32 8388607, i32 2147483647
  %retval.0 = and i32 %retval.0.v, %0
  ret i32 %retval.0
}

declare i64 @ERR_peek_error() local_unnamed_addr #4

declare void @ERR_add_error_data(i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_pem(i8* noundef %nm, i8* noundef readonly %name) unnamed_addr #0 {
entry:
  %e = alloca %struct.engine_st*, align 8
  %call = tail call i32 @strcmp(i8* noundef %nm, i8* noundef %name) #9
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0)) #9
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end21

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @strcmp(i8* noundef %nm, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0)) #9
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %return, label %if.end7

if.end7:                                          ; preds = %if.then3
  %call8 = tail call i32 @strcmp(i8* noundef %nm, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0)) #9
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %return, label %if.end11

if.end11:                                         ; preds = %if.end7
  %call12 = tail call i32 @ossl_pem_check_suffix(i8* noundef %nm, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0)) #11
  %cmp13 = icmp sgt i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end19

if.then14:                                        ; preds = %if.end11
  %call15 = tail call %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_find_str(%struct.engine_st** noundef null, i8* noundef %nm, i32 noundef %call12) #10
  %tobool.not = icmp eq %struct.evp_pkey_asn1_method_st* %call15, null
  br i1 %tobool.not, label %if.end19, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then14
  %old_priv_decode = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %call15, i64 0, i32 24
  %0 = load i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**, i32)** %old_priv_decode, align 8, !tbaa !31
  %tobool16.not = icmp eq i32 (%struct.evp_pkey_st*, i8**, i32)* %0, null
  br i1 %tobool16.not, label %if.end19, label %return

if.end19:                                         ; preds = %if.then14, %land.lhs.true, %if.end11
  br label %return

if.end21:                                         ; preds = %if.end
  %call22 = tail call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0)) #9
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %if.end43

if.then24:                                        ; preds = %if.end21
  %call27 = tail call i32 @ossl_pem_check_suffix(i8* noundef %nm, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0)) #11
  %cmp28 = icmp sgt i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %return

if.then29:                                        ; preds = %if.then24
  %1 = bitcast %struct.engine_st** %e to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #12
  %call30 = call %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_find_str(%struct.engine_st** noundef nonnull %e, i8* noundef %nm, i32 noundef %call27) #10
  %tobool31.not = icmp eq %struct.evp_pkey_asn1_method_st* %call30, null
  br i1 %tobool31.not, label %cleanup39.thread, label %cleanup39

cleanup39.thread:                                 ; preds = %if.then29
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  br label %return

cleanup39:                                        ; preds = %if.then29
  %param_decode = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %call30, i64 0, i32 15
  %2 = load i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**, i32)** %param_decode, align 8, !tbaa !33
  %tobool33.not = icmp ne i32 (%struct.evp_pkey_st*, i8**, i32)* %2, null
  %. = zext i1 %tobool33.not to i32
  %3 = load %struct.engine_st*, %struct.engine_st** %e, align 8, !tbaa !9
  %call36 = call i32 @ENGINE_finish(%struct.engine_st* noundef %3) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  br label %return

if.end43:                                         ; preds = %if.end21
  %call44 = tail call i32 @strcmp(i8* noundef %nm, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0)) #9
  %cmp45 = icmp eq i32 %call44, 0
  br i1 %cmp45, label %land.lhs.true46, label %if.end50

land.lhs.true46:                                  ; preds = %if.end43
  %call47 = tail call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0)) #9
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %return, label %if.end50

if.end50:                                         ; preds = %land.lhs.true46, %if.end43
  %call51 = tail call i32 @strcmp(i8* noundef %nm, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0)) #9
  %cmp52 = icmp eq i32 %call51, 0
  br i1 %cmp52, label %land.lhs.true53, label %if.end57

land.lhs.true53:                                  ; preds = %if.end50
  %call54 = tail call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0)) #9
  %cmp55 = icmp eq i32 %call54, 0
  br i1 %cmp55, label %return, label %if.end57

if.end57:                                         ; preds = %land.lhs.true53, %if.end50
  %call58 = tail call i32 @strcmp(i8* noundef %nm, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0)) #9
  %cmp59 = icmp eq i32 %call58, 0
  br i1 %cmp59, label %land.lhs.true60, label %if.end64

land.lhs.true60:                                  ; preds = %if.end57
  %call61 = tail call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i64 0, i64 0)) #9
  %cmp62 = icmp eq i32 %call61, 0
  br i1 %cmp62, label %return, label %if.end64

if.end64:                                         ; preds = %land.lhs.true60, %if.end57
  %call65 = tail call i32 @strcmp(i8* noundef %nm, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0)) #9
  %cmp66 = icmp eq i32 %call65, 0
  br i1 %cmp66, label %land.lhs.true67, label %if.end71

land.lhs.true67:                                  ; preds = %if.end64
  %call68 = tail call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i64 0, i64 0)) #9
  %cmp69 = icmp eq i32 %call68, 0
  br i1 %cmp69, label %return, label %if.end71

if.end71:                                         ; preds = %land.lhs.true67, %if.end64
  br i1 %cmp52, label %land.lhs.true74, label %if.end78

land.lhs.true74:                                  ; preds = %if.end71
  %call75 = tail call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i64 0, i64 0)) #9
  %cmp76 = icmp eq i32 %call75, 0
  br i1 %cmp76, label %return, label %if.end78

if.end78:                                         ; preds = %land.lhs.true74, %if.end71
  br i1 %cmp66, label %land.lhs.true81, label %if.end85

land.lhs.true81:                                  ; preds = %if.end78
  %call82 = tail call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0)) #9
  %cmp83 = icmp eq i32 %call82, 0
  br i1 %cmp83, label %return, label %if.end85

if.end85:                                         ; preds = %land.lhs.true81, %if.end78
  %call86 = tail call i32 @strcmp(i8* noundef %nm, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i64 0, i64 0)) #9
  %cmp87 = icmp eq i32 %call86, 0
  br i1 %cmp87, label %land.lhs.true88, label %if.end92

land.lhs.true88:                                  ; preds = %if.end85
  %call89 = tail call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0)) #9
  %cmp90 = icmp eq i32 %call89, 0
  br i1 %cmp90, label %return, label %if.end92

if.end92:                                         ; preds = %land.lhs.true88, %if.end85
  br i1 %cmp66, label %land.lhs.true95, label %if.end99

land.lhs.true95:                                  ; preds = %if.end92
  %call96 = tail call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0)) #9
  %cmp97 = icmp eq i32 %call96, 0
  br i1 %cmp97, label %return, label %if.end99

if.end99:                                         ; preds = %land.lhs.true95, %if.end92
  %call100 = tail call i32 @strcmp(i8* noundef %nm, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0)) #9
  %cmp101 = icmp eq i32 %call100, 0
  br i1 %cmp101, label %land.lhs.true102, label %if.end106

land.lhs.true102:                                 ; preds = %if.end99
  %call103 = tail call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0)) #9
  %cmp104 = icmp eq i32 %call103, 0
  br i1 %cmp104, label %return, label %if.end106

if.end106:                                        ; preds = %land.lhs.true102, %if.end99
  br label %return

return:                                           ; preds = %if.then24, %cleanup39.thread, %cleanup39, %land.lhs.true102, %land.lhs.true95, %land.lhs.true88, %land.lhs.true81, %land.lhs.true74, %land.lhs.true67, %land.lhs.true60, %land.lhs.true53, %land.lhs.true46, %if.end19, %if.then3, %if.end7, %land.lhs.true, %entry, %if.end106
  %retval.3 = phi i32 [ 0, %if.end106 ], [ 1, %entry ], [ 0, %if.end19 ], [ 1, %if.then3 ], [ 1, %if.end7 ], [ 1, %land.lhs.true ], [ %., %cleanup39 ], [ 1, %land.lhs.true46 ], [ 1, %land.lhs.true53 ], [ 1, %land.lhs.true60 ], [ 1, %land.lhs.true67 ], [ 1, %land.lhs.true74 ], [ 1, %land.lhs.true81 ], [ 1, %land.lhs.true88 ], [ 1, %land.lhs.true95 ], [ 1, %land.lhs.true102 ], [ 0, %cleanup39.thread ], [ 0, %if.then24 ]
  ret i32 %retval.3
}

declare %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_find_str(%struct.engine_st** noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ENGINE_finish(%struct.engine_st* noundef) local_unnamed_addr #4

declare i32 @OPENSSL_hexchar2int(i8 noundef zeroext) local_unnamed_addr #4

declare i32 @BIO_gets(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sanitize_line(i8* noundef %linebuf, i32 noundef %len, i32 noundef %flags, i32 noundef %first_call) unnamed_addr #0 {
entry:
  %utf8_bom = alloca [3 x i8], align 1
  %tobool.not = icmp eq i32 %first_call, 0
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds [3 x i8], [3 x i8]* %utf8_bom, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 3, i8* nonnull %0) #12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %0, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @__const.sanitize_line.utf8_bom, i64 0, i64 0), i64 3, i1 false)
  %cmp = icmp sgt i32 %len, 3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %call = call i32 @memcmp(i8* noundef %linebuf, i8* noundef nonnull %0, i64 noundef 3) #9
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %land.lhs.true
  %add.ptr = getelementptr inbounds i8, i8* %linebuf, i64 3
  %sub = add nsw i32 %len, -3
  %1 = zext i32 %sub to i64
  %call3 = call i8* @memmove(i8* noundef %linebuf, i8* noundef nonnull %add.ptr, i64 noundef %1) #10
  %arrayidx = getelementptr inbounds i8, i8* %linebuf, i64 %1
  store i8 0, i8* %arrayidx, align 1, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then2, %land.lhs.true, %if.then
  %len.addr.0 = phi i32 [ %sub, %if.then2 ], [ %len, %land.lhs.true ], [ %len, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 3, i8* nonnull %0) #12
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %len.addr.1 = phi i32 [ %len.addr.0, %if.end ], [ %len, %entry ]
  %and = and i32 %flags, 2
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.else, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end6
  %cmp9118 = icmp sgt i32 %len.addr.1, -1
  br i1 %cmp9118, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.cond.preheader, %while.body
  %len.addr.2119 = phi i32 [ %dec, %while.body ], [ %len.addr.1, %while.cond.preheader ]
  %idxprom11116 = zext i32 %len.addr.2119 to i64
  %arrayidx12 = getelementptr inbounds i8, i8* %linebuf, i64 %idxprom11116
  %2 = load i8, i8* %arrayidx12, align 1, !tbaa !4
  %cmp14 = icmp slt i8 %2, 33
  br i1 %cmp14, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %dec = add nsw i32 %len.addr.2119, -1
  %cmp9 = icmp sgt i32 %len.addr.2119, 0
  br i1 %cmp9, label %land.rhs, label %while.end, !llvm.loop !34

while.end:                                        ; preds = %land.rhs, %while.body, %while.cond.preheader
  %len.addr.2.lcssa = phi i32 [ %len.addr.1, %while.cond.preheader ], [ -1, %while.body ], [ %len.addr.2119, %land.rhs ]
  %inc = add nsw i32 %len.addr.2.lcssa, 1
  br label %if.end71

if.else:                                          ; preds = %if.end6
  %and16 = and i32 %flags, 4
  %tobool17.not = icmp eq i32 %and16, 0
  %cmp42128 = icmp sgt i32 %len.addr.1, 0
  br i1 %tobool17.not, label %for.cond41.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else
  br i1 %cmp42128, label %for.body.preheader, label %if.end71

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %len.addr.1 to i64
  br label %for.body

for.cond41.preheader:                             ; preds = %if.else
  br i1 %cmp42128, label %for.body44.preheader, label %if.end71

for.body44.preheader:                             ; preds = %for.cond41.preheader
  %wide.trip.count140 = zext i32 %len.addr.1 to i64
  br label %for.body44

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %arrayidx22 = getelementptr inbounds i8, i8* %linebuf, i64 %indvars.iv
  %3 = load i8, i8* %arrayidx22, align 1, !tbaa !4
  %conv23 = sext i8 %3 to i32
  %call24 = call i32 @ossl_ctype_check(i32 noundef %conv23, i32 noundef 1024) #10
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end71.loopexit142.split.loop.exit144, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %4 = load i8, i8* %arrayidx22, align 1, !tbaa !4
  switch i8 %4, label %for.inc [
    i8 10, label %if.end71.loopexit142.split.loop.exit146
    i8 13, label %if.end71.loopexit142.split.loop.exit146
  ]

for.inc:                                          ; preds = %lor.lhs.false
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end71, label %for.body, !llvm.loop !35

for.body44:                                       ; preds = %for.body44.preheader, %for.inc67
  %indvars.iv137 = phi i64 [ 0, %for.body44.preheader ], [ %indvars.iv.next138, %for.inc67 ]
  %arrayidx46 = getelementptr inbounds i8, i8* %linebuf, i64 %indvars.iv137
  %5 = load i8, i8* %arrayidx46, align 1, !tbaa !4
  switch i8 %5, label %if.end57 [
    i8 10, label %if.end71.loopexit.split.loop.exit149
    i8 13, label %if.end71.loopexit.split.loop.exit149
  ]

if.end57:                                         ; preds = %for.body44
  %conv47 = sext i8 %5 to i32
  %call61 = call i32 @ossl_ctype_check(i32 noundef %conv47, i32 noundef 64) #10
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %for.inc67, label %if.then63

if.then63:                                        ; preds = %if.end57
  store i8 32, i8* %arrayidx46, align 1, !tbaa !4
  br label %for.inc67

for.inc67:                                        ; preds = %if.end57, %if.then63
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1
  %exitcond141.not = icmp eq i64 %indvars.iv.next138, %wide.trip.count140
  br i1 %exitcond141.not, label %if.end71, label %for.body44, !llvm.loop !36

if.end71.loopexit.split.loop.exit149:             ; preds = %for.body44, %for.body44
  %6 = trunc i64 %indvars.iv137 to i32
  br label %if.end71

if.end71.loopexit142.split.loop.exit144:          ; preds = %for.body
  %7 = trunc i64 %indvars.iv to i32
  br label %if.end71

if.end71.loopexit142.split.loop.exit146:          ; preds = %lor.lhs.false, %lor.lhs.false
  %8 = trunc i64 %indvars.iv to i32
  br label %if.end71

if.end71:                                         ; preds = %for.inc, %for.inc67, %if.end71.loopexit142.split.loop.exit144, %if.end71.loopexit142.split.loop.exit146, %if.end71.loopexit.split.loop.exit149, %for.cond.preheader, %for.cond41.preheader, %while.end
  %len.addr.3 = phi i32 [ %inc, %while.end ], [ 0, %for.cond41.preheader ], [ 0, %for.cond.preheader ], [ %6, %if.end71.loopexit.split.loop.exit149 ], [ %7, %if.end71.loopexit142.split.loop.exit144 ], [ %8, %if.end71.loopexit142.split.loop.exit146 ], [ %len.addr.1, %for.inc67 ], [ %len.addr.1, %for.inc ]
  %inc72 = add nsw i32 %len.addr.3, 1
  %idxprom73 = sext i32 %len.addr.3 to i64
  %arrayidx74 = getelementptr inbounds i8, i8* %linebuf, i64 %idxprom73
  store i8 10, i8* %arrayidx74, align 1, !tbaa !4
  %idxprom75 = sext i32 %inc72 to i64
  %arrayidx76 = getelementptr inbounds i8, i8* %linebuf, i64 %idxprom75
  store i8 0, i8* %arrayidx76, align 1, !tbaa !4
  ret i32 %inc72
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memmove(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ossl_ctype_check(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @memchr(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #4

declare i8* @CRYPTO_secure_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare void @CRYPTO_secure_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = distinct !{!13, !8}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !5, i64 0}
!16 = distinct !{!16, !8}
!17 = !{!18, !10, i64 0}
!18 = !{!"evp_cipher_info_st", !10, i64 0, !5, i64 8}
!19 = distinct !{!19, !8, !20}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = distinct !{!23, !8, !20, !24}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = distinct !{!25, !8, !24, !20}
!26 = distinct !{!26, !8}
!27 = !{!28, !12, i64 0}
!28 = !{!"buf_mem_st", !12, i64 0, !10, i64 8, !12, i64 16, !12, i64 24}
!29 = !{!28, !10, i64 8}
!30 = distinct !{!30, !8}
!31 = !{!32, !10, i64 184}
!32 = !{!"evp_pkey_asn1_method_st", !15, i64 0, !15, i64 4, !12, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !10, i64 312}
!33 = !{!32, !10, i64 112}
!34 = distinct !{!34, !8}
!35 = distinct !{!35, !8}
!36 = distinct !{!36, !8}
