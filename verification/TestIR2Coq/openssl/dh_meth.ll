; ModuleID = 'crypto/dh/dh_meth.c'
source_filename = "crypto/dh/dh_meth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dh_method = type { i8*, i32 (%struct.dh_st*)*, i32 (i8*, %struct.bignum_st*, %struct.dh_st*)*, i32 (%struct.dh_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dh_st*)*, i32 (%struct.dh_st*)*, i32, i8*, i32 (%struct.dh_st*, i32, i32, %struct.bn_gencb_st*)* }
%struct.bignum_st = type opaque
%struct.dh_st = type { i32, i32, %struct.ffc_params_st, i32, %struct.bignum_st*, %struct.bignum_st*, i32, %struct.bn_mont_ctx_st*, i32, %struct.crypto_ex_data_st, %struct.engine_st*, %struct.ossl_lib_ctx_st*, %struct.dh_method*, i8*, i64 }
%struct.ffc_params_st = type { %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i64, i32, i32, i32, i32, i32, i8*, i8* }
%struct.bn_mont_ctx_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.engine_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type opaque

@.str = private unnamed_addr constant [20 x i8] c"crypto/dh/dh_meth.c\00", align 1
@__func__.DH_meth_new = private unnamed_addr constant [12 x i8] c"DH_meth_new\00", align 1
@__func__.DH_meth_dup = private unnamed_addr constant [12 x i8] c"DH_meth_dup\00", align 1
@__func__.DH_meth_set1_name = private unnamed_addr constant [18 x i8] c"DH_meth_set1_name\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.dh_method* @DH_meth_new(i8* noundef %name, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 72, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 22) #5
  %cmp.not = icmp eq i8* %call, null
  br i1 %cmp.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast i8* %call to %struct.dh_method*
  %flags1 = getelementptr inbounds i8, i8* %call, i64 48
  %1 = bitcast i8* %flags1 to i32*
  store i32 %flags, i32* %1, align 8, !tbaa !4
  %call2 = tail call i8* @CRYPTO_strdup(i8* noundef %name, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 27) #5
  %name3 = bitcast i8* %call to i8**
  store i8* %call2, i8** %name3, align 8, !tbaa !10
  %cmp5.not = icmp eq i8* %call2, null
  br i1 %cmp5.not, label %if.end, label %cleanup

if.end:                                           ; preds = %if.then
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 31) #5
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 34, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.DH_meth_new, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end7
  %retval.0 = phi %struct.dh_method* [ null, %if.end7 ], [ %0, %if.then ]
  ret %struct.dh_method* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @DH_meth_free(%struct.dh_method* noundef %dhm) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.dh_method* %dhm, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.dh_method, %struct.dh_method* %dhm, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8, !tbaa !10
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 41) #5
  %1 = bitcast %struct.dh_method* %dhm to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 42) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.dh_method* @DH_meth_dup(%struct.dh_method* noundef %dhm) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 72, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 48) #5
  %cmp.not = icmp eq i8* %call, null
  br i1 %cmp.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast i8* %call to %struct.dh_method*
  %1 = bitcast %struct.dh_method* %dhm to i8*
  %call1 = tail call i8* @memcpy(i8* noundef nonnull %call, i8* noundef %1, i64 noundef 72) #5
  %name = getelementptr inbounds %struct.dh_method, %struct.dh_method* %dhm, i64 0, i32 0
  %2 = load i8*, i8** %name, align 8, !tbaa !10
  %call2 = tail call i8* @CRYPTO_strdup(i8* noundef %2, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 53) #5
  %name3 = bitcast i8* %call to i8**
  store i8* %call2, i8** %name3, align 8, !tbaa !10
  %cmp5.not = icmp eq i8* %call2, null
  br i1 %cmp5.not, label %if.end, label %cleanup

if.end:                                           ; preds = %if.then
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 57) #5
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.DH_meth_dup, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end7
  %retval.0 = phi %struct.dh_method* [ null, %if.end7 ], [ %0, %if.then ]
  ret %struct.dh_method* %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @DH_meth_get0_name(%struct.dh_method* nocapture noundef readonly %dhm) local_unnamed_addr #3 {
