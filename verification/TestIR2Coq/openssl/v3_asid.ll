; ModuleID = 'crypto/x509/v3_asid.c'
source_filename = "crypto/x509/v3_asid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, {}* }
%struct.v3_ext_method = type { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, {}*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* }
%struct.stack_st_CONF_VALUE = type opaque
%struct.v3_ext_ctx = type { i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_req_st*, %struct.X509_crl_st*, %struct.X509V3_CONF_METHOD_st*, i8*, %struct.evp_pkey_st* }
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
%struct.asn1_type_st = type { i32, %union.anon.1 }
%union.anon.1 = type { i8* }
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
%struct.X509_req_st = type { %struct.X509_req_info_st, %struct.X509_algor_st, %struct.asn1_string_st*, i32, i8*, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.X509_req_info_st = type { %struct.ASN1_ENCODING_st, %struct.asn1_string_st*, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.X509_crl_st = type { %struct.X509_crl_info_st, %struct.X509_algor_st, %struct.asn1_string_st, i32, i32, %struct.AUTHORITY_KEYID_st*, %struct.ISSUING_DIST_POINT_st*, i32, i32, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAMES*, [20 x i8], %struct.x509_crl_method_st*, i8*, i8*, %struct.ossl_lib_ctx_st*, i8* }
%struct.X509_crl_info_st = type { %struct.asn1_string_st*, %struct.X509_algor_st, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_REVOKED*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.stack_st_X509_REVOKED = type opaque
%struct.ISSUING_DIST_POINT_st = type { %struct.DIST_POINT_NAME_st*, i32, i32, %struct.asn1_string_st*, i32, i32 }
%struct.DIST_POINT_NAME_st = type { i32, %union.anon.2, %struct.X509_name_st* }
%union.anon.2 = type { %struct.stack_st_GENERAL_NAME* }
%struct.stack_st_GENERAL_NAMES = type opaque
%struct.x509_crl_method_st = type { i32, i32 (%struct.X509_crl_st*)*, i32 (%struct.X509_crl_st*)*, i32 (%struct.X509_crl_st*, %struct.x509_revoked_st**, %struct.asn1_string_st*, %struct.X509_name_st*)*, i32 (%struct.X509_crl_st*, %struct.evp_pkey_st*)* }
%struct.x509_revoked_st = type { %struct.asn1_string_st, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.stack_st_GENERAL_NAME*, i32, i32 }
%struct.X509V3_CONF_METHOD_st = type { i8* (i8*, i8*, i8*)*, %struct.stack_st_CONF_VALUE* (i8*, i8*)*, void (i8*, i8*)*, void (i8*, %struct.stack_st_CONF_VALUE*)* }
%struct.evp_pkey_st = type opaque
%struct.bio_st = type opaque
%struct.ASRange_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.ASN1_VALUE_st = type opaque
%struct.ASIdOrRange_st = type { i32, %union.anon }
%union.anon = type { %struct.asn1_string_st* }
%struct.stack_st = type opaque
%struct.stack_st_ASIdOrRange = type opaque
%struct.bignum_st = type opaque
%struct.CONF_VALUE = type { i8*, i8*, i8* }
%struct.x509_store_ctx_st = type { %struct.x509_store_st*, %struct.x509_st*, %struct.stack_st_X509*, %struct.stack_st_X509_CRL*, %struct.X509_VERIFY_PARAM_st*, i8*, {}*, i32 (i32, %struct.x509_store_ctx_st*)*, i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)*, {}*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)*, {}*, %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, {}*, i32, i32, %struct.stack_st_X509*, %struct.X509_POLICY_TREE_st*, i32, i32, i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_crl_st*, i32, i32, %struct.x509_store_ctx_st*, %struct.crypto_ex_data_st, %struct.ssl_dane_st*, i32, %struct.ossl_lib_ctx_st*, i8* }
%struct.x509_store_st = type { i32, %struct.stack_st_X509_OBJECT*, %struct.stack_st_X509_LOOKUP*, %struct.X509_VERIFY_PARAM_st*, {}*, i32 (i32, %struct.x509_store_ctx_st*)*, i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)*, {}*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)*, {}*, %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, {}*, %struct.crypto_ex_data_st, i32, i8* }
%struct.stack_st_X509_OBJECT = type opaque
%struct.stack_st_X509_LOOKUP = type opaque
%struct.stack_st_X509_CRL = type opaque
%struct.X509_VERIFY_PARAM_st = type { i8*, i64, i32, i64, i32, i32, i32, i32, %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_OPENSSL_STRING*, i32, i8*, i8*, i64, i8*, i64 }
%struct.stack_st_OPENSSL_STRING = type opaque
%struct.stack_st_X509 = type opaque
%struct.X509_POLICY_TREE_st = type opaque
%struct.ssl_dane_st = type opaque

@ASRange_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @ASRange_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [8 x i8] c"ASRange\00", align 1
@ASIdOrRange_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 2, i64 0, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @ASIdOrRange_ch_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"ASIdOrRange\00", align 1
@ASIdentifierChoice_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 2, i64 0, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @ASIdentifierChoice_ch_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0) }, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"ASIdentifierChoice\00", align 1
@ASIdentifiers_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @ASIdentifiers_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0) }, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"ASIdentifiers\00", align 1
@ossl_v3_asid = local_unnamed_addr constant { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 291, i32 0, %struct.ASN1_ITEM_st* ()* @ASIdentifiers_it, i8* ()* null, void (i8*)* null, i8* (i8*, i8**, i64)* null, i32 (i8*, i8**)* null, i8* (%struct.v3_ext_method*, i8*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* @v2i_ASIdentifiers, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* @i2r_ASIdentifiers, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, i8* null }, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@ASRange_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }], align 16
@.str.7 = private unnamed_addr constant [5 x i8] c"u.id\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"u.range\00", align 1
@ASIdOrRange_ch_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASRange_it }], align 16
@.str.10 = private unnamed_addr constant [10 x i8] c"u.inherit\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"u.asIdsOrRanges\00", align 1
@ASIdentifierChoice_ch_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_NULL_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4, i64 0, i64 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASIdOrRange_it }], align 16
@.str.13 = private unnamed_addr constant [6 x i8] c"asnum\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"rdi\00", align 1
@ASIdentifiers_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 0, i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASIdentifierChoice_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 1, i64 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASIdentifierChoice_it }], align 16
@.str.16 = private unnamed_addr constant [22 x i8] c"crypto/x509/v3_asid.c\00", align 1
@__func__.ASIdentifierChoice_is_canonical = private unnamed_addr constant [32 x i8] c"ASIdentifierChoice_is_canonical\00", align 1
@__func__.ASIdentifierChoice_canonize = private unnamed_addr constant [28 x i8] c"ASIdentifierChoice_canonize\00", align 1
@__func__.v2i_ASIdentifiers = private unnamed_addr constant [18 x i8] c"v2i_ASIdentifiers\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"AS\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"RDI\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"name=\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c", value=\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"inherit\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"Autonomous System Numbers\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"Routing Domain Identifiers\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"%*s%s:\0A\00", align 1
@.str.27 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"%*sinherit\0A\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"%*s%s\0A\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"%*s%s-\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ASRange_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ASRange_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ASIdOrRange_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ASIdOrRange_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ASIdentifierChoice_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ASIdentifierChoice_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ASIdentifiers_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ASIdentifiers_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ASRange_st* @d2i_ASRange(%struct.ASRange_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ASRange_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ASRange_it.local_it) #7
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ASRange_st*
  ret %struct.ASRange_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ASRange(%struct.ASRange_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ASRange_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ASRange_it.local_it) #7
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ASRange_st* @ASRange_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @ASRange_it.local_it) #7
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ASRange_st*
  ret %struct.ASRange_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @ASRange_free(%struct.ASRange_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ASRange_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @ASRange_it.local_it) #7
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ASIdOrRange_st* @d2i_ASIdOrRange(%struct.ASIdOrRange_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ASIdOrRange_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ASIdOrRange_it.local_it) #7
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ASIdOrRange_st*
  ret %struct.ASIdOrRange_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ASIdOrRange(%struct.ASIdOrRange_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ASIdOrRange_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ASIdOrRange_it.local_it) #7
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ASIdOrRange_st* @ASIdOrRange_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @ASIdOrRange_it.local_it) #7
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ASIdOrRange_st*
  ret %struct.ASIdOrRange_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @ASIdOrRange_free(%struct.ASIdOrRange_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ASIdOrRange_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @ASIdOrRange_it.local_it) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.ASIdentifierChoice_st* @d2i_ASIdentifierChoice(%struct.ASIdentifierChoice_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ASIdentifierChoice_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ASIdentifierChoice_it.local_it) #7
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ASIdentifierChoice_st*
  ret %struct.ASIdentifierChoice_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ASIdentifierChoice(%struct.ASIdentifierChoice_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ASIdentifierChoice_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ASIdentifierChoice_it.local_it) #7
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ASIdentifierChoice_st* @ASIdentifierChoice_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @ASIdentifierChoice_it.local_it) #7
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ASIdentifierChoice_st*
  ret %struct.ASIdentifierChoice_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @ASIdentifierChoice_free(%struct.ASIdentifierChoice_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ASIdentifierChoice_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @ASIdentifierChoice_it.local_it) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.ASIdentifiers_st* @d2i_ASIdentifiers(%struct.ASIdentifiers_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ASIdentifiers_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ASIdentifiers_it.local_it) #7
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ASIdentifiers_st*
  ret %struct.ASIdentifiers_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ASIdentifiers(%struct.ASIdentifiers_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ASIdentifiers_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ASIdentifiers_it.local_it) #7
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ASIdentifiers_st* @ASIdentifiers_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @ASIdentifiers_it.local_it) #7
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ASIdentifiers_st*
  ret %struct.ASIdentifiers_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @ASIdentifiers_free(%struct.ASIdentifiers_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ASIdentifiers_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @ASIdentifiers_it.local_it) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509v3_asid_add_inherit(%struct.ASIdentifiers_st* noundef %asid, i32 noundef %which) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ASIdentifiers_st* %asid, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  switch i32 %which, label %cleanup [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %if.end
  %asnum = getelementptr inbounds %struct.ASIdentifiers_st, %struct.ASIdentifiers_st* %asid, i64 0, i32 0
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  %rdi = getelementptr inbounds %struct.ASIdentifiers_st, %struct.ASIdentifiers_st* %asid, i64 0, i32 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %choice.0 = phi %struct.ASIdentifierChoice_st** [ %rdi, %sw.bb1 ], [ %asnum, %sw.bb ]
  %0 = load %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st** %choice.0, align 8, !tbaa !4
  %cmp2 = icmp eq %struct.ASIdentifierChoice_st* %0, null
  br i1 %cmp2, label %if.then3, label %sw.epilog.if.end11_crit_edge

sw.epilog.if.end11_crit_edge:                     ; preds = %sw.epilog
  %type12.phi.trans.insert = getelementptr inbounds %struct.ASIdentifierChoice_st, %struct.ASIdentifierChoice_st* %0, i64 0, i32 0
  %.pre = load i32, i32* %type12.phi.trans.insert, align 8, !tbaa !8
  %phi.cmp = icmp eq i32 %.pre, 0
  %phi.cast = zext i1 %phi.cmp to i32
  br label %cleanup

if.then3:                                         ; preds = %sw.epilog
  %call = tail call %struct.ASIdentifierChoice_st* @ASIdentifierChoice_new() #8
  store %struct.ASIdentifierChoice_st* %call, %struct.ASIdentifierChoice_st** %choice.0, align 8, !tbaa !4
  %cmp4 = icmp eq %struct.ASIdentifierChoice_st* %call, null
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.then3
  %call7 = tail call i32* @ASN1_NULL_new() #7
  %1 = load %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st** %choice.0, align 8, !tbaa !4
  %inherit = getelementptr inbounds %struct.ASIdentifierChoice_st, %struct.ASIdentifierChoice_st* %1, i64 0, i32 1, i32 0
  store i32* %call7, i32** %inherit, align 8, !tbaa !11
  %cmp8 = icmp eq i32* %call7, null
  br i1 %cmp8, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end6
  %2 = load %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st** %choice.0, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.ASIdentifierChoice_st, %struct.ASIdentifierChoice_st* %2, i64 0, i32 0
  store i32 0, i32* %type, align 8, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %sw.epilog.if.end11_crit_edge, %if.end6, %if.then3, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.then3 ], [ 0, %if.end6 ], [ 1, %if.end10 ], [ %phi.cast, %sw.epilog.if.end11_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare i32* @ASN1_NULL_new() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define i32 @X509v3_asid_add_id_or_range(%struct.ASIdentifiers_st* noundef %asid, i32 noundef %which, %struct.asn1_string_st* noundef %min, %struct.asn1_string_st* noundef %max) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ASIdentifiers_st* %asid, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  switch i32 %which, label %cleanup [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %if.end
  %asnum = getelementptr inbounds %struct.ASIdentifiers_st, %struct.ASIdentifiers_st* %asid, i64 0, i32 0
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  %rdi = getelementptr inbounds %struct.ASIdentifiers_st, %struct.ASIdentifiers_st* %asid, i64 0, i32 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %choice.0 = phi %struct.ASIdentifierChoice_st** [ %rdi, %sw.bb1 ], [ %asnum, %sw.bb ]
  %0 = load %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st** %choice.0, align 8, !tbaa !4
  %cmp2.not = icmp eq %struct.ASIdentifierChoice_st* %0, null
  br i1 %cmp2.not, label %if.then7, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.epilog
  %type = getelementptr inbounds %struct.ASIdentifierChoice_st, %struct.ASIdentifierChoice_st* %0, i64 0, i32 0
  %1 = load i32, i32* %type, align 8, !tbaa !8
  %cmp3 = icmp eq i32 %1, 0
  br i1 %cmp3, label %cleanup, label %if.end19

if.then7:                                         ; preds = %sw.epilog
  %call = tail call %struct.ASIdentifierChoice_st* @ASIdentifierChoice_new() #8
  store %struct.ASIdentifierChoice_st* %call, %struct.ASIdentifierChoice_st** %choice.0, align 8, !tbaa !4
  %cmp8 = icmp eq %struct.ASIdentifierChoice_st* %call, null
  br i1 %cmp8, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.then7
  %call12 = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (%struct.ASIdOrRange_st**, %struct.ASIdOrRange_st**)* @ASIdOrRange_cmp to i32 (i8*, i8*)*)) #7
  %2 = load %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st** %choice.0, align 8, !tbaa !4
  %u = getelementptr inbounds %struct.ASIdentifierChoice_st, %struct.ASIdentifierChoice_st* %2, i64 0, i32 1
  %3 = bitcast %union.anon.0* %u to %struct.stack_st**
  store %struct.stack_st* %call12, %struct.stack_st** %3, align 8, !tbaa !11
  %4 = load %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st** %choice.0, align 8, !tbaa !4
  %u13 = getelementptr inbounds %struct.ASIdentifierChoice_st, %struct.ASIdentifierChoice_st* %4, i64 0, i32 1
  %asIdsOrRanges14 = bitcast %union.anon.0* %u13 to %struct.stack_st_ASIdOrRange**
  %5 = load %struct.stack_st_ASIdOrRange*, %struct.stack_st_ASIdOrRange** %asIdsOrRanges14, align 8, !tbaa !11
  %cmp15 = icmp eq %struct.stack_st_ASIdOrRange* %5, null
  br i1 %cmp15, label %cleanup, label %if.end17

if.end17:                                         ; preds = %if.end10
  %type18 = getelementptr inbounds %struct.ASIdentifierChoice_st, %struct.ASIdentifierChoice_st* %4, i64 0, i32 0
  store i32 1, i32* %type18, align 8, !tbaa !8
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true, %if.end17
  %call20 = tail call %struct.ASIdOrRange_st* @ASIdOrRange_new() #8
  %cmp21 = icmp eq %struct.ASIdOrRange_st* %call20, null
  br i1 %cmp21, label %cleanup, label %if.end23

if.end23:                                         ; preds = %if.end19
  %cmp24 = icmp eq %struct.asn1_string_st* %max, null
  %type26 = getelementptr inbounds %struct.ASIdOrRange_st, %struct.ASIdOrRange_st* %call20, i64 0, i32 0
  br i1 %cmp24, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end23
  store i32 0, i32* %type26, align 8, !tbaa !12
  %id = getelementptr inbounds %struct.ASIdOrRange_st, %struct.ASIdOrRange_st* %call20, i64 0, i32 1, i32 0
  store %struct.asn1_string_st* %min, %struct.asn1_string_st** %id, align 8, !tbaa !11
  br label %if.end46

