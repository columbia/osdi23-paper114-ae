; ModuleID = 'crypto/x509/v3_ist.c'
source_filename = "crypto/x509/v3_ist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, {}* }
%struct.v3_ext_method = type { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, {}*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* }
%struct.stack_st_CONF_VALUE = type opaque
%struct.v3_ext_ctx = type { i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_req_st*, %struct.X509_crl_st*, %struct.X509V3_CONF_METHOD_st*, i8*, %struct.evp_pkey_st* }
%struct.x509_st = type opaque
%struct.X509_req_st = type opaque
%struct.X509_crl_st = type opaque
%struct.X509V3_CONF_METHOD_st = type { i8* (i8*, i8*, i8*)*, %struct.stack_st_CONF_VALUE* (i8*, i8*)*, void (i8*, i8*)*, void (i8*, %struct.stack_st_CONF_VALUE*)* }
%struct.evp_pkey_st = type opaque
%struct.bio_st = type opaque
%struct.ISSUER_SIGN_TOOL_st = type { %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.ASN1_VALUE_st = type opaque
%struct.stack_st = type opaque

@ISSUER_SIGN_TOOL_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([4 x %struct.ASN1_TEMPLATE_st], [4 x %struct.ASN1_TEMPLATE_st]* bitcast ([4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @ISSUER_SIGN_TOOL_seq_tt to [4 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 4, i8* null, i64 32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [17 x i8] c"ISSUER_SIGN_TOOL\00", align 1
@ossl_v3_issuer_sign_tool = local_unnamed_addr constant { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 1008, i32 4, %struct.ASN1_ITEM_st* ()* @ISSUER_SIGN_TOOL_it, i8* ()* null, void (i8*)* null, i8* (i8*, i8**, i64)* null, i32 (i8*, i8**)* null, i8* (%struct.v3_ext_method*, i8*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* bitcast (%struct.ISSUER_SIGN_TOOL_st* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* @v2i_issuer_sign_tool to i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*), i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* bitcast (i32 (%struct.v3_ext_method*, %struct.ISSUER_SIGN_TOOL_st*, %struct.bio_st*, i32)* @i2r_issuer_sign_tool to i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*), i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"signTool\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"cATool\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"signToolCert\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"cAToolCert\00", align 1
@ISSUER_SIGN_TOOL_seq_tt = internal constant [4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_UTF8STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_UTF8STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_UTF8STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_UTF8STRING_it }], align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"crypto/x509/v3_ist.c\00", align 1
@__func__.v2i_issuer_sign_tool = private unnamed_addr constant [21 x i8] c"v2i_issuer_sign_tool\00", align 1
@__func__.i2r_issuer_sign_tool = private unnamed_addr constant [21 x i8] c"i2r_issuer_sign_tool\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"%*ssignTool    : \00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"%*scATool      : \00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"%*ssignToolCert: \00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"%*scAToolCert  : \00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ISSUER_SIGN_TOOL_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ISSUER_SIGN_TOOL_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ISSUER_SIGN_TOOL_st* @d2i_ISSUER_SIGN_TOOL(%struct.ISSUER_SIGN_TOOL_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ISSUER_SIGN_TOOL_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ISSUER_SIGN_TOOL_it.local_it) #4
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ISSUER_SIGN_TOOL_st*
  ret %struct.ISSUER_SIGN_TOOL_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ISSUER_SIGN_TOOL(%struct.ISSUER_SIGN_TOOL_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ISSUER_SIGN_TOOL_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ISSUER_SIGN_TOOL_it.local_it) #4
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ISSUER_SIGN_TOOL_st* @ISSUER_SIGN_TOOL_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @ISSUER_SIGN_TOOL_it.local_it) #4
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ISSUER_SIGN_TOOL_st*
  ret %struct.ISSUER_SIGN_TOOL_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @ISSUER_SIGN_TOOL_free(%struct.ISSUER_SIGN_TOOL_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ISSUER_SIGN_TOOL_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @ISSUER_SIGN_TOOL_it.local_it) #4
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal %struct.ISSUER_SIGN_TOOL_st* @v2i_issuer_sign_tool(%struct.v3_ext_method* nocapture noundef readnone %method, %struct.v3_ext_ctx* nocapture noundef readnone %ctx, %struct.stack_st_CONF_VALUE* noundef %nval) #1 {
entry:
  %call = tail call %struct.ISSUER_SIGN_TOOL_st* @ISSUER_SIGN_TOOL_new() #5
  %cmp = icmp eq %struct.ISSUER_SIGN_TOOL_st* %call, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %nval) #5
  %call2118 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #4
  %cmp3119 = icmp sgt i32 %call2118, 0
  br i1 %cmp3119, label %for.body.lr.ph, label %cleanup79

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cAToolCert = getelementptr inbounds %struct.ISSUER_SIGN_TOOL_st, %struct.ISSUER_SIGN_TOOL_st* %call, i64 0, i32 3
  %signToolCert = getelementptr inbounds %struct.ISSUER_SIGN_TOOL_st, %struct.ISSUER_SIGN_TOOL_st* %call, i64 0, i32 2
  %cATool = getelementptr inbounds %struct.ISSUER_SIGN_TOOL_st, %struct.ISSUER_SIGN_TOOL_st* %call, i64 0, i32 1
  %signTool = getelementptr inbounds %struct.ISSUER_SIGN_TOOL_st, %struct.ISSUER_SIGN_TOOL_st* %call, i64 0, i32 0
  br label %for.body

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef 42, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.v2i_issuer_sign_tool, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup79

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.0120 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %call5 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call1, i32 noundef %i.0120) #4
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %for.inc, label %if.end8

if.end8:                                          ; preds = %for.body
  %name = getelementptr inbounds i8, i8* %call5, i64 8
  %0 = bitcast i8* %name to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !4
  %call9 = tail call i32 @strcmp(i8* noundef %1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)) #6
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end8
  %call12 = tail call %struct.asn1_string_st* @ASN1_UTF8STRING_new() #4
  store %struct.asn1_string_st* %call12, %struct.asn1_string_st** %signTool, align 8, !tbaa !9
  %cmp14 = icmp eq %struct.asn1_string_st* %call12, null
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then11
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.v2i_issuer_sign_tool, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #4
  tail call void @ISSUER_SIGN_TOOL_free(%struct.ISSUER_SIGN_TOOL_st* noundef nonnull %call) #5
  br label %cleanup79

if.end16:                                         ; preds = %if.then11
  %value = getelementptr inbounds i8, i8* %call5, i64 16
  %2 = bitcast i8* %value to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !11
  %call19 = tail call i64 @strlen(i8* noundef %3) #6
  %conv = trunc i64 %call19 to i32
  %call20 = tail call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef nonnull %call12, i8* noundef %3, i32 noundef %conv) #4
  br label %for.inc

if.else:                                          ; preds = %if.end8
  %call22 = tail call i32 @strcmp(i8* noundef %1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)) #6
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %if.else38

