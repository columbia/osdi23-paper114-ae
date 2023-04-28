; ModuleID = 'crypto/x509/v3_cpols.c'
source_filename = "crypto/x509/v3_cpols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, {}* }
%struct.v3_ext_method = type { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, {}*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* }
%struct.stack_st_CONF_VALUE = type opaque
%struct.v3_ext_ctx = type { i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_req_st*, %struct.X509_crl_st*, %struct.X509V3_CONF_METHOD_st*, i8*, %struct.evp_pkey_st* }
%struct.x509_st = type opaque
%struct.X509_req_st = type opaque
%struct.X509_crl_st = type opaque
%struct.X509V3_CONF_METHOD_st = type { i8* (i8*, i8*, i8*)*, %struct.stack_st_CONF_VALUE* (i8*, i8*)*, void (i8*, i8*)*, void (i8*, %struct.stack_st_CONF_VALUE*)* }
%struct.evp_pkey_st = type opaque
%struct.bio_st = type opaque
%struct.ASN1_ADB_st = type { i64, i64, i32 (i64*)*, %struct.ASN1_ADB_TABLE_st*, i64, %struct.ASN1_TEMPLATE_st*, %struct.ASN1_TEMPLATE_st* }
%struct.ASN1_ADB_TABLE_st = type { i64, %struct.ASN1_TEMPLATE_st }
%struct.stack_st_POLICYINFO = type opaque
%struct.stack_st = type opaque
%struct.asn1_object_st = type opaque
%struct.stack_st_POLICYQUALINFO = type opaque
%struct.POLICYINFO_st = type { %struct.asn1_object_st*, %struct.stack_st_POLICYQUALINFO* }
%struct.ASN1_VALUE_st = type opaque
%struct.POLICYQUALINFO_st = type { %struct.asn1_object_st*, %union.anon }
%union.anon = type { %struct.asn1_string_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.USERNOTICE_st = type { %struct.NOTICEREF_st*, %struct.asn1_string_st* }
%struct.NOTICEREF_st = type { %struct.asn1_string_st*, %struct.stack_st_ASN1_INTEGER* }
%struct.stack_st_ASN1_INTEGER = type opaque
%struct.X509_POLICY_NODE_st = type { %struct.X509_POLICY_DATA_st*, %struct.X509_POLICY_NODE_st*, i32 }
%struct.X509_POLICY_DATA_st = type { i32, %struct.asn1_object_st*, %struct.stack_st_POLICYQUALINFO*, %struct.stack_st_ASN1_OBJECT* }
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.CONF_VALUE = type { i8*, i8*, i8* }

@ossl_v3_cpols = local_unnamed_addr constant { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 89, i32 0, %struct.ASN1_ITEM_st* ()* @CERTIFICATEPOLICIES_it, i8* ()* null, void (i8*)* null, i8* (i8*, i8**, i64)* null, i32 (i8*, i8**)* null, i8* (%struct.v3_ext_method*, i8*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* null, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* bitcast (i32 (%struct.v3_ext_method*, %struct.stack_st_POLICYINFO*, %struct.bio_st*, i32)* @i2r_certpol to i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*), i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* bitcast (%struct.stack_st_POLICYINFO* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* @r2i_certpol to i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*), i8* null }, align 8
@CERTIFICATEPOLICIES_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 -1, %struct.ASN1_TEMPLATE_st* bitcast ({ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }* @CERTIFICATEPOLICIES_item_tt to %struct.ASN1_TEMPLATE_st*), i64 0, i8* null, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [20 x i8] c"CERTIFICATEPOLICIES\00", align 1
@POLICYINFO_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @POLICYINFO_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"POLICYINFO\00", align 1
@POLICYQUALINFO_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @POLICYQUALINFO_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0) }, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"POLICYQUALINFO\00", align 1
@USERNOTICE_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @USERNOTICE_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0) }, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"USERNOTICE\00", align 1
@NOTICEREF_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @NOTICEREF_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0) }, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"NOTICEREF\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"%*sPolicy: \00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%*s%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"Critical\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Non Critical\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"%*sNo Qualifiers\0A\00", align 1
@CERTIFICATEPOLICIES_item_tt = internal constant { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4, i64 0, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @POLICYINFO_it }, align 8
@.str.13 = private unnamed_addr constant [9 x i8] c"policyid\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"qualifiers\00", align 1
@POLICYINFO_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 5, i64 0, i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @POLICYQUALINFO_it }], align 16
@.str.16 = private unnamed_addr constant [8 x i8] c"pqualid\00", align 1
@POLICYQUALINFO_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 256, i64 -1, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @POLICYQUALINFO_adb }], align 16
@POLICYQUALINFO_adb.internal_adb = internal constant %struct.ASN1_ADB_st { i64 0, i64 0, i32 (i64*)* null, %struct.ASN1_ADB_TABLE_st* getelementptr inbounds ([2 x %struct.ASN1_ADB_TABLE_st], [2 x %struct.ASN1_ADB_TABLE_st]* bitcast ([2 x { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } }]* @POLICYQUALINFO_adbtbl to [2 x %struct.ASN1_ADB_TABLE_st]*), i32 0, i32 0), i64 2, %struct.ASN1_TEMPLATE_st* bitcast ({ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }* @policydefault_tt to %struct.ASN1_TEMPLATE_st*), %struct.ASN1_TEMPLATE_st* null }, align 8
@.str.18 = private unnamed_addr constant [9 x i8] c"d.cpsuri\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"d.usernotice\00", align 1
@POLICYQUALINFO_adbtbl = internal constant [2 x { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } }] [{ i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 164, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_IA5STRING_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 165, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @USERNOTICE_it } }], align 16
@.str.21 = private unnamed_addr constant [8 x i8] c"d.other\00", align 1
@policydefault_tt = internal constant { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_ANY_it }, align 8
@.str.23 = private unnamed_addr constant [10 x i8] c"noticeref\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"exptext\00", align 1
@USERNOTICE_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @NOTICEREF_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @DISPLAYTEXT_it }], align 16
@.str.26 = private unnamed_addr constant [13 x i8] c"organization\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"noticenos\00", align 1
@NOTICEREF_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @DISPLAYTEXT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4, i64 0, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }], align 16
@.str.29 = private unnamed_addr constant [23 x i8] c"crypto/x509/v3_cpols.c\00", align 1
@__func__.r2i_certpol = private unnamed_addr constant [12 x i8] c"r2i_certpol\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"name=\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c", value=\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"ia5org\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"policyIdentifier\00", align 1
@__func__.policy_section = private unnamed_addr constant [15 x i8] c"policy_section\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"section:\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c",name:\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c",value:\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"CPS\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"userNotice\00", align 1
@__func__.notice_section = private unnamed_addr constant [15 x i8] c"notice_section\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"explicitText\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"noticeNumbers\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"UTF8\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"UTF8String\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"BMP\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"BMPSTRING\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"VISIBLE\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"VISIBLESTRING\00", align 1
@__func__.nref_nos = private unnamed_addr constant [9 x i8] c"nref_nos\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"%*sCPS: %.*s\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"%*sUser Notice:\0A\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"%*sUnknown Qualifier: \00", align 1
@.str.51 = private unnamed_addr constant [23 x i8] c"%*sOrganization: %.*s\0A\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"%*sNumber%s: \00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"%*sExplicit Text: %.*s\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @CERTIFICATEPOLICIES_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CERTIFICATEPOLICIES_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @i2r_certpol(%struct.v3_ext_method* nocapture noundef readnone %method, %struct.stack_st_POLICYINFO* noundef %pol, %struct.bio_st* noundef %out, i32 noundef %indent) #1 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_POLICYINFO_sk_type(%struct.stack_st_POLICYINFO* noundef %pol) #7
  %call125 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #8
  %cmp26 = icmp sgt i32 %call125, 0
  br i1 %cmp26, label %if.end.peel, label %for.end

if.end.peel:                                      ; preds = %entry
  %add = add nsw i32 %indent, 2
  %call5.peel = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef 0) #8
  %call6.peel = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #8
  %policyid.peel = bitcast i8* %call5.peel to %struct.asn1_object_st**
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %policyid.peel, align 8, !tbaa !4
  %call7.peel = tail call i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef %out, %struct.asn1_object_st* noundef %0) #8
  %qualifiers.peel = getelementptr inbounds i8, i8* %call5.peel, i64 8
  %1 = bitcast i8* %qualifiers.peel to %struct.stack_st_POLICYQUALINFO**
  %2 = load %struct.stack_st_POLICYQUALINFO*, %struct.stack_st_POLICYQUALINFO** %1, align 8, !tbaa !9
  %tobool.not.peel = icmp eq %struct.stack_st_POLICYQUALINFO* %2, null
  br i1 %tobool.not.peel, label %for.inc.peel, label %if.then8.peel

