; ModuleID = 'crypto/asn1/asn_mime.c'
source_filename = "crypto/asn1/asn_mime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_VALUE_st = type opaque
%struct.bio_st = type opaque
%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* }
%struct.stack_st_X509_ALGOR = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st = type opaque
%struct.asn1_object_st = type opaque
%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_md_ctx_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ASN1_STREAM_ARG_st = type { %struct.bio_st*, %struct.bio_st*, i8** }
%struct.ASN1_AUX_st = type { i8*, i32, i32, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)*, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* }
%struct.stack_st_BIO = type opaque
%struct.stack_st_MIME_HEADER = type opaque
%struct.mime_header_st = type { i8*, i8*, %struct.stack_st_MIME_PARAM* }
%struct.stack_st_MIME_PARAM = type opaque
%struct.mime_param_st = type { i8*, i8* }

@.str = private unnamed_addr constant [23 x i8] c"crypto/asn1/asn_mime.c\00", align 1
@__func__.i2d_ASN1_bio_stream = private unnamed_addr constant [20 x i8] c"i2d_ASN1_bio_stream\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"-----BEGIN %s-----\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"-----END %s-----\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"smime.p7m\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"application/x-pkcs7-\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"application/pkcs7-\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"MIME-Version: 1.0%s\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Content-Type: multipart/signed;\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c" protocol=\22%ssignature\22;\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c" micalg=\22\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"\22; boundary=\22----%s\22%s%s\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"This is an S/MIME signed message%s%s\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"------%s%s\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"%s------%s%s\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"Content-Type: %ssignature;\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c" name=\22smime.p7s\22%s\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"Content-Transfer-Encoding: base64%s\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"Content-Disposition: attachment;\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c" filename=\22smime.p7s\22%s%s\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"%s------%s--%s%s\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"enveloped-data\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"signed-receipt\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"signed-data\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"certs-only\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"compressed-data\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"smime.p7z\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c" filename=\22%s\22%s\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"Content-Type: %smime;\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c" smime-type=%s;\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c" name=\22%s\22%s\00", align 1
@.str.32 = private unnamed_addr constant [38 x i8] c"Content-Transfer-Encoding: base64%s%s\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__func__.SMIME_read_ASN1_ex = private unnamed_addr constant [19 x i8] c"SMIME_read_ASN1_ex\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"content-type\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"multipart/signed\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"boundary\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"application/x-pkcs7-signature\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"application/pkcs7-signature\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"type: %s\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"application/x-pkcs7-mime\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"application/pkcs7-mime\00", align 1
@.str.42 = private unnamed_addr constant [29 x i8] c"Content-Type: text/plain\0D\0A\0D\0A\00", align 1
@__func__.SMIME_text = private unnamed_addr constant [11 x i8] c"SMIME_text\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1
@__func__.B64_write_ASN1 = private unnamed_addr constant [15 x i8] c"B64_write_ASN1\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"sha-256\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"sha-384\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"sha-512\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"gostr3411-94\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"gostr3411-2012-256\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"gostr3411-2012-512\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@__func__.asn1_output_data = private unnamed_addr constant [17 x i8] c"asn1_output_data\00", align 1
@__func__.b64_read_asn1 = private unnamed_addr constant [14 x i8] c"b64_read_asn1\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"--\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ASN1_bio_stream(%struct.bio_st* noundef %out, %struct.ASN1_VALUE_st* noundef %val, %struct.bio_st* noundef %in, i32 noundef %flags, %struct.ASN1_ITEM_st* noundef %it) local_unnamed_addr #0 {
entry:
  %and = and i32 %flags, 4096
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call %struct.bio_st* @BIO_new_NDEF(%struct.bio_st* noundef %out, %struct.ASN1_VALUE_st* noundef %val, %struct.ASN1_ITEM_st* noundef %it) #7
  %tobool1.not = icmp eq %struct.bio_st* %call, null
  br i1 %tobool1.not, label %cleanup.thread, label %if.end

cleanup.thread:                                   ; preds = %if.then
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.i2d_ASN1_bio_stream, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #7
  br label %return

if.end:                                           ; preds = %if.then
  %call3 = tail call i32 @SMIME_crlf_copy(%struct.bio_st* noundef %in, %struct.bio_st* noundef nonnull %call, i32 noundef %flags) #8
  %call4 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call, i32 noundef 11, i64 noundef 0, i8* noundef null) #7
  br label %do.body

do.body:                                          ; preds = %do.body, %if.end
  %bio.0 = phi %struct.bio_st* [ %call, %if.end ], [ %call5, %do.body ]
  %call5 = tail call %struct.bio_st* @BIO_pop(%struct.bio_st* noundef %bio.0) #7
  %call6 = tail call i32 @BIO_free(%struct.bio_st* noundef %bio.0) #7
  %cmp.not = icmp eq %struct.bio_st* %call5, %out
  br i1 %cmp.not, label %return, label %do.body, !llvm.loop !4

if.else:                                          ; preds = %entry
  %0 = bitcast %struct.ASN1_VALUE_st* %val to i8*
  %call9 = tail call i32 @ASN1_item_i2d_bio(%struct.ASN1_ITEM_st* noundef %it, %struct.bio_st* noundef %out, i8* noundef %0) #7
  br label %return

return:                                           ; preds = %do.body, %if.else, %cleanup.thread
  %retval.1 = phi i32 [ 0, %cleanup.thread ], [ 1, %if.else ], [ 1, %do.body ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.bio_st* @BIO_new_NDEF(%struct.bio_st* noundef, %struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @SMIME_crlf_copy(%struct.bio_st* noundef %in, %struct.bio_st* noundef %out, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %len = alloca i32, align 4
  %linebuf = alloca [1024 x i8], align 16
  %0 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  %1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %linebuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %1) #9
  %call = tail call %struct.bio_method_st* @BIO_f_buffer() #7
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #7
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.bio_st* @BIO_push(%struct.bio_st* noundef nonnull %call1, %struct.bio_st* noundef %out) #7
  %and = and i32 %flags, 128
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  %call479 = call i32 @BIO_read(%struct.bio_st* noundef %in, i8* noundef nonnull %1, i32 noundef 1024) #7
  %cmp580 = icmp sgt i32 %call479, 0
  br i1 %cmp580, label %while.body, label %if.end49

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %call481 = phi i32 [ %call4, %while.body ], [ %call479, %while.cond.preheader ]
  %call7 = call i32 @BIO_write(%struct.bio_st* noundef %call2, i8* noundef nonnull %1, i32 noundef %call481) #7
  %call4 = call i32 @BIO_read(%struct.bio_st* noundef %in, i8* noundef nonnull %1, i32 noundef 1024) #7
  %cmp5 = icmp sgt i32 %call4, 0
  br i1 %cmp5, label %while.body, label %if.end49, !llvm.loop !6

if.else:                                          ; preds = %if.end
  %and8 = and i32 %flags, 1
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.else
  %call11 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call2, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.42, i64 0, i64 0)) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.else
  %call1584 = call i32 @BIO_gets(%struct.bio_st* noundef %in, i8* noundef nonnull %1, i32 noundef 1024) #7
  store i32 %call1584, i32* %len, align 4, !tbaa !7
  %cmp1685 = icmp sgt i32 %call1584, 0
  br i1 %cmp1685, label %while.body17.lr.ph, label %if.end49

while.body17.lr.ph:                               ; preds = %if.end12
  %and37 = and i32 %flags, 524288
  %tobool38.not = icmp eq i32 %and37, 0
  br label %while.body17

while.body17:                                     ; preds = %while.body17.lr.ph, %if.end47
  %eolcnt.086 = phi i32 [ 0, %while.body17.lr.ph ], [ %eolcnt.2, %if.end47 ]
  %call19 = call fastcc i32 @strip_eol(i8* noundef nonnull %1, i32* noundef nonnull %len, i32 noundef %flags) #8
  %conv = trunc i32 %call19 to i8
  %2 = load i32, i32* %len, align 4, !tbaa !7
  %cmp20 = icmp sgt i32 %2, 0
  br i1 %cmp20, label %if.then22, label %if.else36

if.then22:                                        ; preds = %while.body17
  br i1 %tobool38.not, label %if.end29, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then22
  %cmp2682 = icmp sgt i32 %eolcnt.086, 0
  br i1 %cmp2682, label %for.body, label %if.end29

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %i.083 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %call28 = call i32 @BIO_write(%struct.bio_st* noundef %call2, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 noundef 2) #7
  %inc = add nuw nsw i32 %i.083, 1
  %exitcond.not = icmp eq i32 %inc, %eolcnt.086
  br i1 %exitcond.not, label %if.end29, label %for.body, !llvm.loop !11

if.end29:                                         ; preds = %for.body, %for.cond.preheader, %if.then22
  %eolcnt.1 = phi i32 [ %eolcnt.086, %if.then22 ], [ 0, %for.cond.preheader ], [ 0, %for.body ]
  %call31 = call i32 @BIO_write(%struct.bio_st* noundef %call2, i8* noundef nonnull %1, i32 noundef %2) #7
  %tobool32.not = icmp eq i8 %conv, 0
  br i1 %tobool32.not, label %if.end47, label %if.then33

if.then33:                                        ; preds = %if.end29
  %call34 = call i32 @BIO_write(%struct.bio_st* noundef %call2, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 noundef 2) #7
  br label %if.end47

if.else36:                                        ; preds = %while.body17
  br i1 %tobool38.not, label %if.else41, label %if.then39

if.then39:                                        ; preds = %if.else36
  %inc40 = add nsw i32 %eolcnt.086, 1
  br label %if.end47

if.else41:                                        ; preds = %if.else36
  %tobool42.not = icmp eq i8 %conv, 0
  br i1 %tobool42.not, label %if.end47, label %if.then43

if.then43:                                        ; preds = %if.else41
  %call44 = call i32 @BIO_write(%struct.bio_st* noundef %call2, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 noundef 2) #7
  br label %if.end47

if.end47:                                         ; preds = %if.then39, %if.then43, %if.else41, %if.end29, %if.then33
  %eolcnt.2 = phi i32 [ %eolcnt.1, %if.then33 ], [ %eolcnt.1, %if.end29 ], [ %inc40, %if.then39 ], [ %eolcnt.086, %if.then43 ], [ %eolcnt.086, %if.else41 ]
  %call15 = call i32 @BIO_gets(%struct.bio_st* noundef %in, i8* noundef nonnull %1, i32 noundef 1024) #7
  store i32 %call15, i32* %len, align 4, !tbaa !7
  %cmp16 = icmp sgt i32 %call15, 0
  br i1 %cmp16, label %while.body17, label %if.end49, !llvm.loop !12

if.end49:                                         ; preds = %while.body, %if.end47, %while.cond.preheader, %if.end12
  %call50 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call2, i32 noundef 11, i64 noundef 0, i8* noundef null) #7
  %call52 = call %struct.bio_st* @BIO_pop(%struct.bio_st* noundef %call2) #7
  %call53 = call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end49
  %retval.0 = phi i32 [ 1, %if.end49 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare %struct.bio_st* @BIO_pop(%struct.bio_st* noundef) local_unnamed_addr #2

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @ASN1_item_i2d_bio(%struct.ASN1_ITEM_st* noundef, %struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_bio_ASN1_stream(%struct.bio_st* noundef %out, %struct.ASN1_VALUE_st* noundef %val, %struct.bio_st* noundef %in, i32 noundef %flags, i8* noundef %hdr, %struct.ASN1_ITEM_st* noundef %it) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* noundef %hdr) #7
  %call1 = tail call fastcc i32 @B64_write_ASN1(%struct.bio_st* noundef %out, %struct.ASN1_VALUE_st* noundef %val, %struct.bio_st* noundef %in, i32 noundef %flags, %struct.ASN1_ITEM_st* noundef %it) #8
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* noundef %hdr) #7
  ret i32 %call1
}

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @B64_write_ASN1(%struct.bio_st* noundef %out, %struct.ASN1_VALUE_st* noundef %val, %struct.bio_st* noundef %in, i32 noundef %flags, %struct.ASN1_ITEM_st* noundef %it) unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_f_base64() #7
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #7
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 107, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.B64_write_ASN1, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.bio_st* @BIO_push(%struct.bio_st* noundef nonnull %call1, %struct.bio_st* noundef %out) #7
  %call3 = tail call i32 @i2d_ASN1_bio_stream(%struct.bio_st* noundef %call2, %struct.ASN1_VALUE_st* noundef %val, %struct.bio_st* noundef %in, i32 noundef %flags, %struct.ASN1_ITEM_st* noundef %it) #8
  %call4 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call2, i32 noundef 11, i64 noundef 0, i8* noundef null) #7
  %call5 = tail call %struct.bio_st* @BIO_pop(%struct.bio_st* noundef %call2) #7
  %call6 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SMIME_write_ASN1_ex(%struct.bio_st* noundef %bio, %struct.ASN1_VALUE_st* noundef %val, %struct.bio_st* noundef %data, i32 noundef %flags, i32 noundef %ctype_nid, i32 noundef %econt_nid, %struct.stack_st_X509_ALGOR* noundef %mdalgs, %struct.ASN1_ITEM_st* noundef %it, %struct.ossl_lib_ctx_st* noundef %libctx, i8* nocapture readnone %propq) local_unnamed_addr #0 {
