; ModuleID = 'crypto/ess/ess_lib.c'
source_filename = "crypto/ess/ess_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ESS_signing_cert = type { %struct.stack_st_ESS_CERT_ID*, %struct.stack_st_POLICYINFO* }
%struct.stack_st_ESS_CERT_ID = type opaque
%struct.stack_st_POLICYINFO = type opaque
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
%struct.stack_st_X509 = type opaque
%struct.stack_st = type opaque
%struct.ESS_cert_id = type { %struct.asn1_string_st*, %struct.ESS_issuer_serial* }
%struct.ESS_issuer_serial = type { %struct.stack_st_GENERAL_NAME*, %struct.asn1_string_st* }
%struct.evp_md_st = type opaque
%struct.GENERAL_NAME_st = type { i32, %union.anon.1 }
%union.anon.1 = type { i8* }
%struct.ESS_signing_cert_v2_st = type { %struct.stack_st_ESS_CERT_ID_V2*, %struct.stack_st_POLICYINFO* }
%struct.stack_st_ESS_CERT_ID_V2 = type opaque
%struct.ESS_cert_id_v2_st = type { %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.ESS_issuer_serial* }

@.str = private unnamed_addr constant [21 x i8] c"crypto/ess/ess_lib.c\00", align 1
@__func__.OSSL_ESS_signing_cert_new_init = private unnamed_addr constant [31 x i8] c"OSSL_ESS_signing_cert_new_init\00", align 1
@__func__.OSSL_ESS_signing_cert_v2_new_init = private unnamed_addr constant [34 x i8] c"OSSL_ESS_signing_cert_v2_new_init\00", align 1
@__func__.OSSL_ESS_check_signing_certs = private unnamed_addr constant [29 x i8] c"OSSL_ESS_check_signing_certs\00", align 1
@__func__.ESS_CERT_ID_new_init = private unnamed_addr constant [21 x i8] c"ESS_CERT_ID_new_init\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"SHA256\00", align 1
@__func__.ESS_CERT_ID_V2_new_init = private unnamed_addr constant [24 x i8] c"ESS_CERT_ID_V2_new_init\00", align 1
@__func__.find = private unnamed_addr constant [5 x i8] c"find\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.ESS_signing_cert* @OSSL_ESS_signing_cert_new_init(%struct.x509_st* noundef %signcert, %struct.stack_st_X509* noundef %certs, i32 noundef %set_issuer_serial) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ESS_signing_cert* @ESS_SIGNING_CERT_new() #6
  %cmp = icmp eq %struct.ESS_signing_cert* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %cert_ids = getelementptr inbounds %struct.ESS_signing_cert, %struct.ESS_signing_cert* %call, i64 0, i32 0
  %0 = load %struct.stack_st_ESS_CERT_ID*, %struct.stack_st_ESS_CERT_ID** %cert_ids, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.stack_st_ESS_CERT_ID* %0, null
  br i1 %cmp1, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %call2 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #6
  %1 = bitcast %struct.ESS_signing_cert* %call to %struct.stack_st**
  store %struct.stack_st* %call2, %struct.stack_st** %1, align 8, !tbaa !4
  %cmp4 = icmp eq %struct.stack_st* %call2, null
  br i1 %cmp4, label %err, label %if.end6

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %call7 = tail call fastcc %struct.ESS_cert_id* @ESS_CERT_ID_new_init(%struct.x509_st* noundef %signcert, i32 noundef %set_issuer_serial) #7
  %cmp8 = icmp eq %struct.ESS_cert_id* %call7, null
  br i1 %cmp8, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %2 = load %struct.stack_st_ESS_CERT_ID*, %struct.stack_st_ESS_CERT_ID** %cert_ids, align 8, !tbaa !4
  %call10 = tail call fastcc %struct.stack_st* @ossl_check_ESS_CERT_ID_sk_type(%struct.stack_st_ESS_CERT_ID* noundef %2) #7
  %3 = bitcast %struct.ESS_cert_id* %call7 to i8*
  %call12 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call10, i8* noundef nonnull %3) #6
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %err, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false
  %call15 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %certs) #7
  %call1650 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call15) #6
  %cmp1751 = icmp sgt i32 %call1650, 0
  br i1 %cmp1751, label %for.body, label %cleanup30

for.cond:                                         ; preds = %lor.lhs.false22
  %call16 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call15) #6
  %cmp17 = icmp slt i32 %inc, %call16
  br i1 %cmp17, label %for.body, label %cleanup30, !llvm.loop !9

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.052 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call19 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call15, i32 noundef %i.052) #6
  %4 = bitcast i8* %call19 to %struct.x509_st*
  %call20 = tail call fastcc %struct.ESS_cert_id* @ESS_CERT_ID_new_init(%struct.x509_st* noundef %4, i32 noundef 1) #7
  %cmp21 = icmp eq %struct.ESS_cert_id* %call20, null
  br i1 %cmp21, label %err, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %for.body
  %5 = load %struct.stack_st_ESS_CERT_ID*, %struct.stack_st_ESS_CERT_ID** %cert_ids, align 8, !tbaa !4
  %call24 = tail call fastcc %struct.stack_st* @ossl_check_ESS_CERT_ID_sk_type(%struct.stack_st_ESS_CERT_ID* noundef %5) #7
  %6 = bitcast %struct.ESS_cert_id* %call20 to i8*
  %call26 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call24, i8* noundef nonnull %6) #6
  %tobool27.not = icmp eq i32 %call26, 0
  %inc = add nuw nsw i32 %i.052, 1
  br i1 %tobool27.not, label %err, label %for.cond

