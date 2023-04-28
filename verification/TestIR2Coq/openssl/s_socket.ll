; ModuleID = 'apps/lib/s_socket.c'
source_filename = "apps/lib/s_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.bio_addr_st = type opaque
%struct.bio_st = type opaque
%struct.bio_addrinfo_st = type opaque
%union.BIO_sock_info_u = type { %union.bio_addr_st* }
%struct.timeval = type { i64, i64 }
%struct.fd_set = type { [16 x i64] }
%struct.ssl_st = type opaque

@ourpeer = local_unnamed_addr global %union.bio_addr_st* null, align 8
@bio_err = external local_unnamed_addr global %struct.bio_st*, align 8
@.str = private unnamed_addr constant [189 x i8] c"assertion failed: (family == AF_UNSPEC || family == BIO_ADDRINFO_family(ai)) && (type == 0 || type == BIO_ADDRINFO_socktype(ai)) && (protocol == 0 || protocol == BIO_ADDRINFO_protocol(ai))\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"apps/lib/s_socket.c\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Can't bind %saddress for %s%s%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"IPv6 \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"IPv4 \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"unix \00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"ACCEPT\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c" %s:%s\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c" [%s]:%s\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"unknown:error\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c" PID=%d\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [192 x i8] c"assertion failed: (family == AF_UNSPEC || family == BIO_ADDRINFO_family(res)) && (type == 0 || type == BIO_ADDRINFO_socktype(res)) && (protocol == 0 || protocol == BIO_ADDRINFO_protocol(res))\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @init_client(i32* nocapture noundef %sock, i8* noundef %host, i8* noundef %port, i8* noundef %bindhost, i8* noundef %bindport, i32 noundef %family, i32 noundef %type, i32 noundef %protocol) local_unnamed_addr #0 {
entry:
  %res = alloca %struct.bio_addrinfo_st*, align 8
  %bindaddr = alloca %struct.bio_addrinfo_st*, align 8
  %0 = bitcast %struct.bio_addrinfo_st** %res to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store %struct.bio_addrinfo_st* null, %struct.bio_addrinfo_st** %res, align 8, !tbaa !4
  %1 = bitcast %struct.bio_addrinfo_st** %bindaddr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  store %struct.bio_addrinfo_st* null, %struct.bio_addrinfo_st** %bindaddr, align 8, !tbaa !4
  %call = tail call i32 @BIO_sock_init() #7
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @BIO_lookup_ex(i8* noundef %host, i8* noundef %port, i32 noundef 0, i32 noundef %family, i32 noundef %type, i32 noundef %protocol, %struct.bio_addrinfo_st** noundef nonnull %res) #7
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !4
  call void @ERR_print_errors(%struct.bio_st* noundef %2) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp ne i8* %bindhost, null
  %cmp6 = icmp ne i8* %bindport, null
  %or.cond = or i1 %cmp5, %cmp6
  br i1 %or.cond, label %if.then7, label %if.end12

if.then7:                                         ; preds = %if.end4
  %call8 = call i32 @BIO_lookup_ex(i8* noundef %bindhost, i8* noundef %bindport, i32 noundef 0, i32 noundef %family, i32 noundef %type, i32 noundef %protocol, %struct.bio_addrinfo_st** noundef nonnull %bindaddr) #7
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.then7
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !4
  call void @ERR_print_errors(%struct.bio_st* noundef %3) #7
  br label %out

if.end12:                                         ; preds = %if.then7, %if.end4
  %4 = load %struct.bio_addrinfo_st*, %struct.bio_addrinfo_st** %res, align 8, !tbaa !4
  %cmp13.not166 = icmp eq %struct.bio_addrinfo_st* %4, null
  br i1 %cmp13.not166, label %for.end67, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end12
  %cmp14 = icmp eq i32 %family, 0
  %cmp18 = icmp eq i32 %type, 0
  %cmp23 = icmp eq i32 %protocol, 0
  %cmp58 = icmp eq i32 %protocol, 6
  %cond59 = select i1 %cmp58, i32 16, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc65
  %found.0171 = phi i32 [ 0, %for.body.lr.ph ], [ %found.2, %for.inc65 ]
  %bi.0170 = phi %struct.bio_addrinfo_st* [ null, %for.body.lr.ph ], [ %bi.3, %for.inc65 ]
  %ai.0167 = phi %struct.bio_addrinfo_st* [ %4, %for.body.lr.ph ], [ %call66, %for.inc65 ]
  br i1 %cmp14, label %land.lhs.true, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %for.body
  %call16 = call i32 @BIO_ADDRINFO_family(%struct.bio_addrinfo_st* noundef nonnull %ai.0167) #7
  %cmp17 = icmp eq i32 %call16, %family
  br i1 %cmp17, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %lor.lhs.false15, %for.body
  br i1 %cmp18, label %land.lhs.true22, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %land.lhs.true
  %call20 = call i32 @BIO_ADDRINFO_socktype(%struct.bio_addrinfo_st* noundef nonnull %ai.0167) #7
  %cmp21 = icmp eq i32 %call20, %type
  br i1 %cmp21, label %land.lhs.true22, label %cond.false

land.lhs.true22:                                  ; preds = %lor.lhs.false19, %land.lhs.true
  br i1 %cmp23, label %cond.end, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %land.lhs.true22
  %call25 = call i32 @BIO_ADDRINFO_protocol(%struct.bio_addrinfo_st* noundef nonnull %ai.0167) #7
  %cmp26 = icmp eq i32 %call25, %protocol
  br i1 %cmp26, label %cond.end, label %cond.false

