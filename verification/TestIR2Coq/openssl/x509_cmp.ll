; ModuleID = 'crypto/x509/x509_cmp.c'
source_filename = "crypto/x509/x509_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_st = type { %struct.x509_cinf_st, %struct.X509_algor_st, %struct.asn1_string_st, %struct.x509_sig_info_st, i32, %struct.crypto_ex_data_st, i64, i64, i32, i32, i32, i32, %struct.asn1_string_st*, %struct.AUTHORITY_KEYID_st*, %struct.X509_POLICY_CACHE_st*, %struct.stack_st_DIST_POINT*, %struct.stack_st_GENERAL_NAME*, %struct.NAME_CONSTRAINTS_st*, %struct.stack_st_IPAddressFamily*, %struct.ASIdentifiers_st*, [20 x i8], %struct.x509_cert_aux_st*, i8*, i32, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.x509_cinf_st = type { %struct.asn1_string_st*, %struct.asn1_string_st, %struct.X509_algor_st, %struct.X509_name_st*, %struct.X509_val_st, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.X509_val_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.X509_pubkey_st = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.ASN1_ENCODING_st = type { i8*, i64, i32 }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.x509_sig_info_st = type { i32, i32, i32, i32 }
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
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
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_md_ctx_st = type opaque
%struct.evp_md_st = type opaque
%struct.engine_st = type opaque
%struct.X509_crl_st = type { %struct.X509_crl_info_st, %struct.X509_algor_st, %struct.asn1_string_st, i32, i32, %struct.AUTHORITY_KEYID_st*, %struct.ISSUING_DIST_POINT_st*, i32, i32, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAMES*, [20 x i8], %struct.x509_crl_method_st*, i8*, i8*, %struct.ossl_lib_ctx_st*, i8* }
%struct.X509_crl_info_st = type { %struct.asn1_string_st*, %struct.X509_algor_st, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_REVOKED*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.stack_st_X509_REVOKED = type opaque
%struct.ISSUING_DIST_POINT_st = type { %struct.DIST_POINT_NAME_st*, i32, i32, %struct.asn1_string_st*, i32, i32 }
%struct.DIST_POINT_NAME_st = type { i32, %union.anon.1, %struct.X509_name_st* }
%union.anon.1 = type { %struct.stack_st_GENERAL_NAME* }
%struct.stack_st_GENERAL_NAMES = type opaque
%struct.x509_crl_method_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.stack_st = type opaque
%struct.evp_pkey_st = type opaque

@.str = private unnamed_addr constant [4 x i8] c"MD5\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"crypto/x509/x509_cmp.c\00", align 1
@__func__.ossl_x509_add_cert_new = private unnamed_addr constant [23 x i8] c"ossl_x509_add_cert_new\00", align 1
@__func__.X509_add_cert = private unnamed_addr constant [14 x i8] c"X509_add_cert\00", align 1
@__func__.X509_add_certs = private unnamed_addr constant [15 x i8] c"X509_add_certs\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"-fips\00", align 1
@__func__.X509_check_private_key = private unnamed_addr constant [23 x i8] c"X509_check_private_key\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"EC\00", align 1
@switch.table.X509_check_private_key = private unnamed_addr constant [3 x i32] [i32 117, i32 115, i32 116], align 4

; Function Attrs: noinline nounwind uwtable
define i32 @X509_issuer_and_serial_cmp(%struct.x509_st* noundef %a, %struct.x509_st* noundef %b) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_st* %b, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cmp1 = icmp ne %struct.x509_st* %a, null
  %conv = zext i1 %cmp1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq %struct.x509_st* %a, null
  br i1 %cmp2, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %serialNumber = getelementptr inbounds %struct.x509_st, %struct.x509_st* %a, i64 0, i32 0, i32 1
  %serialNumber7 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %b, i64 0, i32 0, i32 1
  %call = tail call i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef nonnull %serialNumber, %struct.asn1_string_st* noundef nonnull %serialNumber7) #8
  %cmp8.not = icmp eq i32 %call, 0
  br i1 %cmp8.not, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end5
  %cmp11.inv = icmp sgt i32 %call, -1
  %cond = select i1 %cmp11.inv, i32 1, i32 -1
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %issuer = getelementptr inbounds %struct.x509_st, %struct.x509_st* %a, i64 0, i32 0, i32 3
  %0 = load %struct.X509_name_st*, %struct.X509_name_st** %issuer, align 8, !tbaa !4
  %issuer14 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %b, i64 0, i32 0, i32 3
  %1 = load %struct.X509_name_st*, %struct.X509_name_st** %issuer14, align 8, !tbaa !4
  %call15 = tail call i32 @X509_NAME_cmp(%struct.X509_name_st* noundef %0, %struct.X509_name_st* noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end13, %if.then10, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %cond, %if.then10 ], [ %call15, %if.end13 ], [ -1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_NAME_cmp(%struct.X509_name_st* noundef %a, %struct.X509_name_st* noundef %b) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.X509_name_st* %b, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cmp1 = icmp ne %struct.X509_name_st* %a, null
  %conv = zext i1 %cmp1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq %struct.X509_name_st* %a, null
  br i1 %cmp2, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %canon_enc = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %a, i64 0, i32 3
  %0 = load i8*, i8** %canon_enc, align 8, !tbaa !15
  %cmp6 = icmp eq i8* %0, null
  br i1 %cmp6, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end5
  %modified = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %a, i64 0, i32 1
  %1 = load i32, i32* %modified, align 8, !tbaa !17
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end13, label %if.then8

if.then8:                                         ; preds = %lor.lhs.false, %if.end5
  %call = tail call i32 @i2d_X509_NAME(%struct.X509_name_st* noundef nonnull %a, i8** noundef null) #8
  %cmp9 = icmp slt i32 %call, 0
  br i1 %cmp9, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.then8, %lor.lhs.false
  %canon_enc14 = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %b, i64 0, i32 3
  %2 = load i8*, i8** %canon_enc14, align 8, !tbaa !15
  %cmp15 = icmp eq i8* %2, null
  br i1 %cmp15, label %if.then20, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %if.end13
  %modified18 = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %b, i64 0, i32 1
  %3 = load i32, i32* %modified18, align 8, !tbaa !17
  %tobool19.not = icmp eq i32 %3, 0
  br i1 %tobool19.not, label %if.end26, label %if.then20

if.then20:                                        ; preds = %lor.lhs.false17, %if.end13
  %call21 = tail call i32 @i2d_X509_NAME(%struct.X509_name_st* noundef nonnull %b, i8** noundef null) #8
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %cleanup, label %if.end26

if.end26:                                         ; preds = %if.then20, %lor.lhs.false17
  %canon_enclen = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %a, i64 0, i32 4
  %4 = load i32, i32* %canon_enclen, align 8, !tbaa !18
  %canon_enclen27 = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %b, i64 0, i32 4
  %5 = load i32, i32* %canon_enclen27, align 8, !tbaa !18
  %sub = sub nsw i32 %4, %5
  %cmp28 = icmp eq i32 %sub, 0
  %6 = or i32 %sub, %4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %cleanup, label %if.end34

if.end34:                                         ; preds = %if.end26
  %8 = load i8*, i8** %canon_enc, align 8, !tbaa !15
  %cmp36 = icmp eq i8* %8, null
  br i1 %cmp36, label %cleanup, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %if.end34
  %9 = load i8*, i8** %canon_enc14, align 8, !tbaa !15
  %cmp40 = icmp eq i8* %9, null
  br i1 %cmp40, label %cleanup, label %if.end43

if.end43:                                         ; preds = %lor.lhs.false38
  br i1 %cmp28, label %if.then46, label %if.end52

if.then46:                                        ; preds = %if.end43
  %conv50 = sext i32 %4 to i64
  %call51 = tail call i32 @memcmp(i8* noundef nonnull %8, i8* noundef nonnull %9, i64 noundef %conv50) #10
  br label %if.end52

if.end52:                                         ; preds = %if.then46, %if.end43
  %ret.0 = phi i32 [ %call51, %if.then46 ], [ %sub, %if.end43 ]
  %cmp55 = icmp sgt i32 %ret.0, 0
  %conv56 = zext i1 %cmp55 to i32
  %cmp53.inv = icmp sgt i32 %ret.0, -1
  %cond = select i1 %cmp53.inv, i32 %conv56, i32 -1
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %lor.lhs.false38, %if.end26, %if.then20, %if.then8, %if.end, %if.end52, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %cond, %if.end52 ], [ -1, %if.end ], [ -2, %if.then8 ], [ -2, %if.then20 ], [ 0, %if.end26 ], [ -2, %lor.lhs.false38 ], [ -2, %if.end34 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i64 @X509_issuer_and_serial_hash(%struct.x509_st* nocapture noundef readonly %a) local_unnamed_addr #0 {
entry:
  %md = alloca [16 x i8], align 16
  %call = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #8
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %md, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #11
  %cmp = icmp eq %struct.evp_md_ctx_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %issuer = getelementptr inbounds %struct.x509_st, %struct.x509_st* %a, i64 0, i32 0, i32 3
  %1 = load %struct.X509_name_st*, %struct.X509_name_st** %issuer, align 8, !tbaa !19
  %call1 = tail call i8* @X509_NAME_oneline(%struct.X509_name_st* noundef %1, i8* noundef null, i32 noundef 0) #8
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %libctx = getelementptr inbounds %struct.x509_st, %struct.x509_st* %a, i64 0, i32 25
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !23
  %propq = getelementptr inbounds %struct.x509_st, %struct.x509_st* %a, i64 0, i32 26
  %3 = load i8*, i8** %propq, align 8, !tbaa !24
  %call5 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef %3) #8
  %cmp6 = icmp eq %struct.evp_md_st* %call5, null
  br i1 %cmp6, label %err, label %if.end8

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call, %struct.evp_md_st* noundef nonnull %call5, %struct.engine_st* noundef null) #8
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %err, label %if.end11

