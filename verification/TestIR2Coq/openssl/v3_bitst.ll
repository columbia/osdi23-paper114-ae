; ModuleID = 'crypto/x509/v3_bitst.c'
source_filename = "crypto/x509/v3_bitst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BIT_STRING_BITNAME_st = type { i32, i8*, i8* }
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
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st = type opaque

@ns_cert_type_table = internal global [9 x %struct.BIT_STRING_BITNAME_st] [%struct.BIT_STRING_BITNAME_st { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0) }, %struct.BIT_STRING_BITNAME_st { i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0) }, %struct.BIT_STRING_BITNAME_st { i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0) }, %struct.BIT_STRING_BITNAME_st { i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0) }, %struct.BIT_STRING_BITNAME_st { i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0) }, %struct.BIT_STRING_BITNAME_st { i32 5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0) }, %struct.BIT_STRING_BITNAME_st { i32 6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0) }, %struct.BIT_STRING_BITNAME_st { i32 7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0) }, %struct.BIT_STRING_BITNAME_st { i32 -1, i8* null, i8* null }], align 16
@ossl_v3_nscert = local_unnamed_addr constant { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 71, i32 0, %struct.ASN1_ITEM_st* ()* @ASN1_BIT_STRING_it, i8* ()* null, void (i8*)* null, i8* (i8*, i8**, i64)* null, i32 (i8*, i8**)* null, i8* (%struct.v3_ext_method*, i8*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* bitcast (%struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, %struct.asn1_string_st*, %struct.stack_st_CONF_VALUE*)* @i2v_ASN1_BIT_STRING to %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*), i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* bitcast (%struct.asn1_string_st* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* @v2i_ASN1_BIT_STRING to i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*), i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, i8* bitcast ([9 x %struct.BIT_STRING_BITNAME_st]* @ns_cert_type_table to i8*) }, align 8
@key_usage_type_table = internal global [10 x %struct.BIT_STRING_BITNAME_st] [%struct.BIT_STRING_BITNAME_st { i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0) }, %struct.BIT_STRING_BITNAME_st { i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.BIT_STRING_BITNAME_st { i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0) }, %struct.BIT_STRING_BITNAME_st { i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0) }, %struct.BIT_STRING_BITNAME_st { i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0) }, %struct.BIT_STRING_BITNAME_st { i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0) }, %struct.BIT_STRING_BITNAME_st { i32 6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0) }, %struct.BIT_STRING_BITNAME_st { i32 7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0) }, %struct.BIT_STRING_BITNAME_st { i32 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0) }, %struct.BIT_STRING_BITNAME_st { i32 -1, i8* null, i8* null }], align 16
@ossl_v3_key_usage = local_unnamed_addr constant { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 83, i32 0, %struct.ASN1_ITEM_st* ()* @ASN1_BIT_STRING_it, i8* ()* null, void (i8*)* null, i8* (i8*, i8**, i64)* null, i32 (i8*, i8**)* null, i8* (%struct.v3_ext_method*, i8*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* bitcast (%struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, %struct.asn1_string_st*, %struct.stack_st_CONF_VALUE*)* @i2v_ASN1_BIT_STRING to %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*), i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* bitcast (%struct.asn1_string_st* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* @v2i_ASN1_BIT_STRING to i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*), i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, i8* bitcast ([10 x %struct.BIT_STRING_BITNAME_st]* @key_usage_type_table to i8*) }, align 8
@.str = private unnamed_addr constant [23 x i8] c"crypto/x509/v3_bitst.c\00", align 1
@__func__.v2i_ASN1_BIT_STRING = private unnamed_addr constant [20 x i8] c"v2i_ASN1_BIT_STRING\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"SSL Client\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"client\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"SSL Server\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"S/MIME\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"email\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"Object Signing\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"objsign\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Unused\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"SSL CA\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"sslCA\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"S/MIME CA\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"emailCA\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"Object Signing CA\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"objCA\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"Digital Signature\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"digitalSignature\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"Non Repudiation\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"nonRepudiation\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"Key Encipherment\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"keyEncipherment\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"Data Encipherment\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"dataEncipherment\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"Key Agreement\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"keyAgreement\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"Certificate Sign\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"keyCertSign\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"CRL Sign\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"cRLSign\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"Encipher Only\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"encipherOnly\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"Decipher Only\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"decipherOnly\00", align 1

