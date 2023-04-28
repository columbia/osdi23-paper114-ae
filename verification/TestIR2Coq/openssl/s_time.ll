; ModuleID = 'apps/s_time.c'
source_filename = "apps/s_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.verify_options_st = type { i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.ssl_method_st = type opaque
%struct.ssl_ctx_st = type opaque
%struct.ssl_st = type opaque
%struct.linger = type { i32, i32 }
%struct.bio_method_st = type opaque

@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Connection options:\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"Where to connect as post:port (default is localhost:4433)\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Just time new connections\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"reuse\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Just time connection reuse\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"bugs\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Turn on SSL bug compatibility\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"cipher\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"TLSv1.2 and below cipher list to be used\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"ciphersuites\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"Specify TLSv1.3 ciphersuites to be used\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"tls1\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"Just use TLSv1.0\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"tls1_1\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"Just use TLSv1.1\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"tls1_2\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"Just use TLSv1.2\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"tls1_3\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"Just use TLSv1.3\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@.str.25 = private unnamed_addr constant [49 x i8] c"Turn on peer certificate verification, set depth\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"Seconds to collect data, default 30\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"www\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"Fetch specified page from the site\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"Certificate options:\0A\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"nameopt\00", align 1
@.str.32 = private unnamed_addr constant [49 x i8] c"Certificate subject/issuer name printing options\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"cert\00", align 1
@.str.34 = private unnamed_addr constant [37 x i8] c"Cert file to use, PEM format assumed\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.36 = private unnamed_addr constant [42 x i8] c"File with key, PEM; default is -cert file\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"cafile\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"PEM format file of CA's\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"CAfile\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"CApath\00", align 1
@.str.41 = private unnamed_addr constant [29 x i8] c"PEM format directory of CA's\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"CAstore\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"URI to store of CA's\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"no-CAfile\00", align 1
@.str.45 = private unnamed_addr constant [42 x i8] c"Do not load the default certificates file\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"no-CApath\00", align 1
@.str.47 = private unnamed_addr constant [65 x i8] c"Do not load certificates from the default certificates directory\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"no-CAstore\00", align 1
@.str.49 = private unnamed_addr constant [65 x i8] c"Do not load certificates from the default certificates store URI\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.52 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.54 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.56 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@s_time_options = dso_local constant [32 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 2, i32 115, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 14, i32 45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 15, i32 45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 16, i32 45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i32 3, i32 115, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i32 4, i32 115, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 21, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i32 22, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i32 23, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i32 24, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i32 17, i32 112, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.25, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i32 18, i32 112, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.27, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i32 20, i32 115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i32 6, i32 115, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.32, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i32 5, i32 60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.34, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i32 7, i32 60, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.36, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 9, i32 60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 9, i32 60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 8, i32 47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.41, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i32 10, i32 58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i32 12, i32 45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.45, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i32 11, i32 45, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.47, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), i32 13, i32 45, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.49, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.50, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.52, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.54, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.56, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@.str.57 = private unnamed_addr constant [15 x i8] c"localhost:4433\00", align 1
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.58 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@verify_args = external dso_local local_unnamed_addr global %struct.verify_options_st, align 4
@.str.59 = private unnamed_addr constant [24 x i8] c"%s: verify depth is %d\0A\00", align 1
@.str.60 = private unnamed_addr constant [29 x i8] c"%s: -www option is too long\0A\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"SSL_CIPHER\00", align 1
@.str.62 = private unnamed_addr constant [49 x i8] c"Collecting connection statistics for %d seconds\0A\00", align 1
@fmt_http_get_cmd = internal constant [20 x i8] c"GET %s HTTP/1.0\0D\0A\0D\0A\00", align 16
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.63 = private unnamed_addr constant [70 x i8] c"\0A\0A%d connections in %.2fs; %.2f connections/user sec, bytes read %ld\0A\00", align 1
@.str.64 = private unnamed_addr constant [67 x i8] c"%d connections in %ld real seconds, %ld bytes read per connection\0A\00", align 1
@.str.65 = private unnamed_addr constant [37 x i8] c"\0A\0ANow timing with session id reuse.\0A\00", align 1
@.str.66 = private unnamed_addr constant [26 x i8] c"Unable to get connection\0A\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"starting\0A\00", align 1
@.str.68 = private unnamed_addr constant [35 x i8] c"0 connections in %ld real seconds\0A\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"ERROR\0A\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"verify error:%s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s_time_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %buf = alloca [8192 x i8], align 16
  %0 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %0) #5
  %call = tail call %struct.ssl_method_st* @TLS_client_method() #6
  %call1 = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([32 x %struct.options_st], [32 x %struct.options_st]* @s_time_options, i64 0, i64 0)) #6
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %CApath.0 = phi i8* [ null, %entry ], [ %CApath.0.be, %while.cond.backedge ]
  %CAfile.0 = phi i8* [ null, %entry ], [ %CAfile.0.be, %while.cond.backedge ]
  %CAstore.0 = phi i8* [ null, %entry ], [ %CAstore.0.be, %while.cond.backedge ]
  %cipher.0 = phi i8* [ null, %entry ], [ %cipher.0.be, %while.cond.backedge ]
  %ciphersuites.0 = phi i8* [ null, %entry ], [ %ciphersuites.0.be, %while.cond.backedge ]
  %www_path.0 = phi i8* [ null, %entry ], [ %www_path.0.be, %while.cond.backedge ]
  %host.0 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i64 0, i64 0), %entry ], [ %host.0.be, %while.cond.backedge ]
  %certfile.0 = phi i8* [ null, %entry ], [ %certfile.0.be, %while.cond.backedge ]
  %keyfile.0 = phi i8* [ null, %entry ], [ %keyfile.0.be, %while.cond.backedge ]
  %noCApath.0 = phi i32 [ 0, %entry ], [ %noCApath.0.be, %while.cond.backedge ]
  %noCAfile.0 = phi i32 [ 0, %entry ], [ %noCAfile.0.be, %while.cond.backedge ]
  %noCAstore.0 = phi i32 [ 0, %entry ], [ %noCAstore.0.be, %while.cond.backedge ]
  %maxtime.0 = phi i32 [ 30, %entry ], [ %maxtime.0.be, %while.cond.backedge ]
  %perform.0 = phi i32 [ 3, %entry ], [ %perform.0.be, %while.cond.backedge ]
  %st_bugs.0 = phi i32 [ 0, %entry ], [ %st_bugs.0.be, %while.cond.backedge ]
  %min_version.0 = phi i32 [ 0, %entry ], [ %min_version.0.be, %while.cond.backedge ]
  %max_version.0 = phi i32 [ 0, %entry ], [ %max_version.0.be, %while.cond.backedge ]
  %call2 = tail call i32 @opt_next() #6
  switch i32 %call2, label %while.cond.backedge [
    i32 0, label %while.end
    i32 1601, label %sw.bb48
    i32 -1, label %opthelp
    i32 1, label %sw.bb4
    i32 2, label %sw.bb5
    i32 15, label %sw.bb7
    i32 14, label %sw.bb8
    i32 17, label %sw.bb9
    i32 5, label %sw.bb12
    i32 6, label %sw.bb14
    i32 7, label %sw.bb17
    i32 8, label %sw.bb19
    i32 9, label %sw.bb21
    i32 11, label %sw.bb23
    i32 12, label %sw.bb24
    i32 10, label %sw.bb25
    i32 13, label %sw.bb27
    i32 3, label %sw.bb28
    i32 4, label %sw.bb30
    i32 16, label %sw.bb32
    i32 18, label %sw.bb33
    i32 20, label %sw.bb35
    i32 19, label %sw.bb42
    i32 21, label %sw.bb43
    i32 22, label %sw.bb44
    i32 23, label %sw.bb45
    i32 24, label %sw.bb46
    i32 1603, label %sw.bb48
    i32 1602, label %sw.bb48
  ]

