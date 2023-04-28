; ModuleID = 'crypto/x509/x_x509a.c'
source_filename = "crypto/x509/x_x509a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, {}* }
%struct.x509_cert_aux_st = type { %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR* }
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st_X509_ALGOR = type opaque
%struct.ASN1_VALUE_st = type opaque
%struct.x509_st = type { %struct.x509_cinf_st, %struct.X509_algor_st, %struct.asn1_string_st, %struct.x509_sig_info_st, i32, %struct.crypto_ex_data_st, i64, i64, i32, i32, i32, i32, %struct.asn1_string_st*, %struct.AUTHORITY_KEYID_st*, %struct.X509_POLICY_CACHE_st*, %struct.stack_st_DIST_POINT*, %struct.stack_st_GENERAL_NAME*, %struct.NAME_CONSTRAINTS_st*, %struct.stack_st_IPAddressFamily*, %struct.ASIdentifiers_st*, [20 x i8], %struct.x509_cert_aux_st*, i8*, i32, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.x509_cinf_st = type { %struct.asn1_string_st*, %struct.asn1_string_st, %struct.X509_algor_st, %struct.X509_name_st*, %struct.X509_val_st, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.X509_val_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.X509_pubkey_st = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.ASN1_ENCODING_st = type { i8*, i64, i32 }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.x509_sig_info_st = type { i32, i32, i32, i32 }
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.AUTHORITY_KEYID_st = type { %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAME*, %struct.asn1_string_st* }
%struct.X509_POLICY_CACHE_st = type opaque
%struct.stack_st_DIST_POINT = type opaque
%struct.stack_st_GENERAL_NAME = type opaque
%struct.NAME_CONSTRAINTS_st = type { %struct.stack_st_GENERAL_SUBTREE*, %struct.stack_st_GENERAL_SUBTREE* }
%struct.stack_st_GENERAL_SUBTREE = type opaque
%struct.stack_st_IPAddressFamily = type opaque
%struct.ASIdentifiers_st = type { %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st* }
%struct.ASIdentifierChoice_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i32* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st = type opaque

@X509_CERT_AUX_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([5 x %struct.ASN1_TEMPLATE_st], [5 x %struct.ASN1_TEMPLATE_st]* bitcast ([5 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @X509_CERT_AUX_seq_tt to [5 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 5, i8* null, i64 40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [14 x i8] c"X509_CERT_AUX\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"trust\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"reject\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"keyid\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"other\00", align 1
@X509_CERT_AUX_seq_tt = internal constant [5 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 5, i64 0, i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 141, i64 0, i64 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_UTF8STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 141, i64 1, i64 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @X509_CERT_AUX_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @X509_CERT_AUX_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.x509_cert_aux_st* @d2i_X509_CERT_AUX(%struct.x509_cert_aux_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.x509_cert_aux_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @X509_CERT_AUX_it.local_it) #5
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.x509_cert_aux_st*
  ret %struct.x509_cert_aux_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_X509_CERT_AUX(%struct.x509_cert_aux_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.x509_cert_aux_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @X509_CERT_AUX_it.local_it) #5
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.x509_cert_aux_st* @X509_CERT_AUX_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @X509_CERT_AUX_it.local_it) #5
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.x509_cert_aux_st*
  ret %struct.x509_cert_aux_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @X509_CERT_AUX_free(%struct.x509_cert_aux_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.x509_cert_aux_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @X509_CERT_AUX_it.local_it) #5
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @X509_trusted(%struct.x509_st* nocapture noundef readonly %x) local_unnamed_addr #3 {
entry:
  %aux = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 21
  %0 = load %struct.x509_cert_aux_st*, %struct.x509_cert_aux_st** %aux, align 8, !tbaa !4
  %tobool.not = icmp ne %struct.x509_cert_aux_st* %0, null
  %cond = zext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_alias_set1(%struct.x509_st* noundef %x, i8* noundef %name, i32 noundef %len) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq i8* %name, null
  br i1 %tobool.not, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %tobool1.not = icmp eq %struct.x509_st* %x, null
  br i1 %tobool1.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %aux2 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 21
  %0 = load %struct.x509_cert_aux_st*, %struct.x509_cert_aux_st** %aux2, align 8, !tbaa !4
  %tobool3.not = icmp eq %struct.x509_cert_aux_st* %0, null
  br i1 %tobool3.not, label %cleanup, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %alias = getelementptr inbounds %struct.x509_cert_aux_st, %struct.x509_cert_aux_st* %0, i64 0, i32 2
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %alias, align 8, !tbaa !18
  %tobool6.not = icmp eq %struct.asn1_string_st* %1, null
  br i1 %tobool6.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false4
  tail call void @ASN1_UTF8STRING_free(%struct.asn1_string_st* noundef nonnull %1) #5
  %2 = load %struct.x509_cert_aux_st*, %struct.x509_cert_aux_st** %aux2, align 8, !tbaa !4
  %alias11 = getelementptr inbounds %struct.x509_cert_aux_st, %struct.x509_cert_aux_st* %2, i64 0, i32 2
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %alias11, align 8, !tbaa !18
  br label %cleanup

if.end12:                                         ; preds = %entry
  %call = tail call fastcc %struct.x509_cert_aux_st* @aux_get(%struct.x509_st* noundef %x) #6
  %cmp = icmp eq %struct.x509_cert_aux_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end12
  %alias15 = getelementptr inbounds %struct.x509_cert_aux_st, %struct.x509_cert_aux_st* %call, i64 0, i32 2
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %alias15, align 8, !tbaa !18
  %cmp16 = icmp eq %struct.asn1_string_st* %3, null
  br i1 %cmp16, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %if.end14
  %call17 = tail call %struct.asn1_string_st* @ASN1_UTF8STRING_new() #5
  store %struct.asn1_string_st* %call17, %struct.asn1_string_st** %alias15, align 8, !tbaa !18
  %cmp19 = icmp eq %struct.asn1_string_st* %call17, null
  br i1 %cmp19, label %cleanup, label %if.end21

if.end21:                                         ; preds = %land.lhs.true, %if.end14
  %4 = phi %struct.asn1_string_st* [ %call17, %land.lhs.true ], [ %3, %if.end14 ]
  %call23 = tail call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef nonnull %4, i8* noundef nonnull %name, i32 noundef %len) #5
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end12, %if.then, %lor.lhs.false, %lor.lhs.false4, %if.end21, %if.end
  %retval.0 = phi i32 [ %call23, %if.end21 ], [ 1, %if.end ], [ 1, %lor.lhs.false4 ], [ 1, %lor.lhs.false ], [ 1, %if.then ], [ 0, %if.end12 ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

declare void @ASN1_UTF8STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.x509_cert_aux_st* @aux_get(%struct.x509_st* noundef %x) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.x509_st* %x, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %aux = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 21
  %0 = load %struct.x509_cert_aux_st*, %struct.x509_cert_aux_st** %aux, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.x509_cert_aux_st* %0, null
  br i1 %cmp1, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %call = tail call %struct.x509_cert_aux_st* @X509_CERT_AUX_new() #6
  store %struct.x509_cert_aux_st* %call, %struct.x509_cert_aux_st** %aux, align 8, !tbaa !4
  %cmp3 = icmp eq %struct.x509_cert_aux_st* %call, null
  br i1 %cmp3, label %return, label %if.end5

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %1 = phi %struct.x509_cert_aux_st* [ %call, %land.lhs.true ], [ %0, %if.end ]
  br label %return

return:                                           ; preds = %land.lhs.true, %entry, %if.end5
  %retval.0 = phi %struct.x509_cert_aux_st* [ %1, %if.end5 ], [ null, %entry ], [ null, %land.lhs.true ]
  ret %struct.x509_cert_aux_st* %retval.0
}

declare %struct.asn1_string_st* @ASN1_UTF8STRING_new() local_unnamed_addr #2

declare i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_keyid_set1(%struct.x509_st* noundef %x, i8* noundef %id, i32 noundef %len) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq i8* %id, null
  br i1 %tobool.not, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %tobool1.not = icmp eq %struct.x509_st* %x, null
  br i1 %tobool1.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %aux2 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 21
  %0 = load %struct.x509_cert_aux_st*, %struct.x509_cert_aux_st** %aux2, align 8, !tbaa !4
  %tobool3.not = icmp eq %struct.x509_cert_aux_st* %0, null
  br i1 %tobool3.not, label %cleanup, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %keyid = getelementptr inbounds %struct.x509_cert_aux_st, %struct.x509_cert_aux_st* %0, i64 0, i32 3
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %keyid, align 8, !tbaa !20
  %tobool6.not = icmp eq %struct.asn1_string_st* %1, null
  br i1 %tobool6.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false4
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef nonnull %1) #5
  %2 = load %struct.x509_cert_aux_st*, %struct.x509_cert_aux_st** %aux2, align 8, !tbaa !4
  %keyid11 = getelementptr inbounds %struct.x509_cert_aux_st, %struct.x509_cert_aux_st* %2, i64 0, i32 3
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %keyid11, align 8, !tbaa !20
  br label %cleanup

if.end12:                                         ; preds = %entry
  %call = tail call fastcc %struct.x509_cert_aux_st* @aux_get(%struct.x509_st* noundef %x) #6
  %cmp = icmp eq %struct.x509_cert_aux_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end12
  %keyid15 = getelementptr inbounds %struct.x509_cert_aux_st, %struct.x509_cert_aux_st* %call, i64 0, i32 3
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %keyid15, align 8, !tbaa !20
  %cmp16 = icmp eq %struct.asn1_string_st* %3, null
  br i1 %cmp16, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %if.end14
  %call17 = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #5
  store %struct.asn1_string_st* %call17, %struct.asn1_string_st** %keyid15, align 8, !tbaa !20
  %cmp19 = icmp eq %struct.asn1_string_st* %call17, null
  br i1 %cmp19, label %cleanup, label %if.end21

if.end21:                                         ; preds = %land.lhs.true, %if.end14
  %4 = phi %struct.asn1_string_st* [ %call17, %land.lhs.true ], [ %3, %if.end14 ]
  %call23 = tail call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef nonnull %4, i8* noundef nonnull %id, i32 noundef %len) #5
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end12, %if.then, %lor.lhs.false, %lor.lhs.false4, %if.end21, %if.end
  %retval.0 = phi i32 [ %call23, %if.end21 ], [ 1, %if.end ], [ 1, %lor.lhs.false4 ], [ 1, %lor.lhs.false ], [ 1, %if.then ], [ 0, %if.end12 ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

declare void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @ASN1_OCTET_STRING_new() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i8* @X509_alias_get0(%struct.x509_st* nocapture noundef readonly %x, i32* noundef writeonly %len) local_unnamed_addr #4 {
entry:
  %aux = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 21
  %0 = load %struct.x509_cert_aux_st*, %struct.x509_cert_aux_st** %aux, align 8, !tbaa !4
  %tobool.not = icmp eq %struct.x509_cert_aux_st* %0, null
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %alias = getelementptr inbounds %struct.x509_cert_aux_st, %struct.x509_cert_aux_st* %0, i64 0, i32 2
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %alias, align 8, !tbaa !18
  %tobool2.not = icmp eq %struct.asn1_string_st* %1, null
  br i1 %tobool2.not, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %tobool3.not = icmp eq i32* %len, null
  br i1 %tobool3.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %1, i64 0, i32 0
  %2 = load i32, i32* %length, align 8, !tbaa !21
  store i32 %2, i32* %len, align 4, !tbaa !22
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %1, i64 0, i32 2
  %3 = load i8*, i8** %data, align 8, !tbaa !23
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end7
  %retval.0 = phi i8* [ %3, %if.end7 ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i8* @X509_keyid_get0(%struct.x509_st* nocapture noundef readonly %x, i32* noundef writeonly %len) local_unnamed_addr #4 {
entry:
  %aux = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 21
  %0 = load %struct.x509_cert_aux_st*, %struct.x509_cert_aux_st** %aux, align 8, !tbaa !4
  %tobool.not = icmp eq %struct.x509_cert_aux_st* %0, null
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %keyid = getelementptr inbounds %struct.x509_cert_aux_st, %struct.x509_cert_aux_st* %0, i64 0, i32 3
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %keyid, align 8, !tbaa !20
  %tobool2.not = icmp eq %struct.asn1_string_st* %1, null
  br i1 %tobool2.not, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %tobool3.not = icmp eq i32* %len, null
  br i1 %tobool3.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %1, i64 0, i32 0
  %2 = load i32, i32* %length, align 8, !tbaa !21
  store i32 %2, i32* %len, align 4, !tbaa !22
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %1, i64 0, i32 2
  %3 = load i8*, i8** %data, align 8, !tbaa !23
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end7
  %retval.0 = phi i8* [ %3, %if.end7 ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_add1_trust_object(%struct.x509_st* noundef %x, %struct.asn1_object_st* noundef %obj) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.asn1_object_st* %obj, null
  br i1 %tobool.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call %struct.asn1_object_st* @OBJ_dup(%struct.asn1_object_st* noundef nonnull %obj) #5
  %tobool1.not = icmp eq %struct.asn1_object_st* %call, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.then, %entry
  %objtmp.0 = phi %struct.asn1_object_st* [ %call, %if.then ], [ null, %entry ]
  %call4 = tail call fastcc %struct.x509_cert_aux_st* @aux_get(%struct.x509_st* noundef %x) #6
  %cmp = icmp eq %struct.x509_cert_aux_st* %call4, null
  br i1 %cmp, label %err, label %if.end6

if.end6:                                          ; preds = %if.end3
  %trust = getelementptr inbounds %struct.x509_cert_aux_st, %struct.x509_cert_aux_st* %call4, i64 0, i32 0
  %0 = load %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT** %trust, align 8, !tbaa !24
  %cmp7 = icmp eq %struct.stack_st_ASN1_OBJECT* %0, null
  br i1 %cmp7, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %if.end6
  %call8 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %1 = bitcast %struct.x509_cert_aux_st* %call4 to %struct.stack_st**
  store %struct.stack_st* %call8, %struct.stack_st** %1, align 8, !tbaa !24
  %cmp10 = icmp eq %struct.stack_st* %call8, null
  %2 = bitcast %struct.stack_st* %call8 to %struct.stack_st_ASN1_OBJECT*
  br i1 %cmp10, label %err, label %if.end12

if.end12:                                         ; preds = %land.lhs.true, %if.end6
  %3 = phi %struct.stack_st_ASN1_OBJECT* [ %2, %land.lhs.true ], [ %0, %if.end6 ]
  %tobool13.not = icmp eq %struct.asn1_object_st* %objtmp.0, null
  br i1 %tobool13.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end12
  %call15 = tail call fastcc %struct.stack_st* @ossl_check_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef %3) #6
  %4 = bitcast %struct.asn1_object_st* %objtmp.0 to i8*
  %call17 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call15, i8* noundef nonnull %4) #5
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %cleanup

err:                                              ; preds = %lor.lhs.false, %land.lhs.true, %if.end3
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %objtmp.0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %lor.lhs.false, %if.then, %err
  %retval.0 = phi i32 [ 0, %err ], [ 0, %if.then ], [ 1, %lor.lhs.false ], [ 1, %if.end12 ]
  ret i32 %retval.0
}

declare %struct.asn1_object_st* @OBJ_dup(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_OBJECT* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_add1_reject_object(%struct.x509_st* noundef %x, %struct.asn1_object_st* noundef %obj) local_unnamed_addr #1 {
entry:
  %call = tail call %struct.asn1_object_st* @OBJ_dup(%struct.asn1_object_st* noundef %obj) #5
  %cmp = icmp eq %struct.asn1_object_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc %struct.x509_cert_aux_st* @aux_get(%struct.x509_st* noundef %x) #6
  %cmp2 = icmp eq %struct.x509_cert_aux_st* %call1, null
  br i1 %cmp2, label %if.then18, label %if.end4

if.end4:                                          ; preds = %if.end
  %reject = getelementptr inbounds %struct.x509_cert_aux_st, %struct.x509_cert_aux_st* %call1, i64 0, i32 1
  %0 = load %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT** %reject, align 8, !tbaa !25
  %cmp5 = icmp eq %struct.stack_st_ASN1_OBJECT* %0, null
  br i1 %cmp5, label %land.lhs.true, label %err

land.lhs.true:                                    ; preds = %if.end4
  %call6 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %1 = bitcast %struct.stack_st_ASN1_OBJECT** %reject to %struct.stack_st**
  store %struct.stack_st* %call6, %struct.stack_st** %1, align 8, !tbaa !25
  %cmp8 = icmp eq %struct.stack_st* %call6, null
  %2 = bitcast %struct.stack_st* %call6 to %struct.stack_st_ASN1_OBJECT*
  br i1 %cmp8, label %if.then18, label %err

err:                                              ; preds = %if.end4, %land.lhs.true
  %3 = phi %struct.stack_st_ASN1_OBJECT* [ %0, %if.end4 ], [ %2, %land.lhs.true ]
  %call12 = tail call fastcc %struct.stack_st* @ossl_check_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef %3) #6
  %4 = bitcast %struct.asn1_object_st* %call to i8*
  %call14 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call12, i8* noundef nonnull %4) #5
  %cmp15 = icmp sgt i32 %call14, 0
  br i1 %cmp15, label %cleanup, label %if.then18

if.then18:                                        ; preds = %if.end, %land.lhs.true, %err
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then18, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.then18 ], [ 1, %err ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @X509_trust_clear(%struct.x509_st* nocapture noundef readonly %x) local_unnamed_addr #1 {
entry:
  %aux = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 21
  %0 = load %struct.x509_cert_aux_st*, %struct.x509_cert_aux_st** %aux, align 8, !tbaa !4
  %tobool.not = icmp eq %struct.x509_cert_aux_st* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %trust = getelementptr inbounds %struct.x509_cert_aux_st, %struct.x509_cert_aux_st* %0, i64 0, i32 0
  %1 = load %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT** %trust, align 8, !tbaa !24
  %call = tail call fastcc %struct.stack_st* @ossl_check_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef %1) #6
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.asn1_object_st*)* @ASN1_OBJECT_free to void (i8*)*)) #5
  %2 = load %struct.x509_cert_aux_st*, %struct.x509_cert_aux_st** %aux, align 8, !tbaa !4
  %trust4 = getelementptr inbounds %struct.x509_cert_aux_st, %struct.x509_cert_aux_st* %2, i64 0, i32 0
  store %struct.stack_st_ASN1_OBJECT* null, %struct.stack_st_ASN1_OBJECT** %trust4, align 8, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @X509_reject_clear(%struct.x509_st* nocapture noundef readonly %x) local_unnamed_addr #1 {