if.else:                                          ; preds = %if.end23
  store i32 1, i32* %type26, align 8, !tbaa !12
  %call29 = tail call %struct.ASRange_st* @ASRange_new() #8
  %u30 = getelementptr inbounds %struct.ASIdOrRange_st, %struct.ASIdOrRange_st* %call20, i64 0, i32 1
  %range = bitcast %union.anon* %u30 to %struct.ASRange_st**
  store %struct.ASRange_st* %call29, %struct.ASRange_st** %range, align 8, !tbaa !11
  %cmp31 = icmp eq %struct.ASRange_st* %call29, null
  br i1 %cmp31, label %err, label %if.end33

if.end33:                                         ; preds = %if.else
  %min36 = getelementptr inbounds %struct.ASRange_st, %struct.ASRange_st* %call29, i64 0, i32 0
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %min36, align 8, !tbaa !14
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %6) #7
  %7 = load %struct.ASRange_st*, %struct.ASRange_st** %range, align 8, !tbaa !11
  %min39 = getelementptr inbounds %struct.ASRange_st, %struct.ASRange_st* %7, i64 0, i32 0
  store %struct.asn1_string_st* %min, %struct.asn1_string_st** %min39, align 8, !tbaa !14
  %8 = load %struct.ASRange_st*, %struct.ASRange_st** %range, align 8, !tbaa !11
  %max42 = getelementptr inbounds %struct.ASRange_st, %struct.ASRange_st* %8, i64 0, i32 1
  %9 = load %struct.asn1_string_st*, %struct.asn1_string_st** %max42, align 8, !tbaa !16
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %9) #7
  %10 = load %struct.ASRange_st*, %struct.ASRange_st** %range, align 8, !tbaa !11
  %max45 = getelementptr inbounds %struct.ASRange_st, %struct.ASRange_st* %10, i64 0, i32 1
  store %struct.asn1_string_st* %max, %struct.asn1_string_st** %max45, align 8, !tbaa !16
  br label %if.end46

if.end46:                                         ; preds = %if.end33, %if.then25
  %11 = load %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st** %choice.0, align 8, !tbaa !4
  %u47 = getelementptr inbounds %struct.ASIdentifierChoice_st, %struct.ASIdentifierChoice_st* %11, i64 0, i32 1
  %asIdsOrRanges48 = bitcast %union.anon.0* %u47 to %struct.stack_st_ASIdOrRange**
  %12 = load %struct.stack_st_ASIdOrRange*, %struct.stack_st_ASIdOrRange** %asIdsOrRanges48, align 8, !tbaa !11
  %call49 = tail call fastcc %struct.stack_st* @ossl_check_ASIdOrRange_sk_type(%struct.stack_st_ASIdOrRange* noundef %12) #8
  %13 = bitcast %struct.ASIdOrRange_st* %call20 to i8*
  %call51 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call49, i8* noundef nonnull %13) #7
  %tobool.not = icmp eq i32 %call51, 0
  br i1 %tobool.not, label %err, label %cleanup

err:                                              ; preds = %if.end46, %if.else
  tail call void @ASIdOrRange_free(%struct.ASIdOrRange_st* noundef nonnull %call20) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.end19, %if.end10, %if.then7, %land.lhs.true, %if.end, %entry, %err
  %retval.0 = phi i32 [ 0, %err ], [ 0, %entry ], [ 0, %if.end ], [ 0, %land.lhs.true ], [ 0, %if.then7 ], [ 0, %if.end10 ], [ 0, %if.end19 ], [ 1, %if.end46 ]
  ret i32 %retval.0
}

declare %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @ASIdOrRange_cmp(%struct.ASIdOrRange_st** nocapture noundef readonly %a_, %struct.ASIdOrRange_st** nocapture noundef readonly %b_) #1 {
entry:
  %0 = load %struct.ASIdOrRange_st*, %struct.ASIdOrRange_st** %a_, align 8, !tbaa !4
  %1 = load %struct.ASIdOrRange_st*, %struct.ASIdOrRange_st** %b_, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.ASIdOrRange_st, %struct.ASIdOrRange_st* %0, i64 0, i32 0
  %2 = load i32, i32* %type, align 8, !tbaa !12
  switch i32 %2, label %if.else [
    i32 0, label %land.lhs.true
    i32 1, label %land.lhs.true7
  ]

land.lhs.true:                                    ; preds = %entry
  %type1 = getelementptr inbounds %struct.ASIdOrRange_st, %struct.ASIdOrRange_st* %1, i64 0, i32 0
  %3 = load i32, i32* %type1, align 8, !tbaa !12
  %cmp2 = icmp eq i32 %3, 0
  %id = getelementptr inbounds %struct.ASIdOrRange_st, %struct.ASIdOrRange_st* %0, i64 0, i32 1, i32 0
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %id, align 8, !tbaa !11
  br i1 %cmp2, label %if.then, label %if.then26

if.then:                                          ; preds = %land.lhs.true
  %id4 = getelementptr inbounds %struct.ASIdOrRange_st, %struct.ASIdOrRange_st* %1, i64 0, i32 1, i32 0
  br label %cleanup.sink.split

land.lhs.true7:                                   ; preds = %entry
  %type8 = getelementptr inbounds %struct.ASIdOrRange_st, %struct.ASIdOrRange_st* %1, i64 0, i32 0
  %5 = load i32, i32* %type8, align 8, !tbaa !12
  %cmp9 = icmp eq i32 %5, 1
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %land.lhs.true7
  %u11 = getelementptr inbounds %struct.ASIdOrRange_st, %struct.ASIdOrRange_st* %0, i64 0, i32 1
  %range = bitcast %union.anon* %u11 to %struct.ASRange_st**
  %6 = load %struct.ASRange_st*, %struct.ASRange_st** %range, align 8, !tbaa !11
  %min = getelementptr inbounds %struct.ASRange_st, %struct.ASRange_st* %6, i64 0, i32 0
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %min, align 8, !tbaa !14
  %u12 = getelementptr inbounds %struct.ASIdOrRange_st, %struct.ASIdOrRange_st* %1, i64 0, i32 1
  %range13 = bitcast %union.anon* %u12 to %struct.ASRange_st**
  %8 = load %struct.ASRange_st*, %struct.ASRange_st** %range13, align 8, !tbaa !11
  %min14 = getelementptr inbounds %struct.ASRange_st, %struct.ASRange_st* %8, i64 0, i32 0
  %9 = load %struct.asn1_string_st*, %struct.asn1_string_st** %min14, align 8, !tbaa !14
  %call15 = tail call i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef %7, %struct.asn1_string_st* noundef %9) #7
  %cmp16.not = icmp eq i32 %call15, 0
  br i1 %cmp16.not, label %cond.false, label %cleanup

cond.false:                                       ; preds = %if.then10
  %10 = load %struct.ASRange_st*, %struct.ASRange_st** %range, align 8, !tbaa !11
  %max = getelementptr inbounds %struct.ASRange_st, %struct.ASRange_st* %10, i64 0, i32 1
  %11 = load %struct.asn1_string_st*, %struct.asn1_string_st** %max, align 8, !tbaa !16
  %12 = load %struct.ASRange_st*, %struct.ASRange_st** %range13, align 8, !tbaa !11
  %max21 = getelementptr inbounds %struct.ASRange_st, %struct.ASRange_st* %12, i64 0, i32 1
  br label %cleanup.sink.split

if.then26:                                        ; preds = %land.lhs.true
  %u29 = getelementptr inbounds %struct.ASIdOrRange_st, %struct.ASIdOrRange_st* %1, i64 0, i32 1
  %range30 = bitcast %union.anon* %u29 to %struct.ASRange_st**
  %13 = load %struct.ASRange_st*, %struct.ASRange_st** %range30, align 8, !tbaa !11
  %min31 = getelementptr inbounds %struct.ASRange_st, %struct.ASRange_st* %13, i64 0, i32 0
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry, %land.lhs.true7
  %u33 = getelementptr inbounds %struct.ASIdOrRange_st, %struct.ASIdOrRange_st* %0, i64 0, i32 1
  %range34 = bitcast %union.anon* %u33 to %struct.ASRange_st**
  %14 = load %struct.ASRange_st*, %struct.ASRange_st** %range34, align 8, !tbaa !11
  %min35 = getelementptr inbounds %struct.ASRange_st, %struct.ASRange_st* %14, i64 0, i32 0
  %15 = load %struct.asn1_string_st*, %struct.asn1_string_st** %min35, align 8, !tbaa !14
  %id37 = getelementptr inbounds %struct.ASIdOrRange_st, %struct.ASIdOrRange_st* %1, i64 0, i32 1, i32 0
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then, %if.then26, %if.else, %cond.false
  %max21.sink = phi %struct.asn1_string_st** [ %max21, %cond.false ], [ %id37, %if.else ], [ %min31, %if.then26 ], [ %id4, %if.then ]
  %.sink = phi %struct.asn1_string_st* [ %11, %cond.false ], [ %15, %if.else ], [ %4, %if.then26 ], [ %4, %if.then ]
  %16 = load %struct.asn1_string_st*, %struct.asn1_string_st** %max21.sink, align 8, !tbaa !11
  %call22 = tail call i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef %.sink, %struct.asn1_string_st* noundef %16) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then10
  %retval.0 = phi i32 [ %call15, %if.then10 ], [ %call22, %cleanup.sink.split ]
  ret i32 %retval.0
}

declare void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_ASIdOrRange_sk_type(%struct.stack_st_ASIdOrRange* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_ASIdOrRange* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509v3_asid_is_canonical(%struct.ASIdentifiers_st* noundef readonly %asid) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ASIdentifiers_st* %asid, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %asnum = getelementptr inbounds %struct.ASIdentifiers_st, %struct.ASIdentifiers_st* %asid, i64 0, i32 0
  %0 = load %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st** %asnum, align 8, !tbaa !17
  %call = tail call fastcc i32 @ASIdentifierChoice_is_canonical(%struct.ASIdentifierChoice_st* noundef %0) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.end, label %land.rhs

land.rhs:                                         ; preds = %lor.rhs
  %rdi = getelementptr inbounds %struct.ASIdentifiers_st, %struct.ASIdentifiers_st* %asid, i64 0, i32 1
  %1 = load %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st** %rdi, align 8, !tbaa !19
  %call1 = tail call fastcc i32 @ASIdentifierChoice_is_canonical(%struct.ASIdentifierChoice_st* noundef %1) #8
  %tobool2 = icmp ne i32 %call1, 0
  %phi.cast = zext i1 %tobool2 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs, %entry
  %2 = phi i32 [ 1, %entry ], [ 0, %lor.rhs ], [ %phi.cast, %land.rhs ]
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ASIdentifierChoice_is_canonical(%struct.ASIdentifierChoice_st* noundef readonly %choice) unnamed_addr #1 {
entry:
  %a_min = alloca %struct.asn1_string_st*, align 8
  %a_max = alloca %struct.asn1_string_st*, align 8
  %b_min = alloca %struct.asn1_string_st*, align 8
  %b_max = alloca %struct.asn1_string_st*, align 8
  %a_min72 = alloca %struct.asn1_string_st*, align 8
  %a_max73 = alloca %struct.asn1_string_st*, align 8
  %cmp = icmp eq %struct.ASIdentifierChoice_st* %choice, null
  br i1 %cmp, label %cleanup92, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.ASIdentifierChoice_st, %struct.ASIdentifierChoice_st* %choice, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !8
  switch i32 %0, label %if.then7 [
    i32 0, label %cleanup92
    i32 1, label %lor.lhs.false4
  ]

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %u = getelementptr inbounds %struct.ASIdentifierChoice_st, %struct.ASIdentifierChoice_st* %choice, i64 0, i32 1
  %asIdsOrRanges = bitcast %union.anon.0* %u to %struct.stack_st_ASIdOrRange**
  %1 = load %struct.stack_st_ASIdOrRange*, %struct.stack_st_ASIdOrRange** %asIdsOrRanges, align 8, !tbaa !11
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_ASIdOrRange_sk_type(%struct.stack_st_ASIdOrRange* noundef %1) #8
  %call5 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #7
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false4
  %2 = load %struct.stack_st_ASIdOrRange*, %struct.stack_st_ASIdOrRange** %asIdsOrRanges, align 8, !tbaa !11
  %call11150 = tail call fastcc %struct.stack_st* @ossl_check_const_ASIdOrRange_sk_type(%struct.stack_st_ASIdOrRange* noundef %2) #8
  %call12151 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call11150) #7
  %cmp13153 = icmp sgt i32 %call12151, 1
  br i1 %cmp13153, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %3 = bitcast %struct.asn1_string_st** %a_min to i8*
  %4 = bitcast %struct.asn1_string_st** %a_max to i8*
  %5 = bitcast %struct.asn1_string_st** %b_min to i8*
  %6 = bitcast %struct.asn1_string_st** %b_max to i8*
  br label %for.body

if.then7:                                         ; preds = %lor.lhs.false, %lor.lhs.false4
  br label %cleanup92

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %a_max_plus_one.0156 = phi %struct.asn1_string_st* [ null, %for.body.lr.ph ], [ %call49, %cleanup ]
  %bn.0155 = phi %struct.bignum_st* [ null, %for.body.lr.ph ], [ %bn.1, %cleanup ]
  %i.0154 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %cleanup ]
  %7 = load %struct.stack_st_ASIdOrRange*, %struct.stack_st_ASIdOrRange** %asIdsOrRanges, align 8, !tbaa !11
  %call16 = tail call fastcc %struct.stack_st* @ossl_check_const_ASIdOrRange_sk_type(%struct.stack_st_ASIdOrRange* noundef %7) #8
  %call17 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call16, i32 noundef %i.0154) #7
  %8 = bitcast i8* %call17 to %struct.ASIdOrRange_st*
  %9 = load %struct.stack_st_ASIdOrRange*, %struct.stack_st_ASIdOrRange** %asIdsOrRanges, align 8, !tbaa !11
  %call20 = tail call fastcc %struct.stack_st* @ossl_check_const_ASIdOrRange_sk_type(%struct.stack_st_ASIdOrRange* noundef %9) #8
  %add = add nuw nsw i32 %i.0154, 1
  %call21 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call20, i32 noundef %add) #7
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %a_min, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %a_max, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %b_min, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %b_max, align 8, !tbaa !4
  %call22 = call fastcc i32 @extract_min_max(%struct.ASIdOrRange_st* noundef %8, %struct.asn1_string_st** noundef nonnull %a_min, %struct.asn1_string_st** noundef nonnull %a_max) #8
  %tobool.not = icmp eq i32 %call22, 0
  br i1 %tobool.not, label %cleanup.thread, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %for.body
  %10 = bitcast i8* %call21 to %struct.ASIdOrRange_st*
  %call24 = call fastcc i32 @extract_min_max(%struct.ASIdOrRange_st* noundef %10, %struct.asn1_string_st** noundef nonnull %b_min, %struct.asn1_string_st** noundef nonnull %b_max) #8
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %cleanup.thread, label %if.end27

if.end27:                                         ; preds = %lor.lhs.false23
  %11 = load %struct.asn1_string_st*, %struct.asn1_string_st** %a_min, align 8, !tbaa !4
  %12 = load %struct.asn1_string_st*, %struct.asn1_string_st** %b_min, align 8, !tbaa !4
  %call28 = tail call i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef %11, %struct.asn1_string_st* noundef %12) #7
  %cmp29 = icmp sgt i32 %call28, -1
  br i1 %cmp29, label %cleanup.thread, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %if.end27
  %13 = load %struct.asn1_string_st*, %struct.asn1_string_st** %a_max, align 8, !tbaa !4
  %call31 = tail call i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef %11, %struct.asn1_string_st* noundef %13) #7
  %cmp32 = icmp sgt i32 %call31, 0
  br i1 %cmp32, label %cleanup.thread, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false30
  %14 = load %struct.asn1_string_st*, %struct.asn1_string_st** %b_max, align 8, !tbaa !4
  %call34 = tail call i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef %12, %struct.asn1_string_st* noundef %14) #7
  %cmp35 = icmp sgt i32 %call34, 0
  br i1 %cmp35, label %cleanup.thread, label %if.end37

if.end37:                                         ; preds = %lor.lhs.false33
  %cmp38 = icmp eq %struct.bignum_st* %bn.0155, null
  br i1 %cmp38, label %land.lhs.true, label %lor.lhs.false41

land.lhs.true:                                    ; preds = %if.end37
  %call39 = tail call %struct.bignum_st* @BN_new() #7
  %cmp40 = icmp eq %struct.bignum_st* %call39, null
  br i1 %cmp40, label %cleanup.thread.sink.split, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %land.lhs.true, %if.end37
  %bn.1 = phi %struct.bignum_st* [ %call39, %land.lhs.true ], [ %bn.0155, %if.end37 ]
  %call42 = tail call %struct.bignum_st* @ASN1_INTEGER_to_BN(%struct.asn1_string_st* noundef %13, %struct.bignum_st* noundef nonnull %bn.1) #7
  %cmp43 = icmp eq %struct.bignum_st* %call42, null
  br i1 %cmp43, label %cleanup.thread.sink.split, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %lor.lhs.false41
  %call45 = tail call i32 @BN_add_word(%struct.bignum_st* noundef nonnull %bn.1, i64 noundef 1) #7
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %cleanup.thread.sink.split, label %if.end48

