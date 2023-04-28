; ModuleID = 'crypto/ct/ct_x509v3.c'
source_filename = "crypto/ct/ct_x509v3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type opaque
%struct.v3_ext_method = type { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, {}*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* }
%struct.stack_st_CONF_VALUE = type opaque
%struct.v3_ext_ctx = type { i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_req_st*, %struct.X509_crl_st*, %struct.X509V3_CONF_METHOD_st*, i8*, %struct.evp_pkey_st* }
%struct.x509_st = type opaque
%struct.X509_req_st = type opaque
%struct.X509_crl_st = type opaque
%struct.X509V3_CONF_METHOD_st = type { i8* (i8*, i8*, i8*)*, %struct.stack_st_CONF_VALUE* (i8*, i8*)*, void (i8*, i8*)*, void (i8*, %struct.stack_st_CONF_VALUE*)* }
%struct.evp_pkey_st = type opaque
%struct.bio_st = type opaque
%struct.stack_st_SCT = type opaque
%struct.ctlog_store_st = type opaque
%struct.stack_st = type opaque
%struct.sct_st = type { i32, i8*, i64, i8*, i64, i64, i8*, i64, i8, i8, i8*, i64, i32, i32, i32 }

@ossl_v3_ct_scts = local_unnamed_addr constant [3 x { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* }] [{ i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 951, i32 0, %struct.ASN1_ITEM_st* ()* null, i8* ()* null, void (i8*)* bitcast (void (%struct.stack_st_SCT*)* @SCT_LIST_free to void (i8*)*), i8* (i8*, i8**, i64)* bitcast (%struct.stack_st_SCT* (%struct.stack_st_SCT**, i8**, i64)* @x509_ext_d2i_SCT_LIST to i8* (i8*, i8**, i64)*), i32 (i8*, i8**)* bitcast (i32 (%struct.stack_st_SCT*, i8**)* @i2d_SCT_LIST to i32 (i8*, i8**)*), i8* (%struct.v3_ext_method*, i8*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* null, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* bitcast (i32 (%struct.v3_ext_method*, %struct.stack_st_SCT*, %struct.bio_st*, i32)* @i2r_SCT_LIST to i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*), i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, i8* null }, { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 952, i32 0, %struct.ASN1_ITEM_st* ()* @ASN1_NULL_it, i8* ()* null, void (i8*)* null, i8* (i8*, i8**, i64)* null, i32 (i8*, i8**)* null, i8* (%struct.v3_ext_method*, i8*)* @i2s_poison, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* @s2i_poison, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* null, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, i8* null }, { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 954, i32 0, %struct.ASN1_ITEM_st* ()* null, i8* ()* null, void (i8*)* bitcast (void (%struct.stack_st_SCT*)* @SCT_LIST_free to void (i8*)*), i8* (i8*, i8**, i64)* bitcast (%struct.stack_st_SCT* (%struct.stack_st_SCT**, i8**, i64)* @ocsp_ext_d2i_SCT_LIST to i8* (i8*, i8**, i64)*), i32 (i8*, i8**)* bitcast (i32 (%struct.stack_st_SCT*, i8**)* @i2d_SCT_LIST to i32 (i8*, i8**)*), i8* (%struct.v3_ext_method*, i8*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* null, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* bitcast (i32 (%struct.v3_ext_method*, %struct.stack_st_SCT*, %struct.bio_st*, i32)* @i2r_SCT_LIST to i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*), i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, i8* null }], align 16
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"crypto/ct/ct_x509v3.c\00", align 1

declare void @SCT_LIST_free(%struct.stack_st_SCT* noundef) #0

; Function Attrs: noinline nounwind uwtable
define internal %struct.stack_st_SCT* @x509_ext_d2i_SCT_LIST(%struct.stack_st_SCT** noundef %a, i8** noundef %pp, i64 noundef %len) #1 {
entry:
  %call = tail call %struct.stack_st_SCT* @d2i_SCT_LIST(%struct.stack_st_SCT** noundef %a, i8** noundef %pp, i64 noundef %len) #3
  %call1 = tail call fastcc i32 @set_sct_list_source(%struct.stack_st_SCT* noundef %call, i32 noundef 2) #4
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  tail call void @SCT_LIST_free(%struct.stack_st_SCT* noundef %call) #3
  store %struct.stack_st_SCT* null, %struct.stack_st_SCT** %a, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %struct.stack_st_SCT* [ null, %if.then ], [ %call, %entry ]
  ret %struct.stack_st_SCT* %retval.0
}

declare i32 @i2d_SCT_LIST(%struct.stack_st_SCT* noundef, i8** noundef) #0

; Function Attrs: noinline nounwind uwtable
define internal i32 @i2r_SCT_LIST(%struct.v3_ext_method* nocapture noundef readnone %method, %struct.stack_st_SCT* noundef %sct_list, %struct.bio_st* noundef %out, i32 noundef %indent) #1 {
entry:
  tail call void @SCT_LIST_print(%struct.stack_st_SCT* noundef %sct_list, %struct.bio_st* noundef %out, i32 noundef %indent, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.ctlog_store_st* noundef null) #3
  ret i32 1
}

