; ModuleID = 'test/p_test.c'
source_filename = "test/p_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_core_handle_st = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.ossl_dispatch_st = type { i32, void ()* }
%struct.ossl_item_st = type { i32, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_md_st = type opaque
%struct.evp_md_ctx_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.engine_st = type opaque

@c_gettable_params = internal unnamed_addr global %struct.ossl_param_st* (%struct.ossl_core_handle_st*)* null, align 8
@c_get_params = internal unnamed_addr global i32 (%struct.ossl_core_handle_st*, %struct.ossl_param_st*)* null, align 8
@c_new_error = internal unnamed_addr global void (%struct.ossl_core_handle_st*)* null, align 8
@c_set_error_debug = internal unnamed_addr global void (%struct.ossl_core_handle_st*, i8*, i32, i8*)* null, align 8
@c_vset_error = internal unnamed_addr global void (%struct.ossl_core_handle_st*, i32, i8*, %struct.__va_list_tag*)* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"test/p_test.c\00", align 1
@__func__.p_test_init = private unnamed_addr constant [12 x i8] c"p_test_init\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"SHA2-256\00", align 1
@p_test_table = internal constant [5 x %struct.ossl_dispatch_st] [%struct.ossl_dispatch_st { i32 1025, void ()* bitcast (%struct.ossl_param_st* (i8*)* @p_gettable_params to void ()*) }, %struct.ossl_dispatch_st { i32 1026, void ()* bitcast (i32 (i8*, %struct.ossl_param_st*)* @p_get_params to void ()*) }, %struct.ossl_dispatch_st { i32 1029, void ()* bitcast (%struct.ossl_item_st* (i8*)* @p_get_reason_strings to void ()*) }, %struct.ossl_dispatch_st { i32 1024, void ()* bitcast (void (i8*)* @p_teardown to void ()*) }, %struct.ossl_dispatch_st zeroinitializer], align 16
@p_param_types = internal constant [3 x %struct.ossl_param_st] [%struct.ossl_param_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 4, i8* null, i64 0, i64 0 }, %struct.ossl_param_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 2, i8* null, i64 0, i64 0 }, %struct.ossl_param_st zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"greeting\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"digest-check\00", align 1
@p_get_params.opensslv = internal global i8* null, align 8
@p_get_params.provname = internal global i8* null, align 8
@p_get_params.greeting = internal global i8* null, align 8
@p_get_params.counter_request = internal global [4 x %struct.ossl_param_st] [%struct.ossl_param_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i32 6, i8* bitcast (i8** @p_get_params.opensslv to i8*), i64 8, i64 0 }, %struct.ossl_param_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 6, i8* bitcast (i8** @p_get_params.provname to i8*), i64 8, i64 0 }, %struct.ossl_param_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 6, i8* bitcast (i8** @p_get_params.greeting to i8*), i64 8, i64 0 }, %struct.ossl_param_st zeroinitializer], align 16
@.str.4 = private unnamed_addr constant [16 x i8] c"openssl-version\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"provider-name\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Hello OpenSSL %.20s, greetings from %s!\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Howdy stranger...\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"MD4\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Hello world\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"legacy\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"p_test\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"stop-property-mirror\00", align 1
@p_get_reason_strings.reason_strings = internal constant [4 x %struct.ossl_item_st] [%struct.ossl_item_st { i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0) }, %struct.ossl_item_st { i32 2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i32 0, i32 0) }, %struct.ossl_item_st { i32 3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i32 0, i32 0) }, %struct.ossl_item_st zeroinitializer], align 16
@.str.15 = private unnamed_addr constant [20 x i8] c"dummy reason string\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"Can't create child library context\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"Can't load default provider\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @p_test_init(%struct.ossl_core_handle_st* noundef %handle, %struct.ossl_dispatch_st* noundef %oin, %struct.ossl_dispatch_st** nocapture noundef writeonly %out, i8** nocapture noundef writeonly %provctx) local_unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %in.0 = phi %struct.ossl_dispatch_st* [ %oin, %entry ], [ %incdec.ptr, %for.inc ]
  %function_id = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %in.0, i64 0, i32 0
  %0 = load i32, i32* %function_id, align 8, !tbaa !3
  switch i32 %0, label %for.inc [
    i32 0, label %for.end
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 5, label %sw.bb4
    i32 6, label %sw.bb6
    i32 7, label %sw.bb8
  ]

