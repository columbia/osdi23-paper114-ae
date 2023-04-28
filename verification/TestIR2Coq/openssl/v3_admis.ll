; ModuleID = 'crypto/x509/v3_admis.c'
source_filename = "crypto/x509/v3_admis.c"
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
%struct.NamingAuthority_st = type { %struct.asn1_object_st*, %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.ASN1_VALUE_st = type opaque
%struct.ProfessionInfo_st = type { %struct.NamingAuthority_st*, %struct.stack_st_ASN1_STRING*, %struct.stack_st_ASN1_OBJECT*, %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.stack_st_ASN1_STRING = type opaque
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.Admissions_st = type { %struct.GENERAL_NAME_st*, %struct.NamingAuthority_st*, %struct.stack_st_PROFESSION_INFO* }
%struct.GENERAL_NAME_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.stack_st_PROFESSION_INFO = type opaque
%struct.AdmissionSyntax_st = type { %struct.GENERAL_NAME_st*, %struct.stack_st_ADMISSIONS* }
%struct.stack_st_ADMISSIONS = type opaque
%struct.stack_st = type opaque

@NAMING_AUTHORITY_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @NAMING_AUTHORITY_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [17 x i8] c"NAMING_AUTHORITY\00", align 1
@PROFESSION_INFO_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([5 x %struct.ASN1_TEMPLATE_st], [5 x %struct.ASN1_TEMPLATE_st]* bitcast ([5 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @PROFESSION_INFO_seq_tt to [5 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 5, i8* null, i64 40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"PROFESSION_INFO\00", align 1
@ADMISSIONS_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @ADMISSIONS_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0) }, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"ADMISSIONS\00", align 1
@ADMISSION_SYNTAX_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @ADMISSION_SYNTAX_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0) }, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"ADMISSION_SYNTAX\00", align 1
@ossl_v3_ext_admission = local_unnamed_addr constant { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 1093, i32 0, %struct.ASN1_ITEM_st* ()* @ADMISSION_SYNTAX_it, i8* ()* null, void (i8*)* null, i8* (i8*, i8**, i64)* null, i32 (i8*, i8**)* null, i8* (%struct.v3_ext_method*, i8*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* null, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* @i2r_ADMISSION_SYNTAX, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, i8* null }, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"namingAuthorityId\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"namingAuthorityUrl\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"namingAuthorityText\00", align 1
@NAMING_AUTHORITY_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_IA5STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @DIRECTORYSTRING_it }], align 16
@.str.8 = private unnamed_addr constant [16 x i8] c"namingAuthority\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"professionItems\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"professionOIDs\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"registrationNumber\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"addProfessionInfo\00", align 1
@PROFESSION_INFO_seq_tt = internal constant [5 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 0, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @NAMING_AUTHORITY_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4, i64 0, i64 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @DIRECTORYSTRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 5, i64 0, i64 16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_PRINTABLESTRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }], align 16
@.str.14 = private unnamed_addr constant [19 x i8] c"admissionAuthority\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"professionInfos\00", align 1
@ADMISSIONS_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 0, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @GENERAL_NAME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 1, i64 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @NAMING_AUTHORITY_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4, i64 0, i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @PROFESSION_INFO_it }], align 16
@.str.17 = private unnamed_addr constant [21 x i8] c"contentsOfAdmissions\00", align 1
@ADMISSION_SYNTAX_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @GENERAL_NAME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4, i64 0, i64 8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ADMISSIONS_it }], align 16
@.str.19 = private unnamed_addr constant [24 x i8] c"%*sadmissionAuthority:\0A\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"%*s  \00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"%*sEntry %0d:\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"%*s  admissionAuthority:\0A\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"%*s    \00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"%*s  Profession Info Entry %0d:\0A\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"%*s    registrationNumber: \00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"%*s    Info Entries:\0A\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"%*s      \00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"%*s    Profession OIDs:\0A\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"%*s      %s%s%s%s\0A\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"%*snamingAuthority: \00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"%*s  admissionAuthorityId: \00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"%s%s%s%s\0A\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"%*s  namingAuthorityText: \00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"%*s  namingAuthorityUrl: \00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @NAMING_AUTHORITY_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @NAMING_AUTHORITY_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @PROFESSION_INFO_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @PROFESSION_INFO_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ADMISSIONS_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ADMISSIONS_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ADMISSION_SYNTAX_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ADMISSION_SYNTAX_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.NamingAuthority_st* @d2i_NAMING_AUTHORITY(%struct.NamingAuthority_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.NamingAuthority_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @NAMING_AUTHORITY_it.local_it) #5
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.NamingAuthority_st*
  ret %struct.NamingAuthority_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_NAMING_AUTHORITY(%struct.NamingAuthority_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.NamingAuthority_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @NAMING_AUTHORITY_it.local_it) #5
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.NamingAuthority_st* @NAMING_AUTHORITY_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @NAMING_AUTHORITY_it.local_it) #5
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.NamingAuthority_st*
  ret %struct.NamingAuthority_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @NAMING_AUTHORITY_free(%struct.NamingAuthority_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.NamingAuthority_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @NAMING_AUTHORITY_it.local_it) #5
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ProfessionInfo_st* @d2i_PROFESSION_INFO(%struct.ProfessionInfo_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ProfessionInfo_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @PROFESSION_INFO_it.local_it) #5
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ProfessionInfo_st*
  ret %struct.ProfessionInfo_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PROFESSION_INFO(%struct.ProfessionInfo_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ProfessionInfo_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @PROFESSION_INFO_it.local_it) #5
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ProfessionInfo_st* @PROFESSION_INFO_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @PROFESSION_INFO_it.local_it) #5
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ProfessionInfo_st*
  ret %struct.ProfessionInfo_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @PROFESSION_INFO_free(%struct.ProfessionInfo_st* noundef %a) #1 {
entry:
  %0 = bitcast %struct.ProfessionInfo_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @PROFESSION_INFO_it.local_it) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.Admissions_st* @d2i_ADMISSIONS(%struct.Admissions_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.Admissions_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ADMISSIONS_it.local_it) #5
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.Admissions_st*
  ret %struct.Admissions_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ADMISSIONS(%struct.Admissions_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.Admissions_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ADMISSIONS_it.local_it) #5
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.Admissions_st* @ADMISSIONS_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @ADMISSIONS_it.local_it) #5
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.Admissions_st*
  ret %struct.Admissions_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @ADMISSIONS_free(%struct.Admissions_st* noundef %a) #1 {
