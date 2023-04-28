; ModuleID = 'crypto/x509/x_crl.c'
source_filename = "crypto/x509/x_crl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, {}* }
%struct.ASN1_AUX_st = type { i8*, i32, i32, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)*, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* }
%struct.ASN1_VALUE_st = type opaque
%struct.x509_crl_method_st = type { i32, i32 (%struct.X509_crl_st*)*, i32 (%struct.X509_crl_st*)*, i32 (%struct.X509_crl_st*, %struct.x509_revoked_st**, %struct.asn1_string_st*, %struct.X509_name_st*)*, i32 (%struct.X509_crl_st*, %struct.evp_pkey_st*)* }
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
%struct.ossl_lib_ctx_st = type opaque
%struct.x509_revoked_st = type { %struct.asn1_string_st, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.stack_st_GENERAL_NAME*, i32, i32 }
%struct.evp_pkey_st = type opaque
%struct.stack_st = type opaque
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
%struct.evp_md_st = type opaque
%struct.X509_extension_st = type { %struct.asn1_object_st*, i32, %struct.asn1_string_st }

@X509_REVOKED_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @X509_REVOKED_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [13 x i8] c"X509_REVOKED\00", align 1
@X509_CRL_INFO_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([7 x %struct.ASN1_TEMPLATE_st], [7 x %struct.ASN1_TEMPLATE_st]* bitcast ([7 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @X509_CRL_INFO_seq_tt to [7 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 7, i8* bitcast (%struct.ASN1_AUX_st* @X509_CRL_INFO_aux to i8*), i64 88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0) }, align 8
@X509_CRL_INFO_aux = internal constant %struct.ASN1_AUX_st { i8* null, i32 2, i32 0, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* @crl_inf_cb, i32 64, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* null }, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"X509_CRL_INFO\00", align 1
@X509_CRL_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @X509_CRL_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* bitcast (%struct.ASN1_AUX_st* @X509_CRL_aux to i8*), i64 248, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0) }, align 8
@X509_CRL_aux = internal constant %struct.ASN1_AUX_st { i8* null, i32 1, i32 128, i32 224, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* @crl_cb, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* null }, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"X509_CRL\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"crypto/x509/x_crl.c\00", align 1
@__func__.X509_CRL_add0_revoked = private unnamed_addr constant [22 x i8] c"X509_CRL_add0_revoked\00", align 1
@int_crl_meth = internal global %struct.x509_crl_method_st { i32 0, i32 (%struct.X509_crl_st*)* null, i32 (%struct.X509_crl_st*)* null, i32 (%struct.X509_crl_st*, %struct.x509_revoked_st**, %struct.asn1_string_st*, %struct.X509_name_st*)* @def_crl_lookup, i32 (%struct.X509_crl_st*, %struct.evp_pkey_st*)* @def_crl_verify }, align 8
@default_crl_method = internal unnamed_addr global %struct.x509_crl_method_st* @int_crl_meth, align 8
@__func__.X509_CRL_METHOD_new = private unnamed_addr constant [20 x i8] c"X509_CRL_METHOD_new\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"serialNumber\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"revocationDate\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"extensions\00", align 1
@X509_REVOKED_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_TIME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 5, i64 0, i64 32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_EXTENSION_it }], align 16
@.str.8 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"sig_alg\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"issuer\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"lastUpdate\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"nextUpdate\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"revoked\00", align 1
@X509_CRL_INFO_seq_tt = internal constant [7 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_NAME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_TIME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_TIME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 5, i64 0, i64 48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_REVOKED_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 149, i64 0, i64 56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_EXTENSION_it }], align 16
@.str.15 = private unnamed_addr constant [4 x i8] c"crl\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"signature\00", align 1
@X509_CRL_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_CRL_INFO_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_BIT_STRING_it }], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @X509_REVOKED_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @X509_REVOKED_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @X509_CRL_INFO_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @X509_CRL_INFO_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @X509_CRL_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @X509_CRL_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.x509_revoked_st* @d2i_X509_REVOKED(%struct.x509_revoked_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.x509_revoked_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @X509_REVOKED_it.local_it) #7
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.x509_revoked_st*
  ret %struct.x509_revoked_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_X509_REVOKED(%struct.x509_revoked_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.x509_revoked_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @X509_REVOKED_it.local_it) #7
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.x509_revoked_st* @X509_REVOKED_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @X509_REVOKED_it.local_it) #7
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.x509_revoked_st*
  ret %struct.x509_revoked_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @X509_REVOKED_free(%struct.x509_revoked_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.x509_revoked_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @X509_REVOKED_it.local_it) #7
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.x509_revoked_st* @X509_REVOKED_dup(%struct.x509_revoked_st* noundef %x) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.x509_revoked_st* %x to i8*
  %call1 = tail call i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef nonnull @X509_REVOKED_it.local_it, i8* noundef %0) #7
  %1 = bitcast i8* %call1 to %struct.x509_revoked_st*
  ret %struct.x509_revoked_st* %1
}

declare i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.X509_crl_info_st* @d2i_X509_CRL_INFO(%struct.X509_crl_info_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.X509_crl_info_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @X509_CRL_INFO_it.local_it) #7
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.X509_crl_info_st*
  ret %struct.X509_crl_info_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_X509_CRL_INFO(%struct.X509_crl_info_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.X509_crl_info_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @X509_CRL_INFO_it.local_it) #7
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_crl_info_st* @X509_CRL_INFO_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @X509_CRL_INFO_it.local_it) #7
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.X509_crl_info_st*
  ret %struct.X509_crl_info_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @X509_CRL_INFO_free(%struct.X509_crl_info_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.X509_crl_info_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @X509_CRL_INFO_it.local_it) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_crl_st* @d2i_X509_CRL(%struct.X509_crl_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.X509_crl_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @X509_CRL_it.local_it) #7
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.X509_crl_st*
  ret %struct.X509_crl_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_X509_CRL(%struct.X509_crl_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.X509_crl_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @X509_CRL_it.local_it) #7
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_crl_st* @X509_CRL_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @X509_CRL_it.local_it) #7
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.X509_crl_st*
  ret %struct.X509_crl_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @X509_CRL_free(%struct.X509_crl_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.X509_crl_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @X509_CRL_it.local_it) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_crl_st* @X509_CRL_dup(%struct.X509_crl_st* noundef %x) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.X509_crl_st* %x to i8*
  %call1 = tail call i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef nonnull @X509_CRL_it.local_it, i8* noundef %0) #7
  %1 = bitcast i8* %call1 to %struct.X509_crl_st*
  ret %struct.X509_crl_st* %1
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_crl_st* @X509_CRL_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @X509_CRL_it.local_it) #7
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.X509_crl_st*
  %call2 = tail call i32 @ossl_x509_crl_set0_libctx(%struct.X509_crl_st* noundef %0, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @X509_CRL_free(%struct.X509_crl_st* noundef %0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %crl.0 = phi %struct.X509_crl_st* [ %0, %entry ], [ null, %if.then ]
  ret %struct.X509_crl_st* %crl.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_x509_crl_set0_libctx(%struct.X509_crl_st* noundef %x, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #1 {
entry:
  %cmp.not = icmp eq %struct.X509_crl_st* %x, null
  br i1 %cmp.not, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  %libctx1 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %x, i64 0, i32 16
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %libctx1, align 8, !tbaa !4
  %propq2 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %x, i64 0, i32 17
  %0 = load i8*, i8** %propq2, align 8, !tbaa !15
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 noundef 521) #7
  store i8* null, i8** %propq2, align 8, !tbaa !15
  %cmp4.not = icmp eq i8* %propq, null
  br i1 %cmp4.not, label %if.end11, label %if.then5

if.then5:                                         ; preds = %if.then
  %call = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %propq, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 noundef 524) #7
  store i8* %call, i8** %propq2, align 8, !tbaa !15
  %cmp8 = icmp eq i8* %call, null
  br i1 %cmp8, label %return, label %if.end11

if.end11:                                         ; preds = %if.then, %if.then5, %entry
  br label %return

return:                                           ; preds = %if.then5, %if.end11
  %retval.0 = phi i32 [ 1, %if.end11 ], [ 0, %if.then5 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define i32 @X509_CRL_add0_revoked(%struct.X509_crl_st* nocapture noundef %crl, %struct.x509_revoked_st* noundef %rev) local_unnamed_addr #1 {
entry:
  %revoked = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 0, i32 5
  %0 = load %struct.stack_st_X509_REVOKED*, %struct.stack_st_X509_REVOKED** %revoked, align 8, !tbaa !16
  %cmp = icmp eq %struct.stack_st_X509_REVOKED* %0, null
  br i1 %cmp, label %if.end, label %lor.lhs.false

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (%struct.x509_revoked_st**, %struct.x509_revoked_st**)* @X509_REVOKED_cmp to i32 (i8*, i8*)*)) #7
  %1 = bitcast %struct.stack_st_X509_REVOKED** %revoked to %struct.stack_st**
  store %struct.stack_st* %call2, %struct.stack_st** %1, align 8, !tbaa !16
  %2 = bitcast %struct.stack_st* %call2 to %struct.stack_st_X509_REVOKED*
  %cmp5 = icmp eq %struct.stack_st* %call2, null
  br i1 %cmp5, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry, %if.end
  %3 = phi %struct.stack_st_X509_REVOKED* [ %2, %if.end ], [ %0, %entry ]
  %call7 = tail call fastcc %struct.stack_st* @ossl_check_X509_REVOKED_sk_type(%struct.stack_st_X509_REVOKED* noundef nonnull %3) #8
  %4 = bitcast %struct.x509_revoked_st* %rev to i8*
  %call9 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call7, i8* noundef %4) #7
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false, %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 noundef 363, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.X509_CRL_add0_revoked, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %modified = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 0, i32 7, i32 2
  store i32 1, i32* %modified, align 8, !tbaa !17
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then10
  %retval.0 = phi i32 [ 0, %if.then10 ], [ 1, %if.end11 ]
  ret i32 %retval.0
}

