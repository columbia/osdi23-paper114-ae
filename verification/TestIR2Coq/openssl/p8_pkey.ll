; ModuleID = 'crypto/asn1/p8_pkey.c'
source_filename = "crypto/asn1/p8_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, {}* }
%struct.ASN1_AUX_st = type { i8*, i32, i32, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)*, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* }
%struct.ASN1_VALUE_st = type opaque
%struct.pkcs8_priv_key_info_st = type { %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.x509_attributes_st = type opaque

@PKCS8_PRIV_KEY_INFO_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([4 x %struct.ASN1_TEMPLATE_st], [4 x %struct.ASN1_TEMPLATE_st]* bitcast ([4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @PKCS8_PRIV_KEY_INFO_seq_tt to [4 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 4, i8* bitcast (%struct.ASN1_AUX_st* @PKCS8_PRIV_KEY_INFO_aux to i8*), i64 32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0) }, align 8
@PKCS8_PRIV_KEY_INFO_aux = internal constant %struct.ASN1_AUX_st { i8* null, i32 0, i32 0, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* @pkey_cb, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* null }, align 8
@.str = private unnamed_addr constant [20 x i8] c"PKCS8_PRIV_KEY_INFO\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"pkeyalg\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"pkey\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"attributes\00", align 1
@PKCS8_PRIV_KEY_INFO_seq_tt = internal constant [4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 139, i64 0, i64 24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ATTRIBUTE_it }], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @PKCS8_PRIV_KEY_INFO_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @PKCS8_PRIV_KEY_INFO_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs8_priv_key_info_st* @d2i_PKCS8_PRIV_KEY_INFO(%struct.pkcs8_priv_key_info_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pkcs8_priv_key_info_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @PKCS8_PRIV_KEY_INFO_it.local_it) #4
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.pkcs8_priv_key_info_st*
  ret %struct.pkcs8_priv_key_info_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PKCS8_PRIV_KEY_INFO(%struct.pkcs8_priv_key_info_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pkcs8_priv_key_info_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @PKCS8_PRIV_KEY_INFO_it.local_it) #4
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs8_priv_key_info_st* @PKCS8_PRIV_KEY_INFO_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @PKCS8_PRIV_KEY_INFO_it.local_it) #4
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.pkcs8_priv_key_info_st*
  ret %struct.pkcs8_priv_key_info_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @PKCS8_PRIV_KEY_INFO_free(%struct.pkcs8_priv_key_info_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pkcs8_priv_key_info_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @PKCS8_PRIV_KEY_INFO_it.local_it) #4
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS8_pkey_set0(%struct.pkcs8_priv_key_info_st* nocapture noundef readonly %priv, %struct.asn1_object_st* noundef %aobj, i32 noundef %version, i32 noundef %ptype, i8* noundef %pval, i8* noundef %penc, i32 noundef %penclen) local_unnamed_addr #1 {
entry:
  %cmp = icmp sgt i32 %version, -1
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %version1 = getelementptr inbounds %struct.pkcs8_priv_key_info_st, %struct.pkcs8_priv_key_info_st* %priv, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %version1, align 8, !tbaa !4
  %conv15 = zext i32 %version to i64
  %call = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef %0, i64 noundef %conv15) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end3

if.end3:                                          ; preds = %if.then, %entry
  %pkeyalg = getelementptr inbounds %struct.pkcs8_priv_key_info_st, %struct.pkcs8_priv_key_info_st* %priv, i64 0, i32 1
  %1 = load %struct.X509_algor_st*, %struct.X509_algor_st** %pkeyalg, align 8, !tbaa !9
  %call4 = tail call i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef %1, %struct.asn1_object_st* noundef %aobj, i32 noundef %ptype, i8* noundef %pval) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %return, label %if.end7

if.end7:                                          ; preds = %if.end3
  %tobool8.not = icmp eq i8* %penc, null
  br i1 %tobool8.not, label %return, label %if.then9

if.then9:                                         ; preds = %if.end7
  %pkey = getelementptr inbounds %struct.pkcs8_priv_key_info_st, %struct.pkcs8_priv_key_info_st* %priv, i64 0, i32 2
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %pkey, align 8, !tbaa !10
  tail call void @ASN1_STRING_set0(%struct.asn1_string_st* noundef %2, i8* noundef nonnull %penc, i32 noundef %penclen) #4
  br label %return

return:                                           ; preds = %if.end7, %if.then9, %if.end3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end3 ], [ 1, %if.then9 ], [ 1, %if.end7 ]
  ret i32 %retval.0
}

declare i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef, %struct.asn1_object_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ASN1_STRING_set0(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS8_pkey_get0(%struct.asn1_object_st** noundef writeonly %ppkalg, i8** noundef writeonly %pk, i32* nocapture noundef writeonly %ppklen, %struct.X509_algor_st** noundef writeonly %pa, %struct.pkcs8_priv_key_info_st* nocapture noundef readonly %p8) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.asn1_object_st** %ppkalg, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %pkeyalg = getelementptr inbounds %struct.pkcs8_priv_key_info_st, %struct.pkcs8_priv_key_info_st* %p8, i64 0, i32 1
  %0 = load %struct.X509_algor_st*, %struct.X509_algor_st** %pkeyalg, align 8, !tbaa !9
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %0, i64 0, i32 0
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !11
  store %struct.asn1_object_st* %1, %struct.asn1_object_st** %ppkalg, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool1.not = icmp eq i8** %pk, null
  br i1 %tobool1.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  %pkey = getelementptr inbounds %struct.pkcs8_priv_key_info_st, %struct.pkcs8_priv_key_info_st* %p8, i64 0, i32 2
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %pkey, align 8, !tbaa !10
  %call = tail call i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef %2) #4
  store i8* %call, i8** %pk, align 8, !tbaa !13
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %pkey, align 8, !tbaa !10
  %call4 = tail call i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef %3) #4
  store i32 %call4, i32* %ppklen, align 4, !tbaa !14
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %tobool6.not = icmp eq %struct.X509_algor_st** %pa, null
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end5
  %pkeyalg8 = getelementptr inbounds %struct.pkcs8_priv_key_info_st, %struct.pkcs8_priv_key_info_st* %p8, i64 0, i32 1
  %4 = load %struct.X509_algor_st*, %struct.X509_algor_st** %pkeyalg8, align 8, !tbaa !9
  store %struct.X509_algor_st* %4, %struct.X509_algor_st** %pa, align 8, !tbaa !13
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5
  ret i32 1
}

