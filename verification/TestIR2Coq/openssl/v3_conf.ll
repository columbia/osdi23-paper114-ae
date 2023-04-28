; ModuleID = 'crypto/x509/v3_conf.c'
source_filename = "crypto/x509/v3_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X509V3_CONF_METHOD_st = type { i8* (i8*, i8*, i8*)*, %struct.stack_st_CONF_VALUE* (i8*, i8*)*, void (i8*, i8*)*, void (i8*, %struct.stack_st_CONF_VALUE*)* }
%struct.stack_st_CONF_VALUE = type opaque
%struct.X509_extension_st = type opaque
%struct.conf_st = type { %struct.conf_method_st*, i8*, %struct.lhash_st_CONF_VALUE*, i32, i32, i8*, %struct.ossl_lib_ctx_st* }
%struct.conf_method_st = type { i8*, %struct.conf_st* (%struct.conf_method_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*, %struct.bio_st*, i64*)*, i32 (%struct.conf_st*, %struct.bio_st*)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8*, i64*)* }
%struct.bio_st = type opaque
%struct.lhash_st_CONF_VALUE = type { %union.lh_CONF_VALUE_dummy }
%union.lh_CONF_VALUE_dummy = type { i8* }
%struct.ossl_lib_ctx_st = type opaque
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
%struct.evp_pkey_st = type opaque
%struct.v3_ext_method = type { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* }
%struct.ASN1_ITEM_st = type opaque
%struct.stack_st = type opaque
%struct.ASN1_VALUE_st = type opaque
%struct.CONF_VALUE = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [22 x i8] c"crypto/x509/v3_conf.c\00", align 1
@__func__.X509V3_EXT_i2d = private unnamed_addr constant [15 x i8] c"X509V3_EXT_i2d\00", align 1
@__func__.X509V3_get_string = private unnamed_addr constant [18 x i8] c"X509V3_get_string\00", align 1
@__func__.X509V3_get_section = private unnamed_addr constant [19 x i8] c"X509V3_get_section\00", align 1
@__func__.X509V3_set_nconf = private unnamed_addr constant [17 x i8] c"X509V3_set_nconf\00", align 1
@nconf_method = internal global %struct.X509V3_CONF_METHOD_st { i8* (i8*, i8*, i8*)* @nconf_get_string, %struct.stack_st_CONF_VALUE* (i8*, i8*)* @nconf_get_section, void (i8*, i8*)* null, void (i8*, %struct.stack_st_CONF_VALUE*)* null }, align 8
@__func__.X509V3_set_ctx = private unnamed_addr constant [15 x i8] c"X509V3_set_ctx\00", align 1
@__func__.X509V3_set_issuer_pkey = private unnamed_addr constant [23 x i8] c"X509V3_set_issuer_pkey\00", align 1
@__func__.X509V3_set_conf_lhash = private unnamed_addr constant [22 x i8] c"X509V3_set_conf_lhash\00", align 1
@conf_lhash_method = internal global %struct.X509V3_CONF_METHOD_st { i8* (i8*, i8*, i8*)* @conf_lhash_get_string, %struct.stack_st_CONF_VALUE* (i8*, i8*)* @conf_lhash_get_section, void (i8*, i8*)* null, void (i8*, %struct.stack_st_CONF_VALUE*)* null }, align 8
@__func__.X509V3_EXT_nconf_int = private unnamed_addr constant [21 x i8] c"X509V3_EXT_nconf_int\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"section=%s, name=%s, value=%s\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"name=%s, value=%s\00", align 1
@__func__.do_ext_nconf = private unnamed_addr constant [13 x i8] c"do_ext_nconf\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"name=%s,section=%s\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"name=%s\00", align 1
@__func__.do_ext_i2d = private unnamed_addr constant [11 x i8] c"do_ext_i2d\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"critical,\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"DER:\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"ASN1:\00", align 1
@__func__.v3_generic_extension = private unnamed_addr constant [21 x i8] c"v3_generic_extension\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"value=%s\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.X509_extension_st* @X509V3_EXT_nconf(%struct.conf_st* noundef %conf, %struct.v3_ext_ctx* noundef %ctx, i8* noundef %name, i8* noundef %value) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.X509_extension_st* @X509V3_EXT_nconf_int(%struct.conf_st* noundef %conf, %struct.v3_ext_ctx* noundef %ctx, i8* noundef null, i8* noundef %name, i8* noundef %value) #5
  ret %struct.X509_extension_st* %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.X509_extension_st* @X509V3_EXT_nconf_int(%struct.conf_st* noundef %conf, %struct.v3_ext_ctx* noundef %ctx, i8* noundef %section, i8* noundef %name, i8* noundef %value) unnamed_addr #0 {
entry:
  %value.addr = alloca i8*, align 8
  store i8* %value, i8** %value.addr, align 8, !tbaa !4
  %call = call fastcc i32 @v3_check_critical(i8** noundef nonnull %value.addr) #5
  %call1 = call fastcc i32 @v3_check_generic(i8** noundef nonnull %value.addr) #5
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i8*, i8** %value.addr, align 8, !tbaa !4
  %call2 = tail call fastcc %struct.X509_extension_st* @v3_generic_extension(i8* noundef %name, i8* noundef %0, i32 noundef %call, i32 noundef %call1, %struct.v3_ext_ctx* noundef %ctx) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @OBJ_sn2nid(i8* noundef %name) #6
  %1 = load i8*, i8** %value.addr, align 8, !tbaa !4
  %call4 = tail call fastcc %struct.X509_extension_st* @do_ext_nconf(%struct.conf_st* noundef %conf, %struct.v3_ext_ctx* noundef %ctx, i32 noundef %call3, i32 noundef %call, i8* noundef %1) #5
  %tobool5.not = icmp eq %struct.X509_extension_st* %call4, null
  br i1 %tobool5.not, label %if.then6, label %cleanup

if.then6:                                         ; preds = %if.end
  %cmp.not = icmp eq i8* %section, null
  tail call void @ERR_new() #6
  br i1 %cmp.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.X509V3_EXT_nconf_int, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 128, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* noundef nonnull %section, i8* noundef %name, i8* noundef %1) #6
  br label %cleanup

if.else:                                          ; preds = %if.then6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.X509V3_EXT_nconf_int, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 128, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* noundef %name, i8* noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else, %if.then7, %if.then
  %retval.0 = phi %struct.X509_extension_st* [ %call2, %if.then ], [ null, %if.then7 ], [ null, %if.else ], [ %call4, %if.end ]
  ret %struct.X509_extension_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_extension_st* @X509V3_EXT_nconf_nid(%struct.conf_st* noundef %conf, %struct.v3_ext_ctx* noundef %ctx, i32 noundef %ext_nid, i8* noundef %value) local_unnamed_addr #0 {