err:                                              ; preds = %lor.lhs.false22, %for.body, %if.end6, %lor.lhs.false, %land.lhs.true, %entry
  %cid.0 = phi %struct.ESS_cert_id* [ null, %entry ], [ null, %land.lhs.true ], [ null, %if.end6 ], [ %call7, %lor.lhs.false ], [ %call20, %lor.lhs.false22 ], [ null, %for.body ]
  tail call void @ESS_SIGNING_CERT_free(%struct.ESS_signing_cert* noundef %call) #6
  tail call void @ESS_CERT_ID_free(%struct.ESS_cert_id* noundef %cid.0) #6
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.OSSL_ESS_signing_cert_new_init, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 54, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup30

cleanup30:                                        ; preds = %for.cond, %for.cond.preheader, %err
  %retval.0 = phi %struct.ESS_signing_cert* [ null, %err ], [ %call, %for.cond.preheader ], [ %call, %for.cond ]
  ret %struct.ESS_signing_cert* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.ESS_signing_cert* @ESS_SIGNING_CERT_new() local_unnamed_addr #2

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ESS_cert_id* @ESS_CERT_ID_new_init(%struct.x509_st* noundef %cert, i32 noundef %set_issuer_serial) unnamed_addr #0 {
entry:
  %cert_sha1 = alloca [20 x i8], align 16
  %0 = getelementptr inbounds [20 x i8], [20 x i8]* %cert_sha1, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %0) #8
  %call = tail call %struct.ESS_cert_id* @ESS_CERT_ID_new() #6
  %cmp = icmp eq %struct.ESS_cert_id* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.evp_md_st* @EVP_sha1() #6
  %call2 = call i32 @X509_digest(%struct.x509_st* noundef %cert, %struct.evp_md_st* noundef %call1, i8* noundef nonnull %0, i32* noundef null) #6
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %hash = getelementptr inbounds %struct.ESS_cert_id, %struct.ESS_cert_id* %call, i64 0, i32 0
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %hash, align 8, !tbaa !11
  %call6 = call i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef %1, i8* noundef nonnull %0, i32 noundef 20) #6
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %err, label %if.end9

if.end9:                                          ; preds = %if.end4
  %tobool10.not = icmp eq i32 %set_issuer_serial, 0
  br i1 %tobool10.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end9
  %issuer_serial = getelementptr inbounds %struct.ESS_cert_id, %struct.ESS_cert_id* %call, i64 0, i32 1
  %2 = load %struct.ESS_issuer_serial*, %struct.ESS_issuer_serial** %issuer_serial, align 8, !tbaa !13
  %cmp13 = icmp eq %struct.ESS_issuer_serial* %2, null
  br i1 %cmp13, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %if.end12
  %call14 = call %struct.ESS_issuer_serial* @ESS_ISSUER_SERIAL_new() #6
  store %struct.ESS_issuer_serial* %call14, %struct.ESS_issuer_serial** %issuer_serial, align 8, !tbaa !13
  %cmp16 = icmp eq %struct.ESS_issuer_serial* %call14, null
  br i1 %cmp16, label %err, label %if.end18

if.end18:                                         ; preds = %land.lhs.true, %if.end12
  %call19 = call %struct.GENERAL_NAME_st* @GENERAL_NAME_new() #6
  %cmp20 = icmp eq %struct.GENERAL_NAME_st* %call19, null
  br i1 %cmp20, label %err, label %if.end22

if.end22:                                         ; preds = %if.end18
  %type = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %call19, i64 0, i32 0
  store i32 4, i32* %type, align 8, !tbaa !14
  %call23 = call %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef %cert) #6
  %call24 = call %struct.X509_name_st* @X509_NAME_dup(%struct.X509_name_st* noundef %call23) #6
  %d = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %call19, i64 0, i32 1
  %dirn = bitcast %union.anon.1* %d to %struct.X509_name_st**
  store %struct.X509_name_st* %call24, %struct.X509_name_st** %dirn, align 8, !tbaa !17
  %cmp25 = icmp eq %struct.X509_name_st* %call24, null
  br i1 %cmp25, label %err, label %if.end27

if.end27:                                         ; preds = %if.end22
  %3 = load %struct.ESS_issuer_serial*, %struct.ESS_issuer_serial** %issuer_serial, align 8, !tbaa !13
  %issuer = getelementptr inbounds %struct.ESS_issuer_serial, %struct.ESS_issuer_serial* %3, i64 0, i32 0
  %4 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %issuer, align 8, !tbaa !18
  %call29 = call fastcc %struct.stack_st* @ossl_check_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %4) #7
  %5 = bitcast %struct.GENERAL_NAME_st* %call19 to i8*
  %call31 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call29, i8* noundef nonnull %5) #6
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %if.end34

if.end34:                                         ; preds = %if.end27
  %6 = load %struct.ESS_issuer_serial*, %struct.ESS_issuer_serial** %issuer_serial, align 8, !tbaa !13
  %serial = getelementptr inbounds %struct.ESS_issuer_serial, %struct.ESS_issuer_serial* %6, i64 0, i32 1
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %serial, align 8, !tbaa !20
  call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %7) #6
  %call36 = call %struct.asn1_string_st* @X509_get0_serialNumber(%struct.x509_st* noundef %cert) #6
  %call37 = call %struct.asn1_string_st* @ASN1_INTEGER_dup(%struct.asn1_string_st* noundef %call36) #6
  %8 = load %struct.ESS_issuer_serial*, %struct.ESS_issuer_serial** %issuer_serial, align 8, !tbaa !13
  %serial39 = getelementptr inbounds %struct.ESS_issuer_serial, %struct.ESS_issuer_serial* %8, i64 0, i32 1
  store %struct.asn1_string_st* %call37, %struct.asn1_string_st** %serial39, align 8, !tbaa !20
  %cmp40 = icmp eq %struct.asn1_string_st* %call37, null
  br i1 %cmp40, label %err, label %cleanup