entry:
  %0 = bitcast %struct.Admissions_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @ADMISSIONS_it.local_it) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.AdmissionSyntax_st* @d2i_ADMISSION_SYNTAX(%struct.AdmissionSyntax_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.AdmissionSyntax_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ADMISSION_SYNTAX_it.local_it) #5
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.AdmissionSyntax_st*
  ret %struct.AdmissionSyntax_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ADMISSION_SYNTAX(%struct.AdmissionSyntax_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.AdmissionSyntax_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ADMISSION_SYNTAX_it.local_it) #5
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.AdmissionSyntax_st* @ADMISSION_SYNTAX_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @ADMISSION_SYNTAX_it.local_it) #5
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.AdmissionSyntax_st*
  ret %struct.AdmissionSyntax_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @ADMISSION_SYNTAX_free(%struct.AdmissionSyntax_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.AdmissionSyntax_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @ADMISSION_SYNTAX_it.local_it) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @i2r_ADMISSION_SYNTAX(%struct.v3_ext_method* nocapture noundef readnone %method, i8* nocapture noundef readonly %in, %struct.bio_st* noundef %bp, i32 noundef %ind) #1 {
entry:
  %objbuf = alloca [128 x i8], align 16
  %admissionAuthority = bitcast i8* %in to %struct.GENERAL_NAME_st**
  %0 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %admissionAuthority, align 8, !tbaa !4
  %cmp.not = icmp eq %struct.GENERAL_NAME_st* %0, null
  br i1 %cmp.not, label %if.end12, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i32 noundef %ind, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0)) #5
  %cmp1 = icmp slt i32 %call, 1
  br i1 %cmp1, label %cleanup161, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i32 noundef %ind, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0)) #5
  %cmp3 = icmp slt i32 %call2, 1
  br i1 %cmp3, label %cleanup161, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %1 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %admissionAuthority, align 8, !tbaa !4
  %call6 = tail call i32 @GENERAL_NAME_print(%struct.bio_st* noundef %bp, %struct.GENERAL_NAME_st* noundef %1) #5
  %cmp7 = icmp slt i32 %call6, 1
  br i1 %cmp7, label %cleanup161, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %call9 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #5
  %cmp10 = icmp slt i32 %call9, 1
  br i1 %cmp10, label %cleanup161, label %if.end12

if.end12:                                         ; preds = %lor.lhs.false8, %entry
  %contentsOfAdmissions = getelementptr inbounds i8, i8* %in, i64 8
  %2 = bitcast i8* %contentsOfAdmissions to %struct.stack_st_ADMISSIONS**
  %3 = load %struct.stack_st_ADMISSIONS*, %struct.stack_st_ADMISSIONS** %2, align 8, !tbaa !9
  %call13266 = call fastcc %struct.stack_st* @ossl_check_const_ADMISSIONS_sk_type(%struct.stack_st_ADMISSIONS* noundef %3) #6
  %call14267 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call13266) #5
  %cmp15268 = icmp sgt i32 %call14267, 0
  br i1 %cmp15268, label %for.body.lr.ph, label %cleanup161

for.body.lr.ph:                                   ; preds = %if.end12
  %add81 = add nsw i32 %ind, 2
  %4 = getelementptr inbounds [128 x i8], [128 x i8]* %objbuf, i64 0, i64 0
  br label %for.body

for.cond.loopexit:                                ; preds = %for.cond50.backedge, %if.end49
  %5 = load %struct.stack_st_ADMISSIONS*, %struct.stack_st_ADMISSIONS** %2, align 8, !tbaa !9
  %call13 = call fastcc %struct.stack_st* @ossl_check_const_ADMISSIONS_sk_type(%struct.stack_st_ADMISSIONS* noundef %5) #6
  %call14 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call13) #5
  %cmp15 = icmp slt i32 %add, %call14
  br i1 %cmp15, label %for.body, label %cleanup161

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.loopexit
  %i.0269 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.cond.loopexit ]
  %6 = load %struct.stack_st_ADMISSIONS*, %struct.stack_st_ADMISSIONS** %2, align 8, !tbaa !9
  %call18 = call fastcc %struct.stack_st* @ossl_check_const_ADMISSIONS_sk_type(%struct.stack_st_ADMISSIONS* noundef %6) #6
  %call19 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call18, i32 noundef %i.0269) #5
  %add = add nuw nsw i32 %i.0269, 1
  %call20 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i32 noundef %ind, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0), i32 noundef %add) #5
  %cmp21 = icmp slt i32 %call20, 1
  br i1 %cmp21, label %cleanup161, label %if.end23

if.end23:                                         ; preds = %for.body
  %admissionAuthority24 = bitcast i8* %call19 to %struct.GENERAL_NAME_st**
  %7 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %admissionAuthority24, align 8, !tbaa !10
  %cmp25.not = icmp eq %struct.GENERAL_NAME_st* %7, null
  br i1 %cmp25.not, label %if.end41, label %if.then26

if.then26:                                        ; preds = %if.end23
  %call27 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0), i32 noundef %ind, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0)) #5
  %cmp28 = icmp slt i32 %call27, 1
  br i1 %cmp28, label %cleanup161, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %if.then26
  %call30 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i32 noundef %ind, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0)) #5
  %cmp31 = icmp slt i32 %call30, 1
  br i1 %cmp31, label %cleanup161, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false29
  %8 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %admissionAuthority24, align 8, !tbaa !10
  %call34 = call i32 @GENERAL_NAME_print(%struct.bio_st* noundef %bp, %struct.GENERAL_NAME_st* noundef %8) #5
  %cmp35 = icmp slt i32 %call34, 1
  br i1 %cmp35, label %cleanup161, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false32
  %call37 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #5
  %cmp38 = icmp slt i32 %call37, 1
  br i1 %cmp38, label %cleanup161, label %if.end41

