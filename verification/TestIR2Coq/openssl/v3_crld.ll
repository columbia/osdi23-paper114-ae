; ModuleID = 'crypto/x509/v3_crld.c'
source_filename = "crypto/x509/v3_crld.c"
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
%struct.X509_req_st = type { %struct.X509_req_info_st, %struct.X509_algor_st, %struct.asn1_string_st*, i32, i8*, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.X509_req_info_st = type { %struct.ASN1_ENCODING_st, %struct.asn1_string_st*, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.X509_crl_st = type { %struct.X509_crl_info_st, %struct.X509_algor_st, %struct.asn1_string_st, i32, i32, %struct.AUTHORITY_KEYID_st*, %struct.ISSUING_DIST_POINT_st*, i32, i32, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAMES*, [20 x i8], %struct.x509_crl_method_st*, i8*, i8*, %struct.ossl_lib_ctx_st*, i8* }
%struct.X509_crl_info_st = type { %struct.asn1_string_st*, %struct.X509_algor_st, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_REVOKED*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.stack_st_X509_REVOKED = type opaque
%struct.ISSUING_DIST_POINT_st = type { %struct.DIST_POINT_NAME_st*, i32, i32, %struct.asn1_string_st*, i32, i32 }
%struct.DIST_POINT_NAME_st = type { i32, %union.anon.1, %struct.X509_name_st* }
%union.anon.1 = type { %struct.stack_st_GENERAL_NAME* }
%struct.stack_st_GENERAL_NAMES = type opaque
%struct.x509_crl_method_st = type { i32, i32 (%struct.X509_crl_st*)*, i32 (%struct.X509_crl_st*)*, i32 (%struct.X509_crl_st*, %struct.x509_revoked_st**, %struct.asn1_string_st*, %struct.X509_name_st*)*, i32 (%struct.X509_crl_st*, %struct.evp_pkey_st*)* }
%struct.x509_revoked_st = type { %struct.asn1_string_st, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.stack_st_GENERAL_NAME*, i32, i32 }
%struct.X509V3_CONF_METHOD_st = type { i8* (i8*, i8*, i8*)*, %struct.stack_st_CONF_VALUE* (i8*, i8*)*, void (i8*, i8*)*, void (i8*, %struct.stack_st_CONF_VALUE*)* }
%struct.evp_pkey_st = type opaque
%struct.bio_st = type opaque
%struct.ASN1_AUX_st = type { i8*, i32, i32, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)*, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* }
%struct.ASN1_VALUE_st = type opaque
%struct.BIT_STRING_BITNAME_st = type { i32, i8*, i8* }
%struct.stack_st = type opaque
%struct.DIST_POINT_st = type { %struct.DIST_POINT_NAME_st*, %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAME*, i32 }
%struct.CONF_VALUE = type { i8*, i8*, i8* }
%struct.GENERAL_NAME_st = type { i32, %union.anon.2 }
%union.anon.2 = type { i8* }
%struct.X509_name_entry_st = type { %struct.asn1_object_st*, %struct.asn1_string_st*, i32, i32 }

@ossl_v3_crld = local_unnamed_addr constant { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 103, i32 0, %struct.ASN1_ITEM_st* ()* @CRL_DIST_POINTS_it, i8* ()* null, void (i8*)* null, i8* (i8*, i8**, i64)* null, i32 (i8*, i8**)* null, i8* (%struct.v3_ext_method*, i8*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* @v2i_crld, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* @i2r_crldp, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, i8* null }, align 8
@ossl_v3_freshest_crl = local_unnamed_addr constant { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 857, i32 0, %struct.ASN1_ITEM_st* ()* @CRL_DIST_POINTS_it, i8* ()* null, void (i8*)* null, i8* (i8*, i8**, i64)* null, i32 (i8*, i8**)* null, i8* (%struct.v3_ext_method*, i8*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* @v2i_crld, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* @i2r_crldp, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, i8* null }, align 8
@DIST_POINT_NAME_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 2, i64 0, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @DIST_POINT_NAME_ch_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* bitcast (%struct.ASN1_AUX_st* @DIST_POINT_NAME_aux to i8*), i64 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0) }, align 8
@DIST_POINT_NAME_aux = internal constant %struct.ASN1_AUX_st { i8* null, i32 0, i32 0, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* @dpn_cb, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* null }, align 8
@.str = private unnamed_addr constant [16 x i8] c"DIST_POINT_NAME\00", align 1
@DIST_POINT_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @DIST_POINT_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"DIST_POINT\00", align 1
@CRL_DIST_POINTS_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 -1, %struct.ASN1_TEMPLATE_st* bitcast ({ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }* @CRL_DIST_POINTS_item_tt to %struct.ASN1_TEMPLATE_st*), i64 0, i8* null, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0) }, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"CRL_DIST_POINTS\00", align 1
@ISSUING_DIST_POINT_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([6 x %struct.ASN1_TEMPLATE_st], [6 x %struct.ASN1_TEMPLATE_st]* bitcast ([6 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @ISSUING_DIST_POINT_seq_tt to [6 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 6, i8* null, i64 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0) }, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"ISSUING_DIST_POINT\00", align 1
@ossl_v3_idp = local_unnamed_addr constant { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 770, i32 4, %struct.ASN1_ITEM_st* ()* @ISSUING_DIST_POINT_it, i8* ()* null, void (i8*)* null, i8* (i8*, i8**, i64)* null, i32 (i8*, i8**)* null, i8* (%struct.v3_ext_method*, i8*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* @v2i_idp, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* @i2r_idp, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, i8* null }, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"crypto/x509/v3_crld.c\00", align 1
@__func__.v2i_crld = private unnamed_addr constant [9 x i8] c"v2i_crld\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"reasons\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"CRLissuer\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"fullname\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"relativename\00", align 1
@__func__.set_dist_point_name = private unnamed_addr constant [20 x i8] c"set_dist_point_name\00", align 1
@reason_flags = internal unnamed_addr constant [10 x %struct.BIT_STRING_BITNAME_st] [%struct.BIT_STRING_BITNAME_st { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0) }, %struct.BIT_STRING_BITNAME_st { i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0) }, %struct.BIT_STRING_BITNAME_st { i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0) }, %struct.BIT_STRING_BITNAME_st { i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0) }, %struct.BIT_STRING_BITNAME_st { i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0) }, %struct.BIT_STRING_BITNAME_st { i32 5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0) }, %struct.BIT_STRING_BITNAME_st { i32 6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0) }, %struct.BIT_STRING_BITNAME_st { i32 7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i32 0, i32 0) }, %struct.BIT_STRING_BITNAME_st { i32 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0) }, %struct.BIT_STRING_BITNAME_st { i32 -1, i8* null, i8* null }], align 16
@.str.9 = private unnamed_addr constant [7 x i8] c"Unused\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"unused\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Key Compromise\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"keyCompromise\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"CA Compromise\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"CACompromise\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"Affiliation Changed\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"affiliationChanged\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"Superseded\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"superseded\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"Cessation Of Operation\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"cessationOfOperation\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"Certificate Hold\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"certificateHold\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"Privilege Withdrawn\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"privilegeWithdrawn\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"AA Compromise\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"AACompromise\00", align 1
@__func__.gnames_from_sectname = private unnamed_addr constant [21 x i8] c"gnames_from_sectname\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"name.fullname\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"name.relativename\00", align 1
@DIST_POINT_NAME_ch_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 140, i64 0, i64 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @GENERAL_NAME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 138, i64 1, i64 8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_NAME_ENTRY_it }], align 16
@.str.30 = private unnamed_addr constant [10 x i8] c"distpoint\00", align 1
@DIST_POINT_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 0, i64 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @DIST_POINT_NAME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 137, i64 1, i64 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_BIT_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 141, i64 2, i64 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @GENERAL_NAME_it }], align 16
@.str.32 = private unnamed_addr constant [22 x i8] c"CRLDistributionPoints\00", align 1
@CRL_DIST_POINTS_item_tt = internal constant { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4, i64 0, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @DIST_POINT_it }, align 8
@.str.34 = private unnamed_addr constant [9 x i8] c"onlyuser\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"onlyCA\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"onlysomereasons\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"indirectCRL\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"onlyattr\00", align 1
@ISSUING_DIST_POINT_seq_tt = internal constant [6 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 0, i64 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @DIST_POINT_NAME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 137, i64 1, i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_FBOOLEAN_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 137, i64 2, i64 12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_FBOOLEAN_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 137, i64 3, i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_BIT_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 137, i64 4, i64 24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_FBOOLEAN_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 137, i64 5, i64 28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_FBOOLEAN_it }], align 16
@.str.40 = private unnamed_addr constant [7 x i8] c"onlyAA\00", align 1
@__func__.v2i_idp = private unnamed_addr constant [8 x i8] c"v2i_idp\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"name=\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c", value=\00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"%*sOnly User Certificates\0A\00", align 1
@.str.44 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"%*sOnly CA Certificates\0A\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"%*sIndirect CRL\0A\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"Only Some Reasons\00", align 1
@.str.48 = private unnamed_addr constant [32 x i8] c"%*sOnly Attribute Certificates\0A\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"%*s<EMPTY>\0A\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"%*sFull Name:\0A\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"%*sRelative Name:\0A%*s\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"%*s%s:\0A%*s\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"<EMPTY>\0A\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"Reasons\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"%*sCRL Issuer:\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @CRL_DIST_POINTS_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CRL_DIST_POINTS_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @v2i_crld(%struct.v3_ext_method* noundef %method, %struct.v3_ext_ctx* noundef %ctx, %struct.stack_st_CONF_VALUE* noundef %nval) #1 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %nval) #5
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %call3 = tail call %struct.stack_st* @OPENSSL_sk_new_reserve(i32 (i8*, i8*)* noundef null, i32 noundef %call1) #6
  %0 = bitcast %struct.stack_st* %call3 to %struct.stack_st_DIST_POINT*
  %cmp = icmp eq %struct.stack_st* %call3, null
  br i1 %cmp, label %merr, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp4105 = icmp sgt i32 %call1, 0
  br i1 %cmp4105, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.0106 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %call6 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.0106) #6
  %value = getelementptr inbounds i8, i8* %call6, i64 16
  %1 = bitcast i8* %value to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !4
  %cmp7 = icmp eq i8* %2, null
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %for.body
  %name = getelementptr inbounds i8, i8* %call6, i64 8
  %3 = bitcast i8* %name to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !9
  %call9 = tail call %struct.stack_st_CONF_VALUE* @X509V3_get_section(%struct.v3_ext_ctx* noundef %ctx, i8* noundef %4) #6
  %tobool.not = icmp eq %struct.stack_st_CONF_VALUE* %call9, null
  br i1 %tobool.not, label %err, label %if.end11