if.end11:                                         ; preds = %if.end8
  %call12 = tail call i64 @strlen(i8* noundef nonnull %call1) #10
  %call13 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef nonnull %call1, i64 noundef %call12) #8
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %err, label %if.end16

if.end16:                                         ; preds = %if.end11
  tail call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 58) #8
  %data = getelementptr inbounds %struct.x509_st, %struct.x509_st* %a, i64 0, i32 0, i32 1, i32 2
  %4 = load i8*, i8** %data, align 8, !tbaa !25
  %length = getelementptr inbounds %struct.x509_st, %struct.x509_st* %a, i64 0, i32 0, i32 1, i32 0
  %5 = load i32, i32* %length, align 8, !tbaa !26
  %conv = sext i32 %5 to i64
  %call20 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef %4, i64 noundef %conv) #8
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %if.end23

if.end23:                                         ; preds = %if.end16
  %call24 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef nonnull %0, i32* noundef null) #8
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %if.end27

if.end27:                                         ; preds = %if.end23
  %6 = load i8, i8* %0, align 16, !tbaa !27
  %conv29 = zext i8 %6 to i64
  %arrayidx30 = getelementptr inbounds [16 x i8], [16 x i8]* %md, i64 0, i64 1
  %7 = load i8, i8* %arrayidx30, align 1, !tbaa !27
  %conv31 = zext i8 %7 to i64
  %shl = shl nuw nsw i64 %conv31, 8
  %or = or i64 %shl, %conv29
  %arrayidx32 = getelementptr inbounds [16 x i8], [16 x i8]* %md, i64 0, i64 2
  %8 = load i8, i8* %arrayidx32, align 2, !tbaa !27
  %conv33 = zext i8 %8 to i64
  %shl34 = shl nuw nsw i64 %conv33, 16
  %or35 = or i64 %or, %shl34
  %arrayidx36 = getelementptr inbounds [16 x i8], [16 x i8]* %md, i64 0, i64 3
  %9 = load i8, i8* %arrayidx36, align 1, !tbaa !27
  %conv37 = zext i8 %9 to i64
  %shl38 = shl nuw nsw i64 %conv37, 24
  %or39 = or i64 %or35, %shl38
  br label %err

err:                                              ; preds = %if.end23, %if.end16, %if.end11, %if.end8, %if.end4, %if.end, %entry, %if.end27
  %ret.0 = phi i64 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end4 ], [ %or39, %if.end27 ], [ 0, %if.end23 ], [ 0, %if.end16 ], [ 0, %if.end11 ], [ 0, %if.end8 ]
  %digest.0 = phi %struct.evp_md_st* [ null, %entry ], [ null, %if.end ], [ null, %if.end4 ], [ %call5, %if.end27 ], [ %call5, %if.end23 ], [ %call5, %if.end16 ], [ %call5, %if.end11 ], [ %call5, %if.end8 ]
  call void @EVP_MD_free(%struct.evp_md_st* noundef %digest.0) #8
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #11
  ret i64 %ret.0
}

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #2

