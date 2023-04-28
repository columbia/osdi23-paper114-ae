; ModuleID = 'apps/lib/http_server.c'
source_filename = "apps/lib/http_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_st = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.bio_method_st = type opaque
%struct.ASN1_ITEM_st = type opaque
%struct.ASN1_VALUE_st = type opaque

@multi = local_unnamed_addr global i32 0, align 4
@acfd = global i32 -1, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@bio_err = external local_unnamed_addr global %struct.bio_st*, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"fatal: error detaching from parent process group: %s\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"child PID array\00", align 1
@termsig = internal unnamed_addr global i32 0, align 4
@.str.5 = private unnamed_addr constant [59 x i8] c"fatal: internal error: no matching child slot for pid: %ld\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"child process: %ld, exit status: %d\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"child process: %ld, term signal %d%s\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c" (core dumped)\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"fatal: waitpid(): %s\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"apps/lib/http_server.c\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"fatal: RAND_poll() failed\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"fatal: internal error: no free child slots\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"terminating on signal: %d\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Error setting up accept BIO\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Error starting accept\00", align 1
@bio_out = external local_unnamed_addr global %struct.bio_st*, align 8
@.str.17 = private unnamed_addr constant [29 x i8] c"Error printing ACCEPT string\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"Awaiting new connection on port %s...\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"Awaiting next request...\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"Request line read error\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"Bad Request\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"Received request, 1st line: %s\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"GET \00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"POST \00", align 1
@http_server_get_asn1_req.http_version_str = internal constant [9 x i8] c" HTTP/1.\00", align 1
@.str.25 = private unnamed_addr constant [46 x i8] c"Invalid %s -- URL does not begin with '/': %s\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"Invalid %s -- bad HTTP/version string: %s\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"Invalid %s request -- bad URL encoding: %s\00", align 1
@.str.29 = private unnamed_addr constant [45 x i8] c"Could not allocate base64 bio with size = %d\00", align 1
@.str.30 = private unnamed_addr constant [44 x i8] c"HTTP request does not begin with %sPOST: %s\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"GET or \00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"Error reading HTTP header\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"Error parsing HTTP header: missing ':'\00", align 1
@.str.34 = private unnamed_addr constant [47 x i8] c"Error parsing HTTP header: missing end of line\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"keep-alive\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.38 = private unnamed_addr constant [42 x i8] c"Error parsing DER-encoded request content\00", align 1
@.str.39 = private unnamed_addr constant [35 x i8] c"Out of memory allocating %zu bytes\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"Internal Server Error\00", align 1
@.str.41 = private unnamed_addr constant [60 x i8] c"HTTP/1.0 200 OK\0D\0A%sContent-type: %s\0D\0AContent-Length: %d\0D\0A\0D\0A\00", align 1
@.str.42 = private unnamed_addr constant [25 x i8] c"Connection: keep-alive\0D\0A\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"HTTP/1.0 %d %s\0D\0A\0D\0A\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @log_message(i8* noundef %prog, i32 noundef %level, i8* noundef %fmt, ...) local_unnamed_addr #0 {
entry:
  %level.addr = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %buf = alloca [1024 x i8], align 16
  store i32 %level, i32* %level.addr, align 4, !tbaa !4
  %0 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #11
  %cmp = icmp sgt i32 %level, 6
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %0)
  %1 = load i32, i32* @multi, align 4, !tbaa !4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %2) #11
  %call = call i32 @vsnprintf(i8* noundef nonnull %2, i64 noundef 1024, i8* noundef %fmt, %struct.__va_list_tag* noundef nonnull %arraydecay) #12
  %cmp5 = icmp sgt i32 %call, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.then2
  call void (i32, i8*, ...) @syslog(i32 noundef %level, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %2) #12
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then2
  %cmp9 = icmp slt i32 %level, 4
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  %3 = bitcast i32* %level.addr to i8*
  call void @ERR_print_errors_cb(i32 (i8*, i64, i8*)* noundef nonnull @print_syslog, i8* noundef nonnull %3) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %2) #11
  br label %if.end17

if.else:                                          ; preds = %if.end
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !8
  %call12 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* noundef %prog) #12
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !8
  %call14 = call i32 @BIO_vprintf(%struct.bio_st* noundef %5, i8* noundef %fmt, %struct.__va_list_tag* noundef nonnull %arraydecay) #12
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !8
  %call15 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #12
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !8
  %call16 = call i64 @BIO_ctrl(%struct.bio_st* noundef %7, i32 noundef 11, i64 noundef 0, i8* noundef null) #12
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end11
  call void @llvm.va_end(i8* nonnull %0)
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end17
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind
declare i32 @vsnprintf(i8* noundef, i64 noundef, i8* noundef, %struct.__va_list_tag* noundef) local_unnamed_addr #3

declare void @syslog(i32 noundef, i8* noundef, ...) local_unnamed_addr #4

declare void @ERR_print_errors_cb(i32 (i8*, i64, i8*)* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @print_syslog(i8* noundef %str, i64 noundef %len, i8* nocapture noundef readonly %levPtr) #0 {
entry:
  %0 = bitcast i8* %levPtr to i32*
  %1 = load i32, i32* %0, align 4, !tbaa !4
  %2 = icmp ult i64 %len, 1000
  %cond = select i1 %2, i64 %len, i64 1000
  %conv = trunc i64 %cond to i32
  tail call void (i32, i8*, ...) @syslog(i32 noundef %1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), i32 noundef %conv, i8* noundef %str) #12
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #4

declare i32 @BIO_vprintf(%struct.bio_st* noundef, i8* noundef, %struct.__va_list_tag* noundef) local_unnamed_addr #4

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind uwtable
define void @socket_timeout(i32 noundef %signum) local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* @acfd, align 4, !tbaa !4
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @shutdown(i32 noundef %0, i32 noundef 0) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare i32 @shutdown(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define void @spawn_loop(i8* noundef %prog) local_unnamed_addr #0 {
entry:
  %status = alloca i32, align 4
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #11
  tail call void @openlog(i8* noundef %prog, i32 noundef 1, i32 noundef 24) #12
  %call = tail call i32 @setpgid(i32 noundef 0, i32 noundef 0) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32* @__errno_location() #13
  %1 = load i32, i32* %call1, align 4, !tbaa !4
  %call2 = tail call i8* @strerror(i32 noundef %1) #12
  tail call void (i32, i8*, ...) @syslog(i32 noundef 3, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i8* noundef %call2) #12
  tail call void @exit(i32 noundef 1) #14
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @multi, align 4, !tbaa !4
  %conv = sext i32 %2 to i64
  %mul = shl nsw i64 %conv, 2
  %call3 = tail call i8* @app_malloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)) #12
  %3 = bitcast i8* %call3 to i32*
  %4 = load i32, i32* @multi, align 4, !tbaa !4
  %cmp159 = icmp sgt i32 %4, 0
  br i1 %cmp159, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end ]
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %indvars.iv
  store i32 0, i32* %arrayidx, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = load i32, i32* @multi, align 4, !tbaa !4
  %6 = sext i32 %5 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %6
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !10