entry:
  %value.addr = alloca i8*, align 8
  store i8* %value, i8** %value.addr, align 8, !tbaa !4
  %call = call fastcc i32 @v3_check_critical(i8** noundef nonnull %value.addr) #5
  %call1 = call fastcc i32 @v3_check_generic(i8** noundef nonnull %value.addr) #5
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call i8* @OBJ_nid2sn(i32 noundef %ext_nid) #6
  %0 = load i8*, i8** %value.addr, align 8, !tbaa !4
  %call3 = tail call fastcc %struct.X509_extension_st* @v3_generic_extension(i8* noundef %call2, i8* noundef %0, i32 noundef %call, i32 noundef %call1, %struct.v3_ext_ctx* noundef %ctx) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %value.addr, align 8, !tbaa !4
  %call4 = tail call fastcc %struct.X509_extension_st* @do_ext_nconf(%struct.conf_st* noundef %conf, %struct.v3_ext_ctx* noundef %ctx, i32 noundef %ext_nid, i32 noundef %call, i8* noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.X509_extension_st* [ %call3, %if.then ], [ %call4, %if.end ]
  ret %struct.X509_extension_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @v3_check_critical(i8** nocapture noundef %value) unnamed_addr #0 {
entry:
  %0 = load i8*, i8** %value, align 8, !tbaa !4
  %call = tail call i64 @strlen(i8* noundef %0) #7
  %cmp = icmp ult i64 %call, 9
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @strncmp(i8* noundef %0, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i64 noundef 9) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 9
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %if.end
  %p.0 = phi i8* [ %add.ptr, %if.end ], [ %incdec.ptr, %while.cond ]
  %1 = load i8, i8* %p.0, align 1, !tbaa !8
  %conv = sext i8 %1 to i32
  %call2 = tail call i32 @ossl_ctype_check(i32 noundef %conv, i32 noundef 8) #6
  %tobool3.not = icmp eq i32 %call2, 0
  %incdec.ptr = getelementptr inbounds i8, i8* %p.0, i64 1
  br i1 %tobool3.not, label %while.end, label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  store i8* %p.0, i8** %value, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %while.end
  %retval.0 = phi i32 [ 1, %while.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @v3_check_generic(i8** nocapture noundef %value) unnamed_addr #0 {
entry:
  %0 = load i8*, i8** %value, align 8, !tbaa !4
  %call = tail call i64 @strlen(i8* noundef %0) #7
  %cmp = icmp ugt i64 %call, 3
  br i1 %cmp, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @strncmp(i8* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 noundef 4) #7
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.end11, label %if.else

if.else:                                          ; preds = %land.lhs.true
  %cmp4 = icmp ugt i64 %call, 4
  br i1 %cmp4, label %land.lhs.true5, label %cleanup

land.lhs.true5:                                   ; preds = %if.else
  %call6 = tail call i32 @strncmp(i8* noundef %0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 noundef 5) #7
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.end11, label %cleanup

if.end11:                                         ; preds = %land.lhs.true5, %land.lhs.true
  %.sink = phi i64 [ 4, %land.lhs.true ], [ 5, %land.lhs.true5 ]
  %gen_type.0 = phi i32 [ 1, %land.lhs.true ], [ 2, %land.lhs.true5 ]
  %add.ptr9 = getelementptr inbounds i8, i8* %0, i64 %.sink
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %if.end11
  %p.1 = phi i8* [ %add.ptr9, %if.end11 ], [ %incdec.ptr, %while.cond ]
  %1 = load i8, i8* %p.1, align 1, !tbaa !8
  %conv = sext i8 %1 to i32
  %call12 = tail call i32 @ossl_ctype_check(i32 noundef %conv, i32 noundef 8) #6
  %tobool.not = icmp eq i32 %call12, 0
  %incdec.ptr = getelementptr inbounds i8, i8* %p.1, i64 1
  br i1 %tobool.not, label %while.end, label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  store i8* %p.1, i8** %value, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.else, %land.lhs.true5, %while.end
  %retval.0 = phi i32 [ %gen_type.0, %while.end ], [ 0, %land.lhs.true5 ], [ 0, %if.else ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.X509_extension_st* @v3_generic_extension(i8* noundef %ext, i8* noundef %value, i32 noundef %crit, i32 noundef %gen_type, %struct.v3_ext_ctx* noundef %ctx) unnamed_addr #0 {
entry:
  %ext_len = alloca i64, align 8
  %0 = bitcast i64* %ext_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store i64 0, i64* %ext_len, align 8, !tbaa !12
  %call = tail call %struct.asn1_object_st* @OBJ_txt2obj(i8* noundef %ext, i32 noundef 0) #6
  %cmp = icmp eq %struct.asn1_object_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 245, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.v3_generic_extension, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 115, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* noundef %ext) #6
  br label %err

if.end:                                           ; preds = %entry
  switch i32 %gen_type, label %if.then10 [
    i32 1, label %if.then2
    i32 2, label %if.then5
  ]

if.then2:                                         ; preds = %if.end
  %call3 = call i8* @OPENSSL_hexstr2buf(i8* noundef %value, i64* noundef nonnull %ext_len) #6
  br label %if.end8

if.then5:                                         ; preds = %if.end
  %call6 = call fastcc i8* @generic_asn1(i8* noundef %value, %struct.v3_ext_ctx* noundef %ctx, i64* noundef nonnull %ext_len) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.then2
  %ext_der.0 = phi i8* [ %call3, %if.then2 ], [ %call6, %if.then5 ]
  %cmp9 = icmp eq i8* %ext_der.0, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end, %if.end8
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 256, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.v3_generic_extension, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 116, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* noundef %value) #6
  br label %err

if.end11:                                         ; preds = %if.end8
  %call12 = call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #6
  %cmp13 = icmp eq %struct.asn1_string_st* %call12, null
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 262, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.v3_generic_extension, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #6
  br label %err

if.end15:                                         ; preds = %if.end11
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call12, i64 0, i32 2
  store i8* %ext_der.0, i8** %data, align 8, !tbaa !14
  %1 = load i64, i64* %ext_len, align 8, !tbaa !12
  %conv = trunc i64 %1 to i32
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call12, i64 0, i32 0
  store i32 %conv, i32* %length, align 8, !tbaa !17
  %call16 = call %struct.X509_extension_st* @X509_EXTENSION_create_by_OBJ(%struct.X509_extension_st** noundef null, %struct.asn1_object_st* noundef nonnull %call, i32 noundef %crit, %struct.asn1_string_st* noundef nonnull %call12) #6
  br label %err

err:                                              ; preds = %if.end15, %if.then14, %if.then10, %if.then
  %ext_der.1 = phi i8* [ null, %if.then ], [ null, %if.then10 ], [ %ext_der.0, %if.then14 ], [ null, %if.end15 ]
  %oct.0 = phi %struct.asn1_string_st* [ null, %if.then ], [ null, %if.then10 ], [ null, %if.then14 ], [ %call12, %if.end15 ]
  %extension.0 = phi %struct.X509_extension_st* [ null, %if.then ], [ null, %if.then10 ], [ null, %if.then14 ], [ %call16, %if.end15 ]
  call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %call) #6
  call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %oct.0) #6
  call void @CRYPTO_free(i8* noundef %ext_der.1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 275) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret %struct.X509_extension_st* %extension.0
}

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.X509_extension_st* @do_ext_nconf(%struct.conf_st* noundef %conf, %struct.v3_ext_ctx* noundef %ctx, i32 noundef %ext_nid, i32 noundef %crit, i8* noundef %value) unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %ext_nid, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.do_ext_nconf, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 130, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call %struct.v3_ext_method* @X509V3_EXT_get_nid(i32 noundef %ext_nid) #6
  %cmp1 = icmp eq %struct.v3_ext_method* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.do_ext_nconf, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 129, i8* noundef null) #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %v2i = getelementptr inbounds %struct.v3_ext_method, %struct.v3_ext_method* %call, i64 0, i32 10
  %0 = load i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)** %v2i, align 8, !tbaa !18
  %tobool.not = icmp eq i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* %0, null
  br i1 %tobool.not, label %if.else39, label %if.then4