sw.bb:                                            ; preds = %for.cond
  %call = tail call fastcc %struct.ossl_param_st* (%struct.ossl_core_handle_st*)* @OSSL_FUNC_core_gettable_params(%struct.ossl_dispatch_st* noundef nonnull %in.0) #8
  store %struct.ossl_param_st* (%struct.ossl_core_handle_st*)* %call, %struct.ossl_param_st* (%struct.ossl_core_handle_st*)** @c_gettable_params, align 8, !tbaa !9
  br label %for.inc

sw.bb2:                                           ; preds = %for.cond
  %call3 = tail call fastcc i32 (%struct.ossl_core_handle_st*, %struct.ossl_param_st*)* @OSSL_FUNC_core_get_params(%struct.ossl_dispatch_st* noundef nonnull %in.0) #8
  store i32 (%struct.ossl_core_handle_st*, %struct.ossl_param_st*)* %call3, i32 (%struct.ossl_core_handle_st*, %struct.ossl_param_st*)** @c_get_params, align 8, !tbaa !9
  br label %for.inc

sw.bb4:                                           ; preds = %for.cond
  %call5 = tail call fastcc void (%struct.ossl_core_handle_st*)* @OSSL_FUNC_core_new_error(%struct.ossl_dispatch_st* noundef nonnull %in.0) #8
  store void (%struct.ossl_core_handle_st*)* %call5, void (%struct.ossl_core_handle_st*)** @c_new_error, align 8, !tbaa !9
  br label %for.inc

sw.bb6:                                           ; preds = %for.cond
  %call7 = tail call fastcc void (%struct.ossl_core_handle_st*, i8*, i32, i8*)* @OSSL_FUNC_core_set_error_debug(%struct.ossl_dispatch_st* noundef nonnull %in.0) #8
  store void (%struct.ossl_core_handle_st*, i8*, i32, i8*)* %call7, void (%struct.ossl_core_handle_st*, i8*, i32, i8*)** @c_set_error_debug, align 8, !tbaa !9
  br label %for.inc

sw.bb8:                                           ; preds = %for.cond
  %call9 = tail call fastcc void (%struct.ossl_core_handle_st*, i32, i8*, %struct.__va_list_tag*)* @OSSL_FUNC_core_vset_error(%struct.ossl_dispatch_st* noundef nonnull %in.0) #8
  store void (%struct.ossl_core_handle_st*, i32, i8*, %struct.__va_list_tag*)* %call9, void (%struct.ossl_core_handle_st*, i32, i8*, %struct.__va_list_tag*)** @c_vset_error, align 8, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.cond, %sw.bb, %sw.bb2, %sw.bb4, %sw.bb6, %sw.bb8
  %incdec.ptr = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %in.0, i64 1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %call10 = tail call noalias i8* @malloc(i64 noundef 32) #9
  %cmp11 = icmp eq i8* %call10, null
  br i1 %cmp11, label %cleanup29, label %if.end

if.end:                                           ; preds = %for.end
  %call12 = tail call noalias i8* @strdup(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)) #9
  %thisfile = bitcast i8* %call10 to i8**
  store i8* %call12, i8** %thisfile, align 8, !tbaa !12
  %call13 = tail call noalias i8* @strdup(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.p_test_init, i64 0, i64 0)) #9
  %thisfunc = getelementptr inbounds i8, i8* %call10, i64 8
  %1 = bitcast i8* %thisfunc to i8**
  store i8* %call13, i8** %1, align 8, !tbaa !14
  %handle14 = getelementptr inbounds i8, i8* %call10, i64 16
  %2 = bitcast i8* %handle14 to %struct.ossl_core_handle_st**
  store %struct.ossl_core_handle_st* %handle, %struct.ossl_core_handle_st** %2, align 8, !tbaa !15
  %call15 = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new_child(%struct.ossl_core_handle_st* noundef %handle, %struct.ossl_dispatch_st* noundef %oin) #9
  %libctx = getelementptr inbounds i8, i8* %call10, i64 24
  %3 = bitcast i8* %libctx to %struct.ossl_lib_ctx_st**
  store %struct.ossl_lib_ctx_st* %call15, %struct.ossl_lib_ctx_st** %3, align 8, !tbaa !16
  %cmp17 = icmp eq %struct.ossl_lib_ctx_st* %call15, null
  br i1 %cmp17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end
  tail call void (i32, i32, i8*, i32, i8*, i8*, ...) @p_set_error(i32 undef, i32 noundef 2, i8* noundef %call12, i32 noundef 280, i8* noundef %call13, i8* undef) #8
  tail call void @p_teardown(i8* noundef nonnull %call10) #8
  br label %cleanup29

