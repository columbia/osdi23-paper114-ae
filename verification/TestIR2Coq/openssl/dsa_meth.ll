; ModuleID = 'crypto/dsa/dsa_meth.c'
source_filename = "crypto/dsa/dsa_meth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_method = type { i8*, %struct.DSA_SIG_st* (i8*, i32, %struct.dsa_st*)*, i32 (%struct.dsa_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, i32 (i8*, i32, %struct.DSA_SIG_st*, %struct.dsa_st*)*, i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dsa_st*)*, i32 (%struct.dsa_st*)*, i32, i8*, i32 (%struct.dsa_st*, i32, i8*, i32, i32*, i64*, %struct.bn_gencb_st*)*, i32 (%struct.dsa_st*)* }
%struct.DSA_SIG_st = type { %struct.bignum_st*, %struct.bignum_st* }
%struct.bignum_st = type opaque
%struct.dsa_st = type { i32, i32, %struct.ffc_params_st, %struct.bignum_st*, %struct.bignum_st*, i32, %struct.bn_mont_ctx_st*, i32, %struct.crypto_ex_data_st, %struct.dsa_method*, %struct.engine_st*, i8*, %struct.ossl_lib_ctx_st*, i64 }
%struct.ffc_params_st = type { %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i64, i32, i32, i32, i32, i32, i8*, i8* }
%struct.bn_mont_ctx_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.engine_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type opaque

@.str = private unnamed_addr constant [22 x i8] c"crypto/dsa/dsa_meth.c\00", align 1
@__func__.DSA_meth_new = private unnamed_addr constant [13 x i8] c"DSA_meth_new\00", align 1
@__func__.DSA_meth_dup = private unnamed_addr constant [13 x i8] c"DSA_meth_dup\00", align 1
@__func__.DSA_meth_set1_name = private unnamed_addr constant [19 x i8] c"DSA_meth_set1_name\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.dsa_method* @DSA_meth_new(i8* noundef %name, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 96, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 23) #5
  %cmp.not = icmp eq i8* %call, null
  br i1 %cmp.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast i8* %call to %struct.dsa_method*
  %flags1 = getelementptr inbounds i8, i8* %call, i64 64
  %1 = bitcast i8* %flags1 to i32*
  store i32 %flags, i32* %1, align 8, !tbaa !4
  %call2 = tail call i8* @CRYPTO_strdup(i8* noundef %name, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 28) #5
  %name3 = bitcast i8* %call to i8**
  store i8* %call2, i8** %name3, align 8, !tbaa !10
  %cmp5.not = icmp eq i8* %call2, null
  br i1 %cmp5.not, label %if.end, label %cleanup

if.end:                                           ; preds = %if.then
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 32) #5
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.DSA_meth_new, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 10, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end7
  %retval.0 = phi %struct.dsa_method* [ null, %if.end7 ], [ %0, %if.then ]
  ret %struct.dsa_method* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @DSA_meth_free(%struct.dsa_method* noundef %dsam) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.dsa_method* %dsam, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.dsa_method, %struct.dsa_method* %dsam, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8, !tbaa !10
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 42) #5
  %1 = bitcast %struct.dsa_method* %dsam to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 43) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.dsa_method* @DSA_meth_dup(%struct.dsa_method* noundef %dsam) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 96, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 49) #5
  %cmp.not = icmp eq i8* %call, null
  br i1 %cmp.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast i8* %call to %struct.dsa_method*
  %1 = bitcast %struct.dsa_method* %dsam to i8*
  %call1 = tail call i8* @memcpy(i8* noundef nonnull %call, i8* noundef %1, i64 noundef 96) #5
  %name = getelementptr inbounds %struct.dsa_method, %struct.dsa_method* %dsam, i64 0, i32 0
  %2 = load i8*, i8** %name, align 8, !tbaa !10
  %call2 = tail call i8* @CRYPTO_strdup(i8* noundef %2, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 54) #5
  %name3 = bitcast i8* %call to i8**
  store i8* %call2, i8** %name3, align 8, !tbaa !10
  %cmp5.not = icmp eq i8* %call2, null
  br i1 %cmp5.not, label %if.end, label %cleanup

