; ModuleID = 'crypto/ess/ess_asn1.c'
source_filename = "crypto/ess/ess_asn1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.ESS_issuer_serial = type { %struct.stack_st_GENERAL_NAME*, %struct.asn1_string_st* }
%struct.stack_st_GENERAL_NAME = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.ASN1_VALUE_st = type opaque
%struct.ESS_cert_id = type { %struct.asn1_string_st*, %struct.ESS_issuer_serial* }
%struct.ESS_signing_cert = type { %struct.stack_st_ESS_CERT_ID*, %struct.stack_st_POLICYINFO* }
%struct.stack_st_ESS_CERT_ID = type opaque
%struct.stack_st_POLICYINFO = type opaque
%struct.ESS_cert_id_v2_st = type { %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.ESS_issuer_serial* }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.ESS_signing_cert_v2_st = type { %struct.stack_st_ESS_CERT_ID_V2*, %struct.stack_st_POLICYINFO* }
%struct.stack_st_ESS_CERT_ID_V2 = type opaque

@ESS_SIGNING_CERT_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* @ESS_SIGNING_CERT_seq_tt, i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0) }, align 8
@ESS_SIGNING_CERT_seq_tt = internal constant [2 x %struct.ASN1_TEMPLATE_st] [%struct.ASN1_TEMPLATE_st { i64 4, i64 0, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ESS_CERT_ID_it }, %struct.ASN1_TEMPLATE_st { i64 5, i64 0, i64 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @POLICYINFO_it }], align 16
@.str = private unnamed_addr constant [17 x i8] c"ESS_SIGNING_CERT\00", align 1
@ESS_SIGNING_CERT_V2_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* @ESS_SIGNING_CERT_V2_seq_tt, i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, align 8
@ESS_SIGNING_CERT_V2_seq_tt = internal constant [2 x %struct.ASN1_TEMPLATE_st] [%struct.ASN1_TEMPLATE_st { i64 4, i64 0, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ESS_CERT_ID_V2_it }, %struct.ASN1_TEMPLATE_st { i64 5, i64 0, i64 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @POLICYINFO_it }], align 16
@.str.1 = private unnamed_addr constant [20 x i8] c"ESS_SIGNING_CERT_V2\00", align 1
@ESS_ISSUER_SERIAL_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* @ESS_ISSUER_SERIAL_seq_tt, i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0) }, align 8
@ESS_ISSUER_SERIAL_seq_tt = internal constant [2 x %struct.ASN1_TEMPLATE_st] [%struct.ASN1_TEMPLATE_st { i64 4, i64 0, i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @GENERAL_NAME_it }, %struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }], align 16
@.str.2 = private unnamed_addr constant [18 x i8] c"ESS_ISSUER_SERIAL\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"issuer\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@ESS_CERT_ID_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* @ESS_CERT_ID_seq_tt, i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0) }, align 8
@ESS_CERT_ID_seq_tt = internal constant [2 x %struct.ASN1_TEMPLATE_st] [%struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, %struct.ASN1_TEMPLATE_st { i64 1, i64 0, i64 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ESS_ISSUER_SERIAL_it }], align 16
@.str.5 = private unnamed_addr constant [12 x i8] c"ESS_CERT_ID\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"issuer_serial\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"cert_ids\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"policy_info\00", align 1
@ESS_CERT_ID_V2_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* @ESS_CERT_ID_V2_seq_tt, i32 0, i32 0), i64 3, i8* null, i64 24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0) }, align 8
@ESS_CERT_ID_V2_seq_tt = internal constant [3 x %struct.ASN1_TEMPLATE_st] [%struct.ASN1_TEMPLATE_st { i64 1, i64 0, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, %struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, %struct.ASN1_TEMPLATE_st { i64 1, i64 0, i64 16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ESS_ISSUER_SERIAL_it }], align 16
@.str.10 = private unnamed_addr constant [15 x i8] c"ESS_CERT_ID_V2\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"hash_alg\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.ESS_issuer_serial* @d2i_ESS_ISSUER_SERIAL(%struct.ESS_issuer_serial** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ESS_issuer_serial** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ESS_ISSUER_SERIAL_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ESS_issuer_serial*
  ret %struct.ESS_issuer_serial* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal nonnull %struct.ASN1_ITEM_st* @ESS_ISSUER_SERIAL_it() #2 {
entry:
  ret %struct.ASN1_ITEM_st* @ESS_ISSUER_SERIAL_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ESS_ISSUER_SERIAL(%struct.ESS_issuer_serial* noundef %a, i8** noundef %out) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ESS_issuer_serial* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ESS_ISSUER_SERIAL_it.local_it) #3
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.ESS_issuer_serial* @ESS_ISSUER_SERIAL_new() local_unnamed_addr #0 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @ESS_ISSUER_SERIAL_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ESS_issuer_serial*
  ret %struct.ESS_issuer_serial* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @ESS_ISSUER_SERIAL_free(%struct.ESS_issuer_serial* noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ESS_issuer_serial* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @ESS_ISSUER_SERIAL_it.local_it) #3
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.ESS_issuer_serial* @ESS_ISSUER_SERIAL_dup(%struct.ESS_issuer_serial* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ESS_issuer_serial* %x to i8*
  %call1 = tail call i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef nonnull @ESS_ISSUER_SERIAL_it.local_it, i8* noundef %0) #3
  %1 = bitcast i8* %call1 to %struct.ESS_issuer_serial*
  ret %struct.ESS_issuer_serial* %1
}