declare %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @X509_REVOKED_cmp(%struct.x509_revoked_st** nocapture noundef readonly %a, %struct.x509_revoked_st** nocapture noundef readonly %b) #1 {
entry:
  %0 = load %struct.x509_revoked_st*, %struct.x509_revoked_st** %a, align 8, !tbaa !18
  %serialNumber = getelementptr inbounds %struct.x509_revoked_st, %struct.x509_revoked_st* %0, i64 0, i32 0
  %1 = load %struct.x509_revoked_st*, %struct.x509_revoked_st** %b, align 8, !tbaa !18
  %serialNumber1 = getelementptr inbounds %struct.x509_revoked_st, %struct.x509_revoked_st* %1, i64 0, i32 0
  %call = tail call i32 @ASN1_STRING_cmp(%struct.asn1_string_st* noundef %serialNumber, %struct.asn1_string_st* noundef %serialNumber1) #7
  ret i32 %call
}

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_REVOKED_sk_type(%struct.stack_st_X509_REVOKED* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_X509_REVOKED* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_CRL_verify(%struct.X509_crl_st* noundef %crl, %struct.evp_pkey_st* noundef %r) local_unnamed_addr #1 {
entry:
  %meth = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 13
  %0 = load %struct.x509_crl_method_st*, %struct.x509_crl_method_st** %meth, align 8, !tbaa !19
  %crl_verify = getelementptr inbounds %struct.x509_crl_method_st, %struct.x509_crl_method_st* %0, i64 0, i32 4
  %1 = load i32 (%struct.X509_crl_st*, %struct.evp_pkey_st*)*, i32 (%struct.X509_crl_st*, %struct.evp_pkey_st*)** %crl_verify, align 8, !tbaa !20
  %tobool.not = icmp eq i32 (%struct.X509_crl_st*, %struct.evp_pkey_st*)* %1, null
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(%struct.X509_crl_st* noundef nonnull %crl, %struct.evp_pkey_st* noundef %r) #7
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_CRL_get0_by_serial(%struct.X509_crl_st* noundef %crl, %struct.x509_revoked_st** noundef %ret, %struct.asn1_string_st* noundef %serial) local_unnamed_addr #1 {
entry:
  %meth = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 13
  %0 = load %struct.x509_crl_method_st*, %struct.x509_crl_method_st** %meth, align 8, !tbaa !19
  %crl_lookup = getelementptr inbounds %struct.x509_crl_method_st, %struct.x509_crl_method_st* %0, i64 0, i32 3
  %1 = load i32 (%struct.X509_crl_st*, %struct.x509_revoked_st**, %struct.asn1_string_st*, %struct.X509_name_st*)*, i32 (%struct.X509_crl_st*, %struct.x509_revoked_st**, %struct.asn1_string_st*, %struct.X509_name_st*)** %crl_lookup, align 8, !tbaa !22
  %tobool.not = icmp eq i32 (%struct.X509_crl_st*, %struct.x509_revoked_st**, %struct.asn1_string_st*, %struct.X509_name_st*)* %1, null
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(%struct.X509_crl_st* noundef nonnull %crl, %struct.x509_revoked_st** noundef %ret, %struct.asn1_string_st* noundef %serial, %struct.X509_name_st* noundef null) #7
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_CRL_get0_by_cert(%struct.X509_crl_st* noundef %crl, %struct.x509_revoked_st** noundef %ret, %struct.x509_st* noundef %x) local_unnamed_addr #1 {
entry:
  %meth = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 13
  %0 = load %struct.x509_crl_method_st*, %struct.x509_crl_method_st** %meth, align 8, !tbaa !19
  %crl_lookup = getelementptr inbounds %struct.x509_crl_method_st, %struct.x509_crl_method_st* %0, i64 0, i32 3
  %1 = load i32 (%struct.X509_crl_st*, %struct.x509_revoked_st**, %struct.asn1_string_st*, %struct.X509_name_st*)*, i32 (%struct.X509_crl_st*, %struct.x509_revoked_st**, %struct.asn1_string_st*, %struct.X509_name_st*)** %crl_lookup, align 8, !tbaa !22
  %tobool.not = icmp eq i32 (%struct.X509_crl_st*, %struct.x509_revoked_st**, %struct.asn1_string_st*, %struct.X509_name_st*)* %1, null
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call %struct.asn1_string_st* @X509_get0_serialNumber(%struct.x509_st* noundef %x) #7
  %call3 = tail call %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef %x) #7
  %call4 = tail call i32 %1(%struct.X509_crl_st* noundef nonnull %crl, %struct.x509_revoked_st** noundef %ret, %struct.asn1_string_st* noundef %call, %struct.X509_name_st* noundef %call3) #7
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call4, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

declare %struct.asn1_string_st* @X509_get0_serialNumber(%struct.x509_st* noundef) local_unnamed_addr #2

declare %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @X509_CRL_set_default_method(%struct.x509_crl_method_st* noundef %meth) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq %struct.x509_crl_method_st* %meth, null
  %int_crl_meth.meth = select i1 %cmp, %struct.x509_crl_method_st* @int_crl_meth, %struct.x509_crl_method_st* %meth
  store %struct.x509_crl_method_st* %int_crl_meth.meth, %struct.x509_crl_method_st** @default_crl_method, align 8, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.x509_crl_method_st* @X509_CRL_METHOD_new(i32 (%struct.X509_crl_st*)* noundef %crl_init, i32 (%struct.X509_crl_st*)* noundef %crl_free, i32 (%struct.X509_crl_st*, %struct.x509_revoked_st**, %struct.asn1_string_st*, %struct.X509_name_st*)* noundef %crl_lookup, i32 (%struct.X509_crl_st*, %struct.evp_pkey_st*)* noundef %crl_verify) local_unnamed_addr #1 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 40, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 noundef 485) #7
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 noundef 488, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.X509_CRL_METHOD_new, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.x509_crl_method_st*
  %crl_init1 = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %crl_init1 to i32 (%struct.X509_crl_st*)**
  store i32 (%struct.X509_crl_st*)* %crl_init, i32 (%struct.X509_crl_st*)** %1, align 8, !tbaa !23
  %crl_free2 = getelementptr inbounds i8, i8* %call, i64 16
  %2 = bitcast i8* %crl_free2 to i32 (%struct.X509_crl_st*)**
  store i32 (%struct.X509_crl_st*)* %crl_free, i32 (%struct.X509_crl_st*)** %2, align 8, !tbaa !24
  %crl_lookup3 = getelementptr inbounds i8, i8* %call, i64 24
  %3 = bitcast i8* %crl_lookup3 to i32 (%struct.X509_crl_st*, %struct.x509_revoked_st**, %struct.asn1_string_st*, %struct.X509_name_st*)**
  store i32 (%struct.X509_crl_st*, %struct.x509_revoked_st**, %struct.asn1_string_st*, %struct.X509_name_st*)* %crl_lookup, i32 (%struct.X509_crl_st*, %struct.x509_revoked_st**, %struct.asn1_string_st*, %struct.X509_name_st*)** %3, align 8, !tbaa !22
  %crl_verify4 = getelementptr inbounds i8, i8* %call, i64 32
  %4 = bitcast i8* %crl_verify4 to i32 (%struct.X509_crl_st*, %struct.evp_pkey_st*)**
  store i32 (%struct.X509_crl_st*, %struct.evp_pkey_st*)* %crl_verify, i32 (%struct.X509_crl_st*, %struct.evp_pkey_st*)** %4, align 8, !tbaa !20
  %flags = bitcast i8* %call to i32*
  store i32 1, i32* %flags, align 8, !tbaa !25
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.x509_crl_method_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.x509_crl_method_st* %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @X509_CRL_METHOD_free(%struct.x509_crl_method_st* noundef %m) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.x509_crl_method_st* %m, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.x509_crl_method_st, %struct.x509_crl_method_st* %m, i64 0, i32 0
  %0 = load i32, i32* %flags, align 8, !tbaa !25
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %1 = bitcast %struct.x509_crl_method_st* %m to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 noundef 503) #7
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @X509_CRL_set_meth_data(%struct.X509_crl_st* nocapture noundef writeonly %crl, i8* noundef %dat) local_unnamed_addr #4 {
entry:
  %meth_data = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 14
  store i8* %dat, i8** %meth_data, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @X509_CRL_get_meth_data(%struct.X509_crl_st* nocapture noundef readonly %crl) local_unnamed_addr #5 {
