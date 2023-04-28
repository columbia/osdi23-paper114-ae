; ModuleID = 'crypto/x509/v3_san.c'
source_filename = "crypto/x509/v3_san.c"
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
%struct.stack_st = type opaque
%struct.GENERAL_NAME_st = type { i32, %union.anon.2 }
%union.anon.2 = type { i8* }
%struct.CONF_VALUE = type { i8*, i8*, i8* }
%struct.otherName_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.X509_extension_st = type opaque
%struct.X509_name_entry_st = type { %struct.asn1_object_st*, %struct.asn1_string_st*, i32, i32 }

@ossl_v3_alt = local_unnamed_addr constant [3 x { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* }] [{ i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 85, i32 0, %struct.ASN1_ITEM_st* ()* @GENERAL_NAMES_it, i8* ()* null, void (i8*)* null, i8* (i8*, i8**, i64)* null, i32 (i8*, i8**)* null, i8* (%struct.v3_ext_method*, i8*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* bitcast (%struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, %struct.stack_st_GENERAL_NAME*, %struct.stack_st_CONF_VALUE*)* @i2v_GENERAL_NAMES to %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*), i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* bitcast (%struct.stack_st_GENERAL_NAME* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* @v2i_subject_alt to i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*), i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, i8* null }, { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 86, i32 0, %struct.ASN1_ITEM_st* ()* @GENERAL_NAMES_it, i8* ()* null, void (i8*)* null, i8* (i8*, i8**, i64)* null, i32 (i8*, i8**)* null, i8* (%struct.v3_ext_method*, i8*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* bitcast (%struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, %struct.stack_st_GENERAL_NAME*, %struct.stack_st_CONF_VALUE*)* @i2v_GENERAL_NAMES to %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*), i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* bitcast (%struct.stack_st_GENERAL_NAME* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* @v2i_issuer_alt to i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*), i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, i8* null }, { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 771, i32 0, %struct.ASN1_ITEM_st* ()* @GENERAL_NAMES_it, i8* ()* null, void (i8*)* null, i8* (i8*, i8**, i64)* null, i32 (i8*, i8**)* null, i8* (%struct.v3_ext_method*, i8*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* bitcast (%struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, %struct.stack_st_GENERAL_NAME*, %struct.stack_st_CONF_VALUE*)* @i2v_GENERAL_NAMES to %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*), i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* null, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, i8* null }], align 16
@.str = private unnamed_addr constant [28 x i8] c"othername: SmtpUTF8Mailbox:\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"othername: XmppAddr:\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"othername: SRVName:\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"othername: UPN:\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"othername: NAIRealm:\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"othername: %s:\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"othername:\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"<unsupported>\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"X400Name\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"EdiPartyName\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"email\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"DNS\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"URI\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"DirName\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"IP Address\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"crypto/x509/v3_san.c\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"Registered ID\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"othername:<unsupported>\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"othername:SmtpUTF8Mailbox:%.*s\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"othername:XmppAddr:%.*s\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"othername:SRVName:%.*s\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"othername:UPN:%.*s\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"othername:NAIRealm:%.*s\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"X400Name:<unsupported>\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"EdiPartyName:<unsupported>\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"email:\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"DNS:\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"URI:\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"DirName:\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"IP Address:%s\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"Registered ID:\00", align 1
@__func__.v2i_GENERAL_NAMES = private unnamed_addr constant [18 x i8] c"v2i_GENERAL_NAMES\00", align 1
@__func__.a2i_GENERAL_NAME = private unnamed_addr constant [17 x i8] c"a2i_GENERAL_NAME\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"value=%s\00", align 1
@__func__.v2i_GENERAL_NAME_ex = private unnamed_addr constant [20 x i8] c"v2i_GENERAL_NAME_ex\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"RID\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"IP\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"dirName\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"otherName\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"name=%s\00", align 1
@__func__.v2i_issuer_alt = private unnamed_addr constant [15 x i8] c"v2i_issuer_alt\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"issuer\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@__func__.copy_issuer = private unnamed_addr constant [12 x i8] c"copy_issuer\00", align 1
@__func__.v2i_subject_alt = private unnamed_addr constant [16 x i8] c"v2i_subject_alt\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@__func__.copy_email = private unnamed_addr constant [11 x i8] c"copy_email\00", align 1
@__func__.do_dirname = private unnamed_addr constant [11 x i8] c"do_dirname\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"section=%s\00", align 1

declare %struct.ASN1_ITEM_st* @GENERAL_NAMES_it() #0

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_CONF_VALUE* @i2v_GENERAL_NAMES(%struct.v3_ext_method* nocapture noundef readnone %method, %struct.stack_st_GENERAL_NAME* noundef %gens, %struct.stack_st_CONF_VALUE* noundef %ret) #1 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %gens) #5
  %call131 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp32 = icmp sgt i32 %call131, 0
  br i1 %cmp32, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp = icmp slt i32 %inc, %call1
  br i1 %cmp, label %for.body, label %cleanup, !llvm.loop !4

for.body:                                         ; preds = %entry, %for.cond
  %ret.addr.034 = phi %struct.stack_st_CONF_VALUE* [ %call4, %for.cond ], [ %ret, %entry ]
  %i.033 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %call3 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.033) #6
  %0 = bitcast i8* %call3 to %struct.GENERAL_NAME_st*
  %call4 = tail call %struct.stack_st_CONF_VALUE* @i2v_GENERAL_NAME(%struct.v3_ext_method* undef, %struct.GENERAL_NAME_st* noundef %0, %struct.stack_st_CONF_VALUE* noundef %ret.addr.034) #5
  %cmp5 = icmp eq %struct.stack_st_CONF_VALUE* %call4, null
  %inc = add nuw nsw i32 %i.033, 1
  br i1 %cmp5, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  %cmp6 = icmp eq %struct.stack_st_CONF_VALUE* %ret, null
  br i1 %cmp6, label %if.then7, label %cleanup

if.then7:                                         ; preds = %if.then
  %call8 = tail call fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %ret.addr.034) #5
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call8, void (i8*)* noundef bitcast (void (%struct.CONF_VALUE*)* @X509V3_conf_free to void (i8*)*)) #6
  br label %cleanup

for.end:                                          ; preds = %entry
  %cmp11 = icmp eq %struct.stack_st_CONF_VALUE* %ret, null
  br i1 %cmp11, label %if.then12, label %cleanup

if.then12:                                        ; preds = %for.end
  %call13 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #6
  %1 = bitcast %struct.stack_st* %call13 to %struct.stack_st_CONF_VALUE*
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %for.end, %if.then, %if.then7, %if.then12
  %retval.0 = phi %struct.stack_st_CONF_VALUE* [ %1, %if.then12 ], [ null, %if.then7 ], [ null, %if.then ], [ %ret, %for.end ], [ %call4, %for.cond ]
  ret %struct.stack_st_CONF_VALUE* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.stack_st_GENERAL_NAME* @v2i_subject_alt(%struct.v3_ext_method* nocapture noundef readnone %method, %struct.v3_ext_ctx* noundef %ctx, %struct.stack_st_CONF_VALUE* noundef %nval) #1 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %nval) #5
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %call3 = tail call %struct.stack_st* @OPENSSL_sk_new_reserve(i32 (i8*, i8*)* noundef null, i32 noundef %call1) #6
  %0 = bitcast %struct.stack_st* %call3 to %struct.stack_st_GENERAL_NAME*
  %cmp = icmp eq %struct.stack_st* %call3, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp576 = icmp sgt i32 %call1, 0
  br i1 %cmp576, label %for.body, label %cleanup46

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 noundef 389, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.v2i_subject_alt, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #6
  %call4 = tail call fastcc %struct.stack_st* @ossl_check_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef null) #5
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call4) #6
  br label %cleanup46

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.077 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %call7 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.077) #6
  %1 = bitcast i8* %call7 to %struct.CONF_VALUE*
  %name = getelementptr inbounds i8, i8* %call7, i64 8
  %2 = bitcast i8* %name to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !6
  %call8 = tail call i32 @ossl_v3_name_cmp(i8* noundef %3, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)) #6
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %value = getelementptr inbounds i8, i8* %call7, i64 16
  %4 = bitcast i8* %value to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !11
  %tobool9.not = icmp eq i8* %5, null
  br i1 %tobool9.not, label %if.else, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %land.lhs.true
  %call12 = tail call i32 @strcmp(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0)) #7
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %land.lhs.true10
  %call15 = tail call fastcc i32 @copy_email(%struct.v3_ext_ctx* noundef %ctx, %struct.stack_st_GENERAL_NAME* noundef nonnull %0, i32 noundef 0) #5
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %for.inc

if.else:                                          ; preds = %land.lhs.true10, %land.lhs.true, %for.body
  %6 = load i8*, i8** %2, align 8, !tbaa !6
  %call20 = tail call i32 @ossl_v3_name_cmp(i8* noundef %6, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)) #6
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true22, label %if.else34

land.lhs.true22:                                  ; preds = %if.else
  %value23 = getelementptr inbounds i8, i8* %call7, i64 16
  %7 = bitcast i8* %value23 to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !11
  %tobool24.not = icmp eq i8* %8, null
  br i1 %tobool24.not, label %if.else34, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %call27 = tail call i32 @strcmp(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0)) #7
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.else34

if.then29:                                        ; preds = %land.lhs.true25
  %call30 = tail call fastcc i32 @copy_email(%struct.v3_ext_ctx* noundef %ctx, %struct.stack_st_GENERAL_NAME* noundef nonnull %0, i32 noundef 1) #5
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %err, label %for.inc

if.else34:                                        ; preds = %land.lhs.true25, %land.lhs.true22, %if.else
  %call35 = tail call %struct.GENERAL_NAME_st* @v2i_GENERAL_NAME(%struct.v3_ext_method* noundef %method, %struct.v3_ext_ctx* noundef %ctx, %struct.CONF_VALUE* noundef nonnull %1) #5
  %cmp36 = icmp eq %struct.GENERAL_NAME_st* %call35, null
  br i1 %cmp36, label %err, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.else34
  %call39 = tail call fastcc %struct.stack_st* @ossl_check_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef nonnull %0) #5
  %9 = bitcast %struct.GENERAL_NAME_st* %call35 to i8*
  %call41 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call39, i8* noundef nonnull %9) #6
  br label %for.inc

