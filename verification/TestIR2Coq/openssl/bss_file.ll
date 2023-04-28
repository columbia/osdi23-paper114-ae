; ModuleID = 'crypto/bio/bss_file.c'
source_filename = "crypto/bio/bss_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* }
%struct.bio_st = type { %struct.ossl_lib_ctx_st*, %struct.bio_method_st*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)*, i8*, i32, i32, i32, i32, i32, i8*, %struct.bio_st*, %struct.bio_st*, i32, i64, i64, %struct.crypto_ex_data_st, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [22 x i8] c"crypto/bio/bss_file.c\00", align 1
@__func__.BIO_new_file = private unnamed_addr constant [13 x i8] c"BIO_new_file\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"calling fopen(%s, %s)\00", align 1
@methods_filep = internal constant %struct.bio_method_st { i32 1026, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.bio_st*, i8*, i64, i64*)* @bwrite_conv, i32 (%struct.bio_st*, i8*, i32)* @file_write, i32 (%struct.bio_st*, i8*, i64, i64*)* @bread_conv, i32 (%struct.bio_st*, i8*, i32)* @file_read, i32 (%struct.bio_st*, i8*)* @file_puts, i32 (%struct.bio_st*, i8*, i32)* @file_gets, i64 (%struct.bio_st*, i32, i64, i8*)* @file_ctrl, i32 (%struct.bio_st*)* @file_new, i32 (%struct.bio_st*)* @file_free, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* null }, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"FILE pointer\00", align 1
@__func__.file_read = private unnamed_addr constant [10 x i8] c"file_read\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"calling fread()\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@__func__.file_ctrl = private unnamed_addr constant [10 x i8] c"file_ctrl\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"calling fflush()\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @BIO_new_file(i8* noundef %filename, i8* noundef %mode) local_unnamed_addr #0 {
entry:
  %call = tail call %struct._IO_FILE* @openssl_fopen(i8* noundef %filename, i8* noundef %mode) #8
  %call1 = tail call i8* @strchr(i8* noundef %mode, i32 noundef 98) #9
  %cmp = icmp eq i8* %call1, null
  %spec.select = select i1 %cmp, i64 17, i64 1
  %cmp2 = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp2, label %if.then3, label %if.end11

if.then3:                                         ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.BIO_new_file, i64 0, i64 0)) #8
  %call4 = tail call i32* @__errno_location() #10
  %0 = load i32, i32* %call4, align 4, !tbaa !4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 2, i32 noundef %0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* noundef %filename, i8* noundef %mode) #8
  %1 = load i32, i32* %call4, align 4, !tbaa !4
  switch i32 %1, label %if.else [
    i32 2, label %if.then9
    i32 6, label %if.then9
  ]

if.then9:                                         ; preds = %if.then3, %if.then3
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 75, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.BIO_new_file, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 128, i8* noundef null) #8
  br label %cleanup

if.else:                                          ; preds = %if.then3
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.BIO_new_file, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 524290, i8* noundef null) #8
  br label %cleanup

if.end11:                                         ; preds = %entry
  %call13 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef nonnull @methods_filep) #8
  %cmp14 = icmp eq %struct.bio_st* %call13, null
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end11
  %call16 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %call) #8
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  tail call void @BIO_clear_flags(%struct.bio_st* noundef nonnull %call13, i32 noundef 0) #8
  %2 = bitcast %struct._IO_FILE* %call to i8*
  %call18 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call13, i32 noundef 106, i64 noundef %spec.select, i8* noundef nonnull %2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.else, %if.end17, %if.then15
  %retval.0 = phi %struct.bio_st* [ null, %if.then15 ], [ %call13, %if.end17 ], [ null, %if.else ], [ null, %if.then9 ]
  ret %struct.bio_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct._IO_FILE* @openssl_fopen(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #4

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.bio_method_st* @BIO_s_file() local_unnamed_addr #5 {
entry:
  ret %struct.bio_method_st* @methods_filep
}

declare i32 @fclose(%struct._IO_FILE* noundef) local_unnamed_addr #2

declare void @BIO_clear_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @BIO_new_fp(%struct._IO_FILE* noundef %stream, i32 noundef %close_flag) local_unnamed_addr #0 {
entry:
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef nonnull @methods_filep) #8
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @BIO_set_flags(%struct.bio_st* noundef nonnull %call1, i32 noundef 0) #8
  %conv = sext i32 %close_flag to i64
  %0 = bitcast %struct._IO_FILE* %stream to i8*
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 106, i64 noundef %conv, i8* noundef %0) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret %struct.bio_st* %call1
}

