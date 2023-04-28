; ModuleID = 'crypto/ocsp/v3_ocsp.c'
source_filename = "crypto/ocsp/v3_ocsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type opaque
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
%struct.x509_crl_method_st = type opaque
%struct.X509V3_CONF_METHOD_st = type { i8* (i8*, i8*, i8*)*, %struct.stack_st_CONF_VALUE* (i8*, i8*)*, void (i8*, i8*)*, void (i8*, %struct.stack_st_CONF_VALUE*)* }
%struct.evp_pkey_st = type opaque
%struct.bio_st = type opaque
%struct.stack_st_ACCESS_DESCRIPTION = type opaque
%struct.stack_st = type opaque
%struct.GENERAL_NAME_st = type { i32, %union.anon.2 }
%union.anon.2 = type { i8* }

@ossl_v3_ocsp_crlid = local_unnamed_addr constant { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 367, i32 0, %struct.ASN1_ITEM_st* ()* @OCSP_CRLID_it, i8* ()* null, void (i8*)* null, i8* (i8*, i8**, i64)* null, i32 (i8*, i8**)* null, i8* (%struct.v3_ext_method*, i8*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* null, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* @i2r_ocsp_crlid, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, i8* null }, align 8
@ossl_v3_ocsp_acutoff = local_unnamed_addr constant { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 370, i32 0, %struct.ASN1_ITEM_st* ()* @ASN1_GENERALIZEDTIME_it, i8* ()* null, void (i8*)* null, i8* (i8*, i8**, i64)* null, i32 (i8*, i8**)* null, i8* (%struct.v3_ext_method*, i8*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* null, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* @i2r_ocsp_acutoff, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, i8* null }, align 8
@ossl_v3_crl_invdate = local_unnamed_addr constant { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 142, i32 0, %struct.ASN1_ITEM_st* ()* @ASN1_GENERALIZEDTIME_it, i8* ()* null, void (i8*)* null, i8* (i8*, i8**, i64)* null, i32 (i8*, i8**)* null, i8* (%struct.v3_ext_method*, i8*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* null, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* @i2r_ocsp_acutoff, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, i8* null }, align 8
@ossl_v3_crl_hold = local_unnamed_addr constant { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 430, i32 0, %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it, i8* ()* null, void (i8*)* null, i8* (i8*, i8**, i64)* null, i32 (i8*, i8**)* null, i8* (%struct.v3_ext_method*, i8*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* null, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* @i2r_object, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, i8* null }, align 8
@ossl_v3_ocsp_nonce = local_unnamed_addr constant { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 366, i32 0, %struct.ASN1_ITEM_st* ()* null, i8* ()* @ocsp_nonce_new, void (i8*)* @ocsp_nonce_free, i8* (i8*, i8**, i64)* @d2i_ocsp_nonce, i32 (i8*, i8**)* @i2d_ocsp_nonce, i8* (%struct.v3_ext_method*, i8*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* null, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* @i2r_ocsp_nonce, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, i8* null }, align 8
@ossl_v3_ocsp_nocheck = local_unnamed_addr constant { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 369, i32 0, %struct.ASN1_ITEM_st* ()* @ASN1_NULL_it, i8* ()* null, void (i8*)* null, i8* (i8*, i8**, i64)* null, i32 (i8*, i8**)* null, i8* (%struct.v3_ext_method*, i8*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* @s2i_ocsp_nocheck, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* null, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* @i2r_ocsp_nocheck, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, i8* null }, align 8
@ossl_v3_ocsp_serviceloc = local_unnamed_addr constant { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 371, i32 0, %struct.ASN1_ITEM_st* ()* @OCSP_SERVICELOC_it, i8* ()* null, void (i8*)* null, i8* (i8*, i8**, i64)* null, i32 (i8*, i8**)* null, i8* (%struct.v3_ext_method*, i8*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* null, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* @i2r_ocsp_serviceloc, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, i8* null }, align 8
@.str = private unnamed_addr constant [12 x i8] c"%*scrlUrl: \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%*scrlNum: \00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"%*scrlTime: \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"crypto/ocsp/v3_ocsp.c\00", align 1
@__func__.d2i_ocsp_nonce = private unnamed_addr constant [15 x i8] c"d2i_ocsp_nonce\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"%*sIssuer: \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"\0A%*s\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" - \00", align 1

declare %struct.ASN1_ITEM_st* @OCSP_CRLID_it() #0

; Function Attrs: noinline nounwind uwtable
define internal i32 @i2r_ocsp_crlid(%struct.v3_ext_method* nocapture noundef readnone %method, i8* nocapture noundef readonly %in, %struct.bio_st* noundef %bp, i32 noundef %ind) #1 {
entry:
  %crlUrl = bitcast i8* %in to %struct.asn1_string_st**
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %crlUrl, align 8, !tbaa !4
  %tobool.not = icmp eq %struct.asn1_string_st* %0, null
  br i1 %tobool.not, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef %ind, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #4
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %if.then
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %crlUrl, align 8, !tbaa !4
  %call3 = tail call i32 @ASN1_STRING_print(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef %1) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1) #4
  %cmp8 = icmp slt i32 %call7, 1
  br i1 %cmp8, label %err, label %if.end11

if.end11:                                         ; preds = %if.end6, %entry
  %crlNum = getelementptr inbounds i8, i8* %in, i64 8
  %2 = bitcast i8* %crlNum to %struct.asn1_string_st**
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %2, align 8, !tbaa !9
  %tobool12.not = icmp eq %struct.asn1_string_st* %3, null
  br i1 %tobool12.not, label %if.end27, label %if.then13

if.then13:                                        ; preds = %if.end11
  %call14 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 noundef %ind, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #4
  %cmp15 = icmp slt i32 %call14, 1
  br i1 %cmp15, label %err, label %if.end17

if.end17:                                         ; preds = %if.then13
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %2, align 8, !tbaa !9
  %call19 = tail call i32 @i2a_ASN1_INTEGER(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef %4) #4
  %cmp20 = icmp slt i32 %call19, 1
  br i1 %cmp20, label %err, label %if.end22

if.end22:                                         ; preds = %if.end17
  %call23 = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1) #4
  %cmp24 = icmp slt i32 %call23, 1
  br i1 %cmp24, label %err, label %if.end27

if.end27:                                         ; preds = %if.end22, %if.end11
  %crlTime = getelementptr inbounds i8, i8* %in, i64 16
  %5 = bitcast i8* %crlTime to %struct.asn1_string_st**
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %5, align 8, !tbaa !10
  %tobool28.not = icmp eq %struct.asn1_string_st* %6, null
  br i1 %tobool28.not, label %cleanup, label %if.then29

if.then29:                                        ; preds = %if.end27
  %call30 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 noundef %ind, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #4
  %cmp31 = icmp slt i32 %call30, 1
  br i1 %cmp31, label %err, label %if.end33

if.end33:                                         ; preds = %if.then29
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %5, align 8, !tbaa !10
  %call35 = tail call i32 @ASN1_GENERALIZEDTIME_print(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef %7) #4
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %err, label %if.end38

if.end38:                                         ; preds = %if.end33
  %call39 = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1) #4
  %cmp40 = icmp slt i32 %call39, 1
  br i1 %cmp40, label %err, label %cleanup

err:                                              ; preds = %if.end38, %if.end33, %if.then29, %if.end22, %if.end17, %if.then13, %if.end6, %if.end, %if.then
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end38, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end38 ], [ 1, %if.end27 ]
  ret i32 %retval.0
}

declare %struct.ASN1_ITEM_st* @ASN1_GENERALIZEDTIME_it() #0

; Function Attrs: noinline nounwind uwtable
define internal i32 @i2r_ocsp_acutoff(%struct.v3_ext_method* nocapture noundef readnone %method, i8* noundef %cutoff, %struct.bio_st* noundef %bp, i32 noundef %ind) #1 {
entry:
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 noundef %ind, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #4
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %cutoff to %struct.asn1_string_st*
  %call1 = tail call i32 @ASN1_GENERALIZEDTIME_print(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef %0) #4
  %tobool.not = icmp ne i32 %call1, 0
  %. = zext i1 %tobool.not to i32
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

declare %struct.ASN1_ITEM_st* @ASN1_OBJECT_it() #0

; Function Attrs: noinline nounwind uwtable
define internal i32 @i2r_object(%struct.v3_ext_method* nocapture noundef readnone %method, i8* noundef %oid, %struct.bio_st* noundef %bp, i32 noundef %ind) #1 {
entry:
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 noundef %ind, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #4
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %oid to %struct.asn1_object_st*
  %call1 = tail call i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef %bp, %struct.asn1_object_st* noundef %0) #4
  %cmp2 = icmp sgt i32 %call1, 0
  %. = zext i1 %cmp2 to i32
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @ocsp_nonce_new() #1 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #4
  %0 = bitcast %struct.asn1_string_st* %call to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define internal void @ocsp_nonce_free(i8* noundef %a) #1 {
entry:
  %0 = bitcast i8* %a to %struct.asn1_string_st*
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %0) #4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @d2i_ocsp_nonce(i8* noundef %a, i8** nocapture noundef %pp, i64 noundef %length) #1 {
entry:
  %0 = bitcast i8* %a to %struct.asn1_string_st**
  %cmp = icmp eq i8* %a, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %0, align 8, !tbaa !11
  %cmp1 = icmp eq %struct.asn1_string_st* %1, null
  br i1 %cmp1, label %if.then, label %if.end4

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #4
  %cmp2 = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp2, label %err, label %if.end4

