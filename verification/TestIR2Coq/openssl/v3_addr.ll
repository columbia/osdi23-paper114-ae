; ModuleID = 'crypto/x509/v3_addr.c'
source_filename = "crypto/x509/v3_addr.c"
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
%struct.ASIdentifierChoice_st = type { i32, %union.anon.2 }
%union.anon.2 = type { i32* }
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
%struct.DIST_POINT_NAME_st = type { i32, %union.anon.3, %struct.X509_name_st* }
%union.anon.3 = type { %struct.stack_st_GENERAL_NAME* }
%struct.stack_st_GENERAL_NAMES = type opaque
%struct.x509_crl_method_st = type { i32, i32 (%struct.X509_crl_st*)*, i32 (%struct.X509_crl_st*)*, i32 (%struct.X509_crl_st*, %struct.x509_revoked_st**, %struct.asn1_string_st*, %struct.X509_name_st*)*, i32 (%struct.X509_crl_st*, %struct.evp_pkey_st*)* }
%struct.x509_revoked_st = type { %struct.asn1_string_st, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.stack_st_GENERAL_NAME*, i32, i32 }
%struct.X509V3_CONF_METHOD_st = type { i8* (i8*, i8*, i8*)*, %struct.stack_st_CONF_VALUE* (i8*, i8*)*, void (i8*, i8*)*, void (i8*, %struct.stack_st_CONF_VALUE*)* }
%struct.evp_pkey_st = type opaque
%struct.bio_st = type opaque
%struct.IPAddressRange_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.ASN1_VALUE_st = type opaque
%struct.IPAddressOrRange_st = type { i32, %union.anon }
%union.anon = type { %struct.asn1_string_st* }
%struct.IPAddressChoice_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i32* }
%struct.IPAddressFamily_st = type { %struct.asn1_string_st*, %struct.IPAddressChoice_st* }
%struct.stack_st_IPAddressOrRange = type opaque
%struct.stack_st = type opaque
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

@IPAddressRange_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @IPAddressRange_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [15 x i8] c"IPAddressRange\00", align 1
@IPAddressOrRange_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 2, i64 0, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @IPAddressOrRange_ch_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"IPAddressOrRange\00", align 1
@IPAddressChoice_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 2, i64 0, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @IPAddressChoice_ch_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0) }, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"IPAddressChoice\00", align 1
@IPAddressFamily_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @IPAddressFamily_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0) }, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"IPAddressFamily\00", align 1
@ossl_v3_addr = local_unnamed_addr constant { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 290, i32 0, %struct.ASN1_ITEM_st* ()* @IPAddrBlocks_it, i8* ()* null, void (i8*)* null, i8* (i8*, i8**, i64)* null, i32 (i8*, i8**)* null, i8* (%struct.v3_ext_method*, i8*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* @v2i_IPAddrBlocks, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* @i2r_IPAddrBlocks, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, i8* null }, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@IPAddressRange_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_BIT_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_BIT_STRING_it }], align 16
@.str.7 = private unnamed_addr constant [16 x i8] c"u.addressPrefix\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"u.addressRange\00", align 1
@IPAddressOrRange_ch_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_BIT_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @IPAddressRange_it }], align 16
@.str.10 = private unnamed_addr constant [10 x i8] c"u.inherit\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"u.addressesOrRanges\00", align 1
@IPAddressChoice_ch_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_NULL_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4, i64 0, i64 8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @IPAddressOrRange_it }], align 16
@.str.13 = private unnamed_addr constant [14 x i8] c"addressFamily\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"ipAddressChoice\00", align 1
@IPAddressFamily_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @IPAddressChoice_it }], align 16
@IPAddrBlocks_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 -1, %struct.ASN1_TEMPLATE_st* bitcast ({ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }* @IPAddrBlocks_item_tt to %struct.ASN1_TEMPLATE_st*), i64 0, i8* null, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0) }, align 8
@.str.16 = private unnamed_addr constant [13 x i8] c"IPAddrBlocks\00", align 1
@IPAddrBlocks_item_tt = internal constant { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4, i64 0, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @IPAddressFamily_it }, align 8
@v2i_IPAddrBlocks.v4addr_chars = internal constant [12 x i8] c"0123456789.\00", align 1
@v2i_IPAddrBlocks.v6addr_chars = internal constant [25 x i8] c"0123456789.:abcdefABCDEF\00", align 16
@.str.18 = private unnamed_addr constant [22 x i8] c"crypto/x509/v3_addr.c\00", align 1
@__func__.v2i_IPAddrBlocks = private unnamed_addr constant [17 x i8] c"v2i_IPAddrBlocks\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"IPv4\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"IPv6\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"IPv4-SAFI\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"IPv6-SAFI\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"name=\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c", value=\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"inherit\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"%*sIPv4\00", align 1
@.str.29 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"%*sIPv6\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"%*sUnknown AFI %u\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c" (Unicast)\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c" (Multicast)\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c" (Unicast/Multicast)\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c" (MPLS)\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c" (Tunnel)\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c" (VPLS)\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c" (BGP MDT)\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c" (MPLS-labeled VPN)\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c" (Unknown SAFI %u)\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c": inherit\0A\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"/%d\0A\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"%x%s\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"%s%02x\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@__func__.addr_validate_path_internal = private unnamed_addr constant [28 x i8] c"addr_validate_path_internal\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @IPAddressRange_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @IPAddressRange_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @IPAddressOrRange_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @IPAddressOrRange_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @IPAddressChoice_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @IPAddressChoice_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @IPAddressFamily_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @IPAddressFamily_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.IPAddressRange_st* @d2i_IPAddressRange(%struct.IPAddressRange_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.IPAddressRange_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @IPAddressRange_it.local_it) #10
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.IPAddressRange_st*
  ret %struct.IPAddressRange_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_IPAddressRange(%struct.IPAddressRange_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.IPAddressRange_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @IPAddressRange_it.local_it) #10
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.IPAddressRange_st* @IPAddressRange_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @IPAddressRange_it.local_it) #10
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.IPAddressRange_st*
  ret %struct.IPAddressRange_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @IPAddressRange_free(%struct.IPAddressRange_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.IPAddressRange_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @IPAddressRange_it.local_it) #10
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.IPAddressOrRange_st* @d2i_IPAddressOrRange(%struct.IPAddressOrRange_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.IPAddressOrRange_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @IPAddressOrRange_it.local_it) #10
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.IPAddressOrRange_st*
  ret %struct.IPAddressOrRange_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_IPAddressOrRange(%struct.IPAddressOrRange_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.IPAddressOrRange_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @IPAddressOrRange_it.local_it) #10
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.IPAddressOrRange_st* @IPAddressOrRange_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @IPAddressOrRange_it.local_it) #10
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.IPAddressOrRange_st*
  ret %struct.IPAddressOrRange_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @IPAddressOrRange_free(%struct.IPAddressOrRange_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.IPAddressOrRange_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @IPAddressOrRange_it.local_it) #10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.IPAddressChoice_st* @d2i_IPAddressChoice(%struct.IPAddressChoice_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.IPAddressChoice_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @IPAddressChoice_it.local_it) #10
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.IPAddressChoice_st*
  ret %struct.IPAddressChoice_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_IPAddressChoice(%struct.IPAddressChoice_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.IPAddressChoice_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @IPAddressChoice_it.local_it) #10
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.IPAddressChoice_st* @IPAddressChoice_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @IPAddressChoice_it.local_it) #10
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.IPAddressChoice_st*
  ret %struct.IPAddressChoice_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @IPAddressChoice_free(%struct.IPAddressChoice_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.IPAddressChoice_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @IPAddressChoice_it.local_it) #10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.IPAddressFamily_st* @d2i_IPAddressFamily(%struct.IPAddressFamily_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.IPAddressFamily_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @IPAddressFamily_it.local_it) #10
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.IPAddressFamily_st*
  ret %struct.IPAddressFamily_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_IPAddressFamily(%struct.IPAddressFamily_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.IPAddressFamily_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @IPAddressFamily_it.local_it) #10
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.IPAddressFamily_st* @IPAddressFamily_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @IPAddressFamily_it.local_it) #10
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.IPAddressFamily_st*
  ret %struct.IPAddressFamily_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @IPAddressFamily_free(%struct.IPAddressFamily_st* noundef %a) #1 {
entry:
  %0 = bitcast %struct.IPAddressFamily_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @IPAddressFamily_it.local_it) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @X509v3_addr_get_afi(%struct.IPAddressFamily_st* noundef readonly %f) local_unnamed_addr #3 {
entry:
  %cmp = icmp eq %struct.IPAddressFamily_st* %f, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %addressFamily = getelementptr inbounds %struct.IPAddressFamily_st, %struct.IPAddressFamily_st* %f, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %addressFamily, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.asn1_string_st* %0, null
  br i1 %cmp1, label %return, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %0, i64 0, i32 2
  %1 = load i8*, i8** %data, align 8, !tbaa !9
  %cmp4 = icmp eq i8* %1, null
  br i1 %cmp4, label %return, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %0, i64 0, i32 0
  %2 = load i32, i32* %length, align 8, !tbaa !13
  %cmp7 = icmp slt i32 %2, 2
  br i1 %cmp7, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false5
  %3 = load i8, i8* %1, align 1, !tbaa !14
  %conv = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx12 = getelementptr inbounds i8, i8* %1, i64 1
  %4 = load i8, i8* %arrayidx12, align 1, !tbaa !14
  %conv13 = zext i8 %4 to i32
  %or = or i32 %shl, %conv13
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %lor.lhs.false2, %lor.lhs.false5, %if.end
  %retval.0 = phi i32 [ %or, %if.end ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false2 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509v3_addr_add_inherit(%struct.stack_st_IPAddressFamily* noundef %addr, i32 noundef %afi, i32* noundef %safi) local_unnamed_addr #1 {
entry:
  %call = tail call fastcc %struct.IPAddressFamily_st* @make_IPAddressFamily(%struct.stack_st_IPAddressFamily* noundef %addr, i32 noundef %afi, i32* noundef %safi) #11
  %cmp = icmp eq %struct.IPAddressFamily_st* %call, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %ipAddressChoice = getelementptr inbounds %struct.IPAddressFamily_st, %struct.IPAddressFamily_st* %call, i64 0, i32 1
  %0 = load %struct.IPAddressChoice_st*, %struct.IPAddressChoice_st** %ipAddressChoice, align 8, !tbaa !15
  %cmp1 = icmp eq %struct.IPAddressChoice_st* %0, null
  br i1 %cmp1, label %cleanup, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %type = getelementptr inbounds %struct.IPAddressChoice_st, %struct.IPAddressChoice_st* %0, i64 0, i32 0
  %1 = load i32, i32* %type, align 8, !tbaa !16
  switch i32 %1, label %lor.lhs.false2.if.end15_crit_edge [
    i32 1, label %land.lhs.true
    i32 0, label %land.lhs.true10
  ]

lor.lhs.false2.if.end15_crit_edge:                ; preds = %lor.lhs.false2
  %inherit18.phi.trans.insert = getelementptr inbounds %struct.IPAddressChoice_st, %struct.IPAddressChoice_st* %0, i64 0, i32 1, i32 0
  %.pre = load i32*, i32** %inherit18.phi.trans.insert, align 8, !tbaa !14
  br label %if.end15

land.lhs.true:                                    ; preds = %lor.lhs.false2
  %u = getelementptr inbounds %struct.IPAddressChoice_st, %struct.IPAddressChoice_st* %0, i64 0, i32 1
  %addressesOrRanges = bitcast %union.anon.0* %u to %struct.stack_st_IPAddressOrRange**
  %2 = load %struct.stack_st_IPAddressOrRange*, %struct.stack_st_IPAddressOrRange** %addressesOrRanges, align 8, !tbaa !14
  %cmp6.not = icmp eq %struct.stack_st_IPAddressOrRange* %2, null
  %3 = bitcast %struct.stack_st_IPAddressOrRange* %2 to i32*
  br i1 %cmp6.not, label %if.end15, label %cleanup

land.lhs.true10:                                  ; preds = %lor.lhs.false2
  %inherit = getelementptr inbounds %struct.IPAddressChoice_st, %struct.IPAddressChoice_st* %0, i64 0, i32 1, i32 0
  %4 = load i32*, i32** %inherit, align 8, !tbaa !14
  %cmp13.not = icmp eq i32* %4, null
  br i1 %cmp13.not, label %land.lhs.true20, label %cleanup

if.end15:                                         ; preds = %lor.lhs.false2.if.end15_crit_edge, %land.lhs.true
  %5 = phi i32* [ %.pre, %lor.lhs.false2.if.end15_crit_edge ], [ %3, %land.lhs.true ]
  %cmp19 = icmp eq i32* %5, null
  br i1 %cmp19, label %land.lhs.true20, label %if.end27

land.lhs.true20:                                  ; preds = %land.lhs.true10, %if.end15
  %call21 = tail call i32* @ASN1_NULL_new() #10
  %6 = load %struct.IPAddressChoice_st*, %struct.IPAddressChoice_st** %ipAddressChoice, align 8, !tbaa !15
  %inherit24 = getelementptr inbounds %struct.IPAddressChoice_st, %struct.IPAddressChoice_st* %6, i64 0, i32 1, i32 0
  store i32* %call21, i32** %inherit24, align 8, !tbaa !14
  %cmp25 = icmp eq i32* %call21, null
  br i1 %cmp25, label %cleanup, label %land.lhs.true20.if.end27_crit_edge

land.lhs.true20.if.end27_crit_edge:               ; preds = %land.lhs.true20
  %.pre40 = load %struct.IPAddressChoice_st*, %struct.IPAddressChoice_st** %ipAddressChoice, align 8, !tbaa !15
  br label %if.end27

if.end27:                                         ; preds = %land.lhs.true20.if.end27_crit_edge, %if.end15
  %7 = phi %struct.IPAddressChoice_st* [ %.pre40, %land.lhs.true20.if.end27_crit_edge ], [ %0, %if.end15 ]
  %type29 = getelementptr inbounds %struct.IPAddressChoice_st, %struct.IPAddressChoice_st* %7, i64 0, i32 0
  store i32 0, i32* %type29, align 8, !tbaa !16
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true20, %land.lhs.true10, %entry, %lor.lhs.false, %land.lhs.true, %if.end27
  %retval.0 = phi i32 [ 1, %if.end27 ], [ 0, %land.lhs.true ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 1, %land.lhs.true10 ], [ 0, %land.lhs.true20 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.IPAddressFamily_st* @make_IPAddressFamily(%struct.stack_st_IPAddressFamily* noundef %addr, i32 noundef %afi, i32* noundef readonly %safi) unnamed_addr #1 {
entry:
  %key = alloca [3 x i8], align 1
  %0 = getelementptr inbounds [3 x i8], [3 x i8]* %key, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 3, i8* nonnull %0) #12
  %shr = lshr i32 %afi, 8
  %conv = trunc i32 %shr to i8
  store i8 %conv, i8* %0, align 1, !tbaa !14
  %conv2 = trunc i32 %afi to i8
  %arrayidx3 = getelementptr inbounds [3 x i8], [3 x i8]* %key, i64 0, i64 1
  store i8 %conv2, i8* %arrayidx3, align 1, !tbaa !14
  %cmp.not = icmp eq i32* %safi, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %safi, align 4, !tbaa !18
  %conv6 = trunc i32 %1 to i8
  %arrayidx7 = getelementptr inbounds [3 x i8], [3 x i8]* %key, i64 0, i64 2
  store i8 %conv6, i8* %arrayidx7, align 1, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %keylen.0 = phi i32 [ 3, %if.then ], [ 2, %entry ]
  %call = call fastcc %struct.stack_st* @ossl_check_const_IPAddressFamily_sk_type(%struct.stack_st_IPAddressFamily* noundef %addr) #11
  %call880 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #10
  %cmp981 = icmp sgt i32 %call880, 0
  br i1 %cmp981, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %conv16 = zext i32 %keylen.0 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.082 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %call12 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.082) #10
  %addressFamily = bitcast i8* %call12 to %struct.asn1_string_st**
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %addressFamily, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %2, i64 0, i32 0
  %3 = load i32, i32* %length, align 8, !tbaa !13
  %cmp13 = icmp eq i32 %3, %keylen.0
  br i1 %cmp13, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %2, i64 0, i32 2
  %4 = load i8*, i8** %data, align 8, !tbaa !9
  %call17 = call i32 @memcmp(i8* noundef %4, i8* noundef nonnull %0, i64 noundef %conv16) #13
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %cleanup.loopexit, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %inc = add nuw nsw i32 %i.082, 1
  %call8 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #10
  %cmp9 = icmp slt i32 %inc, %call8
  br i1 %cmp9, label %for.body, label %for.end, !llvm.loop !19

for.end:                                          ; preds = %for.inc, %if.end
  %call20 = call %struct.IPAddressFamily_st* @IPAddressFamily_new() #11
  %cmp21 = icmp eq %struct.IPAddressFamily_st* %call20, null
  br i1 %cmp21, label %err, label %if.end24

if.end24:                                         ; preds = %for.end
  %ipAddressChoice = getelementptr inbounds %struct.IPAddressFamily_st, %struct.IPAddressFamily_st* %call20, i64 0, i32 1
  %5 = load %struct.IPAddressChoice_st*, %struct.IPAddressChoice_st** %ipAddressChoice, align 8, !tbaa !15
  %cmp25 = icmp eq %struct.IPAddressChoice_st* %5, null
  br i1 %cmp25, label %land.lhs.true27, label %if.end33

land.lhs.true27:                                  ; preds = %if.end24
  %call28 = call %struct.IPAddressChoice_st* @IPAddressChoice_new() #11
  store %struct.IPAddressChoice_st* %call28, %struct.IPAddressChoice_st** %ipAddressChoice, align 8, !tbaa !15
  %cmp30 = icmp eq %struct.IPAddressChoice_st* %call28, null
  br i1 %cmp30, label %err, label %if.end33

if.end33:                                         ; preds = %land.lhs.true27, %if.end24
  %addressFamily34 = getelementptr inbounds %struct.IPAddressFamily_st, %struct.IPAddressFamily_st* %call20, i64 0, i32 0
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %addressFamily34, align 8, !tbaa !4
  %cmp35 = icmp eq %struct.asn1_string_st* %6, null
  br i1 %cmp35, label %land.lhs.true37, label %if.end43

land.lhs.true37:                                  ; preds = %if.end33
  %call38 = call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #10
  store %struct.asn1_string_st* %call38, %struct.asn1_string_st** %addressFamily34, align 8, !tbaa !4
  %cmp40 = icmp eq %struct.asn1_string_st* %call38, null
  br i1 %cmp40, label %err, label %if.end43

if.end43:                                         ; preds = %land.lhs.true37, %if.end33
  %7 = phi %struct.asn1_string_st* [ %call38, %land.lhs.true37 ], [ %6, %if.end33 ]
  %call46 = call i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef nonnull %7, i8* noundef nonnull %0, i32 noundef %keylen.0) #10
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %err, label %if.end49

if.end49:                                         ; preds = %if.end43
  %call50 = call fastcc %struct.stack_st* @ossl_check_IPAddressFamily_sk_type(%struct.stack_st_IPAddressFamily* noundef %addr) #11
  %8 = bitcast %struct.IPAddressFamily_st* %call20 to i8*
  %call52 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call50, i8* noundef nonnull %8) #10
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %err, label %cleanup

err:                                              ; preds = %if.end49, %if.end43, %land.lhs.true37, %land.lhs.true27, %for.end
  call void @IPAddressFamily_free(%struct.IPAddressFamily_st* noundef %call20) #11
  br label %cleanup

cleanup.loopexit:                                 ; preds = %land.lhs.true
  %9 = bitcast i8* %call12 to %struct.IPAddressFamily_st*
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.end49, %err
  %retval.0 = phi %struct.IPAddressFamily_st* [ null, %err ], [ %call20, %if.end49 ], [ %9, %cleanup.loopexit ]
  call void @llvm.lifetime.end.p0i8(i64 3, i8* nonnull %0) #12
  ret %struct.IPAddressFamily_st* %retval.0
}