if.then25:                                        ; preds = %if.else
  %call26 = tail call %struct.asn1_string_st* @ASN1_UTF8STRING_new() #4
  store %struct.asn1_string_st* %call26, %struct.asn1_string_st** %cATool, align 8, !tbaa !12
  %cmp28 = icmp eq %struct.asn1_string_st* %call26, null
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.then25
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.v2i_issuer_sign_tool, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #4
  tail call void @ISSUER_SIGN_TOOL_free(%struct.ISSUER_SIGN_TOOL_st* noundef nonnull %call) #5
  br label %cleanup79

if.end31:                                         ; preds = %if.then25
  %value33 = getelementptr inbounds i8, i8* %call5, i64 16
  %4 = bitcast i8* %value33 to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !11
  %call35 = tail call i64 @strlen(i8* noundef %5) #6
  %conv36 = trunc i64 %call35 to i32
  %call37 = tail call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef nonnull %call26, i8* noundef %5, i32 noundef %conv36) #4
  br label %for.inc

if.else38:                                        ; preds = %if.else
  %call40 = tail call i32 @strcmp(i8* noundef %1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)) #6
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then43, label %if.else56

if.then43:                                        ; preds = %if.else38
  %call44 = tail call %struct.asn1_string_st* @ASN1_UTF8STRING_new() #4
  store %struct.asn1_string_st* %call44, %struct.asn1_string_st** %signToolCert, align 8, !tbaa !13
  %cmp46 = icmp eq %struct.asn1_string_st* %call44, null
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.then43
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.v2i_issuer_sign_tool, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #4
  tail call void @ISSUER_SIGN_TOOL_free(%struct.ISSUER_SIGN_TOOL_st* noundef nonnull %call) #5
  br label %cleanup79