cond.false:                                       ; preds = %lor.lhs.false24, %lor.lhs.false19, %lor.lhs.false15
  call void @OPENSSL_die(i8* noundef getelementptr inbounds ([189 x i8], [189 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 116) #8
  unreachable

cond.end:                                         ; preds = %land.lhs.true22, %lor.lhs.false24
  %5 = load %struct.bio_addrinfo_st*, %struct.bio_addrinfo_st** %bindaddr, align 8, !tbaa !4
  %cmp27.not = icmp eq %struct.bio_addrinfo_st* %5, null
  br i1 %cmp27.not, label %if.end41, label %for.body31

for.body31:                                       ; preds = %cond.end, %for.inc
  %bi.1165 = phi %struct.bio_addrinfo_st* [ %call37, %for.inc ], [ %5, %cond.end ]
  %call32 = call i32 @BIO_ADDRINFO_family(%struct.bio_addrinfo_st* noundef nonnull %bi.1165) #7
  %call33 = call i32 @BIO_ADDRINFO_family(%struct.bio_addrinfo_st* noundef nonnull %ai.0167) #7
  %cmp34 = icmp eq i32 %call32, %call33
  br i1 %cmp34, label %if.end40, label %for.inc

for.inc:                                          ; preds = %for.body31
  %call37 = call %struct.bio_addrinfo_st* @BIO_ADDRINFO_next(%struct.bio_addrinfo_st* noundef nonnull %bi.1165) #7
  %cond = icmp eq %struct.bio_addrinfo_st* %call37, null
  br i1 %cond, label %for.inc65, label %for.body31, !llvm.loop !8

if.end40:                                         ; preds = %for.body31
  %inc = add nsw i32 %found.0171, 1
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %cond.end
  %bi.2 = phi %struct.bio_addrinfo_st* [ %bi.1165, %if.end40 ], [ %bi.0170, %cond.end ]
  %found.1 = phi i32 [ %inc, %if.end40 ], [ %found.0171, %cond.end ]
  %call42 = call i32 @BIO_ADDRINFO_family(%struct.bio_addrinfo_st* noundef nonnull %ai.0167) #7
  %call43 = call i32 @BIO_ADDRINFO_socktype(%struct.bio_addrinfo_st* noundef nonnull %ai.0167) #7
  %call44 = call i32 @BIO_ADDRINFO_protocol(%struct.bio_addrinfo_st* noundef nonnull %ai.0167) #7
  %call45 = call i32 @BIO_socket(i32 noundef %call42, i32 noundef %call43, i32 noundef %call44, i32 noundef 0) #7
  store i32 %call45, i32* %sock, align 4, !tbaa !10
  %cmp46 = icmp eq i32 %call45, -1
  br i1 %cmp46, label %for.inc65, label %if.end48

if.end48:                                         ; preds = %if.end41
  %cmp49.not = icmp eq %struct.bio_addrinfo_st* %bi.2, null
  br i1 %cmp49.not, label %if.end56, label %if.then50

if.then50:                                        ; preds = %if.end48
  %call51 = call %union.bio_addr_st* @BIO_ADDRINFO_address(%struct.bio_addrinfo_st* noundef nonnull %bi.2) #7
  %call52 = call i32 @BIO_bind(i32 noundef %call45, %union.bio_addr_st* noundef %call51, i32 noundef 1) #7
  %tobool.not = icmp eq i32 %call52, 0
  %6 = load i32, i32* %sock, align 4, !tbaa !10
  br i1 %tobool.not, label %for.end67.thread, label %if.end56

for.end67.thread:                                 ; preds = %if.then50
  %call54 = call i32 @BIO_closesocket(i32 noundef %6) #7
  store i32 -1, i32* %sock, align 4, !tbaa !10
  br label %if.then69

if.end56:                                         ; preds = %if.then50, %if.end48
  %7 = phi i32 [ %call45, %if.end48 ], [ %6, %if.then50 ]
  %call57 = call %union.bio_addr_st* @BIO_ADDRINFO_address(%struct.bio_addrinfo_st* noundef nonnull %ai.0167) #7
  %call60 = call i32 @BIO_connect(i32 noundef %7, %union.bio_addr_st* noundef %call57, i32 noundef %cond59) #7
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.then62, label %for.end67

if.then62:                                        ; preds = %if.end56
  %8 = load i32, i32* %sock, align 4, !tbaa !10
  %call63 = call i32 @BIO_closesocket(i32 noundef %8) #7
  store i32 -1, i32* %sock, align 4, !tbaa !10
  br label %for.inc65

for.inc65:                                        ; preds = %for.inc, %if.end41, %if.then62
  %bi.3 = phi %struct.bio_addrinfo_st* [ %bi.2, %if.end41 ], [ %bi.2, %if.then62 ], [ null, %for.inc ]
  %found.2 = phi i32 [ %found.1, %if.end41 ], [ %found.1, %if.then62 ], [ %found.0171, %for.inc ]
  %call66 = call %struct.bio_addrinfo_st* @BIO_ADDRINFO_next(%struct.bio_addrinfo_st* noundef nonnull %ai.0167) #7
  %cmp13.not = icmp eq %struct.bio_addrinfo_st* %call66, null
  br i1 %cmp13.not, label %for.end67, label %for.body, !llvm.loop !12

for.end67:                                        ; preds = %for.inc65, %if.end56, %if.end12
  %found.3.ph = phi i32 [ 0, %if.end12 ], [ %found.1, %if.end56 ], [ %found.2, %for.inc65 ]
  %.pr = load i32, i32* %sock, align 4, !tbaa !10
  %cmp68 = icmp eq i32 %.pr, -1
  br i1 %cmp68, label %if.then69, label %if.else

if.then69:                                        ; preds = %for.end67.thread, %for.end67
  %found.3162 = phi i32 [ %found.1, %for.end67.thread ], [ %found.3.ph, %for.end67 ]
  %9 = load %struct.bio_addrinfo_st*, %struct.bio_addrinfo_st** %bindaddr, align 8, !tbaa !4
  %cmp70 = icmp eq %struct.bio_addrinfo_st* %9, null
  %tobool72 = icmp ne i32 %found.3162, 0
  %or.cond112 = select i1 %cmp70, i1 true, i1 %tobool72
  br i1 %or.cond112, label %if.end102, label %if.then73

if.then73:                                        ; preds = %if.then69
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !4
  %11 = load %struct.bio_addrinfo_st*, %struct.bio_addrinfo_st** %res, align 8, !tbaa !4
  %call74 = call i32 @BIO_ADDRINFO_family(%struct.bio_addrinfo_st* noundef %11) #7
  %cmp75 = icmp eq i32 %call74, 10
  br i1 %cmp75, label %cond.end87, label %cond.false77

cond.false77:                                     ; preds = %if.then73
  %12 = load %struct.bio_addrinfo_st*, %struct.bio_addrinfo_st** %res, align 8, !tbaa !4
  %call78 = call i32 @BIO_ADDRINFO_family(%struct.bio_addrinfo_st* noundef %12) #7
  %cmp79 = icmp eq i32 %call78, 2
  br i1 %cmp79, label %cond.end87, label %cond.false81

cond.false81:                                     ; preds = %cond.false77
  %13 = load %struct.bio_addrinfo_st*, %struct.bio_addrinfo_st** %res, align 8, !tbaa !4
  %call82 = call i32 @BIO_ADDRINFO_family(%struct.bio_addrinfo_st* noundef %13) #7
  %cmp83 = icmp eq i32 %call82, 1
  %cond84 = select i1 %cmp83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  br label %cond.end87

cond.end87:                                       ; preds = %cond.false81, %cond.false77, %if.then73
  %cond88 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %if.then73 ], [ %cond84, %cond.false81 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), %cond.false77 ]
  %cond93 = select i1 %cmp5, i8* %bindhost, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %cond95 = select i1 %cmp6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %cond100 = select i1 %cmp6, i8* %bindport, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %call101 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* noundef %cond88, i8* noundef %cond93, i8* noundef %cond95, i8* noundef %cond100) #7
  call void @ERR_clear_error() #7
  br label %if.end102

