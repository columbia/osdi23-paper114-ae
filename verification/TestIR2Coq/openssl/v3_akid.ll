; ModuleID = 'crypto/x509/v3_akid.c'
source_filename = "crypto/x509/v3_akid.c"
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
%struct.x509_crl_method_st = type opaque
%struct.X509V3_CONF_METHOD_st = type { i8* (i8*, i8*, i8*)*, %struct.stack_st_CONF_VALUE* (i8*, i8*)*, void (i8*, i8*)*, void (i8*, %struct.stack_st_CONF_VALUE*)* }
%struct.evp_pkey_st = type opaque
%struct.bio_st = type opaque
%struct.stack_st = type opaque
%struct.X509_extension_st = type opaque
%struct.GENERAL_NAME_st = type { i32, %union.anon.2 }
%union.anon.2 = type { i8* }
%struct.CONF_VALUE = type { i8*, i8*, i8* }

@ossl_v3_akey_id = local_unnamed_addr constant { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 90, i32 4, %struct.ASN1_ITEM_st* ()* @AUTHORITY_KEYID_it, i8* ()* null, void (i8*)* null, i8* (i8*, i8**, i64)* null, i32 (i8*, i8**)* null, i8* (%struct.v3_ext_method*, i8*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* bitcast (%struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, %struct.AUTHORITY_KEYID_st*, %struct.stack_st_CONF_VALUE*)* @i2v_AUTHORITY_KEYID to %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*), i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* bitcast (%struct.AUTHORITY_KEYID_st* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* @v2i_AUTHORITY_KEYID to i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*), i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, i8* null }, align 8
@.str = private unnamed_addr constant [22 x i8] c"crypto/x509/v3_akid.c\00", align 1
@__func__.i2v_AUTHORITY_KEYID = private unnamed_addr constant [20 x i8] c"i2v_AUTHORITY_KEYID\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"keyid\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"always\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"issuer\00", align 1
@__func__.v2i_AUTHORITY_KEYID = private unnamed_addr constant [20 x i8] c"v2i_AUTHORITY_KEYID\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"name=%s\00", align 1

declare %struct.ASN1_ITEM_st* @AUTHORITY_KEYID_it() #0

; Function Attrs: noinline nounwind uwtable
define internal %struct.stack_st_CONF_VALUE* @i2v_AUTHORITY_KEYID(%struct.v3_ext_method* nocapture noundef readnone %method, %struct.AUTHORITY_KEYID_st* nocapture noundef readonly %akeyid, %struct.stack_st_CONF_VALUE* noundef %extlist) #1 {
entry:
  %extlist.addr = alloca %struct.stack_st_CONF_VALUE*, align 8
  store %struct.stack_st_CONF_VALUE* %extlist, %struct.stack_st_CONF_VALUE** %extlist.addr, align 8, !tbaa !4
  %keyid = getelementptr inbounds %struct.AUTHORITY_KEYID_st, %struct.AUTHORITY_KEYID_st* %akeyid, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %keyid, align 8, !tbaa !8
  %tobool.not = icmp eq %struct.asn1_string_st* %0, null
  br i1 %tobool.not, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %0, i64 0, i32 2
  %1 = load i8*, i8** %data, align 8, !tbaa !10
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %0, i64 0, i32 0
  %2 = load i32, i32* %length, align 8, !tbaa !14
  %conv = sext i32 %2 to i64
  %call = tail call i8* @OPENSSL_buf2hexstr(i8* noundef %1, i64 noundef %conv) #5
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.i2v_AUTHORITY_KEYID, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %if.then
  %issuer = getelementptr inbounds %struct.AUTHORITY_KEYID_st, %struct.AUTHORITY_KEYID_st* %akeyid, i64 0, i32 1
  %3 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %issuer, align 8, !tbaa !15
  %tobool5.not = icmp eq %struct.stack_st_GENERAL_NAME* %3, null
  br i1 %tobool5.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.end
  %serial = getelementptr inbounds %struct.AUTHORITY_KEYID_st, %struct.AUTHORITY_KEYID_st* %akeyid, i64 0, i32 2
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %serial, align 8, !tbaa !16
  %tobool6.not = icmp eq %struct.asn1_string_st* %4, null
  %phi.sel = select i1 %tobool6.not, i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end
  %5 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %if.end ], [ %phi.sel, %lor.rhs ]
  %call7 = call i32 @X509V3_add_value(i8* noundef %5, i8* noundef nonnull %call, %struct.stack_st_CONF_VALUE** noundef nonnull %extlist.addr) #5
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.end
  call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 54) #5
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.i2v_AUTHORITY_KEYID, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 524299, i8* noundef null) #5
  br label %err