declare i32* @ASN1_NULL_new() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: noinline nounwind uwtable
define i32 @X509v3_addr_add_prefix(%struct.stack_st_IPAddressFamily* noundef %addr, i32 noundef %afi, i32* noundef %safi, i8* noundef %a, i32 noundef %prefixlen) local_unnamed_addr #1 {
entry:
  %aor = alloca %struct.IPAddressOrRange_st*, align 8
  %call = tail call fastcc %struct.stack_st_IPAddressOrRange* @make_prefix_or_range(%struct.stack_st_IPAddressFamily* noundef %addr, i32 noundef %afi, i32* noundef %safi) #11
  %0 = bitcast %struct.IPAddressOrRange_st** %aor to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  %cmp = icmp eq %struct.stack_st_IPAddressOrRange* %call, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i32 @make_addressPrefix(%struct.IPAddressOrRange_st** noundef nonnull %aor, i8* noundef %a, i32 noundef %prefixlen) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_IPAddressOrRange_sk_type(%struct.stack_st_IPAddressOrRange* noundef nonnull %call) #11
  %1 = load %struct.IPAddressOrRange_st*, %struct.IPAddressOrRange_st** %aor, align 8, !tbaa !21
  %2 = bitcast %struct.IPAddressOrRange_st* %1 to i8*
  %call4 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call2, i8* noundef %2) #10
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end
  tail call void @IPAddressOrRange_free(%struct.IPAddressOrRange_st* noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %lor.lhs.false, %if.end7
  %retval.0 = phi i32 [ 0, %if.end7 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_IPAddressOrRange* @make_prefix_or_range(%struct.stack_st_IPAddressFamily* noundef %addr, i32 noundef %afi, i32* noundef %safi) unnamed_addr #1 {
entry:
  %call = tail call fastcc %struct.IPAddressFamily_st* @make_IPAddressFamily(%struct.stack_st_IPAddressFamily* noundef %addr, i32 noundef %afi, i32* noundef %safi) #11
  %cmp = icmp eq %struct.IPAddressFamily_st* %call, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %ipAddressChoice = getelementptr inbounds %struct.IPAddressFamily_st, %struct.IPAddressFamily_st* %call, i64 0, i32 1
  %0 = load %struct.IPAddressChoice_st*, %struct.IPAddressChoice_st** %ipAddressChoice, align 8, !tbaa !15
  %cmp1 = icmp eq %struct.IPAddressChoice_st* %0, null
  br i1 %cmp1, label %cleanup, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %type = getelementptr inbounds %struct.IPAddressChoice_st, %struct.IPAddressChoice_st* %0, i64 0, i32 0
  %1 = load i32, i32* %type, align 8, !tbaa !16
  switch i32 %1, label %if.end16 [
    i32 0, label %land.lhs.true
    i32 1, label %if.end13
  ]

land.lhs.true:                                    ; preds = %lor.lhs.false2
  %inherit = getelementptr inbounds %struct.IPAddressChoice_st, %struct.IPAddressChoice_st* %0, i64 0, i32 1, i32 0
  %2 = load i32*, i32** %inherit, align 8, !tbaa !14
  %cmp6.not = icmp eq i32* %2, null
  br i1 %cmp6.not, label %if.end16, label %cleanup

if.end13:                                         ; preds = %lor.lhs.false2
  %u12 = getelementptr inbounds %struct.IPAddressChoice_st, %struct.IPAddressChoice_st* %0, i64 0, i32 1
  %addressesOrRanges = bitcast %union.anon.0* %u12 to %struct.stack_st_IPAddressOrRange**
  %3 = load %struct.stack_st_IPAddressOrRange*, %struct.stack_st_IPAddressOrRange** %addressesOrRanges, align 8, !tbaa !14
  %cmp14.not = icmp eq %struct.stack_st_IPAddressOrRange* %3, null
  br i1 %cmp14.not, label %if.end16, label %cleanup

if.end16:                                         ; preds = %lor.lhs.false2, %land.lhs.true, %if.end13
  %call17 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #10
  %4 = bitcast %struct.stack_st* %call17 to %struct.stack_st_IPAddressOrRange*
  %cmp18 = icmp eq %struct.stack_st* %call17, null
  br i1 %cmp18, label %cleanup, label %if.end20

if.end20:                                         ; preds = %if.end16
  switch i32 %afi, label %sw.epilog [
    i32 1, label %sw.epilog.sink.split
    i32 2, label %sw.bb24
  ]

sw.bb24:                                          ; preds = %if.end20
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.end20, %sw.bb24
  %v6IPAddressOrRange_cmp.sink = phi i32 (%struct.IPAddressOrRange_st**, %struct.IPAddressOrRange_st**)* [ @v6IPAddressOrRange_cmp, %sw.bb24 ], [ @v4IPAddressOrRange_cmp, %if.end20 ]
  %call25 = tail call fastcc %struct.stack_st* @ossl_check_IPAddressOrRange_sk_type(%struct.stack_st_IPAddressOrRange* noundef nonnull %4) #11
  %call26 = tail call fastcc i32 (i8*, i8*)* @ossl_check_IPAddressOrRange_compfunc_type(i32 (%struct.IPAddressOrRange_st**, %struct.IPAddressOrRange_st**)* noundef nonnull %v6IPAddressOrRange_cmp.sink) #11
  %call27 = tail call i32 (i8*, i8*)* @OPENSSL_sk_set_cmp_func(%struct.stack_st* noundef %call25, i32 (i8*, i8*)* noundef %call26) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end20
  %5 = load %struct.IPAddressChoice_st*, %struct.IPAddressChoice_st** %ipAddressChoice, align 8, !tbaa !15
  %type29 = getelementptr inbounds %struct.IPAddressChoice_st, %struct.IPAddressChoice_st* %5, i64 0, i32 0
  store i32 1, i32* %type29, align 8, !tbaa !16
  %u31 = getelementptr inbounds %struct.IPAddressChoice_st, %struct.IPAddressChoice_st* %5, i64 0, i32 1
  %6 = bitcast %union.anon.0* %u31 to %struct.stack_st**
  store %struct.stack_st* %call17, %struct.stack_st** %6, align 8, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end13, %entry, %lor.lhs.false, %land.lhs.true, %sw.epilog
  %retval.0 = phi %struct.stack_st_IPAddressOrRange* [ %4, %sw.epilog ], [ null, %land.lhs.true ], [ null, %lor.lhs.false ], [ null, %entry ], [ %3, %if.end13 ], [ null, %if.end16 ]
  ret %struct.stack_st_IPAddressOrRange* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @make_addressPrefix(%struct.IPAddressOrRange_st** nocapture noundef writeonly %result, i8* noundef %addr, i32 noundef %prefixlen) unnamed_addr #1 {
entry:
  %add = add nsw i32 %prefixlen, 7
  %div = sdiv i32 %add, 8
  %rem = srem i32 %prefixlen, 8
  %call = tail call %struct.IPAddressOrRange_st* @IPAddressOrRange_new() #11
  %cmp = icmp eq %struct.IPAddressOrRange_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.IPAddressOrRange_st, %struct.IPAddressOrRange_st* %call, i64 0, i32 0
  store i32 0, i32* %type, align 8, !tbaa !22
  %addressPrefix = getelementptr inbounds %struct.IPAddressOrRange_st, %struct.IPAddressOrRange_st* %call, i64 0, i32 1, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %addressPrefix, align 8, !tbaa !14
  %cmp1 = icmp eq %struct.asn1_string_st* %0, null
  br i1 %cmp1, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %call2 = tail call %struct.asn1_string_st* @ASN1_BIT_STRING_new() #10
  store %struct.asn1_string_st* %call2, %struct.asn1_string_st** %addressPrefix, align 8, !tbaa !14
  %cmp5 = icmp eq %struct.asn1_string_st* %call2, null
  br i1 %cmp5, label %err, label %if.end7

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %1 = phi %struct.asn1_string_st* [ %call2, %land.lhs.true ], [ %0, %if.end ]
  %call10 = tail call i32 @ASN1_BIT_STRING_set(%struct.asn1_string_st* noundef nonnull %1, i8* noundef %addr, i32 noundef %div) #10
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %err, label %if.end12

if.end12:                                         ; preds = %if.end7
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %addressPrefix, align 8, !tbaa !14
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %2, i64 0, i32 3
  %3 = load i64, i64* %flags, align 8, !tbaa !24
  %and = and i64 %3, -8
  store i64 %and, i64* %flags, align 8, !tbaa !24
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %addressPrefix, align 8, !tbaa !14
  %flags17 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %4, i64 0, i32 3
  %5 = load i64, i64* %flags17, align 8, !tbaa !24
  %or = or i64 %5, 8
  store i64 %or, i64* %flags17, align 8, !tbaa !24
  %cmp18 = icmp sgt i32 %rem, 0
  br i1 %cmp18, label %if.then19, label %if.end30

if.then19:                                        ; preds = %if.end12
  %neg = ashr i32 -256, %rem
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %addressPrefix, align 8, !tbaa !14
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %6, i64 0, i32 2
  %7 = load i8*, i8** %data, align 8, !tbaa !9
  %sub = add nsw i32 %div, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !14
  %9 = trunc i32 %neg to i8
  %conv23 = and i8 %8, %9
  store i8 %conv23, i8* %arrayidx, align 1, !tbaa !14
  %sub24 = sub nuw nsw i32 8, %rem
  %10 = zext i32 %sub24 to i64
  %11 = load %struct.asn1_string_st*, %struct.asn1_string_st** %addressPrefix, align 8, !tbaa !14
  %flags28 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %11, i64 0, i32 3
  %12 = load i64, i64* %flags28, align 8, !tbaa !24
  %or29 = or i64 %12, %10
  store i64 %or29, i64* %flags28, align 8, !tbaa !24
  br label %if.end30

if.end30:                                         ; preds = %if.then19, %if.end12
  store %struct.IPAddressOrRange_st* %call, %struct.IPAddressOrRange_st** %result, align 8, !tbaa !21
  br label %cleanup

err:                                              ; preds = %if.end7, %land.lhs.true
  tail call void @IPAddressOrRange_free(%struct.IPAddressOrRange_st* noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %err, %if.end30
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end30 ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_IPAddressOrRange_sk_type(%struct.stack_st_IPAddressOrRange* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_IPAddressOrRange* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509v3_addr_add_range(%struct.stack_st_IPAddressFamily* noundef %addr, i32 noundef %afi, i32* noundef %safi, i8* noundef %min, i8* noundef %max) local_unnamed_addr #1 {
entry:
  %aor = alloca %struct.IPAddressOrRange_st*, align 8
  %call = tail call fastcc %struct.stack_st_IPAddressOrRange* @make_prefix_or_range(%struct.stack_st_IPAddressFamily* noundef %addr, i32 noundef %afi, i32* noundef %safi) #11
  %0 = bitcast %struct.IPAddressOrRange_st** %aor to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  %cmp = icmp eq %struct.stack_st_IPAddressOrRange* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @length_from_afi(i32 noundef %afi) #11
  %call2 = call fastcc i32 @make_addressRange(%struct.IPAddressOrRange_st** noundef nonnull %aor, i8* noundef %min, i8* noundef %max, i32 noundef %call1) #11
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc %struct.stack_st* @ossl_check_IPAddressOrRange_sk_type(%struct.stack_st_IPAddressOrRange* noundef nonnull %call) #11
  %1 = load %struct.IPAddressOrRange_st*, %struct.IPAddressOrRange_st** %aor, align 8, !tbaa !21
  %2 = bitcast %struct.IPAddressOrRange_st* %1 to i8*
  %call7 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call5, i8* noundef %2) #10
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %cleanup

if.end10:                                         ; preds = %if.end4
  tail call void @IPAddressOrRange_free(%struct.IPAddressOrRange_st* noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end, %entry, %if.end10
  %retval.0 = phi i32 [ 0, %if.end10 ], [ 0, %entry ], [ 0, %if.end ], [ 1, %if.end4 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @length_from_afi(i32 noundef %afi) unnamed_addr #0 {
entry:
  %switch.selectcmp = icmp eq i32 %afi, 2
  %switch.select = select i1 %switch.selectcmp, i32 16, i32 0
  %switch.selectcmp2 = icmp eq i32 %afi, 1
  %switch.select3 = select i1 %switch.selectcmp2, i32 4, i32 %switch.select
  ret i32 %switch.select3
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @make_addressRange(%struct.IPAddressOrRange_st** nocapture noundef writeonly %result, i8* noundef %min, i8* noundef %max, i32 noundef %length) unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @range_should_be_prefix(i8* noundef %min, i8* noundef %max, i32 noundef %length) #11
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @make_addressPrefix(%struct.IPAddressOrRange_st** noundef %result, i8* noundef %min, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.IPAddressOrRange_st* @IPAddressOrRange_new() #11
  %cmp3 = icmp eq %struct.IPAddressOrRange_st* %call2, null
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.IPAddressOrRange_st, %struct.IPAddressOrRange_st* %call2, i64 0, i32 0
  store i32 1, i32* %type, align 8, !tbaa !22
  %call6 = tail call %struct.IPAddressRange_st* @IPAddressRange_new() #11
  %u = getelementptr inbounds %struct.IPAddressOrRange_st, %struct.IPAddressOrRange_st* %call2, i64 0, i32 1
  %addressRange = bitcast %union.anon* %u to %struct.IPAddressRange_st**
  store %struct.IPAddressRange_st* %call6, %struct.IPAddressRange_st** %addressRange, align 8, !tbaa !14
  %cmp7 = icmp eq %struct.IPAddressRange_st* %call6, null
  br i1 %cmp7, label %err, label %if.end9

if.end9:                                          ; preds = %if.end5
  %min12 = getelementptr inbounds %struct.IPAddressRange_st, %struct.IPAddressRange_st* %call6, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %min12, align 8, !tbaa !25
  %cmp13 = icmp eq %struct.asn1_string_st* %0, null
  br i1 %cmp13, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %if.end9
  %call14 = tail call %struct.asn1_string_st* @ASN1_BIT_STRING_new() #10
  %1 = load %struct.IPAddressRange_st*, %struct.IPAddressRange_st** %addressRange, align 8, !tbaa !14
  %min17 = getelementptr inbounds %struct.IPAddressRange_st, %struct.IPAddressRange_st* %1, i64 0, i32 0
  store %struct.asn1_string_st* %call14, %struct.asn1_string_st** %min17, align 8, !tbaa !25
  %cmp18 = icmp eq %struct.asn1_string_st* %call14, null
  br i1 %cmp18, label %err, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  %.pre = load %struct.IPAddressRange_st*, %struct.IPAddressRange_st** %addressRange, align 8, !tbaa !14
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %if.end9
  %2 = phi %struct.IPAddressRange_st* [ %.pre, %land.lhs.true.if.end20_crit_edge ], [ %call6, %if.end9 ]
  %max23 = getelementptr inbounds %struct.IPAddressRange_st, %struct.IPAddressRange_st* %2, i64 0, i32 1
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %max23, align 8, !tbaa !27
  %cmp24 = icmp eq %struct.asn1_string_st* %3, null
  br i1 %cmp24, label %land.lhs.true25, label %if.end32

land.lhs.true25:                                  ; preds = %if.end20
  %call26 = tail call %struct.asn1_string_st* @ASN1_BIT_STRING_new() #10
  %4 = load %struct.IPAddressRange_st*, %struct.IPAddressRange_st** %addressRange, align 8, !tbaa !14
  %max29 = getelementptr inbounds %struct.IPAddressRange_st, %struct.IPAddressRange_st* %4, i64 0, i32 1
  store %struct.asn1_string_st* %call26, %struct.asn1_string_st** %max29, align 8, !tbaa !27
  %cmp30 = icmp eq %struct.asn1_string_st* %call26, null
  br i1 %cmp30, label %err, label %if.end32

if.end32:                                         ; preds = %land.lhs.true25, %if.end20
  %5 = zext i32 %length to i64
  %smin = call i32 @llvm.smin.i32(i32 %length, i32 0)
  br label %for.cond

for.cond:                                         ; preds = %land.rhs, %if.end32
  %indvars.iv = phi i64 [ %7, %land.rhs ], [ %5, %if.end32 ]
  %6 = trunc i64 %indvars.iv to i32
  %cmp33 = icmp sgt i32 %6, 0
  br i1 %cmp33, label %land.rhs, label %for.end

land.rhs:                                         ; preds = %for.cond
  %7 = add nsw i64 %indvars.iv, -1
  %arrayidx = getelementptr inbounds i8, i8* %min, i64 %7
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !14
  %cmp34 = icmp eq i8 %8, 0
  br i1 %cmp34, label %for.cond, label %for.end.split.loop.exit180, !llvm.loop !28

for.end.split.loop.exit180:                       ; preds = %land.rhs
  %9 = trunc i64 %indvars.iv to i32
  br label %for.end

for.end:                                          ; preds = %for.cond, %for.end.split.loop.exit180
  %i.0.lcssa = phi i32 [ %9, %for.end.split.loop.exit180 ], [ %smin, %for.cond ]
  %10 = load %struct.IPAddressRange_st*, %struct.IPAddressRange_st** %addressRange, align 8, !tbaa !14
  %min38 = getelementptr inbounds %struct.IPAddressRange_st, %struct.IPAddressRange_st* %10, i64 0, i32 0
  %11 = load %struct.asn1_string_st*, %struct.asn1_string_st** %min38, align 8, !tbaa !25
  %call39 = tail call i32 @ASN1_BIT_STRING_set(%struct.asn1_string_st* noundef %11, i8* noundef %min, i32 noundef %i.0.lcssa) #10
  %tobool.not = icmp eq i32 %call39, 0
  br i1 %tobool.not, label %err, label %if.end41

if.end41:                                         ; preds = %for.end
  %12 = load %struct.IPAddressRange_st*, %struct.IPAddressRange_st** %addressRange, align 8, !tbaa !14
  %min44 = getelementptr inbounds %struct.IPAddressRange_st, %struct.IPAddressRange_st* %12, i64 0, i32 0
  %13 = load %struct.asn1_string_st*, %struct.asn1_string_st** %min44, align 8, !tbaa !25
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %13, i64 0, i32 3
  %14 = load i64, i64* %flags, align 8, !tbaa !24
  %and = and i64 %14, -8
  store i64 %and, i64* %flags, align 8, !tbaa !24
  %15 = load %struct.IPAddressRange_st*, %struct.IPAddressRange_st** %addressRange, align 8, !tbaa !14
  %min47 = getelementptr inbounds %struct.IPAddressRange_st, %struct.IPAddressRange_st* %15, i64 0, i32 0
  %16 = load %struct.asn1_string_st*, %struct.asn1_string_st** %min47, align 8, !tbaa !25
  %flags48 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %16, i64 0, i32 3
  %17 = load i64, i64* %flags48, align 8, !tbaa !24
  %or = or i64 %17, 8
  store i64 %or, i64* %flags48, align 8, !tbaa !24
  br i1 %cmp33, label %if.then51, label %for.cond67.preheader

if.then51:                                        ; preds = %if.end41
  %sub52 = add nsw i32 %i.0.lcssa, -1
  %18 = zext i32 %sub52 to i64
  %arrayidx54 = getelementptr inbounds i8, i8* %min, i64 %18
  %19 = load i8, i8* %arrayidx54, align 1, !tbaa !14
  %conv55 = zext i8 %19 to i32
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %if.then51
  %j.0 = phi i32 [ 1, %if.then51 ], [ %inc, %while.cond ]
  %shr = lshr i32 255, %j.0
  %and56 = and i32 %shr, %conv55
  %cmp57.not = icmp eq i32 %and56, 0
  %inc = add nuw nsw i32 %j.0, 1
  br i1 %cmp57.not, label %while.end, label %while.cond, !llvm.loop !29

while.end:                                        ; preds = %while.cond
  %sub59 = sub nsw i32 8, %j.0
  %conv60 = sext i32 %sub59 to i64
  %20 = load %struct.IPAddressRange_st*, %struct.IPAddressRange_st** %addressRange, align 8, !tbaa !14
  %min63 = getelementptr inbounds %struct.IPAddressRange_st, %struct.IPAddressRange_st* %20, i64 0, i32 0
  %21 = load %struct.asn1_string_st*, %struct.asn1_string_st** %min63, align 8, !tbaa !25
  %flags64 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %21, i64 0, i32 3
  %22 = load i64, i64* %flags64, align 8, !tbaa !24
  %or65 = or i64 %22, %conv60
  store i64 %or65, i64* %flags64, align 8, !tbaa !24
  br label %for.cond67.preheader

for.cond67.preheader:                             ; preds = %while.end, %if.end41
  br label %for.cond67

for.cond67:                                       ; preds = %for.cond67.preheader, %land.rhs70
  %indvars.iv175 = phi i64 [ %24, %land.rhs70 ], [ %5, %for.cond67.preheader ]
  %23 = trunc i64 %indvars.iv175 to i32
  %cmp68 = icmp sgt i32 %23, 0
  br i1 %cmp68, label %land.rhs70, label %for.end81

land.rhs70:                                       ; preds = %for.cond67
  %24 = add nsw i64 %indvars.iv175, -1
  %arrayidx73 = getelementptr inbounds i8, i8* %max, i64 %24
  %25 = load i8, i8* %arrayidx73, align 1, !tbaa !14
  %cmp75 = icmp eq i8 %25, -1
  br i1 %cmp75, label %for.cond67, label %for.end81.split.loop.exit183, !llvm.loop !30

for.end81.split.loop.exit183:                     ; preds = %land.rhs70
  %26 = trunc i64 %indvars.iv175 to i32
  br label %for.end81

for.end81:                                        ; preds = %for.cond67, %for.end81.split.loop.exit183
  %i.1.lcssa = phi i32 [ %26, %for.end81.split.loop.exit183 ], [ %smin, %for.cond67 ]
  %27 = load %struct.IPAddressRange_st*, %struct.IPAddressRange_st** %addressRange, align 8, !tbaa !14
  %max84 = getelementptr inbounds %struct.IPAddressRange_st, %struct.IPAddressRange_st* %27, i64 0, i32 1
  %28 = load %struct.asn1_string_st*, %struct.asn1_string_st** %max84, align 8, !tbaa !27
  %call85 = tail call i32 @ASN1_BIT_STRING_set(%struct.asn1_string_st* noundef %28, i8* noundef %max, i32 noundef %i.1.lcssa) #10
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %err, label %if.end88

if.end88:                                         ; preds = %for.end81
  %29 = load %struct.IPAddressRange_st*, %struct.IPAddressRange_st** %addressRange, align 8, !tbaa !14
  %max91 = getelementptr inbounds %struct.IPAddressRange_st, %struct.IPAddressRange_st* %29, i64 0, i32 1
  %30 = load %struct.asn1_string_st*, %struct.asn1_string_st** %max91, align 8, !tbaa !27
  %flags92 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %30, i64 0, i32 3
  %31 = load i64, i64* %flags92, align 8, !tbaa !24
  %and93 = and i64 %31, -8
  store i64 %and93, i64* %flags92, align 8, !tbaa !24
  %32 = load %struct.IPAddressRange_st*, %struct.IPAddressRange_st** %addressRange, align 8, !tbaa !14
  %max96 = getelementptr inbounds %struct.IPAddressRange_st, %struct.IPAddressRange_st* %32, i64 0, i32 1
  %33 = load %struct.asn1_string_st*, %struct.asn1_string_st** %max96, align 8, !tbaa !27
  %flags97 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %33, i64 0, i32 3
  %34 = load i64, i64* %flags97, align 8, !tbaa !24
  %or98 = or i64 %34, 8
  store i64 %or98, i64* %flags97, align 8, !tbaa !24
  br i1 %cmp68, label %if.then101, label %if.end124

if.then101:                                       ; preds = %if.end88
  %sub103 = add nsw i32 %i.1.lcssa, -1
  %35 = zext i32 %sub103 to i64
  %arrayidx105 = getelementptr inbounds i8, i8* %max, i64 %35
  %36 = load i8, i8* %arrayidx105, align 1, !tbaa !14
  %conv108 = zext i8 %36 to i32
  br label %while.cond107

while.cond107:                                    ; preds = %while.cond107, %if.then101
  %j106.0 = phi i32 [ 1, %if.then101 ], [ %inc115, %while.cond107 ]
  %shr109 = lshr i32 255, %j106.0
  %and110 = and i32 %shr109, %conv108
  %cmp112.not = icmp eq i32 %and110, %shr109
  %inc115 = add nuw nsw i32 %j106.0, 1
  br i1 %cmp112.not, label %while.end116, label %while.cond107, !llvm.loop !31

while.end116:                                     ; preds = %while.cond107
  %sub117 = sub nsw i32 8, %j106.0
  %conv118 = sext i32 %sub117 to i64
  %37 = load %struct.IPAddressRange_st*, %struct.IPAddressRange_st** %addressRange, align 8, !tbaa !14
  %max121 = getelementptr inbounds %struct.IPAddressRange_st, %struct.IPAddressRange_st* %37, i64 0, i32 1
  %38 = load %struct.asn1_string_st*, %struct.asn1_string_st** %max121, align 8, !tbaa !27
  %flags122 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %38, i64 0, i32 3
  %39 = load i64, i64* %flags122, align 8, !tbaa !24
  %or123 = or i64 %39, %conv118
  store i64 %or123, i64* %flags122, align 8, !tbaa !24
  br label %if.end124

if.end124:                                        ; preds = %while.end116, %if.end88
  store %struct.IPAddressOrRange_st* %call2, %struct.IPAddressOrRange_st** %result, align 8, !tbaa !21
  br label %cleanup

err:                                              ; preds = %for.end81, %for.end, %land.lhs.true25, %land.lhs.true, %if.end5
  tail call void @IPAddressOrRange_free(%struct.IPAddressOrRange_st* noundef nonnull %call2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %err, %if.end124, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %err ], [ 1, %if.end124 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509v3_addr_get_range(%struct.IPAddressOrRange_st* noundef %aor, i32 noundef %afi, i8* noundef %min, i8* noundef %max, i32 noundef %length) local_unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @length_from_afi(i32 noundef %afi) #11
  %cmp = icmp eq %struct.IPAddressOrRange_st* %aor, null
  %cmp1 = icmp eq i8* %min, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i8* %max, null
  %or.cond14 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq i32 %call, 0
  %or.cond15 = select i1 %or.cond14, i1 true, i1 %cmp5
  %cmp7 = icmp sgt i32 %call, %length
  %or.cond25 = select i1 %or.cond15, i1 true, i1 %cmp7
  br i1 %or.cond25, label %cleanup, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %entry
  %type = getelementptr inbounds %struct.IPAddressOrRange_st, %struct.IPAddressOrRange_st* %aor, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !22
  %switch = icmp ult i32 %0, 2
  br i1 %switch, label %lor.lhs.false12, label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false8
  %call13 = tail call fastcc i32 @extract_min_max(%struct.IPAddressOrRange_st* noundef nonnull %aor, i8* noundef nonnull %min, i8* noundef nonnull %max, i32 noundef %call) #11
  %tobool.not = icmp eq i32 %call13, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 %call
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false12, %lor.lhs.false8, %entry
  %retval.0 = phi i32 [ 0, %lor.lhs.false8 ], [ 0, %entry ], [ %spec.select, %lor.lhs.false12 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @extract_min_max(%struct.IPAddressOrRange_st* noundef readonly %aor, i8* noundef %min, i8* noundef %max, i32 noundef %length) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.IPAddressOrRange_st* %aor, null
  %cmp1 = icmp eq i8* %min, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i8* %max, null
  %or.cond21 = or i1 %or.cond, %cmp3
  br i1 %or.cond21, label %return, label %if.end

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.IPAddressOrRange_st, %struct.IPAddressOrRange_st* %aor, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !22
  switch i32 %0, label %return [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.end
  %addressPrefix = getelementptr inbounds %struct.IPAddressOrRange_st, %struct.IPAddressOrRange_st* %aor, i64 0, i32 1, i32 0
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %addressPrefix, align 8, !tbaa !14
  %call = tail call fastcc i32 @addr_expand(i8* noundef nonnull %min, %struct.asn1_string_st* noundef %1, i32 noundef %length, i8 noundef zeroext 0) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %return.sink.split

sw.bb8:                                           ; preds = %if.end
  %u9 = getelementptr inbounds %struct.IPAddressOrRange_st, %struct.IPAddressOrRange_st* %aor, i64 0, i32 1
  %addressRange = bitcast %union.anon* %u9 to %struct.IPAddressRange_st**
  %2 = load %struct.IPAddressRange_st*, %struct.IPAddressRange_st** %addressRange, align 8, !tbaa !14
  %min10 = getelementptr inbounds %struct.IPAddressRange_st, %struct.IPAddressRange_st* %2, i64 0, i32 0
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %min10, align 8, !tbaa !25
  %call11 = tail call fastcc i32 @addr_expand(i8* noundef nonnull %min, %struct.asn1_string_st* noundef %3, i32 noundef %length, i8 noundef zeroext 0) #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %return, label %land.rhs13

land.rhs13:                                       ; preds = %sw.bb8
  %4 = load %struct.IPAddressRange_st*, %struct.IPAddressRange_st** %addressRange, align 8, !tbaa !14
  %max16 = getelementptr inbounds %struct.IPAddressRange_st, %struct.IPAddressRange_st* %4, i64 0, i32 1
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb, %land.rhs13
  %max16.sink = phi %struct.asn1_string_st** [ %max16, %land.rhs13 ], [ %addressPrefix, %sw.bb ]
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %max16.sink, align 8, !tbaa !14
  %call17 = tail call fastcc i32 @addr_expand(i8* noundef nonnull %max, %struct.asn1_string_st* noundef %5, i32 noundef %length, i8 noundef zeroext -1) #11
  %tobool18 = icmp ne i32 %call17, 0
  %phi.cast = zext i1 %tobool18 to i32
  br label %return

return:                                           ; preds = %return.sink.split, %if.end, %sw.bb8, %sw.bb, %entry
  %retval.0.shrunk = phi i32 [ 0, %entry ], [ 0, %sw.bb ], [ 0, %sw.bb8 ], [ 0, %if.end ], [ %phi.cast, %return.sink.split ]
  ret i32 %retval.0.shrunk
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509v3_addr_is_canonical(%struct.stack_st_IPAddressFamily* noundef %addr) local_unnamed_addr #1 {
entry:
  %a_min = alloca [16 x i8], align 16
  %a_max = alloca [16 x i8], align 16
  %b_min = alloca [16 x i8], align 16
  %b_max = alloca [16 x i8], align 16
  %a = alloca %struct.IPAddressFamily_st*, align 8
  %b = alloca %struct.IPAddressFamily_st*, align 8
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %a_min, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* %a_max, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #12
  %2 = getelementptr inbounds [16 x i8], [16 x i8]* %b_min, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #12
  %3 = getelementptr inbounds [16 x i8], [16 x i8]* %b_max, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #12
  %cmp = icmp eq %struct.stack_st_IPAddressFamily* %addr, null
  br i1 %cmp, label %cleanup155, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_IPAddressFamily_sk_type(%struct.stack_st_IPAddressFamily* noundef nonnull %addr) #11
  %4 = bitcast %struct.IPAddressFamily_st** %a to i8*
  %5 = bitcast %struct.IPAddressFamily_st** %a to i8**
  %6 = bitcast %struct.IPAddressFamily_st** %b to i8*
  %7 = bitcast %struct.IPAddressFamily_st** %b to i8**
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %i.0 = phi i32 [ %add, %for.body ], [ 0, %for.cond.preheader ]
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #10
  %sub = add nsw i32 %call1, -1
  %cmp2 = icmp slt i32 %i.0, %sub
  br i1 %cmp2, label %for.body, label %for.cond12.preheader

for.cond12.preheader:                             ; preds = %for.cond
  %call14228 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #10
  %cmp15229 = icmp sgt i32 %call14228, 0
  br i1 %cmp15229, label %for.body16, label %cleanup155

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #12
  %call4 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.0) #10
  store i8* %call4, i8** %5, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #12
  %add = add nuw nsw i32 %i.0, 1
  %call6 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %add) #10
  store i8* %call6, i8** %7, align 8, !tbaa !21
  %call7 = call i32 @IPAddressFamily_cmp(%struct.IPAddressFamily_st** noundef nonnull %a, %struct.IPAddressFamily_st** noundef nonnull %b) #11
  %cmp8 = icmp sgt i32 %call7, -1
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #12
  br i1 %cmp8, label %cleanup155, label %for.cond, !llvm.loop !32

for.body16:                                       ; preds = %for.cond12.preheader, %for.inc152
  %i.1230 = phi i32 [ %inc153, %for.inc152 ], [ 0, %for.cond12.preheader ]
  %call18 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.1230) #10
  %8 = bitcast i8* %call18 to %struct.IPAddressFamily_st*
  %call19 = call i32 @X509v3_addr_get_afi(%struct.IPAddressFamily_st* noundef %8) #11
  %call20 = call fastcc i32 @length_from_afi(i32 noundef %call19) #11
  %cmp21 = icmp eq i8* %call18, null
  br i1 %cmp21, label %cleanup155, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body16
  %ipAddressChoice = getelementptr inbounds i8, i8* %call18, i64 8
  %9 = bitcast i8* %ipAddressChoice to %struct.IPAddressChoice_st**
  %10 = load %struct.IPAddressChoice_st*, %struct.IPAddressChoice_st** %9, align 8, !tbaa !15
  %cmp22 = icmp eq %struct.IPAddressChoice_st* %10, null
  br i1 %cmp22, label %cleanup155, label %if.end24

if.end24:                                         ; preds = %lor.lhs.false
  %type = getelementptr inbounds %struct.IPAddressChoice_st, %struct.IPAddressChoice_st* %10, i64 0, i32 0
  %11 = load i32, i32* %type, align 8, !tbaa !16
  switch i32 %11, label %cleanup155 [
    i32 0, label %for.inc152
    i32 1, label %sw.epilog
  ]

sw.epilog:                                        ; preds = %if.end24
  %u = getelementptr inbounds %struct.IPAddressChoice_st, %struct.IPAddressChoice_st* %10, i64 0, i32 1
  %addressesOrRanges = bitcast %union.anon.0* %u to %struct.stack_st_IPAddressOrRange**
  %12 = load %struct.stack_st_IPAddressOrRange*, %struct.stack_st_IPAddressOrRange** %addressesOrRanges, align 8, !tbaa !14
  %call27 = call fastcc %struct.stack_st* @ossl_check_const_IPAddressOrRange_sk_type(%struct.stack_st_IPAddressOrRange* noundef %12) #11
  %call28 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call27) #10
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %cleanup155, label %for.cond32.preheader

for.cond32.preheader:                             ; preds = %sw.epilog
  %call34224 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call27) #10
  %cmp36226 = icmp sgt i32 %call34224, 1
  br i1 %cmp36226, label %for.body37.lr.ph, label %for.end110

for.body37.lr.ph:                                 ; preds = %for.cond32.preheader
  %13 = zext i32 %call20 to i64
  br label %for.body37

for.body37:                                       ; preds = %for.body37.lr.ph, %for.inc108.critedge
  %j.0227 = phi i32 [ 0, %for.body37.lr.ph ], [ %add43, %for.inc108.critedge ]
  %call40 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call27, i32 noundef %j.0227) #10
  %14 = bitcast i8* %call40 to %struct.IPAddressOrRange_st*
  %add43 = add nuw nsw i32 %j.0227, 1
  %call44 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call27, i32 noundef %add43) #10
  %call46 = call fastcc i32 @extract_min_max(%struct.IPAddressOrRange_st* noundef %14, i8* noundef nonnull %0, i8* noundef nonnull %1, i32 noundef %call20) #11
  %tobool.not = icmp eq i32 %call46, 0
  br i1 %tobool.not, label %cleanup155, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %for.body37
  %15 = bitcast i8* %call44 to %struct.IPAddressOrRange_st*
  %call50 = call fastcc i32 @extract_min_max(%struct.IPAddressOrRange_st* noundef %15, i8* noundef nonnull %2, i8* noundef nonnull %3, i32 noundef %call20) #11
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %cleanup155, label %if.end53

if.end53:                                         ; preds = %lor.lhs.false47
  %call56 = call i32 @memcmp(i8* noundef nonnull %0, i8* noundef nonnull %2, i64 noundef %13) #13
  %cmp57 = icmp sgt i32 %call56, -1
  br i1 %cmp57, label %cleanup155, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %if.end53
  %call63 = call i32 @memcmp(i8* noundef nonnull %0, i8* noundef nonnull %1, i64 noundef %13) #13
  %cmp64 = icmp sgt i32 %call63, 0
  br i1 %cmp64, label %cleanup155, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %lor.lhs.false59
  %call70 = call i32 @memcmp(i8* noundef nonnull %2, i8* noundef nonnull %3, i64 noundef %13) #13
  %cmp71 = icmp sgt i32 %call70, 0
  br i1 %cmp71, label %cleanup155, label %for.cond76

for.cond76:                                       ; preds = %lor.lhs.false66, %land.rhs
  %indvars.iv = phi i64 [ %16, %land.rhs ], [ %13, %lor.lhs.false66 ]
  %16 = add nsw i64 %indvars.iv, -1
  %17 = trunc i64 %indvars.iv to i32
  %cmp77 = icmp sgt i32 %17, 0
  br i1 %cmp77, label %land.rhs, label %for.end85

land.rhs:                                         ; preds = %for.cond76
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %b_min, i64 0, i64 %16
  %18 = load i8, i8* %arrayidx, align 1, !tbaa !14
  %dec = add i8 %18, -1
  store i8 %dec, i8* %arrayidx, align 1, !tbaa !14
  %cmp80 = icmp eq i8 %18, 0
  br i1 %cmp80, label %for.cond76, label %for.end85, !llvm.loop !33

for.end85:                                        ; preds = %for.cond76, %land.rhs
  %call89 = call i32 @memcmp(i8* noundef nonnull %1, i8* noundef nonnull %2, i64 noundef %13) #13
  %cmp90 = icmp sgt i32 %call89, -1
  br i1 %cmp90, label %cleanup155, label %if.end93

if.end93:                                         ; preds = %for.end85
  %type94 = bitcast i8* %call40 to i32*
  %19 = load i32, i32* %type94, align 8, !tbaa !22
  %cmp95 = icmp eq i32 %19, 1
  br i1 %cmp95, label %land.lhs.true, label %for.inc108.critedge

land.lhs.true:                                    ; preds = %if.end93
  %call99 = call fastcc i32 @range_should_be_prefix(i8* noundef nonnull %0, i8* noundef nonnull %1, i32 noundef %call20) #11
  %cmp100 = icmp sgt i32 %call99, -1
  br i1 %cmp100, label %cleanup155, label %for.inc108.critedge

for.inc108.critedge:                              ; preds = %if.end93, %land.lhs.true
  %call34 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call27) #10
  %sub35 = add nsw i32 %call34, -1
  %cmp36 = icmp slt i32 %add43, %sub35
  br i1 %cmp36, label %for.body37, label %for.end110, !llvm.loop !34

for.end110:                                       ; preds = %for.inc108.critedge, %for.cond32.preheader
  %call112 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call27) #10
  %sub113 = add nsw i32 %call112, -1
  %call116 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call27, i32 noundef %sub113) #10
  %20 = bitcast i8* %call116 to %struct.IPAddressOrRange_st*
  %cmp117.not = icmp eq i8* %call116, null
  br i1 %cmp117.not, label %for.inc152, label %land.lhs.true119

