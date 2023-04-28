; ModuleID = 'crypto/ui/ui_openssl.c'
source_filename = "crypto/ui/ui_openssl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_method_st = type { i8*, i32 (%struct.ui_st*)*, i32 (%struct.ui_st*, %struct.ui_string_st*)*, i32 (%struct.ui_st*)*, i32 (%struct.ui_st*, %struct.ui_string_st*)*, i32 (%struct.ui_st*)*, i8* (%struct.ui_st*, i8*)*, void (%struct.ui_st*, i8*)*, i8* (%struct.ui_st*, i8*, i8*)*, %struct.crypto_ex_data_st }
%struct.ui_st = type { %struct.ui_method_st*, %struct.stack_st_UI_STRING*, i8*, %struct.crypto_ex_data_st, i32, i8* }
%struct.stack_st_UI_STRING = type opaque
%struct.ui_string_st = type { i32, i8*, i32, i8*, i64, %union.anon, i32 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i8*, i8*, i8* }
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_void = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct.sigaction = type { %union.anon.1, %struct.__sigset_t, i32, void ()* }
%union.anon.1 = type { void (i32)* }
%struct.__sigset_t = type { [16 x i64] }

@ui_openssl = internal global %struct.ui_method_st { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i32 (%struct.ui_st*)* @open_console, i32 (%struct.ui_st*, %struct.ui_string_st*)* @write_string, i32 (%struct.ui_st*)* null, i32 (%struct.ui_st*, %struct.ui_string_st*)* @read_string, i32 (%struct.ui_st*)* @close_console, i8* (%struct.ui_st*, i8*)* null, void (%struct.ui_st*, i8*)* null, i8* (%struct.ui_st*, i8*, i8*)* null, %struct.crypto_ex_data_st zeroinitializer }, align 8
@default_UI_meth = internal unnamed_addr global %struct.ui_method_st* @ui_openssl, align 8
@.str = private unnamed_addr constant [31 x i8] c"OpenSSL default user interface\00", align 1
@is_a_tty = internal unnamed_addr global i1 false, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"/dev/tty\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@tty_in = internal unnamed_addr global %struct._IO_FILE* null, align 8
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@tty_out = internal unnamed_addr global %struct._IO_FILE* null, align 8
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@tty_orig = internal global %struct.termios zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"crypto/ui/ui_openssl.c\00", align 1
@__func__.open_console = private unnamed_addr constant [13 x i8] c"open_console\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"errno=%d\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Verifying - %s\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Verify failure\0A\00", align 1
@read_string_inner.ps = internal unnamed_addr global i32 0, align 4
@intr_signal = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@savsig = internal global [32 x %struct.sigaction] zeroinitializer, align 16
@tty_new = internal global %struct.termios zeroinitializer, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ui_method_st* @UI_OpenSSL() local_unnamed_addr #0 {
entry:
  ret %struct.ui_method_st* @ui_openssl
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @UI_set_default_method(%struct.ui_method_st* noundef %meth) local_unnamed_addr #1 {
entry:
  store %struct.ui_method_st* %meth, %struct.ui_method_st** @default_UI_meth, align 8, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ui_method_st* @UI_get_default_method() local_unnamed_addr #2 {
entry:
  %0 = load %struct.ui_method_st*, %struct.ui_method_st** @default_UI_meth, align 8, !tbaa !4
  ret %struct.ui_method_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @open_console(%struct.ui_st* nocapture noundef readonly %ui) #3 {
