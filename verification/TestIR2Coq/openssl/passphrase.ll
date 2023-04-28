; ModuleID = 'crypto/passphrase.c'
source_filename = "crypto/passphrase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_passphrase_data_st = type { i32, %union.anon, i8, i8*, i64 }
%union.anon = type { %struct.anon }
%struct.anon = type { i8*, i64 }
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ui_method_st = type opaque
%struct.ui_st = type opaque

@.str = private unnamed_addr constant [20 x i8] c"crypto/passphrase.c\00", align 1
@__func__.ossl_pw_set_passphrase = private unnamed_addr constant [23 x i8] c"ossl_pw_set_passphrase\00", align 1
@__func__.ossl_pw_set_pem_password_cb = private unnamed_addr constant [28 x i8] c"ossl_pw_set_pem_password_cb\00", align 1
@__func__.ossl_pw_set_ossl_passphrase_cb = private unnamed_addr constant [31 x i8] c"ossl_pw_set_ossl_passphrase_cb\00", align 1
@__func__.ossl_pw_set_ui_method = private unnamed_addr constant [22 x i8] c"ossl_pw_set_ui_method\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@__func__.ossl_pw_get_passphrase = private unnamed_addr constant [23 x i8] c"ossl_pw_get_passphrase\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Prompt info data type incorrect\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"No password method specified\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"PEM\00", align 1
@__func__.do_ui_passphrase = private unnamed_addr constant [17 x i8] c"do_ui_passphrase\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"pass phrase\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @ossl_pw_clear_passphrase_data(%struct.ossl_passphrase_data_st* noundef %data) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_passphrase_data_st* %data, null
  br i1 %cmp.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.ossl_passphrase_data_st, %struct.ossl_passphrase_data_st* %data, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !4
  %cmp1 = icmp eq i32 %0, 1
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %passphrase_copy = getelementptr inbounds %struct.ossl_passphrase_data_st, %struct.ossl_passphrase_data_st* %data, i64 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %passphrase_copy, align 8, !tbaa !11
  %passphrase_len = getelementptr inbounds %struct.ossl_passphrase_data_st, %struct.ossl_passphrase_data_st* %data, i64 0, i32 1, i32 0, i32 1
  %2 = load i64, i64* %passphrase_len, align 8, !tbaa !11
  tail call void @CRYPTO_clear_free(i8* noundef %1, i64 noundef %2, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 21) #6
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  tail call void @ossl_pw_clear_passphrase_cache(%struct.ossl_passphrase_data_st* noundef nonnull %data) #7
  %3 = bitcast %struct.ossl_passphrase_data_st* %data to i8*
  %call = tail call i8* @memset(i8* noundef nonnull %3, i32 noundef 0, i64 noundef 48) #6
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  ret void
}

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @ossl_pw_clear_passphrase_cache(%struct.ossl_passphrase_data_st* nocapture noundef %data) local_unnamed_addr #0 {
entry:
  %cached_passphrase = getelementptr inbounds %struct.ossl_passphrase_data_st, %struct.ossl_passphrase_data_st* %data, i64 0, i32 3
  %0 = load i8*, i8** %cached_passphrase, align 8, !tbaa !12
  %cached_passphrase_len = getelementptr inbounds %struct.ossl_passphrase_data_st, %struct.ossl_passphrase_data_st* %data, i64 0, i32 4
  %1 = load i64, i64* %cached_passphrase_len, align 8, !tbaa !13
  tail call void @CRYPTO_clear_free(i8* noundef %0, i64 noundef %1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 29) #6
  store i8* null, i8** %cached_passphrase, align 8, !tbaa !12
  ret void
}

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_pw_set_passphrase(%struct.ossl_passphrase_data_st* noundef %data, i8* noundef %passphrase, i64 noundef %passphrase_len) local_unnamed_addr #0 {
entry:
  %cmp = icmp ne %struct.ossl_passphrase_data_st* %data, null
  %cmp1 = icmp ne i8* %passphrase, null
  %0 = and i1 %cmp, %cmp1
  br i1 %0, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ossl_pw_set_passphrase, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786690, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  tail call void @ossl_pw_clear_passphrase_data(%struct.ossl_passphrase_data_st* noundef nonnull %data) #7
  %type = getelementptr inbounds %struct.ossl_passphrase_data_st, %struct.ossl_passphrase_data_st* %data, i64 0, i32 0
  store i32 1, i32* %type, align 8, !tbaa !4
  %call = tail call i8* @CRYPTO_memdup(i8* noundef nonnull %passphrase, i64 noundef %passphrase_len, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 44) #6
  %passphrase_copy = getelementptr inbounds %struct.ossl_passphrase_data_st, %struct.ossl_passphrase_data_st* %data, i64 0, i32 1, i32 0, i32 0
  store i8* %call, i8** %passphrase_copy, align 8, !tbaa !11
  %cmp6 = icmp eq i8* %call, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ossl_pw_set_passphrase, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #6
  br label %return