land.lhs.true119:                                 ; preds = %for.end110
  %type120 = bitcast i8* %call116 to i32*
  %21 = load i32, i32* %type120, align 8, !tbaa !22
  %cmp121 = icmp eq i32 %21, 1
  br i1 %cmp121, label %if.then123, label %for.inc152

if.then123:                                       ; preds = %land.lhs.true119
  %call126 = call fastcc i32 @extract_min_max(%struct.IPAddressOrRange_st* noundef nonnull %20, i8* noundef nonnull %0, i8* noundef nonnull %1, i32 noundef %call20) #11
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %cleanup155, label %if.end129

if.end129:                                        ; preds = %if.then123
  %22 = zext i32 %call20 to i64
  %call133 = call i32 @memcmp(i8* noundef nonnull %0, i8* noundef nonnull %1, i64 noundef %22) #13
  %cmp134 = icmp sgt i32 %call133, 0
  br i1 %cmp134, label %cleanup155, label %lor.lhs.false136

lor.lhs.false136:                                 ; preds = %if.end129
  %call139 = call fastcc i32 @range_should_be_prefix(i8* noundef nonnull %0, i8* noundef nonnull %1, i32 noundef %call20) #11
  %cmp140 = icmp sgt i32 %call139, -1
  br i1 %cmp140, label %cleanup155, label %for.inc152

for.inc152:                                       ; preds = %if.end24, %for.end110, %land.lhs.true119, %lor.lhs.false136
  %inc153 = add nuw nsw i32 %i.1230, 1
  %call14 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #10
  %cmp15 = icmp slt i32 %inc153, %call14
  br i1 %cmp15, label %for.body16, label %cleanup155, !llvm.loop !35