if.end41:                                         ; preds = %lor.lhs.false36, %if.end23
  %namingAuthority = getelementptr inbounds i8, i8* %call19, i64 8
  %9 = bitcast i8* %namingAuthority to %struct.NamingAuthority_st**
  %10 = load %struct.NamingAuthority_st*, %struct.NamingAuthority_st** %9, align 8, !tbaa !12
  %cmp42.not = icmp eq %struct.NamingAuthority_st* %10, null
  br i1 %cmp42.not, label %if.end49, label %if.then43

if.then43:                                        ; preds = %if.end41
  %11 = bitcast %struct.NamingAuthority_st* %10 to i8*
  %call45 = call fastcc i32 @i2r_NAMING_AUTHORITY(i8* noundef nonnull %11, %struct.bio_st* noundef %bp, i32 noundef %ind) #6
  %cmp46 = icmp slt i32 %call45, 1
  br i1 %cmp46, label %cleanup161, label %if.end49

if.end49:                                         ; preds = %if.then43, %if.end41
  %professionInfos = getelementptr inbounds i8, i8* %call19, i64 16
  %12 = bitcast i8* %professionInfos to %struct.stack_st_PROFESSION_INFO**
  %13 = load %struct.stack_st_PROFESSION_INFO*, %struct.stack_st_PROFESSION_INFO** %12, align 8, !tbaa !13
  %call51285 = call fastcc %struct.stack_st* @ossl_check_const_PROFESSION_INFO_sk_type(%struct.stack_st_PROFESSION_INFO* noundef %13) #6
  %call52286 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call51285) #5
  %cmp53287 = icmp sgt i32 %call52286, 0
  br i1 %cmp53287, label %for.body54, label %for.cond.loopexit

for.body54:                                       ; preds = %if.end49, %for.cond50.backedge
  %j.0288 = phi i32 [ %add58, %for.cond50.backedge ], [ 0, %if.end49 ]
  %14 = load %struct.stack_st_PROFESSION_INFO*, %struct.stack_st_PROFESSION_INFO** %12, align 8, !tbaa !13
  %call56 = call fastcc %struct.stack_st* @ossl_check_const_PROFESSION_INFO_sk_type(%struct.stack_st_PROFESSION_INFO* noundef %14) #6
  %call57 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call56, i32 noundef %j.0288) #5
  %add58 = add nuw nsw i32 %j.0288, 1
  %call59 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i64 0, i64 0), i32 noundef %ind, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0), i32 noundef %add58) #5
  %cmp60 = icmp slt i32 %call59, 1
  br i1 %cmp60, label %cleanup161, label %if.end62

if.end62:                                         ; preds = %for.body54
  %registrationNumber = getelementptr inbounds i8, i8* %call57, i64 24
  %15 = bitcast i8* %registrationNumber to %struct.asn1_string_st**
  %16 = load %struct.asn1_string_st*, %struct.asn1_string_st** %15, align 8, !tbaa !14
  %cmp63.not = icmp eq %struct.asn1_string_st* %16, null
  br i1 %cmp63.not, label %if.end76, label %if.then64

if.then64:                                        ; preds = %if.end62
  %call65 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0), i32 noundef %ind, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0)) #5
  %cmp66 = icmp slt i32 %call65, 1
  br i1 %cmp66, label %cleanup161, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %if.then64
  %17 = load %struct.asn1_string_st*, %struct.asn1_string_st** %15, align 8, !tbaa !14
  %call69 = call i32 @ASN1_STRING_print(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef %17) #5
  %cmp70 = icmp slt i32 %call69, 1
  br i1 %cmp70, label %cleanup161, label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %lor.lhs.false67
  %call72 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #5
  %cmp73 = icmp slt i32 %call72, 1
  br i1 %cmp73, label %cleanup161, label %if.end76

if.end76:                                         ; preds = %lor.lhs.false71, %if.end62
  %namingAuthority77 = bitcast i8* %call57 to %struct.NamingAuthority_st**
  %18 = load %struct.NamingAuthority_st*, %struct.NamingAuthority_st** %namingAuthority77, align 8, !tbaa !16
  %cmp78.not = icmp eq %struct.NamingAuthority_st* %18, null
  br i1 %cmp78.not, label %if.end86, label %if.then79

if.then79:                                        ; preds = %if.end76
  %19 = bitcast %struct.NamingAuthority_st* %18 to i8*
  %call82 = call fastcc i32 @i2r_NAMING_AUTHORITY(i8* noundef nonnull %19, %struct.bio_st* noundef %bp, i32 noundef %add81) #6
  %cmp83 = icmp slt i32 %call82, 1
  br i1 %cmp83, label %cleanup161, label %if.end86

if.end86:                                         ; preds = %if.then79, %if.end76
  %professionItems = getelementptr inbounds i8, i8* %call57, i64 8
  %20 = bitcast i8* %professionItems to %struct.stack_st_ASN1_STRING**
  %21 = load %struct.stack_st_ASN1_STRING*, %struct.stack_st_ASN1_STRING** %20, align 8, !tbaa !17
  %cmp87.not = icmp eq %struct.stack_st_ASN1_STRING* %21, null
  br i1 %cmp87.not, label %if.end112, label %if.then88

if.then88:                                        ; preds = %if.end86
  %call89 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i64 0, i64 0), i32 noundef %ind, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0)) #5
  %cmp90 = icmp slt i32 %call89, 1
  br i1 %cmp90, label %cleanup161, label %for.cond93.preheader

for.cond93.preheader:                             ; preds = %if.then88
  %22 = load %struct.stack_st_ASN1_STRING*, %struct.stack_st_ASN1_STRING** %20, align 8, !tbaa !17
  %call95257 = call fastcc %struct.stack_st* @ossl_check_const_ASN1_STRING_sk_type(%struct.stack_st_ASN1_STRING* noundef %22) #6
  %call96258 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call95257) #5
  %cmp97259 = icmp sgt i32 %call96258, 0
  br i1 %cmp97259, label %for.body98, label %if.end112

for.cond93:                                       ; preds = %cleanup
  %23 = load %struct.stack_st_ASN1_STRING*, %struct.stack_st_ASN1_STRING** %20, align 8, !tbaa !17
  %call95 = call fastcc %struct.stack_st* @ossl_check_const_ASN1_STRING_sk_type(%struct.stack_st_ASN1_STRING* noundef %23) #6
  %call96 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call95) #5
  %cmp97 = icmp slt i32 %inc, %call96
  br i1 %cmp97, label %for.body98, label %if.end112, !llvm.loop !18