if.end10:                                         ; preds = %lor.end
  call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 58) #5
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %entry
  %issuer12 = getelementptr inbounds %struct.AUTHORITY_KEYID_st, %struct.AUTHORITY_KEYID_st* %akeyid, i64 0, i32 1
  %6 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %issuer12, align 8, !tbaa !15
  %tobool13.not = icmp eq %struct.stack_st_GENERAL_NAME* %6, null
  br i1 %tobool13.not, label %if.end21, label %if.then14

if.then14:                                        ; preds = %if.end11
  %7 = load %struct.stack_st_CONF_VALUE*, %struct.stack_st_CONF_VALUE** %extlist.addr, align 8, !tbaa !4
  %call16 = call %struct.stack_st_CONF_VALUE* @i2v_GENERAL_NAMES(%struct.v3_ext_method* noundef null, %struct.stack_st_GENERAL_NAME* noundef nonnull %6, %struct.stack_st_CONF_VALUE* noundef %7) #5
  %cmp17 = icmp eq %struct.stack_st_CONF_VALUE* %call16, null
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then14
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.i2v_AUTHORITY_KEYID, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 524299, i8* noundef null) #5
  br label %err

if.end20:                                         ; preds = %if.then14
  store %struct.stack_st_CONF_VALUE* %call16, %struct.stack_st_CONF_VALUE** %extlist.addr, align 8, !tbaa !4
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end11
  %serial22 = getelementptr inbounds %struct.AUTHORITY_KEYID_st, %struct.AUTHORITY_KEYID_st* %akeyid, i64 0, i32 2
  %8 = load %struct.asn1_string_st*, %struct.asn1_string_st** %serial22, align 8, !tbaa !16
  %tobool23.not = icmp eq %struct.asn1_string_st* %8, null
  br i1 %tobool23.not, label %if.end39, label %if.then24

if.then24:                                        ; preds = %if.end21
  %data26 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %8, i64 0, i32 2
  %9 = load i8*, i8** %data26, align 8, !tbaa !10
  %length28 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %8, i64 0, i32 0
  %10 = load i32, i32* %length28, align 8, !tbaa !14
  %conv29 = sext i32 %10 to i64
  %call30 = call i8* @OPENSSL_buf2hexstr(i8* noundef %9, i64 noundef %conv29) #5
  %cmp31 = icmp eq i8* %call30, null
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.then24
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.i2v_AUTHORITY_KEYID, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #5
  br label %err

if.end34:                                         ; preds = %if.then24
  %call35 = call i32 @X509V3_add_value(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %call30, %struct.stack_st_CONF_VALUE** noundef nonnull %extlist.addr) #5
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end34
  call void @CRYPTO_free(i8* noundef nonnull %call30, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 75) #5
  br label %err

if.end38:                                         ; preds = %if.end34
  call void @CRYPTO_free(i8* noundef nonnull %call30, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 78) #5
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end21
  %11 = load %struct.stack_st_CONF_VALUE*, %struct.stack_st_CONF_VALUE** %extlist.addr, align 8, !tbaa !4
  br label %cleanup

err:                                              ; preds = %if.then37, %if.then33, %if.then19, %if.then9
  %cmp40 = icmp eq %struct.stack_st_CONF_VALUE* %extlist, null
  br i1 %cmp40, label %if.then42, label %cleanup

