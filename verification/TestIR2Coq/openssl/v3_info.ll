; ModuleID = 'crypto/x509/v3_info.c'
source_filename = "crypto/x509/v3_info.c"
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
%struct.stack_st_ACCESS_DESCRIPTION = type opaque
%struct.stack_st = type opaque
%struct.GENERAL_NAME_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_object_st = type opaque
%struct.CONF_VALUE = type { i8*, i8*, i8* }
%struct.ACCESS_DESCRIPTION_st = type { %struct.asn1_object_st*, %struct.GENERAL_NAME_st* }
%struct.ASN1_VALUE_st = type opaque

@ossl_v3_info = local_unnamed_addr constant { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 177, i32 4, %struct.ASN1_ITEM_st* ()* @AUTHORITY_INFO_ACCESS_it, i8* ()* null, void (i8*)* null, i8* (i8*, i8**, i64)* null, i32 (i8*, i8**)* null, i8* (%struct.v3_ext_method*, i8*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* bitcast (%struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, %struct.stack_st_ACCESS_DESCRIPTION*, %struct.stack_st_CONF_VALUE*)* @i2v_AUTHORITY_INFO_ACCESS to %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*), i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* bitcast (%struct.stack_st_ACCESS_DESCRIPTION* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* @v2i_AUTHORITY_INFO_ACCESS to i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*), i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, i8* null }, align 8
@ossl_v3_sinfo = local_unnamed_addr constant { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 398, i32 4, %struct.ASN1_ITEM_st* ()* @AUTHORITY_INFO_ACCESS_it, i8* ()* null, void (i8*)* null, i8* (i8*, i8**, i64)* null, i32 (i8*, i8**)* null, i8* (%struct.v3_ext_method*, i8*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* bitcast (%struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, %struct.stack_st_ACCESS_DESCRIPTION*, %struct.stack_st_CONF_VALUE*)* @i2v_AUTHORITY_INFO_ACCESS to %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*), i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* bitcast (%struct.stack_st_ACCESS_DESCRIPTION* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* @v2i_AUTHORITY_INFO_ACCESS to i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*), i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, i8* null }, align 8
@ACCESS_DESCRIPTION_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @ACCESS_DESCRIPTION_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [19 x i8] c"ACCESS_DESCRIPTION\00", align 1
@AUTHORITY_INFO_ACCESS_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 -1, %struct.ASN1_TEMPLATE_st* bitcast ({ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }* @AUTHORITY_INFO_ACCESS_item_tt to %struct.ASN1_TEMPLATE_st*), i64 0, i8* null, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"AUTHORITY_INFO_ACCESS\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@ACCESS_DESCRIPTION_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @GENERAL_NAME_it }], align 16
@.str.5 = private unnamed_addr constant [13 x i8] c"GeneralNames\00", align 1
@AUTHORITY_INFO_ACCESS_item_tt = internal constant { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4, i64 0, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ACCESS_DESCRIPTION_it }, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"crypto/x509/v3_info.c\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%s - %s\00", align 1
@__func__.i2v_AUTHORITY_INFO_ACCESS = private unnamed_addr constant [26 x i8] c"i2v_AUTHORITY_INFO_ACCESS\00", align 1
@__func__.v2i_AUTHORITY_INFO_ACCESS = private unnamed_addr constant [26 x i8] c"v2i_AUTHORITY_INFO_ACCESS\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"value=%s\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @AUTHORITY_INFO_ACCESS_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @AUTHORITY_INFO_ACCESS_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.stack_st_CONF_VALUE* @i2v_AUTHORITY_INFO_ACCESS(%struct.v3_ext_method* noundef %method, %struct.stack_st_ACCESS_DESCRIPTION* noundef %ainfo, %struct.stack_st_CONF_VALUE* noundef %ret) #1 {
entry:
  %objtmp = alloca [80 x i8], align 16
  %0 = getelementptr inbounds [80 x i8], [80 x i8]* %objtmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #5
  %call = call fastcc %struct.stack_st* @ossl_check_const_ACCESS_DESCRIPTION_sk_type(%struct.stack_st_ACCESS_DESCRIPTION* noundef %ainfo) #6
  %call181 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #7
  %cmp82 = icmp sgt i32 %call181, 0
  br i1 %cmp82, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %tret.084 = phi %struct.stack_st_CONF_VALUE* [ %call4, %for.inc ], [ %ret, %entry ]
  %i.083 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %call3 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.083) #7
  %location = getelementptr inbounds i8, i8* %call3, i64 8
  %1 = bitcast i8* %location to %struct.GENERAL_NAME_st**
  %2 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %1, align 8, !tbaa !4
  %call4 = call %struct.stack_st_CONF_VALUE* @i2v_GENERAL_NAME(%struct.v3_ext_method* noundef %method, %struct.GENERAL_NAME_st* noundef %2, %struct.stack_st_CONF_VALUE* noundef %tret.084) #7
  %cmp5 = icmp eq %struct.stack_st_CONF_VALUE* %call4, null
  br i1 %cmp5, label %err, label %if.end