err:                                              ; preds = %if.end34, %if.end27, %if.end22, %if.end18, %land.lhs.true, %if.end4, %if.end, %entry
  %name.0 = phi %struct.GENERAL_NAME_st* [ null, %entry ], [ null, %land.lhs.true ], [ null, %if.end18 ], [ %call19, %if.end22 ], [ null, %if.end34 ], [ %call19, %if.end27 ], [ null, %if.end4 ], [ null, %if.end ]
  call void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef %name.0) #6
  call void @ESS_CERT_ID_free(%struct.ESS_cert_id* noundef %call) #6
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ESS_CERT_ID_new_init, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 54, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end9, %err
  %retval.0 = phi %struct.ESS_cert_id* [ null, %err ], [ %call, %if.end9 ], [ %call, %if.end34 ]
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %0) #8
  ret %struct.ESS_cert_id* %retval.0
}

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_ESS_CERT_ID_sk_type(%struct.stack_st_ESS_CERT_ID* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_ESS_CERT_ID* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare void @ESS_SIGNING_CERT_free(%struct.ESS_signing_cert* noundef) local_unnamed_addr #2

declare void @ESS_CERT_ID_free(%struct.ESS_cert_id* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ESS_signing_cert_v2_st* @OSSL_ESS_signing_cert_v2_new_init(%struct.evp_md_st* noundef %hash_alg, %struct.x509_st* noundef %signcert, %struct.stack_st_X509* noundef %certs, i32 noundef %set_issuer_serial) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ESS_signing_cert_v2_st* @ESS_SIGNING_CERT_V2_new() #6
  %cmp = icmp eq %struct.ESS_signing_cert_v2_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc %struct.ESS_cert_id_v2_st* @ESS_CERT_ID_V2_new_init(%struct.evp_md_st* noundef %hash_alg, %struct.x509_st* noundef %signcert, i32 noundef %set_issuer_serial) #7
  %cmp2 = icmp eq %struct.ESS_cert_id_v2_st* %call1, null
  br i1 %cmp2, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %cert_ids = getelementptr inbounds %struct.ESS_signing_cert_v2_st, %struct.ESS_signing_cert_v2_st* %call, i64 0, i32 0
  %0 = load %struct.stack_st_ESS_CERT_ID_V2*, %struct.stack_st_ESS_CERT_ID_V2** %cert_ids, align 8, !tbaa !21
  %call5 = tail call fastcc %struct.stack_st* @ossl_check_ESS_CERT_ID_V2_sk_type(%struct.stack_st_ESS_CERT_ID_V2* noundef %0) #7
  %1 = bitcast %struct.ESS_cert_id_v2_st* %call1 to i8*
  %call7 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call5, i8* noundef nonnull %1) #6
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %err, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end4
  %call10 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %certs) #7
  %call1147 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call10) #6
  %cmp1248 = icmp sgt i32 %call1147, 0
  br i1 %cmp1248, label %for.body, label %cleanup26

for.cond:                                         ; preds = %if.end18
  %call11 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call10) #6
  %cmp12 = icmp slt i32 %inc, %call11
  br i1 %cmp12, label %for.body, label %cleanup26, !llvm.loop !23

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.049 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call14 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call10, i32 noundef %i.049) #6
  %2 = bitcast i8* %call14 to %struct.x509_st*
  %call15 = tail call fastcc %struct.ESS_cert_id_v2_st* @ESS_CERT_ID_V2_new_init(%struct.evp_md_st* noundef %hash_alg, %struct.x509_st* noundef %2, i32 noundef 1) #7
  %cmp16 = icmp eq %struct.ESS_cert_id_v2_st* %call15, null
  br i1 %cmp16, label %err, label %if.end18

if.end18:                                         ; preds = %for.body
  %3 = load %struct.stack_st_ESS_CERT_ID_V2*, %struct.stack_st_ESS_CERT_ID_V2** %cert_ids, align 8, !tbaa !21
  %call20 = tail call fastcc %struct.stack_st* @ossl_check_ESS_CERT_ID_V2_sk_type(%struct.stack_st_ESS_CERT_ID_V2* noundef %3) #7
  %4 = bitcast %struct.ESS_cert_id_v2_st* %call15 to i8*
  %call22 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call20, i8* noundef nonnull %4) #6
  %tobool23.not = icmp eq i32 %call22, 0
  %inc = add nuw nsw i32 %i.049, 1
  br i1 %tobool23.not, label %err, label %for.cond

err:                                              ; preds = %if.end18, %for.body, %if.end4, %if.end, %entry
  %cid.1 = phi %struct.ESS_cert_id_v2_st* [ null, %entry ], [ null, %if.end ], [ %call1, %if.end4 ], [ %call15, %if.end18 ], [ null, %for.body ]
  tail call void @ESS_SIGNING_CERT_V2_free(%struct.ESS_signing_cert_v2_st* noundef %call) #6
  tail call void @ESS_CERT_ID_V2_free(%struct.ESS_cert_id_v2_st* noundef %cid.1) #6
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 132, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.OSSL_ESS_signing_cert_v2_new_init, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 54, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup26