declare void @BIO_set_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @bwrite_conv(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @file_write(%struct.bio_st* nocapture noundef readonly %b, i8* noundef %in, i32 noundef %inl) #0 {
entry:
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 5
  %0 = load i32, i32* %init, align 8, !tbaa !8
  %tobool = icmp ne i32 %0, 0
  %cmp = icmp ne i8* %in, null
  %or.cond = and i1 %cmp, %tobool
  br i1 %or.cond, label %if.else, label %if.end11

if.else:                                          ; preds = %entry
  %conv4 = sext i32 %inl to i64
  %ptr5 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 10
  %1 = bitcast i8** %ptr5 to %struct._IO_FILE**
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8, !tbaa !13
  %call6 = tail call i64 @fwrite(i8* noundef nonnull %in, i64 noundef %conv4, i64 noundef 1, %struct._IO_FILE* noundef %2) #8
  %conv7 = trunc i64 %call6 to i32
  %tobool8.not = icmp eq i32 %conv7, 0
  %spec.select = select i1 %tobool8.not, i32 0, i32 %inl
  br label %if.end11

if.end11:                                         ; preds = %if.else, %entry
  %ret.1 = phi i32 [ 0, %entry ], [ %spec.select, %if.else ]
  ret i32 %ret.1
}

declare i32 @bread_conv(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @file_read(%struct.bio_st* nocapture noundef readonly %b, i8* noundef %out, i32 noundef %outl) #0 {
entry:
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 5
  %0 = load i32, i32* %init, align 8, !tbaa !8
  %tobool = icmp ne i32 %0, 0
  %cmp = icmp ne i8* %out, null
  %or.cond = and i1 %cmp, %tobool
  br i1 %or.cond, label %if.else, label %if.end23

if.else:                                          ; preds = %entry
  %conv4 = sext i32 %outl to i64
  %ptr5 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 10
  %1 = bitcast i8** %ptr5 to %struct._IO_FILE**
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8, !tbaa !13
  %call6 = tail call i64 @fread(i8* noundef nonnull %out, i64 noundef 1, i64 noundef %conv4, %struct._IO_FILE* noundef %2) #8
  %conv7 = trunc i64 %call6 to i32
  %cmp8 = icmp eq i32 %conv7, 0
  br i1 %cmp8, label %cond.false, label %if.end23

cond.false:                                       ; preds = %if.else
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8, !tbaa !13
  %call18 = tail call i32 @ferror(%struct._IO_FILE* noundef %3) #8
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end23, label %if.then20

if.then20:                                        ; preds = %cond.false
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 148, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.file_read, i64 0, i64 0)) #8
  %call21 = tail call i32* @__errno_location() #10
  %4 = load i32, i32* %call21, align 4, !tbaa !4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 2, i32 noundef %4, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 150, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.file_read, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 524290, i8* noundef null) #8
  br label %if.end23

if.end23:                                         ; preds = %if.else, %cond.false, %if.then20, %entry
  %ret.1 = phi i32 [ -1, %if.then20 ], [ 0, %cond.false ], [ %conv7, %if.else ], [ 0, %entry ]
  ret i32 %ret.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @file_puts(%struct.bio_st* nocapture noundef readonly %bp, i8* noundef %str) #0 {
entry:
  %call = tail call i64 @strlen(i8* noundef %str) #9
  %conv = trunc i64 %call to i32
  %call1 = tail call i32 @file_write(%struct.bio_st* noundef %bp, i8* noundef %str, i32 noundef %conv) #11
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @file_gets(%struct.bio_st* nocapture noundef readonly %bp, i8* noundef %buf, i32 noundef %size) #0 {
entry:
  store i8 0, i8* %buf, align 1, !tbaa !14
  %ptr3 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bp, i64 0, i32 10
  %0 = bitcast i8** %ptr3 to %struct._IO_FILE**
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %0, align 8, !tbaa !13
  %call4 = tail call i8* @fgets(i8* noundef nonnull %buf, i32 noundef %size, %struct._IO_FILE* noundef %1) #8
  %tobool5.not = icmp eq i8* %call4, null
  br i1 %tobool5.not, label %err, label %if.end8

if.end8:                                          ; preds = %entry
  %2 = load i8, i8* %buf, align 1, !tbaa !14
  %cmp.not = icmp eq i8 %2, 0
  br i1 %cmp.not, label %err, label %if.then11

if.then11:                                        ; preds = %if.end8
  %call12 = tail call i64 @strlen(i8* noundef nonnull %buf) #9
  %conv13 = trunc i64 %call12 to i32
  br label %err