entry:
  %meth_data = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 14
  %0 = load i8*, i8** %meth_data, align 8, !tbaa !26
  ret i8* %0
}

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @ASN1_INTEGER_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_TIME_it() #2

declare %struct.ASN1_ITEM_st* @X509_EXTENSION_it() #2

declare %struct.ASN1_ITEM_st* @X509_ALGOR_it() #2

declare %struct.ASN1_ITEM_st* @X509_NAME_it() #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @crl_inf_cb(i32 noundef %operation, %struct.ASN1_VALUE_st** nocapture noundef readonly %pval, %struct.ASN1_ITEM_st* nocapture noundef readnone %it, i8* nocapture noundef readnone %exarg) #1 {
entry:
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.X509_crl_info_st**
  %1 = load %struct.X509_crl_info_st*, %struct.X509_crl_info_st** %0, align 8, !tbaa !18
  %tobool.not = icmp eq %struct.X509_crl_info_st* %1, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %revoked = getelementptr inbounds %struct.X509_crl_info_st, %struct.X509_crl_info_st* %1, i64 0, i32 5
  %2 = load %struct.stack_st_X509_REVOKED*, %struct.stack_st_X509_REVOKED** %revoked, align 8, !tbaa !16
  %tobool1.not = icmp ne %struct.stack_st_X509_REVOKED* %2, null
  %cond = icmp eq i32 %operation, 5
  %or.cond = and i1 %cond, %tobool1.not
  br i1 %or.cond, label %sw.bb, label %cleanup

sw.bb:                                            ; preds = %lor.lhs.false
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_REVOKED_sk_type(%struct.stack_st_X509_REVOKED* noundef nonnull %2) #8
  %call4 = tail call i32 (i8*, i8*)* @OPENSSL_sk_set_cmp_func(%struct.stack_st* noundef %call, i32 (i8*, i8*)* noundef bitcast (i32 (%struct.x509_revoked_st**, %struct.x509_revoked_st**)* @X509_REVOKED_cmp to i32 (i8*, i8*)*)) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry, %lor.lhs.false
  ret i32 1
}

declare i32 (i8*, i8*)* @OPENSSL_sk_set_cmp_func(%struct.stack_st* noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @ASN1_BIT_STRING_it() #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @crl_cb(i32 noundef %operation, %struct.ASN1_VALUE_st** nocapture noundef readonly %pval, %struct.ASN1_ITEM_st* nocapture noundef readnone %it, i8* nocapture noundef readonly %exarg) #1 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.X509_crl_st**
  %1 = load %struct.X509_crl_st*, %struct.X509_crl_st** %0, align 8, !tbaa !18
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #9
  switch i32 %operation, label %sw.epilog [
    i32 4, label %sw.bb
    i32 1, label %sw.bb8
    i32 5, label %sw.bb15
    i32 3, label %sw.bb118
    i32 15, label %sw.bb137
  ]

sw.bb:                                            ; preds = %entry
  %meth = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %1, i64 0, i32 13
  %3 = load %struct.x509_crl_method_st*, %struct.x509_crl_method_st** %meth, align 8, !tbaa !19
  %crl_free = getelementptr inbounds %struct.x509_crl_method_st, %struct.x509_crl_method_st* %3, i64 0, i32 2
  %4 = load i32 (%struct.X509_crl_st*)*, i32 (%struct.X509_crl_st*)** %crl_free, align 8, !tbaa !24
  %tobool.not = icmp eq i32 (%struct.X509_crl_st*)* %4, null
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %sw.bb
  %call = tail call i32 %4(%struct.X509_crl_st* noundef nonnull %1) #7
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %cleanup146, label %if.end5

if.end5:                                          ; preds = %if.then, %sw.bb
  %akid = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %1, i64 0, i32 5
  %5 = load %struct.AUTHORITY_KEYID_st*, %struct.AUTHORITY_KEYID_st** %akid, align 8, !tbaa !27
  tail call void @AUTHORITY_KEYID_free(%struct.AUTHORITY_KEYID_st* noundef %5) #7
  %idp = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %1, i64 0, i32 6
  %6 = load %struct.ISSUING_DIST_POINT_st*, %struct.ISSUING_DIST_POINT_st** %idp, align 8, !tbaa !28
  tail call void @ISSUING_DIST_POINT_free(%struct.ISSUING_DIST_POINT_st* noundef %6) #7
  %crl_number = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %1, i64 0, i32 9
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %crl_number, align 8, !tbaa !29
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %7) #7
  %base_crl_number = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %1, i64 0, i32 10
  %8 = load %struct.asn1_string_st*, %struct.asn1_string_st** %base_crl_number, align 8, !tbaa !30
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %8) #7
  %issuers = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %1, i64 0, i32 11
  %9 = load %struct.stack_st_GENERAL_NAMES*, %struct.stack_st_GENERAL_NAMES** %issuers, align 8, !tbaa !31
  %call6 = tail call fastcc %struct.stack_st* @ossl_check_GENERAL_NAMES_sk_type(%struct.stack_st_GENERAL_NAMES* noundef %9) #8
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call6, void (i8*)* noundef bitcast (void (%struct.stack_st_GENERAL_NAME*)* @GENERAL_NAMES_free to void (i8*)*)) #7
  br label %sw.bb8

sw.bb8:                                           ; preds = %entry, %if.end5
  %idp9 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %1, i64 0, i32 6
  store %struct.ISSUING_DIST_POINT_st* null, %struct.ISSUING_DIST_POINT_st** %idp9, align 8, !tbaa !28
  %akid10 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %1, i64 0, i32 5
  store %struct.AUTHORITY_KEYID_st* null, %struct.AUTHORITY_KEYID_st** %akid10, align 8, !tbaa !27
  %flags = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %1, i64 0, i32 4
  store i32 0, i32* %flags, align 4, !tbaa !32
  %idp_flags = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %1, i64 0, i32 7
  store i32 0, i32* %idp_flags, align 8, !tbaa !33
  %idp_reasons = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %1, i64 0, i32 8
  store i32 32895, i32* %idp_reasons, align 4, !tbaa !34
  %10 = load %struct.x509_crl_method_st*, %struct.x509_crl_method_st** @default_crl_method, align 8, !tbaa !18
  %meth11 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %1, i64 0, i32 13
  store %struct.x509_crl_method_st* %10, %struct.x509_crl_method_st** %meth11, align 8, !tbaa !19
  %meth_data = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %1, i64 0, i32 14
  store i8* null, i8** %meth_data, align 8, !tbaa !26
  %issuers12 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %1, i64 0, i32 11
  store %struct.stack_st_GENERAL_NAMES* null, %struct.stack_st_GENERAL_NAMES** %issuers12, align 8, !tbaa !31
  %crl_number13 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %1, i64 0, i32 9
  %11 = bitcast %struct.asn1_string_st** %crl_number13 to <2 x %struct.asn1_string_st*>*
  store <2 x %struct.asn1_string_st*> zeroinitializer, <2 x %struct.asn1_string_st*>* %11, align 8, !tbaa !18
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %call16 = tail call %struct.evp_md_st* @EVP_sha1() #7
  %arraydecay = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %1, i64 0, i32 12, i64 0
  %call17 = tail call i32 @X509_CRL_digest(%struct.X509_crl_st* noundef %1, %struct.evp_md_st* noundef %call16, i8* noundef nonnull %arraydecay, i32* noundef null) #7
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.end21

