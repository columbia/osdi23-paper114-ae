; ModuleID = 'apps/lib/apps_ui.c'
source_filename = "apps/lib/apps_ui.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_method_st = type opaque
%struct.bio_st = type opaque
%struct.ui_st = type opaque
%struct.ui_string_st = type opaque
%struct.pw_cb_data = type { i8*, i8* }

@ui_base_method = internal unnamed_addr global %struct.ui_method_st* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"OpenSSL application user interface\00", align 1
@ui_method = internal unnamed_addr global %struct.ui_method_st* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"pass phrase\00", align 1
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"password buffer\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"apps/lib/apps_ui.c\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"User interface error\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"aborted!\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Could not allocate %d bytes for %s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @set_base_ui_method(%struct.ui_method_st* noundef %ui_meth) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ui_method_st* %ui_meth, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call %struct.ui_method_st* @UI_null() #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ui_meth.addr.0 = phi %struct.ui_method_st* [ %call, %if.then ], [ %ui_meth, %entry ]
  store %struct.ui_method_st* %ui_meth.addr.0, %struct.ui_method_st** @ui_base_method, align 8, !tbaa !3
  ret i32 1
}

declare dso_local %struct.ui_method_st* @UI_null() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_ui_method() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ui_method_st* @UI_null() #5
  store %struct.ui_method_st* %call, %struct.ui_method_st** @ui_base_method, align 8, !tbaa !3
  %call1 = tail call %struct.ui_method_st* @UI_OpenSSL() #5
  store %struct.ui_method_st* %call1, %struct.ui_method_st** @ui_base_method, align 8, !tbaa !3
  %call2 = tail call %struct.ui_method_st* @UI_create_method(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0)) #5
  store %struct.ui_method_st* %call2, %struct.ui_method_st** @ui_method, align 8, !tbaa !3
  %cmp.not = icmp eq %struct.ui_method_st* %call2, null
  br i1 %cmp.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @UI_method_set_opener(%struct.ui_method_st* noundef nonnull %call2, i32 (%struct.ui_st*)* noundef nonnull @ui_open) #5
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %land.lhs.true5, label %land.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %0 = load %struct.ui_method_st*, %struct.ui_method_st** @ui_method, align 8, !tbaa !3
  %call6 = tail call i32 @UI_method_set_reader(%struct.ui_method_st* noundef %0, i32 (%struct.ui_st*, %struct.ui_string_st*)* noundef nonnull @ui_read) #5
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %land.lhs.true8, label %land.end

land.lhs.true8:                                   ; preds = %land.lhs.true5
  %1 = load %struct.ui_method_st*, %struct.ui_method_st** @ui_method, align 8, !tbaa !3
  %call9 = tail call i32 @UI_method_set_writer(%struct.ui_method_st* noundef %1, i32 (%struct.ui_st*, %struct.ui_string_st*)* noundef nonnull @ui_write) #5
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %land.lhs.true11, label %land.end

land.lhs.true11:                                  ; preds = %land.lhs.true8
  %2 = load %struct.ui_method_st*, %struct.ui_method_st** @ui_method, align 8, !tbaa !3
  %call12 = tail call i32 @UI_method_set_closer(%struct.ui_method_st* noundef %2, i32 (%struct.ui_st*)* noundef nonnull @ui_close) #5
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true11
  %3 = load %struct.ui_method_st*, %struct.ui_method_st** @ui_method, align 8, !tbaa !3
  %call14 = tail call i32 @UI_method_set_prompt_constructor(%struct.ui_method_st* noundef %3, i8* (%struct.ui_st*, i8*, i8*)* noundef nonnull @ui_prompt_construct) #5
  %cmp15 = icmp eq i32 %call14, 0
  %phi.cast = zext i1 %cmp15 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true11, %land.lhs.true8, %land.lhs.true5, %land.lhs.true, %entry
  %4 = phi i32 [ 0, %land.lhs.true11 ], [ 0, %land.lhs.true8 ], [ 0, %land.lhs.true5 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %4
}