declare i8* @X509_NAME_oneline(%struct.X509_name_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #3

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

declare void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_issuer_name_cmp(%struct.x509_st* nocapture noundef readonly %a, %struct.x509_st* nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %issuer = getelementptr inbounds %struct.x509_st, %struct.x509_st* %a, i64 0, i32 0, i32 3
  %0 = load %struct.X509_name_st*, %struct.X509_name_st** %issuer, align 8, !tbaa !19
  %issuer2 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %b, i64 0, i32 0, i32 3
  %1 = load %struct.X509_name_st*, %struct.X509_name_st** %issuer2, align 8, !tbaa !19
  %call = tail call i32 @X509_NAME_cmp(%struct.X509_name_st* noundef %0, %struct.X509_name_st* noundef %1) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_subject_name_cmp(%struct.x509_st* nocapture noundef readonly %a, %struct.x509_st* nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %subject = getelementptr inbounds %struct.x509_st, %struct.x509_st* %a, i64 0, i32 0, i32 5
  %0 = load %struct.X509_name_st*, %struct.X509_name_st** %subject, align 8, !tbaa !28
  %subject2 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %b, i64 0, i32 0, i32 5
  %1 = load %struct.X509_name_st*, %struct.X509_name_st** %subject2, align 8, !tbaa !28
  %call = tail call i32 @X509_NAME_cmp(%struct.X509_name_st* noundef %0, %struct.X509_name_st* noundef %1) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_CRL_cmp(%struct.X509_crl_st* nocapture noundef readonly %a, %struct.X509_crl_st* nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %issuer = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %a, i64 0, i32 0, i32 2
  %0 = load %struct.X509_name_st*, %struct.X509_name_st** %issuer, align 8, !tbaa !29
  %issuer2 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %b, i64 0, i32 0, i32 2
  %1 = load %struct.X509_name_st*, %struct.X509_name_st** %issuer2, align 8, !tbaa !29
  %call = tail call i32 @X509_NAME_cmp(%struct.X509_name_st* noundef %0, %struct.X509_name_st* noundef %1) #9
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define i32 @X509_CRL_match(%struct.X509_crl_st* noundef readonly %a, %struct.X509_crl_st* noundef readonly %b) local_unnamed_addr #4 {
entry:
  %flags = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %a, i64 0, i32 4
  %0 = load i32, i32* %flags, align 4, !tbaa !32
  %and = and i32 %0, 1048576
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %entry
  %flags1 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %b, i64 0, i32 4
  %1 = load i32, i32* %flags1, align 4, !tbaa !32
  %and2 = and i32 %1, 1048576
  %cmp3 = icmp eq i32 %and2, 0
  br i1 %cmp3, label %if.then, label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %arraydecay = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %a, i64 0, i32 12, i64 0
  %arraydecay5 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %b, i64 0, i32 12, i64 0
  %call = tail call i32 @memcmp(i8* noundef nonnull %arraydecay, i8* noundef nonnull %arraydecay5, i64 noundef 20) #10
  %cmp7 = icmp sgt i32 %call, 0
  %conv = zext i1 %cmp7 to i32
  %cmp6.inv = icmp sgt i32 %call, -1
  %cond = select i1 %cmp6.inv, i32 %conv, i32 -1
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ -2, %land.lhs.true ], [ -2, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* nocapture noundef readonly %a) local_unnamed_addr #5 {
entry:
  %issuer = getelementptr inbounds %struct.x509_st, %struct.x509_st* %a, i64 0, i32 0, i32 3
  %0 = load %struct.X509_name_st*, %struct.X509_name_st** %issuer, align 8, !tbaa !19
  ret %struct.X509_name_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i64 @X509_issuer_name_hash(%struct.x509_st* nocapture noundef readonly %x) local_unnamed_addr #0 {
entry:
  %issuer = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 3
  %0 = load %struct.X509_name_st*, %struct.X509_name_st** %issuer, align 8, !tbaa !19
  %call = tail call i64 @X509_NAME_hash_ex(%struct.X509_name_st* noundef %0, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null, i32* noundef null) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define i64 @X509_NAME_hash_ex(%struct.X509_name_st* noundef %x, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, i32* noundef writeonly %ok) local_unnamed_addr #0 {
entry:
  %md = alloca [20 x i8], align 16
  %0 = getelementptr inbounds [20 x i8], [20 x i8]* %md, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %0) #11
  %call = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* noundef %propq) #8
  %call1 = tail call i32 @i2d_X509_NAME(%struct.X509_name_st* noundef %x, i8** noundef null) #8
  %cmp.not = icmp eq i32* %ok, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %ok, align 4, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp2.not = icmp eq %struct.evp_md_st* %call, null
  br i1 %cmp2.not, label %if.end20, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %canon_enc = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %x, i64 0, i32 3
  %1 = load i8*, i8** %canon_enc, align 8, !tbaa !15
  %canon_enclen = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %x, i64 0, i32 4
  %2 = load i32, i32* %canon_enclen, align 8, !tbaa !18
  %conv = sext i32 %2 to i64
  %call3 = call i32 @EVP_Digest(i8* noundef %1, i64 noundef %conv, i8* noundef nonnull %0, i32* noundef null, %struct.evp_md_st* noundef nonnull %call, %struct.engine_st* noundef null) #8
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end20, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  %3 = load i8, i8* %0, align 16, !tbaa !27
  %conv5 = zext i8 %3 to i64
  %arrayidx6 = getelementptr inbounds [20 x i8], [20 x i8]* %md, i64 0, i64 1
  %4 = load i8, i8* %arrayidx6, align 1, !tbaa !27
  %conv7 = zext i8 %4 to i64
  %shl = shl nuw nsw i64 %conv7, 8
  %or = or i64 %shl, %conv5
  %arrayidx8 = getelementptr inbounds [20 x i8], [20 x i8]* %md, i64 0, i64 2
  %5 = load i8, i8* %arrayidx8, align 2, !tbaa !27
  %conv9 = zext i8 %5 to i64
  %shl10 = shl nuw nsw i64 %conv9, 16
  %or11 = or i64 %or, %shl10
  %arrayidx12 = getelementptr inbounds [20 x i8], [20 x i8]* %md, i64 0, i64 3
  %6 = load i8, i8* %arrayidx12, align 1, !tbaa !27
  %conv13 = zext i8 %6 to i64
  %shl14 = shl nuw nsw i64 %conv13, 24
  %or15 = or i64 %or11, %shl14
  br i1 %cmp.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.then4
  store i32 1, i32* %ok, align 4, !tbaa !33
  br label %if.end20

if.end20:                                         ; preds = %if.then4, %if.then18, %land.lhs.true, %if.end
  %ret.0 = phi i64 [ %or15, %if.then18 ], [ %or15, %if.then4 ], [ 0, %land.lhs.true ], [ 0, %if.end ]
  call void @EVP_MD_free(%struct.evp_md_st* noundef %call) #8
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %0) #11
  ret i64 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define i64 @X509_issuer_name_hash_old(%struct.x509_st* nocapture noundef readonly %x) local_unnamed_addr #0 {
entry:
  %issuer = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 3
  %0 = load %struct.X509_name_st*, %struct.X509_name_st** %issuer, align 8, !tbaa !19
  %call = tail call i64 @X509_NAME_hash_old(%struct.X509_name_st* noundef %0) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define i64 @X509_NAME_hash_old(%struct.X509_name_st* noundef %x) local_unnamed_addr #0 {
entry:
  %md = alloca [16 x i8], align 16
  %call = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)) #8
  %call1 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #8
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %md, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #11
  %cmp = icmp eq %struct.evp_md_st* %call, null
  %cmp2 = icmp eq %struct.evp_md_ctx_st* %call1, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %or.cond, label %end, label %if.end

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @i2d_X509_NAME(%struct.X509_name_st* noundef %x, i8** noundef null) #8
  %call4 = tail call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call1, %struct.evp_md_st* noundef nonnull %call, %struct.engine_st* noundef null) #8
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %bytes = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %x, i64 0, i32 2
  %1 = load %struct.buf_mem_st*, %struct.buf_mem_st** %bytes, align 8, !tbaa !34
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %1, i64 0, i32 1
  %2 = load i8*, i8** %data, align 8, !tbaa !35
  %length = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %1, i64 0, i32 0
  %3 = load i64, i64* %length, align 8, !tbaa !37
  %call6 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call1, i8* noundef %2, i64 noundef %3) #8
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %end, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true
  %call9 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call1, i8* noundef nonnull %0, i32* noundef null) #8
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %end, label %if.then11