entry:
  %lock = getelementptr inbounds %struct.ui_st, %struct.ui_st* %ui, i64 0, i32 5
  %0 = load i8*, i8** %lock, align 8, !tbaa !8
  %call = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %0) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  store i1 true, i1* @is_a_tty, align 4
  %call1 = tail call %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #10
  store %struct._IO_FILE* %call1, %struct._IO_FILE** @tty_in, align 8, !tbaa !4
  %cmp = icmp eq %struct._IO_FILE* %call1, null
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !4
  store %struct._IO_FILE* %1, %struct._IO_FILE** @tty_in, align 8, !tbaa !4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %call4 = tail call %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #10
  store %struct._IO_FILE* %call4, %struct._IO_FILE** @tty_out, align 8, !tbaa !4
  %cmp5 = icmp eq %struct._IO_FILE* %call4, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !4
  store %struct._IO_FILE* %2, %struct._IO_FILE** @tty_out, align 8, !tbaa !4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end3
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @tty_in, align 8, !tbaa !4
  %call8 = tail call i32 @fileno(%struct._IO_FILE* noundef %3) #10
  %call9 = tail call i32 @tcgetattr(i32 noundef %call8, %struct.termios* noundef nonnull @tty_orig) #10
  %cmp10 = icmp eq i32 %call9, -1
  br i1 %cmp10, label %if.then11, label %return

if.then11:                                        ; preds = %if.end7
  %call12 = tail call i32* @__errno_location() #11
  %4 = load i32, i32* %call12, align 4, !tbaa !12
  switch i32 %4, label %if.else34 [
    i32 25, label %if.then14
    i32 22, label %if.then17
    i32 6, label %if.then21
    i32 5, label %if.then25
    i32 1, label %if.then29
    i32 19, label %if.then33
  ]

if.then14:                                        ; preds = %if.then11
  store i1 false, i1* @is_a_tty, align 4
  br label %return

if.then17:                                        ; preds = %if.then11
  store i1 false, i1* @is_a_tty, align 4
  br label %return

if.then21:                                        ; preds = %if.then11
  store i1 false, i1* @is_a_tty, align 4
  br label %return

if.then25:                                        ; preds = %if.then11
  store i1 false, i1* @is_a_tty, align 4
  br label %return

if.then29:                                        ; preds = %if.then11
  store i1 false, i1* @is_a_tty, align 4
  br label %return

if.then33:                                        ; preds = %if.then11
  store i1 false, i1* @is_a_tty, align 4
  br label %return

if.else34:                                        ; preds = %if.then11
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 noundef 459, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.open_console, i64 0, i64 0)) #10
  %5 = load i32, i32* %call12, align 4, !tbaa !12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 40, i32 noundef 108, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 noundef %5) #10
  br label %return