for.body98:                                       ; preds = %for.cond93.preheader, %for.cond93
  %k.0260 = phi i32 [ %inc, %for.cond93 ], [ 0, %for.cond93.preheader ]
  %24 = load %struct.stack_st_ASN1_STRING*, %struct.stack_st_ASN1_STRING** %20, align 8, !tbaa !17
  %call100 = call fastcc %struct.stack_st* @ossl_check_const_ASN1_STRING_sk_type(%struct.stack_st_ASN1_STRING* noundef %24) #6
  %call101 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call100, i32 noundef %k.0260) #5
  %call102 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0), i32 noundef %ind, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0)) #5
  %cmp103 = icmp slt i32 %call102, 1
  br i1 %cmp103, label %cleanup161, label %lor.lhs.false104

lor.lhs.false104:                                 ; preds = %for.body98
  %25 = bitcast i8* %call101 to %struct.asn1_string_st*
  %call105 = call i32 @ASN1_STRING_print(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef %25) #5
  %cmp106 = icmp slt i32 %call105, 1
  br i1 %cmp106, label %cleanup161, label %cleanup

cleanup:                                          ; preds = %lor.lhs.false104
  %call108 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #5
  %cmp109 = icmp slt i32 %call108, 1
  %inc = add nuw nsw i32 %k.0260, 1
  br i1 %cmp109, label %cleanup161, label %for.cond93

if.end112:                                        ; preds = %for.cond93, %for.cond93.preheader, %if.end86
  %professionOIDs = getelementptr inbounds i8, i8* %call57, i64 16
  %26 = bitcast i8* %professionOIDs to %struct.stack_st_ASN1_OBJECT**
  %27 = load %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT** %26, align 8, !tbaa !20
  %cmp113.not = icmp eq %struct.stack_st_ASN1_OBJECT* %27, null
  br i1 %cmp113.not, label %for.cond50.backedge, label %if.then114

if.then114:                                       ; preds = %if.end112
  %call115 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0), i32 noundef %ind, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0)) #5
  %cmp116 = icmp slt i32 %call115, 1
  br i1 %cmp116, label %cleanup161, label %for.cond119.preheader

for.cond119.preheader:                            ; preds = %if.then114
  %28 = load %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT** %26, align 8, !tbaa !20
  %call121261 = call fastcc %struct.stack_st* @ossl_check_const_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef %28) #6
  %call122262 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call121261) #5
  %cmp123263 = icmp sgt i32 %call122262, 0
  br i1 %cmp123263, label %for.body124, label %for.cond50.backedge

for.cond119:                                      ; preds = %for.body124
  %29 = load %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT** %26, align 8, !tbaa !20
  %call121 = call fastcc %struct.stack_st* @ossl_check_const_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef %29) #6
  %call122 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call121) #5
  %cmp123 = icmp slt i32 %inc146, %call122
  br i1 %cmp123, label %for.body124, label %for.cond50.backedge, !llvm.loop !21

for.body124:                                      ; preds = %for.cond119.preheader, %for.cond119
  %k.1264 = phi i32 [ %inc146, %for.cond119 ], [ 0, %for.cond119.preheader ]
  %30 = load %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT** %26, align 8, !tbaa !20
  %call126 = call fastcc %struct.stack_st* @ossl_check_const_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef %30) #6
  %call127 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call126, i32 noundef %k.1264) #5
  %31 = bitcast i8* %call127 to %struct.asn1_object_st*
  %call128 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %31) #5
  %call129 = call i8* @OBJ_nid2ln(i32 noundef %call128) #5
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %4) #7
  %call130 = call i32 @OBJ_obj2txt(i8* noundef nonnull %4, i32 noundef 128, %struct.asn1_object_st* noundef %31, i32 noundef 1) #5
  %tobool.not = icmp eq i8* %call129, null
  %cond = select i1 %tobool.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0), i8* %call129
  %cond132 = select i1 %tobool.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0)
  %cond135 = select i1 %tobool.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0)
  %call136 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0), i32 noundef %ind, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0), i8* noundef %cond, i8* noundef %cond132, i8* noundef nonnull %4, i8* noundef %cond135) #5
  %cmp137 = icmp slt i32 %call136, 1
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %4) #7
  %inc146 = add nuw nsw i32 %k.1264, 1
  br i1 %cmp137, label %cleanup161, label %for.cond119

for.cond50.backedge:                              ; preds = %for.cond119, %if.end112, %for.cond119.preheader
  %32 = load %struct.stack_st_PROFESSION_INFO*, %struct.stack_st_PROFESSION_INFO** %12, align 8, !tbaa !13
  %call51 = call fastcc %struct.stack_st* @ossl_check_const_PROFESSION_INFO_sk_type(%struct.stack_st_PROFESSION_INFO* noundef %32) #6
  %call52 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call51) #5
  %cmp53 = icmp slt i32 %add58, %call52
  br i1 %cmp53, label %for.body54, label %for.cond.loopexit, !llvm.loop !22

