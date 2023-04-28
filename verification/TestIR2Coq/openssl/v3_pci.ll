; ModuleID = 'crypto/x509/v3_pci.c'
source_filename = "crypto/x509/v3_pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type opaque
%struct.v3_ext_method = type { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, {}*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* }
%struct.stack_st_CONF_VALUE = type opaque
%struct.v3_ext_ctx = type { i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_req_st*, %struct.X509_crl_st*, %struct.X509V3_CONF_METHOD_st*, i8*, %struct.evp_pkey_st* }
%struct.x509_st = type opaque
%struct.X509_req_st = type opaque
%struct.X509_crl_st = type opaque
%struct.X509V3_CONF_METHOD_st = type { i8* (i8*, i8*, i8*)*, %struct.stack_st_CONF_VALUE* (i8*, i8*)*, void (i8*, i8*)*, void (i8*, %struct.stack_st_CONF_VALUE*)* }
%struct.evp_pkey_st = type opaque
%struct.bio_st = type opaque
%struct.PROXY_CERT_INFO_EXTENSION_st = type { %struct.asn1_string_st*, %struct.PROXY_POLICY_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.PROXY_POLICY_st = type { %struct.asn1_object_st*, %struct.asn1_string_st* }
%struct.asn1_object_st = type opaque
%struct.stack_st = type opaque
%struct.CONF_VALUE = type { i8*, i8*, i8* }

@ossl_v3_pci = local_unnamed_addr constant { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 663, i32 0, %struct.ASN1_ITEM_st* ()* @PROXY_CERT_INFO_EXTENSION_it, i8* ()* null, void (i8*)* null, i8* (i8*, i8**, i64)* null, i32 (i8*, i8**)* null, i8* (%struct.v3_ext_method*, i8*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* null, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* bitcast (i32 (%struct.v3_ext_method*, %struct.PROXY_CERT_INFO_EXTENSION_st*, %struct.bio_st*, i32)* @i2r_pci to i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*), i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* bitcast (%struct.PROXY_CERT_INFO_EXTENSION_st* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* @r2i_pci to i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*), i8* null }, align 8
@.str = private unnamed_addr constant [28 x i8] c"%*sPath Length Constraint: \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"infinite\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"%*sPolicy Language: \00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"\0A%*sPolicy Text: %.*s\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"crypto/x509/v3_pci.c\00", align 1
@__func__.r2i_pci = private unnamed_addr constant [8 x i8] c"r2i_pci\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"section:\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c",name:\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c",value:\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"language\00", align 1
@__func__.process_pci_value = private unnamed_addr constant [18 x i8] c"process_pci_value\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"pathlen\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"policy\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"hex:\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"file:\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"text:\00", align 1

declare %struct.ASN1_ITEM_st* @PROXY_CERT_INFO_EXTENSION_it() #0

; Function Attrs: noinline nounwind uwtable
define internal i32 @i2r_pci(%struct.v3_ext_method* nocapture noundef readnone %method, %struct.PROXY_CERT_INFO_EXTENSION_st* nocapture noundef readonly %pci, %struct.bio_st* noundef %out, i32 noundef %indent) #1 {
entry:
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #6
  %pcPathLengthConstraint = getelementptr inbounds %struct.PROXY_CERT_INFO_EXTENSION_st, %struct.PROXY_CERT_INFO_EXTENSION_st* %pci, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %pcPathLengthConstraint, align 8, !tbaa !4
  %tobool.not = icmp eq %struct.asn1_string_st* %0, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @i2a_ASN1_INTEGER(%struct.bio_st* noundef %out, %struct.asn1_string_st* noundef nonnull %0) #6
  br label %if.end

if.else:                                          ; preds = %entry
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call4 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6
  %call5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #6
  %proxyPolicy = getelementptr inbounds %struct.PROXY_CERT_INFO_EXTENSION_st, %struct.PROXY_CERT_INFO_EXTENSION_st* %pci, i64 0, i32 1
  %1 = load %struct.PROXY_POLICY_st*, %struct.PROXY_POLICY_st** %proxyPolicy, align 8, !tbaa !9
  %policyLanguage = getelementptr inbounds %struct.PROXY_POLICY_st, %struct.PROXY_POLICY_st* %1, i64 0, i32 0
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %policyLanguage, align 8, !tbaa !10
  %call6 = tail call i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef %out, %struct.asn1_object_st* noundef %2) #6
  %3 = load %struct.PROXY_POLICY_st*, %struct.PROXY_POLICY_st** %proxyPolicy, align 8, !tbaa !9
  %policy = getelementptr inbounds %struct.PROXY_POLICY_st, %struct.PROXY_POLICY_st* %3, i64 0, i32 1
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %policy, align 8, !tbaa !12
  %tobool8.not = icmp eq %struct.asn1_string_st* %4, null
  br i1 %tobool8.not, label %if.end19, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %4, i64 0, i32 2
  %5 = load i8*, i8** %data, align 8, !tbaa !13
  %tobool11.not = icmp eq i8* %5, null
  br i1 %tobool11.not, label %if.end19, label %if.then12

if.then12:                                        ; preds = %land.lhs.true
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %4, i64 0, i32 0
  %6 = load i32, i32* %length, align 8, !tbaa !17
  %call18 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 noundef %6, i8* noundef nonnull %5) #6
  br label %if.end19