if.end8:                                          ; preds = %if.end
  %passphrase_len11 = getelementptr inbounds %struct.ossl_passphrase_data_st, %struct.ossl_passphrase_data_st* %data, i64 0, i32 1, i32 0, i32 1
  store i64 %passphrase_len, i64* %passphrase_len11, align 8, !tbaa !11
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %retval.0 = phi i32 [ 0, %if.then7 ], [ 1, %if.end8 ], [ 0, %if.then ]
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i8* @CRYPTO_memdup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_pw_set_pem_password_cb(%struct.ossl_passphrase_data_st* noundef %data, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %cbarg) local_unnamed_addr #0 {
entry:
  %cmp = icmp ne %struct.ossl_passphrase_data_st* %data, null
  %cmp1 = icmp ne i32 (i8*, i32, i32, i8*)* %cb, null
  %0 = and i1 %cmp, %cmp1
  br i1 %0, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.ossl_pw_set_pem_password_cb, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786690, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  tail call void @ossl_pw_clear_passphrase_data(%struct.ossl_passphrase_data_st* noundef nonnull %data) #7
  %type = getelementptr inbounds %struct.ossl_passphrase_data_st, %struct.ossl_passphrase_data_st* %data, i64 0, i32 0
  store i32 2, i32* %type, align 8, !tbaa !4
  %_ = getelementptr inbounds %struct.ossl_passphrase_data_st, %struct.ossl_passphrase_data_st* %data, i64 0, i32 1
  %password_cb = bitcast %union.anon* %_ to i32 (i8*, i32, i32, i8*)**
  store i32 (i8*, i32, i32, i8*)* %cb, i32 (i8*, i32, i32, i8*)** %password_cb, align 8, !tbaa !11
  %password_cbarg = getelementptr inbounds %struct.ossl_passphrase_data_st, %struct.ossl_passphrase_data_st* %data, i64 0, i32 1, i32 0, i32 1
  %1 = bitcast i64* %password_cbarg to i8**
  store i8* %cbarg, i8** %1, align 8, !tbaa !11
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_pw_set_ossl_passphrase_cb(%struct.ossl_passphrase_data_st* noundef %data, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)* noundef %cb, i8* noundef %cbarg) local_unnamed_addr #0 {
entry:
  %cmp = icmp ne %struct.ossl_passphrase_data_st* %data, null
  %cmp1 = icmp ne i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)* %cb, null
  %0 = and i1 %cmp, %cmp1
  br i1 %0, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.ossl_pw_set_ossl_passphrase_cb, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786690, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  tail call void @ossl_pw_clear_passphrase_data(%struct.ossl_passphrase_data_st* noundef nonnull %data) #7
  %type = getelementptr inbounds %struct.ossl_passphrase_data_st, %struct.ossl_passphrase_data_st* %data, i64 0, i32 0
  store i32 3, i32* %type, align 8, !tbaa !4
  %_ = getelementptr inbounds %struct.ossl_passphrase_data_st, %struct.ossl_passphrase_data_st* %data, i64 0, i32 1
  %passphrase_cb = bitcast %union.anon* %_ to i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)**
  store i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)* %cb, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)** %passphrase_cb, align 8, !tbaa !11
  %passphrase_cbarg = getelementptr inbounds %struct.ossl_passphrase_data_st, %struct.ossl_passphrase_data_st* %data, i64 0, i32 1, i32 0, i32 1
  %1 = bitcast i64* %passphrase_cbarg to i8**
  store i8* %cbarg, i8** %1, align 8, !tbaa !11
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_pw_set_ui_method(%struct.ossl_passphrase_data_st* noundef %data, %struct.ui_method_st* noundef %ui_method, i8* noundef %ui_data) local_unnamed_addr #0 {
entry:
  %cmp = icmp ne %struct.ossl_passphrase_data_st* %data, null
  %cmp1 = icmp ne %struct.ui_method_st* %ui_method, null
  %0 = and i1 %cmp, %cmp1
  br i1 %0, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ossl_pw_set_ui_method, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786690, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  tail call void @ossl_pw_clear_passphrase_data(%struct.ossl_passphrase_data_st* noundef nonnull %data) #7
  %type = getelementptr inbounds %struct.ossl_passphrase_data_st, %struct.ossl_passphrase_data_st* %data, i64 0, i32 0
  store i32 4, i32* %type, align 8, !tbaa !4
  %_ = getelementptr inbounds %struct.ossl_passphrase_data_st, %struct.ossl_passphrase_data_st* %data, i64 0, i32 1
  %ui_method4 = bitcast %union.anon* %_ to %struct.ui_method_st**
  store %struct.ui_method_st* %ui_method, %struct.ui_method_st** %ui_method4, align 8, !tbaa !11
  %ui_method_data = getelementptr inbounds %struct.ossl_passphrase_data_st, %struct.ossl_passphrase_data_st* %data, i64 0, i32 1, i32 0, i32 1
  %1 = bitcast i64* %ui_method_data to i8**
  store i8* %ui_data, i8** %1, align 8, !tbaa !11
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @ossl_pw_enable_passphrase_caching(%struct.ossl_passphrase_data_st* nocapture noundef %data) local_unnamed_addr #3 {
entry:
  %flag_cache_passphrase = getelementptr inbounds %struct.ossl_passphrase_data_st, %struct.ossl_passphrase_data_st* %data, i64 0, i32 2
  %bf.load = load i8, i8* %flag_cache_passphrase, align 8
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, i8* %flag_cache_passphrase, align 8
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @ossl_pw_disable_passphrase_caching(%struct.ossl_passphrase_data_st* nocapture noundef %data) local_unnamed_addr #3 {
entry:
  %flag_cache_passphrase = getelementptr inbounds %struct.ossl_passphrase_data_st, %struct.ossl_passphrase_data_st* %data, i64 0, i32 2
  %bf.load = load i8, i8* %flag_cache_passphrase, align 8
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %flag_cache_passphrase, align 8
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_pw_get_passphrase(i8* noundef %pass, i64 noundef %pass_size, i64* noundef %pass_len, %struct.ossl_param_st* noundef %params, i32 noundef %verify, %struct.ossl_passphrase_data_st* nocapture noundef %data) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.ossl_passphrase_data_st, %struct.ossl_passphrase_data_st* %data, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.end6, label %if.else

