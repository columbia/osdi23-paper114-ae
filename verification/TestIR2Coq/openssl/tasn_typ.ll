; ModuleID = 'crypto/asn1/tasn_typ.c'
source_filename = "crypto/asn1/tasn_typ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, {}* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.ASN1_VALUE_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.stack_st_ASN1_TYPE = type opaque

@ASN1_OCTET_STRING_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 4, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* null, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [18 x i8] c"ASN1_OCTET_STRING\00", align 1
@ASN1_INTEGER_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 2, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* null, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"ASN1_INTEGER\00", align 1
@ASN1_ENUMERATED_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 10, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* null, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0) }, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"ASN1_ENUMERATED\00", align 1
@ASN1_BIT_STRING_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 3, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* null, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0) }, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"ASN1_BIT_STRING\00", align 1
@ASN1_UTF8STRING_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 12, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* null, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0) }, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"ASN1_UTF8STRING\00", align 1
@ASN1_PRINTABLESTRING_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 19, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* null, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0) }, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"ASN1_PRINTABLESTRING\00", align 1
@ASN1_T61STRING_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 20, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* null, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0) }, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c"ASN1_T61STRING\00", align 1
@ASN1_IA5STRING_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 22, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* null, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0) }, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"ASN1_IA5STRING\00", align 1
@ASN1_GENERALSTRING_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 27, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* null, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0) }, align 8
@.str.8 = private unnamed_addr constant [19 x i8] c"ASN1_GENERALSTRING\00", align 1
@ASN1_UTCTIME_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 23, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* null, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0) }, align 8
@.str.9 = private unnamed_addr constant [13 x i8] c"ASN1_UTCTIME\00", align 1
@ASN1_GENERALIZEDTIME_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 24, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* null, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0) }, align 8
@.str.10 = private unnamed_addr constant [21 x i8] c"ASN1_GENERALIZEDTIME\00", align 1
@ASN1_VISIBLESTRING_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 26, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* null, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0) }, align 8
@.str.11 = private unnamed_addr constant [19 x i8] c"ASN1_VISIBLESTRING\00", align 1
@ASN1_UNIVERSALSTRING_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 28, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* null, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0) }, align 8
@.str.12 = private unnamed_addr constant [21 x i8] c"ASN1_UNIVERSALSTRING\00", align 1
@ASN1_BMPSTRING_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 30, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* null, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0) }, align 8
@.str.13 = private unnamed_addr constant [15 x i8] c"ASN1_BMPSTRING\00", align 1
@ASN1_NULL_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 5, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* null, i64 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0) }, align 8
@.str.14 = private unnamed_addr constant [10 x i8] c"ASN1_NULL\00", align 1
@ASN1_OBJECT_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 6, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* null, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0) }, align 8
@.str.15 = private unnamed_addr constant [12 x i8] c"ASN1_OBJECT\00", align 1
@ASN1_ANY_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 -4, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* null, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0) }, align 8
@.str.16 = private unnamed_addr constant [9 x i8] c"ASN1_ANY\00", align 1
@ASN1_SEQUENCE_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 16, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* null, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0) }, align 8
@.str.17 = private unnamed_addr constant [14 x i8] c"ASN1_SEQUENCE\00", align 1
@ASN1_PRINTABLE_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 5, i64 81175, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* null, i64 24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, align 8
@.str.18 = private unnamed_addr constant [15 x i8] c"ASN1_PRINTABLE\00", align 1
@DISPLAYTEXT_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 5, i64 10320, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* null, i64 24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0) }, align 8
@.str.19 = private unnamed_addr constant [12 x i8] c"DISPLAYTEXT\00", align 1
@DIRECTORYSTRING_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 5, i64 10502, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* null, i64 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0) }, align 8
@.str.20 = private unnamed_addr constant [16 x i8] c"DIRECTORYSTRING\00", align 1
@ASN1_BOOLEAN_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 1, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* null, i64 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0) }, align 8
@.str.21 = private unnamed_addr constant [13 x i8] c"ASN1_BOOLEAN\00", align 1
@ASN1_TBOOLEAN_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 1, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* null, i64 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0) }, align 8
@.str.22 = private unnamed_addr constant [14 x i8] c"ASN1_TBOOLEAN\00", align 1
@ASN1_FBOOLEAN_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 1, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* null, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0) }, align 8
@.str.23 = private unnamed_addr constant [14 x i8] c"ASN1_FBOOLEAN\00", align 1
@ASN1_OCTET_STRING_NDEF_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 4, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* null, i64 2048, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i32 0, i32 0) }, align 8
@.str.24 = private unnamed_addr constant [23 x i8] c"ASN1_OCTET_STRING_NDEF\00", align 1
@ASN1_SEQUENCE_ANY_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 -1, %struct.ASN1_TEMPLATE_st* bitcast ({ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }* @ASN1_SEQUENCE_ANY_item_tt to %struct.ASN1_TEMPLATE_st*), i64 0, i8* null, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0) }, align 8
@.str.25 = private unnamed_addr constant [18 x i8] c"ASN1_SEQUENCE_ANY\00", align 1
@ASN1_SET_ANY_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 -1, %struct.ASN1_TEMPLATE_st* bitcast ({ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }* @ASN1_SET_ANY_item_tt to %struct.ASN1_TEMPLATE_st*), i64 0, i8* null, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0) }, align 8
@.str.26 = private unnamed_addr constant [13 x i8] c"ASN1_SET_ANY\00", align 1
@ASN1_SEQUENCE_ANY_item_tt = internal constant { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4, i64 0, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_ANY_it }, align 8
@ASN1_SET_ANY_item_tt = internal constant { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 2, i64 0, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_ANY_it }, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ASN1_OCTET_STRING_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ASN1_OCTET_STRING_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @d2i_ASN1_OCTET_STRING(%struct.asn1_string_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_OCTET_STRING_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.asn1_string_st*
  ret %struct.asn1_string_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ASN1_OCTET_STRING(%struct.asn1_string_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_OCTET_STRING_it.local_it) #3
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @ASN1_OCTET_STRING_new() local_unnamed_addr #1 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_STRING_type_new(i32 noundef 4) #3
  ret %struct.asn1_string_st* %call
}

