; ModuleID = 'crypto/x509/v3_pcons.c'
source_filename = "crypto/x509/v3_pcons.c"
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
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.POLICY_CONSTRAINTS_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.stack_st = type opaque
%struct.CONF_VALUE = type { i8*, i8*, i8* }
%struct.ASN1_VALUE_st = type opaque

@ossl_v3_policy_constraints = local_unnamed_addr constant { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 401, i32 0, %struct.ASN1_ITEM_st* ()* @POLICY_CONSTRAINTS_it, i8* ()* null, void (i8*)* null, i8* (i8*, i8**, i64)* null, i32 (i8*, i8**)* null, i8* (%struct.v3_ext_method*, i8*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* @i2v_POLICY_CONSTRAINTS, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* @v2i_POLICY_CONSTRAINTS, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, i8* null }, align 8
@POLICY_CONSTRAINTS_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @POLICY_CONSTRAINTS_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [19 x i8] c"POLICY_CONSTRAINTS\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"requireExplicitPolicy\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"inhibitPolicyMapping\00", align 1
@POLICY_CONSTRAINTS_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 137, i64 0, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 137, i64 1, i64 8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }], align 16
@.str.4 = private unnamed_addr constant [24 x i8] c"Require Explicit Policy\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Inhibit Policy Mapping\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"crypto/x509/v3_pcons.c\00", align 1
@__func__.v2i_POLICY_CONSTRAINTS = private unnamed_addr constant [23 x i8] c"v2i_POLICY_CONSTRAINTS\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @POLICY_CONSTRAINTS_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @POLICY_CONSTRAINTS_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.stack_st_CONF_VALUE* @i2v_POLICY_CONSTRAINTS(%struct.v3_ext_method* nocapture noundef readnone %method, i8* nocapture noundef readonly %a, %struct.stack_st_CONF_VALUE* noundef %extlist) #1 {
entry:
  %extlist.addr = alloca %struct.stack_st_CONF_VALUE*, align 8
  store %struct.stack_st_CONF_VALUE* %extlist, %struct.stack_st_CONF_VALUE** %extlist.addr, align 8, !tbaa !4
  %requireExplicitPolicy = bitcast i8* %a to %struct.asn1_string_st**
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %requireExplicitPolicy, align 8, !tbaa !8
  %call = call i32 @X509V3_add_value_int(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), %struct.asn1_string_st* noundef %0, %struct.stack_st_CONF_VALUE** noundef nonnull %extlist.addr) #4
  %inhibitPolicyMapping = getelementptr inbounds i8, i8* %a, i64 8
  %1 = bitcast i8* %inhibitPolicyMapping to %struct.asn1_string_st**
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %1, align 8, !tbaa !10
  %call1 = call i32 @X509V3_add_value_int(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), %struct.asn1_string_st* noundef %2, %struct.stack_st_CONF_VALUE** noundef nonnull %extlist.addr) #4
  %3 = load %struct.stack_st_CONF_VALUE*, %struct.stack_st_CONF_VALUE** %extlist.addr, align 8, !tbaa !4
  ret %struct.stack_st_CONF_VALUE* %3
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @v2i_POLICY_CONSTRAINTS(%struct.v3_ext_method* nocapture noundef readnone %method, %struct.v3_ext_ctx* nocapture noundef readnone %ctx, %struct.stack_st_CONF_VALUE* noundef %values) #1 {
entry:
  %call = tail call %struct.POLICY_CONSTRAINTS_st* @POLICY_CONSTRAINTS_new() #5
  %cmp = icmp eq %struct.POLICY_CONSTRAINTS_st* %call, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %values) #5
  %call248 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #4
  %cmp349 = icmp sgt i32 %call248, 0
  br i1 %cmp349, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %inhibitPolicyMapping = getelementptr inbounds %struct.POLICY_CONSTRAINTS_st, %struct.POLICY_CONSTRAINTS_st* %call, i64 0, i32 1
  %requireExplicitPolicy = getelementptr inbounds %struct.POLICY_CONSTRAINTS_st, %struct.POLICY_CONSTRAINTS_st* %call, i64 0, i32 0
  br label %for.body

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.v2i_POLICY_CONSTRAINTS, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.050 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %call5 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call1, i32 noundef %i.050) #4
  %0 = bitcast i8* %call5 to %struct.CONF_VALUE*
  %name = getelementptr inbounds i8, i8* %call5, i64 8
  %1 = bitcast i8* %name to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !11
  %call6 = tail call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %for.body
  %call9 = tail call i32 @X509V3_get_value_int(%struct.CONF_VALUE* noundef nonnull %0, %struct.asn1_string_st** noundef nonnull %requireExplicitPolicy) #4
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %err, label %for.inc