if.then8.peel:                                    ; preds = %if.end.peel
  %call9.peel = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #8
  %3 = load %struct.stack_st_POLICYQUALINFO*, %struct.stack_st_POLICYQUALINFO** %1, align 8, !tbaa !9
  tail call fastcc void @print_qualifiers(%struct.bio_st* noundef %out, %struct.stack_st_POLICYQUALINFO* noundef %3, i32 noundef %add) #7
  br label %for.inc.peel

for.inc.peel:                                     ; preds = %if.then8.peel, %if.end.peel
  %call1.peel = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #8
  %cmp.peel = icmp sgt i32 %call1.peel, 1
  br i1 %cmp.peel, label %if.end, label %for.end

if.end:                                           ; preds = %for.inc.peel, %for.inc
  %i.027 = phi i32 [ %inc, %for.inc ], [ 1, %for.inc.peel ]
  %call3 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #8
  %call5 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.027) #8
  %call6 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #8
  %policyid = bitcast i8* %call5 to %struct.asn1_object_st**
  %4 = load %struct.asn1_object_st*, %struct.asn1_object_st** %policyid, align 8, !tbaa !4
  %call7 = tail call i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef %out, %struct.asn1_object_st* noundef %4) #8
  %qualifiers = getelementptr inbounds i8, i8* %call5, i64 8
  %5 = bitcast i8* %qualifiers to %struct.stack_st_POLICYQUALINFO**
  %6 = load %struct.stack_st_POLICYQUALINFO*, %struct.stack_st_POLICYQUALINFO** %5, align 8, !tbaa !9
  %tobool.not = icmp eq %struct.stack_st_POLICYQUALINFO* %6, null
  br i1 %tobool.not, label %for.inc, label %if.then8

if.then8:                                         ; preds = %if.end
  %call9 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #8
  %7 = load %struct.stack_st_POLICYQUALINFO*, %struct.stack_st_POLICYQUALINFO** %5, align 8, !tbaa !9
  tail call fastcc void @print_qualifiers(%struct.bio_st* noundef %out, %struct.stack_st_POLICYQUALINFO* noundef %7, i32 noundef %add) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then8
  %inc = add nuw nsw i32 %i.027, 1
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #8
  %cmp = icmp slt i32 %inc, %call1
  br i1 %cmp, label %if.end, label %for.end, !llvm.loop !10

for.end:                                          ; preds = %for.inc, %for.inc.peel, %entry
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.stack_st_POLICYINFO* @r2i_certpol(%struct.v3_ext_method* nocapture noundef readnone %method, %struct.v3_ext_ctx* noundef %ctx, i8* noundef %value) #1 {
entry:
  %call = tail call %struct.stack_st_CONF_VALUE* @X509V3_parse_list(i8* noundef %value) #8
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %call) #7
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #8
  %cmp = icmp eq %struct.stack_st_CONF_VALUE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 noundef 102, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.r2i_certpol, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 524322, i8* noundef null) #8
  br label %cleanup62

if.end:                                           ; preds = %entry
  %call4 = tail call %struct.stack_st* @OPENSSL_sk_new_reserve(i32 (i8*, i8*)* noundef null, i32 noundef %call2) #8
  %0 = bitcast %struct.stack_st* %call4 to %struct.stack_st_POLICYINFO*
  %cmp5 = icmp eq %struct.stack_st* %call4, null
  br i1 %cmp5, label %if.then6, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %cmp8131 = icmp sgt i32 %call2, 0
  br i1 %cmp8131, label %for.body, label %for.end

if.then6:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 noundef 108, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.r2i_certpol, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #8
  br label %err

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %ia5org.0133 = phi i32 [ %ia5org.1, %for.inc ], [ 0, %for.cond.preheader ]
  %i.0132 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %call10 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call1, i32 noundef %i.0132) #8
  %value11 = getelementptr inbounds i8, i8* %call10, i64 16
  %1 = bitcast i8* %value11 to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !13
  %cmp12.not = icmp eq i8* %2, null
  br i1 %cmp12.not, label %lor.lhs.false, label %if.then14

lor.lhs.false:                                    ; preds = %for.body
  %name = getelementptr inbounds i8, i8* %call10, i64 8
  %3 = bitcast i8* %name to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !15
  %cmp13 = icmp eq i8* %4, null
  br i1 %cmp13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %lor.lhs.false, %for.body
  %5 = bitcast i8* %value11 to i8**
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 noundef 116, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.r2i_certpol, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 134, i8* noundef null) #8
  %name15 = getelementptr inbounds i8, i8* %call10, i64 8
  %6 = bitcast i8* %name15 to i8**
  %7 = load i8*, i8** %6, align 8, !tbaa !15
  %8 = load i8*, i8** %5, align 8, !tbaa !13
  tail call void (i32, ...) @ERR_add_error_data(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i8* noundef %7, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), i8* noundef %8) #8
  br label %err

if.end17:                                         ; preds = %lor.lhs.false
  %call19 = tail call i32 @strcmp(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0)) #9
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %for.inc, label %if.else

if.else:                                          ; preds = %if.end17
  %9 = load i8, i8* %4, align 1, !tbaa !16
  %cmp22 = icmp eq i8 %9, 64
  br i1 %cmp22, label %if.then24, label %if.else36

if.then24:                                        ; preds = %if.else
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 1
  %call25 = tail call %struct.stack_st_CONF_VALUE* @X509V3_get_section(%struct.v3_ext_ctx* noundef %ctx, i8* noundef nonnull %add.ptr) #8
  %cmp26 = icmp eq %struct.stack_st_CONF_VALUE* %call25, null
  br i1 %cmp26, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.then24
  %10 = bitcast i8* %name to i8**
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 noundef 129, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.r2i_certpol, i64 0, i64 0)) #8
  %11 = load i8*, i8** %10, align 8, !tbaa !15
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 135, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0), i8* noundef %11) #8
  br label %err

if.end30:                                         ; preds = %if.then24
  %call31 = tail call fastcc %struct.POLICYINFO_st* @policy_section(%struct.v3_ext_ctx* noundef %ctx, %struct.stack_st_CONF_VALUE* noundef nonnull %call25, i32 noundef %ia5org.0133) #7
  tail call void @X509V3_section_free(%struct.v3_ext_ctx* noundef %ctx, %struct.stack_st_CONF_VALUE* noundef nonnull %call25) #8
  %cmp32 = icmp eq %struct.POLICYINFO_st* %call31, null
  br i1 %cmp32, label %err, label %if.end50

if.else36:                                        ; preds = %if.else
  %call38 = tail call %struct.asn1_object_st* @OBJ_txt2obj(i8* noundef nonnull %4, i32 noundef 0) #8
  %cmp39 = icmp eq %struct.asn1_object_st* %call38, null
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.else36
  %12 = bitcast i8* %name to i8**
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 noundef 139, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.r2i_certpol, i64 0, i64 0)) #8
  %13 = load i8*, i8** %12, align 8, !tbaa !15
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 110, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0), i8* noundef %13) #8
  br label %err

if.end43:                                         ; preds = %if.else36
  %call44 = tail call %struct.POLICYINFO_st* @POLICYINFO_new() #7
  %cmp45 = icmp eq %struct.POLICYINFO_st* %call44, null
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end43
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef nonnull %call38) #8
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 noundef 147, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.r2i_certpol, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #8
  br label %err

if.end48:                                         ; preds = %if.end43
  %policyid = getelementptr inbounds %struct.POLICYINFO_st, %struct.POLICYINFO_st* %call44, i64 0, i32 0
  store %struct.asn1_object_st* %call38, %struct.asn1_object_st** %policyid, align 8, !tbaa !4
  br label %if.end50

if.end50:                                         ; preds = %if.end30, %if.end48
  %pol.2 = phi %struct.POLICYINFO_st* [ %call44, %if.end48 ], [ %call31, %if.end30 ]
  %call51 = tail call fastcc %struct.stack_st* @ossl_check_POLICYINFO_sk_type(%struct.stack_st_POLICYINFO* noundef nonnull %0) #7
  %14 = bitcast %struct.POLICYINFO_st* %pol.2 to i8*
  %call53 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call51, i8* noundef %14) #8
  %tobool.not = icmp eq i32 %call53, 0
  br i1 %tobool.not, label %if.then54, label %for.inc

if.then54:                                        ; preds = %if.end50
  tail call void @POLICYINFO_free(%struct.POLICYINFO_st* noundef nonnull %pol.2) #7
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 noundef 154, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.r2i_certpol, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #8
  br label %err

