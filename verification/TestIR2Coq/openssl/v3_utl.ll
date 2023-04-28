; ModuleID = 'crypto/x509/v3_utl.c'
source_filename = "crypto/x509/v3_utl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack_st_CONF_VALUE = type opaque
%struct.stack_st = type opaque
%struct.CONF_VALUE = type { i8*, i8*, i8* }
%struct.v3_ext_method = type { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* }
%struct.ASN1_ITEM_st = type opaque
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
%struct.bignum_st = type opaque
%struct.stack_st_OPENSSL_STRING = type opaque
%struct.X509_name_entry_st = type { %struct.asn1_object_st*, %struct.asn1_string_st*, i32, i32 }
%struct.GENERAL_NAME_st = type { i32, %union.anon.2 }
%union.anon.2 = type { i8* }
%struct.stack_st_ACCESS_DESCRIPTION = type opaque
%struct.X509_extension_st = type { %struct.asn1_object_st*, i32, %struct.asn1_string_st }
%struct.otherName_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.IPV6_STAT = type { [16 x i8], i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"crypto/x509/v3_utl.c\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@__func__.i2s_ASN1_ENUMERATED = private unnamed_addr constant [20 x i8] c"i2s_ASN1_ENUMERATED\00", align 1
@__func__.i2s_ASN1_INTEGER = private unnamed_addr constant [17 x i8] c"i2s_ASN1_INTEGER\00", align 1
@__func__.s2i_ASN1_INTEGER = private unnamed_addr constant [17 x i8] c"s2i_ASN1_INTEGER\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@__func__.X509V3_get_value_bool = private unnamed_addr constant [22 x i8] c"X509V3_get_value_bool\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"name=\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c", value=\00", align 1
@__func__.X509V3_parse_list = private unnamed_addr constant [18 x i8] c"X509V3_parse_list\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%X:\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%X\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"<invalid length=%d>\00", align 1
@__func__.x509v3_add_len_value = private unnamed_addr constant [21 x i8] c"x509v3_add_len_value\00", align 1
@__func__.bignum_to_string = private unnamed_addr constant [17 x i8] c"bignum_to_string\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"-0x\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"xn--\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"%d.%d.%d.%d%n\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @X509V3_add_value(i8* noundef %name, i8* noundef %value, %struct.stack_st_CONF_VALUE** nocapture noundef %extlist) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i8* %value, null
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %call = tail call i64 @strlen(i8* noundef nonnull %value) #10
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ 0, %entry ]
  %call1 = tail call fastcc i32 @x509v3_add_len_value(i8* noundef %name, i8* noundef %value, i64 noundef %cond, %struct.stack_st_CONF_VALUE** noundef %extlist) #11
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @x509v3_add_len_value(i8* noundef %name, i8* noundef %value, i64 noundef %vallen, %struct.stack_st_CONF_VALUE** nocapture noundef %extlist) unnamed_addr #0 {
entry:
  %0 = load %struct.stack_st_CONF_VALUE*, %struct.stack_st_CONF_VALUE** %extlist, align 8, !tbaa !4
  %cmp = icmp eq %struct.stack_st_CONF_VALUE* %0, null
  %cmp1.not = icmp eq i8* %name, null
  br i1 %cmp1.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %name, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 47) #12
  %cmp3 = icmp eq i8* %call, null
  br i1 %cmp3, label %err, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %tname.0 = phi i8* [ %call, %land.lhs.true ], [ null, %entry ]
  %cmp5.not = icmp eq i8* %value, null
  br i1 %cmp5.not, label %if.end18, label %if.then7

if.then7:                                         ; preds = %if.end
  %call8 = tail call i8* @memchr(i8* noundef nonnull %value, i32 noundef 0, i64 noundef %vallen) #10
  %cmp9.not = icmp eq i8* %call8, null
  br i1 %cmp9.not, label %if.end12, label %err

if.end12:                                         ; preds = %if.then7
  %call13 = tail call i8* @CRYPTO_strndup(i8* noundef nonnull %value, i64 noundef %vallen, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 53) #12
  %cmp14 = icmp eq i8* %call13, null
  br i1 %cmp14, label %err, label %if.end18

if.end18:                                         ; preds = %if.end12, %if.end
  %tvalue.0 = phi i8* [ %call13, %if.end12 ], [ null, %if.end ]
  %call19 = tail call i8* @CRYPTO_malloc(i64 noundef 24, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 57) #12
  %cmp20 = icmp eq i8* %call19, null
  br i1 %cmp20, label %err, label %if.end23

if.end23:                                         ; preds = %if.end18
  br i1 %cmp, label %land.lhs.true24, label %if.end29

land.lhs.true24:                                  ; preds = %if.end23
  %call25 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #12
  %1 = bitcast %struct.stack_st_CONF_VALUE** %extlist to %struct.stack_st**
  store %struct.stack_st* %call25, %struct.stack_st** %1, align 8, !tbaa !4
  %cmp26 = icmp eq %struct.stack_st* %call25, null
  br i1 %cmp26, label %err, label %if.end29

if.end29:                                         ; preds = %land.lhs.true24, %if.end23
  %section = bitcast i8* %call19 to i8**
  store i8* null, i8** %section, align 8, !tbaa !8
  %name30 = getelementptr inbounds i8, i8* %call19, i64 8
  %2 = bitcast i8* %name30 to i8**
  store i8* %tname.0, i8** %2, align 8, !tbaa !10
  %value31 = getelementptr inbounds i8, i8* %call19, i64 16
  %3 = bitcast i8* %value31 to i8**
  store i8* %tvalue.0, i8** %3, align 8, !tbaa !11
  %4 = load %struct.stack_st_CONF_VALUE*, %struct.stack_st_CONF_VALUE** %extlist, align 8, !tbaa !4
  %call32 = tail call fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %4) #11
  %call34 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call32, i8* noundef nonnull %call19) #12
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err, label %cleanup

err:                                              ; preds = %if.end29, %land.lhs.true24, %if.end18, %if.end12, %if.then7, %land.lhs.true
  %5 = phi i8* [ null, %land.lhs.true ], [ null, %if.then7 ], [ null, %if.end12 ], [ null, %if.end18 ], [ %call19, %land.lhs.true24 ], [ %call19, %if.end29 ]
  %tname.1 = phi i8* [ null, %land.lhs.true ], [ %tname.0, %if.then7 ], [ %tname.0, %if.end12 ], [ %tname.0, %if.end18 ], [ %tname.0, %land.lhs.true24 ], [ %tname.0, %if.end29 ]
  %tvalue.1 = phi i8* [ null, %land.lhs.true ], [ null, %if.then7 ], [ null, %if.end12 ], [ %tvalue.0, %if.end18 ], [ %tvalue.0, %land.lhs.true24 ], [ %tvalue.0, %if.end29 ]
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 68, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.x509v3_add_len_value, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #12
  br i1 %cmp, label %if.then39, label %if.end41

if.then39:                                        ; preds = %err
  %6 = load %struct.stack_st_CONF_VALUE*, %struct.stack_st_CONF_VALUE** %extlist, align 8, !tbaa !4
  %call40 = tail call fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %6) #11
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call40) #12
  store %struct.stack_st_CONF_VALUE* null, %struct.stack_st_CONF_VALUE** %extlist, align 8, !tbaa !4
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %err
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 73) #12
  tail call void @CRYPTO_free(i8* noundef %tname.1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 74) #12
  tail call void @CRYPTO_free(i8* noundef %tvalue.1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 75) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end41
  %retval.0 = phi i32 [ 0, %if.end41 ], [ 1, %if.end29 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509V3_add_value_uchar(i8* noundef %name, i8* noundef %value, %struct.stack_st_CONF_VALUE** nocapture noundef %extlist) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i8* %value, null
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %call = tail call i64 @strlen(i8* noundef nonnull %value) #10
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ 0, %entry ]
  %call1 = tail call fastcc i32 @x509v3_add_len_value(i8* noundef %name, i8* noundef %value, i64 noundef %cond, %struct.stack_st_CONF_VALUE** noundef %extlist) #11
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define i32 @x509v3_add_len_value_uchar(i8* noundef %name, i8* noundef %value, i64 noundef %vallen, %struct.stack_st_CONF_VALUE** nocapture noundef %extlist) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @x509v3_add_len_value(i8* noundef %name, i8* noundef %value, i64 noundef %vallen, %struct.stack_st_CONF_VALUE** noundef %extlist) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define void @X509V3_conf_free(%struct.CONF_VALUE* noundef %conf) #0 {
entry:
  %tobool.not = icmp eq %struct.CONF_VALUE* %conf, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %conf, i64 0, i32 1
  %0 = load i8*, i8** %name, align 8, !tbaa !10
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 107) #12
  %value = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %conf, i64 0, i32 2
  %1 = load i8*, i8** %value, align 8, !tbaa !11
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 108) #12
  %section = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %conf, i64 0, i32 0
  %2 = load i8*, i8** %section, align 8, !tbaa !8
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 109) #12
  %3 = bitcast %struct.CONF_VALUE* %conf to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %3, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 110) #12
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509V3_add_value_bool(i8* noundef %name, i32 noundef %asn1_bool, %struct.stack_st_CONF_VALUE** nocapture noundef %extlist) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %asn1_bool, 0
  %. = select i1 %tobool.not, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  %call1 = tail call i32 @X509V3_add_value(i8* noundef %name, i8* noundef %., %struct.stack_st_CONF_VALUE** noundef %extlist) #11
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509V3_add_value_bool_nf(i8* noundef %name, i32 noundef %asn1_bool, %struct.stack_st_CONF_VALUE** nocapture noundef %extlist) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %asn1_bool, 0
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @X509V3_add_value(i8* noundef %name, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.stack_st_CONF_VALUE** noundef %extlist) #11
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @i2s_ASN1_ENUMERATED(%struct.v3_ext_method* nocapture noundef readnone %method, %struct.asn1_string_st* noundef %a) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.asn1_string_st* %a, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.bignum_st* @ASN1_ENUMERATED_to_BN(%struct.asn1_string_st* noundef nonnull %a, %struct.bignum_st* noundef null) #12
  %cmp = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call1 = tail call fastcc i8* @bignum_to_string(%struct.bignum_st* noundef nonnull %call) #11
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 175, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.i2s_ASN1_ENUMERATED, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #12
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %lor.lhs.false
  %strtmp.1 = phi i8* [ null, %if.then3 ], [ %call1, %lor.lhs.false ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4
  %retval.0 = phi i8* [ %strtmp.1, %if.end4 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare %struct.bignum_st* @ASN1_ENUMERATED_to_BN(%struct.asn1_string_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @bignum_to_string(%struct.bignum_st* noundef %bn) unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %bn) #12
  %cmp = icmp slt i32 %call, 128
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i8* @BN_bn2dec(%struct.bignum_st* noundef %bn) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i8* @BN_bn2hex(%struct.bignum_st* noundef %bn) #12
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = tail call i64 @strlen(i8* noundef nonnull %call2) #10
  %add = add i64 %call6, 3
  %call7 = tail call i8* @CRYPTO_malloc(i64 noundef %add, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 147) #12
  %cmp8 = icmp eq i8* %call7, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end5
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 149, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.bignum_to_string, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #12
  tail call void @CRYPTO_free(i8* noundef nonnull %call2, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 150) #12
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %0 = load i8, i8* %call2, align 1, !tbaa !12
  %cmp11 = icmp eq i8 %0, 45
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end10
  %call14 = tail call i64 @OPENSSL_strlcpy(i8* noundef nonnull %call7, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i64 noundef %add) #12
  %add.ptr = getelementptr inbounds i8, i8* %call2, i64 1
  br label %if.end18

if.else:                                          ; preds = %if.end10
  %call16 = tail call i64 @OPENSSL_strlcpy(i8* noundef nonnull %call7, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i64 noundef %add) #12
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then13
  %call2.sink = phi i8* [ %call2, %if.else ], [ %add.ptr, %if.then13 ]
  %call17 = tail call i64 @OPENSSL_strlcat(i8* noundef nonnull %call7, i8* noundef nonnull %call2.sink, i64 noundef %add) #12
  tail call void @CRYPTO_free(i8* noundef nonnull %call2, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 162) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end18, %if.then9, %if.then
  %retval.0 = phi i8* [ %call1, %if.then ], [ null, %if.then9 ], [ %call7, %if.end18 ], [ null, %if.end ]
  ret i8* %retval.0
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define i8* @i2s_ASN1_INTEGER(%struct.v3_ext_method* nocapture readnone %method, %struct.asn1_string_st* noundef %a) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.asn1_string_st* %a, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.bignum_st* @ASN1_INTEGER_to_BN(%struct.asn1_string_st* noundef nonnull %a, %struct.bignum_st* noundef null) #12
  %cmp = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call1 = tail call fastcc i8* @bignum_to_string(%struct.bignum_st* noundef nonnull %call) #11
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 189, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.i2s_ASN1_INTEGER, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #12
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %lor.lhs.false
  %strtmp.1 = phi i8* [ null, %if.then3 ], [ %call1, %lor.lhs.false ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4
  %retval.0 = phi i8* [ %strtmp.1, %if.end4 ], [ null, %entry ]
  ret i8* %retval.0
}

declare %struct.bignum_st* @ASN1_INTEGER_to_BN(%struct.asn1_string_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @s2i_ASN1_INTEGER(%struct.v3_ext_method* nocapture readnone %method, i8* noundef %value) local_unnamed_addr #0 {
entry:
  %bn = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.bignum_st** %bn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %cmp = icmp eq i8* %value, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 202, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.s2i_ASN1_INTEGER, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 109, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call %struct.bignum_st* @BN_new() #12
  store %struct.bignum_st* %call, %struct.bignum_st** %bn, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 207, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.s2i_ASN1_INTEGER, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %1 = load i8, i8* %value, align 1, !tbaa !12
  %cmp4 = icmp eq i8 %1, 45
  %value.addr.0.idx = zext i1 %cmp4 to i64
  %value.addr.0 = getelementptr i8, i8* %value, i64 %value.addr.0.idx
  %2 = load i8, i8* %value.addr.0, align 1, !tbaa !12
  %cmp10 = icmp eq i8 %2, 48
  br i1 %cmp10, label %land.lhs.true, label %if.else25

land.lhs.true:                                    ; preds = %if.end3
  %arrayidx12 = getelementptr inbounds i8, i8* %value.addr.0, i64 1
  %3 = load i8, i8* %arrayidx12, align 1, !tbaa !12
  switch i8 %3, label %if.else25 [
    i8 120, label %if.then23
    i8 88, label %if.then23
  ]

if.then23:                                        ; preds = %land.lhs.true, %land.lhs.true
  %add.ptr = getelementptr inbounds i8, i8* %value.addr.0, i64 2
  %call24 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %bn, i8* noundef nonnull %add.ptr) #12
  br label %if.end27

if.else25:                                        ; preds = %land.lhs.true, %if.end3
  %call26 = call i32 @BN_dec2bn(%struct.bignum_st** noundef nonnull %bn, i8* noundef nonnull %value.addr.0) #12
  br label %if.end27

if.end27:                                         ; preds = %if.else25, %if.then23
  %value.addr.171 = phi i8* [ %add.ptr, %if.then23 ], [ %value.addr.0, %if.else25 ]
  %ret.0 = phi i32 [ %call24, %if.then23 ], [ %call26, %if.else25 ]
  %tobool28.not = icmp eq i32 %ret.0, 0
  br i1 %tobool28.not, label %if.then33, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %if.end27
  %idxprom = sext i32 %ret.0 to i64
  %arrayidx30 = getelementptr inbounds i8, i8* %value.addr.171, i64 %idxprom
  %4 = load i8, i8* %arrayidx30, align 1, !tbaa !12
  %tobool32.not = icmp eq i8 %4, 0
  br i1 %tobool32.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %lor.lhs.false29, %if.end27
  %5 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !4
  call void @BN_free(%struct.bignum_st* noundef %5) #12
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 231, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.s2i_ASN1_INTEGER, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 100, i8* noundef null) #12
  br label %cleanup

if.end34:                                         ; preds = %lor.lhs.false29
  br i1 %cmp4, label %land.lhs.true36, label %if.end40

land.lhs.true36:                                  ; preds = %if.end34
  %6 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !4
  %call37 = call i32 @BN_is_zero(%struct.bignum_st* noundef %6) #12
  %tobool38.not = icmp ne i32 %call37, 0
  br label %if.end40

if.end40:                                         ; preds = %land.lhs.true36, %if.end34
  %tobool45.not = phi i1 [ true, %if.end34 ], [ %tobool38.not, %land.lhs.true36 ]
  %7 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !4
  %call41 = call %struct.asn1_string_st* @BN_to_ASN1_INTEGER(%struct.bignum_st* noundef %7, %struct.asn1_string_st* noundef null) #12
  %8 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !4
  call void @BN_free(%struct.bignum_st* noundef %8) #12
  %tobool42.not = icmp eq %struct.asn1_string_st* %call41, null
  br i1 %tobool42.not, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end40
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 241, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.s2i_ASN1_INTEGER, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 101, i8* noundef null) #12
  br label %cleanup