for.end:                                          ; preds = %for.body, %if.end
  %call5 = tail call void (i32)* @signal(i32 noundef 2, void (i32)* noundef nonnull @noteterm) #12
  %call6 = tail call void (i32)* @signal(i32 noundef 15, void (i32)* noundef nonnull @noteterm) #12
  %7 = load i32, i32* @termsig, align 4, !tbaa !4
  %cmp7168 = icmp eq i32 %7, 0
  br i1 %cmp7168, label %while.cond9.preheader, label %while.end105

while.cond9.preheader:                            ; preds = %for.end, %cleanup
  %procs.0169 = phi i32 [ %procs.5, %cleanup ], [ 0, %for.end ]
  %8 = load i32, i32* @multi, align 4
  %cmp12203.not = icmp slt i32 %procs.0169, %8
  br i1 %cmp12203.not, label %while.end, label %while.body14

while.body14:                                     ; preds = %while.cond9.preheader, %if.else61.while.cond9_crit_edge
  %call15 = call i32 @waitpid(i32 noundef -1, i32* noundef nonnull %status, i32 noundef 0) #12
  %cmp16 = icmp sgt i32 %call15, 0
  br i1 %cmp16, label %for.cond19.preheader, label %if.else61

for.cond19.preheader:                             ; preds = %while.body14
  %cmp20162 = icmp sgt i32 %procs.0169, 0
  br i1 %cmp20162, label %for.body22.preheader, label %for.end33

for.body22.preheader:                             ; preds = %for.cond19.preheader
  %9 = add nsw i32 %procs.0169, -1
  %wide.trip.count = zext i32 %procs.0169 to i64
  br label %for.body22

for.body22:                                       ; preds = %for.body22.preheader, %for.inc31
  %indvars.iv177 = phi i64 [ 0, %for.body22.preheader ], [ %indvars.iv.next178, %for.inc31 ]
  %arrayidx24 = getelementptr inbounds i32, i32* %3, i64 %indvars.iv177
  %10 = load i32, i32* %arrayidx24, align 4, !tbaa !4
  %cmp25 = icmp eq i32 %10, %call15
  br i1 %cmp25, label %if.then27, label %for.inc31

if.then27:                                        ; preds = %for.body22
  %11 = trunc i64 %indvars.iv177 to i32
  %idxprom23.le = and i64 %indvars.iv177, 4294967295
  %arrayidx24.le = getelementptr inbounds i32, i32* %3, i64 %idxprom23.le
  store i32 0, i32* %arrayidx24.le, align 4, !tbaa !4
  br label %for.end33

for.inc31:                                        ; preds = %for.body22
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next178, %wide.trip.count
  br i1 %exitcond.not, label %for.end33, label %for.body22, !llvm.loop !12

for.end33:                                        ; preds = %for.inc31, %for.cond19.preheader, %if.then27
  %i.1156 = phi i32 [ %11, %if.then27 ], [ 0, %for.cond19.preheader ], [ %procs.0169, %for.inc31 ]
  %procs.1 = phi i32 [ %9, %if.then27 ], [ %procs.0169, %for.cond19.preheader ], [ %procs.0169, %for.inc31 ]
  %12 = load i32, i32* @multi, align 4, !tbaa !4
  %cmp34.not = icmp slt i32 %i.1156, %12
  br i1 %cmp34.not, label %if.end38, label %if.then36

if.then36:                                        ; preds = %for.end33
  %conv37 = sext i32 %call15 to i64
  call void (i32, i8*, ...) @syslog(i32 noundef 3, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i64 noundef %conv37) #12
  call fastcc void @killall(i32 noundef 1, i32* noundef %3) #15
  unreachable

if.end38:                                         ; preds = %for.end33
  %13 = load i32, i32* %status, align 4, !tbaa !4
  %cmp39.not = icmp eq i32 %13, 0
  br i1 %cmp39.not, label %while.endthread-pre-split, label %if.then41

if.then41:                                        ; preds = %if.end38
  %and = and i32 %13, 127
  %cmp42 = icmp eq i32 %and, 0
  br i1 %cmp42, label %if.then44, label %if.else

if.then44:                                        ; preds = %if.then41
  %conv45 = sext i32 %call15 to i64
  %and46 = lshr i32 %13, 8
  %14 = and i32 %and46, 255
  call void (i32, i8*, ...) @syslog(i32 noundef 4, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i64 noundef %conv45, i32 noundef %14) #12
  br label %if.end59

if.else:                                          ; preds = %if.then41
  %conv48 = shl nuw nsw i32 %and, 24
  %sext = add nuw i32 %conv48, 16777216
  %cmp51 = icmp sgt i32 %sext, 33554431
  br i1 %cmp51, label %if.then53, label %if.end59

if.then53:                                        ; preds = %if.else
  %conv54 = sext i32 %call15 to i64
  %and56 = and i32 %13, 128
  %tobool57.not = icmp eq i32 %and56, 0
  %cond = select i1 %tobool57.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0)
  call void (i32, i8*, ...) @syslog(i32 noundef 4, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i64 noundef %conv54, i32 noundef %and, i8* noundef %cond) #12
  br label %if.end59

if.end59:                                         ; preds = %if.else, %if.then53, %if.then44
  call fastcc void @ossl_sleep(i64 noundef 1000) #15
  br label %while.endthread-pre-split

if.else61:                                        ; preds = %while.body14
  %call62 = tail call i32* @__errno_location() #13
  %15 = load i32, i32* %call62, align 4, !tbaa !4
  %cmp63.not = icmp eq i32 %15, 4
  br i1 %cmp63.not, label %if.else61.while.cond9_crit_edge, label %if.then65, !llvm.loop !13

if.else61.while.cond9_crit_edge:                  ; preds = %if.else61
  %.pre = load i32, i32* @termsig, align 4, !tbaa !4
  %cmp10 = icmp eq i32 %.pre, 0
  %16 = load i32, i32* @multi, align 4
  %cmp12 = icmp sge i32 %procs.0169, %16
  %17 = select i1 %cmp10, i1 %cmp12, i1 false
  br i1 %17, label %while.body14, label %while.end

if.then65:                                        ; preds = %if.else61
  %call67 = call i8* @strerror(i32 noundef %15) #12
  call void (i32, i8*, ...) @syslog(i32 noundef 3, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* noundef %call67) #12
  call fastcc void @killall(i32 noundef 1, i32* noundef %3) #15
  unreachable