entry:
  %aux = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 21
  %0 = load %struct.x509_cert_aux_st*, %struct.x509_cert_aux_st** %aux, align 8, !tbaa !4
  %tobool.not = icmp eq %struct.x509_cert_aux_st* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %reject = getelementptr inbounds %struct.x509_cert_aux_st, %struct.x509_cert_aux_st* %0, i64 0, i32 1
  %1 = load %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT** %reject, align 8, !tbaa !25
  %call = tail call fastcc %struct.stack_st* @ossl_check_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef %1) #6
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.asn1_object_st*)* @ASN1_OBJECT_free to void (i8*)*)) #5
  %2 = load %struct.x509_cert_aux_st*, %struct.x509_cert_aux_st** %aux, align 8, !tbaa !4
  %reject4 = getelementptr inbounds %struct.x509_cert_aux_st, %struct.x509_cert_aux_st* %2, i64 0, i32 1
  store %struct.stack_st_ASN1_OBJECT* null, %struct.stack_st_ASN1_OBJECT** %reject4, align 8, !tbaa !25
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_ASN1_OBJECT* @X509_get0_trust_objects(%struct.x509_st* nocapture noundef readonly %x) local_unnamed_addr #3 {
entry:
  %aux = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 21
  %0 = load %struct.x509_cert_aux_st*, %struct.x509_cert_aux_st** %aux, align 8, !tbaa !4
  %cmp.not = icmp eq %struct.x509_cert_aux_st* %0, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %trust = getelementptr inbounds %struct.x509_cert_aux_st, %struct.x509_cert_aux_st* %0, i64 0, i32 0
  %1 = load %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT** %trust, align 8, !tbaa !24
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.stack_st_ASN1_OBJECT* [ %1, %if.then ], [ null, %entry ]
  ret %struct.stack_st_ASN1_OBJECT* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_ASN1_OBJECT* @X509_get0_reject_objects(%struct.x509_st* nocapture noundef readonly %x) local_unnamed_addr #3 {
