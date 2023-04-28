; ModuleID = 'crypto/conf/conf_api.c'
source_filename = "crypto/conf/conf_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CONF_VALUE = type { i8*, i8*, i8* }
%struct.conf_st = type { %struct.conf_method_st*, i8*, %struct.lhash_st_CONF_VALUE*, i32, i32, i8*, %struct.ossl_lib_ctx_st* }
%struct.conf_method_st = type { i8*, %struct.conf_st* (%struct.conf_method_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*, %struct.bio_st*, i64*)*, i32 (%struct.conf_st*, %struct.bio_st*)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8*, i64*)* }
%struct.bio_st = type opaque
%struct.lhash_st_CONF_VALUE = type { %union.lh_CONF_VALUE_dummy }
%union.lh_CONF_VALUE_dummy = type { i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.lhash_st = type opaque
%struct.stack_st_CONF_VALUE = type opaque
%struct.stack_st = type opaque

@.str = private unnamed_addr constant [23 x i8] c"crypto/conf/conf_api.c\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ENV\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.CONF_VALUE* @_CONF_get_section(%struct.conf_st* noundef readonly %conf, i8* noundef %section) local_unnamed_addr #0 {
entry:
  %vv = alloca %struct.CONF_VALUE, align 8
  %0 = bitcast %struct.CONF_VALUE* %vv to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7
  %cmp = icmp eq %struct.conf_st* %conf, null
  %cmp1 = icmp eq i8* %section, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %vv, i64 0, i32 1
  store i8* null, i8** %name, align 8, !tbaa !4
  %section2 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %vv, i64 0, i32 0
  store i8* %section, i8** %section2, align 8, !tbaa !9
  %data = getelementptr inbounds %struct.conf_st, %struct.conf_st* %conf, i64 0, i32 2
  %1 = load %struct.lhash_st_CONF_VALUE*, %struct.lhash_st_CONF_VALUE** %data, align 8, !tbaa !10
  %cmp3.not = icmp eq %struct.lhash_st_CONF_VALUE* %1, null
  br i1 %cmp3.not, label %cleanup, label %cond.true

cond.true:                                        ; preds = %if.end
  %call = tail call fastcc %struct.lhash_st* @ossl_check_CONF_VALUE_lh_type(%struct.lhash_st_CONF_VALUE* noundef nonnull %1) #8
  %call6 = call i8* @OPENSSL_LH_retrieve(%struct.lhash_st* noundef %call, i8* noundef nonnull %0) #9
  %2 = bitcast i8* %call6 to %struct.CONF_VALUE*
  br label %cleanup

cleanup:                                          ; preds = %cond.true, %if.end, %entry
  %retval.0 = phi %struct.CONF_VALUE* [ null, %entry ], [ %2, %cond.true ], [ null, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7
  ret %struct.CONF_VALUE* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @OPENSSL_LH_retrieve(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.lhash_st* @ossl_check_CONF_VALUE_lh_type(%struct.lhash_st_CONF_VALUE* noundef readnone %lh) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.lhash_st_CONF_VALUE* %lh to %struct.lhash_st*
  ret %struct.lhash_st* %0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_CONF_VALUE* @_CONF_get_section_values(%struct.conf_st* noundef %conf, i8* noundef %section) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.CONF_VALUE* @_CONF_get_section(%struct.conf_st* noundef %conf, i8* noundef %section) #8
  %cmp = icmp eq %struct.CONF_VALUE* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %call, i64 0, i32 2
  %0 = bitcast i8** %value to %struct.stack_st_CONF_VALUE**
  %1 = load %struct.stack_st_CONF_VALUE*, %struct.stack_st_CONF_VALUE** %0, align 8, !tbaa !13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.stack_st_CONF_VALUE* [ %1, %if.end ], [ null, %entry ]
  ret %struct.stack_st_CONF_VALUE* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @_CONF_add_string(%struct.conf_st* nocapture noundef readonly %conf, %struct.CONF_VALUE* nocapture noundef readonly %section, %struct.CONF_VALUE* noundef %value) local_unnamed_addr #0 {
entry:
  %value1 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %section, i64 0, i32 2
  %0 = bitcast i8** %value1 to %struct.stack_st_CONF_VALUE**
  %1 = load %struct.stack_st_CONF_VALUE*, %struct.stack_st_CONF_VALUE** %0, align 8, !tbaa !13
  %section2 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %section, i64 0, i32 0
  %2 = load i8*, i8** %section2, align 8, !tbaa !9
  %section3 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %value, i64 0, i32 0
  store i8* %2, i8** %section3, align 8, !tbaa !9
  %call = tail call fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %1) #8
  %3 = bitcast %struct.CONF_VALUE* %value to i8*
  %call5 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call, i8* noundef %3) #9
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.conf_st, %struct.conf_st* %conf, i64 0, i32 2
  %4 = load %struct.lhash_st_CONF_VALUE*, %struct.lhash_st_CONF_VALUE** %data, align 8, !tbaa !10
  %call6 = tail call fastcc %struct.lhash_st* @ossl_check_CONF_VALUE_lh_type(%struct.lhash_st_CONF_VALUE* noundef %4) #8
  %call8 = tail call i8* @OPENSSL_LH_insert(%struct.lhash_st* noundef %call6, i8* noundef nonnull %3) #9
  %cmp.not = icmp eq i8* %call8, null
  br i1 %cmp.not, label %cleanup, label %if.then9

if.then9:                                         ; preds = %if.end
  %call12 = tail call i8* @OPENSSL_sk_delete_ptr(%struct.stack_st* noundef %call, i8* noundef nonnull %call8) #9
  %name = getelementptr inbounds i8, i8* %call8, i64 8
  %5 = bitcast i8* %name to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 59) #9
  %value13 = getelementptr inbounds i8, i8* %call8, i64 16
  %7 = bitcast i8* %value13 to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !13
  tail call void @CRYPTO_free(i8* noundef %8, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 60) #9
  tail call void @CRYPTO_free(i8* noundef nonnull %call8, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 61) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then9, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.then9 ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_LH_insert(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #2

declare i8* @OPENSSL_sk_delete_ptr(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @_CONF_get_string(%struct.conf_st* noundef readonly %conf, i8* noundef %section, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %vv = alloca %struct.CONF_VALUE, align 8
  %0 = bitcast %struct.CONF_VALUE* %vv to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7
  %cmp = icmp eq i8* %name, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct.conf_st* %conf, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %call = tail call i8* @ossl_safe_getenv(i8* noundef nonnull %name) #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.conf_st, %struct.conf_st* %conf, i64 0, i32 2
  %1 = load %struct.lhash_st_CONF_VALUE*, %struct.lhash_st_CONF_VALUE** %data, align 8, !tbaa !10
  %cmp4 = icmp eq %struct.lhash_st_CONF_VALUE* %1, null
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end3
  %cmp7.not = icmp eq i8* %section, null
  br i1 %cmp7.not, label %if.end26, label %if.then8

if.then8:                                         ; preds = %if.end6
  %name9 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %vv, i64 0, i32 1
  store i8* %name, i8** %name9, align 8, !tbaa !4
  %section10 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %vv, i64 0, i32 0
  store i8* %section, i8** %section10, align 8, !tbaa !9
  %call12 = tail call fastcc %struct.lhash_st* @ossl_check_CONF_VALUE_lh_type(%struct.lhash_st_CONF_VALUE* noundef nonnull %1) #8
  %call14 = call i8* @OPENSSL_LH_retrieve(%struct.lhash_st* noundef %call12, i8* noundef nonnull %0) #9
  %cmp15.not = icmp eq i8* %call14, null
  br i1 %cmp15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.then8
  %value = getelementptr inbounds i8, i8* %call14, i64 16
  %2 = bitcast i8* %value to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !13
  br label %cleanup

if.end17:                                         ; preds = %if.then8
  %call18 = call i32 @strcmp(i8* noundef nonnull %section, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #10
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.end26

if.then20:                                        ; preds = %if.end17
  %call21 = call i8* @ossl_safe_getenv(i8* noundef nonnull %name) #9
  %cmp22.not = icmp eq i8* %call21, null
  br i1 %cmp22.not, label %if.end26, label %cleanup

if.end26:                                         ; preds = %if.end17, %if.then20, %if.end6
  %section27 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %vv, i64 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %section27, align 8, !tbaa !9
  %name28 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %vv, i64 0, i32 1
  store i8* %name, i8** %name28, align 8, !tbaa !4
  %4 = load %struct.lhash_st_CONF_VALUE*, %struct.lhash_st_CONF_VALUE** %data, align 8, !tbaa !10
  %call30 = call fastcc %struct.lhash_st* @ossl_check_CONF_VALUE_lh_type(%struct.lhash_st_CONF_VALUE* noundef %4) #8
  %call32 = call i8* @OPENSSL_LH_retrieve(%struct.lhash_st* noundef %call30, i8* noundef nonnull %0) #9
  %cmp33 = icmp eq i8* %call32, null
  br i1 %cmp33, label %cleanup, label %if.end35

if.end35:                                         ; preds = %if.end26
  %value36 = getelementptr inbounds i8, i8* %call32, i64 16
  %5 = bitcast i8* %value36 to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !13
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then20, %if.end3, %entry, %if.end35, %if.then16, %if.then2
  %retval.0 = phi i8* [ %call, %if.then2 ], [ %3, %if.then16 ], [ %6, %if.end35 ], [ null, %entry ], [ null, %if.end3 ], [ %call21, %if.then20 ], [ null, %if.end26 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7
  ret i8* %retval.0
}

declare i8* @ossl_safe_getenv(i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i32 @_CONF_new_data(%struct.conf_st* noundef %conf) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.conf_st* %conf, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.conf_st, %struct.conf_st* %conf, i64 0, i32 2
  %0 = load %struct.lhash_st_CONF_VALUE*, %struct.lhash_st_CONF_VALUE** %data, align 8, !tbaa !10
  %cmp1 = icmp eq %struct.lhash_st_CONF_VALUE* %0, null
  br i1 %cmp1, label %if.then2, label %if.end10

if.then2:                                         ; preds = %if.end
  %call4 = tail call %struct.lhash_st* @OPENSSL_LH_new(i64 (i8*)* noundef bitcast (i64 (%struct.CONF_VALUE*)* @conf_value_hash to i64 (i8*)*), i32 (i8*, i8*)* noundef bitcast (i32 (%struct.CONF_VALUE*, %struct.CONF_VALUE*)* @conf_value_cmp to i32 (i8*, i8*)*)) #9
  %1 = bitcast %struct.lhash_st_CONF_VALUE** %data to %struct.lhash_st**
  store %struct.lhash_st* %call4, %struct.lhash_st** %1, align 8, !tbaa !10
  %cmp7 = icmp eq %struct.lhash_st* %call4, null
  br i1 %cmp7, label %return, label %if.end10

if.end10:                                         ; preds = %if.then2, %if.end
  br label %return

return:                                           ; preds = %if.then2, %entry, %if.end10
  %retval.0 = phi i32 [ 1, %if.end10 ], [ 0, %entry ], [ 0, %if.then2 ]
  ret i32 %retval.0
}

declare %struct.lhash_st* @OPENSSL_LH_new(i64 (i8*)* noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i64 @conf_value_hash(%struct.CONF_VALUE* nocapture noundef readonly %v) #0 {
entry:
  %section = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %v, i64 0, i32 0
  %0 = load i8*, i8** %section, align 8, !tbaa !9
  %call = tail call i64 @OPENSSL_LH_strhash(i8* noundef %0) #9
  %shl = shl i64 %call, 2
  %name = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %v, i64 0, i32 1
  %1 = load i8*, i8** %name, align 8, !tbaa !4
  %call1 = tail call i64 @OPENSSL_LH_strhash(i8* noundef %1) #9
  %xor = xor i64 %call1, %shl
  ret i64 %xor
}

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal i32 @conf_value_cmp(%struct.CONF_VALUE* nocapture noundef readonly %a, %struct.CONF_VALUE* nocapture noundef readonly %b) #5 {
entry:
  %section = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %a, i64 0, i32 0
  %0 = load i8*, i8** %section, align 8, !tbaa !9
  %section1 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %b, i64 0, i32 0
  %1 = load i8*, i8** %section1, align 8, !tbaa !9
  %cmp.not = icmp eq i8* %0, %1
  br i1 %cmp.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @strcmp(i8* noundef %0, i8* noundef %1) #10
  %cmp4.not = icmp eq i32 %call, 0
  br i1 %cmp4.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.then, %entry
  %name = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %a, i64 0, i32 1
  %2 = load i8*, i8** %name, align 8, !tbaa !4
  %cmp7.not = icmp eq i8* %2, null
  %name16.phi.trans.insert = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %b, i64 0, i32 1
  %.pre = load i8*, i8** %name16.phi.trans.insert, align 8, !tbaa !4
  br i1 %cmp7.not, label %if.end14, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end6
  %cmp9.not = icmp eq i8* %.pre, null
  br i1 %cmp9.not, label %if.end14, label %if.then10

if.then10:                                        ; preds = %land.lhs.true
  %call13 = tail call i32 @strcmp(i8* noundef nonnull %2, i8* noundef nonnull %.pre) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end6, %land.lhs.true
  %3 = phi i8* [ null, %land.lhs.true ], [ %.pre, %if.end6 ]
  %cond = phi i32 [ 1, %land.lhs.true ], [ -1, %if.end6 ]
  %cmp17 = icmp eq i8* %2, %3
  %spec.select = select i1 %cmp17, i32 0, i32 %cond
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then, %if.then10
  %retval.0 = phi i32 [ %call13, %if.then10 ], [ %call, %if.then ], [ %spec.select, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @_CONF_free_data(%struct.conf_st* noundef readonly %conf) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.conf_st* %conf, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %data = getelementptr inbounds %struct.conf_st, %struct.conf_st* %conf, i64 0, i32 2
  %0 = load %struct.lhash_st_CONF_VALUE*, %struct.lhash_st_CONF_VALUE** %data, align 8, !tbaa !10
  %cmp1 = icmp eq %struct.lhash_st_CONF_VALUE* %0, null
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call fastcc %struct.lhash_st* @ossl_check_CONF_VALUE_lh_type(%struct.lhash_st_CONF_VALUE* noundef nonnull %0) #8
  tail call void @OPENSSL_LH_set_down_load(%struct.lhash_st* noundef %call, i64 noundef 0) #9
  %1 = load %struct.lhash_st_CONF_VALUE*, %struct.lhash_st_CONF_VALUE** %data, align 8, !tbaa !10
  tail call fastcc void @lh_CONF_VALUE_doall_LH_CONF_VALUE(%struct.lhash_st_CONF_VALUE* noundef %1, %struct.lhash_st_CONF_VALUE* noundef %1) #8
  %includedir = getelementptr inbounds %struct.conf_st, %struct.conf_st* %conf, i64 0, i32 5
  %2 = load i8*, i8** %includedir, align 8, !tbaa !14
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 150) #9
  %3 = load %struct.lhash_st_CONF_VALUE*, %struct.lhash_st_CONF_VALUE** %data, align 8, !tbaa !10
  %call6 = tail call fastcc %struct.lhash_st* @ossl_check_CONF_VALUE_lh_type(%struct.lhash_st_CONF_VALUE* noundef %3) #8
  tail call void @OPENSSL_LH_doall(%struct.lhash_st* noundef %call6, void (i8*)* noundef bitcast (void (%struct.CONF_VALUE*)* @value_free_stack_doall to void (i8*)*)) #9
  %4 = load %struct.lhash_st_CONF_VALUE*, %struct.lhash_st_CONF_VALUE** %data, align 8, !tbaa !10
  %call9 = tail call fastcc %struct.lhash_st* @ossl_check_CONF_VALUE_lh_type(%struct.lhash_st_CONF_VALUE* noundef %4) #8
  tail call void @OPENSSL_LH_free(%struct.lhash_st* noundef %call9) #9
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  ret void
}

declare void @OPENSSL_LH_set_down_load(%struct.lhash_st* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_CONF_VALUE_doall_LH_CONF_VALUE(%struct.lhash_st_CONF_VALUE* noundef %lh, %struct.lhash_st_CONF_VALUE* noundef %arg) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_CONF_VALUE* %lh to %struct.lhash_st*
  %1 = bitcast %struct.lhash_st_CONF_VALUE* %arg to i8*
  tail call void @OPENSSL_LH_doall_arg(%struct.lhash_st* noundef %0, void (i8*, i8*)* noundef bitcast (void (%struct.CONF_VALUE*, %struct.lhash_st_CONF_VALUE*)* @value_free_hash to void (i8*, i8*)*), i8* noundef %1) #9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @value_free_hash(%struct.CONF_VALUE* noundef %a, %struct.lhash_st_CONF_VALUE* noundef %conf) #0 {
entry:
  %name = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %a, i64 0, i32 1
  %0 = load i8*, i8** %name, align 8, !tbaa !4
  %cmp.not = icmp eq i8* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc %struct.lhash_st* @ossl_check_CONF_VALUE_lh_type(%struct.lhash_st_CONF_VALUE* noundef %conf) #8
  %1 = bitcast %struct.CONF_VALUE* %a to i8*
  %call2 = tail call i8* @OPENSSL_LH_delete(%struct.lhash_st* noundef %call, i8* noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @OPENSSL_LH_doall(%struct.lhash_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @value_free_stack_doall(%struct.CONF_VALUE* noundef %a) #0 {
entry:
  %name = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %a, i64 0, i32 1
  %0 = load i8*, i8** %name, align 8, !tbaa !4
  %cmp.not = icmp eq i8* %0, null
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %a, i64 0, i32 2
  %1 = bitcast i8** %value to %struct.stack_st_CONF_VALUE**
  %2 = load %struct.stack_st_CONF_VALUE*, %struct.stack_st_CONF_VALUE** %1, align 8, !tbaa !13
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %2) #8
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #9
  %cmp223 = icmp sgt i32 %call1, 0
  br i1 %cmp223, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %for.body
  %i.024.in = phi i32 [ %i.024, %for.body ], [ %call1, %if.end ]
  %i.024 = add nsw i32 %i.024.in, -1
  %call4 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.024) #9
  %value5 = getelementptr inbounds i8, i8* %call4, i64 16
  %3 = bitcast i8* %value5 to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !13
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 173) #9
  %name6 = getelementptr inbounds i8, i8* %call4, i64 8
  %5 = bitcast i8* %name6 to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 174) #9
  tail call void @CRYPTO_free(i8* noundef %call4, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 175) #9
  %cmp2 = icmp ugt i32 %i.024.in, 1
  br i1 %cmp2, label %for.body, label %for.end, !llvm.loop !15

for.end:                                          ; preds = %for.body, %if.end
  %call7 = tail call fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %2) #8
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call7) #9
  %section = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %a, i64 0, i32 0
  %7 = load i8*, i8** %section, align 8, !tbaa !9
  tail call void @CRYPTO_free(i8* noundef %7, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 178) #9
  %8 = bitcast %struct.CONF_VALUE* %a to i8*
  tail call void @CRYPTO_free(i8* noundef %8, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 179) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  ret void
}

