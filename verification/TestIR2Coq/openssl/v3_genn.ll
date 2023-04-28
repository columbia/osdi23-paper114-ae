; ModuleID = 'crypto/x509/v3_genn.c'
source_filename = "crypto/x509/v3_genn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, {}* }
%struct.otherName_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.ASN1_VALUE_st = type opaque
%struct.EDIPartyName_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.GENERAL_NAME_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.stack_st_GENERAL_NAME = type opaque
%struct.X509_name_st = type opaque

@OTHERNAME_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OTHERNAME_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [10 x i8] c"OTHERNAME\00", align 1
@EDIPARTYNAME_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @EDIPARTYNAME_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"EDIPARTYNAME\00", align 1
@GENERAL_NAME_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 2, i64 0, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([9 x %struct.ASN1_TEMPLATE_st], [9 x %struct.ASN1_TEMPLATE_st]* bitcast ([9 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @GENERAL_NAME_ch_tt to [9 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 9, i8* null, i64 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0) }, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"GENERAL_NAME\00", align 1
@GENERAL_NAMES_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 -1, %struct.ASN1_TEMPLATE_st* bitcast ({ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }* @GENERAL_NAMES_item_tt to %struct.ASN1_TEMPLATE_st*), i64 0, i8* null, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0) }, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"GENERAL_NAMES\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"type_id\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@OTHERNAME_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 0, i64 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_ANY_it }], align 16
@.str.7 = private unnamed_addr constant [13 x i8] c"nameAssigner\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"partyName\00", align 1
@EDIPARTYNAME_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 0, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @DIRECTORYSTRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 1, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @DIRECTORYSTRING_it }], align 16
@.str.10 = private unnamed_addr constant [12 x i8] c"d.otherName\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"d.rfc822Name\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"d.dNSName\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"d.x400Address\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"d.directoryName\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"d.ediPartyName\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"d.uniformResourceIdentifier\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"d.iPAddress\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"d.registeredID\00", align 1
@GENERAL_NAME_ch_tt = internal constant [9 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 136, i64 0, i64 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OTHERNAME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 136, i64 1, i64 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_IA5STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 136, i64 2, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_IA5STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 136, i64 3, i64 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_SEQUENCE_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 4, i64 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_NAME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 136, i64 5, i64 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @EDIPARTYNAME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 136, i64 6, i64 8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_IA5STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 136, i64 7, i64 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 136, i64 8, i64 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it }], align 16
@.str.20 = private unnamed_addr constant [13 x i8] c"GeneralNames\00", align 1
@GENERAL_NAMES_item_tt = internal constant { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4, i64 0, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @GENERAL_NAME_it }, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OTHERNAME_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OTHERNAME_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.otherName_st* @d2i_OTHERNAME(%struct.otherName_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.otherName_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OTHERNAME_it.local_it) #5
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.otherName_st*
  ret %struct.otherName_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OTHERNAME(%struct.otherName_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.otherName_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OTHERNAME_it.local_it) #5
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.otherName_st* @OTHERNAME_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OTHERNAME_it.local_it) #5
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.otherName_st*
  ret %struct.otherName_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @OTHERNAME_free(%struct.otherName_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.otherName_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OTHERNAME_it.local_it) #5
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @EDIPARTYNAME_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @EDIPARTYNAME_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.EDIPartyName_st* @d2i_EDIPARTYNAME(%struct.EDIPartyName_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.EDIPartyName_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @EDIPARTYNAME_it.local_it) #5
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.EDIPartyName_st*
  ret %struct.EDIPartyName_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_EDIPARTYNAME(%struct.EDIPartyName_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.EDIPartyName_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @EDIPARTYNAME_it.local_it) #5
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.EDIPartyName_st* @EDIPARTYNAME_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @EDIPARTYNAME_it.local_it) #5
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.EDIPartyName_st*
  ret %struct.EDIPartyName_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @EDIPARTYNAME_free(%struct.EDIPartyName_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.EDIPartyName_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @EDIPARTYNAME_it.local_it) #5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @GENERAL_NAME_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @GENERAL_NAME_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.GENERAL_NAME_st* @d2i_GENERAL_NAME(%struct.GENERAL_NAME_st** noundef %a, i8** noundef %in, i64 noundef %len) #1 {