if.then11:                                        ; preds = %land.lhs.true8
  %4 = load i8, i8* %0, align 16, !tbaa !27
  %conv = zext i8 %4 to i64
  %arrayidx12 = getelementptr inbounds [16 x i8], [16 x i8]* %md, i64 0, i64 1
  %5 = load i8, i8* %arrayidx12, align 1, !tbaa !27
  %conv13 = zext i8 %5 to i64
  %shl = shl nuw nsw i64 %conv13, 8
  %or = or i64 %shl, %conv
  %arrayidx14 = getelementptr inbounds [16 x i8], [16 x i8]* %md, i64 0, i64 2
  %6 = load i8, i8* %arrayidx14, align 2, !tbaa !27
  %conv15 = zext i8 %6 to i64
  %shl16 = shl nuw nsw i64 %conv15, 16
  %or17 = or i64 %or, %shl16
  %arrayidx18 = getelementptr inbounds [16 x i8], [16 x i8]* %md, i64 0, i64 3
  %7 = load i8, i8* %arrayidx18, align 1, !tbaa !27
  %conv19 = zext i8 %7 to i64
  %shl20 = shl nuw nsw i64 %conv19, 24
  %or21 = or i64 %or17, %shl20
  br label %end

end:                                              ; preds = %if.end, %land.lhs.true, %land.lhs.true8, %if.then11, %entry
  %ret.0 = phi i64 [ 0, %entry ], [ %or21, %if.then11 ], [ 0, %land.lhs.true8 ], [ 0, %land.lhs.true ], [ 0, %if.end ]
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call1) #8
  call void @EVP_MD_free(%struct.evp_md_st* noundef %call) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #11
  ret i64 %ret.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* nocapture noundef readonly %a) local_unnamed_addr #5 {
entry:
  %subject = getelementptr inbounds %struct.x509_st, %struct.x509_st* %a, i64 0, i32 0, i32 5
  %0 = load %struct.X509_name_st*, %struct.X509_name_st** %subject, align 8, !tbaa !28
  ret %struct.X509_name_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.asn1_string_st* @X509_get_serialNumber(%struct.x509_st* noundef readnone %a) local_unnamed_addr #6 {
entry:
  %serialNumber = getelementptr inbounds %struct.x509_st, %struct.x509_st* %a, i64 0, i32 0, i32 1
  ret %struct.asn1_string_st* %serialNumber
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.asn1_string_st* @X509_get0_serialNumber(%struct.x509_st* noundef readnone %a) local_unnamed_addr #6 {
entry:
  %serialNumber = getelementptr inbounds %struct.x509_st, %struct.x509_st* %a, i64 0, i32 0, i32 1
  ret %struct.asn1_string_st* %serialNumber
}

; Function Attrs: noinline nounwind uwtable
define i64 @X509_subject_name_hash(%struct.x509_st* nocapture noundef readonly %x) local_unnamed_addr #0 {
entry:
  %subject = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 5
  %0 = load %struct.X509_name_st*, %struct.X509_name_st** %subject, align 8, !tbaa !28
  %call = tail call i64 @X509_NAME_hash_ex(%struct.X509_name_st* noundef %0, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null, i32* noundef null) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define i64 @X509_subject_name_hash_old(%struct.x509_st* nocapture noundef readonly %x) local_unnamed_addr #0 {
entry:
  %subject = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 5
  %0 = load %struct.X509_name_st*, %struct.X509_name_st** %subject, align 8, !tbaa !28
  %call = tail call i64 @X509_NAME_hash_old(%struct.X509_name_st* noundef %0) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_cmp(%struct.x509_st* noundef %a, %struct.x509_st* noundef %b) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_st* %a, %b
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @X509_check_purpose(%struct.x509_st* noundef %a, i32 noundef -1, i32 noundef 0) #8
  %call1 = tail call i32 @X509_check_purpose(%struct.x509_st* noundef %b, i32 noundef -1, i32 noundef 0) #8
  %ex_flags = getelementptr inbounds %struct.x509_st, %struct.x509_st* %a, i64 0, i32 8
  %0 = load i32, i32* %ex_flags, align 8, !tbaa !38
  %and = and i32 %0, 1048576
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %ex_flags3 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %b, i64 0, i32 8
  %1 = load i32, i32* %ex_flags3, align 8, !tbaa !38
  %and4 = and i32 %1, 1048576
  %cmp5 = icmp eq i32 %and4, 0
  br i1 %cmp5, label %if.end10, label %if.end14

if.end10:                                         ; preds = %land.lhs.true
  %arraydecay = getelementptr inbounds %struct.x509_st, %struct.x509_st* %a, i64 0, i32 20, i64 0
  %arraydecay8 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %b, i64 0, i32 20, i64 0
  %call9 = tail call i32 @memcmp(i8* noundef nonnull %arraydecay, i8* noundef nonnull %arraydecay8, i64 noundef 20) #10
  %cmp11.not = icmp eq i32 %call9, 0
  br i1 %cmp11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end10
  %cmp13.inv = icmp sgt i32 %call9, -1
  %cond = select i1 %cmp13.inv, i32 1, i32 -1
  br label %cleanup

if.end14:                                         ; preds = %if.end, %land.lhs.true, %if.end10
  %modified = getelementptr inbounds %struct.x509_st, %struct.x509_st* %a, i64 0, i32 0, i32 10, i32 2
  %2 = load i32, i32* %modified, align 8, !tbaa !39
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %land.lhs.true15, label %if.end48.thread

land.lhs.true15:                                  ; preds = %if.end14
  %modified18 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %b, i64 0, i32 0, i32 10, i32 2
  %3 = load i32, i32* %modified18, align 8, !tbaa !39
  %tobool19.not = icmp eq i32 %3, 0
  br i1 %tobool19.not, label %if.then20, label %if.end48.thread

if.then20:                                        ; preds = %land.lhs.true15
  %len = getelementptr inbounds %struct.x509_st, %struct.x509_st* %a, i64 0, i32 0, i32 10, i32 1
  %4 = load i64, i64* %len, align 8, !tbaa !40
  %len25 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %b, i64 0, i32 0, i32 10, i32 1
  %5 = load i64, i64* %len25, align 8, !tbaa !40
  %cmp26 = icmp slt i64 %4, %5
  br i1 %cmp26, label %cleanup, label %if.end28

if.end28:                                         ; preds = %if.then20
  %cmp35 = icmp sgt i64 %4, %5
  br i1 %cmp35, label %cleanup, label %if.end48

if.end48:                                         ; preds = %if.end28
  %enc40 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %a, i64 0, i32 0, i32 10, i32 0
  %6 = load i8*, i8** %enc40, align 8, !tbaa !41
  %enc43 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %b, i64 0, i32 0, i32 10, i32 0
  %7 = load i8*, i8** %enc43, align 8, !tbaa !41
  %call47 = tail call i32 @memcmp(i8* noundef %6, i8* noundef %7, i64 noundef %4) #10
  %cmp50 = icmp sgt i32 %call47, 0
  %conv = zext i1 %cmp50 to i32
  %cmp49.inv = icmp sgt i32 %call47, -1
  br i1 %cmp49.inv, label %if.end48.thread, label %cleanup