cleanup26:                                        ; preds = %for.cond, %for.cond.preheader, %err
  %retval.0 = phi %struct.ESS_signing_cert_v2_st* [ null, %err ], [ %call, %for.cond.preheader ], [ %call, %for.cond ]
  ret %struct.ESS_signing_cert_v2_st* %retval.0
}

declare %struct.ESS_signing_cert_v2_st* @ESS_SIGNING_CERT_V2_new() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ESS_cert_id_v2_st* @ESS_CERT_ID_V2_new_init(%struct.evp_md_st* noundef %hash_alg, %struct.x509_st* noundef %cert, i32 noundef %set_issuer_serial) unnamed_addr #0 {
entry:
  %hash = alloca [64 x i8], align 16
  %hash_len = alloca i32, align 4
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %hash, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #8
  %1 = bitcast i32* %hash_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8
  store i32 64, i32* %hash_len, align 4, !tbaa !24
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 64) #6
  %call1 = call %struct.ESS_cert_id_v2_st* @ESS_CERT_ID_V2_new() #6
  %cmp = icmp eq %struct.ESS_cert_id_v2_st* %call1, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i32 @EVP_MD_is_a(%struct.evp_md_st* noundef %hash_alg, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)) #6
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then3, label %if.end13

if.then3:                                         ; preds = %if.end
  %call4 = call %struct.X509_algor_st* @X509_ALGOR_new() #6
  %cmp5 = icmp eq %struct.X509_algor_st* %call4, null
  br i1 %cmp5, label %err, label %if.end7

if.end7:                                          ; preds = %if.then3
  call void @X509_ALGOR_set_md(%struct.X509_algor_st* noundef nonnull %call4, %struct.evp_md_st* noundef %hash_alg) #6
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %call4, i64 0, i32 0
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !25
  %cmp8 = icmp eq %struct.asn1_object_st* %2, null
  br i1 %cmp8, label %err, label %if.end13

if.end13:                                         ; preds = %if.end, %if.end7
  %.sink = phi %struct.X509_algor_st* [ %call4, %if.end7 ], [ null, %if.end ]
  %hash_alg12 = getelementptr inbounds %struct.ESS_cert_id_v2_st, %struct.ESS_cert_id_v2_st* %call1, i64 0, i32 0
  store %struct.X509_algor_st* %.sink, %struct.X509_algor_st** %hash_alg12, align 8, !tbaa !27
  %call15 = call i32 @X509_digest(%struct.x509_st* noundef %cert, %struct.evp_md_st* noundef %hash_alg, i8* noundef nonnull %0, i32* noundef nonnull %hash_len) #6
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %if.end18

if.end18:                                         ; preds = %if.end13
  %hash19 = getelementptr inbounds %struct.ESS_cert_id_v2_st, %struct.ESS_cert_id_v2_st* %call1, i64 0, i32 1
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %hash19, align 8, !tbaa !29
  %4 = load i32, i32* %hash_len, align 4, !tbaa !24
  %call21 = call i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef %3, i8* noundef nonnull %0, i32 noundef %4) #6
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err, label %if.end24

if.end24:                                         ; preds = %if.end18
  %tobool25.not = icmp eq i32 %set_issuer_serial, 0
  br i1 %tobool25.not, label %cleanup, label %if.end27

if.end27:                                         ; preds = %if.end24
  %call28 = call %struct.ESS_issuer_serial* @ESS_ISSUER_SERIAL_new() #6
  %issuer_serial = getelementptr inbounds %struct.ESS_cert_id_v2_st, %struct.ESS_cert_id_v2_st* %call1, i64 0, i32 2
  store %struct.ESS_issuer_serial* %call28, %struct.ESS_issuer_serial** %issuer_serial, align 8, !tbaa !30
  %cmp29 = icmp eq %struct.ESS_issuer_serial* %call28, null
  br i1 %cmp29, label %err, label %if.end31

if.end31:                                         ; preds = %if.end27
  %call32 = call %struct.GENERAL_NAME_st* @GENERAL_NAME_new() #6
  %cmp33 = icmp eq %struct.GENERAL_NAME_st* %call32, null
  br i1 %cmp33, label %err, label %if.end35

if.end35:                                         ; preds = %if.end31
  %type = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %call32, i64 0, i32 0
  store i32 4, i32* %type, align 8, !tbaa !14
  %call36 = call %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef %cert) #6
  %call37 = call %struct.X509_name_st* @X509_NAME_dup(%struct.X509_name_st* noundef %call36) #6
  %d = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %call32, i64 0, i32 1
  %dirn = bitcast %union.anon.1* %d to %struct.X509_name_st**
  store %struct.X509_name_st* %call37, %struct.X509_name_st** %dirn, align 8, !tbaa !17
  %cmp38 = icmp eq %struct.X509_name_st* %call37, null
  br i1 %cmp38, label %err, label %if.end40

if.end40:                                         ; preds = %if.end35
  %5 = load %struct.ESS_issuer_serial*, %struct.ESS_issuer_serial** %issuer_serial, align 8, !tbaa !30
  %issuer = getelementptr inbounds %struct.ESS_issuer_serial, %struct.ESS_issuer_serial* %5, i64 0, i32 0
  %6 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %issuer, align 8, !tbaa !18
  %call42 = call fastcc %struct.stack_st* @ossl_check_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %6) #7
  %7 = bitcast %struct.GENERAL_NAME_st* %call32 to i8*
  %call44 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call42, i8* noundef nonnull %7) #6
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %err, label %if.end47

