; ModuleID = 'crypto/x509/v3_sxnet.c'
source_filename = "crypto/x509/v3_sxnet.c"
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
%struct.SXNET_st = type { %struct.asn1_string_st*, %struct.stack_st_SXNETID* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st_SXNETID = type opaque
%struct.stack_st = type opaque
%struct.SXNET_ID_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.ASN1_VALUE_st = type opaque

@ossl_v3_sxnet = local_unnamed_addr constant { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 143, i32 4, %struct.ASN1_ITEM_st* ()* @SXNET_it, i8* ()* null, void (i8*)* null, i8* (i8*, i8**, i64)* null, i32 (i8*, i8**)* null, i8* (%struct.v3_ext_method*, i8*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* bitcast (%struct.SXNET_st* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* @sxnet_v2i to i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*), i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* bitcast (i32 (%struct.v3_ext_method*, %struct.SXNET_st*, %struct.bio_st*, i32)* @sxnet_i2r to i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*), i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, i8* null }, align 8
@SXNETID_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @SXNETID_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [8 x i8] c"SXNETID\00", align 1
@SXNET_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @SXNET_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"SXNET\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"crypto/x509/v3_sxnet.c\00", align 1
@__func__.SXNET_add_id_asc = private unnamed_addr constant [17 x i8] c"SXNET_add_id_asc\00", align 1
@__func__.SXNET_add_id_ulong = private unnamed_addr constant [19 x i8] c"SXNET_add_id_ulong\00", align 1
@__func__.SXNET_add_id_INTEGER = private unnamed_addr constant [21 x i8] c"SXNET_add_id_INTEGER\00", align 1
@__func__.SXNET_get_id_asc = private unnamed_addr constant [17 x i8] c"SXNET_get_id_asc\00", align 1
@__func__.SXNET_get_id_ulong = private unnamed_addr constant [19 x i8] c"SXNET_get_id_ulong\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"zone\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@SXNETID_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }], align 16
@.str.6 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"ids\00", align 1
@SXNET_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4, i64 0, i64 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @SXNETID_it }], align 16
@.str.9 = private unnamed_addr constant [26 x i8] c"%*sVersion: <unsupported>\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"%*sVersion: %ld (0x%lX)\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"\0A%*sZone: %s, User: \00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @SXNET_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @SXNET_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.SXNET_st* @sxnet_v2i(%struct.v3_ext_method* nocapture noundef readnone %method, %struct.v3_ext_ctx* nocapture noundef readnone %ctx, %struct.stack_st_CONF_VALUE* noundef %nval) #1 {
entry:
  %sx = alloca %struct.SXNET_st*, align 8
  %0 = bitcast %struct.SXNET_st** %sx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.SXNET_st* null, %struct.SXNET_st** %sx, align 8, !tbaa !4
  %call = call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %nval) #6
  %call113 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #7
  %cmp14 = icmp sgt i32 %call113, 0
  br i1 %cmp14, label %for.body, label %cleanup

for.cond:                                         ; preds = %for.body
  %call1 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #7
  %cmp = icmp slt i32 %inc, %call1
  br i1 %cmp, label %for.body, label %for.end.loopexit, !llvm.loop !8

for.body:                                         ; preds = %entry, %for.cond
  %i.015 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %call3 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.015) #7
  %name = getelementptr inbounds i8, i8* %call3, i64 8
  %1 = bitcast i8* %name to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !10
  %value = getelementptr inbounds i8, i8* %call3, i64 16
  %3 = bitcast i8* %value to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !12
  %call4 = call i32 @SXNET_add_id_asc(%struct.SXNET_st** noundef nonnull %sx, i8* noundef %2, i8* noundef %4, i32 noundef -1) #6
  %tobool.not = icmp eq i32 %call4, 0
  %inc = add nuw nsw i32 %i.015, 1
  br i1 %tobool.not, label %cleanup, label %for.cond