if.end48.thread:                                  ; preds = %land.lhs.true15, %if.end14, %if.end48
  %conv78 = phi i32 [ %conv, %if.end48 ], [ 0, %if.end14 ], [ 0, %land.lhs.true15 ]
  br label %cleanup

cleanup:                                          ; preds = %if.end48.thread, %if.end48, %if.end28, %if.then20, %entry, %if.then12
  %retval.0 = phi i32 [ %cond, %if.then12 ], [ 0, %entry ], [ -1, %if.then20 ], [ 1, %if.end28 ], [ %conv78, %if.end48.thread ], [ -1, %if.end48 ]
  ret i32 %retval.0
}

declare i32 @X509_check_purpose(%struct.x509_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_x509_add_cert_new(%struct.stack_st_X509** nocapture noundef %p_sk, %struct.x509_st* noundef %cert, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %0 = load %struct.stack_st_X509*, %struct.stack_st_X509** %p_sk, align 8, !tbaa !42
  %cmp = icmp eq %struct.stack_st_X509* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #8
  %1 = bitcast %struct.stack_st_X509** %p_sk to %struct.stack_st**
  store %struct.stack_st* %call, %struct.stack_st** %1, align 8, !tbaa !42
  %cmp1 = icmp eq %struct.stack_st* %call, null
  %2 = bitcast %struct.stack_st* %call to %struct.stack_st_X509*
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 187, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ossl_x509_add_cert_new, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #8
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = phi %struct.stack_st_X509* [ %2, %land.lhs.true ], [ %0, %entry ]
  %call2 = tail call i32 @X509_add_cert(%struct.stack_st_X509* noundef %3, %struct.x509_st* noundef %cert, i32 noundef %flags) #9
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_add_cert(%struct.stack_st_X509* noundef %sk, %struct.x509_st* noundef %cert, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.stack_st_X509* %sk, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 196, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.X509_add_cert, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786690, i8* noundef null) #8
  br label %return

if.end:                                           ; preds = %entry
  %and = and i32 %flags, 4
  %cmp1.not = icmp eq i32 %and, 0
  br i1 %cmp1.not, label %if.end11, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %sk) #9
  %call343 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #8
  %cmp444 = icmp sgt i32 %call343, 0
  br i1 %cmp444, label %for.body, label %if.end11

for.cond:                                         ; preds = %for.body
  %call3 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #8
  %cmp4 = icmp slt i32 %inc, %call3
  br i1 %cmp4, label %for.body, label %if.end11, !llvm.loop !43

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.045 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call6 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.045) #8
  %0 = bitcast i8* %call6 to %struct.x509_st*
  %call7 = tail call i32 @X509_cmp(%struct.x509_st* noundef %0, %struct.x509_st* noundef %cert) #9
  %cmp8 = icmp eq i32 %call7, 0
  %inc = add nuw nsw i32 %i.045, 1
  br i1 %cmp8, label %return, label %for.cond

if.end11:                                         ; preds = %for.cond, %for.cond.preheader, %if.end
  %and12 = and i32 %flags, 8
  %cmp13.not = icmp eq i32 %and12, 0
  br i1 %cmp13.not, label %if.end16, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end11
  %call14 = tail call i32 @X509_self_signed(%struct.x509_st* noundef %cert, i32 noundef 0) #8
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.end16, label %return

if.end16:                                         ; preds = %land.lhs.true, %if.end11
  %call17 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef nonnull %sk) #9
  %1 = bitcast %struct.x509_st* %cert to i8*
  %and19 = lshr i32 %flags, 1
  %2 = and i32 %and19, 1
  %sext = add nsw i32 %2, -1
  %call21 = tail call i32 @OPENSSL_sk_insert(%struct.stack_st* noundef %call17, i8* noundef %1, i32 noundef %sext) #8
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end16
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 215, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.X509_add_cert, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #8
  br label %return

if.end24:                                         ; preds = %if.end16
  %and25 = and i32 %flags, 1
  %cmp26.not = icmp eq i32 %and25, 0
  br i1 %cmp26.not, label %return, label %if.then27

if.then27:                                        ; preds = %if.end24
  %call28 = tail call i32 @X509_up_ref(%struct.x509_st* noundef %cert) #8
  br label %return

return:                                           ; preds = %for.body, %if.end24, %if.then27, %land.lhs.true, %if.then23, %if.then
  %retval.1 = phi i32 [ 0, %if.then ], [ 0, %if.then23 ], [ 1, %land.lhs.true ], [ 1, %if.then27 ], [ 1, %if.end24 ], [ 1, %for.body ]
  ret i32 %retval.1
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #6 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @X509_self_signed(%struct.x509_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_insert(%struct.stack_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #6 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @X509_up_ref(%struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_add_certs(%struct.stack_st_X509* noundef %sk, %struct.stack_st_X509* noundef %certs, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %sk.addr = alloca %struct.stack_st_X509*, align 8
  store %struct.stack_st_X509* %sk, %struct.stack_st_X509** %sk.addr, align 8, !tbaa !42
  %cmp = icmp eq %struct.stack_st_X509* %sk, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 227, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.X509_add_certs, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786690, i8* noundef null) #8
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @ossl_x509_add_certs_new(%struct.stack_st_X509** noundef nonnull %sk.addr, %struct.stack_st_X509* noundef %certs, i32 noundef %flags) #9
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_x509_add_certs_new(%struct.stack_st_X509** nocapture noundef %p_sk, %struct.stack_st_X509* noundef %certs, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %certs) #9
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #8
  %and = and i32 %flags, 2
  %cmp2 = icmp eq i32 %and, 0
  %cmp19 = icmp sgt i32 %call1, 0
  br i1 %cmp19, label %for.body, label %cleanup7

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i32 %inc, %call1
  br i1 %exitcond.not, label %cleanup7, label %for.body, !llvm.loop !45

for.body:                                         ; preds = %entry, %for.cond
  %i.020 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %0 = xor i32 %i.020, -1
  %sub3 = add i32 %call1, %0
  %cond = select i1 %cmp2, i32 %i.020, i32 %sub3
  %call5 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %cond) #8
  %1 = bitcast i8* %call5 to %struct.x509_st*
  %call6 = tail call i32 @ossl_x509_add_cert_new(%struct.stack_st_X509** noundef %p_sk, %struct.x509_st* noundef %1, i32 noundef %flags) #9
  %tobool.not = icmp eq i32 %call6, 0
  %inc = add nuw nsw i32 %i.020, 1
  br i1 %tobool.not, label %cleanup7, label %for.cond

cleanup7:                                         ; preds = %for.body, %for.cond, %entry
  %retval.2 = phi i32 [ 1, %entry ], [ 1, %for.cond ], [ 0, %for.body ]
  ret i32 %retval.2
}

declare i32 @i2d_X509_NAME(%struct.X509_name_st* noundef, i8** noundef) local_unnamed_addr #2

