; ModuleID = 'crypto/x509/v3_tlsf.c'
source_filename = "crypto/x509/v3_tlsf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.v3_ext_method = type { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, {}*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* }
%struct.stack_st_CONF_VALUE = type opaque
%struct.v3_ext_ctx = type { i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_req_st*, %struct.X509_crl_st*, %struct.X509V3_CONF_METHOD_st*, i8*, %struct.evp_pkey_st* }
%struct.x509_st = type opaque
%struct.X509_req_st = type opaque
%struct.X509_crl_st = type opaque
%struct.X509V3_CONF_METHOD_st = type { i8* (i8*, i8*, i8*)*, %struct.stack_st_CONF_VALUE* (i8*, i8*)*, void (i8*, i8*)*, void (i8*, %struct.stack_st_CONF_VALUE*)* }
%struct.evp_pkey_st = type opaque
%struct.bio_st = type opaque
%struct.TLS_FEATURE_NAME = type { i64, i8* }
%struct.stack_st_ASN1_INTEGER = type opaque
%struct.ASN1_VALUE_st = type opaque
%struct.stack_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }

@ossl_v3_tls_feature = local_unnamed_addr constant { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 1020, i32 0, %struct.ASN1_ITEM_st* ()* @TLS_FEATURE_it, i8* ()* null, void (i8*)* null, i8* (i8*, i8**, i64)* null, i32 (i8*, i8**)* null, i8* (%struct.v3_ext_method*, i8*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* bitcast (%struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, %struct.stack_st_ASN1_INTEGER*, %struct.stack_st_CONF_VALUE*)* @i2v_TLS_FEATURE to %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*), i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* bitcast (%struct.stack_st_ASN1_INTEGER* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* @v2i_TLS_FEATURE to i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*), i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, i8* null }, align 8
@TLS_FEATURE_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 -1, %struct.ASN1_TEMPLATE_st* @TLS_FEATURE_item_tt, i64 0, i8* null, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0) }, align 8
@TLS_FEATURE_item_tt = internal constant %struct.ASN1_TEMPLATE_st { i64 4, i64 0, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, align 8
@.str = private unnamed_addr constant [12 x i8] c"TLS_FEATURE\00", align 1
@tls_feature_tbl = internal unnamed_addr constant [2 x %struct.TLS_FEATURE_NAME] [%struct.TLS_FEATURE_NAME { i64 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0) }, %struct.TLS_FEATURE_NAME { i64 17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0) }], align 16
@.str.1 = private unnamed_addr constant [15 x i8] c"status_request\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"status_request_v2\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"crypto/x509/v3_tlsf.c\00", align 1
@__func__.v2i_TLS_FEATURE = private unnamed_addr constant [16 x i8] c"v2i_TLS_FEATURE\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"name=\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c", value=\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_ASN1_INTEGER* @TLS_FEATURE_new() local_unnamed_addr #0 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @TLS_FEATURE_it.local_it) #6
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.stack_st_ASN1_INTEGER*
  ret %struct.stack_st_ASN1_INTEGER* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal nonnull %struct.ASN1_ITEM_st* @TLS_FEATURE_it() #2 {
entry:
  ret %struct.ASN1_ITEM_st* @TLS_FEATURE_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define void @TLS_FEATURE_free(%struct.stack_st_ASN1_INTEGER* noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_INTEGER* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @TLS_FEATURE_it.local_it) #6
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.stack_st_CONF_VALUE* @i2v_TLS_FEATURE(%struct.v3_ext_method* nocapture noundef readnone %method, %struct.stack_st_ASN1_INTEGER* noundef %tls_feature, %struct.stack_st_CONF_VALUE* noundef %ext_list) #0 {
entry:
  %ext_list.addr = alloca %struct.stack_st_CONF_VALUE*, align 8
  store %struct.stack_st_CONF_VALUE* %ext_list, %struct.stack_st_CONF_VALUE** %ext_list.addr, align 8, !tbaa !4
  %call = call fastcc %struct.stack_st* @ossl_check_const_ASN1_INTEGER_sk_type(%struct.stack_st_ASN1_INTEGER* noundef %tls_feature) #7
  %call132 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp33 = icmp sgt i32 %call132, 0
  br i1 %cmp33, label %for.body, label %for.end17

for.body:                                         ; preds = %entry, %for.inc15
  %i.034 = phi i32 [ %inc16, %for.inc15 ], [ 0, %entry ]
  %call3 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.034) #6
  %0 = bitcast i8* %call3 to %struct.asn1_string_st*
  %call4 = call i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef %0) #6
  switch i64 %call4, label %for.inc.1 [
    i64 5, label %if.then10
    i64 17, label %if.then10.fold.split
  ]

