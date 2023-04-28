; ModuleID = 'crypto/asn1/x_spki.c'
source_filename = "crypto/asn1/x_spki.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, {}* }
%struct.Netscape_spkac_st = type { %struct.X509_pubkey_st*, %struct.asn1_string_st* }
%struct.X509_pubkey_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.ASN1_VALUE_st = type opaque
%struct.Netscape_spki_st = type { %struct.Netscape_spkac_st*, %struct.X509_algor_st, %struct.asn1_string_st* }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }

@NETSCAPE_SPKAC_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @NETSCAPE_SPKAC_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [15 x i8] c"NETSCAPE_SPKAC\00", align 1
@NETSCAPE_SPKI_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @NETSCAPE_SPKI_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"NETSCAPE_SPKI\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"pubkey\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"challenge\00", align 1
@NETSCAPE_SPKAC_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_PUBKEY_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_IA5STRING_it }], align 16
@.str.5 = private unnamed_addr constant [6 x i8] c"spkac\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"sig_algor\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"signature\00", align 1
@NETSCAPE_SPKI_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @NETSCAPE_SPKAC_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_BIT_STRING_it }], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @NETSCAPE_SPKAC_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @NETSCAPE_SPKAC_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.Netscape_spkac_st* @d2i_NETSCAPE_SPKAC(%struct.Netscape_spkac_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.Netscape_spkac_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @NETSCAPE_SPKAC_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.Netscape_spkac_st*
  ret %struct.Netscape_spkac_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_NETSCAPE_SPKAC(%struct.Netscape_spkac_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.Netscape_spkac_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @NETSCAPE_SPKAC_it.local_it) #3
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.Netscape_spkac_st* @NETSCAPE_SPKAC_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @NETSCAPE_SPKAC_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.Netscape_spkac_st*
  ret %struct.Netscape_spkac_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @NETSCAPE_SPKAC_free(%struct.Netscape_spkac_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.Netscape_spkac_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @NETSCAPE_SPKAC_it.local_it) #3
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @NETSCAPE_SPKI_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @NETSCAPE_SPKI_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.Netscape_spki_st* @d2i_NETSCAPE_SPKI(%struct.Netscape_spki_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.Netscape_spki_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @NETSCAPE_SPKI_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.Netscape_spki_st*
  ret %struct.Netscape_spki_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_NETSCAPE_SPKI(%struct.Netscape_spki_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.Netscape_spki_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @NETSCAPE_SPKI_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.Netscape_spki_st* @NETSCAPE_SPKI_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @NETSCAPE_SPKI_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.Netscape_spki_st*
  ret %struct.Netscape_spki_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @NETSCAPE_SPKI_free(%struct.Netscape_spki_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.Netscape_spki_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @NETSCAPE_SPKI_it.local_it) #3
  ret void
}

declare %struct.ASN1_ITEM_st* @X509_PUBKEY_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_IA5STRING_it() #2

declare %struct.ASN1_ITEM_st* @X509_ALGOR_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_BIT_STRING_it() #2

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
