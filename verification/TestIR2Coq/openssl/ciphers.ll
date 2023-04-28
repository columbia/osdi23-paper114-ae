; ModuleID = 'apps/ciphers.c'
source_filename = "apps/ciphers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.ssl_method_st = type opaque
%struct.ssl_ctx_st = type opaque
%struct.ssl_st = type opaque
%struct.stack_st_SSL_CIPHER = type opaque
%struct.stack_st = type opaque
%struct.ssl_cipher_st = type opaque

@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [30 x i8] c"Usage: %s [options] [cipher]\0A\00", align 1
@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Verbose listing of the SSL/TLS ciphers\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Even more verbose\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"stdname\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Show standard cipher names\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"convert\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"Convert standard name into OpenSSL name\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Cipher specification options:\0A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"Only supported ciphers\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"tls1\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"Ciphers compatible with TLS1\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"tls1_1\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"Ciphers compatible with TLS1.1\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"tls1_2\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"Ciphers compatible with TLS1.2\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"tls1_3\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"Ciphers compatible with TLS1.3\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"psk\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"Include ciphersuites requiring PSK\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"srp\00", align 1
@.str.27 = private unnamed_addr constant [48 x i8] c"(deprecated) Include ciphersuites requiring SRP\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"ciphersuites\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"Configure the TLSv1.3 ciphersuites to use\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.32 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.36 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@OPT_PARAM_STR = external dso_local constant [0 x i8], align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"Parameters:\0A\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"cipher\00", align 1
@.str.39 = private unnamed_addr constant [35 x i8] c"Cipher string to decode (optional)\00", align 1
@ciphers_options = dso_local constant [24 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i32 12, i32 45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i32 13, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 2, i32 45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 3, i32 115, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i32 14, i32 45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 5, i32 45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i32 6, i32 45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i32 7, i32 45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i32 8, i32 45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i32 9, i32 45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.25, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i32 10, i32 45, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.27, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i32 11, i32 115, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.29, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.32, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.34, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.36, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_PARAM_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.39, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.40 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@bio_out = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.41 = private unnamed_addr constant [25 x i8] c"OpenSSL cipher name: %s\0A\00", align 1
@.str.42 = private unnamed_addr constant [36 x i8] c"Error setting TLSv1.3 ciphersuites\0A\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"Error in cipher list\0A\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"          0x%02X,0x%02X - \00", align 1
@.str.48 = private unnamed_addr constant [31 x i8] c"0x%02X,0x%02X,0x%02X,0x%02X - \00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"%-45s - \00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ciphers_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %buf = alloca [512 x i8], align 16
  %call = tail call %struct.ssl_method_st* @TLS_server_method() #4
  %0 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %0) #5
  %call1 = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([24 x %struct.options_st], [24 x %struct.options_st]* @ciphers_options, i64 0, i64 0)) #4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %psk.0 = phi i32 [ 0, %entry ], [ %psk.0.be, %while.cond.backedge ]
  %srp.0 = phi i32 [ 0, %entry ], [ %srp.0.be, %while.cond.backedge ]
  %stdname.0 = phi i32 [ 0, %entry ], [ %stdname.0.be, %while.cond.backedge ]
  %use_supported.0 = phi i32 [ 0, %entry ], [ %use_supported.0.be, %while.cond.backedge ]
  %convert.0 = phi i8* [ null, %entry ], [ %convert.0.be, %while.cond.backedge ]
  %ciphersuites.0 = phi i8* [ null, %entry ], [ %ciphersuites.0.be, %while.cond.backedge ]
  %Verbose.0 = phi i32 [ 0, %entry ], [ %Verbose.0.be, %while.cond.backedge ]
  %min_version.0 = phi i32 [ 0, %entry ], [ %min_version.0.be, %while.cond.backedge ]
  %max_version.0 = phi i32 [ 0, %entry ], [ %max_version.0.be, %while.cond.backedge ]
  %verbose.0 = phi i32 [ 0, %entry ], [ %verbose.0.be, %while.cond.backedge ]
  %call2 = tail call i32 @opt_next() #4
  switch i32 %call2, label %while.cond.backedge [
    i32 0, label %while.end
    i32 1601, label %sw.bb21
    i32 -1, label %opthelp
    i32 1, label %sw.bb4
    i32 12, label %sw.bb5
    i32 13, label %sw.bb6
    i32 14, label %sw.bb7
    i32 2, label %sw.bb8
    i32 3, label %sw.bb9
    i32 4, label %sw.bb11
    i32 5, label %sw.bb12
    i32 6, label %sw.bb13
    i32 7, label %sw.bb14
    i32 8, label %sw.bb15
    i32 9, label %sw.bb16
    i32 10, label %sw.bb17
    i32 11, label %sw.bb18
    i32 1603, label %sw.bb21
    i32 1602, label %sw.bb21
  ]