while.cond.backedge:                              ; preds = %while.cond, %sw.bb48, %sw.bb35, %sw.bb14, %sw.bb46, %sw.bb45, %sw.bb44, %sw.bb43, %sw.bb42, %sw.bb33, %sw.bb32, %sw.bb30, %sw.bb28, %sw.bb27, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb12, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb5
  %CApath.0.be = phi i8* [ %CApath.0, %sw.bb48 ], [ %CApath.0, %sw.bb46 ], [ %CApath.0, %sw.bb45 ], [ %CApath.0, %sw.bb44 ], [ %CApath.0, %sw.bb43 ], [ %CApath.0, %sw.bb42 ], [ %CApath.0, %sw.bb35 ], [ %CApath.0, %sw.bb33 ], [ %CApath.0, %sw.bb32 ], [ %CApath.0, %sw.bb30 ], [ %CApath.0, %sw.bb28 ], [ %CApath.0, %sw.bb27 ], [ %CApath.0, %sw.bb25 ], [ %CApath.0, %sw.bb24 ], [ %CApath.0, %sw.bb23 ], [ %CApath.0, %sw.bb21 ], [ %call20, %sw.bb19 ], [ %CApath.0, %sw.bb17 ], [ %CApath.0, %sw.bb14 ], [ %CApath.0, %sw.bb12 ], [ %CApath.0, %sw.bb9 ], [ %CApath.0, %sw.bb8 ], [ %CApath.0, %sw.bb7 ], [ %CApath.0, %sw.bb5 ], [ %CApath.0, %while.cond ]
  %CAfile.0.be = phi i8* [ %CAfile.0, %sw.bb48 ], [ %CAfile.0, %sw.bb46 ], [ %CAfile.0, %sw.bb45 ], [ %CAfile.0, %sw.bb44 ], [ %CAfile.0, %sw.bb43 ], [ %CAfile.0, %sw.bb42 ], [ %CAfile.0, %sw.bb35 ], [ %CAfile.0, %sw.bb33 ], [ %CAfile.0, %sw.bb32 ], [ %CAfile.0, %sw.bb30 ], [ %CAfile.0, %sw.bb28 ], [ %CAfile.0, %sw.bb27 ], [ %CAfile.0, %sw.bb25 ], [ %CAfile.0, %sw.bb24 ], [ %CAfile.0, %sw.bb23 ], [ %call22, %sw.bb21 ], [ %CAfile.0, %sw.bb19 ], [ %CAfile.0, %sw.bb17 ], [ %CAfile.0, %sw.bb14 ], [ %CAfile.0, %sw.bb12 ], [ %CAfile.0, %sw.bb9 ], [ %CAfile.0, %sw.bb8 ], [ %CAfile.0, %sw.bb7 ], [ %CAfile.0, %sw.bb5 ], [ %CAfile.0, %while.cond ]
  %CAstore.0.be = phi i8* [ %CAstore.0, %sw.bb48 ], [ %CAstore.0, %sw.bb46 ], [ %CAstore.0, %sw.bb45 ], [ %CAstore.0, %sw.bb44 ], [ %CAstore.0, %sw.bb43 ], [ %CAstore.0, %sw.bb42 ], [ %CAstore.0, %sw.bb35 ], [ %CAstore.0, %sw.bb33 ], [ %CAstore.0, %sw.bb32 ], [ %CAstore.0, %sw.bb30 ], [ %CAstore.0, %sw.bb28 ], [ %CAstore.0, %sw.bb27 ], [ %call26, %sw.bb25 ], [ %CAstore.0, %sw.bb24 ], [ %CAstore.0, %sw.bb23 ], [ %CAstore.0, %sw.bb21 ], [ %CAstore.0, %sw.bb19 ], [ %CAstore.0, %sw.bb17 ], [ %CAstore.0, %sw.bb14 ], [ %CAstore.0, %sw.bb12 ], [ %CAstore.0, %sw.bb9 ], [ %CAstore.0, %sw.bb8 ], [ %CAstore.0, %sw.bb7 ], [ %CAstore.0, %sw.bb5 ], [ %CAstore.0, %while.cond ]
  %cipher.0.be = phi i8* [ %cipher.0, %sw.bb48 ], [ %cipher.0, %sw.bb46 ], [ %cipher.0, %sw.bb45 ], [ %cipher.0, %sw.bb44 ], [ %cipher.0, %sw.bb43 ], [ %cipher.0, %sw.bb42 ], [ %cipher.0, %sw.bb35 ], [ %cipher.0, %sw.bb33 ], [ %cipher.0, %sw.bb32 ], [ %cipher.0, %sw.bb30 ], [ %call29, %sw.bb28 ], [ %cipher.0, %sw.bb27 ], [ %cipher.0, %sw.bb25 ], [ %cipher.0, %sw.bb24 ], [ %cipher.0, %sw.bb23 ], [ %cipher.0, %sw.bb21 ], [ %cipher.0, %sw.bb19 ], [ %cipher.0, %sw.bb17 ], [ %cipher.0, %sw.bb14 ], [ %cipher.0, %sw.bb12 ], [ %cipher.0, %sw.bb9 ], [ %cipher.0, %sw.bb8 ], [ %cipher.0, %sw.bb7 ], [ %cipher.0, %sw.bb5 ], [ %cipher.0, %while.cond ]
  %ciphersuites.0.be = phi i8* [ %ciphersuites.0, %sw.bb48 ], [ %ciphersuites.0, %sw.bb46 ], [ %ciphersuites.0, %sw.bb45 ], [ %ciphersuites.0, %sw.bb44 ], [ %ciphersuites.0, %sw.bb43 ], [ %ciphersuites.0, %sw.bb42 ], [ %ciphersuites.0, %sw.bb35 ], [ %ciphersuites.0, %sw.bb33 ], [ %ciphersuites.0, %sw.bb32 ], [ %call31, %sw.bb30 ], [ %ciphersuites.0, %sw.bb28 ], [ %ciphersuites.0, %sw.bb27 ], [ %ciphersuites.0, %sw.bb25 ], [ %ciphersuites.0, %sw.bb24 ], [ %ciphersuites.0, %sw.bb23 ], [ %ciphersuites.0, %sw.bb21 ], [ %ciphersuites.0, %sw.bb19 ], [ %ciphersuites.0, %sw.bb17 ], [ %ciphersuites.0, %sw.bb14 ], [ %ciphersuites.0, %sw.bb12 ], [ %ciphersuites.0, %sw.bb9 ], [ %ciphersuites.0, %sw.bb8 ], [ %ciphersuites.0, %sw.bb7 ], [ %ciphersuites.0, %sw.bb5 ], [ %ciphersuites.0, %while.cond ]
  %www_path.0.be = phi i8* [ %www_path.0, %sw.bb48 ], [ %www_path.0, %sw.bb46 ], [ %www_path.0, %sw.bb45 ], [ %www_path.0, %sw.bb44 ], [ %www_path.0, %sw.bb43 ], [ %www_path.0, %sw.bb42 ], [ %call36, %sw.bb35 ], [ %www_path.0, %sw.bb33 ], [ %www_path.0, %sw.bb32 ], [ %www_path.0, %sw.bb30 ], [ %www_path.0, %sw.bb28 ], [ %www_path.0, %sw.bb27 ], [ %www_path.0, %sw.bb25 ], [ %www_path.0, %sw.bb24 ], [ %www_path.0, %sw.bb23 ], [ %www_path.0, %sw.bb21 ], [ %www_path.0, %sw.bb19 ], [ %www_path.0, %sw.bb17 ], [ %www_path.0, %sw.bb14 ], [ %www_path.0, %sw.bb12 ], [ %www_path.0, %sw.bb9 ], [ %www_path.0, %sw.bb8 ], [ %www_path.0, %sw.bb7 ], [ %www_path.0, %sw.bb5 ], [ %www_path.0, %while.cond ]
  %host.0.be = phi i8* [ %host.0, %sw.bb48 ], [ %host.0, %sw.bb46 ], [ %host.0, %sw.bb45 ], [ %host.0, %sw.bb44 ], [ %host.0, %sw.bb43 ], [ %host.0, %sw.bb42 ], [ %host.0, %sw.bb35 ], [ %host.0, %sw.bb33 ], [ %host.0, %sw.bb32 ], [ %host.0, %sw.bb30 ], [ %host.0, %sw.bb28 ], [ %host.0, %sw.bb27 ], [ %host.0, %sw.bb25 ], [ %host.0, %sw.bb24 ], [ %host.0, %sw.bb23 ], [ %host.0, %sw.bb21 ], [ %host.0, %sw.bb19 ], [ %host.0, %sw.bb17 ], [ %host.0, %sw.bb14 ], [ %host.0, %sw.bb12 ], [ %host.0, %sw.bb9 ], [ %host.0, %sw.bb8 ], [ %host.0, %sw.bb7 ], [ %call6, %sw.bb5 ], [ %host.0, %while.cond ]
  %certfile.0.be = phi i8* [ %certfile.0, %sw.bb48 ], [ %certfile.0, %sw.bb46 ], [ %certfile.0, %sw.bb45 ], [ %certfile.0, %sw.bb44 ], [ %certfile.0, %sw.bb43 ], [ %certfile.0, %sw.bb42 ], [ %certfile.0, %sw.bb35 ], [ %certfile.0, %sw.bb33 ], [ %certfile.0, %sw.bb32 ], [ %certfile.0, %sw.bb30 ], [ %certfile.0, %sw.bb28 ], [ %certfile.0, %sw.bb27 ], [ %certfile.0, %sw.bb25 ], [ %certfile.0, %sw.bb24 ], [ %certfile.0, %sw.bb23 ], [ %certfile.0, %sw.bb21 ], [ %certfile.0, %sw.bb19 ], [ %certfile.0, %sw.bb17 ], [ %certfile.0, %sw.bb14 ], [ %call13, %sw.bb12 ], [ %certfile.0, %sw.bb9 ], [ %certfile.0, %sw.bb8 ], [ %certfile.0, %sw.bb7 ], [ %certfile.0, %sw.bb5 ], [ %certfile.0, %while.cond ]
  %keyfile.0.be = phi i8* [ %keyfile.0, %sw.bb48 ], [ %keyfile.0, %sw.bb46 ], [ %keyfile.0, %sw.bb45 ], [ %keyfile.0, %sw.bb44 ], [ %keyfile.0, %sw.bb43 ], [ %keyfile.0, %sw.bb42 ], [ %keyfile.0, %sw.bb35 ], [ %keyfile.0, %sw.bb33 ], [ %keyfile.0, %sw.bb32 ], [ %keyfile.0, %sw.bb30 ], [ %keyfile.0, %sw.bb28 ], [ %keyfile.0, %sw.bb27 ], [ %keyfile.0, %sw.bb25 ], [ %keyfile.0, %sw.bb24 ], [ %keyfile.0, %sw.bb23 ], [ %keyfile.0, %sw.bb21 ], [ %keyfile.0, %sw.bb19 ], [ %call18, %sw.bb17 ], [ %keyfile.0, %sw.bb14 ], [ %keyfile.0, %sw.bb12 ], [ %keyfile.0, %sw.bb9 ], [ %keyfile.0, %sw.bb8 ], [ %keyfile.0, %sw.bb7 ], [ %keyfile.0, %sw.bb5 ], [ %keyfile.0, %while.cond ]
  %noCApath.0.be = phi i32 [ %noCApath.0, %sw.bb48 ], [ %noCApath.0, %sw.bb46 ], [ %noCApath.0, %sw.bb45 ], [ %noCApath.0, %sw.bb44 ], [ %noCApath.0, %sw.bb43 ], [ %noCApath.0, %sw.bb42 ], [ %noCApath.0, %sw.bb35 ], [ %noCApath.0, %sw.bb33 ], [ %noCApath.0, %sw.bb32 ], [ %noCApath.0, %sw.bb30 ], [ %noCApath.0, %sw.bb28 ], [ %noCApath.0, %sw.bb27 ], [ %noCApath.0, %sw.bb25 ], [ %noCApath.0, %sw.bb24 ], [ 1, %sw.bb23 ], [ %noCApath.0, %sw.bb21 ], [ %noCApath.0, %sw.bb19 ], [ %noCApath.0, %sw.bb17 ], [ %noCApath.0, %sw.bb14 ], [ %noCApath.0, %sw.bb12 ], [ %noCApath.0, %sw.bb9 ], [ %noCApath.0, %sw.bb8 ], [ %noCApath.0, %sw.bb7 ], [ %noCApath.0, %sw.bb5 ], [ %noCApath.0, %while.cond ]
  %noCAfile.0.be = phi i32 [ %noCAfile.0, %sw.bb48 ], [ %noCAfile.0, %sw.bb46 ], [ %noCAfile.0, %sw.bb45 ], [ %noCAfile.0, %sw.bb44 ], [ %noCAfile.0, %sw.bb43 ], [ %noCAfile.0, %sw.bb42 ], [ %noCAfile.0, %sw.bb35 ], [ %noCAfile.0, %sw.bb33 ], [ %noCAfile.0, %sw.bb32 ], [ %noCAfile.0, %sw.bb30 ], [ %noCAfile.0, %sw.bb28 ], [ %noCAfile.0, %sw.bb27 ], [ %noCAfile.0, %sw.bb25 ], [ 1, %sw.bb24 ], [ %noCAfile.0, %sw.bb23 ], [ %noCAfile.0, %sw.bb21 ], [ %noCAfile.0, %sw.bb19 ], [ %noCAfile.0, %sw.bb17 ], [ %noCAfile.0, %sw.bb14 ], [ %noCAfile.0, %sw.bb12 ], [ %noCAfile.0, %sw.bb9 ], [ %noCAfile.0, %sw.bb8 ], [ %noCAfile.0, %sw.bb7 ], [ %noCAfile.0, %sw.bb5 ], [ %noCAfile.0, %while.cond ]
  %noCAstore.0.be = phi i32 [ %noCAstore.0, %sw.bb48 ], [ %noCAstore.0, %sw.bb46 ], [ %noCAstore.0, %sw.bb45 ], [ %noCAstore.0, %sw.bb44 ], [ %noCAstore.0, %sw.bb43 ], [ %noCAstore.0, %sw.bb42 ], [ %noCAstore.0, %sw.bb35 ], [ %noCAstore.0, %sw.bb33 ], [ %noCAstore.0, %sw.bb32 ], [ %noCAstore.0, %sw.bb30 ], [ %noCAstore.0, %sw.bb28 ], [ 1, %sw.bb27 ], [ %noCAstore.0, %sw.bb25 ], [ %noCAstore.0, %sw.bb24 ], [ %noCAstore.0, %sw.bb23 ], [ %noCAstore.0, %sw.bb21 ], [ %noCAstore.0, %sw.bb19 ], [ %noCAstore.0, %sw.bb17 ], [ %noCAstore.0, %sw.bb14 ], [ %noCAstore.0, %sw.bb12 ], [ %noCAstore.0, %sw.bb9 ], [ %noCAstore.0, %sw.bb8 ], [ %noCAstore.0, %sw.bb7 ], [ %noCAstore.0, %sw.bb5 ], [ %noCAstore.0, %while.cond ]
  %maxtime.0.be = phi i32 [ %maxtime.0, %sw.bb48 ], [ %maxtime.0, %sw.bb46 ], [ %maxtime.0, %sw.bb45 ], [ %maxtime.0, %sw.bb44 ], [ %maxtime.0, %sw.bb43 ], [ %maxtime.0, %sw.bb42 ], [ %maxtime.0, %sw.bb35 ], [ %call34, %sw.bb33 ], [ %maxtime.0, %sw.bb32 ], [ %maxtime.0, %sw.bb30 ], [ %maxtime.0, %sw.bb28 ], [ %maxtime.0, %sw.bb27 ], [ %maxtime.0, %sw.bb25 ], [ %maxtime.0, %sw.bb24 ], [ %maxtime.0, %sw.bb23 ], [ %maxtime.0, %sw.bb21 ], [ %maxtime.0, %sw.bb19 ], [ %maxtime.0, %sw.bb17 ], [ %maxtime.0, %sw.bb14 ], [ %maxtime.0, %sw.bb12 ], [ %maxtime.0, %sw.bb9 ], [ %maxtime.0, %sw.bb8 ], [ %maxtime.0, %sw.bb7 ], [ %maxtime.0, %sw.bb5 ], [ %maxtime.0, %while.cond ]
  %perform.0.be = phi i32 [ %perform.0, %sw.bb48 ], [ %perform.0, %sw.bb46 ], [ %perform.0, %sw.bb45 ], [ %perform.0, %sw.bb44 ], [ %perform.0, %sw.bb43 ], [ %perform.0, %sw.bb42 ], [ %perform.0, %sw.bb35 ], [ %perform.0, %sw.bb33 ], [ %perform.0, %sw.bb32 ], [ %perform.0, %sw.bb30 ], [ %perform.0, %sw.bb28 ], [ %perform.0, %sw.bb27 ], [ %perform.0, %sw.bb25 ], [ %perform.0, %sw.bb24 ], [ %perform.0, %sw.bb23 ], [ %perform.0, %sw.bb21 ], [ %perform.0, %sw.bb19 ], [ %perform.0, %sw.bb17 ], [ %perform.0, %sw.bb14 ], [ %perform.0, %sw.bb12 ], [ %perform.0, %sw.bb9 ], [ 1, %sw.bb8 ], [ 2, %sw.bb7 ], [ %perform.0, %sw.bb5 ], [ %perform.0, %while.cond ]
  %st_bugs.0.be = phi i32 [ %st_bugs.0, %sw.bb48 ], [ %st_bugs.0, %sw.bb46 ], [ %st_bugs.0, %sw.bb45 ], [ %st_bugs.0, %sw.bb44 ], [ %st_bugs.0, %sw.bb43 ], [ %st_bugs.0, %sw.bb42 ], [ %st_bugs.0, %sw.bb35 ], [ %st_bugs.0, %sw.bb33 ], [ 1, %sw.bb32 ], [ %st_bugs.0, %sw.bb30 ], [ %st_bugs.0, %sw.bb28 ], [ %st_bugs.0, %sw.bb27 ], [ %st_bugs.0, %sw.bb25 ], [ %st_bugs.0, %sw.bb24 ], [ %st_bugs.0, %sw.bb23 ], [ %st_bugs.0, %sw.bb21 ], [ %st_bugs.0, %sw.bb19 ], [ %st_bugs.0, %sw.bb17 ], [ %st_bugs.0, %sw.bb14 ], [ %st_bugs.0, %sw.bb12 ], [ %st_bugs.0, %sw.bb9 ], [ %st_bugs.0, %sw.bb8 ], [ %st_bugs.0, %sw.bb7 ], [ %st_bugs.0, %sw.bb5 ], [ %st_bugs.0, %while.cond ]
  %min_version.0.be = phi i32 [ %min_version.0, %sw.bb48 ], [ 772, %sw.bb46 ], [ 771, %sw.bb45 ], [ 770, %sw.bb44 ], [ 769, %sw.bb43 ], [ 768, %sw.bb42 ], [ %min_version.0, %sw.bb35 ], [ %min_version.0, %sw.bb33 ], [ %min_version.0, %sw.bb32 ], [ %min_version.0, %sw.bb30 ], [ %min_version.0, %sw.bb28 ], [ %min_version.0, %sw.bb27 ], [ %min_version.0, %sw.bb25 ], [ %min_version.0, %sw.bb24 ], [ %min_version.0, %sw.bb23 ], [ %min_version.0, %sw.bb21 ], [ %min_version.0, %sw.bb19 ], [ %min_version.0, %sw.bb17 ], [ %min_version.0, %sw.bb14 ], [ %min_version.0, %sw.bb12 ], [ %min_version.0, %sw.bb9 ], [ %min_version.0, %sw.bb8 ], [ %min_version.0, %sw.bb7 ], [ %min_version.0, %sw.bb5 ], [ %min_version.0, %while.cond ]
  %max_version.0.be = phi i32 [ %max_version.0, %sw.bb48 ], [ 772, %sw.bb46 ], [ 771, %sw.bb45 ], [ 770, %sw.bb44 ], [ 769, %sw.bb43 ], [ 768, %sw.bb42 ], [ %max_version.0, %sw.bb35 ], [ %max_version.0, %sw.bb33 ], [ %max_version.0, %sw.bb32 ], [ %max_version.0, %sw.bb30 ], [ %max_version.0, %sw.bb28 ], [ %max_version.0, %sw.bb27 ], [ %max_version.0, %sw.bb25 ], [ %max_version.0, %sw.bb24 ], [ %max_version.0, %sw.bb23 ], [ %max_version.0, %sw.bb21 ], [ %max_version.0, %sw.bb19 ], [ %max_version.0, %sw.bb17 ], [ %max_version.0, %sw.bb14 ], [ %max_version.0, %sw.bb12 ], [ %max_version.0, %sw.bb9 ], [ %max_version.0, %sw.bb8 ], [ %max_version.0, %sw.bb7 ], [ %max_version.0, %sw.bb5 ], [ %max_version.0, %while.cond ]
  br label %while.cond, !llvm.loop !3