for.end.loopexit:                                 ; preds = %for.cond
  %.pre = load %struct.SXNET_st*, %struct.SXNET_st** %sx, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %for.body, %entry, %for.end.loopexit
  %retval.0 = phi %struct.SXNET_st* [ %.pre, %for.end.loopexit ], [ null, %entry ], [ null, %for.body ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret %struct.SXNET_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sxnet_i2r(%struct.v3_ext_method* nocapture noundef readnone %method, %struct.SXNET_st* nocapture noundef readonly %sx, %struct.bio_st* noundef %out, i32 noundef %indent) #1 {
entry:
  %v = alloca i64, align 8
  %0 = bitcast i64* %v to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %version = getelementptr inbounds %struct.SXNET_st, %struct.SXNET_st* %sx, i64 0, i32 0
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %version, align 8, !tbaa !13
  %call = call i32 @ASN1_INTEGER_get_int64(i64* noundef nonnull %v, %struct.asn1_string_st* noundef %1) #7
  %tobool = icmp eq i32 %call, 0
  %2 = load i64, i64* %v, align 8
  %cmp = icmp eq i64 %2, 9223372036854775807
  %or.cond = select i1 %tobool, i1 true, i1 %cmp
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #7
  br label %if.end

if.else:                                          ; preds = %entry
  %add = add nsw i64 %2, 1
  %call4 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i64 noundef %add, i64 noundef %2) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ids = getelementptr inbounds %struct.SXNET_st, %struct.SXNET_st* %sx, i64 0, i32 1
  %3 = load %struct.stack_st_SXNETID*, %struct.stack_st_SXNETID** %ids, align 8, !tbaa !15
  %call531 = call fastcc %struct.stack_st* @ossl_check_const_SXNETID_sk_type(%struct.stack_st_SXNETID* noundef %3) #6
  %call632 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call531) #7
  %cmp733 = icmp sgt i32 %call632, 0
  br i1 %cmp733, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %for.body
  %i.034 = phi i32 [ %inc, %for.body ], [ 0, %if.end ]
  %4 = load %struct.stack_st_SXNETID*, %struct.stack_st_SXNETID** %ids, align 8, !tbaa !15
  %call9 = call fastcc %struct.stack_st* @ossl_check_const_SXNETID_sk_type(%struct.stack_st_SXNETID* noundef %4) #6
  %call10 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call9, i32 noundef %i.034) #7
  %zone = bitcast i8* %call10 to %struct.asn1_string_st**
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %zone, align 8, !tbaa !16
  %call11 = call i8* @i2s_ASN1_INTEGER(%struct.v3_ext_method* noundef null, %struct.asn1_string_st* noundef %5) #7
  %call12 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i8* noundef %call11) #7
  call void @CRYPTO_free(i8* noundef %call11, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef 82) #7
  %user = getelementptr inbounds i8, i8* %call10, i64 8
  %6 = bitcast i8* %user to %struct.asn1_string_st**
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %6, align 8, !tbaa !18
  %call13 = call i32 @ASN1_STRING_print(%struct.bio_st* noundef %out, %struct.asn1_string_st* noundef %7) #7
  %inc = add nuw nsw i32 %i.034, 1
  %8 = load %struct.stack_st_SXNETID*, %struct.stack_st_SXNETID** %ids, align 8, !tbaa !15
  %call5 = call fastcc %struct.stack_st* @ossl_check_const_SXNETID_sk_type(%struct.stack_st_SXNETID* noundef %8) #6
  %call6 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call5) #7
  %cmp7 = icmp slt i32 %inc, %call6
  br i1 %cmp7, label %for.body, label %for.end, !llvm.loop !19