if.then42:                                        ; preds = %err
  %12 = load %struct.stack_st_CONF_VALUE*, %struct.stack_st_CONF_VALUE** %extlist.addr, align 8, !tbaa !4
  %call43 = call fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %12) #6
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call43, void (i8*)* noundef bitcast (void (%struct.CONF_VALUE*)* @X509V3_conf_free to void (i8*)*)) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then42, %if.end39, %if.then4
  %retval.0 = phi %struct.stack_st_CONF_VALUE* [ null, %if.then4 ], [ %11, %if.end39 ], [ null, %if.then42 ], [ null, %err ]
  ret %struct.stack_st_CONF_VALUE* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.AUTHORITY_KEYID_st* @v2i_AUTHORITY_KEYID(%struct.v3_ext_method* nocapture noundef readnone %method, %struct.v3_ext_ctx* noundef %ctx, %struct.stack_st_CONF_VALUE* noundef %values) #1 {
entry:
  %pubkey = alloca %struct.X509_pubkey_st*, align 8
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %values) #6
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #5
  %call2 = tail call %struct.AUTHORITY_KEYID_st* @AUTHORITY_KEYID_new() #5
  %cmp = icmp eq %struct.AUTHORITY_KEYID_st* %call2, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %cmp3 = icmp eq i32 %call1, 1
  br i1 %cmp3, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %call5 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef 0) #5
  %name = getelementptr inbounds i8, i8* %call5, i64 8
  %0 = bitcast i8* %name to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !17
  %call6 = tail call i32 @strcmp(i8* noundef %1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #7
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %cleanup, label %for.body.preheader

if.end9:                                          ; preds = %if.end
  %cmp10233 = icmp sgt i32 %call1, 0
  br i1 %cmp10233, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %land.lhs.true, %if.end9
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %keyid.0236 = phi i8 [ %keyid.1, %for.inc ], [ 0, %for.body.preheader ]
  %issuer.0235 = phi i8 [ %issuer.1, %for.inc ], [ 0, %for.body.preheader ]
  %i.0234 = phi i32 [ %inc, %for.inc ], [ 0, %for.body.preheader ]
  %call12 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.0234) #5
  %name13 = getelementptr inbounds i8, i8* %call12, i64 8
  %2 = bitcast i8* %name13 to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !17
  %call14 = tail call i32 @strcmp(i8* noundef %3, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #7
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %for.body
  %value = getelementptr inbounds i8, i8* %call12, i64 16
  %4 = bitcast i8* %value to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !19
  %tobool.not = icmp eq i8* %5, null
  br i1 %tobool.not, label %for.inc, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %if.then16
  %call19 = tail call i32 @strcmp(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #7
  %cmp20 = icmp eq i32 %call19, 0
  %spec.select = select i1 %cmp20, i8 2, i8 1
  br label %for.inc

if.else:                                          ; preds = %for.body
  %call24 = tail call i32 @strcmp(i8* noundef %3, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #7
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then26, label %if.else35

if.then26:                                        ; preds = %if.else
  %value27 = getelementptr inbounds i8, i8* %call12, i64 16
  %6 = bitcast i8* %value27 to i8**
  %7 = load i8*, i8** %6, align 8, !tbaa !19
  %tobool28.not = icmp eq i8* %7, null
  br i1 %tobool28.not, label %for.inc, label %land.lhs.true29

land.lhs.true29:                                  ; preds = %if.then26
  %call31 = tail call i32 @strcmp(i8* noundef nonnull %7, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #7
  %cmp32 = icmp eq i32 %call31, 0
  %spec.select212 = select i1 %cmp32, i8 2, i8 1
  br label %for.inc

if.else35:                                        ; preds = %if.else
  %8 = bitcast i8* %name13 to i8**
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 130, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.v2i_AUTHORITY_KEYID, i64 0, i64 0)) #5
  %9 = load i8*, i8** %8, align 8, !tbaa !17
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 120, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* noundef %9) #5
  br label %err

for.inc:                                          ; preds = %land.lhs.true29, %land.lhs.true17, %if.then16, %if.then26
  %issuer.1 = phi i8 [ %issuer.0235, %if.then16 ], [ 1, %if.then26 ], [ %issuer.0235, %land.lhs.true17 ], [ %spec.select212, %land.lhs.true29 ]
  %keyid.1 = phi i8 [ 1, %if.then16 ], [ %keyid.0236, %if.then26 ], [ %spec.select, %land.lhs.true17 ], [ %keyid.0236, %land.lhs.true29 ]
  %inc = add nuw nsw i32 %i.0234, 1
  %exitcond.not = icmp eq i32 %inc, %call1
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !20

for.end:                                          ; preds = %for.inc, %if.end9
  %issuer.0.lcssa = phi i8 [ 0, %if.end9 ], [ %issuer.1, %for.inc ]
  %keyid.0.lcssa = phi i8 [ 0, %if.end9 ], [ %keyid.1, %for.inc ]
  %cond = icmp eq %struct.v3_ext_ctx* %ctx, null
  br i1 %cond, label %if.then45, label %land.lhs.true40

land.lhs.true40:                                  ; preds = %for.end
  %flags = getelementptr inbounds %struct.v3_ext_ctx, %struct.v3_ext_ctx* %ctx, i64 0, i32 0
  %10 = load i32, i32* %flags, align 8, !tbaa !22
  %and = and i32 %10, 1
  %cmp41.not = icmp eq i32 %and, 0
  br i1 %cmp41.not, label %if.end46, label %cleanup

if.then45:                                        ; preds = %for.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 140, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.v2i_AUTHORITY_KEYID, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786690, i8* noundef null) #5
  br label %err