while.endthread-pre-split:                        ; preds = %if.end59, %if.end38
  %.pr = load i32, i32* @termsig, align 4, !tbaa !4
  br label %while.end

while.end:                                        ; preds = %if.else61.while.cond9_crit_edge, %while.cond9.preheader, %while.endthread-pre-split
  %18 = phi i32 [ %.pr, %while.endthread-pre-split ], [ 0, %while.cond9.preheader ], [ %.pre, %if.else61.while.cond9_crit_edge ]
  %procs.2 = phi i32 [ %procs.1, %while.endthread-pre-split ], [ %procs.0169, %while.cond9.preheader ], [ %procs.0169, %if.else61.while.cond9_crit_edge ]
  %tobool70.not = icmp eq i32 %18, 0
  br i1 %tobool70.not, label %if.end72, label %while.end105

if.end72:                                         ; preds = %while.end
  %call73 = call i32 @fork() #12
  switch i32 %call73, label %for.cond85.preheader [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb74
  ]

for.cond85.preheader:                             ; preds = %if.end72
  %19 = load i32, i32* @multi, align 4, !tbaa !4
  %cmp86165 = icmp sgt i32 %19, 0
  br i1 %cmp86165, label %for.body88.preheader, label %for.end100

for.body88.preheader:                             ; preds = %for.cond85.preheader
  %wide.trip.count183 = zext i32 %19 to i64
  br label %for.body88

sw.bb:                                            ; preds = %if.end72
  call fastcc void @ossl_sleep(i64 noundef 30000) #15
  br label %cleanup

sw.bb74:                                          ; preds = %if.end72
  call void @CRYPTO_free(i8* noundef %call3, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 noundef 186) #12
  %call75 = call void (i32)* @signal(i32 noundef 2, void (i32)* noundef null) #12
  %call76 = call void (i32)* @signal(i32 noundef 15, void (i32)* noundef null) #12
  %20 = load i32, i32* @termsig, align 4, !tbaa !4
  %tobool77.not = icmp eq i32 %20, 0
  br i1 %tobool77.not, label %if.end79, label %if.then78

if.then78:                                        ; preds = %sw.bb74
  call void @_exit(i32 noundef 0) #14
  unreachable

if.end79:                                         ; preds = %sw.bb74
  %call80 = call i32 @RAND_poll() #12
  %cmp81 = icmp slt i32 %call80, 1
  br i1 %cmp81, label %if.then83, label %cleanup106

if.then83:                                        ; preds = %if.end79
  call void (i32, i8*, ...) @syslog(i32 noundef 3, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0)) #12
  call void @_exit(i32 noundef 1) #14
  unreachable

for.body88:                                       ; preds = %for.body88.preheader, %for.inc98
  %indvars.iv180 = phi i64 [ 0, %for.body88.preheader ], [ %indvars.iv.next181, %for.inc98 ]
  %arrayidx90 = getelementptr inbounds i32, i32* %3, i64 %indvars.iv180
  %21 = load i32, i32* %arrayidx90, align 4, !tbaa !4
  %cmp91 = icmp eq i32 %21, 0
  br i1 %cmp91, label %if.then93, label %for.inc98

if.then93:                                        ; preds = %for.body88
  %22 = trunc i64 %indvars.iv180 to i32
  %idxprom89.le = and i64 %indvars.iv180, 4294967295
  %arrayidx90.le = getelementptr inbounds i32, i32* %3, i64 %idxprom89.le
  store i32 %call73, i32* %arrayidx90.le, align 4, !tbaa !4
  %inc96 = add nsw i32 %procs.2, 1
  %.pre185 = load i32, i32* @multi, align 4, !tbaa !4
  br label %for.end100

for.inc98:                                        ; preds = %for.body88
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1
  %exitcond184.not = icmp eq i64 %indvars.iv.next181, %wide.trip.count183
  br i1 %exitcond184.not, label %if.then103, label %for.body88, !llvm.loop !14

for.end100:                                       ; preds = %for.cond85.preheader, %if.then93
  %23 = phi i32 [ %.pre185, %if.then93 ], [ %19, %for.cond85.preheader ]
  %i.2158 = phi i32 [ %22, %if.then93 ], [ 0, %for.cond85.preheader ]
  %procs.3 = phi i32 [ %inc96, %if.then93 ], [ %procs.2, %for.cond85.preheader ]
  %cmp101.not = icmp slt i32 %i.2158, %23
  br i1 %cmp101.not, label %cleanup, label %if.then103

if.then103:                                       ; preds = %for.end100, %for.inc98
  call void (i32, i8*, ...) @syslog(i32 noundef 3, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0)) #12
  call fastcc void @killall(i32 noundef 1, i32* noundef %3) #15
  unreachable

cleanup:                                          ; preds = %sw.bb, %for.end100
  %procs.5 = phi i32 [ %procs.3, %for.end100 ], [ %procs.2, %sw.bb ]
  %24 = load i32, i32* @termsig, align 4, !tbaa !4
  %cmp7 = icmp eq i32 %24, 0
  br i1 %cmp7, label %while.cond9.preheader, label %while.end105

while.end105:                                     ; preds = %cleanup, %while.end, %for.end
  %25 = phi i32 [ %7, %for.end ], [ %24, %cleanup ], [ %18, %while.end ]
  call void (i32, i8*, ...) @syslog(i32 noundef 6, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 noundef %25) #12
  call fastcc void @killall(i32 noundef 0, i32* noundef %3) #15
  unreachable

cleanup106:                                       ; preds = %if.end79
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #11
  ret void
}