if.end49:                                         ; preds = %if.then43
  %value51 = getelementptr inbounds i8, i8* %call5, i64 16
  %6 = bitcast i8* %value51 to i8**
  %7 = load i8*, i8** %6, align 8, !tbaa !11
  %call53 = tail call i64 @strlen(i8* noundef %7) #6
  %conv54 = trunc i64 %call53 to i32
  %call55 = tail call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef nonnull %call44, i8* noundef %7, i32 noundef %conv54) #4
  br label %for.inc

if.else56:                                        ; preds = %if.else38
  %call58 = tail call i32 @strcmp(i8* noundef %1, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)) #6
  %cmp59 = icmp eq i32 %call58, 0
  br i1 %cmp59, label %if.then61, label %if.else74

if.then61:                                        ; preds = %if.else56
  %call62 = tail call %struct.asn1_string_st* @ASN1_UTF8STRING_new() #4
  store %struct.asn1_string_st* %call62, %struct.asn1_string_st** %cAToolCert, align 8, !tbaa !14
  %cmp64 = icmp eq %struct.asn1_string_st* %call62, null
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.then61
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.v2i_issuer_sign_tool, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #4
  tail call void @ISSUER_SIGN_TOOL_free(%struct.ISSUER_SIGN_TOOL_st* noundef nonnull %call) #5
  br label %cleanup79

if.end67:                                         ; preds = %if.then61
  %value69 = getelementptr inbounds i8, i8* %call5, i64 16
  %8 = bitcast i8* %value69 to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !11
  %call71 = tail call i64 @strlen(i8* noundef %9) #6
  %conv72 = trunc i64 %call71 to i32
  %call73 = tail call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef nonnull %call62, i8* noundef %9, i32 noundef %conv72) #4
  br label %for.inc

if.else74:                                        ; preds = %if.else56
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.v2i_issuer_sign_tool, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 524550, i8* noundef null) #4
  tail call void @ISSUER_SIGN_TOOL_free(%struct.ISSUER_SIGN_TOOL_st* noundef nonnull %call) #5
  br label %cleanup79

for.inc:                                          ; preds = %for.body, %if.end31, %if.end67, %if.end49, %if.end16
  %inc = add nuw nsw i32 %i.0120, 1
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #4
  %cmp3 = icmp slt i32 %inc, %call2
  br i1 %cmp3, label %for.body, label %cleanup79, !llvm.loop !15

cleanup79:                                        ; preds = %for.inc, %for.cond.preheader, %if.else74, %if.then66, %if.then48, %if.then30, %if.then15, %if.then
  %retval.2 = phi %struct.ISSUER_SIGN_TOOL_st* [ null, %if.then ], [ null, %if.then15 ], [ null, %if.then30 ], [ null, %if.then48 ], [ null, %if.then66 ], [ null, %if.else74 ], [ %call, %for.cond.preheader ], [ %call, %for.inc ]
  ret %struct.ISSUER_SIGN_TOOL_st* %retval.2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @i2r_issuer_sign_tool(%struct.v3_ext_method* nocapture noundef readnone %method, %struct.ISSUER_SIGN_TOOL_st* noundef readonly %ist, %struct.bio_st* noundef %out, i32 noundef %indent) #1 {