if.end102:                                        ; preds = %cond.end87, %if.then69
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !4
  call void @ERR_print_errors(%struct.bio_st* noundef %14) #7
  br label %out

if.else:                                          ; preds = %for.end67
  call void @ERR_clear_error() #7
  br label %out

out:                                              ; preds = %if.end102, %if.else, %if.then10
  %ret.1 = phi i32 [ 0, %if.then10 ], [ 0, %if.end102 ], [ 1, %if.else ]
  %15 = load %struct.bio_addrinfo_st*, %struct.bio_addrinfo_st** %bindaddr, align 8, !tbaa !4
  %cmp104.not = icmp eq %struct.bio_addrinfo_st* %15, null
  br i1 %cmp104.not, label %if.end106, label %if.then105

if.then105:                                       ; preds = %out
  call void @BIO_ADDRINFO_free(%struct.bio_addrinfo_st* noundef nonnull %15) #7
  br label %if.end106

if.end106:                                        ; preds = %if.then105, %out
  %16 = load %struct.bio_addrinfo_st*, %struct.bio_addrinfo_st** %res, align 8, !tbaa !4
  call void @BIO_ADDRINFO_free(%struct.bio_addrinfo_st* noundef %16) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end106, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %ret.1, %if.end106 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @BIO_sock_init() local_unnamed_addr #2

declare i32 @BIO_lookup_ex(i8* noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, %struct.bio_addrinfo_st** noundef) local_unnamed_addr #2

declare void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #2

declare i32 @BIO_ADDRINFO_family(%struct.bio_addrinfo_st* noundef) local_unnamed_addr #2

declare i32 @BIO_ADDRINFO_socktype(%struct.bio_addrinfo_st* noundef) local_unnamed_addr #2