for.inc:                                          ; preds = %cleanup.thread, %if.then14, %if.then29
  %inc = add nuw nsw i32 %i.077, 1
  %exitcond.not = icmp eq i32 %inc, %call1
  br i1 %exitcond.not, label %cleanup46, label %for.body, !llvm.loop !12

err:                                              ; preds = %if.else34, %if.then29, %if.then14
  %call44 = tail call fastcc %struct.stack_st* @ossl_check_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef nonnull %0) #5
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call44, void (i8*)* noundef bitcast (void (%struct.GENERAL_NAME_st*)* @GENERAL_NAME_free to void (i8*)*)) #6
  br label %cleanup46

cleanup46:                                        ; preds = %for.inc, %for.cond.preheader, %err, %if.then
  %retval.0 = phi %struct.stack_st_GENERAL_NAME* [ null, %if.then ], [ null, %err ], [ %0, %for.cond.preheader ], [ %0, %for.inc ]
  ret %struct.stack_st_GENERAL_NAME* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.stack_st_GENERAL_NAME* @v2i_issuer_alt(%struct.v3_ext_method* nocapture noundef readnone %method, %struct.v3_ext_ctx* noundef %ctx, %struct.stack_st_CONF_VALUE* noundef %nval) #1 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %nval) #5
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %call3 = tail call %struct.stack_st* @OPENSSL_sk_new_reserve(i32 (i8*, i8*)* noundef null, i32 noundef %call1) #6
  %0 = bitcast %struct.stack_st* %call3 to %struct.stack_st_GENERAL_NAME*
  %cmp = icmp eq %struct.stack_st* %call3, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp558 = icmp sgt i32 %call1, 0
  br i1 %cmp558, label %for.body, label %cleanup32

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 noundef 310, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.v2i_issuer_alt, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #6
  %call4 = tail call fastcc %struct.stack_st* @ossl_check_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef null) #5
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call4) #6
  br label %cleanup32

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.059 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %call7 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.059) #6
  %1 = bitcast i8* %call7 to %struct.CONF_VALUE*
  %name = getelementptr inbounds i8, i8* %call7, i64 8
  %2 = bitcast i8* %name to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !6
  %call8 = tail call i32 @ossl_v3_name_cmp(i8* noundef %3, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0)) #6
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %value = getelementptr inbounds i8, i8* %call7, i64 16
  %4 = bitcast i8* %value to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !11
  %tobool9.not = icmp eq i8* %5, null
  br i1 %tobool9.not, label %if.else, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %land.lhs.true
  %call12 = tail call i32 @strcmp(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0)) #7
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %land.lhs.true10
  %call15 = tail call fastcc i32 @copy_issuer(%struct.v3_ext_ctx* noundef %ctx, %struct.stack_st_GENERAL_NAME* noundef nonnull %0) #5
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %for.inc

if.else:                                          ; preds = %land.lhs.true10, %land.lhs.true, %for.body
  %call19 = tail call %struct.GENERAL_NAME_st* @v2i_GENERAL_NAME(%struct.v3_ext_method* noundef %method, %struct.v3_ext_ctx* noundef %ctx, %struct.CONF_VALUE* noundef nonnull %1) #5
  %cmp20 = icmp eq %struct.GENERAL_NAME_st* %call19, null
  br i1 %cmp20, label %err, label %cleanup

cleanup:                                          ; preds = %if.else
  %call23 = tail call fastcc %struct.stack_st* @ossl_check_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef nonnull %0) #5
  %6 = bitcast %struct.GENERAL_NAME_st* %call19 to i8*
  %call25 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call23, i8* noundef nonnull %6) #6
  br label %for.inc

for.inc:                                          ; preds = %cleanup, %if.then14
  %inc = add nuw nsw i32 %i.059, 1
  %exitcond.not = icmp eq i32 %inc, %call1
  br i1 %exitcond.not, label %cleanup32, label %for.body, !llvm.loop !13

err:                                              ; preds = %if.else, %if.then14
  %call30 = tail call fastcc %struct.stack_st* @ossl_check_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef nonnull %0) #5
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call30, void (i8*)* noundef bitcast (void (%struct.GENERAL_NAME_st*)* @GENERAL_NAME_free to void (i8*)*)) #6
  br label %cleanup32

cleanup32:                                        ; preds = %for.inc, %for.cond.preheader, %err, %if.then
  %retval.0 = phi %struct.stack_st_GENERAL_NAME* [ null, %if.then ], [ null, %err ], [ %0, %for.cond.preheader ], [ %0, %for.inc ]
  ret %struct.stack_st_GENERAL_NAME* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_GENERAL_NAME* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_CONF_VALUE* @i2v_GENERAL_NAME(%struct.v3_ext_method* nocapture readnone %method, %struct.GENERAL_NAME_st* nocapture noundef readonly %gen, %struct.stack_st_CONF_VALUE* noundef %ret) local_unnamed_addr #1 {
entry:
  %ret.addr = alloca %struct.stack_st_CONF_VALUE*, align 8
  %othername = alloca [300 x i8], align 16
  %oline = alloca [256 x i8], align 16
  store %struct.stack_st_CONF_VALUE* %ret, %struct.stack_st_CONF_VALUE** %ret.addr, align 8, !tbaa !14
  %0 = getelementptr inbounds [300 x i8], [300 x i8]* %othername, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 300, i8* nonnull %0) #8
  %1 = getelementptr inbounds [256 x i8], [256 x i8]* %oline, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %1) #8
  %type = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gen, i64 0, i32 0
  %2 = load i32, i32* %type, align 8, !tbaa !15
  switch i32 %2, label %sw.epilog264 [
    i32 0, label %sw.bb
    i32 3, label %sw.bb184
    i32 5, label %sw.bb189
    i32 1, label %sw.bb194
    i32 2, label %sw.bb205
    i32 6, label %sw.bb217
    i32 4, label %sw.bb229
    i32 7, label %sw.bb241
    i32 8, label %sw.bb255
  ]

sw.bb:                                            ; preds = %entry
  %d = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gen, i64 0, i32 1
  %otherName = bitcast %union.anon.2* %d to %struct.otherName_st**
  %3 = load %struct.otherName_st*, %struct.otherName_st** %otherName, align 8, !tbaa !18
  %type_id = getelementptr inbounds %struct.otherName_st, %struct.otherName_st* %3, i64 0, i32 0
  %4 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type_id, align 8, !tbaa !19
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %4) #6
  switch i32 %call, label %sw.default [
    i32 1208, label %sw.bb1
    i32 1209, label %sw.bb15
    i32 1210, label %sw.bb40
    i32 649, label %sw.bb64
    i32 1211, label %sw.bb89
  ]

sw.bb1:                                           ; preds = %sw.bb
  %5 = load %struct.otherName_st*, %struct.otherName_st** %otherName, align 8, !tbaa !18
  %value = getelementptr inbounds %struct.otherName_st, %struct.otherName_st* %5, i64 0, i32 1
  %6 = load %struct.asn1_type_st*, %struct.asn1_type_st** %value, align 8, !tbaa !21
  %type4 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %6, i64 0, i32 0
  %7 = load i32, i32* %type4, align 8, !tbaa !22
  %cmp.not = icmp eq i32 %7, 12
  br i1 %cmp.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb1
  %value8 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %6, i64 0, i32 1
  %utf8string = bitcast %union.anon* %value8 to %struct.asn1_string_st**
  %8 = load %struct.asn1_string_st*, %struct.asn1_string_st** %utf8string, align 8, !tbaa !18
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %8, i64 0, i32 2
  %9 = load i8*, i8** %data, align 8, !tbaa !24
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %8, i64 0, i32 0
  %10 = load i32, i32* %length, align 8, !tbaa !27
  %conv = sext i32 %10 to i64
  %call14 = call i32 @x509v3_add_len_value_uchar(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* noundef %9, i64 noundef %conv, %struct.stack_st_CONF_VALUE** noundef nonnull %ret.addr) #6
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %cleanup, label %sw.epilog264

sw.bb15:                                          ; preds = %sw.bb
  %11 = load %struct.otherName_st*, %struct.otherName_st** %otherName, align 8, !tbaa !18
  %value18 = getelementptr inbounds %struct.otherName_st, %struct.otherName_st* %11, i64 0, i32 1
  %12 = load %struct.asn1_type_st*, %struct.asn1_type_st** %value18, align 8, !tbaa !21
  %type19 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %12, i64 0, i32 0
  %13 = load i32, i32* %type19, align 8, !tbaa !22
  %cmp20.not = icmp eq i32 %13, 12
  br i1 %cmp20.not, label %lor.lhs.false22, label %cleanup

lor.lhs.false22:                                  ; preds = %sw.bb15
  %value26 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %12, i64 0, i32 1
  %utf8string27 = bitcast %union.anon* %value26 to %struct.asn1_string_st**
  %14 = load %struct.asn1_string_st*, %struct.asn1_string_st** %utf8string27, align 8, !tbaa !18
  %data28 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %14, i64 0, i32 2
  %15 = load i8*, i8** %data28, align 8, !tbaa !24
  %length34 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %14, i64 0, i32 0
  %16 = load i32, i32* %length34, align 8, !tbaa !27
  %conv35 = sext i32 %16 to i64
  %call36 = call i32 @x509v3_add_len_value_uchar(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* noundef %15, i64 noundef %conv35, %struct.stack_st_CONF_VALUE** noundef nonnull %ret.addr) #6
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %cleanup, label %sw.epilog264