entry:
  %0 = bitcast %struct.GENERAL_NAME_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @GENERAL_NAME_it.local_it) #5
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.GENERAL_NAME_st*
  ret %struct.GENERAL_NAME_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_GENERAL_NAME(%struct.GENERAL_NAME_st* noundef %a, i8** noundef %out) #1 {
entry:
  %0 = bitcast %struct.GENERAL_NAME_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @GENERAL_NAME_it.local_it) #5
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.GENERAL_NAME_st* @GENERAL_NAME_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @GENERAL_NAME_it.local_it) #5
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.GENERAL_NAME_st*
  ret %struct.GENERAL_NAME_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.GENERAL_NAME_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @GENERAL_NAME_it.local_it) #5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @GENERAL_NAMES_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @GENERAL_NAMES_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_GENERAL_NAME* @d2i_GENERAL_NAMES(%struct.stack_st_GENERAL_NAME** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_GENERAL_NAME** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @GENERAL_NAMES_it.local_it) #5
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.stack_st_GENERAL_NAME*
  ret %struct.stack_st_GENERAL_NAME* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_GENERAL_NAMES(%struct.stack_st_GENERAL_NAME* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_GENERAL_NAME* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @GENERAL_NAMES_it.local_it) #5
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_GENERAL_NAME* @GENERAL_NAMES_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @GENERAL_NAMES_it.local_it) #5
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.stack_st_GENERAL_NAME*
  ret %struct.stack_st_GENERAL_NAME* %0
}

; Function Attrs: noinline nounwind uwtable
define void @GENERAL_NAMES_free(%struct.stack_st_GENERAL_NAME* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_GENERAL_NAME* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @GENERAL_NAMES_it.local_it) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.GENERAL_NAME_st* @GENERAL_NAME_dup(%struct.GENERAL_NAME_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.GENERAL_NAME_st* %a to i8*
  %call = tail call i8* @ASN1_dup(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.GENERAL_NAME_st*, i8**)* @i2d_GENERAL_NAME to i32 (i8*, i8**)*), i8* (i8**, i8**, i64)* noundef bitcast (%struct.GENERAL_NAME_st* (%struct.GENERAL_NAME_st**, i8**, i64)* @d2i_GENERAL_NAME to i8* (i8**, i8**, i64)*), i8* noundef %0) #5
  %1 = bitcast i8* %call to %struct.GENERAL_NAME_st*
  ret %struct.GENERAL_NAME_st* %1
}