declare i32 @BIO_ADDRINFO_protocol(%struct.bio_addrinfo_st* noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @OPENSSL_die(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare %struct.bio_addrinfo_st* @BIO_ADDRINFO_next(%struct.bio_addrinfo_st* noundef) local_unnamed_addr #2

declare i32 @BIO_socket(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_bind(i32 noundef, %union.bio_addr_st* noundef, i32 noundef) local_unnamed_addr #2

declare %union.bio_addr_st* @BIO_ADDRINFO_address(%struct.bio_addrinfo_st* noundef) local_unnamed_addr #2

declare i32 @BIO_closesocket(i32 noundef) local_unnamed_addr #2

declare i32 @BIO_connect(i32 noundef, %union.bio_addr_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare void @ERR_clear_error() local_unnamed_addr #2

declare void @BIO_ADDRINFO_free(%struct.bio_addrinfo_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @report_server_accept(%struct.bio_st* noundef %out, i32 noundef %asock, i32 noundef %with_address, i32 noundef %with_pid) local_unnamed_addr #0 {
entry:
  %info = alloca %union.BIO_sock_info_u, align 8
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)) #7
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i32 %with_address, 0
  br i1 %tobool.not, label %if.end22.thread, label %if.then1

if.then1:                                         ; preds = %if.end
  %0 = bitcast %union.BIO_sock_info_u* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %call2 = tail call %union.bio_addr_st* @BIO_ADDR_new() #7
  %addr = getelementptr inbounds %union.BIO_sock_info_u, %union.BIO_sock_info_u* %info, i64 0, i32 0
  store %union.bio_addr_st* %call2, %union.bio_addr_st** %addr, align 8, !tbaa !13
  %cmp3.not = icmp eq %union.bio_addr_st* %call2, null
  br i1 %cmp3.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then1
  %call4 = call i32 @BIO_sock_info(i32 noundef %asock, i32 noundef 0, %union.BIO_sock_info_u* noundef nonnull %info) #7
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.else, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %land.lhs.true
  %1 = load %union.bio_addr_st*, %union.bio_addr_st** %addr, align 8, !tbaa !13
  %call8 = call i8* @BIO_ADDR_hostname_string(%union.bio_addr_st* noundef %1, i32 noundef 1) #7
  %cmp9.not = icmp eq i8* %call8, null
  br i1 %cmp9.not, label %if.else, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %land.lhs.true6
  %2 = load %union.bio_addr_st*, %union.bio_addr_st** %addr, align 8, !tbaa !13
  %call12 = call i8* @BIO_ADDR_service_string(%union.bio_addr_st* noundef %2, i32 noundef 1) #7
  %cmp13.not = icmp eq i8* %call12, null
  br i1 %cmp13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %land.lhs.true10
  %call15 = call i8* @strchr(i8* noundef nonnull %call8, i32 noundef 58) #9
  %cmp16 = icmp eq i8* %call15, null
  %cond = select i1 %cmp16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)
  %call17 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef %cond, i8* noundef nonnull %call8, i8* noundef nonnull %call12) #7
  %cmp18 = icmp sgt i32 %call17, 0
  %conv = zext i1 %cmp18 to i32
  br label %if.end22

if.else:                                          ; preds = %land.lhs.true10, %land.lhs.true6, %land.lhs.true, %if.then1
  %hostname.0 = phi i8* [ %call8, %land.lhs.true10 ], [ null, %land.lhs.true6 ], [ null, %land.lhs.true ], [ null, %if.then1 ]
  %call19 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0)) #7
  br label %if.end22

if.end22:                                         ; preds = %if.then14, %if.else
  %success.0 = phi i32 [ %conv, %if.then14 ], [ 0, %if.else ]
  %hostname.1 = phi i8* [ %call8, %if.then14 ], [ %hostname.0, %if.else ]
  %service.1 = phi i8* [ %call12, %if.then14 ], [ null, %if.else ]
  call void @CRYPTO_free(i8* noundef %hostname.1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 227) #7
  call void @CRYPTO_free(i8* noundef %service.1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 228) #7
  %3 = load %union.bio_addr_st*, %union.bio_addr_st** %addr, align 8, !tbaa !13
  call void @BIO_ADDR_free(%union.bio_addr_st* noundef %3) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  %tobool23.not = icmp eq i32 %with_pid, 0
  br i1 %tobool23.not, label %if.end30, label %if.then24

if.end22.thread:                                  ; preds = %if.end
  %tobool23.not55 = icmp eq i32 %with_pid, 0
  br i1 %tobool23.not55, label %land.rhs32, label %land.rhs

if.then24:                                        ; preds = %if.end22
  %tobool25.not = icmp eq i32 %success.0, 0
  br i1 %tobool25.not, label %land.end36, label %land.rhs

land.rhs:                                         ; preds = %if.end22.thread, %if.then24
  %call26 = call i32 @getpid() #7
  %call27 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 noundef %call26) #7
  %cmp28 = icmp sgt i32 %call27, 0
  %phi.cast53 = zext i1 %cmp28 to i32
  br label %if.end30

if.end30:                                         ; preds = %land.rhs, %if.end22
  %success.2 = phi i32 [ %success.0, %if.end22 ], [ %phi.cast53, %land.rhs ]
  %tobool31.not = icmp eq i32 %success.2, 0
  br i1 %tobool31.not, label %land.end36, label %land.rhs32

land.rhs32:                                       ; preds = %if.end22.thread, %if.end30
  %call33 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #7
  %cmp34 = icmp sgt i32 %call33, 0
  %phi.cast = zext i1 %cmp34 to i32
  br label %land.end36

land.end36:                                       ; preds = %if.then24, %land.rhs32, %if.end30
  %4 = phi i32 [ 0, %if.end30 ], [ %phi.cast, %land.rhs32 ], [ 0, %if.then24 ]
  %call38 = call i64 @BIO_ctrl(%struct.bio_st* noundef %out, i32 noundef 11, i64 noundef 0, i8* noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.end36
  %retval.0 = phi i32 [ %4, %land.end36 ], [ 0, %entry ]
  ret i32 %retval.0
}

