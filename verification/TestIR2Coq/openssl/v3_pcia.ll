; ModuleID = 'crypto/x509/v3_pcia.c'
source_filename = "crypto/x509/v3_pcia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, {}* }
%struct.PROXY_POLICY_st = type { %struct.asn1_object_st*, %struct.asn1_string_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.ASN1_VALUE_st = type opaque
%struct.PROXY_CERT_INFO_EXTENSION_st = type { %struct.asn1_string_st*, %struct.PROXY_POLICY_st* }

@PROXY_POLICY_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @PROXY_POLICY_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [13 x i8] c"PROXY_POLICY\00", align 1
@PROXY_CERT_INFO_EXTENSION_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @PROXY_CERT_INFO_EXTENSION_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"PROXY_CERT_INFO_EXTENSION\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"policyLanguage\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"policy\00", align 1
@PROXY_POLICY_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }], align 16
@.str.5 = private unnamed_addr constant [23 x i8] c"pcPathLengthConstraint\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"proxyPolicy\00", align 1
@PROXY_CERT_INFO_EXTENSION_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @PROXY_POLICY_it }], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @PROXY_POLICY_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @PROXY_POLICY_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.PROXY_POLICY_st* @d2i_PROXY_POLICY(%struct.PROXY_POLICY_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.PROXY_POLICY_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @PROXY_POLICY_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.PROXY_POLICY_st*
  ret %struct.PROXY_POLICY_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PROXY_POLICY(%struct.PROXY_POLICY_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.PROXY_POLICY_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @PROXY_POLICY_it.local_it) #3
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.PROXY_POLICY_st* @PROXY_POLICY_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @PROXY_POLICY_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.PROXY_POLICY_st*
  ret %struct.PROXY_POLICY_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @PROXY_POLICY_free(%struct.PROXY_POLICY_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.PROXY_POLICY_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @PROXY_POLICY_it.local_it) #3
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @PROXY_CERT_INFO_EXTENSION_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @PROXY_CERT_INFO_EXTENSION_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.PROXY_CERT_INFO_EXTENSION_st* @d2i_PROXY_CERT_INFO_EXTENSION(%struct.PROXY_CERT_INFO_EXTENSION_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.PROXY_CERT_INFO_EXTENSION_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @PROXY_CERT_INFO_EXTENSION_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.PROXY_CERT_INFO_EXTENSION_st*
  ret %struct.PROXY_CERT_INFO_EXTENSION_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PROXY_CERT_INFO_EXTENSION(%struct.PROXY_CERT_INFO_EXTENSION_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.PROXY_CERT_INFO_EXTENSION_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @PROXY_CERT_INFO_EXTENSION_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.PROXY_CERT_INFO_EXTENSION_st* @PROXY_CERT_INFO_EXTENSION_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @PROXY_CERT_INFO_EXTENSION_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.PROXY_CERT_INFO_EXTENSION_st*
  ret %struct.PROXY_CERT_INFO_EXTENSION_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @PROXY_CERT_INFO_EXTENSION_free(%struct.PROXY_CERT_INFO_EXTENSION_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.PROXY_CERT_INFO_EXTENSION_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @PROXY_CERT_INFO_EXTENSION_it.local_it) #3
  ret void
}

declare %struct.ASN1_ITEM_st* @ASN1_OBJECT_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_OCTET_STRING_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_INTEGER_it() #2

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