if.end19:                                         ; preds = %if.then12, %land.lhs.true, %if.end
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.PROXY_CERT_INFO_EXTENSION_st* @r2i_pci(%struct.v3_ext_method* nocapture noundef readnone %method, %struct.v3_ext_ctx* noundef %ctx, i8* noundef %value) #1 {
entry:
  %language = alloca %struct.asn1_object_st*, align 8
  %pathlen = alloca %struct.asn1_string_st*, align 8
  %policy = alloca %struct.asn1_string_st*, align 8
  %0 = bitcast %struct.asn1_object_st** %language to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store %struct.asn1_object_st* null, %struct.asn1_object_st** %language, align 8, !tbaa !18
  %1 = bitcast %struct.asn1_string_st** %pathlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %pathlen, align 8, !tbaa !18
  %2 = bitcast %struct.asn1_string_st** %policy to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %policy, align 8, !tbaa !18
  %call = tail call %struct.stack_st_CONF_VALUE* @X509V3_parse_list(i8* noundef %value) #6
  %call1 = call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %call) #8
  %call2141 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #6
  %cmp142 = icmp sgt i32 %call2141, 0
  br i1 %cmp142, label %for.body, label %if.then54

for.body:                                         ; preds = %entry, %for.inc50
  %i.0143 = phi i32 [ %inc51, %for.inc50 ], [ 0, %entry ]
  %call4 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call1, i32 noundef %i.0143) #6
  %3 = bitcast i8* %call4 to %struct.CONF_VALUE*
  %name = getelementptr inbounds i8, i8* %call4, i64 8
  %4 = bitcast i8* %name to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !19
  %tobool.not = icmp eq i8* %5, null
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %6 = load i8, i8* %5, align 1, !tbaa !21
  %cmp6.not = icmp eq i8 %6, 64
  br i1 %cmp6.not, label %if.then16, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %value8 = getelementptr inbounds i8, i8* %call4, i64 16
  %7 = bitcast i8* %value8 to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !22
  %tobool9.not = icmp eq i8* %8, null
  br i1 %tobool9.not, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true, %for.body
  %9 = bitcast i8* %name to i8**
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef 254, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.r2i_pci, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 153, i8* noundef null) #6
  %section = bitcast i8* %call4 to i8**
  %10 = load i8*, i8** %section, align 8, !tbaa !23
  %11 = load i8*, i8** %9, align 8, !tbaa !19
  %value11 = getelementptr inbounds i8, i8* %call4, i64 16
  %12 = bitcast i8* %value11 to i8**
  %13 = load i8*, i8** %12, align 8, !tbaa !22
  call void (i32, ...) @ERR_add_error_data(i32 noundef 6, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef %10, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* noundef %11, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* noundef %13) #6
  br label %err

if.then16:                                        ; preds = %lor.lhs.false
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 1
  %call18 = call %struct.stack_st_CONF_VALUE* @X509V3_get_section(%struct.v3_ext_ctx* noundef %ctx, i8* noundef nonnull %add.ptr) #6
  %tobool19.not = icmp eq %struct.stack_st_CONF_VALUE* %call18, null
  br i1 %tobool19.not, label %cleanup.thread, label %for.cond25.preheader

for.cond25.preheader:                             ; preds = %if.then16
  %call27 = call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef nonnull %call18) #8
  br label %land.rhs

cleanup.thread:                                   ; preds = %if.then16
  %14 = bitcast i8* %name to i8**
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef 264, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.r2i_pci, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 135, i8* noundef null) #6
  %section21 = bitcast i8* %call4 to i8**
  %15 = load i8*, i8** %section21, align 8, !tbaa !23
  %16 = load i8*, i8** %14, align 8, !tbaa !19
  %value23 = getelementptr inbounds i8, i8* %call4, i64 16
  %17 = bitcast i8* %value23 to i8**
  %18 = load i8*, i8** %17, align 8, !tbaa !22
  call void (i32, ...) @ERR_add_error_data(i32 noundef 6, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef %15, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* noundef %16, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* noundef %18) #6
  br label %err

land.rhs:                                         ; preds = %for.cond25.preheader, %for.body31
  %j.0138 = phi i32 [ 0, %for.cond25.preheader ], [ %inc, %for.body31 ]
  %call28 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call27) #6
  %cmp29 = icmp slt i32 %j.0138, %call28
  br i1 %cmp29, label %for.body31, label %cleanup.thread127

cleanup.thread127:                                ; preds = %land.rhs
  call void @X509V3_section_free(%struct.v3_ext_ctx* noundef %ctx, %struct.stack_st_CONF_VALUE* noundef nonnull %call18) #6
  br label %for.inc50

for.body31:                                       ; preds = %land.rhs
  %call33 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call27, i32 noundef %j.0138) #6
  %19 = bitcast i8* %call33 to %struct.CONF_VALUE*
  %call34 = call fastcc i32 @process_pci_value(%struct.CONF_VALUE* noundef %19, %struct.asn1_object_st** noundef nonnull %language, %struct.asn1_string_st** noundef nonnull %pathlen, %struct.asn1_string_st** noundef nonnull %policy) #8
  %inc = add nuw nsw i32 %j.0138, 1
  %tobool26.not = icmp eq i32 %call34, 0
  br i1 %tobool26.not, label %select.unfold, label %land.rhs, !llvm.loop !24

if.else:                                          ; preds = %land.lhs.true
  %call39 = call fastcc i32 @process_pci_value(%struct.CONF_VALUE* noundef nonnull %3, %struct.asn1_object_st** noundef nonnull %language, %struct.asn1_string_st** noundef nonnull %pathlen, %struct.asn1_string_st** noundef nonnull %policy) #8
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then41, label %for.inc50