entry:
  %bound = alloca [33 x i8], align 16
  %0 = getelementptr inbounds [33 x i8], [33 x i8]* %bound, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 33, i8* nonnull %0) #9
  %and = and i32 %flags, 1024
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)
  %and1 = and i32 %flags, 2048
  %tobool2.not = icmp eq i32 %and1, 0
  %mime_eol.0 = select i1 %tobool2.not, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)
  %and6 = and i32 %flags, 64
  %tobool7 = icmp ne i32 %and6, 0
  %tobool8 = icmp ne %struct.bio_st* %data, null
  %or.cond = and i1 %tobool8, %tobool7
  br i1 %or.cond, label %if.then9, label %if.end53

if.then9:                                         ; preds = %entry
  %call = call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef nonnull %0, i64 noundef 32, i32 noundef 0) #7
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %vector.body

vector.body:                                      ; preds = %if.then9
  %1 = bitcast [33 x i8]* %bound to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %1, align 16, !tbaa !13
  %2 = and <16 x i8> %wide.load, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>
  %3 = icmp ult <16 x i8> %2, <i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10>
  %4 = or <16 x i8> %2, <i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48>
  %5 = add nuw nsw <16 x i8> %2, <i8 55, i8 55, i8 55, i8 55, i8 55, i8 55, i8 55, i8 55, i8 55, i8 55, i8 55, i8 55, i8 55, i8 55, i8 55, i8 55>
  %6 = select <16 x i1> %3, <16 x i8> %4, <16 x i8> %5
  %7 = bitcast [33 x i8]* %bound to <16 x i8>*
  store <16 x i8> %6, <16 x i8>* %7, align 16, !tbaa !13
  %8 = getelementptr inbounds [33 x i8], [33 x i8]* %bound, i64 0, i64 16
  %9 = bitcast i8* %8 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %9, align 16, !tbaa !13
  %10 = and <16 x i8> %wide.load.1, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>
  %11 = icmp ult <16 x i8> %10, <i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10>
  %12 = or <16 x i8> %10, <i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48>
  %13 = add nuw nsw <16 x i8> %10, <i8 55, i8 55, i8 55, i8 55, i8 55, i8 55, i8 55, i8 55, i8 55, i8 55, i8 55, i8 55, i8 55, i8 55, i8 55, i8 55>
  %14 = select <16 x i1> %11, <16 x i8> %12, <16 x i8> %13
  %15 = bitcast i8* %8 to <16 x i8>*
  store <16 x i8> %14, <16 x i8>* %15, align 16, !tbaa !13
  %arrayidx28 = getelementptr inbounds [33 x i8], [33 x i8]* %bound, i64 0, i64 32
  store i8 0, i8* %arrayidx28, align 16, !tbaa !13
  %call29 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* noundef %mime_eol.0) #7
  %call30 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0)) #7
  %call31 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i8* noundef %.) #7
  %call32 = call i32 @BIO_puts(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #7
  call fastcc void @asn1_write_micalg(%struct.bio_st* noundef %bio, %struct.stack_st_X509_ALGOR* noundef %mdalgs) #8
  %call35 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i8* noundef nonnull %0, i8* noundef %mime_eol.0, i8* noundef %mime_eol.0) #7
  %call36 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), i8* noundef %mime_eol.0, i8* noundef %mime_eol.0) #7
  %call38 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* noundef nonnull %0, i8* noundef %mime_eol.0) #7
  %call39 = call fastcc i32 @asn1_output_data(%struct.bio_st* noundef %bio, %struct.bio_st* noundef nonnull %data, %struct.ASN1_VALUE_st* noundef %val, i32 noundef %flags, %struct.ASN1_ITEM_st* noundef %it) #8
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %cleanup, label %if.end42

if.end42:                                         ; preds = %vector.body
  %call44 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8* noundef %mime_eol.0, i8* noundef nonnull %0, i8* noundef %mime_eol.0) #7
  %call45 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i8* noundef %.) #7
  %call46 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i8* noundef %mime_eol.0) #7
  %call47 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0), i8* noundef %mime_eol.0) #7
  %call48 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0)) #7
  %call49 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i8* noundef %mime_eol.0, i8* noundef %mime_eol.0) #7
  %call50 = call fastcc i32 @B64_write_ASN1(%struct.bio_st* noundef %bio, %struct.ASN1_VALUE_st* noundef %val, %struct.bio_st* noundef null, i32 noundef 0, %struct.ASN1_ITEM_st* noundef %it) #8
  %call52 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i8* noundef %mime_eol.0, i8* noundef nonnull %0, i8* noundef %mime_eol.0, i8* noundef %mime_eol.0) #7
  br label %cleanup

if.end53:                                         ; preds = %entry
  switch i32 %ctype_nid, label %if.end79.fold.split [
    i32 23, label %if.end79
    i32 22, label %if.then60
    i32 786, label %if.then76
  ]

if.then60:                                        ; preds = %if.end53
  %cmp61 = icmp eq i32 %econt_nid, 204
  br i1 %cmp61, label %if.end79, label %if.else64

if.else64:                                        ; preds = %if.then60
  %call65 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_ALGOR_sk_type(%struct.stack_st_X509_ALGOR* noundef %mdalgs) #8
  %call66 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call65) #7
  %cmp67 = icmp sgt i32 %call66, -1
  %.175 = select i1 %cmp67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0)
  br label %if.end79

if.then76:                                        ; preds = %if.end53
  br label %if.end79

if.end79.fold.split:                              ; preds = %if.end53
  br label %if.end79

if.end79:                                         ; preds = %if.end53, %if.end79.fold.split, %if.else64, %if.then60, %if.then76
  %cname.0 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0), %if.then76 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %if.end53 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %if.then60 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %if.else64 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %if.end79.fold.split ]
  %tobool84.not = phi i1 [ false, %if.then76 ], [ false, %if.end53 ], [ false, %if.then60 ], [ false, %if.else64 ], [ true, %if.end79.fold.split ]
  %msg_type.0 = phi i8* [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0), %if.then76 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), %if.end53 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), %if.then60 ], [ %.175, %if.else64 ], [ null, %if.end79.fold.split ]
  %call80 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* noundef %mime_eol.0) #7
  %call81 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0)) #7
  %call82 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i8* noundef nonnull %cname.0, i8* noundef %mime_eol.0) #7
  %call83 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i64 0, i64 0), i8* noundef %.) #7
  br i1 %tobool84.not, label %if.end87, label %if.then85

if.then85:                                        ; preds = %if.end79
  %call86 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0), i8* noundef %msg_type.0) #7
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %if.end79
  %call88 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0), i8* noundef %cname.0, i8* noundef %mime_eol.0) #7
  %call89 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.32, i64 0, i64 0), i8* noundef %mime_eol.0, i8* noundef %mime_eol.0) #7
  %call90 = tail call fastcc i32 @B64_write_ASN1(%struct.bio_st* noundef %bio, %struct.ASN1_VALUE_st* noundef %val, %struct.bio_st* noundef %data, i32 noundef %flags, %struct.ASN1_ITEM_st* noundef %it) #8
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %cleanup, label %if.end93

if.end93:                                         ; preds = %if.end87
  %call94 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0), i8* noundef %mime_eol.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end87, %vector.body, %if.then9, %if.end93, %if.end42
  %retval.0 = phi i32 [ 1, %if.end42 ], [ 1, %if.end93 ], [ 0, %if.then9 ], [ 0, %vector.body ], [ 0, %if.end87 ]
  call void @llvm.lifetime.end.p0i8(i64 33, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @asn1_write_micalg(%struct.bio_st* noundef %out, %struct.stack_st_X509_ALGOR* noundef %mdalgs) unnamed_addr #0 {
entry:
  %micstr = alloca i8*, align 8
  %call = call fastcc %struct.stack_st* @ossl_check_const_X509_ALGOR_sk_type(%struct.stack_st_X509_ALGOR* noundef %mdalgs) #8
  %call14 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #7
  %cmp5 = icmp sgt i32 %call14, 0
  br i1 %cmp5, label %for.body.lr.ph, label %cleanup41

for.body.lr.ph:                                   ; preds = %entry
  %0 = bitcast i8** %micstr to i8*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %write_comma.07 = phi i32 [ 0, %for.body.lr.ph ], [ %write_comma.1, %for.inc ]
  %have_unknown.06 = phi i32 [ 0, %for.body.lr.ph ], [ %have_unknown.1, %for.inc ]
  %tobool.not = icmp eq i32 %write_comma.07, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %call2 = call i32 @BIO_write(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0), i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %call4 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.08) #7
  %algorithm = bitcast i8* %call4 to %struct.asn1_object_st**
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !14
  %call5 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %1) #7
  %call6 = call i8* @OBJ_nid2sn(i32 noundef %call5) #7
  %call7 = call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %call6) #7
  %tobool8.not = icmp eq %struct.evp_md_st* %call7, null
  br i1 %tobool8.not, label %if.end21, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %md_ctrl = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %call7, i64 0, i32 12
  %2 = load i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)** %md_ctrl, align 8, !tbaa !17
  %tobool9.not = icmp eq i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)* %2, null
  br i1 %tobool9.not, label %if.end21, label %if.then10

if.then10:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %call12 = call i32 %2(%struct.evp_md_ctx_st* noundef null, i32 noundef 2, i32 noundef 0, i8* noundef nonnull %0) #7
  %cmp13 = icmp sgt i32 %call12, 0
  br i1 %cmp13, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.then10
  %cmp17.not = icmp eq i32 %call12, -2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  br i1 %cmp17.not, label %if.end21, label %cleanup41

cleanup:                                          ; preds = %if.then10
  %3 = load i8*, i8** %micstr, align 8, !tbaa !20
  %call15 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef %3) #7
  %4 = load i8*, i8** %micstr, align 8, !tbaa !20
  call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 173) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  br label %for.inc

if.end21:                                         ; preds = %if.end16, %land.lhs.true, %if.end
  switch i32 %call5, label %sw.default [
    i32 64, label %sw.bb
    i32 4, label %sw.bb23
    i32 672, label %sw.bb25
    i32 673, label %sw.bb27
    i32 674, label %sw.bb29
    i32 809, label %cleanup41.sink.split.loopexit
    i32 982, label %cleanup41.sink.split.loopexit9
    i32 983, label %cleanup41.sink.split
  ]

sw.bb:                                            ; preds = %if.end21
  %call22 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0)) #7
  br label %for.inc

sw.bb23:                                          ; preds = %if.end21
  %call24 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0)) #7
  br label %for.inc

sw.bb25:                                          ; preds = %if.end21
  %call26 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0)) #7
  br label %for.inc

sw.bb27:                                          ; preds = %if.end21
  %call28 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0)) #7
  br label %for.inc

sw.bb29:                                          ; preds = %if.end21
  %call30 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i64 0, i64 0)) #7
  br label %for.inc

sw.default:                                       ; preds = %if.end21
  %tobool37.not = icmp eq i32 %have_unknown.06, 0
  br i1 %tobool37.not, label %if.else, label %for.inc

if.else:                                          ; preds = %sw.default
  %call39 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i64 0, i64 0)) #7
  br label %for.inc

for.inc:                                          ; preds = %cleanup, %sw.default, %sw.bb, %sw.bb23, %sw.bb25, %sw.bb27, %sw.bb29, %if.else
  %have_unknown.1 = phi i32 [ %have_unknown.06, %cleanup ], [ 1, %if.else ], [ %have_unknown.06, %sw.bb29 ], [ %have_unknown.06, %sw.bb27 ], [ %have_unknown.06, %sw.bb25 ], [ %have_unknown.06, %sw.bb23 ], [ %have_unknown.06, %sw.bb ], [ 1, %sw.default ]
  %write_comma.1 = phi i32 [ 1, %cleanup ], [ 1, %if.else ], [ 1, %sw.bb29 ], [ 1, %sw.bb27 ], [ 1, %sw.bb25 ], [ 1, %sw.bb23 ], [ 1, %sw.bb ], [ 0, %sw.default ]
  %inc = add nuw nsw i32 %i.08, 1
  %call1 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #7
  %cmp = icmp slt i32 %inc, %call1
  br i1 %cmp, label %for.body, label %cleanup41, !llvm.loop !21