if.then4:                                         ; preds = %if.end3
  %1 = load i8, i8* %value, align 1, !tbaa !8
  %cmp5 = icmp eq i8 %1, 64
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then4
  %add.ptr = getelementptr inbounds i8, i8* %value, i64 1
  %call8 = tail call %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef %conf, i8* noundef nonnull %add.ptr) #6
  br label %if.end10

if.else:                                          ; preds = %if.then4
  %call9 = tail call %struct.stack_st_CONF_VALUE* @X509V3_parse_list(i8* noundef nonnull %value) #6
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then7
  %nval.0 = phi %struct.stack_st_CONF_VALUE* [ %call8, %if.then7 ], [ %call9, %if.else ]
  %cmp11 = icmp eq %struct.stack_st_CONF_VALUE* %nval.0, null
  br i1 %cmp11, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end10
  %call13 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef nonnull %nval.0) #5
  %call14 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call13) #6
  %cmp15 = icmp slt i32 %call14, 1
  br i1 %cmp15, label %if.then17, label %if.end26

if.then17:                                        ; preds = %lor.lhs.false, %if.end10
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 102, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.do_ext_nconf, i64 0, i64 0)) #6
  %call18 = tail call i8* @OBJ_nid2sn(i32 noundef %ext_nid) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 105, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* noundef %call18, i8* noundef nonnull %value) #6
  %2 = load i8, i8* %value, align 1, !tbaa !8
  %cmp20.not = icmp eq i8 %2, 64
  br i1 %cmp20.not, label %cleanup, label %if.then22

if.then22:                                        ; preds = %if.then17
  %call23 = tail call fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %nval.0) #5
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call23, void (i8*)* noundef bitcast (void (%struct.CONF_VALUE*)* @X509V3_conf_free to void (i8*)*)) #6
  br label %cleanup

if.end26:                                         ; preds = %lor.lhs.false
  %3 = load i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)** %v2i, align 8, !tbaa !18
  %call28 = tail call i8* %3(%struct.v3_ext_method* noundef nonnull %call, %struct.v3_ext_ctx* noundef %ctx, %struct.stack_st_CONF_VALUE* noundef nonnull %nval.0) #6
  %4 = load i8, i8* %value, align 1, !tbaa !8
  %cmp30.not = icmp eq i8 %4, 64
  br i1 %cmp30.not, label %if.end35, label %if.then32

if.then32:                                        ; preds = %if.end26
  %call33 = tail call fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef nonnull %nval.0) #5
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call33, void (i8*)* noundef bitcast (void (%struct.CONF_VALUE*)* @X509V3_conf_free to void (i8*)*)) #6
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end26
  %tobool36.not = icmp eq i8* %call28, null
  br i1 %tobool36.not, label %cleanup, label %if.end66

if.else39:                                        ; preds = %if.end3
  %s2i = getelementptr inbounds %struct.v3_ext_method, %struct.v3_ext_method* %call, i64 0, i32 8
  %5 = load i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)** %s2i, align 8, !tbaa !20
  %tobool40.not = icmp eq i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* %5, null
  br i1 %tobool40.not, label %if.else48, label %if.then41

if.then41:                                        ; preds = %if.else39
  %call43 = tail call i8* %5(%struct.v3_ext_method* noundef nonnull %call, %struct.v3_ext_ctx* noundef %ctx, i8* noundef %value) #6
  %cmp44 = icmp eq i8* %call43, null
  br i1 %cmp44, label %cleanup, label %if.end66

if.else48:                                        ; preds = %if.else39
  %r2i = getelementptr inbounds %struct.v3_ext_method, %struct.v3_ext_method* %call, i64 0, i32 12
  %6 = load i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)** %r2i, align 8, !tbaa !21
  %tobool49.not = icmp eq i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* %6, null
  br i1 %tobool49.not, label %if.else62, label %if.then50

if.then50:                                        ; preds = %if.else48
  %db = getelementptr inbounds %struct.v3_ext_ctx, %struct.v3_ext_ctx* %ctx, i64 0, i32 6
  %7 = load i8*, i8** %db, align 8, !tbaa !22
  %tobool51.not = icmp eq i8* %7, null
  br i1 %tobool51.not, label %if.then54, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %if.then50
  %db_meth = getelementptr inbounds %struct.v3_ext_ctx, %struct.v3_ext_ctx* %ctx, i64 0, i32 5
  %8 = load %struct.X509V3_CONF_METHOD_st*, %struct.X509V3_CONF_METHOD_st** %db_meth, align 8, !tbaa !24
  %tobool53.not = icmp eq %struct.X509V3_CONF_METHOD_st* %8, null
  br i1 %tobool53.not, label %if.then54, label %if.end55

if.then54:                                        ; preds = %lor.lhs.false52, %if.then50
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 118, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.do_ext_nconf, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 136, i8* noundef null) #6
  br label %cleanup

if.end55:                                         ; preds = %lor.lhs.false52
  %call57 = tail call i8* %6(%struct.v3_ext_method* noundef nonnull %call, %struct.v3_ext_ctx* noundef nonnull %ctx, i8* noundef %value) #6
  %cmp58 = icmp eq i8* %call57, null
  br i1 %cmp58, label %cleanup, label %if.end66

if.else62:                                        ; preds = %if.else48
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 124, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.do_ext_nconf, i64 0, i64 0)) #6
  %call63 = tail call i8* @OBJ_nid2sn(i32 noundef %ext_nid) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 103, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* noundef %call63) #6
  br label %cleanup

if.end66:                                         ; preds = %if.then41, %if.end55, %if.end35
  %ext_struc.0 = phi i8* [ %call28, %if.end35 ], [ %call43, %if.then41 ], [ %call57, %if.end55 ]
  %call67 = tail call fastcc %struct.X509_extension_st* @do_ext_i2d(%struct.v3_ext_method* noundef nonnull %call, i32 noundef %ext_nid, i32 noundef %crit, i8* noundef nonnull %ext_struc.0) #5
  %it = getelementptr inbounds %struct.v3_ext_method, %struct.v3_ext_method* %call, i64 0, i32 2
  %9 = load %struct.ASN1_ITEM_st* ()*, %struct.ASN1_ITEM_st* ()** %it, align 8, !tbaa !25
  %tobool68.not = icmp eq %struct.ASN1_ITEM_st* ()* %9, null
  br i1 %tobool68.not, label %if.else72, label %if.then69

if.then69:                                        ; preds = %if.end66
  %10 = bitcast i8* %ext_struc.0 to %struct.ASN1_VALUE_st*
  %call71 = tail call %struct.ASN1_ITEM_st* %9() #6
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %10, %struct.ASN1_ITEM_st* noundef %call71) #6
  br label %cleanup