if.end46:                                         ; preds = %land.lhs.true40
  %issuer_cert47 = getelementptr inbounds %struct.v3_ext_ctx, %struct.v3_ext_ctx* %ctx, i64 0, i32 1
  %11 = load %struct.x509_st*, %struct.x509_st** %issuer_cert47, align 8, !tbaa !24
  %cmp48 = icmp eq %struct.x509_st* %11, null
  br i1 %cmp48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end46
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 144, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.v2i_AUTHORITY_KEYID, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 121, i8* noundef null) #5
  br label %err

if.end50:                                         ; preds = %if.end46
  %cmp51.not = icmp eq i8 %keyid.0.lcssa, 0
  br i1 %cmp51.not, label %if.end92, label %if.then53

if.then53:                                        ; preds = %if.end50
  %call54 = tail call i32 @X509_get_ext_by_NID(%struct.x509_st* noundef nonnull %11, i32 noundef 82, i32 noundef -1) #5
  %cmp55 = icmp sgt i32 %call54, -1
  br i1 %cmp55, label %land.lhs.true57, label %land.lhs.true66

land.lhs.true57:                                  ; preds = %if.then53
  %call58 = tail call %struct.X509_extension_st* @X509_get_ext(%struct.x509_st* noundef nonnull %11, i32 noundef %call54) #5
  %cmp59.not = icmp eq %struct.X509_extension_st* %call58, null
  br i1 %cmp59.not, label %land.lhs.true66, label %if.end63

if.end63:                                         ; preds = %land.lhs.true57
  %call62 = tail call i8* @X509V3_EXT_d2i(%struct.X509_extension_st* noundef nonnull %call58) #5
  %12 = bitcast i8* %call62 to %struct.asn1_string_st*
  %cmp64 = icmp eq i8* %call62, null
  br i1 %cmp64, label %land.lhs.true66, label %if.end76

land.lhs.true66:                                  ; preds = %if.then53, %land.lhs.true57, %if.end63
  %issuer_pkey = getelementptr inbounds %struct.v3_ext_ctx, %struct.v3_ext_ctx* %ctx, i64 0, i32 7
  %13 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %issuer_pkey, align 8, !tbaa !25
  %cmp67.not = icmp eq %struct.evp_pkey_st* %13, null
  br i1 %cmp67.not, label %if.end76.thread, label %if.then69

if.then69:                                        ; preds = %land.lhs.true66
  %14 = bitcast %struct.X509_pubkey_st** %pubkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #8
  store %struct.X509_pubkey_st* null, %struct.X509_pubkey_st** %pubkey, align 8, !tbaa !4
  %call71 = call i32 @X509_PUBKEY_set(%struct.X509_pubkey_st** noundef nonnull %pubkey, %struct.evp_pkey_st* noundef nonnull %13) #5
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end75, label %if.then73