if.end44:                                         ; preds = %if.end40
  br i1 %tobool45.not, label %cleanup, label %if.then46

if.then46:                                        ; preds = %if.end44
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call41, i64 0, i32 1
  %9 = load i32, i32* %type, align 4, !tbaa !13
  %or = or i32 %9, 256
  store i32 %or, i32* %type, align 4, !tbaa !13
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.then46, %if.then43, %if.then33, %if.then2, %if.then
  %retval.0 = phi %struct.asn1_string_st* [ null, %if.then ], [ null, %if.then2 ], [ null, %if.then33 ], [ null, %if.then43 ], [ %call41, %if.then46 ], [ %call41, %if.end44 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret %struct.asn1_string_st* %retval.0
}

declare %struct.bignum_st* @BN_new() local_unnamed_addr #2

declare i32 @BN_hex2bn(%struct.bignum_st** noundef, i8* noundef) local_unnamed_addr #2

declare i32 @BN_dec2bn(%struct.bignum_st** noundef, i8* noundef) local_unnamed_addr #2

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @BN_to_ASN1_INTEGER(%struct.bignum_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509V3_add_value_int(i8* noundef %name, %struct.asn1_string_st* noundef %aint, %struct.stack_st_CONF_VALUE** nocapture noundef %extlist) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.asn1_string_st* %aint, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i8* @i2s_ASN1_INTEGER(%struct.v3_ext_method* undef, %struct.asn1_string_st* noundef nonnull %aint) #11
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %call3 = tail call i32 @X509V3_add_value(i8* noundef %name, i8* noundef nonnull %call, %struct.stack_st_CONF_VALUE** noundef %extlist) #11
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 260) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end2
  %retval.0 = phi i32 [ %call3, %if.end2 ], [ 1, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509V3_get_value_bool(%struct.CONF_VALUE* nocapture noundef readonly %value, i32* nocapture noundef writeonly %asn1_bool) local_unnamed_addr #0 {
entry:
  %value1 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %value, i64 0, i32 2
  %0 = load i8*, i8** %value1, align 8, !tbaa !11
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @strcmp(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #10
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = tail call i32 @strcmp(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #10
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then17, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call i32 @strcmp(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #10
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then17, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false5
  %call9 = tail call i32 @strcmp(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #10
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then17, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %call12 = tail call i32 @strcmp(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #10
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then17, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false11
  %call15 = tail call i32 @strcmp(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)) #10
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %lor.lhs.false14, %lor.lhs.false11, %lor.lhs.false8, %lor.lhs.false5, %lor.lhs.false, %if.end
  store i32 255, i32* %asn1_bool, align 4, !tbaa !17
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false14
  %call19 = tail call i32 @strcmp(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #10
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then36, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %if.end18
  %call22 = tail call i32 @strcmp(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)) #10
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then36, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false21
  %call25 = tail call i32 @strcmp(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #10
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then36, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false24
  %call28 = tail call i32 @strcmp(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #10
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then36, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false27
  %call31 = tail call i32 @strcmp(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0)) #10
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %if.then36, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false30
  %call34 = tail call i32 @strcmp(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0)) #10
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %err

if.then36:                                        ; preds = %lor.lhs.false33, %lor.lhs.false30, %lor.lhs.false27, %lor.lhs.false24, %lor.lhs.false21, %if.end18
  store i32 0, i32* %asn1_bool, align 4, !tbaa !17
  br label %cleanup

err:                                              ; preds = %lor.lhs.false33, %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 289, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.X509V3_get_value_bool, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 104, i8* noundef null) #12
  %name = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %value, i64 0, i32 1
  %1 = load i8*, i8** %name, align 8, !tbaa !10
  %2 = load i8*, i8** %value1, align 8, !tbaa !11
  tail call void (i32, ...) @ERR_add_error_data(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* noundef %1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* noundef %2) #12
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then36, %if.then17
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.then17 ], [ 1, %if.then36 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_add_error_data(i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509V3_get_value_int(%struct.CONF_VALUE* nocapture noundef readonly %value, %struct.asn1_string_st** nocapture noundef writeonly %aint) local_unnamed_addr #0 {
entry:
  %value1 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %value, i64 0, i32 2
  %0 = load i8*, i8** %value1, align 8, !tbaa !11
  %call = tail call %struct.asn1_string_st* @s2i_ASN1_INTEGER(%struct.v3_ext_method* undef, i8* noundef %0) #11
  %cmp = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %value, i64 0, i32 1
  %1 = load i8*, i8** %name, align 8, !tbaa !10
  %2 = load i8*, i8** %value1, align 8, !tbaa !11
  tail call void (i32, ...) @ERR_add_error_data(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* noundef %1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* noundef %2) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  store %struct.asn1_string_st* %call, %struct.asn1_string_st** %aint, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_CONF_VALUE* @X509V3_parse_list(i8* noundef %line) local_unnamed_addr #0 {
entry:
  %values = alloca %struct.stack_st_CONF_VALUE*, align 8
  %0 = bitcast %struct.stack_st_CONF_VALUE** %values to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store %struct.stack_st_CONF_VALUE* null, %struct.stack_st_CONF_VALUE** %values, align 8, !tbaa !4
  %call = tail call i8* @CRYPTO_strdup(i8* noundef %line, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 322) #12
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %err, label %for.cond

for.cond:                                         ; preds = %entry, %for.inc
  %q.0 = phi i8* [ %q.1, %for.inc ], [ %call, %entry ]
  %p.0 = phi i8* [ %incdec.ptr, %for.inc ], [ %call, %entry ]
  %ntmp.0 = phi i8* [ %ntmp.1, %for.inc ], [ null, %entry ]
  %state.0 = phi i32 [ %state.1, %for.inc ], [ 1, %entry ]
  %1 = load i8, i8* %p.0, align 1, !tbaa !12
  switch i8 %1, label %for.body [
    i8 13, label %for.end
    i8 10, label %for.end
    i8 0, label %for.end
  ]

for.body:                                         ; preds = %for.cond
  switch i32 %state.0, label %for.inc [
    i32 1, label %sw.bb
    i32 2, label %sw.bb27
  ]

sw.bb:                                            ; preds = %for.body
  switch i8 %1, label %for.inc [
    i8 58, label %if.then10
    i8 44, label %if.then18
  ]

if.then10:                                        ; preds = %sw.bb
  store i8 0, i8* %p.0, align 1, !tbaa !12
  %call11 = tail call fastcc i8* @strip_spaces(i8* noundef %q.0) #11
  %tobool12.not = icmp eq i8* %call11, null
  br i1 %tobool12.not, label %err, label %if.end14

if.end14:                                         ; preds = %if.then10
  %add.ptr = getelementptr inbounds i8, i8* %p.0, i64 1
  br label %for.inc

if.then18:                                        ; preds = %sw.bb
  store i8 0, i8* %p.0, align 1, !tbaa !12
  %call19 = tail call fastcc i8* @strip_spaces(i8* noundef %q.0) #11
  %tobool21.not = icmp eq i8* %call19, null
  br i1 %tobool21.not, label %err, label %if.end23

if.end23:                                         ; preds = %if.then18
  %add.ptr20 = getelementptr inbounds i8, i8* %p.0, i64 1
  %call24 = call i32 @X509V3_add_value(i8* noundef nonnull %call19, i8* noundef null, %struct.stack_st_CONF_VALUE** noundef nonnull %values) #11
  br label %for.inc

sw.bb27:                                          ; preds = %for.body
  %cmp29 = icmp eq i8 %1, 44
  br i1 %cmp29, label %if.then31, label %for.inc

if.then31:                                        ; preds = %sw.bb27
  store i8 0, i8* %p.0, align 1, !tbaa !12
  %call32 = tail call fastcc i8* @strip_spaces(i8* noundef %q.0) #11
  %tobool33.not = icmp eq i8* %call32, null
  br i1 %tobool33.not, label %err, label %if.end35

if.end35:                                         ; preds = %if.then31
  %call36 = call i32 @X509V3_add_value(i8* noundef %ntmp.0, i8* noundef nonnull %call32, %struct.stack_st_CONF_VALUE** noundef nonnull %values) #11
  %add.ptr37 = getelementptr inbounds i8, i8* %p.0, i64 1
  br label %for.inc

for.inc:                                          ; preds = %sw.bb, %for.body, %if.end23, %if.end14, %if.end35, %sw.bb27
  %q.1 = phi i8* [ %q.0, %for.body ], [ %add.ptr37, %if.end35 ], [ %q.0, %sw.bb27 ], [ %add.ptr, %if.end14 ], [ %add.ptr20, %if.end23 ], [ %q.0, %sw.bb ]
  %ntmp.1 = phi i8* [ %ntmp.0, %for.body ], [ null, %if.end35 ], [ %ntmp.0, %sw.bb27 ], [ %call11, %if.end14 ], [ %call19, %if.end23 ], [ %ntmp.0, %sw.bb ]
  %state.1 = phi i32 [ %state.0, %for.body ], [ 1, %if.end35 ], [ 2, %sw.bb27 ], [ 2, %if.end14 ], [ 1, %if.end23 ], [ 1, %sw.bb ]
  %incdec.ptr = getelementptr inbounds i8, i8* %p.0, i64 1
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond, %for.cond, %for.cond
  %cmp39 = icmp eq i32 %state.0, 2
  %call42 = tail call fastcc i8* @strip_spaces(i8* noundef %q.0) #11
  %tobool43.not = icmp eq i8* %call42, null
  br i1 %cmp39, label %if.then41, label %if.else47

if.then41:                                        ; preds = %for.end
  br i1 %tobool43.not, label %err, label %if.end45

if.end45:                                         ; preds = %if.then41
  %call46 = call i32 @X509V3_add_value(i8* noundef %ntmp.0, i8* noundef nonnull %call42, %struct.stack_st_CONF_VALUE** noundef nonnull %values) #11
  br label %if.end53

if.else47:                                        ; preds = %for.end
  br i1 %tobool43.not, label %err, label %if.end51

if.end51:                                         ; preds = %if.else47
  %call52 = call i32 @X509V3_add_value(i8* noundef nonnull %call42, i8* noundef null, %struct.stack_st_CONF_VALUE** noundef nonnull %values) #11
  br label %if.end53

if.end53:                                         ; preds = %if.end51, %if.end45
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 388) #12
  %2 = load %struct.stack_st_CONF_VALUE*, %struct.stack_st_CONF_VALUE** %values, align 8, !tbaa !4
  br label %cleanup

err:                                              ; preds = %if.then31, %if.then18, %if.then10, %if.else47, %if.then41, %entry
  %.sink126 = phi i32 [ 324, %entry ], [ 376, %if.then41 ], [ 383, %if.else47 ], [ 340, %if.then10 ], [ 349, %if.then18 ], [ 362, %if.then31 ]
  %.sink = phi i32 [ 786688, %entry ], [ 109, %if.then41 ], [ 108, %if.else47 ], [ 108, %if.then10 ], [ 108, %if.then18 ], [ 109, %if.then31 ]
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink126, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.X509V3_parse_list, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef %.sink, i8* noundef null) #12
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 392) #12
  %3 = load %struct.stack_st_CONF_VALUE*, %struct.stack_st_CONF_VALUE** %values, align 8, !tbaa !4
  %call54 = tail call fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %3) #11
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call54, void (i8*)* noundef bitcast (void (%struct.CONF_VALUE*)* @X509V3_conf_free to void (i8*)*)) #12
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end53
  %retval.0 = phi %struct.stack_st_CONF_VALUE* [ null, %err ], [ %2, %if.end53 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret %struct.stack_st_CONF_VALUE* %retval.0
}

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @strip_spaces(i8* noundef %name) unnamed_addr #0 {
entry:
  %0 = load i8, i8* %name, align 1, !tbaa !12
  %tobool.not46 = icmp eq i8 %0, 0
  br i1 %tobool.not46, label %cleanup, label %land.rhs