if.end:                                           ; preds = %if.then
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 58) #5
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.DSA_meth_dup, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 10, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end7
  %retval.0 = phi %struct.dsa_method* [ null, %if.end7 ], [ %0, %if.then ]
  ret %struct.dsa_method* %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @DSA_meth_get0_name(%struct.dsa_method* nocapture noundef readonly %dsam) local_unnamed_addr #3 {
entry:
  %name = getelementptr inbounds %struct.dsa_method, %struct.dsa_method* %dsam, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8, !tbaa !10
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @DSA_meth_set1_name(%struct.dsa_method* nocapture noundef %dsam, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_strdup(i8* noundef %name, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 72) #5
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 75, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.DSA_meth_set1_name, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 10, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %name1 = getelementptr inbounds %struct.dsa_method, %struct.dsa_method* %dsam, i64 0, i32 0
  %0 = load i8*, i8** %name1, align 8, !tbaa !10
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 79) #5
  store i8* %call, i8** %name1, align 8, !tbaa !10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @DSA_meth_get_flags(%struct.dsa_method* nocapture noundef readonly %dsam) local_unnamed_addr #3 {
entry:
  %flags = getelementptr inbounds %struct.dsa_method, %struct.dsa_method* %dsam, i64 0, i32 8
  %0 = load i32, i32* %flags, align 8, !tbaa !4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @DSA_meth_set_flags(%struct.dsa_method* nocapture noundef writeonly %dsam, i32 noundef %flags) local_unnamed_addr #4 {
entry:
  %flags1 = getelementptr inbounds %struct.dsa_method, %struct.dsa_method* %dsam, i64 0, i32 8
  store i32 %flags, i32* %flags1, align 8, !tbaa !4
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @DSA_meth_get0_app_data(%struct.dsa_method* nocapture noundef readonly %dsam) local_unnamed_addr #3 {
entry:
  %app_data = getelementptr inbounds %struct.dsa_method, %struct.dsa_method* %dsam, i64 0, i32 9
  %0 = load i8*, i8** %app_data, align 8, !tbaa !11
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @DSA_meth_set0_app_data(%struct.dsa_method* nocapture noundef writeonly %dsam, i8* noundef %app_data) local_unnamed_addr #4 {
entry:
  %app_data1 = getelementptr inbounds %struct.dsa_method, %struct.dsa_method* %dsam, i64 0, i32 9
  store i8* %app_data, i8** %app_data1, align 8, !tbaa !11
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.DSA_SIG_st* (i8*, i32, %struct.dsa_st*)* @DSA_meth_get_sign(%struct.dsa_method* nocapture noundef readonly %dsam) local_unnamed_addr #3 {
entry:
  %dsa_do_sign = getelementptr inbounds %struct.dsa_method, %struct.dsa_method* %dsam, i64 0, i32 1
  %0 = load %struct.DSA_SIG_st* (i8*, i32, %struct.dsa_st*)*, %struct.DSA_SIG_st* (i8*, i32, %struct.dsa_st*)** %dsa_do_sign, align 8, !tbaa !12
  ret %struct.DSA_SIG_st* (i8*, i32, %struct.dsa_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @DSA_meth_set_sign(%struct.dsa_method* nocapture noundef writeonly %dsam, %struct.DSA_SIG_st* (i8*, i32, %struct.dsa_st*)* noundef %sign) local_unnamed_addr #4 {
entry:
  %dsa_do_sign = getelementptr inbounds %struct.dsa_method, %struct.dsa_method* %dsam, i64 0, i32 1
  store %struct.DSA_SIG_st* (i8*, i32, %struct.dsa_st*)* %sign, %struct.DSA_SIG_st* (i8*, i32, %struct.dsa_st*)** %dsa_do_sign, align 8, !tbaa !12
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.dsa_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)* @DSA_meth_get_sign_setup(%struct.dsa_method* nocapture noundef readonly %dsam) local_unnamed_addr #3 {
entry:
  %dsa_sign_setup = getelementptr inbounds %struct.dsa_method, %struct.dsa_method* %dsam, i64 0, i32 2
  %0 = load i32 (%struct.dsa_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, i32 (%struct.dsa_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)** %dsa_sign_setup, align 8, !tbaa !13
  ret i32 (%struct.dsa_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @DSA_meth_set_sign_setup(%struct.dsa_method* nocapture noundef writeonly %dsam, i32 (%struct.dsa_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)* noundef %sign_setup) local_unnamed_addr #4 {
entry:
  %dsa_sign_setup = getelementptr inbounds %struct.dsa_method, %struct.dsa_method* %dsam, i64 0, i32 2
  store i32 (%struct.dsa_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)* %sign_setup, i32 (%struct.dsa_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)** %dsa_sign_setup, align 8, !tbaa !13
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (i8*, i32, %struct.DSA_SIG_st*, %struct.dsa_st*)* @DSA_meth_get_verify(%struct.dsa_method* nocapture noundef readonly %dsam) local_unnamed_addr #3 {
entry:
  %dsa_do_verify = getelementptr inbounds %struct.dsa_method, %struct.dsa_method* %dsam, i64 0, i32 3
  %0 = load i32 (i8*, i32, %struct.DSA_SIG_st*, %struct.dsa_st*)*, i32 (i8*, i32, %struct.DSA_SIG_st*, %struct.dsa_st*)** %dsa_do_verify, align 8, !tbaa !14
  ret i32 (i8*, i32, %struct.DSA_SIG_st*, %struct.dsa_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @DSA_meth_set_verify(%struct.dsa_method* nocapture noundef writeonly %dsam, i32 (i8*, i32, %struct.DSA_SIG_st*, %struct.dsa_st*)* noundef %verify) local_unnamed_addr #4 {
entry:
  %dsa_do_verify = getelementptr inbounds %struct.dsa_method, %struct.dsa_method* %dsam, i64 0, i32 3
  store i32 (i8*, i32, %struct.DSA_SIG_st*, %struct.dsa_st*)* %verify, i32 (i8*, i32, %struct.DSA_SIG_st*, %struct.dsa_st*)** %dsa_do_verify, align 8, !tbaa !14
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)* @DSA_meth_get_mod_exp(%struct.dsa_method* nocapture noundef readonly %dsam) local_unnamed_addr #3 {
entry:
  %dsa_mod_exp = getelementptr inbounds %struct.dsa_method, %struct.dsa_method* %dsam, i64 0, i32 4
  %0 = load i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)** %dsa_mod_exp, align 8, !tbaa !15
  ret i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @DSA_meth_set_mod_exp(%struct.dsa_method* nocapture noundef writeonly %dsam, i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)* noundef %mod_exp) local_unnamed_addr #4 {
