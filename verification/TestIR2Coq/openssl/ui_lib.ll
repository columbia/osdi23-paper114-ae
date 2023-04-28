; ModuleID = 'crypto/ui/ui_lib.c'
source_filename = "crypto/ui/ui_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_st = type { %struct.ui_method_st*, %struct.stack_st_UI_STRING*, i8*, %struct.crypto_ex_data_st, i32, i8* }
%struct.ui_method_st = type { i8*, i32 (%struct.ui_st*)*, i32 (%struct.ui_st*, %struct.ui_string_st*)*, i32 (%struct.ui_st*)*, i32 (%struct.ui_st*, %struct.ui_string_st*)*, i32 (%struct.ui_st*)*, i8* (%struct.ui_st*, i8*)*, void (%struct.ui_st*, i8*)*, i8* (%struct.ui_st*, i8*, i8*)*, %struct.crypto_ex_data_st }
%struct.ui_string_st = type { i32, i8*, i32, i8*, i64, %union.anon, i32 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i8*, i8*, i8* }
%struct.stack_st_UI_STRING = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_void = type opaque
%struct.stack_st = type opaque
%struct.anon = type { i32, i32, i8* }

@.str = private unnamed_addr constant [19 x i8] c"crypto/ui/ui_lib.c\00", align 1
@__func__.UI_new_method = private unnamed_addr constant [14 x i8] c"UI_new_method\00", align 1
@__func__.UI_dup_input_string = private unnamed_addr constant [20 x i8] c"UI_dup_input_string\00", align 1
@__func__.UI_dup_verify_string = private unnamed_addr constant [21 x i8] c"UI_dup_verify_string\00", align 1
@__func__.UI_dup_input_boolean = private unnamed_addr constant [21 x i8] c"UI_dup_input_boolean\00", align 1
@__func__.UI_dup_info_string = private unnamed_addr constant [19 x i8] c"UI_dup_info_string\00", align 1
@__func__.UI_dup_error_string = private unnamed_addr constant [20 x i8] c"UI_dup_error_string\00", align 1
@__const.UI_construct_prompt.prompt1 = private unnamed_addr constant [7 x i8] c"Enter \00", align 1
@__const.UI_construct_prompt.prompt2 = private unnamed_addr constant [6 x i8] c" for \00", align 1
@__func__.UI_construct_prompt = private unnamed_addr constant [20 x i8] c"UI_construct_prompt\00", align 1
@__func__.UI_dup_user_data = private unnamed_addr constant [17 x i8] c"UI_dup_user_data\00", align 1
@__func__.UI_get0_result = private unnamed_addr constant [15 x i8] c"UI_get0_result\00", align 1
@__func__.UI_get_result_length = private unnamed_addr constant [21 x i8] c"UI_get_result_length\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"processing\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"opening session\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"writing strings\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"flushing\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"reading strings\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"closing session\00", align 1
@__func__.UI_process = private unnamed_addr constant [11 x i8] c"UI_process\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"while %s\00", align 1
@__func__.UI_ctrl = private unnamed_addr constant [8 x i8] c"UI_ctrl\00", align 1
@__func__.UI_create_method = private unnamed_addr constant [17 x i8] c"UI_create_method\00", align 1
@__func__.UI_set_result_ex = private unnamed_addr constant [17 x i8] c"UI_set_result_ex\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"You must type in %d to %d characters\00", align 1
@__func__.general_allocate_prompt = private unnamed_addr constant [24 x i8] c"general_allocate_prompt\00", align 1
@__func__.general_allocate_boolean = private unnamed_addr constant [25 x i8] c"general_allocate_boolean\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.ui_st* @UI_new() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ui_st* @UI_new_method(%struct.ui_method_st* noundef null) #9
  ret %struct.ui_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.ui_st* @UI_new_method(%struct.ui_method_st* noundef %method) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 56, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 25) #10
  %0 = bitcast i8* %call to %struct.ui_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 28, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.UI_new_method, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 40, i32 noundef 786688, i8* noundef null) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @CRYPTO_THREAD_lock_new() #10
  %lock = getelementptr inbounds i8, i8* %call, i64 48
  %1 = bitcast i8* %lock to i8**
  store i8* %call1, i8** %1, align 8, !tbaa !4
  %cmp3 = icmp eq i8* %call1, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 34, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.UI_new_method, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 40, i32 noundef 786688, i8* noundef null) #10
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 35) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %cmp6 = icmp eq %struct.ui_method_st* %method, null
  br i1 %cmp6, label %if.end9, label %if.end13

if.end9:                                          ; preds = %if.end5
  %call8 = tail call %struct.ui_method_st* @UI_get_default_method() #10
  %cmp10 = icmp eq %struct.ui_method_st* %call8, null
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  %call12 = tail call %struct.ui_method_st* @UI_null() #10
  br label %if.end13

if.end13:                                         ; preds = %if.end5, %if.then11, %if.end9
  %method.addr.1 = phi %struct.ui_method_st* [ %call12, %if.then11 ], [ %call8, %if.end9 ], [ %method, %if.end5 ]
  %meth = bitcast i8* %call to %struct.ui_method_st**
  store %struct.ui_method_st* %method.addr.1, %struct.ui_method_st** %meth, align 8, !tbaa !11
  %ex_data = getelementptr inbounds i8, i8* %call, i64 24
  %2 = bitcast i8* %ex_data to %struct.crypto_ex_data_st*
  %call14 = tail call i32 @CRYPTO_new_ex_data(i32 noundef 11, i8* noundef nonnull %call, %struct.crypto_ex_data_st* noundef nonnull %2) #10
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.then15, label %cleanup

if.then15:                                        ; preds = %if.end13
  tail call void @UI_free(%struct.ui_st* noundef nonnull %0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then15, %if.then4, %if.then
  %retval.0 = phi %struct.ui_st* [ null, %if.then ], [ null, %if.then4 ], [ null, %if.then15 ], [ %0, %if.end13 ]
  ret %struct.ui_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.ui_method_st* @UI_get_default_method() local_unnamed_addr #2

declare %struct.ui_method_st* @UI_null() local_unnamed_addr #2

declare i32 @CRYPTO_new_ex_data(i32 noundef, i8* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @UI_free(%struct.ui_st* noundef %ui) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ui_st* %ui, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.ui_st, %struct.ui_st* %ui, i64 0, i32 4
  %0 = load i32, i32* %flags, align 8, !tbaa !12
  %and = and i32 %0, 2
  %cmp1.not = icmp eq i32 %and, 0
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %meth = getelementptr inbounds %struct.ui_st, %struct.ui_st* %ui, i64 0, i32 0
  %1 = load %struct.ui_method_st*, %struct.ui_method_st** %meth, align 8, !tbaa !11
  %ui_destroy_data = getelementptr inbounds %struct.ui_method_st, %struct.ui_method_st* %1, i64 0, i32 7
  %2 = load void (%struct.ui_st*, i8*)*, void (%struct.ui_st*, i8*)** %ui_destroy_data, align 8, !tbaa !13
  %user_data = getelementptr inbounds %struct.ui_st, %struct.ui_st* %ui, i64 0, i32 2
  %3 = load i8*, i8** %user_data, align 8, !tbaa !15
  tail call void %2(%struct.ui_st* noundef nonnull %ui, i8* noundef %3) #10
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %strings = getelementptr inbounds %struct.ui_st, %struct.ui_st* %ui, i64 0, i32 1
  %4 = load %struct.stack_st_UI_STRING*, %struct.stack_st_UI_STRING** %strings, align 8, !tbaa !16
  %call = tail call fastcc %struct.stack_st* @ossl_check_UI_STRING_sk_type(%struct.stack_st_UI_STRING* noundef %4) #9
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.ui_string_st*)* @free_string to void (i8*)*)) #10
  %5 = bitcast %struct.ui_st* %ui to i8*
  %ex_data = getelementptr inbounds %struct.ui_st, %struct.ui_st* %ui, i64 0, i32 3
  tail call void @CRYPTO_free_ex_data(i32 noundef 11, i8* noundef nonnull %5, %struct.crypto_ex_data_st* noundef nonnull %ex_data) #10
  %lock = getelementptr inbounds %struct.ui_st, %struct.ui_st* %ui, i64 0, i32 5
  %6 = load i8*, i8** %lock, align 8, !tbaa !4
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %6) #10
  tail call void @CRYPTO_free(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 83) #10
  br label %return

return:                                           ; preds = %entry, %if.end3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_UI_STRING_sk_type(%struct.stack_st_UI_STRING* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_UI_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal void @free_string(%struct.ui_string_st* noundef %uis) #0 {
entry:
  %flags = getelementptr inbounds %struct.ui_string_st, %struct.ui_string_st* %uis, i64 0, i32 6
  %0 = load i32, i32* %flags, align 8, !tbaa !17
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %out_string = getelementptr inbounds %struct.ui_string_st, %struct.ui_string_st* %uis, i64 0, i32 1
  %1 = load i8*, i8** %out_string, align 8, !tbaa !20
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 55) #10
  %type = getelementptr inbounds %struct.ui_string_st, %struct.ui_string_st* %uis, i64 0, i32 0
  %2 = load i32, i32* %type, align 8, !tbaa !21
  %cond = icmp eq i32 %2, 3
  br i1 %cond, label %sw.bb, label %if.end

sw.bb:                                            ; preds = %if.then
  %action_desc = getelementptr inbounds %struct.ui_string_st, %struct.ui_string_st* %uis, i64 0, i32 5, i32 0, i32 0
  %3 = load i8*, i8** %action_desc, align 8, !tbaa !22
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 58) #10
  %ok_chars = getelementptr inbounds %struct.ui_string_st, %struct.ui_string_st* %uis, i64 0, i32 5, i32 0, i32 1
  %4 = load i8*, i8** %ok_chars, align 8, !tbaa !22
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 59) #10
  %cancel_chars = getelementptr inbounds %struct.ui_string_st, %struct.ui_string_st* %uis, i64 0, i32 5, i32 0, i32 2
  %5 = load i8*, i8** %cancel_chars, align 8, !tbaa !22
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 60) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb, %entry
  %6 = bitcast %struct.ui_string_st* %uis to i8*
  tail call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 70) #10
  ret void
}

