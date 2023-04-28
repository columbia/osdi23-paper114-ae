; ModuleID = 'test/shlibloadtest.c'
source_filename = "test/shlibloadtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%union.anon = type { void ()* }
%struct.ssl_method_st = type opaque
%struct.ssl_ctx_st = type opaque

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [31 x i8] c"Incorrect number of arguments\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"-crypto_first\00", align 1
@test_type = internal unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"-ssl_first\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"-just_crypto\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"-dso_ref\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"-no_atexit\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Unrecognised argument\0A\00", align 1
@path_crypto = internal unnamed_addr global i8* null, align 8
@path_ssl = internal unnamed_addr global i8* null, align 8
@path_atexit = internal unnamed_addr global i8* null, align 8
@.str.7 = private unnamed_addr constant [31 x i8] c"Invalid libcrypto/libssl path\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Failed to load libcrypto\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Failed to load libssl\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"OPENSSL_init_crypto\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"Failed to load OPENSSL_init_crypto symbol\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Failed to initialise libcrypto\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"TLS_method\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"SSL_CTX_new\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"SSL_CTX_free\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"Failed to load libssl symbols\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"Failed to create SSL_CTX\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"ERR_get_error\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"OPENSSL_version_major\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"OPENSSL_version_minor\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"OPENSSL_version_patch\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"OPENSSL_atexit\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"Failed to load libcrypto symbols\0A\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"Unexpected ERR_get_error() response\0A\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"Invalid library version number\0A\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"Failed to register atexit handler\0A\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"DSO_dsobyaddr\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"DSO_free\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"Unable to load DSO symbols\0A\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"DSO_dsobyaddr() failed\0A\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"Failed to close libcrypto\0A\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"Failed to close libssl\0A\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"atexit() run\0A\00", align 1
@atexit_handler_done = internal unnamed_addr global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** nocapture noundef readonly %argv) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i32 %argc, 5
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0)) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 1
  %1 = load i8*, i8** %arrayidx, align 8, !tbaa !3
  %call1 = tail call i32 @strcmp(i8* noundef %1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)) #5
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.end25, label %if.else

if.else:                                          ; preds = %if.end
  %call4 = tail call i32 @strcmp(i8* noundef %1, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)) #5
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.end25, label %if.else7

if.else7:                                         ; preds = %if.else
  %call8 = tail call i32 @strcmp(i8* noundef %1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)) #5
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.end25, label %if.else11

if.else11:                                        ; preds = %if.else7
  %call12 = tail call i32 @strcmp(i8* noundef %1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)) #5
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.end25, label %if.else15

if.else15:                                        ; preds = %if.else11
  %call16 = tail call i32 @strcmp(i8* noundef %1, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0)) #5
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.end25, label %if.else19

if.else19:                                        ; preds = %if.else15
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0)) #4
  br label %cleanup

if.end25:                                         ; preds = %if.else15, %if.else11, %if.else7, %if.else, %if.end
  %.sink = phi i32 [ 0, %if.end ], [ 1, %if.else ], [ 2, %if.else7 ], [ 3, %if.else11 ], [ 4, %if.else15 ]
  store i32 %.sink, i32* @test_type, align 4, !tbaa !7
  %arrayidx26 = getelementptr inbounds i8*, i8** %argv, i64 2
  %3 = load i8*, i8** %arrayidx26, align 8, !tbaa !3
  store i8* %3, i8** @path_crypto, align 8, !tbaa !3
  %arrayidx27 = getelementptr inbounds i8*, i8** %argv, i64 3
  %4 = load i8*, i8** %arrayidx27, align 8, !tbaa !3
  store i8* %4, i8** @path_ssl, align 8, !tbaa !3
  %arrayidx28 = getelementptr inbounds i8*, i8** %argv, i64 4
  %5 = load i8*, i8** %arrayidx28, align 8, !tbaa !3
  store i8* %5, i8** @path_atexit, align 8, !tbaa !3
  %cmp29 = icmp eq i8* %3, null
  %cmp30 = icmp eq i8* %4, null
  %or.cond = select i1 %cmp29, i1 true, i1 %cmp30
  br i1 %or.cond, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end25
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0)) #4
  br label %cleanup