if.then73:                                        ; preds = %if.then69
  %15 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %pubkey, align 8, !tbaa !4
  %call74 = call %struct.asn1_string_st* @ossl_x509_pubkey_hash(%struct.X509_pubkey_st* noundef %15) #5
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %if.then69
  %ikeyid.1 = phi %struct.asn1_string_st* [ %call74, %if.then73 ], [ null, %if.then69 ]
  %16 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %pubkey, align 8, !tbaa !4
  call void @X509_PUBKEY_free(%struct.X509_pubkey_st* noundef %16) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #8
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.end63
  %ikeyid.2 = phi %struct.asn1_string_st* [ %ikeyid.1, %if.end75 ], [ %12, %if.end63 ]
  %cmp78 = icmp eq i8 %keyid.0.lcssa, 2
  %cmp81 = icmp eq i8 %issuer.0.lcssa, 0
  %or.cond = select i1 %cmp78, i1 true, i1 %cmp81
  br i1 %or.cond, label %land.lhs.true83, label %if.end92

if.end76.thread:                                  ; preds = %land.lhs.true66
  %cmp78216 = icmp eq i8 %keyid.0.lcssa, 2
  %cmp81217 = icmp eq i8 %issuer.0.lcssa, 0
  %or.cond218 = select i1 %cmp78216, i1 true, i1 %cmp81217
  br i1 %or.cond218, label %if.then90, label %if.end92

land.lhs.true83:                                  ; preds = %if.end76
  %cmp84 = icmp eq %struct.asn1_string_st* %ikeyid.2, null
  br i1 %cmp84, label %if.then90, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %land.lhs.true83
  %call87 = call i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef nonnull %ikeyid.2) #5
  %cmp88 = icmp slt i32 %call87, 3
  br i1 %cmp88, label %if.then90, label %if.end92

if.then90:                                        ; preds = %if.end76.thread, %lor.lhs.false86, %land.lhs.true83
  %ikeyid.2219222 = phi %struct.asn1_string_st* [ %ikeyid.2, %lor.lhs.false86 ], [ null, %land.lhs.true83 ], [ null, %if.end76.thread ]
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 164, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.v2i_AUTHORITY_KEYID, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 123, i8* noundef null) #5
  br label %err

if.end92:                                         ; preds = %if.end76.thread, %lor.lhs.false86, %if.end76, %if.end50
  %ikeyid.3 = phi %struct.asn1_string_st* [ %ikeyid.2, %lor.lhs.false86 ], [ %ikeyid.2, %if.end76 ], [ null, %if.end50 ], [ null, %if.end76.thread ]
  %cmp94 = icmp eq i8 %issuer.0.lcssa, 2
  br i1 %cmp94, label %if.then103, label %lor.lhs.false96

lor.lhs.false96:                                  ; preds = %if.end92
  %cmp98 = icmp eq i8 %issuer.0.lcssa, 1
  %cmp101 = icmp eq %struct.asn1_string_st* %ikeyid.3, null
  %or.cond150 = select i1 %cmp98, i1 %cmp101, i1 false
  br i1 %or.cond150, label %if.then103, label %if.end133

if.then103:                                       ; preds = %lor.lhs.false96, %if.end92
  %call104 = call %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef nonnull %11) #5
  %call105 = call %struct.X509_name_st* @X509_NAME_dup(%struct.X509_name_st* noundef %call104) #5
  %call106 = call %struct.asn1_string_st* @X509_get0_serialNumber(%struct.x509_st* noundef nonnull %11) #5
  %call107 = call %struct.asn1_string_st* @ASN1_INTEGER_dup(%struct.asn1_string_st* noundef %call106) #5
  %cmp108 = icmp eq %struct.X509_name_st* %call105, null
  %cmp111 = icmp eq %struct.asn1_string_st* %call107, null
  %or.cond151 = select i1 %cmp108, i1 true, i1 %cmp111
  br i1 %or.cond151, label %if.then113, label %if.then118

if.then113:                                       ; preds = %if.then103
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 173, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.v2i_AUTHORITY_KEYID, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 122, i8* noundef null) #5
  br label %err

if.then118:                                       ; preds = %if.then103
  %call119 = call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %17 = bitcast %struct.stack_st* %call119 to %struct.stack_st_GENERAL_NAME*
  %cmp120 = icmp eq %struct.stack_st* %call119, null
  br i1 %cmp120, label %if.then131, label %lor.lhs.false122