if.end47:                                         ; preds = %if.end40
  %8 = load %struct.ESS_issuer_serial*, %struct.ESS_issuer_serial** %issuer_serial, align 8, !tbaa !30
  %serial = getelementptr inbounds %struct.ESS_issuer_serial, %struct.ESS_issuer_serial* %8, i64 0, i32 1
  %9 = load %struct.asn1_string_st*, %struct.asn1_string_st** %serial, align 8, !tbaa !20
  call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %9) #6
  %call49 = call %struct.asn1_string_st* @X509_get0_serialNumber(%struct.x509_st* noundef %cert) #6
  %call50 = call %struct.asn1_string_st* @ASN1_INTEGER_dup(%struct.asn1_string_st* noundef %call49) #6
  %10 = load %struct.ESS_issuer_serial*, %struct.ESS_issuer_serial** %issuer_serial, align 8, !tbaa !30
  %serial52 = getelementptr inbounds %struct.ESS_issuer_serial, %struct.ESS_issuer_serial* %10, i64 0, i32 1
  store %struct.asn1_string_st* %call50, %struct.asn1_string_st** %serial52, align 8, !tbaa !20
  %cmp55 = icmp eq %struct.asn1_string_st* %call50, null
  br i1 %cmp55, label %err, label %cleanup

err:                                              ; preds = %if.end47, %if.end40, %if.end35, %if.end31, %if.end27, %if.end18, %if.end13, %if.end7, %if.then3, %entry
  %name.0 = phi %struct.GENERAL_NAME_st* [ null, %entry ], [ null, %if.end27 ], [ null, %if.end31 ], [ %call32, %if.end35 ], [ null, %if.end47 ], [ %call32, %if.end40 ], [ null, %if.end18 ], [ null, %if.end13 ], [ null, %if.then3 ], [ null, %if.end7 ]
  %alg.1 = phi %struct.X509_algor_st* [ null, %entry ], [ null, %if.end27 ], [ null, %if.end31 ], [ null, %if.end35 ], [ null, %if.end47 ], [ null, %if.end40 ], [ null, %if.end18 ], [ null, %if.end13 ], [ null, %if.then3 ], [ %call4, %if.end7 ]
  call void @X509_ALGOR_free(%struct.X509_algor_st* noundef %alg.1) #6
  call void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef %name.0) #6
  call void @ESS_CERT_ID_V2_free(%struct.ESS_cert_id_v2_st* noundef %call1) #6
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 193, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ESS_CERT_ID_V2_new_init, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 54, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end24, %err
  %retval.0 = phi %struct.ESS_cert_id_v2_st* [ null, %err ], [ %call1, %if.end24 ], [ %call1, %if.end47 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #8
  ret %struct.ESS_cert_id_v2_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_ESS_CERT_ID_V2_sk_type(%struct.stack_st_ESS_CERT_ID_V2* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_ESS_CERT_ID_V2* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @ESS_SIGNING_CERT_V2_free(%struct.ESS_signing_cert_v2_st* noundef) local_unnamed_addr #2

declare void @ESS_CERT_ID_V2_free(%struct.ESS_cert_id_v2_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_ESS_check_signing_certs(%struct.ESS_signing_cert* noundef readonly %ss, %struct.ESS_signing_cert_v2_st* noundef readonly %ssv2, %struct.stack_st_X509* noundef %chain, i32 noundef %require_signing_cert) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ESS_signing_cert* %ss, null
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %cert_ids = getelementptr inbounds %struct.ESS_signing_cert, %struct.ESS_signing_cert* %ss, i64 0, i32 0
  %0 = load %struct.stack_st_ESS_CERT_ID*, %struct.stack_st_ESS_CERT_ID** %cert_ids, align 8, !tbaa !4
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_ESS_CERT_ID_sk_type(%struct.stack_st_ESS_CERT_ID* noundef %0) #7
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i32 [ %call1, %cond.false ], [ -1, %entry ]
  %cmp2 = icmp eq %struct.ESS_signing_cert_v2_st* %ssv2, null
  br i1 %cmp2, label %cond.end8, label %cond.end8.thread

cond.end8.thread:                                 ; preds = %cond.end
  %cert_ids5 = getelementptr inbounds %struct.ESS_signing_cert_v2_st, %struct.ESS_signing_cert_v2_st* %ssv2, i64 0, i32 0
  %1 = load %struct.stack_st_ESS_CERT_ID_V2*, %struct.stack_st_ESS_CERT_ID_V2** %cert_ids5, align 8, !tbaa !21
  %call6 = tail call fastcc %struct.stack_st* @ossl_check_const_ESS_CERT_ID_V2_sk_type(%struct.stack_st_ESS_CERT_ID_V2* noundef %1) #7
  %call7 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call6) #6
  br label %if.end

cond.end8:                                        ; preds = %cond.end
  %tobool = icmp ne i32 %require_signing_cert, 0
  %or.cond = and i1 %cmp, %tobool
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end8
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 296, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.OSSL_ESS_check_signing_certs, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 108, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %cond.end8.thread, %cond.end8
  %cond970 = phi i32 [ %call7, %cond.end8.thread ], [ -1, %cond.end8 ]
  %cmp13 = icmp eq i32 %cond, 0
  %cmp14 = icmp eq i32 %cond970, 0
  %or.cond42 = select i1 %cmp13, i1 true, i1 %cmp14
  br i1 %or.cond42, label %if.then15, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %cmp1772 = icmp sgt i32 %cond, 0
  br i1 %cmp1772, label %for.body.lr.ph, label %for.cond25.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cert_ids18 = getelementptr inbounds %struct.ESS_signing_cert, %struct.ESS_signing_cert* %ss, i64 0, i32 0
  br label %for.body

if.then15:                                        ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 300, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.OSSL_ESS_check_signing_certs, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 54, i32 noundef 107, i8* noundef null) #6
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i32 %inc, %cond
  br i1 %exitcond.not, label %for.cond25.preheader, label %for.body, !llvm.loop !31

for.cond25.preheader:                             ; preds = %for.cond, %for.cond.preheader
  %cert_ids28 = getelementptr inbounds %struct.ESS_signing_cert_v2_st, %struct.ESS_signing_cert_v2_st* %ssv2, i64 0, i32 0
  %cmp2674 = icmp sgt i32 %cond970, 0
  br i1 %cmp2674, label %for.body27, label %cleanup

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %i.073 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %2 = load %struct.stack_st_ESS_CERT_ID*, %struct.stack_st_ESS_CERT_ID** %cert_ids18, align 8, !tbaa !4
  %call19 = tail call fastcc %struct.stack_st* @ossl_check_const_ESS_CERT_ID_sk_type(%struct.stack_st_ESS_CERT_ID* noundef %2) #7
  %call20 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call19, i32 noundef %i.073) #6
  %3 = bitcast i8* %call20 to %struct.ESS_cert_id*
  %call21 = tail call fastcc i32 @find(%struct.ESS_cert_id* noundef %3, %struct.ESS_cert_id_v2_st* noundef null, i32 noundef %i.073, %struct.stack_st_X509* noundef %chain) #7
  %cmp22 = icmp slt i32 %call21, 1
  %inc = add nuw nsw i32 %i.073, 1
  br i1 %cmp22, label %cleanup, label %for.cond

