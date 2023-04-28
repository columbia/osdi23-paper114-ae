; ModuleID = 'crypto/asn1/asn_mstbl.c'
source_filename = "crypto/asn1/asn_mstbl.c"
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

@.str = private unnamed_addr constant [13 x i8] c"stbl_section\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"crypto/asn1/asn_mstbl.c\00", align 1
@__func__.stbl_module_init = private unnamed_addr constant [17 x i8] c"stbl_module_init\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"nomask\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@__func__.do_tcreate = private unnamed_addr constant [11 x i8] c"do_tcreate\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"field=%s, value=%s\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"name=%s, value=%s\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @ASN1_add_stable_module() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @CONF_module_add(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 (%struct.conf_imodule_st*, %struct.conf_st*)* noundef nonnull @stbl_module_init, void (%struct.conf_imodule_st*)* noundef nonnull @stbl_module_finish) #6
  ret void
}

declare i32 @CONF_module_add(i8* noundef, i32 (%struct.conf_imodule_st*, %struct.conf_st*)* noundef, void (%struct.conf_imodule_st*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @stbl_module_init(%struct.conf_imodule_st* noundef %md, %struct.conf_st* noundef %cnf) #0 {
entry:
  %call = tail call i8* @CONF_imodule_get_value(%struct.conf_imodule_st* noundef %md) #6
  %call1 = tail call %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef %cnf, i8* noundef %call) #6
  %cmp = icmp eq %struct.stack_st_CONF_VALUE* %call1, null
  br i1 %cmp, label %cleanup.sink.split, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef nonnull %call1) #7
  %call321 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #6
  %cmp422 = icmp sgt i32 %call321, 0
  br i1 %cmp422, label %for.body, label %cleanup

for.cond:                                         ; preds = %for.body
  %call3 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #6
  %cmp4 = icmp slt i32 %inc, %call3
  br i1 %cmp4, label %for.body, label %cleanup, !llvm.loop !4

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.023 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call6 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call2, i32 noundef %i.023) #6
  %value = getelementptr inbounds i8, i8* %call6, i64 16
  %0 = bitcast i8* %value to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !6
  %name = getelementptr inbounds i8, i8* %call6, i64 8
  %2 = bitcast i8* %name to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !11
  %call7 = tail call fastcc i32 @do_tcreate(i8* noundef %1, i8* noundef %3) #7
  %tobool.not = icmp eq i32 %call7, 0
  %inc = add nuw nsw i32 %i.023, 1
  br i1 %tobool.not, label %cleanup.sink.split, label %for.cond

