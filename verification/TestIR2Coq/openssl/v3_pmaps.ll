; ModuleID = 'crypto/x509/v3_pmaps.c'
source_filename = "crypto/x509/v3_pmaps.c"
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
%struct.stack_st_POLICY_MAPPING = type opaque
%struct.stack_st = type opaque
%struct.asn1_object_st = type opaque
%struct.POLICY_MAPPING_st = type { %struct.asn1_object_st*, %struct.asn1_object_st* }
%struct.ASN1_VALUE_st = type opaque

@ossl_v3_policy_mappings = local_unnamed_addr constant { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 747, i32 0, %struct.ASN1_ITEM_st* ()* @POLICY_MAPPINGS_it, i8* ()* null, void (i8*)* null, i8* (i8*, i8**, i64)* null, i32 (i8*, i8**)* null, i8* (%struct.v3_ext_method*, i8*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* @i2v_POLICY_MAPPINGS, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* @v2i_POLICY_MAPPINGS, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, i8* null }, align 8
@POLICY_MAPPING_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @POLICY_MAPPING_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [15 x i8] c"POLICY_MAPPING\00", align 1
@POLICY_MAPPINGS_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 -1, %struct.ASN1_TEMPLATE_st* bitcast ({ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }* @POLICY_MAPPINGS_item_tt to %struct.ASN1_TEMPLATE_st*), i64 0, i8* null, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"POLICY_MAPPINGS\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"issuerDomainPolicy\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"subjectDomainPolicy\00", align 1
@POLICY_MAPPING_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it }], align 16
@POLICY_MAPPINGS_item_tt = internal constant { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4, i64 0, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @POLICY_MAPPING_it }, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"crypto/x509/v3_pmaps.c\00", align 1
@__func__.v2i_POLICY_MAPPINGS = private unnamed_addr constant [20 x i8] c"v2i_POLICY_MAPPINGS\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @POLICY_MAPPINGS_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @POLICY_MAPPINGS_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.stack_st_CONF_VALUE* @i2v_POLICY_MAPPINGS(%struct.v3_ext_method* nocapture noundef readnone %method, i8* noundef %a, %struct.stack_st_CONF_VALUE* noundef %ext_list) #1 {
entry:
  %ext_list.addr = alloca %struct.stack_st_CONF_VALUE*, align 8
  %obj_tmp1 = alloca [80 x i8], align 16
  %obj_tmp2 = alloca [80 x i8], align 16
  store %struct.stack_st_CONF_VALUE* %ext_list, %struct.stack_st_CONF_VALUE** %ext_list.addr, align 8, !tbaa !4
  %0 = bitcast i8* %a to %struct.stack_st_POLICY_MAPPING*
  %1 = getelementptr inbounds [80 x i8], [80 x i8]* %obj_tmp1, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #4
  %2 = getelementptr inbounds [80 x i8], [80 x i8]* %obj_tmp2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %2) #4
  %call = call fastcc %struct.stack_st* @ossl_check_const_POLICY_MAPPING_sk_type(%struct.stack_st_POLICY_MAPPING* noundef %0) #5
  %call117 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp18 = icmp sgt i32 %call117, 0
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %i.019 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %call3 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.019) #6
  %issuerDomainPolicy = bitcast i8* %call3 to %struct.asn1_object_st**
  %3 = load %struct.asn1_object_st*, %struct.asn1_object_st** %issuerDomainPolicy, align 8, !tbaa !8
  %call4 = call i32 @i2t_ASN1_OBJECT(i8* noundef nonnull %1, i32 noundef 80, %struct.asn1_object_st* noundef %3) #6
  %subjectDomainPolicy = getelementptr inbounds i8, i8* %call3, i64 8
  %4 = bitcast i8* %subjectDomainPolicy to %struct.asn1_object_st**
  %5 = load %struct.asn1_object_st*, %struct.asn1_object_st** %4, align 8, !tbaa !10
  %call6 = call i32 @i2t_ASN1_OBJECT(i8* noundef nonnull %2, i32 noundef 80, %struct.asn1_object_st* noundef %5) #6
  %call9 = call i32 @X509V3_add_value(i8* noundef nonnull %1, i8* noundef nonnull %2, %struct.stack_st_CONF_VALUE** noundef nonnull %ext_list.addr) #6
  %inc = add nuw nsw i32 %i.019, 1
  %call1 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp = icmp slt i32 %inc, %call1
  br i1 %cmp, label %for.body, label %for.end.loopexit, !llvm.loop !11