cleanup161:                                       ; preds = %for.cond.loopexit, %for.body, %lor.lhs.false36, %lor.lhs.false32, %lor.lhs.false29, %if.then26, %if.then43, %if.then114, %if.then88, %if.then79, %if.then64, %lor.lhs.false67, %lor.lhs.false71, %for.body54, %cleanup, %for.body98, %lor.lhs.false104, %for.body124, %if.end12, %lor.lhs.false8, %lor.lhs.false4, %lor.lhs.false, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %lor.lhs.false ], [ -1, %lor.lhs.false4 ], [ -1, %lor.lhs.false8 ], [ 1, %if.end12 ], [ -1, %for.body124 ], [ -1, %lor.lhs.false104 ], [ -1, %for.body98 ], [ -1, %cleanup ], [ -1, %for.body54 ], [ -1, %lor.lhs.false71 ], [ -1, %lor.lhs.false67 ], [ -1, %if.then64 ], [ -1, %if.then79 ], [ -1, %if.then88 ], [ -1, %if.then114 ], [ 1, %for.cond.loopexit ], [ -1, %for.body ], [ -1, %lor.lhs.false36 ], [ -1, %lor.lhs.false32 ], [ -1, %lor.lhs.false29 ], [ -1, %if.then26 ], [ -1, %if.then43 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_object_st* @NAMING_AUTHORITY_get0_authorityId(%struct.NamingAuthority_st* nocapture noundef readonly %n) local_unnamed_addr #3 {
entry:
  %namingAuthorityId = getelementptr inbounds %struct.NamingAuthority_st, %struct.NamingAuthority_st* %n, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %namingAuthorityId, align 8, !tbaa !23
  ret %struct.asn1_object_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @NAMING_AUTHORITY_set0_authorityId(%struct.NamingAuthority_st* nocapture noundef %n, %struct.asn1_object_st* noundef %id) local_unnamed_addr #1 {
entry:
  %namingAuthorityId = getelementptr inbounds %struct.NamingAuthority_st, %struct.NamingAuthority_st* %n, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %namingAuthorityId, align 8, !tbaa !23
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %0) #5
  store %struct.asn1_object_st* %id, %struct.asn1_object_st** %namingAuthorityId, align 8, !tbaa !23
  ret void
}

declare void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_string_st* @NAMING_AUTHORITY_get0_authorityURL(%struct.NamingAuthority_st* nocapture noundef readonly %n) local_unnamed_addr #3 {
entry:
  %namingAuthorityUrl = getelementptr inbounds %struct.NamingAuthority_st, %struct.NamingAuthority_st* %n, i64 0, i32 1
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %namingAuthorityUrl, align 8, !tbaa !25
  ret %struct.asn1_string_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @NAMING_AUTHORITY_set0_authorityURL(%struct.NamingAuthority_st* nocapture noundef %n, %struct.asn1_string_st* noundef %u) local_unnamed_addr #1 {
entry:
  %namingAuthorityUrl = getelementptr inbounds %struct.NamingAuthority_st, %struct.NamingAuthority_st* %n, i64 0, i32 1
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %namingAuthorityUrl, align 8, !tbaa !25
  tail call void @ASN1_IA5STRING_free(%struct.asn1_string_st* noundef %0) #5
  store %struct.asn1_string_st* %u, %struct.asn1_string_st** %namingAuthorityUrl, align 8, !tbaa !25
  ret void
}

declare void @ASN1_IA5STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_string_st* @NAMING_AUTHORITY_get0_authorityText(%struct.NamingAuthority_st* nocapture noundef readonly %n) local_unnamed_addr #3 {
entry:
  %namingAuthorityText = getelementptr inbounds %struct.NamingAuthority_st, %struct.NamingAuthority_st* %n, i64 0, i32 2
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %namingAuthorityText, align 8, !tbaa !26
  ret %struct.asn1_string_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @NAMING_AUTHORITY_set0_authorityText(%struct.NamingAuthority_st* nocapture noundef %n, %struct.asn1_string_st* noundef %t) local_unnamed_addr #1 {
entry:
  %namingAuthorityText = getelementptr inbounds %struct.NamingAuthority_st, %struct.NamingAuthority_st* %n, i64 0, i32 2
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %namingAuthorityText, align 8, !tbaa !26
  tail call void @ASN1_IA5STRING_free(%struct.asn1_string_st* noundef %0) #5
  store %struct.asn1_string_st* %t, %struct.asn1_string_st** %namingAuthorityText, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.GENERAL_NAME_st* @ADMISSION_SYNTAX_get0_admissionAuthority(%struct.AdmissionSyntax_st* nocapture noundef readonly %as) local_unnamed_addr #3 {
entry:
  %admissionAuthority = getelementptr inbounds %struct.AdmissionSyntax_st, %struct.AdmissionSyntax_st* %as, i64 0, i32 0
  %0 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %admissionAuthority, align 8, !tbaa !4
  ret %struct.GENERAL_NAME_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @ADMISSION_SYNTAX_set0_admissionAuthority(%struct.AdmissionSyntax_st* nocapture noundef %as, %struct.GENERAL_NAME_st* noundef %aa) local_unnamed_addr #1 {
entry:
  %admissionAuthority = getelementptr inbounds %struct.AdmissionSyntax_st, %struct.AdmissionSyntax_st* %as, i64 0, i32 0
  %0 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %admissionAuthority, align 8, !tbaa !4
  tail call void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef %0) #5
  store %struct.GENERAL_NAME_st* %aa, %struct.GENERAL_NAME_st** %admissionAuthority, align 8, !tbaa !4
  ret void
}

declare void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_ADMISSIONS* @ADMISSION_SYNTAX_get0_contentsOfAdmissions(%struct.AdmissionSyntax_st* nocapture noundef readonly %as) local_unnamed_addr #3 {
entry:
  %contentsOfAdmissions = getelementptr inbounds %struct.AdmissionSyntax_st, %struct.AdmissionSyntax_st* %as, i64 0, i32 1
  %0 = load %struct.stack_st_ADMISSIONS*, %struct.stack_st_ADMISSIONS** %contentsOfAdmissions, align 8, !tbaa !9
  ret %struct.stack_st_ADMISSIONS* %0
}