return:                                           ; preds = %if.end7, %if.then17, %if.then25, %if.then33, %if.then29, %if.then21, %if.then14, %entry, %if.else34
  %retval.0 = phi i32 [ 0, %if.else34 ], [ 0, %entry ], [ 1, %if.then14 ], [ 1, %if.then21 ], [ 1, %if.then29 ], [ 1, %if.then33 ], [ 1, %if.then25 ], [ 1, %if.then17 ], [ 1, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @write_string(%struct.ui_st* nocapture noundef readnone %ui, %struct.ui_string_st* noundef %uis) #3 {
entry:
  %call = tail call i32 @UI_get_string_type(%struct.ui_string_st* noundef %uis) #10
  %0 = and i32 %call, -2
  %switch = icmp eq i32 %0, 4
  br i1 %switch, label %sw.bb, label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call1 = tail call i8* @UI_get0_output_string(%struct.ui_string_st* noundef %uis) #10
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @tty_out, align 8, !tbaa !4
  %call2 = tail call i32 @fputs(i8* noundef %call1, %struct._IO_FILE* noundef %1) #10
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @tty_out, align 8, !tbaa !4
  %call3 = tail call i32 @fflush(%struct._IO_FILE* noundef %2) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_string(%struct.ui_st* noundef %ui, %struct.ui_string_st* noundef %uis) #3 {
entry:
  %call = tail call i32 @UI_get_string_type(%struct.ui_string_st* noundef %uis) #10
  switch i32 %call, label %cleanup [
    i32 3, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb15
  ]

sw.bb:                                            ; preds = %entry
  %call1 = tail call i8* @UI_get0_output_string(%struct.ui_string_st* noundef %uis) #10
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @tty_out, align 8, !tbaa !4
  %call2 = tail call i32 @fputs(i8* noundef %call1, %struct._IO_FILE* noundef %0) #10
  %call3 = tail call i8* @UI_get0_action_string(%struct.ui_string_st* noundef %uis) #10
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @tty_out, align 8, !tbaa !4
  %call4 = tail call i32 @fputs(i8* noundef %call3, %struct._IO_FILE* noundef %1) #10
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @tty_out, align 8, !tbaa !4
  %call5 = tail call i32 @fflush(%struct._IO_FILE* noundef %2) #10
  %call6 = tail call i32 @UI_get_input_flags(%struct.ui_string_st* noundef %uis) #10
  %and = and i32 %call6, 1
  %call7 = tail call fastcc i32 @read_string_inner(%struct.ui_st* noundef %ui, %struct.ui_string_st* noundef %uis, i32 noundef %and, i32 noundef 0) #12
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %call9 = tail call i8* @UI_get0_output_string(%struct.ui_string_st* noundef %uis) #10
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @tty_out, align 8, !tbaa !4
  %call10 = tail call i32 @fputs(i8* noundef %call9, %struct._IO_FILE* noundef %3) #10
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @tty_out, align 8, !tbaa !4
  %call11 = tail call i32 @fflush(%struct._IO_FILE* noundef %4) #10
  %call12 = tail call i32 @UI_get_input_flags(%struct.ui_string_st* noundef %uis) #10
  %and13 = and i32 %call12, 1
  %call14 = tail call fastcc i32 @read_string_inner(%struct.ui_st* noundef %ui, %struct.ui_string_st* noundef %uis, i32 noundef %and13, i32 noundef 1) #12
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @tty_out, align 8, !tbaa !4
  %call16 = tail call i8* @UI_get0_output_string(%struct.ui_string_st* noundef %uis) #10
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* noundef %call16) #10
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @tty_out, align 8, !tbaa !4
  %call18 = tail call i32 @fflush(%struct._IO_FILE* noundef %6) #10
  %call19 = tail call i32 @UI_get_input_flags(%struct.ui_string_st* noundef %uis) #10
  %and20 = and i32 %call19, 1
  %call21 = tail call fastcc i32 @read_string_inner(%struct.ui_st* noundef %ui, %struct.ui_string_st* noundef %uis, i32 noundef %and20, i32 noundef 1) #12
  %cmp = icmp slt i32 %call21, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %sw.bb15
  %call22 = tail call i8* @UI_get0_result_string(%struct.ui_string_st* noundef %uis) #10
  %call23 = tail call i8* @UI_get0_test_string(%struct.ui_string_st* noundef %uis) #10
  %call24 = tail call i32 @strcmp(i8* noundef %call22, i8* noundef %call23) #13
  %cmp25.not = icmp eq i32 %call24, 0
  br i1 %cmp25.not, label %cleanup, label %if.then26

if.then26:                                        ; preds = %if.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @tty_out, align 8, !tbaa !4
  %call27 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0)) #10
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @tty_out, align 8, !tbaa !4
  %call28 = tail call i32 @fflush(%struct._IO_FILE* noundef %8) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %sw.bb15, %if.then26, %sw.bb8, %sw.bb
  %retval.0 = phi i32 [ 0, %if.then26 ], [ %call14, %sw.bb8 ], [ %call7, %sw.bb ], [ %call21, %sw.bb15 ], [ 1, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @close_console(%struct.ui_st* nocapture noundef readonly %ui) #3 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @tty_in, align 8, !tbaa !4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !4
  %cmp.not = icmp eq %struct._IO_FILE* %0, %1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @fclose(%struct._IO_FILE* noundef %0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @tty_out, align 8, !tbaa !4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %cmp1.not = icmp eq %struct._IO_FILE* %2, %3
  br i1 %cmp1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @fclose(%struct._IO_FILE* noundef %2) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %lock = getelementptr inbounds %struct.ui_st, %struct.ui_st* %ui, i64 0, i32 5
  %4 = load i8*, i8** %lock, align 8, !tbaa !8
  %call5 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %4) #10
  ret i32 1
}

declare i32 @CRYPTO_THREAD_write_lock(i8* noundef) local_unnamed_addr #4