if.end33:                                         ; preds = %if.end25
  %call34 = tail call fastcc i32 @test_lib() #6
  %tobool.not = icmp eq i32 %call34, 0
  %. = zext i1 %tobool.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then31, %if.else19, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.then31 ], [ 1, %if.else19 ], [ %., %if.end33 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_lib() unnamed_addr #0 {
entry:
  %ssllib = alloca i8*, align 8
  %cryptolib = alloca i8*, align 8
  %symbols = alloca [5 x %union.anon], align 16
  %0 = bitcast i8** %ssllib to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store i8* null, i8** %ssllib, align 8, !tbaa !3
  %1 = bitcast i8** %cryptolib to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  store i8* null, i8** %cryptolib, align 8, !tbaa !3
  %2 = bitcast [5 x %union.anon]* %symbols to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #7
  %3 = load i32, i32* @test_type, align 4, !tbaa !7
  switch i32 %3, label %if.end31 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  %4 = load i8*, i8** @path_crypto, align 8, !tbaa !3
  %call = call i32 @sd_load(i8* noundef %4, i8** noundef nonnull %cryptolib, i32 noundef 257) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0)) #4
  br label %end

if.end:                                           ; preds = %sw.bb
  %6 = load i32, i32* @test_type, align 4, !tbaa !7
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %sw.bb4, label %sw.epilog

sw.bb4:                                           ; preds = %if.end, %entry
  %7 = load i8*, i8** @path_ssl, align 8, !tbaa !3
  %call5 = call i32 @sd_load(i8* noundef %7, i8** noundef nonnull %ssllib, i32 noundef 257) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %sw.bb4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0)) #4
  br label %end

if.end9:                                          ; preds = %sw.bb4
  %9 = load i32, i32* @test_type, align 4, !tbaa !7
  %cmp10.not = icmp eq i32 %9, 1
  br i1 %cmp10.not, label %if.end12, label %sw.epilog

if.end12:                                         ; preds = %if.end9
  %10 = load i8*, i8** @path_crypto, align 8, !tbaa !3
  %call13 = call i32 @sd_load(i8* noundef %10, i8** noundef nonnull %cryptolib, i32 noundef 257) #4
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %sw.epilogthread-pre-split

if.then15:                                        ; preds = %if.end12
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0)) #4
  br label %end

sw.epilogthread-pre-split:                        ; preds = %if.end12
  %.pr = load i32, i32* @test_type, align 4, !tbaa !7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilogthread-pre-split, %if.end9, %if.end
  %12 = phi i32 [ %.pr, %sw.epilogthread-pre-split ], [ %9, %if.end9 ], [ %6, %if.end ]
  %cmp18 = icmp eq i32 %12, 4
  br i1 %cmp18, label %if.then19, label %if.end31

if.then19:                                        ; preds = %sw.epilog
  %13 = load i8*, i8** %cryptolib, align 8, !tbaa !3
  %sym = bitcast [5 x %union.anon]* %symbols to i8**
  %call20 = call i32 @sd_sym(i8* noundef %13, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8** noundef nonnull %sym) #4
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.then19
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0)) #4
  br label %end

if.end24:                                         ; preds = %if.then19
  %15 = bitcast [5 x %union.anon]* %symbols to i32 (i64, i8*)**
  %16 = load i32 (i64, i8*)*, i32 (i64, i8*)** %15, align 16, !tbaa !7
  %call26 = call i32 %16(i64 noundef 524288, i8* noundef null) #4
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %if.end24.if.end31_crit_edge

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  %.pre = load i32, i32* @test_type, align 4, !tbaa !7
  br label %if.end31

if.then28:                                        ; preds = %if.end24
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0)) #4
  br label %end

if.end31:                                         ; preds = %if.end24.if.end31_crit_edge, %entry, %sw.epilog
  %18 = phi i32 [ %.pre, %if.end24.if.end31_crit_edge ], [ %3, %entry ], [ %12, %sw.epilog ]
  %.off = add i32 %18, -2
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.end65, label %if.then36