declare void @openlog(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @setpgid(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @strerror(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

declare i8* @app_malloc(i64 noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void (i32)* @signal(i32 noundef, void (i32)* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @noteterm(i32 noundef %sig) #7 {
entry:
  store i32 %sig, i32* @termsig, align 4, !tbaa !4
  ret void
}

declare i32 @waitpid(i32 noundef, i32* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline noreturn nounwind uwtable
define internal fastcc void @killall(i32 noundef %ret, i32* noundef %kidpids) unnamed_addr #8 {
entry:
  %0 = load i32, i32* @multi, align 4, !tbaa !4
  %cmp9 = icmp sgt i32 %0, 0
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %1 = phi i32 [ %3, %for.inc ], [ %0, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32, i32* %kidpids, i64 %indvars.iv
  %2 = load i32, i32* %arrayidx, align 4, !tbaa !4
  %cmp1.not = icmp eq i32 %2, 0
  br i1 %cmp1.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %call = tail call i32 @kill(i32 noundef %2, i32 noundef 15) #12
  %.pre = load i32, i32* @multi, align 4, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %3 = phi i32 [ %1, %for.body ], [ %.pre, %if.then ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %4 = sext i32 %3 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %4
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !15

for.end:                                          ; preds = %for.inc, %entry
  %5 = bitcast i32* %kidpids to i8*
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 noundef 98) #12
  tail call fastcc void @ossl_sleep(i64 noundef 1000) #15
  tail call void @exit(i32 noundef %ret) #14
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ossl_sleep(i64 noundef %millis) unnamed_addr #0 {
entry:
  %0 = trunc i64 %millis to i32
  %conv = mul i32 %0, 1000
  %call = tail call i32 @usleep(i32 noundef %conv) #12
  ret void
}

; Function Attrs: nounwind
declare i32 @fork() local_unnamed_addr #3

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #9

declare i32 @RAND_poll() local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @http_server_init_bio(i8* noundef %prog, i8* noundef %port) local_unnamed_addr #0 {
entry:
  %asock = alloca i32, align 4
  %0 = bitcast i32* %asock to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #11
  %call = tail call %struct.bio_method_st* @BIO_f_buffer() #12
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #12
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.bio_method_st* @BIO_s_accept() #12
  %call3 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call2) #12
  %cmp4 = icmp eq %struct.bio_st* %call3, null
  br i1 %cmp4, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call5 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call3, i32 noundef 131, i64 noundef 1, i8* noundef null) #12
  %cmp6 = icmp slt i64 %call5, 0
  br i1 %cmp6, label %if.then10, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call8 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call3, i32 noundef 118, i64 noundef 1, i8* noundef %port) #12
  %cmp9 = icmp slt i64 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false7, %lor.lhs.false, %if.end
  tail call void (i8*, i32, i8*, ...) @log_message(i8* noundef %prog, i32 noundef 3, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0)) #15
  br label %err

if.end11:                                         ; preds = %lor.lhs.false7
  %1 = bitcast %struct.bio_st* %call1 to i8*
  %call12 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call3, i32 noundef 118, i64 noundef 3, i8* noundef nonnull %1) #12
  %call13 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call3, i32 noundef 101, i64 noundef 0, i8* noundef null) #12
  %cmp14 = icmp slt i64 %call13, 1
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  tail call void (i8*, i32, i8*, ...) @log_message(i8* noundef %prog, i32 noundef 3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0)) #15
  br label %err

if.end16:                                         ; preds = %if.end11
  %call17 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call3, i32 noundef 105, i64 noundef 0, i8* noundef nonnull %0) #12
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !8
  %3 = load i32, i32* %asock, align 4, !tbaa !4
  %call18 = call i32 @report_server_accept(%struct.bio_st* noundef %2, i32 noundef %3, i32 noundef 1, i32 noundef 1) #12
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %if.then19, label %cleanup

if.then19:                                        ; preds = %if.end16
  call void (i8*, i32, i8*, ...) @log_message(i8* noundef %prog, i32 noundef 3, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0)) #15
  br label %err

err:                                              ; preds = %entry, %if.then19, %if.then15, %if.then10
  %acbio.0 = phi %struct.bio_st* [ null, %entry ], [ %call3, %if.then10 ], [ %call3, %if.then15 ], [ %call3, %if.then19 ]
  %bufbio.0 = phi %struct.bio_st* [ null, %entry ], [ %call1, %if.then10 ], [ null, %if.then15 ], [ null, %if.then19 ]
  call void @BIO_free_all(%struct.bio_st* noundef %acbio.0) #12
  %call21 = call i32 @BIO_free(%struct.bio_st* noundef %bufbio.0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %err
  %retval.0 = phi %struct.bio_st* [ null, %err ], [ %call3, %if.end16 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #11
  ret %struct.bio_st* %retval.0
}

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #4

declare %struct.bio_method_st* @BIO_f_buffer() local_unnamed_addr #4

declare %struct.bio_method_st* @BIO_s_accept() local_unnamed_addr #4

declare i32 @report_server_accept(%struct.bio_st* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #4

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i32 @http_server_get_asn1_req(%struct.ASN1_ITEM_st* noundef %it, %struct.ASN1_VALUE_st** nocapture noundef writeonly %preq, i8** noundef %ppath, %struct.bio_st** nocapture noundef %pcbio, %struct.bio_st* noundef %acbio, i32* noundef writeonly %found_keep_alive, i8* noundef %prog, i8* noundef %port, i32 noundef %accept_get, i32 noundef %timeout) local_unnamed_addr #0 {
entry:
  %reqbuf = alloca [2048 x i8], align 16
  %inbuf = alloca [2048 x i8], align 16
  %0 = load %struct.bio_st*, %struct.bio_st** %pcbio, align 8, !tbaa !8
  %1 = getelementptr inbounds [2048 x i8], [2048 x i8]* %reqbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %1) #11
  %2 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %2) #11
  store %struct.ASN1_VALUE_st* null, %struct.ASN1_VALUE_st** %preq, align 8, !tbaa !8
  %cmp.not = icmp eq i8** %ppath, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %ppath, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp eq %struct.bio_st* %0, null
  br i1 %cmp1, label %if.then2, label %if.end7.thread

if.then2:                                         ; preds = %if.end
  tail call void (i8*, i32, i8*, ...) @log_message(i8* noundef %prog, i32 noundef 7, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i64 0, i64 0), i8* noundef %port) #15
  %call = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %acbio, i32 noundef 101, i64 noundef 0, i8* noundef null) #12
  %cmp3 = icmp slt i64 %call, 1
  br i1 %cmp3, label %cleanup232, label %if.end7

if.end7.thread:                                   ; preds = %if.end
  tail call void (i8*, i32, i8*, ...) @log_message(i8* noundef %prog, i32 noundef 7, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0)) #15
  br label %if.end10

if.end7:                                          ; preds = %if.then2
  %call6 = tail call %struct.bio_st* @BIO_pop(%struct.bio_st* noundef %acbio) #12
  store %struct.bio_st* %call6, %struct.bio_st** %pcbio, align 8, !tbaa !8
  %cmp8 = icmp eq %struct.bio_st* %call6, null
  br i1 %cmp8, label %out, label %if.end10

if.end10:                                         ; preds = %if.end7.thread, %if.end7
  %cbio.0365 = phi %struct.bio_st* [ %0, %if.end7.thread ], [ %call6, %if.end7 ]
  %cmp11 = icmp sgt i32 %timeout, 0
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end10
  %call13 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %cbio.0365, i32 noundef 105, i64 noundef 0, i8* noundef bitcast (i32* @acfd to i8*)) #12
  %call14 = tail call i32 @alarm(i32 noundef %timeout) #12
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end10
  %call16 = call i32 @BIO_gets(%struct.bio_st* noundef nonnull %cbio.0365, i8* noundef nonnull %1, i32 noundef 2048) #12
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %cleanup232, label %if.end19

