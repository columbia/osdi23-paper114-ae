; ModuleID = 'crypto/x509/x509_set.c'
source_filename = "crypto/x509/x509_set.c"
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
%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }
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
%struct.evp_pkey_st = type opaque
%struct.evp_pkey_asn1_method_st = type { i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* }
%struct.pkcs8_priv_key_info_st = type { %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.bio_st = type opaque
%struct.asn1_pctx_st = type { i64, i64, i64, i64, i64 }
%struct.evp_md_ctx_st = type opaque
%struct.ASN1_ITEM_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.engine_st = type opaque
%struct.evp_md_st = type opaque

@.str = private unnamed_addr constant [23 x i8] c"crypto/x509/x509_set.c\00", align 1
@__func__.x509_sig_info_init = private unnamed_addr constant [19 x i8] c"x509_sig_info_init\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_set_version(%struct.x509_st* noundef %x, i64 noundef %version) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_st* %x, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i64 %version, 0
  %version3 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %version3, align 8, !tbaa !4
  br i1 %cmp1, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %0) #9
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %version3, align 8, !tbaa !4
  br label %return

if.end6:                                          ; preds = %if.end
  %cmp9 = icmp eq %struct.asn1_string_st* %0, null
  br i1 %cmp9, label %if.then10, label %if.end16

if.then10:                                        ; preds = %if.end6
  %call = tail call %struct.asn1_string_st* @ASN1_INTEGER_new() #9
  store %struct.asn1_string_st* %call, %struct.asn1_string_st** %version3, align 8, !tbaa !4
  %cmp13 = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp13, label %return, label %if.end16

if.end16:                                         ; preds = %if.then10, %if.end6
  %1 = phi %struct.asn1_string_st* [ %call, %if.then10 ], [ %0, %if.end6 ]
  %call19 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef nonnull %1, i64 noundef %version) #9
  br label %return

return:                                           ; preds = %if.then10, %entry, %if.end16, %if.then2
  %retval.0 = phi i32 [ 1, %if.then2 ], [ %call19, %if.end16 ], [ 0, %entry ], [ 0, %if.then10 ]
  ret i32 %retval.0
}

declare void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare %struct.asn1_string_st* @ASN1_INTEGER_new() local_unnamed_addr #1