entry:
  %cmp = icmp eq %struct.ISSUER_SIGN_TOOL_st* %ist, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.i2r_issuer_sign_tool, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 524550, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %signTool = getelementptr inbounds %struct.ISSUER_SIGN_TOOL_st, %struct.ISSUER_SIGN_TOOL_st* %ist, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %signTool, align 8, !tbaa !9
  %cmp1.not = icmp eq %struct.asn1_string_st* %0, null
  br i1 %cmp1.not, label %if.end10, label %if.end10.thread

if.end10:                                         ; preds = %if.end
  %cATool = getelementptr inbounds %struct.ISSUER_SIGN_TOOL_st, %struct.ISSUER_SIGN_TOOL_st* %ist, i64 0, i32 1
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %cATool, align 8, !tbaa !12
  %cmp11.not = icmp eq %struct.asn1_string_st* %1, null
  br i1 %cmp11.not, label %if.end23.thread, label %if.end16

if.end10.thread:                                  ; preds = %if.end
  %call6 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #4
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %signTool, align 8, !tbaa !9
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %2, i64 0, i32 2
  %3 = load i8*, i8** %data, align 8, !tbaa !17
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %2, i64 0, i32 0
  %4 = load i32, i32* %length, align 8, !tbaa !21
  %call9 = tail call i32 @BIO_write(%struct.bio_st* noundef %out, i8* noundef %3, i32 noundef %4) #4
  %cATool81 = getelementptr inbounds %struct.ISSUER_SIGN_TOOL_st, %struct.ISSUER_SIGN_TOOL_st* %ist, i64 0, i32 1
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %cATool81, align 8, !tbaa !12
  %cmp11.not82 = icmp eq %struct.asn1_string_st* %5, null
  br i1 %cmp11.not82, label %if.end23, label %if.then14

if.then14:                                        ; preds = %if.end10.thread
  %call15 = tail call i32 @BIO_write(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 noundef 1) #4
  br label %if.end16

if.end16:                                         ; preds = %if.end10, %if.then14
  %cATool8386 = phi %struct.asn1_string_st** [ %cATool81, %if.then14 ], [ %cATool, %if.end10 ]
  %call17 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #4
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %cATool8386, align 8, !tbaa !12
  %data19 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %6, i64 0, i32 2
  %7 = load i8*, i8** %data19, align 8, !tbaa !17
  %length21 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %6, i64 0, i32 0
  %8 = load i32, i32* %length21, align 8, !tbaa !21
  %call22 = tail call i32 @BIO_write(%struct.bio_st* noundef %out, i8* noundef %7, i32 noundef %8) #4
  br label %if.end23

if.end23:                                         ; preds = %if.end10.thread, %if.end16
  %signToolCert = getelementptr inbounds %struct.ISSUER_SIGN_TOOL_st, %struct.ISSUER_SIGN_TOOL_st* %ist, i64 0, i32 2
  %9 = load %struct.asn1_string_st*, %struct.asn1_string_st** %signToolCert, align 8, !tbaa !13
  %cmp24.not = icmp eq %struct.asn1_string_st* %9, null
  br i1 %cmp24.not, label %if.end36, label %if.then27

if.end23.thread:                                  ; preds = %if.end10
  %signToolCert88 = getelementptr inbounds %struct.ISSUER_SIGN_TOOL_st, %struct.ISSUER_SIGN_TOOL_st* %ist, i64 0, i32 2
  %10 = load %struct.asn1_string_st*, %struct.asn1_string_st** %signToolCert88, align 8, !tbaa !13
  %cmp24.not89 = icmp eq %struct.asn1_string_st* %10, null
  br i1 %cmp24.not89, label %if.end36.thread, label %if.end29