declare void @CRYPTO_free_ex_data(i32 noundef, i8* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @UI_add_input_string(%struct.ui_st* nocapture noundef %ui, i8* noundef %prompt, i32 noundef %flags, i8* noundef %result_buf, i32 noundef %minsize, i32 noundef %maxsize) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @general_allocate_string(%struct.ui_st* noundef %ui, i8* noundef %prompt, i32 noundef 0, i32 noundef 1, i32 noundef %flags, i8* noundef %result_buf, i32 noundef %minsize, i32 noundef %maxsize, i8* noundef null) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @general_allocate_string(%struct.ui_st* nocapture noundef %ui, i8* noundef %prompt, i32 noundef %prompt_freeable, i32 noundef %type, i32 noundef %input_flags, i8* noundef %result_buf, i32 noundef %minsize, i32 noundef %maxsize, i8* noundef %test_buf) unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.ui_string_st* @general_allocate_prompt(i8* noundef %prompt, i32 noundef %prompt_freeable, i32 noundef %type, i32 noundef %input_flags, i8* noundef %result_buf) #9
  %cmp.not = icmp eq %struct.ui_string_st* %call, null
  br i1 %cmp.not, label %if.end15, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @allocate_string_stack(%struct.ui_st* noundef %ui) #9
  %cmp2 = icmp sgt i32 %call1, -1
  br i1 %cmp2, label %if.then3, label %if.end15.sink.split

if.then3:                                         ; preds = %if.then
  %_ = getelementptr inbounds %struct.ui_string_st, %struct.ui_string_st* %call, i64 0, i32 5
  %string_data = bitcast %union.anon* %_ to %struct.anon*
  %result_minsize = bitcast %union.anon* %_ to i32*
  store i32 %minsize, i32* %result_minsize, align 8, !tbaa !22
  %result_maxsize = getelementptr inbounds %struct.anon, %struct.anon* %string_data, i64 0, i32 1
  store i32 %maxsize, i32* %result_maxsize, align 4, !tbaa !22
  %0 = getelementptr inbounds %struct.ui_string_st, %struct.ui_string_st* %call, i64 0, i32 5, i32 0, i32 1
  store i8* %test_buf, i8** %0, align 8, !tbaa !22
  %strings = getelementptr inbounds %struct.ui_st, %struct.ui_st* %ui, i64 0, i32 1
  %1 = load %struct.stack_st_UI_STRING*, %struct.stack_st_UI_STRING** %strings, align 8, !tbaa !16
  %call9 = tail call fastcc %struct.stack_st* @ossl_check_UI_STRING_sk_type(%struct.stack_st_UI_STRING* noundef %1) #9
  %2 = bitcast %struct.ui_string_st* %call to i8*
  %call11 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call9, i8* noundef nonnull %2) #10
  %cmp12 = icmp slt i32 %call11, 1
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.then3
  %dec = add nsw i32 %call11, -1
  br label %if.end15.sink.split

if.end15.sink.split:                              ; preds = %if.then, %if.then13
  %ret.0.ph = phi i32 [ %dec, %if.then13 ], [ -1, %if.then ]
  tail call void @free_string(%struct.ui_string_st* noundef nonnull %call) #9
  br label %if.end15

if.end15:                                         ; preds = %if.end15.sink.split, %if.then3, %entry
  %ret.0 = phi i32 [ %call11, %if.then3 ], [ -1, %entry ], [ %ret.0.ph, %if.end15.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @UI_dup_input_string(%struct.ui_st* nocapture noundef %ui, i8* noundef %prompt, i32 noundef %flags, i8* noundef %result_buf, i32 noundef %minsize, i32 noundef %maxsize) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i8* %prompt, null
  br i1 %cmp.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %prompt, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 212) #10
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.then
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 214, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.UI_dup_input_string, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 40, i32 noundef 786688, i8* noundef null) #10
  br label %cleanup

if.end3:                                          ; preds = %if.then, %entry
  %prompt_copy.0 = phi i8* [ %call, %if.then ], [ null, %entry ]
  %call4 = tail call fastcc i32 @general_allocate_string(%struct.ui_st* noundef %ui, i8* noundef %prompt_copy.0, i32 noundef 1, i32 noundef 1, i32 noundef %flags, i8* noundef %result_buf, i32 noundef %minsize, i32 noundef %maxsize, i8* noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ %call4, %if.end3 ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @UI_add_verify_string(%struct.ui_st* nocapture noundef %ui, i8* noundef %prompt, i32 noundef %flags, i8* noundef %result_buf, i32 noundef %minsize, i32 noundef %maxsize, i8* noundef %test_buf) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @general_allocate_string(%struct.ui_st* noundef %ui, i8* noundef %prompt, i32 noundef 0, i32 noundef 2, i32 noundef %flags, i8* noundef %result_buf, i32 noundef %minsize, i32 noundef %maxsize, i8* noundef %test_buf) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @UI_dup_verify_string(%struct.ui_st* nocapture noundef %ui, i8* noundef %prompt, i32 noundef %flags, i8* noundef %result_buf, i32 noundef %minsize, i32 noundef %maxsize, i8* noundef %test_buf) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i8* %prompt, null
  br i1 %cmp.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %prompt, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 240) #10
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.then
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 242, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.UI_dup_verify_string, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 40, i32 noundef 786688, i8* noundef null) #10
  br label %cleanup

if.end3:                                          ; preds = %if.then, %entry
  %prompt_copy.0 = phi i8* [ %call, %if.then ], [ null, %entry ]
  %call4 = tail call fastcc i32 @general_allocate_string(%struct.ui_st* noundef %ui, i8* noundef %prompt_copy.0, i32 noundef 1, i32 noundef 2, i32 noundef %flags, i8* noundef %result_buf, i32 noundef %minsize, i32 noundef %maxsize, i8* noundef %test_buf) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2
  %retval.0 = phi i32 [ -1, %if.then2 ], [ %call4, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @UI_add_input_boolean(%struct.ui_st* nocapture noundef %ui, i8* noundef %prompt, i8* noundef %action_desc, i8* noundef %ok_chars, i8* noundef %cancel_chars, i32 noundef %flags, i8* noundef %result_buf) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @general_allocate_boolean(%struct.ui_st* noundef %ui, i8* noundef %prompt, i8* noundef %action_desc, i8* noundef %ok_chars, i8* noundef %cancel_chars, i32 noundef 0, i32 noundef %flags, i8* noundef %result_buf) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @general_allocate_boolean(%struct.ui_st* nocapture noundef %ui, i8* noundef %prompt, i8* noundef %action_desc, i8* noundef %ok_chars, i8* noundef %cancel_chars, i32 noundef %prompt_freeable, i32 noundef %input_flags, i8* noundef %result_buf) unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %ok_chars, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 160, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.general_allocate_boolean, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 40, i32 noundef 786690, i8* noundef null) #10
  br label %if.end36

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq i8* %cancel_chars, null
  br i1 %cmp1, label %if.then2, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else
  %0 = load i8, i8* %ok_chars, align 1, !tbaa !22
  %cmp4.not1 = icmp eq i8 %0, 0
  br i1 %cmp4.not1, label %for.end, label %for.body

if.then2:                                         ; preds = %if.else
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 162, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.general_allocate_boolean, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 40, i32 noundef 786690, i8* noundef null) #10
  br label %if.end36

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %1 = phi i8 [ %2, %for.inc ], [ %0, %for.cond.preheader ]
  %p.02 = phi i8* [ %incdec.ptr, %for.inc ], [ %ok_chars, %for.cond.preheader ]
  %conv = sext i8 %1 to i32
  %call = tail call i8* @strchr(i8* noundef nonnull %cancel_chars, i32 noundef %conv) #11
  %cmp7.not = icmp eq i8* %call, null
  br i1 %cmp7.not, label %for.inc, label %if.then9

if.then9:                                         ; preds = %for.body
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 166, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.general_allocate_boolean, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 40, i32 noundef 104, i8* noundef null) #10
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then9
  %incdec.ptr = getelementptr inbounds i8, i8* %p.02, i64 1
  %2 = load i8, i8* %incdec.ptr, align 1, !tbaa !22
  %cmp4.not = icmp eq i8 %2, 0
  br i1 %cmp4.not, label %for.end, label %for.body, !llvm.loop !23

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %call10 = tail call fastcc %struct.ui_string_st* @general_allocate_prompt(i8* noundef %prompt, i32 noundef %prompt_freeable, i32 noundef 3, i32 noundef %input_flags, i8* noundef %result_buf) #9
  %cmp11.not = icmp eq %struct.ui_string_st* %call10, null
  br i1 %cmp11.not, label %if.end36, label %if.then13

if.then13:                                        ; preds = %for.end
  %call14 = tail call fastcc i32 @allocate_string_stack(%struct.ui_st* noundef %ui) #9
  %cmp15 = icmp sgt i32 %call14, -1
  br i1 %cmp15, label %if.then17, label %if.else32

if.then17:                                        ; preds = %if.then13
  %action_desc18 = getelementptr inbounds %struct.ui_string_st, %struct.ui_string_st* %call10, i64 0, i32 5, i32 0, i32 0
  store i8* %action_desc, i8** %action_desc18, align 8, !tbaa !22
  %ok_chars21 = getelementptr inbounds %struct.ui_string_st, %struct.ui_string_st* %call10, i64 0, i32 5, i32 0, i32 1
  store i8* %ok_chars, i8** %ok_chars21, align 8, !tbaa !22
  %cancel_chars24 = getelementptr inbounds %struct.ui_string_st, %struct.ui_string_st* %call10, i64 0, i32 5, i32 0, i32 2
  store i8* %cancel_chars, i8** %cancel_chars24, align 8, !tbaa !22
  %strings = getelementptr inbounds %struct.ui_st, %struct.ui_st* %ui, i64 0, i32 1
  %3 = load %struct.stack_st_UI_STRING*, %struct.stack_st_UI_STRING** %strings, align 8, !tbaa !16
  %call25 = tail call fastcc %struct.stack_st* @ossl_check_UI_STRING_sk_type(%struct.stack_st_UI_STRING* noundef %3) #9
  %4 = bitcast %struct.ui_string_st* %call10 to i8*
  %call27 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call25, i8* noundef nonnull %4) #10
  %cmp28 = icmp slt i32 %call27, 1
  br i1 %cmp28, label %if.then30, label %if.end36

if.then30:                                        ; preds = %if.then17
  %dec = add nsw i32 %call27, -1
  tail call void @free_string(%struct.ui_string_st* noundef nonnull %call10) #9
  br label %if.end36

if.else32:                                        ; preds = %if.then13
  tail call void @free_string(%struct.ui_string_st* noundef nonnull %call10) #9
  br label %if.end36