declare %union.bio_addr_st* @BIO_ADDR_new() local_unnamed_addr #2

declare i32 @BIO_sock_info(i32 noundef, i32 noundef, %union.BIO_sock_info_u* noundef) local_unnamed_addr #2

declare i8* @BIO_ADDR_hostname_string(%union.bio_addr_st* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @BIO_ADDR_service_string(%union.bio_addr_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #4

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @BIO_ADDR_free(%union.bio_addr_st* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #5

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @do_server(i32* noundef writeonly %accept_sock, i8* noundef %host, i8* noundef %port, i32 noundef %family, i32 noundef %type, i32 noundef %protocol, i32 (i32, i32, i32, i8*)* nocapture noundef readonly %cb, i8* noundef %context, i32 noundef %naccept, %struct.bio_st* noundef %bio_s_out) local_unnamed_addr #0 {
entry:
  %res = alloca %struct.bio_addrinfo_st*, align 8
  %sink = alloca [64 x i8], align 16
  %timeout = alloca <2 x i64>, align 16
  %tmpcast = bitcast <2 x i64>* %timeout to %struct.timeval*
  %readfds = alloca %struct.fd_set, align 8
  %0 = bitcast %struct.bio_addrinfo_st** %res to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store %struct.bio_addrinfo_st* null, %struct.bio_addrinfo_st** %res, align 8, !tbaa !4
  %call = tail call i32 @BIO_sock_init() #7
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %cleanup138

if.end:                                           ; preds = %entry
  %call1 = call i32 @BIO_lookup_ex(i8* noundef %host, i8* noundef %port, i32 noundef 1, i32 noundef %family, i32 noundef %type, i32 noundef %protocol, %struct.bio_addrinfo_st** noundef nonnull %res) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !4
  call void @ERR_print_errors(%struct.bio_st* noundef %1) #7
  br label %cleanup138

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp eq i32 %family, 0
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %2 = load %struct.bio_addrinfo_st*, %struct.bio_addrinfo_st** %res, align 8, !tbaa !4
  %call5 = call i32 @BIO_ADDRINFO_family(%struct.bio_addrinfo_st* noundef %2) #7
  %cmp6 = icmp eq i32 %call5, %family
  br i1 %cmp6, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end3
  %cmp7 = icmp eq i32 %type, 0
  br i1 %cmp7, label %land.lhs.true11, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %land.lhs.true
  %3 = load %struct.bio_addrinfo_st*, %struct.bio_addrinfo_st** %res, align 8, !tbaa !4
  %call9 = call i32 @BIO_ADDRINFO_socktype(%struct.bio_addrinfo_st* noundef %3) #7
  %cmp10 = icmp eq i32 %call9, %type
  br i1 %cmp10, label %land.lhs.true11, label %cond.false

land.lhs.true11:                                  ; preds = %lor.lhs.false8, %land.lhs.true
  %cmp12 = icmp eq i32 %protocol, 0
  br i1 %cmp12, label %cond.end, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %land.lhs.true11
  %4 = load %struct.bio_addrinfo_st*, %struct.bio_addrinfo_st** %res, align 8, !tbaa !4
  %call14 = call i32 @BIO_ADDRINFO_protocol(%struct.bio_addrinfo_st* noundef %4) #7
  %cmp15 = icmp eq i32 %call14, %protocol
  br i1 %cmp15, label %cond.end, label %cond.false

cond.false:                                       ; preds = %lor.lhs.false13, %lor.lhs.false8, %lor.lhs.false
  call void @OPENSSL_die(i8* noundef getelementptr inbounds ([192 x i8], [192 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 288) #8
  unreachable

cond.end:                                         ; preds = %land.lhs.true11, %lor.lhs.false13
  %5 = load %struct.bio_addrinfo_st*, %struct.bio_addrinfo_st** %res, align 8, !tbaa !4
  %call16 = call i32 @BIO_ADDRINFO_family(%struct.bio_addrinfo_st* noundef %5) #7
  %6 = load %struct.bio_addrinfo_st*, %struct.bio_addrinfo_st** %res, align 8, !tbaa !4
  %call17 = call i32 @BIO_ADDRINFO_socktype(%struct.bio_addrinfo_st* noundef %6) #7
  %7 = load %struct.bio_addrinfo_st*, %struct.bio_addrinfo_st** %res, align 8, !tbaa !4
  %call18 = call i32 @BIO_ADDRINFO_protocol(%struct.bio_addrinfo_st* noundef %7) #7
  %8 = load %struct.bio_addrinfo_st*, %struct.bio_addrinfo_st** %res, align 8, !tbaa !4
  %call19 = call %union.bio_addr_st* @BIO_ADDRINFO_address(%struct.bio_addrinfo_st* noundef %8) #7
  %9 = load %struct.bio_addrinfo_st*, %struct.bio_addrinfo_st** %res, align 8, !tbaa !4
  %call20 = call %struct.bio_addrinfo_st* @BIO_ADDRINFO_next(%struct.bio_addrinfo_st* noundef %9) #7
  %cmp21 = icmp eq i32 %call16, 10
  %spec.select = select i1 %cmp21, i32 3, i32 1
  %cmp24.not = icmp eq %struct.bio_addrinfo_st* %call20, null
  br i1 %cmp24.not, label %if.end52, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %cond.end
  %call26 = call i32 @BIO_ADDRINFO_socktype(%struct.bio_addrinfo_st* noundef nonnull %call20) #7
  %cmp27 = icmp eq i32 %call26, %call17
  br i1 %cmp27, label %land.lhs.true28, label %if.end52

land.lhs.true28:                                  ; preds = %land.lhs.true25
  %call29 = call i32 @BIO_ADDRINFO_protocol(%struct.bio_addrinfo_st* noundef nonnull %call20) #7
  %cmp30 = icmp eq i32 %call29, %call18
  br i1 %cmp30, label %if.then31, label %if.end52

if.then31:                                        ; preds = %land.lhs.true28
  %cmp32 = icmp eq i32 %call16, 2
  br i1 %cmp32, label %land.lhs.true33, label %if.else

land.lhs.true33:                                  ; preds = %if.then31
  %call34 = call i32 @BIO_ADDRINFO_family(%struct.bio_addrinfo_st* noundef nonnull %call20) #7
  %cmp35 = icmp eq i32 %call34, 10
  br i1 %cmp35, label %if.end45, label %if.else

if.else:                                          ; preds = %land.lhs.true33, %if.then31
  br i1 %cmp21, label %land.lhs.true39, label %if.end52

land.lhs.true39:                                  ; preds = %if.else
  %call40 = call i32 @BIO_ADDRINFO_family(%struct.bio_addrinfo_st* noundef nonnull %call20) #7
  %cmp41 = icmp eq i32 %call40, 2
  %spec.select227 = select i1 %cmp41, i32 1, i32 %spec.select
  br label %if.end52

if.end45:                                         ; preds = %land.lhs.true33
  %call37 = call %union.bio_addr_st* @BIO_ADDRINFO_address(%struct.bio_addrinfo_st* noundef nonnull %call20) #7
  %call46 = call i32 @BIO_socket(i32 noundef 10, i32 noundef %call17, i32 noundef %call18, i32 noundef 0) #7
  %cmp47 = icmp eq i32 %call46, -1
  br i1 %cmp47, label %if.end52, label %lor.lhs.false54

if.end52:                                         ; preds = %if.end45, %land.lhs.true39, %cond.end, %land.lhs.true25, %land.lhs.true28, %if.else
  %sock_family.0.ph.sink = phi i32 [ 10, %land.lhs.true39 ], [ %call16, %cond.end ], [ %call16, %land.lhs.true25 ], [ %call16, %land.lhs.true28 ], [ %call16, %if.else ], [ 2, %if.end45 ]
  %sock_options.1238 = phi i32 [ %spec.select227, %land.lhs.true39 ], [ %spec.select, %cond.end ], [ %spec.select, %land.lhs.true25 ], [ %spec.select, %land.lhs.true28 ], [ 1, %if.else ], [ %spec.select, %if.end45 ]
  %call46235 = call i32 @BIO_socket(i32 noundef %sock_family.0.ph.sink, i32 noundef %call17, i32 noundef %call18, i32 noundef 0) #7
  %cmp53 = icmp eq i32 %call46235, -1
  br i1 %cmp53, label %end.critedge, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %if.end45, %if.end52
  %sock_address.1260 = phi %union.bio_addr_st* [ %call19, %if.end52 ], [ %call37, %if.end45 ]
  %asock.0259 = phi i32 [ %call46235, %if.end52 ], [ %call46, %if.end45 ]
  %sock_options.1238258 = phi i32 [ %sock_options.1238, %if.end52 ], [ %spec.select, %if.end45 ]
  %call55 = call i32 @BIO_listen(i32 noundef %asock.0259, %union.bio_addr_st* noundef %sock_address.1260, i32 noundef %sock_options.1238258) #7
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then59, label %if.end62

if.then59:                                        ; preds = %lor.lhs.false54
  %10 = load %struct.bio_addrinfo_st*, %struct.bio_addrinfo_st** %res, align 8, !tbaa !4
  call void @BIO_ADDRINFO_free(%struct.bio_addrinfo_st* noundef %10) #7
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !4
  call void @ERR_print_errors(%struct.bio_st* noundef %11) #7
  %call60 = call i32 @BIO_closesocket(i32 noundef %asock.0259) #7
  br label %end

if.end62:                                         ; preds = %lor.lhs.false54
  %call63 = call zeroext i16 @BIO_ADDR_rawport(%union.bio_addr_st* noundef %sock_address.1260) #7
  %12 = load %struct.bio_addrinfo_st*, %struct.bio_addrinfo_st** %res, align 8, !tbaa !4
  call void @BIO_ADDRINFO_free(%struct.bio_addrinfo_st* noundef %12) #7
  store %struct.bio_addrinfo_st* null, %struct.bio_addrinfo_st** %res, align 8, !tbaa !4
  %cmp64 = icmp eq i16 %call63, 0
  %conv65 = zext i1 %cmp64 to i32
  %call66 = call i32 @report_server_accept(%struct.bio_st* noundef %bio_s_out, i32 noundef %asock.0259, i32 noundef %conv65, i32 noundef 0) #10
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then68, label %if.end70

if.then68:                                        ; preds = %if.end62
  %call69 = call i32 @BIO_closesocket(i32 noundef %asock.0259) #7
  %13 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !4
  call void @ERR_print_errors(%struct.bio_st* noundef %13) #7
  br label %end

if.end70:                                         ; preds = %if.end62
  %cmp71.not = icmp eq i32* %accept_sock, null
  br i1 %cmp71.not, label %if.end74, label %if.then73

if.then73:                                        ; preds = %if.end70
  store i32 %asock.0259, i32* %accept_sock, align 4, !tbaa !10
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.end70
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %sink, i64 0, i64 0
  %15 = bitcast <2 x i64>* %timeout to i8*
  %16 = bitcast %struct.fd_set* %readfds to i8*
  %cmp75 = icmp eq i32 %type, 1
  %arrayidx = getelementptr inbounds %struct.fd_set, %struct.fd_set* %readfds, i64 0, i32 0, i64 0
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.end74
  %naccept.addr.0 = phi i32 [ %naccept, %if.end74 ], [ %spec.select228, %cleanup ]
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %14) #6
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #6
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %16) #6
  br i1 %cmp75, label %if.then77, label %if.else116

if.then77:                                        ; preds = %for.cond
  %17 = load %union.bio_addr_st*, %union.bio_addr_st** @ourpeer, align 8, !tbaa !4
  call void @BIO_ADDR_free(%union.bio_addr_st* noundef %17) #7
  %call78 = call %union.bio_addr_st* @BIO_ADDR_new() #7
  store %union.bio_addr_st* %call78, %union.bio_addr_st** @ourpeer, align 8, !tbaa !4
  %cmp79 = icmp eq %union.bio_addr_st* %call78, null
  br i1 %cmp79, label %if.then81, label %do.body.preheader

do.body.preheader:                                ; preds = %if.then77
  %call84265 = call i32 @BIO_accept_ex(i32 noundef %asock.0259, %union.bio_addr_st* noundef nonnull %call78, i32 noundef 0) #7
  %cmp85266 = icmp slt i32 %call84265, 0
  br i1 %cmp85266, label %land.rhs, label %if.end93

if.then81:                                        ; preds = %if.then77
  %call82 = call i32 @BIO_closesocket(i32 noundef %asock.0259) #7
  %18 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !4
  call void @ERR_print_errors(%struct.bio_st* noundef %18) #7
  br label %cleanup.thread

land.rhs:                                         ; preds = %do.body.preheader, %land.rhs.do.body_crit_edge
  %call84267 = phi i32 [ %call84, %land.rhs.do.body_crit_edge ], [ %call84265, %do.body.preheader ]
  %call87 = call i32 @BIO_sock_should_retry(i32 noundef %call84267) #7
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.then91, label %land.rhs.do.body_crit_edge, !llvm.loop !14

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  %.pre = load %union.bio_addr_st*, %union.bio_addr_st** @ourpeer, align 8, !tbaa !4
  %call84 = call i32 @BIO_accept_ex(i32 noundef %asock.0259, %union.bio_addr_st* noundef %.pre, i32 noundef 0) #7
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %land.rhs, label %if.end93

if.then91:                                        ; preds = %land.rhs
  %19 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !4
  call void @ERR_print_errors(%struct.bio_st* noundef %19) #7
  %call92 = call i32 @BIO_closesocket(i32 noundef %asock.0259) #7
  br label %cleanup.thread

if.end93:                                         ; preds = %land.rhs.do.body_crit_edge, %do.body.preheader
  %call84.lcssa = phi i32 [ %call84265, %do.body.preheader ], [ %call84, %land.rhs.do.body_crit_edge ]
  %call94 = call i32 @BIO_set_tcp_ndelay(i32 noundef %call84.lcssa, i32 noundef 1) #7
  %call95 = call i32 %cb(i32 noundef %call84.lcssa, i32 noundef 1, i32 noundef %protocol, i8* noundef %context) #7
  %call96 = call i32 @shutdown(i32 noundef %call84.lcssa, i32 noundef 1) #7
  store <2 x i64> <i64 0, i64 500000>, <2 x i64>* %timeout, align 16, !tbaa !15
  %rem261 = and i32 %call84.lcssa, 63
  %sh_prom = zext i32 %rem261 to i64
  %shl = shl nuw i64 1, %sh_prom
  %div262 = lshr i32 %call84.lcssa, 6
  %20 = zext i32 %div262 to i64
  %arrayidx103 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %readfds, i64 0, i32 0, i64 %20
  %add = add nuw nsw i32 %call84.lcssa, 1
  br label %do.body97

do.body97:                                        ; preds = %land.rhs109, %if.end93
  %21 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* nonnull %arrayidx) #6, !srcloc !17
  %22 = load i64, i64* %arrayidx103, align 8, !tbaa !15
  %or104 = or i64 %22, %shl
  store i64 %or104, i64* %arrayidx103, align 8, !tbaa !15
  %call106 = call i32 @select(i32 noundef %add, %struct.fd_set* noundef nonnull %readfds, %struct.fd_set* noundef null, %struct.fd_set* noundef null, %struct.timeval* noundef nonnull %tmpcast) #7
  %cmp107 = icmp sgt i32 %call106, 0
  br i1 %cmp107, label %land.rhs109, label %do.end114

land.rhs109:                                      ; preds = %do.body97
  %call110 = call i64 @read(i32 noundef %call84.lcssa, i8* noundef nonnull %14, i64 noundef 64) #7
  %cmp111 = icmp sgt i64 %call110, 0
  br i1 %cmp111, label %do.body97, label %do.end114, !llvm.loop !18

do.end114:                                        ; preds = %do.body97, %land.rhs109
  %call115 = call i32 @BIO_closesocket(i32 noundef %call84.lcssa) #7
  br label %if.end118

if.else116:                                       ; preds = %for.cond
  %call117 = call i32 %cb(i32 noundef %asock.0259, i32 noundef %type, i32 noundef %protocol, i8* noundef %context) #7
  br label %if.end118

if.end118:                                        ; preds = %if.else116, %do.end114
  %i.0 = phi i32 [ %call95, %do.end114 ], [ %call117, %if.else116 ]
  %cmp119.not = icmp eq i32 %naccept.addr.0, -1
  %dec = add nsw i32 %naccept.addr.0, -1
  %spec.select228 = select i1 %cmp119.not, i32 -1, i32 %dec
  %cmp123 = icmp slt i32 %i.0, 0
  %cmp126 = icmp eq i32 %spec.select228, 0
  %or.cond152 = select i1 %cmp123, i1 true, i1 %cmp126
  br i1 %or.cond152, label %if.then128, label %cleanup

if.then128:                                       ; preds = %if.end118
  %call129 = call i32 @BIO_closesocket(i32 noundef %asock.0259) #7
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then81, %if.then91, %if.then128
  %ret.1.ph = phi i32 [ %i.0, %if.then128 ], [ 0, %if.then91 ], [ 0, %if.then81 ]
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %16) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #6
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %14) #6
  br label %end