if.else:                                          ; preds = %entry
  %flag_cache_passphrase = getelementptr inbounds %struct.ossl_passphrase_data_st, %struct.ossl_passphrase_data_st* %data, i64 0, i32 2
  %bf.load = load i8, i8* %flag_cache_passphrase, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %cached_passphrase = getelementptr inbounds %struct.ossl_passphrase_data_st, %struct.ossl_passphrase_data_st* %data, i64 0, i32 3
  %1 = load i8*, i8** %cached_passphrase, align 8, !tbaa !12
  %cmp3.not = icmp eq i8* %1, null
  br i1 %cmp3.not, label %if.end12, label %if.end6.thread162

if.end6.thread162:                                ; preds = %land.lhs.true
  %cached_passphrase_len = getelementptr inbounds %struct.ossl_passphrase_data_st, %struct.ossl_passphrase_data_st* %data, i64 0, i32 4
  br label %if.then8

if.end6:                                          ; preds = %entry
  %passphrase_copy = getelementptr inbounds %struct.ossl_passphrase_data_st, %struct.ossl_passphrase_data_st* %data, i64 0, i32 1, i32 0, i32 0
  %2 = load i8*, i8** %passphrase_copy, align 8, !tbaa !11
  %passphrase_len = getelementptr inbounds %struct.ossl_passphrase_data_st, %struct.ossl_passphrase_data_st* %data, i64 0, i32 1, i32 0, i32 1
  %cmp7.not = icmp eq i8* %2, null
  br i1 %cmp7.not, label %if.end20, label %if.then8