cleanup155:                                       ; preds = %for.body, %for.inc152, %lor.lhs.false, %for.body16, %sw.epilog, %if.end24, %if.then123, %lor.lhs.false136, %if.end129, %lor.lhs.false47, %for.body37, %lor.lhs.false66, %lor.lhs.false59, %if.end53, %for.end85, %land.lhs.true, %for.cond12.preheader, %entry
  %retval.7 = phi i32 [ 1, %entry ], [ 1, %for.cond12.preheader ], [ 0, %land.lhs.true ], [ 0, %for.end85 ], [ 0, %if.end53 ], [ 0, %lor.lhs.false59 ], [ 0, %lor.lhs.false66 ], [ 0, %for.body37 ], [ 0, %lor.lhs.false47 ], [ 1, %for.inc152 ], [ 0, %lor.lhs.false ], [ 0, %for.body16 ], [ 0, %sw.epilog ], [ 0, %if.end24 ], [ 0, %if.then123 ], [ 0, %lor.lhs.false136 ], [ 0, %if.end129 ], [ 0, %for.body ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  ret i32 %retval.7
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_IPAddressFamily_sk_type(%struct.stack_st_IPAddressFamily* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_IPAddressFamily* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal i32 @IPAddressFamily_cmp(%struct.IPAddressFamily_st** nocapture noundef readonly %a_, %struct.IPAddressFamily_st** nocapture noundef readonly %b_) #5 {
entry:
  %0 = load %struct.IPAddressFamily_st*, %struct.IPAddressFamily_st** %a_, align 8, !tbaa !21
  %addressFamily = getelementptr inbounds %struct.IPAddressFamily_st, %struct.IPAddressFamily_st* %0, i64 0, i32 0
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %addressFamily, align 8, !tbaa !4
  %2 = load %struct.IPAddressFamily_st*, %struct.IPAddressFamily_st** %b_, align 8, !tbaa !21
  %addressFamily1 = getelementptr inbounds %struct.IPAddressFamily_st, %struct.IPAddressFamily_st* %2, i64 0, i32 0
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %addressFamily1, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %1, i64 0, i32 0
  %4 = load i32, i32* %length, align 8, !tbaa !13
  %length2 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %3, i64 0, i32 0
  %5 = load i32, i32* %length2, align 8, !tbaa !13
  %cmp.not = icmp sgt i32 %4, %5
  %. = select i1 %cmp.not, i32 %5, i32 %4
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %1, i64 0, i32 2
  %6 = load i8*, i8** %data, align 8, !tbaa !9
  %data6 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %3, i64 0, i32 2
  %7 = load i8*, i8** %data6, align 8, !tbaa !9
  %conv = sext i32 %. to i64
  %call = tail call i32 @memcmp(i8* noundef %6, i8* noundef %7, i64 noundef %conv) #13
  %tobool.not = icmp eq i32 %call, 0
  %sub = sub nsw i32 %4, %5
  %spec.select = select i1 %tobool.not, i32 %sub, i32 %call
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_IPAddressOrRange_sk_type(%struct.stack_st_IPAddressOrRange* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_IPAddressOrRange* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline nounwind readonly uwtable
define internal fastcc i32 @range_should_be_prefix(i8* noundef readonly %min, i8* noundef readonly %max, i32 noundef %length) unnamed_addr #7 {
entry:
  %0 = zext i32 %length to i64
  %call = tail call i32 @memcmp(i8* noundef %min, i8* noundef %max, i64 noundef %0) #13
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp2105 = icmp sgt i32 %length, 0
  br i1 %cmp2105, label %land.rhs, label %for.end

land.rhs:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i8, i8* %min, i64 %indvars.iv
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !14
  %arrayidx6 = getelementptr inbounds i8, i8* %max, i64 %indvars.iv
  %2 = load i8, i8* %arrayidx6, align 1, !tbaa !14
  %cmp8 = icmp eq i8 %1, %2
  br i1 %cmp8, label %for.inc, label %for.end.loopexit.split.loop.exit112

for.inc:                                          ; preds = %land.rhs
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %0
  br i1 %exitcond.not, label %for.end, label %land.rhs, !llvm.loop !36

for.end.loopexit.split.loop.exit112:              ; preds = %land.rhs
  %3 = trunc i64 %indvars.iv to i32
  br label %for.end

for.end:                                          ; preds = %for.inc, %for.end.loopexit.split.loop.exit112, %for.cond.preheader
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %3, %for.end.loopexit.split.loop.exit112 ], [ %length, %for.inc ]
  %smin = call i32 @llvm.smin.i32(i32 %length, i32 0)
  %4 = add i32 %smin, -1
  br label %for.cond10

for.cond10:                                       ; preds = %land.rhs18, %for.end
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %land.rhs18 ], [ %0, %for.end ]
  %indvars.iv.next110 = add nsw i64 %indvars.iv109, -1
  %5 = trunc i64 %indvars.iv109 to i32
  %cmp11 = icmp sgt i32 %5, 0
  br i1 %cmp11, label %land.lhs.true, label %for.end27

land.lhs.true:                                    ; preds = %for.cond10
  %idxprom13104 = and i64 %indvars.iv.next110, 4294967295
  %arrayidx14 = getelementptr inbounds i8, i8* %min, i64 %idxprom13104
  %6 = load i8, i8* %arrayidx14, align 1, !tbaa !14
  %cmp16 = icmp eq i8 %6, 0
  br i1 %cmp16, label %land.rhs18, label %for.end27.split.loop.exit114

land.rhs18:                                       ; preds = %land.lhs.true
  %arrayidx20 = getelementptr inbounds i8, i8* %max, i64 %idxprom13104
  %7 = load i8, i8* %arrayidx20, align 1, !tbaa !14
  %cmp22 = icmp eq i8 %7, -1
  br i1 %cmp22, label %for.cond10, label %for.end27.split.loop.exit117, !llvm.loop !37

for.end27.split.loop.exit114:                     ; preds = %land.lhs.true
  %indvars.le121 = trunc i64 %indvars.iv.next110 to i32
  %8 = trunc i64 %indvars.iv109 to i32
  br label %for.end27

for.end27.split.loop.exit117:                     ; preds = %land.rhs18
  %indvars.le = trunc i64 %indvars.iv.next110 to i32
  %9 = trunc i64 %indvars.iv109 to i32
  br label %for.end27

for.end27:                                        ; preds = %for.cond10, %for.end27.split.loop.exit117, %for.end27.split.loop.exit114
  %j.0.in.lcssa = phi i32 [ %8, %for.end27.split.loop.exit114 ], [ %9, %for.end27.split.loop.exit117 ], [ %smin, %for.cond10 ]
  %j.0.lcssa = phi i32 [ %indvars.le121, %for.end27.split.loop.exit114 ], [ %indvars.le, %for.end27.split.loop.exit117 ], [ %4, %for.cond10 ]
  %cmp28 = icmp slt i32 %i.0.lcssa, %j.0.lcssa
  br i1 %cmp28, label %cleanup, label %if.end31

if.end31:                                         ; preds = %for.end27
  %cmp32.not = icmp slt i32 %i.0.lcssa, %j.0.in.lcssa
  br i1 %cmp32.not, label %if.end35, label %if.then34

if.then34:                                        ; preds = %if.end31
  %mul = shl nsw i32 %i.0.lcssa, 3
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  %idxprom36 = zext i32 %i.0.lcssa to i64
  %arrayidx37 = getelementptr inbounds i8, i8* %min, i64 %idxprom36
  %10 = load i8, i8* %arrayidx37, align 1, !tbaa !14
  %arrayidx40 = getelementptr inbounds i8, i8* %max, i64 %idxprom36
  %11 = load i8, i8* %arrayidx40, align 1, !tbaa !14
  %xor101 = xor i8 %11, %10
  switch i8 %xor101, label %cleanup [
    i8 1, label %sw.epilog
    i8 3, label %sw.bb44
    i8 7, label %sw.bb45
    i8 15, label %sw.bb46
    i8 31, label %sw.bb47
    i8 63, label %sw.bb48
    i8 127, label %sw.bb49
  ]

sw.bb44:                                          ; preds = %if.end35
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.end35
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.end35
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end35
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.end35
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end35
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end35, %sw.bb49, %sw.bb48, %sw.bb47, %sw.bb46, %sw.bb45, %sw.bb44
  %j.1 = phi i32 [ 1, %sw.bb49 ], [ 2, %sw.bb48 ], [ 3, %sw.bb47 ], [ 4, %sw.bb46 ], [ 5, %sw.bb45 ], [ 6, %sw.bb44 ], [ 7, %if.end35 ]
  %and102 = and i8 %xor101, %10
  %cmp54.not = icmp eq i8 %and102, 0
  %and60103 = and i8 %xor101, %11
  %cmp62.not = icmp eq i8 %and60103, %xor101
  %or.cond = select i1 %cmp54.not, i1 %cmp62.not, i1 false
  br i1 %or.cond, label %if.else, label %cleanup

if.else:                                          ; preds = %sw.epilog
  %mul65 = shl nsw i32 %i.0.lcssa, 3
  %add = or i32 %j.1, %mul65
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end35, %for.end27, %entry, %if.else, %if.then34
  %retval.0 = phi i32 [ %mul, %if.then34 ], [ %add, %if.else ], [ -1, %entry ], [ -1, %for.end27 ], [ -1, %if.end35 ], [ -1, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509v3_addr_canonize(%struct.stack_st_IPAddressFamily* noundef %addr) local_unnamed_addr #1 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_IPAddressFamily_sk_type(%struct.stack_st_IPAddressFamily* noundef %addr) #11
  %call127 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #10
  %cmp28 = icmp sgt i32 %call127, 0
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc.critedge
  %i.029 = phi i32 [ %inc, %for.inc.critedge ], [ 0, %entry ]
  %call3 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.029) #10
  %ipAddressChoice = getelementptr inbounds i8, i8* %call3, i64 8
  %0 = bitcast i8* %ipAddressChoice to %struct.IPAddressChoice_st**
  %1 = load %struct.IPAddressChoice_st*, %struct.IPAddressChoice_st** %0, align 8, !tbaa !15
  %type = getelementptr inbounds %struct.IPAddressChoice_st, %struct.IPAddressChoice_st* %1, i64 0, i32 0
  %2 = load i32, i32* %type, align 8, !tbaa !16
  %cmp4 = icmp eq i32 %2, 1
  br i1 %cmp4, label %land.lhs.true, label %for.inc.critedge

land.lhs.true:                                    ; preds = %for.body
  %3 = bitcast i8* %call3 to %struct.IPAddressFamily_st*
  %u = getelementptr inbounds %struct.IPAddressChoice_st, %struct.IPAddressChoice_st* %1, i64 0, i32 1
  %addressesOrRanges = bitcast %union.anon.0* %u to %struct.stack_st_IPAddressOrRange**
  %4 = load %struct.stack_st_IPAddressOrRange*, %struct.stack_st_IPAddressOrRange** %addressesOrRanges, align 8, !tbaa !14
  %call6 = tail call i32 @X509v3_addr_get_afi(%struct.IPAddressFamily_st* noundef %3) #11
  %call7 = tail call fastcc i32 @IPAddressOrRanges_canonize(%struct.stack_st_IPAddressOrRange* noundef %4, i32 noundef %call6) #11
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %cleanup16, label %for.inc.critedge

for.inc.critedge:                                 ; preds = %for.body, %land.lhs.true
  %inc = add nuw nsw i32 %i.029, 1
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #10
  %cmp = icmp slt i32 %inc, %call1
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !38

for.end:                                          ; preds = %for.inc.critedge, %entry
  %call8 = tail call fastcc %struct.stack_st* @ossl_check_IPAddressFamily_sk_type(%struct.stack_st_IPAddressFamily* noundef %addr) #11
  %call10 = tail call i32 (i8*, i8*)* @OPENSSL_sk_set_cmp_func(%struct.stack_st* noundef %call8, i32 (i8*, i8*)* noundef bitcast (i32 (%struct.IPAddressFamily_st**, %struct.IPAddressFamily_st**)* @IPAddressFamily_cmp to i32 (i8*, i8*)*)) #10
  tail call void @OPENSSL_sk_sort(%struct.stack_st* noundef %call8) #10
  %call12 = tail call i32 @X509v3_addr_is_canonical(%struct.stack_st_IPAddressFamily* noundef %addr) #11
  %cmp13.not = icmp ne i32 %call12, 0
  %. = zext i1 %cmp13.not to i32
  br label %cleanup16

cleanup16:                                        ; preds = %land.lhs.true, %for.end
  %retval.2 = phi i32 [ %., %for.end ], [ 0, %land.lhs.true ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @IPAddressOrRanges_canonize(%struct.stack_st_IPAddressOrRange* noundef %aors, i32 noundef %afi) unnamed_addr #1 {
entry:
  %a_min = alloca [16 x i8], align 16
  %a_max = alloca [16 x i8], align 16
  %b_min = alloca [16 x i8], align 16
  %b_max = alloca [16 x i8], align 16
  %merged = alloca %struct.IPAddressOrRange_st*, align 8
  %a_min85 = alloca [16 x i8], align 16
  %a_max86 = alloca [16 x i8], align 16
  %call = tail call fastcc i32 @length_from_afi(i32 noundef %afi) #11
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_IPAddressOrRange_sk_type(%struct.stack_st_IPAddressOrRange* noundef %aors) #11
  tail call void @OPENSSL_sk_sort(%struct.stack_st* noundef %call1) #10
  %call2 = call fastcc %struct.stack_st* @ossl_check_const_IPAddressOrRange_sk_type(%struct.stack_st_IPAddressOrRange* noundef %aors) #11
  %call3171 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #10
  %cmp173 = icmp sgt i32 %call3171, 1
  br i1 %cmp173, label %for.body.lr.ph, label %for.end73

for.body.lr.ph:                                   ; preds = %entry
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %a_min, i64 0, i64 0
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* %a_max, i64 0, i64 0
  %2 = getelementptr inbounds [16 x i8], [16 x i8]* %b_min, i64 0, i64 0
  %3 = getelementptr inbounds [16 x i8], [16 x i8]* %b_max, i64 0, i64 0
  %4 = zext i32 %call to i64
  %5 = bitcast %struct.IPAddressOrRange_st** %merged to i8*
  %6 = bitcast %struct.IPAddressOrRange_st** %merged to i8**
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc72
  %i.0174 = phi i32 [ 0, %for.body.lr.ph ], [ %inc.pre-phi, %for.inc72 ]
  %call5 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call2, i32 noundef %i.0174) #10
  %7 = bitcast i8* %call5 to %struct.IPAddressOrRange_st*
  %add = add nsw i32 %i.0174, 1
  %call7 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call2, i32 noundef %add) #10
  %8 = bitcast i8* %call7 to %struct.IPAddressOrRange_st*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #12
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #12
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #12
  %call9 = call fastcc i32 @extract_min_max(%struct.IPAddressOrRange_st* noundef %7, i8* noundef nonnull %0, i8* noundef nonnull %1, i32 noundef %call) #11
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %cleanup66.thread, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %call12 = call fastcc i32 @extract_min_max(%struct.IPAddressOrRange_st* noundef %8, i8* noundef nonnull %2, i8* noundef nonnull %3, i32 noundef %call) #11
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup66.thread, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call16 = call i32 @memcmp(i8* noundef nonnull %0, i8* noundef nonnull %1, i64 noundef %4) #13
  %cmp17 = icmp sgt i32 %call16, 0
  br i1 %cmp17, label %cleanup66.thread, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.end
  %call23 = call i32 @memcmp(i8* noundef nonnull %2, i8* noundef nonnull %3, i64 noundef %4) #13
  %cmp24 = icmp sgt i32 %call23, 0
  br i1 %cmp24, label %cleanup66.thread, label %if.end27

if.end27:                                         ; preds = %lor.lhs.false19
  %call31 = call i32 @memcmp(i8* noundef nonnull %1, i8* noundef nonnull %2, i64 noundef %4) #13
  %cmp32 = icmp sgt i32 %call31, -1
  br i1 %cmp32, label %cleanup66.thread, label %for.cond37

for.cond37:                                       ; preds = %if.end27, %land.rhs
  %indvars.iv = phi i64 [ %9, %land.rhs ], [ %4, %if.end27 ]
  %9 = add nsw i64 %indvars.iv, -1
  %10 = trunc i64 %indvars.iv to i32
  %cmp38 = icmp sgt i32 %10, 0
  br i1 %cmp38, label %land.rhs, label %for.end

land.rhs:                                         ; preds = %for.cond37
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %b_min, i64 0, i64 %9
  %11 = load i8, i8* %arrayidx, align 1, !tbaa !14
  %dec = add i8 %11, -1
  store i8 %dec, i8* %arrayidx, align 1, !tbaa !14
  %cmp41 = icmp eq i8 %11, 0
  br i1 %cmp41, label %for.cond37, label %for.end, !llvm.loop !39

for.end:                                          ; preds = %for.cond37, %land.rhs
  %call48 = call i32 @memcmp(i8* noundef nonnull %1, i8* noundef nonnull %2, i64 noundef %4) #13
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %if.then51, label %cleanup66.thread152

cleanup66.thread152:                              ; preds = %for.end
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  br label %for.inc72

if.then51:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #12
  %call54 = call fastcc i32 @make_addressRange(%struct.IPAddressOrRange_st** noundef nonnull %merged, i8* noundef nonnull %0, i8* noundef nonnull %3, i32 noundef %call) #11
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %cleanup66.thread156, label %cleanup66

cleanup66.thread156:                              ; preds = %if.then51
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  br label %cleanup109

cleanup66.thread:                                 ; preds = %lor.lhs.false, %for.body, %lor.lhs.false19, %if.end, %if.end27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  br label %cleanup109

cleanup66:                                        ; preds = %if.then51
  %12 = load i8*, i8** %6, align 8, !tbaa !21
  %call60 = call i8* @OPENSSL_sk_set(%struct.stack_st* noundef %call1, i32 noundef %i.0174, i8* noundef %12) #10
  %call63 = call i8* @OPENSSL_sk_delete(%struct.stack_st* noundef %call1, i32 noundef %add) #10
  call void @IPAddressOrRange_free(%struct.IPAddressOrRange_st* noundef %7) #11
  call void @IPAddressOrRange_free(%struct.IPAddressOrRange_st* noundef %8) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  br label %for.inc72

for.inc72:                                        ; preds = %cleanup66, %cleanup66.thread152
  %inc.pre-phi = phi i32 [ %i.0174, %cleanup66 ], [ %add, %cleanup66.thread152 ]
  %call3 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #10
  %sub = add nsw i32 %call3, -1
  %cmp = icmp slt i32 %inc.pre-phi, %sub
  br i1 %cmp, label %for.body, label %for.end73, !llvm.loop !40

for.end73:                                        ; preds = %for.inc72, %entry
  %call75 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #10
  %sub76 = add nsw i32 %call75, -1
  %call79 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call2, i32 noundef %sub76) #10
  %13 = bitcast i8* %call79 to %struct.IPAddressOrRange_st*
  %cmp80.not = icmp eq i8* %call79, null
  br i1 %cmp80.not, label %cleanup109, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end73
  %type = bitcast i8* %call79 to i32*
  %14 = load i32, i32* %type, align 8, !tbaa !22
  %cmp82 = icmp eq i32 %14, 1
  br i1 %cmp82, label %if.then84, label %cleanup109

if.then84:                                        ; preds = %land.lhs.true
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %a_min85, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #12
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %a_max86, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %16) #12
  %call89 = call fastcc i32 @extract_min_max(%struct.IPAddressOrRange_st* noundef nonnull %13, i8* noundef nonnull %15, i8* noundef nonnull %16, i32 noundef %call) #11
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %cleanup106.critedge, label %if.end92

if.end92:                                         ; preds = %if.then84
  %17 = zext i32 %call to i64
  %call96 = call i32 @memcmp(i8* noundef nonnull %15, i8* noundef nonnull %16, i64 noundef %17) #13
  %cmp97 = icmp slt i32 %call96, 1
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #12
  br i1 %cmp97, label %cleanup109, label %cleanup106.thread

cleanup106.critedge:                              ; preds = %if.then84
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #12
  br label %cleanup106.thread

cleanup106.thread:                                ; preds = %if.end92, %cleanup106.critedge
  br label %cleanup109

cleanup109:                                       ; preds = %cleanup106.thread, %if.end92, %land.lhs.true, %for.end73, %cleanup66.thread156, %cleanup66.thread
  %retval.6 = phi i32 [ 0, %cleanup66.thread ], [ 0, %cleanup66.thread156 ], [ 0, %cleanup106.thread ], [ 1, %if.end92 ], [ 1, %land.lhs.true ], [ 1, %for.end73 ]
  ret i32 %retval.6
}

declare i32 (i8*, i8*)* @OPENSSL_sk_set_cmp_func(%struct.stack_st* noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_IPAddressFamily_sk_type(%struct.stack_st_IPAddressFamily* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_IPAddressFamily* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @OPENSSL_sk_sort(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal nonnull %struct.ASN1_ITEM_st* @IPAddrBlocks_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @IPAddrBlocks_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @v2i_IPAddrBlocks(%struct.v3_ext_method* nocapture noundef readnone %method, %struct.v3_ext_ctx* nocapture noundef readnone %ctx, %struct.stack_st_CONF_VALUE* noundef %values) #1 {
entry:
  %t = alloca i8*, align 8
  %min = alloca [16 x i8], align 16
  %max = alloca [16 x i8], align 16
  %safi_ = alloca i32, align 4
  %0 = bitcast i8** %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  %call1 = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (%struct.IPAddressFamily_st**, %struct.IPAddressFamily_st**)* @IPAddressFamily_cmp to i32 (i8*, i8*)*)) #10
  %1 = bitcast %struct.stack_st* %call1 to %struct.stack_st_IPAddressFamily*
  %cmp = icmp eq %struct.stack_st* %call1, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call2 = call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %values) #11
  %call3388 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #10
  %cmp4389 = icmp sgt i32 %call3388, 0
  br i1 %cmp4389, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %2 = getelementptr inbounds [16 x i8], [16 x i8]* %min, i64 0, i64 0
  %3 = getelementptr inbounds [16 x i8], [16 x i8]* %max, i64 0, i64 0
  %4 = bitcast i32* %safi_ to i8*
  br label %for.body

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i32 noundef 899, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.v2i_IPAddrBlocks, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #10
  br label %cleanup183

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.0390 = phi i32 [ 0, %for.body.lr.ph ], [ %inc176, %for.inc ]
  %call6 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call2, i32 noundef %i.0390) #10
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #12
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #12
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #12
  %name = getelementptr inbounds i8, i8* %call6, i64 8
  %5 = bitcast i8* %name to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !41
  %call7 = call i32 @ossl_v3_name_cmp(i8* noundef %6, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #10
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.else47, label %if.else

if.else:                                          ; preds = %for.body
  %7 = load i8*, i8** %5, align 8, !tbaa !41
  %call10 = call i32 @ossl_v3_name_cmp(i8* noundef %7, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0)) #10
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.else47, label %if.else13

if.else13:                                        ; preds = %if.else
  %8 = load i8*, i8** %5, align 8, !tbaa !41
  %call15 = call i32 @ossl_v3_name_cmp(i8* noundef %8, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0)) #10
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then32, label %if.else18

if.else18:                                        ; preds = %if.else13
  %9 = load i8*, i8** %5, align 8, !tbaa !41
  %call20 = call i32 @ossl_v3_name_cmp(i8* noundef %9, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0)) #10
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then32, label %if.else23

if.else23:                                        ; preds = %if.else18
  %10 = bitcast i8* %name to i8**
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i32 noundef 921, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.v2i_IPAddrBlocks, i64 0, i64 0)) #10
  %11 = load i8*, i8** %10, align 8, !tbaa !41
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 115, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* noundef %11) #10
  br label %cleanup.thread

if.then32:                                        ; preds = %if.else18, %if.else13
  %afi.0279290 = phi i32 [ 2, %if.else18 ], [ 1, %if.else13 ]
  %12 = phi i8* [ getelementptr inbounds ([25 x i8], [25 x i8]* @v2i_IPAddrBlocks.v6addr_chars, i64 0, i64 0), %if.else18 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @v2i_IPAddrBlocks.v4addr_chars, i64 0, i64 0), %if.else13 ]
  %call30 = call fastcc i32 @length_from_afi(i32 noundef %afi.0279290) #11
  %value = getelementptr inbounds i8, i8* %call6, i64 16
  %13 = bitcast i8* %value to i8**
  %14 = load i8*, i8** %13, align 8, !tbaa !43
  %call33 = call i64 @strtoul(i8* noundef %14, i8** noundef nonnull %t, i32 noundef 0) #10
  %conv = trunc i64 %call33 to i32
  store i32 %conv, i32* %safi_, align 4, !tbaa !18
  %15 = load i8*, i8** %t, align 8, !tbaa !21
  %call34 = call i64 @strspn(i8* noundef %15, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0)) #13
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %call34
  store i8* %add.ptr, i8** %t, align 8, !tbaa !21
  %cmp35 = icmp ugt i32 %conv, 255
  br i1 %cmp35, label %if.then40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then32
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr, i64 1
  store i8* %incdec.ptr, i8** %t, align 8, !tbaa !21
  %16 = load i8, i8* %add.ptr, align 1, !tbaa !14
  %cmp38.not = icmp eq i8 %16, 58
  br i1 %cmp38.not, label %if.end43, label %if.then40

if.then40:                                        ; preds = %lor.lhs.false, %if.then32
  %17 = bitcast i8* %name to i8**
  %18 = bitcast i8* %value to i8**
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i32 noundef 945, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.v2i_IPAddrBlocks, i64 0, i64 0)) #10
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 164, i8* noundef null) #10
  %19 = load i8*, i8** %17, align 8, !tbaa !41
  %20 = load i8*, i8** %18, align 8, !tbaa !43
  call void (i32, ...) @ERR_add_error_data(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i8* noundef %19, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i8* noundef %20) #10
  br label %cleanup.thread

if.end43:                                         ; preds = %lor.lhs.false
  %call44 = call i64 @strspn(i8* noundef nonnull %incdec.ptr, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0)) #13
  %add.ptr45 = getelementptr inbounds i8, i8* %incdec.ptr, i64 %call44
  store i8* %add.ptr45, i8** %t, align 8, !tbaa !21
  %call46 = call i8* @CRYPTO_strdup(i8* noundef nonnull %add.ptr45, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i32 noundef 950) #10
  br label %if.end50

if.else47:                                        ; preds = %if.else, %for.body
  %afi.0279290.ph = phi i32 [ 1, %for.body ], [ 2, %if.else ]
  %.ph = phi i8* [ getelementptr inbounds ([12 x i8], [12 x i8]* @v2i_IPAddrBlocks.v4addr_chars, i64 0, i64 0), %for.body ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @v2i_IPAddrBlocks.v6addr_chars, i64 0, i64 0), %if.else ]
  %call30296 = call fastcc i32 @length_from_afi(i32 noundef %afi.0279290.ph) #11
  %value48 = getelementptr inbounds i8, i8* %call6, i64 16
  %21 = bitcast i8* %value48 to i8**
  %22 = load i8*, i8** %21, align 8, !tbaa !43
  %call49 = call i8* @CRYPTO_strdup(i8* noundef %22, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i32 noundef 952) #10
  br label %if.end50