if.end21:                                         ; preds = %if.end
  %call23 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef nonnull %call15, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* noundef null) #9
  %cmp24.not = icmp eq %struct.evp_md_st* %call23, null
  br i1 %cmp24.not, label %cleanup.cont, label %if.then25

if.then25:                                        ; preds = %if.end21
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef nonnull %call23) #9
  tail call void @p_teardown(i8* noundef nonnull %call10) #8
  br label %cleanup29

cleanup.cont:                                     ; preds = %if.end21
  tail call void (i32, i32, i8*, i32, i8*, i8*, ...) @p_set_error(i32 undef, i32 noundef 1, i8* noundef %call12, i32 noundef 303, i8* noundef %call13, i8* undef) #8
  store i8* %call10, i8** %provctx, align 8, !tbaa !9
  store %struct.ossl_dispatch_st* getelementptr inbounds ([5 x %struct.ossl_dispatch_st], [5 x %struct.ossl_dispatch_st]* @p_test_table, i64 0, i64 0), %struct.ossl_dispatch_st** %out, align 8, !tbaa !9
  br label %cleanup29

cleanup29:                                        ; preds = %if.then25, %for.end, %cleanup.cont, %if.then18
  %retval.1 = phi i32 [ 0, %if.then18 ], [ 1, %cleanup.cont ], [ 0, %if.then25 ], [ 0, %for.end ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_param_st* (%struct.ossl_core_handle_st*)* @OSSL_FUNC_core_gettable_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #2 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_param_st* (%struct.ossl_core_handle_st*)**
  %1 = load %struct.ossl_param_st* (%struct.ossl_core_handle_st*)*, %struct.ossl_param_st* (%struct.ossl_core_handle_st*)** %0, align 8, !tbaa !17
  ret %struct.ossl_param_st* (%struct.ossl_core_handle_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (%struct.ossl_core_handle_st*, %struct.ossl_param_st*)* @OSSL_FUNC_core_get_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #2 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (%struct.ossl_core_handle_st*, %struct.ossl_param_st*)**
  %1 = load i32 (%struct.ossl_core_handle_st*, %struct.ossl_param_st*)*, i32 (%struct.ossl_core_handle_st*, %struct.ossl_param_st*)** %0, align 8, !tbaa !17
  ret i32 (%struct.ossl_core_handle_st*, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc void (%struct.ossl_core_handle_st*)* @OSSL_FUNC_core_new_error(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #2 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to void (%struct.ossl_core_handle_st*)**
  %1 = load void (%struct.ossl_core_handle_st*)*, void (%struct.ossl_core_handle_st*)** %0, align 8, !tbaa !17
  ret void (%struct.ossl_core_handle_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc void (%struct.ossl_core_handle_st*, i8*, i32, i8*)* @OSSL_FUNC_core_set_error_debug(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #2 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to void (%struct.ossl_core_handle_st*, i8*, i32, i8*)**
  %1 = load void (%struct.ossl_core_handle_st*, i8*, i32, i8*)*, void (%struct.ossl_core_handle_st*, i8*, i32, i8*)** %0, align 8, !tbaa !17
  ret void (%struct.ossl_core_handle_st*, i8*, i32, i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc void (%struct.ossl_core_handle_st*, i32, i8*, %struct.__va_list_tag*)* @OSSL_FUNC_core_vset_error(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #2 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to void (%struct.ossl_core_handle_st*, i32, i8*, %struct.__va_list_tag*)**
  %1 = load void (%struct.ossl_core_handle_st*, i32, i8*, %struct.__va_list_tag*)*, void (%struct.ossl_core_handle_st*, i32, i8*, %struct.__va_list_tag*)** %0, align 8, !tbaa !17
  ret void (%struct.ossl_core_handle_st*, i32, i8*, %struct.__va_list_tag*)* %1
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local noalias i8* @strdup(i8* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new_child(%struct.ossl_core_handle_st* noundef, %struct.ossl_dispatch_st* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal void @p_set_error(i32 %lib, i32 noundef %reason, i8* noundef %file, i32 noundef %line, i8* noundef %func, i8* nocapture readnone %fmt, ...) unnamed_addr #0 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %0 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #10
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %0)
  %1 = load void (%struct.ossl_core_handle_st*)*, void (%struct.ossl_core_handle_st*)** @c_new_error, align 8, !tbaa !9
  call void %1(%struct.ossl_core_handle_st* noundef null) #9
  %2 = load void (%struct.ossl_core_handle_st*, i8*, i32, i8*)*, void (%struct.ossl_core_handle_st*, i8*, i32, i8*)** @c_set_error_debug, align 8, !tbaa !9
  call void %2(%struct.ossl_core_handle_st* noundef null, i8* noundef %file, i32 noundef %line, i8* noundef %func) #9
  %3 = load void (%struct.ossl_core_handle_st*, i32, i8*, %struct.__va_list_tag*)*, void (%struct.ossl_core_handle_st*, i32, i8*, %struct.__va_list_tag*)** @c_vset_error, align 8, !tbaa !9
  %4 = and i32 %reason, 8388607
  %5 = or i32 %4, 478150656
  call void %3(%struct.ossl_core_handle_st* noundef null, i32 noundef %5, i8* noundef null, %struct.__va_list_tag* noundef nonnull %arraydecay) #9
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @p_teardown(i8* noundef %provctx) #0 {
entry:
  %libctx = getelementptr inbounds i8, i8* %provctx, i64 24
  %0 = bitcast i8* %libctx to %struct.ossl_lib_ctx_st**
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %0, align 8, !tbaa !16
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %1) #9
  %thisfile = bitcast i8* %provctx to i8**
  %2 = load i8*, i8** %thisfile, align 8, !tbaa !12
  tail call void @free(i8* noundef %2) #9
  %thisfunc = getelementptr inbounds i8, i8* %provctx, i64 8
  %3 = bitcast i8* %thisfunc to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !14
  tail call void @free(i8* noundef %4) #9
  tail call void @free(i8* noundef %provctx) #9
  ret void
}

declare dso_local %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #4

declare dso_local void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal %struct.ossl_param_st* @p_gettable_params(i8* nocapture noundef readnone %_) #6 {
entry:
  ret %struct.ossl_param_st* getelementptr inbounds ([3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* @p_param_types, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @p_get_params(i8* nocapture noundef readonly %provctx, %struct.ossl_param_st* nocapture noundef %params) #0 {
entry:
  %buf = alloca [256 x i8], align 16
  %out = alloca [16 x i8], align 16
  %handle = getelementptr inbounds i8, i8* %provctx, i64 16
  %0 = bitcast i8* %handle to %struct.ossl_core_handle_st**
  %1 = load %struct.ossl_core_handle_st*, %struct.ossl_core_handle_st** %0, align 8, !tbaa !15
  %libctx85 = getelementptr inbounds i8, i8* %provctx, i64 24
  %2 = bitcast i8* %libctx85 to %struct.ossl_lib_ctx_st**
  %3 = getelementptr inbounds [16 x i8], [16 x i8]* %out, i64 0, i64 0
  %thisfile = bitcast i8* %provctx to i8**
  %thisfunc = getelementptr inbounds i8, i8* %provctx, i64 8
  %4 = bitcast i8* %thisfunc to i8**
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i64 0, i64 0
  br label %land.rhs

land.rhs:                                         ; preds = %entry, %for.inc
  %p.0149 = phi %struct.ossl_param_st* [ %params, %entry ], [ %incdec.ptr, %for.inc ]
  %key = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.0149, i64 0, i32 0
  %6 = load i8*, i8** %key, align 8, !tbaa !18
  %cmp.not = icmp eq i8* %6, null
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %land.rhs
  %call = call i32 @strcmp(i8* noundef nonnull %6, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #11
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.else23

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %5) #10
  store i8* null, i8** @p_get_params.greeting, align 8, !tbaa !9
  store i8* null, i8** @p_get_params.provname, align 8, !tbaa !9
  store i8* null, i8** @p_get_params.opensslv, align 8, !tbaa !9
  %7 = load i32 (%struct.ossl_core_handle_st*, %struct.ossl_param_st*)*, i32 (%struct.ossl_core_handle_st*, %struct.ossl_param_st*)** @c_get_params, align 8, !tbaa !9
  %call3 = call i32 %7(%struct.ossl_core_handle_st* noundef %1, %struct.ossl_param_st* noundef getelementptr inbounds ([4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* @p_get_params.counter_request, i64 0, i64 0)) #9
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.else11, label %if.then5

if.then5:                                         ; preds = %if.then
  %8 = load i8*, i8** @p_get_params.greeting, align 8, !tbaa !9
  %tobool6.not = icmp eq i8* %8, null
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then5
  %call8 = call i8* @strcpy(i8* noundef nonnull %5, i8* noundef nonnull %8) #9
  br label %if.end14

if.else:                                          ; preds = %if.then5
  %9 = load i8**, i8*** bitcast (i8** getelementptr inbounds ([4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* @p_get_params.counter_request, i64 0, i64 0, i32 2) to i8***), align 16, !tbaa !21
  %10 = load i8*, i8** %9, align 8, !tbaa !9
  %11 = load i8**, i8*** bitcast (i8** getelementptr inbounds ([4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* @p_get_params.counter_request, i64 0, i64 1, i32 2) to i8***), align 8, !tbaa !21
  %12 = load i8*, i8** %11, align 8, !tbaa !9
  %call10 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i8* noundef %10, i8* noundef %12) #9
  br label %if.end14

if.else11:                                        ; preds = %if.then
  %call13 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0)) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then7, %if.else, %if.else11
  %call16 = call i64 @strlen(i8* noundef nonnull %5) #11
  %add = add i64 %call16, 1
  %return_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.0149, i64 0, i32 4
  store i64 %add, i64* %return_size, align 8, !tbaa !22
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.0149, i64 0, i32 3
  %13 = load i64, i64* %data_size, align 8, !tbaa !23
  %cmp17.not = icmp ult i64 %13, %add
  br i1 %cmp17.not, label %if.end22, label %if.then18

if.then18:                                        ; preds = %if.end14
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.0149, i64 0, i32 2
  %14 = load i8*, i8** %data, align 8, !tbaa !21
  %call20 = call i8* @strcpy(i8* noundef %14, i8* noundef nonnull %5) #9
  br label %if.end22

if.end22:                                         ; preds = %if.end14, %if.then18
  %ok.1 = phi i32 [ 1, %if.then18 ], [ 0, %if.end14 ]
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %5) #10
  br label %for.inc

if.else23:                                        ; preds = %for.body
  %call25 = call i32 @strcmp(i8* noundef nonnull %6, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)) #11
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.else80

if.then27:                                        ; preds = %if.else23
  %15 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %2, align 8, !tbaa !16
  %call28 = call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %15, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef null) #9
  %call29 = call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #9
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #10
  %16 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %2, align 8, !tbaa !16
  %call31 = call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef %16, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0)) #9
  %cmp32 = icmp eq %struct.ossl_provider_st* %call31, null
  br i1 %cmp32, label %if.end37.thread, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then27
  %17 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %2, align 8, !tbaa !16
  %call34 = call i32 @OSSL_PROVIDER_available(%struct.ossl_lib_ctx_st* noundef %17, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0)) #9
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37.thread, label %land.lhs.true

if.end37.thread:                                  ; preds = %if.then27, %lor.lhs.false
  %18 = load i8*, i8** %thisfile, align 8, !tbaa !12
  %19 = load i8*, i8** %4, align 8, !tbaa !14
  call void (i32, i32, i8*, i32, i8*, i8*, ...) @p_set_error(i32 undef, i32 noundef 3, i8* noundef %18, i32 noundef 152, i8* noundef %19, i8* undef) #8
  br label %if.end71

land.lhs.true:                                    ; preds = %lor.lhs.false
  %20 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %2, align 8, !tbaa !16
  %call40 = call i32 @OSSL_PROVIDER_available(%struct.ossl_lib_ctx_st* noundef %20, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0)) #9
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end71, label %land.lhs.true42

land.lhs.true42:                                  ; preds = %land.lhs.true
  %21 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %2, align 8, !tbaa !16
  %call44 = call i32 @OSSL_PROVIDER_available(%struct.ossl_lib_ctx_st* noundef %21, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)) #9
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end71, label %land.lhs.true46

land.lhs.true46:                                  ; preds = %land.lhs.true42
  %22 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %2, align 8, !tbaa !16
  %call48 = call i32 @OSSL_PROVIDER_available(%struct.ossl_lib_ctx_st* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0)) #9
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end71, label %land.lhs.true50