if.end:                                           ; preds = %for.body
  %call6 = call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef nonnull %call4) #6
  %call7 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call6, i32 noundef %i.083) #7
  %method8 = bitcast i8* %call3 to %struct.asn1_object_st**
  %3 = load %struct.asn1_object_st*, %struct.asn1_object_st** %method8, align 8, !tbaa !9
  %call9 = call i32 @i2t_ASN1_OBJECT(i8* noundef nonnull %0, i32 noundef 80, %struct.asn1_object_st* noundef %3) #7
  %call11 = call i64 @strlen(i8* noundef nonnull %0) #8
  %add = add i64 %call11, 3
  %name = getelementptr inbounds i8, i8* %call7, i64 8
  %4 = bitcast i8* %name to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !10
  %call12 = call i64 @strlen(i8* noundef %5) #8
  %add13 = add i64 %add, %call12
  %conv = shl i64 %add13, 32
  %sext = add i64 %conv, 4294967296
  %conv15 = ashr exact i64 %sext, 32
  %call16 = call i8* @CRYPTO_malloc(i64 noundef %conv15, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 82) #7
  %cmp17 = icmp eq i8* %call16, null
  br i1 %cmp17, label %err, label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i8*, i8** %4, align 8, !tbaa !10
  %call24 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %call16, i64 noundef %conv15, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* noundef nonnull %0, i8* noundef %6) #7
  %7 = load i8*, i8** %4, align 8, !tbaa !10
  call void @CRYPTO_free(i8* noundef %7, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 86) #7
  store i8* %call16, i8** %4, align 8, !tbaa !10
  %inc = add nuw nsw i32 %i.083, 1
  %call1 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #7
  %cmp = icmp slt i32 %inc, %call1
  br i1 %cmp, label %for.body, label %cleanup43, !llvm.loop !12

for.end:                                          ; preds = %entry
  %cmp27 = icmp eq %struct.stack_st_CONF_VALUE* %ret, null
  br i1 %cmp27, label %if.then31, label %cleanup43

if.then31:                                        ; preds = %for.end
  %call32 = call %struct.stack_st* @OPENSSL_sk_new_null() #7
  %8 = bitcast %struct.stack_st* %call32 to %struct.stack_st_CONF_VALUE*
  br label %cleanup43

err:                                              ; preds = %for.body, %if.end
  %tret.1.ph = phi %struct.stack_st_CONF_VALUE* [ %call4, %if.end ], [ %tret.084, %for.body ]
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 94, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.i2v_AUTHORITY_INFO_ACCESS, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #7
  %cmp34 = icmp eq %struct.stack_st_CONF_VALUE* %ret, null
  %cmp37 = icmp ne %struct.stack_st_CONF_VALUE* %tret.1.ph, null
  %or.cond50 = select i1 %cmp34, i1 %cmp37, i1 false
  br i1 %or.cond50, label %if.then39, label %cleanup43

if.then39:                                        ; preds = %err
  %call40 = call fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef nonnull %tret.1.ph) #6
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call40, void (i8*)* noundef bitcast (void (%struct.CONF_VALUE*)* @X509V3_conf_free to void (i8*)*)) #7
  br label %cleanup43

cleanup43:                                        ; preds = %for.inc, %err, %if.then39, %for.end, %if.then31
  %retval.0 = phi %struct.stack_st_CONF_VALUE* [ %8, %if.then31 ], [ %ret, %for.end ], [ null, %if.then39 ], [ null, %err ], [ %call4, %for.inc ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #5
  ret %struct.stack_st_CONF_VALUE* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.stack_st_ACCESS_DESCRIPTION* @v2i_AUTHORITY_INFO_ACCESS(%struct.v3_ext_method* noundef %method, %struct.v3_ext_ctx* noundef %ctx, %struct.stack_st_CONF_VALUE* noundef %nval) #1 {
entry:
  %ctmp = alloca %struct.CONF_VALUE, align 8
  %0 = bitcast %struct.CONF_VALUE* %ctmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #5
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %nval) #6
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #7
  %call3 = tail call %struct.stack_st* @OPENSSL_sk_new_reserve(i32 (i8*, i8*)* noundef null, i32 noundef %call1) #7
  %1 = bitcast %struct.stack_st* %call3 to %struct.stack_st_ACCESS_DESCRIPTION*
  %cmp = icmp eq %struct.stack_st* %call3, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp469 = icmp sgt i32 %call1, 0
  br i1 %cmp469, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %name18 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %ctmp, i64 0, i32 1
  %value19 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %ctmp, i64 0, i32 2
  br label %for.body

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 114, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.v2i_AUTHORITY_INFO_ACCESS, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

