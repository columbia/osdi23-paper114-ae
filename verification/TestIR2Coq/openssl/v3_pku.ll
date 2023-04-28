; ModuleID = 'crypto/x509/v3_pku.c'
source_filename = "crypto/x509/v3_pku.c"
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
%struct.PKEY_USAGE_PERIOD_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.ASN1_VALUE_st = type opaque

@ossl_v3_pkey_usage_period = local_unnamed_addr constant { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 84, i32 0, %struct.ASN1_ITEM_st* ()* @PKEY_USAGE_PERIOD_it, i8* ()* null, void (i8*)* null, i8* (i8*, i8**, i64)* null, i32 (i8*, i8**)* null, i8* (%struct.v3_ext_method*, i8*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* null, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* bitcast (i32 (%struct.v3_ext_method*, %struct.PKEY_USAGE_PERIOD_st*, %struct.bio_st*, i32)* @i2r_PKEY_USAGE_PERIOD to i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*), i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, i8* null }, align 8
@PKEY_USAGE_PERIOD_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @PKEY_USAGE_PERIOD_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [18 x i8] c"PKEY_USAGE_PERIOD\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"notBefore\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"notAfter\00", align 1
@PKEY_USAGE_PERIOD_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 137, i64 0, i64 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_GENERALIZEDTIME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 137, i64 1, i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_GENERALIZEDTIME_it }], align 16
@.str.4 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Not Before: \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"Not After: \00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @PKEY_USAGE_PERIOD_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @PKEY_USAGE_PERIOD_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @i2r_PKEY_USAGE_PERIOD(%struct.v3_ext_method* nocapture noundef readnone %method, %struct.PKEY_USAGE_PERIOD_st* nocapture noundef readonly %usage, %struct.bio_st* noundef %out, i32 noundef %indent) #1 {
entry:
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)) #3
  %notBefore = getelementptr inbounds %struct.PKEY_USAGE_PERIOD_st, %struct.PKEY_USAGE_PERIOD_st* %usage, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %notBefore, align 8, !tbaa !4
  %tobool.not = icmp eq %struct.asn1_string_st* %0, null
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @BIO_write(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 noundef 12) #3
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %notBefore, align 8, !tbaa !4
  %call3 = tail call i32 @ASN1_GENERALIZEDTIME_print(%struct.bio_st* noundef %out, %struct.asn1_string_st* noundef %1) #3
  %notAfter = getelementptr inbounds %struct.PKEY_USAGE_PERIOD_st, %struct.PKEY_USAGE_PERIOD_st* %usage, i64 0, i32 1
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %notAfter, align 8, !tbaa !9
  %tobool4.not = icmp eq %struct.asn1_string_st* %2, null
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.then
  %call6 = tail call i32 @BIO_write(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 noundef 2) #3
  br label %if.end7

if.end7:                                          ; preds = %if.then, %if.then5, %entry
  %notAfter8 = getelementptr inbounds %struct.PKEY_USAGE_PERIOD_st, %struct.PKEY_USAGE_PERIOD_st* %usage, i64 0, i32 1
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %notAfter8, align 8, !tbaa !9
  %tobool9.not = icmp eq %struct.asn1_string_st* %3, null
  br i1 %tobool9.not, label %if.end14, label %if.then10

if.then10:                                        ; preds = %if.end7
  %call11 = tail call i32 @BIO_write(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 noundef 11) #3
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %notAfter8, align 8, !tbaa !9
  %call13 = tail call i32 @ASN1_GENERALIZEDTIME_print(%struct.bio_st* noundef %out, %struct.asn1_string_st* noundef %4) #3
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end7
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define %struct.PKEY_USAGE_PERIOD_st* @d2i_PKEY_USAGE_PERIOD(%struct.PKEY_USAGE_PERIOD_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.PKEY_USAGE_PERIOD_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @PKEY_USAGE_PERIOD_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.PKEY_USAGE_PERIOD_st*
  ret %struct.PKEY_USAGE_PERIOD_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PKEY_USAGE_PERIOD(%struct.PKEY_USAGE_PERIOD_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.PKEY_USAGE_PERIOD_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @PKEY_USAGE_PERIOD_it.local_it) #3
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.PKEY_USAGE_PERIOD_st* @PKEY_USAGE_PERIOD_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @PKEY_USAGE_PERIOD_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.PKEY_USAGE_PERIOD_st*
  ret %struct.PKEY_USAGE_PERIOD_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @PKEY_USAGE_PERIOD_free(%struct.PKEY_USAGE_PERIOD_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.PKEY_USAGE_PERIOD_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @PKEY_USAGE_PERIOD_it.local_it) #3
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @ASN1_GENERALIZEDTIME_it() #2

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ASN1_GENERALIZEDTIME_print(%struct.bio_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"PKEY_USAGE_PERIOD_st", !6, i64 0, !6, i64 8}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 8}