if.end50:                                         ; preds = %if.else47, %if.end43
  %call30302 = phi i32 [ %call30, %if.end43 ], [ %call30296, %if.else47 ]
  %23 = phi i8* [ %12, %if.end43 ], [ %.ph, %if.else47 ]
  %safi.0281288300 = phi i32* [ %safi_, %if.end43 ], [ null, %if.else47 ]
  %afi.0279290298 = phi i32 [ %afi.0279290, %if.end43 ], [ %afi.0279290.ph, %if.else47 ]
  %s.1 = phi i8* [ %call46, %if.end43 ], [ %call49, %if.else47 ]
  %cmp51 = icmp eq i8* %s.1, null
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end50
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i32 noundef 955, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.v2i_IPAddrBlocks, i64 0, i64 0)) #10
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #10
  br label %cleanup.thread

if.end54:                                         ; preds = %if.end50
  %call55 = call i32 @strcmp(i8* noundef nonnull %s.1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0)) #13
  %cmp56 = icmp eq i32 %call55, 0
  br i1 %cmp56, label %if.then58, label %if.end65

if.then58:                                        ; preds = %if.end54
  %call59 = call i32 @X509v3_addr_add_inherit(%struct.stack_st_IPAddressFamily* noundef nonnull %1, i32 noundef %afi.0279290298, i32* noundef %safi.0281288300) #11
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then61, label %for.inc

if.then61:                                        ; preds = %if.then58
  %24 = bitcast i8* %name to i8**
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i32 noundef 965, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.v2i_IPAddrBlocks, i64 0, i64 0)) #10
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 165, i8* noundef null) #10
  %25 = load i8*, i8** %24, align 8, !tbaa !41
  %value63 = getelementptr inbounds i8, i8* %call6, i64 16
  %26 = bitcast i8* %value63 to i8**
  %27 = load i8*, i8** %26, align 8, !tbaa !43
  call void (i32, ...) @ERR_add_error_data(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i8* noundef %25, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i8* noundef %27) #10
  br label %cleanup.thread

if.end65:                                         ; preds = %if.end54
  %call66 = call i64 @strspn(i8* noundef nonnull %s.1, i8* noundef %23) #13
  %sext = shl i64 %call66, 32
  %conv68 = ashr exact i64 %sext, 32
  %add.ptr69 = getelementptr inbounds i8, i8* %s.1, i64 %conv68
  %call70 = call i64 @strspn(i8* noundef %add.ptr69, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0)) #13
  %add = add i64 %call70, %call66
  %conv71 = trunc i64 %add to i32
  %inc = add nsw i32 %conv71, 1
  %sext273 = shl i64 %add, 32
  %idxprom = ashr exact i64 %sext273, 32
  %arrayidx = getelementptr inbounds i8, i8* %s.1, i64 %idxprom
  %28 = load i8, i8* %arrayidx, align 1, !tbaa !14
  store i8 0, i8* %add.ptr69, align 1, !tbaa !14
  %call75 = call i32 @ossl_a2i_ipadd(i8* noundef nonnull %2, i8* noundef nonnull %s.1) #10
  %cmp76.not = icmp eq i32 %call75, %call30302
  br i1 %cmp76.not, label %if.end81, label %if.then78

if.then78:                                        ; preds = %if.end65
  %29 = bitcast i8* %name to i8**
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i32 noundef 980, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.v2i_IPAddrBlocks, i64 0, i64 0)) #10
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 166, i8* noundef null) #10
  %30 = load i8*, i8** %29, align 8, !tbaa !41
  %value80 = getelementptr inbounds i8, i8* %call6, i64 16
  %31 = bitcast i8* %value80 to i8**
  %32 = load i8*, i8** %31, align 8, !tbaa !43
  call void (i32, ...) @ERR_add_error_data(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i8* noundef %30, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i8* noundef %32) #10
  br label %cleanup.thread

if.end81:                                         ; preds = %if.end65
  %conv72 = sext i8 %28 to i32
  switch i32 %conv72, label %sw.default [
    i32 47, label %sw.bb82
    i32 45, label %sw.bb104
    i32 0, label %sw.bb156
  ]

sw.bb82:                                          ; preds = %if.end81
  %idx.ext83 = sext i32 %inc to i64
  %add.ptr84 = getelementptr inbounds i8, i8* %s.1, i64 %idx.ext83
  %call85 = call i64 @strtoul(i8* noundef %add.ptr84, i8** noundef nonnull %t, i32 noundef 10) #10
  %conv86 = trunc i64 %call85 to i32
  %33 = load i8*, i8** %t, align 8, !tbaa !21
  %cmp89 = icmp eq i8* %33, %add.ptr84
  br i1 %cmp89, label %if.then95, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %sw.bb82
  %34 = load i8, i8* %33, align 1, !tbaa !14
  %cmp93.not = icmp eq i8 %34, 0
  br i1 %cmp93.not, label %if.end98, label %if.then95

if.then95:                                        ; preds = %lor.lhs.false91, %sw.bb82
  %35 = bitcast i8* %name to i8**
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i32 noundef 989, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.v2i_IPAddrBlocks, i64 0, i64 0)) #10
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 116, i8* noundef null) #10
  %36 = load i8*, i8** %35, align 8, !tbaa !41
  %value97 = getelementptr inbounds i8, i8* %call6, i64 16
  %37 = bitcast i8* %value97 to i8**
  %38 = load i8*, i8** %37, align 8, !tbaa !43
  call void (i32, ...) @ERR_add_error_data(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i8* noundef %36, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i8* noundef %38) #10
  br label %cleanup.thread

if.end98:                                         ; preds = %lor.lhs.false91
  %call100 = call i32 @X509v3_addr_add_prefix(%struct.stack_st_IPAddressFamily* noundef nonnull %1, i32 noundef %afi.0279290298, i32* noundef %safi.0281288300, i8* noundef nonnull %2, i32 noundef %conv86) #11
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.then102, label %for.inc

if.then102:                                       ; preds = %if.end98
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i32 noundef 994, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.v2i_IPAddrBlocks, i64 0, i64 0)) #10
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #10
  br label %cleanup.thread

sw.bb104:                                         ; preds = %if.end81
  %conv105 = sext i32 %inc to i64
  %add.ptr107 = getelementptr inbounds i8, i8* %s.1, i64 %conv105
  %call108 = call i64 @strspn(i8* noundef %add.ptr107, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0)) #13
  %39 = trunc i64 %call108 to i32
  %conv110 = add i32 %inc, %39
  %conv111 = sext i32 %conv110 to i64
  %add.ptr113 = getelementptr inbounds i8, i8* %s.1, i64 %conv111
  %call114 = call i64 @strspn(i8* noundef %add.ptr113, i8* noundef %23) #13
  %40 = trunc i64 %call114 to i32
  %cmp117 = icmp eq i32 %40, 0
  br i1 %cmp117, label %if.then125, label %lor.lhs.false119

lor.lhs.false119:                                 ; preds = %sw.bb104
  %conv116 = add i32 %conv110, %40
  %idxprom120 = sext i32 %conv116 to i64
  %arrayidx121 = getelementptr inbounds i8, i8* %s.1, i64 %idxprom120
  %41 = load i8, i8* %arrayidx121, align 1, !tbaa !14
  %cmp123.not = icmp eq i8 %41, 0
  br i1 %cmp123.not, label %if.end128, label %if.then125

if.then125:                                       ; preds = %lor.lhs.false119, %sw.bb104
  %42 = bitcast i8* %name to i8**
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1002, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.v2i_IPAddrBlocks, i64 0, i64 0)) #10
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 116, i8* noundef null) #10
  %43 = load i8*, i8** %42, align 8, !tbaa !41
  %value127 = getelementptr inbounds i8, i8* %call6, i64 16
  %44 = bitcast i8* %value127 to i8**
  %45 = load i8*, i8** %44, align 8, !tbaa !43
  call void (i32, ...) @ERR_add_error_data(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i8* noundef %43, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i8* noundef %45) #10
  br label %cleanup.thread

if.end128:                                        ; preds = %lor.lhs.false119
  %call132 = call i32 @ossl_a2i_ipadd(i8* noundef nonnull %3, i8* noundef nonnull %add.ptr113) #10
  %cmp133.not = icmp eq i32 %call132, %call30302
  br i1 %cmp133.not, label %if.end138, label %if.then135

if.then135:                                       ; preds = %if.end128
  %46 = bitcast i8* %name to i8**
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1007, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.v2i_IPAddrBlocks, i64 0, i64 0)) #10
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 166, i8* noundef null) #10
  %47 = load i8*, i8** %46, align 8, !tbaa !41
  %value137 = getelementptr inbounds i8, i8* %call6, i64 16
  %48 = bitcast i8* %value137 to i8**
  %49 = load i8*, i8** %48, align 8, !tbaa !43
  call void (i32, ...) @ERR_add_error_data(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i8* noundef %47, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i8* noundef %49) #10
  br label %cleanup.thread

if.end138:                                        ; preds = %if.end128
  %50 = zext i32 %call30302 to i64
  %call143 = call i32 @memcmp(i8* noundef nonnull %2, i8* noundef nonnull %3, i64 noundef %50) #13
  %cmp144 = icmp sgt i32 %call143, 0
  br i1 %cmp144, label %if.then146, label %if.end149

if.then146:                                       ; preds = %if.end138
  %51 = bitcast i8* %name to i8**
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1012, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.v2i_IPAddrBlocks, i64 0, i64 0)) #10
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 116, i8* noundef null) #10
  %52 = load i8*, i8** %51, align 8, !tbaa !41
  %value148 = getelementptr inbounds i8, i8* %call6, i64 16
  %53 = bitcast i8* %value148 to i8**
  %54 = load i8*, i8** %53, align 8, !tbaa !43
  call void (i32, ...) @ERR_add_error_data(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i8* noundef %52, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i8* noundef %54) #10
  br label %cleanup.thread

if.end149:                                        ; preds = %if.end138
  %call152 = call i32 @X509v3_addr_add_range(%struct.stack_st_IPAddressFamily* noundef nonnull %1, i32 noundef %afi.0279290298, i32* noundef %safi.0281288300, i8* noundef nonnull %2, i8* noundef nonnull %3) #11
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %if.then154, label %for.inc

if.then154:                                       ; preds = %if.end149
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1017, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.v2i_IPAddrBlocks, i64 0, i64 0)) #10
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #10
  br label %cleanup.thread

sw.bb156:                                         ; preds = %if.end81
  %mul = shl nsw i32 %call30302, 3
  %call158 = call i32 @X509v3_addr_add_prefix(%struct.stack_st_IPAddressFamily* noundef nonnull %1, i32 noundef %afi.0279290298, i32* noundef %safi.0281288300, i8* noundef nonnull %2, i32 noundef %mul) #11
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %if.then160, label %for.inc

if.then160:                                       ; preds = %sw.bb156
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1023, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.v2i_IPAddrBlocks, i64 0, i64 0)) #10
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #10
  br label %cleanup.thread

sw.default:                                       ; preds = %if.end81
  %55 = bitcast i8* %name to i8**
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1028, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.v2i_IPAddrBlocks, i64 0, i64 0)) #10
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 116, i8* noundef null) #10
  %56 = load i8*, i8** %55, align 8, !tbaa !41
  %value163 = getelementptr inbounds i8, i8* %call6, i64 16
  %57 = bitcast i8* %value163 to i8**
  %58 = load i8*, i8** %57, align 8, !tbaa !43
  call void (i32, ...) @ERR_add_error_data(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i8* noundef %56, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i8* noundef %58) #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.else23, %if.then40, %if.then53, %if.then61, %if.then78, %sw.default, %if.then160, %if.then125, %if.then135, %if.then146, %if.then154, %if.then95, %if.then102
  %s.2.ph = phi i8* [ %s.1, %if.then102 ], [ %s.1, %if.then95 ], [ %s.1, %if.then154 ], [ %s.1, %if.then146 ], [ %s.1, %if.then135 ], [ %s.1, %if.then125 ], [ %s.1, %if.then160 ], [ %s.1, %sw.default ], [ %s.1, %if.then78 ], [ %s.1, %if.then61 ], [ null, %if.then53 ], [ null, %if.then40 ], [ null, %if.else23 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #12
  br label %err

for.inc:                                          ; preds = %if.end98, %if.end149, %sw.bb156, %if.then58
  %.sink = phi i32 [ 969, %if.then58 ], [ 1033, %sw.bb156 ], [ 1033, %if.end149 ], [ 1033, %if.end98 ]
  call void @CRYPTO_free(i8* noundef nonnull %s.1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i32 noundef %.sink) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #12
  %inc176 = add nuw nsw i32 %i.0390, 1
  %call3 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #10
  %cmp4 = icmp slt i32 %inc176, %call3
  br i1 %cmp4, label %for.body, label %for.end, !llvm.loop !44

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %call177 = call i32 @X509v3_addr_canonize(%struct.stack_st_IPAddressFamily* noundef nonnull %1) #11
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %err, label %if.end180

if.end180:                                        ; preds = %for.end
  %59 = bitcast %struct.stack_st* %call1 to i8*
  br label %cleanup183

err:                                              ; preds = %cleanup.thread, %for.end
  %s.3 = phi i8* [ null, %for.end ], [ %s.2.ph, %cleanup.thread ]
  call void @CRYPTO_free(i8* noundef %s.3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1045) #10
  %call181 = call fastcc %struct.stack_st* @ossl_check_IPAddressFamily_sk_type(%struct.stack_st_IPAddressFamily* noundef nonnull %1) #11
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call181, void (i8*)* noundef bitcast (void (%struct.IPAddressFamily_st*)* @IPAddressFamily_free to void (i8*)*)) #10
  br label %cleanup183

cleanup183:                                       ; preds = %err, %if.end180, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ null, %err ], [ %59, %if.end180 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @i2r_IPAddrBlocks(%struct.v3_ext_method* nocapture noundef readnone %method, i8* noundef %ext, %struct.bio_st* noundef %out, i32 noundef %indent) #1 {
entry:
  %0 = bitcast i8* %ext to %struct.stack_st_IPAddressFamily*
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_IPAddressFamily_sk_type(%struct.stack_st_IPAddressFamily* noundef %0) #11
  %call177 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #10
  %cmp78 = icmp sgt i32 %call177, 0
  br i1 %cmp78, label %for.body.lr.ph, label %cleanup44

for.body.lr.ph:                                   ; preds = %entry
  %add = add nsw i32 %indent, 2
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc.critedge
  %i.079 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.critedge ]
  %call3 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.079) #10
  %1 = bitcast i8* %call3 to %struct.IPAddressFamily_st*
  %call4 = tail call i32 @X509v3_addr_get_afi(%struct.IPAddressFamily_st* noundef %1) #11
  switch i32 %call4, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
  ]

sw.bb:                                            ; preds = %for.body
  %call5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i64 0, i64 0)) #10
  br label %sw.epilog

sw.bb6:                                           ; preds = %for.body
  %call7 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i64 0, i64 0)) #10
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %call8 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i64 0, i64 0), i32 noundef %call4) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb
  %addressFamily = bitcast i8* %call3 to %struct.asn1_string_st**
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %addressFamily, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %2, i64 0, i32 0
  %3 = load i32, i32* %length, align 8, !tbaa !13
  %cmp9 = icmp sgt i32 %3, 2
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %2, i64 0, i32 2
  %4 = load i8*, i8** %data, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !14
  switch i8 %5, label %sw.default27 [
    i8 1, label %sw.bb11
    i8 2, label %sw.bb13
    i8 3, label %sw.bb15
    i8 4, label %sw.bb17
    i8 64, label %sw.bb19
    i8 65, label %sw.bb21
    i8 66, label %sw.bb23
    i8 -128, label %sw.bb25
  ]

sw.bb11:                                          ; preds = %if.then
  %call12 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0)) #10
  br label %if.end

sw.bb13:                                          ; preds = %if.then
  %call14 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0)) #10
  br label %if.end

sw.bb15:                                          ; preds = %if.then
  %call16 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i64 0, i64 0)) #10
  br label %if.end

sw.bb17:                                          ; preds = %if.then
  %call18 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0)) #10
  br label %if.end

sw.bb19:                                          ; preds = %if.then
  %call20 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0)) #10
  br label %if.end

sw.bb21:                                          ; preds = %if.then
  %call22 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0)) #10
  br label %if.end

sw.bb23:                                          ; preds = %if.then
  %call24 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0)) #10
  br label %if.end

sw.bb25:                                          ; preds = %if.then
  %call26 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i64 0, i64 0)) #10
  br label %if.end

sw.default27:                                     ; preds = %if.then
  %conv = zext i8 %5 to i32
  %call32 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv) #10
  br label %if.end

if.end:                                           ; preds = %sw.bb11, %sw.bb13, %sw.bb15, %sw.bb17, %sw.bb19, %sw.bb21, %sw.bb23, %sw.bb25, %sw.default27, %sw.epilog
  %ipAddressChoice = getelementptr inbounds i8, i8* %call3, i64 8
  %6 = bitcast i8* %ipAddressChoice to %struct.IPAddressChoice_st**
  %7 = load %struct.IPAddressChoice_st*, %struct.IPAddressChoice_st** %6, align 8, !tbaa !15
  %type = getelementptr inbounds %struct.IPAddressChoice_st, %struct.IPAddressChoice_st* %7, i64 0, i32 0
  %8 = load i32, i32* %type, align 8, !tbaa !16
  switch i32 %8, label %for.inc.critedge [
    i32 0, label %sw.bb34
    i32 1, label %sw.bb36
  ]

sw.bb34:                                          ; preds = %if.end
  %call35 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0)) #10
  br label %for.inc.critedge

sw.bb36:                                          ; preds = %if.end
  %call37 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0)) #10
  %9 = load %struct.IPAddressChoice_st*, %struct.IPAddressChoice_st** %6, align 8, !tbaa !15
  %u = getelementptr inbounds %struct.IPAddressChoice_st, %struct.IPAddressChoice_st* %9, i64 0, i32 1
  %addressesOrRanges = bitcast %union.anon.0* %u to %struct.stack_st_IPAddressOrRange**
  %10 = load %struct.stack_st_IPAddressOrRange*, %struct.stack_st_IPAddressOrRange** %addressesOrRanges, align 8, !tbaa !14
  %call39 = tail call fastcc i32 @i2r_IPAddressOrRanges(%struct.bio_st* noundef %out, i32 noundef %add, %struct.stack_st_IPAddressOrRange* noundef %10, i32 noundef %call4) #11
  %tobool.not = icmp eq i32 %call39, 0
  br i1 %tobool.not, label %cleanup44, label %for.inc.critedge

for.inc.critedge:                                 ; preds = %sw.bb34, %if.end, %sw.bb36
  %inc = add nuw nsw i32 %i.079, 1
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #10
  %cmp = icmp slt i32 %inc, %call1
  br i1 %cmp, label %for.body, label %cleanup44, !llvm.loop !45

cleanup44:                                        ; preds = %sw.bb36, %for.inc.critedge, %entry
  %retval.2 = phi i32 [ 1, %entry ], [ 1, %for.inc.critedge ], [ 0, %sw.bb36 ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509v3_addr_inherits(%struct.stack_st_IPAddressFamily* noundef %addr) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.stack_st_IPAddressFamily* %addr, null
  br i1 %cmp, label %cleanup8, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_IPAddressFamily_sk_type(%struct.stack_st_IPAddressFamily* noundef nonnull %addr) #11
  %call115 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #10
  %cmp216 = icmp sgt i32 %call115, 0
  br i1 %cmp216, label %for.body, label %cleanup8

for.cond:                                         ; preds = %for.body
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #10
  %cmp2 = icmp slt i32 %inc, %call1
  br i1 %cmp2, label %for.body, label %cleanup8, !llvm.loop !46

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.017 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call4 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.017) #10
  %ipAddressChoice = getelementptr inbounds i8, i8* %call4, i64 8
  %0 = bitcast i8* %ipAddressChoice to %struct.IPAddressChoice_st**
  %1 = load %struct.IPAddressChoice_st*, %struct.IPAddressChoice_st** %0, align 8, !tbaa !15
  %type = getelementptr inbounds %struct.IPAddressChoice_st, %struct.IPAddressChoice_st* %1, i64 0, i32 0
  %2 = load i32, i32* %type, align 8, !tbaa !16
  %cmp5 = icmp eq i32 %2, 0
  %inc = add nuw nsw i32 %i.017, 1
  br i1 %cmp5, label %cleanup8, label %for.cond

cleanup8:                                         ; preds = %for.body, %for.cond, %for.cond.preheader, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ 0, %for.cond.preheader ], [ 1, %for.body ], [ 0, %for.cond ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509v3_addr_subset(%struct.stack_st_IPAddressFamily* noundef %a, %struct.stack_st_IPAddressFamily* noundef %b) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.stack_st_IPAddressFamily* %a, null
  %cmp1 = icmp eq %struct.stack_st_IPAddressFamily* %a, %b
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup36, label %if.end

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq %struct.stack_st_IPAddressFamily* %b, null
  br i1 %cmp2, label %cleanup36, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %if.end
  %call = tail call i32 @X509v3_addr_inherits(%struct.stack_st_IPAddressFamily* noundef nonnull %a) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false4, label %cleanup36

lor.lhs.false4:                                   ; preds = %lor.lhs.false3
  %call5 = tail call i32 @X509v3_addr_inherits(%struct.stack_st_IPAddressFamily* noundef nonnull %b) #11
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %cleanup36

if.end8:                                          ; preds = %lor.lhs.false4
  %call9 = tail call fastcc %struct.stack_st* @ossl_check_IPAddressFamily_sk_type(%struct.stack_st_IPAddressFamily* noundef nonnull %b) #11
  %call11 = tail call i32 (i8*, i8*)* @OPENSSL_sk_set_cmp_func(%struct.stack_st* noundef %call9, i32 (i8*, i8*)* noundef bitcast (i32 (%struct.IPAddressFamily_st**, %struct.IPAddressFamily_st**)* @IPAddressFamily_cmp to i32 (i8*, i8*)*)) #10
  %call12 = tail call fastcc %struct.stack_st* @ossl_check_const_IPAddressFamily_sk_type(%struct.stack_st_IPAddressFamily* noundef nonnull %a) #11
  %call1355 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call12) #10
  %cmp1456 = icmp sgt i32 %call1355, 0
  br i1 %cmp1456, label %for.body, label %cleanup36

for.cond:                                         ; preds = %if.end24
  %call13 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call12) #10
  %cmp14 = icmp slt i32 %inc, %call13
  br i1 %cmp14, label %for.body, label %cleanup36, !llvm.loop !47