if.end36:                                         ; preds = %if.then2, %if.else32, %if.then30, %if.then17, %for.end, %if.then
  %ret.0 = phi i32 [ -1, %if.then ], [ -1, %if.then2 ], [ %dec, %if.then30 ], [ %call27, %if.then17 ], [ -1, %if.else32 ], [ -1, %for.end ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @UI_dup_input_boolean(%struct.ui_st* nocapture noundef %ui, i8* noundef %prompt, i8* noundef %action_desc, i8* noundef %ok_chars, i8* noundef %cancel_chars, i32 noundef %flags, i8* noundef %result_buf) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i8* %prompt, null
  br i1 %cmp.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %prompt, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 271) #10
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %err, label %if.end3

if.end3:                                          ; preds = %if.then, %entry
  %prompt_copy.0 = phi i8* [ %call, %if.then ], [ null, %entry ]
  %cmp4.not = icmp eq i8* %action_desc, null
  br i1 %cmp4.not, label %if.end10, label %if.then5

if.then5:                                         ; preds = %if.end3
  %call6 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %action_desc, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 279) #10
  %cmp7 = icmp eq i8* %call6, null
  br i1 %cmp7, label %err, label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end3
  %action_desc_copy.0 = phi i8* [ %call6, %if.then5 ], [ null, %if.end3 ]
  %cmp11.not = icmp eq i8* %ok_chars, null
  br i1 %cmp11.not, label %if.end17, label %if.then12

if.then12:                                        ; preds = %if.end10
  %call13 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %ok_chars, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 287) #10
  %cmp14 = icmp eq i8* %call13, null
  br i1 %cmp14, label %err, label %if.end17

if.end17:                                         ; preds = %if.then12, %if.end10
  %ok_chars_copy.0 = phi i8* [ %call13, %if.then12 ], [ null, %if.end10 ]
  %cmp18.not = icmp eq i8* %cancel_chars, null
  br i1 %cmp18.not, label %if.end24, label %if.then19

if.then19:                                        ; preds = %if.end17
  %call20 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %cancel_chars, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 295) #10
  %cmp21 = icmp eq i8* %call20, null
  br i1 %cmp21, label %err, label %if.end24

if.end24:                                         ; preds = %if.then19, %if.end17
  %cancel_chars_copy.0 = phi i8* [ %call20, %if.then19 ], [ null, %if.end17 ]
  %call25 = tail call fastcc i32 @general_allocate_boolean(%struct.ui_st* noundef %ui, i8* noundef %prompt_copy.0, i8* noundef %action_desc_copy.0, i8* noundef %ok_chars_copy.0, i8* noundef %cancel_chars_copy.0, i32 noundef 1, i32 noundef %flags, i8* noundef %result_buf) #9
  br label %cleanup

err:                                              ; preds = %if.then19, %if.then12, %if.then5, %if.then
  %.sink = phi i32 [ 273, %if.then ], [ 281, %if.then5 ], [ 289, %if.then12 ], [ 297, %if.then19 ]
  %prompt_copy.1 = phi i8* [ null, %if.then ], [ %prompt_copy.0, %if.then5 ], [ %prompt_copy.0, %if.then12 ], [ %prompt_copy.0, %if.then19 ]
  %action_desc_copy.1 = phi i8* [ null, %if.then ], [ null, %if.then5 ], [ %action_desc_copy.0, %if.then12 ], [ %action_desc_copy.0, %if.then19 ]
  %ok_chars_copy.1 = phi i8* [ null, %if.then ], [ null, %if.then5 ], [ null, %if.then12 ], [ %ok_chars_copy.0, %if.then19 ]
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.UI_dup_input_boolean, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 40, i32 noundef 786688, i8* noundef null) #10
  tail call void @CRYPTO_free(i8* noundef %prompt_copy.1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 306) #10
  tail call void @CRYPTO_free(i8* noundef %action_desc_copy.1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 307) #10
  tail call void @CRYPTO_free(i8* noundef %ok_chars_copy.1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 308) #10
  tail call void @CRYPTO_free(i8* noundef null, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 309) #10
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end24
  %retval.0 = phi i32 [ -1, %err ], [ %call25, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @UI_add_info_string(%struct.ui_st* nocapture noundef %ui, i8* noundef %text) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @general_allocate_string(%struct.ui_st* noundef %ui, i8* noundef %text, i32 noundef 0, i32 noundef 4, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @UI_dup_info_string(%struct.ui_st* nocapture noundef %ui, i8* noundef %text) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i8* %text, null
  br i1 %cmp.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %text, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 324) #10
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.then
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 326, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.UI_dup_info_string, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 40, i32 noundef 786688, i8* noundef null) #10
  br label %cleanup

if.end3:                                          ; preds = %if.then, %entry
  %text_copy.0 = phi i8* [ %call, %if.then ], [ null, %entry ]
  %call4 = tail call fastcc i32 @general_allocate_string(%struct.ui_st* noundef %ui, i8* noundef %text_copy.0, i32 noundef 1, i32 noundef 4, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2
  %retval.0 = phi i32 [ -1, %if.then2 ], [ %call4, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @UI_add_error_string(%struct.ui_st* nocapture noundef %ui, i8* noundef %text) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @general_allocate_string(%struct.ui_st* noundef %ui, i8* noundef %text, i32 noundef 0, i32 noundef 5, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @UI_dup_error_string(%struct.ui_st* nocapture noundef %ui, i8* noundef %text) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i8* %text, null
  br i1 %cmp.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %text, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 346) #10
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.then
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 348, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.UI_dup_error_string, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 40, i32 noundef 786688, i8* noundef null) #10
  br label %cleanup

if.end3:                                          ; preds = %if.then, %entry
  %text_copy.0 = phi i8* [ %call, %if.then ], [ null, %entry ]
  %call4 = tail call fastcc i32 @general_allocate_string(%struct.ui_st* noundef %ui, i8* noundef %text_copy.0, i32 noundef 1, i32 noundef 5, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2
  %retval.0 = phi i32 [ -1, %if.then2 ], [ %call4, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @UI_construct_prompt(%struct.ui_st* noundef %ui, i8* noundef %phrase_desc, i8* noundef %object_name) local_unnamed_addr #0 {
entry:
  %prompt1 = alloca [7 x i8], align 1
  %prompt2 = alloca [6 x i8], align 1
  %prompt3 = alloca i16, align 2
  %cmp.not = icmp eq %struct.ui_st* %ui, null
  br i1 %cmp.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %meth = getelementptr inbounds %struct.ui_st, %struct.ui_st* %ui, i64 0, i32 0
  %0 = load %struct.ui_method_st*, %struct.ui_method_st** %meth, align 8, !tbaa !11
  %cmp1.not = icmp eq %struct.ui_method_st* %0, null
  br i1 %cmp1.not, label %if.else, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %ui_construct_prompt = getelementptr inbounds %struct.ui_method_st, %struct.ui_method_st* %0, i64 0, i32 8
  %1 = load i8* (%struct.ui_st*, i8*, i8*)*, i8* (%struct.ui_st*, i8*, i8*)** %ui_construct_prompt, align 8, !tbaa !25
  %cmp4.not = icmp eq i8* (%struct.ui_st*, i8*, i8*)* %1, null
  br i1 %cmp4.not, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true2
  %call = tail call i8* %1(%struct.ui_st* noundef nonnull %ui, i8* noundef %phrase_desc, i8* noundef %object_name) #10
  br label %cleanup54

if.else:                                          ; preds = %land.lhs.true2, %land.lhs.true, %entry
  %2 = getelementptr inbounds [7 x i8], [7 x i8]* %prompt1, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 7, i8* nonnull %2) #12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(7) %2, i8* noundef nonnull align 1 dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @__const.UI_construct_prompt.prompt1, i64 0, i64 0), i64 7, i1 false)
  %3 = getelementptr inbounds [6 x i8], [6 x i8]* %prompt2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %3) #12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %3, i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @__const.UI_construct_prompt.prompt2, i64 0, i64 0), i64 6, i1 false)
  %4 = bitcast i16* %prompt3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %4) #12
  store i16 58, i16* %prompt3, align 2
  %cmp7 = icmp eq i8* %phrase_desc, null
  br i1 %cmp7, label %cleanup.thread, label %if.end

if.end:                                           ; preds = %if.else
  %call9 = tail call i64 @strlen(i8* noundef nonnull %phrase_desc) #11
  %conv = add i64 %call9, 6
  %cmp10.not = icmp eq i8* %object_name, null
  br i1 %cmp10.not, label %if.end18, label %if.then12

if.then12:                                        ; preds = %if.end
  %call13 = tail call i64 @strlen(i8* noundef nonnull %object_name) #11
  %5 = add i64 %call9, 11
  %conv17 = add i64 %5, %call13
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %if.end
  %len.0 = phi i64 [ %conv17, %if.then12 ], [ %conv, %if.end ]
  %add22 = shl i64 %len.0, 32
  %sext = add i64 %add22, 8589934592
  %conv23 = ashr exact i64 %sext, 32
  %call24 = tail call i8* @CRYPTO_malloc(i64 noundef %conv23, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 376) #10
  %cmp25 = icmp eq i8* %call24, null
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end18
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 377, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.UI_construct_prompt, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 40, i32 noundef 786688, i8* noundef null) #10
  br label %cleanup.thread

if.end28:                                         ; preds = %if.end18
  %call31 = call i64 @OPENSSL_strlcpy(i8* noundef nonnull %call24, i8* noundef nonnull %2, i64 noundef %conv23) #10
  %call34 = call i64 @OPENSSL_strlcat(i8* noundef nonnull %call24, i8* noundef nonnull %phrase_desc, i64 noundef %conv23) #10
  br i1 %cmp10.not, label %cleanup, label %if.then37

if.then37:                                        ; preds = %if.end28
  %call41 = call i64 @OPENSSL_strlcat(i8* noundef nonnull %call24, i8* noundef nonnull %3, i64 noundef %conv23) #10
  %call44 = call i64 @OPENSSL_strlcat(i8* noundef nonnull %call24, i8* noundef nonnull %object_name, i64 noundef %conv23) #10
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then27, %if.else
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %4) #12
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 7, i8* nonnull %2) #12
  br label %cleanup54

cleanup:                                          ; preds = %if.end28, %if.then37
  %call49 = call i64 @OPENSSL_strlcat(i8* noundef nonnull %call24, i8* noundef nonnull %4, i64 noundef %conv23) #10
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %4) #12
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 7, i8* nonnull %2) #12
  br label %cleanup54