if.else:                                          ; preds = %for.body
  %call13 = tail call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)) #6
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.else20

if.then15:                                        ; preds = %if.else
  %call16 = tail call i32 @X509V3_get_value_int(%struct.CONF_VALUE* noundef nonnull %0, %struct.asn1_string_st** noundef nonnull %inhibitPolicyMapping) #4
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %for.inc

if.else20:                                        ; preds = %if.else
  %3 = bitcast i8* %name to i8**
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.v2i_POLICY_CONSTRAINTS, i64 0, i64 0)) #4
  %4 = load i8*, i8** %3, align 8, !tbaa !11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 106, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* noundef %4) #4
  br label %err

for.inc:                                          ; preds = %if.then8, %if.then15
  %inc = add nuw nsw i32 %i.050, 1
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #4
  %cmp3 = icmp slt i32 %inc, %call2
  br i1 %cmp3, label %for.body, label %for.end, !llvm.loop !13

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %inhibitPolicyMapping24 = getelementptr inbounds %struct.POLICY_CONSTRAINTS_st, %struct.POLICY_CONSTRAINTS_st* %call, i64 0, i32 1
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %inhibitPolicyMapping24, align 8, !tbaa !10
  %cmp25 = icmp eq %struct.asn1_string_st* %5, null
  br i1 %cmp25, label %land.lhs.true, label %if.end29

land.lhs.true:                                    ; preds = %for.end
  %requireExplicitPolicy26 = getelementptr inbounds %struct.POLICY_CONSTRAINTS_st, %struct.POLICY_CONSTRAINTS_st* %call, i64 0, i32 0
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %requireExplicitPolicy26, align 8, !tbaa !8
  %cmp27 = icmp eq %struct.asn1_string_st* %6, null
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %land.lhs.true
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.v2i_POLICY_CONSTRAINTS, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 151, i8* noundef null) #4
  br label %err

if.end29:                                         ; preds = %land.lhs.true, %for.end
  %7 = bitcast %struct.POLICY_CONSTRAINTS_st* %call to i8*
  br label %cleanup

err:                                              ; preds = %if.then15, %if.then8, %if.then28, %if.else20
  tail call void @POLICY_CONSTRAINTS_free(%struct.POLICY_CONSTRAINTS_st* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end29, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ null, %err ], [ %7, %if.end29 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.POLICY_CONSTRAINTS_st* @POLICY_CONSTRAINTS_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @POLICY_CONSTRAINTS_it.local_it) #4
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.POLICY_CONSTRAINTS_st*
  ret %struct.POLICY_CONSTRAINTS_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @POLICY_CONSTRAINTS_free(%struct.POLICY_CONSTRAINTS_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.POLICY_CONSTRAINTS_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @POLICY_CONSTRAINTS_it.local_it) #4
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @ASN1_INTEGER_it() #2

declare i32 @X509V3_add_value_int(i8* noundef, %struct.asn1_string_st* noundef, %struct.stack_st_CONF_VALUE** noundef) local_unnamed_addr #2

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

declare i32 @X509V3_get_value_int(%struct.CONF_VALUE* noundef, %struct.asn1_string_st** noundef) local_unnamed_addr #2

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
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"POLICY_CONSTRAINTS_st", !5, i64 0, !5, i64 8}
!10 = !{!9, !5, i64 8}
!11 = !{!12, !5, i64 8}
!12 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