opthelp:                                          ; preds = %while.cond, %while.end
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.58, i64 0, i64 0), i8* noundef %call1) #6
  br label %end

sw.bb4:                                           ; preds = %while.cond
  tail call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([32 x %struct.options_st], [32 x %struct.options_st]* @s_time_options, i64 0, i64 0)) #6
  br label %end

sw.bb5:                                           ; preds = %while.cond
  %call6 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb7:                                           ; preds = %while.cond
  br label %while.cond.backedge

sw.bb8:                                           ; preds = %while.cond
  br label %while.cond.backedge

sw.bb9:                                           ; preds = %while.cond
  %call10 = tail call i32 @opt_int_arg() #6
  store i32 %call10, i32* getelementptr inbounds (%struct.verify_options_st, %struct.verify_options_st* @verify_args, i64 0, i32 0), align 4, !tbaa !9
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call11 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.59, i64 0, i64 0), i8* noundef %call1, i32 noundef %call10) #6
  br label %while.cond.backedge

sw.bb12:                                          ; preds = %while.cond
  %call13 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb14:                                          ; preds = %while.cond
  %call15 = tail call i8* @opt_arg() #6
  %call16 = tail call i32 @set_nameopt(i8* noundef %call15) #6
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %end, label %while.cond.backedge

sw.bb17:                                          ; preds = %while.cond
  %call18 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb19:                                          ; preds = %while.cond
  %call20 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb21:                                          ; preds = %while.cond
  %call22 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb23:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb24:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb25:                                          ; preds = %while.cond
  %call26 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb27:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb28:                                          ; preds = %while.cond
  %call29 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb30:                                          ; preds = %while.cond
  %call31 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb32:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb33:                                          ; preds = %while.cond
  %call34 = tail call i32 @opt_int_arg() #6
  br label %while.cond.backedge