if.then41:                                        ; preds = %if.else
  %20 = bitcast i8* %name to i8**
  %21 = bitcast i8* %value8 to i8**
  %section42 = bitcast i8* %call4 to i8**
  %22 = load i8*, i8** %section42, align 8, !tbaa !23
  %23 = load i8*, i8** %20, align 8, !tbaa !19
  %24 = load i8*, i8** %21, align 8, !tbaa !22
  call void (i32, ...) @ERR_add_error_data(i32 noundef 6, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* noundef %23, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* noundef %24) #6
  br label %err

select.unfold:                                    ; preds = %for.body31
  call void @X509V3_section_free(%struct.v3_ext_ctx* noundef %ctx, %struct.stack_st_CONF_VALUE* noundef nonnull %call18) #6
  br label %err

for.inc50:                                        ; preds = %cleanup.thread127, %if.else
  %inc51 = add nuw nsw i32 %i.0143, 1
  %call2 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #6
  %cmp = icmp slt i32 %inc51, %call2
  br i1 %cmp, label %for.body, label %for.end52, !llvm.loop !26

for.end52:                                        ; preds = %for.inc50
  %.pre = load %struct.asn1_object_st*, %struct.asn1_object_st** %language, align 8, !tbaa !18
  %tobool53.not = icmp eq %struct.asn1_object_st* %.pre, null
  br i1 %tobool53.not, label %if.then54, label %if.end55

if.then54:                                        ; preds = %entry, %for.end52
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef 287, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.r2i_pci, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 154, i8* noundef null) #6
  br label %err

if.end55:                                         ; preds = %for.end52
  %call56 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef nonnull %.pre) #6
  %25 = and i32 %call56, -3
  %26 = icmp eq i32 %25, 665
  %27 = load %struct.asn1_string_st*, %struct.asn1_string_st** %policy, align 8
  %tobool63 = icmp ne %struct.asn1_string_st* %27, null
  %or.cond82 = select i1 %26, i1 %tobool63, i1 false
  br i1 %or.cond82, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end55
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef 293, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.r2i_pci, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 159, i8* noundef null) #6
  br label %err

if.end65:                                         ; preds = %if.end55
  %call66 = call %struct.PROXY_CERT_INFO_EXTENSION_st* @PROXY_CERT_INFO_EXTENSION_new() #6
  %cmp67 = icmp eq %struct.PROXY_CERT_INFO_EXTENSION_st* %call66, null
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end65
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef 299, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.r2i_pci, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #6
  br label %err

if.end70:                                         ; preds = %if.end65
  %proxyPolicy = getelementptr inbounds %struct.PROXY_CERT_INFO_EXTENSION_st, %struct.PROXY_CERT_INFO_EXTENSION_st* %call66, i64 0, i32 1
  %28 = load %struct.PROXY_POLICY_st*, %struct.PROXY_POLICY_st** %proxyPolicy, align 8, !tbaa !9
  %policyLanguage = getelementptr inbounds %struct.PROXY_POLICY_st, %struct.PROXY_POLICY_st* %28, i64 0, i32 0
  store %struct.asn1_object_st* %.pre, %struct.asn1_object_st** %policyLanguage, align 8, !tbaa !10
  %29 = load %struct.asn1_string_st*, %struct.asn1_string_st** %policy, align 8, !tbaa !18
  %policy72 = getelementptr inbounds %struct.PROXY_POLICY_st, %struct.PROXY_POLICY_st* %28, i64 0, i32 1
  store %struct.asn1_string_st* %29, %struct.asn1_string_st** %policy72, align 8, !tbaa !12
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %policy, align 8, !tbaa !18
  %30 = load %struct.asn1_string_st*, %struct.asn1_string_st** %pathlen, align 8, !tbaa !18
  %pcPathLengthConstraint = getelementptr inbounds %struct.PROXY_CERT_INFO_EXTENSION_st, %struct.PROXY_CERT_INFO_EXTENSION_st* %call66, i64 0, i32 0
  store %struct.asn1_string_st* %30, %struct.asn1_string_st** %pcPathLengthConstraint, align 8, !tbaa !4
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %pathlen, align 8, !tbaa !18
  br label %cleanup75

err:                                              ; preds = %select.unfold, %cleanup.thread, %if.then, %if.then41, %if.then69, %if.then64, %if.then54
  %31 = load %struct.asn1_object_st*, %struct.asn1_object_st** %language, align 8, !tbaa !18
  call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %31) #6
  %32 = load %struct.asn1_string_st*, %struct.asn1_string_st** %pathlen, align 8, !tbaa !18
  call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %32) #6
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %pathlen, align 8, !tbaa !18
  %33 = load %struct.asn1_string_st*, %struct.asn1_string_st** %policy, align 8, !tbaa !18
  call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %33) #6
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %policy, align 8, !tbaa !18
  call void @PROXY_CERT_INFO_EXTENSION_free(%struct.PROXY_CERT_INFO_EXTENSION_st* noundef null) #6
  br label %cleanup75

cleanup75:                                        ; preds = %if.end70, %err
  %pci.1 = phi %struct.PROXY_CERT_INFO_EXTENSION_st* [ null, %err ], [ %call66, %if.end70 ]
  %call73 = call fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %call) #8
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call73, void (i8*)* noundef bitcast (void (%struct.CONF_VALUE*)* @X509V3_conf_free to void (i8*)*)) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret %struct.PROXY_CERT_INFO_EXTENSION_st* %pci.1
}

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #0