err:                                              ; preds = %if.end8, %if.then11, %entry
  %ret.0 = phi i32 [ %conv13, %if.then11 ], [ 0, %if.end8 ], [ 0, %entry ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @file_ctrl(%struct.bio_st* noundef %b, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #0 {
entry:
  %p = alloca [4 x i8], align 1
  %ptr1 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 10
  %0 = bitcast i8** %ptr1 to %struct._IO_FILE**
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %0, align 8, !tbaa !13
  %2 = getelementptr inbounds [4 x i8], [4 x i8]* %p, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #12
  switch i32 %cmd, label %sw.default [
    i32 128, label %if.else
    i32 1, label %if.else
    i32 2, label %if.else12
    i32 133, label %if.else23
    i32 3, label %if.else23
    i32 106, label %sw.bb26
    i32 108, label %sw.bb31
    i32 107, label %sw.bb81
    i32 8, label %sw.bb87
    i32 9, label %sw.bb90
    i32 11, label %cond.false
    i32 12, label %sw.epilog
  ]

if.else:                                          ; preds = %entry, %entry
  %call3 = tail call i32 @fseek(%struct._IO_FILE* noundef %1, i64 noundef %num, i32 noundef 0) #8
  %conv4 = sext i32 %call3 to i64
  br label %sw.epilog

if.else12:                                        ; preds = %entry
  %call13 = tail call i32 @feof(%struct._IO_FILE* noundef %1) #8
  %conv14 = sext i32 %call13 to i64
  br label %sw.epilog

if.else23:                                        ; preds = %entry, %entry
  %call24 = tail call i64 @ftell(%struct._IO_FILE* noundef %1) #8
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  %call27 = tail call i32 @file_free(%struct.bio_st* noundef nonnull %b) #11
  %conv28 = trunc i64 %num to i32
  %and29 = and i32 %conv28, 1
  %shutdown = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 6
  store i32 %and29, i32* %shutdown, align 4, !tbaa !15
  store i8* %ptr, i8** %ptr1, align 8, !tbaa !13
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 5
  store i32 1, i32* %init, align 8, !tbaa !8
  br label %sw.epilog

sw.bb31:                                          ; preds = %entry
  %call32 = tail call i32 @file_free(%struct.bio_st* noundef nonnull %b) #11
  %conv33 = trunc i64 %num to i32
  %and34 = and i32 %conv33, 1
  %shutdown35 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 6
  store i32 %and34, i32* %shutdown35, align 4, !tbaa !15
  %and36 = and i64 %num, 8
  %tobool37.not = icmp eq i64 %and36, 0
  %and48 = and i64 %num, 2
  %tobool49.not = icmp eq i64 %and48, 0
  br i1 %tobool37.not, label %if.else47, label %if.then38

if.then38:                                        ; preds = %sw.bb31
  %. = select i1 %tobool49.not, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  br label %if.end71

if.else47:                                        ; preds = %sw.bb31
  %3 = and i64 %num, 6
  %.not = icmp eq i64 %3, 6
  br i1 %.not, label %if.end71, label %if.else55

if.else55:                                        ; preds = %if.else47
  %and50 = and i64 %num, 4
  %tobool51.not = icmp ne i64 %and50, 0
  %tobool49.not.not = xor i1 %tobool49.not, true
  %brmerge = or i1 %tobool51.not, %tobool49.not.not
  %.mux = select i1 %tobool51.not, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)
  br i1 %brmerge, label %if.end71, label %if.else67

if.else67:                                        ; preds = %if.else55
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 282, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.file_ctrl, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 101, i8* noundef null) #8
  br label %sw.epilog

if.end71:                                         ; preds = %if.else55, %if.else47, %if.then38
  %.sink = phi i8* [ %., %if.then38 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), %if.else47 ], [ %.mux, %if.else55 ]
  %call54 = call i64 @OPENSSL_strlcpy(i8* noundef nonnull %2, i8* noundef %.sink, i64 noundef 4) #8
  %call73 = call %struct._IO_FILE* @openssl_fopen(i8* noundef %ptr, i8* noundef nonnull %2) #8
  %cmp = icmp eq %struct._IO_FILE* %call73, null
  br i1 %cmp, label %if.then75, label %if.end78

if.then75:                                        ; preds = %if.end71
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 297, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.file_ctrl, i64 0, i64 0)) #8
  %call76 = tail call i32* @__errno_location() #10
  %4 = load i32, i32* %call76, align 4, !tbaa !4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 2, i32 noundef %4, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* noundef %ptr, i8* noundef nonnull %2) #8
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 300, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.file_ctrl, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 524290, i8* noundef null) #8
  br label %sw.epilog

if.end78:                                         ; preds = %if.end71
  store %struct._IO_FILE* %call73, %struct._IO_FILE** %0, align 8, !tbaa !13
  %init80 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 5
  store i32 1, i32* %init80, align 8, !tbaa !8
  call void @BIO_clear_flags(%struct.bio_st* noundef nonnull %b, i32 noundef 0) #8
  br label %sw.epilog