declare i8* @ASN1_dup(i32 (i8*, i8**)* noundef, i8* (i8**, i8**, i64)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @GENERAL_NAME_cmp(%struct.GENERAL_NAME_st* noundef readonly %a, %struct.GENERAL_NAME_st* noundef readonly %b) local_unnamed_addr #1 {
entry:
  %tobool = icmp ne %struct.GENERAL_NAME_st* %a, null
  %tobool1 = icmp ne %struct.GENERAL_NAME_st* %b, null
  %or.cond = and i1 %tobool, %tobool1
  br i1 %or.cond, label %lor.lhs.false2, label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %type = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %a, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !4
  %type3 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %b, i64 0, i32 0
  %1 = load i32, i32* %type3, align 8, !tbaa !4
  %cmp.not = icmp eq i32 %0, %1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  switch i32 %0, label %cleanup [
    i32 3, label %sw.bb
    i32 5, label %sw.bb7
    i32 0, label %sw.bb12
    i32 1, label %sw.bb17
    i32 2, label %sw.bb17
    i32 6, label %sw.bb17
    i32 4, label %sw.bb22
    i32 7, label %sw.bb27
    i32 8, label %sw.bb32
  ]

sw.bb:                                            ; preds = %if.end
  %d = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %a, i64 0, i32 1
  %x400Address = bitcast %union.anon.0* %d to %struct.asn1_type_st**
  %2 = load %struct.asn1_type_st*, %struct.asn1_type_st** %x400Address, align 8, !tbaa !9
  %d5 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %b, i64 0, i32 1
  %x400Address6 = bitcast %union.anon.0* %d5 to %struct.asn1_type_st**
  %3 = load %struct.asn1_type_st*, %struct.asn1_type_st** %x400Address6, align 8, !tbaa !9
  %call = tail call i32 @ASN1_TYPE_cmp(%struct.asn1_type_st* noundef %2, %struct.asn1_type_st* noundef %3) #5
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  %d8 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %a, i64 0, i32 1
  %ediPartyName = bitcast %union.anon.0* %d8 to %struct.EDIPartyName_st**
  %4 = load %struct.EDIPartyName_st*, %struct.EDIPartyName_st** %ediPartyName, align 8, !tbaa !9
  %d9 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %b, i64 0, i32 1
  %ediPartyName10 = bitcast %union.anon.0* %d9 to %struct.EDIPartyName_st**
  %5 = load %struct.EDIPartyName_st*, %struct.EDIPartyName_st** %ediPartyName10, align 8, !tbaa !9
  %call11 = tail call fastcc i32 @edipartyname_cmp(%struct.EDIPartyName_st* noundef %4, %struct.EDIPartyName_st* noundef %5) #6
  br label %cleanup

sw.bb12:                                          ; preds = %if.end
  %d13 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %a, i64 0, i32 1
  %otherName = bitcast %union.anon.0* %d13 to %struct.otherName_st**
  %6 = load %struct.otherName_st*, %struct.otherName_st** %otherName, align 8, !tbaa !9
  %d14 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %b, i64 0, i32 1
  %otherName15 = bitcast %union.anon.0* %d14 to %struct.otherName_st**
  %7 = load %struct.otherName_st*, %struct.otherName_st** %otherName15, align 8, !tbaa !9
  %call16 = tail call i32 @OTHERNAME_cmp(%struct.otherName_st* noundef %6, %struct.otherName_st* noundef %7) #6
  br label %cleanup

sw.bb17:                                          ; preds = %if.end, %if.end, %if.end
  %d18 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %a, i64 0, i32 1
  %ia5 = bitcast %union.anon.0* %d18 to %struct.asn1_string_st**
  %8 = load %struct.asn1_string_st*, %struct.asn1_string_st** %ia5, align 8, !tbaa !9
  %d19 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %b, i64 0, i32 1
  %ia520 = bitcast %union.anon.0* %d19 to %struct.asn1_string_st**
  %9 = load %struct.asn1_string_st*, %struct.asn1_string_st** %ia520, align 8, !tbaa !9
  %call21 = tail call i32 @ASN1_STRING_cmp(%struct.asn1_string_st* noundef %8, %struct.asn1_string_st* noundef %9) #5
  br label %cleanup

sw.bb22:                                          ; preds = %if.end
  %d23 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %a, i64 0, i32 1
  %dirn = bitcast %union.anon.0* %d23 to %struct.X509_name_st**
  %10 = load %struct.X509_name_st*, %struct.X509_name_st** %dirn, align 8, !tbaa !9
  %d24 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %b, i64 0, i32 1
  %dirn25 = bitcast %union.anon.0* %d24 to %struct.X509_name_st**
  %11 = load %struct.X509_name_st*, %struct.X509_name_st** %dirn25, align 8, !tbaa !9
  %call26 = tail call i32 @X509_NAME_cmp(%struct.X509_name_st* noundef %10, %struct.X509_name_st* noundef %11) #5
  br label %cleanup

sw.bb27:                                          ; preds = %if.end
  %d28 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %a, i64 0, i32 1
  %ip = bitcast %union.anon.0* %d28 to %struct.asn1_string_st**
  %12 = load %struct.asn1_string_st*, %struct.asn1_string_st** %ip, align 8, !tbaa !9
  %d29 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %b, i64 0, i32 1
  %ip30 = bitcast %union.anon.0* %d29 to %struct.asn1_string_st**
  %13 = load %struct.asn1_string_st*, %struct.asn1_string_st** %ip30, align 8, !tbaa !9
  %call31 = tail call i32 @ASN1_OCTET_STRING_cmp(%struct.asn1_string_st* noundef %12, %struct.asn1_string_st* noundef %13) #5
  br label %cleanup

sw.bb32:                                          ; preds = %if.end
  %d33 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %a, i64 0, i32 1
  %rid = bitcast %union.anon.0* %d33 to %struct.asn1_object_st**
  %14 = load %struct.asn1_object_st*, %struct.asn1_object_st** %rid, align 8, !tbaa !9
  %d34 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %b, i64 0, i32 1
  %rid35 = bitcast %union.anon.0* %d34 to %struct.asn1_object_st**
  %15 = load %struct.asn1_object_st*, %struct.asn1_object_st** %rid35, align 8, !tbaa !9
  %call36 = tail call i32 @OBJ_cmp(%struct.asn1_object_st* noundef %14, %struct.asn1_object_st* noundef %15) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %sw.bb7, %sw.bb12, %sw.bb17, %sw.bb22, %sw.bb27, %sw.bb32, %if.end, %entry, %lor.lhs.false2
  %retval.0 = phi i32 [ -1, %lor.lhs.false2 ], [ -1, %entry ], [ -1, %if.end ], [ %call36, %sw.bb32 ], [ %call31, %sw.bb27 ], [ %call26, %sw.bb22 ], [ %call21, %sw.bb17 ], [ %call16, %sw.bb12 ], [ %call11, %sw.bb7 ], [ %call, %sw.bb ]
  ret i32 %retval.0
}