declare i32 @i2a_ASN1_INTEGER(%struct.bio_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #0

declare i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #0

declare i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare %struct.stack_st_CONF_VALUE* @X509V3_parse_list(i8* noundef) local_unnamed_addr #0

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #0

declare void @ERR_new() local_unnamed_addr #0

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #0

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #0

declare void @ERR_add_error_data(i32 noundef, ...) local_unnamed_addr #0

declare %struct.stack_st_CONF_VALUE* @X509V3_get_section(%struct.v3_ext_ctx* noundef, i8* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @process_pci_value(%struct.CONF_VALUE* noundef %val, %struct.asn1_object_st** nocapture noundef %language, %struct.asn1_string_st** noundef %pathlen, %struct.asn1_string_st** noundef %policy) unnamed_addr #1 {
entry:
  %val_len = alloca i64, align 8
  %buf = alloca [2048 x i8], align 16
  %name = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %val, i64 0, i32 1
  %0 = load i8*, i8** %name, align 8, !tbaa !19
  %call = tail call i32 @strcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)) #9
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %language, align 8, !tbaa !18
  %tobool.not = icmp eq %struct.asn1_object_st* %1, null
  br i1 %tobool.not, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.process_pci_value, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 155, i8* noundef null) #6
  %section = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %val, i64 0, i32 0
  %2 = load i8*, i8** %section, align 8, !tbaa !23
  %3 = load i8*, i8** %name, align 8, !tbaa !19
  %value = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %val, i64 0, i32 2
  %4 = load i8*, i8** %value, align 8, !tbaa !22
  tail call void (i32, ...) @ERR_add_error_data(i32 noundef 6, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef %2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* noundef %3, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* noundef %4) #6
  br label %cleanup209

if.end:                                           ; preds = %if.then
  %value3 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %val, i64 0, i32 2
  %5 = load i8*, i8** %value3, align 8, !tbaa !22
  %call4 = tail call %struct.asn1_object_st* @OBJ_txt2obj(i8* noundef %5, i32 noundef 0) #6
  store %struct.asn1_object_st* %call4, %struct.asn1_object_st** %language, align 8, !tbaa !18
  %cmp5 = icmp eq %struct.asn1_object_st* %call4, null
  br i1 %cmp5, label %if.then6, label %cleanup209

if.then6:                                         ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef 98, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.process_pci_value, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 110, i8* noundef null) #6
  %section7 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %val, i64 0, i32 0
  %6 = load i8*, i8** %section7, align 8, !tbaa !23
  %7 = load i8*, i8** %name, align 8, !tbaa !19
  %8 = load i8*, i8** %value3, align 8, !tbaa !22
  tail call void (i32, ...) @ERR_add_error_data(i32 noundef 6, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef %6, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* noundef %7, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* noundef %8) #6
  br label %cleanup209

if.else:                                          ; preds = %entry
  %call12 = tail call i32 @strcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0)) #9
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.else28

if.then14:                                        ; preds = %if.else
  %9 = load %struct.asn1_string_st*, %struct.asn1_string_st** %pathlen, align 8, !tbaa !18
  %tobool15.not = icmp eq %struct.asn1_string_st* %9, null
  br i1 %tobool15.not, label %if.end20, label %if.then16

if.then16:                                        ; preds = %if.then14
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.process_pci_value, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 157, i8* noundef null) #6
  %section17 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %val, i64 0, i32 0
  %10 = load i8*, i8** %section17, align 8, !tbaa !23
  %11 = load i8*, i8** %name, align 8, !tbaa !19
  %value19 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %val, i64 0, i32 2
  %12 = load i8*, i8** %value19, align 8, !tbaa !22
  tail call void (i32, ...) @ERR_add_error_data(i32 noundef 6, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef %10, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* noundef %11, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* noundef %12) #6
  br label %cleanup209

if.end20:                                         ; preds = %if.then14
  %call21 = tail call i32 @X509V3_get_value_int(%struct.CONF_VALUE* noundef nonnull %val, %struct.asn1_string_st** noundef nonnull %pathlen) #6
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %cleanup209

if.then23:                                        ; preds = %if.end20
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef 110, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.process_pci_value, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 156, i8* noundef null) #6
  %section24 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %val, i64 0, i32 0
  %13 = load i8*, i8** %section24, align 8, !tbaa !23
  %14 = load i8*, i8** %name, align 8, !tbaa !19
  %value26 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %val, i64 0, i32 2
  %15 = load i8*, i8** %value26, align 8, !tbaa !22
  tail call void (i32, ...) @ERR_add_error_data(i32 noundef 6, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef %13, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* noundef %14, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* noundef %15) #6
  br label %cleanup209

if.else28:                                        ; preds = %if.else
  %call30 = tail call i32 @strcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0)) #9
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then32, label %cleanup209

if.then32:                                        ; preds = %if.else28
  %16 = bitcast i64* %val_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #7
  %17 = load %struct.asn1_string_st*, %struct.asn1_string_st** %policy, align 8, !tbaa !18
  %cmp33 = icmp eq %struct.asn1_string_st* %17, null
  br i1 %cmp33, label %if.then34, label %if.end42