for.inc:                                          ; preds = %if.end17, %if.end50
  %ia5org.1 = phi i32 [ %ia5org.0133, %if.end50 ], [ 1, %if.end17 ]
  %inc = add nuw nsw i32 %i.0132, 1
  %exitcond.not = icmp eq i32 %inc, %call2
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !17

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %call56 = tail call fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef nonnull %call) #7
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call56, void (i8*)* noundef bitcast (void (%struct.CONF_VALUE*)* @X509V3_conf_free to void (i8*)*)) #8
  br label %cleanup62

err:                                              ; preds = %if.end30, %if.then28, %if.then54, %if.then47, %if.then41, %if.then14, %if.then6
  %call58 = tail call fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef nonnull %call) #7
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call58, void (i8*)* noundef bitcast (void (%struct.CONF_VALUE*)* @X509V3_conf_free to void (i8*)*)) #8
  %call60 = tail call fastcc %struct.stack_st* @ossl_check_POLICYINFO_sk_type(%struct.stack_st_POLICYINFO* noundef %0) #7
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call60, void (i8*)* noundef bitcast (void (%struct.POLICYINFO_st*)* @POLICYINFO_free to void (i8*)*)) #8
  br label %cleanup62

cleanup62:                                        ; preds = %err, %for.end, %if.then
  %retval.0 = phi %struct.stack_st_POLICYINFO* [ null, %if.then ], [ null, %err ], [ %0, %for.end ]
  ret %struct.stack_st_POLICYINFO* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_POLICYINFO* @d2i_CERTIFICATEPOLICIES(%struct.stack_st_POLICYINFO** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_POLICYINFO** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @CERTIFICATEPOLICIES_it.local_it) #8
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.stack_st_POLICYINFO*
  ret %struct.stack_st_POLICYINFO* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_CERTIFICATEPOLICIES(%struct.stack_st_POLICYINFO* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_POLICYINFO* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @CERTIFICATEPOLICIES_it.local_it) #8
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_POLICYINFO* @CERTIFICATEPOLICIES_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @CERTIFICATEPOLICIES_it.local_it) #8
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.stack_st_POLICYINFO*
  ret %struct.stack_st_POLICYINFO* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @CERTIFICATEPOLICIES_free(%struct.stack_st_POLICYINFO* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_POLICYINFO* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @CERTIFICATEPOLICIES_it.local_it) #8
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @POLICYINFO_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @POLICYINFO_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.POLICYINFO_st* @d2i_POLICYINFO(%struct.POLICYINFO_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.POLICYINFO_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @POLICYINFO_it.local_it) #8
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.POLICYINFO_st*
  ret %struct.POLICYINFO_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_POLICYINFO(%struct.POLICYINFO_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.POLICYINFO_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @POLICYINFO_it.local_it) #8
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.POLICYINFO_st* @POLICYINFO_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @POLICYINFO_it.local_it) #8
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.POLICYINFO_st*
  ret %struct.POLICYINFO_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @POLICYINFO_free(%struct.POLICYINFO_st* noundef %a) #1 {
entry:
  %0 = bitcast %struct.POLICYINFO_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @POLICYINFO_it.local_it) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @POLICYQUALINFO_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @POLICYQUALINFO_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.POLICYQUALINFO_st* @d2i_POLICYQUALINFO(%struct.POLICYQUALINFO_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.POLICYQUALINFO_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @POLICYQUALINFO_it.local_it) #8
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.POLICYQUALINFO_st*
  ret %struct.POLICYQUALINFO_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_POLICYQUALINFO(%struct.POLICYQUALINFO_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.POLICYQUALINFO_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @POLICYQUALINFO_it.local_it) #8
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.POLICYQUALINFO_st* @POLICYQUALINFO_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @POLICYQUALINFO_it.local_it) #8
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.POLICYQUALINFO_st*
  ret %struct.POLICYQUALINFO_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @POLICYQUALINFO_free(%struct.POLICYQUALINFO_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.POLICYQUALINFO_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @POLICYQUALINFO_it.local_it) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @USERNOTICE_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @USERNOTICE_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.USERNOTICE_st* @d2i_USERNOTICE(%struct.USERNOTICE_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.USERNOTICE_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @USERNOTICE_it.local_it) #8
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.USERNOTICE_st*
  ret %struct.USERNOTICE_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_USERNOTICE(%struct.USERNOTICE_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.USERNOTICE_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @USERNOTICE_it.local_it) #8
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.USERNOTICE_st* @USERNOTICE_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @USERNOTICE_it.local_it) #8
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.USERNOTICE_st*
  ret %struct.USERNOTICE_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @USERNOTICE_free(%struct.USERNOTICE_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.USERNOTICE_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @USERNOTICE_it.local_it) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @NOTICEREF_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @NOTICEREF_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.NOTICEREF_st* @d2i_NOTICEREF(%struct.NOTICEREF_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.NOTICEREF_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @NOTICEREF_it.local_it) #8
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.NOTICEREF_st*
  ret %struct.NOTICEREF_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_NOTICEREF(%struct.NOTICEREF_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.NOTICEREF_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @NOTICEREF_it.local_it) #8
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.NOTICEREF_st* @NOTICEREF_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @NOTICEREF_it.local_it) #8
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.NOTICEREF_st*
  ret %struct.NOTICEREF_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @NOTICEREF_free(%struct.NOTICEREF_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.NOTICEREF_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @NOTICEREF_it.local_it) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @X509_POLICY_NODE_print(%struct.bio_st* noundef %out, %struct.X509_POLICY_NODE_st* nocapture noundef readonly %node, i32 noundef %indent) local_unnamed_addr #1 {
entry:
  %data = getelementptr inbounds %struct.X509_POLICY_NODE_st, %struct.X509_POLICY_NODE_st* %node, i64 0, i32 0
  %0 = load %struct.X509_POLICY_DATA_st*, %struct.X509_POLICY_DATA_st** %data, align 8, !tbaa !18
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #8
  %valid_policy = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %0, i64 0, i32 1
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %valid_policy, align 8, !tbaa !21
  %call1 = tail call i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef %out, %struct.asn1_object_st* noundef %1) #8
  %call2 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #8
  %add = add nsw i32 %indent, 2
  %flags = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %0, i64 0, i32 0
  %2 = load i32, i32* %flags, align 8, !tbaa !23
  %and = and i32 %2, 16
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 noundef %add, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* noundef %cond) #8
  %qualifier_set = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %0, i64 0, i32 2
  %3 = load %struct.stack_st_POLICYQUALINFO*, %struct.stack_st_POLICYQUALINFO** %qualifier_set, align 8, !tbaa !24
  %tobool4.not = icmp eq %struct.stack_st_POLICYQUALINFO* %3, null
  br i1 %tobool4.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call fastcc void @print_qualifiers(%struct.bio_st* noundef %out, %struct.stack_st_POLICYQUALINFO* noundef nonnull %3, i32 noundef %add) #7
  %call7 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #8
  br label %if.end

if.else:                                          ; preds = %entry
  %call9 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 noundef %add, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #2

declare i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_qualifiers(%struct.bio_st* noundef %out, %struct.stack_st_POLICYQUALINFO* noundef %quals, i32 noundef %indent) unnamed_addr #1 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_POLICYQUALINFO_sk_type(%struct.stack_st_POLICYQUALINFO* noundef %quals) #7
  %call135 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #8
  %cmp36 = icmp sgt i32 %call135, 0
  br i1 %cmp36, label %if.end.peel, label %for.end

if.end.peel:                                      ; preds = %entry
  %add = add nsw i32 %indent, 2
  %call5.peel = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef 0) #8
  %pqualid.peel = bitcast i8* %call5.peel to %struct.asn1_object_st**
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %pqualid.peel, align 8, !tbaa !25
  %call6.peel = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #8
  switch i32 %call6.peel, label %sw.default.peel [
    i32 164, label %sw.bb.peel
    i32 165, label %sw.bb10.peel
  ]

sw.bb10.peel:                                     ; preds = %if.end.peel
  %call11.peel = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #8
  %d12.peel = getelementptr inbounds i8, i8* %call5.peel, i64 8
  %usernotice.peel = bitcast i8* %d12.peel to %struct.USERNOTICE_st**
  %1 = load %struct.USERNOTICE_st*, %struct.USERNOTICE_st** %usernotice.peel, align 8, !tbaa !16
  tail call fastcc void @print_notice(%struct.bio_st* noundef %out, %struct.USERNOTICE_st* noundef %1, i32 noundef %add) #7
  br label %for.inc.peel