for.end:                                          ; preds = %for.body, %if.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @SXNETID_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @SXNETID_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.SXNET_ID_st* @d2i_SXNETID(%struct.SXNET_ID_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.SXNET_ID_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @SXNETID_it.local_it) #7
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.SXNET_ID_st*
  ret %struct.SXNET_ID_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_SXNETID(%struct.SXNET_ID_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.SXNET_ID_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @SXNETID_it.local_it) #7
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.SXNET_ID_st* @SXNETID_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @SXNETID_it.local_it) #7
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.SXNET_ID_st*
  ret %struct.SXNET_ID_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @SXNETID_free(%struct.SXNET_ID_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.SXNET_ID_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @SXNETID_it.local_it) #7
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.SXNET_st* @d2i_SXNET(%struct.SXNET_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.SXNET_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @SXNET_it.local_it) #7
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.SXNET_st*
  ret %struct.SXNET_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_SXNET(%struct.SXNET_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.SXNET_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @SXNET_it.local_it) #7
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.SXNET_st* @SXNET_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @SXNET_it.local_it) #7
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.SXNET_st*
  ret %struct.SXNET_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @SXNET_free(%struct.SXNET_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.SXNET_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @SXNET_it.local_it) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @SXNET_add_id_asc(%struct.SXNET_st** noundef %psx, i8* noundef %zone, i8* noundef %user, i32 noundef %userlen) local_unnamed_addr #1 {
entry:
  %call = tail call %struct.asn1_string_st* @s2i_ASN1_INTEGER(%struct.v3_ext_method* noundef null, i8* noundef %zone) #7
  %cmp = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef 121, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.SXNET_add_id_asc, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 131, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @SXNET_add_id_INTEGER(%struct.SXNET_st** noundef %psx, %struct.asn1_string_st* noundef nonnull %call, i8* noundef %user, i32 noundef %userlen) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare %struct.asn1_string_st* @s2i_ASN1_INTEGER(%struct.v3_ext_method* noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @SXNET_add_id_INTEGER(%struct.SXNET_st** noundef %psx, %struct.asn1_string_st* noundef %zone, i8* noundef %user, i32 noundef %userlen) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.SXNET_st** %psx, null
  %cmp1 = icmp eq %struct.asn1_string_st* %zone, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i8* %user, null
  %or.cond51 = or i1 %or.cond, %cmp3
  br i1 %or.cond51, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef 156, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.SXNET_add_id_INTEGER, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 107, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp4 = icmp eq i32 %userlen, -1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %call = tail call i64 @strlen(i8* noundef nonnull %user) #8
  %conv = trunc i64 %call to i32
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %userlen.addr.0 = phi i32 [ %conv, %if.then5 ], [ %userlen, %if.end ]
  %cmp7 = icmp sgt i32 %userlen.addr.0, 64
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef 162, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.SXNET_add_id_INTEGER, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 132, i8* noundef null) #7
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %0 = load %struct.SXNET_st*, %struct.SXNET_st** %psx, align 8, !tbaa !4
  %cmp11 = icmp eq %struct.SXNET_st* %0, null
  br i1 %cmp11, label %if.then13, label %if.end22

if.then13:                                        ; preds = %if.end10
  %call14 = tail call %struct.SXNET_st* @SXNET_new() #6
  %cmp15 = icmp eq %struct.SXNET_st* %call14, null
  br i1 %cmp15, label %err, label %if.end18

if.end18:                                         ; preds = %if.then13
  %version = getelementptr inbounds %struct.SXNET_st, %struct.SXNET_st* %call14, i64 0, i32 0
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %version, align 8, !tbaa !13
  %call19 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef %1, i64 noundef 0) #7
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %err, label %if.end21

if.end21:                                         ; preds = %if.end18
  store %struct.SXNET_st* %call14, %struct.SXNET_st** %psx, align 8, !tbaa !4
  br label %if.end22

if.end22:                                         ; preds = %if.end10, %if.end21
  %sx.0 = phi %struct.SXNET_st* [ %call14, %if.end21 ], [ %0, %if.end10 ]
  %call23 = tail call %struct.asn1_string_st* @SXNET_get_id_INTEGER(%struct.SXNET_st* noundef nonnull %sx.0, %struct.asn1_string_st* noundef nonnull %zone) #6
  %tobool24.not = icmp eq %struct.asn1_string_st* %call23, null
  br i1 %tobool24.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end22
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef 174, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.SXNET_add_id_INTEGER, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 133, i8* noundef null) #7
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %call27 = tail call %struct.SXNET_ID_st* @SXNETID_new() #6
  %cmp28 = icmp eq %struct.SXNET_ID_st* %call27, null
  br i1 %cmp28, label %err, label %if.end31