declare %struct.ASN1_ITEM_st* @ASN1_BIT_STRING_it() #0

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_CONF_VALUE* @i2v_ASN1_BIT_STRING(%struct.v3_ext_method* nocapture noundef readonly %method, %struct.asn1_string_st* noundef %bits, %struct.stack_st_CONF_VALUE* noundef %ret) #1 {
entry:
  %ret.addr = alloca %struct.stack_st_CONF_VALUE*, align 8
  store %struct.stack_st_CONF_VALUE* %ret, %struct.stack_st_CONF_VALUE** %ret.addr, align 8, !tbaa !4
  %usr_data = getelementptr inbounds %struct.v3_ext_method, %struct.v3_ext_method* %method, i64 0, i32 13
  %0 = bitcast i8** %usr_data to %struct.BIT_STRING_BITNAME_st**
  %1 = load %struct.BIT_STRING_BITNAME_st*, %struct.BIT_STRING_BITNAME_st** %0, align 8, !tbaa !8
  %lname8 = getelementptr inbounds %struct.BIT_STRING_BITNAME_st, %struct.BIT_STRING_BITNAME_st* %1, i64 0, i32 1
  %2 = load i8*, i8** %lname8, align 8, !tbaa !11
  %tobool.not9 = icmp eq i8* %2, null
  br i1 %tobool.not9, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %lname11 = phi i8** [ %lname, %for.inc ], [ %lname8, %entry ]
  %bnam.010 = phi %struct.BIT_STRING_BITNAME_st* [ %incdec.ptr, %for.inc ], [ %1, %entry ]
  %bitnum = getelementptr inbounds %struct.BIT_STRING_BITNAME_st, %struct.BIT_STRING_BITNAME_st* %bnam.010, i64 0, i32 0
  %3 = load i32, i32* %bitnum, align 8, !tbaa !13
  %call = call i32 @ASN1_BIT_STRING_get_bit(%struct.asn1_string_st* noundef %bits, i32 noundef %3) #4
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %4 = load i8*, i8** %lname11, align 8, !tbaa !11
  %call3 = call i32 @X509V3_add_value(i8* noundef %4, i8* noundef null, %struct.stack_st_CONF_VALUE** noundef nonnull %ret.addr) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %incdec.ptr = getelementptr inbounds %struct.BIT_STRING_BITNAME_st, %struct.BIT_STRING_BITNAME_st* %bnam.010, i64 1
  %lname = getelementptr inbounds %struct.BIT_STRING_BITNAME_st, %struct.BIT_STRING_BITNAME_st* %bnam.010, i64 1, i32 1
  %5 = load i8*, i8** %lname, align 8, !tbaa !11
  %tobool.not = icmp eq i8* %5, null
  br i1 %tobool.not, label %for.end.loopexit, label %for.body, !llvm.loop !14

for.end.loopexit:                                 ; preds = %for.inc
  %.pre = load %struct.stack_st_CONF_VALUE*, %struct.stack_st_CONF_VALUE** %ret.addr, align 8, !tbaa !4
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %6 = phi %struct.stack_st_CONF_VALUE* [ %.pre, %for.end.loopexit ], [ %ret, %entry ]
  ret %struct.stack_st_CONF_VALUE* %6
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @v2i_ASN1_BIT_STRING(%struct.v3_ext_method* nocapture noundef readonly %method, %struct.v3_ext_ctx* nocapture readnone %ctx, %struct.stack_st_CONF_VALUE* noundef %nval) #1 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_BIT_STRING_new() #4
  %cmp = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %nval) #5
  %call258 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #4
  %cmp359 = icmp sgt i32 %call258, 0
  br i1 %cmp359, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %usr_data = getelementptr inbounds %struct.v3_ext_method, %struct.v3_ext_method* %method, i64 0, i32 13
  %0 = bitcast i8** %usr_data to %struct.BIT_STRING_BITNAME_st**
  br label %for.body

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.v2i_ASN1_BIT_STRING, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

for.cond:                                         ; preds = %for.end
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #4
  %cmp3 = icmp slt i32 %inc, %call2
  br i1 %cmp3, label %for.body, label %cleanup, !llvm.loop !16

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %i.060 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %call5 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call1, i32 noundef %i.060) #4
  %1 = load %struct.BIT_STRING_BITNAME_st*, %struct.BIT_STRING_BITNAME_st** %0, align 8, !tbaa !8
  %lname54 = getelementptr inbounds %struct.BIT_STRING_BITNAME_st, %struct.BIT_STRING_BITNAME_st* %1, i64 0, i32 1
  %2 = load i8*, i8** %lname54, align 8, !tbaa !11
  %tobool.not55 = icmp eq i8* %2, null
  br i1 %tobool.not55, label %if.then22, label %for.body7.lr.ph

for.body7.lr.ph:                                  ; preds = %for.body
  %name = getelementptr inbounds i8, i8* %call5, i64 8
  %3 = bitcast i8* %name to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !17
  br label %for.body7