if.end11:                                         ; preds = %if.then8
  %call12 = tail call fastcc %struct.DIST_POINT_st* @crldp_from_section(%struct.v3_ext_ctx* noundef %ctx, %struct.stack_st_CONF_VALUE* noundef nonnull %call9) #5
  tail call void @X509V3_section_free(%struct.v3_ext_ctx* noundef %ctx, %struct.stack_st_CONF_VALUE* noundef nonnull %call9) #6
  %cmp13 = icmp eq %struct.DIST_POINT_st* %call12, null
  br i1 %cmp13, label %err, label %cleanup

cleanup:                                          ; preds = %if.end11
  %call16 = tail call fastcc %struct.stack_st* @ossl_check_DIST_POINT_sk_type(%struct.stack_st_DIST_POINT* noundef nonnull %0) #5
  %5 = bitcast %struct.DIST_POINT_st* %call12 to i8*
  %call18 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call16, i8* noundef nonnull %5) #6
  br label %for.inc

if.else:                                          ; preds = %for.body
  %6 = bitcast i8* %call6 to %struct.CONF_VALUE*
  %call19 = tail call %struct.GENERAL_NAME_st* @v2i_GENERAL_NAME(%struct.v3_ext_method* noundef %method, %struct.v3_ext_ctx* noundef %ctx, %struct.CONF_VALUE* noundef %6) #6
  %cmp20 = icmp eq %struct.GENERAL_NAME_st* %call19, null
  br i1 %cmp20, label %err, label %if.end22

if.end22:                                         ; preds = %if.else
  %call23 = tail call %struct.stack_st_GENERAL_NAME* @GENERAL_NAMES_new() #6
  %cmp24 = icmp eq %struct.stack_st_GENERAL_NAME* %call23, null
  br i1 %cmp24, label %merr, label %if.end26

if.end26:                                         ; preds = %if.end22
  %call27 = tail call fastcc %struct.stack_st* @ossl_check_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef nonnull %call23) #5
  %7 = bitcast %struct.GENERAL_NAME_st* %call19 to i8*
  %call29 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call27, i8* noundef nonnull %7) #6
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %merr, label %if.end32

if.end32:                                         ; preds = %if.end26
  %call33 = tail call %struct.DIST_POINT_st* @DIST_POINT_new() #5
  %cmp34 = icmp eq %struct.DIST_POINT_st* %call33, null
  br i1 %cmp34, label %merr, label %if.end36

if.end36:                                         ; preds = %if.end32
  %call37 = tail call fastcc %struct.stack_st* @ossl_check_DIST_POINT_sk_type(%struct.stack_st_DIST_POINT* noundef nonnull %0) #5
  %8 = bitcast %struct.DIST_POINT_st* %call33 to i8*
  %call39 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call37, i8* noundef nonnull %8) #6
  %call40 = tail call %struct.DIST_POINT_NAME_st* @DIST_POINT_NAME_new() #5
  %distpoint = getelementptr inbounds %struct.DIST_POINT_st, %struct.DIST_POINT_st* %call33, i64 0, i32 0
  store %struct.DIST_POINT_NAME_st* %call40, %struct.DIST_POINT_NAME_st** %distpoint, align 8, !tbaa !10
  %cmp41 = icmp eq %struct.DIST_POINT_NAME_st* %call40, null
  br i1 %cmp41, label %merr, label %if.end43

if.end43:                                         ; preds = %if.end36
  %fullname = getelementptr inbounds %struct.DIST_POINT_NAME_st, %struct.DIST_POINT_NAME_st* %call40, i64 0, i32 1, i32 0
  store %struct.stack_st_GENERAL_NAME* %call23, %struct.stack_st_GENERAL_NAME** %fullname, align 8, !tbaa !13
  %9 = load %struct.DIST_POINT_NAME_st*, %struct.DIST_POINT_NAME_st** %distpoint, align 8, !tbaa !10
  %type = getelementptr inbounds %struct.DIST_POINT_NAME_st, %struct.DIST_POINT_NAME_st* %9, i64 0, i32 0
  store i32 0, i32* %type, align 8, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %cleanup, %if.end43
  %inc = add nuw nsw i32 %i.0106, 1
  %exitcond.not = icmp eq i32 %inc, %call1
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !16

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %10 = bitcast %struct.stack_st* %call3 to i8*
  br label %cleanup53

merr:                                             ; preds = %if.end36, %if.end32, %if.end26, %if.end22, %entry
  %gen.3 = phi %struct.GENERAL_NAME_st* [ null, %entry ], [ %call19, %if.end22 ], [ %call19, %if.end26 ], [ null, %if.end32 ], [ null, %if.end36 ]
  %gens.3 = phi %struct.stack_st_GENERAL_NAME* [ null, %entry ], [ null, %if.end22 ], [ %call23, %if.end26 ], [ %call23, %if.end32 ], [ %call23, %if.end36 ]
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 noundef 283, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.v2i_crld, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #6
  br label %err

err:                                              ; preds = %if.end11, %if.then8, %if.else, %merr
  %gen.4 = phi %struct.GENERAL_NAME_st* [ %gen.3, %merr ], [ null, %if.else ], [ null, %if.then8 ], [ null, %if.end11 ]
  %gens.4 = phi %struct.stack_st_GENERAL_NAME* [ %gens.3, %merr ], [ null, %if.else ], [ null, %if.then8 ], [ null, %if.end11 ]
  tail call void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef %gen.4) #6
  tail call void @GENERAL_NAMES_free(%struct.stack_st_GENERAL_NAME* noundef %gens.4) #6
  %call51 = tail call fastcc %struct.stack_st* @ossl_check_DIST_POINT_sk_type(%struct.stack_st_DIST_POINT* noundef %0) #5
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call51, void (i8*)* noundef bitcast (void (%struct.DIST_POINT_st*)* @DIST_POINT_free to void (i8*)*)) #6
  br label %cleanup53

cleanup53:                                        ; preds = %err, %for.end
  %retval.0 = phi i8* [ null, %err ], [ %10, %for.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @i2r_crldp(%struct.v3_ext_method* nocapture noundef readnone %method, i8* noundef %pcrldp, %struct.bio_st* noundef %out, i32 noundef %indent) #1 {
entry:
  %0 = bitcast i8* %pcrldp to %struct.stack_st_DIST_POINT*
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_DIST_POINT_sk_type(%struct.stack_st_DIST_POINT* noundef %0) #5
  %call141 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp42 = icmp sgt i32 %call141, 0
  br i1 %cmp42, label %if.end.peel, label %for.end

if.end.peel:                                      ; preds = %entry
  %call5.peel = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef 0) #6
  %distpoint.peel = bitcast i8* %call5.peel to %struct.DIST_POINT_NAME_st**
  %1 = load %struct.DIST_POINT_NAME_st*, %struct.DIST_POINT_NAME_st** %distpoint.peel, align 8, !tbaa !10
  %tobool.not.peel = icmp eq %struct.DIST_POINT_NAME_st* %1, null
  br i1 %tobool.not.peel, label %if.end9.peel, label %if.then6.peel

if.then6.peel:                                    ; preds = %if.end.peel
  tail call fastcc void @print_distpoint(%struct.bio_st* noundef %out, %struct.DIST_POINT_NAME_st* noundef nonnull %1, i32 noundef %indent) #5
  br label %if.end9.peel

if.end9.peel:                                     ; preds = %if.then6.peel, %if.end.peel
  %reasons.peel = getelementptr inbounds i8, i8* %call5.peel, i64 8
  %2 = bitcast i8* %reasons.peel to %struct.asn1_string_st**
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %2, align 8, !tbaa !18
  %tobool10.not.peel = icmp eq %struct.asn1_string_st* %3, null
  br i1 %tobool10.not.peel, label %if.end14.peel, label %if.then11.peel

if.then11.peel:                                   ; preds = %if.end9.peel
  tail call fastcc void @print_reasons(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i64 0, i64 0), %struct.asn1_string_st* noundef nonnull %3, i32 noundef %indent) #5
  br label %if.end14.peel