land.lhs.true50:                                  ; preds = %land.lhs.true46
  %23 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %2, align 8, !tbaa !16
  %call52 = call i32 @OSSL_PROVIDER_available(%struct.ossl_lib_ctx_st* noundef %23, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0)) #9
  %tobool53 = icmp ne i32 %call52, 0
  %cmp55 = icmp ne %struct.evp_md_st* %call28, null
  %or.cond = select i1 %tobool53, i1 %cmp55, i1 false
  %cmp57 = icmp ne %struct.evp_md_ctx_st* %call29, null
  %or.cond97 = select i1 %or.cond, i1 %cmp57, i1 false
  br i1 %or.cond97, label %if.then58, label %if.end71

if.then58:                                        ; preds = %land.lhs.true50
  %call59 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call29, %struct.evp_md_st* noundef nonnull %call28, %struct.engine_st* noundef null) #9
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end71, label %land.lhs.true61

land.lhs.true61:                                  ; preds = %if.then58
  %call62 = call i64 @strlen(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0)) #11
  %call63 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call29, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i64 noundef %call62) #9
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end71, label %land.lhs.true65

land.lhs.true65:                                  ; preds = %land.lhs.true61
  %call67 = call i32 @EVP_DigestFinal(%struct.evp_md_ctx_st* noundef nonnull %call29, i8* noundef nonnull %3, i32* noundef null) #9
  %tobool68.not = icmp ne i32 %call67, 0
  %spec.select = zext i1 %tobool68.not to i32
  br label %if.end71