declare void @OPENSSL_LH_free(%struct.lhash_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.CONF_VALUE* @_CONF_new_section(%struct.conf_st* nocapture noundef readonly %conf, i8* noundef %section) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #9
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_CONF_VALUE*
  %cmp = icmp eq %struct.stack_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef 24, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 190) #9
  %1 = bitcast i8* %call1 to %struct.CONF_VALUE*
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call i64 @strlen(i8* noundef %section) #10
  %conv = shl i64 %call5, 32
  %sext = add i64 %conv, 4294967296
  %conv6 = ashr exact i64 %sext, 32
  %call7 = tail call i8* @CRYPTO_malloc(i64 noundef %conv6, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 193) #9
  %section8 = bitcast i8* %call1 to i8**
  store i8* %call7, i8** %section8, align 8, !tbaa !9
  %cmp9 = icmp eq i8* %call7, null
  br i1 %cmp9, label %err, label %if.end12

if.end12:                                         ; preds = %if.end4
  %call15 = tail call i8* @memcpy(i8* noundef nonnull %call7, i8* noundef %section, i64 noundef %conv6) #9
  %name = getelementptr inbounds i8, i8* %call1, i64 8
  %2 = bitcast i8* %name to i8**
  store i8* null, i8** %2, align 8, !tbaa !4
  %value = getelementptr inbounds i8, i8* %call1, i64 16
  %3 = bitcast i8* %value to %struct.stack_st**
  store %struct.stack_st* %call, %struct.stack_st** %3, align 8, !tbaa !13
  %data = getelementptr inbounds %struct.conf_st, %struct.conf_st* %conf, i64 0, i32 2
  %4 = load %struct.lhash_st_CONF_VALUE*, %struct.lhash_st_CONF_VALUE** %data, align 8, !tbaa !10
  %call16 = tail call fastcc %struct.lhash_st* @ossl_check_CONF_VALUE_lh_type(%struct.lhash_st_CONF_VALUE* noundef %4) #8
  %call18 = tail call i8* @OPENSSL_LH_insert(%struct.lhash_st* noundef %call16, i8* noundef nonnull %call1) #9
  %cmp19.not = icmp eq i8* %call18, null
  br i1 %cmp19.not, label %lor.lhs.false, label %err