sw.bb35:                                          ; preds = %while.cond
  %call36 = tail call i8* @opt_arg() #6
  %call37 = tail call i64 @strlen(i8* noundef %call36) #7
  %3 = add i64 %call37, -8175
  %cmp38 = icmp ult i64 %3, -8193
  br i1 %cmp38, label %if.then39, label %while.cond.backedge

if.then39:                                        ; preds = %sw.bb35
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call40 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.60, i64 0, i64 0), i8* noundef %call1) #6
  br label %end

sw.bb42:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb43:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb44:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb45:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb46:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb48:                                          ; preds = %while.cond, %while.cond, %while.cond
  %call49 = tail call i32 @opt_provider(i32 noundef %call2) #6
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %end, label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call53 = tail call i32 @opt_num_rest() #6
  %cmp54.not = icmp eq i32 %call53, 0
  br i1 %cmp54.not, label %if.end56, label %opthelp

if.end56:                                         ; preds = %while.end
  %cmp57 = icmp eq i8* %cipher.0, null
  br i1 %cmp57, label %if.then58, label %if.end60

if.then58:                                        ; preds = %if.end56
  %call59 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i64 0, i64 0)) #6
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end56
  %cipher.2 = phi i8* [ %call59, %if.then58 ], [ %cipher.0, %if.end56 ]
  %call61 = tail call %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef %call) #6
  %cmp62 = icmp eq %struct.ssl_ctx_st* %call61, null
  br i1 %cmp62, label %end, label %if.end64