while.cond.backedge:                              ; preds = %while.cond, %sw.bb21, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5
  %psk.0.be = phi i32 [ %psk.0, %sw.bb21 ], [ %psk.0, %sw.bb18 ], [ %psk.0, %sw.bb17 ], [ 1, %sw.bb16 ], [ %psk.0, %sw.bb15 ], [ %psk.0, %sw.bb14 ], [ %psk.0, %sw.bb13 ], [ %psk.0, %sw.bb12 ], [ %psk.0, %sw.bb11 ], [ %psk.0, %sw.bb9 ], [ %psk.0, %sw.bb8 ], [ %psk.0, %sw.bb7 ], [ %psk.0, %sw.bb6 ], [ %psk.0, %sw.bb5 ], [ %psk.0, %while.cond ]
  %srp.0.be = phi i32 [ %srp.0, %sw.bb21 ], [ %srp.0, %sw.bb18 ], [ 1, %sw.bb17 ], [ %srp.0, %sw.bb16 ], [ %srp.0, %sw.bb15 ], [ %srp.0, %sw.bb14 ], [ %srp.0, %sw.bb13 ], [ %srp.0, %sw.bb12 ], [ %srp.0, %sw.bb11 ], [ %srp.0, %sw.bb9 ], [ %srp.0, %sw.bb8 ], [ %srp.0, %sw.bb7 ], [ %srp.0, %sw.bb6 ], [ %srp.0, %sw.bb5 ], [ %srp.0, %while.cond ]
  %stdname.0.be = phi i32 [ %stdname.0, %sw.bb21 ], [ %stdname.0, %sw.bb18 ], [ %stdname.0, %sw.bb17 ], [ %stdname.0, %sw.bb16 ], [ %stdname.0, %sw.bb15 ], [ %stdname.0, %sw.bb14 ], [ %stdname.0, %sw.bb13 ], [ %stdname.0, %sw.bb12 ], [ %stdname.0, %sw.bb11 ], [ %stdname.0, %sw.bb9 ], [ 1, %sw.bb8 ], [ %stdname.0, %sw.bb7 ], [ %stdname.0, %sw.bb6 ], [ %stdname.0, %sw.bb5 ], [ %stdname.0, %while.cond ]
  %use_supported.0.be = phi i32 [ %use_supported.0, %sw.bb21 ], [ %use_supported.0, %sw.bb18 ], [ %use_supported.0, %sw.bb17 ], [ %use_supported.0, %sw.bb16 ], [ %use_supported.0, %sw.bb15 ], [ %use_supported.0, %sw.bb14 ], [ %use_supported.0, %sw.bb13 ], [ %use_supported.0, %sw.bb12 ], [ %use_supported.0, %sw.bb11 ], [ %use_supported.0, %sw.bb9 ], [ %use_supported.0, %sw.bb8 ], [ 1, %sw.bb7 ], [ %use_supported.0, %sw.bb6 ], [ %use_supported.0, %sw.bb5 ], [ %use_supported.0, %while.cond ]
  %convert.0.be = phi i8* [ %convert.0, %sw.bb21 ], [ %convert.0, %sw.bb18 ], [ %convert.0, %sw.bb17 ], [ %convert.0, %sw.bb16 ], [ %convert.0, %sw.bb15 ], [ %convert.0, %sw.bb14 ], [ %convert.0, %sw.bb13 ], [ %convert.0, %sw.bb12 ], [ %convert.0, %sw.bb11 ], [ %call10, %sw.bb9 ], [ %convert.0, %sw.bb8 ], [ %convert.0, %sw.bb7 ], [ %convert.0, %sw.bb6 ], [ %convert.0, %sw.bb5 ], [ %convert.0, %while.cond ]
  %ciphersuites.0.be = phi i8* [ %ciphersuites.0, %sw.bb21 ], [ %call19, %sw.bb18 ], [ %ciphersuites.0, %sw.bb17 ], [ %ciphersuites.0, %sw.bb16 ], [ %ciphersuites.0, %sw.bb15 ], [ %ciphersuites.0, %sw.bb14 ], [ %ciphersuites.0, %sw.bb13 ], [ %ciphersuites.0, %sw.bb12 ], [ %ciphersuites.0, %sw.bb11 ], [ %ciphersuites.0, %sw.bb9 ], [ %ciphersuites.0, %sw.bb8 ], [ %ciphersuites.0, %sw.bb7 ], [ %ciphersuites.0, %sw.bb6 ], [ %ciphersuites.0, %sw.bb5 ], [ %ciphersuites.0, %while.cond ]
  %Verbose.0.be = phi i32 [ %Verbose.0, %sw.bb21 ], [ %Verbose.0, %sw.bb18 ], [ %Verbose.0, %sw.bb17 ], [ %Verbose.0, %sw.bb16 ], [ %Verbose.0, %sw.bb15 ], [ %Verbose.0, %sw.bb14 ], [ %Verbose.0, %sw.bb13 ], [ %Verbose.0, %sw.bb12 ], [ %Verbose.0, %sw.bb11 ], [ %Verbose.0, %sw.bb9 ], [ %Verbose.0, %sw.bb8 ], [ %Verbose.0, %sw.bb7 ], [ 1, %sw.bb6 ], [ %Verbose.0, %sw.bb5 ], [ %Verbose.0, %while.cond ]
  %min_version.0.be = phi i32 [ %min_version.0, %sw.bb21 ], [ %min_version.0, %sw.bb18 ], [ %min_version.0, %sw.bb17 ], [ %min_version.0, %sw.bb16 ], [ 772, %sw.bb15 ], [ 771, %sw.bb14 ], [ 770, %sw.bb13 ], [ 769, %sw.bb12 ], [ 768, %sw.bb11 ], [ %min_version.0, %sw.bb9 ], [ %min_version.0, %sw.bb8 ], [ %min_version.0, %sw.bb7 ], [ %min_version.0, %sw.bb6 ], [ %min_version.0, %sw.bb5 ], [ %min_version.0, %while.cond ]
  %max_version.0.be = phi i32 [ %max_version.0, %sw.bb21 ], [ %max_version.0, %sw.bb18 ], [ %max_version.0, %sw.bb17 ], [ %max_version.0, %sw.bb16 ], [ 772, %sw.bb15 ], [ 771, %sw.bb14 ], [ 770, %sw.bb13 ], [ 769, %sw.bb12 ], [ 768, %sw.bb11 ], [ %max_version.0, %sw.bb9 ], [ %max_version.0, %sw.bb8 ], [ %max_version.0, %sw.bb7 ], [ %max_version.0, %sw.bb6 ], [ %max_version.0, %sw.bb5 ], [ %max_version.0, %while.cond ]
  %verbose.0.be = phi i32 [ %verbose.0, %sw.bb21 ], [ %verbose.0, %sw.bb18 ], [ %verbose.0, %sw.bb17 ], [ %verbose.0, %sw.bb16 ], [ %verbose.0, %sw.bb15 ], [ %verbose.0, %sw.bb14 ], [ %verbose.0, %sw.bb13 ], [ %verbose.0, %sw.bb12 ], [ %verbose.0, %sw.bb11 ], [ %verbose.0, %sw.bb9 ], [ 1, %sw.bb8 ], [ %verbose.0, %sw.bb7 ], [ 1, %sw.bb6 ], [ 1, %sw.bb5 ], [ %verbose.0, %while.cond ]
  br label %while.cond, !llvm.loop !3