if.then34:                                        ; preds = %if.then32
  %call35 = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #6
  store %struct.asn1_string_st* %call35, %struct.asn1_string_st** %policy, align 8, !tbaa !18
  %cmp36 = icmp eq %struct.asn1_string_st* %call35, null
  br i1 %cmp36, label %cleanup199, label %if.end42

if.end42:                                         ; preds = %if.then34, %if.then32
  %18 = phi %struct.asn1_string_st* [ %call35, %if.then34 ], [ %17, %if.then32 ]
  %value43 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %val, i64 0, i32 2
  %19 = load i8*, i8** %value43, align 8, !tbaa !22
  %call44 = tail call i32 @strncmp(i8* noundef %19, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 noundef 4) #9
  %cmp45 = icmp eq i32 %call44, 0
  br i1 %cmp45, label %if.then46, label %if.else79

if.then46:                                        ; preds = %if.end42
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 4
  %call48 = call i8* @OPENSSL_hexstr2buf(i8* noundef nonnull %add.ptr, i64* noundef nonnull %val_len) #6
  %tobool49.not = icmp eq i8* %call48, null
  br i1 %tobool49.not, label %if.then50, label %if.end54

if.then50:                                        ; preds = %if.then46
  %section51 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %val, i64 0, i32 0
  %20 = load i8*, i8** %section51, align 8, !tbaa !23
  %21 = load i8*, i8** %name, align 8, !tbaa !19
  %22 = load i8*, i8** %value43, align 8, !tbaa !22
  call void (i32, ...) @ERR_add_error_data(i32 noundef 6, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef %20, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* noundef %21, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* noundef %22) #6
  br label %err

if.end54:                                         ; preds = %if.then46
  %23 = load %struct.asn1_string_st*, %struct.asn1_string_st** %policy, align 8, !tbaa !18
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %23, i64 0, i32 2
  %24 = load i8*, i8** %data, align 8, !tbaa !13
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %23, i64 0, i32 0
  %25 = load i32, i32* %length, align 8, !tbaa !17
  %conv = sext i32 %25 to i64
  %26 = load i64, i64* %val_len, align 8, !tbaa !27
  %add = add nsw i64 %conv, 1
  %add55 = add i64 %add, %26
  %call56 = call i8* @CRYPTO_realloc(i8* noundef %24, i64 noundef %add55, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef 137) #6
  %tobool57.not = icmp eq i8* %call56, null
  br i1 %tobool57.not, label %if.else71, label %cleanup

if.else71:                                        ; preds = %if.end54
  call void @CRYPTO_free(i8* noundef nonnull %call48, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef 145) #6
  %27 = load %struct.asn1_string_st*, %struct.asn1_string_st** %policy, align 8, !tbaa !18
  %data72 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %27, i64 0, i32 2
  %28 = load i8*, i8** %data72, align 8, !tbaa !13
  call void @CRYPTO_free(i8* noundef %28, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef 150) #6
  %29 = load %struct.asn1_string_st*, %struct.asn1_string_st** %policy, align 8, !tbaa !18
  %data73 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %29, i64 0, i32 2
  store i8* null, i8** %data73, align 8, !tbaa !13
  %30 = load %struct.asn1_string_st*, %struct.asn1_string_st** %policy, align 8, !tbaa !18
  %length74 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %30, i64 0, i32 0
  store i32 0, i32* %length74, align 8, !tbaa !17
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef 153, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.process_pci_value, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #6
  %section75 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %val, i64 0, i32 0
  %31 = load i8*, i8** %section75, align 8, !tbaa !23
  %32 = load i8*, i8** %name, align 8, !tbaa !19
  %33 = load i8*, i8** %value43, align 8, !tbaa !22
  call void (i32, ...) @ERR_add_error_data(i32 noundef 6, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef %31, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* noundef %32, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* noundef %33) #6
  br label %err

cleanup:                                          ; preds = %if.end54
  %34 = load %struct.asn1_string_st*, %struct.asn1_string_st** %policy, align 8, !tbaa !18
  %data59 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %34, i64 0, i32 2
  store i8* %call56, i8** %data59, align 8, !tbaa !13
  %35 = load %struct.asn1_string_st*, %struct.asn1_string_st** %policy, align 8, !tbaa !18
  %data60 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %35, i64 0, i32 2
  %36 = load i8*, i8** %data60, align 8, !tbaa !13
  %length61 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %35, i64 0, i32 0
  %37 = load i32, i32* %length61, align 8, !tbaa !17
  %idxprom = sext i32 %37 to i64
  %arrayidx = getelementptr inbounds i8, i8* %36, i64 %idxprom
  %38 = load i64, i64* %val_len, align 8, !tbaa !27
  %call62 = call i8* @memcpy(i8* noundef %arrayidx, i8* noundef nonnull %call48, i64 noundef %38) #6
  %39 = load i64, i64* %val_len, align 8, !tbaa !27
  %40 = load %struct.asn1_string_st*, %struct.asn1_string_st** %policy, align 8, !tbaa !18
  %length63 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %40, i64 0, i32 0
  %41 = load i32, i32* %length63, align 8, !tbaa !17
  %42 = trunc i64 %39 to i32
  %conv66 = add i32 %41, %42
  store i32 %conv66, i32* %length63, align 8, !tbaa !17
  %data67 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %40, i64 0, i32 2
  %43 = load i8*, i8** %data67, align 8, !tbaa !13
  %idxprom69 = sext i32 %conv66 to i64
  %arrayidx70 = getelementptr inbounds i8, i8* %43, i64 %idxprom69
  store i8 0, i8* %arrayidx70, align 1, !tbaa !21
  call void @CRYPTO_free(i8* noundef nonnull %call48, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef 157) #6
  br label %cleanup199.thread341