cleanup41.sink.split.loopexit:                    ; preds = %if.end21
  br label %cleanup41.sink.split

cleanup41.sink.split.loopexit9:                   ; preds = %if.end21
  br label %cleanup41.sink.split

cleanup41.sink.split:                             ; preds = %if.end21, %cleanup41.sink.split.loopexit9, %cleanup41.sink.split.loopexit
  %.sink = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i64 0, i64 0), %cleanup41.sink.split.loopexit ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i64 0, i64 0), %cleanup41.sink.split.loopexit9 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i64 0, i64 0), %if.end21 ]
  %call32 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef %.sink) #7
  br label %cleanup41

cleanup41:                                        ; preds = %for.inc, %if.end16, %cleanup41.sink.split, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_output_data(%struct.bio_st* noundef %out, %struct.bio_st* noundef %data, %struct.ASN1_VALUE_st* noundef %val, i32 noundef %flags, %struct.ASN1_ITEM_st* noundef %it) unnamed_addr #0 {
entry:
  %val.addr = alloca %struct.ASN1_VALUE_st*, align 8
  %sarg = alloca %struct.ASN1_STREAM_ARG_st, align 8
  store %struct.ASN1_VALUE_st* %val, %struct.ASN1_VALUE_st** %val.addr, align 8, !tbaa !20
  %funcs = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 4
  %0 = bitcast i8** %funcs to %struct.ASN1_AUX_st**
  %1 = load %struct.ASN1_AUX_st*, %struct.ASN1_AUX_st** %0, align 8, !tbaa !22
  %2 = bitcast %struct.ASN1_STREAM_ARG_st* %sarg to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #9
  %3 = and i32 %flags, 32832
  %4 = icmp eq i32 %3, 64
  br i1 %4, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @SMIME_crlf_copy(%struct.bio_st* noundef %data, %struct.bio_st* noundef %out, i32 noundef %flags) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq %struct.ASN1_AUX_st* %1, null
  br i1 %tobool3.not, label %if.then6, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %if.end
  %asn1_cb = getelementptr inbounds %struct.ASN1_AUX_st, %struct.ASN1_AUX_st* %1, i64 0, i32 4
  %5 = load i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)*, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)** %asn1_cb, align 8, !tbaa !24
  %tobool5.not = icmp eq i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* %5, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %lor.lhs.false4, %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 354, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.asn1_output_data, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 202, i8* noundef null) #7
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false4
  %out8 = getelementptr inbounds %struct.ASN1_STREAM_ARG_st, %struct.ASN1_STREAM_ARG_st* %sarg, i64 0, i32 0
  store %struct.bio_st* %out, %struct.bio_st** %out8, align 8, !tbaa !26
  %ndef_bio = getelementptr inbounds %struct.ASN1_STREAM_ARG_st, %struct.ASN1_STREAM_ARG_st* %sarg, i64 0, i32 1
  store %struct.bio_st* null, %struct.bio_st** %ndef_bio, align 8, !tbaa !28
  %boundary = getelementptr inbounds %struct.ASN1_STREAM_ARG_st, %struct.ASN1_STREAM_ARG_st* %sarg, i64 0, i32 2
  store i8** null, i8*** %boundary, align 8, !tbaa !29
  %call10 = call i32 %5(i32 noundef 12, %struct.ASN1_VALUE_st** noundef nonnull %val.addr, %struct.ASN1_ITEM_st* noundef nonnull %it, i8* noundef nonnull %2) #7
  %cmp = icmp slt i32 %call10, 1
  br i1 %cmp, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end7
  %6 = load %struct.bio_st*, %struct.bio_st** %ndef_bio, align 8, !tbaa !28
  %call14 = call i32 @SMIME_crlf_copy(%struct.bio_st* noundef %data, %struct.bio_st* noundef %6, i32 noundef %flags) #8
  %7 = load i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)*, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)** %asn1_cb, align 8, !tbaa !24
  %call16 = call i32 %7(i32 noundef 13, %struct.ASN1_VALUE_st** noundef nonnull %val.addr, %struct.ASN1_ITEM_st* noundef nonnull %it, i8* noundef nonnull %2) #7
  %cmp17 = icmp sgt i32 %call16, 0
  %8 = load %struct.bio_st*, %struct.bio_st** %ndef_bio, align 8, !tbaa !28
  %cmp21.not45 = icmp eq %struct.bio_st* %8, %out
  br i1 %cmp21.not45, label %cleanup, label %while.body

while.body:                                       ; preds = %if.end12, %while.body
  %9 = phi %struct.bio_st* [ %call23, %while.body ], [ %8, %if.end12 ]
  %call23 = call %struct.bio_st* @BIO_pop(%struct.bio_st* noundef %9) #7
  %10 = load %struct.bio_st*, %struct.bio_st** %ndef_bio, align 8, !tbaa !28
  %call25 = call i32 @BIO_free(%struct.bio_st* noundef %10) #7
  store %struct.bio_st* %call23, %struct.bio_st** %ndef_bio, align 8, !tbaa !28
  %cmp21.not = icmp eq %struct.bio_st* %call23, %out
  br i1 %cmp21.not, label %cleanup, label %while.body, !llvm.loop !30

cleanup:                                          ; preds = %while.body, %if.end12, %if.end7, %if.then6, %if.then
  %retval.0.shrunk = phi i1 [ true, %if.then ], [ false, %if.then6 ], [ false, %if.end7 ], [ %cmp17, %if.end12 ], [ %cmp17, %while.body ]
  %retval.0 = zext i1 %retval.0.shrunk to i32
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #9
  ret i32 %retval.0
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_ALGOR_sk_type(%struct.stack_st_X509_ALGOR* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_ALGOR* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SMIME_write_ASN1(%struct.bio_st* noundef %bio, %struct.ASN1_VALUE_st* noundef %val, %struct.bio_st* noundef %data, i32 noundef %flags, i32 noundef %ctype_nid, i32 noundef %econt_nid, %struct.stack_st_X509_ALGOR* noundef %mdalgs, %struct.ASN1_ITEM_st* noundef %it) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @SMIME_write_ASN1_ex(%struct.bio_st* noundef %bio, %struct.ASN1_VALUE_st* noundef %val, %struct.bio_st* noundef %data, i32 noundef %flags, i32 noundef %ctype_nid, i32 noundef %econt_nid, %struct.stack_st_X509_ALGOR* noundef %mdalgs, %struct.ASN1_ITEM_st* noundef %it, %struct.ossl_lib_ctx_st* noundef null, i8* undef) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.ASN1_VALUE_st* @SMIME_read_ASN1_ex(%struct.bio_st* noundef %bio, i32 noundef %flags, %struct.bio_st** noundef writeonly %bcont, %struct.ASN1_ITEM_st* noundef %it, %struct.ASN1_VALUE_st** noundef %x, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %parts = alloca %struct.stack_st_BIO*, align 8
  %0 = bitcast %struct.stack_st_BIO** %parts to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.stack_st_BIO* null, %struct.stack_st_BIO** %parts, align 8, !tbaa !20
  %tobool.not = icmp eq %struct.bio_st** %bcont, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.bio_st* null, %struct.bio_st** %bcont, align 8, !tbaa !20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = tail call fastcc %struct.stack_st_MIME_HEADER* @mime_parse_hdr(%struct.bio_st* noundef %bio) #8
  %cmp = icmp eq %struct.stack_st_MIME_HEADER* %call, null
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 408, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.SMIME_read_ASN1_ex, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 207, i8* noundef null) #7
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = tail call fastcc %struct.mime_header_st* @mime_hdr_find(%struct.stack_st_MIME_HEADER* noundef nonnull %call) #8
  %cmp4 = icmp eq %struct.mime_header_st* %call3, null
  br i1 %cmp4, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end2
  %value = getelementptr inbounds %struct.mime_header_st, %struct.mime_header_st* %call3, i64 0, i32 1
  %1 = load i8*, i8** %value, align 8, !tbaa !31
  %cmp5 = icmp eq i8* %1, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %lor.lhs.false, %if.end2
  tail call fastcc void @sk_MIME_HEADER_pop_free(%struct.stack_st_MIME_HEADER* noundef nonnull %call) #8
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 415, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.SMIME_read_ASN1_ex, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 209, i8* noundef null) #7
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %call9 = tail call i32 @strcmp(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0)) #10
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end72

if.then11:                                        ; preds = %if.end7
  %call12 = tail call fastcc %struct.mime_param_st* @mime_param_find(%struct.mime_header_st* noundef nonnull %call3) #8
  %cmp13 = icmp eq %struct.mime_param_st* %call12, null
  br i1 %cmp13, label %if.then16, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %if.then11
  %param_value = getelementptr inbounds %struct.mime_param_st, %struct.mime_param_st* %call12, i64 0, i32 1
  %2 = load i8*, i8** %param_value, align 8, !tbaa !33
  %cmp15 = icmp eq i8* %2, null
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %lor.lhs.false14, %if.then11
  tail call fastcc void @sk_MIME_HEADER_pop_free(%struct.stack_st_MIME_HEADER* noundef nonnull %call) #8
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 426, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.SMIME_read_ASN1_ex, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 211, i8* noundef null) #7
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false14
  %call19 = call fastcc i32 @multi_split(%struct.bio_st* noundef %bio, i32 noundef %flags, i8* noundef nonnull %2, %struct.stack_st_BIO** noundef nonnull %parts) #8
  tail call fastcc void @sk_MIME_HEADER_pop_free(%struct.stack_st_MIME_HEADER* noundef nonnull %call) #8
  %tobool20.not = icmp eq i32 %call19, 0
  %.pre = load %struct.stack_st_BIO*, %struct.stack_st_BIO** %parts, align 8, !tbaa !20
  br i1 %tobool20.not, label %if.then25, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %if.end17
  %call22 = tail call fastcc %struct.stack_st* @ossl_check_const_BIO_sk_type(%struct.stack_st_BIO* noundef %.pre) #8
  %call23 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call22) #7
  %cmp24.not = icmp eq i32 %call23, 2
  br i1 %cmp24.not, label %if.end28, label %if.then25

if.then25:                                        ; preds = %if.end17, %lor.lhs.false21
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 432, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.SMIME_read_ASN1_ex, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 210, i8* noundef null) #7
  %call26 = tail call fastcc %struct.stack_st* @ossl_check_BIO_sk_type(%struct.stack_st_BIO* noundef %.pre) #8
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call26, void (i8*)* noundef bitcast (void (%struct.bio_st*)* @BIO_vfree to void (i8*)*)) #7
  br label %cleanup

if.end28:                                         ; preds = %lor.lhs.false21
  %call30 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call22, i32 noundef 1) #7
  %3 = bitcast i8* %call30 to %struct.bio_st*
  %call31 = tail call fastcc %struct.stack_st_MIME_HEADER* @mime_parse_hdr(%struct.bio_st* noundef %3) #8
  %cmp32 = icmp eq %struct.stack_st_MIME_HEADER* %call31, null
  br i1 %cmp32, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end28
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 441, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.SMIME_read_ASN1_ex, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 208, i8* noundef null) #7
  %call34 = tail call fastcc %struct.stack_st* @ossl_check_BIO_sk_type(%struct.stack_st_BIO* noundef %.pre) #8
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call34, void (i8*)* noundef bitcast (void (%struct.bio_st*)* @BIO_vfree to void (i8*)*)) #7
  br label %cleanup

if.end36:                                         ; preds = %if.end28
  %call37 = tail call fastcc %struct.mime_header_st* @mime_hdr_find(%struct.stack_st_MIME_HEADER* noundef nonnull %call31) #8
  %cmp38 = icmp eq %struct.mime_header_st* %call37, null
  br i1 %cmp38, label %if.then42, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %if.end36
  %value40 = getelementptr inbounds %struct.mime_header_st, %struct.mime_header_st* %call37, i64 0, i32 1
  %4 = load i8*, i8** %value40, align 8, !tbaa !31
  %cmp41 = icmp eq i8* %4, null
  br i1 %cmp41, label %if.then42, label %if.end45