opthelp:                                          ; preds = %while.cond, %while.end
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.40, i64 0, i64 0), i8* noundef %call1) #4
  br label %end

sw.bb4:                                           ; preds = %while.cond
  tail call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([24 x %struct.options_st], [24 x %struct.options_st]* @ciphers_options, i64 0, i64 0)) #4
  br label %end

sw.bb5:                                           ; preds = %while.cond
  br label %while.cond.backedge

sw.bb6:                                           ; preds = %while.cond
  br label %while.cond.backedge

sw.bb7:                                           ; preds = %while.cond
  br label %while.cond.backedge

sw.bb8:                                           ; preds = %while.cond
  br label %while.cond.backedge

sw.bb9:                                           ; preds = %while.cond
  %call10 = tail call i8* @opt_arg() #4
  br label %while.cond.backedge

sw.bb11:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb12:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb13:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb14:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb15:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb16:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb17:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb18:                                          ; preds = %while.cond
  %call19 = tail call i8* @opt_arg() #4
  br label %while.cond.backedge

sw.bb21:                                          ; preds = %while.cond, %while.cond, %while.cond
  %call22 = tail call i32 @opt_provider(i32 noundef %call2) #4
  %tobool.not = icmp eq i32 %call22, 0
  br i1 %tobool.not, label %end, label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call23 = tail call i8** @opt_rest() #4
  %call24 = tail call i32 @opt_num_rest() #4
  switch i32 %call24, label %opthelp [
    i32 1, label %if.then26
    i32 0, label %if.end30
  ]