lor.lhs.false122:                                 ; preds = %if.then118
  %call123 = call %struct.GENERAL_NAME_st* @GENERAL_NAME_new() #5
  %cmp124 = icmp eq %struct.GENERAL_NAME_st* %call123, null
  br i1 %cmp124, label %if.then131, label %lor.lhs.false126

lor.lhs.false126:                                 ; preds = %lor.lhs.false122
  %call127 = call fastcc %struct.stack_st* @ossl_check_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef nonnull %17) #6
  %18 = bitcast %struct.GENERAL_NAME_st* %call123 to i8*
  %call129 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call127, i8* noundef nonnull %18) #5
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.then131, label %if.end132

if.then131:                                       ; preds = %lor.lhs.false126, %lor.lhs.false122, %if.then118
  %gen.0 = phi %struct.GENERAL_NAME_st* [ null, %if.then118 ], [ null, %lor.lhs.false122 ], [ %call123, %lor.lhs.false126 ]
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 182, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.v2i_AUTHORITY_KEYID, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #5
  br label %err

if.end132:                                        ; preds = %lor.lhs.false126
  %type = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %call123, i64 0, i32 0
  store i32 4, i32* %type, align 8, !tbaa !26
  %d = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %call123, i64 0, i32 1
  %dirn = bitcast %union.anon.2* %d to %struct.X509_name_st**
  store %struct.X509_name_st* %call105, %struct.X509_name_st** %dirn, align 8, !tbaa !28
  br label %if.end133

if.end133:                                        ; preds = %lor.lhs.false96, %if.end132
  %serial.0227 = phi %struct.asn1_string_st* [ %call107, %if.end132 ], [ null, %lor.lhs.false96 ]
  %gens.0 = phi %struct.stack_st_GENERAL_NAME* [ %17, %if.end132 ], [ null, %lor.lhs.false96 ]
  %issuer134 = getelementptr inbounds %struct.AUTHORITY_KEYID_st, %struct.AUTHORITY_KEYID_st* %call2, i64 0, i32 1
  store %struct.stack_st_GENERAL_NAME* %gens.0, %struct.stack_st_GENERAL_NAME** %issuer134, align 8, !tbaa !15
  %serial135 = getelementptr inbounds %struct.AUTHORITY_KEYID_st, %struct.AUTHORITY_KEYID_st* %call2, i64 0, i32 2
  store %struct.asn1_string_st* %serial.0227, %struct.asn1_string_st** %serial135, align 8, !tbaa !16
  %keyid136 = getelementptr inbounds %struct.AUTHORITY_KEYID_st, %struct.AUTHORITY_KEYID_st* %call2, i64 0, i32 0
  store %struct.asn1_string_st* %ikeyid.3, %struct.asn1_string_st** %keyid136, align 8, !tbaa !8
  br label %cleanup

err:                                              ; preds = %entry, %if.then131, %if.then113, %if.then90, %if.then49, %if.then45, %if.else35
  %ikeyid.4 = phi %struct.asn1_string_st* [ null, %entry ], [ null, %if.else35 ], [ null, %if.then45 ], [ null, %if.then49 ], [ %ikeyid.2219222, %if.then90 ], [ %ikeyid.3, %if.then113 ], [ %ikeyid.3, %if.then131 ]
  %isname.1 = phi %struct.X509_name_st* [ null, %entry ], [ null, %if.else35 ], [ null, %if.then45 ], [ null, %if.then49 ], [ null, %if.then90 ], [ %call105, %if.then113 ], [ %call105, %if.then131 ]
  %gens.1 = phi %struct.stack_st_GENERAL_NAME* [ null, %entry ], [ null, %if.else35 ], [ null, %if.then45 ], [ null, %if.then49 ], [ null, %if.then90 ], [ null, %if.then113 ], [ %17, %if.then131 ]
  %gen.1 = phi %struct.GENERAL_NAME_st* [ null, %entry ], [ null, %if.else35 ], [ null, %if.then45 ], [ null, %if.then49 ], [ null, %if.then90 ], [ null, %if.then113 ], [ %gen.0, %if.then131 ]
  %serial.1 = phi %struct.asn1_string_st* [ null, %entry ], [ null, %if.else35 ], [ null, %if.then45 ], [ null, %if.then49 ], [ null, %if.then90 ], [ %call107, %if.then113 ], [ %call107, %if.then131 ]
  %call137 = call fastcc %struct.stack_st* @ossl_check_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %gens.1) #6
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call137) #5
  call void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef %gen.1) #5
  call void @X509_NAME_free(%struct.X509_name_st* noundef %isname.1) #5
  call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %serial.1) #5
  call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %ikeyid.4) #5
  call void @AUTHORITY_KEYID_free(%struct.AUTHORITY_KEYID_st* noundef %call2) #5
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true40, %land.lhs.true, %err, %if.end133
  %retval.0 = phi %struct.AUTHORITY_KEYID_st* [ null, %err ], [ %call2, %if.end133 ], [ %call2, %land.lhs.true ], [ %call2, %land.lhs.true40 ]
  ret %struct.AUTHORITY_KEYID_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i8* @OPENSSL_buf2hexstr(i8* noundef, i64 noundef) local_unnamed_addr #0