declare i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.ESS_cert_id* @d2i_ESS_CERT_ID(%struct.ESS_cert_id** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ESS_cert_id** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ESS_CERT_ID_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ESS_cert_id*
  ret %struct.ESS_cert_id* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal nonnull %struct.ASN1_ITEM_st* @ESS_CERT_ID_it() #2 {
entry:
  ret %struct.ASN1_ITEM_st* @ESS_CERT_ID_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ESS_CERT_ID(%struct.ESS_cert_id* noundef %a, i8** noundef %out) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ESS_cert_id* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ESS_CERT_ID_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ESS_cert_id* @ESS_CERT_ID_new() local_unnamed_addr #0 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @ESS_CERT_ID_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ESS_cert_id*
  ret %struct.ESS_cert_id* %0
}

; Function Attrs: noinline nounwind uwtable
define void @ESS_CERT_ID_free(%struct.ESS_cert_id* noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ESS_cert_id* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @ESS_CERT_ID_it.local_it) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.ESS_cert_id* @ESS_CERT_ID_dup(%struct.ESS_cert_id* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ESS_cert_id* %x to i8*
  %call1 = tail call i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef nonnull @ESS_CERT_ID_it.local_it, i8* noundef %0) #3
  %1 = bitcast i8* %call1 to %struct.ESS_cert_id*
  ret %struct.ESS_cert_id* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ESS_SIGNING_CERT_it() local_unnamed_addr #2 {
entry:
  ret %struct.ASN1_ITEM_st* @ESS_SIGNING_CERT_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ESS_signing_cert* @d2i_ESS_SIGNING_CERT(%struct.ESS_signing_cert** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ESS_signing_cert** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ESS_SIGNING_CERT_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ESS_signing_cert*
  ret %struct.ESS_signing_cert* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ESS_SIGNING_CERT(%struct.ESS_signing_cert* noundef %a, i8** noundef %out) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ESS_signing_cert* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ESS_SIGNING_CERT_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ESS_signing_cert* @ESS_SIGNING_CERT_new() local_unnamed_addr #0 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @ESS_SIGNING_CERT_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ESS_signing_cert*
  ret %struct.ESS_signing_cert* %0
}