cleanup54:                                        ; preds = %if.then, %cleanup, %cleanup.thread
  %retval.1 = phi i8* [ null, %cleanup.thread ], [ %call, %if.then ], [ %call24, %cleanup ]
  ret i8* %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #5

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i64 @OPENSSL_strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i64 @OPENSSL_strlcat(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @UI_add_user_data(%struct.ui_st* noundef %ui, i8* noundef %user_data) local_unnamed_addr #0 {
entry:
  %user_data1 = getelementptr inbounds %struct.ui_st, %struct.ui_st* %ui, i64 0, i32 2
  %0 = load i8*, i8** %user_data1, align 8, !tbaa !15
  %flags = getelementptr inbounds %struct.ui_st, %struct.ui_st* %ui, i64 0, i32 4
  %1 = load i32, i32* %flags, align 8, !tbaa !12
  %and = and i32 %1, 2
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %meth = getelementptr inbounds %struct.ui_st, %struct.ui_st* %ui, i64 0, i32 0
  %2 = load %struct.ui_method_st*, %struct.ui_method_st** %meth, align 8, !tbaa !11
  %ui_destroy_data = getelementptr inbounds %struct.ui_method_st, %struct.ui_method_st* %2, i64 0, i32 7
  %3 = load void (%struct.ui_st*, i8*)*, void (%struct.ui_st*, i8*)** %ui_destroy_data, align 8, !tbaa !13
  tail call void %3(%struct.ui_st* noundef nonnull %ui, i8* noundef %0) #10
  %.pre = load i32, i32* %flags, align 8, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = phi i32 [ %.pre, %if.then ], [ %1, %entry ]
  %old_data.0 = phi i8* [ null, %if.then ], [ %0, %entry ]
  store i8* %user_data, i8** %user_data1, align 8, !tbaa !15
  %and4 = and i32 %4, -3
  store i32 %and4, i32* %flags, align 8, !tbaa !12
  ret i8* %old_data.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @UI_dup_user_data(%struct.ui_st* noundef %ui, i8* noundef %user_data) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.ui_st, %struct.ui_st* %ui, i64 0, i32 0
  %0 = load %struct.ui_method_st*, %struct.ui_method_st** %meth, align 8, !tbaa !11
  %ui_duplicate_data = getelementptr inbounds %struct.ui_method_st, %struct.ui_method_st* %0, i64 0, i32 6
  %1 = load i8* (%struct.ui_st*, i8*)*, i8* (%struct.ui_st*, i8*)** %ui_duplicate_data, align 8, !tbaa !26
  %cmp = icmp eq i8* (%struct.ui_st*, i8*)* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %ui_destroy_data = getelementptr inbounds %struct.ui_method_st, %struct.ui_method_st* %0, i64 0, i32 7
  %2 = load void (%struct.ui_st*, i8*)*, void (%struct.ui_st*, i8*)** %ui_destroy_data, align 8, !tbaa !13
  %cmp2 = icmp eq void (%struct.ui_st*, i8*)* %2, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 410, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.UI_dup_user_data, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 40, i32 noundef 112, i8* noundef null) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i8* %1(%struct.ui_st* noundef nonnull %ui, i8* noundef %user_data) #10
  %cmp5 = icmp eq i8* %call, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 416, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.UI_dup_user_data, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 40, i32 noundef 786688, i8* noundef null) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call i8* @UI_add_user_data(%struct.ui_st* noundef nonnull %ui, i8* noundef nonnull %call) #9
  %flags = getelementptr inbounds %struct.ui_st, %struct.ui_st* %ui, i64 0, i32 4
  %3 = load i32, i32* %flags, align 8, !tbaa !12
  %or = or i32 %3, 2
  store i32 %or, i32* %flags, align 8, !tbaa !12
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then6 ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @UI_get0_user_data(%struct.ui_st* nocapture noundef readonly %ui) local_unnamed_addr #6 {
entry:
  %user_data = getelementptr inbounds %struct.ui_st, %struct.ui_st* %ui, i64 0, i32 2
  %0 = load i8*, i8** %user_data, align 8, !tbaa !15
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define i8* @UI_get0_result(%struct.ui_st* nocapture noundef readonly %ui, i32 noundef %i) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 434, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.UI_get0_result, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 40, i32 noundef 103, i8* noundef null) #10
  br label %return

if.end:                                           ; preds = %entry
  %strings = getelementptr inbounds %struct.ui_st, %struct.ui_st* %ui, i64 0, i32 1
  %0 = load %struct.stack_st_UI_STRING*, %struct.stack_st_UI_STRING** %strings, align 8, !tbaa !16
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_UI_STRING_sk_type(%struct.stack_st_UI_STRING* noundef %0) #9
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #10
  %cmp2.not = icmp sgt i32 %call1, %i
  br i1 %cmp2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 438, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.UI_get0_result, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 40, i32 noundef 102, i8* noundef null) #10
  br label %return

if.end4:                                          ; preds = %if.end
  %1 = load %struct.stack_st_UI_STRING*, %struct.stack_st_UI_STRING** %strings, align 8, !tbaa !16
  %call6 = tail call fastcc %struct.stack_st* @ossl_check_const_UI_STRING_sk_type(%struct.stack_st_UI_STRING* noundef %1) #9
  %call7 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call6, i32 noundef %i) #10
  %2 = bitcast i8* %call7 to %struct.ui_string_st*
  %call8 = tail call i8* @UI_get0_result_string(%struct.ui_string_st* noundef %2) #9
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ null, %if.then3 ], [ %call8, %if.end4 ]
  ret i8* %retval.0
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_UI_STRING_sk_type(%struct.stack_st_UI_STRING* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_UI_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @UI_get0_result_string(%struct.ui_string_st* nocapture noundef readonly %uis) local_unnamed_addr #6 {
entry:
  %type = getelementptr inbounds %struct.ui_string_st, %struct.ui_string_st* %uis, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !21
  %.off = add i32 %0, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %return

sw.bb:                                            ; preds = %entry
  %result_buf = getelementptr inbounds %struct.ui_string_st, %struct.ui_string_st* %uis, i64 0, i32 3
  %1 = load i8*, i8** %result_buf, align 8, !tbaa !27
  br label %return

return:                                           ; preds = %entry, %sw.bb
  %retval.0 = phi i8* [ %1, %sw.bb ], [ null, %entry ]
  ret i8* %retval.0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @UI_get_result_length(%struct.ui_st* nocapture noundef readonly %ui, i32 noundef %i) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 447, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.UI_get_result_length, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 40, i32 noundef 103, i8* noundef null) #10
  br label %return

if.end:                                           ; preds = %entry
  %strings = getelementptr inbounds %struct.ui_st, %struct.ui_st* %ui, i64 0, i32 1
  %0 = load %struct.stack_st_UI_STRING*, %struct.stack_st_UI_STRING** %strings, align 8, !tbaa !16
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_UI_STRING_sk_type(%struct.stack_st_UI_STRING* noundef %0) #9
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #10
  %cmp2.not = icmp sgt i32 %call1, %i
  br i1 %cmp2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 451, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.UI_get_result_length, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 40, i32 noundef 102, i8* noundef null) #10
  br label %return

if.end4:                                          ; preds = %if.end
  %1 = load %struct.stack_st_UI_STRING*, %struct.stack_st_UI_STRING** %strings, align 8, !tbaa !16
  %call6 = tail call fastcc %struct.stack_st* @ossl_check_const_UI_STRING_sk_type(%struct.stack_st_UI_STRING* noundef %1) #9
  %call7 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call6, i32 noundef %i) #10
  %2 = bitcast i8* %call7 to %struct.ui_string_st*
  %call8 = tail call i32 @UI_get_result_string_length(%struct.ui_string_st* noundef %2) #9
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then3 ], [ %call8, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @UI_get_result_string_length(%struct.ui_string_st* nocapture noundef readonly %uis) local_unnamed_addr #6 {
entry:
  %type = getelementptr inbounds %struct.ui_string_st, %struct.ui_string_st* %uis, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !21
  %.off = add i32 %0, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %return

sw.bb:                                            ; preds = %entry
  %result_len = getelementptr inbounds %struct.ui_string_st, %struct.ui_string_st* %uis, i64 0, i32 4
  %1 = load i64, i64* %result_len, align 8, !tbaa !28
  %conv = trunc i64 %1 to i32
  br label %return

return:                                           ; preds = %entry, %sw.bb
  %retval.0 = phi i32 [ %conv, %sw.bb ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @UI_process(%struct.ui_st* noundef %ui) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.ui_st, %struct.ui_st* %ui, i64 0, i32 0
  %0 = load %struct.ui_method_st*, %struct.ui_method_st** %meth, align 8, !tbaa !11
  %ui_open_session = getelementptr inbounds %struct.ui_method_st, %struct.ui_method_st* %0, i64 0, i32 1
  %1 = load i32 (%struct.ui_st*)*, i32 (%struct.ui_st*)** %ui_open_session, align 8, !tbaa !29
  %cmp.not = icmp eq i32 (%struct.ui_st*)* %1, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 %1(%struct.ui_st* noundef nonnull %ui) #10
  %cmp3 = icmp slt i32 %call, 1
  br i1 %cmp3, label %err, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %flags = getelementptr inbounds %struct.ui_st, %struct.ui_st* %ui, i64 0, i32 4
  %2 = load i32, i32* %flags, align 8, !tbaa !12
  %and = and i32 %2, 256
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  %3 = bitcast %struct.ui_st* %ui to i8*
  tail call void @ERR_print_errors_cb(i32 (i8*, i64, i8*)* noundef bitcast (i32 (i8*, i64, %struct.ui_st*)* @print_error to i32 (i8*, i64, i8*)*), i8* noundef %3) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %strings = getelementptr inbounds %struct.ui_st, %struct.ui_st* %ui, i64 0, i32 1
  %4 = load %struct.stack_st_UI_STRING*, %struct.stack_st_UI_STRING** %strings, align 8, !tbaa !16
  %call6116 = tail call fastcc %struct.stack_st* @ossl_check_const_UI_STRING_sk_type(%struct.stack_st_UI_STRING* noundef %4) #9
  %call7117 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call6116) #10
  %cmp8118 = icmp sgt i32 %call7117, 0
  br i1 %cmp8118, label %for.body, label %for.end

for.body:                                         ; preds = %if.end5, %for.inc
  %i.0119 = phi i32 [ %inc, %for.inc ], [ 0, %if.end5 ]
  %5 = load %struct.ui_method_st*, %struct.ui_method_st** %meth, align 8, !tbaa !11
  %ui_write_string = getelementptr inbounds %struct.ui_method_st, %struct.ui_method_st* %5, i64 0, i32 2
  %6 = load i32 (%struct.ui_st*, %struct.ui_string_st*)*, i32 (%struct.ui_st*, %struct.ui_string_st*)** %ui_write_string, align 8, !tbaa !30
  %cmp10.not = icmp eq i32 (%struct.ui_st*, %struct.ui_string_st*)* %6, null
  br i1 %cmp10.not, label %for.inc, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %for.body
  %7 = load %struct.stack_st_UI_STRING*, %struct.stack_st_UI_STRING** %strings, align 8, !tbaa !16
  %call15 = tail call fastcc %struct.stack_st* @ossl_check_const_UI_STRING_sk_type(%struct.stack_st_UI_STRING* noundef %7) #9
  %call16 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call15, i32 noundef %i.0119) #10
  %8 = bitcast i8* %call16 to %struct.ui_string_st*
  %call17 = tail call i32 %6(%struct.ui_st* noundef nonnull %ui, %struct.ui_string_st* noundef %8) #10
  %cmp18 = icmp slt i32 %call17, 1
  br i1 %cmp18, label %err, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true11
  %inc = add nuw nsw i32 %i.0119, 1
  %9 = load %struct.stack_st_UI_STRING*, %struct.stack_st_UI_STRING** %strings, align 8, !tbaa !16
  %call6 = tail call fastcc %struct.stack_st* @ossl_check_const_UI_STRING_sk_type(%struct.stack_st_UI_STRING* noundef %9) #9
  %call7 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call6) #10
  %cmp8 = icmp slt i32 %inc, %call7
  br i1 %cmp8, label %for.body, label %for.end, !llvm.loop !31