if.then19:                                        ; preds = %sw.bb15
  %flags20 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %1, i64 0, i32 4
  %12 = load i32, i32* %flags20, align 4, !tbaa !32
  %or = or i32 %12, 1048576
  store i32 %or, i32* %flags20, align 4, !tbaa !32
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %sw.bb15
  %call22 = call i8* @X509_CRL_get_ext_d2i(%struct.X509_crl_st* noundef %1, i32 noundef 770, i32* noundef nonnull %i, i32* noundef null) #7
  %idp23 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %1, i64 0, i32 6
  %13 = bitcast %struct.ISSUING_DIST_POINT_st** %idp23 to i8**
  store i8* %call22, i8** %13, align 8, !tbaa !28
  %cmp.not = icmp eq i8* %call22, null
  br i1 %cmp.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end21
  %14 = bitcast i8* %call22 to %struct.ISSUING_DIST_POINT_st*
  %call27 = call fastcc i32 @setup_idp(%struct.X509_crl_st* noundef nonnull %1, %struct.ISSUING_DIST_POINT_st* noundef nonnull %14) #8
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end38.sink.split, label %if.end38

if.else:                                          ; preds = %if.end21
  %15 = load i32, i32* %i, align 4, !tbaa !35
  %cmp33.not = icmp eq i32 %15, -1
  br i1 %cmp33.not, label %if.end38, label %if.end38.sink.split

if.end38.sink.split:                              ; preds = %if.else, %if.then25
  %flags30 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %1, i64 0, i32 4
  %16 = load i32, i32* %flags30, align 4, !tbaa !32
  %or36 = or i32 %16, 128
  store i32 %or36, i32* %flags30, align 4, !tbaa !32
  br label %if.end38

if.end38:                                         ; preds = %if.end38.sink.split, %if.else, %if.then25
  %call39 = call i8* @X509_CRL_get_ext_d2i(%struct.X509_crl_st* noundef nonnull %1, i32 noundef 90, i32* noundef nonnull %i, i32* noundef null) #7
  %akid40 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %1, i64 0, i32 5
  %17 = bitcast %struct.AUTHORITY_KEYID_st** %akid40 to i8**
  store i8* %call39, i8** %17, align 8, !tbaa !27
  %cmp42 = icmp eq i8* %call39, null
  %18 = load i32, i32* %i, align 4
  %cmp43 = icmp ne i32 %18, -1
  %or.cond = select i1 %cmp42, i1 %cmp43, i1 false
  br i1 %or.cond, label %if.then44, label %if.end47

if.then44:                                        ; preds = %if.end38
  %flags45 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %1, i64 0, i32 4
  %19 = load i32, i32* %flags45, align 4, !tbaa !32
  %or46 = or i32 %19, 128
  store i32 %or46, i32* %flags45, align 4, !tbaa !32
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end38
  %call48 = call i8* @X509_CRL_get_ext_d2i(%struct.X509_crl_st* noundef nonnull %1, i32 noundef 88, i32* noundef nonnull %i, i32* noundef null) #7
  %crl_number49 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %1, i64 0, i32 9
  %20 = bitcast %struct.asn1_string_st** %crl_number49 to i8**
  store i8* %call48, i8** %20, align 8, !tbaa !29
  %cmp51 = icmp eq i8* %call48, null
  %21 = load i32, i32* %i, align 4
  %cmp53 = icmp ne i32 %21, -1
  %or.cond151 = select i1 %cmp51, i1 %cmp53, i1 false
  br i1 %or.cond151, label %if.then54, label %if.end57

if.then54:                                        ; preds = %if.end47
  %flags55 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %1, i64 0, i32 4
  %22 = load i32, i32* %flags55, align 4, !tbaa !32
  %or56 = or i32 %22, 128
  store i32 %or56, i32* %flags55, align 4, !tbaa !32
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.end47
  %call58 = call i8* @X509_CRL_get_ext_d2i(%struct.X509_crl_st* noundef nonnull %1, i32 noundef 140, i32* noundef nonnull %i, i32* noundef null) #7
  %base_crl_number59 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %1, i64 0, i32 10
  %23 = bitcast %struct.asn1_string_st** %base_crl_number59 to i8**
  store i8* %call58, i8** %23, align 8, !tbaa !30
  %cmp61 = icmp eq i8* %call58, null
  %24 = load i32, i32* %i, align 4
  %cmp63 = icmp ne i32 %24, -1
  %or.cond152 = select i1 %cmp61, i1 %cmp63, i1 false
  br i1 %or.cond152, label %if.end76.sink.split, label %if.end67

if.end67:                                         ; preds = %if.end57
  %tobool69.not = icmp eq i8* %call58, null
  br i1 %tobool69.not, label %if.end76, label %land.lhs.true70

land.lhs.true70:                                  ; preds = %if.end67
  %25 = load %struct.asn1_string_st*, %struct.asn1_string_st** %crl_number49, align 8, !tbaa !29
  %tobool72.not = icmp eq %struct.asn1_string_st* %25, null
  br i1 %tobool72.not, label %if.end76.sink.split, label %if.end76

if.end76.sink.split:                              ; preds = %land.lhs.true70, %if.end57
  %flags74 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %1, i64 0, i32 4
  %26 = load i32, i32* %flags74, align 4, !tbaa !32
  %or66 = or i32 %26, 128
  store i32 %or66, i32* %flags74, align 4, !tbaa !32
  br label %if.end76

if.end76:                                         ; preds = %if.end76.sink.split, %land.lhs.true70, %if.end67
  %extensions = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %1, i64 0, i32 0, i32 6
  %27 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !36
  %call78 = call fastcc %struct.stack_st* @ossl_check_const_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef %27) #8
  %call79236 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call78) #7
  %cmp80237 = icmp sgt i32 %call79236, 0
  br i1 %cmp80237, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end76
  %flags87 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %1, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %idx.0238 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %call82 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call78, i32 noundef %idx.0238) #7
  %28 = bitcast i8* %call82 to %struct.X509_extension_st*
  %call83 = call %struct.asn1_object_st* @X509_EXTENSION_get_object(%struct.X509_extension_st* noundef %28) #7
  %call84 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %call83) #7
  %cmp85 = icmp eq i32 %call84, 857
  br i1 %cmp85, label %if.then86, label %if.end89

if.then86:                                        ; preds = %for.body
  %29 = load i32, i32* %flags87, align 4, !tbaa !32
  %or88 = or i32 %29, 4096
  store i32 %or88, i32* %flags87, align 4, !tbaa !32
  br label %if.end89

if.end89:                                         ; preds = %if.then86, %for.body
  %call90 = call i32 @X509_EXTENSION_get_critical(%struct.X509_extension_st* noundef %28) #7
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %for.inc, label %if.then92

if.then92:                                        ; preds = %if.end89
  switch i32 %call84, label %cleanup [
    i32 770, label %for.inc
    i32 140, label %for.inc
    i32 90, label %for.inc
  ]

cleanup:                                          ; preds = %if.then92
  %30 = load i32, i32* %flags87, align 4, !tbaa !32
  %or100 = or i32 %30, 512
  store i32 %or100, i32* %flags87, align 4, !tbaa !32
  br label %for.end

for.inc:                                          ; preds = %if.then92, %if.then92, %if.then92, %if.end89
  %inc = add nuw nsw i32 %idx.0238, 1
  %call79 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call78) #7
  %cmp80 = icmp slt i32 %inc, %call79
  br i1 %cmp80, label %for.body, label %for.end, !llvm.loop !37

for.end:                                          ; preds = %for.inc, %if.end76, %cleanup
  %call102 = call fastcc i32 @crl_set_issuers(%struct.X509_crl_st* noundef %1) #8
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %cleanup146, label %if.end105

if.end105:                                        ; preds = %for.end
  %meth106 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %1, i64 0, i32 13
  %31 = load %struct.x509_crl_method_st*, %struct.x509_crl_method_st** %meth106, align 8, !tbaa !19
  %crl_init = getelementptr inbounds %struct.x509_crl_method_st, %struct.x509_crl_method_st* %31, i64 0, i32 1
  %32 = load i32 (%struct.X509_crl_st*)*, i32 (%struct.X509_crl_st*)** %crl_init, align 8, !tbaa !23
  %tobool107.not = icmp eq i32 (%struct.X509_crl_st*)* %32, null
  br i1 %tobool107.not, label %if.end115, label %if.then108