declare i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_set_serialNumber(%struct.x509_st* noundef %x, %struct.asn1_string_st* noundef %serial) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_st* %x, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %serialNumber = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 1
  %cmp1.not = icmp eq %struct.asn1_string_st* %serialNumber, %serial
  br i1 %cmp1.not, label %cleanup, label %if.then2

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @ASN1_STRING_copy(%struct.asn1_string_st* noundef nonnull %serialNumber, %struct.asn1_string_st* noundef %serial) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then2
  %retval.0 = phi i32 [ %call, %if.then2 ], [ 0, %entry ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @ASN1_STRING_copy(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_set_issuer_name(%struct.x509_st* noundef %x, %struct.X509_name_st* noundef %name) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_st* %x, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %issuer = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 3
  %call = tail call i32 @X509_NAME_set(%struct.X509_name_st** noundef nonnull %issuer, %struct.X509_name_st* noundef %name) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @X509_NAME_set(%struct.X509_name_st** noundef, %struct.X509_name_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_set_subject_name(%struct.x509_st* noundef %x, %struct.X509_name_st* noundef %name) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_st* %x, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %subject = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 5
  %call = tail call i32 @X509_NAME_set(%struct.X509_name_st** noundef nonnull %subject, %struct.X509_name_st* noundef %name) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_x509_set1_time(%struct.asn1_string_st** nocapture noundef %ptm, %struct.asn1_string_st* noundef %tm) local_unnamed_addr #0 {
entry:
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %ptm, align 8, !tbaa !18
  %cmp.not = icmp eq %struct.asn1_string_st* %0, %tm
  br i1 %cmp.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call %struct.asn1_string_st* @ASN1_STRING_dup(%struct.asn1_string_st* noundef %tm) #9
  %cmp1.not = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.then
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %ptm, align 8, !tbaa !18
  tail call void @ASN1_TIME_free(%struct.asn1_string_st* noundef %1) #9
  store %struct.asn1_string_st* %call, %struct.asn1_string_st** %ptm, align 8, !tbaa !18
  br label %if.end3

if.end3:                                          ; preds = %if.then, %if.then2, %entry
  %in.0 = phi %struct.asn1_string_st* [ %call, %if.then2 ], [ null, %if.then ], [ %tm, %entry ]
  %cmp4 = icmp ne %struct.asn1_string_st* %in.0, null
  %conv = zext i1 %cmp4 to i32
  ret i32 %conv
}

declare %struct.asn1_string_st* @ASN1_STRING_dup(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare void @ASN1_TIME_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_set1_notBefore(%struct.x509_st* noundef %x, %struct.asn1_string_st* noundef %tm) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_st* %x, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %notBefore = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 4, i32 0
  %call = tail call i32 @ossl_x509_set1_time(%struct.asn1_string_st** noundef nonnull %notBefore, %struct.asn1_string_st* noundef %tm) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_set1_notAfter(%struct.x509_st* noundef %x, %struct.asn1_string_st* noundef %tm) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_st* %x, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %notAfter = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 4, i32 1
  %call = tail call i32 @ossl_x509_set1_time(%struct.asn1_string_st** noundef nonnull %notAfter, %struct.asn1_string_st* noundef %tm) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_set_pubkey(%struct.x509_st* noundef %x, %struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_st* %x, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %key = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 6
  %call = tail call i32 @X509_PUBKEY_set(%struct.X509_pubkey_st** noundef nonnull %key, %struct.evp_pkey_st* noundef %pkey) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @X509_PUBKEY_set(%struct.X509_pubkey_st** noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define i32 @X509_up_ref(%struct.x509_st* nocapture noundef %x) local_unnamed_addr #3 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #11
  %references = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 4
  call fastcc void @CRYPTO_UP_REF(i32* noundef nonnull %references, i32* noundef nonnull %i) #10
  %1 = load i32, i32* %i, align 4, !tbaa !19
  %cmp1 = icmp sgt i32 %1, 1
  %cond = zext i1 %cmp1 to i32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #11
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_UP_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #4 {
entry:
  %0 = atomicrmw add i32* %val, i32 1 monotonic, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %ret, align 4, !tbaa !19
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i64 @X509_get_version(%struct.x509_st* nocapture noundef readonly %x) local_unnamed_addr #0 {
entry:
  %version = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %version, align 8, !tbaa !4
  %call = tail call i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef %0) #9
  ret i64 %call
}

declare i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_string_st* @X509_get0_notBefore(%struct.x509_st* nocapture noundef readonly %x) local_unnamed_addr #5 {
entry:
  %notBefore = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 4, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %notBefore, align 8, !tbaa !20
  ret %struct.asn1_string_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_string_st* @X509_get0_notAfter(%struct.x509_st* nocapture noundef readonly %x) local_unnamed_addr #5 {
entry:
  %notAfter = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 4, i32 1
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %notAfter, align 8, !tbaa !21
  ret %struct.asn1_string_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_string_st* @X509_getm_notBefore(%struct.x509_st* nocapture noundef readonly %x) local_unnamed_addr #5 {
entry:
  %notBefore = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 4, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %notBefore, align 8, !tbaa !20
  ret %struct.asn1_string_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_string_st* @X509_getm_notAfter(%struct.x509_st* nocapture noundef readonly %x) local_unnamed_addr #5 {
entry:
  %notAfter = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 4, i32 1
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %notAfter, align 8, !tbaa !21
  ret %struct.asn1_string_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_get_signature_type(%struct.x509_st* nocapture noundef readonly %x) local_unnamed_addr #0 {
entry:
  %algorithm = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 1, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !22
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #9
  %call1 = tail call i32 @EVP_PKEY_type(i32 noundef %call) #9
  ret i32 %call1
}

declare i32 @EVP_PKEY_type(i32 noundef) local_unnamed_addr #1

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.X509_pubkey_st* @X509_get_X509_PUBKEY(%struct.x509_st* nocapture noundef readonly %x) local_unnamed_addr #5 {
entry:
  %key = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 6
  %0 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %key, align 8, !tbaa !23
  ret %struct.X509_pubkey_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_X509_EXTENSION* @X509_get0_extensions(%struct.x509_st* nocapture noundef readonly %x) local_unnamed_addr #5 {
entry:
  %extensions = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 9
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !24
  ret %struct.stack_st_X509_EXTENSION* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @X509_get0_uids(%struct.x509_st* nocapture noundef readonly %x, %struct.asn1_string_st** noundef writeonly %piuid, %struct.asn1_string_st** noundef writeonly %psuid) local_unnamed_addr #6 {
entry:
  %cmp.not = icmp eq %struct.asn1_string_st** %piuid, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %issuerUID = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 7
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %issuerUID, align 8, !tbaa !25
  store %struct.asn1_string_st* %0, %struct.asn1_string_st** %piuid, align 8, !tbaa !18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp1.not = icmp eq %struct.asn1_string_st** %psuid, null
  br i1 %cmp1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %subjectUID = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 8
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %subjectUID, align 8, !tbaa !26
  store %struct.asn1_string_st* %1, %struct.asn1_string_st** %psuid, align 8, !tbaa !18
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.X509_algor_st* @X509_get0_tbs_sigalg(%struct.x509_st* noundef readnone %x) local_unnamed_addr #7 {
entry:
  %signature = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 2
  ret %struct.X509_algor_st* %signature
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @X509_SIG_INFO_get(%struct.x509_sig_info_st* nocapture noundef readonly %siginf, i32* noundef writeonly %mdnid, i32* noundef writeonly %pknid, i32* noundef writeonly %secbits, i32* noundef writeonly %flags) local_unnamed_addr #6 {
entry:
  %cmp.not = icmp eq i32* %mdnid, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %mdnid1 = getelementptr inbounds %struct.x509_sig_info_st, %struct.x509_sig_info_st* %siginf, i64 0, i32 0
  %0 = load i32, i32* %mdnid1, align 4, !tbaa !27
  store i32 %0, i32* %mdnid, align 4, !tbaa !19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp2.not = icmp eq i32* %pknid, null
  br i1 %cmp2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %pknid4 = getelementptr inbounds %struct.x509_sig_info_st, %struct.x509_sig_info_st* %siginf, i64 0, i32 1
  %1 = load i32, i32* %pknid4, align 4, !tbaa !28
  store i32 %1, i32* %pknid, align 4, !tbaa !19
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %cmp6.not = icmp eq i32* %secbits, null
  br i1 %cmp6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end5
  %secbits8 = getelementptr inbounds %struct.x509_sig_info_st, %struct.x509_sig_info_st* %siginf, i64 0, i32 2
  %2 = load i32, i32* %secbits8, align 4, !tbaa !29
  store i32 %2, i32* %secbits, align 4, !tbaa !19
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5
  %cmp10.not = icmp eq i32* %flags, null
  br i1 %cmp10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end9
  %flags12 = getelementptr inbounds %struct.x509_sig_info_st, %struct.x509_sig_info_st* %siginf, i64 0, i32 3
  %3 = load i32, i32* %flags12, align 4, !tbaa !30
  store i32 %3, i32* %flags, align 4, !tbaa !19
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9
  %flags14 = getelementptr inbounds %struct.x509_sig_info_st, %struct.x509_sig_info_st* %siginf, i64 0, i32 3
  %4 = load i32, i32* %flags14, align 4, !tbaa !30
  %and = and i32 %4, 1
  ret i32 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @X509_SIG_INFO_set(%struct.x509_sig_info_st* nocapture noundef writeonly %siginf, i32 noundef %mdnid, i32 noundef %pknid, i32 noundef %secbits, i32 noundef %flags) local_unnamed_addr #8 {
entry:
  %mdnid1 = getelementptr inbounds %struct.x509_sig_info_st, %struct.x509_sig_info_st* %siginf, i64 0, i32 0
  store i32 %mdnid, i32* %mdnid1, align 4, !tbaa !27
  %pknid2 = getelementptr inbounds %struct.x509_sig_info_st, %struct.x509_sig_info_st* %siginf, i64 0, i32 1
  store i32 %pknid, i32* %pknid2, align 4, !tbaa !28
  %secbits3 = getelementptr inbounds %struct.x509_sig_info_st, %struct.x509_sig_info_st* %siginf, i64 0, i32 2
  store i32 %secbits, i32* %secbits3, align 4, !tbaa !29
  %flags4 = getelementptr inbounds %struct.x509_sig_info_st, %struct.x509_sig_info_st* %siginf, i64 0, i32 3
  store i32 %flags, i32* %flags4, align 4, !tbaa !30
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_get_signature_info(%struct.x509_st* noundef %x, i32* noundef %mdnid, i32* noundef %pknid, i32* noundef %secbits, i32* noundef %flags) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @X509_check_purpose(%struct.x509_st* noundef %x, i32 noundef -1, i32 noundef -1) #9
  %siginf = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 3
  %call1 = tail call i32 @X509_SIG_INFO_get(%struct.x509_sig_info_st* noundef nonnull %siginf, i32* noundef %mdnid, i32* noundef %pknid, i32* noundef %secbits, i32* noundef %flags) #10
  ret i32 %call1
}

declare i32 @X509_check_purpose(%struct.x509_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_x509_init_sig_info(%struct.x509_st* noundef %x) local_unnamed_addr #0 {
entry:
  %siginf = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 3
  %sig_alg = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 1
  %signature = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 2
  %call = tail call fastcc i32 @x509_sig_info_init(%struct.x509_sig_info_st* noundef nonnull %siginf, %struct.X509_algor_st* noundef nonnull %sig_alg, %struct.asn1_string_st* noundef nonnull %signature) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @x509_sig_info_init(%struct.x509_sig_info_st* noundef %siginf, %struct.X509_algor_st* noundef %alg, %struct.asn1_string_st* noundef %sig) unnamed_addr #0 {
entry:
  %pknid = alloca i32, align 4
  %mdnid = alloca i32, align 4
  %0 = bitcast i32* %pknid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #11
  %1 = bitcast i32* %mdnid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #11
  %secbits = getelementptr inbounds %struct.x509_sig_info_st, %struct.x509_sig_info_st* %siginf, i64 0, i32 2
  %flags = getelementptr inbounds %struct.x509_sig_info_st, %struct.x509_sig_info_st* %siginf, i64 0, i32 3
  %2 = bitcast %struct.x509_sig_info_st* %siginf to <4 x i32>*
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 0>, <4 x i32>* %2, align 4, !tbaa !19
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %alg, i64 0, i32 0
  %3 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !31
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %3) #9
  %call3 = call i32 @OBJ_find_sigid_algs(i32 noundef %call, i32* noundef nonnull %mdnid, i32* noundef nonnull %pknid) #9
  %tobool = icmp eq i32 %call3, 0
  %4 = load i32, i32* %pknid, align 4
  %cmp = icmp eq i32 %4, 0
  %or.cond = select i1 %tobool, i1 true, i1 %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ERR_new() #9
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 209, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.x509_sig_info_init, i64 0, i64 0)) #9
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 144, i8* noundef null) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mdnid1 = getelementptr inbounds %struct.x509_sig_info_st, %struct.x509_sig_info_st* %siginf, i64 0, i32 0
  %pknid2 = getelementptr inbounds %struct.x509_sig_info_st, %struct.x509_sig_info_st* %siginf, i64 0, i32 1
  %5 = load i32, i32* %mdnid, align 4, !tbaa !19
  store i32 %5, i32* %mdnid1, align 4, !tbaa !27
  store i32 %4, i32* %pknid2, align 4, !tbaa !28
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 64, label %sw.epilog.thread54
    i32 4, label %sw.bb18
    i32 809, label %sw.bb20
  ]