if.end31:                                         ; preds = %if.end26
  %cmp32 = icmp eq i32 %userlen.addr.0, -1
  br i1 %cmp32, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end31
  %call35 = tail call i64 @strlen(i8* noundef nonnull %user) #8
  %conv36 = trunc i64 %call35 to i32
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end31
  %userlen.addr.1 = phi i32 [ %conv36, %if.then34 ], [ %userlen.addr.0, %if.end31 ]
  %user38 = getelementptr inbounds %struct.SXNET_ID_st, %struct.SXNET_ID_st* %call27, i64 0, i32 1
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %user38, align 8, !tbaa !18
  %call39 = tail call i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef %2, i8* noundef nonnull %user, i32 noundef %userlen.addr.1) #7
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err, label %if.end42

if.end42:                                         ; preds = %if.end37
  %ids = getelementptr inbounds %struct.SXNET_st, %struct.SXNET_st* %sx.0, i64 0, i32 1
  %3 = load %struct.stack_st_SXNETID*, %struct.stack_st_SXNETID** %ids, align 8, !tbaa !15
  %call43 = tail call fastcc %struct.stack_st* @ossl_check_SXNETID_sk_type(%struct.stack_st_SXNETID* noundef %3) #6
  %4 = bitcast %struct.SXNET_ID_st* %call27 to i8*
  %call45 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call43, i8* noundef nonnull %4) #7
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %err, label %if.end48

if.end48:                                         ; preds = %if.end42
  %zone49 = getelementptr inbounds %struct.SXNET_ID_st, %struct.SXNET_ID_st* %call27, i64 0, i32 0
  store %struct.asn1_string_st* %zone, %struct.asn1_string_st** %zone49, align 8, !tbaa !16
  br label %cleanup

err:                                              ; preds = %if.end42, %if.end37, %if.end26, %if.end18, %if.then13
  %sx.1 = phi %struct.SXNET_st* [ null, %if.then13 ], [ %sx.0, %if.end26 ], [ %sx.0, %if.end42 ], [ %sx.0, %if.end37 ], [ %call14, %if.end18 ]
  %id.0 = phi %struct.SXNET_ID_st* [ null, %if.then13 ], [ null, %if.end26 ], [ %call27, %if.end42 ], [ %call27, %if.end37 ], [ null, %if.end18 ]
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef 191, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.SXNET_add_id_INTEGER, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #7
  tail call void @SXNETID_free(%struct.SXNET_ID_st* noundef %id.0) #6
  tail call void @SXNET_free(%struct.SXNET_st* noundef %sx.1) #6
  store %struct.SXNET_st* null, %struct.SXNET_st** %psx, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end48, %if.then25, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then9 ], [ 0, %err ], [ 0, %if.then25 ], [ 1, %if.end48 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define i32 @SXNET_add_id_ulong(%struct.SXNET_st** noundef %psx, i64 noundef %lzone, i8* noundef %user, i32 noundef %userlen) local_unnamed_addr #1 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_INTEGER_new() #7
  %cmp = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef nonnull %call, i64 noundef %lzone) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef 136, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.SXNET_add_id_ulong, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #7
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %call) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call i32 @SXNET_add_id_INTEGER(%struct.SXNET_st** noundef %psx, %struct.asn1_string_st* noundef nonnull %call, i8* noundef %user, i32 noundef %userlen) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

declare %struct.asn1_string_st* @ASN1_INTEGER_new() local_unnamed_addr #2

declare i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #2

declare void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @SXNET_get_id_INTEGER(%struct.SXNET_st* nocapture noundef readonly %sx, %struct.asn1_string_st* noundef %zone) local_unnamed_addr #1 {
entry:
  %ids = getelementptr inbounds %struct.SXNET_st, %struct.SXNET_st* %sx, i64 0, i32 1
  %0 = load %struct.stack_st_SXNETID*, %struct.stack_st_SXNETID** %ids, align 8, !tbaa !15
  %call14 = tail call fastcc %struct.stack_st* @ossl_check_const_SXNETID_sk_type(%struct.stack_st_SXNETID* noundef %0) #6
  %call115 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call14) #7
  %cmp16 = icmp sgt i32 %call115, 0
  br i1 %cmp16, label %for.body, label %cleanup