if.end71:                                         ; preds = %if.end37.thread, %land.lhs.true65, %if.then58, %land.lhs.true61, %land.lhs.true50, %land.lhs.true46, %land.lhs.true42, %land.lhs.true
  %ok.2147 = phi i32 [ 1, %land.lhs.true61 ], [ 1, %if.then58 ], [ 1, %land.lhs.true50 ], [ 1, %land.lhs.true46 ], [ 1, %land.lhs.true42 ], [ 1, %land.lhs.true ], [ 1, %land.lhs.true65 ], [ 0, %if.end37.thread ]
  %digestsuccess.0 = phi i32 [ 0, %land.lhs.true61 ], [ 0, %if.then58 ], [ 0, %land.lhs.true50 ], [ 0, %land.lhs.true46 ], [ 0, %land.lhs.true42 ], [ 0, %land.lhs.true ], [ %spec.select, %land.lhs.true65 ], [ 0, %if.end37.thread ]
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call29) #9
  call void @EVP_MD_free(%struct.evp_md_st* noundef %call28) #9
  %call72 = call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %call31) #9
  %data_size73 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.0149, i64 0, i32 3
  %24 = load i64, i64* %data_size73, align 8, !tbaa !23
  %cmp74 = icmp ugt i64 %24, 3
  br i1 %cmp74, label %if.then75, label %if.end79

