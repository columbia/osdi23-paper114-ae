; ModuleID = 'crypto/x509/x509_ext.c'
source_filename = "crypto/x509/x509_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X509_crl_st = type { %struct.X509_crl_info_st, %struct.X509_algor_st, %struct.asn1_string_st, i32, i32, %struct.AUTHORITY_KEYID_st*, %struct.ISSUING_DIST_POINT_st*, i32, i32, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAMES*, [20 x i8], %struct.x509_crl_method_st*, i8*, i8*, %struct.ossl_lib_ctx_st*, i8* }
%struct.X509_crl_info_st = type { %struct.asn1_string_st*, %struct.X509_algor_st, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_REVOKED*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.stack_st_X509_REVOKED = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.ASN1_ENCODING_st = type { i8*, i64, i32 }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.AUTHORITY_KEYID_st = type { %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAME*, %struct.asn1_string_st* }
%struct.stack_st_GENERAL_NAME = type opaque
%struct.ISSUING_DIST_POINT_st = type { %struct.DIST_POINT_NAME_st*, i32, i32, %struct.asn1_string_st*, i32, i32 }
%struct.DIST_POINT_NAME_st = type { i32, %union.anon.0, %struct.X509_name_st* }
%union.anon.0 = type { %struct.stack_st_GENERAL_NAME* }
%struct.stack_st_GENERAL_NAMES = type opaque
%struct.x509_crl_method_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.X509_extension_st = type opaque
%struct.x509_st = type { %struct.x509_cinf_st, %struct.X509_algor_st, %struct.asn1_string_st, %struct.x509_sig_info_st, i32, %struct.crypto_ex_data_st, i64, i64, i32, i32, i32, i32, %struct.asn1_string_st*, %struct.AUTHORITY_KEYID_st*, %struct.X509_POLICY_CACHE_st*, %struct.stack_st_DIST_POINT*, %struct.stack_st_GENERAL_NAME*, %struct.NAME_CONSTRAINTS_st*, %struct.stack_st_IPAddressFamily*, %struct.ASIdentifiers_st*, [20 x i8], %struct.x509_cert_aux_st*, i8*, i32, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.x509_cinf_st = type { %struct.asn1_string_st*, %struct.asn1_string_st, %struct.X509_algor_st, %struct.X509_name_st*, %struct.X509_val_st, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.X509_val_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.X509_pubkey_st = type opaque
%struct.x509_sig_info_st = type { i32, i32, i32, i32 }
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.X509_POLICY_CACHE_st = type opaque
%struct.stack_st_DIST_POINT = type opaque
%struct.NAME_CONSTRAINTS_st = type { %struct.stack_st_GENERAL_SUBTREE*, %struct.stack_st_GENERAL_SUBTREE* }
%struct.stack_st_GENERAL_SUBTREE = type opaque
%struct.stack_st_IPAddressFamily = type opaque
%struct.ASIdentifiers_st = type { %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st* }
%struct.ASIdentifierChoice_st = type { i32, %union.anon.1 }
%union.anon.1 = type { i32* }
%struct.x509_cert_aux_st = type { %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR* }
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.stack_st_X509_ALGOR = type opaque
%struct.x509_revoked_st = type { %struct.asn1_string_st, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.stack_st_GENERAL_NAME*, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define i32 @X509_CRL_get_ext_count(%struct.X509_crl_st* nocapture noundef readonly %x) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %x, i64 0, i32 0, i32 6
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !4
  %call = tail call i32 @X509v3_get_ext_count(%struct.stack_st_X509_EXTENSION* noundef %0) #2
  ret i32 %call
}

declare i32 @X509v3_get_ext_count(%struct.stack_st_X509_EXTENSION* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_CRL_get_ext_by_NID(%struct.X509_crl_st* nocapture noundef readonly %x, i32 noundef %nid, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %x, i64 0, i32 0, i32 6
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !4
  %call = tail call i32 @X509v3_get_ext_by_NID(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %nid, i32 noundef %lastpos) #2
  ret i32 %call
}

declare i32 @X509v3_get_ext_by_NID(%struct.stack_st_X509_EXTENSION* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_CRL_get_ext_by_OBJ(%struct.X509_crl_st* nocapture noundef readonly %x, %struct.asn1_object_st* noundef %obj, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %x, i64 0, i32 0, i32 6
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !4
  %call = tail call i32 @X509v3_get_ext_by_OBJ(%struct.stack_st_X509_EXTENSION* noundef %0, %struct.asn1_object_st* noundef %obj, i32 noundef %lastpos) #2
  ret i32 %call
}

declare i32 @X509v3_get_ext_by_OBJ(%struct.stack_st_X509_EXTENSION* noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_CRL_get_ext_by_critical(%struct.X509_crl_st* nocapture noundef readonly %x, i32 noundef %crit, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %x, i64 0, i32 0, i32 6
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !4
  %call = tail call i32 @X509v3_get_ext_by_critical(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %crit, i32 noundef %lastpos) #2
  ret i32 %call
}

declare i32 @X509v3_get_ext_by_critical(%struct.stack_st_X509_EXTENSION* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.X509_extension_st* @X509_CRL_get_ext(%struct.X509_crl_st* nocapture noundef readonly %x, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %x, i64 0, i32 0, i32 6
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !4
  %call = tail call %struct.X509_extension_st* @X509v3_get_ext(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %loc) #2
  ret %struct.X509_extension_st* %call
}

declare %struct.X509_extension_st* @X509v3_get_ext(%struct.stack_st_X509_EXTENSION* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.X509_extension_st* @X509_CRL_delete_ext(%struct.X509_crl_st* nocapture noundef readonly %x, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %x, i64 0, i32 0, i32 6
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !4
  %call = tail call %struct.X509_extension_st* @X509v3_delete_ext(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %loc) #2
  ret %struct.X509_extension_st* %call
}

declare %struct.X509_extension_st* @X509v3_delete_ext(%struct.stack_st_X509_EXTENSION* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i8* @X509_CRL_get_ext_d2i(%struct.X509_crl_st* nocapture noundef readonly %x, i32 noundef %nid, i32* noundef %crit, i32* noundef %idx) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %x, i64 0, i32 0, i32 6
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !4
  %call = tail call i8* @X509V3_get_d2i(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %nid, i32* noundef %crit, i32* noundef %idx) #2
  ret i8* %call
}

declare i8* @X509V3_get_d2i(%struct.stack_st_X509_EXTENSION* noundef, i32 noundef, i32* noundef, i32* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_CRL_add1_ext_i2d(%struct.X509_crl_st* noundef %x, i32 noundef %nid, i8* noundef %value, i32 noundef %crit, i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %x, i64 0, i32 0, i32 6
  %call = tail call i32 @X509V3_add1_i2d(%struct.stack_st_X509_EXTENSION** noundef nonnull %extensions, i32 noundef %nid, i8* noundef %value, i32 noundef %crit, i64 noundef %flags) #2
  ret i32 %call
}

declare i32 @X509V3_add1_i2d(%struct.stack_st_X509_EXTENSION** noundef, i32 noundef, i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_CRL_add_ext(%struct.X509_crl_st* noundef %x, %struct.X509_extension_st* noundef %ex, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %x, i64 0, i32 0, i32 6
  %call = tail call %struct.stack_st_X509_EXTENSION* @X509v3_add_ext(%struct.stack_st_X509_EXTENSION** noundef nonnull %extensions, %struct.X509_extension_st* noundef %ex, i32 noundef %loc) #2
  %cmp = icmp ne %struct.stack_st_X509_EXTENSION* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare %struct.stack_st_X509_EXTENSION* @X509v3_add_ext(%struct.stack_st_X509_EXTENSION** noundef, %struct.X509_extension_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_get_ext_count(%struct.x509_st* nocapture noundef readonly %x) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 9
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !15
  %call = tail call i32 @X509v3_get_ext_count(%struct.stack_st_X509_EXTENSION* noundef %0) #2
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_get_ext_by_NID(%struct.x509_st* nocapture noundef readonly %x, i32 noundef %nid, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 9
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !15
  %call = tail call i32 @X509v3_get_ext_by_NID(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %nid, i32 noundef %lastpos) #2
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_get_ext_by_OBJ(%struct.x509_st* nocapture noundef readonly %x, %struct.asn1_object_st* noundef %obj, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 9
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !15
  %call = tail call i32 @X509v3_get_ext_by_OBJ(%struct.stack_st_X509_EXTENSION* noundef %0, %struct.asn1_object_st* noundef %obj, i32 noundef %lastpos) #2
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_get_ext_by_critical(%struct.x509_st* nocapture noundef readonly %x, i32 noundef %crit, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 9
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !15
  %call = tail call i32 @X509v3_get_ext_by_critical(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %crit, i32 noundef %lastpos) #2
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_extension_st* @X509_get_ext(%struct.x509_st* nocapture noundef readonly %x, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 9
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !15
  %call = tail call %struct.X509_extension_st* @X509v3_get_ext(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %loc) #2
  ret %struct.X509_extension_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_extension_st* @X509_delete_ext(%struct.x509_st* nocapture noundef readonly %x, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 9
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !15
  %call = tail call %struct.X509_extension_st* @X509v3_delete_ext(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %loc) #2
  ret %struct.X509_extension_st* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_add_ext(%struct.x509_st* noundef %x, %struct.X509_extension_st* noundef %ex, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 9
  %call = tail call %struct.stack_st_X509_EXTENSION* @X509v3_add_ext(%struct.stack_st_X509_EXTENSION** noundef nonnull %extensions, %struct.X509_extension_st* noundef %ex, i32 noundef %loc) #2
  %cmp = icmp ne %struct.stack_st_X509_EXTENSION* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define i8* @X509_get_ext_d2i(%struct.x509_st* nocapture noundef readonly %x, i32 noundef %nid, i32* noundef %crit, i32* noundef %idx) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 9
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !15
  %call = tail call i8* @X509V3_get_d2i(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %nid, i32* noundef %crit, i32* noundef %idx) #2
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_add1_ext_i2d(%struct.x509_st* noundef %x, i32 noundef %nid, i8* noundef %value, i32 noundef %crit, i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 0, i32 9
  %call = tail call i32 @X509V3_add1_i2d(%struct.stack_st_X509_EXTENSION** noundef nonnull %extensions, i32 noundef %nid, i8* noundef %value, i32 noundef %crit, i64 noundef %flags) #2
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_REVOKED_get_ext_count(%struct.x509_revoked_st* nocapture noundef readonly %x) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.x509_revoked_st, %struct.x509_revoked_st* %x, i64 0, i32 2
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !21
  %call = tail call i32 @X509v3_get_ext_count(%struct.stack_st_X509_EXTENSION* noundef %0) #2
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_REVOKED_get_ext_by_NID(%struct.x509_revoked_st* nocapture noundef readonly %x, i32 noundef %nid, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.x509_revoked_st, %struct.x509_revoked_st* %x, i64 0, i32 2
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !21
  %call = tail call i32 @X509v3_get_ext_by_NID(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %nid, i32 noundef %lastpos) #2
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_REVOKED_get_ext_by_OBJ(%struct.x509_revoked_st* nocapture noundef readonly %x, %struct.asn1_object_st* noundef %obj, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.x509_revoked_st, %struct.x509_revoked_st* %x, i64 0, i32 2
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !21
  %call = tail call i32 @X509v3_get_ext_by_OBJ(%struct.stack_st_X509_EXTENSION* noundef %0, %struct.asn1_object_st* noundef %obj, i32 noundef %lastpos) #2
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_REVOKED_get_ext_by_critical(%struct.x509_revoked_st* nocapture noundef readonly %x, i32 noundef %crit, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.x509_revoked_st, %struct.x509_revoked_st* %x, i64 0, i32 2
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !21
  %call = tail call i32 @X509v3_get_ext_by_critical(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %crit, i32 noundef %lastpos) #2
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_extension_st* @X509_REVOKED_get_ext(%struct.x509_revoked_st* nocapture noundef readonly %x, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.x509_revoked_st, %struct.x509_revoked_st* %x, i64 0, i32 2
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !21
  %call = tail call %struct.X509_extension_st* @X509v3_get_ext(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %loc) #2
  ret %struct.X509_extension_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_extension_st* @X509_REVOKED_delete_ext(%struct.x509_revoked_st* nocapture noundef readonly %x, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.x509_revoked_st, %struct.x509_revoked_st* %x, i64 0, i32 2
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !21
  %call = tail call %struct.X509_extension_st* @X509v3_delete_ext(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %loc) #2
  ret %struct.X509_extension_st* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_REVOKED_add_ext(%struct.x509_revoked_st* noundef %x, %struct.X509_extension_st* noundef %ex, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.x509_revoked_st, %struct.x509_revoked_st* %x, i64 0, i32 2
  %call = tail call %struct.stack_st_X509_EXTENSION* @X509v3_add_ext(%struct.stack_st_X509_EXTENSION** noundef nonnull %extensions, %struct.X509_extension_st* noundef %ex, i32 noundef %loc) #2
  %cmp = icmp ne %struct.stack_st_X509_EXTENSION* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define i8* @X509_REVOKED_get_ext_d2i(%struct.x509_revoked_st* nocapture noundef readonly %x, i32 noundef %nid, i32* noundef %crit, i32* noundef %idx) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.x509_revoked_st, %struct.x509_revoked_st* %x, i64 0, i32 2
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !21
  %call = tail call i8* @X509V3_get_d2i(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %nid, i32* noundef %crit, i32* noundef %idx) #2
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_REVOKED_add1_ext_i2d(%struct.x509_revoked_st* noundef %x, i32 noundef %nid, i8* noundef %value, i32 noundef %crit, i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.x509_revoked_st, %struct.x509_revoked_st* %x, i64 0, i32 2
  %call = tail call i32 @X509V3_add1_i2d(%struct.stack_st_X509_EXTENSION** noundef nonnull %extensions, i32 noundef %nid, i8* noundef %value, i32 noundef %crit, i64 noundef %flags) #2
  ret i32 %call
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !7, i64 56}
!5 = !{!"X509_crl_st", !6, i64 0, !10, i64 88, !14, i64 104, !8, i64 128, !13, i64 132, !7, i64 136, !7, i64 144, !13, i64 152, !13, i64 156, !7, i64 160, !7, i64 168, !7, i64 176, !8, i64 184, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240}
!6 = !{!"X509_crl_info_st", !7, i64 0, !10, i64 8, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !11, i64 64}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"X509_algor_st", !7, i64 0, !7, i64 8}
!11 = !{!"ASN1_ENCODING_st", !7, i64 0, !12, i64 8, !13, i64 16}
!12 = !{!"long", !8, i64 0}
!13 = !{!"int", !8, i64 0}
!14 = !{!"asn1_string_st", !13, i64 0, !13, i64 4, !7, i64 8, !12, i64 16}
!15 = !{!16, !7, i64 104}
!16 = !{!"x509_st", !17, i64 0, !10, i64 136, !14, i64 152, !19, i64 176, !8, i64 192, !20, i64 200, !12, i64 216, !12, i64 224, !13, i64 232, !13, i64 236, !13, i64 240, !13, i64 244, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !8, i64 312, !7, i64 336, !7, i64 344, !13, i64 352, !7, i64 360, !7, i64 368, !7, i64 376}
!17 = !{!"x509_cinf_st", !7, i64 0, !14, i64 8, !10, i64 32, !7, i64 48, !18, i64 56, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !11, i64 112}
!18 = !{!"X509_val_st", !7, i64 0, !7, i64 8}
!19 = !{!"x509_sig_info_st", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12}
!20 = !{!"crypto_ex_data_st", !7, i64 0, !7, i64 8}
!21 = !{!22, !7, i64 32}
!22 = !{!"x509_revoked_st", !14, i64 0, !7, i64 24, !7, i64 32, !7, i64 40, !13, i64 48, !13, i64 52}