if.end48:                                         ; preds = %lor.lhs.false44
  %call49 = tail call %struct.asn1_string_st* @BN_to_ASN1_INTEGER(%struct.bignum_st* noundef nonnull %bn.1, %struct.asn1_string_st* noundef %a_max_plus_one.0156) #7
  %cmp50 = icmp eq %struct.asn1_string_st* %call49, null
  br i1 %cmp50, label %cleanup.thread.sink.split, label %if.end52

if.end52:                                         ; preds = %if.end48
  %call53 = tail call i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef nonnull %call49, %struct.asn1_string_st* noundef %12) #7
  %cmp54 = icmp sgt i32 %call53, -1
  br i1 %cmp54, label %cleanup.thread, label %cleanup

cleanup.thread.sink.split:                        ; preds = %if.end48, %land.lhs.true, %lor.lhs.false41, %lor.lhs.false44
  %.sink = phi i32 [ 304, %lor.lhs.false44 ], [ 304, %lor.lhs.false41 ], [ 304, %land.lhs.true ], [ 311, %if.end48 ]
  %bn.3.ph.ph = phi %struct.bignum_st* [ %bn.1, %lor.lhs.false44 ], [ %bn.1, %lor.lhs.false41 ], [ null, %land.lhs.true ], [ %bn.1, %if.end48 ]
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.ASIdentifierChoice_is_canonical, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %lor.lhs.false23, %for.body, %lor.lhs.false33, %lor.lhs.false30, %if.end27, %if.end52, %cleanup.thread.sink.split
  %bn.3.ph = phi %struct.bignum_st* [ %bn.3.ph.ph, %cleanup.thread.sink.split ], [ %bn.0155, %if.end27 ], [ %bn.0155, %lor.lhs.false30 ], [ %bn.0155, %lor.lhs.false33 ], [ %bn.0155, %for.body ], [ %bn.0155, %lor.lhs.false23 ], [ %bn.1, %if.end52 ]
  %a_max_plus_one.1.ph = phi %struct.asn1_string_st* [ %a_max_plus_one.0156, %cleanup.thread.sink.split ], [ %a_max_plus_one.0156, %if.end27 ], [ %a_max_plus_one.0156, %lor.lhs.false30 ], [ %a_max_plus_one.0156, %lor.lhs.false33 ], [ %a_max_plus_one.0156, %for.body ], [ %a_max_plus_one.0156, %lor.lhs.false23 ], [ %call49, %if.end52 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9
  br label %done

cleanup:                                          ; preds = %if.end52
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9
  %15 = load %struct.stack_st_ASIdOrRange*, %struct.stack_st_ASIdOrRange** %asIdsOrRanges, align 8, !tbaa !11
  %call11 = tail call fastcc %struct.stack_st* @ossl_check_const_ASIdOrRange_sk_type(%struct.stack_st_ASIdOrRange* noundef %15) #8
  %call12 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call11) #7
  %sub = add nsw i32 %call12, -1
  %cmp13 = icmp slt i32 %add, %sub
  br i1 %cmp13, label %for.body, label %for.end

for.end:                                          ; preds = %cleanup, %for.cond.preheader
  %bn.0.lcssa = phi %struct.bignum_st* [ null, %for.cond.preheader ], [ %bn.1, %cleanup ]
  %a_max_plus_one.0.lcssa = phi %struct.asn1_string_st* [ null, %for.cond.preheader ], [ %call49, %cleanup ]
  %16 = load %struct.stack_st_ASIdOrRange*, %struct.stack_st_ASIdOrRange** %asIdsOrRanges, align 8, !tbaa !11
  %call64 = tail call fastcc %struct.stack_st* @ossl_check_const_ASIdOrRange_sk_type(%struct.stack_st_ASIdOrRange* noundef %16) #8
  %call65 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call64) #7
  %sub66 = add nsw i32 %call65, -1
  %17 = load %struct.stack_st_ASIdOrRange*, %struct.stack_st_ASIdOrRange** %asIdsOrRanges, align 8, !tbaa !11
  %call70 = tail call fastcc %struct.stack_st* @ossl_check_const_ASIdOrRange_sk_type(%struct.stack_st_ASIdOrRange* noundef %17) #8
  %call71 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call70, i32 noundef %sub66) #7
  %18 = bitcast i8* %call71 to %struct.ASIdOrRange_st*
  %19 = bitcast %struct.asn1_string_st** %a_min72 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #9
  %20 = bitcast %struct.asn1_string_st** %a_max73 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20) #9
  %cmp74.not = icmp eq i8* %call71, null
  br i1 %cmp74.not, label %cleanup.cont91, label %land.lhs.true75

land.lhs.true75:                                  ; preds = %for.end
  %type76 = bitcast i8* %call71 to i32*
  %21 = load i32, i32* %type76, align 8, !tbaa !12
  %cmp77 = icmp eq i32 %21, 1
  br i1 %cmp77, label %if.then78, label %cleanup.cont91

if.then78:                                        ; preds = %land.lhs.true75
  %call79 = call fastcc i32 @extract_min_max(%struct.ASIdOrRange_st* noundef nonnull %18, %struct.asn1_string_st** noundef nonnull %a_min72, %struct.asn1_string_st** noundef nonnull %a_max73) #8
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %cleanup87.thread, label %lor.lhs.false81

lor.lhs.false81:                                  ; preds = %if.then78
  %22 = load %struct.asn1_string_st*, %struct.asn1_string_st** %a_min72, align 8, !tbaa !4
  %23 = load %struct.asn1_string_st*, %struct.asn1_string_st** %a_max73, align 8, !tbaa !4
  %call82 = tail call i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef %22, %struct.asn1_string_st* noundef %23) #7
  %cmp83 = icmp sgt i32 %call82, 0
  br i1 %cmp83, label %cleanup87.thread, label %cleanup.cont91

cleanup87.thread:                                 ; preds = %lor.lhs.false81, %if.then78
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #9
  br label %done

cleanup.cont91:                                   ; preds = %lor.lhs.false81, %land.lhs.true75, %for.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #9
  br label %done

done:                                             ; preds = %cleanup87.thread, %cleanup.thread, %cleanup.cont91
  %ret.0 = phi i32 [ 1, %cleanup.cont91 ], [ 0, %cleanup.thread ], [ 0, %cleanup87.thread ]
  %bn.4 = phi %struct.bignum_st* [ %bn.0.lcssa, %cleanup.cont91 ], [ %bn.3.ph, %cleanup.thread ], [ %bn.0.lcssa, %cleanup87.thread ]
  %a_max_plus_one.2 = phi %struct.asn1_string_st* [ %a_max_plus_one.0.lcssa, %cleanup.cont91 ], [ %a_max_plus_one.1.ph, %cleanup.thread ], [ %a_max_plus_one.0.lcssa, %cleanup87.thread ]
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %a_max_plus_one.2) #7
  tail call void @BN_free(%struct.bignum_st* noundef %bn.4) #7
  br label %cleanup92

cleanup92:                                        ; preds = %lor.lhs.false, %entry, %done, %if.then7
  %retval.0 = phi i32 [ 0, %if.then7 ], [ %ret.0, %done ], [ 1, %lor.lhs.false ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509v3_asid_canonize(%struct.ASIdentifiers_st* noundef readonly %asid) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ASIdentifiers_st* %asid, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %asnum = getelementptr inbounds %struct.ASIdentifiers_st, %struct.ASIdentifiers_st* %asid, i64 0, i32 0
  %0 = load %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st** %asnum, align 8, !tbaa !17
  %call = tail call fastcc i32 @ASIdentifierChoice_canonize(%struct.ASIdentifierChoice_st* noundef %0) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.end, label %land.rhs

land.rhs:                                         ; preds = %lor.rhs
  %rdi = getelementptr inbounds %struct.ASIdentifiers_st, %struct.ASIdentifiers_st* %asid, i64 0, i32 1
  %1 = load %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st** %rdi, align 8, !tbaa !19
  %call1 = tail call fastcc i32 @ASIdentifierChoice_canonize(%struct.ASIdentifierChoice_st* noundef %1) #8
  %tobool2 = icmp ne i32 %call1, 0
  %phi.cast = zext i1 %tobool2 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs, %entry
  %2 = phi i32 [ 1, %entry ], [ 0, %lor.rhs ], [ %phi.cast, %land.rhs ]
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ASIdentifierChoice_canonize(%struct.ASIdentifierChoice_st* noundef %choice) unnamed_addr #1 {
entry:
  %a_min = alloca %struct.asn1_string_st*, align 8
  %a_max = alloca %struct.asn1_string_st*, align 8
  %b_min = alloca %struct.asn1_string_st*, align 8
  %b_max = alloca %struct.asn1_string_st*, align 8
  %a_min119 = alloca %struct.asn1_string_st*, align 8
  %a_max120 = alloca %struct.asn1_string_st*, align 8
  %cmp = icmp eq %struct.ASIdentifierChoice_st* %choice, null
  br i1 %cmp, label %cleanup147, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.ASIdentifierChoice_st, %struct.ASIdentifierChoice_st* %choice, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !8
  switch i32 %0, label %if.then7 [
    i32 0, label %cleanup147
    i32 1, label %lor.lhs.false4
  ]

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %u = getelementptr inbounds %struct.ASIdentifierChoice_st, %struct.ASIdentifierChoice_st* %choice, i64 0, i32 1
  %asIdsOrRanges = bitcast %union.anon.0* %u to %struct.stack_st_ASIdOrRange**
  %1 = load %struct.stack_st_ASIdOrRange*, %struct.stack_st_ASIdOrRange** %asIdsOrRanges, align 8, !tbaa !11
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_ASIdOrRange_sk_type(%struct.stack_st_ASIdOrRange* noundef %1) #8
  %call5 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #7
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false, %lor.lhs.false4
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 375, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.ASIdentifierChoice_canonize, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 116, i8* noundef null) #7
  br label %cleanup147

if.end8:                                          ; preds = %lor.lhs.false4
  %2 = load %struct.stack_st_ASIdOrRange*, %struct.stack_st_ASIdOrRange** %asIdsOrRanges, align 8, !tbaa !11
  %call11 = tail call fastcc %struct.stack_st* @ossl_check_ASIdOrRange_sk_type(%struct.stack_st_ASIdOrRange* noundef %2) #8
  tail call void @OPENSSL_sk_sort(%struct.stack_st* noundef %call11) #7
  %3 = load %struct.stack_st_ASIdOrRange*, %struct.stack_st_ASIdOrRange** %asIdsOrRanges, align 8, !tbaa !11
  %call14238 = tail call fastcc %struct.stack_st* @ossl_check_const_ASIdOrRange_sk_type(%struct.stack_st_ASIdOrRange* noundef %3) #8
  %call15239 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call14238) #7
  %cmp16241 = icmp sgt i32 %call15239, 1
  br i1 %cmp16241, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %4 = bitcast %struct.asn1_string_st** %a_min to i8*
  %5 = bitcast %struct.asn1_string_st** %a_max to i8*
  %6 = bitcast %struct.asn1_string_st** %b_min to i8*
  %7 = bitcast %struct.asn1_string_st** %b_max to i8*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %a_max_plus_one.0244 = phi %struct.asn1_string_st* [ null, %for.body.lr.ph ], [ %call65, %for.inc ]
  %bn.0243 = phi %struct.bignum_st* [ null, %for.body.lr.ph ], [ %bn.1, %for.inc ]
  %i.0242 = phi i32 [ 0, %for.body.lr.ph ], [ %inc.pre-phi, %for.inc ]
  %8 = load %struct.stack_st_ASIdOrRange*, %struct.stack_st_ASIdOrRange** %asIdsOrRanges, align 8, !tbaa !11
  %call19 = tail call fastcc %struct.stack_st* @ossl_check_const_ASIdOrRange_sk_type(%struct.stack_st_ASIdOrRange* noundef %8) #8
  %call20 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call19, i32 noundef %i.0242) #7
  %9 = bitcast i8* %call20 to %struct.ASIdOrRange_st*
  %10 = load %struct.stack_st_ASIdOrRange*, %struct.stack_st_ASIdOrRange** %asIdsOrRanges, align 8, !tbaa !11
  %call23 = tail call fastcc %struct.stack_st* @ossl_check_const_ASIdOrRange_sk_type(%struct.stack_st_ASIdOrRange* noundef %10) #8
  %add = add nsw i32 %i.0242, 1
  %call24 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call23, i32 noundef %add) #7
  %11 = bitcast i8* %call24 to %struct.ASIdOrRange_st*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %a_min, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %a_max, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %b_min, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #9
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %b_max, align 8, !tbaa !4
  %call25 = call fastcc i32 @extract_min_max(%struct.ASIdOrRange_st* noundef %9, %struct.asn1_string_st** noundef nonnull %a_min, %struct.asn1_string_st** noundef nonnull %a_max) #8
  %tobool.not = icmp eq i32 %call25, 0
  br i1 %tobool.not, label %cleanup103.thread, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %for.body
  %call27 = call fastcc i32 @extract_min_max(%struct.ASIdOrRange_st* noundef %11, %struct.asn1_string_st** noundef nonnull %b_min, %struct.asn1_string_st** noundef nonnull %b_max) #8
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %cleanup103.thread, label %if.end30

if.end30:                                         ; preds = %lor.lhs.false26
  %12 = load %struct.asn1_string_st*, %struct.asn1_string_st** %a_min, align 8, !tbaa !4
  %13 = load %struct.asn1_string_st*, %struct.asn1_string_st** %b_min, align 8, !tbaa !4
  %call31 = tail call i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef %12, %struct.asn1_string_st* noundef %13) #7
  %cmp32 = icmp slt i32 %call31, 1
  br i1 %cmp32, label %if.end36, label %cleanup103.thread

if.end36:                                         ; preds = %if.end30
  %14 = load %struct.asn1_string_st*, %struct.asn1_string_st** %a_max, align 8, !tbaa !4
  %call37 = tail call i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef %12, %struct.asn1_string_st* noundef %14) #7
  %cmp38 = icmp sgt i32 %call37, 0
  br i1 %cmp38, label %cleanup103.thread, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %if.end36
  %15 = load %struct.asn1_string_st*, %struct.asn1_string_st** %b_max, align 8, !tbaa !4
  %call41 = tail call i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef %13, %struct.asn1_string_st* noundef %15) #7
  %cmp42 = icmp sgt i32 %call41, 0
  br i1 %cmp42, label %cleanup103.thread, label %if.end45

if.end45:                                         ; preds = %lor.lhs.false40
  %call46 = tail call i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef %14, %struct.asn1_string_st* noundef %13) #7
  %cmp47 = icmp sgt i32 %call46, -1
  br i1 %cmp47, label %cleanup103.thread.sink.split, label %if.end50

if.end50:                                         ; preds = %if.end45
  %cmp51 = icmp eq %struct.bignum_st* %bn.0243, null
  br i1 %cmp51, label %land.lhs.true, label %lor.lhs.false56

land.lhs.true:                                    ; preds = %if.end50
  %call53 = tail call %struct.bignum_st* @BN_new() #7
  %cmp54 = icmp eq %struct.bignum_st* %call53, null
  br i1 %cmp54, label %cleanup103.thread.sink.split, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %land.lhs.true, %if.end50
  %bn.1 = phi %struct.bignum_st* [ %call53, %land.lhs.true ], [ %bn.0243, %if.end50 ]
  %call57 = tail call %struct.bignum_st* @ASN1_INTEGER_to_BN(%struct.asn1_string_st* noundef %14, %struct.bignum_st* noundef nonnull %bn.1) #7
  %cmp58 = icmp eq %struct.bignum_st* %call57, null
  br i1 %cmp58, label %cleanup103.thread.sink.split, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false56
  %call61 = tail call i32 @BN_add_word(%struct.bignum_st* noundef nonnull %bn.1, i64 noundef 1) #7
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %cleanup103.thread.sink.split, label %if.end64

if.end64:                                         ; preds = %lor.lhs.false60
  %call65 = tail call %struct.asn1_string_st* @BN_to_ASN1_INTEGER(%struct.bignum_st* noundef nonnull %bn.1, %struct.asn1_string_st* noundef %a_max_plus_one.0244) #7
  %cmp66 = icmp eq %struct.asn1_string_st* %call65, null
  br i1 %cmp66, label %cleanup103.thread.sink.split, label %if.end69

if.end69:                                         ; preds = %if.end64
  %call70 = tail call i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef nonnull %call65, %struct.asn1_string_st* noundef %13) #7
  %cmp71 = icmp eq i32 %call70, 0
  br i1 %cmp71, label %if.then73, label %for.inc

if.then73:                                        ; preds = %if.end69
  %type74 = bitcast i8* %call20 to i32*
  %16 = load i32, i32* %type74, align 8, !tbaa !12
  switch i32 %16, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb82
  ]