declare i32 @EVP_Digest(i8* noundef, i64 noundef, i8* noundef, i32* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.x509_st* @X509_find_by_issuer_and_serial(%struct.stack_st_X509* noundef %sk, %struct.X509_name_st* noundef %name, %struct.asn1_string_st* nocapture noundef readonly %serial) local_unnamed_addr #0 {
entry:
  %x = alloca %struct.x509_st, align 8
  %0 = bitcast %struct.x509_st* %x to i8*
  call void @llvm.lifetime.start.p0i8(i64 384, i8* nonnull %0) #11
  %tobool.not = icmp eq %struct.stack_st_X509* %sk, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %serialNumber = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 1
  %1 = bitcast %struct.asn1_string_st* %serialNumber to i8*
  %2 = bitcast %struct.asn1_string_st* %serial to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %1, i8* noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  %issuer = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 3
  store %struct.X509_name_st* %name, %struct.X509_name_st** %issuer, align 8, !tbaa !19
  %call = call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %sk) #9
  %call220 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #8
  %cmp21 = icmp sgt i32 %call220, 0
  br i1 %cmp21, label %for.body, label %cleanup

for.cond:                                         ; preds = %for.body
  %call2 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #8
  %cmp = icmp slt i32 %inc, %call2
  br i1 %cmp, label %for.body, label %cleanup, !llvm.loop !48

for.body:                                         ; preds = %if.end, %for.cond
  %i.022 = phi i32 [ %inc, %for.cond ], [ 0, %if.end ]
  %call4 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.022) #8
  %3 = bitcast i8* %call4 to %struct.x509_st*
  %call5 = call i32 @X509_issuer_and_serial_cmp(%struct.x509_st* noundef %3, %struct.x509_st* noundef nonnull %x) #9
  %cmp6 = icmp eq i32 %call5, 0
  %inc = add nuw nsw i32 %i.022, 1
  br i1 %cmp6, label %cleanup.loopexit.split.loop.exit, label %for.cond

cleanup.loopexit.split.loop.exit:                 ; preds = %for.body
  %4 = bitcast i8* %call4 to %struct.x509_st*
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %cleanup.loopexit.split.loop.exit, %if.end, %entry
  %retval.0 = phi %struct.x509_st* [ null, %entry ], [ null, %if.end ], [ %4, %cleanup.loopexit.split.loop.exit ], [ null, %for.cond ]
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %0) #11
  ret %struct.x509_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind uwtable
define %struct.x509_st* @X509_find_by_subject(%struct.stack_st_X509* noundef %sk, %struct.X509_name_st* noundef %name) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %sk) #9
  %call116 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #8
  %cmp17 = icmp sgt i32 %call116, 0
  br i1 %cmp17, label %for.body, label %cleanup

for.cond:                                         ; preds = %for.body
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #8
  %cmp = icmp slt i32 %inc, %call1
  br i1 %cmp, label %for.body, label %cleanup, !llvm.loop !49

for.body:                                         ; preds = %entry, %for.cond
  %i.018 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %call3 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.018) #8
  %0 = bitcast i8* %call3 to %struct.x509_st*
  %call4 = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef %0) #9
  %call5 = tail call i32 @X509_NAME_cmp(%struct.X509_name_st* noundef %call4, %struct.X509_name_st* noundef %name) #9
  %cmp6 = icmp eq i32 %call5, 0
  %inc = add nuw nsw i32 %i.018, 1
  br i1 %cmp6, label %cleanup.loopexit.split.loop.exit, label %for.cond

cleanup.loopexit.split.loop.exit:                 ; preds = %for.body
  %1 = bitcast i8* %call3 to %struct.x509_st*
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %cleanup.loopexit.split.loop.exit, %entry
  %retval.0 = phi %struct.x509_st* [ null, %entry ], [ %1, %cleanup.loopexit.split.loop.exit ], [ null, %for.cond ]
  ret %struct.x509_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef readonly %x) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_st* %x, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %key = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 6
  %0 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %key, align 8, !tbaa !50
  %call = tail call %struct.evp_pkey_st* @X509_PUBKEY_get0(%struct.X509_pubkey_st* noundef %0) #8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.evp_pkey_st* [ %call, %if.end ], [ null, %entry ]
  ret %struct.evp_pkey_st* %retval.0
}

declare %struct.evp_pkey_st* @X509_PUBKEY_get0(%struct.X509_pubkey_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @X509_get_pubkey(%struct.x509_st* noundef readonly %x) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_st* %x, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %key = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 6
  %0 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %key, align 8, !tbaa !50
  %call = tail call %struct.evp_pkey_st* @X509_PUBKEY_get(%struct.X509_pubkey_st* noundef %0) #8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.evp_pkey_st* [ %call, %if.end ], [ null, %entry ]
  ret %struct.evp_pkey_st* %retval.0
}

declare %struct.evp_pkey_st* @X509_PUBKEY_get(%struct.X509_pubkey_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_check_private_key(%struct.x509_st* noundef %x, %struct.evp_pkey_st* noundef %k) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef %x) #9
  %cmp = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 395, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.X509_check_private_key, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 108, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef nonnull %call, %struct.evp_pkey_st* noundef %k) #8
  %switch.tableidx = add i32 %call1, 2
  %0 = icmp ult i32 %switch.tableidx, 3
  br i1 %0, label %switch.lookup, label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  %switch.idx.mult = mul i32 %switch.tableidx, -3
  %switch.offset = add i32 %switch.idx.mult, 407
  %1 = sext i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds [3 x i32], [3 x i32]* @switch.table.X509_check_private_key, i64 0, i64 %1
  %switch.load = load i32, i32* %switch.gep, align 4
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef %switch.offset, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.X509_check_private_key, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef %switch.load, i8* noundef null) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %switch.lookup
  %cmp4 = icmp sgt i32 %call1, 0
  %conv = zext i1 %cmp4 to i32
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %conv, %sw.epilog ]
  ret i32 %retval.0
}

declare i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_chain_check_suiteb(i32* noundef writeonly %perror_depth, %struct.x509_st* noundef %x, %struct.stack_st_X509* noundef %chain, i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %tflags = alloca i64, align 8
  %0 = bitcast i64* %tflags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  store i64 %flags, i64* %tflags, align 8, !tbaa !47
  %and = and i64 %flags, 196608
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp = icmp eq %struct.x509_st* %x, null
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %chain) #9
  %call2 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef 0) #8
  %1 = bitcast i8* %call2 to %struct.x509_st*
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then1
  %x.addr.0 = phi %struct.x509_st* [ %1, %if.then1 ], [ %x, %if.end ]
  %i.0 = phi i32 [ 1, %if.then1 ], [ 0, %if.end ]
  %call4 = tail call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef %x.addr.0) #9
  %cmp5 = icmp eq %struct.stack_st_X509* %chain, null
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end3
  %call7 = call fastcc i32 @check_suite_b(%struct.evp_pkey_st* noundef %call4, i32 noundef -1, i64* noundef nonnull %tflags) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %call9 = tail call i64 @X509_get_version(%struct.x509_st* noundef %x.addr.0) #8
  %cmp10.not = icmp eq i64 %call9, 2
  br i1 %cmp10.not, label %if.end12, label %if.then35.thread