sw.bb.peel:                                       ; preds = %if.end.peel
  %d.peel = getelementptr inbounds i8, i8* %call5.peel, i64 8
  %cpsuri.peel = bitcast i8* %d.peel to %struct.asn1_string_st**
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %cpsuri.peel, align 8, !tbaa !16
  %length.peel = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %2, i64 0, i32 0
  %3 = load i32, i32* %length.peel, align 8, !tbaa !27
  %data.peel = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %2, i64 0, i32 2
  %4 = load i8*, i8** %data.peel, align 8, !tbaa !30
  %call9.peel = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i32 noundef %3, i8* noundef %4) #8
  br label %for.inc.peel

sw.default.peel:                                  ; preds = %if.end.peel
  %call14.peel = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.50, i64 0, i64 0), i32 noundef %add, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #8
  %5 = load %struct.asn1_object_st*, %struct.asn1_object_st** %pqualid.peel, align 8, !tbaa !25
  %call16.peel = tail call i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef %out, %struct.asn1_object_st* noundef %5) #8
  br label %for.inc.peel

for.inc.peel:                                     ; preds = %sw.default.peel, %sw.bb.peel, %sw.bb10.peel
  %call1.peel = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #8
  %cmp.peel = icmp sgt i32 %call1.peel, 1
  br i1 %cmp.peel, label %if.end, label %for.end

if.end:                                           ; preds = %for.inc.peel, %for.inc
  %i.037 = phi i32 [ %inc, %for.inc ], [ 1, %for.inc.peel ]
  %call3 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #8
  %call5 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.037) #8
  %pqualid = bitcast i8* %call5 to %struct.asn1_object_st**
  %6 = load %struct.asn1_object_st*, %struct.asn1_object_st** %pqualid, align 8, !tbaa !25
  %call6 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %6) #8
  switch i32 %call6, label %sw.default [
    i32 164, label %sw.bb
    i32 165, label %sw.bb10
  ]

sw.bb:                                            ; preds = %if.end
  %d = getelementptr inbounds i8, i8* %call5, i64 8
  %cpsuri = bitcast i8* %d to %struct.asn1_string_st**
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %cpsuri, align 8, !tbaa !16
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %7, i64 0, i32 0
  %8 = load i32, i32* %length, align 8, !tbaa !27
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %7, i64 0, i32 2
  %9 = load i8*, i8** %data, align 8, !tbaa !30
  %call9 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i32 noundef %8, i8* noundef %9) #8
  br label %for.inc

sw.bb10:                                          ; preds = %if.end
  %call11 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #8
  %d12 = getelementptr inbounds i8, i8* %call5, i64 8
  %usernotice = bitcast i8* %d12 to %struct.USERNOTICE_st**
  %10 = load %struct.USERNOTICE_st*, %struct.USERNOTICE_st** %usernotice, align 8, !tbaa !16
  tail call fastcc void @print_notice(%struct.bio_st* noundef %out, %struct.USERNOTICE_st* noundef %10, i32 noundef %add) #7
  br label %for.inc

sw.default:                                       ; preds = %if.end
  %call14 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.50, i64 0, i64 0), i32 noundef %add, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #8
  %11 = load %struct.asn1_object_st*, %struct.asn1_object_st** %pqualid, align 8, !tbaa !25
  %call16 = tail call i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef %out, %struct.asn1_object_st* noundef %11) #8
  br label %for.inc

for.inc:                                          ; preds = %sw.bb, %sw.bb10, %sw.default
  %inc = add nuw nsw i32 %i.037, 1
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #8
  %cmp = icmp slt i32 %inc, %call1
  br i1 %cmp, label %if.end, label %for.end, !llvm.loop !31

for.end:                                          ; preds = %for.inc, %for.inc.peel, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

declare %struct.ASN1_ITEM_st* @ASN1_OBJECT_it() #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal %struct.ASN1_ITEM_st* @POLICYQUALINFO_adb() #0 {
entry:
  ret %struct.ASN1_ITEM_st* bitcast (%struct.ASN1_ADB_st* @POLICYQUALINFO_adb.internal_adb to %struct.ASN1_ITEM_st*)
}

declare %struct.ASN1_ITEM_st* @ASN1_IA5STRING_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_ANY_it() #2

declare %struct.ASN1_ITEM_st* @DISPLAYTEXT_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_INTEGER_it() #2

declare %struct.stack_st_CONF_VALUE* @X509V3_parse_list(i8* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare %struct.stack_st* @OPENSSL_sk_new_reserve(i32 (i8*, i8*)* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_add_error_data(i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

declare %struct.stack_st_CONF_VALUE* @X509V3_get_section(%struct.v3_ext_ctx* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.POLICYINFO_st* @policy_section(%struct.v3_ext_ctx* noundef %ctx, %struct.stack_st_CONF_VALUE* noundef %polstrs, i32 noundef %ia5org) unnamed_addr #1 {
entry:
  %call = tail call %struct.POLICYINFO_st* @POLICYINFO_new() #7
  %cmp = icmp eq %struct.POLICYINFO_st* %call, null
  br i1 %cmp, label %merr, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %polstrs) #7
  %call2181 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #8
  %cmp3182 = icmp sgt i32 %call2181, 0
  br i1 %cmp3182, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %qualifiers77 = getelementptr inbounds %struct.POLICYINFO_st, %struct.POLICYINFO_st* %call, i64 0, i32 1
  %0 = bitcast %struct.stack_st_POLICYQUALINFO** %qualifiers77 to %struct.stack_st**
  %policyid = getelementptr inbounds %struct.POLICYINFO_st, %struct.POLICYINFO_st* %call, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.0183 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %call5 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call1, i32 noundef %i.0183) #8
  %name = getelementptr inbounds i8, i8* %call5, i64 8
  %1 = bitcast i8* %name to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !15
  %call6 = tail call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0)) #9
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %for.body
  %value = getelementptr inbounds i8, i8* %call5, i64 16
  %3 = bitcast i8* %value to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !13
  %call9 = tail call %struct.asn1_object_st* @OBJ_txt2obj(i8* noundef %4, i32 noundef 0) #8
  %cmp10 = icmp eq %struct.asn1_object_st* %call9, null
  br i1 %cmp10, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then8
  store %struct.asn1_object_st* %call9, %struct.asn1_object_st** %policyid, align 8, !tbaa !4
  br label %for.inc

cleanup:                                          ; preds = %if.then8
  %5 = bitcast i8* %name to i8**
  %6 = bitcast i8* %value to i8**
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 noundef 182, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.policy_section, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 110, i8* noundef null) #8
  %section = bitcast i8* %call5 to i8**
  %7 = load i8*, i8** %section, align 8, !tbaa !32
  %8 = load i8*, i8** %5, align 8, !tbaa !15
  %9 = load i8*, i8** %6, align 8, !tbaa !13
  tail call void (i32, ...) @ERR_add_error_data(i32 noundef 6, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0), i8* noundef %7, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i8* noundef %8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0), i8* noundef %9) #8
  br label %err

if.else:                                          ; preds = %for.body
  %call16 = tail call i32 @ossl_v3_name_cmp(i8* noundef %2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0)) #8
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.then17, label %if.else51

if.then17:                                        ; preds = %if.else
  %10 = load %struct.stack_st_POLICYQUALINFO*, %struct.stack_st_POLICYQUALINFO** %qualifiers77, align 8, !tbaa !9
  %cmp18 = icmp eq %struct.stack_st_POLICYQUALINFO* %10, null
  br i1 %cmp18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.then17
  %call20 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #8
  store %struct.stack_st* %call20, %struct.stack_st** %0, align 8, !tbaa !9
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.then17
  %call23 = tail call %struct.POLICYQUALINFO_st* @POLICYQUALINFO_new() #7
  %cmp24 = icmp eq %struct.POLICYQUALINFO_st* %call23, null
  br i1 %cmp24, label %merr, label %if.end26

if.end26:                                         ; preds = %if.end22
  %11 = load %struct.stack_st_POLICYQUALINFO*, %struct.stack_st_POLICYQUALINFO** %qualifiers77, align 8, !tbaa !9
  %call28 = tail call fastcc %struct.stack_st* @ossl_check_POLICYQUALINFO_sk_type(%struct.stack_st_POLICYQUALINFO* noundef %11) #7
  %12 = bitcast %struct.POLICYQUALINFO_st* %call23 to i8*
  %call30 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call28, i8* noundef nonnull %12) #8
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %merr, label %if.end33