sw.bb:                                            ; preds = %if.then73
  %call75 = tail call i8* @CRYPTO_malloc(i64 noundef 16, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 443) #7
  %cmp76 = icmp eq i8* %call75, null
  br i1 %cmp76, label %cleanup103.thread.sink.split, label %if.end79

if.end79:                                         ; preds = %sw.bb
  %min = bitcast i8* %call75 to %struct.asn1_string_st**
  store %struct.asn1_string_st* %12, %struct.asn1_string_st** %min, align 8, !tbaa !14
  %max = getelementptr inbounds i8, i8* %call75, i64 8
  %17 = bitcast i8* %max to %struct.asn1_string_st**
  store %struct.asn1_string_st* %15, %struct.asn1_string_st** %17, align 8, !tbaa !16
  store i32 1, i32* %type74, align 8, !tbaa !12
  %u81 = getelementptr inbounds i8, i8* %call20, i64 8
  %18 = bitcast i8* %u81 to i8**
  store i8* %call75, i8** %18, align 8, !tbaa !11
  br label %sw.epilog

sw.bb82:                                          ; preds = %if.then73
  %u83 = getelementptr inbounds i8, i8* %call20, i64 8
  %range84 = bitcast i8* %u83 to %struct.ASRange_st**
  %19 = load %struct.ASRange_st*, %struct.ASRange_st** %range84, align 8, !tbaa !11
  %max85 = getelementptr inbounds %struct.ASRange_st, %struct.ASRange_st* %19, i64 0, i32 1
  %20 = load %struct.asn1_string_st*, %struct.asn1_string_st** %max85, align 8, !tbaa !16
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %20) #7
  %21 = load %struct.ASRange_st*, %struct.ASRange_st** %range84, align 8, !tbaa !11
  %max88 = getelementptr inbounds %struct.ASRange_st, %struct.ASRange_st* %21, i64 0, i32 1
  store %struct.asn1_string_st* %15, %struct.asn1_string_st** %max88, align 8, !tbaa !16
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then73, %sw.bb82, %if.end79
  %type89 = bitcast i8* %call24 to i32*
  %22 = load i32, i32* %type89, align 8, !tbaa !12
  switch i32 %22, label %sw.epilog96 [
    i32 0, label %sw.bb90
    i32 1, label %sw.bb92
  ]

sw.bb90:                                          ; preds = %sw.epilog
  %u91 = getelementptr inbounds i8, i8* %call24, i64 8
  %id = bitcast i8* %u91 to %struct.asn1_string_st**
  br label %sw.epilog96.sink.split

sw.bb92:                                          ; preds = %sw.epilog
  %u93 = getelementptr inbounds i8, i8* %call24, i64 8
  %range94 = bitcast i8* %u93 to %struct.ASRange_st**
  %23 = load %struct.ASRange_st*, %struct.ASRange_st** %range94, align 8, !tbaa !11
  %max95 = getelementptr inbounds %struct.ASRange_st, %struct.ASRange_st* %23, i64 0, i32 1
  br label %sw.epilog96.sink.split

sw.epilog96.sink.split:                           ; preds = %sw.bb90, %sw.bb92
  %max95.sink = phi %struct.asn1_string_st** [ %max95, %sw.bb92 ], [ %id, %sw.bb90 ]
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %max95.sink, align 8, !tbaa !11
  br label %sw.epilog96

sw.epilog96:                                      ; preds = %sw.epilog96.sink.split, %sw.epilog
  tail call void @ASIdOrRange_free(%struct.ASIdOrRange_st* noundef nonnull %11) #8
  %24 = load %struct.stack_st_ASIdOrRange*, %struct.stack_st_ASIdOrRange** %asIdsOrRanges, align 8, !tbaa !11
  %call99 = tail call fastcc %struct.stack_st* @ossl_check_ASIdOrRange_sk_type(%struct.stack_st_ASIdOrRange* noundef %24) #8
  %call101 = tail call i8* @OPENSSL_sk_delete(%struct.stack_st* noundef %call99, i32 noundef %add) #7
  br label %for.inc

cleanup103.thread.sink.split:                     ; preds = %sw.bb, %if.end64, %land.lhs.true, %lor.lhs.false56, %lor.lhs.false60, %if.end45
  %.sink274 = phi i32 [ 415, %if.end45 ], [ 425, %lor.lhs.false60 ], [ 425, %lor.lhs.false56 ], [ 425, %land.lhs.true ], [ 432, %if.end64 ], [ 444, %sw.bb ]
  %.sink = phi i32 [ 116, %if.end45 ], [ 786688, %lor.lhs.false60 ], [ 786688, %lor.lhs.false56 ], [ 786688, %land.lhs.true ], [ 786688, %if.end64 ], [ 786688, %sw.bb ]
  %bn.3.ph.ph = phi %struct.bignum_st* [ %bn.0243, %if.end45 ], [ %bn.1, %lor.lhs.false60 ], [ %bn.1, %lor.lhs.false56 ], [ null, %land.lhs.true ], [ %bn.1, %if.end64 ], [ %bn.1, %sw.bb ]
  %a_max_plus_one.1.ph.ph = phi %struct.asn1_string_st* [ %a_max_plus_one.0244, %if.end45 ], [ %a_max_plus_one.0244, %lor.lhs.false60 ], [ %a_max_plus_one.0244, %lor.lhs.false56 ], [ %a_max_plus_one.0244, %land.lhs.true ], [ %a_max_plus_one.0244, %if.end64 ], [ %call65, %sw.bb ]
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef %.sink274, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.ASIdentifierChoice_canonize, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef %.sink, i8* noundef null) #7
  br label %cleanup103.thread

cleanup103.thread:                                ; preds = %lor.lhs.false26, %for.body, %if.end30, %lor.lhs.false40, %if.end36, %cleanup103.thread.sink.split
  %bn.3.ph = phi %struct.bignum_st* [ %bn.3.ph.ph, %cleanup103.thread.sink.split ], [ %bn.0243, %if.end36 ], [ %bn.0243, %lor.lhs.false40 ], [ %bn.0243, %if.end30 ], [ %bn.0243, %for.body ], [ %bn.0243, %lor.lhs.false26 ]
  %a_max_plus_one.1.ph = phi %struct.asn1_string_st* [ %a_max_plus_one.1.ph.ph, %cleanup103.thread.sink.split ], [ %a_max_plus_one.0244, %if.end36 ], [ %a_max_plus_one.0244, %lor.lhs.false40 ], [ %a_max_plus_one.0244, %if.end30 ], [ %a_max_plus_one.0244, %for.body ], [ %a_max_plus_one.0244, %lor.lhs.false26 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  br label %done

for.inc:                                          ; preds = %sw.epilog96, %if.end69
  %inc.pre-phi = phi i32 [ %i.0242, %sw.epilog96 ], [ %add, %if.end69 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  %25 = load %struct.stack_st_ASIdOrRange*, %struct.stack_st_ASIdOrRange** %asIdsOrRanges, align 8, !tbaa !11
  %call14 = tail call fastcc %struct.stack_st* @ossl_check_const_ASIdOrRange_sk_type(%struct.stack_st_ASIdOrRange* noundef %25) #8
  %call15 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call14) #7
  %sub = add nsw i32 %call15, -1
  %cmp16 = icmp slt i32 %inc.pre-phi, %sub
  br i1 %cmp16, label %for.body, label %for.end, !llvm.loop !20

for.end:                                          ; preds = %for.inc, %if.end8
  %bn.0.lcssa = phi %struct.bignum_st* [ null, %if.end8 ], [ %bn.1, %for.inc ]
  %a_max_plus_one.0.lcssa = phi %struct.asn1_string_st* [ null, %if.end8 ], [ %call65, %for.inc ]
  %26 = load %struct.stack_st_ASIdOrRange*, %struct.stack_st_ASIdOrRange** %asIdsOrRanges, align 8, !tbaa !11
  %call111 = tail call fastcc %struct.stack_st* @ossl_check_const_ASIdOrRange_sk_type(%struct.stack_st_ASIdOrRange* noundef %26) #8
  %call112 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call111) #7
  %sub113 = add nsw i32 %call112, -1
  %27 = load %struct.stack_st_ASIdOrRange*, %struct.stack_st_ASIdOrRange** %asIdsOrRanges, align 8, !tbaa !11
  %call117 = tail call fastcc %struct.stack_st* @ossl_check_const_ASIdOrRange_sk_type(%struct.stack_st_ASIdOrRange* noundef %27) #8
  %call118 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call117, i32 noundef %sub113) #7
  %28 = bitcast i8* %call118 to %struct.ASIdOrRange_st*
  %29 = bitcast %struct.asn1_string_st** %a_min119 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #9
  %30 = bitcast %struct.asn1_string_st** %a_max120 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %30) #9
  %cmp121.not = icmp eq i8* %call118, null
  br i1 %cmp121.not, label %cleanup.cont141, label %land.lhs.true123

land.lhs.true123:                                 ; preds = %for.end
  %type124 = bitcast i8* %call118 to i32*
  %31 = load i32, i32* %type124, align 8, !tbaa !12
  %cmp125 = icmp eq i32 %31, 1
  br i1 %cmp125, label %if.then127, label %cleanup.cont141

if.then127:                                       ; preds = %land.lhs.true123
  %call128 = call fastcc i32 @extract_min_max(%struct.ASIdOrRange_st* noundef nonnull %28, %struct.asn1_string_st** noundef nonnull %a_min119, %struct.asn1_string_st** noundef nonnull %a_max120) #8
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %cleanup137.thread, label %lor.lhs.false130

lor.lhs.false130:                                 ; preds = %if.then127
  %32 = load %struct.asn1_string_st*, %struct.asn1_string_st** %a_min119, align 8, !tbaa !4
  %33 = load %struct.asn1_string_st*, %struct.asn1_string_st** %a_max120, align 8, !tbaa !4
  %call131 = tail call i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef %32, %struct.asn1_string_st* noundef %33) #7
  %cmp132 = icmp sgt i32 %call131, 0
  br i1 %cmp132, label %cleanup137.thread, label %cleanup.cont141

cleanup137.thread:                                ; preds = %lor.lhs.false130, %if.then127
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #9
  br label %done

cleanup.cont141:                                  ; preds = %lor.lhs.false130, %land.lhs.true123, %for.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #9
  %call142 = tail call fastcc i32 @ASIdentifierChoice_is_canonical(%struct.ASIdentifierChoice_st* noundef nonnull %choice) #8
  %cmp143.not = icmp ne i32 %call142, 0
  %spec.select = zext i1 %cmp143.not to i32
  br label %done

done:                                             ; preds = %cleanup137.thread, %cleanup103.thread, %cleanup.cont141
  %ret.0 = phi i32 [ %spec.select, %cleanup.cont141 ], [ 0, %cleanup103.thread ], [ 0, %cleanup137.thread ]
  %bn.4 = phi %struct.bignum_st* [ %bn.0.lcssa, %cleanup.cont141 ], [ %bn.3.ph, %cleanup103.thread ], [ %bn.0.lcssa, %cleanup137.thread ]
  %a_max_plus_one.2 = phi %struct.asn1_string_st* [ %a_max_plus_one.0.lcssa, %cleanup.cont141 ], [ %a_max_plus_one.1.ph, %cleanup103.thread ], [ %a_max_plus_one.0.lcssa, %cleanup137.thread ]
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %a_max_plus_one.2) #7
  tail call void @BN_free(%struct.bignum_st* noundef %bn.4) #7
  br label %cleanup147

cleanup147:                                       ; preds = %lor.lhs.false, %entry, %done, %if.then7
  %retval.0 = phi i32 [ 0, %if.then7 ], [ %ret.0, %done ], [ 1, %lor.lhs.false ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @v2i_ASIdentifiers(%struct.v3_ext_method* nocapture noundef readnone %method, %struct.v3_ext_ctx* nocapture noundef readnone %ctx, %struct.stack_st_CONF_VALUE* noundef %values) #1 {
entry:
  %min = alloca %struct.asn1_string_st*, align 8
  %0 = bitcast %struct.asn1_string_st** %min to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %min, align 8, !tbaa !4
  %call = tail call %struct.ASIdentifiers_st* @ASIdentifiers_new() #8
  %cmp = icmp eq %struct.ASIdentifiers_st* %call, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call1 = call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %values) #8
  %call2221 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #7
  %cmp3222 = icmp sgt i32 %call2221, 0
  br i1 %cmp3222, label %for.body, label %for.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 520, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.v2i_ASIdentifiers, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup122

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.0223 = phi i32 [ %inc117, %for.inc ], [ 0, %for.cond.preheader ]
  %call5 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call1, i32 noundef %i.0223) #7
  %1 = bitcast i8* %call5 to %struct.CONF_VALUE*
  %name = getelementptr inbounds i8, i8* %call5, i64 8
  %2 = bitcast i8* %name to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !22
  %call6 = call i32 @ossl_v3_name_cmp(i8* noundef %3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0)) #7
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end15, label %if.else

if.else:                                          ; preds = %for.body
  %4 = load i8*, i8** %2, align 8, !tbaa !22
  %call9 = call i32 @ossl_v3_name_cmp(i8* noundef %4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0)) #7
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end15, label %if.else12

if.else12:                                        ; preds = %if.else
  %5 = bitcast i8* %name to i8**
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 536, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.v2i_ASIdentifiers, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 115, i8* noundef null) #7
  %6 = load i8*, i8** %5, align 8, !tbaa !22
  %value = getelementptr inbounds i8, i8* %call5, i64 16
  %7 = bitcast i8* %value to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !24
  call void (i32, ...) @ERR_add_error_data(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* noundef %6, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8* noundef %8) #7
  br label %err

if.end15:                                         ; preds = %if.else, %for.body
  %which.0 = phi i32 [ 0, %for.body ], [ 1, %if.else ]
  %value16 = getelementptr inbounds i8, i8* %call5, i64 16
  %9 = bitcast i8* %value16 to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !24
  %call17 = call i32 @strcmp(i8* noundef %10, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0)) #10
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end26

if.then19:                                        ; preds = %if.end15
  %call20 = call i32 @X509v3_asid_add_inherit(%struct.ASIdentifiers_st* noundef nonnull %call, i32 noundef %which.0) #8
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %for.inc

if.end23:                                         ; preds = %if.then19
  %11 = bitcast i8* %name to i8**
  %12 = bitcast i8* %value16 to i8**
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 547, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.v2i_ASIdentifiers, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 165, i8* noundef null) #7
  %13 = load i8*, i8** %11, align 8, !tbaa !22
  %14 = load i8*, i8** %12, align 8, !tbaa !24
  call void (i32, ...) @ERR_add_error_data(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* noundef %13, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8* noundef %14) #7
  br label %err

if.end26:                                         ; preds = %if.end15
  %call28 = call i64 @strspn(i8* noundef %10, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0)) #10
  %sext = shl i64 %call28, 32
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom
  %15 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %cmp31 = icmp eq i8 %15, 0
  br i1 %cmp31, label %if.then75, label %if.else34

if.else34:                                        ; preds = %if.end26
  %call37 = call i64 @strspn(i8* noundef nonnull %arrayidx, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0)) #10
  %add = add i64 %call37, %call28
  %sext180 = shl i64 %add, 32
  %idxprom40 = ashr exact i64 %sext180, 32
  %arrayidx41 = getelementptr inbounds i8, i8* %10, i64 %idxprom40
  %16 = load i8, i8* %arrayidx41, align 1, !tbaa !11
  %cmp43.not = icmp eq i8 %16, 45
  br i1 %cmp43.not, label %if.end48, label %if.then45

if.then45:                                        ; preds = %if.else34
  %17 = bitcast i8* %name to i8**
  %18 = bitcast i8* %value16 to i8**
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 562, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.v2i_ASIdentifiers, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 162, i8* noundef null) #7
  %19 = load i8*, i8** %17, align 8, !tbaa !22
  %20 = load i8*, i8** %18, align 8, !tbaa !24
  call void (i32, ...) @ERR_add_error_data(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* noundef %19, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8* noundef %20) #7
  br label %err

if.end48:                                         ; preds = %if.else34
  %sext181 = add i64 %sext180, 4294967296
  %conv49 = ashr exact i64 %sext181, 32
  %add.ptr52 = getelementptr inbounds i8, i8* %10, i64 %conv49
  %call53 = call i64 @strspn(i8* noundef %add.ptr52, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0)) #10
  %add54 = add i64 %call53, %conv49
  %sext182 = shl i64 %add54, 32
  %conv56 = ashr exact i64 %sext182, 32
  %add.ptr59 = getelementptr inbounds i8, i8* %10, i64 %conv56
  %call60 = call i64 @strspn(i8* noundef %add.ptr59, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0)) #10
  %add61 = add i64 %add54, %call60
  %sext183 = shl i64 %add61, 32
  %idxprom64 = ashr exact i64 %sext183, 32
  %arrayidx65 = getelementptr inbounds i8, i8* %10, i64 %idxprom64
  %21 = load i8, i8* %arrayidx65, align 1, !tbaa !11
  %cmp67.not = icmp eq i8 %21, 0
  br i1 %cmp67.not, label %if.else80, label %if.then69