if.then108:                                       ; preds = %if.end105
  %call111 = call i32 %32(%struct.X509_crl_st* noundef nonnull %1) #7
  %cmp112 = icmp eq i32 %call111, 0
  br i1 %cmp112, label %cleanup146, label %if.end115

if.end115:                                        ; preds = %if.then108, %if.end105
  %flags116 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %1, i64 0, i32 4
  %33 = load i32, i32* %flags116, align 4, !tbaa !32
  %or117 = or i32 %33, 256
  store i32 %or117, i32* %flags116, align 4, !tbaa !32
  br label %sw.epilog

sw.bb118:                                         ; preds = %entry
  %meth119 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %1, i64 0, i32 13
  %34 = load %struct.x509_crl_method_st*, %struct.x509_crl_method_st** %meth119, align 8, !tbaa !19
  %crl_free120 = getelementptr inbounds %struct.x509_crl_method_st, %struct.x509_crl_method_st* %34, i64 0, i32 2
  %35 = load i32 (%struct.X509_crl_st*)*, i32 (%struct.X509_crl_st*)** %crl_free120, align 8, !tbaa !24
  %tobool121.not = icmp eq i32 (%struct.X509_crl_st*)* %35, null
  br i1 %tobool121.not, label %if.end129, label %if.then122

if.then122:                                       ; preds = %sw.bb118
  %call125 = tail call i32 %35(%struct.X509_crl_st* noundef nonnull %1) #7
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %cleanup146, label %if.end129

if.end129:                                        ; preds = %if.then122, %sw.bb118
  %akid130 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %1, i64 0, i32 5
  %36 = load %struct.AUTHORITY_KEYID_st*, %struct.AUTHORITY_KEYID_st** %akid130, align 8, !tbaa !27
  tail call void @AUTHORITY_KEYID_free(%struct.AUTHORITY_KEYID_st* noundef %36) #7
  %idp131 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %1, i64 0, i32 6
  %37 = load %struct.ISSUING_DIST_POINT_st*, %struct.ISSUING_DIST_POINT_st** %idp131, align 8, !tbaa !28
  tail call void @ISSUING_DIST_POINT_free(%struct.ISSUING_DIST_POINT_st* noundef %37) #7
  %crl_number132 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %1, i64 0, i32 9
  %38 = load %struct.asn1_string_st*, %struct.asn1_string_st** %crl_number132, align 8, !tbaa !29
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %38) #7
  %base_crl_number133 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %1, i64 0, i32 10
  %39 = load %struct.asn1_string_st*, %struct.asn1_string_st** %base_crl_number133, align 8, !tbaa !30
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %39) #7
  %issuers134 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %1, i64 0, i32 11
  %40 = load %struct.stack_st_GENERAL_NAMES*, %struct.stack_st_GENERAL_NAMES** %issuers134, align 8, !tbaa !31
  %call135 = tail call fastcc %struct.stack_st* @ossl_check_GENERAL_NAMES_sk_type(%struct.stack_st_GENERAL_NAMES* noundef %40) #8
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call135, void (i8*)* noundef bitcast (void (%struct.stack_st_GENERAL_NAME*)* @GENERAL_NAMES_free to void (i8*)*)) #7
  %propq = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %1, i64 0, i32 17
  %41 = load i8*, i8** %propq, align 8, !tbaa !15
  tail call void @CRYPTO_free(i8* noundef %41, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 noundef 267) #7
  br label %sw.epilog

sw.bb137:                                         ; preds = %entry
  %libctx = getelementptr inbounds i8, i8* %exarg, i64 232
  %42 = bitcast i8* %libctx to %struct.ossl_lib_ctx_st**
  %43 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %42, align 8, !tbaa !4
  %propq138 = getelementptr inbounds i8, i8* %exarg, i64 240
  %44 = bitcast i8* %propq138 to i8**
  %45 = load i8*, i8** %44, align 8, !tbaa !15
  %call139 = tail call i32 @ossl_x509_crl_set0_libctx(%struct.X509_crl_st* noundef %1, %struct.ossl_lib_ctx_st* noundef %43, i8* noundef %45) #8
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %cleanup146, label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb137, %entry, %if.end129, %if.end115, %sw.bb8
  br label %cleanup146

cleanup146:                                       ; preds = %if.then122, %if.then108, %for.end, %if.then, %sw.bb137, %sw.epilog
  %retval.1 = phi i32 [ 1, %sw.epilog ], [ 0, %sw.bb137 ], [ 0, %if.then ], [ 0, %for.end ], [ 0, %if.then108 ], [ 0, %if.then122 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #9
  ret i32 %retval.1
}

declare void @AUTHORITY_KEYID_free(%struct.AUTHORITY_KEYID_st* noundef) local_unnamed_addr #2

declare void @ISSUING_DIST_POINT_free(%struct.ISSUING_DIST_POINT_st* noundef) local_unnamed_addr #2