cleanup:                                          ; preds = %if.end118
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %16) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #6
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %14) #6
  br label %for.cond

end.critedge:                                     ; preds = %if.end52
  %23 = load %struct.bio_addrinfo_st*, %struct.bio_addrinfo_st** %res, align 8, !tbaa !4
  call void @BIO_ADDRINFO_free(%struct.bio_addrinfo_st* noundef %23) #7
  %24 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !4
  call void @ERR_print_errors(%struct.bio_st* noundef %24) #7
  br label %end

end:                                              ; preds = %end.critedge, %cleanup.thread, %if.then59, %if.then68
  %ret.2 = phi i32 [ 0, %if.then59 ], [ 0, %if.then68 ], [ %ret.1.ph, %cleanup.thread ], [ 0, %end.critedge ]
  %cmp133 = icmp eq i32 %family, 1
  br i1 %cmp133, label %if.then135, label %if.end137

if.then135:                                       ; preds = %end
  %call136 = call i32 @unlink(i8* noundef %host) #7
  br label %if.end137

if.end137:                                        ; preds = %if.then135, %end
  %25 = load %union.bio_addr_st*, %union.bio_addr_st** @ourpeer, align 8, !tbaa !4
  call void @BIO_ADDR_free(%union.bio_addr_st* noundef %25) #7
  store %union.bio_addr_st* null, %union.bio_addr_st** @ourpeer, align 8, !tbaa !4
  br label %cleanup138