if.end19:                                         ; preds = %if.end15
  %cmp20 = icmp slt i32 %call16, 0
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end19
  call void (i8*, i32, i8*, ...) @log_message(i8* noundef %prog, i32 noundef 4, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0)) #15
  %call22 = call i32 @http_server_send_status(%struct.bio_st* noundef nonnull %cbio.0365, i32 noundef 400, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0)) #15
  br label %out

if.end23:                                         ; preds = %if.end19
  %call25 = call i8* @strchr(i8* noundef nonnull %1, i32 noundef 13) #16
  %cmp26.not = icmp eq i8* %call25, null
  br i1 %cmp26.not, label %lor.lhs.false, label %if.then30

lor.lhs.false:                                    ; preds = %if.end23
  %call28 = call i8* @strchr(i8* noundef nonnull %1, i32 noundef 10) #16
  %cmp29.not = icmp eq i8* %call28, null
  br i1 %cmp29.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %lor.lhs.false, %if.end23
  %end.0 = phi i8* [ %call25, %if.end23 ], [ %call28, %lor.lhs.false ]
  store i8 0, i8* %end.0, align 1, !tbaa !16
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %lor.lhs.false
  call void (i8*, i32, i8*, ...) @log_message(i8* noundef %prog, i32 noundef 6, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0), i8* noundef nonnull %1) #15
  %tobool.not = icmp eq i32 %accept_get, 0
  br i1 %tobool.not, label %lor.lhs.false36, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end31
  %add.ptr = getelementptr inbounds [2048 x i8], [2048 x i8]* %reqbuf, i64 0, i64 3
  %call34 = call i32 @strncmp(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i64 noundef 4) #16
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then39, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %land.lhs.true, %if.end31
  %incdec.ptr = getelementptr inbounds [2048 x i8], [2048 x i8]* %reqbuf, i64 0, i64 4
  %call37 = call i32 @strncmp(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i64 noundef 5) #16
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.then39, label %if.else107

if.then39:                                        ; preds = %lor.lhs.false36, %land.lhs.true
  %url.0 = phi i8* [ %add.ptr, %land.lhs.true ], [ %incdec.ptr, %lor.lhs.false36 ]
  store i8 0, i8* %url.0, align 1, !tbaa !16
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %if.then39
  %url.0.pn = phi i8* [ %url.0, %if.then39 ], [ %url.1, %while.cond ]
  %url.1 = getelementptr inbounds i8, i8* %url.0.pn, i64 1
  %3 = load i8, i8* %url.1, align 1, !tbaa !16
  switch i8 %3, label %if.then47 [
    i8 32, label %while.cond
    i8 47, label %if.end49
  ]

if.then47:                                        ; preds = %while.cond
  call void (i8*, i32, i8*, ...) @log_message(i8* noundef %prog, i32 noundef 4, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.25, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef nonnull %url.1) #15
  %call48 = call i32 @http_server_send_status(%struct.bio_st* noundef nonnull %cbio.0365, i32 noundef 400, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0)) #15
  br label %out

if.end49:                                         ; preds = %while.cond
  %incdec.ptr50 = getelementptr inbounds i8, i8* %url.0.pn, i64 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end49
  %end.1 = phi i8* [ %incdec.ptr50, %if.end49 ], [ %incdec.ptr59, %for.inc ]
  %4 = load i8, i8* %end.1, align 1, !tbaa !16
  switch i8 %4, label %for.inc [
    i8 0, label %for.end
    i8 32, label %for.end
  ]

for.inc:                                          ; preds = %for.cond
  %incdec.ptr59 = getelementptr inbounds i8, i8* %end.1, i64 1
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond, %for.cond
  %call60 = call i32 @strncmp(i8* noundef nonnull %end.1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @http_server_get_asn1_req.http_version_str, i64 0, i64 0), i64 noundef 8) #16
  %cmp61.not = icmp eq i32 %call60, 0
  br i1 %cmp61.not, label %if.end66, label %if.then63

if.then63:                                        ; preds = %for.end
  %add.ptr64 = getelementptr inbounds i8, i8* %end.1, i64 1
  call void (i8*, i32, i8*, ...) @log_message(i8* noundef %prog, i32 noundef 4, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.26, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef nonnull %add.ptr64) #15
  %call65 = call i32 @http_server_send_status(%struct.bio_st* noundef nonnull %cbio.0365, i32 noundef 400, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0)) #15
  br label %out

if.end66:                                         ; preds = %for.end
  store i8 0, i8* %end.1, align 1, !tbaa !16
  %cmp67.not = icmp eq i32* %found_keep_alive, null
  br i1 %cmp67.not, label %if.end73, label %if.then69

if.then69:                                        ; preds = %if.end66
  %arrayidx = getelementptr inbounds i8, i8* %end.1, i64 8
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !16
  %cmp71 = icmp sgt i8 %5, 48
  %conv72 = zext i1 %cmp71 to i32
  store i32 %conv72, i32* %found_keep_alive, align 4, !tbaa !4
  br label %if.end73

if.end73:                                         ; preds = %if.then69, %if.end66
  %call74 = call i64 @strlen(i8* noundef nonnull %1) #16
  %cmp75 = icmp eq i64 %call74, 3
  br i1 %cmp75, label %land.lhs.true77, label %if.end84

land.lhs.true77:                                  ; preds = %if.end73
  %6 = load i8, i8* %incdec.ptr50, align 1, !tbaa !16
  %cmp80 = icmp eq i8 %6, 0
  br i1 %cmp80, label %if.then82, label %if.end84

if.then82:                                        ; preds = %land.lhs.true77
  %call83 = call i32 @http_server_send_status(%struct.bio_st* noundef nonnull %cbio.0365, i32 noundef 200, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0)) #15
  br label %out

if.end84:                                         ; preds = %land.lhs.true77, %if.end73
  %call85 = call fastcc i32 @urldecode(i8* noundef nonnull %incdec.ptr50) #15
  %cmp86 = icmp slt i32 %call85, 0
  br i1 %cmp86, label %if.then88, label %if.end90

if.then88:                                        ; preds = %if.end84
  call void (i8*, i32, i8*, ...) @log_message(i8* noundef %prog, i32 noundef 4, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.28, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef nonnull %incdec.ptr50) #15
  %call89 = call i32 @http_server_send_status(%struct.bio_st* noundef nonnull %cbio.0365, i32 noundef 400, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0)) #15
  br label %out

if.end90:                                         ; preds = %if.end84
  %call91 = call i64 @strlen(i8* noundef nonnull %1) #16
  %cmp92 = icmp eq i64 %call91, 3
  br i1 %cmp92, label %if.then94, label %if.end111