if.end14.peel:                                    ; preds = %if.then11.peel, %if.end9.peel
  %CRLissuer.peel = getelementptr inbounds i8, i8* %call5.peel, i64 16
  %4 = bitcast i8* %CRLissuer.peel to %struct.stack_st_GENERAL_NAME**
  %5 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %4, align 8, !tbaa !19
  %tobool15.not.peel = icmp eq %struct.stack_st_GENERAL_NAME* %5, null
  br i1 %tobool15.not.peel, label %for.inc.peel, label %if.then16.peel

if.then16.peel:                                   ; preds = %if.end14.peel
  %call17.peel = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.44, i64 0, i64 0)) #6
  %6 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %4, align 8, !tbaa !19
  tail call fastcc void @print_gens(%struct.bio_st* noundef %out, %struct.stack_st_GENERAL_NAME* noundef %6, i32 noundef %indent) #5
  br label %for.inc.peel

for.inc.peel:                                     ; preds = %if.then16.peel, %if.end14.peel
  %call1.peel = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp.peel = icmp sgt i32 %call1.peel, 1
  br i1 %cmp.peel, label %if.end, label %for.end

if.end:                                           ; preds = %for.inc.peel, %for.inc
  %i.043 = phi i32 [ %inc, %for.inc ], [ 1, %for.inc.peel ]
  %call3 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0)) #6
  %call5 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.043) #6
  %distpoint = bitcast i8* %call5 to %struct.DIST_POINT_NAME_st**
  %7 = load %struct.DIST_POINT_NAME_st*, %struct.DIST_POINT_NAME_st** %distpoint, align 8, !tbaa !10
  %tobool.not = icmp eq %struct.DIST_POINT_NAME_st* %7, null
  br i1 %tobool.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end
  tail call fastcc void @print_distpoint(%struct.bio_st* noundef %out, %struct.DIST_POINT_NAME_st* noundef nonnull %7, i32 noundef %indent) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end
  %reasons = getelementptr inbounds i8, i8* %call5, i64 8
  %8 = bitcast i8* %reasons to %struct.asn1_string_st**
  %9 = load %struct.asn1_string_st*, %struct.asn1_string_st** %8, align 8, !tbaa !18
  %tobool10.not = icmp eq %struct.asn1_string_st* %9, null
  br i1 %tobool10.not, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end9
  tail call fastcc void @print_reasons(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i64 0, i64 0), %struct.asn1_string_st* noundef nonnull %9, i32 noundef %indent) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9
  %CRLissuer = getelementptr inbounds i8, i8* %call5, i64 16
  %10 = bitcast i8* %CRLissuer to %struct.stack_st_GENERAL_NAME**
  %11 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %10, align 8, !tbaa !19
  %tobool15.not = icmp eq %struct.stack_st_GENERAL_NAME* %11, null
  br i1 %tobool15.not, label %for.inc, label %if.then16

if.then16:                                        ; preds = %if.end14
  %call17 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.44, i64 0, i64 0)) #6
  %12 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %10, align 8, !tbaa !19
  tail call fastcc void @print_gens(%struct.bio_st* noundef %out, %struct.stack_st_GENERAL_NAME* noundef %12, i32 noundef %indent) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end14, %if.then16
  %inc = add nuw nsw i32 %i.043, 1
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp = icmp slt i32 %inc, %call1
  br i1 %cmp, label %if.end, label %for.end, !llvm.loop !20

for.end:                                          ; preds = %for.inc, %for.inc.peel, %entry
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @DIST_POINT_NAME_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @DIST_POINT_NAME_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.DIST_POINT_NAME_st* @d2i_DIST_POINT_NAME(%struct.DIST_POINT_NAME_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.DIST_POINT_NAME_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @DIST_POINT_NAME_it.local_it) #6
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.DIST_POINT_NAME_st*
  ret %struct.DIST_POINT_NAME_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_DIST_POINT_NAME(%struct.DIST_POINT_NAME_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.DIST_POINT_NAME_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @DIST_POINT_NAME_it.local_it) #6
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.DIST_POINT_NAME_st* @DIST_POINT_NAME_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @DIST_POINT_NAME_it.local_it) #6
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.DIST_POINT_NAME_st*
  ret %struct.DIST_POINT_NAME_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @DIST_POINT_NAME_free(%struct.DIST_POINT_NAME_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.DIST_POINT_NAME_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @DIST_POINT_NAME_it.local_it) #6
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @DIST_POINT_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @DIST_POINT_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.DIST_POINT_st* @d2i_DIST_POINT(%struct.DIST_POINT_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.DIST_POINT_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @DIST_POINT_it.local_it) #6
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.DIST_POINT_st*
  ret %struct.DIST_POINT_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_DIST_POINT(%struct.DIST_POINT_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.DIST_POINT_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @DIST_POINT_it.local_it) #6
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.DIST_POINT_st* @DIST_POINT_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @DIST_POINT_it.local_it) #6
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.DIST_POINT_st*
  ret %struct.DIST_POINT_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @DIST_POINT_free(%struct.DIST_POINT_st* noundef %a) #1 {
entry:
  %0 = bitcast %struct.DIST_POINT_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @DIST_POINT_it.local_it) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_DIST_POINT* @d2i_CRL_DIST_POINTS(%struct.stack_st_DIST_POINT** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_DIST_POINT** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @CRL_DIST_POINTS_it.local_it) #6
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.stack_st_DIST_POINT*
  ret %struct.stack_st_DIST_POINT* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_CRL_DIST_POINTS(%struct.stack_st_DIST_POINT* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_DIST_POINT* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @CRL_DIST_POINTS_it.local_it) #6
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_DIST_POINT* @CRL_DIST_POINTS_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @CRL_DIST_POINTS_it.local_it) #6
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.stack_st_DIST_POINT*
  ret %struct.stack_st_DIST_POINT* %0
}

; Function Attrs: noinline nounwind uwtable
define void @CRL_DIST_POINTS_free(%struct.stack_st_DIST_POINT* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_DIST_POINT* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @CRL_DIST_POINTS_it.local_it) #6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ISSUING_DIST_POINT_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ISSUING_DIST_POINT_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ISSUING_DIST_POINT_st* @d2i_ISSUING_DIST_POINT(%struct.ISSUING_DIST_POINT_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ISSUING_DIST_POINT_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ISSUING_DIST_POINT_it.local_it) #6
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ISSUING_DIST_POINT_st*
  ret %struct.ISSUING_DIST_POINT_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ISSUING_DIST_POINT(%struct.ISSUING_DIST_POINT_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ISSUING_DIST_POINT_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ISSUING_DIST_POINT_it.local_it) #6
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ISSUING_DIST_POINT_st* @ISSUING_DIST_POINT_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @ISSUING_DIST_POINT_it.local_it) #6
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ISSUING_DIST_POINT_st*
  ret %struct.ISSUING_DIST_POINT_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @ISSUING_DIST_POINT_free(%struct.ISSUING_DIST_POINT_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ISSUING_DIST_POINT_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @ISSUING_DIST_POINT_it.local_it) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @v2i_idp(%struct.v3_ext_method* nocapture noundef readnone %method, %struct.v3_ext_ctx* noundef %ctx, %struct.stack_st_CONF_VALUE* noundef %nval) #1 {
entry:
  %call = tail call %struct.ISSUING_DIST_POINT_st* @ISSUING_DIST_POINT_new() #5
  %cmp = icmp eq %struct.ISSUING_DIST_POINT_st* %call, null
  br i1 %cmp, label %merr, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %nval) #5
  %call297 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #6
  %cmp398 = icmp sgt i32 %call297, 0
  br i1 %cmp398, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %distpoint = getelementptr inbounds %struct.ISSUING_DIST_POINT_st, %struct.ISSUING_DIST_POINT_st* %call, i64 0, i32 0
  %onlysomereasons = getelementptr inbounds %struct.ISSUING_DIST_POINT_st, %struct.ISSUING_DIST_POINT_st* %call, i64 0, i32 3
  %indirectCRL = getelementptr inbounds %struct.ISSUING_DIST_POINT_st, %struct.ISSUING_DIST_POINT_st* %call, i64 0, i32 4
  %onlyattr = getelementptr inbounds %struct.ISSUING_DIST_POINT_st, %struct.ISSUING_DIST_POINT_st* %call, i64 0, i32 5
  %onlyCA = getelementptr inbounds %struct.ISSUING_DIST_POINT_st, %struct.ISSUING_DIST_POINT_st* %call, i64 0, i32 2
  %onlyuser = getelementptr inbounds %struct.ISSUING_DIST_POINT_st, %struct.ISSUING_DIST_POINT_st* %call, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.099 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %call5 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call1, i32 noundef %i.099) #6
  %0 = bitcast i8* %call5 to %struct.CONF_VALUE*
  %name6 = getelementptr inbounds i8, i8* %call5, i64 8
  %1 = bitcast i8* %name6 to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !9
  %value = getelementptr inbounds i8, i8* %call5, i64 16
  %3 = bitcast i8* %value to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !4
  %call7 = tail call fastcc i32 @set_dist_point_name(%struct.DIST_POINT_NAME_st** noundef nonnull %distpoint, %struct.v3_ext_ctx* noundef %ctx, %struct.CONF_VALUE* noundef %0) #5
  %cmp8 = icmp sgt i32 %call7, 0
  br i1 %cmp8, label %for.inc, label %if.end10