; Function Attrs: noinline nounwind uwtable
define void @ADMISSION_SYNTAX_set0_contentsOfAdmissions(%struct.AdmissionSyntax_st* nocapture noundef %as, %struct.stack_st_ADMISSIONS* noundef %a) local_unnamed_addr #1 {
entry:
  %contentsOfAdmissions = getelementptr inbounds %struct.AdmissionSyntax_st, %struct.AdmissionSyntax_st* %as, i64 0, i32 1
  %0 = load %struct.stack_st_ADMISSIONS*, %struct.stack_st_ADMISSIONS** %contentsOfAdmissions, align 8, !tbaa !9
  %call = tail call fastcc %struct.stack_st* @ossl_check_ADMISSIONS_sk_type(%struct.stack_st_ADMISSIONS* noundef %0) #6
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.Admissions_st*)* @ADMISSIONS_free to void (i8*)*)) #5
  store %struct.stack_st_ADMISSIONS* %a, %struct.stack_st_ADMISSIONS** %contentsOfAdmissions, align 8, !tbaa !9
  ret void
}

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_ADMISSIONS_sk_type(%struct.stack_st_ADMISSIONS* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_ADMISSIONS* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.GENERAL_NAME_st* @ADMISSIONS_get0_admissionAuthority(%struct.Admissions_st* nocapture noundef readonly %a) local_unnamed_addr #3 {
entry:
  %admissionAuthority = getelementptr inbounds %struct.Admissions_st, %struct.Admissions_st* %a, i64 0, i32 0
  %0 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %admissionAuthority, align 8, !tbaa !10
  ret %struct.GENERAL_NAME_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @ADMISSIONS_set0_admissionAuthority(%struct.Admissions_st* nocapture noundef %a, %struct.GENERAL_NAME_st* noundef %aa) local_unnamed_addr #1 {
entry:
  %admissionAuthority = getelementptr inbounds %struct.Admissions_st, %struct.Admissions_st* %a, i64 0, i32 0
  %0 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %admissionAuthority, align 8, !tbaa !10
  tail call void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef %0) #5
  store %struct.GENERAL_NAME_st* %aa, %struct.GENERAL_NAME_st** %admissionAuthority, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.NamingAuthority_st* @ADMISSIONS_get0_namingAuthority(%struct.Admissions_st* nocapture noundef readonly %a) local_unnamed_addr #3 {
entry:
  %namingAuthority = getelementptr inbounds %struct.Admissions_st, %struct.Admissions_st* %a, i64 0, i32 1
  %0 = load %struct.NamingAuthority_st*, %struct.NamingAuthority_st** %namingAuthority, align 8, !tbaa !12
  ret %struct.NamingAuthority_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @ADMISSIONS_set0_namingAuthority(%struct.Admissions_st* nocapture noundef %a, %struct.NamingAuthority_st* noundef %na) local_unnamed_addr #1 {
entry:
  %namingAuthority = getelementptr inbounds %struct.Admissions_st, %struct.Admissions_st* %a, i64 0, i32 1
  %0 = load %struct.NamingAuthority_st*, %struct.NamingAuthority_st** %namingAuthority, align 8, !tbaa !12
  tail call void @NAMING_AUTHORITY_free(%struct.NamingAuthority_st* noundef %0) #6
  store %struct.NamingAuthority_st* %na, %struct.NamingAuthority_st** %namingAuthority, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_PROFESSION_INFO* @ADMISSIONS_get0_professionInfos(%struct.Admissions_st* nocapture noundef readonly %a) local_unnamed_addr #3 {
entry:
  %professionInfos = getelementptr inbounds %struct.Admissions_st, %struct.Admissions_st* %a, i64 0, i32 2
  %0 = load %struct.stack_st_PROFESSION_INFO*, %struct.stack_st_PROFESSION_INFO** %professionInfos, align 8, !tbaa !13
  ret %struct.stack_st_PROFESSION_INFO* %0
}

; Function Attrs: noinline nounwind uwtable
define void @ADMISSIONS_set0_professionInfos(%struct.Admissions_st* nocapture noundef %a, %struct.stack_st_PROFESSION_INFO* noundef %pi) local_unnamed_addr #1 {
entry:
  %professionInfos = getelementptr inbounds %struct.Admissions_st, %struct.Admissions_st* %a, i64 0, i32 2
  %0 = load %struct.stack_st_PROFESSION_INFO*, %struct.stack_st_PROFESSION_INFO** %professionInfos, align 8, !tbaa !13
  %call = tail call fastcc %struct.stack_st* @ossl_check_PROFESSION_INFO_sk_type(%struct.stack_st_PROFESSION_INFO* noundef %0) #6
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.ProfessionInfo_st*)* @PROFESSION_INFO_free to void (i8*)*)) #5
  store %struct.stack_st_PROFESSION_INFO* %pi, %struct.stack_st_PROFESSION_INFO** %professionInfos, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_PROFESSION_INFO_sk_type(%struct.stack_st_PROFESSION_INFO* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_PROFESSION_INFO* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_string_st* @PROFESSION_INFO_get0_addProfessionInfo(%struct.ProfessionInfo_st* nocapture noundef readonly %pi) local_unnamed_addr #3 {
entry:
  %addProfessionInfo = getelementptr inbounds %struct.ProfessionInfo_st, %struct.ProfessionInfo_st* %pi, i64 0, i32 4
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %addProfessionInfo, align 8, !tbaa !27
  ret %struct.asn1_string_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @PROFESSION_INFO_set0_addProfessionInfo(%struct.ProfessionInfo_st* nocapture noundef %pi, %struct.asn1_string_st* noundef %aos) local_unnamed_addr #1 {
entry:
  %addProfessionInfo = getelementptr inbounds %struct.ProfessionInfo_st, %struct.ProfessionInfo_st* %pi, i64 0, i32 4
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %addProfessionInfo, align 8, !tbaa !27
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %0) #5
  store %struct.asn1_string_st* %aos, %struct.asn1_string_st** %addProfessionInfo, align 8, !tbaa !27
  ret void
}

declare void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.NamingAuthority_st* @PROFESSION_INFO_get0_namingAuthority(%struct.ProfessionInfo_st* nocapture noundef readonly %pi) local_unnamed_addr #3 {
entry:
  %namingAuthority = getelementptr inbounds %struct.ProfessionInfo_st, %struct.ProfessionInfo_st* %pi, i64 0, i32 0
  %0 = load %struct.NamingAuthority_st*, %struct.NamingAuthority_st** %namingAuthority, align 8, !tbaa !16
  ret %struct.NamingAuthority_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @PROFESSION_INFO_set0_namingAuthority(%struct.ProfessionInfo_st* nocapture noundef %pi, %struct.NamingAuthority_st* noundef %na) local_unnamed_addr #1 {
entry:
  %namingAuthority = getelementptr inbounds %struct.ProfessionInfo_st, %struct.ProfessionInfo_st* %pi, i64 0, i32 0
  %0 = load %struct.NamingAuthority_st*, %struct.NamingAuthority_st** %namingAuthority, align 8, !tbaa !16
  tail call void @NAMING_AUTHORITY_free(%struct.NamingAuthority_st* noundef %0) #6
  store %struct.NamingAuthority_st* %na, %struct.NamingAuthority_st** %namingAuthority, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_ASN1_STRING* @PROFESSION_INFO_get0_professionItems(%struct.ProfessionInfo_st* nocapture noundef readonly %pi) local_unnamed_addr #3 {