declare %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @tcgetattr(i32 noundef, %struct.termios* noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #6

declare void @ERR_new() local_unnamed_addr #4

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #4

declare i32 @UI_get_string_type(%struct.ui_string_st* noundef) local_unnamed_addr #4

declare i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) local_unnamed_addr #4

declare i8* @UI_get0_output_string(%struct.ui_string_st* noundef) local_unnamed_addr #4

declare i32 @fflush(%struct._IO_FILE* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #7

declare i8* @UI_get0_action_string(%struct.ui_string_st* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @read_string_inner(%struct.ui_st* noundef %ui, %struct.ui_string_st* noundef %uis, i32 noundef %echo, i32 noundef %strip_nl) unnamed_addr #3 {
entry:
  %result = alloca [8192 x i8], align 16
  %0 = getelementptr inbounds [8192 x i8], [8192 x i8]* %result, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %0) #14
  %tobool = icmp ne i32 %echo, 0
  store volatile i32 0, i32* @intr_signal, align 4, !tbaa !12
  store i32 0, i32* @read_string_inner.ps, align 4, !tbaa !12
  tail call fastcc void @pushsig() #12
  store i32 1, i32* @read_string_inner.ps, align 4, !tbaa !12
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i32 @noecho_console() #12
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %error.thread, label %if.end

error.thread:                                     ; preds = %land.lhs.true
  %1 = load volatile i32, i32* @intr_signal, align 4, !tbaa !12
  %cmp3162 = icmp eq i32 %1, 2
  %spec.select5963 = sext i1 %cmp3162 to i32
  br label %if.end37

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 2, i32* @read_string_inner.ps, align 4, !tbaa !12
  store i8 0, i8* %0, align 16, !tbaa !13
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @tty_in, align 8, !tbaa !4
  %call3 = call i8* @fgets(i8* noundef nonnull %0, i32 noundef 8191, %struct._IO_FILE* noundef %2) #10
  %cmp = icmp eq i8* %call3, null
  br i1 %cmp, label %error, label %if.end5

if.end5:                                          ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @tty_in, align 8, !tbaa !4
  %call6 = call i32 @feof(%struct._IO_FILE* noundef %3) #10
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %error

if.end9:                                          ; preds = %if.end5
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @tty_in, align 8, !tbaa !4
  %call10 = call i32 @ferror(%struct._IO_FILE* noundef %4) #10
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %error

if.end13:                                         ; preds = %if.end9
  %call15 = call i8* @strchr(i8* noundef nonnull %0, i32 noundef 10) #13
  %cmp16.not = icmp eq i8* %call15, null
  br i1 %cmp16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end13
  %tobool18.not = icmp eq i32 %strip_nl, 0
  br i1 %tobool18.not, label %if.end25, label %if.then19

if.then19:                                        ; preds = %if.then17
  store i8 0, i8* %call15, align 1, !tbaa !13
  br label %if.end25

if.else:                                          ; preds = %if.end13
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @tty_in, align 8, !tbaa !4
  %call21 = call fastcc i32 @read_till_nl(%struct._IO_FILE* noundef %5) #12
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %error, label %if.end25

if.end25:                                         ; preds = %if.else, %if.then17, %if.then19
  %call27 = call i32 @UI_set_result(%struct.ui_st* noundef %ui, %struct.ui_string_st* noundef %uis, i8* noundef nonnull %0) #10
  %6 = xor i32 %call27, -1
  %call27.lobit.not = lshr i32 %6, 31
  br label %error

error:                                            ; preds = %if.end25, %if.else, %if.end9, %if.end5, %if.end
  %ok.0 = phi i32 [ 0, %if.end ], [ 0, %if.end5 ], [ 0, %if.end9 ], [ 0, %if.else ], [ %call27.lobit.not, %if.end25 ]
  %7 = load volatile i32, i32* @intr_signal, align 4, !tbaa !12
  %cmp31 = icmp eq i32 %7, 2
  %spec.select59 = select i1 %cmp31, i32 -1, i32 %ok.0
  br i1 %tobool, label %if.end45thread-pre-split, label %if.end37

if.end37:                                         ; preds = %error, %error.thread
  %spec.select5964 = phi i32 [ %spec.select5963, %error.thread ], [ %spec.select59, %error ]
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @tty_out, align 8, !tbaa !4
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #10
  %9 = load i32, i32* @read_string_inner.ps, align 4, !tbaa !12
  %cmp38 = icmp slt i32 %9, 2
  %or.cond = or i1 %tobool, %cmp38
  br i1 %or.cond, label %if.end45, label %land.lhs.true41

land.lhs.true41:                                  ; preds = %if.end37
  %call42 = call fastcc i32 @echo_console() #12
  %tobool43.not = icmp eq i32 %call42, 0
  %spec.select60 = select i1 %tobool43.not, i32 0, i32 %spec.select5964
  br label %if.end45thread-pre-split

if.end45thread-pre-split:                         ; preds = %error, %land.lhs.true41
  %ok.2.ph = phi i32 [ %spec.select60, %land.lhs.true41 ], [ %spec.select59, %error ]
  %.pr = load i32, i32* @read_string_inner.ps, align 4, !tbaa !12
  br label %if.end45

if.end45:                                         ; preds = %if.end45thread-pre-split, %if.end37
  %10 = phi i32 [ %.pr, %if.end45thread-pre-split ], [ %9, %if.end37 ]
  %ok.2 = phi i32 [ %ok.2.ph, %if.end45thread-pre-split ], [ %spec.select5964, %if.end37 ]
  %cmp46 = icmp sgt i32 %10, 0
  br i1 %cmp46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end45
  call fastcc void @popsig() #12
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end45
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 8192) #10
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %0) #14
  ret i32 %ok.2
}