if.then8:                                         ; preds = %if.end6.thread162, %if.end6
  %source.0167 = phi i8* [ %1, %if.end6.thread162 ], [ %2, %if.end6 ]
  %source_len.0166.in = phi i64* [ %cached_passphrase_len, %if.end6.thread162 ], [ %passphrase_len, %if.end6 ]
  %source_len.0166 = load i64, i64* %source_len.0166.in, align 8, !tbaa !11
  %cmp9 = icmp ugt i64 %source_len.0166, %pass_size
  %spec.select = select i1 %cmp9, i64 %pass_size, i64 %source_len.0166
  %call = tail call i8* @memcpy(i8* noundef %pass, i8* noundef nonnull %source.0167, i64 noundef %spec.select) #6
  store i64 %spec.select, i64* %pass_len, align 8, !tbaa !14
  br label %cleanup85

if.end12:                                         ; preds = %land.lhs.true, %if.else
  %cmp14 = icmp eq i32 %0, 3
  br i1 %cmp14, label %if.then15, label %if.end20

if.then15:                                        ; preds = %if.end12
  %_16 = getelementptr inbounds %struct.ossl_passphrase_data_st, %struct.ossl_passphrase_data_st* %data, i64 0, i32 1
  %passphrase_cb = bitcast %union.anon* %_16 to i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)**
  %3 = load i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)** %passphrase_cb, align 8, !tbaa !11
  %passphrase_cbarg = getelementptr inbounds %struct.ossl_passphrase_data_st, %struct.ossl_passphrase_data_st* %data, i64 0, i32 1, i32 0, i32 1
  %4 = bitcast i64* %passphrase_cbarg to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !11
  %call19 = tail call i32 %3(i8* noundef %pass, i64 noundef %pass_size, i64* noundef %pass_len, %struct.ossl_param_st* noundef %params, i8* noundef %5) #6
  br label %do_cache

if.end20:                                         ; preds = %if.end6, %if.end12
  %call21 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #6
  %cmp22.not = icmp eq %struct.ossl_param_st* %call21, null
  br i1 %cmp22.not, label %if.end28, label %if.then23

if.then23:                                        ; preds = %if.end20
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call21, i64 0, i32 1
  %6 = load i32, i32* %data_type, align 8, !tbaa !15
  %cmp24.not = icmp eq i32 %6, 4
  br i1 %cmp24.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.then23
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 240, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ossl_pw_get_passphrase, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 524550, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0)) #6
  br label %cleanup85

if.end26:                                         ; preds = %if.then23
  %data27 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call21, i64 0, i32 2
  %7 = load i8*, i8** %data27, align 8, !tbaa !17
  br label %if.end28

if.end28:                                         ; preds = %if.end26, %if.end20
  %prompt_info.0 = phi i8* [ %7, %if.end26 ], [ null, %if.end20 ]
  %8 = load i32, i32* %type, align 8, !tbaa !4
  switch i32 %8, label %if.then52 [
    i32 2, label %if.then31
    i32 4, label %if.end50
  ]

if.then31:                                        ; preds = %if.end28
  %_33 = getelementptr inbounds %struct.ossl_passphrase_data_st, %struct.ossl_passphrase_data_st* %data, i64 0, i32 1
  %password_cb = bitcast %union.anon* %_33 to i32 (i8*, i32, i32, i8*)**
  %9 = load i32 (i8*, i32, i32, i8*)*, i32 (i8*, i32, i32, i8*)** %password_cb, align 8, !tbaa !11
  %call34 = tail call %struct.ui_method_st* @UI_UTIL_wrap_read_pem_callback(i32 (i8*, i32, i32, i8*)* noundef %9, i32 noundef %verify) #6
  %cmp37 = icmp eq %struct.ui_method_st* %call34, null
  br i1 %cmp37, label %if.then38, label %if.end53

