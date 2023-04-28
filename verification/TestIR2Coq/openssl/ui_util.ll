; ModuleID = 'crypto/ui/ui_util.c'
source_filename = "crypto/ui/ui_util.c"
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

@.str = private unnamed_addr constant [20 x i8] c"crypto/ui/ui_util.c\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"PEM password callback wrapper\00", align 1
@get_index_once = internal global i32 0, align 4
@ui_method_data_index_init_ossl_ret_ = internal unnamed_addr global i1 false, align 4
@ui_method_data_index = internal unnamed_addr global i32 -1, align 4

; Function Attrs: noinline nounwind uwtable
define i32 @UI_UTIL_read_pw_string(i8* noundef %buf, i32 noundef %length, i8* noundef %prompt, i32 noundef %verify) local_unnamed_addr #0 {
entry:
  %buff = alloca [8192 x i8], align 16
  %0 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buff, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %0) #4
  %1 = icmp slt i32 %length, 8192
  %cond = select i1 %1, i32 %length, i32 8192
  %call = call i32 @UI_UTIL_read_pw(i8* noundef %buf, i8* noundef nonnull %0, i32 noundef %cond, i8* noundef %prompt, i32 noundef %verify) #5
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 8192) #6
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %0) #4
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @UI_UTIL_read_pw(i8* noundef %buf, i8* noundef %buff, i32 noundef %size, i8* noundef %prompt, i32 noundef %verify) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %size, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ui_st* @UI_new() #6
  %cmp1.not = icmp eq %struct.ui_st* %call, null
  br i1 %cmp1.not, label %cleanup, label %if.then2

if.then2:                                         ; preds = %if.end
  %sub = add nsw i32 %size, -1
  %call3 = tail call i32 @UI_add_input_string(%struct.ui_st* noundef nonnull %call, i8* noundef %prompt, i32 noundef 0, i8* noundef %buf, i32 noundef 0, i32 noundef %sub) #6
  %cmp4 = icmp sgt i32 %call3, -1
  %tobool = icmp ne i32 %verify, 0
  %or.cond = and i1 %tobool, %cmp4
  br i1 %or.cond, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.then2
  %call7 = tail call i32 @UI_add_verify_string(%struct.ui_st* noundef nonnull %call, i8* noundef %prompt, i32 noundef 0, i8* noundef %buff, i32 noundef 0, i32 noundef %sub, i8* noundef %buf) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.then2
  %ok.0 = phi i32 [ %call7, %if.then5 ], [ %call3, %if.then2 ]
  %cmp9 = icmp sgt i32 %ok.0, -1
  br i1 %cmp9, label %if.end13, label %if.end13.thread32

if.end13.thread32:                                ; preds = %if.end8
  tail call void @UI_free(%struct.ui_st* noundef nonnull %call) #6
  br label %1

if.end13:                                         ; preds = %if.end8
  %call11 = tail call i32 @UI_process(%struct.ui_st* noundef nonnull %call) #6
  tail call void @UI_free(%struct.ui_st* noundef nonnull %call) #6
  %0 = icmp slt i32 %call11, 0
  br i1 %0, label %1, label %cleanup

1:                                                ; preds = %if.end13.thread32, %if.end13
  %ok.134 = phi i32 [ %ok.0, %if.end13.thread32 ], [ %call11, %if.end13 ]
  br label %cleanup