for.body:                                         ; preds = %for.body.lr.ph, %if.end34
  %i.070 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end34 ]
  %call6 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.070) #7
  %call7 = call %struct.ACCESS_DESCRIPTION_st* @ACCESS_DESCRIPTION_new() #6
  %cmp8 = icmp eq %struct.ACCESS_DESCRIPTION_st* %call7, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.body
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 120, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.v2i_AUTHORITY_INFO_ACCESS, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #7
  %.pre = call fastcc %struct.stack_st* @ossl_check_ACCESS_DESCRIPTION_sk_type(%struct.stack_st_ACCESS_DESCRIPTION* noundef nonnull %1) #6
  br label %err

if.end10:                                         ; preds = %for.body
  %call11 = call fastcc %struct.stack_st* @ossl_check_ACCESS_DESCRIPTION_sk_type(%struct.stack_st_ACCESS_DESCRIPTION* noundef nonnull %1) #6
  %2 = bitcast %struct.ACCESS_DESCRIPTION_st* %call7 to i8*
  %call13 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call11, i8* noundef nonnull %2) #7
  %name = getelementptr inbounds i8, i8* %call6, i64 8
  %3 = bitcast i8* %name to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !10
  %call14 = call i8* @strchr(i8* noundef %4, i32 noundef 59) #8
  %cmp15 = icmp eq i8* %call14, null
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end10
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 126, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.v2i_AUTHORITY_INFO_ACCESS, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 143, i8* noundef null) #7
  br label %err

if.end17:                                         ; preds = %if.end10
  %add.ptr = getelementptr inbounds i8, i8* %call14, i64 1
  store i8* %add.ptr, i8** %name18, align 8, !tbaa !10
  %value = getelementptr inbounds i8, i8* %call6, i64 16
  %5 = bitcast i8* %value to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !14
  store i8* %6, i8** %value19, align 8, !tbaa !14
  %location = getelementptr inbounds %struct.ACCESS_DESCRIPTION_st, %struct.ACCESS_DESCRIPTION_st* %call7, i64 0, i32 1
  %7 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %location, align 8, !tbaa !4
  %call20 = call %struct.GENERAL_NAME_st* @v2i_GENERAL_NAME_ex(%struct.GENERAL_NAME_st* noundef %7, %struct.v3_ext_method* noundef %method, %struct.v3_ext_ctx* noundef %ctx, %struct.CONF_VALUE* noundef nonnull %ctmp, i32 noundef 0) #7
  %tobool.not = icmp eq %struct.GENERAL_NAME_st* %call20, null
  br i1 %tobool.not, label %err, label %if.end22

if.end22:                                         ; preds = %if.end17
  %8 = load i8*, i8** %3, align 8, !tbaa !10
  %sub.ptr.lhs.cast = ptrtoint i8* %call14 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call25 = call i8* @CRYPTO_strndup(i8* noundef %8, i64 noundef %sub.ptr.sub, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 133) #7
  %cmp26 = icmp eq i8* %call25, null
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end22
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 134, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.v2i_AUTHORITY_INFO_ACCESS, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #7
  br label %err

if.end28:                                         ; preds = %if.end22
  %call29 = call %struct.asn1_object_st* @OBJ_txt2obj(i8* noundef nonnull %call25, i32 noundef 0) #7
  %method30 = getelementptr inbounds %struct.ACCESS_DESCRIPTION_st, %struct.ACCESS_DESCRIPTION_st* %call7, i64 0, i32 0
  store %struct.asn1_object_st* %call29, %struct.asn1_object_st** %method30, align 8, !tbaa !9
  %tobool32.not = icmp eq %struct.asn1_object_st* %call29, null
  br i1 %tobool32.not, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end28
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 139, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.v2i_AUTHORITY_INFO_ACCESS, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 119, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* noundef nonnull %call25) #7
  call void @CRYPTO_free(i8* noundef nonnull %call25, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 141) #7
  br label %err

if.end34:                                         ; preds = %if.end28
  call void @CRYPTO_free(i8* noundef nonnull %call25, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 144) #7
  %inc = add nuw nsw i32 %i.070, 1
  %exitcond.not = icmp eq i32 %inc, %call1
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !15