if.then36:                                        ; preds = %if.end31
  %19 = load i8*, i8** %ssllib, align 8, !tbaa !3
  %sym38 = bitcast [5 x %union.anon]* %symbols to i8**
  %call39 = call i32 @sd_sym(i8* noundef %19, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8** noundef nonnull %sym38) #4
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then50, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then36
  %20 = load i8*, i8** %ssllib, align 8, !tbaa !3
  %arrayidx41 = getelementptr inbounds [5 x %union.anon], [5 x %union.anon]* %symbols, i64 0, i64 1
  %sym42 = bitcast %union.anon* %arrayidx41 to i8**
  %call43 = call i32 @sd_sym(i8* noundef %20, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8** noundef nonnull %sym42) #4
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then50, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false
  %21 = load i8*, i8** %ssllib, align 8, !tbaa !3
  %arrayidx46 = getelementptr inbounds [5 x %union.anon], [5 x %union.anon]* %symbols, i64 0, i64 2
  %sym47 = bitcast %union.anon* %arrayidx46 to i8**
  %call48 = call i32 @sd_sym(i8* noundef %21, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8** noundef nonnull %sym47) #4
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then50, label %if.end52

if.then50:                                        ; preds = %lor.lhs.false45, %lor.lhs.false, %if.then36
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0)) #4
  br label %end

if.end52:                                         ; preds = %lor.lhs.false45
  %23 = bitcast [5 x %union.anon]* %symbols to %struct.ssl_method_st* ()**
  %24 = load %struct.ssl_method_st* ()*, %struct.ssl_method_st* ()** %23, align 16, !tbaa !7
  %25 = bitcast %union.anon* %arrayidx41 to %struct.ssl_ctx_st* (%struct.ssl_method_st*)**
  %26 = load %struct.ssl_ctx_st* (%struct.ssl_method_st*)*, %struct.ssl_ctx_st* (%struct.ssl_method_st*)** %25, align 8, !tbaa !7
  %27 = bitcast %union.anon* %arrayidx46 to void (%struct.ssl_ctx_st*)**
  %28 = load void (%struct.ssl_ctx_st*)*, void (%struct.ssl_ctx_st*)** %27, align 16, !tbaa !7
  %call59 = call %struct.ssl_method_st* %24() #4
  %call60 = call %struct.ssl_ctx_st* %26(%struct.ssl_method_st* noundef %call59) #4
  %cmp61 = icmp eq %struct.ssl_ctx_st* %call60, null
  br i1 %cmp61, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.end52
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0)) #4
  br label %end

if.end64:                                         ; preds = %if.end52
  call void %28(%struct.ssl_ctx_st* noundef nonnull %call60) #4
  br label %if.end65

if.end65:                                         ; preds = %if.end31, %if.end64
  %sym67.pre-phi = bitcast [5 x %union.anon]* %symbols to i8**
  %30 = load i8*, i8** %cryptolib, align 8, !tbaa !3
  %call68 = call i32 @sd_sym(i8* noundef %30, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8** noundef nonnull %sym67.pre-phi) #4
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then90, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %if.end65
  %31 = load i8*, i8** %cryptolib, align 8, !tbaa !3
  %arrayidx71 = getelementptr inbounds [5 x %union.anon], [5 x %union.anon]* %symbols, i64 0, i64 1
  %sym72 = bitcast %union.anon* %arrayidx71 to i8**
  %call73 = call i32 @sd_sym(i8* noundef %31, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i8** noundef nonnull %sym72) #4
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then90, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %lor.lhs.false70
  %32 = load i8*, i8** %cryptolib, align 8, !tbaa !3
  %arrayidx76 = getelementptr inbounds [5 x %union.anon], [5 x %union.anon]* %symbols, i64 0, i64 2
  %sym77 = bitcast %union.anon* %arrayidx76 to i8**
  %call78 = call i32 @sd_sym(i8* noundef %32, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i8** noundef nonnull %sym77) #4
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.then90, label %lor.lhs.false80

lor.lhs.false80:                                  ; preds = %lor.lhs.false75
  %33 = load i8*, i8** %cryptolib, align 8, !tbaa !3
  %arrayidx81 = getelementptr inbounds [5 x %union.anon], [5 x %union.anon]* %symbols, i64 0, i64 3
  %sym82 = bitcast %union.anon* %arrayidx81 to i8**
  %call83 = call i32 @sd_sym(i8* noundef %33, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0), i8** noundef nonnull %sym82) #4
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.then90, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %lor.lhs.false80
  %34 = load i8*, i8** %cryptolib, align 8, !tbaa !3
  %arrayidx86 = getelementptr inbounds [5 x %union.anon], [5 x %union.anon]* %symbols, i64 0, i64 4
  %sym87 = bitcast %union.anon* %arrayidx86 to i8**
  %call88 = call i32 @sd_sym(i8* noundef %34, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i8** noundef nonnull %sym87) #4
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.then90, label %if.end92

