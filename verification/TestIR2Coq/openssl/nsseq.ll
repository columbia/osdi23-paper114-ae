; ModuleID = 'crypto/asn1/nsseq.c'
source_filename = "crypto/asn1/nsseq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, {}* }
%struct.ASN1_AUX_st = type { i8*, i32, i32, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)*, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* }
%struct.ASN1_VALUE_st = type opaque
%struct.Netscape_certificate_sequence = type { %struct.asn1_object_st*, %struct.stack_st_X509* }
%struct.asn1_object_st = type opaque
%struct.stack_st_X509 = type opaque

@NETSCAPE_CERT_SEQUENCE_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @NETSCAPE_CERT_SEQUENCE_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* bitcast (%struct.ASN1_AUX_st* @NETSCAPE_CERT_SEQUENCE_aux to i8*), i64 16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@NETSCAPE_CERT_SEQUENCE_aux = internal constant %struct.ASN1_AUX_st { i8* null, i32 0, i32 0, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* @nsseq_cb, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* null }, align 8
@.str = private unnamed_addr constant [23 x i8] c"NETSCAPE_CERT_SEQUENCE\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"certs\00", align 1
@NETSCAPE_CERT_SEQUENCE_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 149, i64 0, i64 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_it }], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @NETSCAPE_CERT_SEQUENCE_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @NETSCAPE_CERT_SEQUENCE_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.Netscape_certificate_sequence* @d2i_NETSCAPE_CERT_SEQUENCE(%struct.Netscape_certificate_sequence** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.Netscape_certificate_sequence** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @NETSCAPE_CERT_SEQUENCE_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.Netscape_certificate_sequence*
  ret %struct.Netscape_certificate_sequence* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_NETSCAPE_CERT_SEQUENCE(%struct.Netscape_certificate_sequence* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.Netscape_certificate_sequence* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @NETSCAPE_CERT_SEQUENCE_it.local_it) #3
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.Netscape_certificate_sequence* @NETSCAPE_CERT_SEQUENCE_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @NETSCAPE_CERT_SEQUENCE_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.Netscape_certificate_sequence*
  ret %struct.Netscape_certificate_sequence* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @NETSCAPE_CERT_SEQUENCE_free(%struct.Netscape_certificate_sequence* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.Netscape_certificate_sequence* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @NETSCAPE_CERT_SEQUENCE_it.local_it) #3
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @ASN1_OBJECT_it() #2

declare %struct.ASN1_ITEM_st* @X509_it() #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @nsseq_cb(i32 noundef %operation, %struct.ASN1_VALUE_st** nocapture noundef readonly %pval, %struct.ASN1_ITEM_st* nocapture noundef readnone %it, i8* nocapture noundef readnone %exarg) #1 {
entry:
  %cmp = icmp eq i32 %operation, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.Netscape_certificate_sequence**
  %1 = load %struct.Netscape_certificate_sequence*, %struct.Netscape_certificate_sequence** %0, align 8, !tbaa !4
  %call = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 79) #3
  %type = getelementptr inbounds %struct.Netscape_certificate_sequence, %struct.Netscape_certificate_sequence* %1, i64 0, i32 0
  store %struct.asn1_object_st* %call, %struct.asn1_object_st** %type, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #2

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
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"Netscape_certificate_sequence", !5, i64 0, !5, i64 8}