if.end12:                                         ; preds = %if.end8
  %call13 = call fastcc i32 @check_suite_b(%struct.evp_pkey_st* noundef %call4, i32 noundef -1, i64* noundef nonnull %tflags) #9
  %cmp14.not = icmp eq i32 %call13, 0
  br i1 %cmp14.not, label %for.cond.preheader, label %if.then35

for.cond.preheader:                               ; preds = %if.end12
  %call17 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %chain) #9
  %call1895 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call17) #8
  %cmp1996 = icmp slt i32 %i.0, %call1895
  br i1 %cmp1996, label %for.body, label %end

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.198 = phi i32 [ %inc, %for.inc ], [ %i.0, %for.cond.preheader ]
  %x.addr.197 = phi %struct.x509_st* [ %2, %for.inc ], [ %x.addr.0, %for.cond.preheader ]
  %call20 = tail call i32 @X509_get_signature_nid(%struct.x509_st* noundef %x.addr.197) #8
  %call22 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call17, i32 noundef %i.198) #8
  %2 = bitcast i8* %call22 to %struct.x509_st*
  %call23 = tail call i64 @X509_get_version(%struct.x509_st* noundef %2) #8
  %cmp24.not = icmp eq i64 %call23, 2
  br i1 %cmp24.not, label %if.end26, label %if.then35.thread

if.end26:                                         ; preds = %for.body
  %call27 = tail call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef %2) #9
  %call28 = call fastcc i32 @check_suite_b(%struct.evp_pkey_st* noundef %call27, i32 noundef %call20, i64* noundef nonnull %tflags) #9
  %cmp29.not = icmp eq i32 %call28, 0
  br i1 %cmp29.not, label %for.inc, label %if.then35

for.inc:                                          ; preds = %if.end26
  %inc = add nuw nsw i32 %i.198, 1
  %call18 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call17) #8
  %cmp19 = icmp slt i32 %inc, %call18
  br i1 %cmp19, label %for.body, label %end.loopexit, !llvm.loop !51

end.loopexit:                                     ; preds = %for.inc
  %3 = bitcast i8* %call22 to %struct.x509_st*
  br label %end

end:                                              ; preds = %end.loopexit, %for.cond.preheader
  %x.addr.1.lcssa = phi %struct.x509_st* [ %x.addr.0, %for.cond.preheader ], [ %3, %end.loopexit ]
  %i.1.lcssa = phi i32 [ %i.0, %for.cond.preheader ], [ %inc, %end.loopexit ]
  %pk.0.lcssa = phi %struct.evp_pkey_st* [ %call4, %for.cond.preheader ], [ %call27, %end.loopexit ]
  %call32 = tail call i32 @X509_get_signature_nid(%struct.x509_st* noundef %x.addr.1.lcssa) #8
  %call33 = call fastcc i32 @check_suite_b(%struct.evp_pkey_st* noundef %pk.0.lcssa, i32 noundef %call32, i64* noundef nonnull %tflags) #9
  %cmp34.not = icmp eq i32 %call33, 0
  br i1 %cmp34.not, label %cleanup, label %if.then35

if.then35:                                        ; preds = %if.end26, %if.end12, %end
  %i.290 = phi i32 [ %i.1.lcssa, %end ], [ 0, %if.end12 ], [ %i.198, %if.end26 ]
  %rv.089 = phi i32 [ %call33, %end ], [ %call13, %if.end12 ], [ %call28, %if.end26 ]
  %cmp37 = icmp eq i32 %rv.089, 60
  %4 = load i64, i64* %tflags, align 8
  %cmp43.not = icmp eq i64 %4, %flags
  %spec.select85 = select i1 %cmp43.not, i32 60, i32 61
  %spec.select117 = select i1 %cmp37, i32 %spec.select85, i32 %rv.089
  %rv.089.op = add i32 %rv.089, -59
  br label %if.then35.thread

if.then35.thread:                                 ; preds = %for.body, %if.then35, %if.end8
  %rv.089109 = phi i32 [ -3, %if.end8 ], [ %rv.089.op, %if.then35 ], [ -3, %for.body ]
  %i.290108 = phi i32 [ 0, %if.end8 ], [ %i.290, %if.then35 ], [ %i.198, %for.body ]
  %5 = phi i32 [ 56, %if.end8 ], [ %spec.select117, %if.then35 ], [ 56, %for.body ]
  %tobool46.not = icmp eq i32* %perror_depth, null
  br i1 %tobool46.not, label %cleanup, label %if.then47

if.then47:                                        ; preds = %if.then35.thread
  %6 = icmp ult i32 %rv.089109, 2
  %tobool38 = icmp ne i32 %i.290108, 0
  %or.cond54 = select i1 %6, i1 %tobool38, i1 false
  %dec = sext i1 %or.cond54 to i32
  %spec.select = add nsw i32 %i.290108, %dec
  store i32 %spec.select, i32* %perror_depth, align 4, !tbaa !33
  br label %cleanup