if.else72:                                        ; preds = %if.end66
  %ext_free = getelementptr inbounds %struct.v3_ext_method, %struct.v3_ext_method* %call, i64 0, i32 4
  %11 = load void (i8*)*, void (i8*)** %ext_free, align 8, !tbaa !26
  tail call void %11(i8* noundef nonnull %ext_struc.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then69, %if.else72, %if.end55, %if.then41, %if.end35, %if.then17, %if.then22, %if.else62, %if.then54, %if.then2, %if.then
  %retval.0 = phi %struct.X509_extension_st* [ null, %if.then ], [ null, %if.then2 ], [ null, %if.then54 ], [ null, %if.else62 ], [ null, %if.then22 ], [ null, %if.then17 ], [ null, %if.end35 ], [ null, %if.then41 ], [ null, %if.end55 ], [ %call67, %if.else72 ], [ %call67, %if.then69 ]
  ret %struct.X509_extension_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define %struct.X509_extension_st* @X509V3_EXT_i2d(i32 noundef %ext_nid, i32 noundef %crit, i8* noundef %ext_struc) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.v3_ext_method* @X509V3_EXT_get_nid(i32 noundef %ext_nid) #6
  %cmp = icmp eq %struct.v3_ext_method* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 192, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.X509V3_EXT_i2d, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 129, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc %struct.X509_extension_st* @do_ext_i2d(%struct.v3_ext_method* noundef nonnull %call, i32 noundef %ext_nid, i32 noundef %crit, i8* noundef %ext_struc) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.X509_extension_st* [ null, %if.then ], [ %call1, %if.end ]
  ret %struct.X509_extension_st* %retval.0
}

declare %struct.v3_ext_method* @X509V3_EXT_get_nid(i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.X509_extension_st* @do_ext_i2d(%struct.v3_ext_method* nocapture noundef readonly %method, i32 noundef %ext_nid, i32 noundef %crit, i8* noundef %ext_struc) unnamed_addr #0 {
entry:
  %ext_der = alloca i8*, align 8
  %p = alloca i8*, align 8
  %0 = bitcast i8** %ext_der to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store i8* null, i8** %ext_der, align 8, !tbaa !4
  %it = getelementptr inbounds %struct.v3_ext_method, %struct.v3_ext_method* %method, i64 0, i32 2
  %1 = load %struct.ASN1_ITEM_st* ()*, %struct.ASN1_ITEM_st* ()** %it, align 8, !tbaa !25
  %tobool.not = icmp eq %struct.ASN1_ITEM_st* ()* %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = bitcast i8* %ext_struc to %struct.ASN1_VALUE_st*
  %call = tail call %struct.ASN1_ITEM_st* %1() #6
  %call2 = call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %2, i8** noundef nonnull %ext_der, %struct.ASN1_ITEM_st* noundef %call) #6
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %merr, label %if.end15

if.else:                                          ; preds = %entry
  %3 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8
  %i2d = getelementptr inbounds %struct.v3_ext_method, %struct.v3_ext_method* %method, i64 0, i32 6
  %4 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** %i2d, align 8, !tbaa !27
  %call4 = tail call i32 %4(i8* noundef %ext_struc, i8** noundef null) #6
  %cmp5 = icmp slt i32 %call4, 1
  br i1 %cmp5, label %cleanup.thread, label %if.end7

if.end7:                                          ; preds = %if.else
  %conv48 = zext i32 %call4 to i64
  %call8 = tail call i8* @CRYPTO_malloc(i64 noundef %conv48, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 159) #6
  store i8* %call8, i8** %ext_der, align 8, !tbaa !4
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.else, %if.end7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8
  br label %merr

cleanup:                                          ; preds = %if.end7
  store i8* %call8, i8** %p, align 8, !tbaa !4
  %5 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** %i2d, align 8, !tbaa !27
  %call14 = call i32 %5(i8* noundef %ext_struc, i8** noundef nonnull %p) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8
  br label %if.end15

if.end15:                                         ; preds = %cleanup, %if.then
  %ext_len.0 = phi i32 [ %call2, %if.then ], [ %call4, %cleanup ]
  %call16 = call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #6
  %cmp17 = icmp eq %struct.asn1_string_st* %call16, null
  br i1 %cmp17, label %merr, label %if.end20

if.end20:                                         ; preds = %if.end15
  %6 = load i8*, i8** %ext_der, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call16, i64 0, i32 2
  store i8* %6, i8** %data, align 8, !tbaa !14
  store i8* null, i8** %ext_der, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call16, i64 0, i32 0
  store i32 %ext_len.0, i32* %length, align 8, !tbaa !17
  %call21 = call %struct.X509_extension_st* @X509_EXTENSION_create_by_NID(%struct.X509_extension_st** noundef null, i32 noundef %ext_nid, i32 noundef %crit, %struct.asn1_string_st* noundef nonnull %call16) #6
  %tobool22.not = icmp eq %struct.X509_extension_st* %call21, null
  br i1 %tobool22.not, label %merr, label %if.end24

if.end24:                                         ; preds = %if.end20
  call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef nonnull %call16) #6
  br label %cleanup25

merr:                                             ; preds = %cleanup.thread, %if.end20, %if.end15, %if.then
  %ext_oct.0 = phi %struct.asn1_string_st* [ null, %if.then ], [ null, %if.end15 ], [ %call16, %if.end20 ], [ null, %cleanup.thread ]
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 178, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.do_ext_i2d, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #6
  %7 = load i8*, i8** %ext_der, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %7, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 179) #6
  call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %ext_oct.0) #6
  br label %cleanup25

cleanup25:                                        ; preds = %merr, %if.end24
  %retval.0 = phi %struct.X509_extension_st* [ null, %merr ], [ %call21, %if.end24 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret %struct.X509_extension_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509V3_EXT_add_nconf_sk(%struct.conf_st* noundef %conf, %struct.v3_ext_ctx* noundef %ctx, i8* noundef %section, %struct.stack_st_X509_EXTENSION** noundef %sk) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef %conf, i8* noundef %section) #6
  %cmp = icmp eq %struct.stack_st_CONF_VALUE* %call, null
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef nonnull %call) #5
  %call240 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #6
  %cmp341 = icmp sgt i32 %call240, 0
  br i1 %cmp341, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cmp11.not = icmp eq %struct.stack_st_X509_EXTENSION** %sk, null
  %flags = getelementptr inbounds %struct.v3_ext_ctx, %struct.v3_ext_ctx* %ctx, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end20
  %i.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end20 ]
  %call5 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call1, i32 noundef %i.042) #6
  %section6 = bitcast i8* %call5 to i8**
  %0 = load i8*, i8** %section6, align 8, !tbaa !28
  %name = getelementptr inbounds i8, i8* %call5, i64 8
  %1 = bitcast i8* %name to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !30
  %value = getelementptr inbounds i8, i8* %call5, i64 16
  %3 = bitcast i8* %value to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !31
  %call7 = tail call fastcc %struct.X509_extension_st* @X509V3_EXT_nconf_int(%struct.conf_st* noundef %conf, %struct.v3_ext_ctx* noundef %ctx, i8* noundef %0, i8* noundef %2, i8* noundef %4) #5
  %cmp8 = icmp eq %struct.X509_extension_st* %call7, null
  br i1 %cmp8, label %cleanup, label %if.end10

if.end10:                                         ; preds = %for.body
  br i1 %cmp11.not, label %if.end20, label %if.then12