declare i32 @UI_get_input_flags(%struct.ui_string_st* noundef) local_unnamed_addr #4

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #8

declare i8* @UI_get0_result_string(%struct.ui_string_st* noundef) local_unnamed_addr #4

declare i8* @UI_get0_test_string(%struct.ui_string_st* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @pushsig() unnamed_addr #3 {
entry:
  %sa = alloca %struct.sigaction, align 8
  %0 = bitcast %struct.sigaction* %sa to i8*
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %0) #14
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 152) #10
  %sa_handler = getelementptr inbounds %struct.sigaction, %struct.sigaction* %sa, i64 0, i32 0, i32 0
  store void (i32)* @recsig, void (i32)** %sa_handler, align 8, !tbaa !13
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ 1, %entry ], [ %indvars.iv.next, %for.inc ]
  %1 = trunc i64 %indvars.iv to i32
  switch i32 %1, label %if.end7 [
    i32 12, label %for.inc
    i32 10, label %for.inc
    i32 9, label %for.inc
  ]

if.end7:                                          ; preds = %for.body
  %arrayidx = getelementptr inbounds [32 x %struct.sigaction], [32 x %struct.sigaction]* @savsig, i64 0, i64 %indvars.iv
  %call8 = call i32 @sigaction(i32 noundef %1, %struct.sigaction* noundef nonnull %sa, %struct.sigaction* noundef nonnull %arrayidx) #10
  br label %for.inc

for.inc:                                          ; preds = %for.body, %for.body, %for.body, %if.end7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !14

for.end:                                          ; preds = %for.inc
  %call9 = call void (i32)* @signal(i32 noundef 28, void (i32)* noundef null) #10
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %0) #14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @noecho_console() unnamed_addr #3 {
entry:
  %call = tail call i8* @memcpy(i8* noundef bitcast (%struct.termios* @tty_new to i8*), i8* noundef bitcast (%struct.termios* @tty_orig to i8*), i64 noundef 60) #10
  %0 = load i32, i32* getelementptr inbounds (%struct.termios, %struct.termios* @tty_new, i64 0, i32 3), align 4, !tbaa !16
  %and = and i32 %0, -9
  store i32 %and, i32* getelementptr inbounds (%struct.termios, %struct.termios* @tty_new, i64 0, i32 3), align 4, !tbaa !16
  %.b = load i1, i1* @is_a_tty, align 4
  br i1 %.b, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @tty_in, align 8, !tbaa !4
  %call1 = tail call i32 @fileno(%struct._IO_FILE* noundef %1) #10
  %call2 = tail call i32 @tcsetattr(i32 noundef %call1, i32 noundef 0, %struct.termios* noundef nonnull @tty_new) #10
  %cmp = icmp eq i32 %call2, -1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