for.end:                                          ; preds = %for.inc, %if.end5
  %10 = load %struct.ui_method_st*, %struct.ui_method_st** %meth, align 8, !tbaa !11
  %ui_flush = getelementptr inbounds %struct.ui_method_st, %struct.ui_method_st* %10, i64 0, i32 3
  %11 = load i32 (%struct.ui_st*)*, i32 (%struct.ui_st*)** %ui_flush, align 8, !tbaa !32
  %cmp22.not = icmp eq i32 (%struct.ui_st*)* %11, null
  br i1 %cmp22.not, label %if.end30, label %if.then23

if.then23:                                        ; preds = %for.end
  %call26 = tail call i32 %11(%struct.ui_st* noundef nonnull %ui) #10
  switch i32 %call26, label %if.end30 [
    i32 -1, label %err.sink.split
    i32 0, label %err
  ]

if.end30:                                         ; preds = %if.then23, %for.end
  %12 = load %struct.stack_st_UI_STRING*, %struct.stack_st_UI_STRING** %strings, align 8, !tbaa !16
  %call33121 = tail call fastcc %struct.stack_st* @ossl_check_const_UI_STRING_sk_type(%struct.stack_st_UI_STRING* noundef %12) #9
  %call34122 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call33121) #10
  %cmp35123 = icmp sgt i32 %call34122, 0
  br i1 %cmp35123, label %for.body36, label %err

for.body36:                                       ; preds = %if.end30, %for.inc53
  %i.1124 = phi i32 [ %inc54, %for.inc53 ], [ 0, %if.end30 ]
  %13 = load %struct.ui_method_st*, %struct.ui_method_st** %meth, align 8, !tbaa !11
  %ui_read_string = getelementptr inbounds %struct.ui_method_st, %struct.ui_method_st* %13, i64 0, i32 4
  %14 = load i32 (%struct.ui_st*, %struct.ui_string_st*)*, i32 (%struct.ui_st*, %struct.ui_string_st*)** %ui_read_string, align 8, !tbaa !33
  %cmp38.not = icmp eq i32 (%struct.ui_st*, %struct.ui_string_st*)* %14, null
  br i1 %cmp38.not, label %for.inc53, label %if.then39

if.then39:                                        ; preds = %for.body36
  %15 = load %struct.stack_st_UI_STRING*, %struct.stack_st_UI_STRING** %strings, align 8, !tbaa !16
  %call43 = tail call fastcc %struct.stack_st* @ossl_check_const_UI_STRING_sk_type(%struct.stack_st_UI_STRING* noundef %15) #9
  %call44 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call43, i32 noundef %i.1124) #10
  %16 = bitcast i8* %call44 to %struct.ui_string_st*
  %call45 = tail call i32 %14(%struct.ui_st* noundef nonnull %ui, %struct.ui_string_st* noundef %16) #10
  switch i32 %call45, label %for.inc53 [
    i32 -1, label %err.sink.split
    i32 0, label %err
  ]

for.inc53:                                        ; preds = %if.then39, %for.body36
  %inc54 = add nuw nsw i32 %i.1124, 1
  %17 = load %struct.stack_st_UI_STRING*, %struct.stack_st_UI_STRING** %strings, align 8, !tbaa !16
  %call33 = tail call fastcc %struct.stack_st* @ossl_check_const_UI_STRING_sk_type(%struct.stack_st_UI_STRING* noundef %17) #9
  %call34 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call33) #10
  %cmp35 = icmp slt i32 %inc54, %call34
  br i1 %cmp35, label %for.body36, label %err, !llvm.loop !34

err.sink.split:                                   ; preds = %if.then39, %if.then23
  %18 = load i32, i32* %flags, align 8, !tbaa !12
  %and48 = and i32 %18, -2
  store i32 %and48, i32* %flags, align 8, !tbaa !12
  br label %err

err:                                              ; preds = %land.lhs.true11, %if.then39, %for.inc53, %err.sink.split, %if.end30, %if.then23, %land.lhs.true
  %cmp68 = phi i1 [ true, %if.then23 ], [ true, %land.lhs.true ], [ false, %if.end30 ], [ false, %err.sink.split ], [ true, %if.then39 ], [ false, %for.inc53 ], [ true, %land.lhs.true11 ]
  %ok.3 = phi i32 [ -1, %if.then23 ], [ -1, %land.lhs.true ], [ 0, %if.end30 ], [ -2, %err.sink.split ], [ -1, %if.then39 ], [ 0, %for.inc53 ], [ -1, %land.lhs.true11 ]
  %cmp64 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %if.then23 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), %land.lhs.true ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), %if.end30 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %err.sink.split ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), %if.then39 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), %for.inc53 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), %land.lhs.true11 ]
  %state.0 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %if.then23 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), %land.lhs.true ], [ null, %if.end30 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %err.sink.split ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), %if.then39 ], [ null, %for.inc53 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), %land.lhs.true11 ]
  %19 = load %struct.ui_method_st*, %struct.ui_method_st** %meth, align 8, !tbaa !11
  %ui_close_session = getelementptr inbounds %struct.ui_method_st, %struct.ui_method_st* %19, i64 0, i32 5
  %20 = load i32 (%struct.ui_st*)*, i32 (%struct.ui_st*)** %ui_close_session, align 8, !tbaa !35
  %cmp57.not = icmp eq i32 (%struct.ui_st*)* %20, null
  br i1 %cmp57.not, label %if.end67, label %land.lhs.true58

land.lhs.true58:                                  ; preds = %err
  %call61 = tail call i32 %20(%struct.ui_st* noundef nonnull %ui) #10
  %cmp62 = icmp slt i32 %call61, 1
  %brmerge = or i1 %cmp68, %cmp62
  %cmp64.mux = select i1 %cmp62, i8* %cmp64, i8* %state.0
  br i1 %brmerge, label %if.then69, label %if.end70

if.end67:                                         ; preds = %err
  br i1 %cmp68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %land.lhs.true58, %if.end67
  %state.1113 = phi i8* [ %state.0, %if.end67 ], [ %cmp64.mux, %land.lhs.true58 ]
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 544, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.UI_process, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 40, i32 noundef 107, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef %state.1113) #10
  br label %if.end70

if.end70:                                         ; preds = %land.lhs.true58, %if.then69, %if.end67
  %ok.4111 = phi i32 [ -1, %if.then69 ], [ %ok.3, %if.end67 ], [ %ok.3, %land.lhs.true58 ]
  ret i32 %ok.4111
}

declare void @ERR_print_errors_cb(i32 (i8*, i64, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @print_error(i8* noundef %str, i64 noundef %len, %struct.ui_st* noundef %ui) #0 {
entry:
  %uis = alloca %struct.ui_string_st, align 8
  %0 = bitcast %struct.ui_string_st* %uis to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %0) #12
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 72) #10
  %type = getelementptr inbounds %struct.ui_string_st, %struct.ui_string_st* %uis, i64 0, i32 0
  store i32 5, i32* %type, align 8, !tbaa !21
  %out_string = getelementptr inbounds %struct.ui_string_st, %struct.ui_string_st* %uis, i64 0, i32 1
  store i8* %str, i8** %out_string, align 8, !tbaa !20
  %meth = getelementptr inbounds %struct.ui_st, %struct.ui_st* %ui, i64 0, i32 0
  %1 = load %struct.ui_method_st*, %struct.ui_method_st** %meth, align 8, !tbaa !11
  %ui_write_string = getelementptr inbounds %struct.ui_method_st, %struct.ui_method_st* %1, i64 0, i32 2
  %2 = load i32 (%struct.ui_st*, %struct.ui_string_st*)*, i32 (%struct.ui_st*, %struct.ui_string_st*)** %ui_write_string, align 8, !tbaa !30
  %cmp.not = icmp eq i32 (%struct.ui_st*, %struct.ui_string_st*)* %2, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call3 = call i32 %2(%struct.ui_st* noundef nonnull %ui, %struct.ui_string_st* noundef nonnull %uis) #10
  %cmp4 = icmp slt i32 %call3, 1
  br i1 %cmp4, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @UI_ctrl(%struct.ui_st* noundef %ui, i32 noundef %cmd, i64 noundef %i, i8* nocapture noundef readnone %p, void ()* nocapture noundef readnone %f) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ui_st* %ui, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 551, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.UI_ctrl, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 40, i32 noundef 786690, i8* noundef null) #10
  br label %return

if.end:                                           ; preds = %entry
  switch i32 %cmd, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.end
  %flags = getelementptr inbounds %struct.ui_st, %struct.ui_st* %ui, i64 0, i32 4
  %0 = load i32, i32* %flags, align 8, !tbaa !12
  %and = lshr i32 %0, 8
  %and.lobit = and i32 %and, 1
  %tobool2.not = icmp eq i64 %i, 0
  %and6 = and i32 %0, -257
  %masksel = select i1 %tobool2.not, i32 0, i32 256
  %storemerge = or i32 %and6, %masksel
  store i32 %storemerge, i32* %flags, align 8, !tbaa !12
  br label %return