lor.lhs.false:                                    ; preds = %if.end12
  %5 = load %struct.lhash_st_CONF_VALUE*, %struct.lhash_st_CONF_VALUE** %data, align 8, !tbaa !10
  %call22 = tail call fastcc %struct.lhash_st* @ossl_check_CONF_VALUE_lh_type(%struct.lhash_st_CONF_VALUE* noundef %5) #8
  %call23 = tail call i32 @OPENSSL_LH_error(%struct.lhash_st* noundef %call22) #9
  %cmp24 = icmp sgt i32 %call23, 0
  br i1 %cmp24, label %err, label %cleanup

err:                                              ; preds = %if.end12, %lor.lhs.false, %if.end4, %if.end, %entry
  %v.0 = phi %struct.CONF_VALUE* [ null, %entry ], [ null, %if.end ], [ %1, %if.end4 ], [ %1, %if.end12 ], [ %1, %lor.lhs.false ]
  %call28 = tail call fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %0) #8
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call28) #9
  %cmp29.not = icmp eq %struct.CONF_VALUE* %v.0, null
  br i1 %cmp29.not, label %if.end33, label %if.then31

if.then31:                                        ; preds = %err
  %section32 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %v.0, i64 0, i32 0
  %6 = load i8*, i8** %section32, align 8, !tbaa !9
  tail call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 208) #9
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %err
  %7 = bitcast %struct.CONF_VALUE* %v.0 to i8*
  tail call void @CRYPTO_free(i8* noundef %7, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 209) #9
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.end33
  %retval.0 = phi %struct.CONF_VALUE* [ null, %if.end33 ], [ %1, %lor.lhs.false ]
  ret %struct.CONF_VALUE* %retval.0
}

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

declare i32 @OPENSSL_LH_error(%struct.lhash_st* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

declare i64 @OPENSSL_LH_strhash(i8* noundef) local_unnamed_addr #2

declare void @OPENSSL_LH_doall_arg(%struct.lhash_st* noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare i8* @OPENSSL_LH_delete(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!9 = !{!5, !6, i64 0}
!10 = !{!11, !6, i64 16}
!11 = !{!"conf_st", !6, i64 0, !6, i64 8, !6, i64 16, !12, i64 24, !12, i64 28, !6, i64 32, !6, i64 40}
!12 = !{!"int", !7, i64 0}
!13 = !{!5, !6, i64 16}
!14 = !{!11, !6, i64 32}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