sw.bb:                                            ; preds = %if.end
  %call6 = call %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_find(%struct.engine_st** noundef null, i32 noundef %4) #9
  %cmp7 = icmp eq %struct.evp_pkey_asn1_method_st* %call6, null
  br i1 %cmp7, label %if.then14, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %sw.bb
  %siginf_set = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %call6, i64 0, i32 28
  %6 = load i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)** %siginf_set, align 8, !tbaa !32
  %cmp9 = icmp eq i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* %6, null
  br i1 %cmp9, label %if.then14, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %call12 = call i32 %6(%struct.x509_sig_info_st* noundef nonnull %siginf, %struct.X509_algor_st* noundef nonnull %alg, %struct.asn1_string_st* noundef %sig) #9
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %sw.epilog

if.then14:                                        ; preds = %lor.lhs.false10, %lor.lhs.false8, %sw.bb
  call void @ERR_new() #9
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 221, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.x509_sig_info_init, i64 0, i64 0)) #9
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 142, i8* noundef null) #9
  br label %cleanup

sw.epilog.thread54:                               ; preds = %if.end
  store i32 63, i32* %secbits, align 4, !tbaa !29
  br label %sw.bb29

sw.bb18:                                          ; preds = %if.end
  store i32 39, i32* %secbits, align 4, !tbaa !29
  br label %sw.epilog31