sw.bb8:                                           ; preds = %if.end
  %flags9 = getelementptr inbounds %struct.ui_st, %struct.ui_st* %ui, i64 0, i32 4
  %1 = load i32, i32* %flags9, align 8, !tbaa !12
  %and10 = and i32 %1, 1
  br label %return

sw.epilog:                                        ; preds = %if.end
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 569, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.UI_ctrl, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 40, i32 noundef 106, i8* noundef null) #10
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb8, %sw.bb, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %sw.epilog ], [ %and10, %sw.bb8 ], [ %and.lobit, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @UI_set_ex_data(%struct.ui_st* noundef %r, i32 noundef %idx, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %ex_data = getelementptr inbounds %struct.ui_st, %struct.ui_st* %r, i64 0, i32 3
  %call = tail call i32 @CRYPTO_set_ex_data(%struct.crypto_ex_data_st* noundef nonnull %ex_data, i32 noundef %idx, i8* noundef %arg) #10
  ret i32 %call
}

declare i32 @CRYPTO_set_ex_data(%struct.crypto_ex_data_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @UI_get_ex_data(%struct.ui_st* noundef %r, i32 noundef %idx) local_unnamed_addr #0 {
entry:
  %ex_data = getelementptr inbounds %struct.ui_st, %struct.ui_st* %r, i64 0, i32 3
  %call = tail call i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef nonnull %ex_data, i32 noundef %idx) #10
  ret i8* %call
}

declare i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ui_method_st* @UI_get_method(%struct.ui_st* nocapture noundef readonly %ui) local_unnamed_addr #6 {
entry:
  %meth = getelementptr inbounds %struct.ui_st, %struct.ui_st* %ui, i64 0, i32 0
  %0 = load %struct.ui_method_st*, %struct.ui_method_st** %meth, align 8, !tbaa !11
  ret %struct.ui_method_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define %struct.ui_method_st* @UI_set_method(%struct.ui_st* nocapture noundef writeonly %ui, %struct.ui_method_st* noundef returned %meth) local_unnamed_addr #7 {
entry:
  %meth1 = getelementptr inbounds %struct.ui_st, %struct.ui_st* %ui, i64 0, i32 0
  store %struct.ui_method_st* %meth, %struct.ui_method_st** %meth1, align 8, !tbaa !11
  ret %struct.ui_method_st* %meth
}

; Function Attrs: noinline nounwind uwtable
define %struct.ui_method_st* @UI_create_method(i8* noundef %name) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 88, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 598) #10
  %0 = bitcast i8* %call to %struct.ui_method_st*
  %cond = icmp eq i8* %call, null
  br i1 %cond, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i8* @CRYPTO_strdup(i8* noundef %name, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 599) #10
  %name2 = bitcast i8* %call to i8**
  store i8* %call1, i8** %name2, align 8, !tbaa !36
  %cmp3 = icmp eq i8* %call1, null
  br i1 %cmp3, label %if.then7, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %ex_data = getelementptr inbounds i8, i8* %call, i64 72
  %1 = bitcast i8* %ex_data to %struct.crypto_ex_data_st*
  %call5 = tail call i32 @CRYPTO_new_ex_data(i32 noundef 14, i8* noundef nonnull %call, %struct.crypto_ex_data_st* noundef nonnull %1) #10
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %lor.lhs.false4.if.then7_crit_edge, label %cleanup

lor.lhs.false4.if.then7_crit_edge:                ; preds = %lor.lhs.false4
  %.pre = load i8*, i8** %name2, align 8, !tbaa !36
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false4.if.then7_crit_edge, %lor.lhs.false
  %2 = phi i8* [ %.pre, %lor.lhs.false4.if.then7_crit_edge ], [ null, %lor.lhs.false ]
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 603) #10
  br label %if.end

if.end:                                           ; preds = %entry, %if.then7
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 604) #10
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 605, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.UI_create_method, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 40, i32 noundef 786688, i8* noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false4, %if.end
  %retval.0 = phi %struct.ui_method_st* [ null, %if.end ], [ %0, %lor.lhs.false4 ]
  ret %struct.ui_method_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @UI_destroy_method(%struct.ui_method_st* noundef %ui_method) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ui_method_st* %ui_method, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.ui_method_st* %ui_method to i8*
  %ex_data = getelementptr inbounds %struct.ui_method_st, %struct.ui_method_st* %ui_method, i64 0, i32 9
  tail call void @CRYPTO_free_ex_data(i32 noundef 14, i8* noundef nonnull %0, %struct.crypto_ex_data_st* noundef nonnull %ex_data) #10
  %name = getelementptr inbounds %struct.ui_method_st, %struct.ui_method_st* %ui_method, i64 0, i32 0
  %1 = load i8*, i8** %name, align 8, !tbaa !36
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 622) #10
  store i8* null, i8** %name, align 8, !tbaa !36
  tail call void @CRYPTO_free(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 624) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @UI_method_set_opener(%struct.ui_method_st* noundef writeonly %method, i32 (%struct.ui_st*)* noundef %opener) local_unnamed_addr #7 {
entry:
  %cmp.not = icmp eq %struct.ui_method_st* %method, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %ui_open_session = getelementptr inbounds %struct.ui_method_st, %struct.ui_method_st* %method, i64 0, i32 1
  store i32 (%struct.ui_st*)* %opener, i32 (%struct.ui_st*)** %ui_open_session, align 8, !tbaa !29
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @UI_method_set_writer(%struct.ui_method_st* noundef writeonly %method, i32 (%struct.ui_st*, %struct.ui_string_st*)* noundef %writer) local_unnamed_addr #7 {
entry:
  %cmp.not = icmp eq %struct.ui_method_st* %method, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %ui_write_string = getelementptr inbounds %struct.ui_method_st, %struct.ui_method_st* %method, i64 0, i32 2
  store i32 (%struct.ui_st*, %struct.ui_string_st*)* %writer, i32 (%struct.ui_st*, %struct.ui_string_st*)** %ui_write_string, align 8, !tbaa !30
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @UI_method_set_flusher(%struct.ui_method_st* noundef writeonly %method, i32 (%struct.ui_st*)* noundef %flusher) local_unnamed_addr #7 {
entry:
  %cmp.not = icmp eq %struct.ui_method_st* %method, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %ui_flush = getelementptr inbounds %struct.ui_method_st, %struct.ui_method_st* %method, i64 0, i32 3
  store i32 (%struct.ui_st*)* %flusher, i32 (%struct.ui_st*)** %ui_flush, align 8, !tbaa !32
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @UI_method_set_reader(%struct.ui_method_st* noundef writeonly %method, i32 (%struct.ui_st*, %struct.ui_string_st*)* noundef %reader) local_unnamed_addr #7 {
entry:
  %cmp.not = icmp eq %struct.ui_method_st* %method, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %ui_read_string = getelementptr inbounds %struct.ui_method_st, %struct.ui_method_st* %method, i64 0, i32 4
  store i32 (%struct.ui_st*, %struct.ui_string_st*)* %reader, i32 (%struct.ui_st*, %struct.ui_string_st*)** %ui_read_string, align 8, !tbaa !33
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @UI_method_set_closer(%struct.ui_method_st* noundef writeonly %method, i32 (%struct.ui_st*)* noundef %closer) local_unnamed_addr #7 {
entry:
  %cmp.not = icmp eq %struct.ui_method_st* %method, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %ui_close_session = getelementptr inbounds %struct.ui_method_st, %struct.ui_method_st* %method, i64 0, i32 5
  store i32 (%struct.ui_st*)* %closer, i32 (%struct.ui_st*)** %ui_close_session, align 8, !tbaa !35
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @UI_method_set_data_duplicator(%struct.ui_method_st* noundef writeonly %method, i8* (%struct.ui_st*, i8*)* noundef %duplicator, void (%struct.ui_st*, i8*)* noundef %destructor) local_unnamed_addr #7 {
entry:
  %cmp.not = icmp eq %struct.ui_method_st* %method, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %ui_duplicate_data = getelementptr inbounds %struct.ui_method_st, %struct.ui_method_st* %method, i64 0, i32 6
  store i8* (%struct.ui_st*, i8*)* %duplicator, i8* (%struct.ui_st*, i8*)** %ui_duplicate_data, align 8, !tbaa !26
  %ui_destroy_data = getelementptr inbounds %struct.ui_method_st, %struct.ui_method_st* %method, i64 0, i32 7
  store void (%struct.ui_st*, i8*)* %destructor, void (%struct.ui_st*, i8*)** %ui_destroy_data, align 8, !tbaa !13
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @UI_method_set_prompt_constructor(%struct.ui_method_st* noundef writeonly %method, i8* (%struct.ui_st*, i8*, i8*)* noundef %prompt_constructor) local_unnamed_addr #7 {
entry:
  %cmp.not = icmp eq %struct.ui_method_st* %method, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %ui_construct_prompt = getelementptr inbounds %struct.ui_method_st, %struct.ui_method_st* %method, i64 0, i32 8
  store i8* (%struct.ui_st*, i8*, i8*)* %prompt_constructor, i8* (%struct.ui_st*, i8*, i8*)** %ui_construct_prompt, align 8, !tbaa !25
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @UI_method_set_ex_data(%struct.ui_method_st* noundef %method, i32 noundef %idx, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %ex_data = getelementptr inbounds %struct.ui_method_st, %struct.ui_method_st* %method, i64 0, i32 9
  %call = tail call i32 @CRYPTO_set_ex_data(%struct.crypto_ex_data_st* noundef nonnull %ex_data, i32 noundef %idx, i8* noundef %data) #10
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.ui_st*)* @UI_method_get_opener(%struct.ui_method_st* noundef readonly %method) local_unnamed_addr #6 {
entry:
  %cmp.not = icmp eq %struct.ui_method_st* %method, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %ui_open_session = getelementptr inbounds %struct.ui_method_st, %struct.ui_method_st* %method, i64 0, i32 1
  %0 = load i32 (%struct.ui_st*)*, i32 (%struct.ui_st*)** %ui_open_session, align 8, !tbaa !29
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 (%struct.ui_st*)* [ %0, %if.then ], [ null, %entry ]
  ret i32 (%struct.ui_st*)* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.ui_st*, %struct.ui_string_st*)* @UI_method_get_writer(%struct.ui_method_st* noundef readonly %method) local_unnamed_addr #6 {