if.end4:                                          ; preds = %lor.lhs.false, %if.then
  %os.0 = phi %struct.asn1_string_st* [ %call, %if.then ], [ %1, %lor.lhs.false ]
  %2 = load i8*, i8** %pp, align 8, !tbaa !11
  %conv = trunc i64 %length to i32
  %call5 = tail call i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef nonnull %os.0, i8* noundef %2, i32 noundef %conv) #4
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %err, label %if.end7

if.end7:                                          ; preds = %if.end4
  %3 = load i8*, i8** %pp, align 8, !tbaa !11
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %length
  store i8* %add.ptr, i8** %pp, align 8, !tbaa !11
  br i1 %cmp, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end7
  store %struct.asn1_string_st* %os.0, %struct.asn1_string_st** %0, align 8, !tbaa !11
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7
  %4 = bitcast %struct.asn1_string_st* %os.0 to i8*
  br label %cleanup

err:                                              ; preds = %if.end4, %if.then
  %os.1 = phi %struct.asn1_string_st* [ null, %if.then ], [ %os.0, %if.end4 ]
  br i1 %cmp, label %if.then16, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %err
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %0, align 8, !tbaa !11
  %cmp14.not = icmp eq %struct.asn1_string_st* %5, %os.1
  br i1 %cmp14.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %lor.lhs.false13, %err
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %os.1) #4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %lor.lhs.false13
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 noundef 206, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.d2i_ocsp_nonce, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 39, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end10
  %retval.0 = phi i8* [ null, %if.end17 ], [ %4, %if.end10 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @i2d_ocsp_nonce(i8* nocapture noundef readonly %a, i8** noundef %pp) #1 {
entry:
  %tobool.not = icmp eq i8** %pp, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  %length2.phi.trans.insert = bitcast i8* %a to i32*
  %.pre = load i32, i32* %length2.phi.trans.insert, align 8, !tbaa !12
  br label %if.end

if.then:                                          ; preds = %entry
  %0 = load i8*, i8** %pp, align 8, !tbaa !11
  %data = getelementptr inbounds i8, i8* %a, i64 8
  %1 = bitcast i8* %data to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !16
  %length = bitcast i8* %a to i32*
  %3 = load i32, i32* %length, align 8, !tbaa !12
  %conv = sext i32 %3 to i64
  %call = tail call i8* @memcpy(i8* noundef %0, i8* noundef %2, i64 noundef %conv) #4
  %4 = load i32, i32* %length, align 8, !tbaa !12
  %5 = load i8*, i8** %pp, align 8, !tbaa !11
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  store i8* %add.ptr, i8** %pp, align 8, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %6 = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ %4, %if.then ]
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @i2r_ocsp_nonce(%struct.v3_ext_method* nocapture noundef readnone %method, i8* noundef %nonce, %struct.bio_st* noundef %out, i32 noundef %indent) #1 {
entry:
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #4
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %nonce to %struct.asn1_string_st*
  %call1 = tail call i32 @i2a_ASN1_STRING(%struct.bio_st* noundef %out, %struct.asn1_string_st* noundef %0, i32 noundef 4) #4
  %cmp2 = icmp sgt i32 %call1, 0
  %. = zext i1 %cmp2 to i32
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

