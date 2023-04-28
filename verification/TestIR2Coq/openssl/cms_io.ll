; ModuleID = 'crypto/cms/cms_io.c'
source_filename = "crypto/cms/cms_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CMS_ContentInfo_st = type { %struct.asn1_object_st*, %union.anon, %struct.CMS_CTX_st }
%struct.asn1_object_st = type opaque
%union.anon = type { %struct.asn1_string_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.CMS_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.bio_st = type opaque
%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.evp_cipher_st = type opaque
%struct.ASN1_VALUE_st = type opaque
%struct.CMS_SignedData_st = type { i32, %struct.stack_st_X509_ALGOR*, %struct.CMS_EncapsulatedContentInfo_st*, %struct.stack_st_CMS_CertificateChoices*, %struct.stack_st_CMS_RevocationInfoChoice*, %struct.stack_st_CMS_SignerInfo* }
%struct.stack_st_X509_ALGOR = type opaque
%struct.CMS_EncapsulatedContentInfo_st = type { %struct.asn1_object_st*, %struct.asn1_string_st*, i32 }
%struct.stack_st_CMS_CertificateChoices = type opaque
%struct.stack_st_CMS_RevocationInfoChoice = type opaque
%struct.stack_st_CMS_SignerInfo = type opaque

@.str = private unnamed_addr constant [20 x i8] c"crypto/cms/cms_io.c\00", align 1
@__func__.CMS_stream = private unnamed_addr constant [11 x i8] c"CMS_stream\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"CMS\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_stream(i8*** nocapture noundef writeonly %boundary, %struct.CMS_ContentInfo_st* noundef %cms) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_string_st** @CMS_get0_content(%struct.CMS_ContentInfo_st* noundef %cms) #2
  %cmp = icmp eq %struct.asn1_string_st** %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %call, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.asn1_string_st* %0, null
  br i1 %cmp1, label %if.end4, label %if.then6

if.end4:                                          ; preds = %if.end
  %call3 = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #2
  store %struct.asn1_string_st* %call3, %struct.asn1_string_st** %call, align 8, !tbaa !4
  %cmp5.not = icmp eq %struct.asn1_string_st* %call3, null
  br i1 %cmp5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end, %if.end4
  %1 = phi %struct.asn1_string_st* [ %call3, %if.end4 ], [ %0, %if.end ]
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %1, i64 0, i32 3
  %2 = load i64, i64* %flags, align 8, !tbaa !8
  %or = and i64 %2, -49
  %and = or i64 %or, 16
  store i64 %and, i64* %flags, align 8, !tbaa !8
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %1, i64 0, i32 2
  store i8** %data, i8*** %boundary, align 8, !tbaa !4
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 32, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.CMS_stream, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #2
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8, %if.then6
  %retval.0 = phi i32 [ 1, %if.then6 ], [ 0, %if.end8 ], [ 0, %entry ]
  ret i32 %retval.0
}

declare %struct.asn1_string_st** @CMS_get0_content(%struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #1

declare %struct.asn1_string_st* @ASN1_OCTET_STRING_new() local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_ContentInfo_st* @d2i_CMS_bio(%struct.bio_st* noundef %bp, %struct.CMS_ContentInfo_st** noundef %cms) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.CMS_ContentInfo_st** %cms, null
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %0 = load %struct.CMS_ContentInfo_st*, %struct.CMS_ContentInfo_st** %cms, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi %struct.CMS_ContentInfo_st* [ %0, %cond.false ], [ null, %entry ]
  %call = tail call %struct.CMS_CTX_st* @ossl_cms_get0_cmsctx(%struct.CMS_ContentInfo_st* noundef %cond) #2
  %call1 = tail call %struct.ASN1_ITEM_st* @CMS_ContentInfo_it() #2
  %1 = bitcast %struct.CMS_ContentInfo_st** %cms to i8*
  %call2 = tail call %struct.ossl_lib_ctx_st* @ossl_cms_ctx_get0_libctx(%struct.CMS_CTX_st* noundef %call) #2
  %call3 = tail call i8* @ossl_cms_ctx_get0_propq(%struct.CMS_CTX_st* noundef %call) #2
  %call4 = tail call i8* @ASN1_item_d2i_bio_ex(%struct.ASN1_ITEM_st* noundef %call1, %struct.bio_st* noundef %bp, i8* noundef %1, %struct.ossl_lib_ctx_st* noundef %call2, i8* noundef %call3) #2
  %2 = bitcast i8* %call4 to %struct.CMS_ContentInfo_st*
  %cmp5.not = icmp eq i8* %call4, null
  br i1 %cmp5.not, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  tail call void @ossl_cms_resolve_libctx(%struct.CMS_ContentInfo_st* noundef nonnull %2) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  ret %struct.CMS_ContentInfo_st* %2
}