if.else79:                                        ; preds = %if.end42
  %call81 = tail call i32 @strncmp(i8* noundef %19, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i64 noundef 5) #9
  %cmp82 = icmp eq i32 %call81, 0
  br i1 %cmp82, label %if.then84, label %if.else145

if.then84:                                        ; preds = %if.else79
  %44 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %44) #7
  %add.ptr86 = getelementptr inbounds i8, i8* %19, i64 5
  %call87 = tail call %struct.bio_st* @BIO_new_file(i8* noundef nonnull %add.ptr86, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)) #6
  %tobool88.not = icmp eq %struct.bio_st* %call87, null
  br i1 %tobool88.not, label %if.then89, label %while.cond.outer

if.then89:                                        ; preds = %if.then84
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef 163, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.process_pci_value, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 524320, i8* noundef null) #6
  %section90 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %val, i64 0, i32 0
  %45 = load i8*, i8** %section90, align 8, !tbaa !23
  %46 = load i8*, i8** %name, align 8, !tbaa !19
  %47 = load i8*, i8** %value43, align 8, !tbaa !22
  tail call void (i32, ...) @ERR_add_error_data(i32 noundef 6, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef %45, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* noundef %46, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* noundef %47) #6
  br label %cleanup140.thread

while.cond:                                       ; preds = %while.cond.outer, %land.rhs
  %call94 = call i32 @BIO_read(%struct.bio_st* noundef nonnull %call87, i8* noundef nonnull %44, i32 noundef 2048) #6
  %cmp95 = icmp sgt i32 %call94, 0
  br i1 %cmp95, label %if.end103, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %cmp97 = icmp eq i32 %call94, 0
  br i1 %cmp97, label %land.rhs, label %if.then135

land.rhs:                                         ; preds = %lor.rhs
  %call99 = call i32 @BIO_test_flags(%struct.bio_st* noundef nonnull %call87, i32 noundef 8) #6
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end192, label %while.cond

if.end103:                                        ; preds = %while.cond
  %48 = load %struct.asn1_string_st*, %struct.asn1_string_st** %policy, align 8, !tbaa !18
  %data104 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %48, i64 0, i32 2
  %49 = load i8*, i8** %data104, align 8, !tbaa !13
  %length105 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %48, i64 0, i32 0
  %50 = load i32, i32* %length105, align 8, !tbaa !17
  %add106 = add nuw i32 %call94, 1
  %add107 = add i32 %add106, %50
  %conv108 = sext i32 %add107 to i64
  %call109 = call i8* @CRYPTO_realloc(i8* noundef %49, i64 noundef %conv108, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef 173) #6
  %tobool110.not = icmp eq i8* %call109, null
  %51 = load %struct.asn1_string_st*, %struct.asn1_string_st** %policy, align 8, !tbaa !18
  %data112 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %51, i64 0, i32 2
  br i1 %tobool110.not, label %if.then111, label %if.end118

if.then111:                                       ; preds = %if.end103
  %52 = load i8*, i8** %data112, align 8, !tbaa !13
  call void @CRYPTO_free(i8* noundef %52, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef 176) #6
  %53 = load %struct.asn1_string_st*, %struct.asn1_string_st** %policy, align 8, !tbaa !18
  %data113 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %53, i64 0, i32 2
  store i8* null, i8** %data113, align 8, !tbaa !13
  %54 = load %struct.asn1_string_st*, %struct.asn1_string_st** %policy, align 8, !tbaa !18
  %length114 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %54, i64 0, i32 0
  store i32 0, i32* %length114, align 8, !tbaa !17
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef 179, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.process_pci_value, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #6
  %section115 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %val, i64 0, i32 0
  %55 = load i8*, i8** %section115, align 8, !tbaa !23
  %56 = load i8*, i8** %name, align 8, !tbaa !19
  %57 = load i8*, i8** %value43, align 8, !tbaa !22
  call void (i32, ...) @ERR_add_error_data(i32 noundef 6, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef %55, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* noundef %56, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* noundef %57) #6
  call void @BIO_free_all(%struct.bio_st* noundef nonnull %call87) #6
  br label %cleanup140.thread

if.end118:                                        ; preds = %if.end103
  store i8* %call109, i8** %data112, align 8, !tbaa !13
  %58 = load %struct.asn1_string_st*, %struct.asn1_string_st** %policy, align 8, !tbaa !18
  %data120 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %58, i64 0, i32 2
  %59 = load i8*, i8** %data120, align 8, !tbaa !13
  %length121 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %58, i64 0, i32 0
  %60 = load i32, i32* %length121, align 8, !tbaa !17
  %idxprom122 = sext i32 %60 to i64
  %arrayidx123 = getelementptr inbounds i8, i8* %59, i64 %idxprom122
  %conv125344 = zext i32 %call94 to i64
  %call126 = call i8* @memcpy(i8* noundef %arrayidx123, i8* noundef nonnull %44, i64 noundef %conv125344) #6
  %61 = load %struct.asn1_string_st*, %struct.asn1_string_st** %policy, align 8, !tbaa !18
  %length127 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %61, i64 0, i32 0
  %62 = load i32, i32* %length127, align 8, !tbaa !17
  %add128 = add nsw i32 %62, %call94
  store i32 %add128, i32* %length127, align 8, !tbaa !17
  %data129 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %61, i64 0, i32 2
  %63 = load i8*, i8** %data129, align 8, !tbaa !13
  %idxprom131 = sext i32 %add128 to i64
  %arrayidx132 = getelementptr inbounds i8, i8* %63, i64 %idxprom131
  store i8 0, i8* %arrayidx132, align 1, !tbaa !21
  br label %while.cond.outer, !llvm.loop !28