if.end10:                                         ; preds = %for.body
  %cmp11 = icmp slt i32 %call7, 0
  br i1 %cmp11, label %err, label %if.end13

if.end13:                                         ; preds = %if.end10
  %call14 = tail call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0)) #7
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end13
  %call17 = tail call i32 @X509V3_get_value_bool(%struct.CONF_VALUE* noundef nonnull %0, i32* noundef nonnull %onlyuser) #6
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %err, label %for.inc

if.else:                                          ; preds = %if.end13
  %call20 = tail call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0)) #7
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.else27

if.then22:                                        ; preds = %if.else
  %call23 = tail call i32 @X509V3_get_value_bool(%struct.CONF_VALUE* noundef nonnull %0, i32* noundef nonnull %onlyCA) #6
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %for.inc

if.else27:                                        ; preds = %if.else
  %call28 = tail call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0)) #7
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.else35

if.then30:                                        ; preds = %if.else27
  %call31 = tail call i32 @X509V3_get_value_bool(%struct.CONF_VALUE* noundef nonnull %0, i32* noundef nonnull %onlyattr) #6
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %for.inc

if.else35:                                        ; preds = %if.else27
  %call36 = tail call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0)) #7
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.then38, label %if.else43

if.then38:                                        ; preds = %if.else35
  %call39 = tail call i32 @X509V3_get_value_bool(%struct.CONF_VALUE* noundef nonnull %0, i32* noundef nonnull %indirectCRL) #6
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err, label %for.inc

if.else43:                                        ; preds = %if.else35
  %call44 = tail call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i64 0, i64 0)) #7
  %cmp45 = icmp eq i32 %call44, 0
  br i1 %cmp45, label %if.then46, label %if.else51

if.then46:                                        ; preds = %if.else43
  %call47 = tail call fastcc i32 @set_reasons(%struct.asn1_string_st** noundef nonnull %onlysomereasons, i8* noundef %4) #5
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %err, label %for.inc

if.else51:                                        ; preds = %if.else43
  %5 = bitcast i8* %name6 to i8**
  %6 = bitcast i8* %value to i8**
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 noundef 393, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.v2i_idp, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 106, i8* noundef null) #6
  %7 = load i8*, i8** %5, align 8, !tbaa !9
  %8 = load i8*, i8** %6, align 8, !tbaa !4
  tail call void (i32, ...) @ERR_add_error_data(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0), i8* noundef %7, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i64 0, i64 0), i8* noundef %8) #6
  br label %err

for.inc:                                          ; preds = %if.then16, %if.then30, %if.then46, %if.then38, %if.then22, %for.body
  %inc = add nuw nsw i32 %i.099, 1
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #6
  %cmp3 = icmp slt i32 %inc, %call2
  br i1 %cmp3, label %for.body, label %for.end, !llvm.loop !22

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %9 = bitcast %struct.ISSUING_DIST_POINT_st* %call to i8*
  br label %cleanup

merr:                                             ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 noundef 401, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.v2i_idp, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #6
  br label %err

err:                                              ; preds = %if.then46, %if.then38, %if.then30, %if.then22, %if.then16, %if.end10, %merr, %if.else51
  tail call void @ISSUING_DIST_POINT_free(%struct.ISSUING_DIST_POINT_st* noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %for.end
  %retval.0 = phi i8* [ null, %err ], [ %9, %for.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @i2r_idp(%struct.v3_ext_method* nocapture noundef readnone %method, i8* nocapture noundef readonly %pidp, %struct.bio_st* noundef %out, i32 noundef %indent) #1 {
entry:
  %distpoint = bitcast i8* %pidp to %struct.DIST_POINT_NAME_st**
  %0 = load %struct.DIST_POINT_NAME_st*, %struct.DIST_POINT_NAME_st** %distpoint, align 8, !tbaa !23
  %tobool.not = icmp eq %struct.DIST_POINT_NAME_st* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call fastcc void @print_distpoint(%struct.bio_st* noundef %out, %struct.DIST_POINT_NAME_st* noundef nonnull %0, i32 noundef %indent) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %onlyuser = getelementptr inbounds i8, i8* %pidp, i64 8
  %1 = bitcast i8* %onlyuser to i32*
  %2 = load i32, i32* %1, align 8, !tbaa !25
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.43, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.44, i64 0, i64 0)) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %onlyCA = getelementptr inbounds i8, i8* %pidp, i64 12
  %3 = bitcast i8* %onlyCA to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !26
  %cmp5 = icmp sgt i32 %4, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  %call7 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.45, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.44, i64 0, i64 0)) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4
  %indirectCRL = getelementptr inbounds i8, i8* %pidp, i64 24
  %5 = bitcast i8* %indirectCRL to i32*
  %6 = load i32, i32* %5, align 8, !tbaa !27
  %cmp9 = icmp sgt i32 %6, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end8
  %call11 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.44, i64 0, i64 0)) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8
  %onlysomereasons = getelementptr inbounds i8, i8* %pidp, i64 16
  %7 = bitcast i8* %onlysomereasons to %struct.asn1_string_st**
  %8 = load %struct.asn1_string_st*, %struct.asn1_string_st** %7, align 8, !tbaa !28
  %tobool13.not = icmp eq %struct.asn1_string_st* %8, null
  br i1 %tobool13.not, label %if.end17, label %if.then14

if.then14:                                        ; preds = %if.end12
  tail call fastcc void @print_reasons(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i64 0, i64 0), %struct.asn1_string_st* noundef nonnull %8, i32 noundef %indent) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end12
  %onlyattr = getelementptr inbounds i8, i8* %pidp, i64 28
  %9 = bitcast i8* %onlyattr to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !29
  %cmp18 = icmp sgt i32 %10, 0
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end17
  %call20 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.48, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.44, i64 0, i64 0)) #6
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17
  %11 = load %struct.DIST_POINT_NAME_st*, %struct.DIST_POINT_NAME_st** %distpoint, align 8, !tbaa !23
  %tobool23.not = icmp eq %struct.DIST_POINT_NAME_st* %11, null
  br i1 %tobool23.not, label %land.lhs.true, label %if.end40

land.lhs.true:                                    ; preds = %if.end21
  %12 = load i32, i32* %1, align 8, !tbaa !25
  %cmp25 = icmp slt i32 %12, 1
  br i1 %cmp25, label %land.lhs.true26, label %if.end40

land.lhs.true26:                                  ; preds = %land.lhs.true
  %13 = load i32, i32* %3, align 4, !tbaa !26
  %cmp28 = icmp slt i32 %13, 1
  br i1 %cmp28, label %land.lhs.true29, label %if.end40

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %14 = load i32, i32* %5, align 8, !tbaa !27
  %cmp31 = icmp slt i32 %14, 1
  br i1 %cmp31, label %land.lhs.true32, label %if.end40

land.lhs.true32:                                  ; preds = %land.lhs.true29
  %15 = load %struct.asn1_string_st*, %struct.asn1_string_st** %7, align 8, !tbaa !28
  %tobool34.not = icmp eq %struct.asn1_string_st* %15, null
  br i1 %tobool34.not, label %land.lhs.true35, label %if.end40

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %16 = load i32, i32* %9, align 4, !tbaa !29
  %cmp37 = icmp slt i32 %16, 1
  br i1 %cmp37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %land.lhs.true35
  %call39 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.44, i64 0, i64 0)) #6
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %land.lhs.true35, %land.lhs.true32, %land.lhs.true29, %land.lhs.true26, %land.lhs.true, %if.end21
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define i32 @DIST_POINT_set_dpname(%struct.DIST_POINT_NAME_st* noundef %dpn, %struct.X509_name_st* noundef %iname) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.DIST_POINT_NAME_st* %dpn, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.DIST_POINT_NAME_st, %struct.DIST_POINT_NAME_st* %dpn, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !14
  %cmp1.not = icmp eq i32 %0, 1
  br i1 %cmp1.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %name = getelementptr inbounds %struct.DIST_POINT_NAME_st, %struct.DIST_POINT_NAME_st* %dpn, i64 0, i32 1
  %relativename = bitcast %union.anon.1* %name to %struct.stack_st_X509_NAME_ENTRY**
  %1 = load %struct.stack_st_X509_NAME_ENTRY*, %struct.stack_st_X509_NAME_ENTRY** %relativename, align 8, !tbaa !13
  %dpname = getelementptr inbounds %struct.DIST_POINT_NAME_st, %struct.DIST_POINT_NAME_st* %dpn, i64 0, i32 2
  %2 = load %struct.X509_name_st*, %struct.X509_name_st** %dpname, align 8, !tbaa !30
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef %2) #6
  %call = tail call %struct.X509_name_st* @X509_NAME_dup(%struct.X509_name_st* noundef %iname) #6
  store %struct.X509_name_st* %call, %struct.X509_name_st** %dpname, align 8, !tbaa !30
  %cmp4 = icmp eq %struct.X509_name_st* %call, null
  br i1 %cmp4, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %call7 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef %1) #5
  %call842 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call7) #6
  %cmp943 = icmp sgt i32 %call842, 0
  br i1 %cmp943, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %call8 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call7) #6
  %cmp9 = icmp slt i32 %inc, %call8
  br i1 %cmp9, label %for.body, label %for.end, !llvm.loop !31

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.044 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call11 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call7, i32 noundef %i.044) #6
  %3 = bitcast i8* %call11 to %struct.X509_name_entry_st*
  %4 = load %struct.X509_name_st*, %struct.X509_name_st** %dpname, align 8, !tbaa !30
  %tobool.not = icmp eq i32 %i.044, 0
  %cond = zext i1 %tobool.not to i32
  %call13 = tail call i32 @X509_NAME_add_entry(%struct.X509_name_st* noundef %4, %struct.X509_name_entry_st* noundef %3, i32 noundef -1, i32 noundef %cond) #6
  %tobool14.not = icmp eq i32 %call13, 0
  %inc = add nuw nsw i32 %i.044, 1
  br i1 %tobool14.not, label %err, label %for.cond

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  %5 = load %struct.X509_name_st*, %struct.X509_name_st** %dpname, align 8, !tbaa !30
  %call18 = tail call i32 @i2d_X509_NAME(%struct.X509_name_st* noundef %5, i8** noundef null) #6
  %cmp19 = icmp sgt i32 %call18, -1
  br i1 %cmp19, label %cleanup, label %err