for.body:                                         ; preds = %if.end8, %for.cond
  %i.057 = phi i32 [ %inc, %for.cond ], [ 0, %if.end8 ]
  %call16 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call12, i32 noundef %i.057) #10
  %call19 = tail call i32 @OPENSSL_sk_find(%struct.stack_st* noundef %call9, i8* noundef %call16) #10
  %call20 = tail call fastcc %struct.stack_st* @ossl_check_const_IPAddressFamily_sk_type(%struct.stack_st_IPAddressFamily* noundef nonnull %b) #11
  %call21 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call20, i32 noundef %call19) #10
  %cmp22 = icmp eq i8* %call21, null
  br i1 %cmp22, label %cleanup36, label %if.end24

if.end24:                                         ; preds = %for.body
  %0 = bitcast i8* %call21 to %struct.IPAddressFamily_st*
  %ipAddressChoice = getelementptr inbounds i8, i8* %call21, i64 8
  %1 = bitcast i8* %ipAddressChoice to %struct.IPAddressChoice_st**
  %2 = load %struct.IPAddressChoice_st*, %struct.IPAddressChoice_st** %1, align 8, !tbaa !15
  %u = getelementptr inbounds %struct.IPAddressChoice_st, %struct.IPAddressChoice_st* %2, i64 0, i32 1
  %addressesOrRanges = bitcast %union.anon.0* %u to %struct.stack_st_IPAddressOrRange**
  %3 = load %struct.stack_st_IPAddressOrRange*, %struct.stack_st_IPAddressOrRange** %addressesOrRanges, align 8, !tbaa !14
  %ipAddressChoice25 = getelementptr inbounds i8, i8* %call16, i64 8
  %4 = bitcast i8* %ipAddressChoice25 to %struct.IPAddressChoice_st**
  %5 = load %struct.IPAddressChoice_st*, %struct.IPAddressChoice_st** %4, align 8, !tbaa !15
  %u26 = getelementptr inbounds %struct.IPAddressChoice_st, %struct.IPAddressChoice_st* %5, i64 0, i32 1
  %addressesOrRanges27 = bitcast %union.anon.0* %u26 to %struct.stack_st_IPAddressOrRange**
  %6 = load %struct.stack_st_IPAddressOrRange*, %struct.stack_st_IPAddressOrRange** %addressesOrRanges27, align 8, !tbaa !14
  %call28 = tail call i32 @X509v3_addr_get_afi(%struct.IPAddressFamily_st* noundef nonnull %0) #11
  %call29 = tail call fastcc i32 @length_from_afi(i32 noundef %call28) #11, !range !48
  %call30 = tail call fastcc i32 @addr_contains(%struct.stack_st_IPAddressOrRange* noundef %3, %struct.stack_st_IPAddressOrRange* noundef %6, i32 noundef %call29) #11
  %tobool31.not.not = icmp eq i32 %call30, 0
  %inc = add nuw nsw i32 %i.057, 1
  br i1 %tobool31.not.not, label %cleanup36, label %for.cond

cleanup36:                                        ; preds = %if.end24, %for.cond, %for.body, %if.end8, %if.end, %lor.lhs.false3, %lor.lhs.false4, %entry
  %retval.2 = phi i32 [ 1, %entry ], [ 0, %lor.lhs.false4 ], [ 0, %lor.lhs.false3 ], [ 0, %if.end ], [ 1, %if.end8 ], [ 0, %if.end24 ], [ 1, %for.cond ], [ 0, %for.body ]
  ret i32 %retval.2
}

declare i32 @OPENSSL_sk_find(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @addr_contains(%struct.stack_st_IPAddressOrRange* noundef %parent, %struct.stack_st_IPAddressOrRange* noundef %child, i32 noundef %length) unnamed_addr #1 {
entry:
  %p_min = alloca [16 x i8], align 16
  %p_max = alloca [16 x i8], align 16
  %c_min = alloca [16 x i8], align 16
  %c_max = alloca [16 x i8], align 16
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %p_min, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* %p_max, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #12
  %2 = getelementptr inbounds [16 x i8], [16 x i8]* %c_min, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #12
  %3 = getelementptr inbounds [16 x i8], [16 x i8]* %c_max, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #12
  %cmp = icmp eq %struct.stack_st_IPAddressOrRange* %child, null
  %cmp1 = icmp eq %struct.stack_st_IPAddressOrRange* %parent, %child
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq %struct.stack_st_IPAddressOrRange* %parent, null
  br i1 %cmp2, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %call = call fastcc %struct.stack_st* @ossl_check_const_IPAddressOrRange_sk_type(%struct.stack_st_IPAddressOrRange* noundef nonnull %child) #11
  %call570 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #10
  %cmp671 = icmp sgt i32 %call570, 0
  br i1 %cmp671, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %4 = zext i32 %length to i64
  br label %for.body

for.cond:                                         ; preds = %if.end33
  %call5 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #10
  %cmp6 = icmp slt i32 %inc43, %call5
  br i1 %cmp6, label %for.body, label %cleanup, !llvm.loop !49

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %c.073 = phi i32 [ 0, %for.body.lr.ph ], [ %inc43, %for.cond ]
  %p.072 = phi i32 [ 0, %for.body.lr.ph ], [ %p.169, %for.cond ]
  %call8 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %c.073) #10
  %5 = bitcast i8* %call8 to %struct.IPAddressOrRange_st*
  %call10 = call fastcc i32 @extract_min_max(%struct.IPAddressOrRange_st* noundef %5, i8* noundef nonnull %2, i8* noundef nonnull %3, i32 noundef %length) #11
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %cleanup, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.body
  %call14 = call fastcc %struct.stack_st* @ossl_check_const_IPAddressOrRange_sk_type(%struct.stack_st_IPAddressOrRange* noundef nonnull %parent) #11
  %call1567 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call14) #10
  %cmp16.not68 = icmp slt i32 %p.072, %call1567
  br i1 %cmp16.not68, label %if.end18, label %cleanup

if.end18:                                         ; preds = %for.cond13.preheader, %for.inc
  %p.169 = phi i32 [ %inc, %for.inc ], [ %p.072, %for.cond13.preheader ]
  %call20 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call14, i32 noundef %p.169) #10
  %6 = bitcast i8* %call20 to %struct.IPAddressOrRange_st*
  %call23 = call fastcc i32 @extract_min_max(%struct.IPAddressOrRange_st* noundef %6, i8* noundef nonnull %0, i8* noundef nonnull %1, i32 noundef %length) #11
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup, label %if.end26

if.end26:                                         ; preds = %if.end18
  %call29 = call i32 @memcmp(i8* noundef nonnull %1, i8* noundef nonnull %3, i64 noundef %4) #13
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %for.inc, label %if.end33

if.end33:                                         ; preds = %if.end26
  %call37 = call i32 @memcmp(i8* noundef nonnull %0, i8* noundef nonnull %2, i64 noundef %4) #13
  %cmp38 = icmp sgt i32 %call37, 0
  %inc43 = add nuw nsw i32 %c.073, 1
  br i1 %cmp38, label %cleanup, label %for.cond

for.inc:                                          ; preds = %if.end26
  %inc = add nsw i32 %p.169, 1
  %call15 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call14) #10
  %cmp16.not = icmp slt i32 %inc, %call15
  br i1 %cmp16.not, label %if.end18, label %cleanup

cleanup:                                          ; preds = %for.body, %if.end33, %for.cond, %for.cond13.preheader, %for.inc, %if.end18, %for.cond.preheader, %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.end ], [ 1, %for.cond.preheader ], [ 0, %if.end18 ], [ 0, %for.inc ], [ 0, %for.cond13.preheader ], [ -1, %for.body ], [ 0, %if.end33 ], [ 1, %for.cond ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509v3_addr_validate_path(%struct.x509_store_ctx_st* noundef %ctx) local_unnamed_addr #1 {
entry:
  %chain = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 20
  %0 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !50
  %cmp = icmp eq %struct.stack_st_X509* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %0) #11
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #10
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %verify_cb = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 7
  %1 = load i32 (i32, %struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)** %verify_cb, align 8, !tbaa !53
  %cmp5 = icmp eq i32 (i32, %struct.x509_store_ctx_st*)* %1, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  %error = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 24
  store i32 1, i32* %error, align 8, !tbaa !54
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %2 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !50
  %call7 = tail call fastcc i32 @addr_validate_path_internal(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.stack_st_X509* noundef %2, %struct.stack_st_IPAddressFamily* noundef null) #11
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call7, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @addr_validate_path_internal(%struct.x509_store_ctx_st* noundef %ctx, %struct.stack_st_X509* noundef %chain, %struct.stack_st_IPAddressFamily* noundef %ext) unnamed_addr #1 {
entry:
  %cmp.not = icmp eq %struct.stack_st_X509* %chain, null
  br i1 %cmp.not, label %if.then, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %chain) #11
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #10
  %cmp2 = icmp sgt i32 %call1, 0
  br i1 %cmp2, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.rhs
  %cmp4 = icmp ne %struct.x509_store_ctx_st* %ctx, null
  %cmp5 = icmp ne %struct.stack_st_IPAddressFamily* %ext, null
  %0 = or i1 %cmp4, %cmp5
  br i1 %0, label %lor.lhs.false7, label %cleanup241

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %cmp8 = icmp eq %struct.x509_store_ctx_st* %ctx, null
  br i1 %cmp8, label %if.end16, label %lor.rhs9

lor.rhs9:                                         ; preds = %lor.lhs.false7
  %verify_cb = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 7
  %1 = load i32 (i32, %struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)** %verify_cb, align 8, !tbaa !53
  %cmp10.not = icmp eq i32 (i32, %struct.x509_store_ctx_st*)* %1, null
  br i1 %cmp10.not, label %if.then15, label %if.end16

if.then:                                          ; preds = %entry, %land.rhs
  %cmp14.not = icmp eq %struct.x509_store_ctx_st* %ctx, null
  br i1 %cmp14.not, label %cleanup241, label %if.then15

if.then15:                                        ; preds = %lor.rhs9, %if.then
  %error = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 24
  store i32 1, i32* %error, align 8, !tbaa !54
  br label %cleanup241

if.end16:                                         ; preds = %lor.lhs.false7, %lor.rhs9
  br i1 %cmp5, label %if.end24, label %if.else

if.else:                                          ; preds = %if.end16
  %call20 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef 0) #10
  %2 = bitcast i8* %call20 to %struct.x509_st*
  %rfc3779_addr = getelementptr inbounds i8, i8* %call20, i64 296
  %3 = bitcast i8* %rfc3779_addr to %struct.stack_st_IPAddressFamily**
  %4 = load %struct.stack_st_IPAddressFamily*, %struct.stack_st_IPAddressFamily** %3, align 8, !tbaa !55
  %cmp21 = icmp eq %struct.stack_st_IPAddressFamily* %4, null
  br i1 %cmp21, label %done, label %if.end24

if.end24:                                         ; preds = %if.end16, %if.else
  %x.0 = phi %struct.x509_st* [ %2, %if.else ], [ null, %if.end16 ]
  %i.0 = phi i32 [ 0, %if.else ], [ -1, %if.end16 ]
  %ext.addr.0 = phi %struct.stack_st_IPAddressFamily* [ %4, %if.else ], [ %ext, %if.end16 ]
  %call25 = tail call i32 @X509v3_addr_is_canonical(%struct.stack_st_IPAddressFamily* noundef nonnull %ext.addr.0) #11
  %tobool.not = icmp eq i32 %call25, 0
  br i1 %tobool.not, label %do.body, label %if.end37

do.body:                                          ; preds = %if.end24
  br i1 %cmp4, label %if.end33, label %done

if.end33:                                         ; preds = %do.body
  %error29 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 24
  store i32 41, i32* %error29, align 8, !tbaa !54
  %error_depth = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 23
  store i32 %i.0, i32* %error_depth, align 4, !tbaa !62
  %current_cert = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 25
  store %struct.x509_st* %x.0, %struct.x509_st** %current_cert, align 8, !tbaa !63
  %verify_cb30 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 7
  %5 = load i32 (i32, %struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)** %verify_cb30, align 8, !tbaa !53
  %call31 = tail call i32 %5(i32 noundef 0, %struct.x509_store_ctx_st* noundef nonnull %ctx) #10
  %tobool34.not = icmp eq i32 %call31, 0
  br i1 %tobool34.not, label %done, label %if.end37

if.end37:                                         ; preds = %if.end33, %if.end24
  %ret.1 = phi i32 [ 1, %if.end24 ], [ %call31, %if.end33 ]
  %call38 = tail call fastcc %struct.stack_st* @ossl_check_IPAddressFamily_sk_type(%struct.stack_st_IPAddressFamily* noundef nonnull %ext.addr.0) #11
  %call40 = tail call i32 (i8*, i8*)* @OPENSSL_sk_set_cmp_func(%struct.stack_st* noundef %call38, i32 (i8*, i8*)* noundef bitcast (i32 (%struct.IPAddressFamily_st**, %struct.IPAddressFamily_st**)* @IPAddressFamily_cmp to i32 (i8*, i8*)*)) #10
  %call41 = tail call fastcc %struct.stack_st* @ossl_check_const_IPAddressFamily_sk_type(%struct.stack_st_IPAddressFamily* noundef nonnull %ext.addr.0) #11
  %call42 = tail call %struct.stack_st* @OPENSSL_sk_dup(%struct.stack_st* noundef %call41) #10
  %6 = bitcast %struct.stack_st* %call42 to %struct.stack_st_IPAddressFamily*
  %cmp43 = icmp eq %struct.stack_st* %call42, null
  br i1 %cmp43, label %if.then44, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end37
  %i.1420 = add nsw i32 %i.0, 1
  %call51421 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #10
  %cmp52422 = icmp slt i32 %i.1420, %call51421
  br i1 %cmp52422, label %for.body.lr.ph, label %for.end195

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %error62 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 24
  %error_depth63 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 23
  %current_cert64 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 25
  %7 = bitcast %struct.x509_st** %current_cert64 to i8**
  %verify_cb65 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 7
  br label %for.body

if.then44:                                        ; preds = %if.end37
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1205, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.addr_validate_path_internal, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #10
  br i1 %cmp4, label %if.then46, label %done

if.then46:                                        ; preds = %if.then44
  %error47 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 24
  store i32 17, i32* %error47, align 8, !tbaa !54
  br label %done

for.body:                                         ; preds = %for.body.lr.ph, %for.inc193
  %i.1424 = phi i32 [ %i.1420, %for.body.lr.ph ], [ %i.1, %for.inc193 ]
  %ret.2423 = phi i32 [ %ret.1, %for.body.lr.ph ], [ %ret.13, %for.inc193 ]
  %call54 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.1424) #10
  %rfc3779_addr55 = getelementptr inbounds i8, i8* %call54, i64 296
  %8 = bitcast i8* %rfc3779_addr55 to %struct.stack_st_IPAddressFamily**
  %9 = load %struct.stack_st_IPAddressFamily*, %struct.stack_st_IPAddressFamily** %8, align 8, !tbaa !55
  %call56 = tail call i32 @X509v3_addr_is_canonical(%struct.stack_st_IPAddressFamily* noundef %9) #11
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %do.body59, label %if.end74

do.body59:                                        ; preds = %for.body
  br i1 %cmp4, label %if.end68, label %done

if.end68:                                         ; preds = %do.body59
  store i32 41, i32* %error62, align 8, !tbaa !54
  store i32 %i.1424, i32* %error_depth63, align 4, !tbaa !62
  store i8* %call54, i8** %7, align 8, !tbaa !63
  %10 = load i32 (i32, %struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)** %verify_cb65, align 8, !tbaa !53
  %call66 = tail call i32 %10(i32 noundef 0, %struct.x509_store_ctx_st* noundef nonnull %ctx) #10
  %tobool69.not = icmp eq i32 %call66, 0
  br i1 %tobool69.not, label %done, label %if.end74

if.end74:                                         ; preds = %if.end68, %for.body
  %ret.4 = phi i32 [ %ret.2423, %for.body ], [ %call66, %if.end68 ]
  %11 = load %struct.stack_st_IPAddressFamily*, %struct.stack_st_IPAddressFamily** %8, align 8, !tbaa !55
  %cmp76 = icmp eq %struct.stack_st_IPAddressFamily* %11, null
  br i1 %cmp76, label %for.cond78.preheader, label %if.end104

for.cond78.preheader:                             ; preds = %if.end74
  %call79 = tail call fastcc %struct.stack_st* @ossl_check_const_IPAddressFamily_sk_type(%struct.stack_st_IPAddressFamily* noundef nonnull %6) #11
  %call80417 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call79) #10
  %cmp81418 = icmp sgt i32 %call80417, 0
  br i1 %cmp81418, label %for.body82, label %for.inc193

for.cond78:                                       ; preds = %for.body82
  %call80 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call79) #10
  %cmp81 = icmp slt i32 %inc103, %call80
  br i1 %cmp81, label %for.body82, label %for.inc193, !llvm.loop !64

for.body82:                                       ; preds = %for.cond78.preheader, %for.cond78
  %j.0419 = phi i32 [ %inc103, %for.cond78 ], [ 0, %for.cond78.preheader ]
  %call84 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call79, i32 noundef %j.0419) #10
  %ipAddressChoice = getelementptr inbounds i8, i8* %call84, i64 8
  %12 = bitcast i8* %ipAddressChoice to %struct.IPAddressChoice_st**
  %13 = load %struct.IPAddressChoice_st*, %struct.IPAddressChoice_st** %12, align 8, !tbaa !15
  %type = getelementptr inbounds %struct.IPAddressChoice_st, %struct.IPAddressChoice_st* %13, i64 0, i32 0
  %14 = load i32, i32* %type, align 8, !tbaa !16
  %cmp85.not = icmp eq i32 %14, 0
  %inc103 = add nuw nsw i32 %j.0419, 1
  br i1 %cmp85.not, label %for.cond78, label %do.body87

do.body87:                                        ; preds = %for.body82
  br i1 %cmp4, label %if.end96, label %done

if.end96:                                         ; preds = %do.body87
  store i32 46, i32* %error62, align 8, !tbaa !54
  store i32 %i.1424, i32* %error_depth63, align 4, !tbaa !62
  store i8* %call54, i8** %7, align 8, !tbaa !63
  %15 = load i32 (i32, %struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)** %verify_cb65, align 8, !tbaa !53
  %call94 = tail call i32 %15(i32 noundef 0, %struct.x509_store_ctx_st* noundef nonnull %ctx) #10
  %tobool97.not = icmp eq i32 %call94, 0
  br i1 %tobool97.not, label %done, label %for.inc193

if.end104:                                        ; preds = %if.end74
  %call106 = tail call fastcc %struct.stack_st* @ossl_check_IPAddressFamily_sk_type(%struct.stack_st_IPAddressFamily* noundef nonnull %11) #11
  %call108 = tail call i32 (i8*, i8*)* @OPENSSL_sk_set_cmp_func(%struct.stack_st* noundef %call106, i32 (i8*, i8*)* noundef bitcast (i32 (%struct.IPAddressFamily_st**, %struct.IPAddressFamily_st**)* @IPAddressFamily_cmp to i32 (i8*, i8*)*)) #10
  %call110 = tail call fastcc %struct.stack_st* @ossl_check_const_IPAddressFamily_sk_type(%struct.stack_st_IPAddressFamily* noundef nonnull %6) #11
  %call111413 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call110) #10
  %cmp112414 = icmp sgt i32 %call111413, 0
  br i1 %cmp112414, label %for.body113, label %for.inc193

for.body113:                                      ; preds = %if.end104, %for.inc190
  %j.1416 = phi i32 [ %inc191, %for.inc190 ], [ 0, %if.end104 ]
  %ret.8415 = phi i32 [ %ret.12.ph392, %for.inc190 ], [ %ret.4, %if.end104 ]
  %call116 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call110, i32 noundef %j.1416) #10
  %16 = bitcast i8* %call116 to %struct.IPAddressFamily_st*
  %17 = load %struct.stack_st_IPAddressFamily*, %struct.stack_st_IPAddressFamily** %8, align 8, !tbaa !55
  %call118 = tail call fastcc %struct.stack_st* @ossl_check_IPAddressFamily_sk_type(%struct.stack_st_IPAddressFamily* noundef %17) #11
  %call120 = tail call i32 @OPENSSL_sk_find(%struct.stack_st* noundef %call118, i8* noundef %call116) #10
  %18 = load %struct.stack_st_IPAddressFamily*, %struct.stack_st_IPAddressFamily** %8, align 8, !tbaa !55
  %call122 = tail call fastcc %struct.stack_st* @ossl_check_const_IPAddressFamily_sk_type(%struct.stack_st_IPAddressFamily* noundef %18) #11
  %call123 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call122, i32 noundef %call120) #10
  %cmp124 = icmp eq i8* %call123, null
  br i1 %cmp124, label %if.then125, label %if.end146

if.then125:                                       ; preds = %for.body113
  %ipAddressChoice126 = getelementptr inbounds i8, i8* %call116, i64 8
  %19 = bitcast i8* %ipAddressChoice126 to %struct.IPAddressChoice_st**
  %20 = load %struct.IPAddressChoice_st*, %struct.IPAddressChoice_st** %19, align 8, !tbaa !15
  %type127 = getelementptr inbounds %struct.IPAddressChoice_st, %struct.IPAddressChoice_st* %20, i64 0, i32 0
  %21 = load i32, i32* %type127, align 8, !tbaa !16
  %cmp128 = icmp eq i32 %21, 1
  br i1 %cmp128, label %do.body130, label %for.inc190

do.body130:                                       ; preds = %if.then125
  br i1 %cmp4, label %if.end139, label %done

if.end139:                                        ; preds = %do.body130
  store i32 46, i32* %error62, align 8, !tbaa !54
  store i32 %i.1424, i32* %error_depth63, align 4, !tbaa !62
  store i8* %call54, i8** %7, align 8, !tbaa !63
  %22 = load i32 (i32, %struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)** %verify_cb65, align 8, !tbaa !53
  %call137 = tail call i32 %22(i32 noundef 0, %struct.x509_store_ctx_st* noundef nonnull %ctx) #10
  %tobool140.not = icmp eq i32 %call137, 0
  br i1 %tobool140.not, label %done, label %for.inc193