if.end64:                                         ; preds = %if.end60
  tail call void @SSL_CTX_set_quiet_shutdown(%struct.ssl_ctx_st* noundef nonnull %call61, i32 noundef 1) #6
  %5 = zext i32 %min_version.0 to i64
  %call65 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef nonnull %call61, i32 noundef 123, i64 noundef %5, i8* noundef null) #6
  %cmp66 = icmp eq i64 %call65, 0
  br i1 %cmp66, label %end, label %if.end69

if.end69:                                         ; preds = %if.end64
  %6 = zext i32 %max_version.0 to i64
  %call71 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef nonnull %call61, i32 noundef 124, i64 noundef %6, i8* noundef null) #6
  %cmp72 = icmp eq i64 %call71, 0
  br i1 %cmp72, label %end, label %if.end75

if.end75:                                         ; preds = %if.end69
  %tobool76.not = icmp eq i32 %st_bugs.0, 0
  br i1 %tobool76.not, label %if.end79, label %if.then77

if.then77:                                        ; preds = %if.end75
  %call78 = tail call i64 @SSL_CTX_set_options(%struct.ssl_ctx_st* noundef nonnull %call61, i64 noundef 2147485776) #6
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %if.end75
  %cmp80.not = icmp eq i8* %cipher.2, null
  br i1 %cmp80.not, label %if.end85, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end79
  %call82 = tail call i32 @SSL_CTX_set_cipher_list(%struct.ssl_ctx_st* noundef nonnull %call61, i8* noundef nonnull %cipher.2) #6
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %end, label %if.end85

if.end85:                                         ; preds = %land.lhs.true, %if.end79
  %cmp86.not = icmp eq i8* %ciphersuites.0, null
  br i1 %cmp86.not, label %if.end92, label %land.lhs.true88

land.lhs.true88:                                  ; preds = %if.end85
  %call89 = tail call i32 @SSL_CTX_set_ciphersuites(%struct.ssl_ctx_st* noundef nonnull %call61, i8* noundef nonnull %ciphersuites.0) #6
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %end, label %if.end92

if.end92:                                         ; preds = %land.lhs.true88, %if.end85
  %call93 = tail call i32 @set_cert_stuff(%struct.ssl_ctx_st* noundef nonnull %call61, i8* noundef %certfile.0, i8* noundef %keyfile.0) #6
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %end, label %if.end96

if.end96:                                         ; preds = %if.end92
  %call97 = tail call i32 @ctx_set_verify_locations(%struct.ssl_ctx_st* noundef nonnull %call61, i8* noundef %CAfile.0, i32 noundef %noCAfile.0, i8* noundef %CApath.0, i32 noundef %noCApath.0, i8* noundef %CAstore.0, i32 noundef %noCAstore.0) #6
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.end96
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  tail call void @ERR_print_errors(%struct.bio_st* noundef %7) #6
  br label %end

if.end100:                                        ; preds = %if.end96
  %and = and i32 %perform.0, 1
  %tobool101.not = icmp eq i32 %and, 0
  br i1 %tobool101.not, label %next, label %if.end103

if.end103:                                        ; preds = %if.end100
  %call104 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.62, i64 0, i64 0), i32 noundef %maxtime.0) #6
  %call105 = tail call i64 @time(i64* noundef null) #6
  %conv106 = sext i32 %maxtime.0 to i64
  %add107 = add nsw i64 %call105, %conv106
  %call108 = tail call fastcc double @tm_Time_F(i32 noundef 0) #8
  %call109510 = call i64 @time(i64* noundef null) #6
  %cmp110511 = icmp slt i64 %add107, %call109510
  br i1 %cmp110511, label %for.end, label %if.end113.lr.ph

if.end113.lr.ph:                                  ; preds = %if.end103
  %cmp119.not = icmp eq i8* %www_path.0, null
  br label %if.end113

if.end113:                                        ; preds = %if.end113.lr.ph, %if.end158
  %bytes_read.0513 = phi i64 [ 0, %if.end113.lr.ph ], [ %bytes_read.2, %if.end158 ]
  %nConn.0512 = phi i32 [ 0, %if.end113.lr.ph ], [ %add143, %if.end158 ]
  %call114 = call fastcc %struct.ssl_st* @doConnection(%struct.ssl_st* noundef null, i8* noundef %host.0, %struct.ssl_ctx_st* noundef %call61) #8
  %cmp115 = icmp eq %struct.ssl_st* %call114, null
  br i1 %cmp115, label %end, label %if.end118

if.end118:                                        ; preds = %if.end113
  br i1 %cmp119.not, label %if.end140, label %if.then121