while.cond.outer:                                 ; preds = %if.then84, %if.end118
  %tmp_data.1.ph = phi i8* [ %call109, %if.end118 ], [ null, %if.then84 ]
  br label %while.cond

if.then135:                                       ; preds = %lor.rhs
  call void @BIO_free_all(%struct.bio_st* noundef nonnull %call87) #6
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef 193, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.process_pci_value, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 524320, i8* noundef null) #6
  %section136 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %val, i64 0, i32 0
  %64 = load i8*, i8** %section136, align 8, !tbaa !23
  %65 = load i8*, i8** %name, align 8, !tbaa !19
  %66 = load i8*, i8** %value43, align 8, !tbaa !22
  call void (i32, ...) @ERR_add_error_data(i32 noundef 6, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef %64, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* noundef %65, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* noundef %66) #6
  br label %cleanup140.thread

cleanup140.thread:                                ; preds = %if.then111, %if.then135, %if.then89
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %44) #7
  br label %err

if.else145:                                       ; preds = %if.else79
  %call147 = tail call i32 @strncmp(i8* noundef %19, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i64 noundef 5) #9
  %cmp148 = icmp eq i32 %call147, 0
  br i1 %cmp148, label %if.then150, label %if.else186

if.then150:                                       ; preds = %if.else145
  %add.ptr152 = getelementptr inbounds i8, i8* %19, i64 5
  %call153 = tail call i64 @strlen(i8* noundef nonnull %add.ptr152) #9
  %data154 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %18, i64 0, i32 2
  %67 = load i8*, i8** %data154, align 8, !tbaa !13
  %length155 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %18, i64 0, i32 0
  %68 = load i32, i32* %length155, align 8, !tbaa !17
  %conv156 = sext i32 %68 to i64
  %add157 = add i64 %call153, 1
  %add158 = add i64 %add157, %conv156
  %call159 = tail call i8* @CRYPTO_realloc(i8* noundef %67, i64 noundef %add158, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef 200) #6
  %tobool160.not = icmp eq i8* %call159, null
  %69 = load %struct.asn1_string_st*, %struct.asn1_string_st** %policy, align 8, !tbaa !18
  %data179 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %69, i64 0, i32 2
  br i1 %tobool160.not, label %if.else178, label %if.then161

if.then161:                                       ; preds = %if.then150
  store i8* %call159, i8** %data179, align 8, !tbaa !13
  %70 = load %struct.asn1_string_st*, %struct.asn1_string_st** %policy, align 8, !tbaa !18
  %data163 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %70, i64 0, i32 2
  %71 = load i8*, i8** %data163, align 8, !tbaa !13
  %length164 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %70, i64 0, i32 0
  %72 = load i32, i32* %length164, align 8, !tbaa !17
  %idxprom165 = sext i32 %72 to i64
  %arrayidx166 = getelementptr inbounds i8, i8* %71, i64 %idxprom165
  %73 = load i8*, i8** %value43, align 8, !tbaa !22
  %add.ptr168 = getelementptr inbounds i8, i8* %73, i64 5
  %call169 = tail call i8* @memcpy(i8* noundef %arrayidx166, i8* noundef nonnull %add.ptr168, i64 noundef %call153) #6
  %74 = load %struct.asn1_string_st*, %struct.asn1_string_st** %policy, align 8, !tbaa !18
  %length170 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %74, i64 0, i32 0
  %75 = load i32, i32* %length170, align 8, !tbaa !17
  %76 = trunc i64 %call153 to i32
  %conv173 = add i32 %75, %76
  store i32 %conv173, i32* %length170, align 8, !tbaa !17
  %data174 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %74, i64 0, i32 2
  %77 = load i8*, i8** %data174, align 8, !tbaa !13
  %idxprom176 = sext i32 %conv173 to i64
  %arrayidx177 = getelementptr inbounds i8, i8* %77, i64 %idxprom176
  store i8 0, i8* %arrayidx177, align 1, !tbaa !21
  br label %cleanup199.thread341

if.else178:                                       ; preds = %if.then150
  %78 = load i8*, i8** %data179, align 8, !tbaa !13
  tail call void @CRYPTO_free(i8* noundef %78, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef 212) #6
  %79 = load %struct.asn1_string_st*, %struct.asn1_string_st** %policy, align 8, !tbaa !18
  %data180 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %79, i64 0, i32 2
  store i8* null, i8** %data180, align 8, !tbaa !13
  %80 = load %struct.asn1_string_st*, %struct.asn1_string_st** %policy, align 8, !tbaa !18
  %length181 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %80, i64 0, i32 0
  store i32 0, i32* %length181, align 8, !tbaa !17
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef 215, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.process_pci_value, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #6
  %section182 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %val, i64 0, i32 0
  %81 = load i8*, i8** %section182, align 8, !tbaa !23
  %82 = load i8*, i8** %name, align 8, !tbaa !19
  %83 = load i8*, i8** %value43, align 8, !tbaa !22
  tail call void (i32, ...) @ERR_add_error_data(i32 noundef 6, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef %81, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* noundef %82, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* noundef %83) #6
  br label %err