sw.bb40:                                          ; preds = %sw.bb
  %17 = load %struct.otherName_st*, %struct.otherName_st** %otherName, align 8, !tbaa !18
  %value43 = getelementptr inbounds %struct.otherName_st, %struct.otherName_st* %17, i64 0, i32 1
  %18 = load %struct.asn1_type_st*, %struct.asn1_type_st** %value43, align 8, !tbaa !21
  %type44 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %18, i64 0, i32 0
  %19 = load i32, i32* %type44, align 8, !tbaa !22
  %cmp45.not = icmp eq i32 %19, 22
  br i1 %cmp45.not, label %lor.lhs.false47, label %cleanup

lor.lhs.false47:                                  ; preds = %sw.bb40
  %value51 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %18, i64 0, i32 1
  %ia5string = bitcast %union.anon* %value51 to %struct.asn1_string_st**
  %20 = load %struct.asn1_string_st*, %struct.asn1_string_st** %ia5string, align 8, !tbaa !18
  %data52 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %20, i64 0, i32 2
  %21 = load i8*, i8** %data52, align 8, !tbaa !24
  %length58 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %20, i64 0, i32 0
  %22 = load i32, i32* %length58, align 8, !tbaa !27
  %conv59 = sext i32 %22 to i64
  %call60 = call i32 @x509v3_add_len_value_uchar(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* noundef %21, i64 noundef %conv59, %struct.stack_st_CONF_VALUE** noundef nonnull %ret.addr) #6
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %cleanup, label %sw.epilog264

sw.bb64:                                          ; preds = %sw.bb
  %23 = load %struct.otherName_st*, %struct.otherName_st** %otherName, align 8, !tbaa !18
  %value67 = getelementptr inbounds %struct.otherName_st, %struct.otherName_st* %23, i64 0, i32 1
  %24 = load %struct.asn1_type_st*, %struct.asn1_type_st** %value67, align 8, !tbaa !21
  %type68 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %24, i64 0, i32 0
  %25 = load i32, i32* %type68, align 8, !tbaa !22
  %cmp69.not = icmp eq i32 %25, 12
  br i1 %cmp69.not, label %lor.lhs.false71, label %cleanup

lor.lhs.false71:                                  ; preds = %sw.bb64
  %value75 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %24, i64 0, i32 1
  %utf8string76 = bitcast %union.anon* %value75 to %struct.asn1_string_st**
  %26 = load %struct.asn1_string_st*, %struct.asn1_string_st** %utf8string76, align 8, !tbaa !18
  %data77 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %26, i64 0, i32 2
  %27 = load i8*, i8** %data77, align 8, !tbaa !24
  %length83 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %26, i64 0, i32 0
  %28 = load i32, i32* %length83, align 8, !tbaa !27
  %conv84 = sext i32 %28 to i64
  %call85 = call i32 @x509v3_add_len_value_uchar(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* noundef %27, i64 noundef %conv84, %struct.stack_st_CONF_VALUE** noundef nonnull %ret.addr) #6
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %cleanup, label %sw.epilog264

sw.bb89:                                          ; preds = %sw.bb
  %29 = load %struct.otherName_st*, %struct.otherName_st** %otherName, align 8, !tbaa !18
  %value92 = getelementptr inbounds %struct.otherName_st, %struct.otherName_st* %29, i64 0, i32 1
  %30 = load %struct.asn1_type_st*, %struct.asn1_type_st** %value92, align 8, !tbaa !21
  %type93 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %30, i64 0, i32 0
  %31 = load i32, i32* %type93, align 8, !tbaa !22
  %cmp94.not = icmp eq i32 %31, 12
  br i1 %cmp94.not, label %lor.lhs.false96, label %cleanup

lor.lhs.false96:                                  ; preds = %sw.bb89
  %value100 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %30, i64 0, i32 1
  %utf8string101 = bitcast %union.anon* %value100 to %struct.asn1_string_st**
  %32 = load %struct.asn1_string_st*, %struct.asn1_string_st** %utf8string101, align 8, !tbaa !18
  %data102 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %32, i64 0, i32 2
  %33 = load i8*, i8** %data102, align 8, !tbaa !24
  %length108 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %32, i64 0, i32 0
  %34 = load i32, i32* %length108, align 8, !tbaa !27
  %conv109 = sext i32 %34 to i64
  %call110 = call i32 @x509v3_add_len_value_uchar(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* noundef %33, i64 noundef %conv109, %struct.stack_st_CONF_VALUE** noundef nonnull %ret.addr) #6
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %cleanup, label %sw.epilog264

sw.default:                                       ; preds = %sw.bb
  %35 = load %struct.otherName_st*, %struct.otherName_st** %otherName, align 8, !tbaa !18
  %type_id116 = getelementptr inbounds %struct.otherName_st, %struct.otherName_st* %35, i64 0, i32 0
  %36 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type_id116, align 8, !tbaa !19
  %call117 = call i32 @OBJ_obj2txt(i8* noundef nonnull %1, i32 noundef 256, %struct.asn1_object_st* noundef %36, i32 noundef 0) #6
  %cmp118 = icmp sgt i32 %call117, 0
  br i1 %cmp118, label %if.then120, label %if.else

if.then120:                                       ; preds = %sw.default
  %call123 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 300, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* noundef nonnull %1) #6
  br label %if.end126

if.else:                                          ; preds = %sw.default
  %call125 = call i64 @OPENSSL_strlcpy(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i64 noundef 300) #6
  br label %if.end126

if.end126:                                        ; preds = %if.else, %if.then120
  %37 = load %struct.otherName_st*, %struct.otherName_st** %otherName, align 8, !tbaa !18
  %value129 = getelementptr inbounds %struct.otherName_st, %struct.otherName_st* %37, i64 0, i32 1
  %38 = load %struct.asn1_type_st*, %struct.asn1_type_st** %value129, align 8, !tbaa !21
  %type130 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %38, i64 0, i32 0
  %39 = load i32, i32* %type130, align 8, !tbaa !22
  %cmp131 = icmp eq i32 %39, 22
  br i1 %cmp131, label %if.then133, label %if.end152

if.then133:                                       ; preds = %if.end126
  %value138 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %38, i64 0, i32 1
  %ia5string139 = bitcast %union.anon* %value138 to %struct.asn1_string_st**
  %40 = load %struct.asn1_string_st*, %struct.asn1_string_st** %ia5string139, align 8, !tbaa !18
  %data140 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %40, i64 0, i32 2
  %41 = load i8*, i8** %data140, align 8, !tbaa !24
  %length146 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %40, i64 0, i32 0
  %42 = load i32, i32* %length146, align 8, !tbaa !27
  %conv147 = sext i32 %42 to i64
  %call148 = call i32 @x509v3_add_len_value_uchar(i8* noundef nonnull %0, i8* noundef %41, i64 noundef %conv147, %struct.stack_st_CONF_VALUE** noundef nonnull %ret.addr) #6
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.then133.if.end152_crit_edge, label %if.then150

if.then133.if.end152_crit_edge:                   ; preds = %if.then133
  %.pre = load %struct.otherName_st*, %struct.otherName_st** %otherName, align 8, !tbaa !18
  %value155.phi.trans.insert = getelementptr inbounds %struct.otherName_st, %struct.otherName_st* %.pre, i64 0, i32 1
  %.pre303 = load %struct.asn1_type_st*, %struct.asn1_type_st** %value155.phi.trans.insert, align 8, !tbaa !21
  %type156.phi.trans.insert = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %.pre303, i64 0, i32 0
  %.pre304 = load i32, i32* %type156.phi.trans.insert, align 8, !tbaa !22
  br label %if.end152

if.then150:                                       ; preds = %if.then133
  %43 = load %struct.stack_st_CONF_VALUE*, %struct.stack_st_CONF_VALUE** %ret.addr, align 8, !tbaa !14
  br label %cleanup

if.end152:                                        ; preds = %if.then133.if.end152_crit_edge, %if.end126
  %44 = phi i32 [ %.pre304, %if.then133.if.end152_crit_edge ], [ %39, %if.end126 ]
  %45 = phi %struct.asn1_type_st* [ %.pre303, %if.then133.if.end152_crit_edge ], [ %38, %if.end126 ]
  %cmp157 = icmp eq i32 %44, 12
  br i1 %cmp157, label %if.then159, label %if.end178

if.then159:                                       ; preds = %if.end152
  %value164 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %45, i64 0, i32 1
  %utf8string165 = bitcast %union.anon* %value164 to %struct.asn1_string_st**
  %46 = load %struct.asn1_string_st*, %struct.asn1_string_st** %utf8string165, align 8, !tbaa !18
  %data166 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %46, i64 0, i32 2
  %47 = load i8*, i8** %data166, align 8, !tbaa !24
  %length172 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %46, i64 0, i32 0
  %48 = load i32, i32* %length172, align 8, !tbaa !27
  %conv173 = sext i32 %48 to i64
  %call174 = call i32 @x509v3_add_len_value_uchar(i8* noundef nonnull %0, i8* noundef %47, i64 noundef %conv173, %struct.stack_st_CONF_VALUE** noundef nonnull %ret.addr) #6
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %if.end178, label %if.then176

if.then176:                                       ; preds = %if.then159
  %49 = load %struct.stack_st_CONF_VALUE*, %struct.stack_st_CONF_VALUE** %ret.addr, align 8, !tbaa !14
  br label %cleanup

if.end178:                                        ; preds = %if.then159, %if.end152
  %call180 = call i32 @X509V3_add_value(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), %struct.stack_st_CONF_VALUE** noundef nonnull %ret.addr) #6
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %cleanup, label %sw.epilog264

sw.bb184:                                         ; preds = %entry
  %call185 = call i32 @X509V3_add_value(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), %struct.stack_st_CONF_VALUE** noundef nonnull %ret.addr) #6
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %cleanup, label %sw.epilog264

sw.bb189:                                         ; preds = %entry
  %call190 = call i32 @X509V3_add_value(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), %struct.stack_st_CONF_VALUE** noundef nonnull %ret.addr) #6
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %cleanup, label %sw.epilog264