entry:
  %name = getelementptr inbounds %struct.dh_method, %struct.dh_method* %dhm, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8, !tbaa !10
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @DH_meth_set1_name(%struct.dh_method* nocapture noundef %dhm, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_strdup(i8* noundef %name, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 71) #5
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 74, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.DH_meth_set1_name, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %name1 = getelementptr inbounds %struct.dh_method, %struct.dh_method* %dhm, i64 0, i32 0
  %0 = load i8*, i8** %name1, align 8, !tbaa !10
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 78) #5
  store i8* %call, i8** %name1, align 8, !tbaa !10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @DH_meth_get_flags(%struct.dh_method* nocapture noundef readonly %dhm) local_unnamed_addr #3 {
entry:
  %flags = getelementptr inbounds %struct.dh_method, %struct.dh_method* %dhm, i64 0, i32 6
  %0 = load i32, i32* %flags, align 8, !tbaa !4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @DH_meth_set_flags(%struct.dh_method* nocapture noundef writeonly %dhm, i32 noundef %flags) local_unnamed_addr #4 {
entry:
  %flags1 = getelementptr inbounds %struct.dh_method, %struct.dh_method* %dhm, i64 0, i32 6
  store i32 %flags, i32* %flags1, align 8, !tbaa !4
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @DH_meth_get0_app_data(%struct.dh_method* nocapture noundef readonly %dhm) local_unnamed_addr #3 {
entry:
  %app_data = getelementptr inbounds %struct.dh_method, %struct.dh_method* %dhm, i64 0, i32 7
  %0 = load i8*, i8** %app_data, align 8, !tbaa !11
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @DH_meth_set0_app_data(%struct.dh_method* nocapture noundef writeonly %dhm, i8* noundef %app_data) local_unnamed_addr #4 {
entry:
  %app_data1 = getelementptr inbounds %struct.dh_method, %struct.dh_method* %dhm, i64 0, i32 7
  store i8* %app_data, i8** %app_data1, align 8, !tbaa !11
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.dh_st*)* @DH_meth_get_generate_key(%struct.dh_method* nocapture noundef readonly %dhm) local_unnamed_addr #3 {
entry:
  %generate_key = getelementptr inbounds %struct.dh_method, %struct.dh_method* %dhm, i64 0, i32 1
  %0 = load i32 (%struct.dh_st*)*, i32 (%struct.dh_st*)** %generate_key, align 8, !tbaa !12
  ret i32 (%struct.dh_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @DH_meth_set_generate_key(%struct.dh_method* nocapture noundef writeonly %dhm, i32 (%struct.dh_st*)* noundef %generate_key) local_unnamed_addr #4 {
entry:
  %generate_key1 = getelementptr inbounds %struct.dh_method, %struct.dh_method* %dhm, i64 0, i32 1
  store i32 (%struct.dh_st*)* %generate_key, i32 (%struct.dh_st*)** %generate_key1, align 8, !tbaa !12
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (i8*, %struct.bignum_st*, %struct.dh_st*)* @DH_meth_get_compute_key(%struct.dh_method* nocapture noundef readonly %dhm) local_unnamed_addr #3 {
entry:
  %compute_key = getelementptr inbounds %struct.dh_method, %struct.dh_method* %dhm, i64 0, i32 2
  %0 = load i32 (i8*, %struct.bignum_st*, %struct.dh_st*)*, i32 (i8*, %struct.bignum_st*, %struct.dh_st*)** %compute_key, align 8, !tbaa !13
  ret i32 (i8*, %struct.bignum_st*, %struct.dh_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @DH_meth_set_compute_key(%struct.dh_method* nocapture noundef writeonly %dhm, i32 (i8*, %struct.bignum_st*, %struct.dh_st*)* noundef %compute_key) local_unnamed_addr #4 {
entry:
  %compute_key1 = getelementptr inbounds %struct.dh_method, %struct.dh_method* %dhm, i64 0, i32 2
  store i32 (i8*, %struct.bignum_st*, %struct.dh_st*)* %compute_key, i32 (i8*, %struct.bignum_st*, %struct.dh_st*)** %compute_key1, align 8, !tbaa !13
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.dh_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)* @DH_meth_get_bn_mod_exp(%struct.dh_method* nocapture noundef readonly %dhm) local_unnamed_addr #3 {
entry:
  %bn_mod_exp = getelementptr inbounds %struct.dh_method, %struct.dh_method* %dhm, i64 0, i32 3
  %0 = load i32 (%struct.dh_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dh_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)** %bn_mod_exp, align 8, !tbaa !14
  ret i32 (%struct.dh_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @DH_meth_set_bn_mod_exp(%struct.dh_method* nocapture noundef writeonly %dhm, i32 (%struct.dh_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)* noundef %bn_mod_exp) local_unnamed_addr #4 {
entry:
  %bn_mod_exp1 = getelementptr inbounds %struct.dh_method, %struct.dh_method* %dhm, i64 0, i32 3
  store i32 (%struct.dh_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)* %bn_mod_exp, i32 (%struct.dh_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)** %bn_mod_exp1, align 8, !tbaa !14
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.dh_st*)* @DH_meth_get_init(%struct.dh_method* nocapture noundef readonly %dhm) local_unnamed_addr #3 {
entry:
  %init = getelementptr inbounds %struct.dh_method, %struct.dh_method* %dhm, i64 0, i32 4
  %0 = load i32 (%struct.dh_st*)*, i32 (%struct.dh_st*)** %init, align 8, !tbaa !15
  ret i32 (%struct.dh_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @DH_meth_set_init(%struct.dh_method* nocapture noundef writeonly %dhm, i32 (%struct.dh_st*)* noundef %init) local_unnamed_addr #4 {
entry:
  %init1 = getelementptr inbounds %struct.dh_method, %struct.dh_method* %dhm, i64 0, i32 4
  store i32 (%struct.dh_st*)* %init, i32 (%struct.dh_st*)** %init1, align 8, !tbaa !15
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.dh_st*)* @DH_meth_get_finish(%struct.dh_method* nocapture noundef readonly %dhm) local_unnamed_addr #3 {
entry:
  %finish = getelementptr inbounds %struct.dh_method, %struct.dh_method* %dhm, i64 0, i32 5
  %0 = load i32 (%struct.dh_st*)*, i32 (%struct.dh_st*)** %finish, align 8, !tbaa !16
  ret i32 (%struct.dh_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @DH_meth_set_finish(%struct.dh_method* nocapture noundef writeonly %dhm, i32 (%struct.dh_st*)* noundef %finish) local_unnamed_addr #4 {
entry:
  %finish1 = getelementptr inbounds %struct.dh_method, %struct.dh_method* %dhm, i64 0, i32 5
  store i32 (%struct.dh_st*)* %finish, i32 (%struct.dh_st*)** %finish1, align 8, !tbaa !16
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.dh_st*, i32, i32, %struct.bn_gencb_st*)* @DH_meth_get_generate_params(%struct.dh_method* nocapture noundef readonly %dhm) local_unnamed_addr #3 {
entry:
  %generate_params = getelementptr inbounds %struct.dh_method, %struct.dh_method* %dhm, i64 0, i32 8
  %0 = load i32 (%struct.dh_st*, i32, i32, %struct.bn_gencb_st*)*, i32 (%struct.dh_st*, i32, i32, %struct.bn_gencb_st*)** %generate_params, align 8, !tbaa !17
  ret i32 (%struct.dh_st*, i32, i32, %struct.bn_gencb_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @DH_meth_set_generate_params(%struct.dh_method* nocapture noundef writeonly %dhm, i32 (%struct.dh_st*, i32, i32, %struct.bn_gencb_st*)* noundef %generate_params) local_unnamed_addr #4 {
entry:
  %generate_params1 = getelementptr inbounds %struct.dh_method, %struct.dh_method* %dhm, i64 0, i32 8
  store i32 (%struct.dh_st*, i32, i32, %struct.bn_gencb_st*)* %generate_params, i32 (%struct.dh_st*, i32, i32, %struct.bn_gencb_st*)** %generate_params1, align 8, !tbaa !17
  ret i32 1
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 48}
!5 = !{!"dh_method", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !9, i64 48, !6, i64 56, !6, i64 64}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!5, !6, i64 0}
!11 = !{!5, !6, i64 56}
!12 = !{!5, !6, i64 8}
!13 = !{!5, !6, i64 16}
!14 = !{!5, !6, i64 24}
!15 = !{!5, !6, i64 32}
!16 = !{!5, !6, i64 40}
!17 = !{!5, !6, i64 64}