declare i32 @ASN1_TYPE_cmp(%struct.asn1_type_st* noundef, %struct.asn1_type_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @edipartyname_cmp(%struct.EDIPartyName_st* noundef readonly %a, %struct.EDIPartyName_st* noundef readonly %b) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.EDIPartyName_st* %a, null
  %cmp1 = icmp eq %struct.EDIPartyName_st* %b, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %nameAssigner = getelementptr inbounds %struct.EDIPartyName_st, %struct.EDIPartyName_st* %a, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %nameAssigner, align 8, !tbaa !10
  %cmp2 = icmp eq %struct.asn1_string_st* %0, null
  %nameAssigner3 = getelementptr inbounds %struct.EDIPartyName_st, %struct.EDIPartyName_st* %b, i64 0, i32 0
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %nameAssigner3, align 8, !tbaa !10
  %cmp4.not = icmp eq %struct.asn1_string_st* %1, null
  br i1 %cmp2, label %land.lhs.true, label %land.lhs.true9

land.lhs.true:                                    ; preds = %if.end
  br i1 %cmp4.not, label %if.end22, label %cleanup

land.lhs.true9:                                   ; preds = %if.end
  br i1 %cmp4.not, label %cleanup, label %if.then16

if.then16:                                        ; preds = %land.lhs.true9
  %call = tail call i32 @ASN1_STRING_cmp(%struct.asn1_string_st* noundef nonnull %0, %struct.asn1_string_st* noundef nonnull %1) #5
  %cmp19.not = icmp eq i32 %call, 0
  br i1 %cmp19.not, label %if.end22, label %cleanup

if.end22:                                         ; preds = %land.lhs.true, %if.then16
  %partyName = getelementptr inbounds %struct.EDIPartyName_st, %struct.EDIPartyName_st* %a, i64 0, i32 1
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %partyName, align 8, !tbaa !13
  %cmp23 = icmp eq %struct.asn1_string_st* %2, null
  br i1 %cmp23, label %cleanup, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %if.end22
  %partyName25 = getelementptr inbounds %struct.EDIPartyName_st, %struct.EDIPartyName_st* %b, i64 0, i32 1
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %partyName25, align 8, !tbaa !13
  %cmp26 = icmp eq %struct.asn1_string_st* %3, null
  br i1 %cmp26, label %cleanup, label %if.end28

if.end28:                                         ; preds = %lor.lhs.false24
  %call31 = tail call i32 @ASN1_STRING_cmp(%struct.asn1_string_st* noundef nonnull %2, %struct.asn1_string_st* noundef nonnull %3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %lor.lhs.false24, %if.then16, %land.lhs.true9, %land.lhs.true, %entry, %if.end28
  %retval.0 = phi i32 [ %call31, %if.end28 ], [ -1, %entry ], [ -1, %land.lhs.true ], [ 1, %land.lhs.true9 ], [ %call, %if.then16 ], [ -1, %lor.lhs.false24 ], [ -1, %if.end22 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OTHERNAME_cmp(%struct.otherName_st* noundef readonly %a, %struct.otherName_st* noundef readonly %b) local_unnamed_addr #1 {
entry:
  %tobool = icmp ne %struct.otherName_st* %a, null
  %tobool1 = icmp ne %struct.otherName_st* %b, null
  %or.cond = and i1 %tobool, %tobool1
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %type_id = getelementptr inbounds %struct.otherName_st, %struct.otherName_st* %a, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type_id, align 8, !tbaa !14
  %type_id2 = getelementptr inbounds %struct.otherName_st, %struct.otherName_st* %b, i64 0, i32 0
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type_id2, align 8, !tbaa !14
  %call = tail call i32 @OBJ_cmp(%struct.asn1_object_st* noundef %0, %struct.asn1_object_st* noundef %1) #5
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %value = getelementptr inbounds %struct.otherName_st, %struct.otherName_st* %a, i64 0, i32 1
  %2 = load %struct.asn1_type_st*, %struct.asn1_type_st** %value, align 8, !tbaa !16
  %value5 = getelementptr inbounds %struct.otherName_st, %struct.otherName_st* %b, i64 0, i32 1
  %3 = load %struct.asn1_type_st*, %struct.asn1_type_st** %value5, align 8, !tbaa !16
  %call6 = tail call i32 @ASN1_TYPE_cmp(%struct.asn1_type_st* noundef %2, %struct.asn1_type_st* noundef %3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i32 [ %call6, %if.end4 ], [ -1, %entry ], [ %call, %if.end ]
  ret i32 %retval.0
}

declare i32 @ASN1_STRING_cmp(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @X509_NAME_cmp(%struct.X509_name_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_OCTET_STRING_cmp(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @OBJ_cmp(%struct.asn1_object_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @GENERAL_NAME_set0_value(%struct.GENERAL_NAME_st* nocapture noundef writeonly %a, i32 noundef %type, i8* noundef %value) local_unnamed_addr #3 {
entry:
  %switch = icmp ult i32 %type, 9
  br i1 %switch, label %sw.epilog.sink.split, label %sw.epilog

sw.epilog.sink.split:                             ; preds = %entry
  %0 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %a, i64 0, i32 1, i32 0
  store i8* %value, i8** %0, align 8, !tbaa !9
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.epilog.sink.split
  %type13 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %a, i64 0, i32 0
  store i32 %type, i32* %type13, align 8, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i8* @GENERAL_NAME_get0_value(%struct.GENERAL_NAME_st* nocapture noundef readonly %a, i32* noundef writeonly %ptype) local_unnamed_addr #4 {
entry:
  %tobool.not = icmp eq i32* %ptype, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %a, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !4
  store i32 %0, i32* %ptype, align 4, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %type1 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %a, i64 0, i32 0
  %1 = load i32, i32* %type1, align 8, !tbaa !4
  %switch = icmp ult i32 %1, 9
  br i1 %switch, label %return.sink.split, label %return

return.sink.split:                                ; preds = %if.end
  %2 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %a, i64 0, i32 1, i32 0
  %3 = load i8*, i8** %2, align 8, !tbaa !9
  br label %return

return:                                           ; preds = %if.end, %return.sink.split
  %retval.0 = phi i8* [ null, %if.end ], [ %3, %return.sink.split ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @GENERAL_NAME_set0_othername(%struct.GENERAL_NAME_st* nocapture noundef writeonly %gen, %struct.asn1_object_st* noundef %oid, %struct.asn1_type_st* noundef %value) local_unnamed_addr #1 {
entry:
  %call = tail call %struct.otherName_st* @OTHERNAME_new() #6
  %cmp = icmp eq %struct.otherName_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %value1 = getelementptr inbounds %struct.otherName_st, %struct.otherName_st* %call, i64 0, i32 1
  %0 = load %struct.asn1_type_st*, %struct.asn1_type_st** %value1, align 8, !tbaa !16
  tail call void @ASN1_TYPE_free(%struct.asn1_type_st* noundef %0) #5
  %type_id = getelementptr inbounds %struct.otherName_st, %struct.otherName_st* %call, i64 0, i32 0
  store %struct.asn1_object_st* %oid, %struct.asn1_object_st** %type_id, align 8, !tbaa !14
  store %struct.asn1_type_st* %value, %struct.asn1_type_st** %value1, align 8, !tbaa !16
  %1 = bitcast %struct.otherName_st* %call to i8*
  tail call void @GENERAL_NAME_set0_value(%struct.GENERAL_NAME_st* noundef %gen, i32 noundef 0, i8* noundef nonnull %1) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare void @ASN1_TYPE_free(%struct.asn1_type_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @GENERAL_NAME_get0_otherName(%struct.GENERAL_NAME_st* nocapture noundef readonly %gen, %struct.asn1_object_st** noundef writeonly %poid, %struct.asn1_type_st** noundef writeonly %pvalue) local_unnamed_addr #4 {
entry:
  %type = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gen, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !4
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq %struct.asn1_object_st** %poid, null
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  %d = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gen, i64 0, i32 1
  %otherName = bitcast %union.anon.0* %d to %struct.otherName_st**
  %1 = load %struct.otherName_st*, %struct.otherName_st** %otherName, align 8, !tbaa !9
  %type_id = getelementptr inbounds %struct.otherName_st, %struct.otherName_st* %1, i64 0, i32 0
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type_id, align 8, !tbaa !14
  store %struct.asn1_object_st* %2, %struct.asn1_object_st** %poid, align 8, !tbaa !18
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %tobool3.not = icmp eq %struct.asn1_type_st** %pvalue, null
  br i1 %tobool3.not, label %return, label %if.then4

if.then4:                                         ; preds = %if.end2
  %d5 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %gen, i64 0, i32 1
  %otherName6 = bitcast %union.anon.0* %d5 to %struct.otherName_st**
  %3 = load %struct.otherName_st*, %struct.otherName_st** %otherName6, align 8, !tbaa !9
  %value = getelementptr inbounds %struct.otherName_st, %struct.otherName_st* %3, i64 0, i32 1
  %4 = load %struct.asn1_type_st*, %struct.asn1_type_st** %value, align 8, !tbaa !16
  store %struct.asn1_type_st* %4, %struct.asn1_type_st** %pvalue, align 8, !tbaa !18
  br label %return

return:                                           ; preds = %if.end2, %if.then4, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.then4 ], [ 1, %if.end2 ]
  ret i32 %retval.0
}

declare %struct.ASN1_ITEM_st* @ASN1_OBJECT_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_ANY_it() #2

declare %struct.ASN1_ITEM_st* @DIRECTORYSTRING_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_IA5STRING_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_SEQUENCE_it() #2

declare %struct.ASN1_ITEM_st* @X509_NAME_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_OCTET_STRING_it() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"GENERAL_NAME_st", !6, i64 0, !7, i64 8}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"EDIPartyName_st", !12, i64 0, !12, i64 8}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!11, !12, i64 8}
!14 = !{!15, !12, i64 0}
!15 = !{!"otherName_st", !12, i64 0, !12, i64 8}
!16 = !{!15, !12, i64 8}
!17 = !{!6, !6, i64 0}
!18 = !{!12, !12, i64 0}