sw.bb194:                                         ; preds = %entry
  %d195 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gen, i64 0, i32 1
  %ia5 = bitcast %union.anon.2* %d195 to %struct.asn1_string_st**
  %50 = load %struct.asn1_string_st*, %struct.asn1_string_st** %ia5, align 8, !tbaa !18
  %data196 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %50, i64 0, i32 2
  %51 = load i8*, i8** %data196, align 8, !tbaa !24
  %length199 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %50, i64 0, i32 0
  %52 = load i32, i32* %length199, align 8, !tbaa !27
  %conv200 = sext i32 %52 to i64
  %call201 = call i32 @x509v3_add_len_value_uchar(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* noundef %51, i64 noundef %conv200, %struct.stack_st_CONF_VALUE** noundef nonnull %ret.addr) #6
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %cleanup, label %sw.epilog264

sw.bb205:                                         ; preds = %entry
  %d206 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gen, i64 0, i32 1
  %ia5207 = bitcast %union.anon.2* %d206 to %struct.asn1_string_st**
  %53 = load %struct.asn1_string_st*, %struct.asn1_string_st** %ia5207, align 8, !tbaa !18
  %data208 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %53, i64 0, i32 2
  %54 = load i8*, i8** %data208, align 8, !tbaa !24
  %length211 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %53, i64 0, i32 0
  %55 = load i32, i32* %length211, align 8, !tbaa !27
  %conv212 = sext i32 %55 to i64
  %call213 = call i32 @x509v3_add_len_value_uchar(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* noundef %54, i64 noundef %conv212, %struct.stack_st_CONF_VALUE** noundef nonnull %ret.addr) #6
  %tobool214.not = icmp eq i32 %call213, 0
  br i1 %tobool214.not, label %cleanup, label %sw.epilog264

sw.bb217:                                         ; preds = %entry
  %d218 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gen, i64 0, i32 1
  %ia5219 = bitcast %union.anon.2* %d218 to %struct.asn1_string_st**
  %56 = load %struct.asn1_string_st*, %struct.asn1_string_st** %ia5219, align 8, !tbaa !18
  %data220 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %56, i64 0, i32 2
  %57 = load i8*, i8** %data220, align 8, !tbaa !24
  %length223 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %56, i64 0, i32 0
  %58 = load i32, i32* %length223, align 8, !tbaa !27
  %conv224 = sext i32 %58 to i64
  %call225 = call i32 @x509v3_add_len_value_uchar(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* noundef %57, i64 noundef %conv224, %struct.stack_st_CONF_VALUE** noundef nonnull %ret.addr) #6
  %tobool226.not = icmp eq i32 %call225, 0
  br i1 %tobool226.not, label %cleanup, label %sw.epilog264

sw.bb229:                                         ; preds = %entry
  %d230 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gen, i64 0, i32 1
  %dirn = bitcast %union.anon.2* %d230 to %struct.X509_name_st**
  %59 = load %struct.X509_name_st*, %struct.X509_name_st** %dirn, align 8, !tbaa !18
  %call232 = call i8* @X509_NAME_oneline(%struct.X509_name_st* noundef %59, i8* noundef nonnull %1, i32 noundef 256) #6
  %cmp233 = icmp eq i8* %call232, null
  br i1 %cmp233, label %cleanup, label %lor.lhs.false235

lor.lhs.false235:                                 ; preds = %sw.bb229
  %call237 = call i32 @X509V3_add_value(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %1, %struct.stack_st_CONF_VALUE** noundef nonnull %ret.addr) #6
  %tobool238.not = icmp eq i32 %call237, 0
  br i1 %tobool238.not, label %cleanup, label %sw.epilog264

sw.bb241:                                         ; preds = %entry
  %d242 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gen, i64 0, i32 1
  %ip = bitcast %union.anon.2* %d242 to %struct.asn1_string_st**
  %60 = load %struct.asn1_string_st*, %struct.asn1_string_st** %ip, align 8, !tbaa !18
  %data243 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %60, i64 0, i32 2
  %61 = load i8*, i8** %data243, align 8, !tbaa !24
  %length246 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %60, i64 0, i32 0
  %62 = load i32, i32* %length246, align 8, !tbaa !27
  %call247 = tail call i8* @ossl_ipaddr_to_asc(i8* noundef %61, i32 noundef %62) #6
  %cmp248 = icmp eq i8* %call247, null
  br i1 %cmp248, label %if.then253, label %lor.lhs.false250

lor.lhs.false250:                                 ; preds = %sw.bb241
  %call251 = call i32 @X509V3_add_value(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* noundef nonnull %call247, %struct.stack_st_CONF_VALUE** noundef nonnull %ret.addr) #6
  %tobool252.not = icmp eq i32 %call251, 0
  br i1 %tobool252.not, label %if.then253, label %if.end254

if.then253:                                       ; preds = %lor.lhs.false250, %sw.bb241
  store %struct.stack_st_CONF_VALUE* null, %struct.stack_st_CONF_VALUE** %ret.addr, align 8, !tbaa !14
  br label %if.end254

if.end254:                                        ; preds = %if.then253, %lor.lhs.false250
  call void @CRYPTO_free(i8* noundef %call247, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 noundef 195) #6
  br label %sw.epilog264

sw.bb255:                                         ; preds = %entry
  %d257 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gen, i64 0, i32 1
  %rid = bitcast %union.anon.2* %d257 to %struct.asn1_object_st**
  %63 = load %struct.asn1_object_st*, %struct.asn1_object_st** %rid, align 8, !tbaa !18
  %call258 = call i32 @i2t_ASN1_OBJECT(i8* noundef nonnull %1, i32 noundef 256, %struct.asn1_object_st* noundef %63) #6
  %call260 = call i32 @X509V3_add_value(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* noundef nonnull %1, %struct.stack_st_CONF_VALUE** noundef nonnull %ret.addr) #6
  %tobool261.not = icmp eq i32 %call260, 0
  br i1 %tobool261.not, label %cleanup, label %sw.epilog264

sw.epilog264:                                     ; preds = %sw.bb255, %lor.lhs.false235, %sw.bb217, %sw.bb205, %sw.bb194, %sw.bb189, %sw.bb184, %lor.lhs.false, %lor.lhs.false22, %lor.lhs.false47, %lor.lhs.false71, %lor.lhs.false96, %if.end178, %entry, %if.end254
  %64 = load %struct.stack_st_CONF_VALUE*, %struct.stack_st_CONF_VALUE** %ret.addr, align 8, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %sw.bb255, %sw.bb229, %lor.lhs.false235, %sw.bb217, %sw.bb205, %sw.bb194, %sw.bb189, %sw.bb184, %if.end178, %sw.bb89, %lor.lhs.false96, %sw.bb64, %lor.lhs.false71, %sw.bb40, %lor.lhs.false47, %sw.bb15, %lor.lhs.false22, %sw.bb1, %lor.lhs.false, %sw.epilog264, %if.then176, %if.then150
  %retval.0 = phi %struct.stack_st_CONF_VALUE* [ %64, %sw.epilog264 ], [ %43, %if.then150 ], [ %49, %if.then176 ], [ null, %lor.lhs.false ], [ null, %sw.bb1 ], [ null, %lor.lhs.false22 ], [ null, %sw.bb15 ], [ null, %lor.lhs.false47 ], [ null, %sw.bb40 ], [ null, %lor.lhs.false71 ], [ null, %sw.bb64 ], [ null, %lor.lhs.false96 ], [ null, %sw.bb89 ], [ null, %if.end178 ], [ null, %sw.bb184 ], [ null, %sw.bb189 ], [ null, %sw.bb194 ], [ null, %sw.bb205 ], [ null, %sw.bb217 ], [ null, %lor.lhs.false235 ], [ null, %sw.bb229 ], [ null, %sw.bb255 ]
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 300, i8* nonnull %0) #8
  ret %struct.stack_st_CONF_VALUE* %retval.0
}

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509V3_conf_free(%struct.CONF_VALUE* noundef) #0

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #0

declare i32 @x509v3_add_len_value_uchar(i8* noundef, i8* noundef, i64 noundef, %struct.stack_st_CONF_VALUE** noundef) local_unnamed_addr #0

declare i32 @OBJ_obj2txt(i8* noundef, i32 noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #0

declare i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #0

declare i64 @OPENSSL_strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #0

declare i32 @X509V3_add_value(i8* noundef, i8* noundef, %struct.stack_st_CONF_VALUE** noundef) local_unnamed_addr #0

declare i8* @X509_NAME_oneline(%struct.X509_name_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #0

declare i8* @ossl_ipaddr_to_asc(i8* noundef, i32 noundef) local_unnamed_addr #0

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #0

declare i32 @i2t_ASN1_OBJECT(i8* noundef, i32 noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define i32 @GENERAL_NAME_print(%struct.bio_st* noundef %out, %struct.GENERAL_NAME_st* nocapture noundef readonly %gen) local_unnamed_addr #1 {
entry:
  %type = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gen, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !15
  switch i32 %0, label %cleanup [
    i32 0, label %sw.bb
    i32 3, label %sw.bb80
    i32 5, label %sw.bb82
    i32 1, label %sw.bb84
    i32 2, label %sw.bb88
    i32 6, label %sw.bb93
    i32 4, label %sw.bb98
    i32 7, label %sw.bb102
    i32 8, label %sw.bb113
  ]

sw.bb:                                            ; preds = %entry
  %d = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gen, i64 0, i32 1
  %otherName = bitcast %union.anon.2* %d to %struct.otherName_st**
  %1 = load %struct.otherName_st*, %struct.otherName_st** %otherName, align 8, !tbaa !18
  %type_id = getelementptr inbounds %struct.otherName_st, %struct.otherName_st* %1, i64 0, i32 0
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type_id, align 8, !tbaa !19
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %2) #6
  %cond = icmp eq i32 %call, 1210
  %3 = load %struct.otherName_st*, %struct.otherName_st** %otherName, align 8, !tbaa !18
  %value = getelementptr inbounds %struct.otherName_st, %struct.otherName_st* %3, i64 0, i32 1
  %4 = load %struct.asn1_type_st*, %struct.asn1_type_st** %value, align 8, !tbaa !21
  %type3 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %4, i64 0, i32 0
  %5 = load i32, i32* %type3, align 8, !tbaa !22
  br i1 %cond, label %land.lhs.true, label %land.lhs.true6

land.lhs.true:                                    ; preds = %sw.bb
  %cmp4.not = icmp eq i32 %5, 22
  br i1 %cmp4.not, label %sw.bb38, label %if.then

land.lhs.true6:                                   ; preds = %sw.bb
  %cmp11.not = icmp eq i32 %5, 12
  br i1 %cmp11.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true6, %land.lhs.true
  %call12 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0)) #6
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true6
  switch i32 %call, label %sw.default [
    i32 1208, label %sw.bb13
    i32 1209, label %sw.bb24
    i32 1211, label %sw.bb65
    i32 649, label %sw.bb51
  ]