if.then27:                                        ; preds = %if.end23
  %call28 = tail call i32 @BIO_write(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 noundef 1) #4
  br label %if.end29

if.end29:                                         ; preds = %if.end23.thread, %if.then27
  %signToolCert9195 = phi %struct.asn1_string_st** [ %signToolCert, %if.then27 ], [ %signToolCert88, %if.end23.thread ]
  %call30 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #4
  %11 = load %struct.asn1_string_st*, %struct.asn1_string_st** %signToolCert9195, align 8, !tbaa !13
  %data32 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %11, i64 0, i32 2
  %12 = load i8*, i8** %data32, align 8, !tbaa !17
  %length34 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %11, i64 0, i32 0
  %13 = load i32, i32* %length34, align 8, !tbaa !21
  %call35 = tail call i32 @BIO_write(%struct.bio_st* noundef %out, i8* noundef %12, i32 noundef %13) #4
  br label %if.end36

if.end36:                                         ; preds = %if.end29, %if.end23
  %cAToolCert = getelementptr inbounds %struct.ISSUER_SIGN_TOOL_st, %struct.ISSUER_SIGN_TOOL_st* %ist, i64 0, i32 3
  %14 = load %struct.asn1_string_st*, %struct.asn1_string_st** %cAToolCert, align 8, !tbaa !14
  %cmp37.not = icmp eq %struct.asn1_string_st* %14, null
  br i1 %cmp37.not, label %cleanup, label %if.then40

if.end36.thread:                                  ; preds = %if.end23.thread
  %cAToolCert97 = getelementptr inbounds %struct.ISSUER_SIGN_TOOL_st, %struct.ISSUER_SIGN_TOOL_st* %ist, i64 0, i32 3
  %15 = load %struct.asn1_string_st*, %struct.asn1_string_st** %cAToolCert97, align 8, !tbaa !14
  %cmp37.not98 = icmp eq %struct.asn1_string_st* %15, null
  br i1 %cmp37.not98, label %cleanup, label %if.end42

if.then40:                                        ; preds = %if.end36
  %call41 = tail call i32 @BIO_write(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 noundef 1) #4
  br label %if.end42

if.end42:                                         ; preds = %if.end36.thread, %if.then40
  %cAToolCert100104 = phi %struct.asn1_string_st** [ %cAToolCert, %if.then40 ], [ %cAToolCert97, %if.end36.thread ]
  %call43 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #4
  %16 = load %struct.asn1_string_st*, %struct.asn1_string_st** %cAToolCert100104, align 8, !tbaa !14
  %data45 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %16, i64 0, i32 2
  %17 = load i8*, i8** %data45, align 8, !tbaa !17
  %length47 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %16, i64 0, i32 0
  %18 = load i32, i32* %length47, align 8, !tbaa !21
  %call48 = tail call i32 @BIO_write(%struct.bio_st* noundef %out, i8* noundef %17, i32 noundef %18) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end36.thread, %if.end36, %if.end42, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end42 ], [ 1, %if.end36 ], [ 1, %if.end36.thread ]
  ret i32 %retval.0
}

declare %struct.ASN1_ITEM_st* @ASN1_UTF8STRING_it() #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #3

declare %struct.asn1_string_st* @ASN1_UTF8STRING_new() local_unnamed_addr #2

declare i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #3

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 8}
!5 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 0}
!10 = !{!"ISSUER_SIGN_TOOL_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!11 = !{!5, !6, i64 16}
!12 = !{!10, !6, i64 8}
!13 = !{!10, !6, i64 16}
!14 = !{!10, !6, i64 24}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!18, !6, i64 8}
!18 = !{!"asn1_string_st", !19, i64 0, !19, i64 4, !6, i64 8, !20, i64 16}
!19 = !{!"int", !7, i64 0}
!20 = !{!"long", !7, i64 0}
!21 = !{!18, !19, i64 0}