if.then26:                                        ; preds = %while.end
  %2 = load i8*, i8** %call23, align 8, !tbaa !5
  br label %if.end30

if.end30:                                         ; preds = %while.end, %if.then26
  %ciphers.0 = phi i8* [ %2, %if.then26 ], [ null, %while.end ]
  %cmp31.not = icmp eq i8* %convert.0, null
  br i1 %cmp31.not, label %if.end35, label %if.then32

if.then32:                                        ; preds = %if.end30
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call33 = tail call i8* @OPENSSL_cipher_name(i8* noundef nonnull %convert.0) #4
  %call34 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.41, i64 0, i64 0), i8* noundef %call33) #4
  br label %end

if.end35:                                         ; preds = %if.end30
  %call36 = tail call %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef %call) #4
  %cmp37 = icmp eq %struct.ssl_ctx_st* %call36, null
  br i1 %cmp37, label %err, label %if.end39

if.end39:                                         ; preds = %if.end35
  %4 = zext i32 %min_version.0 to i64
  %call40 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef nonnull %call36, i32 noundef 123, i64 noundef %4, i8* noundef null) #4
  %cmp41 = icmp eq i64 %call40, 0
  br i1 %cmp41, label %err, label %if.end44

if.end44:                                         ; preds = %if.end39
  %5 = zext i32 %max_version.0 to i64
  %call46 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef nonnull %call36, i32 noundef 124, i64 noundef %5, i8* noundef null) #4
  %cmp47 = icmp eq i64 %call46, 0
  br i1 %cmp47, label %err, label %if.end50

if.end50:                                         ; preds = %if.end44
  %tobool51.not = icmp eq i32 %psk.0, 0
  br i1 %tobool51.not, label %if.end53, label %if.then52

