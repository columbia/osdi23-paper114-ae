; ModuleID = 'test/uitest.c'
source_filename = "test/uitest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pw_cb_data = type { i8*, i8* }
%struct.ui_method_st = type opaque
%struct.ui_st = type opaque

@.str = private unnamed_addr constant [9 x i8] c"test_old\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"test_new_ui\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"test/uitest.c\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"ui_method = UI_UTIL_wrap_read_pem_callback( test_pem_password_cb, 0)\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"ui = UI_new_method(ui_method)\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"prompt\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"test_old: UI process interrupted or cancelled\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"defpass\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@__const.test_new_ui.cb_data = private unnamed_addr constant %struct.pw_cb_data { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0) }, align 8
@.str.10 = private unnamed_addr constant [51 x i8] c"password_callback(pass, sizeof(pass), 0, &cb_data)\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"cb_data.password\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_old) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @test_new_ui) #5
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_old() #0 {
entry:
  %defpass = alloca [9 x i8], align 1
  %pass = alloca [16 x i8], align 16
  %0 = getelementptr inbounds [9 x i8], [9 x i8]* %defpass, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 9, i8* nonnull %0) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(9) %0, i8* noundef nonnull align 1 dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i64 9, i1 false)
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* %pass, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #6
  %call = tail call %struct.ui_method_st* @UI_UTIL_wrap_read_pem_callback(i32 (i8*, i32, i32, i8*)* noundef nonnull @test_pem_password_cb, i32 noundef 0) #5
  %2 = bitcast %struct.ui_method_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 noundef 40, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i8* noundef %2) #5
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.ui_st* @UI_new_method(%struct.ui_method_st* noundef %call) #5
  %3 = bitcast %struct.ui_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 noundef 41, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* noundef %3) #5
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call5 = call i8* @UI_add_user_data(%struct.ui_st* noundef %call2, i8* noundef nonnull %0) #5
  %call7 = call i32 @UI_add_input_string(%struct.ui_st* noundef %call2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 noundef 2, i8* noundef nonnull %1, i32 noundef 0, i32 noundef 15) #5
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %if.end10

if.end10:                                         ; preds = %if.end
  %call11 = call i32 @UI_process(%struct.ui_st* noundef %call2) #5
  switch i32 %call11, label %sw.epilog [
    i32 -2, label %sw.bb
    i32 -1, label %err
  ]

sw.bb:                                            ; preds = %if.end10
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0)) #5
  br label %err

sw.epilog:                                        ; preds = %if.end10
  %call15 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef nonnull %0) #5
  %tobool16.not = icmp ne i32 %call15, 0
  %spec.select = zext i1 %tobool16.not to i32
  br label %err

err:                                              ; preds = %sw.epilog, %sw.bb, %if.end10, %if.end, %entry, %lor.lhs.false
  %ui.0 = phi %struct.ui_st* [ %call2, %if.end10 ], [ %call2, %sw.bb ], [ %call2, %if.end ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %sw.epilog ]
  %ok.0 = phi i32 [ 0, %if.end10 ], [ 0, %sw.bb ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %sw.epilog ]
  call void @UI_free(%struct.ui_st* noundef %ui.0) #5
  call void @UI_destroy_method(%struct.ui_method_st* noundef %call) #5
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 9, i8* nonnull %0) #6
  ret i32 %ok.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_new_ui() #0 {
entry:
  %cb_data = alloca %struct.pw_cb_data, align 8
  %pass = alloca [16 x i8], align 16
  %0 = bitcast %struct.pw_cb_data* %cb_data to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.pw_cb_data* @__const.test_new_ui.cb_data to i8*), i64 16, i1 false)
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* %pass, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #6
  %call = tail call i32 @setup_ui_method() #5
  %call1 = call i32 @password_callback(i8* noundef nonnull %1, i32 noundef 16, i32 noundef 0, %struct.pw_cb_data* noundef nonnull %cb_data) #5
  %call2 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32 noundef %call1, i32 noundef 0) #5
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %password = getelementptr inbounds %struct.pw_cb_data, %struct.pw_cb_data* %cb_data, i64 0, i32 0
  %2 = load i8*, i8** %password, align 8, !tbaa !3
  %call4 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2) #5
  %tobool5.not = icmp ne i32 %call4, 0
  %spec.select = zext i1 %tobool5.not to i32
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %ok.0 = phi i32 [ 0, %entry ], [ %spec.select, %land.lhs.true ]
  call void @destroy_ui_method() #5
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #6
  ret i32 %ok.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.ui_method_st* @UI_UTIL_wrap_read_pem_callback(i32 (i8*, i32, i32, i8*)* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_pem_password_cb(i8* noundef %buf, i32 noundef %size, i32 noundef %rwflag, i8* noundef %userdata) #0 {
entry:
  %conv = sext i32 %size to i64
  %call = tail call i64 @OPENSSL_strlcpy(i8* noundef %buf, i8* noundef %userdata, i64 noundef %conv) #5
  %call1 = tail call i64 @strlen(i8* noundef %buf) #7
  %conv2 = trunc i64 %call1 to i32
  ret i32 %conv2
}

declare dso_local %struct.ui_st* @UI_new_method(%struct.ui_method_st* noundef) local_unnamed_addr #1

declare dso_local i8* @UI_add_user_data(%struct.ui_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @UI_add_input_string(%struct.ui_st* noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @UI_process(%struct.ui_st* noundef) local_unnamed_addr #1

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local i32 @test_str_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @UI_free(%struct.ui_st* noundef) local_unnamed_addr #1

declare dso_local void @UI_destroy_method(%struct.ui_method_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i64 @OPENSSL_strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #4

declare dso_local i32 @setup_ui_method() local_unnamed_addr #1

declare dso_local i32 @test_int_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @password_callback(i8* noundef, i32 noundef, i32 noundef, %struct.pw_cb_data* noundef) local_unnamed_addr #1

declare dso_local void @destroy_ui_method() local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !5, i64 0}
!4 = !{!"pw_cb_data", !5, i64 0, !5, i64 8}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
