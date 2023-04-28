; ModuleID = 'crypto/x509/x_attrib.c'
source_filename = "crypto/x509/x_attrib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, {}* }
%struct.x509_attributes_st = type { %struct.asn1_object_st*, %struct.stack_st_ASN1_TYPE* }
%struct.asn1_object_st = type opaque
%struct.stack_st_ASN1_TYPE = type opaque
%struct.ASN1_VALUE_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.stack_st = type opaque

@X509_ATTRIBUTE_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @X509_ATTRIBUTE_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [15 x i8] c"X509_ATTRIBUTE\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@X509_ATTRIBUTE_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 2, i64 0, i64 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_ANY_it }], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @X509_ATTRIBUTE_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @X509_ATTRIBUTE_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.x509_attributes_st* @d2i_X509_ATTRIBUTE(%struct.x509_attributes_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.x509_attributes_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @X509_ATTRIBUTE_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.x509_attributes_st*
  ret %struct.x509_attributes_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_X509_ATTRIBUTE(%struct.x509_attributes_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.x509_attributes_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @X509_ATTRIBUTE_it.local_it) #3
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.x509_attributes_st* @X509_ATTRIBUTE_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @X509_ATTRIBUTE_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.x509_attributes_st*
  ret %struct.x509_attributes_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @X509_ATTRIBUTE_free(%struct.x509_attributes_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.x509_attributes_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @X509_ATTRIBUTE_it.local_it) #3
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.x509_attributes_st* @X509_ATTRIBUTE_dup(%struct.x509_attributes_st* noundef %x) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.x509_attributes_st* %x to i8*
  %call1 = tail call i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef nonnull @X509_ATTRIBUTE_it.local_it, i8* noundef %0) #3
  %1 = bitcast i8* %call1 to %struct.x509_attributes_st*
  ret %struct.x509_attributes_st* %1
}

declare i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.x509_attributes_st* @X509_ATTRIBUTE_create(i32 noundef %nid, i32 noundef %atrtype, i8* noundef %value) local_unnamed_addr #1 {
entry:
  %call = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %nid) #3
  %cmp = icmp eq %struct.asn1_object_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.x509_attributes_st* @X509_ATTRIBUTE_new() #4
  %cmp2 = icmp eq %struct.x509_attributes_st* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %object = getelementptr inbounds %struct.x509_attributes_st, %struct.x509_attributes_st* %call1, i64 0, i32 0
  store %struct.asn1_object_st* %call, %struct.asn1_object_st** %object, align 8, !tbaa !4
  %call5 = tail call %struct.asn1_type_st* @ASN1_TYPE_new() #3
  %cmp6 = icmp eq %struct.asn1_type_st* %call5, null
  br i1 %cmp6, label %err, label %if.end8

if.end8:                                          ; preds = %if.end4
  %set = getelementptr inbounds %struct.x509_attributes_st, %struct.x509_attributes_st* %call1, i64 0, i32 1
  %0 = load %struct.stack_st_ASN1_TYPE*, %struct.stack_st_ASN1_TYPE** %set, align 8, !tbaa !9
  %call9 = tail call fastcc %struct.stack_st* @ossl_check_ASN1_TYPE_sk_type(%struct.stack_st_ASN1_TYPE* noundef %0) #4
  %1 = bitcast %struct.asn1_type_st* %call5 to i8*
  %call11 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call9, i8* noundef nonnull %1) #3
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %err, label %if.end13

if.end13:                                         ; preds = %if.end8
  tail call void @ASN1_TYPE_set(%struct.asn1_type_st* noundef nonnull %call5, i32 noundef %atrtype, i8* noundef %value) #3
  br label %cleanup

err:                                              ; preds = %if.end8, %if.end4
  tail call void @X509_ATTRIBUTE_free(%struct.x509_attributes_st* noundef nonnull %call1) #4
  tail call void @ASN1_TYPE_free(%struct.asn1_type_st* noundef %call5) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %err, %if.end13
  %retval.0 = phi %struct.x509_attributes_st* [ null, %err ], [ %call1, %if.end13 ], [ null, %entry ], [ null, %if.end ]
  ret %struct.x509_attributes_st* %retval.0
}

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #2

declare %struct.asn1_type_st* @ASN1_TYPE_new() local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_ASN1_TYPE_sk_type(%struct.stack_st_ASN1_TYPE* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_TYPE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @ASN1_TYPE_set(%struct.asn1_type_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ASN1_TYPE_free(%struct.asn1_type_st* noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @ASN1_OBJECT_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_ANY_it() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"x509_attributes_st", !6, i64 0, !6, i64 8}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 8}