if.then69:                                        ; preds = %if.end48
  %22 = bitcast i8* %name to i8**
  %23 = bitcast i8* %value16 to i8**
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 570, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.v2i_ASIdentifiers, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 163, i8* noundef null) #7
  %24 = load i8*, i8** %22, align 8, !tbaa !22
  %25 = load i8*, i8** %23, align 8, !tbaa !24
  call void (i32, ...) @ERR_add_error_data(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* noundef %24, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8* noundef %25) #7
  br label %err

if.then75:                                        ; preds = %if.end26
  %call76 = call i32 @X509V3_get_value_int(%struct.CONF_VALUE* noundef nonnull %1, %struct.asn1_string_st** noundef nonnull %min) #7
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then78, label %if.end104

if.then78:                                        ; preds = %if.then75
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 581, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.v2i_ASIdentifiers, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #7
  br label %err

if.else80:                                        ; preds = %if.end48
  %call82 = call i8* @CRYPTO_strdup(i8* noundef nonnull %10, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 585) #7
  %cmp83 = icmp eq i8* %call82, null
  br i1 %cmp83, label %if.then85, label %if.end86

if.then85:                                        ; preds = %if.else80
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 587, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.v2i_ASIdentifiers, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #7
  br label %err

if.end86:                                         ; preds = %if.else80
  %arrayidx88 = getelementptr inbounds i8, i8* %call82, i64 %idxprom
  store i8 0, i8* %arrayidx88, align 1, !tbaa !11
  %call89 = call %struct.asn1_string_st* @s2i_ASN1_INTEGER(%struct.v3_ext_method* noundef null, i8* noundef nonnull %call82) #7
  store %struct.asn1_string_st* %call89, %struct.asn1_string_st** %min, align 8, !tbaa !4
  %add.ptr91 = getelementptr inbounds i8, i8* %call82, i64 %conv56
  %call92 = call %struct.asn1_string_st* @s2i_ASN1_INTEGER(%struct.v3_ext_method* noundef null, i8* noundef nonnull %add.ptr91) #7
  call void @CRYPTO_free(i8* noundef nonnull %call82, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 593) #7
  %26 = load %struct.asn1_string_st*, %struct.asn1_string_st** %min, align 8, !tbaa !4
  %cmp93 = icmp eq %struct.asn1_string_st* %26, null
  %cmp95 = icmp eq %struct.asn1_string_st* %call92, null
  %or.cond = select i1 %cmp93, i1 true, i1 %cmp95
  br i1 %or.cond, label %if.then97, label %if.end98

if.then97:                                        ; preds = %if.end86
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 595, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.v2i_ASIdentifiers, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #7
  br label %err

if.end98:                                         ; preds = %if.end86
  %call99 = call i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef nonnull %26, %struct.asn1_string_st* noundef nonnull %call92) #7
  %cmp100 = icmp sgt i32 %call99, 0
  br i1 %cmp100, label %if.then102, label %if.end104

if.then102:                                       ; preds = %if.end98
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 599, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.v2i_ASIdentifiers, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 116, i8* noundef null) #7
  br label %err

if.end104:                                        ; preds = %if.end98, %if.then75
  %max.2 = phi %struct.asn1_string_st* [ null, %if.then75 ], [ %call92, %if.end98 ]
  %27 = load %struct.asn1_string_st*, %struct.asn1_string_st** %min, align 8, !tbaa !4
  %call105 = call i32 @X509v3_asid_add_id_or_range(%struct.ASIdentifiers_st* noundef nonnull %call, i32 noundef %which.0, %struct.asn1_string_st* noundef %27, %struct.asn1_string_st* noundef %max.2) #8
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.then107, label %if.end108

if.then107:                                       ; preds = %if.end104
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 604, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.v2i_ASIdentifiers, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #7
  br label %err

if.end108:                                        ; preds = %if.end104
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %min, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %if.end108, %if.then19
  %inc117 = add nuw nsw i32 %i.0223, 1
  %call2 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #7
  %cmp3 = icmp slt i32 %inc117, %call2
  br i1 %cmp3, label %for.body, label %for.end, !llvm.loop !25

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %call118 = call i32 @X509v3_asid_canonize(%struct.ASIdentifiers_st* noundef nonnull %call) #8
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %err, label %if.end121

if.end121:                                        ; preds = %for.end
  %28 = bitcast %struct.ASIdentifiers_st* %call to i8*
  br label %cleanup122

err:                                              ; preds = %if.then85, %if.then97, %if.then102, %if.then69, %if.then45, %if.then78, %if.then107, %if.end23, %if.else12, %for.end
  %max.4 = phi %struct.asn1_string_st* [ null, %for.end ], [ null, %if.then69 ], [ null, %if.then45 ], [ null, %if.then78 ], [ %max.2, %if.then107 ], [ null, %if.end23 ], [ null, %if.else12 ], [ null, %if.then85 ], [ %call92, %if.then97 ], [ %call92, %if.then102 ]
  call void @ASIdentifiers_free(%struct.ASIdentifiers_st* noundef nonnull %call) #8
  %29 = load %struct.asn1_string_st*, %struct.asn1_string_st** %min, align 8, !tbaa !4
  call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %29) #7
  call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %max.4) #7
  br label %cleanup122

cleanup122:                                       ; preds = %err, %if.end121, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ null, %err ], [ %28, %if.end121 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @i2r_ASIdentifiers(%struct.v3_ext_method* nocapture noundef readnone %method, i8* nocapture noundef readonly %ext, %struct.bio_st* noundef %out, i32 noundef %indent) #1 {
entry:
  %asnum = bitcast i8* %ext to %struct.ASIdentifierChoice_st**
  %0 = load %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st** %asnum, align 8, !tbaa !17
  %call = tail call fastcc i32 @i2r_ASIdentifierChoice(%struct.bio_st* noundef %out, %struct.ASIdentifierChoice_st* noundef %0, i32 noundef %indent, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0)) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %rdi = getelementptr inbounds i8, i8* %ext, i64 8
  %1 = bitcast i8* %rdi to %struct.ASIdentifierChoice_st**
  %2 = load %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st** %1, align 8, !tbaa !19
  %call1 = tail call fastcc i32 @i2r_ASIdentifierChoice(%struct.bio_st* noundef %out, %struct.ASIdentifierChoice_st* noundef %2, i32 noundef %indent, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i64 0, i64 0)) #8
  %tobool2 = icmp ne i32 %call1, 0
  %phi.cast = zext i1 %tobool2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @X509v3_asid_inherits(%struct.ASIdentifiers_st* noundef readonly %asid) local_unnamed_addr #4 {
entry:
  %cmp.not = icmp eq %struct.ASIdentifiers_st* %asid, null
  br i1 %cmp.not, label %land.end9, label %land.rhs

land.rhs:                                         ; preds = %entry
  %asnum = getelementptr inbounds %struct.ASIdentifiers_st, %struct.ASIdentifiers_st* %asid, i64 0, i32 0
  %0 = load %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st** %asnum, align 8, !tbaa !17
  %cmp1.not = icmp eq %struct.ASIdentifierChoice_st* %0, null
  br i1 %cmp1.not, label %lor.rhs, label %land.lhs.true

land.lhs.true:                                    ; preds = %land.rhs
  %type = getelementptr inbounds %struct.ASIdentifierChoice_st, %struct.ASIdentifierChoice_st* %0, i64 0, i32 0
  %1 = load i32, i32* %type, align 8, !tbaa !8
  %cmp3 = icmp eq i32 %1, 0
  br i1 %cmp3, label %land.end9, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %land.rhs
  %rdi = getelementptr inbounds %struct.ASIdentifiers_st, %struct.ASIdentifiers_st* %asid, i64 0, i32 1
  %2 = load %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st** %rdi, align 8, !tbaa !19
  %cmp4.not = icmp eq %struct.ASIdentifierChoice_st* %2, null
  br i1 %cmp4.not, label %land.end9, label %land.rhs5

land.rhs5:                                        ; preds = %lor.rhs
  %type7 = getelementptr inbounds %struct.ASIdentifierChoice_st, %struct.ASIdentifierChoice_st* %2, i64 0, i32 0
  %3 = load i32, i32* %type7, align 8, !tbaa !8
  %cmp8 = icmp eq i32 %3, 0
  %phi.cast = zext i1 %cmp8 to i32
  br label %land.end9

land.end9:                                        ; preds = %land.lhs.true, %land.rhs5, %lor.rhs, %entry
  %4 = phi i32 [ 0, %entry ], [ 1, %land.lhs.true ], [ 0, %lor.rhs ], [ %phi.cast, %land.rhs5 ]
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509v3_asid_subset(%struct.ASIdentifiers_st* noundef readonly %a, %struct.ASIdentifiers_st* noundef readonly %b) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ASIdentifiers_st* %a, null
  %cmp1 = icmp eq %struct.ASIdentifiers_st* %a, %b
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %cmp2.not = icmp eq %struct.ASIdentifiers_st* %b, null
  br i1 %cmp2.not, label %lor.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.rhs
  %call = tail call i32 @X509v3_asid_inherits(%struct.ASIdentifiers_st* noundef nonnull %a) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true3, label %lor.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = tail call i32 @X509v3_asid_inherits(%struct.ASIdentifiers_st* noundef nonnull %b) #8
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true6, label %lor.end

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %asnum = getelementptr inbounds %struct.ASIdentifiers_st, %struct.ASIdentifiers_st* %b, i64 0, i32 0
  %0 = load %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st** %asnum, align 8, !tbaa !17
  %u = getelementptr inbounds %struct.ASIdentifierChoice_st, %struct.ASIdentifierChoice_st* %0, i64 0, i32 1
  %asIdsOrRanges = bitcast %union.anon.0* %u to %struct.stack_st_ASIdOrRange**
  %1 = load %struct.stack_st_ASIdOrRange*, %struct.stack_st_ASIdOrRange** %asIdsOrRanges, align 8, !tbaa !11
  %asnum7 = getelementptr inbounds %struct.ASIdentifiers_st, %struct.ASIdentifiers_st* %a, i64 0, i32 0
  %2 = load %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st** %asnum7, align 8, !tbaa !17
  %u8 = getelementptr inbounds %struct.ASIdentifierChoice_st, %struct.ASIdentifierChoice_st* %2, i64 0, i32 1
  %asIdsOrRanges9 = bitcast %union.anon.0* %u8 to %struct.stack_st_ASIdOrRange**
  %3 = load %struct.stack_st_ASIdOrRange*, %struct.stack_st_ASIdOrRange** %asIdsOrRanges9, align 8, !tbaa !11
  %call10 = tail call fastcc i32 @asid_contains(%struct.stack_st_ASIdOrRange* noundef %1, %struct.stack_st_ASIdOrRange* noundef %3) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %lor.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true6
  %rdi = getelementptr inbounds %struct.ASIdentifiers_st, %struct.ASIdentifiers_st* %b, i64 0, i32 1
  %4 = load %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st** %rdi, align 8, !tbaa !19
  %u12 = getelementptr inbounds %struct.ASIdentifierChoice_st, %struct.ASIdentifierChoice_st* %4, i64 0, i32 1
  %asIdsOrRanges13 = bitcast %union.anon.0* %u12 to %struct.stack_st_ASIdOrRange**
  %5 = load %struct.stack_st_ASIdOrRange*, %struct.stack_st_ASIdOrRange** %asIdsOrRanges13, align 8, !tbaa !11
  %rdi14 = getelementptr inbounds %struct.ASIdentifiers_st, %struct.ASIdentifiers_st* %a, i64 0, i32 1
  %6 = load %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st** %rdi14, align 8, !tbaa !19
  %u15 = getelementptr inbounds %struct.ASIdentifierChoice_st, %struct.ASIdentifierChoice_st* %6, i64 0, i32 1
  %asIdsOrRanges16 = bitcast %union.anon.0* %u15 to %struct.stack_st_ASIdOrRange**
  %7 = load %struct.stack_st_ASIdOrRange*, %struct.stack_st_ASIdOrRange** %asIdsOrRanges16, align 8, !tbaa !11
  %call17 = tail call fastcc i32 @asid_contains(%struct.stack_st_ASIdOrRange* noundef %5, %struct.stack_st_ASIdOrRange* noundef %7) #8
  %tobool18 = icmp ne i32 %call17, 0
  %phi.cast = zext i1 %tobool18 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true, %land.lhs.true3, %land.lhs.true6, %land.rhs, %entry
  %8 = phi i32 [ 1, %entry ], [ 0, %land.lhs.true6 ], [ 0, %land.lhs.true3 ], [ 0, %land.lhs.true ], [ 0, %lor.rhs ], [ %phi.cast, %land.rhs ]
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asid_contains(%struct.stack_st_ASIdOrRange* noundef %parent, %struct.stack_st_ASIdOrRange* noundef %child) unnamed_addr #1 {
entry:
  %p_min = alloca %struct.asn1_string_st*, align 8
  %p_max = alloca %struct.asn1_string_st*, align 8
  %c_min = alloca %struct.asn1_string_st*, align 8
  %c_max = alloca %struct.asn1_string_st*, align 8
  %0 = bitcast %struct.asn1_string_st** %p_min to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %p_min, align 8, !tbaa !4
  %1 = bitcast %struct.asn1_string_st** %p_max to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %p_max, align 8, !tbaa !4
  %2 = bitcast %struct.asn1_string_st** %c_min to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %c_min, align 8, !tbaa !4
  %3 = bitcast %struct.asn1_string_st** %c_max to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %c_max, align 8, !tbaa !4
  %cmp = icmp eq %struct.stack_st_ASIdOrRange* %child, null
  %cmp1 = icmp eq %struct.stack_st_ASIdOrRange* %parent, %child
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq %struct.stack_st_ASIdOrRange* %parent, null
  br i1 %cmp2, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_ASIdOrRange_sk_type(%struct.stack_st_ASIdOrRange* noundef nonnull %child) #8
  %call557 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #7
  %cmp658 = icmp sgt i32 %call557, 0
  br i1 %cmp658, label %for.body, label %cleanup

for.cond:                                         ; preds = %if.end27
  %call5 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #7
  %cmp6 = icmp slt i32 %inc33, %call5
  br i1 %cmp6, label %for.body, label %cleanup, !llvm.loop !26

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %c.060 = phi i32 [ %inc33, %for.cond ], [ 0, %for.cond.preheader ]
  %p.059 = phi i32 [ %p.156, %for.cond ], [ 0, %for.cond.preheader ]
  %call8 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %c.060) #7
  %4 = bitcast i8* %call8 to %struct.ASIdOrRange_st*
  %call9 = call fastcc i32 @extract_min_max(%struct.ASIdOrRange_st* noundef %4, %struct.asn1_string_st** noundef nonnull %c_min, %struct.asn1_string_st** noundef nonnull %c_max) #8
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %cleanup, label %for.cond12.preheader

for.cond12.preheader:                             ; preds = %for.body
  %call13 = tail call fastcc %struct.stack_st* @ossl_check_const_ASIdOrRange_sk_type(%struct.stack_st_ASIdOrRange* noundef nonnull %parent) #8
  %call1454 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call13) #7
  %cmp15.not55 = icmp slt i32 %p.059, %call1454
  br i1 %cmp15.not55, label %if.end17.lr.ph, label %cleanup

if.end17.lr.ph:                                   ; preds = %for.cond12.preheader
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %c_max, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.end17.lr.ph, %for.inc
  %p.156 = phi i32 [ %p.059, %if.end17.lr.ph ], [ %inc, %for.inc ]
  %call19 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call13, i32 noundef %p.156) #7
  %6 = bitcast i8* %call19 to %struct.ASIdOrRange_st*
  %call20 = call fastcc i32 @extract_min_max(%struct.ASIdOrRange_st* noundef %6, %struct.asn1_string_st** noundef nonnull %p_min, %struct.asn1_string_st** noundef nonnull %p_max) #8
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup, label %if.end23

if.end23:                                         ; preds = %if.end17
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %p_max, align 8, !tbaa !4
  %call24 = tail call i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef %7, %struct.asn1_string_st* noundef %5) #7
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %for.inc, label %if.end27

if.end27:                                         ; preds = %if.end23
  %8 = load %struct.asn1_string_st*, %struct.asn1_string_st** %p_min, align 8, !tbaa !4
  %9 = load %struct.asn1_string_st*, %struct.asn1_string_st** %c_min, align 8, !tbaa !4
  %call28 = tail call i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef %8, %struct.asn1_string_st* noundef %9) #7
  %cmp29 = icmp sgt i32 %call28, 0
  %inc33 = add nuw nsw i32 %c.060, 1
  br i1 %cmp29, label %cleanup, label %for.cond