if.then52:                                        ; preds = %if.end50
  tail call void @SSL_CTX_set_psk_client_callback(%struct.ssl_ctx_st* noundef nonnull %call36, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)* noundef nonnull @dummy_psk) #4
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end50
  %tobool54.not = icmp eq i32 %srp.0, 0
  br i1 %tobool54.not, label %if.end56, label %if.then55

if.then55:                                        ; preds = %if.end53
  tail call void @set_up_dummy_srp(%struct.ssl_ctx_st* noundef nonnull %call36) #4
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end53
  %cmp57.not = icmp eq i8* %ciphersuites.0, null
  br i1 %cmp57.not, label %if.end63, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end56
  %call59 = tail call i32 @SSL_CTX_set_ciphersuites(%struct.ssl_ctx_st* noundef nonnull %call36, i8* noundef nonnull %ciphersuites.0) #4
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %err.sink.split, label %if.end63

if.end63:                                         ; preds = %land.lhs.true, %if.end56
  %cmp64.not = icmp eq i8* %ciphers.0, null
  br i1 %cmp64.not, label %if.end72, label %if.then66

if.then66:                                        ; preds = %if.end63
  %call67 = tail call i32 @SSL_CTX_set_cipher_list(%struct.ssl_ctx_st* noundef nonnull %call36, i8* noundef nonnull %ciphers.0) #4
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %err.sink.split, label %if.end72

if.end72:                                         ; preds = %if.then66, %if.end63
  %call73 = tail call %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef nonnull %call36) #4
  %cmp74 = icmp eq %struct.ssl_st* %call73, null
  br i1 %cmp74, label %err, label %if.end77

if.end77:                                         ; preds = %if.end72
  %tobool78.not = icmp eq i32 %use_supported.0, 0
  br i1 %tobool78.not, label %if.else81, label %if.then79

if.then79:                                        ; preds = %if.end77
  %call80 = tail call %struct.stack_st_SSL_CIPHER* @SSL_get1_supported_ciphers(%struct.ssl_st* noundef nonnull %call73) #4
  br label %if.end83

if.else81:                                        ; preds = %if.end77
  %call82 = tail call %struct.stack_st_SSL_CIPHER* @SSL_get_ciphers(%struct.ssl_st* noundef nonnull %call73) #4
  br label %if.end83

if.end83:                                         ; preds = %if.else81, %if.then79
  %sk.0 = phi %struct.stack_st_SSL_CIPHER* [ %call80, %if.then79 ], [ %call82, %if.else81 ]
  %tobool84.not = icmp eq i32 %verbose.0, 0
  br i1 %tobool84.not, label %for.cond.preheader, label %for.cond105.preheader

for.cond105.preheader:                            ; preds = %if.end83
  %call106 = call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %sk.0) #6
  %call107278 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call106) #4
  %cmp108279 = icmp sgt i32 %call107278, 0
  br i1 %cmp108279, label %for.body110.lr.ph, label %end

for.body110.lr.ph:                                ; preds = %for.cond105.preheader
  %tobool114.not = icmp eq i32 %Verbose.0, 0
  %tobool135.not = icmp eq i32 %stdname.0, 0
  br label %for.body110

for.cond.preheader:                               ; preds = %if.end83
  %call86 = tail call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %sk.0) #6
  %call87281 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call86) #4
  %cmp88282 = icmp sgt i32 %call87281, 0
  br i1 %cmp88282, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.0283 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %call91 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call86, i32 noundef %i.0283) #4
  %6 = bitcast i8* %call91 to %struct.ssl_cipher_st*
  %call92 = tail call i8* @SSL_CIPHER_get_name(%struct.ssl_cipher_st* noundef %6) #4
  %cmp93 = icmp eq i8* %call92, null
  br i1 %cmp93, label %for.end, label %if.end96