land.rhs:                                         ; preds = %entry, %while.body
  %1 = phi i8 [ %2, %while.body ], [ %0, %entry ]
  %p.047 = phi i8* [ %incdec.ptr, %while.body ], [ %name, %entry ]
  %conv = sext i8 %1 to i32
  %call = tail call i32 @ossl_ctype_check(i32 noundef %conv, i32 noundef 8) #12
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr inbounds i8, i8* %p.047, i64 1
  %2 = load i8, i8* %incdec.ptr, align 1, !tbaa !12
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %cleanup, label %land.rhs, !llvm.loop !20

while.end:                                        ; preds = %land.rhs
  %.pr = load i8, i8* %p.047, align 1, !tbaa !12
  %cmp = icmp eq i8 %.pr, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %while.end
  %call5 = tail call i64 @strlen(i8* noundef nonnull %p.047) #10
  %add.ptr = getelementptr inbounds i8, i8* %p.047, i64 %call5
  br label %while.cond7

while.cond7:                                      ; preds = %land.rhs10, %if.end
  %add.ptr.pn = phi i8* [ %add.ptr, %if.end ], [ %q.0, %land.rhs10 ]
  %q.0 = getelementptr inbounds i8, i8* %add.ptr.pn, i64 -1
  %cmp8.not = icmp eq i8* %q.0, %p.047
  br i1 %cmp8.not, label %if.end21, label %land.rhs10

land.rhs10:                                       ; preds = %while.cond7
  %3 = load i8, i8* %q.0, align 1, !tbaa !12
  %conv11 = sext i8 %3 to i32
  %call12 = tail call i32 @ossl_ctype_check(i32 noundef %conv11, i32 noundef 8) #12
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then20, label %while.cond7, !llvm.loop !21

if.then20:                                        ; preds = %land.rhs10
  store i8 0, i8* %add.ptr.pn, align 1, !tbaa !12
  br label %if.end21

if.end21:                                         ; preds = %while.cond7, %if.then20
  %4 = load i8, i8* %p.047, align 1, !tbaa !12
  %cmp23 = icmp eq i8 %4, 0
  %.p.0 = select i1 %cmp23, i8* null, i8* %p.047
  br label %cleanup

cleanup:                                          ; preds = %while.body, %entry, %if.end21, %while.end
  %retval.0 = phi i8* [ null, %while.end ], [ %.p.0, %if.end21 ], [ null, %entry ], [ null, %while.body ]
  ret i8* %retval.0
}

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define i32 @ossl_v3_name_cmp(i8* noundef readonly %name, i8* noundef %cmp) local_unnamed_addr #5 {
entry:
  %call = tail call i64 @strlen(i8* noundef %cmp) #10
  %sext = shl i64 %call, 32
  %conv1 = ashr exact i64 %sext, 32
  %call2 = tail call i32 @strncmp(i8* noundef %name, i8* noundef %cmp, i64 noundef %conv1) #10
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds i8, i8* %name, i64 %conv1
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %switch.selectcmp.case1 = icmp ne i8 %0, 46
  %switch.selectcmp.case2 = icmp ne i8 %0, 0
  %not.switch.selectcmp = and i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %1 = zext i1 %not.switch.selectcmp to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ %call2, %entry ], [ %1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_OPENSSL_STRING* @X509_get1_email(%struct.x509_st* noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @X509_get_ext_d2i(%struct.x509_st* noundef %x, i32 noundef 85, i32* noundef null, i32* noundef null) #12
  %0 = bitcast i8* %call to %struct.stack_st_GENERAL_NAME*
  %call1 = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef %x) #12
  %call2 = tail call fastcc %struct.stack_st_OPENSSL_STRING* @get_email(%struct.X509_name_st* noundef %call1, %struct.stack_st_GENERAL_NAME* noundef %0) #11
  %call3 = tail call fastcc %struct.stack_st* @ossl_check_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %0) #11
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call3, void (i8*)* noundef bitcast (void (%struct.GENERAL_NAME_st*)* @GENERAL_NAME_free to void (i8*)*)) #12
  ret %struct.stack_st_OPENSSL_STRING* %call2
}

declare i8* @X509_get_ext_d2i(%struct.x509_st* noundef, i32 noundef, i32* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_OPENSSL_STRING* @get_email(%struct.X509_name_st* noundef %name, %struct.stack_st_GENERAL_NAME* noundef %gens) unnamed_addr #0 {
entry:
  %ret = alloca %struct.stack_st_OPENSSL_STRING*, align 8
  %0 = bitcast %struct.stack_st_OPENSSL_STRING** %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store %struct.stack_st_OPENSSL_STRING* null, %struct.stack_st_OPENSSL_STRING** %ret, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %i.0 = phi i32 [ -1, %entry ], [ %call, %while.body ]
  %call = tail call i32 @X509_NAME_get_index_by_NID(%struct.X509_name_st* noundef %name, i32 noundef 48, i32 noundef %i.0) #12
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %while.body, label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.cond
  %call4 = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %gens) #11
  %call532 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call4) #12
  %cmp633 = icmp sgt i32 %call532, 0
  br i1 %cmp633, label %for.body, label %for.end

while.body:                                       ; preds = %while.cond
  %call1 = tail call %struct.X509_name_entry_st* @X509_NAME_get_entry(%struct.X509_name_st* noundef %name, i32 noundef %call) #12
  %call2 = tail call %struct.asn1_string_st* @X509_NAME_ENTRY_get_data(%struct.X509_name_entry_st* noundef %call1) #12
  %call3 = call fastcc i32 @append_ia5(%struct.stack_st_OPENSSL_STRING** noundef nonnull %ret, %struct.asn1_string_st* noundef %call2) #11
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup, label %while.cond, !llvm.loop !22

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.134 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %call8 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call4, i32 noundef %i.134) #12
  %type = bitcast i8* %call8 to i32*
  %1 = load i32, i32* %type, align 8, !tbaa !23
  %cmp9.not = icmp eq i32 %1, 1
  br i1 %cmp9.not, label %if.end11, label %for.inc

if.end11:                                         ; preds = %for.body
  %d = getelementptr inbounds i8, i8* %call8, i64 8
  %ia5 = bitcast i8* %d to %struct.asn1_string_st**
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %ia5, align 8, !tbaa !12
  %call12 = call fastcc i32 @append_ia5(%struct.stack_st_OPENSSL_STRING** noundef nonnull %ret, %struct.asn1_string_st* noundef %2) #11
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup, label %for.inc

for.inc:                                          ; preds = %if.end11, %for.body
  %inc = add nuw nsw i32 %i.134, 1
  %call5 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call4) #12
  %cmp6 = icmp slt i32 %inc, %call5
  br i1 %cmp6, label %for.body, label %for.end, !llvm.loop !25

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %3 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %ret, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %while.body, %if.end11, %for.end
  %retval.0 = phi %struct.stack_st_OPENSSL_STRING* [ %3, %for.end ], [ null, %if.end11 ], [ null, %while.body ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret %struct.stack_st_OPENSSL_STRING* %retval.0
}

declare %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_GENERAL_NAME* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef) #2

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_OPENSSL_STRING* @X509_get1_ocsp(%struct.x509_st* noundef %x) local_unnamed_addr #0 {
entry:
  %ret = alloca %struct.stack_st_OPENSSL_STRING*, align 8
  %0 = bitcast %struct.stack_st_OPENSSL_STRING** %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store %struct.stack_st_OPENSSL_STRING* null, %struct.stack_st_OPENSSL_STRING** %ret, align 8, !tbaa !4
  %call = tail call i8* @X509_get_ext_d2i(%struct.x509_st* noundef %x, i32 noundef 177, i32* noundef null, i32* noundef null) #12
  %1 = bitcast i8* %call to %struct.stack_st_ACCESS_DESCRIPTION*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup17, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_const_ACCESS_DESCRIPTION_sk_type(%struct.stack_st_ACCESS_DESCRIPTION* noundef nonnull %1) #11
  %call232 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #12
  %cmp33 = icmp sgt i32 %call232, 0
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.034 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %call4 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call1, i32 noundef %i.034) #12
  %method = bitcast i8* %call4 to %struct.asn1_object_st**
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %method, align 8, !tbaa !26
  %call5 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %2) #12
  %cmp6 = icmp eq i32 %call5, 178
  br i1 %cmp6, label %if.then7, label %for.inc

if.then7:                                         ; preds = %for.body
  %location = getelementptr inbounds i8, i8* %call4, i64 8
  %3 = bitcast i8* %location to %struct.GENERAL_NAME_st**
  %4 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %3, align 8, !tbaa !28
  %type = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %4, i64 0, i32 0
  %5 = load i32, i32* %type, align 8, !tbaa !23
  %cmp8 = icmp eq i32 %5, 6
  br i1 %cmp8, label %if.then9, label %for.inc

if.then9:                                         ; preds = %if.then7
  %d = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %4, i64 0, i32 1
  %uniformResourceIdentifier = bitcast %union.anon.2* %d to %struct.asn1_string_st**
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %uniformResourceIdentifier, align 8, !tbaa !12
  %call11 = call fastcc i32 @append_ia5(%struct.stack_st_OPENSSL_STRING** noundef nonnull %ret, %struct.asn1_string_st* noundef %6) #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.end.loopexit, label %for.inc

for.inc:                                          ; preds = %for.body, %if.then9, %if.then7
  %inc = add nuw nsw i32 %i.034, 1
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #12
  %cmp = icmp slt i32 %inc, %call2
  br i1 %cmp, label %for.body, label %for.end.loopexit, !llvm.loop !29

for.end.loopexit:                                 ; preds = %if.then9, %for.inc
  %.pre = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %ret, align 8, !tbaa !4
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader
  %7 = phi %struct.stack_st_OPENSSL_STRING* [ %.pre, %for.end.loopexit ], [ null, %for.cond.preheader ]
  tail call void @AUTHORITY_INFO_ACCESS_free(%struct.stack_st_ACCESS_DESCRIPTION* noundef nonnull %1) #12
  br label %cleanup17

cleanup17:                                        ; preds = %entry, %for.end
  %retval.0 = phi %struct.stack_st_OPENSSL_STRING* [ %7, %for.end ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret %struct.stack_st_OPENSSL_STRING* %retval.0
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_ACCESS_DESCRIPTION_sk_type(%struct.stack_st_ACCESS_DESCRIPTION* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_ACCESS_DESCRIPTION* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @append_ia5(%struct.stack_st_OPENSSL_STRING** nocapture noundef %sk, %struct.asn1_string_st* nocapture noundef readonly %email) unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %email, i64 0, i32 1
  %0 = load i32, i32* %type, align 4, !tbaa !13
  %cmp.not = icmp eq i32 %0, 22
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %email, i64 0, i32 2
  %1 = load i8*, i8** %data, align 8, !tbaa !30
  %cmp1 = icmp eq i8* %1, null
  br i1 %cmp1, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %email, i64 0, i32 0
  %2 = load i32, i32* %length, align 8, !tbaa !31
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %lor.lhs.false
  %conv = sext i32 %2 to i64
  %call = tail call i8* @memchr(i8* noundef nonnull %1, i32 noundef 0, i64 noundef %conv) #10
  %cmp7.not = icmp eq i8* %call, null
  br i1 %cmp7.not, label %if.end10, label %cleanup

if.end10:                                         ; preds = %if.end4
  %3 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %sk, align 8, !tbaa !4
  %cmp11 = icmp eq %struct.stack_st_OPENSSL_STRING* %3, null
  br i1 %cmp11, label %if.end16, label %if.end20

if.end16:                                         ; preds = %if.end10
  %call15 = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (i8**, i8**)* @sk_strcmp to i32 (i8*, i8*)*)) #12
  %4 = bitcast %struct.stack_st_OPENSSL_STRING** %sk to %struct.stack_st**
  store %struct.stack_st* %call15, %struct.stack_st** %4, align 8, !tbaa !4
  %cmp17 = icmp eq %struct.stack_st* %call15, null
  br i1 %cmp17, label %cleanup, label %if.end16.if.end20_crit_edge

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  %.pre = load i8*, i8** %data, align 8, !tbaa !30
  %.pre60 = load i32, i32* %length, align 8, !tbaa !31
  %.pre61 = sext i32 %.pre60 to i64
  br label %if.end20

if.end20:                                         ; preds = %if.end16.if.end20_crit_edge, %if.end10
  %conv23.pre-phi = phi i64 [ %.pre61, %if.end16.if.end20_crit_edge ], [ %conv, %if.end10 ]
  %5 = phi i8* [ %.pre, %if.end16.if.end20_crit_edge ], [ %1, %if.end10 ]
  %call24 = tail call i8* @CRYPTO_strndup(i8* noundef %5, i64 noundef %conv23.pre-phi, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 541) #12
  %cmp25 = icmp eq i8* %call24, null
  br i1 %cmp25, label %cleanup, label %if.end28

if.end28:                                         ; preds = %if.end20
  %6 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %sk, align 8, !tbaa !4
  %call29 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %6) #11
  %call31 = tail call i32 @OPENSSL_sk_find(%struct.stack_st* noundef %call29, i8* noundef nonnull %call24) #12
  %cmp32.not = icmp eq i32 %call31, -1
  br i1 %cmp32.not, label %if.end35, label %if.then34

if.then34:                                        ; preds = %if.end28
  tail call void @CRYPTO_free(i8* noundef nonnull %call24, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 547) #12
  br label %cleanup

if.end35:                                         ; preds = %if.end28
  %7 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %sk, align 8, !tbaa !4
  %call36 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %7) #11
  %call38 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call36, i8* noundef nonnull %call24) #12
  %tobool.not = icmp eq i32 %call38, 0
  br i1 %tobool.not, label %if.then39, label %cleanup

if.then39:                                        ; preds = %if.end35
  tail call void @CRYPTO_free(i8* noundef nonnull %call24, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 551) #12
  %8 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %sk, align 8, !tbaa !4
  tail call void @X509_email_free(%struct.stack_st_OPENSSL_STRING* noundef %8) #11
  store %struct.stack_st_OPENSSL_STRING* null, %struct.stack_st_OPENSSL_STRING** %sk, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end20, %if.end16, %if.end4, %if.end, %lor.lhs.false, %entry, %if.then39, %if.then34
  %retval.0 = phi i32 [ 1, %if.then34 ], [ 0, %if.then39 ], [ 1, %entry ], [ 1, %lor.lhs.false ], [ 1, %if.end ], [ 1, %if.end4 ], [ 0, %if.end16 ], [ 0, %if.end20 ], [ 1, %if.end35 ]
  ret i32 %retval.0
}