for.cond25:                                       ; preds = %for.body27
  %exitcond79.not = icmp eq i32 %inc36, %cond970
  br i1 %exitcond79.not, label %cleanup, label %for.body27, !llvm.loop !32

for.body27:                                       ; preds = %for.cond25.preheader, %for.cond25
  %i.175 = phi i32 [ %inc36, %for.cond25 ], [ 0, %for.cond25.preheader ]
  %4 = load %struct.stack_st_ESS_CERT_ID_V2*, %struct.stack_st_ESS_CERT_ID_V2** %cert_ids28, align 8, !tbaa !21
  %call29 = tail call fastcc %struct.stack_st* @ossl_check_const_ESS_CERT_ID_V2_sk_type(%struct.stack_st_ESS_CERT_ID_V2* noundef %4) #7
  %call30 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call29, i32 noundef %i.175) #6
  %5 = bitcast i8* %call30 to %struct.ESS_cert_id_v2_st*
  %call31 = tail call fastcc i32 @find(%struct.ESS_cert_id* noundef null, %struct.ESS_cert_id_v2_st* noundef %5, i32 noundef %i.175, %struct.stack_st_X509* noundef %chain) #7
  %cmp32 = icmp slt i32 %call31, 1
  %inc36 = add nuw nsw i32 %i.175, 1
  br i1 %cmp32, label %cleanup, label %for.cond25

cleanup:                                          ; preds = %for.body, %for.body27, %for.cond25, %for.cond25.preheader, %if.then15, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then15 ], [ 1, %for.cond25.preheader ], [ %call31, %for.body27 ], [ 1, %for.cond25 ], [ %call21, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_ESS_CERT_ID_sk_type(%struct.stack_st_ESS_CERT_ID* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_ESS_CERT_ID* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_ESS_CERT_ID_V2_sk_type(%struct.stack_st_ESS_CERT_ID_V2* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_ESS_CERT_ID_V2* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @find(%struct.ESS_cert_id* noundef readonly %cid, %struct.ESS_cert_id_v2_st* noundef readonly %cid_v2, i32 noundef %index, %struct.stack_st_X509* noundef %certs) unnamed_addr #0 {
entry:
  %name = alloca [50 x i8], align 16
  %cert_digest = alloca [64 x i8], align 16
  %len = alloca i32, align 4
  %0 = getelementptr inbounds [50 x i8], [50 x i8]* %name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 50, i8* nonnull %0) #8
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %cert_digest, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #8
  %2 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #8
  %cmp = icmp eq %struct.ESS_cert_id* %cid, null
  %cmp1 = icmp eq %struct.ESS_cert_id_v2_st* %cid_v2, null
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 230, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.find, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 54, i32 noundef 524550, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %cmp, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %call = call i8* @strcpy(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #6
  br label %if.end13

if.else:                                          ; preds = %if.end
  %hash_alg = getelementptr inbounds %struct.ESS_cert_id_v2_st, %struct.ESS_cert_id_v2_st* %cid_v2, i64 0, i32 0
  %3 = load %struct.X509_algor_st*, %struct.X509_algor_st** %hash_alg, align 8, !tbaa !27
  %cmp4 = icmp eq %struct.X509_algor_st* %3, null
  br i1 %cmp4, label %if.then5, label %if.else8

if.then5:                                         ; preds = %if.else
  %call7 = call i8* @strcpy(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)) #6
  br label %if.end13

if.else8:                                         ; preds = %if.else
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %3, i64 0, i32 0
  %4 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !25
  %call11 = call i32 @OBJ_obj2txt(i8* noundef nonnull %0, i32 noundef 50, %struct.asn1_object_st* noundef %4, i32 noundef 0) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then5, %if.else8, %if.then3
  %call14 = call i32 @ERR_set_mark() #6
  %call16 = call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef null, i8* noundef nonnull %0, i8* noundef null) #6
  %cmp17 = icmp eq %struct.evp_md_st* %call16, null
  br i1 %cmp17, label %if.end21, label %if.end25

if.end21:                                         ; preds = %if.end13
  %call20 = call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef nonnull %0) #6
  %cmp22 = icmp eq %struct.evp_md_st* %call20, null
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end21
  %call24 = call i32 @ERR_clear_last_mark() #6
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 249, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.find, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 54, i32 noundef 106, i8* noundef null) #6
  br label %end