err:                                              ; preds = %for.body, %for.end
  %6 = load %struct.X509_name_st*, %struct.X509_name_st** %dpname, align 8, !tbaa !30
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef %6) #6
  store %struct.X509_name_st* null, %struct.X509_name_st** %dpname, align 8, !tbaa !30
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end, %entry, %lor.lhs.false, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %lor.lhs.false ], [ 1, %entry ], [ 0, %if.end ], [ 1, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare void @X509_NAME_free(%struct.X509_name_st* noundef) local_unnamed_addr #2

declare %struct.X509_name_st* @X509_NAME_dup(%struct.X509_name_st* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_X509_NAME_ENTRY* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @X509_NAME_add_entry(%struct.X509_name_st* noundef, %struct.X509_name_entry_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @i2d_X509_NAME(%struct.X509_name_st* noundef, i8** noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.stack_st* @OPENSSL_sk_new_reserve(i32 (i8*, i8*)* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.stack_st_CONF_VALUE* @X509V3_get_section(%struct.v3_ext_ctx* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.DIST_POINT_st* @crldp_from_section(%struct.v3_ext_ctx* noundef %ctx, %struct.stack_st_CONF_VALUE* noundef %nval) unnamed_addr #1 {
entry:
  %call = tail call %struct.DIST_POINT_st* @DIST_POINT_new() #5
  %cmp = icmp eq %struct.DIST_POINT_st* %call, null
  br i1 %cmp, label %err, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %nval) #5
  %call254 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #6
  %cmp355 = icmp sgt i32 %call254, 0
  br i1 %cmp355, label %for.body.lr.ph, label %cleanup31

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %distpoint = getelementptr inbounds %struct.DIST_POINT_st, %struct.DIST_POINT_st* %call, i64 0, i32 0
  %CRLissuer = getelementptr inbounds %struct.DIST_POINT_st, %struct.DIST_POINT_st* %call, i64 0, i32 2
  %reasons = getelementptr inbounds %struct.DIST_POINT_st, %struct.DIST_POINT_st* %call, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.056 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %call5 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call1, i32 noundef %i.056) #6
  %0 = bitcast i8* %call5 to %struct.CONF_VALUE*
  %call6 = tail call fastcc i32 @set_dist_point_name(%struct.DIST_POINT_NAME_st** noundef nonnull %distpoint, %struct.v3_ext_ctx* noundef %ctx, %struct.CONF_VALUE* noundef %0) #5
  %cmp7 = icmp sgt i32 %call6, 0
  br i1 %cmp7, label %for.inc, label %if.end9

if.end9:                                          ; preds = %for.body
  %cmp10 = icmp slt i32 %call6, 0
  br i1 %cmp10, label %err, label %if.end12

if.end12:                                         ; preds = %if.end9
  %name = getelementptr inbounds i8, i8* %call5, i64 8
  %1 = bitcast i8* %name to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !9
  %call13 = tail call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #7
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end12
  %value = getelementptr inbounds i8, i8* %call5, i64 16
  %3 = bitcast i8* %value to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !4
  %call16 = tail call fastcc i32 @set_reasons(%struct.asn1_string_st** noundef nonnull %reasons, i8* noundef %4) #5
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %err, label %for.inc

if.else:                                          ; preds = %if.end12
  %call20 = tail call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #7
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %for.inc

if.then22:                                        ; preds = %if.else
  %value23 = getelementptr inbounds i8, i8* %call5, i64 16
  %5 = bitcast i8* %value23 to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !4
  %call24 = tail call fastcc %struct.stack_st_GENERAL_NAME* @gnames_from_sectname(%struct.v3_ext_ctx* noundef %ctx, i8* noundef %6) #5
  store %struct.stack_st_GENERAL_NAME* %call24, %struct.stack_st_GENERAL_NAME** %CRLissuer, align 8, !tbaa !19
  %cmp26 = icmp eq %struct.stack_st_GENERAL_NAME* %call24, null
  br i1 %cmp26, label %err, label %for.inc

for.inc:                                          ; preds = %if.then15, %if.then22, %if.else, %for.body
  %inc = add nuw nsw i32 %i.056, 1
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #6
  %cmp3 = icmp slt i32 %inc, %call2
  br i1 %cmp3, label %for.body, label %cleanup31, !llvm.loop !32

err:                                              ; preds = %if.then22, %if.then15, %if.end9, %entry
  tail call void @DIST_POINT_free(%struct.DIST_POINT_st* noundef %call) #5
  br label %cleanup31

cleanup31:                                        ; preds = %for.inc, %for.cond.preheader, %err
  %retval.0 = phi %struct.DIST_POINT_st* [ null, %err ], [ %call, %for.cond.preheader ], [ %call, %for.inc ]
  ret %struct.DIST_POINT_st* %retval.0
}

declare void @X509V3_section_free(%struct.v3_ext_ctx* noundef, %struct.stack_st_CONF_VALUE* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_DIST_POINT_sk_type(%struct.stack_st_DIST_POINT* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_DIST_POINT* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.GENERAL_NAME_st* @v2i_GENERAL_NAME(%struct.v3_ext_method* noundef, %struct.v3_ext_ctx* noundef, %struct.CONF_VALUE* noundef) local_unnamed_addr #2

declare %struct.stack_st_GENERAL_NAME* @GENERAL_NAMES_new() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_GENERAL_NAME* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef) #2

declare void @GENERAL_NAMES_free(%struct.stack_st_GENERAL_NAME* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @set_dist_point_name(%struct.DIST_POINT_NAME_st** nocapture noundef %pdp, %struct.v3_ext_ctx* noundef %ctx, %struct.CONF_VALUE* nocapture noundef readonly %cnf) unnamed_addr #1 {
entry:
  %name = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %cnf, i64 0, i32 1
  %0 = load i8*, i8** %name, align 8, !tbaa !9
  %call = tail call i32 @strncmp(i8* noundef %0, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i64 noundef 9) #7
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %value = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %cnf, i64 0, i32 2
  %1 = load i8*, i8** %value, align 8, !tbaa !4
  %call1 = tail call fastcc %struct.stack_st_GENERAL_NAME* @gnames_from_sectname(%struct.v3_ext_ctx* noundef %ctx, i8* noundef %1) #5
  %tobool.not = icmp eq %struct.stack_st_GENERAL_NAME* %call1, null
  br i1 %tobool.not, label %err, label %if.end35

if.else:                                          ; preds = %entry
  %call4 = tail call i32 @strcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0)) #7
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %cleanup54

if.then6:                                         ; preds = %if.else
  %call7 = tail call %struct.X509_name_st* @X509_NAME_new() #6
  %cmp8 = icmp eq %struct.X509_name_st* %call7, null
  br i1 %cmp8, label %cleanup54, label %if.end10

if.end10:                                         ; preds = %if.then6
  %value11 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %cnf, i64 0, i32 2
  %2 = load i8*, i8** %value11, align 8, !tbaa !4
  %call12 = tail call %struct.stack_st_CONF_VALUE* @X509V3_get_section(%struct.v3_ext_ctx* noundef %ctx, i8* noundef %2) #6
  %tobool13.not = icmp eq %struct.stack_st_CONF_VALUE* %call12, null
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end10
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.set_dist_point_name, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 150, i8* noundef null) #6
  br label %cleanup54

if.end15:                                         ; preds = %if.end10
  %call16 = tail call i32 @X509V3_NAME_from_section(%struct.X509_name_st* noundef nonnull %call7, %struct.stack_st_CONF_VALUE* noundef nonnull %call12, i64 noundef 4097) #6
  tail call void @X509V3_section_free(%struct.v3_ext_ctx* noundef %ctx, %struct.stack_st_CONF_VALUE* noundef nonnull %call12) #6
  %entries = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %call7, i64 0, i32 0
  %3 = load %struct.stack_st_X509_NAME_ENTRY*, %struct.stack_st_X509_NAME_ENTRY** %entries, align 8, !tbaa !33
  store %struct.stack_st_X509_NAME_ENTRY* null, %struct.stack_st_X509_NAME_ENTRY** %entries, align 8, !tbaa !33
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef nonnull %call7) #6
  %tobool18.not = icmp eq i32 %call16, 0
  br i1 %tobool18.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end15
  %call19 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef %3) #5
  %call20 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call19) #6
  %cmp21 = icmp slt i32 %call20, 1
  br i1 %cmp21, label %err, label %if.end23