sw.bb13:                                          ; preds = %if.end
  %value17 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %4, i64 0, i32 1
  %utf8string = bitcast %union.anon* %value17 to %struct.asn1_string_st**
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %utf8string, align 8, !tbaa !18
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %6, i64 0, i32 0
  %7 = load i32, i32* %length, align 8, !tbaa !27
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %6, i64 0, i32 2
  %8 = load i8*, i8** %data, align 8, !tbaa !24
  %call23 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i32 noundef %7, i8* noundef %8) #6
  br label %cleanup

sw.bb24:                                          ; preds = %if.end
  %value28 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %4, i64 0, i32 1
  %utf8string29 = bitcast %union.anon* %value28 to %struct.asn1_string_st**
  %9 = load %struct.asn1_string_st*, %struct.asn1_string_st** %utf8string29, align 8, !tbaa !18
  %length30 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %9, i64 0, i32 0
  %10 = load i32, i32* %length30, align 8, !tbaa !27
  %data36 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %9, i64 0, i32 2
  %11 = load i8*, i8** %data36, align 8, !tbaa !24
  %call37 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i32 noundef %10, i8* noundef %11) #6
  br label %cleanup

sw.bb38:                                          ; preds = %land.lhs.true
  %value42 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %4, i64 0, i32 1
  %ia5string = bitcast %union.anon* %value42 to %struct.asn1_string_st**
  %12 = load %struct.asn1_string_st*, %struct.asn1_string_st** %ia5string, align 8, !tbaa !18
  %length43 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %12, i64 0, i32 0
  %13 = load i32, i32* %length43, align 8, !tbaa !27
  %data49 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %12, i64 0, i32 2
  %14 = load i8*, i8** %data49, align 8, !tbaa !24
  %call50 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i32 noundef %13, i8* noundef %14) #6
  br label %cleanup

sw.bb51:                                          ; preds = %if.end
  %value55 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %4, i64 0, i32 1
  %utf8string56 = bitcast %union.anon* %value55 to %struct.asn1_string_st**
  %15 = load %struct.asn1_string_st*, %struct.asn1_string_st** %utf8string56, align 8, !tbaa !18
  %length57 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %15, i64 0, i32 0
  %16 = load i32, i32* %length57, align 8, !tbaa !27
  %data63 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %15, i64 0, i32 2
  %17 = load i8*, i8** %data63, align 8, !tbaa !24
  %call64 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0), i32 noundef %16, i8* noundef %17) #6
  br label %cleanup

sw.bb65:                                          ; preds = %if.end
  %value69 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %4, i64 0, i32 1
  %utf8string70 = bitcast %union.anon* %value69 to %struct.asn1_string_st**
  %18 = load %struct.asn1_string_st*, %struct.asn1_string_st** %utf8string70, align 8, !tbaa !18
  %length71 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %18, i64 0, i32 0
  %19 = load i32, i32* %length71, align 8, !tbaa !27
  %data77 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %18, i64 0, i32 2
  %20 = load i8*, i8** %data77, align 8, !tbaa !24
  %call78 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0), i32 noundef %19, i8* noundef %20) #6
  br label %cleanup

sw.default:                                       ; preds = %if.end
  %call79 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0)) #6
  br label %cleanup

sw.bb80:                                          ; preds = %entry
  %call81 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0)) #6
  br label %cleanup

sw.bb82:                                          ; preds = %entry
  %call83 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0)) #6
  br label %cleanup

sw.bb84:                                          ; preds = %entry
  %call85 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0)) #6
  %d86 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gen, i64 0, i32 1
  %ia5 = bitcast %union.anon.2* %d86 to %struct.asn1_string_st**
  %21 = load %struct.asn1_string_st*, %struct.asn1_string_st** %ia5, align 8, !tbaa !18
  %call87 = tail call i32 @ASN1_STRING_print(%struct.bio_st* noundef %out, %struct.asn1_string_st* noundef %21) #6
  br label %cleanup

sw.bb88:                                          ; preds = %entry
  %call89 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0)) #6
  %d90 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gen, i64 0, i32 1
  %ia591 = bitcast %union.anon.2* %d90 to %struct.asn1_string_st**
  %22 = load %struct.asn1_string_st*, %struct.asn1_string_st** %ia591, align 8, !tbaa !18
  %call92 = tail call i32 @ASN1_STRING_print(%struct.bio_st* noundef %out, %struct.asn1_string_st* noundef %22) #6
  br label %cleanup

sw.bb93:                                          ; preds = %entry
  %call94 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0)) #6
  %d95 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gen, i64 0, i32 1
  %ia596 = bitcast %union.anon.2* %d95 to %struct.asn1_string_st**
  %23 = load %struct.asn1_string_st*, %struct.asn1_string_st** %ia596, align 8, !tbaa !18
  %call97 = tail call i32 @ASN1_STRING_print(%struct.bio_st* noundef %out, %struct.asn1_string_st* noundef %23) #6
  br label %cleanup

sw.bb98:                                          ; preds = %entry
  %call99 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0)) #6
  %d100 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gen, i64 0, i32 1
  %dirn = bitcast %union.anon.2* %d100 to %struct.X509_name_st**
  %24 = load %struct.X509_name_st*, %struct.X509_name_st** %dirn, align 8, !tbaa !18
  %call101 = tail call i32 @X509_NAME_print_ex(%struct.bio_st* noundef %out, %struct.X509_name_st* noundef %24, i32 noundef 0, i64 noundef 8520479) #6
  br label %cleanup

sw.bb102:                                         ; preds = %entry
  %d103 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gen, i64 0, i32 1
  %ip = bitcast %union.anon.2* %d103 to %struct.asn1_string_st**
  %25 = load %struct.asn1_string_st*, %struct.asn1_string_st** %ip, align 8, !tbaa !18
  %data104 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %25, i64 0, i32 2
  %26 = load i8*, i8** %data104, align 8, !tbaa !24
  %length107 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %25, i64 0, i32 0
  %27 = load i32, i32* %length107, align 8, !tbaa !27
  %call108 = tail call i8* @ossl_ipaddr_to_asc(i8* noundef %26, i32 noundef %27) #6
  %cmp109 = icmp eq i8* %call108, null
  br i1 %cmp109, label %cleanup, label %if.end111

if.end111:                                        ; preds = %sw.bb102
  %call112 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i8* noundef nonnull %call108) #6
  tail call void @CRYPTO_free(i8* noundef nonnull %call108, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 noundef 290) #6
  br label %cleanup

sw.bb113:                                         ; preds = %entry
  %call114 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0)) #6
  %d115 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gen, i64 0, i32 1
  %rid = bitcast %union.anon.2* %d115 to %struct.asn1_object_st**
  %28 = load %struct.asn1_object_st*, %struct.asn1_object_st** %rid, align 8, !tbaa !18
  %call116 = tail call i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef %out, %struct.asn1_object_st* noundef %28) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sw.bb80, %sw.bb82, %sw.bb84, %sw.bb88, %sw.bb93, %sw.bb98, %if.end111, %sw.bb113, %entry, %sw.default, %sw.bb65, %sw.bb51, %sw.bb38, %sw.bb24, %sw.bb13, %sw.bb102
  %retval.0 = phi i32 [ 0, %sw.bb102 ], [ 1, %sw.bb13 ], [ 1, %sw.bb24 ], [ 1, %sw.bb38 ], [ 1, %sw.bb51 ], [ 1, %sw.bb65 ], [ 1, %sw.default ], [ 1, %entry ], [ 1, %sw.bb113 ], [ 1, %if.end111 ], [ 1, %sw.bb98 ], [ 1, %sw.bb93 ], [ 1, %sw.bb88 ], [ 1, %sw.bb84 ], [ 1, %sw.bb82 ], [ 1, %sw.bb80 ], [ 1, %if.then ]
  ret i32 %retval.0
}

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #0

declare i32 @ASN1_STRING_print(%struct.bio_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #0

declare i32 @X509_NAME_print_ex(%struct.bio_st* noundef, %struct.X509_name_st* noundef, i32 noundef, i64 noundef) local_unnamed_addr #0

declare i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_GENERAL_NAME* @v2i_GENERAL_NAMES(%struct.v3_ext_method* nocapture noundef readnone %method, %struct.v3_ext_ctx* noundef %ctx, %struct.stack_st_CONF_VALUE* noundef %nval) local_unnamed_addr #1 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %nval) #5
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %call3 = tail call %struct.stack_st* @OPENSSL_sk_new_reserve(i32 (i8*, i8*)* noundef null, i32 noundef %call1) #6
  %0 = bitcast %struct.stack_st* %call3 to %struct.stack_st_GENERAL_NAME*
  %cmp = icmp eq %struct.stack_st* %call3, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp534 = icmp sgt i32 %call1, 0
  br i1 %cmp534, label %for.body, label %cleanup

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 noundef 486, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.v2i_GENERAL_NAMES, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #6
  %call4 = tail call fastcc %struct.stack_st* @ossl_check_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef null) #5
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call4) #6
  br label %cleanup