if.end25:                                         ; preds = %if.end13, %if.end21
  %md.0118 = phi %struct.evp_md_st* [ %call20, %if.end21 ], [ %call16, %if.end13 ]
  %call26 = call i32 @ERR_pop_to_mark() #6
  %call27 = call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %certs) #7
  %call28121 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call27) #6
  %cmp29122 = icmp sgt i32 %call28121, 0
  br i1 %cmp29122, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end25
  %hash = getelementptr inbounds %struct.ESS_cert_id, %struct.ESS_cert_id* %cid, i64 0, i32 0
  %hash33 = getelementptr inbounds %struct.ESS_cert_id_v2_st, %struct.ESS_cert_id_v2_st* %cid_v2, i64 0, i32 1
  %.pn113.in = select i1 %cmp, %struct.asn1_string_st** %hash33, %struct.asn1_string_st** %hash
  %issuer_serial = getelementptr inbounds %struct.ESS_cert_id, %struct.ESS_cert_id* %cid, i64 0, i32 1
  %issuer_serial57 = getelementptr inbounds %struct.ESS_cert_id_v2_st, %struct.ESS_cert_id_v2_st* %cid_v2, i64 0, i32 2
  %cond59.in = select i1 %cmp, %struct.ESS_issuer_serial** %issuer_serial57, %struct.ESS_issuer_serial** %issuer_serial
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.0123 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %call31 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call27, i32 noundef %i.0123) #6
  %5 = bitcast i8* %call31 to %struct.x509_st*
  %.pn113 = load %struct.asn1_string_st*, %struct.asn1_string_st** %.pn113.in, align 8, !tbaa !33
  %cond.in = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %.pn113, i64 0, i32 0
  %cond = load i32, i32* %cond.in, align 8, !tbaa !34
  %call36 = call i32 @X509_digest(%struct.x509_st* noundef %5, %struct.evp_md_st* noundef nonnull %md.0118, i8* noundef nonnull %1, i32* noundef nonnull %len) #6
  %tobool.not = icmp ne i32 %call36, 0
  %6 = load i32, i32* %len, align 4
  %cmp37.not = icmp eq i32 %cond, %6
  %or.cond114 = select i1 %tobool.not, i1 %cmp37.not, i1 false
  br i1 %or.cond114, label %if.end39, label %if.then38

if.then38:                                        ; preds = %for.body
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 260, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.find, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 54, i32 noundef 103, i8* noundef null) #6
  br label %end

if.end39:                                         ; preds = %for.body
  %.pn = load %struct.asn1_string_st*, %struct.asn1_string_st** %.pn113.in, align 8, !tbaa !33
  %cond47.in = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %.pn, i64 0, i32 2
  %cond47 = load i8*, i8** %cond47.in, align 8, !tbaa !37
  %conv = zext i32 %cond to i64
  %call49 = call i32 @memcmp(i8* noundef %cond47, i8* noundef nonnull %1, i64 noundef %conv) #9
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then52, label %for.inc

if.then52:                                        ; preds = %if.end39
  %cond59 = load %struct.ESS_issuer_serial*, %struct.ESS_issuer_serial** %cond59.in, align 8, !tbaa !33
  %cmp60 = icmp eq %struct.ESS_issuer_serial* %cond59, null
  br i1 %cmp60, label %if.then66, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %if.then52
  %call63 = call fastcc i32 @ess_issuer_serial_cmp(%struct.ESS_issuer_serial* noundef nonnull %cond59, %struct.x509_st* noundef %5) #7
  %cmp64 = icmp eq i32 %call63, 0
  br i1 %cmp64, label %if.then66, label %for.inc

if.then66:                                        ; preds = %lor.lhs.false62, %if.then52
  %cmp67 = icmp ne i32 %i.0123, 0
  %cmp69 = icmp eq i32 %index, 0
  %cmp71 = xor i1 %cmp69, %cmp67
  br i1 %cmp71, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.then66
  %add = add nuw nsw i32 %i.0123, 1
  br label %end

if.end74:                                         ; preds = %if.then66
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 273, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.find, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 54, i32 noundef 105, i8* noundef null) #6
  br label %end

for.inc:                                          ; preds = %if.end39, %lor.lhs.false62
  %inc = add nuw nsw i32 %i.0123, 1
  %call28 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call27) #6
  %cmp29 = icmp slt i32 %inc, %call28
  br i1 %cmp29, label %for.body, label %for.end, !llvm.loop !38

for.end:                                          ; preds = %for.inc, %if.end25
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 280, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.find, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 54, i32 noundef 104, i8* noundef null) #6
  br label %end

end:                                              ; preds = %for.end, %if.end74, %if.then73, %if.then38, %if.then23
  %md.0117 = phi %struct.evp_md_st* [ null, %if.then23 ], [ %md.0118, %if.then38 ], [ %md.0118, %if.then73 ], [ %md.0118, %if.end74 ], [ %md.0118, %for.end ]
  %ret.0 = phi i32 [ -1, %if.then23 ], [ -1, %if.then38 ], [ %add, %if.then73 ], [ -1, %if.end74 ], [ 0, %for.end ]
  call void @EVP_MD_free(%struct.evp_md_st* noundef %md.0117) #6
  br label %cleanup

