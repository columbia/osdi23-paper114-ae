; ModuleID = 'crypto/x509/v3_enum.c'
source_filename = "crypto/x509/v3_enum.c"
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

@crl_reasons = internal global [11 x %struct.BIT_STRING_BITNAME_st] [%struct.BIT_STRING_BITNAME_st { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0) }, %struct.BIT_STRING_BITNAME_st { i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0) }, %struct.BIT_STRING_BITNAME_st { i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0) }, %struct.BIT_STRING_BITNAME_st { i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0) }, %struct.BIT_STRING_BITNAME_st { i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0) }, %struct.BIT_STRING_BITNAME_st { i32 5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0) }, %struct.BIT_STRING_BITNAME_st { i32 6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0) }, %struct.BIT_STRING_BITNAME_st { i32 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0) }, %struct.BIT_STRING_BITNAME_st { i32 9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0) }, %struct.BIT_STRING_BITNAME_st { i32 10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0) }, %struct.BIT_STRING_BITNAME_st { i32 -1, i8* null, i8* null }], align 16
@ossl_v3_crl_reason = local_unnamed_addr constant { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 141, i32 0, %struct.ASN1_ITEM_st* ()* @ASN1_ENUMERATED_it, i8* ()* null, void (i8*)* null, i8* (i8*, i8**, i64)* null, i32 (i8*, i8**)* null, i8* (%struct.v3_ext_method*, i8*)* bitcast (i8* (%struct.v3_ext_method*, %struct.asn1_string_st*)* @i2s_ASN1_ENUMERATED_TABLE to i8* (%struct.v3_ext_method*, i8*)*), i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* null, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, i8* bitcast ([11 x %struct.BIT_STRING_BITNAME_st]* @crl_reasons to i8*) }, align 8
@.str = private unnamed_addr constant [22 x i8] c"crypto/x509/v3_enum.c\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Unspecified\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"unspecified\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Key Compromise\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"keyCompromise\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"CA Compromise\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"CACompromise\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Affiliation Changed\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"affiliationChanged\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Superseded\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"superseded\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Cessation Of Operation\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"cessationOfOperation\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"Certificate Hold\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"certificateHold\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"Remove From CRL\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"removeFromCRL\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Privilege Withdrawn\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"privilegeWithdrawn\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"AA Compromise\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"AACompromise\00", align 1

declare %struct.ASN1_ITEM_st* @ASN1_ENUMERATED_it() #0

; Function Attrs: noinline nounwind uwtable
define i8* @i2s_ASN1_ENUMERATED_TABLE(%struct.v3_ext_method* noundef %method, %struct.asn1_string_st* noundef %e) #1 {
entry:
  %call = tail call i64 @ASN1_ENUMERATED_get(%struct.asn1_string_st* noundef %e) #2
  %usr_data = getelementptr inbounds %struct.v3_ext_method, %struct.v3_ext_method* %method, i64 0, i32 13
  %0 = bitcast i8** %usr_data to %struct.BIT_STRING_BITNAME_st**
  %1 = load %struct.BIT_STRING_BITNAME_st*, %struct.BIT_STRING_BITNAME_st** %0, align 8, !tbaa !4
  %lname14 = getelementptr inbounds %struct.BIT_STRING_BITNAME_st, %struct.BIT_STRING_BITNAME_st* %1, i64 0, i32 1
  %2 = load i8*, i8** %lname14, align 8, !tbaa !10
  %tobool.not15 = icmp eq i8* %2, null
  br i1 %tobool.not15, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %bitnum20 = getelementptr inbounds %struct.BIT_STRING_BITNAME_st, %struct.BIT_STRING_BITNAME_st* %1, i64 0, i32 0
  %3 = load i32, i32* %bitnum20, align 8, !tbaa !12
  %conv21 = sext i32 %3 to i64
  %cmp22 = icmp eq i64 %call, %conv21
  br i1 %cmp22, label %if.then, label %for.cond

for.cond:                                         ; preds = %for.body.preheader, %for.body
  %enam.01623 = phi %struct.BIT_STRING_BITNAME_st* [ %incdec.ptr, %for.body ], [ %1, %for.body.preheader ]
  %incdec.ptr = getelementptr inbounds %struct.BIT_STRING_BITNAME_st, %struct.BIT_STRING_BITNAME_st* %enam.01623, i64 1
  %lname = getelementptr inbounds %struct.BIT_STRING_BITNAME_st, %struct.BIT_STRING_BITNAME_st* %enam.01623, i64 1, i32 1
  %4 = load i8*, i8** %lname, align 8, !tbaa !10
  %tobool.not = icmp eq i8* %4, null
  br i1 %tobool.not, label %for.end, label %for.body, !llvm.loop !13

for.body:                                         ; preds = %for.cond
  %bitnum = getelementptr inbounds %struct.BIT_STRING_BITNAME_st, %struct.BIT_STRING_BITNAME_st* %incdec.ptr, i64 0, i32 0
  %5 = load i32, i32* %bitnum, align 8, !tbaa !12
  %conv = sext i32 %5 to i64
  %cmp = icmp eq i64 %call, %conv
  br i1 %cmp, label %if.then, label %for.cond, !llvm.loop !13

if.then:                                          ; preds = %for.body, %for.body.preheader
  %.lcssa = phi i8* [ %2, %for.body.preheader ], [ %4, %for.body ]
  %call3 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %.lcssa, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 50) #2
  br label %cleanup

for.end:                                          ; preds = %for.cond, %entry
  %call4 = tail call i8* @i2s_ASN1_ENUMERATED(%struct.v3_ext_method* noundef %method, %struct.asn1_string_st* noundef %e) #2
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi i8* [ %call3, %if.then ], [ %call4, %for.end ]
  ret i8* %retval.0
}

declare i64 @ASN1_ENUMERATED_get(%struct.asn1_string_st* noundef) local_unnamed_addr #0

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #0

declare i8* @i2s_ASN1_ENUMERATED(%struct.v3_ext_method* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #0

attributes #0 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 96}
!5 = !{!"v3_ext_method", !6, i64 0, !6, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!11, !9, i64 8}
!11 = !{!"BIT_STRING_BITNAME_st", !6, i64 0, !9, i64 8, !9, i64 16}
!12 = !{!11, !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