for.body:                                         ; preds = %for.cond.preheader, %if.end11
  %i.035 = phi i32 [ %inc, %if.end11 ], [ 0, %for.cond.preheader ]
  %call7 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.035) #6
  %1 = bitcast i8* %call7 to %struct.CONF_VALUE*
  %call8 = tail call %struct.GENERAL_NAME_st* @v2i_GENERAL_NAME(%struct.v3_ext_method* noundef %method, %struct.v3_ext_ctx* noundef %ctx, %struct.CONF_VALUE* noundef %1) #5
  %cmp9 = icmp eq %struct.GENERAL_NAME_st* %call8, null
  %call15 = tail call fastcc %struct.stack_st* @ossl_check_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef nonnull %0) #5
  br i1 %cmp9, label %err, label %if.end11

if.end11:                                         ; preds = %for.body
  %2 = bitcast %struct.GENERAL_NAME_st* %call8 to i8*
  %call14 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call15, i8* noundef nonnull %2) #6
  %inc = add nuw nsw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc, %call1
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !28

err:                                              ; preds = %for.body
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call15, void (i8*)* noundef bitcast (void (%struct.GENERAL_NAME_st*)* @GENERAL_NAME_free to void (i8*)*)) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %for.cond.preheader, %err, %if.then
  %retval.0 = phi %struct.stack_st_GENERAL_NAME* [ null, %if.then ], [ null, %err ], [ %0, %for.cond.preheader ], [ %0, %if.end11 ]
  ret %struct.stack_st_GENERAL_NAME* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.stack_st* @OPENSSL_sk_new_reserve(i32 (i8*, i8*)* noundef, i32 noundef) local_unnamed_addr #0

declare void @ERR_new() local_unnamed_addr #0

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #0

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #0

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_GENERAL_NAME* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.GENERAL_NAME_st* @v2i_GENERAL_NAME(%struct.v3_ext_method* nocapture noundef readnone %method, %struct.v3_ext_ctx* noundef %ctx, %struct.CONF_VALUE* nocapture noundef readonly %cnf) local_unnamed_addr #1 {
entry:
  %call = tail call %struct.GENERAL_NAME_st* @v2i_GENERAL_NAME_ex(%struct.GENERAL_NAME_st* noundef null, %struct.v3_ext_method* noundef %method, %struct.v3_ext_ctx* noundef %ctx, %struct.CONF_VALUE* noundef %cnf, i32 noundef 0) #5
  ret %struct.GENERAL_NAME_st* %call
}

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #0

declare void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef) #0

; Function Attrs: noinline nounwind uwtable
define %struct.GENERAL_NAME_st* @v2i_GENERAL_NAME_ex(%struct.GENERAL_NAME_st* noundef %out, %struct.v3_ext_method* nocapture noundef readnone %method, %struct.v3_ext_ctx* noundef %ctx, %struct.CONF_VALUE* nocapture noundef readonly %cnf, i32 noundef %is_nc) local_unnamed_addr #1 {
entry:
  %name1 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %cnf, i64 0, i32 1
  %0 = load i8*, i8** %name1, align 8, !tbaa !6
  %value2 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %cnf, i64 0, i32 2
  %1 = load i8*, i8** %value2, align 8, !tbaa !11
  %tobool.not = icmp eq i8* %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 noundef 612, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.v2i_GENERAL_NAME_ex, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 124, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @ossl_v3_name_cmp(i8* noundef %0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)) #6
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end35, label %if.else

if.else:                                          ; preds = %if.end
  %call5 = tail call i32 @ossl_v3_name_cmp(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #6
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end35, label %if.else8

if.else8:                                         ; preds = %if.else
  %call9 = tail call i32 @ossl_v3_name_cmp(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)) #6
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end35, label %if.else12

if.else12:                                        ; preds = %if.else8
  %call13 = tail call i32 @ossl_v3_name_cmp(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0)) #6
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end35, label %if.else16

if.else16:                                        ; preds = %if.else12
  %call17 = tail call i32 @ossl_v3_name_cmp(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0)) #6
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end35, label %if.else20

if.else20:                                        ; preds = %if.else16
  %call21 = tail call i32 @ossl_v3_name_cmp(i8* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0)) #6
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end35, label %if.else24

if.else24:                                        ; preds = %if.else20
  %call25 = tail call i32 @ossl_v3_name_cmp(i8* noundef %0, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0)) #6
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end35, label %if.else28

if.else28:                                        ; preds = %if.else24
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 noundef 631, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.v2i_GENERAL_NAME_ex, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 117, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0), i8* noundef %0) #6
  br label %cleanup

if.end35:                                         ; preds = %if.else24, %if.else20, %if.else16, %if.else12, %if.else8, %if.else, %if.end
  %type.0 = phi i32 [ 1, %if.end ], [ 6, %if.else ], [ 2, %if.else8 ], [ 8, %if.else12 ], [ 7, %if.else16 ], [ 4, %if.else20 ], [ 0, %if.else24 ]
  %call36 = tail call %struct.GENERAL_NAME_st* @a2i_GENERAL_NAME(%struct.GENERAL_NAME_st* noundef %out, %struct.v3_ext_method* undef, %struct.v3_ext_ctx* noundef %ctx, i32 noundef %type.0, i8* noundef nonnull %1, i32 noundef %is_nc) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.else28, %if.then
  %retval.0 = phi %struct.GENERAL_NAME_st* [ null, %if.else28 ], [ %call36, %if.end35 ], [ null, %if.then ]
  ret %struct.GENERAL_NAME_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.GENERAL_NAME_st* @a2i_GENERAL_NAME(%struct.GENERAL_NAME_st* noundef %out, %struct.v3_ext_method* nocapture readnone %method, %struct.v3_ext_ctx* noundef %ctx, i32 noundef %gen_type, i8* noundef %value, i32 noundef %is_nc) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq i8* %value, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 noundef 518, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.a2i_GENERAL_NAME, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 124, i8* noundef null) #6
  br label %cleanup52

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq %struct.GENERAL_NAME_st* %out, null
  br i1 %tobool1.not, label %if.else, label %if.end5

if.else:                                          ; preds = %if.end
  %call = tail call %struct.GENERAL_NAME_st* @GENERAL_NAME_new() #6
  %cmp = icmp eq %struct.GENERAL_NAME_st* %call, null
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.else
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 noundef 527, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.a2i_GENERAL_NAME, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup52

if.end5:                                          ; preds = %if.end, %if.else
  %gen.0 = phi %struct.GENERAL_NAME_st* [ %call, %if.else ], [ %out, %if.end ]
  switch i32 %gen_type, label %sw.default [
    i32 6, label %if.then37
    i32 1, label %if.then37
    i32 2, label %if.then37
    i32 8, label %sw.bb6
    i32 7, label %sw.bb11
    i32 4, label %sw.bb26
    i32 0, label %sw.bb31
  ]

sw.bb6:                                           ; preds = %if.end5
  %call7 = tail call %struct.asn1_object_st* @OBJ_txt2obj(i8* noundef nonnull %value, i32 noundef 0) #6
  %cmp8 = icmp eq %struct.asn1_object_st* %call7, null
  br i1 %cmp8, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %sw.bb6
  %d = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gen.0, i64 0, i32 1
  %rid = bitcast %union.anon.2* %d to %struct.asn1_object_st**
  store %struct.asn1_object_st* %call7, %struct.asn1_object_st** %rid, align 8, !tbaa !18
  br label %if.end48

cleanup:                                          ; preds = %sw.bb6
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 noundef 543, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.a2i_GENERAL_NAME, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 119, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), i8* noundef nonnull %value) #6
  br label %err

sw.bb11:                                          ; preds = %if.end5
  %tobool12.not = icmp eq i32 %is_nc, 0
  br i1 %tobool12.not, label %if.else16, label %if.then13

if.then13:                                        ; preds = %sw.bb11
  %call14 = tail call %struct.asn1_string_st* @a2i_IPADDRESS_NC(i8* noundef nonnull %value) #6
  br label %if.end20

if.else16:                                        ; preds = %sw.bb11
  %call17 = tail call %struct.asn1_string_st* @a2i_IPADDRESS(i8* noundef nonnull %value) #6
  br label %if.end20

if.end20:                                         ; preds = %if.else16, %if.then13
  %call17.sink = phi %struct.asn1_string_st* [ %call17, %if.else16 ], [ %call14, %if.then13 ]
  %d18 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gen.0, i64 0, i32 1
  %ip19 = bitcast %union.anon.2* %d18 to %struct.asn1_string_st**
  store %struct.asn1_string_st* %call17.sink, %struct.asn1_string_st** %ip19, align 8, !tbaa !18
  %cmp23 = icmp eq %struct.asn1_string_st* %call17.sink, null
  br i1 %cmp23, label %if.then24, label %if.end48

if.then24:                                        ; preds = %if.end20
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 noundef 557, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.a2i_GENERAL_NAME, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 118, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), i8* noundef nonnull %value) #6
  br label %err

sw.bb26:                                          ; preds = %if.end5
  %call27 = tail call fastcc i32 @do_dirname(%struct.GENERAL_NAME_st* noundef nonnull %gen.0, i8* noundef nonnull %value, %struct.v3_ext_ctx* noundef %ctx) #5
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then29, label %if.end48

if.then29:                                        ; preds = %sw.bb26
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 noundef 565, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.a2i_GENERAL_NAME, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 149, i8* noundef null) #6
  br label %err

sw.bb31:                                          ; preds = %if.end5
  %call32 = tail call fastcc i32 @do_othername(%struct.GENERAL_NAME_st* noundef nonnull %gen.0, i8* noundef nonnull %value, %struct.v3_ext_ctx* noundef %ctx) #5
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %if.end48

if.then34:                                        ; preds = %sw.bb31
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 noundef 572, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.a2i_GENERAL_NAME, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 147, i8* noundef null) #6
  br label %err

sw.default:                                       ; preds = %if.end5
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 noundef 577, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.a2i_GENERAL_NAME, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 167, i8* noundef null) #6
  br label %err