for.inc.1:                                        ; preds = %for.body
  %call13 = call i32 @X509V3_add_value_int(i8* noundef null, %struct.asn1_string_st* noundef %0, %struct.stack_st_CONF_VALUE** noundef nonnull %ext_list.addr) #6
  br label %for.inc15

if.then10.fold.split:                             ; preds = %for.body
  br label %if.then10

if.then10:                                        ; preds = %for.body, %if.then10.fold.split
  %j.031.lcssa = phi i64 [ 0, %for.body ], [ 1, %if.then10.fold.split ]
  %name = getelementptr inbounds [2 x %struct.TLS_FEATURE_NAME], [2 x %struct.TLS_FEATURE_NAME]* @tls_feature_tbl, i64 0, i64 %j.031.lcssa, i32 1
  %1 = load i8*, i8** %name, align 8, !tbaa !8
  %call12 = call i32 @X509V3_add_value(i8* noundef null, i8* noundef %1, %struct.stack_st_CONF_VALUE** noundef nonnull %ext_list.addr) #6
  br label %for.inc15

for.inc15:                                        ; preds = %if.then10, %for.inc.1
  %inc16 = add nuw nsw i32 %i.034, 1
  %call1 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp = icmp slt i32 %inc16, %call1
  br i1 %cmp, label %for.body, label %for.end17.loopexit, !llvm.loop !11

for.end17.loopexit:                               ; preds = %for.inc15
  %.pre = load %struct.stack_st_CONF_VALUE*, %struct.stack_st_CONF_VALUE** %ext_list.addr, align 8, !tbaa !4
  br label %for.end17

for.end17:                                        ; preds = %for.end17.loopexit, %entry
  %2 = phi %struct.stack_st_CONF_VALUE* [ %.pre, %for.end17.loopexit ], [ %ext_list, %entry ]
  ret %struct.stack_st_CONF_VALUE* %2
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.stack_st_ASN1_INTEGER* @v2i_TLS_FEATURE(%struct.v3_ext_method* nocapture noundef readnone %method, %struct.v3_ext_ctx* nocapture noundef readnone %ctx, %struct.stack_st_CONF_VALUE* noundef %nval) #0 {
entry:
  %endptr = alloca i8*, align 8
  %0 = bitcast i8** %endptr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #6
  %1 = bitcast %struct.stack_st* %call to %struct.stack_st_ASN1_INTEGER*
  %cmp = icmp eq %struct.stack_st* %call, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call1 = call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %nval) #7
  %call295 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #6
  %cmp396 = icmp sgt i32 %call295, 0
  br i1 %cmp396, label %for.body, label %cleanup

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.v2i_TLS_FEATURE, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

for.cond:                                         ; preds = %lor.lhs.false43
  %call2 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #6
  %cmp3 = icmp slt i32 %inc52, %call2
  br i1 %cmp3, label %for.body, label %cleanup, !llvm.loop !13

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.097 = phi i32 [ %inc52, %for.cond ], [ 0, %for.cond.preheader ]
  %call5 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call1, i32 noundef %i.097) #6
  %value = getelementptr inbounds i8, i8* %call5, i64 16
  %2 = bitcast i8* %value to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !14
  %tobool.not = icmp eq i8* %3, null
  br i1 %tobool.not, label %if.else, label %if.end8

if.else:                                          ; preds = %for.body
  %name = getelementptr inbounds i8, i8* %call5, i64 8
  %4 = bitcast i8* %name to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !16
  br label %if.end8

if.end8:                                          ; preds = %for.body, %if.else
  %extval.0 = phi i8* [ %5, %if.else ], [ %3, %for.body ]
  %call13 = call i32 @strcasecmp(i8* noundef %extval.0, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)) #9
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then18, label %for.inc

for.inc:                                          ; preds = %if.end8
  %call13.1 = call i32 @strcasecmp(i8* noundef %extval.0, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0)) #9
  %cmp14.1 = icmp eq i32 %call13.1, 0
  br i1 %cmp14.1, label %if.then18, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %call21 = call i64 @strtol(i8* noundef %extval.0, i8** noundef nonnull %endptr, i32 noundef 10) #6
  %6 = load i8*, i8** %endptr, align 8, !tbaa !4
  %7 = load i8, i8* %6, align 1, !tbaa !17
  %cmp22.not = icmp eq i8 %7, 0
  br i1 %cmp22.not, label %lor.lhs.false, label %if.then32