cleanup:                                          ; preds = %end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %ret.0, %end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %0) #8
  ret i32 %retval.0
}

declare %struct.ESS_cert_id* @ESS_CERT_ID_new() local_unnamed_addr #2

declare i32 @X509_digest(%struct.x509_st* noundef, %struct.evp_md_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_sha1() local_unnamed_addr #2

declare i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.ESS_issuer_serial* @ESS_ISSUER_SERIAL_new() local_unnamed_addr #2

declare %struct.GENERAL_NAME_st* @GENERAL_NAME_new() local_unnamed_addr #2

declare %struct.X509_name_st* @X509_NAME_dup(%struct.X509_name_st* noundef) local_unnamed_addr #2

declare %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_GENERAL_NAME* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @ASN1_INTEGER_dup(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @X509_get0_serialNumber(%struct.x509_st* noundef) local_unnamed_addr #2

declare void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare %struct.ESS_cert_id_v2_st* @ESS_CERT_ID_V2_new() local_unnamed_addr #2

declare i32 @EVP_MD_is_a(%struct.evp_md_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.X509_algor_st* @X509_ALGOR_new() local_unnamed_addr #2

declare void @X509_ALGOR_set_md(%struct.X509_algor_st* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #2

declare void @X509_ALGOR_free(%struct.X509_algor_st* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @strcpy(i8* noundef, i8* noundef) local_unnamed_addr #4

declare i32 @OBJ_obj2txt(i8* noundef, i32 noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ERR_set_mark() local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #2

declare i32 @ERR_clear_last_mark() local_unnamed_addr #2

declare i32 @ERR_pop_to_mark() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ess_issuer_serial_cmp(%struct.ESS_issuer_serial* noundef readonly %is, %struct.x509_st* noundef %cert) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ESS_issuer_serial* %is, null
  %cmp1 = icmp eq %struct.x509_st* %cert, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %issuer3 = getelementptr inbounds %struct.ESS_issuer_serial, %struct.ESS_issuer_serial* %is, i64 0, i32 0
  %0 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %issuer3, align 8, !tbaa !18
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %0) #7
  %call4 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp5.not = icmp eq i32 %call4, 1
  br i1 %cmp5.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %1 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %issuer3, align 8, !tbaa !18
  %call7 = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %1) #7
  %call8 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call7, i32 noundef 0) #6
  %type = bitcast i8* %call8 to i32*
  %2 = load i32, i32* %type, align 8, !tbaa !14
  %cmp9.not = icmp eq i32 %2, 4
  br i1 %cmp9.not, label %lor.lhs.false10, label %cleanup

lor.lhs.false10:                                  ; preds = %if.end
  %d = getelementptr inbounds i8, i8* %call8, i64 8
  %dirn = bitcast i8* %d to %struct.X509_name_st**
  %3 = load %struct.X509_name_st*, %struct.X509_name_st** %dirn, align 8, !tbaa !17
  %call11 = tail call %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef nonnull %cert) #6
  %call12 = tail call i32 @X509_NAME_cmp(%struct.X509_name_st* noundef %3, %struct.X509_name_st* noundef %call11) #6
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %if.end15, label %cleanup

if.end15:                                         ; preds = %lor.lhs.false10
  %serial = getelementptr inbounds %struct.ESS_issuer_serial, %struct.ESS_issuer_serial* %is, i64 0, i32 1
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %serial, align 8, !tbaa !20
  %call16 = tail call %struct.asn1_string_st* @X509_get0_serialNumber(%struct.x509_st* noundef nonnull %cert) #6
  %call17 = tail call i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef %4, %struct.asn1_string_st* noundef %call16) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false10, %entry, %lor.lhs.false2, %if.end15
  %retval.0 = phi i32 [ %call17, %if.end15 ], [ -1, %lor.lhs.false2 ], [ -1, %entry ], [ -1, %lor.lhs.false10 ], [ -1, %if.end ]
  ret i32 %retval.0
}

declare void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_GENERAL_NAME* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @X509_NAME_cmp(%struct.X509_name_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"ESS_signing_cert", !6, i64 0, !6, i64 8}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !6, i64 0}
!12 = !{!"ESS_cert_id", !6, i64 0, !6, i64 8}
!13 = !{!12, !6, i64 8}
!14 = !{!15, !16, i64 0}
!15 = !{!"GENERAL_NAME_st", !16, i64 0, !7, i64 8}
!16 = !{!"int", !7, i64 0}
!17 = !{!7, !7, i64 0}
!18 = !{!19, !6, i64 0}
!19 = !{!"ESS_issuer_serial", !6, i64 0, !6, i64 8}
!20 = !{!19, !6, i64 8}
!21 = !{!22, !6, i64 0}
!22 = !{!"ESS_signing_cert_v2_st", !6, i64 0, !6, i64 8}
!23 = distinct !{!23, !10}
!24 = !{!16, !16, i64 0}
!25 = !{!26, !6, i64 0}
!26 = !{!"X509_algor_st", !6, i64 0, !6, i64 8}
!27 = !{!28, !6, i64 0}
!28 = !{!"ESS_cert_id_v2_st", !6, i64 0, !6, i64 8, !6, i64 16}
!29 = !{!28, !6, i64 8}
!30 = !{!28, !6, i64 16}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10}
!33 = !{!6, !6, i64 0}
!34 = !{!35, !16, i64 0}
!35 = !{!"asn1_string_st", !16, i64 0, !16, i64 4, !6, i64 8, !36, i64 16}
!36 = !{!"long", !7, i64 0}
!37 = !{!35, !6, i64 8}
!38 = distinct !{!38, !10}