if.then38:                                        ; preds = %if.then31
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 256, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ossl_pw_get_passphrase, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup85

if.end50:                                         ; preds = %if.end28
  %_44 = getelementptr inbounds %struct.ossl_passphrase_data_st, %struct.ossl_passphrase_data_st* %data, i64 0, i32 1
  %ui_method46 = bitcast %union.anon* %_44 to %struct.ui_method_st**
  %10 = load %struct.ui_method_st*, %struct.ui_method_st** %ui_method46, align 8, !tbaa !11
  %cmp51 = icmp eq %struct.ui_method_st* %10, null
  br i1 %cmp51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end28, %if.end50
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 265, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ossl_pw_get_passphrase, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 524550, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0)) #6
  br label %cleanup85

if.end53:                                         ; preds = %if.then31, %if.end50
  %allocated_ui_method.0179 = phi %struct.ui_method_st* [ null, %if.end50 ], [ %call34, %if.then31 ]
  %ui_method.0178 = phi %struct.ui_method_st* [ %10, %if.end50 ], [ %call34, %if.then31 ]
  %ui_data.0180.in.in = getelementptr inbounds %struct.ossl_passphrase_data_st, %struct.ossl_passphrase_data_st* %data, i64 0, i32 1, i32 0, i32 1
  %ui_data.0180.in = bitcast i64* %ui_data.0180.in.in to i8**
  %ui_data.0180 = load i8*, i8** %ui_data.0180.in, align 8, !tbaa !11
  %call54 = tail call fastcc i32 @do_ui_passphrase(i8* noundef %pass, i64 noundef %pass_size, i64* noundef %pass_len, i8* noundef %prompt_info.0, i32 noundef %verify, %struct.ui_method_st* noundef nonnull %ui_method.0178, i8* noundef %ui_data.0180) #7
  tail call void @UI_destroy_method(%struct.ui_method_st* noundef %allocated_ui_method.0179) #6
  br label %do_cache

do_cache:                                         ; preds = %if.then15, %if.end53
  %ret.0 = phi i32 [ %call19, %if.then15 ], [ %call54, %if.end53 ]
  %tobool56.not = icmp eq i32 %ret.0, 0
  br i1 %tobool56.not, label %cleanup85, label %land.lhs.true57

land.lhs.true57:                                  ; preds = %do_cache
  %flag_cache_passphrase58 = getelementptr inbounds %struct.ossl_passphrase_data_st, %struct.ossl_passphrase_data_st* %data, i64 0, i32 2
  %bf.load59 = load i8, i8* %flag_cache_passphrase58, align 8
  %bf.clear60 = and i8 %bf.load59, 1
  %tobool62.not = icmp eq i8 %bf.clear60, 0
  br i1 %tobool62.not, label %cleanup85, label %if.then63

if.then63:                                        ; preds = %land.lhs.true57
  %cached_passphrase64 = getelementptr inbounds %struct.ossl_passphrase_data_st, %struct.ossl_passphrase_data_st* %data, i64 0, i32 3
  %11 = load i8*, i8** %cached_passphrase64, align 8, !tbaa !12
  %cmp65 = icmp eq i8* %11, null
  br i1 %cmp65, label %if.then63.if.then68_crit_edge, label %lor.lhs.false

if.then63.if.then68_crit_edge:                    ; preds = %if.then63
  %cached_passphrase_len70.phi.trans.insert = getelementptr inbounds %struct.ossl_passphrase_data_st, %struct.ossl_passphrase_data_st* %data, i64 0, i32 4
  %.pre = load i64, i64* %cached_passphrase_len70.phi.trans.insert, align 8, !tbaa !13
  %.pre181 = load i64, i64* %pass_len, align 8, !tbaa !14
  br label %if.then68

lor.lhs.false:                                    ; preds = %if.then63
  %12 = load i64, i64* %pass_len, align 8, !tbaa !14
  %cached_passphrase_len66 = getelementptr inbounds %struct.ossl_passphrase_data_st, %struct.ossl_passphrase_data_st* %data, i64 0, i32 4
  %13 = load i64, i64* %cached_passphrase_len66, align 8, !tbaa !13
  %cmp67 = icmp ugt i64 %12, %13
  br i1 %cmp67, label %if.then68, label %if.end79