declare %struct.asn1_string_st* @ASN1_STRING_type_new(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %x) local_unnamed_addr #1 {
entry:
  tail call void @ASN1_STRING_free(%struct.asn1_string_st* noundef %x) #3
  ret void
}

declare void @ASN1_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ASN1_INTEGER_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ASN1_INTEGER_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @d2i_ASN1_INTEGER(%struct.asn1_string_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_INTEGER_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.asn1_string_st*
  ret %struct.asn1_string_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ASN1_INTEGER(%struct.asn1_string_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_INTEGER_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @ASN1_INTEGER_new() local_unnamed_addr #1 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_STRING_type_new(i32 noundef 2) #3
  ret %struct.asn1_string_st* %call
}

; Function Attrs: noinline nounwind uwtable
define void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %x) local_unnamed_addr #1 {
entry:
  tail call void @ASN1_STRING_free(%struct.asn1_string_st* noundef %x) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ASN1_ENUMERATED_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ASN1_ENUMERATED_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @d2i_ASN1_ENUMERATED(%struct.asn1_string_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_ENUMERATED_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.asn1_string_st*
  ret %struct.asn1_string_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ASN1_ENUMERATED(%struct.asn1_string_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_ENUMERATED_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @ASN1_ENUMERATED_new() local_unnamed_addr #1 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_STRING_type_new(i32 noundef 10) #3
  ret %struct.asn1_string_st* %call
}

; Function Attrs: noinline nounwind uwtable
define void @ASN1_ENUMERATED_free(%struct.asn1_string_st* noundef %x) local_unnamed_addr #1 {
entry:
  tail call void @ASN1_STRING_free(%struct.asn1_string_st* noundef %x) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ASN1_BIT_STRING_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ASN1_BIT_STRING_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @d2i_ASN1_BIT_STRING(%struct.asn1_string_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_BIT_STRING_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.asn1_string_st*
  ret %struct.asn1_string_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ASN1_BIT_STRING(%struct.asn1_string_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_BIT_STRING_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @ASN1_BIT_STRING_new() local_unnamed_addr #1 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_STRING_type_new(i32 noundef 3) #3
  ret %struct.asn1_string_st* %call
}

; Function Attrs: noinline nounwind uwtable
define void @ASN1_BIT_STRING_free(%struct.asn1_string_st* noundef %x) local_unnamed_addr #1 {
entry:
  tail call void @ASN1_STRING_free(%struct.asn1_string_st* noundef %x) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ASN1_UTF8STRING_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ASN1_UTF8STRING_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @d2i_ASN1_UTF8STRING(%struct.asn1_string_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_UTF8STRING_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.asn1_string_st*
  ret %struct.asn1_string_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ASN1_UTF8STRING(%struct.asn1_string_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_UTF8STRING_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @ASN1_UTF8STRING_new() local_unnamed_addr #1 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_STRING_type_new(i32 noundef 12) #3
  ret %struct.asn1_string_st* %call
}

; Function Attrs: noinline nounwind uwtable
define void @ASN1_UTF8STRING_free(%struct.asn1_string_st* noundef %x) local_unnamed_addr #1 {
entry:
  tail call void @ASN1_STRING_free(%struct.asn1_string_st* noundef %x) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ASN1_PRINTABLESTRING_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ASN1_PRINTABLESTRING_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @d2i_ASN1_PRINTABLESTRING(%struct.asn1_string_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_PRINTABLESTRING_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.asn1_string_st*
  ret %struct.asn1_string_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ASN1_PRINTABLESTRING(%struct.asn1_string_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_PRINTABLESTRING_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @ASN1_PRINTABLESTRING_new() local_unnamed_addr #1 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_STRING_type_new(i32 noundef 19) #3
  ret %struct.asn1_string_st* %call
}

; Function Attrs: noinline nounwind uwtable
define void @ASN1_PRINTABLESTRING_free(%struct.asn1_string_st* noundef %x) local_unnamed_addr #1 {
entry:
  tail call void @ASN1_STRING_free(%struct.asn1_string_st* noundef %x) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ASN1_T61STRING_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ASN1_T61STRING_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @d2i_ASN1_T61STRING(%struct.asn1_string_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_T61STRING_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.asn1_string_st*
  ret %struct.asn1_string_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ASN1_T61STRING(%struct.asn1_string_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_T61STRING_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @ASN1_T61STRING_new() local_unnamed_addr #1 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_STRING_type_new(i32 noundef 20) #3
  ret %struct.asn1_string_st* %call
}

; Function Attrs: noinline nounwind uwtable
define void @ASN1_T61STRING_free(%struct.asn1_string_st* noundef %x) local_unnamed_addr #1 {
entry:
  tail call void @ASN1_STRING_free(%struct.asn1_string_st* noundef %x) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ASN1_IA5STRING_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ASN1_IA5STRING_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @d2i_ASN1_IA5STRING(%struct.asn1_string_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_IA5STRING_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.asn1_string_st*
  ret %struct.asn1_string_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ASN1_IA5STRING(%struct.asn1_string_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_IA5STRING_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @ASN1_IA5STRING_new() local_unnamed_addr #1 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_STRING_type_new(i32 noundef 22) #3
  ret %struct.asn1_string_st* %call
}

; Function Attrs: noinline nounwind uwtable
define void @ASN1_IA5STRING_free(%struct.asn1_string_st* noundef %x) local_unnamed_addr #1 {
entry:
  tail call void @ASN1_STRING_free(%struct.asn1_string_st* noundef %x) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ASN1_GENERALSTRING_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ASN1_GENERALSTRING_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @d2i_ASN1_GENERALSTRING(%struct.asn1_string_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_GENERALSTRING_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.asn1_string_st*
  ret %struct.asn1_string_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ASN1_GENERALSTRING(%struct.asn1_string_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_GENERALSTRING_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @ASN1_GENERALSTRING_new() local_unnamed_addr #1 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_STRING_type_new(i32 noundef 27) #3
  ret %struct.asn1_string_st* %call
}

; Function Attrs: noinline nounwind uwtable
define void @ASN1_GENERALSTRING_free(%struct.asn1_string_st* noundef %x) local_unnamed_addr #1 {
entry:
  tail call void @ASN1_STRING_free(%struct.asn1_string_st* noundef %x) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ASN1_UTCTIME_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ASN1_UTCTIME_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @d2i_ASN1_UTCTIME(%struct.asn1_string_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_UTCTIME_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.asn1_string_st*
  ret %struct.asn1_string_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ASN1_UTCTIME(%struct.asn1_string_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_UTCTIME_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @ASN1_UTCTIME_new() local_unnamed_addr #1 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_STRING_type_new(i32 noundef 23) #3
  ret %struct.asn1_string_st* %call
}

; Function Attrs: noinline nounwind uwtable
define void @ASN1_UTCTIME_free(%struct.asn1_string_st* noundef %x) local_unnamed_addr #1 {
entry:
  tail call void @ASN1_STRING_free(%struct.asn1_string_st* noundef %x) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ASN1_GENERALIZEDTIME_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ASN1_GENERALIZEDTIME_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @d2i_ASN1_GENERALIZEDTIME(%struct.asn1_string_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_GENERALIZEDTIME_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.asn1_string_st*
  ret %struct.asn1_string_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ASN1_GENERALIZEDTIME(%struct.asn1_string_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_GENERALIZEDTIME_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @ASN1_GENERALIZEDTIME_new() local_unnamed_addr #1 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_STRING_type_new(i32 noundef 24) #3
  ret %struct.asn1_string_st* %call
}

; Function Attrs: noinline nounwind uwtable
define void @ASN1_GENERALIZEDTIME_free(%struct.asn1_string_st* noundef %x) local_unnamed_addr #1 {
entry:
  tail call void @ASN1_STRING_free(%struct.asn1_string_st* noundef %x) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ASN1_VISIBLESTRING_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ASN1_VISIBLESTRING_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @d2i_ASN1_VISIBLESTRING(%struct.asn1_string_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_VISIBLESTRING_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.asn1_string_st*
  ret %struct.asn1_string_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ASN1_VISIBLESTRING(%struct.asn1_string_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_VISIBLESTRING_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @ASN1_VISIBLESTRING_new() local_unnamed_addr #1 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_STRING_type_new(i32 noundef 26) #3
  ret %struct.asn1_string_st* %call
}

; Function Attrs: noinline nounwind uwtable
define void @ASN1_VISIBLESTRING_free(%struct.asn1_string_st* noundef %x) local_unnamed_addr #1 {
entry:
  tail call void @ASN1_STRING_free(%struct.asn1_string_st* noundef %x) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ASN1_UNIVERSALSTRING_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ASN1_UNIVERSALSTRING_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @d2i_ASN1_UNIVERSALSTRING(%struct.asn1_string_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_UNIVERSALSTRING_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.asn1_string_st*
  ret %struct.asn1_string_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ASN1_UNIVERSALSTRING(%struct.asn1_string_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_UNIVERSALSTRING_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @ASN1_UNIVERSALSTRING_new() local_unnamed_addr #1 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_STRING_type_new(i32 noundef 28) #3
  ret %struct.asn1_string_st* %call
}

; Function Attrs: noinline nounwind uwtable
define void @ASN1_UNIVERSALSTRING_free(%struct.asn1_string_st* noundef %x) local_unnamed_addr #1 {
entry:
  tail call void @ASN1_STRING_free(%struct.asn1_string_st* noundef %x) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ASN1_BMPSTRING_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ASN1_BMPSTRING_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @d2i_ASN1_BMPSTRING(%struct.asn1_string_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_BMPSTRING_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.asn1_string_st*
  ret %struct.asn1_string_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ASN1_BMPSTRING(%struct.asn1_string_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_BMPSTRING_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @ASN1_BMPSTRING_new() local_unnamed_addr #1 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_STRING_type_new(i32 noundef 30) #3
  ret %struct.asn1_string_st* %call
}

; Function Attrs: noinline nounwind uwtable
define void @ASN1_BMPSTRING_free(%struct.asn1_string_st* noundef %x) local_unnamed_addr #1 {
entry:
  tail call void @ASN1_STRING_free(%struct.asn1_string_st* noundef %x) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ASN1_NULL_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ASN1_NULL_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define i32* @d2i_ASN1_NULL(i32** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast i32** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_NULL_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to i32*
  ret i32* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ASN1_NULL(i32* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast i32* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_NULL_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define i32* @ASN1_NULL_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @ASN1_NULL_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to i32*
  ret i32* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @ASN1_NULL_free(i32* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast i32* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_NULL_it.local_it) #3
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ASN1_OBJECT_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ASN1_OBJECT_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ASN1_ANY_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ASN1_ANY_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ASN1_SEQUENCE_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ASN1_SEQUENCE_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_type_st* @d2i_ASN1_TYPE(%struct.asn1_type_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_type_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_ANY_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.asn1_type_st*
  ret %struct.asn1_type_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ASN1_TYPE(%struct.asn1_type_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_type_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_ANY_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_type_st* @ASN1_TYPE_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @ASN1_ANY_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.asn1_type_st*
  ret %struct.asn1_type_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @ASN1_TYPE_free(%struct.asn1_type_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_type_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_ANY_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ASN1_PRINTABLE_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ASN1_PRINTABLE_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @d2i_ASN1_PRINTABLE(%struct.asn1_string_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_PRINTABLE_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.asn1_string_st*
  ret %struct.asn1_string_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ASN1_PRINTABLE(%struct.asn1_string_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_PRINTABLE_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @ASN1_PRINTABLE_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @ASN1_PRINTABLE_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.asn1_string_st*
  ret %struct.asn1_string_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @ASN1_PRINTABLE_free(%struct.asn1_string_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_PRINTABLE_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @DISPLAYTEXT_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @DISPLAYTEXT_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @d2i_DISPLAYTEXT(%struct.asn1_string_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @DISPLAYTEXT_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.asn1_string_st*
  ret %struct.asn1_string_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_DISPLAYTEXT(%struct.asn1_string_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @DISPLAYTEXT_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @DISPLAYTEXT_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @DISPLAYTEXT_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.asn1_string_st*
  ret %struct.asn1_string_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @DISPLAYTEXT_free(%struct.asn1_string_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @DISPLAYTEXT_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @DIRECTORYSTRING_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @DIRECTORYSTRING_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @d2i_DIRECTORYSTRING(%struct.asn1_string_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @DIRECTORYSTRING_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.asn1_string_st*
  ret %struct.asn1_string_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_DIRECTORYSTRING(%struct.asn1_string_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @DIRECTORYSTRING_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @DIRECTORYSTRING_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @DIRECTORYSTRING_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.asn1_string_st*
  ret %struct.asn1_string_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @DIRECTORYSTRING_free(%struct.asn1_string_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @DIRECTORYSTRING_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ASN1_BOOLEAN_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ASN1_BOOLEAN_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ASN1_TBOOLEAN_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ASN1_TBOOLEAN_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ASN1_FBOOLEAN_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ASN1_FBOOLEAN_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ASN1_OCTET_STRING_NDEF_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ASN1_OCTET_STRING_NDEF_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ASN1_SEQUENCE_ANY_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ASN1_SEQUENCE_ANY_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ASN1_SET_ANY_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ASN1_SET_ANY_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_ASN1_TYPE* @d2i_ASN1_SEQUENCE_ANY(%struct.stack_st_ASN1_TYPE** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_TYPE** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_SEQUENCE_ANY_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.stack_st_ASN1_TYPE*
  ret %struct.stack_st_ASN1_TYPE* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ASN1_SEQUENCE_ANY(%struct.stack_st_ASN1_TYPE* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_TYPE* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_SEQUENCE_ANY_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_ASN1_TYPE* @d2i_ASN1_SET_ANY(%struct.stack_st_ASN1_TYPE** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_TYPE** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_SET_ANY_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.stack_st_ASN1_TYPE*
  ret %struct.stack_st_ASN1_TYPE* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ASN1_SET_ANY(%struct.stack_st_ASN1_TYPE* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_TYPE* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_SET_ANY_it.local_it) #3
  ret i32 %call1
}

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