if.then12:                                        ; preds = %if.end10
  %5 = load i32, i32* %flags, align 8, !tbaa !32
  %cmp13 = icmp eq i32 %5, 2
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then12
  %6 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %sk, align 8, !tbaa !4
  tail call fastcc void @delete_ext(%struct.stack_st_X509_EXTENSION* noundef %6, %struct.X509_extension_st* noundef nonnull %call7) #5
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.then12
  %call16 = tail call %struct.stack_st_X509_EXTENSION* @X509v3_add_ext(%struct.stack_st_X509_EXTENSION** noundef nonnull %sk, %struct.X509_extension_st* noundef nonnull %call7, i32 noundef -1) #6
  %cmp17 = icmp eq %struct.stack_st_X509_EXTENSION* %call16, null
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end15
  tail call void @X509_EXTENSION_free(%struct.X509_extension_st* noundef nonnull %call7) #6
  br label %cleanup

if.end20:                                         ; preds = %if.end15, %if.end10
  tail call void @X509_EXTENSION_free(%struct.X509_extension_st* noundef nonnull %call7) #6
  %inc = add nuw nsw i32 %i.042, 1
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #6
  %cmp3 = icmp slt i32 %inc, %call2
  br i1 %cmp3, label %for.body, label %cleanup, !llvm.loop !33

cleanup:                                          ; preds = %for.body, %if.end20, %for.cond.preheader, %entry, %if.then18
  %retval.0 = phi i32 [ 0, %if.then18 ], [ 0, %entry ], [ 1, %for.cond.preheader ], [ 0, %for.body ], [ 1, %if.end20 ]
  ret i32 %retval.0
}

declare %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @delete_ext(%struct.stack_st_X509_EXTENSION* noundef %sk, %struct.X509_extension_st* noundef %dext) unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_object_st* @X509_EXTENSION_get_object(%struct.X509_extension_st* noundef %dext) #6
  %call16 = tail call i32 @X509v3_get_ext_by_OBJ(%struct.stack_st_X509_EXTENSION* noundef %sk, %struct.asn1_object_st* noundef %call, i32 noundef -1) #6
  %cmp7 = icmp sgt i32 %call16, -1
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.body
  %call18 = phi i32 [ %call1, %while.body ], [ %call16, %entry ]
  %call2 = tail call %struct.X509_extension_st* @X509v3_delete_ext(%struct.stack_st_X509_EXTENSION* noundef %sk, i32 noundef %call18) #6
  tail call void @X509_EXTENSION_free(%struct.X509_extension_st* noundef %call2) #6
  %call1 = tail call i32 @X509v3_get_ext_by_OBJ(%struct.stack_st_X509_EXTENSION* noundef %sk, %struct.asn1_object_st* noundef %call, i32 noundef -1) #6
  %cmp = icmp sgt i32 %call1, -1
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !34

while.end:                                        ; preds = %while.body, %entry
  ret void
}

declare %struct.stack_st_X509_EXTENSION* @X509v3_add_ext(%struct.stack_st_X509_EXTENSION** noundef, %struct.X509_extension_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @X509_EXTENSION_free(%struct.X509_extension_st* noundef) #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509V3_EXT_add_nconf(%struct.conf_st* noundef %conf, %struct.v3_ext_ctx* noundef %ctx, i8* noundef %section, %struct.x509_st* noundef %cert) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.x509_st* %cert, null
  %extensions = getelementptr inbounds %struct.x509_st, %struct.x509_st* %cert, i64 0, i32 0, i32 9
  %spec.select = select i1 %cmp.not, %struct.stack_st_X509_EXTENSION** null, %struct.stack_st_X509_EXTENSION** %extensions
  %call = tail call i32 @X509V3_EXT_add_nconf_sk(%struct.conf_st* noundef %conf, %struct.v3_ext_ctx* noundef %ctx, i8* noundef %section, %struct.stack_st_X509_EXTENSION** noundef %spec.select) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509V3_EXT_CRL_add_nconf(%struct.conf_st* noundef %conf, %struct.v3_ext_ctx* noundef %ctx, i8* noundef %section, %struct.X509_crl_st* noundef %crl) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.X509_crl_st* %crl, null
  %extensions = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 0, i32 6
  %spec.select = select i1 %cmp.not, %struct.stack_st_X509_EXTENSION** null, %struct.stack_st_X509_EXTENSION** %extensions
  %call = tail call i32 @X509V3_EXT_add_nconf_sk(%struct.conf_st* noundef %conf, %struct.v3_ext_ctx* noundef %ctx, i8* noundef %section, %struct.stack_st_X509_EXTENSION** noundef %spec.select) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509V3_EXT_REQ_add_nconf(%struct.conf_st* noundef %conf, %struct.v3_ext_ctx* noundef %ctx, i8* noundef %section, %struct.X509_req_st* noundef %req) local_unnamed_addr #0 {
entry:
  %exts = alloca %struct.stack_st_X509_EXTENSION*, align 8
  %0 = bitcast %struct.stack_st_X509_EXTENSION** %exts to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store %struct.stack_st_X509_EXTENSION* null, %struct.stack_st_X509_EXTENSION** %exts, align 8, !tbaa !4
  %call = call i32 @X509V3_EXT_add_nconf_sk(%struct.conf_st* noundef %conf, %struct.v3_ext_ctx* noundef %ctx, i8* noundef %section, %struct.stack_st_X509_EXTENSION** noundef nonnull %exts) #5
  %tobool = icmp ne i32 %call, 0
  %cmp = icmp ne %struct.X509_req_st* %req, null
  %or.cond = and i1 %cmp, %tobool
  %1 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %exts, align 8
  %cmp2 = icmp ne %struct.stack_st_X509_EXTENSION* %1, null
  %or.cond6 = select i1 %or.cond, i1 %cmp2, i1 false
  br i1 %or.cond6, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call i32 @X509_REQ_add_extensions(%struct.X509_req_st* noundef nonnull %req, %struct.stack_st_X509_EXTENSION* noundef nonnull %1) #6
  %.pre = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %exts, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = phi %struct.stack_st_X509_EXTENSION* [ %.pre, %if.then ], [ %1, %entry ]
  %ret.0 = phi i32 [ %call3, %if.then ], [ %call, %entry ]
  %call4 = call fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef %2) #5
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call4, void (i8*)* noundef bitcast (void (%struct.X509_extension_st*)* @X509_EXTENSION_free to void (i8*)*)) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %ret.0
}

declare i32 @X509_REQ_add_extensions(%struct.X509_req_st* noundef, %struct.stack_st_X509_EXTENSION* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_EXTENSION* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i8* @X509V3_get_string(%struct.v3_ext_ctx* nocapture noundef readonly %ctx, i8* noundef %name, i8* noundef %section) local_unnamed_addr #0 {
entry:
  %db = getelementptr inbounds %struct.v3_ext_ctx, %struct.v3_ext_ctx* %ctx, i64 0, i32 6
  %0 = load i8*, i8** %db, align 8, !tbaa !22
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %db_meth = getelementptr inbounds %struct.v3_ext_ctx, %struct.v3_ext_ctx* %ctx, i64 0, i32 5
  %1 = load %struct.X509V3_CONF_METHOD_st*, %struct.X509V3_CONF_METHOD_st** %db_meth, align 8, !tbaa !24
  %tobool1.not = icmp eq %struct.X509V3_CONF_METHOD_st* %1, null
  br i1 %tobool1.not, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %get_string = getelementptr inbounds %struct.X509V3_CONF_METHOD_st, %struct.X509V3_CONF_METHOD_st* %1, i64 0, i32 0
  %2 = load i8* (i8*, i8*, i8*)*, i8* (i8*, i8*, i8*)** %get_string, align 8, !tbaa !35
  %tobool4.not = icmp eq i8* (i8*, i8*, i8*)* %2, null
  br i1 %tobool4.not, label %if.then, label %if.then8

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 384, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.X509V3_get_string, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 148, i8* noundef null) #6
  br label %return