if.then68:                                        ; preds = %if.then63.if.then68_crit_edge, %lor.lhs.false
  %14 = phi i64 [ %.pre181, %if.then63.if.then68_crit_edge ], [ %12, %lor.lhs.false ]
  %15 = phi i64 [ %.pre, %if.then63.if.then68_crit_edge ], [ %13, %lor.lhs.false ]
  %add = add i64 %14, 1
  %call71 = tail call i8* @CRYPTO_clear_realloc(i8* noundef %11, i64 noundef %15, i64 noundef %add, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 282) #6
  %cmp72 = icmp eq i8* %call71, null
  br i1 %cmp72, label %cleanup76.thread, label %cleanup76

cleanup76.thread:                                 ; preds = %if.then68
  %16 = load i64, i64* %pass_len, align 8, !tbaa !14
  tail call void @OPENSSL_cleanse(i8* noundef %pass, i64 noundef %16) #6
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 286, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ossl_pw_get_passphrase, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup85

cleanup76:                                        ; preds = %if.then68
  store i8* %call71, i8** %cached_passphrase64, align 8, !tbaa !12
  %.pre182 = load i64, i64* %pass_len, align 8, !tbaa !14
  br label %if.end79

if.end79:                                         ; preds = %cleanup76, %lor.lhs.false
  %17 = phi i64 [ %.pre182, %cleanup76 ], [ %12, %lor.lhs.false ]
  %18 = phi i8* [ %call71, %cleanup76 ], [ %11, %lor.lhs.false ]
  %call81 = tail call i8* @memcpy(i8* noundef nonnull %18, i8* noundef %pass, i64 noundef %17) #6
  %19 = load i8*, i8** %cached_passphrase64, align 8, !tbaa !12
  %20 = load i64, i64* %pass_len, align 8, !tbaa !14
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 %20
  store i8 0, i8* %arrayidx, align 1, !tbaa !11
  %21 = load i64, i64* %pass_len, align 8, !tbaa !14
  %cached_passphrase_len83 = getelementptr inbounds %struct.ossl_passphrase_data_st, %struct.ossl_passphrase_data_st* %data, i64 0, i32 4
  store i64 %21, i64* %cached_passphrase_len83, align 8, !tbaa !13
  br label %cleanup85

cleanup85:                                        ; preds = %cleanup76.thread, %if.then38, %do_cache, %land.lhs.true57, %if.end79, %if.then52, %if.then25, %if.then8
  %retval.4 = phi i32 [ 1, %if.then8 ], [ 0, %if.then25 ], [ 0, %if.then52 ], [ 0, %if.then38 ], [ %ret.0, %if.end79 ], [ %ret.0, %land.lhs.true57 ], [ 0, %do_cache ], [ 0, %cleanup76.thread ]
  ret i32 %retval.4
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