if.then42:                                        ; preds = %lor.lhs.false39, %if.end36
  tail call fastcc void @sk_MIME_HEADER_pop_free(%struct.stack_st_MIME_HEADER* noundef nonnull %call31) #8
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 451, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.SMIME_read_ASN1_ex, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 212, i8* noundef null) #7
  %call43 = tail call fastcc %struct.stack_st* @ossl_check_BIO_sk_type(%struct.stack_st_BIO* noundef %.pre) #8
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call43, void (i8*)* noundef bitcast (void (%struct.bio_st*)* @BIO_vfree to void (i8*)*)) #7
  br label %cleanup

if.end45:                                         ; preds = %lor.lhs.false39
  %call47 = tail call i32 @strcmp(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i64 0, i64 0)) #10
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end56, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end45
  %call50 = tail call i32 @strcmp(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.38, i64 0, i64 0)) #10
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end56, label %if.then52

if.then52:                                        ; preds = %land.lhs.true
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 458, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.SMIME_read_ASN1_ex, i64 0, i64 0)) #7
  %5 = load i8*, i8** %value40, align 8, !tbaa !31
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 213, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i64 0, i64 0), i8* noundef %5) #7
  tail call fastcc void @sk_MIME_HEADER_pop_free(%struct.stack_st_MIME_HEADER* noundef nonnull %call31) #8
  %call54 = tail call fastcc %struct.stack_st* @ossl_check_BIO_sk_type(%struct.stack_st_BIO* noundef %.pre) #8
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call54, void (i8*)* noundef bitcast (void (%struct.bio_st*)* @BIO_vfree to void (i8*)*)) #7
  br label %cleanup

if.end56:                                         ; preds = %land.lhs.true, %if.end45
  tail call fastcc void @sk_MIME_HEADER_pop_free(%struct.stack_st_MIME_HEADER* noundef nonnull %call31) #8
  %call57 = tail call fastcc %struct.ASN1_VALUE_st* @b64_read_asn1(%struct.bio_st* noundef %3, %struct.ASN1_ITEM_st* noundef %it, %struct.ASN1_VALUE_st** noundef %x, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #8
  %cmp58 = icmp eq %struct.ASN1_VALUE_st* %call57, null
  br i1 %cmp58, label %if.then59, label %if.end62

if.then59:                                        ; preds = %if.end56
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 467, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.SMIME_read_ASN1_ex, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 204, i8* noundef null) #7
  %call60 = tail call fastcc %struct.stack_st* @ossl_check_BIO_sk_type(%struct.stack_st_BIO* noundef %.pre) #8
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call60, void (i8*)* noundef bitcast (void (%struct.bio_st*)* @BIO_vfree to void (i8*)*)) #7
  br label %cleanup

if.end62:                                         ; preds = %if.end56
  br i1 %tobool.not, label %if.else, label %if.then64

if.then64:                                        ; preds = %if.end62
  %call66 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call22, i32 noundef 0) #7
  %6 = bitcast %struct.bio_st** %bcont to i8**
  store i8* %call66, i8** %6, align 8, !tbaa !20
  %call67 = tail call i32 @BIO_free(%struct.bio_st* noundef %3) #7
  %call68 = tail call fastcc %struct.stack_st* @ossl_check_BIO_sk_type(%struct.stack_st_BIO* noundef %.pre) #8
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call68) #7
  br label %cleanup

if.else:                                          ; preds = %if.end62
  %call69 = tail call fastcc %struct.stack_st* @ossl_check_BIO_sk_type(%struct.stack_st_BIO* noundef %.pre) #8
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call69, void (i8*)* noundef bitcast (void (%struct.bio_st*)* @BIO_vfree to void (i8*)*)) #7
  br label %cleanup

if.end72:                                         ; preds = %if.end7
  %call74 = tail call i32 @strcmp(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i64 0, i64 0)) #10
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end82, label %land.lhs.true76

land.lhs.true76:                                  ; preds = %if.end72
  %call78 = tail call i32 @strcmp(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i64 0, i64 0)) #10
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end82, label %if.then80

if.then80:                                        ; preds = %land.lhs.true76
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 486, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.SMIME_read_ASN1_ex, i64 0, i64 0)) #7
  %7 = load i8*, i8** %value, align 8, !tbaa !31
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 205, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i64 0, i64 0), i8* noundef %7) #7
  tail call fastcc void @sk_MIME_HEADER_pop_free(%struct.stack_st_MIME_HEADER* noundef nonnull %call) #8
  br label %cleanup

if.end82:                                         ; preds = %land.lhs.true76, %if.end72
  tail call fastcc void @sk_MIME_HEADER_pop_free(%struct.stack_st_MIME_HEADER* noundef nonnull %call) #8
  %call83 = tail call fastcc %struct.ASN1_VALUE_st* @b64_read_asn1(%struct.bio_st* noundef %bio, %struct.ASN1_ITEM_st* noundef %it, %struct.ASN1_VALUE_st** noundef %x, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #8
  %cmp84 = icmp eq %struct.ASN1_VALUE_st* %call83, null
  br i1 %cmp84, label %if.then85, label %cleanup

if.then85:                                        ; preds = %if.end82
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 495, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.SMIME_read_ASN1_ex, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 203, i8* noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end82, %if.then64, %if.else, %if.then85, %if.then80, %if.then59, %if.then52, %if.then42, %if.then33, %if.then25, %if.then16, %if.then6, %if.then1
  %retval.0 = phi %struct.ASN1_VALUE_st* [ null, %if.then1 ], [ null, %if.then6 ], [ null, %if.then16 ], [ null, %if.then25 ], [ null, %if.then33 ], [ null, %if.then42 ], [ null, %if.then52 ], [ null, %if.then59 ], [ null, %if.then80 ], [ null, %if.then85 ], [ %call57, %if.else ], [ %call57, %if.then64 ], [ %call83, %if.end82 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret %struct.ASN1_VALUE_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_MIME_HEADER* @mime_parse_hdr(%struct.bio_st* noundef %bio) unnamed_addr #0 {
entry:
  %linebuf = alloca [1024 x i8], align 16
  %0 = getelementptr inbounds [1024 x i8], [1024 x i8]* %linebuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #9
  %call = tail call fastcc %struct.stack_st_MIME_HEADER* @sk_MIME_HEADER_new() #8
  %cmp = icmp eq %struct.stack_st_MIME_HEADER* %call, null
  br i1 %cmp, label %cleanup, label %while.cond

while.cond:                                       ; preds = %entry, %if.end108
  %mhdr.0 = phi %struct.mime_header_st* [ %mhdr.3, %if.end108 ], [ null, %entry ]
  %save_state.0 = phi i32 [ %save_state.1, %if.end108 ], [ 0, %entry ]
  %call1 = call i32 @BIO_gets(%struct.bio_st* noundef %bio, i8* noundef nonnull %0, i32 noundef 1024) #7
  %cmp2 = icmp sgt i32 %call1, 0
  br i1 %cmp2, label %while.body, label %cleanup

while.body:                                       ; preds = %while.cond
  %tobool.not = icmp eq %struct.mime_header_st* %mhdr.0, null
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %1 = load i8, i8* %0, align 16, !tbaa !13
  %conv = sext i8 %1 to i32
  %call3 = call i32 @ossl_ctype_check(i32 noundef %conv, i32 noundef 8) #7
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.else, label %for.cond.preheader

if.else:                                          ; preds = %land.lhs.true, %while.body
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %land.lhs.true, %if.else
  %state.1.ph = phi i32 [ 1, %if.else ], [ 3, %land.lhs.true ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %q.0 = phi i8* [ %q.1, %for.inc ], [ %0, %for.cond.preheader ]
  %ntmp.0 = phi i8* [ %ntmp.1, %for.inc ], [ null, %for.cond.preheader ]
  %mhdr.1 = phi %struct.mime_header_st* [ %mhdr.2, %for.inc ], [ %mhdr.0, %for.cond.preheader ]
  %p.0 = phi i8* [ %incdec.ptr, %for.inc ], [ %0, %for.cond.preheader ]
  %state.1 = phi i32 [ %state.2, %for.inc ], [ %state.1.ph, %for.cond.preheader ]
  %save_state.1 = phi i32 [ %save_state.2, %for.inc ], [ %save_state.0, %for.cond.preheader ]
  %2 = load i8, i8* %p.0, align 1, !tbaa !13
  switch i8 %2, label %for.body [
    i8 13, label %for.end
    i8 10, label %for.end
    i8 0, label %for.end
  ]

for.body:                                         ; preds = %for.cond
  switch i32 %state.1, label %for.inc [
    i32 1, label %sw.bb
    i32 2, label %sw.bb24
    i32 6, label %sw.bb47
    i32 3, label %sw.bb53
    i32 4, label %sw.bb61
    i32 5, label %sw.bb82
  ]

sw.bb:                                            ; preds = %for.body
  %cmp19 = icmp eq i8 %2, 58
  br i1 %cmp19, label %if.then21, label %for.inc

if.then21:                                        ; preds = %sw.bb
  store i8 0, i8* %p.0, align 1, !tbaa !13
  %call22 = call fastcc i8* @strip_ends(i8* noundef %q.0) #8
  %add.ptr = getelementptr inbounds i8, i8* %p.0, i64 1
  br label %for.inc

sw.bb24:                                          ; preds = %for.body
  switch i8 %2, label %for.inc [
    i8 59, label %if.then28
    i8 40, label %if.then44
  ]

if.then28:                                        ; preds = %sw.bb24
  store i8 0, i8* %p.0, align 1, !tbaa !13
  %call29 = call fastcc i8* @strip_ends(i8* noundef %q.0) #8
  %call30 = call fastcc %struct.mime_header_st* @mime_hdr_new(i8* noundef %ntmp.0, i8* noundef %call29) #8
  %cmp31 = icmp eq %struct.mime_header_st* %call30, null
  br i1 %cmp31, label %err, label %if.end34

if.end34:                                         ; preds = %if.then28
  %call35 = call fastcc i32 @sk_MIME_HEADER_push(%struct.stack_st_MIME_HEADER* noundef nonnull %call, %struct.mime_header_st* noundef nonnull %call30) #8
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %err, label %if.end38

if.end38:                                         ; preds = %if.end34
  %add.ptr39 = getelementptr inbounds i8, i8* %p.0, i64 1
  br label %for.inc

if.then44:                                        ; preds = %sw.bb24
  br label %for.inc

sw.bb47:                                          ; preds = %for.body
  %cmp49 = icmp eq i8 %2, 41
  %spec.select = select i1 %cmp49, i32 %save_state.1, i32 6
  br label %for.inc

sw.bb53:                                          ; preds = %for.body
  %cmp55 = icmp eq i8 %2, 61
  br i1 %cmp55, label %if.then57, label %for.inc

if.then57:                                        ; preds = %sw.bb53
  store i8 0, i8* %p.0, align 1, !tbaa !13
  %call58 = call fastcc i8* @strip_ends(i8* noundef %q.0) #8
  %add.ptr59 = getelementptr inbounds i8, i8* %p.0, i64 1
  br label %for.inc

sw.bb61:                                          ; preds = %for.body
  switch i8 %2, label %for.inc.fold.split [
    i8 59, label %if.then65
    i8 34, label %for.inc
    i8 40, label %if.then78
  ]

if.then65:                                        ; preds = %sw.bb61
  store i8 0, i8* %p.0, align 1, !tbaa !13
  %call66 = call fastcc i8* @strip_ends(i8* noundef %q.0) #8
  call fastcc void @mime_hdr_addparam(%struct.mime_header_st* noundef %mhdr.1, i8* noundef %ntmp.0, i8* noundef %call66) #8
  %add.ptr68 = getelementptr inbounds i8, i8* %p.0, i64 1
  br label %for.inc

if.then78:                                        ; preds = %sw.bb61
  br label %for.inc

sw.bb82:                                          ; preds = %for.body
  %cmp84 = icmp eq i8 %2, 34
  %spec.select178 = select i1 %cmp84, i32 4, i32 5
  br label %for.inc

for.inc.fold.split:                               ; preds = %sw.bb61
  br label %for.inc

for.inc:                                          ; preds = %sw.bb82, %sw.bb47, %sw.bb61, %for.inc.fold.split, %sw.bb24, %for.body, %if.then21, %sw.bb, %if.then44, %if.end38, %if.then57, %sw.bb53, %if.then78, %if.then65
  %q.1 = phi i8* [ %q.0, %for.body ], [ %add.ptr68, %if.then65 ], [ %q.0, %if.then78 ], [ %add.ptr59, %if.then57 ], [ %q.0, %sw.bb53 ], [ %add.ptr39, %if.end38 ], [ %q.0, %if.then44 ], [ %add.ptr, %if.then21 ], [ %q.0, %sw.bb ], [ %q.0, %sw.bb24 ], [ %q.0, %sw.bb47 ], [ %q.0, %sw.bb61 ], [ %q.0, %for.inc.fold.split ], [ %q.0, %sw.bb82 ]
  %ntmp.1 = phi i8* [ %ntmp.0, %for.body ], [ null, %if.then65 ], [ %ntmp.0, %if.then78 ], [ %call58, %if.then57 ], [ %ntmp.0, %sw.bb53 ], [ null, %if.end38 ], [ %ntmp.0, %if.then44 ], [ %call22, %if.then21 ], [ %ntmp.0, %sw.bb ], [ %ntmp.0, %sw.bb24 ], [ %ntmp.0, %sw.bb47 ], [ %ntmp.0, %sw.bb61 ], [ %ntmp.0, %for.inc.fold.split ], [ %ntmp.0, %sw.bb82 ]
  %mhdr.2 = phi %struct.mime_header_st* [ %mhdr.1, %for.body ], [ %mhdr.1, %if.then65 ], [ %mhdr.1, %if.then78 ], [ %mhdr.1, %if.then57 ], [ %mhdr.1, %sw.bb53 ], [ %call30, %if.end38 ], [ %mhdr.1, %if.then44 ], [ %mhdr.1, %if.then21 ], [ %mhdr.1, %sw.bb ], [ %mhdr.1, %sw.bb24 ], [ %mhdr.1, %sw.bb47 ], [ %mhdr.1, %sw.bb61 ], [ %mhdr.1, %for.inc.fold.split ], [ %mhdr.1, %sw.bb82 ]
  %state.2 = phi i32 [ %state.1, %for.body ], [ 3, %if.then65 ], [ 6, %if.then78 ], [ 4, %if.then57 ], [ 3, %sw.bb53 ], [ 3, %if.end38 ], [ 6, %if.then44 ], [ 2, %if.then21 ], [ 1, %sw.bb ], [ 2, %sw.bb24 ], [ %spec.select, %sw.bb47 ], [ 5, %sw.bb61 ], [ 4, %for.inc.fold.split ], [ %spec.select178, %sw.bb82 ]
  %save_state.2 = phi i32 [ %save_state.1, %for.body ], [ %save_state.1, %if.then65 ], [ 4, %if.then78 ], [ %save_state.1, %if.then57 ], [ %save_state.1, %sw.bb53 ], [ %save_state.1, %if.end38 ], [ 2, %if.then44 ], [ %save_state.1, %if.then21 ], [ %save_state.1, %sw.bb ], [ %save_state.1, %sw.bb24 ], [ %save_state.1, %sw.bb47 ], [ %save_state.1, %sw.bb61 ], [ %save_state.1, %for.inc.fold.split ], [ %save_state.1, %sw.bb82 ]
  %incdec.ptr = getelementptr inbounds i8, i8* %p.0, i64 1
  br label %for.cond, !llvm.loop !35

for.end:                                          ; preds = %for.cond, %for.cond, %for.cond
  switch i32 %state.1, label %if.end108 [
    i32 2, label %if.then90
    i32 4, label %if.then104
  ]

if.then90:                                        ; preds = %for.end
  %call91 = call fastcc i8* @strip_ends(i8* noundef %q.0) #8
  %call92 = call fastcc %struct.mime_header_st* @mime_hdr_new(i8* noundef %ntmp.0, i8* noundef %call91) #8
  %cmp93 = icmp eq %struct.mime_header_st* %call92, null
  br i1 %cmp93, label %err, label %if.end96

if.end96:                                         ; preds = %if.then90
  %call97 = call fastcc i32 @sk_MIME_HEADER_push(%struct.stack_st_MIME_HEADER* noundef nonnull %call, %struct.mime_header_st* noundef nonnull %call92) #8
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %err, label %if.end108

if.then104:                                       ; preds = %for.end
  %call105 = call fastcc i8* @strip_ends(i8* noundef %q.0) #8
  call fastcc void @mime_hdr_addparam(%struct.mime_header_st* noundef %mhdr.1, i8* noundef %ntmp.0, i8* noundef %call105) #8
  br label %if.end108

if.end108:                                        ; preds = %for.end, %if.end96, %if.then104
  %mhdr.3 = phi %struct.mime_header_st* [ %mhdr.1, %if.then104 ], [ %call92, %if.end96 ], [ %mhdr.1, %for.end ]
  %cmp110 = icmp eq i8* %p.0, %0
  br i1 %cmp110, label %cleanup, label %while.cond, !llvm.loop !36

err:                                              ; preds = %if.end96, %if.then90, %if.end34, %if.then28
  %new_hdr.0 = phi %struct.mime_header_st* [ %call30, %if.end34 ], [ null, %if.then28 ], [ %call92, %if.end96 ], [ null, %if.then90 ]
  call void @mime_hdr_free(%struct.mime_header_st* noundef %new_hdr.0) #8
  call fastcc void @sk_MIME_HEADER_pop_free(%struct.stack_st_MIME_HEADER* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %while.cond, %if.end108, %entry, %err
  %retval.0 = phi %struct.stack_st_MIME_HEADER* [ null, %err ], [ null, %entry ], [ %call, %if.end108 ], [ %call, %while.cond ]
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #9
  ret %struct.stack_st_MIME_HEADER* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.mime_header_st* @mime_hdr_find(%struct.stack_st_MIME_HEADER* noundef %hdrs) unnamed_addr #0 {
entry:
  %htmp = alloca %struct.mime_header_st, align 8
  %0 = bitcast %struct.mime_header_st* %htmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #9
  %name1 = getelementptr inbounds %struct.mime_header_st, %struct.mime_header_st* %htmp, i64 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i8** %name1, align 8, !tbaa !37
  %value = getelementptr inbounds %struct.mime_header_st, %struct.mime_header_st* %htmp, i64 0, i32 1
  store i8* null, i8** %value, align 8, !tbaa !31
  %params = getelementptr inbounds %struct.mime_header_st, %struct.mime_header_st* %htmp, i64 0, i32 2
  store %struct.stack_st_MIME_PARAM* null, %struct.stack_st_MIME_PARAM** %params, align 8, !tbaa !38
  %call = call fastcc i32 @sk_MIME_HEADER_find(%struct.stack_st_MIME_HEADER* noundef %hdrs, %struct.mime_header_st* noundef nonnull %htmp) #8
  %call2 = call fastcc %struct.mime_header_st* @sk_MIME_HEADER_value(%struct.stack_st_MIME_HEADER* noundef %hdrs, i32 noundef %call) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #9
  ret %struct.mime_header_st* %call2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_MIME_HEADER_pop_free(%struct.stack_st_MIME_HEADER* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_MIME_HEADER* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.mime_header_st*)* @mime_hdr_free to void (i8*)*)) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @mime_hdr_free(%struct.mime_header_st* noundef %hdr) #0 {
entry:
  %cmp = icmp eq %struct.mime_header_st* %hdr, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.mime_header_st, %struct.mime_header_st* %hdr, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8, !tbaa !37
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 945) #7
  %value = getelementptr inbounds %struct.mime_header_st, %struct.mime_header_st* %hdr, i64 0, i32 1
  %1 = load i8*, i8** %value, align 8, !tbaa !31
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 946) #7
  %params = getelementptr inbounds %struct.mime_header_st, %struct.mime_header_st* %hdr, i64 0, i32 2
  %2 = load %struct.stack_st_MIME_PARAM*, %struct.stack_st_MIME_PARAM** %params, align 8, !tbaa !38
  %tobool.not = icmp eq %struct.stack_st_MIME_PARAM* %2, null
  br i1 %tobool.not, label %if.end3, label %if.then1