entry:
  %cmp.not = icmp eq %struct.ui_method_st* %method, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %ui_write_string = getelementptr inbounds %struct.ui_method_st, %struct.ui_method_st* %method, i64 0, i32 2
  %0 = load i32 (%struct.ui_st*, %struct.ui_string_st*)*, i32 (%struct.ui_st*, %struct.ui_string_st*)** %ui_write_string, align 8, !tbaa !30
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 (%struct.ui_st*, %struct.ui_string_st*)* [ %0, %if.then ], [ null, %entry ]
  ret i32 (%struct.ui_st*, %struct.ui_string_st*)* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.ui_st*)* @UI_method_get_flusher(%struct.ui_method_st* noundef readonly %method) local_unnamed_addr #6 {
entry:
  %cmp.not = icmp eq %struct.ui_method_st* %method, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %ui_flush = getelementptr inbounds %struct.ui_method_st, %struct.ui_method_st* %method, i64 0, i32 3
  %0 = load i32 (%struct.ui_st*)*, i32 (%struct.ui_st*)** %ui_flush, align 8, !tbaa !32
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 (%struct.ui_st*)* [ %0, %if.then ], [ null, %entry ]
  ret i32 (%struct.ui_st*)* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.ui_st*, %struct.ui_string_st*)* @UI_method_get_reader(%struct.ui_method_st* noundef readonly %method) local_unnamed_addr #6 {
entry:
  %cmp.not = icmp eq %struct.ui_method_st* %method, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %ui_read_string = getelementptr inbounds %struct.ui_method_st, %struct.ui_method_st* %method, i64 0, i32 4
  %0 = load i32 (%struct.ui_st*, %struct.ui_string_st*)*, i32 (%struct.ui_st*, %struct.ui_string_st*)** %ui_read_string, align 8, !tbaa !33
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 (%struct.ui_st*, %struct.ui_string_st*)* [ %0, %if.then ], [ null, %entry ]
  ret i32 (%struct.ui_st*, %struct.ui_string_st*)* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.ui_st*)* @UI_method_get_closer(%struct.ui_method_st* noundef readonly %method) local_unnamed_addr #6 {
entry:
  %cmp.not = icmp eq %struct.ui_method_st* %method, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %ui_close_session = getelementptr inbounds %struct.ui_method_st, %struct.ui_method_st* %method, i64 0, i32 5
  %0 = load i32 (%struct.ui_st*)*, i32 (%struct.ui_st*)** %ui_close_session, align 8, !tbaa !35
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 (%struct.ui_st*)* [ %0, %if.then ], [ null, %entry ]
  ret i32 (%struct.ui_st*)* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* (%struct.ui_st*, i8*, i8*)* @UI_method_get_prompt_constructor(%struct.ui_method_st* noundef readonly %method) local_unnamed_addr #6 {
entry:
  %cmp.not = icmp eq %struct.ui_method_st* %method, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %ui_construct_prompt = getelementptr inbounds %struct.ui_method_st, %struct.ui_method_st* %method, i64 0, i32 8
  %0 = load i8* (%struct.ui_st*, i8*, i8*)*, i8* (%struct.ui_st*, i8*, i8*)** %ui_construct_prompt, align 8, !tbaa !25
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i8* (%struct.ui_st*, i8*, i8*)* [ %0, %if.then ], [ null, %entry ]
  ret i8* (%struct.ui_st*, i8*, i8*)* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* (%struct.ui_st*, i8*)* @UI_method_get_data_duplicator(%struct.ui_method_st* noundef readonly %method) local_unnamed_addr #6 {
entry:
  %cmp.not = icmp eq %struct.ui_method_st* %method, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %ui_duplicate_data = getelementptr inbounds %struct.ui_method_st, %struct.ui_method_st* %method, i64 0, i32 6
  %0 = load i8* (%struct.ui_st*, i8*)*, i8* (%struct.ui_st*, i8*)** %ui_duplicate_data, align 8, !tbaa !26
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i8* (%struct.ui_st*, i8*)* [ %0, %if.then ], [ null, %entry ]
  ret i8* (%struct.ui_st*, i8*)* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define void (%struct.ui_st*, i8*)* @UI_method_get_data_destructor(%struct.ui_method_st* noundef readonly %method) local_unnamed_addr #6 {
entry:
  %cmp.not = icmp eq %struct.ui_method_st* %method, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %ui_destroy_data = getelementptr inbounds %struct.ui_method_st, %struct.ui_method_st* %method, i64 0, i32 7
  %0 = load void (%struct.ui_st*, i8*)*, void (%struct.ui_st*, i8*)** %ui_destroy_data, align 8, !tbaa !13
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi void (%struct.ui_st*, i8*)* [ %0, %if.then ], [ null, %entry ]
  ret void (%struct.ui_st*, i8*)* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @UI_method_get_ex_data(%struct.ui_method_st* noundef %method, i32 noundef %idx) local_unnamed_addr #0 {
entry:
  %ex_data = getelementptr inbounds %struct.ui_method_st, %struct.ui_method_st* %method, i64 0, i32 9
  %call = tail call i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef nonnull %ex_data, i32 noundef %idx) #10
  ret i8* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @UI_get_string_type(%struct.ui_string_st* nocapture noundef readonly %uis) local_unnamed_addr #6 {
entry:
  %type = getelementptr inbounds %struct.ui_string_st, %struct.ui_string_st* %uis, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !21
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @UI_get_input_flags(%struct.ui_string_st* nocapture noundef readonly %uis) local_unnamed_addr #6 {
entry:
  %input_flags = getelementptr inbounds %struct.ui_string_st, %struct.ui_string_st* %uis, i64 0, i32 2
  %0 = load i32, i32* %input_flags, align 8, !tbaa !37
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @UI_get0_output_string(%struct.ui_string_st* nocapture noundef readonly %uis) local_unnamed_addr #6 {
entry:
  %out_string = getelementptr inbounds %struct.ui_string_st, %struct.ui_string_st* %uis, i64 0, i32 1
  %0 = load i8*, i8** %out_string, align 8, !tbaa !20
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @UI_get0_action_string(%struct.ui_string_st* nocapture noundef readonly %uis) local_unnamed_addr #6 {
entry:
  %type = getelementptr inbounds %struct.ui_string_st, %struct.ui_string_st* %uis, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !21
  %cond = icmp eq i32 %0, 3
  br i1 %cond, label %sw.bb, label %return

sw.bb:                                            ; preds = %entry
  %action_desc = getelementptr inbounds %struct.ui_string_st, %struct.ui_string_st* %uis, i64 0, i32 5, i32 0, i32 0
  %1 = load i8*, i8** %action_desc, align 8, !tbaa !22
  br label %return

return:                                           ; preds = %entry, %sw.bb
  %retval.0 = phi i8* [ %1, %sw.bb ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @UI_get0_test_string(%struct.ui_string_st* nocapture noundef readonly %uis) local_unnamed_addr #6 {
entry:
  %type = getelementptr inbounds %struct.ui_string_st, %struct.ui_string_st* %uis, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !21
  %cond = icmp eq i32 %0, 2
  br i1 %cond, label %sw.bb, label %return

sw.bb:                                            ; preds = %entry
  %1 = getelementptr inbounds %struct.ui_string_st, %struct.ui_string_st* %uis, i64 0, i32 5, i32 0, i32 1
  %2 = load i8*, i8** %1, align 8, !tbaa !22
  br label %return

return:                                           ; preds = %entry, %sw.bb
  %retval.0 = phi i8* [ %2, %sw.bb ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @UI_get_result_minsize(%struct.ui_string_st* nocapture noundef readonly %uis) local_unnamed_addr #6 {
entry:
  %type = getelementptr inbounds %struct.ui_string_st, %struct.ui_string_st* %uis, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !21
  %.off = add i32 %0, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %return

sw.bb:                                            ; preds = %entry
  %_ = getelementptr inbounds %struct.ui_string_st, %struct.ui_string_st* %uis, i64 0, i32 5
  %result_minsize = bitcast %union.anon* %_ to i32*
  %1 = load i32, i32* %result_minsize, align 8, !tbaa !22
  br label %return

return:                                           ; preds = %entry, %sw.bb
  %retval.0 = phi i32 [ %1, %sw.bb ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @UI_get_result_maxsize(%struct.ui_string_st* nocapture noundef readonly %uis) local_unnamed_addr #6 {
entry:
  %type = getelementptr inbounds %struct.ui_string_st, %struct.ui_string_st* %uis, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !21
  %.off = add i32 %0, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %return

sw.bb:                                            ; preds = %entry
  %_ = getelementptr inbounds %struct.ui_string_st, %struct.ui_string_st* %uis, i64 0, i32 5
  %string_data = bitcast %union.anon* %_ to %struct.anon*
  %result_maxsize = getelementptr inbounds %struct.anon, %struct.anon* %string_data, i64 0, i32 1
  %1 = load i32, i32* %result_maxsize, align 4, !tbaa !22
  br label %return

return:                                           ; preds = %entry, %sw.bb
  %retval.0 = phi i32 [ %1, %sw.bb ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @UI_set_result(%struct.ui_st* nocapture noundef %ui, %struct.ui_string_st* nocapture noundef %uis, i8* noundef %result) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @strlen(i8* noundef %result) #11
  %conv = trunc i64 %call to i32
  %call1 = tail call i32 @UI_set_result_ex(%struct.ui_st* noundef %ui, %struct.ui_string_st* noundef %uis, i8* noundef %result, i32 noundef %conv) #9
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define i32 @UI_set_result_ex(%struct.ui_st* nocapture noundef %ui, %struct.ui_string_st* nocapture noundef %uis, i8* noundef %result, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.ui_st, %struct.ui_st* %ui, i64 0, i32 4
  %0 = load i32, i32* %flags, align 8, !tbaa !12
  %and = and i32 %0, -2
  store i32 %and, i32* %flags, align 8, !tbaa !12
  %type = getelementptr inbounds %struct.ui_string_st, %struct.ui_string_st* %uis, i64 0, i32 0
  %1 = load i32, i32* %type, align 8, !tbaa !21
  switch i32 %1, label %return [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb34
  ]

sw.bb:                                            ; preds = %entry, %entry
  %_ = getelementptr inbounds %struct.ui_string_st, %struct.ui_string_st* %uis, i64 0, i32 5
  %string_data = bitcast %union.anon* %_ to %struct.anon*
  %result_minsize = bitcast %union.anon* %_ to i32*
  %2 = load i32, i32* %result_minsize, align 8, !tbaa !22
  %cmp = icmp sgt i32 %2, %len
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %or = or i32 %0, 1
  store i32 %or, i32* %flags, align 8, !tbaa !12
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 884, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.UI_set_result_ex, i64 0, i64 0)) #10
  %3 = load i32, i32* %result_minsize, align 8, !tbaa !22
  %result_maxsize = getelementptr inbounds %struct.anon, %struct.anon* %string_data, i64 0, i32 1
  %4 = load i32, i32* %result_maxsize, align 4, !tbaa !22
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 40, i32 noundef 101, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 noundef %3, i32 noundef %4) #10
  br label %return

if.end:                                           ; preds = %sw.bb
  %result_maxsize9 = getelementptr inbounds %struct.anon, %struct.anon* %string_data, i64 0, i32 1
  %5 = load i32, i32* %result_maxsize9, align 4, !tbaa !22
  %cmp10 = icmp slt i32 %5, %len
  br i1 %cmp10, label %if.then11, label %if.end20

if.then11:                                        ; preds = %if.end
  %or13 = or i32 %0, 1
  store i32 %or13, i32* %flags, align 8, !tbaa !12
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 892, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.UI_set_result_ex, i64 0, i64 0)) #10
  %6 = load i32, i32* %result_minsize, align 8, !tbaa !22
  %7 = load i32, i32* %result_maxsize9, align 4, !tbaa !22
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 40, i32 noundef 100, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 noundef %6, i32 noundef %7) #10
  br label %return