cleanup:                                          ; preds = %if.end, %1, %if.end13, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %ok.134, %1 ], [ 0, %if.end13 ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.ui_st* @UI_new() local_unnamed_addr #2

declare i32 @UI_add_input_string(%struct.ui_st* noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @UI_add_verify_string(%struct.ui_st* noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare i32 @UI_process(%struct.ui_st* noundef) local_unnamed_addr #2

declare void @UI_free(%struct.ui_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ui_method_st* @UI_UTIL_wrap_read_pem_callback(i32 (i8*, i32, i32, i8*)* noundef %cb, i32 noundef %rwflag) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 16, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 146) #6
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call %struct.ui_method_st* @UI_create_method(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0)) #6
  %cmp2 = icmp eq %struct.ui_method_st* %call1, null
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @UI_method_set_opener(%struct.ui_method_st* noundef nonnull %call1, i32 (%struct.ui_st*)* noundef nonnull @ui_open) #6
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %call7 = tail call i32 @UI_method_set_reader(%struct.ui_method_st* noundef nonnull %call1, i32 (%struct.ui_st*, %struct.ui_string_st*)* noundef nonnull @ui_read) #6
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %call10 = tail call i32 @UI_method_set_writer(%struct.ui_method_st* noundef nonnull %call1, i32 (%struct.ui_st*, %struct.ui_string_st*)* noundef nonnull @ui_write) #6
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %call13 = tail call i32 @UI_method_set_closer(%struct.ui_method_st* noundef nonnull %call1, i32 (%struct.ui_st*)* noundef nonnull @ui_close) #6
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %call16 = tail call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @get_index_once, void ()* noundef nonnull @ui_method_data_index_init_ossl_) #6
  %tobool = icmp ne i32 %call16, 0
  %.b = load i1, i1* @ui_method_data_index_init_ossl_ret_, align 4
  %or.cond = select i1 %tobool, i1 %.b, i1 false
  br i1 %or.cond, label %lor.lhs.false18, label %if.then

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %0 = load i32, i32* @ui_method_data_index, align 4, !tbaa !4
  %call19 = tail call i32 @UI_method_set_ex_data(%struct.ui_method_st* noundef nonnull %call1, i32 noundef %0, i8* noundef nonnull %call) #6
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false15, %lor.lhs.false18, %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  %ui_method.0 = phi %struct.ui_method_st* [ null, %entry ], [ null, %lor.lhs.false ], [ %call1, %lor.lhs.false3 ], [ %call1, %lor.lhs.false6 ], [ %call1, %lor.lhs.false9 ], [ %call1, %lor.lhs.false12 ], [ %call1, %lor.lhs.false18 ], [ %call1, %lor.lhs.false15 ]
  tail call void @UI_destroy_method(%struct.ui_method_st* noundef %ui_method.0) #6
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 155) #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false18
  %rwflag21 = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %rwflag21 to i32*
  store i32 %rwflag, i32* %1, align 8, !tbaa !8
  %cmp22.not = icmp eq i32 (i8*, i32, i32, i8*)* %cb, null
  %cond = select i1 %cmp22.not, i32 (i8*, i32, i32, i8*)* @PEM_def_callback, i32 (i8*, i32, i32, i8*)* %cb
  %cb25 = bitcast i8* %call to i32 (i8*, i32, i32, i8*)**
  store i32 (i8*, i32, i32, i8*)* %cond, i32 (i8*, i32, i32, i8*)** %cb25, align 8, !tbaa !11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.ui_method_st* [ null, %if.then ], [ %call1, %if.end ]
  ret %struct.ui_method_st* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.ui_method_st* @UI_create_method(i8* noundef) local_unnamed_addr #2

declare i32 @UI_method_set_opener(%struct.ui_method_st* noundef, i32 (%struct.ui_st*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @ui_open(%struct.ui_st* nocapture noundef readnone %ui) #3 {
entry:
  ret i32 1
}

declare i32 @UI_method_set_reader(%struct.ui_method_st* noundef, i32 (%struct.ui_st*, %struct.ui_string_st*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @ui_read(%struct.ui_st* noundef %ui, %struct.ui_string_st* noundef %uis) #0 {
entry:
  %result = alloca [1025 x i8], align 16
  %call = tail call i32 @UI_get_string_type(%struct.ui_string_st* noundef %uis) #6
  %cond19 = icmp eq i32 %call, 1
  br i1 %cond19, label %sw.bb, label %return

sw.bb:                                            ; preds = %entry
  %0 = getelementptr inbounds [1025 x i8], [1025 x i8]* %result, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1025, i8* nonnull %0) #4
  %call1 = tail call %struct.ui_method_st* @UI_get_method(%struct.ui_st* noundef %ui) #6
  %1 = load i32, i32* @ui_method_data_index, align 4, !tbaa !4
  %call2 = tail call i8* @UI_method_get_ex_data(%struct.ui_method_st* noundef %call1, i32 noundef %1) #6
  %call3 = tail call i32 @UI_get_result_maxsize(%struct.ui_string_st* noundef %uis) #6
  %cb = bitcast i8* %call2 to i32 (i8*, i32, i32, i8*)**
  %2 = load i32 (i8*, i32, i32, i8*)*, i32 (i8*, i32, i32, i8*)** %cb, align 8, !tbaa !11
  %3 = icmp slt i32 %call3, 1024
  %cond = select i1 %3, i32 %call3, i32 1024
  %rwflag = getelementptr inbounds i8, i8* %call2, i64 8
  %4 = bitcast i8* %rwflag to i32*
  %5 = load i32, i32* %4, align 8, !tbaa !8
  %call4 = tail call i8* @UI_get0_user_data(%struct.ui_st* noundef %ui) #6
  %call5 = call i32 %2(i8* noundef nonnull %0, i32 noundef %cond, i32 noundef %5, i8* noundef %call4) #6
  %cmp6 = icmp sgt i32 %call5, -1
  br i1 %cmp6, label %if.end, label %cleanup

if.end:                                           ; preds = %sw.bb
  %idxprom34 = zext i32 %call5 to i64
  %arrayidx = getelementptr inbounds [1025 x i8], [1025 x i8]* %result, i64 0, i64 %idxprom34
  store i8 0, i8* %arrayidx, align 1, !tbaa !12
  %cmp7 = icmp eq i32 %call5, 0
  br i1 %cmp7, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end
  %call11 = call i32 @UI_set_result_ex(%struct.ui_st* noundef %ui, %struct.ui_string_st* noundef %uis, i8* noundef nonnull %0, i32 noundef %call5) #6
  %6 = xor i32 %call11, -1
  %call11.lobit.not = lshr i32 %6, 31
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end9, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ %call11.lobit.not, %if.end9 ], [ %call5, %sw.bb ]
  call void @llvm.lifetime.end.p0i8(i64 1025, i8* nonnull %0) #4
  br label %return

return:                                           ; preds = %entry, %cleanup
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ 1, %entry ]
  ret i32 %retval.1
}