declare void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_GENERAL_NAMES_sk_type(%struct.stack_st_GENERAL_NAMES* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_GENERAL_NAMES* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @GENERAL_NAMES_free(%struct.stack_st_GENERAL_NAME* noundef) #2

declare i32 @X509_CRL_digest(%struct.X509_crl_st* noundef, %struct.evp_md_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_sha1() local_unnamed_addr #2

declare i8* @X509_CRL_get_ext_d2i(%struct.X509_crl_st* noundef, i32 noundef, i32* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @setup_idp(%struct.X509_crl_st* noundef %crl, %struct.ISSUING_DIST_POINT_st* nocapture noundef readonly %idp) unnamed_addr #1 {
entry:
  %idp_flags = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 7
  %0 = load i32, i32* %idp_flags, align 8, !tbaa !33
  %or = or i32 %0, 1
  store i32 %or, i32* %idp_flags, align 8, !tbaa !33
  %onlyuser = getelementptr inbounds %struct.ISSUING_DIST_POINT_st, %struct.ISSUING_DIST_POINT_st* %idp, i64 0, i32 1
  %1 = load i32, i32* %onlyuser, align 8, !tbaa !39
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %or2 = or i32 %0, 5
  store i32 %or2, i32* %idp_flags, align 8, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = phi i32 [ %or2, %if.then ], [ %or, %entry ]
  %idp_only.0 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  %onlyCA = getelementptr inbounds %struct.ISSUING_DIST_POINT_st, %struct.ISSUING_DIST_POINT_st* %idp, i64 0, i32 2
  %3 = load i32, i32* %onlyCA, align 4, !tbaa !41
  %cmp3 = icmp sgt i32 %3, 0
  br i1 %cmp3, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  %inc5 = add nuw nsw i32 %idp_only.0, 1
  %or7 = or i32 %2, 8
  store i32 %or7, i32* %idp_flags, align 8, !tbaa !33
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end
  %4 = phi i32 [ %or7, %if.then4 ], [ %2, %if.end ]
  %idp_only.1 = phi i32 [ %inc5, %if.then4 ], [ %idp_only.0, %if.end ]
  %onlyattr = getelementptr inbounds %struct.ISSUING_DIST_POINT_st, %struct.ISSUING_DIST_POINT_st* %idp, i64 0, i32 5
  %5 = load i32, i32* %onlyattr, align 4, !tbaa !42
  %cmp9 = icmp sgt i32 %5, 0
  %or13 = or i32 %4, 16
  %6 = select i1 %cmp9, i32 %or13, i32 %4
  %inc11 = zext i1 %cmp9 to i32
  %idp_only.2 = add nuw nsw i32 %idp_only.1, %inc11
  %cmp15 = icmp ugt i32 %idp_only.2, 1
  %or18 = or i32 %6, 2
  %7 = select i1 %cmp15, i32 %or18, i32 %6
  %8 = or i1 %cmp9, %cmp15
  br i1 %8, label %9, label %10

9:                                                ; preds = %if.end8
  store i32 %7, i32* %idp_flags, align 8, !tbaa !33
  br label %10

10:                                               ; preds = %if.end8, %9
  %indirectCRL = getelementptr inbounds %struct.ISSUING_DIST_POINT_st, %struct.ISSUING_DIST_POINT_st* %idp, i64 0, i32 4
  %11 = load i32, i32* %indirectCRL, align 8, !tbaa !43
  %cmp20 = icmp sgt i32 %11, 0
  br i1 %cmp20, label %if.then21, label %if.end24

if.then21:                                        ; preds = %10
  %or23 = or i32 %7, 32
  store i32 %or23, i32* %idp_flags, align 8, !tbaa !33
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %10
  %12 = phi i32 [ %or23, %if.then21 ], [ %7, %10 ]
  %onlysomereasons = getelementptr inbounds %struct.ISSUING_DIST_POINT_st, %struct.ISSUING_DIST_POINT_st* %idp, i64 0, i32 3
  %13 = load %struct.asn1_string_st*, %struct.asn1_string_st** %onlysomereasons, align 8, !tbaa !44
  %tobool.not = icmp eq %struct.asn1_string_st* %13, null
  br i1 %tobool.not, label %if.end46, label %if.then25

if.then25:                                        ; preds = %if.end24
  %or27 = or i32 %12, 64
  store i32 %or27, i32* %idp_flags, align 8, !tbaa !33
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %13, i64 0, i32 0
  %14 = load i32, i32* %length, align 8, !tbaa !45
  %cmp29 = icmp sgt i32 %14, 0
  br i1 %cmp29, label %if.end32, label %if.then25.if.end44_crit_edge

if.then25.if.end44_crit_edge:                     ; preds = %if.then25
  %idp_reasons45.phi.trans.insert = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 8
  %.pre = load i32, i32* %idp_reasons45.phi.trans.insert, align 4, !tbaa !34
  br label %if.end44

if.end32:                                         ; preds = %if.then25
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %13, i64 0, i32 2
  %15 = load i8*, i8** %data, align 8, !tbaa !46
  %16 = load i8, i8* %15, align 1, !tbaa !47
  %conv = zext i8 %16 to i32
  %idp_reasons = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 8
  store i32 %conv, i32* %idp_reasons, align 4, !tbaa !34
  %cmp35.not = icmp eq i32 %14, 1
  br i1 %cmp35.not, label %if.end44, label %if.then37

if.then37:                                        ; preds = %if.end32
  %arrayidx40 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %arrayidx40, align 1, !tbaa !47
  %conv41 = zext i8 %17 to i32
  %shl = shl nuw nsw i32 %conv41, 8
  %or43 = or i32 %shl, %conv
  br label %if.end44

if.end44:                                         ; preds = %if.then25.if.end44_crit_edge, %if.then37, %if.end32
  %18 = phi i32 [ %.pre, %if.then25.if.end44_crit_edge ], [ %or43, %if.then37 ], [ %conv, %if.end32 ]
  %idp_reasons45 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 8
  %and = and i32 %18, 32895
  store i32 %and, i32* %idp_reasons45, align 4, !tbaa !34
  br label %if.end46

if.end46:                                         ; preds = %if.end44, %if.end24
  %distpoint = getelementptr inbounds %struct.ISSUING_DIST_POINT_st, %struct.ISSUING_DIST_POINT_st* %idp, i64 0, i32 0
  %19 = load %struct.DIST_POINT_NAME_st*, %struct.DIST_POINT_NAME_st** %distpoint, align 8, !tbaa !48
  %call = tail call %struct.X509_name_st* @X509_CRL_get_issuer(%struct.X509_crl_st* noundef nonnull %crl) #7
  %call47 = tail call i32 @DIST_POINT_set_dpname(%struct.DIST_POINT_NAME_st* noundef %19, %struct.X509_name_st* noundef %call) #7
  ret i32 %call47
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_X509_EXTENSION* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare %struct.asn1_object_st* @X509_EXTENSION_get_object(%struct.X509_extension_st* noundef) local_unnamed_addr #2

declare i32 @X509_EXTENSION_get_critical(%struct.X509_extension_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @crl_set_issuers(%struct.X509_crl_st* noundef %crl) unnamed_addr #1 {
entry:
  %j = alloca i32, align 4
  %0 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  %call = tail call %struct.stack_st_X509_REVOKED* @X509_CRL_get_REVOKED(%struct.X509_crl_st* noundef %crl) #7
  %call1 = call fastcc %struct.stack_st* @ossl_check_const_X509_REVOKED_sk_type(%struct.stack_st_X509_REVOKED* noundef %call) #8
  %call2109 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #7
  %cmp110 = icmp sgt i32 %call2109, 0
  br i1 %cmp110, label %for.body.lr.ph, label %cleanup66

for.body.lr.ph:                                   ; preds = %entry
  %issuers = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 11
  %1 = bitcast %struct.stack_st_GENERAL_NAMES** %issuers to %struct.stack_st**
  %flags57 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc63
  %i.0112 = phi i32 [ 0, %for.body.lr.ph ], [ %inc64, %for.inc63 ]
  %gens.0111 = phi %struct.stack_st_GENERAL_NAME* [ null, %for.body.lr.ph ], [ %gens.1, %for.inc63 ]
  %call4 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call1, i32 noundef %i.0112) #7
  %2 = bitcast i8* %call4 to %struct.x509_revoked_st*
  %call5 = call i8* @X509_REVOKED_get_ext_d2i(%struct.x509_revoked_st* noundef %2, i32 noundef 771, i32* noundef nonnull %j, i32* noundef null) #7
  %3 = bitcast i8* %call5 to %struct.stack_st_GENERAL_NAME*
  %tobool = icmp eq i8* %call5, null
  %4 = load i32, i32* %j, align 4
  %cmp6 = icmp ne i32 %4, -1
  %or.cond = select i1 %tobool, i1 %cmp6, i1 false
  br i1 %or.cond, label %cleanup66.sink.split, label %if.end

if.end:                                           ; preds = %for.body
  br i1 %tobool, label %if.end25, label %if.then8

if.then8:                                         ; preds = %if.end
  %5 = load %struct.stack_st_GENERAL_NAMES*, %struct.stack_st_GENERAL_NAMES** %issuers, align 8, !tbaa !31
  %tobool9.not = icmp eq %struct.stack_st_GENERAL_NAMES* %5, null
  br i1 %tobool9.not, label %if.then10, label %if.end17

if.then10:                                        ; preds = %if.then8
  %call11 = call %struct.stack_st* @OPENSSL_sk_new_null() #7
  store %struct.stack_st* %call11, %struct.stack_st** %1, align 8, !tbaa !31
  %tobool14.not = icmp eq %struct.stack_st* %call11, null
  %6 = bitcast %struct.stack_st* %call11 to %struct.stack_st_GENERAL_NAMES*
  br i1 %tobool14.not, label %cleanup66, label %if.end17

if.end17:                                         ; preds = %if.then10, %if.then8
  %7 = phi %struct.stack_st_GENERAL_NAMES* [ %6, %if.then10 ], [ %5, %if.then8 ]
  %call19 = call fastcc %struct.stack_st* @ossl_check_GENERAL_NAMES_sk_type(%struct.stack_st_GENERAL_NAMES* noundef %7) #8
  %call21 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call19, i8* noundef nonnull %call5) #7
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %cleanup66, label %if.end25

if.end25:                                         ; preds = %if.end17, %if.end
  %gens.1 = phi %struct.stack_st_GENERAL_NAME* [ %3, %if.end17 ], [ %gens.0111, %if.end ]
  %issuer = getelementptr inbounds i8, i8* %call4, i64 40
  %8 = bitcast i8* %issuer to %struct.stack_st_GENERAL_NAME**
  store %struct.stack_st_GENERAL_NAME* %gens.1, %struct.stack_st_GENERAL_NAME** %8, align 8, !tbaa !49
  %call26 = call i8* @X509_REVOKED_get_ext_d2i(%struct.x509_revoked_st* noundef %2, i32 noundef 141, i32* noundef nonnull %j, i32* noundef null) #7
  %9 = bitcast i8* %call26 to %struct.asn1_string_st*
  %tobool27 = icmp eq i8* %call26, null
  %10 = load i32, i32* %j, align 4
  %cmp29 = icmp ne i32 %10, -1
  %or.cond71 = select i1 %tobool27, i1 %cmp29, i1 false
  br i1 %or.cond71, label %cleanup66.sink.split, label %if.end33

if.end33:                                         ; preds = %if.end25
  br i1 %tobool27, label %if.else, label %if.then35

if.then35:                                        ; preds = %if.end33
  %call36 = call i64 @ASN1_ENUMERATED_get(%struct.asn1_string_st* noundef nonnull %9) #7
  %conv = trunc i64 %call36 to i32
  %reason37 = getelementptr inbounds i8, i8* %call4, i64 48
  %11 = bitcast i8* %reason37 to i32*
  store i32 %conv, i32* %11, align 8, !tbaa !51
  call void @ASN1_ENUMERATED_free(%struct.asn1_string_st* noundef nonnull %9) #7
  br label %if.end39

if.else:                                          ; preds = %if.end33
  %reason38 = getelementptr inbounds i8, i8* %call4, i64 48
  %12 = bitcast i8* %reason38 to i32*
  store i32 -1, i32* %12, align 8, !tbaa !51
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then35
  %extensions = getelementptr inbounds i8, i8* %call4, i64 32
  %13 = bitcast i8* %extensions to %struct.stack_st_X509_EXTENSION**
  %14 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %13, align 8, !tbaa !52
  %call41 = call fastcc %struct.stack_st* @ossl_check_const_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef %14) #8
  store i32 0, i32* %j, align 4, !tbaa !35
  %call42107 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call41) #7
  %cmp43108 = icmp sgt i32 %call42107, 0
  br i1 %cmp43108, label %for.body45, label %for.inc63