if.end33:                                         ; preds = %if.end26
  %call34 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 164) #8
  %pqualid = getelementptr inbounds %struct.POLICYQUALINFO_st, %struct.POLICYQUALINFO_st* %call23, i64 0, i32 0
  store %struct.asn1_object_st* %call34, %struct.asn1_object_st** %pqualid, align 8, !tbaa !25
  %cmp35 = icmp eq %struct.asn1_object_st* %call34, null
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 noundef 196, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.policy_section, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786691, i8* noundef null) #8
  br label %err

if.end37:                                         ; preds = %if.end33
  %call38 = tail call %struct.asn1_string_st* @ASN1_IA5STRING_new() #8
  %cpsuri = getelementptr inbounds %struct.POLICYQUALINFO_st, %struct.POLICYQUALINFO_st* %call23, i64 0, i32 1, i32 0
  store %struct.asn1_string_st* %call38, %struct.asn1_string_st** %cpsuri, align 8, !tbaa !16
  %cmp39 = icmp eq %struct.asn1_string_st* %call38, null
  br i1 %cmp39, label %merr, label %if.end41

if.end41:                                         ; preds = %if.end37
  %value44 = getelementptr inbounds i8, i8* %call5, i64 16
  %13 = bitcast i8* %value44 to i8**
  %14 = load i8*, i8** %13, align 8, !tbaa !13
  %call46 = tail call i64 @strlen(i8* noundef %14) #9
  %conv = trunc i64 %call46 to i32
  %call47 = tail call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef nonnull %call38, i8* noundef %14, i32 noundef %conv) #8
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %merr, label %for.inc

if.else51:                                        ; preds = %if.else
  %15 = load i8*, i8** %1, align 8, !tbaa !15
  %call53 = tail call i32 @ossl_v3_name_cmp(i8* noundef %15, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i64 0, i64 0)) #8
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then55, label %if.else94

if.then55:                                        ; preds = %if.else51
  %value56 = getelementptr inbounds i8, i8* %call5, i64 16
  %16 = bitcast i8* %value56 to i8**
  %17 = load i8*, i8** %16, align 8, !tbaa !13
  %18 = load i8, i8* %17, align 1, !tbaa !16
  %cmp58.not = icmp eq i8 %18, 64
  br i1 %cmp58.not, label %if.end64, label %if.then60

if.then60:                                        ; preds = %if.then55
  %19 = bitcast i8* %name to i8**
  %20 = bitcast i8* %value56 to i8**
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 noundef 207, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.policy_section, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 137, i8* noundef null) #8
  %section61 = bitcast i8* %call5 to i8**
  %21 = load i8*, i8** %section61, align 8, !tbaa !32
  %22 = load i8*, i8** %19, align 8, !tbaa !15
  %23 = load i8*, i8** %20, align 8, !tbaa !13
  tail call void (i32, ...) @ERR_add_error_data(i32 noundef 6, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0), i8* noundef %21, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i8* noundef %22, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0), i8* noundef %23) #8
  br label %err

if.end64:                                         ; preds = %if.then55
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 1
  %call66 = tail call %struct.stack_st_CONF_VALUE* @X509V3_get_section(%struct.v3_ext_ctx* noundef %ctx, i8* noundef nonnull %add.ptr) #8
  %tobool67.not = icmp eq %struct.stack_st_CONF_VALUE* %call66, null
  br i1 %tobool67.not, label %if.then68, label %if.end72

if.then68:                                        ; preds = %if.end64
  %24 = bitcast i8* %name to i8**
  %25 = bitcast i8* %value56 to i8**
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 noundef 213, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.policy_section, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 135, i8* noundef null) #8
  %section69 = bitcast i8* %call5 to i8**
  %26 = load i8*, i8** %section69, align 8, !tbaa !32
  %27 = load i8*, i8** %24, align 8, !tbaa !15
  %28 = load i8*, i8** %25, align 8, !tbaa !13
  tail call void (i32, ...) @ERR_add_error_data(i32 noundef 6, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0), i8* noundef %26, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i8* noundef %27, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0), i8* noundef %28) #8
  br label %err

if.end72:                                         ; preds = %if.end64
  %call73 = tail call fastcc %struct.POLICYQUALINFO_st* @notice_section(%struct.stack_st_CONF_VALUE* noundef nonnull %call66, i32 noundef %ia5org) #7
  tail call void @X509V3_section_free(%struct.v3_ext_ctx* noundef %ctx, %struct.stack_st_CONF_VALUE* noundef nonnull %call66) #8
  %tobool74.not = icmp eq %struct.POLICYQUALINFO_st* %call73, null
  br i1 %tobool74.not, label %err, label %if.end76

if.end76:                                         ; preds = %if.end72
  %29 = load %struct.stack_st_POLICYQUALINFO*, %struct.stack_st_POLICYQUALINFO** %qualifiers77, align 8, !tbaa !9
  %cmp78 = icmp eq %struct.stack_st_POLICYQUALINFO* %29, null
  br i1 %cmp78, label %if.then80, label %if.end83

if.then80:                                        ; preds = %if.end76
  %call81 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #8
  store %struct.stack_st* %call81, %struct.stack_st** %0, align 8, !tbaa !9
  %30 = bitcast %struct.stack_st* %call81 to %struct.stack_st_POLICYQUALINFO*
  br label %if.end83

if.end83:                                         ; preds = %if.then80, %if.end76
  %31 = phi %struct.stack_st_POLICYQUALINFO* [ %30, %if.then80 ], [ %29, %if.end76 ]
  %call85 = tail call fastcc %struct.stack_st* @ossl_check_POLICYQUALINFO_sk_type(%struct.stack_st_POLICYQUALINFO* noundef %31) #7
  %32 = bitcast %struct.POLICYQUALINFO_st* %call73 to i8*
  %call87 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call85, i8* noundef nonnull %32) #8
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %merr, label %for.inc

if.else94:                                        ; preds = %if.else51
  %33 = bitcast i8* %name to i8**
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 noundef 227, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.policy_section, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 138, i8* noundef null) #8
  %section95 = bitcast i8* %call5 to i8**
  %34 = load i8*, i8** %section95, align 8, !tbaa !32
  %35 = load i8*, i8** %33, align 8, !tbaa !15
  %value97 = getelementptr inbounds i8, i8* %call5, i64 16
  %36 = bitcast i8* %value97 to i8**
  %37 = load i8*, i8** %36, align 8, !tbaa !13
  tail call void (i32, ...) @ERR_add_error_data(i32 noundef 6, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0), i8* noundef %34, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i8* noundef %35, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0), i8* noundef %37) #8
  br label %err

for.inc:                                          ; preds = %if.end83, %cleanup.thread, %if.end41
  %inc = add nuw nsw i32 %i.0183, 1
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #8
  %cmp3 = icmp slt i32 %inc, %call2
  br i1 %cmp3, label %for.body, label %for.end, !llvm.loop !33

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %policyid101 = getelementptr inbounds %struct.POLICYINFO_st, %struct.POLICYINFO_st* %call, i64 0, i32 0
  %38 = load %struct.asn1_object_st*, %struct.asn1_object_st** %policyid101, align 8, !tbaa !4
  %cmp102 = icmp eq %struct.asn1_object_st* %38, null
  br i1 %cmp102, label %if.then104, label %cleanup106

if.then104:                                       ; preds = %for.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 noundef 233, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.policy_section, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 139, i8* noundef null) #8
  br label %err

merr:                                             ; preds = %if.end83, %if.end41, %if.end37, %if.end26, %if.end22, %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 noundef 240, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.policy_section, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #8
  br label %err

err:                                              ; preds = %if.end72, %if.then68, %if.then60, %cleanup, %merr, %if.then104, %if.else94, %if.then36
  tail call void @POLICYINFO_free(%struct.POLICYINFO_st* noundef %call) #7
  br label %cleanup106

cleanup106:                                       ; preds = %for.end, %err
  %retval.0 = phi %struct.POLICYINFO_st* [ null, %err ], [ %call, %for.end ]
  ret %struct.POLICYINFO_st* %retval.0
}

declare void @X509V3_section_free(%struct.v3_ext_ctx* noundef, %struct.stack_st_CONF_VALUE* noundef) local_unnamed_addr #2