declare %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.ui_method_st* @UI_UTIL_wrap_read_pem_callback(i32 (i8*, i32, i32, i8*)* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_ui_passphrase(i8* noundef %pass, i64 noundef %pass_size, i64* noundef writeonly %pass_len, i8* noundef %prompt_info, i32 noundef %verify, %struct.ui_method_st* noundef %ui_method, i8* noundef %ui_data) unnamed_addr #0 {
entry:
  %cmp = icmp ne i8* %pass, null
  %cmp1 = icmp ne i64 %pass_size, 0
  %or.cond = and i1 %cmp, %cmp1
  %cmp2 = icmp ne i64* %pass_len, null
  %spec.select = and i1 %or.cond, %cmp2
  br i1 %spec.select, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 126, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.do_ui_passphrase, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786690, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call %struct.ui_st* @UI_new() #6
  %cmp4 = icmp eq %struct.ui_st* %call, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 131, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.do_ui_passphrase, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %cmp7.not = icmp eq %struct.ui_method_st* %ui_method, null
  br i1 %cmp7.not, label %if.end14, label %if.then8

if.then8:                                         ; preds = %if.end6
  %call9 = tail call %struct.ui_method_st* @UI_set_method(%struct.ui_st* noundef nonnull %call, %struct.ui_method_st* noundef nonnull %ui_method) #6
  %cmp10.not = icmp eq i8* %ui_data, null
  br i1 %cmp10.not, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.then8
  %call12 = tail call i8* @UI_add_user_data(%struct.ui_st* noundef nonnull %call, i8* noundef nonnull %ui_data) #6
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.then11, %if.end6
  %call15 = tail call i8* @UI_construct_prompt(%struct.ui_st* noundef nonnull %call, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* noundef %prompt_info) #6
  %cmp16 = icmp eq i8* %call15, null
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 144, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.do_ui_passphrase, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #6
  br label %end

if.end18:                                         ; preds = %if.end14
  %0 = trunc i64 %pass_size to i32
  %conv = add i32 %0, -1
  %call19 = tail call i32 @UI_add_input_string(%struct.ui_st* noundef nonnull %call, i8* noundef nonnull %call15, i32 noundef 2, i8* noundef nonnull %pass, i32 noundef 0, i32 noundef %conv) #6
  %sub20 = add nsw i32 %call19, -1
  %cmp21 = icmp slt i32 %call19, 1
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end18
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 152, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.do_ui_passphrase, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 524328, i8* noundef null) #6
  br label %end

if.end24:                                         ; preds = %if.end18
  %tobool.not = icmp eq i32 %verify, 0
  br i1 %tobool.not, label %if.end39, label %if.then25

if.then25:                                        ; preds = %if.end24
  %call26 = tail call i8* @CRYPTO_zalloc(i64 noundef %pass_size, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 158) #6
  %cmp27 = icmp eq i8* %call26, null
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then25
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 160, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.do_ui_passphrase, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #6
  br label %end

if.end30:                                         ; preds = %if.then25
  %call33 = tail call i32 @UI_add_verify_string(%struct.ui_st* noundef nonnull %call, i8* noundef nonnull %call15, i32 noundef 2, i8* noundef nonnull %call26, i32 noundef 0, i32 noundef %conv, i8* noundef nonnull %pass) #6
  %cmp35 = icmp slt i32 %call33, 1
  br i1 %cmp35, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end30
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 168, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.do_ui_passphrase, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 524328, i8* noundef null) #6
  br label %end

if.end39:                                         ; preds = %if.end30, %if.end24
  %vpass.0 = phi i8* [ %call26, %if.end30 ], [ null, %if.end24 ]
  %call40 = tail call i32 @UI_process(%struct.ui_st* noundef nonnull %call) #6
  switch i32 %call40, label %sw.default [
    i32 -2, label %sw.bb
    i32 -1, label %sw.bb41
  ]

sw.bb:                                            ; preds = %if.end39
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 175, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.do_ui_passphrase, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 524553, i8* noundef null) #6
  br label %end

sw.bb41:                                          ; preds = %if.end39
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 178, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.do_ui_passphrase, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 524328, i8* noundef null) #6
  br label %end

sw.default:                                       ; preds = %if.end39
  %call42 = tail call i32 @UI_get_result_length(%struct.ui_st* noundef nonnull %call, i32 noundef %sub20) #6
  %conv43 = sext i32 %call42 to i64
  store i64 %conv43, i64* %pass_len, align 8, !tbaa !14
  br label %end

end:                                              ; preds = %sw.bb, %sw.bb41, %sw.default, %if.then37, %if.then29, %if.then23, %if.then17
  %vpass.1 = phi i8* [ null, %if.then17 ], [ null, %if.then23 ], [ null, %if.then29 ], [ %call26, %if.then37 ], [ %vpass.0, %sw.default ], [ %vpass.0, %sw.bb41 ], [ %vpass.0, %sw.bb ]
  %ret.0 = phi i32 [ 0, %if.then17 ], [ 0, %if.then23 ], [ 0, %if.then29 ], [ 0, %if.then37 ], [ 1, %sw.default ], [ 0, %sw.bb41 ], [ 0, %sw.bb ]
  tail call void @CRYPTO_free(i8* noundef %vpass.1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 187) #6
  tail call void @CRYPTO_free(i8* noundef %call15, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 188) #6
  tail call void @UI_free(%struct.ui_st* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %end, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then5 ], [ %ret.0, %end ], [ 0, %if.then ]
  ret i32 %retval.0
}

