; ModuleID = 'crypto/evp/evp_cnf.c'
source_filename = "crypto/evp/evp_cnf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conf_imodule_st = type opaque
%struct.conf_st = type { %struct.conf_method_st*, i8*, %struct.lhash_st_CONF_VALUE*, i32, i32, i8*, %struct.ossl_lib_ctx_st* }
%struct.conf_method_st = type { i8*, %struct.conf_st* (%struct.conf_method_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*, %struct.bio_st*, i64*)*, i32 (%struct.conf_st*, %struct.bio_st*)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8*, i64*)* }
%struct.bio_st = type opaque
%struct.lhash_st_CONF_VALUE = type { %union.lh_CONF_VALUE_dummy }
%union.lh_CONF_VALUE_dummy = type { i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_CONF_VALUE = type opaque
%struct.stack_st = type opaque
%struct.CONF_VALUE = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [12 x i8] c"alg_section\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"crypto/evp/evp_cnf.c\00", align 1
@__func__.alg_module_init = private unnamed_addr constant [16 x i8] c"alg_module_init\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"fips_mode\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"default_properties\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"name=%s, value=%s\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @EVP_add_alg_module() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @CONF_module_add(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 (%struct.conf_imodule_st*, %struct.conf_st*)* noundef nonnull @alg_module_init, void (%struct.conf_imodule_st*)* noundef null) #5
  ret void
}

declare i32 @CONF_module_add(i8* noundef, i32 (%struct.conf_imodule_st*, %struct.conf_st*)* noundef, void (%struct.conf_imodule_st*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @alg_module_init(%struct.conf_imodule_st* noundef %md, %struct.conf_st* noundef %cnf) #0 {
entry:
  %m = alloca i32, align 4
  %call = tail call i8* @CONF_imodule_get_value(%struct.conf_imodule_st* noundef %md) #5
  %call1 = tail call %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef %cnf, i8* noundef %call) #5
  %cmp = icmp eq %struct.stack_st_CONF_VALUE* %call1, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call2 = call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef nonnull %call1) #6
  %call361 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #5
  %cmp462 = icmp sgt i32 %call361, 0
  br i1 %cmp462, label %for.body.lr.ph, label %cleanup34

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %0 = bitcast i32* %m to i8*
  br label %for.body

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 33, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.alg_module_init, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 165, i8* noundef null) #5
  br label %cleanup34

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.063 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %call6 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call2, i32 noundef %i.063) #5
  %name = getelementptr inbounds i8, i8* %call6, i64 8
  %1 = bitcast i8* %name to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !4
  %call7 = call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)) #7
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %for.body
  %3 = bitcast i8* %call6 to %struct.CONF_VALUE*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  %call10 = call i32 @X509V3_get_value_bool(%struct.CONF_VALUE* noundef %3, i32* noundef nonnull %m) #5
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %cleanup34.critedge52, label %if.end12

if.end12:                                         ; preds = %if.then9
  %call13 = call %struct.ossl_lib_ctx_st* @NCONF_get0_libctx(%struct.conf_st* noundef %cnf) #5
  %4 = load i32, i32* %m, align 4, !tbaa !9
  %cmp14 = icmp sgt i32 %4, 0
  %conv = zext i1 %cmp14 to i32
  %call15 = call i32 @evp_default_properties_enable_fips_int(%struct.ossl_lib_ctx_st* noundef %call13, i32 noundef %conv, i32 noundef 0) #5
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %cleanup

if.then17:                                        ; preds = %if.end12
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.alg_module_init, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 209, i8* noundef null) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  br label %cleanup34

cleanup:                                          ; preds = %if.end12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  br label %for.inc

if.else:                                          ; preds = %for.body
  %call20 = call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0)) #7
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.else29

if.then23:                                        ; preds = %if.else
  %call24 = call %struct.ossl_lib_ctx_st* @NCONF_get0_libctx(%struct.conf_st* noundef %cnf) #5
  %value = getelementptr inbounds i8, i8* %call6, i64 16
  %5 = bitcast i8* %value to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !11
  %call25 = call i32 @evp_set_default_properties_int(%struct.ossl_lib_ctx_st* noundef %call24, i8* noundef %6, i32 noundef 0, i32 noundef 0) #5
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %for.inc

if.then27:                                        ; preds = %if.then23
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.alg_module_init, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 209, i8* noundef null) #5
  br label %cleanup34

if.else29:                                        ; preds = %if.else
  %7 = bitcast i8* %name to i8**
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.alg_module_init, i64 0, i64 0)) #5
  %8 = load i8*, i8** %7, align 8, !tbaa !4
  %value31 = getelementptr inbounds i8, i8* %call6, i64 16
  %9 = bitcast i8* %value31 to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !11
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 169, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* noundef %8, i8* noundef %10) #5
  br label %cleanup34

for.inc:                                          ; preds = %cleanup, %if.then23
  %inc = add nuw nsw i32 %i.063, 1
  %call3 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #5
  %cmp4 = icmp slt i32 %inc, %call3
  br i1 %cmp4, label %for.body, label %cleanup34, !llvm.loop !12

cleanup34.critedge52:                             ; preds = %if.then9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  br label %cleanup34

cleanup34:                                        ; preds = %for.inc, %for.cond.preheader, %cleanup34.critedge52, %if.then17, %if.else29, %if.then27, %if.then
  %retval.3 = phi i32 [ 0, %if.then ], [ 0, %if.then27 ], [ 0, %if.else29 ], [ 0, %if.then17 ], [ 0, %cleanup34.critedge52 ], [ 1, %for.cond.preheader ], [ 1, %for.inc ]
  ret i32 %retval.3
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i8* @CONF_imodule_get_value(%struct.conf_imodule_st* noundef) local_unnamed_addr #1

declare %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

declare i32 @X509V3_get_value_bool(%struct.CONF_VALUE* noundef, i32* noundef) local_unnamed_addr #1

declare i32 @evp_default_properties_enable_fips_int(%struct.ossl_lib_ctx_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare %struct.ossl_lib_ctx_st* @NCONF_get0_libctx(%struct.conf_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @evp_set_default_properties_int(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #8 = { nounwind }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!5, !6, i64 16}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