sw.bb20:                                          ; preds = %if.end
  store i32 105, i32* %secbits, align 4, !tbaa !29
  br label %sw.epilog31

sw.default:                                       ; preds = %if.end
  %call22 = call i8* @OBJ_nid2sn(i32 noundef %5) #9
  %call23 = call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %call22) #9
  %cmp24 = icmp eq %struct.evp_md_st* %call23, null
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %sw.default
  call void @ERR_new() #9
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 255, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.x509_sig_info_init, i64 0, i64 0)) #9
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 141, i8* noundef null) #9
  br label %cleanup

if.end26:                                         ; preds = %sw.default
  %call27 = call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef nonnull %call23) #9
  %mul = shl nsw i32 %call27, 2
  store i32 %mul, i32* %secbits, align 4, !tbaa !29
  br label %sw.epilog

sw.epilog:                                        ; preds = %lor.lhs.false10, %if.end26
  %.pr = load i32, i32* %mdnid, align 4, !tbaa !19
  switch i32 %.pr, label %sw.epilog31 [
    i32 64, label %sw.bb29
    i32 672, label %sw.bb29
    i32 673, label %sw.bb29
    i32 674, label %sw.bb29
  ]

sw.bb29:                                          ; preds = %sw.epilog.thread54, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog
  %7 = load i32, i32* %flags, align 4, !tbaa !30
  %or = or i32 %7, 2
  store i32 %or, i32* %flags, align 4, !tbaa !30
  br label %sw.epilog31

