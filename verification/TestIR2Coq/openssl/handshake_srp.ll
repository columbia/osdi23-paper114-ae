; ModuleID = 'test/helpers/handshake_srp.c'
source_filename = "test/helpers/handshake_srp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl_ctx_st = type opaque
%struct.SSL_TEST_EXTRA_CONF = type { %struct.SSL_TEST_CLIENT_CONF, %struct.SSL_TEST_SERVER_CONF, %struct.SSL_TEST_SERVER_CONF }
%struct.SSL_TEST_CLIENT_CONF = type { i32, i32, i32, i8*, i8*, i32, i8*, i8*, i8*, i32, i32 }
%struct.SSL_TEST_SERVER_CONF = type { i32, i8*, i8*, i32, i32, i8*, i8*, i32, i8* }
%struct.ctx_data_st = type { i8*, i64, i8*, i64, i8*, i8*, i8* }
%struct.ssl_st = type opaque

@.str = private unnamed_addr constant [29 x i8] c"test/helpers/handshake_srp.c\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"server2_ctx\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"SSL_CTX_set_srp_username(client_ctx, extra->client.srp_user)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"2048\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @configure_handshake_ctx_for_srp(%struct.ssl_ctx_st* noundef %server_ctx, %struct.ssl_ctx_st* noundef %server2_ctx, %struct.ssl_ctx_st* noundef %client_ctx, %struct.SSL_TEST_EXTRA_CONF* nocapture noundef readonly %extra, %struct.ctx_data_st* noundef %server_ctx_data, %struct.ctx_data_st* noundef %server2_ctx_data, %struct.ctx_data_st* noundef %client_ctx_data) local_unnamed_addr #0 {
entry:
  %srp_user = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %extra, i64 0, i32 1, i32 5
  %0 = load i8*, i8** %srp_user, align 8, !tbaa !3
  %cmp.not = icmp eq i8* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @SSL_CTX_set_srp_username_callback(%struct.ssl_ctx_st* noundef %server_ctx, i32 (%struct.ssl_st*, i32*, i8*)* noundef nonnull @server_srp_cb) #3
  %1 = load i8*, i8** %srp_user, align 8, !tbaa !3
  %call3 = tail call i8* @CRYPTO_strdup(i8* noundef %1, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 50) #3
  %srp_user4 = getelementptr inbounds %struct.ctx_data_st, %struct.ctx_data_st* %server_ctx_data, i64 0, i32 4
  store i8* %call3, i8** %srp_user4, align 8, !tbaa !11
  %srp_password = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %extra, i64 0, i32 1, i32 6
  %2 = load i8*, i8** %srp_password, align 8, !tbaa !14
  %call6 = tail call i8* @CRYPTO_strdup(i8* noundef %2, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 51) #3
  %srp_password7 = getelementptr inbounds %struct.ctx_data_st, %struct.ctx_data_st* %server_ctx_data, i64 0, i32 5
  store i8* %call6, i8** %srp_password7, align 8, !tbaa !15
  %3 = bitcast %struct.ctx_data_st* %server_ctx_data to i8*
  %call8 = tail call i32 @SSL_CTX_set_srp_cb_arg(%struct.ssl_ctx_st* noundef %server_ctx, i8* noundef %3) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %srp_user9 = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %extra, i64 0, i32 2, i32 5
  %4 = load i8*, i8** %srp_user9, align 8, !tbaa !16
  %cmp10.not = icmp eq i8* %4, null
  br i1 %cmp10.not, label %if.end25, label %if.then11

if.then11:                                        ; preds = %if.end
  %5 = bitcast %struct.ssl_ctx_st* %server2_ctx to i8*
  %call12 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* noundef %5) #3
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %return, label %if.end14

if.end14:                                         ; preds = %if.then11
  %call15 = tail call i32 @SSL_CTX_set_srp_username_callback(%struct.ssl_ctx_st* noundef %server2_ctx, i32 (%struct.ssl_st*, i32*, i8*)* noundef nonnull @server_srp_cb) #3
  %6 = load i8*, i8** %srp_user9, align 8, !tbaa !16
  %call18 = tail call i8* @CRYPTO_strdup(i8* noundef %6, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 58) #3
  %srp_user19 = getelementptr inbounds %struct.ctx_data_st, %struct.ctx_data_st* %server2_ctx_data, i64 0, i32 4
  store i8* %call18, i8** %srp_user19, align 8, !tbaa !11
  %srp_password21 = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %extra, i64 0, i32 2, i32 6
  %7 = load i8*, i8** %srp_password21, align 8, !tbaa !17
  %call22 = tail call i8* @CRYPTO_strdup(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 59) #3
  %srp_password23 = getelementptr inbounds %struct.ctx_data_st, %struct.ctx_data_st* %server2_ctx_data, i64 0, i32 5
  store i8* %call22, i8** %srp_password23, align 8, !tbaa !15
  %8 = bitcast %struct.ctx_data_st* %server2_ctx_data to i8*
  %call24 = tail call i32 @SSL_CTX_set_srp_cb_arg(%struct.ssl_ctx_st* noundef %server2_ctx, i8* noundef %8) #3
  br label %if.end25