declare i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_X509_ATTRIBUTE* @PKCS8_pkey_get0_attrs(%struct.pkcs8_priv_key_info_st* nocapture noundef readonly %p8) local_unnamed_addr #3 {
entry:
  %attributes = getelementptr inbounds %struct.pkcs8_priv_key_info_st, %struct.pkcs8_priv_key_info_st* %p8, i64 0, i32 3
  %0 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %attributes, align 8, !tbaa !16
  ret %struct.stack_st_X509_ATTRIBUTE* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS8_pkey_add1_attr_by_NID(%struct.pkcs8_priv_key_info_st* noundef %p8, i32 noundef %nid, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) local_unnamed_addr #1 {
entry:
  %attributes = getelementptr inbounds %struct.pkcs8_priv_key_info_st, %struct.pkcs8_priv_key_info_st* %p8, i64 0, i32 3
  %call = tail call %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr_by_NID(%struct.stack_st_X509_ATTRIBUTE** noundef nonnull %attributes, i32 noundef %nid, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) #4
  %cmp.not = icmp ne %struct.stack_st_X509_ATTRIBUTE* %call, null
  %. = zext i1 %cmp.not to i32
  ret i32 %.
}

declare %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr_by_NID(%struct.stack_st_X509_ATTRIBUTE** noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS8_pkey_add1_attr_by_OBJ(%struct.pkcs8_priv_key_info_st* noundef %p8, %struct.asn1_object_st* noundef %obj, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) local_unnamed_addr #1 {
entry:
  %attributes = getelementptr inbounds %struct.pkcs8_priv_key_info_st, %struct.pkcs8_priv_key_info_st* %p8, i64 0, i32 3
  %call = tail call %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr_by_OBJ(%struct.stack_st_X509_ATTRIBUTE** noundef nonnull %attributes, %struct.asn1_object_st* noundef %obj, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) #4
  %cmp = icmp ne %struct.stack_st_X509_ATTRIBUTE* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr_by_OBJ(%struct.stack_st_X509_ATTRIBUTE** noundef, %struct.asn1_object_st* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS8_pkey_add1_attr(%struct.pkcs8_priv_key_info_st* noundef %p8, %struct.x509_attributes_st* noundef %attr) local_unnamed_addr #1 {
entry:
  %attributes = getelementptr inbounds %struct.pkcs8_priv_key_info_st, %struct.pkcs8_priv_key_info_st* %p8, i64 0, i32 3
  %call = tail call %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr(%struct.stack_st_X509_ATTRIBUTE** noundef nonnull %attributes, %struct.x509_attributes_st* noundef %attr) #4
  %cmp = icmp ne %struct.stack_st_X509_ATTRIBUTE* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr(%struct.stack_st_X509_ATTRIBUTE** noundef, %struct.x509_attributes_st* noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @ASN1_INTEGER_it() #2

declare %struct.ASN1_ITEM_st* @X509_ALGOR_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_OCTET_STRING_it() #2

declare %struct.ASN1_ITEM_st* @X509_ATTRIBUTE_it() #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_cb(i32 noundef %operation, %struct.ASN1_VALUE_st** nocapture noundef readonly %pval, %struct.ASN1_ITEM_st* nocapture noundef readnone %it, i8* nocapture noundef readnone %exarg) #1 {
entry:
  %cmp = icmp eq i32 %operation, 2
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.pkcs8_priv_key_info_st**
  %1 = load %struct.pkcs8_priv_key_info_st*, %struct.pkcs8_priv_key_info_st** %0, align 8, !tbaa !13
  %pkey = getelementptr inbounds %struct.pkcs8_priv_key_info_st, %struct.pkcs8_priv_key_info_st* %1, i64 0, i32 2
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %pkey, align 8, !tbaa !10
  %tobool.not = icmp eq %struct.asn1_string_st* %2, null
  br i1 %tobool.not, label %if.end4, label %if.then1

if.then1:                                         ; preds = %if.then
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %2, i64 0, i32 2
  %3 = load i8*, i8** %data, align 8, !tbaa !17
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %2, i64 0, i32 0
  %4 = load i32, i32* %length, align 8, !tbaa !20
  %conv = sext i32 %4 to i64
  tail call void @OPENSSL_cleanse(i8* noundef %3, i64 noundef %conv) #4
  br label %if.end4

if.end4:                                          ; preds = %if.then, %if.then1, %entry
  ret i32 1
}

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"pkcs8_priv_key_info_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 8}
!10 = !{!5, !6, i64 16}
!11 = !{!12, !6, i64 0}
!12 = !{!"X509_algor_st", !6, i64 0, !6, i64 8}
!13 = !{!6, !6, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !7, i64 0}
!16 = !{!5, !6, i64 24}
!17 = !{!18, !6, i64 8}
!18 = !{!"asn1_string_st", !15, i64 0, !15, i64 4, !6, i64 8, !19, i64 16}
!19 = !{!"long", !7, i64 0}
!20 = !{!18, !15, i64 0}