if.then94:                                        ; preds = %if.end90
  %call95 = call %struct.bio_st* @BIO_new_mem_buf(i8* noundef nonnull %incdec.ptr50, i32 noundef %call85) #12
  %cmp96 = icmp eq %struct.bio_st* %call95, null
  br i1 %cmp96, label %fatal, label %lor.lhs.false98

lor.lhs.false98:                                  ; preds = %if.then94
  %call99 = call %struct.bio_method_st* @BIO_f_base64() #12
  %call100 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call99) #12
  %cmp101 = icmp eq %struct.bio_st* %call100, null
  br i1 %cmp101, label %fatal, label %if.end104

if.end104:                                        ; preds = %lor.lhs.false98
  call void @BIO_set_flags(%struct.bio_st* noundef nonnull %call100, i32 noundef 256) #12
  %call105 = call %struct.bio_st* @BIO_push(%struct.bio_st* noundef nonnull %call100, %struct.bio_st* noundef nonnull %call95) #12
  br label %if.end111

if.else107:                                       ; preds = %lor.lhs.false36
  %cond = select i1 %tobool.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0)
  call void (i8*, i32, i8*, ...) @log_message(i8* noundef %prog, i32 noundef 4, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.30, i64 0, i64 0), i8* noundef %cond, i8* noundef nonnull %1) #15
  %call110 = call i32 @http_server_send_status(%struct.bio_st* noundef nonnull %cbio.0365, i32 noundef 400, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0)) #15
  br label %out

if.end111:                                        ; preds = %if.end90, %if.end104
  %getbio.0 = phi %struct.bio_st* [ %call105, %if.end104 ], [ null, %if.end90 ]
  br label %while.cond112

while.cond112:                                    ; preds = %while.cond112, %if.end111
  %url.2 = phi i8* [ %incdec.ptr50, %if.end111 ], [ %incdec.ptr117, %while.cond112 ]
  %7 = load i8, i8* %url.2, align 1, !tbaa !16
  %cmp114 = icmp eq i8 %7, 47
  %incdec.ptr117 = getelementptr inbounds i8, i8* %url.2, i64 1
  br i1 %cmp114, label %while.cond112, label %while.cond119.preheader, !llvm.loop !18

while.cond119.preheader:                          ; preds = %while.cond112
  %add.ptr120 = getelementptr inbounds i8, i8* %url.2, i64 2
  br label %while.cond119

while.cond119:                                    ; preds = %while.cond119.preheader, %land.rhs
  %end.2 = phi i8* [ %arrayidx128, %land.rhs ], [ %end.1, %while.cond119.preheader ]
  %cmp121.not = icmp ult i8* %end.2, %add.ptr120
  br i1 %cmp121.not, label %while.end134, label %land.lhs.true123

land.lhs.true123:                                 ; preds = %while.cond119
  %arrayidx124 = getelementptr inbounds i8, i8* %end.2, i64 -2
  %8 = load i8, i8* %arrayidx124, align 1, !tbaa !16
  %cmp126 = icmp eq i8 %8, 47
  br i1 %cmp126, label %land.rhs, label %while.end134

land.rhs:                                         ; preds = %land.lhs.true123
  %arrayidx128 = getelementptr inbounds i8, i8* %end.2, i64 -1
  %9 = load i8, i8* %arrayidx128, align 1, !tbaa !16
  %cmp130 = icmp eq i8 %9, 47
  br i1 %cmp130, label %while.cond119, label %while.end134, !llvm.loop !19

while.end134:                                     ; preds = %while.cond119, %land.lhs.true123, %land.rhs
  store i8 0, i8* %end.2, align 1, !tbaa !16
  %call137390 = call i32 @BIO_gets(%struct.bio_st* noundef nonnull %cbio.0365, i8* noundef nonnull %2, i32 noundef 2048) #12
  %cmp138391 = icmp slt i32 %call137390, 1
  br i1 %cmp138391, label %if.then140, label %if.end142

if.then140:                                       ; preds = %cleanup, %while.end134
  call void (i8*, i32, i8*, ...) @log_message(i8* noundef %prog, i32 noundef 4, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i64 0, i64 0)) #15
  %call141 = call i32 @http_server_send_status(%struct.bio_st* noundef nonnull %cbio.0365, i32 noundef 400, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0)) #15
  br label %out

if.end142:                                        ; preds = %while.end134, %cleanup
  %10 = load i8, i8* %2, align 16, !tbaa !16
  switch i8 %10, label %if.end153 [
    i8 13, label %for.end201
    i8 10, label %for.end201
  ]

if.end153:                                        ; preds = %if.end142
  %call155 = call i8* @strchr(i8* noundef nonnull %2, i32 noundef 58) #16
  %cmp156 = icmp eq i8* %call155, null
  br i1 %cmp156, label %if.then158, label %if.end160

if.then158:                                       ; preds = %if.end153
  call void (i8*, i32, i8*, ...) @log_message(i8* noundef %prog, i32 noundef 4, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.33, i64 0, i64 0)) #15
  %call159 = call i32 @http_server_send_status(%struct.bio_st* noundef nonnull %cbio.0365, i32 noundef 400, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0)) #15
  br label %out

if.end160:                                        ; preds = %if.end153
  store i8 0, i8* %call155, align 1, !tbaa !16
  br label %while.cond162

while.cond162:                                    ; preds = %while.cond162, %if.end160
  %call155.pn = phi i8* [ %call155, %if.end160 ], [ %value.0, %while.cond162 ]
  %value.0 = getelementptr inbounds i8, i8* %call155.pn, i64 1
  %11 = load i8, i8* %value.0, align 1, !tbaa !16
  %cmp164 = icmp eq i8 %11, 32
  br i1 %cmp164, label %while.cond162, label %while.end168, !llvm.loop !20

while.end168:                                     ; preds = %while.cond162
  %call169 = call i8* @strchr(i8* noundef nonnull %value.0, i32 noundef 13) #16
  %cmp170 = icmp eq i8* %call169, null
  br i1 %cmp170, label %if.then172, label %if.end179

if.then172:                                       ; preds = %while.end168
  %call173 = call i8* @strchr(i8* noundef nonnull %value.0, i32 noundef 10) #16
  %cmp174 = icmp eq i8* %call173, null
  br i1 %cmp174, label %if.then176, label %if.end179

if.then176:                                       ; preds = %if.then172
  call void (i8*, i32, i8*, ...) @log_message(i8* noundef %prog, i32 noundef 4, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.34, i64 0, i64 0)) #15
  %call177 = call i32 @http_server_send_status(%struct.bio_st* noundef nonnull %cbio.0365, i32 noundef 400, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0)) #15
  br label %out

if.end179:                                        ; preds = %if.then172, %while.end168
  %line_end.0 = phi i8* [ %call173, %if.then172 ], [ %call169, %while.end168 ]
  store i8 0, i8* %line_end.0, align 1, !tbaa !16
  br i1 %cmp67.not, label %cleanup, label %land.lhs.true182