err:                                              ; preds = %if.end17, %if.then33, %if.then27, %if.then16, %if.then9
  %call35.pre-phi = phi %struct.stack_st* [ %call11, %if.then33 ], [ %call11, %if.then27 ], [ %call11, %if.then16 ], [ %.pre, %if.then9 ], [ %call11, %if.end17 ]
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call35.pre-phi, void (i8*)* noundef bitcast (void (%struct.ACCESS_DESCRIPTION_st*)* @ACCESS_DESCRIPTION_free to void (i8*)*)) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %for.cond.preheader, %err, %if.then
  %retval.0 = phi %struct.stack_st_ACCESS_DESCRIPTION* [ null, %if.then ], [ null, %err ], [ %1, %for.cond.preheader ], [ %1, %if.end34 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #5
  ret %struct.stack_st_ACCESS_DESCRIPTION* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ACCESS_DESCRIPTION_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ACCESS_DESCRIPTION_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ACCESS_DESCRIPTION_st* @d2i_ACCESS_DESCRIPTION(%struct.ACCESS_DESCRIPTION_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ACCESS_DESCRIPTION_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ACCESS_DESCRIPTION_it.local_it) #7
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ACCESS_DESCRIPTION_st*
  ret %struct.ACCESS_DESCRIPTION_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ACCESS_DESCRIPTION(%struct.ACCESS_DESCRIPTION_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ACCESS_DESCRIPTION_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ACCESS_DESCRIPTION_it.local_it) #7
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ACCESS_DESCRIPTION_st* @ACCESS_DESCRIPTION_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @ACCESS_DESCRIPTION_it.local_it) #7
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ACCESS_DESCRIPTION_st*
  ret %struct.ACCESS_DESCRIPTION_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @ACCESS_DESCRIPTION_free(%struct.ACCESS_DESCRIPTION_st* noundef %a) #1 {
entry:
  %0 = bitcast %struct.ACCESS_DESCRIPTION_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @ACCESS_DESCRIPTION_it.local_it) #7
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_ACCESS_DESCRIPTION* @d2i_AUTHORITY_INFO_ACCESS(%struct.stack_st_ACCESS_DESCRIPTION** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_ACCESS_DESCRIPTION** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @AUTHORITY_INFO_ACCESS_it.local_it) #7
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.stack_st_ACCESS_DESCRIPTION*
  ret %struct.stack_st_ACCESS_DESCRIPTION* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_AUTHORITY_INFO_ACCESS(%struct.stack_st_ACCESS_DESCRIPTION* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_ACCESS_DESCRIPTION* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @AUTHORITY_INFO_ACCESS_it.local_it) #7
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_ACCESS_DESCRIPTION* @AUTHORITY_INFO_ACCESS_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @AUTHORITY_INFO_ACCESS_it.local_it) #7
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.stack_st_ACCESS_DESCRIPTION*
  ret %struct.stack_st_ACCESS_DESCRIPTION* %0
}

; Function Attrs: noinline nounwind uwtable
define void @AUTHORITY_INFO_ACCESS_free(%struct.stack_st_ACCESS_DESCRIPTION* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_ACCESS_DESCRIPTION* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @AUTHORITY_INFO_ACCESS_it.local_it) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2a_ACCESS_DESCRIPTION(%struct.bio_st* noundef %bp, %struct.ACCESS_DESCRIPTION_st* nocapture noundef readonly %a) local_unnamed_addr #1 {
entry:
  %method = getelementptr inbounds %struct.ACCESS_DESCRIPTION_st, %struct.ACCESS_DESCRIPTION_st* %a, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %method, align 8, !tbaa !9
  %call = tail call i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef %bp, %struct.asn1_object_st* noundef %0) #7
  ret i32 2
}

declare i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @ASN1_OBJECT_it() #2

declare %struct.ASN1_ITEM_st* @GENERAL_NAME_it() #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_ACCESS_DESCRIPTION_sk_type(%struct.stack_st_ACCESS_DESCRIPTION* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_ACCESS_DESCRIPTION* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.stack_st_CONF_VALUE* @i2v_GENERAL_NAME(%struct.v3_ext_method* noundef, %struct.GENERAL_NAME_st* noundef, %struct.stack_st_CONF_VALUE* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @i2t_ASN1_OBJECT(i8* noundef, i32 noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #4

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509V3_conf_free(%struct.CONF_VALUE* noundef) #2

declare %struct.stack_st* @OPENSSL_sk_new_reserve(i32 (i8*, i8*)* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_ACCESS_DESCRIPTION_sk_type(%struct.stack_st_ACCESS_DESCRIPTION* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_ACCESS_DESCRIPTION* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #4

declare %struct.GENERAL_NAME_st* @v2i_GENERAL_NAME_ex(%struct.GENERAL_NAME_st* noundef, %struct.v3_ext_method* noundef, %struct.v3_ext_ctx* noundef, %struct.CONF_VALUE* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_strndup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.asn1_object_st* @OBJ_txt2obj(i8* noundef, i32 noundef) local_unnamed_addr #2

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
!4 = !{!5, !6, i64 8}
!5 = !{!"ACCESS_DESCRIPTION_st", !6, i64 0, !6, i64 8}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 0}
!10 = !{!11, !6, i64 8}
!11 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!11, !6, i64 16}
!15 = distinct !{!15, !13}