if.else186:                                       ; preds = %if.else145
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef 220, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.process_pci_value, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 152, i8* noundef null) #6
  %section187 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %val, i64 0, i32 0
  %84 = load i8*, i8** %section187, align 8, !tbaa !23
  %85 = load i8*, i8** %name, align 8, !tbaa !19
  %86 = load i8*, i8** %value43, align 8, !tbaa !22
  tail call void (i32, ...) @ERR_add_error_data(i32 noundef 6, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef %84, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* noundef %85, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* noundef %86) #6
  br label %err

if.end192:                                        ; preds = %land.rhs
  call void @BIO_free_all(%struct.bio_st* noundef nonnull %call87) #6
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %44) #7
  %tobool193.not = icmp eq i8* %tmp_data.1.ph, null
  br i1 %tobool193.not, label %if.then194, label %cleanup199.thread341

if.then194:                                       ; preds = %if.end192
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef 225, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.process_pci_value, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #6
  %section195 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %val, i64 0, i32 0
  %87 = load i8*, i8** %section195, align 8, !tbaa !23
  %88 = load i8*, i8** %name, align 8, !tbaa !19
  %89 = load i8*, i8** %value43, align 8, !tbaa !22
  call void (i32, ...) @ERR_add_error_data(i32 noundef 6, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef %87, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* noundef %88, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* noundef %89) #6
  br label %err

cleanup199.thread341:                             ; preds = %if.end192, %cleanup, %if.then161
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #7
  br label %cleanup209

cleanup199:                                       ; preds = %if.then34
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef 121, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.process_pci_value, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #6
  %section38 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %val, i64 0, i32 0
  %90 = load i8*, i8** %section38, align 8, !tbaa !23
  %91 = load i8*, i8** %name, align 8, !tbaa !19
  %value40 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %val, i64 0, i32 2
  %92 = load i8*, i8** %value40, align 8, !tbaa !22
  tail call void (i32, ...) @ERR_add_error_data(i32 noundef 6, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef %90, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* noundef %91, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* noundef %92) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #7
  br label %cleanup209

err:                                              ; preds = %if.then50, %if.else71, %if.then194, %if.else178, %if.else186, %cleanup140.thread
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #7
  br i1 %cmp33, label %if.then207, label %cleanup209

if.then207:                                       ; preds = %err
  %93 = load %struct.asn1_string_st*, %struct.asn1_string_st** %policy, align 8, !tbaa !18
  call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %93) #6
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %policy, align 8, !tbaa !18
  br label %cleanup209

cleanup209:                                       ; preds = %if.end, %if.else28, %if.end20, %cleanup199.thread341, %cleanup199, %err, %if.then207, %if.then23, %if.then16, %if.then6, %if.then1
  %retval.1 = phi i32 [ 0, %if.then1 ], [ 0, %if.then6 ], [ 0, %if.then16 ], [ 0, %if.then23 ], [ 0, %cleanup199 ], [ 0, %if.then207 ], [ 0, %err ], [ 1, %cleanup199.thread341 ], [ 1, %if.end20 ], [ 1, %if.else28 ], [ 1, %if.end ]
  ret i32 %retval.1
}

declare void @X509V3_section_free(%struct.v3_ext_ctx* noundef, %struct.stack_st_CONF_VALUE* noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #0

declare %struct.PROXY_CERT_INFO_EXTENSION_st* @PROXY_CERT_INFO_EXTENSION_new() local_unnamed_addr #0

declare void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) local_unnamed_addr #0

declare void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef) local_unnamed_addr #0

declare void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #0

declare void @PROXY_CERT_INFO_EXTENSION_free(%struct.PROXY_CERT_INFO_EXTENSION_st* noundef) local_unnamed_addr #0

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509V3_conf_free(%struct.CONF_VALUE* noundef) #0

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

declare %struct.asn1_object_st* @OBJ_txt2obj(i8* noundef, i32 noundef) local_unnamed_addr #0

declare i32 @X509V3_get_value_int(%struct.CONF_VALUE* noundef, %struct.asn1_string_st** noundef) local_unnamed_addr #0

declare %struct.asn1_string_st* @ASN1_OCTET_STRING_new() local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i8* @OPENSSL_hexstr2buf(i8* noundef, i64* noundef) local_unnamed_addr #0

declare i8* @CRYPTO_realloc(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #0

declare %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #0

declare i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #0

declare i32 @BIO_test_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #0

declare void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #4

attributes #0 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"PROXY_CERT_INFO_EXTENSION_st", !6, i64 0, !6, i64 8}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 8}
!10 = !{!11, !6, i64 0}
!11 = !{!"PROXY_POLICY_st", !6, i64 0, !6, i64 8}
!12 = !{!11, !6, i64 8}
!13 = !{!14, !6, i64 8}
!14 = !{!"asn1_string_st", !15, i64 0, !15, i64 4, !6, i64 8, !16, i64 16}
!15 = !{!"int", !7, i64 0}
!16 = !{!"long", !7, i64 0}
!17 = !{!14, !15, i64 0}
!18 = !{!6, !6, i64 0}
!19 = !{!20, !6, i64 8}
!20 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16}
!21 = !{!7, !7, i64 0}
!22 = !{!20, !6, i64 16}
!23 = !{!20, !6, i64 0}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = distinct !{!26, !25}
!27 = !{!16, !16, i64 0}
!28 = distinct !{!28, !25}