entry:
  %dsa_mod_exp = getelementptr inbounds %struct.dsa_method, %struct.dsa_method* %dsam, i64 0, i32 4
  store i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)* %mod_exp, i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)** %dsa_mod_exp, align 8, !tbaa !15
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)* @DSA_meth_get_bn_mod_exp(%struct.dsa_method* nocapture noundef readonly %dsam) local_unnamed_addr #3 {
entry:
  %bn_mod_exp = getelementptr inbounds %struct.dsa_method, %struct.dsa_method* %dsam, i64 0, i32 5
  %0 = load i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)** %bn_mod_exp, align 8, !tbaa !16
  ret i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @DSA_meth_set_bn_mod_exp(%struct.dsa_method* nocapture noundef writeonly %dsam, i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)* noundef %bn_mod_exp) local_unnamed_addr #4 {
entry:
  %bn_mod_exp1 = getelementptr inbounds %struct.dsa_method, %struct.dsa_method* %dsam, i64 0, i32 5
  store i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)* %bn_mod_exp, i32 (%struct.dsa_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)** %bn_mod_exp1, align 8, !tbaa !16
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.dsa_st*)* @DSA_meth_get_init(%struct.dsa_method* nocapture noundef readonly %dsam) local_unnamed_addr #3 {
entry:
  %init = getelementptr inbounds %struct.dsa_method, %struct.dsa_method* %dsam, i64 0, i32 6
  %0 = load i32 (%struct.dsa_st*)*, i32 (%struct.dsa_st*)** %init, align 8, !tbaa !17
  ret i32 (%struct.dsa_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @DSA_meth_set_init(%struct.dsa_method* nocapture noundef writeonly %dsam, i32 (%struct.dsa_st*)* noundef %init) local_unnamed_addr #4 {
entry:
  %init1 = getelementptr inbounds %struct.dsa_method, %struct.dsa_method* %dsam, i64 0, i32 6
  store i32 (%struct.dsa_st*)* %init, i32 (%struct.dsa_st*)** %init1, align 8, !tbaa !17
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.dsa_st*)* @DSA_meth_get_finish(%struct.dsa_method* nocapture noundef readonly %dsam) local_unnamed_addr #3 {
entry:
  %finish = getelementptr inbounds %struct.dsa_method, %struct.dsa_method* %dsam, i64 0, i32 7
  %0 = load i32 (%struct.dsa_st*)*, i32 (%struct.dsa_st*)** %finish, align 8, !tbaa !18
  ret i32 (%struct.dsa_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @DSA_meth_set_finish(%struct.dsa_method* nocapture noundef writeonly %dsam, i32 (%struct.dsa_st*)* noundef %finish) local_unnamed_addr #4 {
entry:
  %finish1 = getelementptr inbounds %struct.dsa_method, %struct.dsa_method* %dsam, i64 0, i32 7
  store i32 (%struct.dsa_st*)* %finish, i32 (%struct.dsa_st*)** %finish1, align 8, !tbaa !18
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.dsa_st*, i32, i8*, i32, i32*, i64*, %struct.bn_gencb_st*)* @DSA_meth_get_paramgen(%struct.dsa_method* nocapture noundef readonly %dsam) local_unnamed_addr #3 {
entry:
  %dsa_paramgen = getelementptr inbounds %struct.dsa_method, %struct.dsa_method* %dsam, i64 0, i32 10
  %0 = load i32 (%struct.dsa_st*, i32, i8*, i32, i32*, i64*, %struct.bn_gencb_st*)*, i32 (%struct.dsa_st*, i32, i8*, i32, i32*, i64*, %struct.bn_gencb_st*)** %dsa_paramgen, align 8, !tbaa !19
  ret i32 (%struct.dsa_st*, i32, i8*, i32, i32*, i64*, %struct.bn_gencb_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @DSA_meth_set_paramgen(%struct.dsa_method* nocapture noundef writeonly %dsam, i32 (%struct.dsa_st*, i32, i8*, i32, i32*, i64*, %struct.bn_gencb_st*)* noundef %paramgen) local_unnamed_addr #4 {
entry:
  %dsa_paramgen = getelementptr inbounds %struct.dsa_method, %struct.dsa_method* %dsam, i64 0, i32 10
  store i32 (%struct.dsa_st*, i32, i8*, i32, i32*, i64*, %struct.bn_gencb_st*)* %paramgen, i32 (%struct.dsa_st*, i32, i8*, i32, i32*, i64*, %struct.bn_gencb_st*)** %dsa_paramgen, align 8, !tbaa !19
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.dsa_st*)* @DSA_meth_get_keygen(%struct.dsa_method* nocapture noundef readonly %dsam) local_unnamed_addr #3 {
entry:
  %dsa_keygen = getelementptr inbounds %struct.dsa_method, %struct.dsa_method* %dsam, i64 0, i32 11
  %0 = load i32 (%struct.dsa_st*)*, i32 (%struct.dsa_st*)** %dsa_keygen, align 8, !tbaa !20
  ret i32 (%struct.dsa_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @DSA_meth_set_keygen(%struct.dsa_method* nocapture noundef writeonly %dsam, i32 (%struct.dsa_st*)* noundef %keygen) local_unnamed_addr #4 {
entry:
  %dsa_keygen = getelementptr inbounds %struct.dsa_method, %struct.dsa_method* %dsam, i64 0, i32 11
  store i32 (%struct.dsa_st*)* %keygen, i32 (%struct.dsa_st*)** %dsa_keygen, align 8, !tbaa !20
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
!4 = !{!5, !9, i64 64}
!5 = !{!"dsa_method", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !9, i64 64, !6, i64 72, !6, i64 80, !6, i64 88}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!5, !6, i64 0}
!11 = !{!5, !6, i64 72}
!12 = !{!5, !6, i64 8}
!13 = !{!5, !6, i64 16}
!14 = !{!5, !6, i64 24}
!15 = !{!5, !6, i64 32}
!16 = !{!5, !6, i64 40}
!17 = !{!5, !6, i64 48}
!18 = !{!5, !6, i64 56}
!19 = !{!5, !6, i64 80}
!20 = !{!5, !6, i64 88}