declare %struct.CMS_CTX_st* @ossl_cms_get0_cmsctx(%struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #1

declare i8* @ASN1_item_d2i_bio_ex(%struct.ASN1_ITEM_st* noundef, %struct.bio_st* noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.ASN1_ITEM_st* @CMS_ContentInfo_it() local_unnamed_addr #1

declare %struct.ossl_lib_ctx_st* @ossl_cms_ctx_get0_libctx(%struct.CMS_CTX_st* noundef) local_unnamed_addr #1

declare i8* @ossl_cms_ctx_get0_propq(%struct.CMS_CTX_st* noundef) local_unnamed_addr #1

declare void @ossl_cms_resolve_libctx(%struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_CMS_bio(%struct.bio_st* noundef %bp, %struct.CMS_ContentInfo_st* noundef %cms) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @CMS_ContentInfo_it() #2
  %0 = bitcast %struct.CMS_ContentInfo_st* %cms to i8*
  %call1 = tail call i32 @ASN1_item_i2d_bio(%struct.ASN1_ITEM_st* noundef %call, %struct.bio_st* noundef %bp, i8* noundef %0) #2
  ret i32 %call1
}

declare i32 @ASN1_item_i2d_bio(%struct.ASN1_ITEM_st* noundef, %struct.bio_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_ContentInfo_st* @PEM_read_bio_CMS(%struct.bio_st* noundef %bp, %struct.CMS_ContentInfo_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.CMS_ContentInfo_st** %x to i8**
  %call = tail call i8* @PEM_ASN1_read_bio(i8* (i8**, i8**, i64)* noundef bitcast (%struct.CMS_ContentInfo_st* (%struct.CMS_ContentInfo_st**, i8**, i64)* @d2i_CMS_ContentInfo to i8* (i8**, i8**, i64)*), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.bio_st* noundef %bp, i8** noundef %0, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #2
  %1 = bitcast i8* %call to %struct.CMS_ContentInfo_st*
  ret %struct.CMS_ContentInfo_st* %1
}

declare i8* @PEM_ASN1_read_bio(i8* (i8**, i8**, i64)* noundef, i8* noundef, %struct.bio_st* noundef, i8** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.CMS_ContentInfo_st* @d2i_CMS_ContentInfo(%struct.CMS_ContentInfo_st** noundef, i8** noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_ContentInfo_st* @PEM_read_CMS(%struct._IO_FILE* noundef %fp, %struct.CMS_ContentInfo_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.CMS_ContentInfo_st** %x to i8**
  %call = tail call i8* @PEM_ASN1_read(i8* (i8**, i8**, i64)* noundef bitcast (%struct.CMS_ContentInfo_st* (%struct.CMS_ContentInfo_st**, i8**, i64)* @d2i_CMS_ContentInfo to i8* (i8**, i8**, i64)*), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct._IO_FILE* noundef %fp, i8** noundef %0, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #2
  %1 = bitcast i8* %call to %struct.CMS_ContentInfo_st*
  ret %struct.CMS_ContentInfo_st* %1
}

declare i8* @PEM_ASN1_read(i8* (i8**, i8**, i64)* noundef, i8* noundef, %struct._IO_FILE* noundef, i8** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_bio_CMS(%struct.bio_st* noundef %out, %struct.CMS_ContentInfo_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.CMS_ContentInfo_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.CMS_ContentInfo_st*, i8**)* @i2d_CMS_ContentInfo to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.bio_st* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #2
  ret i32 %call
}

declare i32 @PEM_ASN1_write_bio(i32 (i8*, i8**)* noundef, i8* noundef, %struct.bio_st* noundef, i8* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i32 noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @i2d_CMS_ContentInfo(%struct.CMS_ContentInfo_st* noundef, i8** noundef) #1

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_CMS(%struct._IO_FILE* noundef %out, %struct.CMS_ContentInfo_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.CMS_ContentInfo_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.CMS_ContentInfo_st*, i8**)* @i2d_CMS_ContentInfo to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct._IO_FILE* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #2
  ret i32 %call
}

declare i32 @PEM_ASN1_write(i32 (i8*, i8**)* noundef, i8* noundef, %struct._IO_FILE* noundef, i8* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i32 noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @BIO_new_CMS(%struct.bio_st* noundef %out, %struct.CMS_ContentInfo_st* noundef %cms) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.CMS_ContentInfo_st* %cms to %struct.ASN1_VALUE_st*
  %call = tail call %struct.ASN1_ITEM_st* @CMS_ContentInfo_it() #2
  %call1 = tail call %struct.bio_st* @BIO_new_NDEF(%struct.bio_st* noundef %out, %struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef %call) #2
  ret %struct.bio_st* %call1
}

declare %struct.bio_st* @BIO_new_NDEF(%struct.bio_st* noundef, %struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_CMS_bio_stream(%struct.bio_st* noundef %out, %struct.CMS_ContentInfo_st* noundef %cms, %struct.bio_st* noundef %in, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.CMS_ContentInfo_st* %cms to %struct.ASN1_VALUE_st*
  %call = tail call %struct.ASN1_ITEM_st* @CMS_ContentInfo_it() #2
  %call1 = tail call i32 @i2d_ASN1_bio_stream(%struct.bio_st* noundef %out, %struct.ASN1_VALUE_st* noundef %0, %struct.bio_st* noundef %in, i32 noundef %flags, %struct.ASN1_ITEM_st* noundef %call) #2
  ret i32 %call1
}

declare i32 @i2d_ASN1_bio_stream(%struct.bio_st* noundef, %struct.ASN1_VALUE_st* noundef, %struct.bio_st* noundef, i32 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_bio_CMS_stream(%struct.bio_st* noundef %out, %struct.CMS_ContentInfo_st* noundef %cms, %struct.bio_st* noundef %in, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.CMS_ContentInfo_st* %cms to %struct.ASN1_VALUE_st*
  %call = tail call %struct.ASN1_ITEM_st* @CMS_ContentInfo_it() #2
  %call1 = tail call i32 @PEM_write_bio_ASN1_stream(%struct.bio_st* noundef %out, %struct.ASN1_VALUE_st* noundef %0, %struct.bio_st* noundef %in, i32 noundef %flags, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.ASN1_ITEM_st* noundef %call) #2
  ret i32 %call1
}

declare i32 @PEM_write_bio_ASN1_stream(%struct.bio_st* noundef, %struct.ASN1_VALUE_st* noundef, %struct.bio_st* noundef, i32 noundef, i8* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SMIME_write_CMS(%struct.bio_st* noundef %bio, %struct.CMS_ContentInfo_st* noundef %cms, %struct.bio_st* noundef %data, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %contentType = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %contentType, align 8, !tbaa !12
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #2
  %call1 = tail call %struct.asn1_object_st* @CMS_get0_eContentType(%struct.CMS_ContentInfo_st* noundef %cms) #2
  %call2 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %call1) #2
  %call3 = tail call %struct.CMS_CTX_st* @ossl_cms_get0_cmsctx(%struct.CMS_ContentInfo_st* noundef %cms) #2
  %cmp = icmp eq i32 %call, 22
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %d = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %signedData = bitcast %union.anon* %d to %struct.CMS_SignedData_st**
  %1 = load %struct.CMS_SignedData_st*, %struct.CMS_SignedData_st** %signedData, align 8, !tbaa !15
  %digestAlgorithms = getelementptr inbounds %struct.CMS_SignedData_st, %struct.CMS_SignedData_st* %1, i64 0, i32 1
  %2 = load %struct.stack_st_X509_ALGOR*, %struct.stack_st_X509_ALGOR** %digestAlgorithms, align 8, !tbaa !16
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %mdalgs.0 = phi %struct.stack_st_X509_ALGOR* [ %2, %if.then ], [ null, %entry ]
  %3 = bitcast %struct.CMS_ContentInfo_st* %cms to %struct.ASN1_VALUE_st*
  %call4 = tail call %struct.ASN1_ITEM_st* @CMS_ContentInfo_it() #2
  %call5 = tail call %struct.ossl_lib_ctx_st* @ossl_cms_ctx_get0_libctx(%struct.CMS_CTX_st* noundef %call3) #2
  %call6 = tail call i8* @ossl_cms_ctx_get0_propq(%struct.CMS_CTX_st* noundef %call3) #2
  %call7 = tail call i32 @SMIME_write_ASN1_ex(%struct.bio_st* noundef %bio, %struct.ASN1_VALUE_st* noundef %3, %struct.bio_st* noundef %data, i32 noundef %flags, i32 noundef %call, i32 noundef %call2, %struct.stack_st_X509_ALGOR* noundef %mdalgs.0, %struct.ASN1_ITEM_st* noundef %call4, %struct.ossl_lib_ctx_st* noundef %call5, i8* noundef %call6) #2
  ret i32 %call7
}

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #1

declare %struct.asn1_object_st* @CMS_get0_eContentType(%struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #1

declare i32 @SMIME_write_ASN1_ex(%struct.bio_st* noundef, %struct.ASN1_VALUE_st* noundef, %struct.bio_st* noundef, i32 noundef, i32 noundef, i32 noundef, %struct.stack_st_X509_ALGOR* noundef, %struct.ASN1_ITEM_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_ContentInfo_st* @SMIME_read_CMS_ex(%struct.bio_st* noundef %bio, i32 noundef %flags, %struct.bio_st** noundef %bcont, %struct.CMS_ContentInfo_st** noundef %cms) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.CMS_ContentInfo_st** %cms, null
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %0 = load %struct.CMS_ContentInfo_st*, %struct.CMS_ContentInfo_st** %cms, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi %struct.CMS_ContentInfo_st* [ %0, %cond.false ], [ null, %entry ]
  %call = tail call %struct.CMS_CTX_st* @ossl_cms_get0_cmsctx(%struct.CMS_ContentInfo_st* noundef %cond) #2
  %call1 = tail call %struct.ASN1_ITEM_st* @CMS_ContentInfo_it() #2
  %1 = bitcast %struct.CMS_ContentInfo_st** %cms to %struct.ASN1_VALUE_st**
  %call2 = tail call %struct.ossl_lib_ctx_st* @ossl_cms_ctx_get0_libctx(%struct.CMS_CTX_st* noundef %call) #2
  %call3 = tail call i8* @ossl_cms_ctx_get0_propq(%struct.CMS_CTX_st* noundef %call) #2
  %call4 = tail call %struct.ASN1_VALUE_st* @SMIME_read_ASN1_ex(%struct.bio_st* noundef %bio, i32 noundef %flags, %struct.bio_st** noundef %bcont, %struct.ASN1_ITEM_st* noundef %call1, %struct.ASN1_VALUE_st** noundef %1, %struct.ossl_lib_ctx_st* noundef %call2, i8* noundef %call3) #2
  %2 = bitcast %struct.ASN1_VALUE_st* %call4 to %struct.CMS_ContentInfo_st*
  %cmp5.not = icmp eq %struct.ASN1_VALUE_st* %call4, null
  br i1 %cmp5.not, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  tail call void @ossl_cms_resolve_libctx(%struct.CMS_ContentInfo_st* noundef nonnull %2) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  ret %struct.CMS_ContentInfo_st* %2
}

declare %struct.ASN1_VALUE_st* @SMIME_read_ASN1_ex(%struct.bio_st* noundef, i32 noundef, %struct.bio_st** noundef, %struct.ASN1_ITEM_st* noundef, %struct.ASN1_VALUE_st** noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_ContentInfo_st* @SMIME_read_CMS(%struct.bio_st* noundef %bio, %struct.bio_st** noundef %bcont) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.CMS_ContentInfo_st* @SMIME_read_CMS_ex(%struct.bio_st* noundef %bio, i32 noundef 0, %struct.bio_st** noundef %bcont, %struct.CMS_ContentInfo_st** noundef null) #3
  ret %struct.CMS_ContentInfo_st* %call
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }
attributes #3 = { nobuiltin "no-builtins" }

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
!8 = !{!9, !11, i64 16}
!9 = !{!"asn1_string_st", !10, i64 0, !10, i64 4, !5, i64 8, !11, i64 16}
!10 = !{!"int", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!13, !5, i64 0}
!13 = !{!"CMS_ContentInfo_st", !5, i64 0, !6, i64 8, !14, i64 16}
!14 = !{!"CMS_CTX_st", !5, i64 0, !5, i64 8}
!15 = !{!6, !6, i64 0}
!16 = !{!17, !5, i64 8}
!17 = !{!"CMS_SignedData_st", !10, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40}