declare void @UI_destroy_method(%struct.ui_method_st* noundef) local_unnamed_addr #1

declare i8* @CRYPTO_clear_realloc(i8* noundef, i64 noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_pw_pem_password(i8* noundef %buf, i32 noundef %size, i32 noundef %rwflag, i8* nocapture noundef %userdata) local_unnamed_addr #0 {
entry:
  %password_len = alloca i64, align 8
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %0 = bitcast i64* %password_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store i64 0, i64* %password_len, align 8, !tbaa !14
  %1 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %1, i8 0, i64 80, i1 false)
  %2 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 16
  %3 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0, i32 1
  store i32 4, i32* %3, align 8
  %4 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0, i32 4
  store i64 -1, i64* %4, align 16
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %data = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %data, align 16, !tbaa !17
  %conv = sext i32 %size to i64
  %5 = bitcast i8* %userdata to %struct.ossl_passphrase_data_st*
  %call = call i32 @ossl_pw_get_passphrase(i8* noundef %buf, i64 noundef %conv, i64* noundef nonnull %password_len, %struct.ossl_param_st* noundef nonnull %arrayidx, i32 noundef %rwflag, %struct.ossl_passphrase_data_st* noundef %5) #7
  %tobool.not = icmp eq i32 %call, 0
  %6 = load i64, i64* %password_len, align 8
  %conv1 = trunc i64 %6 to i32
  %retval.0 = select i1 %tobool.not, i32 -1, i32 %conv1
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_pw_passphrase_callback_enc(i8* noundef %pass, i64 noundef %pass_size, i64* noundef %pass_len, %struct.ossl_param_st* noundef %params, i8* nocapture noundef %arg) local_unnamed_addr #0 {
entry:
  %0 = bitcast i8* %arg to %struct.ossl_passphrase_data_st*
  %call = tail call i32 @ossl_pw_get_passphrase(i8* noundef %pass, i64 noundef %pass_size, i64* noundef %pass_len, %struct.ossl_param_st* noundef %params, i32 noundef 1, %struct.ossl_passphrase_data_st* noundef %0) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_pw_passphrase_callback_dec(i8* noundef %pass, i64 noundef %pass_size, i64* noundef %pass_len, %struct.ossl_param_st* noundef %params, i8* nocapture noundef %arg) local_unnamed_addr #0 {
entry:
  %0 = bitcast i8* %arg to %struct.ossl_passphrase_data_st*
  %call = tail call i32 @ossl_pw_get_passphrase(i8* noundef %pass, i64 noundef %pass_size, i64* noundef %pass_len, %struct.ossl_param_st* noundef %params, i32 noundef 0, %struct.ossl_passphrase_data_st* noundef %0) #7
  ret i32 %call
}

declare %struct.ui_st* @UI_new() local_unnamed_addr #1

declare %struct.ui_method_st* @UI_set_method(%struct.ui_st* noundef, %struct.ui_method_st* noundef) local_unnamed_addr #1

declare i8* @UI_add_user_data(%struct.ui_st* noundef, i8* noundef) local_unnamed_addr #1

declare i8* @UI_construct_prompt(%struct.ui_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @UI_add_input_string(%struct.ui_st* noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @UI_add_verify_string(%struct.ui_st* noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare i32 @UI_process(%struct.ui_st* noundef) local_unnamed_addr #1

declare i32 @UI_get_result_length(%struct.ui_st* noundef, i32 noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @UI_free(%struct.ui_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"ossl_passphrase_data_st", !6, i64 0, !6, i64 8, !8, i64 24, !9, i64 32, !10, i64 40}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"int", !6, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!"long", !6, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!5, !9, i64 32}
!13 = !{!5, !10, i64 40}
!14 = !{!10, !10, i64 0}
!15 = !{!16, !8, i64 8}
!16 = !{!"ossl_param_st", !9, i64 0, !8, i64 8, !9, i64 16, !10, i64 24, !10, i64 32}
!17 = !{!16, !9, i64 16}