declare dso_local %struct.ui_method_st* @UI_OpenSSL() local_unnamed_addr #1

declare dso_local %struct.ui_method_st* @UI_create_method(i8* noundef) local_unnamed_addr #1

declare dso_local i32 @UI_method_set_opener(%struct.ui_method_st* noundef, i32 (%struct.ui_st*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @ui_open(%struct.ui_st* noundef %ui) #0 {
entry:
  %0 = load %struct.ui_method_st*, %struct.ui_method_st** @ui_base_method, align 8, !tbaa !3
  %call = tail call i32 (%struct.ui_st*)* @UI_method_get_opener(%struct.ui_method_st* noundef %0) #5
  %cmp.not = icmp eq i32 (%struct.ui_st*)* %call, null
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 %call(%struct.ui_st* noundef %ui) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

declare dso_local i32 @UI_method_set_reader(%struct.ui_method_st* noundef, i32 (%struct.ui_st*, %struct.ui_string_st*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @ui_read(%struct.ui_st* noundef %ui, %struct.ui_string_st* noundef %uis) #0 {
entry:
  %call = tail call i32 @UI_get_input_flags(%struct.ui_string_st* noundef %uis) #5
  %and = and i32 %call, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i8* @UI_get0_user_data(%struct.ui_st* noundef %ui) #5
  %tobool2.not = icmp eq i8* %call1, null
  br i1 %tobool2.not, label %if.end9, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call3 = tail call i32 @UI_get_string_type(%struct.ui_string_st* noundef %uis) #5
  %call3.off = add i32 %call3, -1
  %switch = icmp ult i32 %call3.off, 2
  br i1 %switch, label %sw.bb, label %if.end9

sw.bb:                                            ; preds = %if.then
  %call4 = tail call i8* @UI_get0_user_data(%struct.ui_st* noundef %ui) #5
  %password5 = bitcast i8* %call4 to i8**
  %0 = load i8*, i8** %password5, align 8, !tbaa !7
  %cmp.not = icmp eq i8* %0, null
  br i1 %cmp.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %sw.bb
  %call7 = tail call i32 @UI_set_result(%struct.ui_st* noundef %ui, %struct.ui_string_st* noundef %uis, i8* noundef nonnull %0) #5
  br label %cleanup16

if.end9:                                          ; preds = %sw.bb, %if.then, %land.lhs.true, %entry
  %1 = load %struct.ui_method_st*, %struct.ui_method_st** @ui_base_method, align 8, !tbaa !3
  %call10 = tail call i32 (%struct.ui_st*, %struct.ui_string_st*)* @UI_method_get_reader(%struct.ui_method_st* noundef %1) #5
  %cmp11.not = icmp eq i32 (%struct.ui_st*, %struct.ui_string_st*)* %call10, null
  br i1 %cmp11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end9
  %call13 = tail call i32 %call10(%struct.ui_st* noundef %ui, %struct.ui_string_st* noundef %uis) #5
  br label %cleanup16

if.end14:                                         ; preds = %if.end9
  %call15 = tail call i32 @UI_set_result(%struct.ui_st* noundef %ui, %struct.ui_string_st* noundef %uis, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #5
  br label %cleanup16

cleanup16:                                        ; preds = %if.then6, %if.end14, %if.then12
  %retval.1 = phi i32 [ %call13, %if.then12 ], [ 1, %if.end14 ], [ 1, %if.then6 ]
  ret i32 %retval.1
}

declare dso_local i32 @UI_method_set_writer(%struct.ui_method_st* noundef, i32 (%struct.ui_st*, %struct.ui_string_st*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @ui_write(%struct.ui_st* noundef %ui, %struct.ui_string_st* noundef %uis) #0 {
entry:
  %call = tail call i32 @UI_get_input_flags(%struct.ui_string_st* noundef %uis) #5
  %and = and i32 %call, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end8, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i8* @UI_get0_user_data(%struct.ui_st* noundef %ui) #5
  %tobool2.not = icmp eq i8* %call1, null
  br i1 %tobool2.not, label %if.end8, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call3 = tail call i32 @UI_get_string_type(%struct.ui_string_st* noundef %uis) #5
  %call3.off = add i32 %call3, -1
  %switch = icmp ult i32 %call3.off, 2
  br i1 %switch, label %sw.bb, label %if.end8

sw.bb:                                            ; preds = %if.then
  %call4 = tail call i8* @UI_get0_user_data(%struct.ui_st* noundef %ui) #5
  %password5 = bitcast i8* %call4 to i8**
  %0 = load i8*, i8** %password5, align 8, !tbaa !7
  %cmp.not = icmp eq i8* %0, null
  br i1 %cmp.not, label %if.end8, label %cleanup14

if.end8:                                          ; preds = %if.then, %sw.bb, %land.lhs.true, %entry
  %1 = load %struct.ui_method_st*, %struct.ui_method_st** @ui_base_method, align 8, !tbaa !3
  %call9 = tail call i32 (%struct.ui_st*, %struct.ui_string_st*)* @UI_method_get_writer(%struct.ui_method_st* noundef %1) #5
  %cmp10.not = icmp eq i32 (%struct.ui_st*, %struct.ui_string_st*)* %call9, null
  br i1 %cmp10.not, label %cleanup14, label %if.then11

if.then11:                                        ; preds = %if.end8
  %call12 = tail call i32 %call9(%struct.ui_st* noundef %ui, %struct.ui_string_st* noundef %uis) #5
  br label %cleanup14

cleanup14:                                        ; preds = %if.end8, %sw.bb, %if.then11
  %retval.1 = phi i32 [ %call12, %if.then11 ], [ 1, %sw.bb ], [ 1, %if.end8 ]
  ret i32 %retval.1
}

declare dso_local i32 @UI_method_set_closer(%struct.ui_method_st* noundef, i32 (%struct.ui_st*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @ui_close(%struct.ui_st* noundef %ui) #0 {
entry:
  %0 = load %struct.ui_method_st*, %struct.ui_method_st** @ui_base_method, align 8, !tbaa !3
  %call = tail call i32 (%struct.ui_st*)* @UI_method_get_closer(%struct.ui_method_st* noundef %0) #5
  %cmp.not = icmp eq i32 (%struct.ui_st*)* %call, null
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 %call(%struct.ui_st* noundef %ui) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

declare dso_local i32 @UI_method_set_prompt_constructor(%struct.ui_method_st* noundef, i8* (%struct.ui_st*, i8*, i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @ui_prompt_construct(%struct.ui_st* noundef %ui, i8* noundef %phrase_desc, i8* noundef %object_name) #0 {
entry:
  %call = tail call i8* @UI_get0_user_data(%struct.ui_st* noundef %ui) #5
  %cmp1 = icmp eq i8* %object_name, null
  %cmp2 = icmp ne i8* %call, null
  %or.cond = select i1 %cmp1, i1 %cmp2, i1 false
  br i1 %or.cond, label %if.then3, label %if.end4

if.then3:                                         ; preds = %entry
  %prompt_info = getelementptr inbounds i8, i8* %call, i64 8
  %0 = bitcast i8* %prompt_info to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !9
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry
  %object_name.addr.0 = phi i8* [ %1, %if.then3 ], [ %object_name, %entry ]
  %cmp = icmp eq i8* %phrase_desc, null
  %spec.store.select = select i1 %cmp, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %phrase_desc
  %call5 = tail call i8* @UI_construct_prompt(%struct.ui_st* noundef null, i8* noundef %spec.store.select, i8* noundef %object_name.addr.0) #5
  ret i8* %call5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @destroy_ui_method() local_unnamed_addr #0 {
entry:
  %0 = load %struct.ui_method_st*, %struct.ui_method_st** @ui_method, align 8, !tbaa !3
  %cmp.not = icmp eq %struct.ui_method_st* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @UI_destroy_method(%struct.ui_method_st* noundef nonnull %0) #5
  store %struct.ui_method_st* null, %struct.ui_method_st** @ui_method, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare dso_local void @UI_destroy_method(%struct.ui_method_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local %struct.ui_method_st* @get_ui_method() local_unnamed_addr #2 {
entry:
  %0 = load %struct.ui_method_st*, %struct.ui_method_st** @ui_method, align 8, !tbaa !3
  ret %struct.ui_method_st* %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @password_callback(i8* noundef %buf, i32 noundef %bufsiz, i32 noundef %verify, %struct.pw_cb_data* noundef %cb_data) local_unnamed_addr #0 {
entry:
  %0 = load %struct.ui_method_st*, %struct.ui_method_st** @ui_method, align 8, !tbaa !3
  %call = tail call %struct.ui_st* @UI_new_method(%struct.ui_method_st* noundef %0) #5
  %cmp = icmp eq %struct.ui_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq %struct.pw_cb_data* %cb_data, null
  br i1 %cmp1.not, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %prompt_info2 = getelementptr inbounds %struct.pw_cb_data, %struct.pw_cb_data* %cb_data, i64 0, i32 1
  %1 = load i8*, i8** %prompt_info2, align 8, !tbaa !9
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %prompt_info.0 = phi i8* [ null, %if.end ], [ %1, %land.lhs.true ]
  %call7 = tail call i8* @UI_construct_prompt(%struct.ui_st* noundef nonnull %call, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* noundef %prompt_info.0) #5
  %cmp8 = icmp eq i8* %call7, null
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call10 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)) #5
  tail call void @UI_free(%struct.ui_st* noundef nonnull %call) #5
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %call12 = tail call i32 @UI_ctrl(%struct.ui_st* noundef nonnull %call, i32 noundef 1, i64 noundef 1, i8* noundef null, void ()* noundef null) #5
  %3 = bitcast %struct.pw_cb_data* %cb_data to i8*
  %call13 = tail call i8* @UI_add_user_data(%struct.ui_st* noundef nonnull %call, i8* noundef %3) #5
  %sub = add nsw i32 %bufsiz, -1
  %call14 = tail call i32 @UI_add_input_string(%struct.ui_st* noundef nonnull %call, i8* noundef nonnull %call7, i32 noundef 2, i8* noundef %buf, i32 noundef 4, i32 noundef %sub) #5
  %cmp15 = icmp sgt i32 %call14, -1
  %tobool = icmp ne i32 %verify, 0
  %or.cond = and i1 %tobool, %cmp15
  br i1 %or.cond, label %if.then17, label %if.end21

if.then17:                                        ; preds = %if.end11
  %call18 = tail call fastcc i8* @ui_malloc(i32 noundef %bufsiz) #6
  %call20 = tail call i32 @UI_add_verify_string(%struct.ui_st* noundef nonnull %call, i8* noundef nonnull %call7, i32 noundef 2, i8* noundef %call18, i32 noundef 4, i32 noundef %sub, i8* noundef %buf) #5
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end11
  %ok.0 = phi i32 [ %call20, %if.then17 ], [ %call14, %if.end11 ]
  %buff.0 = phi i8* [ %call18, %if.then17 ], [ null, %if.end11 ]
  %cmp22 = icmp sgt i32 %ok.0, -1
  br i1 %cmp22, label %do.body, label %if.end34

do.body:                                          ; preds = %if.end21, %land.rhs
  %call24 = tail call i32 @UI_process(%struct.ui_st* noundef nonnull %call) #5
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %land.rhs, label %if.end34.thread

land.rhs:                                         ; preds = %do.body
  %call26 = tail call i32 @UI_ctrl(%struct.ui_st* noundef nonnull %call, i32 noundef 2, i64 noundef 0, i8* noundef null, void ()* noundef null) #5
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end34, label %do.body, !llvm.loop !10

if.end34.thread:                                  ; preds = %do.body
  %conv = zext i32 %bufsiz to i64
  tail call void @CRYPTO_clear_free(i8* noundef %buff.0, i64 noundef %conv, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 noundef 205) #5
  %call32 = tail call i64 @strlen(i8* noundef %buf) #7
  %conv33 = trunc i64 %call32 to i32
  br label %if.end46

if.end34:                                         ; preds = %land.rhs, %if.end21
  %ok.1.ph = phi i32 [ %ok.0, %if.end21 ], [ %call24, %land.rhs ]
  %conv92 = zext i32 %bufsiz to i64
  tail call void @CRYPTO_clear_free(i8* noundef %buff.0, i64 noundef %conv92, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 noundef 205) #5
  switch i32 %ok.1.ph, label %if.end46 [
    i32 -1, label %if.then37
    i32 -2, label %if.then43
  ]

if.then37:                                        ; preds = %if.end34
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call38 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #5
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %5) #5
  tail call void @OPENSSL_cleanse(i8* noundef %buf, i64 noundef %conv92) #5
  br label %if.end46

if.then43:                                        ; preds = %if.end34
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call44 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #5
  tail call void @OPENSSL_cleanse(i8* noundef %buf, i64 noundef %conv92) #5
  br label %if.end46

if.end46:                                         ; preds = %if.end34, %if.end34.thread, %if.then37, %if.then43
  %res.2 = phi i32 [ 0, %if.then43 ], [ %conv33, %if.end34.thread ], [ 0, %if.then37 ], [ 0, %if.end34 ]
  tail call void @UI_free(%struct.ui_st* noundef nonnull %call) #5
  tail call void @CRYPTO_free(i8* noundef nonnull %call7, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 noundef 221) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end46, %if.then9
  %retval.0 = phi i32 [ 0, %if.then9 ], [ %res.2, %if.end46 ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local %struct.ui_st* @UI_new_method(%struct.ui_method_st* noundef) local_unnamed_addr #1

declare dso_local i8* @UI_construct_prompt(%struct.ui_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local void @UI_free(%struct.ui_st* noundef) local_unnamed_addr #1

declare dso_local i32 @UI_ctrl(%struct.ui_st* noundef, i32 noundef, i64 noundef, i8* noundef, void ()* noundef) local_unnamed_addr #1

declare dso_local i8* @UI_add_user_data(%struct.ui_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @UI_add_input_string(%struct.ui_st* noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @ui_malloc(i32 noundef %sz) unnamed_addr #0 {
entry:
  %conv = sext i32 %sz to i64
  %call = tail call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 noundef 154) #5
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 noundef %sz, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #5
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %1) #5
  tail call void @exit(i32 noundef 1) #8
  unreachable

if.end:                                           ; preds = %entry
  ret i8* %call
}

declare dso_local i32 @UI_add_verify_string(%struct.ui_st* noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @UI_process(%struct.ui_st* noundef) local_unnamed_addr #1

declare dso_local void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #3

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 (%struct.ui_st*)* @UI_method_get_opener(%struct.ui_method_st* noundef) local_unnamed_addr #1

declare dso_local i32 @UI_get_input_flags(%struct.ui_string_st* noundef) local_unnamed_addr #1

declare dso_local i8* @UI_get0_user_data(%struct.ui_st* noundef) local_unnamed_addr #1

declare dso_local i32 @UI_get_string_type(%struct.ui_string_st* noundef) local_unnamed_addr #1

declare dso_local i32 @UI_set_result(%struct.ui_st* noundef, %struct.ui_string_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 (%struct.ui_st*, %struct.ui_string_st*)* @UI_method_get_reader(%struct.ui_method_st* noundef) local_unnamed_addr #1

declare dso_local i32 (%struct.ui_st*, %struct.ui_string_st*)* @UI_method_get_writer(%struct.ui_method_st* noundef) local_unnamed_addr #1

declare dso_local i32 (%struct.ui_st*)* @UI_method_get_closer(%struct.ui_method_st* noundef) local_unnamed_addr #1

declare dso_local i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) local_unnamed_addr #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #8 = { nobuiltin noreturn nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 0}
!8 = !{!"pw_cb_data", !4, i64 0, !4, i64 8}
!9 = !{!8, !4, i64 8}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