for.inc:                                          ; preds = %if.end23
  %inc = add nsw i32 %p.156, 1
  %call14 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call13) #7
  %cmp15.not = icmp slt i32 %inc, %call14
  br i1 %cmp15.not, label %if.end17, label %cleanup

cleanup:                                          ; preds = %for.body, %if.end27, %for.cond, %for.cond12.preheader, %for.inc, %if.end17, %for.cond.preheader, %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.end ], [ 1, %for.cond.preheader ], [ 0, %if.end17 ], [ 0, %for.inc ], [ 0, %for.cond12.preheader ], [ 0, %for.body ], [ 0, %if.end27 ], [ 1, %for.cond ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509v3_asid_validate_path(%struct.x509_store_ctx_st* noundef %ctx) local_unnamed_addr #1 {
entry:
  %chain = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 20
  %0 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !27
  %cmp = icmp eq %struct.stack_st_X509* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %0) #8
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #7
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %verify_cb = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 7
  %1 = load i32 (i32, %struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)** %verify_cb, align 8, !tbaa !30
  %cmp5 = icmp eq i32 (i32, %struct.x509_store_ctx_st*)* %1, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  %error = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 24
  store i32 1, i32* %error, align 8, !tbaa !31
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %2 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !27
  %call7 = tail call fastcc i32 @asid_validate_path_internal(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.stack_st_X509* noundef %2, %struct.ASIdentifiers_st* noundef null) #8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call7, %if.end ]
  ret i32 %retval.0
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asid_validate_path_internal(%struct.x509_store_ctx_st* noundef %ctx, %struct.stack_st_X509* noundef %chain, %struct.ASIdentifiers_st* noundef %ext) unnamed_addr #1 {
entry:
  %cmp.not = icmp eq %struct.stack_st_X509* %chain, null
  br i1 %cmp.not, label %if.then, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %chain) #8
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #7
  %cmp2 = icmp sgt i32 %call1, 0
  br i1 %cmp2, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.rhs
  %cmp4 = icmp ne %struct.x509_store_ctx_st* %ctx, null
  %cmp5 = icmp ne %struct.ASIdentifiers_st* %ext, null
  %0 = or i1 %cmp4, %cmp5
  br i1 %0, label %lor.lhs.false7, label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %cmp8 = icmp eq %struct.x509_store_ctx_st* %ctx, null
  br i1 %cmp8, label %if.end16, label %lor.rhs9

lor.rhs9:                                         ; preds = %lor.lhs.false7
  %verify_cb = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 7
  %1 = load i32 (i32, %struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)** %verify_cb, align 8, !tbaa !30
  %cmp10.not = icmp eq i32 (i32, %struct.x509_store_ctx_st*)* %1, null
  br i1 %cmp10.not, label %if.then15, label %if.end16

if.then:                                          ; preds = %entry, %land.rhs
  %cmp14.not = icmp eq %struct.x509_store_ctx_st* %ctx, null
  br i1 %cmp14.not, label %cleanup, label %if.then15

if.then15:                                        ; preds = %lor.rhs9, %if.then
  %error = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 24
  store i32 1, i32* %error, align 8, !tbaa !31
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false7, %lor.rhs9
  br i1 %cmp5, label %if.end24, label %if.else

if.else:                                          ; preds = %if.end16
  %call20 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef 0) #7
  %2 = bitcast i8* %call20 to %struct.x509_st*
  %rfc3779_asid = getelementptr inbounds i8, i8* %call20, i64 304
  %3 = bitcast i8* %rfc3779_asid to %struct.ASIdentifiers_st**
  %4 = load %struct.ASIdentifiers_st*, %struct.ASIdentifiers_st** %3, align 8, !tbaa !32
  %cmp21 = icmp eq %struct.ASIdentifiers_st* %4, null
  br i1 %cmp21, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end16, %if.else
  %ext.addr.0 = phi %struct.ASIdentifiers_st* [ %4, %if.else ], [ %ext, %if.end16 ]
  %i.0 = phi i32 [ 0, %if.else ], [ -1, %if.end16 ]
  %x.0 = phi %struct.x509_st* [ %2, %if.else ], [ null, %if.end16 ]
  %call25 = tail call i32 @X509v3_asid_is_canonical(%struct.ASIdentifiers_st* noundef nonnull %ext.addr.0) #8
  %tobool.not = icmp eq i32 %call25, 0
  br i1 %tobool.not, label %do.body, label %if.end37

do.body:                                          ; preds = %if.end24
  br i1 %cmp4, label %if.end33, label %cleanup

if.end33:                                         ; preds = %do.body
  %error29 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 24
  store i32 41, i32* %error29, align 8, !tbaa !31
  %error_depth = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 23
  store i32 %i.0, i32* %error_depth, align 4, !tbaa !41
  %current_cert = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 25
  store %struct.x509_st* %x.0, %struct.x509_st** %current_cert, align 8, !tbaa !42
  %verify_cb30 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 7
  %5 = load i32 (i32, %struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)** %verify_cb30, align 8, !tbaa !30
  %call31 = tail call i32 %5(i32 noundef 0, %struct.x509_store_ctx_st* noundef nonnull %ctx) #7
  %tobool34.not = icmp eq i32 %call31, 0
  br i1 %tobool34.not, label %cleanup, label %if.end37

if.end37:                                         ; preds = %if.end33, %if.end24
  %ret.1 = phi i32 [ 1, %if.end24 ], [ %call31, %if.end33 ]
  %asnum = getelementptr inbounds %struct.ASIdentifiers_st, %struct.ASIdentifiers_st* %ext.addr.0, i64 0, i32 0
  %6 = load %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st** %asnum, align 8, !tbaa !17
  %cmp38.not = icmp eq %struct.ASIdentifierChoice_st* %6, null
  br i1 %cmp38.not, label %if.end43, label %if.then39

if.then39:                                        ; preds = %if.end37
  %type = getelementptr inbounds %struct.ASIdentifierChoice_st, %struct.ASIdentifierChoice_st* %6, i64 0, i32 0
  %7 = load i32, i32* %type, align 8, !tbaa !8
  switch i32 %7, label %if.end43 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb41
  ]

sw.bb:                                            ; preds = %if.then39
  br label %if.end43

sw.bb41:                                          ; preds = %if.then39
  %u = getelementptr inbounds %struct.ASIdentifierChoice_st, %struct.ASIdentifierChoice_st* %6, i64 0, i32 1
  %asIdsOrRanges = bitcast %union.anon.0* %u to %struct.stack_st_ASIdOrRange**
  %8 = load %struct.stack_st_ASIdOrRange*, %struct.stack_st_ASIdOrRange** %asIdsOrRanges, align 8, !tbaa !11
  br label %if.end43

if.end43:                                         ; preds = %sw.bb, %sw.bb41, %if.then39, %if.end37
  %child_as.0 = phi %struct.stack_st_ASIdOrRange* [ null, %if.then39 ], [ %8, %sw.bb41 ], [ null, %sw.bb ], [ null, %if.end37 ]
  %inherit_as.0 = phi i32 [ 0, %if.then39 ], [ 0, %sw.bb41 ], [ 1, %sw.bb ], [ 0, %if.end37 ]
  %rdi = getelementptr inbounds %struct.ASIdentifiers_st, %struct.ASIdentifiers_st* %ext.addr.0, i64 0, i32 1
  %9 = load %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st** %rdi, align 8, !tbaa !19
  %cmp44.not = icmp eq %struct.ASIdentifierChoice_st* %9, null
  br i1 %cmp44.not, label %if.end54, label %if.then45

if.then45:                                        ; preds = %if.end43
  %type47 = getelementptr inbounds %struct.ASIdentifierChoice_st, %struct.ASIdentifierChoice_st* %9, i64 0, i32 0
  %10 = load i32, i32* %type47, align 8, !tbaa !8
  switch i32 %10, label %if.end54 [
    i32 0, label %sw.bb48
    i32 1, label %sw.bb49
  ]

sw.bb48:                                          ; preds = %if.then45
  br label %if.end54

sw.bb49:                                          ; preds = %if.then45
  %u51 = getelementptr inbounds %struct.ASIdentifierChoice_st, %struct.ASIdentifierChoice_st* %9, i64 0, i32 1
  %asIdsOrRanges52 = bitcast %union.anon.0* %u51 to %struct.stack_st_ASIdOrRange**
  %11 = load %struct.stack_st_ASIdOrRange*, %struct.stack_st_ASIdOrRange** %asIdsOrRanges52, align 8, !tbaa !11
  br label %if.end54

if.end54:                                         ; preds = %sw.bb48, %sw.bb49, %if.then45, %if.end43
  %child_rdi.0 = phi %struct.stack_st_ASIdOrRange* [ null, %if.then45 ], [ %11, %sw.bb49 ], [ null, %sw.bb48 ], [ null, %if.end43 ]
  %inherit_rdi.0 = phi i32 [ 0, %if.then45 ], [ 0, %sw.bb49 ], [ 1, %sw.bb48 ], [ 0, %if.end43 ]
  %i.1528 = add nsw i32 %i.0, 1
  %call56529 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #7
  %cmp57530 = icmp slt i32 %i.1528, %call56529
  br i1 %cmp57530, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end54
  %error106 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 24
  %error_depth107 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 23
  %current_cert108 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 25
  %12 = bitcast %struct.x509_st** %current_cert108 to i8**
  %verify_cb109 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.1540 = phi i32 [ %i.1528, %for.body.lr.ph ], [ %i.1, %for.inc ]
  %inherit_rdi.1537 = phi i32 [ %inherit_rdi.0, %for.body.lr.ph ], [ %inherit_rdi.3, %for.inc ]
  %inherit_as.1536 = phi i32 [ %inherit_as.0, %for.body.lr.ph ], [ %inherit_as.4, %for.inc ]
  %ret.2535 = phi i32 [ %ret.1, %for.body.lr.ph ], [ %ret.13, %for.inc ]
  %child_rdi.1532 = phi %struct.stack_st_ASIdOrRange* [ %child_rdi.0, %for.body.lr.ph ], [ %child_rdi.3, %for.inc ]
  %child_as.1531 = phi %struct.stack_st_ASIdOrRange* [ %child_as.0, %for.body.lr.ph ], [ %child_as.4, %for.inc ]
  %call59 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.1540) #7
  %cmp60.not = icmp eq i8* %call59, null
  br i1 %cmp60.not, label %if.then63, label %if.end69

if.then63:                                        ; preds = %for.body
  br i1 %cmp4, label %if.then66, label %cleanup

if.then66:                                        ; preds = %if.then63
  store i32 1, i32* %error106, align 8, !tbaa !31
  br label %cleanup

if.end69:                                         ; preds = %for.body
  %rfc3779_asid70 = getelementptr inbounds i8, i8* %call59, i64 304
  %13 = bitcast i8* %rfc3779_asid70 to %struct.ASIdentifiers_st**
  %14 = load %struct.ASIdentifiers_st*, %struct.ASIdentifiers_st** %13, align 8, !tbaa !32
  %cmp71 = icmp eq %struct.ASIdentifiers_st* %14, null
  br i1 %cmp71, label %if.then73, label %if.end97

if.then73:                                        ; preds = %if.end69
  %cmp74 = icmp ne %struct.stack_st_ASIdOrRange* %child_as.1531, null
  %cmp77 = icmp ne %struct.stack_st_ASIdOrRange* %child_rdi.1532, null
  %or.cond = select i1 %cmp74, i1 true, i1 %cmp77
  br i1 %or.cond, label %do.body80, label %for.inc

do.body80:                                        ; preds = %if.then73
  br i1 %cmp4, label %if.end90, label %cleanup

if.end90:                                         ; preds = %do.body80
  store i32 46, i32* %error106, align 8, !tbaa !31
  store i32 %i.1540, i32* %error_depth107, align 4, !tbaa !41
  store i8* %call59, i8** %12, align 8, !tbaa !42
  %15 = load i32 (i32, %struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)** %verify_cb109, align 8, !tbaa !30
  %call88 = tail call i32 %15(i32 noundef 0, %struct.x509_store_ctx_st* noundef nonnull %ctx) #7
  %tobool91.not = icmp eq i32 %call88, 0
  br i1 %tobool91.not, label %cleanup, label %for.inc

if.end97:                                         ; preds = %if.end69
  %call99 = tail call i32 @X509v3_asid_is_canonical(%struct.ASIdentifiers_st* noundef nonnull %14) #8
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %do.body102, label %if.end118

do.body102:                                       ; preds = %if.end97
  br i1 %cmp4, label %if.end112, label %cleanup

if.end112:                                        ; preds = %do.body102
  store i32 41, i32* %error106, align 8, !tbaa !31
  store i32 %i.1540, i32* %error_depth107, align 4, !tbaa !41
  store i8* %call59, i8** %12, align 8, !tbaa !42
  %16 = load i32 (i32, %struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)** %verify_cb109, align 8, !tbaa !30
  %call110 = tail call i32 %16(i32 noundef 0, %struct.x509_store_ctx_st* noundef nonnull %ctx) #7
  %tobool113.not = icmp eq i32 %call110, 0
  br i1 %tobool113.not, label %cleanup, label %if.end118.thread

if.end118:                                        ; preds = %if.end97
  %17 = load %struct.ASIdentifiers_st*, %struct.ASIdentifiers_st** %13, align 8, !tbaa !32
  %asnum120 = getelementptr inbounds %struct.ASIdentifiers_st, %struct.ASIdentifiers_st* %17, i64 0, i32 0
  %18 = load %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st** %asnum120, align 8, !tbaa !17
  %cmp121 = icmp eq %struct.ASIdentifierChoice_st* %18, null
  %cmp123 = icmp ne %struct.stack_st_ASIdOrRange* %child_as.1531, null
  %or.cond333 = select i1 %cmp121, i1 %cmp123, i1 false
  br i1 %or.cond333, label %do.body126, label %if.end142

if.end118.thread:                                 ; preds = %if.end112
  %19 = load %struct.ASIdentifiers_st*, %struct.ASIdentifiers_st** %13, align 8, !tbaa !32
  %asnum120488 = getelementptr inbounds %struct.ASIdentifiers_st, %struct.ASIdentifiers_st* %19, i64 0, i32 0
  %20 = load %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st** %asnum120488, align 8, !tbaa !17
  %cmp121489 = icmp eq %struct.ASIdentifierChoice_st* %20, null
  %cmp123490 = icmp ne %struct.stack_st_ASIdOrRange* %child_as.1531, null
  %or.cond333491 = select i1 %cmp121489, i1 %cmp123490, i1 false
  br i1 %or.cond333491, label %if.end136, label %if.end142

do.body126:                                       ; preds = %if.end118
  br i1 %cmp4, label %if.end136, label %cleanup

if.end136:                                        ; preds = %if.end118.thread, %do.body126
  store i32 46, i32* %error106, align 8, !tbaa !31
  store i32 %i.1540, i32* %error_depth107, align 4, !tbaa !41
  store i8* %call59, i8** %12, align 8, !tbaa !42
  %21 = load i32 (i32, %struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)** %verify_cb109, align 8, !tbaa !30
  %call134 = tail call i32 %21(i32 noundef 0, %struct.x509_store_ctx_st* noundef nonnull %ctx) #7
  %tobool137.not = icmp eq i32 %call134, 0
  br i1 %tobool137.not, label %cleanup, label %if.end136.if.end142_crit_edge

if.end136.if.end142_crit_edge:                    ; preds = %if.end136
  %.pre = load %struct.ASIdentifiers_st*, %struct.ASIdentifiers_st** %13, align 8, !tbaa !32
  %asnum144.phi.trans.insert = getelementptr inbounds %struct.ASIdentifiers_st, %struct.ASIdentifiers_st* %.pre, i64 0, i32 0
  %.pre546 = load %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st** %asnum144.phi.trans.insert, align 8, !tbaa !17
  br label %if.end142

if.end142:                                        ; preds = %if.end136.if.end142_crit_edge, %if.end118.thread, %if.end118
  %22 = phi %struct.ASIdentifierChoice_st* [ %18, %if.end118 ], [ %.pre546, %if.end136.if.end142_crit_edge ], [ %20, %if.end118.thread ]
  %23 = phi %struct.ASIdentifiers_st* [ %17, %if.end118 ], [ %.pre, %if.end136.if.end142_crit_edge ], [ %19, %if.end118.thread ]
  %child_as.2 = phi %struct.stack_st_ASIdOrRange* [ %child_as.1531, %if.end118 ], [ null, %if.end136.if.end142_crit_edge ], [ %child_as.1531, %if.end118.thread ]
  %ret.7 = phi i32 [ %ret.2535, %if.end118 ], [ %call134, %if.end136.if.end142_crit_edge ], [ %call110, %if.end118.thread ]
  %inherit_as.2 = phi i32 [ %inherit_as.1536, %if.end118 ], [ 0, %if.end136.if.end142_crit_edge ], [ %inherit_as.1536, %if.end118.thread ]
  %cmp145.not = icmp eq %struct.ASIdentifierChoice_st* %22, null
  br i1 %cmp145.not, label %if.end185, label %land.lhs.true147