sw.epilog31:                                      ; preds = %sw.bb18, %sw.bb20, %sw.bb29, %sw.epilog
  %8 = load i32, i32* %flags, align 4, !tbaa !30
  %or33 = or i32 %8, 1
  store i32 %or33, i32* %flags, align 4, !tbaa !30
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog31, %if.then25, %if.then14, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then25 ], [ 1, %sw.epilog31 ], [ 0, %if.then14 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #11
  ret i32 %retval.0
}

declare i32 @OBJ_find_sigid_algs(i32 noundef, i32* noundef, i32* noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_find(%struct.engine_st** noundef, i32 noundef) local_unnamed_addr #1

declare %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #1

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #1

declare i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !7, i64 0}
!5 = !{!"x509_st", !6, i64 0, !13, i64 136, !10, i64 152, !16, i64 176, !8, i64 192, !17, i64 200, !12, i64 216, !12, i64 224, !11, i64 232, !11, i64 236, !11, i64 240, !11, i64 244, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !8, i64 312, !7, i64 336, !7, i64 344, !11, i64 352, !7, i64 360, !7, i64 368, !7, i64 376}
!6 = !{!"x509_cinf_st", !7, i64 0, !10, i64 8, !13, i64 32, !7, i64 48, !14, i64 56, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !15, i64 112}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"asn1_string_st", !11, i64 0, !11, i64 4, !7, i64 8, !12, i64 16}
!11 = !{!"int", !8, i64 0}
!12 = !{!"long", !8, i64 0}
!13 = !{!"X509_algor_st", !7, i64 0, !7, i64 8}
!14 = !{!"X509_val_st", !7, i64 0, !7, i64 8}
!15 = !{!"ASN1_ENCODING_st", !7, i64 0, !12, i64 8, !11, i64 16}
!16 = !{!"x509_sig_info_st", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!17 = !{!"crypto_ex_data_st", !7, i64 0, !7, i64 8}
!18 = !{!7, !7, i64 0}
!19 = !{!11, !11, i64 0}
!20 = !{!5, !7, i64 56}
!21 = !{!5, !7, i64 64}
!22 = !{!5, !7, i64 136}
!23 = !{!5, !7, i64 80}
!24 = !{!5, !7, i64 104}
!25 = !{!5, !7, i64 88}
!26 = !{!5, !7, i64 96}
!27 = !{!16, !11, i64 0}
!28 = !{!16, !11, i64 4}
!29 = !{!16, !11, i64 8}
!30 = !{!16, !11, i64 12}
!31 = !{!13, !7, i64 0}
!32 = !{!33, !7, i64 216}
!33 = !{!"evp_pkey_asn1_method_st", !11, i64 0, !11, i64 4, !12, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !7, i64 312}
