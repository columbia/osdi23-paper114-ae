; ModuleID = 'crypto/x509/v3_bcons.c'
source_filename = "crypto/x509/v3_bcons.c"
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
%struct.BASIC_CONSTRAINTS_st = type { i32, %struct.asn1_string_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st = type opaque
%struct.CONF_VALUE = type { i8*, i8*, i8* }
%struct.ASN1_VALUE_st = type opaque

@ossl_v3_bcons = local_unnamed_addr constant { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 87, i32 0, %struct.ASN1_ITEM_st* ()* @BASIC_CONSTRAINTS_it, i8* ()* null, void (i8*)* null, i8* (i8*, i8**, i64)* null, i32 (i8*, i8**)* null, i8* (%struct.v3_ext_method*, i8*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* bitcast (%struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, %struct.BASIC_CONSTRAINTS_st*, %struct.stack_st_CONF_VALUE*)* @i2v_BASIC_CONSTRAINTS to %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*), i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* bitcast (%struct.BASIC_CONSTRAINTS_st* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* @v2i_BASIC_CONSTRAINTS to i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*), i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, i8* null }, align 8
@BASIC_CONSTRAINTS_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @BASIC_CONSTRAINTS_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [18 x i8] c"BASIC_CONSTRAINTS\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ca\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"pathlen\00", align 1
@BASIC_CONSTRAINTS_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_FBOOLEAN_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }], align 16
@.str.4 = private unnamed_addr constant [3 x i8] c"CA\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"crypto/x509/v3_bcons.c\00", align 1
@__func__.v2i_BASIC_CONSTRAINTS = private unnamed_addr constant [22 x i8] c"v2i_BASIC_CONSTRAINTS\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"name=\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c", value=\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @BASIC_CONSTRAINTS_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @BASIC_CONSTRAINTS_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.stack_st_CONF_VALUE* @i2v_BASIC_CONSTRAINTS(%struct.v3_ext_method* nocapture noundef readnone %method, %struct.BASIC_CONSTRAINTS_st* nocapture noundef readonly %bcons, %struct.stack_st_CONF_VALUE* noundef %extlist) #1 {
entry:
  %extlist.addr = alloca %struct.stack_st_CONF_VALUE*, align 8
  store %struct.stack_st_CONF_VALUE* %extlist, %struct.stack_st_CONF_VALUE** %extlist.addr, align 8, !tbaa !4
  %ca = getelementptr inbounds %struct.BASIC_CONSTRAINTS_st, %struct.BASIC_CONSTRAINTS_st* %bcons, i64 0, i32 0
  %0 = load i32, i32* %ca, align 8, !tbaa !8
  %call = call i32 @X509V3_add_value_bool(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 noundef %0, %struct.stack_st_CONF_VALUE** noundef nonnull %extlist.addr) #4
  %pathlen = getelementptr inbounds %struct.BASIC_CONSTRAINTS_st, %struct.BASIC_CONSTRAINTS_st* %bcons, i64 0, i32 1
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %pathlen, align 8, !tbaa !11
  %call1 = call i32 @X509V3_add_value_int(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.asn1_string_st* noundef %1, %struct.stack_st_CONF_VALUE** noundef nonnull %extlist.addr) #4
  %2 = load %struct.stack_st_CONF_VALUE*, %struct.stack_st_CONF_VALUE** %extlist.addr, align 8, !tbaa !4
  ret %struct.stack_st_CONF_VALUE* %2
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.BASIC_CONSTRAINTS_st* @v2i_BASIC_CONSTRAINTS(%struct.v3_ext_method* nocapture noundef readnone %method, %struct.v3_ext_ctx* nocapture noundef readnone %ctx, %struct.stack_st_CONF_VALUE* noundef %values) #1 {
entry:
  %call = tail call %struct.BASIC_CONSTRAINTS_st* @BASIC_CONSTRAINTS_new() #5
  %cmp = icmp eq %struct.BASIC_CONSTRAINTS_st* %call, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %values) #5
  %call242 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #4
  %cmp343 = icmp sgt i32 %call242, 0
  br i1 %cmp343, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pathlen = getelementptr inbounds %struct.BASIC_CONSTRAINTS_st, %struct.BASIC_CONSTRAINTS_st* %call, i64 0, i32 1
  %ca = getelementptr inbounds %struct.BASIC_CONSTRAINTS_st, %struct.BASIC_CONSTRAINTS_st* %call, i64 0, i32 0
  br label %for.body

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.v2i_BASIC_CONSTRAINTS, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %call5 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call1, i32 noundef %i.044) #4
  %0 = bitcast i8* %call5 to %struct.CONF_VALUE*
  %name = getelementptr inbounds i8, i8* %call5, i64 8
  %1 = bitcast i8* %name to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !12
  %call6 = tail call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #6
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %for.body
  %call9 = tail call i32 @X509V3_get_value_bool(%struct.CONF_VALUE* noundef nonnull %0, i32* noundef nonnull %ca) #4
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %err, label %for.inc