land.lhs.true147:                                 ; preds = %if.end142
  %type150 = getelementptr inbounds %struct.ASIdentifierChoice_st, %struct.ASIdentifierChoice_st* %22, i64 0, i32 0
  %24 = load i32, i32* %type150, align 8, !tbaa !8
  %cmp151 = icmp eq i32 %24, 1
  br i1 %cmp151, label %if.then153, label %if.end185

if.then153:                                       ; preds = %land.lhs.true147
  %tobool154.not = icmp eq i32 %inherit_as.2, 0
  br i1 %tobool154.not, label %lor.lhs.false155, label %if.then162

lor.lhs.false155:                                 ; preds = %if.then153
  %u158 = getelementptr inbounds %struct.ASIdentifierChoice_st, %struct.ASIdentifierChoice_st* %22, i64 0, i32 1
  %asIdsOrRanges159 = bitcast %union.anon.0* %u158 to %struct.stack_st_ASIdOrRange**
  %25 = load %struct.stack_st_ASIdOrRange*, %struct.stack_st_ASIdOrRange** %asIdsOrRanges159, align 8, !tbaa !11
  %call160 = tail call fastcc i32 @asid_contains(%struct.stack_st_ASIdOrRange* noundef %25, %struct.stack_st_ASIdOrRange* noundef %child_as.2) #8
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %do.body168, label %lor.lhs.false155.if.then162_crit_edge

lor.lhs.false155.if.then162_crit_edge:            ; preds = %lor.lhs.false155
  %.pre547 = load %struct.ASIdentifiers_st*, %struct.ASIdentifiers_st** %13, align 8, !tbaa !32
  %asnum164.phi.trans.insert = getelementptr inbounds %struct.ASIdentifiers_st, %struct.ASIdentifiers_st* %.pre547, i64 0, i32 0
  %.pre548 = load %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st** %asnum164.phi.trans.insert, align 8, !tbaa !17
  br label %if.then162

if.then162:                                       ; preds = %lor.lhs.false155.if.then162_crit_edge, %if.then153
  %26 = phi %struct.ASIdentifierChoice_st* [ %.pre548, %lor.lhs.false155.if.then162_crit_edge ], [ %22, %if.then153 ]
  %27 = phi %struct.ASIdentifiers_st* [ %.pre547, %lor.lhs.false155.if.then162_crit_edge ], [ %23, %if.then153 ]
  %u165 = getelementptr inbounds %struct.ASIdentifierChoice_st, %struct.ASIdentifierChoice_st* %26, i64 0, i32 1
  %asIdsOrRanges166 = bitcast %union.anon.0* %u165 to %struct.stack_st_ASIdOrRange**
  %28 = load %struct.stack_st_ASIdOrRange*, %struct.stack_st_ASIdOrRange** %asIdsOrRanges166, align 8, !tbaa !11
  br label %if.end185

do.body168:                                       ; preds = %lor.lhs.false155
  br i1 %cmp4, label %if.end178, label %cleanup

if.end178:                                        ; preds = %do.body168
  store i32 46, i32* %error106, align 8, !tbaa !31
  store i32 %i.1540, i32* %error_depth107, align 4, !tbaa !41
  store i8* %call59, i8** %12, align 8, !tbaa !42
  %29 = load i32 (i32, %struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)** %verify_cb109, align 8, !tbaa !30
  %call176 = tail call i32 %29(i32 noundef 0, %struct.x509_store_ctx_st* noundef nonnull %ctx) #7
  %tobool179.not = icmp eq i32 %call176, 0
  br i1 %tobool179.not, label %cleanup, label %if.end185.thread

if.end185:                                        ; preds = %if.then162, %land.lhs.true147, %if.end142
  %30 = phi %struct.ASIdentifiers_st* [ %27, %if.then162 ], [ %23, %land.lhs.true147 ], [ %23, %if.end142 ]
  %child_as.3 = phi %struct.stack_st_ASIdOrRange* [ %28, %if.then162 ], [ %child_as.2, %land.lhs.true147 ], [ %child_as.2, %if.end142 ]
  %inherit_as.3 = phi i32 [ 0, %if.then162 ], [ %inherit_as.2, %land.lhs.true147 ], [ %inherit_as.2, %if.end142 ]
  %rdi187 = getelementptr inbounds %struct.ASIdentifiers_st, %struct.ASIdentifiers_st* %30, i64 0, i32 1
  %31 = load %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st** %rdi187, align 8, !tbaa !19
  %cmp188 = icmp eq %struct.ASIdentifierChoice_st* %31, null
  %cmp191 = icmp ne %struct.stack_st_ASIdOrRange* %child_rdi.1532, null
  %or.cond334 = select i1 %cmp188, i1 %cmp191, i1 false
  br i1 %or.cond334, label %do.body194, label %if.end210

if.end185.thread:                                 ; preds = %if.end178
  %32 = load %struct.ASIdentifiers_st*, %struct.ASIdentifiers_st** %13, align 8, !tbaa !32
  %rdi187499 = getelementptr inbounds %struct.ASIdentifiers_st, %struct.ASIdentifiers_st* %32, i64 0, i32 1
  %33 = load %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st** %rdi187499, align 8, !tbaa !19
  %cmp188500 = icmp eq %struct.ASIdentifierChoice_st* %33, null
  %cmp191501 = icmp ne %struct.stack_st_ASIdOrRange* %child_rdi.1532, null
  %or.cond334502 = select i1 %cmp188500, i1 %cmp191501, i1 false
  br i1 %or.cond334502, label %if.end204, label %if.end210

do.body194:                                       ; preds = %if.end185
  br i1 %cmp4, label %if.end204, label %cleanup

if.end204:                                        ; preds = %if.end185.thread, %do.body194
  %child_as.3504512 = phi %struct.stack_st_ASIdOrRange* [ %child_as.3, %do.body194 ], [ %child_as.2, %if.end185.thread ]
  %inherit_as.3506510 = phi i32 [ %inherit_as.3, %do.body194 ], [ 0, %if.end185.thread ]
  store i32 46, i32* %error106, align 8, !tbaa !31
  store i32 %i.1540, i32* %error_depth107, align 4, !tbaa !41
  store i8* %call59, i8** %12, align 8, !tbaa !42
  %34 = load i32 (i32, %struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)** %verify_cb109, align 8, !tbaa !30
  %call202 = tail call i32 %34(i32 noundef 0, %struct.x509_store_ctx_st* noundef nonnull %ctx) #7
  %tobool205.not = icmp eq i32 %call202, 0
  br i1 %tobool205.not, label %cleanup, label %if.end204.if.end210_crit_edge

if.end204.if.end210_crit_edge:                    ; preds = %if.end204
  %.pre549 = load %struct.ASIdentifiers_st*, %struct.ASIdentifiers_st** %13, align 8, !tbaa !32
  %rdi212.phi.trans.insert = getelementptr inbounds %struct.ASIdentifiers_st, %struct.ASIdentifiers_st* %.pre549, i64 0, i32 1
  %.pre550 = load %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st** %rdi212.phi.trans.insert, align 8, !tbaa !19
  br label %if.end210

if.end210:                                        ; preds = %if.end204.if.end210_crit_edge, %if.end185.thread, %if.end185
  %35 = phi %struct.ASIdentifierChoice_st* [ %31, %if.end185 ], [ %.pre550, %if.end204.if.end210_crit_edge ], [ %33, %if.end185.thread ]
  %inherit_as.3505 = phi i32 [ %inherit_as.3, %if.end185 ], [ %inherit_as.3506510, %if.end204.if.end210_crit_edge ], [ 0, %if.end185.thread ]
  %child_as.3503 = phi %struct.stack_st_ASIdOrRange* [ %child_as.3, %if.end185 ], [ %child_as.3504512, %if.end204.if.end210_crit_edge ], [ %child_as.2, %if.end185.thread ]
  %child_rdi.2 = phi %struct.stack_st_ASIdOrRange* [ %child_rdi.1532, %if.end185 ], [ null, %if.end204.if.end210_crit_edge ], [ %child_rdi.1532, %if.end185.thread ]
  %ret.11 = phi i32 [ %ret.7, %if.end185 ], [ %call202, %if.end204.if.end210_crit_edge ], [ %call176, %if.end185.thread ]
  %inherit_rdi.2 = phi i32 [ %inherit_rdi.1537, %if.end185 ], [ 0, %if.end204.if.end210_crit_edge ], [ %inherit_rdi.1537, %if.end185.thread ]
  %cmp213.not = icmp eq %struct.ASIdentifierChoice_st* %35, null
  br i1 %cmp213.not, label %for.inc, label %land.lhs.true215

land.lhs.true215:                                 ; preds = %if.end210
  %type218 = getelementptr inbounds %struct.ASIdentifierChoice_st, %struct.ASIdentifierChoice_st* %35, i64 0, i32 0
  %36 = load i32, i32* %type218, align 8, !tbaa !8
  %cmp219 = icmp eq i32 %36, 1
  br i1 %cmp219, label %if.then221, label %for.inc

if.then221:                                       ; preds = %land.lhs.true215
  %tobool222.not = icmp eq i32 %inherit_rdi.2, 0
  br i1 %tobool222.not, label %lor.lhs.false223, label %if.then230

lor.lhs.false223:                                 ; preds = %if.then221
  %u226 = getelementptr inbounds %struct.ASIdentifierChoice_st, %struct.ASIdentifierChoice_st* %35, i64 0, i32 1
  %asIdsOrRanges227 = bitcast %union.anon.0* %u226 to %struct.stack_st_ASIdOrRange**
  %37 = load %struct.stack_st_ASIdOrRange*, %struct.stack_st_ASIdOrRange** %asIdsOrRanges227, align 8, !tbaa !11
  %call228 = tail call fastcc i32 @asid_contains(%struct.stack_st_ASIdOrRange* noundef %37, %struct.stack_st_ASIdOrRange* noundef %child_rdi.2) #8
  %tobool229.not = icmp eq i32 %call228, 0
  br i1 %tobool229.not, label %do.body236, label %lor.lhs.false223.if.then230_crit_edge

lor.lhs.false223.if.then230_crit_edge:            ; preds = %lor.lhs.false223
  %.pre551 = load %struct.ASIdentifiers_st*, %struct.ASIdentifiers_st** %13, align 8, !tbaa !32
  %rdi232.phi.trans.insert = getelementptr inbounds %struct.ASIdentifiers_st, %struct.ASIdentifiers_st* %.pre551, i64 0, i32 1
  %.pre552 = load %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st** %rdi232.phi.trans.insert, align 8, !tbaa !19
  br label %if.then230

if.then230:                                       ; preds = %lor.lhs.false223.if.then230_crit_edge, %if.then221
  %38 = phi %struct.ASIdentifierChoice_st* [ %.pre552, %lor.lhs.false223.if.then230_crit_edge ], [ %35, %if.then221 ]
  %u233 = getelementptr inbounds %struct.ASIdentifierChoice_st, %struct.ASIdentifierChoice_st* %38, i64 0, i32 1
  %asIdsOrRanges234 = bitcast %union.anon.0* %u233 to %struct.stack_st_ASIdOrRange**
  %39 = load %struct.stack_st_ASIdOrRange*, %struct.stack_st_ASIdOrRange** %asIdsOrRanges234, align 8, !tbaa !11
  br label %for.inc

do.body236:                                       ; preds = %lor.lhs.false223
  br i1 %cmp4, label %if.end246, label %cleanup

if.end246:                                        ; preds = %do.body236
  store i32 46, i32* %error106, align 8, !tbaa !31
  store i32 %i.1540, i32* %error_depth107, align 4, !tbaa !41
  store i8* %call59, i8** %12, align 8, !tbaa !42
  %40 = load i32 (i32, %struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)** %verify_cb109, align 8, !tbaa !30
  %call244 = tail call i32 %40(i32 noundef 0, %struct.x509_store_ctx_st* noundef nonnull %ctx) #7
  %tobool247.not = icmp eq i32 %call244, 0
  br i1 %tobool247.not, label %cleanup, label %for.inc

for.inc:                                          ; preds = %if.end210, %land.lhs.true215, %if.end246, %if.then230, %if.then73, %if.end90
  %child_as.4 = phi %struct.stack_st_ASIdOrRange* [ %child_as.1531, %if.end90 ], [ null, %if.then73 ], [ %child_as.3503, %if.then230 ], [ %child_as.3503, %if.end246 ], [ %child_as.3503, %land.lhs.true215 ], [ %child_as.3503, %if.end210 ]
  %child_rdi.3 = phi %struct.stack_st_ASIdOrRange* [ %child_rdi.1532, %if.end90 ], [ null, %if.then73 ], [ %39, %if.then230 ], [ %child_rdi.2, %if.end246 ], [ %child_rdi.2, %land.lhs.true215 ], [ %child_rdi.2, %if.end210 ]
  %ret.13 = phi i32 [ %call88, %if.end90 ], [ %ret.2535, %if.then73 ], [ %ret.11, %if.then230 ], [ %call244, %if.end246 ], [ %ret.11, %land.lhs.true215 ], [ %ret.11, %if.end210 ]
  %inherit_as.4 = phi i32 [ %inherit_as.1536, %if.end90 ], [ %inherit_as.1536, %if.then73 ], [ %inherit_as.3505, %if.then230 ], [ %inherit_as.3505, %if.end246 ], [ %inherit_as.3505, %land.lhs.true215 ], [ %inherit_as.3505, %if.end210 ]
  %inherit_rdi.3 = phi i32 [ %inherit_rdi.1537, %if.end90 ], [ %inherit_rdi.1537, %if.then73 ], [ 0, %if.then230 ], [ 0, %if.end246 ], [ %inherit_rdi.2, %land.lhs.true215 ], [ %inherit_rdi.2, %if.end210 ]
  %i.1 = add nsw i32 %i.1540, 1
  %call56 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #7
  %cmp57 = icmp slt i32 %i.1, %call56
  br i1 %cmp57, label %for.body, label %for.cond.for.end_crit_edge, !llvm.loop !43

for.cond.for.end_crit_edge:                       ; preds = %for.inc
  %41 = bitcast i8* %call59 to %struct.x509_st*
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end54
  %ret.2.lcssa = phi i32 [ %ret.13, %for.cond.for.end_crit_edge ], [ %ret.1, %if.end54 ]
  %x.1.lcssa = phi %struct.x509_st* [ %41, %for.cond.for.end_crit_edge ], [ %x.0, %if.end54 ]
  %i.1.lcssa = phi i32 [ %i.1, %for.cond.for.end_crit_edge ], [ %i.1528, %if.end54 ]
  %cmp255.not = icmp eq %struct.x509_st* %x.1.lcssa, null
  br i1 %cmp255.not, label %if.then259, label %if.end265

if.then259:                                       ; preds = %for.end
  br i1 %cmp4, label %if.then262, label %cleanup

if.then262:                                       ; preds = %if.then259
  %error263 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 24
  store i32 1, i32* %error263, align 8, !tbaa !31
  br label %cleanup

if.end265:                                        ; preds = %for.end
  %rfc3779_asid266 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x.1.lcssa, i64 0, i32 19
  %42 = load %struct.ASIdentifiers_st*, %struct.ASIdentifiers_st** %rfc3779_asid266, align 8, !tbaa !32
  %cmp267.not = icmp eq %struct.ASIdentifiers_st* %42, null
  br i1 %cmp267.not, label %cleanup, label %if.then269

if.then269:                                       ; preds = %if.end265
  %asnum271 = getelementptr inbounds %struct.ASIdentifiers_st, %struct.ASIdentifiers_st* %42, i64 0, i32 0
  %43 = load %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st** %asnum271, align 8, !tbaa !17
  %cmp272.not = icmp eq %struct.ASIdentifierChoice_st* %43, null
  br i1 %cmp272.not, label %if.end297, label %land.lhs.true274

land.lhs.true274:                                 ; preds = %if.then269
  %type277 = getelementptr inbounds %struct.ASIdentifierChoice_st, %struct.ASIdentifierChoice_st* %43, i64 0, i32 0
  %44 = load i32, i32* %type277, align 8, !tbaa !8
  %cmp278 = icmp eq i32 %44, 0
  br i1 %cmp278, label %do.body281, label %if.end297

do.body281:                                       ; preds = %land.lhs.true274
  br i1 %cmp4, label %if.end291, label %cleanup

if.end291:                                        ; preds = %do.body281
  %error285 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 24
  store i32 46, i32* %error285, align 8, !tbaa !31
  %error_depth286 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 23
  store i32 %i.1.lcssa, i32* %error_depth286, align 4, !tbaa !41
  %current_cert287 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 25
  store %struct.x509_st* %x.1.lcssa, %struct.x509_st** %current_cert287, align 8, !tbaa !42
  %verify_cb288 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 7
  %45 = load i32 (i32, %struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)** %verify_cb288, align 8, !tbaa !30
  %call289 = tail call i32 %45(i32 noundef 0, %struct.x509_store_ctx_st* noundef nonnull %ctx) #7
  %tobool292.not = icmp eq i32 %call289, 0
  br i1 %tobool292.not, label %cleanup, label %if.end291.if.end297_crit_edge