sw.bb81:                                          ; preds = %entry
  %cmp82.not = icmp eq i8* %ptr, null
  br i1 %cmp82.not, label %sw.epilog, label %if.then84

if.then84:                                        ; preds = %sw.bb81
  %5 = bitcast i8* %ptr to %struct._IO_FILE**
  store %struct._IO_FILE* %1, %struct._IO_FILE** %5, align 8, !tbaa !16
  br label %sw.epilog

sw.bb87:                                          ; preds = %entry
  %shutdown88 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 6
  %6 = load i32, i32* %shutdown88, align 4, !tbaa !15
  %conv89 = sext i32 %6 to i64
  br label %sw.epilog

sw.bb90:                                          ; preds = %entry
  %conv91 = trunc i64 %num to i32
  %shutdown92 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 6
  store i32 %conv91, i32* %shutdown92, align 4, !tbaa !15
  br label %sw.epilog

cond.false:                                       ; preds = %entry
  %call100 = tail call i32 @fflush(%struct._IO_FILE* noundef %1) #8
  %cmp101 = icmp eq i32 %call100, -1
  br i1 %cmp101, label %if.then103, label %sw.epilog

if.then103:                                       ; preds = %cond.false
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 326, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.file_ctrl, i64 0, i64 0)) #8
  %call104 = tail call i32* @__errno_location() #10
  %7 = load i32, i32* %call104, align 4, !tbaa !4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 2, i32 noundef %7, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0)) #8
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 328, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.file_ctrl, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 524290, i8* noundef null) #8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %cond.false, %if.then103, %sw.bb81, %if.then84, %if.else23, %if.else12, %if.else, %sw.default, %sw.bb90, %sw.bb87, %if.end78, %if.then75, %if.else67, %sw.bb26
  %ret.0 = phi i64 [ 0, %sw.default ], [ 0, %if.then103 ], [ 1, %cond.false ], [ 1, %sw.bb90 ], [ %conv89, %sw.bb87 ], [ 1, %if.then84 ], [ 1, %sw.bb81 ], [ 0, %if.then75 ], [ 1, %if.end78 ], [ 0, %if.else67 ], [ 1, %sw.bb26 ], [ %call24, %if.else23 ], [ %conv14, %if.else12 ], [ %conv4, %if.else ], [ 1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #12
  ret i64 %ret.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i32 @file_new(%struct.bio_st* nocapture noundef writeonly %bi) #6 {
entry:
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bi, i64 0, i32 5
  store i32 0, i32* %init, align 8, !tbaa !8
  %num = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bi, i64 0, i32 9
  store i32 0, i32* %num, align 8, !tbaa !17
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bi, i64 0, i32 10
  store i8* null, i8** %ptr, align 8, !tbaa !13
  %flags = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bi, i64 0, i32 7
  store i32 0, i32* %flags, align 8, !tbaa !18
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @file_free(%struct.bio_st* noundef %a) #0 {
entry:
  %cmp = icmp eq %struct.bio_st* %a, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %shutdown = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 6
  %0 = load i32, i32* %shutdown, align 4, !tbaa !15
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %return, label %if.then1

if.then1:                                         ; preds = %if.end
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 5
  %1 = load i32, i32* %init, align 8, !tbaa !8
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %if.end13, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then1
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 10
  %2 = load i8*, i8** %ptr, align 8, !tbaa !13
  %cmp3.not = icmp eq i8* %2, null
  br i1 %cmp3.not, label %if.end13, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 7
  %3 = bitcast i8* %2 to %struct._IO_FILE*
  %call9 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %3) #8
  store i8* null, i8** %ptr, align 8, !tbaa !13
  store i32 0, i32* %flags, align 8, !tbaa !18
  br label %if.end13

if.end13:                                         ; preds = %if.then4, %land.lhs.true, %if.then1
  store i32 0, i32* %init, align 8, !tbaa !8
  br label %return

return:                                           ; preds = %if.end, %if.end13, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.end13 ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) local_unnamed_addr #2

declare i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE* noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #3

declare i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) local_unnamed_addr #2

declare i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE* noundef) local_unnamed_addr #7

declare i64 @ftell(%struct._IO_FILE* noundef) local_unnamed_addr #2

declare i64 @OPENSSL_strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @fflush(%struct._IO_FILE* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #10 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nounwind }

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
!8 = !{!9, !5, i64 40}
!9 = !{!"bio_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !6, i64 88, !11, i64 96, !11, i64 104, !12, i64 112, !10, i64 128}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!"crypto_ex_data_st", !10, i64 0, !10, i64 8}
!13 = !{!9, !10, i64 64}
!14 = !{!6, !6, i64 0}
!15 = !{!9, !5, i64 44}
!16 = !{!10, !10, i64 0}
!17 = !{!9, !5, i64 56}
!18 = !{!9, !5, i64 48}