if.then90:                                        ; preds = %lor.lhs.false85, %lor.lhs.false80, %lor.lhs.false75, %lor.lhs.false70, %if.end65
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %35, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0)) #4
  br label %end

if.end92:                                         ; preds = %lor.lhs.false85
  %func94 = getelementptr inbounds [5 x %union.anon], [5 x %union.anon]* %symbols, i64 0, i64 0, i32 0
  %36 = load void ()*, void ()** %func94, align 16, !tbaa !7
  %37 = bitcast void ()* %36 to i64 ()*
  %call95 = call i64 %37() #4
  %cmp96.not = icmp eq i64 %call95, 0
  br i1 %cmp96.not, label %if.end99, label %if.then97

if.then97:                                        ; preds = %if.end92
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %38, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i64 0, i64 0)) #4
  br label %end

if.end99:                                         ; preds = %if.end92
  %39 = bitcast %union.anon* %arrayidx71 to i64 ()**
  %40 = load i64 ()*, i64 ()** %39, align 8, !tbaa !7
  %41 = bitcast %union.anon* %arrayidx76 to i64 ()**
  %42 = load i64 ()*, i64 ()** %41, align 16, !tbaa !7
  %43 = bitcast %union.anon* %arrayidx81 to i64 ()**
  %44 = load i64 ()*, i64 ()** %43, align 8, !tbaa !7
  %call106 = call i64 %40() #4
  %cmp107.not = icmp eq i64 %call106, 3
  br i1 %cmp107.not, label %lor.lhs.false108, label %if.then114

lor.lhs.false108:                                 ; preds = %if.end99
  %call109 = call i64 %42() #4
  %cmp110.not = icmp eq i64 %call109, 0
  br i1 %cmp110.not, label %lor.lhs.false111, label %if.then114

lor.lhs.false111:                                 ; preds = %lor.lhs.false108
  %call112 = call i64 %44() #4
  %cmp113.not = icmp eq i64 %call112, 0
  br i1 %cmp113.not, label %if.end116, label %if.then114

if.then114:                                       ; preds = %lor.lhs.false111, %lor.lhs.false108, %if.end99
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %45, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0)) #4
  br label %end

if.end116:                                        ; preds = %lor.lhs.false111
  %46 = bitcast %union.anon* %arrayidx86 to i32 (void ()*)**
  %47 = load i32 (void ()*)*, i32 (void ()*)** %46, align 16, !tbaa !7
  %call119 = call i32 %47(void ()* noundef nonnull @atexit_handler) #4
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.then121, label %if.end123

if.then121:                                       ; preds = %if.end116
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call122 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i64 0, i64 0)) #4
  br label %end

if.end123:                                        ; preds = %if.end116
  %49 = load i32, i32* @test_type, align 4, !tbaa !7
  %cmp124 = icmp eq i32 %49, 3
  br i1 %cmp124, label %if.then125, label %if.end155

if.then125:                                       ; preds = %if.end123
  %50 = load i8*, i8** %cryptolib, align 8, !tbaa !3
  %call128 = call i32 @sd_sym(i8* noundef %50, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8** noundef nonnull %sym67.pre-phi) #4
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.then135, label %lor.lhs.false130

lor.lhs.false130:                                 ; preds = %if.then125
  %51 = load i8*, i8** %cryptolib, align 8, !tbaa !3
  %call133 = call i32 @sd_sym(i8* noundef %51, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i8** noundef nonnull %sym72) #4
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.then135, label %if.end137

if.then135:                                       ; preds = %lor.lhs.false130, %if.then125
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call136 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %52, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0)) #4
  br label %end