if.then75:                                        ; preds = %if.end71
  %data76 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.0149, i64 0, i32 2
  %25 = bitcast i8** %data76 to i32**
  %26 = load i32*, i32** %25, align 8, !tbaa !21
  store i32 %digestsuccess.0, i32* %26, align 4, !tbaa !24
  %return_size77 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.0149, i64 0, i32 4
  store i64 4, i64* %return_size77, align 8, !tbaa !22
  br label %if.end79

if.end79:                                         ; preds = %if.end71, %if.then75
  %ok.3 = phi i32 [ %ok.2147, %if.then75 ], [ 0, %if.end71 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #10
  br label %for.inc

if.else80:                                        ; preds = %if.else23
  %call82 = call i32 @strcmp(i8* noundef nonnull %6, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0)) #11
  %cmp83 = icmp eq i32 %call82, 0
  br i1 %cmp83, label %if.then84, label %for.inc

if.then84:                                        ; preds = %if.else80
  %27 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %2, align 8, !tbaa !16
  %call86 = call i32 @EVP_set_default_properties(%struct.ossl_lib_ctx_st* noundef %27, i8* noundef null) #9
  %data_size87 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.0149, i64 0, i32 3
  %28 = load i64, i64* %data_size87, align 8, !tbaa !23
  %cmp88 = icmp ugt i64 %28, 3
  br i1 %cmp88, label %if.then89, label %for.end