declare i32 @UI_method_set_writer(%struct.ui_method_st* noundef, i32 (%struct.ui_st*, %struct.ui_string_st*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @ui_write(%struct.ui_st* nocapture noundef readnone %ui, %struct.ui_string_st* nocapture noundef readnone %uis) #3 {
entry:
  ret i32 1
}

declare i32 @UI_method_set_closer(%struct.ui_method_st* noundef, i32 (%struct.ui_st*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @ui_close(%struct.ui_st* nocapture noundef readnone %ui) #3 {
entry:
  ret i32 1
}

declare i32 @CRYPTO_THREAD_run_once(i32* noundef, void ()* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @ui_method_data_index_init_ossl_() #0 {
entry:
  tail call fastcc void @ui_method_data_index_init() #5
  store i1 true, i1* @ui_method_data_index_init_ossl_ret_, align 4
  ret void
}

declare i32 @UI_method_set_ex_data(%struct.ui_method_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @UI_destroy_method(%struct.ui_method_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @PEM_def_callback(i8* noundef, i32 noundef, i32 noundef, i8* noundef) #2

declare i32 @UI_get_string_type(%struct.ui_string_st* noundef) local_unnamed_addr #2

declare i8* @UI_method_get_ex_data(%struct.ui_method_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.ui_method_st* @UI_get_method(%struct.ui_st* noundef) local_unnamed_addr #2

declare i32 @UI_get_result_maxsize(%struct.ui_string_st* noundef) local_unnamed_addr #2

declare i8* @UI_get0_user_data(%struct.ui_st* noundef) local_unnamed_addr #2

declare i32 @UI_set_result_ex(%struct.ui_st* noundef, %struct.ui_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ui_method_data_index_init() unnamed_addr #0 {
entry:
  %call = tail call i32 @CRYPTO_get_ex_new_index(i32 noundef 14, i64 noundef 0, i8* noundef null, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* noundef nonnull @ui_new_method_data, i32 (%struct.crypto_ex_data_st*, %struct.crypto_ex_data_st*, i8**, i32, i64, i8*)* noundef nonnull @ui_dup_method_data, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* noundef nonnull @ui_free_method_data) #6
  store i32 %call, i32* @ui_method_data_index, align 4, !tbaa !4
  ret void
}

declare i32 @CRYPTO_get_ex_new_index(i32 noundef, i64 noundef, i8* noundef, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* noundef, i32 (%struct.crypto_ex_data_st*, %struct.crypto_ex_data_st*, i8**, i32, i64, i8*)* noundef, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal void @ui_new_method_data(i8* nocapture noundef %parent, i8* nocapture noundef %ptr, %struct.crypto_ex_data_st* nocapture noundef %ad, i32 noundef %idx, i64 noundef %argl, i8* nocapture noundef %argp) #3 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ui_dup_method_data(%struct.crypto_ex_data_st* nocapture noundef readnone %to, %struct.crypto_ex_data_st* nocapture noundef readnone %from, i8** nocapture noundef %pptr, i32 noundef %idx, i64 noundef %argl, i8* nocapture noundef readnone %argp) #0 {
entry:
  %0 = load i8*, i8** %pptr, align 8, !tbaa !13
  %cmp.not = icmp eq i8* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i8* @CRYPTO_memdup(i8* noundef nonnull %0, i64 noundef 16, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 77) #6
  store i8* %call, i8** %pptr, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal void @ui_free_method_data(i8* nocapture noundef readnone %parent, i8* noundef %ptr, %struct.crypto_ex_data_st* nocapture noundef readnone %ad, i32 noundef %idx, i64 noundef %argl, i8* nocapture noundef readnone %argp) #0 {
entry:
  tail call void @CRYPTO_free(i8* noundef %ptr, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 84) #6
  ret void
}

declare i8* @CRYPTO_memdup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 8}
!9 = !{!"pem_password_cb_data", !10, i64 0, !5, i64 8}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!9, !10, i64 0}
!12 = !{!6, !6, i64 0}
!13 = !{!10, !10, i64 0}