if.end96:                                         ; preds = %for.body
  %cmp97.not = icmp eq i32 %i.0283, 0
  br i1 %cmp97.not, label %for.inc, label %if.then99

if.then99:                                        ; preds = %if.end96
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call100 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0)) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end96, %if.then99
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call102 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), i8* noundef nonnull %call92) #4
  %inc = add nuw nsw i32 %i.0283, 1
  %call87 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call86) #4
  %cmp88 = icmp slt i32 %inc, %call87
  br i1 %cmp88, label %for.body, label %for.end, !llvm.loop !9

for.end:                                          ; preds = %for.inc, %for.body, %for.cond.preheader
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call103 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0)) #4
  br label %end

for.body110:                                      ; preds = %for.body110.lr.ph, %if.end143
  %i.1280 = phi i32 [ 0, %for.body110.lr.ph ], [ %inc147, %if.end143 ]
  %call113 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call106, i32 noundef %i.1280) #4
  %10 = bitcast i8* %call113 to %struct.ssl_cipher_st*
  br i1 %tobool114.not, label %if.end134, label %if.then115

if.then115:                                       ; preds = %for.body110
  %call116 = call i32 @SSL_CIPHER_get_id(%struct.ssl_cipher_st* noundef %10) #4
  %shr121 = lshr i32 %call116, 8
  %and122 = and i32 %shr121, 255
  %and124 = and i32 %call116, 255
  %11 = and i32 %call116, -16777216
  %cmp127 = icmp eq i32 %11, 50331648
  br i1 %cmp127, label %if.then129, label %if.else131

if.then129:                                       ; preds = %if.then115
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call130 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %12, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.47, i64 0, i64 0), i32 noundef %and122, i32 noundef %and124) #4
  br label %if.end134

if.else131:                                       ; preds = %if.then115
  %shr119 = lshr i32 %call116, 16
  %and = and i32 %shr119, 255
  %shr = lshr i32 %call116, 24
  %13 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call132 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %13, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.48, i64 0, i64 0), i32 noundef %shr, i32 noundef %and, i32 noundef %and122, i32 noundef %and124) #4
  br label %if.end134

if.end134:                                        ; preds = %if.then129, %if.else131, %for.body110
  br i1 %tobool135.not, label %if.end143, label %if.then136

if.then136:                                       ; preds = %if.end134
  %call137 = call i8* @SSL_CIPHER_standard_name(%struct.ssl_cipher_st* noundef %10) #4
  %cmp138 = icmp eq i8* %call137, null
  %spec.store.select = select i1 %cmp138, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i64 0, i64 0), i8* %call137
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call142 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %14, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0), i8* noundef %spec.store.select) #4
  br label %if.end143

if.end143:                                        ; preds = %if.then136, %if.end134
  %15 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call144 = call i8* @SSL_CIPHER_description(%struct.ssl_cipher_st* noundef %10, i8* noundef nonnull %0, i32 noundef 512) #4
  %call145 = call i32 @BIO_puts(%struct.bio_st* noundef %15, i8* noundef %call144) #4
  %inc147 = add nuw nsw i32 %i.1280, 1
  %call107 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call106) #4
  %cmp108 = icmp slt i32 %inc147, %call107
  br i1 %cmp108, label %for.body110, label %end, !llvm.loop !10

err.sink.split:                                   ; preds = %if.then66, %land.lhs.true
  %.sink350 = phi i8* [ getelementptr inbounds ([36 x i8], [36 x i8]* @.str.42, i64 0, i64 0), %land.lhs.true ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i64 0, i64 0), %if.then66 ]
  %16 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call70 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %16, i8* noundef %.sink350) #4
  br label %err

err:                                              ; preds = %err.sink.split, %if.end72, %if.end44, %if.end39, %if.end35
  %17 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  tail call void @ERR_print_errors(%struct.bio_st* noundef %17) #4
  br label %end