for.end.loopexit:                                 ; preds = %for.body
  %.pre = load %struct.stack_st_CONF_VALUE*, %struct.stack_st_CONF_VALUE** %ext_list.addr, align 8, !tbaa !4
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %6 = phi %struct.stack_st_CONF_VALUE* [ %.pre, %for.end.loopexit ], [ %ext_list, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #4
  ret %struct.stack_st_CONF_VALUE* %6
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @v2i_POLICY_MAPPINGS(%struct.v3_ext_method* nocapture noundef readnone %method, %struct.v3_ext_ctx* nocapture noundef readnone %ctx, %struct.stack_st_CONF_VALUE* noundef %nval) #1 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %nval) #5
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %call3 = tail call %struct.stack_st* @OPENSSL_sk_new_reserve(i32 (i8*, i8*)* noundef null, i32 noundef %call1) #6
  %0 = bitcast %struct.stack_st* %call3 to %struct.stack_st_POLICY_MAPPING*
  %cmp = icmp eq %struct.stack_st* %call3, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp467 = icmp sgt i32 %call1, 0
  br i1 %cmp467, label %for.body, label %for.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.v2i_POLICY_MAPPINGS, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

for.body:                                         ; preds = %for.cond.preheader, %if.end24
  %i.068 = phi i32 [ %inc, %if.end24 ], [ 0, %for.cond.preheader ]
  %call6 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.068) #6
  %value = getelementptr inbounds i8, i8* %call6, i64 16
  %1 = bitcast i8* %value to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !13
  %tobool.not = icmp eq i8* %2, null
  br i1 %tobool.not, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %name = getelementptr inbounds i8, i8* %call6, i64 8
  %3 = bitcast i8* %name to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !15
  %tobool7.not = icmp eq i8* %4, null
  br i1 %tobool7.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %lor.lhs.false, %for.body
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.v2i_POLICY_MAPPINGS, i64 0, i64 0)) #6
  %name9 = getelementptr inbounds i8, i8* %call6, i64 8
  %5 = bitcast i8* %name9 to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !15
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 110, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* noundef %6) #6
  br label %err

if.end10:                                         ; preds = %lor.lhs.false
  %call12 = tail call %struct.asn1_object_st* @OBJ_txt2obj(i8* noundef nonnull %4, i32 noundef 0) #6
  %7 = load i8*, i8** %1, align 8, !tbaa !13
  %call14 = tail call %struct.asn1_object_st* @OBJ_txt2obj(i8* noundef %7, i32 noundef 0) #6
  %tobool15 = icmp ne %struct.asn1_object_st* %call12, null
  %tobool17 = icmp ne %struct.asn1_object_st* %call14, null
  %or.cond = select i1 %tobool15, i1 %tobool17, i1 false
  br i1 %or.cond, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end10
  %8 = bitcast i8* %name to i8**
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.v2i_POLICY_MAPPINGS, i64 0, i64 0)) #6
  %9 = load i8*, i8** %8, align 8, !tbaa !15
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 110, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* noundef %9) #6
  br label %err

if.end20:                                         ; preds = %if.end10
  %call21 = tail call %struct.POLICY_MAPPING_st* @POLICY_MAPPING_new() #5
  %cmp22 = icmp eq %struct.POLICY_MAPPING_st* %call21, null
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 noundef 96, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.v2i_POLICY_MAPPINGS, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #6
  br label %err