declare void @ERR_new() local_unnamed_addr #0

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #0

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #0

declare i32 @X509V3_add_value(i8* noundef, i8* noundef, %struct.stack_st_CONF_VALUE** noundef) local_unnamed_addr #0

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #0

declare %struct.stack_st_CONF_VALUE* @i2v_GENERAL_NAMES(%struct.v3_ext_method* noundef, %struct.stack_st_GENERAL_NAME* noundef, %struct.stack_st_CONF_VALUE* noundef) local_unnamed_addr #0

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509V3_conf_free(%struct.CONF_VALUE* noundef) #0

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.AUTHORITY_KEYID_st* @AUTHORITY_KEYID_new() local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #0

declare i32 @X509_get_ext_by_NID(%struct.x509_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

declare %struct.X509_extension_st* @X509_get_ext(%struct.x509_st* noundef, i32 noundef) local_unnamed_addr #0

declare i8* @X509V3_EXT_d2i(%struct.X509_extension_st* noundef) local_unnamed_addr #0

declare i32 @X509_PUBKEY_set(%struct.X509_pubkey_st** noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #0

declare %struct.asn1_string_st* @ossl_x509_pubkey_hash(%struct.X509_pubkey_st* noundef) local_unnamed_addr #0

declare void @X509_PUBKEY_free(%struct.X509_pubkey_st* noundef) local_unnamed_addr #0

declare i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef) local_unnamed_addr #0

declare %struct.X509_name_st* @X509_NAME_dup(%struct.X509_name_st* noundef) local_unnamed_addr #0

declare %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef) local_unnamed_addr #0

declare %struct.asn1_string_st* @ASN1_INTEGER_dup(%struct.asn1_string_st* noundef) local_unnamed_addr #0

declare %struct.asn1_string_st* @X509_get0_serialNumber(%struct.x509_st* noundef) local_unnamed_addr #0

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #0

declare %struct.GENERAL_NAME_st* @GENERAL_NAME_new() local_unnamed_addr #0

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_GENERAL_NAME* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #0

declare void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef) local_unnamed_addr #0

declare void @X509_NAME_free(%struct.X509_name_st* noundef) local_unnamed_addr #0

declare void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef) local_unnamed_addr #0

declare void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #0

declare void @AUTHORITY_KEYID_free(%struct.AUTHORITY_KEYID_st* noundef) local_unnamed_addr #0

attributes #0 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #8 = { nounwind }

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
!9 = !{!"AUTHORITY_KEYID_st", !5, i64 0, !5, i64 8, !5, i64 16}
!10 = !{!11, !5, i64 8}
!11 = !{!"asn1_string_st", !12, i64 0, !12, i64 4, !5, i64 8, !13, i64 16}
!12 = !{!"int", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!11, !12, i64 0}
!15 = !{!9, !5, i64 8}
!16 = !{!9, !5, i64 16}
!17 = !{!18, !5, i64 8}
!18 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16}
!19 = !{!18, !5, i64 16}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!23, !12, i64 0}
!23 = !{!"v3_ext_ctx", !12, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56}
!24 = !{!23, !5, i64 8}
!25 = !{!23, !5, i64 56}
!26 = !{!27, !12, i64 0}
!27 = !{!"GENERAL_NAME_st", !12, i64 0, !6, i64 8}
!28 = !{!6, !6, i64 0}