cleanup138:                                       ; preds = %entry, %if.end137, %if.then2
  %retval.0 = phi i32 [ %ret.2, %if.end137 ], [ 0, %if.then2 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.0
}

declare i32 @BIO_listen(i32 noundef, %union.bio_addr_st* noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i16 @BIO_ADDR_rawport(%union.bio_addr_st* noundef) local_unnamed_addr #2

declare i32 @BIO_accept_ex(i32 noundef, %union.bio_addr_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_sock_should_retry(i32 noundef) local_unnamed_addr #2

declare i32 @BIO_set_tcp_ndelay(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @shutdown(i32 noundef, i32 noundef) local_unnamed_addr #5

declare i32 @select(i32 noundef, %struct.fd_set* noundef, %struct.fd_set* noundef, %struct.fd_set* noundef, %struct.timeval* noundef) local_unnamed_addr #2

declare i64 @read(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @unlink(i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define void @do_ssl_shutdown(%struct.ssl_st* noundef %ssl) local_unnamed_addr #0 {
entry:
  %call9 = tail call i32 @SSL_shutdown(%struct.ssl_st* noundef %ssl) #7
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then, label %do.end

if.then:                                          ; preds = %entry, %do.cond
  %call11 = phi i32 [ %call, %do.cond ], [ %call9, %entry ]
  %call1 = tail call i32 @SSL_get_error(%struct.ssl_st* noundef %ssl, i32 noundef %call11) #7
  switch i32 %call1, label %do.end [
    i32 2, label %do.cond
    i32 3, label %do.cond
    i32 9, label %do.cond
    i32 10, label %do.cond
  ]

do.cond:                                          ; preds = %if.then, %if.then, %if.then, %if.then
  %call = tail call i32 @SSL_shutdown(%struct.ssl_st* noundef %ssl) #7
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %do.end

do.end:                                           ; preds = %do.cond, %if.then, %entry
  ret void
}

declare i32 @SSL_shutdown(%struct.ssl_st* noundef) local_unnamed_addr #2

declare i32 @SSL_get_error(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #10 = { nobuiltin "no-builtins" }

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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = distinct !{!12, !9}
!13 = !{!6, !6, i64 0}
!14 = distinct !{!14, !9}
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !6, i64 0}
!17 = !{i64 2150726190}
!18 = distinct !{!18, !9}