declare %struct.ASN1_ITEM_st* @ASN1_NULL_it() #0

; Function Attrs: noinline nounwind uwtable
define internal i8* @i2s_poison(%struct.v3_ext_method* nocapture noundef readnone %method, i8* nocapture noundef readnone %val) #1 {
entry:
  %call = tail call i8* @CRYPTO_strdup(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 noundef 18) #3
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @s2i_poison(%struct.v3_ext_method* nocapture noundef readnone %method, %struct.v3_ext_ctx* nocapture noundef readnone %ctx, i8* nocapture noundef readnone %str) #1 {
entry:
  %call = tail call i32* @ASN1_NULL_new() #3
  %0 = bitcast i32* %call to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.stack_st_SCT* @ocsp_ext_d2i_SCT_LIST(%struct.stack_st_SCT** noundef %a, i8** noundef %pp, i64 noundef %len) #1 {
entry:
  %call = tail call %struct.stack_st_SCT* @d2i_SCT_LIST(%struct.stack_st_SCT** noundef %a, i8** noundef %pp, i64 noundef %len) #3
  %call1 = tail call fastcc i32 @set_sct_list_source(%struct.stack_st_SCT* noundef %call, i32 noundef 3) #4
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  tail call void @SCT_LIST_free(%struct.stack_st_SCT* noundef %call) #3
  store %struct.stack_st_SCT* null, %struct.stack_st_SCT** %a, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %struct.stack_st_SCT* [ null, %if.then ], [ %call, %entry ]
  ret %struct.stack_st_SCT* %retval.0
}

declare %struct.stack_st_SCT* @d2i_SCT_LIST(%struct.stack_st_SCT** noundef, i8** noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @set_sct_list_source(%struct.stack_st_SCT* noundef %s, i32 noundef %source) unnamed_addr #1 {
entry:
  %cmp.not = icmp eq %struct.stack_st_SCT* %s, null
  br i1 %cmp.not, label %return, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_SCT_sk_type(%struct.stack_st_SCT* noundef nonnull %s) #4
  %call120 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #3
  %cmp221 = icmp sgt i32 %call120, 0
  br i1 %cmp221, label %for.body, label %return

for.cond:                                         ; preds = %for.body
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #3
  %cmp2 = icmp slt i32 %inc, %call1
  br i1 %cmp2, label %for.body, label %return, !llvm.loop !8

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.022 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call4 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.022) #3
  %0 = bitcast i8* %call4 to %struct.sct_st*
  %call5 = tail call i32 @SCT_set_source(%struct.sct_st* noundef %0, i32 noundef %source) #3
  %cmp6.not = icmp eq i32 %call5, 1
  %inc = add nuw nsw i32 %i.022, 1
  br i1 %cmp6.not, label %for.cond, label %return

return:                                           ; preds = %for.body, %for.cond, %for.cond.preheader, %entry
  %retval.3 = phi i32 [ 1, %entry ], [ 1, %for.cond.preheader ], [ 0, %for.body ], [ 1, %for.cond ]
  ret i32 %retval.3
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_SCT_sk_type(%struct.stack_st_SCT* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_SCT* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @SCT_set_source(%struct.sct_st* noundef, i32 noundef) local_unnamed_addr #0

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #0

declare void @SCT_LIST_print(%struct.stack_st_SCT* noundef, %struct.bio_st* noundef, i32 noundef, i8* noundef, %struct.ctlog_store_st* noundef) local_unnamed_addr #0

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #0

declare i32* @ASN1_NULL_new() local_unnamed_addr #0

attributes #0 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

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