if.end25:                                         ; preds = %if.end14, %if.end
  %srp_user26 = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %extra, i64 0, i32 0, i32 7
  %9 = load i8*, i8** %srp_user26, align 8, !tbaa !18
  %cmp27.not = icmp eq i8* %9, null
  br i1 %cmp27.not, label %return, label %if.then28

if.then28:                                        ; preds = %if.end25
  %call31 = tail call i32 @SSL_CTX_set_srp_username(%struct.ssl_ctx_st* noundef %client_ctx, i8* noundef nonnull %9) #3
  %cmp32 = icmp ne i32 %call31, 0
  %conv = zext i1 %cmp32 to i32
  %call33 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 noundef %conv) #3
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %return, label %if.end36

if.end36:                                         ; preds = %if.then28
  %call37 = tail call i32 @SSL_CTX_set_srp_client_pwd_callback(%struct.ssl_ctx_st* noundef %client_ctx, i8* (%struct.ssl_st*, i8*)* noundef nonnull @client_srp_cb) #3
  %srp_password39 = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %extra, i64 0, i32 0, i32 8
  %10 = load i8*, i8** %srp_password39, align 8, !tbaa !19
  %call40 = tail call i8* @CRYPTO_strdup(i8* noundef %10, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 67) #3
  %srp_password41 = getelementptr inbounds %struct.ctx_data_st, %struct.ctx_data_st* %client_ctx_data, i64 0, i32 5
  store i8* %call40, i8** %srp_password41, align 8, !tbaa !15
  %11 = bitcast %struct.ctx_data_st* %client_ctx_data to i8*
  %call42 = tail call i32 @SSL_CTX_set_srp_cb_arg(%struct.ssl_ctx_st* noundef %client_ctx, i8* noundef %11) #3
  br label %return

return:                                           ; preds = %if.end25, %if.end36, %if.then28, %if.then11
  %retval.0 = phi i32 [ 0, %if.then11 ], [ 0, %if.then28 ], [ 1, %if.end36 ], [ 1, %if.end25 ]
  ret i32 %retval.0
}

declare dso_local i32 @SSL_CTX_set_srp_username_callback(%struct.ssl_ctx_st* noundef, i32 (%struct.ssl_st*, i32*, i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @server_srp_cb(%struct.ssl_st* noundef %s, i32* nocapture noundef writeonly %ad, i8* nocapture noundef readonly %arg) #0 {
entry:
  %srp_user = getelementptr inbounds i8, i8* %arg, i64 32
  %0 = bitcast i8* %srp_user to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !11
  %call = tail call i8* @SSL_get_srp_username(%struct.ssl_st* noundef %s) #3
  %call1 = tail call i32 @strcmp(i8* noundef %1, i8* noundef %call) #4
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %0, align 8, !tbaa !11
  %srp_password = getelementptr inbounds i8, i8* %arg, i64 40
  %3 = bitcast i8* %srp_password to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !15
  %call3 = tail call i32 @SSL_set_srp_server_param_pw(%struct.ssl_st* noundef %s, i8* noundef %2, i8* noundef %4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #3
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %cleanup

if.then5:                                         ; preds = %if.end
  store i32 80, i32* %ad, align 4, !tbaa !20
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then5
  %retval.0 = phi i32 [ 2, %if.then5 ], [ 2, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare dso_local i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @SSL_CTX_set_srp_cb_arg(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @SSL_CTX_set_srp_username(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @SSL_CTX_set_srp_client_pwd_callback(%struct.ssl_ctx_st* noundef, i8* (%struct.ssl_st*, i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @client_srp_cb(%struct.ssl_st* nocapture noundef readnone %s, i8* nocapture noundef readonly %arg) #0 {
entry:
  %srp_password = getelementptr inbounds i8, i8* %arg, i64 40
  %0 = bitcast i8* %srp_password to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !15
  %call = tail call i8* @CRYPTO_strdup(i8* noundef %1, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 24) #3
  ret i8* %call
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i8* @SSL_get_srp_username(%struct.ssl_st* noundef) local_unnamed_addr #1

declare dso_local i32 @SSL_set_srp_server_param_pw(%struct.ssl_st* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !9, i64 104}
!4 = !{!"", !5, i64 0, !10, i64 72, !10, i64 136}
!5 = !{!"", !6, i64 0, !6, i64 4, !8, i64 8, !9, i64 16, !9, i64 24, !6, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !8, i64 64, !8, i64 68}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"int", !6, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!"", !6, i64 0, !9, i64 8, !9, i64 16, !8, i64 24, !6, i64 28, !9, i64 32, !9, i64 40, !8, i64 48, !9, i64 56}
!11 = !{!12, !9, i64 32}
!12 = !{!"ctx_data_st", !9, i64 0, !13, i64 8, !9, i64 16, !13, i64 24, !9, i64 32, !9, i64 40, !9, i64 48}
!13 = !{!"long", !6, i64 0}
!14 = !{!4, !9, i64 112}
!15 = !{!12, !9, i64 40}
!16 = !{!4, !9, i64 168}
!17 = !{!4, !9, i64 176}
!18 = !{!4, !9, i64 48}
!19 = !{!4, !9, i64 56}
!20 = !{!8, !8, i64 0}