if.then8:                                         ; preds = %lor.lhs.false2
  %call = tail call i8* %2(i8* noundef nonnull %0, i8* noundef %name, i8* noundef %section) #6
  br label %return

return:                                           ; preds = %if.then8, %if.then
  %retval.0 = phi i8* [ %call, %if.then8 ], [ null, %if.then ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_CONF_VALUE* @X509V3_get_section(%struct.v3_ext_ctx* nocapture noundef readonly %ctx, i8* noundef %section) local_unnamed_addr #0 {
entry:
  %db = getelementptr inbounds %struct.v3_ext_ctx, %struct.v3_ext_ctx* %ctx, i64 0, i32 6
  %0 = load i8*, i8** %db, align 8, !tbaa !22
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %db_meth = getelementptr inbounds %struct.v3_ext_ctx, %struct.v3_ext_ctx* %ctx, i64 0, i32 5
  %1 = load %struct.X509V3_CONF_METHOD_st*, %struct.X509V3_CONF_METHOD_st** %db_meth, align 8, !tbaa !24
  %tobool1.not = icmp eq %struct.X509V3_CONF_METHOD_st* %1, null
  br i1 %tobool1.not, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %get_section = getelementptr inbounds %struct.X509V3_CONF_METHOD_st, %struct.X509V3_CONF_METHOD_st* %1, i64 0, i32 1
  %2 = load %struct.stack_st_CONF_VALUE* (i8*, i8*)*, %struct.stack_st_CONF_VALUE* (i8*, i8*)** %get_section, align 8, !tbaa !37
  %tobool4.not = icmp eq %struct.stack_st_CONF_VALUE* (i8*, i8*)* %2, null
  br i1 %tobool4.not, label %if.then, label %if.then8

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 395, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.X509V3_get_section, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 148, i8* noundef null) #6
  br label %return

if.then8:                                         ; preds = %lor.lhs.false2
  %call = tail call %struct.stack_st_CONF_VALUE* %2(i8* noundef nonnull %0, i8* noundef %section) #6
  br label %return

return:                                           ; preds = %if.then8, %if.then
  %retval.0 = phi %struct.stack_st_CONF_VALUE* [ %call, %if.then8 ], [ null, %if.then ]
  ret %struct.stack_st_CONF_VALUE* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @X509V3_string_free(%struct.v3_ext_ctx* nocapture noundef readonly %ctx, i8* noundef %str) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i8* %str, null
  br i1 %tobool.not, label %if.end5, label %if.end

if.end:                                           ; preds = %entry
  %db_meth = getelementptr inbounds %struct.v3_ext_ctx, %struct.v3_ext_ctx* %ctx, i64 0, i32 5
  %0 = load %struct.X509V3_CONF_METHOD_st*, %struct.X509V3_CONF_METHOD_st** %db_meth, align 8, !tbaa !24
  %free_string = getelementptr inbounds %struct.X509V3_CONF_METHOD_st, %struct.X509V3_CONF_METHOD_st* %0, i64 0, i32 2
  %1 = load void (i8*, i8*)*, void (i8*, i8*)** %free_string, align 8, !tbaa !38
  %tobool1.not = icmp eq void (i8*, i8*)* %1, null
  br i1 %tobool1.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  %db = getelementptr inbounds %struct.v3_ext_ctx, %struct.v3_ext_ctx* %ctx, i64 0, i32 6
  %2 = load i8*, i8** %db, align 8, !tbaa !22
  tail call void %1(i8* noundef %2, i8* noundef nonnull %str) #6
  br label %if.end5

if.end5:                                          ; preds = %entry, %if.then2, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @X509V3_section_free(%struct.v3_ext_ctx* nocapture noundef readonly %ctx, %struct.stack_st_CONF_VALUE* noundef %section) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.stack_st_CONF_VALUE* %section, null
  br i1 %tobool.not, label %if.end5, label %if.end

if.end:                                           ; preds = %entry
  %db_meth = getelementptr inbounds %struct.v3_ext_ctx, %struct.v3_ext_ctx* %ctx, i64 0, i32 5
  %0 = load %struct.X509V3_CONF_METHOD_st*, %struct.X509V3_CONF_METHOD_st** %db_meth, align 8, !tbaa !24
  %free_section = getelementptr inbounds %struct.X509V3_CONF_METHOD_st, %struct.X509V3_CONF_METHOD_st* %0, i64 0, i32 3
  %1 = load void (i8*, %struct.stack_st_CONF_VALUE*)*, void (i8*, %struct.stack_st_CONF_VALUE*)** %free_section, align 8, !tbaa !39
  %tobool1.not = icmp eq void (i8*, %struct.stack_st_CONF_VALUE*)* %1, null
  br i1 %tobool1.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  %db = getelementptr inbounds %struct.v3_ext_ctx, %struct.v3_ext_ctx* %ctx, i64 0, i32 6
  %2 = load i8*, i8** %db, align 8, !tbaa !22
  tail call void %1(i8* noundef %2, %struct.stack_st_CONF_VALUE* noundef nonnull %section) #6
  br label %if.end5