declare void @AUTHORITY_INFO_ACCESS_free(%struct.stack_st_ACCESS_DESCRIPTION* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_OPENSSL_STRING* @X509_REQ_get1_email(%struct.X509_req_st* noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st_X509_EXTENSION* @X509_REQ_get_extensions(%struct.X509_req_st* noundef %x) #12
  %call1 = tail call i8* @X509V3_get_d2i(%struct.stack_st_X509_EXTENSION* noundef %call, i32 noundef 85, i32* noundef null, i32* noundef null) #12
  %0 = bitcast i8* %call1 to %struct.stack_st_GENERAL_NAME*
  %call2 = tail call %struct.X509_name_st* @X509_REQ_get_subject_name(%struct.X509_req_st* noundef %x) #12
  %call3 = tail call fastcc %struct.stack_st_OPENSSL_STRING* @get_email(%struct.X509_name_st* noundef %call2, %struct.stack_st_GENERAL_NAME* noundef %0) #11
  %call4 = tail call fastcc %struct.stack_st* @ossl_check_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %0) #11
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call4, void (i8*)* noundef bitcast (void (%struct.GENERAL_NAME_st*)* @GENERAL_NAME_free to void (i8*)*)) #12
  %call6 = tail call fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef %call) #11
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call6, void (i8*)* noundef bitcast (void (%struct.X509_extension_st*)* @X509_EXTENSION_free to void (i8*)*)) #12
  ret %struct.stack_st_OPENSSL_STRING* %call3
}

declare %struct.stack_st_X509_EXTENSION* @X509_REQ_get_extensions(%struct.X509_req_st* noundef) local_unnamed_addr #2

declare i8* @X509V3_get_d2i(%struct.stack_st_X509_EXTENSION* noundef, i32 noundef, i32* noundef, i32* noundef) local_unnamed_addr #2

declare %struct.X509_name_st* @X509_REQ_get_subject_name(%struct.X509_req_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_X509_EXTENSION* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_EXTENSION_free(%struct.X509_extension_st* noundef) #2

; Function Attrs: noinline nounwind uwtable
define void @X509_email_free(%struct.stack_st_OPENSSL_STRING* noundef %sk) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %sk) #11
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef nonnull @str_free) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal void @str_free(i8* noundef %str) #0 {
entry:
  tail call void @CRYPTO_free(i8* noundef %str, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 521) #12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_check_host(%struct.x509_st* noundef %x, i8* noundef %chk, i64 noundef %chklen, i32 noundef %flags, i8** noundef %peername) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %chk, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i64 %chklen, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %call = tail call i64 @strlen(i8* noundef nonnull %chk) #10
  br label %if.end7

if.else:                                          ; preds = %if.end
  %cmp3.not = icmp eq i64 %chklen, 1
  %sub = add i64 %chklen, -1
  %cond = select i1 %cmp3.not, i64 1, i64 %sub
  %call4 = tail call i8* @memchr(i8* noundef nonnull %chk, i32 noundef 0, i64 noundef %cond) #10
  %tobool.not = icmp eq i8* %call4, null
  br i1 %tobool.not, label %if.end7, label %return

if.end7:                                          ; preds = %if.else, %if.then2
  %chklen.addr.0 = phi i64 [ %call, %if.then2 ], [ %chklen, %if.else ]
  %cmp8 = icmp ugt i64 %chklen.addr.0, 1
  br i1 %cmp8, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end7
  %sub9 = add i64 %chklen.addr.0, -1
  %arrayidx = getelementptr inbounds i8, i8* %chk, i64 %sub9
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %cmp10 = icmp eq i8 %0, 0
  %spec.select = select i1 %cmp10, i64 %sub9, i64 %chklen.addr.0
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true, %if.end7
  %chklen.addr.1 = phi i64 [ %chklen.addr.0, %if.end7 ], [ %spec.select, %land.lhs.true ]
  %call14 = tail call fastcc i32 @do_x509_check(%struct.x509_st* noundef %x, i8* noundef nonnull %chk, i64 noundef %chklen.addr.1, i32 noundef %flags, i32 noundef 2, i8** noundef %peername) #11
  br label %return

return:                                           ; preds = %if.else, %entry, %if.end13
  %retval.0 = phi i32 [ %call14, %if.end13 ], [ -2, %entry ], [ -2, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @memchr(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_x509_check(%struct.x509_st* noundef %x, i8* noundef %chk, i64 noundef %chklen, i32 noundef %flags, i32 noundef %check_type, i8** noundef %peername) unnamed_addr #0 {
entry:
  %and = and i32 %flags, -32769
  %cmp = icmp eq i32 %check_type, 1
  br i1 %cmp, label %if.end13, label %if.else

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %check_type, 2
  br i1 %cmp1, label %if.then2, label %if.end13

if.then2:                                         ; preds = %if.else
  %cmp3 = icmp ugt i64 %chklen, 1
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then2
  %0 = load i8, i8* %chk, align 1, !tbaa !12
  %cmp4 = icmp eq i8 %0, 46
  %masksel = select i1 %cmp4, i32 32768, i32 0
  %spec.select = or i32 %masksel, %and
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %if.then2
  %flags.addr.0 = phi i32 [ %and, %if.then2 ], [ %spec.select, %land.lhs.true ]
  %and7 = and i32 %flags.addr.0, 2
  %tobool.not = icmp eq i32 %and7, 0
  %equal_wildcard.equal_nocase = select i1 %tobool.not, i32 (i8*, i64, i8*, i64, i32)* @equal_wildcard, i32 (i8*, i64, i8*, i64, i32)* @equal_nocase
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.end, %entry
  %cmp96 = phi i1 [ true, %entry ], [ true, %if.end ], [ false, %if.else ]
  %cnid.0 = phi i32 [ 48, %entry ], [ 13, %if.end ], [ 0, %if.else ]
  %alt_type.0 = phi i32 [ 22, %entry ], [ 22, %if.end ], [ 4, %if.else ]
  %equal.0 = phi i32 (i8*, i64, i8*, i64, i32)* [ @equal_email, %entry ], [ %equal_wildcard.equal_nocase, %if.end ], [ @equal_case, %if.else ]
  %flags.addr.1 = phi i32 [ %and, %entry ], [ %flags.addr.0, %if.end ], [ %and, %if.else ]
  %cmp14 = icmp eq i64 %chklen, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  %call = tail call i64 @strlen(i8* noundef %chk) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13
  %chklen.addr.0 = phi i64 [ %call, %if.then16 ], [ %chklen, %if.end13 ]
  %call18 = tail call i8* @X509_get_ext_d2i(%struct.x509_st* noundef %x, i32 noundef 85, i32* noundef null, i32* noundef null) #12
  %1 = bitcast i8* %call18 to %struct.stack_st_GENERAL_NAME*
  %tobool19.not = icmp eq i8* %call18, null
  br i1 %tobool19.not, label %if.end95, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end17
  %call21 = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef nonnull %1) #11
  %call22205 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call21) #12
  %cmp23206 = icmp sgt i32 %call22205, 0
  br i1 %cmp23206, label %for.body, label %if.end88

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %san_present.0208 = phi i32 [ %san_present.1194, %for.inc ], [ 0, %for.cond.preheader ]
  %i.0207 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %call26 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call21, i32 noundef %i.0207) #12
  %type = bitcast i8* %call26 to i32*
  %2 = load i32, i32* %type, align 8, !tbaa !23
  %cmp27 = icmp eq i32 %2, 0
  %or.cond = and i1 %cmp, %cmp27
  br i1 %or.cond, label %if.then32, label %if.else55

if.then32:                                        ; preds = %for.body
  %d = getelementptr inbounds i8, i8* %call26, i64 8
  %otherName = bitcast i8* %d to %struct.otherName_st**
  %3 = load %struct.otherName_st*, %struct.otherName_st** %otherName, align 8, !tbaa !12
  %type_id = getelementptr inbounds %struct.otherName_st, %struct.otherName_st* %3, i64 0, i32 0
  %4 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type_id, align 8, !tbaa !32
  %call33 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %4) #12
  %cmp34 = icmp eq i32 %call33, 1208
  br i1 %cmp34, label %if.then36, label %for.inc

if.then36:                                        ; preds = %if.then32
  %5 = load %struct.otherName_st*, %struct.otherName_st** %otherName, align 8, !tbaa !12
  %value = getelementptr inbounds %struct.otherName_st, %struct.otherName_st* %5, i64 0, i32 1
  %6 = load %struct.asn1_type_st*, %struct.asn1_type_st** %value, align 8, !tbaa !34
  %type39 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %6, i64 0, i32 0
  %7 = load i32, i32* %type39, align 8, !tbaa !35
  %cmp40 = icmp eq i32 %7, 12
  br i1 %cmp40, label %if.then42, label %cleanup

if.then42:                                        ; preds = %if.then36
  %value46 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %6, i64 0, i32 1
  %utf8string = bitcast %union.anon* %value46 to %struct.asn1_string_st**
  %8 = load %struct.asn1_string_st*, %struct.asn1_string_st** %utf8string, align 8, !tbaa !12
  %call47 = tail call fastcc i32 @do_check_string(%struct.asn1_string_st* noundef %8, i32 noundef 0, i32 (i8*, i64, i8*, i64, i32)* noundef nonnull %equal.0, i32 noundef %flags.addr.1, i8* noundef %chk, i64 noundef %chklen.addr.0, i8** noundef %peername) #11
  %cmp48.not = icmp eq i32 %call47, 0
  br i1 %cmp48.not, label %cleanup, label %cleanup117.sink.split

if.else55:                                        ; preds = %for.body
  %cmp57.not = icmp eq i32 %2, %check_type
  %or.cond184 = or i1 %cmp57.not, %cmp27
  br i1 %or.cond184, label %cleanup, label %for.inc

cleanup:                                          ; preds = %if.then36, %if.then42, %if.else55
  %cstr.0.in.in = getelementptr inbounds i8, i8* %call26, i64 8
  %cstr.0.in = bitcast i8* %cstr.0.in.in to %struct.asn1_string_st**
  %cstr.0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %cstr.0.in, align 8, !tbaa !12
  %call79 = tail call fastcc i32 @do_check_string(%struct.asn1_string_st* noundef %cstr.0, i32 noundef %alt_type.0, i32 (i8*, i64, i8*, i64, i32)* noundef nonnull %equal.0, i32 noundef %flags.addr.1, i8* noundef %chk, i64 noundef %chklen.addr.0, i8** noundef %peername) #11
  %cmp80.not.not = icmp eq i32 %call79, 0
  br i1 %cmp80.not.not, label %for.inc, label %cleanup117.sink.split

for.inc:                                          ; preds = %if.else55, %if.then32, %cleanup
  %san_present.1194 = phi i32 [ 1, %cleanup ], [ %san_present.0208, %if.then32 ], [ %san_present.0208, %if.else55 ]
  %inc = add nuw nsw i32 %i.0207, 1
  %call22 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call21) #12
  %cmp23 = icmp slt i32 %inc, %call22
  br i1 %cmp23, label %for.body, label %if.end88, !llvm.loop !37

if.end88:                                         ; preds = %for.inc, %for.cond.preheader
  %san_present.2.ph = phi i32 [ 0, %for.cond.preheader ], [ %san_present.1194, %for.inc ]
  tail call void @GENERAL_NAMES_free(%struct.stack_st_GENERAL_NAME* noundef nonnull %1) #12
  %tobool89.not = icmp ne i32 %san_present.2.ph, 0
  %and91 = and i32 %flags.addr.1, 1
  %tobool92.not = icmp eq i32 %and91, 0
  %or.cond185 = select i1 %tobool89.not, i1 %tobool92.not, i1 false
  br i1 %or.cond185, label %cleanup117, label %if.end95

if.end95:                                         ; preds = %if.end88, %if.end17
  %and98 = and i32 %flags.addr.1, 32
  %tobool99.not = icmp eq i32 %and98, 0
  %or.cond186 = select i1 %cmp96, i1 %tobool99.not, i1 false
  br i1 %or.cond186, label %if.end101, label %cleanup117

if.end101:                                        ; preds = %if.end95
  %call102 = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef %x) #12
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end101
  %i.1 = phi i32 [ -1, %if.end101 ], [ %call103, %while.body ]
  %call103 = tail call i32 @X509_NAME_get_index_by_NID(%struct.X509_name_st* noundef %call102, i32 noundef %cnid.0, i32 noundef %i.1) #12
  %cmp104 = icmp sgt i32 %call103, -1
  br i1 %cmp104, label %while.body, label %cleanup117

while.body:                                       ; preds = %while.cond
  %call106 = tail call %struct.X509_name_entry_st* @X509_NAME_get_entry(%struct.X509_name_st* noundef %call102, i32 noundef %call103) #12
  %call107 = tail call %struct.asn1_string_st* @X509_NAME_ENTRY_get_data(%struct.X509_name_entry_st* noundef %call106) #12
  %call108 = tail call fastcc i32 @do_check_string(%struct.asn1_string_st* noundef %call107, i32 noundef -1, i32 (i8*, i64, i8*, i64, i32)* noundef nonnull %equal.0, i32 noundef %flags.addr.1, i8* noundef %chk, i64 noundef %chklen.addr.0, i8** noundef %peername) #11
  %cmp109.not = icmp eq i32 %call108, 0
  br i1 %cmp109.not, label %while.cond, label %cleanup117, !llvm.loop !38

cleanup117.sink.split:                            ; preds = %cleanup, %if.then42
  %retval.2.ph = phi i32 [ %call47, %if.then42 ], [ %call79, %cleanup ]
  tail call void @GENERAL_NAMES_free(%struct.stack_st_GENERAL_NAME* noundef nonnull %1) #12
  br label %cleanup117