if.then121:                                       ; preds = %if.end118
  %call122 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 8192, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @fmt_http_get_cmd, i64 0, i64 0), i8* noundef nonnull %www_path.0) #6
  %cmp123 = icmp slt i32 %call122, 1
  br i1 %cmp123, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then121
  %call126 = call i32 @SSL_write(%struct.ssl_st* noundef nonnull %call114, i8* noundef nonnull %0, i32 noundef %call122) #6
  %cmp127 = icmp slt i32 %call126, 1
  br i1 %cmp127, label %end, label %while.cond131

while.cond131:                                    ; preds = %lor.lhs.false, %while.cond131
  %bytes_read.1 = phi i64 [ %add138, %while.cond131 ], [ %bytes_read.0513, %lor.lhs.false ]
  %call133 = call i32 @SSL_read(%struct.ssl_st* noundef nonnull %call114, i8* noundef nonnull %0, i32 noundef 8192) #6
  %cmp134 = icmp sgt i32 %call133, 0
  %conv137433 = zext i32 %call133 to i64
  %add138 = add nsw i64 %bytes_read.1, %conv137433
  br i1 %cmp134, label %while.cond131, label %if.end140, !llvm.loop !12

if.end140:                                        ; preds = %while.cond131, %if.end118
  %bytes_read.2 = phi i64 [ %bytes_read.0513, %if.end118 ], [ %bytes_read.1, %while.cond131 ]
  call void @SSL_set_shutdown(%struct.ssl_st* noundef nonnull %call114, i32 noundef 3) #6
  %call141 = call i32 @SSL_get_fd(%struct.ssl_st* noundef nonnull %call114) #6
  %call142 = call i32 @BIO_closesocket(i32 noundef %call141) #6
  %add143 = add nuw nsw i32 %nConn.0512, 1
  %call144 = call i32 @SSL_session_reused(%struct.ssl_st* noundef nonnull %call114) #6
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.else, label %if.end158

if.else:                                          ; preds = %if.end140
  %call147 = call i32 @SSL_version(%struct.ssl_st* noundef nonnull %call114) #6
  %switch.selectcmp = icmp eq i32 %call147, 768
  %switch.select = select i1 %switch.selectcmp, i32 51, i32 42
  %switch.selectcmp426 = icmp eq i32 %call147, 769
  %switch.select427 = select i1 %switch.selectcmp426, i32 116, i32 %switch.select
  br label %if.end158

if.end158:                                        ; preds = %if.else, %if.end140
  %ver.0 = phi i32 [ 114, %if.end140 ], [ %switch.select427, %if.else ]
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %call159 = call i32 @fputc(i32 noundef %ver.0, %struct._IO_FILE* noundef %8) #6
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %call160 = call i32 @fflush(%struct._IO_FILE* noundef %9) #6
  call void @SSL_free(%struct.ssl_st* noundef nonnull %call114) #6
  %call109 = call i64 @time(i64* noundef null) #6
  %cmp110 = icmp slt i64 %add107, %call109
  br i1 %cmp110, label %for.end, label %if.end113

for.end:                                          ; preds = %if.end158, %if.end103
  %nConn.0.lcssa = phi i32 [ 0, %if.end103 ], [ %add143, %if.end158 ]
  %bytes_read.0.lcssa = phi i64 [ 0, %if.end103 ], [ %bytes_read.2, %if.end158 ]
  %call161 = call fastcc double @tm_Time_F(i32 noundef 1) #8
  %add162 = fadd double %call161, 0.000000e+00
  %call163 = call i64 @time(i64* noundef null) #6
  %conv167 = sitofp i32 %nConn.0.lcssa to double
  %div = fdiv double %conv167, %add162
  %call168 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.63, i64 0, i64 0), i32 noundef %nConn.0.lcssa, double noundef %add162, double noundef %div, i64 noundef %bytes_read.0.lcssa) #6
  %call169 = call i64 @time(i64* noundef null) #6
  %add172 = sub i64 %call169, %call105
  %cmp173.not = icmp eq i32 %nConn.0.lcssa, 0
  br i1 %cmp173.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %for.end
  %conv175 = zext i32 %nConn.0.lcssa to i64
  %div176 = sdiv i64 %bytes_read.0.lcssa, %conv175
  br label %cond.end

cond.end:                                         ; preds = %for.end, %cond.true
  %cond = phi i64 [ %div176, %cond.true ], [ 0, %for.end ]
  %call177 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.64, i64 0, i64 0), i32 noundef %nConn.0.lcssa, i64 noundef %add172, i64 noundef %cond) #6
  br label %next

next:                                             ; preds = %if.end100, %cond.end
  %and178 = and i32 %perform.0, 2
  %tobool179.not = icmp eq i32 %and178, 0
  br i1 %tobool179.not, label %end, label %if.end181

if.end181:                                        ; preds = %next
  %call182 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.65, i64 0, i64 0)) #6
  %call183 = call fastcc %struct.ssl_st* @doConnection(%struct.ssl_st* noundef null, i8* noundef %host.0, %struct.ssl_ctx_st* noundef %call61) #8
  %cmp184 = icmp eq %struct.ssl_st* %call183, null
  br i1 %cmp184, label %if.then186, label %if.end188

if.then186:                                       ; preds = %if.end181
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call187 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.66, i64 0, i64 0)) #6
  br label %end

if.end188:                                        ; preds = %if.end181
  %cmp189.not = icmp eq i8* %www_path.0, null
  br i1 %cmp189.not, label %if.end210, label %if.then191

if.then191:                                       ; preds = %if.end188
  %call193 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 8192, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @fmt_http_get_cmd, i64 0, i64 0), i8* noundef nonnull %www_path.0) #6
  %cmp194 = icmp slt i32 %call193, 1
  br i1 %cmp194, label %end, label %lor.lhs.false196

lor.lhs.false196:                                 ; preds = %if.then191
  %call198 = call i32 @SSL_write(%struct.ssl_st* noundef nonnull %call183, i8* noundef nonnull %0, i32 noundef %call193) #6
  %cmp199 = icmp slt i32 %call198, 1
  br i1 %cmp199, label %end, label %while.cond203

while.cond203:                                    ; preds = %lor.lhs.false196, %while.cond203
  %call205 = call i32 @SSL_read(%struct.ssl_st* noundef nonnull %call183, i8* noundef nonnull %0, i32 noundef 8192) #6
  %cmp206 = icmp sgt i32 %call205, 0
  br i1 %cmp206, label %while.cond203, label %if.end210, !llvm.loop !13

if.end210:                                        ; preds = %while.cond203, %if.end188
  call void @SSL_set_shutdown(%struct.ssl_st* noundef nonnull %call183, i32 noundef 3) #6
  %call211 = call i32 @SSL_get_fd(%struct.ssl_st* noundef nonnull %call183) #6
  %cmp212 = icmp sgt i32 %call211, -1
  br i1 %cmp212, label %if.then214, label %if.end216

if.then214:                                       ; preds = %if.end210
  %call215 = call i32 @BIO_closesocket(i32 noundef %call211) #6
  br label %if.end216

if.end216:                                        ; preds = %if.then214, %if.end210
  %call217 = call i64 @time(i64* noundef null) #6
  %conv218 = sext i32 %maxtime.0 to i64
  %add219 = add nsw i64 %call217, %conv218
  %call220 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i64 0, i64 0)) #6
  %call221 = call fastcc double @tm_Time_F(i32 noundef 0) #8
  %call223515 = call i64 @time(i64* noundef null) #6
  %cmp224516 = icmp slt i64 %add219, %call223515
  br i1 %cmp224516, label %for.end282, label %if.end227