if.end291.if.end297_crit_edge:                    ; preds = %if.end291
  %.pre553 = load %struct.ASIdentifiers_st*, %struct.ASIdentifiers_st** %rfc3779_asid266, align 8, !tbaa !32
  br label %if.end297

if.end297:                                        ; preds = %if.end291.if.end297_crit_edge, %land.lhs.true274, %if.then269
  %46 = phi %struct.ASIdentifiers_st* [ %.pre553, %if.end291.if.end297_crit_edge ], [ %42, %land.lhs.true274 ], [ %42, %if.then269 ]
  %ret.15 = phi i32 [ %call289, %if.end291.if.end297_crit_edge ], [ %ret.2.lcssa, %land.lhs.true274 ], [ %ret.2.lcssa, %if.then269 ]
  %rdi299 = getelementptr inbounds %struct.ASIdentifiers_st, %struct.ASIdentifiers_st* %46, i64 0, i32 1
  %47 = load %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st** %rdi299, align 8, !tbaa !19
  %cmp300.not = icmp eq %struct.ASIdentifierChoice_st* %47, null
  br i1 %cmp300.not, label %cleanup, label %land.lhs.true302

land.lhs.true302:                                 ; preds = %if.end297
  %type305 = getelementptr inbounds %struct.ASIdentifierChoice_st, %struct.ASIdentifierChoice_st* %47, i64 0, i32 0
  %48 = load i32, i32* %type305, align 8, !tbaa !8
  %cmp306 = icmp ne i32 %48, 0
  %cmp4.not = xor i1 %cmp4, true
  %brmerge = or i1 %cmp306, %cmp4.not
  %ret.15.mux = select i1 %cmp306, i32 %ret.15, i32 0
  br i1 %brmerge, label %cleanup, label %if.then312

if.then312:                                       ; preds = %land.lhs.true302
  %error313 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 24
  store i32 46, i32* %error313, align 8, !tbaa !31
  %error_depth314 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 23
  store i32 %i.1.lcssa, i32* %error_depth314, align 4, !tbaa !41
  %current_cert315 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 25
  store %struct.x509_st* %x.1.lcssa, %struct.x509_st** %current_cert315, align 8, !tbaa !42
  %verify_cb316 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 7
  %49 = load i32 (i32, %struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)** %verify_cb316, align 8, !tbaa !30
  %call317 = tail call i32 %49(i32 noundef 0, %struct.x509_store_ctx_st* noundef %ctx) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body236, %do.body194, %do.body168, %do.body126, %do.body102, %do.body80, %if.end90, %if.end112, %if.end136, %if.end178, %if.end204, %if.end246, %do.body281, %do.body, %lor.lhs.false, %land.lhs.true302, %if.else, %if.end33, %if.end291, %if.end297, %if.end265, %if.then312, %if.then259, %if.then262, %if.then63, %if.then66, %if.then, %if.then15
  %retval.0 = phi i32 [ 0, %if.then15 ], [ 0, %if.then ], [ 0, %if.then66 ], [ 0, %if.then63 ], [ 0, %if.then262 ], [ 0, %if.then259 ], [ %call317, %if.then312 ], [ %ret.15.mux, %land.lhs.true302 ], [ %ret.15, %if.end297 ], [ 0, %if.end291 ], [ %ret.2.lcssa, %if.end265 ], [ 0, %if.end33 ], [ 1, %if.else ], [ 0, %lor.lhs.false ], [ 0, %do.body ], [ 0, %do.body281 ], [ 0, %if.end246 ], [ 0, %if.end204 ], [ 0, %if.end178 ], [ 0, %if.end136 ], [ 0, %if.end112 ], [ 0, %if.end90 ], [ 0, %do.body80 ], [ 0, %do.body102 ], [ 0, %do.body126 ], [ 0, %do.body168 ], [ 0, %do.body194 ], [ 0, %do.body236 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509v3_asid_validate_resource_set(%struct.stack_st_X509* noundef %chain, %struct.ASIdentifiers_st* noundef %ext, i32 noundef %allow_inheritance) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ASIdentifiers_st* %ext, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct.stack_st_X509* %chain, null
  br i1 %cmp1, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %chain) #8
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #7
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %return, label %if.end5

if.end5:                                          ; preds = %lor.lhs.false
  %tobool.not = icmp eq i32 %allow_inheritance, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end5
  %call6 = tail call i32 @X509v3_asid_inherits(%struct.ASIdentifiers_st* noundef nonnull %ext) #8
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %return

if.end9:                                          ; preds = %land.lhs.true, %if.end5
  %call10 = tail call fastcc i32 @asid_validate_path_internal(%struct.x509_store_ctx_st* noundef null, %struct.stack_st_X509* noundef nonnull %chain, %struct.ASIdentifiers_st* noundef nonnull %ext) #8
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end, %lor.lhs.false, %entry, %if.end9
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ 1, %entry ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

declare %struct.ASN1_ITEM_st* @ASN1_INTEGER_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_NULL_it() #2

declare i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_ASIdOrRange_sk_type(%struct.stack_st_ASIdOrRange* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_ASIdOrRange* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @extract_min_max(%struct.ASIdOrRange_st* noundef readonly %aor, %struct.asn1_string_st** nocapture noundef writeonly %min, %struct.asn1_string_st** nocapture noundef writeonly %max) unnamed_addr #5 {
entry:
  %cmp.not = icmp eq %struct.ASIdOrRange_st* %aor, null
  br i1 %cmp.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.ASIdOrRange_st, %struct.ASIdOrRange_st* %aor, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !12
  switch i32 %0, label %return [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.end
  %id = getelementptr inbounds %struct.ASIdOrRange_st, %struct.ASIdOrRange_st* %aor, i64 0, i32 1, i32 0
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %id, align 8, !tbaa !11
  store %struct.asn1_string_st* %1, %struct.asn1_string_st** %min, align 8, !tbaa !4
  br label %return.sink.split

sw.bb5:                                           ; preds = %if.end
  %u6 = getelementptr inbounds %struct.ASIdOrRange_st, %struct.ASIdOrRange_st* %aor, i64 0, i32 1
  %range = bitcast %union.anon* %u6 to %struct.ASRange_st**
  %2 = load %struct.ASRange_st*, %struct.ASRange_st** %range, align 8, !tbaa !11
  %min7 = getelementptr inbounds %struct.ASRange_st, %struct.ASRange_st* %2, i64 0, i32 0
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %min7, align 8, !tbaa !14
  store %struct.asn1_string_st* %3, %struct.asn1_string_st** %min, align 8, !tbaa !4
  %4 = load %struct.ASRange_st*, %struct.ASRange_st** %range, align 8, !tbaa !11
  %max10 = getelementptr inbounds %struct.ASRange_st, %struct.ASRange_st* %4, i64 0, i32 1
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb, %sw.bb5
  %max10.sink = phi %struct.asn1_string_st** [ %max10, %sw.bb5 ], [ %id, %sw.bb ]
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %max10.sink, align 8, !tbaa !11
  store %struct.asn1_string_st* %5, %struct.asn1_string_st** %max, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %return.sink.split, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 1, %return.sink.split ]
  ret i32 %retval.0
}

declare %struct.bignum_st* @BN_new() local_unnamed_addr #2

declare %struct.bignum_st* @ASN1_INTEGER_to_BN(%struct.asn1_string_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_add_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare %struct.asn1_string_st* @BN_to_ASN1_INTEGER(%struct.bignum_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_sort(%struct.stack_st* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @OPENSSL_sk_delete(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @ossl_v3_name_cmp(i8* noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_add_error_data(i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* noundef, i8* noundef) local_unnamed_addr #6

declare i32 @X509V3_get_value_int(%struct.CONF_VALUE* noundef, %struct.asn1_string_st** noundef) local_unnamed_addr #2

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @s2i_ASN1_INTEGER(%struct.v3_ext_method* noundef, i8* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @i2r_ASIdentifierChoice(%struct.bio_st* noundef %out, %struct.ASIdentifierChoice_st* noundef readonly %choice, i32 noundef %indent, i8* noundef %msg) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ASIdentifierChoice_st* %choice, null
  br i1 %cmp, label %cleanup36, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i64 0, i64 0), i8* noundef %msg) #7
  %type = getelementptr inbounds %struct.ASIdentifierChoice_st, %struct.ASIdentifierChoice_st* %choice, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !8
  switch i32 %0, label %cleanup36 [
    i32 0, label %sw.bb
    i32 1, label %for.cond.preheader
  ]

for.cond.preheader:                               ; preds = %if.end
  %add25 = add nsw i32 %indent, 2
  %u = getelementptr inbounds %struct.ASIdentifierChoice_st, %struct.ASIdentifierChoice_st* %choice, i64 0, i32 1
  %asIdsOrRanges = bitcast %union.anon.0* %u to %struct.stack_st_ASIdOrRange**
  %1 = load %struct.stack_st_ASIdOrRange*, %struct.stack_st_ASIdOrRange** %asIdsOrRanges, align 8, !tbaa !11
  %call364 = tail call fastcc %struct.stack_st* @ossl_check_const_ASIdOrRange_sk_type(%struct.stack_st_ASIdOrRange* noundef %1) #8
  %call465 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call364) #7
  %cmp566 = icmp sgt i32 %call465, 0
  br i1 %cmp566, label %for.body, label %cleanup36

sw.bb:                                            ; preds = %if.end
  %add = add nsw i32 %indent, 2
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i32 noundef %add, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i64 0, i64 0)) #7
  br label %cleanup36

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.067 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %2 = load %struct.stack_st_ASIdOrRange*, %struct.stack_st_ASIdOrRange** %asIdsOrRanges, align 8, !tbaa !11
  %call8 = tail call fastcc %struct.stack_st* @ossl_check_const_ASIdOrRange_sk_type(%struct.stack_st_ASIdOrRange* noundef %2) #8
  %call9 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call8, i32 noundef %i.067) #7
  %type10 = bitcast i8* %call9 to i32*
  %3 = load i32, i32* %type10, align 8, !tbaa !12
  switch i32 %3, label %cleanup36 [
    i32 0, label %sw.bb11
    i32 1, label %sw.bb19
  ]

sw.bb11:                                          ; preds = %for.body
  %u12 = getelementptr inbounds i8, i8* %call9, i64 8
  %id = bitcast i8* %u12 to %struct.asn1_string_st**
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %id, align 8, !tbaa !11
  %call13 = tail call i8* @i2s_ASN1_INTEGER(%struct.v3_ext_method* noundef null, %struct.asn1_string_st* noundef %4) #7
  %cmp14 = icmp eq i8* %call13, null
  br i1 %cmp14, label %cleanup36, label %if.end16

if.end16:                                         ; preds = %sw.bb11
  %call18 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i32 noundef %add25, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i64 0, i64 0), i8* noundef nonnull %call13) #7
  tail call void @CRYPTO_free(i8* noundef nonnull %call13, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 84) #7
  br label %for.inc

sw.bb19:                                          ; preds = %for.body
  %u20 = getelementptr inbounds i8, i8* %call9, i64 8
  %range = bitcast i8* %u20 to %struct.ASRange_st**
  %5 = load %struct.ASRange_st*, %struct.ASRange_st** %range, align 8, !tbaa !11
  %min = getelementptr inbounds %struct.ASRange_st, %struct.ASRange_st* %5, i64 0, i32 0
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %min, align 8, !tbaa !14
  %call21 = tail call i8* @i2s_ASN1_INTEGER(%struct.v3_ext_method* noundef null, %struct.asn1_string_st* noundef %6) #7
  %cmp22 = icmp eq i8* %call21, null
  br i1 %cmp22, label %cleanup36, label %if.end24

if.end24:                                         ; preds = %sw.bb19
  %call26 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i32 noundef %add25, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i64 0, i64 0), i8* noundef nonnull %call21) #7
  tail call void @CRYPTO_free(i8* noundef nonnull %call21, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 90) #7
  %7 = load %struct.ASRange_st*, %struct.ASRange_st** %range, align 8, !tbaa !11
  %max = getelementptr inbounds %struct.ASRange_st, %struct.ASRange_st* %7, i64 0, i32 1
  %8 = load %struct.asn1_string_st*, %struct.asn1_string_st** %max, align 8, !tbaa !16
  %call29 = tail call i8* @i2s_ASN1_INTEGER(%struct.v3_ext_method* noundef null, %struct.asn1_string_st* noundef %8) #7
  %cmp30 = icmp eq i8* %call29, null
  br i1 %cmp30, label %cleanup36, label %if.end32

if.end32:                                         ; preds = %if.end24
  %call33 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i8* noundef nonnull %call29) #7
  tail call void @CRYPTO_free(i8* noundef nonnull %call29, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 94) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end32, %if.end16
  %inc = add nuw nsw i32 %i.067, 1
  %9 = load %struct.stack_st_ASIdOrRange*, %struct.stack_st_ASIdOrRange** %asIdsOrRanges, align 8, !tbaa !11
  %call3 = tail call fastcc %struct.stack_st* @ossl_check_const_ASIdOrRange_sk_type(%struct.stack_st_ASIdOrRange* noundef %9) #8
  %call4 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call3) #7
  %cmp5 = icmp slt i32 %inc, %call4
  br i1 %cmp5, label %for.body, label %cleanup36, !llvm.loop !44

cleanup36:                                        ; preds = %for.inc, %sw.bb11, %sw.bb19, %if.end24, %for.body, %for.cond.preheader, %sw.bb, %if.end, %entry
  %retval.2 = phi i32 [ 1, %entry ], [ 0, %if.end ], [ 1, %sw.bb ], [ 1, %for.cond.preheader ], [ 1, %for.inc ], [ 0, %sw.bb11 ], [ 0, %sw.bb19 ], [ 0, %if.end24 ], [ 0, %for.body ]
  ret i32 %retval.2
}

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare i8* @i2s_ASN1_INTEGER(%struct.v3_ext_method* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"ASIdentifierChoice_st", !10, i64 0, !6, i64 8}
!10 = !{!"int", !6, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!13, !10, i64 0}
!13 = !{!"ASIdOrRange_st", !10, i64 0, !6, i64 8}
!14 = !{!15, !5, i64 0}
!15 = !{!"ASRange_st", !5, i64 0, !5, i64 8}
!16 = !{!15, !5, i64 8}
!17 = !{!18, !5, i64 0}
!18 = !{!"ASIdentifiers_st", !5, i64 0, !5, i64 8}
!19 = !{!18, !5, i64 8}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!23, !5, i64 8}
!23 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16}
!24 = !{!23, !5, i64 16}
!25 = distinct !{!25, !21}
!26 = distinct !{!26, !21}
!27 = !{!28, !5, i64 152}
!28 = !{!"x509_store_ctx_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !10, i64 144, !10, i64 148, !5, i64 152, !5, i64 160, !10, i64 168, !10, i64 172, !10, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !10, i64 208, !10, i64 212, !5, i64 216, !29, i64 224, !5, i64 240, !10, i64 248, !5, i64 256, !5, i64 264}
!29 = !{!"crypto_ex_data_st", !5, i64 0, !5, i64 8}
!30 = !{!28, !5, i64 56}
!31 = !{!28, !10, i64 176}
!32 = !{!33, !5, i64 304}
!33 = !{!"x509_st", !34, i64 0, !37, i64 136, !35, i64 152, !40, i64 176, !6, i64 192, !29, i64 200, !36, i64 216, !36, i64 224, !10, i64 232, !10, i64 236, !10, i64 240, !10, i64 244, !5, i64 248, !5, i64 256, !5, i64 264, !5, i64 272, !5, i64 280, !5, i64 288, !5, i64 296, !5, i64 304, !6, i64 312, !5, i64 336, !5, i64 344, !10, i64 352, !5, i64 360, !5, i64 368, !5, i64 376}
!34 = !{!"x509_cinf_st", !5, i64 0, !35, i64 8, !37, i64 32, !5, i64 48, !38, i64 56, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !39, i64 112}
!35 = !{!"asn1_string_st", !10, i64 0, !10, i64 4, !5, i64 8, !36, i64 16}
!36 = !{!"long", !6, i64 0}
!37 = !{!"X509_algor_st", !5, i64 0, !5, i64 8}
!38 = !{!"X509_val_st", !5, i64 0, !5, i64 8}
!39 = !{!"ASN1_ENCODING_st", !5, i64 0, !36, i64 8, !10, i64 16}
!40 = !{!"x509_sig_info_st", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12}
!41 = !{!28, !10, i64 172}
!42 = !{!28, !5, i64 184}
!43 = distinct !{!43, !21}
!44 = distinct !{!44, !21}