land.lhs.true182:                                 ; preds = %if.end179
  %call183 = call i32 @strcasecmp(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i64 0, i64 0)) #16
  %cmp184 = icmp eq i32 %call183, 0
  br i1 %cmp184, label %if.then186, label %cleanup

if.then186:                                       ; preds = %land.lhs.true182
  %call187 = call i32 @strcasecmp(i8* noundef nonnull %value.0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i64 0, i64 0)) #16
  %cmp188 = icmp eq i32 %call187, 0
  br i1 %cmp188, label %cleanup.sink.split, label %if.else191

if.else191:                                       ; preds = %if.then186
  %call192 = call i32 @strcasecmp(i8* noundef nonnull %value.0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0)) #16
  %cmp193 = icmp eq i32 %call192, 0
  br i1 %cmp193, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.else191, %if.then186
  %.sink = phi i32 [ 1, %if.then186 ], [ 0, %if.else191 ]
  store i32 %.sink, i32* %found_keep_alive, align 4, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end179, %land.lhs.true182, %if.else191
  %call137 = call i32 @BIO_gets(%struct.bio_st* noundef nonnull %cbio.0365, i8* noundef nonnull %2, i32 noundef 2048) #12
  %cmp138 = icmp slt i32 %call137, 1
  br i1 %cmp138, label %if.then140, label %if.end142

for.end201:                                       ; preds = %if.end142, %if.end142
  %call202 = call i32 @alarm(i32 noundef 0) #12
  %cmp203.not = icmp eq %struct.bio_st* %getbio.0, null
  %cond205 = select i1 %cmp203.not, %struct.bio_st* %cbio.0365, %struct.bio_st* %getbio.0
  %call206 = call i8* @ASN1_item_d2i_bio(%struct.ASN1_ITEM_st* noundef %it, %struct.bio_st* noundef %cond205, i8* noundef null) #12
  %12 = bitcast i8* %call206 to %struct.ASN1_VALUE_st*
  %cmp207 = icmp eq i8* %call206, null
  br i1 %cmp207, label %if.then209, label %if.else211

if.then209:                                       ; preds = %for.end201
  call void (i8*, i32, i8*, ...) @log_message(i8* noundef %prog, i32 noundef 4, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.38, i64 0, i64 0)) #15
  %call210 = call i32 @http_server_send_status(%struct.bio_st* noundef nonnull %cbio.0365, i32 noundef 400, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0)) #15
  br label %out.thread

if.else211:                                       ; preds = %for.end201
  br i1 %cmp.not, label %out.thread, label %land.lhs.true214

land.lhs.true214:                                 ; preds = %if.else211
  %call215 = call i8* @CRYPTO_strdup(i8* noundef nonnull %url.2, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 noundef 476) #12
  store i8* %call215, i8** %ppath, align 8, !tbaa !8
  %cmp216 = icmp eq i8* %call215, null
  br i1 %cmp216, label %fatal.thread, label %out.thread

fatal.thread:                                     ; preds = %land.lhs.true214
  %call219 = call i64 @strlen(i8* noundef nonnull %url.2) #16
  %add = add i64 %call219, 1
  call void (i8*, i32, i8*, ...) @log_message(i8* noundef %prog, i32 noundef 3, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.39, i64 0, i64 0), i64 noundef %add) #15
  call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef nonnull %12, %struct.ASN1_ITEM_st* noundef %it) #12
  %call227381 = call i32 @http_server_send_status(%struct.bio_st* noundef nonnull %cbio.0365, i32 noundef 500, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i64 0, i64 0)) #15
  br label %if.then230

out.thread:                                       ; preds = %if.then209, %land.lhs.true214, %if.else211
  %13 = bitcast %struct.ASN1_VALUE_st** %preq to i8**
  store i8* %call206, i8** %13, align 8, !tbaa !8
  call void @BIO_free_all(%struct.bio_st* noundef %getbio.0) #12
  br label %if.end226

out:                                              ; preds = %if.then176, %if.then158, %if.then140, %if.end7, %if.end231, %if.else107, %if.then88, %if.then82, %if.then63, %if.then47, %if.then21
  %getbio.1 = phi %struct.bio_st* [ null, %if.then21 ], [ null, %if.then47 ], [ null, %if.then63 ], [ null, %if.then82 ], [ null, %if.then88 ], [ %getbio.2385, %if.end231 ], [ null, %if.else107 ], [ null, %if.end7 ], [ %getbio.0, %if.then140 ], [ %getbio.0, %if.then158 ], [ %getbio.0, %if.then176 ]
  %timeout.addr.0 = phi i32 [ %timeout, %if.then21 ], [ %timeout, %if.then47 ], [ %timeout, %if.then63 ], [ %timeout, %if.then82 ], [ %timeout, %if.then88 ], [ %timeout.addr.1387, %if.end231 ], [ %timeout, %if.else107 ], [ %timeout, %if.end7 ], [ %timeout, %if.then140 ], [ %timeout, %if.then158 ], [ %timeout, %if.then176 ]
  %ret.0 = phi i32 [ 1, %if.then21 ], [ 1, %if.then47 ], [ 1, %if.then63 ], [ 1, %if.then82 ], [ 1, %if.then88 ], [ -1, %if.end231 ], [ 1, %if.else107 ], [ -1, %if.end7 ], [ 1, %if.then140 ], [ 1, %if.then158 ], [ 1, %if.then176 ]
  call void @BIO_free_all(%struct.bio_st* noundef %getbio.1) #12
  %cmp222 = icmp sgt i32 %timeout.addr.0, 0
  br i1 %cmp222, label %if.then224, label %if.end226

if.then224:                                       ; preds = %out
  %call225 = call i32 @alarm(i32 noundef 0) #12
  br label %if.end226

if.end226:                                        ; preds = %out.thread, %if.then224, %out
  %ret.0377 = phi i32 [ 1, %out.thread ], [ %ret.0, %if.then224 ], [ %ret.0, %out ]
  store i32 -1, i32* @acfd, align 4, !tbaa !4
  br label %cleanup232

fatal:                                            ; preds = %if.then94, %lor.lhs.false98
  call void (i8*, i32, i8*, ...) @log_message(i8* noundef %prog, i32 noundef 3, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.29, i64 0, i64 0), i32 noundef %call85) #15
  %call227 = call i32 @http_server_send_status(%struct.bio_st* noundef nonnull %cbio.0365, i32 noundef 500, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i64 0, i64 0)) #15
  br i1 %cmp.not, label %if.end231, label %if.then230