if.end227:                                        ; preds = %if.end216, %if.end279
  %bytes_read.3518 = phi i64 [ %bytes_read.5, %if.end279 ], [ 0, %if.end216 ]
  %nConn.1517 = phi i32 [ %add263, %if.end279 ], [ 0, %if.end216 ]
  %call228 = call fastcc %struct.ssl_st* @doConnection(%struct.ssl_st* noundef nonnull %call183, i8* noundef %host.0, %struct.ssl_ctx_st* noundef %call61) #8
  %cmp229 = icmp eq %struct.ssl_st* %call228, null
  br i1 %cmp229, label %end, label %if.end232

if.end232:                                        ; preds = %if.end227
  br i1 %cmp189.not, label %if.end256, label %if.then235

if.then235:                                       ; preds = %if.end232
  %call237 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 8192, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @fmt_http_get_cmd, i64 0, i64 0), i8* noundef nonnull %www_path.0) #6
  %cmp238 = icmp slt i32 %call237, 1
  br i1 %cmp238, label %end, label %lor.lhs.false240

lor.lhs.false240:                                 ; preds = %if.then235
  %call242 = call i32 @SSL_write(%struct.ssl_st* noundef nonnull %call183, i8* noundef nonnull %0, i32 noundef %call237) #6
  %cmp243 = icmp slt i32 %call242, 1
  br i1 %cmp243, label %end, label %while.cond247

while.cond247:                                    ; preds = %lor.lhs.false240, %while.cond247
  %bytes_read.4 = phi i64 [ %add254, %while.cond247 ], [ %bytes_read.3518, %lor.lhs.false240 ]
  %call249 = call i32 @SSL_read(%struct.ssl_st* noundef nonnull %call183, i8* noundef nonnull %0, i32 noundef 8192) #6
  %cmp250 = icmp sgt i32 %call249, 0
  %conv253432 = zext i32 %call249 to i64
  %add254 = add nsw i64 %bytes_read.4, %conv253432
  br i1 %cmp250, label %while.cond247, label %if.end256, !llvm.loop !14

if.end256:                                        ; preds = %while.cond247, %if.end232
  %bytes_read.5 = phi i64 [ %bytes_read.3518, %if.end232 ], [ %bytes_read.4, %while.cond247 ]
  call void @SSL_set_shutdown(%struct.ssl_st* noundef nonnull %call183, i32 noundef 3) #6
  %call257 = call i32 @SSL_get_fd(%struct.ssl_st* noundef nonnull %call183) #6
  %cmp258 = icmp sgt i32 %call257, -1
  br i1 %cmp258, label %if.then260, label %if.end262

if.then260:                                       ; preds = %if.end256
  %call261 = call i32 @BIO_closesocket(i32 noundef %call257) #6
  br label %if.end262

if.end262:                                        ; preds = %if.then260, %if.end256
  %add263 = add nuw nsw i32 %nConn.1517, 1
  %call264 = call i32 @SSL_session_reused(%struct.ssl_st* noundef nonnull %call183) #6
  %tobool265.not = icmp eq i32 %call264, 0
  br i1 %tobool265.not, label %if.else267, label %if.end279

if.else267:                                       ; preds = %if.end262
  %call268 = call i32 @SSL_version(%struct.ssl_st* noundef nonnull %call183) #6
  %switch.selectcmp428 = icmp eq i32 %call268, 768
  %switch.select429 = select i1 %switch.selectcmp428, i32 51, i32 42
  %switch.selectcmp430 = icmp eq i32 %call268, 769
  %switch.select431 = select i1 %switch.selectcmp430, i32 116, i32 %switch.select429
  br label %if.end279

if.end279:                                        ; preds = %if.else267, %if.end262
  %ver.1 = phi i32 [ 114, %if.end262 ], [ %switch.select431, %if.else267 ]
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %call280 = call i32 @fputc(i32 noundef %ver.1, %struct._IO_FILE* noundef %11) #6
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %call281 = call i32 @fflush(%struct._IO_FILE* noundef %12) #6
  %call223 = call i64 @time(i64* noundef null) #6
  %cmp224 = icmp slt i64 %add219, %call223
  br i1 %cmp224, label %for.end282, label %if.end227

for.end282:                                       ; preds = %if.end279, %if.end216
  %nConn.1.lcssa = phi i32 [ 0, %if.end216 ], [ %add263, %if.end279 ]
  %bytes_read.3.lcssa = phi i64 [ 0, %if.end216 ], [ %bytes_read.5, %if.end279 ]
  %call283 = call fastcc double @tm_Time_F(i32 noundef 1) #8
  %add284 = fadd double %call283, 0.000000e+00
  %conv285 = sitofp i32 %nConn.1.lcssa to double
  %div286 = fdiv double %conv285, %add284
  %call287 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.63, i64 0, i64 0), i32 noundef %nConn.1.lcssa, double noundef %add284, double noundef %div286, i64 noundef %bytes_read.3.lcssa) #6
  %cmp288.not = icmp eq i32 %nConn.1.lcssa, 0
  %call299 = call i64 @time(i64* noundef null) #6
  %add302 = sub i64 %call299, %call217
  br i1 %cmp288.not, label %if.else298, label %if.then290

if.then290:                                       ; preds = %for.end282
  %conv295 = zext i32 %nConn.1.lcssa to i64
  %div296 = sdiv i64 %bytes_read.3.lcssa, %conv295
  %call297 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.64, i64 0, i64 0), i32 noundef %nConn.1.lcssa, i64 noundef %add302, i64 noundef %div296) #6
  br label %end

if.else298:                                       ; preds = %for.end282
  %call303 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.68, i64 0, i64 0), i64 noundef %add302) #6
  br label %end

end:                                              ; preds = %sw.bb48, %sw.bb14, %if.then121, %lor.lhs.false, %if.end113, %if.then235, %lor.lhs.false240, %if.end227, %if.then290, %if.else298, %if.then191, %lor.lhs.false196, %next, %if.end92, %land.lhs.true88, %land.lhs.true, %if.end69, %if.end64, %if.end60, %if.then186, %if.then99, %if.then39, %sw.bb4, %opthelp
  %ctx.0 = phi %struct.ssl_ctx_st* [ null, %if.then39 ], [ null, %sw.bb4 ], [ null, %opthelp ], [ null, %if.end60 ], [ %call61, %if.end64 ], [ %call61, %if.end69 ], [ %call61, %if.then186 ], [ %call61, %if.then191 ], [ %call61, %lor.lhs.false196 ], [ %call61, %next ], [ %call61, %if.then99 ], [ %call61, %if.end92 ], [ %call61, %land.lhs.true88 ], [ %call61, %land.lhs.true ], [ %call61, %if.else298 ], [ %call61, %if.then290 ], [ %call61, %if.end227 ], [ %call61, %lor.lhs.false240 ], [ %call61, %if.then235 ], [ %call61, %if.end113 ], [ %call61, %lor.lhs.false ], [ %call61, %if.then121 ], [ null, %sw.bb14 ], [ null, %sw.bb48 ]
  %ret.0 = phi i32 [ 1, %if.then39 ], [ 0, %sw.bb4 ], [ 1, %opthelp ], [ 1, %if.end60 ], [ 1, %if.end64 ], [ 1, %if.end69 ], [ 1, %if.then186 ], [ 1, %if.then191 ], [ 1, %lor.lhs.false196 ], [ 1, %next ], [ 1, %if.then99 ], [ 1, %if.end92 ], [ 1, %land.lhs.true88 ], [ 1, %land.lhs.true ], [ 0, %if.else298 ], [ 0, %if.then290 ], [ 1, %if.end227 ], [ 1, %lor.lhs.false240 ], [ 1, %if.then235 ], [ 1, %if.end113 ], [ 1, %lor.lhs.false ], [ 1, %if.then121 ], [ 1, %sw.bb14 ], [ 1, %sw.bb48 ]
  %scon.2 = phi %struct.ssl_st* [ null, %if.then39 ], [ null, %sw.bb4 ], [ null, %opthelp ], [ null, %if.end60 ], [ null, %if.end64 ], [ null, %if.end69 ], [ null, %if.then186 ], [ %call183, %if.then191 ], [ %call183, %lor.lhs.false196 ], [ null, %next ], [ null, %if.then99 ], [ null, %if.end92 ], [ null, %land.lhs.true88 ], [ null, %land.lhs.true ], [ %call183, %if.else298 ], [ %call183, %if.then290 ], [ %call183, %if.end227 ], [ %call183, %lor.lhs.false240 ], [ %call183, %if.then235 ], [ %call114, %if.then121 ], [ %call114, %lor.lhs.false ], [ null, %if.end113 ], [ null, %sw.bb14 ], [ null, %sw.bb48 ]
  call void @SSL_free(%struct.ssl_st* noundef %scon.2) #6
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %ctx.0) #6
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %0) #5
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local %struct.ssl_method_st* @TLS_client_method() local_unnamed_addr #2