if.end23:                                         ; preds = %lor.lhs.false
  %call26 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call19) #6
  %sub = add nsw i32 %call26, -1
  %call27 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call19, i32 noundef %sub) #6
  %set = getelementptr inbounds i8, i8* %call27, i64 16
  %4 = bitcast i8* %set to i32*
  %5 = load i32, i32* %4, align 8, !tbaa !35
  %tobool28.not = icmp eq i32 %5, 0
  br i1 %tobool28.not, label %if.end35, label %err.sink.split

if.end35:                                         ; preds = %if.end23, %if.then
  %rnm.1 = phi %struct.stack_st_X509_NAME_ENTRY* [ null, %if.then ], [ %3, %if.end23 ]
  %fnm.0 = phi %struct.stack_st_GENERAL_NAME* [ %call1, %if.then ], [ null, %if.end23 ]
  %6 = load %struct.DIST_POINT_NAME_st*, %struct.DIST_POINT_NAME_st** %pdp, align 8, !tbaa !37
  %tobool36.not = icmp eq %struct.DIST_POINT_NAME_st* %6, null
  br i1 %tobool36.not, label %if.end38, label %err.sink.split

if.end38:                                         ; preds = %if.end35
  %call39 = tail call %struct.DIST_POINT_NAME_st* @DIST_POINT_NAME_new() #5
  store %struct.DIST_POINT_NAME_st* %call39, %struct.DIST_POINT_NAME_st** %pdp, align 8, !tbaa !37
  %cmp40 = icmp eq %struct.DIST_POINT_NAME_st* %call39, null
  br i1 %cmp40, label %err, label %if.end42

if.end42:                                         ; preds = %if.end38
  %tobool43.not = icmp eq %struct.stack_st_GENERAL_NAME* %fnm.0, null
  %type47 = getelementptr inbounds %struct.DIST_POINT_NAME_st, %struct.DIST_POINT_NAME_st* %call39, i64 0, i32 0
  br i1 %tobool43.not, label %if.else46, label %if.then44

if.then44:                                        ; preds = %if.end42
  store i32 0, i32* %type47, align 8, !tbaa !14
  %fullname = getelementptr inbounds %struct.DIST_POINT_NAME_st, %struct.DIST_POINT_NAME_st* %call39, i64 0, i32 1, i32 0
  store %struct.stack_st_GENERAL_NAME* %fnm.0, %struct.stack_st_GENERAL_NAME** %fullname, align 8, !tbaa !13
  br label %cleanup54

if.else46:                                        ; preds = %if.end42
  store i32 1, i32* %type47, align 8, !tbaa !14
  %name48 = getelementptr inbounds %struct.DIST_POINT_NAME_st, %struct.DIST_POINT_NAME_st* %call39, i64 0, i32 1
  %relativename = bitcast %union.anon.1* %name48 to %struct.stack_st_X509_NAME_ENTRY**
  store %struct.stack_st_X509_NAME_ENTRY* %rnm.1, %struct.stack_st_X509_NAME_ENTRY** %relativename, align 8, !tbaa !13
  br label %cleanup54

err.sink.split:                                   ; preds = %if.end35, %if.end23
  %.sink91 = phi i32 [ 101, %if.end23 ], [ 108, %if.end35 ]
  %.sink = phi i32 [ 161, %if.end23 ], [ 160, %if.end35 ]
  %rnm.2.ph = phi %struct.stack_st_X509_NAME_ENTRY* [ %3, %if.end23 ], [ %rnm.1, %if.end35 ]
  %fnm.1.ph = phi %struct.stack_st_GENERAL_NAME* [ null, %if.end23 ], [ %fnm.0, %if.end35 ]
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 noundef %.sink91, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.set_dist_point_name, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef %.sink, i8* noundef null) #6
  br label %err

err:                                              ; preds = %err.sink.split, %if.end15, %lor.lhs.false, %if.end38, %if.then
  %rnm.2 = phi %struct.stack_st_X509_NAME_ENTRY* [ %rnm.1, %if.end38 ], [ null, %if.then ], [ %3, %lor.lhs.false ], [ %3, %if.end15 ], [ %rnm.2.ph, %err.sink.split ]
  %fnm.1 = phi %struct.stack_st_GENERAL_NAME* [ %fnm.0, %if.end38 ], [ null, %if.then ], [ null, %lor.lhs.false ], [ null, %if.end15 ], [ %fnm.1.ph, %err.sink.split ]
  %call50 = tail call fastcc %struct.stack_st* @ossl_check_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %fnm.1) #5
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call50, void (i8*)* noundef bitcast (void (%struct.GENERAL_NAME_st*)* @GENERAL_NAME_free to void (i8*)*)) #6
  %call52 = tail call fastcc %struct.stack_st* @ossl_check_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef %rnm.2) #5
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call52, void (i8*)* noundef bitcast (void (%struct.X509_name_entry_st*)* @X509_NAME_ENTRY_free to void (i8*)*)) #6
  br label %cleanup54

cleanup54:                                        ; preds = %if.then6, %if.then14, %if.then44, %if.else46, %if.else, %err
  %retval.1 = phi i32 [ -1, %err ], [ 0, %if.else ], [ 1, %if.else46 ], [ 1, %if.then44 ], [ -1, %if.then14 ], [ -1, %if.then6 ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @set_reasons(%struct.asn1_string_st** nocapture noundef %preas, i8* noundef %value) unnamed_addr #1 {
entry:
  %call = tail call %struct.stack_st_CONF_VALUE* @X509V3_parse_list(i8* noundef %value) #6
  %cmp = icmp eq %struct.stack_st_CONF_VALUE* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %preas, align 8, !tbaa !37
  %cmp1.not = icmp eq %struct.asn1_string_st* %0, null
  br i1 %cmp1.not, label %for.cond.preheader, label %err

for.cond.preheader:                               ; preds = %if.end
  %call4 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef nonnull %call) #5
  %call561 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call4) #6
  %cmp662 = icmp sgt i32 %call561, 0
  br i1 %cmp662, label %for.body, label %err

for.cond:                                         ; preds = %for.end
  %call5 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call4) #6
  %cmp6 = icmp slt i32 %inc, %call5
  br i1 %cmp6, label %for.body, label %err, !llvm.loop !38

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.063 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call8 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call4, i32 noundef %i.063) #6
  %name = getelementptr inbounds i8, i8* %call8, i64 8
  %1 = bitcast i8* %name to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !9
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %preas, align 8, !tbaa !37
  %cmp9 = icmp eq %struct.asn1_string_st* %3, null
  br i1 %cmp9, label %if.then10, label %if.end15

if.then10:                                        ; preds = %for.body
  %call11 = tail call %struct.asn1_string_st* @ASN1_BIT_STRING_new() #6
  store %struct.asn1_string_st* %call11, %struct.asn1_string_st** %preas, align 8, !tbaa !37
  %cmp12 = icmp eq %struct.asn1_string_st* %call11, null
  br i1 %cmp12, label %err, label %if.end15

if.end15:                                         ; preds = %if.then10, %for.body
  %4 = phi %struct.asn1_string_st* [ %call11, %if.then10 ], [ %3, %for.body ]
  %call18 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* noundef %2) #7
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %for.inc

if.then20:                                        ; preds = %for.inc.7, %for.inc.6, %for.inc.5, %for.inc.4, %for.inc.3, %for.inc.2, %for.inc.1, %for.inc, %if.end15
  %pbn.060.lcssa = phi %struct.BIT_STRING_BITNAME_st* [ getelementptr inbounds ([10 x %struct.BIT_STRING_BITNAME_st], [10 x %struct.BIT_STRING_BITNAME_st]* @reason_flags, i64 0, i64 0), %if.end15 ], [ getelementptr inbounds ([10 x %struct.BIT_STRING_BITNAME_st], [10 x %struct.BIT_STRING_BITNAME_st]* @reason_flags, i64 0, i64 1), %for.inc ], [ getelementptr inbounds ([10 x %struct.BIT_STRING_BITNAME_st], [10 x %struct.BIT_STRING_BITNAME_st]* @reason_flags, i64 0, i64 2), %for.inc.1 ], [ getelementptr inbounds ([10 x %struct.BIT_STRING_BITNAME_st], [10 x %struct.BIT_STRING_BITNAME_st]* @reason_flags, i64 0, i64 3), %for.inc.2 ], [ getelementptr inbounds ([10 x %struct.BIT_STRING_BITNAME_st], [10 x %struct.BIT_STRING_BITNAME_st]* @reason_flags, i64 0, i64 4), %for.inc.3 ], [ getelementptr inbounds ([10 x %struct.BIT_STRING_BITNAME_st], [10 x %struct.BIT_STRING_BITNAME_st]* @reason_flags, i64 0, i64 5), %for.inc.4 ], [ getelementptr inbounds ([10 x %struct.BIT_STRING_BITNAME_st], [10 x %struct.BIT_STRING_BITNAME_st]* @reason_flags, i64 0, i64 6), %for.inc.5 ], [ getelementptr inbounds ([10 x %struct.BIT_STRING_BITNAME_st], [10 x %struct.BIT_STRING_BITNAME_st]* @reason_flags, i64 0, i64 7), %for.inc.6 ], [ getelementptr inbounds ([10 x %struct.BIT_STRING_BITNAME_st], [10 x %struct.BIT_STRING_BITNAME_st]* @reason_flags, i64 0, i64 8), %for.inc.7 ]
  %bitnum = getelementptr inbounds %struct.BIT_STRING_BITNAME_st, %struct.BIT_STRING_BITNAME_st* %pbn.060.lcssa, i64 0, i32 0
  %5 = load i32, i32* %bitnum, align 8, !tbaa !39
  %call21 = tail call i32 @ASN1_BIT_STRING_set_bit(%struct.asn1_string_st* noundef nonnull %4, i32 noundef %5, i32 noundef 1) #6
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err, label %for.end