; Function Attrs: noinline nounwind uwtable
define void @ESS_SIGNING_CERT_free(%struct.ESS_signing_cert* noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ESS_signing_cert* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @ESS_SIGNING_CERT_it.local_it) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.ESS_signing_cert* @ESS_SIGNING_CERT_dup(%struct.ESS_signing_cert* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ESS_signing_cert* %x to i8*
  %call1 = tail call i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef nonnull @ESS_SIGNING_CERT_it.local_it, i8* noundef %0) #3
  %1 = bitcast i8* %call1 to %struct.ESS_signing_cert*
  ret %struct.ESS_signing_cert* %1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ESS_cert_id_v2_st* @d2i_ESS_CERT_ID_V2(%struct.ESS_cert_id_v2_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ESS_cert_id_v2_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ESS_CERT_ID_V2_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ESS_cert_id_v2_st*
  ret %struct.ESS_cert_id_v2_st* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal nonnull %struct.ASN1_ITEM_st* @ESS_CERT_ID_V2_it() #2 {
entry:
  ret %struct.ASN1_ITEM_st* @ESS_CERT_ID_V2_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ESS_CERT_ID_V2(%struct.ESS_cert_id_v2_st* noundef %a, i8** noundef %out) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ESS_cert_id_v2_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ESS_CERT_ID_V2_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ESS_cert_id_v2_st* @ESS_CERT_ID_V2_new() local_unnamed_addr #0 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @ESS_CERT_ID_V2_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ESS_cert_id_v2_st*
  ret %struct.ESS_cert_id_v2_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @ESS_CERT_ID_V2_free(%struct.ESS_cert_id_v2_st* noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ESS_cert_id_v2_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @ESS_CERT_ID_V2_it.local_it) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.ESS_cert_id_v2_st* @ESS_CERT_ID_V2_dup(%struct.ESS_cert_id_v2_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ESS_cert_id_v2_st* %x to i8*
  %call1 = tail call i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef nonnull @ESS_CERT_ID_V2_it.local_it, i8* noundef %0) #3
  %1 = bitcast i8* %call1 to %struct.ESS_cert_id_v2_st*
  ret %struct.ESS_cert_id_v2_st* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ESS_SIGNING_CERT_V2_it() local_unnamed_addr #2 {
entry:
  ret %struct.ASN1_ITEM_st* @ESS_SIGNING_CERT_V2_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ESS_signing_cert_v2_st* @d2i_ESS_SIGNING_CERT_V2(%struct.ESS_signing_cert_v2_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ESS_signing_cert_v2_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ESS_SIGNING_CERT_V2_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ESS_signing_cert_v2_st*
  ret %struct.ESS_signing_cert_v2_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ESS_SIGNING_CERT_V2(%struct.ESS_signing_cert_v2_st* noundef %a, i8** noundef %out) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ESS_signing_cert_v2_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ESS_SIGNING_CERT_V2_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ESS_signing_cert_v2_st* @ESS_SIGNING_CERT_V2_new() local_unnamed_addr #0 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @ESS_SIGNING_CERT_V2_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ESS_signing_cert_v2_st*
  ret %struct.ESS_signing_cert_v2_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @ESS_SIGNING_CERT_V2_free(%struct.ESS_signing_cert_v2_st* noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ESS_signing_cert_v2_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @ESS_SIGNING_CERT_V2_it.local_it) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.ESS_signing_cert_v2_st* @ESS_SIGNING_CERT_V2_dup(%struct.ESS_signing_cert_v2_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ESS_signing_cert_v2_st* %x to i8*
  %call1 = tail call i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef nonnull @ESS_SIGNING_CERT_V2_it.local_it, i8* noundef %0) #3
  %1 = bitcast i8* %call1 to %struct.ESS_signing_cert_v2_st*
  ret %struct.ESS_signing_cert_v2_st* %1
}

declare %struct.ASN1_ITEM_st* @GENERAL_NAME_it() #1

declare %struct.ASN1_ITEM_st* @ASN1_INTEGER_it() #1

declare %struct.ASN1_ITEM_st* @ASN1_OCTET_STRING_it() #1

declare %struct.ASN1_ITEM_st* @POLICYINFO_it() #1

declare %struct.ASN1_ITEM_st* @X509_ALGOR_it() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