if.then230:                                       ; preds = %fatal.thread, %fatal
  %timeout.addr.1386 = phi i32 [ 0, %fatal.thread ], [ %timeout, %fatal ]
  %getbio.2384 = phi %struct.bio_st* [ %getbio.0, %fatal.thread ], [ %call95, %fatal ]
  %14 = load i8*, i8** %ppath, align 8, !tbaa !8
  call void @CRYPTO_free(i8* noundef %14, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 noundef 497) #12
  store i8* null, i8** %ppath, align 8, !tbaa !8
  br label %if.end231

if.end231:                                        ; preds = %if.then230, %fatal
  %timeout.addr.1387 = phi i32 [ %timeout.addr.1386, %if.then230 ], [ %timeout, %fatal ]
  %getbio.2385 = phi %struct.bio_st* [ %getbio.2384, %if.then230 ], [ %call95, %fatal ]
  call void @BIO_free_all(%struct.bio_st* noundef nonnull %cbio.0365) #12
  store %struct.bio_st* null, %struct.bio_st** %pcbio, align 8, !tbaa !8
  br label %out

cleanup232:                                       ; preds = %if.end15, %if.then2, %if.end226
  %retval.0 = phi i32 [ %ret.0377, %if.end226 ], [ 0, %if.then2 ], [ 0, %if.end15 ]
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %2) #11
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %1) #11
  ret i32 %retval.0
}

declare %struct.bio_st* @BIO_pop(%struct.bio_st* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @alarm(i32 noundef) local_unnamed_addr #3

declare i32 @BIO_gets(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i32 @http_server_send_status(%struct.bio_st* noundef %cbio, i32 noundef %status, i8* noundef %reason) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %cbio, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.43, i64 0, i64 0), i32 noundef %status, i8* noundef %reason) #12
  %cmp = icmp sgt i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %cbio, i32 noundef 11, i64 noundef 0, i8* noundef null) #12
  ret i32 %conv
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @urldecode(i8* noundef %p) unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %p.addr.0 = phi i8* [ %p, %entry ], [ %incdec.ptr23, %for.inc ]
  %out.0 = phi i8* [ %p, %entry ], [ %out.1, %for.inc ]
  %0 = load i8, i8* %p.addr.0, align 1, !tbaa !16
  switch i8 %0, label %for.inc [
    i8 0, label %for.end
    i8 37, label %if.else
  ]

if.else:                                          ; preds = %for.cond
  %call = tail call i16** @__ctype_b_loc() #13
  %1 = load i16*, i16** %call, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i8, i8* %p.addr.0, i64 1
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !16
  %3 = zext i8 %2 to i64
  %arrayidx3 = getelementptr inbounds i16, i16* %1, i64 %3
  %4 = load i16, i16* %arrayidx3, align 2, !tbaa !21
  %5 = and i16 %4, 4096
  %tobool5.not = icmp eq i16 %5, 0
  br i1 %tobool5.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %arrayidx7 = getelementptr inbounds i8, i8* %p.addr.0, i64 2
  %6 = load i8, i8* %arrayidx7, align 1, !tbaa !16
  %7 = zext i8 %6 to i64
  %arrayidx10 = getelementptr inbounds i16, i16* %1, i64 %7
  %8 = load i16, i16* %arrayidx10, align 2, !tbaa !21
  %9 = and i16 %8, 4096
  %tobool13.not = icmp eq i16 %9, 0
  br i1 %tobool13.not, label %cleanup, label %if.then14

if.then14:                                        ; preds = %land.lhs.true
  %call16 = tail call i32 @OPENSSL_hexchar2int(i8 noundef zeroext %2) #12
  %shl = shl i32 %call16, 4
  %10 = load i8, i8* %arrayidx7, align 1, !tbaa !16
  %call18 = tail call i32 @OPENSSL_hexchar2int(i8 noundef zeroext %10) #12
  %or = or i32 %call18, %shl
  %conv19 = trunc i32 %or to i8
  br label %for.inc

for.inc:                                          ; preds = %for.cond, %if.then14
  %storemerge = phi i8 [ %conv19, %if.then14 ], [ %0, %for.cond ]
  %p.addr.1 = phi i8* [ %arrayidx7, %if.then14 ], [ %p.addr.0, %for.cond ]
  %out.1 = getelementptr inbounds i8, i8* %out.0, i64 1
  store i8 %storemerge, i8* %out.0, align 1, !tbaa !16
  %incdec.ptr23 = getelementptr inbounds i8, i8* %p.addr.1, i64 1
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  store i8 0, i8* %out.0, align 1, !tbaa !16
  %sub.ptr.lhs.cast = ptrtoint i8* %out.0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %p to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv24 = trunc i64 %sub.ptr.sub to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else, %land.lhs.true, %for.end
  %retval.0 = phi i32 [ %conv24, %for.end ], [ -1, %land.lhs.true ], [ -1, %if.else ]
  ret i32 %retval.0
}

declare %struct.bio_st* @BIO_new_mem_buf(i8* noundef, i32 noundef) local_unnamed_addr #4

declare %struct.bio_method_st* @BIO_f_base64() local_unnamed_addr #4

declare void @BIO_set_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #4

declare %struct.bio_st* @BIO_push(%struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #10

declare i8* @ASN1_item_d2i_bio(%struct.ASN1_ITEM_st* noundef, %struct.bio_st* noundef, i8* noundef) local_unnamed_addr #4

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i32 @http_server_send_asn1_resp(%struct.bio_st* noundef %cbio, i32 noundef %keep_alive, i8* noundef %content_type, %struct.ASN1_ITEM_st* noundef %it, %struct.ASN1_VALUE_st* noundef %resp) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %keep_alive, 0
  %cond = select i1 %tobool.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0)
  %call = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %resp, i8** noundef null, %struct.ASN1_ITEM_st* noundef %it) #12
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %cbio, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.41, i64 0, i64 0), i8* noundef %cond, i8* noundef %content_type, i32 noundef %call) #12
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %0 = bitcast %struct.ASN1_VALUE_st* %resp to i8*
  %call2 = tail call i32 @ASN1_item_i2d_bio(%struct.ASN1_ITEM_st* noundef %it, %struct.bio_st* noundef %cbio, i8* noundef %0) #12
  %cmp3 = icmp sgt i32 %call2, 0
  %phi.cast = zext i1 %cmp3 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  %call4 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %cbio, i32 noundef 11, i64 noundef 0, i8* noundef null) #12
  ret i32 %1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #4

declare i32 @ASN1_item_i2d_bio(%struct.ASN1_ITEM_st* noundef, %struct.bio_st* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @usleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #5

declare i32 @OPENSSL_hexchar2int(i8 noundef zeroext) local_unnamed_addr #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #14 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #15 = { nobuiltin "no-builtins" }
attributes #16 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = !{!6, !6, i64 0}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = !{!22, !22, i64 0}
!22 = !{!"short", !6, i64 0}
!23 = distinct !{!23, !11}