if.then37:                                        ; preds = %if.end5, %if.end5, %if.end5
  %call38 = tail call %struct.asn1_string_st* @ASN1_IA5STRING_new() #6
  %d39 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gen.0, i64 0, i32 1
  %ia5 = bitcast %union.anon.2* %d39 to %struct.asn1_string_st**
  store %struct.asn1_string_st* %call38, %struct.asn1_string_st** %ia5, align 8, !tbaa !18
  %cmp40 = icmp eq %struct.asn1_string_st* %call38, null
  br i1 %cmp40, label %if.then46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then37
  %call43 = tail call i64 @strlen(i8* noundef nonnull %value) #7
  %conv = trunc i64 %call43 to i32
  %call44 = tail call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef nonnull %call38, i8* noundef nonnull %value, i32 noundef %conv) #6
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then46, label %if.end48

if.then46:                                        ; preds = %lor.lhs.false, %if.then37
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 noundef 585, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.a2i_GENERAL_NAME, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #6
  br label %err

if.end48:                                         ; preds = %cleanup.thread, %if.end20, %sw.bb26, %sw.bb31, %lor.lhs.false
  %type = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gen.0, i64 0, i32 0
  store i32 %gen_type, i32* %type, align 8, !tbaa !15
  br label %cleanup52

err:                                              ; preds = %cleanup, %if.then46, %sw.default, %if.then34, %if.then29, %if.then24
  br i1 %tobool1.not, label %if.then50, label %cleanup52

if.then50:                                        ; preds = %err
  tail call void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef nonnull %gen.0) #6
  br label %cleanup52

cleanup52:                                        ; preds = %err, %if.then50, %if.end48, %if.then3, %if.then
  %retval.0 = phi %struct.GENERAL_NAME_st* [ %gen.0, %if.end48 ], [ null, %if.then3 ], [ null, %if.then ], [ null, %if.then50 ], [ null, %err ]
  ret %struct.GENERAL_NAME_st* %retval.0
}

declare %struct.GENERAL_NAME_st* @GENERAL_NAME_new() local_unnamed_addr #0

declare %struct.asn1_object_st* @OBJ_txt2obj(i8* noundef, i32 noundef) local_unnamed_addr #0

declare %struct.asn1_string_st* @a2i_IPADDRESS_NC(i8* noundef) local_unnamed_addr #0

declare %struct.asn1_string_st* @a2i_IPADDRESS(i8* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_dirname(%struct.GENERAL_NAME_st* nocapture noundef writeonly %gen, i8* noundef %value, %struct.v3_ext_ctx* noundef %ctx) unnamed_addr #1 {
entry:
  %call = tail call %struct.X509_name_st* @X509_NAME_new() #6
  %cmp = icmp eq %struct.X509_name_st* %call, null
  br i1 %cmp, label %if.then9, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.stack_st_CONF_VALUE* @X509V3_get_section(%struct.v3_ext_ctx* noundef %ctx, i8* noundef %value) #6
  %tobool.not = icmp eq %struct.stack_st_CONF_VALUE* %call1, null
  br i1 %tobool.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 noundef 677, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.do_dirname, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 150, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i64 0, i64 0), i8* noundef %value) #6
  br label %if.then9

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @X509V3_NAME_from_section(%struct.X509_name_st* noundef nonnull %call, %struct.stack_st_CONF_VALUE* noundef nonnull %call1, i64 noundef 4097) #6
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then9, label %err

err:                                              ; preds = %if.end3
  %d = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gen, i64 0, i32 1
  %dirn = bitcast %union.anon.2* %d to %struct.X509_name_st**
  store %struct.X509_name_st* %call, %struct.X509_name_st** %dirn, align 8, !tbaa !18
  br label %if.end10

if.then9:                                         ; preds = %entry, %if.end3, %if.then2
  %sk.0.ph = phi %struct.stack_st_CONF_VALUE* [ null, %if.then2 ], [ %call1, %if.end3 ], [ null, %entry ]
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef %call) #6
  br label %if.end10

if.end10:                                         ; preds = %err, %if.then9
  %ret.027 = phi i32 [ 0, %if.then9 ], [ %call4, %err ]
  %sk.025 = phi %struct.stack_st_CONF_VALUE* [ %sk.0.ph, %if.then9 ], [ %call1, %err ]
  tail call void @X509V3_section_free(%struct.v3_ext_ctx* noundef %ctx, %struct.stack_st_CONF_VALUE* noundef %sk.025) #6
  ret i32 %ret.027
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_othername(%struct.GENERAL_NAME_st* nocapture noundef %gen, i8* noundef %value, %struct.v3_ext_ctx* noundef %ctx) unnamed_addr #1 {
entry:
  %call = tail call i8* @strchr(i8* noundef %value, i32 noundef 59) #7
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.otherName_st* @OTHERNAME_new() #6
  %d = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gen, i64 0, i32 1
  %otherName = bitcast %union.anon.2* %d to %struct.otherName_st**
  store %struct.otherName_st* %call1, %struct.otherName_st** %otherName, align 8, !tbaa !18
  %cmp2 = icmp eq %struct.otherName_st* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %value7 = getelementptr inbounds %struct.otherName_st, %struct.otherName_st* %call1, i64 0, i32 1
  %0 = load %struct.asn1_type_st*, %struct.asn1_type_st** %value7, align 8, !tbaa !21
  tail call void @ASN1_TYPE_free(%struct.asn1_type_st* noundef %0) #6
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 1
  %call8 = tail call %struct.asn1_type_st* @ASN1_generate_v3(i8* noundef nonnull %add.ptr, %struct.v3_ext_ctx* noundef %ctx) #6
  %1 = load %struct.otherName_st*, %struct.otherName_st** %otherName, align 8, !tbaa !18
  %value11 = getelementptr inbounds %struct.otherName_st, %struct.otherName_st* %1, i64 0, i32 1
  store %struct.asn1_type_st* %call8, %struct.asn1_type_st** %value11, align 8, !tbaa !21
  %cmp12 = icmp eq %struct.asn1_type_st* %call8, null
  br i1 %cmp12, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end4
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %value to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sext = shl i64 %sub.ptr.sub, 32
  %conv15 = ashr exact i64 %sext, 32
  %call16 = tail call i8* @CRYPTO_strndup(i8* noundef %value, i64 noundef %conv15, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 noundef 657) #6
  %cmp17 = icmp eq i8* %call16, null
  br i1 %cmp17, label %cleanup, label %if.end20

if.end20:                                         ; preds = %if.end14
  %call21 = tail call %struct.asn1_object_st* @OBJ_txt2obj(i8* noundef nonnull %call16, i32 noundef 0) #6
  %2 = load %struct.otherName_st*, %struct.otherName_st** %otherName, align 8, !tbaa !18
  %type_id = getelementptr inbounds %struct.otherName_st, %struct.otherName_st* %2, i64 0, i32 0
  store %struct.asn1_object_st* %call21, %struct.asn1_object_st** %type_id, align 8, !tbaa !19
  tail call void @CRYPTO_free(i8* noundef nonnull %call16, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 noundef 661) #6
  %3 = load %struct.otherName_st*, %struct.otherName_st** %otherName, align 8, !tbaa !18
  %type_id26 = getelementptr inbounds %struct.otherName_st, %struct.otherName_st* %3, i64 0, i32 0
  %4 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type_id26, align 8, !tbaa !19
  %tobool.not = icmp ne %struct.asn1_object_st* %4, null
  %. = zext i1 %tobool.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end14, %if.end4, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end4 ], [ 0, %if.end14 ], [ %., %if.end20 ]
  ret i32 %retval.0
}

declare %struct.asn1_string_st* @ASN1_IA5STRING_new() local_unnamed_addr #0

declare i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #4

declare i32 @ossl_v3_name_cmp(i8* noundef, i8* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @copy_issuer(%struct.v3_ext_ctx* noundef readonly %ctx, %struct.stack_st_GENERAL_NAME* noundef %gens) unnamed_addr #1 {
entry:
  %cmp.not = icmp eq %struct.v3_ext_ctx* %ctx, null
  br i1 %cmp.not, label %if.then3, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.v3_ext_ctx, %struct.v3_ext_ctx* %ctx, i64 0, i32 0
  %0 = load i32, i32* %flags, align 8, !tbaa !29
  %and = and i32 %0, 1
  %cmp1.not = icmp eq i32 %and, 0
  br i1 %cmp1.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %issuer_cert = getelementptr inbounds %struct.v3_ext_ctx, %struct.v3_ext_ctx* %ctx, i64 0, i32 1
  %1 = load %struct.x509_st*, %struct.x509_st** %issuer_cert, align 8, !tbaa !31
  %tobool2.not = icmp eq %struct.x509_st* %1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %entry, %lor.lhs.false
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 noundef 347, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.copy_issuer, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 127, i8* noundef null) #6
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %call = tail call i32 @X509_get_ext_by_NID(%struct.x509_st* noundef nonnull %1, i32 noundef 85, i32 noundef -1) #6
  %cmp6 = icmp slt i32 %call, 0
  br i1 %cmp6, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end4
  %2 = load %struct.x509_st*, %struct.x509_st** %issuer_cert, align 8, !tbaa !31
  %call10 = tail call %struct.X509_extension_st* @X509_get_ext(%struct.x509_st* noundef %2, i32 noundef %call) #6
  %cmp11 = icmp eq %struct.X509_extension_st* %call10, null
  br i1 %cmp11, label %if.then15, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.end8
  %call13 = tail call i8* @X509V3_EXT_d2i(%struct.X509_extension_st* noundef nonnull %call10) #6
  %3 = bitcast i8* %call13 to %struct.stack_st_GENERAL_NAME*
  %cmp14 = icmp eq i8* %call13, null
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %lor.lhs.false12, %if.end8
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 noundef 355, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.copy_issuer, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 126, i8* noundef null) #6
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false12
  %call17 = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef nonnull %3) #5
  %call18 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call17) #6
  %call19 = tail call fastcc %struct.stack_st* @ossl_check_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %gens) #5
  %call20 = tail call i32 @OPENSSL_sk_reserve(%struct.stack_st* noundef %call19, i32 noundef %call18) #6
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end16
  %cmp2454 = icmp sgt i32 %call18, 0
  br i1 %cmp2454, label %for.body, label %for.end