if.then1:                                         ; preds = %if.end
  tail call fastcc void @sk_MIME_PARAM_pop_free(%struct.stack_st_MIME_PARAM* noundef nonnull %2) #8
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end
  %3 = bitcast %struct.mime_header_st* %hdr to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %3, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 949) #7
  br label %return

return:                                           ; preds = %entry, %if.end3
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.mime_param_st* @mime_param_find(%struct.mime_header_st* nocapture noundef readonly %hdr) unnamed_addr #0 {
entry:
  %param = alloca %struct.mime_param_st, align 8
  %0 = bitcast %struct.mime_param_st* %param to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #9
  %param_name = getelementptr inbounds %struct.mime_param_st, %struct.mime_param_st* %param, i64 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0), i8** %param_name, align 8, !tbaa !39
  %param_value = getelementptr inbounds %struct.mime_param_st, %struct.mime_param_st* %param, i64 0, i32 1
  store i8* null, i8** %param_value, align 8, !tbaa !33
  %params = getelementptr inbounds %struct.mime_header_st, %struct.mime_header_st* %hdr, i64 0, i32 2
  %1 = load %struct.stack_st_MIME_PARAM*, %struct.stack_st_MIME_PARAM** %params, align 8, !tbaa !38
  %call = call fastcc i32 @sk_MIME_PARAM_find(%struct.stack_st_MIME_PARAM* noundef %1, %struct.mime_param_st* noundef nonnull %param) #8
  %2 = load %struct.stack_st_MIME_PARAM*, %struct.stack_st_MIME_PARAM** %params, align 8, !tbaa !38
  %call2 = call fastcc %struct.mime_param_st* @sk_MIME_PARAM_value(%struct.stack_st_MIME_PARAM* noundef %2, i32 noundef %call) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #9
  ret %struct.mime_param_st* %call2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @multi_split(%struct.bio_st* noundef %bio, i32 noundef %flags, i8* noundef %bound, %struct.stack_st_BIO** nocapture noundef writeonly %ret) unnamed_addr #0 {
entry:
  %linebuf = alloca [1024 x i8], align 16
  %len = alloca i32, align 4
  %0 = getelementptr inbounds [1024 x i8], [1024 x i8]* %linebuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #9
  %1 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #9
  %call = tail call i64 @strlen(i8* noundef %bound) #10
  %conv = trunc i64 %call to i32
  %call1 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #7
  %2 = bitcast %struct.stack_st* %call1 to %struct.stack_st_BIO*
  %3 = bitcast %struct.stack_st_BIO** %ret to %struct.stack_st**
  store %struct.stack_st* %call1, %struct.stack_st** %3, align 8, !tbaa !20
  %cmp = icmp eq %struct.stack_st* %call1, null
  br i1 %cmp, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %call3109 = call i32 @BIO_get_line(%struct.bio_st* noundef %bio, i8* noundef nonnull %0, i32 noundef 1024) #7
  store i32 %call3109, i32* %len, align 4, !tbaa !7
  %cmp4110 = icmp sgt i32 %call3109, 0
  br i1 %cmp4110, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %4 = and i32 %flags, 2176
  %5 = icmp eq i32 %4, 128
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end72
  %call3115 = phi i32 [ %call3109, %while.body.lr.ph ], [ %call3, %if.end72 ]
  %first.0114 = phi i8 [ 1, %while.body.lr.ph ], [ %first.2, %if.end72 ]
  %part.0113 = phi i8 [ 0, %while.body.lr.ph ], [ %part.1, %if.end72 ]
  %bpart.0112 = phi %struct.bio_st* [ null, %while.body.lr.ph ], [ %bpart.2, %if.end72 ]
  %eol.0111 = phi i32 [ 0, %while.body.lr.ph ], [ %eol.1, %if.end72 ]
  %call7 = call fastcc i32 @mime_bound_check(i8* noundef nonnull %0, i32 noundef %call3115, i8* noundef %bound, i32 noundef %conv) #8
  %trunc = trunc i32 %call7 to i8
  switch i8 %trunc, label %if.else23 [
    i8 1, label %if.then12
    i8 2, label %if.then16
  ]

if.then12:                                        ; preds = %while.body
  %inc = add i8 %part.0113, 1
  br label %if.end72

if.then16:                                        ; preds = %while.body
  %call17 = call fastcc %struct.stack_st* @ossl_check_BIO_sk_type(%struct.stack_st_BIO* noundef nonnull %2) #8
  %6 = bitcast %struct.bio_st* %bpart.0112 to i8*
  %call19 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call17, i8* noundef %6) #7
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %if.then20, label %cleanup

if.then20:                                        ; preds = %if.then16
  %call21 = call i32 @BIO_free(%struct.bio_st* noundef %bpart.0112) #7
  br label %cleanup

if.else23:                                        ; preds = %while.body
  %cmp25.not = icmp eq i8 %part.0113, 0
  br i1 %cmp25.not, label %if.end72, label %if.then27