for.cond:                                         ; preds = %for.body
  %1 = load %struct.stack_st_SXNETID*, %struct.stack_st_SXNETID** %ids, align 8, !tbaa !15
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_SXNETID_sk_type(%struct.stack_st_SXNETID* noundef %1) #6
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #7
  %cmp = icmp slt i32 %inc, %call1
  br i1 %cmp, label %for.body, label %cleanup, !llvm.loop !20

for.body:                                         ; preds = %entry, %for.cond
  %i.017 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %2 = load %struct.stack_st_SXNETID*, %struct.stack_st_SXNETID** %ids, align 8, !tbaa !15
  %call3 = tail call fastcc %struct.stack_st* @ossl_check_const_SXNETID_sk_type(%struct.stack_st_SXNETID* noundef %2) #6
  %call4 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call3, i32 noundef %i.017) #7
  %zone5 = bitcast i8* %call4 to %struct.asn1_string_st**
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %zone5, align 8, !tbaa !16
  %call6 = tail call i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef %3, %struct.asn1_string_st* noundef %zone) #7
  %tobool.not = icmp eq i32 %call6, 0
  %inc = add nuw nsw i32 %i.017, 1
  br i1 %tobool.not, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  %user = getelementptr inbounds i8, i8* %call4, i64 8
  %4 = bitcast i8* %user to %struct.asn1_string_st**
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %4, align 8, !tbaa !18
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %entry, %if.then
  %retval.0 = phi %struct.asn1_string_st* [ %5, %if.then ], [ null, %entry ], [ null, %for.cond ]
  ret %struct.asn1_string_st* %retval.0
}

declare i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_SXNETID_sk_type(%struct.stack_st_SXNETID* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_SXNETID* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @SXNET_get_id_asc(%struct.SXNET_st* nocapture noundef readonly %sx, i8* noundef %zone) local_unnamed_addr #1 {
entry:
  %call = tail call %struct.asn1_string_st* @s2i_ASN1_INTEGER(%struct.v3_ext_method* noundef null, i8* noundef %zone) #7
  %cmp = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef 204, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.SXNET_get_id_asc, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 131, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.asn1_string_st* @SXNET_get_id_INTEGER(%struct.SXNET_st* noundef %sx, %struct.asn1_string_st* noundef nonnull %call) #6
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.asn1_string_st* [ null, %if.then ], [ %call1, %if.end ]
  ret %struct.asn1_string_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @SXNET_get_id_ulong(%struct.SXNET_st* nocapture noundef readonly %sx, i64 noundef %lzone) local_unnamed_addr #1 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_INTEGER_new() #7
  %cmp = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef nonnull %call, i64 noundef %lzone) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef 219, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.SXNET_get_id_ulong, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #7
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %call) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call %struct.asn1_string_st* @SXNET_get_id_INTEGER(%struct.SXNET_st* noundef %sx, %struct.asn1_string_st* noundef nonnull %call) #6
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.asn1_string_st* [ null, %if.then ], [ %call2, %if.end ]
  ret %struct.asn1_string_st* %retval.0
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_SXNETID_sk_type(%struct.stack_st_SXNETID* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_SXNETID* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @ASN1_INTEGER_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_OCTET_STRING_it() #2

declare i32 @ASN1_INTEGER_get_int64(i64* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare i8* @i2s_ASN1_INTEGER(%struct.v3_ext_method* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ASN1_STRING_print(%struct.bio_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!11, !5, i64 8}
!11 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16}
!12 = !{!11, !5, i64 16}
!13 = !{!14, !5, i64 0}
!14 = !{!"SXNET_st", !5, i64 0, !5, i64 8}
!15 = !{!14, !5, i64 8}
!16 = !{!17, !5, i64 0}
!17 = !{!"SXNET_ID_st", !5, i64 0, !5, i64 8}
!18 = !{!17, !5, i64 8}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