for.body45:                                       ; preds = %if.end39, %for.inc
  %15 = load i32, i32* %j, align 4, !tbaa !35
  %call47 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call41, i32 noundef %15) #7
  %16 = bitcast i8* %call47 to %struct.X509_extension_st*
  %call48 = call i32 @X509_EXTENSION_get_critical(%struct.X509_extension_st* noundef %16) #7
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %for.inc, label %if.then50

if.then50:                                        ; preds = %for.body45
  %call51 = call %struct.asn1_object_st* @X509_EXTENSION_get_object(%struct.X509_extension_st* noundef %16) #7
  %call52 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %call51) #7
  %cmp53 = icmp eq i32 %call52, 771
  br i1 %cmp53, label %for.inc, label %if.end56

if.end56:                                         ; preds = %if.then50
  %17 = load i32, i32* %flags57, align 4, !tbaa !32
  %or58 = or i32 %17, 512
  store i32 %or58, i32* %flags57, align 4, !tbaa !32
  br label %for.inc63

for.inc:                                          ; preds = %for.body45, %if.then50
  %18 = load i32, i32* %j, align 4, !tbaa !35
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %j, align 4, !tbaa !35
  %call42 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call41) #7
  %cmp43 = icmp slt i32 %inc, %call42
  br i1 %cmp43, label %for.body45, label %for.inc63, !llvm.loop !53

for.inc63:                                        ; preds = %for.inc, %if.end39, %if.end56
  %inc64 = add nuw nsw i32 %i.0112, 1
  %call2 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #7
  %cmp = icmp slt i32 %inc64, %call2
  br i1 %cmp, label %for.body, label %cleanup66, !llvm.loop !54

cleanup66.sink.split:                             ; preds = %if.end25, %for.body
  %19 = load i32, i32* %flags57, align 4, !tbaa !32
  %or32 = or i32 %19, 128
  store i32 %or32, i32* %flags57, align 4, !tbaa !32
  br label %cleanup66

cleanup66:                                        ; preds = %for.inc63, %if.then10, %if.end17, %cleanup66.sink.split, %entry
  %retval.2 = phi i32 [ 1, %entry ], [ 1, %cleanup66.sink.split ], [ 1, %for.inc63 ], [ 0, %if.then10 ], [ 0, %if.end17 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %retval.2
}

declare i32 @DIST_POINT_set_dpname(%struct.DIST_POINT_NAME_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #2

declare %struct.X509_name_st* @X509_CRL_get_issuer(%struct.X509_crl_st* noundef) local_unnamed_addr #2

declare %struct.stack_st_X509_REVOKED* @X509_CRL_get_REVOKED(%struct.X509_crl_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_REVOKED_sk_type(%struct.stack_st_X509_REVOKED* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_X509_REVOKED* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @X509_REVOKED_get_ext_d2i(%struct.x509_revoked_st* noundef, i32 noundef, i32* noundef, i32* noundef) local_unnamed_addr #2

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare i64 @ASN1_ENUMERATED_get(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare void @ASN1_ENUMERATED_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_STRING_cmp(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @def_crl_lookup(%struct.X509_crl_st* noundef %crl, %struct.x509_revoked_st** noundef writeonly %ret, %struct.asn1_string_st* noundef %serial, %struct.X509_name_st* noundef %issuer) #1 {
entry:
  %rtmp = alloca %struct.x509_revoked_st, align 8
  %0 = bitcast %struct.x509_revoked_st* %rtmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #9
  %revoked = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 0, i32 5
  %1 = load %struct.stack_st_X509_REVOKED*, %struct.stack_st_X509_REVOKED** %revoked, align 8, !tbaa !55
  %cmp = icmp eq %struct.stack_st_X509_REVOKED* %1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_REVOKED_sk_type(%struct.stack_st_X509_REVOKED* noundef nonnull %1) #8
  %call4 = tail call i32 @OPENSSL_sk_is_sorted(%struct.stack_st* noundef %call) #7
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then5, label %if.end15

if.then5:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 15
  %2 = load i8*, i8** %lock, align 8, !tbaa !56
  %call6 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %2) #7
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.then5
  %3 = load %struct.stack_st_X509_REVOKED*, %struct.stack_st_X509_REVOKED** %revoked, align 8, !tbaa !55
  %call12 = tail call fastcc %struct.stack_st* @ossl_check_X509_REVOKED_sk_type(%struct.stack_st_X509_REVOKED* noundef %3) #8
  tail call void @OPENSSL_sk_sort(%struct.stack_st* noundef %call12) #7
  %4 = load i8*, i8** %lock, align 8, !tbaa !56
  %call14 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %4) #7
  br label %if.end15

if.end15:                                         ; preds = %if.end9, %if.end
  %5 = bitcast %struct.asn1_string_st* %serial to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8* noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !57
  %6 = load %struct.stack_st_X509_REVOKED*, %struct.stack_st_X509_REVOKED** %revoked, align 8, !tbaa !55
  %call18 = tail call fastcc %struct.stack_st* @ossl_check_X509_REVOKED_sk_type(%struct.stack_st_X509_REVOKED* noundef %6) #8
  %call20 = call i32 @OPENSSL_sk_find(%struct.stack_st* noundef %call18, i8* noundef nonnull %0) #7
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %cleanup, label %if.end23

if.end23:                                         ; preds = %if.end15
  %7 = load %struct.stack_st_X509_REVOKED*, %struct.stack_st_X509_REVOKED** %revoked, align 8, !tbaa !55
  %call26 = call fastcc %struct.stack_st* @ossl_check_const_X509_REVOKED_sk_type(%struct.stack_st_X509_REVOKED* noundef %7) #8
  %call27 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call26) #7
  %cmp2870 = icmp slt i32 %call20, %call27
  br i1 %cmp2870, label %for.body, label %cleanup

for.cond:                                         ; preds = %if.end37
  %exitcond.not = icmp eq i32 %inc, %call27
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !59

for.body:                                         ; preds = %if.end23, %for.cond
  %idx.071 = phi i32 [ %inc, %for.cond ], [ %call20, %if.end23 ]
  %8 = load %struct.stack_st_X509_REVOKED*, %struct.stack_st_X509_REVOKED** %revoked, align 8, !tbaa !55
  %call31 = call fastcc %struct.stack_st* @ossl_check_const_X509_REVOKED_sk_type(%struct.stack_st_X509_REVOKED* noundef %8) #8
  %call32 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call31, i32 noundef %idx.071) #7
  %serialNumber33 = bitcast i8* %call32 to %struct.asn1_string_st*
  %call34 = call i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef %serialNumber33, %struct.asn1_string_st* noundef %serial) #7
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %cleanup

if.end37:                                         ; preds = %for.body
  %9 = bitcast i8* %call32 to %struct.x509_revoked_st*
  %call38 = call fastcc i32 @crl_revoked_issuer_match(%struct.X509_crl_st* noundef nonnull %crl, %struct.X509_name_st* noundef %issuer, %struct.x509_revoked_st* noundef %9) #8
  %tobool39.not = icmp eq i32 %call38, 0
  %inc = add i32 %idx.071, 1
  br i1 %tobool39.not, label %for.cond, label %if.then40

if.then40:                                        ; preds = %if.end37
  %tobool41.not = icmp eq %struct.x509_revoked_st** %ret, null
  br i1 %tobool41.not, label %if.end43, label %if.then42