cleanup117:                                       ; preds = %while.cond, %while.body, %cleanup117.sink.split, %if.end95, %if.end88
  %retval.2 = phi i32 [ 0, %if.end88 ], [ 0, %if.end95 ], [ %retval.2.ph, %cleanup117.sink.split ], [ 0, %while.cond ], [ %call108, %while.body ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_check_email(%struct.x509_st* noundef %x, i8* noundef %chk, i64 noundef %chklen, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %chk, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i64 %chklen, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %call = tail call i64 @strlen(i8* noundef nonnull %chk) #10
  br label %if.end7

if.else:                                          ; preds = %if.end
  %cmp3.not = icmp eq i64 %chklen, 1
  %sub = add i64 %chklen, -1
  %cond = select i1 %cmp3.not, i64 1, i64 %sub
  %call4 = tail call i8* @memchr(i8* noundef nonnull %chk, i32 noundef 0, i64 noundef %cond) #10
  %tobool.not = icmp eq i8* %call4, null
  br i1 %tobool.not, label %if.end7, label %return

if.end7:                                          ; preds = %if.else, %if.then2
  %chklen.addr.0 = phi i64 [ %call, %if.then2 ], [ %chklen, %if.else ]
  %cmp8 = icmp ugt i64 %chklen.addr.0, 1
  br i1 %cmp8, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end7
  %sub9 = add i64 %chklen.addr.0, -1
  %arrayidx = getelementptr inbounds i8, i8* %chk, i64 %sub9
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %cmp10 = icmp eq i8 %0, 0
  %spec.select = select i1 %cmp10, i64 %sub9, i64 %chklen.addr.0
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true, %if.end7
  %chklen.addr.1 = phi i64 [ %chklen.addr.0, %if.end7 ], [ %spec.select, %land.lhs.true ]
  %call14 = tail call fastcc i32 @do_x509_check(%struct.x509_st* noundef %x, i8* noundef nonnull %chk, i64 noundef %chklen.addr.1, i32 noundef %flags, i32 noundef 1, i8** noundef null) #11
  br label %return

return:                                           ; preds = %if.else, %entry, %if.end13
  %retval.0 = phi i32 [ %call14, %if.end13 ], [ -2, %entry ], [ -2, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_check_ip(%struct.x509_st* noundef %x, i8* noundef %chk, i64 noundef %chklen, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %chk, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @do_x509_check(%struct.x509_st* noundef %x, i8* noundef nonnull %chk, i64 noundef %chklen, i32 noundef %flags, i32 noundef 7, i8** noundef null) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ -2, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_check_ip_asc(%struct.x509_st* noundef %x, i8* noundef %ipasc, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %ipout = alloca [16 x i8], align 16
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %ipout, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #13
  %cmp = icmp eq i8* %ipasc, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 @ossl_a2i_ipadd(i8* noundef nonnull %0, i8* noundef nonnull %ipasc) #11
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %1 = zext i32 %call to i64
  %call6 = call fastcc i32 @do_x509_check(%struct.x509_st* noundef %x, i8* noundef nonnull %0, i64 noundef %1, i32 noundef %flags, i32 noundef 7, i8** noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i32 [ %call6, %if.end4 ], [ -2, %entry ], [ -2, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_a2i_ipadd(i8* noundef %ipout, i8* noundef %ipasc) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @strchr(i8* noundef %ipasc, i32 noundef 58) #10
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @ipv6_from_asc(i8* noundef %ipout, i8* noundef %ipasc) #11
  br label %return

if.else:                                          ; preds = %entry
  %call4 = tail call fastcc i32 @ipv4_from_asc(i8* noundef %ipout, i8* noundef %ipasc) #11
  br label %return

return:                                           ; preds = %if.else, %if.then
  %call4.sink = phi i32 [ %call4, %if.else ], [ %call1, %if.then ]
  %.sink = phi i32 [ 4, %if.else ], [ 16, %if.then ]
  %tobool5.not = icmp eq i32 %call4.sink, 0
  %.11 = select i1 %tobool5.not, i32 0, i32 %.sink
  ret i32 %.11
}

; Function Attrs: noinline nounwind uwtable
define i8* @ossl_ipaddr_to_asc(i8* nocapture noundef readonly %p, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %buf = alloca [40 x i8], align 16
  %0 = getelementptr inbounds [40 x i8], [40 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #13
  switch i32 %len, label %sw.default [
    i32 4, label %sw.bb
    i32 16, label %for.body
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8, i8* %p, align 1, !tbaa !12
  %conv = zext i8 %1 to i32
  %arrayidx1 = getelementptr inbounds i8, i8* %p, i64 1
  %2 = load i8, i8* %arrayidx1, align 1, !tbaa !12
  %conv2 = zext i8 %2 to i32
  %arrayidx3 = getelementptr inbounds i8, i8* %p, i64 2
  %3 = load i8, i8* %arrayidx3, align 1, !tbaa !12
  %conv4 = zext i8 %3 to i32
  %arrayidx5 = getelementptr inbounds i8, i8* %p, i64 3
  %4 = load i8, i8* %arrayidx5, align 1, !tbaa !12
  %conv6 = zext i8 %4 to i32
  %call = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 40, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv4, i32 noundef %conv6) #12
  br label %sw.epilog

for.body:                                         ; preds = %entry, %for.body
  %p.addr.045 = phi i8* [ %add.ptr, %for.body ], [ %p, %entry ]
  %remain.044 = phi i32 [ %sub, %for.body ], [ 40, %entry ]
  %i.043 = phi i32 [ %dec, %for.body ], [ 8, %entry ]
  %out.042 = phi i8* [ %add.ptr20, %for.body ], [ %0, %entry ]
  %dec = add nsw i32 %i.043, -1
  %cmp12 = icmp ugt i32 %i.043, 1
  %cond = select i1 %cmp12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0)
  %conv14 = sext i32 %remain.044 to i64
  %5 = load i8, i8* %p.addr.045, align 1, !tbaa !12
  %conv16 = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %conv16, 8
  %arrayidx17 = getelementptr inbounds i8, i8* %p.addr.045, i64 1
  %6 = load i8, i8* %arrayidx17, align 1, !tbaa !12
  %conv18 = zext i8 %6 to i32
  %or = or i32 %shl, %conv18
  %call19 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef %out.042, i64 noundef %conv14, i8* noundef %cond, i32 noundef %or) #12
  %add.ptr = getelementptr inbounds i8, i8* %p.addr.045, i64 2
  %sub = sub nsw i32 %remain.044, %call19
  %idx.ext = sext i32 %call19 to i64
  %add.ptr20 = getelementptr inbounds i8, i8* %out.042, i64 %idx.ext
  %cmp10 = icmp sgt i32 %call19, -1
  %7 = select i1 %cmp12, i1 %cmp10, i1 false
  br i1 %7, label %for.body, label %sw.epilog, !llvm.loop !39

sw.default:                                       ; preds = %entry
  %call22 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 40, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i32 noundef %len) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.default, %sw.bb
  %call24 = call i8* @CRYPTO_strdup(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1046) #12
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #13
  ret i8* %call24
}

declare i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @a2i_IPADDRESS(i8* noundef %ipasc) local_unnamed_addr #0 {
entry:
  %ipout = alloca [16 x i8], align 16
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %ipout, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #13
  %call = call i32 @ossl_a2i_ipadd(i8* noundef nonnull %0, i8* noundef %ipasc) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #12
  %cmp = icmp eq %struct.asn1_string_st* %call1, null
  br i1 %cmp, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call5 = call i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef nonnull %call1, i8* noundef nonnull %0, i32 noundef %call) #12
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %cleanup

if.then7:                                         ; preds = %if.end3
  call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef nonnull %call1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end, %entry, %if.then7
  %retval.0 = phi %struct.asn1_string_st* [ null, %if.then7 ], [ null, %entry ], [ null, %if.end ], [ %call1, %if.end3 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #13
  ret %struct.asn1_string_st* %retval.0
}

declare %struct.asn1_string_st* @ASN1_OCTET_STRING_new() local_unnamed_addr #2

declare i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @a2i_IPADDRESS_NC(i8* noundef %ipasc) local_unnamed_addr #0 {
entry:
  %ipout = alloca [32 x i8], align 16
  %0 = getelementptr inbounds [32 x i8], [32 x i8]* %ipout, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #13
  %call = tail call i8* @strchr(i8* noundef %ipasc, i32 noundef 47) #10
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @CRYPTO_strdup(i8* noundef %ipasc, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1087) #12
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %ipasc to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr = getelementptr inbounds i8, i8* %call1, i64 %sub.ptr.sub
  store i8 0, i8* %add.ptr, align 1, !tbaa !12
  %call5 = call i32 @ossl_a2i_ipadd(i8* noundef nonnull %0, i8* noundef nonnull %call1) #11
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %err, label %if.end7

if.end7:                                          ; preds = %if.end4
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr, i64 1
  %idx.ext = sext i32 %call5 to i64
  %add.ptr9 = getelementptr inbounds [32 x i8], [32 x i8]* %ipout, i64 0, i64 %idx.ext
  %call10 = call i32 @ossl_a2i_ipadd(i8* noundef nonnull %add.ptr9, i8* noundef nonnull %incdec.ptr) #11
  call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1100) #12
  %tobool11.not = icmp ne i32 %call10, 0
  %cmp12.not = icmp eq i32 %call5, %call10
  %or.cond = select i1 %tobool11.not, i1 %cmp12.not, i1 false
  br i1 %or.cond, label %if.end14, label %err

if.end14:                                         ; preds = %if.end7
  %call15 = call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #12
  %cmp16 = icmp eq %struct.asn1_string_st* %call15, null
  br i1 %cmp16, label %err, label %if.end18

if.end18:                                         ; preds = %if.end14
  %add = shl nsw i32 %call5, 1
  %call20 = call i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef nonnull %call15, i8* noundef nonnull %0, i32 noundef %add) #12
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %cleanup

err:                                              ; preds = %if.end18, %if.end14, %if.end7, %if.end4
  %iptmp.0 = phi i8* [ null, %if.end14 ], [ null, %if.end18 ], [ null, %if.end7 ], [ %call1, %if.end4 ]
  %ret.0 = phi %struct.asn1_string_st* [ null, %if.end14 ], [ %call15, %if.end18 ], [ null, %if.end7 ], [ null, %if.end4 ]
  call void @CRYPTO_free(i8* noundef %iptmp.0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1115) #12
  call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %ret.0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end, %entry, %err
  %retval.0 = phi %struct.asn1_string_st* [ null, %err ], [ null, %entry ], [ null, %if.end ], [ %call15, %if.end18 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #13
  ret %struct.asn1_string_st* %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ipv6_from_asc(i8* noundef %v6, i8* noundef %in) unnamed_addr #0 {
entry:
  %v6stat = alloca %struct.IPV6_STAT, align 4
  %0 = getelementptr inbounds %struct.IPV6_STAT, %struct.IPV6_STAT* %v6stat, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %0) #13
  %total = getelementptr inbounds %struct.IPV6_STAT, %struct.IPV6_STAT* %v6stat, i64 0, i32 1
  store i32 0, i32* %total, align 4, !tbaa !40
  %zero_pos = getelementptr inbounds %struct.IPV6_STAT, %struct.IPV6_STAT* %v6stat, i64 0, i32 2
  store i32 -1, i32* %zero_pos, align 4, !tbaa !42
  %zero_cnt = getelementptr inbounds %struct.IPV6_STAT, %struct.IPV6_STAT* %v6stat, i64 0, i32 3
  store i32 0, i32* %zero_cnt, align 4, !tbaa !43
  %call = call i32 @CONF_parse_list(i8* noundef %in, i32 noundef 58, i32 noundef 0, i32 (i8*, i32, i8*)* noundef nonnull @ipv6_cb, i8* noundef nonnull %0) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %zero_pos, align 4, !tbaa !42
  %cmp = icmp eq i32 %1, -1
  %2 = load i32, i32* %total, align 4, !tbaa !40
  %cmp4.not = icmp eq i32 %2, 16
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  br i1 %cmp4.not, label %if.else77, label %cleanup

if.else:                                          ; preds = %if.end
  br i1 %cmp4.not, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.else
  %3 = load i32, i32* %zero_cnt, align 4, !tbaa !43
  %cmp12 = icmp sgt i32 %3, 3
  br i1 %cmp12, label %cleanup, label %if.else14

if.else14:                                        ; preds = %if.end10
  switch i32 %3, label %if.else33 [
    i32 3, label %if.then17
    i32 2, label %if.then25
  ]

if.then17:                                        ; preds = %if.else14
  %cmp19 = icmp sgt i32 %2, 0
  br i1 %cmp19, label %cleanup, label %if.end44

if.then25:                                        ; preds = %if.else14
  %cmp27.not = icmp eq i32 %1, 0
  %cmp30.not = icmp eq i32 %1, %2
  %or.cond = select i1 %cmp27.not, i1 true, i1 %cmp30.not
  br i1 %or.cond, label %if.end44, label %cleanup

if.else33:                                        ; preds = %if.else14
  %cmp35 = icmp eq i32 %1, 0
  %cmp38 = icmp eq i32 %1, %2
  %or.cond90 = select i1 %cmp35, i1 true, i1 %cmp38
  br i1 %or.cond90, label %cleanup, label %if.end44

if.end44:                                         ; preds = %if.else33, %if.then25, %if.then17
  %cmp46 = icmp sgt i32 %1, -1
  br i1 %cmp46, label %if.then47, label %if.else77

if.then47:                                        ; preds = %if.end44
  %conv92 = zext i32 %1 to i64
  %call49 = call i8* @memcpy(i8* noundef %v6, i8* noundef nonnull %0, i64 noundef %conv92) #12
  %4 = load i32, i32* %zero_pos, align 4, !tbaa !42
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %v6, i64 %idx.ext
  %5 = load i32, i32* %total, align 4, !tbaa !40
  %sub = sub nsw i32 16, %5
  %conv52 = sext i32 %sub to i64
  %call53 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %conv52) #12
  %6 = load i32, i32* %total, align 4, !tbaa !40
  %7 = load i32, i32* %zero_pos, align 4, !tbaa !42
  %cmp56.not = icmp eq i32 %6, %7
  br i1 %cmp56.not, label %cleanup, label %if.then58

if.then58:                                        ; preds = %if.then47
  %idx.ext60 = sext i32 %7 to i64
  %add.ptr61 = getelementptr inbounds i8, i8* %v6, i64 %idx.ext60
  %add.ptr62 = getelementptr inbounds i8, i8* %add.ptr61, i64 16
  %idx.ext64 = sext i32 %6 to i64
  %idx.neg = sub nsw i64 0, %idx.ext64
  %add.ptr65 = getelementptr inbounds i8, i8* %add.ptr62, i64 %idx.neg
  %add.ptr70 = getelementptr inbounds %struct.IPV6_STAT, %struct.IPV6_STAT* %v6stat, i64 0, i32 0, i64 %idx.ext60
  %sub73 = sub nsw i32 %6, %7
  %conv74 = sext i32 %sub73 to i64
  %call75 = call i8* @memcpy(i8* noundef nonnull %add.ptr65, i8* noundef nonnull %add.ptr70, i64 noundef %conv74) #12
  br label %cleanup