end:                                              ; preds = %sw.bb21, %if.end143, %for.cond105.preheader, %for.end, %err, %if.then32, %sw.bb4, %opthelp
  %ret.0 = phi i32 [ 0, %sw.bb4 ], [ 1, %opthelp ], [ 0, %if.then32 ], [ 1, %err ], [ 0, %for.end ], [ 0, %for.cond105.preheader ], [ 0, %if.end143 ], [ 1, %sw.bb21 ]
  %sk.1 = phi %struct.stack_st_SSL_CIPHER* [ null, %sw.bb4 ], [ null, %opthelp ], [ null, %if.then32 ], [ null, %err ], [ %sk.0, %for.end ], [ %sk.0, %for.cond105.preheader ], [ %sk.0, %if.end143 ], [ null, %sw.bb21 ]
  %ssl.1 = phi %struct.ssl_st* [ null, %sw.bb4 ], [ null, %opthelp ], [ null, %if.then32 ], [ null, %err ], [ %call73, %for.end ], [ %call73, %for.cond105.preheader ], [ %call73, %if.end143 ], [ null, %sw.bb21 ]
  %ctx.0 = phi %struct.ssl_ctx_st* [ null, %sw.bb4 ], [ null, %opthelp ], [ null, %if.then32 ], [ %call36, %err ], [ %call36, %for.end ], [ %call36, %for.cond105.preheader ], [ %call36, %if.end143 ], [ null, %sw.bb21 ]
  %tobool150.not = icmp eq i32 %use_supported.0, 0
  br i1 %tobool150.not, label %if.end153, label %if.then151

if.then151:                                       ; preds = %end
  %call152 = call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %sk.1) #6
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call152) #4
  br label %if.end153

if.end153:                                        ; preds = %if.then151, %end
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %ctx.0) #4
  call void @SSL_free(%struct.ssl_st* noundef %ssl.1) #4
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %0) #5
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local %struct.ssl_method_st* @TLS_server_method() local_unnamed_addr #2

declare dso_local i8* @opt_init(i32 noundef, i8** noundef, %struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_next() local_unnamed_addr #2

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local void @opt_help(%struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i8* @opt_arg() local_unnamed_addr #2

declare dso_local i32 @opt_provider(i32 noundef) local_unnamed_addr #2

declare dso_local i8** @opt_rest() local_unnamed_addr #2

declare dso_local i32 @opt_num_rest() local_unnamed_addr #2

declare dso_local i8* @OPENSSL_cipher_name(i8* noundef) local_unnamed_addr #2

declare dso_local %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef) local_unnamed_addr #2

declare dso_local i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @SSL_CTX_set_psk_client_callback(%struct.ssl_ctx_st* noundef, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @dummy_psk(%struct.ssl_st* nocapture noundef readnone %ssl, i8* nocapture noundef readnone %hint, i8* nocapture noundef readnone %identity, i32 noundef %max_identity_len, i8* nocapture noundef readnone %psk, i32 noundef %max_psk_len) #3 {
entry:
  ret i32 0
}

declare dso_local void @set_up_dummy_srp(%struct.ssl_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_CTX_set_ciphersuites(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_CTX_set_cipher_list(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef) local_unnamed_addr #2

declare dso_local %struct.stack_st_SSL_CIPHER* @SSL_get1_supported_ciphers(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local %struct.stack_st_SSL_CIPHER* @SSL_get_ciphers(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_SSL_CIPHER* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i8* @SSL_CIPHER_get_name(%struct.ssl_cipher_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i32 @SSL_CIPHER_get_id(%struct.ssl_cipher_st* noundef) local_unnamed_addr #2

declare dso_local i8* @SSL_CIPHER_standard_name(%struct.ssl_cipher_st* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i8* @SSL_CIPHER_description(%struct.ssl_cipher_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_SSL_CIPHER* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local void @SSL_CTX_free(%struct.ssl_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @SSL_free(%struct.ssl_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin "no-builtins" }

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
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