if.end146:                                        ; preds = %for.body113
  %ipAddressChoice147 = getelementptr inbounds i8, i8* %call123, i64 8
  %23 = bitcast i8* %ipAddressChoice147 to %struct.IPAddressChoice_st**
  %24 = load %struct.IPAddressChoice_st*, %struct.IPAddressChoice_st** %23, align 8, !tbaa !15
  %type148 = getelementptr inbounds %struct.IPAddressChoice_st, %struct.IPAddressChoice_st* %24, i64 0, i32 0
  %25 = load i32, i32* %type148, align 8, !tbaa !16
  %cmp149 = icmp eq i32 %25, 1
  br i1 %cmp149, label %if.then150, label %for.inc190

if.then150:                                       ; preds = %if.end146
  %ipAddressChoice151 = getelementptr inbounds i8, i8* %call116, i64 8
  %26 = bitcast i8* %ipAddressChoice151 to %struct.IPAddressChoice_st**
  %27 = load %struct.IPAddressChoice_st*, %struct.IPAddressChoice_st** %26, align 8, !tbaa !15
  %type152 = getelementptr inbounds %struct.IPAddressChoice_st, %struct.IPAddressChoice_st* %27, i64 0, i32 0
  %28 = load i32, i32* %type152, align 8, !tbaa !16
  %cmp153 = icmp eq i32 %28, 0
  br i1 %cmp153, label %if.then163, label %lor.lhs.false154

lor.lhs.false154:                                 ; preds = %if.then150
  %u = getelementptr inbounds %struct.IPAddressChoice_st, %struct.IPAddressChoice_st* %24, i64 0, i32 1
  %addressesOrRanges = bitcast %union.anon.0* %u to %struct.stack_st_IPAddressOrRange**
  %29 = load %struct.stack_st_IPAddressOrRange*, %struct.stack_st_IPAddressOrRange** %addressesOrRanges, align 8, !tbaa !14
  %u157 = getelementptr inbounds %struct.IPAddressChoice_st, %struct.IPAddressChoice_st* %27, i64 0, i32 1
  %addressesOrRanges158 = bitcast %union.anon.0* %u157 to %struct.stack_st_IPAddressOrRange**
  %30 = load %struct.stack_st_IPAddressOrRange*, %struct.stack_st_IPAddressOrRange** %addressesOrRanges158, align 8, !tbaa !14
  %call159 = tail call i32 @X509v3_addr_get_afi(%struct.IPAddressFamily_st* noundef nonnull %16) #11
  %call160 = tail call fastcc i32 @length_from_afi(i32 noundef %call159) #11, !range !48
  %call161 = tail call fastcc i32 @addr_contains(%struct.stack_st_IPAddressOrRange* noundef %29, %struct.stack_st_IPAddressOrRange* noundef %30, i32 noundef %call160) #11
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %do.body168, label %if.then163

if.then163:                                       ; preds = %lor.lhs.false154, %if.then150
  %call164 = tail call fastcc %struct.stack_st* @ossl_check_IPAddressFamily_sk_type(%struct.stack_st_IPAddressFamily* noundef nonnull %6) #11
  %call166 = tail call i8* @OPENSSL_sk_set(%struct.stack_st* noundef %call164, i32 noundef %j.1416, i8* noundef nonnull %call123) #10
  br label %for.inc190

do.body168:                                       ; preds = %lor.lhs.false154
  br i1 %cmp4, label %if.end177, label %done

if.end177:                                        ; preds = %do.body168
  store i32 46, i32* %error62, align 8, !tbaa !54
  store i32 %i.1424, i32* %error_depth63, align 4, !tbaa !62
  store i8* %call54, i8** %7, align 8, !tbaa !63
  %31 = load i32 (i32, %struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)** %verify_cb65, align 8, !tbaa !53
  %call175 = tail call i32 %31(i32 noundef 0, %struct.x509_store_ctx_st* noundef nonnull %ctx) #10
  %tobool178.not = icmp eq i32 %call175, 0
  br i1 %tobool178.not, label %done, label %for.inc190

for.inc190:                                       ; preds = %if.end146, %if.end177, %if.then163, %if.then125
  %ret.12.ph392 = phi i32 [ %ret.8415, %if.then125 ], [ %ret.8415, %if.then163 ], [ %call175, %if.end177 ], [ %ret.8415, %if.end146 ]
  %inc191 = add nuw nsw i32 %j.1416, 1
  %call111 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call110) #10
  %cmp112 = icmp slt i32 %inc191, %call111
  br i1 %cmp112, label %for.body113, label %for.inc193, !llvm.loop !65

for.inc193:                                       ; preds = %for.inc190, %for.cond78, %if.end104, %for.cond78.preheader, %if.end96, %if.end139
  %ret.13 = phi i32 [ %call137, %if.end139 ], [ %call94, %if.end96 ], [ %ret.4, %for.cond78.preheader ], [ %ret.4, %if.end104 ], [ %ret.4, %for.cond78 ], [ %ret.12.ph392, %for.inc190 ]
  %i.1 = add nsw i32 %i.1424, 1
  %call51 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #10
  %cmp52 = icmp slt i32 %i.1, %call51
  br i1 %cmp52, label %for.body, label %for.cond.for.end195_crit_edge, !llvm.loop !66

for.cond.for.end195_crit_edge:                    ; preds = %for.inc193
  %32 = bitcast i8* %call54 to %struct.x509_st*
  br label %for.end195

for.end195:                                       ; preds = %for.cond.for.end195_crit_edge, %for.cond.preheader
  %ret.2.lcssa = phi i32 [ %ret.13, %for.cond.for.end195_crit_edge ], [ %ret.1, %for.cond.preheader ]
  %x.1.lcssa = phi %struct.x509_st* [ %32, %for.cond.for.end195_crit_edge ], [ %x.0, %for.cond.preheader ]
  %i.1.lcssa = phi i32 [ %i.1, %for.cond.for.end195_crit_edge ], [ %i.1420, %for.cond.preheader ]
  %rfc3779_addr196 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x.1.lcssa, i64 0, i32 18
  %33 = load %struct.stack_st_IPAddressFamily*, %struct.stack_st_IPAddressFamily** %rfc3779_addr196, align 8, !tbaa !55
  %cmp197.not = icmp eq %struct.stack_st_IPAddressFamily* %33, null
  br i1 %cmp197.not, label %done, label %for.cond199.preheader

for.cond199.preheader:                            ; preds = %for.end195
  %error220 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 24
  %call201428 = tail call fastcc %struct.stack_st* @ossl_check_const_IPAddressFamily_sk_type(%struct.stack_st_IPAddressFamily* noundef nonnull %33) #11
  %call202429 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call201428) #10
  %cmp203430 = icmp sgt i32 %call202429, 0
  br i1 %cmp203430, label %for.body204.lr.ph, label %done

for.body204.lr.ph:                                ; preds = %for.cond199.preheader
  %error_depth221 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 23
  %current_cert222 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 25
  %verify_cb223 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 7
  br label %for.body204

for.body204:                                      ; preds = %for.body204.lr.ph, %for.inc236
  %j.2432 = phi i32 [ 0, %for.body204.lr.ph ], [ %inc237, %for.inc236 ]
  %ret.14431 = phi i32 [ %ret.2.lcssa, %for.body204.lr.ph ], [ %ret.16, %for.inc236 ]
  %34 = load %struct.stack_st_IPAddressFamily*, %struct.stack_st_IPAddressFamily** %rfc3779_addr196, align 8, !tbaa !55
  %call207 = tail call fastcc %struct.stack_st* @ossl_check_const_IPAddressFamily_sk_type(%struct.stack_st_IPAddressFamily* noundef %34) #11
  %call208 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call207, i32 noundef %j.2432) #10
  %ipAddressChoice209 = getelementptr inbounds i8, i8* %call208, i64 8
  %35 = bitcast i8* %ipAddressChoice209 to %struct.IPAddressChoice_st**
  %36 = load %struct.IPAddressChoice_st*, %struct.IPAddressChoice_st** %35, align 8, !tbaa !15
  %type210 = getelementptr inbounds %struct.IPAddressChoice_st, %struct.IPAddressChoice_st* %36, i64 0, i32 0
  %37 = load i32, i32* %type210, align 8, !tbaa !16
  %cmp211 = icmp eq i32 %37, 0
  br i1 %cmp211, label %land.lhs.true, label %for.inc236

land.lhs.true:                                    ; preds = %for.body204
  %call212 = tail call fastcc %struct.stack_st* @ossl_check_IPAddressFamily_sk_type(%struct.stack_st_IPAddressFamily* noundef nonnull %6) #11
  %call214 = tail call i32 @OPENSSL_sk_find(%struct.stack_st* noundef %call212, i8* noundef nonnull %call208) #10
  %cmp215 = icmp sgt i32 %call214, -1
  br i1 %cmp215, label %do.body217, label %for.inc236

do.body217:                                       ; preds = %land.lhs.true
  br i1 %cmp4, label %if.end226, label %done

if.end226:                                        ; preds = %do.body217
  store i32 46, i32* %error220, align 8, !tbaa !54
  store i32 %i.1.lcssa, i32* %error_depth221, align 4, !tbaa !62
  store %struct.x509_st* %x.1.lcssa, %struct.x509_st** %current_cert222, align 8, !tbaa !63
  %38 = load i32 (i32, %struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)** %verify_cb223, align 8, !tbaa !53
  %call224 = tail call i32 %38(i32 noundef 0, %struct.x509_store_ctx_st* noundef nonnull %ctx) #10
  %tobool227.not = icmp eq i32 %call224, 0
  br i1 %tobool227.not, label %done, label %for.inc236

for.inc236:                                       ; preds = %if.end226, %land.lhs.true, %for.body204
  %ret.16 = phi i32 [ %call224, %if.end226 ], [ %ret.14431, %land.lhs.true ], [ %ret.14431, %for.body204 ]
  %inc237 = add nuw nsw i32 %j.2432, 1
  %39 = load %struct.stack_st_IPAddressFamily*, %struct.stack_st_IPAddressFamily** %rfc3779_addr196, align 8, !tbaa !55
  %call201 = tail call fastcc %struct.stack_st* @ossl_check_const_IPAddressFamily_sk_type(%struct.stack_st_IPAddressFamily* noundef %39) #11
  %call202 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call201) #10
  %cmp203 = icmp slt i32 %inc237, %call202
  br i1 %cmp203, label %for.body204, label %done, !llvm.loop !67

done:                                             ; preds = %if.end139, %do.body130, %do.body87, %do.body59, %if.end96, %if.end68, %do.body168, %if.end177, %for.inc236, %if.end226, %do.body217, %for.cond199.preheader, %do.body, %if.then44, %if.then46, %for.end195, %if.end33, %if.else
  %ret.18 = phi i32 [ %ret.2.lcssa, %for.end195 ], [ 0, %if.end33 ], [ 1, %if.else ], [ 0, %if.then46 ], [ 0, %if.then44 ], [ 0, %do.body ], [ %ret.2.lcssa, %for.cond199.preheader ], [ %ret.16, %for.inc236 ], [ 0, %if.end226 ], [ 0, %do.body217 ], [ 0, %if.end177 ], [ 0, %do.body168 ], [ 0, %if.end68 ], [ 0, %if.end96 ], [ 0, %do.body59 ], [ 0, %do.body87 ], [ 0, %do.body130 ], [ 0, %if.end139 ]
  %child.0 = phi %struct.stack_st_IPAddressFamily* [ %6, %for.end195 ], [ null, %if.end33 ], [ null, %if.else ], [ null, %if.then46 ], [ null, %if.then44 ], [ null, %do.body ], [ %6, %for.cond199.preheader ], [ %6, %do.body217 ], [ %6, %if.end226 ], [ %6, %for.inc236 ], [ %6, %if.end177 ], [ %6, %do.body168 ], [ %6, %if.end68 ], [ %6, %if.end96 ], [ %6, %do.body59 ], [ %6, %do.body87 ], [ %6, %do.body130 ], [ %6, %if.end139 ]
  %call240 = tail call fastcc %struct.stack_st* @ossl_check_IPAddressFamily_sk_type(%struct.stack_st_IPAddressFamily* noundef %child.0) #11
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call240) #10
  br label %cleanup241

cleanup241:                                       ; preds = %lor.lhs.false, %if.then, %if.then15, %done
  %retval.0 = phi i32 [ %ret.18, %done ], [ 0, %if.then15 ], [ 0, %if.then ], [ 0, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509v3_addr_validate_resource_set(%struct.stack_st_X509* noundef %chain, %struct.stack_st_IPAddressFamily* noundef %ext, i32 noundef %allow_inheritance) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.stack_st_IPAddressFamily* %ext, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct.stack_st_X509* %chain, null
  br i1 %cmp1, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %chain) #11
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #10
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %return, label %if.end5

if.end5:                                          ; preds = %lor.lhs.false
  %tobool.not = icmp eq i32 %allow_inheritance, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end5
  %call6 = tail call i32 @X509v3_addr_inherits(%struct.stack_st_IPAddressFamily* noundef nonnull %ext) #11
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %return

if.end9:                                          ; preds = %land.lhs.true, %if.end5
  %call10 = tail call fastcc i32 @addr_validate_path_internal(%struct.x509_store_ctx_st* noundef null, %struct.stack_st_X509* noundef nonnull %chain, %struct.stack_st_IPAddressFamily* noundef nonnull %ext) #11
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end, %lor.lhs.false, %entry, %if.end9
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ 1, %entry ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

declare %struct.ASN1_ITEM_st* @ASN1_BIT_STRING_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_NULL_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_OCTET_STRING_it() #2

declare %struct.asn1_string_st* @ASN1_OCTET_STRING_new() local_unnamed_addr #2

declare i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 (i8*, i8*)* @ossl_check_IPAddressOrRange_compfunc_type(i32 (%struct.IPAddressOrRange_st**, %struct.IPAddressOrRange_st**)* noundef readnone %cmp) unnamed_addr #0 {
entry:
  %0 = bitcast i32 (%struct.IPAddressOrRange_st**, %struct.IPAddressOrRange_st**)* %cmp to i32 (i8*, i8*)*
  ret i32 (i8*, i8*)* %0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @v4IPAddressOrRange_cmp(%struct.IPAddressOrRange_st** nocapture noundef readonly %a, %struct.IPAddressOrRange_st** nocapture noundef readonly %b) #1 {
entry:
  %0 = load %struct.IPAddressOrRange_st*, %struct.IPAddressOrRange_st** %a, align 8, !tbaa !21
  %1 = load %struct.IPAddressOrRange_st*, %struct.IPAddressOrRange_st** %b, align 8, !tbaa !21
  %call = tail call fastcc i32 @IPAddressOrRange_cmp(%struct.IPAddressOrRange_st* noundef %0, %struct.IPAddressOrRange_st* noundef %1, i32 noundef 4) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @v6IPAddressOrRange_cmp(%struct.IPAddressOrRange_st** nocapture noundef readonly %a, %struct.IPAddressOrRange_st** nocapture noundef readonly %b) #1 {
entry:
  %0 = load %struct.IPAddressOrRange_st*, %struct.IPAddressOrRange_st** %a, align 8, !tbaa !21
  %1 = load %struct.IPAddressOrRange_st*, %struct.IPAddressOrRange_st** %b, align 8, !tbaa !21
  %call = tail call fastcc i32 @IPAddressOrRange_cmp(%struct.IPAddressOrRange_st* noundef %0, %struct.IPAddressOrRange_st* noundef %1, i32 noundef 16) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @IPAddressOrRange_cmp(%struct.IPAddressOrRange_st* nocapture noundef readonly %a, %struct.IPAddressOrRange_st* nocapture noundef readonly %b, i32 noundef %length) unnamed_addr #1 {
entry:
  %addr_a = alloca [16 x i8], align 16
  %addr_b = alloca [16 x i8], align 16
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %addr_a, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* %addr_b, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #12
  %type = getelementptr inbounds %struct.IPAddressOrRange_st, %struct.IPAddressOrRange_st* %a, i64 0, i32 0
  %2 = load i32, i32* %type, align 8, !tbaa !22
  switch i32 %2, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  %addressPrefix = getelementptr inbounds %struct.IPAddressOrRange_st, %struct.IPAddressOrRange_st* %a, i64 0, i32 1, i32 0
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %addressPrefix, align 8, !tbaa !14
  %call = call fastcc i32 @addr_expand(i8* noundef nonnull %0, %struct.asn1_string_st* noundef %3, i32 noundef %length, i8 noundef zeroext 0) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %sw.bb
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %addressPrefix, align 8, !tbaa !14
  %length3 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %4, i64 0, i32 0
  %5 = load i32, i32* %length3, align 8, !tbaa !13
  %mul = shl nsw i32 %5, 3
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %4, i64 0, i32 3
  %6 = load i64, i64* %flags, align 8, !tbaa !24
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 7
  %conv6 = sub i32 %mul, %8
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %u9 = getelementptr inbounds %struct.IPAddressOrRange_st, %struct.IPAddressOrRange_st* %a, i64 0, i32 1
  %addressRange = bitcast %union.anon* %u9 to %struct.IPAddressRange_st**
  %9 = load %struct.IPAddressRange_st*, %struct.IPAddressRange_st** %addressRange, align 8, !tbaa !14
  %min = getelementptr inbounds %struct.IPAddressRange_st, %struct.IPAddressRange_st* %9, i64 0, i32 0
  %10 = load %struct.asn1_string_st*, %struct.asn1_string_st** %min, align 8, !tbaa !25
  %call10 = call fastcc i32 @addr_expand(i8* noundef nonnull %0, %struct.asn1_string_st* noundef %10, i32 noundef %length, i8 noundef zeroext 0) #11
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %sw.bb7
  %mul14 = shl nsw i32 %length, 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end13, %if.end
  %prefixlen_a.0 = phi i32 [ 0, %entry ], [ %mul14, %if.end13 ], [ %conv6, %if.end ]
  %type15 = getelementptr inbounds %struct.IPAddressOrRange_st, %struct.IPAddressOrRange_st* %b, i64 0, i32 0
  %11 = load i32, i32* %type15, align 8, !tbaa !22
  switch i32 %11, label %sw.epilog45 [
    i32 0, label %sw.bb16
    i32 1, label %sw.bb35
  ]

sw.bb16:                                          ; preds = %sw.epilog
  %addressPrefix19 = getelementptr inbounds %struct.IPAddressOrRange_st, %struct.IPAddressOrRange_st* %b, i64 0, i32 1, i32 0
  %12 = load %struct.asn1_string_st*, %struct.asn1_string_st** %addressPrefix19, align 8, !tbaa !14
  %call20 = call fastcc i32 @addr_expand(i8* noundef nonnull %1, %struct.asn1_string_st* noundef %12, i32 noundef %length, i8 noundef zeroext 0) #11
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup, label %if.end23

if.end23:                                         ; preds = %sw.bb16
  %13 = load %struct.asn1_string_st*, %struct.asn1_string_st** %addressPrefix19, align 8, !tbaa !14
  %length26 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %13, i64 0, i32 0
  %14 = load i32, i32* %length26, align 8, !tbaa !13
  %mul27.neg = mul i32 %14, -8
  %flags31 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %13, i64 0, i32 3
  %15 = load i64, i64* %flags31, align 8, !tbaa !24
  %16 = trunc i64 %15 to i32
  %17 = and i32 %16, 7
  %conv34.neg = or i32 %17, %mul27.neg
  br label %sw.epilog45

sw.bb35:                                          ; preds = %sw.epilog
  %u37 = getelementptr inbounds %struct.IPAddressOrRange_st, %struct.IPAddressOrRange_st* %b, i64 0, i32 1
  %addressRange38 = bitcast %union.anon* %u37 to %struct.IPAddressRange_st**
  %18 = load %struct.IPAddressRange_st*, %struct.IPAddressRange_st** %addressRange38, align 8, !tbaa !14
  %min39 = getelementptr inbounds %struct.IPAddressRange_st, %struct.IPAddressRange_st* %18, i64 0, i32 0
  %19 = load %struct.asn1_string_st*, %struct.asn1_string_st** %min39, align 8, !tbaa !25
  %call40 = call fastcc i32 @addr_expand(i8* noundef nonnull %1, %struct.asn1_string_st* noundef %19, i32 noundef %length, i8 noundef zeroext 0) #11
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %cleanup, label %if.end43

if.end43:                                         ; preds = %sw.bb35
  %mul44.neg = mul i32 %length, -8
  br label %sw.epilog45

sw.epilog45:                                      ; preds = %sw.epilog, %if.end43, %if.end23
  %prefixlen_b.0.neg = phi i32 [ 0, %sw.epilog ], [ %mul44.neg, %if.end43 ], [ %conv34.neg, %if.end23 ]
  %20 = zext i32 %length to i64
  %call49 = call i32 @memcmp(i8* noundef nonnull %0, i8* noundef nonnull %1, i64 noundef %20) #13
  %cmp.not = icmp eq i32 %call49, 0
  br i1 %cmp.not, label %if.else, label %cleanup

