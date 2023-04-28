; ModuleID = 'crypto/asn1/n_pkey.c'
source_filename = "crypto/asn1/n_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.ASN1_AUX_st = type { i8*, i32, i32, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)*, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* }
%struct.ASN1_VALUE_st = type opaque
%struct.netscape_encrypted_pkey_st = type { %struct.asn1_string_st*, %struct.X509_sig_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.X509_sig_st = type opaque
%struct.netscape_pkey_st = type { i32, %struct.X509_algor_st*, %struct.asn1_string_st* }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }

@NETSCAPE_ENCRYPTED_PKEY_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* @NETSCAPE_ENCRYPTED_PKEY_seq_tt, i32 0, i32 0), i64 2, i8* bitcast (%struct.ASN1_AUX_st* @NETSCAPE_ENCRYPTED_PKEY_aux to i8*), i64 16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0) }, align 8
@NETSCAPE_ENCRYPTED_PKEY_seq_tt = internal constant [2 x %struct.ASN1_TEMPLATE_st] [%struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, %struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_SIG_it }], align 16
@NETSCAPE_ENCRYPTED_PKEY_aux = internal constant %struct.ASN1_AUX_st { i8* null, i32 4, i32 0, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* null, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* null }, align 8
@.str = private unnamed_addr constant [24 x i8] c"NETSCAPE_ENCRYPTED_PKEY\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"os\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"enckey\00", align 1
@NETSCAPE_PKEY_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* @NETSCAPE_PKEY_seq_tt, i32 0, i32 0), i64 3, i8* null, i64 24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0) }, align 8
@NETSCAPE_PKEY_seq_tt = internal constant [3 x %struct.ASN1_TEMPLATE_st] [%struct.ASN1_TEMPLATE_st { i64 4096, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @INT32_it }, %struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, %struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }], align 16
@.str.3 = private unnamed_addr constant [14 x i8] c"NETSCAPE_PKEY\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"algor\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"private_key\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.netscape_encrypted_pkey_st* @d2i_NETSCAPE_ENCRYPTED_PKEY(%struct.netscape_encrypted_pkey_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.netscape_encrypted_pkey_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @NETSCAPE_ENCRYPTED_PKEY_it.local_it) #2
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.netscape_encrypted_pkey_st*
  ret %struct.netscape_encrypted_pkey_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_NETSCAPE_ENCRYPTED_PKEY(%struct.netscape_encrypted_pkey_st* noundef %a, i8** noundef %out) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.netscape_encrypted_pkey_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @NETSCAPE_ENCRYPTED_PKEY_it.local_it) #2
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.netscape_encrypted_pkey_st* @NETSCAPE_ENCRYPTED_PKEY_new() local_unnamed_addr #0 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @NETSCAPE_ENCRYPTED_PKEY_it.local_it) #2
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.netscape_encrypted_pkey_st*
  ret %struct.netscape_encrypted_pkey_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @NETSCAPE_ENCRYPTED_PKEY_free(%struct.netscape_encrypted_pkey_st* noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.netscape_encrypted_pkey_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @NETSCAPE_ENCRYPTED_PKEY_it.local_it) #2
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.netscape_pkey_st* @d2i_NETSCAPE_PKEY(%struct.netscape_pkey_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.netscape_pkey_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @NETSCAPE_PKEY_it.local_it) #2
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.netscape_pkey_st*
  ret %struct.netscape_pkey_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_NETSCAPE_PKEY(%struct.netscape_pkey_st* noundef %a, i8** noundef %out) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.netscape_pkey_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @NETSCAPE_PKEY_it.local_it) #2
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.netscape_pkey_st* @NETSCAPE_PKEY_new() local_unnamed_addr #0 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @NETSCAPE_PKEY_it.local_it) #2
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.netscape_pkey_st*
  ret %struct.netscape_pkey_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @NETSCAPE_PKEY_free(%struct.netscape_pkey_st* noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.netscape_pkey_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @NETSCAPE_PKEY_it.local_it) #2
  ret void
}

declare %struct.ASN1_ITEM_st* @ASN1_OCTET_STRING_it() #1

declare %struct.ASN1_ITEM_st* @X509_SIG_it() #1

declare %struct.ASN1_ITEM_st* @INT32_it() #1

declare %struct.ASN1_ITEM_st* @X509_ALGOR_it() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