if.then42:                                        ; preds = %if.then40
  %10 = bitcast %struct.x509_revoked_st** %ret to i8**
  store i8* %call32, i8** %10, align 8, !tbaa !18
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.then40
  %reason = getelementptr inbounds i8, i8* %call32, i64 48
  %11 = bitcast i8* %reason to i32*
  %12 = load i32, i32* %11, align 8, !tbaa !51
  %cmp44 = icmp eq i32 %12, 8
  %. = select i1 %cmp44, i32 2, i32 1
  br label %cleanup

cleanup:                                          ; preds = %for.body, %for.cond, %if.end23, %if.end43, %if.end15, %if.then5, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.then5 ], [ 0, %if.end15 ], [ %., %if.end43 ], [ 0, %if.end23 ], [ 0, %for.cond ], [ 0, %for.body ]
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @def_crl_verify(%struct.X509_crl_st* noundef %crl, %struct.evp_pkey_st* noundef %r) #1 {
entry:
  %sig_alg = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 1
  %signature = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 2
  %0 = bitcast %struct.X509_crl_st* %crl to i8*
  %libctx = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 16
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !4
  %propq = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 17
  %2 = load i8*, i8** %propq, align 8, !tbaa !15
  %call2 = tail call i32 @ASN1_item_verify_ex(%struct.ASN1_ITEM_st* noundef nonnull @X509_CRL_INFO_it.local_it, %struct.X509_algor_st* noundef nonnull %sig_alg, %struct.asn1_string_st* noundef nonnull %signature, i8* noundef %0, %struct.asn1_string_st* noundef null, %struct.evp_pkey_st* noundef %r, %struct.ossl_lib_ctx_st* noundef %1, i8* noundef %2) #7
  ret i32 %call2
}

declare i32 @OPENSSL_sk_is_sorted(%struct.stack_st* noundef) local_unnamed_addr #2

declare i32 @CRYPTO_THREAD_write_lock(i8* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_sort(%struct.stack_st* noundef) local_unnamed_addr #2

declare i32 @CRYPTO_THREAD_unlock(i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare i32 @OPENSSL_sk_find(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @crl_revoked_issuer_match(%struct.X509_crl_st* noundef %crl, %struct.X509_name_st* noundef %nm, %struct.x509_revoked_st* nocapture noundef readonly %rev) unnamed_addr #1 {
entry:
  %issuer = getelementptr inbounds %struct.x509_revoked_st, %struct.x509_revoked_st* %rev, i64 0, i32 3
  %0 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %issuer, align 8, !tbaa !49
  %tobool.not = icmp eq %struct.stack_st_GENERAL_NAME* %0, null
  %tobool1.not = icmp eq %struct.X509_name_st* %nm, null
  br i1 %tobool.not, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  br i1 %tobool1.not, label %cleanup25, label %if.end

if.end:                                           ; preds = %if.then
  %call = tail call %struct.X509_name_st* @X509_CRL_get_issuer(%struct.X509_crl_st* noundef %crl) #7
  %call3 = tail call i32 @X509_NAME_cmp(%struct.X509_name_st* noundef nonnull %nm, %struct.X509_name_st* noundef %call) #7
  %tobool4.not = icmp eq i32 %call3, 0
  %. = zext i1 %tobool4.not to i32
  br label %cleanup25

if.end7:                                          ; preds = %entry
  br i1 %tobool1.not, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end7
  %call10 = tail call %struct.X509_name_st* @X509_CRL_get_issuer(%struct.X509_crl_st* noundef %crl) #7
  %.pre = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %issuer, align 8, !tbaa !49
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7
  %1 = phi %struct.stack_st_GENERAL_NAME* [ %0, %if.end7 ], [ %.pre, %if.then9 ]
  %nm.addr.0 = phi %struct.X509_name_st* [ %nm, %if.end7 ], [ %call10, %if.then9 ]
  %call1339 = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %1) #8
  %call1440 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1339) #7
  %cmp41 = icmp sgt i32 %call1440, 0
  br i1 %cmp41, label %for.body, label %cleanup25

for.body:                                         ; preds = %if.end11, %for.inc
  %i.042 = phi i32 [ %inc, %for.inc ], [ 0, %if.end11 ]
  %2 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %issuer, align 8, !tbaa !49
  %call16 = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %2) #8
  %call17 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call16, i32 noundef %i.042) #7
  %type = bitcast i8* %call17 to i32*
  %3 = load i32, i32* %type, align 8, !tbaa !60
  %cmp18.not = icmp eq i32 %3, 4
  br i1 %cmp18.not, label %if.end20, label %for.inc

if.end20:                                         ; preds = %for.body
  %d = getelementptr inbounds i8, i8* %call17, i64 8
  %directoryName = bitcast i8* %d to %struct.X509_name_st**
  %4 = load %struct.X509_name_st*, %struct.X509_name_st** %directoryName, align 8, !tbaa !47
  %call21 = tail call i32 @X509_NAME_cmp(%struct.X509_name_st* noundef %nm.addr.0, %struct.X509_name_st* noundef %4) #7
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %cleanup25, label %for.inc

for.inc:                                          ; preds = %for.body, %if.end20
  %inc = add nuw nsw i32 %i.042, 1
  %5 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %issuer, align 8, !tbaa !49
  %call13 = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %5) #8
  %call14 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call13) #7
  %cmp = icmp slt i32 %inc, %call14
  br i1 %cmp, label %for.body, label %cleanup25, !llvm.loop !62

cleanup25:                                        ; preds = %for.inc, %if.end20, %if.end11, %if.end, %if.then
  %retval.2 = phi i32 [ 1, %if.then ], [ %., %if.end ], [ 0, %if.end11 ], [ 0, %for.inc ], [ 1, %if.end20 ]
  ret i32 %retval.2
}

declare i32 @X509_NAME_cmp(%struct.X509_name_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_GENERAL_NAME* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @ASN1_item_verify_ex(%struct.ASN1_ITEM_st* noundef, %struct.X509_algor_st* noundef, %struct.asn1_string_st* noundef, i8* noundef, %struct.asn1_string_st* noundef, %struct.evp_pkey_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !7, i64 232}
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
!15 = !{!5, !7, i64 240}
!16 = !{!6, !7, i64 48}
!17 = !{!6, !13, i64 80}
!18 = !{!7, !7, i64 0}
!19 = !{!5, !7, i64 208}
!20 = !{!21, !7, i64 32}
!21 = !{!"x509_crl_method_st", !13, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!22 = !{!21, !7, i64 24}
!23 = !{!21, !7, i64 8}
!24 = !{!21, !7, i64 16}
!25 = !{!21, !13, i64 0}
!26 = !{!5, !7, i64 216}
!27 = !{!5, !7, i64 136}
!28 = !{!5, !7, i64 144}
!29 = !{!5, !7, i64 160}
!30 = !{!5, !7, i64 168}
!31 = !{!5, !7, i64 176}
!32 = !{!5, !13, i64 132}
!33 = !{!5, !13, i64 152}
!34 = !{!5, !13, i64 156}
!35 = !{!13, !13, i64 0}
!36 = !{!5, !7, i64 56}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!40, !13, i64 8}
!40 = !{!"ISSUING_DIST_POINT_st", !7, i64 0, !13, i64 8, !13, i64 12, !7, i64 16, !13, i64 24, !13, i64 28}
!41 = !{!40, !13, i64 12}
!42 = !{!40, !13, i64 28}
!43 = !{!40, !13, i64 24}
!44 = !{!40, !7, i64 16}
!45 = !{!14, !13, i64 0}
!46 = !{!14, !7, i64 8}
!47 = !{!8, !8, i64 0}
!48 = !{!40, !7, i64 0}
!49 = !{!50, !7, i64 40}
!50 = !{!"x509_revoked_st", !14, i64 0, !7, i64 24, !7, i64 32, !7, i64 40, !13, i64 48, !13, i64 52}
!51 = !{!50, !13, i64 48}
!52 = !{!50, !7, i64 32}
!53 = distinct !{!53, !38}
!54 = distinct !{!54, !38}
!55 = !{!5, !7, i64 48}
!56 = !{!5, !7, i64 224}
!57 = !{i64 0, i64 4, !35, i64 4, i64 4, !35, i64 8, i64 8, !18, i64 16, i64 8, !58}
!58 = !{!12, !12, i64 0}
!59 = distinct !{!59, !38}
!60 = !{!61, !13, i64 0}
!61 = !{!"GENERAL_NAME_st", !13, i64 0, !8, i64 8}
!62 = distinct !{!62, !38}