if.else77:                                        ; preds = %if.then2, %if.end44
  %call80 = call i8* @memcpy(i8* noundef %v6, i8* noundef nonnull %0, i64 noundef 16) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else77, %if.then58, %if.then47, %if.else33, %if.then25, %if.then17, %if.end10, %if.else, %if.then2, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.then2 ], [ 0, %if.else ], [ 0, %if.end10 ], [ 0, %if.then17 ], [ 0, %if.then25 ], [ 0, %if.else33 ], [ 1, %if.then47 ], [ 1, %if.then58 ], [ 1, %if.else77 ]
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ipv4_from_asc(i8* nocapture noundef writeonly %v4, i8* noundef %in) unnamed_addr #0 {
entry:
  %a0 = alloca i32, align 4
  %a1 = alloca i32, align 4
  %a2 = alloca i32, align 4
  %a3 = alloca i32, align 4
  %n = alloca i32, align 4
  %0 = bitcast i32* %a0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  %1 = bitcast i32* %a1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #13
  %2 = bitcast i32* %a2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #13
  %3 = bitcast i32* %a3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #13
  %4 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #13
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %in, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i32* noundef nonnull %a0, i32* noundef nonnull %a1, i32* noundef nonnull %a2, i32* noundef nonnull %a3, i32* noundef nonnull %n) #12
  %cmp.not = icmp eq i32 %call, 4
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %a0, align 4, !tbaa !17
  %6 = icmp ugt i32 %5, 255
  %7 = load i32, i32* %a1, align 4
  %cmp4 = icmp slt i32 %7, 0
  %or.cond36 = select i1 %6, i1 true, i1 %cmp4
  %cmp6 = icmp sgt i32 %7, 255
  %or.cond37 = select i1 %or.cond36, i1 true, i1 %cmp6
  %8 = load i32, i32* %a2, align 4
  %cmp8 = icmp slt i32 %8, 0
  %or.cond38 = select i1 %or.cond37, i1 true, i1 %cmp8
  %cmp10 = icmp sgt i32 %8, 255
  %or.cond39 = select i1 %or.cond38, i1 true, i1 %cmp10
  %9 = load i32, i32* %a3, align 4
  %cmp12 = icmp slt i32 %9, 0
  %or.cond40 = select i1 %or.cond39, i1 true, i1 %cmp12
  %cmp14 = icmp sgt i32 %9, 255
  %or.cond41 = select i1 %or.cond40, i1 true, i1 %cmp14
  br i1 %or.cond41, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end
  %10 = load i32, i32* %n, align 4, !tbaa !17
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %idx.ext
  %11 = load i8, i8* %add.ptr, align 1, !tbaa !12
  %cmp17 = icmp eq i8 %11, 0
  br i1 %cmp17, label %if.end23, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.end16
  %conv = sext i8 %11 to i32
  %call21 = call i32 @ossl_ctype_check(i32 noundef %conv, i32 noundef 8) #12
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false19.if.end23_crit_edge

lor.lhs.false19.if.end23_crit_edge:               ; preds = %lor.lhs.false19
  %.pre = load i32, i32* %a0, align 4, !tbaa !17
  %.pre48 = load i32, i32* %a1, align 4, !tbaa !17
  %.pre49 = load i32, i32* %a2, align 4, !tbaa !17
  %.pre50 = load i32, i32* %a3, align 4, !tbaa !17
  br label %if.end23

if.end23:                                         ; preds = %lor.lhs.false19.if.end23_crit_edge, %if.end16
  %12 = phi i32 [ %.pre50, %lor.lhs.false19.if.end23_crit_edge ], [ %9, %if.end16 ]
  %13 = phi i32 [ %.pre49, %lor.lhs.false19.if.end23_crit_edge ], [ %8, %if.end16 ]
  %14 = phi i32 [ %.pre48, %lor.lhs.false19.if.end23_crit_edge ], [ %7, %if.end16 ]
  %15 = phi i32 [ %.pre, %lor.lhs.false19.if.end23_crit_edge ], [ %5, %if.end16 ]
  %conv24 = trunc i32 %15 to i8
  store i8 %conv24, i8* %v4, align 1, !tbaa !12
  %conv25 = trunc i32 %14 to i8
  %arrayidx26 = getelementptr inbounds i8, i8* %v4, i64 1
  store i8 %conv25, i8* %arrayidx26, align 1, !tbaa !12
  %conv27 = trunc i32 %13 to i8
  %arrayidx28 = getelementptr inbounds i8, i8* %v4, i64 2
  store i8 %conv27, i8* %arrayidx28, align 1, !tbaa !12
  %conv29 = trunc i32 %12 to i8
  %arrayidx30 = getelementptr inbounds i8, i8* %v4, i64 3
  store i8 %conv29, i8* %arrayidx30, align 1, !tbaa !12
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false19, %if.end, %entry, %if.end23
  %retval.0 = phi i32 [ 1, %if.end23 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %lor.lhs.false19 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509V3_NAME_from_section(%struct.X509_name_st* noundef %nm, %struct.stack_st_CONF_VALUE* noundef %dn_sk, i64 noundef %chtype) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.X509_name_st* %nm, null
  br i1 %tobool.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %dn_sk) #11
  %call165 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #12
  %cmp66 = icmp sgt i32 %call165, 0
  br i1 %cmp66, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %conv29 = trunc i64 %chtype to i32
  br label %for.body

for.cond:                                         ; preds = %for.end
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #12
  %cmp = icmp slt i32 %inc, %call1
  br i1 %cmp, label %for.body, label %cleanup, !llvm.loop !44

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %i.067 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %call3 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.067) #12
  %name = getelementptr inbounds i8, i8* %call3, i64 8
  %0 = bitcast i8* %name to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !10
  br label %for.cond4

for.cond4:                                        ; preds = %lor.rhs, %for.body
  %p.0 = phi i8* [ %1, %for.body ], [ %incdec.ptr21, %lor.rhs ]
  %2 = load i8, i8* %p.0, align 1, !tbaa !12
  switch i8 %2, label %lor.rhs [
    i8 0, label %for.end
    i8 58, label %if.then16
    i8 44, label %if.then16
    i8 46, label %if.then16
  ]

lor.rhs:                                          ; preds = %for.cond4
  %incdec.ptr21 = getelementptr inbounds i8, i8* %p.0, i64 1
  br label %for.cond4, !llvm.loop !45

if.then16:                                        ; preds = %for.cond4, %for.cond4, %for.cond4
  %incdec.ptr = getelementptr inbounds i8, i8* %p.0, i64 1
  %3 = load i8, i8* %incdec.ptr, align 1, !tbaa !12
  %tobool17.not = icmp eq i8 %3, 0
  %spec.select = select i1 %tobool17.not, i8* %1, i8* %incdec.ptr
  br label %for.end