declare %struct.asn1_object_st* @OBJ_txt2obj(i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_POLICYINFO_sk_type(%struct.stack_st_POLICYINFO* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_POLICYINFO* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509V3_conf_free(%struct.CONF_VALUE* noundef) #2

declare i32 @ossl_v3_name_cmp(i8* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_POLICYQUALINFO_sk_type(%struct.stack_st_POLICYQUALINFO* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_POLICYQUALINFO* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @ASN1_IA5STRING_new() local_unnamed_addr #2

declare i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.POLICYQUALINFO_st* @notice_section(%struct.stack_st_CONF_VALUE* noundef %unot, i32 noundef %ia5org) unnamed_addr #1 {
entry:
  %tag_len = alloca i32, align 4
  %0 = bitcast i32* %tag_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  %call = tail call %struct.POLICYQUALINFO_st* @POLICYQUALINFO_new() #7
  %cmp = icmp eq %struct.POLICYQUALINFO_st* %call, null
  br i1 %cmp, label %merr, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 165) #8
  %pqualid = getelementptr inbounds %struct.POLICYQUALINFO_st, %struct.POLICYQUALINFO_st* %call, i64 0, i32 0
  store %struct.asn1_object_st* %call1, %struct.asn1_object_st** %pqualid, align 8, !tbaa !25
  %cmp2 = icmp eq %struct.asn1_object_st* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 noundef 293, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.notice_section, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786691, i8* noundef null) #8
  br label %err

if.end4:                                          ; preds = %if.end
  %call5 = tail call %struct.USERNOTICE_st* @USERNOTICE_new() #7
  %cmp6 = icmp eq %struct.USERNOTICE_st* %call5, null
  br i1 %cmp6, label %merr, label %if.end8

if.end8:                                          ; preds = %if.end4
  %d = getelementptr inbounds %struct.POLICYQUALINFO_st, %struct.POLICYQUALINFO_st* %call, i64 0, i32 1
  %usernotice = bitcast %union.anon* %d to %struct.USERNOTICE_st**
  store %struct.USERNOTICE_st* %call5, %struct.USERNOTICE_st** %usernotice, align 8, !tbaa !16
  %call9 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %unot) #7
  %call1019 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call9) #8
  %cmp1120 = icmp sgt i32 %call1019, 0
  br i1 %cmp1120, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %noticeref69 = getelementptr inbounds %struct.USERNOTICE_st, %struct.USERNOTICE_st* %call5, i64 0, i32 0
  %tobool47.not = icmp eq i32 %ia5org, 0
  %exptext = getelementptr inbounds %struct.USERNOTICE_st, %struct.USERNOTICE_st* %call5, i64 0, i32 1
  %. = select i1 %tobool47.not, i32 26, i32 22
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %call13 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call9, i32 noundef %i.021) #8
  %value14 = getelementptr inbounds i8, i8* %call13, i64 16
  %1 = bitcast i8* %value14 to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !13
  %name = getelementptr inbounds i8, i8* %call13, i64 8
  %3 = bitcast i8* %name to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !15
  %call15 = tail call i32 @strcmp(i8* noundef %4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i64 0, i64 0)) #9
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %for.body
  %call18 = call fastcc i32 @displaytext_str2tag(i8* noundef %2, i32* noundef nonnull %tag_len) #7, !range !34
  %call19 = tail call %struct.asn1_string_st* @ASN1_STRING_type_new(i32 noundef %call18) #8
  store %struct.asn1_string_st* %call19, %struct.asn1_string_st** %exptext, align 8, !tbaa !35
  %cmp20 = icmp eq %struct.asn1_string_st* %call19, null
  br i1 %cmp20, label %merr, label %if.end22

if.end22:                                         ; preds = %if.then17
  %5 = load i32, i32* %tag_len, align 4, !tbaa !37
  %cmp23.not = icmp eq i32 %5, 0
  %add = add i32 %5, 1
  %narrow = select i1 %cmp23.not, i32 0, i32 %add
  %value.0.idx = zext i32 %narrow to i64
  %value.0 = getelementptr i8, i8* %2, i64 %value.0.idx
  %call26 = tail call i64 @strlen(i8* noundef %value.0) #9
  %conv = trunc i64 %call26 to i32
  %call28 = tail call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef nonnull %call19, i8* noundef %value.0, i32 noundef %conv) #8
  %tobool.not = icmp eq i32 %call28, 0
  br i1 %tobool.not, label %merr, label %for.inc

if.else:                                          ; preds = %for.body
  %call32 = tail call i32 @strcmp(i8* noundef %4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0)) #9
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then35, label %if.else62

if.then35:                                        ; preds = %if.else
  %6 = load %struct.NOTICEREF_st*, %struct.NOTICEREF_st** %noticeref69, align 8, !tbaa !38
  %tobool36.not = icmp eq %struct.NOTICEREF_st* %6, null
  br i1 %tobool36.not, label %if.then37, label %if.end46

if.then37:                                        ; preds = %if.then35
  %call38 = tail call %struct.NOTICEREF_st* @NOTICEREF_new() #7
  %cmp39 = icmp eq %struct.NOTICEREF_st* %call38, null
  br i1 %cmp39, label %merr, label %if.end42

if.end42:                                         ; preds = %if.then37
  store %struct.NOTICEREF_st* %call38, %struct.NOTICEREF_st** %noticeref69, align 8, !tbaa !38
  br label %if.end46

if.end46:                                         ; preds = %if.then35, %if.end42
  %nref.0 = phi %struct.NOTICEREF_st* [ %call38, %if.end42 ], [ %6, %if.then35 ]
  %organization50 = getelementptr inbounds %struct.NOTICEREF_st, %struct.NOTICEREF_st* %nref.0, i64 0, i32 0
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %organization50, align 8, !tbaa !39
  %type51 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %7, i64 0, i32 1
  store i32 %., i32* %type51, align 4, !tbaa !41
  %8 = load i8*, i8** %1, align 8, !tbaa !13
  %call56 = tail call i64 @strlen(i8* noundef %8) #9
  %conv57 = trunc i64 %call56 to i32
  %call58 = tail call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef nonnull %7, i8* noundef %8, i32 noundef %conv57) #8
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %merr, label %for.inc

if.else62:                                        ; preds = %if.else
  %call64 = tail call i32 @strcmp(i8* noundef %4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i64 0, i64 0)) #9
  %cmp65 = icmp eq i32 %call64, 0
  br i1 %cmp65, label %if.then67, label %if.else103

if.then67:                                        ; preds = %if.else62
  %9 = load %struct.NOTICEREF_st*, %struct.NOTICEREF_st** %noticeref69, align 8, !tbaa !38
  %tobool70.not = icmp eq %struct.NOTICEREF_st* %9, null
  br i1 %tobool70.not, label %if.then71, label %if.end80

if.then71:                                        ; preds = %if.then67
  %call72 = tail call %struct.NOTICEREF_st* @NOTICEREF_new() #7
  %cmp73 = icmp eq %struct.NOTICEREF_st* %call72, null
  br i1 %cmp73, label %merr, label %if.end76

if.end76:                                         ; preds = %if.then71
  store %struct.NOTICEREF_st* %call72, %struct.NOTICEREF_st** %noticeref69, align 8, !tbaa !38
  %.pre = load i8*, i8** %1, align 8, !tbaa !13
  br label %if.end80

if.end80:                                         ; preds = %if.then67, %if.end76
  %10 = phi i8* [ %.pre, %if.end76 ], [ %2, %if.then67 ]
  %nref68.0 = phi %struct.NOTICEREF_st* [ %call72, %if.end76 ], [ %9, %if.then67 ]
  %call82 = tail call %struct.stack_st_CONF_VALUE* @X509V3_parse_list(i8* noundef %10) #8
  %tobool83.not = icmp eq %struct.stack_st_CONF_VALUE* %call82, null
  br i1 %tobool83.not, label %if.then87, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end80
  %call84 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef nonnull %call82) #7
  %call85 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call84) #8
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.then87, label %if.end92

if.then87:                                        ; preds = %lor.lhs.false, %if.end80
  %11 = bitcast i8* %value14 to i8**
  %12 = bitcast i8* %name to i8**
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 noundef 340, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.notice_section, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 141, i8* noundef null) #8
  %13 = load i8*, i8** %12, align 8, !tbaa !15
  %14 = load i8*, i8** %11, align 8, !tbaa !13
  tail call void (i32, ...) @ERR_add_error_data(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i8* noundef %13, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), i8* noundef %14) #8
  %call90 = tail call fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %call82) #7
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call90, void (i8*)* noundef bitcast (void (%struct.CONF_VALUE*)* @X509V3_conf_free to void (i8*)*)) #8
  br label %err