if.end5:                                          ; preds = %entry, %if.then2, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @X509V3_set_nconf(%struct.v3_ext_ctx* noundef writeonly %ctx, %struct.conf_st* noundef %conf) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.v3_ext_ctx* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 439, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.X509V3_set_nconf, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786690, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %db_meth = getelementptr inbounds %struct.v3_ext_ctx, %struct.v3_ext_ctx* %ctx, i64 0, i32 5
  store %struct.X509V3_CONF_METHOD_st* @nconf_method, %struct.X509V3_CONF_METHOD_st** %db_meth, align 8, !tbaa !24
  %db = getelementptr inbounds %struct.v3_ext_ctx, %struct.v3_ext_ctx* %ctx, i64 0, i32 6
  %0 = bitcast i8** %db to %struct.conf_st**
  store %struct.conf_st* %conf, %struct.conf_st** %0, align 8, !tbaa !22
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @X509V3_set_ctx(%struct.v3_ext_ctx* noundef writeonly %ctx, %struct.x509_st* noundef %issuer, %struct.x509_st* noundef %subj, %struct.X509_req_st* noundef %req, %struct.X509_crl_st* noundef %crl, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.v3_ext_ctx* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 450, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.X509V3_set_ctx, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786690, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %flags1 = getelementptr inbounds %struct.v3_ext_ctx, %struct.v3_ext_ctx* %ctx, i64 0, i32 0
  store i32 %flags, i32* %flags1, align 8, !tbaa !32
  %issuer_cert = getelementptr inbounds %struct.v3_ext_ctx, %struct.v3_ext_ctx* %ctx, i64 0, i32 1
  store %struct.x509_st* %issuer, %struct.x509_st** %issuer_cert, align 8, !tbaa !40
  %subject_cert = getelementptr inbounds %struct.v3_ext_ctx, %struct.v3_ext_ctx* %ctx, i64 0, i32 2
  store %struct.x509_st* %subj, %struct.x509_st** %subject_cert, align 8, !tbaa !41
  %subject_req = getelementptr inbounds %struct.v3_ext_ctx, %struct.v3_ext_ctx* %ctx, i64 0, i32 3
  store %struct.X509_req_st* %req, %struct.X509_req_st** %subject_req, align 8, !tbaa !42
  %crl2 = getelementptr inbounds %struct.v3_ext_ctx, %struct.v3_ext_ctx* %ctx, i64 0, i32 4
  store %struct.X509_crl_st* %crl, %struct.X509_crl_st** %crl2, align 8, !tbaa !43
  %db_meth = getelementptr inbounds %struct.v3_ext_ctx, %struct.v3_ext_ctx* %ctx, i64 0, i32 5
  store %struct.X509V3_CONF_METHOD_st* null, %struct.X509V3_CONF_METHOD_st** %db_meth, align 8, !tbaa !24
  %db = getelementptr inbounds %struct.v3_ext_ctx, %struct.v3_ext_ctx* %ctx, i64 0, i32 6
  store i8* null, i8** %db, align 8, !tbaa !22
  %issuer_pkey = getelementptr inbounds %struct.v3_ext_ctx, %struct.v3_ext_ctx* %ctx, i64 0, i32 7
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %issuer_pkey, align 8, !tbaa !44
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509V3_set_issuer_pkey(%struct.v3_ext_ctx* noundef %ctx, %struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.v3_ext_ctx* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 467, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.X509V3_set_issuer_pkey, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786690, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %subject_cert = getelementptr inbounds %struct.v3_ext_ctx, %struct.v3_ext_ctx* %ctx, i64 0, i32 2
  %0 = load %struct.x509_st*, %struct.x509_st** %subject_cert, align 8, !tbaa !41
  %cmp1 = icmp eq %struct.x509_st* %0, null
  %cmp2 = icmp ne %struct.evp_pkey_st* %pkey, null
  %or.cond = and i1 %cmp2, %cmp1
  br i1 %or.cond, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 471, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.X509V3_set_issuer_pkey, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 524550, i8* noundef null) #6
  br label %return

if.end4:                                          ; preds = %if.end
  %issuer_pkey = getelementptr inbounds %struct.v3_ext_ctx, %struct.v3_ext_ctx* %ctx, i64 0, i32 7
  store %struct.evp_pkey_st* %pkey, %struct.evp_pkey_st** %issuer_pkey, align 8, !tbaa !44
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ 1, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_extension_st* @X509V3_EXT_conf(%struct.lhash_st_CONF_VALUE* noundef %conf, %struct.v3_ext_ctx* noundef %ctx, i8* noundef %name, i8* noundef %value) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.conf_st* @NCONF_new(%struct.conf_method_st* noundef null) #6
  %cmp = icmp eq %struct.conf_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @CONF_set_nconf(%struct.conf_st* noundef nonnull %call, %struct.lhash_st_CONF_VALUE* noundef %conf) #6
  %call1 = tail call %struct.X509_extension_st* @X509V3_EXT_nconf(%struct.conf_st* noundef nonnull %call, %struct.v3_ext_ctx* noundef %ctx, i8* noundef %name, i8* noundef %value) #5
  tail call void @CONF_set_nconf(%struct.conf_st* noundef nonnull %call, %struct.lhash_st_CONF_VALUE* noundef null) #6
  tail call void @NCONF_free(%struct.conf_st* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.X509_extension_st* [ %call1, %if.end ], [ null, %entry ]
  ret %struct.X509_extension_st* %retval.0
}

declare %struct.conf_st* @NCONF_new(%struct.conf_method_st* noundef) local_unnamed_addr #2

declare void @CONF_set_nconf(%struct.conf_st* noundef, %struct.lhash_st_CONF_VALUE* noundef) local_unnamed_addr #2

declare void @NCONF_free(%struct.conf_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.X509_extension_st* @X509V3_EXT_conf_nid(%struct.lhash_st_CONF_VALUE* noundef %conf, %struct.v3_ext_ctx* noundef %ctx, i32 noundef %ext_nid, i8* noundef %value) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.conf_st* @NCONF_new(%struct.conf_method_st* noundef null) #6
  %cmp = icmp eq %struct.conf_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @CONF_set_nconf(%struct.conf_st* noundef nonnull %call, %struct.lhash_st_CONF_VALUE* noundef %conf) #6
  %call1 = tail call %struct.X509_extension_st* @X509V3_EXT_nconf_nid(%struct.conf_st* noundef nonnull %call, %struct.v3_ext_ctx* noundef %ctx, i32 noundef %ext_nid, i8* noundef %value) #5
  tail call void @CONF_set_nconf(%struct.conf_st* noundef nonnull %call, %struct.lhash_st_CONF_VALUE* noundef null) #6
  tail call void @NCONF_free(%struct.conf_st* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.X509_extension_st* [ %call1, %if.end ], [ null, %entry ]
  ret %struct.X509_extension_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @X509V3_set_conf_lhash(%struct.v3_ext_ctx* noundef writeonly %ctx, %struct.lhash_st_CONF_VALUE* noundef %lhash) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.v3_ext_ctx* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 530, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.X509V3_set_conf_lhash, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786690, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %db_meth = getelementptr inbounds %struct.v3_ext_ctx, %struct.v3_ext_ctx* %ctx, i64 0, i32 5
  store %struct.X509V3_CONF_METHOD_st* @conf_lhash_method, %struct.X509V3_CONF_METHOD_st** %db_meth, align 8, !tbaa !24
  %db = getelementptr inbounds %struct.v3_ext_ctx, %struct.v3_ext_ctx* %ctx, i64 0, i32 6
  %0 = bitcast i8** %db to %struct.lhash_st_CONF_VALUE**
  store %struct.lhash_st_CONF_VALUE* %lhash, %struct.lhash_st_CONF_VALUE** %0, align 8, !tbaa !22
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509V3_EXT_add_conf(%struct.lhash_st_CONF_VALUE* noundef %conf, %struct.v3_ext_ctx* noundef %ctx, i8* noundef %section, %struct.x509_st* noundef %cert) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.conf_st* @NCONF_new(%struct.conf_method_st* noundef null) #6
  %cmp = icmp eq %struct.conf_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @CONF_set_nconf(%struct.conf_st* noundef nonnull %call, %struct.lhash_st_CONF_VALUE* noundef %conf) #6
  %call1 = tail call i32 @X509V3_EXT_add_nconf(%struct.conf_st* noundef nonnull %call, %struct.v3_ext_ctx* noundef %ctx, i8* noundef %section, %struct.x509_st* noundef %cert) #5
  tail call void @CONF_set_nconf(%struct.conf_st* noundef nonnull %call, %struct.lhash_st_CONF_VALUE* noundef null) #6
  tail call void @NCONF_free(%struct.conf_st* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509V3_EXT_CRL_add_conf(%struct.lhash_st_CONF_VALUE* noundef %conf, %struct.v3_ext_ctx* noundef %ctx, i8* noundef %section, %struct.X509_crl_st* noundef %crl) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.conf_st* @NCONF_new(%struct.conf_method_st* noundef null) #6
  %cmp = icmp eq %struct.conf_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @CONF_set_nconf(%struct.conf_st* noundef nonnull %call, %struct.lhash_st_CONF_VALUE* noundef %conf) #6
  %call1 = tail call i32 @X509V3_EXT_CRL_add_nconf(%struct.conf_st* noundef nonnull %call, %struct.v3_ext_ctx* noundef %ctx, i8* noundef %section, %struct.X509_crl_st* noundef %crl) #5
  tail call void @CONF_set_nconf(%struct.conf_st* noundef nonnull %call, %struct.lhash_st_CONF_VALUE* noundef null) #6
  tail call void @NCONF_free(%struct.conf_st* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509V3_EXT_REQ_add_conf(%struct.lhash_st_CONF_VALUE* noundef %conf, %struct.v3_ext_ctx* noundef %ctx, i8* noundef %section, %struct.X509_req_st* noundef %req) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.conf_st* @NCONF_new(%struct.conf_method_st* noundef null) #6
  %cmp = icmp eq %struct.conf_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @CONF_set_nconf(%struct.conf_st* noundef nonnull %call, %struct.lhash_st_CONF_VALUE* noundef %conf) #6
  %call1 = tail call i32 @X509V3_EXT_REQ_add_nconf(%struct.conf_st* noundef nonnull %call, %struct.v3_ext_ctx* noundef %ctx, i8* noundef %section, %struct.X509_req_st* noundef %req) #5
  tail call void @CONF_set_nconf(%struct.conf_st* noundef nonnull %call, %struct.lhash_st_CONF_VALUE* noundef null) #6
  tail call void @NCONF_free(%struct.conf_st* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @OBJ_sn2nid(i8* noundef) local_unnamed_addr #2

declare %struct.stack_st_CONF_VALUE* @X509V3_parse_list(i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509V3_conf_free(%struct.CONF_VALUE* noundef) #2

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @ASN1_OCTET_STRING_new() local_unnamed_addr #2

declare %struct.X509_extension_st* @X509_EXTENSION_create_by_NID(%struct.X509_extension_st** noundef, i32 noundef, i32 noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i32 @ossl_ctype_check(i32 noundef, i32 noundef) local_unnamed_addr #2

declare %struct.asn1_object_st* @OBJ_txt2obj(i8* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @OPENSSL_hexstr2buf(i8* noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @generic_asn1(i8* noundef %value, %struct.v3_ext_ctx* noundef %ctx, i64* nocapture noundef writeonly %ext_len) unnamed_addr #0 {
entry:
  %ext_der = alloca i8*, align 8
  %0 = bitcast i8** %ext_der to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store i8* null, i8** %ext_der, align 8, !tbaa !4
  %call = tail call %struct.asn1_type_st* @ASN1_generate_v3(i8* noundef %value, %struct.v3_ext_ctx* noundef %ctx) #6
  %cmp = icmp eq %struct.asn1_type_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @i2d_ASN1_TYPE(%struct.asn1_type_st* noundef nonnull %call, i8** noundef nonnull %ext_der) #6
  %conv = sext i32 %call1 to i64
  store i64 %conv, i64* %ext_len, align 8, !tbaa !12
  call void @ASN1_TYPE_free(%struct.asn1_type_st* noundef nonnull %call) #6
  %1 = load i8*, i8** %ext_der, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i8* %retval.0
}

declare %struct.X509_extension_st* @X509_EXTENSION_create_by_OBJ(%struct.X509_extension_st** noundef, %struct.asn1_object_st* noundef, i32 noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare %struct.asn1_type_st* @ASN1_generate_v3(i8* noundef, %struct.v3_ext_ctx* noundef) local_unnamed_addr #2

declare i32 @i2d_ASN1_TYPE(%struct.asn1_type_st* noundef, i8** noundef) local_unnamed_addr #2

declare void @ASN1_TYPE_free(%struct.asn1_type_st* noundef) local_unnamed_addr #2

declare %struct.asn1_object_st* @X509_EXTENSION_get_object(%struct.X509_extension_st* noundef) local_unnamed_addr #2

declare i32 @X509v3_get_ext_by_OBJ(%struct.stack_st_X509_EXTENSION* noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.X509_extension_st* @X509v3_delete_ext(%struct.stack_st_X509_EXTENSION* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i8* @nconf_get_string(i8* noundef %db, i8* noundef %section, i8* noundef %value) #0 {
entry:
  %0 = bitcast i8* %db to %struct.conf_st*
  %call = tail call i8* @NCONF_get_string(%struct.conf_st* noundef %0, i8* noundef %section, i8* noundef %value) #6
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.stack_st_CONF_VALUE* @nconf_get_section(i8* noundef %db, i8* noundef %section) #0 {
entry:
  %0 = bitcast i8* %db to %struct.conf_st*
  %call = tail call %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef %0, i8* noundef %section) #6
  ret %struct.stack_st_CONF_VALUE* %call
}

declare i8* @NCONF_get_string(%struct.conf_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i8* @conf_lhash_get_string(i8* noundef %db, i8* noundef %section, i8* noundef %value) #0 {
entry:
  %0 = bitcast i8* %db to %struct.lhash_st_CONF_VALUE*
  %call = tail call i8* @CONF_get_string(%struct.lhash_st_CONF_VALUE* noundef %0, i8* noundef %section, i8* noundef %value) #6
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.stack_st_CONF_VALUE* @conf_lhash_get_section(i8* noundef %db, i8* noundef %section) #0 {
entry:
  %0 = bitcast i8* %db to %struct.lhash_st_CONF_VALUE*
  %call = tail call %struct.stack_st_CONF_VALUE* @CONF_get_section(%struct.lhash_st_CONF_VALUE* noundef %0, i8* noundef %section) #6
  ret %struct.stack_st_CONF_VALUE* %call
}

declare i8* @CONF_get_string(%struct.lhash_st_CONF_VALUE* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.stack_st_CONF_VALUE* @CONF_get_section(%struct.lhash_st_CONF_VALUE* noundef, i8* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!15, !5, i64 8}
!15 = !{!"asn1_string_st", !16, i64 0, !16, i64 4, !5, i64 8, !13, i64 16}
!16 = !{!"int", !6, i64 0}
!17 = !{!15, !16, i64 0}
!18 = !{!19, !5, i64 72}
!19 = !{!"v3_ext_method", !16, i64 0, !16, i64 4, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96}
!20 = !{!19, !5, i64 56}
!21 = !{!19, !5, i64 88}
!22 = !{!23, !5, i64 48}
!23 = !{!"v3_ext_ctx", !16, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56}
!24 = !{!23, !5, i64 40}
!25 = !{!19, !5, i64 8}
!26 = !{!19, !5, i64 24}
!27 = !{!19, !5, i64 40}
!28 = !{!29, !5, i64 0}
!29 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16}
!30 = !{!29, !5, i64 8}
!31 = !{!29, !5, i64 16}
!32 = !{!23, !16, i64 0}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !10}
!35 = !{!36, !5, i64 0}
!36 = !{!"X509V3_CONF_METHOD_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24}
!37 = !{!36, !5, i64 8}
!38 = !{!36, !5, i64 16}
!39 = !{!36, !5, i64 24}
!40 = !{!23, !5, i64 8}
!41 = !{!23, !5, i64 16}
!42 = !{!23, !5, i64 24}
!43 = !{!23, !5, i64 32}
!44 = !{!23, !5, i64 56}