cleanup.sink.split:                               ; preds = %for.body, %entry
  %.sink24 = phi i32 [ 29, %entry ], [ 35, %for.body ]
  %.sink = phi i32 [ 172, %entry ], [ 219, %for.body ]
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef %.sink24, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.stbl_module_init, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef %.sink, i8* noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %cleanup.sink.split, %for.cond.preheader
  %retval.0 = phi i32 [ 1, %for.cond.preheader ], [ 0, %cleanup.sink.split ], [ 1, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @stbl_module_finish(%struct.conf_imodule_st* nocapture noundef readnone %md) #0 {
entry:
  tail call void @ASN1_STRING_TABLE_cleanup() #6
  ret void
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

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_tcreate(i8* noundef %value, i8* noundef %name) unnamed_addr #0 {
entry:
  %eptr = alloca i8*, align 8
  %tbl_mask = alloca i64, align 8
  %0 = bitcast i8** %eptr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  %1 = bitcast i64* %tbl_mask to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  store i64 0, i64* %tbl_mask, align 8, !tbaa !12
  %call = tail call i32 @OBJ_sn2nid(i8* noundef %name) #6
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end, label %if.end4

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @OBJ_ln2nid(i8* noundef %name) #6
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.else70, label %if.end4

if.end4:                                          ; preds = %entry, %if.end
  %nid.0113 = phi i32 [ %call1, %if.end ], [ %call, %entry ]
  %call5 = tail call %struct.stack_st_CONF_VALUE* @X509V3_parse_list(i8* noundef %value) #6
  %tobool.not = icmp eq %struct.stack_st_CONF_VALUE* %call5, null
  br i1 %tobool.not, label %if.else70, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end4
  %call8 = call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef nonnull %call5) #7
  %call9133 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call8) #6
  %cmp10134 = icmp sgt i32 %call9133, 0
  br i1 %cmp10134, label %for.body, label %if.else72

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %tbl_flags.0138 = phi i64 [ %tbl_flags.1, %for.inc ], [ 0, %for.cond.preheader ]
  %tbl_max.0137 = phi i64 [ %tbl_max.1, %for.inc ], [ -1, %for.cond.preheader ]
  %tbl_min.0136 = phi i64 [ %tbl_min.1, %for.inc ], [ -1, %for.cond.preheader ]
  %i.0135 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %call12 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call8, i32 noundef %i.0135) #6
  %name13 = getelementptr inbounds i8, i8* %call12, i64 8
  %2 = bitcast i8* %name13 to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !11
  %call14 = call i32 @strcmp(i8* noundef %3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #9
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %for.body
  %value17 = getelementptr inbounds i8, i8* %call12, i64 16
  %4 = bitcast i8* %value17 to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !6
  %call18 = call i64 @strtoul(i8* noundef %5, i8** noundef nonnull %eptr, i32 noundef 0) #6
  %6 = load i8*, i8** %eptr, align 8, !tbaa !14
  %7 = load i8, i8* %6, align 1, !tbaa !15
  %tobool19.not = icmp eq i8 %7, 0
  br i1 %tobool19.not, label %for.inc, label %if.then67

if.else:                                          ; preds = %for.body
  %call23 = call i32 @strcmp(i8* noundef %3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #9
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.else31

if.then25:                                        ; preds = %if.else
  %value26 = getelementptr inbounds i8, i8* %call12, i64 16
  %8 = bitcast i8* %value26 to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !6
  %call27 = call i64 @strtoul(i8* noundef %9, i8** noundef nonnull %eptr, i32 noundef 0) #6
  %10 = load i8*, i8** %eptr, align 8, !tbaa !14
  %11 = load i8, i8* %10, align 1, !tbaa !15
  %tobool28.not = icmp eq i8 %11, 0
  br i1 %tobool28.not, label %for.inc, label %if.then67

if.else31:                                        ; preds = %if.else
  %call33 = call i32 @strcmp(i8* noundef %3, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)) #9
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.then35, label %if.else42

if.then35:                                        ; preds = %if.else31
  %value36 = getelementptr inbounds i8, i8* %call12, i64 16
  %12 = bitcast i8* %value36 to i8**
  %13 = load i8*, i8** %12, align 8, !tbaa !6
  %call37 = call i32 @ASN1_str2mask(i8* noundef %13, i64* noundef nonnull %tbl_mask) #6
  %tobool38 = icmp ne i32 %call37, 0
  %14 = load i64, i64* %tbl_mask, align 8
  %tobool39 = icmp ne i64 %14, 0
  %or.cond = select i1 %tobool38, i1 %tobool39, i1 false
  br i1 %or.cond, label %for.inc, label %if.then67

if.else42:                                        ; preds = %if.else31
  %call44 = call i32 @strcmp(i8* noundef %3, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #9
  %cmp45 = icmp eq i32 %call44, 0
  br i1 %cmp45, label %if.then46, label %if.then67

if.then46:                                        ; preds = %if.else42
  %value47 = getelementptr inbounds i8, i8* %call12, i64 16
  %15 = bitcast i8* %value47 to i8**
  %16 = load i8*, i8** %15, align 8, !tbaa !6
  %call48 = call i32 @strcmp(i8* noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #9
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %for.inc, label %if.else51

if.else51:                                        ; preds = %if.then46
  %call53 = call i32 @strcmp(i8* noundef %16, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #9
  %cmp54 = icmp eq i32 %call53, 0
  br i1 %cmp54, label %for.inc, label %if.then67

for.inc:                                          ; preds = %if.else51, %if.then46, %if.then16, %if.then35, %if.then25
  %tbl_min.1 = phi i64 [ %call18, %if.then16 ], [ %tbl_min.0136, %if.then25 ], [ %tbl_min.0136, %if.then35 ], [ %tbl_min.0136, %if.then46 ], [ %tbl_min.0136, %if.else51 ]
  %tbl_max.1 = phi i64 [ %tbl_max.0137, %if.then16 ], [ %call27, %if.then25 ], [ %tbl_max.0137, %if.then35 ], [ %tbl_max.0137, %if.then46 ], [ %tbl_max.0137, %if.else51 ]
  %tbl_flags.1 = phi i64 [ %tbl_flags.0138, %if.then16 ], [ %tbl_flags.0138, %if.then25 ], [ %tbl_flags.0138, %if.then35 ], [ 2, %if.then46 ], [ 1, %if.else51 ]
  %inc = add nuw nsw i32 %i.0135, 1
  %call9 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call8) #6
  %cmp10 = icmp slt i32 %inc, %call9
  br i1 %cmp10, label %for.body, label %if.else72.loopexit, !llvm.loop !16

if.then67:                                        ; preds = %if.then16, %if.then25, %if.then35, %if.else51, %if.else42
  %17 = bitcast i8* %name13 to i8**
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 100, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.do_tcreate, i64 0, i64 0)) #6
  %18 = load i8*, i8** %17, align 8, !tbaa !11
  %value69 = getelementptr inbounds i8, i8* %call12, i64 16
  %19 = bitcast i8* %value69 to i8**
  %20 = load i8*, i8** %19, align 8, !tbaa !6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 218, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* noundef %18, i8* noundef %20) #6
  br label %if.end77