for.inc:                                          ; preds = %if.end15
  %call18.1 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* noundef %2) #7
  %cmp19.1 = icmp eq i32 %call18.1, 0
  br i1 %cmp19.1, label %if.then20, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %call18.2 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* noundef %2) #7
  %cmp19.2 = icmp eq i32 %call18.2, 0
  br i1 %cmp19.2, label %if.then20, label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %call18.3 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i8* noundef %2) #7
  %cmp19.3 = icmp eq i32 %call18.3, 0
  br i1 %cmp19.3, label %if.then20, label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.2
  %call18.4 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8* noundef %2) #7
  %cmp19.4 = icmp eq i32 %call18.4, 0
  br i1 %cmp19.4, label %if.then20, label %for.inc.4

for.inc.4:                                        ; preds = %for.inc.3
  %call18.5 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i8* noundef %2) #7
  %cmp19.5 = icmp eq i32 %call18.5, 0
  br i1 %cmp19.5, label %if.then20, label %for.inc.5

for.inc.5:                                        ; preds = %for.inc.4
  %call18.6 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i8* noundef %2) #7
  %cmp19.6 = icmp eq i32 %call18.6, 0
  br i1 %cmp19.6, label %if.then20, label %for.inc.6

for.inc.6:                                        ; preds = %for.inc.5
  %call18.7 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0), i8* noundef %2) #7
  %cmp19.7 = icmp eq i32 %call18.7, 0
  br i1 %cmp19.7, label %if.then20, label %for.inc.7

for.inc.7:                                        ; preds = %for.inc.6
  %call18.8 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i8* noundef %2) #7
  %cmp19.8 = icmp eq i32 %call18.8, 0
  br i1 %cmp19.8, label %if.then20, label %err

for.end:                                          ; preds = %if.then20
  %lname.le = getelementptr inbounds %struct.BIT_STRING_BITNAME_st, %struct.BIT_STRING_BITNAME_st* %pbn.060.lcssa, i64 0, i32 1
  %.pr = load i8*, i8** %lname.le, align 8, !tbaa !41
  %cmp27 = icmp eq i8* %.pr, null
  %inc = add nuw nsw i32 %i.063, 1
  br i1 %cmp27, label %err, label %for.cond

err:                                              ; preds = %if.then10, %if.then20, %for.end, %for.cond, %for.inc.7, %for.cond.preheader, %if.end
  %ret.0 = phi i32 [ 0, %if.end ], [ 1, %for.cond.preheader ], [ 0, %if.then10 ], [ 0, %if.then20 ], [ 0, %for.end ], [ 1, %for.cond ], [ 0, %for.inc.7 ]
  %call32 = tail call fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef nonnull %call) #5
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call32, void (i8*)* noundef bitcast (void (%struct.CONF_VALUE*)* @X509V3_conf_free to void (i8*)*)) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_GENERAL_NAME* @gnames_from_sectname(%struct.v3_ext_ctx* noundef %ctx, i8* noundef %sect) unnamed_addr #1 {
entry:
  %0 = load i8, i8* %sect, align 1, !tbaa !13
  %cmp = icmp eq i8 %0, 64
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %sect, i64 1
  %call = tail call %struct.stack_st_CONF_VALUE* @X509V3_get_section(%struct.v3_ext_ctx* noundef %ctx, i8* noundef nonnull %add.ptr) #6
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = tail call %struct.stack_st_CONF_VALUE* @X509V3_parse_list(i8* noundef nonnull %sect) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %gnsect.0 = phi %struct.stack_st_CONF_VALUE* [ %call, %if.then ], [ %call2, %if.else ]
  %tobool.not = icmp eq %struct.stack_st_CONF_VALUE* %gnsect.0, null
  br i1 %tobool.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gnames_from_sectname, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 150, i8* noundef null) #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call %struct.stack_st_GENERAL_NAME* @v2i_GENERAL_NAMES(%struct.v3_ext_method* noundef null, %struct.v3_ext_ctx* noundef %ctx, %struct.stack_st_CONF_VALUE* noundef nonnull %gnsect.0) #6
  %1 = load i8, i8* %sect, align 1, !tbaa !13
  %cmp7 = icmp eq i8 %1, 64
  br i1 %cmp7, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.end4
  tail call void @X509V3_section_free(%struct.v3_ext_ctx* noundef %ctx, %struct.stack_st_CONF_VALUE* noundef nonnull %gnsect.0) #6
  br label %cleanup

if.else10:                                        ; preds = %if.end4
  %call11 = tail call fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef nonnull %gnsect.0) #5
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call11, void (i8*)* noundef bitcast (void (%struct.CONF_VALUE*)* @X509V3_conf_free to void (i8*)*)) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.else10, %if.then3
  %retval.0 = phi %struct.stack_st_GENERAL_NAME* [ null, %if.then3 ], [ %call5, %if.else10 ], [ %call5, %if.then9 ]
  ret %struct.stack_st_GENERAL_NAME* %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare %struct.X509_name_st* @X509_NAME_new() local_unnamed_addr #2

declare i32 @X509V3_NAME_from_section(%struct.X509_name_st* noundef, %struct.stack_st_CONF_VALUE* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_X509_NAME_ENTRY* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_NAME_ENTRY_free(%struct.X509_name_entry_st* noundef) #2

declare %struct.stack_st_CONF_VALUE* @X509V3_parse_list(i8* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @ASN1_BIT_STRING_new() local_unnamed_addr #2

declare i32 @ASN1_BIT_STRING_set_bit(%struct.asn1_string_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509V3_conf_free(%struct.CONF_VALUE* noundef) #2

declare %struct.stack_st_GENERAL_NAME* @v2i_GENERAL_NAMES(%struct.v3_ext_method* noundef, %struct.v3_ext_ctx* noundef, %struct.stack_st_CONF_VALUE* noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @GENERAL_NAME_it() #2

declare %struct.ASN1_ITEM_st* @X509_NAME_ENTRY_it() #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @dpn_cb(i32 noundef %operation, %struct.ASN1_VALUE_st** nocapture noundef readonly %pval, %struct.ASN1_ITEM_st* nocapture noundef readnone %it, i8* nocapture noundef readnone %exarg) #1 {
entry:
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.DIST_POINT_NAME_st**
  %1 = load %struct.DIST_POINT_NAME_st*, %struct.DIST_POINT_NAME_st** %0, align 8, !tbaa !37
  switch i32 %operation, label %sw.epilog [
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %dpname = getelementptr inbounds %struct.DIST_POINT_NAME_st, %struct.DIST_POINT_NAME_st* %1, i64 0, i32 2
  store %struct.X509_name_st* null, %struct.X509_name_st** %dpname, align 8, !tbaa !30
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %dpname2 = getelementptr inbounds %struct.DIST_POINT_NAME_st, %struct.DIST_POINT_NAME_st* %1, i64 0, i32 2
  %2 = load %struct.X509_name_st*, %struct.X509_name_st** %dpname2, align 8, !tbaa !30
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef %2) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb1, %sw.bb
  ret i32 1
}

declare %struct.ASN1_ITEM_st* @ASN1_BIT_STRING_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_FBOOLEAN_it() #2

declare i32 @X509V3_get_value_bool(%struct.CONF_VALUE* noundef, i32* noundef) local_unnamed_addr #2

declare void @ERR_add_error_data(i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_distpoint(%struct.bio_st* noundef %out, %struct.DIST_POINT_NAME_st* nocapture noundef readonly %dpn, i32 noundef %indent) unnamed_addr #1 {
entry:
  %ntmp = alloca %struct.X509_name_st, align 8
  %type = getelementptr inbounds %struct.DIST_POINT_NAME_st, %struct.DIST_POINT_NAME_st* %dpn, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !14
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.44, i64 0, i64 0)) #6
  %fullname = getelementptr inbounds %struct.DIST_POINT_NAME_st, %struct.DIST_POINT_NAME_st* %dpn, i64 0, i32 1, i32 0
  %1 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %fullname, align 8, !tbaa !13
  tail call fastcc void @print_gens(%struct.bio_st* noundef %out, %struct.stack_st_GENERAL_NAME* noundef %1, i32 noundef %indent) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = bitcast %struct.X509_name_st* %ntmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #8
  %name2 = getelementptr inbounds %struct.DIST_POINT_NAME_st, %struct.DIST_POINT_NAME_st* %dpn, i64 0, i32 1
  %relativename = bitcast %union.anon.1* %name2 to %struct.stack_st_X509_NAME_ENTRY**
  %3 = load %struct.stack_st_X509_NAME_ENTRY*, %struct.stack_st_X509_NAME_ENTRY** %relativename, align 8, !tbaa !13
  %entries = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %ntmp, i64 0, i32 0
  store %struct.stack_st_X509_NAME_ENTRY* %3, %struct.stack_st_X509_NAME_ENTRY** %entries, align 8, !tbaa !33
  %add = add nsw i32 %indent, 2
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.51, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.44, i64 0, i64 0), i32 noundef %add, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.44, i64 0, i64 0)) #6
  %call4 = call i32 @X509_NAME_print_ex(%struct.bio_st* noundef %out, %struct.X509_name_st* noundef nonnull %ntmp, i32 noundef 0, i64 noundef 8520479) #6
  %call5 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0)) #6
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_reasons(%struct.bio_st* noundef %out, i8* noundef %rname, %struct.asn1_string_st* noundef %rflags, i32 noundef %indent) unnamed_addr #1 {
entry:
  %add = add nsw i32 %indent, 2
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.44, i64 0, i64 0), i8* noundef %rname, i32 noundef %add, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.44, i64 0, i64 0)) #6
  br label %for.body.outer