entry:
  %professionItems = getelementptr inbounds %struct.ProfessionInfo_st, %struct.ProfessionInfo_st* %pi, i64 0, i32 1
  %0 = load %struct.stack_st_ASN1_STRING*, %struct.stack_st_ASN1_STRING** %professionItems, align 8, !tbaa !17
  ret %struct.stack_st_ASN1_STRING* %0
}

; Function Attrs: noinline nounwind uwtable
define void @PROFESSION_INFO_set0_professionItems(%struct.ProfessionInfo_st* nocapture noundef %pi, %struct.stack_st_ASN1_STRING* noundef %as) local_unnamed_addr #1 {
entry:
  %professionItems = getelementptr inbounds %struct.ProfessionInfo_st, %struct.ProfessionInfo_st* %pi, i64 0, i32 1
  %0 = load %struct.stack_st_ASN1_STRING*, %struct.stack_st_ASN1_STRING** %professionItems, align 8, !tbaa !17
  %call = tail call fastcc %struct.stack_st* @ossl_check_ASN1_STRING_sk_type(%struct.stack_st_ASN1_STRING* noundef %0) #6
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.asn1_string_st*)* @ASN1_STRING_free to void (i8*)*)) #5
  store %struct.stack_st_ASN1_STRING* %as, %struct.stack_st_ASN1_STRING** %professionItems, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_ASN1_STRING_sk_type(%struct.stack_st_ASN1_STRING* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @ASN1_STRING_free(%struct.asn1_string_st* noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_ASN1_OBJECT* @PROFESSION_INFO_get0_professionOIDs(%struct.ProfessionInfo_st* nocapture noundef readonly %pi) local_unnamed_addr #3 {
entry:
  %professionOIDs = getelementptr inbounds %struct.ProfessionInfo_st, %struct.ProfessionInfo_st* %pi, i64 0, i32 2
  %0 = load %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT** %professionOIDs, align 8, !tbaa !20
  ret %struct.stack_st_ASN1_OBJECT* %0
}

; Function Attrs: noinline nounwind uwtable
define void @PROFESSION_INFO_set0_professionOIDs(%struct.ProfessionInfo_st* nocapture noundef %pi, %struct.stack_st_ASN1_OBJECT* noundef %po) local_unnamed_addr #1 {
entry:
  %professionOIDs = getelementptr inbounds %struct.ProfessionInfo_st, %struct.ProfessionInfo_st* %pi, i64 0, i32 2
  %0 = load %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT** %professionOIDs, align 8, !tbaa !20
  %call = tail call fastcc %struct.stack_st* @ossl_check_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef %0) #6
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.asn1_object_st*)* @ASN1_OBJECT_free to void (i8*)*)) #5
  store %struct.stack_st_ASN1_OBJECT* %po, %struct.stack_st_ASN1_OBJECT** %professionOIDs, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_OBJECT* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_string_st* @PROFESSION_INFO_get0_registrationNumber(%struct.ProfessionInfo_st* nocapture noundef readonly %pi) local_unnamed_addr #3 {
entry:
  %registrationNumber = getelementptr inbounds %struct.ProfessionInfo_st, %struct.ProfessionInfo_st* %pi, i64 0, i32 3
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %registrationNumber, align 8, !tbaa !14
  ret %struct.asn1_string_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @PROFESSION_INFO_set0_registrationNumber(%struct.ProfessionInfo_st* nocapture noundef %pi, %struct.asn1_string_st* noundef %rn) local_unnamed_addr #1 {
entry:
  %registrationNumber = getelementptr inbounds %struct.ProfessionInfo_st, %struct.ProfessionInfo_st* %pi, i64 0, i32 3
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %registrationNumber, align 8, !tbaa !14
  tail call void @ASN1_PRINTABLESTRING_free(%struct.asn1_string_st* noundef %0) #5
  store %struct.asn1_string_st* %rn, %struct.asn1_string_st** %registrationNumber, align 8, !tbaa !14
  ret void
}

declare void @ASN1_PRINTABLESTRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @ASN1_OBJECT_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_IA5STRING_it() #2

declare %struct.ASN1_ITEM_st* @DIRECTORYSTRING_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_PRINTABLESTRING_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_OCTET_STRING_it() #2

declare %struct.ASN1_ITEM_st* @GENERAL_NAME_it() #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @GENERAL_NAME_print(%struct.bio_st* noundef, %struct.GENERAL_NAME_st* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_ADMISSIONS_sk_type(%struct.stack_st_ADMISSIONS* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_ADMISSIONS* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @i2r_NAMING_AUTHORITY(i8* noundef readonly %in, %struct.bio_st* noundef %bp, i32 noundef %ind) unnamed_addr #1 {
entry:
  %objbuf = alloca [128 x i8], align 16
  %cmp = icmp eq i8* %in, null
  br i1 %cmp, label %cleanup62, label %if.end

if.end:                                           ; preds = %entry
  %namingAuthorityId = bitcast i8* %in to %struct.asn1_object_st**
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %namingAuthorityId, align 8, !tbaa !23
  %cmp1 = icmp eq %struct.asn1_object_st* %0, null
  br i1 %cmp1, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %namingAuthorityText = getelementptr inbounds i8, i8* %in, i64 16
  %1 = bitcast i8* %namingAuthorityText to %struct.asn1_string_st**
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %1, align 8, !tbaa !26
  %cmp2 = icmp eq %struct.asn1_string_st* %2, null
  br i1 %cmp2, label %land.lhs.true3, label %if.end6

land.lhs.true3:                                   ; preds = %land.lhs.true
  %namingAuthorityUrl = getelementptr inbounds i8, i8* %in, i64 8
  %3 = bitcast i8* %namingAuthorityUrl to %struct.asn1_string_st**
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %3, align 8, !tbaa !25
  %cmp4 = icmp eq %struct.asn1_string_st* %4, null
  br i1 %cmp4, label %cleanup62, label %if.end6