if.then27:                                        ; preds = %if.else23
  %call29 = call fastcc i32 @strip_eol(i8* noundef nonnull %0, i32* noundef nonnull %len, i32 noundef %flags) #8
  %tobool30.not = icmp eq i8 %first.0114, 0
  br i1 %tobool30.not, label %if.else49, label %if.then31

if.then31:                                        ; preds = %if.then27
  %tobool32.not = icmp eq %struct.bio_st* %bpart.0112, null
  br i1 %tobool32.not, label %if.end41, label %if.then33

if.then33:                                        ; preds = %if.then31
  %call34 = call fastcc %struct.stack_st* @ossl_check_BIO_sk_type(%struct.stack_st_BIO* noundef nonnull %2) #8
  %7 = bitcast %struct.bio_st* %bpart.0112 to i8*
  %call36 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call34, i8* noundef nonnull %7) #7
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.then33
  %call39 = call i32 @BIO_free(%struct.bio_st* noundef nonnull %bpart.0112) #7
  br label %cleanup

if.end41:                                         ; preds = %if.then33, %if.then31
  %call42 = call %struct.bio_method_st* @BIO_s_mem() #7
  %call43 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call42) #7
  %cmp44 = icmp eq %struct.bio_st* %call43, null
  br i1 %cmp44, label %cleanup, label %if.end47

if.end47:                                         ; preds = %if.end41
  %call48 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call43, i32 noundef 130, i64 noundef 0, i8* noundef null) #7
  br label %if.end63

if.else49:                                        ; preds = %if.then27
  %tobool50.not = icmp eq i32 %eol.0111, 0
  br i1 %tobool50.not, label %if.end63, label %if.then51

if.then51:                                        ; preds = %if.else49
  br i1 %5, label %if.else59, label %if.then57

if.then57:                                        ; preds = %if.then51
  %call58 = call i32 @BIO_write(%struct.bio_st* noundef %bpart.0112, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 noundef 2) #7
  br label %if.end63

if.else59:                                        ; preds = %if.then51
  %call60 = call i32 @BIO_write(%struct.bio_st* noundef %bpart.0112, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 noundef 1) #7
  br label %if.end63

if.end63:                                         ; preds = %if.else49, %if.else59, %if.then57, %if.end47
  %bpart.1 = phi %struct.bio_st* [ %call43, %if.end47 ], [ %bpart.0112, %if.then57 ], [ %bpart.0112, %if.else59 ], [ %bpart.0112, %if.else49 ]
  %8 = load i32, i32* %len, align 4, !tbaa !7
  %cmp64 = icmp sgt i32 %8, 0
  br i1 %cmp64, label %if.then66, label %if.end72

if.then66:                                        ; preds = %if.end63
  %call68 = call i32 @BIO_write(%struct.bio_st* noundef %bpart.1, i8* noundef nonnull %0, i32 noundef %8) #7
  br label %if.end72

if.end72:                                         ; preds = %if.end63, %if.then66, %if.else23, %if.then12
  %eol.1 = phi i32 [ %eol.0111, %if.then12 ], [ %call29, %if.then66 ], [ %call29, %if.end63 ], [ %eol.0111, %if.else23 ]
  %bpart.2 = phi %struct.bio_st* [ %bpart.0112, %if.then12 ], [ %bpart.1, %if.then66 ], [ %bpart.1, %if.end63 ], [ %bpart.0112, %if.else23 ]
  %part.1 = phi i8 [ %inc, %if.then12 ], [ %part.0113, %if.then66 ], [ %part.0113, %if.end63 ], [ 0, %if.else23 ]
  %first.2 = phi i8 [ 1, %if.then12 ], [ 0, %if.then66 ], [ 0, %if.end63 ], [ %first.0114, %if.else23 ]
  %call3 = call i32 @BIO_get_line(%struct.bio_st* noundef %bio, i8* noundef nonnull %0, i32 noundef 1024) #7
  store i32 %call3, i32* %len, align 4, !tbaa !7
  %cmp4 = icmp sgt i32 %call3, 0
  br i1 %cmp4, label %while.body, label %while.end, !llvm.loop !40

while.end:                                        ; preds = %if.end72, %while.cond.preheader
  %bpart.0.lcssa = phi %struct.bio_st* [ null, %while.cond.preheader ], [ %bpart.2, %if.end72 ]
  %call73 = call i32 @BIO_free(%struct.bio_st* noundef %bpart.0.lcssa) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then16, %entry, %while.end, %if.then38, %if.then20
  %retval.0 = phi i32 [ 0, %if.then20 ], [ 0, %if.then38 ], [ 0, %while.end ], [ 0, %entry ], [ 1, %if.then16 ], [ 0, %if.end41 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_BIO_sk_type(%struct.stack_st_BIO* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_BIO* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_BIO_sk_type(%struct.stack_st_BIO* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_BIO* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @BIO_vfree(%struct.bio_st* noundef) #2

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ASN1_VALUE_st* @b64_read_asn1(%struct.bio_st* noundef %bio, %struct.ASN1_ITEM_st* noundef %it, %struct.ASN1_VALUE_st** noundef %x, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_f_base64() #7
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #7
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 140, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.b64_read_asn1, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.bio_st* @BIO_push(%struct.bio_st* noundef nonnull %call1, %struct.bio_st* noundef %bio) #7
  %0 = bitcast %struct.ASN1_VALUE_st** %x to i8*
  %call3 = tail call i8* @ASN1_item_d2i_bio_ex(%struct.ASN1_ITEM_st* noundef %it, %struct.bio_st* noundef %call2, i8* noundef %0, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #7
  %1 = bitcast i8* %call3 to %struct.ASN1_VALUE_st*
  %tobool.not = icmp eq i8* %call3, null
  br i1 %tobool.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 146, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.b64_read_asn1, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 110, i8* noundef null) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %call6 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call2, i32 noundef 11, i64 noundef 0, i8* noundef null) #7
  %call7 = tail call %struct.bio_st* @BIO_pop(%struct.bio_st* noundef %call2) #7
  %call8 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then
  %retval.0 = phi %struct.ASN1_VALUE_st* [ null, %if.then ], [ %1, %if.end5 ]
  ret %struct.ASN1_VALUE_st* %retval.0
}

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ASN1_VALUE_st* @SMIME_read_ASN1(%struct.bio_st* noundef %bio, %struct.bio_st** noundef %bcont, %struct.ASN1_ITEM_st* noundef %it) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_VALUE_st* @SMIME_read_ASN1_ex(%struct.bio_st* noundef %bio, i32 noundef 0, %struct.bio_st** noundef %bcont, %struct.ASN1_ITEM_st* noundef %it, %struct.ASN1_VALUE_st** noundef null, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #8
  ret %struct.ASN1_VALUE_st* %call
}

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

declare %struct.bio_method_st* @BIO_f_buffer() local_unnamed_addr #2

declare %struct.bio_st* @BIO_push(%struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_gets(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc i32 @strip_eol(i8* nocapture noundef readonly %linebuf, i32* nocapture noundef %plen, i32 noundef %flags) unnamed_addr #5 {
entry:
  %0 = load i32, i32* %plen, align 4, !tbaa !7
  %and = and i32 %flags, 128
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end22, label %if.then

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %0, 1
  br i1 %cmp1, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %sub = add nsw i32 %0, -1
  %1 = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, i8* %linebuf, i64 %1
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !13
  %cmp2.not = icmp eq i8 %2, 10
  br i1 %cmp2.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %and5 = and i32 %flags, 2048
  %cmp6.not = icmp eq i32 %and5, 0
  br i1 %cmp6.not, label %cleanup.sink.split, label %if.then8

if.then8:                                         ; preds = %if.end
  %cmp9 = icmp ult i32 %0, 2
  br i1 %cmp9, label %cleanup, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %if.then8
  %sub12 = add nsw i32 %0, -2
  %3 = zext i32 %sub12 to i64
  %arrayidx14 = getelementptr inbounds i8, i8* %linebuf, i64 %3
  %4 = load i8, i8* %arrayidx14, align 1, !tbaa !13
  %cmp16.not = icmp eq i8 %4, 13
  br i1 %cmp16.not, label %lor.lhs.false11.if.end20_crit_edge, label %cleanup

lor.lhs.false11.if.end20_crit_edge:               ; preds = %lor.lhs.false11
  %.pre = add nsw i32 %0, -2
  br label %cleanup.sink.split

if.end22:                                         ; preds = %entry
  %cmp2476 = icmp sgt i32 %0, 0
  br i1 %cmp2476, label %for.body.lr.ph, label %cleanup.sink.split

for.body.lr.ph:                                   ; preds = %if.end22
  %idx.ext86 = zext i32 %0 to i64
  %add.ptr = getelementptr inbounds i8, i8* %linebuf, i64 %idx.ext86
  %and30 = and i32 %flags, 524288
  %cmp31 = icmp eq i32 %and30, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %add.ptr.pn = phi i8* [ %add.ptr, %for.body.lr.ph ], [ %p.080, %for.inc ]
  %is_eol.079 = phi i32 [ 0, %for.body.lr.ph ], [ %is_eol.1, %for.inc ]
  %len.177 = phi i32 [ %0, %for.body.lr.ph ], [ %dec46, %for.inc ]
  %p.080 = getelementptr inbounds i8, i8* %add.ptr.pn, i64 -1
  %5 = load i8, i8* %p.080, align 1, !tbaa !13
  %cmp27 = icmp eq i8 %5, 10
  br i1 %cmp27, label %for.inc, label %if.else

if.else:                                          ; preds = %for.body
  %tobool.not = icmp eq i32 %is_eol.079, 0
  br i1 %tobool.not, label %if.else38, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %cmp35 = icmp ne i8 %5, 32
  %or.cond = select i1 %cmp31, i1 true, i1 %cmp35
  %cmp40 = icmp ne i8 %5, 13
  %or.cond50 = select i1 %or.cond, i1 %cmp40, i1 false
  br i1 %or.cond50, label %cleanup.sink.split, label %for.inc

if.else38:                                        ; preds = %if.else
  %cmp40.old.not = icmp eq i8 %5, 13
  br i1 %cmp40.old.not, label %for.inc, label %cleanup.sink.split

for.inc:                                          ; preds = %for.body, %if.else38, %land.lhs.true
  %is_eol.1 = phi i32 [ 1, %land.lhs.true ], [ 0, %if.else38 ], [ 1, %for.body ]
  %dec46 = add nsw i32 %len.177, -1
  %cmp24 = icmp sgt i32 %len.177, 1
  br i1 %cmp24, label %for.body, label %cleanup.sink.split, !llvm.loop !41

cleanup.sink.split:                               ; preds = %land.lhs.true, %if.else38, %for.inc, %if.end22, %if.end, %lor.lhs.false11.if.end20_crit_edge
  %len.1.lcssa.sink = phi i32 [ %.pre, %lor.lhs.false11.if.end20_crit_edge ], [ %sub, %if.end ], [ %0, %if.end22 ], [ %len.177, %land.lhs.true ], [ %len.177, %if.else38 ], [ 0, %for.inc ]
  %retval.0.ph = phi i32 [ 1, %lor.lhs.false11.if.end20_crit_edge ], [ 1, %if.end ], [ 0, %if.end22 ], [ 1, %land.lhs.true ], [ 0, %if.else38 ], [ %is_eol.1, %for.inc ]
  store i32 %len.1.lcssa.sink, i32* %plen, align 4, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then8, %lor.lhs.false11, %if.then, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %if.then ], [ 0, %lor.lhs.false11 ], [ 0, %if.then8 ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SMIME_text(%struct.bio_st* noundef %in, %struct.bio_st* noundef %out) local_unnamed_addr #0 {
entry:
  %iobuf = alloca [4096 x i8], align 16
  %0 = getelementptr inbounds [4096 x i8], [4096 x i8]* %iobuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %0) #9
  %call = tail call fastcc %struct.stack_st_MIME_HEADER* @mime_parse_hdr(%struct.bio_st* noundef %in) #8
  %cmp = icmp eq %struct.stack_st_MIME_HEADER* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 563, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.SMIME_text, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 207, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc %struct.mime_header_st* @mime_hdr_find(%struct.stack_st_MIME_HEADER* noundef nonnull %call) #8
  %cmp2 = icmp eq %struct.mime_header_st* %call1, null
  br i1 %cmp2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %value = getelementptr inbounds %struct.mime_header_st, %struct.mime_header_st* %call1, i64 0, i32 1
  %1 = load i8*, i8** %value, align 8, !tbaa !31
  %cmp3 = icmp eq i8* %1, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 568, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.SMIME_text, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 206, i8* noundef null) #7
  tail call fastcc void @sk_MIME_HEADER_pop_free(%struct.stack_st_MIME_HEADER* noundef nonnull %call) #8
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %call7 = tail call i32 @strcmp(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i64 0, i64 0)) #10
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end5
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 573, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.SMIME_text, i64 0, i64 0)) #7
  %2 = load i8*, i8** %value, align 8, !tbaa !31
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 205, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i64 0, i64 0), i8* noundef %2) #7
  tail call fastcc void @sk_MIME_HEADER_pop_free(%struct.stack_st_MIME_HEADER* noundef nonnull %call) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  tail call fastcc void @sk_MIME_HEADER_pop_free(%struct.stack_st_MIME_HEADER* noundef nonnull %call) #8
  %call1131 = call i32 @BIO_read(%struct.bio_st* noundef %in, i8* noundef nonnull %0, i32 noundef 4096) #7
  %cmp1232 = icmp sgt i32 %call1131, 0
  br i1 %cmp1232, label %while.body, label %while.end