declare dso_local i8* @opt_init(i32 noundef, i8** noundef, %struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_next() local_unnamed_addr #2

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local void @opt_help(%struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i8* @opt_arg() local_unnamed_addr #2

declare dso_local i32 @opt_int_arg() local_unnamed_addr #2

declare dso_local i32 @set_nameopt(i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #3

declare dso_local i32 @opt_provider(i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_num_rest() local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8* noundef) local_unnamed_addr #4

declare dso_local %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef) local_unnamed_addr #2

declare dso_local void @SSL_CTX_set_quiet_shutdown(%struct.ssl_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i64 @SSL_CTX_set_options(%struct.ssl_ctx_st* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_CTX_set_cipher_list(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_CTX_set_ciphersuites(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @set_cert_stuff(%struct.ssl_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @ctx_set_verify_locations(%struct.ssl_ctx_st* noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc double @tm_Time_F(i32 noundef %s) unnamed_addr #0 {
entry:
  %call = tail call double @app_tminterval(i32 noundef %s, i32 noundef 1) #6
  ret double %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ssl_st* @doConnection(%struct.ssl_st* noundef %scon, i8* noundef %host, %struct.ssl_ctx_st* noundef %ctx) unnamed_addr #0 {
entry:
  %no_linger = alloca %struct.linger, align 4
  %call = tail call %struct.bio_method_st* @BIO_s_connect() #6
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #6
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 100, i64 noundef 0, i8* noundef %host) #6
  %cmp3 = icmp slt i64 %call2, 1
  br i1 %cmp3, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call4 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 155, i64 noundef 16, i8* noundef null) #6
  %cmp5 = icmp slt i64 %call4, 1
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  %call7 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #6
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %cmp9 = icmp eq %struct.ssl_st* %scon, null
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end8
  %call11 = tail call %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef %ctx) #6
  %cmp12 = icmp eq %struct.ssl_st* %call11, null
  br i1 %cmp12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.then10
  %call14 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #6
  br label %cleanup

if.else:                                          ; preds = %if.end8
  tail call void @SSL_set_connect_state(%struct.ssl_st* noundef nonnull %scon) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then10, %if.else
  %serverCon.0 = phi %struct.ssl_st* [ %call11, %if.then10 ], [ %scon, %if.else ]
  tail call void @SSL_set_bio(%struct.ssl_st* noundef nonnull %serverCon.0, %struct.bio_st* noundef nonnull %call1, %struct.bio_st* noundef nonnull %call1) #6
  %call17 = tail call i32 @SSL_connect(%struct.ssl_st* noundef nonnull %serverCon.0) #6
  %cmp18 = icmp slt i32 %call17, 1
  br i1 %cmp18, label %if.then19, label %if.end31

if.then19:                                        ; preds = %if.end16
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call20 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i64 0, i64 0)) #6
  %1 = load i32, i32* getelementptr inbounds (%struct.verify_options_st, %struct.verify_options_st* @verify_args, i64 0, i32 2), align 4, !tbaa !15
  %cmp21.not = icmp eq i32 %1, 0
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  br i1 %cmp21.not, label %if.else25, label %if.then22

if.then22:                                        ; preds = %if.then19
  %conv = sext i32 %1 to i64
  %call23 = tail call i8* @X509_verify_cert_error_string(i64 noundef %conv) #6
  %call24 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i64 0, i64 0), i8* noundef %call23) #6
  br label %if.end26

if.else25:                                        ; preds = %if.then19
  tail call void @ERR_print_errors(%struct.bio_st* noundef %2) #6
  br label %if.end26

if.end26:                                         ; preds = %if.else25, %if.then22
  br i1 %cmp9, label %if.then29, label %cleanup

if.then29:                                        ; preds = %if.end26
  tail call void @SSL_free(%struct.ssl_st* noundef nonnull %serverCon.0) #6
  br label %cleanup

if.end31:                                         ; preds = %if.end16
  %3 = bitcast %struct.linger* %no_linger to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5
  %l_onoff = getelementptr inbounds %struct.linger, %struct.linger* %no_linger, i64 0, i32 0
  store i32 1, i32* %l_onoff, align 4, !tbaa !16
  %l_linger = getelementptr inbounds %struct.linger, %struct.linger* %no_linger, i64 0, i32 1
  store i32 0, i32* %l_linger, align 4, !tbaa !18
  %call32 = tail call i32 @SSL_get_fd(%struct.ssl_st* noundef nonnull %serverCon.0) #6
  %cmp33 = icmp sgt i32 %call32, -1
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end31
  %call36 = call i32 @setsockopt(i32 noundef %call32, i32 noundef 1, i32 noundef 13, i8* noundef nonnull %3, i32 noundef 8) #6
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end31
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then29, %entry, %if.end37, %if.then13, %if.then6
  %retval.0 = phi %struct.ssl_st* [ null, %if.then6 ], [ null, %if.then13 ], [ %serverCon.0, %if.end37 ], [ null, %entry ], [ null, %if.then29 ], [ null, %if.end26 ]
  ret %struct.ssl_st* %retval.0
}

declare dso_local i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local i32 @SSL_write(%struct.ssl_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_read(%struct.ssl_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @SSL_set_shutdown(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_closesocket(i32 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_get_fd(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_session_reused(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_version(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @fputc(i32 noundef, %struct._IO_FILE* noundef) local_unnamed_addr #2

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) local_unnamed_addr #2

declare dso_local void @SSL_free(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local void @SSL_CTX_free(%struct.ssl_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local double @app_tminterval(i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_method_st* @BIO_s_connect() local_unnamed_addr #2

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @SSL_set_connect_state(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local void @SSL_set_bio(%struct.ssl_st* noundef, %struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_connect(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i8* @X509_verify_cert_error_string(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"verify_options_st", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!11 = !{!"int", !7, i64 0}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4}
!14 = distinct !{!14, !4}
!15 = !{!10, !11, i64 8}
!16 = !{!17, !11, i64 0}
!17 = !{!"linger", !11, i64 0, !11, i64 4}
!18 = !{!17, !11, i64 4}