if.end6:                                          ; preds = %land.lhs.true3, %land.lhs.true, %if.end
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i64 0, i64 0), i32 noundef %ind, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0)) #5
  %cmp7 = icmp slt i32 %call, 1
  br i1 %cmp7, label %err, label %if.end9

if.end9:                                          ; preds = %if.end6
  %5 = load %struct.asn1_object_st*, %struct.asn1_object_st** %namingAuthorityId, align 8, !tbaa !23
  %cmp11.not = icmp eq %struct.asn1_object_st* %5, null
  br i1 %cmp11.not, label %if.end32, label %if.then12

if.then12:                                        ; preds = %if.end9
  %6 = getelementptr inbounds [128 x i8], [128 x i8]* %objbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %6) #7
  %call14 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef nonnull %5) #5
  %call15 = tail call i8* @OBJ_nid2ln(i32 noundef %call14) #5
  %call16 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.35, i64 0, i64 0), i32 noundef %ind, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0)) #5
  %cmp17 = icmp slt i32 %call16, 1
  br i1 %cmp17, label %cleanup.thread, label %if.end19

if.end19:                                         ; preds = %if.then12
  %7 = load %struct.asn1_object_st*, %struct.asn1_object_st** %namingAuthorityId, align 8, !tbaa !23
  %call21 = call i32 @OBJ_obj2txt(i8* noundef nonnull %6, i32 noundef 128, %struct.asn1_object_st* noundef %7, i32 noundef 1) #5
  %tobool.not = icmp eq i8* %call15, null
  %cond = select i1 %tobool.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0), i8* %call15
  %cond23 = select i1 %tobool.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0)
  %cond26 = select i1 %tobool.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0)
  %call27 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0), i8* noundef %cond, i8* noundef %cond23, i8* noundef nonnull %6, i8* noundef %cond26) #5
  %cmp28 = icmp slt i32 %call27, 1
  br i1 %cmp28, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then12, %if.end19
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %6) #7
  br label %err

cleanup:                                          ; preds = %if.end19
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %6) #7
  br label %if.end32

if.end32:                                         ; preds = %cleanup, %if.end9
  %namingAuthorityText33 = getelementptr inbounds i8, i8* %in, i64 16
  %8 = bitcast i8* %namingAuthorityText33 to %struct.asn1_string_st**
  %9 = load %struct.asn1_string_st*, %struct.asn1_string_st** %8, align 8, !tbaa !26
  %cmp34.not = icmp eq %struct.asn1_string_st* %9, null
  br i1 %cmp34.not, label %if.end46, label %if.then35

if.then35:                                        ; preds = %if.end32
  %call36 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.37, i64 0, i64 0), i32 noundef %ind, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0)) #5
  %cmp37 = icmp slt i32 %call36, 1
  br i1 %cmp37, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then35
  %10 = load %struct.asn1_string_st*, %struct.asn1_string_st** %8, align 8, !tbaa !26
  %call39 = call i32 @ASN1_STRING_print(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef %10) #5
  %cmp40 = icmp slt i32 %call39, 1
  br i1 %cmp40, label %err, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false
  %call42 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #5
  %cmp43 = icmp slt i32 %call42, 1
  br i1 %cmp43, label %err, label %if.end46

if.end46:                                         ; preds = %lor.lhs.false41, %if.end32
  %namingAuthorityUrl47 = getelementptr inbounds i8, i8* %in, i64 8
  %11 = bitcast i8* %namingAuthorityUrl47 to %struct.asn1_string_st**
  %12 = load %struct.asn1_string_st*, %struct.asn1_string_st** %11, align 8, !tbaa !25
  %cmp48.not = icmp eq %struct.asn1_string_st* %12, null
  br i1 %cmp48.not, label %cleanup62, label %if.then49

if.then49:                                        ; preds = %if.end46
  %call50 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i64 0, i64 0), i32 noundef %ind, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0)) #5
  %cmp51 = icmp slt i32 %call50, 1
  br i1 %cmp51, label %err, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %if.then49
  %13 = load %struct.asn1_string_st*, %struct.asn1_string_st** %11, align 8, !tbaa !25
  %call54 = call i32 @ASN1_STRING_print(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef %13) #5
  %cmp55 = icmp slt i32 %call54, 1
  br i1 %cmp55, label %err, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %lor.lhs.false52
  %call57 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #5
  %cmp58 = icmp slt i32 %call57, 1
  br i1 %cmp58, label %err, label %cleanup62

err:                                              ; preds = %cleanup.thread, %if.then49, %lor.lhs.false52, %lor.lhs.false56, %if.then35, %lor.lhs.false, %lor.lhs.false41, %if.end6
  br label %cleanup62

cleanup62:                                        ; preds = %if.end46, %lor.lhs.false56, %land.lhs.true3, %entry, %err
  %retval.0 = phi i32 [ 0, %err ], [ 0, %entry ], [ 0, %land.lhs.true3 ], [ 1, %lor.lhs.false56 ], [ 1, %if.end46 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_PROFESSION_INFO_sk_type(%struct.stack_st_PROFESSION_INFO* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_PROFESSION_INFO* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @ASN1_STRING_print(%struct.bio_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_ASN1_STRING_sk_type(%struct.stack_st_ASN1_STRING* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_OBJECT* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OBJ_nid2ln(i32 noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2txt(i8* noundef, i32 noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"AdmissionSyntax_st", !6, i64 0, !6, i64 8}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 8}
!10 = !{!11, !6, i64 0}
!11 = !{!"Admissions_st", !6, i64 0, !6, i64 8, !6, i64 16}
!12 = !{!11, !6, i64 8}
!13 = !{!11, !6, i64 16}
!14 = !{!15, !6, i64 24}
!15 = !{!"ProfessionInfo_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!16 = !{!15, !6, i64 0}
!17 = !{!15, !6, i64 8}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!15, !6, i64 16}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !19}
!23 = !{!24, !6, i64 0}
!24 = !{!"NamingAuthority_st", !6, i64 0, !6, i64 8, !6, i64 16}
!25 = !{!24, !6, i64 8}
!26 = !{!24, !6, i64 16}
!27 = !{!15, !6, i64 32}