if.end20:                                         ; preds = %if.end
  %result_buf = getelementptr inbounds %struct.ui_string_st, %struct.ui_string_st* %uis, i64 0, i32 3
  %8 = load i8*, i8** %result_buf, align 8, !tbaa !27
  %cmp21 = icmp eq i8* %8, null
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end20
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 900, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.UI_set_result_ex, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 40, i32 noundef 105, i8* noundef null) #10
  br label %return

if.end23:                                         ; preds = %if.end20
  %conv = sext i32 %len to i64
  %call = tail call i8* @memcpy(i8* noundef nonnull %8, i8* noundef %result, i64 noundef %conv) #10
  %9 = load i32, i32* %result_maxsize9, align 4, !tbaa !22
  %cmp28.not = icmp slt i32 %9, %len
  br i1 %cmp28.not, label %if.end32, label %if.then30

if.then30:                                        ; preds = %if.end23
  %10 = load i8*, i8** %result_buf, align 8, !tbaa !27
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %conv
  store i8 0, i8* %arrayidx, align 1, !tbaa !22
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end23
  %result_len = getelementptr inbounds %struct.ui_string_st, %struct.ui_string_st* %uis, i64 0, i32 4
  store i64 %conv, i64* %result_len, align 8, !tbaa !28
  br label %return

sw.bb34:                                          ; preds = %entry
  %result_buf35 = getelementptr inbounds %struct.ui_string_st, %struct.ui_string_st* %uis, i64 0, i32 3
  %11 = load i8*, i8** %result_buf35, align 8, !tbaa !27
  %cmp36 = icmp eq i8* %11, null
  br i1 %cmp36, label %cleanup.thread, label %if.end39

cleanup.thread:                                   ; preds = %sw.bb34
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 914, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.UI_set_result_ex, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 40, i32 noundef 105, i8* noundef null) #10
  br label %return

if.end39:                                         ; preds = %sw.bb34
  store i8 0, i8* %11, align 1, !tbaa !22
  %12 = load i8, i8* %result, align 1, !tbaa !22
  %tobool.not104 = icmp eq i8 %12, 0
  br i1 %tobool.not104, label %return, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end39
  %ok_chars = getelementptr inbounds %struct.ui_string_st, %struct.ui_string_st* %uis, i64 0, i32 5, i32 0, i32 1
  %13 = load i8*, i8** %ok_chars, align 8, !tbaa !22
  %cancel_chars = getelementptr inbounds %struct.ui_string_st, %struct.ui_string_st* %uis, i64 0, i32 5, i32 0, i32 2
  br label %for.body

for.cond:                                         ; preds = %if.end53
  %14 = load i8, i8* %incdec.ptr, align 1, !tbaa !22
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %return, label %for.body, !llvm.loop !38

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %15 = phi i8 [ %12, %for.body.lr.ph ], [ %14, %for.cond ]
  %p.0105 = phi i8* [ %result, %for.body.lr.ph ], [ %incdec.ptr, %for.cond ]
  %conv43 = sext i8 %15 to i32
  %call44 = tail call i8* @strchr(i8* noundef %13, i32 noundef %conv43) #11
  %tobool45.not = icmp eq i8* %call44, null
  br i1 %tobool45.not, label %if.end53, label %if.then46

if.then46:                                        ; preds = %for.body
  %16 = load i8, i8* %13, align 1, !tbaa !22
  %17 = load i8*, i8** %result_buf35, align 8, !tbaa !27
  store i8 %16, i8* %17, align 1, !tbaa !22
  br label %return

if.end53:                                         ; preds = %for.body
  %18 = load i8*, i8** %cancel_chars, align 8, !tbaa !22
  %call57 = tail call i8* @strchr(i8* noundef %18, i32 noundef %conv43) #11
  %tobool58.not = icmp eq i8* %call57, null
  %incdec.ptr = getelementptr inbounds i8, i8* %p.0105, i64 1
  br i1 %tobool58.not, label %for.cond, label %if.then59

if.then59:                                        ; preds = %if.end53
  %19 = load i8, i8* %18, align 1, !tbaa !22
  %20 = load i8*, i8** %result_buf35, align 8, !tbaa !27
  store i8 %19, i8* %20, align 1, !tbaa !22
  br label %return

return:                                           ; preds = %for.cond, %if.end32, %entry, %if.end39, %if.then46, %if.then59, %cleanup.thread, %if.then22, %if.then11, %if.then
  %retval.1 = phi i32 [ -1, %if.then ], [ -1, %if.then11 ], [ -1, %if.then22 ], [ -1, %cleanup.thread ], [ 0, %if.then59 ], [ 0, %if.then46 ], [ 0, %if.end39 ], [ 0, %entry ], [ 0, %if.end32 ], [ 0, %for.cond ]
  ret i32 %retval.1
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ui_string_st* @general_allocate_prompt(i8* noundef %prompt, i32 noundef %prompt_freeable, i32 noundef %type, i32 noundef %input_flags, i8* noundef %result_buf) unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %prompt, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.general_allocate_prompt, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 40, i32 noundef 786690, i8* noundef null) #10
  br label %if.end14

if.else:                                          ; preds = %entry
  %0 = add i32 %type, -1
  %1 = icmp ult i32 %0, 3
  %cmp5 = icmp eq i8* %result_buf, null
  %or.cond16 = and i1 %1, %cmp5
  br i1 %or.cond16, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 108, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.general_allocate_prompt, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 40, i32 noundef 105, i8* noundef null) #10
  br label %if.end14

if.else7:                                         ; preds = %if.else
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 72, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 109) #10
  %cmp8.not = icmp eq i8* %call, null
  br i1 %cmp8.not, label %if.end14, label %if.then9

if.then9:                                         ; preds = %if.else7
  %2 = bitcast i8* %call to %struct.ui_string_st*
  %out_string = getelementptr inbounds i8, i8* %call, i64 8
  %3 = bitcast i8* %out_string to i8**
  store i8* %prompt, i8** %3, align 8, !tbaa !20
  %tobool.not = icmp ne i32 %prompt_freeable, 0
  %cond = zext i1 %tobool.not to i32
  %flags = getelementptr inbounds i8, i8* %call, i64 64
  %4 = bitcast i8* %flags to i32*
  store i32 %cond, i32* %4, align 8, !tbaa !17
  %input_flags10 = getelementptr inbounds i8, i8* %call, i64 16
  %5 = bitcast i8* %input_flags10 to i32*
  store i32 %input_flags, i32* %5, align 8, !tbaa !37
  %type11 = bitcast i8* %call to i32*
  store i32 %type, i32* %type11, align 8, !tbaa !21
  %result_buf12 = getelementptr inbounds i8, i8* %call, i64 24
  %6 = bitcast i8* %result_buf12 to i8**
  store i8* %result_buf, i8** %6, align 8, !tbaa !27
  br label %if.end14

if.end14:                                         ; preds = %if.then6, %if.then9, %if.else7, %if.then
  %ret.0 = phi %struct.ui_string_st* [ null, %if.then ], [ null, %if.then6 ], [ %2, %if.then9 ], [ null, %if.else7 ]
  ret %struct.ui_string_st* %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @allocate_string_stack(%struct.ui_st* nocapture noundef %ui) unnamed_addr #0 {
entry:
  %strings = getelementptr inbounds %struct.ui_st, %struct.ui_st* %ui, i64 0, i32 1
  %0 = load %struct.stack_st_UI_STRING*, %struct.stack_st_UI_STRING** %strings, align 8, !tbaa !16
  %cmp = icmp eq %struct.stack_st_UI_STRING* %0, null
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #10
  %1 = bitcast %struct.stack_st_UI_STRING** %strings to %struct.stack_st**
  store %struct.stack_st* %call, %struct.stack_st** %1, align 8, !tbaa !16
  %cmp3 = icmp eq %struct.stack_st* %call, null
  br i1 %cmp3, label %return, label %if.end5

if.end5:                                          ; preds = %if.then, %entry
  br label %return

return:                                           ; preds = %if.then, %if.end5
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -1, %if.then ]
  ret i32 %retval.0
}

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #8

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 48}
!5 = !{!"ui_st", !6, i64 0, !6, i64 8, !6, i64 16, !9, i64 24, !10, i64 40, !6, i64 48}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!10 = !{!"int", !7, i64 0}
!11 = !{!5, !6, i64 0}
!12 = !{!5, !10, i64 40}
!13 = !{!14, !6, i64 56}
!14 = !{!"ui_method_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !9, i64 72}
!15 = !{!5, !6, i64 16}
!16 = !{!5, !6, i64 8}
!17 = !{!18, !10, i64 64}
!18 = !{!"ui_string_st", !7, i64 0, !6, i64 8, !10, i64 16, !6, i64 24, !19, i64 32, !7, i64 40, !10, i64 64}
!19 = !{!"long", !7, i64 0}
!20 = !{!18, !6, i64 8}
!21 = !{!18, !7, i64 0}
!22 = !{!7, !7, i64 0}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!14, !6, i64 64}
!26 = !{!14, !6, i64 48}
!27 = !{!18, !6, i64 24}
!28 = !{!18, !19, i64 32}
!29 = !{!14, !6, i64 8}
!30 = !{!14, !6, i64 16}
!31 = distinct !{!31, !24}
!32 = !{!14, !6, i64 24}
!33 = !{!14, !6, i64 32}
!34 = distinct !{!34, !24}
!35 = !{!14, !6, i64 40}
!36 = !{!14, !6, i64 0}
!37 = !{!18, !10, i64 16}
!38 = distinct !{!38, !24}
