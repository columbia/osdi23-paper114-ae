; ModuleID = 'crypto/pkcs12/p12_asn.c'
source_filename = "crypto/pkcs12/p12_asn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, {}* }
%struct.ASN1_ADB_st = type { i64, i64, i32 (i64*)*, %struct.ASN1_ADB_TABLE_st*, i64, %struct.ASN1_TEMPLATE_st*, %struct.ASN1_TEMPLATE_st* }
%struct.ASN1_ADB_TABLE_st = type { i64, %struct.ASN1_TEMPLATE_st }
%struct.PKCS12_st = type { %struct.asn1_string_st*, %struct.PKCS12_MAC_DATA_st*, %struct.pkcs7_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.PKCS12_MAC_DATA_st = type { %struct.X509_sig_st*, %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.X509_sig_st = type opaque
%struct.pkcs7_st = type { i8*, i64, i32, i32, %struct.asn1_object_st*, %union.anon, %struct.PKCS7_CTX_st }
%struct.asn1_object_st = type opaque
%union.anon = type { i8* }
%struct.PKCS7_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.ASN1_VALUE_st = type opaque
%struct.pkcs12_bag_st = type { %struct.asn1_object_st*, %union.anon.1 }
%union.anon.1 = type { %struct.asn1_string_st* }
%struct.PKCS12_SAFEBAG_st = type { %struct.asn1_object_st*, %union.anon.2, %struct.stack_st_X509_ATTRIBUTE* }
%union.anon.2 = type { %struct.pkcs12_bag_st* }
%struct.stack_st_X509_ATTRIBUTE = type opaque

@PKCS12_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @PKCS12_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [7 x i8] c"PKCS12\00", align 1
@PKCS12_MAC_DATA_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @PKCS12_MAC_DATA_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"PKCS12_MAC_DATA\00", align 1
@PKCS12_BAGS_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @PKCS12_BAGS_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0) }, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"PKCS12_BAGS\00", align 1
@PKCS12_SAFEBAG_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @PKCS12_SAFEBAG_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0) }, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"PKCS12_SAFEBAG\00", align 1
@PKCS12_SAFEBAGS_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 -1, %struct.ASN1_TEMPLATE_st* bitcast ({ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }* @PKCS12_SAFEBAGS_item_tt to %struct.ASN1_TEMPLATE_st*), i64 0, i8* null, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0) }, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"PKCS12_SAFEBAGS\00", align 1
@PKCS12_AUTHSAFES_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 -1, %struct.ASN1_TEMPLATE_st* bitcast ({ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }* @PKCS12_AUTHSAFES_item_tt to %struct.ASN1_TEMPLATE_st*), i64 0, i8* null, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0) }, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"PKCS12_AUTHSAFES\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"authsafes\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@PKCS12_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @PKCS7_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @PKCS12_MAC_DATA_it }], align 16
@.str.10 = private unnamed_addr constant [6 x i8] c"dinfo\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"salt\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@PKCS12_MAC_DATA_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_SIG_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }], align 16
@.str.14 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@PKCS12_BAGS_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 256, i64 -1, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @PKCS12_BAGS_adb }], align 16
@PKCS12_BAGS_adb.internal_adb = internal constant %struct.ASN1_ADB_st { i64 0, i64 0, i32 (i64*)* null, %struct.ASN1_ADB_TABLE_st* getelementptr inbounds ([3 x %struct.ASN1_ADB_TABLE_st], [3 x %struct.ASN1_ADB_TABLE_st]* bitcast ([3 x { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } }]* @PKCS12_BAGS_adbtbl to [3 x %struct.ASN1_ADB_TABLE_st]*), i32 0, i32 0), i64 3, %struct.ASN1_TEMPLATE_st* bitcast ({ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }* @bag_default_tt to %struct.ASN1_TEMPLATE_st*), %struct.ASN1_TEMPLATE_st* null }, align 8
@.str.16 = private unnamed_addr constant [15 x i8] c"value.x509cert\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"value.x509crl\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"value.sdsicert\00", align 1
@PKCS12_BAGS_adbtbl = internal constant [3 x { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } }] [{ i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 158, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 0, i64 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 160, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 0, i64 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 159, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 0, i64 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_IA5STRING_it } }], align 16
@.str.20 = private unnamed_addr constant [12 x i8] c"value.other\00", align 1
@bag_default_tt = internal constant { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 0, i64 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_ANY_it }, align 8
@.str.22 = private unnamed_addr constant [7 x i8] c"attrib\00", align 1
@PKCS12_SAFEBAG_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 256, i64 -1, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @PKCS12_SAFEBAG_adb }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 3, i64 0, i64 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ATTRIBUTE_it }], align 16
@PKCS12_SAFEBAG_adb.internal_adb = internal constant %struct.ASN1_ADB_st { i64 0, i64 0, i32 (i64*)* null, %struct.ASN1_ADB_TABLE_st* getelementptr inbounds ([6 x %struct.ASN1_ADB_TABLE_st], [6 x %struct.ASN1_ADB_TABLE_st]* bitcast ([6 x { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } }]* @PKCS12_SAFEBAG_adbtbl to [6 x %struct.ASN1_ADB_TABLE_st]*), i32 0, i32 0), i64 6, %struct.ASN1_TEMPLATE_st* bitcast ({ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }* @safebag_default_tt to %struct.ASN1_TEMPLATE_st*), %struct.ASN1_TEMPLATE_st* null }, align 8
@.str.24 = private unnamed_addr constant [13 x i8] c"value.keybag\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"value.shkeybag\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"value.safes\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"value.bag\00", align 1
@PKCS12_SAFEBAG_adbtbl = internal constant [6 x { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } }] [{ i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 150, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 0, i64 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @PKCS8_PRIV_KEY_INFO_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 151, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 0, i64 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_SIG_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 155, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 148, i64 0, i64 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @PKCS12_SAFEBAG_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 152, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 0, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @PKCS12_BAGS_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 153, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 0, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @PKCS12_BAGS_it } }, { i64, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } } { i64 154, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 0, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @PKCS12_BAGS_it } }], align 16
@safebag_default_tt = internal constant { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 0, i64 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_ANY_it }, align 8
@PKCS12_SAFEBAGS_item_tt = internal constant { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4, i64 0, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @PKCS12_SAFEBAG_it }, align 8
@PKCS12_AUTHSAFES_item_tt = internal constant { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4, i64 0, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @PKCS7_it }, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @PKCS12_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @PKCS12_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.PKCS12_st* @d2i_PKCS12(%struct.PKCS12_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.PKCS12_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @PKCS12_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.PKCS12_st*
  ret %struct.PKCS12_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PKCS12(%struct.PKCS12_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.PKCS12_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @PKCS12_it.local_it) #3
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.PKCS12_st* @PKCS12_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @PKCS12_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.PKCS12_st*
  ret %struct.PKCS12_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @PKCS12_free(%struct.PKCS12_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.PKCS12_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @PKCS12_it.local_it) #3
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @PKCS12_MAC_DATA_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @PKCS12_MAC_DATA_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.PKCS12_MAC_DATA_st* @d2i_PKCS12_MAC_DATA(%struct.PKCS12_MAC_DATA_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.PKCS12_MAC_DATA_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @PKCS12_MAC_DATA_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.PKCS12_MAC_DATA_st*
  ret %struct.PKCS12_MAC_DATA_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PKCS12_MAC_DATA(%struct.PKCS12_MAC_DATA_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.PKCS12_MAC_DATA_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @PKCS12_MAC_DATA_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.PKCS12_MAC_DATA_st* @PKCS12_MAC_DATA_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @PKCS12_MAC_DATA_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.PKCS12_MAC_DATA_st*
  ret %struct.PKCS12_MAC_DATA_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @PKCS12_MAC_DATA_free(%struct.PKCS12_MAC_DATA_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.PKCS12_MAC_DATA_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @PKCS12_MAC_DATA_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @PKCS12_BAGS_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @PKCS12_BAGS_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs12_bag_st* @d2i_PKCS12_BAGS(%struct.pkcs12_bag_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pkcs12_bag_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @PKCS12_BAGS_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.pkcs12_bag_st*
  ret %struct.pkcs12_bag_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PKCS12_BAGS(%struct.pkcs12_bag_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pkcs12_bag_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @PKCS12_BAGS_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs12_bag_st* @PKCS12_BAGS_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @PKCS12_BAGS_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.pkcs12_bag_st*
  ret %struct.pkcs12_bag_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @PKCS12_BAGS_free(%struct.pkcs12_bag_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pkcs12_bag_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @PKCS12_BAGS_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @PKCS12_SAFEBAG_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @PKCS12_SAFEBAG_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.PKCS12_SAFEBAG_st* @d2i_PKCS12_SAFEBAG(%struct.PKCS12_SAFEBAG_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.PKCS12_SAFEBAG_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @PKCS12_SAFEBAG_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.PKCS12_SAFEBAG_st*
  ret %struct.PKCS12_SAFEBAG_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PKCS12_SAFEBAG(%struct.PKCS12_SAFEBAG_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.PKCS12_SAFEBAG_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @PKCS12_SAFEBAG_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.PKCS12_SAFEBAG_st* @PKCS12_SAFEBAG_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @PKCS12_SAFEBAG_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.PKCS12_SAFEBAG_st*
  ret %struct.PKCS12_SAFEBAG_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @PKCS12_SAFEBAG_free(%struct.PKCS12_SAFEBAG_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.PKCS12_SAFEBAG_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @PKCS12_SAFEBAG_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @PKCS12_SAFEBAGS_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @PKCS12_SAFEBAGS_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @PKCS12_AUTHSAFES_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @PKCS12_AUTHSAFES_it.local_it
}

declare %struct.ASN1_ITEM_st* @ASN1_INTEGER_it() #2

declare %struct.ASN1_ITEM_st* @PKCS7_it() #2

declare %struct.ASN1_ITEM_st* @X509_SIG_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_OCTET_STRING_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_OBJECT_it() #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal %struct.ASN1_ITEM_st* @PKCS12_BAGS_adb() #0 {
entry:
  ret %struct.ASN1_ITEM_st* bitcast (%struct.ASN1_ADB_st* @PKCS12_BAGS_adb.internal_adb to %struct.ASN1_ITEM_st*)
}

declare %struct.ASN1_ITEM_st* @ASN1_IA5STRING_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_ANY_it() #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal %struct.ASN1_ITEM_st* @PKCS12_SAFEBAG_adb() #0 {
entry:
  ret %struct.ASN1_ITEM_st* bitcast (%struct.ASN1_ADB_st* @PKCS12_SAFEBAG_adb.internal_adb to %struct.ASN1_ITEM_st*)
}

declare %struct.ASN1_ITEM_st* @X509_ATTRIBUTE_it() #2

declare %struct.ASN1_ITEM_st* @PKCS8_PRIV_KEY_INFO_it() #2

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