if.end137:                                        ; preds = %lor.lhs.false130
  %53 = bitcast [5 x %union.anon]* %symbols to i8* (void ()*, i32)**
  %54 = load i8* (void ()*, i32)*, i8* (void ()*, i32)** %53, align 16, !tbaa !7
  %55 = bitcast %union.anon* %arrayidx71 to i32 (i8*)**
  %56 = load i32 (i8*)*, i32 (i8*)** %55, align 8, !tbaa !7
  %call142 = call i8* %54(void ()* noundef %36, i32 noundef 0) #4
  %cmp143 = icmp eq i8* %call142, null
  br i1 %cmp143, label %if.then144, label %cleanup151

if.then144:                                       ; preds = %if.end137
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call145 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0)) #4
  br label %end

cleanup151:                                       ; preds = %if.end137
  %call147 = call i32 %56(i8* noundef nonnull %call142) #4
  br label %if.end155

if.end155:                                        ; preds = %cleanup151, %if.end123
  %58 = load i8*, i8** %cryptolib, align 8, !tbaa !3
  %call156 = call i32 @sd_close(i8* noundef %58) #4
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.then158, label %if.end160

if.then158:                                       ; preds = %if.end155
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call159 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %59, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i64 0, i64 0)) #4
  br label %end

if.end160:                                        ; preds = %if.end155
  store i8* null, i8** %cryptolib, align 8, !tbaa !3
  %60 = load i32, i32* @test_type, align 4, !tbaa !7
  %61 = icmp ult i32 %60, 2
  br i1 %61, label %if.then164, label %if.end174

if.then164:                                       ; preds = %if.end160
  %62 = load i8*, i8** %ssllib, align 8, !tbaa !3
  %call165 = call i32 @sd_close(i8* noundef %62) #4
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.then167, label %if.end169

if.then167:                                       ; preds = %if.then164
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call168 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %63, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i64 0, i64 0)) #4
  br label %end

if.end169:                                        ; preds = %if.then164
  store i8* null, i8** %ssllib, align 8, !tbaa !3
  br label %end

end:                                              ; preds = %if.then144, %if.then135, %if.then22, %if.then28, %if.end169, %if.then167, %if.then158, %if.then121, %if.then114, %if.then97, %if.then90, %if.then62, %if.then50, %if.then15, %if.then7, %if.then
  %result.0.ph = phi i32 [ 1, %if.end169 ], [ 0, %if.then ], [ 0, %if.then7 ], [ 0, %if.then15 ], [ 0, %if.then50 ], [ 0, %if.then90 ], [ 0, %if.then121 ], [ 0, %if.then158 ], [ 0, %if.then167 ], [ 0, %if.then114 ], [ 0, %if.then97 ], [ 0, %if.then62 ], [ 0, %if.then28 ], [ 0, %if.then22 ], [ 0, %if.then135 ], [ 0, %if.then144 ]
  %.pr217 = load i8*, i8** %cryptolib, align 8, !tbaa !3
  %cmp171.not = icmp eq i8* %.pr217, null
  br i1 %cmp171.not, label %if.end174, label %if.then172

if.then172:                                       ; preds = %end
  %call173 = call i32 @sd_close(i8* noundef nonnull %.pr217) #4
  br label %if.end174

if.end174:                                        ; preds = %if.end160, %if.then172, %end
  %result.0220 = phi i32 [ %result.0.ph, %if.then172 ], [ %result.0.ph, %end ], [ 1, %if.end160 ]
  %64 = load i8*, i8** %ssllib, align 8, !tbaa !3
  %cmp175.not = icmp eq i8* %64, null
  br i1 %cmp175.not, label %cleanup179, label %if.then176

if.then176:                                       ; preds = %if.end174
  %call177 = call i32 @sd_close(i8* noundef nonnull %64) #4
  br label %cleanup179

cleanup179:                                       ; preds = %if.end174, %if.then176
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %result.0220
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i32 @sd_load(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @sd_sym(i8* noundef, i8* noundef, i8** noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @atexit_handler() #0 {
entry:
  %0 = load i8*, i8** @path_atexit, align 8, !tbaa !3
  %call = tail call %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0)) #4
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %call, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0)) #4
  %call2 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %call) #4
  %1 = load i32, i32* @atexit_handler_done, align 4, !tbaa !8
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @atexit_handler_done, align 4, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

declare dso_local i32 @sd_close(i8* noundef) local_unnamed_addr #2

declare dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !5, i64 0}