if.else:                                          ; preds = %for.body
  %call13 = tail call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)) #6
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.else20

if.then15:                                        ; preds = %if.else
  %call16 = tail call i32 @X509V3_get_value_int(%struct.CONF_VALUE* noundef nonnull %0, %struct.asn1_string_st** noundef nonnull %pathlen) #4
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %for.inc

if.else20:                                        ; preds = %if.else
  %3 = bitcast i8* %name to i8**
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.v2i_BASIC_CONSTRAINTS, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 106, i8* noundef null) #4
  %4 = load i8*, i8** %3, align 8, !tbaa !12
  %value = getelementptr inbounds i8, i8* %call5, i64 16
  %5 = bitcast i8* %value to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !14
  tail call void (i32, ...) @ERR_add_error_data(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* noundef %4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef %6) #4
  br label %err

for.inc:                                          ; preds = %if.then8, %if.then15
  %inc = add nuw nsw i32 %i.044, 1
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #4
  %cmp3 = icmp slt i32 %inc, %call2
  br i1 %cmp3, label %for.body, label %cleanup, !llvm.loop !15

err:                                              ; preds = %if.then15, %if.then8, %if.else20
  tail call void @BASIC_CONSTRAINTS_free(%struct.BASIC_CONSTRAINTS_st* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %for.inc, %for.cond.preheader, %err, %if.then
  %retval.0 = phi %struct.BASIC_CONSTRAINTS_st* [ null, %if.then ], [ null, %err ], [ %call, %for.cond.preheader ], [ %call, %for.inc ]
  ret %struct.BASIC_CONSTRAINTS_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.BASIC_CONSTRAINTS_st* @d2i_BASIC_CONSTRAINTS(%struct.BASIC_CONSTRAINTS_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.BASIC_CONSTRAINTS_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @BASIC_CONSTRAINTS_it.local_it) #4
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.BASIC_CONSTRAINTS_st*
  ret %struct.BASIC_CONSTRAINTS_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_BASIC_CONSTRAINTS(%struct.BASIC_CONSTRAINTS_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.BASIC_CONSTRAINTS_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @BASIC_CONSTRAINTS_it.local_it) #4
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.BASIC_CONSTRAINTS_st* @BASIC_CONSTRAINTS_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @BASIC_CONSTRAINTS_it.local_it) #4
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.BASIC_CONSTRAINTS_st*
  ret %struct.BASIC_CONSTRAINTS_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @BASIC_CONSTRAINTS_free(%struct.BASIC_CONSTRAINTS_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.BASIC_CONSTRAINTS_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @BASIC_CONSTRAINTS_it.local_it) #4
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @ASN1_FBOOLEAN_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_INTEGER_it() #2

declare i32 @X509V3_add_value_bool(i8* noundef, i32 noundef, %struct.stack_st_CONF_VALUE** noundef) local_unnamed_addr #2

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

declare i32 @X509V3_get_value_bool(%struct.CONF_VALUE* noundef, i32* noundef) local_unnamed_addr #2

declare i32 @X509V3_get_value_int(%struct.CONF_VALUE* noundef, %struct.asn1_string_st** noundef) local_unnamed_addr #2

declare void @ERR_add_error_data(i32 noundef, ...) local_unnamed_addr #2

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
!8 = !{!9, !10, i64 0}
!9 = !{!"BASIC_CONSTRAINTS_st", !10, i64 0, !5, i64 8}
!10 = !{!"int", !6, i64 0}
!11 = !{!9, !5, i64 8}
!12 = !{!13, !5, i64 8}
!13 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16}
!14 = !{!13, !5, i64 16}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