declare i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE* noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @read_till_nl(%struct._IO_FILE* noundef %in) unnamed_addr #3 {
entry:
  %buf = alloca [5 x i8], align 1
  %0 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %0) #14
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %call = call i8* @fgets(i8* noundef nonnull %0, i32 noundef 4, %struct._IO_FILE* noundef %in) #10
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %do.cond

do.cond:                                          ; preds = %do.body
  %call2 = call i8* @strchr(i8* noundef nonnull %0, i32 noundef 10) #13
  %cmp = icmp eq i8* %call2, null
  br i1 %cmp, label %do.body, label %cleanup, !llvm.loop !18

cleanup:                                          ; preds = %do.cond, %do.body
  %retval.0 = phi i32 [ 0, %do.body ], [ 1, %do.cond ]
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %0) #14
  ret i32 %retval.0
}

declare i32 @UI_set_result(%struct.ui_st* noundef, %struct.ui_string_st* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @echo_console() unnamed_addr #3 {
entry:
  %call = tail call i8* @memcpy(i8* noundef bitcast (%struct.termios* @tty_new to i8*), i8* noundef bitcast (%struct.termios* @tty_orig to i8*), i64 noundef 60) #10
  %.b = load i1, i1* @is_a_tty, align 4
  br i1 %.b, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @tty_in, align 8, !tbaa !4
  %call1 = tail call i32 @fileno(%struct._IO_FILE* noundef %0) #10
  %call2 = tail call i32 @tcsetattr(i32 noundef %call1, i32 noundef 0, %struct.termios* noundef nonnull @tty_new) #10
  %cmp = icmp eq i32 %call2, -1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @popsig() unnamed_addr #3 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ 1, %entry ], [ %indvars.iv.next, %for.inc ]
  %0 = trunc i64 %indvars.iv to i32
  switch i32 %0, label %if.end4 [
    i32 12, label %for.inc
    i32 10, label %for.inc
  ]

if.end4:                                          ; preds = %for.body
  %arrayidx = getelementptr inbounds [32 x %struct.sigaction], [32 x %struct.sigaction]* @savsig, i64 0, i64 %indvars.iv
  %call = tail call i32 @sigaction(i32 noundef %0, %struct.sigaction* noundef nonnull %arrayidx, %struct.sigaction* noundef null) #10
  br label %for.inc

for.inc:                                          ; preds = %for.body, %for.body, %if.end4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !19

for.end:                                          ; preds = %for.inc
  ret void
}

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nounwind uwtable
define internal void @recsig(i32 noundef %i) #9 {
entry:
  store volatile i32 %i, i32* @intr_signal, align 4, !tbaa !12
  ret void
}

; Function Attrs: nounwind
declare i32 @sigaction(i32 noundef, %struct.sigaction* noundef, %struct.sigaction* noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void (i32)* @signal(i32 noundef, void (i32)* noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @tcsetattr(i32 noundef, i32 noundef, %struct.termios* noundef) local_unnamed_addr #5

declare i32 @fclose(%struct._IO_FILE* noundef) local_unnamed_addr #4

declare i32 @CRYPTO_THREAD_unlock(i8* noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 48}
!9 = !{!"ui_st", !5, i64 0, !5, i64 8, !5, i64 16, !10, i64 24, !11, i64 40, !5, i64 48}
!10 = !{!"crypto_ex_data_st", !5, i64 0, !5, i64 8}
!11 = !{!"int", !6, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!6, !6, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !11, i64 12}
!17 = !{!"termios", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !6, i64 16, !6, i64 17, !11, i64 52, !11, i64 56}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !15}