if.end24:                                         ; preds = %if.end20
  %issuerDomainPolicy = getelementptr inbounds %struct.POLICY_MAPPING_st, %struct.POLICY_MAPPING_st* %call21, i64 0, i32 0
  store %struct.asn1_object_st* %call12, %struct.asn1_object_st** %issuerDomainPolicy, align 8, !tbaa !8
  %subjectDomainPolicy = getelementptr inbounds %struct.POLICY_MAPPING_st, %struct.POLICY_MAPPING_st* %call21, i64 0, i32 1
  store %struct.asn1_object_st* %call14, %struct.asn1_object_st** %subjectDomainPolicy, align 8, !tbaa !10
  %call25 = tail call fastcc %struct.stack_st* @ossl_check_POLICY_MAPPING_sk_type(%struct.stack_st_POLICY_MAPPING* noundef nonnull %0) #5
  %10 = bitcast %struct.POLICY_MAPPING_st* %call21 to i8*
  %call27 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call25, i8* noundef nonnull %10) #6
  %inc = add nuw nsw i32 %i.068, 1
  %exitcond.not = icmp eq i32 %inc, %call1
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !16

for.end:                                          ; preds = %if.end24, %for.cond.preheader
  %11 = bitcast %struct.stack_st* %call3 to i8*
  br label %cleanup

err:                                              ; preds = %if.then23, %if.then18, %if.then8
  %obj2.1 = phi %struct.asn1_object_st* [ %call14, %if.then23 ], [ %call14, %if.then18 ], [ null, %if.then8 ]
  %obj1.1 = phi %struct.asn1_object_st* [ %call12, %if.then23 ], [ %call12, %if.then18 ], [ null, %if.then8 ]
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %obj1.1) #6
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %obj2.1) #6
  %call28 = tail call fastcc %struct.stack_st* @ossl_check_POLICY_MAPPING_sk_type(%struct.stack_st_POLICY_MAPPING* noundef nonnull %0) #5
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call28, void (i8*)* noundef bitcast (void (%struct.POLICY_MAPPING_st*)* @POLICY_MAPPING_free to void (i8*)*)) #6
  br label %cleanup

cleanup:                                          ; preds = %err, %for.end, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ null, %err ], [ %11, %for.end ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @POLICY_MAPPING_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @POLICY_MAPPING_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.POLICY_MAPPING_st* @POLICY_MAPPING_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @POLICY_MAPPING_it.local_it) #6
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.POLICY_MAPPING_st*
  ret %struct.POLICY_MAPPING_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @POLICY_MAPPING_free(%struct.POLICY_MAPPING_st* noundef %a) #1 {
entry:
  %0 = bitcast %struct.POLICY_MAPPING_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @POLICY_MAPPING_it.local_it) #6
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @ASN1_OBJECT_it() #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_POLICY_MAPPING_sk_type(%struct.stack_st_POLICY_MAPPING* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_POLICY_MAPPING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @i2t_ASN1_OBJECT(i8* noundef, i32 noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #2

declare i32 @X509V3_add_value(i8* noundef, i8* noundef, %struct.stack_st_CONF_VALUE** noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.stack_st* @OPENSSL_sk_new_reserve(i32 (i8*, i8*)* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare %struct.asn1_object_st* @OBJ_txt2obj(i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_POLICY_MAPPING_sk_type(%struct.stack_st_POLICY_MAPPING* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_POLICY_MAPPING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }

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
!8 = !{!9, !5, i64 0}
!9 = !{!"POLICY_MAPPING_st", !5, i64 0, !5, i64 8}
!10 = !{!9, !5, i64 8}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !5, i64 16}
!14 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16}
!15 = !{!14, !5, i64 8}
!16 = distinct !{!16, !12}