if.then89:                                        ; preds = %if.then84
  %data90 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.0149, i64 0, i32 2
  %29 = bitcast i8** %data90 to i32**
  %30 = load i32*, i32** %29, align 8, !tbaa !21
  store i32 %call86, i32* %30, align 4, !tbaa !24
  %return_size91 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.0149, i64 0, i32 4
  store i64 4, i64* %return_size91, align 8, !tbaa !22
  br label %for.inc

for.inc:                                          ; preds = %if.then89, %if.end22, %if.else80, %if.end79
  %ok.5 = phi i32 [ %ok.1, %if.end22 ], [ %ok.3, %if.end79 ], [ 1, %if.else80 ], [ 1, %if.then89 ]
  %incdec.ptr = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.0149, i64 1
  %tobool.not = icmp eq i32 %ok.5, 0
  br i1 %tobool.not, label %for.end, label %land.rhs, !llvm.loop !25

for.end:                                          ; preds = %if.then84, %for.inc, %land.rhs
  %ok.0.lcssa = phi i32 [ 0, %for.inc ], [ 1, %land.rhs ], [ 0, %if.then84 ]
  ret i32 %ok.0.lcssa
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal %struct.ossl_item_st* @p_get_reason_strings(i8* nocapture noundef readnone %_) #6 {
entry:
  ret %struct.ossl_item_st* getelementptr inbounds ([4 x %struct.ossl_item_st], [4 x %struct.ossl_item_st]* @p_get_reason_strings.reason_strings, i64 0, i64 0)
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #7

declare dso_local %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #4

declare dso_local %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #4

declare dso_local i32 @OSSL_PROVIDER_available(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #4

declare dso_local i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #4

declare dso_local i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare dso_local i32 @EVP_DigestFinal(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #4

declare dso_local void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #4

declare dso_local i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef) local_unnamed_addr #4

declare dso_local i32 @EVP_set_default_properties(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #4

declare dso_local void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !5, i64 0}
!4 = !{!"ossl_dispatch_st", !5, i64 0, !8, i64 8}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"any pointer", !6, i64 0}
!9 = !{!8, !8, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13, !8, i64 0}
!13 = !{!"p_test_ctx", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!14 = !{!13, !8, i64 8}
!15 = !{!13, !8, i64 16}
!16 = !{!13, !8, i64 24}
!17 = !{!4, !8, i64 8}
!18 = !{!19, !8, i64 0}
!19 = !{!"ossl_param_st", !8, i64 0, !5, i64 8, !8, i64 16, !20, i64 24, !20, i64 32}
!20 = !{!"long", !6, i64 0}
!21 = !{!19, !8, i64 16}
!22 = !{!19, !20, i64 32}
!23 = !{!19, !20, i64 24}
!24 = !{!5, !5, i64 0}
!25 = distinct !{!25, !11}