declare %struct.ASN1_ITEM_st* @ASN1_NULL_it() #0

; Function Attrs: noinline nounwind uwtable
define internal i8* @s2i_ocsp_nocheck(%struct.v3_ext_method* nocapture noundef readnone %method, %struct.v3_ext_ctx* nocapture noundef readnone %ctx, i8* nocapture noundef readnone %str) #1 {
entry:
  %call = tail call i32* @ASN1_NULL_new() #4
  %0 = bitcast i32* %call to i8*
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @i2r_ocsp_nocheck(%struct.v3_ext_method* nocapture noundef readnone %method, i8* nocapture noundef readnone %nocheck, %struct.bio_st* nocapture noundef readnone %out, i32 noundef %indent) #2 {
entry:
  ret i32 1
}

declare %struct.ASN1_ITEM_st* @OCSP_SERVICELOC_it() #0

; Function Attrs: noinline nounwind uwtable
define internal i32 @i2r_ocsp_serviceloc(%struct.v3_ext_method* nocapture noundef readnone %method, i8* nocapture noundef readonly %in, %struct.bio_st* noundef %bp, i32 noundef %ind) #1 {
entry:
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 noundef %ind, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #4
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %issuer = bitcast i8* %in to %struct.X509_name_st**
  %0 = load %struct.X509_name_st*, %struct.X509_name_st** %issuer, align 8, !tbaa !17
  %call1 = tail call i32 @X509_NAME_print_ex(%struct.bio_st* noundef %bp, %struct.X509_name_st* noundef %0, i32 noundef 0, i64 noundef 8520479) #4
  %cmp2 = icmp slt i32 %call1, 1
  br i1 %cmp2, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %locator = getelementptr inbounds i8, i8* %in, i64 8
  %1 = bitcast i8* %locator to %struct.stack_st_ACCESS_DESCRIPTION**
  %2 = load %struct.stack_st_ACCESS_DESCRIPTION*, %struct.stack_st_ACCESS_DESCRIPTION** %1, align 8, !tbaa !19
  %call544 = tail call fastcc %struct.stack_st* @ossl_check_const_ACCESS_DESCRIPTION_sk_type(%struct.stack_st_ACCESS_DESCRIPTION* noundef %2) #5
  %call645 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call544) #4
  %cmp746 = icmp sgt i32 %call645, 0
  br i1 %cmp746, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %mul = shl nsw i32 %ind, 1
  br label %for.body

