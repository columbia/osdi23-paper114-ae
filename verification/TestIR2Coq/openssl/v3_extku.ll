; ModuleID = 'crypto/x509/v3_extku.c'
source_filename = "crypto/x509/v3_extku.c"
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
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.stack_st = type opaque
%struct.asn1_object_st = type opaque
%struct.ASN1_VALUE_st = type opaque

@ossl_v3_ext_ku = local_unnamed_addr constant { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 126, i32 0, %struct.ASN1_ITEM_st* ()* @EXTENDED_KEY_USAGE_it, i8* ()* null, void (i8*)* null, i8* (i8*, i8**, i64)* null, i32 (i8*, i8**)* null, i8* (%struct.v3_ext_method*, i8*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* @i2v_EXTENDED_KEY_USAGE, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* @v2i_EXTENDED_KEY_USAGE, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, i8* null }, align 8
@ossl_v3_ocsp_accresp = local_unnamed_addr constant { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 368, i32 0, %struct.ASN1_ITEM_st* ()* @EXTENDED_KEY_USAGE_it, i8* ()* null, void (i8*)* null, i8* (i8*, i8**, i64)* null, i32 (i8*, i8**)* null, i8* (%struct.v3_ext_method*, i8*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* @i2v_EXTENDED_KEY_USAGE, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* @v2i_EXTENDED_KEY_USAGE, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, i8* null }, align 8
@EXTENDED_KEY_USAGE_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 -1, %struct.ASN1_TEMPLATE_st* bitcast ({ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }* @EXTENDED_KEY_USAGE_item_tt to %struct.ASN1_TEMPLATE_st*), i64 0, i8* null, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [19 x i8] c"EXTENDED_KEY_USAGE\00", align 1
@EXTENDED_KEY_USAGE_item_tt = internal constant { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4, i64 0, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it }, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"crypto/x509/v3_extku.c\00", align 1
@__func__.v2i_EXTENDED_KEY_USAGE = private unnamed_addr constant [23 x i8] c"v2i_EXTENDED_KEY_USAGE\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @EXTENDED_KEY_USAGE_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @EXTENDED_KEY_USAGE_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.stack_st_CONF_VALUE* @i2v_EXTENDED_KEY_USAGE(%struct.v3_ext_method* nocapture noundef readnone %method, i8* noundef %a, %struct.stack_st_CONF_VALUE* noundef %ext_list) #1 {
entry:
  %ext_list.addr = alloca %struct.stack_st_CONF_VALUE*, align 8
  %obj_tmp = alloca [80 x i8], align 16
  store %struct.stack_st_CONF_VALUE* %ext_list, %struct.stack_st_CONF_VALUE** %ext_list.addr, align 8, !tbaa !4
  %0 = bitcast i8* %a to %struct.stack_st_ASN1_OBJECT*
  %1 = getelementptr inbounds [80 x i8], [80 x i8]* %obj_tmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #4
  %call = call fastcc %struct.stack_st* @ossl_check_const_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef %0) #5
  %call113 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp14 = icmp sgt i32 %call113, 0
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %i.015 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %call3 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.015) #6
  %2 = bitcast i8* %call3 to %struct.asn1_object_st*
  %call4 = call i32 @i2t_ASN1_OBJECT(i8* noundef nonnull %1, i32 noundef 80, %struct.asn1_object_st* noundef %2) #6
  %call6 = call i32 @X509V3_add_value(i8* noundef null, i8* noundef nonnull %1, %struct.stack_st_CONF_VALUE** noundef nonnull %ext_list.addr) #6
  %inc = add nuw nsw i32 %i.015, 1
  %call1 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp = icmp slt i32 %inc, %call1
  br i1 %cmp, label %for.body, label %for.end.loopexit, !llvm.loop !8