if.else70:                                        ; preds = %if.end, %if.end4
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 103, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.do_tcreate, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 218, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* noundef %name, i8* noundef %value) #6
  br label %if.end77

if.else72.loopexit:                               ; preds = %for.inc
  %.pre = load i64, i64* %tbl_mask, align 8, !tbaa !12
  br label %if.else72

if.else72:                                        ; preds = %if.else72.loopexit, %for.cond.preheader
  %21 = phi i64 [ 0, %for.cond.preheader ], [ %.pre, %if.else72.loopexit ]
  %tbl_min.0.lcssa = phi i64 [ -1, %for.cond.preheader ], [ %tbl_min.1, %if.else72.loopexit ]
  %tbl_max.0.lcssa = phi i64 [ -1, %for.cond.preheader ], [ %tbl_max.1, %if.else72.loopexit ]
  %tbl_flags.0.lcssa = phi i64 [ 0, %for.cond.preheader ], [ %tbl_flags.1, %if.else72.loopexit ]
  %call73 = call i32 @ASN1_STRING_TABLE_add(i32 noundef %nid.0113, i64 noundef %tbl_min.0.lcssa, i64 noundef %tbl_max.0.lcssa, i64 noundef %21, i64 noundef %tbl_flags.0.lcssa) #6
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then75, label %if.end77

if.then75:                                        ; preds = %if.else72
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 109, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.do_tcreate, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #6
  br label %if.end77

if.end77:                                         ; preds = %if.else72, %if.then75, %if.then67, %if.else70
  %lst.0122 = phi %struct.stack_st_CONF_VALUE* [ %call5, %if.then67 ], [ null, %if.else70 ], [ %call5, %if.else72 ], [ %call5, %if.then75 ]
  %rv.1 = phi i32 [ 0, %if.then67 ], [ 0, %if.else70 ], [ %call73, %if.else72 ], [ 0, %if.then75 ]
  %call78 = call fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %lst.0122) #7
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call78, void (i8*)* noundef bitcast (void (%struct.CONF_VALUE*)* @X509V3_conf_free to void (i8*)*)) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %rv.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @OBJ_sn2nid(i8* noundef) local_unnamed_addr #1

declare i32 @OBJ_ln2nid(i8* noundef) local_unnamed_addr #1

declare %struct.stack_st_CONF_VALUE* @X509V3_parse_list(i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @strtoul(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #5

declare i32 @ASN1_str2mask(i8* noundef, i64* noundef) local_unnamed_addr #1

declare i32 @ASN1_STRING_TABLE_add(i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509V3_conf_free(%struct.CONF_VALUE* noundef) #1

declare void @ASN1_STRING_TABLE_cleanup() local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{!7, !8, i64 16}
!7 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!7, !8, i64 8}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !9, i64 0}
!14 = !{!8, !8, i64 0}
!15 = !{!9, !9, i64 0}
!16 = distinct !{!16, !5}