for.cond:                                         ; preds = %if.end23
  %3 = load %struct.stack_st_ACCESS_DESCRIPTION*, %struct.stack_st_ACCESS_DESCRIPTION** %1, align 8, !tbaa !19
  %call5 = tail call fastcc %struct.stack_st* @ossl_check_const_ACCESS_DESCRIPTION_sk_type(%struct.stack_st_ACCESS_DESCRIPTION* noundef %3) #5
  %call6 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call5) #4
  %cmp7 = icmp slt i32 %inc, %call6
  br i1 %cmp7, label %for.body, label %cleanup, !llvm.loop !20

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %i.047 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %4 = load %struct.stack_st_ACCESS_DESCRIPTION*, %struct.stack_st_ACCESS_DESCRIPTION** %1, align 8, !tbaa !19
  %call9 = tail call fastcc %struct.stack_st* @ossl_check_const_ACCESS_DESCRIPTION_sk_type(%struct.stack_st_ACCESS_DESCRIPTION* noundef %4) #5
  %call10 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call9, i32 noundef %i.047) #4
  %call11 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 noundef %mul, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #4
  %cmp12 = icmp slt i32 %call11, 1
  br i1 %cmp12, label %cleanup, label %if.end14

if.end14:                                         ; preds = %for.body
  %method15 = bitcast i8* %call10 to %struct.asn1_object_st**
  %5 = load %struct.asn1_object_st*, %struct.asn1_object_st** %method15, align 8, !tbaa !22
  %call16 = tail call i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef %bp, %struct.asn1_object_st* noundef %5) #4
  %cmp17 = icmp slt i32 %call16, 1
  br i1 %cmp17, label %cleanup, label %if.end19