if.end92:                                         ; preds = %lor.lhs.false
  %noticenos = getelementptr inbounds %struct.NOTICEREF_st, %struct.NOTICEREF_st* %nref68.0, i64 0, i32 1
  %15 = load %struct.stack_st_ASN1_INTEGER*, %struct.stack_st_ASN1_INTEGER** %noticenos, align 8, !tbaa !42
  %call93 = tail call fastcc i32 @nref_nos(%struct.stack_st_ASN1_INTEGER* noundef %15, %struct.stack_st_CONF_VALUE* noundef nonnull %call82) #7
  %call94 = tail call fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef nonnull %call82) #7
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call94, void (i8*)* noundef bitcast (void (%struct.CONF_VALUE*)* @X509V3_conf_free to void (i8*)*)) #8
  %tobool96.not = icmp eq i32 %call93, 0
  br i1 %tobool96.not, label %err, label %for.inc

if.else103:                                       ; preds = %if.else62
  %16 = bitcast i8* %value14 to i8**
  %17 = bitcast i8* %name to i8**
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 noundef 350, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.notice_section, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 138, i8* noundef null) #8
  %18 = load i8*, i8** %17, align 8, !tbaa !15
  %19 = load i8*, i8** %16, align 8, !tbaa !13
  tail call void (i32, ...) @ERR_add_error_data(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i8* noundef %18, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), i8* noundef %19) #8
  br label %err

for.inc:                                          ; preds = %if.end92, %if.end46, %if.end22
  %inc = add nuw nsw i32 %i.021, 1
  %call10 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call9) #8
  %cmp11 = icmp slt i32 %inc, %call10
  br i1 %cmp11, label %for.body, label %for.end, !llvm.loop !43

for.end:                                          ; preds = %for.inc, %if.end8
  %noticeref109 = getelementptr inbounds %struct.USERNOTICE_st, %struct.USERNOTICE_st* %call5, i64 0, i32 0
  %20 = load %struct.NOTICEREF_st*, %struct.NOTICEREF_st** %noticeref109, align 8, !tbaa !38
  %tobool110.not = icmp eq %struct.NOTICEREF_st* %20, null
  br i1 %tobool110.not, label %cleanup120, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end
  %noticenos112 = getelementptr inbounds %struct.NOTICEREF_st, %struct.NOTICEREF_st* %20, i64 0, i32 1
  %21 = load %struct.stack_st_ASN1_INTEGER*, %struct.stack_st_ASN1_INTEGER** %noticenos112, align 8, !tbaa !42
  %tobool113.not = icmp eq %struct.stack_st_ASN1_INTEGER* %21, null
  br i1 %tobool113.not, label %if.then118, label %lor.lhs.false114

lor.lhs.false114:                                 ; preds = %land.lhs.true
  %organization116 = getelementptr inbounds %struct.NOTICEREF_st, %struct.NOTICEREF_st* %20, i64 0, i32 0
  %22 = load %struct.asn1_string_st*, %struct.asn1_string_st** %organization116, align 8, !tbaa !39
  %tobool117.not = icmp eq %struct.asn1_string_st* %22, null
  br i1 %tobool117.not, label %if.then118, label %cleanup120

if.then118:                                       ; preds = %lor.lhs.false114, %land.lhs.true
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 noundef 358, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.notice_section, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 142, i8* noundef null) #8
  br label %err

merr:                                             ; preds = %if.end46, %if.then37, %if.then71, %if.end22, %if.then17, %if.end4, %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 noundef 365, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.notice_section, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #8
  br label %err

err:                                              ; preds = %if.end92, %if.then87, %merr, %if.then118, %if.else103, %if.then3
  tail call void @POLICYQUALINFO_free(%struct.POLICYQUALINFO_st* noundef %call) #7
  br label %cleanup120

cleanup120:                                       ; preds = %for.end, %lor.lhs.false114, %err
  %retval.0 = phi %struct.POLICYQUALINFO_st* [ null, %err ], [ %call, %lor.lhs.false114 ], [ %call, %for.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret %struct.POLICYQUALINFO_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define internal fastcc i32 @displaytext_str2tag(i8* noundef %tagstr, i32* nocapture noundef writeonly %tag_len) unnamed_addr #5 {
entry:
  store i32 0, i32* %tag_len, align 4, !tbaa !37
  %call = tail call fastcc i32 @displaytext_get_tag_len(i8* noundef %tagstr) #7
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  store i32 %call, i32* %tag_len, align 4, !tbaa !37
  switch i32 %call, label %if.end58 [
    i32 4, label %land.lhs.true
    i32 10, label %land.lhs.true12
    i32 3, label %land.lhs.true22
    i32 9, label %land.lhs.true32
    i32 7, label %land.lhs.true42
    i32 13, label %land.lhs.true52
  ]

land.lhs.true:                                    ; preds = %if.end
  %call4 = tail call i32 @strncmp(i8* noundef %tagstr, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), i64 noundef 4) #9
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %cleanup, label %if.end58

land.lhs.true12:                                  ; preds = %if.end
  %call14 = tail call i32 @strncmp(i8* noundef %tagstr, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i64 0, i64 0), i64 noundef 10) #9
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %cleanup, label %if.end58

land.lhs.true22:                                  ; preds = %if.end
  %call24 = tail call i32 @strncmp(i8* noundef %tagstr, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i64 noundef 3) #9
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %cleanup, label %if.end58

land.lhs.true32:                                  ; preds = %if.end
  %call34 = tail call i32 @strncmp(i8* noundef %tagstr, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i64 0, i64 0), i64 noundef 9) #9
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %cleanup, label %if.end58

land.lhs.true42:                                  ; preds = %if.end
  %call44 = tail call i32 @strncmp(i8* noundef %tagstr, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0), i64 noundef 7) #9
  %cmp45 = icmp eq i32 %call44, 0
  br i1 %cmp45, label %cleanup, label %if.end58

land.lhs.true52:                                  ; preds = %if.end
  %call54 = tail call i32 @strncmp(i8* noundef %tagstr, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i64 0, i64 0), i64 noundef 13) #9
  %cmp55 = icmp eq i32 %call54, 0
  br i1 %cmp55, label %cleanup, label %if.end58

if.end58:                                         ; preds = %land.lhs.true22, %land.lhs.true12, %land.lhs.true32, %land.lhs.true42, %land.lhs.true, %if.end, %land.lhs.true52
  store i32 0, i32* %tag_len, align 4, !tbaa !37
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true52, %land.lhs.true42, %land.lhs.true32, %land.lhs.true22, %land.lhs.true12, %land.lhs.true, %entry, %if.end58
  %retval.0 = phi i32 [ 26, %if.end58 ], [ 26, %entry ], [ 12, %land.lhs.true ], [ 12, %land.lhs.true12 ], [ 30, %land.lhs.true22 ], [ 30, %land.lhs.true32 ], [ 26, %land.lhs.true42 ], [ 26, %land.lhs.true52 ]
  ret i32 %retval.0
}

declare %struct.asn1_string_st* @ASN1_STRING_type_new(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @nref_nos(%struct.stack_st_ASN1_INTEGER* noundef %nnums, %struct.stack_st_CONF_VALUE* noundef %nos) unnamed_addr #1 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %nos) #7
  %call121 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #8
  %cmp22 = icmp sgt i32 %call121, 0
  br i1 %cmp22, label %for.body, label %cleanup

for.cond:                                         ; preds = %if.end
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #8
  %cmp = icmp slt i32 %inc, %call1
  br i1 %cmp, label %for.body, label %cleanup, !llvm.loop !44

for.body:                                         ; preds = %entry, %for.cond
  %i.023 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %call3 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.023) #8
  %name = getelementptr inbounds i8, i8* %call3, i64 8
  %0 = bitcast i8* %name to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !15
  %call4 = tail call %struct.asn1_string_st* @s2i_ASN1_INTEGER(%struct.v3_ext_method* noundef null, i8* noundef %1) #8
  %cmp5 = icmp eq %struct.asn1_string_st* %call4, null
  br i1 %cmp5, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %for.body
  %call6 = tail call fastcc %struct.stack_st* @ossl_check_ASN1_INTEGER_sk_type(%struct.stack_st_ASN1_INTEGER* noundef %nnums) #7
  %2 = bitcast %struct.asn1_string_st* %call4 to i8*
  %call8 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call6, i8* noundef nonnull %2) #8
  %tobool.not = icmp eq i32 %call8, 0
  %inc = add nuw nsw i32 %i.023, 1
  br i1 %tobool.not, label %merr, label %for.cond