while.body:                                       ; preds = %if.end10, %while.body
  %call1133 = phi i32 [ %call11, %while.body ], [ %call1131, %if.end10 ]
  %call14 = call i32 @BIO_write(%struct.bio_st* noundef %out, i8* noundef nonnull %0, i32 noundef %call1133) #7
  %call11 = call i32 @BIO_read(%struct.bio_st* noundef %in, i8* noundef nonnull %0, i32 noundef 4096) #7
  %cmp12 = icmp sgt i32 %call11, 0
  br i1 %cmp12, label %while.body, label %while.end, !llvm.loop !42

while.end:                                        ; preds = %while.body, %if.end10
  %call11.lcssa = phi i32 [ %call1131, %if.end10 ], [ %call11, %while.body ]
  %cmp15.not = icmp eq i32 %call11.lcssa, 0
  %. = zext i1 %cmp15.not to i32
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then8, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then8 ], [ %., %while.end ]
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare %struct.bio_method_st* @BIO_f_base64() local_unnamed_addr #2

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #2

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @ASN1_item_d2i_bio_ex(%struct.ASN1_ITEM_st* noundef, %struct.bio_st* noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #4

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare i32 @BIO_get_line(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal fastcc i32 @mime_bound_check(i8* noundef readonly %line, i32 noundef %linelen, i8* noundef %bound, i32 noundef %blen) unnamed_addr #6 {
entry:
  %cmp1 = icmp eq i32 %blen, -1
  br i1 %cmp1, label %if.then3, label %if.end6

if.then3:                                         ; preds = %entry
  %call4 = tail call i64 @strlen(i8* noundef %bound) #10
  %conv5 = trunc i64 %call4 to i32
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %entry
  %blen.addr.0 = phi i32 [ %conv5, %if.then3 ], [ %blen, %entry ]
  %add = add nsw i32 %blen.addr.0, 2
  %cmp7 = icmp sgt i32 %add, %linelen
  br i1 %cmp7, label %return, label %if.end10

if.end10:                                         ; preds = %if.end6
  %call11 = tail call i32 @strncmp(i8* noundef %line, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0), i64 noundef 2) #10
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %land.lhs.true, label %return

land.lhs.true:                                    ; preds = %if.end10
  %add.ptr = getelementptr inbounds i8, i8* %line, i64 2
  %conv14 = sext i32 %blen.addr.0 to i64
  %call15 = tail call i32 @strncmp(i8* noundef nonnull %add.ptr, i8* noundef %bound, i64 noundef %conv14) #10
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then18, label %return

if.then18:                                        ; preds = %land.lhs.true
  %add.ptr19 = getelementptr inbounds i8, i8* %line, i64 %conv14
  %add.ptr20 = getelementptr inbounds i8, i8* %add.ptr19, i64 2
  %call21 = tail call i32 @strncmp(i8* noundef nonnull %add.ptr20, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0), i64 noundef 2) #10
  %cmp22 = icmp eq i32 %call21, 0
  %. = select i1 %cmp22, i32 2, i32 1
  br label %return

return:                                           ; preds = %if.end10, %land.lhs.true, %if.then18, %if.end6
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %., %if.then18 ], [ 0, %land.lhs.true ], [ 0, %if.end10 ]
  ret i32 %retval.0
}

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_MIME_HEADER* @sk_MIME_HEADER_new() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (%struct.mime_header_st**, %struct.mime_header_st**)* @mime_hdr_cmp to i32 (i8*, i8*)*)) #7
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_MIME_HEADER*
  ret %struct.stack_st_MIME_HEADER* %0
}

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal i32 @mime_hdr_cmp(%struct.mime_header_st** nocapture noundef readonly %a, %struct.mime_header_st** nocapture noundef readonly %b) #6 {
entry:
  %0 = load %struct.mime_header_st*, %struct.mime_header_st** %a, align 8, !tbaa !20
  %name = getelementptr inbounds %struct.mime_header_st, %struct.mime_header_st* %0, i64 0, i32 0
  %1 = load i8*, i8** %name, align 8, !tbaa !37
  %cmp = icmp eq i8* %1, null
  %.pre = load %struct.mime_header_st*, %struct.mime_header_st** %b, align 8, !tbaa !20
  %name5.phi.trans.insert = getelementptr inbounds %struct.mime_header_st, %struct.mime_header_st* %.pre, i64 0, i32 0
  %.pre15 = load i8*, i8** %name5.phi.trans.insert, align 8, !tbaa !37
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  %phi.cmp = icmp ne i8* %.pre15, null
  %phi.cast = sext i1 %phi.cmp to i32
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %cmp2 = icmp eq i8* %.pre15, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %lor.lhs.false
  %2 = phi i32 [ %phi.cast, %entry.if.then_crit_edge ], [ 0, %lor.lhs.false ]
  %cmp4 = icmp ne i8* %1, null
  %conv = zext i1 %cmp4 to i32
  %sub = add nsw i32 %2, %conv
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @strcmp(i8* noundef nonnull %1, i8* noundef nonnull %.pre15) #10
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %sub, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

declare i32 @ossl_ctype_check(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @strip_ends(i8* noundef %name) unnamed_addr #0 {
entry:
  %call = tail call fastcc i8* @strip_start(i8* noundef %name) #8
  %call1 = tail call fastcc i8* @strip_end(i8* noundef %call) #8
  ret i8* %call1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.mime_header_st* @mime_hdr_new(i8* noundef %name, i8* noundef %value) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i8* %name, null
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %name, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 838) #7
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then
  %0 = load i8, i8* %call, align 1, !tbaa !13
  %tobool2.not62 = icmp eq i8 %0, 0
  br i1 %tobool2.not62, label %if.end5, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %1 = phi i8 [ %2, %for.body ], [ %0, %for.cond.preheader ]
  %p.063 = phi i8* [ %incdec.ptr, %for.body ], [ %call, %for.cond.preheader ]
  %conv = sext i8 %1 to i32
  %call3 = tail call i32 @ossl_tolower(i32 noundef %conv) #7
  %conv4 = trunc i32 %call3 to i8
  store i8 %conv4, i8* %p.063, align 1, !tbaa !13
  %incdec.ptr = getelementptr inbounds i8, i8* %p.063, i64 1
  %2 = load i8, i8* %incdec.ptr, align 1, !tbaa !13
  %tobool2.not = icmp eq i8 %2, 0
  br i1 %tobool2.not, label %if.end5, label %for.body, !llvm.loop !43

if.end5:                                          ; preds = %for.body, %for.cond.preheader, %entry
  %tmpname.0 = phi i8* [ null, %entry ], [ %call, %for.cond.preheader ], [ %call, %for.body ]
  %tobool6.not = icmp eq i8* %value, null
  br i1 %tobool6.not, label %if.end22, label %if.then7

if.then7:                                         ; preds = %if.end5
  %call8 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %value, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 844) #7
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %err, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %if.then7
  %3 = load i8, i8* %call8, align 1, !tbaa !13
  %tobool14.not64 = icmp eq i8 %3, 0
  br i1 %tobool14.not64, label %if.end22, label %for.body15

for.body15:                                       ; preds = %for.cond13.preheader, %for.body15
  %4 = phi i8 [ %5, %for.body15 ], [ %3, %for.cond13.preheader ]
  %p.165 = phi i8* [ %incdec.ptr20, %for.body15 ], [ %call8, %for.cond13.preheader ]
  %conv16 = sext i8 %4 to i32
  %call17 = tail call i32 @ossl_tolower(i32 noundef %conv16) #7
  %conv18 = trunc i32 %call17 to i8
  store i8 %conv18, i8* %p.165, align 1, !tbaa !13
  %incdec.ptr20 = getelementptr inbounds i8, i8* %p.165, i64 1
  %5 = load i8, i8* %incdec.ptr20, align 1, !tbaa !13
  %tobool14.not = icmp eq i8 %5, 0
  br i1 %tobool14.not, label %if.end22, label %for.body15, !llvm.loop !44

if.end22:                                         ; preds = %for.body15, %for.cond13.preheader, %if.end5
  %tmpval.0 = phi i8* [ null, %if.end5 ], [ %call8, %for.cond13.preheader ], [ %call8, %for.body15 ]
  %call23 = tail call i8* @CRYPTO_malloc(i64 noundef 24, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 849) #7
  %cmp24 = icmp eq i8* %call23, null
  br i1 %cmp24, label %err, label %if.end27

if.end27:                                         ; preds = %if.end22
  %6 = bitcast i8* %call23 to %struct.mime_header_st*
  %name28 = bitcast i8* %call23 to i8**
  store i8* %tmpname.0, i8** %name28, align 8, !tbaa !37
  %value29 = getelementptr inbounds i8, i8* %call23, i64 8
  %7 = bitcast i8* %value29 to i8**
  store i8* %tmpval.0, i8** %7, align 8, !tbaa !31
  %call30 = tail call fastcc %struct.stack_st_MIME_PARAM* @sk_MIME_PARAM_new() #8
  %params = getelementptr inbounds i8, i8* %call23, i64 16
  %8 = bitcast i8* %params to %struct.stack_st_MIME_PARAM**
  store %struct.stack_st_MIME_PARAM* %call30, %struct.stack_st_MIME_PARAM** %8, align 8, !tbaa !38
  %cmp31 = icmp eq %struct.stack_st_MIME_PARAM* %call30, null
  br i1 %cmp31, label %err, label %cleanup

err:                                              ; preds = %if.end27, %if.end22, %if.then7
  %9 = phi i8* [ null, %if.then7 ], [ null, %if.end22 ], [ %call23, %if.end27 ]
  %tmpval.1 = phi i8* [ null, %if.then7 ], [ %tmpval.0, %if.end22 ], [ %tmpval.0, %if.end27 ]
  tail call void @CRYPTO_free(i8* noundef %tmpname.0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 859) #7
  tail call void @CRYPTO_free(i8* noundef %tmpval.1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 860) #7
  tail call void @CRYPTO_free(i8* noundef %9, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 861) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then, %err
  %retval.0 = phi %struct.mime_header_st* [ null, %err ], [ null, %if.then ], [ %6, %if.end27 ]
  ret %struct.mime_header_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_MIME_HEADER_push(%struct.stack_st_MIME_HEADER* noundef %sk, %struct.mime_header_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_MIME_HEADER* %sk to %struct.stack_st*
  %1 = bitcast %struct.mime_header_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @mime_hdr_addparam(%struct.mime_header_st* nocapture noundef readonly %mhdr, i8* noundef %name, i8* noundef %value) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i8* %name, null
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %name, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 871) #7
  %tobool1.not = icmp eq i8* %call, null
  br i1 %tobool1.not, label %err, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then
  %0 = load i8, i8* %call, align 1, !tbaa !13
  %tobool3.not1 = icmp eq i8 %0, 0
  br i1 %tobool3.not1, label %if.end6, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %1 = phi i8 [ %2, %for.body ], [ %0, %for.cond.preheader ]
  %p.02 = phi i8* [ %incdec.ptr, %for.body ], [ %call, %for.cond.preheader ]
  %conv = sext i8 %1 to i32
  %call4 = tail call i32 @ossl_tolower(i32 noundef %conv) #7
  %conv5 = trunc i32 %call4 to i8
  store i8 %conv5, i8* %p.02, align 1, !tbaa !13
  %incdec.ptr = getelementptr inbounds i8, i8* %p.02, i64 1
  %2 = load i8, i8* %incdec.ptr, align 1, !tbaa !13
  %tobool3.not = icmp eq i8 %2, 0
  br i1 %tobool3.not, label %if.end6, label %for.body, !llvm.loop !45