cleanup:                                          ; preds = %end, %if.then47, %if.then35.thread, %entry, %if.then6
  %retval.0 = phi i32 [ %call7, %if.then6 ], [ 0, %entry ], [ %5, %if.then47 ], [ %5, %if.then35.thread ], [ 0, %end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_suite_b(%struct.evp_pkey_st* noundef %pkey, i32 noundef %sign_nid, i64* nocapture noundef %pflags) unnamed_addr #0 {
entry:
  %curve_name = alloca [80 x i8], align 16
  %curve_name_len = alloca i64, align 8
  %0 = getelementptr inbounds [80 x i8], [80 x i8]* %curve_name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #11
  %1 = bitcast i64* %curve_name_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #11
  %cmp = icmp eq %struct.evp_pkey_st* %pkey, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef nonnull %pkey, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call1 = call i32 @EVP_PKEY_get_group_name(%struct.evp_pkey_st* noundef nonnull %pkey, i8* noundef nonnull %0, i64 noundef 80, i64* noundef nonnull %curve_name_len) #8
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %call6 = call i32 @OBJ_txt2nid(i8* noundef nonnull %0) #8
  switch i32 %call6, label %cleanup [
    i32 715, label %if.then8
    i32 415, label %if.then18
  ]

if.then8:                                         ; preds = %if.end4
  switch i32 %sign_nid, label %cleanup [
    i32 -1, label %if.end12
    i32 795, label %if.end12
  ]

if.end12:                                         ; preds = %if.then8, %if.then8
  %2 = load i64, i64* %pflags, align 8, !tbaa !47
  %and = and i64 %2, 131072
  %tobool13.not = icmp eq i64 %and, 0
  br i1 %tobool13.not, label %cleanup, label %if.end15

if.end15:                                         ; preds = %if.end12
  %and16 = and i64 %2, -65537
  store i64 %and16, i64* %pflags, align 8, !tbaa !47
  br label %if.end30

if.then18:                                        ; preds = %if.end4
  switch i32 %sign_nid, label %cleanup [
    i32 -1, label %if.end23
    i32 794, label %if.end23
  ]

if.end23:                                         ; preds = %if.then18, %if.then18
  %3 = load i64, i64* %pflags, align 8, !tbaa !47
  %and24 = and i64 %3, 65536
  %tobool25.not = icmp eq i64 %and24, 0
  br i1 %tobool25.not, label %cleanup, label %if.end30

if.end30:                                         ; preds = %if.end23, %if.end15
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end23, %if.then18, %if.end12, %if.then8, %if.end, %entry, %lor.lhs.false, %if.end30
  %retval.0 = phi i32 [ 0, %if.end30 ], [ 57, %lor.lhs.false ], [ 57, %entry ], [ 58, %if.end ], [ 59, %if.then8 ], [ 60, %if.end12 ], [ 59, %if.then18 ], [ 60, %if.end23 ], [ 58, %if.end4 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #11
  ret i32 %retval.0
}

declare i64 @X509_get_version(%struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @X509_get_signature_nid(%struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_CRL_check_suiteb(%struct.X509_crl_st* nocapture noundef readonly %crl, %struct.evp_pkey_st* noundef %pk, i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, i64* %flags.addr, align 8, !tbaa !47
  %and = and i64 %flags, 196608
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %algorithm = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 0, i32 1, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !52
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #8
  %call2 = call fastcc i32 @check_suite_b(%struct.evp_pkey_st* noundef %pk, i32 noundef %call, i64* noundef nonnull %flags.addr) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_X509* @X509_chain_up_ref(%struct.stack_st_X509* noundef %chain) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %chain) #9
  %call1 = tail call %struct.stack_st* @OPENSSL_sk_dup(%struct.stack_st* noundef %call) #8
  %0 = bitcast %struct.stack_st* %call1 to %struct.stack_st_X509*
  %cmp = icmp eq %struct.stack_st* %call1, null
  br i1 %cmp, label %cleanup14, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %0) #9
  %call330 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #8
  %cmp431 = icmp sgt i32 %call330, 0
  br i1 %cmp431, label %for.body, label %cleanup14

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.032 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %call6 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call2, i32 noundef %i.032) #8
  %1 = bitcast i8* %call6 to %struct.x509_st*
  %call7 = tail call i32 @X509_up_ref(%struct.x509_st* noundef %1) #8
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %while.cond.preheader, label %for.inc

while.cond.preheader:                             ; preds = %for.body
  %cmp1034.not = icmp eq i32 %i.032, 0
  br i1 %cmp1034.not, label %while.end, label %while.body

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.032, 1
  %call3 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #8
  %cmp4 = icmp slt i32 %inc, %call3
  br i1 %cmp4, label %for.body, label %cleanup14, !llvm.loop !53

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %dec35.in = phi i32 [ %dec35, %while.body ], [ %i.032, %while.cond.preheader ]
  %dec35 = add nsw i32 %dec35.in, -1
  %call12 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call2, i32 noundef %dec35) #8
  %2 = bitcast i8* %call12 to %struct.x509_st*
  tail call void @X509_free(%struct.x509_st* noundef %2) #8
  %cmp10 = icmp sgt i32 %dec35.in, 1
  br i1 %cmp10, label %while.body, label %while.end, !llvm.loop !54

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %call13 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef nonnull %0) #9
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call13) #8
  br label %cleanup14

cleanup14:                                        ; preds = %for.inc, %for.cond.preheader, %entry, %while.end
  %retval.0 = phi %struct.stack_st_X509* [ null, %while.end ], [ null, %entry ], [ %0, %for.cond.preheader ], [ %0, %for.inc ]
  ret %struct.stack_st_X509* %retval.0
}

declare %struct.stack_st* @OPENSSL_sk_dup(%struct.stack_st* noundef) local_unnamed_addr #2

declare void @X509_free(%struct.x509_st* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_get_group_name(%struct.evp_pkey_st* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #2

declare i32 @OBJ_txt2nid(i8* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 48}
!5 = !{!"x509_cinf_st", !6, i64 0, !9, i64 8, !12, i64 32, !6, i64 48, !13, i64 56, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !14, i64 112}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"asn1_string_st", !10, i64 0, !10, i64 4, !6, i64 8, !11, i64 16}
!10 = !{!"int", !7, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = !{!"X509_algor_st", !6, i64 0, !6, i64 8}
!13 = !{!"X509_val_st", !6, i64 0, !6, i64 8}
!14 = !{!"ASN1_ENCODING_st", !6, i64 0, !11, i64 8, !10, i64 16}
!15 = !{!16, !6, i64 24}
!16 = !{!"X509_name_st", !6, i64 0, !10, i64 8, !6, i64 16, !6, i64 24, !10, i64 32}
!17 = !{!16, !10, i64 8}
!18 = !{!16, !10, i64 32}
!19 = !{!20, !6, i64 48}
!20 = !{!"x509_st", !5, i64 0, !12, i64 136, !9, i64 152, !21, i64 176, !7, i64 192, !22, i64 200, !11, i64 216, !11, i64 224, !10, i64 232, !10, i64 236, !10, i64 240, !10, i64 244, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !7, i64 312, !6, i64 336, !6, i64 344, !10, i64 352, !6, i64 360, !6, i64 368, !6, i64 376}
!21 = !{!"x509_sig_info_st", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12}
!22 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!23 = !{!20, !6, i64 368}
!24 = !{!20, !6, i64 376}
!25 = !{!20, !6, i64 16}
!26 = !{!20, !10, i64 8}
!27 = !{!7, !7, i64 0}
!28 = !{!20, !6, i64 72}
!29 = !{!30, !6, i64 24}
!30 = !{!"X509_crl_st", !31, i64 0, !12, i64 88, !9, i64 104, !7, i64 128, !10, i64 132, !6, i64 136, !6, i64 144, !10, i64 152, !10, i64 156, !6, i64 160, !6, i64 168, !6, i64 176, !7, i64 184, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240}
!31 = !{!"X509_crl_info_st", !6, i64 0, !12, i64 8, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !14, i64 64}
!32 = !{!30, !10, i64 132}
!33 = !{!10, !10, i64 0}
!34 = !{!16, !6, i64 16}
!35 = !{!36, !6, i64 8}
!36 = !{!"buf_mem_st", !11, i64 0, !6, i64 8, !11, i64 16, !11, i64 24}
!37 = !{!36, !11, i64 0}
!38 = !{!20, !10, i64 232}
!39 = !{!20, !10, i64 128}
!40 = !{!20, !11, i64 120}
!41 = !{!20, !6, i64 112}
!42 = !{!6, !6, i64 0}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = distinct !{!45, !44}
!46 = !{i64 0, i64 4, !33, i64 4, i64 4, !33, i64 8, i64 8, !42, i64 16, i64 8, !47}
!47 = !{!11, !11, i64 0}
!48 = distinct !{!48, !44}
!49 = distinct !{!49, !44}
!50 = !{!20, !6, i64 80}
!51 = distinct !{!51, !44}
!52 = !{!30, !6, i64 8}
!53 = distinct !{!53, !44}
!54 = distinct !{!54, !44}