merr:                                             ; preds = %if.end
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef nonnull %call4) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.body, %merr
  %.sink28 = phi i32 [ 392, %merr ], [ 382, %for.body ]
  %.sink = phi i32 [ 786688, %merr ], [ 140, %for.body ]
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 noundef %.sink28, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.nref_nos, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef %.sink, i8* noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %cleanup.sink.split ], [ 1, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal fastcc i32 @displaytext_get_tag_len(i8* noundef %tagstr) unnamed_addr #6 {
entry:
  %call = tail call i8* @strchr(i8* noundef %tagstr, i32 noundef 58) #9
  %cmp = icmp eq i8* %call, null
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %tagstr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %0 = trunc i64 %sub.ptr.sub to i32
  %conv = select i1 %cmp, i32 -1, i32 %0
  ret i32 %conv
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #4

declare %struct.asn1_string_st* @s2i_ASN1_INTEGER(%struct.v3_ext_method* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_ASN1_INTEGER_sk_type(%struct.stack_st_ASN1_INTEGER* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_INTEGER* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_POLICYINFO_sk_type(%struct.stack_st_POLICYINFO* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_POLICYINFO* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_POLICYQUALINFO_sk_type(%struct.stack_st_POLICYQUALINFO* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_POLICYQUALINFO* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_notice(%struct.bio_st* noundef %out, %struct.USERNOTICE_st* nocapture noundef readonly %notice, i32 noundef %indent) unnamed_addr #1 {
entry:
  %noticeref = getelementptr inbounds %struct.USERNOTICE_st, %struct.USERNOTICE_st* %notice, i64 0, i32 0
  %0 = load %struct.NOTICEREF_st*, %struct.NOTICEREF_st** %noticeref, align 8, !tbaa !38
  %tobool.not = icmp eq %struct.NOTICEREF_st* %0, null
  br i1 %tobool.not, label %if.end33, label %if.then

if.then:                                          ; preds = %entry
  %organization = getelementptr inbounds %struct.NOTICEREF_st, %struct.NOTICEREF_st* %0, i64 0, i32 0
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %organization, align 8, !tbaa !39
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %1, i64 0, i32 0
  %2 = load i32, i32* %length, align 8, !tbaa !27
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %1, i64 0, i32 2
  %3 = load i8*, i8** %data, align 8, !tbaa !30
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.51, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i32 noundef %2, i8* noundef %3) #8
  %noticenos = getelementptr inbounds %struct.NOTICEREF_st, %struct.NOTICEREF_st* %0, i64 0, i32 1
  %4 = load %struct.stack_st_ASN1_INTEGER*, %struct.stack_st_ASN1_INTEGER** %noticenos, align 8, !tbaa !42
  %call3 = tail call fastcc %struct.stack_st* @ossl_check_const_ASN1_INTEGER_sk_type(%struct.stack_st_ASN1_INTEGER* noundef %4) #7
  %call4 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call3) #8
  %cmp = icmp sgt i32 %call4, 1
  %cond = select i1 %cmp, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %call5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* noundef %cond) #8
  %5 = load %struct.stack_st_ASN1_INTEGER*, %struct.stack_st_ASN1_INTEGER** %noticenos, align 8, !tbaa !42
  %call778 = tail call fastcc %struct.stack_st* @ossl_check_const_ASN1_INTEGER_sk_type(%struct.stack_st_ASN1_INTEGER* noundef %5) #7
  %call879 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call778) #8
  %cmp980 = icmp sgt i32 %call879, 0
  br i1 %cmp980, label %for.body, label %for.end

for.body:                                         ; preds = %if.then, %for.inc
  %i.081 = phi i32 [ %inc, %for.inc ], [ 0, %if.then ]
  %6 = load %struct.stack_st_ASN1_INTEGER*, %struct.stack_st_ASN1_INTEGER** %noticenos, align 8, !tbaa !42
  %call11 = tail call fastcc %struct.stack_st* @ossl_check_const_ASN1_INTEGER_sk_type(%struct.stack_st_ASN1_INTEGER* noundef %6) #7
  %call12 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call11, i32 noundef %i.081) #8
  %7 = bitcast i8* %call12 to %struct.asn1_string_st*
  %tobool13.not = icmp eq i32 %i.081, 0
  br i1 %tobool13.not, label %if.end, label %if.then14

if.then14:                                        ; preds = %for.body
  %call15 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0)) #8
  br label %if.end

if.end:                                           ; preds = %if.then14, %for.body
  %cmp16 = icmp eq i8* %call12, null
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end
  %call18 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0)) #8
  br label %for.inc

if.else:                                          ; preds = %if.end
  %call19 = tail call i8* @i2s_ASN1_INTEGER(%struct.v3_ext_method* noundef null, %struct.asn1_string_st* noundef nonnull %7) #8
  %cmp20 = icmp eq i8* %call19, null
  br i1 %cmp20, label %cleanup43, label %if.end22

if.end22:                                         ; preds = %if.else
  %call23 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef nonnull %call19) #8
  tail call void @CRYPTO_free(i8* noundef nonnull %call19, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 noundef 472) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end22, %if.then17
  %inc = add nuw nsw i32 %i.081, 1
  %8 = load %struct.stack_st_ASN1_INTEGER*, %struct.stack_st_ASN1_INTEGER** %noticenos, align 8, !tbaa !42
  %call7 = tail call fastcc %struct.stack_st* @ossl_check_const_ASN1_INTEGER_sk_type(%struct.stack_st_ASN1_INTEGER* noundef %8) #7
  %call8 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call7) #8
  %cmp9 = icmp slt i32 %inc, %call8
  br i1 %cmp9, label %for.body, label %for.end, !llvm.loop !45

for.end:                                          ; preds = %for.inc, %if.then
  %exptext = getelementptr inbounds %struct.USERNOTICE_st, %struct.USERNOTICE_st* %notice, i64 0, i32 1
  %9 = load %struct.asn1_string_st*, %struct.asn1_string_st** %exptext, align 8, !tbaa !35
  %tobool26.not = icmp eq %struct.asn1_string_st* %9, null
  br i1 %tobool26.not, label %if.end33, label %if.then27

if.then27:                                        ; preds = %for.end
  %call28 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #8
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %for.end, %entry
  %exptext34 = getelementptr inbounds %struct.USERNOTICE_st, %struct.USERNOTICE_st* %notice, i64 0, i32 1
  %10 = load %struct.asn1_string_st*, %struct.asn1_string_st** %exptext34, align 8, !tbaa !35
  %tobool35.not = icmp eq %struct.asn1_string_st* %10, null
  br i1 %tobool35.not, label %cleanup43, label %if.then36

if.then36:                                        ; preds = %if.end33
  %length38 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %10, i64 0, i32 0
  %11 = load i32, i32* %length38, align 8, !tbaa !27
  %data40 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %10, i64 0, i32 2
  %12 = load i8*, i8** %data40, align 8, !tbaa !30
  %call41 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.56, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i32 noundef %11, i8* noundef %12) #8
  br label %cleanup43

cleanup43:                                        ; preds = %if.else, %if.end33, %if.then36
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_ASN1_INTEGER_sk_type(%struct.stack_st_ASN1_INTEGER* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_INTEGER* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @i2s_ASN1_INTEGER(%struct.v3_ext_method* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"POLICYINFO_st", !6, i64 0, !6, i64 8}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 8}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.peeled.count", i32 1}
!13 = !{!14, !6, i64 16}
!14 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16}
!15 = !{!14, !6, i64 8}
!16 = !{!7, !7, i64 0}
!17 = distinct !{!17, !11}
!18 = !{!19, !6, i64 0}
!19 = !{!"X509_POLICY_NODE_st", !6, i64 0, !6, i64 8, !20, i64 16}
!20 = !{!"int", !7, i64 0}
!21 = !{!22, !6, i64 8}
!22 = !{!"X509_POLICY_DATA_st", !20, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!23 = !{!22, !20, i64 0}
!24 = !{!22, !6, i64 16}
!25 = !{!26, !6, i64 0}
!26 = !{!"POLICYQUALINFO_st", !6, i64 0, !7, i64 8}
!27 = !{!28, !20, i64 0}
!28 = !{!"asn1_string_st", !20, i64 0, !20, i64 4, !6, i64 8, !29, i64 16}
!29 = !{!"long", !7, i64 0}
!30 = !{!28, !6, i64 8}
!31 = distinct !{!31, !11, !12}
!32 = !{!14, !6, i64 0}
!33 = distinct !{!33, !11}
!34 = !{i32 12, i32 31}
!35 = !{!36, !6, i64 8}
!36 = !{!"USERNOTICE_st", !6, i64 0, !6, i64 8}
!37 = !{!20, !20, i64 0}
!38 = !{!36, !6, i64 0}
!39 = !{!40, !6, i64 0}
!40 = !{!"NOTICEREF_st", !6, i64 0, !6, i64 8}
!41 = !{!28, !20, i64 4}
!42 = !{!40, !6, i64 8}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11}
!45 = distinct !{!45, !11}