if.end6:                                          ; preds = %for.body, %for.cond.preheader, %entry
  %tmpname.0 = phi i8* [ null, %entry ], [ %call, %for.cond.preheader ], [ %call, %for.body ]
  %tobool7.not = icmp eq i8* %value, null
  br i1 %tobool7.not, label %if.end13, label %if.then8

if.then8:                                         ; preds = %if.end6
  %call9 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %value, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 878) #7
  %tobool10.not = icmp eq i8* %call9, null
  br i1 %tobool10.not, label %err, label %if.end13

if.end13:                                         ; preds = %if.then8, %if.end6
  %tmpval.0 = phi i8* [ %call9, %if.then8 ], [ null, %if.end6 ]
  %call14 = tail call i8* @CRYPTO_malloc(i64 noundef 16, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 883) #7
  %cmp = icmp eq i8* %call14, null
  br i1 %cmp, label %err, label %if.end17

if.end17:                                         ; preds = %if.end13
  %3 = bitcast i8* %call14 to %struct.mime_param_st*
  %param_name = bitcast i8* %call14 to i8**
  store i8* %tmpname.0, i8** %param_name, align 8, !tbaa !39
  %param_value = getelementptr inbounds i8, i8* %call14, i64 8
  %4 = bitcast i8* %param_value to i8**
  store i8* %tmpval.0, i8** %4, align 8, !tbaa !33
  %params = getelementptr inbounds %struct.mime_header_st, %struct.mime_header_st* %mhdr, i64 0, i32 2
  %5 = load %struct.stack_st_MIME_PARAM*, %struct.stack_st_MIME_PARAM** %params, align 8, !tbaa !38
  %call18 = tail call fastcc i32 @sk_MIME_PARAM_push(%struct.stack_st_MIME_PARAM* noundef %5, %struct.mime_param_st* noundef nonnull %3) #8
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %cleanup

err:                                              ; preds = %if.end17, %if.end13, %if.then8, %if.then
  %tmpname.1 = phi i8* [ %tmpname.0, %if.end13 ], [ %tmpname.0, %if.end17 ], [ %tmpname.0, %if.then8 ], [ null, %if.then ]
  %tmpval.1 = phi i8* [ %tmpval.0, %if.end13 ], [ %tmpval.0, %if.end17 ], [ null, %if.then8 ], [ null, %if.then ]
  %6 = phi i8* [ null, %if.end13 ], [ %call14, %if.end17 ], [ null, %if.then8 ], [ null, %if.then ]
  tail call void @CRYPTO_free(i8* noundef %tmpname.1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 892) #7
  tail call void @CRYPTO_free(i8* noundef %tmpval.1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 893) #7
  tail call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 894) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %err
  ret void
}

declare %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @strip_end(i8* noundef %name) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i8* %name, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i64 @strlen(i8* noundef nonnull %name) #10
  %add.ptr = getelementptr inbounds i8, i8* %name, i64 %call
  %p.032 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %cmp.not33 = icmp ult i8* %p.032, %name
  br i1 %cmp.not33, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %0 = load i8, i8* %p.032, align 1, !tbaa !13
  %cmp243 = icmp eq i8 %0, 34
  br i1 %cmp243, label %if.then4, label %if.end10

for.body:                                         ; preds = %if.then14
  %1 = load i8, i8* %p.0, align 1, !tbaa !13
  %cmp2 = icmp eq i8 %1, 34
  br i1 %cmp2, label %if.then4, label %if.end10, !llvm.loop !46

if.then4:                                         ; preds = %for.body, %for.body.preheader
  %p.035.lcssa = phi i8* [ %p.032, %for.body.preheader ], [ %p.0, %for.body ]
  %add.ptr.pn34.lcssa = phi i8* [ %add.ptr, %for.body.preheader ], [ %p.03544, %for.body ]
  %add.ptr5 = getelementptr inbounds i8, i8* %add.ptr.pn34.lcssa, i64 -2
  %cmp6 = icmp eq i8* %add.ptr5, %name
  br i1 %cmp6, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.then4
  store i8 0, i8* %p.035.lcssa, align 1, !tbaa !13
  br label %cleanup

if.end10:                                         ; preds = %for.body.preheader, %for.body
  %2 = phi i8 [ %1, %for.body ], [ %0, %for.body.preheader ]
  %p.03544 = phi i8* [ %p.0, %for.body ], [ %p.032, %for.body.preheader ]
  %conv = sext i8 %2 to i32
  %call12 = tail call i32 @ossl_ctype_check(i32 noundef %conv, i32 noundef 8) #7
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup, label %if.then14

if.then14:                                        ; preds = %if.end10
  store i8 0, i8* %p.03544, align 1, !tbaa !13
  %p.0 = getelementptr inbounds i8, i8* %p.03544, i64 -1
  %cmp.not = icmp ult i8* %p.0, %name
  br i1 %cmp.not, label %cleanup, label %for.body, !llvm.loop !46

cleanup:                                          ; preds = %if.end10, %if.then14, %if.end, %if.then4, %entry, %if.end9
  %retval.0 = phi i8* [ %name, %if.end9 ], [ null, %entry ], [ null, %if.then4 ], [ null, %if.end ], [ %name, %if.end10 ], [ null, %if.then14 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @strip_start(i8* noundef readonly %name) unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %p.0 = phi i8* [ %name, %entry ], [ %incdec.ptr, %for.inc ]
  %0 = load i8, i8* %p.0, align 1, !tbaa !13
  switch i8 %0, label %if.end4 [
    i8 0, label %cleanup
    i8 34, label %if.then
  ]

if.then:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %p.0, i64 1
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !13
  %tobool2.not = icmp eq i8 %1, 0
  %.arrayidx = select i1 %tobool2.not, i8* null, i8* %arrayidx
  br label %cleanup

if.end4:                                          ; preds = %for.cond
  %conv = sext i8 %0 to i32
  %call = tail call i32 @ossl_ctype_check(i32 noundef %conv, i32 noundef 8) #7
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %cleanup, label %for.inc

for.inc:                                          ; preds = %if.end4
  %incdec.ptr = getelementptr inbounds i8, i8* %p.0, i64 1
  br label %for.cond, !llvm.loop !47

cleanup:                                          ; preds = %for.cond, %if.end4, %if.then
  %retval.0 = phi i8* [ %.arrayidx, %if.then ], [ null, %for.cond ], [ %p.0, %if.end4 ]
  ret i8* %retval.0
}

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_tolower(i32 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_MIME_PARAM* @sk_MIME_PARAM_new() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (%struct.mime_param_st**, %struct.mime_param_st**)* @mime_param_cmp to i32 (i8*, i8*)*)) #7
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_MIME_PARAM*
  ret %struct.stack_st_MIME_PARAM* %0
}

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal i32 @mime_param_cmp(%struct.mime_param_st** nocapture noundef readonly %a, %struct.mime_param_st** nocapture noundef readonly %b) #6 {
entry:
  %0 = load %struct.mime_param_st*, %struct.mime_param_st** %a, align 8, !tbaa !20
  %param_name = getelementptr inbounds %struct.mime_param_st, %struct.mime_param_st* %0, i64 0, i32 0
  %1 = load i8*, i8** %param_name, align 8, !tbaa !39
  %cmp = icmp eq i8* %1, null
  %.pre = load %struct.mime_param_st*, %struct.mime_param_st** %b, align 8, !tbaa !20
  %param_name5.phi.trans.insert = getelementptr inbounds %struct.mime_param_st, %struct.mime_param_st* %.pre, i64 0, i32 0
  %.pre15 = load i8*, i8** %param_name5.phi.trans.insert, align 8, !tbaa !39
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  %phi.cmp = icmp ne i8* %.pre15, null
  %phi.cast = sext i1 %phi.cmp to i32
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %cmp2 = icmp eq i8* %.pre15, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %lor.lhs.false
  %2 = phi i32 [ %phi.cast, %entry.if.then_crit_edge ], [ 0, %lor.lhs.false ]
  %cmp4 = icmp ne i8* %1, null
  %conv = zext i1 %cmp4 to i32
  %sub = add nsw i32 %2, %conv
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @strcmp(i8* noundef nonnull %1, i8* noundef nonnull %.pre15) #10
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %sub, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_MIME_PARAM_push(%struct.stack_st_MIME_PARAM* noundef %sk, %struct.mime_param_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_MIME_PARAM* %sk to %struct.stack_st*
  %1 = bitcast %struct.mime_param_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_MIME_HEADER_find(%struct.stack_st_MIME_HEADER* noundef %sk, %struct.mime_header_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_MIME_HEADER* %sk to %struct.stack_st*
  %1 = bitcast %struct.mime_header_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_find(%struct.stack_st* noundef %0, i8* noundef %1) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.mime_header_st* @sk_MIME_HEADER_value(%struct.stack_st_MIME_HEADER* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_MIME_HEADER* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #7
  %1 = bitcast i8* %call to %struct.mime_header_st*
  ret %struct.mime_header_st* %1
}

declare i32 @OPENSSL_sk_find(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_MIME_PARAM_find(%struct.stack_st_MIME_PARAM* noundef %sk, %struct.mime_param_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_MIME_PARAM* %sk to %struct.stack_st*
  %1 = bitcast %struct.mime_param_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_find(%struct.stack_st* noundef %0, i8* noundef %1) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.mime_param_st* @sk_MIME_PARAM_value(%struct.stack_st_MIME_PARAM* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_MIME_PARAM* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #7
  %1 = bitcast i8* %call to %struct.mime_param_st*
  ret %struct.mime_param_st* %1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_MIME_PARAM_pop_free(%struct.stack_st_MIME_PARAM* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_MIME_PARAM* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.mime_param_st*)* @mime_param_free to void (i8*)*)) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @mime_param_free(%struct.mime_param_st* noundef %param) #0 {
entry:
  %param_name = getelementptr inbounds %struct.mime_param_st, %struct.mime_param_st* %param, i64 0, i32 0
  %0 = load i8*, i8** %param_name, align 8, !tbaa !39
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 954) #7
  %param_value = getelementptr inbounds %struct.mime_param_st, %struct.mime_param_st* %param, i64 0, i32 1
  %1 = load i8*, i8** %param_value, align 8, !tbaa !33
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 955) #7
  %2 = bitcast %struct.mime_param_st* %param to i8*
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 956) #7
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = !{!9, !9, i64 0}
!14 = !{!15, !16, i64 0}
!15 = !{!"X509_algor_st", !16, i64 0, !16, i64 8}
!16 = !{!"any pointer", !9, i64 0}
!17 = !{!18, !16, i64 80}
!18 = !{!"evp_md_st", !8, i64 0, !8, i64 4, !8, i64 8, !19, i64 16, !8, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !8, i64 72, !8, i64 76, !16, i64 80, !8, i64 88, !16, i64 96, !16, i64 104, !16, i64 112, !9, i64 120, !16, i64 128, !16, i64 136, !16, i64 144, !16, i64 152, !16, i64 160, !16, i64 168, !16, i64 176, !16, i64 184, !16, i64 192, !16, i64 200, !16, i64 208, !16, i64 216, !16, i64 224, !16, i64 232}
!19 = !{!"long", !9, i64 0}
!20 = !{!16, !16, i64 0}
!21 = distinct !{!21, !5}
!22 = !{!23, !16, i64 32}
!23 = !{!"ASN1_ITEM_st", !9, i64 0, !19, i64 8, !16, i64 16, !19, i64 24, !16, i64 32, !19, i64 40, !16, i64 48}
!24 = !{!25, !16, i64 24}
!25 = !{!"ASN1_AUX_st", !16, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !16, i64 24, !8, i64 32, !16, i64 40}
!26 = !{!27, !16, i64 0}
!27 = !{!"ASN1_STREAM_ARG_st", !16, i64 0, !16, i64 8, !16, i64 16}
!28 = !{!27, !16, i64 8}
!29 = !{!27, !16, i64 16}
!30 = distinct !{!30, !5}
!31 = !{!32, !16, i64 8}
!32 = !{!"mime_header_st", !16, i64 0, !16, i64 8, !16, i64 16}
!33 = !{!34, !16, i64 8}
!34 = !{!"mime_param_st", !16, i64 0, !16, i64 8}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
!37 = !{!32, !16, i64 0}
!38 = !{!32, !16, i64 16}
!39 = !{!34, !16, i64 0}
!40 = distinct !{!40, !5}
!41 = distinct !{!41, !5}
!42 = distinct !{!42, !5}
!43 = distinct !{!43, !5}
!44 = distinct !{!44, !5}
!45 = distinct !{!45, !5}
!46 = distinct !{!46, !5}
!47 = distinct !{!47, !5}