if.then22:                                        ; preds = %if.end16
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 noundef 361, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.copy_issuer, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %i.055 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %call26 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call17, i32 noundef %i.055) #6
  %call29 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call19, i8* noundef %call26) #6
  %inc = add nuw nsw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, %call18
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !32

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %call30 = tail call fastcc %struct.stack_st* @ossl_check_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef nonnull %3) #5
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call30) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.then15, %if.then22, %if.end4, %land.lhs.true, %for.end
  %retval.0 = phi i32 [ 1, %for.end ], [ 1, %land.lhs.true ], [ 1, %if.end4 ], [ 0, %if.then22 ], [ 0, %if.then15 ], [ 0, %if.then3 ]
  ret i32 %retval.0
}

declare i32 @X509_get_ext_by_NID(%struct.x509_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

declare %struct.X509_extension_st* @X509_get_ext(%struct.x509_st* noundef, i32 noundef) local_unnamed_addr #0

declare i8* @X509V3_EXT_d2i(%struct.X509_extension_st* noundef) local_unnamed_addr #0

declare i32 @OPENSSL_sk_reserve(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @copy_email(%struct.v3_ext_ctx* noundef %ctx, %struct.stack_st_GENERAL_NAME* noundef %gens, i32 noundef %move_p) unnamed_addr #1 {
entry:
  %cond = icmp eq %struct.v3_ext_ctx* %ctx, null
  br i1 %cond, label %if.then6, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.v3_ext_ctx, %struct.v3_ext_ctx* %ctx, i64 0, i32 0
  %0 = load i32, i32* %flags, align 8, !tbaa !29
  %and = and i32 %0, 1
  %cmp1.not = icmp eq i32 %and, 0
  br i1 %cmp1.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %subject_cert = getelementptr inbounds %struct.v3_ext_ctx, %struct.v3_ext_ctx* %ctx, i64 0, i32 2
  %1 = load %struct.x509_st*, %struct.x509_st** %subject_cert, align 8, !tbaa !33
  %cmp3 = icmp eq %struct.x509_st* %1, null
  br i1 %cmp3, label %land.lhs.true4, label %if.then9

land.lhs.true4:                                   ; preds = %lor.lhs.false
  %subject_req = getelementptr inbounds %struct.v3_ext_ctx, %struct.v3_ext_ctx* %ctx, i64 0, i32 3
  %2 = load %struct.X509_req_st*, %struct.X509_req_st** %subject_req, align 8, !tbaa !34
  %cmp5 = icmp eq %struct.X509_req_st* %2, null
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %entry, %land.lhs.true4
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 noundef 433, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.copy_email, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 125, i8* noundef null) #6
  br label %cleanup

if.then9:                                         ; preds = %lor.lhs.false
  %call = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef nonnull %1) #6
  br label %if.end13

if.else:                                          ; preds = %land.lhs.true4
  %call12 = tail call %struct.X509_name_st* @X509_REQ_get_subject_name(%struct.X509_req_st* noundef nonnull %2) #6
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then9
  %nm.0 = phi %struct.X509_name_st* [ %call, %if.then9 ], [ %call12, %if.else ]
  %tobool19.not = icmp eq i32 %move_p, 0
  br label %while.cond

while.cond:                                       ; preds = %if.end28, %if.end13
  %i.0 = phi i32 [ -1, %if.end13 ], [ %i.1, %if.end28 ]
  %call14 = tail call i32 @X509_NAME_get_index_by_NID(%struct.X509_name_st* noundef %nm.0, i32 noundef 48, i32 noundef %i.0) #6
  %cmp15 = icmp sgt i32 %call14, -1
  br i1 %cmp15, label %while.body, label %cleanup

while.body:                                       ; preds = %while.cond
  %call16 = tail call %struct.X509_name_entry_st* @X509_NAME_get_entry(%struct.X509_name_st* noundef %nm.0, i32 noundef %call14) #6
  %call17 = tail call %struct.asn1_string_st* @X509_NAME_ENTRY_get_data(%struct.X509_name_entry_st* noundef %call16) #6
  %call18 = tail call %struct.asn1_string_st* @ASN1_STRING_dup(%struct.asn1_string_st* noundef %call17) #6
  br i1 %tobool19.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %while.body
  %call21 = tail call %struct.X509_name_entry_st* @X509_NAME_delete_entry(%struct.X509_name_st* noundef %nm.0, i32 noundef %call14) #6
  tail call void @X509_NAME_ENTRY_free(%struct.X509_name_entry_st* noundef %call16) #6
  %dec = add nsw i32 %call14, -1
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %while.body
  %i.1 = phi i32 [ %dec, %if.then20 ], [ %call14, %while.body ]
  %cmp23 = icmp eq %struct.asn1_string_st* %call18, null
  br i1 %cmp23, label %err, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %if.end22
  %call25 = tail call %struct.GENERAL_NAME_st* @GENERAL_NAME_new() #6
  %cmp26 = icmp eq %struct.GENERAL_NAME_st* %call25, null
  br i1 %cmp26, label %err, label %if.end28

if.end28:                                         ; preds = %lor.lhs.false24
  %d = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %call25, i64 0, i32 1
  %ia5 = bitcast %union.anon.2* %d to %struct.asn1_string_st**
  store %struct.asn1_string_st* %call18, %struct.asn1_string_st** %ia5, align 8, !tbaa !18
  %type = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %call25, i64 0, i32 0
  store i32 1, i32* %type, align 8, !tbaa !15
  %call29 = tail call fastcc %struct.stack_st* @ossl_check_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %gens) #5
  %3 = bitcast %struct.GENERAL_NAME_st* %call25 to i8*
  %call31 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call29, i8* noundef nonnull %3) #6
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %while.cond, !llvm.loop !35

err:                                              ; preds = %if.end28, %if.end22, %lor.lhs.false24
  %.sink = phi i32 [ 453, %lor.lhs.false24 ], [ 453, %if.end22 ], [ 460, %if.end28 ]
  %email.0 = phi %struct.asn1_string_st* [ %call18, %lor.lhs.false24 ], [ %call18, %if.end22 ], [ null, %if.end28 ]
  %gen.2 = phi %struct.GENERAL_NAME_st* [ null, %lor.lhs.false24 ], [ null, %if.end22 ], [ %call25, %if.end28 ]
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.copy_email, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #6
  tail call void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef %gen.2) #6
  tail call void @ASN1_IA5STRING_free(%struct.asn1_string_st* noundef %email.0) #6
  br label %cleanup

cleanup:                                          ; preds = %while.cond, %land.lhs.true, %err, %if.then6
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 0, %err ], [ 1, %land.lhs.true ], [ 1, %while.cond ]
  ret i32 %retval.0
}

declare %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef) local_unnamed_addr #0

declare %struct.X509_name_st* @X509_REQ_get_subject_name(%struct.X509_req_st* noundef) local_unnamed_addr #0

declare i32 @X509_NAME_get_index_by_NID(%struct.X509_name_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

declare %struct.X509_name_entry_st* @X509_NAME_get_entry(%struct.X509_name_st* noundef, i32 noundef) local_unnamed_addr #0

declare %struct.asn1_string_st* @ASN1_STRING_dup(%struct.asn1_string_st* noundef) local_unnamed_addr #0

declare %struct.asn1_string_st* @X509_NAME_ENTRY_get_data(%struct.X509_name_entry_st* noundef) local_unnamed_addr #0

declare %struct.X509_name_entry_st* @X509_NAME_delete_entry(%struct.X509_name_st* noundef, i32 noundef) local_unnamed_addr #0

declare void @X509_NAME_ENTRY_free(%struct.X509_name_entry_st* noundef) local_unnamed_addr #0

declare void @ASN1_IA5STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #4

declare %struct.otherName_st* @OTHERNAME_new() local_unnamed_addr #0

declare void @ASN1_TYPE_free(%struct.asn1_type_st* noundef) local_unnamed_addr #0

declare %struct.asn1_type_st* @ASN1_generate_v3(i8* noundef, %struct.v3_ext_ctx* noundef) local_unnamed_addr #0

declare i8* @CRYPTO_strndup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #0

declare %struct.X509_name_st* @X509_NAME_new() local_unnamed_addr #0

declare %struct.stack_st_CONF_VALUE* @X509V3_get_section(%struct.v3_ext_ctx* noundef, i8* noundef) local_unnamed_addr #0

declare i32 @X509V3_NAME_from_section(%struct.X509_name_st* noundef, %struct.stack_st_CONF_VALUE* noundef, i64 noundef) local_unnamed_addr #0

declare void @X509_NAME_free(%struct.X509_name_st* noundef) local_unnamed_addr #0

declare void @X509V3_section_free(%struct.v3_ext_ctx* noundef, %struct.stack_st_CONF_VALUE* noundef) local_unnamed_addr #0

attributes #0 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{!7, !8, i64 8}
!7 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!7, !8, i64 16}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = !{!8, !8, i64 0}
!15 = !{!16, !17, i64 0}
!16 = !{!"GENERAL_NAME_st", !17, i64 0, !9, i64 8}
!17 = !{!"int", !9, i64 0}
!18 = !{!9, !9, i64 0}
!19 = !{!20, !8, i64 0}
!20 = !{!"otherName_st", !8, i64 0, !8, i64 8}
!21 = !{!20, !8, i64 8}
!22 = !{!23, !17, i64 0}
!23 = !{!"asn1_type_st", !17, i64 0, !9, i64 8}
!24 = !{!25, !8, i64 8}
!25 = !{!"asn1_string_st", !17, i64 0, !17, i64 4, !8, i64 8, !26, i64 16}
!26 = !{!"long", !9, i64 0}
!27 = !{!25, !17, i64 0}
!28 = distinct !{!28, !5}
!29 = !{!30, !17, i64 0}
!30 = !{!"v3_ext_ctx", !17, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56}
!31 = !{!30, !8, i64 8}
!32 = distinct !{!32, !5}
!33 = !{!30, !8, i64 16}
!34 = !{!30, !8, i64 24}
!35 = distinct !{!35, !5}