if.then18:                                        ; preds = %for.inc, %if.end8
  %j.094.lcssa = phi i64 [ 0, %if.end8 ], [ 1, %for.inc ]
  %num = getelementptr inbounds [2 x %struct.TLS_FEATURE_NAME], [2 x %struct.TLS_FEATURE_NAME]* @tls_feature_tbl, i64 0, i64 %j.094.lcssa, i32 0
  %8 = load i64, i64* %num, align 16, !tbaa !18
  br label %if.end36

lor.lhs.false:                                    ; preds = %for.inc.1
  %cmp24 = icmp eq i8* %extval.0, %6
  %cmp27 = icmp slt i64 %call21, 0
  %or.cond = select i1 %cmp24, i1 true, i1 %cmp27
  %cmp30 = icmp sgt i64 %call21, 65535
  %or.cond63 = select i1 %or.cond, i1 true, i1 %cmp30
  br i1 %or.cond63, label %if.then32, label %if.end36

if.then32:                                        ; preds = %lor.lhs.false, %for.inc.1
  %9 = bitcast i8* %value to i8**
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 noundef 119, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.v2i_TLS_FEATURE, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 143, i8* noundef null) #6
  %name33 = getelementptr inbounds i8, i8* %call5, i64 8
  %10 = bitcast i8* %name33 to i8**
  %11 = load i8*, i8** %10, align 8, !tbaa !16
  %12 = load i8*, i8** %9, align 8, !tbaa !14
  call void (i32, ...) @ERR_add_error_data(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* noundef %11, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* noundef %12) #6
  br label %err

if.end36:                                         ; preds = %lor.lhs.false, %if.then18
  %tlsextid.0 = phi i64 [ %8, %if.then18 ], [ %call21, %lor.lhs.false ]
  %call37 = call %struct.asn1_string_st* @ASN1_INTEGER_new() #6
  %cmp38 = icmp eq %struct.asn1_string_st* %call37, null
  br i1 %cmp38, label %if.then49, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %if.end36
  %call41 = call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef nonnull %call37, i64 noundef %tlsextid.0) #6
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then49, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %lor.lhs.false40
  %call44 = call fastcc %struct.stack_st* @ossl_check_ASN1_INTEGER_sk_type(%struct.stack_st_ASN1_INTEGER* noundef nonnull %1) #7
  %13 = bitcast %struct.asn1_string_st* %call37 to i8*
  %call46 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call44, i8* noundef nonnull %13) #6
  %cmp47 = icmp slt i32 %call46, 1
  %inc52 = add nuw nsw i32 %i.097, 1
  br i1 %cmp47, label %if.then49, label %for.cond

if.then49:                                        ; preds = %lor.lhs.false43, %lor.lhs.false40, %if.end36
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 noundef 128, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.v2i_TLS_FEATURE, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #6
  br label %err

err:                                              ; preds = %if.then49, %if.then32
  %ai.1 = phi %struct.asn1_string_st* [ %call37, %if.then49 ], [ null, %if.then32 ]
  %call54 = call fastcc %struct.stack_st* @ossl_check_ASN1_INTEGER_sk_type(%struct.stack_st_ASN1_INTEGER* noundef nonnull %1) #7
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call54, void (i8*)* noundef bitcast (void (%struct.asn1_string_st*)* @ASN1_INTEGER_free to void (i8*)*)) #6
  call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %ai.1) #6
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %for.cond.preheader, %err, %if.then
  %retval.0 = phi %struct.stack_st_ASN1_INTEGER* [ null, %if.then ], [ null, %err ], [ %1, %for.cond.preheader ], [ %1, %for.cond ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret %struct.stack_st_ASN1_INTEGER* %retval.0
}

declare %struct.ASN1_ITEM_st* @ASN1_INTEGER_it() #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_ASN1_INTEGER_sk_type(%struct.stack_st_ASN1_INTEGER* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_INTEGER* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

declare i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare i32 @X509V3_add_value(i8* noundef, i8* noundef, %struct.stack_st_CONF_VALUE** noundef) local_unnamed_addr #1

declare i32 @X509V3_add_value_int(i8* noundef, %struct.asn1_string_st* noundef, %struct.stack_st_CONF_VALUE** noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @strtol(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #5

declare void @ERR_add_error_data(i32 noundef, ...) local_unnamed_addr #1

declare %struct.asn1_string_st* @ASN1_INTEGER_new() local_unnamed_addr #1

declare i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_ASN1_INTEGER_sk_type(%struct.stack_st_ASN1_INTEGER* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_INTEGER* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #1

declare void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!8 = !{!9, !5, i64 8}
!9 = !{!"", !10, i64 0, !5, i64 8}
!10 = !{!"long", !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = !{!15, !5, i64 16}
!15 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16}
!16 = !{!15, !5, i64 8}
!17 = !{!6, !6, i64 0}
!18 = !{!9, !10, i64 0}