for.end.loopexit:                                 ; preds = %for.body
  %.pre = load %struct.stack_st_CONF_VALUE*, %struct.stack_st_CONF_VALUE** %ext_list.addr, align 8, !tbaa !4
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %3 = phi %struct.stack_st_CONF_VALUE* [ %.pre, %for.end.loopexit ], [ %ext_list, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #4
  ret %struct.stack_st_CONF_VALUE* %3
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @v2i_EXTENDED_KEY_USAGE(%struct.v3_ext_method* nocapture noundef readnone %method, %struct.v3_ext_ctx* nocapture noundef readnone %ctx, %struct.stack_st_CONF_VALUE* noundef %nval) #1 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %nval) #5
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %call3 = tail call %struct.stack_st* @OPENSSL_sk_new_reserve(i32 (i8*, i8*)* noundef null, i32 noundef %call1) #6
  %0 = bitcast %struct.stack_st* %call3 to %struct.stack_st_ASN1_OBJECT*
  %cmp = icmp eq %struct.stack_st* %call3, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp543 = icmp sgt i32 %call1, 0
  br i1 %cmp543, label %for.body, label %for.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.v2i_EXTENDED_KEY_USAGE, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #6
  %call4 = tail call fastcc %struct.stack_st* @ossl_check_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef null) #5
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call4) #6
  br label %cleanup

for.body:                                         ; preds = %for.cond.preheader, %if.end16
  %i.044 = phi i32 [ %inc, %if.end16 ], [ 0, %for.cond.preheader ]
  %call7 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.044) #6
  %value = getelementptr inbounds i8, i8* %call7, i64 16
  %1 = bitcast i8* %value to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !10
  %tobool.not = icmp eq i8* %2, null
  br i1 %tobool.not, label %if.else, label %if.end10

if.else:                                          ; preds = %for.body
  %name = getelementptr inbounds i8, i8* %call7, i64 8
  %3 = bitcast i8* %name to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !12
  br label %if.end10

if.end10:                                         ; preds = %for.body, %if.else
  %extval.0 = phi i8* [ %4, %if.else ], [ %2, %for.body ]
  %call11 = tail call %struct.asn1_object_st* @OBJ_txt2obj(i8* noundef %extval.0, i32 noundef 0) #6
  %cmp12 = icmp eq %struct.asn1_object_st* %call11, null
  %call14 = tail call fastcc %struct.stack_st* @ossl_check_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef nonnull %0) #5
  br i1 %cmp12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end10
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call14, void (i8*)* noundef bitcast (void (%struct.asn1_object_st*)* @ASN1_OBJECT_free to void (i8*)*)) #6
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.v2i_EXTENDED_KEY_USAGE, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 110, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %extval.0) #6
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %5 = bitcast %struct.asn1_object_st* %call11 to i8*
  %call19 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call14, i8* noundef nonnull %5) #6
  %inc = add nuw nsw i32 %i.044, 1
  %exitcond.not = icmp eq i32 %inc, %call1
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !13

for.end:                                          ; preds = %if.end16, %for.cond.preheader
  %6 = bitcast %struct.stack_st* %call3 to i8*
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then13, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ null, %if.then13 ], [ %6, %for.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_ASN1_OBJECT* @d2i_EXTENDED_KEY_USAGE(%struct.stack_st_ASN1_OBJECT** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_OBJECT** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @EXTENDED_KEY_USAGE_it.local_it) #6
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.stack_st_ASN1_OBJECT*
  ret %struct.stack_st_ASN1_OBJECT* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_EXTENDED_KEY_USAGE(%struct.stack_st_ASN1_OBJECT* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_OBJECT* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @EXTENDED_KEY_USAGE_it.local_it) #6
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_ASN1_OBJECT* @EXTENDED_KEY_USAGE_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @EXTENDED_KEY_USAGE_it.local_it) #6
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.stack_st_ASN1_OBJECT*
  ret %struct.stack_st_ASN1_OBJECT* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @EXTENDED_KEY_USAGE_free(%struct.stack_st_ASN1_OBJECT* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_OBJECT* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @EXTENDED_KEY_USAGE_it.local_it) #6
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @ASN1_OBJECT_it() #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_OBJECT* %sk to %struct.stack_st*
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

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_OBJECT* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.asn1_object_st* @OBJ_txt2obj(i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

declare void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!11, !5, i64 16}
!11 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16}
!12 = !{!11, !5, i64 8}
!13 = distinct !{!13, !9}
