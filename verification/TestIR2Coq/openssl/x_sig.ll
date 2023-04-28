; ModuleID = 'crypto/asn1/x_sig.c'
source_filename = "crypto/asn1/x_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, {}* }
%struct.X509_sig_st = type { %struct.X509_algor_st*, %struct.asn1_string_st* }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.ASN1_VALUE_st = type opaque

@X509_SIG_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @X509_SIG_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [9 x i8] c"X509_SIG\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"algor\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@X509_SIG_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @X509_SIG_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @X509_SIG_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_sig_st* @d2i_X509_SIG(%struct.X509_sig_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.X509_sig_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @X509_SIG_it.local_it) #4
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.X509_sig_st*
  ret %struct.X509_sig_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_X509_SIG(%struct.X509_sig_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.X509_sig_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @X509_SIG_it.local_it) #4
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.X509_sig_st* @X509_SIG_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @X509_SIG_it.local_it) #4
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.X509_sig_st*
  ret %struct.X509_sig_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @X509_SIG_free(%struct.X509_sig_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.X509_sig_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @X509_SIG_it.local_it) #4
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @X509_SIG_get0(%struct.X509_sig_st* nocapture noundef readonly %sig, %struct.X509_algor_st** noundef writeonly %palg, %struct.asn1_string_st** noundef writeonly %pdigest) local_unnamed_addr #3 {
entry:
  %tobool.not = icmp eq %struct.X509_algor_st** %palg, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %algor = getelementptr inbounds %struct.X509_sig_st, %struct.X509_sig_st* %sig, i64 0, i32 0
  %0 = load %struct.X509_algor_st*, %struct.X509_algor_st** %algor, align 8, !tbaa !4
  store %struct.X509_algor_st* %0, %struct.X509_algor_st** %palg, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool1.not = icmp eq %struct.asn1_string_st** %pdigest, null
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %digest = getelementptr inbounds %struct.X509_sig_st, %struct.X509_sig_st* %sig, i64 0, i32 1
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %digest, align 8, !tbaa !10
  store %struct.asn1_string_st* %1, %struct.asn1_string_st** %pdigest, align 8, !tbaa !9
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @X509_SIG_getm(%struct.X509_sig_st* nocapture noundef readonly %sig, %struct.X509_algor_st** noundef writeonly %palg, %struct.asn1_string_st** noundef writeonly %pdigest) local_unnamed_addr #3 {
entry:
  %tobool.not = icmp eq %struct.X509_algor_st** %palg, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %algor = getelementptr inbounds %struct.X509_sig_st, %struct.X509_sig_st* %sig, i64 0, i32 0
  %0 = load %struct.X509_algor_st*, %struct.X509_algor_st** %algor, align 8, !tbaa !4
  store %struct.X509_algor_st* %0, %struct.X509_algor_st** %palg, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool1.not = icmp eq %struct.asn1_string_st** %pdigest, null
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %digest = getelementptr inbounds %struct.X509_sig_st, %struct.X509_sig_st* %sig, i64 0, i32 1
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %digest, align 8, !tbaa !10
  store %struct.asn1_string_st* %1, %struct.asn1_string_st** %pdigest, align 8, !tbaa !9
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  ret void
}

declare %struct.ASN1_ITEM_st* @X509_ALGOR_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_OCTET_STRING_it() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"X509_sig_st", !6, i64 0, !6, i64 8}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!6, !6, i64 0}
!10 = !{!5, !6, i64 8}