if.else:                                          ; preds = %sw.epilog45
  %sub52 = add i32 %prefixlen_b.0.neg, %prefixlen_a.0
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog45, %sw.bb35, %sw.bb16, %sw.bb7, %sw.bb, %if.else
  %retval.0 = phi i32 [ %sub52, %if.else ], [ -1, %sw.bb ], [ -1, %sw.bb7 ], [ -1, %sw.bb16 ], [ -1, %sw.bb35 ], [ %call49, %sw.epilog45 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @addr_expand(i8* noundef %addr, %struct.asn1_string_st* nocapture noundef readonly %bs, i32 noundef %length, i8 noundef zeroext %fill) unnamed_addr #1 {
entry:
  %length1 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %bs, i64 0, i32 0
  %0 = load i32, i32* %length1, align 8, !tbaa !13
  %cmp = icmp slt i32 %0, 0
  %cmp3 = icmp sgt i32 %0, %length
  %or.cond = or i1 %cmp, %cmp3
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp5.not = icmp eq i32 %0, 0
  br i1 %cmp5.not, label %if.end33, label %if.then6

if.then6:                                         ; preds = %if.end
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %bs, i64 0, i32 2
  %1 = load i8*, i8** %data, align 8, !tbaa !9
  %conv56 = zext i32 %0 to i64
  %call = tail call i8* @memcpy(i8* noundef %addr, i8* noundef %1, i64 noundef %conv56) #10
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %bs, i64 0, i32 3
  %2 = load i64, i64* %flags, align 8, !tbaa !24
  %and = and i64 %2, 7
  %cmp8.not = icmp eq i64 %and, 0
  br i1 %cmp8.not, label %if.end33, label %if.then10

if.then10:                                        ; preds = %if.then6
  %3 = trunc i64 %and to i16
  %sh_prom = sub nuw nsw i16 8, %3
  %shr = lshr i16 255, %sh_prom
  %cmp15 = icmp eq i8 %fill, 0
  %conv13 = trunc i16 %shr to i8
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then10
  %neg = xor i8 %conv13, -1
  %4 = load i32, i32* %length1, align 8, !tbaa !13
  %sub20 = add nsw i32 %4, -1
  %idxprom = sext i32 %sub20 to i64
  %arrayidx = getelementptr inbounds i8, i8* %addr, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !14
  %and22 = and i8 %5, %neg
  store i8 %and22, i8* %arrayidx, align 1, !tbaa !14
  br label %if.end33

if.else:                                          ; preds = %if.then10
  %6 = load i32, i32* %length1, align 8, !tbaa !13
  %sub26 = add nsw i32 %6, -1
  %idxprom27 = sext i32 %sub26 to i64
  %arrayidx28 = getelementptr inbounds i8, i8* %addr, i64 %idxprom27
  %7 = load i8, i8* %arrayidx28, align 1, !tbaa !14
  %or = or i8 %7, %conv13
  store i8 %or, i8* %arrayidx28, align 1, !tbaa !14
  br label %if.end33

if.end33:                                         ; preds = %if.then17, %if.else, %if.then6, %if.end
  %8 = load i32, i32* %length1, align 8, !tbaa !13
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %addr, i64 %idx.ext
  %conv35 = zext i8 %fill to i32
  %sub37 = sub nsw i32 %length, %8
  %conv38 = sext i32 %sub37 to i64
  %call39 = tail call i8* @memset(i8* noundef %add.ptr, i32 noundef %conv35, i64 noundef %conv38) #10
  br label %return

return:                                           ; preds = %entry, %if.end33
  %retval.0 = phi i32 [ 1, %if.end33 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #8

declare %struct.asn1_string_st* @ASN1_BIT_STRING_new() local_unnamed_addr #2

declare i32 @ASN1_BIT_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @OPENSSL_sk_set(%struct.stack_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare i8* @OPENSSL_sk_delete(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @ossl_v3_name_cmp(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @strtoul(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* noundef, i8* noundef) local_unnamed_addr #6

declare void @ERR_add_error_data(i32 noundef, ...) local_unnamed_addr #2

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #6

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_a2i_ipadd(i8* noundef, i8* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @i2r_IPAddressOrRanges(%struct.bio_st* noundef %out, i32 noundef %indent, %struct.stack_st_IPAddressOrRange* noundef %aors, i32 noundef %afi) unnamed_addr #1 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_IPAddressOrRange_sk_type(%struct.stack_st_IPAddressOrRange* noundef %aors) #11
  %call147 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #10
  %cmp48 = icmp sgt i32 %call147, 0
  br i1 %cmp48, label %for.body, label %cleanup26

for.body:                                         ; preds = %entry, %for.inc
  %i.049 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %call3 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.049) #10
  %call4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i64 0, i64 0)) #10
  %type = bitcast i8* %call3 to i32*
  %0 = load i32, i32* %type, align 8, !tbaa !22
  switch i32 %0, label %for.inc [
    i32 0, label %sw.bb
    i32 1, label %sw.bb12
  ]

sw.bb:                                            ; preds = %for.body
  %u = getelementptr inbounds i8, i8* %call3, i64 8
  %addressPrefix = bitcast i8* %u to %struct.asn1_string_st**
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %addressPrefix, align 8, !tbaa !14
  %call5 = tail call fastcc i32 @i2r_address(%struct.bio_st* noundef %out, i32 noundef %afi, i8 noundef zeroext 0, %struct.asn1_string_st* noundef %1) #11
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %cleanup26, label %if.end

if.end:                                           ; preds = %sw.bb
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %addressPrefix, align 8, !tbaa !14
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %2, i64 0, i32 0
  %3 = load i32, i32* %length, align 8, !tbaa !13
  %mul = shl nsw i32 %3, 3
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %2, i64 0, i32 3
  %4 = load i64, i64* %flags, align 8, !tbaa !24
  %5 = trunc i64 %4 to i32
  %6 = and i32 %5, 7
  %conv10 = sub i32 %mul, %6
  %call11 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), i32 noundef %conv10) #10
  br label %for.inc

sw.bb12:                                          ; preds = %for.body
  %u13 = getelementptr inbounds i8, i8* %call3, i64 8
  %addressRange = bitcast i8* %u13 to %struct.IPAddressRange_st**
  %7 = load %struct.IPAddressRange_st*, %struct.IPAddressRange_st** %addressRange, align 8, !tbaa !14
  %min = getelementptr inbounds %struct.IPAddressRange_st, %struct.IPAddressRange_st* %7, i64 0, i32 0
  %8 = load %struct.asn1_string_st*, %struct.asn1_string_st** %min, align 8, !tbaa !25
  %call14 = tail call fastcc i32 @i2r_address(%struct.bio_st* noundef %out, i32 noundef %afi, i8 noundef zeroext 0, %struct.asn1_string_st* noundef %8) #11
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup26, label %if.end17

if.end17:                                         ; preds = %sw.bb12
  %call18 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0)) #10
  %9 = load %struct.IPAddressRange_st*, %struct.IPAddressRange_st** %addressRange, align 8, !tbaa !14
  %max = getelementptr inbounds %struct.IPAddressRange_st, %struct.IPAddressRange_st* %9, i64 0, i32 1
  %10 = load %struct.asn1_string_st*, %struct.asn1_string_st** %max, align 8, !tbaa !27
  %call21 = tail call fastcc i32 @i2r_address(%struct.bio_st* noundef %out, i32 noundef %afi, i8 noundef zeroext -1, %struct.asn1_string_st* noundef %10) #11
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %cleanup26, label %if.end24

if.end24:                                         ; preds = %if.end17
  %call25 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0)) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.end24, %for.body
  %inc = add nuw nsw i32 %i.049, 1
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #10
  %cmp = icmp slt i32 %inc, %call1
  br i1 %cmp, label %for.body, label %cleanup26, !llvm.loop !68

cleanup26:                                        ; preds = %for.inc, %sw.bb, %sw.bb12, %if.end17, %entry
  %retval.2 = phi i32 [ 1, %entry ], [ 0, %if.end17 ], [ 0, %sw.bb12 ], [ 0, %sw.bb ], [ 1, %for.inc ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @i2r_address(%struct.bio_st* noundef %out, i32 noundef %afi, i8 noundef zeroext %fill, %struct.asn1_string_st* nocapture noundef readonly %bs) unnamed_addr #1 {
entry:
  %addr = alloca [16 x i8], align 16
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %addr, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %bs, i64 0, i32 0
  %1 = load i32, i32* %length, align 8, !tbaa !13
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  switch i32 %afi, label %for.cond55.preheader [
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
  ]

for.cond55.preheader:                             ; preds = %if.end
  %cmp57104.not = icmp eq i32 %1, 0
  br i1 %cmp57104.not, label %for.end68, label %for.body59.lr.ph

for.body59.lr.ph:                                 ; preds = %for.cond55.preheader
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %bs, i64 0, i32 2
  br label %for.body59

sw.bb:                                            ; preds = %if.end
  %call = call fastcc i32 @addr_expand(i8* noundef nonnull %0, %struct.asn1_string_st* noundef nonnull %bs, i32 noundef 4, i8 noundef zeroext %fill) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %sw.bb
  %2 = load i8, i8* %0, align 16, !tbaa !14
  %conv = zext i8 %2 to i32
  %arrayidx3 = getelementptr inbounds [16 x i8], [16 x i8]* %addr, i64 0, i64 1
  %3 = load i8, i8* %arrayidx3, align 1, !tbaa !14
  %conv4 = zext i8 %3 to i32
  %arrayidx5 = getelementptr inbounds [16 x i8], [16 x i8]* %addr, i64 0, i64 2
  %4 = load i8, i8* %arrayidx5, align 2, !tbaa !14
  %conv6 = zext i8 %4 to i32
  %arrayidx7 = getelementptr inbounds [16 x i8], [16 x i8]* %addr, i64 0, i64 3
  %5 = load i8, i8* %arrayidx7, align 1, !tbaa !14
  %conv8 = zext i8 %5 to i32
  %call9 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv6, i32 noundef %conv8) #10
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  %call12 = call fastcc i32 @addr_expand(i8* noundef nonnull %0, %struct.asn1_string_st* noundef nonnull %bs, i32 noundef 16, i8 noundef zeroext %fill) #11
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %sw.bb10
  %arrayidx18 = getelementptr inbounds [16 x i8], [16 x i8]* %addr, i64 0, i64 15
  %6 = load i8, i8* %arrayidx18, align 1, !tbaa !14
  %cmp20 = icmp eq i8 %6, 0
  %arrayidx24 = getelementptr inbounds [16 x i8], [16 x i8]* %addr, i64 0, i64 14
  %7 = load i8, i8* %arrayidx24, align 2
  %cmp26 = icmp eq i8 %7, 0
  %or.cond = select i1 %cmp20, i1 %cmp26, i1 false
  br i1 %or.cond, label %for.cond.1, label %for.body32.preheader, !llvm.loop !69

for.cond.1:                                       ; preds = %for.cond.preheader
  %arrayidx18.1 = getelementptr inbounds [16 x i8], [16 x i8]* %addr, i64 0, i64 13
  %8 = load i8, i8* %arrayidx18.1, align 1, !tbaa !14
  %cmp20.1 = icmp eq i8 %8, 0
  %arrayidx24.1 = getelementptr inbounds [16 x i8], [16 x i8]* %addr, i64 0, i64 12
  %9 = load i8, i8* %arrayidx24.1, align 4
  %cmp26.1 = icmp eq i8 %9, 0
  %or.cond122 = select i1 %cmp20.1, i1 %cmp26.1, i1 false
  br i1 %or.cond122, label %for.cond.2, label %for.body32.preheader, !llvm.loop !69

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx18.2 = getelementptr inbounds [16 x i8], [16 x i8]* %addr, i64 0, i64 11
  %10 = load i8, i8* %arrayidx18.2, align 1, !tbaa !14
  %cmp20.2 = icmp eq i8 %10, 0
  %arrayidx24.2 = getelementptr inbounds [16 x i8], [16 x i8]* %addr, i64 0, i64 10
  %11 = load i8, i8* %arrayidx24.2, align 2
  %cmp26.2 = icmp eq i8 %11, 0
  %or.cond123 = select i1 %cmp20.2, i1 %cmp26.2, i1 false
  br i1 %or.cond123, label %for.cond.3, label %for.body32.preheader, !llvm.loop !69

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx18.3 = getelementptr inbounds [16 x i8], [16 x i8]* %addr, i64 0, i64 9
  %12 = load i8, i8* %arrayidx18.3, align 1, !tbaa !14
  %cmp20.3 = icmp eq i8 %12, 0
  %arrayidx24.3 = getelementptr inbounds [16 x i8], [16 x i8]* %addr, i64 0, i64 8
  %13 = load i8, i8* %arrayidx24.3, align 8
  %cmp26.3 = icmp eq i8 %13, 0
  %or.cond124 = select i1 %cmp20.3, i1 %cmp26.3, i1 false
  br i1 %or.cond124, label %for.cond.4, label %for.body32.preheader, !llvm.loop !69

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx18.4 = getelementptr inbounds [16 x i8], [16 x i8]* %addr, i64 0, i64 7
  %14 = load i8, i8* %arrayidx18.4, align 1, !tbaa !14
  %cmp20.4 = icmp eq i8 %14, 0
  %arrayidx24.4 = getelementptr inbounds [16 x i8], [16 x i8]* %addr, i64 0, i64 6
  %15 = load i8, i8* %arrayidx24.4, align 2
  %cmp26.4 = icmp eq i8 %15, 0
  %or.cond125 = select i1 %cmp20.4, i1 %cmp26.4, i1 false
  br i1 %or.cond125, label %for.cond.5, label %for.body32.preheader, !llvm.loop !69

for.cond.5:                                       ; preds = %for.cond.4
  %arrayidx18.5 = getelementptr inbounds [16 x i8], [16 x i8]* %addr, i64 0, i64 5
  %16 = load i8, i8* %arrayidx18.5, align 1, !tbaa !14
  %cmp20.5 = icmp eq i8 %16, 0
  %arrayidx24.5 = getelementptr inbounds [16 x i8], [16 x i8]* %addr, i64 0, i64 4
  %17 = load i8, i8* %arrayidx24.5, align 4
  %cmp26.5 = icmp eq i8 %17, 0
  %or.cond126 = select i1 %cmp20.5, i1 %cmp26.5, i1 false
  br i1 %or.cond126, label %for.cond.6, label %for.body32.preheader, !llvm.loop !69

for.cond.6:                                       ; preds = %for.cond.5
  %arrayidx18.6 = getelementptr inbounds [16 x i8], [16 x i8]* %addr, i64 0, i64 3
  %18 = load i8, i8* %arrayidx18.6, align 1, !tbaa !14
  %cmp20.6 = icmp eq i8 %18, 0
  %arrayidx24.6 = getelementptr inbounds [16 x i8], [16 x i8]* %addr, i64 0, i64 2
  %19 = load i8, i8* %arrayidx24.6, align 2
  %cmp26.6 = icmp eq i8 %19, 0
  %or.cond127 = select i1 %cmp20.6, i1 %cmp26.6, i1 false
  br i1 %or.cond127, label %for.cond.7, label %for.body32.preheader, !llvm.loop !69

for.cond.7:                                       ; preds = %for.cond.6
  %arrayidx18.7 = getelementptr inbounds [16 x i8], [16 x i8]* %addr, i64 0, i64 1
  %20 = load i8, i8* %arrayidx18.7, align 1, !tbaa !14
  %cmp20.7 = icmp eq i8 %20, 0
  %21 = load i8, i8* %0, align 16
  %cmp26.7 = icmp eq i8 %21, 0
  %or.cond128 = select i1 %cmp20.7, i1 %cmp26.7, i1 false
  br i1 %or.cond128, label %if.end49.thread, label %for.body32.preheader, !llvm.loop !69

if.end49.thread:                                  ; preds = %for.cond.7
  %call48120 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0)) #10
  br label %if.then52

for.body32.preheader:                             ; preds = %for.cond.7, %for.cond.6, %for.cond.5, %for.cond.4, %for.cond.3, %for.cond.2, %for.cond.1, %for.cond.preheader
  %n.0.lcssa.ph = phi i64 [ 16, %for.cond.preheader ], [ 14, %for.cond.1 ], [ 12, %for.cond.2 ], [ 10, %for.cond.3 ], [ 8, %for.cond.4 ], [ 6, %for.cond.5 ], [ 4, %for.cond.6 ], [ 2, %for.cond.7 ]
  br label %for.body32

for.body32:                                       ; preds = %for.body32.preheader, %for.body32
  %indvars.iv = phi i64 [ 0, %for.body32.preheader ], [ %indvars.iv.next, %for.body32 ]
  %arrayidx34 = getelementptr inbounds [16 x i8], [16 x i8]* %addr, i64 0, i64 %indvars.iv
  %22 = load i8, i8* %arrayidx34, align 2, !tbaa !14
  %conv35 = zext i8 %22 to i32
  %shl = shl nuw nsw i32 %conv35, 8
  %23 = or i64 %indvars.iv, 1
  %arrayidx37 = getelementptr inbounds [16 x i8], [16 x i8]* %addr, i64 0, i64 %23
  %24 = load i8, i8* %arrayidx37, align 1, !tbaa !14
  %conv38 = zext i8 %24 to i32
  %or = or i32 %shl, %conv38
  %cmp39 = icmp ult i64 %indvars.iv, 14
  %cond = select i1 %cmp39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i64 0, i64 0)
  %call41 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), i32 noundef %or, i8* noundef %cond) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %cmp30 = icmp ult i64 %indvars.iv.next, %n.0.lcssa.ph
  br i1 %cmp30, label %for.body32, label %for.end44, !llvm.loop !70

for.end44:                                        ; preds = %for.body32
  %25 = trunc i64 %indvars.iv.next to i32
  %cmp45 = icmp ult i32 %25, 16
  br i1 %cmp45, label %if.end49, label %cleanup

if.end49:                                         ; preds = %for.end44
  %call48 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0)) #10
  %cmp50 = icmp eq i32 %25, 0
  br i1 %cmp50, label %if.then52, label %cleanup

if.then52:                                        ; preds = %if.end49.thread, %if.end49
  %call53 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0)) #10
  br label %cleanup

for.body59:                                       ; preds = %for.body59.lr.ph, %for.body59
  %indvars.iv110 = phi i64 [ 0, %for.body59.lr.ph ], [ %indvars.iv.next111, %for.body59 ]
  %cmp60.not = icmp eq i64 %indvars.iv110, 0
  %cond62 = select i1 %cmp60.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0)
  %26 = load i8*, i8** %data, align 8, !tbaa !9
  %arrayidx64 = getelementptr inbounds i8, i8* %26, i64 %indvars.iv110
  %27 = load i8, i8* %arrayidx64, align 1, !tbaa !14
  %conv65 = zext i8 %27 to i32
  %call66 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i64 0, i64 0), i8* noundef %cond62, i32 noundef %conv65) #10
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  %28 = load i32, i32* %length, align 8, !tbaa !13
  %29 = sext i32 %28 to i64
  %cmp57 = icmp slt i64 %indvars.iv.next111, %29
  br i1 %cmp57, label %for.body59, label %for.end68, !llvm.loop !71

for.end68:                                        ; preds = %for.body59, %for.cond55.preheader
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %bs, i64 0, i32 3
  %30 = load i64, i64* %flags, align 8, !tbaa !24
  %31 = trunc i64 %30 to i32
  %conv69 = and i32 %31, 7
  %call70 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0), i32 noundef %conv69) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end44, %if.end2, %for.end68, %if.then52, %if.end49, %sw.bb10, %sw.bb, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %sw.bb ], [ 0, %sw.bb10 ], [ 1, %if.end49 ], [ 1, %if.then52 ], [ 1, %for.end68 ], [ 1, %if.end2 ], [ 1, %for.end44 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  ret i32 %retval.0
}

declare %struct.stack_st* @OPENSSL_sk_dup(%struct.stack_st* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nounwind }
attributes #13 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"IPAddressFamily_st", !6, i64 0, !6, i64 8}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 8}
!10 = !{!"asn1_string_st", !11, i64 0, !11, i64 4, !6, i64 8, !12, i64 16}
!11 = !{!"int", !7, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!10, !11, i64 0}
!14 = !{!7, !7, i64 0}
!15 = !{!5, !6, i64 8}
!16 = !{!17, !11, i64 0}
!17 = !{!"IPAddressChoice_st", !11, i64 0, !7, i64 8}
!18 = !{!11, !11, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!6, !6, i64 0}
!22 = !{!23, !11, i64 0}
!23 = !{!"IPAddressOrRange_st", !11, i64 0, !7, i64 8}
!24 = !{!10, !12, i64 16}
!25 = !{!26, !6, i64 0}
!26 = !{!"IPAddressRange_st", !6, i64 0, !6, i64 8}
!27 = !{!26, !6, i64 8}
!28 = distinct !{!28, !20}
!29 = distinct !{!29, !20}
!30 = distinct !{!30, !20}
!31 = distinct !{!31, !20}
!32 = distinct !{!32, !20}
!33 = distinct !{!33, !20}
!34 = distinct !{!34, !20}
!35 = distinct !{!35, !20}
!36 = distinct !{!36, !20}
!37 = distinct !{!37, !20}
!38 = distinct !{!38, !20}
!39 = distinct !{!39, !20}
!40 = distinct !{!40, !20}
!41 = !{!42, !6, i64 8}
!42 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16}
!43 = !{!42, !6, i64 16}
!44 = distinct !{!44, !20}
!45 = distinct !{!45, !20}
!46 = distinct !{!46, !20}
!47 = distinct !{!47, !20}
!48 = !{i32 0, i32 17}
!49 = distinct !{!49, !20}
!50 = !{!51, !6, i64 152}
!51 = !{!"x509_store_ctx_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !11, i64 144, !11, i64 148, !6, i64 152, !6, i64 160, !11, i64 168, !11, i64 172, !11, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !11, i64 208, !11, i64 212, !6, i64 216, !52, i64 224, !6, i64 240, !11, i64 248, !6, i64 256, !6, i64 264}
!52 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!53 = !{!51, !6, i64 56}
!54 = !{!51, !11, i64 176}
!55 = !{!56, !6, i64 296}
!56 = !{!"x509_st", !57, i64 0, !58, i64 136, !10, i64 152, !61, i64 176, !7, i64 192, !52, i64 200, !12, i64 216, !12, i64 224, !11, i64 232, !11, i64 236, !11, i64 240, !11, i64 244, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !7, i64 312, !6, i64 336, !6, i64 344, !11, i64 352, !6, i64 360, !6, i64 368, !6, i64 376}
!57 = !{!"x509_cinf_st", !6, i64 0, !10, i64 8, !58, i64 32, !6, i64 48, !59, i64 56, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !60, i64 112}
!58 = !{!"X509_algor_st", !6, i64 0, !6, i64 8}
!59 = !{!"X509_val_st", !6, i64 0, !6, i64 8}
!60 = !{!"ASN1_ENCODING_st", !6, i64 0, !12, i64 8, !11, i64 16}
!61 = !{!"x509_sig_info_st", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!62 = !{!51, !11, i64 172}
!63 = !{!51, !6, i64 184}
!64 = distinct !{!64, !20}
!65 = distinct !{!65, !20}
!66 = distinct !{!66, !20}
!67 = distinct !{!67, !20}
!68 = distinct !{!68, !20}
!69 = distinct !{!69, !20}
!70 = distinct !{!70, !20}
!71 = distinct !{!71, !20}