for.body7:                                        ; preds = %for.body7.lr.ph, %for.inc
  %5 = phi i8* [ %2, %for.body7.lr.ph ], [ %8, %for.inc ]
  %bnam.056 = phi %struct.BIT_STRING_BITNAME_st* [ %1, %for.body7.lr.ph ], [ %incdec.ptr, %for.inc ]
  %sname = getelementptr inbounds %struct.BIT_STRING_BITNAME_st, %struct.BIT_STRING_BITNAME_st* %bnam.056, i64 0, i32 2
  %6 = load i8*, i8** %sname, align 8, !tbaa !19
  %call8 = tail call i32 @strcmp(i8* noundef %6, i8* noundef %4) #6
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body7
  %call12 = tail call i32 @strcmp(i8* noundef nonnull %5, i8* noundef %4) #6
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %for.inc

if.then14:                                        ; preds = %lor.lhs.false, %for.body7
  %bitnum = getelementptr inbounds %struct.BIT_STRING_BITNAME_st, %struct.BIT_STRING_BITNAME_st* %bnam.056, i64 0, i32 0
  %7 = load i32, i32* %bitnum, align 8, !tbaa !13
  %call15 = tail call i32 @ASN1_BIT_STRING_set_bit(%struct.asn1_string_st* noundef nonnull %call, i32 noundef %7, i32 noundef 1) #4
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %for.end

if.then17:                                        ; preds = %if.then14
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.v2i_ASN1_BIT_STRING, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #4
  tail call void @ASN1_BIT_STRING_free(%struct.asn1_string_st* noundef nonnull %call) #4
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false
  %incdec.ptr = getelementptr inbounds %struct.BIT_STRING_BITNAME_st, %struct.BIT_STRING_BITNAME_st* %bnam.056, i64 1
  %lname = getelementptr inbounds %struct.BIT_STRING_BITNAME_st, %struct.BIT_STRING_BITNAME_st* %bnam.056, i64 1, i32 1
  %8 = load i8*, i8** %lname, align 8, !tbaa !11
  %tobool.not = icmp eq i8* %8, null
  br i1 %tobool.not, label %if.then22, label %for.body7, !llvm.loop !20

for.end:                                          ; preds = %if.then14
  %lname.le = getelementptr inbounds %struct.BIT_STRING_BITNAME_st, %struct.BIT_STRING_BITNAME_st* %bnam.056, i64 0, i32 1
  %.pr = load i8*, i8** %lname.le, align 8, !tbaa !11
  %tobool21.not = icmp eq i8* %.pr, null
  %inc = add nuw nsw i32 %i.060, 1
  br i1 %tobool21.not, label %if.then22, label %for.cond

if.then22:                                        ; preds = %for.end, %for.body, %for.inc
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.v2i_ASN1_BIT_STRING, i64 0, i64 0)) #4
  %name23 = getelementptr inbounds i8, i8* %call5, i64 8
  %9 = bitcast i8* %name23 to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !17
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 111, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* noundef %10) #4
  tail call void @ASN1_BIT_STRING_free(%struct.asn1_string_st* noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %for.cond.preheader, %if.then22, %if.then17, %if.then
  %retval.0 = phi %struct.asn1_string_st* [ null, %if.then ], [ null, %if.then22 ], [ null, %if.then17 ], [ %call, %for.cond.preheader ], [ %call, %for.cond ]
  ret %struct.asn1_string_st* %retval.0
}

declare i32 @ASN1_BIT_STRING_get_bit(%struct.asn1_string_st* noundef, i32 noundef) local_unnamed_addr #0

declare i32 @X509V3_add_value(i8* noundef, i8* noundef, %struct.stack_st_CONF_VALUE** noundef) local_unnamed_addr #0

declare %struct.asn1_string_st* @ASN1_BIT_STRING_new() local_unnamed_addr #0

declare void @ERR_new() local_unnamed_addr #0

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #0

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #0

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @ASN1_BIT_STRING_set_bit(%struct.asn1_string_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

declare void @ASN1_BIT_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #0

attributes #0 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!8 = !{!9, !5, i64 96}
!9 = !{!"v3_ext_method", !10, i64 0, !10, i64 4, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96}
!10 = !{!"int", !6, i64 0}
!11 = !{!12, !5, i64 8}
!12 = !{!"BIT_STRING_BITNAME_st", !10, i64 0, !5, i64 8, !5, i64 16}
!13 = !{!12, !10, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = !{!18, !5, i64 8}
!18 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16}
!19 = !{!12, !5, i64 16}
!20 = distinct !{!20, !15}