for.end:                                          ; preds = %for.cond4, %if.then16
  %type.0 = phi i8* [ %spec.select, %if.then16 ], [ %1, %for.cond4 ]
  %4 = load i8, i8* %type.0, align 1, !tbaa !12
  %cmp23 = icmp eq i8 %4, 43
  %mval.0 = sext i1 %cmp23 to i32
  %type.1.idx = zext i1 %cmp23 to i64
  %type.1 = getelementptr i8, i8* %type.0, i64 %type.1.idx
  %value = getelementptr inbounds i8, i8* %call3, i64 16
  %5 = bitcast i8* %value to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !11
  %call30 = tail call i32 @X509_NAME_add_entry_by_txt(%struct.X509_name_st* noundef nonnull %nm, i8* noundef nonnull %type.1, i32 noundef %conv29, i8* noundef %6, i32 noundef -1, i32 noundef -1, i32 noundef %mval.0) #12
  %tobool31.not = icmp eq i32 %call30, 0
  %inc = add nuw nsw i32 %i.067, 1
  br i1 %tobool31.not, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.end, %for.cond, %for.cond.preheader, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %for.cond.preheader ], [ 0, %for.end ], [ 1, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @X509_NAME_add_entry_by_txt(%struct.X509_name_st* noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_strndup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i8* @BN_bn2dec(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i8* @BN_bn2hex(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i64 @OPENSSL_strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i64 @OPENSSL_strlcat(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ossl_ctype_check(i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @X509_NAME_get_index_by_NID(%struct.X509_name_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare %struct.X509_name_entry_st* @X509_NAME_get_entry(%struct.X509_name_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @X509_NAME_ENTRY_get_data(%struct.X509_name_entry_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_GENERAL_NAME* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal i32 @sk_strcmp(i8** nocapture noundef readonly %a, i8** nocapture noundef readonly %b) #5 {
entry:
  %0 = load i8*, i8** %a, align 8, !tbaa !4
  %1 = load i8*, i8** %b, align 8, !tbaa !4
  %call = tail call i32 @strcmp(i8* noundef %0, i8* noundef %1) #10
  ret i32 %call
}

declare i32 @OPENSSL_sk_find(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind uwtable
define internal i32 @equal_email(i8* noundef %a, i64 noundef %a_len, i8* noundef %b, i64 noundef %b_len, i32 noundef %unused_flags) #6 {
entry:
  %cmp.not = icmp eq i64 %a_len, %b_len
  br i1 %cmp.not, label %while.cond, label %cleanup

while.cond:                                       ; preds = %entry, %lor.lhs.false
  %i.0 = phi i64 [ %dec, %lor.lhs.false ], [ %a_len, %entry ]
  %cmp1.not = icmp eq i64 %i.0, 0
  br i1 %cmp1.not, label %while.end.thread, label %while.body

while.body:                                       ; preds = %while.cond
  %dec = add i64 %i.0, -1
  %arrayidx = getelementptr inbounds i8, i8* %a, i64 %dec
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %cmp2 = icmp eq i8 %0, 64
  br i1 %cmp2, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %arrayidx4 = getelementptr inbounds i8, i8* %b, i64 %dec
  %1 = load i8, i8* %arrayidx4, align 1, !tbaa !12
  %cmp6 = icmp eq i8 %1, 64
  br i1 %cmp6, label %if.then8, label %while.cond, !llvm.loop !46

if.then8:                                         ; preds = %lor.lhs.false, %while.body
  %arrayidx.le = getelementptr inbounds i8, i8* %a, i64 %dec
  %sub = sub i64 %a_len, %dec
  %add.ptr9 = getelementptr inbounds i8, i8* %b, i64 %dec
  %call = tail call i32 @equal_nocase(i8* noundef nonnull %arrayidx.le, i64 noundef %sub, i8* noundef %add.ptr9, i64 noundef %sub, i32 noundef 0) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %while.end

while.end:                                        ; preds = %if.then8
  %cmp14 = icmp eq i64 %dec, 0
  br i1 %cmp14, label %while.end.thread, label %2

while.end.thread:                                 ; preds = %while.cond, %while.end
  br label %2

2:                                                ; preds = %while.end, %while.end.thread
  %3 = phi i64 [ %a_len, %while.end.thread ], [ %dec, %while.end ]
  %call18 = tail call i32 @equal_case(i8* noundef %a, i64 noundef %3, i8* noundef %b, i64 noundef %3, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %entry, %2
  %retval.0 = phi i32 [ %call18, %2 ], [ 0, %entry ], [ 0, %if.then8 ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal i32 @equal_nocase(i8* noundef %pattern, i64 noundef %pattern_len, i8* nocapture noundef readonly %subject, i64 noundef %subject_len, i32 noundef %flags) #7 {
entry:
  %pattern.addr = alloca i8*, align 8
  %pattern_len.addr = alloca i64, align 8
  store i8* %pattern, i8** %pattern.addr, align 8, !tbaa !4
  store i64 %pattern_len, i64* %pattern_len.addr, align 8, !tbaa !47
  call fastcc void @skip_prefix(i8** noundef nonnull %pattern.addr, i64* noundef nonnull %pattern_len.addr, i64 noundef %subject_len, i32 noundef %flags) #11
  %0 = load i64, i64* %pattern_len.addr, align 8, !tbaa !47
  %cmp.not = icmp eq i64 %0, %subject_len
  br i1 %cmp.not, label %while.cond.preheader, label %return

while.cond.preheader:                             ; preds = %entry
  %pattern.addr.promoted = load i8*, i8** %pattern.addr, align 8, !tbaa !4
  %cmp1.not61 = icmp eq i64 %subject_len, 0
  br i1 %cmp1.not61, label %return.loopexit, label %while.body.preheader

while.body.preheader:                             ; preds = %while.cond.preheader
  %scevgep = getelementptr i8, i8* %pattern.addr.promoted, i64 %subject_len
  br label %while.body

while.condthread-pre-split:                       ; preds = %if.then10, %if.end5
  %incdec.ptr = getelementptr inbounds i8, i8* %incdec.ptr5863, i64 1
  %incdec.ptr41 = getelementptr inbounds i8, i8* %subject.addr.065, i64 1
  %dec = add i64 %1, -1
  %cmp1.not = icmp eq i64 %dec, 0
  br i1 %cmp1.not, label %return.loopexit, label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.condthread-pre-split
  %subject.addr.065 = phi i8* [ %incdec.ptr41, %while.condthread-pre-split ], [ %subject, %while.body.preheader ]
  %1 = phi i64 [ %dec, %while.condthread-pre-split ], [ %subject_len, %while.body.preheader ]
  %incdec.ptr5863 = phi i8* [ %incdec.ptr, %while.condthread-pre-split ], [ %pattern.addr.promoted, %while.body.preheader ]
  %2 = load i8, i8* %incdec.ptr5863, align 1, !tbaa !12
  %3 = load i8, i8* %subject.addr.065, align 1, !tbaa !12
  %cmp2 = icmp eq i8 %2, 0
  br i1 %cmp2, label %return.loopexit, label %if.end5

if.end5:                                          ; preds = %while.body
  %cmp8.not = icmp eq i8 %2, %3
  br i1 %cmp8.not, label %while.condthread-pre-split, label %if.then10

if.then10:                                        ; preds = %if.end5
  %4 = add i8 %2, -65
  %5 = icmp ult i8 %4, 26
  %add = add i8 %2, 32
  %spec.select = select i1 %5, i8 %add, i8 %2
  %6 = add i8 %3, -65
  %7 = icmp ult i8 %6, 26
  %add31 = add i8 %3, 32
  %r.0 = select i1 %7, i8 %add31, i8 %3
  %cmp36.not = icmp eq i8 %spec.select, %r.0
  br i1 %cmp36.not, label %while.condthread-pre-split, label %return.loopexit

return.loopexit:                                  ; preds = %if.then10, %while.body, %while.condthread-pre-split, %while.cond.preheader
  %dec60.lcssa = phi i64 [ 0, %while.cond.preheader ], [ 0, %while.condthread-pre-split ], [ %1, %while.body ], [ %1, %if.then10 ]
  %incdec.ptr59 = phi i8* [ %pattern.addr.promoted, %while.cond.preheader ], [ %scevgep, %while.condthread-pre-split ], [ %incdec.ptr5863, %while.body ], [ %incdec.ptr5863, %if.then10 ]
  %retval.2.ph = phi i32 [ 1, %while.cond.preheader ], [ 1, %while.condthread-pre-split ], [ 0, %while.body ], [ 0, %if.then10 ]
  store i8* %incdec.ptr59, i8** %pattern.addr, align 8, !tbaa !4
  store i64 %dec60.lcssa, i64* %pattern_len.addr, align 8, !tbaa !47
  br label %return

return:                                           ; preds = %return.loopexit, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ %retval.2.ph, %return.loopexit ]
  ret i32 %retval.2
}

; Function Attrs: nofree noinline nounwind uwtable
define internal i32 @equal_wildcard(i8* noundef %pattern, i64 noundef %pattern_len, i8* noundef %subject, i64 noundef %subject_len, i32 noundef %flags) #6 {
entry:
  %cmp = icmp ugt i64 %subject_len, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = load i8, i8* %subject, align 1, !tbaa !12
  %cmp1 = icmp eq i8 %0, 46
  br i1 %cmp1, label %if.then5, label %if.end

if.end:                                           ; preds = %entry, %land.lhs.true
  %call = tail call fastcc i8* @valid_star(i8* noundef %pattern, i64 noundef %pattern_len, i32 noundef %flags) #11
  %cmp3 = icmp eq i8* %call, null
  br i1 %cmp3, label %if.then5, label %if.end7

if.then5:                                         ; preds = %land.lhs.true, %if.end
  %call6 = tail call i32 @equal_nocase(i8* noundef %pattern, i64 noundef %pattern_len, i8* noundef %subject, i64 noundef %subject_len, i32 noundef %flags) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %pattern to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 1
  %add.ptr8 = getelementptr inbounds i8, i8* %pattern, i64 %pattern_len
  %sub.ptr.lhs.cast9 = ptrtoint i8* %add.ptr8 to i64
  %1 = xor i64 %sub.ptr.lhs.cast, -1
  %sub = add i64 %1, %sub.ptr.lhs.cast9
  %call12 = tail call fastcc i32 @wildcard_match(i8* noundef %pattern, i64 noundef %sub.ptr.sub, i8* noundef nonnull %add.ptr, i64 noundef %sub, i8* noundef %subject, i64 noundef %subject_len, i32 noundef %flags) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5
  %retval.0 = phi i32 [ %call6, %if.then5 ], [ %call12, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind uwtable
define internal i32 @equal_case(i8* noundef %pattern, i64 noundef %pattern_len, i8* noundef readonly %subject, i64 noundef %subject_len, i32 noundef %flags) #6 {
entry:
  %pattern.addr = alloca i8*, align 8
  %pattern_len.addr = alloca i64, align 8
  store i8* %pattern, i8** %pattern.addr, align 8, !tbaa !4
  store i64 %pattern_len, i64* %pattern_len.addr, align 8, !tbaa !47
  call fastcc void @skip_prefix(i8** noundef nonnull %pattern.addr, i64* noundef nonnull %pattern_len.addr, i64 noundef %subject_len, i32 noundef %flags) #11
  %0 = load i64, i64* %pattern_len.addr, align 8, !tbaa !47
  %cmp.not = icmp eq i64 %0, %subject_len
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %pattern.addr, align 8, !tbaa !4
  %call = tail call i32 @memcmp(i8* noundef %1, i8* noundef %subject, i64 noundef %subject_len) #10
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %lnot.ext, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_check_string(%struct.asn1_string_st* noundef %a, i32 noundef %cmp_type, i32 (i8*, i64, i8*, i64, i32)* nocapture noundef readonly %equal, i32 noundef %flags, i8* noundef %b, i64 noundef %blen, i8** noundef writeonly %peername) unnamed_addr #0 {
entry:
  %astr = alloca i8*, align 8
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 2
  %0 = load i8*, i8** %data, align 8, !tbaa !30
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %cleanup48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 0
  %1 = load i32, i32* %length, align 8, !tbaa !31
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %cleanup48, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %cmp = icmp sgt i32 %cmp_type, 0
  br i1 %cmp, label %if.then2, label %if.else30

if.then2:                                         ; preds = %if.end
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 1
  %2 = load i32, i32* %type, align 4, !tbaa !13
  %cmp3.not = icmp eq i32 %2, %cmp_type
  br i1 %cmp3.not, label %if.end5, label %cleanup48

if.end5:                                          ; preds = %if.then2
  %cmp6 = icmp eq i32 %cmp_type, 22
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  %conv = sext i32 %1 to i64
  %call = tail call i32 %equal(i8* noundef nonnull %0, i64 noundef %conv, i8* noundef %b, i64 noundef %blen, i32 noundef %flags) #12, !callees !48
  br label %if.end19

if.else:                                          ; preds = %if.end5
  %conv11 = trunc i64 %blen to i32
  %cmp12 = icmp eq i32 %1, %conv11
  br i1 %cmp12, label %land.lhs.true, label %cleanup48

land.lhs.true:                                    ; preds = %if.else
  %call15 = tail call i32 @memcmp(i8* noundef nonnull %0, i8* noundef %b, i64 noundef %blen) #10
  %tobool16.not = icmp eq i32 %call15, 0
  %spec.select = zext i1 %tobool16.not to i32
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true, %if.then7
  %rv.0 = phi i32 [ %call, %if.then7 ], [ %spec.select, %land.lhs.true ]
  %cmp20 = icmp sgt i32 %rv.0, 0
  %tobool23 = icmp ne i8** %peername, null
  %or.cond = and i1 %tobool23, %cmp20
  br i1 %or.cond, label %if.then24, label %cleanup48

if.then24:                                        ; preds = %if.end19
  %3 = load i8*, i8** %data, align 8, !tbaa !30
  %4 = load i32, i32* %length, align 8, !tbaa !31
  %conv27 = sext i32 %4 to i64
  %call28 = tail call i8* @CRYPTO_strndup(i8* noundef %3, i64 noundef %conv27, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 837) #12
  store i8* %call28, i8** %peername, align 8, !tbaa !4
  br label %cleanup48

if.else30:                                        ; preds = %if.end
  %5 = bitcast i8** %astr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #13
  %call31 = call i32 @ASN1_STRING_to_UTF8(i8** noundef nonnull %astr, %struct.asn1_string_st* noundef nonnull %a) #12
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %cleanup.thread, label %if.end35

cleanup.thread:                                   ; preds = %if.else30
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #13
  br label %cleanup48

if.end35:                                         ; preds = %if.else30
  %6 = load i8*, i8** %astr, align 8, !tbaa !4
  %conv3683 = zext i32 %call31 to i64
  %call37 = call i32 %equal(i8* noundef %6, i64 noundef %conv3683, i8* noundef %b, i64 noundef %blen, i32 noundef %flags) #12, !callees !48
  %cmp38 = icmp sgt i32 %call37, 0
  %tobool41 = icmp ne i8** %peername, null
  %or.cond49 = and i1 %tobool41, %cmp38
  br i1 %or.cond49, label %if.then42, label %cleanup

if.then42:                                        ; preds = %if.end35
  %7 = load i8*, i8** %astr, align 8, !tbaa !4
  %call44 = call i8* @CRYPTO_strndup(i8* noundef %7, i64 noundef %conv3683, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 851) #12
  store i8* %call44, i8** %peername, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then42
  %8 = load i8*, i8** %astr, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %8, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 852) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #13
  br label %cleanup48

cleanup48:                                        ; preds = %if.else, %if.then24, %if.end19, %cleanup, %cleanup.thread, %if.then2, %entry, %lor.lhs.false
  %retval.1 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.then2 ], [ -1, %cleanup.thread ], [ %rv.0, %if.then24 ], [ %rv.0, %if.end19 ], [ %call37, %cleanup ], [ 0, %if.else ]
  ret i32 %retval.1
}

declare void @GENERAL_NAMES_free(%struct.stack_st_GENERAL_NAME* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @skip_prefix(i8** nocapture noundef %p, i64* nocapture noundef %plen, i64 noundef %subject_len, i32 noundef %flags) unnamed_addr #7 {
entry:
  %0 = load i8*, i8** %p, align 8, !tbaa !4
  %1 = load i64, i64* %plen, align 8, !tbaa !47
  %and = and i32 %flags, 32768
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %cmp126 = icmp ugt i64 %1, %subject_len
  br i1 %cmp126, label %land.rhs.lr.ph, label %while.end

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %and2 = and i32 %flags, 16
  %tobool3.not = icmp ne i32 %and2, 0
  %2 = sub i64 %1, %subject_len
  %scevgep = getelementptr i8, i8* %0, i64 %2
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %if.end8
  %pattern_len.028 = phi i64 [ %1, %land.rhs.lr.ph ], [ %dec, %if.end8 ]
  %pattern.027 = phi i8* [ %0, %land.rhs.lr.ph ], [ %incdec.ptr, %if.end8 ]
  %3 = load i8, i8* %pattern.027, align 1, !tbaa !12
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %cmp5 = icmp eq i8 %3, 46
  %or.cond = select i1 %tobool3.not, i1 %cmp5, i1 false
  br i1 %or.cond, label %while.end, label %if.end8

if.end8:                                          ; preds = %while.body
  %incdec.ptr = getelementptr inbounds i8, i8* %pattern.027, i64 1
  %dec = add i64 %pattern_len.028, -1
  %cmp1 = icmp ugt i64 %dec, %subject_len
  br i1 %cmp1, label %land.rhs, label %if.then11, !llvm.loop !49

while.end:                                        ; preds = %land.rhs, %while.body, %while.cond.preheader
  %pattern.0.lcssa = phi i8* [ %0, %while.cond.preheader ], [ %pattern.027, %while.body ], [ %pattern.027, %land.rhs ]
  %pattern_len.0.lcssa = phi i64 [ %1, %while.cond.preheader ], [ %pattern_len.028, %while.body ], [ %pattern_len.028, %land.rhs ]
  %cmp9 = icmp eq i64 %pattern_len.0.lcssa, %subject_len
  br i1 %cmp9, label %if.then11, label %cleanup

if.then11:                                        ; preds = %if.end8, %while.end
  %pattern.0.lcssa37 = phi i8* [ %pattern.0.lcssa, %while.end ], [ %scevgep, %if.end8 ]
  store i8* %pattern.0.lcssa37, i8** %p, align 8, !tbaa !4
  store i64 %subject_len, i64* %plen, align 8, !tbaa !47
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then11, %entry
  ret void
}

; Function Attrs: nofree noinline nounwind readonly uwtable
define internal fastcc i8* @valid_star(i8* noundef readonly %p, i64 noundef %len, i32 noundef %flags) unnamed_addr #8 {
entry:
  %cmp183.not = icmp eq i64 %len, 0
  br i1 %cmp183.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %sub = add i64 %len, -1
  %and16 = and i32 %flags, 4
  %tobool17.not = icmp eq i32 %and16, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %star.0189 = phi i8* [ null, %for.body.lr.ph ], [ %star.2, %for.inc ]
  %dots.0188 = phi i32 [ 0, %for.body.lr.ph ], [ %dots.1, %for.inc ]
  %state.0187 = phi i32 [ 1, %for.body.lr.ph ], [ %state.3, %for.inc ]
  %i.0184 = phi i64 [ 0, %for.body.lr.ph ], [ %inc103, %for.inc ]
  %arrayidx = getelementptr inbounds i8, i8* %p, i64 %i.0184
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %cmp1 = icmp eq i8 %0, 42
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %and = and i32 %state.0187, 1
  %cmp3 = icmp eq i64 %i.0184, %sub
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then
  %add = add nuw i64 %i.0184, 1
  %arrayidx5 = getelementptr inbounds i8, i8* %p, i64 %add
  %1 = load i8, i8* %arrayidx5, align 1, !tbaa !12
  %cmp7 = icmp eq i8 %1, 46
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then
  %2 = phi i1 [ true, %if.then ], [ %cmp7, %lor.rhs ]
  %cmp9.not = icmp eq i8* %star.0189, null
  br i1 %cmp9.not, label %lor.lhs.false, label %cleanup112

lor.lhs.false:                                    ; preds = %lor.end
  %and11 = and i32 %state.0187, 8
  %cmp12 = icmp ne i32 %and11, 0
  %tobool = icmp ne i32 %dots.0188, 0
  %or.cond = select i1 %cmp12, i1 true, i1 %tobool
  br i1 %or.cond, label %cleanup112, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %tobool23 = icmp ne i32 %and, 0
  br i1 %tobool17.not, label %if.end22, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %or.cond116 = select i1 %tobool23, i1 %2, i1 false
  br i1 %or.cond116, label %cleanup, label %cleanup112

if.end22:                                         ; preds = %if.end
  %or.cond117 = select i1 %tobool23, i1 true, i1 %2
  br i1 %or.cond117, label %cleanup, label %cleanup112

cleanup:                                          ; preds = %land.lhs.true, %if.end22
  %and29 = and i32 %state.0187, -2
  br label %for.inc

if.else:                                          ; preds = %for.body
  %3 = and i8 %0, -33
  %4 = add i8 %3, -65
  %5 = icmp ult i8 %4, 26
  %6 = add i8 %0, -48
  %7 = icmp ult i8 %6, 10
  %or.cond179 = select i1 %5, i1 true, i1 %7
  br i1 %or.cond179, label %if.then60, label %if.else75

if.then60:                                        ; preds = %if.else
  %and61 = and i32 %state.0187, 1
  %cmp62.not = icmp ne i32 %and61, 0
  %sub65 = sub i64 %len, %i.0184
  %cmp66 = icmp ugt i64 %sub65, 3
  %or.cond170 = select i1 %cmp62.not, i1 %cmp66, i1 false
  br i1 %or.cond170, label %land.lhs.true68, label %if.end73

land.lhs.true68:                                  ; preds = %if.then60
  %call = tail call i32 @strncasecmp(i8* noundef nonnull %arrayidx, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i64 noundef 4) #10
  %cmp70 = icmp eq i32 %call, 0
  %spec.select = select i1 %cmp70, i32 8, i32 %state.0187
  br label %if.end73

if.end73:                                         ; preds = %land.lhs.true68, %if.then60
  %state.2 = phi i32 [ %state.0187, %if.then60 ], [ %spec.select, %land.lhs.true68 ]
  %and74 = and i32 %state.2, -6
  br label %for.inc

if.else75:                                        ; preds = %if.else
  switch i8 %0, label %cleanup112 [
    i8 46, label %if.then80
    i8 45, label %if.then91
  ]

if.then80:                                        ; preds = %if.else75
  %and81 = and i32 %state.0187, 5
  %cmp82.not = icmp eq i32 %and81, 0
  br i1 %cmp82.not, label %if.end85, label %cleanup112

if.end85:                                         ; preds = %if.then80
  %inc = add nsw i32 %dots.0188, 1
  br label %for.inc

if.then91:                                        ; preds = %if.else75
  %and92 = and i32 %state.0187, 1
  %cmp93.not = icmp eq i32 %and92, 0
  br i1 %cmp93.not, label %if.end96, label %cleanup112

if.end96:                                         ; preds = %if.then91
  %or97 = or i32 %state.0187, 4
  br label %for.inc

for.inc:                                          ; preds = %cleanup, %if.end85, %if.end96, %if.end73
  %state.3 = phi i32 [ %and29, %cleanup ], [ %and74, %if.end73 ], [ 1, %if.end85 ], [ %or97, %if.end96 ]
  %dots.1 = phi i32 [ 0, %cleanup ], [ %dots.0188, %if.end73 ], [ %inc, %if.end85 ], [ %dots.0188, %if.end96 ]
  %star.2 = phi i8* [ %arrayidx, %cleanup ], [ %star.0189, %if.end73 ], [ %star.0189, %if.end85 ], [ %star.0189, %if.end96 ]
  %inc103 = add nuw i64 %i.0184, 1
  %exitcond.not = icmp eq i64 %inc103, %len
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !50

for.end:                                          ; preds = %for.inc, %entry
  %state.0.lcssa = phi i32 [ 1, %entry ], [ %state.3, %for.inc ]
  %dots.0.lcssa = phi i32 [ 0, %entry ], [ %dots.1, %for.inc ]
  %star.0.lcssa = phi i8* [ null, %entry ], [ %star.2, %for.inc ]
  %and104 = and i32 %state.0.lcssa, 5
  %cmp105 = icmp ne i32 %and104, 0
  %cmp108 = icmp slt i32 %dots.0.lcssa, 2
  %or.cond118 = select i1 %cmp105, i1 true, i1 %cmp108
  %.star.0 = select i1 %or.cond118, i8* null, i8* %star.0.lcssa
  br label %cleanup112

cleanup112:                                       ; preds = %if.end22, %land.lhs.true, %lor.end, %lor.lhs.false, %if.else75, %if.then91, %if.then80, %for.end
  %retval.3 = phi i8* [ %.star.0, %for.end ], [ null, %if.then80 ], [ null, %if.then91 ], [ null, %if.else75 ], [ null, %lor.lhs.false ], [ null, %lor.end ], [ null, %land.lhs.true ], [ null, %if.end22 ]
  ret i8* %retval.3
}

; Function Attrs: nofree noinline nounwind uwtable
define internal fastcc i32 @wildcard_match(i8* noundef %prefix, i64 noundef %prefix_len, i8* nocapture noundef readonly %suffix, i64 noundef %suffix_len, i8* noundef %subject, i64 noundef %subject_len, i32 noundef %flags) unnamed_addr #6 {
entry:
  %add = add i64 %suffix_len, %prefix_len
  %cmp = icmp ugt i64 %add, %subject_len
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @equal_nocase(i8* noundef %prefix, i64 noundef %prefix_len, i8* noundef %subject, i64 noundef %prefix_len, i32 noundef %flags) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %add.ptr = getelementptr inbounds i8, i8* %subject, i64 %prefix_len
  %sub = sub i64 %subject_len, %suffix_len
  %add.ptr3 = getelementptr inbounds i8, i8* %subject, i64 %sub
  %call4 = tail call i32 @equal_nocase(i8* noundef %add.ptr3, i64 noundef %suffix_len, i8* noundef %suffix, i64 noundef %suffix_len, i32 noundef %flags) #11
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end2
  %cmp8 = icmp eq i64 %prefix_len, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %if.end7
  %0 = load i8, i8* %suffix, align 1, !tbaa !12
  %cmp9 = icmp eq i8 %0, 46
  br i1 %cmp9, label %if.then11, label %if.end19

if.then11:                                        ; preds = %land.lhs.true
  %cmp12 = icmp eq i64 %sub, 0
  br i1 %cmp12, label %cleanup, label %if.end19.thread

if.end19.thread:                                  ; preds = %if.then11
  %and = and i32 %flags, 8
  %tobool16.not = icmp ne i32 %and, 0
  br label %if.end29

if.end19:                                         ; preds = %land.lhs.true, %if.end7
  %cmp22 = icmp ugt i64 %subject_len, 3
  br i1 %cmp22, label %land.lhs.true24, label %if.end29

land.lhs.true24:                                  ; preds = %if.end19
  %call25 = tail call i32 @strncasecmp(i8* noundef %subject, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i64 noundef 4) #10
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %cleanup, label %if.end29

if.end29:                                         ; preds = %if.end19.thread, %land.lhs.true24, %if.end19
  %tobool68.not122 = phi i1 [ %tobool16.not, %if.end19.thread ], [ false, %land.lhs.true24 ], [ false, %if.end19 ]
  %add.ptr30 = getelementptr inbounds i8, i8* %add.ptr, i64 1
  %cmp31 = icmp eq i8* %add.ptr3, %add.ptr30
  br i1 %cmp31, label %land.lhs.true33, label %if.end38

land.lhs.true33:                                  ; preds = %if.end29
  %1 = load i8, i8* %add.ptr, align 1, !tbaa !12
  %cmp35 = icmp eq i8 %1, 42
  %cmp39.not125 = icmp eq i64 %sub, %prefix_len
  %or.cond128 = or i1 %cmp35, %cmp39.not125
  br i1 %or.cond128, label %cleanup, label %for.body.preheader

if.end38:                                         ; preds = %if.end29
  %cmp39.not125.old = icmp eq i64 %sub, %prefix_len
  br i1 %cmp39.not125.old, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end38, %land.lhs.true33
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %p.0126 = phi i8* [ %incdec.ptr, %for.inc ], [ %add.ptr, %for.body.preheader ]
  %2 = load i8, i8* %p.0126, align 1, !tbaa !12
  %3 = add i8 %2, -48
  %4 = icmp ult i8 %3, 10
  %5 = add i8 %2, -65
  %6 = icmp ult i8 %5, 26
  %or.cond = or i1 %4, %6
  br i1 %or.cond, label %for.inc, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %for.body
  %7 = add i8 %2, -97
  %8 = icmp ult i8 %7, 26
  %cmp65 = icmp eq i8 %2, 45
  %or.cond123 = or i1 %cmp65, %8
  br i1 %or.cond123, label %for.inc, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %lor.lhs.false55
  %cmp71 = icmp eq i8 %2, 46
  %or.cond117 = select i1 %tobool68.not122, i1 %cmp71, i1 false
  br i1 %or.cond117, label %for.inc, label %cleanup

for.inc:                                          ; preds = %lor.lhs.false67, %lor.lhs.false55, %for.body
  %incdec.ptr = getelementptr inbounds i8, i8* %p.0126, i64 1
  %cmp39.not = icmp eq i8* %incdec.ptr, %add.ptr3
  br i1 %cmp39.not, label %cleanup, label %for.body, !llvm.loop !51

cleanup:                                          ; preds = %lor.lhs.false67, %for.inc, %if.end38, %land.lhs.true33, %land.lhs.true24, %if.then11, %if.end2, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end2 ], [ 0, %if.then11 ], [ 0, %land.lhs.true24 ], [ 1, %land.lhs.true33 ], [ 1, %if.end38 ], [ 0, %lor.lhs.false67 ], [ 1, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncasecmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @ASN1_STRING_to_UTF8(i8** noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) local_unnamed_addr #9

declare i32 @CONF_parse_list(i8* noundef, i32 noundef, i32 noundef, i32 (i8*, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @ipv6_cb(i8* noundef %elem, i32 noundef %len, i8* nocapture noundef %usr) #0 {
entry:
  %total = getelementptr inbounds i8, i8* %usr, i64 16
  %0 = bitcast i8* %total to i32*
  %1 = load i32, i32* %0, align 4, !tbaa !40
  %cmp = icmp eq i32 %1, 16
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %len, 0
  br i1 %cmp1, label %if.then2, label %if.else13

if.then2:                                         ; preds = %if.end
  %zero_pos = getelementptr inbounds i8, i8* %usr, i64 20
  %2 = bitcast i8* %zero_pos to i32*
  %3 = load i32, i32* %2, align 4, !tbaa !42
  %cmp3 = icmp eq i32 %3, -1
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then2
  store i32 %1, i32* %2, align 4, !tbaa !42
  br label %if.end12

if.else:                                          ; preds = %if.then2
  %cmp9.not = icmp eq i32 %3, %1
  br i1 %cmp9.not, label %if.end12, label %cleanup

if.end12:                                         ; preds = %if.else, %if.then4
  %zero_cnt = getelementptr inbounds i8, i8* %usr, i64 24
  %4 = bitcast i8* %zero_cnt to i32*
  br label %cleanup.sink.split

if.else13:                                        ; preds = %if.end
  %cmp14 = icmp sgt i32 %len, 4
  br i1 %cmp14, label %if.then15, label %if.else27

if.then15:                                        ; preds = %if.else13
  %cmp17 = icmp sgt i32 %1, 12
  br i1 %cmp17, label %cleanup, label %if.end19

if.end19:                                         ; preds = %if.then15
  %idxprom61 = zext i32 %len to i64
  %arrayidx = getelementptr inbounds i8, i8* %elem, i64 %idxprom61
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end21, label %cleanup

if.end21:                                         ; preds = %if.end19
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %usr, i64 %idx.ext
  %call = tail call fastcc i32 @ipv4_from_asc(i8* noundef %add.ptr, i8* noundef nonnull %elem) #11
  %tobool23.not = icmp eq i32 %call, 0
  br i1 %tobool23.not, label %cleanup, label %cleanup.sink.split

if.else27:                                        ; preds = %if.else13
  %idx.ext31 = sext i32 %1 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %usr, i64 %idx.ext31
  %call33 = tail call fastcc i32 @ipv6_hex(i8* noundef %add.ptr32, i8* noundef %elem, i32 noundef %len) #11
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %cleanup, label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else27, %if.end21, %if.end12
  %.sink64 = phi i32* [ %4, %if.end12 ], [ %0, %if.end21 ], [ %0, %if.else27 ]
  %.sink63 = phi i32 [ 1, %if.end12 ], [ 4, %if.end21 ], [ 2, %if.else27 ]
  %6 = load i32, i32* %.sink64, align 4, !tbaa !17
  %inc = add nsw i32 %6, %.sink63
  store i32 %inc, i32* %.sink64, align 4, !tbaa !17
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else27, %if.end21, %if.end19, %if.then15, %if.else, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.else ], [ 0, %if.then15 ], [ 0, %if.end19 ], [ 0, %if.end21 ], [ 0, %if.else27 ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ipv6_hex(i8* nocapture noundef writeonly %out, i8* nocapture noundef readonly %in, i32 noundef %inlen) unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %inlen, 4
  br i1 %cmp, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %tobool.not20 = icmp eq i32 %inlen, 0
  br i1 %tobool.not20, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %if.end3
  %dec23.in = phi i32 [ %dec23, %if.end3 ], [ %inlen, %while.cond.preheader ]
  %num.022 = phi i32 [ %or, %if.end3 ], [ 0, %while.cond.preheader ]
  %in.addr.021 = phi i8* [ %incdec.ptr, %if.end3 ], [ %in, %while.cond.preheader ]
  %dec23 = add nsw i32 %dec23.in, -1
  %0 = load i8, i8* %in.addr.021, align 1, !tbaa !12
  %call = tail call i32 @OPENSSL_hexchar2int(i8 noundef zeroext %0) #12
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %while.body
  %shl = shl i32 %num.022, 4
  %incdec.ptr = getelementptr inbounds i8, i8* %in.addr.021, i64 1
  %sext = shl i32 %call, 24
  %conv4 = ashr exact i32 %sext, 24
  %or = or i32 %conv4, %shl
  %tobool.not = icmp eq i32 %dec23, 0
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !52

while.end:                                        ; preds = %if.end3, %while.cond.preheader
  %num.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %or, %if.end3 ]
  %shr = lshr i32 %num.0.lcssa, 8
  %conv5 = trunc i32 %shr to i8
  store i8 %conv5, i8* %out, align 1, !tbaa !12
  %conv6 = trunc i32 %num.0.lcssa to i8
  %arrayidx7 = getelementptr inbounds i8, i8* %out, i64 1
  store i8 %conv6, i8* %arrayidx7, align 1, !tbaa !12
  br label %cleanup

cleanup:                                          ; preds = %while.body, %entry, %while.end
  %retval.0 = phi i32 [ 1, %while.end ], [ 0, %entry ], [ 0, %while.body ]
  ret i32 %retval.0
}

declare i32 @OPENSSL_hexchar2int(i8 noundef zeroext) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nounwind }

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
!8 = !{!9, !5, i64 0}
!9 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16}
!10 = !{!9, !5, i64 8}
!11 = !{!9, !5, i64 16}
!12 = !{!6, !6, i64 0}
!13 = !{!14, !15, i64 4}
!14 = !{!"asn1_string_st", !15, i64 0, !15, i64 4, !5, i64 8, !16, i64 16}
!15 = !{!"int", !6, i64 0}
!16 = !{!"long", !6, i64 0}
!17 = !{!15, !15, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !19}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !19}
!23 = !{!24, !15, i64 0}
!24 = !{!"GENERAL_NAME_st", !15, i64 0, !6, i64 8}
!25 = distinct !{!25, !19}
!26 = !{!27, !5, i64 0}
!27 = !{!"ACCESS_DESCRIPTION_st", !5, i64 0, !5, i64 8}
!28 = !{!27, !5, i64 8}
!29 = distinct !{!29, !19}
!30 = !{!14, !5, i64 8}
!31 = !{!14, !15, i64 0}
!32 = !{!33, !5, i64 0}
!33 = !{!"otherName_st", !5, i64 0, !5, i64 8}
!34 = !{!33, !5, i64 8}
!35 = !{!36, !15, i64 0}
!36 = !{!"asn1_type_st", !15, i64 0, !6, i64 8}
!37 = distinct !{!37, !19}
!38 = distinct !{!38, !19}
!39 = distinct !{!39, !19}
!40 = !{!41, !15, i64 16}
!41 = !{!"", !6, i64 0, !15, i64 16, !15, i64 20, !15, i64 24}
!42 = !{!41, !15, i64 20}
!43 = !{!41, !15, i64 24}
!44 = distinct !{!44, !19}
!45 = distinct !{!45, !19}
!46 = distinct !{!46, !19}
!47 = !{!16, !16, i64 0}
!48 = !{i32 (i8*, i64, i8*, i64, i32)* @equal_case, i32 (i8*, i64, i8*, i64, i32)* @equal_email, i32 (i8*, i64, i8*, i64, i32)* @equal_nocase, i32 (i8*, i64, i8*, i64, i32)* @equal_wildcard}
!49 = distinct !{!49, !19}
!50 = distinct !{!50, !19}
!51 = distinct !{!51, !19}
!52 = distinct !{!52, !19}