entry:
  %aux = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 21
  %0 = load %struct.x509_cert_aux_st*, %struct.x509_cert_aux_st** %aux, align 8, !tbaa !4
  %cmp.not = icmp eq %struct.x509_cert_aux_st* %0, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %reject = getelementptr inbounds %struct.x509_cert_aux_st, %struct.x509_cert_aux_st* %0, i64 0, i32 1
  %1 = load %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT** %reject, align 8, !tbaa !25
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.stack_st_ASN1_OBJECT* [ %1, %if.then ], [ null, %entry ]
  ret %struct.stack_st_ASN1_OBJECT* %retval.0
}

declare %struct.ASN1_ITEM_st* @ASN1_OBJECT_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_UTF8STRING_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_OCTET_STRING_it() #2

declare %struct.ASN1_ITEM_st* @X509_ALGOR_it() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !7, i64 336}
!5 = !{!"x509_st", !6, i64 0, !13, i64 136, !10, i64 152, !16, i64 176, !8, i64 192, !17, i64 200, !12, i64 216, !12, i64 224, !11, i64 232, !11, i64 236, !11, i64 240, !11, i64 244, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !8, i64 312, !7, i64 336, !7, i64 344, !11, i64 352, !7, i64 360, !7, i64 368, !7, i64 376}
!6 = !{!"x509_cinf_st", !7, i64 0, !10, i64 8, !13, i64 32, !7, i64 48, !14, i64 56, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !15, i64 112}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"asn1_string_st", !11, i64 0, !11, i64 4, !7, i64 8, !12, i64 16}
!11 = !{!"int", !8, i64 0}
!12 = !{!"long", !8, i64 0}
!13 = !{!"X509_algor_st", !7, i64 0, !7, i64 8}
!14 = !{!"X509_val_st", !7, i64 0, !7, i64 8}
!15 = !{!"ASN1_ENCODING_st", !7, i64 0, !12, i64 8, !11, i64 16}
!16 = !{!"x509_sig_info_st", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!17 = !{!"crypto_ex_data_st", !7, i64 0, !7, i64 8}
!18 = !{!19, !7, i64 16}
!19 = !{!"x509_cert_aux_st", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!20 = !{!19, !7, i64 24}
!21 = !{!10, !11, i64 0}
!22 = !{!11, !11, i64 0}
!23 = !{!10, !7, i64 8}
!24 = !{!19, !7, i64 0}
!25 = !{!19, !7, i64 8}