for.body.outer:                                   ; preds = %for.inc.thread, %entry
  %lname3.ph = phi i8** [ %lname6, %for.inc.thread ], [ getelementptr inbounds ([10 x %struct.BIT_STRING_BITNAME_st], [10 x %struct.BIT_STRING_BITNAME_st]* @reason_flags, i64 0, i64 0, i32 1), %entry ]
  %pbn.02.ph = phi %struct.BIT_STRING_BITNAME_st* [ %incdec.ptr5, %for.inc.thread ], [ getelementptr inbounds ([10 x %struct.BIT_STRING_BITNAME_st], [10 x %struct.BIT_STRING_BITNAME_st]* @reason_flags, i64 0, i64 0), %entry ]
  %tobool3.not = phi i1 [ true, %for.inc.thread ], [ false, %entry ]
  %bitnum17 = getelementptr inbounds %struct.BIT_STRING_BITNAME_st, %struct.BIT_STRING_BITNAME_st* %pbn.02.ph, i64 0, i32 0
  %0 = load i32, i32* %bitnum17, align 8, !tbaa !39
  %call118 = tail call i32 @ASN1_BIT_STRING_get_bit(%struct.asn1_string_st* noundef %rflags, i32 noundef %0) #6
  %tobool2.not19 = icmp eq i32 %call118, 0
  br i1 %tobool2.not19, label %for.inc, label %if.then

for.body:                                         ; preds = %for.inc
  %bitnum = getelementptr inbounds %struct.BIT_STRING_BITNAME_st, %struct.BIT_STRING_BITNAME_st* %incdec.ptr, i64 0, i32 0
  %1 = load i32, i32* %bitnum, align 8, !tbaa !39
  %call1 = tail call i32 @ASN1_BIT_STRING_get_bit(%struct.asn1_string_st* noundef %rflags, i32 noundef %1) #6
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.inc, label %if.then.loopexit, !llvm.loop !42

if.then.loopexit:                                 ; preds = %for.body
  %lname.le = getelementptr inbounds %struct.BIT_STRING_BITNAME_st, %struct.BIT_STRING_BITNAME_st* %pbn.0220, i64 1, i32 1
  br label %if.then

if.then:                                          ; preds = %if.then.loopexit, %for.body.outer
  %lname3.lcssa = phi i8** [ %lname3.ph, %for.body.outer ], [ %lname.le, %if.then.loopexit ]
  %pbn.02.lcssa = phi %struct.BIT_STRING_BITNAME_st* [ %pbn.02.ph, %for.body.outer ], [ %incdec.ptr, %if.then.loopexit ]
  br i1 %tobool3.not, label %if.else, label %for.inc.thread

if.else:                                          ; preds = %if.then
  %call5 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0)) #6
  br label %for.inc.thread

for.inc:                                          ; preds = %for.body.outer, %for.body
  %pbn.0220 = phi %struct.BIT_STRING_BITNAME_st* [ %incdec.ptr, %for.body ], [ %pbn.02.ph, %for.body.outer ]
  %incdec.ptr = getelementptr inbounds %struct.BIT_STRING_BITNAME_st, %struct.BIT_STRING_BITNAME_st* %pbn.0220, i64 1
  %lname = getelementptr inbounds %struct.BIT_STRING_BITNAME_st, %struct.BIT_STRING_BITNAME_st* %pbn.0220, i64 1, i32 1
  %2 = load i8*, i8** %lname, align 8, !tbaa !41
  %tobool.not = icmp eq i8* %2, null
  br i1 %tobool.not, label %for.end, label %for.body, !llvm.loop !42

for.inc.thread:                                   ; preds = %if.else, %if.then
  %3 = load i8*, i8** %lname3.lcssa, align 8, !tbaa !41
  %call7 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef %3) #6
  %incdec.ptr5 = getelementptr inbounds %struct.BIT_STRING_BITNAME_st, %struct.BIT_STRING_BITNAME_st* %pbn.02.lcssa, i64 1
  %lname6 = getelementptr inbounds %struct.BIT_STRING_BITNAME_st, %struct.BIT_STRING_BITNAME_st* %pbn.02.lcssa, i64 1, i32 1
  %4 = load i8*, i8** %lname6, align 8, !tbaa !41
  %tobool.not7 = icmp eq i8* %4, null
  br i1 %tobool.not7, label %if.else12, label %for.body.outer, !llvm.loop !42

for.end:                                          ; preds = %for.inc
  br i1 %tobool3.not, label %if.else12, label %if.end14

if.else12:                                        ; preds = %for.inc.thread, %for.end
  br label %if.end14

if.end14:                                         ; preds = %for.end, %if.else12
  %.sink = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0), %if.else12 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i64 0, i64 0), %for.end ]
  %call13 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef %.sink) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_gens(%struct.bio_st* noundef %out, %struct.stack_st_GENERAL_NAME* noundef %gens, i32 noundef %indent) unnamed_addr #1 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %gens) #5
  %call11 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp2 = icmp sgt i32 %call11, 0
  br i1 %cmp2, label %if.end.peel, label %for.end

if.end.peel:                                      ; preds = %entry
  %add = add nsw i32 %indent, 2
  %call4.peel = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0), i32 noundef %add, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.44, i64 0, i64 0)) #6
  %call6.peel = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef 0) #6
  %0 = bitcast i8* %call6.peel to %struct.GENERAL_NAME_st*
  %call7.peel = tail call i32 @GENERAL_NAME_print(%struct.bio_st* noundef %out, %struct.GENERAL_NAME_st* noundef %0) #6
  %call1.peel = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp.peel = icmp sgt i32 %call1.peel, 1
  br i1 %cmp.peel, label %if.end, label %for.end

if.end:                                           ; preds = %if.end.peel, %if.end
  %i.03 = phi i32 [ %inc, %if.end ], [ 1, %if.end.peel ]
  %call3 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0)) #6
  %call4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0), i32 noundef %add, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.44, i64 0, i64 0)) #6
  %call6 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.03) #6
  %1 = bitcast i8* %call6 to %struct.GENERAL_NAME_st*
  %call7 = tail call i32 @GENERAL_NAME_print(%struct.bio_st* noundef %out, %struct.GENERAL_NAME_st* noundef %1) #6
  %inc = add nuw nsw i32 %i.03, 1
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp = icmp slt i32 %inc, %call1
  br i1 %cmp, label %if.end, label %for.end, !llvm.loop !43

for.end:                                          ; preds = %if.end, %if.end.peel, %entry
  ret void
}

declare i32 @X509_NAME_print_ex(%struct.bio_st* noundef, %struct.X509_name_st* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_GENERAL_NAME* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @GENERAL_NAME_print(%struct.bio_st* noundef, %struct.GENERAL_NAME_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_BIT_STRING_get_bit(%struct.asn1_string_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_DIST_POINT_sk_type(%struct.stack_st_DIST_POINT* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_DIST_POINT* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 16}
!5 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 8}
!10 = !{!11, !6, i64 0}
!11 = !{!"DIST_POINT_st", !6, i64 0, !6, i64 8, !6, i64 16, !12, i64 24}
!12 = !{!"int", !7, i64 0}
!13 = !{!7, !7, i64 0}
!14 = !{!15, !12, i64 0}
!15 = !{!"DIST_POINT_NAME_st", !12, i64 0, !7, i64 8, !6, i64 16}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!11, !6, i64 8}
!19 = !{!11, !6, i64 16}
!20 = distinct !{!20, !17, !21}
!21 = !{!"llvm.loop.peeled.count", i32 1}
!22 = distinct !{!22, !17}
!23 = !{!24, !6, i64 0}
!24 = !{!"ISSUING_DIST_POINT_st", !6, i64 0, !12, i64 8, !12, i64 12, !6, i64 16, !12, i64 24, !12, i64 28}
!25 = !{!24, !12, i64 8}
!26 = !{!24, !12, i64 12}
!27 = !{!24, !12, i64 24}
!28 = !{!24, !6, i64 16}
!29 = !{!24, !12, i64 28}
!30 = !{!15, !6, i64 16}
!31 = distinct !{!31, !17}
!32 = distinct !{!32, !17}
!33 = !{!34, !6, i64 0}
!34 = !{!"X509_name_st", !6, i64 0, !12, i64 8, !6, i64 16, !6, i64 24, !12, i64 32}
!35 = !{!36, !12, i64 16}
!36 = !{!"X509_name_entry_st", !6, i64 0, !6, i64 8, !12, i64 16, !12, i64 20}
!37 = !{!6, !6, i64 0}
!38 = distinct !{!38, !17}
!39 = !{!40, !12, i64 0}
!40 = !{!"BIT_STRING_BITNAME_st", !12, i64 0, !6, i64 8, !6, i64 16}
!41 = !{!40, !6, i64 8}
!42 = distinct !{!42, !17}
!43 = distinct !{!43, !17, !21}