if.end19:                                         ; preds = %if.end14
  %call20 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)) #4
  %cmp21 = icmp slt i32 %call20, 1
  br i1 %cmp21, label %cleanup, label %if.end23

if.end23:                                         ; preds = %if.end19
  %location = getelementptr inbounds i8, i8* %call10, i64 8
  %6 = bitcast i8* %location to %struct.GENERAL_NAME_st**
  %7 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %6, align 8, !tbaa !24
  %call24 = tail call i32 @GENERAL_NAME_print(%struct.bio_st* noundef %bp, %struct.GENERAL_NAME_st* noundef %7) #4
  %cmp25 = icmp slt i32 %call24, 1
  %inc = add nuw nsw i32 %i.047, 1
  br i1 %cmp25, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.cond, %if.end23, %if.end19, %if.end14, %for.body, %for.cond.preheader, %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 0, %entry ], [ 1, %for.cond.preheader ], [ 1, %for.cond ], [ 0, %if.end23 ], [ 0, %if.end19 ], [ 0, %if.end14 ], [ 0, %for.body ]
  ret i32 %retval.0
}

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #0

declare i32 @ASN1_STRING_print(%struct.bio_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #0

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #0

declare i32 @i2a_ASN1_INTEGER(%struct.bio_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #0

declare i32 @ASN1_GENERALIZEDTIME_print(%struct.bio_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #0

declare i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #0

declare %struct.asn1_string_st* @ASN1_OCTET_STRING_new() local_unnamed_addr #0

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #0

declare void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #0

declare void @ERR_new() local_unnamed_addr #0

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #0

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #0

declare i32 @i2a_ASN1_STRING(%struct.bio_st* noundef, %struct.asn1_string_st* noundef, i32 noundef) local_unnamed_addr #0

declare i32* @ASN1_NULL_new() local_unnamed_addr #0

declare i32 @X509_NAME_print_ex(%struct.bio_st* noundef, %struct.X509_name_st* noundef, i32 noundef, i64 noundef) local_unnamed_addr #0

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_ACCESS_DESCRIPTION_sk_type(%struct.stack_st_ACCESS_DESCRIPTION* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_ACCESS_DESCRIPTION* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #0

declare i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #0

declare i32 @GENERAL_NAME_print(%struct.bio_st* noundef, %struct.GENERAL_NAME_st* noundef) local_unnamed_addr #0

attributes #0 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"ocsp_crl_id_st", !6, i64 0, !6, i64 8, !6, i64 16}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 8}
!10 = !{!5, !6, i64 16}
!11 = !{!6, !6, i64 0}
!12 = !{!13, !14, i64 0}
!13 = !{!"asn1_string_st", !14, i64 0, !14, i64 4, !6, i64 8, !15, i64 16}
!14 = !{!"int", !7, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!13, !6, i64 8}
!17 = !{!18, !6, i64 0}
!18 = !{!"ocsp_service_locator_st", !6, i64 0, !6, i64 8}
!19 = !{!18, !6, i64 8}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!23, !6, i64 0}
!23 = !{!"ACCESS_DESCRIPTION_st", !6, i64 0, !6, i64 8}
!24 = !{!23, !6, i64 8}
